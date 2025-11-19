uint64_t storeEnumTagSinglePayload for ObjectCaptureSession.Configuration(uint64_t result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_245FB1998@<X0>(_BYTE *result@<X0>, uint64_t (*a2)(void)@<X1>, BOOL *a3@<X8>)
{
  v4 = *result;
  v5 = v4 > 0x20;
  v6 = (1 << v4) & 0x100003E01;
  if (v5 || v6 == 0)
  {
    v9 = *(v3 + 16);
    result = a2();
    if (result)
    {
      v10 = *result == 0;
    }

    else
    {
      v10 = 0;
    }

    *a3 = v10;
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

void (*sub_245FB1A3C(uint64_t *a1))(uint64_t a1, char a2)
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
  return sub_245F8FD54;
}

uint64_t *sub_245FB1AD0@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_245FB1AE8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_245FC4748(MEMORY[0x277D84F90]);
  v3 = MEMORY[0x277D84FA0];
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v3;
  *(a1 + 24) = v3;
  *(a1 + 32) = 0;
  *(a1 + 40) = xmmword_246097410;
  *(a1 + 56) = xmmword_246097420;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 1;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 513;
  *(a1 + 136) = 0;
  v4 = a1 + *(type metadata accessor for FreeformMeshManager.BackgroundData(0) + 52);
  return sub_246091A84();
}

uint64_t sub_245FB1B90()
{
  v1 = sub_2460918F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v36 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v36 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v36 - v13;
  if (*(v0 + 12) == 1)
  {
    if (*(v0 + 13) == 2)
    {
      v15 = sub_245FA32CC();
      (*(v2 + 16))(v6, v15, v1);
      v16 = sub_2460918D4();
      v17 = sub_246091FB4();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v37 = v19;
        *v18 = 136380675;
        *(v18 + 4) = sub_245F8D3C0(0x2864696C61567369, 0xE900000000000029, &v37);
        _os_log_impl(&dword_245F8A000, v16, v17, "ObjectCaptureSession.%{private}s: Invalid mesh manager config - either arkitVoxelSize or scanExtent must be specified!", v18, 0xCu);
        sub_245F8E6F4(v19);
        MEMORY[0x24C1989D0](v19, -1, -1);
        MEMORY[0x24C1989D0](v18, -1, -1);
      }

      (*(v2 + 8))(v6, v1);
      return 0;
    }
  }

  else if (*(v0 + 8) <= 0.0)
  {
    v26 = sub_245FA32CC();
    (*(v2 + 16))(v14, v26, v1);
    v27 = sub_2460918D4();
    v28 = sub_246091FB4();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v37 = v30;
      *v29 = 136380675;
      *(v29 + 4) = sub_245F8D3C0(0x2864696C61567369, 0xE900000000000029, &v37);
      _os_log_impl(&dword_245F8A000, v27, v28, "ObjectCaptureSession.%{private}s: Invalid mesh manager config - invalid arkitVoxelSize!", v29, 0xCu);
      sub_245F8E6F4(v30);
      MEMORY[0x24C1989D0](v30, -1, -1);
      MEMORY[0x24C1989D0](v29, -1, -1);
    }

    (*(v2 + 8))(v14, v1);
    return 0;
  }

  if (*(v0 + 16) <= 0.0 || *(v0 + 20) <= 0.0 || *(v0 + 32) < 1)
  {
    v21 = sub_245FA32CC();
    (*(v2 + 16))(v9, v21, v1);
    v22 = sub_2460918D4();
    v23 = sub_246091FB4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v37 = v25;
      *v24 = 136380675;
      *(v24 + 4) = sub_245F8D3C0(0x2864696C61567369, 0xE900000000000029, &v37);
      _os_log_impl(&dword_245F8A000, v22, v23, "ObjectCaptureSession.%{private}s: Invalid mesh manager config - invalid mesh refinement parameters!", v24, 0xCu);
      sub_245F8E6F4(v25);
      MEMORY[0x24C1989D0](v25, -1, -1);
      MEMORY[0x24C1989D0](v24, -1, -1);
    }

    (*(v2 + 8))(v9, v1);
  }

  else
  {
    if ((*(v0 + 40) & 1) == 0 || *(v0 + 48) > 0)
    {
      return 1;
    }

    v31 = sub_245FA32CC();
    (*(v2 + 16))(v12, v31, v1);
    v32 = sub_2460918D4();
    v33 = sub_246091FB4();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v37 = v35;
      *v34 = 136380675;
      *(v34 + 4) = sub_245F8D3C0(0x2864696C61567369, 0xE900000000000029, &v37);
      _os_log_impl(&dword_245F8A000, v32, v33, "MeshManager.%{private}s: Invalid mesh manager config - invalid heap vertex capacity!", v34, 0xCu);
      sub_245F8E6F4(v35);
      MEMORY[0x24C1989D0](v35, -1, -1);
      MEMORY[0x24C1989D0](v34, -1, -1);
    }

    (*(v2 + 8))(v12, v1);
  }

  return 0;
}

uint64_t sub_245FB2100@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, float a10@<S0>, float a11@<S1>, float a12@<S2>)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 12) = BYTE4(a2) & 1;
  *(a9 + 13) = a3;
  *(a9 + 14) = a4;
  *(a9 + 16) = a10;
  *(a9 + 20) = a11;
  *(a9 + 24) = a12;
  *(a9 + 28) = a5;
  *(a9 + 32) = a6;
  *(a9 + 40) = a7;
  *(a9 + 48) = a8;
  return result;
}

