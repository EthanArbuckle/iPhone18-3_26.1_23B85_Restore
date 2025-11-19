uint64_t sub_1B4C90D6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, const void *a5@<X4>, const void *a6@<X5>, _BYTE *a7@<X8>)
{
  v8 = v7;
  v123 = a6;
  v125 = a4;
  v111 = a1;
  v114 = a7;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v12 = *(*(v117 - 8) + 64);
  MEMORY[0x1EEE9AC00](v117);
  v113 = v107 - v15;
  if (*(a2 + 16))
  {
    v16 = *(a2 + 16);
    v17 = (a2 + 32);
    v108 = (v13 + 8);
    *&v14 = 136315394;
    v118 = v14;
    *&v14 = 136316418;
    v112 = v14;
    v120 = a5;
    v121 = a3;
    v18 = v16;
    while (1)
    {
      v19 = *v17;
      v126 = v17 + 1;
      memcpy(v129, a5, sizeof(v129));
      LOBYTE(v127) = v19;
      v128 = v125;
      *&result = COERCE_DOUBLE(sub_1B4C91D08(v129, &v127, &v128, a3));
      if (v8)
      {
        return result;
      }

      v23 = v22;
      if (!v22)
      {
        break;
      }

      v24 = *&result;
      v25 = v21;
      memcpy(v130, v123, 0x188uLL);
      if (sub_1B4B6D850(v130) != 1)
      {
        memcpy(v129, v130, sizeof(v129));
        LOBYTE(v127) = v19;
        v128 = v125;
        v26 = COERCE_DOUBLE(sub_1B4C91D08(v129, &v127, &v128, a3));
        v29 = v28;
        v124 = v18;
        if (v28)
        {
          v30 = v27;
          v119 = v26;
          if ((v27 != v25 || v28 != v23) && (sub_1B4D18DCC() & 1) == 0 && v119 != v24)
          {
            if (qword_1EDC36EF8 != -1)
            {
              swift_once();
            }

            v48 = sub_1B4D17F6C();
            __swift_project_value_buffer(v48, qword_1EDC36F00);

            v116 = sub_1B4D17F5C();
            v49 = sub_1B4D1873C();

            LODWORD(v115) = v49;
            v50 = v49;
            v51 = v116;
            if (os_log_type_enabled(v116, v50))
            {
              v122 = 0;
              v52 = swift_slowAlloc();
              v110 = swift_slowAlloc();
              v129[0] = v110;
              *v52 = v112;
              LOBYTE(v127) = v125;
              v53 = WorkoutRecordFactType.description.getter();
              v109 = sub_1B49558AC(v53, v54, v129);

              *(v52 + 4) = v109;
              *(v52 + 12) = 2048;
              *(v52 + 14) = v119;
              *(v52 + 22) = 2048;
              *(v52 + 24) = v24;
              *(v52 + 32) = 2080;
              v55 = sub_1B49558AC(v30, v29, v129);

              *(v52 + 34) = v55;
              *(v52 + 42) = 2080;
              *(v52 + 44) = sub_1B49558AC(v25, v23, v129);
              *(v52 + 52) = 2080;
              v56 = 0xE90000000000006BLL;
              v57 = 0xE900000000000072;
              v58 = 0x6165792073696874;
              if (v19 != 3)
              {
                v58 = 1919252069;
                v57 = 0xE400000000000000;
              }

              if (v19 == 2)
              {
                v58 = 0x6E6F6D2073696874;
                v57 = 0xEA00000000006874;
              }

              v59 = 0x7961642073696874;
              if (v19)
              {
                v59 = 0x6565772073696874;
              }

              else
              {
                v56 = 0xE800000000000000;
              }

              if (v19 <= 1)
              {
                v60 = v59;
              }

              else
              {
                v60 = v58;
              }

              if (v19 <= 1)
              {
                v61 = v56;
              }

              else
              {
                v61 = v57;
              }

              v62 = sub_1B49558AC(v60, v61, v129);

              *(v52 + 54) = v62;
              v63 = v116;
              _os_log_impl(&dword_1B4953000, v116, v115, "[NEW RECORD] factType %s oldRecordValue %f newRecordValue %f oldId %s newID %s timescale %s", v52, 0x3Eu);
              v64 = v110;
              swift_arrayDestroy();
              MEMORY[0x1B8C7DDA0](v64, -1, -1);
              MEMORY[0x1B8C7DDA0](v52, -1, -1);

              v8 = v122;
            }

            else
            {
            }

            a5 = v120;
            v129[0] = v25;
            v129[1] = v23;
            MEMORY[0x1EEE9AC00](v65);
            v107[-2] = v129;
            v79 = sub_1B49B1748(sub_1B4AE535C, &v107[-4], v111);
            a3 = v121;
            if (v79)
            {
              v102 = [objc_opt_self() meters];
              v103 = type metadata accessor for WorkoutVoiceGreatestElevationGainFact();
              v104 = v103[5];
              sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
              v105 = v114;
              sub_1B4D1741C();
              *v105 = 18;
              v105[v103[6]] = v19;
              *&v105[v103[7]] = v121;
              v106 = &v105[v103[8]];
              *v106 = v25;
              v106[1] = v23;
              *&result = COERCE_DOUBLE((*(*(v103 - 1) + 56))(v105, 0, 1, v103));
              return result;
            }

            goto LABEL_115;
          }

          v115 = v30;
          if (qword_1EDC36EF8 != -1)
          {
            swift_once();
          }

          v31 = sub_1B4D17F6C();
          __swift_project_value_buffer(v31, qword_1EDC36F00);

          v32 = sub_1B4D17F5C();
          v33 = sub_1B4D1870C();

          LODWORD(v116) = v33;
          if (os_log_type_enabled(v32, v33))
          {
            v122 = 0;
            v34 = swift_slowAlloc();
            v109 = swift_slowAlloc();
            v110 = v32;
            v127 = v109;
            *v34 = v112;
            if (v125 > 0x11u)
            {
              if (v125 == 18)
              {
                v35 = 0xE90000000000006ELL;
                v36 = 0x6F69746176656C65;
              }

              else
              {
                if (v125 != 19)
                {
                  goto LABEL_83;
                }

                v35 = 0xE400000000000000;
                v36 = 1701011824;
              }
            }

            else if (v125 == 16)
            {
              v35 = 0xE800000000000000;
              v36 = 0x736569726F6C6163;
            }

            else
            {
              if (v125 == 17)
              {
                v35 = 0xE800000000000000;
                v36 = 0x65636E6174736964;
                goto LABEL_86;
              }

LABEL_83:
              v129[0] = 0x2874736574736166;
              v129[1] = 0xE800000000000000;
              v128 = v125;
              v80 = v113;
              DistanceReference.rawValue.getter();
              sub_1B4BD7738();
              v81 = sub_1B4D18D5C();
              v107[1] = v82;
              MEMORY[0x1B8C7C620](v81);

              (*v108)(v80, v117);
              MEMORY[0x1B8C7C620](41, 0xE100000000000000);
              v36 = v129[0];
              v35 = v129[1];
            }

LABEL_86:
            v83 = sub_1B49558AC(v36, v35, &v127);

            *(v34 + 4) = v83;
            *(v34 + 12) = 2048;
            *(v34 + 14) = v119;
            *(v34 + 22) = 2048;
            *(v34 + 24) = v24;
            *(v34 + 32) = 2080;
            v84 = sub_1B49558AC(v115, v29, &v127);

            *(v34 + 34) = v84;
            *(v34 + 42) = 2080;
            v85 = sub_1B49558AC(v25, v23, &v127);

            *(v34 + 44) = v85;
            *(v34 + 52) = 2080;
            if (v19 <= 1)
            {
              a5 = v120;
              a3 = v121;
              if (v19)
              {
                v87 = 0x6565772073696874;
                v86 = 0xE90000000000006BLL;
              }

              else
              {
                v86 = 0xE800000000000000;
                v87 = 0x7961642073696874;
              }
            }

            else
            {
              a5 = v120;
              a3 = v121;
              if (v19 == 2)
              {
                v86 = 0xEA00000000006874;
                v87 = 0x6E6F6D2073696874;
              }

              else if (v19 == 3)
              {
                v86 = 0xE900000000000072;
                v87 = 0x6165792073696874;
              }

              else
              {
                v86 = 0xE400000000000000;
                v87 = 1919252069;
              }
            }

            v88 = sub_1B49558AC(v87, v86, &v127);

            *(v34 + 54) = v88;
            v89 = v110;
            _os_log_impl(&dword_1B4953000, v110, v116, "factType %s oldRecordValue %f newRecordValue %f oldId %s newID %s timescale %s", v34, 0x3Eu);
            v90 = v109;
            swift_arrayDestroy();
            MEMORY[0x1B8C7DDA0](v90, -1, -1);
            MEMORY[0x1B8C7DDA0](v34, -1, -1);

            v8 = v122;
LABEL_115:
            v18 = v124;
            goto LABEL_4;
          }

LABEL_114:
          a5 = v120;
          a3 = v121;
          goto LABEL_115;
        }

        if (qword_1EDC36EF8 != -1)
        {
          swift_once();
        }

        v44 = sub_1B4D17F6C();
        __swift_project_value_buffer(v44, qword_1EDC36F00);
        v38 = sub_1B4D17F5C();
        v45 = sub_1B4D1870C();
        if (!os_log_type_enabled(v38, v45))
        {

          goto LABEL_114;
        }

        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v127 = v41;
        *v40 = v118;
        v122 = 0;
        if (v125 > 0x11u)
        {
          if (v125 == 18)
          {
            v46 = 0xE90000000000006ELL;
            v47 = 0x6F69746176656C65;
          }

          else
          {
            if (v125 != 19)
            {
              goto LABEL_96;
            }

            v46 = 0xE400000000000000;
            v47 = 1701011824;
          }
        }

        else if (v125 == 16)
        {
          v46 = 0xE800000000000000;
          v47 = 0x736569726F6C6163;
        }

        else
        {
          if (v125 == 17)
          {
            v46 = 0xE800000000000000;
            v47 = 0x65636E6174736964;
            goto LABEL_99;
          }

LABEL_96:
          v129[0] = 0x2874736574736166;
          v129[1] = 0xE800000000000000;
          v128 = v125;
          v91 = v113;
          DistanceReference.rawValue.getter();
          sub_1B4BD7738();
          v92 = sub_1B4D18D5C();
          MEMORY[0x1B8C7C620](v92);

          (*v108)(v91, v117);
          MEMORY[0x1B8C7C620](41, 0xE100000000000000);
          v47 = v129[0];
          v46 = v129[1];
        }

LABEL_99:
        v93 = sub_1B49558AC(v47, v46, &v127);

        *(v40 + 4) = v93;
        *(v40 + 12) = 2080;
        v94 = 0xE90000000000006BLL;
        v95 = 0xE900000000000072;
        v96 = 0x6165792073696874;
        if (v19 != 3)
        {
          v96 = 1919252069;
          v95 = 0xE400000000000000;
        }

        if (v19 == 2)
        {
          v96 = 0x6E6F6D2073696874;
          v95 = 0xEA00000000006874;
        }

        v97 = 0x7961642073696874;
        if (v19)
        {
          v97 = 0x6565772073696874;
        }

        else
        {
          v94 = 0xE800000000000000;
        }

        if (v19 <= 1)
        {
          v98 = v97;
        }

        else
        {
          v98 = v96;
        }

        if (v19 <= 1)
        {
          v99 = v94;
        }

        else
        {
          v99 = v95;
        }

        v100 = sub_1B49558AC(v98, v99, &v127);

        *(v40 + 14) = v100;
        v76 = v45;
        v77 = v38;
        v78 = "factType %s no value in previous snapshot timescale %s";
LABEL_113:
        _os_log_impl(&dword_1B4953000, v77, v76, v78, v40, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B8C7DDA0](v41, -1, -1);
        MEMORY[0x1B8C7DDA0](v40, -1, -1);

        v8 = v122;
        goto LABEL_114;
      }

LABEL_4:
      --v18;
      v17 = v126;
      if (!v18)
      {
        goto LABEL_116;
      }
    }

    v124 = v18;
    if (qword_1EDC36EF8 != -1)
    {
      swift_once();
    }

    v37 = sub_1B4D17F6C();
    __swift_project_value_buffer(v37, qword_1EDC36F00);
    v38 = sub_1B4D17F5C();
    v39 = sub_1B4D1870C();
    if (!os_log_type_enabled(v38, v39))
    {

      goto LABEL_115;
    }

    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v127 = v41;
    *v40 = v118;
    v122 = 0;
    if (v125 > 0x11u)
    {
      if (v125 == 18)
      {
        v42 = 0xE90000000000006ELL;
        v43 = 0x6F69746176656C65;
        goto LABEL_60;
      }

      if (v125 == 19)
      {
        v42 = 0xE400000000000000;
        v43 = 1701011824;
        goto LABEL_60;
      }
    }

    else
    {
      if (v125 == 16)
      {
        v42 = 0xE800000000000000;
        v43 = 0x736569726F6C6163;
        goto LABEL_60;
      }

      if (v125 == 17)
      {
        v42 = 0xE800000000000000;
        v43 = 0x65636E6174736964;
LABEL_60:
        v68 = sub_1B49558AC(v43, v42, &v127);

        *(v40 + 4) = v68;
        *(v40 + 12) = 2080;
        v69 = 0xE90000000000006BLL;
        v70 = 0xE900000000000072;
        v71 = 0x6165792073696874;
        if (v19 != 3)
        {
          v71 = 1919252069;
          v70 = 0xE400000000000000;
        }

        if (v19 == 2)
        {
          v71 = 0x6E6F6D2073696874;
          v70 = 0xEA00000000006874;
        }

        v72 = 0x7961642073696874;
        if (v19)
        {
          v72 = 0x6565772073696874;
        }

        else
        {
          v69 = 0xE800000000000000;
        }

        if (v19 <= 1)
        {
          v73 = v72;
        }

        else
        {
          v73 = v71;
        }

        if (v19 <= 1)
        {
          v74 = v69;
        }

        else
        {
          v74 = v70;
        }

        v75 = sub_1B49558AC(v73, v74, &v127);

        *(v40 + 14) = v75;
        v76 = v39;
        v77 = v38;
        v78 = "factType %s no value in current snapshot timescale %s";
        goto LABEL_113;
      }
    }

    v129[0] = 0x2874736574736166;
    v129[1] = 0xE800000000000000;
    v128 = v125;
    v66 = v113;
    DistanceReference.rawValue.getter();
    sub_1B4BD7738();
    v67 = sub_1B4D18D5C();
    MEMORY[0x1B8C7C620](v67);

    (*v108)(v66, v117);
    MEMORY[0x1B8C7C620](41, 0xE100000000000000);
    v43 = v129[0];
    v42 = v129[1];
    goto LABEL_60;
  }

LABEL_116:
  v101 = type metadata accessor for WorkoutVoiceGreatestElevationGainFact();
  *&result = COERCE_DOUBLE((*(*(v101 - 8) + 56))(v114, 1, 1, v101));
  return result;
}

uint64_t sub_1B4C91D08(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
{
  v78 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CE8, &qword_1B4D44B80);
  v9 = *(v8 - 8);
  v68 = v8;
  v69 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v70 = v67 - v11;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CF8, &unk_1B4D1BC80);
  v73 = *(v71 - 8);
  v12 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v75 = v67 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6818, &unk_1B4D1AB30);
  v15 = *(v14 - 8);
  v76 = v14;
  v77 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v74 = v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v67 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CF0, &unk_1B4D1BC70);
  v72 = *(v21 - 8);
  v22 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = v67 - v23;
  v25 = *(a1 + 216);
  v85[4] = *(a1 + 200);
  v85[5] = v25;
  v26 = *(a1 + 248);
  v85[6] = *(a1 + 232);
  v85[7] = v26;
  v27 = *(a1 + 152);
  v85[0] = *(a1 + 136);
  v85[1] = v27;
  v28 = *(a1 + 184);
  v85[2] = *(a1 + 168);
  v85[3] = v28;
  v29 = *a2;
  v30 = *a3;
  if (sub_1B4B6F478(v85) == 1)
  {
    return 0;
  }

  v32 = v85 - 3 * v29;
  v67[1] = v32[13];
  v33 = v32[14];
  v34 = v32[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B50, &qword_1B4D1D580);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B4D1A800;
  *(inited + 32) = v78;
  if (v30 > 17)
  {
    if (v30 == 18)
    {
      v81[0] = MEMORY[0x1E69E7CC0];
      v81[1] = MEMORY[0x1E69E7CC0];
      v81[2] = MEMORY[0x1E69E7CC0];
      v81[3] = inited;
      v81[4] = MEMORY[0x1E69E7CC0];
      v81[5] = MEMORY[0x1E69E7CC0];

      sub_1B4CE8AA4(v81, v34, v79);
      if (!v4)
      {

        swift_bridgeObjectRelease_n();
        if (v79[0])
        {
          v49 = *(v79[0] + 16);
          if (v49)
          {
            sub_1B4974FBC(v79[0] + ((*(v77 + 80) + 32) & ~*(v77 + 80)), v20, &qword_1EB8A6818, &unk_1B4D1AB30);

            if (v49 < 3)
            {
              v38 = &qword_1EB8A6818;
              v39 = &unk_1B4D1AB30;
              v41 = v20;
              goto LABEL_39;
            }

            v61 = *(v76 + 32);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
            sub_1B4D1742C();
            v52 = v62;
            sub_1B4D1779C();
            v53 = &qword_1EB8A6818;
            v54 = &unk_1B4D1AB30;
            v57 = v20;
            goto LABEL_51;
          }

          goto LABEL_40;
        }

        return 0;
      }

      goto LABEL_22;
    }

    if (v30 == 19)
    {
      v83[0] = MEMORY[0x1E69E7CC0];
      v83[1] = MEMORY[0x1E69E7CC0];
      v83[2] = MEMORY[0x1E69E7CC0];
      v83[3] = inited;
      v83[4] = MEMORY[0x1E69E7CC0];
      v83[5] = MEMORY[0x1E69E7CC0];

      sub_1B4CE9F8C(v83, v34, v79);
      if (!v4)
      {

        swift_bridgeObjectRelease_n();
        if (v79[0])
        {
          v40 = *(v79[0] + 16);
          if (v40)
          {
            v37 = v75;
            sub_1B4974FBC(v79[0] + ((*(v73 + 80) + 32) & ~*(v73 + 80)), v75, &qword_1EB8A6CF8, &unk_1B4D1BC80);

            if (v40 < 3)
            {
              v38 = &qword_1EB8A6CF8;
              v39 = &unk_1B4D1BC80;
              goto LABEL_18;
            }

            v55 = *(v71 + 32);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
            sub_1B4D1742C();
            v52 = v56;
            sub_1B4D1779C();
            v53 = &qword_1EB8A6CF8;
            v54 = &unk_1B4D1BC80;
            goto LABEL_48;
          }

LABEL_40:
        }

        return 0;
      }

LABEL_22:

      return swift_bridgeObjectRelease_n();
    }
  }

  else
  {
    if (v30 == 16)
    {
      v80[0] = MEMORY[0x1E69E7CC0];
      v80[1] = MEMORY[0x1E69E7CC0];
      v80[2] = MEMORY[0x1E69E7CC0];
      v80[3] = inited;
      v80[4] = MEMORY[0x1E69E7CC0];
      v80[5] = MEMORY[0x1E69E7CC0];

      sub_1B4CE8030(v80, v34, v79);
      if (!v4)
      {

        swift_bridgeObjectRelease_n();
        if (v79[0])
        {
          v48 = *(v79[0] + 16);
          if (v48)
          {
            sub_1B4974FBC(v79[0] + ((*(v72 + 80) + 32) & ~*(v72 + 80)), v24, &qword_1EB8A6CF0, &unk_1B4D1BC70);

            if (v48 >= 3)
            {
              v58 = *(v21 + 32);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
              sub_1B4D1742C();
              v60 = v59;
              sub_1B4D1779C();
              sub_1B4975024(v24, &qword_1EB8A6CF0, &unk_1B4D1BC70);
              return v60;
            }

            sub_1B4975024(v24, &qword_1EB8A6CF0, &unk_1B4D1BC70);
          }

          else
          {
          }
        }

        return 0;
      }

      goto LABEL_22;
    }

    if (v30 == 17)
    {
      v82[0] = MEMORY[0x1E69E7CC0];
      v82[1] = MEMORY[0x1E69E7CC0];
      v82[2] = MEMORY[0x1E69E7CC0];
      v82[3] = inited;
      v82[4] = MEMORY[0x1E69E7CC0];
      v82[5] = MEMORY[0x1E69E7CC0];

      sub_1B4CE9518(v82, v34, v79);
      if (!v4)
      {

        swift_bridgeObjectRelease_n();
        if (v79[0])
        {
          v36 = *(v79[0] + 16);
          if (v36)
          {
            v37 = v74;
            sub_1B4974FBC(v79[0] + ((*(v77 + 80) + 32) & ~*(v77 + 80)), v74, &qword_1EB8A6818, &unk_1B4D1AB30);

            if (v36 < 3)
            {
              v38 = &qword_1EB8A6818;
              v39 = &unk_1B4D1AB30;
LABEL_18:
              v41 = v37;
LABEL_39:
              sub_1B4975024(v41, v38, v39);
              return 0;
            }

            v50 = *(v76 + 32);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
            sub_1B4D1742C();
            v52 = v51;
            sub_1B4D1779C();
            v53 = &qword_1EB8A6818;
            v54 = &unk_1B4D1AB30;
LABEL_48:
            v57 = v37;
LABEL_51:
            sub_1B4975024(v57, v53, v54);
            return v52;
          }

          goto LABEL_40;
        }

        return 0;
      }

      goto LABEL_22;
    }
  }

  v84[0] = MEMORY[0x1E69E7CC0];
  v84[1] = MEMORY[0x1E69E7CC0];
  v84[2] = MEMORY[0x1E69E7CC0];
  v84[3] = inited;
  v84[4] = MEMORY[0x1E69E7CC0];
  v84[5] = MEMORY[0x1E69E7CC0];

  sub_1B4CEAA00(v84, v34, v79);

  result = swift_bridgeObjectRelease_n();
  if (!v4)
  {
    v42 = v79[0];
    if (!v79[0])
    {
      return 0;
    }

    if (*(v79[0] + 16) && (v43 = sub_1B49E9CA4(v30), (v44 & 1) != 0) && (v45 = *(*(v42 + 56) + 8 * v43), , , (v46 = *(v45 + 16)) != 0))
    {
      v47 = v70;
      sub_1B4974FBC(v45 + ((*(v69 + 80) + 32) & ~*(v69 + 80)), v70, &qword_1EB8A6CE8, &qword_1B4D44B80);

      if (v46 >= 3)
      {
        v63 = *(v68 + 40);
        v64 = v63 + *(type metadata accessor for DistanceSampleIntervalRecord() + 32);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
        sub_1B4D1742C();
        v66 = v65;
        sub_1B4D1779C();
        sub_1B4975024(v47, &qword_1EB8A6CE8, &qword_1B4D44B80);
        return v66;
      }

      sub_1B4975024(v47, &qword_1EB8A6CE8, &qword_1B4D44B80);
    }

    else
    {
    }

    return 0;
  }

  return result;
}

uint64_t static WorkoutMetricsFact.analyze(_:unitManager:currentWorkoutState:previousWorkoutState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B49C016C;

  return (sub_1B4C98A0C)(a1, a2, a3, a4);
}

