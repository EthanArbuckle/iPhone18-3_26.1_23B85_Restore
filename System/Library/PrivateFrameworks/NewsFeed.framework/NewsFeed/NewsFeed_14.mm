unint64_t sub_1D5C8F298()
{
  result = qword_1EDF29BF8;
  if (!qword_1EDF29BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29BF8);
  }

  return result;
}

unint64_t sub_1D5C8F2EC()
{
  result = qword_1EDF29C18;
  if (!qword_1EDF29C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29C18);
  }

  return result;
}

uint64_t sub_1D5C8F340()
{
  v1 = 24945;
  v2 = 0x69746375646F7270;
  if (*v0 != 2)
  {
    v2 = 1885433183;
  }

  if (*v0)
  {
    v1 = 0x676E6967617473;
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

uint64_t FormatCompilerOptions.Newsroom.Environment.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v27 = a2;
  sub_1D5C8F684();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C50108();
  sub_1D5B58B84(&qword_1EDF25308, sub_1D5C50108);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v27;
  if (v12)
  {
    v14 = sub_1D726433C();
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = (v14 + 48);
      while (*v16 != 1)
      {
        v16 += 24;
        if (!--v15)
        {
          goto LABEL_7;
        }
      }

      v21 = *(v16 - 2);
      v20 = *(v16 - 1);

      v22 = sub_1D6628490(0x696669746E656469, 0xEA00000000007265);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v23 = v21;
      *(v23 + 8) = v20;
      *(v23 + 16) = v22;
      *(v23 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v10, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  v25[1] = 0;
  v25[2] = 0;
  v26 = 0;
  v17 = sub_1D72642BC();
  v19 = v18;
  (*(v7 + 8))(v10, v6);
  *v13 = v17;
  v13[1] = v19;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D5C8F684()
{
  if (!qword_1EDF1A090)
  {
    sub_1D5C50108();
    sub_1D5B58B84(&qword_1EDF25308, sub_1D5C50108);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A090);
    }
  }
}

unint64_t sub_1D5C8F718()
{
  result = qword_1EDF29C38;
  if (!qword_1EDF29C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29C38);
  }

  return result;
}

uint64_t sub_1D5C8F76C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D5C8F7D4()
{
  result = qword_1EDF27410;
  if (!qword_1EDF27410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF27410);
  }

  return result;
}

uint64_t sub_1D5C8F828@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5C504A4();
  *a1 = result;
  return result;
}

unint64_t sub_1D5C8F864()
{
  result = qword_1EDF0E388;
  if (!qword_1EDF0E388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0E388);
  }

  return result;
}

unint64_t sub_1D5C8F8BC()
{
  result = qword_1EDF0E360;
  if (!qword_1EDF0E360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0E360);
  }

  return result;
}

uint64_t sub_1D5C8F97C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

void sub_1D5C8F9E0()
{
  if (!qword_1EDF33880)
  {
    sub_1D5B4A54C();
    v0 = type metadata accessor for FormatObject();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF33880);
    }
  }
}

uint64_t sub_1D5C8FA3C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D5C509A4(255, &qword_1EDF1B380, MEMORY[0x1E69E62F8]);
    sub_1D5C7FFAC(a2, sub_1D5C8F9E0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5C8FAE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t FormatGroup.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v124 = a2;
  sub_1D5C2E60C(0, &qword_1EDF3BC80, sub_1D5C50A4C, sub_1D5C90FF0);
  v125 = v3;
  v121 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v126 = &v108 - v5;
  sub_1D5C2E60C(0, &qword_1EDF3BD98, sub_1D5B4C754, sub_1D5B4C7A8);
  v130 = v6;
  v122 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v129 = &v108 - v8;
  sub_1D5C2E528();
  v132 = v9;
  v123 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v131 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C8CD38();
  v136 = v12;
  v127 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v134 = &v108 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C2E60C(0, &qword_1EDF3BD58, sub_1D5C50AA0, sub_1D5C50AF4);
  *&v139 = v15;
  v128 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v135 = &v108 - v17;
  sub_1D5C2E60C(0, &qword_1EDF3BD48, sub_1D5C2E688, sub_1D5C2E6DC);
  *&v138 = v18;
  v133 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v19);
  *&v137 = &v108 - v20;
  sub_1D5C2E60C(0, &qword_1EDF3BCF8, sub_1D5C91044, sub_1D5C50B48);
  v22 = v21;
  v140 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v108 - v24;
  sub_1D5C91098();
  v27 = v26;
  v141 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v28);
  v30 = &v108 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C50B9C();
  sub_1D5B58B84(&qword_1EDF24CE8, sub_1D5C50B9C);
  v32 = v142;
  sub_1D7264B0C();
  v33 = v32;
  if (!v32)
  {
    *&v142 = v25;
    __swift_project_boxed_opaque_existential_1(v31, v31[3]);
    v35 = sub_1D7264AFC();
    v36 = Dictionary<>.errorOnUnknownKeys.getter(v35);

    v34 = v31;
    v37 = v27;
    if (v36)
    {
      v38 = sub_1D726433C();
      v39 = *(v38 + 16);
      if (v39)
      {
        v40 = (v38 + 48);
        while (*v40 != 1)
        {
          v40 += 24;
          if (!--v39)
          {
            goto LABEL_8;
          }
        }

        v45 = v30;
        v47 = *(v40 - 2);
        v46 = *(v40 - 1);

        v48 = sub_1D661BA14();
        sub_1D5E2D970();
        v49 = swift_allocError();
        *v50 = v47;
        *(v50 + 8) = v46;
        v33 = v49;
        *(v50 + 16) = v48;
        *(v50 + 24) = xmmword_1D72874E0;
        swift_willThrow();
        (*(v141 + 8))(v45, v27);
        goto LABEL_20;
      }

LABEL_8:
    }

    v145 = 0uLL;
    v146 = 0;
    v41 = sub_1D72642BC();
    v43 = v42;
    v44 = v41;
    v145 = xmmword_1D728CF30;
    v146 = 0;
    v119 = sub_1D726422C();
    v120 = v44;
    v52 = v51;
    v145 = xmmword_1D7297410;
    v146 = 0;
    v53 = sub_1D726422C();
    v118 = 0;
    v115 = v53;
    v117 = v54;
    v116 = xmmword_1D72BAA60;
    v145 = xmmword_1D72BAA60;
    v146 = 0;
    v55 = sub_1D726434C();
    if (v55)
    {
      v143 = v116;
      v144 = 0;
      sub_1D61DED78();
      v56 = v118;
      sub_1D726431C();
      v33 = v56;
      if (v56)
      {

        (*(v141 + 8))(v30, v27);
        goto LABEL_20;
      }

      v58 = v22;
      v118 = 0;
      *&v116 = v43;
      v57 = v147[0];
    }

    else
    {
      *&v116 = v43;
      v57 = 2;
      v58 = v22;
    }

    v145 = xmmword_1D72BAA70;
    v146 = 0;
    sub_1D5C50FA4();
    sub_1D5B58B84(qword_1EDF21390, sub_1D5C50FA4);
    v59 = v118;
    sub_1D726431C();
    v33 = v59;
    v60 = v140;
    if (v59)
    {
      (*(v141 + 8))(v30, v27);

LABEL_19:

      goto LABEL_20;
    }

    LODWORD(v118) = v57;
    v61 = v143;
    v145 = xmmword_1D72BAA80;
    v146 = 0;
    sub_1D5C8F7D4();
    sub_1D726427C();
    v114 = v61;
    v113 = v52;
    v64 = v143;
    v145 = xmmword_1D72BAA90;
    v146 = 0;
    sub_1D5C51470();
    v65 = v142;
    sub_1D726431C();
    v112 = 0;
    v110 = *(&v64 + 1);
    v111 = v64;
    v66 = sub_1D725A74C();
    (*(v60 + 8))(v65, v58);
    v142 = xmmword_1D72BAAA0;
    v145 = xmmword_1D72BAAA0;
    v146 = 0;
    if (sub_1D726434C())
    {
      v143 = v142;
      v144 = 0;
      sub_1D5C2F040();
      v67 = v137;
      v68 = v138;
      v69 = v112;
      sub_1D726431C();
      v33 = v69;
      if (v69)
      {
        (*(v141 + 8))(v30, v37);

        sub_1D5C5D428(v111, v110);
        goto LABEL_19;
      }

      v112 = 0;
      v140 = v66;
      v109 = sub_1D725A74C();
      (*(v133 + 8))(v67, v68);
    }

    else
    {
      v140 = v66;
      v109 = MEMORY[0x1E69E7CC0];
    }

    v138 = xmmword_1D72BAAB0;
    v145 = xmmword_1D72BAAB0;
    v146 = 0;
    v70 = v30;
    v71 = sub_1D726434C();
    v72 = v141;
    *&v142 = v30;
    v73 = v111;
    v74 = v139;
    if (v71)
    {
      v143 = v138;
      v144 = 0;
      sub_1D5CD0AB8();
      v75 = v135;
      v76 = v112;
      sub_1D726431C();
      v77 = v76;
      v78 = v110;
      if (v76)
      {
        (*(v72 + 8))(v70, v37);

        sub_1D5C5D428(v111, v78);
LABEL_35:

        v33 = v77;
        goto LABEL_20;
      }

      v112 = 0;
      *&v138 = sub_1D725A74C();
      (*(v128 + 8))(v75, v74);
      v73 = v111;
    }

    else
    {
      *&v138 = MEMORY[0x1E69E7CC0];
    }

    v139 = xmmword_1D72BAAC0;
    v145 = xmmword_1D72BAAC0;
    v146 = 0;
    v79 = v142;
    v80 = sub_1D726434C();
    v81 = v136;
    if (v80)
    {
      v143 = v139;
      v144 = 0;
      sub_1D5B58B84(&qword_1EDF3BE00, sub_1D5C8CD38);
      v82 = v134;
      v83 = v112;
      sub_1D726431C();
      v77 = v83;
      if (v83)
      {
        (*(v72 + 8))(v79, v37);

        sub_1D5C5D428(v73, v110);

        goto LABEL_35;
      }

      v84 = v72;
      v112 = 0;
      v85 = sub_1D725A74C();
      (*(v127 + 8))(v82, v81);
    }

    else
    {
      v84 = v72;
      v85 = MEMORY[0x1E69E7CD0];
    }

    v139 = xmmword_1D72BAAD0;
    v145 = xmmword_1D72BAAD0;
    v146 = 0;
    if (sub_1D726434C())
    {
      v143 = v139;
      v144 = 0;
      sub_1D5B58B84(&qword_1EDF3BD80, sub_1D5C2E528);
      v86 = v131;
      v87 = v132;
      v88 = v112;
      sub_1D726431C();
      v33 = v88;
      if (v88)
      {
        (*(v84 + 8))(v142, v37);

        sub_1D5C5D428(v111, v110);

        goto LABEL_19;
      }

      v112 = 0;
      v89 = sub_1D725A74C();
      (*(v123 + 8))(v86, v87);
    }

    else
    {
      v89 = MEMORY[0x1E69E7CC0];
    }

    v139 = xmmword_1D72BAAE0;
    v145 = xmmword_1D72BAAE0;
    v146 = 0;
    v90 = sub_1D726434C();
    v108 = v34;
    if (v90)
    {
      v143 = v139;
      v144 = 0;
      sub_1D666CDAC();
      v91 = v112;
      sub_1D726431C();
      v92 = v91;
      if (v91)
      {
        (*(v141 + 8))(v142, v37);

        sub_1D5C5D428(v111, v110);
LABEL_56:

        goto LABEL_57;
      }

      v94 = v130;
      v95 = v129;
      v93 = sub_1D725A74C();
      (*(v122 + 8))(v95, v94);
    }

    else
    {
      v92 = v112;
      v93 = MEMORY[0x1E69E7CC0];
    }

    v139 = xmmword_1D72BAAF0;
    v145 = xmmword_1D72BAAF0;
    v146 = 0;
    v96 = v37;
    if (sub_1D726434C())
    {
      v143 = v139;
      v144 = 0;
      sub_1D5CB9318();
      sub_1D726431C();
      if (v92)
      {

        sub_1D5C5D428(v111, v110);

        (*(v141 + 8))(v142, v37);
LABEL_57:
        v33 = v92;
        v34 = v108;
        goto LABEL_20;
      }

      v97 = v147[0];
    }

    else
    {
      v97 = 192;
    }

    LODWORD(v139) = v97;
    v137 = xmmword_1D7282A80;
    v145 = xmmword_1D7282A80;
    v146 = 0;
    if (sub_1D726434C())
    {
      v143 = v137;
      v144 = 0;
      sub_1D668F0D0();
      sub_1D726431C();
      if (v92)
      {
        (*(v141 + 8))(v142, v37);

        sub_1D5C5D428(v111, v110);

        goto LABEL_56;
      }

      v99 = v125;
      v100 = v126;
      v98 = sub_1D725A74C();
      (*(v121 + 8))(v100, v99);
    }

    else
    {
      v98 = MEMORY[0x1E69E7CC0];
    }

    (*(v141 + 8))(v142, v96);
    swift_bridgeObjectRelease_n();
    sub_1D5C5D428(0, 2uLL);
    v101 = v124;
    v102 = v116;
    *v124 = v120;
    v101[1] = v102;
    v103 = v113;
    v101[2] = v119;
    v101[3] = v103;
    v104 = v117;
    v101[4] = v115;
    v101[5] = v104;
    *(v101 + 48) = v118;
    *(v101 + 49) = v143;
    *(v101 + 13) = *(&v143 + 3);
    v105 = v111;
    v101[7] = v114;
    v101[8] = v105;
    v106 = v140;
    v101[9] = v110;
    v101[10] = v106;
    v107 = v138;
    v101[11] = v109;
    v101[12] = v107;
    v101[13] = v85;
    v101[14] = v89;
    v101[15] = v93;
    *(v101 + 128) = v139;
    *(v101 + 33) = *&v147[3];
    *(v101 + 129) = *v147;
    v101[17] = v98;
    v62 = v108;
    return __swift_destroy_boxed_opaque_existential_1(v62);
  }

  v34 = v31;
LABEL_20:
  sub_1D61E4FBC(v34, v33);
  swift_willThrow();

  v62 = v34;
  return __swift_destroy_boxed_opaque_existential_1(v62);
}

unint64_t sub_1D5C90FF0()
{
  result = qword_1EDF28930;
  if (!qword_1EDF28930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF28930);
  }

  return result;
}

unint64_t sub_1D5C91044()
{
  result = qword_1EDF2BF70;
  if (!qword_1EDF2BF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2BF70);
  }

  return result;
}

void sub_1D5C91098()
{
  if (!qword_1EDF19D80)
  {
    sub_1D5C50B9C();
    sub_1D5B58B84(&qword_1EDF24CE8, sub_1D5C50B9C);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19D80);
    }
  }
}

unint64_t sub_1D5C9112C()
{
  result = qword_1EDF22270;
  if (!qword_1EDF22270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF22270);
  }

  return result;
}

uint64_t sub_1D5C91180@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5C911B0();
  *a1 = result;
  return result;
}

uint64_t sub_1D5C911B0()
{
  v0 = sub_1D72641CC();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1D5C911FC()
{
  result = qword_1EDF22260;
  if (!qword_1EDF22260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF22260);
  }

  return result;
}

unint64_t sub_1D5C91274()
{
  result = qword_1EDF236F8;
  if (!qword_1EDF236F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF236F8);
  }

  return result;
}

uint64_t sub_1D5C912C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t FormatAccessibilityContent.init(from:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = v2;
  v37 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v30 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (v2)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();
  }

  else
  {
    v11 = v7;
    v12 = v37;
    v13 = a1[3];
    v31 = a1;
    __swift_project_boxed_opaque_existential_1(a1, v13);
    v14 = sub_1D7264AFC();
    LOBYTE(v13) = Dictionary<>.errorOnUnknownKeys.getter(v14);

    if (v13)
    {
      v15 = sub_1D726433C();
      v16 = (v15 + 40);
      v17 = *(v15 + 16) + 1;
      while (--v17)
      {
        v18 = v16 + 2;
        v19 = *v16;
        v16 += 2;
        if (v19 >= 4)
        {
          v20 = *(v18 - 3);

          sub_1D5E2D970();
          v3 = swift_allocError();
          *v21 = v20;
          *(v21 + 8) = v19;
          *(v21 + 16) = &unk_1F5113F50;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v10, v6);
          a1 = v31;
          goto LABEL_9;
        }
      }
    }

    sub_1D5C800EC();
    v32 = 0uLL;
    sub_1D726431C();
    if (v36)
    {
      v23 = v12;
      if (v36 == 1)
      {
        sub_1D5C80140(0, &qword_1EDF2E1E8, sub_1D5C6F8B4);
        v36 = xmmword_1D7279980;
        sub_1D5C6FB28();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v24 = v33;
        v30 = v32;
        v25 = swift_allocObject();
        *(v25 + 16) = v30;
        *(v25 + 32) = v24;
        v26 = v25 | 0x4000000000000000;
      }

      else
      {
        sub_1D5C34074(0, &qword_1EDF419A0, MEMORY[0x1E69E6158], &protocol witness table for String, type metadata accessor for FormatValue);
        v36 = xmmword_1D7279980;
        sub_1D5C34150();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v28 = v32;
        v29 = swift_allocObject();
        *(v29 + 16) = v28;
        v26 = v29 | 0x8000000000000000;
      }

      a1 = v31;
    }

    else
    {
      v36 = xmmword_1D7279980;
      sub_1D5C77160();
      sub_1D726431C();
      a1 = v31;
      v23 = v12;
      (*(v11 + 8))(v10, v6);
      v26 = swift_allocObject();
      v27 = v33;
      *(v26 + 16) = v32;
      *(v26 + 32) = v27;
      *(v26 + 48) = v34;
      *(v26 + 64) = v35;
    }

    *v23 = v26;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D5C91814()
{

  return swift_deallocObject();
}

uint64_t sub_1D5C91860()
{
  sub_1D5E1DF18(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 65));

  return swift_deallocObject();
}

unint64_t sub_1D5C91948()
{
  result = qword_1EDF27E10;
  if (!qword_1EDF27E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF27E10);
  }

  return result;
}

unint64_t sub_1D5C9199C()
{
  result = qword_1EDF27E28;
  if (!qword_1EDF27E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF27E28);
  }

  return result;
}

uint64_t sub_1D5C91A14(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xFD)
  {
    v7 = 253;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 17) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 > 0xFD)
      {
        return (*(v4 + 48))((a1 + v6 + 17) & ~v6);
      }

      v15 = *(a1 + 16);
      if (v15 > 2)
      {
        return (v15 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

uint64_t sub_1D5C91BA8(char a1)
{
  if (!a1)
  {
    return 0x6574617473;
  }

  if (a1 == 1)
  {
    return 0x65756C6176;
  }

  return 1885433183;
}

unint64_t sub_1D5C91BF0()
{
  result = qword_1EDF2E530;
  if (!qword_1EDF2E530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2E530);
  }

  return result;
}

uint64_t sub_1D5C91C44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v7;
  v8 = type metadata accessor for FormatCommandValue.CaseValue();
  v9 = *(*(a3 - 8) + 32);
  v10 = a4 + *(v8 + 44);

  return v9(v10, a2, a3);
}