uint64_t sub_245FB2144()
{
  v1 = sub_2460918F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  if (v6)
  {
    v7 = sub_245FA32CC();
    (*(v2 + 16))(v5, v7, v1);
    v8 = sub_2460918D4();
    v9 = sub_246091FB4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v14 = v11;
      *v10 = 136380675;
      *(v10 + 4) = sub_245F8D3C0(0x6573616572636E69, 0xEA00000000002928, &v14);
      _os_log_impl(&dword_245F8A000, v8, v9, "ObjectCaptureSession.%{private}s: Area mode is already at max extent, ignoring request to increase the extent further!", v10, 0xCu);
      sub_245F8E6F4(v11);
      MEMORY[0x24C1989D0](v11, -1, -1);
      MEMORY[0x24C1989D0](v10, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
  }

  else
  {
    *v0 = 1;
  }

  return v6 ^ 1u;
}

uint64_t sub_245FB2314(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return sub_245FB2350(a1);
}

uint64_t sub_245FB2350(uint64_t a1)
{
  v2 = v1;
  v4 = sub_246091AA4();
  v162 = *(v4 - 8);
  v163 = v4;
  v5 = *(v162 + 64);
  MEMORY[0x28223BE20](v4);
  v161 = v146 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_246092034();
  v167 = *(v7 - 8);
  v168 = v7;
  v8 = *(v167 + 64);
  MEMORY[0x28223BE20](v7);
  v166 = v146 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = sub_246092004();
  v10 = *(*(v164 - 8) + 64);
  MEMORY[0x28223BE20](v164);
  v165 = v146 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_246091A64();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v174 = v146 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2460918F4();
  v16 = *(v15 - 8);
  v17 = v16[8];
  v18 = MEMORY[0x28223BE20](v15);
  v160 = v146 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = v146 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v157 = v146 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v152 = v146 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v154 = v146 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v153 = v146 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v156 = v146 - v32;
  MEMORY[0x28223BE20](v31);
  v34 = v146 - v33;
  *(v1 + 3) = 0;
  swift_unknownObjectWeakInit();
  v175 = &v1[OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_backgroundData];
  sub_245FB1AE8(&v1[OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_backgroundData]);
  *&v1[OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_backgroundTaskCount] = 0;
  v35 = &v1[OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_mainQueueData];
  v36 = MEMORY[0x277D84F90];
  v37 = sub_245FC4748(MEMORY[0x277D84F90]);
  v38 = MEMORY[0x277D84FA0];
  *v35 = v37;
  *(v35 + 1) = v38;
  *(v35 + 2) = sub_245FC4748(v36);
  *(v35 + 3) = v38;
  *(v35 + 4) = 0;
  *(v35 + 5) = 0;
  v35[48] = 1;
  *(v35 + 8) = 0;
  *(v35 + 9) = 0;
  v35[80] = 1;
  *(v35 + 11) = 0;
  *(v35 + 6) = 0u;
  *(v35 + 7) = 0u;
  *(v35 + 8) = 0u;
  *(v35 + 9) = 0u;
  v35[160] = 1;
  *&v2[OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_kScaleFactorForBoundingBoxMeshIntersection] = xmmword_246097430;
  v190 = 1;
  *&v2[OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_kMeshOverlapRemovalThreshold] = 1065353216;
  v39 = sub_245FA32CC();
  v40 = v16[2];
  v170 = v39;
  v171 = v40;
  v172 = v16 + 2;
  (v40)(v34);
  sub_245FC4950(a1, &v179);
  v173 = v34;
  v41 = sub_2460918D4();
  v42 = sub_246091FA4();
  sub_245FC4988(a1);
  v43 = os_log_type_enabled(v41, v42);
  v176 = v16;
  v158 = v22;
  if (v43)
  {
    v44 = swift_slowAlloc();
    v169 = swift_slowAlloc();
    v178 = v169;
    *v44 = 136380931;
    *(v44 + 4) = sub_245F8D3C0(0x6E6F632874696E69, 0xED0000293A676966, &v178);
    *(v44 + 12) = 2082;
    v45 = *(a1 + 16);
    v179 = *a1;
    v180 = v45;
    v181 = *(a1 + 32);
    *&v182 = *(a1 + 48);
    sub_245FC4950(a1, v177);
    v46 = sub_246091C54();
    v48 = v15;
    v49 = sub_245F8D3C0(v46, v47, &v178);

    *(v44 + 14) = v49;
    v15 = v48;
    _os_log_impl(&dword_245F8A000, v41, v42, "MeshManager.%{private}s: Configuration = %{public}s", v44, 0x16u);
    v50 = v169;
    swift_arrayDestroy();
    MEMORY[0x24C1989D0](v50, -1, -1);
    v16 = v176;
    MEMORY[0x24C1989D0](v44, -1, -1);
  }

  v51 = v16[1];
  v51(v173, v15);
  if ((sub_245FB1B90() & 1) == 0)
  {
    sub_245FC4988(a1);
    sub_245F91E84((v2 + 16));
    v77 = v175;
    goto LABEL_18;
  }

  v159 = v51;
  v155 = v15;
  v52 = *(a1 + 16);
  *(v2 + 3) = *a1;
  *(v2 + 4) = v52;
  *(v2 + 5) = *(a1 + 32);
  *(v2 + 12) = *(a1 + 48);
  v151 = sub_245F90360();
  v169 = a1;
  sub_245FC4950(a1, &v179);
  sub_246091A34();
  *&v179 = MEMORY[0x277D84F90];
  v149 = sub_245FC59D0(&qword_27EE3A9D0, MEMORY[0x277D85230]);
  v148 = sub_245F8E624(&unk_27EE3A230, &qword_246096660);
  v150 = sub_245F9218C(&qword_27EE3A9E0, &unk_27EE3A230, &qword_246096660);
  sub_2460921A4();
  v147 = *MEMORY[0x277D85260];
  v173 = v2;
  v53 = v166;
  v167 = *(v167 + 104);
  v54 = v168;
  (v167)(v166);
  *(v173 + 4) = sub_246092074();
  v146[1] = "rea_mode.mesh_main";
  sub_246091A24();
  *&v179 = MEMORY[0x277D84F90];
  sub_2460921A4();
  (v167)(v53, v147, v54);
  v55 = v169;
  v2 = v173;
  result = sub_246092074();
  *(v2 + 5) = result;
  v57 = *(v55 + 48);
  v58 = (v57 * 3) >> 64;
  v59 = 3 * v57;
  if (v58 != v59 >> 63)
  {
    __break(1u);
    goto LABEL_46;
  }

  v60 = (v59 * 3) >> 64;
  v61 = 3 * v59;
  if (v60 != v61 >> 63)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if ((v61 - 0x2000000000000000) >> 62 == 3)
  {
    v62 = 4 * v61;
    type metadata accessor for FreeformMeshBuffer();
    v63 = *(v2 + 6);
    v64 = *(v55 + 40);
    v65 = swift_unknownObjectRetain();
    v66 = sub_246083374(v65, v64, v62);
    if (v66)
    {
      *(v2 + 13) = v66;
      v67 = *(*v66 + 288);

      v67();
      v68 = v173;
      v69 = v161;
      sub_246091A84();
      v70 = v175;
      swift_beginAccess();
      v71 = type metadata accessor for FreeformMeshManager.BackgroundData(0);
      (*(v162 + 40))(v70 + *(v71 + 52), v69, v163);
      swift_endAccess();
      v72 = v155;
      v73 = v159;
      if (v68[62] == 1)
      {
        v74 = *(v55 + 13);
        *(v70 + 129) = v74;
        if (v74 == 2)
        {
          v75 = 0.0;
          v76 = v157;
          if ((*(v55 + 12) & 1) != 0 || (v75 = *(v55 + 8), v75 <= 0.0))
          {
LABEL_32:
            v171(v76, v170, v72);
            sub_245FC4950(v55, &v179);
            v125 = sub_2460918D4();
            v126 = sub_246091FB4();
            sub_245FC4988(v55);
            if (os_log_type_enabled(v125, v126))
            {
              v127 = swift_slowAlloc();
              v128 = swift_slowAlloc();
              *&v179 = v128;
              *v127 = 136381443;
              *(v127 + 4) = sub_245F8D3C0(0x6E6F632874696E69, 0xED0000293A676966, &v179);
              *(v127 + 12) = 2050;
              *(v127 + 14) = v75;
              *(v127 + 22) = 2050;
              v129 = *(v55 + 20);
              *(v127 + 24) = *(v55 + 16);
              *(v127 + 32) = 2050;
              *(v127 + 34) = v129;
              _os_log_impl(&dword_245F8A000, v125, v126, "MeshManager.%{private}s: Invalid mesh refinement voxel parameters: arkit scene recon voxel size = %{public}f, initial voxel size = %{public}f, voxel size increment = %{public}f", v127, 0x2Au);
              sub_245F8E6F4(v128);
              MEMORY[0x24C1989D0](v128, -1, -1);
              MEMORY[0x24C1989D0](v127, -1, -1);

              sub_245FC4988(v55);
              v130 = v76;
              v131 = v155;
            }

            else
            {

              sub_245FC4988(v55);

              v130 = v76;
              v131 = v72;
            }

            v73(v130, v131);
LABEL_36:

            return 0;
          }
        }

        else
        {
          v93 = v74 & 1;
          v75 = sub_245F9DAF4(v74 & 1);
          v94 = v156;
          v171(v156, v170, v72);
          v95 = sub_2460918D4();
          v96 = v72;
          v97 = sub_246091FC4();
          if (os_log_type_enabled(v95, v97))
          {
            v98 = swift_slowAlloc();
            v99 = swift_slowAlloc();
            *&v179 = v99;
            *v98 = 136381187;
            *(v98 + 4) = sub_245F8D3C0(0x6E6F632874696E69, 0xED0000293A676966, &v179);
            *(v98 + 12) = 2050;
            *(v98 + 14) = v75;
            *(v98 + 22) = 2082;
            v177[0] = v93;
            v100 = sub_246091C54();
            v102 = sub_245F8D3C0(v100, v101, &v179);

            *(v98 + 24) = v102;
            v103 = v97;
            v72 = v155;
            _os_log_impl(&dword_245F8A000, v95, v103, "MeshManager.%{private}s: Computed voxel size: %{public}f from scan extent: %{public}s. Enabled automatic scan extent switching in area mode!", v98, 0x20u);
            swift_arrayDestroy();
            v104 = v99;
            v73 = v159;
            MEMORY[0x24C1989D0](v104, -1, -1);
            v105 = v98;
            v70 = v175;
            MEMORY[0x24C1989D0](v105, -1, -1);

            v73(v156, v72);
            v76 = v157;
            if (v75 <= 0.0)
            {
              goto LABEL_32;
            }
          }

          else
          {

            v106 = v159;
            v159(v94, v96);
            v76 = v157;
            v72 = v96;
            v73 = v106;
            if (v75 <= 0.0)
            {
              goto LABEL_32;
            }
          }
        }

        v107 = *(v55 + 16);
        if (v107 <= 0.0)
        {
          goto LABEL_32;
        }

        v108 = *(v55 + 20);
        if (v108 <= 0.0)
        {
          goto LABEL_32;
        }

        *(v70 + 56) = v107;
        *(v70 + 60) = v108;
        *(v70 + 64) = *(v55 + 24);
        *(v70 + 68) = v75;
        v109 = *(v55 + 32);
        if (v109 < 1)
        {
          v132 = v152;
          v171(v152, v170, v72);
          sub_245FC4950(v55, &v179);
          v133 = sub_2460918D4();
          v134 = v72;
          v135 = sub_246091FB4();
          if (os_log_type_enabled(v133, v135))
          {
            v136 = swift_slowAlloc();
            v137 = swift_slowAlloc();
            *&v179 = v137;
            *v136 = 136380931;
            *(v136 + 4) = sub_245F8D3C0(0x6E6F632874696E69, 0xED0000293A676966, &v179);
            *(v136 + 12) = 2050;
            *(v136 + 14) = v109;
            sub_245FC4988(v55);
            _os_log_impl(&dword_245F8A000, v133, v135, "MeshManager.%{private}s: Invalid point density threshold %{public}ld!", v136, 0x16u);
            sub_245F8E6F4(v137);
            MEMORY[0x24C1989D0](v137, -1, -1);
            MEMORY[0x24C1989D0](v136, -1, -1);

            sub_245FC4988(v55);
            v138 = v132;
            v139 = v155;
          }

          else
          {

            sub_245FC4988(v55);
            sub_245FC4988(v55);

            v138 = v132;
            v139 = v134;
          }

          v159(v138, v139);
          goto LABEL_36;
        }

        *&v68[OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_backgroundData + 48] = v109;
        v110 = v153;
        v171(v153, v170, v72);
        v111 = sub_2460918D4();
        v112 = v72;
        v113 = sub_246091FC4();
        if (os_log_type_enabled(v111, v113))
        {
          v114 = swift_slowAlloc();
          v115 = swift_slowAlloc();
          *&v179 = v115;
          *v114 = 136381443;
          *(v114 + 4) = sub_245F8D3C0(0x6E6F632874696E69, 0xED0000293A676966, &v179);
          *(v114 + 12) = 1026;
          *(v114 + 14) = GESSVersionNumberMajor();
          *(v114 + 18) = 1026;
          *(v114 + 20) = GESSVersionNumberMinor();
          *(v114 + 24) = 1026;
          v68 = v173;
          *(v114 + 26) = GESSVersionNumberPatch();
          _os_log_impl(&dword_245F8A000, v111, v113, "MeshManager.%{private}s: Found mesh processing library version: %{public}u.%{public}u.%{public}u", v114, 0x1Eu);
          sub_245F8E6F4(v115);
          MEMORY[0x24C1989D0](v115, -1, -1);
          MEMORY[0x24C1989D0](v114, -1, -1);
        }

        v116 = v110;
        v73 = v159;
        v159(v116, v112);
        v117 = v154;
        v72 = v112;
        v171(v154, v170, v112);
        v118 = sub_2460918D4();
        v119 = sub_246091FC4();
        if (os_log_type_enabled(v118, v119))
        {
          v120 = v73;
          v121 = v72;
          v122 = swift_slowAlloc();
          v123 = swift_slowAlloc();
          *&v179 = v123;
          *v122 = 136380675;
          *(v122 + 4) = sub_245F8D3C0(0x6E6F632874696E69, 0xED0000293A676966, &v179);
          _os_log_impl(&dword_245F8A000, v118, v119, "MeshManager.%{private}s: Enabled mesh simplification", v122, 0xCu);
          sub_245F8E6F4(v123);
          MEMORY[0x24C1989D0](v123, -1, -1);
          v124 = v122;
          v72 = v121;
          v73 = v120;
          MEMORY[0x24C1989D0](v124, -1, -1);

          v120(v154, v72);
        }

        else
        {

          v73(v117, v112);
        }
      }

      v140 = v158;
      v171(v158, v170, v72);
      v141 = sub_2460918D4();
      v142 = sub_246091FC4();
      if (os_log_type_enabled(v141, v142))
      {
        v143 = v72;
        v144 = swift_slowAlloc();
        v145 = swift_slowAlloc();
        *&v179 = v145;
        *v144 = 136380675;
        *(v144 + 4) = sub_245F8D3C0(0x6E6F632874696E69, 0xED0000293A676966, &v179);
        _os_log_impl(&dword_245F8A000, v141, v142, "MeshManager.%{private}s: Initialized area mode mesh manager", v144, 0xCu);
        sub_245F8E6F4(v145);
        MEMORY[0x24C1989D0](v145, -1, -1);
        MEMORY[0x24C1989D0](v144, -1, -1);

        sub_245FC4988(v55);
        v159(v140, v143);
      }

      else
      {

        sub_245FC4988(v55);

        v73(v140, v72);
      }

      return v68;
    }

    v78 = v160;
    v79 = v155;
    v171(v160, v170, v155);
    v80 = sub_2460918D4();
    v81 = sub_246091FB4();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      *&v179 = v83;
      *v82 = 136380675;
      *(v82 + 4) = sub_245F8D3C0(0x6E6F632874696E69, 0xED0000293A676966, &v179);
      _os_log_impl(&dword_245F8A000, v80, v81, "MeshManager.%{private}s: Failed to create mesh buffer in area mode mesh manager!", v82, 0xCu);
      sub_245F8E6F4(v83);
      MEMORY[0x24C1989D0](v83, -1, -1);
      MEMORY[0x24C1989D0](v82, -1, -1);

      sub_245FC4988(v55);
    }

    else
    {
      sub_245FC4988(v55);
    }

    v159(v78, v79);
    v84 = v175;
    sub_245F91E84((v2 + 16));

    v85 = *(v2 + 4);
    v179 = *(v2 + 3);
    v180 = v85;
    v181 = *(v2 + 5);
    *&v182 = *(v2 + 12);
    sub_245FC4988(&v179);
    v77 = v84;
LABEL_18:
    sub_245FC5600(v77, type metadata accessor for FreeformMeshManager.BackgroundData);
    v86 = *(v35 + 9);
    v187 = *(v35 + 8);
    v188 = v86;
    v189 = v35[160];
    v87 = *(v35 + 5);
    v183 = *(v35 + 4);
    v184 = v87;
    v88 = *(v35 + 7);
    v185 = *(v35 + 6);
    v186 = v88;
    v89 = *(v35 + 1);
    v179 = *v35;
    v180 = v89;
    v90 = *(v35 + 3);
    v181 = *(v35 + 2);
    v182 = v90;
    sub_245FC49D8(&v179);
    type metadata accessor for FreeformMeshManager(0);
    v91 = *(*v2 + 48);
    v92 = *(*v2 + 52);
    swift_deallocPartialClassInstance();
    return 0;
  }

LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_245FB37A8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v62 = a2;
  v70 = a3;
  v4 = sub_2460918F4();
  v65 = *(v4 - 8);
  v66 = v4;
  v5 = *(v65 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v63 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v61 = &v59 - v8;
  v9 = sub_245F8E624(&qword_27EE3A350, &unk_2460969A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v59 - v11;
  v13 = sub_245F8E624(&qword_27EE3A308, "lM");
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v60 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v59 - v17;
  v19 = type metadata accessor for ObjectCaptureSession.Mesh.Anchor(0);
  v64 = *(v19 - 8);
  v20 = *(v64 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_246091834();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v59 = &v59 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = &v59 - v28;
  v30 = [a1 identifier];
  sub_246091814();

  v31 = *(v24 + 16);
  v67 = v29;
  v31(v12, v29, v23);
  v68 = v24;
  v69 = v23;
  (*(v24 + 56))(v12, 0, 1, v23);
  v32 = a1;
  v33 = v64;
  sub_245F9DB18(v32, v12, v18);
  sub_245F8E744(v12, &qword_27EE3A350, &unk_2460969A0);
  if ((*(v33 + 48))(v18, 1, v19) == 1)
  {
    sub_245F8E744(v18, &qword_27EE3A308, "lM");
    v34 = sub_245FA32CC();
    v36 = v65;
    v35 = v66;
    v37 = v63;
    (*(v65 + 16))(v63, v34, v66);
    v38 = sub_2460918D4();
    v39 = sub_246091FB4();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v72 = v41;
      *v40 = 136380675;
      *(v40 + 4) = sub_245F8D3C0(0xD000000000000012, 0x800000024609F440, &v72);
      _os_log_impl(&dword_245F8A000, v38, v39, "MeshManager.%{private}s: Failed to convert ARMeshAnchor to ObjectCaptureSession.Mesh.Anchor", v40, 0xCu);
      sub_245F8E6F4(v41);
      MEMORY[0x24C1989D0](v41, -1, -1);
      MEMORY[0x24C1989D0](v40, -1, -1);
    }

    (*(v36 + 8))(v37, v35);
  }

  else
  {
    v42 = v31;
    v44 = v65;
    v43 = v66;
    sub_245FC559C(v18, v22);
    v45 = v62 + OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_mainQueueData;
    swift_beginAccess();
    v46 = *(v45 + 24);

    v47 = sub_245FB3EB0(v22, v46);

    if ((v47 & 1) == 0)
    {
      v56 = v59;
      v57 = v69;
      v42(v59, v22, v69);
      v58 = v60;
      sub_245FA2954(v22, v60);
      v55 = 1;
      (*(v33 + 56))(v58, 0, 1, v19);
      swift_beginAccess();
      sub_245FB40C8(v58, v56);
      swift_endAccess();
      sub_245FC5600(v22, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
      result = (*(v68 + 8))(v67, v57);
      goto LABEL_11;
    }

    v48 = sub_245FA32CC();
    v49 = v61;
    (*(v44 + 16))(v61, v48, v43);
    v50 = sub_2460918D4();
    v51 = sub_246091FB4();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v71 = v53;
      *v52 = 136380675;
      *(v52 + 4) = sub_245F8D3C0(0xD000000000000012, 0x800000024609F440, &v71);
      _os_log_impl(&dword_245F8A000, v50, v51, "MeshManager.%{private}s: Received mesh anchor from previous session, dropping it!", v52, 0xCu);
      sub_245F8E6F4(v53);
      MEMORY[0x24C1989D0](v53, -1, -1);
      MEMORY[0x24C1989D0](v52, -1, -1);
    }

    (*(v44 + 8))(v49, v43);
    sub_245FC5600(v22, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
  }

  result = (*(v68 + 8))(v67, v69);
  v55 = 0;
LABEL_11:
  *v70 = v55;
  return result;
}

uint64_t sub_245FB3EB0(uint64_t a1, uint64_t a2)
{
  v3 = sub_246091834();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_245FC59D0(&qword_27EE3A2D8, MEMORY[0x277CC95F0]), v9 = sub_246091B84(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v19 = a2;
    v12 = ~v10;
    v13 = v4 + 16;
    v14 = *(v4 + 16);
    v15 = *(v13 + 56);
    v16 = (v13 - 8);
    do
    {
      v14(v7, *(v19 + 48) + v15 * v11, v3);
      sub_245FC59D0(&qword_27EE3AD10, MEMORY[0x277CC95F0]);
      v17 = sub_246091BB4();
      (*v16)(v7, v3);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_245FB40C8(uint64_t a1, uint64_t a2)
{
  v5 = sub_245F8E624(&qword_27EE3A308, "lM");
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for ObjectCaptureSession.Mesh.Anchor(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_245F8E744(a1, &qword_27EE3A308, "lM");
    sub_245FC1E34(a2, v8);
    v14 = sub_246091834();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_245F8E744(v8, &qword_27EE3A308, "lM");
  }

  else
  {
    sub_245FC559C(a1, v12);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_245FC2B28(v12, a2, isUniquelyReferenced_nonNull_native);
    v18 = sub_246091834();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_245FB42EC()
{
  v1 = *(v0 + 32);
  sub_246092044();

  return v3;
}

uint64_t sub_245FB4350@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v62 = a3;
  v5 = sub_2460918F4();
  v63 = *(v5 - 8);
  v64 = v5;
  v6 = *(v63 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_245F8E624(&qword_27EE3A308, "lM");
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v59 - v11;
  v13 = sub_246091834();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v59 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v59 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v59 - v25;
  v27 = [a1 identifier];
  sub_246091814();

  v28 = a2 + OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_mainQueueData;
  swift_beginAccess();
  v29 = *(v28 + 16);
  if (*(v29 + 16))
  {
    v60 = v13;

    v30 = sub_245FC1BDC(v26);
    if (v31)
    {
      v32 = v30;
      v33 = *(v29 + 56);
      v34 = type metadata accessor for ObjectCaptureSession.Mesh.Anchor(0);
      v35 = *(v34 - 8);
      v61 = v26;
      v36 = v14;
      v37 = v35;
      sub_245FA2954(v33 + *(v35 + 72) * v32, v12);

      v38 = 1;
      (*(v37 + 56))(v12, 0, 1, v34);
      sub_245F8E744(v12, &qword_27EE3A308, "lM");
      v39 = v60;
      v40 = v61;
      (*(v36 + 16))(v21, v61, v60);
      swift_beginAccess();
      sub_245FC3364(v24, v21);
      v41 = *(v36 + 8);
      v41(v24, v39);
      swift_endAccess();
      result = (v41)(v40, v39);
      goto LABEL_9;
    }

    v13 = v60;
  }

  v43 = type metadata accessor for ObjectCaptureSession.Mesh.Anchor(0);
  (*(*(v43 - 8) + 56))(v12, 1, 1, v43);
  sub_245F8E744(v12, &qword_27EE3A308, "lM");
  v44 = sub_245FA32CC();
  v46 = v63;
  v45 = v64;
  (*(v63 + 16))(v8, v44, v64);
  (*(v14 + 16))(v18, v26, v13);
  v47 = sub_2460918D4();
  v48 = sub_246091FC4();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v65[0] = v50;
    *v49 = 136380931;
    *(v49 + 4) = sub_245F8D3C0(0xD000000000000015, 0x800000024609F420, v65);
    *(v49 + 12) = 2082;
    sub_245FC59D0(&unk_27EE3A310, MEMORY[0x277CC95F0]);
    v51 = sub_2460923D4();
    v60 = v8;
    v61 = v26;
    v52 = v14;
    v53 = v13;
    v55 = v54;
    v56 = *(v52 + 8);
    v56(v18, v53);
    v57 = sub_245F8D3C0(v51, v55, v65);

    *(v49 + 14) = v57;
    _os_log_impl(&dword_245F8A000, v47, v48, "MeshManager.%{private}s: No mesh anchor with ID %{public}s in processed data!", v49, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1989D0](v50, -1, -1);
    MEMORY[0x24C1989D0](v49, -1, -1);

    (*(v63 + 8))(v60, v64);
    result = (v56)(v61, v53);
  }

  else
  {

    v58 = *(v14 + 8);
    v58(v18, v13);
    (*(v46 + 8))(v8, v45);
    result = (v58)(v26, v13);
  }

  v38 = 0;
LABEL_9:
  *v62 = v38;
  return result;
}

uint64_t sub_245FB4974()
{
  v1 = *(v0 + 32);
  sub_245F8E624(&qword_27EE3A240, &qword_246097448);
  sub_246092044();

  return v3;
}

double sub_245FB49F4@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  sub_245F8E624(&qword_27EE3A248, &qword_246097450);
  sub_246092044();

  result = *&v5;
  *a1 = v5;
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  return result;
}

uint64_t sub_245FB4A84(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v5 = *(v4 + 32);
  v6 = swift_allocObject();
  v6[1] = a1;
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a4;
  v6[5].n128_u64[0] = v4;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_245FC4BE0;
  *(v7 + 24) = v6;
  aBlock[4] = sub_245FC4C80;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245FB4BFC;
  aBlock[3] = &unk_2858DE1C0;
  v8 = _Block_copy(aBlock);
  v9 = v5;

  dispatch_sync(v9, v8);

  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_245FB4C24()
{
  v1 = *(v0 + 32);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_245FC4CC0;
  *(v2 + 24) = v0;
  v6[4] = sub_245FC5DA4;
  v6[5] = v2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_245FB4BFC;
  v6[3] = &unk_2858DE210;
  v3 = _Block_copy(v6);
  v4 = v1;

  dispatch_sync(v4, v3);

  _Block_release(v3);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_245FB4D64(uint64_t a1)
{
  v2 = sub_2460918F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v88 - v8;
  v10 = sub_245F8E624(&qword_27EE3A308, "lM");
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v101 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v88 - v14;
  v110 = sub_246091834();
  v111 = *(v110 - 8);
  v16 = v111[8];
  v17 = MEMORY[0x28223BE20](v110);
  v100 = &v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v107 = &v88 - v20;
  result = MEMORY[0x28223BE20](v19);
  v109 = &v88 - v22;
  v23 = *(a1 + OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_backgroundTaskCount);
  if (v23 < 0)
  {
LABEL_29:
    __break(1u);
    return result;
  }

  if (!v23)
  {
    v98 = v9;
    v99 = v2;
    v91 = a1;
    v29 = (a1 + OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_mainQueueData);
    swift_beginAccess();
    v30 = v29[1];
    v31 = v30 + 56;
    v32 = 1 << *(v30 + 32);
    v33 = -1;
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    v34 = v33 & *(v30 + 56);
    v35 = (v32 + 63) >> 6;
    v108 = v111 + 2;
    v103 = v111 + 4;
    v105 = (v111 + 1);
    v93 = (v3 + 16);
    v92 = (v3 + 8);
    v89 = "pdatedMeshData:)";
    v106 = v30;

    v36 = 0;
    *&v37 = 136380931;
    v88 = v37;
    v38 = v110;
    v39 = v107;
    v97 = v29;
    v94 = v15;
    if (!v34)
    {
LABEL_12:
      while (1)
      {
        v41 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          break;
        }

        if (v41 >= v35)
        {

          v81 = *v29;
          v82 = v29[1];
          v83 = *(v29 + 9);
          v115 = *(v29 + 8);
          v116 = v83;
          v117 = *(v29 + 160);
          v84 = *(v29 + 6);
          v114 = *(v29 + 7);
          v113 = v84;
          *&v112 = v81;
          *(&v112 + 1) = v82;

          sub_245FB5AA8(&v112);
          v118[2] = v114;
          v118[3] = v115;
          v118[4] = v116;
          v119 = v117;
          v118[0] = v112;
          v118[1] = v113;
          sub_245FC5698(v118);
          v86 = *v29;
          v85 = v29[1];
          v87 = MEMORY[0x277D84FA0];
          *v29 = MEMORY[0x277D84F98];
          v29[1] = v87;
        }

        v34 = *(v31 + 8 * v41);
        ++v36;
        if (v34)
        {
          v36 = v41;
          goto LABEL_16;
        }
      }

      __break(1u);
      goto LABEL_29;
    }

    while (1)
    {
LABEL_16:
      v42 = __clz(__rbit64(v34));
      v34 &= v34 - 1;
      v43 = *(v106 + 48);
      v44 = v111;
      v102 = v111[9];
      v45 = v109;
      v104 = v111[2];
      v104(v109, v43 + v102 * (v42 | (v36 << 6)), v38);
      (v44[4])(v39, v45, v38);
      v46 = *v29;
      if (!*(*v29 + 16))
      {
        goto LABEL_11;
      }

      v47 = *v29;

      v48 = sub_245FC1BDC(v39);
      if (v49)
      {
        v50 = v48;
        v96 = *(v46 + 56);
        v51 = type metadata accessor for ObjectCaptureSession.Mesh.Anchor(0);
        v52 = *(v51 - 8);
        v90 = *(v52 + 72);
        v53 = v96 + v90 * v50;
        v54 = v51;
        sub_245FA2954(v53, v15);

        v55 = *(v52 + 56);
        v95 = v54;
        v96 = v52 + 56;
        v55(v15, 0, 1, v54);
        v56 = v55;
        sub_245F8E744(v15, &qword_27EE3A308, "lM");
        swift_beginAccess();
        v57 = *v29;
        v58 = sub_245FC1BDC(v39);
        v59 = 1;
        if (v60)
        {
          v61 = v58;
          v62 = v97;
          v63 = *v97;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v65 = *v62;
          *&v112 = *v62;
          *v62 = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_245FC2DEC();
            v65 = v112;
          }

          (*v105)(*(v65 + 48) + v61 * v102, v110);
          sub_245FC559C(*(v65 + 56) + v61 * v90, v101);
          sub_245FC27E4(v61, v65);
          v59 = 0;
          *v62 = v65;
        }

        v66 = v101;
        v56(v101, v59, 1, v95);
        sub_245F8E744(v66, &qword_27EE3A308, "lM");
        swift_endAccess();
        v67 = sub_245FA32CC();
        v68 = v98;
        v69 = v99;
        (*v93)(v98, v67, v99);
        v70 = v100;
        v38 = v110;
        v104(v100, v107, v110);
        v71 = sub_2460918D4();
        v72 = sub_246091FC4();
        if (os_log_type_enabled(v71, v72))
        {
          v73 = swift_slowAlloc();
          v104 = swift_slowAlloc();
          *&v118[0] = v104;
          *v73 = v88;
          *(v73 + 4) = sub_245F8D3C0(0xD000000000000013, v89 | 0x8000000000000000, v118);
          *(v73 + 12) = 2082;
          sub_245FC59D0(&unk_27EE3A310, MEMORY[0x277CC95F0]);
          LODWORD(v96) = v72;
          v74 = sub_2460923D4();
          v75 = v70;
          v77 = v76;
          v102 = *v105;
          v102(v75, v38);
          v78 = sub_245F8D3C0(v74, v77, v118);

          *(v73 + 14) = v78;
          _os_log_impl(&dword_245F8A000, v71, v96, "MeshManager.%{private}s: Removed mesh anchor %{public}s from the unprocessed mesh anchor set", v73, 0x16u);
          v79 = v104;
          swift_arrayDestroy();
          MEMORY[0x24C1989D0](v79, -1, -1);
          MEMORY[0x24C1989D0](v73, -1, -1);

          (*v92)(v98, v99);
          v39 = v107;
          result = (v102)(v107, v38);
        }

        else
        {

          v80 = *v105;
          (*v105)(v70, v38);
          (*v92)(v68, v69);
          v39 = v107;
          result = (v80)(v107, v38);
        }

        v29 = v97;
        v15 = v94;
        if (!v34)
        {
          goto LABEL_12;
        }
      }

      else
      {

        v38 = v110;
LABEL_11:
        (*v105)(v39, v38);
        v40 = type metadata accessor for ObjectCaptureSession.Mesh.Anchor(0);
        (*(*(v40 - 8) + 56))(v15, 1, 1, v40);
        result = sub_245F8E744(v15, &qword_27EE3A308, "lM");
        if (!v34)
        {
          goto LABEL_12;
        }
      }
    }
  }

  v24 = sub_245FA32CC();
  (*(v3 + 16))(v7, v24, v2);
  v25 = sub_2460918D4();
  v26 = sub_246091FB4();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *&v118[0] = v28;
    *v27 = 136380675;
    *(v27 + 4) = sub_245F8D3C0(0xD000000000000013, 0x800000024609F400, v118);
    _os_log_impl(&dword_245F8A000, v25, v26, "MeshManager.%{private}s: Dropping the new mesh update request because the previous request is still running!", v27, 0xCu);
    sub_245F8E6F4(v28);
    MEMORY[0x24C1989D0](v28, -1, -1);
    MEMORY[0x24C1989D0](v27, -1, -1);
  }

  return (*(v3 + 8))(v7, v2);
}

uint64_t sub_245FB5890()
{
  v1 = sub_246091AF4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = (aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + 40);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x277D85200], v1);
  v7 = v6;
  LOBYTE(v6) = sub_246091B24();
  result = (*(v2 + 8))(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v9 = *(v0 + 32);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_245FC5A18;
  *(v10 + 24) = v0;
  aBlock[4] = sub_245FC5DA4;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245FB4BFC;
  aBlock[3] = &unk_2858DE5A0;
  v11 = _Block_copy(aBlock);
  v12 = v9;

  dispatch_sync(v12, v11);

  _Block_release(v11);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_245FB5AA8(__int128 *a1)
{
  v41 = sub_2460918F4();
  v40 = *(v41 - 8);
  v3 = *(v40 + 64);
  MEMORY[0x28223BE20](v41);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2460919F4();
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_246091A64();
  v10 = *(v42 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v42);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_246091AF4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = (&v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = a1[3];
  v48 = a1[2];
  v49 = v19;
  v50 = a1[4];
  v51 = *(a1 + 80);
  v20 = a1[1];
  v46 = *a1;
  v47 = v20;
  v21 = *(v1 + 32);
  *v18 = v21;
  (*(v15 + 104))(v18, *MEMORY[0x277D85200], v14);
  v22 = v21;
  LOBYTE(v21) = sub_246091B24();
  result = (*(v15 + 8))(v18, v14);
  if ((v21 & 1) == 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (*(v46 + 16) || *(*(&v46 + 1) + 16))
  {
    v24 = *(v1 + OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_backgroundTaskCount);
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (!v25)
    {
      *(v1 + OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_backgroundTaskCount) = v26;
      if (v26 == 1)
      {
        v27 = *(v1 + 40);
        v28 = swift_allocObject();
        v29 = v49;
        *(v28 + 48) = v48;
        *(v28 + 64) = v29;
        *(v28 + 80) = v50;
        *(v28 + 96) = v51;
        v30 = v47;
        *(v28 + 16) = v46;
        *(v28 + 32) = v30;
        *(v28 + 104) = v1;
        aBlock[4] = sub_245FC59C4;
        aBlock[5] = v28;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_245F913A4;
        aBlock[3] = &unk_2858DE550;
        v31 = _Block_copy(aBlock);
        v32 = v27;
        sub_245FC5660(&v46, v44);

        sub_246091A14();
        v44[0] = MEMORY[0x277D84F90];
        sub_245FC59D0(&qword_27EE3A380, MEMORY[0x277D85198]);
        sub_245F8E624(&qword_27EE39F38, &qword_246096680);
        sub_245F9218C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680);
        sub_2460921A4();
        MEMORY[0x24C1969D0](0, v13, v9, v31);
        _Block_release(v31);

        (*(v43 + 8))(v9, v6);
        (*(v10 + 8))(v13, v42);
      }

LABEL_13:
      __break(1u);
      return result;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v33 = sub_245FA32CC();
  v34 = v40;
  v35 = v41;
  (*(v40 + 16))(v5, v33, v41);
  v36 = sub_2460918D4();
  v37 = sub_246091FB4();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v44[0] = v39;
    *v38 = 136380675;
    *(v38 + 4) = sub_245F8D3C0(0xD000000000000030, 0x800000024609F3C0, v44);
    _os_log_impl(&dword_245F8A000, v36, v37, "MeshManager.%{private}s: Received empty mesh update data, not updating mesh!", v38, 0xCu);
    sub_245F8E6F4(v39);
    MEMORY[0x24C1989D0](v39, -1, -1);
    MEMORY[0x24C1989D0](v38, -1, -1);
  }

  return (*(v34 + 8))(v5, v35);
}

void sub_245FB6098(uint64_t *a1, uint64_t a2)
{
  v4 = sub_245F8E624(&qword_27EE3A330, &qword_2460976B8);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v188 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v218 = &v188 - v9;
  v204 = sub_2460918F4();
  v10 = *(v204 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v204);
  v196 = &v188 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v197 = &v188 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v192 = &v188 - v17;
  MEMORY[0x28223BE20](v16);
  v199 = &v188 - v18;
  v19 = sub_245F8E624(&qword_27EE3A308, "lM");
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v212 = (&v188 - v21);
  v221 = type metadata accessor for ObjectCaptureSession.Mesh.Anchor(0);
  v22 = *(v221 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v221);
  v211 = &v188 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v210 = &v188 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v214 = &v188 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v194 = &v188 - v31;
  MEMORY[0x28223BE20](v30);
  v195 = &v188 - v32;
  v225 = sub_246091834();
  v33 = *(v225 - 8);
  v34 = *(v33 + 64);
  v35 = MEMORY[0x28223BE20](v225);
  v209 = &v188 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v213 = &v188 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v191 = &v188 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v43 = &v188 - v42;
  MEMORY[0x28223BE20](v41);
  v208 = &v188 - v44;
  v45 = *sub_24608FD18();
  OCSignPostsAriadneDbgCode();
  kdebug_trace();
  v205 = a2;
  v46 = (a2 + OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_backgroundData);
  swift_beginAccess();
  v47 = v46[1];
  v223 = v46;
  v46[1] = MEMORY[0x277D84FA0];

  v198 = a1;
  v48 = a1[1];
  v49 = v48 + 56;
  v50 = 1 << *(v48 + 32);
  v51 = -1;
  if (v50 < 64)
  {
    v51 = ~(-1 << v50);
  }

  v52 = v51 & *(v48 + 56);
  v193 = MEMORY[0x277D84F90];
  v228 = MEMORY[0x277D84F90];
  v53 = (v50 + 63) >> 6;
  v220 = v33 + 16;
  v217 = v33 + 32;
  v207 = (v22 + 56);
  v219 = v33;
  v224 = (v33 + 8);
  v222 = v22;
  v206 = (v22 + 48);
  v202 = (v10 + 16);
  v203 = (v10 + 8);
  v201 = "removeOverlappingAnchors(_:)";
  v215 = v48;

  v54 = 0;
  *&v55 = 136380931;
  v200 = v55;
  v216 = v8;
  v56 = v43;
  while (1)
  {
    v57 = v54;
    if (!v52)
    {
      break;
    }

LABEL_8:
    v58 = v219;
    v59 = *(v219 + 72);
    v60 = *(v219 + 16);
    v61 = v208;
    v62 = v225;
    v60(v208, *(v215 + 48) + v59 * (__clz(__rbit64(v52)) | (v54 << 6)), v225);
    (*(v58 + 32))(v56, v61, v62);
    v63 = v56;
    v64 = v223;
    swift_beginAccess();
    v65 = *v64;
    v66 = v63;
    v67 = sub_245FC1BDC(v63);
    if (v68)
    {
      v69 = v67;
      v70 = *v64;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v72 = *v64;
      v226 = *v64;
      *v64 = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_245FC2DEC();
        v72 = v226;
      }

      (*v224)(*(v72 + 48) + v69 * v59, v225);
      v73 = v212;
      sub_245FC559C(*(v72 + 56) + *(v222 + 72) * v69, v212);
      sub_245FC27E4(v69, v72);
      v74 = *v64;
      *v64 = v72;

      v75 = 0;
    }

    else
    {
      v75 = 1;
      v73 = v212;
    }

    v52 &= v52 - 1;
    v76 = v221;
    (*v207)(v73, v75, 1, v221);
    swift_endAccess();
    if ((*v206)(v73, 1, v76) == 1)
    {
      v56 = v66;
      (*v224)(v66, v225);
      sub_245F8E744(v73, &qword_27EE3A308, "lM");
    }

    else
    {
      v77 = v195;
      sub_245FC559C(v73, v195);
      *(v77 + *(v221 + 52)) = 1;
      sub_245FA2954(v77, v194);
      v78 = v193;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v78 = sub_245FC1A04(0, v78[2] + 1, 1, v78);
      }

      v80 = v78[2];
      v79 = v78[3];
      if (v80 >= v79 >> 1)
      {
        v78 = sub_245FC1A04(v79 > 1, v80 + 1, 1, v78);
      }

      v78[2] = v80 + 1;
      sub_245FC559C(v194, v78 + ((*(v222 + 80) + 32) & ~*(v222 + 80)) + *(v222 + 72) * v80);
      v193 = v78;
      v228 = v78;
      v81 = sub_245FA32CC();
      v82 = v192;
      (*v202)(v192, v81, v204);
      v83 = v191;
      v56 = v66;
      v84 = v225;
      v60(v191, v66, v225);
      v85 = sub_2460918D4();
      v86 = sub_246091FC4();
      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        v189 = swift_slowAlloc();
        v227 = v189;
        *v87 = v200;
        *(v87 + 4) = sub_245F8D3C0(0xD000000000000030, v201 | 0x8000000000000000, &v227);
        *(v87 + 12) = 2082;
        v190 = v56;
        v88 = v87;
        sub_245FC59D0(&unk_27EE3A310, MEMORY[0x277CC95F0]);
        v89 = sub_2460923D4();
        v90 = v83;
        v92 = v91;
        v188 = *v224;
        v188(v90, v84);
        v93 = sub_245F8D3C0(v89, v92, &v227);

        *(v88 + 14) = v93;
        _os_log_impl(&dword_245F8A000, v85, v86, "MeshManager.%{private}s: Removed mesh anchor %{public}s from processed mesh anchors", v88, 0x16u);
        v94 = v189;
        swift_arrayDestroy();
        MEMORY[0x24C1989D0](v94, -1, -1);
        MEMORY[0x24C1989D0](v88, -1, -1);

        (*v203)(v192, v204);
        sub_245FC5600(v195, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
        v56 = v190;
        v188(v190, v225);
      }

      else
      {

        v95 = v83;
        v96 = *v224;
        (*v224)(v95, v84);
        (*v203)(v82, v204);
        sub_245FC5600(v195, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
        v96(v56, v84);
      }
    }
  }

  while (1)
  {
    v54 = v57 + 1;
    if (__OFADD__(v57, 1))
    {
      goto LABEL_66;
    }

    if (v54 >= v53)
    {
      break;
    }

    v52 = *(v49 + 8 * v54);
    ++v57;
    if (v52)
    {
      goto LABEL_8;
    }
  }

  v97 = v198;
  sub_245FB77C4(v198);

  sub_245FB7698(v194);
  type metadata accessor for Util.Timer(0);
  v98 = sub_246025FB8();
  (*(*v98 + 144))();
  v99 = sub_245FB9140(v97);
  (*(*v98 + 152))(v99);
  v100 = sub_245FA32CC();
  v101 = *v202;
  v102 = v199;
  v208 = v100;
  v103 = v204;
  (v101)(v199);

  v104 = sub_2460918D4();
  v105 = sub_246091FA4();

  v106 = os_log_type_enabled(v104, v105);
  v195 = v98;
  v206 = v101;
  if (v106)
  {
    v107 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    v227 = v108;
    *v107 = v200;
    *(v107 + 4) = sub_245F8D3C0(0xD000000000000030, v201 | 0x8000000000000000, &v227);
    *(v107 + 12) = 2048;
    *(v107 + 14) = (*(*v98 + 176))();
    _os_log_impl(&dword_245F8A000, v104, v105, "MeshManager.%{private}s: Mesh refinement took %f ms", v107, 0x16u);
    sub_245F8E6F4(v108);
    MEMORY[0x24C1989D0](v108, -1, -1);
    MEMORY[0x24C1989D0](v107, -1, -1);
  }

  v207 = *v203;
  (v207)(v102, v103);
  v109 = v223;
  v110 = v225;
  v111 = v216;
  v223[17] = 0;
  v112 = *v109;
  v114 = (*v109 + 64);
  v113 = *v114;
  v212 = v114;
  v115 = 1 << *(v112 + 32);
  v116 = -1;
  if (v115 < 64)
  {
    v116 = ~(-1 << v115);
  }

  v117 = v116 & v113;
  v118 = (v115 + 63) >> 6;
  v215 = v112;

  v119 = 0;
  if (!v117)
  {
LABEL_28:
    if (v118 <= v119 + 1)
    {
      v121 = v119 + 1;
    }

    else
    {
      v121 = v118;
    }

    v122 = v121 - 1;
    while (1)
    {
      v120 = v119 + 1;
      if (__OFADD__(v119, 1))
      {
        break;
      }

      if (v120 >= v118)
      {
        v144 = sub_245F8E624(&qword_27EE3A338, &qword_2460976C0);
        (*(*(v144 - 8) + 56))(v111, 1, 1, v144);
        v117 = 0;
        goto LABEL_36;
      }

      v117 = v212[v120];
      ++v119;
      if (v117)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  while (1)
  {
    v120 = v119;
LABEL_35:
    v123 = __clz(__rbit64(v117));
    v117 &= v117 - 1;
    v124 = v123 | (v120 << 6);
    v125 = v215;
    v126 = v219;
    v127 = v213;
    (*(v219 + 16))(v213, *(v215 + 48) + *(v219 + 72) * v124, v110);
    v128 = v214;
    sub_245FA2954(*(v125 + 56) + *(v222 + 72) * v124, v214);
    v129 = sub_245F8E624(&qword_27EE3A338, &qword_2460976C0);
    v130 = v110;
    v131 = v129;
    v132 = *(v129 + 48);
    v133 = *(v126 + 32);
    v134 = v216;
    v133(v216, v127, v130);
    v135 = v128;
    v111 = v134;
    sub_245FC559C(v135, v134 + v132);
    (*(*(v131 - 8) + 56))(v134, 0, 1, v131);
    v122 = v120;
LABEL_36:
    v136 = v218;
    sub_245FC5914(v111, v218, &qword_27EE3A330, &qword_2460976B8);
    v137 = sub_245F8E624(&qword_27EE3A338, &qword_2460976C0);
    if ((*(*(v137 - 8) + 48))(v136, 1, v137) == 1)
    {
      break;
    }

    v138 = v136 + *(v137 + 48);
    v139 = *(v138 + *(v221 + 20));
    sub_245FC5600(v138, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
    v140 = [v139 count];

    v141 = v223[17];
    v142 = __OFADD__(v141, v140);
    v143 = &v140[v141];
    if (v142)
    {
      goto LABEL_68;
    }

    v223[17] = v143;
    v110 = v225;
    (*v224)(v136, v225);
    v119 = v122;
    if (!v117)
    {
      goto LABEL_28;
    }
  }

  v145 = v197;
  v146 = v204;
  v147 = v206;
  v206(v197, v208, v204);

  v148 = sub_2460918D4();
  v149 = sub_246091FA4();
  if (os_log_type_enabled(v148, v149))
  {
    v150 = swift_slowAlloc();
    v151 = swift_slowAlloc();
    v227 = v151;
    *v150 = v200;
    *(v150 + 4) = sub_245F8D3C0(0xD000000000000030, v201 | 0x8000000000000000, &v227);
    *(v150 + 12) = 2050;
    v152 = v223;
    *(v150 + 14) = v223[17];

    _os_log_impl(&dword_245F8A000, v148, v149, "MeshManager.%{private}s: Num vertices all anchors = %{public}ld", v150, 0x16u);
    sub_245F8E6F4(v151);
    MEMORY[0x24C1989D0](v151, -1, -1);
    MEMORY[0x24C1989D0](v150, -1, -1);

    (v207)(v145, v146);
  }

  else
  {

    (v207)(v145, v146);
    v152 = v223;
  }

  v153 = v209;
  sub_245FBA974();
  v154 = v152[1];
  v155 = 1 << *(v154 + 32);
  v156 = -1;
  if (v155 < 64)
  {
    v156 = ~(-1 << v155);
  }

  v157 = v156 & *(v154 + 56);
  v158 = (v155 + 63) >> 6;
  v159 = v152[1];

  v160 = 0;
  if (v157)
  {
LABEL_51:
    do
    {
      (*(v219 + 16))(v153, *(v154 + 48) + *(v219 + 72) * (__clz(__rbit64(v157)) | (v160 << 6)), v225);
      v162 = *v152;
      if (!*(*v152 + 16))
      {
        goto LABEL_69;
      }

      v163 = sub_245FC1BDC(v153);
      if ((v164 & 1) == 0)
      {
        goto LABEL_70;
      }

      v165 = *(v222 + 72);
      v166 = *(v162 + 56) + v165 * v163;
      v167 = v210;
      sub_245FA2954(v166, v210);
      (*v224)(v153, v225);
      sub_245FA2954(v167, v211);
      v168 = v228;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v168 = sub_245FC1A04(0, v168[2] + 1, 1, v168);
      }

      v170 = v168[2];
      v169 = v168[3];
      if (v170 >= v169 >> 1)
      {
        v168 = sub_245FC1A04(v169 > 1, v170 + 1, 1, v168);
      }

      v157 &= v157 - 1;
      sub_245FC5600(v210, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
      v168[2] = v170 + 1;
      sub_245FC559C(v211, v168 + ((*(v222 + 80) + 32) & ~*(v222 + 80)) + v170 * v165);
      v228 = v168;
      v152 = v223;
      v153 = v209;
    }

    while (v157);
  }

  while (1)
  {
    v161 = v160 + 1;
    if (__OFADD__(v160, 1))
    {
      break;
    }

    if (v161 >= v158)
    {

      if ((*(*v205 + 160))(v171))
      {
        v173 = v172;
        ObjectType = swift_getObjectType();
        (*(v173 + 8))(v228, ObjectType, v173);
        swift_unknownObjectRelease();
      }

      v175 = v196;
      v176 = v204;
      v147(v196, v208, v204);
      v177 = v228;

      v178 = sub_2460918D4();
      v179 = sub_246091FC4();
      if (os_log_type_enabled(v178, v179))
      {
        v180 = swift_slowAlloc();
        v181 = swift_slowAlloc();
        v227 = v181;
        *v180 = 136381187;
        *(v180 + 4) = sub_245F8D3C0(0xD000000000000030, v201 | 0x8000000000000000, &v227);
        *(v180 + 12) = 2050;
        v182 = v152;
        v183 = v176;
        v184 = v177[2];

        *(v180 + 14) = v184;

        *(v180 + 22) = 2050;
        *(v180 + 24) = *(*v182 + 16);

        _os_log_impl(&dword_245F8A000, v178, v179, "MeshManager.%{private}s: Updated %{public}ld of %{public}ld mesh anchors", v180, 0x20u);
        sub_245F8E6F4(v181);
        MEMORY[0x24C1989D0](v181, -1, -1);
        MEMORY[0x24C1989D0](v180, -1, -1);

        v185 = v175;
        v186 = v183;
      }

      else
      {

        swift_bridgeObjectRelease_n();
        v185 = v175;
        v186 = v176;
      }

      (v207)(v185, v186);
      sub_245FC1628();
      sub_245FB5890();
      v187 = *sub_24608FD24();
      OCSignPostsAriadneDbgCode();
      kdebug_trace();

      return;
    }

    v157 = *(v154 + 56 + 8 * v161);
    ++v160;
    if (v157)
    {
      v160 = v161;
      goto LABEL_51;
    }
  }

LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
}

uint64_t sub_245FB7698(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_245FC1A04(isUniquelyReferenced_nonNull_native, v16, 1, v3);
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
  v9 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for ObjectCaptureSession.Mesh.Anchor(0);
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_245FB77C4(uint64_t *a1)
{
  v2 = v1;
  v220 = sub_2460918F4();
  v221 = *(v220 - 8);
  v4 = *(v221 + 64);
  MEMORY[0x28223BE20](v220 - 8);
  v219 = &v210 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_245F8E624(&qword_27EE3A350, &unk_2460969A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v215 = &v210 - v8;
  v9 = sub_245F8E624(&qword_27EE3A308, "lM");
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v234 = &v210 - v11;
  v12 = sub_245F8E624(&qword_27EE3A358, &qword_2460976C8);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v241 = &v210 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v240 = &v210 - v16;
  v17 = type metadata accessor for ObjectCaptureSession.Mesh.Anchor(0);
  v244 = *(v17 - 8);
  v18 = *(v244 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v218 = &v210 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v217 = &v210 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v222 = &v210 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v223 = &v210 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v29 = (&v210 - v28);
  MEMORY[0x28223BE20](v27);
  v237 = (&v210 - v30);
  v254 = sub_246091834();
  v31 = *(v254 - 8);
  v32 = *(v31 + 64);
  v33 = MEMORY[0x28223BE20](v254);
  v214 = &v210 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v213 = &v210 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v245 = &v210 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v212 = &v210 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v211 = &v210 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v232 = (&v210 - v44);
  v45 = MEMORY[0x28223BE20](v43);
  v230 = &v210 - v46;
  MEMORY[0x28223BE20](v45);
  v247 = &v210 - v47;
  v48 = sub_245F8E624(&qword_27EE3A330, &qword_2460976B8);
  v49 = *(*(v48 - 8) + 64);
  v50 = MEMORY[0x28223BE20](v48 - 8);
  v52 = &v210 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v54 = &v210 - v53;
  v55 = *a1;

  v235 = sub_245FC572C(MEMORY[0x277D84F90]);
  v56 = *(v55 + 64);
  *&v233 = v55 + 64;
  v238 = v55;
  v57 = 1 << *(v55 + 32);
  if (v57 < 64)
  {
    v58 = ~(-1 << v57);
  }

  else
  {
    v58 = -1;
  }

  v59 = v58 & v56;
  v60 = (v2 + OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_backgroundData);
  swift_beginAccess();
  v61 = 0;
  v62 = (v57 + 63) >> 6;
  v248 = (v31 + 16);
  v249 = v60;
  v63 = (v31 + 32);
  v250 = v31;
  v64 = (v31 + 8);
  v65 = v29;
  v246 = v17;
  v252 = v64;
  v253 = v63;
  v239 = v29;
  v243 = v52;
  v242 = v54;
  v236 = v62;
LABEL_5:
  v66 = v61;
  if (!v59)
  {
LABEL_7:
    if (v62 <= v66 + 1)
    {
      v68 = v66 + 1;
    }

    else
    {
      v68 = v62;
    }

    while (1)
    {
      v67 = v66 + 1;
      if (__OFADD__(v66, 1))
      {
        break;
      }

      if (v67 >= v62)
      {
        v251 = (v68 - 1);
        v84 = sub_245F8E624(&qword_27EE3A338, &qword_2460976C0);
        (*(*(v84 - 8) + 56))(v52, 1, 1, v84);
        v59 = 0;
        goto LABEL_14;
      }

      v59 = *(v233 + 8 * v67);
      v66 = (v66 + 1);
      if (v59)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  while (1)
  {
    v67 = v66;
LABEL_13:
    v69 = __clz(__rbit64(v59));
    v59 &= v59 - 1;
    v70 = v69 | (v67 << 6);
    v71 = v238;
    v72 = v250;
    v73 = v247;
    v74 = v254;
    (*(v250 + 16))(v247, *(v238 + 48) + *(v250 + 72) * v70, v254);
    v75 = *(v71 + 56) + *(v244 + 72) * v70;
    v76 = v237;
    sub_245FA2954(v75, v237);
    v77 = sub_245F8E624(&qword_27EE3A338, &qword_2460976C0);
    v78 = *(v77 + 48);
    v79 = *(v72 + 32);
    v80 = v243;
    v79(v243, v73, v74);
    v81 = v76;
    v52 = v80;
    sub_245FC559C(v81, &v80[v78]);
    (*(*(v77 - 8) + 56))(v80, 0, 1, v77);
    v251 = v67;
    v60 = v249;
    v64 = v252;
    v65 = v239;
    v54 = v242;
    v62 = v236;
LABEL_14:
    sub_245FC5914(v52, v54, &qword_27EE3A330, &qword_2460976B8);
    v82 = sub_245F8E624(&qword_27EE3A338, &qword_2460976C0);
    if ((*(*(v82 - 8) + 48))(v54, 1, v82) == 1)
    {

      v149 = *(v235 + 64);
      v242 = (v235 + 64);
      v150 = 1 << *(v235 + 32);
      v151 = -1;
      if (v150 < 64)
      {
        v151 = ~(-1 << v150);
      }

      v152 = v151 & v149;
      v153 = (v150 + 63) >> 6;
      v251 = (v244 + 56);
      v243 = (v244 + 48);
      v238 = v221 + 16;
      v237 = (v221 + 8);
      v236 = "updateMeshRefinementParams(_:)";

      v154 = 0;
      v239 = MEMORY[0x277D84F90];
      *&v155 = 136380931;
      v233 = v155;
      v156 = v254;
      while (1)
      {
        v157 = v154;
        if (!v152)
        {
          break;
        }

        v158 = v154;
LABEL_72:
        v160 = __clz(__rbit64(v152));
        v152 &= v152 - 1;
        v161 = v160 | (v158 << 6);
        v162 = v235;
        v163 = v250;
        v164 = v247;
        (*(v250 + 16))(v247, *(v235 + 48) + *(v250 + 72) * v161, v156);
        v165 = *(*(v162 + 56) + 4 * v161);
        v166 = sub_245F8E624(&qword_27EE3A360, &qword_2460976D0);
        v167 = *(v166 + 48);
        v168 = v156;
        v169 = v241;
        (*(v163 + 32))(v241, v164, v168);
        *(v169 + v167) = v165;
        (*(*(v166 - 8) + 56))(v169, 0, 1, v166);
        v154 = v158;
        v60 = v249;
LABEL_73:
        v170 = v240;
        sub_245FC5914(v169, v240, &qword_27EE3A358, &qword_2460976C8);
        v171 = sub_245F8E624(&qword_27EE3A360, &qword_2460976D0);
        if ((*(*(v171 - 8) + 48))(v170, 1, v171) == 1)
        {

          return v239;
        }

        v172 = *(v170 + *(v171 + 48));
        v156 = v254;
        v173 = v245;
        (*v253)(v245, v170, v254);
        if (v172 < 1.0)
        {
          (*v252)(v173, v156);
        }

        else
        {
          swift_beginAccess();
          v174 = *v60;
          v175 = sub_245FC1BDC(v173);
          if (v176)
          {
            v177 = v175;
            v178 = *v60;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v180 = *v60;
            v255 = *v60;
            *v60 = 0x8000000000000000;
            if (!isUniquelyReferenced_nonNull_native)
            {
              sub_245FC2DEC();
              v180 = v255;
            }

            (*(v250 + 8))(*(v180 + 48) + *(v250 + 72) * v177, v156);
            v181 = v234;
            sub_245FC559C(*(v180 + 56) + *(v244 + 72) * v177, v234);
            sub_245FC27E4(v177, v180);
            v182 = *v60;
            *v60 = v180;

            v183 = 0;
          }

          else
          {
            v183 = 1;
            v181 = v234;
          }

          v184 = v246;
          (*v251)(v181, v183, 1, v246);
          swift_endAccess();
          if ((*v243)(v181, 1, v184) == 1)
          {
            (*v252)(v245, v156);
            sub_245F8E744(v181, &qword_27EE3A308, "lM");
          }

          else
          {
            v186 = v217;
            sub_245FC559C(v181, v217);
            *(v186 + v246[13]) = 1;
            sub_245FA2954(v186, v218);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v239 = sub_245FC1A04(0, v239[2] + 1, 1, v239);
            }

            v188 = v239[2];
            v187 = v239[3];
            if (v188 >= v187 >> 1)
            {
              v239 = sub_245FC1A04(v187 > 1, v188 + 1, 1, v239);
            }

            v189 = v239;
            v239[2] = v188 + 1;
            sub_245FC559C(v218, v189 + ((*(v244 + 80) + 32) & ~*(v244 + 80)) + *(v244 + 72) * v188);
            swift_beginAccess();
            v190 = v215;
            v191 = v245;
            sub_245FC4198(v245, v215);
            sub_245F8E744(v190, &qword_27EE3A350, &unk_2460969A0);
            v231 = *v248;
            v192 = v213;
            (v231)(v213, v191, v156);
            v193 = v247;
            sub_245FC3364(v247, v192);
            v232 = *v252;
            v232(v193, v156);
            swift_endAccess();
            v194 = sub_245FA32CC();
            (*v238)(v219, v194, v220);
            v195 = v214;
            (v231)(v214, v191, v156);
            v196 = sub_2460918D4();
            v197 = sub_246091FC4();
            if (os_log_type_enabled(v196, v197))
            {
              v198 = swift_slowAlloc();
              LODWORD(v230) = v197;
              v199 = v198;
              v231 = swift_slowAlloc();
              v256 = v231;
              *v199 = v233;
              *(v199 + 4) = sub_245F8D3C0(0xD00000000000001CLL, v236 | 0x8000000000000000, &v256);
              *(v199 + 12) = 2082;
              sub_245FC59D0(&unk_27EE3A310, MEMORY[0x277CC95F0]);
              v200 = sub_2460923D4();
              v229 = v196;
              v202 = v201;
              v203 = v195;
              v204 = v232;
              v232(v203, v156);
              v205 = sub_245F8D3C0(v200, v202, &v256);

              *(v199 + 14) = v205;
              v206 = v229;
              _os_log_impl(&dword_245F8A000, v229, v230, "MeshManager.%{private}s: Removed mesh anchor %{public}s because of overlap", v199, 0x16u);
              v207 = v231;
              swift_arrayDestroy();
              MEMORY[0x24C1989D0](v207, -1, -1);
              MEMORY[0x24C1989D0](v199, -1, -1);

              (*v237)(v219, v220);
              sub_245FC5600(v217, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
              v204(v245, v156);
            }

            else
            {

              v208 = v232;
              v232(v195, v156);
              (*v237)(v219, v220);
              sub_245FC5600(v217, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
              v208(v245, v156);
            }

            v60 = v249;
          }
        }
      }

      if (v153 <= v154 + 1)
      {
        v159 = v154 + 1;
      }

      else
      {
        v159 = v153;
      }

      v154 = v159 - 1;
      while (1)
      {
        v158 = v157 + 1;
        if (__OFADD__(v157, 1))
        {
          goto LABEL_93;
        }

        if (v158 >= v153)
        {
          v185 = sub_245F8E624(&qword_27EE3A360, &qword_2460976D0);
          v169 = v241;
          (*(*(v185 - 8) + 56))(v241, 1, 1, v185);
          v152 = 0;
          goto LABEL_73;
        }

        v152 = *&v242[8 * v158];
        ++v157;
        if (v152)
        {
          goto LABEL_72;
        }
      }
    }

    sub_245FC559C(&v54[*(v82 + 48)], v65);
    type metadata accessor for MeshUtils.AABB();
    v83 = sub_245F9F2BC(*(v65 + v246[11]), *(v65 + v246[12]));
    if (v83)
    {
      break;
    }

    sub_245FC5600(v65, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
    (*v64)(v54, v254);
    v66 = v251;
    if (!v59)
    {
      goto LABEL_7;
    }
  }

  v216 = v83;
  v85 = v60[2];
  v86 = (v85 + 56);
  v87 = 1 << *(v85 + 32);
  if (v87 < 64)
  {
    v88 = ~(-1 << v87);
  }

  else
  {
    v88 = -1;
  }

  isa = v88 & *(v85 + 56);
  v90 = (v87 + 63) >> 6;
  v231 = v85;

  v91 = v90;
  v92 = 0;
  v229 = v86;
  v228 = v91;
  if (isa)
  {
    while (1)
    {
LABEL_27:
      v94 = __clz(__rbit64(isa));
      isa &= isa - 1;
      v95 = *(v231 + 48);
      v96 = v250;
      v226 = *(v250 + 72);
      v97 = v230;
      v98 = v254;
      v227 = *(v250 + 16);
      v227(v230, v95 + v226 * (v94 | (v92 << 6)), v254);
      v99 = v232;
      (*(v96 + 32))(v232, v97, v98);
      v100 = *v249;
      v64 = v252;
      if (!*(*v249 + 16))
      {
        goto LABEL_31;
      }

      v101 = sub_245FC1BDC(v99);
      if ((v102 & 1) == 0)
      {
        goto LABEL_31;
      }

      v103 = *(v100 + 56) + *(v244 + 72) * v101;
      v104 = v222;
      sub_245FA2954(v103, v222);
      v105 = v223;
      sub_245FC559C(v104, v223);
      v106 = v246[12];
      v225 = *(v105 + v246[11]);
      v224 = *(v105 + v106);
      v107 = v246[9];
      v257 = __invert_f4(*(v239 + v107));
      v108 = sub_245F9F6A4(v225, v224, vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v257.columns[0], COERCE_FLOAT(*(v105 + v107))), v257.columns[1], *(v105 + v107), 1), v257.columns[2], *(v105 + v107), 2), v257.columns[3], *(v105 + v107), 3), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v257.columns[0], COERCE_FLOAT(*(v105 + v107 + 16))), v257.columns[1], *(v105 + v107 + 16), 1), v257.columns[2], *(v105 + v107 + 16), 2), v257.columns[3], *(v105 + v107 + 16), 3), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v257.columns[0], COERCE_FLOAT(*(v105 + v107 + 32))), v257.columns[1], *(v105 + v107 + 32), 1), v257.columns[2], *(v105 + v107 + 32), 2), v257.columns[3], *(v105 + v107 + 32), 3), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v257.columns[0], COERCE_FLOAT(*(v105 + v107 + 48))), v257.columns[1], *(v105 + v107 + 48), 1), v257.columns[2], *(v105 + v107 + 48), 2), v257.columns[3], *(v105 + v107 + 48), 3));
      if (!v108)
      {
        break;
      }

      v109 = *(v108->i64[0] + 152);
      v225.i64[0] = v108;
      v110 = v109(v216);
      v111 = v235;
      v112 = v232;
      if (*(v235 + 16) && (v113 = sub_245FC1BDC(v232), v111 = v235, (v114 & 1) != 0))
      {
        v115 = *(*(v235 + 56) + 4 * v113);
        v116 = v211;
        v227(v211, v112, v254);
        v224.i32[0] = swift_isUniquelyReferenced_nonNull_native();
        v256 = v111;
        v118 = sub_245FC1BDC(v116);
        v119 = *(v111 + 16);
        v120 = (v117 & 1) == 0;
        v121 = v119 + v120;
        v54 = v242;
        if (__OFADD__(v119, v120))
        {
          goto LABEL_97;
        }

        v52 = v243;
        if (*(v111 + 24) >= v121)
        {
          if ((v224.i8[0] & 1) == 0)
          {
            v224.i64[0] = v118;
            LODWORD(v235) = v117;
            sub_245FC30F0();
            LOBYTE(v117) = v235;
            v118 = v224.i64[0];
          }
        }

        else
        {
          LODWORD(v235) = v117;
          sub_245FC2420(v121, v224.i32[0]);
          v122 = sub_245FC1BDC(v211);
          v123 = v117 & 1;
          LOBYTE(v117) = v235;
          if ((v235 & 1) != v123)
          {
            goto LABEL_99;
          }

          v118 = v122;
        }

        v142 = v110 + v115;
        v235 = v256;
        if ((v117 & 1) == 0)
        {
          v143 = v118;
          *(v256 + 8 * (v118 >> 6) + 64) |= 1 << v118;
          v144 = v211;
          v227((*(v235 + 48) + v118 * v226), v211, v254);
          *(*(v235 + 56) + 4 * v143) = v142;

          v145 = *v64;
          v146 = v144;
          v147 = v254;
          (*v64)(v146, v254);
          sub_245FC5600(v223, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
          v145(v232, v147);
          v138 = v235;
          v148 = *(v235 + 16);
          v140 = __OFADD__(v148, 1);
          v141 = v148 + 1;
          if (v140)
          {
            goto LABEL_98;
          }

          goto LABEL_57;
        }

        *(*(v256 + 56) + 4 * v118) = v142;

        v132 = *v64;
        (*v64)(v211, v254);
      }

      else
      {
        v124 = v212;
        v227(v212, v112, v254);
        LODWORD(v235) = swift_isUniquelyReferenced_nonNull_native();
        v256 = v111;
        v126 = sub_245FC1BDC(v124);
        v127 = *(v111 + 16);
        v128 = (v125 & 1) == 0;
        v129 = v127 + v128;
        v54 = v242;
        if (__OFADD__(v127, v128))
        {
          goto LABEL_95;
        }

        v52 = v243;
        if (*(v111 + 24) >= v129)
        {
          if ((v235 & 1) == 0)
          {
            v235 = v126;
            v224.i32[0] = v125;
            sub_245FC30F0();
            LOBYTE(v125) = v224.i8[0];
            v126 = v235;
          }
        }

        else
        {
          v224.i32[0] = v125;
          sub_245FC2420(v129, v235);
          v130 = sub_245FC1BDC(v212);
          v131 = v125 & 1;
          LOBYTE(v125) = v224.i8[0];
          if ((v224.i8[0] & 1) != v131)
          {
            goto LABEL_99;
          }

          v126 = v130;
        }

        v235 = v256;
        if ((v125 & 1) == 0)
        {
          v133 = v126;
          *(v256 + 8 * (v126 >> 6) + 64) |= 1 << v126;
          v134 = v212;
          v227((*(v235 + 48) + v126 * v226), v212, v254);
          *(*(v235 + 56) + 4 * v133) = v110;

          v135 = *v64;
          v136 = v134;
          v137 = v254;
          (*v64)(v136, v254);
          sub_245FC5600(v223, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
          v135(v232, v137);
          v138 = v235;
          v139 = *(v235 + 16);
          v140 = __OFADD__(v139, 1);
          v141 = v139 + 1;
          if (v140)
          {
            goto LABEL_96;
          }

LABEL_57:
          *(v138 + 16) = v141;
          v52 = v243;
          goto LABEL_32;
        }

        *(*(v256 + 56) + 4 * v126) = v110;

        v132 = *v64;
        (*v64)(v212, v254);
      }

      sub_245FC5600(v223, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
      v132(v232, v254);
LABEL_32:
      v86 = v229;
      v91 = v228;
      if (!isa)
      {
        goto LABEL_23;
      }
    }

    sub_245FC5600(v105, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
    v99 = v232;
LABEL_31:
    (*v64)(v99, v254);
    v52 = v243;
    v54 = v242;
    goto LABEL_32;
  }

LABEL_23:
  while (1)
  {
    v93 = v92 + 1;
    if (__OFADD__(v92, 1))
    {
      break;
    }

    if (v93 >= v91)
    {
      v65 = v239;
      sub_245FC5600(v239, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);

      (*v64)(v54, v254);
      v60 = v249;
      v61 = v251;
      goto LABEL_5;
    }

    isa = v86[v93].isa;
    ++v92;
    if (isa)
    {
      v92 = v93;
      goto LABEL_27;
    }
  }

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
  result = sub_246092424();
  __break(1u);
  return result;
}

uint64_t sub_245FB9140(uint64_t a1)
{
  sub_2460918F4();
  v3 = sub_246091AF4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = (v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 16);
  v8 = *(a1 + 48);
  v15[2] = *(a1 + 32);
  v15[3] = v8;
  v15[4] = *(a1 + 64);
  v16 = *(a1 + 80);
  v9 = *(a1 + 16);
  v15[0] = *a1;
  v15[1] = v9;
  v10 = *(v1 + 40);
  *v7 = v10;
  (*(v4 + 104))(v7, *MEMORY[0x277D85200], v3);
  v11 = v10;
  LOBYTE(v10) = sub_246091B24();
  result = (*(v4 + 8))(v7, v3);
  if (v10)
  {
    sub_245FB92CC(v15);
    v13 = v1 + OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_backgroundData;
    swift_beginAccess();
    if (*(v13 + 33))
    {
      if (*(v13 + 33) == 1)
      {
        return sub_245FBB458(v15);
      }

      else
      {
        return sub_245FBC094(v15);
      }
    }

    else
    {
      return sub_245FC086C(v15);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_245FB92CC(uint64_t *a1)
{
  v2 = v1;
  v4 = type metadata accessor for ObjectCaptureSession.Mesh.Anchor(0);
  v178 = *(v4 - 8);
  v5 = *(v178 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v177 = &v158 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = sub_246091834();
  v179 = *(v185 - 8);
  v7 = *(v179 + 64);
  v8 = MEMORY[0x28223BE20](v185);
  v181 = &v158 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v184 = &v158 - v10;
  v11 = sub_245F8E624(&qword_27EE3A330, &qword_2460976B8);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v175 = &v158 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v180 = &v158 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v176 = (&v158 - v18);
  MEMORY[0x28223BE20](v17);
  v182 = (&v158 - v19);
  v20 = sub_2460918F4();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v158 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23);
  v183 = &v158 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v170 = &v158 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v158 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = &v158 - v33;
  v35 = sub_246091AF4();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  v39 = (&v158 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v173 = *a1;
  v40 = *(a1 + 4);
  v189[2] = *(a1 + 3);
  v189[3] = v40;
  v190 = *(a1 + 80);
  v41 = *(a1 + 2);
  v189[0] = *(a1 + 1);
  v189[1] = v41;
  v42 = *(v2 + 40);
  *v39 = v42;
  (*(v36 + 104))(v39, *MEMORY[0x277D85200], v35);
  v43 = v42;
  LOBYTE(v42) = sub_246091B24();
  result = (*(v36 + 8))(v39, v35);
  if ((v42 & 1) == 0)
  {
    goto LABEL_74;
  }

  if (*(v2 + 62) != 1)
  {
    return result;
  }

  v45 = (v2 + OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_backgroundData);
  result = swift_beginAccess();
  if (*(v45 + 72) == 1)
  {
    v45[14] = v45[15] + v45[14];
    *(v45 + 16) = 256;
    *(v45 + 72) = 0;
    return result;
  }

  v46 = sub_245FBA700(v189);
  v47 = sub_245FA32CC();
  v48 = *(v21 + 16);
  v167 = v47;
  v168 = v21 + 16;
  v166 = v48;
  (v48)(v34);
  v49 = sub_2460918D4();
  v50 = sub_246091FC4();
  v51 = os_log_type_enabled(v49, v50);
  v174 = v45;
  v169 = v21;
  if (v51)
  {
    v52 = swift_slowAlloc();
    v53 = v25;
    v54 = swift_slowAlloc();
    *&v186 = v54;
    *v52 = 136380931;
    *(v52 + 4) = sub_245F8D3C0(0xD00000000000001ELL, 0x800000024609F380, &v186);
    *(v52 + 12) = 2050;
    *(v52 + 14) = v46;
    _os_log_impl(&dword_245F8A000, v49, v50, "MeshManager.%{private}s: Computed uniform point density = %{public}ld", v52, 0x16u);
    sub_245F8E6F4(v54);
    v55 = v54;
    v25 = v53;
    v45 = v174;
    MEMORY[0x24C1989D0](v55, -1, -1);
    MEMORY[0x24C1989D0](v52, -1, -1);

    v56 = v169;
  }

  else
  {

    v56 = v21;
  }

  v57 = *(v56 + 8);
  v57(v34, v20);
  if (v46 >= *(v45 + 6))
  {
    v45[14] = v45[15] + v45[14];
    *(v45 + 33) = 1;
    *(v45 + 5) = v46;
    v166(v32, v167, v20);

    v58 = sub_2460918D4();
    v59 = sub_246091FC4();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v163 = v57;
      v61 = v60;
      v62 = swift_slowAlloc();
      *&v186 = v62;
      *v61 = 136380931;
      *(v61 + 4) = sub_245F8D3C0(0xD00000000000001ELL, 0x800000024609F380, &v186);
      *(v61 + 12) = 2050;
      *(v61 + 14) = *(v45 + 6);

      _os_log_impl(&dword_245F8A000, v58, v59, "MeshManager.%{private}s: Uniform point density is greater than the threshold for simplification (%{public}ld), triggering full mesh refinement in the next update.", v61, 0x16u);
      sub_245F8E6F4(v62);
      MEMORY[0x24C1989D0](v62, -1, -1);
      v63 = v61;
      v57 = v163;
      MEMORY[0x24C1989D0](v63, -1, -1);
    }

    else
    {
    }

    v57(v32, v20);
  }

  else
  {
    *(v45 + 33) = 2;
  }

  v64 = v183;
  v65 = v45[17];
  v66 = v45[14];
  if (v66 < v65)
  {
    v67 = sub_246026268();
    if (!sub_246026278(v65, v67, v66))
    {
      *(v45 + 32) = 1;
      goto LABEL_44;
    }
  }

  if (*(v45 + 129) == 2)
  {
    goto LABEL_37;
  }

  v68 = v45[16];
  v69 = sub_246026268();
  if (!sub_246026278(v68, v69, v66) && v68 >= v66)
  {
    goto LABEL_37;
  }

  result = swift_beginAccess();
  if (*(v45 + 129) == 2)
  {
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v70 = sub_245FB2144();
  swift_endAccess();
  if ((v70 & 1) == 0)
  {
LABEL_37:
    if (*(v45 + 32) == 1)
    {
      v166(v64, v167, v20);
      v99 = sub_2460918D4();
      v100 = sub_246091FC4();
      if (os_log_type_enabled(v99, v100))
      {
        v101 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        *&v186 = v102;
        *v101 = 136380675;
        *(v101 + 4) = sub_245F8D3C0(0xD00000000000001ELL, 0x800000024609F380, &v186);
        _os_log_impl(&dword_245F8A000, v99, v100, "MeshManager.%{private}s: Turned off mesh densification", v101, 0xCu);
        sub_245F8E6F4(v102);
        MEMORY[0x24C1989D0](v102, -1, -1);
        MEMORY[0x24C1989D0](v101, -1, -1);

        v103 = v183;
      }

      else
      {

        v103 = v64;
      }

      v57(v103, v20);
    }

    *(v45 + 32) = 0;
    goto LABEL_44;
  }

  v162 = v45 + 129;
  v163 = v57;
  v159 = v25;
  v161 = v20;
  v71 = *(v173 + 64);
  v165 = v173 + 64;
  v72 = 1 << *(v173 + 32);
  v73 = -1;
  if (v72 < 64)
  {
    v73 = ~(-1 << v72);
  }

  v74 = v73 & v71;
  v164 = (v72 + 63) >> 6;
  v171 = v179 + 16;
  v183 = (v179 + 32);
  v172 = (v179 + 8);

  v75 = 0;
  v160 = v2;
  if (!v74)
  {
LABEL_25:
    if (v164 <= v75 + 1)
    {
      v77 = v75 + 1;
    }

    else
    {
      v77 = v164;
    }

    v78 = v77 - 1;
    v79 = v176;
    while (1)
    {
      v76 = v75 + 1;
      if (__OFADD__(v75, 1))
      {
        break;
      }

      if (v76 >= v164)
      {
        v98 = sub_245F8E624(&qword_27EE3A338, &qword_2460976C0);
        (*(*(v98 - 8) + 56))(v79, 1, 1, v98);
        v74 = 0;
        goto LABEL_33;
      }

      v74 = *(v165 + 8 * v76);
      ++v75;
      if (v74)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  while (1)
  {
    v76 = v75;
LABEL_32:
    v80 = __clz(__rbit64(v74));
    v74 &= v74 - 1;
    v81 = v80 | (v76 << 6);
    v82 = v173;
    v83 = v179;
    v84 = v184;
    v85 = v185;
    (*(v179 + 16))(v184, *(v173 + 48) + *(v179 + 72) * v81, v185);
    v86 = v177;
    sub_245FA2954(*(v82 + 56) + *(v178 + 72) * v81, v177);
    v87 = sub_245F8E624(&qword_27EE3A338, &qword_2460976C0);
    v88 = *(v87 + 48);
    v89 = *(v83 + 32);
    v79 = v176;
    v89(v176, v84, v85);
    sub_245FC559C(v86, v79 + v88);
    (*(*(v87 - 8) + 56))(v79, 0, 1, v87);
    v78 = v76;
LABEL_33:
    v90 = v182;
    sub_245FC5914(v79, v182, &qword_27EE3A330, &qword_2460976B8);
    v91 = sub_245F8E624(&qword_27EE3A338, &qword_2460976C0);
    v92 = *(v91 - 8);
    v93 = *(v92 + 48);
    if ((v93)(v90, 1, v91) == 1)
    {
      break;
    }

    v94 = *(v91 + 48);
    v95 = v181;
    v96 = v185;
    (*v183)(v181, v90, v185);
    swift_beginAccess();
    v97 = v184;
    sub_245FC3364(v184, v95);
    (*v172)(v97, v96);
    swift_endAccess();
    result = sub_245FC5600(v182 + v94, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
    v75 = v78;
    if (!v74)
    {
      goto LABEL_25;
    }
  }

  v182 = v93;

  v112 = *v174;
  v113 = *(*v174 + 64);
  v165 = *v174 + 64;
  v114 = 1 << *(v112 + 32);
  v115 = -1;
  if (v114 < 64)
  {
    v115 = ~(-1 << v114);
  }

  v116 = v115 & v113;
  v117 = (v114 + 63) >> 6;
  v176 = (v92 + 56);
  v173 = v112;

  v118 = 0;
  v119 = v180;
  if (!v116)
  {
LABEL_52:
    if (v117 <= v118 + 1)
    {
      v121 = v118 + 1;
    }

    else
    {
      v121 = v117;
    }

    v122 = v121 - 1;
    v123 = v175;
    while (1)
    {
      v120 = v118 + 1;
      if (__OFADD__(v118, 1))
      {
        goto LABEL_73;
      }

      if (v120 >= v117)
      {
        v116 = 0;
        v134 = 1;
        goto LABEL_60;
      }

      v116 = *(v165 + 8 * v120);
      ++v118;
      if (v116)
      {
        goto LABEL_59;
      }
    }
  }

  while (1)
  {
    v120 = v118;
LABEL_59:
    v124 = __clz(__rbit64(v116));
    v116 &= v116 - 1;
    v125 = v124 | (v120 << 6);
    v126 = v173;
    v127 = v179;
    v128 = v184;
    v129 = v185;
    (*(v179 + 16))(v184, *(v173 + 48) + *(v179 + 72) * v125, v185);
    v130 = *(v126 + 56) + *(v178 + 72) * v125;
    v131 = v177;
    sub_245FA2954(v130, v177);
    v132 = *(v91 + 48);
    v133 = *(v127 + 32);
    v123 = v175;
    v133(v175, v128, v129);
    sub_245FC559C(v131, v123 + v132);
    v134 = 0;
    v122 = v120;
    v119 = v180;
LABEL_60:
    (*v176)(v123, v134, 1, v91);
    sub_245FC5914(v123, v119, &qword_27EE3A330, &qword_2460976B8);
    if ((v182)(v119, 1, v91) == 1)
    {
      break;
    }

    v135 = *(v91 + 48);
    v136 = v181;
    v137 = v185;
    (*v183)(v181, v119, v185);
    swift_beginAccess();
    v138 = v184;
    sub_245FC3364(v184, v136);
    v139 = v138;
    v119 = v180;
    (*v172)(v139, v137);
    swift_endAccess();
    result = sub_245FC5600(v119 + v135, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
    v118 = v122;
    if (!v116)
    {
      goto LABEL_52;
    }
  }

  v140 = *v162;
  if (v140 == 2)
  {
    goto LABEL_76;
  }

  v141 = sub_245F9DAF4(v140 & 1);
  v45 = v174;
  v174[17] = v141;
  *(v45 + 33) = 1;
  v142 = v170;
  v20 = v161;
  v166(v170, v167, v161);
  v143 = v160;

  v144 = sub_2460918D4();
  v145 = sub_246091FC4();
  if (os_log_type_enabled(v144, v145))
  {
    v146 = swift_slowAlloc();
    v147 = swift_slowAlloc();
    *&v186 = v147;
    *v146 = 136380931;
    *(v146 + 4) = sub_245F8D3C0(0xD00000000000001ELL, 0x800000024609F380, &v186);
    *(v146 + 12) = 2082;
    v148 = *v162;

    if (v148 == 2)
    {
LABEL_78:
      __break(1u);
      return result;
    }

    LOBYTE(v188) = v148 & 1;
    v149 = sub_246091C54();
    v151 = sub_245F8D3C0(v149, v150, &v186);

    *(v146 + 14) = v151;
    _os_log_impl(&dword_245F8A000, v144, v145, "MeshManager.%{private}s: Updated scan extent to: %{public}s in area mode.Now triggering scan extent update in scene reconstruction.", v146, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1989D0](v147, -1, -1);
    MEMORY[0x24C1989D0](v146, -1, -1);

    v152 = v142;
    v20 = v161;
  }

  else
  {

    v152 = v142;
  }

  v57 = v163;
  v153 = (v163)(v152, v20);
  v25 = v159;
  result = (*(*v143 + 160))(v153);
  if (result)
  {
    v155 = *v162;
    if (v155 != 2)
    {
      v156 = v154;
      ObjectType = swift_getObjectType();
      (*(v156 + 16))(v155 & 1, ObjectType, v156);
      swift_unknownObjectRelease();
      goto LABEL_44;
    }

    goto LABEL_77;
  }

LABEL_44:
  v166(v25, v167, v20);

  v104 = sub_2460918D4();
  v105 = sub_246091FC4();

  if (os_log_type_enabled(v104, v105))
  {
    v106 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    v188 = v107;
    *v106 = 136380931;
    *(v106 + 4) = sub_245F8D3C0(0xD00000000000001ELL, 0x800000024609F380, &v188);
    *(v106 + 12) = 2082;
    v108 = *(v45 + 3);
    v186 = *(v45 + 2);
    *v187 = v108;
    *&v187[9] = *(v45 + 57);
    v109 = sub_246091C54();
    v111 = sub_245F8D3C0(v109, v110, &v188);

    *(v106 + 14) = v111;
    _os_log_impl(&dword_245F8A000, v104, v105, "MeshManager.%{private}s: Mesh refinement parameters = %{public}s", v106, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1989D0](v107, -1, -1);
    MEMORY[0x24C1989D0](v106, -1, -1);
  }

  return (v57)(v25, v20);
}

uint64_t sub_245FBA700(uint64_t *a1)
{
  v3 = sub_246091AF4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = (&v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[3];
  v31 = a1[2];
  v32 = v8;
  v11 = a1[4];
  v12 = a1[5];
  v13 = a1[7];
  v29 = a1[6];
  v30 = v11;
  v14 = *(a1 + 64);
  v15 = *(v1 + 40);
  *v7 = v15;
  (*(v4 + 104))(v7, *MEMORY[0x277D85200], v3);
  v16 = v15;
  LOBYTE(v15) = sub_246091B24();
  result = (*(v4 + 8))(v7, v3);
  if ((v15 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (*(v1 + 76) == 1)
  {
    v18 = 0.0;
    if (v14)
    {
      goto LABEL_9;
    }

    v33 = v32;
    v34 = v9;
    v35 = v31;
    v36 = v10;
    v37 = v30;
    v38 = v12;
    v39 = v29;
    v40 = v13;
    *v19.f32 = OCBoundingBox.extent.getter();
    goto LABEL_8;
  }

  v20 = v1 + OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_backgroundData;
  swift_beginAccess();
  v18 = 0.0;
  if ((*(v20 + 96) & 1) == 0 && (*(v20 + 128) & 1) == 0)
  {
    v21 = *(v20 + 112);
    v22 = *(v20 + 80);
    v23.i64[0] = v21;
    v24.i64[0] = v22;
    v24.i64[1] = *(v20 + 88);
    v23.i64[1] = *(v20 + 120);
    v19 = vsubq_f32(v23, v24);
LABEL_8:
    v25 = vmulq_f32(v19, v19);
    v18 = sqrtf(v25.f32[2] + vaddv_f32(*v25.f32));
  }

LABEL_9:
  v26 = v1 + OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_backgroundData;
  result = swift_beginAccess();
  v27 = *(v26 + 56);
  if (v27 <= 0.0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v28 = v18 / v27;
  if ((LODWORD(v28) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v28 <= -9.2234e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v28 < 9.2234e18)
  {
    return v28;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_245FBA974()
{
  v98 = sub_2460918F4();
  v97 = *(v98 - 8);
  v1 = *(v97 + 64);
  MEMORY[0x28223BE20](v98);
  v96 = &v95 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = type metadata accessor for ObjectCaptureSession.Mesh.Anchor(0);
  v108 = *(v113 - 8);
  v3 = *(v108 + 64);
  v4 = MEMORY[0x28223BE20](v113);
  v6 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v107 = &v95 - v7;
  v117 = sub_246091834();
  v8 = *(v117 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v117);
  v106 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_245F8E624(&qword_27EE3A330, &qword_2460976B8);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v110 = &v95 - v16;
  v17 = sub_246091AF4();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = (&v95 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = v0;
  v23 = *(v0 + 40);
  *v21 = v23;
  (*(v18 + 104))(v21, *MEMORY[0x277D85200], v17);
  v24 = v23;
  v25 = sub_246091B24();
  result = (*(v18 + 8))(v21, v17);
  if (v25)
  {
    v27 = (v22 + OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_backgroundData);
    v114 = v27;
    swift_beginAccess();
    v28 = v27->i64[0];
    v29 = v27->i64[0] + 64;
    v30 = 1 << *(v27->i64[0] + 32);
    v31 = -1;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    v32 = v31 & *(v27->i64[0] + 64);
    v33 = (v30 + 63) >> 6;
    v102 = v8 + 16;
    v101 = v8 + 32;
    v105 = v8;
    v112 = (v8 + 8);
    v109 = v28;

    v34 = 0;
    v104 = v6;
    v103 = v15;
    v35 = v110;
    v111 = v29;
    while (v32)
    {
      v40 = v34;
LABEL_17:
      v43 = __clz(__rbit64(v32));
      v32 &= v32 - 1;
      v44 = v43 | (v40 << 6);
      v45 = v109;
      v46 = v105;
      v47 = v106;
      v48 = v117;
      (*(v105 + 16))(v106, *(v109 + 48) + *(v105 + 72) * v44, v117);
      v49 = *(v45 + 56) + *(v108 + 72) * v44;
      v50 = v107;
      sub_245FA2954(v49, v107);
      v51 = sub_245F8E624(&qword_27EE3A338, &qword_2460976C0);
      v52 = *(v51 + 48);
      v53 = *(v46 + 32);
      v15 = v103;
      v53(v103, v47, v48);
      sub_245FC559C(v50, &v15[v52]);
      (*(*(v51 - 8) + 56))(v15, 0, 1, v51);
      v6 = v104;
      v35 = v110;
LABEL_18:
      sub_245FC5914(v15, v35, &qword_27EE3A330, &qword_2460976B8);
      v54 = sub_245F8E624(&qword_27EE3A338, &qword_2460976C0);
      if ((*(*(v54 - 8) + 48))(v35, 1, v54) == 1)
      {

        if ((v114[6].i8[0] & 1) == 0 && (v114[8].i8[0] & 1) == 0)
        {
          v72 = *v114[5].f32;
          v71 = v114[5].i64[1];
          v74 = *v114[7].f32;
          v73 = v114[7].u64[1];
          v75 = sub_245FA32CC();
          v76 = v97;
          v77 = v96;
          v78 = v98;
          (*(v97 + 16))(v96, v75, v98);
          v79 = sub_2460918D4();
          v80 = sub_246091FC4();
          if (os_log_type_enabled(v79, v80))
          {
            *v81.f32 = v72;
            v81.i64[1] = v71;
            *v82.f32 = vsub_f32(v74, v72);
            v82.i64[1] = vsubq_f32(vdupq_n_s64(v73), v81).u32[2];
            v122 = v82;
            v83 = swift_slowAlloc();
            v123.i64[0] = swift_slowAlloc();
            v124.i64[0] = v123.i64[0];
            *v83 = 136381443;
            *(v83 + 4) = sub_245F8D3C0(0xD000000000000013, 0x800000024609F360, &v124);
            *(v83 + 12) = 2082;
            v125 = v122;
            v122.i64[0] = v73;
            sub_245F8E624(&qword_27EE3A2F0, &unk_246096850);
            sub_245F9218C(&qword_27EE3A340, &qword_27EE3A2F0, &unk_246096850);
            v84 = sub_246092404();
            v86 = v71;
            v87 = sub_245F8D3C0(v84, v85, &v124);

            *(v83 + 14) = v87;
            *(v83 + 22) = 2082;
            *v125.f32 = v72;
            v125.i64[1] = v86;
            v88 = sub_246092404();
            v90 = sub_245F8D3C0(v88, v89, &v124);

            *(v83 + 24) = v90;
            *(v83 + 32) = 2082;
            *v125.f32 = v74;
            v125.i64[1] = v122.i64[0];
            v91 = sub_246092404();
            v93 = sub_245F8D3C0(v91, v92, &v124);

            *(v83 + 34) = v93;
            _os_log_impl(&dword_245F8A000, v79, v80, "MeshManager.%{private}s: Updated mesh extents: extent = %{public}s\nminCorner = %{public}s maxCorner = %{public}s", v83, 0x2Au);
            v94 = v123.i64[0];
            swift_arrayDestroy();
            MEMORY[0x24C1989D0](v94, -1, -1);
            MEMORY[0x24C1989D0](v83, -1, -1);

            return (*(v97 + 8))(v96, v98);
          }

          else
          {

            return (*(v76 + 8))(v77, v78);
          }
        }

        return result;
      }

      sub_245FC559C(v35 + *(v54 + 48), v6);
      v55 = v113;
      v56 = &v6[*(v113 + 36)];
      v57 = v56[1];
      v121 = *v56;
      v122 = v57;
      v58 = *&v6[*(v113 + 44)];
      v59 = v56[3];
      v120 = v56[2];
      v118 = v58;
      v119 = v59;
      v125 = vaddq_f32(v59, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v121, v58.f32[0]), v57, *v58.f32, 1), v120, v58, 2));
      v60 = sub_245F8E624(&qword_27EE3A080, &unk_246096F90);
      sub_246026078(v60);
      v123 = v124;
      v61 = vaddq_f32(v118, *&v6[*(v55 + 48)]);
      v125 = vaddq_f32(v119, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v121, v61.f32[0]), v122, *v61.f32, 1), v120, v61, 2));
      sub_246026078(v60);
      v62 = v124;
      v63 = v114;
      if (v114[6].i8[0] & 1) != 0 || (v114[8].i8[0])
      {
        v62.i32[3] = 0;
        v36 = v123;
        v36.i32[3] = 0;
        v37 = vminnmq_f32(v62, v36);
        v37.i32[3] = v115.i32[3];
        v114[5] = v37;
        v63[6].i8[0] = 0;
        v38 = vmaxnmq_f32(v62, v36);
        v38.i32[3] = v116;
        v115 = v37;
        v123 = v38;
        v39 = &v126;
      }

      else
      {
        v62.i32[3] = 0;
        v64 = v123;
        v64.i32[3] = 0;
        v65 = vminnmq_f32(v62, v64);
        v65.i32[3] = 0;
        v66 = v114[5];
        v66.i32[3] = 0;
        v67 = vminnmq_f32(v65, v66);
        v67.i32[3] = v99.i32[3];
        v68 = vmaxnmq_f32(v62, v64);
        v68.i32[3] = 0;
        v114[5] = v67;
        v69 = v63[7];
        v69.i32[3] = 0;
        v63[6].i8[0] = 0;
        v38 = vmaxnmq_f32(v68, v69);
        v38.i32[3] = v100;
        v99 = v67;
        v123 = v38;
        v39 = &v123;
      }

      v39[-16] = v38;
      v29 = v111;
      sub_245FC5600(v6, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
      v63[7] = v123;
      v63[8].i8[0] = 0;
      result = (*v112)(v35, v117);
    }

    if (v33 <= v34 + 1)
    {
      v41 = v34 + 1;
    }

    else
    {
      v41 = v33;
    }

    v42 = v41 - 1;
    while (1)
    {
      v40 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v40 >= v33)
      {
        v70 = sub_245F8E624(&qword_27EE3A338, &qword_2460976C0);
        (*(*(v70 - 8) + 56))(v15, 1, 1, v70);
        v32 = 0;
        v34 = v42;
        goto LABEL_18;
      }

      v32 = *(v29 + 8 * v40);
      ++v34;
      if (v32)
      {
        v34 = v40;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_245FBB458(uint64_t *a1)
{
  v2 = sub_245F8E624(&qword_27EE3A308, "lM");
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v110 = v90 - v4;
  v109 = type metadata accessor for ObjectCaptureSession.Mesh.Anchor(0);
  v112 = *(v109 - 8);
  v5 = *(v112 + 64);
  v6 = MEMORY[0x28223BE20](v109);
  v8 = v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v108 = v90 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = v90 - v11;
  v13 = sub_2460918F4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v103 = v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v99 = v90 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = v90 - v20;
  v22 = sub_246091AF4();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = (v90 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = *a1;
  v28 = a1[3];
  v100.i64[0] = a1[2];
  v95 = v28;
  v29 = a1[5];
  v98.i64[0] = a1[4];
  v94 = v29;
  v30 = a1[7];
  v97.i64[0] = a1[6];
  v93 = v30;
  v31 = a1[9];
  v96 = a1[8];
  v92 = v31;
  v111.i32[0] = *(a1 + 80);
  v32 = *(v113 + 40);
  *v26 = v32;
  (*(v23 + 104))(v26, *MEMORY[0x277D85200], v22);
  v33 = v32;
  LOBYTE(v32) = sub_246091B24();
  result = (*(v23 + 8))(v26, v22);
  if (v32)
  {
    v35 = sub_245FA32CC();
    v36 = *(v14 + 16);
    v107 = v35;
    v106 = v36;
    (v36)(v21);
    v37 = sub_2460918D4();
    v38 = sub_246091FC4();
    v39 = os_log_type_enabled(v37, v38);
    v40 = v14;
    v104 = v14 + 16;
    if (v39)
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v116.columns[0].i64[0] = v42;
      *v41 = 136380675;
      *(v41 + 4) = sub_245F8D3C0(0xD000000000000018, 0x800000024609F340, &v116);
      _os_log_impl(&dword_245F8A000, v37, v38, "MeshManager.%{private}s: Refining all mesh anchors...", v41, 0xCu);
      sub_245F8E6F4(v42);
      MEMORY[0x24C1989D0](v42, -1, -1);
      MEMORY[0x24C1989D0](v41, -1, -1);
    }

    v43 = *(v40 + 8);
    v43(v21, v13);
    v44 = v113;
    v45 = (v113 + OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_backgroundData);
    result = swift_beginAccess();
    v105 = v45;
    if (*(v45[1] + 16))
    {
      goto LABEL_48;
    }

    v115 = 1;
    v102 = v13;
    v101 = v40;
    if (v111.i8[0])
    {
      v111.i64[0] = 0;
      v46 = 0uLL;
      v47 = v115;
      v48 = 0uLL;
      v49 = 0uLL;
      v50 = 0uLL;
    }

    else
    {
      v51.i64[0] = v100.i64[0];
      v51.i64[1] = v95;
      v91 = v51;
      v51.i64[0] = v98.i64[0];
      v51.i64[1] = v94;
      v90[2] = v51;
      v51.i64[0] = v97.i64[0];
      v51.i64[1] = v93;
      v90[1] = v51;
      v51.i64[0] = v96;
      v51.i64[1] = v92;
      v90[0] = v51;
      v114[1] = v95;
      v114[0] = v100.i64[0];
      v114[2] = v98.i64[0];
      v114[3] = v94;
      v114[4] = v97.i64[0];
      v114[5] = v93;
      v114[6] = v96;
      v114[7] = v92;
      OCBoundingBox.scale(_:)(&v116, *(v44 + OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_kScaleFactorForBoundingBoxMeshIntersection));
      v111 = v116.columns[0];
      v100 = v116.columns[1];
      v98 = v116.columns[2];
      v97 = v116.columns[3];
      type metadata accessor for MeshUtils.AABB();
      v116.columns[0] = v111;
      v116.columns[1] = v100;
      v116.columns[2] = v98;
      v116.columns[3] = v97;
      v111.i64[0] = sub_245FA0068(&v116);
      *v46.i64 = sub_2460214C8(v91);
      v47 = 0;
      v116.columns[0].i8[0] = 0;
    }

    v116.columns[0] = v46;
    v116.columns[1] = v48;
    v116.columns[2] = v49;
    v116.columns[3] = v50;
    v117 = v47;
    v52 = 1 << *(v27 + 32);
    v53 = -1;
    if (v52 < 64)
    {
      v53 = ~(-1 << v52);
    }

    v54 = v53 & *(v27 + 64);
    v55 = (v52 + 63) >> 6;

    v98.i64[0] = 0;
    v56 = 0;
    while (v54)
    {
LABEL_16:
      v58 = __clz(__rbit64(v54));
      v54 &= v54 - 1;
      sub_245FA2954(*(v27 + 56) + *(v112 + 72) * (v58 | (v56 << 6)), v12);
      v59 = sub_245FBC8B0(v12, v111.i64[0], &v116);
      result = sub_245FC5600(v12, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
      if (v59 != 2 && (v59 & 1) != 0)
      {
        v60 = __OFADD__(v98.i64[0]++, 1);
        if (v60)
        {
          __break(1u);
LABEL_21:
          v100.i64[0] = v43;

          v61 = *v105;
          v62 = *v105 + 64;
          v63 = 1 << *(*v105 + 32);
          v64 = -1;
          if (v63 < 64)
          {
            v64 = ~(-1 << v63);
          }

          v65 = v64 & *(*v105 + 64);
          v66 = (v63 + 63) >> 6;
          v67 = (v112 + 56);

          v68 = 0;
          while (v65)
          {
LABEL_30:
            v71 = __clz(__rbit64(v65));
            v65 &= v65 - 1;
            v72 = *(v112 + 72);
            v73 = v108;
            sub_245FA2954(*(v61 + 56) + v72 * (v71 | (v68 << 6)), v108);
            sub_245FC559C(v73, v8);
            if (*(v27 + 16) && (v74 = sub_245FC1BDC(v8), (v75 & 1) != 0))
            {
              v69 = v110;
              sub_245FA2954(*(v27 + 56) + v74 * v72, v110);
              sub_245FC5600(v8, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
              (*v67)(v69, 0, 1, v109);
              result = sub_245F8E744(v69, &qword_27EE3A308, "lM");
            }

            else
            {
              v76 = v110;
              (*v67)(v110, 1, 1, v109);
              sub_245F8E744(v76, &qword_27EE3A308, "lM");
              v77 = sub_245FBC8B0(v8, v111.i64[0], &v116);
              result = sub_245FC5600(v8, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
              if (v77 != 2 && (v77 & 1) != 0)
              {
                v60 = __OFADD__(v98.i64[0]++, 1);
                if (v60)
                {
                  __break(1u);
LABEL_37:

                  v78 = v102;
                  v79 = v103;
                  v80 = v100.i64[0];
                  if (v111.i64[0])
                  {
                    v81 = v99;
                    v106(v99, v107, v102);

                    v82 = sub_2460918D4();
                    v83 = sub_246091FC4();
                    if (os_log_type_enabled(v82, v83))
                    {
                      v84 = swift_slowAlloc();
                      v85 = swift_slowAlloc();
                      v114[0] = v85;
                      *v84 = 136381187;
                      *(v84 + 4) = sub_245F8D3C0(0xD000000000000018, 0x800000024609F340, v114);
                      *(v84 + 12) = 2050;
                      *(v84 + 14) = v98.i64[0];
                      *(v84 + 22) = 2050;
                      *(v84 + 24) = *(*v105 + 16);

                      _os_log_impl(&dword_245F8A000, v82, v83, "MeshManager.%{private}s: %{public}ld/%{public}ld all mesh anchors intersect with bounding box.", v84, 0x20u);
                      sub_245F8E6F4(v85);
                      MEMORY[0x24C1989D0](v85, -1, -1);
                      MEMORY[0x24C1989D0](v84, -1, -1);
                    }

                    else
                    {
                    }

                    v80(v81, v78);
                  }

                  v106(v79, v107, v78);
                  v86 = sub_2460918D4();
                  v87 = sub_246091FC4();
                  if (os_log_type_enabled(v86, v87))
                  {
                    v88 = swift_slowAlloc();
                    v89 = swift_slowAlloc();
                    v114[0] = v89;
                    *v88 = 136380675;
                    *(v88 + 4) = sub_245F8D3C0(0xD000000000000018, 0x800000024609F340, v114);
                    _os_log_impl(&dword_245F8A000, v86, v87, "MeshManager.%{private}s: Finished refining all mesh anchors.", v88, 0xCu);
                    sub_245F8E6F4(v89);
                    MEMORY[0x24C1989D0](v89, -1, -1);
                    MEMORY[0x24C1989D0](v88, -1, -1);
                  }

                  v80(v79, v78);
                  return 1;
                }
              }
            }
          }

          while (1)
          {
            v70 = v68 + 1;
            if (__OFADD__(v68, 1))
            {
              goto LABEL_46;
            }

            if (v70 >= v66)
            {
              goto LABEL_37;
            }

            v65 = *(v62 + 8 * v70);
            ++v68;
            if (v65)
            {
              v68 = v70;
              goto LABEL_30;
            }
          }
        }
      }
    }

    while (1)
    {
      v57 = v56 + 1;
      if (__OFADD__(v56, 1))
      {
        break;
      }

      if (v57 >= v55)
      {
        goto LABEL_21;
      }

      v54 = *(v27 + 64 + 8 * v57);
      ++v56;
      if (v54)
      {
        v56 = v57;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
  }

  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

uint64_t sub_245FBC094(__int128 *a1)
{
  v3 = type metadata accessor for ObjectCaptureSession.Mesh.Anchor(0);
  v81 = *(v3 - 8);
  v4 = *(v81 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2460918F4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v76 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v73 = &v65 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v65 - v14;
  v16 = sub_246091AF4();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = (&v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = a1[3];
  v91.columns[1] = a1[2];
  v91.columns[2] = v21;
  v91.columns[3] = a1[4];
  v92 = *(a1 + 80);
  v22 = a1[1];
  v90 = *a1;
  v91.columns[0] = v22;
  v82 = v1;
  v23 = *(v1 + 40);
  *v20 = v23;
  (*(v17 + 104))(v20, *MEMORY[0x277D85200], v16);
  v24 = v23;
  LOBYTE(v23) = sub_246091B24();
  result = (*(v17 + 8))(v20, v16);
  if (v23)
  {
    v26 = sub_245FA32CC();
    v79 = *(v8 + 16);
    v80 = v26;
    v79(v15);
    v27 = sub_2460918D4();
    v28 = sub_246091FC4();
    v29 = os_log_type_enabled(v27, v28);
    v77 = v8 + 16;
    if (v29)
    {
      v30 = swift_slowAlloc();
      v31 = v8;
      v32 = swift_slowAlloc();
      v83.i64[0] = v32;
      *v30 = 136380675;
      *(v30 + 4) = sub_245F8D3C0(0xD000000000000020, 0x800000024609F310, &v83);
      _os_log_impl(&dword_245F8A000, v27, v28, "MeshManager.%{private}s: Refining updated mesh anchors...", v30, 0xCu);
      sub_245F8E6F4(v32);
      v33 = v32;
      v8 = v31;
      MEMORY[0x24C1989D0](v33, -1, -1);
      MEMORY[0x24C1989D0](v30, -1, -1);

      v34 = v31;
    }

    else
    {

      v34 = v8;
    }

    v75 = *(v34 + 8);
    v75(v15, v7);
    v35 = v82 + OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_backgroundData;
    result = swift_beginAccess();
    if (*(*(v35 + 8) + 16))
    {
      goto LABEL_32;
    }

    v87 = 1;
    v74 = v7;
    v78 = v8;
    if (v92)
    {
      v36 = 0;
      v37 = 0uLL;
      v38 = v87;
      v39 = 0uLL;
      v40 = 0uLL;
      v41 = 0uLL;
    }

    else
    {
      v88 = v91;
      v72 = v91.columns[0];
      v71 = v91.columns[1];
      v70 = v91.columns[2];
      v69 = v91.columns[3];
      OCBoundingBox.scale(_:)(&v83, *(v82 + OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_kScaleFactorForBoundingBoxMeshIntersection));
      v67 = v84;
      v68 = v83;
      v65 = v86;
      v66 = v85;
      type metadata accessor for MeshUtils.AABB();
      v83 = v68;
      v84 = v67;
      v85 = v66;
      v86 = v65;
      v36 = sub_245FA0068(&v83);
      *v37.i64 = sub_2460214C8(v72);
      v38 = 0;
      v83.i8[0] = 0;
    }

    v88.columns[0] = v37;
    v88.columns[1] = v39;
    v88.columns[2] = v40;
    v88.columns[3] = v41;
    v89 = v38;
    v42 = v90;
    v43 = v90 + 64;
    v44 = 1 << *(v90 + 32);
    v45 = -1;
    if (v44 < 64)
    {
      v45 = ~(-1 << v44);
    }

    v46 = v45 & *(v90 + 64);
    v47 = (v44 + 63) >> 6;

    v72.i64[0] = 0;
    v48 = 0;
    while (v46)
    {
LABEL_17:
      v50 = __clz(__rbit64(v46));
      v46 &= v46 - 1;
      sub_245FA2954(*(v42 + 56) + *(v81 + 72) * (v50 | (v48 << 6)), v6);
      v51 = sub_245FBC8B0(v6, v36, &v88);
      result = sub_245FC5600(v6, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
      if (v51 != 2 && (v51 & 1) != 0 && __OFADD__(v72.i64[0]++, 1))
      {
        __break(1u);
LABEL_22:

        v53 = v74;
        v54 = v75;
        if (v36)
        {
          v55 = v73;
          (v79)(v73, v80, v74);
          sub_245FC5660(&v90, &v83);
          v56 = sub_2460918D4();
          v57 = sub_246091FC4();
          if (os_log_type_enabled(v56, v57))
          {
            v58 = swift_slowAlloc();
            v59 = swift_slowAlloc();
            v83.i64[0] = v59;
            *v58 = 136381187;
            *(v58 + 4) = sub_245F8D3C0(0xD000000000000020, 0x800000024609F310, &v83);
            *(v58 + 12) = 2050;
            *(v58 + 14) = v72.i64[0];
            *(v58 + 22) = 2050;
            *(v58 + 24) = *(v42 + 16);
            sub_245FC5698(&v90);
            _os_log_impl(&dword_245F8A000, v56, v57, "MeshManager.%{private}s: %{public}ld/%{public}ld updated mesh anchors intersect with bounding box.", v58, 0x20u);
            sub_245F8E6F4(v59);
            MEMORY[0x24C1989D0](v59, -1, -1);
            MEMORY[0x24C1989D0](v58, -1, -1);
          }

          else
          {
            sub_245FC5698(&v90);
          }

          v54(v55, v53);
        }

        v60 = v76;
        (v79)(v76, v80, v53);
        v61 = sub_2460918D4();
        v62 = sub_246091FC4();
        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          v83.i64[0] = v64;
          *v63 = 136380675;
          *(v63 + 4) = sub_245F8D3C0(0xD000000000000020, 0x800000024609F310, &v83);
          _os_log_impl(&dword_245F8A000, v61, v62, "MeshManager.%{private}s: Finished refining updated mesh anchors.", v63, 0xCu);
          sub_245F8E6F4(v64);
          MEMORY[0x24C1989D0](v64, -1, -1);
          MEMORY[0x24C1989D0](v63, -1, -1);
        }

        v54(v60, v53);
        return 1;
      }
    }

    while (1)
    {
      v49 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        break;
      }

      if (v49 >= v47)
      {
        goto LABEL_22;
      }

      v46 = *(v43 + 8 * v49);
      ++v48;
      if (v46)
      {
        v48 = v49;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_245FBC8B0(char *a1, uint64_t a2, simd_float4x4 *a3)
{
  v4 = v3;
  v101 = sub_246091834();
  v98 = *(v101 - 8);
  v8 = *(v98 + 64);
  v9 = MEMORY[0x28223BE20](v101);
  v97 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v96 = &v91 - v11;
  v12 = sub_2460918F4();
  v103 = *(v12 - 8);
  v104 = v12;
  v13 = *(v103 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v102 = &v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v100 = &v91 - v16;
  v17 = sub_245F8E624(&qword_27EE3A308, "lM");
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v95 = &v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v91 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v91 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v91 - v27;
  v29 = type metadata accessor for ObjectCaptureSession.Mesh.Anchor(0);
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  v32 = MEMORY[0x28223BE20](v29);
  v99 = &v91 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v94 = &v91 - v35;
  MEMORY[0x28223BE20](v34);
  v37 = &v91 - v36;
  if (a2 && (a3[1].columns[0].i8[0] & 1) == 0)
  {
    v107 = __invert_f4(*a3);
    v42 = &a1[*(v29 + 36)];
    v43 = *v42[2].f32;
    v44 = *v42[4].f32;
    v45 = *v42[6].f32;
    v105 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v107.columns[0], COERCE_FLOAT(*v42->f32)), v107.columns[1], *v42, 1), v107.columns[2], *v42->f32, 2), v107.columns[3], *v42->f32, 3);
    v93 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v107.columns[0], v43.f32[0]), v107.columns[1], *v43.f32, 1), v107.columns[2], v43, 2), v107.columns[3], v43, 3);
    v92 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v107.columns[0], v44.f32[0]), v107.columns[1], *v44.f32, 1), v107.columns[2], v44, 2), v107.columns[3], v44, 3);
    v91 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v107.columns[0], v45.f32[0]), v107.columns[1], *v45.f32, 1), v107.columns[2], v45, 2), v107.columns[3], v45, 3);

    sub_245FA00F4(a1, v105, v93, v92, v91);
    v47 = v46;

    sub_245FA2954(a1, v37);
    if (v47 <= 0.0)
    {
      sub_245FC5600(v37, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
      return 2;
    }
  }

  else
  {
    sub_245FA2954(a1, &v91 - v36);
  }

  v105.i64[0] = v37;
  type metadata accessor for Util.Timer(0);
  v38 = sub_246025FB8();
  (*(*v38 + 144))();
  v39 = (v4 + OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_backgroundData);
  swift_beginAccess();
  if (v39[32] == 1 && *&a1[*(v29 + 32)])
  {
    sub_245FBD484(a1, v28);
    sub_245FC5600(v105.i64[0], type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
    if ((*(v30 + 48))(v28, 1, v29) == 1)
    {

      v40 = v28;
LABEL_10:
      sub_245F8E744(v40, &qword_27EE3A308, "lM");
      return 0;
    }
  }

  else
  {
    sub_245FBF7FC(a1, v26);
    sub_245FC5600(v105.i64[0], type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
    if ((*(v30 + 48))(v26, 1, v29) == 1)
    {

      v40 = v26;
      goto LABEL_10;
    }

    v28 = v26;
  }

  sub_245FC559C(v28, v105.i64[0]);
  v48 = *v39;
  v49 = v104;
  if (*(*v39 + 16))
  {
    v50 = sub_245FC1BDC(a1);
    if (v51)
    {
      sub_245FA2954(*(v48 + 56) + *(v30 + 72) * v50, v23);
      v52 = *(v30 + 56);
      v92.i64[0] = (v30 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
      v93.i64[0] = v52;
      v52(v23, 0, 1, v29);
      sub_245F8E744(v23, &qword_27EE3A308, "lM");
LABEL_20:
      v69 = v101;
      goto LABEL_21;
    }
  }

  v53 = *(v30 + 56);
  v92.i64[0] = (v30 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v93.i64[0] = v53;
  v53(v23, 1, 1, v29);
  sub_245F8E744(v23, &qword_27EE3A308, "lM");
  v54 = sub_245FA32CC();
  v55 = v103;
  v56 = v100;
  (*(v103 + 16))(v100, v54, v49);
  v57 = v94;
  sub_245FA2954(a1, v94);
  v58 = sub_2460918D4();
  v59 = sub_246091FC4();
  if (!os_log_type_enabled(v58, v59))
  {

    sub_245FC5600(v57, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
    (*(v55 + 8))(v56, v49);
    goto LABEL_20;
  }

  v60 = v57;
  v61 = swift_slowAlloc();
  v91.i64[0] = swift_slowAlloc();
  v106[0] = v91.i64[0];
  *v61 = 136380931;
  *(v61 + 4) = sub_245F8D3C0(0xD000000000000023, 0x800000024609F2E0, v106);
  *(v61 + 12) = 2082;
  sub_245FC59D0(&unk_27EE3A310, MEMORY[0x277CC95F0]);
  v62 = v60;
  v63 = sub_2460923D4();
  v65 = v64;
  sub_245FC5600(v62, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
  v66 = sub_245F8D3C0(v63, v65, v106);

  *(v61 + 14) = v66;
  _os_log_impl(&dword_245F8A000, v58, v59, "MeshManager.%{private}s: Adding mesh anchor %{public}s after refinement", v61, 0x16u);
  v67 = v91.i64[0];
  swift_arrayDestroy();
  MEMORY[0x24C1989D0](v67, -1, -1);
  v68 = v61;
  v69 = v101;
  MEMORY[0x24C1989D0](v68, -1, -1);

  (*(v103 + 8))(v100, v104);
LABEL_21:
  v70 = v98;
  v71 = *(v98 + 16);
  v72 = v96;
  v71(v96, a1, v69);
  v73 = v95;
  sub_245FA2954(v105.i64[0], v95);
  (v93.i64[0])(v73, 0, 1, v29);
  swift_beginAccess();
  sub_245FB40C8(v73, v72);
  v74 = v97;
  v71(v97, a1, v69);
  sub_245FC3364(v72, v74);
  (*(v70 + 8))(v72, v69);
  v75 = swift_endAccess();
  (*(*v38 + 152))(v75);
  v76 = sub_245FA32CC();
  v77 = v102;
  v78 = v103;
  v79 = v104;
  (*(v103 + 16))(v102, v76, v104);
  v80 = v99;
  sub_245FA2954(a1, v99);

  v81 = sub_2460918D4();
  v82 = sub_246091FA4();

  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v106[0] = v84;
    *v83 = 136381187;
    *(v83 + 4) = sub_245F8D3C0(0xD000000000000023, 0x800000024609F2E0, v106);
    *(v83 + 12) = 2082;
    sub_245FC59D0(&unk_27EE3A310, MEMORY[0x277CC95F0]);
    v85 = sub_2460923D4();
    v86 = v80;
    v88 = v87;
    sub_245FC5600(v86, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
    v89 = sub_245F8D3C0(v85, v88, v106);

    *(v83 + 14) = v89;
    *(v83 + 22) = 2048;
    *(v83 + 24) = (*(*v38 + 176))(v90);
    _os_log_impl(&dword_245F8A000, v81, v82, "MeshManager.%{private}s: Refine mesh anchor %{public}s took %f ms", v83, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1989D0](v84, -1, -1);
    MEMORY[0x24C1989D0](v83, -1, -1);

    (*(v78 + 8))(v102, v79);
  }

  else
  {

    sub_245FC5600(v80, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
    (*(v78 + 8))(v77, v79);
  }

  sub_245FC5600(v105.i64[0], type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
  return 1;
}

void sub_245FBD484(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v281 = a1;
  v275 = a2;
  v289[3] = *MEMORY[0x277D85DE8];
  v3 = sub_245F8E624(&qword_27EE3A308, "lM");
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v260 = &v253 - v5;
  v283 = type metadata accessor for ObjectCaptureSession.Mesh.Anchor(0);
  v280 = *(v283 - 1);
  v6 = *(v280 + 64);
  v7 = MEMORY[0x28223BE20](v283);
  v274 = &v253 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v273 = &v253 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v271 = &v253 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v270 = &v253 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v267.n128_u64[0] = &v253 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v265.n128_u64[0] = &v253 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v259 = &v253 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v257 = &v253 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v256 = &v253 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v255 = &v253 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v262 = &v253 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v284 = &v253 - v30;
  MEMORY[0x28223BE20](v29);
  v32 = &v253 - v31;
  v33 = sub_2460918F4();
  v285 = *(v33 - 8);
  v34 = v285[8];
  v35 = MEMORY[0x28223BE20](v33);
  v276 = &v253 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v282 = &v253 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v272 = &v253 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v269 = &v253 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v266.n128_u64[0] = &v253 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v264.n128_u64[0] = &v253 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v261 = &v253 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v258 = &v253 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v254 = &v253 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v55 = &v253 - v54;
  MEMORY[0x28223BE20](v53);
  v57 = &v253 - v56;
  v58 = sub_246091AF4();
  v59 = *(v58 - 8);
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v58);
  v62 = (&v253 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0));
  v268.n128_u64[0] = v2;
  v63 = *(v2 + 40);
  *v62 = v63;
  (*(v59 + 104))(v62, *MEMORY[0x277D85200], v58);
  v64 = v63;
  v65 = sub_246091B24();
  (*(v59 + 8))(v62, v58);
  if ((v65 & 1) == 0)
  {
    __break(1u);
    goto LABEL_59;
  }

  v253 = v55;
  v66 = sub_245FA32CC();
  v67 = v285[2];
  v277 = v66;
  v278 = v67;
  v279 = v285 + 2;
  (v67)(v57);
  v68 = v281;
  sub_245FA2954(v281, v32);
  sub_245FA2954(v68, v284);
  v69 = sub_2460918D4();
  v70 = sub_246091FA4();
  v71 = v33;
  if (os_log_type_enabled(v69, v70))
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v263.n128_u64[0] = v71;
    v74 = v73;
    v289[0] = v73;
    *v72 = 136381187;
    *(v72 + 4) = sub_245F8D3C0(0xD000000000000014, 0x800000024609F2C0, v289);
    *(v72 + 12) = 2082;
    sub_246091834();
    sub_245FC59D0(&unk_27EE3A310, MEMORY[0x277CC95F0]);
    v75 = sub_2460923D4();
    v77 = v76;
    sub_245FC5600(v32, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
    v78 = sub_245F8D3C0(v75, v77, v289);

    *(v72 + 14) = v78;
    *(v72 + 22) = 2050;
    v79 = v284;
    v80 = [*&v284[v283[5]] count];
    sub_245FC5600(v79, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
    *(v72 + 24) = v80;
    _os_log_impl(&dword_245F8A000, v69, v70, "MeshManager.%{private}s: Mesh anchor %{public}s num vertices before densification = %{public}ld", v72, 0x20u);
    swift_arrayDestroy();
    v81 = v74;
    v71 = v263.n128_u64[0];
    MEMORY[0x24C1989D0](v81, -1, -1);
    MEMORY[0x24C1989D0](v72, -1, -1);
  }

  else
  {
    sub_245FC5600(v284, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);

    sub_245FC5600(v32, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
  }

  v284 = v285[1];
  (v284)(v57, v71);
  v82 = v276;
  v83 = sub_245F9EB34(v68);
  v84 = v282;
  if (v83)
  {
    v85 = v83;
    v86 = [objc_allocWithZone(MEMORY[0x277D0AE70]) init];
    LODWORD(v87) = 0.5;
    [v86 setRatio_];
    [v86 setIterations_];
    v88 = v85;
    if (!GESSAlgSplitLongEdges())
    {

      v278(v84, v277, v71);
      v152 = v68;
      v153 = v273;
      sub_245FA2954(v152, v273);
      v154 = sub_2460918D4();
      v155 = sub_246091FB4();
      if (os_log_type_enabled(v154, v155))
      {
        v156 = swift_slowAlloc();
        v157 = swift_slowAlloc();
        v289[0] = v157;
        *v156 = 136380931;
        *(v156 + 4) = sub_245F8D3C0(0xD000000000000014, 0x800000024609F2C0, v289);
        *(v156 + 12) = 2082;
        sub_246091834();
        sub_245FC59D0(&unk_27EE3A310, MEMORY[0x277CC95F0]);
        v158 = sub_2460923D4();
        v160 = v159;
        sub_245FC5600(v153, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
        v161 = sub_245F8D3C0(v158, v160, v289);

        *(v156 + 14) = v161;
        _os_log_impl(&dword_245F8A000, v154, v155, "MeshManager.%{private}s: Failed to densify mesh anchor %{public}s - failed to subdivide mesh!", v156, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C1989D0](v157, -1, -1);
        MEMORY[0x24C1989D0](v156, -1, -1);

        v162 = v282;
      }

      else
      {

        sub_245FC5600(v153, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
        v162 = v84;
      }

      goto LABEL_38;
    }

    v89 = [v88 vertexSize];
    v90 = 3 * v89;
    if ((v90 & 0xFFFFFFFF00000000) == 0)
    {
      v91 = v90;
      v92 = 12 * v89;
      v93 = swift_slowAlloc();
      if ([v88 getPositions:v93 size:v91])
      {
        v276 = v86;
        v282 = [objc_allocWithZone(MEMORY[0x277CBEB28]) initWithBytesNoCopy:v93 length:v92 freeWhenDone:1];
        v94 = swift_slowAlloc();
        if ([v88 getVertexColors:v94 size:v91])
        {
          v274 = [objc_allocWithZone(MEMORY[0x277CBEB28]) initWithBytesNoCopy:v94 length:v92 freeWhenDone:1];
          v95 = [v88 vertexNormalSize];

          v96 = 3 * v95;
          if ((v96 & 0xFFFFFFFF00000000) == 0)
          {
            v97 = v96;
            v98 = 12 * v95;
            v99 = swift_slowAlloc();
            v273 = v88;
            if ([v88 getVertexNormals:v99 size:v97])
            {
              v100 = [objc_allocWithZone(MEMORY[0x277CBEB28]) initWithBytesNoCopy:v99 length:v98 freeWhenDone:1];
              v101 = [objc_allocWithZone(MEMORY[0x277CBEB28]) init];
              v102 = [objc_allocWithZone(MEMORY[0x277CBEB28]) init];
              v103 = [objc_allocWithZone(MEMORY[0x277CBEB28]) init];
              v104 = [objc_allocWithZone(MEMORY[0x277D0AE78]) init];
              v105 = v268.n128_u64[0];
              v106 = v268.n128_u64[0] + OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_backgroundData;
              swift_beginAccess();
              LODWORD(v107) = *(v106 + 56);
              [v104 setVoxelSize_];
              v287 = v102;
              v288 = v101;
              v286 = v103;
              v269 = v100;
              v270 = v104;
              LODWORD(v104) = GESSAlgVertexClusterDownsample();
              v108 = v286;

              v272 = v287;
              v109 = v288;

              v271 = v109;
              if (!v104)
              {
                v197 = v264.n128_u64[0];
                v278(v264.n128_u64[0], v277, v71);
                v198 = v265.n128_u64[0];
                sub_245FA2954(v281, v265.n128_i64[0]);
                v199 = sub_2460918D4();
                v200 = sub_246091FB4();
                if (os_log_type_enabled(v199, v200))
                {
                  v201 = swift_slowAlloc();
                  v202 = v197;
                  v203 = swift_slowAlloc();
                  v288 = v203;
                  *v201 = 136380931;
                  *(v201 + 4) = sub_245F8D3C0(0xD000000000000014, 0x800000024609F2C0, &v288);
                  *(v201 + 12) = 2082;
                  sub_246091834();
                  v281 = v108;
                  sub_245FC59D0(&unk_27EE3A310, MEMORY[0x277CC95F0]);
                  v204 = sub_2460923D4();
                  v206 = v205;
                  sub_245FC5600(v198, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
                  v207 = sub_245F8D3C0(v204, v206, &v288);
                  v108 = v281;

                  *(v201 + 14) = v207;
                  _os_log_impl(&dword_245F8A000, v199, v200, "MeshManager.%{private}s: Failed to densify mesh anchor\n%{public}s - failed to vertex cluster mesh!", v201, 0x16u);
                  swift_arrayDestroy();
                  MEMORY[0x24C1989D0](v203, -1, -1);
                  MEMORY[0x24C1989D0](v201, -1, -1);

                  v208 = v202;
                }

                else
                {

                  sub_245FC5600(v198, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
                  v208 = v197;
                }

                (v284)(v208, v71);
                (*(v280 + 56))(v275, 1, 1, v283);
                goto LABEL_56;
              }

              v110 = [v109 length];
              v111 = [v272 length];
              v112 = __OFADD__(v110, v111);
              v113 = &v111[v110];
              if (!v112)
              {
                v114 = [v108 length];
                v112 = __OFADD__(v113, v114);
                v115 = &v114[v113];
                if (!v112)
                {
                  v116 = *(**(v105 + 104) + 280);

                  v117 = v116(v115);

                  if ((v117 & 1) == 0)
                  {
                    v210 = v258;
                    v278(v258, v277, v71);
                    v211 = v259;
                    sub_245FA2954(v281, v259);
                    v212 = sub_2460918D4();
                    v213 = sub_246091FB4();
                    if (os_log_type_enabled(v212, v213))
                    {
                      v214 = v210;
                      v215 = swift_slowAlloc();
                      v216 = swift_slowAlloc();
                      v281 = v108;
                      v217 = v216;
                      v288 = v216;
                      *v215 = 136380931;
                      *(v215 + 4) = sub_245F8D3C0(0xD000000000000014, 0x800000024609F2C0, &v288);
                      *(v215 + 12) = 2082;
                      sub_246091834();
                      v263.n128_u64[0] = v71;
                      sub_245FC59D0(&unk_27EE3A310, MEMORY[0x277CC95F0]);
                      v218 = sub_2460923D4();
                      v220 = v219;
                      sub_245FC5600(v211, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
                      v221 = sub_245F8D3C0(v218, v220, &v288);
                      v71 = v263.n128_u64[0];

                      *(v215 + 14) = v221;
                      _os_log_impl(&dword_245F8A000, v212, v213, "MeshManager.%{private}s: Failed to copy densify mesh anchor %{public}s. Heap full!", v215, 0x16u);
                      swift_arrayDestroy();
                      v222 = v217;
                      v108 = v281;
                      MEMORY[0x24C1989D0](v222, -1, -1);
                      MEMORY[0x24C1989D0](v215, -1, -1);

                      v223 = v214;
                    }

                    else
                    {

                      sub_245FC5600(v211, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
                      v223 = v210;
                    }

                    (v284)(v223, v71);
                    v241 = v276;
                    v240 = v277;
                    v242 = v261;
                    *(v106 + 72) = 1;
                    v278(v242, v240, v71);
                    v243 = sub_2460918D4();
                    v244 = sub_246091F94();
                    if (os_log_type_enabled(v243, v244))
                    {
                      v245 = swift_slowAlloc();
                      v246 = swift_slowAlloc();
                      v288 = v246;
                      *v245 = 136380675;
                      *(v245 + 4) = sub_245F8D3C0(0xD000000000000014, 0x800000024609F2C0, &v288);
                      _os_log_impl(&dword_245F8A000, v243, v244, "MeshManager.%{private}s: Trigerring all mesh anchor refinement in the next update.", v245, 0xCu);
                      sub_245F8E6F4(v246);
                      MEMORY[0x24C1989D0](v246, -1, -1);
                      MEMORY[0x24C1989D0](v245, -1, -1);

                      v247 = &v290;
                    }

                    else
                    {

                      v247 = &v291;
                    }

                    (v284)(v242, v71);
                    v248 = v271;
                    (*(v280 + 56))(v275, 1, 1, v283);

                    goto LABEL_57;
                  }

                  v118 = *(v105 + 104);
                  v119 = v283;
                  v120 = v283[10];
                  v121 = v281;
                  v122 = &v281[v283[9]];
                  v123 = v122[1];
                  v268 = *v122;
                  v267 = v123;
                  v124 = v122[3];
                  v266 = v122[2];
                  v265 = v124;
                  v125 = *&v281[v120];
                  v126 = v283[12];
                  v264 = *&v281[v283[11]];
                  v263 = *&v281[v126];

                  v127 = v260;
                  sub_245F9E1C4(v271, v272, v108, v118, v121, v260, v268, v267, v266, v265, v125, v264, v263);

                  if ((*(v280 + 48))(v127, 1, v119) == 1)
                  {
                    sub_245F8E744(v127, &qword_27EE3A308, "lM");
                    v128 = v254;
                    v278(v254, v277, v71);
                    v129 = v257;
                    sub_245FA2954(v121, v257);
                    v130 = sub_2460918D4();
                    v131 = sub_246091FB4();
                    if (os_log_type_enabled(v130, v131))
                    {
                      v132 = swift_slowAlloc();
                      v133 = swift_slowAlloc();
                      v288 = v133;
                      *v132 = 136380931;
                      *(v132 + 4) = sub_245F8D3C0(0xD000000000000014, 0x800000024609F2C0, &v288);
                      *(v132 + 12) = 2082;
                      sub_246091834();
                      v281 = v108;
                      sub_245FC59D0(&unk_27EE3A310, MEMORY[0x277CC95F0]);
                      v134 = sub_2460923D4();
                      v136 = v135;
                      sub_245FC5600(v129, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
                      v137 = sub_245F8D3C0(v134, v136, &v288);
                      v108 = v281;

                      *(v132 + 14) = v137;
                      _os_log_impl(&dword_245F8A000, v130, v131, "MeshManager.%{private}s: Failed to densify mesh anchor\n%{public}s", v132, 0x16u);
                      swift_arrayDestroy();
                      MEMORY[0x24C1989D0](v133, -1, -1);
                      v138 = v132;
                      v119 = v283;
                      MEMORY[0x24C1989D0](v138, -1, -1);
                    }

                    else
                    {

                      sub_245FC5600(v129, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
                    }

                    (v284)(v128, v71);
                    v249 = *(v280 + 56);
                    v250 = v275;
                    v251 = 1;
                  }

                  else
                  {
                    v224 = v262;
                    sub_245FC559C(v127, v262);
                    v225 = v253;
                    v278(v253, v277, v71);
                    v226 = v255;
                    sub_245FA2954(v121, v255);
                    v227 = v256;
                    sub_245FA2954(v224, v256);
                    v228 = sub_2460918D4();
                    v229 = sub_246091FA4();
                    if (os_log_type_enabled(v228, v229))
                    {
                      v230 = swift_slowAlloc();
                      v231 = swift_slowAlloc();
                      v288 = v231;
                      *v230 = 136381187;
                      *(v230 + 4) = sub_245F8D3C0(0xD000000000000014, 0x800000024609F2C0, &v288);
                      *(v230 + 12) = 2082;
                      sub_246091834();
                      v281 = v108;
                      sub_245FC59D0(&unk_27EE3A310, MEMORY[0x277CC95F0]);
                      v232 = sub_2460923D4();
                      v234 = v233;
                      v263.n128_u64[0] = v71;
                      sub_245FC5600(v226, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
                      v235 = sub_245F8D3C0(v232, v234, &v288);
                      v108 = v281;

                      *(v230 + 14) = v235;
                      *(v230 + 22) = 2050;
                      v236 = [*(v227 + v283[5]) count];
                      sub_245FC5600(v227, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
                      *(v230 + 24) = v236;
                      _os_log_impl(&dword_245F8A000, v228, v229, "MeshManager.%{private}s: Mesh anchor %{public}s num vertices after densification = %{public}ld", v230, 0x20u);
                      swift_arrayDestroy();
                      MEMORY[0x24C1989D0](v231, -1, -1);
                      v237 = v230;
                      v119 = v283;
                      MEMORY[0x24C1989D0](v237, -1, -1);

                      v238 = v225;
                      v239 = v263.n128_u64[0];
                    }

                    else
                    {
                      sub_245FC5600(v227, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);

                      sub_245FC5600(v226, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
                      v238 = v225;
                      v239 = v71;
                    }

                    (v284)(v238, v239);
                    v252 = v275;
                    sub_245FC559C(v262, v275);
                    v249 = *(v280 + 56);
                    v250 = v252;
                    v251 = 0;
                  }

                  v249(v250, v251, 1, v119);
LABEL_56:

LABEL_57:
                  goto LABEL_39;
                }

LABEL_62:
                __break(1u);
              }

LABEL_61:
              __break(1u);
              goto LABEL_62;
            }

            v163 = v266.n128_u64[0];
            v278(v266.n128_u64[0], v277, v71);
            v185 = v267.n128_u64[0];
            sub_245FA2954(v281, v267.n128_i64[0]);
            v186 = sub_2460918D4();
            v187 = sub_246091FB4();
            v188 = os_log_type_enabled(v186, v187);
            v189 = v282;
            if (v188)
            {
              v190 = v163;
              v191 = swift_slowAlloc();
              v192 = swift_slowAlloc();
              v289[0] = v192;
              *v191 = 136380931;
              *(v191 + 4) = sub_245F8D3C0(0xD000000000000014, 0x800000024609F2C0, v289);
              *(v191 + 12) = 2082;
              sub_246091834();
              sub_245FC59D0(&unk_27EE3A310, MEMORY[0x277CC95F0]);
              v193 = sub_2460923D4();
              v195 = v194;
              sub_245FC5600(v185, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
              v196 = sub_245F8D3C0(v193, v195, v289);

              *(v191 + 14) = v196;
              _os_log_impl(&dword_245F8A000, v186, v187, "MeshManager.%{private}s: Failed to densify mesh anchor %{public}s - failed to get normals from tri mesh!", v191, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x24C1989D0](v192, -1, -1);
              MEMORY[0x24C1989D0](v191, -1, -1);

              v162 = v190;
              goto LABEL_38;
            }

            v184 = v185;
LABEL_37:
            sub_245FC5600(v184, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
            v162 = v163;
            goto LABEL_38;
          }

LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        v163 = v269;
        v278(v269, v277, v71);
        v174 = v270;
        sub_245FA2954(v281, v270);
        v175 = sub_2460918D4();
        v176 = sub_246091FB4();
        if (!os_log_type_enabled(v175, v176))
        {

          v184 = v174;
          goto LABEL_37;
        }

        v177 = v163;
        v178 = swift_slowAlloc();
        v179 = swift_slowAlloc();
        v289[0] = v179;
        *v178 = 136380931;
        *(v178 + 4) = sub_245F8D3C0(0xD000000000000014, 0x800000024609F2C0, v289);
        *(v178 + 12) = 2082;
        sub_246091834();
        sub_245FC59D0(&unk_27EE3A310, MEMORY[0x277CC95F0]);
        v180 = sub_2460923D4();
        v182 = v181;
        sub_245FC5600(v174, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
        v183 = sub_245F8D3C0(v180, v182, v289);

        *(v178 + 14) = v183;
        _os_log_impl(&dword_245F8A000, v175, v176, "MeshManager.%{private}s: Failed to densify mesh anchor %{public}s - failed to get colors from tri mesh!", v178, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C1989D0](v179, -1, -1);
        MEMORY[0x24C1989D0](v178, -1, -1);

        v162 = v177;
      }

      else
      {

        v163 = v272;
        v278(v272, v277, v71);
        v164 = v68;
        v165 = v271;
        sub_245FA2954(v164, v271);
        v166 = sub_2460918D4();
        v167 = sub_246091FB4();
        if (!os_log_type_enabled(v166, v167))
        {

          v184 = v165;
          goto LABEL_37;
        }

        v168 = swift_slowAlloc();
        v169 = swift_slowAlloc();
        v289[0] = v169;
        *v168 = 136380931;
        *(v168 + 4) = sub_245F8D3C0(0xD000000000000014, 0x800000024609F2C0, v289);
        *(v168 + 12) = 2082;
        sub_246091834();
        sub_245FC59D0(&unk_27EE3A310, MEMORY[0x277CC95F0]);
        v170 = sub_2460923D4();
        v172 = v171;
        sub_245FC5600(v165, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
        v173 = sub_245F8D3C0(v170, v172, v289);

        *(v168 + 14) = v173;
        _os_log_impl(&dword_245F8A000, v166, v167, "MeshManager.%{private}s: Failed to densify mesh anchor %{public}s - failed to get positions from tri mesh!", v168, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C1989D0](v169, -1, -1);
        MEMORY[0x24C1989D0](v168, -1, -1);

        v162 = v272;
      }

LABEL_38:
      (v284)(v162, v71);
      (*(v280 + 56))(v275, 1, 1, v283);
      goto LABEL_39;
    }

LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v278(v82, v277, v71);
  v139 = v68;
  v140 = v274;
  sub_245FA2954(v139, v274);
  v141 = sub_2460918D4();
  v142 = sub_246091FB4();
  if (os_log_type_enabled(v141, v142))
  {
    v143 = swift_slowAlloc();
    v144 = v71;
    v145 = swift_slowAlloc();
    v289[0] = v145;
    *v143 = 136380931;
    *(v143 + 4) = sub_245F8D3C0(0xD000000000000014, 0x800000024609F2C0, v289);
    *(v143 + 12) = 2082;
    sub_246091834();
    sub_245FC59D0(&unk_27EE3A310, MEMORY[0x277CC95F0]);
    v146 = sub_2460923D4();
    v148 = v147;
    sub_245FC5600(v140, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
    v149 = sub_245F8D3C0(v146, v148, v289);

    *(v143 + 14) = v149;
    _os_log_impl(&dword_245F8A000, v141, v142, "MeshManager.%{private}s: Failed to densify mesh anchor %{public}s", v143, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1989D0](v145, -1, -1);
    MEMORY[0x24C1989D0](v143, -1, -1);

    v150 = v82;
    v151 = v144;
  }

  else
  {

    sub_245FC5600(v140, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
    v150 = v82;
    v151 = v71;
  }

  (v284)(v150, v151);
  (*(v280 + 56))(v275, 1, 1, v283);
LABEL_39:
  v209 = *MEMORY[0x277D85DE8];
}

void sub_245FBF7FC(char *a1@<X0>, uint64_t a2@<X8>)
{
  v145 = a2;
  v155[3] = *MEMORY[0x277D85DE8];
  v149.n128_u64[0] = type metadata accessor for ObjectCaptureSession.Mesh.Anchor(0);
  v140 = *(v149.n128_u64[0] - 8);
  v4 = *(v140 + 64);
  v5 = MEMORY[0x28223BE20](v149.n128_u64[0]);
  v137 = &v132 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v133 = &v132 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v150 = &v132 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v132 - v11;
  v13 = sub_2460918F4();
  v14 = *(v13 - 8);
  v15 = v14[8];
  v16 = MEMORY[0x28223BE20](v13);
  v141 = &v132 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v135 = &v132 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v134 = &v132 - v21;
  MEMORY[0x28223BE20](v20);
  v151 = &v132 - v22;
  v23 = sub_246091AF4();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = (&v132 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v146.n128_u64[0] = v2;
  v28 = *(v2 + 40);
  *v27 = v28;
  (*(v24 + 104))(v27, *MEMORY[0x277D85200], v23);
  v29 = v28;
  v30 = sub_246091B24();
  (*(v24 + 8))(v27, v23);
  if ((v30 & 1) == 0)
  {
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v31 = sub_245FA32CC();
  v32 = v14[2];
  v142.n128_u64[0] = v31;
  v144.n128_u64[0] = (v14 + 2);
  v143.n128_u64[0] = v32;
  v32(v151);
  sub_245FA2954(a1, v12);
  v148 = a1;
  sub_245FA2954(a1, v150);
  v33 = sub_2460918D4();
  v34 = sub_246091FA4();
  v35 = os_log_type_enabled(v33, v34);
  v147.n128_u64[0] = v13;
  v139 = v14;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v155[0] = v37;
    *v36 = 136381187;
    *(v36 + 4) = sub_245F8D3C0(0xD000000000000015, 0x800000024609F2A0, v155);
    *(v36 + 12) = 2082;
    sub_246091834();
    sub_245FC59D0(&unk_27EE3A310, MEMORY[0x277CC95F0]);
    v38 = sub_2460923D4();
    v40 = v39;
    sub_245FC5600(v12, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
    v41 = sub_245F8D3C0(v38, v40, v155);

    *(v36 + 14) = v41;
    *(v36 + 22) = 2050;
    v42 = v149.n128_u64[0];
    v43 = v150;
    v44 = [*&v150[*(v149.n128_u64[0] + 20)] count];
    sub_245FC5600(v43, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
    *(v36 + 24) = v44;
    _os_log_impl(&dword_245F8A000, v33, v34, "MeshManager.%{private}s: Mesh anchor %{public}s num vertices before simplification = %{public}ld", v36, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1989D0](v37, -1, -1);
    MEMORY[0x24C1989D0](v36, -1, -1);

    v45 = v14[1];
    v45(v151, v147.n128_u64[0]);
  }

  else
  {
    sub_245FC5600(v150, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);

    sub_245FC5600(v12, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
    v45 = v14[1];
    v45(v151, v13);
    v42 = v149.n128_u64[0];
  }

  v46 = v148;
  v47 = *&v148[v42[5]];
  v48 = [v47 buffer];
  v49 = [v48 contents];
  v50 = v48;
  v51 = [v47 &selRef_encodeDouble_forKey_];
  if ((v51 * 3) >> 64 != (3 * v51) >> 63)
  {
    goto LABEL_30;
  }

  if ((3 * v51 - 0x2000000000000000) >> 62 != 3)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v138 = v45;
  v150 = [objc_allocWithZone(MEMORY[0x277CBEB28]) initWithBytesNoCopy:v49 length:12 * v51 freeWhenDone:0];
  v52 = *&v46[v42[6]];
  v53 = [v52 buffer];
  v54 = [v53 contents];
  v55 = v53;
  v56 = [v52 &selRef_encodeDouble_forKey_];
  if ((v56 * 3) >> 64 != (3 * v56) >> 63)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if ((3 * v56 - 0x2000000000000000) >> 62 != 3)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v151 = [objc_allocWithZone(MEMORY[0x277CBEB28]) initWithBytesNoCopy:v54 length:12 * v56 freeWhenDone:0];
  v57 = *&v46[v42[7]];
  v58 = [v57 buffer];
  v59 = [v58 contents];
  v60 = v58;
  v61 = [v57 &selRef_encodeDouble_forKey_];
  if ((v61 * 3) >> 64 != (3 * v61) >> 63)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if ((3 * v61 - 0x2000000000000000) >> 62 != 3)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
  }

  v62 = [objc_allocWithZone(MEMORY[0x277CBEB28]) initWithBytesNoCopy:v59 length:12 * v61 freeWhenDone:0];
  v63 = [objc_allocWithZone(MEMORY[0x277CBEB28]) init];
  v64 = [objc_allocWithZone(MEMORY[0x277CBEB28]) init];
  v65 = [objc_allocWithZone(MEMORY[0x277CBEB28]) init];
  v66 = [objc_allocWithZone(MEMORY[0x277D0AE78]) init];
  v67 = v146.n128_u64[0];
  v68 = v146.n128_u64[0] + OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_backgroundData;
  swift_beginAccess();
  LODWORD(v69) = *(v68 + 56);
  [v66 setVoxelSize_];
  v153 = v64;
  v154 = v63;
  v152 = v65;
  v70 = v150;
  v71 = GESSAlgVertexClusterDownsample();
  v72 = v152;

  v73 = v153;
  v74 = v154;

  if (!v71)
  {
    v146.n128_u64[0] = v73;
    v135 = v72;
    v92 = v62;
    v93 = v70;
    v94 = v141;
    v95 = v147.n128_u64[0];
    (v143.n128_u64[0])(v141, v142.n128_u64[0], v147.n128_u64[0]);
    v96 = v137;
    sub_245FA2954(v148, v137);
    v97 = sub_2460918D4();
    v98 = sub_246091FB4();
    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      v136 = v74;
      v100 = v99;
      v101 = swift_slowAlloc();
      v154 = v101;
      *v100 = 136380931;
      *(v100 + 4) = sub_245F8D3C0(0xD000000000000015, 0x800000024609F2A0, &v154);
      *(v100 + 12) = 2082;
      sub_246091834();
      v102 = v96;
      sub_245FC59D0(&unk_27EE3A310, MEMORY[0x277CC95F0]);
      v103 = sub_2460923D4();
      v105 = v104;
      sub_245FC5600(v102, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
      v106 = sub_245F8D3C0(v103, v105, &v154);

      *(v100 + 14) = v106;
      _os_log_impl(&dword_245F8A000, v97, v98, "MeshManager.%{private}s: Failed to simplify mesh anchor %{public}s", v100, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1989D0](v101, -1, -1);
      v107 = v100;
      v74 = v136;
      MEMORY[0x24C1989D0](v107, -1, -1);

      v108 = v141;
      v109 = v147.n128_u64[0];
    }

    else
    {

      sub_245FC5600(v96, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
      v108 = v94;
      v109 = v95;
    }

    v138(v108, v109);
    (*(v140 + 56))(v145, 1, 1, v149.n128_u64[0]);
    v72 = v135;
    goto LABEL_27;
  }

  v75 = [v74 length];
  v76 = [v73 length];
  v77 = __OFADD__(v75, v76);
  v78 = &v76[v75];
  if (v77)
  {
    goto LABEL_36;
  }

  v79 = [v72 length];
  v80 = &v79[v78];
  if (__OFADD__(v78, v79))
  {
    goto LABEL_37;
  }

  v136 = v74;
  v141 = v62;
  v81 = *(**(v67 + 104) + 280);

  v82 = v81(v80);

  if ((v82 & 1) == 0)
  {
    v146.n128_u64[0] = v73;
    v110 = v134;
    v111 = v147.n128_u64[0];
    (v143.n128_u64[0])(v134, v142.n128_u64[0], v147.n128_u64[0]);
    v112 = v133;
    sub_245FA2954(v148, v133);
    v113 = sub_2460918D4();
    v114 = sub_246091FB4();
    if (os_log_type_enabled(v113, v114))
    {
      v115 = swift_slowAlloc();
      v148 = swift_slowAlloc();
      v154 = v148;
      *v115 = 136380931;
      *(v115 + 4) = sub_245F8D3C0(0xD000000000000015, 0x800000024609F2A0, &v154);
      *(v115 + 12) = 2082;
      sub_246091834();
      v116 = v112;
      sub_245FC59D0(&unk_27EE3A310, MEMORY[0x277CC95F0]);
      v117 = sub_2460923D4();
      v119 = v118;
      sub_245FC5600(v116, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
      v120 = sub_245F8D3C0(v117, v119, &v154);

      *(v115 + 14) = v120;
      _os_log_impl(&dword_245F8A000, v113, v114, "MeshManager.%{private}s: Failed to copy simplified mesh anchor %{public}s. Heap full!", v115, 0x16u);
      v121 = v148;
      swift_arrayDestroy();
      MEMORY[0x24C1989D0](v121, -1, -1);
      v122 = v115;
      v111 = v147.n128_u64[0];
      MEMORY[0x24C1989D0](v122, -1, -1);
    }

    else
    {

      sub_245FC5600(v112, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
    }

    v123 = v138;
    v138(v110, v111);
    v124 = v135;
    *(v68 + 72) = 1;
    (v143.n128_u64[0])(v124, v142.n128_u64[0], v111);
    v125 = sub_2460918D4();
    v126 = sub_246091F94();
    if (os_log_type_enabled(v125, v126))
    {
      v127 = swift_slowAlloc();
      v128 = v123;
      v129 = v111;
      v130 = swift_slowAlloc();
      v154 = v130;
      *v127 = 136380675;
      *(v127 + 4) = sub_245F8D3C0(0xD000000000000015, 0x800000024609F2A0, &v154);
      _os_log_impl(&dword_245F8A000, v125, v126, "MeshManager.%{private}s: Trigerring all mesh anchor simplification in the next update.", v127, 0xCu);
      sub_245F8E6F4(v130);
      MEMORY[0x24C1989D0](v130, -1, -1);
      MEMORY[0x24C1989D0](v127, -1, -1);

      v128(v124, v129);
    }

    else
    {

      v123(v124, v111);
    }

    (*(v140 + 56))(v145, 1, 1, v149.n128_u64[0]);
    v74 = v136;
LABEL_27:
    v91 = v146.n128_u64[0];
    goto LABEL_28;
  }

  v83 = *(v67 + 104);
  v84 = v148;
  v85 = *(v149.n128_u64[0] + 40);
  v86 = &v148[*(v149.n128_u64[0] + 36)];
  v87 = *v86;
  v146 = v86[1];
  v147 = v87;
  v88 = v86[3];
  v144 = v86[2];
  v143 = v88;
  v89 = *&v148[v85];
  v90 = *(v149.n128_u64[0] + 48);
  v149 = *&v148[*(v149.n128_u64[0] + 44)];
  v142 = *&v148[v90];

  v74 = v136;
  sub_245F9E1C4(v136, v73, v72, v83, v84, v145, v147, v146, v144, v143, v89, v149, v142);

  v91 = v141;
  v72 = v151;
LABEL_28:

  v131 = *MEMORY[0x277D85DE8];
}

uint64_t sub_245FC086C(__int128 *a1)
{
  v125 = sub_246091834();
  v148.i64[0] = *(v125 - 8);
  v2 = *(v148.i64[0] + 64);
  v3 = MEMORY[0x28223BE20](v125);
  v123 = &v113 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v122 = &v113 - v5;
  v6 = sub_245F8E624(&qword_27EE3A308, "lM");
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v124 = &v113 - v8;
  v9 = type metadata accessor for ObjectCaptureSession.Mesh.Anchor(0);
  v10 = *(v9 - 8);
  v144 = v9;
  v145 = v10;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v121 = &v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v116 = &v113 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v113 - v17;
  MEMORY[0x28223BE20](v16);
  v143 = &v113 - v19;
  v20 = sub_2460918F4();
  v21 = *(v20 - 8);
  v22 = v21[8];
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v113 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23);
  v128 = &v113 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v126 = &v113 - v29;
  MEMORY[0x28223BE20](v28);
  v31 = &v113 - v30;
  v32 = sub_246091AF4();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  v36 = (&v113 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = a1[3];
  v160 = a1[2];
  v161 = v37;
  v162 = a1[4];
  v163 = *(a1 + 80);
  v38 = a1[1];
  v158 = *a1;
  v159 = v38;
  v39 = *(v149.i64[0] + 40);
  *v36 = v39;
  (*(v33 + 104))(v36, *MEMORY[0x277D85200], v32);
  v40 = v39;
  LOBYTE(v39) = sub_246091B24();
  result = (*(v33 + 8))(v36, v32);
  if (v39)
  {
    v42 = sub_245FA32CC();
    v43 = v21[2];
    v135 = v42;
    v136 = v21 + 2;
    v134 = v43;
    (v43)(v31);
    v44 = sub_2460918D4();
    v45 = sub_246091FC4();
    v46 = os_log_type_enabled(v44, v45);
    v131 = v25;
    if (v46)
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v154.i64[0] = v48;
      *v47 = 136380675;
      *(v47 + 4) = sub_245F8D3C0(0xD000000000000026, 0x800000024609F270, &v154);
      _os_log_impl(&dword_245F8A000, v44, v45, "MeshManager.%{private}s: Processing updated mesh anchors without refinement...", v47, 0xCu);
      sub_245F8E6F4(v48);
      MEMORY[0x24C1989D0](v48, -1, -1);
      MEMORY[0x24C1989D0](v47, -1, -1);
    }

    v132 = v21[1];
    v132(v31, v20);
    v49 = v149.i64[0];
    v50 = v149.i64[0] + OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_backgroundData;
    result = swift_beginAccess();
    v127 = v50;
    v51 = *(v50 + 8);
    v120 = v50 + 8;
    if (*(v51 + 16))
    {
      goto LABEL_43;
    }

    v52 = v163;
    v137 = v20;
    if (v163)
    {
      v53 = 0;
      v140 = 0u;
      v141 = 0u;
      v138 = 0u;
      v139 = 0u;
    }

    else
    {
      v150 = v159;
      v149 = v159;
      v151 = v160;
      v147 = v160;
      v146 = v161;
      v152 = v161;
      v153 = v162;
      v142 = v162;
      OCBoundingBox.scale(_:)(&v154, *(v49 + OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_kScaleFactorForBoundingBoxMeshIntersection));
      v140 = v155;
      v141 = v154;
      v138 = v157;
      v139 = v156;
      type metadata accessor for MeshUtils.AABB();
      v154 = v141;
      v155 = v140;
      v156 = v139;
      v157 = v138;
      v53 = sub_245FA0068(&v154);
      *v54.i64 = sub_2460214C8(v149);
      v140 = v55;
      v141 = v54;
      v138 = v57;
      v139 = v56;
    }

    v58 = v158;
    v59 = v158 + 64;
    v60 = 1 << *(v158 + 32);
    v61 = -1;
    if (v60 < 64)
    {
      v61 = ~(-1 << v60);
    }

    v62 = v61 & *(v158 + 64);
    v63 = (v60 + 63) >> 6;
    if (v53)
    {
      v64 = v52;
    }

    else
    {
      v64 = 1;
    }

    LODWORD(v142) = v64;
    v133 = v21 + 1;
    v130 = "kMeshOverlapRemovalThreshold";
    v118 = (v148.i64[0] + 16);
    v119 = (v145 + 56);
    v117 = (v148.i64[0] + 8);

    v129 = 0;
    v65 = 0;
    *&v66 = 136380931;
    v115 = v66;
    while (1)
    {
      v67 = v65;
      if (!v62)
      {
        break;
      }

LABEL_19:
      v69 = __clz(__rbit64(v62));
      v62 &= v62 - 1;
      v70 = *(v145 + 72);
      v71 = v143;
      sub_245FA2954(*(v58 + 56) + v70 * (v69 | (v65 << 6)), v143);
      sub_245FC559C(v71, v18);
      if (v142)
      {
        goto LABEL_22;
      }

      v164.columns[1] = v140;
      v164.columns[0] = v141;
      v164.columns[3] = v138;
      v164.columns[2] = v139;
      v165 = __invert_f4(v164);
      v72 = &v18[*(v144 + 36)];
      v73 = *v72[4].f32;
      v74 = *v72[6].f32;
      v75 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v165.columns[0], COERCE_FLOAT(*v72->f32)), v165.columns[1], *v72, 1), v165.columns[2], *v72->f32, 2), v165.columns[3], *v72->f32, 3);
      v148 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v165.columns[0], COERCE_FLOAT(*v72[2].f32)), v165.columns[1], v72[2], 1), v165.columns[2], *v72[2].f32, 2), v165.columns[3], *v72[2].f32, 3);
      v149 = v75;
      v146 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v165.columns[0], v74.f32[0]), v165.columns[1], *v74.f32, 1), v165.columns[2], v74, 2), v165.columns[3], v74, 3);
      v147 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v165.columns[0], v73.f32[0]), v165.columns[1], *v73.f32, 1), v165.columns[2], v73, 2), v165.columns[3], v73, 3);

      sub_245FA00F4(v18, v149, v148, v147, v146);
      v77 = v76;

      if (v77 > 0.0)
      {
LABEL_22:
        v78 = *v127;
        v79 = *(*v127 + 16);
        v114 = v58;
        if (v79 && (v80 = sub_245FC1BDC(v18), (v81 & 1) != 0))
        {
          v82 = *(v78 + 56) + v80 * v70;
          v83 = v124;
          sub_245FA2954(v82, v124);
          (*v119)(v83, 0, 1, v144);
          sub_245F8E744(v83, &qword_27EE3A308, "lM");
        }

        else
        {
          v84 = v124;
          (*v119)(v124, 1, 1, v144);
          sub_245F8E744(v84, &qword_27EE3A308, "lM");
          v134(v126, v135, v137);
          v85 = v116;
          sub_245FA2954(v18, v116);
          v86 = sub_2460918D4();
          v87 = sub_246091FC4();
          if (os_log_type_enabled(v86, v87))
          {
            v88 = swift_slowAlloc();
            v148.i32[0] = v87;
            v89 = v88;
            v149.i64[0] = swift_slowAlloc();
            v154.i64[0] = v149.i64[0];
            *v89 = v115;
            *(v89 + 4) = sub_245F8D3C0(0xD000000000000026, v130 | 0x8000000000000000, &v154);
            *(v89 + 12) = 2082;
            sub_245FC59D0(&unk_27EE3A310, MEMORY[0x277CC95F0]);
            v147.i64[0] = v86;
            v146.i64[0] = sub_2460923D4();
            v91 = v90;
            sub_245FC5600(v85, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
            v92 = sub_245F8D3C0(v146.i64[0], v91, &v154);

            *(v89 + 14) = v92;
            v93 = v147.i64[0];
            _os_log_impl(&dword_245F8A000, v147.i64[0], v148.i8[0], "MeshManager.%{private}s: Adding mesh anchor %{public}s without refinement", v89, 0x16u);
            v94 = v149.i64[0];
            swift_arrayDestroy();
            MEMORY[0x24C1989D0](v94, -1, -1);
            MEMORY[0x24C1989D0](v89, -1, -1);
          }

          else
          {

            sub_245FC5600(v85, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
          }

          v132(v126, v137);
        }

        v95 = v121;
        sub_245FA2954(v18, v121);
        v96 = v127;
        swift_beginAccess();
        v97 = *v96;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v150.i64[0] = *v96;
        *v96 = 0x8000000000000000;
        sub_245FC2B28(v95, v18, isUniquelyReferenced_nonNull_native);
        *v96 = v150.i64[0];
        v99 = v123;
        v100 = v125;
        (*v118)(v123, v18, v125);
        v68 = v122;
        sub_245FC3364(v122, v99);
        (*v117)(v68, v100);
        swift_endAccess();
        result = sub_245FC5600(v18, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
        v101 = __OFADD__(v129++, 1);
        v58 = v114;
        if (v101)
        {
          __break(1u);
LABEL_32:

          v102 = v132;
          if (v53)
          {
            v103 = v128;
            v134(v128, v135, v68);
            sub_245FC5660(&v158, &v154);
            v104 = sub_2460918D4();
            v105 = sub_246091FC4();
            if (os_log_type_enabled(v104, v105))
            {
              v106 = swift_slowAlloc();
              v107 = swift_slowAlloc();
              v154.i64[0] = v107;
              *v106 = 136381187;
              *(v106 + 4) = sub_245F8D3C0(0xD000000000000026, v130 | 0x8000000000000000, &v154);
              *(v106 + 12) = 2050;
              *(v106 + 14) = v129;
              *(v106 + 22) = 2050;
              *(v106 + 24) = *(v58 + 16);
              sub_245FC5698(&v158);
              _os_log_impl(&dword_245F8A000, v104, v105, "MeshManager.%{private}s: %{public}ld/%{public}ld mesh anchors intersect with bounding box.", v106, 0x20u);
              sub_245F8E6F4(v107);
              MEMORY[0x24C1989D0](v107, -1, -1);
              MEMORY[0x24C1989D0](v106, -1, -1);
            }

            else
            {
              sub_245FC5698(&v158);
            }

            v102(v103, v68);
          }

          v108 = v131;
          v134(v131, v135, v68);
          v109 = sub_2460918D4();
          v110 = sub_246091FC4();
          if (os_log_type_enabled(v109, v110))
          {
            v111 = swift_slowAlloc();
            v112 = swift_slowAlloc();
            v154.i64[0] = v112;
            *v111 = 136380675;
            *(v111 + 4) = sub_245F8D3C0(0xD000000000000026, v130 | 0x8000000000000000, &v154);
            _os_log_impl(&dword_245F8A000, v109, v110, "MeshManager.%{private}s: Finished processing all updated mesh anchors.", v111, 0xCu);
            sub_245F8E6F4(v112);
            MEMORY[0x24C1989D0](v112, -1, -1);
            MEMORY[0x24C1989D0](v111, -1, -1);
          }

          else
          {
          }

          return (v102)(v108, v68);
        }
      }

      else
      {
        result = sub_245FC5600(v18, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
      }
    }

    v68 = v137;
    while (1)
    {
      v65 = v67 + 1;
      if (__OFADD__(v67, 1))
      {
        break;
      }

      if (v65 >= v63)
      {
        goto LABEL_32;
      }

      v62 = *(v59 + 8 * v65);
      ++v67;
      if (v62)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_245FC1628()
{
  v1 = v0;
  v2 = sub_246091AA4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - v8;
  v10 = sub_246091AF4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = (&v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v1 + 40);
  *v14 = v15;
  (*(v11 + 104))(v14, *MEMORY[0x277D85200], v10);
  v16 = v15;
  LOBYTE(v15) = sub_246091B24();
  result = (*(v11 + 8))(v14, v10);
  if ((v15 & 1) == 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  sub_246091A84();
  v18 = sub_246091A74();
  v26 = v1;
  v19 = v1 + OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_backgroundData;
  swift_beginAccess();
  v20 = type metadata accessor for FreeformMeshManager.BackgroundData(0);
  (*(v3 + 16))(v7, v19 + *(v20 + 52), v2);
  v21 = sub_246091A74();
  v22 = *(v3 + 8);
  result = v22(v7, v2);
  if (v18 < v21)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  if (v18 - v21 >= 0x28FA6AE00)
  {
    v23 = *(**(v26 + 104) + 288);

    v23(v24);

    swift_beginAccess();
    (*(v3 + 24))(v19 + *(v20 + 52), v9, v2);
    swift_endAccess();
  }

  return v22(v9, v2);
}

uint64_t sub_245FC1924()
{
  sub_245F91E84(v0 + 16);

  v1 = *(v0 + 48);
  swift_unknownObjectRelease();
  v2 = *(v0 + 104);

  sub_245FC5600(v0 + OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_backgroundData, type metadata accessor for FreeformMeshManager.BackgroundData);
  v3 = *(v0 + OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_mainQueueData + 144);
  v11[8] = *(v0 + OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_mainQueueData + 128);
  v11[9] = v3;
  v12 = *(v0 + OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_mainQueueData + 160);
  v4 = *(v0 + OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_mainQueueData + 80);
  v11[4] = *(v0 + OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_mainQueueData + 64);
  v11[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_mainQueueData + 112);
  v11[6] = *(v0 + OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_mainQueueData + 96);
  v11[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_mainQueueData + 16);
  v11[0] = *(v0 + OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_mainQueueData);
  v11[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_mainQueueData + 48);
  v11[2] = *(v0 + OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_mainQueueData + 32);
  v11[3] = v7;
  sub_245FC49D8(v11);
  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);
  return swift_deallocClassInstance();
}

size_t sub_245FC1A04(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_245F8E624(&qword_27EE3A370, &qword_2460976E0);
  v10 = *(type metadata accessor for ObjectCaptureSession.Mesh.Anchor(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for ObjectCaptureSession.Mesh.Anchor(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_245FC1BDC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_246091834();
  sub_245FC59D0(&qword_27EE3A2D8, MEMORY[0x277CC95F0]);
  v5 = sub_246091B84();

  return sub_245FC1C74(a1, v5);
}

unint64_t sub_245FC1C74(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_246091834();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_245FC59D0(&qword_27EE3AD10, MEMORY[0x277CC95F0]);
      v16 = sub_246091BB4();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

uint64_t sub_245FC1E34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_245FC1BDC(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_245FC2DEC();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = sub_246091834();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = type metadata accessor for ObjectCaptureSession.Mesh.Anchor(0);
    v22 = *(v15 - 8);
    sub_245FC559C(v14 + *(v22 + 72) * v8, a2);
    sub_245FC27E4(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for ObjectCaptureSession.Mesh.Anchor(0);
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_245FC1FBC(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for ObjectCaptureSession.Mesh.Anchor(0);
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

  sub_245F8E624(&qword_27EE3A328, &qword_2460976B0);
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
        sub_245FC559C(v31 + v32 * v28, v52);
      }

      else
      {
        (*v44)(v51, v30, v9);
        v33 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_245FA2954(v33 + v32 * v28, v52);
      }

      v34 = *(v16 + 40);
      sub_245FC59D0(&qword_27EE3A2D8, MEMORY[0x277CC95F0]);
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
      result = sub_245FC559C(v52, *(v16 + 56) + v32 * v24);
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

uint64_t sub_245FC2420(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_246091834();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_245F8E624(&qword_27EE3A368, &qword_2460976D8);
  v43 = a2;
  result = sub_246092374();
  v14 = result;
  if (*(v11 + 16))
  {
    v46 = v10;
    v47 = v6;
    v40 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v41 = (v7 + 16);
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    v22 = v7;
    while (v19)
    {
      v24 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v27 = v24 | (v15 << 6);
      v28 = *(v11 + 48);
      v45 = *(v22 + 72);
      v29 = v28 + v45 * v27;
      if (v43)
      {
        (*v44)(v46, v29, v47);
      }

      else
      {
        (*v41)(v46, v29, v47);
      }

      v30 = *(*(v11 + 56) + 4 * v27);
      v31 = *(v14 + 40);
      sub_245FC59D0(&qword_27EE3A2D8, MEMORY[0x277CC95F0]);
      result = sub_246091B84();
      v32 = -1 << *(v14 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v21 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v21 + 8 * v34);
          if (v38 != -1)
          {
            v23 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v33) & ~*(v21 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = (*v44)(*(v14 + 48) + v45 * v23, v46, v47);
      *(*(v14 + 56) + 4 * v23) = v30;
      ++*(v14 + 16);
      v22 = v42;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v19 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v11 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v16, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v39;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

unint64_t sub_245FC27E4(int64_t a1, uint64_t a2)
{
  v4 = sub_246091834();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v43 = a2;
    v13 = ~v11;
    v14 = sub_2460921C4();
    v15 = v13;
    a2 = v43;
    v42 = (v14 + 1) & v15;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v40 = v10;
    v41 = v17;
    v18 = *(v16 + 56);
    v39 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v12;
      v21 = v15;
      v22 = v16;
      v41(v9, *(a2 + 48) + v18 * v12, v4);
      v23 = *(a2 + 40);
      sub_245FC59D0(&qword_27EE3A2D8, MEMORY[0x277CC95F0]);
      v24 = sub_246091B84();
      result = (*v39)(v9, v4);
      v15 = v21;
      v25 = v24 & v21;
      if (a1 >= v42)
      {
        if (v25 >= v42 && a1 >= v25)
        {
LABEL_15:
          v16 = v22;
          if (v19 * a1 < v20 || *(v43 + 48) + v19 * a1 >= (*(v43 + 48) + v20 + v19))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v43;
          v28 = *(v43 + 56);
          v29 = *(*(type metadata accessor for ObjectCaptureSession.Mesh.Anchor(0) - 8) + 72);
          v30 = v29 * a1;
          result = v28 + v29 * a1;
          v31 = v29 * v12;
          v32 = v28 + v29 * v12 + v29;
          if (v30 < v31 || result >= v32)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v40;
            v15 = v21;
          }

          else
          {
            a1 = v12;
            v34 = v30 == v31;
            v10 = v40;
            v15 = v21;
            if (!v34)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v21;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v42 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v16 = v22;
      v10 = v40;
      a2 = v43;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v18 = v19;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_245FC2B28(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_246091834();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_245FC1BDC(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_245FC2DEC();
      goto LABEL_7;
    }

    sub_245FC1FBC(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_245FC1BDC(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_245FC2D10(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_246092424();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = v22 + *(*(type metadata accessor for ObjectCaptureSession.Mesh.Anchor(0) - 8) + 72) * v15;

  return sub_245FC56C8(a1, v23);
}

uint64_t sub_245FC2D10(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_246091834();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for ObjectCaptureSession.Mesh.Anchor(0);
  result = sub_245FC559C(a3, v10 + *(*(v11 - 8) + 72) * a1);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

char *sub_245FC2DEC()
{
  v1 = v0;
  v2 = type metadata accessor for ObjectCaptureSession.Mesh.Anchor(0);
  v38 = *(v2 - 8);
  v3 = *(v38 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v37 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_246091834();
  v39 = *(v36 - 8);
  v5 = *(v39 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_245F8E624(&qword_27EE3A328, &qword_2460976B0);
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
        sub_245FA2954(*(v7 + 56) + v28, v37);
        v29 = v40;
        (*(v24 + 32))(*(v40 + 48) + v25, v19, v26);
        result = sub_245FC559C(v27, *(v29 + 56) + v28);
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

void *sub_245FC30F0()
{
  v1 = v0;
  v30 = sub_246091834();
  v32 = *(v30 - 8);
  v2 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  v29 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_245F8E624(&qword_27EE3A368, &qword_2460976D8);
  v4 = *v0;
  v5 = sub_246092364();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v4 + 16);
    v31 = v6;
    *(v6 + 16) = v10;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v32 + 16;
    v26 = v4 + 64;
    for (i = v32 + 32; v13; *(*(v24 + 56) + 4 * v18) = v23)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v18 = v15 | (v9 << 6);
      v19 = v32;
      v20 = *(v32 + 72) * v18;
      v21 = v29;
      v22 = v30;
      (*(v32 + 16))(v29, *(v4 + 48) + v20, v30);
      v23 = *(*(v4 + 56) + 4 * v18);
      v24 = v31;
      result = (*(v19 + 32))(*(v31 + 48) + v20, v21, v22);
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

        v1 = v25;
        v6 = v31;
        goto LABEL_18;
      }

      v17 = *(v26 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_245FC3364(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_246091834();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_245FC59D0(&qword_27EE3A2D8, MEMORY[0x277CC95F0]);
  v36 = a2;
  v13 = sub_246091B84();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_245FC59D0(&qword_27EE3AD10, MEMORY[0x277CC95F0]);
      v23 = sub_246091BB4();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_245FC39A0(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_245FC3644(uint64_t a1)
{
  v2 = v1;
  v41 = sub_246091834();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_245F8E624(&qword_27EE3A320, "lM");
  result = sub_246092244();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_245FC59D0(&qword_27EE3A2D8, MEMORY[0x277CC95F0]);
      result = sub_246091B84();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_245FC39A0(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_246091834();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_245FC3644(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_245FC3C44();
      goto LABEL_12;
    }

    sub_245FC3E7C(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_245FC59D0(&qword_27EE3A2D8, MEMORY[0x277CC95F0]);
  v15 = sub_246091B84();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_245FC59D0(&qword_27EE3AD10, MEMORY[0x277CC95F0]);
      v23 = sub_246091BB4();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_246092414();
  __break(1u);
  return result;
}

void *sub_245FC3C44()
{
  v1 = v0;
  v2 = sub_246091834();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_245F8E624(&qword_27EE3A320, "lM");
  v7 = *v0;
  v8 = sub_246092234();
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

uint64_t sub_245FC3E7C(uint64_t a1)
{
  v2 = v1;
  v37 = sub_246091834();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_245F8E624(&qword_27EE3A320, "lM");
  v10 = sub_246092244();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_245FC59D0(&qword_27EE3A2D8, MEMORY[0x277CC95F0]);
      result = sub_246091B84();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_245FC4198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_246091834();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_245FC59D0(&qword_27EE3A2D8, MEMORY[0x277CC95F0]);
  v35 = a1;
  v13 = sub_246091B84();
  v14 = v11 + 56;
  v33 = v11 + 56;
  v34 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v30 = v3;
    v31 = v7;
    v32 = a2;
    v17 = ~v15;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    while (1)
    {
      v18(v10, *(v34 + 48) + v21 * v16, v6);
      sub_245FC59D0(&qword_27EE3AD10, MEMORY[0x277CC95F0]);
      v22 = sub_246091BB4();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v33 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v23 = 1;
        v7 = v31;
        a2 = v32;
        return (*(v7 + 56))(a2, v23, 1, v6);
      }
    }

    v24 = v30;
    v25 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v24;
    v36 = *v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_245FC3C44();
      v27 = v36;
    }

    v7 = v31;
    a2 = v32;
    (*(v31 + 32))(v32, *(v27 + 48) + v21 * v16, v6);
    sub_245FC4440(v16);
    v23 = 0;
    *v24 = v36;
  }

  else
  {
    v23 = 1;
  }

  return (*(v7 + 56))(a2, v23, 1, v6);
}

uint64_t sub_245FC4440(int64_t a1)
{
  v3 = sub_246091834();
  v4 = *(v3 - 8);
  v5 = v4[8];
  result = MEMORY[0x28223BE20](v3);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v10 = *v1 + 56;
  v11 = -1 << *(*v1 + 32);
  v12 = (a1 + 1) & ~v11;
  if (((1 << v12) & *(v10 + 8 * (v12 >> 6))) != 0)
  {
    v13 = ~v11;
    v14 = *v1;

    v15 = sub_2460921C4();
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) != 0)
    {
      v16 = v13;
      v17 = (v15 + 1) & v13;
      v38 = v4[2];
      v39 = v4 + 2;
      v18 = v4[9];
      v36 = (v4 + 1);
      v37 = v10;
      v19 = v18;
      do
      {
        v20 = v19;
        v21 = v19 * v12;
        v38(v8, *(v9 + 48) + v19 * v12, v3);
        v22 = v9;
        v23 = v17;
        v24 = v16;
        v25 = v22;
        v26 = *(v22 + 40);
        sub_245FC59D0(&qword_27EE3A2D8, MEMORY[0x277CC95F0]);
        v27 = sub_246091B84();
        (*v36)(v8, v3);
        v28 = v27 & v24;
        v16 = v24;
        v17 = v23;
        if (a1 >= v23)
        {
          if (v28 >= v23 && a1 >= v28)
          {
LABEL_16:
            v9 = v25;
            v31 = *(v25 + 48);
            v19 = v20;
            v32 = v20 * a1;
            if (v20 * a1 < v21 || v31 + v20 * a1 >= (v31 + v21 + v20))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v12;
            }

            else
            {
              a1 = v12;
              if (v32 != v21)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v12;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v28 >= v23 || a1 >= v28)
        {
          goto LABEL_16;
        }

        v9 = v25;
        v19 = v20;
LABEL_5:
        v12 = (v12 + 1) & v16;
        v10 = v37;
      }

      while (((*(v37 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
    }

    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v33 = *(v9 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v35;
    ++*(v9 + 36);
  }

  return result;
}

unint64_t sub_245FC4748(uint64_t a1)
{
  v2 = sub_245F8E624(&unk_27EE3A3A0, qword_2460976F0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_245F8E624(&qword_27EE3A328, &qword_2460976B0);
    v8 = sub_246092384();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_245F8E7A4(v10, v6, &unk_27EE3A3A0, qword_2460976F0);
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
      v18 = type metadata accessor for ObjectCaptureSession.Mesh.Anchor(0);
      result = sub_245FC559C(&v6[v9], v17 + *(*(v18 - 8) + 72) * v14);
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

uint64_t sub_245FC4A80@<X0>(void *a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_mainQueueData;
  swift_beginAccess();
  *a1 = *(v3 + 16);
}

float sub_245FC4AE4@<S0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_mainQueueData;
  swift_beginAccess();
  if (*(v3 + 48) & 1) != 0 || (*(v3 + 80))
  {
    LODWORD(v4) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 1;
  }

  else
  {
    v5 = (v3 + 72);
    v6 = *(v3 + 64);
    v7 = *(v3 + 40);
    v8 = *(v3 + 32);
    v9 = vld1q_dup_f64(v5);
    *&v4 = vsub_f32(v6, v8);
    *(&v4 + 1) = vsubq_f32(v9, vdupq_n_s64(v7)).u32[2];
    *a1 = v8;
    *(a1 + 8) = v7;
    *(a1 + 16) = v4;
    *(a1 + 32) = 0;
  }

  return *&v4;
}

uint64_t sub_245FC4BA8()
{
  v1 = *(v0 + 80);

  return MEMORY[0x2821FE8E8](v0, 88, 15);
}

uint64_t sub_245FC4BE0()
{
  v1 = *(v0 + 80);
  result = sub_246021E38(*(v0 + 16), *(v0 + 32), *(v0 + 48), *(v0 + 64));
  if (result)
  {
    OCBoundingBox.init(transform:)(&v8, result);
    v6 = v8.transform.columns[1];
    v7 = v8.transform.columns[0];
    v4 = v8.transform.columns[3];
    v5 = v8.transform.columns[2];
    v9 = 0;
    v3 = (v1 + OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_mainQueueData);
    result = swift_beginAccess();
    v3[6] = v7;
    v3[7] = v6;
    v3[8] = v5;
    v3[9] = v4;
    v3[10].i8[0] = v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_245FC4C80()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_245FC4CA8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_245FC4CDC()
{
  result = qword_27EE3A250;
  if (!qword_27EE3A250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE3A250);
  }

  return result;
}

uint64_t sub_245FC4D38()
{
  result = type metadata accessor for FreeformMeshManager.BackgroundData(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

__n128 sub_245FC4E2C(uint64_t a1, uint64_t a2)
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

uint64_t sub_245FC4E48(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_245FC4E90(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

__n128 sub_245FC4EEC(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_245FC4EF8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_245FC4F18(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

__n128 sub_245FC4F64(uint64_t a1, __int128 *a2)
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
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_245FC4FA0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 161))
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

uint64_t sub_245FC4FE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 160) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 161) = 1;
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

    *(result + 161) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_245FC5078(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_246091AA4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 52);

    return v9(v10, a2, v8);
  }
}

void *sub_245FC5138(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_246091AA4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 52);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_245FC51DC()
{
  sub_245FC52E0();
  if (v0 <= 0x3F)
  {
    sub_245FC538C();
    if (v1 <= 0x3F)
    {
      sub_245FC5420();
      if (v2 <= 0x3F)
      {
        sub_245FC5484(319, &unk_27EE3A2F8, &type metadata for FreeformMeshManager.ScanExtent, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_246091AA4();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_245FC52E0()
{
  if (!qword_27EE3A2D0)
  {
    sub_246091834();
    type metadata accessor for ObjectCaptureSession.Mesh.Anchor(255);
    sub_245FC59D0(&qword_27EE3A2D8, MEMORY[0x277CC95F0]);
    v0 = sub_246091B74();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE3A2D0);
    }
  }
}

void sub_245FC538C()
{
  if (!qword_27EE3A2E0)
  {
    sub_246091834();
    sub_245FC59D0(&qword_27EE3A2D8, MEMORY[0x277CC95F0]);
    v0 = sub_246091F64();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE3A2E0);
    }
  }
}

void sub_245FC5420()
{
  if (!qword_27EE3A2E8)
  {
    sub_245F9135C(&qword_27EE3A2F0, &unk_246096850);
    v0 = sub_2460920F4();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE3A2E8);
    }
  }
}

void sub_245FC5484(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

__n128 sub_245FC54D4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_245FC54E8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[41])
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

uint64_t sub_245FC553C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_245FC559C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ObjectCaptureSession.Mesh.Anchor(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_245FC5600(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_245FC56C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ObjectCaptureSession.Mesh.Anchor(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_245FC572C(uint64_t a1)
{
  v2 = sub_245F8E624(&qword_27EE3A378, &qword_2460976E8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_245F8E624(&qword_27EE3A368, &qword_2460976D8);
    v8 = sub_246092384();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_245F8E7A4(v10, v6, &qword_27EE3A378, &qword_2460976E8);
      result = sub_245FC1BDC(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_246091834();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 4 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
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

uint64_t sub_245FC5914(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_245F8E624(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_245FC597C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[13];

  return MEMORY[0x2821FE8E8](v0, 112, 15);
}

uint64_t sub_245FC59D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_245FC5A18()
{
  v1 = (v0 + OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_backgroundData);
  swift_beginAccess();
  v2 = *v1;
  v3 = v0 + OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_mainQueueData;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;

  v5 = *(v1 + 96);
  *(v3 + 32) = *(v1 + 5);
  *(v3 + 48) = v5;
  v6 = *(v1 + 128);
  *(v3 + 64) = *(v1 + 7);
  *(v3 + 80) = v6;
  v7 = *(v3 + 24);
  *(v3 + 24) = v1[2];

  *(v3 + 88) = v1[17];
  result = swift_endAccess();
  v9 = *(v0 + OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_backgroundTaskCount);
  v10 = __OFSUB__(v9, 1);
  v11 = v9 - 1;
  if (v10)
  {
    __break(1u);
    goto LABEL_5;
  }

  *(v0 + OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_backgroundTaskCount) = v11;
  if (v11)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

__n128 sub_245FC5B14(uint64_t a1, uint64_t a2)
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

uint64_t sub_245FC5B38(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_245FC5B80(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FreeformMeshManager.MeshRefinementType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FreeformMeshManager.MeshRefinementType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_245FC5D3C()
{
  result = qword_27EE3C000[0];
  if (!qword_27EE3C000[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EE3C000);
  }

  return result;
}

uint64_t sub_245FC5E04(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v36[1] = *MEMORY[0x277D85DE8];
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  sub_245F8E624(&qword_27EE3A410, &qword_246097800);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2460977F0;
  v7 = *MEMORY[0x277CC4E30];
  type metadata accessor for CFString(0);
  v9 = v8;
  *(v6 + 56) = v8;
  *(v6 + 32) = v7;
  v10 = MEMORY[0x277D84CC0];
  *(v6 + 64) = 1717855600;
  v11 = *MEMORY[0x277CC4EC8];
  *(v6 + 88) = v10;
  *(v6 + 96) = v11;
  v12 = MEMORY[0x277D83E88];
  v13 = MEMORY[0x277CC4DD8];
  *(v6 + 120) = v8;
  *(v6 + 128) = a1;
  v14 = *v13;
  *(v6 + 152) = v12;
  *(v6 + 160) = v14;
  *(v6 + 184) = v8;
  *(v6 + 192) = a2;
  v15 = *MEMORY[0x277CC4F68];
  *(v6 + 248) = v8;
  *(v6 + 216) = v12;
  *(v6 + 224) = v15;
  v16 = MEMORY[0x277D839B0];
  *(v6 + 256) = 1;
  v17 = *MEMORY[0x277CC4DE8];
  *(v6 + 312) = v8;
  *(v6 + 280) = v16;
  *(v6 + 288) = v17;
  v18 = objc_allocWithZone(MEMORY[0x277CBEAC0]);
  v19 = v7;
  v20 = v11;
  v21 = v14;
  v22 = v15;
  v23 = v17;
  v24 = [v18 init];
  *(v6 + 344) = sub_245FC609C();
  *(v6 + 320) = v24;
  v25 = sub_246091F84();
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_246096EF0;
  v27 = *MEMORY[0x277CC4E50];
  v28 = MEMORY[0x277D83B88];
  *(v26 + 32) = *MEMORY[0x277CC4E50];
  *(v26 + 56) = v9;
  *(v26 + 64) = 1;
  v29 = *MEMORY[0x277CC4E40];
  *(v26 + 88) = v28;
  *(v26 + 96) = v29;
  *(v26 + 152) = v28;
  *(v26 + 120) = v9;
  *(v26 + 128) = 3;
  v30 = v27;
  v31 = v29;
  v32 = sub_246091F84();
  v36[0] = 0;
  result = CVPixelBufferPoolCreate(*MEMORY[0x277CBECE8], v32, v25, v36);
  if (result)
  {

    type metadata accessor for ImageFilter();
    swift_deallocPartialClassInstance();
    v3 = 0;
LABEL_5:
    v35 = *MEMORY[0x277D85DE8];
    return v3;
  }

  if (v36[0])
  {
    v34 = v36[0];

    *(v3 + 32) = v34;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

unint64_t sub_245FC609C()
{
  result = qword_27EE3A418;
  if (!qword_27EE3A418)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE3A418);
  }

  return result;
}

uint64_t sub_245FC610C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_245FC6180(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  result = OCImageFilterBilateralCreate();
  if (result)
  {
    type metadata accessor for BilateralImageFilter();
    swift_deallocPartialClassInstance();
    result = 0;
    v2 = *MEMORY[0x277D85DE8];
  }

  else
  {
    __break(1u);
  }

  return result;
}

CVPixelBufferRef sub_245FC6284()
{
  v9[1] = *MEMORY[0x277D85DE8];
  v9[0] = 0;
  PixelBuffer = CVPixelBufferPoolCreatePixelBuffer(*MEMORY[0x277CBECE8], *(v0 + 32), v9);
  v2 = v9[0];
  if (PixelBuffer || (v3 = *(v0 + 40), v4 = OCImageFilterApplyFilter(), v2 = v9[0], v4))
  {
    v5 = 0;
  }

  else
  {
    v8 = v9[0];
    v5 = v2;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

CVPixelBufferRef sub_245FC6364()
{
  v9[1] = *MEMORY[0x277D85DE8];
  v9[0] = 0;
  PixelBuffer = CVPixelBufferPoolCreatePixelBuffer(*MEMORY[0x277CBECE8], *(v0 + 32), v9);
  v2 = v9[0];
  if (PixelBuffer || (v3 = *(v0 + 40), v4 = OCImageFilterApplyCrossBilateralFilter(), v2 = v9[0], v4))
  {
    v5 = 0;
  }

  else
  {
    v8 = v9[0];
    v5 = v2;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t sub_245FC641C()
{
  v1 = *(v0 + 40);
  result = OCImageFilterDestroy();
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

__n128 sub_245FC6488(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_245FC649C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_245FC64BC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

uint64_t sub_245FC6540()
{
  result = sub_245FC66F8(&unk_2858DE798);
  qword_27EE3C118 = result;
  return result;
}

BOOL sub_245FC6568(__CVBuffer *a1)
{
  if (qword_27EE3C110 != -1)
  {
    v10 = a1;
    swift_once();
    a1 = v10;
  }

  v1 = qword_27EE3C118;
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v3 = PixelFormatType;
  v4 = MEMORY[0x24C196E60](*(v1 + 40), PixelFormatType, 4);
  v5 = -1 << *(v1 + 32);
  v6 = v4 & ~v5;
  if (((*(v1 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(v1 + 48) + 4 * v6);
    result = v8 == v3;
    if (v8 == v3)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(v1 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_245FC66F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_245F8E624(&qword_27EE3A428, &unk_2460978F0);
    v3 = sub_246092254();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    v7 = *(v3 + 40);
    v8 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v12 = *(v6 + 4 * v4);
      result = MEMORY[0x24C196E60](v7, v12, 4);
      v14 = result & v8;
      v15 = (result & v8) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v8);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + 4 * v14) != v12)
        {
          v14 = (v14 + 1) & v8;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + 4 * v14) = v12;
        v9 = *(v3 + 16);
        v10 = __OFADD__(v9, 1);
        v11 = v9 + 1;
        if (v10)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v11;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

double sub_245FC6834@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0x3FE0000000000000;
  result = 3.80295244e30;
  *(a1 + 8) = xmmword_246097900;
  return result;
}

uint64_t sub_245FC6888(float *a1)
{
  v2 = v1;
  v20 = *MEMORY[0x277D85DE8];
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 48) = 0;
  v9 = sub_245FA3174();
  (*(v5 + 16))(v8, v9, v4);
  v10 = sub_2460918D4();
  v11 = sub_246091FC4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134350080;
    *(v12 + 4) = *a1;
    v13 = a1[3];
    *(v12 + 14) = a1[2];
    *(v12 + 24) = v13;
    v14 = a1[5];
    *(v12 + 34) = a1[4];
    *(v12 + 12) = 2050;
    *(v12 + 22) = 2050;
    *(v12 + 32) = 2050;
    *(v12 + 42) = 2050;
    *(v12 + 44) = v14;
    _os_log_impl(&dword_245F8A000, v10, v11, "ExplicitFeedbackManager: ExplicitFeedback Configuration: motionTimeWindow %{public}f, isoThresholdLowLight %{public}f, isoThresholdTooDark %{public}f, ratioObjectInFOVThreshold %{public}f, tooFarRatioBoxAreaToImgArea %{public}f", v12, 0x34u);
    MEMORY[0x24C1989D0](v12, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v19 = 0;
  v17 = *a1;
  v18 = *(a1 + 2);
  result = OCExplicitFeedbackCreate();
  if (result)
  {
    type metadata accessor for ExplicitFeedbackManager();
    swift_deallocPartialClassInstance();
    v2 = 0;
LABEL_7:
    v16 = *MEMORY[0x277D85DE8];
    return v2;
  }

  *(v2 + 16) = *a1;
  *(v2 + 32) = *(a1 + 2);
  if (v19)
  {
    *(v2 + 40) = v19;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_245FC6AD0()
{
  v1 = *(v0 + 40);
  result = OCExplicitFeedbackDestroy();
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

uint64_t sub_245FC6B10()
{
  if (*(v0 + 48))
  {
    return 1;
  }

  v2 = *(v0 + 40);
  if (OCExplicitFeedbackStart())
  {
    return 0;
  }

  result = 1;
  *(v0 + 48) = 1;
  return result;
}

uint64_t sub_245FC6B58()
{
  if (*(v0 + 48) == 1)
  {
    v1 = *(v0 + 40);
    if (OCExplicitFeedbackStop())
    {
      return 0;
    }

    *(v0 + 48) = 0;
  }

  return 1;
}

uint64_t sub_245FC6B98(__int128 *a1, uint64_t a2, __int128 *a3, __int128 *a4, __int128 *a5, uint64_t a6)
{
  v58 = *MEMORY[0x277D85DE8];
  if (*(v6 + 48) != 1)
  {
    goto LABEL_5;
  }

  if ((a4[4] & 1) == 0)
  {
    v29 = *a4;
    v30 = a4[1];
    v31 = a4[2];
    v32 = a4[3];
    if ((a5[4] & 1) == 0)
    {
      v25 = *a5;
      v26 = a5[1];
      v27 = a5[2];
      v28 = a5[3];
      if (a2)
      {
        if ((a3[4] & 1) == 0)
        {
          v33 = *(a2 + 16);
          v34 = *a3;
          v35 = a3[1];
          v36 = a3[2];
          v37 = a3[3];
          sub_245FC6F9C(&unk_2858DE7C8);
          v13 = v12;

          Size = OCDataBufferGetSize();
          if (Size < 0)
          {
            __break(1u);
            __break(1u);
            __break(1u);
          }

          v15 = Size;
          if (Size)
          {
            sub_245F8E624(&qword_27EE3A430, qword_246097920);
            v16 = sub_246091E14();
            v17 = v16;
            *(v16 + 16) = v15;
            v18 = 32;
            do
            {
              *(v16 + v18) = v13;
              v18 += 8;
              --v15;
            }

            while (v15);
          }

          else
          {
            v17 = MEMORY[0x277D84F90];
          }

          v19 = *(v6 + 40);
          v51 = a1[6];
          v53 = a1[7];
          v55 = a1[8];
          v57 = a1[9];
          v43 = a1[2];
          v45 = a1[3];
          v47 = a1[4];
          v49 = a1[5];
          v39 = *a1;
          v41 = a1[1];
          v20 = OCExplicitFeedbackProcess();
          if (*(v17 + 16))
          {
            sub_245FC6EA8(v17, v17 + 32, 0, 1uLL);
            v22 = v21;
          }

          else
          {

            v22 = v17;
          }

          v23 = *(a6 + 8);

          *(a6 + 8) = v22;
          if (v20)
          {
            goto LABEL_5;
          }

LABEL_20:
          *a6 = 0;
          v24 = *&vshl_u16(vdup_n_s16(0), 0xFFFDFFFEFFFBFFFFLL) & 0xFF01FF01FF01FF01;
          *(a6 + 1) = vuzp1_s8(v24, v24).u32[0];
          *(a6 + 5) = 0;
          result = 1;
          goto LABEL_6;
        }
      }
    }
  }

  v8 = *(v6 + 40);
  v50 = a1[6];
  v52 = a1[7];
  v54 = a1[8];
  v56 = a1[9];
  v42 = a1[2];
  v44 = a1[3];
  v46 = a1[4];
  v48 = a1[5];
  v38 = *a1;
  v40 = a1[1];
  if (!OCExplicitFeedbackProcess())
  {
    goto LABEL_20;
  }

LABEL_5:
  result = 0;
LABEL_6:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_245FC6EA8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x277D84F90];
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 8 * a3), 8 * v5);
        return;
      }
    }

    else
    {
      sub_245F8E624(&unk_27EE3AD90, "lK");
      v8 = swift_allocObject();
      v9 = j__malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 25;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_245FC6F9C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if ((v1 - 1) > 1)
    {
      __break(1u);
    }

    else
    {
      v2 = *(result + 32);
      if (v1 != 1)
      {
        v3 = *(result + 36);
        return result;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_245FC6FD4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_245FC701C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata accessor for OCExplicitFeedbackConfig()
{
  if (!qword_27EE3A438)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27EE3A438);
    }
  }
}

_OWORD *sub_245FC70B8@<X0>(_OWORD *result@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>, __n128 a4@<Q1>, __n128 a5@<Q2>, __n128 a6@<Q3>, double a7@<D4>)
{
  v7 = result[1];
  *a2 = *result;
  *(a2 + 16) = v7;
  *(a2 + 32) = result[2];
  *(a2 + 48) = a3;
  *(a2 + 64) = a4;
  *(a2 + 80) = a5;
  *(a2 + 96) = a6;
  *(a2 + 112) = a7;
  return result;
}

unint64_t sub_245FC70D8()
{
  sub_245F8E624(&qword_27EE3A440, &unk_2460979E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_246096640;
  *(inited + 32) = 48;
  *(inited + 40) = 0xE100000000000000;
  v2 = *(v0 + 16);
  v10[0] = *v0;
  v10[1] = v2;
  v10[2] = *(v0 + 32);
  sub_246020EF0(v10);
  v4 = v3;
  v5 = sub_245F8E624(&unk_27EE3B1A0, &qword_246098F50);
  *(inited + 48) = v4;
  *(inited + 72) = v5;
  *(inited + 80) = 49;
  *(inited + 88) = 0xE100000000000000;
  sub_246020FBC(*(v0 + 48), *(v0 + 64), *(v0 + 80), *(v0 + 96));
  *(inited + 96) = v6;
  *(inited + 120) = v5;
  *(inited + 128) = 50;
  *(inited + 136) = 0xE100000000000000;
  sub_245F8E624(&qword_27EE3A448, &qword_2460979F0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_246096EF0;
  *(v7 + 32) = *(v0 + 112);
  *(inited + 168) = sub_245F8E624(&qword_27EE3A450, &qword_2460979F8);
  *(inited + 144) = v7;
  v8 = sub_245F8E498(inited);
  swift_setDeallocating();
  sub_245F8E624(&qword_27EE39EF8, &unk_246096ED0);
  swift_arrayDestroy();
  return v8;
}