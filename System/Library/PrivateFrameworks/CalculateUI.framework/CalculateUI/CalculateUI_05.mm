uint64_t sub_1C1E403EC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v94 = a4;
  v93 = a3;
  v97 = a2;
  v102 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DD38, &qword_1C1E5AA28);
  v7 = *(v6 - 8);
  v101 = v6 - 8;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v100 = &v87 - v9;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D368, &qword_1C1E5AA30);
  v91 = *(v92 - 8);
  v95 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v92);
  v90 = &v87 - v10;
  v104 = type metadata accessor for GraphView();
  v88 = *(v104 - 8);
  v89 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v104);
  v87 = &v87 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DC28, &qword_1C1E5A748);
  v98 = *(v12 - 8);
  v99 = v12;
  v13 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v108 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v106 = &v87 - v16;
  v17 = type metadata accessor for CenteredAxes();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = (&v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DD40, &qword_1C1E5AA38);
  v107 = *(v96 - 8);
  v21 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v96);
  v105 = &v87 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v103 = &v87 - v24;
  v25 = *a1;
  sub_1C1E24AC8();
  v27 = v26;
  v29 = v28;
  sub_1C1E24CD4();
  v31 = v30;
  v33 = v32;
  v34 = sub_1C1E1CD1C();
  v36 = v35;
  v37 = sub_1C1E1D3D4();
  v39 = v38;
  sub_1C1E24AC8();
  v41 = v40;
  sub_1C1E24AC8();
  sub_1C1E25C2C(round(vabdd_f64(v41, v42)));
  v44 = v43;
  sub_1C1E24CD4();
  v46 = v45;
  sub_1C1E24CD4();
  sub_1C1E25C2C(round(vabdd_f64(v46, v47)));
  v49 = v48;
  sub_1C1E3A8CC(v104, v20 + *(v17 + 40));
  *v20 = v27;
  v20[1] = v29;
  v20[2] = v31;
  v20[3] = v33;
  v20[4] = v34;
  v20[5] = v36;
  v20[6] = v37;
  v20[7] = v39;
  v20[8] = v44;
  v20[9] = v49;
  sub_1C1E4D7A4(&qword_1EBF1DC18, type metadata accessor for CenteredAxes);
  sub_1C1E523EC();
  sub_1C1E4E154(v20, type metadata accessor for CenteredAxes);
  v50 = *(v25 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_functionLock);
  [v50 lock];
  swift_getKeyPath();
  v109 = v25;
  sub_1C1E4D7A4(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  v51 = *(v25 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___functions);

  [v50 unlock];
  sub_1C1E4C054(v51);
  v53 = v52;

  v109 = v53;
  swift_getKeyPath();
  v54 = v88;
  v55 = v87;
  v56 = a1;
  v57 = v104;
  (*(v88 + 16))(v87, v56, v104);
  v58 = v91;
  v59 = v90;
  v60 = v92;
  (*(v91 + 16))(v90, v97, v92);
  v61 = v54;
  v62 = (*(v54 + 80) + 32) & ~*(v54 + 80);
  v63 = v58;
  v64 = (v89 + *(v58 + 80) + v62) & ~*(v58 + 80);
  v65 = swift_allocObject();
  v66 = v94;
  *(v65 + 16) = v93;
  *(v65 + 24) = v66;
  (*(v61 + 32))(v65 + v62, v55, v57);
  (*(v63 + 32))(v65 + v64, v59, v60);
  v67 = swift_allocObject();
  *(v67 + 16) = sub_1C1E4E1B4;
  *(v67 + 24) = v65;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CE48, &qword_1C1E5AA60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DC38, &qword_1C1E5A750);
  sub_1C1DC1124(&qword_1EBF1CE50, &qword_1EBF1CE48, &qword_1C1E5AA60);
  sub_1C1E4CEA0();
  v68 = v106;
  sub_1C1E537DC();
  v69 = *(v107 + 16);
  v70 = v105;
  v71 = v96;
  v69(v105, v103, v96);
  v72 = v98;
  v73 = *(v98 + 16);
  v74 = v108;
  v75 = v68;
  v76 = v99;
  v73(v108, v75, v99);
  v77 = v100;
  v78 = v70;
  v79 = v71;
  v69(v100, v78, v71);
  sub_1C1E4CE1C();
  v80 = v101;
  v81 = *(v101 + 56);
  v73(&v77[v81], v74, v76);
  v82 = v107;
  v83 = v102;
  (*(v107 + 32))(v102, v77, v79);
  (*(v72 + 32))(v83 + *(v80 + 56), &v77[v81], v76);
  v84 = *(v72 + 8);
  v84(v106, v76);
  v85 = *(v82 + 8);
  v85(v103, v79);
  v84(v108, v76);
  return (v85)(v105, v79);
}

uint64_t sub_1C1E40C7C@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v32[1] = a4;
  v32[2] = a5;
  v32[3] = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DC48, &qword_1C1E5A758);
  v33 = *(v9 - 8);
  v10 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v32 - v11;
  v13 = sub_1C1E51F5C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[12];
  v19 = *a2;
  sub_1C1E24AC8();
  sub_1C1E24CD4();
  v20 = *(v18 + 16);
  sub_1C1E5245C();
  if (v36)
  {
    v21 = *(v33 + 56);

    return v21(a6, 1, 1, v9);
  }

  else
  {
    v23 = v34;
    v24 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D368, &qword_1C1E5AA30);
    sub_1C1E527DC();
    v25 = *(type metadata accessor for Function() + 56);
    sub_1C1E51EFC();
    v27 = v26;
    result = (*(v14 + 8))(v17, v13);
    v28 = 0.0;
    if (v27 / 1.5 >= 0.0)
    {
      v28 = v27 / 1.5;
    }

    if (v27 / 1.5 >= 1.0)
    {
      v29 = 1.0;
    }

    else
    {
      v29 = v28;
    }

    v30 = (v24 - v23) * v29;
    v31 = v23 + v30;
    if (v23 > v23 + v30)
    {
      __break(1u);
    }

    else
    {
      type metadata accessor for GraphView();
      sub_1C1E40F58(a1, v12, v23, v31);
      sub_1C1DD6788(v12, a6);
      return (*(v33 + 56))(a6, 0, 1, v9);
    }
  }

  return result;
}

uint64_t sub_1C1E40F58@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v54 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DD48, &qword_1C1E5AA68);
  v47 = *(v7 - 8);
  v48 = v7;
  v8 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v46 = &v45 - v9;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DC68, &qword_1C1E5A770);
  v50 = *(v45 - 8);
  v10 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v12 = &v45 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DD50, &qword_1C1E5AA70);
  v49 = *(v13 - 8);
  v14 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v45 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DC58, &qword_1C1E5A768);
  v53 = *(v17 - 8);
  v18 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v45 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DC50, &qword_1C1E5A760);
  v52 = *(v21 - 8);
  v22 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v45 - v23;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DD58, &qword_1C1E5AA78);
  v25 = *(v51 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v28 = &v45 - v27;
  result = type metadata accessor for Function();
  v30 = a1;
  v31 = *(a1 + *(result + 52));
  if (v31)
  {
    if (a3 <= a4)
    {
      v32 = *(v30[12] + 16);

      sub_1C1E525BC();
      v59[0] = v31;
      v33 = sub_1C1E4D0B4();
      v34 = MEMORY[0x1E69815C0];
      sub_1C1E523DC();
      (*(v53 + 8))(v20, v17);
      sub_1C1E5276C();
      v55 = v17;
      v56 = v34;
      v57 = v33;
      v58 = MEMORY[0x1E6981568];
      swift_getOpaqueTypeConformance2();
      sub_1C1E5240C();
      sub_1C1E4C708(v59);

      (*(v52 + 8))(v24, v21);
      (*(v25 + 32))(v54, v28, v51);
LABEL_6:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DD60, &qword_1C1E5AA80);
      return swift_storeEnumTagMultiPayload();
    }

    __break(1u);
  }

  else
  {
    v51 = v16;
    v52 = v13;
    if (a3 <= a4)
    {
      v35 = v30;
      v36 = *(v30[12] + 16);

      sub_1C1E525BC();
      sub_1C1E52C6C();
      v37 = *v35;
      v38 = v35[1];
      v59[0] = v37;
      v59[1] = v38;

      v39 = MEMORY[0x1E69E6158];
      v40 = MEMORY[0x1E695B438];
      v41 = v46;
      sub_1C1E5242C();

      v42 = sub_1C1E4D0B4();
      sub_1C1E523CC();
      (*(v47 + 8))(v41, v48);
      (*(v53 + 8))(v20, v17);
      sub_1C1E5276C();
      v55 = v17;
      v56 = v39;
      v57 = v42;
      v58 = v40;
      swift_getOpaqueTypeConformance2();
      v43 = v51;
      v44 = v45;
      sub_1C1E5240C();
      sub_1C1E4C708(v59);
      (*(v50 + 8))(v12, v44);
      (*(v49 + 32))(v54, v43, v52);
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C1E41618@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DBC0, &qword_1C1E5A6F8);
  v4 = (v3 - 8);
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DB68, &qword_1C1E5A6A8);
  sub_1C1E525EC();
  sub_1C1E4C764();
  v9 = *a1;
  v10 = *(v8 - 8);
  v11 = *(v10 + 16);
  v31 = v8;
  v11(v7, v9, v8);
  v32 = v4[14];
  v11(&v7[v32], a1[1], v8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DB48, &qword_1C1E5A688);
  sub_1C1E4C7F0();
  v13 = v4[18];
  v30 = v13;
  v14 = *(v12 - 8);
  v15 = *(v14 + 16);
  v15(&v7[v13], a1[2], v12);
  v29 = v4[22];
  v15(&v7[v29], a1[3], v12);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DB28, &qword_1C1E5A668);
  sub_1C1E4CBD8();
  v17 = v4[26];
  v28 = v17;
  v18 = *(v16 - 8);
  v19 = *(v18 + 16);
  v19(&v7[v17], a1[4], v16);
  v27 = v4[30];
  v19(&v7[v27], a1[5], v16);
  v20 = *(v10 + 32);
  v21 = v33;
  v22 = v31;
  v20(v33, v7, v31);
  v20(v21 + v4[14], &v7[v32], v22);
  v23 = *(v14 + 32);
  v23(v21 + v4[18], &v7[v30], v12);
  v23(v21 + v4[22], &v7[v29], v12);
  v24 = *(v18 + 32);
  v24(v21 + v4[26], &v7[v28], v16);
  return (v24)(v21 + v4[30], &v7[v27], v16);
}

uint64_t sub_1C1E41928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C1E5249C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D8D0, &qword_1C1E5A390);
  *(a2 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_1C1E419A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v112 = a3;
  v113 = a4;
  v107 = a1;
  v99 = a5;
  v7 = sub_1C1E522DC();
  v8 = *(v7 - 8);
  v116 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v100 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for GraphView();
  v115 = *(v111 - 8);
  v110 = *(v115 + 64);
  MEMORY[0x1EEE9AC00](v111);
  v101 = &v87 - v10;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D970, &qword_1C1E5A400);
  v92 = *(v91 - 8);
  v11 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v91);
  v102 = &v87 - v12;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D968, &qword_1C1E5A3F8);
  v94 = *(v93 - 8);
  v13 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v93);
  v104 = &v87 - v14;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D960, &qword_1C1E5A3F0);
  v96 = *(v95 - 8);
  v15 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v95);
  v103 = &v87 - v16;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D958, &unk_1C1E5A3E0);
  v98 = *(v97 - 8);
  v17 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v97);
  v105 = &v87 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D540, &qword_1C1E58F98);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = &v87 - v22;
  v24 = *a2;
  v90 = v8;
  v25 = *(v8 + 16);
  v88 = v7;
  v25(&v87 - v22, a1, v7, v21);
  (*(v8 + 56))(v23, 0, 1, v7);
  swift_getKeyPath();
  v117 = v24;
  v118 = v23;
  v119 = v24;
  sub_1C1E4D7A4(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520AC();

  sub_1C1DC1870(v23, &qword_1EBF1D540, &qword_1C1E58F98);
  OpaqueTypeConformance2 = sub_1C1E535FC();
  v123 = *&OpaqueTypeConformance2;
  v26 = v111;
  v114 = a2;
  v119 = sub_1C1E3B010(v111);
  v120 = v27;
  LOBYTE(v121) = v28;
  v29 = v115;
  v30 = *(v115 + 16);
  v108 = v115 + 16;
  v109 = v30;
  v31 = v101;
  v30(v101, a2, v26);
  v32 = v100;
  v33 = v88;
  (v25)(v100, v107, v88);
  v34 = *(v29 + 80);
  v35 = v29;
  v110 += (v34 + 32) & ~v34;
  v36 = (v34 + 32) & ~v34;
  v106 = v36;
  v107 = v34 | 7;
  v37 = v90;
  v38 = (v110 + *(v90 + 80)) & ~*(v90 + 80);
  v39 = swift_allocObject();
  v40 = v112;
  v41 = v113;
  *(v39 + 16) = v112;
  *(v39 + 24) = v41;
  v42 = *(v35 + 32);
  v115 = v35 + 32;
  v116 = v42;
  v43 = v39 + v36;
  v44 = v111;
  v42(v43, v31, v111);
  (*(v37 + 32))(v39 + v38, v32, v33);
  v100 = sub_1C1E3C958();
  sub_1C1E534CC();

  v45 = v44;
  v46 = v114;
  v123 = COERCE_DOUBLE(sub_1C1E3B1E8(v44));
  v124 = v47;
  v125 = v48;
  v126 = v49;
  v50 = v109;
  v109(v31, v46, v44);
  v51 = swift_allocObject();
  *(v51 + 16) = v40;
  *(v51 + 24) = v41;
  v52 = v106;
  v116(v51 + v106, v31, v45);
  v119 = MEMORY[0x1E69815C0];
  v120 = &type metadata for SingleDragState;
  v121 = MEMORY[0x1E6981580];
  v122 = v100;
  v100 = MEMORY[0x1E6981448];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v90 = sub_1C1E3C9AC();
  v53 = v91;
  v54 = v102;
  sub_1C1E534CC();

  (*(v92 + 8))(v54, v53);
  v55 = v114;
  v123 = sub_1C1E3B2F0(v45);
  v124 = v56;
  v50(v31, v55, v45);
  v57 = swift_allocObject();
  v58 = v113;
  *(v57 + 16) = v112;
  *(v57 + 24) = v58;
  v116(v57 + v52, v31, v45);
  v119 = v53;
  v120 = &type metadata for MagnifyState;
  v121 = OpaqueTypeConformance2;
  v122 = v90;
  v92 = swift_getOpaqueTypeConformance2();
  v102 = sub_1C1E3CA00();
  v59 = v93;
  v60 = v104;
  sub_1C1E534CC();

  (*(v94 + 8))(v60, v59);
  v61 = v114;
  v123 = COERCE_DOUBLE(sub_1C1E3B0FC(v45));
  v124 = v62;
  LOBYTE(v125) = v63;
  v64 = v31;
  v65 = v109;
  v109(v31, v61, v45);
  v66 = swift_allocObject();
  v68 = v112;
  v67 = v113;
  *(v66 + 16) = v112;
  *(v66 + 24) = v67;
  v69 = v106;
  v116(v66 + v106, v64, v45);
  v119 = v59;
  v120 = &type metadata for TapState;
  v121 = v92;
  v122 = v102;
  v104 = swift_getOpaqueTypeConformance2();
  v70 = sub_1C1E3CA54();
  v71 = v95;
  v72 = v103;
  sub_1C1E534CC();

  (*(v96 + 8))(v72, v71);
  v73 = v111;
  v74 = v114;
  v123 = COERCE_DOUBLE(sub_1C1E3AD78(v111));
  LOBYTE(v124) = v75 & 1;
  v76 = v101;
  v65(v101, v74, v73);
  v77 = swift_allocObject();
  v78 = v113;
  *(v77 + 16) = v68;
  *(v77 + 24) = v78;
  v79 = v76;
  v116(v77 + v69, v76, v73);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C778, &qword_1C1E56FC8);
  v119 = v71;
  v120 = &type metadata for DragState;
  v121 = v104;
  v122 = v70;
  swift_getOpaqueTypeConformance2();
  sub_1C1E0FD50();
  v80 = v99;
  v81 = v97;
  v82 = v105;
  sub_1C1E534CC();

  (*(v98 + 8))(v82, v81);
  v83 = v111;
  v109(v79, v114, v111);
  v84 = swift_allocObject();
  *(v84 + 16) = v112;
  *(v84 + 24) = v78;
  v116(v84 + v106, v79, v83);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D8A0, &qword_1C1E5A360);
  v86 = (v80 + *(result + 36));
  *v86 = sub_1C1E4E510;
  v86[1] = 0;
  v86[2] = sub_1C1E4DECC;
  v86[3] = v84;
  return result;
}