uint64_t sub_1B4C927EC()
{
  v1 = type metadata accessor for WorkoutState();
  v2 = sub_1B4BAE58C(*(v0 + *(v1 + 112)));
  v3 = *MEMORY[0x1E696C760];
  v4 = sub_1B4D1818C();
  if (!*(v2 + 16))
  {

    goto LABEL_7;
  }

  v6 = sub_1B49E9EC4(v4, v5);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
LABEL_7:

    return 0;
  }

  sub_1B4955D64(*(v2 + 56) + 32 * v6, v11);

  sub_1B498AFB8(0, &qword_1EDC36E00, 0x1E696C348);
  if (swift_dynamicCast())
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

uint64_t WorkoutMetricsFact.QueryIdentifier.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1B4C92958@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1B4D18B1C();

  *a2 = v5 != 0;
  return result;
}

unint64_t WorkoutMetricsFact.makePrompt(promptFormatter:)(uint64_t a1)
{
  v206 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC8, &unk_1B4D464B0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v205 = &v181 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v210 = &v181 - v5;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD0, &unk_1B4D1F270);
  v216 = *(v209 - 8);
  v6 = *(v216 + 64);
  MEMORY[0x1EEE9AC00](v209);
  v194 = &v181 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v192 = &v181 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v198 = &v181 - v11;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A71C0, &unk_1B4D40CF0);
  v184 = *(v185 - 8);
  v12 = *(v184 + 64);
  MEMORY[0x1EEE9AC00](v185);
  v183 = &v181 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CB0, &unk_1B4D1BBF0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v215 = &v181 - v16;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v212 = *(v204 - 8);
  v17 = *(v212 + 64);
  MEMORY[0x1EEE9AC00](v204);
  v182 = &v181 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v197 = &v181 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA0, &unk_1B4D1BBE0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v208 = &v181 - v23;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CE0, &unk_1B4D1EF00);
  v202 = *(v203 - 8);
  v24 = *(v202 + 64);
  MEMORY[0x1EEE9AC00](v203);
  v190 = &v181 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v193 = &v181 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA8, &unk_1B4D1C2B0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v31 = &v181 - v30;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v200 = *(v201 - 1);
  v32 = *(v200 + 8);
  MEMORY[0x1EEE9AC00](v201);
  v187 = &v181 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v195 = &v181 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v189 = &v181 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v188 = &v181 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v191 = &v181 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v199 = &v181 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v181 - v46;
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v211 = *(v213 - 8);
  v48 = v211[8];
  MEMORY[0x1EEE9AC00](v213);
  v181 = &v181 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v186 = &v181 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v196 = &v181 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v181 - v55;
  v219 = 0xD00000000000004FLL;
  v220 = 0x80000001B4D668A0;
  v57 = type metadata accessor for WorkoutMetricsFact();
  v58 = *(v57 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB100, &unk_1B4D44B50);
  v59 = *(sub_1B4D18F8C() - 8);
  v60 = *(v59 + 72);
  v61 = (*(v59 + 80) + 32) & ~*(v59 + 80);
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_1B4D1B2D0;
  sub_1B4D18F4C();
  sub_1B4D18F5C();
  sub_1B4D18F6C();
  sub_1B4D18F7C();
  v63 = sub_1B4BCA7BC(v62);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v64 = v217;
  v65 = sub_1B4D15F5C(v217 + v58, v63);
  v67 = v66;

  v214 = v57;
  if (*(v64 + *(v57 + 32)) == 1)
  {
    v218[0] = 0;
    v218[1] = 0xE000000000000000;
    sub_1B4D1896C();

    v68 = 0x80000001B4D66A00;
    v69 = 0xD000000000000010;
  }

  else
  {
    v218[0] = 0;
    v218[1] = 0xE000000000000000;
    sub_1B4D1896C();

    v68 = 0x80000001B4D668F0;
    v69 = 0xD000000000000017;
  }

  v218[0] = v69;
  v218[1] = v68;
  MEMORY[0x1B8C7C620](v65, v67);

  MEMORY[0x1B8C7C620](10, 0xE100000000000000);
  MEMORY[0x1B8C7C620](v218[0], v218[1]);

  v70 = v214;
  v71 = v217;
  sub_1B4974FBC(v217 + v214[5], v47, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  v72 = v211;
  v73 = v213;
  v207 = v211[6];
  v74 = v207(v47, 1, v213);
  v75 = v212;
  if (v74 == 1)
  {
    sub_1B4975024(v47, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  }

  else
  {
    (v72[4])(v56, v47, v73);
    sub_1B4D1742C();
    if (v76 != 0.0)
    {
      v77 = sub_1B4D133E8(v56, *v71, 0, 1);
      v79 = v78;
      v218[0] = 0;
      v218[1] = 0xE000000000000000;
      sub_1B4D1896C();

      v218[0] = 0xD000000000000019;
      v218[1] = 0x80000001B4D669E0;
      MEMORY[0x1B8C7C620](v77, v79);
      v70 = v214;

      MEMORY[0x1B8C7C620](10, 0xE100000000000000);
      MEMORY[0x1B8C7C620](v218[0], v218[1]);
      v71 = v217;
    }

    (v72[1])(v56, v73);
  }

  v80 = v215;
  v81 = v201;
  v82 = v200;
  sub_1B4974FBC(v71 + v70[9], v31, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  v83 = (*(v82 + 6))(v31, 1, v81);
  v84 = v210;
  v85 = v208;
  if (v83 == 1)
  {
    sub_1B4975024(v31, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  }

  else
  {
    v86 = v195;
    (*(v82 + 4))();
    sub_1B4D1742C();
    if (v88 == 0.0)
    {
      (*(v82 + 1))(v86, v81);
    }

    else
    {
      v89 = *(v206 + 16);
      FIUnitManager.userMeasurementUnitForActiveEnergyBurned()(v87);
      v91 = v90;
      v92 = v187;
      sub_1B4D1745C();
      v93 = sub_1B4D12160();
      v94 = sub_1B4D12A28();
      v96 = v95;

      v97 = *(v82 + 1);
      v97(v92, v81);
      v218[0] = 0;
      v218[1] = 0xE000000000000000;
      sub_1B4D1896C();

      v218[0] = 0x6220796772656E45;
      v218[1] = 0xEF203A64656E7275;
      v98 = v94;
      v70 = v214;
      MEMORY[0x1B8C7C620](v98, v96);

      MEMORY[0x1B8C7C620](10, 0xE100000000000000);
      MEMORY[0x1B8C7C620](v218[0], v218[1]);
      v71 = v217;

      v97(v195, v81);
      v75 = v212;
    }

    v80 = v215;
  }

  v99 = v199;
  sub_1B4974FBC(v71 + v70[10], v199, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  v100 = v213;
  if (v207(v99, 1, v213) == 1)
  {
    sub_1B4975024(v99, &qword_1EB8A6CC0, &unk_1B4D1BC00);
    v101 = v204;
  }

  else
  {
    v102 = v211;
    v103 = v196;
    v104 = v99;
    v105 = v211[4];
    v105(v196, v104, v100);
    sub_1B4D1742C();
    if (v106 != 0.0)
    {
      v200 = v105;
      v201 = v102[7];
      v112 = v191;
      (v201)(v191, 1, 1, v100);
      [*v71 effectiveTypeIdentifier];
      v113 = [objc_opt_self() feet];
      v114 = sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
      v115 = v188;
      v199 = v114;
      sub_1B4D1741C();
      sub_1B4975024(v112, &qword_1EB8A6CC0, &unk_1B4D1BC00);
      (v201)(v115, 0, 1, v100);
      sub_1B498B270(v115, v112, &qword_1EB8A6CC0, &unk_1B4D1BC00);
      v116 = v189;
      sub_1B4974FBC(v112, v189, &qword_1EB8A6CC0, &unk_1B4D1BC00);
      if (v207(v116, 1, v100) == 1)
      {
        sub_1B4975024(v112, &qword_1EB8A6CC0, &unk_1B4D1BC00);
        (v102[1])(v196, v100);
        sub_1B4975024(v116, &qword_1EB8A6CC0, &unk_1B4D1BC00);
        v71 = v217;
        v84 = v210;
        v70 = v214;
        v80 = v215;
        v101 = v204;
        v75 = v212;
        v107 = v208;
      }

      else
      {
        v138 = v186;
        v200(v186, v116, v100);
        sub_1B49A2254();
        v139 = v196;
        v140 = sub_1B4D1810C();
        v107 = v208;
        if (v140)
        {
          v142 = v208;
          v143 = *(v206 + 16);
          FIUnitManager.userMeasurementUnitForElevation()(v141);
          v145 = v144;
          v146 = v181;
          sub_1B4D1745C();
          v147 = sub_1B4D12160();
          v148 = sub_1B4D1878C();
          v150 = v149;

          v151 = v211[1];
          v151(v146, v100);
          v218[0] = 0;
          v218[1] = 0xE000000000000000;
          sub_1B4D1896C();

          v218[0] = 0xD000000000000016;
          v218[1] = 0x80000001B4D669C0;
          MEMORY[0x1B8C7C620](v148, v150);
          v107 = v142;

          MEMORY[0x1B8C7C620](10, 0xE100000000000000);
          MEMORY[0x1B8C7C620](v218[0], v218[1]);

          v151(v186, v100);
          sub_1B4975024(v191, &qword_1EB8A6CC0, &unk_1B4D1BC00);
          v151(v139, v100);
        }

        else
        {
          v180 = v211[1];
          v180(v138, v100);
          sub_1B4975024(v191, &qword_1EB8A6CC0, &unk_1B4D1BC00);
          v180(v139, v100);
        }

        v71 = v217;
        v84 = v210;
        v70 = v214;
        v80 = v215;
        v101 = v204;
        v75 = v212;
      }

      goto LABEL_20;
    }

    (v102[1])(v103, v100);
    v101 = v204;
    v75 = v212;
    v80 = v215;
  }

  v107 = v85;
LABEL_20:
  sub_1B4974FBC(v71 + v70[11], v107, &qword_1EB8A6CA0, &unk_1B4D1BBE0);
  v108 = v202;
  v109 = v203;
  if ((*(v202 + 48))(v107, 1, v203) == 1)
  {
    sub_1B4975024(v107, &qword_1EB8A6CA0, &unk_1B4D1BBE0);
  }

  else
  {
    v110 = v193;
    (*(v108 + 32))(v193, v107, v109);
    sub_1B4D1742C();
    if (v111 == 0.0)
    {
      (*(v108 + 8))(v110, v109);
    }

    else
    {
      v117 = sub_1B4D12160();
      v118 = [objc_opt_self() watts];
      v119 = v190;
      sub_1B4D1745C();

      sub_1B498AFB8(0, &qword_1EB8A7990, 0x1E696B068);
      v120 = sub_1B4D1878C();
      v122 = v121;

      v123 = *(v108 + 8);
      v123(v119, v109);
      v218[0] = 0;
      v218[1] = 0xE000000000000000;
      sub_1B4D1896C();

      v218[0] = 0x2065676172657641;
      v218[1] = 0xEF203A7265776F50;
      v124 = v120;
      v70 = v214;
      MEMORY[0x1B8C7C620](v124, v122);
      v84 = v210;

      MEMORY[0x1B8C7C620](10, 0xE100000000000000);
      MEMORY[0x1B8C7C620](v218[0], v218[1]);
      v71 = v217;

      v123(v110, v109);
      v75 = v212;
    }

    v80 = v215;
  }

  sub_1B4974FBC(v71 + v70[6], v80, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  v125 = (*(v75 + 48))(v80, 1, v101);
  v126 = v209;
  if (v125 == 1)
  {
    sub_1B4975024(v80, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  }

  else
  {
    v127 = v80;
    v128 = v197;
    (*(v75 + 32))(v197, v127, v101);
    sub_1B4D1742C();
    if (v129 == 0.0)
    {
      (*(v75 + 8))(v128, v101);
    }

    else
    {
      v130 = *v71;
      if ([*v71 effectiveTypeIdentifier] == 13)
      {
        if (qword_1EDC36E80 != -1)
        {
          swift_once();
        }

        v131 = v182;
        sub_1B4D1745C();
        sub_1B4D1742C();
        v132 = *(v75 + 8);
        v132(v131, v101);
        v133 = [objc_opt_self() metersPerSecond];
        sub_1B498AFB8(0, &qword_1EB8A7230, 0x1E696B078);
        v134 = v183;
        sub_1B4D1741C();
        v135 = sub_1B4D13D94(v134, v130, 1);
        v137 = v136;
        v218[0] = 0;
        v218[1] = 0xE000000000000000;
        sub_1B4D1896C();

        v218[0] = 0x2065676172657641;
        v218[1] = 0xEF203A6465657053;
        MEMORY[0x1B8C7C620](v135, v137);

        MEMORY[0x1B8C7C620](10, 0xE100000000000000);
        MEMORY[0x1B8C7C620](v218[0], v218[1]);

        (*(v184 + 8))(v134, v185);
        v132(v197, v101);
        v71 = v217;
      }

      else
      {
        v152 = v197;
        v153 = sub_1B4D13AE8(v197, v130, 2);
        v155 = v154;
        v218[0] = 0;
        v218[1] = 0xE000000000000000;
        sub_1B4D1896C();

        strcpy(v218, "Average Pace: ");
        HIBYTE(v218[1]) = -18;
        MEMORY[0x1B8C7C620](v153, v155);

        MEMORY[0x1B8C7C620](10, 0xE100000000000000);
        MEMORY[0x1B8C7C620](v218[0], v218[1]);
        v71 = v217;

        (*(v75 + 8))(v152, v101);
      }

      v84 = v210;
      v70 = v214;
    }
  }

  sub_1B4974FBC(v71 + v70[12], v84, &qword_1EB8A6CC8, &unk_1B4D464B0);
  v156 = *(v216 + 48);
  if (v156(v84, 1, v126) == 1)
  {
    sub_1B4975024(v84, &qword_1EB8A6CC8, &unk_1B4D464B0);
LABEL_44:
    v159 = v205;
    goto LABEL_45;
  }

  v157 = v198;
  (*(v216 + 32))();
  sub_1B4D1742C();
  if (v158 == 0.0)
  {
    (*(v216 + 8))(v157, v126);
    goto LABEL_44;
  }

  v162 = sub_1B4D12160();
  if (qword_1EDC36DD8 != -1)
  {
    swift_once();
  }

  v163 = v192;
  v164 = v209;
  sub_1B4D1745C();
  v165 = sub_1B4D14174(v163);
  v167 = v166;

  v168 = *(v216 + 8);
  v169 = v163;
  v126 = v164;
  v168(v169, v164);
  v218[0] = 0;
  v218[1] = 0xE000000000000000;
  sub_1B4D1896C();

  v218[0] = 0xD000000000000014;
  v218[1] = 0x80000001B4D669A0;
  MEMORY[0x1B8C7C620](v165, v167);

  MEMORY[0x1B8C7C620](10, 0xE100000000000000);
  MEMORY[0x1B8C7C620](v218[0], v218[1]);

  v168(v198, v164);
  v71 = v217;
  v159 = v205;
  v70 = v214;
LABEL_45:
  sub_1B4974FBC(v71 + v70[13], v159, &qword_1EB8A6CC8, &unk_1B4D464B0);
  if (v156(v159, 1, v126) == 1)
  {
    sub_1B4975024(v159, &qword_1EB8A6CC8, &unk_1B4D464B0);
  }

  else
  {
    v160 = v194;
    (*(v216 + 32))(v194, v159, v126);
    sub_1B4D1742C();
    if (v161 == 0.0)
    {
      (*(v216 + 8))(v160, v126);
    }

    else
    {
      v170 = sub_1B4D12160();
      if (qword_1EDC36DD8 != -1)
      {
        swift_once();
      }

      v171 = v192;
      sub_1B4D1745C();
      v172 = sub_1B4D14174(v171);
      v174 = v173;

      v175 = *(v216 + 8);
      v175(v171, v126);
      v218[0] = 0;
      v218[1] = 0xE000000000000000;
      sub_1B4D1896C();

      v218[0] = 0xD000000000000014;
      v218[1] = 0x80000001B4D66980;
      MEMORY[0x1B8C7C620](v172, v174);

      MEMORY[0x1B8C7C620](10, 0xE100000000000000);
      MEMORY[0x1B8C7C620](v218[0], v218[1]);

      v175(v160, v126);
      v71 = v217;
      v70 = v214;
    }
  }

  v176 = (v71 + v70[14]);
  if ((v176[1] & 1) == 0)
  {
    if (*v176 >= 9.0)
    {
      v218[0] = 0;
      v218[1] = 0xE000000000000000;
      sub_1B4D1896C();
      MEMORY[0x1B8C7C620](0xD000000000000012, 0x80000001B4D66910);
      sub_1B4D185EC();
      v177 = " which corresponds to Hard\n";
      v178 = 0xD000000000000020;
      goto LABEL_60;
    }

    if (*v176 >= 7.0)
    {
      v218[0] = 0;
      v218[1] = 0xE000000000000000;
      sub_1B4D1896C();
      MEMORY[0x1B8C7C620](0xD000000000000012, 0x80000001B4D66910);
      sub_1B4D185EC();
      v177 = "Estimated Effort: ";
      v178 = 0xD00000000000001DLL;
LABEL_60:
      MEMORY[0x1B8C7C620](v178, v177 | 0x8000000000000000);
      MEMORY[0x1B8C7C620](v218[0], v218[1]);
    }
  }

  MEMORY[0x1B8C7C620](62, 0xE100000000000000);
  return v219;
}

uint64_t sub_1B4C944F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B49C0344;

  return (sub_1B4C98A0C)(a1, a2, a3, a4);
}

unint64_t sub_1B4C945C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6890, &qword_1B4D1ABA8);
    v3 = sub_1B4D18AEC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B4974FBC(v4, &v13, &qword_1EB8AB120, &qword_1B4D32FD0);
      v5 = v13;
      v6 = v14;
      result = sub_1B49E9EC4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1B498B060(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B4C946F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADC90, &qword_1B4D44DD0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6908, &qword_1B4D1AC20);
    v8 = sub_1B4D18AEC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1B4974FBC(v10, v6, &qword_1EB8ADC90, &qword_1B4D44DD0);
      result = sub_1B49E9FEC(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      Descriptor = type metadata accessor for FitnessContextQueryDescriptor();
      result = sub_1B4C99A00(v6, v15 + *(*(Descriptor - 8) + 72) * v14, type metadata accessor for FitnessContextQueryDescriptor);
      *(v8[7] + 8 * v14) = *&v6[v9];
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B4C948D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB8A6AA8, &qword_1B4D1B1D8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v19 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADC88, &qword_1B4D44DC8);
    v8 = sub_1B4D18AEC();
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1B4974FBC(v9, v6, qword_1EB8A6AA8, &qword_1B4D1B1D8);
      result = sub_1B49EECB4();
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v8 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v14 = *(v8 + 56);
      Descriptor = type metadata accessor for FitnessContextQueryDescriptor();
      result = sub_1B4C99A00(v6, v14 + *(*(Descriptor - 8) + 72) * v13, type metadata accessor for FitnessContextQueryDescriptor);
      v16 = *(v8 + 16);
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      *(v8 + 16) = v18;
      v9 += v10;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B4C94A9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B48, &unk_1B4D1B2C0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6900, &qword_1B4D1AC18);
    v8 = sub_1B4D18AEC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1B4974FBC(v10, v6, &qword_1EB8A6B48, &unk_1B4D1B2C0);
      result = sub_1B49EA0C0(*v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = *v6;
      v15 = v8[7];
      Descriptor = type metadata accessor for FitnessContextQueryDescriptor();
      result = sub_1B4C99A00(&v6[v9], v15 + *(*(Descriptor - 8) + 72) * v14, type metadata accessor for FitnessContextQueryDescriptor);
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B4C94C80(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A68C8, &qword_1B4D1ABE0);
    v3 = sub_1B4D18AEC();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_1B49EA180(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B4C94D74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADC78, &qword_1B4D44DB8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v19 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADC80, &qword_1B4D44DC0);
    v8 = sub_1B4D18AEC();
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1B4974FBC(v9, v6, &qword_1EB8ADC78, &qword_1B4D44DB8);
      result = sub_1B49EF0B4();
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v8 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v14 = *(v8 + 56);
      Descriptor = type metadata accessor for FitnessContextQueryDescriptor();
      result = sub_1B4C99A00(v6, v14 + *(*(Descriptor - 8) + 72) * v13, type metadata accessor for FitnessContextQueryDescriptor);
      v16 = *(v8 + 16);
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      *(v8 + 16) = v18;
      v9 += v10;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B4C94F64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6EA0, &qword_1B4D1C2A8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v19 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADC68, &qword_1B4D44DA8);
    v8 = sub_1B4D18AEC();
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1B4974FBC(v9, v6, &qword_1EB8A6EA0, &qword_1B4D1C2A8);
      result = sub_1B49EED40();
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v8 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v14 = *(v8 + 56);
      Descriptor = type metadata accessor for FitnessContextQueryDescriptor();
      result = sub_1B4C99A00(v6, v14 + *(*(Descriptor - 8) + 72) * v13, type metadata accessor for FitnessContextQueryDescriptor);
      v16 = *(v8 + 16);
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      *(v8 + 16) = v18;
      v9 += v10;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B4C9512C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADC58, &qword_1B4D44D98);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v19 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADC60, &qword_1B4D44DA0);
    v8 = sub_1B4D18AEC();
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1B4974FBC(v9, v6, &qword_1EB8ADC58, &qword_1B4D44D98);
      result = sub_1B49EF0B4();
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v8 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v14 = *(v8 + 56);
      Descriptor = type metadata accessor for FitnessContextQueryDescriptor();
      result = sub_1B4C99A00(v6, v14 + *(*(Descriptor - 8) + 72) * v13, type metadata accessor for FitnessContextQueryDescriptor);
      v16 = *(v8 + 16);
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      *(v8 + 16) = v18;
      v9 += v10;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B4C952F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7268, &qword_1B4D1D590);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADC50, &qword_1B4D44D90);
    v8 = sub_1B4D18AEC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1B4974FBC(v10, v6, &qword_1EB8A7268, &qword_1B4D1D590);
      result = sub_1B49EA31C(*v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = *v6;
      v15 = v8[7];
      Descriptor = type metadata accessor for FitnessContextQueryDescriptor();
      result = sub_1B4C99A00(&v6[v9], v15 + *(*(Descriptor - 8) + 72) * v14, type metadata accessor for FitnessContextQueryDescriptor);
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B4C95564(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADC08, &qword_1B4D44D48);
    v3 = sub_1B4D18AEC();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 24);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_1B49EA3C0(v5);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v11 = (v3[7] + 24 * result);
      *v11 = v6;
      v11[1] = v7;
      v11[2] = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B4C95670(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADC40, &qword_1B4D44D80);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v19 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADC48, &qword_1B4D44D88);
    v8 = sub_1B4D18AEC();
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1B4974FBC(v9, v6, &qword_1EB8ADC40, &qword_1B4D44D80);
      result = sub_1B49EF0B4();
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v8 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v14 = *(v8 + 56);
      Descriptor = type metadata accessor for FitnessContextQueryDescriptor();
      result = sub_1B4C99A00(v6, v14 + *(*(Descriptor - 8) + 72) * v13, type metadata accessor for FitnessContextQueryDescriptor);
      v16 = *(v8 + 16);
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      *(v8 + 16) = v18;
      v9 += v10;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B4C95838(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADC38, &qword_1B4D44D78);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A68E0, &qword_1B4D1ABF8);
    v8 = sub_1B4D18AEC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    while (1)
    {
      sub_1B4974FBC(v10, v6, &qword_1EB8ADC38, &qword_1B4D44D78);
      result = sub_1B49EA4A8(*v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = *v6;
      v15 = v8[7];
      v16 = type metadata accessor for WorkoutState();
      result = sub_1B4C99A00(&v6[v9], v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for WorkoutState);
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B4C95A38(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(id))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = sub_1B4D18AEC();

    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *i;
      v10 = *(i - 1);

      result = a4(v10);
      if (v12)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v10;
      *(v7[7] + 8 * result) = v9;
      v13 = v7[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v7[2] = v15;
      if (!--v4)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B4C95B30(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A68D8, &qword_1B4D1ABF0);
    v3 = sub_1B4D18AEC();
    v4 = (a1 + 32);

    for (i = v1 - 1; ; --i)
    {
      v6 = v4[1];
      v17[0] = *v4;
      v17[1] = v6;
      v7 = v4[3];
      v18 = v4[2];
      v19 = v7;
      v8 = *(&v7 + 1);
      v20 = v17[0];
      v21 = v6;
      v22 = v18;
      v23 = *(v4 + 6);
      sub_1B4974FBC(v17, &v16, &qword_1EB8ADBD8, &qword_1B4D44D18);
      result = sub_1B49EA514(&v20);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = v3[6] + 56 * result;
      v12 = v21;
      *v11 = v20;
      *(v11 + 16) = v12;
      *(v11 + 32) = v22;
      *(v11 + 48) = v23;
      *(v3[7] + 8 * result) = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_11;
      }

      v3[2] = v15;
      if (!i)
      {

        return v3;
      }

      v4 += 4;
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B4C95C90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A68D0, &qword_1B4D1ABE8);
    v3 = sub_1B4D18AEC();
    v4 = (a1 + 32);

    while (1)
    {
      v5 = *v4;
      v6 = v4[1];
      v7 = v4[2];
      v8 = *(v4 + 1);

      result = sub_1B49EA598(v5 | (v6 << 8) | (v7 << 16));
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 3 * result);
      *v11 = v5;
      v11[1] = v6;
      v11[2] = v7;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      v4 += 16;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B4C95DAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADBB8, &qword_1B4D44CF8);
    v3 = sub_1B4D18AEC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B4974FBC(v4, &v11, &qword_1EB8ABC98, &qword_1B4D38660);
      v5 = v11;
      result = sub_1B49EA618(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1B498B060(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *sub_1B4C95EE8(void *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = a1[2];
  if (!v3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v5 = sub_1B4D18AEC();
  v6 = a1[4];
  v7 = a1[5];
  v8 = sub_1B49EF0C0(v6);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v5;
  }

  v10 = v8;
  result = v7;
  v12 = a1 + 7;
  while (1)
  {
    *(v5 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    *(v5[6] + 8 * v10) = v6;
    *(v5[7] + 8 * v10) = result;
    v13 = v5[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v5[2] = v15;
    if (!--v3)
    {
      goto LABEL_8;
    }

    v16 = v12 + 2;
    v6 = *(v12 - 1);
    v17 = *v12;

    v10 = sub_1B49EF0C0(v6);
    v12 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1B4C95FE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAF60, &qword_1B4D325F0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADC10, &qword_1B4D44D50);
    v8 = sub_1B4D18AEC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1B4974FBC(v10, v6, &qword_1EB8AAF60, &qword_1B4D325F0);
      result = sub_1B49EA69C(*v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = *v6;
      v15 = v8[7];
      Descriptor = type metadata accessor for FitnessContextQueryDescriptor();
      result = sub_1B4C99A00(&v6[v9], v15 + *(*(Descriptor - 8) + 72) * v14, type metadata accessor for FitnessContextQueryDescriptor);
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B4C961CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD648, &unk_1B4D42040);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v19 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADB98, &qword_1B4D44CD8);
    v8 = sub_1B4D18AEC();
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1B4974FBC(v9, v6, &qword_1EB8AD648, &unk_1B4D42040);
      result = sub_1B49EEDA8();
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v8 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v14 = *(v8 + 56);
      Descriptor = type metadata accessor for FitnessContextQueryDescriptor();
      result = sub_1B4C99A00(v6, v14 + *(*(Descriptor - 8) + 72) * v13, type metadata accessor for FitnessContextQueryDescriptor);
      v16 = *(v8 + 16);
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      *(v8 + 16) = v18;
      v9 += v10;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B4C96394(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA5D8, &qword_1B4D2F408);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADB70, &qword_1B4D44CB0);
    v8 = sub_1B4D18AEC();
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      v11 = sub_1B4974FBC(v9, v6, &qword_1EB8AA5D8, &qword_1B4D2F408);
      result = sub_1B49EF0B8(v11);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v15 = *(v8 + 56);
      Descriptor = type metadata accessor for FitnessContextQueryDescriptor();
      result = sub_1B4C99A00(v6, v15 + *(*(Descriptor - 8) + 72) * v14, type metadata accessor for FitnessContextQueryDescriptor);
      v17 = *(v8 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      *(v8 + 16) = v19;
      v9 += v10;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B4C9655C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD558, &unk_1B4D419D0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADCA8, &qword_1B4D44DE8);
    v8 = sub_1B4D18AEC();
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      v11 = sub_1B4974FBC(v9, v6, &qword_1EB8AD558, &unk_1B4D419D0);
      result = sub_1B49EF0B8(v11);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v15 = *(v8 + 56);
      Descriptor = type metadata accessor for FitnessContextQueryDescriptor();
      result = sub_1B4C99A00(v6, v15 + *(*(Descriptor - 8) + 72) * v14, type metadata accessor for FitnessContextQueryDescriptor);
      v17 = *(v8 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      *(v8 + 16) = v19;
      v9 += v10;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B4C96724(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADC18, &qword_1B4D44D58);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v19 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADC20, &qword_1B4D44D60);
    v8 = sub_1B4D18AEC();
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1B4974FBC(v9, v6, &qword_1EB8ADC18, &qword_1B4D44D58);
      result = sub_1B49EF0B4();
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v8 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v14 = *(v8 + 56);
      Descriptor = type metadata accessor for FitnessContextQueryDescriptor();
      result = sub_1B4C99A00(v6, v14 + *(*(Descriptor - 8) + 72) * v13, type metadata accessor for FitnessContextQueryDescriptor);
      v16 = *(v8 + 16);
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      *(v8 + 16) = v18;
      v9 += v10;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B4C968EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8EB8, &qword_1B4D25A68);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADCD0, &qword_1B4D44E08);
    v8 = sub_1B4D18AEC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1B4974FBC(v10, v6, &qword_1EB8A8EB8, &qword_1B4D25A68);
      v12 = *v6;
      result = sub_1B49EA7A0(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      Descriptor = type metadata accessor for FitnessContextQueryDescriptor();
      result = sub_1B4C99A00(&v6[v9], v16 + *(*(Descriptor - 8) + 72) * v15, type metadata accessor for FitnessContextQueryDescriptor);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B4C96AD0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABD20, &unk_1B4D388B0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADBA8, &qword_1B4D44CE8);
    v8 = sub_1B4D18AEC();
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      v11 = sub_1B4974FBC(v9, v6, &qword_1EB8ABD20, &unk_1B4D388B0);
      result = sub_1B49EF0B8(v11);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v15 = *(v8 + 56);
      Descriptor = type metadata accessor for FitnessContextQueryDescriptor();
      result = sub_1B4C99A00(v6, v15 + *(*(Descriptor - 8) + 72) * v14, type metadata accessor for FitnessContextQueryDescriptor);
      v17 = *(v8 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      *(v8 + 16) = v19;
      v9 += v10;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B4C96C98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADCC0, &qword_1B4D47930);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v19 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADCC8, &qword_1B4D44E00);
    v8 = sub_1B4D18AEC();
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1B4974FBC(v9, v6, &qword_1EB8ADCC0, &qword_1B4D47930);
      result = sub_1B49EEE34();
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v8 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v14 = *(v8 + 56);
      Descriptor = type metadata accessor for FitnessContextQueryDescriptor();
      result = sub_1B4C99A00(v6, v14 + *(*(Descriptor - 8) + 72) * v13, type metadata accessor for FitnessContextQueryDescriptor);
      v16 = *(v8 + 16);
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      *(v8 + 16) = v18;
      v9 += v10;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B4C96E60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AC4F0, &qword_1B4D3C6C0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADCB0, &qword_1B4D44DF0);
    v8 = sub_1B4D18AEC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1B4974FBC(v10, v6, &qword_1EB8AC4F0, &qword_1B4D3C6C0);
      v12 = *v6;
      result = sub_1B49EA874(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      Descriptor = type metadata accessor for FitnessContextQueryDescriptor();
      result = sub_1B4C99A00(&v6[v9], v16 + *(*(Descriptor - 8) + 72) * v15, type metadata accessor for FitnessContextQueryDescriptor);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B4C97044(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AD228, &unk_1B4D40278);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v19 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADC98, &qword_1B4D44DD8);
    v8 = sub_1B4D18AEC();
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1B4974FBC(v9, v6, &qword_1EB8AD228, &unk_1B4D40278);
      result = sub_1B49EEE9C();
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v8 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v14 = *(v8 + 56);
      Descriptor = type metadata accessor for FitnessContextQueryDescriptor();
      result = sub_1B4C99A00(v6, v14 + *(*(Descriptor - 8) + 72) * v13, type metadata accessor for FitnessContextQueryDescriptor);
      v16 = *(v8 + 16);
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      *(v8 + 16) = v18;
      v9 += v10;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B4C9720C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABE20, &qword_1B4D39078);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADCB8, &qword_1B4D44DF8);
    v8 = sub_1B4D18AEC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1B4974FBC(v10, v6, &qword_1EB8ABE20, &qword_1B4D39078);
      v12 = *v6;
      result = sub_1B49EA90C(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      Descriptor = type metadata accessor for FitnessContextQueryDescriptor();
      result = sub_1B4C99A00(&v6[v9], v16 + *(*(Descriptor - 8) + 72) * v15, type metadata accessor for FitnessContextQueryDescriptor);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B4C973F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADB88, &qword_1B4D44CC8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v19 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADB90, &qword_1B4D44CD0);
    v8 = sub_1B4D18AEC();
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1B4974FBC(v9, v6, &qword_1EB8ADB88, &qword_1B4D44CC8);
      result = sub_1B49EEF04();
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v8 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v14 = *(v8 + 56);
      Descriptor = type metadata accessor for FitnessContextQueryDescriptor();
      result = sub_1B4C99A00(v6, v14 + *(*(Descriptor - 8) + 72) * v13, type metadata accessor for FitnessContextQueryDescriptor);
      v16 = *(v8 + 16);
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      *(v8 + 16) = v18;
      v9 += v10;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B4C975B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA5A8, &unk_1B4D2F380);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADCA0, &qword_1B4D44DE0);
    v8 = sub_1B4D18AEC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1B4974FBC(v10, v6, &qword_1EB8AA5A8, &unk_1B4D2F380);
      v12 = *v6;
      result = sub_1B49EA9AC(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      Descriptor = type metadata accessor for FitnessContextQueryDescriptor();
      result = sub_1B4C99A00(&v6[v9], v16 + *(*(Descriptor - 8) + 72) * v15, type metadata accessor for FitnessContextQueryDescriptor);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B4C9779C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB1B0, &unk_1B4D364C0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADBE0, &qword_1B4D44D20);
    v8 = sub_1B4D18AEC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1B4974FBC(v10, v6, &qword_1EB8AB1B0, &unk_1B4D364C0);
      result = sub_1B49EF0C4(*v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = *v6;
      v15 = v8[7];
      Descriptor = type metadata accessor for FitnessContextQueryDescriptor();
      result = sub_1B4C99A00(&v6[v9], v15 + *(*(Descriptor - 8) + 72) * v14, type metadata accessor for FitnessContextQueryDescriptor);
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B4C97980(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABFD0, &qword_1B4D39840);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADBD0, &qword_1B4D44D10);
    v8 = sub_1B4D18AEC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1B4974FBC(v10, v6, &qword_1EB8ABFD0, &qword_1B4D39840);
      result = sub_1B49EF0C4(*v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = *v6;
      v15 = v8[7];
      Descriptor = type metadata accessor for FitnessContextQueryDescriptor();
      result = sub_1B4C99A00(&v6[v9], v15 + *(*(Descriptor - 8) + 72) * v14, type metadata accessor for FitnessContextQueryDescriptor);
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B4C97B64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABCC8, &unk_1B4D38758);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADBB0, &qword_1B4D44CF0);
    v8 = sub_1B4D18AEC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1B4974FBC(v10, v6, &qword_1EB8ABCC8, &unk_1B4D38758);
      result = sub_1B49EAAF0(*v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = *v6;
      v15 = v8[7];
      Descriptor = type metadata accessor for FitnessContextQueryDescriptor();
      result = sub_1B4C99A00(&v6[v9], v15 + *(*(Descriptor - 8) + 72) * v14, type metadata accessor for FitnessContextQueryDescriptor);
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B4C97D48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADC28, &qword_1B4D44D68);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v19 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADC30, &qword_1B4D44D70);
    v8 = sub_1B4D18AEC();
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1B4974FBC(v9, v6, &qword_1EB8ADC28, &qword_1B4D44D68);
      result = sub_1B49EF0B4();
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v8 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v14 = *(v8 + 56);
      Descriptor = type metadata accessor for FitnessContextQueryDescriptor();
      result = sub_1B4C99A00(v6, v14 + *(*(Descriptor - 8) + 72) * v13, type metadata accessor for FitnessContextQueryDescriptor);
      v16 = *(v8 + 16);
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      *(v8 + 16) = v18;
      v9 += v10;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B4C97F10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADBC0, &qword_1B4D44D00);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v19 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADBC8, &qword_1B4D44D08);
    v8 = sub_1B4D18AEC();
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1B4974FBC(v9, v6, &qword_1EB8ADBC0, &qword_1B4D44D00);
      result = sub_1B49EF0B4();
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v8 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v14 = *(v8 + 56);
      Descriptor = type metadata accessor for FitnessContextQueryDescriptor();
      result = sub_1B4C99A00(v6, v14 + *(*(Descriptor - 8) + 72) * v13, type metadata accessor for FitnessContextQueryDescriptor);
      v16 = *(v8 + 16);
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      *(v8 + 16) = v18;
      v9 += v10;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B4C980D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADB60, &qword_1B4D44CA0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v19 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADB68, &qword_1B4D44CA8);
    v8 = sub_1B4D18AEC();
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1B4974FBC(v9, v6, &qword_1EB8ADB60, &qword_1B4D44CA0);
      result = sub_1B49EF0B4();
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v8 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v14 = *(v8 + 56);
      Descriptor = type metadata accessor for FitnessContextQueryDescriptor();
      result = sub_1B4C99A00(v6, v14 + *(*(Descriptor - 8) + 72) * v13, type metadata accessor for FitnessContextQueryDescriptor);
      v16 = *(v8 + 16);
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      *(v8 + 16) = v18;
      v9 += v10;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B4C982A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB8ABE40, &qword_1B4D390F8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADBA0, &qword_1B4D44CE0);
    v8 = sub_1B4D18AEC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1B4974FBC(v10, v6, qword_1EB8ABE40, &qword_1B4D390F8);
      result = sub_1B49EF0C4(*v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = *v6;
      v15 = v8[7];
      Descriptor = type metadata accessor for FitnessContextQueryDescriptor();
      result = sub_1B4C99A00(&v6[v9], v15 + *(*(Descriptor - 8) + 72) * v14, type metadata accessor for FitnessContextQueryDescriptor);
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B4C98484(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6910, &qword_1B4D1AC28);
    v3 = sub_1B4D18AEC();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1B49EF0C0(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B4C98560(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A68E8, &unk_1B4D1AC00);
    v3 = sub_1B4D18AEC();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;

      result = sub_1B49E9F3C(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B4C9864C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6878, &unk_1B4D1AB90);
    v3 = sub_1B4D18AEC();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1B49EF0B0(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B4C98750(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = sub_1B4D18AEC();

    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *(i - 8);
      v10 = *i;

      result = a4(v9);
      if (v12)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v9;
      *(v7[7] + 8 * result) = v10;
      v13 = v7[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v7[2] = v15;
      if (!--v4)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B4C98844(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADB78, &qword_1B4D44CB8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v19 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADB80, &qword_1B4D44CC0);
    v8 = sub_1B4D18AEC();
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1B4974FBC(v9, v6, &qword_1EB8ADB78, &qword_1B4D44CB8);
      result = sub_1B49EF0B4();
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v8 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v14 = *(v8 + 56);
      Descriptor = type metadata accessor for FitnessContextQueryDescriptor();
      result = sub_1B4C99A00(v6, v14 + *(*(Descriptor - 8) + 72) * v13, type metadata accessor for FitnessContextQueryDescriptor);
      v16 = *(v8 + 16);
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      *(v8 + 16) = v18;
      v9 += v10;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1B4C98A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC8, &unk_1B4D464B0) - 8) + 64) + 15;
  v3[4] = swift_task_alloc();
  v3[5] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA0, &unk_1B4D1BBE0) - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA8, &unk_1B4D1C2B0) - 8) + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6790, &qword_1B4D1BBC0) - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v3[9] = v8;
  v9 = *(v8 - 8);
  v3[10] = v9;
  v10 = *(v9 + 64) + 15;
  v3[11] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CB0, &unk_1B4D1BBF0) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00) - 8) + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v13 = type metadata accessor for WorkoutSplit();
  v3[15] = v13;
  v14 = *(v13 - 8);
  v3[16] = v14;
  v15 = *(v14 + 64) + 15;
  v3[17] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A98, &unk_1B4D1CBE0) - 8) + 64) + 15;
  v3[18] = swift_task_alloc();
  v17 = type metadata accessor for WorkoutState();
  v3[19] = v17;
  v18 = *(v17 - 8);
  v3[20] = v18;
  v19 = *(v18 + 64) + 15;
  v3[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4C98D30, 0, 0);
}

