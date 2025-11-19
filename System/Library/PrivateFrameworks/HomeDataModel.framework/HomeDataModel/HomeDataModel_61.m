uint64_t StaticService.hashValue.getter()
{
  sub_1D1E6920C();
  StaticService.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t StaticService.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v133 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C9B0, &qword_1D1EA1190);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v132 = v122 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644870, &unk_1D1EABA00);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v131 = v122 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644760, &unk_1D1E9E530);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v129 = v122 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v130 = v122 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v128 = v122 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v127 = v122 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v134 = v122 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v135 = v122 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644620, &unk_1D1E75A00);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = v122 - v26;
  v28 = sub_1D1E66A7C();
  v136 = *(v28 - 8);
  v29 = v136[8];
  v30 = MEMORY[0x1EEE9AC00](v28);
  v32 = v122 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v137 = v122 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C9F0, &unk_1D1EA11B0);
  v138 = *(v34 - 8);
  v139 = v34;
  v35 = *(v138 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v37 = v122 - v36;
  v38 = type metadata accessor for StaticService(0);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38);
  v41 = v122 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a1[3];
  v43 = a1[4];
  v142 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v42);
  sub_1D1C2AF8C();
  v140 = v37;
  v44 = v141;
  sub_1D1E692FC();
  if (v44)
  {
    return __swift_destroy_boxed_opaque_existential_1(v142);
  }

  v125 = v32;
  v124 = v27;
  v126 = v38;
  v141 = v41;
  LOBYTE(v143) = 0;
  v45 = sub_1D1C2AFE0(&qword_1EC644B20, MEMORY[0x1E69695A8]);
  v46 = v137;
  sub_1D1E68D7C();
  v122[1] = v45;
  v48 = v136[4];
  v49 = v141;
  v48(v141, v46, v28);
  LOBYTE(v143) = 1;
  v50 = sub_1D1E68D2C();
  v123 = v28;
  v51 = v126;
  v52 = &v49[v126[5]];
  *v52 = v50;
  v52[1] = v53;
  LOBYTE(v143) = 2;
  v122[0] = 0;
  v49[v51[6]] = sub_1D1E68D3C() & 1;
  LOBYTE(v143) = 3;
  v49[v51[7]] = sub_1D1E68D3C() & 1;
  LOBYTE(v143) = 4;
  v49[v51[8]] = sub_1D1E68D3C() & 1;
  LOBYTE(v143) = 5;
  v49[v51[9]] = sub_1D1E68C7C();
  LOBYTE(v143) = 6;
  v49[v51[10]] = sub_1D1E68C7C();
  LOBYTE(v143) = 7;
  v54 = v125;
  sub_1D1E68D7C();
  v70 = v126;
  v48(&v141[v126[11]], v54, v28);
  LOBYTE(v143) = 8;
  v71 = sub_1D1E68C9C();
  v137 = 0;
  v73 = &v141[v70[12]];
  *v73 = v71;
  v73[8] = v72 & 1;
  type metadata accessor for StaticDeviceMetadata();
  LOBYTE(v143) = 9;
  sub_1D1C2AFE0(&qword_1EC644670, type metadata accessor for StaticDeviceMetadata);
  v74 = v137;
  sub_1D1E68CBC();
  v137 = v74;
  if (v74)
  {
    (*(v138 + 8))(v140, v139);
    v75 = 0;
    v76 = 0;
    v77 = 0;
    v78 = 0;
    v79 = 0;
    LODWORD(v129) = 0;
    LODWORD(v135) = 0;
    LODWORD(v134) = 0;
    LODWORD(v133) = 0;
    LODWORD(v132) = 0;
    LODWORD(v130) = 0;
    LODWORD(v131) = 0;
    LODWORD(v139) = 0;
    LODWORD(v138) = 0;
    LODWORD(v140) = 0;
    LODWORD(v128) = 1;
  }

  else
  {
    sub_1D1741A90(v124, &v141[v126[13]], &qword_1EC644620, &unk_1D1E75A00);
    sub_1D1E669FC();
    LOBYTE(v143) = 10;
    sub_1D1C2AFE0(&qword_1EC642EB8, MEMORY[0x1E6969530]);
    v80 = v137;
    sub_1D1E68CBC();
    v137 = v80;
    if (v80)
    {
      (*(v138 + 8))(v140, v139);
      v76 = 0;
      v77 = 0;
      v78 = 0;
      v79 = 0;
      LODWORD(v129) = 0;
      LODWORD(v135) = 0;
      LODWORD(v134) = 0;
      LODWORD(v133) = 0;
      LODWORD(v132) = 0;
      LODWORD(v130) = 0;
      LODWORD(v131) = 0;
      LODWORD(v139) = 0;
      LODWORD(v138) = 0;
      LODWORD(v140) = 0;
      LODWORD(v128) = 1;
      v75 = 1;
    }

    else
    {
      sub_1D1741A90(v135, &v141[v126[14]], &qword_1EC642570, &qword_1D1E6C6A0);
      LOBYTE(v143) = 11;
      v81 = v137;
      sub_1D1E68CBC();
      v137 = v81;
      if (v81)
      {
        (*(v138 + 8))(v140, v139);
        v77 = 0;
        v78 = 0;
        v79 = 0;
        LODWORD(v129) = 0;
        LODWORD(v135) = 0;
        LODWORD(v134) = 0;
        LODWORD(v133) = 0;
        LODWORD(v132) = 0;
        LODWORD(v130) = 0;
        LODWORD(v131) = 0;
        LODWORD(v139) = 0;
        LODWORD(v138) = 0;
        LODWORD(v140) = 0;
        LODWORD(v128) = 1;
        v75 = 1;
        v76 = 1;
      }

      else
      {
        sub_1D1741A90(v134, &v141[v126[15]], &qword_1EC642570, &qword_1D1E6C6A0);
        v144 = 12;
        sub_1D1BC925C();
        v82 = v137;
        sub_1D1E68CBC();
        v137 = v82;
        if (v82)
        {
          goto LABEL_50;
        }

        v141[v126[16]] = v143;
        LOBYTE(v143) = 13;
        v83 = v137;
        v84 = sub_1D1E68D3C();
        v137 = v83;
        if (v83)
        {
          goto LABEL_50;
        }

        v141[v126[17]] = v84 & 1;
        LOBYTE(v143) = 14;
        v85 = v137;
        v86 = sub_1D1E68D3C();
        v137 = v85;
        if (v85 || (v141[v126[18]] = v86 & 1, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6438F0, &qword_1D1E99360), v144 = 15, sub_1D1C2B1F4(&qword_1EC646B78, &qword_1EC644B20), v87 = v137, sub_1D1E68D7C(), (v137 = v87) != 0))
        {
LABEL_50:
          (*(v138 + 8))(v140, v139);
          v78 = 0;
          v79 = 0;
          LODWORD(v129) = 0;
          LODWORD(v135) = 0;
          LODWORD(v134) = 0;
          LODWORD(v133) = 0;
          LODWORD(v132) = 0;
          LODWORD(v130) = 0;
          LODWORD(v131) = 0;
          LODWORD(v139) = 0;
          LODWORD(v138) = 0;
          LODWORD(v140) = 0;
          LODWORD(v128) = 1;
          v75 = 1;
          v76 = 1;
          v77 = 1;
        }

        else
        {
          *&v141[v126[19]] = v143;
          LOBYTE(v143) = 16;
          v88 = v137;
          v89 = sub_1D1E68C6C();
          v137 = v88;
          if (v88)
          {
            (*(v138 + 8))(v140, v139);
            v79 = 0;
            LODWORD(v129) = 0;
            LODWORD(v135) = 0;
            LODWORD(v134) = 0;
            LODWORD(v133) = 0;
            LODWORD(v132) = 0;
            LODWORD(v130) = 0;
            LODWORD(v131) = 0;
            LODWORD(v139) = 0;
            LODWORD(v138) = 0;
            LODWORD(v140) = 0;
            LODWORD(v128) = 1;
            v75 = 1;
            v76 = 1;
            v77 = 1;
            v78 = 1;
          }

          else
          {
            v91 = &v141[v126[20]];
            *v91 = v89;
            v91[1] = v90;
            LOBYTE(v143) = 17;
            v92 = v137;
            v93 = sub_1D1E68D3C();
            v137 = v92;
            if (v92)
            {
              goto LABEL_58;
            }

            v141[v126[21]] = v93 & 1;
            LOBYTE(v143) = 18;
            v94 = v137;
            v95 = sub_1D1E68D3C();
            v137 = v94;
            if (v94)
            {
              goto LABEL_58;
            }

            v141[v126[22]] = v95 & 1;
            LOBYTE(v143) = 19;
            v96 = v137;
            v97 = sub_1D1E68D3C();
            v137 = v96;
            if (v96)
            {
              goto LABEL_58;
            }

            v141[v126[23]] = v97 & 1;
            LOBYTE(v143) = 20;
            v98 = v137;
            v99 = sub_1D1E68D3C();
            v137 = v98;
            if (v98 || (v141[v126[24]] = v99 & 1, LOBYTE(v143) = 21, v100 = v137, v101 = sub_1D1E68C6C(), (v137 = v100) != 0))
            {
LABEL_58:
              (*(v138 + 8))(v140, v139);
              LODWORD(v129) = 0;
              LODWORD(v135) = 0;
              LODWORD(v134) = 0;
              LODWORD(v133) = 0;
              LODWORD(v132) = 0;
              LODWORD(v130) = 0;
              LODWORD(v131) = 0;
              LODWORD(v139) = 0;
              LODWORD(v138) = 0;
              LODWORD(v140) = 0;
              LODWORD(v128) = 1;
              v75 = 1;
              v76 = 1;
              v77 = 1;
              v78 = 1;
              v79 = 1;
            }

            else
            {
              v103 = &v141[v126[25]];
              *v103 = v101;
              v103[1] = v102;
              v144 = 22;
              sub_1D18F1978();
              v104 = v137;
              sub_1D1E68D7C();
              v137 = v104;
              if (v104)
              {
                goto LABEL_63;
              }

              v141[v126[26]] = v143;
              v144 = 23;
              sub_1D18F19CC();
              v105 = v137;
              sub_1D1E68CBC();
              v137 = v105;
              if (v105)
              {
                goto LABEL_63;
              }

              v141[v126[27]] = v143;
              v144 = 24;
              v106 = v137;
              sub_1D1E68CBC();
              v137 = v106;
              if (v106 || (v141[v126[28]] = v143, LOBYTE(v143) = 25, v107 = v137, sub_1D1E68CBC(), (v137 = v107) != 0))
              {
LABEL_63:
                (*(v138 + 8))(v140, v139);
                LODWORD(v135) = 0;
                LODWORD(v134) = 0;
                LODWORD(v133) = 0;
                LODWORD(v132) = 0;
                LODWORD(v130) = 0;
                LODWORD(v131) = 0;
                LODWORD(v139) = 0;
                LODWORD(v138) = 0;
                LODWORD(v140) = 0;
                LODWORD(v128) = 1;
                v75 = 1;
                v76 = 1;
                v77 = 1;
                v78 = 1;
                v79 = 1;
                LODWORD(v129) = 1;
              }

              else
              {
                sub_1D1741A90(v127, &v141[v126[29]], &qword_1EC642590, qword_1D1E71260);
                LOBYTE(v143) = 26;
                v108 = v137;
                sub_1D1E68CBC();
                v137 = v108;
                if (v108)
                {
                  (*(v138 + 8))(v140, v139);
                  LODWORD(v134) = 0;
                  LODWORD(v133) = 0;
                  LODWORD(v132) = 0;
                  LODWORD(v130) = 0;
                  LODWORD(v131) = 0;
                  LODWORD(v139) = 0;
                  LODWORD(v138) = 0;
                  LODWORD(v140) = 0;
                  LODWORD(v128) = 1;
                  v75 = 1;
                  v76 = 1;
                  v77 = 1;
                  v78 = 1;
                  v79 = 1;
                  LODWORD(v129) = 1;
                  LODWORD(v135) = 1;
                }

                else
                {
                  sub_1D1741A90(v128, &v141[v126[30]], &qword_1EC642590, qword_1D1E71260);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C9C8, &qword_1D1EA11A8);
                  v144 = 27;
                  sub_1D1C2B028(&qword_1EC64C9F8, &qword_1EC644750);
                  v109 = v137;
                  sub_1D1E68D7C();
                  v137 = v109;
                  if (v109)
                  {
                    (*(v138 + 8))(v140, v139);
                    LODWORD(v133) = 0;
                    LODWORD(v132) = 0;
                    LODWORD(v130) = 0;
                    LODWORD(v131) = 0;
                    LODWORD(v139) = 0;
                    LODWORD(v138) = 0;
                    LODWORD(v140) = 0;
                    LODWORD(v128) = 1;
                    v75 = 1;
                    v76 = 1;
                    v77 = 1;
                    v78 = 1;
                    v79 = 1;
                    LODWORD(v129) = 1;
                    LODWORD(v135) = 1;
                    LODWORD(v134) = 1;
                  }

                  else
                  {
                    *&v141[v126[31]] = v143;
                    v144 = 28;
                    sub_1D1C2B290();
                    v110 = v137;
                    sub_1D1E68D7C();
                    v137 = v110;
                    if (v110)
                    {
                      (*(v138 + 8))(v140, v139);
                      LODWORD(v132) = 0;
                      LODWORD(v130) = 0;
                      LODWORD(v131) = 0;
                      LODWORD(v139) = 0;
                      LODWORD(v138) = 0;
                      LODWORD(v140) = 0;
                      LODWORD(v128) = 1;
                      v75 = 1;
                      v76 = 1;
                      v77 = 1;
                      v78 = 1;
                      v79 = 1;
                      LODWORD(v129) = 1;
                      LODWORD(v135) = 1;
                      LODWORD(v134) = 1;
                      LODWORD(v133) = 1;
                    }

                    else
                    {
                      *&v141[v126[32]] = v143;
                      v144 = 29;
                      sub_1D1C2B2E4();
                      v111 = v137;
                      sub_1D1E68D7C();
                      v137 = v111;
                      if (v111)
                      {
                        (*(v138 + 8))(v140, v139);
                        LODWORD(v130) = 0;
                        LODWORD(v131) = 0;
                        LODWORD(v139) = 0;
                        LODWORD(v138) = 0;
                        LODWORD(v140) = 0;
                        LODWORD(v128) = 1;
                        v75 = 1;
                        v76 = 1;
                        v77 = 1;
                        v78 = 1;
                        v79 = 1;
                        LODWORD(v129) = 1;
                        LODWORD(v135) = 1;
                        LODWORD(v134) = 1;
                        LODWORD(v133) = 1;
                        LODWORD(v132) = 1;
                      }

                      else
                      {
                        *&v141[v126[33]] = v143;
                        type metadata accessor for StaticSoftwareUpdate(0);
                        LOBYTE(v143) = 30;
                        sub_1D1C2AFE0(&qword_1EC64C370, type metadata accessor for StaticSoftwareUpdate);
                        v112 = v137;
                        sub_1D1E68CBC();
                        v137 = v112;
                        if (v112)
                        {
                          (*(v138 + 8))(v140, v139);
                          LODWORD(v131) = 0;
                          LODWORD(v139) = 0;
                          LODWORD(v138) = 0;
                          LODWORD(v140) = 0;
                          LODWORD(v128) = 1;
                          v75 = 1;
                          v76 = 1;
                          v77 = 1;
                          v78 = 1;
                          v79 = 1;
                          LODWORD(v129) = 1;
                          LODWORD(v135) = 1;
                          LODWORD(v134) = 1;
                          LODWORD(v133) = 1;
                          LODWORD(v132) = 1;
                          LODWORD(v130) = 1;
                        }

                        else
                        {
                          sub_1D1741A90(v129, &v141[v126[34]], &qword_1EC644760, &unk_1D1E9E530);
                          v144 = 31;
                          sub_1D1BC934C();
                          v113 = v137;
                          sub_1D1E68D7C();
                          v137 = v113;
                          if (v113 || (v141[v126[35]] = v143, v144 = 32, v114 = v137, sub_1D1E68D7C(), (v137 = v114) != 0))
                          {
                            (*(v138 + 8))(v140, v139);
                            LODWORD(v139) = 0;
                            LODWORD(v138) = 0;
                            LODWORD(v140) = 0;
                            LODWORD(v128) = 1;
                            v75 = 1;
                            v76 = 1;
                            v77 = 1;
                            v78 = 1;
                            v79 = 1;
                            LODWORD(v129) = 1;
                            LODWORD(v135) = 1;
                            LODWORD(v134) = 1;
                            LODWORD(v133) = 1;
                            LODWORD(v132) = 1;
                            LODWORD(v130) = 1;
                            LODWORD(v131) = 1;
                          }

                          else
                          {
                            *&v141[v126[36]] = v143;
                            LOBYTE(v143) = 33;
                            v115 = v137;
                            sub_1D1E68CBC();
                            v137 = v115;
                            if (v115)
                            {
                              (*(v138 + 8))(v140, v139);
                              LODWORD(v138) = 0;
                              LODWORD(v140) = 0;
                              LODWORD(v128) = 1;
                              v75 = 1;
                              v76 = 1;
                              v77 = 1;
                              v78 = 1;
                              v79 = 1;
                              LODWORD(v129) = 1;
                              LODWORD(v135) = 1;
                              LODWORD(v134) = 1;
                              LODWORD(v133) = 1;
                              LODWORD(v132) = 1;
                              LODWORD(v130) = 1;
                              LODWORD(v131) = 1;
                              LODWORD(v139) = 1;
                            }

                            else
                            {
                              sub_1D1741A90(v130, &v141[v126[37]], &qword_1EC642590, qword_1D1E71260);
                              LOBYTE(v143) = 34;
                              v116 = v137;
                              v117 = sub_1D1E68CFC();
                              v137 = v116;
                              if (v116)
                              {
                                goto LABEL_81;
                              }

                              v118 = &v141[v126[38]];
                              *v118 = v117;
                              v118[2] = BYTE2(v117) & 1;
                              type metadata accessor for EndpointPath(0);
                              LOBYTE(v143) = 35;
                              sub_1D1C2AFE0(&qword_1EC646B80, type metadata accessor for EndpointPath);
                              v119 = v137;
                              sub_1D1E68CBC();
                              v137 = v119;
                              if (v119)
                              {
LABEL_81:
                                (*(v138 + 8))(v140, v139);
                                LODWORD(v140) = 0;
                                LODWORD(v128) = 1;
                                v75 = 1;
                                v76 = 1;
                                v77 = 1;
                                v78 = 1;
                                v79 = 1;
                                LODWORD(v129) = 1;
                                LODWORD(v135) = 1;
                                LODWORD(v134) = 1;
                                LODWORD(v133) = 1;
                                LODWORD(v132) = 1;
                                LODWORD(v130) = 1;
                                LODWORD(v131) = 1;
                                LODWORD(v139) = 1;
                                LODWORD(v138) = 1;
                              }

                              else
                              {
                                sub_1D1741A90(v131, &v141[v126[39]], &qword_1EC644870, &unk_1D1EABA00);
                                type metadata accessor for StaticService.AutoClimateControlConfig(0);
                                LOBYTE(v143) = 36;
                                sub_1D1C2AFE0(&qword_1EC64CA10, type metadata accessor for StaticService.AutoClimateControlConfig);
                                v120 = v137;
                                sub_1D1E68CBC();
                                v137 = v120;
                                if (!v120)
                                {
                                  (*(v138 + 8))(v140, v139);
                                  v121 = v141;
                                  sub_1D1741A90(v132, &v141[v126[40]], &qword_1EC64C9B0, &qword_1D1EA1190);
                                  sub_1D1C2AEC4(v121, v133, type metadata accessor for StaticService);
                                  __swift_destroy_boxed_opaque_existential_1(v142);
                                  return sub_1D1C2AF2C(v121, type metadata accessor for StaticService);
                                }

                                (*(v138 + 8))(v140, v139);
                                LODWORD(v128) = 1;
                                v75 = 1;
                                v76 = 1;
                                v77 = 1;
                                v78 = 1;
                                v79 = 1;
                                LODWORD(v129) = 1;
                                LODWORD(v135) = 1;
                                LODWORD(v134) = 1;
                                LODWORD(v133) = 1;
                                LODWORD(v132) = 1;
                                LODWORD(v130) = 1;
                                LODWORD(v131) = 1;
                                LODWORD(v139) = 1;
                                LODWORD(v138) = 1;
                                LODWORD(v140) = 1;
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v55 = v122[0];
  __swift_destroy_boxed_opaque_existential_1(v142);
  v56 = v136[1];
  v57 = v141;
  result = v56(v141, v123);
  if (v55)
  {
    if (v128)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v63 = *&v57[v126[5] + 8];

    if (v128)
    {
LABEL_6:
      v58 = v126;
      v59 = v141;
      result = v56(&v141[v126[11]], v123);
      if ((v75 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_24;
    }
  }

  v59 = v141;
  v58 = v126;
  if (!v75)
  {
LABEL_7:
    if (v76)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  result = sub_1D1741A30(&v59[v58[13]], &qword_1EC644620, &unk_1D1E75A00);
  if (v76)
  {
LABEL_8:
    result = sub_1D1741A30(&v59[v58[14]], &qword_1EC642570, &qword_1D1E6C6A0);
    if ((v77 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  if (!v77)
  {
LABEL_9:
    if (v78)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = sub_1D1741A30(&v59[v58[15]], &qword_1EC642570, &qword_1D1E6C6A0);
  if (v78)
  {
LABEL_10:
    v60 = *&v59[v58[19]];

    if ((v79 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  if (!v79)
  {
LABEL_11:
    if (v129)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  v64 = *&v59[v58[20] + 8];

  if (v129)
  {
LABEL_12:
    v61 = *&v59[v58[25] + 8];

    if ((v135 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  if (!v135)
  {
LABEL_13:
    if (v134)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  result = sub_1D1741A30(&v59[v58[29]], &qword_1EC642590, qword_1D1E71260);
  if (v134)
  {
LABEL_14:
    result = sub_1D1741A30(&v59[v58[30]], &qword_1EC642590, qword_1D1E71260);
    if ((v133 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_32;
  }

LABEL_31:
  if (!v133)
  {
LABEL_15:
    if (v132)
    {
      goto LABEL_16;
    }

    goto LABEL_33;
  }

LABEL_32:
  v65 = *&v59[v58[31]];

  if (v132)
  {
LABEL_16:
    v62 = *&v59[v58[32]];

    if ((v130 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_34;
  }

LABEL_33:
  if (!v130)
  {
LABEL_17:
    if (v131)
    {
      goto LABEL_18;
    }

    goto LABEL_35;
  }

LABEL_34:
  v66 = &v59[v58[33]];
  v68 = *v66;
  v67 = *(v66 + 1);

  if (v131)
  {
LABEL_18:
    result = sub_1D1741A30(&v59[v58[34]], &qword_1EC644760, &unk_1D1E9E530);
    if ((v139 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_36;
  }

LABEL_35:
  if (!v139)
  {
LABEL_19:
    if (v138)
    {
      goto LABEL_20;
    }

LABEL_37:
    if (!v140)
    {
      return result;
    }

    return sub_1D1741A30(&v59[v58[39]], &qword_1EC644870, &unk_1D1EABA00);
  }

LABEL_36:
  v69 = *&v59[v58[36]];

  if ((v138 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_20:
  result = sub_1D1741A30(&v59[v58[37]], &qword_1EC642590, qword_1D1E71260);
  if ((v140 & 1) == 0)
  {
    return result;
  }

  return sub_1D1741A30(&v59[v58[39]], &qword_1EC644870, &unk_1D1EABA00);
}

uint64_t sub_1D1C19F08()
{
  sub_1D1E6920C();
  StaticService.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1C19F4C()
{
  sub_1D1E6920C();
  StaticService.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t StaticService.foregroundColor.getter()
{
  if (StaticService.isAlarmingSensorDetected.getter())
  {
    return sub_1D1E6733C();
  }

  v2 = type metadata accessor for StaticService(0);
  if (*(v0 + *(v2 + 112)) == 53)
  {
    v3 = *(v0 + *(v2 + 104));
  }

  return ServiceKind.foregroundColor.getter();
}

Swift::Int StaticService.isAlarmingSensorDetected.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticService(0) + 128));
  v4 = v1;
  v3 = 74;
  v5 = StaticCharacteristicsBag.int(for:)(&v3);
  if (v5.is_nil || v5.value != 1)
  {
    v4 = v1;
    v3 = 127;
    v5 = StaticCharacteristicsBag.int(for:)(&v3);
    if (v5.is_nil || v5.value != 1)
    {
      v4 = v1;
      v3 = 21;
      v5 = StaticCharacteristicsBag.int(for:)(&v3);
      if (v5.is_nil || v5.value != 1)
      {
        v4 = v1;
        v3 = 18;
        v5 = StaticCharacteristicsBag.int(for:)(&v3);
        v5.value = !v5.is_nil && v5.value == 1;
      }
    }
  }

  return v5.value;
}

uint64_t StaticService.serviceKinds.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436B8, &unk_1D1E71E00);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D1E739C0;
  *(v1 + 32) = *(v0 + *(type metadata accessor for StaticService(0) + 104));
  return v1;
}

uint64_t StaticService.primaryServiceKind.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StaticService(0);
  *a1 = *(v1 + *(result + 104));
  return result;
}

uint64_t sub_1D1C1A17C(uint64_t a1)
{
  if (StaticService.isAlarmingSensorDetected.getter())
  {
    return sub_1D1E6733C();
  }

  if (*(v1 + *(a1 + 112)) == 53)
  {
    v4 = *(v1 + *(a1 + 104));
  }

  return ServiceKind.foregroundColor.getter();
}

double sub_1D1C1A1D8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436B8, &unk_1D1E71E00);
  v3 = swift_allocObject();
  *&result = 1;
  *(v3 + 16) = xmmword_1D1E739C0;
  *(v3 + 32) = *(v1 + *(a1 + 104));
  return result;
}

uint64_t sub_1D1C1A240@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(v2 + *(result + 112));
  if (v3 == 53)
  {
    LOBYTE(v3) = *(v2 + *(result + 104));
  }

  *a2 = v3;
  return result;
}

uint64_t sub_1D1C1A26C(uint64_t a1)
{
  v2 = (v1 + *(a1 + 80));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_1D1C1A2AC(uint64_t a1)
{
  *(v1 + 48) = 2;
  *(v1 + 16) = xmmword_1D1E88490;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  v3 = swift_task_alloc();
  *(v1 + 56) = v3;
  *v3 = v1;
  v3[1] = sub_1D186E3E4;

  return StaticService.toggle(options:context:)(a1, (v1 + 48), (v1 + 16));
}

uint64_t sub_1D1C1A378(char a1)
{
  *(v1 + 32) = a1;
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1D1C1A408;

  return StaticService.service.getter();
}

uint64_t sub_1D1C1A408(uint64_t a1)
{
  v2 = *(*v1 + 16);
  v4 = *v1;
  *(*v1 + 24) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1C1A508, 0, 0);
}

uint64_t sub_1D1C1A508()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 32);
    v3 = v1;
    HMService.shouldShowInDashboard.setter(v2);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1D1C1A58C(char a1)
{
  *(v1 + 32) = a1;
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1D1C1A61C;

  return StaticService.service.getter();
}

uint64_t sub_1D1C1A61C(uint64_t a1)
{
  v2 = *(*v1 + 16);
  v4 = *v1;
  *(*v1 + 24) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1C1A71C, 0, 0);
}

uint64_t sub_1D1C1A71C()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 32);
    v3 = v1;
    HMService.contributesToHomeStatus.setter(v2);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t StaticService.set(includeInStatus:)(char a1)
{
  *(v1 + 32) = a1;
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1D1C1A830;

  return StaticService.service.getter();
}

uint64_t sub_1D1C1A830(uint64_t a1)
{
  v2 = *(*v1 + 16);
  v4 = *v1;
  *(*v1 + 24) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1C1A930, 0, 0);
}

uint64_t sub_1D1C1A930()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 32);
    v3 = v1;
    HMService.contributesToHomeStatus.setter(v2);
  }

  v4 = *(v0 + 8);

  return v4();
}

void *sub_1D1C1AA10()
{
  result = sub_1D179ACDC(&unk_1F4D5ED28);
  off_1EE07AB38 = result;
  return result;
}

uint64_t StaticService.staticCharacteristic(for:)@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for StaticService(0) + 128));

  sub_1D1747C74(sub_1D1C2B338, v3, a1);
}

uint64_t sub_1D1C1AC10(char *a1, uint64_t (*a2)(char *))
{
  v4 = *a1;
  v8 = *(v2 + *(type metadata accessor for StaticService(0) + 128));
  v7 = v4;

  v5 = a2(&v7);

  return v5;
}

uint64_t sub_1D1C1B098(uint64_t a1)
{
  v3 = type metadata accessor for StaticCharacteristic();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + *(type metadata accessor for StaticService(0) + 128));
  if (!*(v8 + 16))
  {
    return 0;
  }

  v9 = sub_1D171D140(a1);
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  sub_1D1C2AEC4(*(v8 + 56) + *(v4 + 72) * v9, v7, type metadata accessor for StaticCharacteristic);
  v11 = &v7[*(v3 + 24)];
  if (v11[16] == 8)
  {
    v12 = *v11;
    v13 = *(v11 + 1);
  }

  else
  {
    v12 = 0;
  }

  sub_1D1C2AF2C(v7, type metadata accessor for StaticCharacteristic);
  return v12;
}

uint64_t StaticService.roomId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for StaticService(0);
  sub_1D17721A0(*(v1 + *(v7 + 76)), v6);
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  result = (*(v9 + 48))(v6, 1, v8);
  if (result != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1C1B34C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v12 - v7;
  sub_1D17721A0(*(v2 + *(a1 + 76)), &v12 - v7);
  v9 = sub_1D1E66A7C();
  v10 = *(v9 - 8);
  result = (*(v10 + 48))(v8, 1, v9);
  if (result != 1)
  {
    return (*(v10 + 32))(a2, v8, v9);
  }

  __break(1u);
  return result;
}

uint64_t static StaticService.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for StaticService(0) + 24);
  if (*(a2 + v4))
  {
    return 0;
  }

  if ((*(a1 + v4) & 1) == 0)
  {

    JUMPOUT(0x1D3890070);
  }

  return 1;
}

uint64_t sub_1D1C1B4CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 24);
  if (*(a2 + v3))
  {
    return 0;
  }

  if (*(a1 + v3) != 1)
  {
    JUMPOUT(0x1D3890070);
  }

  return 1;
}

uint64_t sub_1D1C1B4F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 24);
  if (*(a1 + v3))
  {
    return 1;
  }

  if (*(a2 + v3) == 1)
  {
    return 0;
  }

  return (MEMORY[0x1D3890070](a2, a1) ^ 1) & 1;
}

uint64_t sub_1D1C1B554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 24);
  if (*(a2 + v3))
  {
    return 1;
  }

  if (*(a1 + v3) == 1)
  {
    return 0;
  }

  return (MEMORY[0x1D3890070](a1, a2) ^ 1) & 1;
}

uint64_t sub_1D1C1B5A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 24);
  if (*(a1 + v3))
  {
    return 0;
  }

  if (*(a2 + v3) != 1)
  {
    JUMPOUT(0x1D3890070);
  }

  return 1;
}

uint64_t Collection<>.staticCharacteristic(for:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for StaticCharacteristic();
  v5 = *(a1 + 8);
  v6 = sub_1D1E67A4C();
  if (*(v6 + 16))
  {
    v7 = *(v4 - 8);
    sub_1D1C2AEC4(v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), a2, type metadata accessor for StaticCharacteristic);

    v8 = 0;
  }

  else
  {

    v7 = *(v4 - 8);
    v8 = 1;
  }

  return (*(v7 + 56))(a2, v8, 1, v4);
}

uint64_t sub_1D1C1B714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for StaticService(0) + 128));

  sub_1D1747C74(sub_1D1C2D7A0, v3, a2);
}

uint64_t sub_1D1C1B7A4@<X0>(uint64_t *a1@<X0>, void **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, void *a7@<X6>, uint64_t *a8@<X8>)
{
  v70 = a7;
  v69 = a6;
  v67 = a4;
  v68 = a5;
  v74 = a8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436E8, &unk_1D1E71E40);
  v76 = *(v11 - 8);
  v77 = v11;
  v12 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v67 - v13;
  v78 = sub_1D1E66A7C();
  v72 = *(v78 - 8);
  v15 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v78);
  v17 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v67 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436C8, &unk_1D1E97C40);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v67 - v24;
  v75 = *a1;
  v26 = *a2;
  sub_1D1741C08(a3, v21, &unk_1EC649E30, &unk_1D1E91250);
  v27 = type metadata accessor for StateSnapshot(0);
  v28 = (*(*(v27 - 8) + 48))(v21, 1, v27);
  v73 = v25;
  if (v28 == 1)
  {
    sub_1D1741A30(v21, &unk_1EC649E30, &unk_1D1E91250);
    v29 = type metadata accessor for StaticAccessory(0);
    (*(*(v29 - 8) + 56))(v25, 1, 1, v29);
LABEL_7:
    v33 = v74;
    goto LABEL_8;
  }

  v30 = *&v21[*(v27 + 32)];

  sub_1D1C2AF2C(v21, type metadata accessor for StateSnapshot);
  v31 = [v26 uniqueIdentifier];
  sub_1D1E66A5C();

  if (!*(v30 + 16))
  {

    (*(v72 + 8))(v17, v78);
    v41 = type metadata accessor for StaticAccessory(0);
    v25 = v73;
    (*(*(v41 - 8) + 56))(v73, 1, 1, v41);
    goto LABEL_7;
  }

  v32 = sub_1D1742188(v17);
  v33 = v74;
  if (v34)
  {
    v35 = v32;
    v36 = v74;
    v37 = *(v30 + 56);
    v38 = type metadata accessor for StaticAccessory(0);
    v39 = *(v38 - 8);
    v40 = v37 + *(v39 + 72) * v35;
    v33 = v36;
    v25 = v73;
    sub_1D1C2AEC4(v40, v73, type metadata accessor for StaticAccessory);
    (*(v72 + 8))(v17, v78);

    (*(v39 + 56))(v25, 0, 1, v38);
  }

  else
  {

    (*(v72 + 8))(v17, v78);
    v66 = type metadata accessor for StaticAccessory(0);
    v25 = v73;
    (*(*(v66 - 8) + 56))(v73, 1, 1, v66);
  }

LABEL_8:
  v43 = v70;
  v42 = v71;

  v44 = [v26 services];
  sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
  v45 = sub_1D1E67C1C();

  MEMORY[0x1EEE9AC00](v46);
  *(&v67 - 64) = 1;
  v48 = v67;
  v47 = v68;
  *(&v67 - 7) = v26;
  *(&v67 - 6) = v48;
  *(&v67 - 5) = v47;
  *(&v67 - 32) = v69;
  *(&v67 - 3) = v25;
  *(&v67 - 2) = v43;
  v49 = sub_1D17893E4(sub_1D1C094F4, (&v67 - 10), v45);

  v50 = v49[2];
  if (v50)
  {
    v71 = v42;
    v79 = MEMORY[0x1E69E7CC0];
    sub_1D178D2D8(0, v50, 0);
    v51 = v79;
    v52 = *(type metadata accessor for StaticService(0) - 8);
    v53 = *(v52 + 80);
    v70 = v49;
    v54 = v49 + ((v53 + 32) & ~v53);
    v55 = *(v52 + 72);
    v56 = (v72 + 16);
    do
    {
      v57 = *(v77 + 48);
      sub_1D1C2AEC4(v54, &v14[v57], type metadata accessor for StaticService);
      (*v56)(v14, &v14[v57], v78);
      v79 = v51;
      v59 = *(v51 + 16);
      v58 = *(v51 + 24);
      if (v59 >= v58 >> 1)
      {
        sub_1D178D2D8(v58 > 1, v59 + 1, 1);
        v51 = v79;
      }

      *(v51 + 16) = v59 + 1;
      sub_1D1741A90(v14, v51 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v59, &qword_1EC6436E8, &unk_1D1E71E40);
      v54 += v55;
      --v50;
    }

    while (v50);

    v25 = v73;
    v33 = v74;
    v42 = v71;
    if (*(v51 + 16))
    {
      goto LABEL_14;
    }
  }

  else
  {

    v51 = MEMORY[0x1E69E7CC0];
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_14:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AB8, &qword_1D1E7E7A0);
      v60 = sub_1D1E68BCC();
      goto LABEL_17;
    }
  }

  v60 = MEMORY[0x1E69E7CC8];