uint64_t sub_1D5C91CDC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a3;
  v46 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v45 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v50 = &v42 - v8;
  v51 = v7;
  v48 = v9;
  v53 = v10;
  v11 = _s10CodingKeysOMa_310();
  WitnessTable = swift_getWitnessTable();
  v13 = swift_getWitnessTable();
  v14 = swift_getWitnessTable();
  *&v54 = v11;
  *(&v54 + 1) = WitnessTable;
  v49 = WitnessTable;
  v44 = v13;
  v55 = v13;
  v56 = v14;
  v15 = type metadata accessor for FormatCodingKeysContainer();
  swift_getWitnessTable();
  v16 = sub_1D726435C();
  v52 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v42 - v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v20 = v57;
  sub_1D7264B0C();
  v21 = v20;
  if (v20)
  {
    goto LABEL_12;
  }

  v42 = v14;
  v43 = 0;
  v57 = v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v22 = sub_1D7264AFC();
  v23 = Dictionary<>.errorOnUnknownKeys.getter(v22);

  if ((v23 & 1) == 0)
  {
LABEL_10:
    v54 = 0uLL;
    LOBYTE(v55) = 0;
    v38 = v50;
    v37 = v51;
    v39 = v57;
    v40 = v43;
    sub_1D726431C();
    if (!v40)
    {
      (*(v52 + 8))(v39, v16);
      v41 = v45;
      (*(v46 + 32))(v45, v38, v37);
      sub_1D5C6F0FC(v41, v37, v47);
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    (*(v52 + 8))(v39, v16);
    v21 = v40;
LABEL_12:
    sub_1D61E4FBC(a1, v21);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = 0;
  v25 = (sub_1D726433C() + 48);
  v26 = v11;
  v27 = v49;
  while (1)
  {
    if (v24 == sub_1D726279C())
    {

      goto LABEL_10;
    }

    v28 = sub_1D726277C();
    result = sub_1D726271C();
    if ((v28 & 1) == 0)
    {
      break;
    }

    v30 = *v25;
    v54 = *(v25 - 1);
    LOBYTE(v55) = v30;
    if (__OFADD__(v24, 1))
    {
      goto LABEL_16;
    }

    v31 = sub_1D6AFC82C(v15);
    ++v24;
    v25 += 24;
    if (v32)
    {
      v33 = v31;
      v34 = v32;

      v35 = sub_1D6AFC690(v26, v27, v44, v42);
      sub_1D5E2D970();
      v21 = swift_allocError();
      *v36 = v33;
      *(v36 + 8) = v34;
      *(v36 + 16) = v35;
      *(v36 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v52 + 8))(v57, v16);
      goto LABEL_12;
    }
  }

  result = sub_1D7263DBC();
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1D5C92198@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D5C716C0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1D5C921C8()
{
  result = qword_1EDF32058;
  if (!qword_1EDF32058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF32058);
  }

  return result;
}

unint64_t sub_1D5C9221C()
{
  result = qword_1EDF298F8;
  if (!qword_1EDF298F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF298F8);
  }

  return result;
}

uint64_t FormatDimensionSizing.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v25 = a2;
  sub_1D5C71A38();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C71ACC();
  sub_1D5B58B84(&qword_1EDF252D8, sub_1D5C71ACC);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v25;
  if (v12)
  {
    v14 = sub_1D726433C();
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = (v14 + 48);
      while (*v16 != 1)
      {
        v16 += 24;
        if (!--v15)
        {
          goto LABEL_7;
        }
      }

      v19 = *(v16 - 2);
      v18 = *(v16 - 1);

      v20 = sub_1D6627E68(0x746867696568, 0xE600000000000000, 0x6874646977, 0xE500000000000000);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v21 = v19;
      *(v21 + 8) = v18;
      *(v21 + 16) = v20;
      *(v21 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v10, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D5C71CA0();
  v26 = 0uLL;
  v27 = 0;
  sub_1D726431C();
  v17 = v28;
  v26 = xmmword_1D728CF30;
  v27 = 0;
  sub_1D726431C();
  (*(v7 + 8))(v10, v6);
  v23 = v28;
  *v13 = v17;
  v13[1] = v23;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D5C925F0()
{
  v0 = sub_1D72641CC();

  if (v0 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v0;
  }
}

void sub_1D5C9263C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

void sub_1D5C92690()
{
  if (!qword_1EDF1B6E0)
  {
    sub_1D5C73784(255, &qword_1EDF1A938, &unk_1EDF1A940, 0x1E69DCAC8, sub_1D5B5A498);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF1B6E0);
    }
  }
}

void sub_1D5C92728()
{
  if (!qword_1EDF1A670)
  {
    sub_1D5C73784(255, &qword_1EDF1A668, &qword_1EDF1A680, 0x1E696AAE8, sub_1D5B5A498);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF1A670);
    }
  }
}

void sub_1D5C927C0()
{
  if (!qword_1EDF2FDB8)
  {
    type metadata accessor for FormatSwitchNode();
    type metadata accessor for FormatNodeBinder(255);
    type metadata accessor for FormatNodeBinderContext();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EDF2FDB8);
    }
  }
}

void sub_1D5C9286C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1D5C928DC()
{
  result = qword_1EDF1B6D8;
  if (!qword_1EDF1B6D8)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1EDF1B6D8);
  }

  return result;
}

uint64_t sub_1D5C9290C()
{
  result = qword_1EDF1B740;
  if (!qword_1EDF1B740)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1EDF1B740);
  }

  return result;
}

void sub_1D5C9293C()
{
  if (!qword_1EDF1DD58)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF1DD58);
    }
  }
}

unint64_t sub_1D5C9299C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (sub_1D726233C() != a1 || v9 != a2)
  {
    v10 = sub_1D72646CC();

    if (v10)
    {
      return v8;
    }

    v8 = sub_1D726222C();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

unint64_t sub_1D5C92A8C(unint64_t result)
{
  switch((result >> 59) & 0x1E | (result >> 2) & 1)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0xFuLL:
    case 0x10uLL:
    case 0x11uLL:
    case 0x12uLL:
    case 0x13uLL:
    case 0x14uLL:
    case 0x15uLL:

      break;
    default:
      return result;
  }

  return result;
}

void sub_1D5C92B28()
{
  if (!qword_1EDF24B90)
  {
    sub_1D5C92BAC();
    sub_1D5C83F08();
    sub_1D5C92C00();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF24B90);
    }
  }
}

unint64_t sub_1D5C92BAC()
{
  result = qword_1EDF31750;
  if (!qword_1EDF31750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF31750);
  }

  return result;
}

unint64_t sub_1D5C92C00()
{
  result = qword_1EDF31760;
  if (!qword_1EDF31760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF31760);
  }

  return result;
}

void sub_1D5C92C5C()
{
  sub_1D5B4BFC8(319, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1D5C92D9C(void *a1)
{
  sub_1D5B5BF78(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v71 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v72 = &v56 - v7;
  sub_1D5C2E60C(0, &qword_1EDF3BCC0, sub_1D5C73D14, sub_1D5C841E0);
  v9 = v8;
  v73 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v56 - v11;
  sub_1D5C93E40();
  v74 = *(v13 - 8);
  v75 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1D5C84234();
  sub_1D5B58B84(&qword_1EDF253D8, sub_1D5C84234);
  v18 = v94;
  sub_1D7264B0C();
  v19 = v18;
  if (v18)
  {
LABEL_14:
    sub_1D61E4FBC(a1, v19);
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1(a1);
    return v17;
  }

  v94 = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v20 = sub_1D7264AFC();
  v21 = Dictionary<>.errorOnUnknownKeys.getter(v20);

  v17 = v75;
  if (v21)
  {
    v22 = sub_1D726433C();
    v23 = *(v22 + 16);
    if (v23)
    {
      v24 = (v22 + 48);
      while (*v24 != 1)
      {
        v24 += 24;
        if (!--v23)
        {
          goto LABEL_7;
        }
      }

      v28 = *(v24 - 2);
      v27 = *(v24 - 1);

      v29 = sub_1D661CE8C();
      sub_1D5E2D970();
      v30 = swift_allocError();
      *v31 = v28;
      *(v31 + 8) = v27;
      *(v31 + 16) = v29;
      v19 = v30;
      *(v31 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v74 + 8))(v16, v17);
      goto LABEL_14;
    }

LABEL_7:
  }

  v25 = sub_1D5C31D18(v16, 0, 0, 0, sub_1D5C93E40);
  v69 = a1;
  v70 = v26;
  v88 = xmmword_1D728CF30;
  LOBYTE(v89) = 0;
  v66 = sub_1D72642BC();
  v68 = v32;
  v67 = xmmword_1D7297410;
  v88 = xmmword_1D7297410;
  LOBYTE(v89) = 0;
  v33 = sub_1D726434C();
  if (v33)
  {
    v80 = v67;
    LOBYTE(v81) = 0;
    sub_1D5C74008();
    v34 = v94;
    sub_1D726431C();
    *&v67 = v25;
    v35 = sub_1D725A74C();
    (*(v73 + 8))(v34, v9);
  }

  else
  {
    *&v67 = v25;
    v35 = MEMORY[0x1E69E7CC0];
  }

  sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
  v88 = xmmword_1D72BAA60;
  LOBYTE(v89) = 0;
  sub_1D5C35368();
  sub_1D726427C();
  v36 = v16;
  v38 = v80;
  sub_1D5C34D84(0, &unk_1EDF1B0B0, &type metadata for FormatImageAdjustment, MEMORY[0x1E69E62F8]);
  v88 = xmmword_1D72BAA70;
  LOBYTE(v89) = 0;
  sub_1D5C74688();
  sub_1D726427C();
  v94 = v38;
  v39 = v80;
  v88 = xmmword_1D72BAA80;
  LOBYTE(v89) = 0;
  sub_1D5C4A954();
  sub_1D726427C();
  v40 = v80;
  sub_1D5C34D84(0, &unk_1EDF1B3E0, &type metadata for FormatBorder, MEMORY[0x1E69E62F8]);
  v88 = xmmword_1D72BAA90;
  LOBYTE(v89) = 0;
  sub_1D5C34DD4();
  sub_1D726427C();
  v73 = v40;
  v41 = v80;
  v88 = xmmword_1D72BAAA0;
  LOBYTE(v89) = 0;
  sub_1D5C745E4();
  sub_1D726427C();
  v64 = v41;
  v65 = v35;
  v42 = v80;
  v80 = xmmword_1D72BAAB0;
  LOBYTE(v81) = 0;
  sub_1D5C8C780();
  sub_1D726427C();
  v61 = v42;
  v62 = v88;
  v63 = v89;
  v88 = xmmword_1D72BAAC0;
  LOBYTE(v89) = 0;
  sub_1D5C86C08();
  sub_1D726427C();
  v59 = v80;
  v60 = v39;
  v88 = xmmword_1D72BAAD0;
  LOBYTE(v89) = 0;
  sub_1D5C93FDC();
  v43 = v75;
  v44 = v36;
  sub_1D726427C();
  v58 = v80;
  sub_1D5C34D84(0, &qword_1EDF1B110, &type metadata for FormatImageTransform, MEMORY[0x1E69E62F8]);
  v88 = xmmword_1D72BAAE0;
  LOBYTE(v89) = 0;
  sub_1D5C744F4();
  sub_1D726427C();
  v45 = v80;
  v86 = xmmword_1D72BAAF0;
  v87 = 0;
  sub_1D5C34EC4();
  sub_1D726427C();
  v82 = v90;
  v83 = v91;
  v84 = v92;
  v85 = v93;
  v80 = v88;
  v81 = v89;
  v78 = xmmword_1D7282A80;
  v79 = 0;
  sub_1D5B570F8();
  sub_1D726427C();
  v57 = v76;
  v78 = xmmword_1D72BAB00;
  v79 = 0;
  LOBYTE(v42) = sub_1D726423C();
  v78 = xmmword_1D72BAB10;
  v79 = 0;
  sub_1D5C94030();
  sub_1D726427C();
  v47 = v76;
  v46 = v77;
  sub_1D725B76C();
  v78 = xmmword_1D72BAB20;
  v79 = 0;
  sub_1D5B58B84(&qword_1EDF3BAA0, MEMORY[0x1E69D6A58]);
  sub_1D726427C();
  v56 = 0;
  (*(v74 + 8))(v44, v43);
  v48 = MEMORY[0x1E69D6A58];
  sub_1D5C4E944(v72, v71, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  type metadata accessor for FormatImageNodeStyle();
  v17 = swift_allocObject();
  *(v17 + 64) = 0;
  *(v17 + 136) = 0;
  swift_beginAccess();
  v49 = v70;
  *(v17 + 16) = v67;
  *(v17 + 24) = v49;
  v50 = v68;
  *(v17 + 32) = v66;
  *(v17 + 40) = v50;
  swift_beginAccess();
  v51 = v94;
  *(v17 + 48) = v65;
  *(v17 + 56) = v51;
  swift_beginAccess();
  *(v17 + 64) = v60;

  v52 = v64;
  *(v17 + 72) = v73;
  *(v17 + 80) = v52;
  *(v17 + 88) = v61;
  v53 = *(&v62 + 1);
  *(v17 + 96) = v62;
  *(v17 + 104) = v53;
  *(v17 + 112) = v63;
  *(v17 + 120) = v59;
  *(v17 + 128) = v58;
  swift_beginAccess();
  *(v17 + 136) = v45;

  v54 = v83;
  *(v17 + 176) = v82;
  *(v17 + 192) = v54;
  *(v17 + 208) = v84;
  *(v17 + 224) = v85;
  v55 = v81;
  *(v17 + 144) = v80;
  *(v17 + 160) = v55;
  *(v17 + 232) = v57;
  *(v17 + 240) = v42;
  *(v17 + 248) = v47;
  *(v17 + 256) = v46;
  sub_1D5C4E944(v71, v17 + OBJC_IVAR____TtC8NewsFeed20FormatImageNodeStyle_imageMask, &qword_1EDF45AD0, v48);
  __swift_destroy_boxed_opaque_existential_1(v69);
  return v17;
}

void sub_1D5C93E40()
{
  if (!qword_1EDF1A0F8)
  {
    sub_1D5C84234();
    sub_1D5B58B84(&qword_1EDF253D8, sub_1D5C84234);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A0F8);
    }
  }
}

unint64_t sub_1D5C93ED4()
{
  result = qword_1EDF2B140;
  if (!qword_1EDF2B140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2B140);
  }

  return result;
}

unint64_t sub_1D5C93F2C()
{
  result = qword_1EDF2B148[0];
  if (!qword_1EDF2B148[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF2B148);
  }

  return result;
}

unint64_t sub_1D5C93F88()
{
  result = qword_1EDF2B100;
  if (!qword_1EDF2B100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2B100);
  }

  return result;
}

unint64_t sub_1D5C93FDC()
{
  result = qword_1EDF2F580;
  if (!qword_1EDF2F580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2F580);
  }

  return result;
}

unint64_t sub_1D5C94030()
{
  result = qword_1EDF28828;
  if (!qword_1EDF28828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF28828);
  }

  return result;
}

uint64_t sub_1D5C94084(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1D5C94134()
{
  result = qword_1EDF2E200;
  if (!qword_1EDF2E200)
  {
    sub_1D5C80140(255, &qword_1EDF2E1F8, sub_1D5B57A00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2E200);
  }

  return result;
}

unint64_t sub_1D5C941B8()
{
  result = qword_1EDF2ED38;
  if (!qword_1EDF2ED38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2ED38);
  }

  return result;
}

void sub_1D5C9420C()
{
  if (!qword_1EDF255F0)
  {
    sub_1D5C94324();
    sub_1D5C75A74();
    sub_1D5C86CC8();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF255F0);
    }
  }
}

void sub_1D5C94290()
{
  if (!qword_1EDF1A208)
  {
    sub_1D5C9420C();
    sub_1D5B58B84(&qword_1EDF255F8, sub_1D5C9420C);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A208);
    }
  }
}

unint64_t sub_1D5C94324()
{
  result = qword_1EDF2ED50;
  if (!qword_1EDF2ED50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2ED50);
  }

  return result;
}

uint64_t FormatSymbolName.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_1D5C2FF94(0, &qword_1EDF3C650, MEMORY[0x1E69E6F48]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v27 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (v2)
  {
LABEL_9:
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D7264AEC();
    __swift_project_boxed_opaque_existential_1(&v28, v31);
    v21 = sub_1D72646FC();
    v23 = v22;

    __swift_destroy_boxed_opaque_existential_1(&v28);
    v24 = 0;
    v25 = 0;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v12 = sub_1D7264AFC();
    v13 = Dictionary<>.errorOnUnknownKeys.getter(v12);

    if (v13)
    {
      v14 = sub_1D726433C();
      v15 = (v14 + 40);
      v16 = *(v14 + 16) + 1;
      while (--v16)
      {
        v17 = v15 + 2;
        v18 = *v15;
        v15 += 2;
        if (v18 >= 4)
        {
          v19 = *(v17 - 3);

          sub_1D5E2D970();
          v3 = swift_allocError();
          *v20 = v19;
          *(v20 + 8) = v18;
          *(v20 + 16) = &unk_1F51123B0;
          *(v20 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v8 + 8))(v11, v7);
          goto LABEL_9;
        }
      }
    }

    sub_1D5C851F4();
    v28 = 0;
    v29 = 0;
    sub_1D726431C();
    if (v27)
    {
      sub_1D5C947A8();
      v27 = xmmword_1D7279980;
      sub_1D5C75E0C(&qword_1EDF419A8, sub_1D5C947A8);
      sub_1D726431C();
      (*(v8 + 8))(v11, v7);
      v24 = 0;
      v25 = 0;
      v21 = v28;
      v23 = v29;
    }

    else
    {
      v27 = xmmword_1D7279980;
      sub_1D5C6A164();
      sub_1D726431C();
      (*(v8 + 8))(v11, v7);
      v21 = v28;
      v23 = v29;
      v25 = 1;
      v24 = v30;
    }
  }

  *a2 = v21;
  *(a2 + 8) = v23;
  *(a2 + 16) = v24;
  *(a2 + 24) = v25;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D5C947A8()
{
  if (!qword_1EDF419A0)
  {
    v0 = type metadata accessor for FormatValue();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF419A0);
    }
  }
}

unint64_t sub_1D5C94800()
{
  result = qword_1EDF2D9E0;
  if (!qword_1EDF2D9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2D9E0);
  }

  return result;
}

uint64_t sub_1D5C94854(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 17) = -a2;
    }
  }

  return result;
}

uint64_t FormatSymbolConfig.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v30 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v27 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (v2)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v11 = sub_1D7264AFC();
    v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

    v13 = v30;
    v14 = v10;
    if (v12)
    {
      v15 = sub_1D726433C();
      v16 = (v15 + 40);
      v17 = *(v15 + 16) + 1;
      while (--v17)
      {
        v18 = v16 + 2;
        v19 = *v16;
        v16 += 2;
        if (v19 >= 4)
        {
          v20 = *(v18 - 3);

          sub_1D5E2D970();
          v3 = swift_allocError();
          *v21 = v20;
          *(v21 + 8) = v19;
          *(v21 + 16) = &unk_1F5117B08;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v7 + 8))(v14, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D5C94D08();
    v28 = 0uLL;
    sub_1D726431C();
    v23 = v27;
    if (v27 <= 1u)
    {
      if (v27)
      {
        v27 = xmmword_1D7279980;
        sub_1D66C35A0();
        sub_1D726431C();
        (*(v7 + 8))(v14, v6);
        v25 = v28;
        v26 = *(&v28 + 1);
        v24 = v29;
      }

      else
      {
        v28 = xmmword_1D7279980;
        sub_1D66C35F4();
        sub_1D726431C();
        (*(v7 + 8))(v14, v6);
        v24 = 0;
        v25 = v27;
        v26 = BYTE8(v27);
      }
    }

    else if (v27 == 2)
    {
      v28 = xmmword_1D7279980;
      sub_1D5C94E38();
      sub_1D726431C();
      (*(v7 + 8))(v14, v6);
      v24 = 0;
      v25 = v27;
      v26 = WORD4(v27);
    }

    else
    {
      v28 = xmmword_1D7279980;
      if (v27 == 3)
      {
        sub_1D66C354C();
      }

      else
      {
        sub_1D66C34F8();
      }

      sub_1D726431C();
      (*(v7 + 8))(v14, v6);
      v26 = 0;
      v24 = 0;
      v25 = v27;
    }

    *v13 = v25;
    *(v13 + 8) = v26;
    *(v13 + 16) = v24;
    *(v13 + 17) = v23;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D5C94D08()
{
  result = qword_1EDF2DA68;
  if (!qword_1EDF2DA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2DA68);
  }

  return result;
}

uint64_t sub_1D5C94DBC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5C94DEC();
  *a1 = result;
  return result;
}

uint64_t sub_1D5C94DEC()
{
  v0 = sub_1D72641CC();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1D5C94E38()
{
  result = qword_1EDF2DA38;
  if (!qword_1EDF2DA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2DA38);
  }

  return result;
}

uint64_t sub_1D5C94E8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 10) = 1;
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

    *(result + 10) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D5C94ECC()
{
  if (!qword_1EDF25570)
  {
    sub_1D5C75FE4();
    sub_1D5C95344();
    sub_1D5C953EC();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF25570);
    }
  }
}

