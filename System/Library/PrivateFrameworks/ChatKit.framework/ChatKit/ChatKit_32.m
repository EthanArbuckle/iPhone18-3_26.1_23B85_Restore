uint64_t sub_190AD687C()
{
  v1 = *(v0 + 96);
  v2 = OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_modernScreenSharingCapabilities;
  *(v0 + 168) = OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_modernScreenSharingCapabilities;
  if (*(*(v1 + v2) + 16))
  {

    v3 = *(v0 + 136);
    v4 = objc_opt_self();
    sub_190D52690();
    v5 = sub_190D56D60();

    *(v0 + 184) = [v4 isModernScreenSharingAvailableForEntity:v3 capabilities:v5];

    v6 = *(v0 + 120);
    v7 = *(v0 + 128);

    return MEMORY[0x1EEE6DFA0](sub_190AD6BE8, v6, v7);
  }

  else
  {
    v8 = swift_task_alloc();
    *(v0 + 176) = v8;
    *v8 = v0;
    v8[1] = sub_190AD69E8;

    return sub_190BE6CC8();
  }
}

uint64_t sub_190AD69E8()
{
  v1 = *v0;

  v2 = *(v1 + 160);
  v3 = *(v1 + 152);

  return MEMORY[0x1EEE6DFA0](sub_190AD6B08, v3, v2);
}

uint64_t sub_190AD6B08()
{

  v1 = *(v0 + 136);
  v2 = objc_opt_self();
  sub_190D52690();
  v3 = sub_190D56D60();

  *(v0 + 184) = [v2 isModernScreenSharingAvailableForEntity:v1 capabilities:v3];

  v4 = *(v0 + 120);
  v5 = *(v0 + 128);

  return MEMORY[0x1EEE6DFA0](sub_190AD6BE8, v4, v5);
}

uint64_t sub_190AD6BE8()
{
  v1 = *(v0 + 136);

  v2 = *(v0 + 184);
  v3 = *(v0 + 8);

  return v3(v2);
}

id sub_190AD6C54(id *a1)
{
  result = [*a1 defaultIMHandle];
  if (result)
  {
    v2 = result;
    v3 = [result ID];

    v4 = sub_190D56F10();
    v6 = v5;

    if (v4 == sub_190D528D0() && v6 == v7)
    {
      v9 = 1;
    }

    else
    {
      v9 = sub_190D58760();
    }

    return (v9 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_190AD6D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_conversation);
  v7 = sub_190D528D0();
  v9 = v8;
  sub_190D52690();
  sub_190A0BE18(v7, v9, a4);
}

uint64_t sub_190AD6E0C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_19082CAEC;

  return DetailsViewCoordinator.isScreenSharingAvailable(for:)(a1);
}

uint64_t sub_190AD6ED4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53AE8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_190D51440();
  v3 = *(v12[0] - 8);
  MEMORY[0x1EEE9AC00](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_190D519C0();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_190D56EC0();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_190D51460();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = sub_190D50CF0();
  __swift_allocate_value_buffer(v10, qword_1EAD9DEF0);
  __swift_project_value_buffer(v10, qword_1EAD9DEF0);
  sub_190D56E50();
  sub_190D51980();
  (*(v3 + 104))(v5, *MEMORY[0x1E6968DF0], v12[0]);
  sub_190D51470();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_190D50CE0();
}

uint64_t sub_190AD71B8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55080);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v137 = &v118 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53AE8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v125 = &v118 - v3;
  v4 = sub_190D519C0();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v135 = &v118 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_190D51440();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v118 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_190D56EC0();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_190D51460();
  v136 = v13;
  v138 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v118 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CFC0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53950);
  v132 = v16;
  v17 = *(v16 - 8);
  v128 = *(v17 + 72);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = swift_allocObject();
  v121 = v19;
  *(v19 + 16) = xmmword_190DF02F0;
  v122 = *(v16 + 48);
  *(v19 + v18) = 0;
  v20 = v19 + v18;
  sub_190D56E50();
  v131 = sub_190ADD800();
  *v9 = v131;
  v21 = *MEMORY[0x1E6968E00];
  v22 = *(v7 + 104);
  v129 = v6;
  v130 = v22;
  v126 = v21;
  v22(v9, v21, v6);
  sub_190D51980();
  sub_190D51470();
  v23 = *(v138 + 56);
  v138 += 56;
  v133 = v23;
  v23(v125, 1, 1, v13);
  sub_190D50B30();
  v134 = v20;
  sub_190D50B70();
  v24 = v128;
  v25 = (v20 + v128);
  v26 = v132;
  v122 = *(v132 + 48);
  *v25 = 1;
  v124 = v12;
  sub_190D56E50();
  *v9 = v131;
  v27 = v6;
  v127 = v7 + 104;
  v28 = v130;
  v130(v9, v21, v27);
  sub_190D51980();
  sub_190D51470();
  v29 = v125;
  v133(v125, 1, 1, v136);
  sub_190D50B30();
  v30 = v15;
  sub_190D50B70();
  v122 = 2 * v24;
  v31 = v134;
  v120 = *(v26 + 48);
  *(v134 + 2 * v24) = 2;
  sub_190D56E50();
  *v9 = v131;
  v28(v9, v126, v129);
  sub_190D51980();
  sub_190D51470();
  v32 = v136;
  v133(v29, 1, 1, v136);
  sub_190D50B30();
  sub_190D50B70();
  v33 = v128;
  v120 = v31 + v122 + v128;
  v34 = v132;
  v122 = *(v132 + 48);
  *v120 = 3;
  sub_190D56E50();
  v35 = v130;
  *v9 = v131;
  v35(v9, v126, v129);
  sub_190D51980();
  sub_190D51470();
  v36 = v125;
  v133(v125, 1, 1, v32);
  sub_190D50B30();
  sub_190D50B70();
  v122 = 4 * v33;
  v120 = *(v34 + 48);
  *(v134 + 4 * v33) = 4;
  sub_190D56E50();
  *v9 = v131;
  v37 = v126;
  v38 = v129;
  v35(v9, v126, v129);
  sub_190D51980();
  sub_190D51470();
  v133(v36, 1, 1, v136);
  sub_190D50B30();
  sub_190D50B70();
  v39 = v134;
  v40 = (v134 + v122 + v128);
  v122 = *(v132 + 48);
  *v40 = 5;
  v120 = "RECENTLY_DELETED";
  sub_190D56E50();
  v41 = v130;
  *v9 = v131;
  v41(v9, v37, v38);
  sub_190D51980();
  v123 = v30;
  sub_190D51470();
  v42 = v36;
  v43 = v136;
  v133(v42, 1, 1, v136);
  sub_190D50B30();
  sub_190D50B70();
  v122 = *(v132 + 48);
  *(v39 + 6 * v128) = 6;
  sub_190D56E50();
  v44 = v130;
  *v9 = v131;
  v45 = v126;
  v44(v9, v126, v129);
  sub_190D51980();
  sub_190D51470();
  v46 = v125;
  v133(v125, 1, 1, v43);
  sub_190D50B30();
  sub_190D50B70();
  v122 = 8 * v128;
  v47 = v134;
  v118 = (v134 + 7 * v128);
  v48 = v132;
  v119 = *(v132 + 48);
  *v118 = 7;
  sub_190D56E50();
  v49 = v130;
  v50 = v131;
  *v9 = v131;
  v51 = v45;
  v52 = v129;
  v49(v9, v51, v129);
  sub_190D51980();
  sub_190D51470();
  v133(v46, 1, 1, v136);
  sub_190D50B30();
  sub_190D50B70();
  v119 = *(v48 + 48);
  *(v47 + v122) = 8;
  sub_190D56E50();
  *v9 = v50;
  v53 = v126;
  v54 = v130;
  v130(v9, v126, v52);
  sub_190D51980();
  sub_190D51470();
  v55 = v133;
  v133(v46, 1, 1, v136);
  sub_190D50B30();
  sub_190D50B70();
  v56 = v134;
  v120 = v134 + v122 + v128;
  v122 = *(v132 + 48);
  *v120 = 9;
  sub_190D56E50();
  v57 = v131;
  *v9 = v131;
  v54(v9, v53, v129);
  sub_190D51980();
  sub_190D51470();
  v55(v46, 1, 1, v136);
  sub_190D50B30();
  sub_190D50B70();
  v58 = v128;
  v122 = *(v132 + 48);
  *(v56 + 10 * v128) = 10;
  sub_190D56E50();
  *v9 = v57;
  v59 = v126;
  v60 = v130;
  v130(v9, v126, v129);
  sub_190D51980();
  sub_190D51470();
  v133(v46, 1, 1, v136);
  sub_190D50B30();
  sub_190D50B70();
  v120 = v134 + 11 * v58;
  v122 = *(v132 + 48);
  *v120 = 11;
  sub_190D56E50();
  v61 = v131;
  *v9 = v131;
  v60(v9, v59, v129);
  sub_190D51980();
  sub_190D51470();
  v62 = v46;
  v63 = v133;
  v133(v46, 1, 1, v136);
  sub_190D50B30();
  sub_190D50B70();
  v64 = v128;
  v120 = v134 + 12 * v128;
  v122 = *(v132 + 48);
  *v120 = 12;
  sub_190D56E50();
  *v9 = v61;
  v65 = v130;
  v130(v9, v126, v129);
  sub_190D51980();
  sub_190D51470();
  v63(v62, 1, 1, v136);
  sub_190D50B30();
  sub_190D50B70();
  v120 = v134 + 13 * v64;
  v66 = v132;
  v122 = *(v132 + 48);
  *v120 = 13;
  sub_190D56E50();
  v67 = v131;
  *v9 = v131;
  v68 = v126;
  v69 = v129;
  v65(v9, v126, v129);
  sub_190D51980();
  sub_190D51470();
  v70 = v133;
  v133(v62, 1, 1, v136);
  sub_190D50B30();
  sub_190D50B70();
  v122 = *(v66 + 48);
  *(v134 + 14 * v128) = 14;
  sub_190D56E50();
  *v9 = v67;
  v71 = v69;
  v72 = v130;
  v130(v9, v68, v71);
  sub_190D51980();
  sub_190D51470();
  v73 = v62;
  v74 = v62;
  v75 = v136;
  v70(v74, 1, 1, v136);
  sub_190D50B30();
  v76 = v73;
  sub_190D50B70();
  v122 = 16 * v128;
  v119 = v134 + 15 * v128;
  v77 = v132;
  v120 = *(v132 + 48);
  *v119 = 15;
  sub_190D56E50();
  *v9 = v131;
  v78 = v126;
  v79 = v129;
  v72(v9, v126, v129);
  sub_190D51980();
  sub_190D51470();
  v80 = v133;
  v133(v76, 1, 1, v75);
  sub_190D50B30();
  sub_190D50B70();
  v119 = v134 + v122;
  v120 = *(v77 + 48);
  *v119 = 16;
  sub_190D56E50();
  v82 = v130;
  v81 = v131;
  *v9 = v131;
  v82(v9, v78, v79);
  sub_190D51980();
  sub_190D51470();
  v83 = v136;
  v80(v125, 1, 1, v136);
  sub_190D50B30();
  sub_190D50B70();
  v120 = v134 + v122 + v128;
  v122 = *(v132 + 48);
  *v120 = 17;
  sub_190D56E50();
  *v9 = v81;
  v84 = v126;
  v82(v9, v126, v79);
  sub_190D51980();
  sub_190D51470();
  v85 = v133;
  v133(v125, 1, 1, v83);
  sub_190D50B30();
  sub_190D50B70();
  v86 = v128;
  v120 = v134 + 18 * v128;
  v122 = *(v132 + 48);
  *v120 = 18;
  sub_190D56E50();
  v87 = v130;
  *v9 = v131;
  v87(v9, v84, v79);
  sub_190D51980();
  sub_190D51470();
  v88 = v125;
  v85(v125, 1, 1, v83);
  sub_190D50B30();
  sub_190D50B70();
  v89 = v134;
  v120 = v134 + 19 * v86;
  v122 = *(v132 + 48);
  *v120 = 19;
  sub_190D56E50();
  v91 = v130;
  v90 = v131;
  *v9 = v131;
  v91(v9, v126, v129);
  sub_190D51980();
  sub_190D51470();
  v92 = v136;
  v93 = v133;
  v133(v88, 1, 1, v136);
  sub_190D50B30();
  sub_190D50B70();
  v94 = v132;
  v122 = *(v132 + 48);
  *(v89 + 20 * v128) = 20;
  sub_190D56E50();
  *v9 = v90;
  v95 = v126;
  v91(v9, v126, v129);
  sub_190D51980();
  sub_190D51470();
  v96 = v125;
  v93(v125, 1, 1, v92);
  sub_190D50B30();
  v97 = v96;
  sub_190D50B70();
  v98 = v128;
  v99 = v134;
  v120 = v134 + 21 * v128;
  v122 = *(v94 + 48);
  *v120 = 21;
  sub_190D56E50();
  v100 = v130;
  v101 = v131;
  *v9 = v131;
  v102 = v95;
  v103 = v129;
  v100(v9, v102, v129);
  sub_190D51980();
  sub_190D51470();
  v133(v97, 1, 1, v136);
  sub_190D50B30();
  sub_190D50B70();
  v122 = *(v132 + 48);
  *(v99 + 22 * v98) = 22;
  sub_190D56E50();
  *v9 = v101;
  v104 = v126;
  v130(v9, v126, v103);
  sub_190D51980();
  sub_190D51470();
  v105 = v133;
  v133(v97, 1, 1, v136);
  sub_190D50B30();
  sub_190D50B70();
  v106 = v128;
  v120 = v134 + 23 * v128;
  v107 = v132;
  v122 = *(v132 + 48);
  *v120 = 23;
  sub_190D56E50();
  v108 = v130;
  v109 = v131;
  *v9 = v131;
  v108(v9, v104, v129);
  sub_190D51980();
  sub_190D51470();
  v105(v97, 1, 1, v136);
  sub_190D50B30();
  sub_190D50B70();
  v110 = v134;
  v122 = *(v107 + 48);
  *(v134 + 24 * v106) = 24;
  sub_190D56E50();
  *v9 = v109;
  v111 = v129;
  v130(v9, v126, v129);
  sub_190D51980();
  sub_190D51470();
  v112 = v125;
  v133(v125, 1, 1, v136);
  sub_190D50B30();
  v113 = v112;
  sub_190D50B70();
  v114 = (v110 + 25 * v128);
  v128 = *(v132 + 48);
  *v114 = 25;
  sub_190D56E50();
  v115 = v130;
  *v9 = v131;
  v115(v9, v126, v111);
  sub_190D51980();
  sub_190D51470();
  v133(v113, 1, 1, v136);
  sub_190D50B30();
  sub_190D50B70();
  v116 = sub_1908232DC(v121);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_1EAD9DF08 = v116;
  return result;
}

unint64_t sub_190AD9174()
{
  result = qword_1EAD45490;
  if (!qword_1EAD45490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45490);
  }

  return result;
}

uint64_t sub_190AD91C8()
{
  v1 = *v0;
  sub_190D58870();
  MEMORY[0x193AF4110](v1 + 1);
  return sub_190D588C0();
}

uint64_t sub_190AD9240()
{
  v1 = *v0;
  sub_190D58870();
  MEMORY[0x193AF4110](v1 + 1);
  return sub_190D588C0();
}

uint64_t sub_190AD9284@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_190ADD960(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_190AD92C4()
{
  result = qword_1EAD454D0;
  if (!qword_1EAD454D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD454D0);
  }

  return result;
}

unint64_t sub_190AD931C()
{
  result = qword_1EAD454A8;
  if (!qword_1EAD454A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD454A8);
  }

  return result;
}

unint64_t sub_190AD9374()
{
  result = qword_1EAD45488;
  if (!qword_1EAD45488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45488);
  }

  return result;
}

unint64_t sub_190AD93D8()
{
  result = qword_1EAD454B8;
  if (!qword_1EAD454B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD454B8);
  }

  return result;
}

unint64_t sub_190AD942C()
{
  result = qword_1EAD454B0;
  if (!qword_1EAD454B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD454B0);
  }

  return result;
}

unint64_t sub_190AD9484()
{
  result = qword_1EAD454C0;
  if (!qword_1EAD454C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD454C0);
  }

  return result;
}

unint64_t sub_190AD953C()
{
  result = qword_1EAD5CF38;
  if (!qword_1EAD5CF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5CF38);
  }

  return result;
}

uint64_t sub_190AD9590(uint64_t a1)
{
  v2 = sub_190AD953C();

  return MEMORY[0x1EEDB2C20](a1, v2);
}

unint64_t sub_190AD95E0()
{
  result = qword_1EAD454A0;
  if (!qword_1EAD454A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD454A0);
  }

  return result;
}

unint64_t sub_190AD9638()
{
  result = qword_1EAD45480;
  if (!qword_1EAD45480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45480);
  }

  return result;
}

unint64_t sub_190AD9690()
{
  result = qword_1EAD45498;
  if (!qword_1EAD45498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45498);
  }

  return result;
}

uint64_t sub_190AD96E4()
{
  if (qword_1EAD51C28 != -1)
  {
    swift_once();
  }

  return sub_190D52690();
}

uint64_t sub_190AD9740(uint64_t a1)
{
  v2 = sub_190AD9484();

  return MEMORY[0x1EEDB3D68](a1, v2);
}

unint64_t sub_190AD97E4()
{
  result = qword_1EAD5CF50;
  if (!qword_1EAD5CF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5CF50);
  }

  return result;
}

uint64_t sub_190AD987C()
{
  v0 = sub_190D51440();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_190D519C0();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_190D56EC0();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_190D51460();
  __swift_allocate_value_buffer(v6, qword_1EAD9DF10);
  __swift_project_value_buffer(v6, qword_1EAD9DF10);
  sub_190D56E50();
  sub_190D51980();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_190D51470();
}

uint64_t sub_190AD9A70(uint64_t a1)
{
  v1[14] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53AE8);
  v1[15] = swift_task_alloc();
  sub_190D519C0();
  v1[16] = swift_task_alloc();
  v2 = sub_190D51440();
  v1[17] = v2;
  v1[18] = *(v2 - 8);
  v1[19] = swift_task_alloc();
  sub_190D56EC0();
  v1[20] = swift_task_alloc();
  v3 = sub_190D51460();
  v1[21] = v3;
  v1[22] = *(v3 - 8);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CFB0);
  v1[25] = v4;
  v1[26] = *(v4 - 8);
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_190AD9CC8, 0, 0);
}

uint64_t sub_190AD9CC8()
{
  v1 = [objc_opt_self() sharedFeatureFlags];
  v2 = [v1 isModernFilteringEnabled];

  if (!v2)
  {
    v0[11] = &unk_1F0403098;
    if (CKMessageUnknownFilteringEnabled())
    {
      sub_190CAA4FC(&unk_1F04030C0);
    }

    if (CKMessageSpamFilteringEnabled())
    {
      sub_190CAA4FC(&unk_1F04030E8);
    }

    else if (IMIsOscarEnabled())
    {
      v0[29] = objc_opt_self();
      v0[30] = sub_190D572A0();
      v0[31] = sub_190D57290();
      v32 = sub_190D57240();
      v34 = sub_190ADA658;
LABEL_42:

      return MEMORY[0x1EEE6DFA0](v34, v32, v33);
    }

    v0[35] = objc_opt_self();
    v0[36] = sub_190D572A0();
    v0[37] = sub_190D57290();
    v32 = sub_190D57240();
    v34 = sub_190ADAA3C;
    goto LABEL_42;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_190DD1D90;
  *(inited + 32) = sub_190D57AA0();
  if (CKMessageUnknownFilteringEnabled())
  {
    inited = sub_190835CF0(1, 2, 1, inited);
    *(inited + 16) = 2;
    *(inited + 40) = 3;
  }

  if (CKMessageSpamFilteringEnabled())
  {
    v5 = *(inited + 16);
    v4 = *(inited + 24);
    v6 = v4 >> 1;
    v7 = v5 + 1;
    if (v4 >> 1 <= v5)
    {
      inited = sub_190835CF0((v4 > 1), v5 + 1, 1, inited);
      v4 = *(inited + 24);
      v6 = v4 >> 1;
    }

    *(inited + 16) = v7;
    *(inited + 8 * v5 + 32) = 4;
    v8 = v5 + 2;
    if (v6 < v8)
    {
      inited = sub_190835CF0((v4 > 1), v8, 1, inited);
    }

    *(inited + 16) = v8;
    *(inited + 8 * v7 + 32) = 5;
  }

  v10 = *(inited + 16);
  v9 = *(inited + 24);
  v11 = v9 >> 1;
  v12 = v10 + 1;
  if (v9 >> 1 <= v10)
  {
    inited = sub_190835CF0((v9 > 1), v10 + 1, 1, inited);
    v9 = *(inited + 24);
    v11 = v9 >> 1;
  }

  *(inited + 16) = v12;
  *(inited + 8 * v10 + 32) = 9;
  v13 = v10 + 2;
  if (v11 < v13)
  {
    inited = sub_190835CF0((v9 > 1), v13, 1, inited);
  }

  *(inited + 16) = v13;
  v14 = (inited + 32);
  *(inited + 32 + 8 * v12) = 7;
  v55 = sub_190D57A90();
  v15 = *(inited + 16);
  if (v15)
  {
    v16 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v18 = *v14++;
      v17 = v18;
      v19 = v18 - 1;
      if ((v18 - 1) >= 0x1A || ((0x3FFF3FFu >> v19) & 1) == 0)
      {
        break;
      }

      v20 = byte_190DF0A16[v19];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_1908368AC(0, *(v16 + 2) + 1, 1, v16);
      }

      v22 = *(v16 + 2);
      v21 = *(v16 + 3);
      if (v22 >= v21 >> 1)
      {
        v16 = sub_1908368AC((v21 > 1), v22 + 1, 1, v16);
      }

      *(v16 + 2) = v22 + 1;
      v16[v22 + 32] = v20;
      if (!--v15)
      {
        goto LABEL_29;
      }
    }

    sub_190D582B0();
    v0[8] = 0xE000000000000000;
    v0[7] = 0;
    MEMORY[0x193AF28B0](0x20676E697373694DLL, 0xE800000000000000);
    MEMORY[0x193AF28B0](0xD000000000000010, 0x8000000190E71EC0);
    MEMORY[0x193AF28B0](0x20726F6620, 0xE500000000000000);
    v0[12] = v17;
    type metadata accessor for IMConversationListFilterMode(0);
    goto LABEL_46;
  }

LABEL_29:
  v23 = *(v55 + 16);
  if (v23)
  {
    v24 = (v55 + 32);
    v25 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v27 = *v24++;
      v26 = v27;
      v28 = v27 - 1;
      if ((v27 - 1) >= 0x1A || ((0x3FFF3FFu >> v28) & 1) == 0)
      {
        break;
      }

      v29 = byte_190DF0A16[v28];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_1908368AC(0, *(v25 + 2) + 1, 1, v25);
      }

      v31 = *(v25 + 2);
      v30 = *(v25 + 3);
      if (v31 >= v30 >> 1)
      {
        v25 = sub_1908368AC((v30 > 1), v31 + 1, 1, v25);
      }

      *(v25 + 2) = v31 + 1;
      v25[v31 + 32] = v29;
      if (!--v23)
      {
        goto LABEL_47;
      }
    }

    sub_190D582B0();
    v0[10] = 0xE000000000000000;
    v0[9] = 0;
    MEMORY[0x193AF28B0](0x20676E697373694DLL, 0xE800000000000000);
    MEMORY[0x193AF28B0](0xD000000000000010, 0x8000000190E71EC0);
    MEMORY[0x193AF28B0](0x20726F6620, 0xE500000000000000);
    v0[13] = v26;
    type metadata accessor for IMConversationListFilterMode(0);
LABEL_46:
    sub_190D58450();
    return sub_190D58510();
  }

LABEL_47:

  v35 = v0[26];
  v50 = v0[28];
  v51 = v0[25];
  v36 = v0[24];
  v52 = v0[22];
  v53 = v0[27];
  v48 = v0[23];
  v49 = v0[21];
  v37 = v0[19];
  v38 = v0[18];
  v47 = v0[17];
  v54 = v0[15];

  sub_190D51430();
  sub_1909D5154();
  sub_190D50A90();
  sub_190D56E50();
  *v37 = sub_190ADD800();
  (*(v38 + 104))(v37, *MEMORY[0x1E6968E00], v47);
  sub_190D51980();
  sub_190D51470();
  (*(v52 + 16))(v48, v36, v49);
  sub_190D50A90();
  (*(v52 + 56))(v54, 1, 1, v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CFB8);
  v39 = *(v35 + 72);
  v40 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_190DD1DA0;
  v42 = v41 + v40;
  v43 = *(v35 + 16);
  v43(v42, v50, v51);
  v43(v42 + v39, v53, v51);
  sub_190D50AC0();
  v44 = *(v35 + 8);
  v44(v53, v51);
  (*(v52 + 8))(v36, v49);
  v44(v50, v51);

  v45 = v0[1];

  return v45();
}