uint64_t sub_1C1E42648()
{
  v0 = type metadata accessor for GraphView();
  sub_1C1E3B010(v0);
  if (v1 >= 2u)
  {
    sub_1C1E3ADE4(0, 1, v0);
    v3 = 0;
    v4 = 1;
  }

  else
  {
    result = sub_1C1E522BC();
    if (v7)
    {
      return result;
    }

    sub_1C1E3ADE4(v5, 0, v0);
    v3 = v6;
    v4 = 0;
  }

  return sub_1C1E3AEC4(v3, v4, v0);
}

uint64_t sub_1C1E4271C(uint64_t *a1)
{
  v2 = type metadata accessor for GraphView();
  result = sub_1C1E3B1E8(v2);
  if (v4)
  {
    if (v4 == 1)
    {
      v32 = *&result;
      v5 = *a1;
      swift_getKeyPath();
      v33[0] = v5;
      sub_1C1E4D7A4(&qword_1EDE74850, type metadata accessor for GraphViewModel);
      sub_1C1E520BC();

      v6 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__movedFromCenter;
      v7 = swift_beginAccess();
      if ((*(v5 + v6) & 1) == 0)
      {
        MEMORY[0x1EEE9AC00](v7);
        sub_1C1E5395C();
        sub_1C1E5291C();
      }

      swift_getKeyPath();
      v36 = v5;
      sub_1C1E520BC();

      v27 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__allowEqualizeAxes;
      v28 = swift_beginAccess();
      if ((*(v5 + v27) & 1) == 0)
      {
        MEMORY[0x1EEE9AC00](v28);
        sub_1C1E5395C();
        sub_1C1E5291C();
      }

      swift_getKeyPath();
      v35 = v5;
      sub_1C1E520BC();

      v29 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__allowCenterOrigin;
      v30 = swift_beginAccess();
      if ((*(v5 + v29) & 1) == 0)
      {
        MEMORY[0x1EEE9AC00](v30);
        sub_1C1E5395C();
        sub_1C1E5291C();
      }

      v31 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_currentZoom;
      swift_beginAccess();
      *(v5 + v31) = 1.0 / v32;
      swift_getKeyPath();
      sub_1C1E520BC();

      v34 = v5;
      swift_getKeyPath();
      sub_1C1E520DC();

      *(v5 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__viewportSignal) = (*(v5 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__viewportSignal) & 1) == 0;
      v34 = v5;
      swift_getKeyPath();
    }

    else
    {
      v8 = *a1;
      v9 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterRatio;
      swift_beginAccess();
      v10 = 0.5 - *(v8 + v9);
      v11 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_currentZoom;
      swift_beginAccess();
      v12 = *(v8 + v11);
      v13 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakX;
      swift_beginAccess();
      v14 = v10 * (*(v8 + v13) * (v12 * *(v8 + v13)));
      v15 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterX;
      swift_beginAccess();
      *(v8 + v15) = v14 + *(v8 + v15);
      v16 = sqrt(v12);
      v17 = sub_1C1E183D0(v33);
      *v18 = v16 * *v18;
      v17(v33, 0);
      v19 = 0.5 - *(v8 + v9);
      v20 = *(v8 + v11);
      v21 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakY;
      swift_beginAccess();
      v22 = v19 * (*(v8 + v21) * (v20 * *(v8 + v21)));
      v23 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterY;
      swift_beginAccess();
      *(v8 + v23) = v22 + *(v8 + v23);
      v24 = sqrt(v20);
      v25 = sub_1C1E184FC(v33);
      *v26 = v24 * *v26;
      v25(v33, 0);
      *(v8 + v11) = 0x3FF0000000000000;
      *(v8 + v9) = 0x3FE0000000000000;
      swift_getKeyPath();
      v33[0] = v8;
      sub_1C1E4D7A4(&qword_1EDE74850, type metadata accessor for GraphViewModel);
      sub_1C1E520BC();

      v33[0] = v8;
      swift_getKeyPath();
      sub_1C1E520DC();

      *(v8 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__viewportSignal) = (*(v8 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__viewportSignal) & 1) == 0;
      v33[0] = v8;
      swift_getKeyPath();
    }

    sub_1C1E520CC();
  }

  return result;
}

uint64_t sub_1C1E42D84(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a1;
  v5 = *a4;
  result = swift_beginAccess();
  if (*(v4 + v5) == 1)
  {
    *(v4 + v5) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C1E4D7A4(&qword_1EDE74850, type metadata accessor for GraphViewModel);
    sub_1C1E520AC();
  }

  return result;
}

uint64_t sub_1C1E42EB8(uint64_t *a1)
{
  v2 = type metadata accessor for GraphView();
  *&v3 = sub_1C1E3B2F0(v2);
  v4 = *a1;
  return sub_1C1E215E8(v3, v5, 0);
}

void sub_1C1E42EF8(uint64_t *a1)
{
  v2 = type metadata accessor for GraphView();
  *&v3 = COERCE_DOUBLE(sub_1C1E3B0FC(v2));
  if (v5)
  {
    if (v5 != 1)
    {
      return;
    }

    v36 = v4;
    v37 = *&v3;
    v6 = *a1;
    swift_getKeyPath();
    sub_1C1E4D7A4(&qword_1EDE74850, type metadata accessor for GraphViewModel);
    sub_1C1E520BC();

    v7 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__movedFromCenter;
    v8 = swift_beginAccess();
    if ((*(v6 + v7) & 1) == 0)
    {
      MEMORY[0x1EEE9AC00](v8);
      sub_1C1E5395C();
      sub_1C1E5291C();
    }

    swift_getKeyPath();
    sub_1C1E520BC();

    v12 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__allowEqualizeAxes;
    v13 = swift_beginAccess();
    if ((*(v6 + v12) & 1) == 0)
    {
      MEMORY[0x1EEE9AC00](v13);
      sub_1C1E5395C();
      sub_1C1E5291C();
    }

    swift_getKeyPath();
    sub_1C1E520BC();

    v14 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__allowCenterOrigin;
    v15 = swift_beginAccess();
    if ((*(v6 + v14) & 1) == 0)
    {
      MEMORY[0x1EEE9AC00](v15);
      sub_1C1E5395C();
      sub_1C1E5291C();
    }

    v16 = v6 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__tapLocation;
    swift_beginAccess();
    if (*(v16 + 16) == 1)
    {
      *v16 = 0;
      *(v16 + 8) = 0;
      *(v16 + 16) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1C1E520AC();
    }

    v18 = v6 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_xDragStartPlottable;
    swift_beginAccess();
    if (*(v18 + 8))
    {
      v19 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterX;
      swift_beginAccess();
      *v18 = *(v6 + v19);
      *(v18 + 8) = 0;
    }

    v20 = v6 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_yDragStartPlottable;
    swift_beginAccess();
    if (*(v20 + 8) == 1)
    {
      v21 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterY;
      swift_beginAccess();
      *v20 = *(v6 + v21);
      *(v20 + 8) = 0;
    }

    v22 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_currentZoom;
    swift_beginAccess();
    v23 = *(v6 + v22);
    v24 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakX;
    swift_beginAccess();
    v25 = *(v6 + v24);
    v26 = sub_1C1E3B3B4(v2);
    v27 = *(v6 + v22);
    v28 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomTweakY;
    swift_beginAccess();
    v29 = *(v6 + v28);
    sub_1C1E3B3B4(v2);
    if (*(v18 + 8))
    {
      __break(1u);
    }

    else
    {
      v31 = v30;
      v32 = *v18 - v25 * (v23 * v25) / v26 * v37;
      v33 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterX;
      swift_beginAccess();
      *(v6 + v33) = v32;
      if ((*(v20 + 8) & 1) == 0)
      {
        v34 = v29 * (v27 * v29) / v31 * v36 + *v20;
        v35 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_zoomCenterY;
        swift_beginAccess();
        *(v6 + v35) = v34;
        swift_getKeyPath();
        sub_1C1E520BC();

        swift_getKeyPath();
        sub_1C1E520DC();

        *(v6 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__viewportSignal) = (*(v6 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__viewportSignal) & 1) == 0;
        swift_getKeyPath();
        goto LABEL_21;
      }
    }

    __break(1u);
    return;
  }

  v9 = *a1;
  v10 = *a1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_xDragStartPlottable;
  swift_beginAccess();
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = v9 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_yDragStartPlottable;
  swift_beginAccess();
  *v11 = 0;
  *(v11 + 8) = 1;
  swift_getKeyPath();
  sub_1C1E4D7A4(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  swift_getKeyPath();
  sub_1C1E520DC();

  *(v9 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__viewportSignal) = (*(v9 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__viewportSignal) & 1) == 0;
  swift_getKeyPath();
LABEL_21:
  sub_1C1E520CC();
}

uint64_t sub_1C1E4367C(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C758, &qword_1C1E579C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v25 - v7;
  v9 = type metadata accessor for GraphView();
  *&v10 = COERCE_DOUBLE(sub_1C1E3AD78(v9));
  if (v11 & 1) != 0 || (v12 = *&v10, *&v13 = COERCE_DOUBLE(sub_1C1E3AE58(v9)), (v14))
  {
    v15 = type metadata accessor for Function();
    (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
    return sub_1C1E3AF38(v5, v9);
  }

  v17 = *&v13;
  v18 = *(v9 + 68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DA08, &qword_1C1E5A480);
  sub_1C1E536EC();
  v19 = type metadata accessor for Function();
  if ((*(*(v19 - 8) + 48))(v8, 1, v19) == 1)
  {
    sub_1C1DC1870(v8, &qword_1EBF1C758, &qword_1C1E579C0);
    v20 = *a1;
    sub_1C1E24AC8();
    v22 = v21;
    sub_1C1E24AC8();
    sub_1C1E25C2C(round(vabdd_f64(v22, v23)));
    sub_1C1E24334(v5, v12, v17, v24);
    return sub_1C1E3AF38(v5, v9);
  }

  return sub_1C1DC1870(v8, &qword_1EBF1C758, &qword_1C1E579C0);
}

void sub_1C1E438A0(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v112 = a3;
  v113 = a1;
  v115 = a5;
  v110 = a4;
  v6 = type metadata accessor for GraphView();
  v108 = *(v6 - 8);
  v111 = *(v108 + 8);
  MEMORY[0x1EEE9AC00](v6);
  v107 = &v99 - v7;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D9B0, &qword_1C1E5A408);
  v8 = *(v114 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v114);
  v109 = (&v99 - v10);
  v11 = sub_1C1E526EC();
  v105 = *(v11 - 8);
  v106 = v11;
  v12 = *(v105 + 8);
  MEMORY[0x1EEE9AC00](v11);
  v104 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v103 = &v99 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C758, &qword_1C1E579C0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v99 - v18;
  v20 = type metadata accessor for Function();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v99 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v25 = COERCE_DOUBLE(sub_1C1E3AD78(v6));
  if (v26)
  {
    goto LABEL_27;
  }

  v27 = *&v25;
  *&v28 = COERCE_DOUBLE(sub_1C1E3AE58(v6));
  if (v29)
  {
    goto LABEL_27;
  }

  v30 = *&v28;
  v31 = *(v6 + 68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DA08, &qword_1C1E5A480);
  sub_1C1E536EC();
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_1C1DC1870(v19, &qword_1EBF1C758, &qword_1C1E579C0);
LABEL_27:
    (*(v8 + 56))(v115, 1, 1, v114);
    return;
  }

  sub_1C1E4D6B4(v19, v24, type metadata accessor for Function);
  v32 = *a2;
  sub_1C1E24AC8();
  v34 = v33;
  v36 = v35;
  v37 = (v35 - v33) / 1000.0;
  if (v37 == 0.0)
  {
LABEL_31:
    __break(1u);
    return;
  }

  v38 = a2;
  v39 = 0;
  v40 = 0;
  v41 = v27;
  v42 = 1;
  v102 = 0.0;
  v43 = 1.79769313e308;
  v101 = 0.0;
  v44 = v33;
  while (1)
  {
    v48 = v44;
    v49 = v44 <= v36;
    if (v37 > 0.0)
    {
      v49 = v36 <= v44;
    }

    if (v49)
    {
      break;
    }

    if (__OFADD__(v40++, 1))
    {
      __break(1u);
      goto LABEL_31;
    }

    v44 = v34 + v40 * v37;
LABEL_7:
    v45 = *(v24 + 9);
    v46 = (*(v24 + 8))(v48);
    v47 = sqrt((v41 - v48) * (v41 - v48) + (v30 - v46) * (v30 - v46));
    if (v47 < v43)
    {
      v42 = 0;
      v102 = v48;
      v101 = v46;
      v43 = v47;
    }
  }

  if (!((v44 != v36) | v39 & 1))
  {
    v39 = 1;
    goto LABEL_7;
  }

  if (v42)
  {
    goto LABEL_26;
  }

  v51 = v102;
  v52 = v101;
  v116 = v101;
  v117 = v102;
  *&v53 = COERCE_DOUBLE(sub_1C1E522CC());
  if (v55)
  {
    goto LABEL_26;
  }

  v56 = *&v53;
  v57 = v54;
  v118.origin.x = sub_1C1E3B478(v6);
  v126.origin.x = 0.0;
  v126.origin.y = 0.0;
  v126.size.width = 0.0;
  v126.size.height = 0.0;
  if (!CGRectEqualToRect(v118, v126) || (v119.origin.x = sub_1C1E3B544(v6), v127.origin.x = 0.0, v127.origin.y = 0.0, v127.size.width = 0.0, v127.size.height = 0.0, !CGRectEqualToRect(v119, v127)))
  {
    v67 = sub_1C1E3B478(v6) + v56;
    v122.origin.x = sub_1C1E3B544(v6);
    if (CGRectGetMinX(v122) > v67)
    {
      goto LABEL_26;
    }

    v68 = sub_1C1E3B478(v6) + v56;
    v123.origin.x = sub_1C1E3B544(v6);
    if (v68 > CGRectGetMaxX(v123) || (sub_1C1E3B478(v6), v70 = v69 + v57, v124.origin.x = sub_1C1E3B544(v6), CGRectGetMinY(v124) > v70) || (sub_1C1E3B478(v6), v72 = v71 + v57, v125.origin.x = sub_1C1E3B544(v6), v72 > CGRectGetMaxY(v125)))
    {
LABEL_26:
      sub_1C1E4E154(v24, type metadata accessor for Function);
      goto LABEL_27;
    }
  }

  v120.origin.x = sub_1C1E3B478(v6);
  v58 = CGRectGetMinX(v120) + v56;
  v121.origin.x = sub_1C1E3B478(v6);
  v59 = CGRectGetMinY(v121) + v57;
  v60 = v103;
  sub_1C1E3A8CC(v6, v103);
  v62 = v105;
  v61 = v106;
  v63 = v104;
  (*(v105 + 13))(v104, *MEMORY[0x1E697DBA8], v106);
  v64 = sub_1C1E526DC();
  v65 = *(v62 + 1);
  v65(v63, v61);
  v65(v60, v61);
  if (v64)
  {
    v66 = sub_1C1E535DC();
  }

  else
  {
    v66 = sub_1C1E5361C();
  }

  v73 = v66;
  v74 = sub_1C1E538DC();
  v75 = v109;
  *v109 = v74;
  v75[1] = v76;
  v77 = (v75 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DCB8, &qword_1C1E5A8F8) + 44));
  v78 = v112;
  v79 = v110;
  sub_1C1E4424C(v38, v24, v73, v77, v58, v59, v51, v52);

  v80 = v108;
  v100 = v38;
  v81 = *(v108 + 2);
  v105 = v108 + 16;
  v106 = v81;
  v82 = v107;
  v81(v107, v38, v6);
  v113 = *(v80 + 80);
  v83 = (v113 + 32) & ~v113;
  v84 = swift_allocObject();
  *(v84 + 16) = v78;
  *(v84 + 24) = v79;
  v85 = *(v80 + 4);
  v85(v84 + v83, v82, v6);
  v108 = v85;
  v106(v82, v100, v6);
  v86 = swift_allocObject();
  *(v86 + 16) = v112;
  *(v86 + 24) = v79;
  v85(v86 + v83, v82, v6);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D9C0, &qword_1C1E5A410);
  v88 = (v109 + *(v87 + 36));
  *v88 = sub_1C1E4D7EC;
  v88[1] = v84;
  v88[2] = sub_1C1E4D804;
  v88[3] = v86;
  v89 = v100;
  v90 = v106;
  v106(v82, v100, v6);
  v91 = swift_allocObject();
  v92 = v110;
  *(v91 + 16) = v112;
  *(v91 + 24) = v92;
  v108(v91 + v83, v82, v6);
  v90(v82, v89, v6);
  v93 = swift_allocObject();
  v94 = v110;
  *(v93 + 16) = v112;
  *(v93 + 24) = v94;
  v108(v93 + v83, v82, v6);
  v95 = v114;
  v96 = v109;
  v97 = (v109 + *(v114 + 36));
  *v97 = sub_1C1E4D81C;
  v97[1] = v91;
  v97[2] = sub_1C1E4D8CC;
  v97[3] = v93;
  v98 = v115;
  sub_1C1DC18D0(v96, v115, &qword_1EBF1D9B0, &qword_1C1E5A408);
  (*(v8 + 56))(v98, 0, 1, v95);
  sub_1C1E4E154(v24, type metadata accessor for Function);
}