uint64_t FormatSymbolConfig.Size.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v27 = a2;
  sub_1D5C75F50();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C94ECC();
  sub_1D5B58B84(&qword_1EDF25578, sub_1D5C94ECC);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v27;
  v14 = v7;
  if (v12)
  {
    v15 = sub_1D726433C();
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = (v15 + 48);
      while (*v17 != 1)
      {
        v17 += 24;
        if (!--v16)
        {
          goto LABEL_7;
        }
      }

      v20 = *(v17 - 2);
      v19 = *(v17 - 1);

      v21 = sub_1D6624A18();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v22 = v20;
      *(v22 + 8) = v19;
      *(v22 + 16) = v21;
      *(v22 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v10, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
  sub_1D5C35368();
  v28 = 0uLL;
  v29 = 0;
  sub_1D726431C();
  v18 = v30;
  v28 = xmmword_1D728CF30;
  v29 = 0;
  sub_1D5C76094();
  sub_1D726427C();
  v24 = v30;
  v28 = xmmword_1D7297410;
  v29 = 0;
  sub_1D5C954A4();
  sub_1D726427C();
  (*(v14 + 8))(v10, v6);
  v25 = v30;
  *v13 = v18;
  *(v13 + 8) = v24;
  *(v13 + 9) = v25;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D5C95344()
{
  result = qword_1EDF2DA58;
  if (!qword_1EDF2DA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2DA58);
  }

  return result;
}

unint64_t sub_1D5C95398()
{
  result = qword_1EDF2DA40;
  if (!qword_1EDF2DA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2DA40);
  }

  return result;
}

unint64_t sub_1D5C953EC()
{
  result = qword_1EDF2DA60;
  if (!qword_1EDF2DA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2DA60);
  }

  return result;
}

uint64_t sub_1D5C95440()
{
  v1 = 1702521203;
  v2 = 0x656C616373;
  if (*v0 != 2)
  {
    v2 = 1885433183;
  }

  if (*v0)
  {
    v1 = 0x746867696577;
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

unint64_t sub_1D5C954A4()
{
  result = qword_1EDF2ED28;
  if (!qword_1EDF2ED28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2ED28);
  }

  return result;
}

unint64_t sub_1D5C954F8()
{
  result = qword_1EDF29100;
  if (!qword_1EDF29100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29100);
  }

  return result;
}

uint64_t FormatButtonNodeStateMask.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v24 = a2;
  sub_1D5C95854();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C958E8();
  sub_1D5B58B84(&qword_1EDF250A8, sub_1D5C958E8);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v24;
  if (v12)
  {
    v14 = sub_1D726433C();
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = (v14 + 48);
      while (*v16 != 1)
      {
        v16 += 24;
        if (!--v15)
        {
          goto LABEL_7;
        }
      }

      v19 = *(v16 - 2);
      v18 = *(v16 - 1);

      v20 = sub_1D6628490(0x736574617473, 0xE600000000000000);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v21 = v19;
      *(v21 + 8) = v18;
      *(v21 + 16) = v20;
      *(v21 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v10, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  v17 = sub_1D5C95A1C(v10, 0, 0, 0, sub_1D5C76330, sub_1D5C95854, &qword_1EDF3BE20, sub_1D5C76330);
  (*(v7 + 8))(v10, v6);
  *v13 = v17;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D5C95854()
{
  if (!qword_1EDF19F60)
  {
    sub_1D5C958E8();
    sub_1D5B58B84(&qword_1EDF250A8, sub_1D5C958E8);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19F60);
    }
  }
}

void sub_1D5C958E8()
{
  if (!qword_1EDF250A0)
  {
    sub_1D5C76234();
    sub_1D5C9596C();
    sub_1D5C959C8();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF250A0);
    }
  }
}

unint64_t sub_1D5C9596C()
{
  result = qword_1EDF25748;
  if (!qword_1EDF25748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF25748);
  }

  return result;
}

unint64_t sub_1D5C959C8()
{
  result = qword_1EDF25750;
  if (!qword_1EDF25750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF25750);
  }

  return result;
}

uint64_t sub_1D5C95A1C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t (*a5)(void), void (*a6)(void, __n128), unint64_t *a7, void (*a8)(uint64_t))
{
  v15 = a5(0);
  v26[0] = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  v19 = v26 - v18;
  v26[1] = a2;
  v26[2] = a3;
  v27 = a4 & 1;
  a6(0, v17);
  sub_1D5B58B84(a7, a8);
  v20 = a1;
  v21 = v28;
  sub_1D726431C();
  if (!v21)
  {
    v22 = v26[0];
    v23 = *(sub_1D725A74C() + 16);

    if (v23)
    {
      v20 = sub_1D725A74C();
    }

    else
    {
      sub_1D5E2D970();
      v20 = swift_allocError();
      *v25 = 1;
      v25[1] = 0;
      v25[2] = 0;
      v25[3] = 0;
      v25[4] = 0x8000000000000000;
      swift_willThrow();
    }

    (*(v22 + 8))(v19, v15);
  }

  return v20;
}

unint64_t sub_1D5C95C0C()
{
  result = qword_1EDF29C98;
  if (!qword_1EDF29C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29C98);
  }

  return result;
}

unint64_t sub_1D5C95C60()
{
  result = qword_1EDF29CB8;
  if (!qword_1EDF29CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29CB8);
  }

  return result;
}

unint64_t sub_1D5C95CB4()
{
  result = qword_1EDF29CB0;
  if (!qword_1EDF29CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29CB0);
  }

  return result;
}

unint64_t sub_1D5C95D10()
{
  result = qword_1EDF29CA8;
  if (!qword_1EDF29CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29CA8);
  }

  return result;
}

unint64_t sub_1D5C95D64()
{
  result = qword_1EDF29CA0;
  if (!qword_1EDF29CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29CA0);
  }

  return result;
}

NewsFeed::FormatButtonNodeState_optional __swiftcall FormatButtonNodeState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1D5C95E14()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t FormatMenu.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1D5C96240(0, &qword_1EDF19C80, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v16 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C7656C();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_1D5B49760(0, &qword_1EDF1B148, &type metadata for FormatMenuGroupable, MEMORY[0x1E69E62F8]);
  v17 = 0;
  sub_1D5C86D1C(&qword_1EDF1B140, sub_1D5C76668);
  sub_1D726427C();
  v16 = a2;
  v11 = v18;
  sub_1D5B49760(0, &qword_1EDF1B2F8, &type metadata for FormatMenuItem, MEMORY[0x1E69E62F8]);
  v17 = 1;
  sub_1D5C85250(&qword_1EDF1B2F0, sub_1D5C7671C);
  sub_1D726427C();
  v12 = v18;
  v17 = 2;
  sub_1D5C88A64();
  sub_1D726427C();
  (*(v7 + 8))(v10, v6);
  v13 = v18;
  v14 = v16;
  *v16 = v11;
  v14[1] = v12;
  *(v14 + 16) = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D5C96240(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D5C7656C();
    v7 = a3(a1, &type metadata for FormatMenu.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D5C962A4()
{
  result = qword_1EDF32548;
  if (!qword_1EDF32548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF32548);
  }

  return result;
}

unint64_t sub_1D5C962F8()
{
  result = qword_1EDF32538;
  if (!qword_1EDF32538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF32538);
  }

  return result;
}

unint64_t sub_1D5C96350()
{
  result = qword_1EDF32540;
  if (!qword_1EDF32540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF32540);
  }

  return result;
}

uint64_t sub_1D5C963A4()
{
  v1 = 0x656C746974;
  v2 = 0x6E6F69746361;
  if (*v0 != 2)
  {
    v2 = 1885433183;
  }

  if (*v0)
  {
    v1 = 0x6567616D69;
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

uint64_t sub_1D5C9640C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FF && *(a1 + 32))
  {
    return (*a1 + 1023);
  }

  v3 = (((2 * ((*(a1 + 8) >> 57) & 0x78 | *(a1 + 8) & 7)) | (*(a1 + 24) << 8)) & 0x3FE | (*(a1 + 24) >> 2) & 1) ^ 0x3FF;
  if (v3 >= 0x3FE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t FormatMenuTitle.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v29 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v27[-v9 - 16];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (v2)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v11 = sub_1D7264AFC();
    v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

    v13 = v10;
    if (v12)
    {
      v14 = sub_1D726433C();
      v15 = (v14 + 40);
      v16 = *(v14 + 16) + 1;
      while (--v16)
      {
        v17 = v15 + 2;
        v18 = *v15;
        v15 += 2;
        if (v18 >= 4)
        {
          v19 = *(v17 - 3);

          sub_1D5E2D970();
          v3 = swift_allocError();
          *v20 = v19;
          *(v20 + 8) = v18;
          *(v20 + 16) = &unk_1F51136A8;
          *(v20 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v7 + 8))(v13, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D5C76D88();
    *v27 = 0uLL;
    sub_1D726431C();
    if (v26)
    {
      *v27 = xmmword_1D7279980;
      sub_1D5C6F1D8();
      sub_1D726431C();
      v22 = v29;
      (*(v7 + 8))(v13, v6);
      v23 = v26;
      v24 = 0uLL;
      v25 = 4;
    }

    else
    {
      sub_1D5C86F28();
      v26 = xmmword_1D7279980;
      sub_1D5B58B84(&qword_1EDF2ED70, sub_1D5C86F28);
      sub_1D726431C();
      v22 = v29;
      (*(v7 + 8))(v13, v6);
      v23 = *v27;
      v24 = *&v27[8];
      v25 = v28;
    }

    *v22 = v23;
    *(v22 + 8) = v24;
    *(v22 + 24) = v25;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D5C96858()
{
  result = qword_1EDF2EC88;
  if (!qword_1EDF2EC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2EC88);
  }

  return result;
}

unint64_t sub_1D5C968AC(void *a1)
{
  a1[1] = sub_1D5C6F1D8();
  a1[2] = sub_1D5C76E3C();
  result = sub_1D5C86FB8();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5C96924()
{
  result = qword_1EDF27740;
  if (!qword_1EDF27740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF27740);
  }

  return result;
}

double sub_1D5C96978(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 106) = 0;
    *(a1 + 104) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 107) = 1;
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
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 48) = -a2 << 11;
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      *(a1 + 103) = 0;
      return result;
    }

    *(a1 + 107) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D5C969F8()
{
  result = qword_1EDF27750;
  if (!qword_1EDF27750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF27750);
  }

  return result;
}

uint64_t sub_1D5C96A4C()
{
  v0 = sub_1D72641CC();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D5C96A98(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1FA && *(a1 + 107))
  {
    return (*a1 + 506);
  }

  v3 = ((*(a1 + 106) >> 5) | (8 * ((*(a1 + 104) >> 11) & 0xFFFFFFDF | (32 * ((*(a1 + 106) >> 4) & 1))))) ^ 0x1FF;
  if (v3 >= 0x1F9)
  {
    v3 = -1;
  }

  return v3 + 1;
}

void sub_1D5C96AF8()
{
  if (!qword_1EDF19EC0)
  {
    sub_1D5C77030();
    sub_1D5B58B84(&qword_1EDF24F68, sub_1D5C77030);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19EC0);
    }
  }
}

unint64_t sub_1D5C96BA4()
{
  result = qword_1EDF22958;
  if (!qword_1EDF22958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF22958);
  }

  return result;
}

uint64_t FormatTextContent.init(from:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = v2;
  v66 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v52 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (v2)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    v22 = a1;
  }

  else
  {
    v11 = a1[3];
    v55 = a1;
    __swift_project_boxed_opaque_existential_1(a1, v11);
    v12 = sub_1D7264AFC();
    LOBYTE(v11) = Dictionary<>.errorOnUnknownKeys.getter(v12);

    v13 = v66;
    v14 = v10;
    if (v11)
    {
      v15 = sub_1D726433C();
      v16 = (v15 + 40);
      v17 = *(v15 + 16) + 1;
      while (--v17)
      {
        v18 = v16 + 2;
        v19 = *v16;
        v16 += 2;
        if (v19 >= 4)
        {
          v20 = *(v18 - 3);

          sub_1D5E2D970();
          v3 = swift_allocError();
          *v21 = v20;
          *(v21 + 8) = v19;
          *(v21 + 16) = &unk_1F5117DB0;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v7 + 8))(v14, v6);
          a1 = v55;
          goto LABEL_9;
        }
      }
    }

    sub_1D5C97698();
    v56 = 0uLL;
    sub_1D726431C();
    if (v65 > 4u)
    {
      if (v65 <= 6u)
      {
        if (v65 == 5)
        {
          sub_1D5C30060(0, &qword_1EDF2EDE8, sub_1D5C96858, &type metadata for FormatTextContent, type metadata accessor for FormatSwitchValue);
          v65 = xmmword_1D7279980;
          sub_1D5CA1D74();
          sub_1D726431C();
          (*(v7 + 8))(v14, v6);
          v31 = v56;
          v32 = swift_allocObject();
          *(v32 + 16) = v31;
          v26 = v32 | 0x5000000000000000;
        }

        else
        {
          v65 = xmmword_1D7279980;
          sub_1D5F2C4D8();
          sub_1D726431C();
          (*(v7 + 8))(v14, v6);
          v46 = swift_allocObject();
          v47 = v63;
          *(v46 + 112) = v62;
          *(v46 + 128) = v47;
          *(v46 + 144) = v64;
          v48 = v59;
          *(v46 + 48) = v58;
          *(v46 + 64) = v48;
          v49 = v61;
          *(v46 + 80) = v60;
          *(v46 + 96) = v49;
          v50 = v57;
          v26 = v46 | 0x6000000000000000;
          *(v46 + 16) = v56;
          *(v46 + 32) = v50;
        }
      }

      else if (v65 == 7)
      {
        v65 = xmmword_1D7279980;
        sub_1D66C577C();
        sub_1D726431C();
        (*(v7 + 8))(v14, v6);
        v35 = v56;
        v36 = swift_allocObject();
        *(v36 + 16) = v35;
        v26 = v36 | 0x7000000000000000;
      }

      else if (v65 == 8)
      {
        v65 = xmmword_1D7279980;
        sub_1D66C5728();
        sub_1D726431C();
        (*(v7 + 8))(v14, v6);
        v54 = v58;
        v27 = v59;
        v53 = v56;
        v52 = v57;
        v28 = swift_allocObject();
        v29 = v52;
        *(v28 + 16) = v53;
        *(v28 + 32) = v29;
        *(v28 + 48) = v54;
        *(v28 + 64) = v27;
        v26 = v28 | 0x8000000000000000;
      }

      else
      {
        sub_1D5C30060(0, &qword_1EDF2C120, sub_1D5C96858, &type metadata for FormatTextContent, type metadata accessor for FormatSelectorValue);
        v65 = xmmword_1D7279980;
        sub_1D66C5698();
        sub_1D726431C();
        (*(v7 + 8))(v14, v6);
        v42 = v56;
        v43 = swift_allocObject();
        *(v43 + 16) = v42;
        v26 = v43 | 0x9000000000000000;
      }
    }

    else if (v65 <= 1u)
    {
      if (v65)
      {
        sub_1D5C34074(0, &qword_1EDF419A0, MEMORY[0x1E69E6158], &protocol witness table for String, type metadata accessor for FormatValue);
        v65 = xmmword_1D7279980;
        sub_1D5C34150();
        sub_1D726431C();
        (*(v7 + 8))(v14, v6);
        v44 = v56;
        v45 = swift_allocObject();
        *(v45 + 16) = v44;
        v26 = v45 | 0x1000000000000000;
      }

      else
      {
        v65 = xmmword_1D7279980;
        sub_1D5C77160();
        sub_1D726431C();
        (*(v7 + 8))(v14, v6);
        v26 = swift_allocObject();
        v30 = v57;
        *(v26 + 16) = v56;
        *(v26 + 32) = v30;
        *(v26 + 48) = v58;
        *(v26 + 64) = v59;
      }
    }

    else if (v65 == 2)
    {
      sub_1D5C34074(0, &qword_1EDF419A0, MEMORY[0x1E69E6158], &protocol witness table for String, type metadata accessor for FormatValue);
      v65 = xmmword_1D7279980;
      sub_1D5C34150();
      sub_1D726431C();
      (*(v7 + 8))(v14, v6);
      v33 = v56;
      v34 = swift_allocObject();
      *(v34 + 16) = v33;
      v26 = v34 | 0x2000000000000000;
    }

    else if (v65 == 3)
    {
      v65 = xmmword_1D7279980;
      sub_1D5C97738();
      sub_1D726431C();
      (*(v7 + 8))(v14, v6);
      v24 = v56;
      v25 = swift_allocObject();
      *(v25 + 16) = v24;
      v26 = v25 | 0x3000000000000000;
    }

    else
    {
      v65 = xmmword_1D7279980;
      sub_1D5CCEDF0();
      sub_1D726431C();
      (*(v7 + 8))(v14, v6);
      v37 = v56;
      v38 = BYTE8(v56);
      v39 = v57;
      v40 = v58;
      v41 = swift_allocObject();
      *(v41 + 16) = v37;
      *(v41 + 24) = v38;
      *(v41 + 32) = v39;
      v26 = v41 | 0x4000000000000000;
      *(v41 + 48) = v40;
    }

    v51 = v55;
    *v13 = v26;
    v22 = v51;
  }

  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t sub_1D5C97574()
{
  sub_1D5F33D8C(*(v0 + 16));
  if ((*(v0 + 40) - 1) >= 2)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D5C975C8()
{

  return swift_deallocObject();
}

uint64_t sub_1D5C97610()
{
  sub_1D5F2C6E8(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1D5C9764C()
{

  sub_1D5D2F2C8(*(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

unint64_t sub_1D5C97698()
{
  result = qword_1EDF2ECA8;
  if (!qword_1EDF2ECA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2ECA8);
  }

  return result;
}

uint64_t sub_1D5C976EC()
{
  v0 = sub_1D72641CC();

  if (v0 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1D5C97738()
{
  result = qword_1EDF3A6F0;
  if (!qword_1EDF3A6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3A6F0);
  }

  return result;
}

unint64_t sub_1D5C9778C()
{
  result = qword_1EDF3A740;
  if (!qword_1EDF3A740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3A740);
  }

  return result;
}

unint64_t sub_1D5C977E4()
{
  result = qword_1EDF3A728;
  if (!qword_1EDF3A728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3A728);
  }

  return result;
}

uint64_t FormatTextNodeFormat.Token.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v46 = a2;
  sub_1D5C8CD38();
  v44 = *(v5 - 8);
  v45 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C85D84();
  v10 = v9;
  v51 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C78414();
  sub_1D5B58B84(&qword_1EDF24B28, sub_1D5C78414);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    v30 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v30);
  }

  v42 = v8;
  v43 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = sub_1D7264AFC();
  v15 = Dictionary<>.errorOnUnknownKeys.getter(v14);

  v17 = v45;
  v16 = v46;
  v18 = v44;
  if (v15)
  {
    v19 = sub_1D726433C();
    v20 = *(v19 + 16);
    if (v20)
    {
      v21 = (v19 + 48);
      while (*v21 != 1)
      {
        v21 += 24;
        if (!--v20)
        {
          goto LABEL_7;
        }
      }

      v27 = *(v21 - 2);
      v26 = *(v21 - 1);

      v28 = sub_1D6617EEC();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v29 = v27;
      *(v29 + 8) = v26;
      *(v29 + 16) = v28;
      *(v29 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v51 + 8))(v13, v10);
      a1 = v43;
      goto LABEL_10;
    }

LABEL_7:
  }

  v49 = 0uLL;
  v50 = 0;
  v22 = sub_1D72642BC();
  v24 = v23;
  v25 = v22;
  v49 = xmmword_1D728CF30;
  v50 = 0;
  sub_1D5C6F1D8();
  sub_1D726431C();
  v40 = v25;
  v41 = v24;
  v32 = v47;
  type metadata accessor for FormatTextNodeStyle();
  v49 = xmmword_1D7297410;
  v50 = 0;
  sub_1D5B58B84(&qword_1EDF2BD80, type metadata accessor for FormatTextNodeStyle);
  sub_1D726427C();
  v39 = v32;
  v33 = v47;
  v38 = xmmword_1D72BAA60;
  v49 = xmmword_1D72BAA60;
  v50 = 0;
  if (sub_1D726434C())
  {
    v47 = v38;
    v48 = 0;
    sub_1D5B58B84(&qword_1EDF3BE00, sub_1D5C8CD38);
    v34 = v42;
    sub_1D726431C();
    v35 = sub_1D725A74C();
    (*(v18 + 8))(v34, v17);
  }

  else
  {
    v35 = MEMORY[0x1E69E7CD0];
  }

  v36 = v39;
  (*(v51 + 8))(v13, v10);
  v37 = v41;
  *v16 = v40;
  v16[1] = v37;
  v16[2] = v36;
  v16[3] = v33;
  v16[4] = v35;
  v30 = v43;
  return __swift_destroy_boxed_opaque_existential_1(v30);
}

