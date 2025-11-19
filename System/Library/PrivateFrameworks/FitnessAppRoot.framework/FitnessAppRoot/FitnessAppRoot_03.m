uint64_t TabBarState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a4;
  v33 = sub_1E5ACEEE8();
  v31 = *(v33 - 8);
  v7 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v37 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027A60, &qword_1E5AD7450);
  v9 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v30 - v10;
  type metadata accessor for TabBarState.CodingKeys();
  swift_getWitnessTable();
  v41 = sub_1E5AD02A8();
  v35 = *(v41 - 8);
  v11 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v13 = &v30 - v12;
  v38 = a2;
  v39 = a3;
  v14 = type metadata accessor for TabBarState();
  v15 = *(v14 - 1);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = (&v30 - v17);
  v19 = a1[3];
  v20 = a1[4];
  v43 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  v40 = v13;
  v21 = v42;
  sub_1E5AD03D8();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(v43);
  }

  v22 = v35;
  v23 = v36;
  v42 = v15;
  v24 = v37;
  type metadata accessor for TabBarItemDescriptor();
  sub_1E5ACFD08();
  v45 = 0;
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E5AD0288();
  v25 = v18;
  v39 = v46;
  *v18 = v46;
  LOBYTE(v46) = 1;
  sub_1E5AC3AA8(qword_1ED027A70);
  sub_1E5AD0288();
  sub_1E5A7C974(v23, v18 + v14[9]);
  LOBYTE(v46) = 2;
  v26 = v22;
  *(v25 + v14[10]) = sub_1E5AD0278();
  LOBYTE(v46) = 3;
  *(v25 + v14[11]) = sub_1E5AD0268() & 1;
  LOBYTE(v46) = 4;
  sub_1E5A83C6C(qword_1ED026770);
  v27 = v33;
  sub_1E5AD0288();
  (*(v26 + 8))(v40, v41);
  (*(v31 + 32))(v25 + v14[12], v24, v27);
  v28 = v42;
  (*(v42 + 16))(v32, v25, v14);
  __swift_destroy_boxed_opaque_existential_1(v43);
  return (*(v28 + 8))(v25, v14);
}

uint64_t sub_1E5AC3AA8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED027A60, &qword_1E5AD7450);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E5AC3B18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027A60, &qword_1E5AD7450);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t TabBarState.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  type metadata accessor for TabBarItemDescriptor();
  swift_getWitnessTable();
  sub_1E5ACFD18();
  v8 = *(a2 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027A60, &qword_1E5AD7450);
  sub_1E5ACF9F8();
  MEMORY[0x1E6934A50](*(v3 + *(a2 + 40)));
  v9 = *(v3 + *(a2 + 44));
  sub_1E5AD0398();
  v10 = *(a2 + 48);
  sub_1E5ACEEE8();
  sub_1E5A83C6C(&qword_1ED027898);
  return sub_1E5ACFB48();
}

uint64_t TabBarState.hashValue.getter(uint64_t a1)
{
  sub_1E5AD0378();
  TabBarState.hash(into:)(v3, a1);
  return sub_1E5AD03C8();
}

uint64_t sub_1E5AC3D18(uint64_t a1, uint64_t a2)
{
  sub_1E5AD0378();
  TabBarState.hash(into:)(v4, a2);
  return sub_1E5AD03C8();
}

void sub_1E5AC3D78(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  type metadata accessor for TabBarItemDescriptor();
  sub_1E5ACFD08();
  if (v3 <= 0x3F)
  {
    sub_1E5AC3E64();
    if (v4 <= 0x3F)
    {
      sub_1E5ACEEE8();
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E5AC3E64()
{
  if (!qword_1EE2FCA20)
  {
    v0 = sub_1E5ACFA08();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2FCA20);
    }
  }
}

uint64_t sub_1E5AC3F64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001E5ADFDE0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1E5AD0348();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1E5AC3FF8(uint64_t a1)
{
  v2 = sub_1E5AC41A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5AC4034(uint64_t a1)
{
  v2 = sub_1E5AC41A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AnotherNavigationSplitViewState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027AF8, &qword_1E5AD7680);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5AC41A8();
  sub_1E5AD03E8();
  sub_1E5AD02E8();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1E5AC41A8()
{
  result = qword_1ED027B00;
  if (!qword_1ED027B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027B00);
  }

  return result;
}

uint64_t AnotherNavigationSplitViewState.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027B08, &qword_1E5AD7688);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5AC41A8();
  sub_1E5AD03D8();
  if (!v2)
  {
    v11 = sub_1E5AD0268();
    (*(v6 + 8))(v9, v5);
    *a2 = v11 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1E5AC436C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027AF8, &qword_1E5AD7680);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5AC41A8();
  sub_1E5AD03E8();
  sub_1E5AD02E8();
  return (*(v4 + 8))(v7, v3);
}

uint64_t getEnumTagSinglePayload for AnotherNavigationSplitViewState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_1E5AC4580()
{
  result = qword_1ED027B10;
  if (!qword_1ED027B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027B10);
  }

  return result;
}

unint64_t sub_1E5AC45D8()
{
  result = qword_1ED027B18;
  if (!qword_1ED027B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027B18);
  }

  return result;
}

unint64_t sub_1E5AC4630()
{
  result = qword_1ED027B20;
  if (!qword_1ED027B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027B20);
  }

  return result;
}

uint64_t sub_1E5AC4684(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_1E5AC46C8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027BA0, qword_1E5AD7930);
  v5 = sub_1E5A8CEF0(&qword_1EE2FCA18, &qword_1ED027BA0, qword_1E5AD7930);

  return MEMORY[0x1EEDDD638](v1, v2, v3, v4, v5);
}

uint64_t sub_1E5AC4768(uint64_t a1)
{
  v2 = (v1 + *(a1 + 40));
  v5 = *v2;
  v6 = *(v2 + 1);
  v7 = v2[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027820, &qword_1E5AD6400);
  sub_1E5ACF088();
  return v4;
}

uint64_t sub_1E5AC47D0(uint64_t a1)
{
  v2 = (v1 + *(a1 + 40));
  v5 = *v2;
  v6 = *(v2 + 1);
  v7 = v2[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027820, &qword_1E5AD6400);
  sub_1E5ACF098();
  return v4;
}

uint64_t sub_1E5AC483C(uint64_t a1)
{
  v2 = (v1 + *(a1 + 44));
  v5 = *v2;
  v6 = *(v2 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026F00, &qword_1E5AD3D80);
  sub_1E5ACF798();
  return v4;
}

uint64_t sub_1E5AC489C(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + *(a2 + 44));
  v5 = *v3;
  v6 = *(v3 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026F00, &qword_1E5AD3D80);
  return sub_1E5ACF7A8();
}

uint64_t SignOutView.init(store:monogramViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for SignOutView();
  v9 = a4 + v8[10];
  *v9 = sub_1E5ACF0B8() & 1;
  *(v9 + 8) = v10;
  *(v9 + 16) = v11 & 1;
  v12 = a4 + v8[11];
  sub_1E5ACF788();
  *v12 = v17;
  *(v12 + 8) = v18;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *a4 = sub_1E5ABFAA4;
  *(a4 + 8) = v13;
  *(a4 + 16) = 0;
  v14 = v8[9];

  a3(v15);
}