uint64_t sub_1C1E4424C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>)
{
  v94 = a3;
  v100 = a4;
  v14 = sub_1C1E52C5C();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DCC8, &qword_1C1E5A938);
  v16 = *(*(v95 - 8) + 64);
  MEMORY[0x1EEE9AC00](v95);
  v18 = &v91 - v17;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DCD0, &qword_1C1E5A940);
  v19 = *(*(v97 - 8) + 64);
  MEMORY[0x1EEE9AC00](v97);
  v99 = &v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v96 = &v91 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v98 = &v91 - v24;
  v25 = *(type metadata accessor for Function() + 52);
  if (*(a2 + v25))
  {
    v26 = *(a2 + v25);
  }

  else
  {
    if (qword_1EBF1C160 != -1)
    {
      swift_once();
    }

    v26 = qword_1EBF20D90;
  }

  v93 = type metadata accessor for GraphView();

  sub_1C1E44ABC(v26, v129);

  v125 = v129[8];
  v126 = v129[9];
  v127 = v129[10];
  v128 = v129[11];
  v121 = v129[4];
  v122 = v129[5];
  v123 = v129[6];
  v124 = v129[7];
  v117 = v129[0];
  v118 = v129[1];
  v119 = v129[2];
  v120 = v129[3];
  sub_1C1E52C4C();
  sub_1C1E52C3C();
  v27 = a2[3];
  *&v114[0] = a2[2];
  *(&v114[0] + 1) = v27;

  MEMORY[0x1C69102A0](0x66322E253DLL, 0xE500000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DC90, &qword_1C1E5A8B8);
  v28 = swift_allocObject();
  v91 = xmmword_1C1E57DD0;
  v29 = MEMORY[0x1E69E63B0];
  *(v28 + 16) = xmmword_1C1E57DD0;
  v92 = a1;
  v30 = MEMORY[0x1E69E6438];
  *(v28 + 56) = v29;
  *(v28 + 64) = v30;
  *(v28 + 32) = a7;
  sub_1C1E5461C();

  sub_1C1E52C2C();

  sub_1C1E52C3C();
  *&v114[0] = 32;
  *(&v114[0] + 1) = 0xE100000000000000;
  MEMORY[0x1C69102A0](a2[4], a2[5]);
  MEMORY[0x1C69102A0](0x66322E253DLL, 0xE500000000000000);
  v31 = swift_allocObject();
  *(v31 + 16) = v91;
  *(v31 + 56) = MEMORY[0x1E69E63B0];
  *(v31 + 64) = v30;
  *(v31 + 32) = a8;
  sub_1C1E5461C();

  sub_1C1E52C2C();

  sub_1C1E52C3C();
  sub_1C1E52C7C();
  v32 = sub_1C1E5314C();
  v34 = v33;
  v36 = v35;
  v37 = sub_1C1E5310C();
  v39 = v38;
  v41 = v40;
  sub_1C1DECF2C(v32, v34, v36 & 1);

  LODWORD(v114[0]) = sub_1C1E52D3C();
  v42 = sub_1C1E530FC();
  v44 = v43;
  LOBYTE(v32) = v45;
  sub_1C1DECF2C(v37, v39, v41 & 1);

  sub_1C1E5366C();
  v94 = sub_1C1E5312C();
  *&v91 = v46;
  LOBYTE(v30) = v47;
  v49 = v48;

  sub_1C1DECF2C(v42, v44, v32 & 1);

  LOBYTE(v42) = sub_1C1E5300C();
  sub_1C1E5264C();
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  LOBYTE(v30) = v30 & 1;
  LOBYTE(v114[0]) = v30;
  LOBYTE(v101) = 0;
  v58 = sub_1C1E538DC();
  v60 = v59;
  v61 = &v18[*(v95 + 36)];
  v62 = *(sub_1C1E529CC() + 20);
  v63 = *MEMORY[0x1E697F468];
  v64 = sub_1C1E52C8C();
  (*(*(v64 - 8) + 104))(&v61[v62], v63, v64);
  __asm { FMOV            V0.2D, #12.0 }

  *v61 = _Q0;
  v70 = &v61[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DCD8, &qword_1C1E5A948) + 36)];
  sub_1C1E5388C();
  *&v61[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DCE0, &qword_1C1E5A950) + 36)] = 0x3FE0000000000000;
  v71 = &v61[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DCE8, &qword_1C1E5A958) + 36)];
  *v71 = v58;
  v71[1] = v60;
  v72 = v91;
  *v18 = v94;
  *(v18 + 1) = v72;
  v18[16] = v30;
  *(v18 + 3) = v49;
  v18[32] = v42;
  *(v18 + 5) = v51;
  *(v18 + 6) = v53;
  *(v18 + 7) = v55;
  *(v18 + 8) = v57;
  v18[72] = 0;
  v73 = v93;
  v130.origin.x = sub_1C1E3B478(v93);
  v74 = CGRectGetMinY(v130) + 12.0;
  v131.origin.x = sub_1C1E3B478(v73);
  MaxY = CGRectGetMaxY(v131);
  if (a6 + -24.0 > v74)
  {
    v76 = a6 + -24.0;
  }

  else
  {
    v76 = v74;
  }

  if (MaxY >= v76)
  {
    v77 = v76;
  }

  else
  {
    v77 = MaxY;
  }

  v78 = v96;
  sub_1C1DC18D0(v18, v96, &qword_1EBF1DCC8, &qword_1C1E5A938);
  v79 = v98;
  v80 = (v78 + *(v97 + 36));
  *v80 = a5;
  v80[1] = v77;
  sub_1C1DC18D0(v78, v79, &qword_1EBF1DCD0, &qword_1C1E5A940);
  v81 = v99;
  sub_1C1DC1424(v79, v99, &qword_1EBF1DCD0, &qword_1C1E5A940);
  v109 = v125;
  v110 = v126;
  v111 = v127;
  v112 = v128;
  v105 = v121;
  v106 = v122;
  v107 = v123;
  v108 = v124;
  v101 = v117;
  v102 = v118;
  v103 = v119;
  v104 = v120;
  *&v113 = a5;
  *(&v113 + 1) = a6;
  v82 = v128;
  v83 = v100;
  v100[10] = v127;
  v83[11] = v82;
  v84 = v108;
  v83[6] = v107;
  v83[7] = v84;
  v85 = v110;
  v83[8] = v109;
  v83[9] = v85;
  v86 = v104;
  v83[2] = v103;
  v83[3] = v86;
  v87 = v106;
  v83[4] = v105;
  v83[5] = v87;
  v88 = v102;
  *v83 = v101;
  v83[1] = v88;
  v83[12] = v113;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DCF0, &qword_1C1E5A960);
  sub_1C1DC1424(v81, v83 + *(v89 + 48), &qword_1EBF1DCD0, &qword_1C1E5A940);
  sub_1C1DC1424(&v101, v114, &qword_1EBF1DCF8, &qword_1C1E5A968);
  sub_1C1DC1870(v79, &qword_1EBF1DCD0, &qword_1C1E5A940);
  sub_1C1DC1870(v81, &qword_1EBF1DCD0, &qword_1C1E5A940);
  v114[8] = v125;
  v114[9] = v126;
  v114[10] = v127;
  v114[11] = v128;
  v114[4] = v121;
  v114[5] = v122;
  v114[6] = v123;
  v114[7] = v124;
  v114[0] = v117;
  v114[1] = v118;
  v114[2] = v119;
  v114[3] = v120;
  v115 = a5;
  v116 = a6;
  return sub_1C1DC1870(v114, &qword_1EBF1DCF8, &qword_1C1E5A968);
}

__n128 sub_1C1E44ABC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C1E538DC();
  v6 = v5;
  sub_1C1E47F5C(a1, &v13);
  v32 = v21;
  v33 = v22;
  v34 = v23;
  v28 = v17;
  v29 = v18;
  v30 = v19;
  v31 = v20;
  v24 = v13;
  v25 = v14;
  v26 = v15;
  v27 = v16;
  v35[8] = v21;
  v35[9] = v22;
  v35[10] = v23;
  v35[4] = v17;
  v35[5] = v18;
  v35[6] = v19;
  v35[7] = v20;
  v35[0] = v13;
  v35[1] = v14;
  v35[2] = v15;
  v35[3] = v16;
  sub_1C1DC1424(&v24, &v12, &qword_1EBF1DD00, &qword_1C1E5A970);
  sub_1C1DC1870(v35, &qword_1EBF1DD00, &qword_1C1E5A970);
  *a2 = v4;
  *(a2 + 8) = v6;
  v7 = v33;
  *(a2 + 144) = v32;
  *(a2 + 160) = v7;
  *(a2 + 176) = v34;
  v8 = v29;
  *(a2 + 80) = v28;
  *(a2 + 96) = v8;
  v9 = v31;
  *(a2 + 112) = v30;
  *(a2 + 128) = v9;
  v10 = v25;
  *(a2 + 16) = v24;
  *(a2 + 32) = v10;
  result = v27;
  *(a2 + 48) = v26;
  *(a2 + 64) = result;
  return result;
}

uint64_t sub_1C1E44BD8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(uint64_t)@<X4>, _OWORD *a4@<X8>)
{
  v19[1] = a1;
  v20 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D540, &qword_1C1E58F98);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v19 - v8;
  v10 = sub_1C1E522DC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a2;
  swift_getKeyPath();
  v21 = v15;
  sub_1C1E4D7A4(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  v16 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__chartProxy;
  swift_beginAccess();
  sub_1C1DC1424(v15 + v16, v9, &qword_1EBF1D540, &qword_1C1E58F98);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    result = sub_1C1DC1870(v9, &qword_1EBF1D540, &qword_1C1E58F98);
    *a4 = 0u;
    a4[1] = 0u;
  }

  else
  {
    v18 = (*(v11 + 32))(v14, v9, v10);
    result = v20(v18);
    if (result)
    {
      type metadata accessor for CGRect(0);
      sub_1C1E5286C();

      return (*(v11 + 8))(v14, v10);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1C1E44E58(double *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, double, double, double, double))
{
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v10 = type metadata accessor for GraphView();
  return a5(v10, v6, v7, v8, v9);
}

uint64_t sub_1C1E44EBC@<X0>(uint64_t a1@<X0>, double *a2@<X1>, double a3@<X2>, double a4@<X3>, uint64_t a5@<X8>)
{
  WitnessTable = a2;
  v127 = a1;
  v129 = a5;
  v121 = type metadata accessor for GraphView();
  v114 = *(v121 - 8);
  v112 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v121);
  v113 = &v102 - v7;
  v118 = sub_1C1E52DBC();
  v117 = *(v118 - 8);
  v8 = *(v117 + 64);
  MEMORY[0x1EEE9AC00](v118);
  v116 = (&v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v10 = COERCE_DOUBLE(__swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D2A0, &qword_1C1E58810));
  v139 = a3;
  v140 = a4;
  *&v11 = COERCE_DOUBLE(swift_getOpaqueTypeMetadata2());
  v12 = sub_1C1E0F2FC();
  v122 = a3;
  v139 = a3;
  v123 = a4;
  v140 = a4;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v133 = v10;
  v139 = *&v10;
  v132 = v11;
  v140 = *&v11;
  v131 = v12;
  v141 = v12;
  v14 = OpaqueTypeConformance2;
  v142 = OpaqueTypeConformance2;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v109 = *(OpaqueTypeMetadata2 - 8);
  v16 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v119 = &v102 - v17;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1D880, &qword_1C1E5A340);
  v110 = OpaqueTypeMetadata2;
  v18 = sub_1C1E5299C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v120 = &v102 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v111 = &v102 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C758, &qword_1C1E579C0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v102 - v26;
  v125 = type metadata accessor for Function();
  v126 = *(v125 - 8);
  v28 = *(v126 + 64);
  MEMORY[0x1EEE9AC00](v125);
  v108 = &v102 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = v29;
  MEMORY[0x1EEE9AC00](v30);
  v124 = &v102 - v31;
  v32 = sub_1C1E549CC();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v102 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v128 = &v102 - v38;
  v39 = *WitnessTable;
  swift_getKeyPath();
  v139 = v39;
  sub_1C1E4D7A4(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  v40 = (*&v39 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel__tapLocation);
  swift_beginAccess();
  if (v40[2])
  {
    goto LABEL_10;
  }

  v115 = v36;
  v104 = v33;
  v105 = v19;
  v106 = v32;
  v41 = v14;
  v42 = v131;
  v43 = v133;
  v45 = *v40;
  v44 = v40[1];
  sub_1C1E522BC();
  if (v141)
  {
LABEL_9:
    v32 = v106;
    v19 = v105;
    v33 = v104;
    v36 = v115;
LABEL_10:
    (*(v19 + 56))(v36, 1, 1, v18);
    v139 = *&v133;
    v93 = v132;
    v140 = *&v132;
    v94 = v131;
    v141 = v131;
    v142 = v14;
    v95 = swift_getOpaqueTypeConformance2();
    v96 = sub_1C1DC1124(&qword_1EBF1D998, &qword_1EBF1D880, &qword_1C1E5A340);
    v155 = v95;
    v156 = v96;
    swift_getWitnessTable();
    v97 = v128;
    (*(v33 + 16))(v128, v36, v32);
    v92 = *(v33 + 8);
    v92(v36, v32);
    v73 = *&v133;
    v83 = *&v93;
    v72 = v94;
    v91 = v97;
    goto LABEL_11;
  }

  v46 = v140;
  v47 = v139;
  sub_1C1E24AC8();
  v49 = v48;
  sub_1C1E24AC8();
  sub_1C1E25C2C(round(vabdd_f64(v49, v50)));
  sub_1C1E24334(v27, v47, v46, v51);
  if ((*(v126 + 48))(v27, 1, v125) == 1)
  {
    sub_1C1DC1870(v27, &qword_1EBF1C758, &qword_1C1E579C0);
    goto LABEL_9;
  }

  v52 = v27;
  v53 = v124;
  v54 = sub_1C1E4D6B4(v52, v124, type metadata accessor for Function);
  v139 = v47;
  v55 = *(v53 + 72);
  v157 = (*(v53 + 64))(v54, v47);
  sub_1C1E522CC();
  if ((v56 & 1) != 0 || (v57 = *(WitnessTable + 1)) == 0)
  {
    sub_1C1E4E154(v53, type metadata accessor for Function);
    goto LABEL_9;
  }

  v125 = *(WitnessTable + 2);
  v127 = v57;

  v58 = v121;
  sub_1C1E3B3B4(v121);
  sub_1C1E3B3B4(v58);
  sub_1C1E3B3B4(v58);
  sub_1C1E538DC();
  sub_1C1E5281C();
  v149 = v158;
  v148 = v160;
  v139 = 0.0;
  v140 = v157;
  LOBYTE(v141) = v158;
  *(&v141 + 1) = *v151;
  HIDWORD(v141) = *&v151[3];
  v142 = v159;
  v143 = v160;
  *v144 = *v150;
  *&v144[3] = *&v150[3];
  v145 = v161;
  v146 = v45;
  v147 = v44;
  v59 = swift_allocObject();
  v59[2] = 0.0;
  v59[3] = 0.0;
  v59[4] = v39;
  v60 = swift_allocObject();
  v60[2] = 0.0;
  v60[3] = 0.0;
  v60[4] = v39;
  swift_retain_n();
  sub_1C1E537BC();
  v103 = v136;
  v102 = v137;
  v61 = v138;
  v62 = sub_1C1E5372C();
  v63 = v116;
  *v116 = v62;
  (*(v117 + 104))(v63, *MEMORY[0x1E697C8C0], v118);
  v64 = v108;
  sub_1C1E4C8A0(v53, v108, type metadata accessor for Function);
  v65 = (*(v126 + 80) + 48) & ~*(v126 + 80);
  v66 = swift_allocObject();
  v67 = v123;
  v66[2] = v122;
  v66[3] = v67;
  v68 = v125;
  *(v66 + 4) = v127;
  *(v66 + 5) = v68;
  sub_1C1E4D6B4(v64, v66 + v65, type metadata accessor for Function);

  *&v126 = COERCE_DOUBLE(swift_checkMetadataState());
  v14 = v41;
  v69 = v61;
  v70 = v116;
  v71 = *&v43;
  sub_1C1DD73C0(v103, v102, v69, v116, 4);

  v72 = v42;
  v73 = v71;

  (*(v117 + 8))(v70, v118);
  v74 = v114;
  v75 = v113;
  v76 = v121;
  (*(v114 + 16))(v113, WitnessTable, v121);
  v77 = (*(v74 + 80) + 32) & ~*(v74 + 80);
  v78 = swift_allocObject();
  v79 = v123;
  *(v78 + 16) = v122;
  *(v78 + 24) = v79;
  (*(v74 + 32))(v78 + v77, v75, v76);
  type metadata accessor for CGSize(0);
  v139 = v73;
  v140 = *&v126;
  v141 = v72;
  v142 = v41;
  v80 = swift_getOpaqueTypeConformance2();
  sub_1C1E4D7A4(&qword_1EBF1DCA8, type metadata accessor for CGSize);
  v81 = v110;
  v82 = v119;
  sub_1C1E5339C();
  v83 = *&v132;

  sub_1C1DD0EB8(v127);
  (*(v109 + 8))(v82, v81);
  sub_1C1E4E154(v124, type metadata accessor for Function);
  v84 = sub_1C1DC1124(&qword_1EBF1D998, &qword_1EBF1D880, &qword_1C1E5A340);
  v134 = v80;
  v135 = v84;
  WitnessTable = swift_getWitnessTable();
  v85 = v111;
  v86 = v120;
  sub_1C1E105BC(v120, v18, WitnessTable);
  v87 = v105;
  v88 = *(v105 + 8);
  v88(v86, v18);
  sub_1C1E105BC(v85, v18, WitnessTable);
  v88(v85, v18);
  v89 = v115;
  (*(v87 + 32))(v115, v86, v18);
  (*(v87 + 56))(v89, 0, 1, v18);
  v90 = v104;
  v91 = v128;
  v32 = v106;
  (*(v104 + 16))(v128, v89, v106);
  v92 = *(v90 + 8);
  v92(v115, v32);
LABEL_11:
  v139 = v73;
  v140 = v83;
  v141 = v72;
  v142 = v14;
  v98 = swift_getOpaqueTypeConformance2();
  v99 = sub_1C1DC1124(&qword_1EBF1D998, &qword_1EBF1D880, &qword_1C1E5A340);
  v153 = v98;
  v154 = v99;
  v152 = swift_getWitnessTable();
  v100 = swift_getWitnessTable();
  sub_1C1E105BC(v91, v32, v100);
  return (v92)(v91, v32);
}