LABEL_17:
  v79 = v60;
  sub_1D1CBFC40(v51, 1, &v79);

  if (v42)
  {

    __break(1u);
  }

  else
  {
    v61 = v79;
    v62 = v75;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v79 = v62;
    sub_1D1C2CC84(v61, sub_1D1CB5348, 0, isUniquelyReferenced_nonNull_native, &v79);

    v64 = v79;
    result = sub_1D1741A30(v25, &qword_1EC6436C8, &unk_1D1E97C40);
    *v33 = v64;
  }

  return result;
}

uint64_t sub_1D1C1BF94@<X0>(void **a1@<X0>, char a2@<W1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v152 = a5;
  v153 = a8;
  v151 = a7;
  v150 = a6;
  v149 = a4;
  v154 = a3;
  v145 = a9;
  v11 = sub_1D1E66A7C();
  v140 = *(v11 - 8);
  v141 = v11;
  v12 = *(v140 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v134 = &v131 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v132 = &v131 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436C8, &unk_1D1E97C40);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v144 = &v131 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v131 - v20;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v23 = *(*(updated - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](updated - 8);
  v148 = &v131 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v143 = &v131 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v27 - 8);
  v31 = &v131 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v29);
  v147 = &v131 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v133 = &v131 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v142 = &v131 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v40 = &v131 - v39;
  MEMORY[0x1EEE9AC00](v38);
  v146 = &v131 - v41;
  v156 = *a1;
  if ((a2 & 1) == 0)
  {
    goto LABEL_8;
  }

  v42 = v21;
  v43 = v31;
  if (qword_1EE07AB40 != -1)
  {
    swift_once();
  }

  v44 = qword_1EE081448;
  v45 = [v156 serviceType];
  v46 = sub_1D1E6781C();
  v48 = v47;

  v49._countAndFlagsBits = v46;
  v49._object = v48;
  ServiceKind.init(rawValue:)(v49);
  v50 = v160 == 53 ? 0 : v160;
  v31 = v43;
  v21 = v42;
  if ((sub_1D171951C(v50, v44) & 1) == 0)
  {
    v87 = type metadata accessor for StaticService(0);
    return (*(*(v87 - 8) + 56))(v145, 1, 1, v87);
  }

  else
  {
LABEL_8:
    v139 = v40;
    v51 = [v154 services];
    v155 = sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
    v52 = sub_1D1E67C1C();

    v160 = MEMORY[0x1E69E7CC0];
    if (v52 >> 62)
    {
      goto LABEL_56;
    }

    for (i = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D1E6873C())
    {
      v54 = v156;
      v138 = v31;
      if (!i)
      {
        break;
      }

      v55 = 0;
      v157 = v52 & 0xC000000000000001;
      v31 = (v52 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if (v157)
        {
          v56 = MEMORY[0x1D3891EF0](v55, v52);
        }

        else
        {
          if (v55 >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_53;
          }

          v56 = *(v52 + 8 * v55 + 32);
        }

        v57 = v56;
        v58 = v55 + 1;
        if (__OFADD__(v55, 1))
        {
          break;
        }

        v59 = [v54 linkedServices];
        if (v59)
        {
          v60 = v59;
          v61 = sub_1D1E67C1C();

          v159 = v57;
          MEMORY[0x1EEE9AC00](v62);
          v129 = &v159;
          v63 = v158;
          LOBYTE(v60) = sub_1D18B8754(sub_1D1C2D638, (&v131 - 4), v61);
          v158 = v63;

          if (v60)
          {
            sub_1D1E6896C();
            v64 = *(v160 + 16);
            sub_1D1E689AC();
            sub_1D1E689BC();
            sub_1D1E6897C();
          }

          else
          {
          }

          v54 = v156;
        }

        else
        {
        }

        ++v55;
        if (v58 == i)
        {
          v65 = v160;
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      ;
    }

    v65 = MEMORY[0x1E69E7CC0];
LABEL_26:

    MEMORY[0x1EEE9AC00](v66);
    v67 = v149;
    v69 = v151;
    v68 = v152;
    *(&v131 - 6) = v149;
    *(&v131 - 5) = v68;
    v70 = v153;
    v71 = v154;
    *(&v131 - 4) = v154;
    v72 = v150;
    *(&v131 - 24) = v150;
    v129 = v69;
    v130 = v70;
    v73 = v158;
    v136 = sub_1D17893E4(sub_1D1C2D654, (&v131 - 8), v65);
    v137 = v73;

    v52 = sub_1D1C20678(v156, v68, v71, v67, v72, v69, v70);
    v74 = [v71 services];
    v75 = sub_1D1E67C1C();

    v135 = v52;
    if (v75 >> 62)
    {
      v31 = sub_1D1E6873C();
      if (v31)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v31 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v31)
      {
LABEL_28:
        v76 = 0;
        v157 = v75 & 0xFFFFFFFFFFFFFF8;
        v158 = v75 & 0xC000000000000001;
        v77 = *MEMORY[0x1E696CA88];
        while (1)
        {
          if (v158)
          {
            v78 = MEMORY[0x1D3891EF0](v76, v75);
          }

          else
          {
            if (v76 >= *(v157 + 16))
            {
              goto LABEL_55;
            }

            v78 = *(v75 + 8 * v76 + 32);
          }

          v79 = v78;
          v52 = v76 + 1;
          if (__OFADD__(v76, 1))
          {
            goto LABEL_54;
          }

          v80 = [v78 serviceType];
          v81 = sub_1D1E6781C();
          v83 = v82;

          if (v81 == sub_1D1E6781C() && v83 == v84)
          {
            break;
          }

          v86 = sub_1D1E6904C();

          if (v86)
          {
            goto LABEL_43;
          }

          ++v76;
          if (v52 == v31)
          {
            goto LABEL_58;
          }
        }

LABEL_43:

        sub_1D1C2AEC4(v149, v143, type metadata accessor for StateSnapshot.UpdateType);
        LOBYTE(v160) = v150;
        v89 = type metadata accessor for StaticService(0);
        v90 = *(v89 - 8);
        v91 = *(v90 + 56);
        v91(v142, 1, 1, v89);
        v92 = v131;
        sub_1D1741C08(v151, v131, &qword_1EC6436C8, &unk_1D1E97C40);
        v93 = type metadata accessor for StaticAccessory(0);
        v94 = (*(*(v93 - 8) + 48))(v92, 1, v93);
        v95 = v132;
        if (v94 == 1)
        {
          sub_1D1741A30(v92, &qword_1EC6436C8, &unk_1D1E97C40);
        }

        else
        {
          v96 = *(v92 + *(v93 + 80));

          sub_1D1C2AF2C(v92, type metadata accessor for StaticAccessory);
          v97 = [v79 uniqueIdentifier];
          sub_1D1E66A5C();

          if (*(v96 + 16))
          {
            v98 = sub_1D1742188(v95);
            v99 = v139;
            if (v100)
            {
              sub_1D1C2AEC4(*(v96 + 56) + *(v90 + 72) * v98, v133, type metadata accessor for StaticService);
              (*(v140 + 8))(v95, v141);

              v101 = 0;
            }

            else
            {

              (*(v140 + 8))(v95, v141);
              v101 = 1;
            }

            goto LABEL_50;
          }

          (*(v140 + 8))(v95, v141);
        }

        v101 = 1;
        v99 = v139;
LABEL_50:
        v102 = v133;
        v91(v133, v101, 1, v89);
        v103 = v153;

        v104 = v154;
        v105 = v152;
        sub_1D1C1D1F4(v143, v105, v79, v104, &v160, MEMORY[0x1E69E7CC0], v142, MEMORY[0x1E69E7CC0], v99, v102, v103);
        goto LABEL_59;
      }
    }

LABEL_58:

    v106 = type metadata accessor for StaticService(0);
    v99 = v139;
    (*(*(v106 - 8) + 56))(v139, 1, 1, v106);
LABEL_59:
    v107 = v146;
    sub_1D1741A90(v99, v146, &qword_1EC6436F0, &qword_1D1E99BC0);
    sub_1D1C2AEC4(v149, v148, type metadata accessor for StateSnapshot.UpdateType);
    LOBYTE(v160) = v150;
    sub_1D1741C08(v107, v147, &qword_1EC6436F0, &qword_1D1E99BC0);
    v108 = v144;
    sub_1D1741C08(v151, v144, &qword_1EC6436C8, &unk_1D1E97C40);
    v109 = type metadata accessor for StaticAccessory(0);
    if ((*(*(v109 - 8) + 48))(v108, 1, v109) == 1)
    {
      v110 = v156;
      v111 = v156;
      sub_1D1741A30(v108, &qword_1EC6436C8, &unk_1D1E97C40);
      v112 = type metadata accessor for StaticService(0);
      v113 = v138;
      (*(*(v112 - 8) + 56))(v138, 1, 1, v112);
    }

    else
    {
      v114 = *(v108 + *(v109 + 80));
      v115 = v156;

      sub_1D1C2AF2C(v108, type metadata accessor for StaticAccessory);
      v116 = [v115 uniqueIdentifier];
      v117 = v134;
      sub_1D1E66A5C();

      if (*(v114 + 16) && (v118 = sub_1D1742188(v117), (v119 & 1) != 0))
      {
        v120 = v118;
        v121 = *(v114 + 56);
        v122 = type metadata accessor for StaticService(0);
        v123 = *(v122 - 8);
        v124 = v121 + *(v123 + 72) * v120;
        v113 = v138;
        sub_1D1C2AEC4(v124, v138, type metadata accessor for StaticService);
        (*(v140 + 8))(v117, v141);

        (*(v123 + 56))(v113, 0, 1, v122);
      }

      else
      {

        (*(v140 + 8))(v117, v141);
        v125 = type metadata accessor for StaticService(0);
        v113 = v138;
        (*(*(v125 - 8) + 56))(v138, 1, 1, v125);
      }

      v110 = v156;
    }

    v126 = v153;

    v127 = v154;
    v128 = v152;
    sub_1D1C1D1F4(v148, v128, v110, v127, &v160, v136, v147, v135, v145, v113, v126);
    return sub_1D1741A30(v146, &qword_1EC6436F0, &qword_1D1E99BC0);
  }
}

uint64_t sub_1D1C1CDA8@<X0>(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, unsigned __int8 a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v55 = a8;
  v53 = a3;
  v54 = a7;
  v50 = a6;
  v52 = a4;
  v11 = sub_1D1E66A7C();
  v48 = *(v11 - 8);
  v49 = v11;
  v12 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v47 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436C8, &unk_1D1E97C40);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v47 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v47 - v23;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v26 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated - 8);
  v28 = &v47 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *a1;
  sub_1D1C2AEC4(a2, v28, type metadata accessor for StateSnapshot.UpdateType);
  v56 = a5;
  v30 = type metadata accessor for StaticService(0);
  v31 = *(v30 - 8);
  v32 = *(v31 + 56);
  v51 = v24;
  v32(v24, 1, 1, v30);
  sub_1D1741C08(v50, v17, &qword_1EC6436C8, &unk_1D1E97C40);
  v33 = type metadata accessor for StaticAccessory(0);
  if ((*(*(v33 - 8) + 48))(v17, 1, v33) == 1)
  {
    v34 = v29;
    sub_1D1741A30(v17, &qword_1EC6436C8, &unk_1D1E97C40);
    v35 = 1;
    v36 = v29;
  }

  else
  {
    v37 = *&v17[*(v33 + 80)];
    v50 = v29;
    v38 = v29;

    sub_1D1C2AF2C(v17, type metadata accessor for StaticAccessory);
    v39 = [v38 uniqueIdentifier];
    v40 = v47;
    sub_1D1E66A5C();

    if (*(v37 + 16) && (v41 = sub_1D1742188(v40), (v42 & 1) != 0))
    {
      sub_1D1C2AEC4(*(v37 + 56) + *(v31 + 72) * v41, v22, type metadata accessor for StaticService);
      (*(v48 + 8))(v40, v49);

      v35 = 0;
    }

    else
    {

      (*(v48 + 8))(v40, v49);
      v35 = 1;
    }

    v36 = v50;
  }

  v32(v22, v35, 1, v30);
  v43 = v54;

  v44 = v52;
  v45 = v53;
  return sub_1D1C1D1F4(v28, v45, v36, v44, &v56, MEMORY[0x1E69E7CC0], v51, MEMORY[0x1E69E7CC0], v55, v22, v43);
}