uint64_t sub_1B4C98D30()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  sub_1B4974FBC(v0[3], v3, &qword_1EB8A6A98, &unk_1B4D1CBE0);
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    v4 = v0[21];
    sub_1B4C99A00(v0[18], v4, type metadata accessor for WorkoutState);
    v5 = sub_1B4CAC70C(v4);
    v6 = 0;
    v7 = *(v5 + 2);
    do
    {
      v8 = v6;
      if (v7 == v6)
      {
        break;
      }

      ++v6;
    }

    while (*&v5[8 * v8 + 32] != 1);
    v9 = 0;
    do
    {
      v10 = v9;
      if (v7 == v9)
      {
        break;
      }

      ++v9;
    }

    while (*&v5[8 * v10 + 32] != 8);
    v11 = 0;
    do
    {
      v12 = v11;
      if (v7 == v11)
      {
        break;
      }

      ++v11;
    }

    while (*&v5[8 * v12 + 32] != 2);
    v13 = 0;
    do
    {
      v14 = v13;
      if (v7 == v13)
      {
        break;
      }

      ++v13;
    }

    while (*&v5[8 * v14 + 32] != 10);
    v15 = 0;
    while (v7 != v15)
    {
      v16 = &v5[8 * v15++];
      if (*(v16 + 4) == 12)
      {
        v17 = v5;
        v18 = [*(v0[21] + *(v0[19] + 24)) effectiveTypeIdentifier];
        v5 = v17;
        v96 = v18 == 13;
        v19 = *(v17 + 2);
        goto LABEL_20;
      }
    }

    v96 = 0;
    v19 = *(v5 + 2);
LABEL_20:
    v20 = 32;
    do
    {
      v21 = v19;
      if (!v19)
      {
        break;
      }

      v22 = *&v5[v20];
      v20 += 8;
      --v19;
    }

    while (v22 != 5);
    v23 = v0[21];
    v24 = v0[19];
    v25 = v0[2];

    v94 = *(v23 + *(v24 + 24));
    v26 = [v25 userDistanceHKUnitForActivityType_];
    sub_1B498AFB8(0, &qword_1EB8A7560, 0x1E69E58C0);
    v27 = [objc_opt_self() mileUnit];
    LOBYTE(v25) = sub_1B4D187AC();

    v28 = objc_opt_self();
    v29 = &selRef_miles;
    if ((v25 & 1) == 0)
    {
      v29 = &selRef_kilometers;
    }

    v30 = [v28 *v29];

    v101 = v30;
    v31 = sub_1B4B95894(v30);
    if (v31[2] < 2uLL)
    {

      v99 = 0;
    }

    else
    {
      v32 = v0[17];
      v33 = v0[15];
      v34 = *(v0[16] + 80);
      sub_1B49E4B98(v31 + ((v34 + 32) & ~v34), v32);

      v99 = *(v32 + *(v33 + 48));
      sub_1B4B99808(v32, type metadata accessor for WorkoutSplit);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADC70, &qword_1B4D44DB0);
    v98 = type metadata accessor for WorkoutMetricsFact();
    v35 = *(*(v98 - 1) + 72);
    v92 = (*(*(v98 - 1) + 80) + 32) & ~*(*(v98 - 1) + 80);
    v103 = swift_allocObject();
    *(v103 + 16) = xmmword_1B4D1A800;
    if (v7 == v8)
    {
      v36 = v0[14];
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
      (*(*(v37 - 8) + 56))(v36, 1, 1, v37);
      if (v7 != v10)
      {
LABEL_30:
        sub_1B4974FBC(v0[21] + *(v0[19] + 68), v0[12], &qword_1EB8A6CB0, &unk_1B4D1BBF0);
        goto LABEL_33;
      }
    }

    else
    {
      sub_1B4974FBC(v0[21] + *(v0[19] + 60), v0[14], &qword_1EB8A6CC0, &unk_1B4D1BC00);
      if (v7 != v10)
      {
        goto LABEL_30;
      }
    }

    v38 = v0[12];
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
    (*(*(v39 - 8) + 56))(v38, 1, 1, v39);
LABEL_33:
    v40 = v0[21];
    v41 = v0[19];
    v42 = v0[11];
    v43 = v0[8];
    v44 = *(v40 + *(v41 + 48));
    v45 = objc_opt_self();
    v95 = v94;
    v46 = [v45 seconds];
    sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
    sub_1B4D1741C();
    sub_1B4974FBC(v40 + *(v41 + 44), v43, &qword_1EB8A6790, &qword_1B4D1BBC0);
    v47 = sub_1B4D1777C();
    v48 = (*(*(v47 - 8) + 48))(v43, 1, v47);
    sub_1B4975024(v43, &qword_1EB8A6790, &qword_1B4D1BBC0);
    if (v7 == v12)
    {
      v49 = v0[7];
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
      (*(*(v50 - 8) + 56))(v49, 1, 1, v50);
      if (v7 != v14)
      {
        goto LABEL_35;
      }
    }

    else
    {
      sub_1B4974FBC(v0[21] + *(v0[19] + 72), v0[7], &qword_1EB8A6CA8, &unk_1B4D1C2B0);
      if (v7 != v14)
      {
LABEL_35:
        sub_1B4974FBC(v0[21] + *(v0[19] + 104), v0[13], &qword_1EB8A6CC0, &unk_1B4D1BC00);
        if (!v96)
        {
LABEL_36:
          v51 = v0[6];
          v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CE0, &unk_1B4D1EF00);
          (*(*(v52 - 8) + 56))(v51, 1, 1, v52);
LABEL_40:
          v55 = (v103 + v92);
          if (v21)
          {
            v56 = v0[21];
            v57 = v0[19];
            v58 = v0[4];
            sub_1B4974FBC(v56 + *(v57 + 80), v0[5], &qword_1EB8A6CC8, &unk_1B4D464B0);
            sub_1B4974FBC(v56 + *(v57 + 92), v58, &qword_1EB8A6CC8, &unk_1B4D464B0);
          }

          else
          {
            v60 = v0[4];
            v59 = v0[5];
            v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD0, &unk_1B4D1F270);
            (*(*(v61 - 8) + 56))(v59, 1, 1, v61);
            v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD0, &unk_1B4D1F270);
            (*(*(v62 - 8) + 56))(v60, 1, 1, v62);
          }

          v63 = v0[21];
          v64 = sub_1B4C927EC();
          v65 = v64;
          if (v64)
          {
            [v64 _value];
            v67 = v66;
          }

          else
          {
            v67 = 0;
          }

          v97 = v0[21];
          v93 = v65 == 0;
          v68 = v48 != 1;
          v70 = v0[13];
          v69 = v0[14];
          v72 = v0[11];
          v71 = v0[12];
          v73 = v0[9];
          v74 = v0[10];
          v75 = v0[7];
          v89 = v0[6];
          v90 = v0[5];
          v91 = v0[4];
          *v55 = v95;
          sub_1B498B270(v69, &v55[v98[5]], &qword_1EB8A6CC0, &unk_1B4D1BC00);
          sub_1B498B270(v71, &v55[v98[6]], &qword_1EB8A6CB0, &unk_1B4D1BBF0);
          (*(v74 + 32))(&v55[v98[7]], v72, v73);
          v55[v98[8]] = v68;
          sub_1B498B270(v75, &v55[v98[9]], &qword_1EB8A6CA8, &unk_1B4D1C2B0);
          sub_1B498B270(v70, &v55[v98[10]], &qword_1EB8A6CC0, &unk_1B4D1BC00);
          sub_1B498B270(v89, &v55[v98[11]], &qword_1EB8A6CA0, &unk_1B4D1BBE0);
          sub_1B498B270(v90, &v55[v98[12]], &qword_1EB8A6CC8, &unk_1B4D464B0);
          sub_1B498B270(v91, &v55[v98[13]], &qword_1EB8A6CC8, &unk_1B4D464B0);
          v76 = &v55[v98[14]];
          *v76 = v67;
          v76[8] = v93;
          v55[v98[15]] = v99;

          sub_1B4B99808(v97, type metadata accessor for WorkoutState);
          goto LABEL_47;
        }