unint64_t sub_1D5C97DA4()
{
  result = qword_1EDF3A708;
  if (!qword_1EDF3A708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3A708);
  }

  return result;
}

unint64_t sub_1D5C97DF8()
{
  result = qword_1EDF3A720;
  if (!qword_1EDF3A720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3A720);
  }

  return result;
}

unint64_t sub_1D5C97E4C()
{
  result = qword_1EDF22968;
  if (!qword_1EDF22968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF22968);
  }

  return result;
}

uint64_t FormatBindingBoolExpression.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v27 = a2;
  sub_1D5C98234();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C785D0();
  sub_1D5B58B84(&qword_1EDF24F78, sub_1D5C785D0);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_11:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v27;
  v14 = v7;
  if (v12)
  {
    v15 = sub_1D726433C();
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = (v15 + 48);
      while (*v17 != 1)
      {
        v17 += 24;
        if (!--v16)
        {
          goto LABEL_7;
        }
      }

      v22 = *(v17 - 2);
      v21 = *(v17 - 1);

      v23 = sub_1D6627E68(0x676E69646E6962, 0xE700000000000000, 0x65756C6176, 0xE500000000000000);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v24 = v22;
      *(v24 + 8) = v21;
      *(v24 + 16) = v23;
      *(v24 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v10, v6);
      goto LABEL_11;
    }

LABEL_7:
  }

  sub_1D5C98388();
  v30 = 0uLL;
  v31 = 0;
  sub_1D726431C();
  v18 = v28;
  v19 = WORD4(v28);
  v26 = xmmword_1D728CF30;
  v30 = xmmword_1D728CF30;
  v31 = 0;
  if (sub_1D726434C())
  {
    v28 = v26;
    v29 = 0;
    sub_1D726431C();
    (*(v14 + 8))(v10, v6);
    v20 = v32;
  }

  else
  {
    (*(v14 + 8))(v10, v6);
    v20 = 1;
  }

  *v13 = v18;
  *(v13 + 8) = v19;
  *(v13 + 10) = v20;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D5C98234()
{
  if (!qword_1EDF19EC8)
  {
    sub_1D5C785D0();
    sub_1D5B58B84(&qword_1EDF24F78, sub_1D5C785D0);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19EC8);
    }
  }
}

unint64_t sub_1D5C982E0()
{
  result = qword_1EDF22988;
  if (!qword_1EDF22988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF22988);
  }

  return result;
}

unint64_t sub_1D5C98334()
{
  result = qword_1EDF22990;
  if (!qword_1EDF22990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF22990);
  }

  return result;
}

unint64_t sub_1D5C98388()
{
  result = qword_1EDF2F8E0;
  if (!qword_1EDF2F8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2F8E0);
  }

  return result;
}

uint64_t FormatBoolBinding.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v29 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v26 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (v2)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();
  }

  else
  {
    v11 = v7;
    v12 = a1;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v13 = sub_1D7264AFC();
    v14 = Dictionary<>.errorOnUnknownKeys.getter(v13);

    if (v14)
    {
      v15 = sub_1D726433C();
      v16 = (v15 + 40);
      v17 = *(v15 + 16) + 1;
      while (--v17)
      {
        v18 = v16 + 2;
        v19 = *v16;
        v16 += 2;
        if (v19 >= 4)
        {
          v20 = *(v18 - 3);

          sub_1D5E2D970();
          v3 = swift_allocError();
          *v21 = v20;
          *(v21 + 8) = v19;
          *(v21 + 16) = &unk_1F5114518;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v10, v6);
          a1 = v12;
          goto LABEL_9;
        }
      }
    }

    sub_1D5C78814();
    v28 = 0uLL;
    sub_1D726431C();
    if (v26 <= 3u)
    {
      v23 = v29;
      a1 = v12;
      if (v26 > 1u)
      {
        v28 = xmmword_1D7279980;
        if (v26 == 2)
        {
          sub_1D667C7B0();
          sub_1D726431C();
          (*(v11 + 8))(v10, v6);
          v24 = v26;
          v25 = 0x2000;
        }

        else
        {
          sub_1D5C78914();
          sub_1D726431C();
          (*(v11 + 8))(v10, v6);
          v24 = v26;
          v25 = v27 | 0x3000;
        }
      }

      else
      {
        v28 = xmmword_1D7279980;
        if (v26)
        {
          sub_1D5CC17FC();
          sub_1D726431C();
          (*(v11 + 8))(v10, v6);
          v24 = v26;
          v25 = 4096;
        }

        else
        {
          sub_1D5CC7648();
          sub_1D726431C();
          (*(v11 + 8))(v10, v6);
          v25 = 0;
          v24 = v26;
        }
      }
    }

    else
    {
      v23 = v29;
      a1 = v12;
      if (v26 <= 5u)
      {
        v28 = xmmword_1D7279980;
        if (v26 == 4)
        {
          sub_1D5C78A70();
          sub_1D726431C();
          (*(v11 + 8))(v10, v6);
          v24 = v26;
          v25 = 0x4000;
        }

        else
        {
          sub_1D5EBFE84();
          sub_1D726431C();
          (*(v11 + 8))(v10, v6);
          v24 = v26;
          v25 = v27 | 0x5000;
        }
      }

      else if (v26 == 6)
      {
        v28 = xmmword_1D7279980;
        sub_1D667C75C();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v24 = v26;
        v25 = 24576;
      }

      else
      {
        v28 = xmmword_1D7279980;
        if (v26 == 7)
        {
          sub_1D6199F1C();
          sub_1D726431C();
          (*(v11 + 8))(v10, v6);
          v24 = v26;
          v25 = 28672;
        }

        else
        {
          sub_1D667C708();
          sub_1D726431C();
          (*(v11 + 8))(v10, v6);
          v24 = v26;
          v25 = 0x8000;
        }
      }
    }

    *v23 = v24;
    *(v23 + 8) = v25;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D5C98A5C()
{
  result = qword_1EDF2F8F0;
  if (!qword_1EDF2F8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2F8F0);
  }

  return result;
}

uint64_t sub_1D5C98AB0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5C788C8();
  *a1 = result;
  return result;
}

uint64_t FormatGroupBinding.Bool.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v30 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v27 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (!v2)
  {
    v11 = v7;
    v12 = a1;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v13 = sub_1D7264AFC();
    v14 = Dictionary<>.errorOnUnknownKeys.getter(v13);

    if (v14)
    {
      v15 = sub_1D726433C();
      v16 = (v15 + 40);
      v17 = *(v15 + 16) + 1;
      while (--v17)
      {
        v18 = v16 + 2;
        v19 = *v16;
        v16 += 2;
        if (v19 >= 4)
        {
          v20 = *(v18 - 3);

          sub_1D5E2D970();
          v3 = swift_allocError();
          *v21 = v20;
          *(v21 + 8) = v19;
          *(v21 + 16) = &unk_1F5115008;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v10, v6);
          a1 = v12;
          goto LABEL_9;
        }
      }
    }

    sub_1D5C991EC();
    v29 = 0uLL;
    sub_1D726431C();
    a1 = v12;
    if (v27 > 4u)
    {
      v23 = v30;
      if (v27 <= 6u)
      {
        if (v27 != 5)
        {
          v29 = xmmword_1D7279980;
          sub_1D5C78A70();
          sub_1D726431C();
          (*(v11 + 8))(v10, v6);
          v26 = 0;
          v24 = v27;
          v25 = 3;
          goto LABEL_30;
        }

        v29 = xmmword_1D7279980;
        sub_1D5C78A70();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v24 = v27;
        v25 = 2;
        goto LABEL_29;
      }

      if (v27 == 7)
      {
        v29 = xmmword_1D7279980;
        sub_1D5CC7648();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v24 = v27;
        v25 = 3;
        goto LABEL_29;
      }

      if (v27 != 8)
      {
        v29 = xmmword_1D7279980;
        sub_1D6199F1C();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v24 = v27;
        v25 = 4;
        goto LABEL_29;
      }

      v29 = xmmword_1D7279980;
      sub_1D5EBFE84();
      sub_1D726431C();
      (*(v11 + 8))(v10, v6);
      v24 = v27;
      v26 = v28;
      v25 = 4;
    }

    else
    {
      v23 = v30;
      if (v27 <= 1u)
      {
        if (v27)
        {
          v29 = xmmword_1D7279980;
          sub_1D5C78A70();
          sub_1D726431C();
          (*(v11 + 8))(v10, v6);
          v25 = 0;
          v24 = v27;
          goto LABEL_29;
        }

        v29 = xmmword_1D7279980;
        sub_1D5CC17FC();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v26 = 0;
        v25 = 0;
        v24 = v27;
      }

      else if (v27 == 2)
      {
        v29 = xmmword_1D7279980;
        sub_1D667C7B0();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v26 = 0;
        v24 = v27;
        v25 = 1;
      }

      else
      {
        if (v27 == 3)
        {
          v29 = xmmword_1D7279980;
          sub_1D61E1BE4();
          sub_1D726431C();
          (*(v11 + 8))(v10, v6);
          v24 = v27;
          v25 = 1;
LABEL_29:
          v26 = 32;
          goto LABEL_30;
        }

        v29 = xmmword_1D7279980;
        sub_1D668F484();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v26 = 0;
        v24 = v27;
        v25 = 2;
      }
    }

LABEL_30:
    *v23 = v24;
    *(v23 + 8) = v26;
    *(v23 + 9) = v25;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

LABEL_9:
  sub_1D61E4FBC(a1, v3);
  swift_willThrow();

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D5C991EC()
{
  result = qword_1EDF2E010;
  if (!qword_1EDF2E010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2E010);
  }

  return result;
}

uint64_t sub_1D5C99240@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5C99270();
  *a1 = result;
  return result;
}

uint64_t sub_1D5C99270()
{
  v0 = sub_1D72641CC();

  if (v0 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D5C992C4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE5)
  {
    goto LABEL_17;
  }

  if (a2 + 27 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 27) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 27;
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

      return (*a1 | (v4 << 8)) - 27;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 27;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1C;
  v8 = v6 - 28;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

void sub_1D5C99354()
{
  if (!qword_1EDF1A168)
  {
    sub_1D5C79054();
    sub_1D5B58B84(&qword_1EDF254B8, sub_1D5C79054);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A168);
    }
  }
}

uint64_t FormatNotExpression.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v22[0] = a2;
  sub_1D5C99354();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C79054();
  sub_1D5B58B84(&qword_1EDF254B8, sub_1D5C79054);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v22[0];
  if (v12)
  {
    v14 = sub_1D726433C();
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = (v14 + 48);
      while (*v16 != 1)
      {
        v16 += 24;
        if (!--v15)
        {
          goto LABEL_7;
        }
      }

      v18 = *(v16 - 2);
      v17 = *(v16 - 1);

      v19 = sub_1D6628490(0x6973736572707865, 0xEA00000000006E6FLL);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v20 = v18;
      *(v20 + 8) = v17;
      *(v20 + 16) = v19;
      *(v20 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v10, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D5C55EBC();
  v22[1] = 0;
  v22[2] = 0;
  v23 = 0;
  sub_1D726431C();
  (*(v7 + 8))(v10, v6);
  *v13 = v24;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D5C996D4()
{
  result = qword_1EDF2C320;
  if (!qword_1EDF2C320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2C320);
  }

  return result;
}

unint64_t sub_1D5C9972C()
{
  result = qword_1EDF2C310;
  if (!qword_1EDF2C310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2C310);
  }

  return result;
}

unint64_t sub_1D5C99780()
{
  result = qword_1EDF2C328;
  if (!qword_1EDF2C328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2C328);
  }

  return result;
}

uint64_t sub_1D5C997D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x67 && *(a1 + 8))
  {
    return (*a1 + 103);
  }

  v3 = ((((*a1 >> 57) & 0x78 | *a1 & 7) >> 2) & 0xFFFFFF9F | (32 * (*a1 & 3))) ^ 0x7F;
  if (v3 >= 0x66)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D5C99830(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x66)
  {
    *result = a2 - 103;
    if (a3 >= 0x67)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x67)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 5) & 3 | (4 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t FormatAdjustment.init(from:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v83 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v79 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  v10 = v2;
  if (v2)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v10);
    swift_willThrow();
  }

  else
  {
    v11 = v6;
    v12 = v83;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v13 = sub_1D7264AFC();
    v14 = Dictionary<>.errorOnUnknownKeys.getter(v13);

    if (v14)
    {
      v15 = sub_1D726433C();
      v16 = (v15 + 40);
      v17 = *(v15 + 16) + 1;
      while (--v17)
      {
        v18 = v16 + 2;
        v19 = *v16;
        v16 += 2;
        if (v19 >= 4)
        {
          v20 = *(v18 - 3);

          sub_1D5E2D970();
          v10 = swift_allocError();
          *v21 = v20;
          *(v21 + 8) = v19;
          *(v21 + 16) = &unk_1F5111FB0;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v9, v5);
          goto LABEL_9;
        }
      }
    }

    sub_1D5C9ADDC();
    *v82 = 0uLL;
    sub_1D726431C();
    v23 = v12;
    switch(v81)
    {
      case 1:
        sub_1D5C30060(0, &qword_1EDF33F38, sub_1D5C9FDB4, &type metadata for FormatAnchor, type metadata accessor for FormatValue);
        *v82 = xmmword_1D7279980;
        sub_1D5C9FF3C();
        sub_1D726431C();
        (*(v11 + 8))(v9, v5);
        v52 = v81;
        v53 = swift_allocObject();
        *(v53 + 16) = v52;
        v24 = v53 | 4;
        break;
      case 2:
        v81 = xmmword_1D7279980;
        sub_1D5C8DC6C();
        sub_1D726431C();
        (*(v11 + 8))(v9, v5);
        v80 = *v82;
        v45 = swift_allocObject();
        *(v45 + 16) = v80;
        v24 = v45 | 0x1000000000000000;
        break;
      case 3:
        v24 = 0xC000000000000004;
        (*(v11 + 8))(v9, v5);
        break;
      case 4:
        sub_1D5C71DC8();
        *v82 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF33F30, sub_1D5C71DC8);
        sub_1D726431C();
        (*(v11 + 8))(v9, v5);
        v35 = v81;
        v36 = swift_allocObject();
        *(v36 + 16) = v35;
        v24 = v36 | 0x1000000000000004;
        break;
      case 5:
        sub_1D5C71DC8();
        *v82 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF33F30, sub_1D5C71DC8);
        sub_1D726431C();
        (*(v11 + 8))(v9, v5);
        v58 = v81;
        v59 = swift_allocObject();
        *(v59 + 16) = v58;
        v24 = v59 | 0x2000000000000000;
        break;
      case 6:
        sub_1D5C71DC8();
        *v82 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF33F30, sub_1D5C71DC8);
        sub_1D726431C();
        (*(v11 + 8))(v9, v5);
        v62 = v81;
        v63 = swift_allocObject();
        *(v63 + 16) = v62;
        v24 = v63 | 0x2000000000000004;
        break;
      case 7:
        sub_1D5C71DC8();
        *v82 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF33F30, sub_1D5C71DC8);
        sub_1D726431C();
        (*(v11 + 8))(v9, v5);
        v50 = v81;
        v51 = swift_allocObject();
        *(v51 + 16) = v50;
        v24 = v51 | 0x3000000000000000;
        break;
      case 8:
        sub_1D5C71DC8();
        *v82 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF33F30, sub_1D5C71DC8);
        sub_1D726431C();
        (*(v11 + 8))(v9, v5);
        v69 = v81;
        v70 = swift_allocObject();
        *(v70 + 16) = v69;
        v24 = v70 | 0x3000000000000004;
        break;
      case 9:
        sub_1D5C71DC8();
        *v82 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF33F30, sub_1D5C71DC8);
        sub_1D726431C();
        (*(v11 + 8))(v9, v5);
        v39 = v81;
        v40 = swift_allocObject();
        *(v40 + 16) = v39;
        v24 = v40 | 0x4000000000000000;
        break;
      case 10:
        *v82 = xmmword_1D7279980;
        sub_1D5CBA7C4();
        sub_1D726431C();
        (*(v11 + 8))(v9, v5);
        v66 = v81;
        v67 = BYTE8(v81);
        v68 = swift_allocObject();
        *(v68 + 16) = v66;
        *(v68 + 24) = v67;
        v24 = v68 | 0x4000000000000004;
        break;
      case 11:
        sub_1D5C71DC8();
        *v82 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF33F30, sub_1D5C71DC8);
        sub_1D726431C();
        (*(v11 + 8))(v9, v5);
        v33 = v81;
        v34 = swift_allocObject();
        *(v34 + 16) = v33;
        v24 = v34 | 0x5000000000000000;
        break;
      case 12:
        sub_1D5C71DC8();
        *v82 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF33F30, sub_1D5C71DC8);
        sub_1D726431C();
        (*(v11 + 8))(v9, v5);
        v37 = v81;
        v38 = swift_allocObject();
        *(v38 + 16) = v37;
        v24 = v38 | 0x5000000000000004;
        break;
      case 13:
        (*(v11 + 8))(v9, v5);
        v24 = 0xC00000000000000CLL;
        break;
      case 14:
        sub_1D5C30060(0, &qword_1EDF33F38, sub_1D5C9FDB4, &type metadata for FormatAnchor, type metadata accessor for FormatValue);
        *v82 = xmmword_1D7279980;
        sub_1D5C9FF3C();
        sub_1D726431C();
        (*(v11 + 8))(v9, v5);
        v31 = v81;
        v32 = swift_allocObject();
        *(v32 + 16) = v31;
        v24 = v32 | 0x6000000000000000;
        break;
      case 15:
        v81 = xmmword_1D7279980;
        sub_1D5C9F528();
        sub_1D726431C();
        (*(v11 + 8))(v9, v5);
        v46 = v82[0];
        v47 = *&v82[8];
        v48 = *&v82[16];
        v49 = swift_allocObject();
        *(v49 + 16) = v46;
        *(v49 + 24) = v47;
        *(v49 + 32) = v48;
        v24 = v49 | 0x6000000000000004;
        break;
      case 16:
        *v82 = xmmword_1D7279980;
        sub_1D5CA16F8();
        sub_1D726431C();
        (*(v11 + 8))(v9, v5);
        v29 = v81;
        v30 = swift_allocObject();
        *(v30 + 16) = v29;
        v24 = v30 | 0x7000000000000000;
        break;
      case 17:
        *v82 = xmmword_1D7279980;
        sub_1D5CA16F8();
        sub_1D726431C();
        (*(v11 + 8))(v9, v5);
        v54 = v81;
        v55 = swift_allocObject();
        *(v55 + 16) = v54;
        v24 = v55 | 0x7000000000000004;
        break;
      case 18:
        v81 = xmmword_1D7279980;
        sub_1D5CA00E8();
        sub_1D726431C();
        (*(v11 + 8))(v9, v5);
        v64 = *v82;
        v80 = *&v82[8];
        v65 = swift_allocObject();
        *(v65 + 16) = v64;
        *(v65 + 24) = v80;
        v24 = v65 | 0x8000000000000000;
        break;
      case 19:
        v81 = xmmword_1D7279980;
        sub_1D5CA00E8();
        sub_1D726431C();
        (*(v11 + 8))(v9, v5);
        v73 = *v82;
        v80 = *&v82[8];
        v74 = swift_allocObject();
        *(v74 + 16) = v73;
        *(v74 + 24) = v80;
        v24 = v74 | 0x8000000000000004;
        break;
      case 20:
        v81 = xmmword_1D7279980;
        sub_1D5CA00E8();
        sub_1D726431C();
        (*(v11 + 8))(v9, v5);
        v56 = *v82;
        v80 = *&v82[8];
        v57 = swift_allocObject();
        *(v57 + 16) = v56;
        *(v57 + 24) = v80;
        v24 = v57 | 0x9000000000000000;
        break;
      case 21:
        v81 = xmmword_1D7279980;
        sub_1D5CA00E8();
        sub_1D726431C();
        (*(v11 + 8))(v9, v5);
        v60 = *v82;
        v80 = *&v82[8];
        v61 = swift_allocObject();
        *(v61 + 16) = v60;
        *(v61 + 24) = v80;
        v24 = v61 | 0x9000000000000004;
        break;
      case 22:
        sub_1D5C5A334();
        *v82 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF33F20, sub_1D5C5A334);
        sub_1D726431C();
        (*(v11 + 8))(v9, v5);
        v71 = v81;
        v72 = swift_allocObject();
        *(v72 + 16) = v71;
        v24 = v72 | 0xA000000000000000;
        break;
      case 23:
        sub_1D5C5A334();
        *v82 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF33F20, sub_1D5C5A334);
        sub_1D726431C();
        (*(v11 + 8))(v9, v5);
        v75 = v81;
        v76 = swift_allocObject();
        *(v76 + 16) = v75;
        v24 = v76 | 0xA000000000000004;
        break;
      case 24:
        v81 = xmmword_1D7279980;
        sub_1D5F90A64();
        sub_1D726431C();
        (*(v11 + 8))(v9, v5);
        v41 = v82[0];
        v42 = *&v82[8];
        v43 = v82[16];
        v44 = swift_allocObject();
        *(v44 + 16) = v41;
        *(v44 + 24) = v42;
        *(v44 + 32) = v43;
        v24 = v44 | 0xB000000000000000;
        break;
      case 25:
        (*(v11 + 8))(v9, v5);
        v24 = 0xC000000000000014;
        break;
      case 26:
        (*(v11 + 8))(v9, v5);
        v24 = 0xC00000000000001CLL;
        break;
      case 27:
        sub_1D5C30060(0, &qword_1EDF29140, sub_1D5CA6224, &type metadata for FormatAdjustment, type metadata accessor for FormatSwitchListValue);
        v81 = xmmword_1D7279980;
        sub_1D5CA6358();
        sub_1D726431C();
        (*(v11 + 8))(v9, v5);
        v27 = *&v82[8];
        v26 = *v82;
        v28 = swift_allocObject();
        *(v28 + 16) = v26;
        *(v28 + 24) = v27;
        v24 = v28 | 0xB000000000000004;
        break;
      case 28:
        v81 = xmmword_1D7279980;
        sub_1D666BCD8();
        sub_1D726431C();
        (*(v11 + 8))(v9, v5);
        v79 = *&v82[16];
        v80 = *v82;
        v77 = swift_allocObject();
        v78 = v79;
        *(v77 + 16) = v80;
        *(v77 + 32) = v78;
        v24 = v77 | 0xC000000000000000;
        break;
      default:
        v81 = xmmword_1D7279980;
        sub_1D5CBE83C();
        sub_1D726431C();
        (*(v11 + 8))(v9, v5);
        v79 = *&v82[16];
        v80 = *v82;
        v24 = swift_allocObject();
        v25 = v79;
        *(v24 + 16) = v80;
        *(v24 + 32) = v25;
        break;
    }

    *v23 = v24;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D5C9AC60()
{

  return swift_deallocObject();
}

