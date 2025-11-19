uint64_t SportsDataVisualizationEventStatus.init(from:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v131 = a2;
  v3 = MEMORY[0x1E69E6F48];
  sub_1D6F1ACC0(0, &qword_1EDF038B8, sub_1D6F1A8D0, &type metadata for SportsDataVisualizationEventStatus.UnknownCodingKeys, MEMORY[0x1E69E6F48]);
  v120 = v4;
  v119 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v135 = &v103 - v6;
  sub_1D6F1ACC0(0, &qword_1EDF038C8, sub_1D6F1A924, &type metadata for SportsDataVisualizationEventStatus.ForfeitCodingKeys, v3);
  v8 = *(v7 - 8);
  v123 = v7;
  v124 = v8;
  MEMORY[0x1EEE9AC00](v7, v9);
  v134 = &v103 - v10;
  sub_1D6F1ACC0(0, &qword_1EDF038D8, sub_1D6F1A978, &type metadata for SportsDataVisualizationEventStatus.FinalCodingKeys, v3);
  v12 = *(v11 - 8);
  v121 = v11;
  v122 = v12;
  MEMORY[0x1EEE9AC00](v11, v13);
  v133 = &v103 - v14;
  sub_1D6F1ACC0(0, &qword_1EDF038D0, sub_1D6F1A9CC, &type metadata for SportsDataVisualizationEventStatus.DelayedCodingKeys, v3);
  v118 = v15;
  v117 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v130 = &v103 - v17;
  sub_1D6F1ACC0(0, &qword_1EDF038A8, sub_1D6F1AA20, &type metadata for SportsDataVisualizationEventStatus.CancelledCodingKeys, v3);
  v116 = v18;
  v115 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v19);
  v129 = &v103 - v20;
  sub_1D6F1ACC0(0, &qword_1EDF03898, sub_1D6F1AA74, &type metadata for SportsDataVisualizationEventStatus.SuspendedCodingKeys, v3);
  v113 = v21;
  v114 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v22);
  v127 = &v103 - v23;
  sub_1D6F1ACC0(0, &qword_1EDF038A0, sub_1D6F1AAC8, &type metadata for SportsDataVisualizationEventStatus.PostponedCodingKeys, v3);
  v111 = v24;
  v112 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v25);
  v132 = &v103 - v26;
  sub_1D6F1ACC0(0, &qword_1EDF038E0, sub_1D6F1AB1C, &type metadata for SportsDataVisualizationEventStatus.BreakCodingKeys, v3);
  v110 = v27;
  v109 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v28);
  v128 = &v103 - v29;
  sub_1D6F1ACC0(0, &qword_1EDF03890, sub_1D6F1AB70, &type metadata for SportsDataVisualizationEventStatus.InProgressCodingKeys, v3);
  v108 = v30;
  v107 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v31);
  v125 = &v103 - v32;
  sub_1D6F1ACC0(0, &qword_1EDF038B0, sub_1D6F1ABC4, &type metadata for SportsDataVisualizationEventStatus.NearLiveCodingKeys, v3);
  v106 = v33;
  v105 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33, v34);
  v126 = &v103 - v35;
  sub_1D6F1ACC0(0, &qword_1EDF038C0, sub_1D6F1AC18, &type metadata for SportsDataVisualizationEventStatus.PregameCodingKeys, v3);
  v37 = v36;
  v104 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v38);
  v40 = &v103 - v39;
  sub_1D6F1ACC0(0, &qword_1EDF038E8, sub_1D6F1AC6C, &type metadata for SportsDataVisualizationEventStatus.CodingKeys, v3);
  v42 = v41;
  v43 = *(v41 - 1);
  MEMORY[0x1EEE9AC00](v41, v44);
  v45 = a1[3];
  v137 = a1;
  v46 = a1;
  v48 = &v103 - v47;
  __swift_project_boxed_opaque_existential_1(v46, v45);
  sub_1D6F1AC6C();
  v49 = v136;
  sub_1D7264B0C();
  if (v49)
  {
    goto LABEL_13;
  }

  v50 = v40;
  v103 = v37;
  v51 = v132;
  v52 = v133;
  v136 = 0;
  v54 = v134;
  v53 = v135;
  v55 = sub_1D726433C();
  v56 = (2 * *(v55 + 16)) | 1;
  v138 = v55;
  v139 = v55 + 32;
  v140 = 0;
  v141 = v56;
  v57 = sub_1D60F6EEC();
  v58 = v42;
  if (v57 == 11 || v140 != v141 >> 1)
  {
    v64 = sub_1D7263E3C();
    swift_allocError();
    v66 = v65;
    sub_1D5EEA608();
    *v66 = &type metadata for SportsDataVisualizationEventStatus;
    v67 = v42;
    sub_1D72641FC();
    sub_1D7263DFC();
    (*(*(v64 - 8) + 104))(v66, *MEMORY[0x1E69E6AF8], v64);
    swift_willThrow();
  }

  else
  {
    if (v57 > 4u)
    {
      if (v57 > 7u)
      {
        v74 = v131;
        if (v57 != 8)
        {
          if (v57 == 9)
          {
            v142 = 9;
            sub_1D6F1A924();
            v75 = v42;
            v76 = v136;
            sub_1D72641EC();
            if (!v76)
            {
              v135 = v42;
              v136 = v48;
              sub_1D6F156D8();
              v132 = v77;
              v133 = swift_allocBox();
              sub_1D725891C();
              v142 = 0;
              sub_1D5CE4528(&qword_1EDF45B08);
              v78 = v123;
              sub_1D726431C();
              v102 = v133;
              v142 = 1;
              sub_1D726431C();
              (*(v124 + 8))(v54, v78);
              (*(v43 + 8))(v136, v135);
              swift_unknownObjectRelease();
              v63 = v102 | 0x9000000000000000;
              goto LABEL_44;
            }
          }

          else
          {
            v142 = 10;
            sub_1D6F1A8D0();
            v95 = v53;
            v75 = v58;
            v96 = v136;
            sub_1D72641EC();
            if (!v96)
            {
              (*(v119 + 8))(v95, v120);
              (*(v43 + 8))(v48, v58);
              swift_unknownObjectRelease();
              v63 = 0xA000000000000000;
              v68 = v137;
LABEL_45:
              *v74 = v63;
              return __swift_destroy_boxed_opaque_existential_1(v68);
            }
          }

          (*(v43 + 8))(v48, v75);
          goto LABEL_12;
        }

        v142 = 8;
        sub_1D6F1A978();
        v88 = v136;
        sub_1D72641EC();
        if (!v88)
        {
          v135 = v42;
          v136 = v48;
          sub_1D6F156D8();
          v97 = swift_allocBox();
          sub_1D725891C();
          v142 = 0;
          sub_1D5CE4528(&qword_1EDF45B08);
          v98 = v121;
          sub_1D726431C();
          v134 = v97;
          v142 = 1;
          sub_1D726431C();
          (*(v122 + 8))(v52, v98);
          (*(v43 + 8))(v136, v135);
          swift_unknownObjectRelease();
          v63 = v134 | 0x8000000000000000;
          goto LABEL_44;
        }
      }

      else if (v57 == 5)
      {
        v142 = 5;
        sub_1D6F1AA74();
        v84 = v136;
        sub_1D72641EC();
        if (!v84)
        {
          sub_1D6F15740();
          v85 = swift_allocBox();
          sub_1D725891C();
          sub_1D5CE4528(&qword_1EDF45B08);
          v86 = v113;
          v87 = v127;
          sub_1D726431C();
          (*(v114 + 8))(v87, v86);
          (*(v43 + 8))(v48, v42);
          swift_unknownObjectRelease();
          v63 = v85 | 0x5000000000000000;
          goto LABEL_44;
        }
      }

      else
      {
        v59 = v136;
        if (v57 == 6)
        {
          v142 = 6;
          sub_1D6F1AA20();
          sub_1D72641EC();
          if (!v59)
          {
            sub_1D6F15740();
            v60 = swift_allocBox();
            sub_1D725891C();
            sub_1D5CE4528(&qword_1EDF45B08);
            v61 = v116;
            v62 = v129;
            sub_1D726431C();
            (*(v115 + 8))(v62, v61);
            (*(v43 + 8))(v48, v42);
            swift_unknownObjectRelease();
            v63 = v60 | 0x6000000000000000;
LABEL_44:
            v68 = v137;
            v74 = v131;
            goto LABEL_45;
          }
        }

        else
        {
          v142 = 7;
          sub_1D6F1A9CC();
          sub_1D72641EC();
          if (!v59)
          {
            sub_1D6F15740();
            v99 = swift_allocBox();
            sub_1D725891C();
            sub_1D5CE4528(&qword_1EDF45B08);
            v100 = v118;
            v101 = v130;
            sub_1D726431C();
            (*(v117 + 8))(v101, v100);
            (*(v43 + 8))(v48, v42);
            swift_unknownObjectRelease();
            v63 = v99 | 0x7000000000000000;
            goto LABEL_44;
          }
        }
      }

      goto LABEL_32;
    }

    if (v57 > 1u)
    {
      v70 = v136;
      if (v57 == 2)
      {
        v142 = 2;
        sub_1D6F1AB70();
        sub_1D72641EC();
        if (!v70)
        {
          sub_1D6F15740();
          v81 = swift_allocBox();
          sub_1D725891C();
          sub_1D5CE4528(&qword_1EDF45B08);
          v82 = v108;
          v83 = v125;
          sub_1D726431C();
          (*(v107 + 8))(v83, v82);
          (*(v43 + 8))(v48, v42);
          swift_unknownObjectRelease();
          v63 = v81 | 0x2000000000000000;
          goto LABEL_44;
        }
      }

      else if (v57 == 3)
      {
        v142 = 3;
        sub_1D6F1AB1C();
        sub_1D72641EC();
        if (!v70)
        {
          sub_1D6F15740();
          v71 = swift_allocBox();
          sub_1D725891C();
          sub_1D5CE4528(&qword_1EDF45B08);
          v72 = v110;
          v73 = v128;
          sub_1D726431C();
          (*(v109 + 8))(v73, v72);
          (*(v43 + 8))(v48, v42);
          swift_unknownObjectRelease();
          v63 = v71 | 0x3000000000000000;
          goto LABEL_44;
        }
      }

      else
      {
        v142 = 4;
        sub_1D6F1AAC8();
        v89 = v51;
        sub_1D72641EC();
        if (!v70)
        {
          sub_1D6F15740();
          v90 = swift_allocBox();
          sub_1D725891C();
          sub_1D5CE4528(&qword_1EDF45B08);
          v91 = v111;
          sub_1D726431C();
          (*(v112 + 8))(v89, v91);
          (*(v43 + 8))(v48, v42);
          swift_unknownObjectRelease();
          v63 = v90 | 0x4000000000000000;
          goto LABEL_44;
        }
      }

      goto LABEL_32;
    }

    v79 = v136;
    if (v57)
    {
      v142 = 1;
      sub_1D6F1ABC4();
      sub_1D72641EC();
      if (!v79)
      {
        sub_1D6F15740();
        v92 = swift_allocBox();
        sub_1D725891C();
        sub_1D5CE4528(&qword_1EDF45B08);
        v93 = v106;
        v94 = v126;
        sub_1D726431C();
        (*(v105 + 8))(v94, v93);
        (*(v43 + 8))(v48, v42);
        swift_unknownObjectRelease();
        v63 = v92 | 0x1000000000000000;
        goto LABEL_44;
      }

LABEL_32:
      (*(v43 + 8))(v48, v42);
      goto LABEL_12;
    }

    v142 = 0;
    sub_1D6F1AC18();
    v67 = v42;
    sub_1D72641EC();
    if (!v79)
    {
      v136 = v48;
      sub_1D6F15740();
      v63 = swift_allocBox();
      sub_1D725891C();
      sub_1D5CE4528(&qword_1EDF45B08);
      v80 = v103;
      sub_1D726431C();
      (*(v104 + 8))(v50, v80);
      (*(v43 + 8))(v136, v67);
      swift_unknownObjectRelease();
      goto LABEL_44;
    }
  }

  (*(v43 + 8))(v48, v67);
LABEL_12:
  swift_unknownObjectRelease();
LABEL_13:
  v68 = v137;
  return __swift_destroy_boxed_opaque_existential_1(v68);
}

uint64_t SportsDataVisualizationEventStatus.description.getter()
{
  sub_1D5B5B2A0();
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D725891C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v45 - v12;
  v14 = *v0 >> 60;
  if (v14 <= 4)
  {
    if (v14 > 1)
    {
      if (v14 == 2)
      {
        sub_1D6F15740();
        v27 = swift_projectBox();
        (*(v6 + 16))(v13, v27, v5);
        v16 = 0x6572676F72506E69;
        v18 = 0xEB00000000287373;
      }

      else
      {
        if (v14 != 3)
        {
          sub_1D6F15740();
          v38 = swift_projectBox();
          (*(v6 + 16))(v13, v38, v5);
          v16 = 0x656E6F7074736F70;
          goto LABEL_20;
        }

        sub_1D6F15740();
        v17 = swift_projectBox();
        (*(v6 + 16))(v13, v17, v5);
        v16 = 0x286B61657262;
        v18 = 0xE600000000000000;
      }

LABEL_24:
      v45 = v16;
      v46 = v18;
      (*(v6 + 56))(v4, 1, 1, v5);
      v41 = sub_1D6F19998(v13, v4, 32);
      v43 = v42;
      _s8NewsFeed44SimulatedBundleSubscriptionDetectionProviderC9timestamp10Foundation4DateVSgvs_0(v4);
      MEMORY[0x1DA6F9910](v41, v43);

      MEMORY[0x1DA6F9910](41, 0xE100000000000000);
      v36 = v45;
      (*(v6 + 8))(v13, v5);
      return v36;
    }

    if (v14)
    {
      sub_1D6F15740();
      v39 = swift_projectBox();
      (*(v6 + 16))(v13, v39, v5);
      v16 = 0x6576694C7261656ELL;
      v18 = 0xE900000000000028;
      goto LABEL_24;
    }

    sub_1D6F15740();
    v26 = swift_projectBox();
    (*(v6 + 16))(v13, v26, v5);
    v16 = 0x28656D6167657270;
    goto LABEL_23;
  }

  if (v14 <= 7)
  {
    if (v14 == 5)
    {
      sub_1D6F15740();
      v28 = swift_projectBox();
      (*(v6 + 16))(v13, v28, v5);
      v16 = 0x65646E6570737573;
      goto LABEL_20;
    }

    if (v14 == 6)
    {
      sub_1D6F15740();
      v15 = swift_projectBox();
      (*(v6 + 16))(v13, v15, v5);
      v16 = 0x656C6C65636E6163;
LABEL_20:
      v18 = 0xEA00000000002864;
      goto LABEL_24;
    }

    sub_1D6F15740();
    v40 = swift_projectBox();
    (*(v6 + 16))(v13, v40, v5);
    v16 = 0x28646579616C6564;
LABEL_23:
    v18 = 0xE800000000000000;
    goto LABEL_24;
  }

  if (v14 == 8)
  {
    sub_1D6F156D8();
    v30 = v29;
    v31 = swift_projectBox();
    v32 = *(v30 + 48);
    v23 = *(v6 + 16);
    v23(v13, v31, v5);
    v23(v9, v31 + v32, v5);
    v24 = 0x286C616E6966;
    v25 = 0xE600000000000000;
  }

  else
  {
    if (v14 != 9)
    {
      return 0x6E776F6E6B6E75;
    }

    sub_1D6F156D8();
    v20 = v19;
    v21 = swift_projectBox();
    v22 = *(v20 + 48);
    v23 = *(v6 + 16);
    v23(v13, v21, v5);
    v23(v9, v21 + v22, v5);
    v24 = 0x2874696566726F66;
    v25 = 0xE800000000000000;
  }

  v45 = v24;
  v46 = v25;
  v23(v4, v9, v5);
  (*(v6 + 56))(v4, 0, 1, v5);
  v33 = sub_1D6F19998(v13, v4, 32);
  v35 = v34;
  _s8NewsFeed44SimulatedBundleSubscriptionDetectionProviderC9timestamp10Foundation4DateVSgvs_0(v4);
  MEMORY[0x1DA6F9910](v33, v35);

  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  v36 = v45;
  v37 = *(v6 + 8);
  v37(v9, v5);
  v37(v13, v5);
  return v36;
}

uint64_t SportsDataVisualizationEventStatus.debugDescription.getter()
{
  sub_1D5B5B2A0();
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D725891C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v45 - v12;
  v14 = *v0 >> 60;
  if (v14 <= 4)
  {
    if (v14 > 1)
    {
      if (v14 == 2)
      {
        sub_1D6F15740();
        v27 = swift_projectBox();
        (*(v6 + 16))(v13, v27, v5);
        v16 = 0x72676F7250206E49;
        v18 = 0xEC0000000A737365;
      }

      else
      {
        if (v14 != 3)
        {
          sub_1D6F15740();
          v38 = swift_projectBox();
          (*(v6 + 16))(v13, v38, v5);
          v16 = 0x656E6F7074736F50;
          goto LABEL_20;
        }

        sub_1D6F15740();
        v17 = swift_projectBox();
        (*(v6 + 16))(v13, v17, v5);
        v16 = 0xA6B61657242;
        v18 = 0xE600000000000000;
      }

LABEL_24:
      v45 = v16;
      v46 = v18;
      (*(v6 + 56))(v4, 1, 1, v5);
      v41 = sub_1D6F19998(v13, v4, 10);
      v43 = v42;
      _s8NewsFeed44SimulatedBundleSubscriptionDetectionProviderC9timestamp10Foundation4DateVSgvs_0(v4);
      MEMORY[0x1DA6F9910](v41, v43);

      v36 = v45;
      (*(v6 + 8))(v13, v5);
      return v36;
    }

    if (v14)
    {
      sub_1D6F15740();
      v39 = swift_projectBox();
      (*(v6 + 16))(v13, v39, v5);
      v16 = 0x76694C207261654ELL;
      v18 = 0xEA00000000000A65;
      goto LABEL_24;
    }

    sub_1D6F15740();
    v26 = swift_projectBox();
    (*(v6 + 16))(v13, v26, v5);
    v16 = 0xA656D6167657250;
    goto LABEL_23;
  }

  if (v14 <= 7)
  {
    if (v14 == 5)
    {
      sub_1D6F15740();
      v28 = swift_projectBox();
      (*(v6 + 16))(v13, v28, v5);
      v16 = 0x65646E6570737553;
      goto LABEL_20;
    }

    if (v14 == 6)
    {
      sub_1D6F15740();
      v15 = swift_projectBox();
      (*(v6 + 16))(v13, v15, v5);
      v16 = 0x656C6C65636E6143;
LABEL_20:
      v18 = 0xEA00000000000A64;
      goto LABEL_24;
    }

    sub_1D6F15740();
    v40 = swift_projectBox();
    (*(v6 + 16))(v13, v40, v5);
    v16 = 0xA646579616C6544;
LABEL_23:
    v18 = 0xE800000000000000;
    goto LABEL_24;
  }

  if (v14 == 8)
  {
    sub_1D6F156D8();
    v30 = v29;
    v31 = swift_projectBox();
    v32 = *(v30 + 48);
    v23 = *(v6 + 16);
    v23(v13, v31, v5);
    v23(v9, v31 + v32, v5);
    v24 = 0xA6C616E6946;
    v25 = 0xE600000000000000;
  }

  else
  {
    if (v14 != 9)
    {
      return 0x6E776F6E6B6E55;
    }

    sub_1D6F156D8();
    v20 = v19;
    v21 = swift_projectBox();
    v22 = *(v20 + 48);
    v23 = *(v6 + 16);
    v23(v13, v21, v5);
    v23(v9, v21 + v22, v5);
    v24 = 0xA74696566726F46;
    v25 = 0xE800000000000000;
  }

  v45 = v24;
  v46 = v25;
  v23(v4, v9, v5);
  (*(v6 + 56))(v4, 0, 1, v5);
  v33 = sub_1D6F19998(v13, v4, 10);
  v35 = v34;
  _s8NewsFeed44SimulatedBundleSubscriptionDetectionProviderC9timestamp10Foundation4DateVSgvs_0(v4);
  MEMORY[0x1DA6F9910](v33, v35);

  v36 = v45;
  v37 = *(v6 + 8);
  v37(v9, v5);
  v37(v13, v5);
  return v36;
}

uint64_t sub_1D6F19998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a3;
  sub_1D5B5B2A0();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDF0F238 != -1)
  {
    swift_once();
  }

  v8 = qword_1EDF0F240;
  v9 = sub_1D725881C();
  v10 = [v8 stringFromDate_];

  v11 = sub_1D726207C();
  v13 = v12;

  v14 = sub_1D725891C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  if (v16(a2, 1, v14) == 1)
  {
    v17 = 0xE300000000000000;
    v18 = 6369134;
    v19 = &selRef_setHyphenationFactor_;
  }

  else
  {
    sub_1D5B76E3C(a2, v7);
    result = v16(v7, 1, v14);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    v21 = sub_1D725881C();
    (*(v15 + 8))(v7, v14);
    v19 = &selRef_setHyphenationFactor_;
    v22 = [v8 stringFromDate_];

    v18 = sub_1D726207C();
    v17 = v23;
  }

  if (qword_1EDF0F250 != -1)
  {
    swift_once();
  }

  v24 = qword_1EDF0F258[0];
  v25 = sub_1D725881C();
  v26 = [v24 v19[381]];

  v27 = sub_1D726207C();
  v29 = v28;

  v32 = v27;
  v33 = v29;
  MEMORY[0x1DA6F9910](v31, 0xE100000000000000);
  MEMORY[0x1DA6F9910](v11, v13);

  MEMORY[0x1DA6F9910](2108704, 0xE300000000000000);
  MEMORY[0x1DA6F9910](v18, v17);

  return v32;
}

id sub_1D6F19C98(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  [v7 setDateStyle_];
  result = [v7 setTimeStyle_];
  *a4 = v7;
  return result;
}

uint64_t _s8NewsFeed34SportsDataVisualizationEventStatusO2eeoiySbAC_ACtFZ_0(void *a1, unint64_t *a2)
{
  v154 = a1;
  v155 = a2;
  v2 = sub_1D725891C();
  MEMORY[0x1EEE9AC00](v2, v3);
  MEMORY[0x1EEE9AC00](v4, v5);
  MEMORY[0x1EEE9AC00](v7, &v148 - v6);
  MEMORY[0x1EEE9AC00](v8, v9);
  MEMORY[0x1EEE9AC00](v10, v11);
  MEMORY[0x1EEE9AC00](v12, v13);
  MEMORY[0x1EEE9AC00](v14, v15);
  MEMORY[0x1EEE9AC00](v16, v17);
  MEMORY[0x1EEE9AC00](v18, v19);
  MEMORY[0x1EEE9AC00](v20, v21);
  v153 = &v148 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v152 = &v148 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v151 = &v148 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v150 = &v148 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v149 = &v148 - v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = &v148 - v37;
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = &v148 - v41;
  MEMORY[0x1EEE9AC00](v43, v44);
  v46 = &v148 - v45;
  MEMORY[0x1EEE9AC00](v47, v48);
  v50 = &v148 - v49;
  MEMORY[0x1EEE9AC00](v51, v52);
  v54 = &v148 - v53;
  MEMORY[0x1EEE9AC00](v55, v56);
  v58 = &v148 - v57;
  MEMORY[0x1EEE9AC00](v59, v60);
  v62 = &v148 - v61;
  MEMORY[0x1EEE9AC00](v63, v64);
  v66 = &v148 - v65;
  MEMORY[0x1EEE9AC00](v67, v68);
  v70 = &v148 - v69;
  MEMORY[0x1EEE9AC00](v71, v72);
  v85 = &v148 - v84;
  v86 = *v155;
  v87 = *v154 >> 60;
  if (v87 <= 4)
  {
    if (v87 <= 1)
    {
      if (v87)
      {
        if (v86 >> 60 != 1)
        {
          goto LABEL_39;
        }

        v138 = v73;
        v139 = v81;
        sub_1D6F15740();
        v140 = swift_projectBox();
        v141 = swift_projectBox();
        v142 = *(v139 + 16);
        v142(v66, v140, v138);
        v142(v62, v141, v138);

        v100 = sub_1D72588AC();
        v143 = *(v139 + 8);
        v143(v62, v138);
        v143(v66, v138);
      }

      else
      {
        if (v86 >> 60)
        {
          goto LABEL_39;
        }

        v106 = v73;
        v107 = v81;
        sub_1D6F15740();
        v108 = swift_projectBox();
        v109 = swift_projectBox();
        v110 = *(v107 + 16);
        v110(v85, v108, v106);
        v110(v70, v109, v106);

        v100 = sub_1D72588AC();
        v111 = *(v107 + 8);
        v111(v70, v106);
        v111(v85, v106);
      }
    }

    else if (v87 == 2)
    {
      if (v86 >> 60 != 2)
      {
        goto LABEL_39;
      }

      v112 = v73;
      v113 = v81;
      sub_1D6F15740();
      v114 = swift_projectBox();
      v115 = swift_projectBox();
      v116 = *(v113 + 16);
      v116(v58, v114, v112);
      v116(v54, v115, v112);

      v100 = sub_1D72588AC();
      v117 = *(v113 + 8);
      v117(v54, v112);
      v117(v58, v112);
    }

    else if (v87 == 3)
    {
      if (v86 >> 60 != 3)
      {
        goto LABEL_39;
      }

      v95 = v73;
      v96 = v81;
      sub_1D6F15740();
      v97 = swift_projectBox();
      v98 = swift_projectBox();
      v99 = *(v96 + 16);
      v99(v50, v97, v95);
      v99(v46, v98, v95);

      v100 = sub_1D72588AC();
      v101 = *(v96 + 8);
      v101(v46, v95);
      v101(v50, v95);
    }

    else
    {
      if (v86 >> 60 != 4)
      {
        goto LABEL_39;
      }

      v131 = v73;
      v132 = v81;
      sub_1D6F15740();
      v133 = swift_projectBox();
      v134 = swift_projectBox();
      v135 = *(v132 + 16);
      v135(v42, v133, v131);
      v135(v38, v134, v131);

      LOBYTE(v134) = sub_1D72588AC();
      v136 = *(v132 + 8);
      v136(v38, v131);
      v137 = v42;
      v100 = v134;
      v136(v137, v131);
    }

LABEL_34:

    goto LABEL_35;
  }

  if (v87 <= 7)
  {
    if (v87 == 5)
    {
      if (v86 >> 60 == 5)
      {
        v88 = v73;
        v89 = v81;
        sub_1D6F15740();
        v118 = swift_projectBox();
        v91 = swift_projectBox();
        v92 = *(v89 + 16);
        v93 = v149;
        v92(v149, v118, v88);
        v94 = v150;
        goto LABEL_33;
      }
    }

    else if (v87 == 6)
    {
      if (v86 >> 60 == 6)
      {
        v88 = v73;
        v89 = v81;
        sub_1D6F15740();
        v90 = swift_projectBox();
        v91 = swift_projectBox();
        v92 = *(v89 + 16);
        v93 = v151;
        v92(v151, v90, v88);
        v94 = v152;
LABEL_33:
        v92(v94, v91, v88);

        v100 = sub_1D72588AC();
        v145 = *(v89 + 8);
        v145(v94, v88);
        v145(v93, v88);
        goto LABEL_34;
      }
    }

    else if (v86 >> 60 == 7)
    {
      v88 = v73;
      v89 = v81;
      v94 = v80;
      sub_1D6F15740();
      v144 = swift_projectBox();
      v91 = swift_projectBox();
      v92 = *(v89 + 16);
      v93 = v153;
      v92(v153, v144, v88);
      goto LABEL_33;
    }

LABEL_39:
    v100 = 0;
    return v100 & 1;
  }

  if (v87 == 8)
  {
    if (v86 >> 60 != 8)
    {
      goto LABEL_39;
    }

    v102 = v73;
    v103 = v81;
    v154 = *v154;
    v155 = v78;
    v104 = v76;
    v105 = v77;
    v153 = v79;
  }

  else
  {
    if (v87 != 9)
    {
      if (v86 == 0xA000000000000000)
      {

        v100 = 1;
        return v100 & 1;
      }

      goto LABEL_39;
    }

    if (v86 >> 60 != 9)
    {
      goto LABEL_39;
    }

    v102 = v73;
    v103 = v81;
    v154 = *v154;
    v155 = v74;
    v104 = v82;
    v105 = v83;
    v153 = v75;
  }

  sub_1D6F156D8();
  v120 = v119;
  v121 = swift_projectBox();
  v122 = *(v120 + 48);
  v123 = swift_projectBox();
  v124 = *(v103 + 16);
  v124(v104, v121, v102);
  v124(v105, v123, v102);
  v124(v155, v121 + v122, v102);
  v125 = v123 + v122;
  v126 = v153;
  v124(v153, v125, v102);

  if ((sub_1D72588AC() & 1) == 0)
  {
    v146 = *(v103 + 8);
    v146(v126, v102);
    v146(v155, v102);
    v146(v105, v102);
    v146(v104, v102);

    goto LABEL_39;
  }

  v127 = v155;
  v128 = sub_1D72588AC();
  v129 = v126;
  v100 = v128;
  v130 = *(v103 + 8);
  v130(v129, v102);
  v130(v127, v102);
  v130(v105, v102);
  v130(v104, v102);

LABEL_35:

  return v100 & 1;
}

