void sub_1D5C25D84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D5C25E1C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1D5C25E28()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_1D6832474;
  }

  else
  {

    v2 = sub_1D5C25F44;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5C25F44()
{
  v0[32] = v0[14];
  sub_1D725C4CC();
  sub_1D725C73C();

  if (!v0[15])
  {
    __break(1u);
    goto LABEL_13;
  }

  v2 = v0[31];
  sub_1D725C57C();

  sub_1D725C58C();
  if (!v2)
  {

    sub_1D725C4CC();

    sub_1D725C73C();

    v5 = v0[11];
    v0[33] = v0[10];
    v0[34] = v5;
    if (v5 >> 60 != 15)
    {
      sub_1D725B01C();
      v0[35] = (*(v0[20] + 24))(v0[24], v0[21]);
      v8 = swift_task_alloc();
      v0[36] = v8;
      *v8 = v0;
      v8[1] = sub_1D5D0CC54;
      v1 = v0[16];

      return MEMORY[0x1EEE44EE0](v1);
    }

LABEL_13:
    __break(1u);
    return MEMORY[0x1EEE44EE0](v1);
  }

  v3 = v0[27];
  v4 = v0[26];

  sub_1D5B952E4(v4, v3);

  v6 = v0[1];

  return v6();
}

uint64_t FormatFeedGroup.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v126 = a2;
  v127 = type metadata accessor for FormatFeedGroup();
  MEMORY[0x1EEE9AC00](v127, v3);
  v5 = &v109 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FormatContent.Resolved();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C26F68(0, &qword_1EDF03CA0, MEMORY[0x1E69E6F48]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v109 - v14;
  v16 = a1[3];
  v128 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D5C26FCC();
  v17 = v129;
  sub_1D7264B0C();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(v128);
  }

  v125 = v5;
  v129 = v12;
  LOBYTE(v130) = 0;
  sub_1D5C270D0(&unk_1EDF11E40, type metadata accessor for FormatContent.Resolved);
  v18 = v15;
  sub_1D726431C();
  LOBYTE(v130) = 1;
  v19 = sub_1D726422C();
  v21 = v20;
  v22 = v19;
  LOBYTE(v130) = 2;
  sub_1D5CEB648();
  sub_1D726431C();
  v23 = v134;
  LOBYTE(v130) = 3;
  sub_1D726431C();
  v24 = v22;
  v25 = v133;
  LOBYTE(v130) = 4;
  sub_1D72642DC();
  v27 = v26;
  LOBYTE(v130) = 5;
  v28 = sub_1D726424C();
  LODWORD(v123) = v29;
  v124 = v28;
  LOBYTE(v130) = 11;
  v30 = sub_1D726424C();
  LODWORD(v121) = v31;
  v122 = v30;
  LOBYTE(v130) = 6;
  v32 = sub_1D726425C();
  LODWORD(v119) = v33;
  v120 = v32;
  LOBYTE(v130) = 7;
  v118 = sub_1D726425C();
  v117 = v34;
  v114 = v9;
  v115 = v18;
  LOBYTE(v130) = 8;
  v116 = v11;
  v113 = sub_1D726425C();
  v112 = v36;
  LOBYTE(v130) = 9;
  v111 = sub_1D726425C();
  v110 = v37;
  LOBYTE(v130) = 10;
  sub_1D5B9AB58();
  sub_1D726427C();
  v109 = v132;
  v38 = v125;
  *v125 = 0;
  v39 = v127;
  v40 = (v38 + v127[6]);
  sub_1D5CEB888(v114, v38 + v127[5], type metadata accessor for FormatContent.Resolved);
  *v40 = v24;
  v40[1] = v21;
  *(v38 + v39[7]) = v23;
  *(v38 + v39[8]) = v25;
  *(v38 + v39[9]) = v27;
  v41 = *&v124;
  if (v123)
  {
    v41 = 0.0;
  }

  *(v38 + v39[10]) = v41;
  v42 = *&v122;
  if (v121)
  {
    v42 = 0.0;
  }

  *(v38 + v39[11]) = v42;
  v43 = v38 + v39[12];
  *v43 = v120;
  v43[8] = v119 & 1;
  v44 = v38 + v39[13];
  *v44 = v118;
  v44[8] = v117 & 1;
  v45 = v38 + v39[14];
  *v45 = v113;
  v45[8] = v112 & 1;
  v46 = v38 + v39[15];
  *v46 = v111;
  v46[8] = v110 & 1;
  *(v38 + v39[16]) = v109;
  v47 = *&v114[*(v6 + 36)];
  i = sub_1D5CEB958(v47);
  v119 = v47;
  v49 = sub_1D5CECAC0(v47);
  v50 = 0;
  if (i >> 62)
  {
    goto LABEL_49;
  }

  v51 = i & 0xFFFFFFFFFFFFFF8;

  sub_1D726479C();
  sub_1D5B5B5F8();
  if (swift_dynamicCastMetatype() || (v77 = *((i & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
  {
LABEL_10:

    goto LABEL_11;
  }

  v78 = v51 + 32;
  while (1)
  {
    v131 = &unk_1F5290D68;
    if (!swift_dynamicCastObjCProtocolConditional())
    {
      break;
    }

    v78 += 8;
    if (!--v77)
    {
      goto LABEL_10;
    }
  }

  for (i = v51 | 1; ; i = v79)
  {
LABEL_11:
    if (v49 >> 62)
    {
      sub_1D5B5B5F8();

      v52 = sub_1D726403C();
    }

    else
    {

      sub_1D726479C();
      sub_1D5B5B5F8();
      v52 = v49;
    }

    v130 = i;
    sub_1D5CED3B0(v52);
    *(v125 + v127[17]) = v130;
    v53 = sub_1D5CEB958(v119);
    v54 = v53;
    v118 = v50;
    if (!(v53 >> 62))
    {
      v55 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v55)
      {
        goto LABEL_52;
      }

      goto LABEL_15;
    }

    v55 = sub_1D7263BFC();
    if (!v55)
    {
LABEL_52:
      v56 = MEMORY[0x1E69E7CC8];
LABEL_53:

      v122 = sub_1D5CECAC0(v119);
      if (v122 >> 62)
      {
        goto LABEL_84;
      }

      v121 = *((v122 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v121)
      {
LABEL_55:
        v80 = 0;
        v119 = v122 & 0xFFFFFFFFFFFFFF8;
        v120 = v122 & 0xC000000000000001;
        do
        {
          if (v120)
          {
            v83 = MEMORY[0x1DA6FB460](v80, v122);
          }

          else
          {
            if (v80 >= *(v119 + 16))
            {
              goto LABEL_82;
            }

            v83 = *(v122 + 8 * v80 + 32);
          }

          v84 = v83;
          v123 = v80 + 1;
          if (__OFADD__(v80, 1))
          {
            __break(1u);
LABEL_81:
            __break(1u);
LABEL_82:
            __break(1u);
LABEL_83:
            __break(1u);
LABEL_84:
            v121 = sub_1D7263BFC();
            if (!v121)
            {
              break;
            }

            goto LABEL_55;
          }

          v85 = [v83 identifier];
          v124 = sub_1D726207C();
          v87 = v86;

          v88 = [v84 scoreProfile];
          if (!v88)
          {
            v99 = sub_1D5B69D90(v124, v87);
            v101 = v100;

            if (v101)
            {
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v130 = v56;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_1D6D8193C();
                v56 = v130;
              }

              sub_1D6716D80(v99, v56);
            }

            else
            {
            }

            goto LABEL_57;
          }

          v89 = v88;
          v90 = swift_isUniquelyReferenced_nonNull_native();
          v130 = v56;
          v92 = sub_1D5B69D90(v124, v87);
          v93 = v56[2];
          v94 = (v91 & 1) == 0;
          v95 = v93 + v94;
          if (__OFADD__(v93, v94))
          {
            goto LABEL_81;
          }

          v96 = v91;
          if (v56[3] >= v95)
          {
            if (v90)
            {
              if (v91)
              {
                goto LABEL_56;
              }
            }

            else
            {
              sub_1D6D8193C();
              if (v96)
              {
                goto LABEL_56;
              }
            }
          }

          else
          {
            sub_1D6D6C83C(v95, v90);
            v97 = sub_1D5B69D90(v124, v87);
            if ((v96 & 1) != (v98 & 1))
            {
              goto LABEL_86;
            }

            v92 = v97;
            if (v96)
            {
LABEL_56:

              v56 = v130;
              v81 = v130[7];
              v82 = *(v81 + 8 * v92);
              *(v81 + 8 * v92) = v89;

              goto LABEL_57;
            }
          }

          v56 = v130;
          v130[(v92 >> 6) + 8] |= 1 << v92;
          v103 = (v56[6] + 16 * v92);
          *v103 = v124;
          v103[1] = v87;
          *(v56[7] + 8 * v92) = v89;

          v104 = v56[2];
          v75 = __OFADD__(v104, 1);
          v105 = v104 + 1;
          if (v75)
          {
            goto LABEL_83;
          }

          v56[2] = v105;
LABEL_57:
          ++v80;
        }

        while (v123 != v121);
      }

      (*(v129 + 8))(v115, v116);
      sub_1D5CED790(v114, type metadata accessor for FormatContent.Resolved);
      v106 = v126;
      v107 = v127;
      v108 = v125;
      *(v125 + v127[18]) = v56;
      *(v108 + v107[19]) = 0;
      sub_1D5CED978(v108, v106, type metadata accessor for FormatFeedGroup);
      return __swift_destroy_boxed_opaque_existential_1(v128);
    }

LABEL_15:
    v124 = 0;
    v120 = v54 & 0xFFFFFFFFFFFFFF8;
    v121 = v54 & 0xC000000000000001;
    v56 = MEMORY[0x1E69E7CC8];
LABEL_19:
    if (v121)
    {
      v50 = MEMORY[0x1DA6FB460](v124, v54);
    }

    else
    {
      if (v124 >= *(v120 + 16))
      {
        goto LABEL_47;
      }

      v50 = *(v54 + 8 * v124 + 32);
      swift_unknownObjectRetain();
    }

    v122 = v124 + 1;
    if (!__OFADD__(v124, 1))
    {
      break;
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    sub_1D5B5B5F8();

    v79 = sub_1D726403C();
    swift_bridgeObjectRelease_n();
  }

  v49 = [v50 identifier];
  v123 = sub_1D726207C();
  v58 = v57;

  v59 = [v50 scoreProfile];
  if (!v59)
  {
    v49 = sub_1D5B69D90(v123, v58);
    v70 = v69;

    if (v70)
    {
      v71 = swift_isUniquelyReferenced_nonNull_native();
      v130 = v56;
      if ((v71 & 1) == 0)
      {
        sub_1D6D8193C();
        v56 = v130;
      }

      sub_1D6716D80(v49, v56);
    }

    swift_unknownObjectRelease();
    goto LABEL_18;
  }

  v60 = v59;
  v61 = swift_isUniquelyReferenced_nonNull_native();
  v130 = v56;
  v63 = sub_1D5B69D90(v123, v58);
  v64 = v56[2];
  v65 = (v62 & 1) == 0;
  v66 = v64 + v65;
  if (__OFADD__(v64, v65))
  {
    goto LABEL_46;
  }

  v49 = v62;
  if (v56[3] >= v66)
  {
    if (v61)
    {
      if (v62)
      {
        goto LABEL_35;
      }
    }

    else
    {
      sub_1D6D8193C();
      if (v49)
      {
LABEL_35:

        v56 = v130;
        v72 = v130[7];
        v49 = *(v72 + 8 * v63);
        *(v72 + 8 * v63) = v60;
        swift_unknownObjectRelease();

        goto LABEL_18;
      }
    }

LABEL_37:
    v56 = v130;
    v130[(v63 >> 6) + 8] |= 1 << v63;
    v73 = (v56[6] + 16 * v63);
    *v73 = v123;
    v73[1] = v58;
    *(v56[7] + 8 * v63) = v60;
    swift_unknownObjectRelease();
    v74 = v56[2];
    v75 = __OFADD__(v74, 1);
    v76 = v74 + 1;
    if (v75)
    {
      goto LABEL_48;
    }

    v56[2] = v76;
LABEL_18:
    ++v124;
    if (v122 == v55)
    {
      goto LABEL_53;
    }

    goto LABEL_19;
  }

  sub_1D6D6C83C(v66, v61);
  v67 = sub_1D5B69D90(v123, v58);
  if ((v49 & 1) == (v68 & 1))
  {
    v63 = v67;
    if (v49)
    {
      goto LABEL_35;
    }

    goto LABEL_37;
  }

LABEL_86:
  result = sub_1D726493C();
  __break(1u);
  return result;
}

void sub_1D5C26F68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D5C26FCC();
    v7 = a3(a1, &type metadata for FormatFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D5C26FCC()
{
  result = qword_1EDF15AB8[0];
  if (!qword_1EDF15AB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF15AB8);
  }

  return result;
}

unint64_t sub_1D5C27024()
{
  result = qword_1EDF15AA8;
  if (!qword_1EDF15AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF15AA8);
  }

  return result;
}

unint64_t sub_1D5C2707C()
{
  result = qword_1EDF15AB0;
  if (!qword_1EDF15AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF15AB0);
  }

  return result;
}

uint64_t sub_1D5C270D0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D5C27134(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0xD000000000000024;
    v7 = 0x6E696C6F6F706572;
    if (a1 != 10)
    {
      v7 = 0x72685465726F6373;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    if (a1 <= 8u)
    {
      return 0xD000000000000024;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x746E65746E6F63;
    v2 = 0xD000000000000016;
    v3 = 0x746C754D6B6E6172;
    if (a1 != 4)
    {
      v3 = 0x726F635365736162;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x6E656449646E696BLL;
    if (a1 != 1)
    {
      v4 = 0x6973695664696170;
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

void FormatContent.Resolved.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v93 = a2;
  sub_1D5C28B8C(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v95 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1E69E6720];
  sub_1D5B5AB24(0, &qword_1EDF43A28, sub_1D5C28BC0, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v96 = &v87 - v9;
  sub_1D5B5AB24(0, &qword_1EDF45AB0, MEMORY[0x1E69B40B8], v6);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v94 = &v87 - v12;
  sub_1D5B5AB24(0, &qword_1EDF17608, sub_1D5C28BF4, v6);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v97 = &v87 - v15;
  sub_1D5B5AFCC(0);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v98 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5D160(0);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v99 = &v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C28CC4(0);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v100 = &v87 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C28CF8();
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v104 = &v87 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1D725891C();
  v101 = *(v28 - 8);
  v102 = v28;
  MEMORY[0x1EEE9AC00](v28, v29);
  v103 = &v87 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C28DE4(0, &qword_1EDF03AB8, sub_1D5C28E4C, &_s8ResolvedV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v32 = v31;
  v105 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v33);
  v35 = &v87 - v34;
  v36 = type metadata accessor for FormatContent.Resolved();
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = (&v87 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C28E4C();
  v40 = v106;
  sub_1D7264B0C();
  v41 = a1;
  if (v40)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v42 = v103;
    v43 = v104;
    v91 = v36;
    v92 = v41;
    v106 = v39;
    LOBYTE(v108) = 0;
    v44 = sub_1D72642BC();
    v45 = v106;
    *v106 = v44;
    v45[1] = v46;
    LOBYTE(v108) = 1;
    sub_1D5B85F48(&qword_1EDF45B08, MEMORY[0x1E6969530]);
    v47 = v102;
    sub_1D726431C();
    v48 = v91;
    (*(v101 + 32))(v45 + v91[5], v42, v47);
    sub_1D5B5A7F0(0, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    v50 = v49;
    v107 = 2;
    v51 = sub_1D5B9976C(&qword_1EDF3C830);
    v103 = 0;
    sub_1D726431C();
    *(v45 + v48[6]) = v108;
    v107 = 3;
    sub_1D726427C();
    v89 = v51;
    v90 = v50;
    v52 = MEMORY[0x1E69E7CC0];
    if (v108)
    {
      v52 = v108;
    }

    *(v45 + v48[7]) = v52;
    sub_1D5B5ABEC(0);
    v107 = 4;
    sub_1D5C29188(&unk_1EDF04D98, sub_1D5B5ABEC, sub_1D5C291F8);
    sub_1D726431C();
    *(v45 + v48[8]) = v108;
    sub_1D5B5A7F0(0, &qword_1EDF3C8C0, &type metadata for FormatContentSubgroup.ResolvedContainer, MEMORY[0x1E69E62F8]);
    v107 = 5;
    sub_1D5C7F1C4(&unk_1EDF04E08, sub_1D5C506C8);
    sub_1D726431C();
    v88 = v35;
    *(v45 + v48[9]) = v108;
    type metadata accessor for FormatContentSubgroupNeighborsResolver();

    static FormatContentSubgroupNeighborsResolver.resolve(subgroups:)(v53, &v108);

    *(v45 + v48[10]) = v108;
    sub_1D5B5AD98();
    v107 = 6;
    sub_1D5C29188(&qword_1EDF1B350, sub_1D5B5AD98, sub_1D5C863EC);
    sub_1D726431C();
    *(v45 + v48[11]) = v108;
    sub_1D5B5AE40(0, &qword_1EDF43B90, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168], MEMORY[0x1E69E64E8]);
    v107 = 7;
    sub_1D5CB5E08(&qword_1EDF3C7D0);
    sub_1D726427C();
    v54 = MEMORY[0x1E69E7CD0];
    if (v108)
    {
      v54 = v108;
    }

    *(v45 + v91[12]) = v54;
    sub_1D5CEB0D8();
    v56 = v55;
    LOBYTE(v108) = 8;
    sub_1D5B85F48(&qword_1EDF177C0, sub_1D5CEB0D8);
    sub_1D726427C();
    v57 = *(v56 - 8);
    if ((*(v57 + 48))(v43, 1, v56) == 1)
    {
      sub_1D5CEB140(v43, sub_1D5C28CF8);
      v58 = 0;
    }

    else
    {
      sub_1D725BF7C();
      v58 = v108;
      (*(v57 + 8))(v43, v56);
    }

    *(v106 + v91[13]) = v58;
    sub_1D5C28C5C();
    v60 = v59;
    LOBYTE(v108) = 9;
    sub_1D5B85F48(&qword_1EDF17658, sub_1D5C28C5C);
    sub_1D726427C();
    v61 = *(v60 - 8);
    if ((*(v61 + 48))(v100, 1, v60) == 1)
    {
      sub_1D5CEB140(v100, sub_1D5C28CC4);
      v62 = 0;
    }

    else
    {
      v63 = v100;
      sub_1D725BF7C();
      v62 = v108;
      (*(v61 + 8))(v63, v60);
    }

    *(v106 + v91[14]) = v62;
    sub_1D5B5D194();
    v65 = v64;
    LOBYTE(v108) = 13;
    sub_1D5B85F48(&qword_1EDF17710, sub_1D5B5D194);
    sub_1D726427C();
    LODWORD(v104) = 1;
    v66 = *(v65 - 8);
    if ((*(v66 + 48))(v99, 1, v65) == 1)
    {
      sub_1D5CEB140(v99, sub_1D5B5D160);
      v67 = 0;
    }

    else
    {
      v68 = v99;
      sub_1D725BF7C();
      v67 = v108;
      (*(v66 + 8))(v68, v65);
    }

    *(v106 + v91[15]) = v67;
    type metadata accessor for FormatWebEmbed.Resolved();
    LOBYTE(v108) = 14;
    sub_1D5B85F48(&unk_1EDF11A98, type metadata accessor for FormatWebEmbed.Resolved);
    sub_1D726427C();
    sub_1D5CEB3E0(v98, v106 + v91[16], sub_1D5B5AFCC);
    sub_1D5C28BF4();
    v70 = v69;
    LOBYTE(v108) = 16;
    sub_1D5B85F48(&qword_1EDF17620, sub_1D5C28BF4);
    sub_1D726427C();
    v71 = *(v70 - 8);
    if ((*(v71 + 48))(v97, 1, v70) == 1)
    {
      sub_1D5CEB4C8(v97, &qword_1EDF17608, sub_1D5C28BF4, MEMORY[0x1E69E6720], sub_1D5B5AB24);
      v72 = 0;
    }

    else
    {
      v73 = v97;
      sub_1D725BF7C();
      v72 = v108;
      (*(v71 + 8))(v73, v70);
    }

    *(v106 + v91[17]) = v72;
    v107 = 11;
    sub_1D726431C();
    *(v106 + v91[20]) = v108;
    v107 = 12;
    sub_1D5CEB528();
    sub_1D726427C();
    *(v106 + v91[19]) = v108;
    sub_1D5C28BC0(0);
    v75 = v74;
    LOBYTE(v108) = 15;
    sub_1D5B85F48(&qword_1EDF43A40, sub_1D5C28BC0);
    sub_1D726427C();
    v76 = *(v75 - 8);
    if ((*(v76 + 48))(v96, 1, v75) == 1)
    {
      sub_1D5CEB4C8(v96, &qword_1EDF43A28, sub_1D5C28BC0, MEMORY[0x1E69E6720], sub_1D5B5AB24);
      v77 = 1;
    }

    else
    {
      v78 = v96;
      sub_1D725BF7C();
      (*(v76 + 8))(v78, v75);
      v77 = 0;
    }

    v79 = sub_1D72608BC();
    v80 = v94;
    (*(*(v79 - 8) + 56))(v94, v77, 1, v79);
    sub_1D5CEB57C(v80, v106 + v91[21]);
    sub_1D5C28B0C();
    v82 = v81;
    LOBYTE(v108) = 10;
    sub_1D5B85F48(&qword_1EDF177F8, sub_1D5C28B0C);
    sub_1D726427C();
    v83 = *(v82 - 8);
    if ((*(v83 + 48))(v95, 1, v82) == 1)
    {
      (*(v105 + 8))(v88, v32);
      sub_1D5CEB140(v95, sub_1D5C28B8C);
      v84 = 0;
    }

    else
    {
      v85 = v95;
      sub_1D725BF7C();
      (*(v105 + 8))(v88, v32);
      v84 = v108;
      (*(v83 + 8))(v85, v82);
    }

    v86 = v106;
    *(v106 + v91[18]) = v84;
    sub_1D5CEB5E0(v86, v93, type metadata accessor for FormatContent.Resolved);
    __swift_destroy_boxed_opaque_existential_1(v92);
    sub_1D5CEB140(v86, type metadata accessor for FormatContent.Resolved);
  }
}

void sub_1D5C28B0C()
{
  if (!qword_1EDF177E8)
  {
    sub_1D5B5A498(255, &qword_1EDF3C790);
    v0 = sub_1D725BFAC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF177E8);
    }
  }
}

void sub_1D5C28BF4()
{
  if (!qword_1EDF17610)
  {
    sub_1D5B5A498(255, &qword_1EDF3C6B0);
    v0 = sub_1D725BFAC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF17610);
    }
  }
}

void sub_1D5C28C5C()
{
  if (!qword_1EDF17650)
  {
    sub_1D5B5A498(255, &qword_1EDF3C6C0);
    v0 = sub_1D725BFAC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF17650);
    }
  }
}

void sub_1D5C28CF8()
{
  if (!qword_1EDF177A0)
  {
    sub_1D5C28D7C(255, &qword_1EDF177B0, &qword_1EDF3C770, &protocolRef_FCTagProviding, MEMORY[0x1E69D6C08]);
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF177A0);
    }
  }
}

