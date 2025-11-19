void (*sub_1DC39A934(void *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  v6[4] = sub_1DC39DFBC(v6, a2, a3);
  return sub_1DC337000;
}

void sub_1DC39A9A8()
{
  OUTLINED_FUNCTION_28_1();
  v114 = v3;
  OUTLINED_FUNCTION_23_16(*MEMORY[0x1E69E9840]);
  v4 = sub_1DC51776C();
  v5 = OUTLINED_FUNCTION_0(v4);
  v116 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  v115 = v10 - v9;
  v11 = sub_1DC510C8C();
  v12 = OUTLINED_FUNCTION_0(v11);
  v118 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_15();
  v117 = v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v106 - v18;
  OUTLINED_FUNCTION_12_0();
  v21 = *(v20 + 176);
  v22 = v21();
  sub_1DC2C20B8(v22);
  OUTLINED_FUNCTION_10_19();

  v24 = *(*v0 + 200);
  v119 = v0;
  v25 = *(v24(v23) + 16);

  if (v2)
  {
    ++v25;
  }

  v26 = objc_opt_self();
  if (HIDWORD(v25))
  {
    goto LABEL_58;
  }

  v126 = 0;
  v27 = [v26 syntheticWithDatasetCount:v25 error:&v126];
  v28 = v126;
  if (v27)
  {
    v29 = v27;
    v112 = v4;
    v113 = v19;
    sub_1DC298C74(0, &qword_1ECC7D0D0, 0x1E69ABD08);
    v30 = v28;
    v31 = sub_1DC39B33C(v29, 3u);
    if (!v1)
    {
      v32 = v31;
      v33 = v119;
      v34 = v21();
      sub_1DC2C20B8(v34);
      OUTLINED_FUNCTION_10_19();

      v36 = (v21)(v35);
      sub_1DC2C20B8(v36);
      OUTLINED_FUNCTION_121();

      if ((v33 & 0x8000000000000000) != 0)
      {
        goto LABEL_61;
      }

      if (HIDWORD(v33))
      {
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
      }

      objc_allocWithZone(MEMORY[0x1E69ABCC8]);
      v37 = sub_1DC39D730(3, 0x746163696C707041, 0xEC000000736E6F69, v33);
      v40 = v37;
      v111 = 0;
      v126 = 0;
      v41 = [v32 addDataset:v37 error:&v126];

      if (v41)
      {
        v110 = v32;
        v108 = v11;
        v42 = (v21)(v126);
        v43 = sub_1DC2C20B8(v42);
        for (i = 0; v43 != i; ++i)
        {
          if ((v42 & 0xC000000000000001) != 0)
          {
            v45 = MEMORY[0x1E1296800](i, v42);
          }

          else
          {
            if (i >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_60;
            }

            v45 = *(v42 + 8 * i + 32);
          }

          v46 = v45;
          if (__OFADD__(i, 1))
          {
            goto LABEL_59;
          }

          v126 = 0;
          v47 = [v41 addItem:v45 error:&v126];
          if (!v47)
          {
            v97 = v126;
            OUTLINED_FUNCTION_10_19();

            sub_1DC51085C();

            swift_willThrow();
LABEL_49:

            goto LABEL_10;
          }

          v48 = v47;
          v49 = v126;
        }

        v53 = v110;
        v52 = v111;
        v54 = v108;
        v55 = (*(*v119 + 200))(v51);
        v56 = 0;
        v57 = *(v55 + 64);
        v107 = v55 + 64;
        v58 = 1 << *(v55 + 32);
        v59 = -1;
        if (v58 < 64)
        {
          v59 = ~(-1 << v58);
        }

        v60 = v59 & v57;
        v106 = (v58 + 63) >> 6;
        v108 = v54;
        v109 = v55;
        v110 = v53;
        if ((v59 & v57) != 0)
        {
          while (1)
          {
            v61 = v56;
LABEL_29:
            v62 = __clz(__rbit64(v60)) | (v61 << 6);
            v63 = (*(v55 + 48) + 16 * v62);
            v64 = *v63;
            v65 = v63[1];
            v121 = *(*(v55 + 56) + 8 * v62);
            v66 = sub_1DC2C20B8(v121);
            if ((v66 & 0x8000000000000000) != 0)
            {
              goto LABEL_63;
            }

            v67 = v66;
            if (HIDWORD(v66))
            {
              goto LABEL_64;
            }

            objc_allocWithZone(MEMORY[0x1E69ABCC8]);

            v68 = sub_1DC39D730(18, v64, v65, v67);
            if (v52)
            {

              goto LABEL_54;
            }

            v69 = v68;
            v126 = 0;
            v70 = [v53 addDataset:v68 error:&v126];

            v71 = v126;
            v120 = v70;
            if (!v70)
            {
              break;
            }

            v111 = 0;
            v60 &= v60 - 1;
            v72 = v121;
            v73 = sub_1DC2C20B8(v121);
            v74 = v72 & 0xC000000000000001;
            v75 = v72 & 0xFFFFFFFFFFFFFF8;
            v76 = v71;
            for (j = 0; v73 != j; ++j)
            {
              if (v74)
              {
                v78 = MEMORY[0x1E1296800](j, v121);
              }

              else
              {
                if (j >= *(v75 + 16))
                {
                  goto LABEL_56;
                }

                v78 = *(v121 + 8 * j + 32);
              }

              v79 = v78;
              if (__OFADD__(j, 1))
              {
                __break(1u);
LABEL_56:
                __break(1u);
LABEL_57:
                __break(1u);
LABEL_58:
                __break(1u);
LABEL_59:
                __break(1u);
LABEL_60:
                __break(1u);
LABEL_61:
                __break(1u);
                goto LABEL_62;
              }

              v126 = 0;
              v80 = [v120 addItem:v78 error:&v126];
              if (!v80)
              {
                v83 = v126;

                sub_1DC51085C();

                swift_willThrow();

                goto LABEL_49;
              }

              v81 = v80;
              v82 = v126;
            }

            v56 = v61;
            v53 = v110;
            v52 = v111;
            v55 = v109;
            if (!v60)
            {
              goto LABEL_26;
            }
          }

          v105 = v126;

          sub_1DC51085C();

          swift_willThrow();
LABEL_54:
        }

        else
        {
          while (1)
          {
LABEL_26:
            v61 = v56 + 1;
            if (__OFADD__(v56, 1))
            {
              goto LABEL_57;
            }

            if (v61 >= v106)
            {
              break;
            }

            v60 = *(v107 + 8 * v61);
            ++v56;
            if (v60)
            {
              goto LABEL_29;
            }
          }

          v111 = v52;

          v84 = sub_1DC510B8C();
          v86 = v85;
          v126 = v84;
          v127 = v85;
          v124 = 45;
          v125 = 0xE100000000000000;
          v122 = 95;
          v123 = 0xE100000000000000;
          sub_1DC2A32B0();
          sub_1DC517E1C();

          v87 = v113;
          sub_1DC510B7C();
          v126 = 0;
          v88 = [v53 buildWithError_];
          v89 = v126;
          if (v88)
          {
            v90 = v88;
            sub_1DC298C74(0, &qword_1ECC7D0D8, 0x1E6997E88);
            v91 = v117;
            v92 = v118;
            v93 = v108;
            (*(v118 + 16))(v117, v87, v108);
            v94 = v89;
            v95 = v111;
            v96 = sub_1DC39B418(v90, v91);
            if (v95)
            {
              (*(v92 + 8))(v87, v93);
            }

            else
            {
              v99 = v96;
              v100 = [v96 save];
              v101 = sub_1DC51772C();
              v103 = v102;

              v126 = v101;
              v127 = v103;
              v104 = v115;
              sub_1DC51775C();
              sub_1DC517E3C();

              (*(v116 + 8))(v104, v112);
              (*(v92 + 8))(v113, v93);
            }
          }

          else
          {
            v98 = v126;
            OUTLINED_FUNCTION_10_19();
            sub_1DC51085C();

            swift_willThrow();
            (*(v118 + 8))(v87, v108);
          }
        }
      }

      else
      {
        v50 = v126;
        OUTLINED_FUNCTION_10_19();
        sub_1DC51085C();

        swift_willThrow();
      }
    }
  }

  else
  {
    v38 = v126;
    OUTLINED_FUNCTION_10_19();
    sub_1DC51085C();

    swift_willThrow();
  }

LABEL_10:
  v39 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_26_0();
}

id sub_1DC39B33C(void *a1, unsigned __int8 a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v8[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() builderWithProfileInfo:a1 format:a2 error:v8];
  if (v3)
  {
    v4 = v8[0];
  }

  else
  {
    v5 = v8[0];
    sub_1DC51085C();

    swift_willThrow();
  }

  v6 = *MEMORY[0x1E69E9840];
  return v3;
}

id sub_1DC39B418(void *a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1DC510BFC();
  v14[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() sandboxWithProfile:a1 locale:v4 error:v14];

  v6 = v14[0];
  if (v5)
  {
    v7 = sub_1DC510C8C();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a2, v7);
  }

  else
  {
    v10 = v14[0];
    sub_1DC51085C();

    swift_willThrow();
    v11 = sub_1DC510C8C();
    (*(*(v11 - 8) + 8))(a2, v11);
  }

  v12 = *MEMORY[0x1E69E9840];
  return v5;
}

void sub_1DC39B580()
{
  OUTLINED_FUNCTION_28_1();
  v69 = v0;
  v79 = v1;
  OUTLINED_FUNCTION_23_16(*MEMORY[0x1E69E9840]);
  v87 = sub_1DC5108BC();
  v2 = OUTLINED_FUNCTION_0(v87);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1();
  v9 = v8 - v7;
  v92 = sub_1DC5109BC();
  v10 = OUTLINED_FUNCTION_0(v92);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_62();
  v91 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D0A8, &qword_1DC526A98);
  v18 = OUTLINED_FUNCTION_0(v17);
  v78 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  v23 = MEMORY[0x1EEE9AC00](v22);
  v93 = &v68 - v24;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_62();
  v76 = v25;
  v90 = [objc_opt_self() defaultManager];
  OUTLINED_FUNCTION_12_0();
  v27 = (*(v26 + 128))();
  v28 = 0;
  v80 = *(v27 + 16);
  v75 = (v12 + 32);
  v89 = *MEMORY[0x1E6968F70];
  v29 = (v4 + 104);
  v88 = (v4 + 8);
  v71 = 0x80000001DC543D00;
  v30 = MEMORY[0x1E69E6158];
  v70 = v17;
  v77 = (v12 + 8);
  v74 = v27;
  v86 = (v4 + 104);
  while (1)
  {
    if (v80 == v28)
    {

      goto LABEL_11;
    }

    if (v28 >= *(v27 + 16))
    {
      __break(1u);
    }

    v31 = *(v78 + 80);
    v32 = v29;
    OUTLINED_FUNCTION_24();
    v35 = *(v34 + 72);
    v83 = v36;
    v37 = v76;
    sub_1DC28F308(v27 + v33 + v35 * v36, v76, &qword_1ECC7D0A8, &qword_1DC526A98);
    v38 = *v37;
    v39 = *(v37 + 8);
    v40 = *(v17 + 48);
    v41 = v92;
    v42 = v93;
    *v93 = *v37;
    *(v42 + 1) = v39;
    (*v75)(&v42[v40], v37 + v40, v41);
    v94 = v38;
    v95 = v39;
    v43 = *v32;
    v44 = v87;
    (*v32)(v9, v89, v87);
    v85 = sub_1DC2A32B0();
    sub_1DC5109AC();
    v84 = *v88;
    v84(v9, v44);
    v45 = sub_1DC51090C();
    v94 = 0;
    v46 = v90;
    v47 = v9;
    v48 = [v90 createDirectoryAtURL:v45 withIntermediateDirectories:0 attributes:0 error:&v94];

    v49 = v94;
    if (!v48)
    {
      v65 = v94;

      sub_1DC51085C();

      swift_willThrow();
      (*v77)(v91, v92);
      goto LABEL_10;
    }

    v81 = v43;
    v50 = v72;
    sub_1DC28F308(v93, v72, &qword_1ECC7D0A8, &qword_1DC526A98);
    v51 = *(v50 + 8);
    v52 = v49;

    v53 = v30;
    v54 = *(v17 + 48);
    v82 = sub_1DC51090C();
    v55 = *v77;
    v56 = v50 + v54;
    v57 = v92;
    v58 = v87;
    (*v77)(v56, v92);
    v94 = 0xD000000000000013;
    v95 = v71;
    v81(v47, v89, v58);
    v59 = v73;
    sub_1DC5109AC();
    v84(v47, v58);
    v60 = v59;
    sub_1DC51090C();
    v61 = OUTLINED_FUNCTION_121();
    v55(v61, v57);
    v94 = 0;
    v62 = v90;
    v63 = v82;
    LODWORD(v58) = [v90 copyItemAtURL:v82 toURL:v60 error:&v94];

    if (!v58)
    {
      break;
    }

    v9 = v47;
    v64 = v94;
    v55(v91, v92);
    sub_1DC28EB30(v93, &qword_1ECC7D0A8, &qword_1DC526A98);
    v28 = v83 + 1;
    v17 = v70;
    v27 = v74;
    v29 = v86;
    v30 = v53;
  }

  v66 = v94;

  sub_1DC51085C();

  swift_willThrow();
  v55(v91, v92);
LABEL_10:
  sub_1DC28EB30(v93, &qword_1ECC7D0A8, &qword_1DC526A98);
LABEL_11:
  v67 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_26_0();
}

void sub_1DC39BBD0()
{
  OUTLINED_FUNCTION_28_1();
  v3 = v0;
  v115 = v4;
  OUTLINED_FUNCTION_23_16(*MEMORY[0x1E69E9840]);
  v135 = sub_1DC5107DC();
  v5 = OUTLINED_FUNCTION_0(v135);
  v143 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_3();
  v129 = sub_1DC5108BC();
  v9 = OUTLINED_FUNCTION_0(v129);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  v128 = v15 - v14;
  v16 = sub_1DC5109BC();
  v17 = OUTLINED_FUNCTION_0(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_53();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_62();
  v132 = v24;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D0B0, &qword_1DC526AA0);
  v25 = OUTLINED_FUNCTION_0(v118);
  v114 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  v30 = MEMORY[0x1EEE9AC00](v29);
  v32 = &v106 - v31;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_62();
  v113 = v33;
  v131 = [objc_opt_self() defaultManager];
  OUTLINED_FUNCTION_12_0();
  v35 = (*(v34 + 152))();
  v36 = *(v35 + 16);
  v112 = (v19 + 32);
  v127 = *MEMORY[0x1E6968F70];
  v126 = (v11 + 104);
  v125 = (v11 + 8);
  v37 = (v19 + 8);
  v108 = *MEMORY[0x1E695DB78];
  v121 = v19;
  v136 = v19 + 16;
  v38 = 0;
  v134 = (v143 + 8);
  v39 = v32;
  v117 = 0x80000001DC543D00;
  v142 = xmmword_1DC522F20;
  v107 = v32;
  v120 = v2;
  v130 = v37;
  v110 = v35;
  v106 = v36;
  v111 = v16;
  while (1)
  {
    if (v38 == v36)
    {
      OUTLINED_FUNCTION_29_5();

      goto LABEL_37;
    }

    if (v38 >= *(v35 + 16))
    {
      goto LABEL_39;
    }

    v40 = *(v114 + 80);
    OUTLINED_FUNCTION_24();
    v44 = *(v43 + 72);
    v116 = v38;
    v45 = v113;
    sub_1DC28F308(v41 + v42 + v44 * v38, v113, &qword_1ECC7D0B0, &qword_1DC526AA0);
    v46 = v16;
    v47 = *v45;
    v48 = *(v45 + 8);
    v49 = *(v118 + 48);
    *v39 = *v45;
    *(v39 + 1) = v48;
    (*v112)(&v39[v49], v45 + v49, v46);
    v144 = v47;
    v145 = v48;
    v50 = v128;
    v51 = v129;
    v124 = *v126;
    v124(v128, v127, v129);
    v123 = sub_1DC2A32B0();
    sub_1DC5109AC();
    v122 = *v125;
    v122(v50, v51);
    v52 = sub_1DC51090C();
    v144 = 0;
    v53 = v131;
    LODWORD(v51) = [v131 createDirectoryAtURL:v52 withIntermediateDirectories:0 attributes:0 error:&v144];

    v54 = v144;
    if (!v51)
    {
      v100 = v144;
      OUTLINED_FUNCTION_17_11();

      sub_1DC51085C();

      swift_willThrow();
      (*v130)(v132, v111);
      v101 = v39;
      goto LABEL_36;
    }

    v55 = v39;
    v56 = v109;
    sub_1DC28F308(v55, v109, &qword_1ECC7D0B0, &qword_1DC526AA0);
    v57 = *(v56 + 8);
    v58 = v54;

    v59 = *(v118 + 48);
    v60 = sub_1DC51090C();
    v61 = v56 + v59;
    v16 = v111;
    v143 = *v130;
    v143(v61, v111);
    v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D0E0, &unk_1DC526AB8);
    v62 = swift_allocObject();
    *(v62 + 16) = v142;
    v63 = v108;
    *(v62 + 32) = v108;
    v144 = 0;
    v140 = v63;
    v64 = sub_1DC39E738(v60, v62, 0, &v144, v53);

    v65 = v144;
    if (!v64)
    {
      break;
    }

    v66 = sub_1DC517A1C();
    v67 = v65;

    v139 = *(v66 + 16);
    if (v139)
    {
      v68 = 0;
      v69 = v121;
      v70 = *(v121 + 80);
      OUTLINED_FUNCTION_24();
      v137 = v71 + v72;
      v138 = v71;
      while (1)
      {
        if (v68 >= *(v71 + 16))
        {
          __break(1u);
LABEL_39:
          __break(1u);
        }

        (*(v69 + 16))(v2, v137 + *(v69 + 72) * v68, v16);
        inited = swift_initStackObject();
        *(inited + 16) = v142;
        v74 = v140;
        *(inited + 32) = v140;
        v75 = v74;
        sub_1DC39E440(inited);
        v76 = v3;
        sub_1DC5108EC();
        if (v3)
        {
          OUTLINED_FUNCTION_29_5();

          OUTLINED_FUNCTION_17_11();

          v95 = v143;
          v143(v2, v16);
          v95(v132, v16);
          goto LABEL_35;
        }

        v77 = sub_1DC5107CC();
        (*v134)(v1, v135);
        if (v77 != 2)
        {
          break;
        }

LABEL_28:
        ++v68;
        v143(v2, v16);
        v71 = v138;
        if (v139 == v68)
        {
          goto LABEL_29;
        }
      }

      v78 = sub_1DC5108FC();
      if (v77)
      {
        if (v78 != 0xD000000000000013 || v117 != v79)
        {
          v81 = OUTLINED_FUNCTION_36_12();

          if ((v81 & 1) == 0)
          {
            sub_1DC5108FC();
            v82 = sub_1DC51795C();
LABEL_23:
            v84 = v82;

            if ((v84 & 1) == 0)
            {
              goto LABEL_28;
            }
          }

LABEL_26:
          v133 = sub_1DC51090C();
          v144 = sub_1DC5108FC();
          v145 = v85;
          v86 = v128;
          v87 = v129;
          v124(v128, v127, v129);
          v88 = v119;
          sub_1DC5109AC();
          v122(v86, v87);

          v89 = sub_1DC51090C();
          v90 = v16;
          v143(v88, v16);
          v144 = 0;
          v91 = v133;
          v92 = [v131 copyItemAtURL:v133 toURL:v89 error:&v144];

          if (!v92)
          {
            v96 = v144;
            OUTLINED_FUNCTION_17_11();

            sub_1DC51085C();

            swift_willThrow();
            OUTLINED_FUNCTION_29_5();

            v98 = v143;
            v143(v120, v90);
            v98(v132, v90);
            goto LABEL_35;
          }

          v93 = v144;
          v16 = v90;
          v3 = v76;
          v2 = v120;
          v69 = v121;
          goto LABEL_28;
        }
      }

      else if (v78 != 0x696C702E6F666E49 || v79 != 0xEA00000000007473)
      {
        v82 = sub_1DC51825C();
        goto LABEL_23;
      }

      goto LABEL_26;
    }

LABEL_29:
    v38 = v116 + 1;

    v143(v132, v16);
    v39 = v107;
    sub_1DC28EB30(v107, &qword_1ECC7D0B0, &qword_1DC526AA0);
    v35 = OUTLINED_FUNCTION_17_11();
    v36 = v106;
  }

  v102 = v16;
  v103 = v144;
  OUTLINED_FUNCTION_17_11();

  sub_1DC51085C();

  swift_willThrow();
  OUTLINED_FUNCTION_29_5();

  v143(v132, v102);
LABEL_35:
  v101 = v107;
LABEL_36:
  sub_1DC28EB30(v101, &qword_1ECC7D0B0, &qword_1DC526AA0);
LABEL_37:
  v105 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_30_13();
  OUTLINED_FUNCTION_26_0();
}

void sub_1DC39C6E4()
{
  OUTLINED_FUNCTION_28_1();
  v116 = v1;
  v119 = v4;
  OUTLINED_FUNCTION_23_16(*MEMORY[0x1E69E9840]);
  v5 = sub_1DC5108BC();
  v121 = OUTLINED_FUNCTION_0(v5);
  v122 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v121);
  OUTLINED_FUNCTION_1();
  v120 = v10 - v9;
  v11 = sub_1DC5109BC();
  v12 = OUTLINED_FUNCTION_0(v11);
  v118 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_15();
  v115 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_53();
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v103 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v103 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v103 - v25;
  v27 = sub_1DC510B6C();
  v28 = OUTLINED_FUNCTION_0(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_3();
  OUTLINED_FUNCTION_12_0();
  if (((*(v33 + 224))() & 1) == 0)
  {
    v106 = v0;
    v107 = v3;
    v109 = v21;
    v111 = v24;
    v36 = objc_opt_self();
    v37 = [v36 defaultManager];
    sub_1DC510B5C();
    v38 = sub_1DC510B1C();
    v117 = v11;
    v114 = v38;
    v40 = v39;
    (*(v30 + 8))(v2, v27);
    v41 = v119;
    v42 = [v36 defaultManager];
    v43 = [v42 temporaryDirectory];

    sub_1DC51093C();
    strcpy(v123, "ssu-ssd-");
    BYTE1(v123[1]) = 0;
    WORD1(v123[1]) = 0;
    HIDWORD(v123[1]) = -402653184;
    v44 = v117;
    MEMORY[0x1E1296160](v114, v40);

    v45 = v121;
    v46 = v122;
    v47 = *(v122 + 104);
    v48 = v120;
    LODWORD(v114) = *MEMORY[0x1E6968F70];
    v113 = v47;
    v108 = v122 + 104;
    v47(v120);
    v110 = sub_1DC2A32B0();
    sub_1DC5109AC();
    v50 = *(v46 + 8);
    v49 = v46 + 8;
    v112 = v50;
    v50(v48, v45);

    v52 = v118 + 8;
    v51 = *(v118 + 1);
    v105 = v26;
    v53 = v26;
    v54 = v44;
    v51(v53, v44);
    v55 = sub_1DC51090C();
    v123[0] = 0;
    v56 = v37;
    LODWORD(v43) = [v37 createDirectoryAtURL:v55 withIntermediateDirectories:1 attributes:0 error:v123];

    v57 = v123[0];
    if (v43)
    {
      v103 = v52;
      v104 = v51;
      v58 = v111;
      (*(v118 + 2))(v111, v41, v54);
      v123[0] = 0xD000000000000021;
      v123[1] = 0x80000001DC543CD0;
      v59 = v120;
      v122 = v49;
      v60 = v121;
      v113(v120, v114, v121);
      v61 = v57;
      v62 = v109;
      sub_1DC5109AC();
      v112(v59, v60);
      v63 = sub_1DC51090C();
      v123[0] = 0;
      v118 = v37;
      v64 = [v37 createDirectoryAtURL:v63 withIntermediateDirectories:1 attributes:0 error:v123];

      v65 = v123[0];
      if (v64)
      {
        strcpy(v123, "sandbox_id");
        BYTE3(v123[1]) = 0;
        HIDWORD(v123[1]) = -369098752;
        v67 = v120;
        v66 = v121;
        v113(v120, v114, v121);
        v68 = v65;
        v69 = v107;
        sub_1DC5109AC();
        v112(v67, v66);
        v70 = v116;
        (*(*v106 + 288))(v69);
        if (!v70)
        {
          strcpy(v123, "CDMSSUService");
          HIWORD(v123[1]) = -4864;
          v78 = v120;
          v77 = v121;
          v79 = OUTLINED_FUNCTION_26_11();
          v80(v79);
          v81 = v105;
          sub_1DC5109AC();
          v112(v78, v77);
          strcpy(v123, "installed_apps");
          HIBYTE(v123[1]) = -18;
          v82 = OUTLINED_FUNCTION_26_11();
          v83(v82);
          v84 = v115;
          sub_1DC5109AC();
          v112(v78, v77);
          v85 = v81;
          v86 = v117;
          v87 = v104;
          v104(v85, v117);
          v88 = sub_1DC51090C();
          v123[0] = 0;
          v89 = v118;
          LODWORD(v77) = [v118 createDirectoryAtURL:v88 withIntermediateDirectories:1 attributes:0 error:v123];

          v90 = v123[0];
          if (v77)
          {
            OUTLINED_FUNCTION_12_0();
            v92 = *(v91 + 296);
            v93 = v90;
            v92(v84);
            v94 = v107;
            OUTLINED_FUNCTION_12_0();
            (*(v98 + 304))(v84);
            v99 = v104;
            v104(v84, v86);
            v99(v94, v86);
            v100 = OUTLINED_FUNCTION_27_13();
            (v99)(v100);
            v101 = OUTLINED_FUNCTION_31_12();
            (v99)(v101);
            OUTLINED_FUNCTION_12_0();
            (*(v102 + 232))(1);

            goto LABEL_11;
          }

          v95 = v123[0];
          sub_1DC51085C();

          swift_willThrow();
          v87(v84, v86);
          v87(v107, v86);
          v96 = OUTLINED_FUNCTION_27_13();
          (v87)(v96);
          v97 = OUTLINED_FUNCTION_31_12();
          (v87)(v97);
          v56 = v89;
          v41 = v119;
          v51 = v87;
          v54 = v86;
          goto LABEL_10;
        }

        v71 = v69;
        v54 = v117;
        v51 = v104;
        v104(v71, v117);
        v51(v62, v54);
        v51(v111, v54);
      }

      else
      {
        v73 = v123[0];
        sub_1DC51085C();

        swift_willThrow();
        v74 = v104;
        v104(v62, v54);
        v75 = v58;
        v51 = v74;
        v74(v75, v54);
      }

      v56 = v118;
      v41 = v119;
    }

    else
    {
      v72 = v123[0];
      sub_1DC51085C();

      swift_willThrow();
    }

LABEL_10:
    type metadata accessor for SSUInferenceServiceStateBuilder();
    static SSUInferenceServiceStateBuilder.clean(serviceStateDirectory:)();
    swift_willThrow();

    v51(v41, v54);
    goto LABEL_11;
  }

  sub_1DC399C5C();
  v34 = OUTLINED_FUNCTION_33_1();
  OUTLINED_FUNCTION_18_16(v34, v35);
LABEL_11:
  v76 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_30_13();
  OUTLINED_FUNCTION_26_0();
}