uint64_t sub_1D5C9ACB0()
{

  return swift_deallocObject();
}

uint64_t sub_1D5C9ACE8()
{

  return swift_deallocObject();
}

uint64_t sub_1D5C9AD3C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5C9AD74()
{

  return swift_deallocObject();
}

unint64_t sub_1D5C9ADDC()
{
  result = qword_1EDF30B10;
  if (!qword_1EDF30B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF30B10);
  }

  return result;
}

uint64_t _s10CodingTypeOwst_0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 28 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 28) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE4)
  {
    v4 = 0;
  }

  if (a2 > 0xE3)
  {
    v5 = ((a2 - 228) >> 8) + 1;
    *result = a2 + 28;
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
    *result = a2 + 28;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D5C9AF40()
{
  result = qword_1EDF30B18;
  if (!qword_1EDF30B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF30B18);
  }

  return result;
}

uint64_t sub_1D5C9AF94@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5C9AFC4();
  *a1 = result;
  return result;
}

uint64_t sub_1D5C9AFC4()
{
  v0 = sub_1D72648CC();

  if (v0 >= 0x1D)
  {
    return 29;
  }

  else
  {
    return v0;
  }
}

uint64_t _s10CodingTypeOwet_0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE4)
  {
    goto LABEL_17;
  }

  if (a2 + 28 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 28) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 28;
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

      return (*a1 | (v4 << 8)) - 28;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 28;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1D;
  v8 = v6 - 29;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed16FormatAdjustmentO(void *a1)
{
  v1 = (*a1 >> 59) & 0x1E | (*a1 >> 2) & 1;
  if (v1 <= 0x18)
  {
    return v1;
  }

  else
  {
    return (*a1 >> 3) + 25;
  }
}

unint64_t sub_1D5C9B0CC()
{
  result = qword_1EDF24968;
  if (!qword_1EDF24968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF24968);
  }

  return result;
}

void sub_1D5C9B120()
{
  if (!qword_1EDF25080)
  {
    sub_1D5C9B5BC();
    sub_1D5C9B610();
    sub_1D5C9F070();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF25080);
    }
  }
}

void sub_1D5C9B1A4()
{
  if (!qword_1EDF19F50)
  {
    sub_1D5C9B120();
    sub_1D5B58B84(&qword_1EDF25088, sub_1D5C9B120);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19F50);
    }
  }
}

uint64_t FormatGroupBindExpression.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v29 = a2;
  sub_1D5C9B1A4();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C9B120();
  sub_1D5B58B84(&qword_1EDF25088, sub_1D5C9B120);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v29;
  v14 = v7;
  if (v12)
  {
    v15 = sub_1D726433C();
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = (v15 + 48);
      while (*v17 != 1)
      {
        v17 += 24;
        if (!--v16)
        {
          goto LABEL_7;
        }
      }

      v23 = *(v17 - 2);
      v22 = *(v17 - 1);

      v24 = sub_1D6627E68(0x696669746E656469, 0xEA00000000007265, 0x73646E696BLL, 0xE500000000000000);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v25 = v23;
      *(v25 + 8) = v22;
      *(v25 + 16) = v24;
      *(v25 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v10, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  v18 = sub_1D5C31D18(v10, 0, 0, 0, sub_1D5C9B1A4);
  v20 = v19;
  v21 = v18;
  v27 = sub_1D5C95A1C(v10, 1, 0, 0, sub_1D5C9F118, sub_1D5C9B1A4, &qword_1EDF3BE50, sub_1D5C9F118);
  (*(v14 + 8))(v10, v6);
  *v13 = v21;
  v13[1] = v20;
  v13[2] = v27;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D5C9B5BC()
{
  result = qword_1EDF24980;
  if (!qword_1EDF24980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF24980);
  }

  return result;
}

unint64_t sub_1D5C9B610()
{
  result = qword_1EDF24988;
  if (!qword_1EDF24988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF24988);
  }

  return result;
}

unint64_t sub_1D5C9B668()
{
  result = qword_1EDF24970;
  if (!qword_1EDF24970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF24970);
  }

  return result;
}

uint64_t sub_1D5C9B6C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FF && *(a1 + 24))
  {
    return (*a1 + 1023);
  }

  v3 = (((*(a1 + 16) >> 52) >> 9) & 1 | (2 * ((*a1 >> 57) & 0x18 | *a1 & 7 | (32 * (*(a1 + 16) & 7)) | (*(a1 + 16) >> 52) & 0x100))) ^ 0x3FF;
  if (v3 >= 0x3FE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

unint64_t sub_1D5C9B730()
{
  result = qword_1EDF315D0;
  if (!qword_1EDF315D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF315D0);
  }

  return result;
}

void sub_1D5C9B7F0()
{
  if (!qword_1EDF2E208)
  {
    sub_1D5B5A498(255, &qword_1EDF1A690);
    sub_1D5C9B86C();
    v0 = type metadata accessor for FormatCommandValue();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF2E208);
    }
  }
}

unint64_t sub_1D5C9B86C()
{
  result = qword_1EDF27E40;
  if (!qword_1EDF27E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF27E40);
  }

  return result;
}

unint64_t sub_1D5C9B8C0()
{
  result = qword_1EDF27E50;
  if (!qword_1EDF27E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF27E50);
  }

  return result;
}