LABEL_39:
        sub_1B4974FBC(v0[21] + *(v0[19] + 100), v0[6], &qword_1EB8A6CA0, &unk_1B4D1BBE0);
        goto LABEL_40;
      }
    }

    v53 = v0[13];
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
    (*(*(v54 - 8) + 56))(v53, 1, 1, v54);
    if (!v96)
    {
      goto LABEL_36;
    }

    goto LABEL_39;
  }

  sub_1B4975024(v0[18], &qword_1EB8A6A98, &unk_1B4D1CBE0);
  v103 = MEMORY[0x1E69E7CC0];
LABEL_47:
  v77 = v0[21];
  v78 = v0[17];
  v79 = v0[18];
  v81 = v0[13];
  v80 = v0[14];
  v83 = v0[11];
  v82 = v0[12];
  v85 = v0[7];
  v84 = v0[8];
  v86 = v0[6];
  v100 = v0[5];
  v102 = v0[4];

  v87 = v0[1];

  return v87(v103);
}

unint64_t sub_1B4C99818()
{
  result = qword_1EB8ADB30;
  if (!qword_1EB8ADB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADB30);
  }

  return result;
}

unint64_t sub_1B4C9986C(uint64_t a1)
{
  *(a1 + 8) = sub_1B4C9989C();
  result = sub_1B4C998F0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B4C9989C()
{
  result = qword_1EB8ADB38;
  if (!qword_1EB8ADB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADB38);
  }

  return result;
}

unint64_t sub_1B4C998F0()
{
  result = qword_1EB8ADB40;
  if (!qword_1EB8ADB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADB40);
  }

  return result;
}