uint64_t sub_1C1E45F9C@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v27[1] = a2;
  v28 = a1;
  v29 = a6;
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v13;
  v31 = v14;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v16 = *(OpaqueTypeMetadata2 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v19 = v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v27 - v21;
  v23 = type metadata accessor for Function();
  v28(a3 + *(v23 + 48));
  sub_1C1E533DC();
  (*(v9 + 8))(v12, a4);
  v30 = a4;
  v31 = a5;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1C1E105BC(v19, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v25 = *(v16 + 8);
  v25(v19, OpaqueTypeMetadata2);
  sub_1C1E105BC(v22, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v25)(v22, OpaqueTypeMetadata2);
}

uint64_t sub_1C1E461D8()
{
  v1 = type metadata accessor for Function();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = (v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EDE737A0 != -1)
  {
    swift_once();
  }

  v6 = sub_1C1E51E8C();
  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DC90, &qword_1C1E5A8B8);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C1E57DD0;
  v10 = *v0;
  v11 = *(*v0 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_functionLock);
  [v11 lock];
  swift_getKeyPath();
  v32 = v10;
  sub_1C1E4D7A4(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  v12 = *(v10 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___functions);

  [v11 unlock];
  v13 = *(v12 + 16);
  if (v13)
  {
    v29 = v9;
    v30 = v6;
    v31 = v8;
    v32 = MEMORY[0x1E69E7CC0];
    sub_1C1E26720(0, v13, 0);
    v14 = v32;
    v15 = *(v2 + 80);
    v28[1] = v12;
    v16 = v12 + ((v15 + 32) & ~v15);
    v17 = *(v2 + 72);
    do
    {
      sub_1C1E4C8A0(v16, v5, type metadata accessor for Function);
      v18 = *v5;
      v19 = v5[1];

      sub_1C1E4E154(v5, type metadata accessor for Function);
      v32 = v14;
      v21 = *(v14 + 16);
      v20 = *(v14 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1C1E26720((v20 > 1), v21 + 1, 1);
        v14 = v32;
      }

      *(v14 + 16) = v21 + 1;
      v22 = v14 + 16 * v21;
      *(v22 + 32) = v18;
      *(v22 + 40) = v19;
      v16 += v17;
      --v13;
    }

    while (v13);

    v9 = v29;
  }

  else
  {

    v14 = MEMORY[0x1E69E7CC0];
  }

  v32 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D5A8, &qword_1C1E5A8C0);
  sub_1C1DC1124(&qword_1EBF1DCA0, &qword_1EBF1D5A8, &qword_1C1E5A8C0);
  v23 = sub_1C1E5458C();
  v25 = v24;

  *(v9 + 56) = MEMORY[0x1E69E6158];
  *(v9 + 64) = sub_1C1E4D660();
  *(v9 + 32) = v23;
  *(v9 + 40) = v25;
  v26 = sub_1C1E545CC();

  return v26;
}

uint64_t sub_1C1E465C0(uint64_t a1)
{
  if (qword_1EDE737A0 != -1)
  {
    swift_once();
  }

  sub_1C1E51E8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DC90, &qword_1C1E5A8B8);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C1E5A300;
  v4 = *v1;
  sub_1C1E24AC8();
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v8 = sub_1C1E4B9FC(v7);
  v10 = v9;
  v11 = MEMORY[0x1E69E6158];
  *(v3 + 56) = MEMORY[0x1E69E6158];
  v12 = sub_1C1E4D660();
  *(v3 + 64) = v12;
  *(v3 + 32) = v8;
  *(v3 + 40) = v10;
  sub_1C1E24AC8();
  v14 = sub_1C1E4B9FC(v13);
  *(v3 + 96) = v11;
  *(v3 + 104) = v12;
  *(v3 + 72) = v14;
  *(v3 + 80) = v15;
  sub_1C1E24CD4();
  v17 = sub_1C1E4B9FC(v16);
  *(v3 + 136) = v11;
  *(v3 + 144) = v12;
  *(v3 + 112) = v17;
  *(v3 + 120) = v18;
  sub_1C1E24CD4();
  v20 = sub_1C1E4B9FC(v19);
  *(v3 + 176) = v11;
  *(v3 + 184) = v12;
  *(v3 + 152) = v20;
  *(v3 + 160) = v21;
  v22 = sub_1C1E545CC();

  return v22;
}

uint64_t sub_1C1E46780@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v92 = a4;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DC70, &qword_1C1E5A898);
  v94 = *(v91 - 8);
  v7 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v91);
  v93 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v105 = &v91 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v104 = &v91 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v103 = &v91 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v115 = &v91 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v102 = &v91 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v101 = &v91 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v100 = &v91 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v114 = &v91 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v113 = &v91 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v112 = &v91 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v111 = &v91 - v30;
  v106 = a2;
  v119 = a3;
  v96 = type metadata accessor for GraphView();
  v31 = *(v96 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v96);
  v95 = &v91 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D430, &qword_1C1E58AC8);
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v38 = &v91 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D418, &qword_1C1E5A8A0);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v99 = &v91 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v110 = &v91 - v43;
  v116 = a1;
  v44 = *a1;
  swift_getKeyPath();
  v121 = v44;
  sub_1C1E4D7A4(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  v45 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel__movedFromCenter;
  swift_beginAccess();
  if (*(v44 + v45) == 1)
  {
    v46 = *(v31 + 16);
    v47 = v31;
    v118 = (v31 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v48 = v95;
    v117 = v34;
    v49 = v96;
    v120 = v46;
    v46(v95, v116, v96);
    v50 = (*(v31 + 80) + 32) & ~*(v31 + 80);
    v51 = swift_allocObject();
    v52 = v119;
    *(v51 + 16) = v106;
    *(v51 + 24) = v52;
    v53 = v47;
    (*(v47 + 32))(v51 + v50, v48, v49);
    sub_1C1E5373C();
    v54 = v110;
    v55 = v38;
    v56 = v117;
    (*(v35 + 32))(v110, v55, v117);
    (*(v35 + 56))(v54, 0, 1, v56);
    v57 = v52;
  }

  else
  {
    (*(v35 + 56))(v110, 1, 1, v34);
    v53 = v31;
    v120 = *(v31 + 16);
    v118 = (v31 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v57 = v119;
  }

  v58 = v106;
  v59 = v95;
  v60 = v116;
  v61 = v96;
  v120(v95, v116, v96);
  v98 = *(v53 + 80);
  v62 = (v98 + 32) & ~v98;
  v109 = v32;
  v63 = swift_allocObject();
  *(v63 + 16) = v58;
  *(v63 + 24) = v57;
  v97 = *(v53 + 32);
  v97(v63 + v62, v59, v61);
  v108 = v53 + 32;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DC78, &qword_1C1E5A8A8);
  v117 = sub_1C1DC1124(&qword_1EBF1DC80, &qword_1EBF1DC78, &qword_1C1E5A8A8);
  sub_1C1E5373C();
  v64 = v120;
  v120(v59, v60, v61);
  v65 = swift_allocObject();
  v66 = v106;
  v67 = v119;
  *(v65 + 16) = v106;
  *(v65 + 24) = v67;
  v97(v65 + v62, v59, v61);
  sub_1C1E5373C();
  v64(v59, v60, v61);
  v68 = swift_allocObject();
  *(v68 + 16) = v66;
  *(v68 + 24) = v67;
  v69 = v97;
  v97(v68 + v62, v59, v61);
  sub_1C1E5373C();
  v70 = v116;
  v120(v59, v116, v61);
  v71 = swift_allocObject();
  v72 = v119;
  *(v71 + 16) = v66;
  *(v71 + 24) = v72;
  v69(v71 + v62, v59, v61);
  sub_1C1E5373C();
  v120(v59, v70, v61);
  v73 = swift_allocObject();
  v74 = v119;
  *(v73 + 16) = v66;
  *(v73 + 24) = v74;
  v69(v73 + v62, v59, v61);
  sub_1C1E5373C();
  v120(v59, v116, v61);
  v75 = swift_allocObject();
  *(v75 + 16) = v66;
  *(v75 + 24) = v74;
  v69(v75 + v62, v59, v61);
  v76 = v101;
  sub_1C1E5373C();
  v77 = v99;
  sub_1C1DC1424(v110, v99, &qword_1EBF1D418, &qword_1C1E5A8A0);
  v78 = v94;
  v79 = *(v94 + 16);
  v80 = v102;
  v81 = v91;
  v79(v102, v111, v91);
  v79(v115, v112, v81);
  v82 = v103;
  v79(v103, v113, v81);
  v79(v104, v114, v81);
  v83 = v100;
  v79(v105, v100, v81);
  v84 = v93;
  v79(v93, v76, v81);
  v85 = v92;
  sub_1C1DC1424(v77, v92, &qword_1EBF1D418, &qword_1C1E5A8A0);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DC88, &qword_1C1E5A8B0);
  v79((v85 + v86[12]), v80, v81);
  v79((v85 + v86[16]), v115, v81);
  v79((v85 + v86[20]), v82, v81);
  v87 = v104;
  v79((v85 + v86[24]), v104, v81);
  v88 = v105;
  v79((v85 + v86[28]), v105, v81);
  v79((v85 + v86[32]), v84, v81);
  v89 = *(v78 + 8);
  v89(v101, v81);
  v89(v83, v81);
  v89(v114, v81);
  v89(v113, v81);
  v89(v112, v81);
  v89(v111, v81);
  sub_1C1DC1870(v110, &qword_1EBF1D418, &qword_1C1E5A8A0);
  v89(v84, v81);
  v89(v88, v81);
  v89(v87, v81);
  v89(v103, v81);
  v89(v115, v81);
  v89(v102, v81);
  return sub_1C1DC1870(v99, &qword_1EBF1D418, &qword_1C1E5A8A0);
}

uint64_t sub_1C1E474DC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C1E536AC();
  sub_1C1E52C6C();
  if (qword_1EDE737A0 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDE75DC0;
  v4 = sub_1C1E5314C();
  v6 = v5;
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  v8 = v7 & 1;
  *(a1 + 24) = v7 & 1;
  *(a1 + 32) = v9;

  sub_1C1E082A0(v4, v6, v8);

  sub_1C1DECF2C(v4, v6, v8);
}

uint64_t sub_1C1E4763C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C1E536AC();
  sub_1C1E52C6C();
  if (qword_1EDE737A0 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDE75DC0;
  v4 = sub_1C1E5314C();
  v6 = v5;
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  v8 = v7 & 1;
  *(a1 + 24) = v7 & 1;
  *(a1 + 32) = v9;

  sub_1C1E082A0(v4, v6, v8);

  sub_1C1DECF2C(v4, v6, v8);
}

uint64_t sub_1C1E4779C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C1E536AC();
  sub_1C1E52C6C();
  if (qword_1EDE737A0 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDE75DC0;
  v4 = sub_1C1E5314C();
  v6 = v5;
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  v8 = v7 & 1;
  *(a1 + 24) = v7 & 1;
  *(a1 + 32) = v9;

  sub_1C1E082A0(v4, v6, v8);

  sub_1C1DECF2C(v4, v6, v8);
}

uint64_t sub_1C1E47904@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C1E536AC();
  sub_1C1E52C6C();
  if (qword_1EDE737A0 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDE75DC0;
  v4 = sub_1C1E5314C();
  v6 = v5;
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  v8 = v7 & 1;
  *(a1 + 24) = v7 & 1;
  *(a1 + 32) = v9;

  sub_1C1E082A0(v4, v6, v8);

  sub_1C1DECF2C(v4, v6, v8);
}

uint64_t sub_1C1E47A6C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t *a5)
{
  v7 = *a1;
  v8 = a4();
  v10 = v9 - (a4)(v8);
  v11 = *a5;
  swift_beginAccess();
  *(v7 + v11) = v10 + *(v7 + v11);
  return sub_1C1E1A2C0();
}

uint64_t sub_1C1E47AF4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C1E536AC();
  sub_1C1E52C6C();
  if (qword_1EDE737A0 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDE75DC0;
  v4 = sub_1C1E5314C();
  v6 = v5;
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  v8 = v7 & 1;
  *(a1 + 24) = v7 & 1;
  *(a1 + 32) = v9;

  sub_1C1E082A0(v4, v6, v8);

  sub_1C1DECF2C(v4, v6, v8);
}

uint64_t sub_1C1E47C58()
{
  sub_1C1E5395C();
  sub_1C1E5291C();
}

uint64_t sub_1C1E47CBC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t *a5)
{
  v7 = *a1;
  v8 = a4();
  v10 = v9 - (a4)(v8);
  v11 = *a5;
  swift_beginAccess();
  *(v7 + v11) = *(v7 + v11) - v10;
  return sub_1C1E1A2C0();
}

uint64_t sub_1C1E47D44@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C1E536AC();
  sub_1C1E52C6C();
  if (qword_1EDE737A0 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDE75DC0;
  v4 = sub_1C1E5314C();
  v6 = v5;
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  v8 = v7 & 1;
  *(a1 + 24) = v7 & 1;
  *(a1 + 32) = v9;

  sub_1C1E082A0(v4, v6, v8);

  sub_1C1DECF2C(v4, v6, v8);
}

uint64_t sub_1C1E47EAC()
{
  v0 = type metadata accessor for GraphView();
  v1 = sub_1C1E3AC24(v0);
  v2 = 0;
  if ((v1 & 1) == 0)
  {
    v2 = sub_1C1E5395C();
  }

  MEMORY[0x1EEE9AC00](v2);
  sub_1C1E5291C();
}