uint64_t FormatSyncImageContent.init(from:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = v2;
  v46 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v36 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (v2)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();
  }

  else
  {
    v11 = v7;
    v12 = v46;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v13 = sub_1D7264AFC();
    v14 = Dictionary<>.errorOnUnknownKeys.getter(v13);

    v15 = v10;
    if (v14)
    {
      v16 = sub_1D726433C();
      v17 = (v16 + 40);
      v18 = *(v16 + 16) + 1;
      while (--v18)
      {
        v19 = v17 + 2;
        v20 = *v17;
        v17 += 2;
        if (v20 >= 4)
        {
          v21 = *(v19 - 3);

          sub_1D5E2D970();
          v3 = swift_allocError();
          *v22 = v21;
          *(v22 + 8) = v20;
          *(v22 + 16) = &unk_1F50F3808;
          *(v22 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v15, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D5C88034();
    v38 = 0uLL;
    sub_1D726431C();
    if (v45)
    {
      v24 = v12;
      if (v45 == 1)
      {
        v45 = xmmword_1D7279980;
        sub_1D5CCF640();
        sub_1D726431C();
        (*(v11 + 8))(v15, v6);
        v25 = v38;
        v26 = a1;
        v27 = v41;
        v36 = v40;
        v37 = v39;
        v28 = swift_allocObject();
        *(v28 + 16) = v25;
        v29 = v36;
        *(v28 + 32) = v37;
        *(v28 + 48) = v29;
        v30 = v28 | 0x4000000000000000;
        *(v28 + 64) = v27;
        a1 = v26;
      }

      else
      {
        sub_1D5C30060(0, &qword_1EC886048, sub_1D5C9B86C, &type metadata for FormatSyncImageContent, type metadata accessor for FormatSelectorValue);
        v45 = xmmword_1D7279980;
        sub_1D665914C();
        sub_1D726431C();
        (*(v11 + 8))(v15, v6);
        v34 = v38;
        v35 = swift_allocObject();
        *(v35 + 16) = v34;
        v30 = v35 | 0x8000000000000000;
      }
    }

    else
    {
      v45 = xmmword_1D7279980;
      sub_1D5C941B8();
      sub_1D726431C();
      v24 = v12;
      (*(v11 + 8))(v15, v6);
      v30 = swift_allocObject();
      v31 = v43;
      *(v30 + 80) = v42;
      *(v30 + 96) = v31;
      *(v30 + 112) = v44;
      v32 = v39;
      *(v30 + 16) = v38;
      *(v30 + 32) = v32;
      v33 = v41;
      *(v30 + 48) = v40;
      *(v30 + 64) = v33;
    }

    *v24 = v30;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D5C9BDF8()
{

  v1 = *(v0 + 64);
  if (v1 != 255)
  {
    sub_1D5E43440(*(v0 + 48), *(v0 + 56), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_1D5C9BE4C()
{
  sub_1D5FBA070(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
  v1 = *(v0 + 64);
  if (v1 >> 8 <= 0xFE)
  {
    sub_1D5F5816C(*(v0 + 48), *(v0 + 56), v1, SBYTE1(v1));
  }

  if ((~*(v0 + 72) & 0xF000000000000007) != 0)
  {
  }

  sub_1D5D2F2C8(*(v0 + 88), *(v0 + 96), *(v0 + 104));
  v2 = *(v0 + 112);
  if ((~v2 & 0xF000000000000007) != 0)
  {
    sub_1D5F33D8C(v2);
  }

  return swift_deallocObject();
}

unint64_t sub_1D5C9BEF4()
{
  result = qword_1EDF27E68;
  if (!qword_1EDF27E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF27E68);
  }

  return result;
}

uint64_t sub_1D5C9BF48()
{
  v0 = sub_1D72641CC();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1D5C9BF94()
{
  result = qword_1EDF2ADF8;
  if (!qword_1EDF2ADF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2ADF8);
  }

  return result;
}

uint64_t sub_1D5C9BFE8(void *a1)
{
  sub_1D5C2E60C(0, &qword_1EDF3BD28, sub_1D5C6590C, sub_1D5C65960);
  v85 = v2;
  v83 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  *&v86 = &v67[-v4];
  sub_1D5C8CD38();
  v87 = v5;
  v84 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  *&v88 = &v67[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5C2E60C(0, &qword_1EDF3BD38, sub_1D5C62464, sub_1D5C624B8);
  v9 = v8;
  v89 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v67[-v11];
  sub_1D5C88C3C();
  v14 = v13;
  *&v90 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v67[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C88CD0();
  sub_1D5B58B84(&qword_1EDF24BF8, sub_1D5C88CD0);
  v19 = v100;
  sub_1D7264B0C();
  v20 = v19;
  if (v19)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v20);
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1(a1);
    return v18;
  }

  v100 = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v21 = sub_1D7264AFC();
  v22 = Dictionary<>.errorOnUnknownKeys.getter(v21);

  v23 = v14;
  if (v22)
  {
    v24 = sub_1D726433C();
    v25 = *(v24 + 16);
    if (v25)
    {
      v26 = (v24 + 48);
      while (*v26 != 1)
      {
        v26 += 24;
        if (!--v25)
        {
          goto LABEL_7;
        }
      }

      v29 = *(v26 - 2);
      v18 = *(v26 - 1);

      v30 = sub_1D66157D8();
      sub_1D5E2D970();
      v20 = swift_allocError();
      *v31 = v29;
      *(v31 + 8) = v18;
      *(v31 + 16) = v30;
      *(v31 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v90 + 8))(v17, v23);
      goto LABEL_10;
    }

LABEL_7:
  }

  v27 = sub_1D5C31D18(v17, 0, 0, 0, sub_1D5C88C3C);
  v82 = v28;
  v94 = xmmword_1D728CF30;
  LOBYTE(v95) = 0;
  sub_1D5C88E5C();
  sub_1D726431C();
  v32 = v92;
  v94 = xmmword_1D7297410;
  LOBYTE(v95) = 0;
  sub_1D5C6411C();
  sub_1D726427C();
  v81 = v32;
  v80 = v92;
  v79 = xmmword_1D72BAA60;
  v94 = xmmword_1D72BAA60;
  LOBYTE(v95) = 0;
  if (sub_1D726434C())
  {
    v92 = v79;
    v93 = 0;
    sub_1D5C9EEC4();
    sub_1D726431C();
    *&v79 = v27;
    v34 = v17;
    v35 = v100;
    v36 = sub_1D725A74C();
    (*(v89 + 8))(v35, v9);
  }

  else
  {
    *&v79 = v27;
    v34 = v17;
    v36 = MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for FormatTextNodeStyle();
  v94 = xmmword_1D72BAA70;
  LOBYTE(v95) = 0;
  sub_1D5B58B84(&qword_1EDF2BD80, type metadata accessor for FormatTextNodeStyle);
  v37 = v34;
  sub_1D726427C();
  v100 = v92;
  type metadata accessor for FormatAnimationNodeStyle();
  v94 = xmmword_1D72BAA80;
  LOBYTE(v95) = 0;
  sub_1D5B58B84(&qword_1EDF26768, type metadata accessor for FormatAnimationNodeStyle);
  sub_1D726427C();
  v38 = v92;
  v94 = xmmword_1D72BAA90;
  LOBYTE(v95) = 0;
  sub_1D5C6F1D8();
  sub_1D726431C();
  v39 = v38;
  v40 = v23;
  v41 = v92;
  v92 = xmmword_1D72BAAA0;
  v93 = 0;
  sub_1D5C67538();
  sub_1D726427C();
  v77 = v41;
  v78 = v39;
  v75 = v94;
  v76 = v95;
  v42 = v97;
  v89 = v96;
  v43 = v98 | (v99 << 16);
  v74 = xmmword_1D72BAAB0;
  v94 = xmmword_1D72BAAB0;
  LOBYTE(v95) = 0;
  v44 = v40;
  v45 = v37;
  if (sub_1D726434C())
  {
    v92 = v74;
    v93 = 0;
    sub_1D726431C();
    v72 = v91;
  }

  else
  {
    v72 = 0;
  }

  v74 = xmmword_1D72BAAC0;
  v94 = xmmword_1D72BAAC0;
  LOBYTE(v95) = 0;
  if (sub_1D726434C())
  {
    v92 = v74;
    v93 = 0;
    sub_1D5DF6A0C();
    sub_1D726431C();
    v46 = v42;
    LODWORD(v74) = v43;
    v47 = v36;
    v48 = v91;
    sub_1D5EB1500(v91);
    sub_1D5EB15C4(v48);
  }

  else
  {
    v46 = v42;
    LODWORD(v74) = v43;
    v47 = v36;
    v48 = 0x8000000000000000;
  }

  v73 = xmmword_1D72BAAD0;
  v94 = xmmword_1D72BAAD0;
  LOBYTE(v95) = 0;
  if (sub_1D726434C())
  {
    v92 = v73;
    v93 = 0;
    sub_1D726431C();
    v49 = v91;
  }

  else
  {
    v49 = 1;
  }

  LODWORD(v73) = v49;
  v94 = xmmword_1D72BAAE0;
  LOBYTE(v95) = 0;
  sub_1D5C9E1C4();
  sub_1D726427C();
  v71 = v92;
  v94 = xmmword_1D72BAAF0;
  LOBYTE(v95) = 0;
  sub_1D5C6F27C();
  sub_1D726427C();
  v69 = v92;
  v68 = BYTE8(v92);
  v70 = xmmword_1D7282A80;
  v94 = xmmword_1D7282A80;
  LOBYTE(v95) = 0;
  if (sub_1D726434C())
  {
    v92 = v70;
    v93 = 0;
    sub_1D5B58B84(&qword_1EDF3BE00, sub_1D5C8CD38);
    sub_1D726431C();
    v50 = v87;
    v51 = v88;
    *&v70 = sub_1D725A74C();
    (*(v84 + 8))(v51, v50);
  }

  else
  {
    *&v70 = MEMORY[0x1E69E7CD0];
  }

  v88 = xmmword_1D72BAB00;
  v94 = xmmword_1D72BAB00;
  LOBYTE(v95) = 0;
  if (sub_1D726434C())
  {
    v92 = v88;
    v93 = 0;
    sub_1D66FBDBC();
    sub_1D726431C();
    v52 = v85;
    v53 = v86;
    *&v88 = sub_1D725A74C();
    (*(v83 + 8))(v53, v52);
  }

  else
  {
    *&v88 = MEMORY[0x1E69E7CC0];
  }

  v94 = xmmword_1D72BAB10;
  LOBYTE(v95) = 0;
  v87 = sub_1D726422C();
  v55 = v54;
  v92 = xmmword_1D72BAB20;
  v93 = 0;
  sub_1D5C5C5C0();
  sub_1D726427C();
  (*(v90 + 8))(v45, v44);
  v56 = v96;
  v57 = v97;
  type metadata accessor for FormatTextNode();
  v90 = v94;
  v86 = v95;
  v18 = swift_allocObject();
  swift_beginAccess();
  v58 = v82;
  *(v18 + 16) = v79;
  *(v18 + 24) = v58;
  v59 = v80;
  *(v18 + 32) = v81;
  *(v18 + 40) = v59;
  swift_beginAccess();
  v60 = v100;
  *(v18 + 48) = v47;
  *(v18 + 56) = v60;
  v61 = v77;
  *(v18 + 64) = v78;
  *(v18 + 72) = v61;
  v62 = *(&v75 + 1);
  *(v18 + 80) = v75;
  *(v18 + 88) = v62;
  v63 = *(&v76 + 1);
  *(v18 + 96) = v76;
  *(v18 + 104) = v63;
  *(v18 + 112) = v89;
  *(v18 + 120) = v46;
  v64 = v74;
  *(v18 + 130) = BYTE2(v74);
  *(v18 + 128) = v64;
  swift_beginAccess();
  *(v18 + 136) = v72;
  *(v18 + 153) = v71;
  *(v18 + 160) = v69;
  *(v18 + 168) = v68;
  swift_beginAccess();
  *(v18 + 176) = v70;
  swift_beginAccess();
  v65 = v87;
  *(v18 + 184) = v88;
  *(v18 + 192) = v65;
  *(v18 + 200) = v55;
  swift_beginAccess();
  *(v18 + 144) = v48;
  swift_beginAccess();
  *(v18 + 152) = v73;
  v66 = v86;
  *(v18 + 208) = v90;
  *(v18 + 224) = v66;
  *(v18 + 240) = v56;
  *(v18 + 248) = v57;
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v18;
}

unint64_t sub_1D5C9D600()
{
  result = qword_1EDF321E0;
  if (!qword_1EDF321E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF321E0);
  }

  return result;
}

unint64_t sub_1D5C9D654()
{
  result = qword_1EDF321D0;
  if (!qword_1EDF321D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF321D0);
  }

  return result;
}

unint64_t sub_1D5C9D6AC(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 1702521203;
      break;
    case 2:
      result = 0x657A69736572;
      break;
    case 3:
      result = 0x656D7473756A6461;
      break;
    case 4:
      result = 0x656C797473;
      break;
    case 5:
      result = 0x6F6974616D696E61;
      break;
    case 6:
      result = 0x746E65746E6F63;
      break;
    case 7:
      result = 0x6164696C61766E69;
      break;
    case 8:
      result = 0x7865646E497ALL;
      break;
    case 9:
      result = 0x696C696269736976;
      break;
    case 10:
      result = 0xD000000000000018;
      break;
    case 11:
      result = 0x6269737365636361;
      break;
    case 12:
      result = 0xD000000000000011;
      break;
    case 13:
      result = 0x726F7463656C6573;
      break;
    case 14:
      result = 0x7449656372756F73;
      break;
    case 15:
      result = 1701667182;
      break;
    case 16:
      result = 2019912806;
      break;
    case 17:
      result = 1885433183;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D5C9D8E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x79)
  {
    *result = a2 - 122;
    if (a3 >= 0x7A)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7A)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1D5C9D930(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7A && *(a1 + 8))
  {
    return (*a1 + 122);
  }

  v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x79)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t FormatTextSize.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v37 = a2;
  sub_1D5C30200(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v36[-1] - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (!v2)
  {
    v10 = v6;
    v11 = v37;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v12 = sub_1D7264AFC();
    v13 = Dictionary<>.errorOnUnknownKeys.getter(v12);

    v14 = v9;
    if (v13)
    {
      v15 = sub_1D726433C();
      v16 = (v15 + 40);
      v17 = *(v15 + 16) + 1;
      while (--v17)
      {
        v18 = v16 + 2;
        v19 = *v16;
        v16 += 2;
        if (v19 >= 4)
        {
          v20 = *(v18 - 3);

          sub_1D5E2D970();
          swift_allocError();
          *v21 = v20;
          *(v21 + 8) = v19;
          *(v21 + 16) = &unk_1F51187D0;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v10 + 8))(v14, v5);
          return __swift_destroy_boxed_opaque_existential_1(a1);
        }
      }
    }

    sub_1D5C9E110();
    v36[0] = 0uLL;
    sub_1D726431C();
    if (v35 <= 3u)
    {
      if (v35 > 1u)
      {
        if (v35 == 2)
        {
          sub_1D5B68374(a1, v36);
          FormatSize.init(from:)(v36, &v35);
          (*(v10 + 8))(v14, v5);
          v24 = v35;
          v25 = swift_allocObject();
          *(v25 + 16) = v24;
          *v11 = v25;
        }

        else
        {
          sub_1D5C30200(0, &qword_1EDF2ED88, sub_1D66F46B0, &type metadata for FormatTextSize, type metadata accessor for FormatSwitchValue);
          v35 = xmmword_1D7279980;
          sub_1D6CAD5BC();
          sub_1D726431C();
          (*(v10 + 8))(v14, v5);
          v26 = v36[0];
          v27 = swift_allocObject();
          *(v27 + 16) = v26;
          *v11 = v27 | 0x2000000000000000;
        }
      }

      else if (v35)
      {
        (*(v10 + 8))(v14, v5);
        *v11 = 0xC000000000000008;
      }

      else
      {
        (*(v10 + 8))(v14, v5);
        *v11 = 0xC000000000000000;
      }
    }

    else if (v35 <= 5u)
    {
      if (v35 == 4)
      {
        (*(v10 + 8))(v14, v5);
        *v11 = 0xC000000000000010;
      }

      else
      {
        sub_1D5CE5DB0();
        v36[0] = xmmword_1D7279980;
        sub_1D5CE5E00();
        sub_1D726431C();
        (*(v10 + 8))(v14, v5);
        v33 = v35;
        v34 = swift_allocObject();
        *(v34 + 16) = v33;
        *v11 = v34 | 0x4000000000000000;
      }
    }

    else if (v35 == 6)
    {
      sub_1D5CE5DB0();
      v36[0] = xmmword_1D7279980;
      sub_1D5CE5E00();
      sub_1D726431C();
      (*(v10 + 8))(v14, v5);
      v28 = v35;
      v29 = swift_allocObject();
      *(v29 + 16) = v28;
      *v11 = v29 | 0x6000000000000000;
    }

    else
    {
      v36[0] = xmmword_1D7279980;
      if (v35 == 7)
      {
        sub_1D5C6F1D8();
        sub_1D726431C();
        (*(v10 + 8))(v14, v5);
        v22 = v35;
        v23 = swift_allocObject();
        *(v23 + 16) = v22;
        *v11 = v23 | 0xA000000000000000;
      }

      else
      {
        sub_1D5C6F1D8();
        sub_1D726431C();
        (*(v10 + 8))(v14, v5);
        v30 = v35;
        v31 = swift_allocObject();
        *(v31 + 16) = v30;
        *v11 = v31 | 0x8000000000000000;
      }
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D5C9E00C()
{
  sub_1D5C92A8C(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D5C9E044()
{

  return swift_deallocObject();
}

uint64_t sub_1D5C9E080()
{

  return swift_deallocObject();
}

uint64_t sub_1D5C9E0B8()
{

  sub_1D5D05694(*(v0 + 24));

  return swift_deallocObject();
}

unint64_t sub_1D5C9E110()
{
  result = qword_1EDF32098;
  if (!qword_1EDF32098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF32098);
  }

  return result;
}

unint64_t sub_1D5C9E1C4()
{
  result = qword_1EDF2CE88;
  if (!qword_1EDF2CE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2CE88);
  }

  return result;
}

uint64_t sub_1D5C9E218@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D5C9E244(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1D5C9E244(void *a1)
{
  sub_1D5C2E60C(0, &qword_1EDF3BD38, sub_1D5C62464, sub_1D5C624B8);
  v3 = v2;
  v49 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v37 - v5;
  sub_1D5C9E9B8();
  v8 = v7;
  *&v41 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C9EA4C();
  sub_1D5B58B84(&qword_1EDF24B68, sub_1D5C9EA4C);
  v12 = v42;
  sub_1D7264B0C();
  v13 = v12;
  if (!v12)
  {
    *&v42 = v6;
    v14 = v41;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v15 = sub_1D7264AFC();
    v16 = Dictionary<>.errorOnUnknownKeys.getter(v15);

    if (v16)
    {
      v17 = sub_1D726433C();
      v18 = *(v17 + 16);
      if (v18)
      {
        v19 = (v17 + 48);
        while (*v19 != 1)
        {
          v19 += 24;
          if (!--v18)
          {
            goto LABEL_7;
          }
        }

        v24 = *(v19 - 2);
        v23 = *(v19 - 1);

        v25 = sub_1D5C9E7E0();
        sub_1D5E2D970();
        v26 = swift_allocError();
        *v27 = v24;
        *(v27 + 8) = v23;
        *(v27 + 16) = v25;
        v13 = v26;
        *(v27 + 24) = xmmword_1D72874E0;
        swift_willThrow();
        (*(v14 + 8))(v11, v8);
        goto LABEL_10;
      }

LABEL_7:
    }

    v13 = 0;
    v20 = sub_1D5C31D18(v11, 0, 0, 0, sub_1D5C9E9B8);
    v22 = v21;
    v40 = v20;
    v45 = xmmword_1D728CF30;
    LOBYTE(v46) = 0;
    sub_1D5C62940();
    sub_1D726431C();
    v29 = v43;
    v39 = xmmword_1D7297410;
    v45 = xmmword_1D7297410;
    LOBYTE(v46) = 0;
    if (sub_1D726434C())
    {
      v43 = v39;
      v44 = 0;
      sub_1D5C9EEC4();
      v30 = v42;
      sub_1D726431C();
      v38 = 0;
      *&v39 = v29;
      v31 = sub_1D725A74C();
      v32 = v3;
      v33 = v31;
      (*(v49 + 8))(v30, v32);
      v13 = v38;
    }

    else
    {
      *&v39 = v29;
      v33 = MEMORY[0x1E69E7CC0];
    }

    v43 = xmmword_1D72BAA60;
    v44 = 0;
    sub_1D5C5C5C0();
    sub_1D726427C();
    if (!v13)
    {
      (*(v14 + 8))(v11, v8);
      v34 = v47;
      v35 = v48;
      type metadata accessor for FormatSpaceNode();
      v41 = v46;
      v42 = v45;
      v8 = swift_allocObject();
      swift_beginAccess();
      *(v8 + 16) = v40;
      *(v8 + 24) = v22;
      *(v8 + 32) = v39;
      swift_beginAccess();
      *(v8 + 40) = v33;
      v36 = v41;
      *(v8 + 48) = v42;
      *(v8 + 64) = v36;
      *(v8 + 80) = v34;
      *(v8 + 88) = v35;
      __swift_destroy_boxed_opaque_existential_1(a1);
      return v8;
    }

    (*(v14 + 8))(v11, v8);
    sub_1D5C92A8C(v39);
  }

LABEL_10:
  sub_1D61E4FBC(a1, v13);
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

uint64_t sub_1D5C9E7E0()
{
  v19 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 5, 0);
  v0 = v19;
  v2 = *(v19 + 16);
  v1 = *(v19 + 24);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_1D5BFC364((v1 > 1), v2 + 1, 1);
    v0 = v19;
    v1 = *(v19 + 24);
    v3 = v1 >> 1;
  }

  *(v0 + 16) = v4;
  v5 = v0 + 16 * v2;
  *(v5 + 32) = 0x696669746E656469;
  *(v5 + 40) = 0xEA00000000007265;
  v6 = v2 + 2;
  if (v3 <= v4)
  {
    sub_1D5BFC364((v1 > 1), v6, 1);
    v0 = v19;
  }

  *(v0 + 16) = v6;
  v7 = v0 + 16 * v4;
  *(v7 + 32) = 1702521203;
  *(v7 + 40) = 0xE400000000000000;
  v9 = *(v0 + 16);
  v8 = *(v0 + 24);
  v10 = v9 + 1;
  if (v9 >= v8 >> 1)
  {
    sub_1D5BFC364((v8 > 1), v9 + 1, 1);
  }

  result = v19;
  *(v19 + 16) = v10;
  v12 = v19 + 16 * v9;
  *(v12 + 32) = 0x656D7473756A6461;
  *(v12 + 40) = 0xEB0000000073746ELL;
  v13 = *(v19 + 24);
  v14 = v9 + 2;
  if (v10 >= v13 >> 1)
  {
    sub_1D5BFC364((v13 > 1), v14, 1);
    result = v19;
  }

  *(result + 16) = v14;
  v15 = result + 16 * v10;
  *(v15 + 32) = 2019912806;
  *(v15 + 40) = 0xE400000000000000;
  v17 = *(result + 16);
  v16 = *(result + 24);
  if (v17 >= v16 >> 1)
  {
    sub_1D5BFC364((v16 > 1), v17 + 1, 1);
    result = v19;
  }

  *(result + 16) = v17 + 1;
  v18 = result + 16 * v17;
  *(v18 + 32) = 1885433183;
  *(v18 + 40) = 0xE400000000000000;
  return result;
}

void sub_1D5C9E9B8()
{
  if (!qword_1EDF19CC0)
  {
    sub_1D5C9EA4C();
    sub_1D5B58B84(&qword_1EDF24B68, sub_1D5C9EA4C);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19CC0);
    }
  }
}

void sub_1D5C9EA4C()
{
  if (!qword_1EDF24B60)
  {
    sub_1D5C9EAD0();
    sub_1D5C9EB24();
    sub_1D5C88FA8();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF24B60);
    }
  }
}

unint64_t sub_1D5C9EAD0()
{
  result = qword_1EDF311F8;
  if (!qword_1EDF311F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF311F8);
  }

  return result;
}

unint64_t sub_1D5C9EB24()
{
  result = qword_1EDF31200;
  if (!qword_1EDF31200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF31200);
  }

  return result;
}

unint64_t sub_1D5C9EB7C()
{
  result = qword_1EDF311E8;
  if (!qword_1EDF311E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF311E8);
  }

  return result;
}

unint64_t sub_1D5C9EBD0()
{
  result = qword_1EDF311F0;
  if (!qword_1EDF311F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF311F0);
  }

  return result;
}

void sub_1D5C9EC54()
{
  if (!qword_1EDF24C40)
  {
    sub_1D5C89154();
    sub_1D5C9ED6C();
    sub_1D5C9EE70();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF24C40);
    }
  }
}

void sub_1D5C9ECD8()
{
  if (!qword_1EDF19D30)
  {
    sub_1D5C9EC54();
    sub_1D5B58B84(&qword_1EDF24C48, sub_1D5C9EC54);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19D30);
    }
  }
}

unint64_t sub_1D5C9ED6C()
{
  result = qword_1EDF327E8;
  if (!qword_1EDF327E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF327E8);
  }

  return result;
}

unint64_t sub_1D5C9EDC4()
{
  result = qword_1EDF327D0;
  if (!qword_1EDF327D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF327D0);
  }

  return result;
}

unint64_t sub_1D5C9EE1C()
{
  result = qword_1EDF327D8;
  if (!qword_1EDF327D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF327D8);
  }

  return result;
}

unint64_t sub_1D5C9EE70()
{
  result = qword_1EDF327F0;
  if (!qword_1EDF327F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF327F0);
  }

  return result;
}

unint64_t sub_1D5C9EEC4()
{
  result = qword_1EDF3BD40;
  if (!qword_1EDF3BD40)
  {
    sub_1D5C2E60C(255, &qword_1EDF3BD38, sub_1D5C62464, sub_1D5C624B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3BD40);
  }

  return result;
}

uint64_t sub_1D5C9EF54(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 40) = 0u;
      *(result + 56) = 0u;
      *(result + 72) = 0;
    }
  }

  return result;
}

NewsFeed::FormatEquationOperator_optional __swiftcall FormatEquationOperator.init(rawValue:)(NewsFeed::FormatEquationOperator_optional rawValue)
{
  if (((rawValue.value - 40) & 0xF8) != 0)
  {
    v2 = 6;
  }

  else
  {
    v2 = 0x306010600020504uLL >> (8 * (rawValue.value - 40));
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1D5C9F01C()
{
  result = qword_1EDF24978;
  if (!qword_1EDF24978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF24978);
  }

  return result;
}

unint64_t sub_1D5C9F070()
{
  result = qword_1EDF24990;
  if (!qword_1EDF24990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF24990);
  }

  return result;
}

uint64_t sub_1D5C9F0C4()
{
  v1 = 0x73646E696BLL;
  if (*v0 != 1)
  {
    v1 = 1885433183;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

void sub_1D5C9F118()
{
  if (!qword_1EDF3BE48)
  {
    sub_1D5C9F19C();
    sub_1D5C9F1F0();
    sub_1D5C9F244();
    v0 = sub_1D725A75C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3BE48);
    }
  }
}

unint64_t sub_1D5C9F19C()
{
  result = qword_1EDF2C7F8;
  if (!qword_1EDF2C7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2C7F8);
  }

  return result;
}

unint64_t sub_1D5C9F1F0()
{
  result = qword_1EDF2C818;
  if (!qword_1EDF2C818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2C818);
  }

  return result;
}

unint64_t sub_1D5C9F244()
{
  result = qword_1EDF2C810;
  if (!qword_1EDF2C810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2C810);
  }

  return result;
}

unint64_t sub_1D5C9F2A0()
{
  result = qword_1EDF2C808;
  if (!qword_1EDF2C808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2C808);
  }

  return result;
}

unint64_t sub_1D5C9F354()
{
  result = qword_1EDF2C800;
  if (!qword_1EDF2C800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2C800);
  }

  return result;
}

NewsFeed::FormatGroupItemKind_optional __swiftcall FormatGroupItemKind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1D5C9F418()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D5C9F528()
{
  result = qword_1EDF27FE8;
  if (!qword_1EDF27FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF27FE8);
  }

  return result;
}

uint64_t sub_1D5C9F57C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D5C9F5C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D5C9F604()
{
  if (!qword_1EDF1A018)
  {
    sub_1D5C9F9A8();
    sub_1D5B58B84(&qword_1EDF25218, sub_1D5C9F9A8);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A018);
    }
  }
}

uint64_t FormatResizeConstraint.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v28 = a2;
  sub_1D5C9F604();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C9F9A8();
  sub_1D5B58B84(&qword_1EDF25218, sub_1D5C9F9A8);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v28;
  v14 = v7;
  if (v12)
  {
    v15 = sub_1D726433C();
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = (v15 + 48);
      while (*v17 != 1)
      {
        v17 += 24;
        if (!--v16)
        {
          goto LABEL_7;
        }
      }

      v20 = *(v17 - 2);
      v19 = *(v17 - 1);

      v21 = sub_1D662263C();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v22 = v20;
      *(v22 + 8) = v19;
      *(v22 + 16) = v21;
      *(v22 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v10, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D5C9FBF0();
  v29 = 0uLL;
  v30 = 0;
  sub_1D726431C();
  v18 = v31;
  v29 = xmmword_1D728CF30;
  v30 = 0;
  v24 = sub_1D72642BC();
  v26 = v25;
  (*(v14 + 8))(v10, v6);
  *v13 = v18;
  *(v13 + 8) = v24;
  *(v13 + 16) = v26;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D5C9F9A8()
{
  if (!qword_1EDF25210)
  {
    sub_1D5C9FA44();
    sub_1D5C9FA98();
    sub_1D5C9FB9C();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF25210);
    }
  }
}

unint64_t sub_1D5C9FA44()
{
  result = qword_1EDF28010;
  if (!qword_1EDF28010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF28010);
  }

  return result;
}

unint64_t sub_1D5C9FA98()
{
  result = qword_1EDF28018;
  if (!qword_1EDF28018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF28018);
  }

  return result;
}

unint64_t sub_1D5C9FAF0()
{
  result = qword_1EDF28000;
  if (!qword_1EDF28000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF28000);
  }

  return result;
}

unint64_t sub_1D5C9FB48()
{
  result = qword_1EDF28008;
  if (!qword_1EDF28008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF28008);
  }

  return result;
}

unint64_t sub_1D5C9FB9C()
{
  result = qword_1EDF28020;
  if (!qword_1EDF28020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF28020);
  }

  return result;
}

unint64_t sub_1D5C9FBF0()
{
  result = qword_1EDF27FF0;
  if (!qword_1EDF27FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF27FF0);
  }

  return result;
}

uint64_t sub_1D5C9FC44()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 1885433183;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F69736E656D6964;
  }
}

unint64_t sub_1D5C9FD00()
{
  result = qword_1EDF27FF8;
  if (!qword_1EDF27FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF27FF8);
  }

  return result;
}

uint64_t sub_1D5C9FD54@<X0>(char *a1@<X8>)
{
  v2 = sub_1D72641CC();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

unint64_t sub_1D5C9FDB4()
{
  result = qword_1EDF33AA0;
  if (!qword_1EDF33AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF33AA0);
  }

  return result;
}

unint64_t sub_1D5C9FE08(void *a1)
{
  a1[1] = sub_1D5C9FE40();
  a1[2] = sub_1D5C9FE94();
  result = sub_1D5C9FEE8();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5C9FE40()
{
  result = qword_1EDF33AA8;
  if (!qword_1EDF33AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF33AA8);
  }

  return result;
}

unint64_t sub_1D5C9FE94()
{
  result = qword_1EDF33AC0[0];
  if (!qword_1EDF33AC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF33AC0);
  }

  return result;
}

unint64_t sub_1D5C9FEE8()
{
  result = qword_1EDF33AB8;
  if (!qword_1EDF33AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF33AB8);
  }

  return result;
}