uint64_t SignOutView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v3 = *(a1 - 8);
  v112 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED027B28, &qword_1E5AD7890);
  v111 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED027B30, &qword_1E5AD7898);
  sub_1E5ACF318();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED027B38, &qword_1E5AD78A0);
  v7 = sub_1E5ACF318();
  v8 = sub_1E5A8CEF0(&qword_1ED027B40, &qword_1ED027B28, &qword_1E5AD7890);
  v113 = *(a1 + 24);
  v9 = v113;
  v10 = sub_1E5AC5590();
  v125 = v9;
  v126 = v10;
  WitnessTable = swift_getWitnessTable();
  v12 = sub_1E5AC5648();
  v123 = WitnessTable;
  v124 = v12;
  v13 = swift_getWitnessTable();
  v119 = v6;
  v120 = v7;
  v121 = v8;
  v122 = v13;
  v102 = sub_1E5ACF778();
  v101 = swift_getWitnessTable();
  v14 = sub_1E5ACF7D8();
  v103 = *(v14 - 8);
  v15 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v96 = &v76 - v16;
  v17 = swift_getWitnessTable();
  v18 = sub_1E5AC57F4();
  v119 = v14;
  v120 = &type metadata for SidebarToolbarLeadItemButtonStyle;
  v84 = v14;
  v121 = v17;
  v122 = v18;
  v86 = v17;
  v19 = v18;
  v85 = v18;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v94 = *(OpaqueTypeMetadata2 - 8);
  v21 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v87 = &v76 - v22;
  v119 = v14;
  v120 = &type metadata for SidebarToolbarLeadItemButtonStyle;
  v121 = v17;
  v122 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v82 = OpaqueTypeMetadata2;
  v119 = OpaqueTypeMetadata2;
  v120 = OpaqueTypeConformance2;
  v24 = OpaqueTypeConformance2;
  v83 = OpaqueTypeConformance2;
  v25 = swift_getOpaqueTypeMetadata2();
  v91 = *(v25 - 8);
  v26 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v76 - v27;
  v119 = OpaqueTypeMetadata2;
  v120 = v24;
  v29 = swift_getOpaqueTypeConformance2();
  v30 = v25;
  v80 = v25;
  v119 = v25;
  v120 = v29;
  v31 = v29;
  v81 = v29;
  v32 = swift_getOpaqueTypeMetadata2();
  v90 = v32;
  v97 = *(v32 - 8);
  v33 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v109 = &v76 - v34;
  v119 = v30;
  v120 = v31;
  v89 = swift_getOpaqueTypeConformance2();
  v119 = v32;
  v120 = MEMORY[0x1E69E6370];
  v121 = v89;
  v122 = MEMORY[0x1E69E6388];
  v95 = MEMORY[0x1E6981440];
  v92 = swift_getOpaqueTypeMetadata2();
  v99 = *(v92 - 8);
  v35 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v92);
  v110 = &v76 - v36;
  v98 = sub_1E5ACF1E8();
  v100 = *(v98 - 8);
  v37 = *(v100 + 64);
  v38 = MEMORY[0x1EEE9AC00](v98);
  v88 = &v76 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v93 = &v76 - v40;
  v78 = *(v3 + 16);
  v79 = v3 + 16;
  v41 = v5;
  v105 = v5;
  v42 = v5;
  v43 = v106;
  v44 = a1;
  v78(v42, v106, a1);
  v77 = *(v3 + 80);
  v45 = (v77 + 32) & ~v77;
  v46 = swift_allocObject();
  v47 = v111;
  v48 = v113;
  *(v46 + 16) = v111;
  *(v46 + 24) = v48;
  v49 = *(v3 + 32);
  v107 = v3 + 32;
  v108 = v49;
  v49(v46 + v45, v41, a1);
  v114 = v47;
  v115 = v48;
  v50 = v47;
  v116 = v43;
  v51 = v96;
  sub_1E5ACF7C8();
  v52 = v87;
  v53 = v84;
  sub_1E5ACF5B8();
  (*(v103 + 8))(v51, v53);
  v54 = v82;
  sub_1E5ACF568();
  (*(v94 + 8))(v52, v54);
  sub_1E5AC47D0(v44);
  v55 = v80;
  sub_1E5ACF628();

  (*(v91 + 8))(v28, v55);
  v56 = v43;
  LOBYTE(v119) = sub_1E5AC4768(v44) & 1;
  v57 = v105;
  v58 = v78;
  v78(v105, v56, v44);
  v59 = swift_allocObject();
  v60 = v113;
  *(v59 + 16) = v50;
  *(v59 + 24) = v60;
  v108(v59 + v45, v57, v44);
  v61 = v109;
  v62 = v90;
  v63 = v89;
  sub_1E5ACF678();

  (*(v97 + 8))(v61, v62);
  v64 = v105;
  v58(v105, v106, v44);
  v65 = swift_allocObject();
  v66 = v113;
  *(v65 + 16) = v111;
  *(v65 + 24) = v66;
  v108(v65 + v45, v64, v44);
  v119 = v62;
  v120 = MEMORY[0x1E69E6370];
  v121 = v63;
  v122 = MEMORY[0x1E69E6388];
  v67 = swift_getOpaqueTypeConformance2();
  v68 = v88;
  v69 = v92;
  v70 = v110;
  sub_1E5ACF668();

  (*(v99 + 8))(v70, v69);
  v117 = v67;
  v118 = MEMORY[0x1E69805D0];
  v71 = v98;
  v72 = swift_getWitnessTable();
  v73 = v93;
  sub_1E5A9AA54(v68, v71, v72);
  v74 = *(v100 + 8);
  v74(v68, v71);
  sub_1E5A9AA54(v73, v71, v72);
  return (v74)(v73, v71);
}

unint64_t sub_1E5AC5590()
{
  result = qword_1ED027B48;
  if (!qword_1ED027B48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED027B30, &qword_1E5AD7898);
    sub_1E5A8CEF0(&qword_1ED027B50, &qword_1ED027B58, &qword_1E5AD78A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027B48);
  }

  return result;
}

unint64_t sub_1E5AC5648()
{
  result = qword_1ED027B60;
  if (!qword_1ED027B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED027B38, &qword_1E5AD78A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED027B68, &qword_1E5AD78B0);
    sub_1E5AC573C();
    swift_getOpaqueTypeConformance2();
    sub_1E5A8CEF0(&qword_1ED027B88, &qword_1ED027B90, &qword_1E5AD78C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027B60);
  }

  return result;
}

unint64_t sub_1E5AC573C()
{
  result = qword_1ED027B70;
  if (!qword_1ED027B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED027B68, &qword_1E5AD78B0);
    sub_1E5A8CEF0(&qword_1ED027B78, &qword_1ED027B80, &qword_1E5AD78B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027B70);
  }

  return result;
}

unint64_t sub_1E5AC57F4()
{
  result = qword_1ED027B98;
  if (!qword_1ED027B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027B98);
  }

  return result;
}

uint64_t sub_1E5AC5850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v20[0] = a1;
  v20[1] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED027B28, &qword_1E5AD7890);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED027B30, &qword_1E5AD7898);
  sub_1E5ACF318();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED027B38, &qword_1E5AD78A0);
  v7 = sub_1E5ACF318();
  v8 = sub_1E5A8CEF0(&qword_1ED027B40, &qword_1ED027B28, &qword_1E5AD7890);
  v20[19] = a3;
  v20[20] = sub_1E5AC5590();
  v20[17] = swift_getWitnessTable();
  v20[18] = sub_1E5AC5648();
  v20[13] = v6;
  v20[14] = v7;
  v20[15] = v8;
  v20[16] = swift_getWitnessTable();
  v9 = sub_1E5ACF778();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v20 - v15;
  v20[10] = a2;
  v20[11] = a3;
  v20[12] = v20[0];
  v20[4] = a2;
  v20[5] = a3;
  v20[6] = v20[0];
  sub_1E5ACF768();
  WitnessTable = swift_getWitnessTable();
  sub_1E5A9AA54(v14, v9, WitnessTable);
  v18 = *(v10 + 8);
  v18(v14, v9);
  sub_1E5A9AA54(v16, v9, WitnessTable);
  return (v18)(v16, v9);
}

uint64_t sub_1E5AC5B08@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1E5ACF288();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027BB0, &qword_1E5AD79D0);
  return sub_1E5AC5B74(a1 + *(v2 + 44));
}