unint64_t sub_1D6F1A8D0()
{
  result = qword_1EDF07368;
  if (!qword_1EDF07368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF07368);
  }

  return result;
}

unint64_t sub_1D6F1A924()
{
  result = qword_1EDF07398;
  if (!qword_1EDF07398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF07398);
  }

  return result;
}

unint64_t sub_1D6F1A978()
{
  result = qword_1EDF073C8;
  if (!qword_1EDF073C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF073C8);
  }

  return result;
}

unint64_t sub_1D6F1A9CC()
{
  result = qword_1EDF073B0;
  if (!qword_1EDF073B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF073B0);
  }

  return result;
}

unint64_t sub_1D6F1AA20()
{
  result = qword_1EDF07338;
  if (!qword_1EDF07338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF07338);
  }

  return result;
}

unint64_t sub_1D6F1AA74()
{
  result = qword_1EDF07308;
  if (!qword_1EDF07308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF07308);
  }

  return result;
}

unint64_t sub_1D6F1AAC8()
{
  result = qword_1EDF07320;
  if (!qword_1EDF07320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF07320);
  }

  return result;
}

unint64_t sub_1D6F1AB1C()
{
  result = qword_1EDF073E0;
  if (!qword_1EDF073E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF073E0);
  }

  return result;
}

unint64_t sub_1D6F1AB70()
{
  result = qword_1EDF072F0;
  if (!qword_1EDF072F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF072F0);
  }

  return result;
}

unint64_t sub_1D6F1ABC4()
{
  result = qword_1EDF07350;
  if (!qword_1EDF07350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF07350);
  }

  return result;
}

unint64_t sub_1D6F1AC18()
{
  result = qword_1EDF07380;
  if (!qword_1EDF07380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF07380);
  }

  return result;
}

unint64_t sub_1D6F1AC6C()
{
  result = qword_1EDF073F8;
  if (!qword_1EDF073F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF073F8);
  }

  return result;
}

void sub_1D6F1ACC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed34SportsDataVisualizationEventStatusO(void *a1)
{
  if (*a1 >> 61 <= 4uLL)
  {
    return *a1 >> 60;
  }

  else
  {
    return (*a1 >> 3) + 10;
  }
}

unint64_t sub_1D6F1AE40()
{
  result = qword_1EC898438;
  if (!qword_1EC898438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898438);
  }

  return result;
}

unint64_t sub_1D6F1AE98()
{
  result = qword_1EC898440;
  if (!qword_1EC898440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898440);
  }

  return result;
}

unint64_t sub_1D6F1AEF0()
{
  result = qword_1EC898448;
  if (!qword_1EC898448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898448);
  }

  return result;
}

unint64_t sub_1D6F1AF48()
{
  result = qword_1EC898450;
  if (!qword_1EC898450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898450);
  }

  return result;
}

unint64_t sub_1D6F1AFA0()
{
  result = qword_1EC898458;
  if (!qword_1EC898458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898458);
  }

  return result;
}

unint64_t sub_1D6F1AFF8()
{
  result = qword_1EC898460;
  if (!qword_1EC898460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898460);
  }

  return result;
}

unint64_t sub_1D6F1B050()
{
  result = qword_1EC898468;
  if (!qword_1EC898468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898468);
  }

  return result;
}

unint64_t sub_1D6F1B0A8()
{
  result = qword_1EC898470;
  if (!qword_1EC898470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898470);
  }

  return result;
}

unint64_t sub_1D6F1B100()
{
  result = qword_1EC898478;
  if (!qword_1EC898478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898478);
  }

  return result;
}

unint64_t sub_1D6F1B158()
{
  result = qword_1EC898480;
  if (!qword_1EC898480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898480);
  }

  return result;
}

unint64_t sub_1D6F1B1B0()
{
  result = qword_1EC898488;
  if (!qword_1EC898488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898488);
  }

  return result;
}

unint64_t sub_1D6F1B208()
{
  result = qword_1EDF073E8;
  if (!qword_1EDF073E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF073E8);
  }

  return result;
}

unint64_t sub_1D6F1B260()
{
  result = qword_1EDF073F0;
  if (!qword_1EDF073F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF073F0);
  }

  return result;
}

unint64_t sub_1D6F1B2B8()
{
  result = qword_1EDF07370;
  if (!qword_1EDF07370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF07370);
  }

  return result;
}

unint64_t sub_1D6F1B310()
{
  result = qword_1EDF07378;
  if (!qword_1EDF07378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF07378);
  }

  return result;
}

unint64_t sub_1D6F1B368()
{
  result = qword_1EDF07340;
  if (!qword_1EDF07340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF07340);
  }

  return result;
}

unint64_t sub_1D6F1B3C0()
{
  result = qword_1EDF07348;
  if (!qword_1EDF07348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF07348);
  }

  return result;
}

unint64_t sub_1D6F1B418()
{
  result = qword_1EDF072E0;
  if (!qword_1EDF072E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF072E0);
  }

  return result;
}

unint64_t sub_1D6F1B470()
{
  result = qword_1EDF072E8;
  if (!qword_1EDF072E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF072E8);
  }

  return result;
}

unint64_t sub_1D6F1B4C8()
{
  result = qword_1EDF073D0;
  if (!qword_1EDF073D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF073D0);
  }

  return result;
}

unint64_t sub_1D6F1B520()
{
  result = qword_1EDF073D8;
  if (!qword_1EDF073D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF073D8);
  }

  return result;
}

unint64_t sub_1D6F1B578()
{
  result = qword_1EDF07310;
  if (!qword_1EDF07310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF07310);
  }

  return result;
}

unint64_t sub_1D6F1B5D0()
{
  result = qword_1EDF07318;
  if (!qword_1EDF07318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF07318);
  }

  return result;
}

unint64_t sub_1D6F1B628()
{
  result = qword_1EDF072F8;
  if (!qword_1EDF072F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF072F8);
  }

  return result;
}

unint64_t sub_1D6F1B680()
{
  result = qword_1EDF07300;
  if (!qword_1EDF07300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF07300);
  }

  return result;
}

unint64_t sub_1D6F1B6D8()
{
  result = qword_1EDF07328;
  if (!qword_1EDF07328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF07328);
  }

  return result;
}

unint64_t sub_1D6F1B730()
{
  result = qword_1EDF07330;
  if (!qword_1EDF07330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF07330);
  }

  return result;
}

unint64_t sub_1D6F1B788()
{
  result = qword_1EDF073A0;
  if (!qword_1EDF073A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF073A0);
  }

  return result;
}

unint64_t sub_1D6F1B7E0()
{
  result = qword_1EDF073A8;
  if (!qword_1EDF073A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF073A8);
  }

  return result;
}

unint64_t sub_1D6F1B838()
{
  result = qword_1EDF073B8;
  if (!qword_1EDF073B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF073B8);
  }

  return result;
}

unint64_t sub_1D6F1B890()
{
  result = qword_1EDF073C0;
  if (!qword_1EDF073C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF073C0);
  }

  return result;
}

unint64_t sub_1D6F1B8E8()
{
  result = qword_1EDF07388;
  if (!qword_1EDF07388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF07388);
  }

  return result;
}

unint64_t sub_1D6F1B940()
{
  result = qword_1EDF07390;
  if (!qword_1EDF07390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF07390);
  }

  return result;
}

unint64_t sub_1D6F1B998()
{
  result = qword_1EDF07358;
  if (!qword_1EDF07358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF07358);
  }

  return result;
}

unint64_t sub_1D6F1B9F0()
{
  result = qword_1EDF07360;
  if (!qword_1EDF07360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF07360);
  }

  return result;
}