unint64_t sub_1D5C9FF3C()
{
  result = qword_1EDF33F40;
  if (!qword_1EDF33F40)
  {
    sub_1D5C30060(255, &qword_1EDF33F38, sub_1D5C9FDB4, &type metadata for FormatAnchor, type metadata accessor for FormatValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF33F40);
  }

  return result;
}

unint64_t sub_1D5CA002C()
{
  result = qword_1EDF33AB0;
  if (!qword_1EDF33AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF33AB0);
  }

  return result;
}

NewsFeed::FormatAnchor_optional __swiftcall FormatAnchor.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1D5CA00E8()
{
  result = qword_1EDF1E418;
  if (!qword_1EDF1E418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1E418);
  }

  return result;
}

uint64_t FormatTextAdjustmentOtherBaseline.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v29 = a2;
  sub_1D5CA0498();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5CA052C();
  sub_1D5B58B84(&qword_1EDF24DB8, sub_1D5CA052C);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v29;
  v14 = v7;
  if (v12)
  {
    v15 = sub_1D726433C();
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = (v15 + 48);
      while (*v17 != 1)
      {
        v17 += 24;
        if (!--v16)
        {
          goto LABEL_7;
        }
      }

      v23 = *(v17 - 2);
      v22 = *(v17 - 1);

      v24 = sub_1D66251A4(0x656C797473);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v25 = v23;
      *(v25 + 8) = v22;
      *(v25 + 16) = v24;
      *(v25 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v10, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  v30 = 0uLL;
  v31 = 0;
  v18 = sub_1D72642BC();
  v20 = v19;
  v21 = v18;
  type metadata accessor for FormatTextNodeStyle();
  v30 = xmmword_1D728CF30;
  v31 = 0;
  sub_1D5B58B84(&qword_1EDF2BD80, type metadata accessor for FormatTextNodeStyle);
  sub_1D726431C();
  (*(v14 + 8))(v10, v6);
  v27 = v32;
  *v13 = v21;
  v13[1] = v20;
  v13[2] = v27;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D5CA0498()
{
  if (!qword_1EDF19DE8)
  {
    sub_1D5CA052C();
    sub_1D5B58B84(&qword_1EDF24DB8, sub_1D5CA052C);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19DE8);
    }
  }
}

void sub_1D5CA052C()
{
  if (!qword_1EDF24DB0)
  {
    sub_1D5CA05C8();
    sub_1D5CA061C();
    sub_1D5CA0720();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF24DB0);
    }
  }
}

unint64_t sub_1D5CA05C8()
{
  result = qword_1EDF1E430;
  if (!qword_1EDF1E430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1E430);
  }

  return result;
}

unint64_t sub_1D5CA061C()
{
  result = qword_1EDF1E438;
  if (!qword_1EDF1E438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1E438);
  }

  return result;
}

unint64_t sub_1D5CA0674()
{
  result = qword_1EDF1E420;
  if (!qword_1EDF1E420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1E420);
  }

  return result;
}

unint64_t sub_1D5CA06CC()
{
  result = qword_1EDF1E428;
  if (!qword_1EDF1E428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1E428);
  }

  return result;
}

unint64_t sub_1D5CA0720()
{
  result = qword_1EDF1E440;
  if (!qword_1EDF1E440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1E440);
  }

  return result;
}

unint64_t sub_1D5CA0774()
{
  v1 = 0x656C797473;
  if (*v0 != 1)
  {
    v1 = 1885433183;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

unint64_t sub_1D5CA07C8()
{
  result = qword_1EDF2C0C8;
  if (!qword_1EDF2C0C8)
  {
    sub_1D5C34074(255, &qword_1EDF2C0C0, MEMORY[0x1E69E6530], &protocol witness table for Int, type metadata accessor for FormatSelectorValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2C0C8);
  }

  return result;
}

unint64_t sub_1D5CA084C()
{
  result = qword_1EDF2DFF0;
  if (!qword_1EDF2DFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2DFF0);
  }

  return result;
}

uint64_t sub_1D5CA08A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x14 && *(a1 + 49))
  {
    return (*a1 + 20);
  }

  v3 = ((*(a1 + 48) >> 4) & 0xFFFFFFEF | (16 * ((*(a1 + 48) >> 3) & 1))) ^ 0x1F;
  if (v3 >= 0x13)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D5CA08F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x13)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 20;
    if (a3 >= 0x14)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x14)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 48) = 8 * (((-a2 & 0x10) != 0) - 2 * a2);
    }
  }

  return result;
}

uint64_t FormatGroupBinding.Text.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v34 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v29 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (v2)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();
  }

  else
  {
    v11 = v7;
    v12 = a1;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v13 = sub_1D7264AFC();
    v14 = Dictionary<>.errorOnUnknownKeys.getter(v13);

    if (v14)
    {
      v15 = sub_1D726433C();
      v16 = (v15 + 40);
      v17 = *(v15 + 16) + 1;
      while (--v17)
      {
        v18 = v16 + 2;
        v19 = *v16;
        v16 += 2;
        if (v19 >= 4)
        {
          v20 = *(v18 - 3);

          sub_1D5E2D970();
          v3 = swift_allocError();
          *v21 = v20;
          *(v21 + 8) = v19;
          *(v21 + 16) = &unk_1F51111F8;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v10, v6);
          a1 = v12;
          goto LABEL_9;
        }
      }
    }

    sub_1D5CA11F0();
    v29 = 0uLL;
    sub_1D726431C();
    a1 = v12;
    v23 = v34;
    switch(v33)
    {
      case 1:
        v29 = xmmword_1D7279980;
        sub_1D5CA1374();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v25 = 0;
        v24 = v33;
        v26 = 0uLL;
        v28 = 16;
        goto LABEL_25;
      case 2:
        v29 = xmmword_1D7279980;
        sub_1D5CD3DF8();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v25 = 0;
        v24 = v33;
        v26 = 0uLL;
        v28 = 32;
        goto LABEL_25;
      case 3:
        v33 = xmmword_1D7279980;
        sub_1D6662D80();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v25 = *(&v29 + 1);
        v24 = v29;
        v27 = 0uLL;
        v26 = v30;
        v28 = 48;
        break;
      case 4:
        v29 = xmmword_1D7279980;
        sub_1D665FCD8();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v25 = 0;
        v24 = v33;
        v26 = 0uLL;
        v28 = 64;
        goto LABEL_25;
      case 5:
        v29 = xmmword_1D7279980;
        sub_1D5CA1374();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v25 = 0;
        v24 = v33;
        v26 = 0uLL;
        v28 = 80;
        goto LABEL_25;
      case 6:
        v29 = xmmword_1D7279980;
        sub_1D5CA1374();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v25 = 0;
        v24 = v33;
        v26 = 0uLL;
        v28 = 96;
        goto LABEL_25;
      case 7:
        v29 = xmmword_1D7279980;
        sub_1D665FED0();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v25 = 0;
        v24 = v33;
        v26 = 0uLL;
        v28 = 112;
        goto LABEL_25;
      case 8:
        v29 = xmmword_1D7279980;
        sub_1D665FD2C();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v24 = v33;
        v25 = BYTE8(v33);
        v26 = 0uLL;
        v28 = 0x80;
        goto LABEL_25;
      case 9:
        v33 = xmmword_1D7279980;
        sub_1D665FE7C();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v25 = *(&v29 + 1);
        v24 = v29;
        v26 = v30;
        v27 = v31;
        v28 = v32 | 0x90;
        break;
      case 10:
        v29 = xmmword_1D7279980;
        sub_1D665FE28();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v24 = v33;
        v25 = BYTE8(v33);
        v26 = 0uLL;
        v28 = -96;
        goto LABEL_25;
      case 11:
        v29 = xmmword_1D7279980;
        sub_1D665FDD4();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v25 = 0;
        v24 = v33;
        v26 = 0uLL;
        v28 = -80;
LABEL_25:
        v27 = 0uLL;
        break;
      case 12:
        v33 = xmmword_1D7279980;
        sub_1D665FC84();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v25 = *(&v29 + 1);
        v24 = v29;
        v28 = -64;
        v26 = v30;
        v27 = v31;
        break;
      default:
        v33 = xmmword_1D7279980;
        sub_1D5CBC898();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v25 = *(&v29 + 1);
        v24 = v29;
        v26 = v30;
        v27 = v31;
        v28 = v32;
        break;
    }

    *v23 = v24;
    *(v23 + 8) = v25;
    *(v23 + 16) = v26;
    *(v23 + 32) = v27;
    *(v23 + 48) = v28;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D5CA11F0()
{
  result = qword_1EDF2DFF8;
  if (!qword_1EDF2DFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2DFF8);
  }

  return result;
}

unint64_t sub_1D5CA12A4()
{
  result = qword_1EDF2E000;
  if (!qword_1EDF2E000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2E000);
  }

  return result;
}

uint64_t sub_1D5CA12F8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5CA1328();
  *a1 = result;
  return result;
}

uint64_t sub_1D5CA1328()
{
  v0 = sub_1D72641CC();

  if (v0 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1D5CA1374()
{
  result = qword_1EDF2FBF8;
  if (!qword_1EDF2FBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2FBF8);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for FormatPackage.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 22 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 22) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEA)
  {
    v4 = 0;
  }

  if (a2 > 0xE9)
  {
    v5 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
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
    *result = a2 + 22;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D5CA14D4()
{
  result = qword_1EDF2FC00;
  if (!qword_1EDF2FC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2FC00);
  }

  return result;
}

unint64_t sub_1D5CA1588()
{
  result = qword_1EDF2FC08;
  if (!qword_1EDF2FC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2FC08);
  }

  return result;
}

uint64_t sub_1D5CA15DC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5CA160C();
  *a1 = result;
  return result;
}

uint64_t sub_1D5CA160C()
{
  v0 = sub_1D72648CC();

  if (v0 >= 0x17)
  {
    return 23;
  }

  else
  {
    return v0;
  }
}

uint64_t getEnumTagSinglePayload for FormatPackage.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEA)
  {
    goto LABEL_17;
  }

  if (a2 + 22 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 22) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 22;
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

      return (*a1 | (v4 << 8)) - 22;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 22;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x17;
  v8 = v6 - 23;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_1D5CA16F8()
{
  result = qword_1EDF215E0;
  if (!qword_1EDF215E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF215E0);
  }

  return result;
}

uint64_t FormatTextAdjustmentBaseline.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v22[0] = a2;
  sub_1D5CA1A68();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5CA1AFC();
  sub_1D5B58B84(&qword_1EDF24EA8, sub_1D5CA1AFC);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_1D7264AFC();
  v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

  v13 = v22[0];
  if (v12)
  {
    v14 = sub_1D726433C();
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = (v14 + 48);
      while (*v16 != 1)
      {
        v16 += 24;
        if (!--v15)
        {
          goto LABEL_7;
        }
      }

      v18 = *(v16 - 2);
      v17 = *(v16 - 1);

      v19 = sub_1D6628490(0x656C797473, 0xE500000000000000);
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v20 = v18;
      *(v20 + 8) = v17;
      *(v20 + 16) = v19;
      *(v20 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v7 + 8))(v10, v6);
      goto LABEL_10;
    }

LABEL_7:
  }

  type metadata accessor for FormatTextNodeStyle();
  sub_1D5B58B84(&qword_1EDF2BD80, type metadata accessor for FormatTextNodeStyle);
  v22[1] = 0;
  v22[2] = 0;
  v23 = 0;
  sub_1D726431C();
  (*(v7 + 8))(v10, v6);
  *v13 = v24;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D5CA1A68()
{
  if (!qword_1EDF19E60)
  {
    sub_1D5CA1AFC();
    sub_1D5B58B84(&qword_1EDF24EA8, sub_1D5CA1AFC);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19E60);
    }
  }
}

void sub_1D5CA1AFC()
{
  if (!qword_1EDF24EA0)
  {
    sub_1D5CA1B98();
    sub_1D5CA1BEC();
    sub_1D5CA1CF0();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF24EA0);
    }
  }
}

unint64_t sub_1D5CA1B98()
{
  result = qword_1EDF215F8;
  if (!qword_1EDF215F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF215F8);
  }

  return result;
}

unint64_t sub_1D5CA1BEC()
{
  result = qword_1EDF21600;
  if (!qword_1EDF21600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF21600);
  }

  return result;
}

unint64_t sub_1D5CA1C44()
{
  result = qword_1EDF215E8;
  if (!qword_1EDF215E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF215E8);
  }

  return result;
}

unint64_t sub_1D5CA1C9C()
{
  result = qword_1EDF215F0;
  if (!qword_1EDF215F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF215F0);
  }

  return result;
}

unint64_t sub_1D5CA1CF0()
{
  result = qword_1EDF21608;
  if (!qword_1EDF21608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF21608);
  }

  return result;
}

uint64_t sub_1D5CA1D44()
{
  if (*v0)
  {
    return 1885433183;
  }

  else
  {
    return 0x656C797473;
  }
}

unint64_t sub_1D5CA1D74()
{
  result = qword_1EDF2EDF0[0];
  if (!qword_1EDF2EDF0[0])
  {
    sub_1D5C30060(255, &qword_1EDF2EDE8, sub_1D5C96858, &type metadata for FormatTextContent, type metadata accessor for FormatSwitchValue);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF2EDF0);
  }

  return result;
}

unint64_t sub_1D5CA1E04()
{
  result = qword_1EDF345B0;
  if (!qword_1EDF345B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF345B0);
  }

  return result;
}

unint64_t sub_1D5CA1E58(void *a1)
{
  a1[1] = sub_1D5C62940();
  a1[2] = sub_1D5CA1E90();
  result = sub_1D5CA1EE4();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5CA1E90()
{
  result = qword_1EDF345C8;
  if (!qword_1EDF345C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF345C8);
  }

  return result;
}

unint64_t sub_1D5CA1EE4()
{
  result = qword_1EDF345C0;
  if (!qword_1EDF345C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF345C0);
  }

  return result;
}

unint64_t sub_1D5CA1F38()
{
  result = qword_1EDF2EDA0;
  if (!qword_1EDF2EDA0)
  {
    sub_1D5C30060(255, &qword_1EDF2ED98, sub_1D5CA1E04, &type metadata for FormatSize, type metadata accessor for FormatSwitchValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2EDA0);
  }

  return result;
}

unint64_t sub_1D5CA1FC8()
{
  result = qword_1EDF405B8;
  if (!qword_1EDF405B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF405B8);
  }

  return result;
}

uint64_t sub_1D5CA201C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 120) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 120) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1D5CA208C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 120))
  {
    return (*a1 + 125);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

void sub_1D5CA20E8()
{
  if (!qword_1EDF3ED60)
  {
    sub_1D5CA2DF4();
    sub_1D5CA2E48();
    sub_1D5CA2F4C();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3ED60);
    }
  }
}

uint64_t FormatRemoteImage.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v49 = a2;
  sub_1D5CA2D48();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5CA20E8();
  sub_1D5B58B84(&qword_1EDF3ED68, sub_1D5CA20E8);
  sub_1D7264B0C();
  if (!v2)
  {
    v48 = v7;
    v11 = v49;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v12 = sub_1D7264AFC();
    v13 = Dictionary<>.errorOnUnknownKeys.getter(v12);

    v14 = v10;
    if (v13)
    {
      v15 = sub_1D726433C();
      v16 = *(v15 + 16);
      if (v16)
      {
        v17 = (v15 + 48);
        while (*v17 != 1)
        {
          v17 += 24;
          if (!--v16)
          {
            goto LABEL_7;
          }
        }

        v20 = *(v17 - 2);
        v19 = *(v17 - 1);

        v21 = sub_1D6621D70();
        sub_1D5E2D970();
        v3 = swift_allocError();
        *v22 = v20;
        *(v22 + 8) = v19;
        *(v22 + 16) = v21;
        *(v22 + 24) = xmmword_1D72874E0;
        swift_willThrow();
        (*(v48 + 8))(v14, v6);
        goto LABEL_10;
      }

LABEL_7:
    }

    sub_1D5CA2FA0();
    v50 = 0uLL;
    v51 = 0;
    sub_1D726431C();
    v18 = v52;
    v50 = xmmword_1D728CF30;
    v51 = 0;
    sub_1D726431C();
    v23 = v52;
    v50 = xmmword_1D7297410;
    v51 = 0;
    sub_1D726431C();
    v24 = v52;
    v50 = xmmword_1D72BAA60;
    v51 = 0;
    sub_1D726427C();
    v47 = v24;
    v25 = v52;
    v50 = xmmword_1D72BAA70;
    v51 = 0;
    sub_1D726427C();
    v46 = v25;
    v26 = v52;
    v50 = xmmword_1D72BAA80;
    v51 = 0;
    sub_1D726427C();
    v44 = v52;
    v45 = v26;
    v50 = xmmword_1D72BAA90;
    v51 = 0;
    sub_1D726427C();
    v27 = v52;
    v50 = xmmword_1D72BAAA0;
    v51 = 0;
    sub_1D726427C();
    v43 = v52;
    v50 = xmmword_1D72BAAB0;
    v51 = 0;
    sub_1D726427C();
    v41 = v52;
    v50 = xmmword_1D72BAAC0;
    v51 = 0;
    v42 = v6;
    sub_1D726427C();
    v40 = v52;
    v50 = xmmword_1D72BAAD0;
    v51 = 0;
    sub_1D726427C();
    v39 = v52;
    v50 = xmmword_1D72BAAE0;
    v51 = 0;
    sub_1D726427C();
    v38 = v52;
    v50 = xmmword_1D72BAAF0;
    v51 = 0;
    sub_1D726427C();
    v37 = v52;
    v50 = xmmword_1D7282A80;
    v51 = 0;
    sub_1D726427C();
    v36 = v52;
    v50 = xmmword_1D72BAB00;
    v51 = 0;
    sub_1D726427C();
    (*(v48 + 8))(v14, v42);
    v28 = v52;
    *v11 = v18;
    v11[1] = v23;
    v29 = v46;
    v11[2] = v47;
    v11[3] = v29;
    v30 = v44;
    v11[4] = v45;
    v11[5] = v30;
    v31 = v43;
    v11[6] = v27;
    v11[7] = v31;
    v32 = v40;
    v11[8] = v41;
    v11[9] = v32;
    v33 = v38;
    v11[10] = v39;
    v11[11] = v33;
    v34 = v36;
    v11[12] = v37;
    v11[13] = v34;
    v11[14] = v28;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

LABEL_10:
  sub_1D61E4FBC(a1, v3);
  swift_willThrow();

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D5CA2D48()
{
  if (!qword_1EDF3C688)
  {
    sub_1D5CA20E8();
    sub_1D5B58B84(&qword_1EDF3ED68, sub_1D5CA20E8);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3C688);
    }
  }
}

unint64_t sub_1D5CA2DF4()
{
  result = qword_1EDF405D0;
  if (!qword_1EDF405D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF405D0);
  }

  return result;
}

unint64_t sub_1D5CA2E48()
{
  result = qword_1EDF405D8;
  if (!qword_1EDF405D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF405D8);
  }

  return result;
}

unint64_t sub_1D5CA2EA0()
{
  result = qword_1EDF405C0;
  if (!qword_1EDF405C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF405C0);
  }

  return result;
}

unint64_t sub_1D5CA2EF8()
{
  result = qword_1EDF405C8;
  if (!qword_1EDF405C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF405C8);
  }

  return result;
}

unint64_t sub_1D5CA2F4C()
{
  result = qword_1EDF405E0;
  if (!qword_1EDF405E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF405E0);
  }

  return result;
}

unint64_t sub_1D5CA2FA0()
{
  result = qword_1EDF3C978;
  if (!qword_1EDF3C978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3C978);
  }

  return result;
}