uint64_t sub_1E5AC5B74@<X0>(uint64_t a1@<X8>)
{
  v115 = a1;
  v1 = sub_1E5ACEEE8();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v112 = &v100 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E5ACFB98();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v111 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_1E5ACF7F8();
  v110 = *(v114 - 1);
  v7 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v114);
  v121 = &v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for AccountState();
  v9 = *(*(v117 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v117);
  v119 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v118 = &v100 - v12;
  v13 = sub_1E5ACF508();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v100 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_1E5ACEF18();
  v18 = *(v104 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v104);
  v21 = &v100 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027BB8, &qword_1E5AD79D8);
  v22 = *(*(v101 - 8) + 64);
  MEMORY[0x1EEE9AC00](v101);
  v24 = &v100 - v23;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027BC0, &qword_1E5AD79E0);
  v25 = *(*(v102 - 8) + 64);
  MEMORY[0x1EEE9AC00](v102);
  v103 = &v100 - v26;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027BC8, &qword_1E5AD79E8);
  v27 = *(*(v105 - 8) + 64);
  MEMORY[0x1EEE9AC00](v105);
  v116 = (&v100 - v28);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027BD0, &qword_1E5AD79F0);
  v29 = *(*(v106 - 8) + 64);
  MEMORY[0x1EEE9AC00](v106);
  v109 = &v100 - v30;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027BD8, &qword_1E5AD79F8);
  v31 = *(*(v108 - 8) + 64);
  v32 = MEMORY[0x1EEE9AC00](v108);
  v113 = &v100 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v107 = &v100 - v35;
  MEMORY[0x1EEE9AC00](v34);
  v120 = &v100 - v36;
  v37 = type metadata accessor for SignOutView();
  sub_1E5AC6B4C(v37);
  sub_1E5ACEF28();
  v38 = sub_1E5AC483C(v37);
  v39 = sub_1E5ACF518();
  if (v38)
  {
    (*(v14 + 104))(v17, *MEMORY[0x1E6980EA8], v13);
    v40 = sub_1E5ACF528();

    (*(v14 + 8))(v17, v13);
    v39 = v40;
  }

  KeyPath = swift_getKeyPath();
  (*(v18 + 32))(v24, v21, v104);
  v42 = &v24[*(v101 + 36)];
  *v42 = KeyPath;
  v42[1] = v39;
  v43 = sub_1E5AC4768(v37);
  v44 = v103;
  if (v43)
  {
    v45 = sub_1E5ACF378();
  }

  else
  {
    v45 = sub_1E5ACF398();
  }

  v46 = v45;
  v47 = v114;
  sub_1E5AC8F0C(v24, v44, &qword_1ED027BB8, &qword_1E5AD79D8);
  *(v44 + *(v102 + 36)) = v46;
  sub_1E5AC46C8();
  swift_getKeyPath();
  sub_1E5ACFA38();

  v48 = v128;
  sub_1E5AC46C8();
  swift_getKeyPath();
  v49 = v118;
  sub_1E5ACFA48();

  v50 = v119;
  swift_storeEnumTagMultiPayload();
  v51 = _s14FitnessAppRoot12AccountStateO2eeoiySbAC_ACtFZ_0(v49, v50);
  sub_1E5A9A0EC(v50, type metadata accessor for AccountState);
  sub_1E5A9A0EC(v49, type metadata accessor for AccountState);
  v52 = 13.0;
  if ((v51 & 1) == 0)
  {
    sub_1E5AC46C8();
    swift_getKeyPath();
    sub_1E5ACFA38();

    v52 = *(&v122 + 1);
  }

  v53 = v116;
  sub_1E5AC8F0C(v44, v116, &qword_1ED027BC0, &qword_1E5AD79E0);
  v54 = (v53 + *(v105 + 36));
  *v54 = v48;
  v54[1] = v52;
  sub_1E5AC46C8();
  swift_getKeyPath();
  sub_1E5ACFA38();

  v55 = (v110 + 8);
  v56 = v121;
  sub_1E5ACF7E8();
  v57 = 0.0;
  v58 = MEMORY[0x1E6933F90](v56, 0.0);
  v59 = *v55;
  (*v55)(v56, v47);
  sub_1E5AC46C8();
  swift_getKeyPath();
  sub_1E5ACFA38();

  v60 = v128;
  v61 = v109;
  sub_1E5AC8F0C(v116, v109, &qword_1ED027BC8, &qword_1E5AD79E8);
  v62 = (v61 + *(v106 + 36));
  *v62 = v58;
  v62[1] = v60;
  sub_1E5ACF7E8();
  v63 = MEMORY[0x1E6933F90](v56, 0.0);
  v116 = v55;
  v114 = v59;
  (v59)(v56, v47);
  sub_1E5AC46C8();
  swift_getKeyPath();
  sub_1E5ACFA38();

  v64 = v129;
  v65 = v107;
  sub_1E5AC8F0C(v61, v107, &qword_1ED027BD0, &qword_1E5AD79F0);
  v66 = (v65 + *(v108 + 36));
  *v66 = v63;
  v66[1] = v64;
  sub_1E5AC8F0C(v65, v120, &qword_1ED027BD8, &qword_1E5AD79F8);
  sub_1E5ACFB88();
  type metadata accessor for LocalizableBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v68 = [objc_opt_self() bundleForClass_];
  sub_1E5AC46C8();
  swift_getKeyPath();
  sub_1E5ACFA48();

  v69 = sub_1E5ACF538();
  v71 = v70;
  LOBYTE(v59) = v72;
  LODWORD(v128) = sub_1E5ACF388();
  v111 = sub_1E5ACF548();
  v110 = v73;
  v75 = v74;
  v112 = v76;
  sub_1E5AC8F74(v69, v71, v59 & 1);

  sub_1E5AC46C8();
  swift_getKeyPath();
  v77 = v118;
  sub_1E5ACFA48();

  v78 = v119;
  swift_storeEnumTagMultiPayload();
  LOBYTE(v69) = _s14FitnessAppRoot12AccountStateO2eeoiySbAC_ACtFZ_0(v77, v78);
  sub_1E5A9A0EC(v78, type metadata accessor for AccountState);
  sub_1E5A9A0EC(v77, type metadata accessor for AccountState);
  if ((v69 & 1) == 0)
  {
    sub_1E5AC46C8();
    swift_getKeyPath();
    sub_1E5ACFA38();

    if (v131)
    {
      v57 = 1.0;
    }

    else
    {
      v57 = 0.0;
    }
  }

  sub_1E5AC46C8();
  swift_getKeyPath();
  sub_1E5ACFA38();

  v79 = v128;
  sub_1E5AC46C8();
  swift_getKeyPath();
  sub_1E5ACFA38();

  v80 = v123;
  sub_1E5AC46C8();
  swift_getKeyPath();
  sub_1E5ACFA38();

  v81 = v121;
  sub_1E5ACF7E8();
  v121 = MEMORY[0x1E6933F90](v81, 0.0);
  v82 = v114;
  (v114)(v81, v47);
  sub_1E5AC46C8();
  swift_getKeyPath();
  sub_1E5ACFA38();

  v83 = v128;
  v84 = v75 & 1;
  v140 = v84;
  sub_1E5ACF7E8();
  v85 = MEMORY[0x1E6933F90](v81, 0.0);
  v82(v81, v47);
  sub_1E5AC46C8();
  swift_getKeyPath();
  sub_1E5ACFA38();

  v86 = v130;
  v87 = v120;
  v88 = v113;
  sub_1E5A9B464(v120, v113, &qword_1ED027BD8, &qword_1E5AD79F8);
  v89 = v115;
  sub_1E5A9B464(v88, v115, &qword_1ED027BD8, &qword_1E5AD79F8);
  v90 = v89 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027BE0, &qword_1E5AD7A40) + 48);
  v91 = v111;
  *&v122 = v111;
  v92 = v110;
  *(&v122 + 1) = v110;
  LOBYTE(v123) = v84;
  *(&v123 + 1) = *v139;
  DWORD1(v123) = *&v139[3];
  v93 = v112;
  *(&v123 + 1) = v112;
  *&v124 = v57;
  *(&v124 + 1) = v79;
  *&v125 = v80;
  v94 = v121;
  *(&v125 + 1) = v121;
  *&v126 = v83;
  *(&v126 + 1) = v85;
  v127 = v86;
  v95 = v123;
  *v90 = v122;
  *(v90 + 16) = v95;
  v96 = v124;
  v97 = v125;
  v98 = v126;
  *(v90 + 80) = v127;
  *(v90 + 48) = v97;
  *(v90 + 64) = v98;
  *(v90 + 32) = v96;
  sub_1E5A9B464(&v122, &v128, &qword_1ED027BE8, &qword_1E5AD7A48);
  sub_1E5A9B8E8(v87, &qword_1ED027BD8, &qword_1E5AD79F8);
  v128 = v91;
  v129 = v92;
  LOBYTE(v130) = v84;
  *(&v130 + 1) = *v139;
  HIDWORD(v130) = *&v139[3];
  v131 = v93;
  v132 = v57;
  v133 = v79;
  v134 = v80;
  v135 = v94;
  v136 = v83;
  v137 = v85;
  v138 = v86;
  sub_1E5A9B8E8(&v128, &qword_1ED027BE8, &qword_1E5AD7A48);
  return sub_1E5A9B8E8(v88, &qword_1ED027BD8, &qword_1E5AD79F8);
}

uint64_t sub_1E5AC6B4C(uint64_t a1)
{
  v3 = sub_1E5ACEEE8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v37 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E5ACFB98();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v36 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E5ACEE58();
  v32 = *(v9 - 8);
  v10 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E5ACEE68();
  v33 = *(v13 - 8);
  v14 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1E5ACEE98();
  v31 = *(v17 - 8);
  v18 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for AccountState();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v31 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a1;
  v35 = v1;
  sub_1E5AC46C8();
  swift_getKeyPath();
  sub_1E5ACFA48();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1E5A9A0EC(v24, type metadata accessor for AccountState);
    }

    sub_1E5ACFB88();
    type metadata accessor for LocalizableBundle();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v30 = [objc_opt_self() bundleForClass_];
    sub_1E5AC46C8();
    swift_getKeyPath();
    sub_1E5ACFA48();

    return sub_1E5ACFBE8();
  }

  else
  {
    v27 = v31;
    (*(v31 + 32))(v20, v24, v17);
    v28 = v32;
    (*(v32 + 104))(v12, *MEMORY[0x1E6968A50], v9);
    MEMORY[0x1E69334F0](v12);
    (*(v28 + 8))(v12, v9);
    sub_1E5AC8F84(&qword_1ED027BF0, MEMORY[0x1E6968A60]);
    sub_1E5ACEE88();
    (*(v33 + 8))(v16, v13);
    (*(v27 + 8))(v20, v17);
    return v38;
  }
}

uint64_t sub_1E5AC7044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED027B30, &qword_1E5AD7898);
  sub_1E5ACF318();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED027B38, &qword_1E5AD78A0);
  v4 = sub_1E5ACF318();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v19 - v10;
  v12 = type metadata accessor for SignOutView();
  sub_1E5AC722C(v12, v9);
  v13 = sub_1E5AC5590();
  v19[2] = a3;
  v19[3] = v13;
  WitnessTable = swift_getWitnessTable();
  v15 = sub_1E5AC5648();
  v19[0] = WitnessTable;
  v19[1] = v15;
  v16 = swift_getWitnessTable();
  sub_1E5A9AA54(v9, v4, v16);
  v17 = *(v5 + 8);
  v17(v9, v4);
  sub_1E5A9AA54(v11, v4, v16);
  return (v17)(v11, v4);
}

uint64_t sub_1E5AC722C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v86 = a2;
  v76 = sub_1E5ACF1D8();
  v75 = *(v76 - 8);
  v5 = *(v75 + 64);
  v6 = MEMORY[0x1EEE9AC00](v76);
  v74 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v73 = &v69 - v8;
  v72 = sub_1E5ACF738();
  v71 = *(v72 - 8);
  v9 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v70 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027B38, &qword_1E5AD78A0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v77 = &v69 - v13;
  v14 = *(a1 + 16);
  v78 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED027B30, &qword_1E5AD7898);
  v15 = sub_1E5ACF318();
  v79 = *(v15 - 8);
  v16 = *(v79 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v69 - v18;
  v69 = *(v14 - 8);
  v20 = *(v69 + 64);
  v21 = MEMORY[0x1EEE9AC00](v17);
  v23 = &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v69 - v24;
  v26 = type metadata accessor for AccountState();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26);
  v29 = (&v69 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v80 = v15;
  v83 = v11;
  v30 = sub_1E5ACF318();
  v84 = *(v30 - 8);
  v85 = v30;
  v31 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v81 = a1;
  v82 = &v69 - v32;
  sub_1E5AC46C8();
  swift_getKeyPath();
  sub_1E5ACFA48();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v34 = *v29;
      v35 = v29[1];
      v36 = sub_1E5ACF728();
      v37 = sub_1E5ACF518();
      KeyPath = swift_getKeyPath();
      v91 = v36;
      v92 = KeyPath;
      v93 = v37;
      v39 = *(v81 + 24);
      v40 = sub_1E5AC5590();

      sub_1E5AAA2E8(&v91, v14, v78);
      v89 = v39;
      v90 = v40;
      v41 = v80;
      swift_getWitnessTable();
      sub_1E5AC5648();
      v42 = v82;
      sub_1E5AA82CC(v19, v41);

      (*(v79 + 8))(v19, v41);
    }

    else
    {
      sub_1E5ACF728();
      v46 = v71;
      v47 = v70;
      v48 = v72;
      (*(v71 + 104))(v70, *MEMORY[0x1E6981630], v72);
      v49 = sub_1E5ACF758();

      (*(v46 + 8))(v47, v48);
      v50 = sub_1E5ACF378();
      v91 = v49;
      LODWORD(v92) = v50;
      v51 = v73;
      sub_1E5ACF1C8();
      v52 = v74;
      sub_1E5ACF1B8();
      v53 = *(v75 + 8);
      v54 = v76;
      v53(v51, v76);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027B68, &qword_1E5AD78B0);
      sub_1E5AC573C();
      v55 = v77;
      sub_1E5ACF5E8();
      v53(v52, v54);

      v56 = v83;
      v57 = (v55 + *(v83 + 36));
      v58 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027B90, &qword_1E5AD78C0) + 28);
      sub_1E5ACF2B8();
      v59 = sub_1E5ACF2C8();
      (*(*(v59 - 8) + 56))(v57 + v58, 0, 1, v59);
      *v57 = swift_getKeyPath();
      v39 = *(v81 + 24);
      v60 = sub_1E5AC5590();
      v98 = v39;
      v99 = v60;
      v61 = v80;
      swift_getWitnessTable();
      sub_1E5AC5648();
      v42 = v82;
      sub_1E5AAA2E8(v55, v61, v56);
      sub_1E5A7FA4C(v55);
    }
  }

  else
  {
    v39 = *(v81 + 24);
    sub_1E5A9AA54(v3 + *(v81 + 36), v14, v39);
    sub_1E5A9AA54(v25, v14, v39);
    v43 = sub_1E5AC5590();
    sub_1E5AA82CC(v23, v14);
    v87 = v39;
    v88 = v43;
    v44 = v80;
    swift_getWitnessTable();
    sub_1E5AC5648();
    v42 = v82;
    sub_1E5AA82CC(v19, v44);
    (*(v79 + 8))(v19, v44);
    v45 = *(v69 + 8);
    v45(v23, v14);
    v45(v25, v14);
    sub_1E5A9A0EC(v29, type metadata accessor for AccountState);
  }

  v62 = v85;
  v63 = v84;
  v64 = sub_1E5AC5590();
  v96 = v39;
  v97 = v64;
  WitnessTable = swift_getWitnessTable();
  v66 = sub_1E5AC5648();
  v94 = WitnessTable;
  v95 = v66;
  v67 = swift_getWitnessTable();
  sub_1E5A9AA54(v42, v62, v67);
  return (*(v63 + 8))(v42, v62);
}