void static SSUInferenceServiceStateBuilder.clean(serviceStateDirectory:)()
{
  v49[1] = *MEMORY[0x1E69E9840];
  v1 = sub_1DC5108BC();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_3();
  v7 = sub_1DC5109BC();
  v8 = OUTLINED_FUNCTION_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1();
  v13 = [objc_opt_self() defaultManager];
  (*(v4 + 104))(v0, *MEMORY[0x1E6968F70], v1);
  sub_1DC2A32B0();
  sub_1DC51098C();
  (*(v4 + 8))(v0, v1);
  sub_1DC51094C();
  v14 = sub_1DC5176FC();

  v15 = [v13 fileExistsAtPath_];

  if (v15)
  {
    sub_1DC5176DC();
    v27 = objc_opt_self();
    v28 = sub_1DC5176FC();

    v49[0] = 0;
    v29 = [v27 loadWithSandboxId:v28 error:v49];

    if (!v29)
    {
      v47 = v49[0];
      v48 = sub_1DC51085C();

      swift_willThrow();
      v16 = *(v10 + 8);
      v17 = OUTLINED_FUNCTION_16();
      v18(v17);
      v19 = sub_1DC517BAC();
      sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
      v20 = sub_1DC2C0F8C();
      if (os_log_type_enabled(v20, v19))
      {
        OUTLINED_FUNCTION_11();
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        *v21 = 138412290;
        v23 = v48;
        v24 = _swift_stdlib_bridgeErrorToNSError();
        *(v21 + 4) = v24;
        *v22 = v24;
        OUTLINED_FUNCTION_55_0(&dword_1DC287000, v25, v26, "Unable to reset CKVocabularySandbox: %@");
        sub_1DC28EB30(v22, &qword_1ECC7DFE0, &qword_1DC5227F0);
        OUTLINED_FUNCTION_8_0();
        MEMORY[0x1E1298840]();
        OUTLINED_FUNCTION_8_0();
        MEMORY[0x1E1298840]();
      }

      else
      {
      }

      goto LABEL_9;
    }

    v30 = v49[0];
    [v29 reset];
  }

  v31 = *(v10 + 8);
  v32 = OUTLINED_FUNCTION_16();
  v33(v32);
LABEL_9:
  v34 = sub_1DC51090C();
  v49[0] = 0;
  v35 = [v13 removeItemAtURL:v34 error:v49];

  if (v35)
  {
    v36 = v49[0];
  }

  else
  {
    v37 = v49[0];
    v38 = sub_1DC51085C();

    swift_willThrow();
    LOBYTE(v37) = sub_1DC517BAC();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v39 = sub_1DC2C0F8C();
    if (os_log_type_enabled(v39, v37))
    {
      OUTLINED_FUNCTION_11();
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 138412290;
      v42 = v38;
      v43 = _swift_stdlib_bridgeErrorToNSError();
      *(v40 + 4) = v43;
      *v41 = v43;
      OUTLINED_FUNCTION_55_0(&dword_1DC287000, v44, v45, "Unable to remove service state directory: %@");
      sub_1DC28EB30(v41, &qword_1ECC7DFE0, &qword_1DC5227F0);
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1E1298840]();
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1E1298840]();
    }

    else
    {
    }
  }

  v46 = *MEMORY[0x1E69E9840];
}

uint64_t SSUInferenceServiceStateBuilder.deinit()
{
  v1 = OBJC_IVAR____TtC13CDMFoundation31SSUInferenceServiceStateBuilder_locale;
  v2 = sub_1DC510C8C();
  OUTLINED_FUNCTION_35(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtC13CDMFoundation31SSUInferenceServiceStateBuilder_appIntentMetadataFiles);

  v5 = *(v0 + OBJC_IVAR____TtC13CDMFoundation31SSUInferenceServiceStateBuilder_appBundles);

  v6 = *(v0 + OBJC_IVAR____TtC13CDMFoundation31SSUInferenceServiceStateBuilder_kvAppItems);

  v7 = *(v0 + OBJC_IVAR____TtC13CDMFoundation31SSUInferenceServiceStateBuilder_kvBundleEntityDatasets);

  return v0;
}

uint64_t SSUInferenceServiceStateBuilder.__deallocating_deinit()
{
  SSUInferenceServiceStateBuilder.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

id sub_1DC39D730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v7 = sub_1DC5176FC();

  v13[0] = 0;
  v8 = [v4 initWithItemType:a1 originAppId:v7 itemCount:a4 error:v13];

  if (v8)
  {
    v9 = v13[0];
  }

  else
  {
    v10 = v13[0];
    sub_1DC51085C();

    swift_willThrow();
  }

  v11 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t sub_1DC39D82C(uint64_t a1, id *a2)
{
  result = sub_1DC51770C();
  *a2 = 0;
  return result;
}

uint64_t sub_1DC39D8A8(uint64_t a1, id *a2)
{
  v3 = sub_1DC51771C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1DC39D928@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DC39ECE0();
  *a1 = result;
  return result;
}

uint64_t sub_1DC39D958()
{
  v0 = sub_1DC51772C();
  v1 = MEMORY[0x1E1296210](v0);

  return v1;
}

uint64_t sub_1DC39D998()
{
  sub_1DC51772C();
  sub_1DC51769C();
}

uint64_t sub_1DC39D9F4()
{
  sub_1DC51772C();
  sub_1DC5182FC();
  sub_1DC51769C();
  v0 = sub_1DC51833C();

  return v0;
}

uint64_t sub_1DC39DA68()
{
  v0 = sub_1DC51772C();
  v2 = v1;
  if (v0 == sub_1DC51772C() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1DC51825C();
  }

  return v5 & 1;
}

uint64_t sub_1DC39DAEC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1DC39DA68();
}

uint64_t sub_1DC39DAF8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1DC5176FC();

  *a2 = v5;
  return result;
}

uint64_t sub_1DC39DB40@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DC39DB6C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DC39DB70(uint64_t a1)
{
  v2 = sub_1DC39ED18(&qword_1ECC7D110);
  v3 = sub_1DC39ED18(&qword_1ECC7D118);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

size_t sub_1DC39DC08(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v9 = *v4;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v9;
  if (!result)
  {
    result = sub_1DC39DCD4(result, *(v9 + 16) + 1, 1, v9, a1, a2, a3, a4);
    *v4 = result;
  }

  return result;
}

size_t sub_1DC39DC84(size_t result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v6 = *(*v5 + 24);
  if ((result + 1) > (v6 >> 1))
  {
    result = sub_1DC39DCD4(v6 > 1, result + 1, 1, *v5, a2, a3, a4, a5);
    *v5 = result;
  }

  return result;
}

size_t sub_1DC39DCD4(size_t result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
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

  v14 = *(a4 + 16);
  v15 = sub_1DC39DDE8(v14, v13, a5, a6, a7, a8);
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8) + 80);
  OUTLINED_FUNCTION_24();
  if (v11)
  {
    sub_1DC39DEE8(a4 + v17, v14, v15 + v17, a7, a8);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v15;
}

size_t sub_1DC39DDE8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  if (a2 <= a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (!v6)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a5, a6) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (v11)
  {
    if (result - v12 != 0x8000000000000000 || v11 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * ((result - v12) / v11);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DC39DEE8(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a3 < a1 || (v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5), result = OUTLINED_FUNCTION_35(v10), a1 + *(v12 + 72) * a2 <= a3))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    OUTLINED_FUNCTION_52_0();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_52_0();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void (*sub_1DC39DFBC(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v7 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v7;
  v8 = *v3;
  swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_1DC39E2D0(v7);
  v7[9] = sub_1DC39E0B4(v7 + 4, a2, a3);
  return sub_1DC39E054;
}

void sub_1DC39E054(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_1DC39E0B4(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1)
{
  v4 = v3;
  v8 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v8;
  v8[2] = a3;
  v8[3] = v3;
  v8[1] = a2;
  v9 = *v3;
  v10 = sub_1DC2AEB04(a2, a3);
  *(v8 + 40) = v11 & 1;
  if (__OFADD__(*(v9 + 16), (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D128, &qword_1DC526D90);
  if (sub_1DC517FFC())
  {
    v14 = *v4;
    v15 = sub_1DC2AEB04(a2, a3);
    if ((v13 & 1) == (v16 & 1))
    {
      v12 = v15;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_1DC51829C();
    __break(1u);
    return result;
  }

LABEL_5:
  v8[4] = v12;
  if (v13)
  {
    v17 = *(*(*v4 + 56) + 8 * v12);
  }

  else
  {
    v17 = 0;
  }

  *v8 = v17;
  return sub_1DC39E1F4;
}

void sub_1DC39E1F4(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 40);
  if (v2)
  {
    v4 = v1[4];
    v5 = *v1[3];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      sub_1DC361B0C(v4, v1[1], v1[2], v2, v5);
    }
  }

  else if ((*a1)[5])
  {
    sub_1DC39ED5C(*(*v1[3] + 48) + 16 * v1[4]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D130, &qword_1DC526D98);
    sub_1DC51800C();
  }

  v6 = *v1;

  free(v1);
}

uint64_t (*sub_1DC39E2D0(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1DC39E2F8;
}

uint64_t sub_1DC39E304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1DC2AEB04(a2, a3);
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D128, &qword_1DC526D90);
  if ((sub_1DC517FFC() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = *v4;
  v14 = sub_1DC2AEB04(a2, a3);
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_1DC51829C();
    __break(1u);
    return result;
  }

  v11 = v14;
LABEL_5:
  v16 = *v4;
  if (v12)
  {
    v17 = v16[7];
    v18 = *(v17 + 8 * v11);
    *(v17 + 8 * v11) = a1;
  }

  else
  {
    sub_1DC361B0C(v11, a2, a3, a1, v16);
  }
}

void sub_1DC39E440(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16) && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D120, &qword_1DC526D88), v2 = sub_1DC517F0C(), v3 = v2, (v26 = *(v1 + 16)) != 0))
  {
    v4 = 0;
    v5 = v2 + 56;
    v24 = v1;
    v25 = v1 + 32;
    while (v4 < *(v1 + 16))
    {
      v6 = *(v25 + 8 * v4++);
      v7 = *(v3 + 40);
      sub_1DC51772C();
      sub_1DC5182FC();
      v27 = v6;
      sub_1DC51769C();
      v8 = sub_1DC51833C();

      v9 = ~(-1 << *(v3 + 32));
      while (1)
      {
        v10 = v8 & v9;
        v11 = (v8 & v9) >> 6;
        v12 = *(v5 + 8 * v11);
        v13 = 1 << (v8 & v9);
        if ((v13 & v12) == 0)
        {
          break;
        }

        v14 = *(*(v3 + 48) + 8 * v10);
        v15 = sub_1DC51772C();
        v17 = v16;
        if (v15 == sub_1DC51772C() && v17 == v18)
        {

          goto LABEL_17;
        }

        v20 = sub_1DC51825C();

        if (v20)
        {

          goto LABEL_17;
        }

        v8 = v10 + 1;
      }

      *(v5 + 8 * v11) = v13 | v12;
      *(*(v3 + 48) + 8 * v10) = v27;
      v21 = *(v3 + 16);
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_20;
      }

      *(v3 + 16) = v23;
LABEL_17:
      v1 = v24;
      if (v4 == v26)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:
  }
}

id sub_1DC39E644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_1DC5176FC();
  v9 = [a5 addFieldWithType:a1 value:v8 error:a4];

  return v9;
}

id sub_1DC39E6B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_1DC5176FC();

  v9 = [a5 addFieldWithType:a1 value:v8 error:a4];

  return v9;
}

id sub_1DC39E738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  type metadata accessor for URLResourceKey();
  v9 = sub_1DC517A0C();

  v10 = [a5 contentsOfDirectoryAtURL:a1 includingPropertiesForKeys:v9 options:a3 error:a4];

  return v10;
}

uint64_t type metadata accessor for SSUInferenceServiceStateBuilder()
{
  result = qword_1ECC87E60;
  if (!qword_1ECC87E60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1DC39E81C()
{
  result = qword_1ECC7D0E8;
  if (!qword_1ECC7D0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7D0E8);
  }

  return result;
}

uint64_t sub_1DC39E878()
{
  result = sub_1DC510C8C();
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

uint64_t getEnumTagSinglePayload for SSUInferenceServiceStateBuilder.StateBuilderError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SSUInferenceServiceStateBuilder.StateBuilderError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

void type metadata accessor for URLResourceKey()
{
  if (!qword_1ECC7D0F0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1ECC7D0F0);
    }
  }
}

uint64_t sub_1DC39ECE0()
{
  sub_1DC51772C();
  v0 = sub_1DC5176FC();

  return v0;
}

uint64_t sub_1DC39ED18(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for URLResourceKey();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DC39EDB0()
{
  OUTLINED_FUNCTION_33();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C150, &qword_1DC522EF8);
  OUTLINED_FUNCTION_38_2();
  v0 = sub_1DC5172FC();
  OUTLINED_FUNCTION_0(v0);
  v2 = v1;
  v4 = *(v3 + 72);
  v5 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DC522F10;
  v7 = (v6 + v5);
  v8 = swift_allocObject();
  v9 = sub_1DC3EAADC();
  v10 = v9[1];
  v8[2] = *v9;
  v8[3] = v10;
  v8[4] = 0xD000000000000012;
  v8[5] = 0x80000001DC543F60;
  *v7 = v8;
  v11 = *MEMORY[0x1E69DB098];
  v12 = *(v2 + 104);
  v12(v7, v11, v0);
  v13 = swift_allocObject();

  v14 = sub_1DC3EAAE8();
  v15 = *(v14 + 1);
  v13[2] = *v14;
  v13[3] = v15;
  v13[4] = 0xD000000000000012;
  v13[5] = 0x80000001DC543F60;
  *(v7 + v4) = v13;
  v12((v7 + v4), v11, v0);
  qword_1ECC8F950 = v6;
  OUTLINED_FUNCTION_34();
}

void sub_1DC39EF40()
{
  OUTLINED_FUNCTION_33();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1A8, &qword_1DC526A90);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v14 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1B0, &qword_1DC522F88);
  v8 = *(v1 + 72);
  v9 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1DC522F20;
  sub_1DC51641C();
  v15 = MEMORY[0x1E69E7CC0];
  sub_1DC2E5748(0, 1, 0);
  v11 = v15;
  (*(v1 + 16))(v5, v10 + v9, v0);

  sub_1DC51643C();
  (*(v1 + 8))(v5, v0);
  v13 = *(v11 + 16);
  v12 = *(v11 + 24);
  if (v13 >= v12 >> 1)
  {
    sub_1DC2E5748(v12 > 1, v13 + 1, 1);
    v11 = v15;
  }

  *(v11 + 16) = v13 + 1;
  (*(v1 + 32))(v11 + v9 + v13 * v8, v7, v0);
  qword_1ECC8F958 = v11;
  OUTLINED_FUNCTION_34();
}

void sub_1DC39F16C()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v454 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BEB8, &unk_1DC527150);
  OUTLINED_FUNCTION_10(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v8);
  v425 = &v405 - v9;
  OUTLINED_FUNCTION_12();
  v444 = sub_1DC51164C();
  v10 = OUTLINED_FUNCTION_0(v444);
  v456 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15();
  v422 = v14;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_23_1();
  v440 = v16;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_23_1();
  v442 = v18;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_23_1();
  v429 = v20;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_23_1();
  v443 = v22;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_62();
  v430 = v24;
  OUTLINED_FUNCTION_12();
  v25 = sub_1DC51122C();
  v458 = OUTLINED_FUNCTION_0(v25);
  v459 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v458);
  OUTLINED_FUNCTION_15();
  v449 = v29;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_23_1();
  v423 = v31;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_23_1();
  v431 = v33;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_23_1();
  v450 = v35;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_62();
  v441 = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CA40, &unk_1DC5233A0);
  v39 = OUTLINED_FUNCTION_10(v38);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_15();
  v434 = v42;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_23_1();
  v416 = v44;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_23_1();
  v438 = v46;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_23_1();
  v428 = v48;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_23_1();
  v436 = v50;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_23_1();
  v426 = v52;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_62();
  v437 = v54;
  OUTLINED_FUNCTION_12();
  v457 = sub_1DC5157EC();
  v55 = OUTLINED_FUNCTION_0(v457);
  v447 = v56;
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_15();
  v413 = v59;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_23_1();
  v421 = v61;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_23_1();
  v412 = v63;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_23_1();
  v414 = v65;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_23_1();
  v427 = v67;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_23_1();
  v435 = v69;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_23_1();
  v415 = v71;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_23_1();
  v424 = v73;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_23_1();
  v419 = v75;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_23_1();
  v433 = v77;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_23_1();
  v417 = v79;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_23_1();
  v420 = v81;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_23_1();
  v439 = v83;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_23_1();
  v418 = v85;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_23_1();
  v432 = v87;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v88);
  OUTLINED_FUNCTION_62();
  v445 = v89;
  v90 = OUTLINED_FUNCTION_55();
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(v90, v91);
  OUTLINED_FUNCTION_10(v92);
  v94 = *(v93 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v95);
  v97 = &v405 - v96;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C160, qword_1DC5233B0);
  OUTLINED_FUNCTION_10(v98);
  v100 = *(v99 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v101);
  OUTLINED_FUNCTION_95();
  v102 = type metadata accessor for NLRouterNLParseResponse(0);
  v103 = OUTLINED_FUNCTION_35(v102);
  v105 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v103);
  OUTLINED_FUNCTION_2_1();
  v446 = v106;
  OUTLINED_FUNCTION_12();
  v107 = sub_1DC516F5C();
  v108 = OUTLINED_FUNCTION_0(v107);
  v452 = v109;
  v453 = v108;
  v111 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v108);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_64();
  v112 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v113 = sub_1DC2BE518();
  v114 = OUTLINED_FUNCTION_130();
  v451 = v1;
  v455 = v112;
  sub_1DC2A2ED0("HeuristicRules.EmailRule", 24, 2, v113, v114 & 1, v1);

  v115 = *(type metadata accessor for NLRouterServiceRequest(0) + 32);
  v448 = v3;
  sub_1DC28F358(v3 + v115, v97, &qword_1ECC7C158, &unk_1DC5234A0);
  v116 = type metadata accessor for NLRouterTurnProbingResult(0);
  OUTLINED_FUNCTION_39(v97, 1, v116);
  if (v125)
  {
    sub_1DC28EB30(v97, &qword_1ECC7C158, &unk_1DC5234A0);
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v117, v118, v119, v102);
LABEL_6:
    sub_1DC28EB30(v0, &qword_1ECC7C160, qword_1DC5233B0);
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v126, v127, v128, v457);
    goto LABEL_165;
  }

  v120 = OUTLINED_FUNCTION_87_1();
  sub_1DC28F358(v120, v121, v122, v123);
  OUTLINED_FUNCTION_47_9();
  sub_1DC3A5DA0(v97, v124);
  OUTLINED_FUNCTION_39(v0, 1, v102);
  if (v125)
  {
    goto LABEL_6;
  }

  sub_1DC2E53A4(v0, v446);
  v407 = type metadata accessor for HeuristicRoutingRequest(0);
  v129 = *(v407 + 20);
  v130 = *(v447 + 16);
  v409 = v447 + 16;
  v410 = v129;
  v408 = v130;
  (v130)(v445, v448 + v129, v457);
  v131 = sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
  v132 = sub_1DC343BE4();
  v134 = v133;
  v135 = sub_1DC312FB4(0);
  v137 = v136;
  v138 = v132 == v135 && v134 == v136;
  v411 = v131;
  if (v138)
  {

    goto LABEL_19;
  }

  OUTLINED_FUNCTION_95_2();
  OUTLINED_FUNCTION_99_1();

  if ((v113 & 1) == 0)
  {
    sub_1DC343BE4();
    sub_1DC312F68();
    OUTLINED_FUNCTION_43_0();
    if (v125)
    {
      v113 = v437;
      OUTLINED_FUNCTION_19();
      __swift_storeEnumTagSinglePayload(v140, v141, v142, v457);
    }

    else
    {
      v113 = v437;
      sub_1DC312E7C(v139, v437);
      v143 = OUTLINED_FUNCTION_100();
      v144 = v457;
      OUTLINED_FUNCTION_39(v143, v145, v457);
      if (!v146)
      {
        (*(v447 + 32))(v432, v113, v144);
        OUTLINED_FUNCTION_24_10();
        v437 = v208;
        v0 = v209 + 1;
        v1 = v459;
        do
        {
          if (v97 == v137)
          {
            (*(v447 + 8))(v432, v457);
            v131 = v411;
            goto LABEL_19;
          }

          if (v137 >= *(v132 + 16))
          {
            goto LABEL_191;
          }

          OUTLINED_FUNCTION_15_10();
          v210(v441);
          ++v137;
          sub_1DC5111AC();
          sub_1DC3A1308();
          OUTLINED_FUNCTION_99_1();
          v211 = OUTLINED_FUNCTION_78_7();
          v212(v211);
        }

        while ((v113 & 1) == 0);
        v213 = sub_1DC517B9C();
        v214 = sub_1DC2BE518();
        v215 = v418;
        v0 = v457;
        OUTLINED_FUNCTION_102_3();
        v216();
        if (os_log_type_enabled(v214, v213))
        {
          OUTLINED_FUNCTION_140();
          v441 = OUTLINED_FUNCTION_54_13();
          v461[0] = v441;
          *v132 = 136315394;
          LODWORD(v437) = v213;
          v113 = v445;
          v217 = OUTLINED_FUNCTION_36_7();
          v406 = v214;
          v218 = j___s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0O13CDMFoundationE16debugDescriptionSSvg(v217);
          OUTLINED_FUNCTION_93_1(v218, v219);
          OUTLINED_FUNCTION_91_2();
          OUTLINED_FUNCTION_25_11();
          j___s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0O13CDMFoundationE16debugDescriptionSSvg(v220);
          OUTLINED_FUNCTION_238();
          v221 = OUTLINED_FUNCTION_63_8();
          v3(v221);
          OUTLINED_FUNCTION_55_12();
          OUTLINED_FUNCTION_57_11();

          *(v132 + 14) = v215;
          v222 = v406;
          _os_log_impl(&dword_1DC287000, v406, v437, "[EmailRule] triggered by isReadEmail. Updating routing from %s to %s", v132, 0x16u);
          OUTLINED_FUNCTION_94_3();
          OUTLINED_FUNCTION_42();
          OUTLINED_FUNCTION_66();
        }

        else
        {

          v373 = OUTLINED_FUNCTION_63_8();
          v3(v373);
          v113 = v445;
        }

        v131 = v411;
        OUTLINED_FUNCTION_36_7();
        v132 = v439;
        v1 = v432;
        sub_1DC32DE40();
        (v3)(v1, v0);
        OUTLINED_FUNCTION_142();
        v374 = *(v137 + 40);
        v137 += 40;
        v375 = OUTLINED_FUNCTION_45_2();
        v376(v375);
        goto LABEL_19;
      }
    }

    sub_1DC28EB30(v113, &qword_1ECC7CA40, &unk_1DC5233A0);
  }

LABEL_19:
  sub_1DC343B08();
  OUTLINED_FUNCTION_60_10();
  OUTLINED_FUNCTION_88_1();
  if (v125)
  {
    v148 = v131 == v147;
  }

  else
  {
    v148 = 0;
  }

  if (v148)
  {

    goto LABEL_32;
  }

  OUTLINED_FUNCTION_19_16();
  OUTLINED_FUNCTION_97();

  if (v137)
  {
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_24_10();
  v441 = v149;
  v0 = v150 + 1;
  v1 = v459;
  do
  {
    if (v97 == v137)
    {
      goto LABEL_32;
    }

    if (v137 >= *(v132 + 16))
    {
      __break(1u);
LABEL_187:
      __break(1u);
LABEL_188:
      __break(1u);
LABEL_189:
      __break(1u);
LABEL_190:
      __break(1u);
LABEL_191:
      __break(1u);
LABEL_192:
      __break(1u);
      goto LABEL_193;
    }

    OUTLINED_FUNCTION_15_10();
    v151(v450);
    ++v137;
    v152 = sub_1DC5111AC();
    sub_1DC3A1A9C(v152, v153, v154, v155, v156, v157, v158, v159, v405, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, v416);
    OUTLINED_FUNCTION_99_1();
    v160 = OUTLINED_FUNCTION_78_7();
    v161(v160);
  }

  while ((v113 & 1) == 0);
  sub_1DC343B08();
  sub_1DC312F68();
  OUTLINED_FUNCTION_43_0();
  if (v125)
  {
    v276 = v426;
    v163 = OUTLINED_FUNCTION_13_16();
    __swift_storeEnumTagSinglePayload(v163, v164, v165, v457);
  }

  else
  {
    v276 = v426;
    sub_1DC312E7C(v162, v426);
    v277 = OUTLINED_FUNCTION_34_11();
    v0 = v457;
    OUTLINED_FUNCTION_39(v277, v278, v457);
    if (!v279)
    {
      OUTLINED_FUNCTION_76_5();
      v337(v420, v276, v0);
      v338 = sub_1DC517B9C();
      v113 = sub_1DC2BE518();
      v339 = v417;
      OUTLINED_FUNCTION_102_3();
      v340();
      if (os_log_type_enabled(v113, v338))
      {
        OUTLINED_FUNCTION_140();
        LODWORD(v441) = v338;
        v450 = OUTLINED_FUNCTION_54_13();
        v461[0] = v450;
        *v338 = 136315394;
        v137 = v445;
        v342 = OUTLINED_FUNCTION_48();
        v1 = v97;
        v343 = j___s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0O13CDMFoundationE16debugDescriptionSSvg(v342);
        OUTLINED_FUNCTION_93_1(v343, v344);
        OUTLINED_FUNCTION_91_2();
        OUTLINED_FUNCTION_25_11();
        j___s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0O13CDMFoundationE16debugDescriptionSSvg(v345);
        OUTLINED_FUNCTION_238();
        OUTLINED_FUNCTION_10_20(v97);
        v346 = OUTLINED_FUNCTION_87_1();
        (v97)(v346);
        OUTLINED_FUNCTION_55_12();
        OUTLINED_FUNCTION_57_11();

        *(v338 + 14) = v339;
        OUTLINED_FUNCTION_61_5(&dword_1DC287000, v347, v441, "[EmailRule] triggered by isEmailDomainTaskForPlanner. Updating routing from %s to %s");
        OUTLINED_FUNCTION_94_3();
        OUTLINED_FUNCTION_42();
        OUTLINED_FUNCTION_66();

        v97 = v447;
      }

      else
      {

        OUTLINED_FUNCTION_10_20(v97);
        v377 = OUTLINED_FUNCTION_152();
        (v1)(v377);
        v137 = v445;
      }

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_9_20();
      sub_1DC32F9DC();
      v378 = OUTLINED_FUNCTION_78_6();
      (v1)(v378);
      OUTLINED_FUNCTION_142();
      v379 = OUTLINED_FUNCTION_32_10();
      v380(v379);
      goto LABEL_32;
    }
  }

  sub_1DC28EB30(v276, &qword_1ECC7CA40, &unk_1DC5233A0);
LABEL_32:
  v166 = v411;
  v167 = v411;
  sub_1DC343CC0();
  OUTLINED_FUNCTION_60_10();
  OUTLINED_FUNCTION_88_1();
  if (v125)
  {
    v169 = v167 == v168;
  }

  else
  {
    v169 = 0;
  }

  if (v169)
  {

    v132 = v457;
    goto LABEL_44;
  }

  OUTLINED_FUNCTION_19_16();
  OUTLINED_FUNCTION_97();

  v132 = v457;
  if (v137)
  {
    goto LABEL_44;
  }

  sub_1DC343CC0();
  sub_1DC312F68();
  OUTLINED_FUNCTION_43_0();
  if (v125)
  {
    v113 = v436;
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v171, v172, v173, v132);
LABEL_43:
    sub_1DC28EB30(v113, &qword_1ECC7CA40, &unk_1DC5233A0);
    goto LABEL_44;
  }

  v113 = v436;
  sub_1DC312E7C(v170, v436);
  OUTLINED_FUNCTION_5_3(v113);
  if (v174)
  {
    goto LABEL_43;
  }

  v223 = v447;
  (*(v447 + 32))(v433, v113, v132);
  v426 = *(*v446 + 16);
  if (v426)
  {
    v113 = 0;
    OUTLINED_FUNCTION_39_9();
    v436 = v226;
    v420 = v224;
    v417 = v227;
    v418 = v225;
    while (v113 < *(v224 + 16))
    {
      (*(v459 + 16))(v431, v225 + *(v459 + 72) * v113, v458);
      v432 = v113 + 1;
      v137 = sub_1DC5111AC();
      v97 = 0;
      v1 = *(v137 + 16);
      v113 = MEMORY[0x1E69E7CC0];
      v228 = v444;
LABEL_72:
      v229 = v430;
      while (v1 != v97)
      {
        if (v97 >= *(v137 + 16))
        {
          goto LABEL_188;
        }

        OUTLINED_FUNCTION_81_3();
        v132 = *(v230 + 72);
        (*(v230 + 16))(v229, v231 + v132 * v97, v228);
        if (sub_1DC5114CC())
        {
          v437 = *v441;
          v437(v429, v229, v228);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v461[0] = v113;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            OUTLINED_FUNCTION_111_2(*(v113 + 16));
            v228 = v444;
            v113 = v461[0];
          }

          v234 = *(v113 + 16);
          v233 = *(v113 + 24);
          v235 = v234 + 1;
          if (v234 >= v233 >> 1)
          {
            v236 = v234 + 1;
            v237 = *(v113 + 16);
            sub_1DC3A5718(v233 > 1, v234 + 1, 1);
            v235 = v236;
            v234 = v237;
            v228 = v444;
            v113 = v461[0];
          }

          ++v97;
          *(v113 + 16) = v235;
          v437(v0 + v113 + v234 * v132, v429, v228);
          goto LABEL_72;
        }

        (*v166)(v229, v228);
        ++v97;
      }

      v137 = 0;
      v132 = *(v113 + 16);
      while (v132 != v137)
      {
        if (v137 >= *(v113 + 16))
        {
          goto LABEL_189;
        }

        v0 = v456;
        isa_low = LOBYTE(v456[10].isa);
        OUTLINED_FUNCTION_24();
        v1 = v443;
        v97 = v444;
        (v0[2].isa)(v443, v113 + v239 + v0[9].isa * v137, v444);
        sub_1DC3A4698();
        v241 = v240;
        ++v137;
        (v0[1].isa)(v1, v97);
        if (v241)
        {
          v287 = OUTLINED_FUNCTION_104_0();
          v288(v287);

          sub_1DC517B9C();
          v113 = OUTLINED_FUNCTION_113_4();
          v289 = v419;
          v0 = v457;
          OUTLINED_FUNCTION_102_3();
          v290();
          if (OUTLINED_FUNCTION_112_3())
          {
            OUTLINED_FUNCTION_140();
            v450 = OUTLINED_FUNCTION_54_13();
            v461[0] = v450;
            *v132 = 136315394;
            v97 = v445;
            v292 = OUTLINED_FUNCTION_36_7();
            v443 = v113;
            v293 = j___s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0O13CDMFoundationE16debugDescriptionSSvg(v292);
            OUTLINED_FUNCTION_93_1(v293, v294);
            OUTLINED_FUNCTION_91_2();
            OUTLINED_FUNCTION_25_11();
            j___s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0O13CDMFoundationE16debugDescriptionSSvg(v295);
            OUTLINED_FUNCTION_238();
            LODWORD(v441) = v137;
            v296 = v447;
            OUTLINED_FUNCTION_10_20(v447);
            (v1)(v289, v0);
            OUTLINED_FUNCTION_55_12();
            OUTLINED_FUNCTION_57_11();

            *(v132 + 14) = v289;
            v113 = v443;
            OUTLINED_FUNCTION_61_5(&dword_1DC287000, v297, v441, "[EmailRule] triggered by isCheckRequestsummariseEmailRoutable for PQA. Updating routing from %s to %s");
            OUTLINED_FUNCTION_94_3();
            OUTLINED_FUNCTION_42();
            OUTLINED_FUNCTION_66();
          }

          else
          {

            v296 = v447;
            OUTLINED_FUNCTION_10_20(v447);
            v356 = OUTLINED_FUNCTION_152();
            (v1)(v356);
            v97 = v445;
          }

          v166 = v411;
          OUTLINED_FUNCTION_36_7();
          OUTLINED_FUNCTION_9_20();
          sub_1DC32F9DC();
          v357 = OUTLINED_FUNCTION_78_6();
          (v1)(v357);
          OUTLINED_FUNCTION_142();
          v358 = *(v296 + 40);
          v137 = v296 + 40;
          v358(v97, v113, v0);
          v132 = v0;
          goto LABEL_44;
        }
      }

      v242 = OUTLINED_FUNCTION_104_0();
      v243(v242);

      v113 = v432;
      v223 = v447;
      v224 = v420;
      v225 = v418;
      if (v432 == v426)
      {
        goto LABEL_88;
      }
    }