uint64_t sub_1B4C99944(uint64_t a1)
{
  *(a1 + 8) = sub_1B4C999AC(&qword_1EB8ADB48);
  result = sub_1B4C999AC(&qword_1EB8ADB50);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B4C999AC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WorkoutMetricsFact();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B4C99A00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t static RingsPropertySerialization.from(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v307 = a1;
  v305 = a2;
  v2 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v300 = &v286 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v301 = &v286 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v298 = &v286 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v299 = &v286 - v10;
  v11 = type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v296 = (&v286 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v297 = &v286 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v294 = (&v286 - v17);
  MEMORY[0x1EEE9AC00](v18);
  v295 = &v286 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v292 = (&v286 - v21);
  MEMORY[0x1EEE9AC00](v22);
  v293 = &v286 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v290 = (&v286 - v25);
  MEMORY[0x1EEE9AC00](v26);
  v291 = &v286 - v27;
  v28 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v302 = (&v286 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v303 = (&v286 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v34);
  v304 = &v286 - v35;
  v36 = type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue(0);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v288 = (&v286 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v39);
  v289 = &v286 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v43 = (&v286 - v42);
  MEMORY[0x1EEE9AC00](v44);
  v287 = &v286 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v48 = (&v286 - v47);
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v286 - v50;
  MEMORY[0x1EEE9AC00](v52);
  v54 = (&v286 - v53);
  MEMORY[0x1EEE9AC00](v55);
  v57 = &v286 - v56;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v59 = *(*(v58 - 8) + 64);
  MEMORY[0x1EEE9AC00](v58 - 8);
  v61 = &v286 - v60;
  sub_1B4974FBC(v307, &v286 - v60, &qword_1EB8A9A50, &qword_1B4D29F70);
  v62 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  if ((*(*(v62 - 8) + 48))(v61, 1, v62) == 1)
  {
    sub_1B4C9BB70();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_1B4CA3874(v61, v51, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
        sub_1B4CA380C(v51, v48, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
        v175 = v306;
        StreakPropertyValue.init(_:)(v48, v310);
        result = sub_1B4CA38DC(v51, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
        if (!v175)
        {
          v176 = v305;
          v305[3] = &type metadata for ExerciseStreakProperty;
          v176[4] = sub_1B4CA279C();
          result = swift_allocObject();
          *v176 = result;
          v177 = v310[7];
          *(result + 112) = v310[6];
          *(result + 128) = v177;
          *(result + 144) = v311;
          v178 = v310[3];
          *(result + 48) = v310[2];
          *(result + 64) = v178;
          v179 = v310[5];
          *(result + 80) = v310[4];
          *(result + 96) = v179;
          v70 = v310[0];
          v69 = v310[1];
          goto LABEL_23;
        }

        return result;
      case 2u:
        v132 = v287;
        sub_1B4CA3874(v61, v287, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
        sub_1B4CA380C(v132, v43, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
        v133 = v306;
        StreakPropertyValue.init(_:)(v43, v312);
        result = sub_1B4CA38DC(v132, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
        if (!v133)
        {
          v134 = v305;
          v305[3] = &type metadata for StandStreakProperty;
          v134[4] = sub_1B4CA2748();
          result = swift_allocObject();
          *v134 = result;
          v135 = v312[7];
          *(result + 112) = v312[6];
          *(result + 128) = v135;
          *(result + 144) = v313;
          v136 = v312[3];
          *(result + 48) = v312[2];
          *(result + 64) = v136;
          v137 = v312[5];
          *(result + 80) = v312[4];
          *(result + 96) = v137;
          v70 = v312[0];
          v69 = v312[1];
          goto LABEL_23;
        }

        return result;
      case 3u:
        v153 = v289;
        sub_1B4CA3874(v61, v289, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
        v154 = v288;
        sub_1B4CA380C(v153, v288, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
        v155 = v306;
        StreakPropertyValue.init(_:)(v154, v314);
        result = sub_1B4CA38DC(v153, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
        if (!v155)
        {
          v156 = v305;
          v305[3] = &type metadata for AllThreeRingStreakProperty;
          v156[4] = sub_1B4CA26F4();
          result = swift_allocObject();
          *v156 = result;
          v157 = v314[7];
          *(result + 112) = v314[6];
          *(result + 128) = v157;
          *(result + 144) = v315;
          v158 = v314[3];
          *(result + 48) = v314[2];
          *(result + 64) = v158;
          v159 = v314[5];
          *(result + 80) = v314[4];
          *(result + 96) = v159;
          v70 = v314[0];
          v69 = v314[1];
          goto LABEL_23;
        }

        return result;
      case 4u:
        v71 = v304;
        sub_1B4CA3874(v61, v304, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v72 = v303;
        sub_1B4CA380C(v71, v303, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v307 = v72[1];
        v95 = *v72;
        sub_1B498AFB8(0, &qword_1EDC378C8, 0x1E696B030);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v97 = [ObjCClassFromMetadata baseUnit];
        v98 = type metadata accessor for MoveRingStatisticsProperty(0);
        v99 = v305;
        v305[3] = v98;
        v99[4] = sub_1B4CA3240(&qword_1EDC38BB8, type metadata accessor for MoveRingStatisticsProperty);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v99);
        sub_1B4D1741C();
        v100 = v72[3];
        v101 = [ObjCClassFromMetadata baseUnit];
        v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D68, &qword_1B4D208D0);
        v102 = boxed_opaque_existential_1 + v81[8];
        sub_1B4D1741C();
        v103 = v72[4];
        v104 = [ObjCClassFromMetadata baseUnit];
        v105 = boxed_opaque_existential_1 + v81[9];
        sub_1B4D1741C();
        v106 = v72[2];
        v107 = [ObjCClassFromMetadata baseUnit];
        v108 = boxed_opaque_existential_1 + v81[10];
        sub_1B4D1741C();
        v109 = v72[5];
        v90 = [ObjCClassFromMetadata baseUnit];
        goto LABEL_36;
      case 5u:
        v71 = v304;
        sub_1B4CA3874(v61, v304, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v72 = v303;
        sub_1B4CA380C(v71, v303, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v307 = v72[1];
        v199 = *v72;
        sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
        v200 = swift_getObjCClassFromMetadata();
        v201 = [v200 baseUnit];
        v202 = type metadata accessor for MoveMinutesRingStatisticsProperty(0);
        v203 = v305;
        v305[3] = v202;
        v203[4] = sub_1B4CA3240(&qword_1EDC38170, type metadata accessor for MoveMinutesRingStatisticsProperty);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v203);
        sub_1B4D1741C();
        v204 = v72[3];
        v205 = [v200 baseUnit];
        v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6858, &qword_1B4D1AB70);
        v206 = boxed_opaque_existential_1 + v81[8];
        sub_1B4D1741C();
        v207 = v72[4];
        v208 = [v200 baseUnit];
        v209 = boxed_opaque_existential_1 + v81[9];
        sub_1B4D1741C();
        v210 = v72[2];
        v211 = [v200 baseUnit];
        v212 = boxed_opaque_existential_1 + v81[10];
        sub_1B4D1741C();
        v213 = v72[5];
        v90 = [v200 baseUnit];
        goto LABEL_36;
      case 6u:
        v71 = v304;
        sub_1B4CA3874(v61, v304, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v72 = v303;
        sub_1B4CA380C(v71, v303, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v307 = v72[1];
        v217 = *v72;
        sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
        v218 = swift_getObjCClassFromMetadata();
        v219 = [v218 baseUnit];
        v220 = type metadata accessor for ExerciseRingStatisticsProperty(0);
        v221 = v305;
        v305[3] = v220;
        v221[4] = sub_1B4CA3240(&qword_1EDC38540, type metadata accessor for ExerciseRingStatisticsProperty);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v221);
        sub_1B4D1741C();
        v222 = v72[3];
        v223 = [v218 baseUnit];
        v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6858, &qword_1B4D1AB70);
        v224 = boxed_opaque_existential_1 + v81[8];
        sub_1B4D1741C();
        v225 = v72[4];
        v226 = [v218 baseUnit];
        v227 = boxed_opaque_existential_1 + v81[9];
        sub_1B4D1741C();
        v228 = v72[2];
        v229 = [v218 baseUnit];
        v230 = boxed_opaque_existential_1 + v81[10];
        sub_1B4D1741C();
        v231 = v72[5];
        v90 = [v218 baseUnit];
        goto LABEL_36;
      case 7u:
        v71 = v304;
        sub_1B4CA3874(v61, v304, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v72 = v303;
        sub_1B4CA380C(v71, v303, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v307 = v72[1];
        v160 = *v72;
        type metadata accessor for UnitCount();
        v161 = swift_getObjCClassFromMetadata();
        v162 = [v161 baseUnit];
        v163 = type metadata accessor for StandRingStatisticsProperty(0);
        v164 = v305;
        v305[3] = v163;
        v164[4] = sub_1B4CA3240(&qword_1EDC38998, type metadata accessor for StandRingStatisticsProperty);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v164);
        sub_1B4D1741C();
        v165 = v72[3];
        v166 = [v161 baseUnit];
        v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6928, &qword_1B4D20480);
        v167 = boxed_opaque_existential_1 + v81[8];
        sub_1B4D1741C();
        v168 = v72[4];
        v169 = [v161 baseUnit];
        v170 = boxed_opaque_existential_1 + v81[9];
        sub_1B4D1741C();
        v171 = v72[2];
        v172 = [v161 baseUnit];
        v173 = boxed_opaque_existential_1 + v81[10];
        sub_1B4D1741C();
        v174 = v72[5];
        v90 = [v161 baseUnit];
        goto LABEL_36;
      case 8u:
        v71 = v304;
        sub_1B4CA3874(v61, v304, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v72 = v303;
        sub_1B4CA380C(v71, v303, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v307 = v72[1];
        v262 = *v72;
        type metadata accessor for UnitCount();
        v263 = swift_getObjCClassFromMetadata();
        v264 = [v263 baseUnit];
        v265 = type metadata accessor for StepsStatisticsProperty(0);
        v266 = v305;
        v305[3] = v265;
        v266[4] = sub_1B4CA3240(&qword_1EDC39000, type metadata accessor for StepsStatisticsProperty);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v266);
        sub_1B4D1741C();
        v267 = v72[3];
        v268 = [v263 baseUnit];
        v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6928, &qword_1B4D20480);
        v269 = boxed_opaque_existential_1 + v81[8];
        sub_1B4D1741C();
        v270 = v72[4];
        v271 = [v263 baseUnit];
        v272 = boxed_opaque_existential_1 + v81[9];
        sub_1B4D1741C();
        v273 = v72[2];
        v274 = [v263 baseUnit];
        v275 = boxed_opaque_existential_1 + v81[10];
        sub_1B4D1741C();
        v276 = v72[5];
        v90 = [v263 baseUnit];
        goto LABEL_36;
      case 9u:
        v71 = v304;
        sub_1B4CA3874(v61, v304, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v72 = v303;
        sub_1B4CA380C(v71, v303, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v307 = v72[1];
        v111 = *v72;
        type metadata accessor for UnitCount();
        v112 = swift_getObjCClassFromMetadata();
        v113 = [v112 baseUnit];
        v114 = type metadata accessor for FlightsStatisticsProperty(0);
        v115 = v305;
        v305[3] = v114;
        v115[4] = sub_1B4CA3240(&qword_1EDC38E58, type metadata accessor for FlightsStatisticsProperty);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v115);
        sub_1B4D1741C();
        v116 = v72[3];
        v117 = [v112 baseUnit];
        v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6928, &qword_1B4D20480);
        v118 = boxed_opaque_existential_1 + v81[8];
        sub_1B4D1741C();
        v119 = v72[4];
        v120 = [v112 baseUnit];
        v121 = boxed_opaque_existential_1 + v81[9];
        sub_1B4D1741C();
        v122 = v72[2];
        v123 = [v112 baseUnit];
        v124 = boxed_opaque_existential_1 + v81[10];
        sub_1B4D1741C();
        v125 = v72[5];
        v90 = [v112 baseUnit];
        goto LABEL_36;
      case 0xAu:
        v71 = v304;
        sub_1B4CA3874(v61, v304, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v72 = v303;
        sub_1B4CA380C(v71, v303, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v307 = v72[1];
        v247 = *v72;
        sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
        v248 = swift_getObjCClassFromMetadata();
        v249 = [v248 baseUnit];
        v250 = type metadata accessor for DistanceStatisticsProperty(0);
        v251 = v305;
        v305[3] = v250;
        v251[4] = sub_1B4CA3240(&qword_1EDC38C88, type metadata accessor for DistanceStatisticsProperty);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v251);
        sub_1B4D1741C();
        v252 = v72[3];
        v253 = [v248 baseUnit];
        v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6840, &unk_1B4D20FA0);
        v254 = boxed_opaque_existential_1 + v81[8];
        sub_1B4D1741C();
        v255 = v72[4];
        v256 = [v248 baseUnit];
        v257 = boxed_opaque_existential_1 + v81[9];
        sub_1B4D1741C();
        v258 = v72[2];
        v259 = [v248 baseUnit];
        v260 = boxed_opaque_existential_1 + v81[10];
        sub_1B4D1741C();
        v261 = v72[5];
        v90 = [v248 baseUnit];
        goto LABEL_36;
      case 0xBu:
        v94 = v302;
        sub_1B4CA3874(v61, v302, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
        v92 = *v94;
        sub_1B4CA38DC(v94, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
        v93 = v305;
        v305[3] = &type metadata for MoveGoalAchievedCountProperty;
        result = sub_1B4C9E514();
        goto LABEL_31;
      case 0xCu:
        v110 = v302;
        sub_1B4CA3874(v61, v302, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
        v92 = *v110;
        sub_1B4CA38DC(v110, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
        v93 = v305;
        v305[3] = &type metadata for ExerciseGoalAchievedCountProperty;
        result = sub_1B4C9E4C0();
        goto LABEL_31;
      case 0xDu:
        v216 = v302;
        sub_1B4CA3874(v61, v302, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
        v92 = *v216;
        sub_1B4CA38DC(v216, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
        v93 = v305;
        v305[3] = &type metadata for StandGoalAchievedCountProperty;
        result = sub_1B4C9E46C();
        goto LABEL_31;
      case 0xEu:
        v91 = v302;
        sub_1B4CA3874(v61, v302, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
        v92 = *v91;
        sub_1B4CA38DC(v91, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
        v93 = v305;
        v305[3] = &type metadata for AllThreeRingsGoalAchievedCountProperty;
        result = sub_1B4C9E418();
        goto LABEL_31;
      case 0xFu:
        v71 = v304;
        sub_1B4CA3874(v61, v304, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v72 = v303;
        sub_1B4CA380C(v71, v303, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v307 = v72[1];
        v138 = *v72;
        sub_1B498AFB8(0, &qword_1EDC378C8, 0x1E696B030);
        v139 = swift_getObjCClassFromMetadata();
        v140 = [v139 baseUnit];
        v141 = type metadata accessor for MoveGoalDeltaProperty(0);
        v142 = v305;
        v305[3] = v141;
        v142[4] = sub_1B4CA3240(&qword_1EDC39498, type metadata accessor for MoveGoalDeltaProperty);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v142);
        sub_1B4D1741C();
        v143 = v72[3];
        v144 = [v139 baseUnit];
        v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D68, &qword_1B4D208D0);
        v145 = boxed_opaque_existential_1 + v81[8];
        sub_1B4D1741C();
        v146 = v72[4];
        v147 = [v139 baseUnit];
        v148 = boxed_opaque_existential_1 + v81[9];
        sub_1B4D1741C();
        v149 = v72[2];
        v150 = [v139 baseUnit];
        v151 = boxed_opaque_existential_1 + v81[10];
        sub_1B4D1741C();
        v152 = v72[5];
        v90 = [v139 baseUnit];
        goto LABEL_36;
      case 0x10u:
        v71 = v304;
        sub_1B4CA3874(v61, v304, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v72 = v303;
        sub_1B4CA380C(v71, v303, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v307 = v72[1];
        v73 = *v72;
        sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
        v74 = swift_getObjCClassFromMetadata();
        v75 = [v74 baseUnit];
        v76 = type metadata accessor for MoveMinutesGoalDeltaProperty(0);
        v77 = v305;
        v305[3] = v76;
        v77[4] = sub_1B4CA3240(&qword_1EDC38808, type metadata accessor for MoveMinutesGoalDeltaProperty);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v77);
        sub_1B4D1741C();
        v79 = v72[3];
        v80 = [v74 baseUnit];
        v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6858, &qword_1B4D1AB70);
        v82 = boxed_opaque_existential_1 + v81[8];
        sub_1B4D1741C();
        v83 = v72[4];
        v84 = [v74 baseUnit];
        v85 = boxed_opaque_existential_1 + v81[9];
        sub_1B4D1741C();
        v86 = v72[2];
        v87 = [v74 baseUnit];
        v88 = boxed_opaque_existential_1 + v81[10];
        sub_1B4D1741C();
        v89 = v72[5];
        v90 = [v74 baseUnit];
        goto LABEL_36;
      case 0x11u:
        v71 = v304;
        sub_1B4CA3874(v61, v304, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v72 = v303;
        sub_1B4CA380C(v71, v303, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v307 = v72[1];
        v180 = *v72;
        sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
        v181 = swift_getObjCClassFromMetadata();
        v182 = [v181 baseUnit];
        v183 = type metadata accessor for ExerciseGoalDeltaProperty(0);
        v184 = v305;
        v305[3] = v183;
        v184[4] = sub_1B4CA3240(&qword_1EDC38F28, type metadata accessor for ExerciseGoalDeltaProperty);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v184);
        sub_1B4D1741C();
        v185 = v72[3];
        v186 = [v181 baseUnit];
        v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6858, &qword_1B4D1AB70);
        v187 = boxed_opaque_existential_1 + v81[8];
        sub_1B4D1741C();
        v188 = v72[4];
        v189 = [v181 baseUnit];
        v190 = boxed_opaque_existential_1 + v81[9];
        sub_1B4D1741C();
        v191 = v72[2];
        v192 = [v181 baseUnit];
        v193 = boxed_opaque_existential_1 + v81[10];
        sub_1B4D1741C();
        v194 = v72[5];
        v90 = [v181 baseUnit];
        goto LABEL_36;
      case 0x12u:
        v71 = v304;
        sub_1B4CA3874(v61, v304, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v72 = v303;
        sub_1B4CA380C(v71, v303, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        v307 = v72[1];
        v232 = *v72;
        type metadata accessor for UnitCount();
        v233 = swift_getObjCClassFromMetadata();
        v234 = [v233 baseUnit];
        v235 = type metadata accessor for StandGoalDeltaProperty(0);
        v236 = v305;
        v305[3] = v235;
        v236[4] = sub_1B4CA3240(&qword_1EDC39200, type metadata accessor for StandGoalDeltaProperty);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v236);
        sub_1B4D1741C();
        v237 = v72[3];
        v238 = [v233 baseUnit];
        v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6928, &qword_1B4D20480);
        v239 = boxed_opaque_existential_1 + v81[8];
        sub_1B4D1741C();
        v240 = v72[4];
        v241 = [v233 baseUnit];
        v242 = boxed_opaque_existential_1 + v81[9];
        sub_1B4D1741C();
        v243 = v72[2];
        v244 = [v233 baseUnit];
        v245 = boxed_opaque_existential_1 + v81[10];
        sub_1B4D1741C();
        v246 = v72[5];
        v90 = [v233 baseUnit];
LABEL_36:
        v277 = v90;
        v278 = boxed_opaque_existential_1 + v81[11];
        sub_1B4D1741C();
        sub_1B4CA38DC(v72, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        result = sub_1B4CA38DC(v71, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
        *(boxed_opaque_existential_1 + v81[7]) = v307;
        return result;
      case 0x13u:
        v127 = v291;
        sub_1B4CA3874(v61, v291, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
        v281 = v290;
        sub_1B4CA380C(v127, v290, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
        v282 = v306;
        RingsMilestonePropertyValue.init(_:)(v281, &v316);
        if (v282)
        {
          goto LABEL_40;
        }

        sub_1B4CA38DC(v127, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
        v197 = v316;
        v198 = v305;
        v305[3] = &type metadata for MoveGoalMilestoneProperty;
        result = sub_1B4C9E3C4();
        goto LABEL_45;
      case 0x14u:
        v127 = v293;
        sub_1B4CA3874(v61, v293, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
        v195 = v292;
        sub_1B4CA380C(v127, v292, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
        v196 = v306;
        RingsMilestonePropertyValue.init(_:)(v195, &v316);
        if (v196)
        {
          goto LABEL_40;
        }

        sub_1B4CA38DC(v127, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
        v197 = v316;
        v198 = v305;
        v305[3] = &type metadata for ExerciseGoalMilestoneProperty;
        result = sub_1B4C9E370();
        goto LABEL_45;
      case 0x15u:
        v127 = v295;
        sub_1B4CA3874(v61, v295, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
        v214 = v294;
        sub_1B4CA380C(v127, v294, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
        v215 = v306;
        RingsMilestonePropertyValue.init(_:)(v214, &v316);
        if (v215)
        {
          goto LABEL_40;
        }

        sub_1B4CA38DC(v127, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
        v197 = v316;
        v198 = v305;
        v305[3] = &type metadata for StandGoalMilestoneProperty;
        result = sub_1B4C9E31C();
        goto LABEL_45;
      case 0x16u:
        v127 = v297;
        sub_1B4CA3874(v61, v297, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
        v279 = v296;
        sub_1B4CA380C(v127, v296, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
        v280 = v306;
        RingsMilestonePropertyValue.init(_:)(v279, &v316);
        if (v280)
        {
LABEL_40:
          v283 = type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue;
          goto LABEL_43;
        }

        sub_1B4CA38DC(v127, type metadata accessor for Apple_Fitness_Intelligence_RingsMilestonePropertyValue);
        v197 = v316;
        v198 = v305;
        v305[3] = &type metadata for AllThreeRingsGoalMilestoneProperty;
        result = sub_1B4C9E2C8();
LABEL_45:
        v198[4] = result;
        *v198 = v197;
        *(v198 + 1) = v317;
        break;
      case 0x17u:
        v127 = v299;
        sub_1B4CA3874(v61, v299, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue);
        v284 = v298;
        sub_1B4CA380C(v127, v298, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue);
        v285 = v306;
        sub_1B4C9CBD8(v284, &v316);
        if (v285)
        {
          goto LABEL_42;
        }

        sub_1B4CA38DC(v127, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue);
        v130 = v316;
        v131 = v305;
        v305[3] = &type metadata for HighestDailyStepCountProperty;
        result = sub_1B4C9E274();
        goto LABEL_47;
      case 0x18u:
        v127 = v301;
        sub_1B4CA3874(v61, v301, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue);
        v128 = v300;
        sub_1B4CA380C(v127, v300, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue);
        v129 = v306;
        sub_1B4C9D6F4(v128, &v316);
        if (v129)
        {
LABEL_42:
          v283 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue;
LABEL_43:
          result = sub_1B4CA38DC(v127, v283);
        }

        else
        {
          sub_1B4CA38DC(v127, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue);
          v130 = v316;
          v131 = v305;
          v305[3] = &type metadata for HighestDailyDistanceProperty;
          result = sub_1B4C9E220();
LABEL_47:
          v131[4] = result;
          *v131 = v130;
        }

        break;
      case 0x19u:
        v126 = v302;
        sub_1B4CA3874(v61, v302, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
        v92 = *v126;
        sub_1B4CA38DC(v126, type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue);
        v93 = v305;
        v305[3] = &type metadata for RingsTotalCountProperty;
        result = sub_1B4C9BBC4();
LABEL_31:
        v93[4] = result;
        *v93 = v92;
        return result;
      default:
        sub_1B4CA3874(v61, v57, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
        sub_1B4CA380C(v57, v54, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
        v64 = v306;
        StreakPropertyValue.init(_:)(v54, v308);
        result = sub_1B4CA38DC(v57, type metadata accessor for Apple_Fitness_Intelligence_StreakPropertyValue);
        if (!v64)
        {
          v65 = v305;
          v305[3] = &type metadata for MoveStreakProperty;
          v65[4] = sub_1B4CA27F0();
          result = swift_allocObject();
          *v65 = result;
          v66 = v308[7];
          *(result + 112) = v308[6];
          *(result + 128) = v66;
          *(result + 144) = v309;
          v67 = v308[3];
          *(result + 48) = v308[2];
          *(result + 64) = v67;
          v68 = v308[5];
          *(result + 80) = v308[4];
          *(result + 96) = v68;
          v70 = v308[0];
          v69 = v308[1];
LABEL_23:
          *(result + 16) = v70;
          *(result + 32) = v69;
        }

        return result;
    }
  }

  return result;
}

unint64_t sub_1B4C9BB70()
{
  result = qword_1EB8ADCD8;
  if (!qword_1EB8ADCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADCD8);
  }

  return result;
}

unint64_t sub_1B4C9BBC4()
{
  result = qword_1EDC390D0;
  if (!qword_1EDC390D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC390D0);
  }

  return result;
}

uint64_t RingsProperty.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_RingsProperty(0);
  sub_1B4CA3240(qword_1EDC3C840, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4C9BD2C()
{
  v8 = v0[6];
  v9 = v0[7];
  v10 = *(v0 + 16);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v2 = *v0;
  v3 = v0[1];
  type metadata accessor for Apple_Fitness_Intelligence_RingsProperty(0);
  sub_1B4CA3240(qword_1EDC3C840, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4C9BEA0()
{
  type metadata accessor for Apple_Fitness_Intelligence_RingsProperty(0);
  sub_1B4CA3240(qword_1EDC3C840, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4C9C078()
{
  v2 = *v0;
  type metadata accessor for Apple_Fitness_Intelligence_RingsProperty(0);
  sub_1B4CA3240(qword_1EDC3C840, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4C9C27C()
{
  v2 = *v0;
  v3 = *(v0 + 1);
  type metadata accessor for Apple_Fitness_Intelligence_RingsProperty(0);
  sub_1B4CA3240(qword_1EDC3C840, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4C9C404(char *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  v22 = *(v5 - 8);
  v6 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = *a2;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A72C8, &unk_1B4D1D780);
  v23 = a2 + *(v14 + 28);
  sub_1B4CA3240(qword_1EDC3C9B0, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  sub_1B4D17DAC();
  v21 = v2;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry(0) + 28);
  sub_1B4975024(&a1[v15], &qword_1EB8A7158, &unk_1B4D20310);
  sub_1B4CA3874(v13, &a1[v15], type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  (*(v10 + 56))(&a1[v15], 0, 1, v9);
  v16 = *(v14 + 32);
  type metadata accessor for UnitCount();
  v17 = [swift_getObjCClassFromMetadata() baseUnit];
  sub_1B4D1745C();

  sub_1B4D1742C();
  v19 = v18;
  result = (*(v22 + 8))(v8, v5);
  *(a1 + 1) = v19;
  return result;
}

uint64_t sub_1B4C9C6B8(char *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v22 = *(v5 - 8);
  v6 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = *a2;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A72C0, &unk_1B4D1D770);
  v23 = a2 + *(v14 + 28);
  sub_1B4CA3240(qword_1EDC3C9B0, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  sub_1B4D17DAC();
  v21 = v2;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry(0) + 28);
  sub_1B4975024(&a1[v15], &qword_1EB8A7158, &unk_1B4D20310);
  sub_1B4CA3874(v13, &a1[v15], type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  (*(v10 + 56))(&a1[v15], 0, 1, v9);
  v16 = *(v14 + 32);
  sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
  v17 = [swift_getObjCClassFromMetadata() baseUnit];
  sub_1B4D1745C();

  sub_1B4D1742C();
  v19 = v18;
  result = (*(v22 + 8))(v8, v5);
  *(a1 + 1) = v19;
  return result;
}

uint64_t sub_1B4C9CB04(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  sub_1B4D1742C();
  *a1 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  a1[1] = *(a2 + v11[7]);
  v12 = a2 + v11[8];
  sub_1B4D1742C();
  a1[3] = v13;
  v14 = a2 + v11[9];
  sub_1B4D1742C();
  a1[4] = v15;
  v16 = a2 + v11[10];
  sub_1B4D1742C();
  a1[2] = v17;
  v18 = a2 + v11[11];
  result = sub_1B4D1742C();
  a1[5] = v20;
  return result;
}

uint64_t sub_1B4C9CBD8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v90 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C20, &unk_1B4D1FBF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v88 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7158, &unk_1B4D20310);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v88 - v10;
  v12 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v109 = *(v12 - 8);
  v13 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for LocalizedDate();
  v16 = *(*(v103 - 8) + 64);
  MEMORY[0x1EEE9AC00](v103);
  v113 = (&v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v102 = &v88 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9B98, &unk_1B4D2B438);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v88 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E30, &unk_1B4D29F60);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v107 = &v88 - v26;
  v106 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry(0);
  v108 = *(v106 - 8);
  v27 = *(v108 + 8);
  MEMORY[0x1EEE9AC00](v106);
  v112 = (&v88 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v29);
  v91 = &v88 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v111 = &v88 - v32;
  v33 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry(0);
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v37 = &v88 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A72C8, &unk_1B4D1D780);
  v100 = *(v38 - 8);
  v101 = v38;
  v39 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v110 = (&v88 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v41);
  v99 = &v88 - v42;
  v43 = *a1;
  v44 = *(*a1 + 16);
  if (v44)
  {
    v88 = v2;
    v89 = a1;
    v116 = MEMORY[0x1E69E7CC0];
    v104 = v44;
    v105 = v43;
    result = sub_1B4BCEEBC(0, v44, 0);
    v46 = 0;
    v47 = v105;
    v96 = v105 + ((*(v34 + 80) + 32) & ~*(v34 + 80));
    v48 = v116;
    v97 = (v108 + 56);
    v92 = (v109 + 48);
    v108 = v11;
    v109 = v12;
    v95 = v23;
    v98 = v37;
    v94 = v34;
    v93 = v7;
    while (v46 < *(v47 + 16))
    {
      sub_1B4CA380C(v96 + *(v34 + 72) * v46, v37, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry);
      v49 = v107;
      sub_1B4974FBC(v37, v107, &qword_1EB8A7E30, &unk_1B4D29F60);
      v50 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry.OneOf_EntryType(0);
      if ((*(*(v50 - 8) + 48))(v49, 1, v50) == 1)
      {
        v114 = 0u;
        v115 = 0u;
        v51 = v106;
      }

      else
      {
        v52 = v49;
        v53 = v91;
        sub_1B4CA3874(v52, v91, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
        v51 = v106;
        *(&v115 + 1) = v106;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v114);
        v11 = v108;
        sub_1B4CA3874(v53, boxed_opaque_existential_1, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DE8, &qword_1B4D1FC10);
      v55 = swift_dynamicCast();
      v56 = *v97;
      if (!v55)
      {
        v56(v23, 1, 1, v51);
        sub_1B4975024(v23, &qword_1EB8A9B98, &unk_1B4D2B438);
        sub_1B4C4B318();
        swift_allocError();
        *v87 = 1;
        swift_willThrow();
        sub_1B4CA38DC(v98, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry);
        sub_1B4CA38DC(v89, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue);
      }

      v56(v23, 0, 1, v51);
      v57 = v23;
      v58 = v111;
      sub_1B4CA3874(v57, v111, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
      v59 = v58;
      v60 = v112;
      sub_1B4CA380C(v59, v112, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
      *v110 = *v60;
      sub_1B4974FBC(v60 + *(v51 + 28), v11, &qword_1EB8A7158, &unk_1B4D20310);
      v61 = *v92;
      if ((*v92)(v11, 1, v12) == 1)
      {
        *v15 = 0;
        *(v15 + 1) = 0;
        *(v15 + 4) = 0;
        v62 = &v15[*(v12 + 36)];
        sub_1B4D17BBC();
        v63 = &v15[*(v12 + 40)];
        *v63 = 0;
        *(v63 + 1) = 0;
        v64 = v61(v11, 1, v12);
        v65 = v93;
        v37 = v98;
        if (v64 != 1)
        {
          sub_1B4975024(v11, &qword_1EB8A7158, &unk_1B4D20310);
        }
      }

      else
      {
        sub_1B4CA3874(v11, v15, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
        v65 = v93;
        v37 = v98;
      }

      v66 = *(v15 + 1);
      *&v67 = *v15;
      *(&v67 + 1) = HIDWORD(*v15);
      v68 = v67;
      *&v67 = v66;
      *(&v67 + 1) = SHIDWORD(v66);
      v69 = v113;
      *v113 = v68;
      v69[1] = v67;
      *(v69 + 4) = *(v15 + 4);
      v70 = &v15[*(v109 + 40)];
      if (*(v70 + 1))
      {
        v71 = *v70;
        v72 = *(v70 + 1);

        sub_1B4D1797C();

        sub_1B4CA38DC(v15, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
      }

      else
      {
        sub_1B4CA38DC(v15, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
        v73 = sub_1B4D179BC();
        (*(*(v73 - 8) + 56))(v65, 1, 1, v73);
      }

      v74 = v113;
      sub_1B498B270(v65, v113 + *(v103 + 36), &qword_1EB8A6C20, &unk_1B4D1FBF0);
      v75 = v74;
      v76 = v102;
      sub_1B4CA3874(v75, v102, type metadata accessor for LocalizedDate);
      v77 = v101;
      v78 = v110;
      sub_1B4CA3874(v76, v110 + *(v101 + 28), type metadata accessor for LocalizedDate);
      v79 = v112;
      v80 = v112[1];
      type metadata accessor for UnitCount();
      v81 = [swift_getObjCClassFromMetadata() baseUnit];
      v82 = v78 + *(v77 + 32);
      sub_1B4D1741C();
      sub_1B4CA38DC(v79, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
      sub_1B4CA38DC(v111, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
      sub_1B4CA38DC(v37, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry);
      v83 = v78;
      v84 = v99;
      sub_1B498B270(v83, v99, &qword_1EB8A72C8, &unk_1B4D1D780);
      v116 = v48;
      v86 = *(v48 + 16);
      v85 = *(v48 + 24);
      if (v86 >= v85 >> 1)
      {
        sub_1B4BCEEBC(v85 > 1, v86 + 1, 1);
        v48 = v116;
      }

      ++v46;
      *(v48 + 16) = v86 + 1;
      result = sub_1B498B270(v84, v48 + ((*(v100 + 80) + 32) & ~*(v100 + 80)) + *(v100 + 72) * v86, &qword_1EB8A72C8, &unk_1B4D1D780);
      v47 = v105;
      v11 = v108;
      v12 = v109;
      v23 = v95;
      v34 = v94;
      if (v104 == v46)
      {
        result = sub_1B4CA38DC(v89, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue);
        *v90 = v48;
        return result;
      }
    }

    __break(1u);
  }

  else
  {
    result = sub_1B4CA38DC(a1, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue);
    *v90 = MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1B4C9D6F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v90 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C20, &unk_1B4D1FBF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v88 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7158, &unk_1B4D20310);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v88 - v10;
  v12 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v109 = *(v12 - 8);
  v13 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for LocalizedDate();
  v16 = *(*(v103 - 8) + 64);
  MEMORY[0x1EEE9AC00](v103);
  v113 = (&v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v102 = &v88 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9B98, &unk_1B4D2B438);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v88 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7E30, &unk_1B4D29F60);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v107 = &v88 - v26;
  v106 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry(0);
  v108 = *(v106 - 8);
  v27 = *(v108 + 8);
  MEMORY[0x1EEE9AC00](v106);
  v112 = (&v88 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v29);
  v91 = &v88 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v111 = &v88 - v32;
  v33 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry(0);
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v37 = &v88 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A72C0, &unk_1B4D1D770);
  v100 = *(v38 - 8);
  v101 = v38;
  v39 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v110 = (&v88 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v41);
  v99 = &v88 - v42;
  v43 = *a1;
  v44 = *(*a1 + 16);
  if (v44)
  {
    v88 = v2;
    v89 = a1;
    v116 = MEMORY[0x1E69E7CC0];
    v104 = v44;
    v105 = v43;
    result = sub_1B4BCEE9C(0, v44, 0);
    v46 = 0;
    v47 = v105;
    v96 = v105 + ((*(v34 + 80) + 32) & ~*(v34 + 80));
    v48 = v116;
    v97 = (v108 + 56);
    v92 = (v109 + 48);
    v108 = v11;
    v109 = v12;
    v95 = v23;
    v98 = v37;
    v94 = v34;
    v93 = v7;
    while (v46 < *(v47 + 16))
    {
      sub_1B4CA380C(v96 + *(v34 + 72) * v46, v37, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry);
      v49 = v107;
      sub_1B4974FBC(v37, v107, &qword_1EB8A7E30, &unk_1B4D29F60);
      v50 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry.OneOf_EntryType(0);
      if ((*(*(v50 - 8) + 48))(v49, 1, v50) == 1)
      {
        v114 = 0u;
        v115 = 0u;
        v51 = v106;
      }

      else
      {
        v52 = v49;
        v53 = v91;
        sub_1B4CA3874(v52, v91, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
        v51 = v106;
        *(&v115 + 1) = v106;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v114);
        v11 = v108;
        sub_1B4CA3874(v53, boxed_opaque_existential_1, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6DE8, &qword_1B4D1FC10);
      v55 = swift_dynamicCast();
      v56 = *v97;
      if (!v55)
      {
        v56(v23, 1, 1, v51);
        sub_1B4975024(v23, &qword_1EB8A9B98, &unk_1B4D2B438);
        sub_1B4C4B318();
        swift_allocError();
        *v87 = 1;
        swift_willThrow();
        sub_1B4CA38DC(v98, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry);
        sub_1B4CA38DC(v89, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue);
      }

      v56(v23, 0, 1, v51);
      v57 = v23;
      v58 = v111;
      sub_1B4CA3874(v57, v111, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
      v59 = v58;
      v60 = v112;
      sub_1B4CA380C(v59, v112, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
      *v110 = *v60;
      sub_1B4974FBC(v60 + *(v51 + 28), v11, &qword_1EB8A7158, &unk_1B4D20310);
      v61 = *v92;
      if ((*v92)(v11, 1, v12) == 1)
      {
        *v15 = 0;
        *(v15 + 1) = 0;
        *(v15 + 4) = 0;
        v62 = &v15[*(v12 + 36)];
        sub_1B4D17BBC();
        v63 = &v15[*(v12 + 40)];
        *v63 = 0;
        *(v63 + 1) = 0;
        v64 = v61(v11, 1, v12);
        v65 = v93;
        v37 = v98;
        if (v64 != 1)
        {
          sub_1B4975024(v11, &qword_1EB8A7158, &unk_1B4D20310);
        }
      }

      else
      {
        sub_1B4CA3874(v11, v15, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
        v65 = v93;
        v37 = v98;
      }

      v66 = *(v15 + 1);
      *&v67 = *v15;
      *(&v67 + 1) = HIDWORD(*v15);
      v68 = v67;
      *&v67 = v66;
      *(&v67 + 1) = SHIDWORD(v66);
      v69 = v113;
      *v113 = v68;
      v69[1] = v67;
      *(v69 + 4) = *(v15 + 4);
      v70 = &v15[*(v109 + 40)];
      if (*(v70 + 1))
      {
        v71 = *v70;
        v72 = *(v70 + 1);

        sub_1B4D1797C();

        sub_1B4CA38DC(v15, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
      }

      else
      {
        sub_1B4CA38DC(v15, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
        v73 = sub_1B4D179BC();
        (*(*(v73 - 8) + 56))(v65, 1, 1, v73);
      }

      v74 = v113;
      sub_1B498B270(v65, v113 + *(v103 + 36), &qword_1EB8A6C20, &unk_1B4D1FBF0);
      v75 = v74;
      v76 = v102;
      sub_1B4CA3874(v75, v102, type metadata accessor for LocalizedDate);
      v77 = v101;
      v78 = v110;
      sub_1B4CA3874(v76, v110 + *(v101 + 28), type metadata accessor for LocalizedDate);
      v79 = v112;
      v80 = v112[1];
      sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
      v81 = [swift_getObjCClassFromMetadata() baseUnit];
      v82 = v78 + *(v77 + 32);
      sub_1B4D1741C();
      sub_1B4CA38DC(v79, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
      sub_1B4CA38DC(v111, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
      sub_1B4CA38DC(v37, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry);
      v83 = v78;
      v84 = v99;
      sub_1B498B270(v83, v99, &qword_1EB8A72C0, &unk_1B4D1D770);
      v116 = v48;
      v86 = *(v48 + 16);
      v85 = *(v48 + 24);
      if (v86 >= v85 >> 1)
      {
        sub_1B4BCEE9C(v85 > 1, v86 + 1, 1);
        v48 = v116;
      }

      ++v46;
      *(v48 + 16) = v86 + 1;
      result = sub_1B498B270(v84, v48 + ((*(v100 + 80) + 32) & ~*(v100 + 80)) + *(v100 + 72) * v86, &qword_1EB8A72C0, &unk_1B4D1D770);
      v47 = v105;
      v11 = v108;
      v12 = v109;
      v23 = v95;
      v34 = v94;
      if (v104 == v46)
      {
        result = sub_1B4CA38DC(v89, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue);
        *v90 = v48;
        return result;
      }
    }

    __break(1u);
  }

  else
  {
    result = sub_1B4CA38DC(a1, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue);
    *v90 = MEMORY[0x1E69E7CC0];
  }

  return result;
}

unint64_t sub_1B4C9E220()
{
  result = qword_1EDC38828;
  if (!qword_1EDC38828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38828);
  }

  return result;
}

unint64_t sub_1B4C9E274()
{
  result = qword_1EDC38610;
  if (!qword_1EDC38610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38610);
  }

  return result;
}

unint64_t sub_1B4C9E2C8()
{
  result = qword_1EDC37EA8;
  if (!qword_1EDC37EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC37EA8);
  }

  return result;
}

unint64_t sub_1B4C9E31C()
{
  result = qword_1EDC38B08;
  if (!qword_1EDC38B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38B08);
  }

  return result;
}

unint64_t sub_1B4C9E370()
{
  result = qword_1EDC38638;
  if (!qword_1EDC38638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38638);
  }

  return result;
}

unint64_t sub_1B4C9E3C4()
{
  result = qword_1EDC38D88;
  if (!qword_1EDC38D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38D88);
  }

  return result;
}

unint64_t sub_1B4C9E418()
{
  result = qword_1EDC37A78;
  if (!qword_1EDC37A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC37A78);
  }

  return result;
}

unint64_t sub_1B4C9E46C()
{
  result = qword_1EDC383A8;
  if (!qword_1EDC383A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC383A8);
  }

  return result;
}

unint64_t sub_1B4C9E4C0()
{
  result = qword_1EDC38190;
  if (!qword_1EDC38190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38190);
  }

  return result;
}

unint64_t sub_1B4C9E514()
{
  result = qword_1EDC385F0;
  if (!qword_1EDC385F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC385F0);
  }

  return result;
}

uint64_t sub_1B4C9E568(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v35 = a5;
  v8 = v5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v29 - v14;
  v16 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry(0);
  v33 = *(v16 - 8);
  v34 = v16;
  v17 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a2 + 16);
  if (v20)
  {
    v30 = a1;
    v39 = MEMORY[0x1E69E7CC0];
    sub_1B4BCF6DC(0, v20, 0);
    v38 = v39;
    v21 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v31 = *(v12 + 72);
    v32 = v15;
    while (1)
    {
      v37 = v20;
      v22 = sub_1B4974FBC(v21, v15, a3, a4);
      MEMORY[0x1EEE9AC00](v22);
      *(&v29 - 2) = v15;
      sub_1B4CA3240(qword_1EDC3AE18, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry);
      sub_1B4D17DAC();
      if (v8)
      {
        break;
      }

      v36 = 0;
      sub_1B4975024(v15, a3, a4);
      v23 = v38;
      v39 = v38;
      v25 = *(v38 + 16);
      v24 = *(v38 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1B4BCF6DC(v24 > 1, v25 + 1, 1);
        v23 = v39;
      }

      *(v23 + 16) = v25 + 1;
      v26 = (*(v33 + 80) + 32) & ~*(v33 + 80);
      v38 = v23;
      sub_1B4CA3874(v19, v23 + v26 + *(v33 + 72) * v25, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry);
      v21 += v31;
      v20 = v37 - 1;
      v15 = v32;
      v8 = v36;
      if (v37 == 1)
      {
        a1 = v30;
        goto LABEL_10;
      }
    }

    sub_1B4975024(v15, a3, a4);
  }

  else
  {
    v38 = MEMORY[0x1E69E7CC0];
LABEL_10:
    v28 = *a1;

    *a1 = v38;
  }

  return result;
}

uint64_t sub_1B4C9E894(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14[-v10];
  v15 = a2;
  sub_1B4CA3240(qword_1EDC3B4E8, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
  result = sub_1B4D17DAC();
  if (!v2)
  {
    sub_1B4CA3874(v11, v8, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
    sub_1B4975024(a1, &qword_1EB8A7E30, &unk_1B4D29F60);
    sub_1B4CA3874(v8, a1, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
    v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue.Entry.OneOf_EntryType(0);
    return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
  }

  return result;
}

uint64_t sub_1B4C9EA3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D68, &qword_1B4D208D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v18[-v6];
  v8 = type metadata accessor for MoveRingStatisticsProperty(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v18[-v14];
  sub_1B4CA380C(a2, v11, type metadata accessor for MoveRingStatisticsProperty);
  sub_1B4974FBC(v11, v7, &qword_1EB8A6D68, &qword_1B4D208D0);
  type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v19 = v7;
  sub_1B4CA3240(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  sub_1B4D17DAC();
  sub_1B4CA38DC(v11, type metadata accessor for MoveRingStatisticsProperty);
  sub_1B4975024(v7, &qword_1EB8A6D68, &qword_1B4D208D0);
  v16 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
  return sub_1B4CA2F78(v15, a1);
}

uint64_t sub_1B4C9ECA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6858, &qword_1B4D1AB70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v18[-v6];
  v8 = type metadata accessor for MoveMinutesRingStatisticsProperty(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v18[-v14];
  sub_1B4CA380C(a2, v11, type metadata accessor for MoveMinutesRingStatisticsProperty);
  sub_1B4974FBC(v11, v7, &qword_1EB8A6858, &qword_1B4D1AB70);
  type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v19 = v7;
  sub_1B4CA3240(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  sub_1B4D17DAC();
  sub_1B4CA38DC(v11, type metadata accessor for MoveMinutesRingStatisticsProperty);
  sub_1B4975024(v7, &qword_1EB8A6858, &qword_1B4D1AB70);
  v16 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
  return sub_1B4CA2F78(v15, a1);
}

uint64_t sub_1B4C9EF04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6858, &qword_1B4D1AB70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v18[-v6];
  v8 = type metadata accessor for ExerciseRingStatisticsProperty(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v18[-v14];
  sub_1B4CA380C(a2, v11, type metadata accessor for ExerciseRingStatisticsProperty);
  sub_1B4974FBC(v11, v7, &qword_1EB8A6858, &qword_1B4D1AB70);
  type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v19 = v7;
  sub_1B4CA3240(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  sub_1B4D17DAC();
  sub_1B4CA38DC(v11, type metadata accessor for ExerciseRingStatisticsProperty);
  sub_1B4975024(v7, &qword_1EB8A6858, &qword_1B4D1AB70);
  v16 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
  return sub_1B4CA2F78(v15, a1);
}

uint64_t sub_1B4C9F168(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6928, &qword_1B4D20480);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v18[-v6];
  v8 = type metadata accessor for StandRingStatisticsProperty(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v18[-v14];
  sub_1B4CA380C(a2, v11, type metadata accessor for StandRingStatisticsProperty);
  sub_1B4974FBC(v11, v7, &qword_1EB8A6928, &qword_1B4D20480);
  type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v19 = v7;
  sub_1B4CA3240(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  sub_1B4D17DAC();
  sub_1B4CA38DC(v11, type metadata accessor for StandRingStatisticsProperty);
  sub_1B4975024(v7, &qword_1EB8A6928, &qword_1B4D20480);
  v16 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
  return sub_1B4CA2F78(v15, a1);
}

uint64_t sub_1B4C9F3CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6928, &qword_1B4D20480);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v18[-v6];
  v8 = type metadata accessor for StepsStatisticsProperty(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v18[-v14];
  sub_1B4CA380C(a2, v11, type metadata accessor for StepsStatisticsProperty);
  sub_1B4974FBC(v11, v7, &qword_1EB8A6928, &qword_1B4D20480);
  type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v19 = v7;
  sub_1B4CA3240(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  sub_1B4D17DAC();
  sub_1B4CA38DC(v11, type metadata accessor for StepsStatisticsProperty);
  sub_1B4975024(v7, &qword_1EB8A6928, &qword_1B4D20480);
  v16 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
  return sub_1B4CA2F78(v15, a1);
}

uint64_t sub_1B4C9F630(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6928, &qword_1B4D20480);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v18[-v6];
  v8 = type metadata accessor for FlightsStatisticsProperty(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v18[-v14];
  sub_1B4CA380C(a2, v11, type metadata accessor for FlightsStatisticsProperty);
  sub_1B4974FBC(v11, v7, &qword_1EB8A6928, &qword_1B4D20480);
  type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v19 = v7;
  sub_1B4CA3240(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  sub_1B4D17DAC();
  sub_1B4CA38DC(v11, type metadata accessor for FlightsStatisticsProperty);
  sub_1B4975024(v7, &qword_1EB8A6928, &qword_1B4D20480);
  v16 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
  return sub_1B4CA2F78(v15, a1);
}

uint64_t sub_1B4C9F894(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6840, &unk_1B4D20FA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v18[-v6];
  v8 = type metadata accessor for DistanceStatisticsProperty(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v18[-v14];
  sub_1B4CA380C(a2, v11, type metadata accessor for DistanceStatisticsProperty);
  sub_1B4974FBC(v11, v7, &qword_1EB8A6840, &unk_1B4D20FA0);
  type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v19 = v7;
  sub_1B4CA3240(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  sub_1B4D17DAC();
  sub_1B4CA38DC(v11, type metadata accessor for DistanceStatisticsProperty);
  sub_1B4975024(v7, &qword_1EB8A6840, &unk_1B4D20FA0);
  v16 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
  return sub_1B4CA2F78(v15, a1);
}

uint64_t sub_1B4C9FAF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D68, &qword_1B4D208D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v18[-v6];
  v8 = type metadata accessor for MoveGoalDeltaProperty(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v18[-v14];
  sub_1B4CA380C(a2, v11, type metadata accessor for MoveGoalDeltaProperty);
  sub_1B4974FBC(v11, v7, &qword_1EB8A6D68, &qword_1B4D208D0);
  type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v19 = v7;
  sub_1B4CA3240(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  sub_1B4D17DAC();
  sub_1B4CA38DC(v11, type metadata accessor for MoveGoalDeltaProperty);
  sub_1B4975024(v7, &qword_1EB8A6D68, &qword_1B4D208D0);
  v16 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
  return sub_1B4CA2F78(v15, a1);
}

uint64_t sub_1B4C9FD5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6858, &qword_1B4D1AB70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v18[-v6];
  v8 = type metadata accessor for MoveMinutesGoalDeltaProperty(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v18[-v14];
  sub_1B4CA380C(a2, v11, type metadata accessor for MoveMinutesGoalDeltaProperty);
  sub_1B4974FBC(v11, v7, &qword_1EB8A6858, &qword_1B4D1AB70);
  type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v19 = v7;
  sub_1B4CA3240(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  sub_1B4D17DAC();
  sub_1B4CA38DC(v11, type metadata accessor for MoveMinutesGoalDeltaProperty);
  sub_1B4975024(v7, &qword_1EB8A6858, &qword_1B4D1AB70);
  v16 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
  return sub_1B4CA2F78(v15, a1);
}

uint64_t sub_1B4C9FFC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6858, &qword_1B4D1AB70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v18[-v6];
  v8 = type metadata accessor for ExerciseGoalDeltaProperty(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v18[-v14];
  sub_1B4CA380C(a2, v11, type metadata accessor for ExerciseGoalDeltaProperty);
  sub_1B4974FBC(v11, v7, &qword_1EB8A6858, &qword_1B4D1AB70);
  type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v19 = v7;
  sub_1B4CA3240(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  sub_1B4D17DAC();
  sub_1B4CA38DC(v11, type metadata accessor for ExerciseGoalDeltaProperty);
  sub_1B4975024(v7, &qword_1EB8A6858, &qword_1B4D1AB70);
  v16 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
  return sub_1B4CA2F78(v15, a1);
}

uint64_t sub_1B4CA0224(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6928, &qword_1B4D20480);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v18[-v6];
  v8 = type metadata accessor for StandGoalDeltaProperty(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v18[-v14];
  sub_1B4CA380C(a2, v11, type metadata accessor for StandGoalDeltaProperty);
  sub_1B4974FBC(v11, v7, &qword_1EB8A6928, &qword_1B4D20480);
  type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v19 = v7;
  sub_1B4CA3240(qword_1EDC3B7A0, type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue);
  sub_1B4D17DAC();
  sub_1B4CA38DC(v11, type metadata accessor for StandGoalDeltaProperty);
  sub_1B4975024(v7, &qword_1EB8A6928, &qword_1B4D20480);
  v16 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
  return sub_1B4CA2F78(v15, a1);
}

uint64_t sub_1B4CA0488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v229 = a4;
  v227 = a1;
  v192 = type metadata accessor for StandGoalDeltaProperty(0);
  v6 = *(*(v192 - 8) + 64);
  MEMORY[0x1EEE9AC00](v192);
  v193 = &v182 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = type metadata accessor for ExerciseGoalDeltaProperty(0);
  v8 = *(*(v195 - 8) + 64);
  MEMORY[0x1EEE9AC00](v195);
  v196 = &v182 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = type metadata accessor for MoveMinutesGoalDeltaProperty(0);
  v10 = *(*(v198 - 8) + 64);
  MEMORY[0x1EEE9AC00](v198);
  v199 = &v182 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = type metadata accessor for MoveGoalDeltaProperty(0);
  v12 = *(*(v201 - 8) + 64);
  MEMORY[0x1EEE9AC00](v201);
  v202 = &v182 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = type metadata accessor for DistanceStatisticsProperty(0);
  v14 = *(*(v209 - 8) + 64);
  MEMORY[0x1EEE9AC00](v209);
  v210 = &v182 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v212 = type metadata accessor for FlightsStatisticsProperty(0);
  v16 = *(*(v212 - 8) + 64);
  MEMORY[0x1EEE9AC00](v212);
  v213 = &v182 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v215 = type metadata accessor for StepsStatisticsProperty(0);
  v18 = *(*(v215 - 8) + 64);
  MEMORY[0x1EEE9AC00](v215);
  v216 = &v182 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v218 = type metadata accessor for StandRingStatisticsProperty(0);
  v20 = *(*(v218 - 8) + 64);
  MEMORY[0x1EEE9AC00](v218);
  v219 = &v182 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v221 = type metadata accessor for ExerciseRingStatisticsProperty(0);
  v22 = *(*(v221 - 8) + 64);
  MEMORY[0x1EEE9AC00](v221);
  v222 = &v182 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = type metadata accessor for MoveMinutesRingStatisticsProperty(0);
  v24 = *(*(v223 - 8) + 64);
  MEMORY[0x1EEE9AC00](v223);
  v224 = &v182 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v225 = type metadata accessor for MoveRingStatisticsProperty(0);
  v26 = *(*(v225 - 8) + 64);
  MEMORY[0x1EEE9AC00](v225);
  v226 = &v182 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v185 = &v182 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v184 = &v182 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v183 = &v182 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v186 = &v182 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v187 = &v182 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v188 = &v182 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v189 = &v182 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v190 = &v182 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v191 = &v182 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v194 = &v182 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v197 = &v182 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v200 = &v182 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v204 = &v182 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v205 = &v182 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v206 = &v182 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v207 = &v182 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v208 = &v182 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v211 = &v182 - v64;
  MEMORY[0x1EEE9AC00](v65);
  v214 = &v182 - v66;
  MEMORY[0x1EEE9AC00](v67);
  v217 = &v182 - v68;
  MEMORY[0x1EEE9AC00](v69);
  v220 = &v182 - v70;
  MEMORY[0x1EEE9AC00](v71);
  v73 = &v182 - v72;
  MEMORY[0x1EEE9AC00](v74);
  v76 = &v182 - v75;
  MEMORY[0x1EEE9AC00](v77);
  v79 = &v182 - v78;
  MEMORY[0x1EEE9AC00](v80);
  v82 = &v182 - v81;
  MEMORY[0x1EEE9AC00](v83);
  v85 = &v182 - v84;
  v86 = *(*(a3 - 8) + 64);
  v88 = MEMORY[0x1EEE9AC00](v87);
  v90 = &v182 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  v228 = v91;
  (*(v91 + 16))(v90, a2, a3, v88);
  if (!swift_dynamicCast())
  {
    v203 = a2;
    v95 = a3;
    if (swift_dynamicCast())
    {
      v236 = v245;
      v237 = v246;
      v238 = v247;
      v232 = v241;
      v233 = v242;
      v234 = v243;
      v235 = v244;
      v230 = v239;
      v231 = v240;
      sub_1B4C056C4(&v230);
      v96 = sub_1B4CA279C();
      v97 = v248;
      sub_1B4CA2150(a3, &type metadata for ExerciseStreakProperty, v96, v82);
      if (v97)
      {
        return (*(v228 + 8))(v90, v95);
      }

      v98 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v98 - 8) + 56))(v82, 0, 1, v98);
      v99 = v82;
LABEL_15:
      sub_1B4CA2F78(v99, v227);
      return (*(v228 + 8))(v90, v95);
    }

    if (swift_dynamicCast())
    {
      v236 = v245;
      v237 = v246;
      v238 = v247;
      v232 = v241;
      v233 = v242;
      v234 = v243;
      v235 = v244;
      v230 = v239;
      v231 = v240;
      sub_1B4CA3670(&v230);
      v100 = sub_1B4CA2748();
      v101 = v248;
      sub_1B4CA2150(a3, &type metadata for StandStreakProperty, v100, v79);
      if (v101)
      {
        return (*(v228 + 8))(v90, v95);
      }

      v102 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
      goto LABEL_11;
    }

    if (swift_dynamicCast())
    {
      v236 = v245;
      v237 = v246;
      v238 = v247;
      v232 = v241;
      v233 = v242;
      v234 = v243;
      v235 = v244;
      v230 = v239;
      v231 = v240;
      sub_1B4C05280(&v230);
      v103 = sub_1B4CA26F4();
      v104 = v248;
      sub_1B4CA2150(a3, &type metadata for AllThreeRingStreakProperty, v103, v76);
      if (v104)
      {
        return (*(v228 + 8))(v90, v95);
      }

      v105 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v105 - 8) + 56))(v76, 0, 1, v105);
      v99 = v76;
      goto LABEL_15;
    }

    v107 = v225;
    v106 = v226;
    if (swift_dynamicCast())
    {
      v108 = sub_1B4CA3240(&qword_1EDC38BB8, type metadata accessor for MoveRingStatisticsProperty);
      v109 = v248;
      sub_1B4CA2150(v95, v107, v108, v73);
      if (!v109)
      {
        v110 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v110 - 8) + 56))(v73, 0, 1, v110);
        sub_1B4CA2F78(v73, v227);
      }

      v111 = type metadata accessor for MoveRingStatisticsProperty;
LABEL_44:
      sub_1B4CA38DC(v106, v111);
      return (*(v228 + 8))(v90, v95);
    }

    v112 = v223;
    v106 = v224;
    if (swift_dynamicCast())
    {
      v113 = sub_1B4CA3240(&qword_1EDC38170, type metadata accessor for MoveMinutesRingStatisticsProperty);
      v114 = v220;
      v115 = v248;
      sub_1B4CA2150(v95, v112, v113, v220);
      if (!v115)
      {
        v124 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v124 - 8) + 56))(v114, 0, 1, v124);
        sub_1B4CA2F78(v114, v227);
      }

      v111 = type metadata accessor for MoveMinutesRingStatisticsProperty;
      goto LABEL_44;
    }

    v116 = v221;
    v106 = v222;
    v117 = swift_dynamicCast();
    v118 = v248;
    if (v117)
    {
      v119 = sub_1B4CA3240(&qword_1EDC38540, type metadata accessor for ExerciseRingStatisticsProperty);
      v120 = v217;
      sub_1B4CA2150(v95, v116, v119, v217);
      if (!v118)
      {
        v129 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v129 - 8) + 56))(v120, 0, 1, v129);
        sub_1B4CA2F78(v120, v227);
      }

      v111 = type metadata accessor for ExerciseRingStatisticsProperty;
      goto LABEL_44;
    }

    v121 = v218;
    v106 = v219;
    if (swift_dynamicCast())
    {
      v122 = sub_1B4CA3240(&qword_1EDC38998, type metadata accessor for StandRingStatisticsProperty);
      v123 = v214;
      sub_1B4CA2150(v95, v121, v122, v214);
      if (!v118)
      {
        v134 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v134 - 8) + 56))(v123, 0, 1, v134);
        sub_1B4CA2F78(v123, v227);
      }

      v111 = type metadata accessor for StandRingStatisticsProperty;
      goto LABEL_44;
    }

    v125 = v215;
    v106 = v216;
    if (swift_dynamicCast())
    {
      v126 = sub_1B4CA3240(&qword_1EDC39000, type metadata accessor for StepsStatisticsProperty);
      v127 = v211;
      sub_1B4CA2150(v95, v125, v126, v211);
      if (!v118)
      {
        v128 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v128 - 8) + 56))(v127, 0, 1, v128);
        sub_1B4CA2F78(v127, v227);
      }

      v111 = type metadata accessor for StepsStatisticsProperty;
      goto LABEL_44;
    }

    v130 = v212;
    v106 = v213;
    if (swift_dynamicCast())
    {
      v131 = sub_1B4CA3240(&qword_1EDC38E58, type metadata accessor for FlightsStatisticsProperty);
      v132 = v208;
      sub_1B4CA2150(v95, v130, v131, v208);
      if (!v118)
      {
        v133 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v133 - 8) + 56))(v132, 0, 1, v133);
        sub_1B4CA2F78(v132, v227);
      }

      v111 = type metadata accessor for FlightsStatisticsProperty;
      goto LABEL_44;
    }

    v135 = v209;
    v106 = v210;
    if (swift_dynamicCast())
    {
      v136 = sub_1B4CA3240(&qword_1EDC38C88, type metadata accessor for DistanceStatisticsProperty);
      v137 = v207;
      sub_1B4CA2150(v95, v135, v136, v207);
      if (!v118)
      {
        v138 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v138 - 8) + 56))(v137, 0, 1, v138);
        sub_1B4CA2F78(v137, v227);
      }

      v111 = type metadata accessor for DistanceStatisticsProperty;
      goto LABEL_44;
    }

    if (swift_dynamicCast())
    {
      v140 = sub_1B4C9E514();
      v141 = v206;
      sub_1B4CA2150(v95, &type metadata for MoveGoalAchievedCountProperty, v140, v206);
      if (v118)
      {
        return (*(v228 + 8))(v90, v95);
      }

      goto LABEL_51;
    }

    if (swift_dynamicCast())
    {
      v142 = sub_1B4C9E4C0();
      v141 = v205;
      sub_1B4CA2150(v95, &type metadata for ExerciseGoalAchievedCountProperty, v142, v205);
      if (v118)
      {
        return (*(v228 + 8))(v90, v95);
      }

LABEL_51:
      v143 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v143 - 8) + 56))(v141, 0, 1, v143);
      v99 = v141;
      goto LABEL_15;
    }

    if (swift_dynamicCast())
    {
      v144 = sub_1B4C9E46C();
      sub_1B4CA2150(v95, &type metadata for StandGoalAchievedCountProperty, v144, v204);
      if (v118)
      {
        return (*(v228 + 8))(v90, v95);
      }

      v102 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
      v79 = v204;
LABEL_11:
      swift_storeEnumTagMultiPayload();
      (*(*(v102 - 8) + 56))(v79, 0, 1, v102);
      v99 = v79;
      goto LABEL_15;
    }

    if (swift_dynamicCast())
    {
      v145 = sub_1B4C9E418();
      v146 = v95;
      v147 = v248;
      sub_1B4CA2150(v95, &type metadata for AllThreeRingsGoalAchievedCountProperty, v145, v200);
      if (!v147)
      {
        v148 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
        v149 = v200;
LABEL_58:
        swift_storeEnumTagMultiPayload();
        (*(*(v148 - 8) + 56))(v149, 0, 1, v148);
        sub_1B4CA2F78(v149, v227);
        goto LABEL_76;
      }

      goto LABEL_76;
    }

    v146 = v95;
    if (swift_dynamicCast())
    {
      v150 = sub_1B4CA3240(&qword_1EDC39498, type metadata accessor for MoveGoalDeltaProperty);
      v151 = v248;
      sub_1B4CA2150(v95, v201, v150, v197);
      if (!v151)
      {
        v152 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
        v153 = v197;
        swift_storeEnumTagMultiPayload();
        (*(*(v152 - 8) + 56))(v153, 0, 1, v152);
        sub_1B4CA2F78(v153, v227);
      }

      v154 = type metadata accessor for MoveGoalDeltaProperty;
      v155 = v202;
    }

    else if (swift_dynamicCast())
    {
      v156 = sub_1B4CA3240(&qword_1EDC38808, type metadata accessor for MoveMinutesGoalDeltaProperty);
      v157 = v248;
      sub_1B4CA2150(v95, v198, v156, v194);
      if (!v157)
      {
        v158 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
        v159 = v194;
        swift_storeEnumTagMultiPayload();
        (*(*(v158 - 8) + 56))(v159, 0, 1, v158);
        sub_1B4CA2F78(v159, v227);
      }

      v154 = type metadata accessor for MoveMinutesGoalDeltaProperty;
      v155 = v199;
    }

    else if (swift_dynamicCast())
    {
      v160 = sub_1B4CA3240(&qword_1EDC38F28, type metadata accessor for ExerciseGoalDeltaProperty);
      v161 = v248;
      sub_1B4CA2150(v95, v195, v160, v191);
      if (!v161)
      {
        v162 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
        v163 = v191;
        swift_storeEnumTagMultiPayload();
        (*(*(v162 - 8) + 56))(v163, 0, 1, v162);
        sub_1B4CA2F78(v163, v227);
      }

      v154 = type metadata accessor for ExerciseGoalDeltaProperty;
      v155 = v196;
    }

    else
    {
      if (!swift_dynamicCast())
      {
        if (swift_dynamicCast())
        {

          v168 = sub_1B4C9E3C4();
          v169 = v248;
          sub_1B4CA2150(v95, &type metadata for MoveGoalMilestoneProperty, v168, v189);
          if (v169)
          {
            goto LABEL_76;
          }

          v148 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
          v149 = v189;
          goto LABEL_58;
        }

        if (swift_dynamicCast())
        {

          v170 = sub_1B4C9E370();
          v171 = v248;
          sub_1B4CA2150(v95, &type metadata for ExerciseGoalMilestoneProperty, v170, v188);
          if (v171)
          {
            goto LABEL_76;
          }

          v148 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
          v149 = v188;
          goto LABEL_58;
        }

        if (swift_dynamicCast())
        {

          v172 = sub_1B4C9E31C();
          v173 = v248;
          sub_1B4CA2150(v95, &type metadata for StandGoalMilestoneProperty, v172, v187);
          if (v173)
          {
            goto LABEL_76;
          }

          v148 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
          v149 = v187;
          goto LABEL_58;
        }

        if (swift_dynamicCast())
        {

          v174 = sub_1B4C9E2C8();
          v175 = v248;
          sub_1B4CA2150(v95, &type metadata for AllThreeRingsGoalMilestoneProperty, v174, v186);
          if (v175)
          {
            goto LABEL_76;
          }

          v148 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
          v149 = v186;
          goto LABEL_58;
        }

        if (swift_dynamicCast())
        {

          v176 = sub_1B4C9E274();
          v177 = v248;
          sub_1B4CA2150(v95, &type metadata for HighestDailyStepCountProperty, v176, v183);
          if (v177)
          {
            goto LABEL_76;
          }

          v148 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
          v149 = v183;
          goto LABEL_58;
        }

        if (swift_dynamicCast())
        {

          v178 = sub_1B4C9E220();
          v179 = v248;
          sub_1B4CA2150(v95, &type metadata for HighestDailyDistanceProperty, v178, v184);
          if (v179)
          {
            goto LABEL_76;
          }

          v148 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
          v149 = v184;
          goto LABEL_58;
        }

        if (!swift_dynamicCast())
        {
          sub_1B4C9BB70();
          swift_allocError();
          swift_willThrow();
          goto LABEL_76;
        }

        v180 = sub_1B4C9BBC4();
        v181 = v248;
        sub_1B4CA2150(v95, &type metadata for RingsTotalCountProperty, v180, v185);
        if (!v181)
        {
          v148 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
          v149 = v185;
          goto LABEL_58;
        }

LABEL_76:
        v95 = v146;
        return (*(v228 + 8))(v90, v95);
      }

      v164 = sub_1B4CA3240(&qword_1EDC39200, type metadata accessor for StandGoalDeltaProperty);
      v165 = v248;
      sub_1B4CA2150(v95, v192, v164, v190);
      if (!v165)
      {
        v166 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
        v167 = v190;
        swift_storeEnumTagMultiPayload();
        (*(*(v166 - 8) + 56))(v167, 0, 1, v166);
        sub_1B4CA2F78(v167, v227);
      }

      v154 = type metadata accessor for StandGoalDeltaProperty;
      v155 = v193;
    }

    sub_1B4CA38DC(v155, v154);
    goto LABEL_76;
  }

  v236 = v245;
  v237 = v246;
  v238 = v247;
  v232 = v241;
  v233 = v242;
  v234 = v243;
  v235 = v244;
  v230 = v239;
  v231 = v240;
  sub_1B4C0522C(&v230);
  v92 = sub_1B4CA27F0();
  v93 = v248;
  sub_1B4CA2150(a3, &type metadata for MoveStreakProperty, v92, v85);
  if (!v93)
  {
    v94 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v94 - 8) + 56))(v85, 0, 1, v94);
    sub_1B4CA2F78(v85, v227);
  }

  v95 = a3;
  return (*(v228 + 8))(v90, v95);
}

uint64_t sub_1B4CA2150@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v38 = a4;
  v6 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v33[1] = swift_getAssociatedConformanceWitness();
  v35 = AssociatedTypeWitness;
  v8 = swift_getAssociatedTypeWitness();
  v36 = *(v8 - 8);
  v37 = v8;
  v9 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v34 = v33 - v10;
  v11 = sub_1B4D1880C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v33 - v14;
  v16 = *(*(a1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a2 - 8);
  v21 = *(v20 + 64);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = v33 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v26 + 16))(v19, v39, a1, v23);
  v27 = swift_dynamicCast();
  v28 = *(v20 + 56);
  if (v27)
  {
    v28(v15, 0, 1, a2);
    (*(v20 + 32))(v25, v15, a2);
    v29 = v34;
    (*(v6 + 64))(a2, v6);
    v30 = v37;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(*(AssociatedConformanceWitness + 8) + 32))(v30);
    (*(v36 + 8))(v29, v30);
    return (*(v20 + 8))(v25, a2);
  }

  else
  {
    v28(v15, 1, 1, a2);
    (*(v12 + 8))(v15, v11);
    sub_1B4C9BB70();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t static RingsPropertySerialization.from(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1;
  v17 = a2;
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  sub_1B498FC0C(a1, a2);
  sub_1B4D17BDC();
  sub_1B4CA3240(qword_1EDC3C840, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty);
  result = sub_1B4D17D7C();
  if (!v3)
  {
    static RingsPropertySerialization.from(_:)(v12, a3);
    return sub_1B4CA38DC(v12, type metadata accessor for Apple_Fitness_Intelligence_RingsProperty);
  }

  return result;
}

unint64_t sub_1B4CA26F4()
{
  result = qword_1EDC38CA8;
  if (!qword_1EDC38CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38CA8);
  }

  return result;
}

unint64_t sub_1B4CA2748()
{
  result = qword_1EDC39580;
  if (!qword_1EDC39580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC39580);
  }

  return result;
}

unint64_t sub_1B4CA279C()
{
  result = qword_1EDC392D0;
  if (!qword_1EDC392D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC392D0);
  }

  return result;
}

unint64_t sub_1B4CA27F0()
{
  result = qword_1EDC395D8;
  if (!qword_1EDC395D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC395D8);
  }

  return result;
}

unint64_t sub_1B4CA2888()
{
  result = qword_1EB8ADCE0;
  if (!qword_1EB8ADCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADCE0);
  }

  return result;
}

uint64_t sub_1B4CA28DC(uint64_t a1, uint64_t a2, void (*a3)(_OWORD *, _OWORD *), uint64_t (*a4)(_OWORD *))
{
  v43 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v24 - v10;
  v12 = *(a2 + 80);
  v13 = *(a2 + 112);
  v40 = *(a2 + 96);
  v41 = v13;
  v14 = *(a2 + 16);
  v15 = *(a2 + 48);
  v36 = *(a2 + 32);
  v37 = v15;
  v16 = *(a2 + 48);
  v17 = *(a2 + 80);
  v38 = *(a2 + 64);
  v39 = v17;
  v18 = *(a2 + 16);
  v35[0] = *a2;
  v35[1] = v18;
  v19 = *(a2 + 112);
  v32 = v40;
  v33 = v19;
  v28 = v36;
  v29 = v16;
  v30 = v38;
  v31 = v12;
  v42 = *(a2 + 128);
  v34 = *(a2 + 128);
  v26 = v35[0];
  v27 = v14;
  v20 = sub_1B4CA351C();
  v21 = *(v20 + 32);
  a3(v35, v24);
  a3(v35, v24);
  v21(&type metadata for StreakPropertyValue, v20);
  v24[6] = v32;
  v24[7] = v33;
  v25 = v34;
  v24[2] = v28;
  v24[3] = v29;
  v24[4] = v30;
  v24[5] = v31;
  v24[0] = v26;
  v24[1] = v27;
  sub_1B4BA87C4(v24);
  if (v4)
  {
    return a4(v35);
  }

  a4(v35);
  v23 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v23 - 8) + 56))(v11, 0, 1, v23);
  return sub_1B4CA2F78(v11, v43);
}

uint64_t sub_1B4CA2B18(uint64_t a1, void *a2)
{
  v15 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  v8 = a2[1];
  v9 = a2[2];
  v14[1] = *a2;
  v14[2] = v8;
  v14[3] = v9;
  v10 = sub_1B4C6CEA4();
  v11 = *(v10 + 32);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v11(&type metadata for RingsMilestonePropertyValue, v10);

  if (!v2)
  {
    v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v13 - 8) + 56))(v7, 0, 1, v13);
    return sub_1B4CA2F78(v7, v15);
  }

  return result;
}

uint64_t sub_1B4CA2CA4(uint64_t a1, uint64_t *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v12[-v7];
  v9 = *a2;
  type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue(0);
  v13 = v9;
  sub_1B4CA3240(qword_1EDC3AD78, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMetricPropertyValue);

  sub_1B4D17DAC();

  if (!v2)
  {
    v11 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v11 - 8) + 56))(v8, 0, 1, v11);
    return sub_1B4CA2F78(v8, a1);
  }

  return result;
}

uint64_t sub_1B4CA2E28(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v12 - v7;
  v12[1] = *a2;
  v9 = sub_1B49A69C0();
  result = (*(v9 + 32))(&type metadata for CountPropertyValue, v9);
  if (!v2)
  {
    v11 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperty.OneOf_PropertyType(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v11 - 8) + 56))(v8, 0, 1, v11);
    return sub_1B4CA2F78(v8, a1);
  }

  return result;
}

uint64_t sub_1B4CA2F78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A9A50, &qword_1B4D29F70);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4CA3240(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B4CA351C()
{
  result = qword_1EDC39558;
  if (!qword_1EDC39558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC39558);
  }

  return result;
}

uint64_t sub_1B4CA380C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4CA3874(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4CA38DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t WorkoutVoiceFastestRecordFact.TemplateString.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

unint64_t WorkoutVoiceFastestRecordFact.TemplateString.rawValue.getter()
{
  v1 = 0xD000000000000066;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000086;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000064;
  }

  *v0;
  return result;
}

uint64_t sub_1B4CA3A44(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "of <formatted_pace>.";
  v4 = 0xD000000000000066;
  if (v2 == 1)
  {
    v5 = 0xD000000000000066;
  }

  else
  {
    v5 = 0xD000000000000086;
  }

  if (v2 == 1)
  {
    v6 = "of <formatted_pace>.";
  }

  else
  {
    v6 = " of <formatted_speed>.";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000064;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "thisMonthWorkoutProperties";
  }

  if (*a2 != 1)
  {
    v4 = 0xD000000000000086;
    v3 = " of <formatted_speed>.";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD000000000000064;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = "thisMonthWorkoutProperties";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B4D18DCC();
  }

  return v11 & 1;
}

uint64_t sub_1B4CA3B1C()
{
  v1 = *v0;
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4CA3BB8()
{
  *v0;
  *v0;
  sub_1B4D1820C();
}

uint64_t sub_1B4CA3C40()
{
  v1 = *v0;
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4CA3CD8@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return WorkoutVoiceFastestRecordFact.TemplateString.init(rawValue:)(a1);
}

void sub_1B4CA3CE4(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000064;
  v3 = "of <formatted_pace>.";
  v4 = 0xD000000000000066;
  if (*v1 != 1)
  {
    v4 = 0xD000000000000086;
    v3 = " of <formatted_speed>.";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "thisMonthWorkoutProperties";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

id WorkoutVoiceFastestRecordFact.placeholders()()
{
  v1 = type metadata accessor for WorkoutVoiceFastestRecordFact();
  v2 = v1 - 8;
  v3 = *(v1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B60, &qword_1B4D35490);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B4D223E0;
  [*(v0 + *(v2 + 44)) effectiveTypeIdentifier];
  result = FILocalizedNameForIndoorAgnosticActivityType();
  if (result)
  {
    v7 = result;
    v8 = sub_1B4D1818C();
    v10 = v9;

    strcpy((v5 + 32), "activity_type");
    *(v5 + 46) = -4864;
    v11 = swift_allocObject();
    *(v11 + 16) = v8;
    *(v11 + 24) = v10;
    *(v5 + 48) = sub_1B4993DFC;
    *(v5 + 56) = v11;
    *(v5 + 64) = 0;
    *(v5 + 72) = 0;
    v12 = sub_1B4CA40B0();
    v14 = v13;
    *(v5 + 80) = 0xD000000000000015;
    *(v5 + 88) = 0x80000001B4D4EFE0;
    v15 = swift_allocObject();
    *(v15 + 16) = v12;
    *(v15 + 24) = v14;
    *(v5 + 96) = sub_1B4994004;
    *(v5 + 104) = v15;
    *(v5 + 112) = 0;
    *(v5 + 120) = 0;
    sub_1B4C73654(v0, &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v16 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v17 = swift_allocObject();
    sub_1B4CA4FD8(&v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
    strcpy((v5 + 128), "formatted_pace");
    *(v5 + 143) = -18;
    *(v5 + 144) = sub_1B4CA503C;
    *(v5 + 152) = v17;
    *(v5 + 160) = 0;
    *(v5 + 168) = 0;
    sub_1B4C73654(v0, &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v18 = swift_allocObject();
    sub_1B4CA4FD8(&v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v16);
    *(v5 + 176) = 0x657474616D726F66;
    *(v5 + 184) = 0xEF64656570735F64;
    *(v5 + 192) = sub_1B4CA5054;
    *(v5 + 200) = v18;
    *(v5 + 208) = 0;
    *(v5 + 216) = 0;
    sub_1B4C73654(v0, &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v19 = swift_allocObject();
    sub_1B4CA4FD8(&v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v16);
    *(v5 + 224) = 0xD000000000000012;
    *(v5 + 232) = 0x80000001B4D62360;
    *(v5 + 240) = sub_1B4CA506C;
    *(v5 + 248) = v19;
    *(v5 + 256) = 0;
    *(v5 + 264) = 0;
    sub_1B4C73654(v0, &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v20 = swift_allocObject();
    sub_1B4CA4FD8(&v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v16);
    *(v5 + 272) = 0xD000000000000012;
    *(v5 + 280) = 0x80000001B4D62340;
    *(v5 + 288) = sub_1B4CA52D8;
    *(v5 + 296) = v20;
    *(v5 + 304) = 0;
    *(v5 + 312) = 0;
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B4CA40B0()
{
  v1 = *(v0 + *(type metadata accessor for WorkoutVoiceFastestRecordFact() + 32));
  if (v1 < 4)
  {
    v3 = sub_1B4D18DCC();

    if (v3)
    {
      return 0x6365722065762749;
    }

    else if (v1 > 1)
    {
      if (v1 == 2)
      {
        return 0x6E6F6D2073696874;
      }

      else
      {
        return 0x6165792073696874;
      }
    }

    else if (v1)
    {
      return 0x6565772073696874;
    }

    else
    {
      return 0x7961642073696874;
    }
  }

  else
  {

    return 0x6365722065762749;
  }
}

uint64_t sub_1B4CA422C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CB0, &unk_1B4D1BBF0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v15 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  v12 = type metadata accessor for WorkoutVoiceFastestRecordFact();
  sub_1B4974FBC(a2 + *(v12 + 28), v6, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
    return 0;
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
    v14 = sub_1B4D13AE8(v11, *(a2 + *(v12 + 36)), 2);
    (*(v8 + 8))(v11, v7);
    return v14;
  }
}

uint64_t sub_1B4CA4414(uint64_t a1, uint64_t a2)
{
  v25 = a1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A71C0, &unk_1B4D40CF0);
  v24 = *(v26 - 8);
  v3 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v5 = &v23 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CB0, &unk_1B4D1BBF0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v23 - v16;
  v18 = type metadata accessor for WorkoutVoiceFastestRecordFact();
  sub_1B4974FBC(a2 + *(v18 + 28), v9, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1B4975024(v9, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
    return 0;
  }

  else
  {
    (*(v11 + 32))(v17, v9, v10);
    if (qword_1EDC36E80 != -1)
    {
      swift_once();
    }

    sub_1B4D1745C();
    sub_1B4D1742C();
    v20 = *(v11 + 8);
    v20(v14, v10);
    v21 = [objc_opt_self() metersPerSecond];
    sub_1B498AFB8(0, &qword_1EB8A7230, 0x1E696B078);
    sub_1B4D1741C();
    v22 = sub_1B4D13D94(v5, *(a2 + *(v18 + 36)), 1);
    (*(v24 + 8))(v5, v26);
    v20(v17, v10);
    return v22;
  }
}

uint64_t sub_1B4CA479C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v17 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v17 - v10;
  v12 = type metadata accessor for WorkoutVoiceFastestRecordFact();
  sub_1B4974FBC(a2 + *(v12 + 24), v6, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A6CC0, &unk_1B4D1BC00);
    return 0;
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
    v14 = sub_1B4D1232C();
    sub_1B4BC79D0();
    v15 = v14[2];
    sub_1B498AFB8(0, &qword_1EDC3CB80, 0x1E696B058);
    v16 = sub_1B4D1878C();
    (*(v8 + 8))(v11, v7);

    return v16;
  }
}

uint64_t sub_1B4CA49A8(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v20 - v10;
  v12 = type metadata accessor for WorkoutVoiceFastestRecordFact();
  sub_1B4974FBC(a2 + *(v12 + 20), v6, &qword_1EB8A6C90, &unk_1B4D1BBD0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A6C90, &unk_1B4D1BBD0);
    return 0;
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB100, &unk_1B4D44B50);
    v14 = *(sub_1B4D18F8C() - 8);
    v15 = *(v14 + 72);
    v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1B4D1B2D0;
    sub_1B4D18F4C();
    sub_1B4D18F5C();
    sub_1B4D18F6C();
    sub_1B4D18F7C();
    v18 = sub_1B4BCA7BC(v17);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v19 = sub_1B4D15F5C(v11, v18);

    (*(v8 + 8))(v11, v7);
    return v19;
  }
}

void WorkoutVoiceFastestRecordFact.selectTemplate(formatter:)(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CB0, &unk_1B4D1BBF0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v26 - v13;
  v15 = *v1;
  if (v15 == 19)
  {
    v27 = a1;
    v16 = type metadata accessor for WorkoutVoiceFastestRecordFact();
    sub_1B4974FBC(&v1[*(v16 + 28)], v14, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
    v18 = (*(*(v17 - 8) + 48))(v14, 1, v17);
    sub_1B4975024(v14, &qword_1EB8A6CB0, &unk_1B4D1BBF0);
    if (v18 != 1)
    {
      v25 = *&v1[*(v16 + 36)];
      v24 = FIPaceFormatForWorkoutActivityType() == 4;
      a1 = v27;
      goto LABEL_10;
    }

    LOBYTE(v15) = *v1;
    a1 = v27;
  }

  if ((v15 & 0xFC) == 0x10)
  {
    goto LABEL_7;
  }

  v19 = type metadata accessor for WorkoutVoiceFastestRecordFact();
  sub_1B4974FBC(&v1[*(v19 + 24)], v10, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v21 = (*(*(v20 - 8) + 48))(v10, 1, v20);
  sub_1B4975024(v10, &qword_1EB8A6CC0, &unk_1B4D1BC00);
  if (v21 == 1 || (sub_1B4974FBC(&v1[*(v19 + 20)], v6, &qword_1EB8A6C90, &unk_1B4D1BBD0), v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10), v23 = (*(*(v22 - 8) + 48))(v6, 1, v22), sub_1B4975024(v6, &qword_1EB8A6C90, &unk_1B4D1BBD0), v23 == 1))
  {
LABEL_7:
    v24 = 3;
  }

  else
  {
    v24 = 2;
  }

LABEL_10:
  *a1 = v24;
}

uint64_t sub_1B4CA4FD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutVoiceFastestRecordFact();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_7Tm()
{
  v1 = type metadata accessor for WorkoutVoiceFastestRecordFact();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = v1[5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  v9 = v1[6];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  v12 = v1[7];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD8, &unk_1B4D1D2C0);
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v5 + v12, 1, v13))
  {
    (*(v14 + 8))(v5 + v12, v13);
  }

  v15 = *(v5 + v1[10] + 8);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B4CA52F0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for WorkoutVoiceFastestRecordFact() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_1B4CA5378()
{
  result = qword_1EB8ADCE8;
  if (!qword_1EB8ADCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADCE8);
  }

  return result;
}

unint64_t sub_1B4CA53D0()
{
  result = qword_1EB8ADCF0;
  if (!qword_1EB8ADCF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8ADCF8, &qword_1B4D44F90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADCF0);
  }

  return result;
}

unint64_t sub_1B4CA5438()
{
  result = qword_1EB8ADD00;
  if (!qword_1EB8ADD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADD00);
  }

  return result;
}

unint64_t sub_1B4CA5490()
{
  result = qword_1EB8ADD08;
  if (!qword_1EB8ADD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADD08);
  }

  return result;
}

unint64_t sub_1B4CA54E4(uint64_t a1)
{
  result = sub_1B4CA550C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4CA550C()
{
  result = qword_1EB8ADD10;
  if (!qword_1EB8ADD10)
  {
    type metadata accessor for WorkoutVoiceFastestRecordFact();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADD10);
  }

  return result;
}

void __swiftcall FitnessContextDemoConfig.RingProgress.init(moveValue:moveGoal:exerciseValue:exerciseGoal:standValue:standGoal:steps:distance:flights:)(FitnessIntelligence::FitnessContextDemoConfig::RingProgress *__return_ptr retstr, Swift::Double moveValue, Swift::Double moveGoal, Swift::Double exerciseValue, Swift::Double exerciseGoal, Swift::Double standValue, Swift::Double standGoal, Swift::Double steps, Swift::Double distance, Swift::Double flights)
{
  retstr->moveValue = moveValue;
  retstr->moveGoal = moveGoal;
  retstr->exerciseValue = exerciseValue;
  retstr->exerciseGoal = exerciseGoal;
  retstr->standValue = standValue;
  retstr->standGoal = standGoal;
  retstr->steps = steps;
  retstr->distance = distance;
  retstr->flights = flights;
}

uint64_t sub_1B4CA55D8(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x756C615665766F6DLL;
    if (a1)
    {
      v5 = 0x6C616F4765766F6DLL;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return 0x6573696372657865;
    }
  }

  else
  {
    v1 = 0x7370657473;
    v2 = 0x65636E6174736964;
    if (a1 != 7)
    {
      v2 = 0x73746867696C66;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6C6156646E617473;
    if (a1 != 4)
    {
      v3 = 0x616F47646E617473;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1B4CA5714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B4CA7A78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B4CA573C(uint64_t a1)
{
  v2 = sub_1B4CA5A48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4CA5778(uint64_t a1)
{
  v2 = sub_1B4CA5A48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FitnessContextDemoConfig.RingProgress.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADD18, &qword_1B4D45010);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v19 - v7;
  v9 = *v1;
  v19[1] = v1[1];
  v11 = v1[2];
  v10 = v1[3];
  v13 = v1[4];
  v12 = v1[5];
  v15 = v1[6];
  v14 = v1[7];
  v16 = v1[8];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4CA5A48();
  sub_1B4D18EFC();
  v28 = 0;
  sub_1B4D18CDC();
  if (!v2)
  {
    v27 = 1;
    sub_1B4D18CDC();
    v26 = 2;
    sub_1B4D18CDC();
    v25 = 3;
    sub_1B4D18CDC();
    v24 = 4;
    sub_1B4D18CDC();
    v23 = 5;
    sub_1B4D18CDC();
    v22 = 6;
    sub_1B4D18CDC();
    v21 = 7;
    sub_1B4D18CDC();
    v20 = 8;
    sub_1B4D18CDC();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1B4CA5A48()
{
  result = qword_1EB8ADD20;
  if (!qword_1EB8ADD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADD20);
  }

  return result;
}

uint64_t FitnessContextDemoConfig.RingProgress.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADD28, &qword_1B4D45018);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v30 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4CA5A48();
  sub_1B4D18EEC();
  if (!v2)
  {
    v39 = 0;
    sub_1B4D18BDC();
    v12 = v11;
    v38 = 1;
    sub_1B4D18BDC();
    v14 = v13;
    v37 = 2;
    sub_1B4D18BDC();
    v16 = v15;
    v36 = 3;
    sub_1B4D18BDC();
    v18 = v17;
    v35 = 4;
    sub_1B4D18BDC();
    v20 = v19;
    v34 = 5;
    sub_1B4D18BDC();
    v22 = v21;
    v33 = 6;
    sub_1B4D18BDC();
    v24 = v23;
    v32 = 7;
    sub_1B4D18BDC();
    v30 = v26;
    v31 = 8;
    sub_1B4D18BDC();
    v28 = v27;
    (*(v6 + 8))(v9, v5);
    *a2 = v12;
    a2[1] = v14;
    a2[2] = v16;
    a2[3] = v18;
    a2[4] = v20;
    a2[5] = v22;
    v29 = v30;
    a2[6] = v24;
    a2[7] = v29;
    a2[8] = v28;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t FitnessContextDemoConfig.WorkoutHistory.distancePerWorkoutThisWeek.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t FitnessContextDemoConfig.WorkoutHistory.distancePerWorkoutLastWeek.getter()
{
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  return result;
}

unint64_t sub_1B4CA5DD8()
{
  v1 = 0x696854746E756F63;
  v2 = 0xD000000000000020;
  if (*v0 != 2)
  {
    v2 = 0xD00000000000001ALL;
  }

  if (*v0)
  {
    v1 = 0x73614C746E756F63;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B4CA5E8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B4CA7D6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B4CA5EB4(uint64_t a1)
{
  v2 = sub_1B4CA614C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4CA5EF0(uint64_t a1)
{
  v2 = sub_1B4CA614C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FitnessContextDemoConfig.WorkoutHistory.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADD30, &qword_1B4D45020);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v15 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[2];
  v17 = v1[3];
  v18 = v8;
  v16 = *(v1 + 32);
  v15 = v1[5];
  v11 = *(v1 + 48);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4CA614C();
  sub_1B4D18EFC();
  v24 = 0;
  v13 = v19;
  sub_1B4D18CEC();
  if (!v13)
  {
    v23 = 1;
    sub_1B4D18CEC();
    v22 = 2;
    sub_1B4D18CDC();
    v21 = 3;
    sub_1B4D18C8C();
    v20 = 4;
    sub_1B4D18C8C();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1B4CA614C()
{
  result = qword_1EB8ADD38;
  if (!qword_1EB8ADD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADD38);
  }

  return result;
}

uint64_t FitnessContextDemoConfig.WorkoutHistory.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADD40, &qword_1B4D45028);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4CA614C();
  sub_1B4D18EEC();
  if (!v2)
  {
    v29 = 0;
    v11 = sub_1B4D18BEC();
    v28 = 1;
    v12 = sub_1B4D18BEC();
    v27 = 2;
    sub_1B4D18BDC();
    v14 = v13;
    v26 = 3;
    v15 = sub_1B4D18B8C();
    v24 = v16;
    v23 = v15;
    v25 = 4;
    v18 = sub_1B4D18B8C();
    v19 = v9;
    v21 = v20;
    (*(v6 + 8))(v19, v5);
    *a2 = v11;
    *(a2 + 8) = v12;
    *(a2 + 16) = v14;
    *(a2 + 24) = v23;
    *(a2 + 32) = v24 & 1;
    *(a2 + 40) = v18;
    *(a2 + 48) = v21 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

__n128 FitnessContextDemoConfig.todayRingProgress.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 24);
  v3 = *(v1 + 56);
  *(a1 + 32) = *(v1 + 40);
  *(a1 + 48) = v3;
  *(a1 + 64) = *(v1 + 72);
  *a1 = *(v1 + 8);
  *(a1 + 16) = result;
  return result;
}

__n128 FitnessContextDemoConfig.yesterdayRingProgress.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 128);
  *(a1 + 32) = *(v1 + 112);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 144);
  result = *(v1 + 96);
  *a1 = *(v1 + 80);
  *(a1 + 16) = result;
  return result;
}

uint64_t static FitnessContextDemoConfig.load(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1B4D1767C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC3CEC8 != -1)
  {
    swift_once();
  }

  v11 = sub_1B4D17F6C();
  __swift_project_value_buffer(v11, qword_1EDC3CED0);
  (*(v7 + 16))(v10, a1, v6);
  v12 = sub_1B4D17F5C();
  v13 = sub_1B4D1873C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v32 = a2;
    v15 = v14;
    v16 = swift_slowAlloc();
    v31 = v2;
    v17 = v16;
    v33 = v16;
    *v15 = 136315138;
    sub_1B4CA7240();
    v18 = sub_1B4D18D5C();
    v30[1] = a1;
    v20 = v19;
    (*(v7 + 8))(v10, v6);
    v21 = sub_1B49558AC(v18, v20, &v33);

    *(v15 + 4) = v21;
    _os_log_impl(&dword_1B4953000, v12, v13, "Loading demo config from %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    v22 = v17;
    v3 = v31;
    MEMORY[0x1B8C7DDA0](v22, -1, -1);
    MEMORY[0x1B8C7DDA0](v15, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  result = sub_1B4D1768C();
  if (!v3)
  {
    v25 = result;
    v26 = v24;
    v27 = sub_1B4D173AC();
    v28 = *(v27 + 48);
    v29 = *(v27 + 52);
    swift_allocObject();
    sub_1B4D1739C();
    sub_1B4CA6778();
    sub_1B4D1738C();

    return sub_1B49DDD2C(v25, v26);
  }

  return result;
}

unint64_t sub_1B4CA6778()
{
  result = qword_1EB8ADD48;
  if (!qword_1EB8ADD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADD48);
  }

  return result;
}

void __swiftcall FitnessContextDemoConfig.init(workoutHistoryByActivityType:todayRingProgress:yesterdayRingProgress:totalWorkoutDistanceThisYear:averageWorkoutDistanceLastSixWeeks:longestWorkoutDistanceEver:longestWorkoutDistanceThisYear:longestWorkoutDistanceThisMonth:averageWorkoutDurationThisWeek:)(FitnessIntelligence::FitnessContextDemoConfig *__return_ptr retstr, Swift::OpaquePointer workoutHistoryByActivityType, FitnessIntelligence::FitnessContextDemoConfig::RingProgress *todayRingProgress, FitnessIntelligence::FitnessContextDemoConfig::RingProgress *yesterdayRingProgress, Swift::Double totalWorkoutDistanceThisYear, Swift::Double averageWorkoutDistanceLastSixWeeks, Swift::Double longestWorkoutDistanceEver, Swift::Double longestWorkoutDistanceThisYear, Swift::Double longestWorkoutDistanceThisMonth, Swift::Double averageWorkoutDurationThisWeek)
{
  v10 = *&todayRingProgress->moveValue;
  *&retstr->todayRingProgress.exerciseValue = *&todayRingProgress->exerciseValue;
  v11 = *&todayRingProgress->steps;
  *&retstr->todayRingProgress.standValue = *&todayRingProgress->standValue;
  retstr->workoutHistoryByActivityType = workoutHistoryByActivityType;
  *&retstr->todayRingProgress.steps = v11;
  retstr->todayRingProgress.flights = todayRingProgress->flights;
  *&retstr->todayRingProgress.moveValue = v10;
  v12 = *&yesterdayRingProgress->steps;
  *&retstr->yesterdayRingProgress.standValue = *&yesterdayRingProgress->standValue;
  *&retstr->yesterdayRingProgress.steps = v12;
  retstr->yesterdayRingProgress.flights = yesterdayRingProgress->flights;
  v13 = *&yesterdayRingProgress->exerciseValue;
  *&retstr->yesterdayRingProgress.moveValue = *&yesterdayRingProgress->moveValue;
  *&retstr->yesterdayRingProgress.exerciseValue = v13;
  retstr->totalWorkoutDistanceThisYear = totalWorkoutDistanceThisYear;
  retstr->averageWorkoutDistanceLastSixWeeks = averageWorkoutDistanceLastSixWeeks;
  retstr->longestWorkoutDistanceEver = longestWorkoutDistanceEver;
  retstr->longestWorkoutDistanceThisYear = longestWorkoutDistanceThisYear;
  retstr->longestWorkoutDistanceThisMonth = longestWorkoutDistanceThisMonth;
  retstr->averageWorkoutDurationThisWeek = averageWorkoutDurationThisWeek;
}

unint64_t sub_1B4CA6818(unsigned __int8 a1)
{
  v1 = 0xD00000000000001CLL;
  if (a1 <= 3u)
  {
    v6 = 0xD000000000000015;
    if (a1 != 2)
    {
      v6 = 0xD00000000000001CLL;
    }

    if (a1)
    {
      v1 = 0xD000000000000011;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0xD00000000000001ELL;
    v3 = 0xD00000000000001FLL;
    if (a1 != 7)
    {
      v3 = 0xD00000000000001ELL;
    }

    if (a1 != 6)
    {
      v2 = v3;
    }

    v4 = 0xD00000000000001ALL;
    if (a1 == 4)
    {
      v4 = 0xD000000000000022;
    }

    if (a1 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1B4CA691C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B4CA7F30(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B4CA6944(uint64_t a1)
{
  v2 = sub_1B4CA7298();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4CA6980(uint64_t a1)
{
  v2 = sub_1B4CA7298();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FitnessContextDemoConfig.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADD58, &qword_1B4D45030);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v23 - v8;
  v10 = *v3;
  v12 = v3[19];
  v11 = v3[20];
  v14 = v3[21];
  v13 = v3[22];
  v16 = v3[23];
  v15 = v3[24];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4CA7298();

  sub_1B4D18EFC();
  *&v23 = v10;
  v28 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADD68, &qword_1B4D45038);
  sub_1B4CA7394(&qword_1EB8ADD70, sub_1B4CA72EC);
  sub_1B4D18D0C();
  if (v2)
  {
  }

  else
  {

    v18 = *(v3 + 3);
    v19 = *(v3 + 7);
    v25 = *(v3 + 5);
    v26 = v19;
    v27 = v3[9];
    v23 = *(v3 + 1);
    v24 = v18;
    v28 = 1;
    sub_1B4CA7340();
    sub_1B4D18D0C();
    v20 = *(v3 + 8);
    v25 = *(v3 + 7);
    v26 = v20;
    v27 = v3[18];
    v21 = *(v3 + 6);
    v23 = *(v3 + 5);
    v24 = v21;
    v28 = 2;
    sub_1B4D18D0C();
    LOBYTE(v23) = 3;
    sub_1B4D18CDC();
    LOBYTE(v23) = 4;
    sub_1B4D18CDC();
    LOBYTE(v23) = 5;
    sub_1B4D18CDC();
    LOBYTE(v23) = 6;
    sub_1B4D18CDC();
    LOBYTE(v23) = 7;
    sub_1B4D18CDC();
    LOBYTE(v23) = 8;
    sub_1B4D18CDC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t FitnessContextDemoConfig.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADD88, &qword_1B4D45040);
  v5 = *(v83 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v83);
  v8 = &v32 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4CA7298();
  sub_1B4D18EEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v10 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADD68, &qword_1B4D45038);
  LOBYTE(v34[0]) = 0;
  sub_1B4CA7394(&qword_1EB8ADD90, sub_1B4CA7418);
  sub_1B4D18C0C();
  v11 = v43;
  v67 = 1;
  sub_1B4CA746C();
  sub_1B4D18C0C();
  v33 = v11;
  v80 = v70;
  v81 = v71;
  v82 = v72;
  v78 = v68;
  v79 = v69;
  v61 = 2;
  sub_1B4D18C0C();
  v75 = v64;
  v76 = v65;
  v77 = v66;
  v73 = v62;
  v74 = v63;
  LOBYTE(v43) = 3;
  sub_1B4D18BDC();
  v13 = v12;
  LOBYTE(v43) = 4;
  sub_1B4D18BDC();
  v14 = v33;
  v16 = v15;
  LOBYTE(v43) = 5;
  sub_1B4D18BDC();
  v18 = v17;
  LOBYTE(v43) = 6;
  sub_1B4D18BDC();
  v20 = v19;
  LOBYTE(v43) = 7;
  sub_1B4D18BDC();
  v22 = v21;
  v60 = 8;
  sub_1B4D18BDC();
  v24 = v23;
  (*(v10 + 8))(v8, v83);
  *(&v34[1] + 8) = v79;
  *(&v34[2] + 8) = v80;
  *&v34[0] = v14;
  *(&v34[3] + 8) = v81;
  *(&v34[4] + 1) = v82;
  *(v34 + 8) = v78;
  v37 = v75;
  v38 = v76;
  *&v39 = v77;
  v35 = v73;
  v36 = v74;
  *(&v39 + 1) = v13;
  *&v40 = v16;
  *(&v40 + 1) = v18;
  *&v41 = v20;
  *(&v41 + 1) = v22;
  v42 = v24;
  v25 = v75;
  *(a2 + 96) = v74;
  *(a2 + 112) = v25;
  v26 = v35;
  *(a2 + 64) = v34[4];
  *(a2 + 80) = v26;
  v27 = v34[3];
  *(a2 + 32) = v34[2];
  *(a2 + 48) = v27;
  v28 = v34[1];
  *a2 = v34[0];
  *(a2 + 16) = v28;
  v29 = v39;
  *(a2 + 128) = v38;
  *(a2 + 144) = v29;
  v30 = v41;
  *(a2 + 160) = v40;
  *(a2 + 176) = v30;
  *(a2 + 192) = v42;
  sub_1B4CA74C0(v34, &v43);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v45 = v79;
  v46 = v80;
  v47 = v81;
  v43 = v14;
  v48 = v82;
  v44 = v78;
  v51 = v75;
  v52 = v76;
  v53 = v77;
  v49 = v73;
  v50 = v74;
  v54 = v13;
  v55 = v16;
  v56 = v18;
  v57 = v20;
  v58 = v22;
  v59 = v24;
  return sub_1B4CA74F8(&v43);
}

unint64_t sub_1B4CA7240()
{
  result = qword_1EB8ADD50;
  if (!qword_1EB8ADD50)
  {
    sub_1B4D1767C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADD50);
  }

  return result;
}

unint64_t sub_1B4CA7298()
{
  result = qword_1EB8ADD60;
  if (!qword_1EB8ADD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADD60);
  }

  return result;
}

unint64_t sub_1B4CA72EC()
{
  result = qword_1EB8ADD78;
  if (!qword_1EB8ADD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADD78);
  }

  return result;
}

unint64_t sub_1B4CA7340()
{
  result = qword_1EB8ADD80;
  if (!qword_1EB8ADD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADD80);
  }

  return result;
}

uint64_t sub_1B4CA7394(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8ADD68, &qword_1B4D45038);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B4CA7418()
{
  result = qword_1EB8ADD98;
  if (!qword_1EB8ADD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADD98);
  }

  return result;
}

unint64_t sub_1B4CA746C()
{
  result = qword_1EB8ADDA0;
  if (!qword_1EB8ADDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADDA0);
  }

  return result;
}

__n128 __swift_memcpy200_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_1B4CA756C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 200))
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