uint64_t sub_190ADA658()
{
  v1 = *(v0 + 232);

  *(v0 + 256) = [v1 sharedConversationList];

  return MEMORY[0x1EEE6DFA0](sub_190ADA70C, 0, 0);
}

uint64_t sub_190ADA70C()
{
  *(v0 + 264) = sub_190D57290();
  v2 = sub_190D57240();

  return MEMORY[0x1EEE6DFA0](sub_190ADA7CC, v2, v1);
}

uint64_t sub_190ADA7CC()
{
  v1 = *(v0 + 256);

  *(v0 + 272) = [v1 conversationsForFilterMode_];

  return MEMORY[0x1EEE6DFA0](sub_190ADA884, 0, 0);
}

uint64_t sub_190ADA884()
{
  v1 = v0[34];
  sub_190ADD800();
  v2 = sub_190D57180();

  if (CKMessageUnknownFilteringEnabled())
  {
  }

  else
  {
    if (v2 >> 62)
    {
      v3 = sub_190D581C0();
    }

    else
    {
      v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v3)
    {
      goto LABEL_11;
    }
  }

  v4 = v0[11];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1908368AC(0, *(v4 + 2) + 1, 1, v4);
  }

  v6 = *(v4 + 2);
  v5 = *(v4 + 3);
  if (v6 >= v5 >> 1)
  {
    v4 = sub_1908368AC((v5 > 1), v6 + 1, 1, v4);
  }

  *(v4 + 2) = v6 + 1;
  v4[v6 + 32] = 8;
  v0[11] = v4;
LABEL_11:
  v0[35] = objc_opt_self();
  v0[36] = sub_190D572A0();
  v0[37] = sub_190D57290();
  v8 = sub_190D57240();

  return MEMORY[0x1EEE6DFA0](sub_190ADAA3C, v8, v7);
}

uint64_t sub_190ADAA3C()
{
  v1 = *(v0 + 280);

  *(v0 + 304) = [v1 sharedConversationList];

  return MEMORY[0x1EEE6DFA0](sub_190ADAAF0, 0, 0);
}

uint64_t sub_190ADAAF0()
{
  *(v0 + 312) = sub_190D57290();
  v2 = sub_190D57240();

  return MEMORY[0x1EEE6DFA0](sub_190ADABB0, v2, v1);
}

uint64_t sub_190ADABB0()
{
  v1 = *(v0 + 304);

  *(v0 + 320) = [v1 conversationsForFilterMode_];

  return MEMORY[0x1EEE6DFA0](sub_190ADAC68, 0, 0);
}

uint64_t sub_190ADAC68()
{
  v1 = v0[40];
  sub_190ADD800();
  v2 = sub_190D57180();

  if (CKMessageUnknownFilteringEnabled())
  {

    v3 = v0[11];
  }

  else
  {
    if (v2 >> 62)
    {
      v4 = sub_190D581C0();
    }

    else
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v3 = v0[11];
    if (!v4)
    {
      goto LABEL_11;
    }
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1908368AC(0, *(v3 + 2) + 1, 1, v3);
  }

  v6 = *(v3 + 2);
  v5 = *(v3 + 3);
  if (v6 >= v5 >> 1)
  {
    v3 = sub_1908368AC((v5 > 1), v6 + 1, 1, v3);
  }

  *(v3 + 2) = v6 + 1;
  v3[v6 + 32] = 6;
LABEL_11:
  v7 = v0[28];
  v8 = v0[25];
  v9 = v0[26];
  v11 = v0[21];
  v10 = v0[22];
  v12 = v0[15];
  sub_190D51430();
  sub_1909D5154();
  sub_190D50A90();
  (*(v10 + 56))(v12, 1, 1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CFB8);
  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_190DD1D90;
  (*(v9 + 16))(v14 + v13, v7, v8);
  sub_190D50AC0();
  (*(v9 + 8))(v7, v8);

  v15 = v0[1];

  return v15();
}

uint64_t sub_190ADAF3C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_190221DA0;

  return sub_190AD9A70(a1);
}

unint64_t sub_190ADAFD8()
{
  result = qword_1EAD459F0;
  if (!qword_1EAD459F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD459F0);
  }

  return result;
}

unint64_t sub_190ADB030()
{
  result = qword_1EAD45A00;
  if (!qword_1EAD45A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45A00);
  }

  return result;
}

uint64_t sub_190ADB0BC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD557E8);
  v2[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_190ADB158, 0, 0);
}

uint64_t sub_190ADB158()
{
  v38 = v0;
  if (qword_1EAD45C50 != -1)
  {
    swift_once();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 40) = Strong;
  if (Strong)
  {
    v2 = [objc_opt_self() sharedFeatureFlags];
    v3 = [v2 isModernFilteringEnabled];

    if (v3)
    {
      sub_190D50810();
      *(v0 + 193) = *(v0 + 192);
      sub_190D572A0();
      *(v0 + 48) = sub_190D57290();
      v4 = sub_190D57240();
      v6 = v5;
      v7 = sub_190ADB8DC;
LABEL_21:

      return MEMORY[0x1EEE6DFA0](v7, v4, v6);
    }

    sub_190D50810();
    *(v0 + 194) = *(v0 + 184);
    if (CKMessageUnknownFilteringEnabled() || (sub_190D50810(), !*(v0 + 189)) || (sub_190D50810(), *(v0 + 190) == 6))
    {
      v13 = 0;
    }

    else
    {
      sub_190D50810();
      v13 = *(v0 + 191) != 8;
    }

    sub_190D50810();
    v14 = sub_190A5E14C(*(v0 + 185), &unk_1F0403110) && CKMessageSpamFilteringEnabled() == 0;
    sub_190D50810();
    if (*(v0 + 186) == 8)
    {
      v15 = IMIsOscarEnabled();
      if (!v13 && !v14 && v15)
      {
LABEL_19:
        if (CKMessageUnknownFilteringEnabled())
        {
          sub_190D572A0();
          *(v0 + 56) = sub_190D57290();
          v4 = sub_190D57240();
          v6 = v16;
          v7 = sub_190ADB98C;
          goto LABEL_21;
        }

        sub_190D50810();
        v20 = *(v0 + 187);
        if (v20 > 5)
        {
          switch(v20)
          {
            case 6u:
              *(v0 + 72) = objc_opt_self();
              *(v0 + 80) = sub_190D572A0();
              *(v0 + 88) = sub_190D57290();
              v4 = sub_190D57240();
              v6 = v27;
              v7 = sub_190ADBAF0;
              goto LABEL_21;
            case 7u:
              goto LABEL_35;
            case 8u:
              *(v0 + 128) = objc_opt_self();
              *(v0 + 136) = sub_190D572A0();
              *(v0 + 144) = sub_190D57290();
              v4 = sub_190D57240();
              v6 = v25;
              v7 = sub_190ADBF3C;
              goto LABEL_21;
          }
        }

        else
        {
          if (v20 - 1 < 5)
          {
LABEL_35:
            if (qword_1EAD46290 != -1)
            {
              swift_once();
            }

            v21 = sub_190D53040();
            __swift_project_value_buffer(v21, qword_1EAD9D7D8);
            v22 = sub_190D53020();
            v23 = sub_190D576C0();
            if (os_log_type_enabled(v22, v23))
            {
              v24 = swift_slowAlloc();
              *v24 = 0;
              _os_log_impl(&dword_19020E000, v22, v23, "Filter Unknown Senders disabled, these cases should be unreachable.", v24, 2u);
              MEMORY[0x193AF7A40](v24, -1, -1);
            }

LABEL_40:
            sub_190D506B0();
            swift_unknownObjectRelease();

            v19 = *(v0 + 8);
            goto LABEL_27;
          }

          if (!*(v0 + 187))
          {
            sub_190D572A0();
            *(v0 + 64) = sub_190D57290();
            v4 = sub_190D57240();
            v6 = v26;
            v7 = sub_190ADBA70;
            goto LABEL_21;
          }
        }

        if (qword_1EAD46290 != -1)
        {
          swift_once();
        }

        v28 = sub_190D53040();
        __swift_project_value_buffer(v28, qword_1EAD9D7D8);
        sub_190D50920();
        v29 = sub_190D53020();
        v30 = sub_190D576C0();

        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v37 = v32;
          *v31 = 136315138;
          sub_190D50810();
          v33 = sub_190D56F50();
          v35 = sub_19021D9F8(v33, v34, &v37);

          *(v31 + 4) = v35;
          _os_log_impl(&dword_19020E000, v29, v30, "Filter Unknown Senders disabled, unhandled filter mode passed: %s.", v31, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v32);
          MEMORY[0x193AF7A40](v32, -1, -1);
          MEMORY[0x193AF7A40](v31, -1, -1);
        }

        goto LABEL_40;
      }
    }

    else if (!v13 && !v14)
    {
      goto LABEL_19;
    }

    v17 = *(v0 + 32);
    sub_190D50830();
    v18 = sub_190D50590();
    (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
    sub_190D50460();
    sub_190ADD8A0();
    swift_allocError();
    sub_190D50840();

    sub_190ADD8F8(v17);
    swift_willThrow();
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1EAD46290 != -1)
    {
      swift_once();
    }

    v8 = sub_190D53040();
    __swift_project_value_buffer(v8, qword_1EAD9D7D8);
    v9 = sub_190D53020();
    v10 = sub_190D57680();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_19020E000, v9, v10, "No messages navigator provided, unable to change views.", v11, 2u);
      MEMORY[0x193AF7A40](v11, -1, -1);
    }

    sub_190ADD1E8();
    swift_allocError();
    *v12 = 0;
    swift_willThrow();
  }

  v19 = *(v0 + 8);
LABEL_27:

  return v19();
}

uint64_t sub_190ADB8DC()
{
  v1 = *(v0 + 193);
  v2 = *(v0 + 40);

  sub_190ADC310(v1 + 1, v2);

  return MEMORY[0x1EEE6DFA0](sub_190ADD9E4, 0, 0);
}

uint64_t sub_190ADB98C()
{
  v1 = *(v0 + 194);
  v2 = *(v0 + 40);

  v3 = [v2 conversationListController];
  [v3 setFilterMode_];

  v4 = [v2 conversationListController];
  [v4 updateConversationList];

  [v2 showConversationListWithAnimation_];

  return MEMORY[0x1EEE6DFA0](sub_190ADD9E4, 0, 0);
}

uint64_t sub_190ADBA70()
{
  v1 = *(v0 + 40);

  [v1 showConversationListWithAnimation_];

  return MEMORY[0x1EEE6DFA0](sub_190ADD9E4, 0, 0);
}

uint64_t sub_190ADBAF0()
{
  v1 = *(v0 + 72);

  *(v0 + 96) = [v1 sharedConversationList];

  return MEMORY[0x1EEE6DFA0](sub_190ADBB78, 0, 0);
}

uint64_t sub_190ADBB78()
{
  *(v0 + 104) = sub_190D57290();
  v2 = sub_190D57240();

  return MEMORY[0x1EEE6DFA0](sub_190ADBC04, v2, v1);
}

uint64_t sub_190ADBC04()
{
  v1 = *(v0 + 96);

  *(v0 + 112) = [v1 conversationsForFilterMode_];

  return MEMORY[0x1EEE6DFA0](sub_190ADBC90, 0, 0);
}

uint64_t sub_190ADBC90()
{
  v1 = v0[14];
  sub_190ADD800();
  v2 = sub_190D57180();

  if (v2 >> 62)
  {
    v3 = sub_190D581C0();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3)
  {
    v0[15] = sub_190D57290();
    v5 = sub_190D57240();

    return MEMORY[0x1EEE6DFA0](sub_190ADBDF4, v5, v4);
  }

  else
  {
    sub_190ADD1E8();
    swift_allocError();
    *v6 = 2;
    swift_willThrow();
    swift_unknownObjectRelease();

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_190ADBDF4()
{
  v1 = *(v0 + 40);

  v2 = [v1 conversationListController];
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    [*(v0 + 40) showConversationListWithAnimation_];
    [v4 _showRecentlyDeletedModalActionTapped];
  }

  return MEMORY[0x1EEE6DFA0](sub_190ADBEC4, 0, 0);
}

uint64_t sub_190ADBEC4()
{
  sub_190D506B0();
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_190ADBF3C()
{
  v1 = *(v0 + 128);

  *(v0 + 152) = [v1 sharedConversationList];

  return MEMORY[0x1EEE6DFA0](sub_190ADBFC4, 0, 0);
}

uint64_t sub_190ADBFC4()
{
  *(v0 + 160) = sub_190D57290();
  v2 = sub_190D57240();

  return MEMORY[0x1EEE6DFA0](sub_190ADC050, v2, v1);
}

uint64_t sub_190ADC050()
{
  v1 = *(v0 + 152);

  *(v0 + 168) = [v1 conversationsForFilterMode_];

  return MEMORY[0x1EEE6DFA0](sub_190ADC0DC, 0, 0);
}

uint64_t sub_190ADC0DC()
{
  v1 = v0[21];
  sub_190ADD800();
  v2 = sub_190D57180();

  if (v2 >> 62)
  {
    v3 = sub_190D581C0();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3)
  {
    v0[22] = sub_190D57290();
    v5 = sub_190D57240();

    return MEMORY[0x1EEE6DFA0](sub_190ADC240, v5, v4);
  }

  else
  {
    sub_190ADD1E8();
    swift_allocError();
    *v6 = 1;
    swift_willThrow();
    swift_unknownObjectRelease();

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_190ADC240()
{
  v1 = *(v0 + 40);

  v2 = [v1 conversationListController];
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    [*(v0 + 40) showConversationListWithAnimation_];
    [v4 _showOscarModalActionTapped];
  }

  return MEMORY[0x1EEE6DFA0](sub_190ADD9E4, 0, 0);
}

id sub_190ADC310(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_190DD1D90;
  *(inited + 32) = a1;
  v5 = sub_19021E69C(inited);
  swift_setDeallocating();
  v12 = v5;
  if ((sub_190D57AF0() & 1) == 0)
  {
    v6 = sub_190D57AA0();
    sub_19022C974(&v11, v6);
  }

  v7 = [a2 conversationListController];
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = v8;
    byte_1EAD44F80 = 1;
    +[CKConversationListFilterModeUtilities invalidateEligibleFilterModesCache]_0();
    sub_1908A7E38(v12, 1);

    [v9 updateConversationList];
  }

  else
  {
  }

  return [a2 showConversationListWithAnimation_];
}

uint64_t sub_190ADC4C4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CF98);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CFA0);
  MEMORY[0x1EEE9AC00](v1);
  sub_190D50BE0();
  sub_190D50BD0();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CFA8);
  sub_190D50BC0();

  sub_190D50BD0();
  sub_190D50BF0();
  return sub_190D50BB0();
}

uint64_t sub_190ADC660(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_190221DA4;

  return sub_190ADB0BC(a1, v4);
}

uint64_t sub_190ADC700@<X0>(uint64_t *a1@<X8>)
{
  result = sub_190ADD23C();
  *a1 = result;
  return result;
}

uint64_t sub_190ADC728(uint64_t a1)
{
  v2 = sub_1909D5004();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

unint64_t sub_190ADC768()
{
  result = qword_1EAD456E8;
  if (!qword_1EAD456E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD456E8);
  }

  return result;
}

unint64_t sub_190ADC7C0()
{
  result = qword_1EAD456F8;
  if (!qword_1EAD456F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD456F8);
  }

  return result;
}

unint64_t sub_190ADC8A4()
{
  result = qword_1EAD456F0;
  if (!qword_1EAD456F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD456F0);
  }

  return result;
}

uint64_t sub_190ADC8F8()
{
  v0 = sub_190D51440();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_190D519C0();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_190D56EC0();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_190D51460();
  __swift_allocate_value_buffer(v6, qword_1EAD9DF40);
  __swift_project_value_buffer(v6, qword_1EAD9DF40);
  sub_190D56E50();
  sub_190D51980();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_190D51470();
}

uint64_t sub_190ADCAEC(uint64_t a1, uint64_t *a2)
{
  v3 = sub_190D50D00();
  __swift_allocate_value_buffer(v3, a2);
  v4 = __swift_project_value_buffer(v3, a2);
  v5 = *MEMORY[0x1E695A590];
  v6 = *(*(v3 - 8) + 104);

  return v6(v4, v5, v3);
}

uint64_t sub_190ADCB90()
{
  if (qword_1EAD45C50 != -1)
  {
    swift_once();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v0[3] = Strong;
  if (Strong)
  {
    sub_190D572A0();
    v0[4] = sub_190D57290();
    v3 = sub_190D57240();

    return MEMORY[0x1EEE6DFA0](sub_190ADCD94, v3, v2);
  }

  else
  {
    if (qword_1EAD46290 != -1)
    {
      swift_once();
    }

    v4 = sub_190D53040();
    __swift_project_value_buffer(v4, qword_1EAD9D7D8);
    v5 = sub_190D53020();
    v6 = sub_190D57680();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_19020E000, v5, v6, "No messages navigator provided, unable to change views.", v7, 2u);
      MEMORY[0x193AF7A40](v7, -1, -1);
    }

    sub_190ADD1E8();
    swift_allocError();
    *v8 = 0;
    swift_willThrow();
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_190ADCD94()
{
  v1 = *(v0 + 24);

  [v1 showConversationListWithAnimation_];

  return MEMORY[0x1EEE6DFA0](sub_190ADCE10, 0, 0);
}

uint64_t sub_190ADCE10()
{
  sub_190D506B0();
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_190ADCEEC@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = __swift_project_value_buffer(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_190ADCF94(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_190221DA0;

  return sub_190ADCB70(a1);
}

uint64_t sub_190ADD02C(uint64_t a1)
{
  v2 = sub_190ADC8A4();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t getEnumTagSinglePayload for ConversationListEntityFilterMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE7)
  {
    goto LABEL_17;
  }

  if (a2 + 25 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 25) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 25;
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

      return (*a1 | (v4 << 8)) - 25;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 25;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1A;
  v8 = v6 - 26;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ConversationListEntityFilterMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 25 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 25) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE7)
  {
    v4 = 0;
  }

  if (a2 > 0xE6)
  {
    v5 = ((a2 - 231) >> 8) + 1;
    *result = a2 + 25;
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
    *result = a2 + 25;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_190ADD1E8()
{
  result = qword_1EAD5CF78;
  if (!qword_1EAD5CF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5CF78);
  }

  return result;
}

uint64_t sub_190ADD23C()
{
  v0 = sub_190D50C80();
  v32 = *(v0 - 8);
  v33 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v31 = v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD557E8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v30 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v29 = v25 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53AE8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v34 = v25 - v7;
  v8 = sub_190D51440();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_190D519C0();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = sub_190D56EC0();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v26 = sub_190D51460();
  v14 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v25[1] = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v27 = v25 - v17;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CF80);
  sub_190D56E50();
  sub_190D51980();
  v18 = *MEMORY[0x1E6968DF0];
  v19 = *(v9 + 104);
  v19(v11, v18, v8);
  sub_190D51470();
  sub_190D56E50();
  sub_190D51980();
  v19(v11, v18, v8);
  v20 = v34;
  sub_190D51470();
  (*(v14 + 56))(v20, 0, 1, v26);
  v35 = 26;
  sub_190D56E50();
  *v11 = sub_190ADD800();
  v19(v11, *MEMORY[0x1E6968E00], v8);
  sub_190D51980();
  sub_190D51470();
  v21 = v29;
  sub_190D505A0();
  v22 = sub_190D50590();
  v23 = *(*(v22 - 8) + 56);
  v23(v21, 0, 1, v22);
  v23(v30, 1, 1, v22);
  (*(v32 + 104))(v31, *MEMORY[0x1E695A500], v33);
  sub_190ADD84C();
  sub_190AD953C();
  return sub_190D50860();
}

unint64_t sub_190ADD800()
{
  result = qword_1EAD466B0;
  if (!qword_1EAD466B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAD466B0);
  }

  return result;
}

unint64_t sub_190ADD84C()
{
  result = qword_1EAD5CF88;
  if (!qword_1EAD5CF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5CF88);
  }

  return result;
}

unint64_t sub_190ADD8A0()
{
  result = qword_1EAD5CF90;
  if (!qword_1EAD5CF90)
  {
    sub_190D50460();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5CF90);
  }

  return result;
}

uint64_t sub_190ADD8F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD557E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_190ADD960(uint64_t a1)
{
  if ((a1 - 1) >= 0x1A)
  {
    return 26;
  }

  else
  {
    return a1 - 1;
  }
}

unint64_t sub_190ADD988()
{
  result = qword_1EAD5CFC8;
  if (!qword_1EAD5CFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5CFC8);
  }

  return result;
}

uint64_t sub_190ADD9F0()
{
  v0 = sub_190D53040();
  __swift_allocate_value_buffer(v0, qword_1EAD9DF70);
  __swift_project_value_buffer(v0, qword_1EAD9DF70);
  sub_190D53010();
  return sub_190D53030();
}

uint64_t sub_190ADDA5C()
{
  v0 = sub_190D53040();
  __swift_allocate_value_buffer(v0, qword_1EAD9DF88);
  __swift_project_value_buffer(v0, qword_1EAD9DF88);
  sub_190D53010();
  return sub_190D53030();
}

uint64_t sub_190ADDAC8()
{
  v0 = sub_190D53040();
  __swift_allocate_value_buffer(v0, qword_1EAD9DFA0);
  __swift_project_value_buffer(v0, qword_1EAD9DFA0);
  sub_190D53010();
  return sub_190D53030();
}

uint64_t sub_190ADDB34()
{
  v0 = sub_190D53040();
  __swift_allocate_value_buffer(v0, qword_1EAD9DFB8);
  __swift_project_value_buffer(v0, qword_1EAD9DFB8);
  sub_190D53010();
  return sub_190D53030();
}

uint64_t sub_190ADDBA0()
{
  v0 = sub_190D53040();
  __swift_allocate_value_buffer(v0, qword_1EAD9DFD0);
  __swift_project_value_buffer(v0, qword_1EAD9DFD0);
  sub_190D53010();
  return sub_190D53030();
}

uint64_t sub_190ADDC0C()
{
  v0 = sub_190D53040();
  __swift_allocate_value_buffer(v0, qword_1EAD9DFE8);
  __swift_project_value_buffer(v0, qword_1EAD9DFE8);
  sub_190D53010();
  return sub_190D53030();
}

void *CKTipCollectionViewCell.miniTipUIView.getter()
{
  v1 = OBJC_IVAR____TtC7ChatKit23CKTipCollectionViewCell_miniTipUIView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void CKTipCollectionViewCell.miniTipUIView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC7ChatKit23CKTipCollectionViewCell_miniTipUIView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id CKTipCollectionViewCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id CKTipCollectionViewCell.init(frame:)()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC7ChatKit23CKTipCollectionViewCell_miniTipUIView] = 0;
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
}