uint64_t sub_1D6F1BA44(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D6167657270 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6576694C7261656ELL && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6572676F72506E69 && a2 == 0xEA00000000007373 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6B61657262 && a2 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656E6F7074736F70 && a2 == 0xE900000000000064 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x65646E6570737573 && a2 == 0xE900000000000064 || (sub_1D72646CC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656C6C65636E6163 && a2 == 0xE900000000000064 || (sub_1D72646CC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x646579616C6564 && a2 == 0xE700000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6C616E6966 && a2 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x74696566726F66 && a2 == 0xE700000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
  {

    return 10;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_1D6F1BDCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double FormatTypeCollection.subscript.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D5CDEAB8(0, &qword_1EDF33890, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for FormatObject);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v11 = &v23[-v10 - 8];
  v12 = *(v3 + 8);
  if (*(v12 + 16) && (v13 = sub_1D5B69D90(a1, a2), (v14 & 1) != 0))
  {
    sub_1D6E18DC8(*(v12 + 56) + *(v8 + 72) * v13, v11);
    v15 = *(v11 + 2);
    v16 = *(v11 + 4);
    v27 = *(v11 + 3);
    v28 = v16;
    v29 = v11[80];
    v17 = *(v11 + 1);
    v24 = *v11;
    v25 = v17;
    v26 = v15;
    sub_1D62B7D1C(&v24, v23);
    sub_1D6E18E2C(v11);
    v18 = v27;
    v19 = v28;
    *(a3 + 32) = v26;
    *(a3 + 48) = v18;
    *(a3 + 64) = v19;
    *(a3 + 80) = v29;
    result = *&v24;
    v21 = v25;
    *a3 = v24;
    *(a3 + 16) = v21;
  }

  else
  {
    *(a3 + 80) = 0;
    result = 0.0;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
  }

  return result;
}

NewsFeed::FormatTypeCollection __swiftcall FormatTypeCollection.init()()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7CC0];
  v3 = sub_1D5C7A538(MEMORY[0x1E69E7CC0]);
  *v1 = v2;
  v1[1] = v3;
  result.typesByName._rawValue = v4;
  result.types._rawValue = v3;
  return result;
}

uint64_t sub_1D6F1C000@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v159 = a3;
  v164 = a2;
  sub_1D5B5C268(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v177 = &v157 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v176 = &v157 - v9;
  v173 = sub_1D725BD1C();
  v174 = *(v173 - 8);
  MEMORY[0x1EEE9AC00](v173 - 8, v10);
  v172 = &v157 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v181 = &v157 - v14;
  v171 = type metadata accessor for FormatMetadata();
  MEMORY[0x1EEE9AC00](v171, v15);
  v170 = &v157 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5CDEAB8(0, &qword_1EDF33890, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for FormatObject);
  v169 = v17;
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v168 = &v157 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v167 = &v157 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v160 = &v157 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v161 = &v157 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v157 - v32;
  MEMORY[0x1EEE9AC00](v34, v35);
  MEMORY[0x1EEE9AC00](v36, v37);
  MEMORY[0x1EEE9AC00](v38, v39);
  v43 = &v157 - v40;
  v44 = *(a1 + 16);
  v165 = a1;
  v178 = v18;
  v182 = v44;
  if (v44)
  {
    v163 = v42;
    v166 = v41;
    v45 = 0;
    v180 = (a1 + ((*(v18 + 80) + 32) & ~*(v18 + 80)));
    v46 = MEMORY[0x1E69E7CC8];
    v175 = &v157 - v40;
    v179 = v33;
    while (1)
    {
      if (v45 >= *(a1 + 16))
      {
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

      v47 = *(v18 + 72);
      sub_1D6E18DC8(v180 + v47 * v45, v43);
      v48 = *v43;
      v49 = *(v43 + 1);
      if (v46[2])
      {
        v50 = *v43;
        v51 = sub_1D5B69D90(*v43, *(v43 + 1));
        v48 = v50;
        if (v52)
        {
          v134 = v51;

          v135 = v46[7] + v134 * v47;
          v136 = v163;
          sub_1D6E18DC8(v135, v163);
          v137 = v166;
          sub_1D6F1D1C8(v136, v166);
          type metadata accessor for FormatPackageError();
          sub_1D6F1D300();
          swift_allocError();
          v138 = *(v43 + 1);
          v139 = *(v43 + 3);
          v193 = *(v43 + 2);
          v194 = v139;
          v140 = *(v43 + 3);
          v195 = *(v43 + 4);
          v141 = *(v43 + 1);
          v192[0] = *v43;
          v192[1] = v141;
          v142 = *(v137 + 1);
          v143 = v142;
          v197 = *v137;
          v198 = v142;
          v144 = *(v137 + 3);
          v201 = *(v137 + 4);
          v145 = *(v137 + 3);
          v199 = *(v137 + 2);
          v200 = v145;
          v186 = v192[0];
          v187 = v138;
          v146 = *(v43 + 4);
          v189 = v140;
          v190 = v146;
          v188 = v193;
          v196 = v43[80];
          v202 = *(v137 + 80);
          LOBYTE(v191[0]) = v43[80];
          *(&v191[1] + 8) = v143;
          *(v191 + 8) = v197;
          v147 = *(v137 + 4);
          BYTE8(v191[5]) = *(v137 + 80);
          *(&v191[4] + 8) = v147;
          *(&v191[3] + 8) = v144;
          *(&v191[2] + 8) = v199;
          v148 = v192[0];
          v149 = v193;
          v150[1] = v138;
          v150[2] = v149;
          *v150 = v148;
          v151 = v189;
          v152 = v190;
          v153 = v191[1];
          v150[5] = v191[0];
          v150[6] = v153;
          v150[3] = v151;
          v150[4] = v152;
          v154 = v191[2];
          v155 = v191[3];
          v156 = v191[4];
          *(v150 + 153) = *(&v191[4] + 9);
          v150[8] = v155;
          v150[9] = v156;
          v150[7] = v154;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          sub_1D62B7D1C(v192, v183);
          sub_1D62B7D1C(&v197, v183);
          sub_1D6E18E2C(v137);
          sub_1D6E18E2C(v43);
        }
      }

      v203 = v47;
      sub_1D6E18DC8(v43, v33);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v186 = v46;
      v54 = v48;
      v56 = sub_1D5B69D90(v48, v49);
      v57 = v46[2];
      v58 = (v55 & 1) == 0;
      v59 = v57 + v58;
      if (__OFADD__(v57, v58))
      {
        goto LABEL_59;
      }

      v60 = v55;
      if (v46[3] >= v59)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v63 = v186;
          if (v55)
          {
            goto LABEL_3;
          }
        }

        else
        {
          sub_1D6D7E9E4();
          v63 = v186;
          if (v60)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
        sub_1D6D67564(v59, isUniquelyReferenced_nonNull_native);
        v61 = sub_1D5B69D90(v48, v49);
        if ((v60 & 1) != (v62 & 1))
        {
          goto LABEL_63;
        }

        v56 = v61;
        v63 = v186;
        if (v60)
        {
LABEL_3:
          v33 = v179;
          sub_1D6F1D264(v179, v63[7] + v56 * v203);
          goto LABEL_4;
        }
      }

      v63[(v56 >> 6) + 8] |= 1 << v56;
      v64 = (v63[6] + 16 * v56);
      *v64 = v54;
      v64[1] = v49;
      v33 = v179;
      sub_1D6F1D1C8(v179, v63[7] + v56 * v203);
      v65 = v63[2];
      v66 = __OFADD__(v65, 1);
      v67 = v65 + 1;
      if (v66)
      {
        goto LABEL_61;
      }

      v63[2] = v67;

LABEL_4:
      v46 = v63;
      ++v45;
      v43 = v175;
      sub_1D6E18E2C(v175);
      a1 = v165;
      v18 = v178;
      if (v182 == v45)
      {
        goto LABEL_20;
      }
    }
  }

  v46 = MEMORY[0x1E69E7CC8];
LABEL_20:
  v68 = v164;
  v69 = *(v164 + 16);
  if (v69)
  {
    v70 = 0;
    v163 = v164 + 32;
    v166 = (v174 + 48);
    v180 = (v174 + 32);
    v158 = v69;
    while (v70 < *(v68 + 16))
    {
      sub_1D5B68374(v163 + 40 * v70, v183);
      v71 = v184;
      v72 = v185;
      __swift_project_boxed_opaque_existential_1(v183, v184);
      v73 = (*(v72 + 8))(v71, v72);
      v74 = v73;
      v75 = *(v73 + 16);
      if (v75)
      {
        v162 = v70;
        v76 = 0;
        v174 = v75 - 1;
        v175 = v73;
        v77 = 32;
        v79 = v176;
        v78 = v177;
        while (1)
        {
          v80 = *(v74 + v77 + 16);
          v186 = *(v74 + v77);
          v187 = v80;
          v81 = *(v74 + v77 + 32);
          v82 = *(v74 + v77 + 48);
          v83 = *(v74 + v77 + 64);
          LOBYTE(v191[0]) = *(v74 + v77 + 80);
          v189 = v82;
          v190 = v83;
          v188 = v81;
          v84 = v186;
          v85 = v46[2];
          v182 = *(&v186 + 1);
          v203 = v186;
          if (v85)
          {
            sub_1D62B7D1C(&v186, &v197);
            v86 = sub_1D5B69D90(v84, *(&v84 + 1));
            if (v87)
            {
              v117 = v86;

              v118 = v46[7] + *(v178 + 72) * v117;
              v119 = v160;
              sub_1D6E18DC8(v118, v160);
              v120 = v161;
              sub_1D6F1D1C8(v119, v161);
              type metadata accessor for FormatPackageError();
              sub_1D6F1D300();
              swift_allocError();
              v121 = v187;
              *v122 = v186;
              *(v122 + 16) = v121;
              v123 = v189;
              v124 = v190;
              v125 = v188;
              *(v122 + 80) = v191[0];
              *(v122 + 48) = v123;
              *(v122 + 64) = v124;
              *(v122 + 32) = v125;
              v126 = *(v120 + 16);
              v197 = *v120;
              v127 = v197;
              v198 = v126;
              v202 = *(v120 + 80);
              v128 = v202;
              v129 = *(v120 + 64);
              v200 = *(v120 + 48);
              v130 = v200;
              v201 = v129;
              v199 = *(v120 + 32);
              v131 = v199;
              *(v122 + 104) = v126;
              *(v122 + 88) = v127;
              *(v122 + 168) = v128;
              *(v122 + 152) = v129;
              *(v122 + 136) = v130;
              *(v122 + 120) = v131;
              sub_1D5B68374(v183, v122 + 176);
              swift_storeEnumTagMultiPayload();
              swift_willThrow();
              sub_1D62B7D1C(&v197, v192);
              sub_1D6E18E2C(v120);
              __swift_destroy_boxed_opaque_existential_1(v183);
            }
          }

          else
          {
            sub_1D62B7D1C(&v186, &v197);
          }

          sub_1D725BD3C();
          v88 = *v166;
          v89 = v173;
          if ((*v166)(v79, 1, v173) == 1)
          {
            sub_1D725BCDC();
            if (v88(v79, 1, v89) != 1)
            {
              sub_1D5F40BCC(v79);
            }
          }

          else
          {
            (*v180)(v181, v79, v89);
          }

          sub_1D725BD3C();
          v90 = v88(v78, 1, v89);
          v179 = v77;
          if (v90 == 1)
          {
            v91 = v172;
            sub_1D725BCCC();
            if (v88(v78, 1, v89) != 1)
            {
              sub_1D5F40BCC(v78);
            }
          }

          else
          {
            v91 = v172;
            (*v180)(v172, v78, v89);
          }

          v93 = v170;
          v92 = v171;
          sub_1D725BD3C();
          *v93 = 0;
          *(v93 + 1) = 0;
          v94 = *v180;
          (*v180)(&v93[v92[5]], v181, v89);
          v94(&v93[v92[6]], v91, v89);
          v95 = MEMORY[0x1E69E7CD0];
          *&v93[v92[8]] = MEMORY[0x1E69E7CD0];
          *&v93[v92[9]] = v95;
          *&v93[v92[10]] = v95;
          *&v93[v92[11]] = v95;
          v96 = v189;
          v97 = v190;
          v98 = v167;
          *(v167 + 2) = v188;
          *(v98 + 48) = v96;
          *(v98 + 64) = v97;
          *(v98 + 80) = v191[0];
          v99 = v187;
          *v98 = v186;
          *(v98 + 16) = v99;
          sub_1D5C35728(v93, v98 + *(v169 + 36));
          v100 = v168;
          sub_1D6F1D1C8(v98, v168);
          sub_1D62B7D1C(&v186, &v197);
          v101 = swift_isUniquelyReferenced_nonNull_native();
          *&v197 = v46;
          v102 = v182;
          v103 = sub_1D5B69D90(v203, v182);
          v105 = v46[2];
          v106 = (v104 & 1) == 0;
          v66 = __OFADD__(v105, v106);
          v107 = v105 + v106;
          if (v66)
          {
            break;
          }

          v108 = v104;
          v109 = v179;
          if (v46[3] >= v107)
          {
            v111 = v178;
            if ((v101 & 1) == 0)
            {
              v116 = v103;
              sub_1D6D7E9E4();
              v103 = v116;
            }
          }

          else
          {
            sub_1D6D67564(v107, v101);
            v103 = sub_1D5B69D90(v203, v102);
            v111 = v178;
            if ((v108 & 1) != (v110 & 1))
            {
              goto LABEL_63;
            }
          }

          v78 = v177;
          v46 = v197;
          if (v108)
          {
            sub_1D6F1D264(v100, *(v197 + 56) + *(v111 + 72) * v103);
            sub_1D62B7D78(&v186);
          }

          else
          {
            *(v197 + 8 * (v103 >> 6) + 64) |= 1 << v103;
            v112 = (v46[6] + 16 * v103);
            v113 = v182;
            *v112 = v203;
            v112[1] = v113;
            sub_1D6F1D1C8(v100, v46[7] + *(v111 + 72) * v103);

            sub_1D62B7D78(&v186);
            v114 = v46[2];
            v66 = __OFADD__(v114, 1);
            v115 = v114 + 1;
            if (v66)
            {
              goto LABEL_60;
            }

            v46[2] = v115;
          }

          v74 = v175;
          v79 = v176;
          if (v174 == v76)
          {

            a1 = v165;
            v69 = v158;
            v70 = v162;
            goto LABEL_23;
          }

          ++v76;
          v77 = v109 + 88;
          if (v76 >= *(v175 + 2))
          {
            goto LABEL_57;
          }
        }

        __break(1u);
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

LABEL_23:
      ++v70;
      __swift_destroy_boxed_opaque_existential_1(v183);
      v68 = v164;
      if (v70 == v69)
      {
        goto LABEL_53;
      }
    }

LABEL_62:
    __break(1u);
LABEL_63:
    result = sub_1D726493C();
    __break(1u);
  }

  else
  {
LABEL_53:

    v133 = v159;
    *v159 = a1;
    v133[1] = v46;
  }

  return result;
}

uint64_t sub_1D6F1CC8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7365707974 && a2 == 0xE500000000000000;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4E79427365707974 && a2 == 0xEB00000000656D61)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D72646CC();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1D6F1CD68(uint64_t a1)
{
  v2 = sub_1D5CDEB20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6F1CDA4(uint64_t a1)
{
  v2 = sub_1D5CDEB20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatTypeCollection.encode(to:)(void *a1)
{
  sub_1D5CDEAB8(0, &qword_1EDF026E0, sub_1D5CDEB20, &type metadata for FormatTypeCollection.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v12 - v7;
  v9 = *v1;
  v13 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5CDEB20();

  sub_1D7264B5C();
  v16 = v9;
  v15 = 0;
  sub_1D5CDEC24();
  sub_1D5CDED30(&qword_1EDF050F0, &qword_1EDF12420);
  v10 = v14;
  sub_1D726443C();

  if (!v10)
  {
    v16 = v13;
    v15 = 1;
    sub_1D5CE0B88();
    sub_1D6F1D0B4();
    sub_1D726443C();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1D6F1D038@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  result = sub_1D5C7A538(MEMORY[0x1E69E7CC0]);
  *a1 = v2;
  a1[1] = result;
  return result;
}

__n128 sub_1D6F1D06C(char **a1, __int128 *a2)
{
  v3 = a2[5];
  v7[4] = a2[4];
  v7[5] = v3;
  v7[6] = a2[6];
  v4 = a2[1];
  v7[0] = *a2;
  v7[1] = v4;
  v5 = a2[3];
  v7[2] = a2[2];
  v7[3] = v5;
  sub_1D5D04DD4(a1, v7, *v2);
  return result;
}

unint64_t sub_1D6F1D0B4()
{
  result = qword_1EDF05798;
  if (!qword_1EDF05798)
  {
    sub_1D5CE0B88();
    sub_1D5CDECB4(&qword_1EDF12420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05798);
  }

  return result;
}

unint64_t sub_1D6F1D174()
{
  result = qword_1EC898490;
  if (!qword_1EC898490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898490);
  }

  return result;
}

uint64_t sub_1D6F1D1C8(uint64_t a1, uint64_t a2)
{
  sub_1D5CDEAB8(0, &qword_1EDF33890, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for FormatObject);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6F1D264(uint64_t a1, uint64_t a2)
{
  sub_1D5CDEAB8(0, &qword_1EDF33890, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for FormatObject);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D6F1D300()
{
  result = qword_1EC881A40;
  if (!qword_1EC881A40)
  {
    type metadata accessor for FormatPackageError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881A40);
  }

  return result;
}

id FormatTagBinding.Asset.assetHandle(tag:)(void *a1)
{
  swift_getObjectType();

  return sub_1D6F1DD74(a1, v1);
}

uint64_t sub_1D6F1D398@<X0>(void *a1@<X1>, void *a2@<X8>)
{
  v20 = a2;
  v29 = type metadata accessor for FormatJson();
  MEMORY[0x1EEE9AC00](v29, v3);
  v5 = (&v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for FormatJsonKeyValue();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = (&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = MEMORY[0x1E69E7CC0];
  sub_1D6997B40(0, 12, 0);
  v11 = v31;
  v12 = a1;
  swift_getObjectType();
  v13 = 0;
  v27 = 0x80000001D73B9BB0;
  v28 = 0x80000001D73B9BD0;
  v25 = 0x80000001D73B9B70;
  v26 = 0x80000001D73B9B90;
  v23 = 0x80000001D73B9AF0;
  v24 = 0x80000001D73B9B40;
  v21 = 0x80000001D73B9AB0;
  v22 = 0x80000001D73B9AD0;
  do
  {
    v30 = byte_1F50F3688[v13 + 32];
    v14 = v30;
    *v5 = sub_1D6F1DD74(v12, &v30);
    swift_storeEnumTagMultiPayload();
    if (v14 > 5)
    {
      if (v14 > 8)
      {
        v15 = 0xD000000000000012;
        if (v14 == 9)
        {
          v15 = 0xD000000000000017;
          v16 = v26;
        }

        else if (v14 == 10)
        {
          v16 = v27;
        }

        else
        {
          v15 = 0xD000000000000019;
          v16 = v28;
        }
      }

      else if (v14 == 6)
      {
        v15 = 0xD000000000000014;
        v16 = v24;
      }

      else if (v14 == 7)
      {
        v15 = 0x6F4C7374726F7073;
        v16 = 0xEF6567616D496F67;
      }

      else
      {
        v15 = 0xD000000000000016;
        v16 = v25;
      }
    }

    else if (v14 > 2)
    {
      if (v14 == 3)
      {
        v16 = 0xEA00000000006567;
        v15 = 0x616D497265766F63;
      }

      else
      {
        v15 = 0x4976614E64656566;
        if (v14 == 4)
        {
          v16 = 0xEC0000006567616DLL;
        }

        else
        {
          v16 = 0xEE0051486567616DLL;
        }
      }
    }

    else
    {
      v15 = 0xD000000000000012;
      if (v14)
      {
        v15 = 0xD00000000000001DLL;
        if (v14 == 1)
        {
          v16 = v22;
        }

        else
        {
          v16 = v23;
        }
      }

      else
      {
        v16 = v21;
      }
    }

    *v10 = v15;
    v10[1] = v16;
    sub_1D6BF89BC(v5, v10 + *(v6 + 20), type metadata accessor for FormatJson);
    v31 = v11;
    v18 = *(v11 + 16);
    v17 = *(v11 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_1D6997B40(v17 > 1, v18 + 1, 1);
      v11 = v31;
    }

    ++v13;
    *(v11 + 16) = v18 + 1;
    sub_1D6BF89BC(v10, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v18, type metadata accessor for FormatJsonKeyValue);
  }

  while (v13 != 12);
  *v20 = v11;
  return swift_storeEnumTagMultiPayload();
}

uint64_t FormatTagBinding.Asset.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1D72641CC();

  v4 = 12;
  if (v2 < 0xC)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

unint64_t FormatTagBinding.Asset.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 5)
  {
    v2 = 0xD000000000000017;
    v5 = 0xD000000000000019;
    if (v1 == 10)
    {
      v5 = 0xD000000000000012;
    }

    if (v1 != 9)
    {
      v2 = v5;
    }

    v3 = 0xD000000000000016;
    if (v1 == 7)
    {
      v3 = 0x6F4C7374726F7073;
    }

    if (v1 == 6)
    {
      v3 = 0xD000000000000014;
    }

    v4 = *v0 <= 8u;
  }

  else
  {
    v2 = 0x616D497265766F63;
    if (v1 != 3)
    {
      v2 = 0x4976614E64656566;
    }

    v3 = 0xD000000000000012;
    if (*v0)
    {
      v3 = 0xD00000000000001DLL;
    }

    v4 = *v0 <= 2u;
  }

  if (v4)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D6F1D9A0()
{
  sub_1D7264A0C();
  FormatTagBinding.Asset.rawValue.getter();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6F1DA08()
{
  FormatTagBinding.Asset.rawValue.getter();
  sub_1D72621EC();
}

uint64_t sub_1D6F1DA6C()
{
  sub_1D7264A0C();
  FormatTagBinding.Asset.rawValue.getter();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D6F1DADC@<X0>(unint64_t *a1@<X8>)
{
  result = FormatTagBinding.Asset.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D6F1DB14(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = 0;
  v25 = MEMORY[0x1E69E7CD0];
  do
  {
    v16 = byte_1F50F3688[v6 + 32];
    LOBYTE(v23) = byte_1F50F3688[v6 + 32];
    v17 = sub_1D6F1DD74(a3, &v23);
    if (v17)
    {

      v23 = a1;
      v24 = a2;
      v7 = 0xD00000000000001DLL;
      if (v16 > 5)
      {
        if (v16 != 10)
        {
          v7 = 0xD000000000000025;
        }

        v8 = "ogo-alt-image-compact";
        if (v16 != 10)
        {
          v8 = "720EventStatusFormatter";
        }

        if (v16 == 9)
        {
          v7 = 0xD000000000000023;
        }

        v9 = "tag-has-sports-logo-alt-image";
        if (v16 != 9)
        {
          v9 = v8;
        }

        v10 = 0xD00000000000001FLL;
        v11 = 0xD000000000000021;
        if (v16 == 7)
        {
          v11 = 0xD000000000000019;
        }

        v12 = "ogo-image-compact";
        if (v16 != 7)
        {
          v12 = "ogo-alt-image-large";
        }

        if (v16 != 6)
        {
          v10 = v11;
        }

        v13 = "tag-has-sports-logo-image";
        if (v16 != 6)
        {
          v13 = v12;
        }

        if (v16 <= 8)
        {
          v14 = v10;
        }

        else
        {
          v14 = v7;
        }

        if (v16 <= 8)
        {
          v15 = v13;
        }

        else
        {
          v15 = v9;
        }
      }

      else
      {
        v18 = 0xD000000000000016;
        v19 = "tag-has-feed-nav-image-hq";
        if (v16 != 4)
        {
          v18 = 0xD000000000000019;
        }

        v20 = "mage-for-theme-background";
        if (v16 != 4)
        {
          v19 = "tag-has-sports-logo-image-large";
        }

        if (v16 == 3)
        {
          v18 = 0xD000000000000013;
          v19 = "tag-has-feed-nav-image";
        }

        if (v16 != 1)
        {
          v20 = "tag-has-cover-image";
        }

        if (v16)
        {
          v7 = 0xD000000000000029;
        }

        v21 = "mage-for-white-background";
        if (v16)
        {
          v21 = v20;
        }

        if (v16 <= 2)
        {
          v14 = v7;
        }

        else
        {
          v14 = v18;
        }

        if (v16 <= 2)
        {
          v15 = v21;
        }

        else
        {
          v15 = v19;
        }
      }

      MEMORY[0x1DA6F9910](v14, v15 | 0x8000000000000000);

      sub_1D5B860D0(&v23, v23, v24);
    }

    ++v6;
  }

  while (v6 != 12);
  return v25;
}

id sub_1D6F1DD74(void *a1, _BYTE *a2)
{
  v2 = *a2;
  if (v2 > 5)
  {
    if (*a2 > 8u)
    {
      if (v2 == 9)
      {
        result = [a1 asSports];
        if (!result)
        {
          return result;
        }

        v10 = [result sportsTheme];
        swift_unknownObjectRelease();
        if (v10)
        {
          v7 = [v10 sportsLogoAltImageLargeAssetHandle];
          goto LABEL_40;
        }
      }

      else if (v2 == 10)
      {
        result = [a1 asSports];
        if (!result)
        {
          return result;
        }

        v8 = [result sportsTheme];
        swift_unknownObjectRelease();
        if (v8)
        {
          v7 = [v8 sportsLogoAltImageAssetHandle];
          goto LABEL_40;
        }
      }

      else
      {
        result = [a1 asSports];
        if (!result)
        {
          return result;
        }

        v13 = [result sportsTheme];
        swift_unknownObjectRelease();
        if (v13)
        {
          v7 = [v13 sportsLogoAltImageCompactAssetHandle];
          goto LABEL_40;
        }
      }
    }

    else if (v2 == 6)
    {
      result = [a1 asSports];
      if (!result)
      {
        return result;
      }

      v9 = [result sportsTheme];
      swift_unknownObjectRelease();
      if (v9)
      {
        v7 = [v9 sportsLogoImageLargeAssetHandle];
        goto LABEL_40;
      }
    }

    else if (v2 == 7)
    {
      result = [a1 asSports];
      if (!result)
      {
        return result;
      }

      v6 = [result sportsTheme];
      swift_unknownObjectRelease();
      if (v6)
      {
        v7 = [v6 sportsLogoImageAssetHandle];
LABEL_40:
        v14 = v7;
        swift_unknownObjectRelease();
        return v14;
      }
    }

    else
    {
      result = [a1 asSports];
      if (!result)
      {
        return result;
      }

      v12 = [result sportsTheme];
      swift_unknownObjectRelease();
      if (v12)
      {
        v7 = [v12 sportsLogoImageCompactAssetHandle];
        goto LABEL_40;
      }
    }

    return 0;
  }

  if (*a2 > 2u)
  {
    if (v2 == 3)
    {
      return [a1 coverImageAssetHandle];
    }

    else if (v2 == 4)
    {
      return [a1 feedNavImageAssetHandle];
    }

    else
    {
      return [a1 feedNavImageHQAssetHandle];
    }
  }

  else
  {
    if (*a2)
    {
      if (v2 == 1)
      {
        result = [a1 theme];
        if (!result)
        {
          return result;
        }

        v4 = [result bannerImageForWhiteBackground];
        swift_unknownObjectRelease();
        v5 = [v4 assetHandle];
      }

      else
      {
        result = [a1 theme];
        if (!result)
        {
          return result;
        }

        v4 = [result bannerImageForThemeBackground];
        swift_unknownObjectRelease();
        v5 = [v4 assetHandle];
      }
    }

    else
    {
      result = [a1 theme];
      if (!result)
      {
        return result;
      }

      v4 = [result bannerImageForMask];
      swift_unknownObjectRelease();
      v5 = [v4 assetHandle];
    }

    v11 = v5;

    return v11;
  }
}

unint64_t sub_1D6F1E168()
{
  result = qword_1EDF110D0;
  if (!qword_1EDF110D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF110D0);
  }

  return result;
}

unint64_t sub_1D6F1E1C0()
{
  result = qword_1EC898498;
  if (!qword_1EC898498)
  {
    sub_1D6F1E218();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898498);
  }

  return result;
}

void sub_1D6F1E218()
{
  if (!qword_1EC8984A0)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8984A0);
    }
  }
}

id sub_1D6F1E288(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, void *a6)
{
  v12 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  v13 = MEMORY[0x1E69E7DE0];
  if (a3)
  {
    v14 = MEMORY[0x1E69E6530];
    v25 = MEMORY[0x1E69E6530];
    *&v24 = 0;
  }

  else
  {
    v23 = MEMORY[0x1E69E7DE0];
    *&v22 = a2;
    sub_1D5B7C390(&v22, &v24);
    v14 = v25;
  }

  __swift_project_boxed_opaque_existential_1(&v24, v14);
  v15 = sub_1D72646AC();
  __swift_destroy_boxed_opaque_existential_1(&v24);
  [v12 setValue:v15 forKey:*MEMORY[0x1E69799C8]];
  swift_unknownObjectRelease();
  if (a5)
  {
    v16 = MEMORY[0x1E69E63B0];
    v25 = MEMORY[0x1E69E63B0];
    *&v24 = 0x3FF0000000000000;
  }

  else
  {
    v23 = v13;
    *&v22 = a4;
    sub_1D5B7C390(&v22, &v24);
    v16 = v25;
  }

  __swift_project_boxed_opaque_existential_1(&v24, v16);
  v17 = sub_1D72646AC();
  __swift_destroy_boxed_opaque_existential_1(&v24);
  [v12 setValue:v17 forKey:*MEMORY[0x1E6979990]];
  swift_unknownObjectRelease();
  if (a6)
  {
    v18 = [a6 resolvedColorWithTraitCollection_];
    if (v18)
    {
      v19 = v18;
      v20 = [v18 CGColor];
      [v12 setValue:v20 forKey:*MEMORY[0x1E6979AA0]];
    }
  }

  return v12;
}

id sub_1D6F1E468()
{
  v0 = sub_1D726203C();
  v1 = [objc_opt_self() systemImageNamed_];

  return v1;
}

id sub_1D6F1E544()
{
  v1 = OBJC_IVAR____TtC8NewsFeed34DebugFormatInspectorViewController____lazy_storage___paneViewController;
  v2 = *(v0 + OBJC_IVAR____TtC8NewsFeed34DebugFormatInspectorViewController____lazy_storage___paneViewController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8NewsFeed34DebugFormatInspectorViewController____lazy_storage___paneViewController);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC8NewsFeed34DebugFormatInspectorViewController_editor);
    v5 = type metadata accessor for DebugFormatInspectorPaneViewController();
    v6 = objc_allocWithZone(v5);
    v6[OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_autoPreferredContentSize] = 1;
    v6[OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_autoDismissOnLayoutChange] = 1;
    *&v6[OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_preferredArrowDirections] = 4;
    *&v6[OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_preferredSize] = xmmword_1D72EC9C0;
    v7 = &v6[OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_filterTerm];
    *v7 = 0;
    v7[1] = 0xE000000000000000;
    v8 = OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_tableView;
    *&v6[v8] = [objc_allocWithZone(MEMORY[0x1E69DD020]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
    *&v6[OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_contentSizeObserver] = 0;
    *&v6[OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_editor] = v4;
    v9 = MEMORY[0x1E69E7CC0];
    *&v6[OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_groups] = MEMORY[0x1E69E7CC0];
    *&v6[OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_filteredGroups] = v9;
    *&v6[OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_image] = 0;
    v13.receiver = v6;
    v13.super_class = v5;

    v3 = objc_msgSendSuper2(&v13, sel_initWithNibName_bundle_, 0, 0);
    [v3 setTitle_];
    v10 = *(v0 + v1);
    *(v0 + v1) = v3;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

id sub_1D6F1E794()
{
  v1 = v0;
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_viewDidLoad);
  v2 = sub_1D6F1E544();
  [v1 addChildViewController_];

  result = [v1 view];
  if (result)
  {
    v4 = result;
    v5 = OBJC_IVAR____TtC8NewsFeed34DebugFormatInspectorViewController____lazy_storage___paneViewController;
    result = [*&v1[OBJC_IVAR____TtC8NewsFeed34DebugFormatInspectorViewController____lazy_storage___paneViewController] view];
    if (result)
    {
      v6 = result;
      [v4 addSubview_];

      [*&v1[v5] didMoveToParentViewController_];
      sub_1D725D78C();

      sub_1D725B33C();

      sub_1D725B2EC();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1D6F1E8FC(uint64_t a1, uint64_t a2)
{
  v45 = a2;
  v48 = a1;
  v2 = type metadata accessor for DebugFormatLayoutModel();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1D725FB0C();
  v6 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47, v7);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1D725FB1C();
  v10 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46, v11);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6F223DC(0, &qword_1EC88DD18, type metadata accessor for DebugFormatLayoutModelSelection, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v45 - v16;
  v18 = type metadata accessor for DebugFormatLayoutModelSelection();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v45 - v25;
  sub_1D6F21150(v45, v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_1D6F224A8(v17, &qword_1EC88DD18, type metadata accessor for DebugFormatLayoutModelSelection);
    sub_1D6F211E4();
    v28 = &v13[*(v27 + 48)];
    v29 = *(v27 + 64);
    MEMORY[0x1DA6F4A80](0x63656C6553206F4ELL, 0xEC0000006E6F6974, 0xD00000000000003CLL, 0x80000001D73F7CD0, 0);
    v30 = objc_opt_self();
    v31 = [v30 systemBackgroundColor];
    v32 = [v30 secondaryLabelColor];
    v33 = sub_1D725D7CC();
    v34 = MEMORY[0x1E69D79B8];
    v28[3] = v33;
    v28[4] = v34;
    __swift_allocate_boxed_opaque_existential_1(v28);
    sub_1D725D7BC();
    v35 = *MEMORY[0x1E69D7B58];
    v36 = sub_1D725DC9C();
    (*(*(v36 - 8) + 104))(&v13[v29], v35, v36);
    v37 = v46;
    (*(v10 + 104))(v13, *MEMORY[0x1E69D8830], v46);
    v38 = v47;
    (*(v6 + 104))(v9, *MEMORY[0x1E69D8850], v47);
    sub_1D725D77C();
    (*(v6 + 8))(v9, v38);
    (*(v10 + 8))(v13, v37);
    v39 = sub_1D6F1E544();
    sub_1D6A6F8CC(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    sub_1D6F22440(v17, v26, type metadata accessor for DebugFormatLayoutModelSelection);
    v40 = v48;
    v41 = sub_1D6F1E544();
    sub_1D5D5EBAC(v26, v22, type metadata accessor for DebugFormatLayoutModelSelection);
    sub_1D6F22440(v22, v5, type metadata accessor for DebugFormatLayoutModel);
    v42 = sub_1D6F1EF38(*(v40 + OBJC_IVAR____TtC8NewsFeed34DebugFormatInspectorViewController_pane), *(v40 + OBJC_IVAR____TtC8NewsFeed34DebugFormatInspectorViewController_editor));
    sub_1D5D28B64(v5, type metadata accessor for DebugFormatLayoutModel);
    sub_1D6A6F8CC(v42);

    v43 = v46;
    (*(v10 + 104))(v13, *MEMORY[0x1E69D8828], v46);
    v44 = v47;
    (*(v6 + 104))(v9, *MEMORY[0x1E69D8850], v47);
    sub_1D725D77C();
    (*(v6 + 8))(v9, v44);
    (*(v10 + 8))(v13, v43);
    sub_1D5D28B64(v26, type metadata accessor for DebugFormatLayoutModelSelection);
  }
}

uint64_t sub_1D6F1EF38(unsigned __int8 a1, uint64_t a2)
{
  v3 = sub_1D6F1F680(a1, v2, a2);
  v4 = sub_1D70732C4(v3);

  v6 = 0;
  v7 = *(v4 + 16);
  v8 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v9 = v4 + 40 * v6;
  while (1)
  {
    if (v7 == v6)
    {

      return v8;
    }

    if (v6 >= *(v4 + 16))
    {
      break;
    }

    ++v6;
    v10 = (v9 + 40);
    v11 = *(v9 + 64);
    v9 += 40;
    if (*(v11 + 16))
    {
      v13 = *(v10 - 1);
      v12 = *v10;
      v15 = v10[1];
      v14 = v10[2];

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1D69993A8(0, *(v8 + 16) + 1, 1);
      }

      v17 = *(v8 + 16);
      v16 = *(v8 + 24);
      if (v17 >= v16 >> 1)
      {
        result = sub_1D69993A8((v16 > 1), v17 + 1, 1);
      }

      *(v8 + 16) = v17 + 1;
      v18 = (v8 + 40 * v17);
      v18[4] = v13;
      v18[5] = v12;
      v18[6] = v15;
      v18[7] = v14;
      v18[8] = v11;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

void sub_1D6F1F0D4()
{
  v13.receiver = v0;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, sel_viewWillLayoutSubviews);
  v1 = sub_1D6F1E544();
  v2 = [v1 view];

  if (v2)
  {
    v3 = [v0 view];
    if (v3)
    {
      v4 = v3;
      [v3 bounds];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;

      [v2 setBounds_];
      sub_1D725D75C();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1D6F1F2C4(void *a1)
{
  v2 = sub_1D7257A4C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D6F1E544();
  v8 = [a1 searchBar];
  v9 = [v8 text];

  if (v9)
  {
    v10 = sub_1D726207C();
    v12 = v11;

    v19[0] = v10;
    v19[1] = v12;
    sub_1D725795C();
    sub_1D5BF4D9C();
    v13 = sub_1D7263A4C();
    v15 = v14;
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    v13 = 0;
    v15 = 0xE000000000000000;
  }

  v16 = &v7[OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_filterTerm];
  *v16 = v13;
  v16[1] = v15;

  v18 = sub_1D6A6EF68(v17);

  *&v7[OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_filteredGroups] = v18;

  [*&v7[OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_tableView] reloadData];
}

unint64_t sub_1D6F1F53C()
{
  result = qword_1EC8984D8;
  if (!qword_1EC8984D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8984D8);
  }

  return result;
}

uint64_t sub_1D6F1F590()
{
  v1 = *(*v0 + OBJC_IVAR____TtC8NewsFeed34DebugFormatInspectorViewController_pane);
  if (v1 > 2)
  {
    if (v1 == 3)
    {
      return 0x6F6974616D696E41;
    }

    else if (v1 == 4)
    {
      return 0x797453206B73614DLL;
    }

    else
    {
      return 0x696E41206B73614DLL;
    }
  }

  else if (*(*v0 + OBJC_IVAR____TtC8NewsFeed34DebugFormatInspectorViewController_pane))
  {
    if (v1 == 1)
    {
      return 0x736E6F6974704FLL;
    }

    else
    {
      return 0x726F7463656C6553;
    }
  }

  else
  {
    return 0x73656C797453;
  }
}

void *sub_1D6F1F680(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      sub_1D5EF032C();
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D7273AE0;
      v6 = sub_1D6AC1630(a3);
      if (v6)
      {
        v7 = &off_1F51E3FD0;
        v8 = &type metadata for FormatInspection;
      }

      else
      {
        v8 = 0;
        v7 = 0;
        *(inited + 40) = 0;
        *(inited + 48) = 0;
      }

      *(inited + 32) = v6;
      *(inited + 56) = v8;
      *(inited + 64) = v7;
      v9 = sub_1D7073500(inited);
      swift_setDeallocating();
      sub_1D5F10AA0(inited + 32);
      return v9;
    }

    else
    {
      return sub_1D6F20AF8(a3);
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      return sub_1D6F21280();
    }

    else
    {
      return sub_1D6F219C4();
    }
  }

  else
  {
    return sub_1D6F1F774(a3);
  }
}

void *sub_1D6F1F774(uint64_t a1)
{
  v170 = a1;
  v2 = type metadata accessor for FormatInspectionItem(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v168 = &v151 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5EA74B8();
  v159 = v6;
  v171 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v169 = &v151 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v151 - v11;
  sub_1D5EF032C();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D7284F00;
  v14 = sub_1D6AC2758();
  v15 = *(v14 + 2);
  v161 = v3;
  v162 = v1;
  v160 = v13;
  v172 = v2;
  if (v15)
  {
    *&v249 = MEMORY[0x1E69E7CC0];
    sub_1D69972A4(0, v15, 0);
    v16 = v249;
    *&v167 = type metadata accessor for FormatInspectionItem.Value(0);
    v17 = *(v167 - 8);
    v18 = *(v17 + 56);
    v165 = v17 + 56;
    v166 = v18;
    v164 = (v3 + 56);
    v158 = v14;
    v19 = v14 + 64;
    v163 = xmmword_1D72E27B0;
    do
    {
      v20 = *(v19 - 3);
      v21 = *(v19 - 2);
      v22 = *(v19 - 1);
      v23 = *v19;
      v24 = &v12[*(v2 + 24)];
      *v24 = *(v19 - 32);
      *(v24 + 1) = v20;
      *(v24 + 2) = v21;
      *(v24 + 3) = v22;
      *(v24 + 4) = v23;
      v25 = v167;
      swift_storeEnumTagMultiPayload();
      (v166)(v24, 0, 1, v25);
      *v12 = v163;
      *(v12 + 2) = 0;
      *(v12 + 3) = 0;
      v26 = &v12[*(v2 + 28)];
      *v26 = 0;
      *(v26 + 1) = 0;
      v26[16] = -1;
      (*v164)(v12, 0, 1, v2);
      *&v249 = v16;
      v27 = *(v16 + 16);
      v28 = *(v16 + 24);

      if (v27 >= v28 >> 1)
      {
        sub_1D69972A4(v28 > 1, v27 + 1, 1);
        v16 = v249;
      }

      *(v16 + 16) = v27 + 1;
      sub_1D6F22440(v12, v16 + ((*(v171 + 80) + 32) & ~*(v171 + 80)) + v171[9] * v27, sub_1D5EA74B8);
      v19 += 5;
      --v15;
      v2 = v172;
    }

    while (v15);

    v29 = v16;
    v3 = v161;
    v13 = v160;
  }

  else
  {

    v29 = MEMORY[0x1E69E7CC0];
  }

  sub_1D6795150(0x736575737349, 0xE600000000000000, 0, 0, v29, v264);

  *(v13 + 56) = &type metadata for FormatInspectionGroup;
  *(v13 + 64) = &off_1F518B2C0;
  v30 = swift_allocObject();
  *(v13 + 32) = v30;
  v31 = v264[1];
  *(v30 + 16) = v264[0];
  *(v30 + 32) = v31;
  *(v30 + 48) = v265;
  v32 = sub_1D6ABBFAC();
  v33 = *(v32 + 16);
  if (v33)
  {
    v263 = MEMORY[0x1E69E7CC0];
    sub_1D69972A4(0, v33, 0);
    v34 = v263;
    v166 = v32;
    v35 = v32 + 32;
    v36 = (v3 + 56);
    v37 = v33 - 1;
    v167 = xmmword_1D72E27B0;
    while (1)
    {
      sub_1D6F2232C(v35, v247);

      sub_1D725B31C();

      v259 = v238;
      v260 = v239;
      v261 = v240;
      v262 = v241;
      v255 = v234;
      v256 = v235;
      v257 = v236;
      v258 = v237;
      v251 = v231;
      v252 = v232;
      v253 = v233[0];
      v254 = v233[1];
      v249 = v229;
      v250 = v230;
      if (sub_1D5DEA380(&v249) == 1)
      {
        v225 = v238;
        v226 = v239;
        v227 = v240;
        v228 = v241;
        v221 = v234;
        v222 = v235;
        v223 = v236;
        v224 = v237;
        v217 = v231;
        v218 = v232;
        v219 = v233[0];
        v220 = v233[1];
        v215 = v229;
        v216 = v230;
        sub_1D5D28B64(&v215, sub_1D61957D4);
        v242 = 0u;
        v243 = 0u;
        v244 = 0u;
        v245 = 0u;
        memset(v246, 0, 25);
      }

      else
      {
        v211 = v238;
        v212 = v239;
        v213 = v240;
        v207 = v234;
        v208 = v235;
        v209 = v236;
        v210 = v237;
        v203 = v231;
        v204 = v232;
        v205 = v233[0];
        v206 = v233[1];
        v201 = v229;
        v202 = v230;
        v183 = v238;
        v184 = v239;
        v185 = v240;
        v179 = v234;
        v180 = v235;
        v181 = v236;
        v182 = v237;
        v175 = v231;
        v176 = v232;
        v177 = v233[0];
        v178 = v233[1];
        v173 = v229;
        v174 = v230;
        v197 = v238;
        v198 = v239;
        v199 = v240;
        v193 = v234;
        v194 = v235;
        v195 = v236;
        v196 = v237;
        v189 = v231;
        v190 = v232;
        v191 = v233[0];
        v192 = v233[1];
        v214 = v241;
        v186 = v241;
        v200 = v241;
        v187 = v229;
        v188 = v230;
        sub_1D5F2B0D8(&v201, &v215);
        sub_1D5D28B64(&v187, sub_1D61957D4);
        sub_1D6C57828(v247, v248, &v242);
        v225 = v183;
        v226 = v184;
        v227 = v185;
        v228 = v186;
        v221 = v179;
        v222 = v180;
        v223 = v181;
        v224 = v182;
        v217 = v175;
        v218 = v176;
        v219 = v177;
        v220 = v178;
        v215 = v173;
        v216 = v174;
        sub_1D5F2B134(&v215);
      }

      sub_1D6F22388(v247);
      *(v233 + 9) = *(v246 + 9);
      v233[0] = v246[0];
      v232 = v245;
      v231 = v244;
      v230 = v243;
      v229 = v242;
      v38 = *(v2 + 24);
      if (*(&v243 + 1))
      {
        v39 = v168;
        sub_1D6725818(&v229, &v168[v38]);
        v40 = type metadata accessor for FormatInspectionItem.Value(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v40 - 8) + 56))(v39 + v38, 0, 1, v40);
        *v39 = v167;
        *(v39 + 16) = 0;
        *(v39 + 24) = 0;
        v41 = v39 + *(v2 + 28);
        *v41 = 0;
        *(v41 + 8) = 0;
        *(v41 + 16) = -1;
        sub_1D6725874(&v229);
      }

      else
      {
        v42 = type metadata accessor for FormatInspectionItem.Value(0);
        v39 = v168;
        (*(*(v42 - 8) + 56))(&v168[v38], 1, 1, v42);
        *v39 = v167;
        *(v39 + 16) = 0;
        *(v39 + 24) = 0;
        v43 = v39 + *(v2 + 28);
        *v43 = 0;
        *(v43 + 8) = 0;
        *(v43 + 16) = -1;
      }

      v44 = v169;
      sub_1D6F22440(v39, v169, type metadata accessor for FormatInspectionItem);
      (*v36)(v44, 0, 1, v2);
      v263 = v34;
      v46 = *(v34 + 16);
      v45 = *(v34 + 24);
      if (v46 >= v45 >> 1)
      {
        sub_1D69972A4(v45 > 1, v46 + 1, 1);
        v44 = v169;
        v34 = v263;
      }

      *(v34 + 16) = v46 + 1;
      sub_1D6F22440(v44, v34 + ((*(v171 + 80) + 32) & ~*(v171 + 80)) + v171[9] * v46, sub_1D5EA74B8);
      if (!v37)
      {
        break;
      }

      --v37;
      v35 += 48;
      v2 = v172;
    }

    v13 = v160;
    v3 = v161;
    v2 = v172;
  }

  else
  {

    v34 = MEMORY[0x1E69E7CC0];
  }

  sub_1D6795150(0x676E69646E6942, 0xE700000000000000, 0, 0, v34, &v187);

  *(v13 + 96) = &type metadata for FormatInspectionGroup;
  *(v13 + 104) = &off_1F518B2C0;
  v47 = swift_allocObject();
  *(v13 + 72) = v47;
  v48 = v188;
  *(v47 + 16) = v187;
  *(v47 + 32) = v48;
  *(v47 + 48) = v189;
  v49 = v162;
  v50 = sub_1D6F20E90();
  v51 = sub_1D5F62998(v50);

  sub_1D6795150(0x6269737365636341, 0xED00007974696C69, 0, 0, v51, &v201);

  *(v13 + 136) = &type metadata for FormatInspectionGroup;
  *(v13 + 144) = &off_1F518B2C0;
  v52 = v49;
  v53 = swift_allocObject();
  *(v13 + 112) = v53;
  v54 = v202;
  *(v53 + 16) = v201;
  *(v53 + 32) = v54;
  *(v53 + 48) = v203;
  sub_1D6F223DC(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
  v56 = v55;
  v57 = *(v171 + 80);
  v58 = (v57 + 32) & ~v57;
  v169 = v171[9];
  v59 = 3 * v169;
  v165 = v57;
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_1D7279970;
  v166 = v58;
  v157 = v60;
  v61 = v60 + v58;
  v62 = sub_1D6ABCE58().n128_u64[0];
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v69 = sub_1D6ABD140();
  v70 = sub_1D6AC2140();
  v71 = v61 + *(v2 + 24);
  *v71 = v62;
  *(v71 + 8) = v64;
  *(v71 + 16) = v66;
  *(v71 + 24) = v68;
  *(v71 + 32) = v69;
  *(v71 + 40) = v70;
  *(v71 + 48) = 0;
  v72 = type metadata accessor for FormatInspectionItem.Value(0);
  swift_storeEnumTagMultiPayload();
  v73 = *(v72 - 8);
  v74 = *(v73 + 56);
  v164 = v72;
  v171 = v74;
  v168 = (v73 + 56);
  (v74)(v71, 0, 1, v72);
  v156 = xmmword_1D72E27B0;
  *v61 = xmmword_1D72E27B0;
  *(v61 + 16) = 0;
  *(v61 + 24) = 0;
  v75 = v61 + *(v2 + 28);
  *v75 = 0;
  *(v75 + 8) = 0;
  *(v75 + 16) = -1;
  v77 = *(v3 + 56);
  v76 = v3 + 56;
  *&v163 = v61;
  *&v167 = v77;
  v77(v61, 0, 1, v2);
  *&v249 = 0;
  *(&v249 + 1) = 0xE000000000000000;
  v78 = v52[40];
  v154 = v59;
  if (v78 == 3)
  {
    *&v215 = *v52;
    sub_1D6EE5698(&v229);
    v79 = v229;
  }

  else
  {
    v79 = 0x8000000000000000;
    *&v229 = 0x8000000000000000;
  }

  *&v215 = v79;
  v80 = FormatVisibility.description.getter();
  MEMORY[0x1DA6F9910](v80);
  sub_1D5EB15C4(v79);

  v81 = v169;
  v82 = v163;
  sub_1D711F844(0x696C696269736956, 0xEA00000000007974, v249, *(&v249 + 1), (v163 + v169));
  v83 = v82 + v81;
  v84 = v172;
  v85 = v167;
  v161 = v76;
  (v167)(v83, 0, 1, v172);
  v86 = v85;
  sub_1D6E0CED0(0, &qword_1EC8803C0, MEMORY[0x1E69E6F90]);
  v87 = swift_allocObject();
  v155 = xmmword_1D7273AE0;
  v153 = v87;
  *(v87 + 16) = xmmword_1D7273AE0;
  v88 = v166;
  v158 = v56;
  v89 = swift_allocObject();
  *(v89 + 16) = xmmword_1D7279960;
  v152 = v89;
  v90 = &v88[v89];
  v91 = sub_1D6AC236C();
  v92 = &v90[*(v84 + 24)];
  *v92 = v91;
  v92[1] = v93;
  v94 = v164;
  swift_storeEnumTagMultiPayload();
  v95 = v171;
  (v171)(v92, 0, 1, v94);
  *v90 = xmmword_1D7371A90;
  *(v90 + 2) = 0;
  *(v90 + 3) = 0;
  v96 = &v90[*(v84 + 28)];
  *v96 = 0;
  *(v96 + 1) = 0;
  v96[16] = -1;
  v86(v90, 0, 1, v84);
  v97 = &v90[v81];
  v98 = sub_1D6ABC9F0();
  v99 = &v90[v81 + *(v84 + 24)];
  *v99 = v98;
  v99[1] = v100;
  swift_storeEnumTagMultiPayload();
  v95(v99, 0, 1, v94);
  *v97 = 0xD000000000000011;
  *(v97 + 1) = 0x80000001D73F7D10;
  *(v97 + 2) = 0;
  *(v97 + 3) = 0;
  v101 = &v90[v81 + *(v84 + 28)];
  *v101 = 0;
  *(v101 + 8) = 0;
  *(v101 + 16) = -1;
  v102 = v167;
  (v167)(&v90[v81], 0, 1, v84);
  v103 = sub_1D6ABCAA4();
  if (v104)
  {
    v105 = v103;
  }

  else
  {
    v105 = 0;
  }

  v106 = 2 * v169;
  sub_1D7120550(0xD000000000000010, 0x80000001D73F7D30, v105, v104, &v90[2 * v169]);
  v151 = v106;
  v102(&v90[v106], 0, 1, v84);
  v107 = &v90[v154];
  v108 = sub_1D6ABC93C();
  v109 = &v107[*(v84 + 24)];
  *v109 = v108;
  v109[1] = v110;
  swift_storeEnumTagMultiPayload();
  (v171)(v109, 0, 1, v94);
  v111 = v162;
  *v107 = 0xD000000000000011;
  *(v107 + 1) = 0x80000001D73F7D50;
  *(v107 + 2) = 0;
  *(v107 + 3) = 0;
  v112 = &v107[*(v84 + 28)];
  *v112 = 0;
  *(v112 + 1) = 0;
  v112[16] = -1;
  v102(v107, 0, 1, v84);
  if (v111[40] == 1)
  {
    v113 = *v111;
    v114 = *(*v111 + 56);
    v115 = v157;
    if (v114)
    {
      v116 = *(v113 + 48);

      v118 = v116;
      v119 = v117;
    }

    else
    {
      v118 = 0;
      v119 = 0;
    }

    v120 = v172;
  }

  else
  {
    v118 = 0;
    v119 = 0;
    v120 = v172;
    v115 = v157;
  }

  v122 = v152;
  v121 = v153;
  v123 = &v90[4 * v169];
  sub_1D7120550(0xD000000000000019, 0x80000001D73F7D70, v118, v119, v123);
  v124 = v123;
  v125 = v167;
  (v167)(v124, 0, 1, v120);
  sub_1D6795150(0x696669746E656449, 0xEB00000000737265, 0, 0, v122, &v215);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v121[7] = &type metadata for FormatInspectionGroup;
  v121[8] = &off_1F518B2C0;
  v126 = swift_allocObject();
  v121[4] = v126;
  v127 = v216;
  *(v126 + 16) = v215;
  *(v126 + 32) = v127;
  *(v126 + 48) = v217;
  v128 = sub_1D5F62BFC(v121);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((v121 + 4));
  swift_deallocClassInstance();
  v129 = sub_1D7073500(v128);

  v130 = v163;
  v131 = v151;
  sub_1D711AD20(0x696669746E656449, 0xEB00000000737265, v129, 0, 0, (v163 + v151));
  v132 = (v130 + v131);
  v133 = v125;
  v125(v132, 0, 1, v120);
  sub_1D6795150(0x656D617246, 0xE500000000000000, 0, 0, v115, &v229);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v134 = v120;
  v135 = v160;
  v160[22] = &type metadata for FormatInspectionGroup;
  v135[23] = &off_1F518B2C0;
  v136 = swift_allocObject();
  v135[19] = v136;
  v137 = v230;
  *(v136 + 16) = v229;
  *(v136 + 32) = v137;
  *(v136 + 48) = v231;
  v138 = v166;
  v139 = swift_allocObject();
  *(v139 + 16) = v155;
  v140 = &v138[v139];
  sub_1D6ABCF84(&v249);
  v141 = *(v134 + 24);
  *&v140[v141] = v249;
  v142 = v164;
  swift_storeEnumTagMultiPayload();
  (v171)(&v138[v139 + v141], 0, 1, v142);
  *v140 = v156;
  *(v140 + 2) = 0;
  *(v140 + 3) = 0;
  v143 = &v138[v139 + *(v134 + 28)];
  *v143 = 0;
  *(v143 + 8) = 0;
  *(v143 + 16) = -1;
  v133(&v138[v139], 0, 1, v134);
  sub_1D6795150(0x676E697A69736552, 0xE800000000000000, 0, 0, v139, &v249);
  swift_setDeallocating();
  sub_1D5D28B64(&v138[v139], sub_1D5EA74B8);
  swift_deallocClassInstance();
  v135[27] = &type metadata for FormatInspectionGroup;
  v135[28] = &off_1F518B2C0;
  v144 = swift_allocObject();
  v135[24] = v144;
  v145 = v250;
  *(v144 + 16) = v249;
  *(v144 + 32) = v145;
  *(v144 + 48) = v251;
  v146 = sub_1D6ABD6E0(v170);
  if (v146)
  {
    v147 = &off_1F51E3FD0;
    v148 = &type metadata for FormatInspection;
  }

  else
  {
    v148 = 0;
    v147 = 0;
    v135[30] = 0;
    v135[31] = 0;
  }

  v135[29] = v146;
  v135[32] = v148;
  v135[33] = v147;
  v149 = sub_1D7073500(v135);
  swift_setDeallocating();
  sub_1D6E0CED0(0, &unk_1EC880480, MEMORY[0x1E69E6720]);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v149;
}

void *sub_1D6F20AF8(uint64_t a1)
{
  sub_1D6AC2420(v26);
  if (v27)
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    sub_1D6F223DC(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
    sub_1D5EA74B8();
    v4 = (*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1D7273AE0;
    v6 = v5 + v4;
    v7 = sub_1D6AC2480();
    v8 = type metadata accessor for FormatInspectionItem(0);
    v9 = v6 + *(v8 + 24);
    v10 = v26[1];
    *v9 = v26[0];
    *(v9 + 16) = v10;
    *(v9 + 32) = 0;
    *(v9 + 40) = v7;
    *(v9 + 48) = 2;
    v11 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v11 - 8) + 56))(v9, 0, 1, v11);
    *v6 = xmmword_1D72E27B0;
    *(v6 + 16) = 0;
    *(v6 + 24) = 0;
    v12 = v6 + *(v8 + 28);
    *v12 = 0;
    *(v12 + 8) = 0;
    *(v12 + 16) = -1;
    (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
    sub_1D6795150(0x73646E756F42, 0xE600000000000000, 0, 0, v5, v28);
    swift_setDeallocating();
    sub_1D5D28B64(v6, sub_1D5EA74B8);
    swift_deallocClassInstance();
    v13 = swift_allocObject();
    v14 = v28[1];
    *(v13 + 16) = v28[0];
    *(v13 + 32) = v14;
    *(v13 + 48) = v29;
    v2 = sub_1D699039C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v16 = v2[2];
    v15 = v2[3];
    if (v16 >= v15 >> 1)
    {
      v2 = sub_1D699039C((v15 > 1), v16 + 1, 1, v2);
    }

    v2[2] = v16 + 1;
    v17 = &v2[5 * v16];
    v17[4] = v13;
    v17[7] = &type metadata for FormatInspectionGroup;
    v17[8] = &off_1F518B2C0;
  }

  v18 = sub_1D6AC24EC(a1);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D699039C(0, v2[2] + 1, 1, v2);
  }

  v20 = v2[2];
  v19 = v2[3];
  if (v20 >= v19 >> 1)
  {
    v2 = sub_1D699039C((v19 > 1), v20 + 1, 1, v2);
  }

  v21 = &off_1F51E3FD0;
  if (!v18)
  {
    v21 = 0;
  }

  v22 = &type metadata for FormatInspection;
  if (!v18)
  {
    v22 = 0;
  }

  v2[2] = v20 + 1;
  v23 = &v2[5 * v20];
  v23[4] = v18;
  v23[5] = 0;
  v23[6] = 0;
  v23[7] = v22;
  v23[8] = v21;
  v24 = sub_1D7073500(v2);

  return v24;
}

uint64_t sub_1D6F20E90()
{

  sub_1D725B31C();

  if (v22)
  {
    v0 = sub_1D6ABC93C();
    v2 = sub_1D6CDA3B4(v0, v1);

    if (v2)
    {
      v3 = v2;
      v4 = sub_1D713197C(v2);
      if (!v4)
      {
        v8 = MEMORY[0x1E69E7CC0];
LABEL_15:

        return v8;
      }

      v5 = v4;
      sub_1D6F223DC(0, &qword_1EC896750, type metadata accessor for FormatInspectionItem, MEMORY[0x1E69E6F90]);
      v6 = *(type metadata accessor for FormatInspectionItem(0) - 8);
      v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_1D7273AE0;
      type metadata accessor for FormatAccessibilityShadowElement();
      v9 = swift_dynamicCastClass();
      if (v9)
      {
        v10 = v9;
        v11 = v3;
        if ([v10 accessibilityContainer])
        {
          swift_getObjectType();
          v23 = sub_1D7264C5C();
          v24 = v12;
          MEMORY[0x1DA6F9910](0x6F64616853202D20, 0xE900000000000077);

          swift_unknownObjectRelease();
          v13 = v23;
          v14 = v24;
LABEL_11:
          if ([v3 isAccessibilityElement])
          {
            v16 = 0xE700000000000000;
            v17 = 0x746E656D656C45;
          }

          else
          {
            v17 = UIAccessibilityContainerType.description.getter([v3 accessibilityContainerType]);
            v16 = v18;
          }

          v19 = sub_1D5F62BFC(v5);

          v20 = sub_1D7073500(v19);

          sub_1D711AD20(v13, v14, v20, v17, v16, (v8 + v7));
          goto LABEL_15;
        }
      }

      swift_getObjectType();
      v13 = sub_1D7264C5C();
      v14 = v15;
      goto LABEL_11;
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D6F21150(uint64_t a1, uint64_t a2)
{
  sub_1D6F223DC(0, &qword_1EC88DD18, type metadata accessor for DebugFormatLayoutModelSelection, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D6F211E4()
{
  if (!qword_1EC8984E0)
  {
    sub_1D725D3FC();
    sub_1D5B49474(255, &qword_1EC8984E8);
    sub_1D725DC9C();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EC8984E0);
    }
  }
}

void *sub_1D6F21280()
{
  sub_1D6F223DC(0, &qword_1EDF337F0, type metadata accessor for FormatOption, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v50 - v2;
  v4 = type metadata accessor for FormatOption();
  v52 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = (&v50 - v10);
  MEMORY[0x1EEE9AC00](v12, v13);
  v58 = &v50 - v14;
  v57 = type metadata accessor for FormatScopedOption();
  v15 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57, v16);
  v56 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v60 = &v50 - v20;
  v21 = sub_1D6ABD490();
  sub_1D72596FC();
  sub_1D72596DC();
  if (qword_1EDF43B30 != -1)
  {
    swift_once();
  }

  sub_1D72596CC();

  v22 = v62[0];
  v62[0] = 0;
  v62[1] = v22;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = v21;
  sub_1D6ABD490();

  v23 = sub_1D6F6103C();

  v24 = *(v23 + 16);
  if (v24)
  {
    v51 = v7;
    v25 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v50 = v23;
    v26 = v23 + v25;
    v55 = *(v15 + 72);
    v54 = (v52 + 56);
    v53 = (v52 + 48);
    v27 = MEMORY[0x1E69E7CC0];
    do
    {
      v59 = v27;
      v28 = v60;
      sub_1D5D5EBAC(v26, v60, type metadata accessor for FormatScopedOption);
      v29 = v56;
      sub_1D5D5EBAC(v28, v56, type metadata accessor for FormatScopedOption);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v30 = v11;
        v31 = v51;
        sub_1D6F22440(v29, v51, type metadata accessor for FormatOption);
        v32 = *v31;
        v33 = v31[1];

        sub_1D6B76F28(v62, &v61);
        sub_1D5D28B64(v60, type metadata accessor for FormatScopedOption);
        v36 = v61;
        *v3 = v32;
        *(v3 + 1) = v33;
        *(v3 + 2) = v36;
        *(v3 + 3) = 1;
        v37 = *(v4 + 28);
        v38 = type metadata accessor for FormatVersionRequirement(0);
        (*(*(v38 - 8) + 56))(&v3[v37], 1, 1, v38);
        v39 = v31;
        v11 = v30;
      }

      else
      {
        sub_1D6F22440(v29, v11, type metadata accessor for FormatOption);
        v34 = *v11;
        v35 = v11[1];

        sub_1D6B76F28(v62, &v61);
        sub_1D5D28B64(v60, type metadata accessor for FormatScopedOption);
        v40 = v61;
        *v3 = v34;
        *(v3 + 1) = v35;
        *(v3 + 2) = v40;
        *(v3 + 3) = 1;
        v41 = *(v4 + 28);
        v42 = type metadata accessor for FormatVersionRequirement(0);
        (*(*(v42 - 8) + 56))(&v3[v41], 1, 1, v42);
        v39 = v11;
      }

      sub_1D5D28B64(v39, type metadata accessor for FormatOption);
      (*v54)(v3, 0, 1, v4);
      v43 = (*v53)(v3, 1, v4);
      v27 = v59;
      if (v43 == 1)
      {
        sub_1D6F224A8(v3, &qword_1EDF337F0, type metadata accessor for FormatOption);
      }

      else
      {
        sub_1D6F22440(v3, v58, type metadata accessor for FormatOption);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_1D5CEABA0(0, v27[2] + 1, 1, v27);
        }

        v45 = v27[2];
        v44 = v27[3];
        if (v45 >= v44 >> 1)
        {
          v27 = sub_1D5CEABA0(v44 > 1, v45 + 1, 1, v27);
        }

        v27[2] = v45 + 1;
        sub_1D6F22440(v58, v27 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v45, type metadata accessor for FormatOption);
      }

      v26 += v55;
      --v24;
    }

    while (v24);
  }

  else
  {

    v27 = MEMORY[0x1E69E7CC0];
  }

  v46 = sub_1D68CAFC4(v27);

  v47 = sub_1D5F63640(v46);

  v48 = sub_1D7073500(v47);

  sub_1D6F22518(v62);
  return v48;
}

uint64_t sub_1D6F219C4()
{
  v1 = v0;
  sub_1D5EA74B8();
  v79 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v77 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v74 = &v70 - v7;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = (&v70 - v10);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v70 - v14;
  sub_1D5EF032C();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7270C10;
  v16 = sub_1D6ABD490();
  v17 = *(*(v16 + 40) + 16);
  swift_beginAccess();
  if (!*(*(v17 + 16) + 16))
  {
    goto LABEL_5;
  }

  *&v84 = *(v16 + 56);

  v19 = sub_1D6F622E0(v18);
  sub_1D5B886D0(v19);

  v20 = v84;
  v21 = *(v84 + 16);
  if (v21)
  {
    while (1)
    {
      v22 = sub_1D5B9A6D8(v21, 0);
      v23 = sub_1D5B9A6EC(&v84, v22 + 4, v21, v20);
      sub_1D5BA45DC(v84, *(&v84 + 1), v85, *(&v85 + 1), v86);
      if (v23 == v21)
      {
        break;
      }

      __break(1u);
LABEL_5:
      v20 = sub_1D6E46E28();

      v21 = *(v20 + 16);
      if (!v21)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:

    v22 = MEMORY[0x1E69E7CC0];
  }

  *&v84 = v22;

  v24 = 0;
  sub_1D5F81CCC(&v84);
  v71 = 0;
  v72 = v1;

  v25 = v84;
  v78 = *(v84 + 16);
  if (v78)
  {
    v26 = 0;
    v27 = (v84 + 40);
    v28 = MEMORY[0x1E69E7CC0];
    v75 = v84;
    v76 = v15;
    while (v26 < *(v25 + 16))
    {
      v29 = *(v27 - 1);
      v30 = *v27;
      *&v84 = v29;
      *(&v84 + 1) = v30;
      *&v82[0] = 36;
      *(&v82[0] + 1) = 0xE100000000000000;
      sub_1D5EC10B0();
      sub_1D5EC1104();

      if (sub_1D7261EEC())
      {

        v31 = type metadata accessor for FormatInspectionItem(0);
        (*(*(v31 - 8) + 56))(v11, 1, 1, v31);
      }

      else
      {
        v32 = type metadata accessor for FormatInspectionItem(0);
        v33 = (v11 + *(v32 + 24));
        *v33 = 0;
        v33[1] = 0xE000000000000000;
        v34 = type metadata accessor for FormatInspectionItem.Value(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v34 - 8) + 56))(v33, 0, 1, v34);
        *v11 = v29;
        v11[1] = v30;
        v11[2] = 0;
        v11[3] = 0;
        v35 = v11 + *(v32 + 28);
        *v35 = 0;
        *(v35 + 1) = 0;
        v35[16] = -1;
        (*(*(v32 - 8) + 56))(v11, 0, 1, v32);
      }

      v36 = v76;
      sub_1D6F22440(v11, v76, sub_1D5EA74B8);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_1D698C0A8(0, v28[2] + 1, 1, v28);
      }

      v24 = v28[2];
      v37 = v28[3];
      if (v24 >= v37 >> 1)
      {
        v28 = sub_1D698C0A8(v37 > 1, v24 + 1, 1, v28);
      }

      ++v26;
      v28[2] = v24 + 1;
      sub_1D6F22440(v36, v28 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v24, sub_1D5EA74B8);
      v27 += 2;
      v25 = v75;
      if (v78 == v26)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
    goto LABEL_42;
  }

  v28 = MEMORY[0x1E69E7CC0];
LABEL_20:

  sub_1D6795150(0x726F7463656C6553, 0xE900000000000073, 0, 0, v28, v82);

  v38 = inited;
  *(inited + 56) = &type metadata for FormatInspectionGroup;
  *(v38 + 64) = &off_1F518B2C0;
  v39 = swift_allocObject();
  *(v38 + 32) = v39;
  *(v39 + 48) = v83;
  v40 = v82[1];
  *(v39 + 16) = v82[0];
  *(v39 + 32) = v40;
  v41 = sub_1D6ABD490();
  v42 = *(*(v41 + 40) + 16);
  swift_beginAccess();
  if (!*(*(v42 + 16) + 16))
  {
    goto LABEL_24;
  }

  *&v84 = *(v41 + 56);

  v44 = sub_1D6F622E0(v43);
  sub_1D5B886D0(v44);

  v45 = v84;
  v46 = *(v84 + 16);
  if (v46)
  {
    while (1)
    {
      v47 = sub_1D5B9A6D8(v46, 0);
      v48 = sub_1D5B9A6EC(&v84, v47 + 4, v46, v45);
      sub_1D5BA45DC(v84, *(&v84 + 1), v85, *(&v85 + 1), v86);
      if (v48 == v46)
      {
        break;
      }

      __break(1u);
LABEL_24:
      v45 = sub_1D6E46E28();

      v46 = *(v45 + 16);
      if (!v46)
      {
        goto LABEL_25;
      }
    }
  }

  else
  {
LABEL_25:

    v47 = MEMORY[0x1E69E7CC0];
  }

  *&v84 = v47;

  v24 = v71;
  sub_1D5F81CCC(&v84);
  if (v24)
  {
    goto LABEL_43;
  }

  v49 = v84;
  v78 = *(v84 + 16);
  if (v78)
  {
    v50 = 0;
    v51 = (v84 + 40);
    v52 = MEMORY[0x1E69E7CC0];
    v24 = v74;
    v76 = v84;
    while (v50 < *(v49 + 16))
    {
      v53 = *(v51 - 1);
      v54 = *v51;
      *&v84 = v53;
      *(&v84 + 1) = v54;
      v80 = 36;
      v81 = 0xE100000000000000;
      sub_1D5EC10B0();
      sub_1D5EC1104();

      if (sub_1D7261EEC())
      {
        v55 = type metadata accessor for FormatInspectionItem(0);
        v56 = v77;
        v57 = &v77[*(v55 + 24)];
        *v57 = 0;
        *(v57 + 1) = 0xE000000000000000;
        v58 = type metadata accessor for FormatInspectionItem.Value(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v58 - 8) + 56))(v57, 0, 1, v58);
        *v56 = v53;
        v56[1] = v54;
        v56[2] = 0;
        v56[3] = 0;
        v59 = v56 + *(v55 + 28);
        *v59 = 0;
        *(v59 + 1) = 0;
        v59[16] = -1;
        v60 = *(*(v55 - 8) + 56);
        v61 = v55;
        v24 = v74;
        v60(v56, 0, 1, v61);
      }

      else
      {

        v62 = type metadata accessor for FormatInspectionItem(0);
        v56 = v77;
        (*(*(v62 - 8) + 56))(v77, 1, 1, v62);
      }

      sub_1D6F22440(v56, v24, sub_1D5EA74B8);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v52 = sub_1D698C0A8(0, v52[2] + 1, 1, v52);
      }

      v64 = v52[2];
      v63 = v52[3];
      if (v64 >= v63 >> 1)
      {
        v52 = sub_1D698C0A8(v63 > 1, v64 + 1, 1, v52);
      }

      ++v50;
      v52[2] = v64 + 1;
      sub_1D6F22440(v24, v52 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v64, sub_1D5EA74B8);
      v51 += 2;
      v49 = v76;
      if (v78 == v50)
      {
        goto LABEL_40;
      }
    }

LABEL_42:
    __break(1u);
LABEL_43:

    __break(1u);
    return result;
  }

  v52 = MEMORY[0x1E69E7CC0];
LABEL_40:

  sub_1D6795150(0xD000000000000010, 0x80000001D73F7D90, 0, 0, v52, &v84);

  v65 = inited;
  *(inited + 96) = &type metadata for FormatInspectionGroup;
  *(v65 + 104) = &off_1F518B2C0;
  v66 = swift_allocObject();
  *(v65 + 72) = v66;
  *(v66 + 48) = v86;
  v67 = v85;
  *(v66 + 16) = v84;
  *(v66 + 32) = v67;
  v68 = sub_1D7073500(v65);
  swift_setDeallocating();
  sub_1D6E0CED0(0, &unk_1EC880480, MEMORY[0x1E69E6720]);
  swift_arrayDestroy();
  return v68;
}

void sub_1D6F223DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D6F22440(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6F224A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D6F223DC(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t ExternalRecipe.init(recipe:suitableForDiet:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[50] = a3;
  v4[51] = a4;
  v4[48] = a1;
  v4[49] = a2;
  sub_1D72576DC();
  v4[52] = swift_task_alloc();
  sub_1D725763C();
  v4[53] = swift_task_alloc();
  v5 = sub_1D72576AC();
  v4[54] = v5;
  v4[55] = *(v5 - 8);
  v4[56] = swift_task_alloc();
  sub_1D5B54DC4(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  v4[57] = swift_task_alloc();
  v4[58] = swift_task_alloc();
  v4[59] = swift_task_alloc();
  v4[60] = swift_task_alloc();
  v4[61] = swift_task_alloc();
  sub_1D5B54DC4(0, &qword_1EDF18B08, MEMORY[0x1E69972E8]);
  v4[62] = swift_task_alloc();
  v4[63] = swift_task_alloc();
  v4[64] = swift_task_alloc();
  sub_1D5B54DC4(0, &unk_1EDF18B10, MEMORY[0x1E69972D8]);
  v4[65] = swift_task_alloc();
  v4[66] = swift_task_alloc();
  v4[67] = swift_task_alloc();
  v6 = sub_1D72575FC();
  v4[68] = v6;
  v4[69] = *(v6 - 8);
  v4[70] = swift_task_alloc();
  v7 = sub_1D725761C();
  v4[71] = v7;
  v4[72] = *(v7 - 8);
  v4[73] = swift_task_alloc();
  v4[74] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D6F22884, 0, 0);
}

uint64_t sub_1D6F22884()
{
  v1 = [*(v0 + 392) contentVersion];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1D726207C();
    v5 = v4;
  }

  else
  {
    v5 = 0xE90000000000003ELL;
    v3 = 0x6E776F6E6B6E753CLL;
  }

  *(v0 + 608) = v5;
  *(v0 + 600) = v3;
  v6 = [*(v0 + 392) contentFormat];
  if (v6 == 2)
  {
    v16 = [*(v0 + 392) contentAssetHandle];
    v17 = swift_task_alloc();
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    *(v17 + 32) = 1;
    sub_1D5B5534C(0, &qword_1EDF1A9A0);
    sub_1D725BDCC();

    *(swift_allocObject() + 16) = v16;
    v18 = v16;
    v19 = sub_1D725B92C();
    *(v0 + 640) = sub_1D725BA8C();

    v20 = swift_task_alloc();
    *(v0 + 648) = v20;
    *v20 = v0;
    v20[1] = sub_1D6F24074;
    v15 = v0 + 256;
  }

  else
  {
    if (v6 != 1)
    {
      if (v6)
      {
        v7 = (v0 + 16);
        v8 = *(v0 + 392);

        *(v0 + 24) = 0xE000000000000000;
        v9 = (v0 + 24);
        *(v0 + 16) = 0;
        *(v0 + 368) = [v8 contentFormat];
      }

      else
      {
        v7 = (v0 + 192);
        v8 = *(v0 + 392);

        *(v0 + 200) = 0xE000000000000000;
        v9 = (v0 + 200);
        *(v0 + 192) = 0;
        *(v0 + 376) = [v8 contentFormat];
      }

      type metadata accessor for FCRecipeContentFormat(0);
      sub_1D7263F9C();
      v21 = *v7;
      v22 = *v9;
      sub_1D6F255B4();
      swift_allocError();
      *v23 = v21;
      *(v23 + 8) = v22;
      *(v23 + 16) = 0;
      *(v23 + 24) = 0;
      *(v23 + 32) = 0;
      swift_willThrow();

      v24 = *(v0 + 8);

      return v24();
    }

    v10 = [*(v0 + 392) contentAssetHandle];
    v11 = swift_task_alloc();
    *(v11 + 16) = v10;
    *(v11 + 24) = 0;
    *(v11 + 32) = 1;
    sub_1D5B5534C(0, &qword_1EDF1A9A0);
    sub_1D725BDCC();

    *(swift_allocObject() + 16) = v10;
    v12 = v10;
    v13 = sub_1D725B92C();
    *(v0 + 616) = sub_1D725BA8C();

    v14 = swift_task_alloc();
    *(v0 + 624) = v14;
    *v14 = v0;
    v14[1] = sub_1D6F22DE8;
    v15 = v0 + 144;
  }

  return MEMORY[0x1EEE44EE0](v15);
}

uint64_t sub_1D6F22DE8()
{
  *(*v1 + 632) = v0;

  if (v0)
  {

    v2 = sub_1D6F25314;
  }

  else
  {
    v2 = sub_1D6F22F38;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_1D6F22F38()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = [*(v0 + 392) contentEncoding];
  if (v3 != 2)
  {
    if (v3 != 1)
    {
      v4 = *(v0 + 392);
      if (v3)
      {

        *(v0 + 160) = 0;
        *(v0 + 168) = 0xE000000000000000;
        *(v0 + 288) = [v4 contentEncoding];
        type metadata accessor for FCRecipeContentEncoding(0);
        sub_1D7263F9C();
        *(v0 + 176) = 0;
        *(v0 + 184) = 0xE000000000000000;
        v5 = (v0 + 176);
        v132 = *(v0 + 160);
        *(v0 + 296) = [v4 contentFormat];
      }

      else
      {

        *(v0 + 224) = 0;
        *(v0 + 232) = 0xE000000000000000;
        *(v0 + 344) = [v4 contentEncoding];
        type metadata accessor for FCRecipeContentEncoding(0);
        sub_1D7263F9C();
        *(v0 + 208) = 0;
        *(v0 + 216) = 0xE000000000000000;
        v5 = (v0 + 208);
        v132 = *(v0 + 224);
        *(v0 + 360) = [v4 contentFormat];
      }

      type metadata accessor for FCRecipeContentFormat(0);
      goto LABEL_11;
    }

    v6 = *(v0 + 392);
    (*(*(v0 + 552) + 104))(*(v0 + 560), *MEMORY[0x1E69972D0], *(v0 + 544));

    sub_1D725760C();
    v7 = [v6 authors];
    if (v7 && (v8 = v7, v9 = sub_1D726267C(), v8, Array<A>.localizedOxfordCommaSeparatedList.getter(v9), v11 = v10, , v11))
    {
      sub_1D725767C();
      v12 = 0;
    }

    else
    {
      v12 = 1;
    }

    v17 = *(v0 + 536);
    v18 = *(v0 + 528);
    v19 = *(v0 + 392);
    v20 = sub_1D725768C();
    (*(*(v20 - 8) + 56))(v18, v12, 1, v20);
    sub_1D6F25608(v18, v17, &unk_1EDF18B10, MEMORY[0x1E69972D8]);
    v21 = [v19 articles];
    sub_1D5B5534C(0, &qword_1EDF3C720);
    v22 = sub_1D726267C();

    if (v22 >> 62)
    {
      v23 = sub_1D7263BFC();
    }

    else
    {
      v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v130 = v0;
    if (v23)
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x1DA6FB460](0, v22);
      }

      else
      {
        if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_75;
        }

        v24 = *(v22 + 32);
        swift_unknownObjectRetain();
      }

      v25 = [v24 title];
      if (v25)
      {
        v26 = v25;
        sub_1D726207C();

        v27 = [v24 identifier];
        sub_1D726207C();
        v28 = [v24 sourceChannel];
        if (v28)
        {
          v29 = [v28 name];
          swift_unknownObjectRelease();
          sub_1D726207C();
        }

        v31 = [v24 thumbnail];
        if (v31)
        {
          v32 = v31;
          v33 = [v31 thumbnailAssetHandle];

          if (!v33)
          {
LABEL_79:
            __break(1u);
            return;
          }

          v27 = [v33 remoteURL];
          sub_1D72584EC();
          v34 = 0;
        }

        else
        {
          v34 = 1;
        }

        v35 = *(v0 + 488);

        v36 = sub_1D72585BC();
        (*(*(v36 - 8) + 56))(v35, v34, 1, v36);
        v37 = [v24 thumbnail];
        v38 = v37;
        if (v37)
        {
          [v37 thumbnailSize];
          v40 = v39;

          v41 = v40;
        }

        else
        {
          v41 = 0;
        }

        v42 = *(v0 + 448);
        (*(*(v0 + 440) + 104))(v42, *MEMORY[0x1E69972E0], *(v0 + 432));
        v118 = v42;
        LOBYTE(v117) = v38 == 0;
        v115 = v41;
        sub_1D725769C();
        swift_unknownObjectRelease();
        v30 = 0;
      }

      else
      {
        swift_unknownObjectRelease();
        v30 = 1;
      }
    }

    else
    {

      v30 = 1;
    }

    v44 = *(v0 + 504);
    v43 = *(v0 + 512);
    v45 = *(v0 + 392);
    v46 = sub_1D72576BC();
    (*(*(v46 - 8) + 56))(v44, v30, 1, v46);
    sub_1D6F25608(v44, v43, &qword_1EDF18B08, MEMORY[0x1E69972E8]);
    v47 = [v45 identifier];
    sub_1D726207C();
    v131 = [v45 title];
    sub_1D726207C();
    v48 = [v45 shortExcerpt];
    v49 = sub_1D726207C();
    v51 = v50;

    v52 = HIBYTE(v51) & 0xF;
    if ((v51 & 0x2000000000000000) == 0)
    {
      v52 = v49 & 0xFFFFFFFFFFFFLL;
    }

    if (v52)
    {
      v53 = [*(v0 + 392) shortExcerpt];
      sub_1D726207C();
    }

    v54 = *(v0 + 392);
    (*(*(v0 + 576) + 16))(*(v0 + 584), *(v0 + 592), *(v0 + 568));
    v55 = [v54 thumbnailSmall];
    if (!v55)
    {
      v59 = 1;
      goto LABEL_40;
    }

    v56 = v55;
    v57 = [v55 thumbnailAssetHandle];

    if (v57)
    {
      v58 = [v57 remoteURL];

      sub_1D72584EC();
      v59 = 0;
LABEL_40:
      v60 = *(v0 + 480);
      v61 = *(v0 + 392);
      v62 = sub_1D72585BC();
      v63 = (*(v62 - 8) + 56);
      v133 = *v63;
      (*v63)(v60, v59, 1, v62);
      v64 = [v61 thumbnailSmall];
      v65 = v131;
      if (v64)
      {
        v66 = v64;
        [v64 thumbnailSize];
      }

      v67 = [*(v0 + 392) thumbnailMedium];
      if (!v67)
      {
        v71 = 1;
        goto LABEL_46;
      }

      v68 = v67;
      v69 = [v67 thumbnailAssetHandle];

      if (v69)
      {
        v70 = [v69 remoteURL];

        sub_1D72584EC();
        v71 = 0;
LABEL_46:
        v72 = *(v0 + 392);
        v133(*(v0 + 472), v71, 1, v62);
        v73 = [v72 thumbnailMedium];
        v74 = v73;
        if (v73)
        {
          [v73 thumbnailSize];
        }

        v75 = [*(v0 + 392) thumbnailLarge];
        if (!v75)
        {
          v79 = 1;
          goto LABEL_52;
        }

        v76 = v75;
        v77 = [v75 thumbnailAssetHandle];

        if (v77)
        {
          v78 = [v77 remoteURL];

          sub_1D72584EC();
          v79 = 0;
LABEL_52:
          v80 = *(v0 + 392);
          v133(*(v0 + 464), v79, 1, v62);
          v81 = [v80 thumbnailLarge];
          v82 = v81;
          if (v81)
          {
            [v81 thumbnailSize];
            v84 = v83;
            v86 = v85;

            v128 = v86;
            v129 = v84;
          }

          else
          {
            v128 = 0;
            v129 = 0;
          }

          v87 = [*(v0 + 392) thumbnailExtraLarge];
          if (!v87)
          {

            v91 = 1;
            goto LABEL_59;
          }

          v88 = v87;
          v89 = [v87 thumbnailAssetHandle];

          if (v89)
          {

            v90 = [v89 remoteURL];

            v65 = v90;
            v0 = v130;
            sub_1D72584EC();
            v91 = 0;
LABEL_59:
            v92 = *(v0 + 456);
            v93 = *(v0 + 392);

            v133(v92, v91, 1, v62);
            v94 = [v93 thumbnailExtraLarge];
            v95 = v94;
            if (v94)
            {
              [v94 thumbnailSize];
              v97 = v96;
              v99 = v98;

              v124 = v97;
              v100 = v99;
            }

            else
            {
              v124 = 0;
              v100 = 0;
            }

            v101 = [*(v0 + 392) thumbnailPrimaryColor];
            if (v101)
            {
              v102 = v101;
              v103 = [v101 ne_color];
            }

            else
            {
              v103 = 0;
            }

            v104 = [*(v0 + 392) thumbnailBackgroundColor];
            if (v104)
            {
              v105 = v104;
              v106 = [v104 ne_color];
            }

            else
            {
              v106 = 0;
            }

            v127 = *(v0 + 592);
            v107 = v82 == 0;
            v125 = *(v0 + 576);
            v126 = *(v0 + 568);
            v108 = *(v0 + 536);
            v109 = *(v0 + 520);
            v123 = *(v0 + 512);
            v122 = *(v0 + 496);
            v110 = *(v0 + 392);
            LOBYTE(v121) = v95 == 0;
            v120 = *(v0 + 456);
            LOBYTE(v119) = v107;
            v116 = *(v0 + 464);
            sub_1D725762C();
            v111 = [objc_msgSend(v110 sourceChannel];
            swift_unknownObjectRelease();
            sub_1D726207C();

            v112 = [objc_msgSend(v110 sourceChannel)];
            swift_unknownObjectRelease();
            sub_1D726207C();

            sub_1D725767C();
            v113 = MEMORY[0x1E69972D8];
            sub_1D6F25674(v108, v109, &unk_1EDF18B10, MEMORY[0x1E69972D8]);
            v114 = MEMORY[0x1E69972E8];
            sub_1D6F25674(v123, v122, &qword_1EDF18B08, MEMORY[0x1E69972E8]);
            sub_1D725766C();

            sub_1D6F256E0(v123, &qword_1EDF18B08, v114);
            sub_1D6F256E0(v108, &unk_1EDF18B10, v113);
            (*(v125 + 8))(v127, v126);

            v16 = *(v130 + 8);
            goto LABEL_69;
          }

          goto LABEL_78;
        }

LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
        goto LABEL_79;
      }

LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v4 = *(v0 + 392);

  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  *(v0 + 312) = [v4 contentEncoding];
  type metadata accessor for FCRecipeContentEncoding(0);
  sub_1D7263F9C();
  *(v0 + 240) = 0;
  *(v0 + 248) = 0xE000000000000000;
  v5 = (v0 + 240);
  v132 = *(v0 + 32);
  *(v0 + 328) = [v4 contentFormat];
  type metadata accessor for FCRecipeContentFormat(0);
LABEL_11:
  sub_1D7263F9C();
  v14 = *v5;
  v13 = v5[1];
  sub_1D6F255B4();
  swift_allocError();
  *v15 = v132;
  *(v15 + 16) = v14;
  *(v15 + 24) = v13;
  *(v15 + 32) = 1;
  swift_willThrow();
  sub_1D5B952F8(v1, v2);

  v16 = *(v0 + 8);
LABEL_69:

  v16();
}

uint64_t sub_1D6F24074()
{
  *(*v1 + 656) = v0;

  if (v0)
  {

    v2 = sub_1D6F25464;
  }

  else
  {
    v2 = sub_1D6F241C4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_1D6F241C4()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);
  v3 = [*(v0 + 392) contentEncoding];
  if (v3 != 2)
  {
    if (v3 == 1)
    {
      v4 = *(v0 + 392);

      *(v0 + 80) = 0;
      *(v0 + 88) = 0xE000000000000000;
      *(v0 + 320) = [v4 contentEncoding];
      type metadata accessor for FCRecipeContentEncoding(0);
      sub_1D7263F9C();
      *(v0 + 96) = 0;
      *(v0 + 104) = 0xE000000000000000;
      v5 = (v0 + 96);
      v131 = *(v0 + 80);
      *(v0 + 272) = [v4 contentFormat];
      type metadata accessor for FCRecipeContentFormat(0);
    }

    else
    {
      v4 = *(v0 + 392);
      if (v3)
      {

        *(v0 + 48) = 0;
        *(v0 + 56) = 0xE000000000000000;
        *(v0 + 352) = [v4 contentEncoding];
        type metadata accessor for FCRecipeContentEncoding(0);
        sub_1D7263F9C();
        *(v0 + 64) = 0;
        *(v0 + 72) = 0xE000000000000000;
        v5 = (v0 + 64);
        v131 = *(v0 + 48);
        *(v0 + 336) = [v4 contentFormat];
      }

      else
      {

        *(v0 + 112) = 0;
        *(v0 + 120) = 0xE000000000000000;
        *(v0 + 304) = [v4 contentEncoding];
        type metadata accessor for FCRecipeContentEncoding(0);
        sub_1D7263F9C();
        *(v0 + 128) = 0;
        *(v0 + 136) = 0xE000000000000000;
        v5 = (v0 + 128);
        v131 = *(v0 + 112);
        *(v0 + 280) = [v4 contentFormat];
      }

      type metadata accessor for FCRecipeContentFormat(0);
    }

    sub_1D7263F9C();
    v14 = *v5;
    v13 = v5[1];
    sub_1D6F255B4();
    swift_allocError();
    *v15 = v131;
    *(v15 + 16) = v14;
    *(v15 + 24) = v13;
    *(v15 + 32) = 1;
    swift_willThrow();
    sub_1D5B952F8(v1, v2);

    v16 = *(v0 + 8);
    goto LABEL_69;
  }

  v6 = *(v0 + 392);
  (*(*(v0 + 552) + 104))(*(v0 + 560), *MEMORY[0x1E69972C8], *(v0 + 544));

  sub_1D725760C();
  v7 = [v6 authors];
  if (v7 && (v8 = v7, v9 = sub_1D726267C(), v8, Array<A>.localizedOxfordCommaSeparatedList.getter(v9), v11 = v10, , v11))
  {
    sub_1D725767C();
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  v17 = *(v0 + 536);
  v18 = *(v0 + 528);
  v19 = *(v0 + 392);
  v20 = sub_1D725768C();
  (*(*(v20 - 8) + 56))(v18, v12, 1, v20);
  sub_1D6F25608(v18, v17, &unk_1EDF18B10, MEMORY[0x1E69972D8]);
  v21 = [v19 articles];
  sub_1D5B5534C(0, &qword_1EDF3C720);
  v22 = sub_1D726267C();

  if (v22 >> 62)
  {
    v23 = sub_1D7263BFC();
  }

  else
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v23)
  {
    if ((v22 & 0xC000000000000001) != 0)
    {
      v24 = MEMORY[0x1DA6FB460](0, v22);
    }

    else
    {
      if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_75;
      }

      v24 = *(v22 + 32);
      swift_unknownObjectRetain();
    }

    v25 = [v24 title];
    if (v25)
    {
      v26 = v25;
      sub_1D726207C();

      v27 = [v24 identifier];
      sub_1D726207C();
      v28 = [v24 sourceChannel];
      if (v28)
      {
        v29 = [v28 name];
        swift_unknownObjectRelease();
        sub_1D726207C();
      }

      v31 = [v24 thumbnail];
      if (v31)
      {
        v32 = v31;
        v33 = [v31 thumbnailAssetHandle];

        if (!v33)
        {
LABEL_79:
          __break(1u);
          return;
        }

        v27 = [v33 remoteURL];
        sub_1D72584EC();
        v34 = 0;
      }

      else
      {
        v34 = 1;
      }

      v35 = *(v0 + 488);

      v36 = sub_1D72585BC();
      (*(*(v36 - 8) + 56))(v35, v34, 1, v36);
      v37 = [v24 thumbnail];
      v38 = v37;
      if (v37)
      {
        [v37 thumbnailSize];
        v40 = v39;

        v41 = v40;
      }

      else
      {
        v41 = 0;
      }

      v42 = *(v0 + 448);
      (*(*(v0 + 440) + 104))(v42, *MEMORY[0x1E69972E0], *(v0 + 432));
      v118 = v42;
      LOBYTE(v117) = v38 == 0;
      v115 = v41;
      sub_1D725769C();
      swift_unknownObjectRelease();
      v30 = 0;
    }

    else
    {
      swift_unknownObjectRelease();
      v30 = 1;
    }
  }

  else
  {

    v30 = 1;
  }

  v44 = *(v0 + 504);
  v43 = *(v0 + 512);
  v45 = *(v0 + 392);
  v46 = sub_1D72576BC();
  (*(*(v46 - 8) + 56))(v44, v30, 1, v46);
  sub_1D6F25608(v44, v43, &qword_1EDF18B08, MEMORY[0x1E69972E8]);
  v47 = [v45 identifier];
  sub_1D726207C();
  v48 = [v45 title];
  sub_1D726207C();
  v49 = [v45 shortExcerpt];
  v50 = sub_1D726207C();
  v52 = v51;

  v53 = HIBYTE(v52) & 0xF;
  if ((v52 & 0x2000000000000000) == 0)
  {
    v53 = v50 & 0xFFFFFFFFFFFFLL;
  }

  v130 = v48;
  if (v53)
  {
    v54 = [*(v0 + 392) shortExcerpt];
    sub_1D726207C();
  }

  v55 = *(v0 + 392);
  (*(*(v0 + 576) + 16))(*(v0 + 584), *(v0 + 592), *(v0 + 568));
  v56 = [v55 thumbnailSmall];
  if (v56)
  {
    v57 = v56;
    v58 = [v56 thumbnailAssetHandle];

    if (v58)
    {
      v59 = [v58 remoteURL];

      sub_1D72584EC();
      v60 = 0;
      goto LABEL_40;
    }

LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v60 = 1;
LABEL_40:
  v61 = *(v0 + 480);
  v62 = *(v0 + 392);
  v63 = sub_1D72585BC();
  v64 = (*(v63 - 8) + 56);
  v132 = *v64;
  (*v64)(v61, v60, 1, v63);
  v65 = [v62 thumbnailSmall];
  v66 = v65;
  if (v65)
  {
    [v65 thumbnailSize];
  }

  v67 = [*(v0 + 392) thumbnailMedium];
  if (v67)
  {
    v68 = v67;
    v69 = [v67 thumbnailAssetHandle];

    if (v69)
    {
      v70 = [v69 remoteURL];

      sub_1D72584EC();
      v71 = 0;
      goto LABEL_46;
    }

LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v71 = 1;
LABEL_46:
  v72 = *(v0 + 392);
  v132(*(v0 + 472), v71, 1, v63);
  v73 = [v72 thumbnailMedium];
  if (v73)
  {
    v74 = v73;
    [v73 thumbnailSize];
  }

  v75 = [*(v0 + 392) thumbnailLarge];
  if (v75)
  {
    v76 = v75;
    v77 = [v75 thumbnailAssetHandle];

    if (v77)
    {
      v78 = [v77 remoteURL];

      sub_1D72584EC();
      v79 = 0;
      goto LABEL_52;
    }

LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v79 = 1;
LABEL_52:
  v80 = *(v0 + 392);
  v132(*(v0 + 464), v79, 1, v63);
  v81 = [v80 thumbnailLarge];
  v82 = v81;
  if (v81)
  {
    [v81 thumbnailSize];
    v84 = v83;
    v86 = v85;

    v128 = v86;
    v129 = v84;
  }

  else
  {
    v128 = 0;
    v129 = 0;
  }

  v87 = [*(v0 + 392) thumbnailExtraLarge];
  if (!v87)
  {

    v91 = 1;
    v90 = v130;
    goto LABEL_59;
  }

  v88 = v87;
  v89 = [v87 thumbnailAssetHandle];

  if (!v89)
  {
    goto LABEL_78;
  }

  v90 = [v89 remoteURL];

  sub_1D72584EC();
  v91 = 0;
LABEL_59:
  v92 = *(v0 + 456);
  v93 = *(v0 + 392);

  v132(v92, v91, 1, v63);
  v94 = [v93 thumbnailExtraLarge];
  v95 = v94;
  if (v94)
  {
    [v94 thumbnailSize];
    v97 = v96;
    v99 = v98;

    v124 = v97;
    v100 = v99;
  }

  else
  {
    v124 = 0;
    v100 = 0;
  }

  v101 = [*(v0 + 392) thumbnailPrimaryColor];
  if (v101)
  {
    v102 = v101;
    v103 = [v101 ne_color];
  }

  else
  {
    v103 = 0;
  }

  v104 = [*(v0 + 392) thumbnailBackgroundColor];
  if (v104)
  {
    v105 = v104;
    v106 = [v104 ne_color];
  }

  else
  {
    v106 = 0;
  }

  v107 = v82 == 0;
  v125 = *(v0 + 576);
  v126 = *(v0 + 568);
  v127 = *(v0 + 592);
  v108 = *(v0 + 536);
  v109 = *(v0 + 520);
  v123 = *(v0 + 512);
  v122 = *(v0 + 496);
  v110 = *(v0 + 392);
  LOBYTE(v121) = v95 == 0;
  v120 = *(v0 + 456);
  LOBYTE(v119) = v107;
  v116 = *(v0 + 464);
  sub_1D725762C();
  v111 = [objc_msgSend(v110 sourceChannel];
  swift_unknownObjectRelease();
  sub_1D726207C();

  v112 = [objc_msgSend(v110 sourceChannel)];
  swift_unknownObjectRelease();
  sub_1D726207C();

  sub_1D725767C();
  v113 = MEMORY[0x1E69972D8];
  sub_1D6F25674(v108, v109, &unk_1EDF18B10, MEMORY[0x1E69972D8]);
  v114 = MEMORY[0x1E69972E8];
  sub_1D6F25674(v123, v122, &qword_1EDF18B08, MEMORY[0x1E69972E8]);
  sub_1D725766C();

  sub_1D6F256E0(v123, &qword_1EDF18B08, v114);
  sub_1D6F256E0(v108, &unk_1EDF18B10, v113);
  (*(v125 + 8))(v127, v126);

  v16 = *(v0 + 8);
LABEL_69:

  v16();
}

uint64_t sub_1D6F25314()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D6F25464()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1D6F255B4()
{
  result = qword_1EC898508;
  if (!qword_1EC898508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898508);
  }

  return result;
}

uint64_t sub_1D6F25608(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1D5B54DC4(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D6F25674(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1D5B54DC4(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D6F256E0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D5B54DC4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t ExternalRecipeFactory.__allocating_init(appConfigManager:tagService:)(uint64_t a1, __int128 *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  sub_1D5B7DDE8(a2, v4 + 24);
  return v4;
}

uint64_t ExternalRecipeFactory.init(appConfigManager:tagService:)(uint64_t a1, __int128 *a2)
{
  *(v2 + 16) = a1;
  sub_1D5B7DDE8(a2, v2 + 24);
  return v2;
}

uint64_t ExternalRecipeFactory.makeExternalRecipe(for:)(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v4 = sub_1D725763C();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  sub_1D5B6C158(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0]);
  v2[10] = swift_task_alloc();
  v5 = swift_task_alloc();
  v2[11] = v5;
  *v5 = v2;
  v5[1] = sub_1D6F25914;

  return sub_1D6F25F44(a2);
}

uint64_t sub_1D6F25914(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (v2)
  {

    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    v10 = *(v6 + 48);
    v11 = swift_task_alloc();
    *(v6 + 96) = v11;
    *v11 = v7;
    v11[1] = sub_1D6F25AC0;
    v12 = *(v6 + 40);
    v13 = *(v6 + 48);

    return ExternalRecipe.init(recipe:suitableForDiet:)(v12, v13, a1, a2);
  }
}

uint64_t sub_1D6F25AC0()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1D6F25C14, 0, 0);
  }
}

uint64_t sub_1D6F25C14()
{
  v1 = v0[10];
  v2 = sub_1D726294C();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  sub_1D726290C();
  v3 = sub_1D72628FC();
  v4 = swift_allocObject();
  v5 = MEMORY[0x1E69E85E0];
  *(v4 + 16) = v3;
  *(v4 + 24) = v5;
  v6 = sub_1D6BD1A50(0, 0, v1, &unk_1D7371CB8, v4);
  v0[13] = v6;
  v7 = swift_task_alloc();
  v0[14] = v7;
  sub_1D6BDC0E8();
  *v7 = v0;
  v7[1] = sub_1D6F25D64;

  return MEMORY[0x1EEE6DA40](v0 + 2, v6, v8);
}

uint64_t sub_1D6F25D64()
{

  return MEMORY[0x1EEE6DFA0](sub_1D6F25E7C, 0, 0);
}

uint64_t sub_1D6F25E7C()
{
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[8];
  sub_1D725764C();
  sub_1D725765C();
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D6F25F44(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D6F25F64, 0, 0);
}

uint64_t sub_1D6F25F64()
{
  swift_getObjectType();
  *(v0 + 48) = FCNewsAppConfigurationManager.fetchConfiguration(cachedOnly:)();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_1D6F26020;

  return MEMORY[0x1EEE44EE0](v0 + 16);
}

uint64_t sub_1D6F26020()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1D6F266E0;
  }

  else
  {

    v2 = sub_1D6F2613C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D6F2613C()
{
  v1 = *(v0 + 16);
  *(v0 + 72) = v1;
  if (([v1 respondsToSelector_] & 1) == 0)
  {
    v3 = MEMORY[0x1E69E7CC0];
    v4 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_21:

LABEL_22:
    swift_unknownObjectRelease();
    v24 = *(v0 + 8);

    return v24(0, 0);
  }

  v2 = [v1 allowedRecipeSuitableForDietTagIDs];
  v3 = sub_1D726267C();

  v4 = *(v3 + 16);
  if (!v4)
  {
    goto LABEL_21;
  }

LABEL_3:
  v5 = [*(v0 + 32) topicTagIDs];
  v6 = sub_1D726267C();

  v7 = sub_1D5B86020(v6);

  v9 = 0;
  v10 = v7 + 56;
  while (1)
  {
    if (v9 >= *(v3 + 16))
    {
      __break(1u);
      return MEMORY[0x1EEE44EE0](v8);
    }

    if (*(v7 + 16))
    {
      break;
    }

LABEL_5:
    if (++v9 == v4)
    {

      goto LABEL_22;
    }
  }

  v11 = (v3 + 32 + 16 * v9);
  v13 = *v11;
  v12 = v11[1];
  sub_1D7264A0C();

  sub_1D72621EC();
  v14 = sub_1D7264A5C();
  v15 = -1 << *(v7 + 32);
  v16 = v14 & ~v15;
  if (((*(v10 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
  {
LABEL_4:

    goto LABEL_5;
  }

  v17 = ~v15;
  while (1)
  {
    v18 = (*(v7 + 48) + 16 * v16);
    v19 = *v18 == v13 && v18[1] == v12;
    if (v19 || (sub_1D72646CC() & 1) != 0)
    {
      break;
    }

    v16 = (v16 + 1) & v17;
    if (((*(v10 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  v20 = *(v0 + 40);

  v21 = v20[7];
  __swift_project_boxed_opaque_existential_1(v20 + 3, v20[6]);
  sub_1D5C3C480();
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1D7273AE0;
  *(v22 + 32) = v13;
  *(v22 + 40) = v12;
  *(v0 + 80) = (*(v21 + 16))();

  v23 = swift_task_alloc();
  *(v0 + 88) = v23;
  *v23 = v0;
  v23[1] = sub_1D6F26480;
  v8 = v0 + 24;

  return MEMORY[0x1EEE44EE0](v8);
}

uint64_t sub_1D6F26480()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1D6F26884;
  }

  else
  {

    v2 = sub_1D6F2659C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D6F2659C()
{
  v1 = *(v0 + 24);
  if (v1 >> 62)
  {
    result = sub_1D7263BFC();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    swift_unknownObjectRelease();
    v5 = 0;
    v7 = 0;
    goto LABEL_9;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1DA6FB460](0, v1);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v1 + 32);
    swift_unknownObjectRetain();
  }

  v4 = [v3 compactDisplayName];
  v5 = sub_1D726207C();
  v7 = v6;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

LABEL_9:
  v8 = *(v0 + 8);

  return v8(v5, v7);
}

uint64_t sub_1D6F266E0()
{

  v1 = *(v0 + 64);
  if (qword_1EC87DC28 != -1)
  {
    swift_once();
  }

  v2 = sub_1D725C42C();
  __swift_project_value_buffer(v2, qword_1EC9BAD30);
  v3 = v1;
  v4 = sub_1D725C3FC();
  v5 = sub_1D7262EBC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1D5B42000, v4, v5, "Failed to load the suitable for diet tag: %{public}@", v6, 0xCu);
    sub_1D5FE45C0(v7);
    MEMORY[0x1DA6FD500](v7, -1, -1);
    MEMORY[0x1DA6FD500](v6, -1, -1);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10(0, 0);
}

uint64_t sub_1D6F26884()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 96);
  if (qword_1EC87DC28 != -1)
  {
    swift_once();
  }

  v2 = sub_1D725C42C();
  __swift_project_value_buffer(v2, qword_1EC9BAD30);
  v3 = v1;
  v4 = sub_1D725C3FC();
  v5 = sub_1D7262EBC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1D5B42000, v4, v5, "Failed to load the suitable for diet tag: %{public}@", v6, 0xCu);
    sub_1D5FE45C0(v7);
    MEMORY[0x1DA6FD500](v7, -1, -1);
    MEMORY[0x1DA6FD500](v6, -1, -1);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10(0, 0);
}

uint64_t sub_1D6F26A30(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_1D726290C();
  *(v1 + 24) = sub_1D72628FC();
  v3 = sub_1D726285C();

  return MEMORY[0x1EEE6DFA0](sub_1D6F26AC8, v3, v2);
}

uint64_t sub_1D6F26AC8()
{
  v1 = *(v0 + 16);

  v2 = [objc_opt_self() mainScreen];
  [v2 nativeBounds];
  v4 = v3;
  v6 = v5;

  *v1 = v4;
  v1[1] = v6;
  v7 = [objc_opt_self() currentDevice];
  v8 = [v7 userInterfaceIdiom];

  v1[2] = v8;
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1D6F26BB4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D5B64684;

  return sub_1D6F26A30(a1);
}

uint64_t ExternalRecipeFactory.deinit()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  return v0;
}

uint64_t ExternalRecipeFactory.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1D6F26CC8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D5B64684;

  return ExternalRecipeFactory.makeExternalRecipe(for:)(a1, a2);
}

uint64_t dispatch thunk of ExternalRecipeFactoryType.makeExternalRecipe(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D5B64684;

  return v11(a1, a2, a3, a4);
}

double FeedPuzzleProgress.progress.getter()
{
  result = 0.0;
  if (v0[8] == 1)
  {
    result = *v0;
  }

  if (!v0[8])
  {
    return *v0;
  }

  return result;
}

uint64_t FeedPuzzleProgress.rawState.getter@<X0>(void *a1@<X8>)
{
  if (*(v1 + 8) && *(v1 + 8) != 1)
  {
    *a1 = 0;
  }

  else
  {
    *a1 = *v1;
  }

  v3 = *MEMORY[0x1E69D7868];
  v4 = sub_1D725D38C();
  v5 = *(*(v4 - 8) + 104);

  return v5(a1, v3, v4);
}

BOOL static FeedPuzzleProgress.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a1 + 8) != 1)
    {
      return v3 == 2 && *&v2 == 0;
    }

    if (v3 != 1)
    {
      return 0;
    }
  }

  else if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == v2;
}

BOOL sub_1D6F27018(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (*(a2 + 8))
    {
      return 0;
    }

    return *a1 == v2;
  }

  if (*(a1 + 8) == 1)
  {
    if (v3 != 1)
    {
      return 0;
    }

    return *a1 == v2;
  }

  return v3 == 2 && *&v2 == 0;
}

uint64_t sub_1D6F2707C@<X0>(void *a1@<X8>)
{
  if (*(v1 + 8) && *(v1 + 8) != 1)
  {
    *a1 = 0;
  }

  else
  {
    *a1 = *v1;
  }

  v3 = *MEMORY[0x1E69D7868];
  v4 = sub_1D725D38C();
  v5 = *(*(v4 - 8) + 104);

  return v5(a1, v3, v4);
}

Swift::Void __swiftcall WebEmbedImageView.prepareForReuse()()
{
  sub_1D6F2AB78(0, &qword_1EDF29E98, sub_1D61CAB60);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v11 - v3;
  sub_1D61CAB60();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_loader;
  swift_beginAccess();
  sub_1D61CC41C(v4, v0 + v6);
  swift_endAccess();
  sub_1D6F27384();
  sub_1D6F2AA9C(v4, &qword_1EDF29E98, sub_1D61CAB60);
  v7 = (v0 + OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_onEmbedInteraction);
  v8 = *(v0 + OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_onEmbedInteraction);
  *v7 = 0;
  v7[1] = 0;
  sub_1D5B74328(v8);
  v9 = (v0 + OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_onEmbedLinkInteraction);
  v10 = *(v0 + OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_onEmbedLinkInteraction);
  *v9 = 0;
  v9[1] = 0;
  sub_1D5B74328(v10);
}

uint64_t WebEmbedImageView.identifier.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_identifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t WebEmbedImageView.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_identifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1D6F27384()
{
  sub_1D6F2AB78(0, &qword_1EDF29E98, sub_1D61CAB60);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v14 - v3;
  sub_1D61CAB60();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_loader;
  swift_beginAccess();
  sub_1D6F2AE40(v0 + v11, v4, &qword_1EDF29E98, sub_1D61CAB60);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_1D6F2AA9C(v4, &qword_1EDF29E98, sub_1D61CAB60);
    v12 = OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_loadingTask;
    if (*(v0 + OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_loadingTask))
    {

      sub_1D726296C();
    }

    *(v0 + v12) = 0;
  }

  else
  {
    sub_1D6F2AC30(v4, v10, sub_1D61CAB60);
    sub_1D6F275B8(v10, *&v10[*(v6 + 48)]);
    return sub_1D6F29FDC(v10, sub_1D61CAB60);
  }
}

uint64_t sub_1D6F275B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for WebEmbedImageRequest();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v9);
  v10 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6F2AB78(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v27 - v13;
  v15 = sub_1D7182BDC(a1);
  if (!v15)
  {
    v15 = 0x8000000000000000;
  }

  v16 = *(v2 + OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_state);
  *(v3 + OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_state) = v15;
  sub_1D6F2A5E8(v15);
  sub_1D6F2A608(v16);
  sub_1D6F28DD4();

  v17 = sub_1D726294C();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1D6F2ABCC(a1, &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D726290C();

  v19 = sub_1D72628FC();
  v20 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v21 = (v8 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  v23 = MEMORY[0x1E69E85E0];
  v22[2] = v19;
  v22[3] = v23;
  v22[4] = a2;
  sub_1D6F2AC30(v10, v22 + v20, type metadata accessor for WebEmbedImageRequest);
  *(v22 + v21) = v18;

  v24 = sub_1D6BD1334(0, 0, v14, &unk_1D7372030, v22);
  v25 = OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_loadingTask;
  if (*(v3 + OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_loadingTask))
  {

    sub_1D726296C();
  }

  *(v3 + v25) = v24;
}

uint64_t sub_1D6F27898()
{
  sub_1D72596FC();
  sub_1D72596DC();
  if (qword_1EDF3C350 != -1)
  {
    swift_once();
  }

  sub_1D72596CC();
}

char *sub_1D6F27930(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_identifier];
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = &v4[OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_onEmbedInteraction];
  *v11 = 0;
  v11[1] = 0;
  v12 = &v4[OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_onEmbedLinkInteraction];
  *v12 = 0;
  v12[1] = 0;
  v4[OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_showSpinner] = 1;
  v13 = OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_loader;
  sub_1D61CAB60();
  (*(*(v14 - 8) + 56))(&v4[v13], 1, 1, v14);
  v15 = OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_imageView;
  *&v4[v15] = [objc_allocWithZone(sub_1D725FBCC()) initWithFrame_];
  v16 = OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_imageIdentifier;
  v17 = sub_1D725895C();
  (*(*(v17 - 8) + 56))(&v4[v16], 1, 1, v17);
  v18 = OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_activityIndicatorView;
  *&v4[v18] = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithFrame_];
  v19 = OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_errorView;
  *&v4[v19] = [objc_allocWithZone(type metadata accessor for WebEmbedErrorView()) initWithFrame_];
  *&v4[OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_debugLabel] = 0;
  *&v4[OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_layoutGuideView] = 0;
  *&v4[OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_debugLoadView] = 0;
  *&v4[OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_loadingTask] = 0;
  *&v4[OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_state] = 0xF000000000000007;
  v42.receiver = v4;
  v42.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v42, sel_initWithFrame_, a1, a2, a3, a4);
  v21 = OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_imageView;
  v22 = *&v20[OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_imageView];
  v23 = v20;
  [v22 setContentMode_];
  [v23 addSubview_];
  v24 = OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_errorView;
  [*&v23[OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_errorView] setHidden_];
  [v23 addSubview_];
  [v23 addSubview_];
  if (qword_1EDF2E840 != -1)
  {
    swift_once();
  }

  if (byte_1EC898510 == 1)
  {
    v25 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
    v26 = [objc_opt_self() systemFontOfSize_];
    [v25 setFont_];

    v27 = objc_opt_self();
    v28 = [v27 whiteColor];
    [v25 setTextColor_];

    v29 = v25;
    v30 = [v27 systemBlueColor];
    v31 = [v30 colorWithAlphaComponent_];

    [v29 setBackgroundColor_];
    [v29 setLineBreakMode_];
    [v23 addSubview_];
    v32 = *&v23[OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_debugLabel];
    *&v23[OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_debugLabel] = v29;
    v33 = v29;

    v34 = [objc_allocWithZone(type metadata accessor for WebEmbedLayoutGuideView()) initWithFrame_];
    [v23 addSubview_];
    v35 = *&v23[OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_layoutGuideView];
    *&v23[OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_layoutGuideView] = v34;
    v36 = v34;

    v37 = objc_allocWithZone(type metadata accessor for WebEmbedDebugView());
    v38 = sub_1D69FC9A0(0);
    [v23 addSubview_];

    v39 = *&v23[OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_debugLoadView];
    *&v23[OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_debugLoadView] = v38;
  }

  v40 = [objc_allocWithZone(MEMORY[0x1E69DD060]) initWithTarget:v23 action:sel_handleTapActionWithGesture_];
  [v23 addGestureRecognizer_];
  [v23 setIsAccessibilityElement_];

  return v23;
}

Swift::Void __swiftcall WebEmbedImageView.layoutSubviews()()
{
  v15.receiver = v0;
  v15.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v15, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_imageView];
  [v0 bounds];
  [v1 setFrame_];
  v2 = *&v0[OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_activityIndicatorView];
  [v0 bounds];
  [v2 setFrame_];
  v3 = *&v0[OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_errorView];
  [v0 bounds];
  [v3 setFrame_];
  v4 = *&v0[OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_debugLabel];
  if (v4)
  {
    v5 = v4;
    [v0 bounds];
    sub_1D726330C();
    [v5 setFrame_];
  }

  v6 = *&v0[OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_debugLoadView];
  if (v6)
  {
    v7 = v6;
    [v0 bounds];
    [v7 setFrame_];
  }

  v8 = *&v0[OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_layoutGuideView];
  if (v8)
  {
    v9 = v8;
    [v0 bounds];
    [v9 setFrame_];
    v10 = &v0[OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_loader];
    swift_beginAccess();
    sub_1D61CAB60();
    if ((*(*(v11 - 8) + 48))(v10, 1, v11))
    {
      v12 = [objc_allocWithZone(MEMORY[0x1E69CE188]) initWithBounds:0.0 contentFrame:0.0 contentSafeAreaFrame:0.0 systemSafeAreaFrame:{0.0, 0.0, 0.0, 0.0, 0.0, 0, 0, 0, 0, 0, 0, 0, 0}];
    }

    else
    {
      v12 = *&v10[*(type metadata accessor for WebEmbedImageRequest() + 20)];
    }

    v13 = *&v9[OBJC_IVAR____TtC8NewsFeed23WebEmbedLayoutGuideView_layoutGuide];
    *&v9[OBJC_IVAR____TtC8NewsFeed23WebEmbedLayoutGuideView_layoutGuide] = v12;
    v14 = v12;

    [v9 setNeedsLayout];
  }
}