uint64_t sub_1B4CA75B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 200) = 1;
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

    *(result + 200) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1B4CA7658(uint64_t a1, int a2)
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

uint64_t sub_1B4CA7678(uint64_t result, int a2, int a3)
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

uint64_t sub_1B4CA76C4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 49))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B4CA76E4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
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

  *(result + 49) = v3;
  return result;
}

unint64_t sub_1B4CA7764()
{
  result = qword_1EB8ADDA8;
  if (!qword_1EB8ADDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADDA8);
  }

  return result;
}

unint64_t sub_1B4CA77BC()
{
  result = qword_1EB8ADDB0;
  if (!qword_1EB8ADDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADDB0);
  }

  return result;
}

unint64_t sub_1B4CA7814()
{
  result = qword_1EB8ADDB8;
  if (!qword_1EB8ADDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADDB8);
  }

  return result;
}

unint64_t sub_1B4CA786C()
{
  result = qword_1EB8ADDC0;
  if (!qword_1EB8ADDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADDC0);
  }

  return result;
}

unint64_t sub_1B4CA78C4()
{
  result = qword_1EB8ADDC8;
  if (!qword_1EB8ADDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADDC8);
  }

  return result;
}

unint64_t sub_1B4CA791C()
{
  result = qword_1EB8ADDD0;
  if (!qword_1EB8ADDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADDD0);
  }

  return result;
}