uint64_t sub_1E5AC7B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1E5ACFA88();
  v63 = *(v8 - 8);
  v64 = v8;
  v9 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v60 = v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E5ACFAA8();
  v61 = *(v11 - 8);
  v62 = v11;
  v12 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v59 = v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = a4;
  v56 = a5;
  v14 = type metadata accessor for SignOutView();
  v54 = *(v14 - 8);
  v52[1] = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v53 = v52 - v15;
  v65 = sub_1E5ACFAC8();
  v58 = *(v65 - 8);
  v16 = *(v58 + 64);
  v17 = MEMORY[0x1EEE9AC00](v65);
  v19 = v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v57 = v52 - v20;
  v21 = type metadata accessor for SignOutAction();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for AccountState();
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = v52 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v31 = v52 - v30;
  sub_1E5AC46C8();
  swift_getKeyPath();
  sub_1E5ACFA48();

  swift_storeEnumTagMultiPayload();
  LOBYTE(a5) = _s14FitnessAppRoot12AccountStateO2eeoiySbAC_ACtFZ_0(v31, v29);
  sub_1E5A9A0EC(v29, type metadata accessor for AccountState);
  sub_1E5A9A0EC(v31, type metadata accessor for AccountState);
  if (a5)
  {
    return sub_1E5AC489C(0, v14);
  }

  v33 = sub_1E5AC4768(v14);
  sub_1E5AC489C(v33 & 1, v14);
  v34 = sub_1E5AC4768(v14);
  sub_1E5AC46C8();
  if (v34)
  {
    *v24 = xmmword_1E5AD7870;
    *(v24 + 2) = 0xC02E000000000000;
    v24[24] = 0;
    swift_storeEnumTagMultiPayload();
    sub_1E5ACFA58();

    sub_1E5A9A0EC(v24, type metadata accessor for SignOutAction);
    sub_1E5AC8CB4();
    v52[0] = sub_1E5ACFF58();
    sub_1E5ACFAB8();
    v35 = v57;
    sub_1E5ACFAD8();
    v58 = *(v58 + 8);
    (v58)(v19, v65);
    v37 = v53;
    v36 = v54;
    (*(v54 + 16))(v53, a3, v14);
    v38 = (*(v36 + 80) + 32) & ~*(v36 + 80);
    v39 = swift_allocObject();
    v40 = v56;
    *(v39 + 16) = v55;
    *(v39 + 24) = v40;
    (*(v36 + 32))(v39 + v38, v37, v14);
    v70 = sub_1E5AC8E44;
    v71 = v39;
    aBlock = MEMORY[0x1E69E9820];
    v67 = 1107296256;
    v41 = &block_descriptor_24;
  }

  else
  {
    *v24 = 0;
    *(v24 + 1) = 0;
    *(v24 + 2) = 0;
    v24[24] = 1;
    swift_storeEnumTagMultiPayload();
    sub_1E5ACFA58();

    sub_1E5A9A0EC(v24, type metadata accessor for SignOutAction);
    sub_1E5AC8CB4();
    v52[0] = sub_1E5ACFF58();
    sub_1E5ACFAB8();
    v35 = v57;
    sub_1E5ACFAD8();
    v58 = *(v58 + 8);
    (v58)(v19, v65);
    v43 = v53;
    v42 = v54;
    (*(v54 + 16))(v53, a3, v14);
    v44 = (*(v42 + 80) + 32) & ~*(v42 + 80);
    v45 = swift_allocObject();
    v46 = v56;
    *(v45 + 16) = v55;
    *(v45 + 24) = v46;
    (*(v42 + 32))(v45 + v44, v43, v14);
    v70 = sub_1E5AC8D00;
    v71 = v45;
    aBlock = MEMORY[0x1E69E9820];
    v67 = 1107296256;
    v41 = &block_descriptor_2;
  }

  v68 = sub_1E5AC4684;
  v69 = v41;
  v47 = _Block_copy(&aBlock);

  v48 = v59;
  sub_1E5ACFA98();
  aBlock = MEMORY[0x1E69E7CC0];
  sub_1E5AC8F84(&qword_1ED026C48, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED026C50, &unk_1E5AD3460);
  sub_1E5A8CEF0(&qword_1ED026C58, &qword_1ED026C50, &unk_1E5AD3460);
  v49 = v60;
  v50 = v64;
  sub_1E5AD0008();
  v51 = v52[0];
  MEMORY[0x1E6934610](v35, v48, v49, v47);
  _Block_release(v47);

  (*(v63 + 8))(v49, v50);
  (*(v61 + 8))(v48, v62);
  return (v58)(v35, v65);
}

uint64_t sub_1E5AC831C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for SignOutView() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_1E5AC7B1C(a1, a2, v8, v5, v6);
}

uint64_t sub_1E5AC83B8()
{
  v0 = type metadata accessor for SignOutAction();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SignOutView();
  sub_1E5AC46C8();
  *(v3 + 1) = 0;
  *(v3 + 2) = 0;
  *v3 = 0x4022000000000000;
  v3[24] = 1;
  swift_storeEnumTagMultiPayload();
  sub_1E5ACFA58();

  return sub_1E5A9A0EC(v3, type metadata accessor for SignOutAction);
}

uint64_t sub_1E5AC84AC()
{
  v0 = type metadata accessor for SignOutAction();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SignOutView();
  sub_1E5AC46C8();
  *v3 = xmmword_1E5AD7880;
  *(v3 + 2) = 0xC02E000000000000;
  v3[24] = 0;
  swift_storeEnumTagMultiPayload();
  sub_1E5ACFA58();

  return sub_1E5A9A0EC(v3, type metadata accessor for SignOutAction);
}

uint64_t sub_1E5AC85A4()
{
  v0 = type metadata accessor for SignOutAction();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SignOutView();
  sub_1E5AC46C8();
  swift_storeEnumTagMultiPayload();
  sub_1E5ACFA58();

  return sub_1E5A9A0EC(v3, type metadata accessor for SignOutAction);
}

uint64_t sub_1E5AC8690()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(*(type metadata accessor for SignOutView() - 8) + 80);
  return sub_1E5AC85A4();
}