LABEL_193:
    __break(1u);
LABEL_194:
    __break(1u);
LABEL_195:
    OUTLINED_FUNCTION_53_11();
LABEL_152:
    sub_1DC30A498();
    if ((v321 & 1) == 0)
    {
      goto LABEL_160;
    }

    if (qword_1EDAC9518 != -1)
    {
      OUTLINED_FUNCTION_56_12();
    }

    sub_1DC30A0F8();
    if (v322)
    {
      sub_1DC517B9C();
      v323 = OUTLINED_FUNCTION_113_4();
      v324 = v413;
      v266 = v457;
      (v408)(v413, v132, v457);
      if (OUTLINED_FUNCTION_112_3())
      {
        v325 = swift_slowAlloc();
        v459 = swift_slowAlloc();
        v460[0] = v459;
        *v325 = 136315650;
        LODWORD(v458) = v137;
        v326 = v324;
        sub_1DC344030();
        v327 = v461[0];
        v328 = v461[1];

        sub_1DC28EB30(v461, &qword_1ECC7C168, &qword_1DC522F30);
        sub_1DC291244(v327, v328, v460);
        OUTLINED_FUNCTION_57_11();

        *(v325 + 4) = v327;
        *(v325 + 12) = 2080;
        v456 = v323;
        v329 = v445;
        v330 = OUTLINED_FUNCTION_36_7();
        v331 = j___s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0O13CDMFoundationE16debugDescriptionSSvg(v330);
        sub_1DC291244(v331, v332, v460);
        v333 = OUTLINED_FUNCTION_91_2();
        *(v325 + 14) = v328;
        *(v325 + 22) = 2080;
        j___s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0O13CDMFoundationE16debugDescriptionSSvg(v333);
        OUTLINED_FUNCTION_238();
        v334 = v447;
        OUTLINED_FUNCTION_10_20(v447);
        (v1)(v326, v266);
        sub_1DC291244(v326, v328, v460);
        OUTLINED_FUNCTION_57_11();

        *(v325 + 24) = v326;
        v335 = v334;
        v336 = v456;
        _os_log_impl(&dword_1DC287000, v456, v458, "[EmailRule] triggered by %s. Updating routing from %s to %s", v325, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_42();
        v132 = v421;
        OUTLINED_FUNCTION_66();
      }

      else
      {

        v335 = v447;
        OUTLINED_FUNCTION_10_20(v447);
        (v1)(v324, v266);
        v329 = v445;
      }

      OUTLINED_FUNCTION_36_7();
      v399 = v448 + *(v407 + 36);
      v400 = v439;
      sub_1DC32F9DC();
      (v1)(v132, v266);
      OUTLINED_FUNCTION_142();
      (*(v335 + 40))(v329, v400, v266);
    }

    else
    {
LABEL_160:
      v266 = v457;
      (*(v113 + 8))(v132, v457);
    }

    goto LABEL_161;
  }

LABEL_88:
  v132 = v457;
  (*(v223 + 8))(v433, v457);
  v166 = v411;
LABEL_44:
  sub_1DC343D9C();
  OUTLINED_FUNCTION_60_10();
  OUTLINED_FUNCTION_88_1();
  if (v125)
  {
    v176 = v166 == v175;
  }

  else
  {
    v176 = 0;
  }

  if (v176)
  {

    goto LABEL_54;
  }

  OUTLINED_FUNCTION_19_16();
  OUTLINED_FUNCTION_97();

  if ((v137 & 1) == 0)
  {
    v184 = v447;
    v137 = v439;
    (*(v447 + 104))(v439, *MEMORY[0x1E69D02F8], v132);
    v185 = sub_1DC5157DC();
    v186 = *(v184 + 8);
    v113 = v184 + 8;
    v97 = v186;
    v187 = OUTLINED_FUNCTION_55();
    v186(v187);
    if (v185)
    {
      sub_1DC343D9C();
      sub_1DC312F68();
      OUTLINED_FUNCTION_43_0();
      if (v125)
      {
        v244 = v428;
        v189 = OUTLINED_FUNCTION_13_16();
        __swift_storeEnumTagSinglePayload(v189, v190, v191, v132);
      }

      else
      {
        v244 = v428;
        sub_1DC312E7C(v188, v428);
        OUTLINED_FUNCTION_5_3(v244);
        if (!v245)
        {
          (*(v447 + 32))(v424, v244, v132);
          v430 = *(*v446 + 16);
          if (!v430)
          {
LABEL_150:
            (v97)(v424, v132);
            v166 = v411;
            goto LABEL_54;
          }

          v137 = 0;
          OUTLINED_FUNCTION_39_9();
          v432 = v300;
          v433 = v97;
          v436 = v113;
          v428 = v299;
          v429 = v298;
          v426 = v301;
          while (v137 < *(v298 + 16))
          {
            (*(v459 + 16))(v423, v299 + *(v459 + 72) * v137, v458);
            v431 = v137 + 1;
            v137 = sub_1DC5111AC();
            v302 = 0;
            v132 = *(v137 + 16);
            v443 = MEMORY[0x1E69E7CC0];
            v113 = v444;
            while (v132 != v302)
            {
              v303 = v442;
              if (v302 >= *(v137 + 16))
              {
                goto LABEL_190;
              }

              OUTLINED_FUNCTION_81_3();
              v1 = *(v304 + 72);
              (*(v304 + 16))(v303, v305 + v1 * v302, v113);
              if (sub_1DC5114CC())
              {
                v437 = *v441;
                v437(v422, v303, v113);
                v306 = v443;
                v307 = swift_isUniquelyReferenced_nonNull_native();
                v461[0] = v306;
                if ((v307 & 1) == 0)
                {
                  OUTLINED_FUNCTION_111_2(*(v306 + 16));
                  v113 = v444;
                  v306 = v461[0];
                }

                v309 = *(v306 + 16);
                v308 = *(v306 + 24);
                v310 = v309 + 1;
                if (v309 >= v308 >> 1)
                {
                  sub_1DC3A5718(v308 > 1, v309 + 1, 1);
                  v310 = v309 + 1;
                  v113 = v444;
                  v306 = v461[0];
                }

                ++v302;
                *(v306 + 16) = v310;
                v443 = v306;
                v437(v0 + v306 + v309 * v1, v422, v113);
              }

              else
              {
                (*v166)(v303, v113);
                ++v302;
              }
            }

            v137 = 0;
            v113 = v443;
            v132 = *(v443 + 16);
            v311 = v457;
            while (v132 != v137)
            {
              v312 = v444;
              if (v137 >= *(v113 + 16))
              {
                goto LABEL_192;
              }

              v313 = v456;
              v314 = LOBYTE(v456[10].isa);
              OUTLINED_FUNCTION_24();
              v0 = v440;
              (v313[2].isa)(v440, v113 + v315 + v313[9].isa * v137, v312);
              sub_1DC3A4698();
              v316 = v312;
              v318 = v317;
              ++v137;
              (v313[1].isa)(v0, v316);
              if (v318)
              {
                v359 = OUTLINED_FUNCTION_108_0();
                v360(v359);

                sub_1DC517B9C();
                v361 = OUTLINED_FUNCTION_113_4();
                v1 = v415;
                v132 = v311;
                (v408)(v415, v424, v311);
                if (OUTLINED_FUNCTION_112_3())
                {
                  OUTLINED_FUNCTION_140();
                  v456 = OUTLINED_FUNCTION_54_13();
                  v461[0] = v456;
                  *v311 = 136315394;
                  v363 = v445;
                  v364 = OUTLINED_FUNCTION_36_7();
                  v365 = j___s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0O13CDMFoundationE16debugDescriptionSSvg(v364);
                  OUTLINED_FUNCTION_93_1(v365, v366);
                  OUTLINED_FUNCTION_91_2();
                  OUTLINED_FUNCTION_25_11();
                  v367 = v1;
                  j___s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0O13CDMFoundationE16debugDescriptionSSvg(v368);
                  OUTLINED_FUNCTION_238();
                  v369 = v1;
                  v1 = v436;
                  v370 = v433;
                  (v433)(v369, v311);
                  OUTLINED_FUNCTION_55_12();
                  OUTLINED_FUNCTION_57_11();

                  *(v311 + 14) = v367;
                  OUTLINED_FUNCTION_61_5(&dword_1DC287000, v371, v137, "[EmailRule] triggered by isCheckRequestsummariseEmailRoutable not for PQA. Updating routing from %s to %s");
                  OUTLINED_FUNCTION_94_3();
                  OUTLINED_FUNCTION_42();
                  v132 = v311;
                  v372 = v370;
                  v97 = v1;
                  OUTLINED_FUNCTION_66();
                }

                else
                {

                  v385 = v311;
                  v97 = v436;
                  v372 = v433;
                  (v433)(v1, v385);
                  v363 = v445;
                }

                v166 = v411;
                OUTLINED_FUNCTION_36_7();
                v113 = v439;
                v137 = v424;
                sub_1DC32DE40();
                v386 = OUTLINED_FUNCTION_55();
                v372(v386);
                OUTLINED_FUNCTION_142();
                (*(v447 + 40))(v363, v113, v132);
                goto LABEL_54;
              }
            }

            v319 = OUTLINED_FUNCTION_108_0();
            v320(v319);

            v137 = v431;
            v132 = v311;
            v113 = v436;
            v97 = v433;
            v299 = v428;
            v298 = v429;
            if (v431 == v430)
            {
              goto LABEL_150;
            }
          }

          goto LABEL_194;
        }
      }

      sub_1DC28EB30(v244, &qword_1ECC7CA40, &unk_1DC5233A0);
    }
  }

LABEL_54:
  sub_1DC3A3334(v448, v177, v178, v179, v180, v181, v182, v183, v405, v406, v407, v408, v409, v410, v411, v412, v413, v414, v415, v416);
  if (v192)
  {
    sub_1DC345D18();
    sub_1DC312F68();
    OUTLINED_FUNCTION_43_0();
    if (v125)
    {
      v197 = v438;
      v194 = OUTLINED_FUNCTION_13_16();
      __swift_storeEnumTagSinglePayload(v194, v195, v196, v132);
    }

    else
    {
      v197 = v438;
      sub_1DC312E7C(v193, v438);
      OUTLINED_FUNCTION_5_3(v197);
      if (!v198)
      {
        OUTLINED_FUNCTION_76_5();
        v199(v435, v197, v132);
        v1 = sub_1DC517B9C();
        v113 = sub_1DC2BE518();
        v200 = v427;
        OUTLINED_FUNCTION_58_10();
        v408();
        if (os_log_type_enabled(v113, v1))
        {
          OUTLINED_FUNCTION_140();
          v456 = OUTLINED_FUNCTION_54_13();
          v461[0] = v456;
          *v132 = 136315394;
          v137 = v445;
          v202 = OUTLINED_FUNCTION_48();
          v203 = j___s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0O13CDMFoundationE16debugDescriptionSSvg(v202);
          OUTLINED_FUNCTION_93_1(v203, v204);
          OUTLINED_FUNCTION_91_2();
          OUTLINED_FUNCTION_25_11();
          j___s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0O13CDMFoundationE16debugDescriptionSSvg(v205);
          OUTLINED_FUNCTION_238();
          LODWORD(v450) = v1;
          OUTLINED_FUNCTION_10_20(v97);
          v206 = OUTLINED_FUNCTION_87_1();
          (v1)(v206);
          OUTLINED_FUNCTION_55_12();
          OUTLINED_FUNCTION_57_11();
          v166 = v411;

          *(v132 + 14) = v200;
          OUTLINED_FUNCTION_61_5(&dword_1DC287000, v207, v450, "[EmailRule] triggered by isUndoSendInMailAndNotPreviousMessage. Updating routing from %s to %s");
          OUTLINED_FUNCTION_94_3();
          OUTLINED_FUNCTION_42();
          OUTLINED_FUNCTION_66();

          v97 = v447;
        }

        else
        {

          OUTLINED_FUNCTION_10_20(v97);
          v246 = OUTLINED_FUNCTION_152();
          (v1)(v246);
          v137 = v445;
        }

        OUTLINED_FUNCTION_48();
        OUTLINED_FUNCTION_9_20();
        v132 = v435;
        sub_1DC32F9DC();
        v247 = OUTLINED_FUNCTION_78_6();
        (v1)(v247);
        OUTLINED_FUNCTION_142();
        v248 = OUTLINED_FUNCTION_32_10();
        v249(v248);
        goto LABEL_94;
      }
    }

    sub_1DC28EB30(v197, &qword_1ECC7CA40, &unk_1DC5233A0);
  }

LABEL_94:
  sub_1DC343E78();
  OUTLINED_FUNCTION_60_10();
  OUTLINED_FUNCTION_88_1();
  if (v125)
  {
    v251 = v166 == v250;
  }

  else
  {
    v251 = 0;
  }

  if (v251)
  {
  }

  else
  {
    OUTLINED_FUNCTION_19_16();
    OUTLINED_FUNCTION_97();

    if ((v137 & 1) == 0)
    {
      OUTLINED_FUNCTION_24_10();
      v456 = v252;
      v1 = v459;
      do
      {
        if (v97 == v137)
        {
          goto LABEL_107;
        }

        if (v137 >= *(v132 + 16))
        {
          goto LABEL_187;
        }

        OUTLINED_FUNCTION_15_10();
        v253(v449);
        ++v137;
        sub_1DC5111AC();
        sub_1DC3A3DC4();
        OUTLINED_FUNCTION_99_1();
        v254 = OUTLINED_FUNCTION_78_7();
        v255(v254);
      }

      while ((v113 & 1) == 0);
      v256 = v425;
      sub_1DC3EAD64(v425);
      type metadata accessor for QDContextState(0);
      v257 = OUTLINED_FUNCTION_100();
      OUTLINED_FUNCTION_39(v257, v258, v259);
      if (v125)
      {
        v260 = &qword_1ECC7BEB8;
        v261 = &unk_1DC527150;
        v262 = v256;
      }

      else
      {
        v280 = *v256;
        OUTLINED_FUNCTION_44_10();
        sub_1DC3A5DA0(v256, v281);
        LOBYTE(v461[0]) = v280;
        LOBYTE(v460[0]) = 3;
        sub_1DC3A56C4();
        v282 = sub_1DC5176CC();
        if ((v282 & 1) == 0)
        {
          goto LABEL_107;
        }

        sub_1DC343E78();
        sub_1DC312F68();
        OUTLINED_FUNCTION_43_0();
        if (v125)
        {
          v381 = v416;
          v284 = OUTLINED_FUNCTION_13_16();
          __swift_storeEnumTagSinglePayload(v284, v285, v286, v457);
        }

        else
        {
          v381 = v416;
          sub_1DC312E7C(v283, v416);
          v382 = OUTLINED_FUNCTION_34_11();
          OUTLINED_FUNCTION_39(v382, v383, v457);
          if (!v384)
          {
            OUTLINED_FUNCTION_76_5();
            v387 = v414;
            v388(v414, v381, v457);
            sub_1DC517B9C();
            v389 = OUTLINED_FUNCTION_113_4();
            v390 = v412;
            OUTLINED_FUNCTION_102_3();
            v391();
            if (OUTLINED_FUNCTION_112_3())
            {
              OUTLINED_FUNCTION_140();
              v459 = OUTLINED_FUNCTION_54_13();
              v461[0] = v459;
              *v387 = 136315394;
              LODWORD(v458) = v137;
              LODWORD(v137) = v445;
              v393 = OUTLINED_FUNCTION_48();
              v1 = v97;
              v394 = j___s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0O13CDMFoundationE16debugDescriptionSSvg(v393);
              OUTLINED_FUNCTION_93_1(v394, v395);
              OUTLINED_FUNCTION_91_2();
              OUTLINED_FUNCTION_25_11();
              j___s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0O13CDMFoundationE16debugDescriptionSSvg(v396);
              OUTLINED_FUNCTION_238();
              OUTLINED_FUNCTION_10_20(v97);
              v397 = OUTLINED_FUNCTION_87_1();
              (v97)(v397);
              OUTLINED_FUNCTION_55_12();
              OUTLINED_FUNCTION_57_11();

              *(v387 + 14) = v390;
              OUTLINED_FUNCTION_61_5(&dword_1DC287000, v398, v458, "[EmailRule] triggered by emailSendItRouting. Updating routing from %s to %s");
              OUTLINED_FUNCTION_94_3();
              OUTLINED_FUNCTION_42();
              OUTLINED_FUNCTION_66();
            }

            else
            {

              OUTLINED_FUNCTION_10_20(v97);
              v401 = OUTLINED_FUNCTION_152();
              (v1)(v401);
              LODWORD(v137) = v445;
            }

            OUTLINED_FUNCTION_48();
            OUTLINED_FUNCTION_9_20();
            sub_1DC32F9DC();
            v402 = OUTLINED_FUNCTION_78_6();
            (v1)(v402);
            OUTLINED_FUNCTION_142();
            v403 = OUTLINED_FUNCTION_32_10();
            v404(v403);
            goto LABEL_107;
          }
        }

        v260 = &qword_1ECC7CA40;
        v261 = &unk_1DC5233A0;
        v262 = v381;
      }

      sub_1DC28EB30(v262, v260, v261);
    }
  }

LABEL_107:
  v263 = v411;
  sub_1DC343F54();
  OUTLINED_FUNCTION_60_10();
  OUTLINED_FUNCTION_88_1();
  if (v125)
  {
    v265 = v263 == v264;
  }

  else
  {
    v265 = 0;
  }

  if (v265)
  {

    v266 = v457;
    goto LABEL_161;
  }

  OUTLINED_FUNCTION_19_16();
  OUTLINED_FUNCTION_97();

  v266 = v457;
  if (v137)
  {
    goto LABEL_161;
  }

  sub_1DC343F54();
  sub_1DC312F68();
  OUTLINED_FUNCTION_43_0();
  if (v125)
  {
    v271 = v434;
    v268 = OUTLINED_FUNCTION_13_16();
    __swift_storeEnumTagSinglePayload(v268, v269, v270, v266);
LABEL_118:
    sub_1DC28EB30(v271, &qword_1ECC7CA40, &unk_1DC5233A0);
    goto LABEL_161;
  }

  v271 = v434;
  sub_1DC312E7C(v267, v434);
  v272 = OUTLINED_FUNCTION_34_11();
  OUTLINED_FUNCTION_39(v272, v273, v266);
  if (v274)
  {
    goto LABEL_118;
  }

  v113 = v447;
  v132 = v421;
  (*(v447 + 32))(v421, v271, v266);
  sub_1DC3A5DF8(&qword_1ECC7BB68, MEMORY[0x1E69D0300]);
  v275 = sub_1DC5176CC();
  if ((v275 & 1) == 0)
  {
    type metadata accessor for NLRouterBypassUtils();
    if (_MergedGlobals_13 != -1)
    {
      goto LABEL_195;
    }

    goto LABEL_152;
  }

  (*(v113 + 8))(v132, v266);
LABEL_161:
  v348 = v445;
  OUTLINED_FUNCTION_48();
  v349 = sub_1DC5157DC();
  OUTLINED_FUNCTION_8_12();
  sub_1DC3A5DA0(v446, v350);
  if (v349)
  {
    v351 = 1;
    v352 = v454;
  }

  else
  {
    v352 = v454;
    (v408)(v454, v348, v266);
    v351 = 0;
  }

  v353 = v447;
  __swift_storeEnumTagSinglePayload(v352, v351, 1, v266);
  (*(v353 + 8))(v348, v266);
LABEL_165:
  v354 = sub_1DC2BE518();
  v355 = v451;
  sub_1DC2B8848();

  (*(v452 + 8))(v355, v453);
  OUTLINED_FUNCTION_34();
}

void sub_1DC3A1308()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v4 = sub_1DC5149BC();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_1();
  v98 = v10;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C238, &qword_1DC527190);
  OUTLINED_FUNCTION_35(v100);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_95();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C200, &qword_1DC523020);
  v15 = OUTLINED_FUNCTION_10(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_15();
  v99 = v18;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_23_1();
  v102 = v20;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_62();
  v101 = v22;
  OUTLINED_FUNCTION_12();
  v106 = sub_1DC510FDC();
  v23 = OUTLINED_FUNCTION_0(v106);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_2_1();
  v105 = v28;
  OUTLINED_FUNCTION_12();
  v109 = sub_1DC51179C();
  v29 = OUTLINED_FUNCTION_0(v109);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_1();
  v36 = v35 - v34;
  v107 = sub_1DC51164C();
  v37 = OUTLINED_FUNCTION_0(v107);
  v39 = v38;
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_64();
  v42 = *(v3 + 16);
  if (!v42)
  {
    goto LABEL_28;
  }

  v96 = v4;
  v97 = v7;
  v95 = v0;
  v45 = *(v39 + 16);
  v43 = v39 + 16;
  v44 = v45;
  v46 = *(v43 + 64);
  OUTLINED_FUNCTION_24();
  v48 = v3 + v47;
  v108 = (v31 + 8);
  v103 = v1;
  v104 = (v25 + 8);
  v49 = *(v43 + 56);
  v50 = v107;
  while (1)
  {
    v44(v1, v48, v50);
    if ((sub_1DC5114CC() & 1) == 0)
    {
      v56 = OUTLINED_FUNCTION_16_10();
LABEL_11:
      v57(v56, v50);
      goto LABEL_12;
    }

    sub_1DC51154C();
    v51 = sub_1DC51177C();
    v52 = *v108;
    (*v108)(v36, v109);
    if ((v51 & 1) == 0 || (type metadata accessor for NLRouterBypassUtils(), sub_1DC51154C(), sub_1DC51178C(), v52(v36, v109), v53 = sub_1DC307E5C(), v1 = v103, (*v104)(v105, v106), !v53))
    {
      v56 = OUTLINED_FUNCTION_16_10();
      v50 = v107;
      goto LABEL_11;
    }

    sub_1DC51478C();

    if (!v110[3])
    {
      v58 = OUTLINED_FUNCTION_16_10();
      v50 = v107;
      v59(v58, v107);

      sub_1DC28EB30(v110, &qword_1ECC7D3F0, &qword_1DC5238B0);
      goto LABEL_12;
    }

    sub_1DC51493C();
    if (OUTLINED_FUNCTION_115_3())
    {
      break;
    }

    v54 = OUTLINED_FUNCTION_16_10();
    v50 = v107;
    v55(v54, v107);

LABEL_12:
    v48 += v49;
    if (!--v42)
    {
      goto LABEL_28;
    }
  }

  sub_1DC5148BC();

  if (v110[0] && (v60 = sub_1DC51477C(), , v60))
  {
    v61 = v101;
    sub_1DC5149AC();

    v62 = v96;
  }

  else
  {
    v61 = v101;
    OUTLINED_FUNCTION_19();
    v62 = v96;
    __swift_storeEnumTagSinglePayload(v63, v64, v65, v96);
  }

  (*(v97 + 104))(v102, *MEMORY[0x1E69D1D40], v62);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v66, v67, v68, v62);
  v69 = *(v100 + 48);
  sub_1DC28F358(v61, v95, &qword_1ECC7C200, &qword_1DC523020);
  sub_1DC28F358(v102, v95 + v69, &qword_1ECC7C200, &qword_1DC523020);
  OUTLINED_FUNCTION_5_3(v95);
  if (!v78)
  {
    sub_1DC28F358(v95, v99, &qword_1ECC7C200, &qword_1DC523020);
    OUTLINED_FUNCTION_5_3(v95 + v69);
    if (!v78)
    {
      (*(v97 + 32))(v98, v95 + v69, v62);
      OUTLINED_FUNCTION_0_39();
      sub_1DC3A5DF8(v90, v91);
      sub_1DC5176CC();

      v92 = *(v97 + 8);
      v92(v98, v62);
      sub_1DC28EB30(v102, &qword_1ECC7C200, &qword_1DC523020);
      sub_1DC28EB30(v101, &qword_1ECC7C200, &qword_1DC523020);
      v93 = OUTLINED_FUNCTION_16_10();
      v94(v93, v107);
      v92(v99, v62);
      sub_1DC28EB30(v95, &qword_1ECC7C200, &qword_1DC523020);
      goto LABEL_28;
    }

    OUTLINED_FUNCTION_59_2();
    sub_1DC28EB30(v79, v80, v81);
    OUTLINED_FUNCTION_59_2();
    sub_1DC28EB30(v82, v83, v84);
    v85 = OUTLINED_FUNCTION_16_10();
    v86(v85, v107);
    v87 = *(v97 + 8);
    v88 = OUTLINED_FUNCTION_45_2();
    v89(v88);
LABEL_27:
    sub_1DC28EB30(v95, &qword_1ECC7C238, &qword_1DC527190);
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_59_2();
  sub_1DC28EB30(v70, v71, v72);
  OUTLINED_FUNCTION_59_2();
  sub_1DC28EB30(v73, v74, v75);
  v76 = OUTLINED_FUNCTION_16_10();
  v77(v76, v107);
  OUTLINED_FUNCTION_5_3(v95 + v69);
  if (!v78)
  {
    goto LABEL_27;
  }

  sub_1DC28EB30(v95, &qword_1ECC7C200, &qword_1DC523020);
LABEL_28:
  OUTLINED_FUNCTION_34();
}