uint64_t sub_1C1E47F5C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v36 = a1;
  v3 = sub_1C1E5353C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1E538DC();
  sub_1C1E5281C();
  v8 = v50;
  v9 = v51;
  v34 = v51;
  v10 = v52;
  v31 = v49;
  v32 = v53;
  v37 = v54;
  v11 = *MEMORY[0x1E69814C8];
  v12 = *(v4 + 104);
  v12(v7, v11, v3);
  v30 = sub_1C1E5368C();
  LOBYTE(v74) = v8;
  v35 = v8;
  LOBYTE(v69[0]) = v10;
  v33 = v10;
  v29 = sub_1C1E5361C();
  v12(v7, v11, v3);
  v13 = sub_1C1E5368C();
  sub_1C1E538DC();
  sub_1C1E5281C();
  v15 = v31;
  v14 = v32;
  *&v55 = v31;
  BYTE8(v55) = v8;
  HIDWORD(v55) = *&v48[3];
  *(&v55 + 9) = *v48;
  *&v56 = v9;
  BYTE8(v56) = v10;
  HIDWORD(v56) = *&v47[3];
  *(&v56 + 9) = *v47;
  *&v57 = v32;
  *(&v57 + 1) = v37;
  v16 = v29;
  v17 = v30;
  *&v58 = v30;
  *(&v58 + 1) = 0x4000000000000000;
  v59 = 0;
  v60 = 0;
  v61 = v29;
  *&v62 = v13;
  v38 = v55;
  v39 = v56;
  *&v43[0] = v29;
  v41 = v58;
  v42 = 0u;
  v40 = v57;
  *(&v62 + 1) = 0x3FF0000000000000;
  v63 = 0;
  v64 = 0;
  v67 = v46;
  v19 = v45;
  v18 = v46;
  v66 = v45;
  v20 = v44;
  v65 = v44;
  v21 = v36;
  v68 = v36;
  *(&v43[1] + 8) = 0u;
  *(v43 + 8) = v62;
  *(&v43[4] + 8) = v46;
  *(&v43[5] + 1) = v36;
  *(&v43[3] + 8) = v45;
  *(&v43[2] + 8) = v44;
  v22 = v56;
  *a2 = v55;
  a2[1] = v22;
  v23 = v43[0];
  a2[4] = v42;
  a2[5] = v23;
  v24 = v41;
  a2[2] = v40;
  a2[3] = v24;
  v25 = v43[5];
  a2[9] = v43[4];
  a2[10] = v25;
  v26 = v43[3];
  a2[7] = v43[2];
  a2[8] = v26;
  a2[6] = v43[1];
  v69[0] = v13;
  v69[1] = 0x3FF0000000000000;
  v69[3] = 0;
  v69[2] = 0;
  v70 = v20;
  v71 = v19;
  v72 = v18;
  v73 = v21;

  sub_1C1DC1424(&v55, &v74, &qword_1EBF1DD08, &qword_1C1E5A978);
  sub_1C1DC1424(&v62, &v74, &qword_1EBF1DD10, &unk_1C1E5A980);
  sub_1C1DC1870(v69, &qword_1EBF1DD10, &unk_1C1E5A980);
  v74 = v15;
  v75 = v35;
  *v76 = *v48;
  *&v76[3] = *&v48[3];
  v77 = v34;
  v78 = v33;
  *v79 = *v47;
  *&v79[3] = *&v47[3];
  v80 = v14;
  v81 = v37;
  v82 = v17;
  v83 = 0x4000000000000000;
  v84 = 0;
  v85 = 0;
  v86 = v16;
  return sub_1C1DC1870(&v74, &qword_1EBF1DD08, &qword_1C1E5A978);
}

void sub_1C1E48314()
{
  type metadata accessor for GraphViewModel();
  if (v0 <= 0x3F)
  {
    sub_1C1E486F4(319, &qword_1EDE750B8, &qword_1EBF1C1B8, "2E", MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1C1E487A8(319, &qword_1EBF1DAA0, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_1C1E48758(319, &qword_1EBF1C518, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          sub_1C1E486F4(319, &qword_1EBF1DAA8, &qword_1EBF1C778, &qword_1C1E56FC8, MEMORY[0x1E6981790]);
          if (v4 <= 0x3F)
          {
            sub_1C1E48758(319, &qword_1EBF1CA20, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
            if (v5 <= 0x3F)
            {
              sub_1C1E48758(319, &qword_1EBF1DAB0, MEMORY[0x1E69815C0], MEMORY[0x1E6981790]);
              if (v6 <= 0x3F)
              {
                sub_1C1E486F4(319, &qword_1EBF1DAB8, &qword_1EBF1C758, &qword_1C1E579C0, MEMORY[0x1E6981790]);
                if (v7 <= 0x3F)
                {
                  sub_1C1E48758(319, &qword_1EBF1DAC0, &type metadata for SingleDragState, MEMORY[0x1E6981790]);
                  if (v8 <= 0x3F)
                  {
                    sub_1C1E48758(319, &qword_1EBF1DAC8, &type metadata for DragState, MEMORY[0x1E6981790]);
                    if (v9 <= 0x3F)
                    {
                      sub_1C1E48758(319, &qword_1EBF1DAD0, &type metadata for MagnifyState, MEMORY[0x1E6981790]);
                      if (v10 <= 0x3F)
                      {
                        sub_1C1E48758(319, &qword_1EBF1DAD8, &type metadata for TapState, MEMORY[0x1E6981790]);
                        if (v11 <= 0x3F)
                        {
                          sub_1C1E487A8(319, &qword_1EBF1DAE0, type metadata accessor for CGSize, MEMORY[0x1E6981790]);
                          if (v12 <= 0x3F)
                          {
                            sub_1C1E487A8(319, &qword_1EBF1DAE8, type metadata accessor for CGRect, MEMORY[0x1E6981790]);
                            if (v13 <= 0x3F)
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

void sub_1C1E486F4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1C1E48758(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1C1E487A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for CenteredAxes()
{
  result = qword_1EBF1DAF0;
  if (!qword_1EBF1DAF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C1E48890()
{
  sub_1C1E48930();
  if (v0 <= 0x3F)
  {
    sub_1C1E526EC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C1E48930()
{
  if (!qword_1EBF1DB00)
  {
    v0 = sub_1C1E5459C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBF1DB00);
    }
  }
}

uint64_t sub_1C1E489A4@<X0>(uint64_t a1@<X8>)
{
  v128 = a1;
  v4 = type metadata accessor for CenteredAxes();
  v5 = v4 - 8;
  v122 = *(v4 - 8);
  v6 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v123 = v7;
  v124 = &v121 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DB28, &qword_1C1E5A668);
  v129 = *(v130 - 8);
  v8 = *(v129 + 64);
  MEMORY[0x1EEE9AC00](v130);
  v127 = &v121 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v154 = &v121 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v153 = &v121 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v152 = &v121 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DB30, &qword_1C1E5A670);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v155 = &v121 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DB38, &qword_1C1E5A678);
  v164 = *(v19 - 8);
  v20 = v164[8];
  MEMORY[0x1EEE9AC00](v19);
  v156 = &v121 - v21;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DB40, &qword_1C1E5A680);
  v163 = *(v132 - 8);
  v22 = *(v163 + 64);
  MEMORY[0x1EEE9AC00](v132);
  v131 = &v121 - v23;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DB48, &qword_1C1E5A688);
  v125 = *(v126 - 8);
  v24 = *(v125 + 64);
  MEMORY[0x1EEE9AC00](v126);
  v151 = &v121 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v150 = &v121 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v162 = &v121 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v121 - v31;
  v161 = sub_1C1E524FC();
  v146 = *(v161 - 8);
  v33 = *(v146 + 64);
  MEMORY[0x1EEE9AC00](v161);
  v35 = &v121 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DB50, &qword_1C1E5A690);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v158 = &v121 - v38;
  v160 = sub_1C1E525EC();
  KeyPath = *(v160 - 1);
  v39 = *(KeyPath + 64);
  MEMORY[0x1EEE9AC00](v160);
  v157 = &v121 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DB58, &qword_1C1E5A698);
  v170 = *(v142 - 8);
  v41 = *(v170 + 64);
  MEMORY[0x1EEE9AC00](v142);
  v159 = &v121 - v42;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DB60, &qword_1C1E5A6A0);
  v144 = *(v145 - 8);
  v43 = *(v144 + 64);
  MEMORY[0x1EEE9AC00](v145);
  v143 = &v121 - v44;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DB68, &qword_1C1E5A6A8);
  v121 = *(v149 - 8);
  v45 = *(v121 + 64);
  MEMORY[0x1EEE9AC00](v149);
  v148 = &v121 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v147 = &v121 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v167 = &v121 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v166 = &v121 - v52;
  v53 = sub_1C1E526EC();
  v54 = *(v53 - 8);
  v55 = *(v54 + 64);
  v56 = MEMORY[0x1EEE9AC00](v53);
  v58 = &v121 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = *(v5 + 48);
  (*(v54 + 104))(v58, *MEMORY[0x1E697DBA8], v53, v56);
  v60 = v1;
  v61 = sub_1C1E526DC();
  (*(v54 + 8))(v58, v53);
  if (v61)
  {
    v62 = sub_1C1E535DC();
  }

  else
  {
    v62 = sub_1C1E5361C();
  }

  v168 = v62;
  v133 = v19;
  v165 = v32;
  sub_1C1E52C6C();
  v172 = 0;
  sub_1C1E5242C();

  v63 = v157;
  sub_1C1E525CC();
  if (qword_1EBF1C128 != -1)
  {
    swift_once();
  }

  v141 = qword_1EBF20D18;
  v172 = qword_1EBF20D18;

  v64 = v159;
  v65 = v160;
  v66 = MEMORY[0x1E69815C0];
  v67 = MEMORY[0x1E695B2B8];
  v68 = MEMORY[0x1E6981568];
  sub_1C1E523DC();
  v69 = *(KeyPath + 8);
  KeyPath += 8;
  v140 = v69;
  v69(v63, v65);
  sub_1C1E5276C();
  v172 = v65;
  v173 = v66;
  v174 = v67;
  v175 = v68;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v71 = v143;
  v72 = v142;
  v73 = OpaqueTypeConformance2;
  v135 = OpaqueTypeConformance2;
  sub_1C1E5240C();
  sub_1C1E4C708(v178);
  v74 = *(v170 + 8);
  v170 += 8;
  v139 = v74;
  v74(v64, v72);
  sub_1C1E524CC();
  v75 = sub_1C1E538BC();
  MEMORY[0x1EEE9AC00](v75);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DB70, &unk_1C1E5A6B0);
  v172 = v72;
  v173 = v73;
  v137 = swift_getOpaqueTypeConformance2();
  v136 = sub_1C1E4C764();
  v134 = v35;
  v76 = v145;
  sub_1C1E523BC();
  v77 = (v146 + 8);
  v146 = *(v146 + 8);
  (v146)(v35, v161);
  v171 = v60;
  v144 = *(v144 + 8);
  (v144)(v71, v76);
  sub_1C1E52C6C();
  v172 = 0;
  sub_1C1E5242C();

  v78 = v157;
  sub_1C1E525DC();
  v172 = v141;
  v79 = v159;
  v80 = v160;
  sub_1C1E523DC();

  v140(v78, v80);
  sub_1C1E5276C();
  sub_1C1E5240C();
  sub_1C1E4C708(v179);
  v139(v79, v72);
  v81 = v134;
  sub_1C1E524BC();
  v82 = sub_1C1E538FC();
  v83 = &v121;
  MEMORY[0x1EEE9AC00](v82);
  sub_1C1E523BC();
  (v146)(v81, v161);
  (v144)(v71, v76);
  v84 = v171;
  v85 = v171[8];
  if (v85 == 0.0)
  {
    __break(1u);
  }

  else
  {
    v2 = v85 * floor(*v171 / v85);
    v3 = v85 * ceil(v171[1] / v85);
    v172 = sub_1C1E4C3B0(v2, v3, v171[8]);
    sub_1C1E52C6C();
    swift_getKeyPath();
    sub_1C1E5250C();

    v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DB80, &qword_1C1E5A6D8);
    v170 = sub_1C1DC1124(&qword_1EBF1DB88, &qword_1EBF1DB80, &qword_1C1E5A6D8);
    v86 = v156;
    sub_1C1E525FC();
    sub_1C1E5276C();
    v71 = sub_1C1E4C7F0();
    v77 = v131;
    v79 = v133;
    sub_1C1E5240C();
    sub_1C1E4C708(v180);
    v83 = v164 + 1;
    KeyPath = v164[1];
    (KeyPath)(v86, v79);
    if (qword_1EBF1C130 == -1)
    {
      goto LABEL_8;
    }
  }

  swift_once();
LABEL_8:
  v87 = qword_1EBF20D20;
  v181 = qword_1EBF20D20;

  v172 = v79;
  v173 = v71;
  v88 = swift_getOpaqueTypeConformance2();
  v159 = v71;
  v89 = v132;
  v161 = v88;
  sub_1C1E523DC();
  v90 = v163 + 8;
  v160 = *(v163 + 8);
  result = (v160)(v77, v89);
  v92 = v84[9];
  if (v92 == 0.0)
  {
    __break(1u);
  }

  else
  {
    v93 = v92 * ceil(v84[3] / v92);
    v94 = v92 * floor(v84[2] / v92);
    v172 = sub_1C1E4C3B0(v94, v93, v84[9]);
    sub_1C1E52C6C();
    v163 = v90;
    v164 = v83;
    swift_getKeyPath();
    sub_1C1E5250C();

    v95 = v156;
    v158 = v78;
    sub_1C1E5260C();
    sub_1C1E5276C();
    sub_1C1E5240C();
    sub_1C1E4C708(&v181);
    (KeyPath)(v95, v79);
    v172 = v87;
    sub_1C1E523DC();

    (v160)(v77, v89);
    v172 = sub_1C1E4C3B0(v2, v3, v85);
    KeyPath = swift_getKeyPath();
    v96 = v124;
    sub_1C1E4C8A0(v171, v124, type metadata accessor for CenteredAxes);
    v97 = (*(v122 + 80) + 16) & ~*(v122 + 80);
    v98 = swift_allocObject();
    sub_1C1E4D6B4(v96, v98 + v97, type metadata accessor for CenteredAxes);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DBA8, &qword_1C1E5A6E8);
    sub_1C1E4C920();
    sub_1C1E537DC();
    v172 = sub_1C1E4C3B0(v94, v93, v92);
    swift_getKeyPath();
    sub_1C1E4C8A0(v171, v96, type metadata accessor for CenteredAxes);
    v99 = swift_allocObject();
    sub_1C1E4D6B4(v96, v99 + v97, type metadata accessor for CenteredAxes);
    sub_1C1E537DC();
    v100 = v121;
    v101 = *(v121 + 16);
    v102 = v147;
    v103 = v149;
    v101(v147, v166, v149);
    v172 = v102;
    v104 = v148;
    v101(v148, v167, v103);
    v173 = v104;
    v105 = v125;
    v106 = *(v125 + 16);
    v107 = v150;
    v108 = v126;
    v106(v150, v165, v126);
    v174 = v107;
    v109 = v151;
    v106(v151, v162, v108);
    v175 = v109;
    v110 = v129;
    v111 = *(v129 + 16);
    v112 = v154;
    v113 = v152;
    v114 = v130;
    v111(v154, v152, v130);
    v176 = v112;
    v115 = v127;
    v116 = v153;
    v111(v127, v153, v114);
    v177 = v115;
    sub_1C1E41618(&v172, v128);

    v117 = *(v110 + 8);
    v117(v116, v114);
    v117(v113, v114);
    v118 = *(v105 + 8);
    v118(v162, v108);
    v118(v165, v108);
    v119 = *(v100 + 8);
    v120 = v149;
    v119(v167, v149);
    v119(v166, v120);
    v117(v115, v114);
    v117(v154, v114);
    v118(v151, v108);
    v118(v150, v108);
    v119(v148, v120);
    return (v119)(v147, v120);
  }

  return result;
}

uint64_t sub_1C1E4A1B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = *(a1 + 48);
  v31 = *(a1 + 56);
  sub_1C1DC733C();

  v3 = sub_1C1E5316C();
  v5 = v4;
  v7 = v6;
  sub_1C1E530CC();
  v8 = sub_1C1E5311C();
  v10 = v9;
  v12 = v11;

  sub_1C1DECF2C(v3, v5, v7 & 1);

  sub_1C1E5358C();
  v13 = sub_1C1E530FC();
  v15 = v14;
  v17 = v16;
  sub_1C1DECF2C(v8, v10, v12 & 1);

  sub_1C1E5366C();
  v18 = sub_1C1E5312C();
  v20 = v19;
  LOBYTE(v10) = v21;
  v23 = v22;

  sub_1C1DECF2C(v13, v15, v17 & 1);

  v24 = sub_1C1E5305C();
  result = sub_1C1E5264C();
  *a2 = v18;
  *(a2 + 8) = v20;
  *(a2 + 16) = v10 & 1;
  *(a2 + 24) = v23;
  *(a2 + 32) = v24;
  *(a2 + 40) = v26;
  *(a2 + 48) = v27;
  *(a2 + 56) = v28;
  *(a2 + 64) = v29;
  *(a2 + 72) = 0;
  return result;
}

uint64_t sub_1C1E4A388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = *(a1 + 32);
  v31 = *(a1 + 40);
  sub_1C1DC733C();

  v3 = sub_1C1E5316C();
  v5 = v4;
  v7 = v6;
  sub_1C1E530CC();
  v8 = sub_1C1E5311C();
  v10 = v9;
  v12 = v11;

  sub_1C1DECF2C(v3, v5, v7 & 1);

  sub_1C1E5358C();
  v13 = sub_1C1E530FC();
  v15 = v14;
  v17 = v16;
  sub_1C1DECF2C(v8, v10, v12 & 1);

  sub_1C1E5366C();
  v18 = sub_1C1E5312C();
  v20 = v19;
  LOBYTE(v10) = v21;
  v23 = v22;

  sub_1C1DECF2C(v13, v15, v17 & 1);

  v24 = sub_1C1E52FFC();
  result = sub_1C1E5264C();
  *a2 = v18;
  *(a2 + 8) = v20;
  *(a2 + 16) = v10 & 1;
  *(a2 + 24) = v23;
  *(a2 + 32) = v24;
  *(a2 + 40) = v26;
  *(a2 + 48) = v27;
  *(a2 + 56) = v28;
  *(a2 + 64) = v29;
  *(a2 + 72) = 0;
  return result;
}

uint64_t sub_1C1E4A558@<X0>(double *a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v62 = a3;
  v5 = sub_1C1E5255C();
  v54 = *(v5 - 8);
  v55 = v5;
  v6 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C1E5257C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v53 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v52 = &v48 - v13;
  v14 = sub_1C1E5258C();
  v59 = *(v14 - 8);
  v60 = v14;
  v15 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v57 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1C1E524FC();
  v56 = *(v58 - 8);
  v17 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v61 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DB50, &qword_1C1E5A690);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DBD0, &qword_1C1E5A700);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = sub_1C1E5262C();
  v49 = *(v23 - 8);
  v24 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DBB8, &qword_1C1E5A6F0);
  v50 = *(v27 - 8);
  v51 = v27;
  v28 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v48 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DBD8, &qword_1C1E5A708);
  v32 = *(*(v31 - 8) + 64);
  v34 = MEMORY[0x1EEE9AC00](v31);
  v36 = &v48 - v35;
  v37 = *a1;
  if (*a1 == 0.0 || (v34.n128_u64[0] = *a2, *a2 > v37) || (v34.n128_u64[0] = a2[1], v37 > v34.n128_f64[0]) || (v34.n128_u64[0] = a2[2], v34.n128_f64[0] > 0.0) || (v34.n128_u64[0] = a2[3], v34.n128_f64[0] < 0.0))
  {
    v38 = *(v33 + 56);
    v39 = v62;

    return v38(v39, 1, 1, v31, v34);
  }

  else
  {
    v48 = v33;
    sub_1C1E52C6C();
    v63 = v37;
    sub_1C1E5242C();

    sub_1C1E52C6C();
    v63 = 0.0;
    sub_1C1E5242C();

    sub_1C1E5261C();
    sub_1C1E523FC();
    (*(v49 + 8))(v26, v23);
    sub_1C1E524AC();
    sub_1C1E5254C();
    sub_1C1E5256C();
    v41 = v55;
    v42 = *(v54 + 8);
    v42(v8, v55);
    sub_1C1E5254C();
    sub_1C1E5256C();
    v42(v8, v41);
    v43 = v57;
    v44 = sub_1C1E5253C();
    v55 = &v48;
    MEMORY[0x1EEE9AC00](v44);
    sub_1C1E538DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DB70, &unk_1C1E5A6B0);
    v63 = *&v23;
    v64 = MEMORY[0x1E695B2E0];
    swift_getOpaqueTypeConformance2();
    sub_1C1E4C764();
    v45 = v51;
    v46 = v61;
    sub_1C1E523AC();
    (*(v59 + 8))(v43, v60);
    (*(v56 + 8))(v46, v58);
    (*(v50 + 8))(v30, v45);
    v47 = v62;
    (*(v48 + 32))(v62, v36, v31);
    return (*(v48 + 56))(v47, 0, 1, v31);
  }
}