void sub_1D5C28D7C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D5B5534C(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D5C28DE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1D5C28E4C()
{
  result = qword_1EDF11E70;
  if (!qword_1EDF11E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11E70);
  }

  return result;
}

unint64_t sub_1D5C28EA4()
{
  result = qword_1EDF11E58;
  if (!qword_1EDF11E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11E58);
  }

  return result;
}

unint64_t sub_1D5C28EFC()
{
  result = qword_1EDF11E60;
  if (!qword_1EDF11E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11E60);
  }

  return result;
}

unint64_t sub_1D5C28F6C(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x446873696C627570;
      break;
    case 2:
      result = 0x6F7779654B644169;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x73656D656874;
      break;
    case 5:
      result = 0x70756F7267627573;
      break;
    case 6:
      result = 0x736E6F6974706FLL;
      break;
    case 7:
      result = 0x726F7463656C6573;
      break;
    case 8:
      result = 6775156;
      break;
    case 9:
      result = 0x6575737369;
      break;
    case 10:
      result = 0x7069726373627573;
      break;
    case 11:
      result = 0x7974696E69666661;
      break;
    case 12:
      result = 0xD000000000000016;
      break;
    case 13:
      result = 0x656E696C64616568;
      break;
    case 14:
      result = 0x6465626D45626577;
      break;
    case 15:
      result = 0xD000000000000011;
      break;
    case 16:
      result = 0x657069636572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D5C29188(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_1D5C2922C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = FormatPackageInventory.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

void *FormatPackageInventory.init(from:)(void *a1)
{
  v3 = v1;
  v5 = *v3;
  v123 = v2;
  v124 = v5;
  sub_1D5C2AA90(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v120 = &v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for FormatCompilerOptions(0);
  MEMORY[0x1EEE9AC00](v118, v9);
  v119 = &v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5C268(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v121 = &v112 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D725BD1C();
  v116 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v112 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C2B0C4(0, &qword_1EDF03A00, sub_1D5C2B194, &type metadata for FormatPackageInventory.CodingKeys, MEMORY[0x1E69E6F48]);
  v19 = v18;
  v122 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v112 - v21;
  v23 = (v3 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__name);
  *v23 = 0;
  v23[1] = 0;
  v126 = v23;
  v127 = a1;
  v128 = v3;
  v24 = (v3 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__comment);
  *v24 = 0;
  v24[1] = 0;
  v125 = v24;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C2B194();
  v25 = v123;
  sub_1D7264B0C();
  if (v25)
  {
    v30 = 0;
    v154 = 0;
    LODWORD(v117) = 0;
    LODWORD(v118) = 0;
    LODWORD(v119) = 0;
    LODWORD(v120) = 0;
    LODWORD(v121) = 0;
    LODWORD(v122) = 0;
    LODWORD(v123) = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = v128;
    goto LABEL_4;
  }

  v26 = v17;
  v27 = v121;
  v115 = v14;
  v153 = 0;
  v28 = sub_1D72642BC();
  v29 = 0;
  v38 = v128;
  v128[2] = v28;
  v38[3] = v39;
  v153 = 1;
  sub_1D5B4B9F8(&qword_1EDF43A48, MEMORY[0x1E69D6B38]);
  v40 = v27;
  v41 = v115;
  sub_1D726427C();
  v123 = v22;
  v42 = v116;
  v43 = *(v116 + 48);
  if (v43(v40, 1, v41) == 1)
  {
    v113 = 0;
    __swift_project_boxed_opaque_existential_1(v127, v127[3]);
    v117 = v43;
    v29 = v113;
    v41 = v115;
    v44 = sub_1D7264AFC();
    Dictionary<>.formatVersion.getter(v44, v26);
    v42 = v116;

    if (v117(v40, 1, v41) != 1)
    {
      sub_1D5CF6420(v40, sub_1D5B5C268);
    }
  }

  else
  {
    (*(v42 + 32))(v26, v40, v41);
  }

  v45 = v128;
  (*(v42 + 32))(v128 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_version, v26, v41);
  v152 = 2;
  sub_1D5C2B52C();
  v46 = v123;
  sub_1D726431C();
  if (v29)
  {
    (*(v122 + 8))(v46, v19);
    v30 = 0;
    v154 = 0;
    LODWORD(v117) = 0;
    LODWORD(v118) = 0;
    LODWORD(v119) = 0;
    LODWORD(v120) = 0;
    LODWORD(v121) = 0;
    LODWORD(v122) = 0;
    LODWORD(v123) = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v114 = 0;
    v35 = 0;
LABEL_42:
    v36 = v128;

    (*(v116 + 8))(v36 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_version, v41);
    v34 = v114;
LABEL_4:

    if (v30)
    {
      v128 = *(v36 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__groups);

      if (!v154)
      {
LABEL_6:
        if (!v117)
        {
          goto LABEL_7;
        }

        goto LABEL_23;
      }
    }

    else if (!v154)
    {
      goto LABEL_6;
    }

    if (!v117)
    {
LABEL_7:
      if (!v118)
      {
        goto LABEL_8;
      }

      goto LABEL_24;
    }

LABEL_23:

    if (!v118)
    {
LABEL_8:
      if (!v119)
      {
        goto LABEL_9;
      }

      goto LABEL_25;
    }

LABEL_24:

    if (!v119)
    {
LABEL_9:
      if (!v120)
      {
        goto LABEL_10;
      }

      goto LABEL_26;
    }

LABEL_25:

    if (!v120)
    {
LABEL_10:
      if (!v121)
      {
        goto LABEL_11;
      }

      goto LABEL_27;
    }

LABEL_26:

    if (!v121)
    {
LABEL_11:
      if (!v122)
      {
        goto LABEL_12;
      }

      goto LABEL_28;
    }

LABEL_27:

    if (!v122)
    {
LABEL_12:
      if (!v123)
      {
        goto LABEL_13;
      }

      goto LABEL_29;
    }

LABEL_28:

    if (!v123)
    {
LABEL_13:
      if (!v31)
      {
        goto LABEL_14;
      }

      goto LABEL_30;
    }

LABEL_29:

    if (!v31)
    {
LABEL_14:
      if (!v32)
      {
        goto LABEL_15;
      }

      goto LABEL_31;
    }

LABEL_30:

    if (!v32)
    {
LABEL_15:
      if (!v33)
      {
        goto LABEL_16;
      }

      goto LABEL_32;
    }

LABEL_31:

    if (!v33)
    {
LABEL_16:
      if (!v34)
      {
        goto LABEL_17;
      }

      goto LABEL_33;
    }

LABEL_32:
    sub_1D5C5D428(*(v36 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_columnSystem), *(v36 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_columnSystem + 8));
    if (!v34)
    {
LABEL_17:
      if (!v35)
      {
LABEL_19:
        swift_deallocPartialClassInstance();
        __swift_destroy_boxed_opaque_existential_1(v127);
        return v36;
      }

LABEL_18:
      sub_1D5CF6420(v36 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_compilerOptions, type metadata accessor for FormatCompilerOptions);
      goto LABEL_19;
    }

LABEL_33:

    if (!v35)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  *(v45 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role) = v153;
  v152 = 3;
  sub_1D5C2B7DC();
  sub_1D726427C();
  if (v153 == 5)
  {
    v47 = 4;
  }

  else
  {
    v47 = v153;
  }

  v48 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__direction;
  swift_beginAccess();
  *(v45 + v48) = v47;
  v152 = 4;
  v49 = v19;
  v50 = sub_1D726422C();
  v52 = v51;
  v53 = v126;
  swift_beginAccess();
  *v53 = v50;
  v53[1] = v52;

  v151 = 5;
  v54 = sub_1D726422C();
  v56 = v55;
  v57 = v125;
  swift_beginAccess();
  *v57 = v54;
  v57[1] = v56;

  LOBYTE(v146) = 6;
  sub_1D5C2B8E8();
  sub_1D726427C();
  v58 = v49;
  v59 = v148;
  if (v148)
  {
    v61 = v149;
    v60 = v150;
  }

  else
  {
    v59 = MEMORY[0x1E69E7CC0];
    v60 = sub_1D5C2B93C(MEMORY[0x1E69E7CC0]);
    v61 = sub_1D5C2BD7C(v59);
  }

  v62 = (v128 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__groups);
  swift_beginAccess();
  *v62 = v59;
  v62[1] = v61;
  v62[2] = v60;
  LOBYTE(v144) = 7;
  sub_1D5C2BEA4();
  sub_1D726427C();
  v63 = v146;
  if (v146)
  {
    v64 = v147;
  }

  else
  {
    v63 = MEMORY[0x1E69E7CC0];
    v64 = sub_1D5C2BF34(MEMORY[0x1E69E7CC0]);
  }

  v65 = (v128 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__items);
  swift_beginAccess();
  *v65 = v63;
  v65[1] = v64;
  LOBYTE(v142) = 8;
  sub_1D5C2C190();
  sub_1D726427C();
  v66 = v144;
  if (v144)
  {
    v67 = v145;
  }

  else
  {
    v66 = MEMORY[0x1E69E7CC0];
    v67 = sub_1D5C2C1E4(MEMORY[0x1E69E7CC0]);
  }

  v68 = (v128 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__snippets);
  swift_beginAccess();
  *v68 = v66;
  v68[1] = v67;
  LOBYTE(v140) = 9;
  sub_1D5C2C4F0();
  sub_1D726427C();
  v113 = 0;
  v69 = v142;
  if (v142)
  {
    v70 = v143;
  }

  else
  {
    v69 = MEMORY[0x1E69E7CC0];
    v70 = sub_1D5C2C544(MEMORY[0x1E69E7CC0]);
  }

  v71 = (v128 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__supplementaries);
  swift_beginAccess();
  *v71 = v69;
  v71[1] = v70;
  LOBYTE(v138) = 10;
  sub_1D5C2C7A0();
  v72 = v113;
  sub_1D726427C();
  v113 = v72;
  if (v72)
  {
    (*(v122 + 8))(v123, v49);
    LODWORD(v119) = 0;
    LODWORD(v120) = 0;
    LODWORD(v121) = 0;
    LODWORD(v122) = 0;
    LODWORD(v123) = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v114 = 0;
    v35 = 0;
    v30 = 1;
    v154 = 1;
    LODWORD(v117) = 1;
    LODWORD(v118) = 1;
LABEL_47:
    v41 = v115;
    goto LABEL_42;
  }

  v73 = v140;
  if (v140)
  {
    v74 = v141;
  }

  else
  {
    v73 = MEMORY[0x1E69E7CC0];
    v74 = sub_1D6059D04(MEMORY[0x1E69E7CC0]);
  }

  v75 = (v128 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles);
  swift_beginAccess();
  *v75 = v73;
  v75[1] = v74;
  LOBYTE(v136) = 11;
  sub_1D5C4C218();
  v76 = v113;
  sub_1D726427C();
  v113 = v76;
  if (v76)
  {
    (*(v122 + 8))(v123, v49);
    LODWORD(v120) = 0;
    LODWORD(v121) = 0;
    LODWORD(v122) = 0;
    LODWORD(v123) = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v114 = 0;
    v35 = 0;
    v30 = 1;
    v154 = 1;
    LODWORD(v117) = 1;
    LODWORD(v118) = 1;
    LODWORD(v119) = 1;
    goto LABEL_47;
  }

  v77 = v138;
  if (v138)
  {
    v78 = v139;
  }

  else
  {
    v77 = MEMORY[0x1E69E7CC0];
    v78 = sub_1D5C4C26C(MEMORY[0x1E69E7CC0]);
  }

  v79 = (v128 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__slots);
  swift_beginAccess();
  *v79 = v77;
  v79[1] = v78;
  LOBYTE(v135) = 12;
  sub_1D5C4C494();
  v80 = v113;
  sub_1D726427C();
  v113 = v80;
  if (v80)
  {
    (*(v122 + 8))(v123, v49);
    LODWORD(v121) = 0;
    LODWORD(v122) = 0;
    LODWORD(v123) = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v114 = 0;
    v35 = 0;
    v30 = 1;
    v154 = 1;
    LODWORD(v117) = 1;
    LODWORD(v118) = 1;
    LODWORD(v119) = 1;
    LODWORD(v120) = 1;
    goto LABEL_47;
  }

  v81 = v136;
  if (v136)
  {
    v82 = v137;
  }

  else
  {
    v81 = MEMORY[0x1E69E7CC0];
    v82 = sub_1D5C7A538(MEMORY[0x1E69E7CC0]);
  }

  v83 = (v128 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__types);
  swift_beginAccess();
  *v83 = v81;
  v83[1] = v82;
  LOBYTE(v134) = 13;
  sub_1D5C7A794();
  v84 = v113;
  sub_1D726427C();
  if (v84)
  {
    (*(v122 + 8))(v123, v49);
    LODWORD(v122) = 0;
    LODWORD(v123) = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v114 = 0;
    v35 = 0;
    v30 = 1;
    v154 = 1;
    LODWORD(v117) = 1;
    LODWORD(v118) = 1;
    LODWORD(v119) = 1;
    LODWORD(v120) = 1;
    LODWORD(v121) = 1;
    goto LABEL_47;
  }

  v85 = MEMORY[0x1E69E7CC0];
  if (v135)
  {
    v86 = v135;
  }

  else
  {
    v86 = MEMORY[0x1E69E7CC0];
  }

  v87 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__decorations;
  v88 = v128;
  swift_beginAccess();
  *(v88 + v87) = v86;
  sub_1D5B5AD98();
  LOBYTE(v133) = 14;
  sub_1D5C4D8F0(&qword_1EDF1B350, sub_1D5B5AD98, sub_1D5C863EC);
  sub_1D726427C();
  v113 = 0;
  if (v134)
  {
    v89 = v134;
  }

  else
  {
    v89 = v85;
  }

  v90 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__options;
  v91 = v128;
  swift_beginAccess();
  *(v91 + v90) = v89;
  sub_1D5B81B04();
  LOBYTE(v131) = 15;
  sub_1D5C4EA9C();
  v92 = v113;
  sub_1D726427C();
  v113 = v92;
  if (v92)
  {
    (*(v122 + 8))(v123, v58);
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v114 = 0;
    v35 = 0;
    v30 = 1;
    v154 = 1;
    LODWORD(v117) = 1;
    LODWORD(v118) = 1;
    LODWORD(v119) = 1;
    LODWORD(v120) = 1;
    LODWORD(v121) = 1;
    LODWORD(v122) = 1;
    LODWORD(v123) = 1;
    goto LABEL_47;
  }

  v93 = MEMORY[0x1E69E7CD0];
  if (v133)
  {
    v94 = v133;
  }

  else
  {
    v94 = MEMORY[0x1E69E7CD0];
  }

  v95 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__selectors;
  v96 = v128;
  swift_beginAccess();
  *(v96 + v95) = v94;
  LOBYTE(v130) = 16;
  sub_1D5C8E928();
  v97 = v113;
  sub_1D726427C();
  v113 = v97;
  if (v97)
  {
    (*(v122 + 8))(v123, v58);
    v32 = 0;
    v33 = 0;
    v114 = 0;
    v35 = 0;
    v30 = 1;
    v154 = 1;
    LODWORD(v117) = 1;
    LODWORD(v118) = 1;
    LODWORD(v119) = 1;
    LODWORD(v120) = 1;
    LODWORD(v121) = 1;
    LODWORD(v122) = 1;
    LODWORD(v123) = 1;
    v31 = 1;
    goto LABEL_47;
  }

  v98 = v131;
  if (v131)
  {
    v99 = v132;
  }

  else
  {
    v98 = MEMORY[0x1E69E7CC0];
    v99 = sub_1D5C86700(MEMORY[0x1E69E7CC0]);
  }

  v100 = (v128 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__localizations);
  swift_beginAccess();
  *v100 = v98;
  v100[1] = v99;
  LOBYTE(v130) = 20;
  sub_1D5B4B9F8(&qword_1EDF29BD8, type metadata accessor for FormatCompilerOptions);
  v101 = v113;
  sub_1D726431C();
  if (v101)
  {
    (*(v122 + 8))(v123, v58);
    v33 = 0;
    v114 = 0;
    v35 = 0;
    v30 = 1;
    v154 = 1;
    LODWORD(v117) = 1;
    LODWORD(v118) = 1;
    LODWORD(v119) = 1;
    LODWORD(v120) = 1;
    LODWORD(v121) = 1;
    LODWORD(v122) = 1;
    LODWORD(v123) = 1;
    v31 = 1;
    v32 = 1;
    goto LABEL_47;
  }

  sub_1D5C502D8(v119, v128 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_compilerOptions, type metadata accessor for FormatCompilerOptions);
  LOBYTE(v129) = 17;
  sub_1D5C8F7D4();
  sub_1D726427C();
  *(v128 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_columnSystem) = v130;
  sub_1D5C2AB70();
  v103 = v102;
  LOBYTE(v130) = 18;
  sub_1D5B4B9F8(&qword_1EDF17F18, sub_1D5C2AB70);
  sub_1D726427C();
  v113 = 0;
  v104 = *(v103 - 8);
  if ((*(v104 + 48))(v120, 1, v103) == 1)
  {
    sub_1D5CF6420(v120, sub_1D5C2AA90);
    v105 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v106 = v120;
    v105 = sub_1D725A74C();
    (*(v104 + 8))(v106, v103);
  }

  v107 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__references;
  v108 = v128;
  swift_beginAccess();
  *(v108 + v107) = v105;
  v155 = 19;
  v109 = v113;
  sub_1D726427C();
  v113 = v109;
  if (v109)
  {
    (*(v122 + 8))(v123, v58);
    v30 = 1;
    v154 = 1;
    LODWORD(v117) = 1;
    LODWORD(v118) = 1;
    LODWORD(v119) = 1;
    LODWORD(v120) = 1;
    LODWORD(v121) = 1;
    LODWORD(v122) = 1;
    LODWORD(v123) = 1;
    v31 = 1;
    v32 = 1;
    v33 = 1;
    v114 = 1;
    v35 = 1;
    goto LABEL_47;
  }

  v110 = v129;
  (*(v122 + 8))(v123, v58);
  if (!v110)
  {
    v110 = v93;
  }

  v111 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__traits;
  v36 = v128;
  swift_beginAccess();
  *(v36 + v111) = v110;
  __swift_destroy_boxed_opaque_existential_1(v127);
  return v36;
}

void sub_1D5C2AAC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5C2AB70()
{
  if (!qword_1EDF17F10)
  {
    sub_1D5C2AB28(255);
    sub_1D5B4B9F8(&qword_1EDF0FC28, sub_1D5C2AB28);
    sub_1D5C2AF58();
    v0 = sub_1D725AAEC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF17F10);
    }
  }
}

void sub_1D5C2AC18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1D5C2AC98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for FormatPackage();
    v7 = sub_1D61F52D4(&qword_1EDF456B0, type metadata accessor for FormatPackage);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D5C2AD34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for FormatPackage();
    v7 = sub_1D5C2AED8();
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D5C2ADA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for FormatPackage();
    v7 = sub_1D677DF4C(&qword_1EDF456B0, type metadata accessor for FormatPackage);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D5C2AE3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for FormatPackage();
    v7 = sub_1D5B4A3E4(&qword_1EDF456B0, type metadata accessor for FormatPackage);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1D5C2AF10(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D5C2AF8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1D5C2AFF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1D5C2B05C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1D5C2B0C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1D5C2B12C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1D5C2B194()
{
  result = qword_1EDF0DA70;
  if (!qword_1EDF0DA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0DA70);
  }

  return result;
}

unint64_t sub_1D5C2B1EC()
{
  result = qword_1EDF0DA60;
  if (!qword_1EDF0DA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0DA60);
  }

  return result;
}

unint64_t sub_1D5C2B244()
{
  result = qword_1EDF0DA68;
  if (!qword_1EDF0DA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0DA68);
  }

  return result;
}

uint64_t sub_1D5C2B2A0(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x6E6F6973726576;
      break;
    case 2:
      result = 1701605234;
      break;
    case 3:
      result = 0x6F69746365726964;
      break;
    case 4:
      result = 1701667182;
      break;
    case 5:
      result = 0x746E656D6D6F63;
      break;
    case 6:
      result = 0x7370756F7267;
      break;
    case 7:
      result = 0x736D657469;
      break;
    case 8:
      result = 0x7374657070696E73;
      break;
    case 9:
      result = 0x656D656C70707573;
      break;
    case 10:
      result = 0x73656C797473;
      break;
    case 11:
      result = 0x73746F6C73;
      break;
    case 12:
      result = 0x7365707974;
      break;
    case 13:
      result = 0x697461726F636564;
      break;
    case 14:
      result = 0x736E6F6974706FLL;
      break;
    case 15:
      result = 0x726F7463656C6573;
      break;
    case 16:
      result = 0x617A696C61636F6CLL;
      break;
    case 17:
      result = 0x79536E6D756C6F63;
      break;
    case 18:
      result = 0x636E657265666572;
      break;
    case 19:
      result = 0x737469617274;
      break;
    case 20:
      result = 0x72656C69706D6F63;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1D5C2B52C()
{
  result = qword_1EDF2F228;
  if (!qword_1EDF2F228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2F228);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for FormatColorComponent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D5C2B690()
{
  result = qword_1EDF2F230;
  if (!qword_1EDF2F230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2F230);
  }

  return result;
}

NewsFeed::FormatPackageRole_optional __swiftcall FormatPackageRole.init(rawValue:)(Swift::String rawValue)
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

uint64_t getEnumTagSinglePayload for FormatColorComponent(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_1D5C2B7DC()
{
  result = qword_1EDF28320;
  if (!qword_1EDF28320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF28320);
  }

  return result;
}

uint64_t _s4TextOwst_4(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 4;
  if (a3 + 4 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFC)
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_1D5C2B8E8()
{
  result = qword_1EDF29848;
  if (!qword_1EDF29848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29848);
  }

  return result;
}

unint64_t sub_1D5C2B93C(uint64_t a1)
{
  sub_1D5C2BB98(0, &qword_1EDF05470, &qword_1EDF33880, sub_1D5B4A54C, &type metadata for FormatGroup);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = (&v23 - v6);
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1D6060408();
    v9 = sub_1D726412C();
    v10 = *(v3 + 48);
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v23 = *(v4 + 72);
    v24 = v10;

    while (1)
    {
      sub_1D606076C(v11, v7, &qword_1EDF05470, &qword_1EDF33880, sub_1D5B4A54C, &type metadata for FormatGroup);
      v12 = *v7;
      v13 = v7[1];
      result = sub_1D5B69D90(*v7, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v9[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v9[7];
      sub_1D5C2BC18(0, &qword_1EDF33880, sub_1D5B4A54C, &type metadata for FormatGroup, type metadata accessor for FormatObject);
      result = sub_1D5C5E244(v7 + v24, v18 + *(*(v19 - 8) + 72) * v16, &qword_1EDF33880, sub_1D5B4A54C, &type metadata for FormatGroup);
      v20 = v9[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v9[2] = v22;
      v11 += v23;
      if (!--v8)
      {

        return v9;
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

void sub_1D5C2BB98(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    sub_1D5C2BC18(255, a3, a4, a5, type metadata accessor for FormatObject);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1D5C2BC18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1D5C2BC98()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1D5C2BD20();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D5C2BD20()
{
  if (!qword_1EDF45148)
  {
    sub_1D5B5C758();
    v0 = type metadata accessor for FormatCodingDefault();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF45148);
    }
  }
}

void *sub_1D5C2BD7C(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1D605F594(0, &qword_1EDF03E90, sub_1D5E9EBBC);
  v3 = sub_1D726412C();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_1D5C5E034(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_1D5C5E034(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D5C2BEA4()
{
  result = qword_1EDF2AFD8;
  if (!qword_1EDF2AFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2AFD8);
  }

  return result;
}

uint64_t sub_1D5C2BEF8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_1D5C2BF34(uint64_t a1)
{
  sub_1D5C2BB98(0, &unk_1EDF05488, &qword_1EDF338A0, sub_1D5B4AD74, &type metadata for FormatItem);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = (&v23 - v6);
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1D60606CC();
    v9 = sub_1D726412C();
    v10 = *(v3 + 48);
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v23 = *(v4 + 72);
    v24 = v10;

    while (1)
    {
      sub_1D606076C(v11, v7, &unk_1EDF05488, &qword_1EDF338A0, sub_1D5B4AD74, &type metadata for FormatItem);
      v12 = *v7;
      v13 = v7[1];
      result = sub_1D5B69D90(*v7, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v9[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v9[7];
      sub_1D5C2BC18(0, &qword_1EDF338A0, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatObject);
      result = sub_1D5C5E244(v7 + v24, v18 + *(*(v19 - 8) + 72) * v16, &qword_1EDF338A0, sub_1D5B4AD74, &type metadata for FormatItem);
      v20 = v9[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v9[2] = v22;
      v11 += v23;
      if (!--v8)
      {

        return v9;
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

unint64_t sub_1D5C2C190()
{
  result = qword_1EDF27060;
  if (!qword_1EDF27060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF27060);
  }

  return result;
}

unint64_t sub_1D5C2C1E4(uint64_t a1)
{
  sub_1D5C2C454(0, &qword_1EDF05468, sub_1D5C2C40C);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = (&v24 - v6);
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1D60608B0(0, &qword_1EC882E80, sub_1D5C2C40C, MEMORY[0x1E69E6EC8]);
    v9 = sub_1D726412C();
    v10 = *(v3 + 48);
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);

    while (1)
    {
      sub_1D6060844(v11, v7, &qword_1EDF05468, sub_1D5C2C40C);
      v13 = *v7;
      v14 = v7[1];
      result = sub_1D5B69D90(*v7, v14);
      if (v16)
      {
        break;
      }

      v17 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v9[6] + 16 * result);
      *v18 = v13;
      v18[1] = v14;
      v19 = v9[7];
      sub_1D5C2C40C(0);
      result = sub_1D605F3F8(v7 + v10, v19 + *(*(v20 - 8) + 72) * v17, sub_1D5C2C40C);
      v21 = v9[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v9[2] = v23;
      v11 += v12;
      if (!--v8)
      {

        return v9;
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

void sub_1D5C2C454(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

unint64_t sub_1D5C2C4F0()
{
  result = qword_1EDF20FE0;
  if (!qword_1EDF20FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF20FE0);
  }

  return result;
}

unint64_t sub_1D5C2C544(uint64_t a1)
{
  sub_1D5C2BB98(0, &qword_1EDF05498, &qword_1EDF338C0, sub_1D5B4BADC, &type metadata for FormatSupplementary);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = (&v23 - v6);
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1D60604A8();
    v9 = sub_1D726412C();
    v10 = *(v3 + 48);
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v23 = *(v4 + 72);
    v24 = v10;

    while (1)
    {
      sub_1D606076C(v11, v7, &qword_1EDF05498, &qword_1EDF338C0, sub_1D5B4BADC, &type metadata for FormatSupplementary);
      v12 = *v7;
      v13 = v7[1];
      result = sub_1D5B69D90(*v7, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v9[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v9[7];
      sub_1D5C2BC18(0, &qword_1EDF338C0, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for FormatObject);
      result = sub_1D5C5E244(v7 + v24, v18 + *(*(v19 - 8) + 72) * v16, &qword_1EDF338C0, sub_1D5B4BADC, &type metadata for FormatSupplementary);
      v20 = v9[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v9[2] = v22;
      v11 += v23;
      if (!--v8)
      {

        return v9;
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

unint64_t sub_1D5C2C7A0()
{
  result = qword_1EDF24878;
  if (!qword_1EDF24878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF24878);
  }

  return result;
}

uint64_t sub_1D5C2C7F4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t FormatNodeStyleCollection.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7264AEC();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    sub_1D5C2C988();
    sub_1D5C2CB2C(&qword_1EDF050C8, &qword_1EDF123F8);
    sub_1D726472C();
    sub_1D5C4B5C8(v8[6], &v7);
    v6 = v7;
    __swift_destroy_boxed_opaque_existential_1(v8);
    *a2 = v6;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D5C2C988()
{
  if (!qword_1EDF1B378)
  {
    sub_1D5C2CA80(255, &qword_1EDF33860, sub_1D5B4CBD8, &type metadata for FormatStyle, type metadata accessor for FormatObject);
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1B378);
    }
  }
}

void sub_1D5C2CA18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1D5C2CA80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1D5C2CAE8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D5C2CBA8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5C2CB2C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D5C2C988();
    sub_1D5C2CAE8(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D5C2CBA8()
{
  if (!qword_1EDF33860)
  {
    sub_1D5B4CBD8();
    v0 = type metadata accessor for FormatObject();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF33860);
    }
  }
}

void sub_1D5C2CC04(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v38 = v8;
  v9 = *(v8 + 84);
  v10 = 0;
  v11 = *(sub_1D725BD1C() - 8);
  v12 = v11;
  v13 = *(v11 + 84);
  v14 = *(v11 + 80);
  v15 = *(v11 + 64);
  if (v13)
  {
    v16 = v13 - 1;
  }

  else
  {
    v16 = 0;
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = *(v11 + 84);
  }

  if (v17 <= v9)
  {
    v18 = v9;
  }

  else
  {
    v18 = v17;
  }

  v19 = (v14 | 7) + *(v8 + 64);
  v20 = v14 + 16;
  v21 = v15 + v14;
  if (v13)
  {
    v22 = *(v11 + 64);
  }

  else
  {
    v22 = v15 + 1;
  }

  v23 = v22 + ((v15 + v14 + ((v15 + v14 + ((v14 + 16) & ~v14)) & ~v14)) & ~v14);
  v24 = (v19 & ~(v14 | 7)) + ((((((((v23 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v18 < a3)
  {
    if ((v19 & ~(v14 | 7)) + ((((((((v23 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == -8)
    {
      v25 = a3 - v18 + 1;
    }

    else
    {
      v25 = 2;
    }

    if (v25 >= 0x10000)
    {
      v26 = 4;
    }

    else
    {
      v26 = 2;
    }

    if (v25 < 0x100)
    {
      v26 = 1;
    }

    if (v25 >= 2)
    {
      v10 = v26;
    }

    else
    {
      v10 = 0;
    }
  }

  if (a2 > v18)
  {
    if ((v19 & ~(v14 | 7)) + ((((((((v23 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == -8)
    {
      v27 = a2 - v18;
    }

    else
    {
      v27 = 1;
    }

    if ((v19 & ~(v14 | 7)) + ((((((((v23 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != -8)
    {
      v28 = ~v18 + a2;
      bzero(a1, (v19 & ~(v14 | 7)) + ((((((((v23 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v28;
    }

    if (v10 > 1)
    {
      if (v10 == 2)
      {
        *(a1 + v24) = v27;
      }

      else
      {
        *(a1 + v24) = v27;
      }
    }

    else if (v10)
    {
      *(a1 + v24) = v27;
    }

    return;
  }

  if (v10 <= 1)
  {
    if (v10)
    {
      *(a1 + v24) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_43;
    }

LABEL_42:
    if (!a2)
    {
      return;
    }

    goto LABEL_43;
  }

  if (v10 == 2)
  {
    *(a1 + v24) = 0;
    goto LABEL_42;
  }

  *(a1 + v24) = 0;
  if (!a2)
  {
    return;
  }

LABEL_43:
  if (v9 >= v17)
  {
    v32 = *(v38 + 56);

    v32(a1, a2, v9, v7);
  }

  else
  {
    v29 = ((a1 + v19) & ~(v14 | 7));
    if (v17 >= a2)
    {
      v33 = ~v14;
      v34 = (v29 + v20) & v33;
      if (v13 < 0x7FFFFFFF)
      {
        v34 = (v21 + ((v21 + v34) & v33)) & v33;
        if (v16 != v17)
        {
          if ((a2 & 0x80000000) != 0)
          {
            v37 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v37 = (a2 - 1);
          }

          *((v34 + v22 + 7) & 0xFFFFFFFFFFFFFFF8) = v37;
          return;
        }

        v35 = *(v12 + 56);
        v36 = (a2 + 1);
      }

      else
      {
        v35 = *(v12 + 56);
        v36 = a2;
      }

      v35(v34, v36);
    }

    else
    {
      v30 = (((((((v23 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8;
      if (v30 != -8)
      {
        v31 = ~v17 + a2;
        bzero(v29, (v30 + 8));
        *v29 = v31;
      }
    }
  }
}

uint64_t sub_1D5C2CF6C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1D5C2CFBC(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(sub_1D725BD1C() - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  v11 = *(v8 + 64);
  if (v9)
  {
    v12 = v9 - 1;
  }

  else
  {
    v12 = 0;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = *(v8 + 84);
  }

  if (v13 <= v7)
  {
    v14 = v7;
  }

  else
  {
    v14 = v13;
  }

  if (v9)
  {
    v15 = 7;
  }

  else
  {
    v15 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v16 = v10 | 7;
  v17 = (v10 | 7) + *(v6 + 64);
  v18 = v10 + 16;
  v19 = v11 + v10;
  if (v14 >= a2)
  {
    goto LABEL_36;
  }

  v20 = (v17 & ~v16) + ((((((((v15 + v11 + ((v19 + ((v19 + (v18 & ~v10)) & ~v10)) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v21 = v20 & 0xFFFFFFF8;
  if ((v20 & 0xFFFFFFF8) != 0)
  {
    v22 = 2;
  }

  else
  {
    v22 = a2 - v14 + 1;
  }

  if (v22 >= 0x10000)
  {
    v23 = 4;
  }

  else
  {
    v23 = 2;
  }

  if (v22 < 0x100)
  {
    v23 = 1;
  }

  if (v22 >= 2)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  if (v24 > 1)
  {
    if (v24 == 2)
    {
      v25 = *(a1 + v20);
      if (!v25)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v25 = *(a1 + v20);
      if (!v25)
      {
        goto LABEL_36;
      }
    }

LABEL_33:
    v27 = v25 - 1;
    if (v21)
    {
      v27 = 0;
      v28 = *a1;
    }

    else
    {
      v28 = 0;
    }

    return v14 + (v28 | v27) + 1;
  }

  if (v24)
  {
    v25 = *(a1 + v20);
    if (v25)
    {
      goto LABEL_33;
    }
  }

LABEL_36:
  if (v7 >= v13)
  {
    v31 = *(v6 + 48);

    return v31(a1, v7, v5);
  }

  else
  {
    v29 = (v18 + ((a1 + v17) & ~v16)) & ~v10;
    if (v9 < 0x7FFFFFFF)
    {
      v32 = (v19 + ((v19 + v29) & ~v10)) & ~v10;
      if (v12 == v13)
      {
        v33 = (*(v8 + 48))(v32);
        if (v33 >= 2)
        {
          return v33 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        if (!v9)
        {
          ++v11;
        }

        v34 = *((v32 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
        if (v34 >= 0xFFFFFFFF)
        {
          LODWORD(v34) = -1;
        }

        return (v34 + 1);
      }
    }

    else
    {
      v30 = *(v8 + 48);

      return v30(v29);
    }
  }
}

uint64_t sub_1D5C2D2B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t FormatObject.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v76 = a4;
  sub_1D5B5C1C0(0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v71 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v69 = &v66 - v12;
  v70 = sub_1D725BD1C();
  v77 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70, v13);
  v74 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v73 = &v66 - v17;
  sub_1D5B5C1C0(0, &qword_1EDF415B8, type metadata accessor for FormatMetadata);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v79 = &v66 - v20;
  v78 = type metadata accessor for FormatMetadata();
  v84 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78, v21);
  v75 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v23, v24);
  v82 = &v66 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FormatObject.CodingKeys();
  swift_getWitnessTable();
  v26 = sub_1D726435C();
  v80 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v66 - v28;
  v85 = a2;
  v83 = a3;
  v30 = type metadata accessor for FormatObject();
  v72 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v66 - v32;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v34 = v86;
  sub_1D7264B0C();
  if (v34)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v36 = v80;
  v35 = v81;
  v67 = v30;
  v68 = v33;
  v37 = v84;
  v86 = a1;
  v88 = 0;
  v38 = v82;
  sub_1D726431C();
  (*(v35 + 32))(v68, v38, v85);
  v87 = 1;
  sub_1D5C3548C(&qword_1EDF415C0);
  v41 = v78;
  v40 = v79;
  sub_1D726427C();
  v83 = v29;
  v85 = v26;
  v44 = *(v37 + 48);
  v42 = v37 + 48;
  v43 = v44;
  if ((v44)(v40, 1, v41) == 1)
  {
    v82 = v43;
    v84 = v42;
    v45 = v69;
    sub_1D725BD3C();
    v46 = v77;
    v47 = *(v77 + 48);
    v48 = v70;
    v49 = v47(v45, 1, v70);
    v50 = v75;
    v51 = v72;
    if (v49 == 1)
    {
      sub_1D725BCDC();
      if (v47(v45, 1, v48) != 1)
      {
        sub_1D5BFC7A4(v45, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
      }
    }

    else
    {
      (*(v46 + 32))(v73, v45, v48);
    }

    v56 = v71;
    sub_1D725BD3C();
    v57 = v47(v56, 1, v48);
    v58 = v47;
    v55 = v67;
    v59 = v36;
    if (v57 == 1)
    {
      v60 = v58;
      sub_1D725BCCC();
      if (v60(v56, 1, v48) != 1)
      {
        sub_1D5BFC7A4(v56, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
      }
    }

    else
    {
      (*(v77 + 32))(v74, v56, v48);
    }

    v61 = v78;
    sub_1D725BD3C();
    (*(v59 + 8))(v83, v85);
    *v50 = 0;
    *(v50 + 1) = 0;
    v62 = *(v77 + 32);
    v62(&v50[v61[5]], v73, v48);
    v62(&v50[v61[6]], v74, v48);
    v63 = MEMORY[0x1E69E7CD0];
    *&v50[v61[8]] = MEMORY[0x1E69E7CD0];
    *&v50[v61[9]] = v63;
    *&v50[v61[10]] = v63;
    *&v50[v61[11]] = v63;
    v64 = v79;
    v65 = (v82)(v79, 1, v61);
    v52 = v86;
    v54 = v68;
    v53 = v76;
    if (v65 != 1)
    {
      sub_1D5BFC7A4(v64, &qword_1EDF415B8, type metadata accessor for FormatMetadata);
    }
  }

  else
  {
    (*(v36 + 8))(v83, v85);
    v50 = v75;
    sub_1D5C35728(v40, v75);
    v52 = v86;
    v53 = v76;
    v55 = v67;
    v54 = v68;
    v51 = v72;
  }

  sub_1D5C35728(v50, &v54[*(v55 + 36)]);
  (*(v51 + 16))(v53, v54, v55);
  __swift_destroy_boxed_opaque_existential_1(v52);
  return (*(v51 + 8))(v54, v55);
}

uint64_t sub_1D5C2DC18(char a1)
{
  if (a1)
  {
    return 0x617461646174656DLL;
  }

  else
  {
    return 0x7463656A626FLL;
  }
}

uint64_t FormatStyle.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v77 = a2;
  sub_1D5C2E528();
  v79 = *(v5 - 8);
  *&v80 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v75 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C2E60C(0, &qword_1EDF3BD98, sub_1D5B4C754, sub_1D5B4C7A8);
  v76 = v8;
  v73 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v78 = &v65 - v10;
  sub_1D5C2E60C(0, &qword_1EDF3BD48, sub_1D5C2E688, sub_1D5C2E6DC);
  v12 = v11;
  v74 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v65 - v14;
  sub_1D5C2E7B4();
  v86 = v16;
  v81 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C2E730();
  sub_1D5B58B84(&qword_1EDF24CC8, sub_1D5C2E730);
  sub_1D7264B0C();
  if (v2)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v3);
    swift_willThrow();

    v35 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v35);
  }

  v20 = v15;
  v21 = a1[3];
  v72 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  v22 = sub_1D7264AFC();
  LOBYTE(v21) = Dictionary<>.errorOnUnknownKeys.getter(v22);

  v23 = v86;
  v24 = v19;
  if (v21)
  {
    v25 = sub_1D726433C();
    v26 = *(v25 + 16);
    if (v26)
    {
      v27 = (v25 + 48);
      while (*v27 != 1)
      {
        v27 += 24;
        if (!--v26)
        {
          goto LABEL_7;
        }
      }

      v32 = *(v27 - 2);
      v31 = *(v27 - 1);

      v33 = sub_1D66240E0();
      sub_1D5E2D970();
      v3 = swift_allocError();
      *v34 = v32;
      *(v34 + 8) = v31;
      *(v34 + 16) = v33;
      *(v34 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v81 + 8))(v24, v23);
      a1 = v72;
      goto LABEL_10;
    }

LABEL_7:
  }

  v84 = 0uLL;
  v85 = 0;
  v28 = sub_1D72642BC();
  v30 = v29;
  v84 = xmmword_1D728CF30;
  v85 = 0;
  v71 = sub_1D726422C();
  v38 = v37;
  v84 = xmmword_1D7297410;
  v85 = 0;
  v65 = sub_1D726422C();
  v66 = v28;
  v70 = v39;
  v69 = xmmword_1D72BAA60;
  v84 = xmmword_1D72BAA60;
  v85 = 0;
  v40 = sub_1D726434C();
  if (v40)
  {
    v82 = v69;
    v83 = 0;
    sub_1D5C2F040();
    v41 = v20;
    sub_1D726431C();
    v42 = v80;
    v68 = v38;
    *&v69 = v30;
    v43 = v24;
    v67 = sub_1D725A74C();
    (*(v74 + 8))(v41, v12);
  }

  else
  {
    v68 = v38;
    *&v69 = v30;
    v43 = v24;
    v67 = MEMORY[0x1E69E7CC0];
    v42 = v80;
  }

  v80 = xmmword_1D72BAA70;
  v84 = xmmword_1D72BAA70;
  v85 = 0;
  v44 = v43;
  v45 = sub_1D726434C();
  v47 = v77;
  v46 = v78;
  v48 = v79;
  if (v45)
  {
    v82 = v80;
    v83 = 0;
    sub_1D666CDAC();
    v49 = v76;
    sub_1D726431C();
    v50 = v42;
    v51 = v49;
    v43 = v44;
    v52 = sub_1D725A74C();
    v53 = v51;
    v42 = v50;
    v54 = v52;
    (*(v73 + 8))(v46, v53);
  }

  else
  {
    v54 = MEMORY[0x1E69E7CC0];
  }

  v80 = xmmword_1D72BAA80;
  v84 = xmmword_1D72BAA80;
  v85 = 0;
  v55 = v43;
  if (sub_1D726434C())
  {
    v82 = v80;
    v83 = 0;
    sub_1D5B58B84(&qword_1EDF3BD80, sub_1D5C2E528);
    v56 = v75;
    sub_1D726431C();
    v57 = v70;
    *&v80 = v54;
    v58 = v42;
    v59 = v56;
    v43 = v55;
    v60 = sub_1D725A74C();
    v61 = v58;
    v54 = v80;
    (*(v48 + 8))(v59, v61);
    v62 = v81;
  }

  else
  {
    v60 = MEMORY[0x1E69E7CC0];
    v62 = v81;
    v57 = v70;
  }

  (*(v62 + 8))(v43, v23);
  swift_bridgeObjectRelease_n();
  v63 = v69;
  *v47 = v66;
  v47[1] = v63;
  v35 = v72;
  v64 = v68;
  v47[2] = v71;
  v47[3] = v64;
  v47[4] = v65;
  v47[5] = v57;
  v47[6] = v67;
  v47[7] = v54;
  v47[8] = v60;
  return __swift_destroy_boxed_opaque_existential_1(v35);
}

void sub_1D5C2E528()
{
  if (!qword_1EDF3BD78)
  {
    type metadata accessor for FormatOption();
    sub_1D60AD3DC(&unk_1EDF45930, type metadata accessor for FormatOption);
    sub_1D60AD3DC(&qword_1EDF45940, type metadata accessor for FormatOption);
    v0 = sub_1D725AAEC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3BD78);
    }
  }
}

void sub_1D5C2E60C(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    a3();
    a4();
    v6 = sub_1D725AAEC();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1D5C2E688()
{
  result = qword_1EDF31330;
  if (!qword_1EDF31330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF31330);
  }

  return result;
}

unint64_t sub_1D5C2E6DC()
{
  result = qword_1EDF31340;
  if (!qword_1EDF31340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF31340);
  }

  return result;
}

void sub_1D5C2E730()
{
  if (!qword_1EDF24CC0)
  {
    sub_1D5C2E848();
    sub_1D5C2E89C();
    sub_1D5C2E9A0();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF24CC0);
    }
  }
}

void sub_1D5C2E7B4()
{
  if (!qword_1EDF19D70)
  {
    sub_1D5C2E730();
    sub_1D5B58B84(&qword_1EDF24CC8, sub_1D5C2E730);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19D70);
    }
  }
}

unint64_t sub_1D5C2E848()
{
  result = qword_1EDF34028;
  if (!qword_1EDF34028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF34028);
  }

  return result;
}

unint64_t sub_1D5C2E89C()
{
  result = qword_1EDF34030;
  if (!qword_1EDF34030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF34030);
  }

  return result;
}

unint64_t sub_1D5C2E8F4()
{
  result = qword_1EDF34018;
  if (!qword_1EDF34018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF34018);
  }

  return result;
}

unint64_t sub_1D5C2E94C()
{
  result = qword_1EDF34020;
  if (!qword_1EDF34020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF34020);
  }

  return result;
}

unint64_t sub_1D5C2E9A0()
{
  result = qword_1EDF34038;
  if (!qword_1EDF34038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF34038);
  }

  return result;
}

uint64_t sub_1D5C2EA0C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t Dictionary<>.errorOnUnknownKeys.getter(uint64_t a1)
{
  sub_1D5C2ED14(0, &qword_1EDF3C698, MEMORY[0x1E69E6D30]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v14[-v4];
  v6 = sub_1D7263FCC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D7263FBC();
  result = (*(v7 + 48))(v5, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    if (*(a1 + 16) && (v12 = sub_1D5B7C598(v10), (v13 & 1) != 0))
    {
      sub_1D5B76B10(*(a1 + 56) + 32 * v12, v15);
      (*(v7 + 8))(v10, v6);
      if (swift_dynamicCast())
      {
        return v14[15];
      }
    }

    else
    {
      (*(v7 + 8))(v10, v6);
    }

    return 0;
  }

  return result;
}

void sub_1D5C2ECB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5C2ED14(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1D5C2ED68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D5C2EDD0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1, v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6, v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return *v10;
  }

  (*(v3 + 32))(v5, v10, v2);
  v13 = sub_1D7264BCC();
  (*(v3 + 8))(v5, v2);
  return v13;
}

uint64_t sub_1D5C2EF70()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x736E6F6974706FLL;
  if (v1 != 5)
  {
    v3 = 1885433183;
  }

  v4 = 0x73656C797473;
  if (v1 != 3)
  {
    v4 = 0x7365707974;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 1701667182;
  if (v1 != 1)
  {
    v5 = 0x7470697263736564;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1D5C2F040()
{
  result = qword_1EDF3BD50;
  if (!qword_1EDF3BD50)
  {
    sub_1D5C2E60C(255, &qword_1EDF3BD48, sub_1D5C2E688, sub_1D5C2E6DC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3BD50);
  }

  return result;
}

double sub_1D5C2F0D0(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 56) = 0;
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 64) = 1;
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
      *(a1 + 48) = -a2 << 16;
      *(a1 + 56) = 0;
      return result;
    }

    *(a1 + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D5C2F130(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 50);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t FormatNodeStyle.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v29 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v28 - v9;
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
    v12 = v29;
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
          *(v21 + 16) = &unk_1F5116228;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v10, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D5C3050C();
    v36 = 0;
    v37 = 0;
    sub_1D726431C();
    switch(v38)
    {
      case 1:
        type metadata accessor for FormatTextNodeStyle();
        v31 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF2BD80, type metadata accessor for FormatTextNodeStyle);
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        *&v27 = v30;
        v26 = 0x800000000000000;
        break;
      case 2:
        type metadata accessor for FormatImageNodeStyle();
        v31 = xmmword_1D7279980;
        sub_1D5B58B84(&unk_1EDF2B0D8, type metadata accessor for FormatImageNodeStyle);
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        *&v27 = v30;
        v26 = 0x1000000000000000;
        break;
      case 3:
        type metadata accessor for FormatItemNodeStyle(0);
        v31 = xmmword_1D7279980;
        sub_1D5B58B84(qword_1EDF2C518, type metadata accessor for FormatItemNodeStyle);
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        *&v27 = v30;
        v26 = 0x1800000000000000;
        break;
      case 4:
        type metadata accessor for FormatWebEmbedNodeStyle();
        v31 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF26D80, type metadata accessor for FormatWebEmbedNodeStyle);
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        *&v27 = v30;
        v26 = 0x2000000000000000;
        break;
      case 5:
        type metadata accessor for FormatCustomNodeStyle();
        v31 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF29A08, type metadata accessor for FormatCustomNodeStyle);
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        *&v27 = v30;
        v26 = 0x2800000000000000;
        break;
      case 6:
        type metadata accessor for FormatSupplementaryNodeStyle();
        v31 = xmmword_1D7279980;
        sub_1D5B58B84(&unk_1EDF216F0, type metadata accessor for FormatSupplementaryNodeStyle);
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        *&v27 = v30;
        v26 = 0x3000000000000000;
        break;
      case 7:
        type metadata accessor for FormatMicaNodeStyle();
        v31 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EC886FB8, type metadata accessor for FormatMicaNodeStyle);
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        *&v27 = v30;
        v26 = 0x3800000000000000;
        break;
      case 8:
        type metadata accessor for FormatLayeredMediaNodeStyle();
        v31 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF224B0, type metadata accessor for FormatLayeredMediaNodeStyle);
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        *&v27 = v30;
        v26 = 0x4000000000000000;
        break;
      case 9:
        type metadata accessor for FormatVideoNodeStyle();
        v31 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF0EC18, type metadata accessor for FormatVideoNodeStyle);
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        *&v27 = v30;
        v26 = 0x4800000000000000;
        break;
      case 10:
        type metadata accessor for FormatIssueCoverNodeStyle();
        v31 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF0C2C8, type metadata accessor for FormatIssueCoverNodeStyle);
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        *&v27 = v30;
        v26 = 0x5000000000000000;
        break;
      case 11:
        type metadata accessor for FormatGroupNodeStyle();
        v31 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF2B240, type metadata accessor for FormatGroupNodeStyle);
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        *&v27 = v30;
        v26 = 0x5800000000000000;
        break;
      case 12:
        type metadata accessor for FormatGroupNodeMaskStyle();
        v31 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF25FB8, type metadata accessor for FormatGroupNodeMaskStyle);
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        *&v27 = v30;
        v26 = 0x6000000000000000;
        break;
      case 13:
        type metadata accessor for FormatAnimationNodeStyle();
        v31 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF26768, type metadata accessor for FormatAnimationNodeStyle);
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        *&v27 = v30;
        v26 = 0x6800000000000000;
        break;
      case 14:
        type metadata accessor for FormatVideoPlayerNodeStyle();
        v31 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF23110, type metadata accessor for FormatVideoPlayerNodeStyle);
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        *&v27 = v30;
        v26 = 0x7000000000000000;
        break;
      case 15:
        type metadata accessor for FormatProgressViewNodeStyle();
        v31 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF22150, type metadata accessor for FormatProgressViewNodeStyle);
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        *&v27 = v30;
        v26 = 0x7800000000000000;
        break;
      case 16:
        v30 = xmmword_1D7279980;
        sub_1D66A5CB0();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v27 = v31;
        v24 = v32;
        v25 = v33;
        v23 = v35;
        v26 = v34 | 0x8000000000000000;
        break;
      case 17:
        type metadata accessor for FormatSponsoredBannerNodeStyle();
        v31 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF206C0, type metadata accessor for FormatSponsoredBannerNodeStyle);
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        *&v27 = v30;
        v26 = 0x8800000000000000;
        break;
      default:
        type metadata accessor for FormatViewNodeStyle();
        v31 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EDF2BA90, type metadata accessor for FormatViewNodeStyle);
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v26 = 0;
        *&v27 = v30;
        break;
    }

    *v12 = v27;
    *(v12 + 16) = v24;
    *(v12 + 32) = v25;
    *(v12 + 48) = v26;
    *(v12 + 56) = v23;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D5C2FF94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D5C30408();
    v7 = a3(a1, &type metadata for FormatCodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1D5C2FFF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1D5C30060(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1D5C300C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1D5C30130(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1D5C30198(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1D5C30200(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1D5C30268(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1D5C302D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1D5C30338(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1D5C303A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1D5C30408()
{
  result = qword_1EDF40B98[0];
  if (!qword_1EDF40B98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF40B98);
  }

  return result;
}

unint64_t sub_1D5C30460()
{
  result = qword_1EDF40B88;
  if (!qword_1EDF40B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF40B88);
  }

  return result;
}

unint64_t sub_1D5C304B8()
{
  result = qword_1EDF40B90;
  if (!qword_1EDF40B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF40B90);
  }

  return result;
}

unint64_t sub_1D5C3050C()
{
  result = qword_1EDF31348;
  if (!qword_1EDF31348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF31348);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed16FormatCodingKeysO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D5C30578()
{
  v1 = *v0;
  v2 = v0[1];
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v3 = 0x617461646174656DLL;
      goto LABEL_11;
    }

    if (v2 == 3)
    {
      v3 = 1885433183;
      goto LABEL_11;
    }

LABEL_8:
    v3 = *v0;
    goto LABEL_11;
  }

  if (!v2)
  {
    v3 = 1701869940;
    goto LABEL_11;
  }

  if (v2 != 1)
  {
    goto LABEL_8;
  }

  v3 = 1635017060;
LABEL_11:
  sub_1D5C30618(v1, v2);
  return v3;
}

uint64_t sub_1D5C30618(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for FormatAccessibilityTrait(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D5C3073C()
{
  result = qword_1EDF31350;
  if (!qword_1EDF31350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF31350);
  }

  return result;
}

uint64_t sub_1D5C30790@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5C307C0();
  *a1 = result;
  return result;
}

uint64_t sub_1D5C307C0()
{
  v0 = sub_1D72648CC();

  if (v0 >= 0x12)
  {
    return 18;
  }

  else
  {
    return v0;
  }
}

uint64_t getEnumTagSinglePayload for FormatAccessibilityTrait(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1D5C308C8(void *a1)
{
  sub_1D5C2E60C(0, &qword_1EDF3BCE8, sub_1D5C319AC, sub_1D5C31A00);
  v3 = v2;
  v71 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v58 - v5;
  sub_1D5C31A54();
  v72 = *(v7 - 8);
  v73 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C31AE8();
  sub_1D5B58B84(&qword_1EDF25458, sub_1D5C31AE8);
  v11 = v138;
  sub_1D7264B0C();
  v12 = v11;
  if (v11)
  {
LABEL_14:
    sub_1D61E4FBC(a1, v12);
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1(a1);
    return v12;
  }

  v138 = v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = sub_1D7264AFC();
  v14 = Dictionary<>.errorOnUnknownKeys.getter(v13);

  v15 = v73;
  if (v14)
  {
    v16 = sub_1D726433C();
    v17 = *(v16 + 16);
    if (v17)
    {
      v18 = (v16 + 48);
      while (*v18 != 1)
      {
        v18 += 24;
        if (!--v17)
        {
          goto LABEL_7;
        }
      }

      v21 = v10;
      v23 = *(v18 - 2);
      v22 = *(v18 - 1);

      v24 = sub_1D6625468();
      sub_1D5E2D970();
      v25 = swift_allocError();
      *v26 = v23;
      *(v26 + 8) = v22;
      v12 = v25;
      *(v26 + 16) = v24;
      *(v26 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v72 + 8))(v21, v15);
      goto LABEL_14;
    }

LABEL_7:
  }

  v19 = sub_1D5C31D18(v10, 0, 0, 0, sub_1D5C31A54);
  v70 = v20;
  v93 = xmmword_1D728CF30;
  LOBYTE(v94) = 0;
  v67 = sub_1D72642BC();
  v69 = v27;
  v68 = xmmword_1D7297410;
  v93 = xmmword_1D7297410;
  LOBYTE(v94) = 0;
  v28 = sub_1D726434C();
  if (v28)
  {
    v66 = v19;
    v78 = v68;
    LOBYTE(v79) = 0;
    sub_1D5C3578C();
    v29 = v138;
    sub_1D726431C();
    *&v68 = sub_1D725A74C();
    (*(v71 + 8))(v29, v3);
    v19 = v66;
  }

  else
  {
    *&v68 = MEMORY[0x1E69E7CC0];
  }

  v93 = xmmword_1D72BAA60;
  LOBYTE(v94) = 0;
  sub_1D5B556F4();
  sub_1D726427C();
  v30 = v78;
  v128 = xmmword_1D72BAA70;
  v129 = 0;
  sub_1D5C320E4();
  sub_1D726427C();
  v138 = v30;
  v124 = v134;
  v125 = v135;
  v126 = v136;
  v127 = v137;
  v120 = v130;
  v121 = v131;
  v122 = v132;
  v123 = v133;
  sub_1D5C34D84(0, &unk_1EDF1B3E0, &type metadata for FormatBorder, MEMORY[0x1E69E62F8]);
  v93 = xmmword_1D72BAA80;
  LOBYTE(v94) = 0;
  sub_1D5C34DD4();
  sub_1D726427C();
  v32 = v78;
  v112 = xmmword_1D72BAA90;
  v113 = 0;
  sub_1D5C34EC4();
  sub_1D726427C();
  v71 = v32;
  v108 = v116;
  v109 = v117;
  v110 = v118;
  v111 = v119;
  v106 = v114;
  v107 = v115;
  sub_1D5C34D84(0, &qword_1EDF1B060, &type metadata for FormatTextNodeTransform, MEMORY[0x1E69E62F8]);
  v93 = xmmword_1D72BAAA0;
  LOBYTE(v94) = 0;
  sub_1D5C34F74();
  sub_1D726427C();
  v33 = v78;
  v91 = xmmword_1D72BAAB0;
  v92 = 0;
  sub_1D5C35064();
  sub_1D726427C();
  v65 = v33;
  v66 = a1;
  v87 = v102;
  v88 = v103;
  v89 = v104;
  v83 = v98;
  v84 = v99;
  v90 = v105;
  v85 = v100;
  v86 = v101;
  v80 = v95;
  v81 = v96;
  v82 = v97;
  v78 = v93;
  v79 = v94;
  v76 = xmmword_1D72BAAC0;
  v77 = 0;
  sub_1D5B57870();
  sub_1D726427C();
  v64 = v74;
  v63 = v75;
  sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
  v76 = xmmword_1D72BAAD0;
  v77 = 0;
  sub_1D5C35368();
  sub_1D726427C();
  v62 = v74;
  v76 = xmmword_1D72BAAE0;
  v77 = 0;
  sub_1D5C353F8();
  sub_1D726427C();
  v60 = v74;
  v61 = v75;
  v76 = xmmword_1D72BAAF0;
  v77 = 0;
  sub_1D726427C();
  v58 = v74;
  v59 = v75;
  v76 = xmmword_1D7282A80;
  v77 = 0;
  v34 = sub_1D726423C();
  v76 = xmmword_1D72BAB00;
  v77 = 0;
  sub_1D726427C();
  (*(v72 + 8))(v10, v73);
  v35 = v74;
  type metadata accessor for FormatTextNodeStyle();
  v12 = swift_allocObject();
  swift_beginAccess();
  v36 = v70;
  *(v12 + 16) = v19;
  *(v12 + 24) = v36;
  v37 = v69;
  *(v12 + 32) = v67;
  *(v12 + 40) = v37;
  swift_beginAccess();
  v38 = v138;
  *(v12 + 48) = v68;
  *(v12 + 56) = v38;
  v39 = v125;
  *(v12 + 128) = v124;
  *(v12 + 144) = v39;
  v40 = v127;
  *(v12 + 160) = v126;
  *(v12 + 176) = v40;
  v41 = v121;
  *(v12 + 64) = v120;
  *(v12 + 80) = v41;
  v42 = v123;
  *(v12 + 96) = v122;
  *(v12 + 112) = v42;
  *(v12 + 192) = v71;
  v43 = v106;
  *(v12 + 216) = v107;
  *(v12 + 200) = v43;
  *(v12 + 280) = v111;
  v44 = v109;
  *(v12 + 264) = v110;
  v45 = v108;
  *(v12 + 248) = v44;
  *(v12 + 232) = v45;
  *(v12 + 288) = v65;
  v46 = v78;
  v47 = v79;
  v48 = v81;
  v49 = v82;
  *(v12 + 328) = v80;
  *(v12 + 344) = v48;
  *(v12 + 296) = v46;
  *(v12 + 312) = v47;
  v50 = v83;
  v51 = v85;
  v52 = v86;
  *(v12 + 392) = v84;
  *(v12 + 408) = v51;
  *(v12 + 360) = v49;
  *(v12 + 376) = v50;
  v53 = v87;
  v54 = v88;
  v55 = v89;
  *(v12 + 488) = v90;
  *(v12 + 456) = v54;
  *(v12 + 472) = v55;
  *(v12 + 424) = v52;
  *(v12 + 440) = v53;
  *(v12 + 496) = v64;
  *(v12 + 504) = v63;
  *(v12 + 512) = v62;
  v56 = v61;
  *(v12 + 520) = v60;
  *(v12 + 528) = v56;
  v57 = v59;
  *(v12 + 536) = v58;
  *(v12 + 544) = v57;
  *(v12 + 552) = v34;
  *(v12 + 560) = v35;
  __swift_destroy_boxed_opaque_existential_1(v66);
  return v12;
}

uint64_t sub_1D5C31980@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D5C308C8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1D5C319AC()
{
  result = qword_1EDF2BD90;
  if (!qword_1EDF2BD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2BD90);
  }

  return result;
}

unint64_t sub_1D5C31A00()
{
  result = qword_1EDF2BD98;
  if (!qword_1EDF2BD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2BD98);
  }

  return result;
}

void sub_1D5C31A54()
{
  if (!qword_1EDF1A138)
  {
    sub_1D5C31AE8();
    sub_1D5B58B84(&qword_1EDF25458, sub_1D5C31AE8);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A138);
    }
  }
}

void sub_1D5C31AE8()
{
  if (!qword_1EDF25450)
  {
    sub_1D5C31B6C();
    sub_1D5C31BC0();
    sub_1D5C31CC4();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF25450);
    }
  }
}

unint64_t sub_1D5C31B6C()
{
  result = qword_1EDF2BDD8;
  if (!qword_1EDF2BDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2BDD8);
  }

  return result;
}

unint64_t sub_1D5C31BC0()
{
  result = qword_1EDF2BDE0;
  if (!qword_1EDF2BDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2BDE0);
  }

  return result;
}

unint64_t sub_1D5C31C18()
{
  result = qword_1EDF2BDC8;
  if (!qword_1EDF2BDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2BDC8);
  }

  return result;
}

unint64_t sub_1D5C31C70()
{
  result = qword_1EDF2BDD0;
  if (!qword_1EDF2BDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2BDD0);
  }

  return result;
}

unint64_t sub_1D5C31CC4()
{
  result = qword_1EDF2BDE8;
  if (!qword_1EDF2BDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2BDE8);
  }

  return result;
}

uint64_t sub_1D5C31D18(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void, __n128))
{
  v11 = sub_1D725895C();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a2;
  v22 = a3;
  v17 = a4 & 1;
  v23 = v17;
  a5(0, v14);
  if (sub_1D726434C())
  {
    v19[2] = a2;
    v19[3] = a3;
    v20 = v17;
    sub_1D726431C();
    if (!v5)
    {
      return v19[0];
    }
  }

  else
  {
    sub_1D725894C();
    a1 = sub_1D725893C();
    (*(v12 + 8))(v16, v11);
  }

  return a1;
}

unint64_t sub_1D5C31E9C(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x7373616C63;
      break;
    case 2:
      result = 0x726F7463656C6573;
      break;
    case 3:
      result = 1953394534;
      break;
    case 4:
      result = 1819044198;
      break;
    case 5:
      result = 0x73726564726F62;
      break;
    case 6:
      result = 0x776F64616873;
      break;
    case 7:
      result = 0x726F66736E617274;
      break;
    case 8:
      result = 0x7061726761726170;
      break;
    case 9:
      result = 0x676E696B63617274;
      break;
    case 10:
      result = 0x6168706C61;
      break;
    case 11:
      result = 0x6874656B69727473;
      break;
    case 12:
      result = 0x6E696C7265646E75;
      break;
    case 13:
      result = 0xD000000000000018;
      break;
    case 14:
      result = 0x656E696C65736162;
      break;
    case 15:
      result = 1885433183;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D5C32094(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7B)
  {
    *result = a2 - 124;
    if (a3 >= 0x7C)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7C)
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

unint64_t sub_1D5C320E4()
{
  result = qword_1EDF34690;
  if (!qword_1EDF34690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF34690);
  }

  return result;
}

double sub_1D5C32138(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 120) = 0;
    result = 0.0;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 128) = 1;
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
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 96) = 0;
      *(a1 + 104) = 2 * -a2;
      *(a1 + 112) = 0;
      *(a1 + 120) = 0;
      return result;
    }

    *(a1 + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D5C321B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 104) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t FormatFill.init(from:)@<X0>(void *a1@<X0>, __int128 *a2@<X8>)
{
  v3 = v2;
  v31 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v32 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v31 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (!v2)
  {
    v10 = v31;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v11 = sub_1D7264AFC();
    v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

    v13 = v6;
    v14 = v9;
    v15 = v32;
    if (v12)
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
          *(v22 + 16) = &unk_1F5114CD8;
          *(v22 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v15 + 8))(v14, v13);
          goto LABEL_9;
        }
      }
    }

    sub_1D5C3272C();
    v58 = 0;
    v59 = 0;
    sub_1D726431C();
    v24 = (v15 + 8);
    if (v60 > 1u)
    {
      if (v60 == 2)
      {
        v41 = xmmword_1D7279980;
        sub_1D6676230();
        sub_1D726431C();
        (*v24)(v14, v13);
        v37 = v46;
        v38 = v47;
        v39 = v48;
        v40 = v49;
        v33 = v42;
        v34 = v43;
        v35 = v44;
        v36 = v45;
        sub_1D5C326F0(&v33);
        v54 = v37;
        v55 = v38;
        v56 = v39;
        v57 = v40;
        v50 = v33;
        v51 = v34;
        v25 = v35;
        v26 = v36;
LABEL_19:
        v52 = v25;
        v53 = v26;
        v27 = v55;
        v10[4] = v54;
        v10[5] = v27;
        v28 = v57;
        v10[6] = v56;
        v10[7] = v28;
        v29 = v51;
        *v10 = v50;
        v10[1] = v29;
        v30 = v53;
        v10[2] = v52;
        v10[3] = v30;
        return __swift_destroy_boxed_opaque_existential_1(a1);
      }

      v33 = xmmword_1D7279980;
      sub_1D5C49CDC();
      sub_1D726431C();
      (*v24)(v14, v13);
      *&v42 = v41;
      sub_1D5C49D78(&v42);
    }

    else
    {
      v41 = xmmword_1D7279980;
      if (v60)
      {
        sub_1D5C4C9E8();
        sub_1D726431C();
        (*v24)(v14, v13);
        v42 = v33;
        v43 = v34;
        v44 = v35;
        v45 = v36;
        sub_1D6687774(&v42);
      }

      else
      {
        sub_1D5C32944();
        sub_1D726431C();
        (*v24)(v14, v13);
        v42 = v33;
        sub_1D5C32704(&v42);
      }
    }

    v54 = v46;
    v55 = v47;
    v56 = v48;
    v57 = v49;
    v50 = v42;
    v51 = v43;
    v25 = v44;
    v26 = v45;
    goto LABEL_19;
  }

LABEL_9:
  sub_1D61E4FBC(a1, v3);
  swift_willThrow();

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D5C3272C()
{
  result = qword_1EDF34698;
  if (!qword_1EDF34698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF34698);
  }

  return result;
}

unint64_t sub_1D5C327E0()
{
  result = qword_1EDF346A0[0];
  if (!qword_1EDF346A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF346A0);
  }

  return result;
}

uint64_t sub_1D5C32834@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5C32868();
  *a1 = result;
  return result;
}

uint64_t sub_1D5C32868()
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

uint64_t getEnumTagSinglePayload for FormatFontDesign(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_1D5C32944()
{
  result = qword_1EDF31218;
  if (!qword_1EDF31218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF31218);
  }

  return result;
}

uint64_t sub_1D5C32998(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x75 && *(a1 + 16))
  {
    return (*a1 + 117);
  }

  v3 = ((*a1 >> 60) & 0x8F | (16 * (*a1 & 7))) ^ 0x7F;
  if (v3 >= 0x74)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D5C329E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x74)
  {
    *result = a2 - 117;
    *(result + 8) = 0;
    if (a3 >= 0x75)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x75)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 4) & 7 | (8 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void sub_1D5C32A38()
{
  if (!qword_1EDF19CC8)
  {
    sub_1D5C32ACC();
    sub_1D5B58B84(&qword_1EDF24B78, sub_1D5C32ACC);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19CC8);
    }
  }
}

void sub_1D5C32ACC()
{
  if (!qword_1EDF24B70)
  {
    sub_1D5C32F7C();
    sub_1D5C32FD0();
    sub_1D5C330D4();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF24B70);
    }
  }
}

uint64_t FormatSolidFill.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v28 = a2;
  sub_1D5C32A38();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C32ACC();
  sub_1D5B58B84(&qword_1EDF24B78, sub_1D5C32ACC);
  sub_1D7264B0C();
  if (v2)
  {
    v10 = v2;
LABEL_3:
    sub_1D61E4FBC(a1, v10);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = sub_1D7264AFC();
  v14 = Dictionary<>.errorOnUnknownKeys.getter(v13);

  v15 = v28;
  if (v14)
  {
    v16 = sub_1D726433C();
    v17 = *(v16 + 16);
    if (v17)
    {
      v18 = (v16 + 48);
      while (*v18 != 1)
      {
        v18 += 24;
        if (!--v17)
        {
          goto LABEL_10;
        }
      }

      v21 = *(v18 - 2);
      v20 = *(v18 - 1);

      v22 = sub_1D6627E68(0x756F726765726F66, 0xEA0000000000646ELL, 0x756F72676B636162, 0xEA0000000000646ELL);
      sub_1D5E2D970();
      v10 = swift_allocError();
      *v23 = v21;
      *(v23 + 8) = v20;
      *(v23 + 16) = v22;
      *(v23 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v12 + 8))(v9, v5);
      goto LABEL_3;
    }

LABEL_10:
  }

  v31 = 0uLL;
  v32 = 0;
  if (sub_1D726434C())
  {
    v29 = 0uLL;
    v30 = 0;
    sub_1D5B570F8();
    sub_1D726431C();
    v24 = v33;
  }

  else
  {
    v19 = swift_allocObject();
    *(v19 + 16) = 21;
    *(v19 + 24) = 0x3FF0000000000000;
    *(v19 + 32) = 0;
    v24 = v19 | 0x1000000000000000;
  }

  v27 = xmmword_1D728CF30;
  v31 = xmmword_1D728CF30;
  v32 = 0;
  if (sub_1D726434C())
  {
    v29 = v27;
    v30 = 0;
    sub_1D5B570F8();
    sub_1D726431C();
    v26 = v33;
  }

  else
  {
    v25 = swift_allocObject();
    *(v25 + 16) = 2;
    *(v25 + 24) = 0;
    *(v25 + 32) = 0;
    v26 = v25 | 0x1000000000000000;
  }

  (*(v12 + 8))(v9, v5);
  *v15 = v24;
  v15[1] = v26;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D5C32F7C()
{
  result = qword_1EDF31230;
  if (!qword_1EDF31230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF31230);
  }

  return result;
}

unint64_t sub_1D5C32FD0()
{
  result = qword_1EDF31238;
  if (!qword_1EDF31238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF31238);
  }

  return result;
}

unint64_t sub_1D5C33028()
{
  result = qword_1EDF31220;
  if (!qword_1EDF31220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF31220);
  }

  return result;
}

unint64_t sub_1D5C33080()
{
  result = qword_1EDF31228;
  if (!qword_1EDF31228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF31228);
  }

  return result;
}

unint64_t sub_1D5C330D4()
{
  result = qword_1EDF31240;
  if (!qword_1EDF31240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF31240);
  }

  return result;
}

uint64_t sub_1D5C33128()
{
  v1 = 0x756F72676B636162;
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
    return 0x756F726765726F66;
  }
}

uint64_t FormatColor.init(from:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = v2;
  v57 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v56 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (!v2)
  {
    v11 = v7;
    v12 = v57;
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
          *(v21 + 16) = &unk_1F5114658;
          *(v21 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v10, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D5C33DA0();
    v58 = 0uLL;
    sub_1D726431C();
    if (v62 > 5u)
    {
      v23 = v12;
      if (v62 <= 8u)
      {
        if (v62 == 6)
        {
          v62 = xmmword_1D7279980;
          sub_1D667E174();
          sub_1D726431C();
          (*(v11 + 8))(v10, v6);
          v56 = v58;
          v38 = v59;
          v39 = v60;
          v40 = v61;
          v41 = swift_allocObject();
          *(v41 + 16) = v56;
          *(v41 + 32) = v38;
          *(v41 + 40) = v39;
          *(v41 + 48) = v40;
          v28 = v41 | 0x6000000000000000;
        }

        else if (v62 == 7)
        {
          v62 = xmmword_1D7279980;
          sub_1D5CD9AEC();
          sub_1D726431C();
          (*(v11 + 8))(v10, v6);
          v56 = v58;
          v29 = v59;
          v30 = v60;
          v31 = swift_allocObject();
          *(v31 + 16) = v56;
          *(v31 + 32) = v29;
          *(v31 + 40) = v30;
          v28 = v31 | 0x7000000000000000;
        }

        else
        {
          sub_1D5C30060(0, &qword_1EDF2C0D0, sub_1D5B5706C, &type metadata for FormatColor, type metadata accessor for FormatSelectorValue);
          v62 = xmmword_1D7279980;
          sub_1D667E0E4();
          sub_1D726431C();
          (*(v11 + 8))(v10, v6);
          v51 = v58;
          v52 = swift_allocObject();
          *(v52 + 16) = v51;
          v28 = v52 | 0x8000000000000000;
        }

        goto LABEL_35;
      }

      if (v62 == 9)
      {
        sub_1D667DF1C(0, &qword_1EC8854B0, sub_1D62B5080);
        v62 = xmmword_1D7279980;
        sub_1D667E068();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v56 = v58;
        v44 = v59;
        v45 = v60;
        v46 = v61;
        v35 = swift_allocObject();
        *(v35 + 16) = v56;
        *(v35 + 32) = v44;
        *(v35 + 40) = v45;
        *(v35 + 48) = v46;
        v36 = 0x9000000000000000;
      }

      else if (v62 == 10)
      {
        sub_1D667DF1C(0, &qword_1EC8868E0, sub_1D667DF98);
        v62 = xmmword_1D7279980;
        sub_1D667DFEC();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v56 = v58;
        v34 = v59;
        v35 = swift_allocObject();
        *(v35 + 16) = v56;
        *(v35 + 32) = v34;
        v36 = 0xA000000000000000;
      }

      else
      {
        sub_1D667DDD0();
        v62 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EC8868D8, sub_1D667DDD0);
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v56 = v58;
        v55 = v59;
        v35 = swift_allocObject();
        *(v35 + 16) = v56;
        *(v35 + 32) = v55;
        v36 = 0xB000000000000000;
      }
    }

    else
    {
      v23 = v12;
      if (v62 <= 2u)
      {
        if (v62)
        {
          if (v62 == 1)
          {
            sub_1D5C30060(0, &qword_1EDF309E0, sub_1D5C48F64, &type metadata for FormatSystemColor, type metadata accessor for FormatAlphaColor);
            v62 = xmmword_1D7279980;
            sub_1D5C798E4();
            sub_1D726431C();
            (*(v11 + 8))(v10, v6);
            v24 = v58;
            v25 = *(&v58 + 1);
            v26 = v59;
            v27 = swift_allocObject();
            *(v27 + 16) = v24;
            *(v27 + 24) = v25;
            *(v27 + 32) = v26;
            v28 = v27 | 0x1000000000000000;
          }

          else
          {
            sub_1D5C30060(0, &qword_1EDF115F0, sub_1D5CDA754, &type metadata for FormatFixedColor, type metadata accessor for FormatAlphaColor);
            v62 = xmmword_1D7279980;
            sub_1D5CDA8DC();
            sub_1D726431C();
            (*(v11 + 8))(v10, v6);
            v47 = v58;
            v48 = *(&v58 + 1);
            v49 = v59;
            v50 = swift_allocObject();
            *(v50 + 16) = v47;
            *(v50 + 24) = v48;
            *(v50 + 32) = v49;
            v28 = v50 | 0x2000000000000000;
          }
        }

        else
        {
          sub_1D5C34074(0, &qword_1EDF419A0, MEMORY[0x1E69E6158], &protocol witness table for String, type metadata accessor for FormatValue);
          v62 = xmmword_1D7279980;
          sub_1D5C34150();
          sub_1D726431C();
          (*(v11 + 8))(v10, v6);
          v37 = v58;
          v28 = swift_allocObject();
          *(v28 + 16) = v37;
        }

        goto LABEL_35;
      }

      if (v62 == 3)
      {
        sub_1D5C30060(0, &qword_1EDF3F040, sub_1D5B5706C, &type metadata for FormatColor, type metadata accessor for FormatUserInterfaceValue);
        v62 = xmmword_1D7279980;
        sub_1D5CD5D84();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v42 = v58;
        v43 = swift_allocObject();
        *(v43 + 16) = v42;
        v28 = v43 | 0x3000000000000000;
        goto LABEL_35;
      }

      if (v62 == 4)
      {
        v62 = xmmword_1D7279980;
        sub_1D667E21C();
        sub_1D726431C();
        (*(v11 + 8))(v10, v6);
        v32 = v58;
        v33 = swift_allocObject();
        *(v33 + 16) = v32;
        v28 = v33 | 0x4000000000000000;
LABEL_35:
        *v23 = v28;
        return __swift_destroy_boxed_opaque_existential_1(a1);
      }

      v62 = xmmword_1D7279980;
      sub_1D667E1C8();
      sub_1D726431C();
      (*(v11 + 8))(v10, v6);
      v53 = v58;
      v54 = v59;
      v35 = swift_allocObject();
      *(v35 + 16) = v53;
      *(v35 + 32) = v54;
      v36 = 0x5000000000000000;
    }

    v28 = v35 | v36;
    goto LABEL_35;
  }

LABEL_9:
  sub_1D61E4FBC(a1, v3);
  swift_willThrow();

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D5C33D20()
{
  sub_1D5F57FEC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

unint64_t sub_1D5C33DA0()
{
  result = qword_1EDF41B88;
  if (!qword_1EDF41B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF41B88);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for FormatOperator(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D5C33F0C()
{
  result = qword_1EDF41B90;
  if (!qword_1EDF41B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF41B90);
  }

  return result;
}

uint64_t sub_1D5C33F60@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5C33F90();
  *a1 = result;
  return result;
}

uint64_t sub_1D5C33F90()
{
  v0 = sub_1D72641CC();

  if (v0 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v0;
  }
}

uint64_t getEnumTagSinglePayload for FormatOperator(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

void sub_1D5C34074(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1D5C340E0()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D5C34150()
{
  result = qword_1EDF419A8;
  if (!qword_1EDF419A8)
  {
    sub_1D5C34074(255, &qword_1EDF419A0, MEMORY[0x1E69E6158], &protocol witness table for String, type metadata accessor for FormatValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF419A8);
  }

  return result;
}

char *sub_1D5C341D4(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_1D5C343DC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

uint64_t FormatValue.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a3;
  v46 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v45 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v49 = &v41 - v8;
  v50 = v7;
  v52 = v9;
  v10 = _s10CodingKeysOMa_10();
  WitnessTable = swift_getWitnessTable();
  v12 = swift_getWitnessTable();
  v13 = swift_getWitnessTable();
  *&v53 = v10;
  *(&v53 + 1) = WitnessTable;
  v48 = WitnessTable;
  v44 = v12;
  v54 = v12;
  v55 = v13;
  v14 = type metadata accessor for FormatCodingKeysContainer();
  swift_getWitnessTable();
  v15 = sub_1D726435C();
  v51 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v41 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v19 = v56;
  sub_1D7264B0C();
  v20 = v19;
  if (v19)
  {
    goto LABEL_12;
  }

  v42 = v13;
  v43 = 0;
  v56 = v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v21 = sub_1D7264AFC();
  v22 = Dictionary<>.errorOnUnknownKeys.getter(v21);

  if ((v22 & 1) == 0)
  {
LABEL_10:
    v53 = 0uLL;
    LOBYTE(v54) = 0;
    v37 = v49;
    v36 = v50;
    v38 = v56;
    v39 = v43;
    sub_1D726431C();
    if (!v39)
    {
      (*(v51 + 8))(v38, v15);
      v40 = v45;
      (*(v46 + 32))(v45, v37, v36);
      FormatValue.init(value:)(v40, v36, v47);
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    (*(v51 + 8))(v38, v15);
    v20 = v39;
LABEL_12:
    sub_1D61E4FBC(a1, v20);
    swift_willThrow();

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = 0;
  v24 = (sub_1D726433C() + 48);
  v25 = v10;
  v26 = v48;
  while (1)
  {
    if (v23 == sub_1D726279C())
    {

      goto LABEL_10;
    }

    v27 = sub_1D726277C();
    result = sub_1D726271C();
    if ((v27 & 1) == 0)
    {
      break;
    }

    v29 = *v24;
    v53 = *(v24 - 1);
    LOBYTE(v54) = v29;
    if (__OFADD__(v23, 1))
    {
      goto LABEL_16;
    }

    v30 = sub_1D6AFC82C(v14);
    ++v23;
    v24 += 24;
    if (v31)
    {
      v32 = v30;
      v33 = v31;

      v34 = sub_1D6AFC690(v25, v26, v44, v42);
      sub_1D5E2D970();
      v20 = swift_allocError();
      *v35 = v32;
      *(v35 + 8) = v33;
      *(v35 + 16) = v34;
      *(v35 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v51 + 8))(v56, v15);
      goto LABEL_12;
    }
  }

  result = sub_1D7263DBC();
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1D5C34A38(char a1)
{
  if (a1)
  {
    return 1885433183;
  }

  else
  {
    return 0x65756C6176;
  }
}

void sub_1D5C34A74(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = *(*(*(a4 + 16) - 8) + 64);
  v11 = ((v9 + 8) & ~v9) + v10;
  v12 = a3 >= v8;
  v13 = a3 - v8;
  if (v13 != 0 && v12)
  {
    if (v11 <= 3)
    {
      v17 = ((v13 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
      if (HIWORD(v17))
      {
        v14 = 4;
      }

      else
      {
        if (v17 < 0x100)
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }

        if (v17 >= 2)
        {
          v14 = v18;
        }

        else
        {
          v14 = 0;
        }
      }
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  if (v8 < a2)
  {
    v15 = ~v8 + a2;
    if (v11 < 4)
    {
      v16 = (v15 >> (8 * v11)) + 1;
      if (v11)
      {
        v19 = v15 & ~(-1 << (8 * v11));
        bzero(a1, v11);
        if (v11 != 3)
        {
          if (v11 == 2)
          {
            *a1 = v19;
            if (v14 > 1)
            {
LABEL_58:
              if (v14 == 2)
              {
                *&a1[v11] = v16;
              }

              else
              {
                *&a1[v11] = v16;
              }

              return;
            }
          }

          else
          {
            *a1 = v15;
            if (v14 > 1)
            {
              goto LABEL_58;
            }
          }

          goto LABEL_55;
        }

        *a1 = v19;
        a1[2] = BYTE2(v19);
      }

      if (v14 > 1)
      {
        goto LABEL_58;
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v15;
      v16 = 1;
      if (v14 > 1)
      {
        goto LABEL_58;
      }
    }

LABEL_55:
    if (v14)
    {
      a1[v11] = v16;
    }

    return;
  }

  if (v14 > 1)
  {
    if (v14 != 2)
    {
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v11] = 0;
LABEL_30:
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!v14)
  {
    goto LABEL_30;
  }

  a1[v11] = 0;
  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v21 = (&a1[v9 + 8] & ~v9);
    if (v7 >= a2)
    {
      v25 = *(v6 + 56);

      v25(v21);
    }

    else
    {
      if (v10 <= 3)
      {
        v22 = ~(-1 << (8 * v10));
      }

      else
      {
        v22 = -1;
      }

      if (v10)
      {
        v23 = v22 & (~v7 + a2);
        if (v10 <= 3)
        {
          v24 = v10;
        }

        else
        {
          v24 = 4;
        }

        bzero(v21, v10);
        if (v24 > 2)
        {
          if (v24 == 3)
          {
            *v21 = v23;
            v21[2] = BYTE2(v23);
          }

          else
          {
            *v21 = v23;
          }
        }

        else if (v24 == 1)
        {
          *v21 = v23;
        }

        else
        {
          *v21 = v23;
        }
      }
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v20 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v20 = a2 - 1;
    }

    *a1 = v20;
  }
}

void sub_1D5C34D84(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1D5C34DD4()
{
  result = qword_1EDF1B3D8;
  if (!qword_1EDF1B3D8)
  {
    sub_1D5C34D84(255, &unk_1EDF1B3E0, &type metadata for FormatBorder, MEMORY[0x1E69E62F8]);
    sub_1D5C34E70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1B3D8);
  }

  return result;
}

unint64_t sub_1D5C34E70()
{
  result = qword_1EDF33A70;
  if (!qword_1EDF33A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF33A70);
  }

  return result;
}

unint64_t sub_1D5C34EC4()
{
  result = qword_1EDF33720;
  if (!qword_1EDF33720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF33720);
  }

  return result;
}

uint64_t sub_1D5C34F18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = ~a2;
    }
  }

  return result;
}

unint64_t sub_1D5C34F74()
{
  result = qword_1EDF1B058;
  if (!qword_1EDF1B058)
  {
    sub_1D5C34D84(255, &qword_1EDF1B060, &type metadata for FormatTextNodeTransform, MEMORY[0x1E69E62F8]);
    sub_1D5C35010();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1B058);
  }

  return result;
}

unint64_t sub_1D5C35010()
{
  result = qword_1EDF26DE8;
  if (!qword_1EDF26DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF26DE8);
  }

  return result;
}

unint64_t sub_1D5C35064()
{
  result = qword_1EDF2ADA8;
  if (!qword_1EDF2ADA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2ADA8);
  }

  return result;
}

uint64_t sub_1D5C350B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 184) = 0;
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
    *(result + 192) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 194) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 194) = 0;
    }

    if (a2)
    {
      *(result + 193) = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_1D5C35130()
{
  result = qword_1EDF34210;
  if (!qword_1EDF34210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF34210);
  }

  return result;
}

unint64_t sub_1D5C35184(void *a1)
{
  a1[1] = sub_1D5C351C4();
  a1[2] = sub_1D5C35218();
  a1[3] = sub_1D5C3526C();
  result = sub_1D5C352C0();
  a1[4] = result;
  return result;
}

unint64_t sub_1D5C351C4()
{
  result = qword_1EDF34218;
  if (!qword_1EDF34218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF34218);
  }

  return result;
}

unint64_t sub_1D5C35218()
{
  result = qword_1EDF34220;
  if (!qword_1EDF34220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF34220);
  }

  return result;
}

unint64_t sub_1D5C3526C()
{
  result = qword_1EDF34230;
  if (!qword_1EDF34230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF34230);
  }

  return result;
}

unint64_t sub_1D5C352C0()
{
  result = qword_1EDF34228;
  if (!qword_1EDF34228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF34228);
  }

  return result;
}

uint64_t sub_1D5C3532C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1D5C35368()
{
  result = qword_1EDF32860;
  if (!qword_1EDF32860)
  {
    sub_1D5C30060(255, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF32860);
  }

  return result;
}

unint64_t sub_1D5C353F8()
{
  result = qword_1EDF310D8;
  if (!qword_1EDF310D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF310D8);
  }

  return result;
}

uint64_t sub_1D5C3544C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *result = a2 - 248;
    *(result + 8) = 0;
    if (a3 >= 0xF8)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 8;
    }
  }

  return result;
}

uint64_t sub_1D5C3548C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FormatMetadata();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
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

void sub_1D5C35508(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1D725BD1C();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    sub_1D5B5C268(0);
    if (*(*(v12 - 8) + 84) != a3)
    {
      *(a1 + a4[8]) = (a2 - 1);
      return;
    }

    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
  }

  v13 = *(v10 + 56);

  v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_1D5C35620(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1D725BD1C();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  sub_1D5B5C268(0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[7];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[8]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_1D5C35728(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatMetadata();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D5C3578C()
{
  result = qword_1EDF3BCF0;
  if (!qword_1EDF3BCF0)
  {
    sub_1D5C2E60C(255, &qword_1EDF3BCE8, sub_1D5C319AC, sub_1D5C31A00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3BCF0);
  }

  return result;
}

uint64_t sub_1D5C3581C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 528))
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

uint64_t sub_1D5C35864(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 520) = 0;
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
      *(result + 528) = 1;
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

    *(result + 528) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D5C3592C()
{
  if (!qword_1EDF25440)
  {
    sub_1D5C367CC();
    sub_1D5C36820();
    sub_1D5C36924();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF25440);
    }
  }
}

uint64_t FormatTextNodeStyle.Selector.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v65 = a2;
  sub_1D5C36720();
  v6 = v5;
  v135 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C3592C();
  sub_1D5B58B84(&qword_1EDF25448, sub_1D5C3592C);
  sub_1D7264B0C();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v11 = sub_1D7264AFC();
    v12 = Dictionary<>.errorOnUnknownKeys.getter(v11);

    v13 = v135;
    v10 = a1;
    v14 = v9;
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
            goto LABEL_8;
          }
        }

        v19 = v13;
        v21 = *(v17 - 2);
        v20 = *(v17 - 1);

        v22 = sub_1D66257FC();
        sub_1D5E2D970();
        v3 = swift_allocError();
        *v23 = v21;
        *(v23 + 8) = v20;
        *(v23 + 16) = v22;
        *(v23 + 24) = xmmword_1D72874E0;
        swift_willThrow();
        (*(v19 + 8))(v14, v6);
        goto LABEL_11;
      }

LABEL_8:
    }

    sub_1D5C36978();
    v90 = 0uLL;
    LOBYTE(v91) = 0;
    sub_1D726431C();
    v64 = v10;
    v18 = v127;
    v90 = xmmword_1D728CF30;
    LOBYTE(v91) = 0;
    sub_1D5B556F4();
    sub_1D726427C();
    v24 = v127;
    v125 = xmmword_1D7297410;
    v126 = 0;
    sub_1D5C320E4();
    sub_1D726427C();
    v121 = v131;
    v122 = v132;
    v123 = v133;
    v124 = v134;
    v117 = v127;
    v118 = v128;
    v119 = v129;
    v120 = v130;
    sub_1D5C34D84(0, &unk_1EDF1B3E0, &type metadata for FormatBorder, MEMORY[0x1E69E62F8]);
    v90 = xmmword_1D72BAA60;
    LOBYTE(v91) = 0;
    sub_1D5C34DD4();
    sub_1D726427C();
    v63 = v111;
    v109 = xmmword_1D72BAA70;
    v110 = 0;
    sub_1D5C34EC4();
    sub_1D726427C();
    v105 = v113;
    v106 = v114;
    v107 = v115;
    v108 = v116;
    v103 = v111;
    v104 = v112;
    sub_1D5C34D84(0, &qword_1EDF1B060, &type metadata for FormatTextNodeTransform, MEMORY[0x1E69E62F8]);
    v90 = xmmword_1D72BAA80;
    LOBYTE(v91) = 0;
    sub_1D5C34F74();
    sub_1D726427C();
    v62 = v24;
    v25 = v88;
    v88 = xmmword_1D72BAA90;
    v89 = 0;
    sub_1D5C35064();
    sub_1D726427C();
    v85 = v100;
    v86 = v101;
    v87 = v102;
    v81 = v96;
    v82 = v97;
    v83 = v98;
    v84 = v99;
    v77 = v92;
    v78 = v93;
    v79 = v94;
    v80 = v95;
    v75 = v90;
    v76 = v91;
    v73 = xmmword_1D72BAAA0;
    v74 = 0;
    sub_1D5B57870();
    sub_1D726427C();
    v59 = v71;
    v58 = v72;
    sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
    v27 = v26;
    v73 = xmmword_1D72BAAB0;
    v74 = 0;
    v60 = sub_1D5C35368();
    v61 = v27;
    sub_1D726427C();
    v55 = v71;
    v56 = v25;
    v73 = xmmword_1D72BAAC0;
    v74 = 0;
    sub_1D5C353F8();
    v57 = v6;
    v28 = v14;
    sub_1D726427C();
    v29 = v72;
    v54 = v71;
    v73 = xmmword_1D72BAAD0;
    v74 = 0;
    sub_1D726427C();
    v52 = v71;
    v53 = v72;
    v73 = xmmword_1D72BAAE0;
    v74 = 0;
    v51 = sub_1D726423C();
    v73 = xmmword_1D72BAAF0;
    v74 = 0;
    sub_1D726427C();
    v61 = 0;
    (*(v13 + 8))(v28, v57);
    v30 = v71;
    v31 = v58;
    v66 = v58;
    v32 = v65;
    *v65 = v18;
    v33 = v63;
    *(v32 + 2) = v62;
    v34 = v122;
    *(v32 + 88) = v121;
    *(v32 + 104) = v34;
    v35 = v124;
    *(v32 + 120) = v123;
    *(v32 + 136) = v35;
    v36 = v118;
    *(v32 + 24) = v117;
    *(v32 + 40) = v36;
    v37 = v120;
    *(v32 + 56) = v119;
    *(v32 + 72) = v37;
    *(v32 + 19) = v33;
    v38 = v106;
    v32[12] = v105;
    v32[13] = v38;
    v32[14] = v107;
    *(v32 + 240) = v108;
    v39 = v104;
    v32[10] = v103;
    v32[11] = v39;
    *(v32 + 241) = *v70;
    *(v32 + 61) = *&v70[3];
    *(v32 + 31) = v56;
    *(v32 + 224) = v87;
    v40 = v86;
    v32[26] = v85;
    v32[27] = v40;
    v41 = v84;
    v32[24] = v83;
    v32[25] = v41;
    v42 = v82;
    v32[22] = v81;
    v32[23] = v42;
    v43 = v80;
    v32[20] = v79;
    v32[21] = v43;
    v44 = v78;
    v32[18] = v77;
    v32[19] = v44;
    v45 = v76;
    v32[16] = v75;
    v32[17] = v45;
    *(v32 + 450) = *&v68[7];
    *(v32 + 227) = v69;
    *(v32 + 57) = v59;
    *(v32 + 464) = v31;
    *(v32 + 465) = *v68;
    *(v32 + 117) = *&v68[3];
    v46 = v54;
    *(v32 + 59) = v55;
    *(v32 + 60) = v46;
    v48 = v52;
    v47 = v53;
    *(v32 + 61) = v29;
    *(v32 + 62) = v48;
    *(v32 + 63) = v47;
    *(v32 + 512) = v51;
    LODWORD(v48) = *v67;
    *(v32 + 129) = *&v67[3];
    *(v32 + 513) = v48;
    *(v32 + 65) = v30;
    return __swift_destroy_boxed_opaque_existential_1(v64);
  }

  v10 = a1;
LABEL_11:
  sub_1D61E4FBC(v10, v3);
  swift_willThrow();

  return __swift_destroy_boxed_opaque_existential_1(v10);
}

void sub_1D5C36720()
{
  if (!qword_1EDF1A130)
  {
    sub_1D5C3592C();
    sub_1D5B58B84(&qword_1EDF25448, sub_1D5C3592C);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A130);
    }
  }
}