void sub_1DC3A1A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = sub_1DC514BFC();
  v25 = OUTLINED_FUNCTION_0(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_2_1();
  v296 = v30;
  v297 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C258, &qword_1DC523078);
  OUTLINED_FUNCTION_35(v297);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v33);
  v300 = v284 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C260, &unk_1DC523080);
  v36 = OUTLINED_FUNCTION_10(v35);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_62();
  v299 = v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C200, &qword_1DC523020);
  v43 = OUTLINED_FUNCTION_10(v42);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_62();
  v307 = v51;
  OUTLINED_FUNCTION_12();
  v309 = sub_1DC5149BC();
  v52 = OUTLINED_FUNCTION_0(v309);
  v54 = v53;
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_62();
  v305 = v68;
  OUTLINED_FUNCTION_12();
  v316 = sub_1DC510FDC();
  v69 = OUTLINED_FUNCTION_0(v316);
  v71 = v70;
  v73 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_2_1();
  v315 = v74;
  OUTLINED_FUNCTION_12();
  v320 = sub_1DC51179C();
  v75 = OUTLINED_FUNCTION_0(v320);
  v77 = v76;
  v79 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_1();
  v82 = v81 - v80;
  v83 = sub_1DC51164C();
  v84 = OUTLINED_FUNCTION_0(v83);
  v86 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_1();
  v90 = v89 - v88;
  v91 = *(v23 + 16);
  if (!v91)
  {
LABEL_119:
    OUTLINED_FUNCTION_34();
    return;
  }

  v291 = v24;
  v92 = *(v87 + 16);
  v93 = *(v87 + 80);
  OUTLINED_FUNCTION_24();
  v95 = v23 + v94;
  v97 = (v96 - 8);
  v319 = (v77 + 8);
  v99 = v98;
  v313 = v71 + 8;
  v295 = v54 + 32;
  v294 = *MEMORY[0x1E69D1D40];
  v293 = v54 + 104;
  v292 = (v54 + 8);
  v290 = *MEMORY[0x1E69D20C8];
  v289 = v27 + 104;
  v287 = v27 + 32;
  v288 = (v27 + 8);
  v100 = *(v96 + 56);
  v310 = (v96 - 8);
  v314 = v96;
  v317 = v98;
  v318 = v100;
  v311 = v82;
  while (1)
  {
    v99(v90, v95, v83);
    if (sub_1DC5114CC())
    {
      break;
    }

    v115 = OUTLINED_FUNCTION_6_16();
    v116(v115);
LABEL_116:
    v95 += v100;
    if (!--v91)
    {
      goto LABEL_119;
    }
  }

  sub_1DC51154C();
  v101 = sub_1DC51177C();
  v102 = *v319;
  (*v319)(v82, v320);
  if ((v101 & 1) == 0)
  {
    goto LABEL_13;
  }

  type metadata accessor for NLRouterBypassUtils();
  sub_1DC51154C();
  v103 = v315;
  sub_1DC51178C();
  v102(v82, v320);
  v99 = v317;
  v104 = sub_1DC307E5C();
  OUTLINED_FUNCTION_37(&a15);
  v105 = v103;
  v106 = v314;
  v107(v105, v316);
  if (!v104)
  {
LABEL_13:
    v117 = OUTLINED_FUNCTION_6_16();
    v118(v117);
    v100 = v318;
    goto LABEL_116;
  }

  v82 = v83;

  sub_1DC51478C();

  v83 = v104;
  sub_1DC28F358(&v333, &v329, &qword_1ECC7D3F0, &qword_1DC5238B0);
  if (!v332)
  {

    sub_1DC28EB30(&v333, &qword_1ECC7D3F0, &qword_1DC5238B0);
    v119 = OUTLINED_FUNCTION_110_4();
    v120(v119);
    v100 = v318;
    OUTLINED_FUNCTION_73_4();
    goto LABEL_115;
  }

  v312 = v104;
  sub_1DC28F358(&v329, &v325, &qword_1ECC7D3F0, &qword_1DC5238B0);
  sub_1DC514A7C();
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_98_4();
    OUTLINED_FUNCTION_84_4();
    sub_1DC5148BC();

    v108 = v323;
    if (v323)
    {
      sub_1DC51477C();
      OUTLINED_FUNCTION_78_0();
      OUTLINED_FUNCTION_106(&a9);
      sub_1DC5149AC();

      v109 = OUTLINED_FUNCTION_21_11();
      v111 = *(v110 - 256);
      OUTLINED_FUNCTION_39(v109, v112, v111);
      v83 = v82;
      if (!v176)
      {
        OUTLINED_FUNCTION_23_17();
        v172(v305, v108, v111);
        OUTLINED_FUNCTION_22_11();
        v173(v306, v294, v111);
        OUTLINED_FUNCTION_0_39();
        v175 = sub_1DC3A5DF8(&unk_1ECC7C270, v174);
        sub_1DC5179EC();
        sub_1DC5179EC();
        OUTLINED_FUNCTION_36_13();
        if (v176)
        {
          v178 = v111 == v177;
        }

        else
        {
          v178 = 0;
        }

        v82 = v311;
        v286 = v177;
        if (v178)
        {
          OUTLINED_FUNCTION_33_13();
        }

        else
        {
          v179 = OUTLINED_FUNCTION_59_7();
          OUTLINED_FUNCTION_85_5(v179);
        }

        OUTLINED_FUNCTION_68_5();

        OUTLINED_FUNCTION_37_7();
        v200 = OUTLINED_FUNCTION_12_17(&v335);
        (qword_1DC5238B0)(v200);
        (qword_1DC5238B0)(v305, v175);
        sub_1DC28EB30(&v333, &qword_1ECC7D3F0, &qword_1DC5238B0);
        v201 = OUTLINED_FUNCTION_6_16();
        v202(v201);

        OUTLINED_FUNCTION_89_3();

        v100 = v318;
        if (v303)
        {
          goto LABEL_122;
        }

LABEL_26:
        __swift_destroy_boxed_opaque_existential_1Tm(&v325);
        v99 = v317;
LABEL_115:
        sub_1DC28EB30(&v329, &qword_1ECC7D3F0, &qword_1DC5238B0);
        v97 = v310;
        goto LABEL_116;
      }

      OUTLINED_FUNCTION_68_5();

      sub_1DC28EB30(&v333, &qword_1ECC7D3F0, &qword_1DC5238B0);
      v113 = OUTLINED_FUNCTION_6_16();
      v114(v113);
    }

    else
    {
      OUTLINED_FUNCTION_68_5();

      sub_1DC28EB30(&v333, &qword_1ECC7D3F0, &qword_1DC5238B0);
      v136 = OUTLINED_FUNCTION_110_4();
      v137(v136);
      OUTLINED_FUNCTION_83_4(&a9);
      OUTLINED_FUNCTION_19();
      OUTLINED_FUNCTION_117_5(v138, v139, v140);
    }

    OUTLINED_FUNCTION_73_4();
    sub_1DC28EB30(v108, &qword_1ECC7C200, &qword_1DC523020);
    v100 = v318;
    goto LABEL_26;
  }

  sub_1DC51497C();
  v121 = OUTLINED_FUNCTION_1_20();
  v122 = v308;
  if (!v121)
  {
    sub_1DC51496C();
    if (OUTLINED_FUNCTION_1_20())
    {
      OUTLINED_FUNCTION_98_4();
      OUTLINED_FUNCTION_84_4();
      sub_1DC514C9C();

      v83 = v82;
      if (!v323)
      {
        OUTLINED_FUNCTION_68_5();

        sub_1DC28EB30(&v333, &qword_1ECC7D3F0, &qword_1DC5238B0);
        v182 = OUTLINED_FUNCTION_6_16();
        v183(v182);
        v141 = v302;
        v184 = OUTLINED_FUNCTION_13_16();
        OUTLINED_FUNCTION_117_5(v184, v185, v186);
        OUTLINED_FUNCTION_73_4();
LABEL_94:
        v233 = v141;
        v240 = &qword_1ECC7C200;
        v241 = &qword_1DC523020;
LABEL_95:
        sub_1DC28EB30(v233, v240, v241);
        goto LABEL_96;
      }

      v141 = v323;
      sub_1DC51477C();
      OUTLINED_FUNCTION_78_0();
      OUTLINED_FUNCTION_106(&v332);
      sub_1DC5149AC();
      OUTLINED_FUNCTION_116_2();
      v142 = OUTLINED_FUNCTION_21_11();
      v144 = *(v143 - 256);
      OUTLINED_FUNCTION_49_0(v142, v145);
      v82 = v311;
      if (!v176)
      {
        OUTLINED_FUNCTION_23_17();
        v146 = OUTLINED_FUNCTION_52_11();
        v147(v146);
        OUTLINED_FUNCTION_22_11();
        v148 = OUTLINED_FUNCTION_26_12();
        v149(v148);
        OUTLINED_FUNCTION_0_39();
        sub_1DC3A5DF8(&unk_1ECC7C270, v150);
        OUTLINED_FUNCTION_107_2();
        OUTLINED_FUNCTION_40_13();
        OUTLINED_FUNCTION_40_13();
        OUTLINED_FUNCTION_36_13();
        if (v176)
        {
          v152 = v144 == v151;
        }

        else
        {
          v152 = 0;
        }

        v286 = v151;
        if (v152)
        {
          OUTLINED_FUNCTION_33_13();
        }

        else
        {
          v153 = OUTLINED_FUNCTION_59_7();
          OUTLINED_FUNCTION_85_5(v153);
        }

        OUTLINED_FUNCTION_68_5();

        OUTLINED_FUNCTION_37_7();
        v242 = OUTLINED_FUNCTION_12_17(&v328);
        v122(v242);
        v243 = &v327;
        goto LABEL_108;
      }

LABEL_77:
      OUTLINED_FUNCTION_68_5();

      sub_1DC28EB30(&v333, &qword_1ECC7D3F0, &qword_1DC5238B0);
      v210 = OUTLINED_FUNCTION_6_16();
      v211(v210);
      goto LABEL_94;
    }

    sub_1DC514ACC();
    v83 = v82;
    if (OUTLINED_FUNCTION_1_20())
    {
      OUTLINED_FUNCTION_98_4();
      OUTLINED_FUNCTION_84_4();
      sub_1DC5148BC();

      v159 = v323;
      OUTLINED_FUNCTION_73_4();
      if (v159)
      {
        v141 = v159;
        sub_1DC51477C();
        OUTLINED_FUNCTION_78_0();
        OUTLINED_FUNCTION_106(&v326);
        sub_1DC5149AC();
        OUTLINED_FUNCTION_116_2();
        v160 = OUTLINED_FUNCTION_21_11();
        v162 = *(v161 - 256);
        OUTLINED_FUNCTION_49_0(v160, v163);
        if (!v176)
        {
          OUTLINED_FUNCTION_23_17();
          v164 = OUTLINED_FUNCTION_52_11();
          v165(v164);
          OUTLINED_FUNCTION_22_11();
          v166 = OUTLINED_FUNCTION_26_12();
          v167(v166);
          OUTLINED_FUNCTION_0_39();
          sub_1DC3A5DF8(&unk_1ECC7C270, v168);
          OUTLINED_FUNCTION_107_2();
          OUTLINED_FUNCTION_40_13();
          OUTLINED_FUNCTION_40_13();
          OUTLINED_FUNCTION_36_13();
          if (v176)
          {
            v170 = v162 == v169;
          }

          else
          {
            v170 = 0;
          }

          v286 = v169;
          if (v170)
          {
            OUTLINED_FUNCTION_33_13();
          }

          else
          {
            v171 = OUTLINED_FUNCTION_59_7();
            OUTLINED_FUNCTION_85_5(v171);
          }

          OUTLINED_FUNCTION_68_5();

          OUTLINED_FUNCTION_37_7();
          v258 = OUTLINED_FUNCTION_12_17(&v324);
          v122(v258);
          v243 = &v323;
          goto LABEL_108;
        }

        goto LABEL_77;
      }

      OUTLINED_FUNCTION_68_5();

      sub_1DC28EB30(&v333, &qword_1ECC7D3F0, &qword_1DC5238B0);
      v203 = OUTLINED_FUNCTION_6_16();
      v204(v203);
      v205 = &v326;
    }

    else
    {
      sub_1DC514A0C();
      OUTLINED_FUNCTION_1_20();
      OUTLINED_FUNCTION_73_4();
      if (v187)
      {
        OUTLINED_FUNCTION_98_4();
        OUTLINED_FUNCTION_84_4();
        sub_1DC514C9C();

        if (v323)
        {
          v141 = v323;
          sub_1DC51477C();
          OUTLINED_FUNCTION_78_0();
          OUTLINED_FUNCTION_106(&v322);
          sub_1DC5149AC();
          OUTLINED_FUNCTION_116_2();
          v188 = OUTLINED_FUNCTION_21_11();
          v190 = *(v189 - 256);
          OUTLINED_FUNCTION_49_0(v188, v191);
          if (!v176)
          {
            OUTLINED_FUNCTION_23_17();
            v192 = OUTLINED_FUNCTION_52_11();
            v193(v192);
            OUTLINED_FUNCTION_22_11();
            v194 = OUTLINED_FUNCTION_26_12();
            v195(v194);
            OUTLINED_FUNCTION_0_39();
            sub_1DC3A5DF8(&unk_1ECC7C270, v196);
            OUTLINED_FUNCTION_107_2();
            OUTLINED_FUNCTION_40_13();
            OUTLINED_FUNCTION_40_13();
            OUTLINED_FUNCTION_36_13();
            if (v176)
            {
              v198 = v190 == v197;
            }

            else
            {
              v198 = 0;
            }

            v286 = v197;
            if (v198)
            {
              OUTLINED_FUNCTION_33_13();
            }

            else
            {
              v199 = OUTLINED_FUNCTION_59_7();
              OUTLINED_FUNCTION_85_5(v199);
            }

            OUTLINED_FUNCTION_68_5();

            OUTLINED_FUNCTION_37_7();
            v259 = OUTLINED_FUNCTION_12_17(&v320);
            v122(v259);
            v243 = &v319;
            goto LABEL_108;
          }

          goto LABEL_77;
        }

        OUTLINED_FUNCTION_68_5();

        sub_1DC28EB30(&v333, &qword_1ECC7D3F0, &qword_1DC5238B0);
        v212 = OUTLINED_FUNCTION_6_16();
        v213(v212);
        v205 = &v322;
      }

      else
      {
        sub_1DC514B6C();
        if (!OUTLINED_FUNCTION_1_20())
        {
          OUTLINED_FUNCTION_68_5();
          sub_1DC28EB30(&v333, &qword_1ECC7D3F0, &qword_1DC5238B0);
          (*v97)(v90, v82);
          __swift_destroy_boxed_opaque_existential_1Tm(&v325);
          v100 = v318;
          goto LABEL_115;
        }

        OUTLINED_FUNCTION_98_4();
        OUTLINED_FUNCTION_84_4();
        sub_1DC514C9C();

        if (v323)
        {
          v141 = v323;
          sub_1DC51477C();
          OUTLINED_FUNCTION_78_0();
          OUTLINED_FUNCTION_106(&v318);
          sub_1DC5149AC();
          OUTLINED_FUNCTION_116_2();
          v206 = OUTLINED_FUNCTION_21_11();
          v208 = *(v207 - 256);
          OUTLINED_FUNCTION_49_0(v206, v209);
          if (!v176)
          {
            OUTLINED_FUNCTION_23_17();
            v260 = OUTLINED_FUNCTION_52_11();
            v261(v260);
            OUTLINED_FUNCTION_22_11();
            v262 = OUTLINED_FUNCTION_26_12();
            v263(v262);
            OUTLINED_FUNCTION_0_39();
            sub_1DC3A5DF8(&unk_1ECC7C270, v264);
            OUTLINED_FUNCTION_107_2();
            OUTLINED_FUNCTION_40_13();
            OUTLINED_FUNCTION_40_13();
            OUTLINED_FUNCTION_36_13();
            if (v265)
            {
              v267 = v208 == v266;
            }

            else
            {
              v267 = 0;
            }

            v286 = v266;
            if (v267)
            {
              OUTLINED_FUNCTION_33_13();
            }

            else
            {
              v268 = OUTLINED_FUNCTION_59_7();
              OUTLINED_FUNCTION_85_5(v268);
            }

            OUTLINED_FUNCTION_68_5();

            OUTLINED_FUNCTION_37_7();
            v269 = OUTLINED_FUNCTION_12_17(&v317);
            v122(v269);
            v243 = &v316;
LABEL_108:
            (v122)(*(v243 - 32), v106);
            sub_1DC28EB30(&v333, &qword_1ECC7D3F0, &qword_1DC5238B0);
            v270 = OUTLINED_FUNCTION_6_16();
            v271(v270);

            OUTLINED_FUNCTION_89_3();

            v99 = v317;
            v100 = v318;
            v257 = &v333;
LABEL_109:
            if (*(v257 - 32))
            {
              goto LABEL_122;
            }

            goto LABEL_114;
          }

          goto LABEL_77;
        }

        OUTLINED_FUNCTION_68_5();

        sub_1DC28EB30(&v333, &qword_1ECC7D3F0, &qword_1DC5238B0);
        v244 = OUTLINED_FUNCTION_6_16();
        v245(v244);
        v205 = &v318;
      }
    }

    v141 = *(v205 - 32);
    v246 = OUTLINED_FUNCTION_13_16();
    OUTLINED_FUNCTION_117_5(v246, v247, v248);
    goto LABEL_94;
  }

  sub_1DC51475C();
  v123 = v323;
  if (!v323)
  {
    OUTLINED_FUNCTION_83_4(&v336);
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_117_5(v154, v155, v156);
    v83 = v82;
    goto LABEL_36;
  }

  sub_1DC51477C();
  OUTLINED_FUNCTION_78_0();
  OUTLINED_FUNCTION_106(&v336);
  sub_1DC5149AC();

  v124 = OUTLINED_FUNCTION_21_11();
  v126 = *(v125 - 256);
  OUTLINED_FUNCTION_39(v124, v127, v126);
  v83 = v82;
  if (v176)
  {
LABEL_36:
    sub_1DC28EB30(v123, &qword_1ECC7C200, &qword_1DC523020);
    OUTLINED_FUNCTION_73_4();
    goto LABEL_37;
  }

  OUTLINED_FUNCTION_23_17();
  v128(v304, v123, v126);
  OUTLINED_FUNCTION_22_11();
  v129(v122, v294, v126);
  OUTLINED_FUNCTION_0_39();
  sub_1DC3A5DF8(&unk_1ECC7C270, v130);
  sub_1DC5179EC();
  sub_1DC5179EC();
  v131 = v322;
  v132 = v323 == v321 && v324 == v322;
  v82 = v311;
  if (v132)
  {
    v274 = *v292;
    (*v292)(v308, v126);
    v275 = OUTLINED_FUNCTION_82_4(v334);
    v274(v275);

LABEL_121:
    OUTLINED_FUNCTION_68_5();
    OUTLINED_FUNCTION_86();

    OUTLINED_FUNCTION_59_2();
    sub_1DC28EB30(v276, v277, v278);
    v279 = OUTLINED_FUNCTION_6_16();
    v280(v279);
    __swift_destroy_boxed_opaque_existential_1Tm(&v325);
    OUTLINED_FUNCTION_59_2();
    goto LABEL_123;
  }

  v285 = v324;
  LODWORD(v286) = sub_1DC51825C();
  v284[1] = v131;
  v133 = *v292;
  v134 = OUTLINED_FUNCTION_82_4(&a10);
  v133(v134);
  v135 = OUTLINED_FUNCTION_82_4(v334);
  v133(v135);

  if (v286)
  {
    goto LABEL_121;
  }