uint64_t sub_1C1E4AD20@<X0>(double *a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v62 = a3;
  v5 = sub_1C1E5255C();
  v54 = *(v5 - 8);
  v55 = v5;
  v6 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C1E5257C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v53 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v52 = &v48 - v13;
  v14 = sub_1C1E5258C();
  v59 = *(v14 - 8);
  v60 = v14;
  v15 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v57 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1C1E524FC();
  v56 = *(v58 - 8);
  v17 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v61 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DBD0, &qword_1C1E5A700);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DB50, &qword_1C1E5A690);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = sub_1C1E5262C();
  v49 = *(v23 - 8);
  v24 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DBB8, &qword_1C1E5A6F0);
  v50 = *(v27 - 8);
  v51 = v27;
  v28 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v48 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DBD8, &qword_1C1E5A708);
  v32 = *(*(v31 - 8) + 64);
  v34 = MEMORY[0x1EEE9AC00](v31);
  v36 = &v48 - v35;
  v37 = *a1;
  if (*a1 == 0.0 || (v34.n128_u64[0] = a2[2], v34.n128_f64[0] > v37) || (v34.n128_u64[0] = a2[3], v37 > v34.n128_f64[0]) || (v34.n128_u64[0] = *a2, *a2 > 0.0) || (v34.n128_u64[0] = a2[1], v34.n128_f64[0] < 0.0))
  {
    v38 = *(v33 + 56);
    v39 = v62;

    return v38(v39, 1, 1, v31, v34);
  }

  else
  {
    v48 = v33;
    sub_1C1E52C6C();
    v63 = 0.0;
    sub_1C1E5242C();

    sub_1C1E52C6C();
    v63 = v37;
    sub_1C1E5242C();

    sub_1C1E5261C();
    sub_1C1E523FC();
    (*(v49 + 8))(v26, v23);
    sub_1C1E524DC();
    sub_1C1E5254C();
    sub_1C1E5256C();
    v41 = v55;
    v42 = *(v54 + 8);
    v42(v8, v55);
    sub_1C1E5254C();
    sub_1C1E5256C();
    v42(v8, v41);
    v43 = v57;
    v44 = sub_1C1E5253C();
    v55 = &v48;
    MEMORY[0x1EEE9AC00](v44);
    sub_1C1E538DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DB70, &unk_1C1E5A6B0);
    v63 = *&v23;
    v64 = MEMORY[0x1E695B2E0];
    swift_getOpaqueTypeConformance2();
    sub_1C1E4C764();
    v45 = v51;
    v46 = v61;
    sub_1C1E523AC();
    (*(v59 + 8))(v43, v60);
    (*(v56 + 8))(v46, v58);
    (*(v50 + 8))(v30, v45);
    v47 = v62;
    (*(v48 + 32))(v62, v36, v31);
    return (*(v48 + 56))(v47, 0, 1, v31);
  }
}

uint64_t sub_1C1E4B4E8@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_1C1E5207C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DBE0, &unk_1C1E5A710);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C1E5201C();
  sub_1C1E4CC8C();
  sub_1C1E51EAC();
  sub_1C1DC1124(&qword_1EBF1DBF0, &qword_1EBF1DBE0, &unk_1C1E5A710);
  v7 = sub_1C1E5313C();
  v9 = v8;
  v11 = v10;
  sub_1C1E530CC();
  v12 = sub_1C1E5311C();
  v14 = v13;
  v16 = v15;

  sub_1C1DECF2C(v7, v9, v11 & 1);

  sub_1C1E5358C();
  v17 = sub_1C1E530FC();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_1C1DECF2C(v12, v14, v16 & 1);

  v25 = a1(v24);
  result = sub_1C1E5264C();
  *a2 = v17;
  *(a2 + 8) = v19;
  *(a2 + 16) = v21 & 1;
  *(a2 + 24) = v23;
  *(a2 + 32) = v25;
  *(a2 + 40) = v27;
  *(a2 + 48) = v28;
  *(a2 + 56) = v29;
  *(a2 + 64) = v30;
  *(a2 + 72) = 0;
  return result;
}

void sub_1C1E4B77C()
{
  v0 = sub_1C1E5207C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  sub_1C1E5203C();
  v6 = sub_1C1E5200C();
  (*(v1 + 8))(v4, v0);
  [v5 setLocale_];

  qword_1EBF1D870 = v5;
}

uint64_t sub_1C1E4B888(uint64_t a1)
{
  sub_1C1DC0D28(0, &qword_1EBF1DB08, 0x1E6959550);
  sub_1C1DC0D28(0, &qword_1EBF1DB10, 0x1E69595F0);
  sub_1C1E24AC8();
  sub_1C1E24AC8();
  sub_1C1E24AC8();
  v3 = v2;
  sub_1C1E24AC8();
  sub_1C1E4C3B0(v3, v4, 1.0);
  sub_1C1E5498C();
  sub_1C1E24CD4();
  sub_1C1E24CD4();
  sub_1C1E24CD4();
  v6 = v5;
  sub_1C1E24CD4();
  sub_1C1E4C3B0(v6, v7, 1.0);
  sub_1C1E5498C();
  sub_1C1E4BB10(a1);
  return sub_1C1E5492C();
}

uint64_t sub_1C1E4B9FC(double a1)
{
  if (qword_1EBF1C168 != -1)
  {
    swift_once();
  }

  v2 = qword_1EBF1D870;
  v3 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  v4 = v2;
  v5 = [v3 initWithDouble_];
  v6 = [v4 stringFromNumber_];

  if (v6)
  {
    v7 = sub_1C1E545FC();
  }

  else
  {
    sub_1C1E5489C();
    return 0;
  }

  return v7;
}

uint64_t sub_1C1E4BB10(uint64_t a1)
{
  v2 = type metadata accessor for Function();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  *&v5 = MEMORY[0x1EEE9AC00](v2 - 8).n128_u64[0];
  v7 = (&v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel_functionLock);
  [v8 lock];
  swift_getKeyPath();
  v31 = a1;
  sub_1C1E4D7A4(&qword_1EDE74850, type metadata accessor for GraphViewModel);
  sub_1C1E520BC();

  v9 = *(a1 + OBJC_IVAR____TtC11CalculateUI14GraphViewModel___functions);

  [v8 unlock];
  v10 = *(v9 + 16);
  if (v10)
  {
    v31 = MEMORY[0x1E69E7CC0];
    sub_1C1E54BCC();
    v11 = v9 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);
    v29 = v9;
    v30 = v12;
    while (1)
    {
      sub_1C1E4C8A0(v11, v7, type metadata accessor for Function);
      v14 = *v7;
      v13 = v7[1];
      sub_1C1E24AC8();
      v16 = v15;
      sub_1C1E24AC8();
      v18 = v17;
      sub_1C1E24AC8();
      v20 = v19;
      result = sub_1C1E24AC8();
      v23 = (v20 - v22) / 100.0;
      if (v23 == 0.0)
      {
        break;
      }

      v24 = sub_1C1E4C3B0(v16, v18, v23);
      MEMORY[0x1EEE9AC00](v24);
      *(&v29 - 2) = v7;
      sub_1C1E3A7DC(sub_1C1E4C674, (&v29 - 4), v24);

      v25 = objc_allocWithZone(MEMORY[0x1E6959570]);
      v26 = sub_1C1E545BC();
      sub_1C1DC0D28(0, &qword_1EBF1DB18, 0x1E6959568);
      v27 = sub_1C1E547DC();

      [v25 initWithName:v26 isContinuous:1 dataPoints:{v27, v29}];

      sub_1C1E4E154(v7, type metadata accessor for Function);
      sub_1C1E54BAC();
      v28 = *(v31 + 16);
      sub_1C1E54BDC();
      sub_1C1E54BEC();
      sub_1C1E54BBC();
      v11 += v30;
      if (!--v10)
      {

        return v31;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1C1E4BE70@<X0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  sub_1C1DC0D28(0, &qword_1EBF1DB18, 0x1E6959568);
  v6 = *(a2 + 64);
  v7 = *(a2 + 72);
  v6(v5);
  result = sub_1C1E548EC();
  *a3 = result;
  return result;
}

uint64_t sub_1C1E4BF34(uint64_t a1)
{
  v2 = sub_1C1E526FC();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1, v4);
  return MEMORY[0x1C690E630](v6);
}

uint64_t sub_1C1E4BFFC@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x1C690E6D0]();
  *a1 = result;
  return result;
}

uint64_t sub_1C1E4C028(uint64_t *a1)
{
  v1 = *a1;

  return MEMORY[0x1C690E6E0](v2);
}

void sub_1C1E4C054(uint64_t a1)
{
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CE58, &qword_1C1E579A8);
  v2 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v43);
  v42 = (&v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v38 - v6;
  v8 = MEMORY[0x1E69E7CC0];
  v41 = *(a1 + 16);
  if (v41)
  {
    v44 = v5;
    v9 = *(v5 + 80);
    v38 = v9;
    v39 = (v9 + 32) & ~v9;
    v10 = MEMORY[0x1E69E7CC0] + v39;
    v11 = 0;
    v12 = 0;
    v13 = *(type metadata accessor for Function() - 8);
    v14 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v40 = *(v13 + 72);
    v15 = v8;
    while (1)
    {
      v16 = v42;
      v17 = *(v43 + 48);
      *v42 = v11;
      sub_1C1E4C8A0(v14, v16 + v17, type metadata accessor for Function);
      v18 = v7;
      sub_1C1DC18D0(v16, v7, &qword_1EBF1CE58, &qword_1C1E579A8);
      if (v12)
      {
        v45 = v15;
      }

      else
      {
        v19 = v15[3];
        if (((v19 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_34;
        }

        v20 = v19 & 0xFFFFFFFFFFFFFFFELL;
        if (v20 <= 1)
        {
          v21 = 1;
        }

        else
        {
          v21 = v20;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DBF8, &unk_1C1E5A720);
        v22 = *(v44 + 72);
        v23 = v39;
        v45 = swift_allocObject();
        v24 = _swift_stdlib_malloc_size(v45);
        if (!v22)
        {
          goto LABEL_35;
        }

        v25 = v24 - v23;
        if (v24 - v23 == 0x8000000000000000 && v22 == -1)
        {
          goto LABEL_36;
        }

        v27 = v25 / v22;
        v28 = v45;
        *(v45 + 2) = v21;
        v28[3] = 2 * (v25 / v22);
        v29 = v28 + v23;
        v30 = v15[3] >> 1;
        v31 = v30 * v22;
        if (v15[2])
        {
          if (v28 < v15 || v29 >= v15 + v39 + v31)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v28 != v15)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v15[2] = 0;
        }

        v10 = &v29[v31];
        v12 = (v27 & 0x7FFFFFFFFFFFFFFFLL) - v30;
      }

      v33 = v44;
      v7 = v18;
      v34 = __OFSUB__(v12--, 1);
      if (v34)
      {
        break;
      }

      ++v11;
      sub_1C1DC18D0(v18, v10, &qword_1EBF1CE58, &qword_1C1E579A8);
      v10 += *(v33 + 72);
      v14 += v40;
      v8 = v45;
      v15 = v45;
      if (v41 == v11)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v12 = 0;
LABEL_29:
  v35 = v8[3];
  if (v35 >= 2)
  {
    v36 = v35 >> 1;
    v34 = __OFSUB__(v36, v12);
    v37 = v36 - v12;
    if (v34)
    {
LABEL_37:
      __break(1u);
      return;
    }

    v8[2] = v37;
  }
}

uint64_t sub_1C1E4C3B0(double a1, double a2, double a3)
{
  v6 = sub_1C1E4C694(a1, a2, a3);
  v7 = v6;
  if (v6)
  {
    if (v6 <= 0)
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DB20, &qword_1C1E5A660);
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
    i = a1;
    while (1)
    {
      v18 = i;
      v19 = i <= a2;
      if (a3 > 0.0)
      {
        v19 = i >= a2;
      }

      if (v19)
      {
        if (v15 & 1 | (i != a2))
        {
          goto LABEL_50;
        }

        v15 = 1;
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

      *v13++ = v18;
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

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DB20, &qword_1C1E5A660);
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

uint64_t sub_1C1E4C694(double a1, double a2, double a3)
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

unint64_t sub_1C1E4C764()
{
  result = qword_1EBF1DB78;
  if (!qword_1EBF1DB78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1DB70, &unk_1C1E5A6B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1DB78);
  }

  return result;
}

unint64_t sub_1C1E4C7F0()
{
  result = qword_1EBF1DB90;
  if (!qword_1EBF1DB90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1DB38, &qword_1C1E5A678);
    sub_1C1DC1124(&qword_1EBF1DB98, &qword_1EBF1DBA0, &qword_1C1E5A6E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1DB90);
  }

  return result;
}

uint64_t sub_1C1E4C8A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1C1E4C920()
{
  result = qword_1EBF1DBB0;
  if (!qword_1EBF1DBB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1DBA8, &qword_1C1E5A6E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1DBB8, &qword_1C1E5A6F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1DB70, &unk_1C1E5A6B0);
    sub_1C1E5262C();
    swift_getOpaqueTypeConformance2();
    sub_1C1E4C764();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1DBB0);
  }

  return result;
}

uint64_t objectdestroy_39Tm()
{
  v1 = (type metadata accessor for CenteredAxes() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3 + 40);

  v6 = *(v0 + v3 + 56);

  v7 = v1[12];
  v8 = sub_1C1E526EC();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1C1E4CB44(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for CenteredAxes() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_1C1E4CBD8()
{
  result = qword_1EBF1DBC8;
  if (!qword_1EBF1DBC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1DB28, &qword_1C1E5A668);
    sub_1C1E4C920();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1DBC8);
  }

  return result;
}

unint64_t sub_1C1E4CC8C()
{
  result = qword_1EBF1DBE8;
  if (!qword_1EBF1DBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1DBE8);
  }

  return result;
}