Swift::Void __swiftcall CKTipCollectionViewCell.setTipHostingView(_:)(UIView_optional *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC7ChatKit23CKTipCollectionViewCell_miniTipUIView;
  swift_beginAccess();
  v5 = *&v1[v4];
  if (v5)
  {
    if (!a1)
    {
      goto LABEL_5;
    }

    sub_1902188FC(0, &qword_1EAD46530);
    v6 = v5;
    v7 = a1;
    v8 = sub_190D57D90();

    if (v8)
    {
      return;
    }

    v5 = *&v2[v4];
    if (v5)
    {
LABEL_5:
      [v5 removeFromSuperview];
      v5 = *&v2[v4];
    }
  }

  else
  {
    if (!a1)
    {
      return;
    }

    v5 = 0;
  }

  *&v2[v4] = a1;
  v9 = a1;

  if (a1)
  {
    [(UIView_optional *)v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = [v2 contentView];
    [v10 addSubview_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_190DD86A0;
    v12 = [(UIView_optional *)v9 leadingAnchor];
    v13 = [v2 contentView];
    v14 = [v13 safeAreaLayoutGuide];

    v15 = [v14 leadingAnchor];
    v16 = [objc_allocWithZone(CKUIBehavior) init];
    [v16 tipCellLeadingInset];
    v18 = v17;

    v19 = [v12 constraintEqualToAnchor:v15 constant:v18];
    *(inited + 32) = v19;
    v20 = [(UIView_optional *)v9 trailingAnchor];
    v21 = [v2 contentView];
    v22 = [v21 safeAreaLayoutGuide];

    v23 = [v22 trailingAnchor];
    v24 = [objc_allocWithZone(CKUIBehavior) init];
    [v24 tipCellTrailingInset];
    v26 = v25;

    v27 = [v20 constraintEqualToAnchor:v23 constant:v26];
    *(inited + 40) = v27;
    v28 = [(UIView_optional *)v9 topAnchor];
    v29 = [v2 contentView];
    v30 = [v29 topAnchor];

    v31 = [v28 constraintEqualToAnchor_];
    *(inited + 48) = v31;
    v32 = [(UIView_optional *)v9 bottomAnchor];
    v33 = [v2 contentView];
    v34 = [v33 bottomAnchor];

    v35 = [v32 constraintEqualToAnchor_];
    *(inited + 56) = v35;
    sub_190CAA5E8(inited);
    v36 = objc_opt_self();
    sub_1902188FC(0, &qword_1EAD45040);
    v37 = sub_190D57160();

    [v36 activateConstraints_];
  }
}

id CKTipCollectionViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t (*sub_190ADE524(void *a1))()
{
  a1[1] = v1;
  *a1 = sub_190842164();
  return sub_190AB6AE4;
}

void sub_190ADE584()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C80);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_190DE4300;
  v1 = IMBalloonExtensionIDWithSuffix();
  if (!v1)
  {
    __break(1u);
    goto LABEL_11;
  }

  v2 = v1;
  v3 = sub_190D56F10();
  v5 = v4;

  *(v0 + 32) = v3;
  *(v0 + 40) = v5;
  v6 = IMBalloonExtensionIDWithSuffix();
  if (!v6)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v7 = v6;
  v8 = sub_190D56F10();
  v10 = v9;

  *(v0 + 48) = v8;
  *(v0 + 56) = v10;
  v11 = IMStickersExtensionIdentifier();
  v12 = IMBalloonExtensionIDWithSuffix();

  if (!v12)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v13 = sub_190D56F10();
  v15 = v14;

  *(v0 + 64) = v13;
  *(v0 + 72) = v15;
  v16 = IMBalloonExtensionIDWithSuffix();
  if (!v16)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = v16;
  v18 = sub_190D56F10();
  v20 = v19;

  *(v0 + 80) = v18;
  *(v0 + 88) = v20;
  v21 = IMBalloonExtensionIDWithSuffix();
  if (!v21)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v22 = v21;
  v23 = sub_190D56F10();
  v25 = v24;

  *(v0 + 96) = v23;
  *(v0 + 104) = v25;
  v26 = IMBalloonExtensionIDWithSuffix();
  if (!v26)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v27 = v26;
  v28 = sub_190D56F10();
  v30 = v29;

  *(v0 + 112) = v28;
  *(v0 + 120) = v30;
  v31 = IMBalloonExtensionIDWithSuffix();
  if (!v31)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v32 = v31;
  v33 = sub_190D56F10();
  v35 = v34;

  *(v0 + 128) = v33;
  *(v0 + 136) = v35;
  v36 = IMBalloonExtensionIDWithSuffix();
  if (v36)
  {
    v37 = v36;
    v38 = sub_190D56F10();
    v40 = v39;

    *(v0 + 144) = v38;
    *(v0 + 152) = v40;
    return;
  }

LABEL_17:
  __break(1u);
}

uint64_t (*sub_190ADE7A8(uint64_t *a1))(void *)
{
  a1[1] = v1;
  *a1 = sub_190ADE56C();
  return sub_190AB6B4C;
}

uint64_t (*sub_190ADE7F0(void *a1))()
{
  a1[1] = v1;
  *a1 = sub_19084216C();
  return sub_190AB6B9C;
}

uint64_t (*sub_190ADE838(void *a1))()
{
  a1[1] = v1;
  *a1 = sub_190842170();
  return sub_190AB6BEC;
}

uint64_t (*sub_190ADE88C(void *a1))()
{
  a1[1] = v1;
  *a1 = sub_190842164();
  return sub_190AB7C50;
}

uint64_t sub_190ADE8EC(uint64_t (*a1)(void))
{
  if (*(v1 + 24))
  {
    v2 = *(v1 + 24);
  }

  else
  {
    v2 = a1();
    *(v1 + 24) = v2;
    sub_190D52690();
  }

  sub_190D52690();
  return v2;
}

void sub_190ADE950()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C80);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_190DD86E0;
  v1 = IMBalloonExtensionIDWithSuffix();
  if (!v1)
  {
    __break(1u);
    goto LABEL_12;
  }

  v2 = v1;
  v3 = sub_190D56F10();
  v5 = v4;

  *(v0 + 32) = v3;
  *(v0 + 40) = v5;
  v6 = IMBalloonExtensionIDWithSuffix();
  if (!v6)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = v6;
  v8 = sub_190D56F10();
  v10 = v9;

  *(v0 + 48) = v8;
  *(v0 + 56) = v10;
  v11 = IMStickersExtensionIdentifier();
  v12 = IMBalloonExtensionIDWithSuffix();

  if (!v12)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_190D56F10();
  v15 = v14;

  *(v0 + 64) = v13;
  *(v0 + 72) = v15;
  v16 = IMBalloonExtensionIDWithSuffix();
  if (!v16)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v17 = v16;
  v18 = sub_190D56F10();
  v20 = v19;

  *(v0 + 80) = v18;
  *(v0 + 88) = v20;
  v21 = IMBalloonExtensionIDWithSuffix();
  if (!v21)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22 = v21;
  v23 = sub_190D56F10();
  v25 = v24;

  *(v0 + 96) = v23;
  *(v0 + 104) = v25;
  v26 = IMBalloonExtensionIDWithSuffix();
  if (!v26)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v27 = v26;
  v28 = sub_190D56F10();
  v30 = v29;

  *(v0 + 112) = v28;
  *(v0 + 120) = v30;
  v31 = IMBalloonExtensionIDWithSuffix();
  if (!v31)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v32 = v31;
  v33 = sub_190D56F10();
  v35 = v34;

  *(v0 + 128) = v33;
  *(v0 + 136) = v35;
  v36 = IMBalloonExtensionIDWithSuffix();
  if (!v36)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v37 = v36;
  v38 = sub_190D56F10();
  v40 = v39;

  *(v0 + 144) = v38;
  *(v0 + 152) = v40;
  v41 = IMBalloonExtensionIDWithSuffix();
  if (v41)
  {
    v42 = v41;
    v43 = sub_190D56F10();
    v45 = v44;

    *(v0 + 160) = v43;
    *(v0 + 168) = v45;
    return;
  }

LABEL_19:
  __break(1u);
}

uint64_t (*sub_190ADEBAC(uint64_t *a1))(void *)
{
  a1[1] = v1;
  *a1 = sub_190ADE8D4();
  return sub_190AB7C54;
}

uint64_t (*sub_190ADEBF4(void *a1))()
{
  a1[1] = v1;
  *a1 = sub_19084216C();
  return sub_190AB7C58;
}

uint64_t (*sub_190ADEC3C(void *a1))()
{
  a1[1] = v1;
  *a1 = sub_190842170();
  return sub_190AB7C5C;
}

id sub_190ADF074()
{
  result = [objc_opt_self() sharedBehaviors];
  if (result)
  {
    qword_1EAD452C8 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_190ADF0D8()
{
  v0 = [objc_opt_self() animationNamesForDomain_];
  v1 = sub_190D57180();

  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = (v1 + 40);
    v5 = MEMORY[0x1E69E7CC0];
    while (v3 < *(v1 + 16))
    {
      v7 = *(v4 - 1);
      v6 = *v4;
      sub_190D52690();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1908354D4(0, *(v5 + 2) + 1, 1, v5);
      }

      v9 = *(v5 + 2);
      v8 = *(v5 + 3);
      if (v9 >= v8 >> 1)
      {
        v5 = sub_1908354D4((v8 > 1), v9 + 1, 1, v5);
      }

      ++v3;
      *(v5 + 2) = v9 + 1;
      v10 = &v5[16 * v9];
      *(v10 + 4) = v7;
      *(v10 + 5) = v6;
      v4 += 2;
      if (v2 == v3)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_9:
  }
}

uint64_t (*static TextEffectsMenuFactory.systemSupportedEffectNames.modify())()
{
  if (qword_1EAD45948 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

void sub_190ADF2E4()
{
  v0 = IMTextEffectOrderedSupportedNames();
  v1 = sub_190D57180();

  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v1 + 40;
    v19 = v2 - 1;
    v5 = MEMORY[0x1E69E7CC0];
    v20 = v1 + 40;
    do
    {
      v21 = v5;
      v6 = (v4 + 16 * v3);
      v7 = v3;
      while (1)
      {
        if (v7 >= *(v1 + 16))
        {
          __break(1u);
          return;
        }

        v9 = *(v6 - 1);
        v8 = *v6;
        v10 = qword_1EAD45948;
        sub_190D52690();
        if (v10 != -1)
        {
          swift_once();
        }

        v11 = swift_beginAccess();
        v12 = qword_1EAD45950;
        v22[0] = v9;
        v22[1] = v8;
        MEMORY[0x1EEE9AC00](v11);
        v18[2] = v22;
        sub_190D52690();
        v13 = sub_190CA8558(sub_1909F5BC8, v18, v12);

        if (v13)
        {
          break;
        }

        ++v7;

        v6 += 2;
        if (v2 == v7)
        {
          v5 = v21;
          goto LABEL_17;
        }
      }

      v14 = sub_190D56ED0();
      v15 = IMTextEffectTypeFromName();

      v5 = v21;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1908368C0(0, *(v5 + 2) + 1, 1, v5);
      }

      v17 = *(v5 + 2);
      v16 = *(v5 + 3);
      if (v17 >= v16 >> 1)
      {
        v5 = sub_1908368C0((v16 > 1), v17 + 1, 1, v5);
      }

      v3 = v7 + 1;
      *(v5 + 2) = v17 + 1;
      *&v5[8 * v17 + 32] = v15;
      v4 = v20;
    }

    while (v19 != v7);
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

LABEL_17:

  off_1EAD45968 = v5;
}

uint64_t sub_190ADF55C(void *a1)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_190D52690();
}

uint64_t sub_190ADF5DC(uint64_t a1, void *a2, void *a3)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a3 = a1;
}

uint64_t (*static TextEffectsMenuFactory.orderedSupportedEffects.modify())()
{
  if (qword_1EAD45960 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_190ADF6CC@<X0>(void *a1@<X3>, void *a2@<X4>, void *a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a3 = *a2;
  return sub_190D52690();
}

uint64_t sub_190ADF734(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *a6)
{
  v7 = *a1;
  v8 = *a5;
  sub_190D52690();
  if (v8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a6 = v7;
}

uint64_t static TextEffectsMenuFactory.textStyleKeyCommands(action:configureImages:configureAttributedTitles:selectedText:)(uint64_t a1, char a2, char a3)
{
  _s7ChatKit22TextEffectsMenuFactoryC20textStyleKeyCommands6action15configureImages0L16AttributedTitles06activeC6Styles08selectedC0SaySo12UIKeyCommandCG10ObjectiveC8SelectorVSg_S2bSo06IMTextH0VSStFZ_0(a1, a2, a3, 0);
  v4 = v3;
  if (v3 >> 62)
  {
    sub_1902188FC(0, &qword_1EAD44E30);
    v5 = sub_190D58530();
  }

  else
  {
    sub_190D52690();
    sub_190D58770();
    sub_1902188FC(0, &qword_1EAD44E30);
    v5 = v4;
  }

  return v5;
}

id sub_190ADFB70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, uint64_t, uint64_t, uint64_t), unint64_t *a9)
{
  a8(a3, a4, a5, a6);
  sub_1902188FC(0, a9);
  v9 = sub_190D57160();

  return v9;
}

id sub_190ADFEE8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), unint64_t *a5)
{
  a4(a3);
  sub_1902188FC(0, a5);
  v6 = sub_190D57160();

  return v6;
}

id TextEffectsMenuFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TextEffectsMenuFactory.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TextEffectsMenuFactory();
  return objc_msgSendSuper2(&v2, sel_init);
}

id TextEffectsMenuFactory.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TextEffectsMenuFactory();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s7ChatKit22TextEffectsMenuFactoryC18keyCommandInputKey3forSSSgSo16IMTextEffectTypeV_tFZ_0(uint64_t a1)
{
  if (qword_1EAD45960 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = 0;
  do
  {
    if (*(off_1EAD45968 + 2) == v2)
    {
      return 0;
    }

    v3 = v2 + 1;
    v4 = *(off_1EAD45968 + v2++ + 4);
  }

  while (v4 != a1);
  if ((v3 - 1) > 9)
  {
    return 0;
  }

  if (v3 == 10)
  {
    return 48;
  }

  else
  {
    return sub_190D58720();
  }
}

void _s7ChatKit22TextEffectsMenuFactoryC016textStylePaletteE006activeC6Styles08selectedC07handlerSo6UIMenuCSo06IMTextH0V_SSyAK_So8UIActionCtctFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = MEMORY[0x1E69E7CC0];
  sub_1902188FC(0, &qword_1EAD464F0);
  for (i = 0; i != 32; i += 8)
  {
    v7 = *(&unk_1F0403138 + i + 32);
    if (v7 == 1 || v7 == 2 || v7 == 8 || v7 == 4)
    {
      v8 = sub_190D56ED0();

      v9 = [objc_opt_self() systemImageNamed_];
    }

    else
    {
      v9 = 0;
    }

    if (qword_1EAD452C0 != -1)
    {
      swift_once();
    }

    v10 = qword_1EAD452C8;
    v11 = sub_190D56ED0();
    v12 = [v10 __ck_localizedString_];

    if (!v12)
    {
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      return;
    }

    sub_190D56F10();

    v13 = swift_allocObject();
    v13[2] = a4;
    v13[3] = a5;
    v13[4] = v7;
    v14 = v9;
    sub_190D50920();
    v15 = sub_190D57DC0();
    [v15 setState_];
    if (v7 == 2)
    {
      v16 = [objc_opt_self() sharedBehaviors];
      if (!v16)
      {
        goto LABEL_27;
      }

      v17 = v16;
      v18 = [v16 transcriptTextFont];

      if (!v18)
      {
        goto LABEL_28;
      }

      v19 = sub_190D56ED0();
      v20 = [v18 ck:v19 canToggleItalicTraitInText:?];

      [v15 setAttributes_];
    }

    v21 = v15;
    MEMORY[0x193AF29E0]();
    if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_190D571A0();
    }

    sub_190D571E0();
  }

  v22 = sub_190D56ED0();
  v23 = [v10 __ck_localizedString_];

  if (!v23)
  {
    goto LABEL_29;
  }

  sub_190D56F10();

  if (v26 >> 62)
  {
    sub_1902188FC(0, &unk_1EAD45090);
    sub_190D52690();
    sub_190D58530();
  }

  else
  {
    sub_190D52690();
    sub_190D58770();
    sub_1902188FC(0, &unk_1EAD45090);
  }

  sub_1902188FC(0, &unk_1EAD44ED0);
  sub_190D57C90();
}

void _s7ChatKit22TextEffectsMenuFactoryC20textStyleKeyCommands6action15configureImages0L16AttributedTitles06activeC6Styles08selectedC0SaySo12UIKeyCommandCG10ObjectiveC8SelectorVSg_S2bSo06IMTextH0VSStFZ_0(uint64_t a1, char a2, char a3, uint64_t a4)
{
  if (a1)
  {
    v4 = 0;
    v32 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v5 = *(&unk_1F0403178 + v4 + 32);
      if (v5 != 8)
      {
        break;
      }

LABEL_4:
      v4 += 8;
      if (v4 == 32)
      {
        return;
      }
    }

    v6 = v5 != 1 && v5 != 2 && v5 != 4;
    if (qword_1EAD452C0 != -1)
    {
      swift_once();
    }

    v7 = qword_1EAD452C8;
    v8 = sub_190D56ED0();
    v9 = [v7 __ck_localizedString_];

    if (!v9)
    {
      __break(1u);
      return;
    }

    sub_190D56F10();
    if ((a2 & 1) != 0 && (v5 == 1 || v5 == 2 || v5 == 4))
    {
      v12 = v9;
      v13 = sub_190D56ED0();

      v11 = [objc_opt_self() systemImageNamed_];
    }

    else
    {
      v10 = v9;
      v11 = 0;
    }

    v14 = [v9 length];

    v15 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
    if (v6)
    {
      sub_1902188FC(0, &qword_1EAD44E30);
      sub_1902188FC(0, &qword_1EAD46510);
      v16 = v11;
      v17 = v15;
      v28 = 0u;
      v27 = 0u;
      v26 = MEMORY[0x1E69E7CC0];
      v18 = sub_190D58040();
    }

    else
    {
      sub_1902188FC(0, &qword_1EAD466C8);
      sub_1902188FC(0, &qword_1EAD46510);
      v19 = v11;
      v20 = v15;
      v28 = 0uLL;
      *&v27 = 0;
      *(&v27 + 1) = 0xE000000000000000;
      v26 = MEMORY[0x1E69E7CC0];
      v18 = sub_190D57650();
    }

    v21 = v18;
    v22 = CKIsRunningInMacCatalyst();
    if (v22)
    {
    }

    else
    {
      v23 = _CKUIEnhancedMainMenuEnabled(v22);

      if ((v23 & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    if (a3)
    {
      v24 = [objc_allocWithZone(MEMORY[0x1E696AAB0]) initWithString_];

      v9 = [v24 ck:v5 attributedStringByApplyingTextStyle:0 range:v14];
      [v21 setAttributedTitle_];
    }

    else
    {
      [v21 setTitle_];
    }

LABEL_29:

    [v21 setState_];
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v25 = v21;
      MEMORY[0x193AF29E0]();
      if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_190D571A0();
      }

      sub_190D571E0();
    }

    else
    {
    }

    goto LABEL_4;
  }
}

void _s7ChatKit22TextEffectsMenuFactoryC17textStyleCommands6action15configureImages0K16AttributedTitles06activeC6Styles08selectedC0SaySo9UICommandCG10ObjectiveC8SelectorVSg_S2bSo06IMTextH0VSStFZ_0(uint64_t a1, char a2, char a3, uint64_t a4)
{
  if (a1)
  {
    v33 = MEMORY[0x1E69E7CC0];
    if (qword_1EAD452C0 != -1)
    {
      swift_once();
    }

    v4 = 0;
    v30 = qword_1EAD452C8;
    while (1)
    {
      v5 = *(&unk_1F04031B8 + v4 + 32);
      if (v5 == 1)
      {
        v6 = 0;
        v7 = 0xE100000000000000;
      }

      else
      {
        if (v5 == 2)
        {
          v7 = 0xE100000000000000;
        }

        else
        {
          v7 = 0;
        }

        if (v5 == 2)
        {
          v6 = 0;
        }

        else
        {
          v6 = v5 != 4;
          if (v5 == 4)
          {
            v7 = 0xE100000000000000;
          }
        }
      }

      v8 = sub_190D56ED0();
      v9 = [v30 __ck_localizedString_];

      if (!v9)
      {
        __break(1u);
        return;
      }

      sub_190D56F10();
      if ((a2 & 1) != 0 && (v5 == 1 || v5 == 2 || v5 == 8 || v5 == 4))
      {
        v10 = v9;
        v11 = sub_190D56ED0();

        v12 = [objc_opt_self() systemImageNamed_];
      }

      else
      {
        v13 = v9;
        v12 = 0;
      }

      v14 = [v9 length];

      v15 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
      if (!v7)
      {
        goto LABEL_26;
      }

      if (v6)
      {
        break;
      }

      sub_1902188FC(0, &qword_1EAD466C8);
      sub_1902188FC(0, &qword_1EAD46510);
      v19 = v12;
      v20 = v15;
      v28 = 0uLL;
      *&v27 = 0;
      *(&v27 + 1) = 0xE000000000000000;
      v26 = MEMORY[0x1E69E7CC0];
      v18 = sub_190D57650();
LABEL_28:
      v21 = v18;
      v22 = CKIsRunningInMacCatalyst();
      if (v22)
      {
      }

      else
      {
        v23 = _CKUIEnhancedMainMenuEnabled(v22);

        if ((v23 & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      if (a3)
      {
        v24 = [objc_allocWithZone(MEMORY[0x1E696AAB0]) initWithString_];

        v9 = [v24 ck:v5 attributedStringByApplyingTextStyle:0 range:v14];
        [v21 setAttributedTitle_];
      }

      else
      {
        [v21 setTitle_];
      }

LABEL_34:

      [v21 setState_];
      v25 = v21;
      MEMORY[0x193AF29E0]();
      if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_190D571A0();
      }

      sub_190D571E0();

      v4 += 8;
      if (v4 == 32)
      {
        return;
      }
    }

LABEL_26:
    sub_1902188FC(0, &qword_1EAD44E30);
    sub_1902188FC(0, &qword_1EAD46510);
    v16 = v12;
    v17 = v15;
    v28 = 0u;
    v27 = 0u;
    v26 = MEMORY[0x1E69E7CC0];
    v18 = sub_190D58040();
    goto LABEL_28;
  }
}

void _s7ChatKit22TextEffectsMenuFactoryC012inlineEffectE7Actions7handler06activecH4TypeSaySo8UIActionCGySo06IMTexthL0V_AHtc_AKtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = MEMORY[0x1E69E7CC0];
  if (qword_1EAD45960 != -1)
  {
LABEL_19:
    swift_once();
  }

  swift_beginAccess();
  v4 = off_1EAD45968;
  v18 = *(off_1EAD45968 + 2);
  if (v18)
  {
    sub_190D52690();
    v5 = 0;
    while (1)
    {
      if (v5 >= v4[2])
      {
        __break(1u);
        goto LABEL_19;
      }

      v6 = v4[v5 + 4];
      v7 = IMTextEffectLocalizationKeyFromType();
      if (!v7)
      {
        sub_190D56F10();
        v7 = sub_190D56ED0();
      }

      if (qword_1EAD452C0 != -1)
      {
        swift_once();
      }

      v8 = [qword_1EAD452C8 __ck_localizedString_];

      if (!v8)
      {
        break;
      }

      sub_190D56F10();
      sub_1902188FC(0, &qword_1EAD464F0);
      v9 = swift_allocObject();
      v9[2] = a1;
      v9[3] = a2;
      v9[4] = v6;
      v10 = v8;
      sub_190D50920();
      v11 = sub_190D57DC0();
      v12 = [objc_opt_self() sharedFeatureFlags];
      v13 = [v12 isStaticTextEffectMenusEnabled];

      if (v13)
      {
        v14 = [v10 length];

        v15 = [objc_allocWithZone(MEMORY[0x1E696AAB0]) initWithString_];
        v10 = v11;
        v16 = [v15 ck:v6 attributedStringByApplyingTextEffectType:0 range:v14];
        [v10 setAttributedTitle_];
      }

      else
      {
        v16 = v10;
      }

      [v11 setState_];
      v17 = v11;
      MEMORY[0x193AF29E0]();
      if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_190D571A0();
      }

      ++v5;
      sub_190D571E0();

      if (v18 == v5)
      {

        return;
      }
    }

    __break(1u);
  }
}