void sub_1E5AC8758(uint64_t a1)
{
  sub_1E5AC8B68();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      sub_1E5A7BBB0();
      if (v5 <= 0x3F)
      {
        sub_1E5A7BC08();
        if (v6 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1E5AC8810(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  v7 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((v7 + ((v6 + 17) & ~v6) + 31) & 0xFFFFFFFFFFFFFFF8) + 16;
  v10 = a2 - v8;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_28:
    v18 = (a1 + v6 + 17) & ~v6;
    if (v5 >= 0x7FFFFFFE)
    {
      return (*(v4 + 48))(v18);
    }

    v19 = *(((v7 + v18 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    v20 = v19 - 1;
    if (v20 < 0)
    {
      v20 = -1;
    }

    return (v20 + 1);
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v8 + (v11 | v17) + 1;
}

unsigned int *sub_1E5AC8978(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((v9 + ((v8 + 17) & ~v8) + 31) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v14 = 0;
    v15 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = a3 - v7;
    if (((v9 + ((v8 + 17) & ~v8) + 31) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *(result + v10) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v10) = 0;
      }

      else if (v14)
      {
        *(result + v10) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      result = ((result + v8 + 17) & ~v8);
      if (v6 < 0x7FFFFFFE)
      {
        v20 = (result + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
        if (a2 > 0x7FFFFFFE)
        {
          *(v20 + 16) = 0;
          *v20 = a2 - 0x7FFFFFFF;
          *(v20 + 8) = 0;
        }

        else
        {
          *(v20 + 8) = a2;
        }
      }

      else
      {
        v19 = *(v5 + 56);

        return v19(result);
      }

      return result;
    }
  }

  if (((v9 + ((v8 + 17) & ~v8) + 31) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((v9 + ((v8 + 17) & ~v8) + 31) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v17 = ~v7 + a2;
    v18 = result;
    bzero(result, ((v9 + ((v8 + 17) & ~v8) + 31) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v18;
    *v18 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *(result + v10) = v16;
    }

    else
    {
      *(result + v10) = v16;
    }
  }

  else if (v14)
  {
    *(result + v10) = v16;
  }

  return result;
}

void sub_1E5AC8B68()
{
  if (!qword_1EE2FCA68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED027BA0, qword_1E5AD7930);
    sub_1E5A8CEF0(&qword_1EE2FCA18, &qword_1ED027BA0, qword_1E5AD7930);
    v0 = sub_1E5ACF108();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2FCA68);
    }
  }
}

uint64_t sub_1E5AC8C0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027BA8, &qword_1E5AD79C8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1E5A9B464(a1, &v6 - v4, &qword_1ED027BA8, &qword_1E5AD79C8);
  return sub_1E5ACF208();
}

unint64_t sub_1E5AC8CB4()
{
  result = qword_1ED026C40;
  if (!qword_1ED026C40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED026C40);
  }

  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_3Tm_0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = (type metadata accessor for SignOutView() - 8);
  v4 = *(*v3 + 64);
  v5 = (v0 + ((*(*v3 + 80) + 32) & ~*(*v3 + 80)));
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v5 + 16);
  sub_1E5A9A6F8();
  (*(*(v2 - 8) + 8))(v5 + v3[11], v2);
  v9 = *(v5 + v3[12] + 8);

  v10 = *(v5 + v3[13] + 8);

  return swift_deallocObject();
}

uint64_t sub_1E5AC8E5C(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(type metadata accessor for SignOutView() - 8);
  v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a1(v5, v2, v3);
}

uint64_t sub_1E5AC8EF4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_1E5AC5B08(a1);
}

uint64_t sub_1E5AC8F0C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1E5AC8F74(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1E5AC8F84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E5AC8FD4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ED027C00, qword_1E5AD7AD0);
  v5 = sub_1E5AC9870();

  return MEMORY[0x1EEDDD638](v1, v2, v3, v4, v5);
}

uint64_t AnotherNavigationSplitView.init(store:sidebarViewBuilder:detailViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, void (*a4)(uint64_t)@<X4>, uint64_t a5@<X8>)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *a5 = sub_1E5ABFAA4;
  *(a5 + 8) = v9;
  *(a5 + 16) = 0;
  v10 = type metadata accessor for AnotherNavigationSplitView();
  v11 = *(v10 + 52);

  v13 = a3(v12);
  v14 = a5 + *(v10 + 56);
  a4(v13);
}

uint64_t AnotherNavigationSplitView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027BF8, &qword_1E5AD7A50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = a1[3];
  v9 = a1[4];
  v8 = a1[5];
  v27 = a1[2];
  v6 = v27;
  v28 = MEMORY[0x1E6981E70];
  v29 = v7;
  v30 = v9;
  v31 = MEMORY[0x1E6981E60];
  v32 = v8;
  v10 = sub_1E5ACF2A8();
  v20[0] = *(v10 - 8);
  v11 = *(v20[0] + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v20 - v15;
  sub_1E5AC8FD4();
  sub_1E5ACF418();
  sub_1E5ACF828();
  v22 = v6;
  v23 = v7;
  v24 = v9;
  v25 = v8;
  v26 = v2;
  v20[4] = v6;
  v20[5] = v7;
  v20[6] = v9;
  v20[7] = v8;
  v21 = v2;
  sub_1E5ACF298();
  WitnessTable = swift_getWitnessTable();
  sub_1E5A9AA54(v14, v10, WitnessTable);
  v18 = *(v20[0] + 8);
  v18(v14, v10);
  sub_1E5A9AA54(v16, v10, WitnessTable);
  return (v18)(v16, v10);
}

uint64_t sub_1E5AC93DC()
{
  swift_getKeyPath();
  sub_1E5ACFA48();

  if (v1 == 1)
  {
    return sub_1E5ACF408();
  }

  else
  {
    return sub_1E5ACF3F8();
  }
}

uint64_t sub_1E5AC9450@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E5ACF418();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_1E5AC94BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[0] = v11;
  v17[1] = v12;
  v17[2] = v13;
  v17[3] = v14;
  v15 = type metadata accessor for AnotherNavigationSplitView();
  sub_1E5A9AA54(a1 + *(v15 + 52), a2, a4);
  sub_1E5A9AA54(v10, a2, a4);
  return (*(v7 + 8))(v10, a2);
}

uint64_t sub_1E5AC95DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[0] = v12;
  v18[1] = v13;
  v18[2] = v14;
  v18[3] = v15;
  v16 = type metadata accessor for AnotherNavigationSplitView();
  sub_1E5A9AA54(a1 + *(v16 + 56), a3, a5);
  sub_1E5A9AA54(v11, a3, a5);
  return (*(v8 + 8))(v11, a3);
}

uint64_t sub_1E5AC9714(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

void sub_1E5AC975C(uint64_t a1)
{
  sub_1E5AC9800();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      v5 = *(a1 + 24);
      swift_checkMetadataState();
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E5AC9800()
{
  if (!qword_1EE2FCA58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ED027C00, qword_1E5AD7AD0);
    sub_1E5AC9870();
    v0 = sub_1E5ACF108();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2FCA58);
    }
  }
}

unint64_t sub_1E5AC9870()
{
  result = qword_1EE2FCA08;
  if (!qword_1EE2FCA08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ED027C00, qword_1E5AD7AD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2FCA08);
  }

  return result;
}

uint64_t SidebarModalitiesState.selectedItem.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = *(a1 + 16);
  v6 = sub_1E5ACFFD8();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v2 + v4, v6);
}

uint64_t SidebarModalitiesState.selectedItem.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = *(a2 + 16);
  v6 = sub_1E5ACFFD8();
  v7 = *(*(v6 - 8) + 40);

  return v7(v2 + v4, a1, v6);
}

uint64_t (*SidebarModalitiesState.selectedItem.modify(uint64_t a1, uint64_t a2))(void, void, void)
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 40);
  return result;
}

uint64_t (*SidebarModalitiesState.isSidebarVisible.modify(uint64_t a1, uint64_t a2))(void, void, void)
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 44);
  return result;
}

uint64_t SidebarModalitiesState.init(locale:modalities:selectedItem:isSidebarVisible:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for SidebarModalitiesState();
  v13 = v12[10];
  (*(*(a5 - 8) + 56))(a6 + v13, 1, 1, a5);
  v14 = sub_1E5ACEEE8();
  (*(*(v14 - 8) + 32))(a6, a1, v14);
  v15 = v12[9];
  type metadata accessor for SidebarModality();
  sub_1E5ACFD08();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v16 = sub_1E5ACF958();
  (*(*(v16 - 8) + 32))(a6 + v15, a2, v16);
  v17 = sub_1E5ACFFD8();
  result = (*(*(v17 - 8) + 40))(a6 + v13, a3, v17);
  *(a6 + v12[11]) = a4;
  return result;
}