LABEL_37:
  sub_1DC51475C();

  if (!v323)
  {
    OUTLINED_FUNCTION_68_5();

    sub_1DC28EB30(&v333, &qword_1ECC7D3F0, &qword_1DC5238B0);
    v180 = OUTLINED_FUNCTION_6_16();
    v181(v180);
LABEL_96:
    v99 = v317;
    v100 = v318;
    goto LABEL_114;
  }

  v157 = v323;
  sub_1DC51476C();
  OUTLINED_FUNCTION_78_0();
  v100 = v318;
  if (!(v157 >> 62))
  {
    if (*((v157 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_40;
    }

LABEL_112:

LABEL_113:
    OUTLINED_FUNCTION_68_5();
    OUTLINED_FUNCTION_86();

    sub_1DC28EB30(&v333, &qword_1ECC7D3F0, &qword_1DC5238B0);
    v272 = OUTLINED_FUNCTION_6_16();
    v273(v272);
    v99 = v317;
LABEL_114:
    __swift_destroy_boxed_opaque_existential_1Tm(&v325);
    goto LABEL_115;
  }

  if (!sub_1DC51802C())
  {
    goto LABEL_112;
  }

LABEL_40:
  if ((v157 & 0xC000000000000001) != 0)
  {
    v158 = MEMORY[0x1E1296800](0, v157);
LABEL_43:

    sub_1DC5146BC();

    if (!v321)
    {
      goto LABEL_113;
    }

    v286 = v321;
    if (sub_1DC5148CC())
    {
      OUTLINED_FUNCTION_106(&v329);
      sub_1DC514BEC();
    }

    else
    {
      OUTLINED_FUNCTION_83_4(&v329);
      OUTLINED_FUNCTION_19();
      __swift_storeEnumTagSinglePayload(v214, v215, v216, v291);
    }

    v217 = v301;
    OUTLINED_FUNCTION_37(&v309);
    v218 = v291;
    v219(v217, v290, v291);
    OUTLINED_FUNCTION_61();
    __swift_storeEnumTagSinglePayload(v220, v221, v222, v218);
    v223 = v158;
    v224 = *(v297 + 48);
    v225 = v300;
    sub_1DC28F358(v223, v300, &qword_1ECC7C260, &unk_1DC523080);
    v285 = v224;
    v226 = OUTLINED_FUNCTION_83_4(&v331);
    sub_1DC28F358(v226, v227, &qword_1ECC7C260, &unk_1DC523080);
    OUTLINED_FUNCTION_39(v225, 1, v291);
    if (v176)
    {
      OUTLINED_FUNCTION_68_5();
      OUTLINED_FUNCTION_86();

      OUTLINED_FUNCTION_89_3();

      sub_1DC28EB30(v224, &qword_1ECC7C260, &unk_1DC523080);
      v228 = OUTLINED_FUNCTION_82_4(&v329);
      sub_1DC28EB30(v228, v229, &unk_1DC523080);
      sub_1DC28EB30(&v333, &qword_1ECC7D3F0, &qword_1DC5238B0);
      v230 = OUTLINED_FUNCTION_6_16();
      v231(v230);
      v232 = v300;
      OUTLINED_FUNCTION_39(v300 + v285, 1, v291);
      v233 = v232;
      if (v176)
      {
        sub_1DC28EB30(v232, &qword_1ECC7C260, &unk_1DC523080);
LABEL_122:
        __swift_destroy_boxed_opaque_existential_1Tm(&v325);
        v282 = &qword_1ECC7D3F0;
        v283 = &qword_1DC5238B0;
        v281 = &v329;
LABEL_123:
        sub_1DC28EB30(v281, v282, v283);
        goto LABEL_119;
      }
    }

    else
    {
      v234 = OUTLINED_FUNCTION_83_4(&v330);
      sub_1DC28F358(v234, v298, &qword_1ECC7C260, &unk_1DC523080);
      v235 = v285;
      OUTLINED_FUNCTION_39(v224 + v285, 1, v291);
      if (!v236)
      {
        OUTLINED_FUNCTION_37(&v307);
        v249 = v224 + v235;
        v250 = v291;
        v251(v296, v249, v291);
        sub_1DC3A5DF8(&qword_1ECC7C268, MEMORY[0x1E69D2110]);
        LODWORD(v285) = sub_1DC5176CC();
        OUTLINED_FUNCTION_68_5();
        OUTLINED_FUNCTION_86();

        OUTLINED_FUNCTION_89_3();

        v252 = *v288;
        (*v288)(v296, v250);
        v253 = OUTLINED_FUNCTION_82_4(&v331);
        sub_1DC28EB30(v253, v254, &unk_1DC523080);
        sub_1DC28EB30(v299, &qword_1ECC7C260, &unk_1DC523080);
        sub_1DC28EB30(&v333, &qword_1ECC7D3F0, &qword_1DC5238B0);
        v255 = OUTLINED_FUNCTION_6_16();
        v256(v255);
        v252(v298, v250);
        sub_1DC28EB30(v300, &qword_1ECC7C260, &unk_1DC523080);
        v99 = v317;
        v100 = v318;
        v257 = &v306;
        goto LABEL_109;
      }

      OUTLINED_FUNCTION_68_5();
      OUTLINED_FUNCTION_86();

      OUTLINED_FUNCTION_89_3();

      sub_1DC28EB30(v301, &qword_1ECC7C260, &unk_1DC523080);
      sub_1DC28EB30(v299, &qword_1ECC7C260, &unk_1DC523080);
      sub_1DC28EB30(&v333, &qword_1ECC7D3F0, &qword_1DC5238B0);
      v237 = OUTLINED_FUNCTION_6_16();
      v238(v237);
      OUTLINED_FUNCTION_37(&v308);
      v239(v298, v291);
      v233 = v224;
    }

    v240 = &qword_1ECC7C258;
    v241 = &qword_1DC523078;
    goto LABEL_95;
  }

  if (*((v157 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v158 = *(v157 + 32);

    goto LABEL_43;
  }

  __break(1u);
}

void sub_1DC3A3334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD0, &unk_1DC522550);
  v25 = OUTLINED_FUNCTION_10(v24);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = &v155 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_62();
  v167 = v31;
  OUTLINED_FUNCTION_12();
  v176 = sub_1DC510FDC();
  v32 = OUTLINED_FUNCTION_0(v176);
  v174 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_2_1();
  v175 = v36;
  OUTLINED_FUNCTION_12();
  v37 = sub_1DC51179C();
  v38 = OUTLINED_FUNCTION_0(v37);
  v178 = v39;
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_2_1();
  v179 = v42;
  OUTLINED_FUNCTION_12();
  v177 = sub_1DC51164C();
  v43 = OUTLINED_FUNCTION_0(v177);
  v168 = v44;
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_1();
  v49 = v48 - v47;
  v171 = sub_1DC51122C();
  v50 = OUTLINED_FUNCTION_0(v171);
  v169 = v51;
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_2_1();
  v170 = v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BEB8, &unk_1DC527150);
  OUTLINED_FUNCTION_10(v55);
  v57 = *(v56 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v155 - v59;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C158, &unk_1DC5234A0);
  OUTLINED_FUNCTION_10(v61);
  v63 = *(v62 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v64);
  v66 = &v155 - v65;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C160, qword_1DC5233B0);
  OUTLINED_FUNCTION_10(v67);
  v69 = *(v68 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v70);
  v72 = &v155 - v71;
  v73 = type metadata accessor for NLRouterNLParseResponse(0);
  v74 = OUTLINED_FUNCTION_35(v73);
  v76 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_2_1();
  v172 = v77;
  v78 = OUTLINED_FUNCTION_12();
  v166 = type metadata accessor for NLRouterServiceRequest(v78);
  v79 = *(v166 + 32);
  OUTLINED_FUNCTION_58_10();
  sub_1DC28F358(v80, v81, v82, &unk_1DC5234A0);
  v83 = type metadata accessor for NLRouterTurnProbingResult(0);
  OUTLINED_FUNCTION_39(v66, 1, v83);
  if (v90)
  {
    sub_1DC28EB30(v66, &qword_1ECC7C158, &unk_1DC5234A0);
    v84 = OUTLINED_FUNCTION_13_16();
    __swift_storeEnumTagSinglePayload(v84, v85, v86, v73);
LABEL_6:
    sub_1DC28EB30(v72, &qword_1ECC7C160, qword_1DC5233B0);
    goto LABEL_17;
  }

  sub_1DC28F358(v66, v72, &qword_1ECC7C160, qword_1DC5233B0);
  OUTLINED_FUNCTION_47_9();
  sub_1DC3A5DA0(v66, v87);
  v88 = OUTLINED_FUNCTION_34_11();
  OUTLINED_FUNCTION_39(v88, v89, v73);
  if (v90)
  {
    goto LABEL_6;
  }

  v91 = v172;
  sub_1DC2E53A4(v72, v172);
  sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
  v92 = sub_1DC345D18();
  v94 = v93;
  v95 = sub_1DC312FB4(0);
  if (v92 == v95 && v94 == v96)
  {

    goto LABEL_16;
  }

  v98 = OUTLINED_FUNCTION_95_2();

  if (v98)
  {
LABEL_16:
    OUTLINED_FUNCTION_8_12();
    sub_1DC3A5DA0(v91, v100);
    goto LABEL_17;
  }

  sub_1DC3EAD64(v60);
  v99 = type metadata accessor for QDContextState(0);
  OUTLINED_FUNCTION_39(v60, 1, v99);
  if (v90)
  {
    sub_1DC28EB30(v60, &qword_1ECC7BEB8, &unk_1DC527150);
    goto LABEL_16;
  }

  v101 = *v60;
  OUTLINED_FUNCTION_44_10();
  sub_1DC3A5DA0(v60, v102);
  LOBYTE(v181) = v101;
  LOBYTE(v180[0]) = 3;
  sub_1DC3A56C4();
  if ((sub_1DC5176CC() & 1) == 0)
  {
    goto LABEL_16;
  }

  v103 = 0;
  v104 = *v91;
  v161 = *(*v91 + 16);
  v159 = v169 + 16;
  v165 = v168 + 16;
  ++v178;
  v164 = v174 + 8;
  v160 = v169 + 8;
  v157 = v30;
  v156 = v23;
  for (i = v104; ; v104 = i)
  {
    if (v103 == v161)
    {
      goto LABEL_16;
    }

    if (v103 >= *(v104 + 16))
    {
      __break(1u);
      return;
    }

    v105 = v170;
    v106 = *(v169 + 80);
    OUTLINED_FUNCTION_24();
    (*(v109 + 16))(v105, v108 + v107 + *(v109 + 72) * v103, v171);
    v110 = *(sub_1DC5111AC() + 16);
    if (v110)
    {
      break;
    }

LABEL_37:
    ++v103;
    OUTLINED_FUNCTION_37(&a10);
    v135(v170, v171);
  }

  v162 = v103;
  v111 = *(v168 + 80);
  OUTLINED_FUNCTION_24();
  v163 = v112;
  v114 = v112 + v113;
  v116 = *(v115 + 72);
  v117 = *(v115 + 16);
  v118 = v177;
  v173 = v116;
  v174 = v117;
  while (1)
  {
    (v117)(v49, v114, v118);
    if (sub_1DC5114CC())
    {
      break;
    }

    v131 = OUTLINED_FUNCTION_79_6();
    v132(v131);
LABEL_34:
    v114 += v116;
    if (!--v110)
    {

      v91 = v172;
      v103 = v162;
      goto LABEL_37;
    }
  }

  v119 = v179;
  sub_1DC51154C();
  v120 = sub_1DC51177C();
  v121 = *v178;
  (*v178)(v119, v37);
  if ((v120 & 1) == 0)
  {
    goto LABEL_31;
  }

  type metadata accessor for NLRouterBypassUtils();
  v122 = v179;
  sub_1DC51154C();
  v123 = v37;
  v124 = v175;
  sub_1DC51178C();
  v121(v122, v123);
  v125 = sub_1DC307E5C();
  OUTLINED_FUNCTION_37(&a14);
  v126 = v124;
  v37 = v123;
  v118 = v177;
  v127(v126, v176);
  if (!v125)
  {
LABEL_31:
    v133 = OUTLINED_FUNCTION_79_6();
    v134(v133);
    v116 = v173;
    v117 = v174;
    goto LABEL_34;
  }

  sub_1DC51478C();

  v128 = OUTLINED_FUNCTION_79_6();
  v129(v128);
  v180[0] = v181;
  v180[1] = v182;
  if (!*(&v182 + 1))
  {
    sub_1DC28EB30(v180, &qword_1ECC7D3F0, &qword_1DC5238B0);
    v117 = v174;
    goto LABEL_33;
  }

  sub_1DC514ACC();
  v130 = OUTLINED_FUNCTION_115_3();
  v117 = v174;
  if ((v130 & 1) == 0)
  {
LABEL_33:
    v116 = v173;
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_37(&a10);
  v136(v170, v171);
  v137 = *(v166 + 20);
  v138 = v156;
  v139 = v167;
  sub_1DC28F358(v156 + v137, v167, &qword_1ECC7BFD0, &unk_1DC522550);
  v140 = type metadata accessor for NLRouterTurnContext(0);
  v141 = OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_39(v141, v142, v140);
  if (v143)
  {
    sub_1DC28EB30(v139, &qword_1ECC7BFD0, &unk_1DC522550);
    v144 = v157;
    v91 = v172;
    goto LABEL_42;
  }

  v145 = *v139;

  OUTLINED_FUNCTION_46();
  sub_1DC3A5DA0(v139, v146);
  sub_1DC3A505C(v145);
  OUTLINED_FUNCTION_99_1();
  v144 = v157;
  v91 = v172;
  if (v139)
  {
LABEL_46:
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v152 = sub_1DC2BE518();
    sub_1DC516F0C();

    goto LABEL_16;
  }

LABEL_42:
  sub_1DC28F358(v138 + v137, v144, &qword_1ECC7BFD0, &unk_1DC522550);
  v147 = OUTLINED_FUNCTION_34_11();
  OUTLINED_FUNCTION_39(v147, v148, v140);
  if (v90)
  {
    sub_1DC28EB30(v144, &qword_1ECC7BFD0, &unk_1DC522550);
  }

  else
  {
    v149 = *(v144 + 8);

    OUTLINED_FUNCTION_46();
    sub_1DC3A5DA0(v144, v150);
    v151 = sub_1DC3A505C(v149);

    if (v151)
    {
      goto LABEL_46;
    }
  }

  sub_1DC517B9C();
  sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v153 = sub_1DC2BE518();
  sub_1DC516F0C();

  OUTLINED_FUNCTION_8_12();
  sub_1DC3A5DA0(v91, v154);
LABEL_17:
  OUTLINED_FUNCTION_34();
}

void sub_1DC3A3DC4()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_38_2();
  v3 = sub_1DC514B2C();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_1();
  v106 = v9;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C240, &qword_1DC523070);
  OUTLINED_FUNCTION_35(v108);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_95();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C248, &qword_1DC52F220);
  v14 = OUTLINED_FUNCTION_10(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_15();
  v107 = v17;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_23_1();
  v110 = v19;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_62();
  v109 = v21;
  OUTLINED_FUNCTION_12();
  v114 = sub_1DC510FDC();
  v22 = OUTLINED_FUNCTION_0(v114);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_2_1();
  v113 = v27;
  OUTLINED_FUNCTION_12();
  v28 = sub_1DC51179C();
  v29 = OUTLINED_FUNCTION_0(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_1();
  v36 = v35 - v34;
  v117 = sub_1DC51164C();
  v37 = OUTLINED_FUNCTION_0(v117);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_64();
  v41 = *(v0 + 16);
  if (!v41)
  {
    goto LABEL_19;
  }

  v105 = v3;
  v42 = *(v40 + 16);
  v43 = *(v40 + 80);
  OUTLINED_FUNCTION_24();
  v45 = v0 + v44;
  v118 = (v47 - 8);
  v119 = v46;
  v48 = (v31 + 8);
  v112 = (v24 + 8);
  v49 = *(v47 + 56);
  v50 = v117;
  v111 = v36;
  v115 = v49;
  v116 = v48;
  while (1)
  {
    v119(v2, v45, v50);
    if (sub_1DC5114CC())
    {
      break;
    }

    v57 = OUTLINED_FUNCTION_30_14();
    v58(v57, v50);
LABEL_18:
    v45 += v49;
    if (!--v41)
    {
      goto LABEL_19;
    }
  }

  sub_1DC51154C();
  v51 = sub_1DC51177C();
  v52 = *v116;
  (*v116)(v36, v28);
  if ((v51 & 1) == 0)
  {
    v50 = v117;
    v59 = *v118;
    v60 = OUTLINED_FUNCTION_147_0();
    v61(v60);
    goto LABEL_17;
  }

  type metadata accessor for NLRouterBypassUtils();
  sub_1DC51154C();
  sub_1DC51178C();
  v52(v36, v28);
  v53 = sub_1DC307E5C();
  (*v112)(v113, v114);
  if (!v53)
  {
    v50 = v117;
    v62 = *v118;
    v63 = OUTLINED_FUNCTION_147_0();
    v64(v63);
LABEL_15:
    v36 = v111;
    goto LABEL_17;
  }

  sub_1DC51478C();

  v50 = v117;
  if (!v120[3])
  {
    v65 = *v118;
    v66 = OUTLINED_FUNCTION_147_0();
    v67(v66);

    sub_1DC28EB30(v120, &qword_1ECC7D3F0, &qword_1DC5238B0);
    goto LABEL_15;
  }

  sub_1DC51497C();
  v36 = v111;
  if ((OUTLINED_FUNCTION_115_3() & 1) == 0)
  {
    v68 = OUTLINED_FUNCTION_30_14();
    v69(v68, v117);

    goto LABEL_17;
  }

  sub_1DC51475C();
  if (v120[0])
  {
    v54 = sub_1DC51477C();

    if (v54)
    {

      v50 = v117;
      v55 = OUTLINED_FUNCTION_30_14();
      v56(v55, v117);
LABEL_17:
      v49 = v115;
      goto LABEL_18;
    }
  }

  sub_1DC51475C();

  if (v120[0] && (v70 = sub_1DC5146CC(), , v70))
  {
    v71 = v109;
    sub_1DC514B1C();

    v72 = v105;
  }

  else
  {
    v71 = v109;
    OUTLINED_FUNCTION_19();
    v72 = v105;
    __swift_storeEnumTagSinglePayload(v73, v74, v75, v105);
  }

  (*(v6 + 104))(v110, *MEMORY[0x1E69D2070], v72);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v76, v77, v78, v72);
  v79 = *(v108 + 48);
  sub_1DC28F358(v71, v1, &qword_1ECC7C248, &qword_1DC52F220);
  sub_1DC28F358(v110, v1 + v79, &qword_1ECC7C248, &qword_1DC52F220);
  OUTLINED_FUNCTION_5_3(v1);
  if (!v88)
  {
    sub_1DC28F358(v1, v107, &qword_1ECC7C248, &qword_1DC52F220);
    OUTLINED_FUNCTION_5_3(v1 + v79);
    if (!v88)
    {
      (*(v6 + 32))(v106, v1 + v79, v72);
      sub_1DC3A5DF8(&qword_1ECC7C250, MEMORY[0x1E69D2078]);
      sub_1DC5176CC();

      v100 = v71;
      v101 = *(v6 + 8);
      v102 = OUTLINED_FUNCTION_45_2();
      v101(v102);
      sub_1DC28EB30(v110, &qword_1ECC7C248, &qword_1DC52F220);
      sub_1DC28EB30(v100, &qword_1ECC7C248, &qword_1DC52F220);
      v103 = OUTLINED_FUNCTION_30_14();
      v104(v103);
      (v101)(v107, v72);
      sub_1DC28EB30(v1, &qword_1ECC7C248, &qword_1DC52F220);
      goto LABEL_19;
    }

    OUTLINED_FUNCTION_59_2();
    sub_1DC28EB30(v89, v90, v91);
    OUTLINED_FUNCTION_59_2();
    sub_1DC28EB30(v92, v93, v94);
    v95 = OUTLINED_FUNCTION_30_14();
    v96(v95);
    v97 = *(v6 + 8);
    v98 = OUTLINED_FUNCTION_45_2();
    v99(v98);
LABEL_32:
    sub_1DC28EB30(v1, &qword_1ECC7C240, &qword_1DC523070);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_59_2();
  sub_1DC28EB30(v80, v81, v82);
  OUTLINED_FUNCTION_59_2();
  sub_1DC28EB30(v83, v84, v85);
  v86 = OUTLINED_FUNCTION_30_14();
  v87(v86);
  OUTLINED_FUNCTION_5_3(v1 + v79);
  if (!v88)
  {
    goto LABEL_32;
  }

  sub_1DC28EB30(v1, &qword_1ECC7C248, &qword_1DC52F220);
LABEL_19:
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC3A4630(uint64_t a1)
{
  result = sub_1DC3A5CC8(a1);
  if (v4)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_1DC3A5D08(result, v3, 0, a1);
  }
}

void sub_1DC3A4698()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  OUTLINED_FUNCTION_38_2();
  v91 = sub_1DC5149BC();
  v3 = OUTLINED_FUNCTION_0(v91);
  v88 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_1();
  v85 = v7;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C238, &qword_1DC527190);
  OUTLINED_FUNCTION_35(v87);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v10);
  v90 = &v83 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C200, &qword_1DC523020);
  v13 = OUTLINED_FUNCTION_10(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_15();
  v86 = v16;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_23_1();
  v92 = v18;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_62();
  v89 = v20;
  OUTLINED_FUNCTION_12();
  v93 = sub_1DC510FDC();
  v21 = OUTLINED_FUNCTION_0(v93);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_1();
  v28 = v27 - v26;
  v29 = sub_1DC51179C();
  v30 = OUTLINED_FUNCTION_0(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_64();
  sub_1DC51154C();
  v35 = sub_1DC51177C();
  v36 = *(v32 + 8);
  v36(v0, v29);
  if ((v35 & 1) == 0)
  {
    goto LABEL_29;
  }

  v84 = v2;
  type metadata accessor for NLRouterBypassUtils();
  sub_1DC51154C();
  sub_1DC51178C();
  v36(v0, v29);
  v37 = sub_1DC307E5C();
  (*(v23 + 8))(v28, v93);
  if (!v37)
  {
    goto LABEL_29;
  }

  sub_1DC51478C();

  sub_1DC28F358(v94, v96, &qword_1ECC7D3F0, &qword_1DC5238B0);
  if (!v96[3])
  {
    v42 = 0;
    v40 = v90;
    v39 = v91;
    v41 = v92;
    goto LABEL_12;
  }

  sub_1DC28F358(v96, v95, &qword_1ECC7D3F0, &qword_1DC5238B0);
  sub_1DC514A9C();
  v38 = OUTLINED_FUNCTION_50_12();
  v40 = v90;
  v39 = v91;
  v41 = v92;
  if (v38)
  {

    sub_1DC51392C();
LABEL_11:

    v42 = v94[4];
    __swift_destroy_boxed_opaque_existential_1Tm(v95);
    goto LABEL_12;
  }

  sub_1DC514DAC();
  if (OUTLINED_FUNCTION_50_12())
  {
    goto LABEL_8;
  }

  sub_1DC514B9C();
  if (OUTLINED_FUNCTION_50_12())
  {

    sub_1DC514C8C();
    goto LABEL_11;
  }

  sub_1DC514C4C();
  if (OUTLINED_FUNCTION_50_12())
  {
LABEL_8:

    sub_1DC5148BC();
    goto LABEL_11;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v95);
  v42 = 0;
LABEL_12:
  sub_1DC28EB30(v96, &qword_1ECC7D3F0, &qword_1DC5238B0);
  if (!v42)
  {
    sub_1DC28EB30(v94, &qword_1ECC7D3F0, &qword_1DC5238B0);
LABEL_28:

    goto LABEL_29;
  }

  if (sub_1DC51477C())
  {
    sub_1DC5149AC();
  }

  else
  {
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v43, v44, v45, v39);
  }

  (*(v88 + 104))(v41, *MEMORY[0x1E69D1D40], v39);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v39);
  v49 = *(v87 + 48);
  v50 = OUTLINED_FUNCTION_87_1();
  OUTLINED_FUNCTION_114_0(v50, v51);
  OUTLINED_FUNCTION_114_0(v41, v40 + v49);
  OUTLINED_FUNCTION_39(v40, 1, v39);
  if (!v53)
  {
    v52 = v86;
    sub_1DC28F358(v40, v86, &qword_1ECC7C200, &qword_1DC523020);
    OUTLINED_FUNCTION_39(v40 + v49, 1, v39);
    if (!v53)
    {
      v54 = v88;
      v55 = v85;
      (*(v88 + 32))(v85, v40 + v49, v39);
      OUTLINED_FUNCTION_0_39();
      sub_1DC3A5DF8(v56, v57);
      v93 = v42;
      LODWORD(v91) = sub_1DC5176CC();
      v58 = *(v54 + 8);
      v58(v55, v39);
      OUTLINED_FUNCTION_58_10();
      sub_1DC28EB30(v59, v60, v61);
      OUTLINED_FUNCTION_58_10();
      sub_1DC28EB30(v62, v63, v64);
      v58(v52, v39);
      OUTLINED_FUNCTION_58_10();
      sub_1DC28EB30(v65, v66, v67);
      if (v91)
      {
        goto LABEL_31;
      }

LABEL_26:
      sub_1DC28EB30(v94, &qword_1ECC7D3F0, &qword_1DC5238B0);
LABEL_27:

      goto LABEL_28;
    }

    OUTLINED_FUNCTION_80(v41);
    OUTLINED_FUNCTION_46_4();
    (*(v88 + 8))(v52, v39);
LABEL_25:
    sub_1DC28EB30(v40, &qword_1ECC7C238, &qword_1DC527190);
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_80(v41);
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_39(v40 + v49, 1, v39);
  if (!v53)
  {
    goto LABEL_25;
  }

  sub_1DC28EB30(v40, &qword_1ECC7C200, &qword_1DC523020);
LABEL_31:

  sub_1DC5145FC();

  v68 = sub_1DC514F8C();

  v69 = sub_1DC2E5024(v68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C440, &qword_1DC522EF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DC522F00;
  strcpy((inited + 32), "usoQuantifier");
  *(inited + 46) = -4864;
  *(inited + 48) = 0xD000000000000012;
  *(inited + 56) = 0x80000001DC53D420;
  *(inited + 64) = 1701080941;
  *(inited + 72) = 0xE400000000000000;
  v71 = sub_1DC2E5CA4(inited, v69);
  swift_setDeallocating();
  sub_1DC2A180C();
  v72 = *(v71 + 16);
  if (v84)
  {
    if (v72)
    {
      v73 = swift_initStackObject();
      v74 = OUTLINED_FUNCTION_38_10(v73, xmmword_1DC523DA0);
      v75 = OUTLINED_FUNCTION_45_10(v74, "associatedDateTime");
      v77 = sub_1DC2E5CA4(v75, v76);

      swift_setDeallocating();
      sub_1DC2A180C();
      sub_1DC28EB30(v94, &qword_1ECC7D3F0, &qword_1DC5238B0);
      v78 = *(v77 + 16);

      goto LABEL_29;
    }

    sub_1DC28EB30(v94, &qword_1ECC7D3F0, &qword_1DC5238B0);

    goto LABEL_27;
  }

  if (v72)
  {
    v79 = swift_initStackObject();
    v80 = OUTLINED_FUNCTION_38_10(v79, xmmword_1DC523DA0);
    v81 = OUTLINED_FUNCTION_45_10(v80, "associatedDateTime");
    sub_1DC3A4F78(v81, v82);
    swift_setDeallocating();
    sub_1DC2A180C();

    sub_1DC28EB30(v94, &qword_1ECC7D3F0, &qword_1DC5238B0);
  }

  else
  {
    sub_1DC28EB30(v94, &qword_1ECC7D3F0, &qword_1DC5238B0);
  }

LABEL_29:
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC3A4F78(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == 1)
  {
    result = sub_1DC3A4630(a2);
    v8[0] = result;
    v8[1] = v6;
    if (v6)
    {
      MEMORY[0x1EEE9AC00](result);
      v7[2] = v8;
      v4 = sub_1DC2CF098(sub_1DC2CF174, v7, a1);

      return v4;
    }

    __break(1u);
  }

  else
  {
    if (!v3)
    {
      return 1;
    }

    return sub_1DC3A58FC(a1, a2);
  }

  return result;
}

BOOL sub_1DC3A505C(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 16);
  do
  {
    v3 = v1;
    if (v2 == v1)
    {
      break;
    }

    v4 = *(sub_1DC510F1C() - 8);
    ++v1;
    v5 = *(v4 + 80);
    v6 = *(v4 + 72);
    sub_1DC3A5104();
  }

  while ((v7 & 1) == 0);
  return v2 != v3;
}