void sub_1D6F28164(void *a1)
{
  v3 = sub_1D72585BC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6F2AB78(0, &qword_1EDF29E98, sub_1D61CAB60);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v38 - v10;
  sub_1D61CAB60();
  v13 = v12;
  v14 = *(v12 - 8);
  *&v16 = MEMORY[0x1EEE9AC00](v12, v15).n128_u64[0];
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 locationInView_];
  v21 = *(v1 + OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_state);
  if ((~v21 & 0xF000000000000007) == 0)
  {
LABEL_6:
    v23 = *(v1 + OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_onEmbedInteraction);
    if (v23)
    {

      v23(v1);

      sub_1D5B74328(v23);
    }

    return;
  }

  if (v21 >> 62)
  {
    if (v21 >> 62 == 1)
    {
      v22 = OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_loader;
      swift_beginAccess();
      sub_1D6F2AE40(v1 + v22, v11, &qword_1EDF29E98, sub_1D61CAB60);
      if ((*(v14 + 48))(v11, 1, v13) == 1)
      {
        sub_1D6F2AA9C(v11, &qword_1EDF29E98, sub_1D61CAB60);
      }

      else
      {
        sub_1D6F2AC30(v11, v18, sub_1D61CAB60);
        sub_1D6F275B8(v18, *&v18[*(v13 + 48)]);
        sub_1D6F29FDC(v18, sub_1D61CAB60);
      }

      return;
    }

    goto LABEL_6;
  }

  v24 = v19;
  v25 = v20;
  v26 = *(v21 + OBJC_IVAR____TtC8NewsFeed13WebEmbedImage_inspection);
  sub_1D6F2A5E8(*(v1 + OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_state));
  v27 = [v26 links];
  sub_1D5B5A498(0, &qword_1EDF04548);
  v28 = sub_1D726267C();

  v39 = v4;
  v40 = v3;
  v38 = v7;
  if (v28 >> 62)
  {
LABEL_28:
    v29 = sub_1D7263BFC();
    if (v29)
    {
LABEL_12:
      v30 = 0;
      while (1)
      {
        if ((v28 & 0xC000000000000001) != 0)
        {
          v31 = MEMORY[0x1DA6FB460](v30, v28);
        }

        else
        {
          if (v30 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_27;
          }

          v31 = *(v28 + 8 * v30 + 32);
        }

        v32 = v31;
        v33 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          __break(1u);
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

        [v31 frame];
        v42.x = v24;
        v42.y = v25;
        if (CGRectContainsPoint(v43, v42))
        {
          break;
        }

        ++v30;
        if (v33 == v29)
        {
          goto LABEL_29;
        }
      }

      v34 = *(v1 + OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_onEmbedLinkInteraction);
      if (v34)
      {

        v35 = [v32 href];
        v36 = v38;
        sub_1D72584EC();

        v34(v1, v36);
        sub_1D5B74328(v34);

        sub_1D6F2A608(v21);
        (*(v39 + 8))(v36, v40);
        return;
      }

      goto LABEL_31;
    }
  }

  else
  {
    v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v29)
    {
      goto LABEL_12;
    }
  }