void _s7ChatKit22TextEffectsMenuFactoryC012inlineEffectE07handler06activecH4TypeSo6UIMenuCySo06IMTexthK0V_So8UIActionCtc_AJtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s7ChatKit22TextEffectsMenuFactoryC012inlineEffectE7Actions7handler06activecH4TypeSaySo8UIActionCGySo06IMTexthL0V_AHtc_AKtFZ_0(a1, a2, a3);
  v4 = v3;
  if (qword_1EAD452C0 != -1)
  {
    swift_once();
  }

  v5 = qword_1EAD452C8;
  v6 = sub_190D56ED0();
  v7 = [v5 __ck_localizedString_];

  if (v7)
  {
    sub_190D56F10();
    v8 = sub_190D56ED0();
    v9 = [objc_opt_self() _systemImageNamed_];

    if (v9)
    {
      v10 = [objc_opt_self() textAttachmentWithImage_];
      v11 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithString_];

      v12 = [objc_opt_self() attributedStringWithAttachment_];
      [v11 appendAttributedString_];

      v13 = CKIsRunningInMacCatalyst();
      if (v13 || _CKUIEnhancedMainMenuEnabled(v13))
      {
        if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
        {
LABEL_9:
          sub_190D52690();
          sub_190D58770();
          sub_1902188FC(0, &unk_1EAD45090);
LABEL_10:

          sub_1902188FC(0, &unk_1EAD44ED0);
          sub_190D57C90();

          return;
        }
      }

      else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
      {
        goto LABEL_9;
      }

      sub_1902188FC(0, &unk_1EAD45090);
      sub_190D52690();
      sub_190D58530();

      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void _s7ChatKit22TextEffectsMenuFactoryC06effectE8Commands6actionSaySo9UICommandCG10ObjectiveC8SelectorVSg_tFZ_0(uint64_t a1)
{
  if (a1)
  {
    v25 = MEMORY[0x1E69E7CC0];
    if (qword_1EAD45960 != -1)
    {
LABEL_24:
      swift_once();
    }

    swift_beginAccess();
    v1 = off_1EAD45968;
    v24 = *(off_1EAD45968 + 2);
    if (v24)
    {
      sub_190D52690();
      v2 = 0;
      v23 = v1;
      while (1)
      {
        if (v2 >= v1[2])
        {
          __break(1u);
          goto LABEL_24;
        }

        v3 = v1[v2 + 4];
        v4 = IMTextEffectLocalizationKeyFromType();
        if (!v4)
        {
          sub_190D56F10();
          v4 = sub_190D56ED0();
        }

        if (qword_1EAD452C0 != -1)
        {
          swift_once();
        }

        v5 = [qword_1EAD452C8 __ck_localizedString_];

        if (!v5)
        {
          break;
        }

        sub_190D56F10();
        v6 = [v5 length];
        v7 = _s7ChatKit22TextEffectsMenuFactoryC18keyCommandInputKey3forSSSgSo16IMTextEffectTypeV_tFZ_0(v3);
        v9 = v8;
        v10 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
        if (v9)
        {
          sub_1902188FC(0, &qword_1EAD466C8);
          sub_1902188FC(0, &qword_1EAD46510);
          v11 = v10;
          v22 = 0u;
          v21 = 0u;
          v20 = MEMORY[0x1E69E7CC0];
          v12 = sub_190D57650();
        }

        else
        {
          sub_1902188FC(0, &qword_1EAD44E30);
          sub_1902188FC(0, &qword_1EAD46510);
          v13 = v10;
          v22 = 0uLL;
          v21 = v7;
          v20 = MEMORY[0x1E69E7CC0];
          v12 = sub_190D58040();
        }

        v14 = v12;
        v15 = [objc_opt_self() sharedFeatureFlags];
        v16 = [v15 isStaticTextEffectMenusEnabled];

        if (v16)
        {
          v17 = CKIsRunningInMacCatalyst();
          if (v17 || _CKUIEnhancedMainMenuEnabled(v17))
          {
            v18 = [objc_allocWithZone(MEMORY[0x1E696AAB0]) initWithString_];

            v5 = [v18 ck:v3 attributedStringByApplyingTextEffectType:0 range:v6];
            [v14 setAttributedTitle_];
          }
        }

        v19 = v14;
        MEMORY[0x193AF29E0]();
        v1 = v23;
        if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_190D571A0();
        }

        ++v2;
        sub_190D571E0();

        if (v24 == v2)
        {

          return;
        }
      }

      __break(1u);
    }
  }
}

uint64_t _s7ChatKit22TextEffectsMenuFactoryC17effectKeyCommands6actionSaySo12UIKeyCommandCG10ObjectiveC8SelectorVSg_tFZ_0(uint64_t a1)
{
  _s7ChatKit22TextEffectsMenuFactoryC06effectE8Commands6actionSaySo9UICommandCG10ObjectiveC8SelectorVSg_tFZ_0(a1);
  v2 = v1;
  v11 = MEMORY[0x1E69E7CC0];
  v3 = v1 & 0xFFFFFFFFFFFFFF8;
  if (!(v1 >> 62))
  {
    v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_20:
    v6 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

LABEL_19:
  v4 = sub_190D581C0();
  if (!v4)
  {
    goto LABEL_20;
  }

LABEL_3:
  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  do
  {
    v7 = v5;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x193AF3B90](v7, v2);
      }

      else
      {
        if (v7 >= *(v3 + 16))
        {
          goto LABEL_18;
        }

        v8 = *(v2 + 8 * v7 + 32);
      }

      v9 = v8;
      v5 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      ++v7;
      if (v5 == v4)
      {
        goto LABEL_21;
      }
    }

    MEMORY[0x193AF29E0]();
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_190D571A0();
    }

    sub_190D571E0();
    v6 = v11;
  }

  while (v5 != v4);
LABEL_21:

  return v6;
}

id sub_190AE1E6C()
{
  v2.receiver = v0;
  v2.super_class = _s29ContactVerificationControllerV11CoordinatorCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_190AE1F44@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = _s29ContactVerificationControllerV11CoordinatorCMa();
  v7 = objc_allocWithZone(v6);
  v8 = OBJC_IVAR____TtCVOV7ChatKit18DetailsInfoTabView15KeyTransparency29ContactVerificationController11Coordinator_navigationController;
  *&v7[OBJC_IVAR____TtCVOV7ChatKit18DetailsInfoTabView15KeyTransparency29ContactVerificationController11Coordinator_navigationController] = 0;
  v9 = &v7[OBJC_IVAR____TtCVOV7ChatKit18DetailsInfoTabView15KeyTransparency29ContactVerificationController11Coordinator_parent];
  *v9 = v4;
  *(v9 + 1) = v3;
  *(v9 + 2) = v5;
  *&v7[v8] = 0;
  v10 = v4;
  sub_19029063C(v3);
  v12.receiver = v7;
  v12.super_class = v6;
  result = objc_msgSendSuper2(&v12, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_190AE1FE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_190AE2348();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_190AE2044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_190AE2348();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_190AE20A8()
{
  sub_190AE2348();
  sub_190D55130();
  __break(1u);
}

unint64_t sub_190AE20D4()
{
  result = qword_1EAD5CFF8;
  if (!qword_1EAD5CFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5CFF8);
  }

  return result;
}

id sub_190AE2128(uint64_t a1, uint64_t a2)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_self();
  v20 = 0;
  v21[0] = 0;
  [v3 handlesAndOptionsForContactVerificationUIForConversation:a2 handles:v21 options:&v20];
  v4 = v20;
  v5 = v21[0];
  if (v21[0])
  {
    v21[0] = 0;
    v6 = v5;
    v7 = v4;
    v8 = v6;
    sub_190D57170();

    if (v21[0])
    {
      if (v7)
      {
        v9 = v7;
        v10 = sub_190D57160();

        v11 = [v3 contactVerificationViewControllerForHandles:v10 options:v9];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D000);
        sub_190D55210();
        v12 = v21[0];
        [v11 setDelegate_];

        v13 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];
        sub_190D55210();

        v14 = v21[0];
        v15 = *(v21[0] + OBJC_IVAR____TtCVOV7ChatKit18DetailsInfoTabView15KeyTransparency29ContactVerificationController11Coordinator_navigationController);
        *(v21[0] + OBJC_IVAR____TtCVOV7ChatKit18DetailsInfoTabView15KeyTransparency29ContactVerificationController11Coordinator_navigationController) = v13;
        v16 = v13;

        return v16;
      }
    }
  }

  else
  {
    v18 = v20;
  }

  v19 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) init];

  return v19;
}

unint64_t sub_190AE2348()
{
  result = qword_1EAD5D008;
  if (!qword_1EAD5D008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5D008);
  }

  return result;
}

id sub_190AE239C()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtCVOV7ChatKit18DetailsInfoTabView15KeyTransparency29ContactVerificationController11Coordinator_parent;
  v3 = *(v0 + OBJC_IVAR____TtCVOV7ChatKit18DetailsInfoTabView15KeyTransparency29ContactVerificationController11Coordinator_parent);
  v4 = [v3 chat];
  [v4 fetchKTStatus];

  v5 = *(v2 + 8);
  if (v5)
  {
    v6 = sub_190D50920();
    v5(v6);
    sub_19022123C(v5);
  }

  result = *(v1 + OBJC_IVAR____TtCVOV7ChatKit18DetailsInfoTabView15KeyTransparency29ContactVerificationController11Coordinator_navigationController);
  if (result)
  {

    return [result dismissViewControllerAnimated:1 completion:0];
  }

  return result;
}

id sub_190AE2558(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC7ChatKit17CKInlineMediaView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC7ChatKit17CKInlineMediaView_image] = 0;
  v9 = objc_opt_self();
  result = [v9 sharedBehaviors];
  if (result)
  {
    v11 = result;
    v12 = OBJC_IVAR____TtC7ChatKit17CKInlineMediaView_generateButtonDiameter;
    [result entryViewGenerationButtonDiameter];
    v14 = v13;

    *&v4[v12] = v14;
    result = [v9 sharedBehaviors];
    if (result)
    {
      v15 = result;
      v16 = OBJC_IVAR____TtC7ChatKit17CKInlineMediaView_generateButtonMargin;
      [result entryViewGenerationButtonMargin];
      v18 = v17;

      *&v4[v16] = v18;
      v4[OBJC_IVAR____TtC7ChatKit17CKInlineMediaView_showGenerativeButton] = 0;
      v4[OBJC_IVAR____TtC7ChatKit17CKInlineMediaView_isGenerativeAssetAppearance] = 0;
      v19 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
      *&v4[OBJC_IVAR____TtC7ChatKit17CKInlineMediaView_imageView] = v19;
      type metadata accessor for CKInlineMediaViewGenerateButton();
      v20 = [swift_getObjCClassFromMetadata() buttonWithType_];
      *&v4[OBJC_IVAR____TtC7ChatKit17CKInlineMediaView_generateButton] = v20;
      v22.receiver = v4;
      v22.super_class = type metadata accessor for CKInlineMediaView();
      v21 = objc_msgSendSuper2(&v22, sel_initWithFrame_, a1, a2, a3, a4);
      sub_190AE2A1C();

      return v21;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_190AE2738(void *a1)
{
  *&v1[OBJC_IVAR____TtC7ChatKit17CKInlineMediaView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC7ChatKit17CKInlineMediaView_image] = 0;
  v3 = objc_opt_self();
  result = [v3 sharedBehaviors];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = result;
  v6 = OBJC_IVAR____TtC7ChatKit17CKInlineMediaView_generateButtonDiameter;
  [result entryViewGenerationButtonDiameter];
  v8 = v7;

  *&v1[v6] = v8;
  result = [v3 sharedBehaviors];
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v9 = result;
  v10 = OBJC_IVAR____TtC7ChatKit17CKInlineMediaView_generateButtonMargin;
  [result entryViewGenerationButtonMargin];
  v12 = v11;

  *&v1[v10] = v12;
  v1[OBJC_IVAR____TtC7ChatKit17CKInlineMediaView_showGenerativeButton] = 0;
  v1[OBJC_IVAR____TtC7ChatKit17CKInlineMediaView_isGenerativeAssetAppearance] = 0;
  v13 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  *&v1[OBJC_IVAR____TtC7ChatKit17CKInlineMediaView_imageView] = v13;
  v14 = [objc_allocWithZone(type metadata accessor for CKInlineMediaViewGenerateButton()) initWithCoder_];
  if (!v14)
  {
    v14 = [swift_getObjCClassFromMetadata() buttonWithType_];
  }

  *&v1[OBJC_IVAR____TtC7ChatKit17CKInlineMediaView_generateButton] = v14;
  v18.receiver = v1;
  v18.super_class = type metadata accessor for CKInlineMediaView();
  v15 = objc_msgSendSuper2(&v18, sel_initWithCoder_, a1);
  v16 = v15;
  if (v15)
  {
    v17 = v15;
    sub_190AE2A1C();
  }

  return v16;
}

void sub_190AE2918()
{
  v1 = [objc_opt_self() sharedFeatureFlags];
  v2 = [v1 isGenPlaygroundSparkleButtonEnabled];

  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC7ChatKit17CKInlineMediaView_generateButtonDiameter] + *&v0[OBJC_IVAR____TtC7ChatKit17CKInlineMediaView_generateButtonMargin];
    [v0 bounds];
    if (v3 >= v4)
    {
      v6 = 1;
    }

    else
    {
      [v0 bounds];
      v6 = v3 >= v5;
    }

    v7 = *&v0[OBJC_IVAR____TtC7ChatKit17CKInlineMediaView_generateButton];
    v8 = v6 | ((v0[OBJC_IVAR____TtC7ChatKit17CKInlineMediaView_showGenerativeButton] & 1) == 0);

    [v7 setHidden_];
  }
}

void sub_190AE2A1C()
{
  v1 = v0;
  v2 = sub_190D56800();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1908E9B68();
  *v5 = sub_190D57870();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v6 = sub_190D56830();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v7 = [objc_opt_self() clearColor];
    [v1 setBackgroundColor_];

    [v1 setClipsToBounds_];
    v8 = OBJC_IVAR____TtC7ChatKit17CKInlineMediaView_imageView;
    [*&v1[OBJC_IVAR____TtC7ChatKit17CKInlineMediaView_imageView] setContentMode_];
    [v1 addSubview_];
    v9 = [objc_opt_self() sharedFeatureFlags];
    v10 = [v9 isGenPlaygroundSparkleButtonEnabled];

    if (v10)
    {
      v11 = *&v1[OBJC_IVAR____TtC7ChatKit17CKInlineMediaView_generateButton];
      [v11 addTarget:v1 action:sel_didTapGenerateButton_ forControlEvents:64];
      [v11 setHidden_];
      [v1 addSubview_];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_190AE2C3C()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for CKInlineMediaView();
  objc_msgSendSuper2(&v6, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC7ChatKit17CKInlineMediaView_imageView];
  [v0 bounds];
  [v1 setFrame_];

  v2 = [objc_opt_self() sharedFeatureFlags];
  v3 = [v2 isGenPlaygroundSparkleButtonEnabled];

  if (v3)
  {
    sub_190AE2918();
    v4 = *&v0[OBJC_IVAR____TtC7ChatKit17CKInlineMediaView_generateButtonDiameter];
    v5 = *&v0[OBJC_IVAR____TtC7ChatKit17CKInlineMediaView_generateButtonMargin];
    [v0 bounds];
    [*&v0[OBJC_IVAR____TtC7ChatKit17CKInlineMediaView_generateButton] setFrame_];
  }
}

void sub_190AE2DA0(void *a1)
{
  v2 = *&v1[OBJC_IVAR____TtC7ChatKit17CKInlineMediaView_image];
  *&v1[OBJC_IVAR____TtC7ChatKit17CKInlineMediaView_image] = a1;
  v3 = a1;

  [*&v1[OBJC_IVAR____TtC7ChatKit17CKInlineMediaView_imageView] setImage_];
  v4 = [objc_opt_self() sharedFeatureFlags];
  LODWORD(v2) = [v4 isGenPlaygroundSparkleButtonEnabled];

  if (v2)
  {
    v5 = *&v1[OBJC_IVAR____TtC7ChatKit17CKInlineMediaView_generateButton];

    [v1 bringSubviewToFront_];
  }
}

id sub_190AE2F70()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKInlineMediaView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AttributedTapbackItem()
{
  result = qword_1EAD5D050;
  if (!qword_1EAD5D050)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_190AE30A8()
{
  sub_190AE315C();
  if (v0 <= 0x3F)
  {
    sub_190D51840();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ScootTrackingValue();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_190AE315C()
{
  if (!qword_1EAD5D060)
  {
    v0 = sub_190D57200();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAD5D060);
    }
  }
}

uint64_t sub_190AE31CC(void *a1, uint64_t a2, char a3)
{
  sub_190D58870();
  if (a3)
  {
    if (a3 == 1)
    {
      sub_190D56FC0();
    }

    else
    {
      v5 = [a1 stickerIdentifier];
      sub_190D56F10();

      sub_190D56FC0();
    }
  }

  else
  {
    MEMORY[0x193AF4130]([a1 associatedMessageType]);
  }

  return sub_190D588C0();
}

uint64_t sub_190AE32A8()
{
  if (!*(v0 + 16))
  {
    return MEMORY[0x193AF4130]([*v0 associatedMessageType]);
  }

  if (*(v0 + 16) == 1)
  {

    return sub_190D56FC0();
  }

  else
  {
    v2 = [*v0 stickerIdentifier];
    sub_190D56F10();

    sub_190D56FC0();
  }
}

uint64_t sub_190AE3388()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  sub_190D58870();
  if (v2)
  {
    if (v2 == 1)
    {
      sub_190D56FC0();
    }

    else
    {
      v3 = [v1 stickerIdentifier];
      sub_190D56F10();

      sub_190D56FC0();
    }
  }

  else
  {
    MEMORY[0x193AF4130]([v1 associatedMessageType]);
  }

  return sub_190D588C0();
}

unint64_t sub_190AE346C()
{
  result = qword_1EAD5D068;
  if (!qword_1EAD5D068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5D068);
  }

  return result;
}

uint64_t sub_190AE34C0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_190D58870();
  sub_190D56FC0();
  sub_190D56FC0();
  if (v2)
  {
    v3 = v2;
    sub_190D57DA0();
  }

  if (v1)
  {
    v4 = v1;
    v5 = [v4 identifier];
    sub_190D56F10();

    sub_190D56FC0();
  }

  return sub_190D588C0();
}

void sub_190AE359C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_190D56FC0();
  sub_190D56FC0();
  if (v2)
  {
    v3 = v2;
    sub_190D57DA0();
  }

  if (v1)
  {
    v5 = v1;
    v4 = [v5 identifier];
    sub_190D56F10();

    sub_190D56FC0();
  }
}

uint64_t sub_190AE3684()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_190D58870();
  sub_190D56FC0();
  sub_190D56FC0();
  if (v2)
  {
    v3 = v2;
    sub_190D57DA0();
  }

  if (v1)
  {
    v4 = v1;
    v5 = [v4 identifier];
    sub_190D56F10();

    sub_190D56FC0();
  }

  return sub_190D588C0();
}

uint64_t sub_190AE375C@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  a1[1] = v2;
  return sub_190D52690();
}

uint64_t sub_190AE3768(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_190AE3C18(v7, v8) & 1;
}

unint64_t sub_190AE37B4()
{
  result = qword_1EAD5D070;
  if (!qword_1EAD5D070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5D070);
  }

  return result;
}

uint64_t sub_190AE3808(uint64_t a1)
{
  v2 = v1;
  if (*(v1 + 16))
  {
    if (*(v1 + 16) == 1)
    {
      sub_190D56FC0();
    }

    else
    {
      v4 = [*v1 stickerIdentifier];
      sub_190D56F10();

      sub_190D56FC0();
    }
  }

  else
  {
    MEMORY[0x193AF4130]([*v1 associatedMessageType]);
  }

  sub_190AA156C(a1, *(v2 + 24));
  v5 = type metadata accessor for AttributedTapbackItem();
  sub_190D51840();
  sub_190AE3A58(&qword_1EAD54D88, MEMORY[0x1E6969530]);
  sub_190D56DD0();
  v6 = *(*(v2 + *(v5 + 28)) + 16);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  MEMORY[0x193AF4130](*&v6);

  return sub_190D56FC0();
}

uint64_t sub_190AE3978()
{
  sub_190D58870();
  sub_190AE3808(v1);
  return sub_190D588C0();
}

uint64_t sub_190AE39BC()
{
  sub_190D58870();
  sub_190AE3808(v1);
  return sub_190D588C0();
}

uint64_t sub_190AE39F8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (v2 + *(a1 + 32));
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
  return sub_190D52690();
}

uint64_t sub_190AE3A58(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_190AE3AA0(void *a1, uint64_t a2, char a3, void *a4, uint64_t a5, char a6)
{
  if (!a3)
  {
    if (!a6)
    {
      v8 = [a1 associatedMessageType];
      return v8 == [a4 associatedMessageType];
    }

    return 0;
  }

  if (a3 != 1)
  {
    if (a6 == 2)
    {
      v10 = [a1 stickerIdentifier];
      v11 = sub_190D56F10();
      v13 = v12;

      v14 = [a4 stickerIdentifier];
      v15 = sub_190D56F10();
      v17 = v16;

      if (v11 != v15 || v13 != v17)
      {
        v19 = sub_190D58760();

        return v19 & 1;
      }

      return 1;
    }

    return 0;
  }

  if (a6 != 1)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  return sub_190D58760();
}

uint64_t sub_190AE3C18(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_190D58760() & 1) != 0)
  {
    v5 = a1[4] == a2[4] && a1[5] == a2[5];
    if (v5 || (sub_190D58760() & 1) != 0)
    {
      v6 = a1[3];
      v7 = a2[3];
      if (v6)
      {
        if (v7)
        {
          sub_1902495E8();
          v8 = v7;
          v9 = v6;
          v10 = sub_190D57D90();

          if (v10)
          {
LABEL_14:
            v11 = a1[2];
            if (v11)
            {
              v12 = [v11 identifier];
              v13 = sub_190D56F10();
              v15 = v14;

              v16 = a2[2];
              if (!v16)
              {
                if (!v15)
                {
                  goto LABEL_31;
                }

LABEL_28:
                v17 = 0;
LABEL_33:

                return v17 & 1;
              }
            }

            else
            {
              v16 = a2[2];
              if (!v16)
              {
                goto LABEL_31;
              }

              v15 = 0;
              v13 = 0;
            }

            v19 = [v16 identifier];
            v20 = sub_190D56F10();
            v22 = v21;

            if (v15)
            {
              if (v22)
              {
                if (v13 == v20 && v15 == v22)
                {

                  v17 = 1;
                }

                else
                {
                  v17 = sub_190D58760();
                }

                goto LABEL_33;
              }

              goto LABEL_28;
            }

            if (v22)
            {
              v17 = 0;
              goto LABEL_33;
            }

LABEL_31:
            v17 = 1;
            return v17 & 1;
          }
        }
      }

      else if (!v7)
      {
        goto LABEL_14;
      }
    }
  }

  v17 = 0;
  return v17 & 1;
}