void sub_1DC3A5104()
{
  OUTLINED_FUNCTION_33();
  v0 = sub_1DC5149BC();
  v1 = OUTLINED_FUNCTION_0(v0);
  v73 = v2;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_2_1();
  v70 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C238, &qword_1DC527190);
  OUTLINED_FUNCTION_35(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v69 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C200, &qword_1DC523020);
  v13 = OUTLINED_FUNCTION_10(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_15();
  v71 = v16;
  OUTLINED_FUNCTION_22();
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v69 - v19;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_62();
  v72 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C890, &qword_1DC5234B0);
  OUTLINED_FUNCTION_10(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v69 - v26;
  type metadata accessor for NLRouterBypassUtils();
  OUTLINED_FUNCTION_38_2();
  v28 = sub_1DC510F1C();
  OUTLINED_FUNCTION_35(v28);
  v30 = *(v29 + 16);
  v31 = OUTLINED_FUNCTION_55();
  v32(v31);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v28);
  sub_1DC307F68(v27);
  sub_1DC28EB30(v27, &qword_1ECC7C890, &qword_1DC5234B0);
  sub_1DC51478C();

  if (!v74[3])
  {
    v38 = &qword_1ECC7D3F0;
    v39 = &qword_1DC5238B0;
    v40 = v74;
LABEL_7:
    sub_1DC28EB30(v40, v38, v39);
    goto LABEL_8;
  }

  sub_1DC51497C();
  if (OUTLINED_FUNCTION_115_3())
  {

    sub_1DC51475C();

    if (v74[0] && (v36 = sub_1DC51477C(), , v36))
    {
      v37 = v72;
      sub_1DC5149AC();
    }

    else
    {
      v37 = v72;
      OUTLINED_FUNCTION_19();
      __swift_storeEnumTagSinglePayload(v41, v42, v43, v0);
    }

    v44 = v73;
    (*(v73 + 104))(v20, *MEMORY[0x1E69D1D40], v0);
    OUTLINED_FUNCTION_61();
    __swift_storeEnumTagSinglePayload(v45, v46, v47, v0);
    v48 = *(v6 + 48);
    OUTLINED_FUNCTION_114_0(v37, v11);
    OUTLINED_FUNCTION_114_0(v20, &v11[v48]);
    v49 = OUTLINED_FUNCTION_100();
    OUTLINED_FUNCTION_39(v49, v50, v0);
    if (!v51)
    {
      sub_1DC28F358(v11, v71, &qword_1ECC7C200, &qword_1DC523020);
      OUTLINED_FUNCTION_39(&v11[v48], 1, v0);
      if (!v51)
      {
        v55 = v70;
        (*(v44 + 32))(v70, &v11[v48], v0);
        OUTLINED_FUNCTION_0_39();
        sub_1DC3A5DF8(v56, v57);
        sub_1DC5176CC();

        v58 = *(v44 + 8);
        v58(v55, v0);
        OUTLINED_FUNCTION_58_10();
        sub_1DC28EB30(v59, v60, v61);
        OUTLINED_FUNCTION_58_10();
        sub_1DC28EB30(v62, v63, v64);
        v65 = OUTLINED_FUNCTION_147_0();
        (v58)(v65);
        OUTLINED_FUNCTION_58_10();
        sub_1DC28EB30(v66, v67, v68);
        goto LABEL_8;
      }

      OUTLINED_FUNCTION_80(v20);
      OUTLINED_FUNCTION_46_4();
      v52 = *(v44 + 8);
      v53 = OUTLINED_FUNCTION_147_0();
      v54(v53);
LABEL_18:
      sub_1DC28EB30(v11, &qword_1ECC7C238, &qword_1DC527190);
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_80(v20);
    OUTLINED_FUNCTION_46_4();
    OUTLINED_FUNCTION_39(&v11[v48], 1, v0);
    if (!v51)
    {
      goto LABEL_18;
    }

    v38 = &qword_1ECC7C200;
    v39 = &qword_1DC523020;
    v40 = v11;
    goto LABEL_7;
  }

LABEL_8:
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC3A55F0(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_1DC51164C(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    sub_1DC51164C();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

unint64_t sub_1DC3A56C4()
{
  result = qword_1ECC7D148;
  if (!qword_1ECC7D148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7D148);
  }

  return result;
}

size_t sub_1DC3A5718(size_t a1, int64_t a2, char a3)
{
  result = sub_1DC3A5748(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1DC3A5748(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D150, qword_1DC526DD8);
  v10 = *(sub_1DC51164C() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1DC51164C() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1DC3A55F0(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1DC3A58FC(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v12[6] = *MEMORY[0x1E69E9840];
  v12[0] = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v12[3] = v12;
  v12[4] = a2;
  v5 = ((1 << v4) + 63) >> 6;
  if (v4 & 0x3Fu) <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v6 = &v12[-1] - ((8 * v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    sub_1DC2A3304(0, v5, v6);
    v7 = sub_1DC3A5A88(v6, v5, v3, a2);
  }

  else
  {
    v10 = swift_slowAlloc();
    v7 = sub_1DC3A5C14(v10, v5, sub_1DC3A5D84);
    MEMORY[0x1E1298840](v10, -1, -1);
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7 & 1;
}

uint64_t sub_1DC3A5A88(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v25 = *(a3 + 16);
  v23 = result;
  v24 = a3 + 32;
  v6 = a4 + 56;
LABEL_2:
  while (2)
  {
    while (2)
    {
      v7 = v5;
      if (v5 == v25)
      {
        return v7 != v25;
      }

      if (v5 >= v25)
      {
        __break(1u);
        goto LABEL_19;
      }

      if (__OFADD__(v5, 1))
      {
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v26 = v5 + 1;
      v8 = (v24 + 16 * v5);
      v10 = *v8;
      v9 = v8[1];
      v11 = *(a4 + 40);
      sub_1DC5182FC();

      sub_1DC51769C();
      v12 = sub_1DC51833C();
      v13 = ~(-1 << *(a4 + 32));
      do
      {
        v14 = v12 & v13;
        v15 = (v12 & v13) >> 6;
        v16 = 1 << (v12 & v13);
        if ((v16 & *(v6 + 8 * v15)) == 0)
        {

          v5 = v26;
          goto LABEL_2;
        }

        v17 = (*(a4 + 48) + 16 * v14);
        if (*v17 == v10 && v17[1] == v9)
        {
          break;
        }

        v19 = sub_1DC51825C();
        v12 = v14 + 1;
      }

      while ((v19 & 1) == 0);

      v20 = *(v23 + 8 * v15);
      *(v23 + 8 * v15) = v20 | v16;
      v5 = v26;
      if ((v20 & v16) != 0)
      {
        continue;
      }

      break;
    }

    v21 = v22 + 1;
    if (!__OFADD__(v22, 1))
    {
      ++v22;
      if (v21 != *(a4 + 16))
      {
        continue;
      }

      return v7 != v25;
    }

    break;
  }

LABEL_20:
  __break(1u);
  return result;
}

void *sub_1DC3A5C14(void *result, uint64_t a2, void (*a3)(uint64_t *__return_ptr, void *, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    a3(&v8, v6, a2);
    if (!v3)
    {
      v7 = v8;
    }

    return (v7 & 1);
  }

  return result;
}

uint64_t sub_1DC3A5C94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  result = sub_1DC3A5A88(a1, a2, *a3, a4);
  if (!v5)
  {
    *a5 = result & 1;
  }

  return result;
}

uint64_t sub_1DC3A5CC8(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_1DC517EAC();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_1DC3A5D08(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = (*(a4 + 48) + 16 * result);
    v5 = *v4;
    v6 = v4[1];

    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1DC3A5DA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_35(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1DC3A5DF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_91_2()
{
}

uint64_t OUTLINED_FUNCTION_104_0()
{
  v1 = **(v0 + 248);
  result = *(v0 + 208);
  v3 = *(v0 + 424);
  return result;
}

size_t OUTLINED_FUNCTION_111_2@<X0>(uint64_t a1@<X8>)
{

  return sub_1DC3A5718(0, a1 + 1, 1);
}

id OUTLINED_FUNCTION_113_4()
{
  v2 = *(v0 + 400);

  return sub_1DC2BE518();
}

uint64_t OUTLINED_FUNCTION_116_2()
{
}

uint64_t sub_1DC3A5EE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v130 = a1;
  v117 = a2;
  v122 = sub_1DC510FDC();
  v2 = OUTLINED_FUNCTION_0(v122);
  v127 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1();
  v121 = v7 - v6;
  OUTLINED_FUNCTION_12();
  v124 = sub_1DC51179C();
  v8 = OUTLINED_FUNCTION_0(v124);
  v126 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15();
  v120 = v12;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v13);
  v128 = &v103 - v14;
  OUTLINED_FUNCTION_12();
  v123 = sub_1DC51164C();
  v15 = OUTLINED_FUNCTION_0(v123);
  v116 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_1();
  v21 = v20 - v19;
  v22 = sub_1DC51122C();
  v23 = OUTLINED_FUNCTION_0(v22);
  v118 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_1();
  v115 = v28 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C158, &unk_1DC5234A0);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v32 = &v103 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C160, qword_1DC5233B0);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v36 = &v103 - v35;
  v129 = type metadata accessor for NLRouterNLParseResponse(0);
  v37 = OUTLINED_FUNCTION_35(v129);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_1();
  v108 = (v41 - v40);
  OUTLINED_FUNCTION_12();
  v42 = sub_1DC516F5C();
  v43 = OUTLINED_FUNCTION_0(v42);
  v45 = v44;
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_1();
  v50 = v49 - v48;
  v51 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v52 = sub_1DC2BE518();
  v53 = OUTLINED_FUNCTION_130();
  sub_1DC2A2ED0("HeuristicRules.JournalRule", 26, 2, v52, v53 & 1, v50);

  sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
  if ((sub_1DC3442F0() & 1) == 0)
  {
    sub_1DC517B9C();
    v59 = sub_1DC2BE518();
    sub_1DC516F0C();

    sub_1DC5157EC();
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v60, v61, v62, v63);
LABEL_25:
    v102 = sub_1DC2BE518();
    sub_1DC2B8848();

    return (*(v45 + 8))(v50, v42);
  }

  v107 = v51;
  v54 = type metadata accessor for NLRouterServiceRequest(0);
  sub_1DC28F358(v130 + *(v54 + 32), v32, &qword_1ECC7C158, &unk_1DC5234A0);
  v55 = type metadata accessor for NLRouterTurnProbingResult(0);
  if (__swift_getEnumTagSinglePayload(v32, 1, v55) == 1)
  {
    sub_1DC28EB30(v32, &qword_1ECC7C158, &unk_1DC5234A0);
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v56, v57, v58, v129);
LABEL_6:
    sub_1DC28EB30(v36, &qword_1ECC7C160, qword_1DC5233B0);
    sub_1DC5157EC();
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v64, v65, v66, v67);
    goto LABEL_25;
  }

  sub_1DC28F358(v32, v36, &qword_1ECC7C160, qword_1DC5233B0);
  sub_1DC2E5408(v32, type metadata accessor for NLRouterTurnProbingResult);
  if (__swift_getEnumTagSinglePayload(v36, 1, v129) == 1)
  {
    goto LABEL_6;
  }

  v103 = v50;
  v104 = v45;
  v105 = v42;
  v68 = v108;
  result = sub_1DC2E53A4(v36, v108);
  v70 = 0;
  v71 = *v68;
  v110 = v118 + 16;
  v112 = *(v71 + 16);
  v129 = (v116 + 8);
  v130 = v116 + 16;
  v119 = v127 + 8;
  v109 = (v118 + 8);
  v72 = v123;
  v73 = v124;
  v74 = v115;
  v111 = v22;
  v106 = v71;
  v125 = (v126 + 8);
  while (1)
  {
    if (v70 == v112)
    {
      OUTLINED_FUNCTION_4_21();
      sub_1DC5157EC();
      OUTLINED_FUNCTION_19();
LABEL_24:
      __swift_storeEnumTagSinglePayload(v98, v99, v100, v101);
      v42 = v105;
      v45 = v104;
      v50 = v103;
      goto LABEL_25;
    }

    if (v70 >= *(v71 + 16))
    {
      break;
    }

    v75 = *(v118 + 80);
    OUTLINED_FUNCTION_24();
    (*(v77 + 16))(v74, v71 + v76 + *(v77 + 72) * v70, v22);
    v78 = sub_1DC5111AC();
    v79 = *(v78 + 16);
    if (v79)
    {
      v113 = v70;
      v114 = v78;
      v80 = *(v116 + 80);
      OUTLINED_FUNCTION_24();
      v83 = v81 + v82;
      v85 = *(v84 + 72);
      v86 = *(v84 + 16);
      v126 = v86;
      v127 = v85;
      while (1)
      {
        (v86)(v21, v83, v72);
        if ((sub_1DC5114CC() & 1) == 0)
        {
          goto LABEL_16;
        }

        v87 = v128;
        sub_1DC51154C();
        v88 = sub_1DC51177C();
        v89 = *v125;
        (*v125)(v87, v73);
        if ((v88 & 1) == 0)
        {
          break;
        }

        v90 = v120;
        sub_1DC51154C();
        sub_1DC51178C();
        v89(v90, v73);
        sub_1DC5138FC();
        v91 = OUTLINED_FUNCTION_6_17();
        v92(v91);
        v93 = sub_1DC3A67C8();

        v72 = v123;
        (*v129)(v21, v123);
        v73 = v124;
        v86 = v126;
        v85 = v127;
        if (v93)
        {

          (*v109)(v115, v111);
          OUTLINED_FUNCTION_4_21();
          v94 = *MEMORY[0x1E69D02F8];
          v95 = sub_1DC5157EC();
          OUTLINED_FUNCTION_35(v95);
          v97 = v117;
          (*(v96 + 104))(v117, v94, v95);
          v98 = v97;
          v99 = 0;
          v100 = 1;
          v101 = v95;
          goto LABEL_24;
        }

LABEL_17:
        v83 += v85;
        if (!--v79)
        {

          v74 = v115;
          v70 = v113;
          v71 = v106;
          goto LABEL_22;
        }
      }

      v86 = v126;
      v85 = v127;
LABEL_16:
      (*v129)(v21, v72);
      goto LABEL_17;
    }

LABEL_22:
    ++v70;
    v22 = v111;
    result = (*v109)(v74, v111);
  }

  __break(1u);
  return result;
}

unint64_t sub_1DC3A67C8()
{
  v1 = sub_1DC514ECC();
  v2 = OUTLINED_FUNCTION_0(v1);
  v60 = v3;
  v61 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1();
  v59 = v7 - v6;
  OUTLINED_FUNCTION_12();
  v68 = sub_1DC514E7C();
  v8 = OUTLINED_FUNCTION_0(v68);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15();
  v58 = v13;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v57 - v15;
  v17 = sub_1DC514E3C();
  v18 = OUTLINED_FUNCTION_0(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_15();
  v63 = v23;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v57 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1A0, &qword_1DC522F80);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  OUTLINED_FUNCTION_15();
  v64 = v29;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v30);
  v65 = &v57 - v31;
  v62 = v0;
  result = sub_1DC514EEC();
  v33 = result;
  v34 = 0;
  v35 = *(result + 16);
  v66 = (v20 + 8);
  v67 = (v10 + 8);
  while (1)
  {
    if (v35 == v34)
    {

      v44 = 1;
      v45 = v65;
      goto LABEL_13;
    }

    if (v34 >= *(v33 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v36 = *(v20 + 80);
    OUTLINED_FUNCTION_24();
    v38 = v17;
    (*(v20 + 16))(v26, v33 + v37 + *(v20 + 72) * v34, v17);
    sub_1DC514E0C();
    v39 = sub_1DC514E6C();
    v41 = v40;
    (*v67)(v16, v68);
    if (v39 == 1802723700 && v41 == 0xE400000000000000)
    {
      break;
    }

    v43 = sub_1DC51825C();

    if (v43)
    {
      goto LABEL_12;
    }

    v17 = v38;
    result = (*v66)(v26, v38);
    ++v34;
  }

LABEL_12:

  v45 = v65;
  v17 = v38;
  (*(v20 + 32))(v65, v26, v38);
  v44 = 0;
LABEL_13:
  v46 = v64;
  __swift_storeEnumTagSinglePayload(v45, v44, 1, v17);
  sub_1DC28F358(v45, v46, &qword_1ECC7C1A0, &qword_1DC522F80);
  if (__swift_getEnumTagSinglePayload(v46, 1, v17) == 1)
  {
    sub_1DC28EB30(v45, &qword_1ECC7C1A0, &qword_1DC522F80);
    v47 = 0;
    v45 = v46;
LABEL_18:
    sub_1DC28EB30(v45, &qword_1ECC7C1A0, &qword_1DC522F80);
    return v47 & 1;
  }

  (*(v20 + 32))(v63, v46, v17);
  v48 = sub_1DC514EFC();
  result = sub_1DC514E1C();
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_20;
  }

  if (result < *(v48 + 16))
  {
    v50 = v59;
    v49 = v60;
    v51 = *(v60 + 80);
    OUTLINED_FUNCTION_24();
    v54 = v17;
    v55 = v61;
    (*(v49 + 16))(v50, v48 + v52 + *(v49 + 72) * v53, v61);

    v56 = v58;
    sub_1DC514EBC();
    sub_1DC514E6C();
    (*v67)(v56, v68);
    v47 = sub_1DC51795C();

    (*(v49 + 8))(v50, v55);
    (*v66)(v63, v54);
    goto LABEL_18;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1DC3A6D00()
{
  v1 = OBJC_IVAR____TtC13CDMFoundation9BitVector_data;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_1DC3A6D48(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13CDMFoundation9BitVector_data;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1DC3A6DA0()
{
  v0 = sub_1DC51808C();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DC3A6DEC(char a1)
{
  result = 0x664F7265626D756ELL;
  switch(a1)
  {
    case 2:
      result = 0x4272655073746962;
      break;
    case 3:
      result = 0x7466696853746962;
      break;
    case 4:
      result = 1635017060;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DC3A6E98(unsigned __int8 a1, char a2)
{
  v2 = 0xEC00000073746942;
  v3 = 0x664F7265626D756ELL;
  v4 = a1;
  v5 = 0x664F7265626D756ELL;
  v6 = 0xEC00000073746942;
  switch(v4)
  {
    case 1:
      v6 = 0xED00007365747942;
      v5 = 0x664F7265626D756ELL;
      break;
    case 2:
      v5 = 0x4272655073746962;
      v6 = 0xEC0000006B636F6CLL;
      break;
    case 3:
      v6 = 0xE800000000000000;
      v5 = 0x7466696853746962;
      break;
    case 4:
      v6 = 0xE400000000000000;
      v5 = 1635017060;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0xED00007365747942;
      break;
    case 2:
      v3 = 0x4272655073746962;
      v2 = 0xEC0000006B636F6CLL;
      break;
    case 3:
      v2 = 0xE800000000000000;
      v3 = 0x7466696853746962;
      break;
    case 4:
      v2 = 0xE400000000000000;
      v3 = 1635017060;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DC51825C();
  }

  return v8 & 1;
}

uint64_t sub_1DC3A7020(char a1)
{
  sub_1DC5182FC();
  sub_1DC3A6DEC(a1);
  sub_1DC51769C();

  return sub_1DC51833C();
}

uint64_t sub_1DC3A708C()
{
  sub_1DC51769C();
}

uint64_t sub_1DC3A7168(uint64_t a1, char a2)
{
  sub_1DC5182FC();
  sub_1DC3A6DEC(a2);
  sub_1DC51769C();

  return sub_1DC51833C();
}

uint64_t sub_1DC3A71C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DC3A6DA0();
  *a2 = result;
  return result;
}

uint64_t sub_1DC3A71F8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DC3A6DEC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DC3A722C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DC3A6DA0();
  *a1 = result;
  return result;
}

uint64_t sub_1DC3A7260(uint64_t a1)
{
  v2 = sub_1DC3A7574();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DC3A729C(uint64_t a1)
{
  v2 = sub_1DC3A7574();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1DC3A731C(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D160, &qword_1DC526E08);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v18 - v11;
  v13 = a1[4];
  v14 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DC3A7574();
  sub_1DC51834C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    type metadata accessor for BitVector();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v19) = 0;
    *&v3[OBJC_IVAR____TtC13CDMFoundation9BitVector_numberOfBits] = OUTLINED_FUNCTION_1_27();
    LOBYTE(v19) = 1;
    *&v3[OBJC_IVAR____TtC13CDMFoundation9BitVector_numberOfBytes] = OUTLINED_FUNCTION_1_27();
    LOBYTE(v19) = 2;
    *&v3[OBJC_IVAR____TtC13CDMFoundation9BitVector_bitsPerBlock] = OUTLINED_FUNCTION_1_27();
    LOBYTE(v19) = 3;
    *&v3[OBJC_IVAR____TtC13CDMFoundation9BitVector_bitShift] = OUTLINED_FUNCTION_1_27();
    v21 = 4;
    sub_1DC3A75EC();
    sub_1DC51814C();
    v16 = sub_1DC33360C(v19, v20);
    (*(v8 + 8))(v12, v5);
    *&v3[OBJC_IVAR____TtC13CDMFoundation9BitVector_data] = v16;
    v17 = type metadata accessor for BitVector();
    v18.receiver = v3;
    v18.super_class = v17;
    v14 = objc_msgSendSuper2(&v18, sel_init);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v14;
}

unint64_t sub_1DC3A7574()
{
  result = qword_1ECC7D168;
  if (!qword_1ECC7D168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7D168);
  }

  return result;
}

unint64_t sub_1DC3A75EC()
{
  result = qword_1ECC7BEB0;
  if (!qword_1ECC7BEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7BEB0);
  }

  return result;
}

uint64_t sub_1DC3A7640(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D170, &qword_1DC526E10);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v22[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DC3A7574();
  sub_1DC51835C();
  v14 = *(v3 + OBJC_IVAR____TtC13CDMFoundation9BitVector_numberOfBits);
  LOBYTE(v23) = 0;
  OUTLINED_FUNCTION_0_40();
  sub_1DC5181FC();
  if (v2)
  {
    return (*(v8 + 8))(v12, v5);
  }

  v15 = *(v3 + OBJC_IVAR____TtC13CDMFoundation9BitVector_numberOfBytes);
  LOBYTE(v23) = 1;
  OUTLINED_FUNCTION_0_40();
  sub_1DC5181FC();
  v16 = *(v3 + OBJC_IVAR____TtC13CDMFoundation9BitVector_bitsPerBlock);
  LOBYTE(v23) = 2;
  OUTLINED_FUNCTION_0_40();
  sub_1DC5181FC();
  v17 = *(v3 + OBJC_IVAR____TtC13CDMFoundation9BitVector_bitShift);
  LOBYTE(v23) = 3;
  OUTLINED_FUNCTION_0_40();
  sub_1DC5181FC();
  v18 = sub_1DC3A7AB4();
  v20 = v19;
  v23 = v18;
  v24 = v19;
  v22[15] = 4;
  sub_1DC3A7D2C();
  OUTLINED_FUNCTION_0_40();
  sub_1DC51820C();
  (*(v8 + 8))(v12, v5);
  return sub_1DC2AD740(v18, v20);
}

id sub_1DC3A7888(id result)
{
  *&v1[OBJC_IVAR____TtC13CDMFoundation9BitVector_bitsPerBlock] = 8;
  *&v1[OBJC_IVAR____TtC13CDMFoundation9BitVector_bitShift] = 3;
  v2 = ceilf(vcvts_n_f32_u64(result, 3uLL));
  if (v2 == INFINITY)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v2 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v2 >= 1.8447e19)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = v2;
  if (v2 >= 1.8447e19)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  *&v1[OBJC_IVAR____TtC13CDMFoundation9BitVector_numberOfBytes] = v3;
  *&v1[OBJC_IVAR____TtC13CDMFoundation9BitVector_numberOfBits] = result;
  if ((v3 & 0x8000000000000000) == 0)
  {
    *&v1[OBJC_IVAR____TtC13CDMFoundation9BitVector_data] = sub_1DC3A796C(0, v3);
    v4.receiver = v1;
    v4.super_class = type metadata accessor for BitVector();
    return objc_msgSendSuper2(&v4, sel_init);
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1DC3A796C(uint64_t result, size_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v3 = result;
    v4 = sub_1DC517A4C();
    *(v4 + 16) = a2;
    memset((v4 + 32), v3, a2);
    return v4;
  }

  return result;
}

void sub_1DC3A79DC(unint64_t a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *(v1 + OBJC_IVAR____TtC13CDMFoundation9BitVector_bitShift);
    if (v5 <= 0x3F)
    {
      v3 = a1 >> v5;
    }

    else
    {
      v3 = 0;
    }

    if (*(v1 + OBJC_IVAR____TtC13CDMFoundation9BitVector_bitsPerBlock))
    {
      v4 = OBJC_IVAR____TtC13CDMFoundation9BitVector_data;
      swift_beginAccess();
      v2 = *(v1 + v4);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v1 + v4) = v2;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_11:
  v2 = sub_1DC3A7D18(v2);
LABEL_7:
  if (v3 >= *(v2 + 2))
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_2_23();
    v2[v3 + 32] |= v7;
    *(v1 + v4) = v2;
  }
}

uint64_t sub_1DC3A7AB4()
{
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x78))();
  if ((*(v0 + OBJC_IVAR____TtC13CDMFoundation9BitVector_numberOfBytes) & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = MEMORY[0x1E128F2C0](result + 32);

    return v2;
  }

  return result;
}

unint64_t sub_1DC3A7B44(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = *(v1 + OBJC_IVAR____TtC13CDMFoundation9BitVector_bitShift);
  if (v2 <= 0x3F)
  {
    v3 = result >> v2;
  }

  else
  {
    v3 = 0;
  }

  result = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x78))();
  if (v3 >= *(result + 16))
  {
    goto LABEL_9;
  }

  v4 = *(result + v3 + 32);

  if (*(v1 + OBJC_IVAR____TtC13CDMFoundation9BitVector_bitsPerBlock))
  {
    OUTLINED_FUNCTION_2_23();
    return (v5 & v4) != 0;
  }

LABEL_10:
  __break(1u);
  return result;
}

id sub_1DC3A7C44()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BitVector();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1DC3A7C88@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 144))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_1DC3A7D2C()
{
  result = qword_1ECC7D178;
  if (!qword_1ECC7D178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7D178);
  }

  return result;
}

unint64_t sub_1DC3A7D84()
{
  result = qword_1ECC7D180;
  if (!qword_1ECC7D180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7D180);
  }

  return result;
}

unint64_t sub_1DC3A7DDC()
{
  result = qword_1ECC7D188;
  if (!qword_1ECC7D188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7D188);
  }

  return result;
}

unint64_t sub_1DC3A7E34()
{
  result = qword_1ECC7D190;
  if (!qword_1ECC7D190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7D190);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BitVector.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for BitVector.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1DC3A7FEC()
{
  v0 = sub_1DC5172FC();
  __swift_allocate_value_buffer(v0, qword_1ECC8F960);
  v1 = OUTLINED_FUNCTION_43();
  v3 = __swift_project_value_buffer(v1, v2);
  v4 = swift_allocObject();
  v4[2] = 0xD000000000000013;
  v4[3] = 0x80000001DC544080;
  v4[4] = 0x746E45746E657645;
  v4[5] = 0xEB00000000797469;
  *v3 = v4;
  v5 = *MEMORY[0x1E69DB098];
  OUTLINED_FUNCTION_7_1(v0);
  v7 = *(v6 + 104);

  return v7(v3);
}

uint64_t sub_1DC3A80C8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFF8, &qword_1DC522580);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  OUTLINED_FUNCTION_8();
  v87 = v6 - v7;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v86 = &v80 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v80 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v80 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v80 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v80 - v20;
  v22 = sub_1DC5172FC();
  v23 = OUTLINED_FUNCTION_0(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_1();
  v30 = v29 - v28;
  sub_1DC5171CC();
  if (qword_1ECC88570 != -1)
  {
    OUTLINED_FUNCTION_4_22();
  }

  __swift_project_value_buffer(v22, qword_1ECC8F960);
  v31 = sub_1DC5172DC();
  (*(v25 + 8))(v30, v22);
  if (v31)
  {
    v32 = sub_1DC5171EC();
    sub_1DC30F668(0x656C746974, 0xE500000000000000, v32, v21);

    v33 = sub_1DC5172AC();
    OUTLINED_FUNCTION_5_3(v21);
    if (v34)
    {
      sub_1DC30F72C(v21);
    }

    else
    {
      sub_1DC382AC0();
      v85 = v50;
      v52 = v51;
      OUTLINED_FUNCTION_1_28();
      (*(v53 + 8))(v21, v33);
      v84 = v52;
      if (v52)
      {
LABEL_10:
        v54 = sub_1DC5171EC();
        sub_1DC30F668(0x6E6F697461636F6CLL, 0xE800000000000000, v54, v19);

        OUTLINED_FUNCTION_5_3(v19);
        if (v34)
        {
          sub_1DC30F72C(v19);
        }

        else
        {
          sub_1DC382AC0();
          v83 = v55;
          v57 = v56;
          OUTLINED_FUNCTION_1_28();
          (*(v58 + 8))(v19, v33);
          v82 = v57;
          if (v57)
          {
LABEL_15:
            v59 = sub_1DC5171EC();
            sub_1DC30F668(0x7461447472617473, 0xE900000000000065, v59, v16);

            OUTLINED_FUNCTION_5_3(v16);
            if (v34)
            {
              sub_1DC30F72C(v16);
            }

            else
            {
              sub_1DC382AC0();
              v81 = v60;
              v43 = v61;
              OUTLINED_FUNCTION_1_28();
              (*(v62 + 8))(v16, v33);
              if (v43)
              {
LABEL_20:
                v63 = sub_1DC5171EC();
                sub_1DC30F668(0x65746144646E65, 0xE700000000000000, v63, v13);

                OUTLINED_FUNCTION_5_3(v13);
                if (v34)
                {
                  sub_1DC30F72C(v13);
                }

                else
                {
                  sub_1DC382AC0();
                  v44 = v64;
                  v45 = v65;
                  OUTLINED_FUNCTION_1_28();
                  (*(v66 + 8))(v13, v33);
                  if (v45)
                  {
                    goto LABEL_25;
                  }
                }

                v44 = 0;
                v45 = 0xE000000000000000;
LABEL_25:
                v67 = v87;
                v68 = sub_1DC5171EC();
                v69 = v86;
                sub_1DC30F668(0x657A696E6167726FLL, 0xE900000000000072, v68, v86);

                v70 = sub_1DC3A872C(v69);
                if (v71)
                {
                  v46 = v70;
                }

                else
                {
                  v46 = 0;
                }

                if (v71)
                {
                  v47 = v71;
                }

                else
                {
                  v47 = 0xE000000000000000;
                }

                v72 = sub_1DC5171EC();
                sub_1DC30F668(0x7365746F6ELL, 0xE500000000000000, v72, v67);

                OUTLINED_FUNCTION_5_3(v67);
                if (v34)
                {
                  sub_1DC30F72C(v67);
                }

                else
                {
                  sub_1DC382AC0();
                  v48 = v73;
                  v49 = v74;
                  OUTLINED_FUNCTION_1_28();
                  (*(v75 + 8))();
                  if (v49)
                  {
                    v76 = sub_1DC51721C();
                    OUTLINED_FUNCTION_7_1(v76);
                    result = (*(v77 + 8))(a1);
LABEL_37:
                    v39 = v84;
                    v38 = v85;
                    v41 = v82;
                    v40 = v83;
                    v42 = v81;
                    goto LABEL_38;
                  }
                }

                v78 = sub_1DC51721C();
                OUTLINED_FUNCTION_7_1(v78);
                (*(v79 + 8))(a1);

                v48 = 0;
                v49 = 0xE000000000000000;
                goto LABEL_37;
              }
            }

            v81 = 0;
            v43 = 0xE000000000000000;
            goto LABEL_20;
          }
        }

        v82 = 0xE000000000000000;
        v83 = 0;
        goto LABEL_15;
      }
    }

    v84 = 0xE000000000000000;
    v85 = 0;
    goto LABEL_10;
  }

  v35 = sub_1DC51721C();
  OUTLINED_FUNCTION_7_1(v35);
  result = (*(v36 + 8))(a1);
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  v49 = 0;
LABEL_38:
  *a2 = v38;
  a2[1] = v39;
  a2[2] = v40;
  a2[3] = v41;
  a2[4] = v42;
  a2[5] = v43;
  a2[6] = v44;
  a2[7] = v45;
  a2[8] = v46;
  a2[9] = v47;
  a2[10] = v48;
  a2[11] = v49;
  return result;
}