LABEL_29:

  v37 = *(v1 + OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_onEmbedInteraction);
  if (v37)
  {

    v37(v1);
    sub_1D5B74328(v37);
  }

LABEL_31:

  sub_1D6F2A608(v21);
}

uint64_t sub_1D6F28728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[14] = a5;
  v6[15] = a6;
  v6[13] = a4;
  sub_1D6F2ADC8(0, &qword_1EDF04858, MEMORY[0x1E69E87B8]);
  v6[16] = v7;
  v6[17] = *(v7 - 8);
  v6[18] = swift_task_alloc();
  v6[19] = sub_1D726290C();
  v6[20] = sub_1D72628FC();
  v9 = sub_1D726285C();
  v6[21] = v9;
  v6[22] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1D6F28840, v9, v8);
}

uint64_t sub_1D6F28840()
{
  v0[23] = sub_1D7182E20(v0[14]);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_debugLabel);
    if (v3)
    {
      v4 = v3;

      v5 = sub_1D726203C();

      [v4 setText_];

      v2 = v4;
    }
  }

  sub_1D6F2ADC8(0, &qword_1EDF04850, MEMORY[0x1E69E87C8]);
  sub_1D7262A5C();
  swift_beginAccess();
  v6 = sub_1D72628FC();
  v0[24] = v6;
  v7 = swift_task_alloc();
  v0[25] = v7;
  *v7 = v0;
  v7[1] = sub_1D6F28A08;
  v8 = v0[16];
  v9 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DB90](v0 + 11, v6, v9, v8, v0 + 12);
}