uint64_t sub_1E5AC9C1C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000;
  if (v4 || (sub_1E5AD0348() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6974696C61646F6DLL && a2 == 0xEA00000000007365 || (sub_1E5AD0348() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64657463656C6573 && a2 == 0xEC0000006D657449 || (sub_1E5AD0348() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E5ADFDE0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E5AD0348();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_1E5AC9D90(unsigned __int8 a1)
{
  v1 = 0x656C61636F6CLL;
  v2 = 0x64657463656C6573;
  if (a1 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (a1)
  {
    v1 = 0x6974696C61646F6DLL;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1E5AC9E18(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_1E5AC9D90(*v1);
}

uint64_t sub_1E5AC9E24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_1E5AC9C1C(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1E5AC9E54@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  result = sub_1E5ACB0C8();
  *a2 = result;
  return result;
}

uint64_t sub_1E5AC9E80(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5AC9ED4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t SidebarModalitiesState.encode(to:)(void *a1, uint64_t a2)
{
  v24 = a2;
  v3 = v2;
  v5 = *(a2 + 16);
  v22 = *(a2 + 24);
  v23 = v5;
  type metadata accessor for SidebarModalitiesState.CodingKeys();
  swift_getWitnessTable();
  v6 = sub_1E5AD0318();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v21 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5AD03E8();
  v31 = 0;
  sub_1E5ACEEE8();
  sub_1E5A83C6C(&qword_1ED026768);
  v12 = v3;
  v13 = v25;
  sub_1E5AD0308();
  if (!v13)
  {
    v25 = v7;
    v15 = v24[9];
    v31 = 1;
    type metadata accessor for SidebarModality();
    sub_1E5ACFD08();
    WitnessTable = swift_getWitnessTable();
    swift_getWitnessTable();
    sub_1E5ACF958();
    v29 = swift_getWitnessTable();
    v16 = swift_getWitnessTable();
    v28 = swift_getWitnessTable();
    v17 = swift_getWitnessTable();
    v26 = v16;
    v27 = v17;
    swift_getWitnessTable();
    sub_1E5AD0308();
    v18 = v24[10];
    v31 = 2;
    v19 = *(v22 + 16);
    sub_1E5AD02C8();
    v7 = v25;
    v20 = *(v12 + v24[11]);
    v31 = 3;
    sub_1E5AD02E8();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t SidebarModalitiesState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v43 = a4;
  v60 = sub_1E5ACFFD8();
  v58 = *(v60 - 8);
  v7 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v45 = v42 - v8;
  v9 = type metadata accessor for SidebarModality();
  v10 = sub_1E5ACFD08();
  v52 = v9;
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  v51 = v10;
  v50 = sub_1E5ACF958();
  v46 = *(v50 - 8);
  v11 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v49 = v42 - v12;
  v53 = sub_1E5ACEEE8();
  v47 = *(v53 - 8);
  v13 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v54 = v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SidebarModalitiesState.CodingKeys();
  swift_getWitnessTable();
  v55 = sub_1E5AD02A8();
  v48 = *(v55 - 8);
  v15 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v17 = v42 - v16;
  v44 = a3;
  v18 = type metadata accessor for SidebarModalitiesState();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = v42 - v22;
  v24 = *(*(a2 - 8) + 56);
  v61 = *(v21 + 40);
  v62 = v23;
  v24(&v23[v61], 1, 1, a2);
  v25 = a1[3];
  v26 = a1[4];
  v59 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  v56 = v17;
  v27 = v57;
  sub_1E5AD03D8();
  if (v27)
  {
    v32 = v60;
    v33 = v62;
    __swift_destroy_boxed_opaque_existential_1(v59);
    return (*(v58 + 8))(&v33[v61], v32);
  }

  else
  {
    v42[1] = a2;
    v42[0] = v19;
    v29 = v48;
    v28 = v49;
    v57 = v18;
    v30 = v50;
    v67 = 0;
    sub_1E5A83C6C(qword_1ED026770);
    v31 = v53;
    sub_1E5AD0288();
    (*(v47 + 32))(v62, v54, v31);
    v67 = 1;
    v66 = swift_getWitnessTable();
    v34 = swift_getWitnessTable();
    v65 = swift_getWitnessTable();
    v35 = swift_getWitnessTable();
    v63 = v34;
    v64 = v35;
    swift_getWitnessTable();
    sub_1E5AD0288();
    (*(v46 + 32))(&v62[*(v57 + 36)], v28, v30);
    v67 = 2;
    v36 = *(v44 + 8);
    v37 = v45;
    sub_1E5AD0248();
    (*(v58 + 40))(&v62[v61], v37, v60);
    v67 = 3;
    LOBYTE(v34) = sub_1E5AD0268();
    (*(v29 + 8))(v56, v55);
    v38 = v57;
    v39 = v62;
    v62[*(v57 + 44)] = v34 & 1;
    v40 = v42[0];
    (*(v42[0] + 16))(v43, v39, v38);
    __swift_destroy_boxed_opaque_existential_1(v59);
    return (*(v40 + 8))(v39, v38);
  }
}

uint64_t static SidebarModalitiesState.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v43 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E5ACFFD8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v36 - v14;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v44 = *(TupleTypeMetadata2 - 8);
  v17 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v19 = &v36 - v18;
  if ((MEMORY[0x1E69335A0](a1, a2) & 1) == 0)
  {
    goto LABEL_9;
  }

  v40 = v15;
  v41 = v12;
  v42 = v8;
  v20 = a1;
  v21 = type metadata accessor for SidebarModalitiesState();
  v22 = *(v21 + 36);
  v39 = a4;
  type metadata accessor for SidebarModality();
  sub_1E5ACFD08();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  if ((sub_1E5ACF938() & 1) == 0)
  {
    goto LABEL_9;
  }

  v37 = v21;
  v23 = *(v21 + 40);
  v24 = *(TupleTypeMetadata2 + 48);
  v25 = a2;
  v26 = *(v41 + 16);
  v26(v19, v20 + v23, v11);
  v38 = v25;
  v26(&v19[v24], v25 + v23, v11);
  v27 = *(v42 + 48);
  if (v27(v19, 1, a3) == 1)
  {
    if (v27(&v19[v24], 1, a3) == 1)
    {
      (*(v41 + 8))(v19, v11);
LABEL_12:
      v29 = *(v20 + *(v37 + 44)) ^ *(v38 + *(v37 + 44)) ^ 1;
      return v29 & 1;
    }

    goto LABEL_8;
  }

  v36 = v20;
  v28 = v40;
  v26(v40, v19, v11);
  if (v27(&v19[v24], 1, a3) == 1)
  {
    (*(v42 + 8))(v28, a3);
LABEL_8:
    (*(v44 + 8))(v19, TupleTypeMetadata2);
    goto LABEL_9;
  }

  v31 = v42;
  v32 = v43;
  (*(v42 + 32))(v43, &v19[v24], a3);
  v33 = *(*(v39 + 24) + 8);
  v34 = sub_1E5ACFB78();
  v35 = *(v31 + 8);
  v35(v32, a3);
  v35(v28, a3);
  (*(v41 + 8))(v19, v11);
  v20 = v36;
  if (v34)
  {
    goto LABEL_12;
  }

LABEL_9:
  v29 = 0;
  return v29 & 1;
}

uint64_t sub_1E5ACAF30(uint64_t a1)
{
  result = sub_1E5ACEEE8();
  if (v3 <= 0x3F)
  {
    v5 = *(a1 + 16);
    v4 = *(a1 + 24);
    type metadata accessor for SidebarModality();
    sub_1E5ACFD08();
    swift_getWitnessTable();
    swift_getWitnessTable();
    result = sub_1E5ACF958();
    if (v6 <= 0x3F)
    {
      result = sub_1E5ACFFD8();
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1E5ACB0F8(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  v76 = a4;
  v78 = a2;
  v8 = sub_1E5ACFFD8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v64 = *(TupleTypeMetadata2 - 8);
  v9 = *(v64 + 64);
  v10 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = &v61 - v11;
  v73 = *(v8 - 8);
  v13 = v73;
  v14 = *(v73 + 64);
  v15 = MEMORY[0x1EEE9AC00](v10);
  v72 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v61 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v61 - v21;
  v23 = *(a5 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x1EEE9AC00](v20);
  v61 = &v61 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v61 - v27;
  v29 = type metadata accessor for SidebarAction();
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v61 - v31;
  (*(v33 + 16))(&v61 - v31, v76);
  v34 = *(v23 + 32);
  v69 = v23 + 32;
  v70 = v34;
  v34(v28, v32, a5);
  v62 = a6;
  v35 = type metadata accessor for SidebarState();
  v36 = v78;
  *(v78 + *(v35 + 44)) = 0;
  v63 = v35;
  v67 = *(v35 + 40);
  v68 = v13;
  v37 = *(v13 + 16);
  v37(v22, v36 + v67, v8);
  v38 = *(v23 + 16);
  v74 = v28;
  v38(v19, v28, a5);
  v65 = *(v23 + 56);
  v66 = v23 + 56;
  v65(v19, 0, 1, a5);
  v39 = *(TupleTypeMetadata2 + 48);
  v40 = v12;
  v71 = v22;
  v37(v12, v22, v8);
  v75 = v8;
  v37(&v12[v39], v19, v8);
  v41 = *(v23 + 48);
  v76 = v40;
  if (v41(v40, 1, a5) == 1)
  {
    v42 = *(v73 + 8);
    v43 = v19;
    v44 = v75;
    v42(v43, v75);
    v42(v71, v44);
    v45 = v76;
    v46 = v41(&v76[v39], 1, a5) == 1;
    v47 = v45;
    v48 = v44;
    if (!v46)
    {
      goto LABEL_7;
    }

    v42(v45, v44);
    result = (*(v23 + 8))(v74, a5);
  }

  else
  {
    v50 = v76;
    v37(v72, v76, v75);
    v51 = v41(&v50[v39], 1, a5);
    v52 = (v23 + 8);
    if (v51 == 1)
    {
      v42 = *(v73 + 8);
      v48 = v75;
      v42(v19, v75);
      v42(v71, v48);
      (*v52)(v72, a5);
      v47 = v76;
LABEL_7:
      (*(v64 + 8))(v47, TupleTypeMetadata2);
LABEL_8:
      v53 = v67;
      v54 = v78;
      v42((v78 + v67), v48);
      v70(v54 + v53, v74, a5);
      return (v65)(v54 + v53, 0, 1, a5);
    }

    v55 = v76;
    v56 = v61;
    v70(v61, &v76[v39], a5);
    v57 = *(*(v62 + 24) + 8);
    v58 = v72;
    LODWORD(TupleTypeMetadata2) = sub_1E5ACFB78();
    v59 = *v52;
    (*v52)(v56, a5);
    v42 = *(v73 + 8);
    v60 = v75;
    v42(v19, v75);
    v42(v71, v60);
    v59(v58, a5);
    v42(v55, v60);
    v48 = v60;
    if ((TupleTypeMetadata2 & 1) == 0)
    {
      goto LABEL_8;
    }

    result = (v59)(v74, a5);
  }

  *(v78 + *(v63 + 48)) = 1;
  return result;
}

uint64_t sub_1E5ACB7C8(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x6874676E65727473;
    v7 = 0x6C696D6461657274;
    if (a1 != 10)
    {
      v7 = 1634168697;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x697461746964656DLL;
    v9 = 0x736574616C6970;
    if (a1 != 7)
    {
      v9 = 0x676E69776F72;
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
    v1 = 0x6E776F646C6F6F63;
    v2 = 0x65636E6164;
    v3 = 1953065320;
    if (a1 != 4)
    {
      v3 = 0x69786F626B63696BLL;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 1701998435;
    if (a1 != 1)
    {
      v4 = 0x676E696C637963;
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

uint64_t sub_1E5ACB938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5ACEA50(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5ACB96C(uint64_t a1)
{
  v2 = sub_1E5ACCB3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5ACB9A8(uint64_t a1)
{
  v2 = sub_1E5ACCB3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5ACB9E4(uint64_t a1)
{
  v2 = sub_1E5ACCF2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5ACBA20(uint64_t a1)
{
  v2 = sub_1E5ACCF2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5ACBA5C(uint64_t a1)
{
  v2 = sub_1E5ACCED8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5ACBA98(uint64_t a1)
{
  v2 = sub_1E5ACCED8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5ACBAD4(uint64_t a1)
{
  v2 = sub_1E5ACCE84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5ACBB10(uint64_t a1)
{
  v2 = sub_1E5ACCE84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5ACBB4C(uint64_t a1)
{
  v2 = sub_1E5ACCE30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5ACBB88(uint64_t a1)
{
  v2 = sub_1E5ACCE30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5ACBBC4(uint64_t a1)
{
  v2 = sub_1E5ACCDDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5ACBC00(uint64_t a1)
{
  v2 = sub_1E5ACCDDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5ACBC3C(uint64_t a1)
{
  v2 = sub_1E5ACCD88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5ACBC78(uint64_t a1)
{
  v2 = sub_1E5ACCD88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5ACBCB4(uint64_t a1)
{
  v2 = sub_1E5ACCD34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5ACBCF0(uint64_t a1)
{
  v2 = sub_1E5ACCD34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5ACBD2C(uint64_t a1)
{
  v2 = sub_1E5ACCCE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5ACBD68(uint64_t a1)
{
  v2 = sub_1E5ACCCE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5ACBDA4(uint64_t a1)
{
  v2 = sub_1E5ACCC8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5ACBDE0(uint64_t a1)
{
  v2 = sub_1E5ACCC8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5ACBE1C(uint64_t a1)
{
  v2 = sub_1E5ACCC38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5ACBE58(uint64_t a1)
{
  v2 = sub_1E5ACCC38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5ACBE94(uint64_t a1)
{
  v2 = sub_1E5ACCBE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5ACBED0(uint64_t a1)
{
  v2 = sub_1E5ACCBE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5ACBF0C(uint64_t a1)
{
  v2 = sub_1E5ACCB90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5ACBF48(uint64_t a1)
{
  v2 = sub_1E5ACCB90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SidebarModalityKind.hashValue.getter()
{
  v1 = *v0;
  sub_1E5AD0378();
  MEMORY[0x1E6934A50](v1);
  return sub_1E5AD03C8();
}

uint64_t SidebarModalityKind.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027D08, &qword_1E5AD7DB0);
  v88 = *(v3 - 8);
  v89 = v3;
  v4 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v87 = &v57 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027D10, &qword_1E5AD7DB8);
  v85 = *(v6 - 8);
  v86 = v6;
  v7 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v84 = &v57 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027D18, &qword_1E5AD7DC0);
  v82 = *(v9 - 8);
  v83 = v9;
  v10 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v81 = &v57 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027D20, &qword_1E5AD7DC8);
  v79 = *(v12 - 8);
  v80 = v12;
  v13 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v78 = &v57 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027D28, &qword_1E5AD7DD0);
  v76 = *(v15 - 8);
  v77 = v15;
  v16 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v75 = &v57 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027D30, &qword_1E5AD7DD8);
  v73 = *(v18 - 8);
  v74 = v18;
  v19 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v72 = &v57 - v20;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027D38, &qword_1E5AD7DE0);
  v70 = *(v71 - 8);
  v21 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v69 = &v57 - v22;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027D40, &qword_1E5AD7DE8);
  v67 = *(v68 - 8);
  v23 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v66 = &v57 - v24;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027D48, &qword_1E5AD7DF0);
  v64 = *(v65 - 8);
  v25 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v63 = &v57 - v26;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027D50, &qword_1E5AD7DF8);
  v61 = *(v62 - 8);
  v27 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v60 = &v57 - v28;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027D58, &qword_1E5AD7E00);
  v58 = *(v59 - 8);
  v29 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v31 = &v57 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027D60, &qword_1E5AD7E08);
  v57 = *(v32 - 8);
  v33 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v57 - v34;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027D68, &qword_1E5AD7E10);
  v36 = *(v91 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v91);
  v39 = &v57 - v38;
  v40 = *v1;
  v41 = a1;
  v43 = a1[3];
  v42 = a1[4];
  __swift_project_boxed_opaque_existential_1(v41, v43);
  sub_1E5ACCB3C();
  v90 = v39;
  sub_1E5AD03E8();
  v44 = (v36 + 8);
  if (v40 > 5)
  {
    if (v40 > 8)
    {
      if (v40 == 9)
      {
        v101 = 9;
        sub_1E5ACCC38();
        v48 = v81;
        v50 = v90;
        v49 = v91;
        sub_1E5AD02B8();
        v52 = v82;
        v51 = v83;
      }

      else if (v40 == 10)
      {
        v102 = 10;
        sub_1E5ACCBE4();
        v48 = v84;
        v50 = v90;
        v49 = v91;
        sub_1E5AD02B8();
        v52 = v85;
        v51 = v86;
      }

      else
      {
        v103 = 11;
        sub_1E5ACCB90();
        v48 = v87;
        v50 = v90;
        v49 = v91;
        sub_1E5AD02B8();
        v52 = v88;
        v51 = v89;
      }
    }

    else if (v40 == 6)
    {
      v98 = 6;
      sub_1E5ACCD34();
      v48 = v72;
      v50 = v90;
      v49 = v91;
      sub_1E5AD02B8();
      v52 = v73;
      v51 = v74;
    }

    else if (v40 == 7)
    {
      v99 = 7;
      sub_1E5ACCCE0();
      v48 = v75;
      v50 = v90;
      v49 = v91;
      sub_1E5AD02B8();
      v52 = v76;
      v51 = v77;
    }

    else
    {
      v100 = 8;
      sub_1E5ACCC8C();
      v48 = v78;
      v50 = v90;
      v49 = v91;
      sub_1E5AD02B8();
      v52 = v79;
      v51 = v80;
    }

    (*(v52 + 8))(v48, v51);
  }

  else if (v40 > 2)
  {
    if (v40 == 3)
    {
      v95 = 3;
      sub_1E5ACCE30();
      v54 = v63;
      v50 = v90;
      v49 = v91;
      sub_1E5AD02B8();
      (*(v64 + 8))(v54, v65);
    }

    else if (v40 == 4)
    {
      v96 = 4;
      sub_1E5ACCDDC();
      v53 = v66;
      v50 = v90;
      v49 = v91;
      sub_1E5AD02B8();
      (*(v67 + 8))(v53, v68);
    }

    else
    {
      v97 = 5;
      sub_1E5ACCD88();
      v56 = v69;
      v50 = v90;
      v49 = v91;
      sub_1E5AD02B8();
      (*(v70 + 8))(v56, v71);
    }
  }

  else if (v40)
  {
    if (v40 == 1)
    {
      v93 = 1;
      sub_1E5ACCED8();
      v45 = v90;
      v46 = v91;
      sub_1E5AD02B8();
      (*(v58 + 8))(v31, v59);
      return (*v44)(v45, v46);
    }

    v94 = 2;
    sub_1E5ACCE84();
    v55 = v60;
    v50 = v90;
    v49 = v91;
    sub_1E5AD02B8();
    (*(v61 + 8))(v55, v62);
  }

  else
  {
    v92 = 0;
    sub_1E5ACCF2C();
    v50 = v90;
    v49 = v91;
    sub_1E5AD02B8();
    (*(v57 + 8))(v35, v32);
  }

  return (*v44)(v50, v49);
}

unint64_t sub_1E5ACCB3C()
{
  result = qword_1ED027D70;
  if (!qword_1ED027D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027D70);
  }

  return result;
}

unint64_t sub_1E5ACCB90()
{
  result = qword_1ED027D78;
  if (!qword_1ED027D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027D78);
  }

  return result;
}

unint64_t sub_1E5ACCBE4()
{
  result = qword_1ED027D80;
  if (!qword_1ED027D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027D80);
  }

  return result;
}

unint64_t sub_1E5ACCC38()
{
  result = qword_1ED027D88;
  if (!qword_1ED027D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027D88);
  }

  return result;
}

unint64_t sub_1E5ACCC8C()
{
  result = qword_1ED027D90;
  if (!qword_1ED027D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027D90);
  }

  return result;
}

unint64_t sub_1E5ACCCE0()
{
  result = qword_1ED027D98;
  if (!qword_1ED027D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027D98);
  }

  return result;
}

unint64_t sub_1E5ACCD34()
{
  result = qword_1ED027DA0;
  if (!qword_1ED027DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027DA0);
  }

  return result;
}

unint64_t sub_1E5ACCD88()
{
  result = qword_1ED027DA8;
  if (!qword_1ED027DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027DA8);
  }

  return result;
}

unint64_t sub_1E5ACCDDC()
{
  result = qword_1ED027DB0;
  if (!qword_1ED027DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027DB0);
  }

  return result;
}

unint64_t sub_1E5ACCE30()
{
  result = qword_1ED027DB8;
  if (!qword_1ED027DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027DB8);
  }

  return result;
}

unint64_t sub_1E5ACCE84()
{
  result = qword_1ED027DC0;
  if (!qword_1ED027DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027DC0);
  }

  return result;
}

unint64_t sub_1E5ACCED8()
{
  result = qword_1ED027DC8;
  if (!qword_1ED027DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027DC8);
  }

  return result;
}

unint64_t sub_1E5ACCF2C()
{
  result = qword_1ED027DD0;
  if (!qword_1ED027DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027DD0);
  }

  return result;
}

uint64_t SidebarModalityKind.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v108 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027DD8, &qword_1E5AD7E18);
  v96 = *(v3 - 8);
  v97 = v3;
  v4 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v103 = &v70 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027DE0, &qword_1E5AD7E20);
  v94 = *(v6 - 8);
  v95 = v6;
  v7 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v102 = &v70 - v8;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027DE8, &qword_1E5AD7E28);
  v92 = *(v93 - 8);
  v9 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v93);
  v99 = &v70 - v10;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027DF0, &qword_1E5AD7E30);
  v90 = *(v91 - 8);
  v11 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v91);
  v101 = &v70 - v12;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027DF8, &qword_1E5AD7E38);
  v88 = *(v89 - 8);
  v13 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v89);
  v100 = &v70 - v14;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027E00, &qword_1E5AD7E40);
  v86 = *(v87 - 8);
  v15 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v87);
  v107 = &v70 - v16;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027E08, &qword_1E5AD7E48);
  v85 = *(v84 - 8);
  v17 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v84);
  v106 = &v70 - v18;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027E10, &qword_1E5AD7E50);
  v83 = *(v82 - 8);
  v19 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v82);
  v105 = &v70 - v20;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027E18, &qword_1E5AD7E58);
  v80 = *(v81 - 8);
  v21 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v81);
  v104 = &v70 - v22;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027E20, &qword_1E5AD7E60);
  v78 = *(v79 - 8);
  v23 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v98 = &v70 - v24;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027E28, &qword_1E5AD7E68);
  v76 = *(v77 - 8);
  v25 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v27 = &v70 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027E30, &qword_1E5AD7E70);
  v75 = *(v28 - 8);
  v29 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v70 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED027E38, &unk_1E5AD7E78);
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v70 - v35;
  v38 = a1[3];
  v37 = a1[4];
  v110 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v38);
  sub_1E5ACCB3C();
  v39 = v109;
  sub_1E5AD03D8();
  if (!v39)
  {
    v72 = v31;
    v71 = v28;
    v73 = v27;
    v40 = v104;
    v41 = v105;
    v43 = v106;
    v42 = v107;
    v109 = v33;
    v44 = v108;
    v74 = v32;
    v45 = sub_1E5AD0298();
    v46 = (2 * *(v45 + 16)) | 1;
    v111 = v45;
    v112 = v45 + 32;
    v113 = 0;
    v114 = v46;
    v47 = sub_1E5A8204C();
    if (v47 != 12 && v113 == v114 >> 1)
    {
      v115 = v47;
      if (v47 > 5u)
      {
        if (v47 > 8u)
        {
          v57 = v74;
          if (v47 != 9)
          {
            v60 = v109;
            if (v47 == 10)
            {
              v116 = 10;
              sub_1E5ACCBE4();
              v61 = v102;
              sub_1E5AD0228();
              (*(v94 + 8))(v61, v95);
            }

            else
            {
              v116 = 11;
              sub_1E5ACCB90();
              v69 = v103;
              sub_1E5AD0228();
              (*(v96 + 8))(v69, v97);
            }

            (*(v60 + 8))(v36, v57);
            goto LABEL_33;
          }

          v116 = 9;
          sub_1E5ACCC38();
          v66 = v99;
          sub_1E5AD0228();
          v63 = v109;
          (*(v92 + 8))(v66, v93);
        }

        else
        {
          v57 = v74;
          if (v47 != 6)
          {
            v58 = v109;
            if (v47 == 7)
            {
              v116 = 7;
              sub_1E5ACCCE0();
              v59 = v100;
              sub_1E5AD0228();
              (*(v88 + 8))(v59, v89);
            }

            else
            {
              v116 = 8;
              sub_1E5ACCC8C();
              v68 = v101;
              sub_1E5AD0228();
              (*(v90 + 8))(v68, v91);
            }

            goto LABEL_31;
          }

          v116 = 6;
          sub_1E5ACCD34();
          sub_1E5AD0228();
          v63 = v109;
          (*(v86 + 8))(v42, v87);
        }

        (*(v63 + 8))(v36, v57);
      }

      else
      {
        if (v47 <= 2u)
        {
          if (v47)
          {
            if (v47 == 1)
            {
              v116 = 1;
              sub_1E5ACCED8();
              v48 = v73;
              v49 = v74;
              sub_1E5AD0228();
              (*(v76 + 8))(v48, v77);
            }

            else
            {
              v116 = 2;
              sub_1E5ACCE84();
              v67 = v98;
              v49 = v74;
              sub_1E5AD0228();
              (*(v78 + 8))(v67, v79);
            }
          }

          else
          {
            v116 = 0;
            sub_1E5ACCF2C();
            v62 = v72;
            v49 = v74;
            sub_1E5AD0228();
            (*(v75 + 8))(v62, v71);
          }

          (*(v109 + 8))(v36, v49);
          goto LABEL_33;
        }

        if (v47 != 3)
        {
          v58 = v109;
          v57 = v74;
          if (v47 == 4)
          {
            v116 = 4;
            sub_1E5ACCDDC();
            sub_1E5AD0228();
            (*(v83 + 8))(v41, v82);
          }

          else
          {
            v116 = 5;
            sub_1E5ACCD88();
            sub_1E5AD0228();
            (*(v85 + 8))(v43, v84);
          }

LABEL_31:
          (*(v58 + 8))(v36, v57);
          goto LABEL_33;
        }

        v116 = 3;
        sub_1E5ACCE30();
        v64 = v74;
        sub_1E5AD0228();
        v65 = v109;
        (*(v80 + 8))(v40, v81);
        (*(v65 + 8))(v36, v64);
      }

LABEL_33:
      swift_unknownObjectRelease();
      *v44 = v115;
      return __swift_destroy_boxed_opaque_existential_1(v110);
    }

    v50 = sub_1E5AD00F8();
    swift_allocError();
    v52 = v51;
    v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0266E8, &qword_1E5AD1910) + 48);
    *v52 = &type metadata for SidebarModalityKind;
    v54 = v36;
    v55 = v74;
    sub_1E5AD0238();
    sub_1E5AD00E8();
    (*(*(v50 - 8) + 104))(v52, *MEMORY[0x1E69E6AF8], v50);
    swift_willThrow();
    (*(v109 + 8))(v54, v55);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v110);
}