unint64_t sub_1B4CA7974()
{
  result = qword_1EB8ADDD8;
  if (!qword_1EB8ADDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADDD8);
  }

  return result;
}

unint64_t sub_1B4CA79CC()
{
  result = qword_1EB8ADDE0;
  if (!qword_1EB8ADDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADDE0);
  }

  return result;
}

unint64_t sub_1B4CA7A24()
{
  result = qword_1EB8ADDE8;
  if (!qword_1EB8ADDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADDE8);
  }

  return result;
}

uint64_t sub_1B4CA7A78(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x756C615665766F6DLL && a2 == 0xE900000000000065;
  if (v4 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C616F4765766F6DLL && a2 == 0xE800000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6573696372657865 && a2 == 0xED000065756C6156 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6573696372657865 && a2 == 0xEC0000006C616F47 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C6156646E617473 && a2 == 0xEA00000000006575 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x616F47646E617473 && a2 == 0xE90000000000006CLL || (sub_1B4D18DCC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7370657473 && a2 == 0xE500000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x65636E6174736964 && a2 == 0xE800000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x73746867696C66 && a2 == 0xE700000000000000)
  {

    return 8;
  }

  else
  {
    v6 = sub_1B4D18DCC();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_1B4CA7D6C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696854746E756F63 && a2 == 0xED00006B65655773;
  if (v4 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73614C746E756F63 && a2 == 0xED00006B65655774 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001B4D66A20 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001B4D66A50 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001B4D66A70 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1B4D18DCC();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1B4CA7F30(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001CLL && 0x80000001B4D66A90 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B4D66AB0 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001B4D66AD0 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001B4D66AF0 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000022 && 0x80000001B4D66B10 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001B4D66B40 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001B4D66B60 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000001B4D66B80 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001B4D66BA0 == a2)
  {

    return 8;
  }

  else
  {
    v5 = sub_1B4D18DCC();

    if (v5)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t WorkoutReplayMoment.moment.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
}

char *WorkoutReplayMoment.init(elapsedTime:moment:)@<X0>(char *result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v3 = *result;
  v4 = *(result + 1);
  v5 = result[16];
  v6 = *(result + 24);
  v7 = *(result + 5);
  *a2 = a3;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  return result;
}

uint64_t WorkoutReplayMoments.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4D177CC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t WorkoutReplayMoments.workout.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WorkoutReplayMoments() + 20);

  return sub_1B4992854(v3, a1);
}

uint64_t type metadata accessor for WorkoutReplayMoments()
{
  result = qword_1EB8ADDF0;
  if (!qword_1EB8ADDF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WorkoutReplayMoments.replays.getter()
{
  v1 = *(v0 + *(type metadata accessor for WorkoutReplayMoments() + 28));
}

uint64_t WorkoutReplayMoments.init(uuid:workout:activityType:replays:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_1B4D177CC();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  v11 = type metadata accessor for WorkoutReplayMoments();
  result = sub_1B49B46E0(a2, a5 + v11[5]);
  *(a5 + v11[6]) = a3;
  *(a5 + v11[7]) = a4;
  return result;
}

uint64_t sub_1B4CA84B0(uint64_t a1, int a2)
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

uint64_t sub_1B4CA84F8(uint64_t result, int a2, int a3)
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

void sub_1B4CA857C()
{
  sub_1B4D177CC();
  if (v0 <= 0x3F)
  {
    type metadata accessor for WorkoutState();
    if (v1 <= 0x3F)
    {
      type metadata accessor for HKWorkoutActivityType(319);
      if (v2 <= 0x3F)
      {
        sub_1B4CA8630();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B4CA8630()
{
  if (!qword_1EB8ADE00)
  {
    v0 = sub_1B4D184BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB8ADE00);
    }
  }
}

uint64_t FitnessIntelligenceConnection.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADE08, &unk_1B4D455F0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = (&v13 - v9);
  *v10 = 0xD00000000000001ELL;
  v10[1] = 0x80000001B4D66BC0;
  (*(v3 + 104))(&v13 - v9, *MEMORY[0x1E699DCF8], v2, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB860, &qword_1B4D35CF0);
  (*(v3 + 16))(v6, v10, v2);
  v11 = sub_1B4D17B2C();
  result = (*(v3 + 8))(v10, v2);
  *a1 = v11;
  return result;
}

uint64_t FitnessIntelligenceConnection.init(serviceType:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ADE08, &unk_1B4D455F0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB860, &qword_1B4D35CF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = sub_1B4D17B2C();
  result = (*(v5 + 8))(a1, v4);
  *a2 = v9;
  return result;
}

FitnessIntelligence::WorkoutPropertyKind_optional __swiftcall WorkoutPropertyKind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B4D18DFC();

  v5 = 19;
  if (v3 < 0x13)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t WorkoutPropertyKind.rawValue.getter()
{
  result = 0x7461745365636170;
  switch(*v0)
  {
    case 1:
    case 6:
    case 7:
      result = 0xD000000000000012;
      break;
    case 2:
      return result;
    case 3:
      result = 0xD000000000000017;
      break;
    case 4:
      result = 0xD00000000000001ALL;
      break;
    case 5:
    case 0xB:
      result = 0xD000000000000013;
      break;
    case 8:
    case 0xC:
      result = 0xD00000000000001CLL;
      break;
    case 9:
      result = 0xD000000000000015;
      break;
    case 0xA:
      result = 0xD000000000000017;
      break;
    case 0xD:
      result = 0xD000000000000018;
      break;
    case 0xE:
      result = 0xD000000000000017;
      break;
    case 0xF:
      result = 0xD000000000000017;
      break;
    case 0x10:
      result = 0xD000000000000017;
      break;
    case 0x11:
      result = 0xD000000000000016;
      break;
    case 0x12:
      result = 0x756F436C61746F74;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_1B4CA8B88(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = WorkoutPropertyKind.rawValue.getter();
  v4 = v3;
  if (v2 == WorkoutPropertyKind.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1B4D18DCC();
  }

  return v7 & 1;
}

uint64_t sub_1B4CA8C28()
{
  v1 = *v0;
  sub_1B4D18E8C();
  WorkoutPropertyKind.rawValue.getter();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4CA8C90()
{
  v2 = *v0;
  WorkoutPropertyKind.rawValue.getter();
  sub_1B4D1820C();
}

uint64_t sub_1B4CA8CF4()
{
  v1 = *v0;
  sub_1B4D18E8C();
  WorkoutPropertyKind.rawValue.getter();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

unint64_t sub_1B4CA8D64@<X0>(unint64_t *a1@<X8>)
{
  result = WorkoutPropertyKind.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1B4CA8D8C(void *a1)
{
  a1[1] = sub_1B4CA8DC4();
  a1[2] = sub_1B4CA8E18();
  result = sub_1B4CA8E6C();
  a1[3] = result;
  return result;
}

unint64_t sub_1B4CA8DC4()
{
  result = qword_1EB8ADE10;
  if (!qword_1EB8ADE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADE10);
  }

  return result;
}

unint64_t sub_1B4CA8E18()
{
  result = qword_1EB8ADE18;
  if (!qword_1EB8ADE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADE18);
  }

  return result;
}

unint64_t sub_1B4CA8E6C()
{
  result = qword_1EB8ADE20;
  if (!qword_1EB8ADE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ADE20);
  }

  return result;
}

unint64_t sub_1B4CA8EC4()
{
  result = qword_1EB8A74D8;
  if (!qword_1EB8A74D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A74D0, &qword_1B4D1E2D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A74D8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutPropertyKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
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

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutPropertyKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t AverageWorkoutPaceFact.TemplateString.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

unint64_t AverageWorkoutPaceFact.TemplateString.rawValue.getter()
{
  v1 = 0xD0000000000000AELL;
  if (*v0 == 2)
  {
    v1 = 0xD0000000000000A5;
  }

  if (*v0)
  {
    v2 = 0xD0000000000000AFLL;
  }

  else
  {
    v2 = 0xD0000000000000A6;
  }

  *v0;
  if (*v0 <= 1u)
  {
    result = v2;
  }

  else
  {
    result = v1;
  }

  *v0;
  return result;
}