uint64_t sub_1D1C1D1F4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, int *a3@<X2>, unsigned __int8 *a4@<X3>, unsigned __int8 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v446 = a8;
  v447 = a6;
  v499 = a5;
  v500 = a2;
  v501 = a3;
  v497 = a1;
  v448 = a9;
  v495 = a10;
  v437 = type metadata accessor for StaticTelevisionProfile();
  v13 = *(*(v437 - 8) + 64);
  MEMORY[0x1EEE9AC00](v437);
  v436 = &v422[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644620, &unk_1D1E75A00);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v487 = &v422[-v17];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v486 = &v422[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = MEMORY[0x1EEE9AC00](v20);
  v485 = &v422[-v23];
  v24 = MEMORY[0x1EEE9AC00](v22);
  v459 = &v422[-v25];
  MEMORY[0x1EEE9AC00](v24);
  v494 = &v422[-v26];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644870, &unk_1D1EABA00);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v27 - 8);
  v458 = &v422[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v29);
  v488 = &v422[-v31];
  v476 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting(0);
  v490 = *(v476 - 8);
  v32 = *(v490 + 64);
  MEMORY[0x1EEE9AC00](v476);
  v453 = &v422[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CA18, &qword_1D1EABE10);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x1EEE9AC00](v34 - 8);
  v455 = &v422[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v36);
  v493 = &v422[-v38];
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v40 = *(*(v39 - 8) + 64);
  v41 = MEMORY[0x1EEE9AC00](v39 - 8);
  v465 = &v422[-((v42 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v43 = MEMORY[0x1EEE9AC00](v41);
  v464 = &v422[-v44];
  v45 = MEMORY[0x1EEE9AC00](v43);
  v463 = &v422[-v46];
  v47 = MEMORY[0x1EEE9AC00](v45);
  v438 = &v422[-v48];
  v49 = MEMORY[0x1EEE9AC00](v47);
  v468 = &v422[-v50];
  MEMORY[0x1EEE9AC00](v49);
  v450 = &v422[-v51];
  v52 = sub_1D1E66A7C();
  v498 = *(v52 - 8);
  v53 = *(v498 + 64);
  v54 = MEMORY[0x1EEE9AC00](v52);
  v435 = &v422[-((v55 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v56 = MEMORY[0x1EEE9AC00](v54);
  v483 = &v422[-v57];
  v58 = MEMORY[0x1EEE9AC00](v56);
  v482 = &v422[-v59];
  MEMORY[0x1EEE9AC00](v58);
  v461 = &v422[-v60];
  v472 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  v61 = *(*(v472 - 8) + 64);
  v62 = MEMORY[0x1EEE9AC00](v472);
  v473 = &v422[-((v63 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v64 = MEMORY[0x1EEE9AC00](v62);
  v451 = &v422[-v65];
  MEMORY[0x1EEE9AC00](v64);
  v431 = &v422[-v66];
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v68 = *(*(updated - 8) + 64);
  v69 = MEMORY[0x1EEE9AC00](updated);
  v474 = &v422[-((v70 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v71 = MEMORY[0x1EEE9AC00](v69);
  v462 = &v422[-v72];
  v73 = MEMORY[0x1EEE9AC00](v71);
  v452 = &v422[-v74];
  v75 = MEMORY[0x1EEE9AC00](v73);
  v449 = &v422[-v76];
  MEMORY[0x1EEE9AC00](v75);
  v78 = &v422[-v77];
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C9B0, &qword_1D1EA1190);
  v80 = *(*(v79 - 8) + 64);
  v81 = MEMORY[0x1EEE9AC00](v79 - 8);
  v430 = &v422[-((v82 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v83 = MEMORY[0x1EEE9AC00](v81);
  v429 = &v422[-v84];
  v85 = MEMORY[0x1EEE9AC00](v83);
  v428 = &v422[-v86];
  MEMORY[0x1EEE9AC00](v85);
  v88 = &v422[-v87];
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v90 = *(*(v89 - 8) + 64);
  v91 = MEMORY[0x1EEE9AC00](v89 - 8);
  v478 = &v422[-((v92 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v93 = MEMORY[0x1EEE9AC00](v91);
  v481 = &v422[-v94];
  v95 = MEMORY[0x1EEE9AC00](v93);
  v480 = &v422[-v96];
  v97 = MEMORY[0x1EEE9AC00](v95);
  v460 = &v422[-v98];
  v99 = MEMORY[0x1EEE9AC00](v97);
  v427 = &v422[-v100];
  v101 = MEMORY[0x1EEE9AC00](v99);
  v434 = &v422[-v102];
  v103 = MEMORY[0x1EEE9AC00](v101);
  v467 = &v422[-v104];
  v105 = MEMORY[0x1EEE9AC00](v103);
  v432 = &v422[-v106];
  v107 = MEMORY[0x1EEE9AC00](v105);
  v433 = &v422[-v108];
  v109 = MEMORY[0x1EEE9AC00](v107);
  v475 = &v422[-v110];
  v111 = MEMORY[0x1EEE9AC00](v109);
  v426 = &v422[-v112];
  v113 = MEMORY[0x1EEE9AC00](v111);
  v115 = &v422[-v114];
  v116 = MEMORY[0x1EEE9AC00](v113);
  v118 = &v422[-v117];
  v119 = MEMORY[0x1EEE9AC00](v116);
  v121 = &v422[-v120];
  MEMORY[0x1EEE9AC00](v119);
  v123 = &v422[-v122];
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644760, &unk_1D1E9E530);
  v125 = *(*(v124 - 8) + 64);
  v126 = MEMORY[0x1EEE9AC00](v124 - 8);
  v477 = &v422[-((v127 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v126);
  v445 = *v499;
  v442 = &v422[-v128];
  sub_1D1C21E18(a4, &v422[-v128]);
  v129 = a7;
  v130 = v52;
  v484 = v129;
  v443 = sub_1D1C22058(v129);
  v131 = v501;
  v441 = sub_1D1C22294(v501, a4);
  v440 = v132;
  v479 = v123;
  sub_1D1C22840(a4, v131, v123);
  v444 = v121;
  v133 = v121;
  v134 = v498;
  sub_1D1C22C84(a4, v500, v133);
  v135 = v497;
  v499 = a4;
  v439 = sub_1D1C22FB4(v497, a4);
  v136 = type metadata accessor for StaticService.AutoClimateControlConfig(0);
  v466 = *(v136 - 8);
  v137 = *(v466 + 56);
  v491 = v136;
  v492 = v88;
  v457 = v466 + 56;
  v456 = v137;
  v137(v88, 1, 1);
  sub_1D1C2AEC4(v135, v78, type metadata accessor for StateSnapshot.UpdateType);
  v489 = updated;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v139 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
  v496 = v130;
  if (EnumCaseMultiPayload != 11)
  {
    sub_1D1C2AF2C(v78, type metadata accessor for StateSnapshot.UpdateType);
    v154 = v493;
    v159 = v131;
    v156 = v490;
    v155 = v491;
    v157 = v468;
    v158 = v475;
    goto LABEL_12;
  }

  v140 = *v78;
  v424 = v78[8];
  v423 = v78[9];
  v141 = *(v78 + 3);
  v471 = *(v78 + 2);
  v454 = v141;
  v470 = *(v78 + 4);
  LODWORD(v469) = v78[40];
  v425 = v140;
  v142 = [v140 uniqueIdentifier];
  sub_1D1E66A5C();

  v143 = *(v134 + 56);
  v144 = 1;
  v143(v118, 0, 1, v130);
  v145 = [v131 accessory];
  if (v145)
  {
    v146 = v145;
    v147 = [v145 uniqueIdentifier];

    sub_1D1E66A5C();
    v144 = 0;
  }

  v148 = v431;
  v149 = v496;
  v143(v115, v144, 1, v496);
  v150 = *(v472 + 48);
  sub_1D1741C08(v118, v148, &qword_1EC642590, qword_1D1E71260);
  v151 = v149;
  sub_1D1741C08(v115, v148 + v150, &qword_1EC642590, qword_1D1E71260);
  v152 = *(v498 + 48);
  if (v152(v148, 1, v151) != 1)
  {
    v160 = v426;
    sub_1D1741C08(v148, v426, &qword_1EC642590, qword_1D1E71260);
    if (v152(v148 + v150, 1, v151) != 1)
    {
      v172 = v498;
      v173 = v461;
      (*(v498 + 32))(v461, v148 + v150, v151);
      sub_1D1C2AFE0(&qword_1EE07D170, MEMORY[0x1E69695A8]);
      v174 = v151;
      v175 = sub_1D1E6775C();

      v176 = *(v172 + 8);
      v176(v173, v174);
      sub_1D1741A30(v115, &qword_1EC642590, qword_1D1E71260);
      sub_1D1741A30(v118, &qword_1EC642590, qword_1D1E71260);
      v176(v160, v174);
      sub_1D1741A30(v148, &qword_1EC642590, qword_1D1E71260);
      v154 = v493;
      v156 = v490;
      v155 = v491;
      v157 = v468;
      v139 = 0x1FA970000uLL;
      v158 = v475;
      if (v175)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    sub_1D1741A30(v115, &qword_1EC642590, qword_1D1E71260);
    sub_1D1741A30(v118, &qword_1EC642590, qword_1D1E71260);
    (*(v498 + 8))(v160, v151);
    v139 = 0x1FA970000;
LABEL_10:
    sub_1D1741A30(v148, &qword_1EC642980, &unk_1D1E6E6E0);
    v154 = v493;
    v156 = v490;
    v155 = v491;
    v157 = v468;
    v158 = v475;
LABEL_11:

    v159 = v501;
LABEL_12:
    v161 = v450;
    sub_1D1741C08(v495, v450, &qword_1EC6436F0, &qword_1D1E99BC0);
    v162 = type metadata accessor for StaticService(0);
    if ((*(*(v162 - 8) + 48))(v161, 1, v162) == 1)
    {
      v163 = &qword_1EC6436F0;
      v164 = &qword_1D1E99BC0;
      v165 = v161;
    }

    else
    {
      v166 = &v161[*(v162 + 160)];
      v167 = v428;
      sub_1D1741C08(v166, v428, &qword_1EC64C9B0, &qword_1D1EA1190);
      sub_1D1C2AF2C(v161, type metadata accessor for StaticService);
      if ((*(v466 + 48))(v167, 1, v155) != 1)
      {
        v169 = *(v167 + 1);
        v168 = *(v167 + 2);
        v170 = *(v167 + 3);
        v171 = v167[32];
        v450 = *v167;
        v471 = v169;
        v470 = v170;
        LODWORD(v469) = v171;
        sub_1D1C2B3B4(v450, v169, v168);
        sub_1D1C2AF2C(v167, type metadata accessor for StaticService.AutoClimateControlConfig);
        goto LABEL_22;
      }

      v163 = &qword_1EC64C9B0;
      v164 = &qword_1D1EA1190;
      v165 = v167;
    }

    sub_1D1741A30(v165, v163, v164);
    v450 = 0;
    v471 = 0;
    v470 = 0;
    LODWORD(v469) = 0;
    v168 = 1;
    goto LABEL_22;
  }

  sub_1D1741A30(v115, &qword_1EC642590, qword_1D1E71260);
  sub_1D1741A30(v118, &qword_1EC642590, qword_1D1E71260);
  v153 = v152(v148 + v150, 1, v151);
  v139 = 0x1FA970000;
  if (v153 != 1)
  {
    goto LABEL_10;
  }

  sub_1D1741A30(v148, &qword_1EC642590, qword_1D1E71260);
  v154 = v493;
  v156 = v490;
  v155 = v491;
  v157 = v468;
  v158 = v475;
LABEL_19:
  v177 = 256;
  if (!v423)
  {
    v177 = 0;
  }

  v450 = (v177 | v424);
  v159 = v501;
  v168 = v454;
LABEL_22:
  v178 = v449;
  v181 = *(v156 + 56);
  v179 = v156 + 56;
  v180 = v181;
  v181(v154, 1, 1, v476);
  sub_1D1C2AEC4(v497, v178, type metadata accessor for StateSnapshot.UpdateType);
  if (swift_getEnumCaseMultiPayload() == 9)
  {
    v454 = v180;
    v490 = v179;
    v182 = *v178;
    v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AD58, &unk_1D1EA1810);
    sub_1D1C2B18C(v178 + *(v183 + 48), v453, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
    v184 = [v182 uniqueIdentifier];
    sub_1D1E66A5C();

    v185 = v158;
    v186 = v139;
    v187 = *(v498 + 56);
    v188 = 1;
    v187(v185, 0, 1, v496);
    v189 = [v159 (v186 + 3192)];
    v190 = v168;
    if (v189)
    {
      v191 = v189;
      v192 = [v189 uniqueIdentifier];

      v193 = v433;
      sub_1D1E66A5C();

      v188 = 0;
      v194 = v432;
    }

    else
    {
      v194 = v432;
      v193 = v433;
    }

    v195 = v496;
    v187(v193, v188, 1, v496);
    v196 = *(v472 + 48);
    v197 = v475;
    v198 = v451;
    sub_1D1741C08(v475, v451, &qword_1EC642590, qword_1D1E71260);
    v199 = v195;
    v200 = v198;
    sub_1D1741C08(v193, &v198[v196], &qword_1EC642590, qword_1D1E71260);
    v201 = *(v498 + 48);
    if (v201(v198, 1, v199) == 1)
    {

      v202 = v199;
      sub_1D1741A30(v193, &qword_1EC642590, qword_1D1E71260);
      v203 = v451;
      sub_1D1741A30(v197, &qword_1EC642590, qword_1D1E71260);
      v204 = v493;
      sub_1D1741A30(v493, &qword_1EC64CA18, &qword_1D1EABE10);
      v205 = v201(&v203[v196], 1, v202);
      v159 = v501;
      v139 = 0x1FA970000;
      v168 = v190;
      v154 = v204;
      v180 = v454;
      if (v205 == 1)
      {
        sub_1D1741A30(v203, &qword_1EC642590, qword_1D1E71260);
        v155 = v491;
LABEL_41:
        v214 = v455;
        sub_1D1C2B18C(v453, v455, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
        v215 = v214;
        v216 = 0;
        goto LABEL_42;
      }
    }

    else
    {
      sub_1D1741C08(v198, v194, &qword_1EC642590, qword_1D1E71260);
      v206 = v201(&v198[v196], 1, v199);
      v168 = v190;
      v180 = v454;
      if (v206 != 1)
      {
        v219 = v498;
        v220 = &v200[v196];
        v221 = v461;
        (*(v498 + 32))(v461, v220, v199);
        sub_1D1C2AFE0(&qword_1EE07D170, MEMORY[0x1E69695A8]);
        v222 = v199;
        v223 = sub_1D1E6775C();

        v224 = *(v219 + 8);
        v224(v221, v222);
        sub_1D1741A30(v433, &qword_1EC642590, qword_1D1E71260);
        sub_1D1741A30(v475, &qword_1EC642590, qword_1D1E71260);
        v154 = v493;
        sub_1D1741A30(v493, &qword_1EC64CA18, &qword_1D1EABE10);
        v224(v194, v222);
        sub_1D1741A30(v451, &qword_1EC642590, qword_1D1E71260);
        v159 = v501;
        v155 = v491;
        v139 = 0x1FA970000uLL;
        if (v223)
        {
          goto LABEL_41;
        }

        goto LABEL_33;
      }

      v207 = v199;
      sub_1D1741A30(v433, &qword_1EC642590, qword_1D1E71260);
      v203 = v451;
      sub_1D1741A30(v475, &qword_1EC642590, qword_1D1E71260);
      v154 = v493;
      sub_1D1741A30(v493, &qword_1EC64CA18, &qword_1D1EABE10);
      (*(v498 + 8))(v194, v207);
      v159 = v501;
      v139 = 0x1FA970000;
    }

    sub_1D1741A30(v203, &qword_1EC642980, &unk_1D1E6E6E0);
    v155 = v491;
LABEL_33:
    sub_1D1C2AF2C(v453, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
    v157 = v468;
    goto LABEL_34;
  }

  sub_1D1741A30(v154, &qword_1EC64CA18, &qword_1D1EABE10);
  sub_1D1C2AF2C(v178, type metadata accessor for StateSnapshot.UpdateType);
LABEL_34:
  sub_1D1741C08(v495, v157, &qword_1EC6436F0, &qword_1D1E99BC0);
  v208 = type metadata accessor for StaticService(0);
  if ((*(*(v208 - 8) + 48))(v157, 1, v208) == 1)
  {
    v209 = &qword_1EC6436F0;
    v210 = &qword_1D1E99BC0;
    v211 = v157;
  }

  else
  {
    v212 = v157 + *(v208 + 160);
    v213 = v429;
    sub_1D1741C08(v212, v429, &qword_1EC64C9B0, &qword_1D1EA1190);
    sub_1D1C2AF2C(v157, type metadata accessor for StaticService);
    if ((*(v466 + 48))(v213, 1, v155) != 1)
    {
      v217 = &v213[v155[5]];
      v218 = v213;
      v214 = v455;
      sub_1D1741C08(v217, v455, &qword_1EC64CA18, &qword_1D1EABE10);
      sub_1D1C2AF2C(v218, type metadata accessor for StaticService.AutoClimateControlConfig);
      goto LABEL_43;
    }

    v209 = &qword_1EC64C9B0;
    v210 = &qword_1D1EA1190;
    v211 = v213;
  }

  sub_1D1741A30(v211, v209, v210);
  v214 = v455;
  v215 = v455;
  v216 = 1;
LABEL_42:
  v180(v215, v216, 1, v476);
LABEL_43:
  sub_1D1741A90(v214, v154, &qword_1EC64CA18, &qword_1D1EABE10);
  v225 = v452;
  sub_1D1C2AEC4(v497, v452, type metadata accessor for StateSnapshot.UpdateType);
  if (swift_getEnumCaseMultiPayload() == 10)
  {
    v454 = v168;
    v226 = *v225;
    v227 = *(v225 + 1);
    v228 = [*v225 uniqueIdentifier];
    v229 = v467;
    sub_1D1E66A5C();

    v230 = v139;
    v231 = *(v498 + 56);
    v232 = 1;
    v231(v229, 0, 1, v496);
    v233 = [v159 (v230 + 3192)];
    if (v233)
    {
      v234 = v233;
      v235 = [v233 uniqueIdentifier];

      v236 = v434;
      sub_1D1E66A5C();

      v232 = 0;
    }

    else
    {
      v236 = v434;
    }

    v238 = v496;
    v231(v236, v232, 1, v496);
    v239 = *(v472 + 48);
    v240 = v467;
    v241 = v473;
    sub_1D1741C08(v467, v473, &qword_1EC642590, qword_1D1E71260);
    v242 = v238;
    sub_1D1741C08(v236, &v241[v239], &qword_1EC642590, qword_1D1E71260);
    v243 = *(v498 + 48);
    if (v243(v241, 1, v242) == 1)
    {

      sub_1D1741A30(v236, &qword_1EC642590, qword_1D1E71260);
      sub_1D1741A30(v240, &qword_1EC642590, qword_1D1E71260);
      sub_1D1741A30(v492, &qword_1EC64C9B0, &qword_1D1EA1190);
      v244 = v243(&v473[v239], 1, v242);
      v168 = v454;
      v154 = v493;
      if (v244 == 1)
      {
        sub_1D1741A30(v473, &qword_1EC642590, qword_1D1E71260);
        v237 = v458;
        v155 = v491;
        goto LABEL_62;
      }
    }

    else
    {
      v245 = v473;
      v246 = v427;
      sub_1D1741C08(v473, v427, &qword_1EC642590, qword_1D1E71260);
      v247 = v243(&v245[v239], 1, v242);
      v154 = v493;
      if (v247 != 1)
      {
        v255 = v498;
        v256 = v473;
        v257 = v461;
        (*(v498 + 32))(v461, &v473[v239], v242);
        sub_1D1C2AFE0(&qword_1EE07D170, MEMORY[0x1E69695A8]);
        v258 = v242;
        v259 = sub_1D1E6775C();

        v260 = *(v255 + 8);
        v260(v257, v258);
        sub_1D1741A30(v434, &qword_1EC642590, qword_1D1E71260);
        sub_1D1741A30(v467, &qword_1EC642590, qword_1D1E71260);
        sub_1D1741A30(v492, &qword_1EC64C9B0, &qword_1D1EA1190);
        v260(v427, v258);
        sub_1D1741A30(v256, &qword_1EC642590, qword_1D1E71260);
        v237 = v458;
        v155 = v491;
        v168 = v454;
        if (v259)
        {
          goto LABEL_62;
        }

        goto LABEL_54;
      }

      sub_1D1741A30(v434, &qword_1EC642590, qword_1D1E71260);
      sub_1D1741A30(v467, &qword_1EC642590, qword_1D1E71260);
      sub_1D1741A30(v492, &qword_1EC64C9B0, &qword_1D1EA1190);
      (*(v498 + 8))(v246, v242);
      v168 = v454;
    }

    sub_1D1741A30(v473, &qword_1EC642980, &unk_1D1E6E6E0);
    v237 = v458;
    v155 = v491;
LABEL_54:

    goto LABEL_55;
  }

  sub_1D1741A30(v492, &qword_1EC64C9B0, &qword_1D1EA1190);
  sub_1D1C2AF2C(v225, type metadata accessor for StateSnapshot.UpdateType);
  v237 = v458;
LABEL_55:
  v248 = v438;
  sub_1D1741C08(v495, v438, &qword_1EC6436F0, &qword_1D1E99BC0);
  v249 = type metadata accessor for StaticService(0);
  if ((*(*(v249 - 8) + 48))(v248, 1, v249) == 1)
  {
    v250 = &qword_1EC6436F0;
    v251 = &qword_1D1E99BC0;
    v252 = v248;
  }

  else
  {
    v253 = &v248[*(v249 + 160)];
    v254 = v430;
    sub_1D1741C08(v253, v430, &qword_1EC64C9B0, &qword_1D1EA1190);
    sub_1D1C2AF2C(v248, type metadata accessor for StaticService);
    if ((*(v466 + 48))(v254, 1, v155) != 1)
    {
      v227 = *&v254[v155[6]];

      sub_1D1C2AF2C(v254, type metadata accessor for StaticService.AutoClimateControlConfig);
      goto LABEL_62;
    }

    v250 = &qword_1EC64C9B0;
    v251 = &qword_1D1EA1190;
    v252 = v254;
  }

  sub_1D1741A30(v252, v250, v251);
  v227 = 0;
LABEL_62:
  v261 = v499;
  v262 = v456;
  v263 = v492;
  sub_1D1741C08(v154, &v492[v155[5]], &qword_1EC64CA18, &qword_1D1EABE10);
  v264 = v471;
  *v263 = v450;
  *(v263 + 8) = v264;
  v265 = v470;
  *(v263 + 16) = v168;
  *(v263 + 24) = v265;
  *(v263 + 32) = v469;
  *(v263 + v155[6]) = v227;
  v262(v263, 0, 1, v155);
  LODWORD(v490) = [v261 isCalibrating];
  v266 = sub_1D1E6854C();
  if (v266 & 0x10000) != 0 || (v267 = v266, v268 = sub_1D1E682DC(), (v269))
  {
    v270 = type metadata accessor for EndpointPath(0);
    (*(*(v270 - 8) + 56))(v237, 1, 1, v270);
    v271 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
  }

  else
  {
    v272 = v268;
    v273 = v500;
    v271 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
    v274 = [v273 uniqueIdentifier];
    sub_1D1E66A5C();

    v275 = type metadata accessor for EndpointPath(0);
    *(v237 + *(v275 + 20)) = v272;
    *(v237 + *(v275 + 24)) = v267;
    (*(*(v275 - 8) + 56))(v237, 0, 1, v275);
  }

  sub_1D1741A90(v237, v488, &qword_1EC644870, &unk_1D1EABA00);
  v276 = sub_1D1E669FC();
  v277 = *(*(v276 - 8) + 56);
  v278 = 1;
  v277(v494, 1, 1, v276);
  v279 = [v261 lastSeenStatus];
  v280 = v459;
  if (v279)
  {
    v281 = v279;
    v282 = [v279 lastSeenDate];

    sub_1D1E669BC();
    v278 = 0;
  }

  v283 = v494;
  sub_1D1741A30(v494, &qword_1EC642570, &qword_1D1E6C6A0);
  v277(v280, v278, 1, v276);
  sub_1D1741A90(v280, v283, &qword_1EC642570, &qword_1D1E6C6A0);
  v284 = v499;
  v285 = [v499 lastSeenStatus];
  if (v285)
  {
    v286 = v285;
    v287 = [v285 lowBatteryStatus];

    v288 = 2 * (v287 != 1);
    if (v287 == 2)
    {
      v288 = 1;
    }
  }

  else
  {
    v288 = 2;
  }

  LODWORD(v489) = v288;
  v289 = v501;
  LODWORD(v476) = [v284 supportsCHIP];
  LODWORD(v475) = [v284 requiresThreadRouter];
  v290 = [v289 v271[61]];
  sub_1D1E66A5C();

  LODWORD(v473) = [v289 isPrimaryService];
  v291 = sub_1D1A1185C();
  if (v291 == 2)
  {
    v292 = [v289 serviceType];
    v293 = sub_1D1E6781C();
    v295 = v294;

    v296._countAndFlagsBits = v293;
    v296._object = v295;
    ServiceKind.init(rawValue:)(v296);
    if (v503 == 53)
    {
      v297 = 0;
    }

    else
    {
      v297 = v503;
    }

    v291 = sub_1D17C4E00(v297, &unk_1F4D65120);
  }

  LODWORD(v472) = v291;
  v298 = v498;
  v299 = [v284 v271[61]];
  sub_1D1E66A5C();

  v300 = [v289 mediaSourceIdentifier];
  v470 = v300;
  if (v300)
  {
    v301 = v300;
    v471 = [v300 integerValue];
  }

  else
  {
    v471 = 0;
  }

  v302 = v284;
  v303 = v487;
  sub_1D1CE96D0(v302, v487);
  v304 = type metadata accessor for StaticDeviceMetadata();
  (*(*(v304 - 8) + 56))(v303, 0, 1, v304);
  HMService.dateAdded.getter(v485);
  sub_1D1741C08(v494, v486, &qword_1EC642570, &qword_1D1E6C6A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643350, &qword_1D1E72040);
  v305 = *(v298 + 72);
  v306 = (*(v298 + 80) + 32) & ~*(v298 + 80);
  v307 = swift_allocObject();
  *(v307 + 16) = xmmword_1D1E739C0;
  v308 = [v302 room];
  if (v308)
  {
    v309 = v308;
    v310 = [v308 v271[61]];

    v311 = v461;
    sub_1D1E66A5C();

    v312 = *(v498 + 32);
    v313 = v460;
    v314 = v496;
    v312(v460, v311, v496);
    v315 = *(v498 + 56);
    v315(v313, 0, 1, v314);
    v312(v307 + v306, v313, v314);
    v316 = v498;
  }

  else
  {
    v315 = *(v298 + 56);
    v317 = v460;
    v314 = v496;
    v315(v460, 1, 1, v496);
    v318 = [v500 roomForEntireHome];
    v319 = v271[61];
    v320 = v317;
    v321 = [v318 v319];

    sub_1D1E66A5C();
    v316 = v498;
    if ((*(v498 + 48))(v320, 1, v314) != 1)
    {
      sub_1D1741A30(v320, &qword_1EC642590, qword_1D1E71260);
    }
  }

  v322 = v463;
  v469 = sub_1D179BE14(v307);
  swift_setDeallocating();
  v323 = *(v316 + 8);
  v453 = (v316 + 8);
  v452 = v323;
  (v323)(v307 + v306, v314);
  swift_deallocClassInstance();
  v324 = [v302 room];
  if (v324)
  {
    v325 = v324;
    v326 = [v324 name];
  }

  else
  {
    v325 = [v500 roomForEntireHome];
    v326 = [v325 name];
  }

  v327 = v501;
  v328 = v326;

  v468 = sub_1D1E6781C();
  v467 = v329;

  LODWORD(v466) = HMService.shouldShowInDashboard.getter();
  LODWORD(v463) = HMAccessory.showAsIndividualTiles.getter();
  LODWORD(v461) = HMService.isFavorite.getter();
  if (HMService.contributesToHomeStatus.getter())
  {
    LODWORD(v460) = HMAccessory.contributesToHomeStatus.getter();
  }

  else
  {
    LODWORD(v460) = 0;
  }

  v459 = HMService.customIconSFSymbol.getter();
  v458 = v330;
  v331 = [v327 serviceType];
  v332 = sub_1D1E6781C();
  v334 = v333;

  v335._countAndFlagsBits = v332;
  v335._object = v334;
  ServiceKind.init(rawValue:)(v335);
  LODWORD(v454) = v503;
  v336 = [v327 serviceSubtype];
  if (v336)
  {
    v337 = v336;
    v338 = sub_1D1E6781C();
    v340 = v339;

    v341._countAndFlagsBits = v338;
    v341._object = v340;
    ServiceSubKind.init(rawValue:)(v341);
    v342 = v503;
    if (v503 == 5)
    {
      v342 = 0;
    }

    LODWORD(v457) = v342;
  }

  else
  {
    LODWORD(v457) = 0;
  }

  v343 = [v327 associatedServiceType];
  if (v343)
  {
    v344 = v343;
    v345 = sub_1D1E6781C();
    v347 = v346;

    v348._countAndFlagsBits = v345;
    v348._object = v347;
    ServiceKind.init(rawValue:)(v348);
    v349 = v503;
    if (v503 == 53)
    {
      v349 = 0;
    }
  }

  else
  {
    v349 = 53;
  }

  LODWORD(v455) = v349;
  v350 = v496;
  v351 = v498;
  sub_1D1741C08(v479, v480, &qword_1EC642590, qword_1D1E71260);
  sub_1D1741C08(v484, v322, &qword_1EC6436F0, &qword_1D1E99BC0);
  v352 = type metadata accessor for StaticService(0);
  v456 = *(v352 - 1);
  v353 = *(v456 + 6);
  if (v353(v322, 1, v352) == 1)
  {
    sub_1D1741A30(v322, &qword_1EC6436F0, &qword_1D1E99BC0);
    v354 = 1;
    v355 = v481;
  }

  else
  {
    v355 = v481;
    (*(v351 + 16))(v481, v322, v350);
    sub_1D1C2AF2C(v322, type metadata accessor for StaticService);
    v354 = 0;
  }

  v315(v355, v354, 1, v350);
  v356 = v462;
  sub_1D1C2AEC4(v497, v462, type metadata accessor for StateSnapshot.UpdateType);
  v357 = v464;
  sub_1D1741C08(v495, v464, &qword_1EC6436F0, &qword_1D1E99BC0);
  if (v353(v357, 1, v352) == 1)
  {
    sub_1D1741A30(v357, &qword_1EC6436F0, &qword_1D1E99BC0);
    v358 = 0;
  }

  else
  {
    v358 = *&v357[v352[32]];

    sub_1D1C2AF2C(v357, type metadata accessor for StaticService);
  }

  v359 = v465;
  v502 = v358;
  v360 = v501;
  StaticCharacteristicsBag.init(updateType:from:previousStaticCharacteristicsBag:coverages:)(v356, v360, &v502, a11, &v503);
  v465 = v503;
  v361 = v474;
  sub_1D1C2AEC4(v497, v474, type metadata accessor for StateSnapshot.UpdateType);
  sub_1D1741C08(v495, v359, &qword_1EC6436F0, &qword_1D1E99BC0);
  if (v353(v359, 1, v352) == 1)
  {
    sub_1D1741A30(v359, &qword_1EC6436F0, &qword_1D1E99BC0);
    v362 = 0;
    v363 = 0;
  }

  else
  {
    v364 = (v359 + v352[33]);
    v362 = *v364;
    v363 = v364[1];

    sub_1D1C2AF2C(v359, type metadata accessor for StaticService);
  }

  v365 = v500;
  v366 = v302;
  v367 = v360;
  v368 = [v366 lightProfiles];
  sub_1D1741B10(0, &qword_1EE079CF0, 0x1E696CBB8);
  sub_1D1791558();
  v369 = sub_1D1E6816C();

  v370 = sub_1D18DB57C(MEMORY[0x1E69E7CC0]);
  v371 = MEMORY[0x1EEE9AC00](v370);
  *&v422[-48] = v367;
  *&v422[-40] = v362;
  *&v422[-32] = v363;
  *&v422[-24] = v361;
  *&v422[-16] = v366;
  *&v422[-8] = v365;
  sub_1D18FC33C(v371, sub_1D1C2D680, &v422[-64], v369);
  v464 = v372;

  sub_1D1791518(v362);
  v373 = [v366 televisionProfiles];
  if (v373)
  {
    v374 = v373;
    v501 = v367;
    v451 = v365;
    sub_1D1741B10(0, &unk_1EE079CB8, 0x1E696CC88);
    v375 = sub_1D1E67C1C();

    v376 = sub_1D18DB798(MEMORY[0x1E69E7CC0]);
    if (v375 >> 62)
    {
LABEL_138:
      v421 = v376;
      v500 = (v375 & 0xFFFFFFFFFFFFFF8);
      v377 = sub_1D1E6873C();
      v376 = v421;
    }

    else
    {
      v500 = (v375 & 0xFFFFFFFFFFFFFF8);
      v377 = *((v375 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v462 = v366;
    v491 = v376;
    if (!v377)
    {
      goto LABEL_129;
    }

    v366 = 0;
    v499 = (v375 & 0xC000000000000001);
    while (2)
    {
      v378 = v366;
      while (1)
      {
        if (v499)
        {
          v376 = MEMORY[0x1D3891EF0](v378, v375);
        }

        else
        {
          if (v378 >= *(v500 + 2))
          {
            goto LABEL_137;
          }

          v376 = *(v375 + 8 * v378 + 32);
        }

        v379 = v376;
        v366 = (v378 + 1);
        if (__OFADD__(v378, 1))
        {
          __break(1u);
LABEL_137:
          __break(1u);
          goto LABEL_138;
        }

        v380 = [v376 services];
        sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
        v381 = sub_1D1E67C1C();

        v502 = v501;
        MEMORY[0x1EEE9AC00](v382);
        *&v422[-16] = &v502;
        LOBYTE(v380) = sub_1D18B8754(sub_1D1C2D7D0, &v422[-32], v381);

        if (v380)
        {
          break;
        }

        ++v378;
        if (v366 == v377)
        {
          goto LABEL_129;
        }
      }

      v383 = [v379 uniqueIdentifier];
      sub_1D1E66A5C();

      v384 = v462;
      v385 = v379;
      v386 = [v385 uniqueIdentifier];
      v387 = v436;
      sub_1D1E66A5C();

      v388 = [v384 uniqueIdentifier];
      v389 = &v387[*(v437 + 24)];
      sub_1D1E66A5C();

      v390 = [v385 mediaSourceDisplayOrder];
      if (v390)
      {
        v391 = v390;
        sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
        v392 = sub_1D1E67C1C();

        v393 = sub_1D1A058B4(v392);

        if (v393)
        {
          goto LABEL_128;
        }
      }

      else
      {
      }

      v393 = MEMORY[0x1E69E7CC0];
LABEL_128:
      v394 = v436;
      *&v436[*(v437 + 20)] = v393;
      v395 = v491;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v502 = v395;
      v397 = v394;
      v398 = v435;
      sub_1D17566F0(v397, v435, isUniquelyReferenced_nonNull_native);

      v376 = (v452)(v398, v496);
      v491 = v502;
      if (v366 != v377)
      {
        continue;
      }

      break;
    }

LABEL_129:
    v399 = v501;

    v400 = v462;
    v401 = v451;

    v361 = v474;
    goto LABEL_131;
  }

  v491 = sub_1D18DB798(MEMORY[0x1E69E7CC0]);

  v401 = v365;
  v399 = v367;
  v400 = v366;
LABEL_131:
  LODWORD(v474) = v470 == 0;
  v402 = v454;
  if (v454 == 53)
  {
    v402 = 0;
  }

  LODWORD(v499) = v402;
  sub_1D1C2AF2C(v361, type metadata accessor for StateSnapshot.UpdateType);
  v403 = v442;
  sub_1D1741C08(v442, v477, &qword_1EC644760, &unk_1D1E9E530);
  v404 = v446;
  if (!v446)
  {
    v404 = MEMORY[0x1E69E7CC0];
  }

  v501 = v404;
  v405 = v444;
  sub_1D1741C08(v444, v478, &qword_1EC642590, qword_1D1E71260);
  LODWORD(v500) = sub_1D1E6854C();

  sub_1D1741A30(v495, &qword_1EC6436F0, &qword_1D1E99BC0);
  sub_1D1741A30(v484, &qword_1EC6436F0, &qword_1D1E99BC0);
  sub_1D1C2AF2C(v497, type metadata accessor for StateSnapshot.UpdateType);
  sub_1D1741A30(v494, &qword_1EC642570, &qword_1D1E6C6A0);
  sub_1D1741A30(v493, &qword_1EC64CA18, &qword_1D1EABE10);
  sub_1D1741A30(v405, &qword_1EC642590, qword_1D1E71260);
  sub_1D1741A30(v479, &qword_1EC642590, qword_1D1E71260);
  sub_1D1741A30(v403, &qword_1EC644760, &unk_1D1E9E530);
  v406 = *(v498 + 32);
  v407 = v448;
  v408 = v496;
  v406(v448, v482, v496);
  v409 = (v407 + v352[5]);
  v410 = v440;
  *v409 = v441;
  v409[1] = v410;
  *(v407 + v352[6]) = v473;
  *(v407 + v352[7]) = v472 & 1;
  *(v407 + v352[8]) = v439 & 1;
  *(v407 + v352[9]) = v490;
  *(v407 + v352[10]) = v443;
  v406(v407 + v352[11], v483, v408);
  v411 = v407 + v352[12];
  *v411 = v471;
  *(v411 + 8) = v474;
  sub_1D1741A90(v487, v407 + v352[13], &qword_1EC644620, &unk_1D1E75A00);
  sub_1D1741A90(v485, v407 + v352[14], &qword_1EC642570, &qword_1D1E6C6A0);
  sub_1D1741A90(v486, v407 + v352[15], &qword_1EC642570, &qword_1D1E6C6A0);
  *(v407 + v352[16]) = v489;
  *(v407 + v352[17]) = v476;
  *(v407 + v352[18]) = v475;
  *(v407 + v352[19]) = v469;
  v412 = (v407 + v352[20]);
  v413 = v467;
  *v412 = v468;
  v412[1] = v413;
  *(v407 + v352[21]) = v466 & 1;
  *(v407 + v352[22]) = v463 & 1;
  *(v407 + v352[23]) = v461 & 1;
  *(v407 + v352[24]) = v460 & 1;
  v414 = (v407 + v352[25]);
  v415 = v458;
  *v414 = v459;
  v414[1] = v415;
  *(v407 + v352[26]) = v499;
  *(v407 + v352[27]) = v457;
  *(v407 + v352[28]) = v455;
  sub_1D1741A90(v480, v407 + v352[29], &qword_1EC642590, qword_1D1E71260);
  sub_1D1741A90(v481, v407 + v352[30], &qword_1EC642590, qword_1D1E71260);
  *(v407 + v352[31]) = v447;
  *(v407 + v352[32]) = v465;
  v416 = (v407 + v352[33]);
  v417 = v491;
  *v416 = v464;
  v416[1] = v417;
  sub_1D1741A90(v477, v407 + v352[34], &qword_1EC644760, &unk_1D1E9E530);
  *(v407 + v352[35]) = v445;
  *(v407 + v352[36]) = v501;
  sub_1D1741A90(v478, v407 + v352[37], &qword_1EC642590, qword_1D1E71260);
  v418 = v407 + v352[38];
  v419 = BYTE2(v500);
  *v418 = v500;
  *(v418 + 2) = v419 & 1;
  sub_1D1741A90(v488, v407 + v352[39], &qword_1EC644870, &unk_1D1EABA00);
  sub_1D1741A90(v492, v407 + v352[40], &qword_1EC64C9B0, &qword_1D1EA1190);
  return (*(v456 + 7))(v407, 0, 1, v352);
}

uint64_t sub_1D1C20678(void *a1, void *a2, void *a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v76 = a6;
  v77 = a7;
  v75 = a5;
  v74 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643700, &qword_1D1E71E58);
  v86 = *(v10 - 8);
  v87 = v10;
  v11 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v88 = &v73 - v12;
  v80 = a1;
  v13 = [a1 serviceType];
  v14 = sub_1D1E6781C();
  v16 = v15;

  v17._countAndFlagsBits = v14;
  v17._object = v16;
  ServiceKind.init(rawValue:)(v17);
  v18 = v92;
  if (v92 == 53)
  {
    v18 = 0;
  }

  LOBYTE(v92) = v18;
  if (ServiceKind.rawValue.getter() != 0xD000000000000024 || 0x80000001D1EB3130 != v19)
  {
    v14 = sub_1D1E6904C();

    if (v14)
    {
      goto LABEL_7;
    }

    v53 = [v80 serviceType];
    v14 = sub_1D1E6781C();
    v55 = v54;

    v56._countAndFlagsBits = v14;
    v56._object = v55;
    ServiceKind.init(rawValue:)(v56);
    v57 = v92;
    if (v92 == 53)
    {
      v57 = 0;
    }

    LOBYTE(v92) = v57;
    if (ServiceKind.rawValue.getter() != 0xD000000000000024 || 0x80000001D1EB2FE0 != v58)
    {
      v14 = sub_1D1E6904C();

      if ((v14 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_7;
    }
  }

LABEL_7:
  v20 = [a2 accessories];
  sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
  v21 = sub_1D1E67C1C();

  v92 = MEMORY[0x1E69E7CC0];
  v81 = v21;
  if (v21 >> 62)
  {
    goto LABEL_60;
  }

  for (i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D1E6873C())
  {
    v23 = MEMORY[0x1E69E7CC0];
    v78 = a3;
    v79 = a2;
    if (!i)
    {
      break;
    }

    v24 = 0;
    v84 = v81 & 0xFFFFFFFFFFFFFF8;
    v85 = v81 & 0xC000000000000001;
    v82 = i;
    v83 = v81 + 32;
    a3 = 0x80000001D1EB3580;
    while (2)
    {
      if (v85)
      {
        v25 = MEMORY[0x1D3891EF0](v24, v81);
      }

      else
      {
        if (v24 >= *(v84 + 16))
        {
          goto LABEL_59;
        }

        v25 = *(v83 + 8 * v24);
      }

      v14 = v25;
      v26 = __OFADD__(v24, 1);
      v27 = v24 + 1;
      if (!v26)
      {
        v28 = [v25 services];
        sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
        v29 = sub_1D1E67C1C();

        v89 = v14;
        v90 = v27;
        if (v29 >> 62)
        {
          v30 = sub_1D1E6873C();
        }

        else
        {
          v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v14 = 0;
        a2 = (v29 & 0xC000000000000001);
        do
        {
          if (v30 == v14)
          {

            goto LABEL_12;
          }

          if (a2)
          {
            v32 = MEMORY[0x1D3891EF0](v14, v29);
          }

          else
          {
            if (v14 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_57;
            }

            v32 = *(v29 + 8 * v14 + 32);
          }

          v33 = v32;
          if (__OFADD__(v14, 1))
          {
            __break(1u);
LABEL_57:
            __break(1u);
            goto LABEL_58;
          }

          v34 = [v32 serviceType];
          v35 = sub_1D1E6781C();
          v37 = v36;

          v38._countAndFlagsBits = v35;
          v38._object = v37;
          ServiceKind.init(rawValue:)(v38);
          v39 = v91;
          if (v91 == 53)
          {
            v39 = 0;
          }

          v91 = v39;
          if (ServiceKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB3580 == v40)
          {

            goto LABEL_33;
          }

          v31 = sub_1D1E6904C();

          ++v14;
        }

        while ((v31 & 1) == 0);

LABEL_33:
        sub_1D1E6896C();
        v41 = *(v92 + 2);
        sub_1D1E689AC();
        sub_1D1E689BC();
        sub_1D1E6897C();
LABEL_12:
        v24 = v90;
        if (v90 != v82)
        {
          continue;
        }

        v23 = v92;
        a3 = v78;
        a2 = v79;
        goto LABEL_37;
      }

      break;
    }

LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    ;
  }

LABEL_37:

  if ((v23 & 0x8000000000000000) != 0 || (v23 & 0x4000000000000000) != 0)
  {
    v42 = sub_1D1E6873C();
    if (!v42)
    {
      goto LABEL_62;
    }

LABEL_40:
    v92 = MEMORY[0x1E69E7CC0];
    sub_1D178DC40(0, v42 & ~(v42 >> 63), 0);
    if (v42 < 0)
    {
      __break(1u);

      __break(1u);
      return result;
    }

    v43 = 0;
    v44 = v92;
    do
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        v45 = MEMORY[0x1D3891EF0](v43, v23);
      }

      else
      {
        v45 = *(v23 + 8 * v43 + 32);
      }

      v46 = v45;
      v47 = *(v87 + 48);
      v48 = [v45 uniqueIdentifier];
      v49 = v88;
      sub_1D1E66A5C();

      *(v49 + v47) = v46;
      v92 = v44;
      v51 = *(v44 + 2);
      v50 = *(v44 + 3);
      if (v51 >= v50 >> 1)
      {
        sub_1D178DC40(v50 > 1, v51 + 1, 1);
        v49 = v88;
        v44 = v92;
      }

      ++v43;
      *(v44 + 2) = v51 + 1;
      sub_1D1741A90(v49, v44 + ((*(v86 + 80) + 32) & ~*(v86 + 80)) + *(v86 + 72) * v51, &qword_1EC643700, &qword_1D1E71E58);
    }

    while (v42 != v43);

    a3 = v78;
    a2 = v79;
    if (!*(v44 + 2))
    {
      goto LABEL_63;
    }

LABEL_49:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AE8, &unk_1D1E6E830);
    v52 = sub_1D1E68BCC();
    goto LABEL_64;
  }

  v42 = *(v23 + 16);
  if (v42)
  {
    goto LABEL_40;
  }

LABEL_62:

  v44 = MEMORY[0x1E69E7CC0];
  if (*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_49;
  }

LABEL_63:
  v52 = MEMORY[0x1E69E7CC8];
LABEL_64:
  v92 = v52;
  sub_1D1C2D090(v44, 1, &v92);

  v59 = v92;
  v60 = [a3 uniqueIdentifiersForBridgedAccessories];
  if (v60)
  {
    v61 = v60;
    sub_1D1E66A7C();
    v62 = sub_1D1E67C1C();

    MEMORY[0x1EEE9AC00](v63);
    v64 = v74;
    *(&v73 - 8) = v59;
    *(&v73 - 7) = v64;
    *(&v73 - 6) = a2;
    *(&v73 - 40) = v75;
    v65 = v80;
    *(&v73 - 4) = v76;
    *(&v73 - 3) = v65;
    *(&v73 - 2) = v77;
    v66 = sub_1D17868B8(sub_1D1C2D768, (&v73 - 10), v62);

    return v66;
  }

  v67 = [v80 linkedServices];
  if (v67)
  {
    v68 = v67;
    sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
    v69 = sub_1D1E67C1C();

    MEMORY[0x1EEE9AC00](v70);
    *(&v73 - 6) = v74;
    *(&v73 - 5) = a2;
    *(&v73 - 4) = a3;
    *(&v73 - 24) = v75;
    v71 = v77;
    *(&v73 - 2) = v76;
    *(&v73 - 1) = v71;
    v66 = sub_1D17893E4(sub_1D1C2D70C, (&v73 - 8), v69);

    return v66;
  }

  return 0;
}

uint64_t sub_1D1C20EE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v10 = v9;
  v83 = a7;
  v89 = a6;
  v88 = a5;
  v87 = a3;
  v93 = sub_1D1E66A7C();
  v84 = *(v93 - 8);
  v16 = *(v84 + 64);
  v17 = MEMORY[0x1EEE9AC00](v93);
  v90 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v85 = &v74 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436C8, &unk_1D1E97C40);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v94 = &v74 - v22;
  v23 = type metadata accessor for StaticService(0);
  v95 = *(v23 - 8);
  v24 = *(v95 + 64);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v81 = &v74 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v82 = &v74 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x1EEE9AC00](v28 - 8);
  v86 = &v74 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v92 = &v74 - v32;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v34 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated - 8);
  v91 = &v74 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a2 + 16))
  {
    return (*(v95 + 56))(a9, 1, 1, v23);
  }

  v36 = sub_1D1742188(a1);
  if ((v37 & 1) == 0)
  {
    return (*(v95 + 56))(a9, 1, 1, v23);
  }

  v80 = v23;
  v38 = *(*(a2 + 56) + 8 * v36);
  v39 = [v38 services];
  sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
  v40 = sub_1D1E67C1C();

  v100 = MEMORY[0x1E69E7CC0];
  if (v40 >> 62)
  {
    goto LABEL_47;
  }

  v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  v42 = v94;
  v79 = v38;
  if (v41)
  {
    v76 = a4;
    v77 = a8;
    v78 = a9;
    v75 = v10;
    v43 = 0;
    v96 = (v40 & 0xFFFFFFFFFFFFFF8);
    v97 = (v40 & 0xC000000000000001);
    a9 = 0x80000001D1EB3580;
    v10 = v41;
    while (1)
    {
      if (v97)
      {
        v45 = MEMORY[0x1D3891EF0](v43, v40);
      }

      else
      {
        if (v43 >= v96[2])
        {
          goto LABEL_46;
        }

        v45 = *(v40 + 8 * v43 + 32);
      }

      v46 = v45;
      v47 = (v43 + 1);
      if (__OFADD__(v43, 1))
      {
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        v41 = sub_1D1E6873C();
        goto LABEL_5;
      }

      a4 = v40;
      v48 = [v45 serviceType];
      a8 = sub_1D1E6781C();
      v50 = v49;

      v51._countAndFlagsBits = a8;
      v51._object = v50;
      ServiceKind.init(rawValue:)(v51);
      v52 = v99;
      if (v99 == 53)
      {
        v52 = 0;
      }

      v98[1] = v52;
      if (ServiceKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB3580 == v53)
      {
      }

      else
      {
        v38 = v53;
        v54 = sub_1D1E6904C();

        if ((v54 & 1) == 0)
        {

          goto LABEL_9;
        }
      }

      v38 = &v100;
      sub_1D1E6896C();
      v44 = *(v100 + 16);
      sub_1D1E689AC();
      sub_1D1E689BC();
      sub_1D1E6897C();
LABEL_9:
      v40 = a4;
      ++v43;
      if (v47 == v10)
      {
        v55 = v100;
        v10 = v75;
        a9 = v78;
        v38 = v79;
        a8 = v77;
        a4 = v76;
        v42 = v94;
        goto LABEL_23;
      }
    }
  }

  v55 = MEMORY[0x1E69E7CC0];
LABEL_23:

  if ((v55 & 0x8000000000000000) == 0 && (v55 & 0x4000000000000000) == 0)
  {
    if (*(v55 + 16))
    {
      goto LABEL_26;
    }

    goto LABEL_49;
  }

  result = sub_1D1E6873C();
  if (!result)
  {
LABEL_49:

    v23 = v80;
    return (*(v95 + 56))(a9, 1, 1, v23);
  }

LABEL_26:
  if ((v55 & 0xC000000000000001) != 0)
  {
    goto LABEL_52;
  }

  if (*(v55 + 16))
  {
    for (i = *(v55 + 32); ; i = MEMORY[0x1D3891EF0](0, v55))
    {
      v58 = i;

      sub_1D1C2AEC4(v87, v91, type metadata accessor for StateSnapshot.UpdateType);
      v98[0] = v88;
      v59 = v95 + 56;
      v97 = *(v95 + 56);
      v97(v92, 1, 1, v80);
      sub_1D1741C08(v89, v42, &qword_1EC6436C8, &unk_1D1E97C40);
      v60 = type metadata accessor for StaticAccessory(0);
      if ((*(*(v60 - 8) + 48))(v42, 1, v60) == 1)
      {
        sub_1D1741A30(v42, &qword_1EC6436C8, &unk_1D1E97C40);
        v61 = 1;
        v62 = v80;
        v63 = v86;
        goto LABEL_43;
      }

      v64 = *&v42[*(v60 + 80)];

      sub_1D1C2AF2C(v42, type metadata accessor for StaticAccessory);
      v65 = [v83 uniqueIdentifier];
      v66 = v85;
      sub_1D1E66A5C();

      if (!*(v64 + 16) || (v67 = sub_1D1742188(v66), (v68 & 1) == 0))
      {

        (*(v84 + 8))(v66, v93);
        v61 = 1;
        v62 = v80;
        goto LABEL_42;
      }

      v76 = a4;
      v77 = a8;
      v78 = a9;
      v69 = *(v64 + 56);
      v94 = *(v95 + 72);
      v42 = v82;
      sub_1D1C2AEC4(v69 + v94 * v67, v82, type metadata accessor for StaticService);

      v55 = v80;
      v38 = *&v42[*(v80 + 144)];

      sub_1D1C2AF2C(v42, type metadata accessor for StaticService);
      a4 = v38[2];
      if (!a4)
      {
        break;
      }

      v89 = v59;
      v96 = v58;
      v75 = v10;
      v70 = 0;
      v10 = (v84 + 8);
      v84 = (v84 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v71 = v38;
      a9 = v81;
      while (v70 < v71[2])
      {
        sub_1D1C2AEC4(v38 + ((*(v95 + 80) + 32) & ~*(v95 + 80)), a9, type metadata accessor for StaticService);
        v72 = [v96 uniqueIdentifier];
        a8 = v90;
        sub_1D1E66A5C();

        v55 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
        v42 = *v10;
        (*v10)(a8, v93);
        if (v55)
        {
          (v42)(v85, v93);

          v63 = v86;
          sub_1D1C2B18C(a9, v86, type metadata accessor for StaticService);
          v61 = 0;
          a9 = v78;
          v38 = v79;
          a8 = v77;
          a4 = v76;
          v62 = v80;
          v58 = v96;
          goto LABEL_43;
        }

        ++v70;
        sub_1D1C2AF2C(a9, type metadata accessor for StaticService);
        v38 = &v94[v38];
        if (a4 == v70)
        {
          a8 = v77;
          a4 = v76;
          v55 = v80;
          v58 = v96;
          goto LABEL_41;
        }
      }

      __break(1u);
LABEL_52:
      ;
    }

    v42 = *(v84 + 8);
    a8 = v77;
    a4 = v76;
LABEL_41:
    (v42)(v85, v93);

    v61 = 1;
    a9 = v78;
    v62 = v55;
LABEL_42:
    v63 = v86;
    v38 = v79;
LABEL_43:
    v97(v63, v61, 1, v62);

    v73 = a4;
    return sub_1D1C1D1F4(v91, v73, v58, v38, v98, MEMORY[0x1E69E7CC0], v92, MEMORY[0x1E69E7CC0], a9, v63, a8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D1C218AC@<X0>(id *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v62 = a3;
  v63 = a7;
  v58 = a2;
  v59 = a6;
  v65 = a5;
  v61 = a4;
  v10 = sub_1D1E66A7C();
  v55 = *(v10 - 8);
  v56 = v10;
  v11 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v54 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436C8, &unk_1D1E97C40);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v54 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v60 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v64 = &v54 - v21;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v23 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated - 8);
  v25 = &v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *a1;
  v27 = [*a1 serviceType];
  v28 = sub_1D1E6781C();
  v30 = v29;

  v31._countAndFlagsBits = v28;
  v31._object = v30;
  ServiceKind.init(rawValue:)(v31);
  v32 = v67;
  if (v67 == 53)
  {
    v32 = 0;
  }

  v66[1] = v32;
  if (ServiceKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB3580 == v33)
  {
  }

  else
  {
    v34 = sub_1D1E6904C();

    if ((v34 & 1) == 0)
    {
      v49 = type metadata accessor for StaticService(0);
      return (*(*(v49 - 8) + 56))(a8, 1, 1, v49);
    }
  }

  v57 = a8;
  sub_1D1C2AEC4(v58, v25, type metadata accessor for StateSnapshot.UpdateType);
  v66[0] = v65;
  v35 = type metadata accessor for StaticService(0);
  v36 = *(v35 - 8);
  v37 = *(v36 + 56);
  v37(v64, 1, 1, v35);
  sub_1D1741C08(v59, v16, &qword_1EC6436C8, &unk_1D1E97C40);
  v38 = type metadata accessor for StaticAccessory(0);
  if ((*(*(v38 - 8) + 48))(v16, 1, v38) == 1)
  {
    v39 = v26;
    sub_1D1741A30(v16, &qword_1EC6436C8, &unk_1D1E97C40);
  }

  else
  {
    v40 = *&v16[*(v38 + 80)];
    v41 = v26;

    sub_1D1C2AF2C(v16, type metadata accessor for StaticAccessory);
    v42 = [v41 uniqueIdentifier];
    v43 = v54;
    sub_1D1E66A5C();

    if (*(v40 + 16))
    {
      v44 = sub_1D1742188(v43);
      v45 = v43;
      v46 = v60;
      if (v47)
      {
        sub_1D1C2AEC4(*(v40 + 56) + *(v36 + 72) * v44, v60, type metadata accessor for StaticService);
        (*(v55 + 8))(v45, v56);

        v48 = 0;
      }

      else
      {

        (*(v55 + 8))(v45, v56);
        v48 = 1;
      }

      goto LABEL_15;
    }

    (*(v55 + 8))(v43, v56);
  }

  v48 = 1;
  v46 = v60;
LABEL_15:
  v37(v46, v48, 1, v35);
  v51 = v63;

  v52 = v61;
  v53 = v62;
  return sub_1D1C1D1F4(v25, v53, v26, v52, v66, MEMORY[0x1E69E7CC0], v64, MEMORY[0x1E69E7CC0], v57, v46, v51);
}

uint64_t sub_1D1C21E18@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [objc_opt_self() processInfo];
  v5 = [v4 processName];

  v6 = sub_1D1E6781C();
  v8 = v7;

  if (v6 == 0x6F42676E69727053 && v8 == 0xEB00000000647261)
  {
  }

  else
  {
    v10 = sub_1D1E6904C();

    if ((v10 & 1) == 0)
    {
      v11 = [a1 softwareUpdateController];
      if (v11)
      {
        v12 = v11;
        v13 = [v11 availableUpdate];

        if (v13)
        {
          v14 = a1;

          return sub_1D1D263B0(v13, v14, a2);
        }
      }

      if ([a1 isFirmwareUpdateAvailable])
      {
        v21 = [a1 uniqueIdentifier];
        sub_1D1E66A5C();

        v22 = type metadata accessor for StaticSoftwareUpdate(0);
        v23 = *(v22 + 20);
        type metadata accessor for StaticSoftwareUpdate.Kind(0);
        swift_storeEnumTagMultiPayload();
        v17 = *(*(v22 - 8) + 56);
        v19 = a2;
        v20 = 0;
        v18 = v22;
        goto LABEL_13;
      }
    }
  }

  v16 = type metadata accessor for StaticSoftwareUpdate(0);
  v17 = *(*(v16 - 8) + 56);
  v18 = v16;
  v19 = a2;
  v20 = 1;
LABEL_13:

  return v17(v19, v20, 1, v18);
}

uint64_t sub_1D1C22058(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v14[-v4];
  v6 = type metadata accessor for StaticService(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D1741C08(a1, v5, &qword_1EC6436F0, &qword_1D1E99BC0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1D1741A30(v5, &qword_1EC6436F0, &qword_1D1E99BC0);
    return 2;
  }

  sub_1D1C2B18C(v5, v10, type metadata accessor for StaticService);
  v12 = *(v6 + 128);
  v16 = *&v10[v12];
  v15 = 11;
  v17 = StaticCharacteristicsBag.int(for:)(&v15);
  if (!v17.is_nil && v17.value <= 9)
  {
    sub_1D1C2AF2C(v10, type metadata accessor for StaticService);
    return 1;
  }

  v16 = *&v10[v12];
  v15 = -124;
  v18 = StaticCharacteristicsBag.int(for:)(&v15);
  if (v18.is_nil)
  {
    sub_1D1C2AF2C(v10, type metadata accessor for StaticService);
  }

  else
  {
    value = v18.value;
    sub_1D1C2AF2C(v10, type metadata accessor for StaticService);
    if (value == 1)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1D1C22294(void *a1, void *a2)
{
  v4 = sub_1D1E66ADC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v59 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D1E677DC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v57 - v13;
  v15 = [a1 serviceType];
  v16 = sub_1D1E6781C();
  v18 = v17;

  v19._countAndFlagsBits = v16;
  v19._object = v18;
  ServiceKind.init(rawValue:)(v19);
  v20 = v61;
  if (v61 == 53)
  {
    v20 = 0;
  }

  v60 = v20;
  if (ServiceKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB34F0 == v21)
  {
  }

  else
  {
    v22 = sub_1D1E6904C();

    if ((v22 & 1) == 0)
    {
      v32 = [a1 name];
      v33 = sub_1D1E6781C();

      return v33;
    }
  }

  v58 = a1;
  v23 = [a2 category];
  v24 = [v23 categoryType];

  v25 = sub_1D1E6781C();
  v27 = v26;

  v28 = *MEMORY[0x1E696CA28];
  if (v25 == sub_1D1E6781C() && v27 == v29)
  {

LABEL_11:
    sub_1D1E6776C();
    v31 = v57;
    (*(v8 + 16))(v12, v14, v57);
    goto LABEL_18;
  }

  v30 = sub_1D1E6904C();

  if (v30)
  {
    goto LABEL_11;
  }

  v34 = [a2 category];
  v35 = [v34 categoryType];

  v36 = sub_1D1E6781C();
  v38 = v37;

  v39 = *MEMORY[0x1E696CA30];
  if (v36 == sub_1D1E6781C() && v38 == v40)
  {

    v31 = v57;
  }

  else
  {
    sub_1D1E6904C();

    v31 = v57;
  }

  sub_1D1E6776C();
  (*(v8 + 16))(v12, v14, v31);
LABEL_18:
  if (qword_1EE07A000 != -1)
  {
    swift_once();
  }

  v41 = qword_1EE0813C0;
  sub_1D1E66ACC();
  v33 = sub_1D1E6787C();
  (*(v8 + 8))(v14, v31);
  v42 = v58;
  v43 = [v58 configuredName];
  if (v43)
  {
    v44 = v43;
    v45 = sub_1D1E6781C();
    v47 = v46;

    v48 = [v42 defaultName];
    if (v48)
    {
      v49 = v48;
      v50 = sub_1D1E6781C();
      v52 = v51;

      if (v50 == v45 && v52 == v47)
      {

        return v33;
      }

      v53 = sub_1D1E6904C();

      if (v53)
      {
        return v33;
      }
    }

    else
    {
    }
  }

  v54 = [v42 configuredName];
  if (v54)
  {
    v55 = v54;
    v33 = sub_1D1E6781C();
  }

  return v33;
}

void sub_1D1C22840(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a2;
  v4 = [a1 services];
  v42 = sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
  v5 = sub_1D1E67C1C();

  v41 = a3;
  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_31:

    v26 = v41;
    goto LABEL_32;
  }

LABEL_30:
  v6 = sub_1D1E6873C();
  if (!v6)
  {
    goto LABEL_31;
  }

LABEL_3:
  v7 = 0;
  v44 = v5 & 0xC000000000000001;
  while (1)
  {
    if (v44)
    {
      v8 = MEMORY[0x1D3891EF0](v7, v5);
    }

    else
    {
      if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v8 = *(v5 + 8 * v7 + 32);
    }

    v9 = v8;
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v11 = [v8 linkedServices];
    if (v11)
    {
      v12 = v11;
      v13 = sub_1D1E67C1C();

      v46 = v43;
      MEMORY[0x1EEE9AC00](v14);
      v40[2] = &v46;
      LOBYTE(v12) = sub_1D18B8754(sub_1D1C2D7D0, v40, v13);

      if (v12)
      {
        break;
      }
    }

    ++v7;
    if (v10 == v6)
    {
      goto LABEL_31;
    }
  }

  v15 = v9;
  v16 = [v15 serviceType];
  v17 = sub_1D1E6781C();
  v19 = v18;

  v20._countAndFlagsBits = v17;
  v20._object = v19;
  ServiceKind.init(rawValue:)(v20);

  v21 = v46;
  if (v46 == 53)
  {
    v21 = 0;
  }

  LOBYTE(v46) = v21;
  v45 = 29;
  v22 = ServiceKind.rawValue.getter();
  v24 = v23;
  if (v22 == ServiceKind.rawValue.getter() && v24 == v25)
  {

    v26 = v41;
    goto LABEL_19;
  }

  v27 = sub_1D1E6904C();

  v26 = v41;
  if (v27)
  {
LABEL_19:
    v28 = [v43 serviceType];
    v29 = sub_1D1E6781C();
    v31 = v30;

    v32._countAndFlagsBits = v29;
    v32._object = v31;
    ServiceKind.init(rawValue:)(v32);
    v33 = v46;
    if (v46 == 53)
    {
      v33 = 0;
    }

    LOBYTE(v46) = v33;
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB3250 == v34)
    {

LABEL_25:
      v36 = sub_1D1E66A7C();
      (*(*(v36 - 8) + 56))(v26, 1, 1, v36);

      return;
    }

    v35 = sub_1D1E6904C();

    if (v35)
    {
      goto LABEL_25;
    }
  }

  if (v15)
  {
    v37 = [v15 uniqueIdentifier];
    sub_1D1E66A5C();

    v38 = sub_1D1E66A7C();
    (*(*(v38 - 8) + 56))(v26, 0, 1, v38);
    return;
  }

LABEL_32:
  v39 = sub_1D1E66A7C();
  (*(*(v39 - 8) + 56))(v26, 1, 1, v39);
}

uint64_t sub_1D1C22C84@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1D1E66A7C();
  v30 = *(v6 - 8);
  v7 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a1;
  if ([a1 isBridged])
  {
    v10 = [a2 accessories];
    sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
    v11 = sub_1D1E67C1C();

    v29 = a3;
    if (v11 >> 62)
    {
      goto LABEL_19;
    }

    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = v30; v12; i = v30)
    {
      v14 = 0;
      v32 = v11 & 0xFFFFFFFFFFFFFF8;
      v33 = v11 & 0xC000000000000001;
      v15 = (i + 8);
      while (1)
      {
        if (v33)
        {
          v16 = MEMORY[0x1D3891EF0](v14, v11);
        }

        else
        {
          if (v14 >= *(v32 + 16))
          {
            goto LABEL_18;
          }

          v16 = *(v11 + 8 * v14 + 32);
        }

        v17 = v16;
        v18 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        v19 = [v16 uniqueIdentifiersForBridgedAccessories];
        if (v19)
        {
          v20 = v19;
          v21 = v6;
          v22 = sub_1D1E67C1C();

          v23 = [v31 uniqueIdentifier];
          sub_1D1E66A5C();

          LOBYTE(v23) = sub_1D17C4CF4(v9, v22);
          v6 = v21;

          (*v15)(v9, v21);
          if (v23)
          {

            v25 = [v17 uniqueIdentifier];

            v26 = v29;
            sub_1D1E66A5C();

            return (*(v30 + 56))(v26, 0, 1, v21);
          }
        }

        ++v14;
        if (v18 == v12)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      v12 = sub_1D1E6873C();
    }

LABEL_20:

    return (*(v30 + 56))(v29, 1, 1, v6);
  }

  else
  {
    v24 = *(v30 + 56);

    return v24(a3, 1, 1, v6);
  }
}

unint64_t sub_1D1C22FB4(uint64_t a1, void *a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v10 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1C2AEC4(a1, v12, type metadata accessor for StateSnapshot.UpdateType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *(v12 + 1);
    v14 = v12[16];
    if (v14 == 4)
    {

      v15 = [a2 uniqueIdentifier];
      sub_1D1E66A5C();

      if (*(v13 + 16) && (v16 = sub_1D1742188(v8), (v17 & 1) != 0))
      {
        v18 = *(*(v13 + 56) + v16);
        (*(v5 + 8))(v8, v4);

        return v18;
      }

      else
      {

        (*(v5 + 8))(v8, v4);
        return [a2 isReachable];
      }
    }

    sub_1D1AC373C(*v12, *(v12 + 1), v14);
  }

  else
  {
    sub_1D1C2AF2C(v12, type metadata accessor for StateSnapshot.UpdateType);
  }

  return ([a2 isReachable] & 1) != 0 || objc_msgSend(a2, sel_suspendedState) == 3 || objc_msgSend(a2, sel_suspendedState) == 2;
}

__n128 StaticService.AutoClimateControlConfig.init(adaptiveTemperatureSetting:sleepSchedule:cleanEnergySetting:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a2;
  v8 = *(a3 + 32);
  v9 = type metadata accessor for StaticService.AutoClimateControlConfig(0);
  sub_1D1741A90(a1, a4 + *(v9 + 20), &qword_1EC64CA18, &qword_1D1EABE10);
  result = *a3;
  v11 = *(a3 + 16);
  *a4 = *a3;
  *(a4 + 16) = v11;
  *(a4 + 32) = v8;
  *(a4 + *(v9 + 24)) = v7;
  return result;
}

uint64_t StaticService.copyReplacing(id:name:isPrimary:isDoubleHigh:isReachable:isCalibrating:isLowBattery:accessoryId:mediaSourceIdentifier:deviceMetadata:dateAdded:accessoryLastSeenDate:accessoryLastSeenBatteryStatus:accessorySupportsCHIP:accessoryRequiresThreadRouter:removingMediaSourceIdentifier:roomIds:roomName:shouldShowInDashboard:accessoryShowsAsIndividualTiles:isFavorite:contributesToHomeStatus:customIconSymbol:removingCustomIconSymbol:serviceKind:serviceSubKind:parentServiceId:batteryServiceId:linkedStaticServices:associatedServiceKind:removingAssociatedServiceKind:staticCharacteristicsBag:staticProfileBag:softwareUpdate:homeNonResponsiveType:bridgedStaticServices:bridgeAccessoryId:matterEndpointID:autoClimateControlConfig:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, unsigned __int8 a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned __int8 *a16, unsigned __int8 a17, unsigned __int8 a18, unsigned __int8 a19, uint64_t a20, uint64_t a21, uint64_t a22, unsigned __int8 a23, unsigned __int8 a24, unsigned __int8 a25, unsigned __int8 a26, uint64_t a27, uint64_t a28, char a29, unsigned __int8 *a30, unsigned __int8 *a31, uint64_t a32, uint64_t a33, uint64_t a34, unsigned __int8 *a35, char a36, uint64_t *a37, uint64_t *a38, uint64_t a39, uint64_t (*a40)(char *, uint64_t, unsigned __int8 *), uint64_t a41, uint64_t a42, int a43, uint64_t a44)
{
  v254 = a7;
  v251 = a5;
  v252 = a6;
  v250 = a4;
  v233 = a3;
  v231 = a2;
  v255 = a37;
  v256 = a40;
  v253 = a35;
  v248 = a30;
  v249 = a31;
  v247 = a16;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C9B0, &qword_1D1EA1190);
  v49 = *(*(v48 - 8) + 64);
  v50 = MEMORY[0x1EEE9AC00](v48 - 8);
  v228 = &v207 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v229 = &v207 - v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644760, &unk_1D1E9E530);
  v54 = *(*(v53 - 8) + 64);
  v55 = MEMORY[0x1EEE9AC00](v53 - 8);
  v224 = &v207 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v55);
  v243 = &v207 - v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v59 = *(*(v58 - 8) + 64);
  v60 = MEMORY[0x1EEE9AC00](v58 - 8);
  v220 = &v207 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = MEMORY[0x1EEE9AC00](v60);
  v242 = &v207 - v63;
  v64 = MEMORY[0x1EEE9AC00](v62);
  v219 = &v207 - v65;
  MEMORY[0x1EEE9AC00](v64);
  v241 = &v207 - v66;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644620, &unk_1D1E75A00);
  v68 = *(*(v67 - 8) + 64);
  v69 = MEMORY[0x1EEE9AC00](v67 - 8);
  v217 = &v207 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v69);
  v238 = &v207 - v71;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v73 = *(*(v72 - 8) + 64);
  v74 = MEMORY[0x1EEE9AC00](v72 - 8);
  v225 = &v207 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = MEMORY[0x1EEE9AC00](v74);
  v240 = &v207 - v77;
  v78 = MEMORY[0x1EEE9AC00](v76);
  v221 = &v207 - v79;
  v80 = MEMORY[0x1EEE9AC00](v78);
  v237 = &v207 - v81;
  v82 = MEMORY[0x1EEE9AC00](v80);
  v218 = &v207 - v83;
  v84 = MEMORY[0x1EEE9AC00](v82);
  v236 = &v207 - v85;
  v86 = MEMORY[0x1EEE9AC00](v84);
  v88 = &v207 - v87;
  MEMORY[0x1EEE9AC00](v86);
  v90 = &v207 - v89;
  v91 = sub_1D1E66A7C();
  v92 = *(*(v91 - 8) + 64);
  v93 = MEMORY[0x1EEE9AC00](v91);
  v239 = &v207 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v93);
  v96 = &v207 - v95;
  v97 = *v247;
  LODWORD(v247) = *v248;
  LODWORD(v248) = *v249;
  v244 = *v253;
  v245 = v97;
  v234 = *v255;
  v98 = a38[1];
  v235 = *a38;
  v232 = v98;
  LODWORD(v249) = *v256;
  v100 = v99;
  v102 = v101;
  sub_1D1741C08(a1, v90, &qword_1EC642590, qword_1D1E71260);
  v103 = *(v102 + 48);
  v104 = v103(v90, 1, v100);
  v255 = (v102 + 48);
  v256 = v103;
  v257 = v44;
  if (v104 == 1)
  {
    (*(v102 + 16))(v96, v44, v100);
    if (v103(v90, 1, v100) != 1)
    {
      sub_1D1741A30(v90, &qword_1EC642590, qword_1D1E71260);
    }
  }

  else
  {
    (*(v102 + 32))(v96, v90, v100);
  }

  if (v233)
  {
    v226 = v233;
  }

  else
  {
    v105 = (v257 + *(type metadata accessor for StaticService(0) + 20));
    v106 = v105[1];
    v231 = *v105;
    v226 = v106;
  }

  if (v250 == 2)
  {
    v250 = *(v257 + *(type metadata accessor for StaticService(0) + 24));
  }

  if (v251 == 2)
  {
    v251 = *(v257 + *(type metadata accessor for StaticService(0) + 28));
  }

  if (a8 == 2)
  {
    a8 = *(v257 + *(type metadata accessor for StaticService(0) + 40));
  }

  if (v252 == 2)
  {
    v252 = *(v257 + *(type metadata accessor for StaticService(0) + 32));
  }

  v107 = v254;
  v227 = v96;
  v253 = v100;
  v230 = a8;
  if (v254 == 2)
  {
    v107 = *(v257 + *(type metadata accessor for StaticService(0) + 36));
  }

  v254 = v107;
  sub_1D1741C08(a10, v88, &qword_1EC642590, qword_1D1E71260);
  v108 = v253;
  v109 = v256;
  v110 = v256(v88, 1, v253);
  v246 = v102;
  if (v110 == 1)
  {
    v111 = type metadata accessor for StaticService(0);
    (*(v102 + 16))(v239, v257 + *(v111 + 44), v108);
    v112 = v109(v88, 1, v108);

    if (v112 != 1)
    {
      sub_1D1741A30(v88, &qword_1EC642590, qword_1D1E71260);
    }
  }

  else
  {
    (*(v102 + 32))(v239, v88, v108);
  }

  if (a19)
  {
    v113 = 0;
  }

  else
  {
    v113 = a11;
  }

  v114 = a19 | a12;
  if (a19 & 1) == 0 && (a12)
  {
    v115 = (v257 + *(type metadata accessor for StaticService(0) + 48));
    v113 = *v115;
    v114 = *(v115 + 8);
  }

  v222 = v114;
  v223 = v113;
  v116 = v217;
  sub_1D1741C08(a13, v217, &qword_1EC644620, &unk_1D1E75A00);
  v117 = type metadata accessor for StaticDeviceMetadata();
  v118 = *(v117 - 8);
  v119 = *(v118 + 48);
  if (v119(v116, 1, v117) == 1)
  {
    v120 = type metadata accessor for StaticService(0);
    sub_1D1741C08(v257 + *(v120 + 52), v238, &qword_1EC644620, &unk_1D1E75A00);
    v121 = v119(v116, 1, v117);
    v122 = v253;
    if (v121 != 1)
    {
      sub_1D1741A30(v116, &qword_1EC644620, &unk_1D1E75A00);
    }
  }

  else
  {
    v123 = v238;
    sub_1D1C2B18C(v116, v238, type metadata accessor for StaticDeviceMetadata);
    (*(v118 + 56))(v123, 0, 1, v117);
    v122 = v253;
  }

  v124 = v219;
  sub_1D1741C08(a14, v219, &qword_1EC642570, &qword_1D1E6C6A0);
  v125 = sub_1D1E669FC();
  v126 = *(v125 - 8);
  v127 = *(v126 + 48);
  if (v127(v124, 1, v125) == 1)
  {
    v128 = type metadata accessor for StaticService(0);
    v129 = v257;
    sub_1D1741C08(v257 + *(v128 + 56), v241, &qword_1EC642570, &qword_1D1E6C6A0);
    v130 = v127(v124, 1, v125);
    v131 = v220;
    if (v130 != 1)
    {
      sub_1D1741A30(v124, &qword_1EC642570, &qword_1D1E6C6A0);
    }
  }

  else
  {
    v132 = v241;
    (*(v126 + 32))(v241, v124, v125);
    (*(v126 + 56))(v132, 0, 1, v125);
    v129 = v257;
    v131 = v220;
  }

  sub_1D1741C08(a15, v131, &qword_1EC642570, &qword_1D1E6C6A0);
  if (v127(v131, 1, v125) == 1)
  {
    v133 = type metadata accessor for StaticService(0);
    sub_1D1741C08(v129 + *(v133 + 60), v242, &qword_1EC642570, &qword_1D1E6C6A0);
    if (v127(v131, 1, v125) != 1)
    {
      sub_1D1741A30(v131, &qword_1EC642570, &qword_1D1E6C6A0);
    }
  }

  else
  {
    v134 = v242;
    (*(v126 + 32))(v242, v131, v125);
    (*(v126 + 56))(v134, 0, 1, v125);
  }

  v135 = a17;
  if (v245 == 2)
  {
    v245 = *(v129 + *(type metadata accessor for StaticService(0) + 64));
  }

  v136 = a18;
  if (a17 == 2)
  {
    v135 = *(v129 + *(type metadata accessor for StaticService(0) + 68));
  }

  if (a18 == 2)
  {
    v136 = *(v129 + *(type metadata accessor for StaticService(0) + 72));
  }

  if (a20)
  {
    v216 = a20;
  }

  else
  {
    v216 = *(v129 + *(type metadata accessor for StaticService(0) + 76));
  }

  v138 = a23;
  v233 = a22;
  if (!a22)
  {
    v139 = (v129 + *(type metadata accessor for StaticService(0) + 80));
    a21 = *v139;
    v233 = v139[1];
  }

  v140 = a24;
  if (a23 == 2)
  {
    v141 = type metadata accessor for StaticService(0);
    v140 = a24;
    v138 = *(v129 + *(v141 + 84));
  }

  v142 = a25;
  if (v140 == 2)
  {
    v143 = type metadata accessor for StaticService(0);
    v142 = a25;
    v140 = *(v129 + *(v143 + 88));
  }

  v144 = a26;
  LODWORD(v220) = v135;
  v214 = v140;
  if (v142 == 2)
  {
    v142 = *(v129 + *(type metadata accessor for StaticService(0) + 92));
  }

  v213 = v142;
  if (a26 == 2)
  {
    v144 = *(v129 + *(type metadata accessor for StaticService(0) + 96));
  }

  if (a29)
  {
    v210 = 0;
    v211 = 0;
  }

  else
  {
    v145 = a28;
    if (a28)
    {
      v210 = a27;
    }

    else
    {
      v146 = (v129 + *(type metadata accessor for StaticService(0) + 100));
      v145 = v146[1];
      v210 = *v146;
    }

    v211 = v145;
  }

  LODWORD(v219) = v136;
  if (v247 == 53)
  {
    LODWORD(v247) = *(v129 + *(type metadata accessor for StaticService(0) + 104));
  }

  v217 = a21;
  if (v248 == 5)
  {
    LODWORD(v248) = *(v129 + *(type metadata accessor for StaticService(0) + 108));
  }

  if (a36)
  {
    v147 = 53;
  }

  else
  {
    if (v244 != 53)
    {
      goto LABEL_74;
    }

    v147 = *(v129 + *(type metadata accessor for StaticService(0) + 112));
  }

  v244 = v147;
LABEL_74:
  v215 = v138;
  v148 = v218;
  sub_1D1741C08(a32, v218, &qword_1EC642590, qword_1D1E71260);
  v149 = v256;
  if (v256(v148, 1, v122) == 1)
  {
    v150 = type metadata accessor for StaticService(0);
    sub_1D1741C08(v129 + *(v150 + 116), v236, &qword_1EC642590, qword_1D1E71260);
    v151 = v149(v148, 1, v122);
    v152 = v148;
    v153 = v151;

    if (v153 != 1)
    {
      sub_1D1741A30(v152, &qword_1EC642590, qword_1D1E71260);
    }
  }

  else
  {
    v154 = v148;
    v155 = v246;
    v156 = v236;
    (*(v246 + 32))(v236, v154, v122);
    (*(v155 + 56))(v156, 0, 1, v122);
  }

  v157 = v221;
  sub_1D1741C08(a33, v221, &qword_1EC642590, qword_1D1E71260);
  v158 = v256;
  v159 = v256(v157, 1, v122);
  v160 = v225;
  v161 = v234;
  v212 = v144;
  if (v159 == 1)
  {
    v162 = type metadata accessor for StaticService(0);
    sub_1D1741C08(v129 + *(v162 + 120), v237, &qword_1EC642590, qword_1D1E71260);
    v163 = v158(v157, 1, v122);
    v164 = v224;
    if (v163 != 1)
    {
      sub_1D1741A30(v157, &qword_1EC642590, qword_1D1E71260);
    }

    v165 = v235;
    if (a34)
    {
LABEL_82:
      v221 = a34;
      v166 = a39;
      if (v161)
      {
        goto LABEL_83;
      }

LABEL_87:
      v218 = *(v129 + *(type metadata accessor for StaticService(0) + 128));

      if (v165)
      {
        goto LABEL_84;
      }

      goto LABEL_88;
    }
  }

  else
  {
    v167 = v246;
    v168 = v237;
    (*(v246 + 32))(v237, v157, v122);
    (*(v167 + 56))(v168, 0, 1, v122);
    v164 = v224;
    v165 = v235;
    if (a34)
    {
      goto LABEL_82;
    }
  }

  v221 = *(v129 + *(type metadata accessor for StaticService(0) + 124));

  v166 = a39;
  if (!v161)
  {
    goto LABEL_87;
  }

LABEL_83:
  v218 = v161;
  if (v165)
  {
LABEL_84:
    v209 = v165;
    v208 = v232;
    goto LABEL_89;
  }

LABEL_88:
  v169 = (v129 + *(type metadata accessor for StaticService(0) + 132));
  v170 = v169[1];
  v209 = *v169;

  v208 = v170;

LABEL_89:
  sub_1D1741C08(v166, v164, &qword_1EC644760, &unk_1D1E9E530);
  v171 = type metadata accessor for StaticSoftwareUpdate(0);
  v172 = *(v171 - 8);
  v173 = *(v172 + 48);
  if (v173(v164, 1, v171) == 1)
  {
    v174 = type metadata accessor for StaticService(0);
    sub_1D1741C08(v129 + *(v174 + 136), v243, &qword_1EC644760, &unk_1D1E9E530);
    v175 = v173(v164, 1, v171);

    sub_1D1C2B374(v235);
    if (v175 != 1)
    {
      sub_1D1741A30(v164, &qword_1EC644760, &unk_1D1E9E530);
    }
  }

  else
  {
    v176 = v243;
    sub_1D1C2B18C(v164, v243, type metadata accessor for StaticSoftwareUpdate);
    (*(v172 + 56))(v176, 0, 1, v171);

    sub_1D1C2B374(v235);
  }

  if (v249 == 3)
  {
    LODWORD(v249) = *(v129 + *(type metadata accessor for StaticService(0) + 140));
  }

  if (a41)
  {
    v177 = a41;
  }

  else
  {
    v177 = *(v129 + *(type metadata accessor for StaticService(0) + 144));
  }

  v178 = a43;
  sub_1D1741C08(a42, v160, &qword_1EC642590, qword_1D1E71260);
  v179 = v256;
  if (v256(v160, 1, v122) == 1)
  {
    v180 = type metadata accessor for StaticService(0);
    sub_1D1741C08(v129 + *(v180 + 148), v240, &qword_1EC642590, qword_1D1E71260);
    v181 = v179(v160, 1, v122);

    if (v181 != 1)
    {
      sub_1D1741A30(v160, &qword_1EC642590, qword_1D1E71260);
    }

    if ((a43 & 0x10000) == 0)
    {
      goto LABEL_102;
    }
  }

  else
  {
    v183 = v246;
    v184 = v240;
    (*(v246 + 32))(v240, v160, v122);
    (*(v183 + 56))(v184, 0, 1, v122);

    if ((a43 & 0x10000) == 0)
    {
LABEL_102:
      v182 = 0;
      goto LABEL_105;
    }
  }

  v185 = (v129 + *(type metadata accessor for StaticService(0) + 152));
  v178 = *v185;
  v182 = *(v185 + 2);
LABEL_105:
  v186 = v228;
  sub_1D1741C08(a44, v228, &qword_1EC64C9B0, &qword_1D1EA1190);
  v187 = type metadata accessor for StaticService.AutoClimateControlConfig(0);
  v188 = *(v187 - 8);
  v189 = *(v188 + 48);
  if (v189(v186, 1, v187) == 1)
  {
    v190 = type metadata accessor for StaticService(0);
    v191 = v229;
    sub_1D1741C08(v129 + *(v190 + 160), v229, &qword_1EC64C9B0, &qword_1D1EA1190);
    v192 = v191;
    if (v189(v186, 1, v187) != 1)
    {
      sub_1D1741A30(v186, &qword_1EC64C9B0, &qword_1D1EA1190);
    }
  }

  else
  {
    v192 = v229;
    sub_1D1C2B18C(v186, v229, type metadata accessor for StaticService.AutoClimateControlConfig);
    (*(v188 + 56))(v192, 0, 1, v187);
  }

  v193 = type metadata accessor for StaticService(0);
  sub_1D1741A90(v238, a9 + v193[13], &qword_1EC644620, &unk_1D1E75A00);
  sub_1D1741A90(v241, a9 + v193[14], &qword_1EC642570, &qword_1D1E6C6A0);
  sub_1D1741A90(v242, a9 + v193[15], &qword_1EC642570, &qword_1D1E6C6A0);
  sub_1D1741A90(v236, a9 + v193[29], &qword_1EC642590, qword_1D1E71260);
  sub_1D1741A90(v237, a9 + v193[30], &qword_1EC642590, qword_1D1E71260);
  sub_1D1741A90(v243, a9 + v193[34], &qword_1EC644760, &unk_1D1E9E530);
  sub_1D1741A90(v240, a9 + v193[37], &qword_1EC642590, qword_1D1E71260);
  sub_1D1741C08(v129 + v193[39], a9 + v193[39], &qword_1EC644870, &unk_1D1EABA00);
  sub_1D1741A90(v192, a9 + v193[40], &qword_1EC64C9B0, &qword_1D1EA1190);
  v194 = *(v246 + 32);
  v195 = v253;
  v194(a9, v227, v253);
  v196 = (a9 + v193[5]);
  v197 = v226;
  *v196 = v231;
  v196[1] = v197;
  *(a9 + v193[6]) = v250 & 1;
  *(a9 + v193[7]) = v251 & 1;
  *(a9 + v193[8]) = v252 & 1;
  *(a9 + v193[9]) = v254;
  *(a9 + v193[10]) = v230;
  result = (v194)(a9 + v193[11], v239, v195);
  v199 = a9 + v193[12];
  *v199 = v223;
  *(v199 + 8) = v222 & 1;
  *(a9 + v193[16]) = v245;
  *(a9 + v193[17]) = v220 & 1;
  *(a9 + v193[18]) = v219 & 1;
  *(a9 + v193[19]) = v216;
  v200 = (a9 + v193[20]);
  v201 = v233;
  *v200 = v217;
  v200[1] = v201;
  *(a9 + v193[21]) = v215 & 1;
  *(a9 + v193[22]) = v214 & 1;
  *(a9 + v193[23]) = v213 & 1;
  *(a9 + v193[24]) = v212 & 1;
  v202 = (a9 + v193[25]);
  v203 = v211;
  *v202 = v210;
  v202[1] = v203;
  *(a9 + v193[26]) = v247;
  *(a9 + v193[27]) = v248;
  *(a9 + v193[28]) = v244;
  *(a9 + v193[31]) = v221;
  *(a9 + v193[32]) = v218;
  v204 = (a9 + v193[33]);
  v205 = v208;
  *v204 = v209;
  v204[1] = v205;
  *(a9 + v193[35]) = v249;
  *(a9 + v193[36]) = v177;
  v206 = a9 + v193[38];
  *v206 = v178;
  *(v206 + 2) = v182;
  return result;
}

uint64_t sub_1D1C24AE8()
{
  result = sub_1D179ACDC(&unk_1F4D5ED90);
  qword_1EE081448 = result;
  return result;
}

uint64_t sub_1D1C24B10()
{
  result = sub_1D179ACDC(&unk_1F4D5ED58);
  qword_1EC6BE1B0 = result;
  return result;
}

uint64_t sub_1D1C24B38()
{
  if (qword_1EC6423A8 != -1)
  {
    swift_once();
  }

  qword_1EC6BE1B8 = qword_1EC64C9A8;
}

uint64_t sub_1D1C24B9C()
{
  result = sub_1D179ACDC(&unk_1F4D65E40);
  qword_1EC64C9A8 = result;
  return result;
}

uint64_t sub_1D1C24BE8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x1EEE9AC00](v0 - 8);
  v80 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v78 = &v67 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644620, &unk_1D1E75A00);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v67 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v67 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v67 - v17;
  v19 = sub_1D1E66A7C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for StaticService(0);
  __swift_allocate_value_buffer(v24, qword_1EC6BE1C0);
  v25 = __swift_project_value_buffer(v24, qword_1EC6BE1C0);
  if (qword_1EC6423C0 != -1)
  {
    swift_once();
  }

  v79 = v16;
  v81 = v13;
  v26 = __swift_project_value_buffer(v19, qword_1EC6BE1F0);
  v75 = *(v20 + 16);
  v76 = v23;
  v75(v23, v26, v19);
  sub_1D1E66A0C();
  v27 = *(v20 + 48);
  v77 = v18;
  result = v27(v18, 1, v19);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v29 = type metadata accessor for StaticDeviceMetadata();
    v30 = *(*(v29 - 8) + 56);
    v74 = v8;
    v30(v8, 1, 1, v29);
    v31 = v78;
    sub_1D1E6698C();
    v32 = sub_1D1E669FC();
    v33 = *(*(v32 - 8) + 56);
    v33(v31, 0, 1, v32);
    v33(v80, 1, 1, v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643350, &qword_1D1E72040);
    v34 = *(v20 + 72);
    v35 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v36 = swift_allocObject();
    v73 = xmmword_1D1E739C0;
    *(v36 + 16) = xmmword_1D1E739C0;
    if (qword_1EC6423E8 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for StaticRoom(0);
    v38 = __swift_project_value_buffer(v37, qword_1EC64DA80);
    v75((v36 + v35), v38, v19);
    v75 = sub_1D179BE14(v36);
    swift_setDeallocating();
    (*(v20 + 8))(v36 + v35, v19);
    swift_deallocClassInstance();
    v39 = (v38 + *(v37 + 20));
    v40 = v39[1];
    v72 = *v39;
    v41 = *(v20 + 56);
    v41(v79, 1, 1, v19);
    v68 = v41;
    v41(v81, 1, 1, v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643240, &qword_1D1E71698);
    v42 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643248, &qword_1D1E716A0) - 8);
    v43 = *(*v42 + 72);
    v44 = (*(*v42 + 80) + 32) & ~*(*v42 + 80);
    v45 = swift_allocObject();
    *(v45 + 16) = v73;
    v46 = (v45 + v44);
    v47 = v42[14];
    *v46 = 105;
    v48 = qword_1EC6423D0;
    *&v73 = v40;

    if (v48 != -1)
    {
      swift_once();
    }

    v70 = 0x80000001D1EB5E20;
    v49 = type metadata accessor for StaticCharacteristic();
    v50 = __swift_project_value_buffer(v49, qword_1EC64D010);
    sub_1D1C2AEC4(v50, &v46[v47], type metadata accessor for StaticCharacteristic);
    v71 = sub_1D18DB9B4(v45);
    swift_setDeallocating();
    sub_1D1741A30(v46, &qword_1EC643248, &qword_1D1E716A0);
    swift_deallocClassInstance();
    v51 = MEMORY[0x1E69E7CC0];
    v69 = sub_1D18DB57C(MEMORY[0x1E69E7CC0]);
    v52 = sub_1D18DB798(v51);
    v53 = v24[34];
    v54 = type metadata accessor for StaticSoftwareUpdate(0);
    (*(*(v54 - 8) + 56))(v25 + v53, 1, 1, v54);
    v68(v25 + v24[37], 1, 1, v19);
    v55 = v24[39];
    v56 = type metadata accessor for EndpointPath(0);
    (*(*(v56 - 8) + 56))(v25 + v55, 1, 1, v56);
    v57 = v24[40];
    v58 = type metadata accessor for StaticService.AutoClimateControlConfig(0);
    (*(*(v58 - 8) + 56))(v25 + v57, 1, 1, v58);
    v59 = *(v20 + 32);
    v59(v25, v76, v19);
    v60 = v25 + v24[5];
    strcpy(v60, "Sample Light");
    *(v60 + 13) = 0;
    *(v60 + 14) = -5120;
    *(v25 + v24[6]) = 1;
    *(v25 + v24[7]) = 0;
    *(v25 + v24[8]) = 1;
    *(v25 + v24[9]) = 0;
    *(v25 + v24[10]) = 0;
    v59(v25 + v24[11], v77, v19);
    v61 = v25 + v24[12];
    *v61 = 0;
    *(v61 + 8) = 1;
    sub_1D1741A90(v74, v25 + v24[13], &qword_1EC644620, &unk_1D1E75A00);
    sub_1D1741A90(v78, v25 + v24[14], &qword_1EC642570, &qword_1D1E6C6A0);
    sub_1D1741A90(v80, v25 + v24[15], &qword_1EC642570, &qword_1D1E6C6A0);
    *(v25 + v24[16]) = 2;
    *(v25 + v24[17]) = 0;
    *(v25 + v24[18]) = 0;
    *(v25 + v24[19]) = v75;
    v62 = (v25 + v24[20]);
    v63 = v73;
    *v62 = v72;
    v62[1] = v63;
    *(v25 + v24[21]) = 0;
    *(v25 + v24[22]) = 0;
    *(v25 + v24[23]) = 0;
    *(v25 + v24[24]) = 1;
    v64 = (v25 + v24[25]);
    *v64 = 0xD000000000000012;
    v64[1] = v70;
    *(v25 + v24[26]) = 28;
    *(v25 + v24[27]) = 5;
    *(v25 + v24[28]) = 53;
    sub_1D1741A90(v79, v25 + v24[29], &qword_1EC642590, qword_1D1E71260);
    result = sub_1D1741A90(v81, v25 + v24[30], &qword_1EC642590, qword_1D1E71260);
    *(v25 + v24[31]) = v51;
    *(v25 + v24[32]) = v71;
    v65 = (v25 + v24[33]);
    *v65 = v69;
    v65[1] = v52;
    *(v25 + v24[35]) = 0;
    *(v25 + v24[36]) = v51;
    v66 = v25 + v24[38];
    *v66 = 0;
    *(v66 + 2) = 1;
  }

  return result;
}

uint64_t sub_1D1C25578()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v8 - v2;
  v4 = sub_1D1E66A7C();
  __swift_allocate_value_buffer(v4, qword_1EC6BE1D8);
  v5 = __swift_project_value_buffer(v4, qword_1EC6BE1D8);
  sub_1D1E66A0C();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1C256A8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v8 - v2;
  v4 = sub_1D1E66A7C();
  __swift_allocate_value_buffer(v4, qword_1EC6BE1F0);
  v5 = __swift_project_value_buffer(v4, qword_1EC6BE1F0);
  sub_1D1E66A0C();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t StaticService.copyReplacing(matterEndpointPath:autoClimateControlConfig:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v125 = a2;
  v123 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C9B0, &qword_1D1EA1190);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v122 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v131 = &v95 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644870, &unk_1D1EABA00);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v138 = &v95 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644760, &unk_1D1E9E530);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v142 = &v95 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v141 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v140 = &v95 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v139 = &v95 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v27 = &v95 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v95 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644620, &unk_1D1E75A00);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v33 = &v95 - v32;
  v34 = sub_1D1E66A7C();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  v37 = MEMORY[0x1EEE9AC00](v34);
  v39 = &v95 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v126 = v35;
  v40 = *(v35 + 16);
  v121 = &v95 - v41;
  v40();
  v42 = type metadata accessor for StaticService(0);
  v43 = v42[6];
  v44 = (v3 + v42[5]);
  v46 = *v44;
  v45 = v44[1];
  v119 = v46;
  v97 = v45;
  v120 = *(v3 + v43);
  v47 = v42[8];
  v115 = *(v3 + v42[7]);
  v118 = *(v3 + v47);
  v48 = v42[10];
  v111 = *(v3 + v42[9]);
  v114 = *(v3 + v48);
  v49 = v3 + v42[11];
  v124 = v39;
  v127 = v34;
  (v40)(v39, v49, v34);
  v50 = v42[13];
  v51 = (v3 + v42[12]);
  v105 = *v51;
  v104 = *(v51 + 8);
  v128 = v33;
  sub_1D1741C08(v3 + v50, v33, &qword_1EC644620, &unk_1D1E75A00);
  v52 = v3 + v42[14];
  v129 = v29;
  sub_1D1741C08(v52, v29, &qword_1EC642570, &qword_1D1E6C6A0);
  v53 = v3 + v42[15];
  v130 = v27;
  sub_1D1741C08(v53, v27, &qword_1EC642570, &qword_1D1E6C6A0);
  v54 = v42[17];
  v117 = *(v3 + v42[16]);
  v116 = *(v3 + v54);
  v55 = v42[19];
  v113 = *(v3 + v42[18]);
  v96 = *(v3 + v55);
  v56 = (v3 + v42[20]);
  v112 = *(v3 + v42[21]);
  v57 = v42[23];
  v109 = *(v3 + v42[22]);
  v110 = *(v3 + v57);
  v59 = *v56;
  v58 = v56[1];
  v98 = v59;
  v132 = v58;
  v60 = v42[25];
  v103 = *(v3 + v42[24]);
  v61 = *(v3 + v60 + 8);
  v106 = *(v3 + v60);
  v137 = v61;
  v62 = v42[27];
  v100 = *(v3 + v42[26]);
  v102 = *(v3 + v62);
  v63 = v42[29];
  v99 = *(v3 + v42[28]);
  sub_1D1741C08(v3 + v63, v139, &qword_1EC642590, qword_1D1E71260);
  sub_1D1741C08(v3 + v42[30], v140, &qword_1EC642590, qword_1D1E71260);
  v64 = v42[32];
  v136 = *(v3 + v42[31]);
  v65 = *(v3 + v64);
  v66 = v42[34];
  v67 = (v3 + v42[33]);
  v68 = *v67;
  v133 = v67[1];
  v134 = v68;
  sub_1D1741C08(v3 + v66, v142, &qword_1EC644760, &unk_1D1E9E530);
  v69 = v42[36];
  v101 = *(v3 + v42[35]);
  v135 = *(v3 + v69);
  sub_1D1741C08(v3 + v42[37], v141, &qword_1EC642590, qword_1D1E71260);
  v70 = (v3 + v42[38]);
  v108 = *v70;
  v107 = *(v70 + 2);
  sub_1D1741C08(v123, v138, &qword_1EC644870, &unk_1D1EABA00);
  v71 = v122;
  sub_1D1741C08(v125, v122, &qword_1EC64C9B0, &qword_1D1EA1190);
  v72 = type metadata accessor for StaticService.AutoClimateControlConfig(0);
  v73 = *(v72 - 8);
  v74 = *(v73 + 48);
  v75 = v71;
  if (v74(v71, 1, v72) == 1)
  {
    v76 = v131;
    sub_1D1741C08(v3 + v42[40], v131, &qword_1EC64C9B0, &qword_1D1EA1190);
    v77 = v74(v71, 1, v72);

    v78 = v65;

    v79 = v97;

    v80 = v96;

    v81 = v76;
    v82 = v78;
    if (v77 != 1)
    {
      sub_1D1741A30(v75, &qword_1EC64C9B0, &qword_1D1EA1190);
    }
  }

  else
  {
    v81 = v131;
    sub_1D1C2B18C(v71, v131, type metadata accessor for StaticService.AutoClimateControlConfig);
    (*(v73 + 56))(v81, 0, 1, v72);

    v82 = v65;

    v79 = v97;

    v80 = v96;
  }

  v83 = v127;
  v84 = *(v126 + 32);
  v84(a3, v121, v127);
  v85 = (a3 + v42[5]);
  *v85 = v119;
  v85[1] = v79;
  *(a3 + v42[6]) = v120;
  *(a3 + v42[7]) = v115;
  *(a3 + v42[8]) = v118;
  *(a3 + v42[9]) = v111;
  *(a3 + v42[10]) = v114;
  v84(a3 + v42[11], v124, v83);
  v86 = a3 + v42[12];
  *v86 = v105;
  *(v86 + 8) = v104;
  sub_1D1741A90(v128, a3 + v42[13], &qword_1EC644620, &unk_1D1E75A00);
  sub_1D1741A90(v129, a3 + v42[14], &qword_1EC642570, &qword_1D1E6C6A0);
  sub_1D1741A90(v130, a3 + v42[15], &qword_1EC642570, &qword_1D1E6C6A0);
  *(a3 + v42[16]) = v117;
  *(a3 + v42[17]) = v116;
  *(a3 + v42[18]) = v113;
  *(a3 + v42[19]) = v80;
  v87 = (a3 + v42[20]);
  v88 = v132;
  *v87 = v98;
  v87[1] = v88;
  *(a3 + v42[21]) = v112;
  *(a3 + v42[22]) = v109;
  *(a3 + v42[23]) = v110;
  *(a3 + v42[24]) = v103;
  v89 = (a3 + v42[25]);
  v90 = v137;
  *v89 = v106;
  v89[1] = v90;
  *(a3 + v42[26]) = v100;
  *(a3 + v42[27]) = v102;
  *(a3 + v42[28]) = v99;
  sub_1D1741A90(v139, a3 + v42[29], &qword_1EC642590, qword_1D1E71260);
  sub_1D1741A90(v140, a3 + v42[30], &qword_1EC642590, qword_1D1E71260);
  *(a3 + v42[31]) = v136;
  *(a3 + v42[32]) = v82;
  v91 = (a3 + v42[33]);
  v92 = v133;
  *v91 = v134;
  v91[1] = v92;
  sub_1D1741A90(v142, a3 + v42[34], &qword_1EC644760, &unk_1D1E9E530);
  *(a3 + v42[35]) = v101;
  *(a3 + v42[36]) = v135;
  sub_1D1741A90(v141, a3 + v42[37], &qword_1EC642590, qword_1D1E71260);
  v93 = a3 + v42[38];
  *v93 = v108;
  *(v93 + 2) = v107;
  sub_1D1741A90(v138, a3 + v42[39], &qword_1EC644870, &unk_1D1EABA00);
  return sub_1D1741A90(v81, a3 + v42[40], &qword_1EC64C9B0, &qword_1D1EA1190);
}

uint64_t StaticService.debugDescription.getter()
{
  v1 = sub_1D1E6929C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v26 + 1) = type metadata accessor for StaticService(0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v25);
  sub_1D1C2AEC4(v0, boxed_opaque_existential_1, type metadata accessor for StaticService);
  sub_1D1E6927C();
  v7 = sub_1D1E6928C();
  (*(v2 + 8))(v5, v1);
  v18[1] = v7;
  sub_1D1E68A9C();
  sub_1D1E68BFC();
  if (*(&v27 + 1))
  {
    v8 = MEMORY[0x1E69E7CC0];
    do
    {
      v24[0] = v25;
      v24[1] = v26;
      v24[2] = v27;
      v22 = 0;
      v23 = 0xE000000000000000;
      sub_1D1741C08(v24, &v19, &qword_1EC64C4A8, &qword_1D1EA3A70);
      if (v20)
      {
        v9 = v19;
      }

      else
      {
        v9 = 0x206E776F6E6B6E55;
      }

      if (v20)
      {
        v10 = v20;
      }

      else
      {
        v10 = 0xED00006C6562614CLL;
      }

      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x1D3890F70](v9, v10);

      MEMORY[0x1D3890F70](8250, 0xE200000000000000);
      sub_1D1E68ABC();
      v11 = v22;
      v12 = v23;
      sub_1D1741A30(v24, &qword_1EC64C4A8, &qword_1D1EA3A70);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1D177CF00(0, *(v8 + 2) + 1, 1, v8);
      }

      v14 = *(v8 + 2);
      v13 = *(v8 + 3);
      if (v14 >= v13 >> 1)
      {
        v8 = sub_1D177CF00((v13 > 1), v14 + 1, 1, v8);
      }

      *(v8 + 2) = v14 + 1;
      v15 = &v8[16 * v14];
      *(v15 + 4) = v11;
      *(v15 + 5) = v12;
      sub_1D1E68BFC();
    }

    while (*(&v27 + 1));
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  *&v25 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643CB0, &qword_1D1E73640);
  sub_1D17B3684();
  v16 = sub_1D1E6770C();

  return v16;
}