uint64_t sub_190AE3DCC(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (*(a1 + 16) == 1)
    {
      if (v6 != 1)
      {
        return 0;
      }

      v7 = v4 == v5 && *(a1 + 8) == *(a2 + 8);
      if (!v7 && (sub_190D58760() & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v6 != 2)
      {
        return 0;
      }

      v9 = [v4 stickerIdentifier];
      v10 = sub_190D56F10();
      v12 = v11;

      v13 = [v5 stickerIdentifier];
      v14 = sub_190D56F10();
      v16 = v15;

      if (v10 == v14 && v12 == v16)
      {

        goto LABEL_21;
      }

      v18 = sub_190D58760();

      if ((v18 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    if (*(a2 + 16))
    {
      return 0;
    }

    v8 = [v4 associatedMessageType];
    if (v8 != [v5 associatedMessageType])
    {
      return 0;
    }
  }

LABEL_21:
  if ((sub_1909A72E4(*(a1 + 24), *(a2 + 24)) & 1) == 0)
  {
    return 0;
  }

  v19 = type metadata accessor for AttributedTapbackItem();
  if ((sub_190D517D0() & 1) == 0 || *(*(a1 + *(v19 + 28)) + 16) != *(*(a2 + *(v19 + 28)) + 16))
  {
    return 0;
  }

  v20 = *(v19 + 32);
  v21 = *(a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  if (v21 == *v23 && v22 == v23[1])
  {
    return 1;
  }

  return sub_190D58760();
}

id sub_190AE3FCC(void *a1)
{
  v1 = [a1 transferGUID];
  if (!v1)
  {
    sub_190D56F10();
    v1 = sub_190D56ED0();
  }

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v3 = result;
    v4 = [result mediaObjectWithTransferGUID:v1 imMessage:0];

    if (v4 && (objc_opt_self(), (v5 = swift_dynamicCastObjCClass()) != 0))
    {
      v6 = [objc_opt_self() saveableStickerForMediaObject_];
      if (v6)
      {
        v7 = v6;

        return v7;
      }

      if (qword_1EAD52008 != -1)
      {
        swift_once();
      }

      v18 = sub_190D53040();
      __swift_project_value_buffer(v18, qword_1EAD9E5D8);
      v12 = sub_190D53020();
      v19 = sub_190D576A0();
      if (!os_log_type_enabled(v12, v19))
      {
        goto LABEL_14;
      }

      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_19020E000, v12, v19, "Could not retrieve saveable sticker from mediaObject", v20, 2u);
      v17 = v20;
    }

    else
    {
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D080);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D088);
      v8 = sub_190D56F50();
      v10 = v9;
      if (qword_1EAD52008 != -1)
      {
        swift_once();
      }

      v11 = sub_190D53040();
      __swift_project_value_buffer(v11, qword_1EAD9E5D8);
      sub_190D52690();
      v12 = sub_190D53020();
      v13 = sub_190D576A0();

      if (!os_log_type_enabled(v12, v13))
      {

        goto LABEL_14;
      }

      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v21 = v15;
      *v14 = 136315138;
      v16 = sub_19021D9F8(v8, v10, &v21);

      *(v14 + 4) = v16;
      _os_log_impl(&dword_19020E000, v12, v13, "Expected CKAnimatedStickerMediaObject but received %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x193AF7A40](v15, -1, -1);
      v17 = v14;
    }

    MEMORY[0x193AF7A40](v17, -1, -1);
LABEL_14:

    return 0;
  }

  __break(1u);
  return result;
}

void sub_190AE4304(void *a1, void *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53040);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_190DD1D90;
  v7 = [a2 fullName];
  if (v7)
  {
    v8 = v7;
    v9 = sub_190D56F10();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = sub_19081EA10();
  if (!v11)
  {
    v12 = [a2 displayID];
    v9 = sub_190D56F10();
    v11 = v13;
  }

  *(v6 + 32) = v9;
  *(v6 + 40) = v11;
  v14 = CKFrameworkBundle();
  if (!v14)
  {
    __break(1u);
    goto LABEL_21;
  }

  v15 = v14;
  v16 = sub_190D56ED0();
  v17 = sub_190D56ED0();
  v18 = [v15 localizedStringForKey:v16 value:0 table:v17];

  sub_190D56F10();
  sub_190D56EE0();

  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  v20 = a1;
  v21 = [v3 delegate];
  if (v21)
  {
    v22 = v21;
    if ([v21 respondsToSelector_])
    {
      v23 = [v22 presentingViewControllerForAlertsFromDetailsAdapter_];
      swift_unknownObjectRelease();
      v24 = v23;
      if (v23)
      {
        goto LABEL_13;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v24 = v20;
LABEL_13:
  *(v19 + 16) = v24;

  v25 = sub_190D56ED0();

  v26 = [objc_opt_self() alertControllerWithTitle:v25 message:0 preferredStyle:1];

  v27 = [v3 conversation];
  v28 = CKFrameworkBundle();
  if (!v28)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return;
  }

  v29 = v28;
  v30 = sub_190D56ED0();
  v31 = sub_190D56ED0();
  v32 = [v29 localizedStringForKey:v30 value:0 table:v31];

  if (!v32)
  {
    sub_190D56F10();
    v32 = sub_190D56ED0();
  }

  v33 = swift_allocObject();
  v33[2] = v27;
  v33[3] = a2;
  v33[4] = v19;
  aBlock[4] = sub_190AE62B4;
  aBlock[5] = v33;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19084156C;
  aBlock[3] = &block_descriptor_28_0;
  v34 = _Block_copy(aBlock);
  v44 = v27;
  v35 = a2;
  sub_190D50920();

  v36 = objc_opt_self();
  v37 = [v36 actionWithTitle:v32 style:2 handler:v34];
  _Block_release(v34);

  [v26 addAction_];
  v38 = CKFrameworkBundle();
  if (!v38)
  {
    goto LABEL_22;
  }

  v39 = v38;
  v40 = sub_190D56ED0();
  v41 = sub_190D56ED0();
  v42 = [v39 localizedStringForKey:v40 value:0 table:v41];

  if (!v42)
  {
    sub_190D56F10();
    v42 = sub_190D56ED0();
  }

  v43 = [v36 actionWithTitle:v42 style:1 handler:0];

  [v26 addAction_];
  swift_beginAccess();
  [v26 presentFromViewController:*(v19 + 16) animated:1 completion:0];
}

void sub_190AE4890(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_190DD55F0;
  *(v7 + 32) = a3;
  sub_1902188FC(0, &qword_1EAD44E70);
  v8 = a3;
  v9 = sub_190D57160();

  [a2 removeRecipientHandles_];

  v10 = [a2 chat];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 hasSiblingRecipientsSharingLocation];

    if (v12)
    {
      v13 = CKFrameworkBundle();
      if (v13)
      {
        v14 = v13;
        v15 = sub_190D56ED0();
        v16 = sub_190D56ED0();
        v17 = [v14 localizedStringForKey:v15 value:0 table:v16];

        sub_190D56F10();
        v18 = sub_190D56ED0();

        v19 = [objc_opt_self() alertControllerWithTitle:0 message:v18 preferredStyle:1];

        v20 = CKFrameworkBundle();
        if (v20)
        {
          v21 = v20;
          v22 = sub_190D56ED0();
          v23 = sub_190D56ED0();
          v24 = [v21 localizedStringForKey:v22 value:0 table:v23];

          sub_190D56F10();
          v25 = swift_allocObject();
          *(v25 + 16) = a2;
          v26 = a2;
          v27 = sub_190D56ED0();

          v38[4] = sub_190AE6340;
          v38[5] = v25;
          v38[0] = MEMORY[0x1E69E9820];
          v38[1] = 1107296256;
          v38[2] = sub_19084156C;
          v38[3] = &block_descriptor_34_0;
          v28 = _Block_copy(v38);

          v29 = objc_opt_self();
          v30 = [v29 actionWithTitle:v27 style:0 handler:v28];
          _Block_release(v28);

          [v19 addAction_];
          v31 = CKFrameworkBundle();
          if (v31)
          {
            v32 = v31;
            v33 = sub_190D56ED0();
            v34 = sub_190D56ED0();
            v35 = [v32 localizedStringForKey:v33 value:0 table:v34];

            sub_190D56F10();
            v36 = sub_190D56ED0();

            v37 = [v29 actionWithTitle:v36 style:1 handler:0];

            [v19 addAction_];
            swift_beginAccess();
            [*(a4 + 16) presentViewController:v19 animated:1 completion:0];

            return;
          }

LABEL_10:
          __break(1u);
          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_10;
    }
  }
}

void sub_190AE4DA0(void *a1)
{
  v3 = v1;
  v5 = CKFrameworkBundle();
  if (!v5)
  {
    __break(1u);
LABEL_18:

    __break(1u);
    goto LABEL_19;
  }

  v6 = v5;
  v7 = sub_190D56ED0();
  v8 = sub_190D56ED0();
  v9 = &selRef_loadFrequentRepliesLimit_loadImmediately_;
  v2 = [v6 localizedStringForKey:v7 value:0 table:v8];

  if (!v2)
  {
    sub_190D56F10();
    v2 = sub_190D56ED0();
  }

  v10 = CKFrameworkBundle();
  if (!v10)
  {
    goto LABEL_18;
  }

  v11 = v10;
  v12 = sub_190D56ED0();
  v13 = sub_190D56ED0();
  v14 = [v11 localizedStringForKey:v12 value:0 table:v13];

  v15 = v14;
  v16 = v14;
  if (!v14)
  {
    sub_190D56F10();
    v16 = sub_190D56ED0();

    sub_190D56F10();
    v15 = sub_190D56ED0();
  }

  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  v18 = a1;
  v19 = v14;
  v20 = [v3 delegate];
  if (v20)
  {
    v21 = v20;
    if ([v20 respondsToSelector_])
    {
      v22 = [v21 presentingViewControllerForAlertsFromDetailsAdapter_];
      swift_unknownObjectRelease();
      v23 = v22;
      v9 = &selRef_loadFrequentRepliesLimit_loadImmediately_;
      if (v22)
      {
        goto LABEL_13;
      }
    }

    else
    {
      swift_unknownObjectRelease();
      v9 = &selRef_loadFrequentRepliesLimit_loadImmediately_;
    }
  }

  v23 = v18;
LABEL_13:
  *(v17 + 16) = v23;

  v24 = [objc_opt_self() alertControllerWithTitle:v16 message:v2 preferredStyle:1];
  v25 = [v3 conversation];
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  *(v26 + 24) = v17;
  aBlock[4] = sub_190AE6250;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19084156C;
  aBlock[3] = &block_descriptor_15_1;
  v27 = _Block_copy(aBlock);
  v36 = v25;
  sub_190D50920();

  v28 = objc_opt_self();
  v29 = [v28 actionWithTitle:v15 style:2 handler:v27];
  _Block_release(v27);

  [v24 addAction_];
  v30 = CKFrameworkBundle();
  if (!v30)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v31 = v30;
  v32 = sub_190D56ED0();
  v33 = sub_190D56ED0();
  v34 = [v31 v9[72]];

  if (!v34)
  {
    sub_190D56F10();
    v34 = sub_190D56ED0();
  }

  v35 = [v28 actionWithTitle:v34 style:1 handler:0];

  [v24 addAction_];
  swift_beginAccess();
  [v24 presentFromViewController:*(v17 + 16) animated:1 completion:0];
}

void sub_190AE5270(int a1, id a2, uint64_t a3)
{
  [a2 leave];
  v5 = [a2 chat];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 hasSiblingRecipientsSharingLocation];

    if (v7)
    {
      v8 = CKFrameworkBundle();
      if (v8)
      {
        v9 = v8;
        v10 = sub_190D56ED0();
        v11 = sub_190D56ED0();
        v12 = [v9 localizedStringForKey:v10 value:0 table:v11];

        sub_190D56F10();
        v13 = sub_190D56ED0();

        v14 = [objc_opt_self() alertControllerWithTitle:0 message:v13 preferredStyle:1];

        v15 = CKFrameworkBundle();
        if (v15)
        {
          v16 = v15;
          v17 = sub_190D56ED0();
          v18 = sub_190D56ED0();
          v19 = [v16 localizedStringForKey:v17 value:0 table:v18];

          sub_190D56F10();
          v20 = swift_allocObject();
          *(v20 + 16) = a2;
          v21 = a2;
          v22 = sub_190D56ED0();

          v33[4] = sub_190AE6258;
          v33[5] = v20;
          v33[0] = MEMORY[0x1E69E9820];
          v33[1] = 1107296256;
          v33[2] = sub_19084156C;
          v33[3] = &block_descriptor_21_2;
          v23 = _Block_copy(v33);

          v24 = objc_opt_self();
          v25 = [v24 actionWithTitle:v22 style:0 handler:v23];
          _Block_release(v23);

          [v14 addAction_];
          v26 = CKFrameworkBundle();
          if (v26)
          {
            v27 = v26;
            v28 = sub_190D56ED0();
            v29 = sub_190D56ED0();
            v30 = [v27 localizedStringForKey:v28 value:0 table:v29];

            sub_190D56F10();
            v31 = sub_190D56ED0();

            v32 = [v24 actionWithTitle:v31 style:1 handler:0];

            [v14 addAction_];
            swift_beginAccess();
            [*(a3 + 16) presentViewController:v14 animated:1 completion:0];

            return;
          }

LABEL_10:
          __break(1u);
          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_10;
    }
  }
}

void sub_190AE56F4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = sub_190D51840();
  v8 = *(v7 - 8);
  *&v9 = MEMORY[0x1EEE9AC00](v7).n128_u64[0];
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a2 chat];
  if (!v12)
  {
    goto LABEL_7;
  }

  v13 = v12;
  v14 = [v12 hasSiblingRecipientsSharingLocation];

  if (!v14)
  {
    goto LABEL_7;
  }

  v46 = a3;
  v47 = a4;
  v15 = CKFrameworkBundle();
  if (!v15)
  {
    __break(1u);
    goto LABEL_11;
  }

  v16 = v15;
  v17 = sub_190D56ED0();
  v18 = sub_190D56ED0();
  v19 = [v16 localizedStringForKey:v17 value:0 table:v18];

  sub_190D56F10();
  v20 = sub_190D56ED0();

  v21 = [objc_opt_self() alertControllerWithTitle:0 message:v20 preferredStyle:1];

  v22 = CKFrameworkBundle();
  if (!v22)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v23 = v22;
  v24 = sub_190D56ED0();
  v25 = sub_190D56ED0();
  v26 = [v23 localizedStringForKey:v24 value:0 table:v25];

  sub_190D56F10();
  v27 = swift_allocObject();
  *(v27 + 16) = a2;
  v28 = a2;
  v29 = sub_190D56ED0();

  aBlock[4] = sub_190AE6340;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19084156C;
  aBlock[3] = &block_descriptor_6_6;
  v30 = _Block_copy(aBlock);

  v31 = objc_opt_self();
  v32 = [v31 actionWithTitle:v29 style:0 handler:v30];
  _Block_release(v30);

  [v21 addAction_];
  v33 = CKFrameworkBundle();
  if (!v33)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v34 = v33;
  v35 = sub_190D56ED0();
  v36 = sub_190D56ED0();
  v37 = [v34 localizedStringForKey:v35 value:0 table:v36];

  sub_190D56F10();
  v38 = sub_190D56ED0();

  v39 = [v31 actionWithTitle:v38 style:1 handler:0];

  [v21 addAction_];
  [v46 presentViewController:v21 animated:1 completion:0];

  a4 = v47;
LABEL_7:
  [a2 updateDeletingIncomingMessages_];
  v40 = [objc_opt_self() sharedConversationList];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_190DD55F0;
  *(v41 + 32) = a2;
  sub_1902188FC(0, &qword_1EAD466B0);
  v42 = a2;
  v43 = sub_190D57160();

  v44 = [objc_opt_self() now];
  sub_190D517E0();

  v45 = sub_190D51780();
  (*(v8 + 8))(v11, v7);
  [v40 recoverableDeleteForConversations:v43 deleteDate:v45 synchronousQuery:0 completionHandler:0];

  if (a4)
  {
    [a4 dismissDetailsViewAndShowConversationList];
  }
}

void sub_190AE5D24()
{
  v3 = CKFrameworkBundle();
  if (!v3)
  {
    __break(1u);
LABEL_21:

    __break(1u);
LABEL_22:

    __break(1u);
    goto LABEL_23;
  }

  v4 = v3;
  v5 = sub_190D56ED0();
  v2 = sub_190D56ED0();
  v1 = [v4 localizedStringForKey:v5 value:0 table:v2];

  if (!v1)
  {
    sub_190D56F10();
    v1 = sub_190D56ED0();
  }

  v6 = CKFrameworkBundle();
  if (!v6)
  {
    goto LABEL_21;
  }

  v7 = v6;
  v8 = sub_190D56ED0();
  v9 = sub_190D56ED0();
  v2 = [v7 localizedStringForKey:v8 value:0 table:v9];

  if (!v2)
  {
    sub_190D56F10();
    v2 = sub_190D56ED0();
  }

  v10 = CKFrameworkBundle();
  if (!v10)
  {
    goto LABEL_22;
  }

  v11 = v10;
  v12 = sub_190D56ED0();
  v13 = sub_190D56ED0();
  v14 = [v11 localizedStringForKey:v12 value:0 table:v13];

  if (!v14)
  {
    sub_190D56F10();
    v14 = sub_190D56ED0();
  }

  v15 = [v0 delegate];
  if (v15)
  {
    v16 = v15;
    if ([v15 respondsToSelector_])
    {
      v17 = [v16 presentingViewControllerForAlertsFromDetailsAdapter_];
      swift_unknownObjectRelease();
      if (v17)
      {
        goto LABEL_16;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v17 = [v0 detailsController];
LABEL_16:
  v18 = [objc_opt_self() alertControllerWithTitle:v1 message:v2 preferredStyle:1];

  v19 = [v0 conversation];
  v20 = [v0 delegate];
  v21 = swift_allocObject();
  v21[2] = v19;
  v21[3] = v17;
  v21[4] = v20;
  aBlock[4] = sub_190AE6244;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19084156C;
  aBlock[3] = &block_descriptor_74;
  v22 = _Block_copy(aBlock);
  v32 = v19;
  v23 = v17;
  swift_unknownObjectRetain();

  v24 = objc_opt_self();
  v25 = [v24 actionWithTitle:v14 style:2 handler:v22];
  _Block_release(v22);

  [v18 addAction_];
  v26 = CKFrameworkBundle();
  if (!v26)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v27 = v26;
  v28 = sub_190D56ED0();
  v29 = sub_190D56ED0();
  v30 = [v27 localizedStringForKey:v28 value:0 table:v29];

  if (!v30)
  {
    sub_190D56F10();
    v30 = sub_190D56ED0();
  }

  v31 = [v24 actionWithTitle:v30 style:1 handler:0];

  [v18 addAction_];
  [v18 presentFromViewController:v23 animated:1 completion:0];

  swift_unknownObjectRelease();
}

uint64_t objectdestroyTm_27(void (*a1)(void))
{
  a1(*(v1 + 32));

  return MEMORY[0x1EEE6BDD0](v1, 40, 7);
}

void sub_190AE62C0()
{
  v1 = [*(v0 + 16) chat];
  [v1 stopSharingLocation];
}

uint64_t _s23BackgroundsDisabledViewVMa()
{
  result = qword_1EAD5D0F0;
  if (!qword_1EAD5D0F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_190AE63B8()
{
  sub_190AE6424();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_190AE6424()
{
  if (!qword_1EAD57640)
  {
    sub_190D53DF0();
    v0 = sub_190D53A80();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAD57640);
    }
  }
}

uint64_t sub_190AE6498@<X0>(uint64_t a1@<X8>)
{
  v79 = a1;
  v2 = _s23BackgroundsDisabledViewVMa();
  v75 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v76 = v3;
  v77 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_190D543E0() - 8;
  MEMORY[0x1EEE9AC00](v74);
  v67 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_190D55430();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_190D511C0();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D100);
  MEMORY[0x1EEE9AC00](v80);
  v11 = &v67 - v10;
  v78 = v1;
  sub_190AE6B20();
  v12 = sub_190D555E0();
  v14 = v13;
  v16 = v15;
  KeyPath = v17;
  sub_190D55480();
  (*(v6 + 104))(v8, *MEMORY[0x1E6980EA8], v5);
  sub_190D55460();

  (*(v6 + 8))(v8, v5);
  v18 = sub_190D555B0();
  v72 = v19;
  v73 = v18;
  LOBYTE(v8) = v20;
  v71 = v21;
  v22 = v67;

  sub_19081E474(v12, v14, v16 & 1);

  KeyPath = swift_getKeyPath();
  v69 = sub_190D55310();
  sub_190D539C0();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = v8 & 1;
  LOBYTE(v84) = v8 & 1;
  v81 = 0;
  v68 = sub_190D552A0();
  sub_190D539C0();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v82 = 0;
  sub_190D56500();
  sub_190D54430();
  *&v83[55] = v87;
  *&v83[71] = v88;
  *&v83[87] = v89;
  *&v83[103] = v90;
  *&v83[7] = v84;
  *&v83[23] = v85;
  *&v83[39] = v86;
  v40 = sub_190D56500();
  v42 = v41;
  v43 = *(v80 + 36);
  v44 = *(v74 + 28);
  v45 = *MEMORY[0x1E697F468];
  v46 = sub_190D54A20();
  (*(*(v46 - 8) + 104))(&v22[v44], v45, v46);
  __asm { FMOV            V0.2D, #26.0 }

  *v22 = _Q0;
  if (qword_1EAD51DA0 != -1)
  {
    swift_once();
  }

  v52 = &v11[v43];
  v53 = sub_190D52990();
  v54 = __swift_project_value_buffer(v53, qword_1EAD9E210);
  sub_190AE71E0(v22, v52, MEMORY[0x1E697EAF0]);
  v55 = v22;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D108);
  (*(*(v53 - 8) + 16))(v52 + *(v56 + 52), v54, v53);
  sub_1909586B8(v55);
  *(v52 + *(v56 + 56)) = 256;
  v57 = (v52 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D110) + 36));
  *v57 = v40;
  v57[1] = v42;
  v58 = v72;
  *v11 = v73;
  *(v11 + 1) = v58;
  v11[16] = v31;
  v59 = KeyPath;
  *(v11 + 3) = v71;
  *(v11 + 4) = v59;
  v11[40] = 1;
  LOBYTE(v59) = v68;
  v11[48] = v69;
  *(v11 + 7) = v24;
  *(v11 + 8) = v26;
  *(v11 + 9) = v28;
  *(v11 + 10) = v30;
  v11[88] = 0;
  v11[96] = v59;
  *(v11 + 13) = v33;
  *(v11 + 14) = v35;
  *(v11 + 15) = v37;
  *(v11 + 16) = v39;
  v11[136] = 0;
  v60 = *&v83[80];
  *(v11 + 201) = *&v83[64];
  *(v11 + 217) = v60;
  *(v11 + 233) = *&v83[96];
  *(v11 + 31) = *&v83[111];
  v61 = *&v83[16];
  *(v11 + 137) = *v83;
  *(v11 + 153) = v61;
  v62 = *&v83[48];
  *(v11 + 169) = *&v83[32];
  *(v11 + 185) = v62;
  v63 = v77;
  sub_190AE71E0(v78, v77, _s23BackgroundsDisabledViewVMa);
  v64 = (*(v75 + 80) + 16) & ~*(v75 + 80);
  v65 = swift_allocObject();
  sub_190AE7248(v63, v65 + v64);
  sub_190AE7308();
  sub_190D557E0();

  return sub_19022EEA4(v11, &qword_1EAD5D100);
}

id sub_190AE6B20()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54C10);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v28 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D158);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v28 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D160);
  v29 = *(v6 - 8);
  v30 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v28 = &v28 - v7;
  v8 = sub_190D51290();
  MEMORY[0x1EEE9AC00](v8 - 8);
  result = CKFrameworkBundle();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v10 = result;
  v11 = sub_190D56ED0();
  v12 = sub_190D56ED0();
  v13 = [v10 localizedStringForKey:v11 value:0 table:v12];

  sub_190D56F10();
  result = CKFrameworkBundle();
  if (!result)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v14 = result;
  v15 = sub_190D56ED0();
  v16 = sub_190D56ED0();
  v17 = [v14 localizedStringForKey:v15 value:0 table:v16];

  v18 = sub_190D56F10();
  v20 = v19;

  sub_190D51280();
  sub_190D511D0();
  v21 = [objc_opt_self() secondaryLabelColor];
  v32[0] = sub_190D55CE0();
  sub_190AE752C();
  sub_190D511E0();
  v32[0] = v18;
  v32[1] = v20;
  v22 = sub_190D519C0();
  (*(*(v22 - 8) + 56))(v2, 1, 1, v22);
  sub_190D511C0();
  sub_190AE7580();
  sub_19081E484();
  sub_190D51480();
  sub_19022EEA4(v2, &qword_1EAD54C10);

  if ((*(v29 + 48))(v5, 1, v30) == 1)
  {
    v23 = &qword_1EAD5D158;
    v24 = v5;
  }

  else
  {
    v25 = v28;
    sub_190AE75D8(v5, v28);
    v26 = sub_190D55D50();
    sub_190233640(&qword_1EAD5D178, &qword_1EAD5D160);
    v27 = sub_190D511F0();
    v31 = v26;
    sub_190D512B0();
    v27(v32, 0);
    v24 = v25;
    v23 = &qword_1EAD5D160;
  }

  return sub_19022EEA4(v24, v23);
}

id sub_190AE6FEC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v12 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v12 - v4;
  sub_190D515E0();
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v7 = result;
    sub_190844DA8(v5, v2);
    v8 = sub_190D515F0();
    v9 = *(v8 - 8);
    v10 = 0;
    if ((*(v9 + 48))(v2, 1, v8) != 1)
    {
      v10 = sub_190D51570();
      (*(v9 + 8))(v2, v8);
    }

    sub_190820FDC(MEMORY[0x1E69E7CC0]);
    v11 = sub_190D56D60();

    [v7 openSensitiveURL:v10 withOptions:v11];

    return sub_19022EEA4(v5, &unk_1EAD55F20);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_190AE71E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_190AE7248(uint64_t a1, uint64_t a2)
{
  v4 = _s23BackgroundsDisabledViewVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_190AE7308()
{
  result = qword_1EAD5D118;
  if (!qword_1EAD5D118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5D100);
    sub_190AE73C0();
    sub_190233640(&qword_1EAD5D150, &qword_1EAD5D110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5D118);
  }

  return result;
}

unint64_t sub_190AE73C0()
{
  result = qword_1EAD5D120;
  if (!qword_1EAD5D120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5D128);
    sub_190AE74A8(&qword_1EAD5D130, &qword_1EAD5D138, &unk_190DF10D0, sub_190AE7478);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5D120);
  }

  return result;
}

uint64_t sub_190AE74A8(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_190AE752C()
{
  result = qword_1EAD5D168;
  if (!qword_1EAD5D168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5D168);
  }

  return result;
}

unint64_t sub_190AE7580()
{
  result = qword_1EAD5D170;
  if (!qword_1EAD5D170)
  {
    sub_190D511C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5D170);
  }

  return result;
}