unint64_t sub_1C1E4CD28()
{
  result = qword_1EBF1DC10;
  if (!qword_1EBF1DC10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1DC08, &qword_1C1E5A740);
    type metadata accessor for CenteredAxes();
    sub_1C1E4D7A4(&qword_1EBF1DC18, type metadata accessor for CenteredAxes);
    swift_getOpaqueTypeConformance2();
    sub_1C1E4CE1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1DC10);
  }

  return result;
}

unint64_t sub_1C1E4CE1C()
{
  result = qword_1EBF1DC20;
  if (!qword_1EBF1DC20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1DC28, &qword_1C1E5A748);
    sub_1C1E4CEA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1DC20);
  }

  return result;
}

unint64_t sub_1C1E4CEA0()
{
  result = qword_1EBF1DC30;
  if (!qword_1EBF1DC30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1DC38, &qword_1C1E5A750);
    sub_1C1E4CF24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1DC30);
  }

  return result;
}

unint64_t sub_1C1E4CF24()
{
  result = qword_1EBF1DC40;
  if (!qword_1EBF1DC40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1DC48, &qword_1C1E5A758);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1DC50, &qword_1C1E5A760);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1DC58, &qword_1C1E5A768);
    sub_1C1E4D0B4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1DC68, &qword_1C1E5A770);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1DC40);
  }

  return result;
}

unint64_t sub_1C1E4D0B4()
{
  result = qword_1EBF1DC60;
  if (!qword_1EBF1DC60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1DC58, &qword_1C1E5A768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1DC60);
  }

  return result;
}

uint64_t sub_1C1E4D1CC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(type metadata accessor for GraphView() - 8);
  v7 = v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  return a2(a1, v7, v4, v5);
}

uint64_t sub_1C1E4D288(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C1E4D31C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = **(v0 + 32);
  v4 = type metadata accessor for GraphView();
  v5 = sub_1C1E3AC24(v4);
  return sub_1C1E1F060(v5 & 1);
}

uint64_t sub_1C1E4D384()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(*(type metadata accessor for GraphView() - 8) + 80);
  return sub_1C1E47C58();
}

uint64_t sub_1C1E4D584()
{
  v1 = **(v0 + 32);
  v2 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_currentZoom;
  swift_beginAccess();
  *(v1 + v2) = *(v1 + v2) + *(v1 + v2);
  return sub_1C1E1A2C0();
}

uint64_t sub_1C1E4D5F0()
{
  v1 = **(v0 + 32);
  v2 = OBJC_IVAR____TtC11CalculateUI14GraphViewModel_currentZoom;
  swift_beginAccess();
  *(v1 + v2) = *(v1 + v2) * 0.5;
  return sub_1C1E1A2C0();
}

unint64_t sub_1C1E4D660()
{
  result = qword_1EBF1DC98;
  if (!qword_1EBF1DC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1DC98);
  }

  return result;
}

uint64_t sub_1C1E4D6B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C1E4D71C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = *(type metadata accessor for Function() - 8);
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1 + ((*(v5 + 80) + 48) & ~*(v5 + 80));

  return sub_1C1E45F9C(v6, v7, v8, v3, v4, a1);
}

uint64_t sub_1C1E4D7A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C1E4D834@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, _OWORD *a3@<X8>)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = *(type metadata accessor for GraphView() - 8);
  return sub_1C1E44BD8(a1, (v3 + ((*(v9 + 80) + 32) & ~*(v9 + 80))), a2, a3);
}

uint64_t sub_1C1E4D8E4(double *a1, uint64_t (*a2)(uint64_t, double, double, double, double))
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for GraphView() - 8);
  return sub_1C1E44E58(a1, v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v5, v6, a2);
}

uint64_t sub_1C1E4D990()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for GraphView() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_1C1E522DC() - 8);
  v7 = v0 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_1C1E42648();
}

uint64_t sub_1C1E4DA90(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(type metadata accessor for GraphView() - 8);
  v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a1(v5, v2, v3);
}

uint64_t objectdestroyTm_3()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for GraphView();
  v4 = *(*(v3 - 1) + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(*(v3 - 1) + 64);
  v7 = v0 + v5;
  v8 = *(v0 + v5);

  if (*(v0 + v5 + 8))
  {
    v9 = *(v7 + 16);
  }

  v10 = v3[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C770, &qword_1C1E57A30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1C1E526EC();
    (*(*(v11 - 8) + 8))(v7 + v10, v11);
  }

  else
  {
    v12 = *(v7 + v10);
  }

  sub_1C1DDEC6C(*(v7 + v3[11]), *(v7 + v3[11] + 8));
  sub_1C1DDEC6C(*(v7 + v3[12]), *(v7 + v3[12] + 8));
  v13 = *(v7 + v3[13] + 16);

  v14 = *(v7 + v3[14] + 16);

  v15 = *(v7 + v3[15] + 8);

  v16 = (v7 + v3[16]);
  v17 = *v16;

  v18 = v16[1];

  v19 = (v7 + v3[17]);
  v20 = type metadata accessor for Function();
  if (!(*(*(v20 - 1) + 48))(v19, 1, v20))
  {
    v21 = *(v19 + 1);

    v22 = *(v19 + 3);

    v23 = *(v19 + 5);

    v24 = *(v19 + 7);

    v25 = *(v19 + 9);

    if (*(v19 + 10))
    {
      v26 = *(v19 + 11);
    }

    v27 = *(v19 + 12);

    v28 = *(v19 + 13);

    v29 = v20[12];
    v30 = sub_1C1E51F9C();
    (*(*(v30 - 8) + 8))(&v19[v29], v30);
    v31 = *&v19[v20[13]];

    v32 = v20[14];
    v33 = sub_1C1E51F5C();
    (*(*(v33 - 8) + 8))(&v19[v32], v33);
  }

  v34 = *&v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DA08, &qword_1C1E5A480) + 28)];

  v35 = *(v7 + v3[18] + 24);

  v36 = *(v7 + v3[19] + 24);

  v37 = *(v7 + v3[20] + 32);

  v38 = *(v7 + v3[21] + 16);

  v39 = *(v7 + v3[22] + 16);

  v40 = *(v7 + v3[23] + 32);

  v41 = *(v7 + v3[24] + 32);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v6, v4 | 7);
}

uint64_t sub_1C1E4DED0(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = type metadata accessor for GraphView();
  v6 = *a1;
  v7 = a1[1];
  v8 = v1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80));
  return sub_1C1E3B414(v5);
}

uint64_t sub_1C1E4E154(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C1E4E1B4@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for GraphView() - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D368, &qword_1C1E5AA30) - 8);
  v11 = v2 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80));

  return sub_1C1E40C7C(a1, (v2 + v8), v11, v5, v6, a2);
}

unint64_t sub_1C1E4E2C8()
{
  result = qword_1EBF1DD68;
  if (!qword_1EBF1DD68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1DD70, &qword_1C1E5AA88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1DB60, &qword_1C1E5A6A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1DB70, &unk_1C1E5A6B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1DB58, &qword_1C1E5A698);
    sub_1C1E525EC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1C1E4C764();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1DB40, &qword_1C1E5A680);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1DB38, &qword_1C1E5A678);
    sub_1C1E4C7F0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1C1E4CBD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1DD68);
  }

  return result;
}

uint64_t sub_1C1E4E564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_1C1E54D7C();
  sub_1C1E5468C();
  v7 = sub_1C1E54DAC();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_1C1E54D2C() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

id sub_1C1E4E66C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
  result = [v5 setCountLimit_];
  *a3 = v5;
  return result;
}

uint64_t CalculateExpression.CalculatorButton.hashValue.getter()
{
  v1 = *v0;
  sub_1C1E54D7C();
  MEMORY[0x1C6910960](v1);
  return sub_1C1E54DAC();
}

uint64_t sub_1C1E4E750()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D4D8, &qword_1C1E5AB70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1E5AAD0;
  sub_1C1E5432C();
  *(inited + 32) = sub_1C1E5405C();
  *(inited + 40) = sub_1C1E540AC();
  v1 = sub_1C1DC1588(inited);
  swift_setDeallocating();
  v2 = *(inited + 16);
  result = swift_arrayDestroy();
  qword_1EBF1DD78 = v1;
  return result;
}

void sub_1C1E4E7FC(void *a1)
{
  v3 = sub_1C1E5210C();
  v2 = [a1 length];
  if (__OFSUB__(v2, 1))
  {
    __break(1u);
  }

  else
  {
    [a1 addAttribute:*MEMORY[0x1E69DB660] value:v3 range:{v2 - 1, 1}];
  }
}

uint64_t sub_1C1E4E880(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, unint64_t), double a4, double a5, double a6, uint64_t a7, void *a8)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DE38, &qword_1C1E5AE28);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1E55C40;
  v16 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v17 = sub_1C1DC0D28(0, &qword_1EDE737B8, 0x1E69DB878);
  *(inited + 40) = a8;
  v18 = *MEMORY[0x1E69DB610];
  *(inited + 64) = v17;
  *(inited + 72) = v18;
  *(inited + 104) = MEMORY[0x1E69E7DE0];
  *(inited + 80) = a5 + a6 + a4;
  v19 = v16;
  v20 = a8;
  v21 = v18;
  v22 = sub_1C1DC7850(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CFF0, &qword_1C1E5AE30);
  swift_arrayDestroy();
  a3(a1, a2, v22);
}

uint64_t sub_1C1E4E9D8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, unint64_t), double a4, double a5, uint64_t a6, void *a7)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DE38, &qword_1C1E5AE28);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1E55C40;
  v14 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v15 = sub_1C1DC0D28(0, &qword_1EDE737B8, 0x1E69DB878);
  *(inited + 40) = a7;
  v16 = *MEMORY[0x1E69DB610];
  *(inited + 64) = v15;
  *(inited + 72) = v16;
  *(inited + 104) = MEMORY[0x1E69E7DE0];
  *(inited + 80) = a4 + a5;
  v17 = v14;
  v18 = a7;
  v19 = v16;
  v20 = sub_1C1DC7850(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CFF0, &qword_1C1E5AE30);
  swift_arrayDestroy();
  a3(a1, a2, v20);
}

uint64_t CalculateExpression.caption(for:fontSize:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v5 = *a1;
  v6 = sub_1C1DF7D84(&unk_1F4187150);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DD80, &qword_1C1E5AB20);
  swift_arrayDestroy();
  v7 = sub_1C1E53BFC();
  v8 = sub_1C1E53DAC();
  if (v6[2] && (v9 = sub_1C1E33D2C(v5), (v10 & 1) != 0))
  {
    v11 = (v6[7] + 16 * v9);
    v12 = *v11;
    v13 = v11[1];
  }

  else
  {
    v12 = 0;
    v13 = 0xE000000000000000;
  }

  v14 = 0.8;
  if ((v8 & v7 & (v5 < 3u)) == 0)
  {
    v14 = 1.0;
  }

  memset(v16, 0, sizeof(v16));
  v17 = 1;
  sub_1C1DC50CC(v12, v13, 0.0, 1, v16, 0, v7 & 1, 0, a2, v14 * a3, 1u, 1u);
}

uint64_t sub_1C1E4ECB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C1E51E6C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = *(v5 + 16);
  v49(v9, a1, v4, v7);
  v10 = sub_1C1E5315C();
  v57 = v11;
  v58 = v10;
  v13 = v12;
  v51 = v14;
  v59 = sub_1C1E5301C();
  v15 = _s13LabelFractionVMa(0);
  v16 = *(a1 + *(v15 + 24));
  sub_1C1E5264C();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = v13 & 1;
  LOBYTE(v80) = v13 & 1;
  v56 = v13 & 1;
  LOBYTE(v95[0]) = 0;
  sub_1C1E538DC();
  sub_1C1E5281C();
  v50 = v67;
  v54 = v68;
  v55 = v66;
  v26 = v69;
  v52 = v71;
  v53 = v70;
  (v49)(v9, a1 + *(v15 + 20), v4);
  v27 = sub_1C1E5315C();
  v29 = v28;
  LOBYTE(v15) = v30;
  v32 = v31;
  LOBYTE(v5) = sub_1C1E5301C();
  sub_1C1E5264C();
  LOBYTE(v95[0]) = 0;
  *&v72 = v58;
  *(&v72 + 1) = v57;
  LOBYTE(v73) = v25;
  *(&v73 + 1) = *v65;
  DWORD1(v73) = *&v65[3];
  v33 = v51;
  *(&v73 + 1) = v51;
  LOBYTE(v74) = v59;
  DWORD1(v74) = *&v64[3];
  *(&v74 + 1) = *v64;
  *(&v74 + 1) = v18;
  *&v75[0] = v20;
  *(&v75[0] + 1) = v22;
  *&v75[1] = v24;
  BYTE8(v75[1]) = 0;
  *(v83 + 9) = *(v75 + 9);
  v82 = v74;
  v83[0] = v75[0];
  v80 = v72;
  v81 = v73;
  v61 = v50;
  v60 = v26;
  *&v76 = v27;
  *(&v76 + 1) = v29;
  LOBYTE(v77) = v15 & 1;
  DWORD1(v77) = *&v63[3];
  v34 = *v63;
  *(&v77 + 1) = *v63;
  *(&v77 + 1) = v32;
  LOBYTE(v78) = v5;
  DWORD1(v78) = *&v62[3];
  v35 = *v62;
  *(&v78 + 1) = *v62;
  *(&v78 + 1) = v36;
  *&v79[0] = v37;
  *(&v79[0] + 1) = v38;
  *&v79[1] = v39;
  BYTE8(v79[1]) = 0;
  v40 = v50;
  v41 = v72;
  v42 = v73;
  v43 = v83[1];
  *(a2 + 48) = v75[0];
  *(a2 + 64) = v43;
  v44 = v82;
  *(a2 + 16) = v42;
  *(a2 + 32) = v44;
  *a2 = v41;
  *(a2 + 80) = v55;
  *(a2 + 88) = v40;
  *(a2 + 96) = v54;
  *(a2 + 104) = v26;
  *(a2 + 112) = v53;
  *(a2 + 120) = v52;
  v45 = v76;
  v46 = v77;
  *(a2 + 185) = *(v79 + 9);
  v47 = v79[0];
  *(a2 + 160) = v78;
  *(a2 + 176) = v47;
  *(a2 + 128) = v45;
  *(a2 + 144) = v46;
  v84[0] = v27;
  v84[1] = v29;
  v85 = v15 & 1;
  *&v86[3] = *&v63[3];
  *v86 = v34;
  v87 = v32;
  v88 = v5;
  *&v89[3] = *&v62[3];
  *v89 = v35;
  v90 = v36;
  v91 = v37;
  v92 = v38;
  v93 = v39;
  v94 = 0;
  sub_1C1DC1424(&v72, v95, &qword_1EBF1DB70, &unk_1C1E5A6B0);
  sub_1C1DC1424(&v76, v95, &qword_1EBF1DB70, &unk_1C1E5A6B0);
  sub_1C1DC1870(v84, &qword_1EBF1DB70, &unk_1C1E5A6B0);
  v95[0] = v58;
  v95[1] = v57;
  v96 = v56;
  *v97 = *v65;
  *&v97[3] = *&v65[3];
  v98 = v33;
  v99 = v59;
  *v100 = *v64;
  *&v100[3] = *&v64[3];
  v101 = v18;
  v102 = v20;
  v103 = v22;
  v104 = v24;
  v105 = 0;
  return sub_1C1DC1870(v95, &qword_1EBF1DB70, &unk_1C1E5A6B0);
}

double sub_1C1E4F0C8@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1C1E52C9C();
  v27 = 0;
  sub_1C1E4ECB0(v2, &v14);
  v38 = v24;
  v39[0] = v25[0];
  *(v39 + 9) = *(v25 + 9);
  v34 = v20;
  v35 = v21;
  v36 = v22;
  v37 = v23;
  v30 = v16;
  v31 = v17;
  v32 = v18;
  v33 = v19;
  v28 = v14;
  v29 = v15;
  v40[9] = v23;
  v40[10] = v24;
  v41[0] = v25[0];
  *(v41 + 9) = *(v25 + 9);
  v40[6] = v20;
  v40[7] = v21;
  v40[8] = v22;
  v40[2] = v16;
  v40[3] = v17;
  v40[4] = v18;
  v40[5] = v19;
  v40[0] = v14;
  v40[1] = v15;
  sub_1C1DC1424(&v28, &v13, &qword_1EBF1DE00, &qword_1C1E5AD50);
  sub_1C1DC1870(v40, &qword_1EBF1DE00, &qword_1C1E5AD50);
  *(&v26[9] + 7) = v37;
  *(&v26[10] + 7) = v38;
  *(&v26[11] + 7) = v39[0];
  v26[12] = *(v39 + 9);
  *(&v26[5] + 7) = v33;
  *(&v26[6] + 7) = v34;
  *(&v26[7] + 7) = v35;
  *(&v26[8] + 7) = v36;
  *(&v26[1] + 7) = v29;
  *(&v26[2] + 7) = v30;
  *(&v26[3] + 7) = v31;
  *(&v26[4] + 7) = v32;
  *(v26 + 7) = v28;
  v5 = v26[8];
  *(a1 + 161) = v26[9];
  v6 = v26[11];
  *(a1 + 177) = v26[10];
  *(a1 + 193) = v6;
  *(a1 + 209) = v26[12];
  v7 = v26[4];
  *(a1 + 97) = v26[5];
  v8 = v26[7];
  *(a1 + 113) = v26[6];
  *(a1 + 129) = v8;
  *(a1 + 145) = v5;
  v9 = v26[0];
  *(a1 + 33) = v26[1];
  result = *&v26[2];
  v11 = v26[3];
  *(a1 + 49) = v26[2];
  *(a1 + 65) = v11;
  *(a1 + 81) = v7;
  v12 = v27;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v12;
  *(a1 + 17) = v9;
  return result;
}