unint64_t sub_1D5C367CC()
{
  result = qword_1EDF2BDB0;
  if (!qword_1EDF2BDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2BDB0);
  }

  return result;
}

unint64_t sub_1D5C36820()
{
  result = qword_1EDF2BDB8;
  if (!qword_1EDF2BDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2BDB8);
  }

  return result;
}

unint64_t sub_1D5C36878()
{
  result = qword_1EDF2BDA0;
  if (!qword_1EDF2BDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2BDA0);
  }

  return result;
}

unint64_t sub_1D5C368D0()
{
  result = qword_1EDF2BDA8;
  if (!qword_1EDF2BDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2BDA8);
  }

  return result;
}

unint64_t sub_1D5C36924()
{
  result = qword_1EDF2BDC0;
  if (!qword_1EDF2BDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2BDC0);
  }

  return result;
}

unint64_t sub_1D5C36978()
{
  result = qword_1EDF41598;
  if (!qword_1EDF41598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF41598);
  }

  return result;
}

unint64_t sub_1D5C369D4(char a1)
{
  result = 0x726F7463656C6573;
  switch(a1)
  {
    case 1:
      result = 1953394534;
      break;
    case 2:
      result = 1819044198;
      break;
    case 3:
      result = 0x73726564726F62;
      break;
    case 4:
      result = 0x776F64616873;
      break;
    case 5:
      result = 0x726F66736E617274;
      break;
    case 6:
      result = 0x7061726761726170;
      break;
    case 7:
      result = 0x676E696B63617274;
      break;
    case 8:
      result = 0x6168706C61;
      break;
    case 9:
      result = 0x6874656B69727473;
      break;
    case 10:
      result = 0x6E696C7265646E75;
      break;
    case 11:
      result = 0xD000000000000018;
      break;
    case 12:
      result = 0x656E696C65736162;
      break;
    case 13:
      result = 1885433183;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D5C36B8C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7264AEC();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    v5 = sub_1D72646FC();
    v7 = v6;
    __swift_destroy_boxed_opaque_existential_1(v9);
    *a2 = v5;
    a2[1] = v7;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D5C36C58(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7C && *(a1 + 8))
  {
    return (*a1 + 124);
  }

  v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7B)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t FormatFont.init(from:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = v2;
  v48 = a2;
  sub_1D5C30060(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v47 - v9;
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
    v12 = v48;
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
          *(v22 + 16) = &unk_1F50F7920;
          *(v22 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v11 + 8))(v15, v6);
          goto LABEL_9;
        }
      }
    }

    sub_1D5C373F0();
    v49 = 0uLL;
    sub_1D726431C();
    if (v54 <= 1u)
    {
      v24 = v12;
      if (v54)
      {
        v54 = xmmword_1D7279980;
        sub_1D5C7A48C();
        sub_1D726431C();
        (*(v11 + 8))(v15, v6);
        v41 = v49;
        v42 = v50;
        v43 = a1;
        v44 = *(&v50 + 1);
        v45 = v51;
        v46 = swift_allocObject();
        *(v46 + 16) = v41;
        *(v46 + 32) = v42;
        *(v46 + 40) = v44;
        a1 = v43;
        v28 = v46 | 0x2000000000000000;
        *(v46 + 48) = v45;
      }

      else
      {
        v54 = xmmword_1D7279980;
        sub_1D5C37724();
        sub_1D726431C();
        (*(v11 + 8))(v15, v6);
        v28 = swift_allocObject();
        v39 = v52;
        *(v28 + 48) = v51;
        *(v28 + 64) = v39;
        *(v28 + 80) = v53;
        v40 = v50;
        *(v28 + 16) = v49;
        *(v28 + 32) = v40;
      }
    }

    else
    {
      v24 = v12;
      if (v54 == 2)
      {
        v54 = xmmword_1D7279980;
        sub_1D5FD7F80();
        sub_1D726431C();
        (*(v11 + 8))(v15, v6);
        v47 = v49;
        v29 = v50;
        v30 = v51;
        v31 = a1;
        v32 = WORD4(v51);
        v33 = swift_allocObject();
        *(v33 + 16) = v47;
        *(v33 + 32) = v29;
        *(v33 + 48) = v30;
        v28 = v33 | 0x4000000000000000;
        *(v33 + 56) = v32;
        a1 = v31;
      }

      else if (v54 == 3)
      {
        v54 = xmmword_1D7279980;
        sub_1D607B6AC();
        sub_1D726431C();
        (*(v11 + 8))(v15, v6);
        v47 = v49;
        v25 = v50;
        v26 = BYTE8(v50);
        v27 = swift_allocObject();
        *(v27 + 16) = v47;
        *(v27 + 32) = v25;
        *(v27 + 40) = v26;
        v28 = v27 | 0x6000000000000000;
      }

      else
      {
        sub_1D62B5154();
        v54 = xmmword_1D7279980;
        sub_1D5B58B84(&qword_1EC8860D0, sub_1D62B5154);
        sub_1D726431C();
        (*(v11 + 8))(v15, v6);
        v47 = v49;
        v34 = v50;
        v35 = BYTE8(v50);
        v36 = a1;
        v37 = v51;
        v38 = swift_allocObject();
        *(v38 + 16) = v47;
        *(v38 + 32) = v34;
        *(v38 + 40) = v35;
        *(v38 + 48) = v37;
        a1 = v36;
        v28 = v38 | 0x8000000000000000;
      }
    }

    *v24 = v28;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D5C372FC()
{
  sub_1D5F57FEC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_1D5C37368()
{

  return swift_deallocObject();
}

uint64_t sub_1D5C373A0()
{

  return swift_deallocObject();
}

unint64_t sub_1D5C373F0()
{
  result = qword_1EDF34678;
  if (!qword_1EDF34678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF34678);
  }

  return result;
}