unint64_t sub_1E5ACDE64()
{
  result = qword_1ED027E40;
  if (!qword_1ED027E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027E40);
  }

  return result;
}

uint64_t sub_1E5ACDEF8(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1E5ACDF88(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1E5ACE10C()
{
  result = qword_1ED027E48;
  if (!qword_1ED027E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027E48);
  }

  return result;
}

unint64_t sub_1E5ACE164()
{
  result = qword_1ED027E50;
  if (!qword_1ED027E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027E50);
  }

  return result;
}

unint64_t sub_1E5ACE1BC()
{
  result = qword_1ED027E58;
  if (!qword_1ED027E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027E58);
  }

  return result;
}

unint64_t sub_1E5ACE214()
{
  result = qword_1ED027E60;
  if (!qword_1ED027E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027E60);
  }

  return result;
}

unint64_t sub_1E5ACE26C()
{
  result = qword_1ED027E68;
  if (!qword_1ED027E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027E68);
  }

  return result;
}

unint64_t sub_1E5ACE2C4()
{
  result = qword_1ED027E70;
  if (!qword_1ED027E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027E70);
  }

  return result;
}

unint64_t sub_1E5ACE31C()
{
  result = qword_1ED027E78;
  if (!qword_1ED027E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027E78);
  }

  return result;
}