uint64_t sub_1DC3A872C(uint64_t a1)
{
  v2 = sub_1DC5172FC();
  v3 = OUTLINED_FUNCTION_0(v2);
  v65 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  v9 = v8 - v7;
  v10 = sub_1DC51721C();
  v11 = OUTLINED_FUNCTION_0(v10);
  v66 = v12;
  v67 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1();
  v17 = v16 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFF8, &qword_1DC522580);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  OUTLINED_FUNCTION_8();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v64 - v24;
  v26 = sub_1DC5172AC();
  v27 = OUTLINED_FUNCTION_0(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_8();
  v34 = (v32 - v33);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v64 - v36;
  sub_1DC35D0B4(a1, v25);
  if (__swift_getEnumTagSinglePayload(v25, 1, v26) == 1)
  {
    sub_1DC30F72C(a1);
    sub_1DC30F72C(v25);
  }

  else
  {
    (*(v29 + 32))(v37, v25, v26);
    (*(v29 + 16))(v34, v37, v26);
    if ((*(v29 + 88))(v34, v26) == *MEMORY[0x1E69DAE58])
    {
      (*(v29 + 96))(v34, v26);
      v38 = *v34;
      v39 = swift_projectBox();
      (*(v66 + 16))(v17, v39, v67);
      sub_1DC5171CC();
      if (qword_1ECC88578 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v2, qword_1ECC8F978);
      v40 = sub_1DC5172DC();
      (*(v65 + 8))(v9, v2);
      if (v40)
      {
        v41 = sub_1DC5171EC();
        sub_1DC30F668(1701667182, 0xE400000000000000, v41, v22);

        if (__swift_getEnumTagSinglePayload(v22, 1, v26) == 1)
        {
          sub_1DC30F72C(v22);
        }

        else
        {
          sub_1DC382AC0();
          v49 = v51;
          v53 = v52;
          v54 = v22;
          v55 = *(v29 + 8);
          v55(v54, v26);
          if (v53)
          {
            sub_1DC30F72C(a1);
            v56 = OUTLINED_FUNCTION_4_1();
            v57(v56);
            v58 = OUTLINED_FUNCTION_35_0();
            (v55)(v58);

            return v49;
          }
        }

        sub_1DC30F72C(a1);
        v59 = OUTLINED_FUNCTION_4_1();
        v60(v59);
        v61 = *(v29 + 8);
        v62 = OUTLINED_FUNCTION_35_0();
        v63(v62);

        return 0;
      }

      sub_1DC30F72C(a1);
      v44 = OUTLINED_FUNCTION_4_1();
      v45(v44);
      v46 = *(v29 + 8);
      v47 = OUTLINED_FUNCTION_35_0();
      v48(v47);
    }

    else
    {
      sub_1DC30F72C(a1);
      v42 = *(v29 + 8);
      v43 = OUTLINED_FUNCTION_35_0();
      v42(v43);
      (v42)(v34, v26);
    }
  }

  return 0;
}

uint64_t sub_1DC3A8C04()
{
  v1 = v0;
  sub_1DC517F4C();
  MEMORY[0x1E1296160](0x203A656C746954, 0xE700000000000000);
  MEMORY[0x1E1296160](*v1, v1[1]);
  MEMORY[0x1E1296160](0x7461636F4C207C20, 0xED0000203A6E6F69);
  MEMORY[0x1E1296160](v1[2], v1[3]);
  MEMORY[0x1E1296160](0x7472617453207C20, 0xEE00203A65746144);
  MEMORY[0x1E1296160](v1[4], v1[5]);
  MEMORY[0x1E1296160](0x6144646E45207C20, 0xEC000000203A6574);
  MEMORY[0x1E1296160](v1[6], v1[7]);
  MEMORY[0x1E1296160](0xD000000000000013, 0x80000001DC544060);
  MEMORY[0x1E1296160](v1[8], v1[9]);
  MEMORY[0x1E1296160](0x7365746F4E207C20, 0xEA0000000000203ALL);
  MEMORY[0x1E1296160](v1[10], v1[11]);
  return 0;
}

uint64_t sub_1DC3A8D64()
{
  v0 = sub_1DC5172FC();
  __swift_allocate_value_buffer(v0, qword_1ECC8F978);
  v1 = OUTLINED_FUNCTION_43();
  v3 = __swift_project_value_buffer(v1, v2);
  v4 = swift_allocObject();
  v4[2] = 0xD000000000000013;
  v4[3] = 0x80000001DC544080;
  v4[4] = 0xD000000000000011;
  v4[5] = 0x80000001DC527040;
  *v3 = v4;
  v5 = *MEMORY[0x1E69DB098];
  OUTLINED_FUNCTION_7_1(v0);
  v7 = *(v6 + 104);

  return v7(v3);
}

uint64_t sub_1DC3A8E38@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECC88570 != -1)
  {
    OUTLINED_FUNCTION_4_22();
  }

  v2 = sub_1DC5172FC();
  __swift_project_value_buffer(v2, qword_1ECC8F960);
  OUTLINED_FUNCTION_7_1(v2);
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t sub_1DC3A8F18(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DC3A8F58(uint64_t result, int a2, int a3)
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

      return OUTLINED_FUNCTION_9_13(result, a2);
    }

    *(result + 96) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_9_13(result, a2);
    }
  }

  return result;
}

uint64_t sub_1DC3A8FC8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D1A0, &qword_1DC5270E0);
  v0 = OUTLINED_FUNCTION_155();
  v1 = *(type metadata accessor for TurnSummary.ExecutionSource(v0) - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DC522F10;
  v5 = v4 + v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD8, &unk_1DC5270D0);
  __swift_storeEnumTagSinglePayload(v5, 2, 4, v6);
  result = __swift_storeEnumTagSinglePayload(v5 + v2, 3, 4, v6);
  qword_1ECC8F568 = v4;
  return result;
}

uint64_t sub_1DC3A90C0()
{
  v0 = sub_1DC2E54B8();
  v1 = *(v0 + 52);
  v2 = (*(v0 + 48) + 7) & 0x1FFFFFFF8;
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1DC527080;
  *(v3 + 32) = sub_1DC51497C();
  *(v3 + 40) = sub_1DC514A1C();
  *(v3 + 48) = sub_1DC51496C();
  *(v3 + 56) = sub_1DC51485C();
  *(v3 + 64) = sub_1DC514B3C();
  *(v3 + 72) = sub_1DC514BCC();
  *(v3 + 80) = sub_1DC5148DC();
  *(v3 + 88) = sub_1DC514A6C();
  *(v3 + 96) = sub_1DC5147FC();
  result = sub_1DC5147EC();
  *(v3 + 104) = result;
  qword_1ECC8F990 = v3;
  return result;
}

int64_t sub_1DC3A918C()
{
  v0 = *sub_1DC2E08AC();

  v1 = *sub_1DC33E158();
  v7 = v0;

  sub_1DC3ABFF8(v2);
  v3 = *sub_1DC33E0A0();

  v5 = sub_1DC3A9218(v4);

  result = sub_1DC3ABFF8(v5);
  qword_1ECC8F998 = v7;
  return result;
}

uint64_t sub_1DC3A9218(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v10 = MEMORY[0x1E69E7CC0];
    sub_1DC3AC0B0(0, v1, 0);
    v4 = (a1 + 32);
    v2 = v10;
    do
    {
      v8 = *v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CC60, &qword_1DC524898);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1B8, &unk_1DC522F90);
      swift_dynamicCast();
      v6 = *(v10 + 16);
      v5 = *(v10 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1DC3AC0B0((v5 > 1), v6 + 1, 1);
      }

      *(v10 + 16) = v6 + 1;
      *(v10 + 8 * v6 + 32) = v9;
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1DC3A9344(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v10 = MEMORY[0x1E69E7CC0];
    sub_1DC33F29C(0, v1, 0);
    v4 = (a1 + 32);
    v2 = v10;
    do
    {
      v8 = *v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1B8, &unk_1DC522F90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CC68, &unk_1DC5248A0);
      swift_dynamicCast();
      v6 = *(v10 + 16);
      v5 = *(v10 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1DC33F29C((v5 > 1), v6 + 1, 1);
      }

      *(v10 + 16) = v6 + 1;
      *(v10 + 8 * v6 + 32) = v9;
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_1DC3A9470()
{
  OUTLINED_FUNCTION_33();
  v139 = v2;
  v140 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD0, &unk_1DC522550);
  OUTLINED_FUNCTION_10(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v6);
  v129 = &v128 - v7;
  v8 = OUTLINED_FUNCTION_12();
  v9 = type metadata accessor for NLRouterTurnContext(v8);
  v10 = OUTLINED_FUNCTION_35(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1();
  v128 = v14 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CA40, &unk_1DC5233A0);
  v16 = OUTLINED_FUNCTION_10(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_15();
  v132 = v19;
  OUTLINED_FUNCTION_22();
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v128 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v128 - v24;
  v26 = sub_1DC5157EC();
  v27 = OUTLINED_FUNCTION_0(v26);
  v135 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_15();
  v130 = v31;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_23_1();
  v133 = v33;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_23_1();
  v131 = v35;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_23_1();
  v134 = v37;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_32_11();
  v39 = sub_1DC516F5C();
  v40 = OUTLINED_FUNCTION_0(v39);
  v137 = v41;
  v138 = v40;
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_1();
  v46 = v45 - v44;
  sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v47 = sub_1DC2BE518();
  v48 = OUTLINED_FUNCTION_130();
  v136 = v46;
  sub_1DC2A2ED0("HeuristicRules.MultiTurnHeuristicRule", 37, 2, v47, v48 & 1, v46);

  sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
  v49 = sub_1DC345DF4();
  v51 = v50;
  v53 = v49 == sub_1DC312FB4(0) && v51 == v52;
  if (v53)
  {

    goto LABEL_13;
  }

  v54 = sub_1DC51825C();

  if (v54)
  {
    goto LABEL_13;
  }

  sub_1DC345DF4();
  v55 = sub_1DC312F68();
  if (v55 == 4)
  {
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v56, v57, v58, v26);
LABEL_11:
    v59 = &qword_1ECC7CA40;
    v60 = &unk_1DC5233A0;
    v61 = v25;
LABEL_12:
    sub_1DC28EB30(v61, v59, v60);
    goto LABEL_13;
  }

  sub_1DC312E7C(v55, v25);
  OUTLINED_FUNCTION_39(v25, 1, v26);
  if (v53)
  {
    goto LABEL_11;
  }

  v118 = v135;
  v119 = *(v135 + 32);
  v119(v0, v25, v26);
  v120 = type metadata accessor for NLRouterServiceRequest(0);
  v121 = v129;
  sub_1DC28F358(&v140[*(v120 + 20)], v129, &qword_1ECC7BFD0, &unk_1DC522550);
  v122 = OUTLINED_FUNCTION_34_11();
  OUTLINED_FUNCTION_39(v122, v123, v9);
  if (v124)
  {
    (*(v118 + 8))(v0, v26);
    v59 = &qword_1ECC7BFD0;
    v60 = &unk_1DC522550;
    v61 = v121;
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_12_18();
  sub_1DC3ABF98(v121, v128, v125);
  type metadata accessor for NLRouterBypassUtils();
  sub_1DC309850();
  if ((v126 & 1) != 0 && !*(*&v140[*(v120 + 24)] + 16))
  {
    sub_1DC517B9C();
    v127 = OUTLINED_FUNCTION_31_4();
    OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C();

    OUTLINED_FUNCTION_2_24();
    sub_1DC3AC428();
    v74 = v139;
    v119(v139, v0, v26);
LABEL_29:
    v73 = 0;
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_2_24();
  sub_1DC3AC428();
  (*(v135 + 8))(v0, v26);
LABEL_13:
  v62 = *&v140[*(type metadata accessor for NLRouterServiceRequest(0) + 24)];
  v63 = *(v62 + 16);
  if (v63)
  {
    v64 = (v62 + 48 * v63);
    v65 = *(v64 - 1);
    v66 = *(v64 + 2);
    v67 = *(v64 + 24);
    v141[0] = *(v64 - 2);
    v141[1] = v65;
    v142 = *v64;
    v143 = v66;
    v144 = v67;
    sub_1DC3A9D88(v140, v141);
    OUTLINED_FUNCTION_39(v23, 1, v26);
    if (!v53)
    {
      v75 = v134;
      v76 = v135;
      v77 = *(v135 + 32);
      v77(v134, v23, v26);
      v78 = sub_1DC517B9C();
      v79 = sub_1DC2BE518();
      (*(v76 + 16))(v131, v75, v26);
      if (os_log_type_enabled(v79, v78))
      {
        v81 = OUTLINED_FUNCTION_63();
        v82 = swift_slowAlloc();
        v141[0] = v82;
        *v81 = 136315138;
        v83 = j___s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0O13CDMFoundationE16debugDescriptionSSvg(v82);
        LODWORD(v140) = v78;
        v84 = v77;
        v85 = v83;
        v86 = v76;
        v88 = v87;
        v89 = *(v86 + 8);
        v90 = OUTLINED_FUNCTION_56_0();
        v91(v90);
        v92 = v85;
        v77 = v84;
        v93 = sub_1DC291244(v92, v88, v141);

        *(v81 + 4) = v93;
        _os_log_impl(&dword_1DC287000, v79, v140, "[MultiTurnHeuristicRule] This is an SDA followup, returning %s", v81, 0xCu);
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_66();
        OUTLINED_FUNCTION_66();
      }

      else
      {

        v110 = *(v76 + 8);
        v111 = OUTLINED_FUNCTION_56_0();
        v112(v111);
      }

      v74 = v139;
      v77(v139, v134, v26);
      goto LABEL_29;
    }

    sub_1DC28EB30(v23, &qword_1ECC7CA40, &unk_1DC5233A0);
    v68 = v132;
    sub_1DC3AA4F8();
    v69 = OUTLINED_FUNCTION_34_11();
    OUTLINED_FUNCTION_39(v69, v70, v26);
    v71 = v135;
    if (!v53)
    {
      v94 = *(v135 + 32);
      v95 = v133;
      v94(v133, v68, v26);
      v96 = sub_1DC517B9C();
      v97 = sub_1DC2BE518();
      (*(v71 + 16))(v130, v95, v26);
      if (os_log_type_enabled(v97, v96))
      {
        v99 = OUTLINED_FUNCTION_63();
        v140 = v94;
        v100 = v99;
        v101 = swift_slowAlloc();
        v141[0] = v101;
        *v100 = 136315138;
        v102 = j___s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0O13CDMFoundationE16debugDescriptionSSvg(v101);
        v103 = v71;
        v105 = v104;
        v106 = *(v103 + 8);
        v107 = OUTLINED_FUNCTION_56_0();
        v108(v107);
        v109 = sub_1DC291244(v102, v105, v141);

        *(v100 + 4) = v109;
        _os_log_impl(&dword_1DC287000, v97, v96, "[MultiTurnHeuristicRule] This is a planner followup, returning %s", v100, 0xCu);
        OUTLINED_FUNCTION_37_8();
        OUTLINED_FUNCTION_66();
        v94 = v140;
        OUTLINED_FUNCTION_66();
      }

      else
      {

        v113 = *(v71 + 8);
        v114 = OUTLINED_FUNCTION_56_0();
        v115(v114);
      }

      v74 = v139;
      v94(v139, v133, v26);
      goto LABEL_29;
    }

    sub_1DC28EB30(v68, &qword_1ECC7CA40, &unk_1DC5233A0);
  }

  else
  {
    sub_1DC517B9C();
    v72 = OUTLINED_FUNCTION_31_4();
    OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C();
  }

  v73 = 1;
  v74 = v139;
LABEL_30:
  __swift_storeEnumTagSinglePayload(v74, v73, 1, v26);
  v116 = sub_1DC2BE518();
  v117 = v136;
  sub_1DC2B8848();

  (*(v137 + 8))(v117, v138);
  OUTLINED_FUNCTION_34();
}

void sub_1DC3AA4F8()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v185 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CA40, &unk_1DC5233A0);
  v5 = OUTLINED_FUNCTION_10(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15();
  v178 = v8;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_62();
  v179 = v10;
  OUTLINED_FUNCTION_12();
  v11 = sub_1DC5157EC();
  v12 = OUTLINED_FUNCTION_0(v11);
  v177 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_15();
  v174 = v16;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_23_1();
  v175 = v18;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_23_1();
  v173 = v20;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_62();
  v176 = v22;
  OUTLINED_FUNCTION_12();
  v187 = sub_1DC51122C();
  v23 = OUTLINED_FUNCTION_0(v187);
  v183 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_15();
  v186 = v27;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_62();
  v181 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFC8, &unk_1DC524050);
  OUTLINED_FUNCTION_10(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v33);
  v35 = v171 - v34;
  v36 = type metadata accessor for TurnSummary.ExecutionSource(0);
  v37 = OUTLINED_FUNCTION_35(v36);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_1();
  v180 = v41 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C158, &unk_1DC5234A0);
  OUTLINED_FUNCTION_10(v42);
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v45);
  v47 = v171 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C160, qword_1DC5233B0);
  OUTLINED_FUNCTION_10(v48);
  v50 = *(v49 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v51);
  v52 = OUTLINED_FUNCTION_35_13();
  v53 = type metadata accessor for NLRouterNLParseResponse(v52);
  v54 = OUTLINED_FUNCTION_35(v53);
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_1();
  v184 = (v58 - v57);
  v59 = OUTLINED_FUNCTION_12();
  v60 = type metadata accessor for NLRouterServiceRequest(v59);
  v61 = *(v60 + 32);
  v182 = v2;
  sub_1DC28F358(v2 + v61, v47, &qword_1ECC7C158, &unk_1DC5234A0);
  v62 = type metadata accessor for NLRouterTurnProbingResult(0);
  OUTLINED_FUNCTION_39(v47, 1, v62);
  if (v68)
  {
    sub_1DC28EB30(v47, &qword_1ECC7C158, &unk_1DC5234A0);
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v63, v64, v65, v53);
  }

  else
  {
    sub_1DC28F358(v47, v0, &qword_1ECC7C160, qword_1DC5233B0);
    sub_1DC3AC428();
    v66 = OUTLINED_FUNCTION_34_11();
    OUTLINED_FUNCTION_39(v66, v67, v53);
    if (!v68)
    {
      sub_1DC3ABF98(v0, v184, type metadata accessor for NLRouterNLParseResponse);
      type metadata accessor for NLRouterBypassUtils();
      sub_1DC308134(*(v182 + *(v60 + 24)), v35);
      OUTLINED_FUNCTION_39(v35, 1, v36);
      v74 = v11;
      if (v73)
      {
        OUTLINED_FUNCTION_1_29();
        sub_1DC3AC428();
        sub_1DC28EB30(v35, &qword_1ECC7BFC8, &unk_1DC524050);
LABEL_52:
        v69 = v185;
        goto LABEL_53;
      }

      OUTLINED_FUNCTION_13_17();
      v75 = v180;
      v77 = sub_1DC3ABF98(v35, v180, v76);
      if (qword_1ECC815C0 != -1)
      {
LABEL_76:
        v77 = OUTLINED_FUNCTION_15_11();
      }

      MEMORY[0x1EEE9AC00](v77);
      v171[-2] = v75;
      if (!sub_1DC3AB458(sub_1DC3AC3B0, &v171[-4], v78))
      {
        OUTLINED_FUNCTION_1_29();
        sub_1DC3AC428();
        OUTLINED_FUNCTION_0_41();
LABEL_51:
        sub_1DC3AC428();
        goto LABEL_52;
      }

      v171[1] = sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
      v79 = sub_1DC3457F4();
      v81 = v80;
      v83 = v79 == sub_1DC312FB4(0) && v81 == v82;
      v172 = v74;
      if (v83)
      {
      }

      else
      {
        v84 = sub_1DC51825C();

        if ((v84 & 1) == 0)
        {
          v85 = 0;
          v86 = *v184;
          v87 = *(*v184 + 16);
          v171[2] = v183 + 16;
          v88 = v183;
          v47 = v187;
          do
          {
            if (v87 == v85)
            {
              goto LABEL_25;
            }

            if (v85 >= *(v86 + 16))
            {
              __break(1u);
              goto LABEL_76;
            }

            v75 = v74;
            v89 = *(v88 + 80);
            OUTLINED_FUNCTION_24();
            v91 = v181;
            (*(v88 + 16))(v181, v86 + v90 + *(v88 + 72) * v85++, v47);
            sub_1DC5111AC();
            sub_1DC3AB52C();
            v93 = v92;

            (*(v88 + 8))(v91, v47);
            v74 = v75;
          }

          while ((v93 & 1) == 0);
          sub_1DC3457F4();
          v94 = sub_1DC312F68();
          if (v94 == 4)
          {
            v95 = v179;
            OUTLINED_FUNCTION_19();
            __swift_storeEnumTagSinglePayload(v96, v97, v98, v75);
LABEL_59:
            sub_1DC28EB30(v95, &qword_1ECC7CA40, &unk_1DC5233A0);
            goto LABEL_25;
          }

          v95 = v179;
          sub_1DC312E7C(v94, v179);
          OUTLINED_FUNCTION_39(v95, 1, v75);
          if (v68)
          {
            goto LABEL_59;
          }

          v143 = v176;
          v142 = v177;
          v144 = *(v177 + 32);
          v144(v176, v95, v75);
          v145 = type metadata accessor for HeuristicRoutingRequest(0);
          v146 = *(v145 + 36);
          v147 = v182 + *(v145 + 20);
          sub_1DC32FD38();
          if ((v148 & 1) == 0)
          {
            (*(v142 + 8))(v143, v75);
            goto LABEL_25;
          }

          v149 = sub_1DC517B9C();
          sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
          v150 = sub_1DC2BE518();
          v151 = v173;
          (*(v142 + 16))(v173, v143, v75);
          if (os_log_type_enabled(v150, v149))
          {
            OUTLINED_FUNCTION_63();
            v152 = OUTLINED_FUNCTION_36_14();
            v188[0] = v152;
            *v142 = 136315138;
            v153 = j___s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0O13CDMFoundationE16debugDescriptionSSvg(v152);
            v155 = v154;
            (*(v47 + 8))(v151, v172);
            v156 = sub_1DC291244(v153, v155, v188);
            v143 = v176;

            *(v142 + 4) = v156;
            _os_log_impl(&dword_1DC287000, v150, v149, "[MultiTurnHeuristicRule] Planner followup with ordinal reference routing to: %s", v142, 0xCu);
            OUTLINED_FUNCTION_37_8();
            v74 = v172;
            OUTLINED_FUNCTION_66();
            OUTLINED_FUNCTION_66();
          }

          else
          {

            (*(v142 + 8))(v151, v75);
          }

          goto LABEL_74;
        }
      }

LABEL_25:
      v99 = *v184;
      v100 = *(*v184 + 16);
      v101 = MEMORY[0x1E69E7CC0];
      if (v100)
      {
        v188[0] = MEMORY[0x1E69E7CC0];
        sub_1DC3AC0D0(0, v100, 0);
        v101 = v188[0];
        v102 = v183 + 16;
        v183 = *(v183 + 16);
        v103 = *(v102 + 64);
        OUTLINED_FUNCTION_24();
        v105 = v99 + v104;
        v107 = *(v106 + 56);
        v47 = v106;
        v108 = (v106 - 8);
        do
        {
          v110 = v186;
          v109 = v187;
          (v183)(v186, v105, v187);
          sub_1DC5111AC();
          sub_1DC3AB944();
          v112 = v111;

          (*v108)(v110, v109);
          v188[0] = v101;
          v114 = *(v101 + 16);
          v113 = *(v101 + 24);
          v115 = v114 + 1;
          if (v114 >= v113 >> 1)
          {
            v117 = OUTLINED_FUNCTION_23_18(v113);
            sub_1DC3AC0D0(v117, v114 + 1, 1);
            v101 = v188[0];
          }

          *(v101 + 16) = v115;
          v116 = (v101 + 3 * v114);
          v116[32] = v112 & 1;
          v116[33] = BYTE1(v112) & 1;
          v116[34] = (v112 & 0xFFFF0000) != 0;
          v105 += v107;
          --v100;
        }

        while (v100);
        v74 = v172;
      }

      else
      {
        v115 = *(MEMORY[0x1E69E7CC0] + 16);
        v118 = MEMORY[0x1E69E7CC0];
        if (!v115)
        {
LABEL_41:

          if (*(v118 + 16))
          {
            v127 = *(v118 + 33);
            v128 = *(v118 + 34);

            if (v127 == 1)
            {
              v129 = sub_1DC345718();
              v131 = v130;
              if (v129 == sub_1DC312FB4(0) && v131 == v132)
              {
              }

              else
              {
                v134 = sub_1DC51825C();

                if ((v134 & 1) == 0)
                {
                  sub_1DC345718();
                  v135 = sub_1DC312F68();
                  if (v135 == 4)
                  {
                    v136 = v178;
                    OUTLINED_FUNCTION_19();
                    __swift_storeEnumTagSinglePayload(v137, v138, v139, v172);
                  }

                  else
                  {
                    v136 = v178;
                    sub_1DC312E7C(v135, v178);
                    OUTLINED_FUNCTION_39(v136, 1, v172);
                    if (!v68)
                    {
                      v157 = v177;
                      v144 = *(v177 + 32);
                      v143 = v175;
                      v74 = v172;
                      v144(v175, v136, v172);
                      v158 = sub_1DC517B9C();
                      sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
                      v159 = sub_1DC2BE518();
                      v160 = v174;
                      (*(v157 + 16))(v174, v143, v74);
                      if (os_log_type_enabled(v159, v158))
                      {
                        OUTLINED_FUNCTION_63();
                        v162 = OUTLINED_FUNCTION_36_14();
                        v188[0] = v162;
                        *v157 = 136315138;
                        v163 = j___s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0O13CDMFoundationE16debugDescriptionSSvg(v162);
                        LODWORD(v187) = v158;
                        v164 = v144;
                        v165 = v163;
                        v167 = v166;
                        (*(v47 + 8))(v160, v172);
                        v168 = v165;
                        v144 = v164;
                        v169 = sub_1DC291244(v168, v167, v188);
                        v143 = v175;

                        *(v157 + 4) = v169;
                        _os_log_impl(&dword_1DC287000, v159, v187, "[MultiTurnHeuristicRule] Planner followup with supported parse, sending to %s", v157, 0xCu);
                        OUTLINED_FUNCTION_37_8();
                        v74 = v172;
                        OUTLINED_FUNCTION_66();
                        OUTLINED_FUNCTION_66();
                      }

                      else
                      {

                        (*(v157 + 8))(v160, v74);
                      }

LABEL_74:
                      OUTLINED_FUNCTION_1_29();
                      sub_1DC3AC428();
                      OUTLINED_FUNCTION_0_41();
                      sub_1DC3AC428();
                      v170 = v185;
                      v144(v185, v143, v74);
                      v69 = v170;
                      v70 = 0;
                      goto LABEL_54;
                    }
                  }

                  sub_1DC28EB30(v136, &qword_1ECC7CA40, &unk_1DC5233A0);
                }
              }
            }

            if (v128)
            {
              sub_1DC517B9C();
              sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
              v141 = sub_1DC2BE518();
              OUTLINED_FUNCTION_40_1();
              sub_1DC516F0C();

              OUTLINED_FUNCTION_1_29();
              sub_1DC3AC428();
              OUTLINED_FUNCTION_0_41();
              sub_1DC3AC428();
              OUTLINED_FUNCTION_19();
              v72 = v172;
              goto LABEL_55;
            }

            OUTLINED_FUNCTION_1_29();
            sub_1DC3AC428();
            OUTLINED_FUNCTION_0_41();
            sub_1DC3AC428();
            v69 = v185;
            v74 = v172;
LABEL_53:
            v70 = 1;
LABEL_54:
            v71 = 1;
            v72 = v74;
            goto LABEL_55;
          }

          sub_1DC517B9C();
          sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
          v140 = sub_1DC2BE518();
          OUTLINED_FUNCTION_40_1();
          sub_1DC516F0C();

          OUTLINED_FUNCTION_1_29();
          sub_1DC3AC428();
          OUTLINED_FUNCTION_0_41();
          goto LABEL_51;
        }
      }

      v119 = (v101 + 34);
      v118 = MEMORY[0x1E69E7CC0];
      do
      {
        v120 = *(v119 - 2);
        v121 = *(v119 - 1);
        v122 = *v119;
        if ((v120 & 1) != 0 || *v119)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v188[0] = v118;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1DC3AC0D0(0, *(v118 + 16) + 1, 1);
            v118 = v188[0];
          }

          v47 = *(v118 + 16);
          v124 = *(v118 + 24);
          if (v47 >= v124 >> 1)
          {
            v126 = OUTLINED_FUNCTION_23_18(v124);
            sub_1DC3AC0D0(v126, v47 + 1, 1);
            v118 = v188[0];
          }

          *(v118 + 16) = v47 + 1;
          v125 = (v118 + 3 * v47);
          v125[32] = v120;
          v125[33] = v121;
          v125[34] = v122;
          v74 = v172;
        }

        v119 += 3;
        --v115;
      }

      while (v115);
      goto LABEL_41;
    }
  }

  sub_1DC28EB30(v0, &qword_1ECC7C160, qword_1DC5233B0);
  OUTLINED_FUNCTION_19();
  v72 = v11;