uint64_t sub_1D6F28A08()
{
  v2 = *v1;

  v3 = *(v2 + 168);
  v4 = *(v2 + 176);
  if (v0)
  {
    v5 = sub_1D6F28CB8;
  }

  else
  {
    v5 = sub_1D6F28B28;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D6F28B28()
{
  v1 = v0[11];
  if (v1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      v4 = *(Strong + OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_state);
      *(Strong + OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_state) = v1;
      swift_retain_n();
      sub_1D6F2A608(v4);
      sub_1D6F28DD4();
    }

    v5 = sub_1D72628FC();
    v0[24] = v5;
    v6 = swift_task_alloc();
    v0[25] = v6;
    *v6 = v0;
    v6[1] = sub_1D6F28A08;
    v7 = v0[16];
    v8 = MEMORY[0x1E69E85E0];

    return MEMORY[0x1EEE6DB90](v0 + 11, v5, v8, v7, v0 + 12);
  }

  else
  {
    (*(v0[17] + 8))(v0[18], v0[16]);

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_1D6F28CB8()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];

  (*(v2 + 8))(v1, v3);
  v4 = v0[12];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(Strong + OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_state);
    *(Strong + OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_state) = v4 | 0x4000000000000000;
    v8 = v4;
    v9 = v4;
    sub_1D6F2A608(v7);
    sub_1D6F28DD4();
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

void sub_1D6F28DD4()
{
  v1 = v0;
  v2 = sub_1D725895C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D686EBA0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6F2AB78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v88 - v18;
  v23 = MEMORY[0x1EEE9AC00](v20, v21);
  v24 = &v88 - v22;
  v25 = *&v1[OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_state];
  if ((~v25 & 0xF000000000000007) != 0)
  {
    if (v25 >> 62)
    {
      if (v25 >> 62 == 1)
      {
        v28 = &v88 - v22;
        v29 = *&v1[OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_errorView];
        [v29 setHidden_];
        [*&v1[OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_activityIndicatorView] setAlpha_];
        (*(v3 + 56))(v28, 1, 1, v2);
        v30 = OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_imageIdentifier;
        swift_beginAccess();
        sub_1D6F2AAF8(v28, &v1[v30]);
        swift_endAccess();
        sub_1D725FBBC();
        sub_1D5BFDC08();
        v31 = swift_allocObject();
        *(v31 + 16) = xmmword_1D7273AE0;
        v32 = type metadata accessor for WebEmbedErrorView();
      }

      else
      {
        (*(v3 + 56))(&v88 - v22, 1, 1, v2, v23);
        v42 = OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_imageIdentifier;
        swift_beginAccess();
        sub_1D6F2AAF8(v24, &v1[v42]);
        swift_endAccess();
        sub_1D725FBBC();
        [*&v1[OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_errorView] setHidden_];
        if (v1[OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_showSpinner] == 1)
        {
          v43 = *&v1[OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_activityIndicatorView];
          [v43 setAlpha_];
          [v43 startAnimating];
        }

        sub_1D5BFDC08();
        v31 = swift_allocObject();
        *(v31 + 16) = xmmword_1D7273AE0;
        v29 = *&v1[OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_activityIndicatorView];
        v32 = sub_1D5B5A498(0, &qword_1EDF04438);
      }

      *(v31 + 56) = v32;
      *(v31 + 32) = v29;
      v44 = v29;
      v45 = sub_1D726265C();

      [v1 setAccessibilityElements_];

      sub_1D5B5A498(0, &unk_1EDF04400);
      v46 = sub_1D726265C();
      [v1 setAccessibilityCustomActions_];
      goto LABEL_15;
    }

    v95 = &v88 - v22;
    v33 = *&v1[OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_errorView];
    sub_1D6F2A5E8(v25);
    [v33 setHidden_];
    [*&v1[OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_activityIndicatorView] setAlpha_];
    v34 = *(v3 + 16);
    v96 = v25;
    v91 = OBJC_IVAR____TtC8NewsFeed13WebEmbedImage_identifier;
    v93 = v34;
    v94 = v3 + 16;
    v34(v19, v25 + OBJC_IVAR____TtC8NewsFeed13WebEmbedImage_identifier, v2);
    v35 = *(v3 + 56);
    v92 = v3 + 56;
    v90 = v35;
    v35(v19, 0, 1, v2);
    v97 = v2;
    v36 = OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_imageIdentifier;
    swift_beginAccess();
    v37 = *(v8 + 48);
    v38 = MEMORY[0x1E69695A8];
    sub_1D6F2AE40(v19, v11, &qword_1EDF3C398, MEMORY[0x1E69695A8]);
    v89 = v36;
    v39 = &v1[v36];
    v40 = v97;
    v98 = v37;
    sub_1D6F2AE40(v39, &v11[v37], &qword_1EDF3C398, v38);
    v41 = *(v3 + 48);
    if (v41(v11, 1, v40) == 1)
    {
      sub_1D6F2AA9C(v19, &qword_1EDF3C398, MEMORY[0x1E69695A8]);
      if (v41(&v11[v98], 1, v40) == 1)
      {
        sub_1D6F2AA9C(v11, &qword_1EDF3C398, MEMORY[0x1E69695A8]);
        goto LABEL_37;
      }
    }

    else
    {
      sub_1D6F2AE40(v11, v15, &qword_1EDF3C398, MEMORY[0x1E69695A8]);
      if (v41(&v11[v98], 1, v40) != 1)
      {
        (*(v3 + 32))(v6, &v11[v98], v40);
        sub_1D6F2AEB4(&qword_1EDF18A58, MEMORY[0x1E69695A8]);
        v67 = sub_1D7261FBC();
        v68 = *(v3 + 8);
        v68(v6, v40);
        v69 = MEMORY[0x1E69695A8];
        sub_1D6F2AA9C(v19, &qword_1EDF3C398, MEMORY[0x1E69695A8]);
        v68(v15, v40);
        sub_1D6F2AA9C(v11, &qword_1EDF3C398, v69);
        v47 = v95;
        if (v67)
        {
LABEL_37:
          v70 = *&v1[OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_debugLoadView];
          if (v70)
          {
            v46 = v70;
            sub_1D69FC47C(4);
            sub_1D6F2A608(v96);
LABEL_15:

            return;
          }

LABEL_55:
          sub_1D6F2A608(v96);
          return;
        }

LABEL_19:
        v48 = v89;
        v49 = *&v1[OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_debugLoadView];
        if (v49)
        {
          v50 = v49;
          v51 = sub_1D725FBAC();
          if (v51)
          {

            LOBYTE(v51) = 1;
          }

          sub_1D69FC47C(v51);
        }

        v52 = v96;
        v93(v47, v96 + v91, v40);
        v90(v47, 0, 1, v40);
        swift_beginAccess();
        sub_1D6F2AAF8(v47, &v1[v48]);
        swift_endAccess();
        v53 = *(v52 + OBJC_IVAR____TtC8NewsFeed13WebEmbedImage_image);
        sub_1D725FBBC();
        v54 = OBJC_IVAR____TtC8NewsFeed13WebEmbedImage_inspection;
        v55 = [*(v52 + OBJC_IVAR____TtC8NewsFeed13WebEmbedImage_inspection) accessibilityElements];
        sub_1D5B5A498(0, &qword_1EDF043D0);
        v56 = sub_1D726267C();

        if (v56 >> 62)
        {
          v57 = sub_1D7263BFC();
          if (v57)
          {
            goto LABEL_25;
          }
        }

        else
        {
          v57 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v57)
          {
LABEL_25:
            v97 = v54;
            v104 = MEMORY[0x1E69E7CC0];
            sub_1D5B8C520(0, v57 & ~(v57 >> 63), 0);
            if (v57 < 0)
            {
              __break(1u);
              goto LABEL_57;
            }

            v58 = 0;
            v59 = v56 & 0xC000000000000001;
            v60 = v104;
            v98 = v56 & 0xC000000000000001;
            do
            {
              if (v59)
              {
                v61 = MEMORY[0x1DA6FB460](v58, v56);
              }

              else
              {
                v61 = *(v56 + 8 * v58 + 32);
              }

              v62 = v61;
              v63 = [objc_allocWithZone(MEMORY[0x1E69DC608]) initWithAccessibilityContainer_];
              [v63 setIsAccessibilityElement_];
              [v62 frame];
              [v63 setAccessibilityFrameInContainerSpace_];
              v64 = [v62 value];
              if (!v64)
              {
                sub_1D726207C();
                v64 = sub_1D726203C();
                v59 = v98;
              }

              [v63 setAccessibilityLabel_];

              v101 = sub_1D5B5A498(0, &unk_1EDF04460);
              *&aBlock = v63;
              v104 = v60;
              v66 = *(v60 + 16);
              v65 = *(v60 + 24);
              if (v66 >= v65 >> 1)
              {
                sub_1D5B8C520((v65 > 1), v66 + 1, 1);
                v60 = v104;
              }

              ++v58;
              *(v60 + 16) = v66 + 1;
              sub_1D5B7C390(&aBlock, (v60 + 32 * v66 + 32));
            }

            while (v57 != v58);

            v54 = v97;
LABEL_41:
            v71 = sub_1D726265C();

            [v1 setAccessibilityElements_];

            v72 = [*(v96 + v54) links];
            sub_1D5B5A498(0, &qword_1EDF04548);
            v73 = sub_1D726267C();

            if (v73 >> 62)
            {
              v74 = sub_1D7263BFC();
              if (v74)
              {
LABEL_43:
                v104 = MEMORY[0x1E69E7CC0];
                sub_1D7263ECC();
                if ((v74 & 0x8000000000000000) == 0)
                {
                  v75 = 0;
                  v97 = 0x80000001D73F7F00;
                  v98 = v73 & 0xC000000000000001;
                  do
                  {
                    if (v98)
                    {
                      v84 = MEMORY[0x1DA6FB460](v75, v73);
                    }

                    else
                    {
                      v84 = *(v73 + 8 * v75 + 32);
                    }

                    v85 = v84;
                    v86 = [v84 label];
                    if (v86)
                    {
                      v77 = v86;
                      sub_1D726207C();
                    }

                    else
                    {
                      type metadata accessor for Localized();
                      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
                      v77 = [objc_opt_self() bundleForClass_];
                      sub_1D725811C();
                    }

                    ++v75;
                    v78 = swift_allocObject();
                    *(v78 + 16) = v1;
                    *(v78 + 24) = v85;
                    v79 = objc_allocWithZone(MEMORY[0x1E69DC5E8]);
                    v80 = v1;
                    v81 = v85;
                    v82 = sub_1D726203C();

                    v102 = sub_1D6F2AEAC;
                    v103 = v78;
                    *&aBlock = MEMORY[0x1E69E9820];
                    *(&aBlock + 1) = 1107296256;
                    v100 = sub_1D700BAF0;
                    v101 = &block_descriptor_113;
                    v83 = _Block_copy(&aBlock);
                    [v79 initWithName:v82 actionHandler:v83];

                    _Block_release(v83);

                    sub_1D7263E9C();
                    sub_1D7263EDC();
                    sub_1D7263EEC();
                    sub_1D7263EAC();
                  }

                  while (v74 != v75);
                  goto LABEL_54;
                }

LABEL_57:
                __break(1u);
                return;
              }
            }

            else
            {
              v74 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v74)
              {
                goto LABEL_43;
              }
            }

LABEL_54:

            sub_1D5B5A498(0, &unk_1EDF04400);
            v87 = sub_1D726265C();

            [v1 setAccessibilityCustomActions_];

            goto LABEL_55;
          }
        }

        goto LABEL_41;
      }

      sub_1D6F2AA9C(v19, &qword_1EDF3C398, MEMORY[0x1E69695A8]);
      (*(v3 + 8))(v15, v40);
    }

    sub_1D6F29FDC(v11, sub_1D686EBA0);
    v47 = v95;
    goto LABEL_19;
  }

  [*&v1[OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_errorView] setHidden_];
  v26 = sub_1D726265C();
  [v1 setAccessibilityElements_];

  sub_1D5B5A498(0, &unk_1EDF04400);
  v98 = sub_1D726265C();
  [v1 setAccessibilityCustomActions_];
  v27 = v98;
}