unint64_t sub_1E5ACE374()
{
  result = qword_1ED027E80;
  if (!qword_1ED027E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027E80);
  }

  return result;
}

unint64_t sub_1E5ACE3CC()
{
  result = qword_1ED027E88;
  if (!qword_1ED027E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027E88);
  }

  return result;
}

unint64_t sub_1E5ACE424()
{
  result = qword_1ED027E90;
  if (!qword_1ED027E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027E90);
  }

  return result;
}

unint64_t sub_1E5ACE47C()
{
  result = qword_1ED027E98;
  if (!qword_1ED027E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027E98);
  }

  return result;
}

unint64_t sub_1E5ACE4D4()
{
  result = qword_1ED027EA0;
  if (!qword_1ED027EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027EA0);
  }

  return result;
}

unint64_t sub_1E5ACE52C()
{
  result = qword_1ED027EA8;
  if (!qword_1ED027EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027EA8);
  }

  return result;
}

unint64_t sub_1E5ACE584()
{
  result = qword_1ED027EB0;
  if (!qword_1ED027EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027EB0);
  }

  return result;
}

unint64_t sub_1E5ACE5DC()
{
  result = qword_1ED027EB8;
  if (!qword_1ED027EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027EB8);
  }

  return result;
}

unint64_t sub_1E5ACE634()
{
  result = qword_1ED027EC0;
  if (!qword_1ED027EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027EC0);
  }

  return result;
}

unint64_t sub_1E5ACE68C()
{
  result = qword_1ED027EC8;
  if (!qword_1ED027EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027EC8);
  }

  return result;
}

unint64_t sub_1E5ACE6E4()
{
  result = qword_1ED027ED0;
  if (!qword_1ED027ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027ED0);
  }

  return result;
}

unint64_t sub_1E5ACE73C()
{
  result = qword_1ED027ED8;
  if (!qword_1ED027ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027ED8);
  }

  return result;
}

unint64_t sub_1E5ACE794()
{
  result = qword_1ED027EE0;
  if (!qword_1ED027EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027EE0);
  }

  return result;
}

unint64_t sub_1E5ACE7EC()
{
  result = qword_1ED027EE8;
  if (!qword_1ED027EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027EE8);
  }

  return result;
}

unint64_t sub_1E5ACE844()
{
  result = qword_1ED027EF0;
  if (!qword_1ED027EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027EF0);
  }

  return result;
}

unint64_t sub_1E5ACE89C()
{
  result = qword_1ED027EF8;
  if (!qword_1ED027EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027EF8);
  }

  return result;
}

unint64_t sub_1E5ACE8F4()
{
  result = qword_1ED027F00;
  if (!qword_1ED027F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027F00);
  }

  return result;
}

unint64_t sub_1E5ACE94C()
{
  result = qword_1ED027F08;
  if (!qword_1ED027F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027F08);
  }

  return result;
}

unint64_t sub_1E5ACE9A4()
{
  result = qword_1ED027F10;
  if (!qword_1ED027F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027F10);
  }

  return result;
}

unint64_t sub_1E5ACE9FC()
{
  result = qword_1ED027F18;
  if (!qword_1ED027F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED027F18);
  }

  return result;
}

uint64_t sub_1E5ACEA50(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F646C6F6F63 && a2 == 0xE800000000000000;
  if (v4 || (sub_1E5AD0348() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701998435 && a2 == 0xE400000000000000 || (sub_1E5AD0348() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E696C637963 && a2 == 0xE700000000000000 || (sub_1E5AD0348() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65636E6164 && a2 == 0xE500000000000000 || (sub_1E5AD0348() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1953065320 && a2 == 0xE400000000000000 || (sub_1E5AD0348() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x69786F626B63696BLL && a2 == 0xEA0000000000676ELL || (sub_1E5AD0348() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x697461746964656DLL && a2 == 0xEA00000000006E6FLL || (sub_1E5AD0348() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x736574616C6970 && a2 == 0xE700000000000000 || (sub_1E5AD0348() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x676E69776F72 && a2 == 0xE600000000000000 || (sub_1E5AD0348() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6874676E65727473 && a2 == 0xE800000000000000 || (sub_1E5AD0348() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6C696D6461657274 && a2 == 0xE90000000000006CLL || (sub_1E5AD0348() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 1634168697 && a2 == 0xE400000000000000)
  {

    return 11;
  }

  else
  {
    v6 = sub_1E5AD0348();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}