uint64_t sub_190AE75D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D160);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s14descr1F03EB3E1C29DownloadPurgedAttachmentsViewVMa()
{
  result = qword_1EAD5D180;
  if (!qword_1EAD5D180)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_190AE76BC()
{
  result = _s14descr1F03EBF51O9ViewModelCMa();
  if (v1 <= 0x3F)
  {
    result = sub_190D579B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_190AE775C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_19093B898();
  sub_190D51C20();

  v5 = *(v3 + 32);
  *a2 = *(v3 + 24);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_190AE77DC()
{
  swift_getKeyPath();
  sub_19093B898();
  sub_190D51C10();
}

uint64_t sub_190AE7880@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v46 = a1;
  v45 = _s14descr1F03EB3E1C29DownloadPurgedAttachmentsViewVMa();
  v3 = *(v45 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v5 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD563E0);
  v7 = *(v6 - 8);
  v41 = v6;
  v42 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = v39 - v8;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD530E8);
  MEMORY[0x1EEE9AC00](v40);
  v11 = v39 - v10;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D190);
  MEMORY[0x1EEE9AC00](v43);
  v44 = v39 - v12;
  v13 = *v1;
  v47 = sub_19093AF34();
  v48 = v14;
  sub_190AE8350(v1, v5);
  v15 = *(v3 + 80);
  v16 = (v15 + 16) & ~v15;
  v17 = v4;
  v18 = v15;
  v19 = swift_allocObject();
  sub_190AE83B4(v5, v19 + v16);
  sub_19081E484();
  sub_190D56080();
  swift_getKeyPath();
  v47 = v13;
  sub_19093B898();
  sub_190D51C20();

  v20 = 0;
  if ((v13[32] & 1) == 0)
  {
    v20 = sub_190D55E10();
  }

  KeyPath = swift_getKeyPath();
  (*(v42 + 32))(v11, v9, v41);
  v22 = &v11[*(v40 + 36)];
  *v22 = KeyPath;
  v22[1] = v20;
  v23 = v45;
  v40 = *(v45 + 20);
  sub_190AE8350(v2, v5);
  v39[1] = v18;
  v39[2] = v17;
  v24 = swift_allocObject();
  sub_190AE83B4(v5, v24 + v16);
  v25 = v44;
  sub_19081E40C(v11, v44, &unk_1EAD530E8);
  v26 = v2;
  v27 = v16;
  v28 = v43;
  v29 = *(v43 + 52);
  v30 = sub_190D579B0();
  v31 = *(v30 - 8);
  v41 = *(v31 + 16);
  v42 = v31 + 16;
  v41(v25 + v29, v26 + v40, v30);
  v32 = (v25 + *(v28 + 56));
  *v32 = sub_190AE8474;
  v32[1] = v24;
  v33 = *(v23 + 24);
  sub_190AE8350(v26, v5);
  v34 = swift_allocObject();
  sub_190AE83B4(v5, v34 + v27);
  v35 = v46;
  sub_19081E40C(v25, v46, &qword_1EAD5D190);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D198);
  result = (v41)(v35 + *(v36 + 52), v26 + v33, v30);
  v38 = (v35 + *(v36 + 56));
  *v38 = sub_190AE85A8;
  v38[1] = v34;
  return result;
}

uint64_t sub_190AE7D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_190D572A0();
  v4[3] = sub_190D57290();
  v6 = sub_190D57240();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x1EEE6DFA0](sub_190AE7D98, v6, v5);
}

uint64_t sub_190AE7D98()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_190AE7E2C;

  return sub_19093B314();
}

uint64_t sub_190AE7E2C()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x1EEE6DFA0](sub_1909F3328, v3, v2);
}

uint64_t sub_190AE7F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = _s14descr1F03EB3E1C29DownloadPurgedAttachmentsViewVMa();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v18 - v10;
  v12 = sub_190D572E0();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_190AE8350(a2, &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_190D572A0();
  v13 = sub_190D57290();
  v14 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v15 = swift_allocObject();
  v16 = MEMORY[0x1E69E85E0];
  *(v15 + 16) = v13;
  *(v15 + 24) = v16;
  sub_190AE83B4(&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  sub_190857E08(0, 0, v11, a4, v15);
}

uint64_t sub_190AE8100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_190D572A0();
  v4[3] = sub_190D57290();
  v6 = sub_190D57240();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x1EEE6DFA0](sub_190AE8198, v6, v5);
}

uint64_t sub_190AE8198()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_190AE822C;

  return sub_19093B314();
}

uint64_t sub_190AE822C()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x1EEE6DFA0](sub_190AE89C4, v3, v2);
}

uint64_t sub_190AE8350(uint64_t a1, uint64_t a2)
{
  v4 = _s14descr1F03EB3E1C29DownloadPurgedAttachmentsViewVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_190AE83B4(uint64_t a1, uint64_t a2)
{
  v4 = _s14descr1F03EB3E1C29DownloadPurgedAttachmentsViewVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_28()
{
  v1 = (_s14descr1F03EB3E1C29DownloadPurgedAttachmentsViewVMa() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_190D579B0();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v3 + v5, v6);
  v7(v0 + v3 + v1[8], v6);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_190AE8644(uint64_t a1)
{
  v4 = *(_s14descr1F03EB3E1C29DownloadPurgedAttachmentsViewVMa() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_190221DA0;

  return sub_190AE8100(a1, v6, v7, v1 + v5);
}

uint64_t objectdestroy_13Tm_0()
{
  v1 = (_s14descr1F03EB3E1C29DownloadPurgedAttachmentsViewVMa() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = v1[7];
  v6 = sub_190D579B0();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v3 + v5, v6);
  v7(v0 + v3 + v1[8], v6);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_190AE8850(uint64_t a1)
{
  v4 = *(_s14descr1F03EB3E1C29DownloadPurgedAttachmentsViewVMa() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_190221DA4;

  return sub_190AE7D00(a1, v6, v7, v1 + v5);
}

unint64_t sub_190AE8960()
{
  result = qword_1EAD5D1A0;
  if (!qword_1EAD5D1A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5D198);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5D1A0);
  }

  return result;
}

double sub_190AE89C8@<D0>(uint64_t a1@<X8>)
{
  v31 = sub_190D540E0();
  v29 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v27 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_190D55350();
  v28 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D1A8);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v26 - v9;
  v11 = sub_190D554A0();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v26 - v16;
  v18 = *(v12 + 56);
  v18(v10, 1, 1, v11);
  sub_190AE8DEC(v10);
  v18(v10, 1, 1, v11);
  sub_190AE8E54(v10, v8);
  if ((*(v12 + 48))(v8, 1, v11) == 1)
  {
    sub_190AE8DEC(v8);
    v19 = v17;
    (*(v12 + 104))(v17, *MEMORY[0x1E6980F30], v11);
  }

  else
  {
    v19 = v17;
    (*(v12 + 32))(v17, v8, v11);
  }

  (*(v12 + 16))(v15, v19, v11);
  sub_190D553D0();
  (*(v29 + 104))(v27, *MEMORY[0x1E697E6E8], v31);
  sub_190D55340();
  sub_190D55330();
  v21 = v20;
  (*(v28 + 8))(v4, v30);
  sub_190D55480();
  sub_190D553D0();
  v22 = sub_190D55420();

  v23 = sub_190D55D50();
  v24 = sub_190D55D50();
  (*(v12 + 8))(v19, v11);
  *a1 = v21;
  *(a1 + 8) = xmmword_190DF11F0;
  *(a1 + 24) = v22;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = v23;
  *(a1 + 80) = v24;
  return result;
}

uint64_t sub_190AE8DEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D1A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_190AE8E54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D1A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_190AE8EE8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_190AE8F30(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_190AE8F94@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v37 = a2;
  v39 = a4;
  v6 = sub_190D51040();
  v38 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v36 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_190D50FD0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v36 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57CB8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v36 - v16;
  sub_190D51020();
  if (a3)
  {
    sub_190D50FC0();
    v18 = sub_1908369D0(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v20 = v18[2];
    v19 = v18[3];
    if (v20 >= v19 >> 1)
    {
      v18 = sub_1908369D0(v19 > 1, v20 + 1, 1, v18);
    }

    v18[2] = v20 + 1;
    (*(v9 + 32))(v18 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v20, v14, v8);
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC0];
  }

  v21 = [a1 description];
  v22 = sub_190D56F10();
  v24 = v23;

  v40 = v22;
  v41 = v24;
  MEMORY[0x193AF28B0](44, 0xE100000000000000);
  v25 = [v37 description];
  v26 = sub_190D56F10();
  v28 = v27;

  MEMORY[0x193AF28B0](v26, v28);

  sub_190D50FC0();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v18 = sub_1908369D0(0, v18[2] + 1, 1, v18);
  }

  v30 = v18[2];
  v29 = v18[3];
  if (v30 >= v29 >> 1)
  {
    v18 = sub_1908369D0(v29 > 1, v30 + 1, 1, v18);
  }

  v18[2] = v30 + 1;
  (*(v9 + 32))(v18 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v30, v11, v8);
  v31 = v38;
  v32 = *(v38 + 48);
  if (v32(v17, 1, v6))
  {
  }

  else
  {
    sub_190D50FE0();
  }

  if (v32(v17, 1, v6))
  {
    v33 = sub_190D515F0();
    (*(*(v33 - 8) + 56))(v39, 1, 1, v33);
  }

  else
  {
    v34 = v36;
    (*(v31 + 16))(v36, v17, v6);
    sub_190D50FF0();
    (*(v31 + 8))(v34, v6);
  }

  return sub_19022EEA4(v17, &qword_1EAD57CB8);
}

uint64_t sub_190AE9440@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_190D51040();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57CB8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12 - v7;
  sub_190D51020();
  v9 = *(v3 + 48);
  if (!v9(v8, 1, v2))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53F60);
    sub_190D50FD0();
    v13 = a1;
    *(swift_allocObject() + 16) = xmmword_190DD1D90;
    a1 = v13;
    sub_190D50FC0();
    sub_190D50FE0();
  }

  if (v9(v8, 1, v2))
  {
    v10 = sub_190D515F0();
    (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  }

  else
  {
    (*(v3 + 16))(v5, v8, v2);
    sub_190D50FF0();
    (*(v3 + 8))(v5, v2);
  }

  return sub_19022EEA4(v8, &qword_1EAD57CB8);
}

uint64_t sub_190AE9710(void *a1)
{
  v2 = sub_190D515F0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v38 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v36 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - v12;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v36 - v16;
  v39 = v3;
  (*(v3 + 56))(&v36 - v16, 1, 1, v2, v15);
  v18 = [a1 latitude];
  if (v18)
  {
    v19 = v18;
    v37 = v2;
    v20 = [a1 longitude];
    if (v20)
    {
      v21 = v20;
      v22 = [a1 label];
      if (v22)
      {
        v23 = v22;
        sub_190D56F10();
        v25 = v24;
      }

      else
      {
        v25 = 0;
      }

      sub_190AE8F94(v19, v21, v25, v13);

      v2 = v37;
      goto LABEL_10;
    }

    v2 = v37;
  }

  v26 = [a1 query];
  if (!v26)
  {
    goto LABEL_11;
  }

  v27 = v26;
  sub_190D56F10();

  sub_190AE9440(v10);
  v13 = v10;
LABEL_10:

  sub_19022EEA4(v17, &unk_1EAD55F20);
  sub_190844E18(v13, v17);
LABEL_11:
  sub_190844DA8(v17, v7);
  v28 = v39;
  if ((*(v39 + 48))(v7, 1, v2) == 1)
  {
    sub_19022EEA4(v7, &unk_1EAD55F20);
    v29 = [a1 fallbackUrl];
    if (v29)
    {
      v30 = v29;
      sub_190D56F10();
    }

    sub_190B3AA78();
  }

  else
  {
    v31 = v38;
    (*(v28 + 32))(v38, v7, v2);
    v32 = [objc_opt_self() sharedApplication];
    v33 = sub_190D51570();
    sub_19082233C(MEMORY[0x1E69E7CC0]);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_190964630();
    v34 = sub_190D56D60();

    [v32 openURL:v33 options:v34 completionHandler:0];

    (*(v28 + 8))(v31, v2);
  }

  return sub_19022EEA4(v17, &unk_1EAD55F20);
}

double sub_190AE9C5C()
{
  v1 = sub_190D56B90();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v0 + OBJC_IVAR___CKResolvedBubbleMaterialConfiguration_wrapped, v1, v3);
  sub_190D56B40();
  v7 = v6;
  (*(v2 + 8))(v5, v1);
  return v7;
}

uint64_t sub_190AE9EA4()
{
  v1 = sub_190D56B90();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v0 + OBJC_IVAR___CKResolvedBubbleMaterialConfiguration_wrapped, v1, v3);
  v6 = sub_190D56B80();
  (*(v2 + 8))(v5, v1);
  return v6;
}

id sub_190AE9FAC(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = sub_190D56B90();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a1 + OBJC_IVAR___CKResolvedBubbleMaterialConfiguration_wrapped, v5, v7);
  v10 = a1;
  v11 = a3();
  (*(v6 + 8))(v9, v5);
  v12 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];

  return v12;
}

id sub_190AEA108(uint64_t (*a1)(uint64_t))
{
  v3 = sub_190D56B90();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (*(v4 + 16))(v7, v1 + OBJC_IVAR___CKResolvedBubbleMaterialConfiguration_wrapped, v3, v5);
  v9 = a1(v8);
  (*(v4 + 8))(v7, v3);
  v10 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithCGColor_];

  return v10;
}

uint64_t sub_190AEA3E8()
{
  v1 = sub_190D56A60();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_190D56B90();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v0 + OBJC_IVAR___CKResolvedBubbleMaterialConfiguration_wrapped, v5, v7);
  sub_190D56B50();
  (*(v6 + 8))(v9, v5);
  v10 = sub_190D56A50();
  (*(v2 + 8))(v4, v1);
  return v10;
}