BOOL sub_1D6F29CC4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1D72585BC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_onEmbedLinkInteraction);
  if (v10)
  {

    v11 = [a3 href];
    sub_1D72584EC();

    v10(a2, v9);
    sub_1D5B74328(v10);
    (*(v6 + 8))(v9, v5);
  }

  return v10 != 0;
}

id WebEmbedImageView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D6F29F7C()
{
  v1 = (*v0 + OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_identifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1D6F29FDC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D6F2A040()
{
  v1 = OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_loadingTask;
  if (*(v0 + OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_loadingTask))
  {

    sub_1D726296C();
  }

  *(v0 + v1) = 0;
}

uint64_t _s8NewsFeed17WebEmbedImageViewC14viewWillAppearyyF_0()
{
  sub_1D6F2AB78(0, &qword_1EDF29E98, sub_1D61CAB60);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v13 - v3;
  sub_1D61CAB60();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_loader;
  swift_beginAccess();
  sub_1D6F2AE40(v0 + v11, v4, &qword_1EDF29E98, sub_1D61CAB60);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    return sub_1D6F2AA9C(v4, &qword_1EDF29E98, sub_1D61CAB60);
  }

  sub_1D6F2AC30(v4, v10, sub_1D61CAB60);
  if (!*(v0 + OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_loadingTask))
  {
    sub_1D6F275B8(v10, *&v10[*(v6 + 48)]);
  }

  return sub_1D6F29FDC(v10, sub_1D61CAB60);
}

uint64_t sub_1D6F2A2C0()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_loadingTask;
  if (*(v1 + OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_loadingTask))
  {

    sub_1D726296C();
  }

  *(v1 + v2) = 0;
}