uint64_t sub_1D5C37444@<X0>(char *a1@<X8>)
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

uint64_t _s5ImageOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D5C375BC()
{
  result = qword_1EDF34680;
  if (!qword_1EDF34680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF34680);
  }

  return result;
}

uint64_t sub_1D5C37610@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5C37640();
  *a1 = result;
  return result;
}

uint64_t sub_1D5C37640()
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

uint64_t _s5ImageOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_1D5C37724()
{
  result = qword_1EDF2FC70;
  if (!qword_1EDF2FC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2FC70);
  }

  return result;
}

uint64_t sub_1D5C37778(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 66))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

void *sub_1D5C377C0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1D5B87DC0(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_1D5C37864@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

void *sub_1D5C37874(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {
        swift_unknownObjectRetain();
        goto LABEL_24;
      }

      ++v11;
      swift_unknownObjectRetain();
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

char *sub_1D5C379E4()
{
  v0 = sub_1D725891C();
  v62 = *(v0 - 8);
  v63 = v0;
  MEMORY[0x1EEE9AC00](v0, v1);
  v3 = &v60 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D7257DEC();
  v64 = *(v4 - 8);
  v65 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDF059F0 != -1)
  {
    swift_once();
  }

  v8 = sub_1D7258C2C();
  __swift_project_value_buffer(v8, qword_1EDF059F8);
  sub_1D5C38238(0, &qword_1EDF19B90, MEMORY[0x1E6969AD0]);
  v9 = sub_1D7258C0C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D7279970;
  v14 = v13 + v12;
  v15 = *(v10 + 104);
  v15(v14, *MEMORY[0x1E6969A58], v9);
  v15(v14 + v11, *MEMORY[0x1E6969A88], v9);
  v15(v14 + 2 * v11, *MEMORY[0x1E6969A98], v9);
  sub_1D5BFA8DC(v13);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1D725890C();
  sub_1D7258B3C();

  (*(v62 + 8))(v3, v63);
  v16 = sub_1D7257DBC();
  v17 = v7;
  if (v18 & 1) != 0 || (v19 = v16, v20 = sub_1D7257DAC(), (v21) || (v22 = v20, v23 = sub_1D7257D5C(), (v24))
  {
    if (qword_1EDF1BB50 != -1)
    {
      swift_once();
    }

    sub_1D7262EBC();
    sub_1D5C38238(0, &qword_1EDF3C5E0, sub_1D5B8EA84);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1D7273AE0;
    sub_1D6EC6AD8();
    v26 = v65;
    v27 = sub_1D72644BC();
    v29 = v28;
    *(v25 + 56) = MEMORY[0x1E69E6158];
    *(v25 + 64) = sub_1D5B7E2C0();
    *(v25 + 32) = v27;
    *(v25 + 40) = v29;
    sub_1D725C30C();

    (*(v64 + 8))(v7, v26);
    return MEMORY[0x1E69E7CC0];
  }

  v31 = v23;
  v32 = v61;
  v33 = [v61 morningTimeOfDayConfiguration];
  v34 = sub_1D5C382F0(v31, v22, v19);

  if (v34)
  {
    v35 = sub_1D5B858EC(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v37 = *(v35 + 2);
    v36 = *(v35 + 3);
    v38 = v37 + 1;
    if (v37 >= v36 >> 1)
    {
      v35 = sub_1D5B858EC((v36 > 1), v37 + 1, 1, v35);
    }

    v39 = v35;
    v40 = "date-time-of-day-morning";
LABEL_14:
    v41 = (v40 - 32) | 0x8000000000000000;
    (*(v64 + 8))(v17, v65);
    result = v39;
    *(v39 + 2) = v38;
    v42 = &v39[16 * v37];
    v43 = 0xD000000000000018;
    goto LABEL_19;
  }

  v44 = [v32 afternoonTimeOfDayConfiguration];
  v45 = sub_1D5C382F0(v31, v22, v19);

  if (v45)
  {
    v46 = sub_1D5B858EC(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v48 = *(v46 + 2);
    v47 = *(v46 + 3);
    if (v48 >= v47 >> 1)
    {
      v46 = sub_1D5B858EC((v47 > 1), v48 + 1, 1, v46);
    }

    v49 = v46;
    v41 = 0x80000001D73F5D40;
    (*(v64 + 8))(v17, v65);
    result = v49;
    *(v49 + 2) = v48 + 1;
    v42 = &v49[16 * v48];
    v43 = 0xD00000000000001ALL;
    goto LABEL_19;
  }

  v50 = [v32 eveningTimeOfDayConfiguration];
  v51 = sub_1D5C382F0(v31, v22, v19);

  if (v51)
  {
    v52 = sub_1D5B858EC(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v37 = *(v52 + 2);
    v53 = *(v52 + 3);
    v38 = v37 + 1;
    if (v37 >= v53 >> 1)
    {
      v52 = sub_1D5B858EC((v53 > 1), v37 + 1, 1, v52);
    }

    v39 = v52;
    v40 = "date-time-of-day-evening";
    goto LABEL_14;
  }

  v54 = [v32 nightTimeOfDayConfiguration];
  v55 = sub_1D5C382F0(v31, v22, v19);

  if ((v55 & 1) == 0)
  {
    (*(v64 + 8))(v17, v65);
    return MEMORY[0x1E69E7CC0];
  }

  v56 = sub_1D5B858EC(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v58 = *(v56 + 2);
  v57 = *(v56 + 3);
  if (v58 >= v57 >> 1)
  {
    v56 = sub_1D5B858EC((v57 > 1), v58 + 1, 1, v56);
  }

  v59 = v56;
  v41 = 0x80000001D73F5D00;
  (*(v64 + 8))(v17, v65);
  result = v59;
  *(v59 + 2) = v58 + 1;
  v42 = &v59[16 * v58];
  v43 = 0xD000000000000016;
LABEL_19:
  *(v42 + 4) = v43;
  *(v42 + 5) = v41;
  return result;
}

uint64_t sub_1D5C38118()
{
  v0 = sub_1D7258ABC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D7258C2C();
  __swift_allocate_value_buffer(v5, qword_1EDF059F8);
  __swift_project_value_buffer(v5, qword_1EDF059F8);
  (*(v1 + 104))(v4, *MEMORY[0x1E6969868], v0);
  sub_1D7258ACC();
  return (*(v1 + 8))(v4, v0);
}

void sub_1D5C38238(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D72644CC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5C3828C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D5C382F0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = 60 * a2;
  if ((a2 * 60) >> 64 != (60 * a2) >> 63)
  {
    __break(1u);
    goto LABEL_15;
  }

  v5 = __OFADD__(a3, v4);
  v6 = a3 + v4;
  if (v5)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((result * 60) >> 64 != (60 * result) >> 63)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = 3600 * result;
  if ((60 * result * 60) >> 64 != (3600 * result) >> 63)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = v6 + v7;
  if (__OFADD__(v6, v7))
  {
LABEL_18:
    __break(1u);
    return result;
  }

  v9 = [v3 start];
  v10 = [v3 end];
  v11 = [v3 start];
  if (v9 < v10)
  {
    if (v8 < v11)
    {
      return 0;
    }

    return v8 < [v3 end];
  }

  if ([v3 end] >= v11)
  {
    return 0;
  }

  if (v8 < [v3 start])
  {
    return v8 < [v3 end];
  }

  return 1;
}

void sub_1D5C38428(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_1D5C384A0()
{
  if (!qword_1EDF3C5E0)
  {
    sub_1D5B49474(255, &qword_1EDF3C5C0);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3C5E0);
    }
  }
}

uint64_t sub_1D5C3851C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = result + 32;
  while (v3 != v2)
  {
    v5 = (v4 + 16 * v3);
    v6 = *v5;
    v7 = (a2 + 32 + 16 * v3);
    v8 = *v7;
    v9 = *(*v5 + 16);
    if (v9 != *(*v7 + 16))
    {
      return 0;
    }

    v10 = v5[1];
    v11 = v7[1];
    if (v9)
    {
      v12 = v6 == v8;
    }

    else
    {
      v12 = 1;
    }

    if (!v12)
    {
      v13 = v6 + 48;
      v14 = v8 + 48;
      while (v9)
      {
        result = *(v13 + 40);
        v16 = *(v14 - 8);
        if (*(v13 - 8))
        {
          if (!*(v14 - 8))
          {
            return 0;
          }
        }

        else
        {
          if (*(v13 - 16) != *(v14 - 16))
          {
            v16 = 1;
          }

          if (v16)
          {
            return 0;
          }
        }

        if (*(v13 + 8))
        {
          if (!*(v14 + 8))
          {
            return 0;
          }
        }

        else
        {
          if (*v13 == *v14)
          {
            v17 = *(v14 + 8);
          }

          else
          {
            v17 = 1;
          }

          if (v17)
          {
            return 0;
          }
        }

        if (*(v13 + 24))
        {
          if (!*(v14 + 24))
          {
            return 0;
          }
        }

        else
        {
          if (*(v13 + 16) == *(v14 + 16))
          {
            v18 = *(v14 + 24);
          }

          else
          {
            v18 = 1;
          }

          if (v18)
          {
            return 0;
          }
        }

        if (result)
        {
          if (!*(v14 + 40))
          {
            return 0;
          }
        }

        else
        {
          if (*(v13 + 32) == *(v14 + 32))
          {
            v15 = *(v14 + 40);
          }

          else
          {
            v15 = 1;
          }

          if (v15)
          {
            return 0;
          }
        }

        v13 += 64;
        v14 += 64;
        if (!--v9)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
      break;
    }

LABEL_12:
    if (v10 != v11)
    {
      return 0;
    }

    ++v3;
    result = 1;
    if (v3 == v2)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t static FeedBannerAd.== infix(_:_:)(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for FeedBannerAd();

  return sub_1D7260DAC();
}

uint64_t sub_1D5C38750(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  sub_1D5BEAC54(0, &qword_1EDF3BF00, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (&v37 - v8);
  v38 = a1;
  v44 = a1;
  KeyPath = swift_getKeyPath();
  v10 = swift_allocObject();
  v11 = type metadata accessor for HeadlineViewLayout.Context(0);
  v12 = (a2 + *(v11 + 24));
  v13 = v12[3];
  v14 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v13);
  *(v10 + 16) = (*(v14 + 16))(v13, v14);
  *v9 = v10;
  v15 = *MEMORY[0x1E69D7488];
  v37 = *(v6 + 104);
  v37(v9, v15, v5);
  v16 = MEMORY[0x1E69D6F38];
  sub_1D5C203B4(0, &qword_1EDF3C1C8, MEMORY[0x1E69D6F38]);
  v18 = v17;
  v19 = sub_1D5BEAD60(&qword_1EDF3C1D0, &qword_1EDF3C1C8, v16);
  v20 = sub_1D5BEA8DC(&qword_1EDF3C140, sub_1D5BEDFF4);
  v42 = v19;
  v43 = v18;
  v39 = v20;
  sub_1D7259A7C();

  v21 = *(v6 + 8);
  v22 = v5;
  v21(v9, v5);
  v23 = v41 + *(v11 + 20);
  result = type metadata accessor for FeedHeadline(0);
  v25 = (v23 + *(result + 40));
  if (v25[1] != 1 || *v25 <= 1u)
  {
    v26 = v38;
    v44 = v38;
    v27 = swift_allocObject();
    *(v27 + 16) = 0x4010000000000000;
    *v9 = v27;
    v37(v9, *MEMORY[0x1E69D7480], v5);
    sub_1D7259A9C();
    v21(v9, v5);
    v44 = v26;
    swift_getKeyPath();
    v28 = v12[3];
    v29 = v12[4];
    __swift_project_boxed_opaque_existential_1(v12, v28);
    (*(v29 + 24))(v28, v29);
    sub_1D5BEB9A0();
    sub_1D725A51C();
    sub_1D5BEADA4();
    sub_1D5BEAC54(0, &qword_1EDF3C0C8, MEMORY[0x1E69D70D8]);
    v31 = v30;
    v32 = *(v30 - 8);
    v33 = (*(v32 + 80) + 32) & ~*(v32 + 80);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1D7273AE0;
    v35 = *MEMORY[0x1E69D7070];
    sub_1D5BEAC54(0, &qword_1EDF3C0F0, MEMORY[0x1E69D7078]);
    (*(*(v36 - 8) + 104))(v34 + v33, v35, v36);
    (*(v32 + 104))(v34 + v33, *MEMORY[0x1E69D7080], v31);
    sub_1D7259A7C();

    return (v21)(v9, v22);
  }

  return result;
}

uint64_t sub_1D5C38C80(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  sub_1D5BEAC54(0, &qword_1EDF3BF00, MEMORY[0x1E69D74B0]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = (&v21 - v12);
  if ([*(a2 + *(type metadata accessor for HeadlineViewLayout.Context(0) + 20) + 40) hasThumbnail] && (*a3 & 2) == 0)
  {
    v22 = a1;
    v14 = swift_allocObject();
    *(v14 + 16) = 0x401C000000000000;
    *v13 = v14;
    (*(v10 + 104))(v13, *MEMORY[0x1E69D7488], v9);
    v15 = MEMORY[0x1E69D6F38];
    sub_1D5C203B4(0, &qword_1EDF3C1C8, MEMORY[0x1E69D6F38]);
    sub_1D5BEAD60(&qword_1EDF3C1D0, &qword_1EDF3C1C8, v15);
    sub_1D7259A9C();
    (*(v10 + 8))(v13, v9);
  }

  v22 = a1;
  v16 = (*(v10 + 104))(v13, *MEMORY[0x1E69D7460], v9);
  MEMORY[0x1EEE9AC00](v16, v17);
  *(&v21 - 4) = a4;
  *(&v21 - 3) = a2;
  v18 = MEMORY[0x1E69D6F38];
  sub_1D5C203B4(0, &qword_1EDF3C1C8, MEMORY[0x1E69D6F38]);
  v20 = sub_1D5BEAD60(&qword_1EDF3C1D0, &qword_1EDF3C1C8, v18);
  sub_1D7259A2C();
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1D5C38FD8(uint64_t a1)
{
  sub_1D5B67740(0, &qword_1EDF36568, &qword_1EDF36570, &protocol descriptor for FeedAdGroupDataProviding, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5C39060(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  sub_1D5B74328(v3);
}

uint64_t sub_1D5C390A4()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D725967C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B46578();
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6D08], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  result = sub_1D725983C();
  qword_1EDF3C300 = result;
  return result;
}

uint64_t sub_1D5C39250(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 3)
  {
  }

  return result;
}

void sub_1D5C39268(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D725CEFC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D5C392BC(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a2;
  swift_unknownObjectWeakAssign();

  return sub_1D5C3D678();
}

BOOL OfflineManager.isOffline.getter()
{
  OfflineManager.state.getter(&v2);
  v0 = v3 != 0;
  sub_1D5C39354(v2, v3);
  return v0;
}

uint64_t sub_1D5C39354(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t PaidBundleConfigManager.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_1D5C39440()
{
  result = qword_1EDF37E48;
  if (!qword_1EDF37E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF37E48);
  }

  return result;
}

unint64_t sub_1D5C39498()
{
  result = qword_1EDF37E40;
  if (!qword_1EDF37E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF37E40);
  }

  return result;
}

uint64_t sub_1D5C394EC()
{
  sub_1D5B73960();
  swift_allocObject();
  return sub_1D725BB1C();
}

uint64_t sub_1D5C39528()
{
  v1 = *(v0 + OBJC_IVAR____TtC8NewsFeed39PuzzleNotificationAutoEnableStartupTask_featureAvailability + 24);
  v2 = *(v0 + OBJC_IVAR____TtC8NewsFeed39PuzzleNotificationAutoEnableStartupTask_featureAvailability + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC8NewsFeed39PuzzleNotificationAutoEnableStartupTask_featureAvailability), v1);
  v3 = (*(v2 + 136))(v1, v2);
  if (v3)
  {
    MEMORY[0x1EEE9AC00](v3, v4);
    sub_1D5C397D8(0, &qword_1EDF3B8E0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D725BBAC();
  }

  else
  {
    if (qword_1EDF3B838 != -1)
    {
      swift_once();
    }

    v6 = sub_1D725C42C();
    __swift_project_value_buffer(v6, qword_1EDFFCFA8);
    v7 = sub_1D725C3FC();
    v8 = sub_1D7262EDC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1D5B42000, v7, v8, "PuzzleNotificationAutoEnableStartupTask did not run due to puzzles feature disabled.", v9, 2u);
      MEMORY[0x1DA6FD500](v9, -1, -1);
    }

    sub_1D5C397D8(0, &qword_1EDF3B8E0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D725BB1C();
  }
}

void sub_1D5C3973C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D5C3978C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1D725BC0C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1D5C397D8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D5C39828(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1D5C3988C()
{
  sub_1D725AC4C();

  sub_1D725AC3C();
}