__n128 sub_1C1E4F350@<Q0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1CA78, &qword_1C1E57440);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v35 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DE08, &qword_1C1E5AD58);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = (&v35 - v9);
  v11 = *v1;
  v12 = *(v1 + 1);

  v36.n128_u64[0] = sub_1C1E536AC();
  v13 = *(v1 + 2);
  v14 = sub_1C1E5307C();
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  v15 = sub_1C1E530AC();
  sub_1C1DC1870(v5, &qword_1EBF1CA78, &qword_1C1E57440);
  KeyPath = swift_getKeyPath();
  v17 = swift_getKeyPath();
  v18 = _s11LabelSymbolVMa(0);
  v19 = v18[6];
  v20 = (v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DE10, &unk_1C1E5ADC0) + 36));
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1C248, &unk_1C1E5A430) + 28);
  v22 = sub_1C1E5296C();
  (*(*(v22 - 8) + 16))(v20 + v21, &v1[v19], v22);
  *v20 = v17;
  *v10 = v36.n128_u64[0];
  v10[1] = KeyPath;
  v10[2] = v15;
  v23 = swift_getKeyPath();
  v24 = v18[7];
  v25 = (v10 + *(v7 + 44));
  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DE18, &qword_1C1E5AE00) + 28);
  v27 = sub_1C1E5207C();
  (*(*(v27 - 8) + 16))(v25 + v26, &v1[v24], v27);
  *v25 = v23;
  v28 = &v1[v18[8]];
  v29 = 0uLL;
  v30 = 0uLL;
  if ((v28[32] & 1) == 0)
  {
    v29 = *v28;
    v30 = *(v28 + 1);
  }

  v35 = v30;
  v36 = v29;
  v31 = sub_1C1E5300C();
  v32 = v37;
  sub_1C1E51684(v10, v37);
  v33 = v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DE20, &qword_1C1E5AE08) + 36);
  *v33 = v31;
  result = v36;
  *(v33 + 24) = v35;
  *(v33 + 8) = result;
  *(v33 + 40) = 0;
  return result;
}

uint64_t sub_1C1E4F658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t CalculateExpression.label(for:fontSize:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = sub_1C1E51E6C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  CalculateExpression.caption(for:fontSize:)(&v18, v10, a3);
  (*(v7 + 32))(a2, v10, v6);
  (*(v7 + 56))(a2, 0, 1, v6);
  v11 = type metadata accessor for CalculateExpression.Label(0);
  v12 = *(v11 + 20);
  v13 = _s11LabelSymbolVMa(0);
  (*(*(v13 - 8) + 56))(a2 + v12, 1, 1, v13);
  v14 = *(v11 + 24);
  v15 = _s13LabelFractionVMa(0);
  return (*(*(v15 - 8) + 56))(a2 + v14, 1, 1, v15);
}

uint64_t sub_1C1E4F8D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DDC0, &qword_1C1E5AB60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1E5AB00;
  sub_1C1E5432C();
  *(inited + 32) = sub_1C1E53FDC();
  *(inited + 40) = 1937075312;
  *(inited + 48) = 0xE400000000000000;
  *(inited + 56) = sub_1C1E542EC();
  *(inited + 64) = 0x73756E696DLL;
  *(inited + 72) = 0xE500000000000000;
  *(inited + 80) = sub_1C1E542DC();
  *(inited + 88) = 0x796C7069746C756DLL;
  *(inited + 96) = 0xE800000000000000;
  *(inited + 104) = sub_1C1E541EC();
  *(inited + 112) = 0x656469766964;
  *(inited + 120) = 0xE600000000000000;
  *(inited + 128) = sub_1C1E541FC();
  *(inited + 136) = 0x6C61757165;
  *(inited + 144) = 0xE500000000000000;
  *(inited + 152) = sub_1C1E5420C();
  *(inited + 160) = 0xD000000000000017;
  *(inited + 168) = 0x80000001C1E5CA40;
  *(inited + 176) = sub_1C1E5427C();
  *(inited + 184) = 0x746E6563726570;
  *(inited + 192) = 0xE700000000000000;
  v1 = sub_1C1DC4BBC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DDC8, &qword_1C1E5AB68);
  result = swift_arrayDestroy();
  off_1EDE73980 = v1;
  return result;
}

uint64_t sub_1C1E4FA50()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D4D8, &qword_1C1E5AB70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1E5AB10;
  sub_1C1E5432C();
  *(inited + 32) = sub_1C1E540EC();
  *(inited + 40) = sub_1C1E540FC();
  *(inited + 48) = sub_1C1E5410C();
  *(inited + 56) = sub_1C1E5411C();
  *(inited + 64) = sub_1C1E5412C();
  *(inited + 72) = sub_1C1E5413C();
  *(inited + 80) = sub_1C1E5414C();
  *(inited + 88) = sub_1C1E5415C();
  *(inited + 96) = sub_1C1E5416C();
  *(inited + 104) = sub_1C1E5417C();
  *(inited + 112) = sub_1C1E540EC();
  v1 = sub_1C1DC1588(inited);
  swift_setDeallocating();
  v2 = *(inited + 16);
  result = swift_arrayDestroy();
  qword_1EDE738C8 = v1;
  return result;
}

uint64_t sub_1C1E4FB44@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C1E52ADC();
  *a1 = result;
  return result;
}

uint64_t sub_1C1E4FB70(uint64_t *a1)
{
  v1 = *a1;

  return sub_1C1E52AEC();
}

uint64_t sub_1C1E4FBB0(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v39 = a2;
  result = sub_1C1E54C2C();
  v10 = result;
  if (*(v7 + 16))
  {
    v37 = v5;
    v38 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = v19 | (v11 << 6);
      v23 = *(v7 + 56);
      v24 = *(*(v7 + 48) + 8 * v22);
      v25 = (v23 + 32 * v22);
      if (v39)
      {
        sub_1C1DC7B3C(v25, v40);
      }

      else
      {
        sub_1C1DFF8A8(v25, v40);
        v26 = v24;
      }

      v27 = *(v10 + 40);
      sub_1C1E545FC();
      sub_1C1E54D7C();
      sub_1C1E5468C();
      v28 = sub_1C1E54DAC();

      v29 = -1 << *(v10 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v17 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v17 + 8 * v31);
          if (v35 != -1)
          {
            v18 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v30) & ~*(v17 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v24;
      result = sub_1C1DC7B3C(v40, (*(v10 + 56) + 32 * v18));
      ++*(v10 + 16);
      v7 = v38;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((v39 & 1) == 0)
    {

      v5 = v37;
      goto LABEL_36;
    }

    v36 = 1 << *(v7 + 32);
    v5 = v37;
    if (v36 >= 64)
    {
      bzero(v12, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_36:
  *v5 = v10;
  return result;
}

uint64_t sub_1C1E4FE78(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for Function();
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v52 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C1E51F9C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v51 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D008, &qword_1C1E57E28);
  v48 = a2;
  result = sub_1C1E54C2C();
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
        sub_1C1DCA204(v31 + v32 * v28, v52, type metadata accessor for Function);
      }

      else
      {
        (*v44)(v51, v30, v9);
        v33 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_1C1DCA26C(v33 + v32 * v28, v52, type metadata accessor for Function);
      }

      v34 = *(v16 + 40);
      sub_1C1DC181C(&qword_1EDE750A0, MEMORY[0x1E69695A8]);
      result = sub_1C1E5453C();
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
      result = sub_1C1DCA204(v52, *(v16 + 56) + v32 * v24, type metadata accessor for Function);
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

uint64_t sub_1C1E50318(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_1C1E51F9C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D018, &unk_1C1E5AE50);
  v43 = a2;
  result = sub_1C1E54C2C();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
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
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_1C1DC181C(&qword_1EDE750A0, MEMORY[0x1E69695A8]);
      result = sub_1C1E5453C();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

id sub_1C1E50708(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1C1E54C1C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        sub_1C1DFF8A8(*(v4 + 56) + 32 * v19, v21);
        *(*(v6 + 48) + 8 * v19) = v20;
        sub_1C1DC7B3C(v21, (*(v6 + 56) + 32 * v19));
        result = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

char *sub_1C1E50878()
{
  v1 = v0;
  v2 = type metadata accessor for Function();
  v40 = *(v2 - 8);
  v3 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v39 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1C1E51F9C();
  v42 = *(v38 - 8);
  v5 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D008, &qword_1C1E57E28);
  v7 = *v0;
  v8 = sub_1C1E54C1C();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = (v7 + 64);
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v7 + 64;
    if (v9 != v7 || result >= &v11[8 * v12])
    {
      result = memmove(result, v11, 8 * v12);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v41 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v34 = v42 + 32;
    v35 = v42 + 16;
    v36 = v7;
    v19 = v42;
    v20 = v9;
    if (v17)
    {
      do
      {
        v21 = __clz(__rbit64(v17));
        v43 = (v17 - 1) & v17;
LABEL_14:
        v24 = v21 | (v13 << 6);
        v25 = *(v19 + 72) * v24;
        v27 = v37;
        v26 = v38;
        (*(v19 + 16))(v37, *(v7 + 48) + v25, v38);
        v28 = *(v7 + 56);
        v29 = v39;
        v30 = *(v40 + 72) * v24;
        sub_1C1DCA26C(v28 + v30, v39, type metadata accessor for Function);
        (*(v19 + 32))(*(v20 + 48) + v25, v27, v26);
        v31 = v29;
        v7 = v36;
        result = sub_1C1DCA204(v31, *(v20 + 56) + v30, type metadata accessor for Function);
        v17 = v43;
      }

      while (v43);
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v32;
        v9 = v41;
        goto LABEL_18;
      }

      v23 = *(v33 + 8 * v13);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v43 = (v23 - 1) & v23;
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

char *sub_1C1E50B9C()
{
  v1 = v0;
  v34 = sub_1C1E51F9C();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D018, &unk_1C1E5AE50);
  v4 = *v0;
  v5 = sub_1C1E54C1C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;

        v14 = v37;
      }

      while (v37);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
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

uint64_t sub_1C1E50E30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = a1;
  v5 = sub_1C1E5205C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00]();
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C1E5207C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00]();
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DDD8, &qword_1C1E5AB80) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v17 = &v37 - v16;
  swift_beginAccess();
  if (*(a3 + 16) != 1)
  {
    goto LABEL_25;
  }

  sub_1C1E53BBC();
  sub_1C1E5206C();
  (*(v11 + 8))(v14, v10);
  sub_1C1E5204C();
  (*(v6 + 8))(v9, v5);
  v18 = sub_1C1E51FEC();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_1C1DC1870(v17, &qword_1EBF1DDD8, &qword_1C1E5AB80);
  }

  else
  {
    sub_1C1E51FCC();
    (*(v19 + 8))(v17, v18);
  }

  v20 = sub_1C1E545BC();

  if (qword_1EDE73AE0 != -1)
  {
    swift_once();
  }

  v21 = qword_1EDE73AE8;
  v22 = [qword_1EDE73AE8 objectForKey_];
  if (!v22)
  {
    goto LABEL_10;
  }

  v23 = v22;
  v39 = 0;
  sub_1C1E5451C();
  v24 = v39;
  if (!v39)
  {
    __break(1u);
LABEL_10:
    if (qword_1EDE737A0 != -1)
    {
      swift_once();
    }

    v25 = qword_1EDE75DC0;
    v26 = sub_1C1E545BC();
    v27 = [v25 localizedStringsForTable:v26 localization:v20];

    v24 = sub_1C1E5452C();
    v23 = sub_1C1E5450C();
    [v21 setObject:v23 forKey:v20];
  }

  if (!*(v24 + 16))
  {
    goto LABEL_24;
  }

  v28 = sub_1C1E33C1C(v38, a2);
  if ((v29 & 1) == 0)
  {
    goto LABEL_24;
  }

  v30 = (*(v24 + 56) + 16 * v28);
  v32 = *v30;
  v31 = v30[1];

  v33 = HIBYTE(v31) & 0xF;
  if ((v31 & 0x2000000000000000) == 0)
  {
    v33 = v32 & 0xFFFFFFFFFFFFLL;
  }

  if (!v33)
  {

    goto LABEL_28;
  }

  if (v32 == 32 && v31 == 0xE100000000000000)
  {
LABEL_24:

LABEL_25:

    return v38;
  }

  v35 = sub_1C1E54D2C();

  if (v35)
  {
LABEL_28:

    goto LABEL_25;
  }

  return v32;
}

uint64_t sub_1C1E51318(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1D760, &qword_1C1E5AE10);
    v3 = sub_1C1E54B2C();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_1C1E54D7C();

      sub_1C1E5468C();
      result = sub_1C1E54DAC();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_1C1E54D2C();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

unint64_t sub_1C1E51484()
{
  result = qword_1EBF1DDE8;
  if (!qword_1EBF1DDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1DDE8);
  }

  return result;
}

uint64_t _s16CalculatorButtonOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s16CalculatorButtonOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_1C1E51618()
{
  if (!qword_1EBF1DDF8)
  {
    v0 = sub_1C1E549CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBF1DDF8);
    }
  }
}

uint64_t sub_1C1E51684(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF1DE08, &qword_1C1E5AD58);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_34Tm(uint64_t a1)
{
  v3 = *(v1 + 16);

  v4 = *(v1 + 24);

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t objectdestroy_46Tm()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

unint64_t sub_1C1E517A8()
{
  result = qword_1EBF1DE68;
  if (!qword_1EBF1DE68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1DE20, &qword_1C1E5AE08);
    sub_1C1E51834();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF1DE68);
  }

  return result;
}

unint64_t sub_1C1E51834()
{
  result = qword_1EDE73B70;
  if (!qword_1EDE73B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBF1DE08, &qword_1C1E5AD58);
    sub_1C1DCA354();
    sub_1C1DC1124(&qword_1EDE73B38, &qword_1EBF1DE18, &qword_1C1E5AE00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE73B70);
  }

  return result;
}

uint64_t __isPlatformVersionAtLeast(uint64_t a1, int a2, int a3, int a4)
{
  v16 = *MEMORY[0x1E69E9840];
  if (qword_1EBF20D00 == -1)
  {
    if (qword_1EBF20D08)
    {
LABEL_3:
      result = _availability_version_check();
      v5 = *MEMORY[0x1E69E9840];
      return result;
    }
  }

  else
  {
    v6 = a4;
    v7 = a3;
    v8 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v8;
    a3 = v7;
    a4 = v6;
    if (qword_1EBF20D08)
    {
      goto LABEL_3;
    }
  }

  if (qword_1EBF20CF8 != -1)
  {
    v13 = a4;
    v14 = a3;
    v15 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v14;
    a4 = v13;
    v9 = _MergedGlobals < v15;
    if (_MergedGlobals > v15)
    {
      goto LABEL_11;
    }

LABEL_7:
    if (!v9)
    {
      if (dword_1EBF20CEC > a3)
      {
        goto LABEL_11;
      }

      if (dword_1EBF20CEC >= a3)
      {
        result = dword_1EBF20CF0 >= a4;
        v12 = *MEMORY[0x1E69E9840];
        return result;
      }
    }

    result = 0;
    v10 = *MEMORY[0x1E69E9840];
    return result;
  }

  v9 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

LABEL_11:
  result = 1;
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t _initializeAvailabilityCheck(unint64_t result)
{
  v30 = *MEMORY[0x1E69E9840];
  v1 = qword_1EBF20D08;
  if (qword_1EBF20D08)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x1EEE9AC60])
    {
      v1 = MEMORY[0x1EEE9AC60];
      qword_1EBF20D08 = MEMORY[0x1EEE9AC60];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v28 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v27 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x1C6910B50](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v26 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v26, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v27)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v28(v23, v29, 32, 134217984))
                                        {
                                          sscanf(v29, "%d.%d.%d", &_MergedGlobals, &dword_1EBF20CEC, &dword_1EBF20CF0);
                                        }
                                      }
                                    }
                                  }

                                  (v27)(v20);
                                }

                                (v27)(v18);
                                v16 = v26;
                              }

                              else
                              {
                                v16 = v26;
                              }
                            }
                          }

                          free(v16);
                          result = fclose(v13);
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

  v25 = *MEMORY[0x1E69E9840];
  return result;
}