uint64_t type metadata accessor for WebEmbedImageView()
{
  result = qword_1EDF2E828;
  if (!qword_1EDF2E828)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D6F2A400()
{
  sub_1D6F2AEB4(&qword_1EC898540, type metadata accessor for WebEmbedImageView);

  JUMPOUT(0x1DA6F6FC0);
}

void sub_1D6F2A474()
{
  sub_1D6F2AB78(319, &qword_1EDF29E98, sub_1D61CAB60);
  if (v0 <= 0x3F)
  {
    sub_1D6F2AB78(319, &qword_1EDF3C398, MEMORY[0x1E69695A8]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

unint64_t get_enum_tag_for_layout_string_8NewsFeed22WebEmbedImageViewState33_C6E694D02EAB78EE680A81592B46037ALLO(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

unint64_t sub_1D6F2A5E8(unint64_t result)
{
  if (result >> 62 == 1)
  {
    return (result & 0x3FFFFFFFFFFFFFFFLL);
  }

  if (!(result >> 62))
  {
  }

  return result;
}

void sub_1D6F2A608(unint64_t a1)
{
  if ((~a1 & 0xF000000000000007) != 0)
  {
    sub_1D6F2A61C(a1);
  }
}

void sub_1D6F2A61C(unint64_t a1)
{
  if (a1 >> 62 == 1)
  {
  }

  else if (!(a1 >> 62))
  {
  }
}

id sub_1D6F2A63C()
{
  v1 = v0;
  sub_1D6F2AB78(0, &qword_1EDF29E98, sub_1D61CAB60);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v19 - v4;
  sub_1D6F2AB78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v19 - v8;
  sub_1D725FBBC();
  v10 = sub_1D725895C();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_imageIdentifier;
  swift_beginAccess();
  sub_1D6F2AAF8(v9, v1 + v11);
  swift_endAccess();
  sub_1D61CAB60();
  (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  v13 = OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_loader;
  swift_beginAccess();
  sub_1D61CC41C(v5, v1 + v13);
  swift_endAccess();
  sub_1D6F27384();
  sub_1D6F2AA9C(v5, &qword_1EDF29E98, sub_1D61CAB60);
  v14 = (v1 + OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_onEmbedInteraction);
  v15 = *(v1 + OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_onEmbedInteraction);
  *v14 = 0;
  v14[1] = 0;
  sub_1D5B74328(v15);
  v16 = (v1 + OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_onEmbedLinkInteraction);
  v17 = *(v1 + OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_onEmbedLinkInteraction);
  *v16 = 0;
  v16[1] = 0;
  sub_1D5B74328(v17);
  result = *(v1 + OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_debugLabel);
  if (result)
  {
    return [result setText_];
  }

  return result;
}

void sub_1D6F2A890()
{
  v1 = (v0 + OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_identifier);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v2 = (v0 + OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_onEmbedInteraction);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_onEmbedLinkInteraction);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_showSpinner) = 1;
  v4 = OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_loader;
  sub_1D61CAB60();
  (*(*(v5 - 8) + 56))(v0 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_imageView;
  *(v0 + v6) = [objc_allocWithZone(sub_1D725FBCC()) initWithFrame_];
  v7 = OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_imageIdentifier;
  v8 = sub_1D725895C();
  (*(*(v8 - 8) + 56))(v0 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_activityIndicatorView;
  *(v0 + v9) = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithFrame_];
  v10 = OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_errorView;
  *(v0 + v10) = [objc_allocWithZone(type metadata accessor for WebEmbedErrorView()) initWithFrame_];
  *(v0 + OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_debugLabel) = 0;
  *(v0 + OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_layoutGuideView) = 0;
  *(v0 + OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_debugLoadView) = 0;
  *(v0 + OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_loadingTask) = 0;
  *(v0 + OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_state) = 0xF000000000000007;
  sub_1D726402C();
  __break(1u);
}

uint64_t sub_1D6F2AA9C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D6F2AB78(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D6F2AAF8(uint64_t a1, uint64_t a2)
{
  sub_1D6F2AB78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1D6F2AB78(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D6F2ABCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebEmbedImageRequest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6F2AC30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6F2AC98(uint64_t a1)
{
  v4 = *(type metadata accessor for WebEmbedImageRequest() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D5B64684;

  return sub_1D6F28728(a1, v6, v7, v8, v1 + v5, v9);
}

void sub_1D6F2ADC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    v6 = type metadata accessor for WebEmbedImage();
    v7 = sub_1D5BA6EF4();
    v8 = a3(a1, v6, v7, MEMORY[0x1E69E7288]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1D6F2AE40(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1D6F2AB78(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D6F2AEB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t LikingCommandContext.init(headline:feedItemIdentifier:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t LikingCommandContext.feedItemIdentifier.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t LikingCompleteCommandState.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

uint64_t static SwipeAction.like(context:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v41 = sub_1D725CC8C();
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41, v3);
  v40 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D725CC9C();
  v36 = *(v5 - 8);
  v37 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v38 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B65D94(0, &qword_1EDF170F8, MEMORY[0x1E69E6370], MEMORY[0x1E69E6158], MEMORY[0x1E69D7AF0]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  sub_1D6F2CDB0(0, &unk_1EDF17190, MEMORY[0x1E69D7AE0]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  sub_1D6F2CDB0(0, &unk_1EDF171B8, MEMORY[0x1E69D7AD8]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v14 = *a1;
  v15 = a1[1];
  v16 = a1[2];
  if (qword_1EDF3AE68 != -1)
  {
    swift_once();
  }

  v17 = qword_1EDF3AE70;
  v47 = v14;
  v48 = v15;
  v49 = v16;
  sub_1D5C0B9F0();

  v35[1] = v17;

  swift_unknownObjectRetain();
  v18._countAndFlagsBits = 0x433830434335;
  v18._object = 0xE600000000000000;
  UIColor.init(hex:)(v18);
  sub_1D725DAAC();
  if (qword_1EDF05C58 != -1)
  {
    swift_once();
  }

  v19 = qword_1EDF05C60;
  v20 = objc_opt_self();
  v21 = [v20 whiteColor];
  _s8NewsFeed6ImagesC8template5image4withSo7UIImageCAH_So7UIColorCtFZ_0(v19, v21);

  if (qword_1EDF05B90 != -1)
  {
    swift_once();
  }

  v22 = qword_1EDF05B98;
  v23 = [v20 whiteColor];
  _s8NewsFeed6ImagesC8template5image4withSo7UIImageCAH_So7UIColorCtFZ_0(v22, v23);

  sub_1D725DACC();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v25 = objc_opt_self();
  v26 = [v25 bundleForClass_];
  v27 = sub_1D725811C();
  v29 = v28;

  v45 = v27;
  v46 = v29;
  v30 = [v25 bundleForClass_];
  v31 = sub_1D725811C();
  v33 = v32;

  v43 = v31;
  v44 = v33;
  sub_1D725DB0C();
  (*(v36 + 104))(v38, *MEMORY[0x1E69D7628], v37);
  (*(v39 + 104))(v40, *MEMORY[0x1E69D7620], v41);
  return sub_1D725CCBC();
}

uint64_t static SwipeAction.dislike(context:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v41 = sub_1D725CC8C();
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41, v3);
  v40 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D725CC9C();
  v36 = *(v5 - 8);
  v37 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v38 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B65D94(0, &qword_1EDF170F8, MEMORY[0x1E69E6370], MEMORY[0x1E69E6158], MEMORY[0x1E69D7AF0]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  sub_1D6F2CDB0(0, &unk_1EDF17190, MEMORY[0x1E69D7AE0]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  sub_1D6F2CDB0(0, &unk_1EDF171B8, MEMORY[0x1E69D7AD8]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v14 = *a1;
  v15 = a1[1];
  v16 = a1[2];
  if (qword_1EDF3AE50 != -1)
  {
    swift_once();
  }

  v17 = qword_1EDF3AE58;
  v47 = v14;
  v48 = v15;
  v49 = v16;
  v18 = objc_opt_self();

  v35[1] = v17;

  swift_unknownObjectRetain();
  v19 = [v18 systemRedColor];
  sub_1D725DAAC();
  if (qword_1EDF05C68 != -1)
  {
    swift_once();
  }

  v20 = qword_1EDF05C70;
  v21 = [v18 whiteColor];
  _s8NewsFeed6ImagesC8template5image4withSo7UIImageCAH_So7UIColorCtFZ_0(v20, v21);

  if (qword_1EDF05BA0 != -1)
  {
    swift_once();
  }

  v22 = qword_1EDF05BA8;
  v23 = [v18 whiteColor];
  _s8NewsFeed6ImagesC8template5image4withSo7UIImageCAH_So7UIColorCtFZ_0(v22, v23);

  sub_1D725DACC();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v25 = objc_opt_self();
  v26 = [v25 bundleForClass_];
  v27 = sub_1D725811C();
  v29 = v28;

  v45 = v27;
  v46 = v29;
  v30 = [v25 bundleForClass_];
  v31 = sub_1D725811C();
  v33 = v32;

  v43 = v31;
  v44 = v33;
  sub_1D725DB0C();
  (*(v36 + 104))(v38, *MEMORY[0x1E69D7628], v37);
  (*(v39 + 104))(v40, *MEMORY[0x1E69D7620], v41);
  return sub_1D725CCBC();
}

uint64_t sub_1D6F2BB60(uint64_t a1, void *a2)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  swift_unknownObjectRetain();
  return sub_1D725D15C();
}

uint64_t _s5TeaUI15ContextMenuItemC8NewsFeedE4like7contextAcD013LikingCommandC0V_tFZ_0(uint64_t *a1)
{
  sub_1D6F2CDB0(0, &qword_1EDF17088, MEMORY[0x1E69D7C80]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v24 = &v20 - v4;
  sub_1D6F2CDB0(0, &unk_1EDF17190, MEMORY[0x1E69D7AE0]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  sub_1D6F2CDB0(0, &unk_1EDF17160, MEMORY[0x1E69D7AE8]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v9 = *a1;
  v21 = a1[1];
  v10 = a1[2];
  if (qword_1EDF3AE68 != -1)
  {
    swift_once();
  }

  v11 = qword_1EDF3AE70;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = objc_opt_self();
  v20 = v10;

  v23 = v11;

  v22 = v9;
  swift_unknownObjectRetain();
  v14 = [v13 bundleForClass_];
  sub_1D725811C();

  v15 = [v13 bundleForClass_];
  sub_1D725811C();

  sub_1D725DAEC();
  if (qword_1EDF05C58 != -1)
  {
    swift_once();
  }

  v16 = qword_1EDF05B90;
  v17 = qword_1EDF05C60;
  if (v16 != -1)
  {
    swift_once();
  }

  v18 = qword_1EDF05B98;
  sub_1D725DACC();
  sub_1D725DF0C();
  v25 = v22;
  v26 = v21;
  v27 = v20;
  sub_1D725D3DC();
  swift_allocObject();
  return sub_1D725D3BC();
}

uint64_t _s5TeaUI15ContextMenuItemC8NewsFeedE7dislike7contextAcD013LikingCommandC0V_tFZ_0(uint64_t *a1)
{
  sub_1D6F2CDB0(0, &qword_1EDF17088, MEMORY[0x1E69D7C80]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v24 = &v20 - v4;
  sub_1D6F2CDB0(0, &unk_1EDF17190, MEMORY[0x1E69D7AE0]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  sub_1D6F2CDB0(0, &unk_1EDF17160, MEMORY[0x1E69D7AE8]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v9 = *a1;
  v21 = a1[1];
  v10 = a1[2];
  if (qword_1EDF3AE50 != -1)
  {
    swift_once();
  }

  v11 = qword_1EDF3AE58;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = objc_opt_self();
  v20 = v10;

  v23 = v11;

  v22 = v9;
  swift_unknownObjectRetain();
  v14 = [v13 bundleForClass_];
  sub_1D725811C();

  v15 = [v13 bundleForClass_];
  sub_1D725811C();

  sub_1D725DAEC();
  if (qword_1EDF05C68 != -1)
  {
    swift_once();
  }

  v16 = qword_1EDF05BA0;
  v17 = qword_1EDF05C70;
  if (v16 != -1)
  {
    swift_once();
  }

  v18 = qword_1EDF05BA8;
  sub_1D725DACC();
  sub_1D725DF0C();
  v25 = v22;
  v26 = v21;
  v27 = v20;
  sub_1D725D3DC();
  swift_allocObject();
  return sub_1D725D3BC();
}

uint64_t _s5TeaUI15SharingActivityC8NewsFeedE4like7contextAcD20LikingCommandContextV_tFZ_0(uint64_t *a1)
{
  v32 = sub_1D725DFEC();
  MEMORY[0x1EEE9AC00](v32, v2);
  MEMORY[0x1EEE9AC00](v3, v4);
  sub_1D6F2CD48();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v27[0] = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B65D94(0, &qword_1EDF170F8, MEMORY[0x1E69E6370], MEMORY[0x1E69E6158], MEMORY[0x1E69D7AF0]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v10 = *a1;
  v29 = a1[1];
  v11 = a1[2];
  if (qword_1EDF3AE68 != -1)
  {
    v26 = a1[2];
    swift_once();
    v11 = v26;
  }

  v12 = qword_1EDF3AE70;
  v28 = v11;

  v31 = v12;

  v30 = v10;
  swift_unknownObjectRetain();
  v27[1] = sub_1D726203C();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = objc_opt_self();
  v15 = [v14 bundleForClass_];
  v16 = sub_1D725811C();
  v18 = v17;

  v33 = v16;
  v34 = v18;
  v19 = [v14 bundleForClass_];
  v20 = sub_1D725811C();
  v22 = v21;

  v36 = v20;
  v37 = v22;
  sub_1D725DB0C();
  if (qword_1EDF05C58 != -1)
  {
    swift_once();
  }

  v23 = qword_1EDF05C60;
  sub_1D725DFDC();
  if (qword_1EDF05B90 != -1)
  {
    swift_once();
  }

  v24 = qword_1EDF05B98;
  sub_1D725DFDC();
  sub_1D725DB0C();
  v33 = v30;
  v34 = v29;
  v35 = v28;
  sub_1D725D5DC();
  swift_allocObject();
  return sub_1D725D5BC();
}

uint64_t _s5TeaUI15SharingActivityC8NewsFeedE7dislike7contextAcD20LikingCommandContextV_tFZ_0(uint64_t *a1)
{
  v32 = sub_1D725DFEC();
  MEMORY[0x1EEE9AC00](v32, v2);
  MEMORY[0x1EEE9AC00](v3, v4);
  sub_1D6F2CD48();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v27[0] = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B65D94(0, &qword_1EDF170F8, MEMORY[0x1E69E6370], MEMORY[0x1E69E6158], MEMORY[0x1E69D7AF0]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v10 = *a1;
  v29 = a1[1];
  v11 = a1[2];
  if (qword_1EDF3AE50 != -1)
  {
    v26 = a1[2];
    swift_once();
    v11 = v26;
  }

  v12 = qword_1EDF3AE58;
  v28 = v11;

  v31 = v12;

  v30 = v10;
  swift_unknownObjectRetain();
  v27[1] = sub_1D726203C();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = objc_opt_self();
  v15 = [v14 bundleForClass_];
  v16 = sub_1D725811C();
  v18 = v17;

  v33 = v16;
  v34 = v18;
  v19 = [v14 bundleForClass_];
  v20 = sub_1D725811C();
  v22 = v21;

  v36 = v20;
  v37 = v22;
  sub_1D725DB0C();
  if (qword_1EDF05C68 != -1)
  {
    swift_once();
  }

  v23 = qword_1EDF05C70;
  sub_1D725DFDC();
  if (qword_1EDF05BA0 != -1)
  {
    swift_once();
  }

  v24 = qword_1EDF05BA8;
  sub_1D725DFDC();
  sub_1D725DB0C();
  v33 = v30;
  v34 = v29;
  v35 = v28;
  sub_1D725D5DC();
  swift_allocObject();
  return sub_1D725D5BC();
}

unint64_t sub_1D6F2CCC4()
{
  result = qword_1EC898548;
  if (!qword_1EC898548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898548);
  }

  return result;
}

void sub_1D6F2CD48()
{
  if (!qword_1EC898550)
  {
    sub_1D725DFEC();
    v0 = sub_1D725DB1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC898550);
    }
  }
}

void sub_1D6F2CDB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6370], MEMORY[0x1E69D8888]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t FormatFrameExpression.targetIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FormatFrameExpression.logic.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v5 = *(v1 + 40);
  *(a1 + 24) = v5;
  return sub_1D6057D14(v2, v3, v4, v5);
}

uint64_t sub_1D6F2CE5C(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1D6E8DD40(*a3, *(a3 + 8));
  sub_1D5EB9994();
  sub_1D725A56C();
  sub_1D7259E1C();

  if (v18)
  {
    v6 = 0;
  }

  else
  {
    v7 = v14;
    v8 = v15;
    v9 = v16;
    v10 = v17;
    v11 = *(a3 + 40);
    if (v11 >> 6)
    {
      if (v11 >> 6 != 1)
      {
        v6 = sub_1D694958C(v14, v15, v16, v17, a2, a1);
        return v6 & 1;
      }

      Height = CGRectGetHeight(*&v7);
    }

    else
    {
      Height = CGRectGetWidth(*&v7);
    }

    v6 = sub_1D6CAC0A4(Height);
  }

  return v6 & 1;
}

uint64_t _s8NewsFeed21FormatFrameExpressionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) || (v10 = 0, (sub_1D72646CC() & 1) != 0))
  {
    v16 = v2;
    v17 = v3;
    v18 = v4;
    v19 = v5;
    v12 = v6;
    v13 = v7;
    v14 = v8;
    v15 = v9;
    sub_1D6057D14(v2, v3, v4, v5);
    sub_1D6057D14(v6, v7, v8, v9);
    v10 = _s8NewsFeed26FormatFrameExpressionLogicO2eeoiySbAC_ACtFZ_0(&v16, &v12);
    sub_1D6057D74(v12, v13, v14, v15);
    sub_1D6057D74(v16, v17, v18, v19);
  }

  return v10 & 1;
}

unint64_t sub_1D6F2D0B0(uint64_t a1)
{
  result = sub_1D6F2D0D8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6F2D0D8()
{
  result = qword_1EC898558;
  if (!qword_1EC898558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898558);
  }

  return result;
}

unint64_t sub_1D6F2D12C(void *a1)
{
  a1[1] = sub_1D6687154();
  a1[2] = sub_1D66FECBC();
  result = sub_1D6F2D164();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6F2D164()
{
  result = qword_1EC898560;
  if (!qword_1EC898560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898560);
  }

  return result;
}

uint64_t sub_1D6F2D1D8(void *a1)
{
  v3 = v1;
  sub_1D6F30404(0, &qword_1EC898608, sub_1D6F303B0, &type metadata for A18_V11.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6F303B0();
  sub_1D7264B5C();
  v11 = *(v3 + 16);
  v13[0] = *v3;
  v13[1] = v11;
  v14 = 0;
  type metadata accessor for CGRect(0);
  sub_1D6F2FD80(&qword_1EC8801E8, type metadata accessor for CGRect);
  sub_1D726443C();
  if (!v2)
  {
    *&v13[0] = *(v3 + 32);
    v14 = 1;
    sub_1D5B49714(0, &qword_1EDF1B268);
    sub_1D5BD47D0(&qword_1EC8806A0, sub_1D5C0B904);
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D6F2D420(uint64_t a1)
{
  v2 = sub_1D6F303B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6F2D45C(uint64_t a1)
{
  v2 = sub_1D6F303B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D6F2D498@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D6F30110(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_1D6F2D4F8()
{
  sub_1D6F2FE44();

  return sub_1D725A24C();
}

uint64_t sub_1D6F2D574@<X0>(uint64_t *a1@<X8>)
{
  sub_1D5BEDFF4();
  swift_allocObject();
  v2 = sub_1D725996C();
  sub_1D6F30404(0, &qword_1EDF3BFE8, sub_1D5BE14C0, &type metadata for HeadlineViewLayout.Attributes, MEMORY[0x1E69D7198]);
  swift_allocObject();
  result = sub_1D7259F9C();
  *a1 = v2;
  a1[1] = result;
  return result;
}

uint64_t sub_1D6F2D630@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v86 = a2;
  v75 = a3;
  v7 = type metadata accessor for FeedHeadline(0);
  v95 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v87 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v89 = &v75 - v12;
  v13 = sub_1D725895C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for GroupLayoutContext();
  v82 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83, v18);
  v84 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v75 - v22;
  v79 = &v75 - v22;
  v88 = type metadata accessor for GroupLayoutBindingContext();
  v80 = *(v88 - 1);
  MEMORY[0x1EEE9AC00](v88, v24);
  v26 = &v75 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *v5;
  v28 = *(v5 + 1);
  LOBYTE(v5) = v5[16];
  v85 = a1;
  sub_1D5BE3ED8(a1, v26, type metadata accessor for GroupLayoutBindingContext);
  v81 = type metadata accessor for GroupLayoutContext;
  sub_1D5BE3ED8(v86, v23, type metadata accessor for GroupLayoutContext);
  sub_1D725894C();
  v78 = sub_1D725893C();
  v77 = v29;
  (*(v14 + 8))(v17, v13);
  v93 = &type metadata for A18_V11;
  v30 = sub_1D5ECE580();
  v94 = v30;
  LOBYTE(v91) = v27;
  *(&v91 + 1) = v28;
  v92 = v5;
  type metadata accessor for GroupLayoutKey();
  v31 = swift_allocObject();
  sub_1D5BEE8A0(v28, v5);
  v90[0] = sub_1D7264C5C();
  v90[1] = v32;
  v90[9] = 95;
  v90[10] = 0xE100000000000000;
  v90[7] = 45;
  v90[8] = 0xE100000000000000;
  sub_1D5BF4D9C();
  v33 = sub_1D7263A6C();
  v35 = v34;
  v36 = v31;

  *(v31 + 16) = v33;
  *(v31 + 24) = v35;
  v37 = (v31 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_identifier);
  v38 = v77;
  *v37 = v78;
  v37[1] = v38;
  sub_1D5B68374(&v91, v31 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_factory);
  v39 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings;
  v40 = v26;
  v41 = v84;
  sub_1D5BDA904(v40, v31 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings, type metadata accessor for GroupLayoutBindingContext);
  (*(v80 + 56))(v31 + v39, 0, 1, v88);
  v42 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext;
  sub_1D5BDA904(v79, v31 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext, type metadata accessor for GroupLayoutContext);
  (*(v82 + 56))(v31 + v42, 0, 1, v83);
  __swift_destroy_boxed_opaque_existential_1(&v91);
  v93 = &type metadata for A18_V11;
  v94 = v30;
  LOBYTE(v91) = v27;
  *(&v91 + 1) = v28;
  v92 = v5;
  sub_1D5BE3ED8(v86, v41, v81);
  sub_1D5BD39E8(0, qword_1EDF39B38, type metadata accessor for FeedHeadline, type metadata accessor for FeedItemSorter);
  inited = swift_initStackObject();
  v44 = MEMORY[0x1E69E7CC0];
  v86 = inited;
  *(inited + 16) = MEMORY[0x1E69E7CC0];
  v45 = (inited + 16);
  swift_beginAccess();
  sub_1D5BEE8A0(v28, v5);
  v46 = sub_1D5C0F8FC(0, 1, 1, v44);
  v48 = v46[2];
  v47 = v46[3];
  v49 = v48 + 1;
  if (v48 >= v47 >> 1)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v46[2] = v49;
    v50 = &v46[2 * v48];
    v50[4] = sub_1D63106DC;
    v50[5] = 0;
    *v45 = v46;
    swift_endAccess();
    if (!*(*&v85[v88[14]] + 16) || (sub_1D5BCF83C(0x6461654864656546, 0xEC000000656E696CLL, 0, 0), (v51 & 1) == 0) || (v52 = , v45 = sub_1D5C14D80(v52), , !v45))
    {
      v59 = v76;
      if (!qword_1F5113E98)
      {

        v64 = MEMORY[0x1E69E7CC0];
        goto LABEL_27;
      }

      v90[0] = &unk_1F5113E78;
      v4 = v76;
      sub_1D5E239F4(v90);
      if (v59)
      {
        goto LABEL_36;
      }

      v60 = v90[0];
      if (*(v90[0] + 2))
      {
LABEL_17:
        v61 = *(v60 + 4);

        sub_1D5ED8048();
        swift_allocError();
        strcpy(v62, "FeedHeadline");
        v62[13] = 0;
        *(v62 + 7) = -5120;
        *(v62 + 2) = 0;
        *(v62 + 3) = 0;
        *(v62 + 4) = 0;
        *(v62 + 5) = v61;
        *(v62 + 6) = 0;
        *(v62 + 7) = 0;
        v62[64] = 0;
        swift_willThrow();
        swift_setDeallocating();

        sub_1D5BE7C8C(v41, type metadata accessor for GroupLayoutContext);
        return __swift_destroy_boxed_opaque_existential_1(&v91);
      }

      __break(1u);
      goto LABEL_34;
    }

    v83 = v36;
    v41 = v45[2];
    if (!v41)
    {
      break;
    }

    v36 = 0;
    v48 = MEMORY[0x1E69E7CC0];
    v49 = v87;
    while (1)
    {
      v47 = v45[2];
      if (v36 >= v47)
      {
        break;
      }

      v53 = (*(v95 + 80) + 32) & ~*(v95 + 80);
      v54 = *(v95 + 72);
      v55 = v89;
      sub_1D5BE3ED8(v45 + v53 + v54 * v36, v89, type metadata accessor for FeedHeadline);
      sub_1D5BDA904(v55, v49, type metadata accessor for FeedHeadline);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v90[0] = v48;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D5C0F91C(0, *(v48 + 16) + 1, 1);
        v49 = v87;
        v48 = v90[0];
      }

      v58 = *(v48 + 16);
      v57 = *(v48 + 24);
      v46 = (v58 + 1);
      if (v58 >= v57 >> 1)
      {
        sub_1D5C0F91C(v57 > 1, v58 + 1, 1);
        v49 = v87;
        v48 = v90[0];
      }

      ++v36;
      *(v48 + 16) = v46;
      sub_1D5BDA904(v49, v48 + v53 + v58 * v54, type metadata accessor for FeedHeadline);
      if (v41 == v36)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_32:
    v46 = sub_1D5C0F8FC((v47 > 1), v49, 1, v46);
  }

  v48 = MEMORY[0x1E69E7CC0];
LABEL_20:
  v65 = v85;
  if ((*v85 & 1) == 0)
  {

    v66 = sub_1D62F071C(v48);

    v48 = v66;
  }

  v67 = *&v65[v88[18]];
  v68 = *&v65[v88[19]];
  if (__OFSUB__(v67, v68))
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v69 = sub_1D5C0FAD4(v48, v67 - v68);
  v64 = sub_1D5C11E10(&unk_1F5113E78, v69, v45);

  if (v64)
  {

    goto LABEL_26;
  }

  v64 = sub_1D5C11E10(&unk_1F5113E78, v48, v45);

  if (!v64)
  {
    v90[0] = &unk_1F5113E78;
    v4 = v76;
    sub_1D5E239F4(v90);
    if (v4)
    {
LABEL_36:

      __break(1u);
      return result;
    }

    v60 = v90[0];
    v41 = v84;
    if (*(v90[0] + 2))
    {
      goto LABEL_17;
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

LABEL_26:
  strcpy(v90, "FeedHeadline");
  BYTE5(v90[1]) = 0;
  HIWORD(v90[1]) = -5120;
  v90[2] = 0;
  v90[3] = 0;

  v71 = sub_1D5C107C4(v70);

  sub_1D5BDACA8(v90, v71);
  swift_setDeallocating();

  v41 = v84;
  v36 = v83;
LABEL_27:
  v72 = type metadata accessor for A18_V11.Bound();
  v73 = v75;
  v75[3] = v72;
  v73[4] = sub_1D6F2FD80(&qword_1EC898578, type metadata accessor for A18_V11.Bound);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v73);
  *boxed_opaque_existential_1 = v36;
  sub_1D5B63F14(&v91, (boxed_opaque_existential_1 + 1));
  result = sub_1D5BDA904(v41, boxed_opaque_existential_1 + *(v72 + 24), type metadata accessor for GroupLayoutContext);
  *(boxed_opaque_existential_1 + *(v72 + 28)) = v64;
  return result;
}

uint64_t sub_1D6F2E164@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v34 = a1;
  v3 = sub_1D725A36C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for A18_V11.Bound();
  v9 = v1 + *(v8 + 24);
  v10 = type metadata accessor for GroupLayoutContext();
  v11 = *(*(v9 + *(v10 + 40)) + 16);
  v12 = *(v9 + *(v10 + 32));
  sub_1D5B68374(v11 + 16, v39);
  sub_1D5B68374(v11 + 56, v38);
  v13 = v12 * *(v11 + 96);
  type metadata accessor for FeedLayoutStylerFactory();
  inited = swift_initStackObject();
  sub_1D5B63F14(v39, inited + 16);
  sub_1D5B63F14(v38, inited + 56);
  *(inited + 96) = v13;
  v37[0] = 2;
  FeedLayoutStylerFactory.styler(withHeading:)(v37, v41);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1(inited + 16);
  __swift_destroy_boxed_opaque_existential_1(inited + 56);
  v15 = *(v2 + *(v8 + 28));
  v36[2] = v2;
  v36[3] = v41;
  v16 = sub_1D5ECA650(sub_1D6F2FDC8, v36, v15);
  *&v39[0] = v16;
  sub_1D5BD39E8(0, &qword_1EDF1B250, type metadata accessor for HeadlineViewLayout.Context, MEMORY[0x1E69E62F8]);
  v18 = v17;
  sub_1D6C1AAF0(&qword_1EC880610);
  v33 = v18;
  v19 = sub_1D7262C1C();
  v20 = *MEMORY[0x1E69D7130];
  v21 = sub_1D7259D1C();
  (*(*(v21 - 8) + 104))(v7, v20, v21);
  (*(v4 + 104))(v7, *MEMORY[0x1E69D7370], v3);
  v35 = v19;
  sub_1D6F2FEEC(0, &qword_1EC898598, MEMORY[0x1E69D73B8]);
  swift_allocObject();
  sub_1D725A4CC();

  sub_1D725A4DC();
  v22 = v40;
  sub_1D5B49714(0, &qword_1EDF1B268);
  sub_1D6C1AAF0(&qword_1EDF1B248);
  v23 = sub_1D5ED1E1C(&qword_1EDF1B260, &qword_1EDF1B268);
  v31 = v39[1];
  v32 = v39[0];
  *&v39[0] = v16;
  *&v38[0] = v22;
  MEMORY[0x1EEE9AC00](v23, v24);

  v25 = sub_1D725C00C();

  v26 = v34;
  *v34 = 0;
  v27 = v32;
  *(v26 + 24) = v31;
  *(v26 + 8) = v27;
  *&v39[0] = v25;
  sub_1D5B49714(0, &qword_1EDF1B4C8);
  sub_1D5ED1E1C(&qword_1EDF1B4C0, &qword_1EDF1B4C8);
  sub_1D5BDEFF8();
  v28 = sub_1D72623BC();

  v29 = MEMORY[0x1E69E7CC0];
  *(v26 + 5) = v28;
  *(v26 + 6) = v29;
  return __swift_destroy_boxed_opaque_existential_1(v41);
}

uint64_t sub_1D6F2E634@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v6 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1D5BE3ED8(a1, v9, type metadata accessor for FeedHeadline);
  sub_1D5B68374(a2, v13);

  return HeadlineViewLayout.Context.init(key:model:styler:)(v10, v9, v13, a3);
}

uint64_t sub_1D6F2E70C(uint64_t a1, uint64_t a2)
{
  sub_1D6F30404(0, &qword_1EC8985B0, sub_1D6F2FDF0, &type metadata for A18_V11.Layout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v13[-v8];
  v15 = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = 18;
  *v9 = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D7490], v5);
  v14 = a2;
  v11 = MEMORY[0x1E69D7150];
  sub_1D6F2FEEC(0, &qword_1EC8985B8, MEMORY[0x1E69D7150]);
  sub_1D6F2FEA8(&qword_1EC8985C0, &qword_1EC8985B8, v11);
  sub_1D7259A2C();
  return (*(v6 + 8))(v9, v5);
}

void sub_1D6F2E8F8(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  sub_1D6F30404(0, &qword_1EC8985B0, sub_1D6F2FDF0, &type metadata for A18_V11.Layout, MEMORY[0x1E69D74B0]);
  v25 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v24 = (&v18 - v6);
  v7 = *(a2 + 16);
  if (v7)
  {
    v8 = a2 + 32;
    v23 = *MEMORY[0x1E69D6F50];
    v22 = *MEMORY[0x1E69D73C0];
    v20 = (v5 + 8);
    v21 = (v5 + 104);
    v19 = *MEMORY[0x1E69D74A8];
    do
    {
      if (*(*v8 + 16) == 3)
      {
        v30 = v29;
        v9 = sub_1D725994C();
        v10 = swift_allocBox();
        (*(*(v9 - 8) + 104))(v11, v23, v9);
        v12 = v24;
        v13 = v25;
        *v24 = v10;
        v27 = *v21;
        v27(v12, v22, v13);
        v14 = MEMORY[0x1E69D6F38];
        sub_1D6F2FEEC(0, &qword_1EC8985C8, MEMORY[0x1E69D6F38]);
        v26 = v15;
        sub_1D6F2FEA8(&qword_1EC8985D0, &qword_1EC8985C8, v14);

        sub_1D7259A9C();
        v28 = *v20;
        v28(v12, v13);
        v30 = v29;
        v16 = (v27)(v12, v19, v13);
        MEMORY[0x1EEE9AC00](v16, v17);
        sub_1D72599EC();

        v28(v12, v13);
      }

      v8 += 8;
      --v7;
    }

    while (v7);
  }
}

uint64_t sub_1D6F2EC2C(uint64_t a1, uint64_t a2)
{
  v20 = a2;
  v21 = a1;
  sub_1D6F30404(0, &qword_1EC8985B0, sub_1D6F2FDF0, &type metadata for A18_V11.Layout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (&v19 - v8);
  v26 = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = 6;
  *v9 = v10;
  v22 = *MEMORY[0x1E69D7490];
  v11 = *(v6 + 104);
  v11(v9);
  v19 = v11;
  v25 = a2;
  v12 = MEMORY[0x1E69D6F38];
  sub_1D6F2FEEC(0, &qword_1EC8985C8, MEMORY[0x1E69D6F38]);
  sub_1D6F2FEA8(&qword_1EC8985D0, &qword_1EC8985C8, v12);
  sub_1D7259A2C();
  v13 = *(v6 + 8);
  v13(v9, v5);
  v14 = v21;
  v26 = v21;
  v15 = swift_allocObject();
  *(v15 + 16) = 6;
  *v9 = v15;
  (v11)(v9, v22, v5);
  v16 = v20;
  v24 = v20;
  sub_1D7259A2C();
  v13(v9, v5);
  v26 = v14;
  v17 = swift_allocObject();
  *(v17 + 16) = 6;
  *v9 = v17;
  (v19)(v9, v22, v5);
  v23 = v16;
  sub_1D7259A2C();
  return (v13)(v9, v5);
}

uint64_t sub_1D6F2EF6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6F30404(0, &qword_1EC8985B0, sub_1D6F2FDF0, &type metadata for A18_V11.Layout, MEMORY[0x1E69D74B0]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = (&v30 - v12);
  v33 = a1;
  KeyPath = swift_getKeyPath();
  v14 = swift_allocObject();
  *(v14 + 16) = 0x4060E00000000000;
  *v13 = v14;
  result = (*(v10 + 104))(v13, *MEMORY[0x1E69D73D8], v9);
  if (*(a2 + 16))
  {
    v16 = *(type metadata accessor for HeadlineViewLayout.Context(0) - 8);
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v18 = v4[5];
    v19 = *MEMORY[0x1E69D7348];
    v20 = sub_1D725A34C();
    v21 = *(v20 - 8);
    v31 = v9;
    v22 = v21;
    (*(v21 + 104))(&v7[v18], v19, v20);
    (*(v22 + 56))(&v7[v18], 0, 1, v20);
    v23 = *MEMORY[0x1E69DDC70];
    *v7 = 0;
    *&v7[v4[6]] = 0;
    *&v7[v4[7]] = v23;
    v24 = *MEMORY[0x1E69DDCE0];
    v25 = *(MEMORY[0x1E69DDCE0] + 8);
    v26 = *(MEMORY[0x1E69DDCE0] + 16);
    v27 = *(MEMORY[0x1E69DDCE0] + 24);
    v28 = v23;
    _s8NewsFeed18HeadlineViewLayoutV16imageOnRightSide7context7options6insets11TeaTemplate0E0CyA2C10AttributesVGAC7ContextV_AC7OptionsVSo12UIEdgeInsetsVtFZ_0(a2 + v17, v7, v24, v25, v26, v27);
    sub_1D5BE7C8C(v7, type metadata accessor for HeadlineViewLayout.Options);
    v29 = MEMORY[0x1E69D6F38];
    sub_1D6F2FEEC(0, &qword_1EC8985C8, MEMORY[0x1E69D6F38]);
    sub_1D6F2FEA8(&qword_1EC8985D0, &qword_1EC8985C8, v29);
    sub_1D5BE8850();
    sub_1D7259A4C();

    return (*(v10 + 8))(v13, v31);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6F2F31C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6F30404(0, &qword_1EC8985B0, sub_1D6F2FDF0, &type metadata for A18_V11.Layout, MEMORY[0x1E69D74B0]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = (v32 - v12);
  v34 = a1;
  KeyPath = swift_getKeyPath();
  v15 = swift_allocObject();
  *(v15 + 16) = 0x4060E00000000000;
  *v13 = v15;
  result = (*(v10 + 104))(v13, *MEMORY[0x1E69D73D8], v9);
  if (*(a2 + 16) < 2uLL)
  {
    __break(1u);
  }

  else
  {
    v17 = *(type metadata accessor for HeadlineViewLayout.Context(0) - 8);
    v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v19 = a2 + *(v17 + 72);
    v32[1] = KeyPath;
    v20 = v4[5];
    v21 = *MEMORY[0x1E69D7348];
    v22 = sub_1D725A34C();
    v23 = *(v22 - 8);
    v33 = v9;
    v24 = v23;
    (*(v23 + 104))(&v7[v20], v21, v22);
    (*(v24 + 56))(&v7[v20], 0, 1, v22);
    v25 = *MEMORY[0x1E69DDC70];
    *v7 = 0;
    *&v7[v4[6]] = 0;
    *&v7[v4[7]] = v25;
    v26 = *MEMORY[0x1E69DDCE0];
    v27 = *(MEMORY[0x1E69DDCE0] + 8);
    v28 = *(MEMORY[0x1E69DDCE0] + 16);
    v29 = *(MEMORY[0x1E69DDCE0] + 24);
    v30 = v25;
    _s8NewsFeed18HeadlineViewLayoutV16imageOnRightSide7context7options6insets11TeaTemplate0E0CyA2C10AttributesVGAC7ContextV_AC7OptionsVSo12UIEdgeInsetsVtFZ_0(v19 + v18, v7, v26, v27, v28, v29);
    sub_1D5BE7C8C(v7, type metadata accessor for HeadlineViewLayout.Options);
    v31 = MEMORY[0x1E69D6F38];
    sub_1D6F2FEEC(0, &qword_1EC8985C8, MEMORY[0x1E69D6F38]);
    sub_1D6F2FEA8(&qword_1EC8985D0, &qword_1EC8985C8, v31);
    sub_1D5BE8850();
    sub_1D7259A4C();

    return (*(v10 + 8))(v13, v33);
  }

  return result;
}

uint64_t sub_1D6F2F6F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6F30404(0, &qword_1EC8985B0, sub_1D6F2FDF0, &type metadata for A18_V11.Layout, MEMORY[0x1E69D74B0]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = (v29 - v12);
  v29[1] = a1;
  swift_getKeyPath();
  v14 = swift_allocObject();
  *(v14 + 16) = 0x4060E00000000000;
  *v13 = v14;
  result = (*(v10 + 104))(v13, *MEMORY[0x1E69D73D8], v9);
  if (*(a2 + 16) < 3uLL)
  {
    __break(1u);
  }

  else
  {
    v16 = *(type metadata accessor for HeadlineViewLayout.Context(0) - 8);
    v17 = a2 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + 2 * *(v16 + 72);
    v18 = v4[5];
    v29[0] = v9;
    v19 = *MEMORY[0x1E69D7348];
    v20 = sub_1D725A34C();
    v21 = *(v20 - 8);
    (*(v21 + 104))(&v7[v18], v19, v20);
    (*(v21 + 56))(&v7[v18], 0, 1, v20);
    v22 = *MEMORY[0x1E69DDC70];
    *v7 = 0;
    *&v7[v4[6]] = 0;
    *&v7[v4[7]] = v22;
    v23 = *MEMORY[0x1E69DDCE0];
    v24 = *(MEMORY[0x1E69DDCE0] + 8);
    v25 = *(MEMORY[0x1E69DDCE0] + 16);
    v26 = *(MEMORY[0x1E69DDCE0] + 24);
    v27 = v22;
    _s8NewsFeed18HeadlineViewLayoutV16imageOnRightSide7context7options6insets11TeaTemplate0E0CyA2C10AttributesVGAC7ContextV_AC7OptionsVSo12UIEdgeInsetsVtFZ_0(v17, v7, v23, v24, v25, v26);
    sub_1D5BE7C8C(v7, type metadata accessor for HeadlineViewLayout.Options);
    v28 = MEMORY[0x1E69D6F38];
    sub_1D6F2FEEC(0, &qword_1EC8985C8, MEMORY[0x1E69D6F38]);
    sub_1D6F2FEA8(&qword_1EC8985D0, &qword_1EC8985C8, v28);
    sub_1D5BE8850();
    sub_1D7259A4C();

    return (*(v10 + 8))(v13, v29[0]);
  }

  return result;
}

uint64_t sub_1D6F2FAC8@<X0>(void *__src@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  memcpy(v21, __src, sizeof(v21));
  sub_1D5BE5E28();
  v10 = v9;
  v11 = swift_allocBox();
  v13 = v12;
  v14 = *(v10 + 48);
  v15 = *(v10 + 64);
  sub_1D5BE3ED8(a3, v12, type metadata accessor for HeadlineViewLayout.Context);
  memcpy((v13 + v14), v21, 0x130uLL);
  v16 = a4 + *(type metadata accessor for A18_V11.Bound() + 24);
  result = type metadata accessor for GroupLayoutContext();
  v18 = *(v16 + *(result + 28));
  v19 = __OFADD__(v18, a2);
  v20 = v18 + a2;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v13 + v15) = v20;
    *a5 = v11 | 0x4000000000000000;
  }

  return result;
}

unint64_t sub_1D6F2FBDC(uint64_t a1)
{
  *(a1 + 8) = sub_1D6F2FC0C();
  result = sub_1D6F2FC60();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D6F2FC0C()
{
  result = qword_1EC898568;
  if (!qword_1EC898568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898568);
  }

  return result;
}

unint64_t sub_1D6F2FC60()
{
  result = qword_1EC898570;
  if (!qword_1EC898570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898570);
  }

  return result;
}

uint64_t type metadata accessor for A18_V11.Bound()
{
  result = qword_1EC898580;
  if (!qword_1EC898580)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6F2FD28(uint64_t a1)
{
  result = sub_1D6F2FD80(&qword_1EC898590, type metadata accessor for A18_V11.Bound);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6F2FD80(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D6F2FDF0()
{
  result = qword_1EC8985A0;
  if (!qword_1EC8985A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8985A0);
  }

  return result;
}

unint64_t sub_1D6F2FE44()
{
  result = qword_1EC8985A8;
  if (!qword_1EC8985A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8985A8);
  }

  return result;
}

uint64_t sub_1D6F2FEA8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  result = *a1;
  if (!result)
  {
    sub_1D6F2FEEC(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D6F2FEEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for A18_V11.Layout;
    v8[1] = &type metadata for A18_V11.Layout.Attributes;
    v8[2] = sub_1D6F2FDF0();
    v8[3] = sub_1D6F2FE44();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1D6F2FFB4()
{
  result = qword_1EC8985D8;
  if (!qword_1EC8985D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8985D8);
  }

  return result;
}

unint64_t sub_1D6F3000C()
{
  result = qword_1EC8985E0;
  if (!qword_1EC8985E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8985E0);
  }

  return result;
}

unint64_t sub_1D6F30064()
{
  result = qword_1EC8985E8;
  if (!qword_1EC8985E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8985E8);
  }

  return result;
}

unint64_t sub_1D6F300BC()
{
  result = qword_1EC8985F0;
  if (!qword_1EC8985F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8985F0);
  }

  return result;
}

uint64_t sub_1D6F30110@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_1D6F30404(0, &qword_1EC8985F8, sub_1D6F303B0, &type metadata for A18_V11.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6F303B0();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v6;
  v11 = v17;
  type metadata accessor for CGRect(0);
  v20 = 0;
  sub_1D6F2FD80(&qword_1EDF1A740, type metadata accessor for CGRect);
  sub_1D726431C();
  v15 = v19;
  v16 = v18;
  sub_1D5B49714(0, &qword_1EDF1B268);
  v20 = 1;
  sub_1D5BD47D0(&qword_1EDF1B258, sub_1D5BEE208);
  sub_1D726431C();
  (*(v10 + 8))(v9, v5);
  v12 = v18;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v14 = v15;
  *v11 = v16;
  *(v11 + 16) = v14;
  *(v11 + 32) = v12;
  return result;
}

unint64_t sub_1D6F303B0()
{
  result = qword_1EC898600;
  if (!qword_1EC898600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898600);
  }

  return result;
}

void sub_1D6F30404(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1D6F30480()
{
  result = qword_1EC898610;
  if (!qword_1EC898610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898610);
  }

  return result;
}

unint64_t sub_1D6F304D8()
{
  result = qword_1EC898618;
  if (!qword_1EC898618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898618);
  }

  return result;
}

unint64_t sub_1D6F30530()
{
  result = qword_1EC898620;
  if (!qword_1EC898620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC898620);
  }

  return result;
}

id static FCContentManifest.+ infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() manifestByMergingManifest:a1 withManifest:a2];

  return v2;
}

void static FCContentManifest.+= infix(_:_:)(void *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = [objc_opt_self() manifestByMergingManifest:*a1 withManifest:a2];

  *a1 = v4;
}

uint64_t FormatContentSlotItemObject.Resolved.kinds.getter()
{
  v1 = v0;
  v2 = type metadata accessor for WebEmbedDataVisualization();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v34[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5B62EA0(0, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v34[-v9];
  v11 = type metadata accessor for FormatWebEmbed.Resolved();
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v34[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = type metadata accessor for FormatCustomItem.Resolved();
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v34[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = type metadata accessor for FormatContentSlotItemObject.Resolved();
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v34[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5CEC870(v1, v22, type metadata accessor for FormatContentSlotItemObject.Resolved);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        sub_1D5CE5C1C(v22, type metadata accessor for FormatContentSlotItemObject.Resolved);
        v29 = &unk_1F50F4A48;
      }

      else
      {
        sub_1D5CE5C1C(v22, type metadata accessor for FormatContentSlotItemObject.Resolved);
        v29 = &unk_1F50F4A18;
      }
    }

    else if (EnumCaseMultiPayload == 2)
    {
      sub_1D5CE5C1C(v22, type metadata accessor for FormatContentSlotItemObject.Resolved);
      v29 = &unk_1F50F4A78;
    }

    else
    {
      if (EnumCaseMultiPayload == 3)
      {
        sub_1D5CE4A7C(v22, v14, type metadata accessor for FormatWebEmbed.Resolved);
        sub_1D686B7BC(&v14[*(v11 + 32)], v10);
        if ((*(v3 + 48))(v10, 1, v2) == 1)
        {
          sub_1D6F338E0(v10, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
        }

        else
        {
          sub_1D5CEC870(v10, v6, type metadata accessor for WebEmbedDataVisualization);
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            v30 = *v6;
            sub_1D5CE5C1C(v10, type metadata accessor for WebEmbedDataVisualization);
            v31 = v30 >> 61;

            if ((v30 >> 61) <= 2)
            {
              if (v31)
              {
                if (v31 == 1)
                {
                  v32 = &unk_1F50F4BA8;
                }

                else
                {
                  v32 = &unk_1F50F4BE8;
                }
              }

              else
              {
                v32 = &unk_1F50F4B68;
              }
            }

            else if (v31 > 4)
            {
              if (v31 == 5)
              {
                v32 = &unk_1F50F4CA8;
              }

              else
              {
                v32 = &unk_1F50F4CE8;
              }
            }

            else if (v31 == 3)
            {
              v32 = &unk_1F50F4C28;
            }

            else
            {
              v32 = &unk_1F50F4C68;
            }

            v26 = sub_1D5E2755C(v32);
            swift_arrayDestroy();
            goto LABEL_39;
          }

          sub_1D5CE5C1C(v6, type metadata accessor for WebEmbedDataVisualization);
          sub_1D5CE5C1C(v10, type metadata accessor for WebEmbedDataVisualization);
        }

        v26 = sub_1D5E2755C(&unk_1F50F4D28);
        sub_1D6875B30(&unk_1F50F4D48);
LABEL_39:
        v27 = type metadata accessor for FormatWebEmbed.Resolved;
        v28 = v14;
        goto LABEL_40;
      }

      sub_1D5CE5C1C(v22, type metadata accessor for FormatContentSlotItemObject.Resolved);
      v29 = &unk_1F50F4AA8;
    }

    goto LABEL_20;
  }

  if (EnumCaseMultiPayload <= 6)
  {
    if (EnumCaseMultiPayload != 5)
    {
      v26 = sub_1D5E2755C(&unk_1F50F4B08);
      sub_1D6875B30(&unk_1F50F4B28);
      v27 = type metadata accessor for FormatContentSlotItemObject.Resolved;
      v28 = v22;
      goto LABEL_40;
    }

    sub_1D5CE5C1C(v22, type metadata accessor for FormatContentSlotItemObject.Resolved);
    v29 = &unk_1F50F4AD8;
LABEL_20:
    v26 = sub_1D5E2755C(v29);
    sub_1D6875B30(v29 + 32);
    return v26;
  }

  if (EnumCaseMultiPayload == 7)
  {
    sub_1D5CE5C1C(v22, type metadata accessor for FormatContentSlotItemObject.Resolved);
    v29 = &unk_1F50F4B38;
    goto LABEL_20;
  }

  if (EnumCaseMultiPayload == 8)
  {
    sub_1D5CE4A7C(v22, v18, type metadata accessor for FormatCustomItem.Resolved);
    sub_1D5CE5C7C(0, &qword_1EDF198D8, &type metadata for FormatItemKind, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7273AE0;
    v25 = *(v18 + 3);
    *(inited + 32) = *(v18 + 2);
    *(inited + 40) = v25;

    v26 = sub_1D5E2755C(inited);
    swift_setDeallocating();
    sub_1D6875B30(inited + 32);
    v27 = type metadata accessor for FormatCustomItem.Resolved;
    v28 = v18;
LABEL_40:
    sub_1D5CE5C1C(v28, v27);
    return v26;
  }

  sub_1D5CE5C1C(v22, type metadata accessor for FormatContentSlotItemObject.Resolved);
  return MEMORY[0x1E69E7CD0];
}

void sub_1D6F30CA4(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (a3)
    {
      v3 = a1;
      a3 = sub_1D726203C();
      a1 = v3;
    }

    v4 = a3;
    [a1 setDismissingIdentifier_];
  }
}