uint64_t sub_1D5CA2FFC(char a1)
{
  result = 0x4C52553178;
  switch(a1)
  {
    case 1:
      return 0x4C52553278;
    case 2:
      return 0x4C52553378;
    case 3:
      return 0x365F4C52553178;
    case 4:
      v4 = 0x365F4C52553178;
      return v4 + 256;
    case 5:
      v5 = 0x365F4C52553178;
      return v5 | 0x200;
    case 6:
      return 0x385F4C52553178;
    case 7:
      v4 = 0x385F4C52553178;
      return v4 + 256;
    case 8:
      v5 = 0x385F4C52553178;
      return v5 | 0x200;
    case 9:
      return 0x32315F4C52553178;
    case 10:
      v6 = 0x32315F4C52553178;
      goto LABEL_18;
    case 11:
      v3 = 0x32315F4C52553178;
      goto LABEL_5;
    case 12:
      return 0x38315F4C52553178;
    case 13:
      v6 = 0x38315F4C52553178;
LABEL_18:
      result = v6 + 256;
      break;
    case 14:
      v3 = 0x38315F4C52553178;
LABEL_5:
      result = v3 | 0x200;
      break;
    case 15:
      result = 1885433183;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t FormatURL.init(from:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v41 = a2;
  v3 = type metadata accessor for FormatAbsoluteURL();
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v8 = v7;
  v46 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v40 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  v12 = v42;
  sub_1D7264B0C();
  v13 = v12;
  if (v12)
  {
LABEL_9:
    sub_1D61E4FBC(a1, v13);
    swift_willThrow();
  }

  else
  {
    *&v42 = v6;
    v14 = v46;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v15 = sub_1D7264AFC();
    v16 = Dictionary<>.errorOnUnknownKeys.getter(v15);

    v17 = v11;
    if (v16)
    {
      v18 = sub_1D726433C();
      v19 = (v18 + 40);
      v20 = *(v18 + 16) + 1;
      while (--v20)
      {
        v21 = v19 + 2;
        v22 = *v19;
        v19 += 2;
        if (v22 >= 4)
        {
          v23 = *(v21 - 3);

          sub_1D5E2D970();
          v24 = swift_allocError();
          *v25 = v23;
          *(v25 + 8) = v22;
          v13 = v24;
          *(v25 + 16) = &unk_1F5111518;
          *(v25 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v14 + 8))(v17, v8);
          goto LABEL_9;
        }
      }
    }

    sub_1D5CA3760();
    *v43 = 0uLL;
    sub_1D726431C();
    v27 = v14;
    if (v45 > 1u)
    {
      v31 = v41;
      if (v45 == 2)
      {
        v45 = xmmword_1D7279980;
        sub_1D5CA38E4();
        sub_1D726431C();
        (*(v27 + 8))(v17, v8);
        v42 = *v43;
        v32 = *&v43[16];
        v33 = v44;
        v34 = swift_allocObject();
        *(v34 + 16) = v42;
        *(v34 + 32) = v32;
        *(v34 + 40) = v33;
        v29 = v34 | 0x8000000000000000;
      }

      else
      {
        v45 = xmmword_1D7279980;
        sub_1D666668C();
        sub_1D726431C();
        (*(v27 + 8))(v17, v8);
        v38 = *&v43[8];
        v37 = *v43;
        v39 = swift_allocObject();
        *(v39 + 16) = v37;
        *(v39 + 24) = v38;
        v29 = v39 | 0xC000000000000000;
      }
    }

    else
    {
      if (v45)
      {
        v45 = xmmword_1D7279980;
        sub_1D5F868E4();
        sub_1D726431C();
        (*(v14 + 8))(v17, v8);
        v35 = *v43;
        v42 = *&v43[8];
        v36 = swift_allocObject();
        *(v36 + 16) = v35;
        *(v36 + 24) = v42;
        v29 = v36 | 0x4000000000000000;
      }

      else
      {
        *v43 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF2F900, type metadata accessor for FormatAbsoluteURL);
        v28 = v42;
        sub_1D726431C();
        (*(v27 + 8))(v17, v8);
        v29 = swift_allocBox();
        sub_1D5C8F76C(v28, v30, type metadata accessor for FormatAbsoluteURL);
      }

      v31 = v41;
    }

    *v31 = v29;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D5CA3760()
{
  result = qword_1EDF3C980;
  if (!qword_1EDF3C980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3C980);
  }

  return result;
}

unint64_t sub_1D5CA3814()
{
  result = qword_1EDF3C988[0];
  if (!qword_1EDF3C988[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF3C988);
  }

  return result;
}

uint64_t sub_1D5CA3868@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5CA3898();
  *a1 = result;
  return result;
}

uint64_t sub_1D5CA3898()
{
  v0 = sub_1D72641CC();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1D5CA38E4()
{
  result = qword_1EDF2FB78;
  if (!qword_1EDF2FB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2FB78);
  }

  return result;
}

uint64_t sub_1D5CA3938(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D5CA3980(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 25))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 24);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t FormatURLBinding.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v29 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v28[-1] - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v12 = sub_1D7264AFC();
    v13 = Dictionary<>.errorOnUnknownKeys.getter(v12);

    v14 = v10;
    v11 = a1;
    if (v13)
    {
      v15 = sub_1D726433C();
      v16 = (v15 + 40);
      v17 = *(v15 + 16) + 1;
      while (--v17)
      {
        v18 = v16 + 2;
        v19 = *v16;
        v16 += 2;
        if (v19 >= 4)
        {
          v20 = *(v18 - 3);

          sub_1D5E2D970();
          v3 = swift_allocError();
          *v21 = v20;
          *(v21 + 8) = v19;
          *(v21 + 16) = &unk_1F51113D8;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v7 + 8))(v14, v6);
          goto LABEL_10;
        }
      }
    }

    sub_1D5CA3E20();
    v28[0] = 0uLL;
    sub_1D726431C();
    v23 = v27;
    if (v27 > 2u)
    {
      if (v27 == 3)
      {
        v28[0] = xmmword_1D7279980;
        sub_1D5CCBB44();
      }

      else
      {
        if (v27 != 4)
        {
          v28[0] = xmmword_1D7279980;
          sub_1D60F3AFC();
          goto LABEL_24;
        }

        v28[0] = xmmword_1D7279980;
        sub_1D61970BC();
      }
    }

    else
    {
      if (!v27)
      {
        v27 = xmmword_1D7279980;
        sub_1D5C6A164();
        sub_1D726431C();
        (*(v7 + 8))(v14, v6);
        v24 = *&v28[0];
        v25 = *(v28 + 8);
LABEL_26:
        v26 = v29;
        *v29 = v24;
        *(v26 + 1) = v25;
        *(v26 + 24) = v23;
        return __swift_destroy_boxed_opaque_existential_1(v11);
      }

      if (v27 == 1)
      {
        v28[0] = xmmword_1D7279980;
        sub_1D60F0074();
LABEL_24:
        sub_1D726431C();
        (*(v7 + 8))(v14, v6);
        v24 = 0;
        goto LABEL_25;
      }

      v28[0] = xmmword_1D7279980;
      sub_1D66663E4();
    }

    sub_1D726431C();
    (*(v7 + 8))(v14, v6);
    v24 = v27;
LABEL_25:
    v25 = 0uLL;
    goto LABEL_26;
  }

  v11 = a1;
LABEL_10:
  sub_1D61E4FBC(v11, v3);
  swift_willThrow();

  return __swift_destroy_boxed_opaque_existential_1(v11);
}

unint64_t sub_1D5CA3E20()
{
  result = qword_1EDF2FB80;
  if (!qword_1EDF2FB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2FB80);
  }

  return result;
}

unint64_t sub_1D5CA3EDC()
{
  result = qword_1EDF2FB88;
  if (!qword_1EDF2FB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2FB88);
  }

  return result;
}

uint64_t sub_1D5CA3F30@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5CA3F64();
  *a1 = result;
  return result;
}

uint64_t sub_1D5CA3F64()
{
  v0 = sub_1D72641CC();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D5CA3FB0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v55 = a2;
  sub_1D5C2C40C(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v59 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v52 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v52 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v60 = (&v52 - v17);
  v62 = MEMORY[0x1E69E7CC8];
  sub_1D5CA43D4();
  result = sub_1D7261DAC();
  v58 = *(a1 + 16);
  if (!v58)
  {
    v21 = v62;
LABEL_20:
    v46 = v55;
    *v55 = a1;
    v46[1] = v21;
    return result;
  }

  v53 = v10;
  v54 = v14;
  v19 = 0;
  v20 = *(v4 + 80);
  v56 = v4;
  v57 = a1 + ((v20 + 32) & ~v20);
  v21 = v62;
  while (v19 < *(a1 + 16))
  {
    v22 = *(v4 + 72);
    v23 = v60;
    sub_1D5CA443C(v57 + v22 * v19, v60);
    v24 = *v23;
    swift_beginAccess();
    if (v21[2])
    {
      v25 = *(v24 + 16);
      v26 = *(v24 + 24);

      v27 = sub_1D5B69D90(v25, v26);
      v29 = v28;

      if (v29)
      {
        v62 = v21;

        v47 = v21[7] + v27 * v22;
        v48 = v53;
        sub_1D5CA443C(v47, v53);
        v49 = v54;
        sub_1D5CA44FC(v48, v54);
        type metadata accessor for FormatPackageError();
        sub_1D5B4B9B0(&qword_1EC881A40, type metadata accessor for FormatPackageError);
        swift_allocError();
        v50 = *v49;
        *v51 = v24;
        v51[1] = v50;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        sub_1D5CA44A0(v49);
        sub_1D5CA44A0(v60);
      }
    }

    v30 = a1;
    v32 = *(v24 + 16);
    v31 = *(v24 + 24);
    sub_1D5CA443C(v60, v59);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v61 = v21;
    v35 = sub_1D5B69D90(v32, v31);
    v36 = v21[2];
    v37 = (v34 & 1) == 0;
    v38 = v36 + v37;
    if (__OFADD__(v36, v37))
    {
      goto LABEL_24;
    }

    v39 = v34;
    if (v21[3] >= v38)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v34)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_1D6D7E420();
        if (v39)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_1D6D67114(v38, isUniquelyReferenced_nonNull_native);
      v40 = sub_1D5B69D90(v32, v31);
      if ((v39 & 1) != (v41 & 1))
      {
        goto LABEL_26;
      }

      v35 = v40;
      if (v39)
      {
LABEL_3:

        v21 = v61;
        sub_1D695A740(v59, v61[7] + v35 * v22);
        goto LABEL_4;
      }
    }

    v21 = v61;
    v61[(v35 >> 6) + 8] |= 1 << v35;
    v42 = (v21[6] + 16 * v35);
    *v42 = v32;
    v42[1] = v31;
    sub_1D5CA44FC(v59, v21[7] + v35 * v22);
    v43 = v21[2];
    v44 = __OFADD__(v43, 1);
    v45 = v43 + 1;
    if (v44)
    {
      goto LABEL_25;
    }

    v21[2] = v45;
LABEL_4:
    ++v19;
    result = sub_1D5CA44A0(v60);
    a1 = v30;
    v4 = v56;
    if (v58 == v19)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_1D726493C();
  __break(1u);
  return result;
}

void sub_1D5CA43D4()
{
  if (!qword_1EDF1B948)
  {
    sub_1D5C2C40C(255);
    v0 = sub_1D7261E1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1B948);
    }
  }
}

uint64_t sub_1D5CA443C(uint64_t a1, uint64_t a2)
{
  sub_1D5C2C40C(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5CA44A0(uint64_t a1)
{
  sub_1D5C2C40C(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5CA44FC(uint64_t a1, uint64_t a2)
{
  sub_1D5C2C40C(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t FormatSupplementaryCollection.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7264AEC();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    sub_1D5CA46B8();
    sub_1D5CA4790(&qword_1EDF05108, &qword_1EDF12438);
    sub_1D726472C();
    sub_1D5CA84CC(v8[6], &v7);
    v6 = v7;
    __swift_destroy_boxed_opaque_existential_1(v8);
    *a2 = v6;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D5CA46B8()
{
  if (!qword_1EDF1B3A0)
  {
    sub_1D5C2CA80(255, &qword_1EDF338C0, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for FormatObject);
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1B3A0);
    }
  }
}

uint64_t sub_1D5CA4748(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D5CA4790(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D5CA46B8();
    sub_1D5CA4748(a2, sub_1D5CA4820);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D5CA4820()
{
  if (!qword_1EDF338C0)
  {
    sub_1D5B4BADC();
    v0 = type metadata accessor for FormatObject();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF338C0);
    }
  }
}

uint64_t sub_1D5CA487C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 105) = 1;
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

    *(result + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D5CA48D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 105))
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

uint64_t FormatSupplementary.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  sub_1D5C2E60C(0, &qword_1EDF3BD98, sub_1D5B4C754, sub_1D5B4C7A8);
  v82 = v3;
  v79 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v81 = &v72 - v5;
  sub_1D5C2E528();
  v84 = v6;
  v80 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v86 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C8CD38();
  v87 = v9;
  v83 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  *&v91 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C2E60C(0, &qword_1EDF3BD48, sub_1D5C2E688, sub_1D5C2E6DC);
  *&v89 = v12;
  v85 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v88 = &v72 - v14;
  sub_1D5C2E60C(0, &qword_1EDF3BCF8, sub_1D5C91044, sub_1D5C50B48);
  v16 = v15;
  v92 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v72 - v18;
  sub_1D5CA5778();
  v21 = v20;
  v93 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5CA580C();
  sub_1D5B58B84(&qword_1EDF25468, sub_1D5CA580C);
  v25 = v94;
  sub_1D7264B0C();
  v26 = v25;
  if (v25)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v26);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v27 = sub_1D7264AFC();
  v28 = Dictionary<>.errorOnUnknownKeys.getter(v27);

  v29 = v19;
  if (v28)
  {
    v30 = sub_1D726433C();
    v31 = *(v30 + 16);
    if (v31)
    {
      v32 = (v30 + 48);
      while (*v32 != 1)
      {
        v32 += 24;
        if (!--v31)
        {
          goto LABEL_7;
        }
      }

      v38 = *(v32 - 2);
      v37 = *(v32 - 1);

      v39 = sub_1D66178D0();
      sub_1D5E2D970();
      v26 = swift_allocError();
      *v40 = v38;
      *(v40 + 8) = v37;
      *(v40 + 16) = v39;
      *(v40 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v93 + 8))(v24, v21);
      goto LABEL_10;
    }

LABEL_7:
  }

  v97 = 0uLL;
  v98 = 0;
  v33 = sub_1D72642BC();
  v35 = v34;
  v36 = v33;
  v97 = xmmword_1D728CF30;
  v98 = 0;
  v78 = sub_1D726422C();
  v94 = v42;
  v97 = xmmword_1D7297410;
  v98 = 0;
  v75 = sub_1D726422C();
  v77 = v43;
  v97 = xmmword_1D72BAA60;
  v98 = 0;
  sub_1D5C51470();
  v76 = v29;
  v44 = v16;
  sub_1D726431C();
  v45 = v76;
  v46 = sub_1D725A74C();
  (*(v92 + 8))(v45, v44);
  type metadata accessor for FormatSupplementaryNodeStyle();
  v97 = xmmword_1D72BAA70;
  v98 = 0;
  sub_1D5B58B84(&unk_1EDF216F0, type metadata accessor for FormatSupplementaryNodeStyle);
  sub_1D726427C();
  v73 = v36;
  v76 = v46;
  v92 = v95;
  v74 = xmmword_1D72BAA80;
  v97 = xmmword_1D72BAA80;
  v98 = 0;
  if (sub_1D726434C())
  {
    v95 = v74;
    v96 = 0;
    sub_1D5C2F040();
    v48 = v88;
    v47 = v89;
    sub_1D726431C();
    v49 = v91;
    v50 = sub_1D725A74C();
    v51 = v47;
    v52 = v50;
    (*(v85 + 8))(v48, v51);
    v53 = v49;
  }

  else
  {
    v52 = MEMORY[0x1E69E7CC0];
    v53 = v91;
  }

  v54 = v90;
  v91 = xmmword_1D72BAA90;
  v97 = xmmword_1D72BAA90;
  v98 = 0;
  if (sub_1D726434C())
  {
    *&v89 = v52;
    v95 = v91;
    v96 = 0;
    sub_1D5B58B84(&qword_1EDF3BE00, sub_1D5C8CD38);
    v55 = v53;
    v56 = v87;
    sub_1D726431C();
    v88 = sub_1D725A74C();
    (*(v83 + 8))(v55, v56);
    v52 = v89;
  }

  else
  {
    v88 = MEMORY[0x1E69E7CD0];
  }

  v89 = xmmword_1D72BAAA0;
  v97 = xmmword_1D72BAAA0;
  v98 = 0;
  v57 = sub_1D726434C();
  *&v91 = v24;
  if (v57)
  {
    v95 = v89;
    v96 = 0;
    sub_1D5CE75A4();
    sub_1D726431C();
    v58 = v99;
  }

  else
  {
    v58 = 0;
  }

  LODWORD(v85) = v58;
  v89 = xmmword_1D72BAAB0;
  v97 = xmmword_1D72BAAB0;
  v98 = 0;
  v59 = sub_1D726434C();
  v60 = v86;
  if (v59)
  {
    v95 = v89;
    v96 = 0;
    sub_1D5B58B84(&qword_1EDF3BD80, sub_1D5C2E528);
    v61 = v60;
    v62 = v84;
    sub_1D726431C();
    v87 = sub_1D725A74C();
    (*(v80 + 8))(v61, v62);
  }

  else
  {
    v87 = MEMORY[0x1E69E7CC0];
  }

  v89 = xmmword_1D72BAAC0;
  v97 = xmmword_1D72BAAC0;
  v98 = 0;
  if (sub_1D726434C())
  {
    v86 = v35;
    v95 = v89;
    v96 = 0;
    sub_1D666CDAC();
    v63 = v81;
    v64 = v82;
    sub_1D726431C();
    *&v89 = v52;
    v65 = sub_1D725A74C();
    (*(v79 + 8))(v63, v64);
    v35 = v86;
  }

  else
  {
    *&v89 = v52;
    v65 = MEMORY[0x1E69E7CC0];
  }

  v97 = xmmword_1D72BAAD0;
  v98 = 0;
  sub_1D5CA5BD0();
  v66 = v91;
  sub_1D726427C();
  (*(v93 + 8))(v66, v21);
  v67 = v99;
  swift_bridgeObjectRelease_n();
  *v54 = v73;
  *(v54 + 8) = v35;
  v68 = v94;
  *(v54 + 16) = v78;
  *(v54 + 24) = v68;
  v69 = v77;
  *(v54 + 32) = v75;
  *(v54 + 40) = v69;
  v70 = v92;
  *(v54 + 48) = v76;
  *(v54 + 56) = v70;
  v71 = v88;
  *(v54 + 64) = v89;
  *(v54 + 72) = v71;
  *(v54 + 80) = v85;
  *(v54 + 81) = v95;
  *(v54 + 84) = *(&v95 + 3);
  *(v54 + 88) = v87;
  *(v54 + 96) = v65;
  *(v54 + 104) = v67;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D5CA5778()
{
  if (!qword_1EDF1A140)
  {
    sub_1D5CA580C();
    sub_1D5B58B84(&qword_1EDF25468, sub_1D5CA580C);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A140);
    }
  }
}

void sub_1D5CA580C()
{
  if (!qword_1EDF25460)
  {
    sub_1D5CA5890();
    sub_1D5CA58E4();
    sub_1D5CA59E8();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF25460);
    }
  }
}

unint64_t sub_1D5CA5890()
{
  result = qword_1EDF2BE30;
  if (!qword_1EDF2BE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2BE30);
  }

  return result;
}

unint64_t sub_1D5CA58E4()
{
  result = qword_1EDF2BE38;
  if (!qword_1EDF2BE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2BE38);
  }

  return result;
}

unint64_t sub_1D5CA593C()
{
  result = qword_1EDF2BE20;
  if (!qword_1EDF2BE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2BE20);
  }

  return result;
}

unint64_t sub_1D5CA5994()
{
  result = qword_1EDF2BE28;
  if (!qword_1EDF2BE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2BE28);
  }

  return result;
}

unint64_t sub_1D5CA59E8()
{
  result = qword_1EDF2BE40;
  if (!qword_1EDF2BE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2BE40);
  }

  return result;
}

uint64_t sub_1D5CA5A44(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x7365707974;
    v7 = 0xD000000000000011;
    if (a1 != 10)
    {
      v7 = 1885433183;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x726F7463656C6573;
    v9 = 1684957547;
    if (a1 != 7)
    {
      v9 = 0x736E6F6974706FLL;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x696669746E656469;
    v2 = 0x6E6572646C696863;
    v3 = 0x656C797473;
    if (a1 != 4)
    {
      v3 = 0x73656C797473;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 1701667182;
    if (a1 != 1)
    {
      v4 = 0x7470697263736564;
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
}