id CKBubbleMaterialConfiguration.Resolved.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CKBubbleMaterialConfiguration.Resolved.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKBubbleMaterialConfiguration.Resolved();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for CKBubbleMaterialConfiguration.Resolved()
{
  result = qword_1EAD5D1B8;
  if (!qword_1EAD5D1B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_190AEA710()
{
  result = sub_190D56B90();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_190AEA8BC()
{
  v1 = v0;
  v66 = sub_190D56770();
  v2 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v65 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_190D567A0();
  v4 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v63 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_190D51C00();
  v67 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_190D567F0();
  v9 = *(v72 - 8);
  v10 = MEMORY[0x1EEE9AC00](v72);
  v62 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v61 = &v48 - v13;
  result = MEMORY[0x1EEE9AC00](v12);
  v71 = &v48 - v15;
  v16 = OBJC_IVAR___CKTapbackPickerViewController_needsPresentationAnimation;
  if (*(v0 + OBJC_IVAR___CKTapbackPickerViewController_needsPresentationAnimation) == 1)
  {
    v17 = sub_19098B380();
    v18 = [v17 indexPathsForVisibleItems];

    v19 = sub_190D57180();
    if (v19[2])
    {
      v48 = v9;
      *(v1 + v16) = 0;
      aBlock[0] = v19;
      sub_190D52690();
      sub_190AEB14C(aBlock);

      v20 = aBlock[0];
      sub_190D567B0();
      v56 = v20[2];
      if (v56)
      {
        v21 = 0;
        v60 = OBJC_IVAR___CKTapbackPickerViewController____lazy_storage___collectionView;
        v59 = v67 + 16;
        v58 = (v48 + 8);
        v51 = v74;
        v50 = (v2 + 8);
        v49 = (v4 + 8);
        v57 = (v67 + 8);
        v55 = v1;
        v54 = v6;
        v53 = v8;
        v52 = v20;
        v22 = (v48 + 8);
        while (v21 < v20[2])
        {
          (*(v67 + 16))(v8, v20 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v21, v6);
          v34 = *(v1 + v60);
          v35 = sub_190D51BB0();
          v36 = [v34 cellForItemAtIndexPath_];

          if (!v36)
          {
            goto LABEL_24;
          }

          type metadata accessor for TapbackPickerCollectionViewCell();
          v37 = swift_dynamicCastClass();
          if (!v37)
          {

            goto LABEL_25;
          }

          v38 = v37;
          v39 = OBJC_IVAR____TtC7ChatKit31TapbackPickerCollectionViewCell_tapbackView;
          swift_beginAccess();
          v40 = *(v38 + v39);
          if (!v40)
          {

LABEL_24:

LABEL_25:
            (*v57)(v8, v6);
            return (*v58)(v71, v72);
          }

          type metadata accessor for TapbackClassicView();
          v41 = swift_dynamicCastClass();
          if (v41)
          {
            v42 = v41;
            v43 = objc_opt_self();
            v44 = v40;
            if ([v43 accessibilityAnimatedImagesDisabled])
            {
            }

            else
            {
              v46 = *(v42 + OBJC_IVAR___CKTapbackClassicView_asset);
              v47 = v46;

              if (v46)
              {
              }
            }
          }

          else
          {
            v45 = v40;
          }

          v70 = v36;
          if ([v40 respondsToSelector_])
          {
            [v40 prepareForAppearingAnimation];
          }

          v23 = v21 + 1;
          v24 = v62;
          sub_190D56820();
          v25 = v61;
          sub_190D56820();
          v69 = *v22;
          v69(v24, v72);
          sub_1908E9B68();
          v68 = sub_190D57870();
          v26 = swift_allocObject();
          *(v26 + 16) = v40;
          v74[2] = sub_190AEB1F4;
          v74[3] = v26;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          v74[0] = sub_190840E6C;
          v74[1] = &block_descriptor_75;
          v27 = _Block_copy(aBlock);
          v28 = v40;

          v29 = v63;
          sub_190D56790();
          aBlock[0] = MEMORY[0x1E69E7CC0];
          sub_190840DB0();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD546A0);
          sub_190840E08();
          v30 = v65;
          v31 = v66;
          sub_190D58170();
          v32 = v68;
          MEMORY[0x193AF30E0](v25, v29, v30, v27);
          _Block_release(v27);

          v33 = v30;
          v21 = v23;
          (*v50)(v33, v31);
          (*v49)(v29, v64);
          v69(v25, v72);
          v8 = v53;
          v6 = v54;
          (*v57)(v53, v54);
          v1 = v55;
          v20 = v52;
          if (v56 == v23)
          {
            goto LABEL_21;
          }
        }

        __break(1u);

        __break(1u);
      }

      else
      {
LABEL_21:

        return (*(v48 + 8))(v71, v72);
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_190AEB14C(void **a1)
{
  v2 = *(sub_190D51C00() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1909E39D0(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_190AEB204(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_190AEB204(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_190D58710();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_190D51C00();
        v6 = sub_190D571D0();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_190D51C00() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_190AEB5F4(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_190AEB330(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_190AEB330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_190D51C00();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v46 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v36 - v12;
  result = MEMORY[0x1EEE9AC00](v11);
  v17 = &v36 - v16;
  v38 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v20 = *(v15 + 16);
    v19 = v15 + 16;
    v21 = *(v19 + 56);
    v47 = (v19 - 8);
    v48 = v20;
    v49 = v19;
    v44 = (v19 + 16);
    v45 = v18;
    v22 = v18 + v21 * (a3 - 1);
    v43 = -v21;
    v23 = a1 - a3;
    v37 = v21;
    v24 = v18 + v21 * a3;
LABEL_5:
    v41 = v22;
    v42 = a3;
    v39 = v24;
    v40 = v23;
    v25 = v23;
    v26 = v22;
    while (1)
    {
      v27 = v48;
      v48(v17, v24, v8);
      v27(v13, v26, v8);
      v28 = sub_190D51BF0();
      if (v28 == sub_190D51BF0())
      {
        v29 = sub_190D51BE0();
        v30 = sub_190D51BE0();
      }

      else
      {
        v29 = sub_190D51BF0();
        v30 = sub_190D51BF0();
      }

      v31 = v29 < v30;
      v32 = *v47;
      (*v47)(v13, v8);
      result = (v32)(v17, v8);
      if (!v31)
      {
LABEL_4:
        a3 = v42 + 1;
        v22 = v41 + v37;
        v23 = v40 - 1;
        v24 = v39 + v37;
        if (v42 + 1 == v38)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v45)
      {
        break;
      }

      v33 = *v44;
      v34 = v46;
      (*v44)(v46, v24, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v33)(v26, v34, v8);
      v26 += v43;
      v24 += v43;
      if (__CFADD__(v25++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_190AEB5F4(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v142 = a1;
  v8 = sub_190D51C00();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v145 = &v136 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v157 = &v136 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v136 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v140 = &v136 - v21;
  result = MEMORY[0x1EEE9AC00](v20);
  v139 = &v136 - v26;
  v27 = a3[1];
  v152 = v9;
  if (v27 < 1)
  {
    v29 = MEMORY[0x1E69E7CC0];
LABEL_103:
    v30 = *v142;
    if (!*v142)
    {
      goto LABEL_141;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v8 = v152;
    if (result)
    {
LABEL_105:
      v163 = v29;
      v131 = *(v29 + 16);
      if (v131 >= 2)
      {
        while (*a3)
        {
          v132 = *(v29 + 16 * v131);
          v133 = v29;
          v134 = *(v29 + 16 * (v131 - 1) + 32);
          v29 = *(v29 + 16 * (v131 - 1) + 40);
          sub_190AEC158(*a3 + *(v8 + 72) * v132, *a3 + *(v8 + 72) * v134, *a3 + *(v8 + 72) * v29, v30);
          if (v5)
          {
          }

          if (v29 < v132)
          {
            goto LABEL_128;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v133 = sub_1909E383C(v133);
          }

          if (v131 - 2 >= *(v133 + 2))
          {
            goto LABEL_129;
          }

          v135 = &v133[16 * v131];
          *v135 = v132;
          *(v135 + 1) = v29;
          v163 = v133;
          result = sub_1909E37B0(v131 - 1);
          v29 = v163;
          v131 = *(v163 + 16);
          if (v131 <= 1)
          {
          }
        }

        goto LABEL_139;
      }
    }

LABEL_135:
    result = sub_1909E383C(v29);
    v29 = result;
    goto LABEL_105;
  }

  v159 = v23;
  v136 = a4;
  v28 = 0;
  v161 = (v9 + 8);
  v162 = v9 + 16;
  v160 = (v9 + 32);
  v29 = MEMORY[0x1E69E7CC0];
  v144 = a3;
  v147 = v17;
  v138 = v24;
  v137 = v25;
  while (1)
  {
    v30 = v28;
    v31 = v28 + 1;
    if (v28 + 1 < v27)
    {
      v150 = v27;
      v32 = *a3;
      v33 = *(v152 + 72);
      v153 = v28 + 1;
      v34 = *(v152 + 16);
      v35 = v139;
      v34(v139, v32 + v33 * v31, v8);
      v143 = v30;
      v154 = v33;
      v36 = v32 + v33 * v30;
      v37 = v140;
      v149 = v34;
      v34(v140, v36, v8);
      v38 = sub_190D51BF0();
      v39 = sub_190D51BF0();
      v146 = v5;
      if (v38 == v39)
      {
        v40 = sub_190D51BE0();
        v41 = sub_190D51BE0();
      }

      else
      {
        v40 = sub_190D51BF0();
        v41 = sub_190D51BF0();
      }

      LODWORD(v151) = v40 < v41;
      v141 = v29;
      v42 = *v161;
      (*v161)(v37, v8);
      v148 = v42;
      result = (v42)(v35, v8);
      v43 = (v143 + 2);
      v44 = v153;
      v45 = v154 * (v143 + 2);
      v46 = v32 + v45;
      v47 = v154 * v153;
      v48 = v32 + v154 * v153;
      v49 = v138;
      a3 = v137;
      do
      {
        v31 = v43;
        v55 = v44;
        v29 = v47;
        v54 = v45;
        if (v43 >= v150)
        {
          break;
        }

        v156 = v44;
        v158 = v43;
        v56 = v149;
        v149(a3, v46, v8);
        v56(v49, v48, v8);
        v57 = sub_190D51BF0();
        v58 = sub_190D51BF0();
        v155 = v54;
        if (v57 == v58)
        {
          v50 = sub_190D51BE0();
          v51 = sub_190D51BE0();
        }

        else
        {
          v50 = sub_190D51BF0();
          v51 = sub_190D51BF0();
        }

        v52 = v50 < v51;
        v53 = v148;
        (v148)(v49, v8);
        result = v53(a3, v8);
        v31 = v158;
        v43 = (v158 + 1);
        v54 = v155;
        v46 += v154;
        v48 += v154;
        v55 = v156;
        v44 = v156 + 1;
        v47 = &v154[v29];
        v45 = &v154[v155];
      }

      while (v151 == v52);
      if (!v151)
      {
        a3 = v144;
        v29 = v141;
        v5 = v146;
        v17 = v147;
LABEL_30:
        v30 = v143;
        goto LABEL_31;
      }

      v30 = v143;
      v5 = v146;
      if (v31 < v143)
      {
        goto LABEL_132;
      }

      if (v143 < v31)
      {
        v59 = v143 * v154;
        do
        {
          if (v30 != v55)
          {
            v146 = v5;
            v61 = *v144;
            if (!*v144)
            {
              goto LABEL_138;
            }

            v62 = v55;
            v158 = *v160;
            v158(v145, (v61 + v59), v8);
            if (v59 < v29 || v61 + v59 >= (v61 + v54))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v59 != v29)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = (v158)(v61 + v29, v145, v8);
            v5 = v146;
            v55 = v62;
          }

          ++v30;
          v29 -= v154;
          v54 -= v154;
          v59 += v154;
        }

        while (v30 < v55--);
        a3 = v144;
        v29 = v141;
        v17 = v147;
        goto LABEL_30;
      }

      a3 = v144;
      v29 = v141;
      v17 = v147;
    }

LABEL_31:
    v63 = a3[1];
    if (v31 < v63)
    {
      if (__OFSUB__(v31, v30))
      {
        goto LABEL_131;
      }

      if (v31 - v30 < v136)
      {
        break;
      }
    }

LABEL_52:
    if (v31 < v30)
    {
      goto LABEL_130;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v153 = v31;
    if ((result & 1) == 0)
    {
      result = sub_190835714(0, *(v29 + 16) + 1, 1, v29);
      v29 = result;
    }

    v84 = *(v29 + 16);
    v83 = *(v29 + 24);
    v85 = v84 + 1;
    if (v84 >= v83 >> 1)
    {
      result = sub_190835714((v83 > 1), v84 + 1, 1, v29);
      v29 = result;
    }

    *(v29 + 16) = v85;
    v86 = v29 + 16 * v84;
    v87 = v153;
    *(v86 + 32) = v30;
    *(v86 + 40) = v87;
    v88 = *v142;
    if (!*v142)
    {
      goto LABEL_140;
    }

    if (v84)
    {
      while (1)
      {
        v30 = v85 - 1;
        if (v85 >= 4)
        {
          break;
        }

        if (v85 == 3)
        {
          v89 = *(v29 + 32);
          v90 = *(v29 + 40);
          v99 = __OFSUB__(v90, v89);
          v91 = v90 - v89;
          v92 = v99;
LABEL_72:
          if (v92)
          {
            goto LABEL_119;
          }

          v105 = (v29 + 16 * v85);
          v107 = *v105;
          v106 = v105[1];
          v108 = __OFSUB__(v106, v107);
          v109 = v106 - v107;
          v110 = v108;
          if (v108)
          {
            goto LABEL_122;
          }

          v111 = (v29 + 32 + 16 * v30);
          v113 = *v111;
          v112 = v111[1];
          v99 = __OFSUB__(v112, v113);
          v114 = v112 - v113;
          if (v99)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v109, v114))
          {
            goto LABEL_126;
          }

          if (v109 + v114 >= v91)
          {
            if (v91 < v114)
            {
              v30 = v85 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v115 = (v29 + 16 * v85);
        v117 = *v115;
        v116 = v115[1];
        v99 = __OFSUB__(v116, v117);
        v109 = v116 - v117;
        v110 = v99;
LABEL_86:
        if (v110)
        {
          goto LABEL_121;
        }

        v118 = v29 + 16 * v30;
        v120 = *(v118 + 32);
        v119 = *(v118 + 40);
        v99 = __OFSUB__(v119, v120);
        v121 = v119 - v120;
        if (v99)
        {
          goto LABEL_124;
        }

        if (v121 < v109)
        {
          goto LABEL_3;
        }

LABEL_93:
        v126 = v30 - 1;
        if (v30 - 1 >= v85)
        {
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        if (!*a3)
        {
          goto LABEL_137;
        }

        v127 = v29;
        v128 = *(v29 + 32 + 16 * v126);
        v129 = *(v29 + 32 + 16 * v30);
        v29 = *(v29 + 32 + 16 * v30 + 8);
        sub_190AEC158(*a3 + *(v152 + 72) * v128, *a3 + *(v152 + 72) * v129, *a3 + *(v152 + 72) * v29, v88);
        if (v5)
        {
        }

        if (v29 < v128)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v127 = sub_1909E383C(v127);
        }

        if (v126 >= *(v127 + 2))
        {
          goto LABEL_116;
        }

        v130 = &v127[16 * v126];
        *(v130 + 4) = v128;
        *(v130 + 5) = v29;
        v163 = v127;
        result = sub_1909E37B0(v30);
        v29 = v163;
        v85 = *(v163 + 16);
        v17 = v147;
        if (v85 <= 1)
        {
          goto LABEL_3;
        }
      }

      v93 = v29 + 32 + 16 * v85;
      v94 = *(v93 - 64);
      v95 = *(v93 - 56);
      v99 = __OFSUB__(v95, v94);
      v96 = v95 - v94;
      if (v99)
      {
        goto LABEL_117;
      }

      v98 = *(v93 - 48);
      v97 = *(v93 - 40);
      v99 = __OFSUB__(v97, v98);
      v91 = v97 - v98;
      v92 = v99;
      if (v99)
      {
        goto LABEL_118;
      }

      v100 = (v29 + 16 * v85);
      v102 = *v100;
      v101 = v100[1];
      v99 = __OFSUB__(v101, v102);
      v103 = v101 - v102;
      if (v99)
      {
        goto LABEL_120;
      }

      v99 = __OFADD__(v91, v103);
      v104 = v91 + v103;
      if (v99)
      {
        goto LABEL_123;
      }

      if (v104 >= v96)
      {
        v122 = (v29 + 32 + 16 * v30);
        v124 = *v122;
        v123 = v122[1];
        v99 = __OFSUB__(v123, v124);
        v125 = v123 - v124;
        if (v99)
        {
          goto LABEL_127;
        }

        if (v91 < v125)
        {
          v30 = v85 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v27 = a3[1];
    v28 = v153;
    if (v153 >= v27)
    {
      goto LABEL_103;
    }
  }

  v64 = (v30 + v136);
  if (__OFADD__(v30, v136))
  {
    goto LABEL_133;
  }

  if (v64 >= v63)
  {
    v64 = a3[1];
  }

  if (v64 < v30)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v31 == v64)
  {
    goto LABEL_52;
  }

  v141 = v29;
  v146 = v5;
  v65 = *a3;
  v66 = *(v152 + 72);
  v158 = *(v152 + 16);
  v67 = (v65 + v66 * (v31 - 1));
  v155 = -v66;
  v156 = v65;
  v143 = v30;
  v68 = v30 - v31;
  v148 = v66;
  v149 = v64;
  v69 = (v65 + v31 * v66);
LABEL_42:
  v153 = v31;
  v154 = v67;
  v150 = v69;
  v151 = v68;
  while (1)
  {
    v70 = v158;
    v158(v17, v69, v8);
    v71 = v8;
    v72 = v17;
    v73 = v159;
    v74 = v71;
    (v70)(v159, v67);
    v75 = sub_190D51BF0();
    if (v75 == sub_190D51BF0())
    {
      v76 = sub_190D51BE0();
      v77 = sub_190D51BE0();
    }

    else
    {
      v76 = sub_190D51BF0();
      v77 = sub_190D51BF0();
    }

    v78 = v76 < v77;
    v79 = *v161;
    (*v161)(v73, v74);
    result = (v79)(v72, v74);
    v17 = v72;
    if (!v78)
    {
      v8 = v74;
LABEL_41:
      v31 = v153 + 1;
      v67 = &v148[v154];
      v68 = v151 - 1;
      v69 = &v148[v150];
      if ((v153 + 1) == v149)
      {
        v31 = v149;
        v5 = v146;
        v30 = v143;
        a3 = v144;
        v29 = v141;
        goto LABEL_52;
      }

      goto LABEL_42;
    }

    if (!v156)
    {
      break;
    }

    v80 = *v160;
    v81 = v157;
    v8 = v74;
    (*v160)(v157, v69, v74);
    swift_arrayInitWithTakeFrontToBack();
    v80(v67, v81, v74);
    v67 += v155;
    v69 += v155;
    if (__CFADD__(v68++, 1))
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
  return result;
}

uint64_t sub_190AEC158(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v60 = a4;
  v7 = sub_190D51C00();
  v64 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v63 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v55 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v55 - v14;
  result = MEMORY[0x1EEE9AC00](v13);
  v18 = &v55 - v17;
  v65 = *(v19 + 72);
  if (!v65)
  {
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v65 == -1)
  {
    goto LABEL_67;
  }

  v20 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v65 == -1)
  {
    goto LABEL_68;
  }

  v21 = (a2 - a1) / v65;
  v68 = a1;
  v22 = v60;
  v67 = v60;
  if (v21 >= v20 / v65)
  {
    v25 = v20 / v65 * v65;
    if (v60 < a2 || a2 + v25 <= v60)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v60 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v36 = v22 + v25;
    if (v25 >= 1)
    {
      v37 = -v65;
      v56 = (v64 + 8);
      v57 = (v64 + 16);
      v38 = (v22 + v25);
      v58 = -v65;
      v59 = a1;
      do
      {
        v64 = v36;
        v55 = v36;
        v39 = a2;
        v61 = a2;
        v62 = a2 + v37;
        while (1)
        {
          if (v39 <= a1)
          {
            v68 = v39;
            v66 = v55;
            goto LABEL_65;
          }

          v41 = a3;
          v42 = *v57;
          v65 = v38 + v37;
          (v42)(v12);
          v43 = v63;
          v42();
          v44 = sub_190D51BF0();
          if (v44 == sub_190D51BF0())
          {
            v45 = sub_190D51BE0();
            v46 = sub_190D51BE0();
          }

          else
          {
            v45 = sub_190D51BF0();
            v46 = sub_190D51BF0();
          }

          v47 = v45 < v46;
          v48 = v43;
          a3 = v41 + v37;
          v49 = *v56;
          (*v56)(v48, v7);
          v50 = v12;
          v49(v12, v7);
          if (v47)
          {
            break;
          }

          v51 = v65;
          v52 = v65;
          v53 = v60;
          if (v41 < v38 || a3 >= v38)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v41 != v38)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v64 = v52;
          v38 = v52;
          v40 = v51 > v53;
          v12 = v50;
          v37 = v58;
          a1 = v59;
          v39 = v61;
          if (!v40)
          {
            a2 = v61;
            v36 = v64;
            goto LABEL_64;
          }
        }

        a2 = v62;
        v54 = v60;
        if (v41 < v61 || a3 >= v61)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v41 != v61)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v36 = v64;
        v37 = v58;
        a1 = v59;
      }

      while (v38 > v54);
    }

LABEL_64:
    v68 = a2;
    v66 = v36;
  }

  else
  {
    v23 = v21 * v65;
    v24 = v60;
    if (v60 < a1 || a1 + v23 <= v60)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v60 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v62 = a3;
    v63 = (v22 + v23);
    v66 = v22 + v23;
    if (v23 >= 1 && a2 < a3)
    {
      v61 = *(v64 + 16);
      v64 += 16;
      v27 = (v64 - 8);
      do
      {
        v28 = v61;
        v61(v18, a2, v7);
        v28(v15, v24, v7);
        v29 = sub_190D51BF0();
        if (v29 == sub_190D51BF0())
        {
          v30 = sub_190D51BE0();
          v31 = sub_190D51BE0();
        }

        else
        {
          v30 = sub_190D51BF0();
          v31 = sub_190D51BF0();
        }

        v32 = v30 < v31;
        v33 = *v27;
        (*v27)(v15, v7);
        v33(v18, v7);
        if (v32)
        {
          v34 = v65;
          if (a1 < a2 || a1 >= a2 + v65)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v34;
        }

        else
        {
          v34 = v65;
          v35 = v24 + v65;
          if (a1 < v24 || a1 >= v35)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v24)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v67 = v35;
          v24 += v34;
        }

        a1 += v34;
        v68 = a1;
      }

      while (v24 < v63 && a2 < v62);
    }
  }

LABEL_65:
  sub_1909E3850(&v68, &v67, &v66);
  return 1;
}

Swift::Bool __swiftcall UITextView.ck_isCursorDirectlyAfterBracketCharacter()()
{
  v1 = v0;
  v2 = [v0 selectedRange];
  if (v2 == sub_190D50E40() || v2 < 1)
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = [v1 text];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 characterAtIndex_];
      v7 = sub_190D56ED0();
      v8 = [objc_opt_self() characterSetWithCharactersInString_];

      LOBYTE(v6) = [v8 characterIsMember_];
      LOBYTE(v4) = v6;
    }

    else
    {
      __break(1u);
    }
  }

  return v4;
}

BOOL sub_190AEC86C(void *a1)
{
  v1 = a1;
  isCursorDirectlyAfterBracket = UITextView.ck_isCursorDirectlyAfterBracketCharacter()();

  return isCursorDirectlyAfterBracket;
}

uint64_t sub_190AEC9A0()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_190AECA00(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC7ChatKit40CKSendMenuPopoverContainerViewController_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_190863E2C;
}

id CKSendMenuPopoverContainerViewController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CKSendMenuPopoverContainerViewController.init()()
{
  swift_unknownObjectWeakInit();
  result = [objc_opt_self() sharedBehaviors];
  if (result)
  {
    v2 = result;
    result = [result newSendMenuPopoverLayoutConfiguration];
    if (result)
    {
      v3 = result;
      v4 = OBJC_IVAR____TtC7ChatKit40CKSendMenuPopoverContainerViewController_layout;
      v5 = [objc_allocWithZone(CKPopoverViewLayout) initWithConfiguration_];

      *&v0[v4] = v5;
      v7.receiver = v0;
      v7.super_class = type metadata accessor for CKSendMenuPopoverContainerViewController();
      v6 = objc_msgSendSuper2(&v7, sel_initWithNibName_bundle_, 0, 0);
      [v6 setModalPresentationStyle_];
      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_190AECC34(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  if (qword_1EAD46238 != -1)
  {
    swift_once();
  }

  v7 = sub_190D53040();
  __swift_project_value_buffer(v7, qword_1EAD9D760);
  v8 = v4;
  v9 = sub_190D53020();
  v10 = sub_190D576C0();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    *(v11 + 4) = v8;
    *v12 = v8;
    v13 = v8;
    _os_log_impl(&dword_19020E000, v9, v10, "Self: %@", v11, 0xCu);
    sub_190830D58(v12);
    MEMORY[0x193AF7A40](v12, -1, -1);
    MEMORY[0x193AF7A40](v11, -1, -1);
  }

  v14 = a1;
  v15 = sub_190D53020();
  v16 = sub_190D576C0();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    *(v17 + 4) = v14;
    *v18 = v14;
    v19 = v14;
    _os_log_impl(&dword_19020E000, v15, v16, "View Controller to add: %@", v17, 0xCu);
    sub_190830D58(v18);
    MEMORY[0x193AF7A40](v18, -1, -1);
    MEMORY[0x193AF7A40](v17, -1, -1);
  }

  v20 = [v8 childViewControllers];
  sub_190AEDD14();
  isEscapingClosureAtFileLocation = sub_190D57180();

  if (!(isEscapingClosureAtFileLocation >> 62))
  {
    if (*((isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_9;
    }

LABEL_14:

    v23 = 0;
    goto LABEL_15;
  }

  if (!sub_190D581C0())
  {
    goto LABEL_14;
  }

LABEL_9:
  if ((isEscapingClosureAtFileLocation & 0xC000000000000001) != 0)
  {
    goto LABEL_30;
  }

  if (*((isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    for (i = *(isEscapingClosureAtFileLocation + 32); ; i = MEMORY[0x193AF3B90](0, isEscapingClosureAtFileLocation))
    {
      v23 = i;

LABEL_15:
      [v8 addChildViewController_];
      v24 = [v8 view];
      if (!v24)
      {
        break;
      }

      v25 = v24;
      v26 = [v14 view];
      if (!v26)
      {
        goto LABEL_33;
      }

      v27 = v26;
      [v25 addSubview_];

      v28 = [v14 view];
      if (!v28)
      {
        goto LABEL_34;
      }

      v29 = v28;
      v30 = [v8 view];
      if (!v30)
      {
        goto LABEL_35;
      }

      v31 = v30;
      [v30 bounds];
      v33 = v32;
      v35 = v34;
      v37 = v36;
      v39 = v38;

      [v29 setFrame_];
      v40 = [v14 view];
      if (!v40)
      {
        goto LABEL_36;
      }

      v41 = v40;
      [v40 setAutoresizingMask_];

      [v14 didMoveToParentViewController_];
      if (v23)
      {
        v42 = v23;
        v43 = [v14 view];
        if (!v43)
        {
          goto LABEL_37;
        }

        v44 = v43;
        [v43 setAlpha_];

        v45 = objc_opt_self();
        v46 = swift_allocObject();
        *(v46 + 16) = v42;
        *(v46 + 24) = v14;
        v67 = sub_190AEDD74;
        v68 = v46;
        aBlock = MEMORY[0x1E69E9820];
        v64 = 1107296256;
        v65 = sub_190840E6C;
        v66 = &block_descriptor_15_2;
        v47 = _Block_copy(&aBlock);
        v48 = v14;
        v49 = v42;

        v50 = swift_allocObject();
        v50[2] = v8;
        v50[3] = v49;
        v50[4] = a3;
        v50[5] = a4;
        v67 = sub_190AEDD7C;
        v68 = v50;
        aBlock = MEMORY[0x1E69E9820];
        v64 = 1107296256;
        v65 = sub_190896518;
        v66 = &block_descriptor_21_3;
        v51 = _Block_copy(&aBlock);
        v52 = v8;
        v53 = v49;
        sub_190D50920();

        [v45 animateWithDuration:v47 animations:v51 completion:0.3];
        _Block_release(v51);
        _Block_release(v47);
      }

      v69 = 0;
      v54 = *&v8[OBJC_IVAR____TtC7ChatKit40CKSendMenuPopoverContainerViewController_layout];
      v14 = swift_allocObject();
      v14[2] = a2;
      v14[3] = v8;
      v14[4] = &v69;
      v55 = swift_allocObject();
      *(v55 + 16) = sub_190AEDD60;
      *(v55 + 24) = v14;
      v67 = sub_190838A04;
      v68 = v55;
      aBlock = MEMORY[0x1E69E9820];
      v64 = 1107296256;
      v65 = sub_19088B7B8;
      v66 = &block_descriptor_76;
      v56 = _Block_copy(&aBlock);
      v8 = v8;
      v57 = v54;
      sub_190D50920();

      [v57 updateProperties_];

      _Block_release(v56);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        if (v69 == 1)
        {
          v58 = objc_opt_self();
          v59 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v67 = sub_190AEDD6C;
          v68 = v59;
          aBlock = MEMORY[0x1E69E9820];
          v64 = 1107296256;
          v65 = sub_190840E6C;
          v66 = &block_descriptor_9_8;
          v60 = _Block_copy(&aBlock);

          [v58 animateWithDuration:v60 animations:0.3];
          _Block_release(v60);
        }

        if (v23)
        {
        }

        else
        {
          a3();
        }

        return;
      }

      __break(1u);
LABEL_30:
      ;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

void sub_190AED41C(void *a1, void *a2)
{
  v3 = [a1 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3;
  [v3 setAlpha_];

  v5 = [a2 view];
  if (!v5)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v6 = v5;
  [v5 setAlpha_];
}

void sub_190AED4C0(unint64_t a1, char *a2, _BYTE *a3)
{
  if (a1 > 3)
  {
    v5 = 2;
  }

  else
  {
    v5 = qword_190DF12C0[a1];
  }

  v6 = OBJC_IVAR____TtC7ChatKit40CKSendMenuPopoverContainerViewController_layout;
  [*&a2[OBJC_IVAR____TtC7ChatKit40CKSendMenuPopoverContainerViewController_layout] setState_];
  v7 = [a2 presentationController];
  if (v7)
  {
    v29 = v7;
    v8 = [v7 containerView];
    if (v8)
    {
      v28 = v8;
      v9 = [v29 sourceView];
      if (v9)
      {
        v10 = v9;
        v11 = *&a2[v6];
        [v28 frame];
        [v11 setContainerSize_];

        v14 = *&a2[v6];
        [v10 frame];
        [v14 setAnchorSize_];

        v17 = *&a2[v6];
        [v10 center];
        v19 = v18;
        v21 = v20;
        v22 = [v10 superview];
        [v28 convertPoint:v22 fromView:{v19, v21}];
        v24 = v23;
        v26 = v25;

        [v17 setAnchorCenter_];
        *a3 = 1;
        return;
      }

      v27 = v28;
    }

    else
    {
      v27 = v29;
    }
  }
}

void sub_190AED774()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [v1 view];
    if (v2)
    {
      v3 = v2;
      v4 = [*&v1[OBJC_IVAR____TtC7ChatKit40CKSendMenuPopoverContainerViewController_layout] newLayoutMetricsWithCoordinateSpace_];
      [v4 frame];
      [v1 setPreferredContentSize_];

      swift_beginAccess();
      v7 = swift_unknownObjectWeakLoadStrong();
      if (v7)
      {
        v8 = v7;
        [v4 frame];
        [v8 sendMenuFrameChanged_];

        swift_unknownObjectRelease();
      }

      else
      {
      }

      v1 = v3;
    }

    else
    {
    }
  }
}

id sub_190AED8AC(char a1)
{
  v9.receiver = v1;
  v9.super_class = type metadata accessor for CKSendMenuPopoverContainerViewController();
  objc_msgSendSuper2(&v9, sel_viewWillAppear_, a1 & 1);
  result = [v1 transitionCoordinator];
  if (result)
  {
    v4 = result;
    v5 = swift_allocObject();
    *(v5 + 16) = v1;
    v8[4] = sub_190AEDD80;
    v8[5] = v5;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 1107296256;
    v8[2] = sub_190AEDA9C;
    v8[3] = &block_descriptor_27_1;
    v6 = _Block_copy(v8);
    v7 = v1;

    [v4 animateAlongsideTransition:v6 completion:0];
    _Block_release(v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_190AED9CC(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    result = [a2 view];
    if (result)
    {
      v5 = result;
      [result frame];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;

      [v4 sendMenuHasInitialFrame_];
      return swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_190AEDA9C(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_190D50920();
  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

id CKSendMenuPopoverContainerViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_190D56ED0();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id CKSendMenuPopoverContainerViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKSendMenuPopoverContainerViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_190AEDCA8()
{
  v0 = sub_190D53040();
  __swift_allocate_value_buffer(v0, qword_1EAD9D760);
  __swift_project_value_buffer(v0, qword_1EAD9D760);
  sub_190D53010();
  return sub_190D53030();
}

unint64_t sub_190AEDD14()
{
  result = qword_1EAD45060;
  if (!qword_1EAD45060)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAD45060);
  }

  return result;
}

void sub_190AEDE70()
{
  swift_unknownObjectWeakInit();
  v1 = [objc_opt_self() sharedBehaviors];
  if (!v1)
  {
    __break(1u);
  }

  v2 = v1;
  v3 = [v1 newSendMenuPopoverLayoutConfiguration];
  if (!v3)
  {
    __break(1u);
  }

  v4 = OBJC_IVAR____TtC7ChatKit40CKSendMenuPopoverContainerViewController_layout;
  v5 = v3;
  v6 = [objc_allocWithZone(CKPopoverViewLayout) initWithConfiguration_];

  *(v0 + v4) = v6;
  sub_190D58510();
  __break(1u);
}

void sub_190AEDF68(void *a1, uint64_t a2, void *a3, void (**a4)(void))
{
  v62 = swift_allocObject();
  *(v62 + 16) = a4;
  _Block_copy(a4);
  if (qword_1EAD46238 != -1)
  {
    swift_once();
  }

  v8 = sub_190D53040();
  __swift_project_value_buffer(v8, qword_1EAD9D760);
  v9 = a3;
  v10 = sub_190D53020();
  v11 = sub_190D576C0();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v9;
    *v13 = v9;
    v14 = v9;
    _os_log_impl(&dword_19020E000, v10, v11, "Self: %@", v12, 0xCu);
    sub_190830D58(v13);
    MEMORY[0x193AF7A40](v13, -1, -1);
    MEMORY[0x193AF7A40](v12, -1, -1);
  }

  v15 = a1;
  v16 = sub_190D53020();
  v17 = sub_190D576C0();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    *(v18 + 4) = v15;
    *v19 = v15;
    v20 = v15;
    _os_log_impl(&dword_19020E000, v16, v17, "View Controller to add: %@", v18, 0xCu);
    sub_190830D58(v19);
    MEMORY[0x193AF7A40](v19, -1, -1);
    MEMORY[0x193AF7A40](v18, -1, -1);
  }

  v21 = [v9 childViewControllers];
  sub_190AEDD14();
  isEscapingClosureAtFileLocation = sub_190D57180();

  if (!(isEscapingClosureAtFileLocation >> 62))
  {
    if (*((isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_9;
    }

LABEL_14:

    v24 = 0;
    goto LABEL_15;
  }

  if (!sub_190D581C0())
  {
    goto LABEL_14;
  }

LABEL_9:
  if ((isEscapingClosureAtFileLocation & 0xC000000000000001) != 0)
  {
    goto LABEL_31;
  }

  if (*((isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    for (i = *(isEscapingClosureAtFileLocation + 32); ; i = MEMORY[0x193AF3B90](0, isEscapingClosureAtFileLocation))
    {
      v24 = i;

LABEL_15:
      [v9 addChildViewController_];
      v25 = [v9 view];
      if (!v25)
      {
        break;
      }

      v26 = v25;
      v27 = [v15 view];
      if (!v27)
      {
        goto LABEL_34;
      }

      v28 = v27;
      [v26 addSubview_];

      v29 = [v15 view];
      if (!v29)
      {
        goto LABEL_35;
      }

      v30 = v29;
      v31 = [v9 view];
      if (!v31)
      {
        goto LABEL_36;
      }

      v32 = v31;
      [v31 bounds];
      v34 = v33;
      v36 = v35;
      v38 = v37;
      v40 = v39;

      [v30 setFrame_];
      v41 = [v15 view];
      if (!v41)
      {
        goto LABEL_37;
      }

      v42 = v41;
      [v41 setAutoresizingMask_];

      [v15 didMoveToParentViewController_];
      if (v24)
      {
        v61 = a4;
        v43 = v24;
        v44 = [v15 view];
        if (!v44)
        {
          goto LABEL_38;
        }

        v45 = v44;
        [v44 setAlpha_];

        v46 = objc_opt_self();
        v47 = swift_allocObject();
        *(v47 + 16) = v43;
        *(v47 + 24) = v15;
        v67 = sub_190AEE9F4;
        v68 = v47;
        aBlock = MEMORY[0x1E69E9820];
        v64 = 1107296256;
        v65 = sub_190840E6C;
        v66 = &block_descriptor_55_0;
        v48 = _Block_copy(&aBlock);
        v49 = v15;
        v50 = v43;

        v51 = swift_allocObject();
        v51[2] = v9;
        v51[3] = v50;
        v51[4] = sub_190841A8C;
        v51[5] = v62;
        v67 = sub_190AEEA18;
        v68 = v51;
        aBlock = MEMORY[0x1E69E9820];
        v64 = 1107296256;
        v65 = sub_190896518;
        v66 = &block_descriptor_62_2;
        v52 = _Block_copy(&aBlock);
        v53 = v9;
        v54 = v50;
        sub_190D50920();

        [v46 animateWithDuration:v48 animations:v52 completion:0.3];
        _Block_release(v52);
        _Block_release(v48);
      }

      v69 = 0;
      v55 = *&v9[OBJC_IVAR____TtC7ChatKit40CKSendMenuPopoverContainerViewController_layout];
      v15 = swift_allocObject();
      v15[2] = a2;
      v15[3] = v9;
      v15[4] = &v69;
      a2 = swift_allocObject();
      *(a2 + 16) = sub_190AEEA1C;
      *(a2 + 24) = v15;
      v67 = sub_190984F4C;
      v68 = a2;
      aBlock = MEMORY[0x1E69E9820];
      v64 = 1107296256;
      v65 = sub_19088B7B8;
      v66 = &block_descriptor_43_1;
      v56 = _Block_copy(&aBlock);
      v9 = v9;
      v57 = v55;
      sub_190D50920();

      [v57 updateProperties_];

      _Block_release(v56);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        if (v69 == 1)
        {
          v58 = objc_opt_self();
          v59 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v67 = sub_190AEE9F0;
          v68 = v59;
          aBlock = MEMORY[0x1E69E9820];
          v64 = 1107296256;
          v65 = sub_190840E6C;
          v66 = &block_descriptor_48_0;
          v60 = _Block_copy(&aBlock);

          [v58 animateWithDuration:v60 animations:0.3];
          _Block_release(v60);
        }

        if (v24)
        {
        }

        else
        {
          a4[2](a4);
        }

        return;
      }

      __break(1u);
LABEL_31:
      ;
    }
  }

  else
  {
    __break(1u);
  }

  _Block_release(a4);
  __break(1u);
LABEL_34:
  _Block_release(a4);
  __break(1u);
LABEL_35:
  _Block_release(a4);
  __break(1u);
LABEL_36:
  _Block_release(a4);
  __break(1u);
LABEL_37:
  _Block_release(a4);
  __break(1u);
LABEL_38:
  _Block_release(v61);
  __break(1u);
}

uint64_t objectdestroy_17Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_190AEE810()
{
  v1 = *(v0 + 32);
  v2 = sub_190AEE840(*(v0 + 24));
  return v1(v2);
}

id sub_190AEE840(void *a1)
{
  if (qword_1EAD46238 != -1)
  {
    swift_once();
  }

  v2 = sub_190D53040();
  __swift_project_value_buffer(v2, qword_1EAD9D760);
  v3 = a1;
  v4 = sub_190D53020();
  v5 = sub_190D576C0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&dword_19020E000, v4, v5, "Removing child: %@", v6, 0xCu);
    sub_190830D58(v7);
    MEMORY[0x193AF7A40](v7, -1, -1);
    MEMORY[0x193AF7A40](v6, -1, -1);
  }

  [v3 willMoveToParentViewController_];
  result = [v3 view];
  if (result)
  {
    v10 = result;
    [result removeFromSuperview];

    return [v3 removeFromParentViewController];
  }

  else
  {
    __break(1u);
  }

  return result;
}

id CKBalloonView.snapshotCurrentView.getter()
{
  v1 = [v0 canUseOpaqueMask];
  if (v1)
  {
    [v0 setCanUseOpaqueMask_];
    [v0 prepareForDisplayIfNeeded];
    [v0 layoutIfNeeded];
    [objc_opt_self() flush];
  }

  result = [v0 snapshotViewAfterScreenUpdates_];
  if (v1)
  {
    v3 = result;
    [v0 setCanUseOpaqueMask_];
    [v0 prepareForDisplayIfNeeded];
    [v0 layoutIfNeeded];
    return v3;
  }

  return result;
}

char *sub_190AEEB54()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D1D8);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v78 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v77 = &v63 - v4;
  v75 = sub_190D51D40();
  v74 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v82 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D1E0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v81 = &v63 - v7;
  v85 = sub_190D51DA0();
  v89 = *(v85 - 8);
  v8 = MEMORY[0x1EEE9AC00](v85);
  v79 = (&v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v84 = &v63 - v10;
  v80 = sub_190D51D90();
  v76 = *(v80 - 8);
  v11 = MEMORY[0x1EEE9AC00](v80);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v63 - v14;
  v16 = sub_190D51D50();
  v83 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53838);
  inited = swift_initStackObject();
  v73 = xmmword_190DD1D90;
  *(inited + 16) = xmmword_190DD1D90;
  *(inited + 32) = 0x74706D6F7270;
  *(inited + 40) = 0xE600000000000000;
  v20 = _s20ImagePlaygroundInputVMa();
  v21 = (v0 + *(v20 + 20));
  v23 = *v21;
  v22 = v21[1];
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v23;
  *(inited + 56) = v22;
  sub_190D52690();
  v24 = sub_190820FDC(inited);
  swift_setDeallocating();
  sub_19099F008(inited + 32);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D1E8);
  v87 = v24;
  v25 = v86;
  sub_190D51D60();
  if (v25)
  {
    return v13;
  }

  v70 = v20;
  v86 = v0;
  v67 = 0;
  v72 = v15;
  v71 = v13;
  v26 = v84;
  v27 = *(v83 + 16);
  v68 = v18;
  v27(v84, v18, v16);
  v28 = *MEMORY[0x1E699C588];
  v29 = *(v89 + 104);
  v89 += 104;
  v69 = v29;
  v29(v26, v28, v85);
  result = CKFrameworkBundle();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v31 = result;
  v32 = sub_190D56ED0();
  v33 = sub_190D56ED0();
  v34 = [v31 localizedStringForKey:v32 value:0 table:v33];

  sub_190D56F10();
  v66 = v35;

  result = CKFrameworkBundle();
  v36 = v81;
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v37 = result;
  v65 = v16;
  v38 = sub_190D56ED0();
  v39 = sub_190D56ED0();
  v40 = [v37 localizedStringForKey:v38 value:0 table:v39];

  sub_190D56F10();
  v41 = sub_190D51D80();
  v64 = *(*(v41 - 8) + 56);
  v64(v36, 1, 1, v41);
  sub_190D51D70();
  v42 = v85;
  v43 = (v86 + *(v70 + 24));
  v44 = *v43;
  v45 = v43[1];
  v46 = v79;
  *v79 = *v43;
  v46[1] = v45;
  v69(v46, *MEMORY[0x1E699C5F0], v42);
  sub_19083B680(v44, v45);
  result = CKFrameworkBundle();
  v47 = v36;
  v48 = v80;
  if (result)
  {
    v49 = result;
    v50 = sub_190D56ED0();
    v51 = sub_190D56ED0();
    v52 = [v49 localizedStringForKey:v50 value:0 table:v51];

    sub_190D56F10();
    v64(v47, 1, 1, v41);
    v53 = v71;
    sub_190D51D70();
    (*(v74 + 104))(v82, *MEMORY[0x1E699C2E8], v75);
    v54 = v76;
    v55 = *(v76 + 56);
    v55(v77, 1, 1, v48);
    v56 = *(v54 + 16);
    v57 = v78;
    v56(v78, v53, v48);
    v55(v57, 0, 1, v48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D1F0);
    v58 = (*(v54 + 80) + 32) & ~*(v54 + 80);
    v59 = swift_allocObject();
    *(v59 + 16) = v73;
    v60 = v72;
    v56((v59 + v58), v72, v48);
    v61 = objc_allocWithZone(sub_190D51D10());
    v13 = sub_190D51D00();
    v62 = *(v54 + 8);
    v62(v71, v48);
    v62(v60, v48);
    (*(v83 + 8))(v68, v65);
    return v13;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t _s20ImagePlaygroundInputVMa()
{
  result = qword_1EAD5D1F8;
  if (!qword_1EAD5D1F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_190AEF578()
{
  result = sub_190D518A0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id sub_190AEF5FC()
{
  result = [objc_opt_self() sharedBehaviors];
  if (result)
  {
    qword_1EAD5D208 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_190AEF640()
{
  if (qword_1EAD51C80 != -1)
  {
    swift_once();
  }

  v0 = qword_1EAD5D208;
  v1 = [v0 theme];

  if (v1)
  {
    qword_1EAD5D210 = v1;
  }

  else
  {
    __break(1u);
  }
}

id sub_190AEF750(void *a1, uint64_t a2, SEL *a3)
{
  v4 = a1;
  v5 = [v4 chat];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 *a3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t ConversationAppIntentsQuery.entities(matching:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_190D572A0();
  v2[4] = sub_190D57290();
  v4 = sub_190D57240();

  return MEMORY[0x1EEE6DFA0](sub_190AEF858, v4, v3);
}

uint64_t sub_190AEF858()
{
  v68 = v0;

  if (qword_1EAD45C50 != -1)
  {
    swift_once();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (qword_1EAD46290 != -1)
    {
      swift_once();
    }

    v24 = sub_190D53040();
    __swift_project_value_buffer(v24, qword_1EAD9D7D8);
    sub_190D52690();
    v25 = sub_190D53020();
    v26 = sub_190D57680();

    if (os_log_type_enabled(v25, v26))
    {
      v28 = v0[2];
      v27 = v0[3];
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v61 = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_19021D9F8(v28, v27, &v61);
      _os_log_impl(&dword_19020E000, v25, v26, "No message navigator provided, unable to query for conversation matchingString: %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x193AF7A40](v30, -1, -1);
      MEMORY[0x193AF7A40](v29, -1, -1);
    }

    goto LABEL_25;
  }

  v2 = Strong;
  v3 = sub_190D56ED0();
  v4 = [v2 firstConversationExactlyMatchingDisplayName_];

  if (!v4)
  {
    if (qword_1EAD46290 != -1)
    {
      swift_once();
    }

    v31 = sub_190D53040();
    __swift_project_value_buffer(v31, qword_1EAD9D7D8);
    sub_190D52690();
    v32 = sub_190D53020();
    v33 = sub_190D57680();

    if (os_log_type_enabled(v32, v33))
    {
      v35 = v0[2];
      v34 = v0[3];
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v61 = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_19021D9F8(v35, v34, &v61);
      _os_log_impl(&dword_19020E000, v32, v33, "No conversation found for matchingString: %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x193AF7A40](v37, -1, -1);
      MEMORY[0x193AF7A40](v36, -1, -1);
    }

    swift_unknownObjectRelease();
    goto LABEL_25;
  }

  v5 = v4;
  ConversationAppIntentsEntity.init(conversation:)(v5, &v61);
  if (!v62)
  {
    if (qword_1EAD46290 != -1)
    {
      swift_once();
    }

    v38 = sub_190D53040();
    __swift_project_value_buffer(v38, qword_1EAD9D7D8);
    v39 = v5;
    sub_190D52690();
    v40 = sub_190D53020();
    v41 = sub_190D57680();

    if (os_log_type_enabled(v40, v41))
    {
      v58 = v0[2];
      v60 = v0[3];
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v61 = v43;
      *v42 = 136315394;
      v44 = [v39 debugDescription];
      v45 = sub_190D56F10();
      v47 = v46;

      v48 = sub_19021D9F8(v45, v47, &v61);

      *(v42 + 4) = v48;
      *(v42 + 12) = 2080;
      *(v42 + 14) = sub_19021D9F8(v58, v60, &v61);
      _os_log_impl(&dword_19020E000, v40, v41, "No 'id' in converation %s for string %s", v42, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x193AF7A40](v43, -1, -1);
      MEMORY[0x193AF7A40](v42, -1, -1);
    }

    swift_unknownObjectRelease();
LABEL_25:
    v49 = MEMORY[0x1E69E7CC0];
    goto LABEL_28;
  }

  v55 = v62;
  v7 = v66;
  v6 = v67;
  v56 = v65;
  v8 = v63;
  v57 = v64;
  v59 = v61;
  if (qword_1EAD46290 != -1)
  {
    swift_once();
  }

  v9 = sub_190D53040();
  __swift_project_value_buffer(v9, qword_1EAD9D7D8);
  v10 = v5;
  sub_190D52690();
  v11 = sub_190D53020();
  v12 = sub_190D57680();

  v13 = v10;

  if (os_log_type_enabled(v11, v12))
  {
    v53 = v8;
    v54 = v7;
    v15 = v0[2];
    v14 = v0[3];
    v16 = swift_slowAlloc();
    v52 = v6;
    v17 = swift_slowAlloc();
    v61 = v17;
    *v16 = 136315394;
    *(v16 + 4) = sub_19021D9F8(v15, v14, &v61);
    *(v16 + 12) = 2080;
    v18 = [v10 debugDescription];
    v19 = sub_190D56F10();
    v21 = v20;

    v22 = sub_19021D9F8(v19, v21, &v61);

    *(v16 + 14) = v22;
    _os_log_impl(&dword_19020E000, v11, v12, "Mapping from strings: %s to conversation: %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193AF7A40](v17, -1, -1);
    MEMORY[0x193AF7A40](v16, -1, -1);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53F68);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_190DD1D90;
    *(v23 + 32) = v59;
    *(v23 + 40) = v55;
    *(v23 + 48) = v53;
    *(v23 + 56) = v57;
    *(v23 + 64) = v56;
    *(v23 + 72) = v54;
    *(v23 + 80) = v52;
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53F68);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_190DD1D90;
    *(v23 + 32) = v59;
    *(v23 + 40) = v55;
    *(v23 + 48) = v8;
    *(v23 + 56) = v57;
    *(v23 + 64) = v56;
    *(v23 + 72) = v7;
    *(v23 + 80) = v6;
  }

  swift_unknownObjectRelease();
  v49 = v23;
LABEL_28:
  v50 = v0[1];

  return v50(v49);
}

uint64_t ConversationAppIntentsQuery.entities(for:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_190D572A0();
  *(v1 + 24) = sub_190D57290();
  v3 = sub_190D57240();

  return MEMORY[0x1EEE6DFA0](sub_190AF0058, v3, v2);
}

uint64_t sub_190AF0058()
{
  v64 = v0;

  if (qword_1EAD45C50 != -1)
  {
LABEL_36:
    swift_once();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(v0 + 16);
    v4 = *(v3 + 16);
    if (!v4)
    {
      v7 = MEMORY[0x1E69E7CC0];
      goto LABEL_26;
    }

    v5 = 0;
    v6 = v3 + 40;
    v7 = MEMORY[0x1E69E7CC0];
    v55 = v3 + 40;
    while (1)
    {
      v56 = v7;
      v8 = v6 + 16 * v5;
      v9 = v5;
      while (1)
      {
        if (v9 >= v4)
        {
          __break(1u);
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        v5 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_35;
        }

        sub_190D52690();
        v11 = sub_190D56ED0();
        v12 = [v2 conversationMatchingGUID_];

        if (v12)
        {
          break;
        }

        v10 = 0;
LABEL_7:
        sub_190AF0750(v10, 0);
        ++v9;
        v8 += 16;
        if (v5 == v4)
        {
          v7 = v56;
          goto LABEL_26;
        }
      }

      ConversationAppIntentsEntity.init(conversation:)(v12, &v57);

      v10 = v57;
      v13 = v58;
      if (!v58)
      {
        goto LABEL_7;
      }

      v53 = v59;
      v54 = v57;
      v51 = v61;
      v52 = v60;
      v14 = v62;
      v15 = v63;
      v16 = v56;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_1908369F8(0, *(v56 + 2) + 1, 1, v56);
      }

      v18 = *(v16 + 2);
      v17 = *(v16 + 3);
      v19 = v16;
      v20 = v51;
      v21 = v52;
      v22 = v53;
      v23 = v54;
      if (v18 >= v17 >> 1)
      {
        v27 = sub_1908369F8((v17 > 1), v18 + 1, 1, v16);
        v21 = v52;
        v22 = v53;
        v20 = v51;
        v25 = v14;
        v24 = v15;
        v19 = v27;
        v23 = v54;
      }

      else
      {
        v24 = v15;
        v25 = v14;
      }

      v6 = v55;
      *(v19 + 2) = v18 + 1;
      v26 = &v19[56 * v18];
      v7 = v19;
      *(v26 + 4) = v23;
      *(v26 + 5) = v13;
      *(v26 + 6) = v22;
      *(v26 + 7) = v21;
      *(v26 + 8) = v20;
      *(v26 + 9) = v25;
      *(v26 + 10) = v24;
      if (v5 == v4)
      {
LABEL_26:
        if (qword_1EAD46290 != -1)
        {
          swift_once();
        }

        v37 = sub_190D53040();
        __swift_project_value_buffer(v37, qword_1EAD9D7D8);
        sub_190D52690();
        sub_190D52690();
        v38 = sub_190D53020();
        v39 = sub_190D57680();

        if (os_log_type_enabled(v38, v39))
        {
          v40 = *(v0 + 16);
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          v57 = v42;
          *v41 = 136315394;
          v43 = MEMORY[0x193AF2A20](v40, MEMORY[0x1E69E6158]);
          v45 = sub_19021D9F8(v43, v44, &v57);

          *(v41 + 4) = v45;
          *(v41 + 12) = 2080;
          v46 = MEMORY[0x193AF2A40](v7, &type metadata for ConversationAppIntentsEntity);
          v48 = sub_19021D9F8(v46, v47, &v57);

          *(v41 + 14) = v48;
          _os_log_impl(&dword_19020E000, v38, v39, "Mapping from identifiers: %s to conversations: %s", v41, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x193AF7A40](v42, -1, -1);
          MEMORY[0x193AF7A40](v41, -1, -1);
        }

        swift_unknownObjectRelease();

        goto LABEL_31;
      }
    }
  }

  if (qword_1EAD46290 != -1)
  {
    swift_once();
  }

  v28 = sub_190D53040();
  __swift_project_value_buffer(v28, qword_1EAD9D7D8);
  sub_190D52690();
  v29 = sub_190D53020();
  v30 = sub_190D57680();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = *(v0 + 16);
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v57 = v33;
    *v32 = 136315138;
    v34 = MEMORY[0x193AF2A20](v31, MEMORY[0x1E69E6158]);
    v36 = sub_19021D9F8(v34, v35, &v57);

    *(v32 + 4) = v36;
    _os_log_impl(&dword_19020E000, v29, v30, "No message navigator provided, unable to query for conversation id: %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x193AF7A40](v33, -1, -1);
    MEMORY[0x193AF7A40](v32, -1, -1);
  }

  v7 = MEMORY[0x1E69E7CC0];
LABEL_31:
  v49 = *(v0 + 8);

  return v49(v7);
}

uint64_t sub_190AF05D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_19082D778;

  return ConversationAppIntentsQuery.entities(matching:)(a2, a3);
}

uint64_t sub_190AF0674(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_190830DC8;

  return ConversationAppIntentsQuery.entities(for:)(a1);
}

uint64_t sub_190AF0750(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_190AF07B8()
{
  result = qword_1EAD45698;
  if (!qword_1EAD45698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45698);
  }

  return result;
}

unint64_t sub_190AF0810()
{
  result = qword_1EAD45690;
  if (!qword_1EAD45690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45690);
  }

  return result;
}

unint64_t sub_190AF086C()
{
  result = qword_1EAD456A0;
  if (!qword_1EAD456A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD456A0);
  }

  return result;
}

unint64_t sub_190AF08C8()
{
  result = qword_1EAD5D218;
  if (!qword_1EAD5D218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5D220);
    sub_190AC6EB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5D218);
  }

  return result;
}

uint64_t sub_190AF095C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190AF36CC(&unk_1EAD55F00, type metadata accessor for DetailsGroupIdentityViewModel);
  sub_190D51C20();

  *a2 = *(v3 + OBJC_IVAR____TtC7ChatKit29DetailsGroupIdentityViewModel__hideGroupIdentityTitleLabel);
  return result;
}

char *sub_190AF0DA0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD55D80);
  sub_190D56320();
  swift_getKeyPath();
  sub_190AF36CC(&qword_1EAD60490, type metadata accessor for DetailsConfiguredViewModel);
  sub_190D51C20();

  v0 = v19[2];

  v1 = sub_190CEE020();

  sub_190D56320();
  if (qword_1EAD519D8 != -1)
  {
    swift_once();
  }

  v2 = [qword_1EAD55D30 detailsActionViewStyle];
  sub_1908C3F94();
  v3 = objc_allocWithZone(MEMORY[0x1E695D170]);
  sub_1902188FC(0, &qword_1EAD5D250);
  v4 = sub_190D57160();

  v5 = [v3 initWithDefaultActionItems:v4 displaysUnavailableActionTypes:1 actionViewStyle:v2];

  v6 = [objc_allocWithZone(type metadata accessor for CKGroupIdentityHeaderViewController()) initWithGroupIdentity:v1 actionsViewConfiguration:v5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5D258);
  sub_190D55210();
  *&v6[OBJC_IVAR____TtC7ChatKit35CKGroupIdentityHeaderViewController_identityHeaderDelegate + 8] = &off_1F0418098;
  swift_unknownObjectWeakAssign();

  sub_190D56320();
  swift_getKeyPath();
  sub_190D51C20();

  v7 = v19[2];

  v8 = *&v7[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation];

  LODWORD(v7) = [v8 isGroupConversation];
  if (!v7)
  {
    goto LABEL_11;
  }

  v9 = v6;
  sub_190D55210();
  [v9 setDelegate_];

  sub_190D56320();
  swift_getKeyPath();
  sub_190D51C20();

  v10 = v19[2];

  swift_getKeyPath();
  v19 = v10;
  sub_190AF36CC(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration);
  sub_190D51C20();

  v11 = [*(v10 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation) supportsMutatingGroupIdentity];

  if (!v11)
  {
    [v9 setActionButtonTitle_];
LABEL_10:

LABEL_11:
    [v6 setShouldShowStaticKeyBadge_];
    [v6 setShouldHideTitleLabel_];
    sub_190D55210();
    v17 = *(v19 + OBJC_IVAR____TtCV7ChatKit27GroupIdentityViewController11Coordinator_groupIdentityController);
    *(v19 + OBJC_IVAR____TtCV7ChatKit27GroupIdentityViewController11Coordinator_groupIdentityController) = v6;
    v18 = v6;

    return v18;
  }

  result = CKFrameworkBundle();
  if (result)
  {
    v13 = result;
    v14 = sub_190D56ED0();
    v15 = sub_190D56ED0();
    v16 = [v13 localizedStringForKey:v14 value:0 table:v15];

    if (!v16)
    {
      sub_190D56F10();
      v16 = sub_190D56ED0();
    }

    [v9 setActionButtonTitle_];

    v9 = v16;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}