uint64_t StaticService.AutoClimateControlConfig.cleanEnergySetting.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = *(v1 + 32);
  return sub_1D1C2B3B4(v2, v3, v4);
}

uint64_t StaticService.AutoClimateControlConfig.sleepSchedule.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for StaticService.AutoClimateControlConfig(0) + 24));
}

unint64_t sub_1D1C266E4()
{
  v1 = 0x6863537065656C73;
  if (*v0 == 1)
  {
    v1 = 0xD00000000000001ALL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_1D1C26750@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D1C2D508(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D1C26778(uint64_t a1)
{
  v2 = sub_1D1C2B3C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1C267B4(uint64_t a1)
{
  v2 = sub_1D1C2B3C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticService.AutoClimateControlConfig.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CA20, &qword_1D1EA11D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1C2B3C8();
  sub_1D1E6930C();
  v11 = *(v3 + 8);
  v12 = *(v3 + 16);
  v13 = *(v3 + 24);
  v14 = *(v3 + 32);
  v19 = *v3;
  v20 = v11;
  v21 = v12;
  v22 = v13;
  v23 = v14;
  HIBYTE(v18) = 0;
  sub_1D1C2B3B4(v19, v11, v12);
  sub_1D1C2B41C();
  sub_1D1E68E5C();
  sub_1D1C2B470(v19, v20, v21);
  if (!v2)
  {
    v15 = type metadata accessor for StaticService.AutoClimateControlConfig(0);
    v16 = *(v15 + 20);
    LOBYTE(v19) = 1;
    type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting(0);
    sub_1D1C2AFE0(&qword_1EC64CA38, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
    sub_1D1E68E5C();
    v19 = *(v3 + *(v15 + 24));
    HIBYTE(v18) = 2;
    sub_1D1C2B484();

    sub_1D1E68E5C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t StaticService.AutoClimateControlConfig.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CA18, &qword_1D1EABE10);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v23 - v11;
  v13 = *(v1 + 2);
  if (v13 == 1)
  {
    goto LABEL_4;
  }

  v14 = *(v1 + 1);
  v23 = *(v1 + 3);
  v24 = *(v1 + 32);
  v15 = *v1;
  sub_1D1E6922C();
  sub_1D1E6922C();
  sub_1D1E6922C();
  if (!v13 || (sub_1D1E6922C(), sub_1D1E678EC(), (v24 & 1) != 0))
  {
LABEL_4:
    sub_1D1E6922C();
  }

  else
  {
    sub_1D1E6922C();
    if ((v23 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v22 = v23;
    }

    else
    {
      v22 = 0;
    }

    MEMORY[0x1D3892890](v22);
  }

  v16 = type metadata accessor for StaticService.AutoClimateControlConfig(0);
  sub_1D1741C08(v1 + *(v16 + 20), v12, &qword_1EC64CA18, &qword_1D1EABE10);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    sub_1D1C2B18C(v12, v8, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
    sub_1D1E6922C();
    MEMORY[0x1D3892850](*v8);
    v17 = v8[1];
    sub_1D1E6922C();
    if (v17)
    {
      sub_1D176FF94(a1, v17);
    }

    v18 = *(v4 + 24);
    sub_1D1E66C5C();
    sub_1D1C2AFE0(&qword_1EC643958, MEMORY[0x1E6969BC0]);
    sub_1D1E676EC();
    v19 = *(v8 + *(v4 + 28));
    sub_1D1E6922C();
    sub_1D1C2AF2C(v8, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
  }

  v20 = *(v2 + *(v16 + 24));
  if (!v20)
  {
    return sub_1D1E6922C();
  }

  sub_1D1E6922C();
  return sub_1D176FDE8(a1, v20);
}

uint64_t StaticService.AutoClimateControlConfig.hashValue.getter()
{
  v1 = v0;
  v2 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v23[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CA18, &qword_1D1EABE10);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v23[-v9 - 8];
  sub_1D1E6920C();
  v11 = *(v0 + 2);
  if (v11 == 1)
  {
    goto LABEL_4;
  }

  v12 = *(v0 + 1);
  v22 = *(v0 + 3);
  v13 = *(v0 + 32);
  v14 = *v0;
  sub_1D1E6922C();
  sub_1D1E6922C();
  sub_1D1E6922C();
  if (!v11 || (sub_1D1E6922C(), sub_1D1E678EC(), (v13 & 1) != 0))
  {
LABEL_4:
    sub_1D1E6922C();
  }

  else
  {
    sub_1D1E6922C();
    if ((v22 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v21 = v22;
    }

    else
    {
      v21 = 0;
    }

    MEMORY[0x1D3892890](v21);
  }

  v15 = type metadata accessor for StaticService.AutoClimateControlConfig(0);
  sub_1D1741C08(v0 + *(v15 + 20), v10, &qword_1EC64CA18, &qword_1D1EABE10);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    sub_1D1C2B18C(v10, v6, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
    sub_1D1E6922C();
    MEMORY[0x1D3892850](*v6);
    v16 = v6[1];
    sub_1D1E6922C();
    if (v16)
    {
      sub_1D176FF94(v23, v16);
    }

    v17 = *(v2 + 24);
    sub_1D1E66C5C();
    sub_1D1C2AFE0(&qword_1EC643958, MEMORY[0x1E6969BC0]);
    sub_1D1E676EC();
    v18 = *(v6 + *(v2 + 28));
    sub_1D1E6922C();
    sub_1D1C2AF2C(v6, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
  }

  v19 = *(v1 + *(v15 + 24));
  sub_1D1E6922C();
  if (v19)
  {
    sub_1D176FDE8(v23, v19);
  }

  return sub_1D1E6926C();
}

uint64_t StaticService.AutoClimateControlConfig.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CA18, &qword_1D1EABE10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CA48, &qword_1D1EA11D8);
  v24 = *(v8 - 8);
  v25 = v8;
  v9 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - v10;
  v12 = type metadata accessor for StaticService.AutoClimateControlConfig(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1C2B3C8();
  sub_1D1E692FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = v15;
  v29 = 0;
  sub_1D1C2B4D8();
  v18 = v25;
  sub_1D1E68CBC();
  v19 = v28;
  v20 = v27;
  *v17 = v26;
  *(v17 + 16) = v20;
  *(v17 + 32) = v19;
  type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting(0);
  LOBYTE(v26) = 1;
  sub_1D1C2AFE0(&qword_1EC64CA58, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
  sub_1D1E68CBC();
  sub_1D1741A90(v7, v17 + *(v12 + 20), &qword_1EC64CA18, &qword_1D1EABE10);
  v29 = 2;
  sub_1D1C2B52C();
  sub_1D1E68CBC();
  (*(v24 + 8))(v11, v18);
  *(v17 + *(v12 + 24)) = v26;
  sub_1D1C2AEC4(v17, v23, type metadata accessor for StaticService.AutoClimateControlConfig);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D1C2AF2C(v17, type metadata accessor for StaticService.AutoClimateControlConfig);
}

uint64_t sub_1D1C27484(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CA18, &qword_1D1EABE10);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v24 - v12;
  sub_1D1E6920C();
  v14 = *(v2 + 2);
  if (v14 == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    v15 = *(v2 + 1);
    v25 = *(v2 + 3);
    v26 = a2;
    v16 = *(v2 + 32);
    v17 = *v2;
    sub_1D1E6922C();
    sub_1D1E6922C();
    sub_1D1E6922C();
    if (v14 && (sub_1D1E6922C(), sub_1D1E678EC(), (v16 & 1) == 0))
    {
      sub_1D1E6922C();
      if ((v25 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v18 = v25;
      }

      else
      {
        v18 = 0;
      }

      MEMORY[0x1D3892890](v18);
    }

    else
    {
      sub_1D1E6922C();
    }

    a2 = v26;
  }

  sub_1D1741C08(v2 + *(a2 + 20), v13, &qword_1EC64CA18, &qword_1D1EABE10);
  if ((*(v6 + 48))(v13, 1, v5) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    sub_1D1C2B18C(v13, v9, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
    sub_1D1E6922C();
    MEMORY[0x1D3892850](*v9);
    v19 = v9[1];
    sub_1D1E6922C();
    if (v19)
    {
      sub_1D176FF94(v27, v19);
    }

    v20 = *(v5 + 24);
    sub_1D1E66C5C();
    sub_1D1C2AFE0(&qword_1EC643958, MEMORY[0x1E6969BC0]);
    sub_1D1E676EC();
    v21 = *(v9 + *(v5 + 28));
    sub_1D1E6922C();
    sub_1D1C2AF2C(v9, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
  }

  v22 = *(v4 + *(a2 + 24));
  sub_1D1E6922C();
  if (v22)
  {
    sub_1D176FDE8(v27, v22);
  }

  return sub_1D1E6926C();
}

uint64_t sub_1D1C27794(uint64_t a1)
{
  v2 = type metadata accessor for TileInfoBearerCollection(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1C2AEC4(a1, v5, type metadata accessor for TileInfoBearerCollection);
  v6 = sub_1D1C6406C();
  result = sub_1D1C2AF2C(v5, type metadata accessor for TileInfoBearerCollection);
  v8 = *(v6 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v10 = 0;
    v11 = 0;
    v12 = MEMORY[0x1E69E7CC0] + 32;
    v13 = v6 + 32;
    v26 = 32;
    while (v10 < *(v6 + 16))
    {
      result = sub_1D17419CC(v13, v27);
      if (!v11)
      {
        v14 = v9[3];
        if (((v14 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_28;
        }

        v15 = v14 & 0xFFFFFFFFFFFFFFFELL;
        if (v15 <= 1)
        {
          v16 = 1;
        }

        else
        {
          v16 = v15;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643290, &qword_1D1E716E8);
        v17 = swift_allocObject();
        v18 = (_swift_stdlib_malloc_size(v17) - 32) / 40;
        v17[2] = v16;
        v17[3] = 2 * v18;
        v19 = (v17 + 4);
        v20 = v9[3] >> 1;
        if (v9[2])
        {
          if (v17 != v9 || v19 >= &v9[5 * v20 + 4])
          {
            memmove(v17 + 4, v9 + 4, 40 * v20);
          }

          v9[2] = 0;
        }

        v12 = v19 + 40 * v20;
        v11 = (v18 & 0x7FFFFFFFFFFFFFFFLL) - v20;

        v9 = v17;
      }

      v22 = __OFSUB__(v11--, 1);
      if (v22)
      {
        goto LABEL_27;
      }

      ++v10;
      result = sub_1D16EEE20(v27, v12);
      v12 += 40;
      v13 += 40;
      if (v8 == v10)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v11 = 0;
LABEL_22:

  v23 = v9[3];
  if (v23 < 2)
  {
    return v9;
  }

  v24 = v23 >> 1;
  v22 = __OFSUB__(v24, v11);
  v25 = v24 - v11;
  if (!v22)
  {
    v9[2] = v25;
    return v9;
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1D1C279CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v5 = a1;
  v6 = sub_1D1C28430(a1, a2, a3);
  v7 = v6;
  if (v6)
  {
    if (v6 > 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643238, &qword_1D1E71690);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 25;
      }

      v8[2] = v7;
      v8[3] = 2 * (v10 >> 3);
    }
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v12 = *(v11 + 24);

  if (v7 < 0)
  {
    goto LABEL_63;
  }

  v14 = (v11 + 32);
  v15 = v12 >> 1;
  v16 = v3 >> 63;
  v17 = v11;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  if (v7)
  {
    v15 -= v7;
    do
    {
      v22 = v5 <= v4;
      if (v3 > 0)
      {
        v22 = v5 >= v4;
      }

      if (v22)
      {
        if (v18 & 1 | (v5 != v4))
        {
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
          return result;
        }

        if (!v20 && v19 == 0x8000000000000000)
        {
          goto LABEL_62;
        }

        v18 = 1;
        v21 = v4;
      }

      else
      {
        v21 = v5 + v3;
        if (__OFADD__(v5, v3))
        {
          v21 = v16 ^ 0x7FFFFFFFFFFFFFFFLL;
        }

        if (__OFADD__(v5, v3))
        {
          v19 = 0x8000000000000000;
        }

        else
        {
          v19 = 0;
        }

        v20 = !__OFADD__(v5, v3);
      }

      *v14++ = v5;
      v5 = v21;
      --v7;
    }

    while (v7);
    v5 = v21;
  }

  v45 = v16 ^ 0x7FFFFFFFFFFFFFFFLL;
  while (1)
  {
    v23 = v5 <= v4;
    if (v3 > 0)
    {
      v23 = v5 >= v4;
    }

    if (v23)
    {
      break;
    }

    v24 = v5 + v3;
    if (__OFADD__(v5, v3))
    {
      v20 = 0;
      v19 = 0x8000000000000000;
      v24 = v45;
      if (v15)
      {
        v24 = v45;
        goto LABEL_53;
      }
    }

    else
    {
      v19 = 0;
      v20 = 1;
      if (v15)
      {
        goto LABEL_53;
      }
    }

LABEL_41:
    v25 = v17[3];
    if (((v25 >> 1) + 0x4000000000000000) < 0)
    {
      goto LABEL_60;
    }

    v46 = v20;
    v47 = v18;
    v26 = v4;
    v27 = v3;
    v28 = v19;
    v29 = v25 & 0xFFFFFFFFFFFFFFFELL;
    if (v29 <= 1)
    {
      v30 = 1;
    }

    else
    {
      v30 = v29;
    }

    v31 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643238, &qword_1D1E71690);
    v17 = swift_allocObject();
    v32 = _swift_stdlib_malloc_size(v17);
    v34 = v32 - 32;
    v33 = v32 < 32;
    v35 = v32 - 25;
    v36 = v31;
    if (v33)
    {
      v34 = v35;
    }

    v37 = v34 >> 3;
    v17[2] = v30;
    v17[3] = 2 * (v34 >> 3);
    v38 = (v17 + 4);
    v39 = v31[3] >> 1;
    if (v31[2])
    {
      v40 = v31 + 4;
      if (v17 != v31 || v38 >= v40 + 8 * v39)
      {
        memmove(v17 + 4, v40, 8 * v39);
        v36 = v31;
      }

      v36[2] = 0;
    }

    v14 = (v38 + 8 * v39);
    v15 = (v37 & 0x7FFFFFFFFFFFFFFFLL) - v39;

    v19 = v28;
    v3 = v27;
    v4 = v26;
    v20 = v46;
    v18 = v47;
LABEL_53:
    v41 = __OFSUB__(v15--, 1);
    if (v41)
    {
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    *v14++ = v5;
    v5 = v24;
  }

  if (!((v5 != v4) | v18 & 1) && (v20 || v19 != 0x8000000000000000))
  {
    v18 = 1;
    v24 = v5;
    if (v15)
    {
      v24 = v5;
      goto LABEL_53;
    }

    goto LABEL_41;
  }

  v42 = v17[3];
  if (v42 >= 2)
  {
    v43 = v42 >> 1;
    v41 = __OFSUB__(v43, v15);
    v44 = v43 - v15;
    if (v41)
    {
      goto LABEL_64;
    }

    v17[2] = v44;
  }

  return v17;
}

uint64_t sub_1D1C27CF0(double a1, double a2, double a3)
{
  v6 = sub_1D1C284C0(a1, a2, a3);
  v7 = v6;
  if (v6)
  {
    if (v6 <= 0)
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643480, &qword_1D1E71900);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 25;
      }

      *(v8 + 2) = v7;
      *(v8 + 3) = 2 * (v10 >> 3);
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v11 = *(v8 + 3);

  if (v7 < 0)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    return result;
  }

  v13 = v8 + 4;
  v14 = v11 >> 1;
  v15 = 0;
  v16 = 0;
  if (v7)
  {
    v14 -= v7;
    v17 = a1;
    while (1)
    {
      v18 = v17 <= a2;
      if (a3 > 0.0)
      {
        v18 = v17 >= a2;
      }

      if (v18)
      {
        if (v15 & 1 | (v17 != a2))
        {
          goto LABEL_50;
        }

        v15 = 1;
        i = v17;
      }

      else
      {
        v20 = __OFADD__(v16++, 1);
        if (v20)
        {
          goto LABEL_51;
        }

        i = a1 + v16 * a3;
      }

      *v13++ = v17;
      v17 = i;
      if (!--v7)
      {
        goto LABEL_21;
      }
    }
  }

  for (i = a1; ; i = v22)
  {
LABEL_21:
    v21 = i <= a2;
    if (a3 > 0.0)
    {
      v21 = i >= a2;
    }

    if (!v21)
    {
      v20 = __OFADD__(v16++, 1);
      if (v20)
      {
        goto LABEL_48;
      }

      v22 = a1 + v16 * a3;
      if (v14)
      {
        goto LABEL_41;
      }

      goto LABEL_29;
    }

    if ((i != a2) | v15 & 1)
    {
      break;
    }

    v15 = 1;
    v22 = i;
    if (v14)
    {
      v22 = i;
      goto LABEL_41;
    }

LABEL_29:
    v23 = *(v8 + 3);
    if (((v23 >> 1) + 0x4000000000000000) < 0)
    {
      goto LABEL_49;
    }

    v24 = v23 & 0xFFFFFFFFFFFFFFFELL;
    if (v24 <= 1)
    {
      v25 = 1;
    }

    else
    {
      v25 = v24;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643480, &qword_1D1E71900);
    v26 = swift_allocObject();
    v27 = _swift_stdlib_malloc_size(v26);
    v28 = v27 - 32;
    if (v27 < 32)
    {
      v28 = v27 - 25;
    }

    v29 = v28 >> 3;
    *(v26 + 2) = v25;
    *(v26 + 3) = 2 * (v28 >> 3);
    v30 = (v26 + 4);
    v31 = *(v8 + 3) >> 1;
    if (*(v8 + 2))
    {
      v32 = v8 + 4;
      if (v26 != v8 || v30 >= v32 + 8 * v31)
      {
        memmove(v26 + 4, v32, 8 * v31);
      }

      v8[2] = 0.0;
    }

    v13 = (v30 + 8 * v31);
    v14 = (v29 & 0x7FFFFFFFFFFFFFFFLL) - v31;

    v8 = v26;
LABEL_41:
    v20 = __OFSUB__(v14--, 1);
    if (v20)
    {
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    *v13++ = i;
  }

  v33 = *(v8 + 3);
  if (v33 >= 2)
  {
    v34 = v33 >> 1;
    v20 = __OFSUB__(v34, v14);
    v35 = v34 - v14;
    if (v20)
    {
      goto LABEL_53;
    }

    *(v8 + 2) = v35;
  }

  return v8;
}

uint64_t sub_1D1C27FB4(uint64_t a1)
{
  v3 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting(0);
  v33 = *(v3 - 8);
  v34 = v3;
  v4 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CA18, &qword_1D1EABE10);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v31 - v9;
  v11 = type metadata accessor for StaticService.AutoClimateControlConfig(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C9B0, &qword_1D1EA1190);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v31 - v18;
  sub_1D1741C08(v1, &v31 - v18, &qword_1EC64C9B0, &qword_1D1EA1190);
  if ((*(v12 + 48))(v19, 1, v11) == 1)
  {
    return sub_1D1E6922C();
  }

  sub_1D1C2B18C(v19, v15, type metadata accessor for StaticService.AutoClimateControlConfig);
  sub_1D1E6922C();
  v21 = *(v15 + 2);
  if (v21 == 1 || (v22 = *(v15 + 1), v32 = *(v15 + 3), v23 = *(v15 + 32), v24 = *v15, sub_1D1E6922C(), sub_1D1E6922C(), sub_1D1E6922C(), !v21))
  {
    sub_1D1E6922C();
    v25 = v34;
  }

  else
  {
    sub_1D1E6922C();
    sub_1D1E678EC();
    v25 = v34;
    if (v23)
    {
      sub_1D1E6922C();
    }

    else
    {
      sub_1D1E6922C();
      if ((v32 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v30 = v32;
      }

      else
      {
        v30 = 0;
      }

      MEMORY[0x1D3892890](v30);
    }
  }

  sub_1D1741C08(v15 + *(v11 + 20), v10, &qword_1EC64CA18, &qword_1D1EABE10);
  if ((*(v33 + 48))(v10, 1, v25) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    sub_1D1C2B18C(v10, v6, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
    sub_1D1E6922C();
    MEMORY[0x1D3892850](*v6);
    v26 = v6[1];
    sub_1D1E6922C();
    if (v26)
    {
      sub_1D176FF94(a1, v26);
    }

    v27 = *(v25 + 24);
    sub_1D1E66C5C();
    sub_1D1C2AFE0(&qword_1EC643958, MEMORY[0x1E6969BC0]);
    sub_1D1E676EC();
    v28 = *(v6 + *(v25 + 28));
    sub_1D1E6922C();
    sub_1D1C2AF2C(v6, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
  }

  v29 = *(v15 + *(v11 + 24));
  sub_1D1E6922C();
  if (v29)
  {
    sub_1D176FDE8(a1, v29);
  }

  return sub_1D1C2AF2C(v15, type metadata accessor for StaticService.AutoClimateControlConfig);
}

uint64_t sub_1D1C28430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  do
  {
    v9 = a1 <= a2;
    if (a3 > 0)
    {
      v9 = a1 >= a2;
    }

    if (v9)
    {
      if ((a1 != a2) | v5 & 1 || !(v7 & 1 | (v6 != 0x8000000000000000)))
      {
        return result;
      }

      v5 = 1;
    }

    else
    {
      v8 = __OFADD__(a1, a3);
      a1 += a3;
      if (v8)
      {
        a1 = (a3 >> 63) ^ 0x7FFFFFFFFFFFFFFFLL;
      }

      if (v8)
      {
        v6 = 0x8000000000000000;
      }

      else
      {
        v6 = 0;
      }

      v7 = !v8;
    }

    v8 = __OFADD__(result++, 1);
  }

  while (!v8);
  __break(1u);
  return result;
}

uint64_t sub_1D1C284C0(double a1, double a2, double a3)
{
  result = 0;
  v4 = 0;
  v5 = 0;
  v6 = a1;
  do
  {
    v8 = v6 <= a2;
    if (a3 > 0.0)
    {
      v8 = v6 >= a2;
    }

    if (v8)
    {
      if ((v6 != a2) | v4 & 1)
      {
        return result;
      }

      v4 = 1;
    }

    else
    {
      v7 = __OFADD__(v5++, 1);
      if (v7)
      {
        goto LABEL_12;
      }

      v6 = a1 + v5 * a3;
    }

    v7 = __OFADD__(result++, 1);
  }

  while (!v7);
  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1D1C28534(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
  return sub_1D1E684FC() & 1;
}

BOOL _s13HomeDataModel13StaticServiceV24AutoClimateControlConfigV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting(0);
  v47 = *(v4 - 8);
  v48 = v4;
  v5 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v44 = (&v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CA18, &qword_1D1EABE10);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v46 = (&v44 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CAE8, &qword_1D1EA1808);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v49 = &v44 - v13;
  v50 = a1;
  v15 = *a1;
  v14 = *(a1 + 8);
  v16 = *(a1 + 16);
  v17 = *(a1 + 24);
  v18 = *(a1 + 32);
  v19 = *a2;
  v20 = *(a2 + 8);
  v21 = *(a2 + 16);
  v22 = *(a2 + 24);
  v51 = a2;
  v23 = *(a2 + 32);
  if (v16 == 1)
  {
    v45 = v12;
    sub_1D1C2B3B4(v15, v14, 1);
    if (v21 == 1)
    {
      sub_1D1C2B3B4(v19, v20, 1);
      sub_1D1C2B470(v15, v14, 1);
      goto LABEL_9;
    }

    sub_1D1C2B3B4(v19, v20, v21);
LABEL_7:
    sub_1D1C2B470(v15, v14, v16);
    sub_1D1C2B470(v19, v20, v21);
    return 0;
  }

  v57[0] = v15;
  v57[1] = v14;
  v57[2] = v16;
  v57[3] = v17;
  v58 = v18;
  if (v21 == 1)
  {
    sub_1D1C2B3B4(v15, v14, v16);
    sub_1D1C2B3B4(v19, v20, 1);
    sub_1D1C2B3B4(v15, v14, v16);

    goto LABEL_7;
  }

  v45 = v12;
  v52 = v19 & 0x101;
  v53 = v20;
  v54 = v21;
  v55 = v22;
  v56 = v23;
  sub_1D1C2B3B4(v15, v14, v16);
  sub_1D1C2B3B4(v19, v20, v21);
  sub_1D1C2B3B4(v15, v14, v16);
  v24 = _s13HomeDataModel011AutoClimateC0C10ThermostatC24CleanEnergySettingConfigV2eeoiySbAG_AGtFZ_0(v57, &v52);

  sub_1D1C2B470(v15, v14, v16);
  if ((v24 & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  v25 = type metadata accessor for StaticService.AutoClimateControlConfig(0);
  v26 = *(v25 + 20);
  v27 = *(v45 + 48);
  v29 = v49;
  v28 = v50;
  sub_1D1741C08(v50 + v26, v49, &qword_1EC64CA18, &qword_1D1EABE10);
  v30 = v51 + v26;
  v31 = v51;
  sub_1D1741C08(v30, v29 + v27, &qword_1EC64CA18, &qword_1D1EABE10);
  v32 = v48;
  v33 = *(v47 + 48);
  if (v33(v29, 1, v48) != 1)
  {
    v34 = v46;
    sub_1D1741C08(v29, v46, &qword_1EC64CA18, &qword_1D1EABE10);
    if (v33(v29 + v27, 1, v32) != 1)
    {
      v35 = v29 + v27;
      v36 = v44;
      sub_1D1C2B18C(v35, v44, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
      v37 = _s13HomeDataModel011AutoClimateC0C10ThermostatC25AdaptiveTemperatureConfigV7SettingV2eeoiySbAI_AItFZ_0(v34, v36);
      sub_1D1C2AF2C(v36, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
      sub_1D1C2AF2C(v34, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
      sub_1D1741A30(v29, &qword_1EC64CA18, &qword_1D1EABE10);
      if ((v37 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_16;
    }

    sub_1D1C2AF2C(v34, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
LABEL_14:
    sub_1D1741A30(v29, &qword_1EC64CAE8, &qword_1D1EA1808);
    return 0;
  }

  if (v33(v29 + v27, 1, v32) != 1)
  {
    goto LABEL_14;
  }

  sub_1D1741A30(v29, &qword_1EC64CA18, &qword_1D1EABE10);
LABEL_16:
  v38 = *(v25 + 24);
  v39 = *(v31 + v38);
  if (*(v28 + v38))
  {
    v40 = *(v28 + v38);
    if (v39)
    {
      swift_bridgeObjectRetain_n();

      v41 = sub_1D177AE98(v40, v39);
      swift_bridgeObjectRelease_n();

      return (v41 & 1) != 0;
    }
  }

  else
  {
    if (!v39)
    {

      return 1;
    }

    v43 = *(v31 + v38);
  }

  return 0;
}

BOOL _s13HomeDataModel13StaticServiceV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v264 = type metadata accessor for StaticService.AutoClimateControlConfig(0);
  v262 = *(v264 - 8);
  v4 = *(v262 + 64);
  MEMORY[0x1EEE9AC00](v264);
  v266 = &v241 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C9B0, &qword_1D1EA1190);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v263 = &v241 - v8;
  v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CAF8, &qword_1D1EA1830);
  v9 = *(*(v261 - 8) + 64);
  MEMORY[0x1EEE9AC00](v261);
  v265 = &v241 - v10;
  v259 = type metadata accessor for EndpointPath(0);
  v256 = *(v259 - 8);
  v11 = *(v256 + 64);
  MEMORY[0x1EEE9AC00](v259);
  v258 = &v241 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644870, &unk_1D1EABA00);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v257 = &v241 - v15;
  v255 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CB00, &qword_1D1EA1838);
  v16 = *(*(v255 - 8) + 64);
  MEMORY[0x1EEE9AC00](v255);
  v260 = &v241 - v17;
  v18 = type metadata accessor for StaticSoftwareUpdate(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v241 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644760, &unk_1D1E9E530);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v241 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C608, &qword_1D1E9FA10);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v241 - v29;
  v254 = sub_1D1E66A7C();
  v253 = *(v254 - 8);
  v31 = *(v253 + 64);
  MEMORY[0x1EEE9AC00](v254);
  v252 = &v241 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x1EEE9AC00](v33 - 8);
  v251 = &v241 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v39 = &v241 - v38;
  MEMORY[0x1EEE9AC00](v37);
  v248 = &v241 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  v42 = *(*(v41 - 8) + 64);
  v43 = MEMORY[0x1EEE9AC00](v41);
  v250 = &v241 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x1EEE9AC00](v43);
  v249 = &v241 - v46;
  MEMORY[0x1EEE9AC00](v45);
  v247 = &v241 - v47;
  v272 = sub_1D1E669FC();
  v274 = *(v272 - 8);
  v48 = *(v274 + 64);
  MEMORY[0x1EEE9AC00](v272);
  v268 = &v241 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v51 = *(*(v50 - 8) + 64);
  v52 = MEMORY[0x1EEE9AC00](v50 - 8);
  v267 = &v241 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52);
  v271 = &v241 - v54;
  v273 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AC0, &qword_1D1E6E810);
  v55 = *(*(v273 - 8) + 64);
  v56 = MEMORY[0x1EEE9AC00](v273);
  v269 = &v241 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v56);
  v279 = &v241 - v58;
  v278 = type metadata accessor for StaticDeviceMetadata();
  v276 = *(v278 - 8);
  v59 = *(v276 + 64);
  MEMORY[0x1EEE9AC00](v278);
  v270 = &v241 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644620, &unk_1D1E75A00);
  v62 = *(*(v61 - 8) + 64);
  MEMORY[0x1EEE9AC00](v61 - 8);
  v277 = &v241 - v63;
  v275 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644880, &qword_1D1E76500);
  v64 = *(*(v275 - 8) + 64);
  MEMORY[0x1EEE9AC00](v275);
  v280 = &v241 - v65;
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v66 = type metadata accessor for StaticService(0);
  v67 = v66[5];
  v68 = *(a1 + v67);
  v69 = *(a1 + v67 + 8);
  v70 = (a2 + v67);
  if (v68 != *v70 || v69 != v70[1])
  {
    v246 = v39;
    v71 = v27;
    v72 = v41;
    v73 = v19;
    v74 = v26;
    v75 = v22;
    v76 = v18;
    v77 = v30;
    v78 = v66;
    v79 = sub_1D1E6904C();
    v66 = v78;
    v30 = v77;
    v18 = v76;
    v22 = v75;
    v26 = v74;
    v19 = v73;
    v41 = v72;
    v27 = v71;
    v39 = v246;
    if ((v79 & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a1 + v66[6]) != *(a2 + v66[6]) || *(a1 + v66[7]) != *(a2 + v66[7]) || *(a1 + v66[8]) != *(a2 + v66[8]))
  {
    return 0;
  }

  v81 = v66[9];
  v82 = *(a1 + v81);
  v83 = *(a2 + v81);
  if (v82 == 2)
  {
    if (v83 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v83 == 2 || ((v83 ^ v82) & 1) != 0)
    {
      return result;
    }
  }

  v84 = v66[10];
  v85 = *(a1 + v84);
  v86 = *(a2 + v84);
  if (v85 == 2)
  {
    if (v86 != 2)
    {
      return 0;
    }

LABEL_20:
    v87 = v66[11];
    v245 = v66;
    if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
    {
      return 0;
    }

    v88 = v245[12];
    v89 = (a1 + v88);
    v90 = *(a1 + v88 + 8);
    v91 = (a2 + v88);
    v92 = *(a2 + v88 + 8);
    v93 = a1;
    if (v90)
    {
      v94 = v280;
      if (!v92)
      {
        return 0;
      }
    }

    else
    {
      if (*v89 != *v91)
      {
        LOBYTE(v92) = 1;
      }

      v94 = v280;
      if (v92)
      {
        return 0;
      }
    }

    v246 = v39;
    v244 = v245[13];
    v95 = *(v275 + 48);
    v242 = v93;
    sub_1D1741C08(v93 + v244, v94, &qword_1EC644620, &unk_1D1E75A00);
    v243 = a2;
    v275 = v95;
    sub_1D1741C08(a2 + v244, v94 + v95, &qword_1EC644620, &unk_1D1E75A00);
    v96 = v278;
    v276 = *(v276 + 48);
    if ((v276)(v94, 1, v278) == 1)
    {
      v97 = (v276)(v94 + v275, 1, v96);
      v98 = v279;
      if (v97 == 1)
      {
        v278 = v41;
        sub_1D1741A30(v94, &qword_1EC644620, &unk_1D1E75A00);
        goto LABEL_34;
      }
    }

    else
    {
      sub_1D1741C08(v94, v277, &qword_1EC644620, &unk_1D1E75A00);
      v99 = (v276)(v94 + v275, 1, v96);
      v98 = v279;
      if (v99 != 1)
      {
        v278 = v41;
        v100 = v94 + v275;
        v101 = v270;
        sub_1D1C2B18C(v100, v270, type metadata accessor for StaticDeviceMetadata);
        v102 = v277;
        LODWORD(v276) = _s13HomeDataModel20StaticDeviceMetadataV2eeoiySbAC_ACtFZ_0(v277, v101);
        sub_1D1C2AF2C(v101, type metadata accessor for StaticDeviceMetadata);
        sub_1D1C2AF2C(v102, type metadata accessor for StaticDeviceMetadata);
        sub_1D1741A30(v280, &qword_1EC644620, &unk_1D1E75A00);
        if ((v276 & 1) == 0)
        {
          return 0;
        }

LABEL_34:
        v276 = v26;
        v277 = v27;
        v280 = v19;
        v103 = v245[14];
        v104 = *(v273 + 48);
        sub_1D1741C08(v242 + v103, v98, &qword_1EC642570, &qword_1D1E6C6A0);
        sub_1D1741C08(v243 + v103, v98 + v104, &qword_1EC642570, &qword_1D1E6C6A0);
        v105 = *(v274 + 48);
        v106 = v272;
        if (v105(v98, 1, v272) == 1)
        {
          if (v105(v98 + v104, 1, v106) == 1)
          {
            sub_1D1741A30(v98, &qword_1EC642570, &qword_1D1E6C6A0);
            goto LABEL_41;
          }
        }

        else
        {
          v107 = v271;
          sub_1D1741C08(v98, v271, &qword_1EC642570, &qword_1D1E6C6A0);
          if (v105(v98 + v104, 1, v106) != 1)
          {
            v108 = v274;
            v109 = v98 + v104;
            v110 = v268;
            (*(v274 + 32))(v268, v109, v106);
            sub_1D1C2AFE0(&qword_1EC642AC8, MEMORY[0x1E6969530]);
            LODWORD(v275) = sub_1D1E6775C();
            v111 = *(v108 + 8);
            v111(v110, v106);
            v111(v271, v106);
            sub_1D1741A30(v279, &qword_1EC642570, &qword_1D1E6C6A0);
            if ((v275 & 1) == 0)
            {
              return 0;
            }

LABEL_41:
            v279 = v22;
            v112 = v245[15];
            v113 = *(v273 + 48);
            v114 = v269;
            sub_1D1741C08(v242 + v112, v269, &qword_1EC642570, &qword_1D1E6C6A0);
            v115 = v243 + v112;
            v116 = v114;
            sub_1D1741C08(v115, v114 + v113, &qword_1EC642570, &qword_1D1E6C6A0);
            if (v105(v114, 1, v106) == 1)
            {
              if (v105(v114 + v113, 1, v106) == 1)
              {
                sub_1D1741A30(v114, &qword_1EC642570, &qword_1D1E6C6A0);
                goto LABEL_48;
              }
            }

            else
            {
              v117 = v114;
              v118 = v267;
              sub_1D1741C08(v117, v267, &qword_1EC642570, &qword_1D1E6C6A0);
              if (v105(v116 + v113, 1, v106) != 1)
              {
                v119 = v274;
                v120 = v116 + v113;
                v121 = v268;
                (*(v274 + 32))(v268, v120, v106);
                sub_1D1C2AFE0(&qword_1EC642AC8, MEMORY[0x1E6969530]);
                v122 = v106;
                v123 = sub_1D1E6775C();
                v124 = *(v119 + 8);
                v124(v121, v122);
                v124(v118, v122);
                sub_1D1741A30(v116, &qword_1EC642570, &qword_1D1E6C6A0);
                if ((v123 & 1) == 0)
                {
                  return 0;
                }

LABEL_48:
                v125 = v18;
                v126 = v245[16];
                v127 = *(v242 + v126);
                v128 = *(v243 + v126);
                if (v127 == 2)
                {
                  v129 = v30;
                  if (v128 != 2)
                  {
                    return 0;
                  }
                }

                else
                {
                  if (v128 == 2)
                  {
                    return 0;
                  }

                  v129 = v30;
                  if (v127)
                  {
                    v130 = 0x6C616D726F6ELL;
                  }

                  else
                  {
                    v130 = 7827308;
                  }

                  if (v127)
                  {
                    v131 = 0xE600000000000000;
                  }

                  else
                  {
                    v131 = 0xE300000000000000;
                  }

                  if (v128)
                  {
                    v132 = 0x6C616D726F6ELL;
                  }

                  else
                  {
                    v132 = 7827308;
                  }

                  if (v128)
                  {
                    v133 = 0xE600000000000000;
                  }

                  else
                  {
                    v133 = 0xE300000000000000;
                  }

                  if (v130 == v132 && v131 == v133)
                  {
                  }

                  else
                  {
                    v134 = sub_1D1E6904C();

                    if ((v134 & 1) == 0)
                    {
                      return 0;
                    }
                  }
                }

                if (*(v242 + v245[17]) != *(v243 + v245[17]) || *(v242 + v245[18]) != *(v243 + v245[18]) || (sub_1D17A6E98(*(v242 + v245[19]), *(v243 + v245[19])) & 1) == 0)
                {
                  return 0;
                }

                v135 = v245[20];
                v136 = (v242 + v135);
                v137 = *(v242 + v135 + 8);
                v138 = (v243 + v135);
                v139 = v138[1];
                if (v137)
                {
                  if (!v139 || (*v136 != *v138 || v137 != v139) && (sub_1D1E6904C() & 1) == 0)
                  {
                    return 0;
                  }
                }

                else if (v139)
                {
                  return 0;
                }

                if (*(v242 + v245[21]) != *(v243 + v245[21]) || *(v242 + v245[22]) != *(v243 + v245[22]) || *(v242 + v245[23]) != *(v243 + v245[23]) || *(v242 + v245[24]) != *(v243 + v245[24]))
                {
                  return 0;
                }

                v140 = v245[25];
                v141 = (v242 + v140);
                v142 = *(v242 + v140 + 8);
                v143 = (v243 + v140);
                v144 = v143[1];
                if (v142)
                {
                  if (!v144 || (*v141 != *v143 || v142 != v144) && (sub_1D1E6904C() & 1) == 0)
                  {
                    return 0;
                  }
                }

                else if (v144)
                {
                  return 0;
                }

                v145 = v245[26];
                v146 = *(v242 + v145);
                LOBYTE(v145) = *(v243 + v145);
                v281[7] = v146;
                v281[6] = v145;
                v147 = ServiceKind.rawValue.getter();
                v149 = v148;
                if (v147 == ServiceKind.rawValue.getter() && v149 == v150)
                {
                }

                else
                {
                  v151 = sub_1D1E6904C();

                  if ((v151 & 1) == 0)
                  {
                    return 0;
                  }
                }

                v152 = v245[27];
                v153 = *(v242 + v152);
                v154 = *(v243 + v152);
                if (v153 == 5)
                {
                  if (v154 != 5)
                  {
                    return 0;
                  }
                }

                else if (v154 == 5 || (sub_1D17A07A0(v153, v154) & 1) == 0)
                {
                  return 0;
                }

                v155 = v245[28];
                v156 = *(v242 + v155);
                v157 = *(v243 + v155);
                if (v156 == 53)
                {
                  if (v157 != 53)
                  {
                    return 0;
                  }
                }

                else
                {
                  if (v157 == 53)
                  {
                    return 0;
                  }

                  v281[5] = v156;
                  v281[4] = v157;
                  v158 = ServiceKind.rawValue.getter();
                  v160 = v159;
                  if (v158 == ServiceKind.rawValue.getter() && v160 == v161)
                  {
                  }

                  else
                  {
                    v162 = sub_1D1E6904C();

                    if ((v162 & 1) == 0)
                    {
                      return 0;
                    }
                  }
                }

                v163 = v245[29];
                v164 = *(v278 + 48);
                v165 = v247;
                sub_1D1741C08(v242 + v163, v247, &qword_1EC642590, qword_1D1E71260);
                sub_1D1741C08(v243 + v163, v165 + v164, &qword_1EC642590, qword_1D1E71260);
                v275 = *(v253 + 48);
                if ((v275)(v165, 1, v254) == 1)
                {
                  if ((v275)(v247 + v164, 1, v254) == 1)
                  {
                    sub_1D1741A30(v247, &qword_1EC642590, qword_1D1E71260);
                    goto LABEL_113;
                  }
                }

                else
                {
                  v166 = v247;
                  sub_1D1741C08(v247, v248, &qword_1EC642590, qword_1D1E71260);
                  if ((v275)(v166 + v164, 1, v254) != 1)
                  {
                    v170 = v253;
                    v171 = v247;
                    v172 = v252;
                    v173 = v254;
                    (*(v253 + 32))(v252, v247 + v164, v254);
                    sub_1D1C2AFE0(&qword_1EE07D170, MEMORY[0x1E69695A8]);
                    v174 = v248;
                    LODWORD(v274) = sub_1D1E6775C();
                    v175 = *(v170 + 8);
                    v175(v172, v173);
                    v175(v174, v173);
                    sub_1D1741A30(v171, &qword_1EC642590, qword_1D1E71260);
                    if ((v274 & 1) == 0)
                    {
                      return 0;
                    }

LABEL_113:
                    v176 = v245[30];
                    v177 = *(v278 + 48);
                    v178 = v249;
                    sub_1D1741C08(v242 + v176, v249, &qword_1EC642590, qword_1D1E71260);
                    sub_1D1741C08(v243 + v176, v178 + v177, &qword_1EC642590, qword_1D1E71260);
                    if ((v275)(v178, 1, v254) == 1)
                    {
                      if ((v275)(v249 + v177, 1, v254) == 1)
                      {
                        sub_1D1741A30(v249, &qword_1EC642590, qword_1D1E71260);
                        goto LABEL_121;
                      }
                    }

                    else
                    {
                      v179 = v249;
                      sub_1D1741C08(v249, v246, &qword_1EC642590, qword_1D1E71260);
                      if ((v275)(v179 + v177, 1, v254) != 1)
                      {
                        v180 = v253;
                        v181 = v249;
                        v182 = v252;
                        v183 = v254;
                        (*(v253 + 32))(v252, v249 + v177, v254);
                        sub_1D1C2AFE0(&qword_1EE07D170, MEMORY[0x1E69695A8]);
                        v184 = v246;
                        LODWORD(v274) = sub_1D1E6775C();
                        v185 = *(v180 + 8);
                        v185(v182, v183);
                        v185(v184, v183);
                        sub_1D1741A30(v181, &qword_1EC642590, qword_1D1E71260);
                        if ((v274 & 1) == 0)
                        {
                          return 0;
                        }

LABEL_121:
                        if ((sub_1D177AE58(*(v242 + v245[31]), *(v243 + v245[31])) & 1) == 0)
                        {
                          return 0;
                        }

                        v186 = v245[32];
                        v187 = *(v242 + v186);
                        v188 = *(v243 + v186);

                        v189 = sub_1D1846E74(v187, v188);

                        if ((v189 & 1) == 0)
                        {
                          return 0;
                        }

                        v190 = v245[33];
                        v191 = *(v242 + v190);
                        v192 = *(v242 + v190 + 8);
                        v193 = (v243 + v190);
                        v194 = *v193;
                        v195 = v193[1];

                        if ((sub_1D184CF18(v191, v194) & 1) == 0)
                        {

                          return 0;
                        }

                        v196 = sub_1D184D5B4(v192, v195);

                        if ((v196 & 1) == 0)
                        {
                          return 0;
                        }

                        v197 = v245[34];
                        v198 = *(v277 + 48);
                        sub_1D1741C08(v242 + v197, v129, &qword_1EC644760, &unk_1D1E9E530);
                        sub_1D1741C08(v243 + v197, v129 + v198, &qword_1EC644760, &unk_1D1E9E530);
                        v199 = *(v280 + 48);
                        if (v199(v129, 1, v125) == 1)
                        {
                          if (v199(v129 + v198, 1, v125) == 1)
                          {
                            sub_1D1741A30(v129, &qword_1EC644760, &unk_1D1E9E530);
LABEL_134:
                            if (*(v242 + v245[35]) != *(v243 + v245[35]) || (sub_1D177AE58(*(v242 + v245[36]), *(v243 + v245[36])) & 1) == 0)
                            {
                              return 0;
                            }

                            v205 = v245[37];
                            v206 = *(v278 + 48);
                            v207 = v250;
                            sub_1D1741C08(v242 + v205, v250, &qword_1EC642590, qword_1D1E71260);
                            sub_1D1741C08(v243 + v205, v207 + v206, &qword_1EC642590, qword_1D1E71260);
                            if ((v275)(v207, 1, v254) == 1)
                            {
                              if ((v275)(v250 + v206, 1, v254) == 1)
                              {
                                sub_1D1741A30(v250, &qword_1EC642590, qword_1D1E71260);
                                goto LABEL_145;
                              }
                            }

                            else
                            {
                              v208 = v250;
                              sub_1D1741C08(v250, v251, &qword_1EC642590, qword_1D1E71260);
                              if ((v275)(v208 + v206, 1, v254) != 1)
                              {
                                v209 = v253;
                                v210 = v250;
                                v211 = v250 + v206;
                                v212 = v252;
                                v213 = v254;
                                (*(v253 + 32))(v252, v211, v254);
                                sub_1D1C2AFE0(&qword_1EE07D170, MEMORY[0x1E69695A8]);
                                v214 = v251;
                                v215 = sub_1D1E6775C();
                                v216 = *(v209 + 8);
                                v216(v212, v213);
                                v216(v214, v213);
                                sub_1D1741A30(v210, &qword_1EC642590, qword_1D1E71260);
                                if ((v215 & 1) == 0)
                                {
                                  return 0;
                                }

LABEL_145:
                                v217 = v245[38];
                                v218 = (v242 + v217);
                                v219 = *(v242 + v217 + 2);
                                v220 = (v243 + v217);
                                v221 = *(v243 + v217 + 2);
                                if (v219)
                                {
                                  if (!v221)
                                  {
                                    return 0;
                                  }
                                }

                                else
                                {
                                  if (*v218 != *v220)
                                  {
                                    LOBYTE(v221) = 1;
                                  }

                                  if (v221)
                                  {
                                    return 0;
                                  }
                                }

                                v222 = v245[39];
                                v223 = *(v255 + 48);
                                v224 = v260;
                                sub_1D1741C08(v242 + v222, v260, &qword_1EC644870, &unk_1D1EABA00);
                                sub_1D1741C08(v243 + v222, v224 + v223, &qword_1EC644870, &unk_1D1EABA00);
                                v225 = *(v256 + 48);
                                if (v225(v224, 1, v259) == 1)
                                {
                                  if (v225(v260 + v223, 1, v259) == 1)
                                  {
                                    sub_1D1741A30(v260, &qword_1EC644870, &unk_1D1EABA00);
LABEL_154:
                                    v226 = v245[40];
                                    v227 = *(v261 + 48);
                                    v228 = v265;
                                    sub_1D1741C08(v242 + v226, v265, &qword_1EC64C9B0, &qword_1D1EA1190);
                                    sub_1D1741C08(v243 + v226, v228 + v227, &qword_1EC64C9B0, &qword_1D1EA1190);
                                    v229 = *(v262 + 48);
                                    if (v229(v228, 1, v264) == 1)
                                    {
                                      if (v229(v265 + v227, 1, v264) == 1)
                                      {
                                        sub_1D1741A30(v265, &qword_1EC64C9B0, &qword_1D1EA1190);
                                        return 1;
                                      }
                                    }

                                    else
                                    {
                                      v235 = v265;
                                      sub_1D1741C08(v265, v263, &qword_1EC64C9B0, &qword_1D1EA1190);
                                      if (v229(v235 + v227, 1, v264) != 1)
                                      {
                                        v236 = v265;
                                        v237 = v265 + v227;
                                        v238 = v266;
                                        sub_1D1C2B18C(v237, v266, type metadata accessor for StaticService.AutoClimateControlConfig);
                                        v239 = v263;
                                        v240 = _s13HomeDataModel13StaticServiceV24AutoClimateControlConfigV2eeoiySbAE_AEtFZ_0(v263, v238);
                                        sub_1D1C2AF2C(v238, type metadata accessor for StaticService.AutoClimateControlConfig);
                                        sub_1D1C2AF2C(v239, type metadata accessor for StaticService.AutoClimateControlConfig);
                                        sub_1D1741A30(v236, &qword_1EC64C9B0, &qword_1D1EA1190);
                                        return v240;
                                      }

                                      sub_1D1C2AF2C(v263, type metadata accessor for StaticService.AutoClimateControlConfig);
                                    }

                                    sub_1D1741A30(v265, &qword_1EC64CAF8, &qword_1D1EA1830);
                                    return 0;
                                  }
                                }

                                else
                                {
                                  v230 = v260;
                                  sub_1D1741C08(v260, v257, &qword_1EC644870, &unk_1D1EABA00);
                                  if (v225(v230 + v223, 1, v259) != 1)
                                  {
                                    sub_1D1C2B18C(v260 + v223, v258, type metadata accessor for EndpointPath);
                                    if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) != 0 && *(v257 + *(v259 + 20)) == *(v258 + *(v259 + 20)))
                                    {
                                      v231 = *(v259 + 24);
                                      v232 = v257;
                                      v233 = *(v257 + v231);
                                      v234 = *(v258 + v231);
                                      sub_1D1C2AF2C(v258, type metadata accessor for EndpointPath);
                                      sub_1D1C2AF2C(v232, type metadata accessor for EndpointPath);
                                      sub_1D1741A30(v260, &qword_1EC644870, &unk_1D1EABA00);
                                      if (v233 != v234)
                                      {
                                        return 0;
                                      }

                                      goto LABEL_154;
                                    }

                                    sub_1D1C2AF2C(v258, type metadata accessor for EndpointPath);
                                    sub_1D1C2AF2C(v257, type metadata accessor for EndpointPath);
                                    v167 = &qword_1EC644870;
                                    v168 = &unk_1D1EABA00;
                                    goto LABEL_165;
                                  }

                                  sub_1D1C2AF2C(v257, type metadata accessor for EndpointPath);
                                }

                                v167 = &qword_1EC64CB00;
                                v168 = &qword_1D1EA1838;
LABEL_165:
                                v169 = &v283;
                                goto LABEL_119;
                              }

                              (*(v253 + 8))(v251, v254);
                            }

                            v167 = &qword_1EC642980;
                            v168 = &unk_1D1E6E6E0;
                            v169 = &v282;
LABEL_119:
                            sub_1D1741A30(*(v169 - 32), v167, v168);
                            return 0;
                          }
                        }

                        else
                        {
                          sub_1D1741C08(v129, v276, &qword_1EC644760, &unk_1D1E9E530);
                          if (v199(v129 + v198, 1, v125) != 1)
                          {
                            sub_1D1C2B18C(v129 + v198, v279, type metadata accessor for StaticSoftwareUpdate);
                            if (_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0())
                            {
                              v202 = v276;
                              v203 = v279;
                              updated = _s13HomeDataModel20StaticSoftwareUpdateV4KindO2eeoiySbAE_AEtFZ_0(v276 + *(v125 + 20), &v279[*(v125 + 20)]);
                              sub_1D1C2AF2C(v203, type metadata accessor for StaticSoftwareUpdate);
                              sub_1D1C2AF2C(v202, type metadata accessor for StaticSoftwareUpdate);
                              sub_1D1741A30(v129, &qword_1EC644760, &unk_1D1E9E530);
                              if (!updated)
                              {
                                return 0;
                              }

                              goto LABEL_134;
                            }

                            sub_1D1C2AF2C(v279, type metadata accessor for StaticSoftwareUpdate);
                            sub_1D1C2AF2C(v276, type metadata accessor for StaticSoftwareUpdate);
                            v200 = &qword_1EC644760;
                            v201 = &unk_1D1E9E530;
LABEL_140:
                            sub_1D1741A30(v129, v200, v201);
                            return 0;
                          }

                          sub_1D1C2AF2C(v276, type metadata accessor for StaticSoftwareUpdate);
                        }

                        v200 = &qword_1EC64C608;
                        v201 = &qword_1D1E9FA10;
                        goto LABEL_140;
                      }

                      (*(v253 + 8))(v246, v254);
                    }

                    v167 = &qword_1EC642980;
                    v168 = &unk_1D1E6E6E0;
                    v169 = v281;
                    goto LABEL_119;
                  }

                  (*(v253 + 8))(v248, v254);
                }

                v167 = &qword_1EC642980;
                v168 = &unk_1D1E6E6E0;
                v169 = &v279;
                goto LABEL_119;
              }

              (*(v274 + 8))(v118, v106);
            }

            sub_1D1741A30(v116, &qword_1EC642AC0, &qword_1D1E6E810);
            return 0;
          }

          (*(v274 + 8))(v107, v106);
        }

        sub_1D1741A30(v98, &qword_1EC642AC0, &qword_1D1E6E810);
        return 0;
      }

      sub_1D1C2AF2C(v277, type metadata accessor for StaticDeviceMetadata);
    }

    sub_1D1741A30(v94, &qword_1EC644880, &qword_1D1E76500);
    return 0;
  }

  result = 0;
  if (v86 != 2 && ((v86 ^ v85) & 1) == 0)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1D1C2AEC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1C2AF2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D1C2AF8C()
{
  result = qword_1EC64C9C0;
  if (!qword_1EC64C9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C9C0);
  }

  return result;
}

uint64_t sub_1D1C2AFE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D1C2B028(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64C9C8, &qword_1D1EA11A8);
    sub_1D1C2AFE0(a2, type metadata accessor for StaticService);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D1C2B0C4()
{
  result = qword_1EC64C9D8;
  if (!qword_1EC64C9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C9D8);
  }

  return result;
}

unint64_t sub_1D1C2B118()
{
  result = qword_1EC64C9E0;
  if (!qword_1EC64C9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C9E0);
  }

  return result;
}

uint64_t sub_1D1C2B18C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1C2B1F4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6438F0, &qword_1D1E99360);
    sub_1D1C2AFE0(a2, MEMORY[0x1E69695A8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D1C2B290()
{
  result = qword_1EC64CA00;
  if (!qword_1EC64CA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CA00);
  }

  return result;
}

unint64_t sub_1D1C2B2E4()
{
  result = qword_1EC64CA08;
  if (!qword_1EC64CA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CA08);
  }

  return result;
}

uint64_t sub_1D1C2B374(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D1C2B3B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

unint64_t sub_1D1C2B3C8()
{
  result = qword_1EC64CA28;
  if (!qword_1EC64CA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CA28);
  }

  return result;
}

unint64_t sub_1D1C2B41C()
{
  result = qword_1EC64CA30;
  if (!qword_1EC64CA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CA30);
  }

  return result;
}

uint64_t sub_1D1C2B470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

unint64_t sub_1D1C2B484()
{
  result = qword_1EC64CA40;
  if (!qword_1EC64CA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CA40);
  }

  return result;
}

unint64_t sub_1D1C2B4D8()
{
  result = qword_1EC64CA50;
  if (!qword_1EC64CA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CA50);
  }

  return result;
}

unint64_t sub_1D1C2B52C()
{
  result = qword_1EC64CA60;
  if (!qword_1EC64CA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CA60);
  }

  return result;
}

uint64_t sub_1D1C2B5C8(void *a1)
{
  a1[1] = sub_1D1C2AFE0(&qword_1EC64CA68, type metadata accessor for StaticService);
  a1[2] = sub_1D1C2AFE0(&qword_1EC64CA70, type metadata accessor for StaticService);
  a1[3] = sub_1D1C2AFE0(&qword_1EC644750, type metadata accessor for StaticService);
  a1[4] = sub_1D1C2AFE0(&qword_1EC6446F8, type metadata accessor for StaticService);
  a1[5] = sub_1D1C2AFE0(&qword_1EE07AB20, type metadata accessor for StaticService);
  result = sub_1D1C2AFE0(&qword_1EC64CA78, type metadata accessor for StaticService);
  a1[6] = result;
  return result;
}

uint64_t sub_1D1C2B6EC(void *a1)
{
  a1[1] = sub_1D1C2AFE0(&qword_1EC644750, type metadata accessor for StaticService);
  a1[2] = sub_1D1C2AFE0(&qword_1EC6446F8, type metadata accessor for StaticService);
  a1[3] = sub_1D1C2AFE0(&qword_1EE07AB20, type metadata accessor for StaticService);
  result = sub_1D1C2AFE0(&qword_1EC64CA78, type metadata accessor for StaticService);
  a1[4] = result;
  return result;
}

void sub_1D1C2B830()
{
  sub_1D1E66A7C();
  if (v0 <= 0x3F)
  {
    sub_1D17BDF80(319, &qword_1EE07D1F0);
    if (v1 <= 0x3F)
    {
      sub_1D17BDF80(319, &qword_1EE07D1D8);
      if (v2 <= 0x3F)
      {
        sub_1D1C2BC40(319, &qword_1EE07DF30, type metadata accessor for StaticDeviceMetadata, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1D1C2BC40(319, &qword_1EE07E020, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_1D17BDF80(319, qword_1EE07CAB8);
            if (v5 <= 0x3F)
            {
              sub_1D1791340();
              if (v6 <= 0x3F)
              {
                sub_1D17BDF80(319, qword_1EE07D1F8);
                if (v7 <= 0x3F)
                {
                  sub_1D17BDF80(319, qword_1EE07D8B8);
                  if (v8 <= 0x3F)
                  {
                    sub_1D17BDF80(319, qword_1EE07DB20);
                    if (v9 <= 0x3F)
                    {
                      sub_1D1C2BC40(319, &qword_1EE07E018, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
                      if (v10 <= 0x3F)
                      {
                        sub_1D1C2BC40(319, &qword_1EC64CA88, type metadata accessor for StaticService, MEMORY[0x1E69E62F8]);
                        if (v11 <= 0x3F)
                        {
                          sub_1D1C2BC40(319, &qword_1EE07DE40, type metadata accessor for StaticSoftwareUpdate, MEMORY[0x1E69E6720]);
                          if (v12 <= 0x3F)
                          {
                            sub_1D17BDF80(319, &qword_1EE07D1D0);
                            if (v13 <= 0x3F)
                            {
                              sub_1D1C2BC40(319, qword_1EE07DAD8, type metadata accessor for EndpointPath, MEMORY[0x1E69E6720]);
                              if (v14 <= 0x3F)
                              {
                                sub_1D1C2BC40(319, &qword_1EE07AB28, type metadata accessor for StaticService.AutoClimateControlConfig, MEMORY[0x1E69E6720]);
                                if (v15 <= 0x3F)
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
              }
            }
          }
        }
      }
    }
  }
}

void sub_1D1C2BC40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D1C2BCCC()
{
  sub_1D17BDF80(319, &qword_1EC64CAA0);
  if (v0 <= 0x3F)
  {
    sub_1D1C2BC40(319, &qword_1EC64CAA8, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1D17BDF80(319, &qword_1EC64CAB0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for StaticService.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDC)
  {
    goto LABEL_17;
  }

  if (a2 + 36 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 36) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 36;
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

      return (*a1 | (v4 << 8)) - 36;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 36;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x25;
  v8 = v6 - 37;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StaticService.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 36 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 36) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDC)
  {
    v4 = 0;
  }

  if (a2 > 0xDB)
  {
    v5 = ((a2 - 220) >> 8) + 1;
    *result = a2 + 36;
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
    *result = a2 + 36;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D1C2BF1C()
{
  result = qword_1EC64CAB8;
  if (!qword_1EC64CAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CAB8);
  }

  return result;
}

unint64_t sub_1D1C2BF74()
{
  result = qword_1EC64CAC0;
  if (!qword_1EC64CAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CAC0);
  }

  return result;
}

unint64_t sub_1D1C2BFCC()
{
  result = qword_1EC64CAC8;
  if (!qword_1EC64CAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CAC8);
  }

  return result;
}

unint64_t sub_1D1C2C024()
{
  result = qword_1EC64CAD0;
  if (!qword_1EC64CAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CAD0);
  }

  return result;
}

unint64_t sub_1D1C2C07C()
{
  result = qword_1EC64CAD8;
  if (!qword_1EC64CAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CAD8);
  }

  return result;
}

unint64_t sub_1D1C2C0D4()
{
  result = qword_1EC64CAE0;
  if (!qword_1EC64CAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CAE0);
  }

  return result;
}

uint64_t sub_1D1C2C128(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x72616D6972507369 && a2 == 0xE900000000000079 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C62756F447369 && a2 == 0xEC00000068676948 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6168636165527369 && a2 == 0xEB00000000656C62 || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7262696C61437369 && a2 == 0xED0000676E697461 || (sub_1D1E6904C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x746142776F4C7369 && a2 == 0xEC00000079726574 || (sub_1D1E6904C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x726F737365636361 && a2 == 0xEB00000000644979 || (sub_1D1E6904C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D1EC69B0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x654D656369766564 && a2 == 0xEE00617461646174 || (sub_1D1E6904C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6564644165746164 && a2 == 0xE900000000000064 || (sub_1D1E6904C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D1EC69D0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001D1EC69F0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D1EC6A10 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001D1EC6A30 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x7364496D6F6F72 && a2 == 0xE700000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x656D614E6D6F6F72 && a2 == 0xE800000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D1EC5DC0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000001D1EC6A50 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x69726F7661467369 && a2 == 0xEA00000000006574 || (sub_1D1E6904C() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D1EC6150 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D1EBDFA0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x4B65636976726573 && a2 == 0xEB00000000646E69 || (sub_1D1E6904C() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0x5365636976726573 && a2 == 0xEE00646E694B6275 || (sub_1D1E6904C() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D1EC6A70 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0x6553746E65726170 && a2 == 0xEF64496563697672 || (sub_1D1E6904C() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D1EC6A90 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D1EC6AB0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D1EC6AD0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D1EC6AF0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 29;
  }

  else if (a1 == 0x6572617774666F73 && a2 == 0xEE00657461647055 || (sub_1D1E6904C() & 1) != 0)
  {

    return 30;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D1EC6270 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 31;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D1EC6B10 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 32;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D1EC6B30 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 33;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D1EC6B50 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 34;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D1EC6B70 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 35;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D1EC6B90 == a2)
  {

    return 36;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 36;
    }

    else
    {
      return 37;
    }
  }
}

uint64_t sub_1D1C2CC84(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = type metadata accessor for StaticService(0);
  v48 = *(v10 - 8);
  v11 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v57 = v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1D1E66A7C();
  v13 = *(v49 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v16 = v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CAF0, &unk_1D1EA1820);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = v45 - v19;
  v21 = -1 << *(a1 + 32);
  v22 = ~v21;
  v23 = *(a1 + 64);
  v24 = -v21;
  v50 = a1;
  v51 = a1 + 64;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  else
  {
    v25 = -1;
  }

  v52 = v22;
  v53 = 0;
  v54 = v25 & v23;
  v55 = a2;
  v56 = a3;
  v26 = (v13 + 32);
  v46 = (v13 + 8);
  v47 = v13;

  v45[1] = a3;

  while (1)
  {
    sub_1D1AC07A4(v20);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436E8, &unk_1D1E71E40);
    if ((*(*(v27 - 8) + 48))(v20, 1, v27) == 1)
    {
      sub_1D1716918();
    }

    v28 = *(v27 + 48);
    v29 = *v26;
    (*v26)(v16, v20, v49);
    sub_1D1C2B18C(&v20[v28], v57, type metadata accessor for StaticService);
    v30 = *a5;
    v32 = sub_1D1742188(v16);
    v33 = v30[2];
    v34 = (v31 & 1) == 0;
    v35 = v33 + v34;
    if (__OFADD__(v33, v34))
    {
      break;
    }

    v36 = v31;
    if (v30[3] >= v35)
    {
      if (a4)
      {
        v40 = *a5;
        if ((v31 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_1D1735934();
        v40 = *a5;
        if ((v36 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

LABEL_5:
      (*v46)(v16, v49);
      sub_1D1B61488(v57, v40[7] + *(v48 + 72) * v32);
      a4 = 1;
    }

    else
    {
      sub_1D1723194(v35, a4 & 1);
      v37 = *a5;
      v38 = sub_1D1742188(v16);
      if ((v36 & 1) != (v39 & 1))
      {
        goto LABEL_21;
      }

      v32 = v38;
      v40 = *a5;
      if (v36)
      {
        goto LABEL_5;
      }

LABEL_14:
      v40[(v32 >> 6) + 8] |= 1 << v32;
      v29((v40[6] + *(v47 + 72) * v32), v16, v49);
      sub_1D1C2B18C(v57, v40[7] + *(v48 + 72) * v32, type metadata accessor for StaticService);
      v41 = v40[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_20;
      }

      v40[2] = v43;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_1D1E690FC();
  __break(1u);
  return result;
}

void sub_1D1C2D090(uint64_t a1, char a2, void (**a3)(char *, uint64_t))
{
  v64 = a3;
  v6 = sub_1D1E66A7C();
  v58 = *(v6 - 8);
  v7 = v58[8];
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643700, &qword_1D1E71E58);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v63 = &v55 - v14;
  v15 = *(a1 + 16);
  if (!v15)
  {
    return;
  }

  v16 = *(v12 + 48);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v60 = *(v13 + 72);
  v55 = v17;
  v56 = a1;
  v18 = a1 + v17;
  v19 = v63;
  sub_1D1741C08(v18, v63, &qword_1EC643700, &qword_1D1E71E58);
  v20 = v58[4];
  v61 = (v58 + 4);
  v62 = v6;
  v20(v9, v19, v6);
  v59 = v16;
  v21 = *(v19 + v16);
  v22 = *v64;
  v24 = sub_1D1742188(v9);
  v25 = *(v22 + 2);
  v26 = (v23 & 1) == 0;
  v27 = v25 + v26;
  if (__OFADD__(v25, v26))
  {
    goto LABEL_24;
  }

  LOBYTE(v3) = v23;
  if (*(v22 + 3) >= v27)
  {
    v19 = v61;
    if ((a2 & 1) == 0)
    {
      goto LABEL_26;
    }

    v32 = v21;
    while (1)
    {
LABEL_8:
      v21 = *v64;
      v57 = v19 - 3;
      if (v3)
      {
        v3 = v62;
        (*(v19 - 3))(v9, v62);
        v33 = *(v21 + 7);
        v34 = *(v33 + 8 * v24);
        *(v33 + 8 * v24) = v32;
      }

      else
      {
        *(v21 + (v24 >> 6) + 8) |= 1 << v24;
        v3 = v62;
        v20((*(v21 + 6) + v58[9] * v24), v9, v62);
        *(*(v21 + 7) + 8 * v24) = v32;
        v35 = *(v21 + 2);
        v36 = __OFADD__(v35, 1);
        v37 = v35 + 1;
        if (v36)
        {
          goto LABEL_25;
        }

        *(v21 + 2) = v37;
      }

      v20 = (v15 - 1);
      if (v15 == 1)
      {
        return;
      }

      v15 = v56 + v60 + v55;
      while (1)
      {
        v40 = v63;
        sub_1D1741C08(v15, v63, &qword_1EC643700, &qword_1D1E71E58);
        v21 = *v19;
        (*v19)(v9, v40, v3);
        v41 = *(v40 + v59);
        v42 = *v64;
        v24 = sub_1D1742188(v9);
        v44 = *(v42 + 2);
        v45 = (v43 & 1) == 0;
        v46 = v44 + v45;
        if (__OFADD__(v44, v45))
        {
          break;
        }

        v47 = v43;
        if (*(v42 + 3) < v46)
        {
          v48 = v64;
          sub_1D1721444(v46, 1);
          v49 = *v48;
          v50 = sub_1D1742188(v9);
          if ((v47 & 1) != (v51 & 1))
          {
            goto LABEL_27;
          }

          v24 = v50;
        }

        v52 = *v64;
        if (v47)
        {
          v3 = v62;
          (*v57)(v9, v62);
          v38 = *(v52 + 7);
          v39 = *(v38 + 8 * v24);
          *(v38 + 8 * v24) = v41;

          v19 = v61;
        }

        else
        {
          *(v52 + (v24 >> 6) + 8) |= 1 << v24;
          v19 = v61;
          v3 = v62;
          (v21)(*(v52 + 6) + v58[9] * v24, v9, v62);
          *(*(v52 + 7) + 8 * v24) = v41;
          v53 = *(v52 + 2);
          v36 = __OFADD__(v53, 1);
          v54 = v53 + 1;
          if (v36)
          {
            goto LABEL_25;
          }

          *(v52 + 2) = v54;
        }

        v15 += v60;
        v20 = (v20 - 1);
        if (!v20)
        {
          return;
        }
      }

LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      v32 = v21;
      sub_1D1734504();
    }
  }

  v28 = v64;
  sub_1D1721444(v27, a2 & 1);
  v29 = *v28;
  v30 = sub_1D1742188(v9);
  if ((v3 & 1) == (v31 & 1))
  {
    v24 = v30;
    v32 = v21;
    v19 = v61;
    goto LABEL_8;
  }

LABEL_27:
  sub_1D1E690FC();
  __break(1u);
}

uint64_t sub_1D1C2D508(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000001D1EC6BB0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001D1EC6BD0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6863537065656C73 && a2 == 0xED0000656C756465)
  {

    return 2;
  }

  else
  {
    v5 = sub_1D1E6904C();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D1C2D6A4(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
  return sub_1D1E684FC() & 1;
}

id StaticService.statusString(with:)(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v71 = &v66 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v66 - v9;
  v73 = sub_1D1E669FC();
  v11 = *(v73 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v73);
  v69 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for StaticService(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for StatusStrings.Options();
  v18 = *(*(v72 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v72);
  v21 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v66 - v22;
  sub_1D1C3BA30(a1, &v66 - v22, type metadata accessor for StatusStrings.Options);
  v24 = a1[4];
  v70 = v10;
  if (v24 == 1)
  {
    v25 = a1[5];
    LODWORD(v68) = a1[6];
    v26 = v21;
    v27 = v72;
    v28 = *(v14 + 60);
    v29 = *(v2 + *(v14 + 64));
    sub_1D1C3BED8(v23, type metadata accessor for StatusStrings.Options);
    sub_1D1741C08(v2 + v28, &v23[v27[11]], &qword_1EC642570, &qword_1D1E6C6A0);
    *v23 = 65793;
    v23[4] = 1;
    v23[5] = v25;
    v23[6] = v68;
    v23[v27[12]] = v29;
    v30 = v27[13];
    v21 = v26;
    v31 = &v23[v30];
    v31[4] = 0;
    *v31 = 2;
  }

  if (qword_1EC6423C8 != -1)
  {
    swift_once();
  }

  v32 = sub_1D1E6709C();
  __swift_project_value_buffer(v32, qword_1EC64CB08);
  sub_1D1C3BA30(v2, v17, type metadata accessor for StaticService);
  v33 = sub_1D1E6707C();
  v34 = sub_1D1E6835C();
  if (os_log_type_enabled(v33, v34))
  {
    v68 = v2;
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v74[0] = v36;
    *v35 = 136316162;
    v37 = sub_1D1E66A1C();
    v39 = v38;
    sub_1D1C3BED8(v17, type metadata accessor for StaticService);
    v40 = sub_1D1B1312C(v37, v39, v74);

    *(v35 + 4) = v40;
    *(v35 + 12) = 2080;
    if (qword_1EC642410 != -1)
    {
      swift_once();
    }

    v67 = qword_1EC6BE260;
    swift_beginAccess();
    sub_1D1C3BA30(v23, v21, type metadata accessor for StatusStrings.Options);
    v41 = v70;
    sub_1D1741A90(&v21[*(v72 + 44)], v70, &qword_1EC642570, &qword_1D1E6C6A0);
    v42 = v11;
    v43 = *(v11 + 48);
    if (v43(v41, 1, v73) == 1)
    {
      v44 = v36;
      v45 = v33;
      v46 = v34;
      v47 = v69;
      sub_1D1E668FC();
      v48 = v43(v41, 1, v73);
      v49 = v47;
      v34 = v46;
      v33 = v45;
      v36 = v44;
      if (v48 != 1)
      {
        sub_1D1741A30(v41, &qword_1EC642570, &qword_1D1E6C6A0);
      }
    }

    else
    {
      v49 = v69;
      (*(v42 + 32))(v69, v41, v73);
    }

    v50 = sub_1D1E6694C();
    (*(v42 + 8))(v49, v73);
    v51 = [v67 stringFromDate_];

    v52 = sub_1D1E6781C();
    v54 = v53;

    v55 = sub_1D1B1312C(v52, v54, v74);

    *(v35 + 14) = v55;
    *(v35 + 22) = 2080;
    v56 = v23[*(v72 + 48)];
    v57 = 7827308;
    if (v56)
    {
      v57 = 0x6C616D726F6ELL;
    }

    v58 = 0xE300000000000000;
    if (v56)
    {
      v58 = 0xE600000000000000;
    }

    if (v56 == 2)
    {
      v59 = 0x6E776F6E6B6E75;
    }

    else
    {
      v59 = v57;
    }

    if (v56 == 2)
    {
      v60 = 0xE700000000000000;
    }

    else
    {
      v60 = v58;
    }

    v61 = sub_1D1B1312C(v59, v60, v74);

    *(v35 + 24) = v61;
    *(v35 + 32) = 1024;
    *(v35 + 34) = v23[5];
    *(v35 + 38) = 1024;
    *(v35 + 40) = v23[6];
    _os_log_impl(&dword_1D16EC000, v33, v34, "Generating status string for staticService: %s with lastSeenDate: %s and with lastSeenBatteryStatus: %s for isStatusTitle value: %{BOOL}d and for isDetailedStatusTitle value: %{BOOL}d", v35, 0x2Cu);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v36, -1, -1);
    MEMORY[0x1D3893640](v35, -1, -1);
  }

  else
  {

    sub_1D1C3BED8(v17, type metadata accessor for StaticService);
  }

  swift_beginAccess();
  v62 = type metadata accessor for StaticMatterDevice();
  v63 = v71;
  (*(*(v62 - 8) + 56))(v71, 1, 1, v62);
  v64 = StaticService.statusString(with:associatedMatterDevice:)(v23);
  sub_1D1741A30(v63, &qword_1EC643650, &qword_1D1E71D40);
  sub_1D1C3BED8(v23, type metadata accessor for StatusStrings.Options);
  return v64;
}

id StaticService.statusString(with:associatedMatterDevice:)(_BYTE *a1)
{
  v3 = type metadata accessor for StaticService(0);
  v4 = v3;
  if (*(v1 + *(v3 + 32)) == 1)
  {
    v5 = *(v1 + *(v3 + 128));
    *&v20[0] = *(v1 + v4[32]);
    LOBYTE(v17) = *(v1 + v4[26]);

    v6 = StaticCharacteristicsBag.isReachable(for:)(&v17);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v1 + v4[35]);
  v8 = *(v1 + v4[9]);
  *&v20[0] = *(v1 + v4[32]);
  LOBYTE(v17) = *(v1 + v4[26]);

  v9 = ServiceKind.stateStatusDependentCharaceristicKinds.getter();
  v10 = StaticCharacteristicsBag.isUpdating(for:)(v9);

  LOBYTE(v20[0]) = a1[4];
  v11 = v20[0];
  LOBYTE(v17) = a1[3];
  v12 = StaticService.characteristicStateString(context:temperatureScale:)(v20, &v17);
  LOBYTE(v20[0]) = v11;
  v13 = sub_1D1C38C04(v20);
  LOBYTE(v17) = v6;
  BYTE1(v17) = v7;
  BYTE2(v17) = v8;
  BYTE3(v17) = 2;
  BYTE4(v17) = v10 & 1;
  *(&v17 + 1) = v12.value._countAndFlagsBits;
  *&v18 = v12.value._object;
  *(&v18 + 1) = v13;
  v19 = v14;
  v15 = StatusStrings.string(for:)(a1);
  v20[0] = v17;
  v20[1] = v18;
  v21 = v19;
  sub_1D1A46590(v20);
  return v15;
}

uint64_t StaticService.simpleStatusString.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticService(0) + 104));
  if (v1 == 48)
  {

    return StaticService.ventilationFanSimple.getter();
  }

  else if (v1 == 16)
  {

    return StaticService.fanStringSimple.getter();
  }

  else
  {
    v4 = 1;
    v3 = 0;
    return StaticService.characteristicStateString(context:temperatureScale:)(&v4, &v3).value._countAndFlagsBits;
  }
}

uint64_t StaticService.tileStatusStringIconSymbolSuffix.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644760, &unk_1D1E9E530);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v19 - v4;
  v6 = type metadata accessor for StaticSoftwareUpdate(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for StaticService(0);
  v12 = v11;
  if ((*(v0 + v11[8]) & 1) == 0)
  {
    v19[0] = *(v0 + v11[32]);
    v20 = *(v0 + v11[26]);

    v13 = ServiceKind.stateStatusDependentCharaceristicKinds.getter();
    v14 = StaticCharacteristicsBag.isUpdating(for:)(v13);

    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1D1741C08(v1 + v12[34], v5, &qword_1EC644760, &unk_1D1E9E530);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1D1741A30(v5, &qword_1EC644760, &unk_1D1E9E530);
  }

  else
  {
    sub_1D1C3B520(v5, v10, type metadata accessor for StaticSoftwareUpdate);
    sub_1D1D2F0C0(v19);
    if (LOBYTE(v19[0]) != 8 && (LOBYTE(v19[0]) == 3 || LOBYTE(v19[0]) == 5))
    {
      sub_1D1C3BED8(v10, type metadata accessor for StaticSoftwareUpdate);
      return 0xD000000000000015;
    }

    sub_1D1C3BED8(v10, type metadata accessor for StaticSoftwareUpdate);
  }

  v16 = *(v1 + v12[10]);
  if (v16 != 2 && (v16 & 1) != 0)
  {
    v19[3] = &type metadata for HomeAppFeatures;
    v19[4] = sub_1D19C6154();
    LOBYTE(v19[0]) = 3;
    v17 = sub_1D1E66D5C();
    __swift_destroy_boxed_opaque_existential_1(v19);
    if (v17)
    {
      return 0xD00000000000001DLL;
    }

    else
    {
      return 0x2E79726574746162;
    }
  }

  v19[0] = *(v1 + v12[32]);
  v20 = 88;
  v18 = sub_1D1CE4920(&v20);
  if (v18 == 2)
  {
    return 0;
  }

  if (v18)
  {
    return 0xD000000000000018;
  }

  else
  {
    return 0;
  }
}

uint64_t static StaticService.activeString(active:)(char a1)
{
  if (a1 == 2)
  {
    return 0;
  }

  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0xD000000000000021;
  }

  else
  {
    v3 = 0xD000000000000022;
  }

  if (v2)
  {
    v4 = "oachAngleSupported";
  }

  else
  {
    v4 = "startUpCurrentLevel";
  }

  v5 = static String.hfLocalized(_:)(v3, v4 | 0x8000000000000000);

  return v5;
}

uint64_t static StaticService.airPurifierStateString(active:targetAirPurifierState:currentAirPurifierState:rotationSpeed:)(char a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, char a7)
{
  if (a1 != 2)
  {
    if ((a1 & 1) != 0 && a5 & 1 | (a4 != 0))
    {
      goto LABEL_7;
    }

    return sub_1D1C309A8(a1, a4, a5 & 1, a6, a7 & 1);
  }

  if ((a5 & 1) == 0 && !a4)
  {
    return sub_1D1C309A8(a1, a4, a5 & 1, a6, a7 & 1);
  }

LABEL_7:
  if (a3)
  {
    goto LABEL_12;
  }

  v9 = 0xD00000000000002FLL;
  if (!a2)
  {
    v10 = a5;
    v11 = a1;
    v12 = a7;
    v13 = "ValueAirPurifierTargetStateAuto";
    v9 = 0xD000000000000031;
    goto LABEL_14;
  }

  if (a2 != 1)
  {
LABEL_12:
    v15 = 0;
    goto LABEL_15;
  }

  v10 = a5;
  v11 = a1;
  v12 = a7;
  v13 = "eCarbonDioxideDetected";
LABEL_14:
  static String.hfLocalized(_:)(v9, v13 | 0x8000000000000000);
  a7 = v12;
  a1 = v11;
  a5 = v10;
LABEL_15:
  v27[0] = v15;
  v16 = 0;
  v27[1] = sub_1D1C309A8(a1, a4, a5 & 1, a6, a7 & 1);
  v27[2] = v17;
  v18 = MEMORY[0x1E69E7CC0];
LABEL_16:
  v19 = &v27[2 * v16];
  while (++v16 != 3)
  {
    v20 = v19 + 2;
    v21 = *v19;
    v19 += 2;
    if (v21)
    {
      v22 = *(v20 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_1D177CF00(0, *(v18 + 2) + 1, 1, v18);
      }

      v24 = *(v18 + 2);
      v23 = *(v18 + 3);
      if (v24 >= v23 >> 1)
      {
        v18 = sub_1D177CF00((v23 > 1), v24 + 1, 1, v18);
      }

      *(v18 + 2) = v24 + 1;
      v25 = &v18[16 * v24];
      *(v25 + 4) = v22;
      *(v25 + 5) = v21;
      goto LABEL_16;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6434D0, &qword_1D1E71C60);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643CB0, &qword_1D1E73640);
  sub_1D17D8EA8(&qword_1EE07B278, &qword_1EC643CB0, &qword_1D1E73640);
  v26 = sub_1D1E6770C();

  return v26;
}

uint64_t sub_1D1C309A8(char a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a1 == 2)
  {
    return 0;
  }

  if ((a1 & 1) == 0)
  {
    if ((a3 & 1) == 0)
    {
      if (!a2)
      {
        v6 = "HDMStatusTitlePm2_5Micrometers";
        v7 = 0xD000000000000034;
        goto LABEL_18;
      }

      if (a2 == 1 || a2 == 2)
      {
        v8 = 0x80000001D1EC74C0;
        v7 = 0xD000000000000029;
        return static String.hfLocalized(_:)(v7, v8);
      }
    }

    return 0;
  }

  if (a3)
  {
    return 0;
  }

  if (!a2)
  {
    v6 = "tionAirPurifierTurningOff";
    v7 = 0xD000000000000028;
    goto LABEL_18;
  }

  if (a2 == 1)
  {
    v6 = "tionAirPurifierTurningOn";
    v7 = 0xD000000000000030;
    goto LABEL_18;
  }

  if (a2 != 2)
  {
    return 0;
  }

  if (a5)
  {
    v6 = "urifierStateIdle";
    v7 = 0xD000000000000032;
LABEL_18:
    v8 = v6 | 0x8000000000000000;
    return static String.hfLocalized(_:)(v7, v8);
  }

  if (*&a4 <= 0.0)
  {
    v6 = "startUpCurrentLevel";
    v7 = 0xD000000000000021;
    goto LABEL_18;
  }

  return sub_1D19CB618(1, 0.0, 100.0, *&a4);
}