LABEL_55:
  __swift_storeEnumTagSinglePayload(v69, v70, v71, v72);
  OUTLINED_FUNCTION_34();
}

void sub_1DC3AB2F0()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_155();
  v1 = sub_1DC5119DC();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1();
  v9 = v8 - v7;
  v10 = 0;
  v11 = *(v0 + 16);
  v12 = *(v11 + 16);
  v13 = (v4 + 8);
  while (1)
  {
    if (v12 == v10)
    {
      type metadata accessor for NLRouterBypassUtils();
      if ((sub_1DC308CDC() & 1) == 0)
      {
        sub_1DC308E38();
      }

      goto LABEL_11;
    }

    if (v10 >= *(v11 + 16))
    {
      break;
    }

    v14 = *(v4 + 80);
    OUTLINED_FUNCTION_24();
    (*(v4 + 16))(v9, v11 + v15 + *(v4 + 72) * v10, v1);
    if (sub_1DC51194C() & 1) != 0 || (sub_1DC51191C())
    {
      v20 = *v13;
      v21 = OUTLINED_FUNCTION_56_0();
      v22(v21);
LABEL_11:
      OUTLINED_FUNCTION_34();
      return;
    }

    v16 = sub_1DC51195C();
    v17 = *v13;
    v18 = OUTLINED_FUNCTION_56_0();
    v19(v18);
    ++v10;
    if (v16)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
}

BOOL sub_1DC3AB458(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    v8 = v6;
    if (v7 == v6)
    {
      break;
    }

    v9 = *(type metadata accessor for TurnSummary.ExecutionSource(0) - 8);
    v10 = a1(a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v8);
    if (v3)
    {
      break;
    }

    v6 = v8 + 1;
  }

  while ((v10 & 1) == 0);
  return v7 != v8;
}

void sub_1DC3AB52C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_155();
  v51 = sub_1DC510FDC();
  v2 = OUTLINED_FUNCTION_0(v51);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_12();
  v5 = sub_1DC51179C();
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15();
  v50 = v11;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_32_11();
  v13 = sub_1DC51164C();
  v14 = OUTLINED_FUNCTION_0(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_1();
  v21 = v20 - v19;
  v22 = *(v0 + 16);
  if (!v22)
  {
LABEL_22:
    OUTLINED_FUNCTION_34();
    return;
  }

  v25 = *(v16 + 16);
  v23 = v16 + 16;
  v24 = v25;
  v26 = *(v23 + 64);
  OUTLINED_FUNCTION_24();
  v28 = v0 + v27;
  v54 = (v8 + 8);
  v55 = v25;
  v49 = v1;
  v29 = *(v23 + 56);
  v52 = v29;
  v53 = v13;
  while (1)
  {
    v24(v21, v28, v13);
    if ((sub_1DC5114CC() & 1) == 0)
    {
      v32 = OUTLINED_FUNCTION_8_13();
      v33(v32, v13);
      goto LABEL_9;
    }

    sub_1DC51154C();
    v30 = sub_1DC51177C();
    v31 = *v54;
    (*v54)(v1, v5);
    if ((v30 & 1) == 0)
    {
      v34 = OUTLINED_FUNCTION_8_13();
      v13 = v53;
      v35(v34, v53);
      v24 = v55;
LABEL_8:
      v29 = v52;
      goto LABEL_9;
    }

    sub_1DC51154C();
    sub_1DC51178C();
    v31(v50, v5);
    v36 = sub_1DC5138FC();
    v37 = OUTLINED_FUNCTION_34_12();
    v38(v37);
    v39 = MEMORY[0x1E1292F90](v36);
    v40 = v39;
    v13 = v53;
    v24 = v55;
    if (v39 >> 62)
    {
      v41 = sub_1DC51802C();
    }

    else
    {
      v41 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v1 = v49;
    if (!v41)
    {
      v46 = OUTLINED_FUNCTION_8_13();
      v47(v46, v53);

      goto LABEL_8;
    }

    if ((v40 & 0xC000000000000001) == 0)
    {
      break;
    }

    MEMORY[0x1E1296800](0, v40);
LABEL_17:

    type metadata accessor for NLRouterBypassUtils();
    sub_1DC309998();
    v43 = v42;

    v44 = OUTLINED_FUNCTION_8_13();
    v45(v44, v53);
    v29 = v52;
    if (v43)
    {
      goto LABEL_22;
    }

LABEL_9:
    v28 += v29;
    if (!--v22)
    {
      goto LABEL_22;
    }
  }

  if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v48 = *(v40 + 32);

    goto LABEL_17;
  }

  __break(1u);
}

void sub_1DC3AB944()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_155();
  v51 = sub_1DC510FDC();
  v1 = OUTLINED_FUNCTION_0(v51);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_12();
  v4 = sub_1DC51179C();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15();
  v49 = v10;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_62();
  v53 = v12;
  OUTLINED_FUNCTION_12();
  v54 = sub_1DC51164C();
  v13 = OUTLINED_FUNCTION_0(v54);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1();
  v20 = v19 - v18;
  v59 = *(v0 + 16);
  if (v59)
  {
    v48 = 0;
    v50 = 0;
    v21 = 0;
    v52 = (v7 + 8);
    v23 = *(v15 + 16);
    v22 = v15 + 16;
    v24 = *(v22 + 64);
    OUTLINED_FUNCTION_24();
    v57 = v0 + v25;
    v58 = v26;
    v55 = *(v22 + 56);
    v56 = (v22 - 8);
    v27 = v49;
    v28 = v54;
    v47 = v4;
    do
    {
      v58(v20, v57 + v55 * v21, v28);
      if (sub_1DC5114CC())
      {
        sub_1DC51154C();
        v28 = sub_1DC51177C();
        v29 = *v52;
        (*v52)(v53, v4);
        if (v28)
        {
          sub_1DC51154C();
          sub_1DC51178C();
          v29(v27, v4);
          sub_1DC5138FC();
          v32 = OUTLINED_FUNCTION_33_14();
          v33(v32);
          if (v50)
          {
            v50 = 1;
          }

          else
          {
            type metadata accessor for NLRouterBypassUtils();
            v50 = sub_1DC309EB4();
          }

          if (_MergedGlobals_14 != -1)
          {
            OUTLINED_FUNCTION_14_10();
            swift_once();
          }

          v34 = qword_1ECC8F990;
          v35 = *(qword_1ECC8F990 + 16);
          if (v35)
          {
            v62 = MEMORY[0x1E69E7CC0];
            sub_1DC33F29C(0, v35, 0);
            v36 = (v34 + 32);
            do
            {
              v60 = *v36;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1B8, &unk_1DC522F90);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CC68, &unk_1DC5248A0);
              swift_dynamicCast();
              v38 = *(v62 + 16);
              v37 = *(v62 + 24);
              if (v38 >= v37 >> 1)
              {
                v39 = OUTLINED_FUNCTION_23_18(v37);
                sub_1DC33F29C(v39, v38 + 1, 1);
              }

              *(v62 + 16) = v38 + 1;
              *(v62 + 8 * v38 + 32) = v61;
              ++v36;
              --v35;
            }

            while (v35);
          }

          sub_1DC30AD70();
          v28 = v40;

          v27 = v49;
          if (v28)
          {
            v41 = OUTLINED_FUNCTION_7_16();
            v42(v41);

            v4 = v47;
          }

          else
          {
            v4 = v47;
            if (qword_1EDAC9528 != -1)
            {
              OUTLINED_FUNCTION_11_19();
              swift_once();
            }

            v28 = sub_1DC3A9344(qword_1ECC8F998);
            sub_1DC30AD70();
            v44 = v43;

            v45 = OUTLINED_FUNCTION_7_16();
            v46(v45);
            v48 |= v44;
          }
        }

        else
        {
          v30 = OUTLINED_FUNCTION_7_16();
          v31(v30);
        }
      }

      else
      {
        (*v56)(v20, v28);
      }

      ++v21;
    }

    while (v21 != v59);
  }

  OUTLINED_FUNCTION_34();
}

char *sub_1DC3ABE8C(char *result, int64_t a2, char a3, char *a4)
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
    v10 = sub_1DC2E54B8();
    v11 = *(v10 + 52);
    v12 = (*(v10 + 48) + 7) & 0x1FFFFFFF8;
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    *(v13 + 2) = v8;
    *(v13 + 3) = 2 * ((v14 - 32) / 8);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v5)
  {
    if (v13 != a4 || &v16[8 * v8] <= v15)
    {
      memmove(v15, v16, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v8);
  }

  return v13;
}

uint64_t sub_1DC3ABF98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_35(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

int64_t sub_1DC3ABFF8(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_1DC3AC2E8(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = *(v6 + 16);
  if ((*(v6 + 24) >> 1) - v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v6 + 8 * v7 + 32), (a1 + 32), 8 * v3);

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

char *sub_1DC3AC0B0(char *a1, int64_t a2, char a3)
{
  result = sub_1DC3AC0F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1DC3AC0D0(char *a1, int64_t a2, char a3)
{
  result = sub_1DC3AC1EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1DC3AC0F0(char *result, int64_t a2, char a3, char *a4)
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
    v10 = sub_1DC2E54B8();
    v11 = *(v10 + 52);
    v12 = (*(v10 + 48) + 7) & 0x1FFFFFFF8;
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    *(v13 + 2) = v8;
    *(v13 + 3) = 2 * ((v14 - 32) / 8);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v5)
  {
    if (v13 != a4 || &v16[8 * v8] <= v15)
    {
      memmove(v15, v16, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v8);
  }

  return v13;
}

char *sub_1DC3AC1EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D198, &unk_1DC5270C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 3 * v8;
  if (v5)
  {
    if (v10 != a4 || &v13[v14] <= v12)
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

char *sub_1DC3AC2E8(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > *(v5 + 3) >> 1)
  {
    if (*(v5 + 2) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 2);
    }

    result = sub_1DC3ABE8C(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

uint64_t sub_1DC3AC350()
{
  type metadata accessor for TurnSummary.ExecutionSource(0);
  sub_1DC3AC3D0();
  return sub_1DC5176CC() & 1;
}

unint64_t sub_1DC3AC3D0()
{
  result = qword_1ECC7BD58;
  if (!qword_1ECC7BD58)
  {
    type metadata accessor for TurnSummary.ExecutionSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7BD58);
  }

  return result;
}

uint64_t sub_1DC3AC428()
{
  v1 = OUTLINED_FUNCTION_155();
  v3 = v2(v1);
  OUTLINED_FUNCTION_35(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1DC3AC47C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_35(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for MultiTurnParseResults(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v3 = -1;
    return (v3 + 1);
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
LABEL_5:
        v3 = (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776962;
        return (v3 + 1);
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v3 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for MultiTurnParseResults(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t sub_1DC3AC604@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v225 = a2;
  v226 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF00, &unk_1DC529C30);
  OUTLINED_FUNCTION_10(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v5);
  v213 = &v207 - v6;
  OUTLINED_FUNCTION_12();
  v241 = sub_1DC51665C();
  v7 = OUTLINED_FUNCTION_0(v241);
  v262 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1();
  v240 = v12 - v11;
  OUTLINED_FUNCTION_12();
  v247 = sub_1DC5118BC();
  v13 = OUTLINED_FUNCTION_0(v247);
  v242 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_15();
  v216 = v17;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v207 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v215 = &v207 - v22;
  OUTLINED_FUNCTION_12();
  v231 = sub_1DC510FDC();
  v23 = OUTLINED_FUNCTION_0(v231);
  v260 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_15();
  v214 = v27;
  MEMORY[0x1EEE9AC00](v28);
  v248 = &v207 - v29;
  OUTLINED_FUNCTION_12();
  v255 = sub_1DC51179C();
  v30 = OUTLINED_FUNCTION_0(v255);
  v259 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_1();
  v254 = v35 - v34;
  OUTLINED_FUNCTION_12();
  v238 = sub_1DC51164C();
  v36 = OUTLINED_FUNCTION_0(v238);
  v252 = v37;
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_1();
  v237 = v41 - v40;
  OUTLINED_FUNCTION_12();
  v42 = sub_1DC51122C();
  v227 = OUTLINED_FUNCTION_0(v42);
  v228 = v43;
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v227);
  OUTLINED_FUNCTION_1();
  v239 = v47 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C158, &unk_1DC5234A0);
  OUTLINED_FUNCTION_10(v48);
  v50 = *(v49 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v207 - v52;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C160, qword_1DC5233B0);
  OUTLINED_FUNCTION_10(v54);
  v56 = *(v55 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v57);
  v59 = (&v207 - v58);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD0, &unk_1DC522550);
  OUTLINED_FUNCTION_10(v60);
  v62 = *(v61 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v63);
  v65 = &v207 - v64;
  v230 = sub_1DC5157EC();
  v66 = OUTLINED_FUNCTION_0(v230);
  v68 = v67;
  v70 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_1();
  v73 = v72 - v71;
  v74 = sub_1DC516F5C();
  v75 = OUTLINED_FUNCTION_0(v74);
  v223 = v76;
  v224 = v75;
  v78 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_1();
  v81 = v80 - v79;
  v82 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v83 = sub_1DC2BE518();
  v84 = OUTLINED_FUNCTION_130();
  v222 = v81;
  v232 = v82;
  sub_1DC2A2ED0("HeuristicRules.MDMRRewriteRule", 30, 2, v83, v84 & 1, v81);

  sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
  v85 = sub_1DC34635C();
  v87 = v86;
  v89 = v85 == sub_1DC313520(1) && v87 == v88;
  if (v89)
  {
  }

  else
  {
    v90 = sub_1DC51825C();

    if ((v90 & 1) == 0)
    {
      sub_1DC517B9C();
      v91 = sub_1DC2BE518();
      sub_1DC516F0C();

      v92 = v225;
      v93 = 1;
      v94 = v230;
      goto LABEL_71;
    }
  }

  v212 = v21;
  v95 = type metadata accessor for HeuristicRoutingRequest(0);
  v96 = v226;
  v97 = v230;
  (*(v68 + 16))(v73, v226 + *(v95 + 20), v230);
  v98 = (*(v68 + 88))(v73, v97);
  v99 = *MEMORY[0x1E69D02D8];
  v211 = v68;
  (*(v68 + 8))(v73, v97);
  if (v98 != v99)
  {
    goto LABEL_70;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D1A8, &qword_1DC527118);
  inited = swift_initStackObject();
  inited[1] = xmmword_1DC522F10;
  sub_1DC35DA6C(0x525F6E6F6D6D6F63, 0xEF7265646E696D65, 0, v265);
  v101 = v265[1];
  inited[2] = v265[0];
  inited[3] = v101;
  inited[4] = v265[2];
  sub_1DC35DA6C(0x4E5F6E6F6D6D6F63, 0xEB0000000065746FLL, 0, v266);
  v102 = v266[1];
  inited[5] = v266[0];
  inited[6] = v102;
  v261 = inited;
  inited[7] = v266[2];
  v103 = type metadata accessor for NLRouterServiceRequest(0);
  sub_1DC28F358(v96 + *(v103 + 20), v65, &qword_1ECC7BFD0, &unk_1DC522550);
  v104 = type metadata accessor for NLRouterTurnContext(0);
  if (__swift_getEnumTagSinglePayload(v65, 1, v104) == 1)
  {
    sub_1DC28EB30(v65, &qword_1ECC7BFD0, &unk_1DC522550);
    v243 = 0;
  }

  else
  {
    v243 = *&v65[*(v104 + 36)];

    sub_1DC3ADBF8(v65, type metadata accessor for NLRouterTurnContext);
  }

  v105 = v238;
  v106 = v227;
  v107 = v252;
  sub_1DC28F358(v226 + *(v103 + 32), v53, &qword_1ECC7C158, &unk_1DC5234A0);
  v108 = type metadata accessor for NLRouterTurnProbingResult(0);
  if (__swift_getEnumTagSinglePayload(v53, 1, v108) == 1)
  {

    v109 = &qword_1ECC7C158;
    v110 = &unk_1DC5234A0;
    v111 = v53;
LABEL_16:
    sub_1DC28EB30(v111, v109, v110);
LABEL_70:
    v92 = v225;
    v93 = 1;
    v94 = v97;
    goto LABEL_71;
  }

  sub_1DC28F358(v53, v59, &qword_1ECC7C160, qword_1DC5233B0);
  sub_1DC3ADBF8(v53, type metadata accessor for NLRouterTurnProbingResult);
  v112 = type metadata accessor for NLRouterNLParseResponse(0);
  if (__swift_getEnumTagSinglePayload(v59, 1, v112) == 1)
  {

    v109 = &qword_1ECC7C160;
    v110 = qword_1DC5233B0;
    v111 = v59;
    goto LABEL_16;
  }

  v113 = *v59;

  result = sub_1DC3ADBF8(v59, type metadata accessor for NLRouterNLParseResponse);
  v221 = *(v113 + 16);
  if (!v221)
  {
LABEL_69:

    goto LABEL_70;
  }

  v115 = 0;
  v251 = 0;
  v220 = v113 + ((*(v228 + 80) + 32) & ~*(v228 + 80));
  v219 = v228 + 16;
  v256 = v107 + 8;
  v257 = v107 + 16;
  v253 = (v259 + 8);
  v246 = (v260 + 8);
  v234 = v242 + 16;
  v233 = (v262 + 8);
  v235 = (v242 + 8);
  v209 = (v242 + 32);
  v217 = v113;
  v218 = (v228 + 8);
  v116 = v237;
  v117 = v231;
  while (1)
  {
    if (v115 >= *(v113 + 16))
    {
      __break(1u);
LABEL_77:
      __break(1u);
      return result;
    }

    v118 = *(v228 + 72);
    v229 = v115;
    (*(v228 + 16))(v239, v220 + v118 * v115, v106);
    v119 = sub_1DC5111AC();
    v260 = *(v119 + 16);
    if (v260)
    {
      break;
    }

LABEL_67:
    v189 = v229 + 1;
    result = (*v218)(v239, v106);
    v115 = v189;
    v89 = v189 == v221;
    v113 = v217;
    if (v89)
    {
      goto LABEL_69;
    }
  }

  v120 = 0;
  v121 = *(v107 + 80);
  v258 = v119;
  v259 = v119 + ((v121 + 32) & ~v121);
  while (2)
  {
    if (v120 >= *(v119 + 16))
    {
      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    (*(v107 + 16))(v116, v259 + *(v107 + 72) * v120, v105);
    if ((sub_1DC5114CC() & 1) == 0)
    {
      OUTLINED_FUNCTION_3_22();
      v136 = OUTLINED_FUNCTION_159();
      v137(v136);
      goto LABEL_56;
    }

    v97 = v254;
    sub_1DC51154C();
    v122 = sub_1DC51177C();
    v123 = v116;
    v124 = *v253;
    (*v253)(v97, v255);
    if ((v122 & 1) == 0)
    {
      goto LABEL_35;
    }

    v125 = type metadata accessor for NLRouterBypassUtils();
    v126 = v254;
    sub_1DC51154C();
    v97 = v248;
    sub_1DC51178C();
    v124(v126, v255);
    v250 = v125;
    v127 = sub_1DC307E5C();
    v245 = *v246;
    v245(v97, v117);
    if (!v127)
    {
LABEL_35:
      OUTLINED_FUNCTION_3_22();
      v138(v123, v105);
      v116 = v123;
      goto LABEL_55;
    }

    v128 = 0;
    v262 = v127;
    while (1)
    {
      if (v128 == 6)
      {

        OUTLINED_FUNCTION_3_22();
        v116 = v237;
        v105 = v238;
        goto LABEL_37;
      }

      v130 = *(&v261[v128 + 2] + 1);
      v131 = *&v261[v128 + 4];
      v132 = *(&v261[v128 + 4] + 1);
      v267 = *&v261[v128 + 2];
      v129 = v267;
      v268 = v130;
      v269 = v261[v128 + 3];
      v270 = v131;
      v271 = v132;
      v133 = v269;

      if (v129 == sub_1DC514F1C() && v130 == v134)
      {
        break;
      }

      v97 = sub_1DC51825C();

      if (v97)
      {
        goto LABEL_39;
      }

      v128 += 3;
    }

LABEL_39:
    if (v133)
    {

      v263 = sub_1DC514F0C();
      v264 = v141;
      MEMORY[0x1EEE9AC00](v263);
      OUTLINED_FUNCTION_6_18();
      v142 = v251;
      v97 = sub_1DC2CF098(sub_1DC327C74, v143, v133);
      v251 = v142;

      if (v97)
      {

        sub_1DC517B9C();
        v144 = sub_1DC2BE518();
        goto LABEL_44;
      }
    }

    sub_1DC305AEC();
    v97 = v146;
    v148 = v247;
    if (*(v147 + 16) >= 2uLL)
    {

      sub_1DC517B9C();
      v144 = sub_1DC2BE518();
LABEL_44:
      sub_1DC516F0C();

      OUTLINED_FUNCTION_3_22();
      v116 = v237;
      v105 = v238;
      v149 = OUTLINED_FUNCTION_159();
      v150(v149);
LABEL_54:
      v117 = v231;
LABEL_55:
      v107 = v252;
LABEL_56:
      ++v120;
      v119 = v258;
      if (v120 == v260)
      {

        v97 = v230;
        v106 = v227;
        goto LABEL_67;
      }

      continue;
    }

    break;
  }

  v244 = v147;
  if ((v145 & 1) == 0 || (v151 = v243) == 0)
  {
    OUTLINED_FUNCTION_3_22();
    v162 = v237;
    v105 = v238;
    v163(v237, v238);

    v116 = v162;

LABEL_53:

    goto LABEL_54;
  }

  v210 = v146;
  v236 = *(v243 + 16);

  v152 = 0;
  v97 = v216;
  while (1)
  {
    if (v236 == v152)
    {
      OUTLINED_FUNCTION_3_22();
      v164 = v237;
      v105 = v238;
      v165(v237, v238);

      v116 = v164;

      goto LABEL_53;
    }

    if (v152 >= *(v151 + 16))
    {
      goto LABEL_73;
    }

    v153 = v151 + ((*(v242 + 80) + 32) & ~*(v242 + 80));
    v154 = *(v242 + 72);
    v249 = v152;
    (*(v242 + 16))(v97, v153 + v154 * v152, v148);
    v155 = v240;
    sub_1DC51186C();
    v156 = sub_1DC51664C();
    v158 = v157;
    v159 = (*v233)(v155, v241);
    v250 = &v207;
    v263 = v156;
    v264 = v158;
    MEMORY[0x1EEE9AC00](v159);
    OUTLINED_FUNCTION_6_18();
    v160 = v251;
    LOBYTE(v156) = sub_1DC2CF098(sub_1DC2CF174, v161, v244);
    v251 = v160;

    if (v156)
    {
      break;
    }

    v152 = v249 + 1;
    v148 = v247;
    (*v235)(v97, v247);
    v151 = v243;
  }

  v166 = *v209;
  v167 = v212;
  v168 = v97;
  v97 = v247;
  (*v209)(v212, v168, v247);
  v166(v215, v167, v97);
  sub_1DC51182C();
  v117 = v251;
  v169 = sub_1DC5138FC();
  v170 = v97;
  if (v117)
  {

    v171 = OUTLINED_FUNCTION_7_17();
    v172(v171);
    v173 = OUTLINED_FUNCTION_2_25();
    v174(v173, v97);
    OUTLINED_FUNCTION_3_22();
    v116 = v237;
    v105 = v238;
    v175 = OUTLINED_FUNCTION_159();
    v176(v175);
    v251 = 0;
    goto LABEL_55;
  }

  v251 = 0;
  v97 = v169;
  v177 = OUTLINED_FUNCTION_7_17();
  v178(v177);
  v179 = sub_1DC5146FC();
  v105 = v238;
  if (!v179)
  {

    v186 = OUTLINED_FUNCTION_2_25();
    v188 = v170;
LABEL_65:
    v187(v186, v188);
    OUTLINED_FUNCTION_3_22();
    v116 = v237;
LABEL_37:
    v139 = OUTLINED_FUNCTION_159();
    v140(v139);
    goto LABEL_55;
  }

  v250 = v97;
  v97 = v179;

  sub_1DC51483C();

  v180 = *v226;
  v181 = v226[1];
  v236 = sub_1DC35D470(&v263, 1, v210);
  v183 = v182;
  v208 = v184;
  v245 = v185;
  sub_1DC28EB30(&v263, &qword_1ECC7D3F0, &qword_1DC5238B0);
  v249 = v183;
  if (!v183)
  {

    v186 = OUTLINED_FUNCTION_2_25();
    v188 = v247;
    goto LABEL_65;
  }

LABEL_74:
  v260 = v97;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFA8, &unk_1DC5224D0);
  v259 = sub_1DC51588C();
  OUTLINED_FUNCTION_0(v259);
  v193 = v192;
  v195 = *(v194 + 72);
  v257 = (*(v192 + 80) + 32) & ~*(v192 + 80);
  v196 = swift_allocObject();
  *(v196 + 16) = xmmword_1DC522F20;
  MEMORY[0x1EEE9AC00](v196);
  v197 = v249;
  *(&v207 - 4) = v236;
  *(&v207 - 3) = v197;
  v198 = v245;
  *(&v207 - 2) = v208;
  *(&v207 - 1) = v198;
  v199 = v213;
  sub_1DC51583C();
  v200 = sub_1DC51587C();
  result = __swift_getEnumTagSinglePayload(v199, 1, v200);
  if (result == 1)
  {
    goto LABEL_77;
  }

  swift_setDeallocating();
  sub_1DC3ADB50();

  v201 = v257;
  (*(*(v200 - 8) + 32))(v196 + v257, v199, v200);
  (*(v193 + 104))(v196 + v201, *MEMORY[0x1E69D0330], v259);

  v202 = OUTLINED_FUNCTION_2_25();
  v203(v202, v247);
  OUTLINED_FUNCTION_3_22();
  v204(v237, v238);
  (*v218)(v239, v227);
  v205 = v225;
  *v225 = v196;
  v206 = v230;
  (*(v211 + 104))(v205, *MEMORY[0x1E69D02C8], v230);
  v92 = v205;
  v93 = 0;
  v94 = v206;
LABEL_71:
  __swift_storeEnumTagSinglePayload(v92, v93, 1, v94);
  v190 = sub_1DC2BE518();
  v191 = v222;
  sub_1DC2B8848();

  return (*(v223 + 8))(v191, v224);
}