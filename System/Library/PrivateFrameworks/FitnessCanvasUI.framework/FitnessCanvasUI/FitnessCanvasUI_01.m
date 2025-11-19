uint64_t sub_1E67487F8(uint64_t a1, double *a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v11 = *(type metadata accessor for CanvasLayoutReader() - 8);
  return sub_1E6747444(a1, a2, v2 + ((*(v11 + 80) + 64) & ~*(v11 + 80)), v5, v6, v7, v8, v9, v10);
}

unint64_t sub_1E67488C0()
{
  result = qword_1ED096ED8;
  if (!qword_1ED096ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096ED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED096ED8);
  }

  return result;
}

uint64_t sub_1E6748944(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t DynamicSizeClass.init(width:)@<X0>(_BYTE *a1@<X8>, double a2@<D0>)
{
  if (a2 <= 374.0)
  {
    *a1 = 0;
  }

  else if (a2 < 374.0 || a2 > 460.0)
  {
    if (a2 < 461.0 || a2 > 726.0)
    {
      if (a2 < 727.0 || a2 > 981.0)
      {
        if (a2 < 982.0 || a2 > 1194.0)
        {
          if (a2 < 1195.0)
          {
            result = sub_1E68B3910();
            __break(1u);
          }

          else
          {
            *a1 = 5;
          }
        }

        else
        {
          *a1 = 4;
        }
      }

      else
      {
        *a1 = 3;
      }
    }

    else
    {
      *a1 = 2;
    }
  }

  else
  {
    *a1 = 1;
  }

  return result;
}

uint64_t sub_1E6748AE4@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v21 = a1;
  v9 = sub_1E68B3750();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - v11;
  v13 = *(a4 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v12, a2, v9, v15);
  if ((*(v13 + 48))(v12, 1, a4) == 1)
  {
    (*(v10 + 8))(v12, v9);
    v18 = 1;
  }

  else
  {
    (*(v13 + 32))(v17, v12, a4);
    v21(v17);
    (*(v13 + 8))(v17, a4);
    v18 = 0;
  }

  return (*(*(a3 - 8) + 56))(a5, v18, 1, a3);
}

uint64_t LazyCanvasSectionViewDescriptor.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t LazyCanvasSectionViewDescriptor.header.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 164);
  type metadata accessor for CanvasSectionHeader();
  v5 = sub_1E68B3750();
  return (*(*(v5 - 8) + 16))(a2, v2 + v4, v5);
}

uint64_t LazyCanvasSectionViewDescriptor.items.getter(uint64_t a1)
{
  sub_1E674B098(a1);
}

uint64_t LazyCanvasSectionViewDescriptor.metrics.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 176);
  v5 = sub_1E68B3750();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t LazyCanvasSectionViewDescriptor.init(identifier:densityFactor:header:footer:items:metrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, char *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, char *a7@<X8>)
{
  v9 = *a4;
  *a7 = a1;
  *(a7 + 1) = a2;
  v10 = type metadata accessor for LazyCanvasSectionViewDescriptor();
  v11 = v10[41];
  type metadata accessor for CanvasSectionHeader();
  v12 = sub_1E68B3750();
  (*(*(v12 - 8) + 32))(&a7[v11], a3, v12);
  a7[v10[42]] = v9;
  *&a7[v10[43]] = a5;
  v13 = v10[44];
  v14 = sub_1E68B3750();
  return (*(*(v14 - 8) + 32))(&a7[v13], a6, v14);
}

uint64_t sub_1E6748FE8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726564616568 && a2 == 0xE600000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7265746F6F66 && a2 == 0xE600000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7363697274656DLL && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1E68B3B00();

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

uint64_t sub_1E6749194(unsigned __int8 a1)
{
  sub_1E68B3B70();
  MEMORY[0x1E69523D0](a1);
  return sub_1E68B3BB0();
}

uint64_t sub_1E67491DC(unsigned __int8 a1)
{
  v1 = 0x696669746E656469;
  v2 = 0x7265746F6F66;
  v3 = 0x736D657469;
  if (a1 != 3)
  {
    v3 = 0x7363697274656DLL;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x726564616568;
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

uint64_t sub_1E6749378()
{
  sub_1E68B3B70();
  sub_1E6739CF4(v2, *v0);
  return sub_1E68B3BB0();
}

uint64_t sub_1E6749444@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E6748FE8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E67494A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E674BEA8();
  *a1 = result;
  return result;
}

uint64_t sub_1E6749500(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E6749554(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t LazyCanvasSectionViewDescriptor.id.getter()
{
  v0 = sub_1E6739D1C();

  return v0;
}

uint64_t sub_1E67495E0@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1E6739D1C();
  a1[1] = v2;
}

uint64_t LazyCanvasSectionViewDescriptor.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  v8 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = *(a2 + 64);
  v11 = *(a2 + 72);
  v12 = *(a2 + 80);
  v13 = *(a2 + 88);
  v14 = *(a2 + 96);
  v15 = *(a2 + 104);
  v16 = *(a2 + 112);
  v17 = *(a2 + 120);
  v18 = *(a2 + 128);
  v19 = *(a2 + 136);
  v21 = *(a2 + 144);
  v20 = *(a2 + 152);
  v46 = v4;
  v52 = v4;
  v53 = v5;
  v43 = v5;
  v42 = v6;
  v54 = v6;
  v55 = v7;
  v41 = v7;
  v40 = v8;
  v56 = v8;
  v57 = v9;
  v31[2] = v9;
  v45 = v10;
  v58 = v10;
  v59 = v11;
  v39 = v11;
  v47 = v12;
  v60 = v12;
  v61 = v13;
  v38 = v13;
  v37 = v14;
  v62 = v14;
  v63 = v15;
  v36 = v15;
  v35 = v16;
  v64 = v16;
  v65 = v17;
  v34 = v17;
  v33 = v18;
  v66 = v18;
  v67 = v19;
  v31[1] = v19;
  v44 = v21;
  v68 = v21;
  v69 = v20;
  v32 = v20;
  type metadata accessor for LazyCanvasSectionViewDescriptor.CodingKeys();
  swift_getWitnessTable();
  v22 = sub_1E68B3AC0();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = v31 - v24;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v26 = v48;
  sub_1E68B3BD0();
  LOBYTE(v52) = 0;
  v27 = v49;
  sub_1E68B3A70();
  if (!v27)
  {
    v49 = v23;
    LOBYTE(v70) = 1;
    v29 = v46;
    v52 = v46;
    v53 = v45;
    v54 = v47;
    v55 = v44;
    type metadata accessor for CanvasSectionHeader();
    swift_getWitnessTable();
    sub_1E68B3A60();
    v30 = v29;
    LOBYTE(v52) = *(v26 + *(a2 + 168));
    LOBYTE(v70) = 2;
    sub_1E674B0D4();
    sub_1E68B3AB0();
    v23 = v49;
    v70 = *(v26 + *(a2 + 172));
    v51 = 3;
    v52 = v30;
    v53 = v43;
    v54 = v42;
    v55 = v41;
    v56 = v40;
    v57 = v39;
    v58 = v47;
    v59 = v38;
    v60 = v37;
    v61 = v36;
    v62 = v35;
    v63 = v34;
    v64 = v33;
    v65 = v32;
    type metadata accessor for LazyCanvasItemDescriptor();
    sub_1E68B33B0();
    WitnessTable = swift_getWitnessTable();
    swift_getWitnessTable();
    sub_1E68B3AB0();
    LOBYTE(v52) = 4;
    sub_1E68B3A60();
  }

  return (*(v23 + 8))(v25, v22);
}

uint64_t LazyCanvasSectionViewDescriptor.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char *a19, uint64_t a20)
{
  v70 = a6;
  v75 = a5;
  v73 = a4;
  v72 = a1;
  v51 = a9;
  v77 = a17;
  v78 = a20;
  v71 = a16;
  v76 = a15;
  v74 = a14;
  v69 = a13;
  v68 = a12;
  v67 = a10;
  v66 = a18;
  v65 = a7;
  v50 = sub_1E68B3750();
  v49 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v47 - v24;
  v80 = a2;
  v81 = a8;
  v61 = a8;
  v82 = a11;
  v83 = a19;
  v62 = a19;
  v58 = type metadata accessor for CanvasSectionHeader();
  v57 = sub_1E68B3750();
  v54 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v56 = &v47 - v25;
  v80 = a2;
  v81 = a3;
  v82 = v73;
  v83 = v75;
  v26 = v70;
  v84 = v70;
  v85 = a7;
  v86 = a8;
  v87 = a10;
  v88 = a11;
  v89 = a12;
  v27 = v69;
  v90 = v69;
  v91 = v74;
  v28 = v71;
  v92 = v76;
  v93 = v71;
  v29 = v66;
  v94 = v77;
  v95 = v66;
  v96 = a19;
  v97 = v78;
  type metadata accessor for LazyCanvasSectionViewDescriptor.CodingKeys();
  WitnessTable = swift_getWitnessTable();
  v60 = sub_1E68B3A20();
  v55 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v31 = &v47 - v30;
  v59 = a2;
  v80 = a2;
  v81 = a3;
  v53 = a3;
  v32 = v72;
  v82 = v73;
  v83 = v75;
  v84 = v26;
  v85 = v65;
  v86 = v61;
  v87 = v67;
  v61 = a11;
  v88 = a11;
  v89 = v68;
  v90 = v27;
  v91 = v74;
  v92 = v76;
  v93 = v28;
  v94 = v77;
  v95 = v29;
  v96 = v62;
  v97 = v78;
  v33 = type metadata accessor for LazyCanvasSectionViewDescriptor();
  v48 = *(v33 - 1);
  MEMORY[0x1EEE9AC00](v33);
  v35 = (&v47 - v34);
  __swift_project_boxed_opaque_existential_1(v32, v32[3]);
  v62 = v31;
  v36 = v64;
  sub_1E68B3BC0();
  if (v36)
  {
    return __swift_destroy_boxed_opaque_existential_1(v32);
  }

  v37 = v56;
  v38 = v59;
  v39 = v55;
  v64 = v35;
  v40 = v57;
  LOBYTE(v80) = 0;
  v41 = sub_1E68B39C0();
  v42 = v64;
  *v64 = v41;
  v42[1] = v43;
  WitnessTable = v43;
  LOBYTE(v80) = 1;
  swift_getWitnessTable();
  sub_1E68B39B0();
  (*(v54 + 32))(v42 + v33[41], v37, v40);
  LOBYTE(v98) = 2;
  sub_1E674B128();
  v58 = 0;
  sub_1E68B3A00();
  *(v42 + v33[42]) = v80;
  v80 = v38;
  v81 = v53;
  v82 = v73;
  v83 = v75;
  v84 = v70;
  v85 = v67;
  v86 = v61;
  v87 = v68;
  v88 = v69;
  v89 = v74;
  v90 = v76;
  v91 = v71;
  v92 = v77;
  v93 = v78;
  type metadata accessor for LazyCanvasItemDescriptor();
  sub_1E68B33B0();
  LOBYTE(v80) = 3;
  v79 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E68B3A00();
  *(v42 + v33[43]) = v98;
  LOBYTE(v80) = 4;
  v44 = v52;
  sub_1E68B39B0();
  (*(v39 + 8))(v62, v60);
  (*(v49 + 32))(v42 + v33[44], v44, v50);
  v45 = v48;
  (*(v48 + 16))(v51, v42, v33);
  __swift_destroy_boxed_opaque_existential_1(v72);
  return (*(v45 + 8))(v42, v33);
}

BOOL static LazyCanvasSectionViewDescriptor.== infix(_:_:)(char *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v89 = a7;
  v88 = a6;
  v87 = a5;
  v86 = a4;
  v81 = *(a8 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v25 = &v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1E68B3750();
  v83 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v79 = &v65 - v27;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v78 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v80 = &v65 - v28;
  v94 = a3;
  v98 = a3;
  v99 = a9;
  v90 = a9;
  v95 = a11;
  v100 = a11;
  v101 = a19;
  v91 = a19;
  v29 = type metadata accessor for CanvasSectionHeader();
  v97 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v84 = &v65 - v30;
  v31 = sub_1E68B3750();
  v96 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v65 - v32;
  v34 = swift_getTupleTypeMetadata2();
  v85 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v65 - v35;
  v37 = *a1;
  v38 = *(a1 + 1);
  v92 = a1;
  v39 = *a2;
  v40 = *(a2 + 1);
  v93 = a2;
  if ((v37 != v39 || v38 != v40) && (sub_1E68B3B00() & 1) == 0)
  {
    return 0;
  }

  v66 = v25;
  v67 = v26;
  v98 = v94;
  v99 = v86;
  v100 = v87;
  v101 = v88;
  v102 = v89;
  v103 = a8;
  v68 = a8;
  v104 = v90;
  v105 = a10;
  v69 = a10;
  v106 = v95;
  v107 = a12;
  v70 = a12;
  v71 = a13;
  v108 = a13;
  v109 = a14;
  v72 = a14;
  v73 = a15;
  v110 = a15;
  v111 = a16;
  v74 = a16;
  v75 = a17;
  v112 = a17;
  v113 = a18;
  v65 = a18;
  v114 = v91;
  v115 = a20;
  v76 = a20;
  v77 = type metadata accessor for LazyCanvasSectionViewDescriptor();
  v41 = *(v77 + 164);
  v42 = *(v34 + 48);
  v43 = *(v96 + 16);
  v43(v36, &v92[v41], v31);
  v43(&v36[v42], &v93[v41], v31);
  v44 = *(v97 + 48);
  if (v44(v36, 1, v29) != 1)
  {
    v43(v33, v36, v31);
    if (v44(&v36[v42], 1, v29) != 1)
    {
      v45 = v97;
      v46 = v84;
      (*(v97 + 32))(v84, &v36[v42], v29);
      v47 = static CanvasSectionHeader.== infix(_:_:)(v33, v46, v94, v90, v95, v91);
      v48 = *(v45 + 8);
      v48(v46, v29);
      v48(v33, v29);
      (*(v96 + 8))(v36, v31);
      if (!v47)
      {
        return 0;
      }

      goto LABEL_12;
    }

    (*(v97 + 8))(v33, v29);
LABEL_9:
    (*(v85 + 8))(v36, v34);
    return 0;
  }

  if (v44(&v36[v42], 1, v29) != 1)
  {
    goto LABEL_9;
  }

  (*(v96 + 8))(v36, v31);
LABEL_12:
  v49 = v77;
  v50 = v92;
  v51 = v93;
  if (v92[*(v77 + 168)] != v93[*(v77 + 168)])
  {
    return 0;
  }

  v98 = v94;
  v99 = v86;
  v100 = v87;
  v101 = v88;
  v102 = v89;
  v103 = v69;
  v104 = v95;
  v105 = v70;
  v106 = v71;
  v107 = v72;
  v108 = v73;
  v109 = v74;
  v110 = v75;
  v111 = v76;
  type metadata accessor for LazyCanvasItemDescriptor();
  swift_getWitnessTable();
  if ((sub_1E68B33D0() & 1) == 0)
  {
    return 0;
  }

  v52 = *(v49 + 176);
  v53 = *(TupleTypeMetadata2 + 48);
  v54 = *(v83 + 16);
  v55 = v80;
  v56 = v67;
  v54(v80, &v50[v52], v67);
  v54(&v55[v53], &v51[v52], v56);
  v57 = v81;
  v58 = *(v81 + 48);
  v59 = v68;
  if (v58(v55, 1, v68) == 1)
  {
    if (v58(&v55[v53], 1, v59) == 1)
    {
      (*(v83 + 8))(v55, v56);
      return 1;
    }

    goto LABEL_19;
  }

  v60 = v79;
  v54(v79, v55, v56);
  if (v58(&v55[v53], 1, v59) == 1)
  {
    (*(v57 + 8))(v60, v59);
LABEL_19:
    (*(v78 + 8))(v55, TupleTypeMetadata2);
    return 0;
  }

  v61 = v66;
  (*(v57 + 32))(v66, &v55[v53], v59);
  v62 = sub_1E68B3190();
  v63 = *(v57 + 8);
  v63(v61, v59);
  v63(v60, v59);
  (*(v83 + 8))(v55, v56);
  return (v62 & 1) != 0;
}

uint64_t LazyCanvasSectionViewDescriptor.hash(into:)(uint64_t a1, uint64_t a2)
{
  sub_1E68B31F0();
  type metadata accessor for CanvasSectionHeader();
  sub_1E68B3750();
  swift_getWitnessTable();
  sub_1E68B3760();
  MEMORY[0x1E69523D0](*(v2 + *(a2 + 168)));
  type metadata accessor for LazyCanvasItemDescriptor();
  swift_getWitnessTable();
  sub_1E68B33C0();
  sub_1E68B3750();
  return sub_1E68B3760();
}

uint64_t LazyCanvasSectionViewDescriptor.hashValue.getter(uint64_t a1)
{
  sub_1E68B3B70();
  LazyCanvasSectionViewDescriptor.hash(into:)(v3, a1);
  return sub_1E68B3BB0();
}

uint64_t sub_1E674AFD8(uint64_t a1, uint64_t a2)
{
  sub_1E68B3B70();
  LazyCanvasSectionViewDescriptor.hash(into:)(v4, a2);
  return sub_1E68B3BB0();
}

uint64_t sub_1E674B070(uint64_t a1)
{
  sub_1E674B098(a1);
}

unint64_t sub_1E674B0D4()
{
  result = qword_1EE2ED210;
  if (!qword_1EE2ED210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2ED210);
  }

  return result;
}

unint64_t sub_1E674B128()
{
  result = qword_1ED096EE0[0];
  if (!qword_1ED096EE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED096EE0);
  }

  return result;
}

uint64_t sub_1E674B1A4()
{
  type metadata accessor for CanvasSectionHeader();
  result = sub_1E68B3750();
  if (v1 <= 0x3F)
  {
    type metadata accessor for LazyCanvasItemDescriptor();
    result = sub_1E68B33B0();
    if (v2 <= 0x3F)
    {
      result = sub_1E68B3750();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1E674B2D8(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v5 = *(sub_1E68B1820() - 8);
  v6 = v5;
  v7 = *(v5 + 84);
  v54 = a3[8];
  v8 = *(v54 - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  v53 = a3[2];
  v12 = *(v53 - 8);
  if (v11 <= v7)
  {
    v13 = *(v5 + 84);
  }

  else
  {
    v13 = v11;
  }

  v14 = *(v12 + 84);
  v15 = v14 - 1;
  if (!v14)
  {
    v15 = 0;
  }

  if (v15 <= v13)
  {
    v16 = v13;
  }

  else
  {
    v16 = v15;
  }

  if (v16)
  {
    v17 = v16 - 1;
  }

  else
  {
    v17 = 0;
  }

  v18 = *(a3[7] - 8);
  v19 = v18;
  v20 = *(v18 + 84);
  v21 = v20 - 1;
  if (!v20)
  {
    v21 = 0;
  }

  if (v17 <= v21)
  {
    v22 = v21;
  }

  else
  {
    v22 = v17;
  }

  if (v22 <= 0x7FFFFFFF)
  {
    v23 = 0x7FFFFFFF;
  }

  else
  {
    v23 = v22;
  }

  if (v10)
  {
    v24 = *(v8 + 64);
  }

  else
  {
    v24 = *(v8 + 64) + 1;
  }

  if (v14)
  {
    v25 = v16 == 0;
  }

  else
  {
    v25 = (v16 == 0) + 1;
  }

  v26 = *(v8 + 80);
  v27 = *(v12 + 80);
  v28 = *(v5 + 64);
  v29 = *(v12 + 64);
  v30 = *(v18 + 80);
  if (v20)
  {
    v31 = *(v18 + 64);
  }

  else
  {
    v31 = *(v18 + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v32 = v27;
  v33 = (v26 | *(v5 + 80) | v27);
  v34 = v28 + v26;
  v35 = v24 + v27;
  v36 = v25 + v29 + ((v35 + (v34 & ~v26)) & ~v27);
  v37 = v30 + 16;
  v38 = a2 - v23;
  if (a2 <= v23)
  {
    goto LABEL_55;
  }

  v39 = (v37 + ((v36 + ((v33 + 16) & ~v33)) & 0xFFFFFFFFFFFFFFF8)) & ~v30;
  v40 = v31 + v39;
  v41 = 8 * (v31 + v39);
  if (v40 <= 3)
  {
    v43 = ((v38 + ~(-1 << v41)) >> v41) + 1;
    if (HIWORD(v43))
    {
      v42 = *(a1 + v40);
      if (!v42)
      {
        goto LABEL_55;
      }

      goto LABEL_42;
    }

    if (v43 > 0xFF)
    {
      v42 = *(a1 + v40);
      if (!*(a1 + v40))
      {
        goto LABEL_55;
      }

      goto LABEL_42;
    }

    if (v43 < 2)
    {
LABEL_55:
      if ((v22 & 0x80000000) == 0)
      {
        v47 = *(a1 + 1);
        if (v47 >= 0xFFFFFFFF)
        {
          LODWORD(v47) = -1;
        }

        return (v47 + 1);
      }

      v49 = (a1 + v33 + 16) & ~v33;
      if (v17 == v23)
      {
        if (v16 < 2)
        {
          return 0;
        }

        if (v7 == v16)
        {
          v50 = (*(v6 + 48))(v49);
        }

        else
        {
          v51 = (v34 + v49) & ~*(v9 + 80);
          if (v11 == v16)
          {
            v52 = (*(v9 + 48))(v51, v10, v54);
          }

          else
          {
            v52 = (*(*(v53 - 8) + 48))((v35 + v51) & ~v32, v14, v53);
          }

          if (v52 >= 2)
          {
            v50 = v52 - 1;
          }

          else
          {
            v50 = 0;
          }
        }
      }

      else
      {
        v50 = (*(v19 + 48))((v37 + ((v36 + v49) & 0xFFFFFFFFFFFFFFF8)) & ~v30, v20);
      }

      if (v50 >= 2)
      {
        return v50 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v42 = *(a1 + v40);
  if (!*(a1 + v40))
  {
    goto LABEL_55;
  }

LABEL_42:
  v44 = (v42 - 1) << v41;
  if (v40 > 3)
  {
    v44 = 0;
  }

  if (v40)
  {
    if (v40 <= 3)
    {
      v45 = v40;
    }

    else
    {
      v45 = 4;
    }

    if (v45 > 2)
    {
      if (v45 == 3)
      {
        v46 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v46 = *a1;
      }
    }

    else if (v45 == 1)
    {
      v46 = *a1;
    }

    else
    {
      v46 = *a1;
    }
  }

  else
  {
    v46 = 0;
  }

  return v23 + (v46 | v44) + 1;
}

void sub_1E674B700(_WORD *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v6 = sub_1E68B1820();
  v7 = 0;
  v8 = *(v6 - 8);
  v9 = *(v8 + 84);
  v58 = a4[8];
  v10 = *(v58 - 8);
  v11 = *(v10 + 84);
  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  if (v12 <= v9)
  {
    v13 = *(v8 + 84);
  }

  else
  {
    v13 = v12;
  }

  v56 = a4[2];
  v14 = *(v56 - 8);
  v15 = *(v14 + 84);
  if (v15)
  {
    v16 = v15 - 1;
  }

  else
  {
    v16 = 0;
  }

  if (v16 <= v13)
  {
    v17 = v13;
  }

  else
  {
    v17 = v16;
  }

  if (v17)
  {
    v18 = v17 - 1;
  }

  else
  {
    v18 = 0;
  }

  v60 = a4[7];
  v19 = *(v60 - 8);
  v20 = *(v19 + 84);
  v57 = *(v58 - 8);
  v59 = *(v6 - 8);
  v21 = *(v8 + 80);
  v22 = *(v19 + 80);
  v23 = *(v19 + 64);
  v24 = v20 - 1;
  if (!v20)
  {
    v24 = 0;
  }

  if (v18 <= v24)
  {
    v25 = v24;
  }

  else
  {
    v25 = v18;
  }

  if (v25 <= 0x7FFFFFFF)
  {
    v26 = 0x7FFFFFFF;
  }

  else
  {
    v26 = v25;
  }

  if (v11)
  {
    v27 = *(*(v58 - 8) + 64);
  }

  else
  {
    v27 = *(*(v58 - 8) + 64) + 1;
  }

  if (v15)
  {
    v28 = *(*(v56 - 8) + 64);
  }

  else
  {
    v28 = *(*(v56 - 8) + 64) + 1;
  }

  v29 = *(v10 + 80);
  v30 = *(v14 + 80);
  v31 = *(*(v6 - 8) + 64) + v29;
  v32 = v27 + v30;
  v33 = ((v27 + v30 + (v31 & ~v29)) & ~v30) + v28;
  if (v17)
  {
    v34 = ((v32 + (v31 & ~*(v10 + 80))) & ~*(v14 + 80)) + v28;
  }

  else
  {
    v34 = v33 + 1;
  }

  v35 = (*(v10 + 80) | v21 | *(v14 + 80));
  if (!v20)
  {
    ++v23;
  }

  v36 = ((v22 + 16 + ((v34 + ((v35 + 16) & ~v35)) & 0xFFFFFFFFFFFFFFF8)) & ~v22) + v23;
  v37 = a3 >= v26;
  v38 = a3 - v26;
  if (v38 != 0 && v37)
  {
    if (v36 <= 3)
    {
      v39 = ((v38 + ~(-1 << (8 * v36))) >> (8 * v36)) + 1;
      if (HIWORD(v39))
      {
        v7 = 4;
      }

      else
      {
        if (v39 < 0x100)
        {
          v40 = 1;
        }

        else
        {
          v40 = 2;
        }

        if (v39 >= 2)
        {
          v7 = v40;
        }

        else
        {
          v7 = 0;
        }
      }
    }

    else
    {
      v7 = 1;
    }
  }

  if (v26 < a2)
  {
    v41 = ~v26 + a2;
    if (v36 < 4)
    {
      v42 = (v41 >> (8 * v36)) + 1;
      if (v36)
      {
        v43 = v41 & ~(-1 << (8 * v36));
        bzero(a1, v36);
        if (v36 != 3)
        {
          if (v36 == 2)
          {
            *a1 = v43;
            if (v7 > 1)
            {
LABEL_82:
              if (v7 == 2)
              {
                *(a1 + v36) = v42;
              }

              else
              {
                *(a1 + v36) = v42;
              }

              return;
            }
          }

          else
          {
            *a1 = v41;
            if (v7 > 1)
            {
              goto LABEL_82;
            }
          }

          goto LABEL_79;
        }

        *a1 = v43;
        *(a1 + 2) = BYTE2(v43);
      }

      if (v7 > 1)
      {
        goto LABEL_82;
      }
    }

    else
    {
      bzero(a1, v36);
      *a1 = v41;
      v42 = 1;
      if (v7 > 1)
      {
        goto LABEL_82;
      }
    }

LABEL_79:
    if (v7)
    {
      *(a1 + v36) = v42;
    }

    return;
  }

  if (v7 > 1)
  {
    if (v7 != 2)
    {
      *(a1 + v36) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_63;
    }

    *(a1 + v36) = 0;
  }

  else if (v7)
  {
    *(a1 + v36) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_63;
  }

  if (!a2)
  {
    return;
  }

LABEL_63:
  if ((v25 & 0x80000000) == 0)
  {
    if ((a2 & 0x80000000) != 0)
    {
      *a1 = a2 & 0x7FFFFFFF;
      *(a1 + 1) = 0;
    }

    else
    {
      *(a1 + 1) = a2 - 1;
    }

    return;
  }

  v44 = ((a1 + v35 + 16) & ~v35);
  if (v18 != v26)
  {
    v45 = *(v19 + 56);
    v48 = (v22 + 16 + (&v44[v34] & 0xFFFFFFFFFFFFFFF8)) & ~v22;
    v46 = a2 + 1;
    v9 = v20;
    v47 = v60;

    goto LABEL_76;
  }

  if (v17 < 2)
  {
    return;
  }

  if (a2 >= v17)
  {
    if (v33 <= 3)
    {
      v49 = ~(-1 << (8 * v33));
    }

    else
    {
      v49 = -1;
    }

    if (v33)
    {
      v50 = v49 & (a2 - v17);
      if (v33 <= 3)
      {
        v51 = v33;
      }

      else
      {
        v51 = 4;
      }

      bzero(v44, v33);
      if (v51 > 2)
      {
        if (v51 == 3)
        {
          *v44 = v50;
          v44[2] = BYTE2(v50);
        }

        else
        {
          *v44 = v50;
        }
      }

      else if (v51 == 1)
      {
        *v44 = v50;
      }

      else
      {
        *v44 = v50;
      }
    }
  }

  else
  {
    if (v9 == v17)
    {
      v45 = *(v59 + 56);
      v46 = a2 + 1;
      v47 = v6;
      v48 = (a1 + v35 + 16) & ~v35;
      goto LABEL_102;
    }

    v48 = &v44[v31] & ~v29;
    if (v12 == v17)
    {
      v45 = *(v57 + 56);
      v46 = a2 + 2;
      v9 = v11;
      v47 = v58;
      goto LABEL_102;
    }

    v52 = (v32 + v48) & ~v30;
    if (a2 < v16)
    {
      v45 = *(v14 + 56);
      v46 = a2 + 2;
      v48 = (v32 + v48) & ~v30;
      v9 = v15;
      v47 = v56;
LABEL_102:

LABEL_76:
      v45(v48, v46, v9, v47);
      return;
    }

    if (v28 <= 3)
    {
      v53 = ~(-1 << (8 * v28));
    }

    else
    {
      v53 = -1;
    }

    if (v28)
    {
      v54 = v53 & (a2 - v16);
      if (v28 <= 3)
      {
        v55 = v28;
      }

      else
      {
        v55 = 4;
      }

      bzero(((v32 + v48) & ~v30), v28);
      if (v55 > 2)
      {
        if (v55 == 3)
        {
          *v52 = v54;
          *(v52 + 2) = BYTE2(v54);
        }

        else
        {
          *v52 = v54;
        }
      }

      else if (v55 == 1)
      {
        *v52 = v54;
      }

      else
      {
        *v52 = v54;
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for TallCardViewLayout.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TallCardViewLayout.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

BOOL sub_1E674BEB0(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  sub_1E68B3B70();
  MEMORY[0x1E69523D0](v3);
  v4 = sub_1E68B3BB0();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + v6);
    result = v8 == v3;
    if (v8 == v3)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t CanvasItemDescriptorProtocol.buildView<A, B, C, D, E, F>(onSelection:sizeClass:contentMargins:artworkViewBuilder:artworkLeadingOverlayViewBuilder:artworkTrailingOverlayViewBuilder:viewDescriptorBuilder:actionButtonViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unint64_t a19, uint64_t a20, char *a21, unint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v253 = a7;
  v254 = a8;
  v250 = a6;
  v251 = a2;
  v248 = a5;
  v249 = a1;
  *&v264 = a4;
  v252 = a3;
  v269 = a9;
  v331 = a29;
  v332 = a28;
  v276 = a27;
  v275 = a26;
  v261 = a25;
  v274 = a24;
  v330 = a22;
  v277 = a21;
  v273 = a20;
  v272 = a19;
  v271 = a17;
  v270 = a16;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v259 = *(AssociatedTypeWitness - 8);
  v260 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v258 = v243 - v30;
  v31 = swift_getAssociatedTypeWitness();
  v32 = swift_getAssociatedTypeWitness();
  v33 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v263 = a23;
  v35 = swift_getAssociatedConformanceWitness();
  v36 = swift_getAssociatedConformanceWitness();
  v461 = v31;
  v462 = v32;
  v463 = v33;
  v464 = AssociatedConformanceWitness;
  v465 = v35;
  v466 = v36;
  v37 = v261;
  v38 = type metadata accessor for CanvasItemContent();
  v256 = *(v38 - 1);
  v257 = v38;
  MEMORY[0x1EEE9AC00](v38);
  v255 = v243 - v39;
  v461 = a18;
  v462 = v330;
  v463 = v330;
  v464 = v37;
  v465 = v331;
  v466 = v331;
  v40 = type metadata accessor for ActionCardView();
  WitnessTable = swift_getWitnessTable();
  v328 = v40;
  v461 = v40;
  v462 = WitnessTable;
  v327 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  v278 = sub_1E68B2440();
  sub_1E68B1E40();
  v42 = sub_1E68B1E40();
  v43 = sub_1E6761260(&qword_1EE2EA588, MEMORY[0x1E697CBE8]);
  v475 = v37;
  v476 = v43;
  v329 = v43;
  v44 = swift_getWitnessTable();
  v473 = v44;
  v474 = MEMORY[0x1E697F568];
  v45 = swift_getWitnessTable();
  v326 = v42;
  v461 = v42;
  v462 = v45;
  v323 = v45;
  swift_getOpaqueTypeMetadata2();
  v46 = sub_1E68B1E40();
  v471 = v44;
  v472 = MEMORY[0x1E697E040];
  v47 = swift_getWitnessTable();
  v318 = v46;
  v461 = v46;
  v462 = v47;
  v314 = v47;
  swift_getOpaqueTypeMetadata2();
  v315 = sub_1E68B2220();
  v317 = sub_1E68B2B90();
  v48 = sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FE8);
  v320 = v48;
  v49 = sub_1E68B2220();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096FF0);
  v322 = v49;
  v324 = sub_1E68B2220();
  v50 = sub_1E68B2220();
  v51 = v330;
  v461 = a18;
  v462 = v330;
  v463 = v330;
  v464 = v277;
  v465 = v271;
  v466 = v37;
  v52 = v331;
  v467 = v331;
  v468 = v331;
  v469 = v332;
  v470 = v274;
  v53 = type metadata accessor for FullWidthStageView();
  v54 = swift_getWitnessTable();
  v321 = v53;
  v461 = v53;
  v462 = v54;
  v319 = v54;
  swift_getOpaqueTypeMetadata2();
  v55 = type metadata accessor for InfoActionCardView();
  v56 = swift_getWitnessTable();
  v316 = v55;
  v461 = v55;
  v462 = v56;
  v312 = v56;
  swift_getOpaqueTypeMetadata2();
  v57 = sub_1E68B2220();
  v325 = v50;
  v311 = v57;
  v58 = sub_1E68B2220();
  v461 = a18;
  v462 = v272;
  v463 = v273;
  v464 = v37;
  v465 = v275;
  v466 = v276;
  v59 = type metadata accessor for LargeBrickView();
  v60 = swift_getWitnessTable();
  v310 = v59;
  v461 = v59;
  v462 = v60;
  v309 = v60;
  swift_getOpaqueTypeMetadata2();
  v61 = type metadata accessor for DynamicBrickView();
  v62 = swift_getWitnessTable();
  v308 = v61;
  v461 = v61;
  v462 = v62;
  v307 = v62;
  swift_getOpaqueTypeMetadata2();
  v63 = sub_1E68B2220();
  v64 = type metadata accessor for MonogramVerticalStackView();
  v65 = swift_getWitnessTable();
  v305 = v64;
  v461 = v64;
  v462 = v65;
  v301 = v65;
  swift_getOpaqueTypeMetadata2();
  v66 = sub_1E68B2220();
  v306 = v63;
  v300 = v66;
  v67 = sub_1E68B2220();
  v313 = v58;
  v303 = v67;
  v68 = sub_1E68B2220();
  v69 = type metadata accessor for StandardCardView();
  v70 = swift_getWitnessTable();
  v302 = v69;
  v461 = v69;
  v462 = v70;
  v299 = v70;
  swift_getOpaqueTypeMetadata2();
  v461 = a18;
  v462 = v51;
  v463 = v37;
  v464 = v52;
  v71 = type metadata accessor for StandardHorizontalStackView();
  v297 = swift_getWitnessTable();
  v298 = v71;
  v461 = v71;
  v462 = v297;
  swift_getOpaqueTypeMetadata2();
  v72 = sub_1E68B2220();
  v73 = type metadata accessor for StandardVerticalStackView();
  v74 = swift_getWitnessTable();
  v295 = v73;
  v461 = v73;
  v462 = v74;
  v293 = v74;
  swift_getOpaqueTypeMetadata2();
  v290 = type metadata accessor for SummaryCardView();
  v75 = sub_1E68B2220();
  v296 = v72;
  v292 = v75;
  v76 = sub_1E68B2220();
  v77 = type metadata accessor for TallCardView();
  v78 = swift_getWitnessTable();
  v291 = v77;
  v461 = v77;
  v462 = v78;
  v289 = v78;
  swift_getOpaqueTypeMetadata2();
  v79 = type metadata accessor for VerticalStackCardView();
  v287 = swift_getWitnessTable();
  v288 = v79;
  v461 = v79;
  v462 = v287;
  swift_getOpaqueTypeMetadata2();
  v80 = sub_1E68B2220();
  v81 = type metadata accessor for WideBrickView();
  v82 = swift_getWitnessTable();
  v284 = v81;
  v461 = v81;
  v462 = v82;
  v280 = v82;
  swift_getOpaqueTypeMetadata2();
  v83 = v277;
  v84 = sub_1E68B2220();
  v286 = v80;
  v279 = v84;
  v85 = sub_1E68B2220();
  v294 = v76;
  v281 = v85;
  v86 = sub_1E68B2220();
  v304 = v68;
  v282 = v86;
  v283 = sub_1E68B2220();
  v87 = sub_1E68B2B90();
  v245 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v262 = v243 - v88;
  v285 = v89;
  v90 = sub_1E68B1E40();
  v247 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v92 = v243 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v93);
  v246 = v243 - v94;
  v266 = v95;
  v96 = sub_1E68B2220();
  v267 = *(v96 - 8);
  v268 = v96;
  MEMORY[0x1EEE9AC00](v96);
  v278 = v243 - v97;
  v98 = *v264;
  v244 = *(v264 + 16);
  v264 = v98;
  v99 = v265;
  v100 = v270;
  v101 = v263;
  v102 = (*(v263 + 184))();
  LOBYTE(v68) = sub_1E674BEB0(3u, v102);

  if (v68)
  {
    v461 = v328;
    v462 = v327;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v461 = v326;
    v462 = v323;
    v104 = swift_getOpaqueTypeConformance2();
    v461 = v318;
    v462 = v314;
    v105 = swift_getOpaqueTypeConformance2();
    v373 = v104;
    v374 = v105;
    v372 = swift_getWitnessTable();
    v370 = swift_getWitnessTable();
    v371 = MEMORY[0x1E697E5D8];
    v106 = swift_getWitnessTable();
    v107 = sub_1E673F530(&qword_1EE2EA538, &qword_1ED096FE8);
    v368 = v106;
    v369 = v107;
    v108 = swift_getWitnessTable();
    v109 = sub_1E673F530(&qword_1EE2EA508, &qword_1ED096FF0);
    v366 = v108;
    v367 = v109;
    v110 = swift_getWitnessTable();
    v364 = OpaqueTypeConformance2;
    v365 = v110;
    v111 = swift_getWitnessTable();
    v461 = v321;
    v462 = v319;
    v112 = swift_getOpaqueTypeConformance2();
    v461 = v316;
    v462 = v312;
    v113 = swift_getOpaqueTypeConformance2();
    v362 = v112;
    v363 = v113;
    v114 = swift_getWitnessTable();
    v360 = v111;
    v361 = v114;
    v115 = swift_getWitnessTable();
    v461 = v310;
    v462 = v309;
    v116 = swift_getOpaqueTypeConformance2();
    v461 = v308;
    v462 = v307;
    v117 = swift_getOpaqueTypeConformance2();
    v358 = v116;
    v359 = v117;
    v118 = swift_getWitnessTable();
    v461 = v305;
    v462 = v301;
    v356 = swift_getOpaqueTypeConformance2();
    v357 = v117;
    v119 = swift_getWitnessTable();
    v354 = v118;
    v355 = v119;
    v120 = swift_getWitnessTable();
    v352 = v115;
    v353 = v120;
    v121 = swift_getWitnessTable();
    v461 = v302;
    v462 = v299;
    v122 = swift_getOpaqueTypeConformance2();
    v461 = v298;
    v462 = v297;
    v123 = swift_getOpaqueTypeConformance2();
    v350 = v122;
    v351 = v123;
    v124 = swift_getWitnessTable();
    v461 = v295;
    v462 = v293;
    v125 = swift_getOpaqueTypeConformance2();
    v126 = swift_getWitnessTable();
    v348 = v125;
    v349 = v126;
    v127 = swift_getWitnessTable();
    v346 = v124;
    v347 = v127;
    v128 = swift_getWitnessTable();
    v461 = v291;
    v462 = v289;
    v129 = swift_getOpaqueTypeConformance2();
    v461 = v288;
    v462 = v287;
    v130 = swift_getOpaqueTypeConformance2();
    v344 = v129;
    v345 = v130;
    v131 = swift_getWitnessTable();
    v461 = v284;
    v462 = v280;
    v132 = swift_getOpaqueTypeConformance2();
    v342 = v332;
    v343 = v132;
    v133 = swift_getWitnessTable();
    v340 = v131;
    v341 = v133;
    v134 = swift_getWitnessTable();
    v338 = v128;
    v339 = v134;
    v135 = swift_getWitnessTable();
    v336 = v121;
    v337 = v135;
    v335 = swift_getWitnessTable();
    v333 = swift_getWitnessTable();
    v334 = v329;
    v136 = swift_getWitnessTable();
    sub_1E6744CC0(v136, MEMORY[0x1E6981E70]);
  }

  else
  {
    v243[1] = v243;
    MEMORY[0x1EEE9AC00](a10);
    v138 = v271;
    v137 = v272;
    v243[-32] = v100;
    v243[-31] = v138;
    v243[-30] = a18;
    v243[-29] = v137;
    v243[-28] = v273;
    v243[-27] = v83;
    v243[-26] = v330;
    v243[-25] = v101;
    v139 = v275;
    v243[-24] = v274;
    v243[-23] = v37;
    v243[-22] = v139;
    v140 = v332;
    v243[-21] = v276;
    v243[-20] = v140;
    v243[-19] = v331;
    v243[-18] = v99;
    v141 = v250;
    v243[-17] = v248;
    v243[-16] = v141;
    v243[-15] = v143;
    v243[-14] = v142;
    v145 = v251;
    v144 = v252;
    v243[-13] = v249;
    v243[-12] = v145;
    v243[-11] = v144;
    v146 = v244;
    *&v243[-10] = v264;
    *&v243[-8] = v146;
    v243[-6] = v148;
    v243[-5] = v147;
    v149 = v254;
    v243[-4] = v253;
    v243[-3] = v149;
    v243[-2] = v150;
    v243[-1] = v151;
    v461 = v328;
    v462 = v327;
    v152 = swift_getOpaqueTypeConformance2();
    v461 = v326;
    v462 = v323;
    v153 = swift_getOpaqueTypeConformance2();
    v461 = v318;
    v462 = v314;
    v154 = swift_getOpaqueTypeConformance2();
    v459 = v153;
    v460 = v154;
    v458 = swift_getWitnessTable();
    v330 = MEMORY[0x1E6981600];
    v456 = swift_getWitnessTable();
    v457 = MEMORY[0x1E697E5D8];
    v331 = MEMORY[0x1E697E858];
    v155 = swift_getWitnessTable();
    v156 = sub_1E673F530(&qword_1EE2EA538, &qword_1ED096FE8);
    v454 = v155;
    v455 = v156;
    v157 = swift_getWitnessTable();
    v158 = sub_1E673F530(&qword_1EE2EA508, &qword_1ED096FF0);
    v452 = v157;
    v453 = v158;
    v159 = swift_getWitnessTable();
    v450 = v152;
    v451 = v159;
    v160 = swift_getWitnessTable();
    v461 = v321;
    v462 = v319;
    v161 = swift_getOpaqueTypeConformance2();
    v461 = v316;
    v462 = v312;
    v162 = swift_getOpaqueTypeConformance2();
    v448 = v161;
    v449 = v162;
    v163 = swift_getWitnessTable();
    v446 = v160;
    v447 = v163;
    v164 = swift_getWitnessTable();
    v461 = v310;
    v462 = v309;
    v165 = swift_getOpaqueTypeConformance2();
    v461 = v308;
    v462 = v307;
    v166 = swift_getOpaqueTypeConformance2();
    v444 = v165;
    v445 = v166;
    v167 = swift_getWitnessTable();
    v461 = v305;
    v462 = v301;
    v442 = swift_getOpaqueTypeConformance2();
    v443 = v166;
    v168 = swift_getWitnessTable();
    v440 = v167;
    v441 = v168;
    v169 = swift_getWitnessTable();
    v438 = v164;
    v439 = v169;
    v170 = swift_getWitnessTable();
    v461 = v302;
    v462 = v299;
    v171 = swift_getOpaqueTypeConformance2();
    v461 = v298;
    v462 = v297;
    v172 = swift_getOpaqueTypeConformance2();
    v436 = v171;
    v437 = v172;
    v173 = swift_getWitnessTable();
    v461 = v295;
    v462 = v293;
    v174 = swift_getOpaqueTypeConformance2();
    v175 = swift_getWitnessTable();
    v434 = v174;
    v435 = v175;
    v176 = swift_getWitnessTable();
    v432 = v173;
    v433 = v176;
    v177 = swift_getWitnessTable();
    v461 = v291;
    v462 = v289;
    v178 = swift_getOpaqueTypeConformance2();
    v461 = v288;
    v462 = v287;
    v179 = swift_getOpaqueTypeConformance2();
    v430 = v178;
    v431 = v179;
    v180 = swift_getWitnessTable();
    v461 = v284;
    v462 = v280;
    v181 = swift_getOpaqueTypeConformance2();
    v428 = v332;
    v429 = v181;
    v182 = swift_getWitnessTable();
    v426 = v180;
    v427 = v182;
    v183 = swift_getWitnessTable();
    v424 = v177;
    v425 = v183;
    v184 = swift_getWitnessTable();
    v422 = v170;
    v423 = v184;
    v185 = swift_getWitnessTable();
    sub_1E68B2B80();
    v461 = 0;
    v462 = 0xE000000000000000;
    MEMORY[0x1E6951A70](0x2D70756B636F6CLL, 0xE700000000000000);
    v186 = v101;
    v187 = *(v101 + 160);
    v188 = v255;
    v189 = v270;
    v277 = v92;
    v190 = v186;
    v187(v270);
    v191 = v257;
    v192 = sub_1E67C6480(v257);
    v194 = v193;
    (*(v256 + 8))(v188, v191);
    MEMORY[0x1E6951A70](v192, v194);

    MEMORY[0x1E6951A70](45, 0xE100000000000000);
    v195 = v258;
    (*(v190 + 152))(v189, v190);
    v196 = v260;
    sub_1E68B3AE0();
    (*(v259 + 8))(v195, v196);
    v421 = v185;
    v197 = v285;
    v198 = swift_getWitnessTable();
    v199 = v277;
    v200 = v262;
    sub_1E68B29B0();

    (*(v245 + 8))(v200, v197);
    v419 = v198;
    v420 = v329;
    v201 = v266;
    v202 = swift_getWitnessTable();
    v203 = v246;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v199, v201, v202);
    v204 = *(v247 + 8);
    v204(v199, v201);
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v203, v201, v202);
    sub_1E6744DB8(v199, MEMORY[0x1E6981E70], v201);
    v204(v199, v201);
    v204(v203, v201);
  }

  v461 = v328;
  v462 = v327;
  v205 = swift_getOpaqueTypeConformance2();
  v461 = v326;
  v462 = v323;
  v206 = swift_getOpaqueTypeConformance2();
  v461 = v318;
  v462 = v314;
  v207 = swift_getOpaqueTypeConformance2();
  v417 = v206;
  v418 = v207;
  v416 = swift_getWitnessTable();
  v414 = swift_getWitnessTable();
  v415 = MEMORY[0x1E697E5D8];
  v208 = swift_getWitnessTable();
  v209 = sub_1E673F530(&qword_1EE2EA538, &qword_1ED096FE8);
  v412 = v208;
  v413 = v209;
  v210 = swift_getWitnessTable();
  v211 = sub_1E673F530(&qword_1EE2EA508, &qword_1ED096FF0);
  v410 = v210;
  v411 = v211;
  v212 = swift_getWitnessTable();
  v408 = v205;
  v409 = v212;
  v213 = swift_getWitnessTable();
  v461 = v321;
  v462 = v319;
  v214 = swift_getOpaqueTypeConformance2();
  v461 = v316;
  v462 = v312;
  v215 = swift_getOpaqueTypeConformance2();
  v406 = v214;
  v407 = v215;
  v216 = swift_getWitnessTable();
  v404 = v213;
  v405 = v216;
  v217 = swift_getWitnessTable();
  v461 = v310;
  v462 = v309;
  v218 = swift_getOpaqueTypeConformance2();
  v461 = v308;
  v462 = v307;
  v219 = swift_getOpaqueTypeConformance2();
  v402 = v218;
  v403 = v219;
  v220 = swift_getWitnessTable();
  v461 = v305;
  v462 = v301;
  v400 = swift_getOpaqueTypeConformance2();
  v401 = v219;
  v221 = swift_getWitnessTable();
  v398 = v220;
  v399 = v221;
  v222 = swift_getWitnessTable();
  v396 = v217;
  v397 = v222;
  v223 = swift_getWitnessTable();
  v461 = v302;
  v462 = v299;
  v224 = swift_getOpaqueTypeConformance2();
  v461 = v298;
  v462 = v297;
  v225 = swift_getOpaqueTypeConformance2();
  v394 = v224;
  v395 = v225;
  v226 = swift_getWitnessTable();
  v461 = v295;
  v462 = v293;
  v227 = swift_getOpaqueTypeConformance2();
  v228 = swift_getWitnessTable();
  v392 = v227;
  v393 = v228;
  v229 = swift_getWitnessTable();
  v390 = v226;
  v391 = v229;
  v230 = swift_getWitnessTable();
  v461 = v291;
  v462 = v289;
  v231 = swift_getOpaqueTypeConformance2();
  v461 = v288;
  v462 = v287;
  v232 = swift_getOpaqueTypeConformance2();
  v388 = v231;
  v389 = v232;
  v233 = swift_getWitnessTable();
  v461 = v284;
  v462 = v280;
  v234 = swift_getOpaqueTypeConformance2();
  v386 = v332;
  v387 = v234;
  v235 = swift_getWitnessTable();
  v384 = v233;
  v385 = v235;
  v236 = swift_getWitnessTable();
  v382 = v230;
  v383 = v236;
  v237 = swift_getWitnessTable();
  v380 = v223;
  v381 = v237;
  v379 = swift_getWitnessTable();
  v377 = swift_getWitnessTable();
  v378 = v329;
  v238 = swift_getWitnessTable();
  v375 = MEMORY[0x1E6981E60];
  v376 = v238;
  v239 = v268;
  v240 = swift_getWitnessTable();
  v241 = v278;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v278, v239, v240);
  return (*(v267 + 8))(v241, v239);
}

uint64_t sub_1E675F550(uint64_t a1, void (*a2)(char *))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1E68B3750();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  v9 = *(AssociatedTypeWitness - 8);
  (*(v9 + 16))(&v11 - v7, a1, AssociatedTypeWitness);
  (*(v9 + 56))(v8, 0, 1, AssociatedTypeWitness);
  a2(v8);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1E675F6D0@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v76 = a5;
  v77 = a4;
  v78 = a3;
  v79 = a2;
  v75 = a1;
  v86 = a7;
  v73 = a12;
  v72 = a13;
  sub_1E68B2440();
  v70 = a6;
  v14 = sub_1E68B1E40();
  v15 = sub_1E68B1E40();
  v69 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v68 = &v62 - v16;
  v17 = sub_1E6761260(&qword_1EE2EA588, MEMORY[0x1E697CBE8]);
  v97 = a13;
  v98 = v17;
  WitnessTable = swift_getWitnessTable();
  v95 = WitnessTable;
  v96 = MEMORY[0x1E697E040];
  v19 = swift_getWitnessTable();
  v85 = v15;
  v93 = v15;
  v94 = v19;
  v88 = v19;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v67 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v66 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v65 = &v62 - v23;
  v24 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v62 - v29;
  v31 = sub_1E68B1E40();
  v62 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v62 - v32;
  v74 = WitnessTable;
  v91 = WitnessTable;
  v92 = MEMORY[0x1E697F568];
  v34 = swift_getWitnessTable();
  v83 = v31;
  v93 = v31;
  v94 = v34;
  v81 = v34;
  v35 = swift_getOpaqueTypeMetadata2();
  v64 = *(v35 - 1);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v62 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v63 = &v62 - v39;
  v84 = OpaqueTypeMetadata2;
  v82 = sub_1E68B2220();
  v80 = *(v82 - 8);
  v40 = MEMORY[0x1EEE9AC00](v82);
  v87 = &v62 - v41;
  LOBYTE(OpaqueTypeMetadata2) = (*(v73 + 40))(v76, v40);
  v79(v77);
  v42 = v70;
  sub_1E68B2900();
  (*(v24 + 8))(v27, v42);
  if (OpaqueTypeMetadata2)
  {
    sub_1E68B2780();
    (*(v71 + 8))(v30, v14);
    sub_1E68B24B0();
    sub_1E68B2E80();
    v43 = v83;
    v44 = v81;
    sub_1E68B2970();
    (*(v62 + 8))(v33, v43);
    v93 = v43;
    v94 = v44;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v46 = v63;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v37, v35, OpaqueTypeConformance2);
    v47 = *(v64 + 8);
    v47(v37, v35);
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v46, v35, OpaqueTypeConformance2);
    v48 = v85;
    v93 = v85;
    v94 = v88;
    swift_getOpaqueTypeConformance2();
    sub_1E6744CC0(v37, v35);
    v47(v37, v35);
    v47(v46, v35);
  }

  else
  {
    sub_1E68B2E80();
    v49 = v68;
    sub_1E68B29F0();
    (*(v71 + 8))(v30, v14);
    sub_1E68B24B0();
    sub_1E68B2E80();
    v79 = v35;
    v50 = v66;
    v48 = v85;
    v51 = v88;
    sub_1E68B2970();
    (*(v69 + 8))(v49, v48);
    v93 = v48;
    v94 = v51;
    v52 = swift_getOpaqueTypeConformance2();
    v53 = v65;
    v54 = v84;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v50, v84, v52);
    v55 = *(v67 + 8);
    v55(v50, v54);
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v53, v54, v52);
    v43 = v83;
    v44 = v81;
    v93 = v83;
    v94 = v81;
    swift_getOpaqueTypeConformance2();
    sub_1E6744DB8(v50, v79, v54);
    v55(v50, v54);
    v55(v53, v54);
  }

  v93 = v43;
  v94 = v44;
  v56 = swift_getOpaqueTypeConformance2();
  v93 = v48;
  v94 = v88;
  v57 = swift_getOpaqueTypeConformance2();
  v89 = v56;
  v90 = v57;
  v58 = v82;
  v59 = swift_getWitnessTable();
  v60 = v87;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v87, v58, v59);
  return (*(v80 + 8))(v60, v58);
}

uint64_t sub_1E6760064@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E68B1820();
  v5 = MEMORY[0x1EEE9AC00](v4);
  (*(v7 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  result = sub_1E68B26D0();
  *a2 = result;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10 & 1;
  *(a2 + 24) = v11;
  return result;
}

uint64_t sub_1E676013C@<X0>(uint64_t (*a1)(char *, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v153 = a7;
  v148 = a4;
  v149 = a6;
  v151 = a5;
  v128 = a3;
  v139 = a2;
  v155 = a1;
  v150 = a8;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097008);
  MEMORY[0x1EEE9AC00](v147);
  v152 = &v124 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v145 = &v124 - v18;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097010);
  MEMORY[0x1EEE9AC00](v137);
  v136 = &v124 - v19;
  v134 = sub_1E68B21B0();
  v133 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134);
  v131 = &v124 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_1E68B25F0();
  v127 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v129 = &v124 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097018);
  MEMORY[0x1EEE9AC00](v135);
  v125 = &v124 - v22;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097020);
  v143 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144);
  v132 = &v124 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097028);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v146 = &v124 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v156 = &v124 - v27;
  v28 = sub_1E68B1820();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v142 = &v124 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v158 = &v124 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v124 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096E68);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v140 = &v124 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v124 - v39;
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v124 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097030);
  MEMORY[0x1EEE9AC00](v44 - 8);
  v46 = &v124 - v45;
  v47 = sub_1E68B1770();
  v48 = *(v47 - 1);
  MEMORY[0x1EEE9AC00](v47);
  v141 = &v124 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v124 - v51;
  sub_1E67612FC(v155, v43, &qword_1ED096E68);
  v155 = *(v29 + 48);
  v53 = v155(v43, 1, v28);
  v157 = v29;
  if (v53 == 1)
  {
    sub_1E6744A10(v43, &qword_1ED096E68);
    (*(v48 + 56))(v46, 1, 1, v47);
    sub_1E68B1810();
    sub_1E68B1760();
    v126 = *(v29 + 8);
    v126(v35, v28);
    if ((*(v48 + 48))(v46, 1, v47) != 1)
    {
      sub_1E6744A10(v46, &qword_1ED097030);
    }
  }

  else
  {
    sub_1E68B1760();
    v126 = *(v29 + 8);
    v126(v43, v28);
    (*(v48 + 56))(v46, 0, 1, v47);
    (*(v48 + 32))(v52, v46, v47);
  }

  v54 = v140;
  v55 = v155;
  v138 = sub_1E6761260(&qword_1ED097038, MEMORY[0x1E6968678]);
  v56 = sub_1E68B3290();
  v140 = v57;
  v58 = v139;
  sub_1E67612FC(v139, v40, &qword_1ED096E68);
  if (v55(v40, 1, v28) == 1)
  {
    sub_1E68B1780();
    v59 = v55(v40, 1, v28);
    v60 = v157;
    if (v59 != 1)
    {
      sub_1E6744A10(v40, &qword_1ED096E68);
    }
  }

  else
  {
    v60 = v157;
    (*(v157 + 32))(v158, v40, v28);
  }

  sub_1E67612FC(v58, v54, &qword_1ED096E68);
  v61 = v155(v54, 1, v28);
  v154 = v28;
  if (v61 == 1)
  {
    sub_1E6744A10(v54, &qword_1ED096E68);
    v62 = 1;
    v63 = v156;
  }

  else
  {
    v139 = v56;
    v155 = v47;
    v64 = v142;
    (*(v60 + 32))(v142, v54, v28);
    v65 = (*(a16 + 40))(a9, a16);
    (*(v60 + 16))(v35, v64, v28);
    v66 = sub_1E68B26D0();
    v68 = v67;
    v70 = v69;
    v71 = (v127 + 104);
    v72 = (v127 + 8);
    if (v65)
    {
      sub_1E68B25A0();
      sub_1E68B2590();

      v73 = v129;
      v74 = v130;
      (*v71)(v129, *MEMORY[0x1E6980EA8], v130);
      sub_1E68B2610();

      (*v72)(v73, v74);
      v75 = sub_1E68B26B0();
      v77 = v76;
      LOBYTE(v73) = v78;
      v80 = v79;

      sub_1E673F0D4(v66, v68, v70 & 1);

      *&v159 = v75;
      *(&v159 + 1) = v77;
      LOBYTE(v160) = v73 & 1;
      v161 = v80;
      v81 = v131;
      sub_1E68B21A0();
      v82 = v125;
      sub_1E68B2950();
      (*(v133 + 8))(v81, v134);
      sub_1E673F0D4(v75, v77, v73 & 1);
    }

    else
    {
      sub_1E68B2570();
      sub_1E68B2590();

      v83 = v129;
      v84 = v130;
      (*v71)(v129, *MEMORY[0x1E6980EA8], v130);
      sub_1E68B2610();

      (*v72)(v83, v84);
      v85 = sub_1E68B26B0();
      v87 = v86;
      v89 = v88;
      v91 = v90;

      sub_1E673F0D4(v66, v68, v70 & 1);

      *&v159 = v85;
      *(&v159 + 1) = v87;
      LOBYTE(v160) = v89 & 1;
      v161 = v91;
      v92 = v131;
      sub_1E68B21A0();
      v82 = v125;
      sub_1E68B2950();
      (*(v133 + 8))(v92, v134);
      sub_1E673F0D4(v85, v87, v89 & 1);
    }

    sub_1E67612FC(v82, v136, &qword_1ED097018);
    swift_storeEnumTagMultiPayload();
    sub_1E6761364();
    v93 = v132;
    sub_1E68B2210();
    sub_1E6744A10(v82, &qword_1ED097018);
    v126(v142, v154);
    v63 = v156;
    sub_1E6761420(v93, v156, &qword_1ED097020);
    v62 = 0;
    v56 = v139;
  }

  (*(v143 + 56))(v63, v62, 1, v144);
  sub_1E68B1760();
  v94 = sub_1E68B3290();
  v96 = v95;
  v97 = v147;
  v98 = *(v147 + 36);
  KeyPath = swift_getKeyPath();
  v100 = v145;
  *&v145[v98] = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097040);
  swift_storeEnumTagMultiPayload();
  v101 = v100 + v97[10];
  type metadata accessor for CGSize(0);
  v162 = 0;
  v163 = 0;
  sub_1E68B2BC0();
  v102 = v160;
  *v101 = v159;
  *(v101 + 16) = v102;
  v103 = v100 + v97[11];
  v162 = 0;
  v163 = 0;
  sub_1E68B2BC0();
  v104 = v160;
  *v103 = v159;
  *(v103 + 16) = v104;
  v105 = v100 + v97[12];
  LOBYTE(v162) = 0;
  sub_1E68B2BC0();
  v106 = *(&v159 + 1);
  *v105 = v159;
  *(v105 + 8) = v106;
  *v100 = 3;
  *(v100 + 8) = 0;
  *&v159 = v56;
  *(&v159 + 1) = v140;
  sub_1E67612A8();
  v107 = sub_1E68B26E0();
  v108 = v100 + v97[13];
  *v108 = v107;
  *(v108 + 8) = v109;
  *(v108 + 16) = v110 & 1;
  *(v108 + 24) = v111;
  v112 = (v100 + v97[14]);
  *v112 = v94;
  v112[1] = v96;
  v113 = (v100 + v97[15]);
  v114 = v149;
  v115 = v151;
  *v113 = v148;
  v113[1] = v115;
  v116 = (v100 + v97[16]);
  v117 = v153;
  *v116 = v114;
  v116[1] = v117;
  v118 = (v100 + v97[18]);
  *v118 = nullsub_5;
  v118[1] = 0;
  v119 = v146;
  sub_1E67612FC(v63, v146, &qword_1ED097028);
  v120 = v152;
  sub_1E67612FC(v100, v152, &qword_1ED097008);
  v121 = v150;
  sub_1E67612FC(v119, v150, &qword_1ED097028);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097048);
  sub_1E67612FC(v120, v121 + *(v122 + 48), &qword_1ED097008);

  sub_1E6744A10(v100, &qword_1ED097008);
  sub_1E6744A10(v156, &qword_1ED097028);
  (*(v157 + 8))(v158, v154);
  sub_1E6744A10(v120, &qword_1ED097008);
  return sub_1E6744A10(v119, &qword_1ED097028);
}

uint64_t sub_1E6761118(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  sub_1E68B3B70();
  MEMORY[0x1E69523D0](0);
  v2 = sub_1E68B3BB0() & ~(-1 << *(a1 + 32));
  return (*(a1 + ((v2 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v2) & 1;
}

uint64_t sub_1E6761260(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E67612A8()
{
  result = qword_1EE2EA4C8;
  if (!qword_1EE2EA4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA4C8);
  }

  return result;
}

uint64_t sub_1E67612FC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1E6761364()
{
  result = qword_1EE2EA800;
  if (!qword_1EE2EA800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097018);
    sub_1E6761260(&qword_1EE2EA588, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA800);
  }

  return result;
}

uint64_t sub_1E6761420(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t CanvasVerticalGridLayout.columnCount.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return *v4;
  }

  (*(v2 + 8))(v4, a1);
  return 0;
}

uint64_t sub_1E67615A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F436E6D756C6F63 && a2 == 0xEB00000000746E75;
  if (v4 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x46797469736E6564 && a2 == 0xED0000726F746361)
  {

    return 1;
  }

  else
  {
    v6 = sub_1E68B3B00();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1E6761680(char a1)
{
  if (a1)
  {
    return 0x46797469736E6564;
  }

  else
  {
    return 0x6F436E6D756C6F63;
  }
}

uint64_t sub_1E67616CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E756F63 && a2 == 0xE500000000000000;
  if (v4 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E6963617073 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_1E68B3B00();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1E6761794(char a1)
{
  sub_1E68B3B70();
  MEMORY[0x1E69523D0](a1 & 1);
  return sub_1E68B3BB0();
}

uint64_t sub_1E67617DC(char a1)
{
  if (a1)
  {
    return 0x676E6963617073;
  }

  else
  {
    return 0x746E756F63;
  }
}

uint64_t sub_1E6761810(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1E68B3B00();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1E67618A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E67615A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E67618D8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E67634C8();
  *a1 = result;
  return result;
}

uint64_t sub_1E6761904(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E6761958(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E67619AC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, void, void, void))
{
  sub_1E68B3B70();
  a4(v8, *v4, *(a2 + 16), *(a2 + 24));
  return sub_1E68B3BB0();
}

uint64_t sub_1E6761A14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E67616CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E6761A44(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E6761A98(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t _s15FitnessCanvasUI11NullArtworkO9hashValueSivg_0()
{
  sub_1E68B3B70();
  MEMORY[0x1E69523D0](0);
  return sub_1E68B3BB0();
}

uint64_t sub_1E6761B38()
{
  sub_1E68B3B70();
  MEMORY[0x1E69523D0](0);
  return sub_1E68B3BB0();
}

uint64_t sub_1E6761B84@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E6761AEC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1E6761BB4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E6761C08(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t CanvasVerticalGridLayout.encode(to:)(void *a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  v38 = type metadata accessor for CanvasVerticalGridLayout.DensityFactorCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v6 = sub_1E68B3AC0();
  v40 = *(v6 - 8);
  v41 = v6;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v37 = v31 - v8;
  v39 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v35 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CanvasVerticalGridLayout.ColumnCountCodingKeys();
  v31[0] = swift_getWitnessTable();
  v31[1] = v10;
  v11 = sub_1E68B3AC0();
  v33 = *(v11 - 8);
  v34 = v11;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v32 = v31 - v13;
  v14 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v4;
  v43 = v5;
  type metadata accessor for CanvasVerticalGridLayout.CodingKeys();
  swift_getWitnessTable();
  v44 = sub_1E68B3AC0();
  v46 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v18 = v31 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E68B3BD0();
  (*(v14 + 16))(v16, v45, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = v39;
    v20 = v35;
    v21 = v43;
    (*(v39 + 32))(v35, v16, v43);
    v52 = 1;
    v22 = v37;
    v23 = v44;
    sub_1E68B3A30();
    v24 = v41;
    sub_1E68B3AB0();
    (*(v40 + 8))(v22, v24);
    (*(v19 + 8))(v20, v21);
    return (*(v46 + 8))(v18, v23);
  }

  else
  {
    v26 = *(v16 + 1);
    v51 = 0;
    v27 = v32;
    v28 = v44;
    sub_1E68B3A30();
    v50 = 0;
    v29 = v34;
    v30 = v47;
    sub_1E68B3AA0();
    if (!v30)
    {
      v49 = v26;
      v48 = 1;
      sub_1E67621E8();
      sub_1E68B3AB0();
    }

    (*(v33 + 8))(v27, v29);
    return (*(v46 + 8))(v18, v28);
  }
}

unint64_t sub_1E67621E8()
{
  result = qword_1EE2EDE68;
  if (!qword_1EE2EDE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EDE68);
  }

  return result;
}

uint64_t CanvasVerticalGridLayout.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v48 = a4;
  v58 = type metadata accessor for CanvasVerticalGridLayout.DensityFactorCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v52 = sub_1E68B3A20();
  v51 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v59 = &v45 - v7;
  v8 = type metadata accessor for CanvasVerticalGridLayout.ColumnCountCodingKeys();
  v9 = swift_getWitnessTable();
  v55 = v8;
  v54 = v9;
  v50 = sub_1E68B3A20();
  v49 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v57 = &v45 - v10;
  type metadata accessor for CanvasVerticalGridLayout.CodingKeys();
  swift_getWitnessTable();
  v62 = sub_1E68B3A20();
  v64 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v12 = &v45 - v11;
  v63 = a2;
  v53 = a3;
  v13 = type metadata accessor for CanvasVerticalGridLayout();
  v60 = *(v13 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v45 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v45 - v20;
  v22 = a1[3];
  v66 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  v61 = v12;
  v23 = v65;
  sub_1E68B3BC0();
  if (!v23)
  {
    v65 = v16;
    v46 = v19;
    v47 = v21;
    v24 = v61;
    v25 = v62;
    *&v67 = sub_1E68B3A10();
    sub_1E68B33B0();
    swift_getWitnessTable();
    *&v69 = sub_1E68B37A0();
    *(&v69 + 1) = v26;
    *&v70 = v27;
    *(&v70 + 1) = v28;
    sub_1E68B3790();
    swift_getWitnessTable();
    sub_1E68B36B0();
    v29 = v67;
    if (v67 == 2 || (v45 = v69, v67 = v69, v68 = v70, (sub_1E68B36E0() & 1) == 0))
    {
      v33 = sub_1E68B3870();
      swift_allocError();
      v35 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097050);
      *v35 = v13;
      sub_1E68B3980();
      sub_1E68B3860();
      (*(*(v33 - 8) + 104))(v35, *MEMORY[0x1E69E6AF8], v33);
      swift_willThrow();
      (*(v64 + 8))(v24, v25);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v29)
      {
        LOBYTE(v67) = 1;
        v30 = v59;
        sub_1E68B3970();
        v31 = v60;
        v32 = v52;
        sub_1E68B3A00();
        (*(v51 + 8))(v30, v32);
        (*(v64 + 8))(v24, v25);
        swift_unknownObjectRelease();
        v41 = v65;
      }

      else
      {
        LOBYTE(v67) = 0;
        v36 = v57;
        sub_1E68B3970();
        v31 = v60;
        LOBYTE(v67) = 0;
        v38 = v50;
        v39 = sub_1E68B39F0();
        v40 = v64;
        v65 = v39;
        v71 = 1;
        sub_1E6762A60();
        sub_1E68B3A00();
        (*(v49 + 8))(v36, v38);
        (*(v40 + 8))(v24, v25);
        swift_unknownObjectRelease();
        v42 = v67;
        v41 = v46;
        *v46 = v65;
        *(v41 + 1) = v42;
      }

      swift_storeEnumTagMultiPayload();
      v43 = *(v31 + 32);
      v44 = v47;
      v43(v47, v41, v13);
      v43(v48, v44, v13);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v66);
}

unint64_t sub_1E6762A60()
{
  result = qword_1ED097058[0];
  if (!qword_1ED097058[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED097058);
  }

  return result;
}

uint64_t static CanvasVerticalGridLayout.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = a1;
  v30 = a2;
  v27 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v26[0] = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26[1] = v5;
  v6 = type metadata accessor for CanvasVerticalGridLayout();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = (v26 - v11);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v14 = *(TupleTypeMetadata2 - 8);
  v15 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v17 = v26 - v16;
  v18 = (v26 + *(v15 + 48) - v16);
  v28 = v7;
  v19 = *(v7 + 16);
  v19(v26 - v16, v29, v6);
  v19(v18, v30, v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19(v10, v17, v6);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v20 = v27;
      v21 = v26[0];
      (*(v27 + 32))(v26[0], v18, a3);
      v22 = sub_1E68B3190();
      v23 = *(v20 + 8);
      v23(v21, a3);
      v23(v10, a3);
LABEL_10:
      v14 = v28;
      TupleTypeMetadata2 = v6;
      goto LABEL_11;
    }

    (*(v27 + 8))(v10, a3);
  }

  else
  {
    v19(v12, v17, v6);
    v24 = v12[1];
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v22 = *v12 == *v18 && v24 == v18[1];
      goto LABEL_10;
    }
  }

  v22 = 0;
LABEL_11:
  (*(v14 + 8))(v17, TupleTypeMetadata2);
  return v22 & 1;
}

uint64_t CanvasVerticalGridLayout.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9, v11, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v4 + 32))(v7, v9, v3);
    MEMORY[0x1E69523D0](1);
    sub_1E68B3140();
    return (*(v4 + 8))(v7, v3);
  }

  else
  {
    v13 = *v9;
    v14 = v9[1];
    MEMORY[0x1E69523D0](0);
    MEMORY[0x1E69523D0](v13);
    v15 = 0.0;
    if (v14 != 0.0)
    {
      v15 = v14;
    }

    return MEMORY[0x1E69523F0](*&v15);
  }
}

uint64_t CanvasVerticalGridLayout.hashValue.getter(uint64_t a1)
{
  sub_1E68B3B70();
  CanvasVerticalGridLayout.hash(into:)(v3, a1);
  return sub_1E68B3BB0();
}

uint64_t sub_1E6763090(uint64_t a1, uint64_t a2)
{
  sub_1E68B3B70();
  CanvasVerticalGridLayout.hash(into:)(v4, a2);
  return sub_1E68B3BB0();
}

uint64_t sub_1E67630FC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 16;
  if (*(v3 + 64) > 0x10uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_1E6763214(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t initializeBufferWithCopyOfBuffer for LazyCanvasItemContent(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CanvasLazyFetcherError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CanvasLazyFetcherError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
    *result = a2 - 1;
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

  *(result + 25) = v3;
  return result;
}

uint64_t sub_1E6763598(uint64_t a1)
{
  if (*(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E67635B4(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 24) = 1;
  }

  else
  {
    *(result + 24) = 0;
  }

  return result;
}

uint64_t sub_1E6763610@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, __int128 a10, uint64_t a11, __int128 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097040);
  swift_storeEnumTagMultiPayload();
  v24 = type metadata accessor for LargeBrickView();
  (*(*(a17 - 8) + 32))(a9 + v24[17], a1, a17);
  (*(*(a18 - 8) + 32))(a9 + v24[18], a2, a18);
  (*(*(a19 - 8) + 32))(a9 + v24[19], a3, a19);
  v25 = (a9 + v24[20]);
  *v25 = a4;
  v25[1] = a5;
  v25[2] = a6;
  v25[3] = a7;
  v26 = a9 + v24[22];
  *v26 = a8;
  *(v26 + 8) = a10;
  *(v26 + 3) = a11;
  v27 = a9 + v24[23];
  *v27 = a12;
  *(v27 + 2) = a13;
  *(v27 + 3) = a14;
  v28 = (a9 + v24[21]);
  result = swift_allocObject();
  *(result + 16) = a15;
  *(result + 24) = a16;
  *v28 = sub_1E673F5E0;
  v28[1] = result;
  return result;
}

uint64_t LargeBrickView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v77 = sub_1E68B1EB0();
  v75 = *(v77 - 8);
  v3 = MEMORY[0x1EEE9AC00](v77);
  v74 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = *(a1 - 8);
  v72 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v70 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1;
  v68 = *(a1 + 16);
  v7 = v68;
  v8 = sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E0);
  v9 = sub_1E68B1E40();
  v69 = *(v6 + 40);
  v10 = v6;
  v66 = v6;
  v101 = v69;
  v102 = MEMORY[0x1E697F568];
  v11 = MEMORY[0x1E697E858];
  v65 = v8;
  WitnessTable = swift_getWitnessTable();
  v13 = sub_1E673F530(&qword_1EE2EA878, &qword_1ED0971E0);
  v99 = WitnessTable;
  v100 = v13;
  v64 = WitnessTable;
  v63 = swift_getWitnessTable();
  v91 = v8;
  v92 = MEMORY[0x1E6981CD8];
  v14 = MEMORY[0x1E6981CD8];
  v62 = v9;
  v93 = v9;
  v94 = v9;
  v95 = WitnessTable;
  v96 = MEMORY[0x1E6981CD0];
  v15 = MEMORY[0x1E6981CD0];
  v97 = v63;
  v98 = v63;
  v60 = MEMORY[0x1E6981460];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E8);
  v16.i64[0] = v7;
  v67 = v16;
  v78 = *(v10 + 24);
  v91 = v78.i64[0];
  v92 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971F0);
  v93 = MEMORY[0x1E6981840];
  v94 = v78.i64[1];
  swift_getTupleTypeMetadata();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2C50();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971F8);
  sub_1E68B1E40();
  swift_getTupleTypeMetadata3();
  sub_1E68B2F00();
  swift_getWitnessTable();
  v17 = sub_1E68B2CC0();
  v18 = sub_1E68B1E40();
  v19 = sub_1E68B1E40();
  v20 = swift_getWitnessTable();
  v21 = MEMORY[0x1E697E5D8];
  v89 = v20;
  v90 = MEMORY[0x1E697E5D8];
  v59 = v11;
  v22 = swift_getWitnessTable();
  v87 = v22;
  v88 = v21;
  v23 = swift_getWitnessTable();
  v91 = v17;
  v92 = v14;
  v93 = v19;
  v94 = v18;
  v95 = v20;
  v96 = v15;
  v97 = v23;
  v98 = v22;
  swift_getOpaqueTypeMetadata2();
  v91 = v17;
  v92 = v14;
  v93 = v19;
  v94 = v18;
  v95 = v20;
  v96 = v15;
  v97 = v23;
  v98 = v22;
  swift_getOpaqueTypeConformance2();
  sub_1E68B1F40();
  v24 = sub_1E68B1E40();
  v91 = v65;
  v92 = v14;
  v93 = v62;
  v94 = v62;
  v95 = v64;
  v96 = v15;
  v97 = v63;
  v98 = v63;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = swift_getWitnessTable();
  v85 = OpaqueTypeConformance2;
  v86 = v26;
  OpaqueTypeMetadata2 = v24;
  v64 = swift_getWitnessTable();
  v27 = sub_1E68B2C30();
  v65 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v60 = &v55 - v28;
  v29 = swift_getWitnessTable();
  v59 = v29;
  v58 = sub_1E6768CBC(&qword_1EE2EA680, MEMORY[0x1E697C248]);
  v91 = v27;
  v92 = v77;
  v93 = v29;
  v94 = v58;
  v62 = MEMORY[0x1E697CDB0];
  v30 = swift_getOpaqueTypeMetadata2();
  v63 = *(v30 - 8);
  v31 = MEMORY[0x1EEE9AC00](v30);
  v56 = &v55 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v57 = &v55 - v33;
  v34 = v71;
  v35 = v70;
  v36 = v73;
  v37 = v66;
  (*(v71 + 16))(v70, v73, v66);
  v38 = (*(v34 + 80) + 64) & ~*(v34 + 80);
  v39 = swift_allocObject();
  *&v40 = vdupq_laneq_s64(v78, 1).u64[0];
  v41 = v69;
  *(&v40 + 1) = v69;
  *(v39 + 16) = vzip1q_s64(v67, v78);
  *(v39 + 32) = v40;
  v42 = v37;
  v43 = *(v37 + 48);
  v44 = *(v42 + 56);
  *(v39 + 48) = v43;
  *(v39 + 56) = v44;
  (*(v34 + 32))(v39 + v38, v35);
  v79 = v68;
  v80 = v78;
  v81 = v41;
  v82 = v43;
  v83 = v44;
  v84 = v36;
  v45 = v60;
  sub_1E68B2C20();
  v46 = v74;
  _s7SwiftUI20PrimitiveButtonStyleP013FitnessCanvasB0AA05PlaindE0VRszrlE10searchCardAFvgZ_0();
  v47 = v56;
  v48 = v77;
  v49 = v59;
  v50 = v58;
  sub_1E68B2790();
  (*(v75 + 8))(v46, v48);
  (*(v65 + 8))(v45, v27);
  v91 = v27;
  v92 = v48;
  v93 = v49;
  v94 = v50;
  v51 = swift_getOpaqueTypeConformance2();
  v52 = v57;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v47, v30, v51);
  v53 = *(v63 + 8);
  v53(v47, v30);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v52, v30, v51);
  return (v53)(v52, v30);
}

uint64_t sub_1E67641EC(uint64_t a1)
{
  v1 = a1 + *(type metadata accessor for LargeBrickView() + 84);
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;

  sub_1E677A174(v2);
}

uint64_t sub_1E6764290()
{
  v1 = *(type metadata accessor for LargeBrickView() - 8);
  v2 = v0 + ((*(v1 + 80) + 64) & ~*(v1 + 80));

  return sub_1E67641EC(v2);
}

uint64_t sub_1E676434C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v79 = a6;
  v80 = a7;
  v75 = a3;
  v76 = a5;
  v63 = a4;
  v77 = a2;
  v81 = a1;
  v73 = a8;
  v11 = sub_1E68B1E40();
  v72 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v70 = &v56 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E0);
  v13 = sub_1E68B1E40();
  v117 = a5;
  v118 = MEMORY[0x1E697F568];
  v14 = MEMORY[0x1E697E858];
  v15 = v11;
  v69 = v11;
  WitnessTable = swift_getWitnessTable();
  v17 = sub_1E673F530(&qword_1EE2EA878, &qword_1ED0971E0);
  v115 = WitnessTable;
  v116 = v17;
  v68 = WitnessTable;
  v18 = swift_getWitnessTable();
  v107 = v15;
  v108 = MEMORY[0x1E6981CD8];
  v19 = MEMORY[0x1E6981CD8];
  v67 = v13;
  v109 = v13;
  v110 = v13;
  v111 = WitnessTable;
  v112 = MEMORY[0x1E6981CD0];
  v20 = MEMORY[0x1E6981CD0];
  v66 = v18;
  v113 = v18;
  v114 = v18;
  v74 = MEMORY[0x1E6981460];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v71 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v65 = &v56 - v21;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E8);
  v107 = a3;
  v108 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971F0);
  v109 = MEMORY[0x1E6981840];
  v110 = a4;
  swift_getTupleTypeMetadata();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2C50();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971F8);
  sub_1E68B1E40();
  swift_getTupleTypeMetadata3();
  sub_1E68B2F00();
  swift_getWitnessTable();
  v22 = sub_1E68B2CC0();
  v23 = sub_1E68B1E40();
  v24 = sub_1E68B1E40();
  v25 = swift_getWitnessTable();
  v26 = MEMORY[0x1E697E5D8];
  v105 = v25;
  v106 = MEMORY[0x1E697E5D8];
  v64 = v14;
  v27 = swift_getWitnessTable();
  v103 = v27;
  v104 = v26;
  v28 = swift_getWitnessTable();
  v107 = v22;
  v108 = v19;
  v109 = v24;
  v110 = v23;
  v111 = v25;
  v112 = v20;
  v113 = v28;
  v114 = v27;
  v58 = swift_getOpaqueTypeMetadata2();
  v107 = v22;
  v108 = v19;
  v109 = v24;
  v110 = v23;
  v111 = v25;
  v112 = MEMORY[0x1E6981CD0];
  v113 = v28;
  v114 = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v60 = sub_1E68B1F40();
  v29 = sub_1E68B1E40();
  v30 = *(v29 - 8);
  v61 = v29;
  v62 = v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v56 = &v56 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v57 = &v56 - v33;
  v34 = v76;
  v35 = v77;
  v36 = v75;
  v107 = v77;
  v108 = v75;
  v37 = v63;
  v109 = v63;
  v110 = v76;
  v39 = v79;
  v38 = v80;
  v111 = v79;
  v112 = v80;
  type metadata accessor for LargeBrickView();
  v40 = v70;
  sub_1E68B2770();
  sub_1E68B2E00();
  v95 = v35;
  v96 = v36;
  v97 = v37;
  v98 = v34;
  v99 = v39;
  v100 = v38;
  v89 = v35;
  v90 = v36;
  v91 = v37;
  v92 = v34;
  v93 = v39;
  v94 = v38;
  v41 = swift_checkMetadataState();
  v42 = v66;
  v43 = v68;
  v44 = v65;
  v45 = v69;
  v46 = MEMORY[0x1E6981CD8];
  sub_1E68B2AD0();
  (*(v72 + 8))(v40, v45);
  sub_1E68B2E30();
  v82 = v77;
  v83 = v75;
  v84 = v37;
  v85 = v76;
  v86 = v79;
  v87 = v80;
  v88 = v81;
  v107 = v45;
  v108 = v46;
  v109 = v41;
  v110 = v41;
  v111 = v43;
  v112 = MEMORY[0x1E6981CD0];
  v113 = v42;
  v114 = v42;
  v47 = swift_getOpaqueTypeConformance2();
  v48 = v56;
  v49 = OpaqueTypeMetadata2;
  sub_1E68B2A40();
  (*(v71 + 8))(v44, v49);
  v50 = swift_getWitnessTable();
  v101 = v47;
  v102 = v50;
  v51 = v61;
  v52 = swift_getWitnessTable();
  v53 = v57;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v48, v51, v52);
  v54 = *(v62 + 8);
  v54(v48, v51);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v53, v51, v52);
  return (v54)(v53, v51);
}

uint64_t sub_1E6764AE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  v24[0] = a1;
  v24[1] = a3;
  v4 = sub_1E68B1F00();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E0);
  v7 = sub_1E68B1E40();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v24 - v12;
  sub_1E68B1A50();
  v15 = v14;
  v16 = *(v4 + 20);
  v17 = *MEMORY[0x1E697F468];
  v18 = sub_1E68B2160();
  (*(*(v18 - 8) + 104))(&v6[v16], v17, v18);
  *v6 = v15;
  *(v6 + 1) = v15;
  v24[4] = a2;
  v24[5] = MEMORY[0x1E697F568];
  WitnessTable = swift_getWitnessTable();
  sub_1E6768CBC(&qword_1EE2EA660, MEMORY[0x1E697EAF0]);
  sub_1E68B2AE0();
  sub_1E6768D04(v6);
  v20 = sub_1E673F530(&qword_1EE2EA878, &qword_1ED0971E0);
  v24[2] = WitnessTable;
  v24[3] = v20;
  v21 = swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v11, v7, v21);
  v22 = *(v8 + 8);
  v22(v11, v7);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v13, v7, v21);
  return (v22)(v13, v7);
}

uint64_t sub_1E6764DD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  v27[0] = a1;
  v27[1] = a3;
  v4 = sub_1E68B1F00();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E68B1E40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E0);
  v7 = sub_1E68B1E40();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v27 - v12;
  v14 = *(v4 + 20);
  v15 = *MEMORY[0x1E697F468];
  v16 = sub_1E68B2160();
  (*(*(v16 - 8) + 104))(&v6[v14], v15, v16);
  __asm { FMOV            V0.2D, #4.0 }

  *v6 = _Q0;
  v27[4] = a2;
  v27[5] = MEMORY[0x1E697F568];
  WitnessTable = swift_getWitnessTable();
  sub_1E6768CBC(&qword_1EE2EA660, MEMORY[0x1E697EAF0]);
  sub_1E68B2AE0();
  sub_1E6768D04(v6);
  v23 = sub_1E673F530(&qword_1EE2EA878, &qword_1ED0971E0);
  v27[2] = WitnessTable;
  v27[3] = v23;
  v24 = swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v11, v7, v24);
  v25 = *(v8 + 8);
  v25(v11, v7);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v13, v7, v24);
  return (v25)(v13, v7);
}

uint64_t sub_1E67650C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v72 = a7;
  v79 = a6;
  v59 = a5;
  v80 = a1;
  v78 = a8;
  v74 = sub_1E68B1E00();
  v71 = *(v74 - 8);
  v11 = MEMORY[0x1EEE9AC00](v74);
  v70 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v68 = &v56 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E8);
  v81 = a3;
  v82 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971F0);
  v83 = MEMORY[0x1E6981840];
  v84 = a4;
  swift_getTupleTypeMetadata();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2C50();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971F8);
  sub_1E68B1E40();
  swift_getTupleTypeMetadata3();
  v14 = sub_1E68B2F00();
  WitnessTable = swift_getWitnessTable();
  v64 = v14;
  v62 = WitnessTable;
  v16 = sub_1E68B2CC0();
  v75 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v73 = &v56 - v17;
  v18 = sub_1E68B1E40();
  v19 = sub_1E68B1E40();
  v20 = swift_getWitnessTable();
  v21 = MEMORY[0x1E697E5D8];
  v91 = v20;
  v92 = MEMORY[0x1E697E5D8];
  v22 = swift_getWitnessTable();
  v89 = v22;
  v90 = v21;
  v23 = swift_getWitnessTable();
  v57 = v16;
  v81 = v16;
  v82 = MEMORY[0x1E6981CD8];
  v60 = v19;
  v83 = v19;
  v84 = v18;
  v65 = v18;
  v69 = v20;
  v85 = v20;
  v86 = MEMORY[0x1E6981CD0];
  v61 = v23;
  v87 = v23;
  v88 = v22;
  v67 = v22;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v63 = *(OpaqueTypeMetadata2 - 8);
  v24 = MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v26 = &v56 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v58 = &v56 - v27;
  v76 = a2;
  v77 = a4;
  v81 = a2;
  v82 = a3;
  v83 = a4;
  v84 = v59;
  v28 = v72;
  v85 = v79;
  v86 = v72;
  type metadata accessor for LargeBrickView();
  v29 = v68;
  sub_1E677A48C(v68);
  v30 = v71;
  v31 = v70;
  v32 = v74;
  (*(v71 + 104))(v70, *MEMORY[0x1E697E7D0], v74);
  LOBYTE(v19) = sub_1E68B1DF0();
  v33 = *(v30 + 8);
  v33(v31, v32);
  v33(v29, v32);
  if (v19)
  {
    v34 = sub_1E68B21D0();
  }

  else
  {
    v34 = sub_1E68B21E0();
  }

  MEMORY[0x1EEE9AC00](v34);
  *(&v56 - 8) = v76;
  *(&v56 - 7) = a3;
  v35 = v73;
  sub_1E68B2CB0();
  v36 = sub_1E68B2E00();
  v80 = &v56;
  v37 = MEMORY[0x1EEE9AC00](v36);
  MEMORY[0x1EEE9AC00](v37);
  v55 = v28;
  v38 = swift_checkMetadataState();
  v39 = swift_checkMetadataState();
  v40 = v67;
  v54 = v67;
  v41 = v61;
  v53 = v61;
  v52 = MEMORY[0x1E6981CD0];
  v42 = v69;
  v50 = v39;
  v51 = v69;
  v43 = v57;
  v44 = MEMORY[0x1E6981CD8];
  sub_1E68B2AD0();
  (*(v75 + 8))(v35, v43);
  v81 = v43;
  v82 = v44;
  v83 = v38;
  v84 = v39;
  v85 = v42;
  v86 = MEMORY[0x1E6981CD0];
  v87 = v41;
  v88 = v40;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v46 = v58;
  v47 = OpaqueTypeMetadata2;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v26, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v48 = *(v63 + 8);
  v48(v26, v47);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v46, v47, OpaqueTypeConformance2);
  return (v48)(v46, v47);
}

uint64_t sub_1E6765854@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v58 = a7;
  v65 = a8;
  v66 = sub_1E68B1E00();
  v67 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v64 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = a3;
  v49 = a3;
  v84 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971F0);
  v85 = MEMORY[0x1E6981840];
  v86 = a4;
  swift_getTupleTypeMetadata();
  v57 = sub_1E68B2F00();
  WitnessTable = swift_getWitnessTable();
  v54 = sub_1E68B2C50();
  v61 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v53 = &v48 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971F8);
  v62 = sub_1E68B1E40();
  v63 = *(v62 - 8);
  v17 = MEMORY[0x1EEE9AC00](v62);
  v52 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v60 = &v48 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0971E8);
  v55 = v20;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v59 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v48 - v23;
  *v24 = sub_1E68B2140();
  *(v24 + 1) = 0;
  v24[16] = 0;
  v25 = &v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097200) + 44)];
  v51 = v24;
  v26 = a1;
  v27 = a1;
  v28 = v58;
  sub_1E6765F2C(v27, a2, a3, a4, a5, a6, v58, v25);
  KeyPath = swift_getKeyPath();
  v30 = &v24[*(v20 + 36)];
  v31 = *(v16 + 28);
  v50 = *MEMORY[0x1E697E7D0];
  v32 = *(v67 + 104);
  v32(v30 + v31);
  *v30 = KeyPath;
  v68 = a2;
  v69 = v49;
  v70 = a4;
  v71 = a5;
  v72 = a6;
  v73 = v28;
  v74 = v26;
  sub_1E68B2140();
  v33 = v53;
  sub_1E68B2C40();
  swift_getKeyPath();
  v34 = v64;
  v35 = v66;
  (v32)(v64, v50, v66);
  v36 = v54;
  v37 = swift_getWitnessTable();
  v38 = v52;
  sub_1E68B27B0();

  (*(v67 + 8))(v34, v35);
  (*(v61 + 8))(v33, v36);
  v39 = sub_1E673F530(&qword_1ED097208, &qword_1ED0971F8);
  v81 = v37;
  v82 = v39;
  v40 = v62;
  v41 = swift_getWitnessTable();
  v42 = v60;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v38, v40, v41);
  v43 = v63;
  v44 = *(v63 + 8);
  v44(v38, v40);
  v45 = v51;
  v46 = v59;
  sub_1E67612FC(v51, v59, &qword_1ED0971E8);
  v79 = 0;
  v80 = 1;
  v83 = v46;
  v84 = &v79;
  (*(v43 + 16))(v38, v42, v40);
  v85 = v38;
  v78[0] = v55;
  v78[1] = MEMORY[0x1E6981840];
  v78[2] = v40;
  v75 = sub_1E676852C();
  v76 = MEMORY[0x1E6981838];
  v77 = v41;
  sub_1E6848F14(&v83, 3uLL, v78);
  v44(v42, v40);
  sub_1E6744A10(v45, &qword_1ED0971E8);
  v44(v38, v40);
  return sub_1E6744A10(v46, &qword_1ED0971E8);
}

uint64_t sub_1E6765F2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *&v58 = a6;
  *(&v58 + 1) = a7;
  v56 = a8;
  v57 = a1;
  v12 = sub_1E68B1E00();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v45 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097268);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v45 - v20;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097270);
  v22 = MEMORY[0x1EEE9AC00](v52);
  v55 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v53 = &v45 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v54 = &v45 - v26;
  v48 = a2;
  v49 = a3;
  *&v68 = a2;
  *(&v68 + 1) = a3;
  v50 = a4;
  v51 = a5;
  *&v69 = a4;
  *(&v69 + 1) = a5;
  v70 = v58;
  type metadata accessor for LargeBrickView();
  sub_1E677A48C(v18);
  v27 = *(v13 + 104);
  v47 = *MEMORY[0x1E697E7D0];
  v46 = v27;
  v27(v16);
  LOBYTE(a2) = sub_1E68B1DF0();
  v28 = *(v13 + 8);
  v28(v16, v12);
  v28(v18, v12);
  if (a2)
  {
    v29 = sub_1E68B21D0();
  }

  else
  {
    v29 = sub_1E68B21E0();
  }

  *v21 = v29;
  *(v21 + 1) = 0;
  v21[16] = 1;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097278);
  sub_1E6766488(v57, v48, v49, v50, v51, v58, *(&v58 + 1), &v21[*(v30 + 44)]);
  sub_1E677A48C(v18);
  v46(v16, v47, v12);
  v31 = sub_1E68B1DF0();
  v28(v16, v12);
  v28(v18, v12);
  if (v31)
  {
    sub_1E68B2E30();
  }

  else
  {
    sub_1E68B2E40();
  }

  sub_1E68B1F30();
  v32 = v53;
  sub_1E6761420(v21, v53, &qword_1ED097268);
  v33 = (v32 + *(v52 + 36));
  v34 = v66;
  v33[4] = v65;
  v33[5] = v34;
  v33[6] = v67;
  v35 = v62;
  *v33 = v61;
  v33[1] = v35;
  v36 = v64;
  v33[2] = v63;
  v33[3] = v36;
  v37 = v54;
  sub_1E6761420(v32, v54, &qword_1ED097270);
  sub_1E68B2E80();
  sub_1E68B1F30();
  *&v59[55] = v71;
  *&v59[71] = v72;
  *&v59[87] = v73;
  *&v59[103] = v74;
  *&v59[7] = v68;
  *&v59[23] = v69;
  v60 = 1;
  *&v59[39] = v70;
  v38 = v55;
  sub_1E67612FC(v37, v55, &qword_1ED097270);
  v39 = v56;
  sub_1E67612FC(v38, v56, &qword_1ED097270);
  v40 = v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097280) + 48);
  v41 = *&v59[80];
  *(v40 + 73) = *&v59[64];
  *(v40 + 89) = v41;
  *(v40 + 105) = *&v59[96];
  v42 = *&v59[16];
  *(v40 + 9) = *v59;
  *(v40 + 25) = v42;
  v43 = *&v59[48];
  *(v40 + 41) = *&v59[32];
  *v40 = 0;
  *(v40 + 8) = 1;
  *(v40 + 120) = *&v59[111];
  *(v40 + 57) = v43;
  sub_1E6744A10(v37, &qword_1ED097270);
  return sub_1E6744A10(v38, &qword_1ED097270);
}

uint64_t sub_1E6766488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(void, void, void)@<X6>, char *a8@<X8>)
{
  v116 = a6;
  v117 = a7;
  v115 = a5;
  v94 = a8;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097288);
  v95 = *(v96 - 8);
  v12 = MEMORY[0x1EEE9AC00](v96);
  v93 = v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v118 = v88 - v14;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097228);
  MEMORY[0x1EEE9AC00](v119);
  v122 = v88 - v15;
  v16 = sub_1E68B1E00();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = v88 - v21;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097290);
  v23 = MEMORY[0x1EEE9AC00](v121);
  v25 = v88 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v27 = v88 - v26;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097298);
  MEMORY[0x1EEE9AC00](v114);
  v113 = v88 - v28;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0972A0);
  v91 = *(v92 - 8);
  v29 = MEMORY[0x1EEE9AC00](v92);
  v90 = v88 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v120 = v88 - v31;
  v124 = a2;
  v125 = a3;
  v126 = a4;
  v127 = v115;
  v128 = v116;
  v129 = v117;
  v104 = type metadata accessor for LargeBrickView();
  v32 = (a1 + *(v104 + 92));
  v34 = *v32;
  v33 = v32[1];
  v35 = v32[2];
  v116 = v32[3];
  v117 = v33;
  sub_1E673F228(v34, v33, v35, v116);
  LODWORD(v115) = sub_1E68B2310();
  KeyPath = swift_getKeyPath();
  v111 = a1;
  v112 = KeyPath;
  sub_1E677A48C(v22);
  v37 = *(v17 + 104);
  v103 = *MEMORY[0x1E697E7D0];
  v105 = v17 + 104;
  v102 = v37;
  v37(v20);
  LOBYTE(a1) = sub_1E68B1DF0();
  v38 = *(v17 + 8);
  v108 = v20;
  v38(v20, v16);
  v107 = v22;
  v109 = v17 + 8;
  v110 = v16;
  v106 = v38;
  v38(v22, v16);
  if (a1)
  {
    v39 = 0;
  }

  else
  {
    v39 = 2;
  }

  LOBYTE(v124) = 0;
  v40 = swift_getKeyPath();
  v41 = v124;
  v42 = &v27[*(v121 + 36)];
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0972A8);
  v43 = *(v100 + 28);
  v44 = *MEMORY[0x1E6980FA8];
  v45 = sub_1E68B2650();
  v46 = *(v45 - 8);
  v47 = *(v46 + 104);
  v101 = v44;
  v99 = v45;
  v98 = v47;
  v97 = v46 + 104;
  (v47)(v42 + v43, v44);
  *v42 = swift_getKeyPath();
  *v27 = v34;
  v48 = v113;
  v49 = v114;
  v50 = v116;
  *(v27 + 1) = v117;
  *(v27 + 2) = v35;
  *(v27 + 3) = v50;
  *(v27 + 8) = v115;
  *(v27 + 5) = v112;
  *(v27 + 6) = 4;
  v27[56] = v41;
  *(v27 + 8) = v40;
  v27[72] = v39;
  sub_1E676896C(v27, v48);
  *(v48 + *(v49 + 36)) = 0x4000000000000000;
  v51 = *MEMORY[0x1E697E6E8];
  v52 = sub_1E68B1DE0();
  v53 = *(v52 - 8);
  v54 = *(v53 + 104);
  v55 = v53 + 104;
  v54(v122, v51, v52);
  v56 = sub_1E6768CBC(&qword_1EE2EA840, MEMORY[0x1E697E730]);
  result = sub_1E68B3190();
  if (result)
  {
    sub_1E67689DC();
    LODWORD(v116) = v51;
    v117 = v54;
    v58 = sub_1E673F530(&qword_1EE2EA418, &qword_1ED097228);
    v115 = v55;
    v59 = v122;
    v88[1] = v58;
    sub_1E68B2870();
    sub_1E6744A10(v59, &qword_1ED097228);
    sub_1E6744A10(v48, &qword_1ED097298);
    v60 = (v111 + *(v104 + 88));
    v61 = *v60;
    v62 = v60[1];
    v63 = v60[3];
    v112 = v60[2];
    v113 = v61;
    sub_1E673F228(v61, v62, v112, v63);
    LODWORD(v104) = sub_1E68B2310();
    v89 = swift_getKeyPath();
    v114 = v56;
    v64 = v107;
    sub_1E677A48C(v107);
    v65 = v108;
    v66 = v110;
    v102(v108, v103, v110);
    v67 = sub_1E68B1DF0();
    v68 = v106;
    v106(v65, v66);
    v68(v64, v66);
    if (v67)
    {
      v69 = 0;
    }

    else
    {
      v69 = 2;
    }

    v123 = 0;
    v70 = swift_getKeyPath();
    v71 = v123;
    v72 = &v25[*(v121 + 36)];
    v98(v72 + *(v100 + 28), v101, v99);
    *v72 = swift_getKeyPath();
    v73 = v112;
    *v25 = v113;
    *(v25 + 1) = v62;
    *(v25 + 2) = v73;
    *(v25 + 3) = v63;
    *(v25 + 8) = v104;
    *(v25 + 5) = v89;
    *(v25 + 6) = 3;
    v25[56] = v71;
    *(v25 + 8) = v70;
    v25[72] = v69;
    v117(v59, v116, v52);
    result = sub_1E68B3190();
    if (result)
    {
      sub_1E6768A94();
      v74 = v118;
      v75 = v122;
      sub_1E68B2870();
      sub_1E6744A10(v75, &qword_1ED097228);
      sub_1E6744A10(v25, &qword_1ED097290);
      v76 = v91;
      v77 = *(v91 + 16);
      v78 = v90;
      v79 = v92;
      v77(v90, v120, v92);
      v80 = v95;
      v122 = *(v95 + 16);
      v81 = v93;
      v82 = v74;
      v83 = v96;
      (v122)(v93, v82, v96);
      v84 = v94;
      v77(v94, v78, v79);
      v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0972C0);
      (v122)(&v84[*(v85 + 48)], v81, v83);
      v86 = *(v80 + 8);
      v86(v118, v83);
      v87 = *(v76 + 8);
      v87(v120, v79);
      v86(v81, v83);
      return (v87)(v78, v79);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E6766EBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v66 = a8;
  v67 = *(a4 - 8);
  v15 = MEMORY[0x1EEE9AC00](a1);
  v74 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v65 = &v54 - v17;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097228);
  MEMORY[0x1EEE9AC00](v70);
  v19 = &v54 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0971F0);
  v63 = *(v20 - 8);
  v64 = v20;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v73 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v71 = &v54 - v24;
  v61 = *(a3 - 8);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v72 = &v54 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v54 - v27;
  *&v92 = a2;
  *(&v92 + 1) = a3;
  v68 = a4;
  *&v93 = a4;
  *(&v93 + 1) = a5;
  *&v94 = a6;
  *(&v94 + 1) = a7;
  v60 = a7;
  v29 = type metadata accessor for LargeBrickView();
  v30 = a1 + *(v29 + 72);
  v69 = v28;
  v62 = a6;
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v30, a3, a6);
  v58 = v29;
  v59 = a1;
  v31 = (a1 + *(v29 + 80));
  v32 = *v31;
  v33 = v31[1];
  v34 = v31[2];
  v35 = v31[3];
  LODWORD(v28) = sub_1E68B2310();
  KeyPath = swift_getKeyPath();
  LOBYTE(v92) = 0;
  v37 = swift_getKeyPath();
  *&v86 = v32;
  *(&v86 + 1) = v33;
  *&v87 = v34;
  *(&v87 + 1) = v35;
  LODWORD(v88) = v28;
  *(&v88 + 1) = 0x3FF0000000000000;
  *&v89 = KeyPath;
  *(&v89 + 1) = 1;
  LOBYTE(v90) = 0;
  *(&v90 + 1) = v37;
  v91 = 0;
  v38 = *MEMORY[0x1E697E6E8];
  v39 = sub_1E68B1DE0();
  (*(*(v39 - 8) + 104))(v19, v38, v39);
  sub_1E673F228(v32, v33, v34, v35);
  sub_1E6768CBC(&qword_1EE2EA840, MEMORY[0x1E697E730]);
  result = sub_1E68B3190();
  if (result)
  {
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097230);
    v56 = sub_1E6768610();
    v55 = sub_1E673F530(&qword_1EE2EA418, &qword_1ED097228);
    sub_1E68B2870();
    sub_1E6744A10(v19, &qword_1ED097228);
    v94 = v88;
    v95 = v89;
    v96 = v90;
    v97 = v91;
    v92 = v86;
    v93 = v87;
    sub_1E6744A10(&v92, &qword_1ED097230);
    v41 = v65;
    v42 = v68;
    v43 = v60;
    j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v59 + *(v58 + 76), v68, v60);
    v44 = v61;
    v45 = v72;
    (*(v61 + 16))(v72, v69, a3);
    *&v86 = v45;
    v47 = v63;
    v46 = v64;
    v48 = v73;
    (*(v63 + 16))();
    v84 = 0;
    v85 = 1;
    *(&v86 + 1) = v48;
    *&v87 = &v84;
    v49 = v67;
    v50 = v74;
    (*(v67 + 16))(v74, v41, v42);
    *(&v87 + 1) = v50;
    v83[0] = a3;
    v83[1] = v46;
    v83[2] = MEMORY[0x1E6981840];
    v83[3] = v42;
    v75 = v57;
    v76 = v70;
    v77 = v56;
    v78 = v55;
    v79 = v62;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v81 = MEMORY[0x1E6981838];
    v82 = v43;
    sub_1E6848F14(&v86, 4uLL, v83);
    v51 = *(v49 + 8);
    v51(v41, v42);
    v52 = *(v47 + 8);
    v52(v71, v46);
    v53 = *(v44 + 8);
    v53(v69, a3);
    v51(v74, v42);
    v52(v73, v46);
    return (v53)(v72, a3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E676754C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v21[1] = a3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E8);
  v21[6] = a1;
  v21[7] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971F0);
  v21[8] = MEMORY[0x1E6981840];
  v21[9] = a2;
  swift_getTupleTypeMetadata();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2C50();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971F8);
  sub_1E68B1E40();
  swift_getTupleTypeMetadata3();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  v5 = sub_1E68B1E40();
  v21[0] = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v21 - v6;
  v8 = sub_1E68B1E40();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v21 - v13;
  sub_1E68B24F0();
  WitnessTable = swift_getWitnessTable();
  sub_1E68B2A70();
  sub_1E68B2560();
  v21[4] = WitnessTable;
  v21[5] = MEMORY[0x1E697E5D8];
  v16 = MEMORY[0x1E697E5D8];
  v17 = swift_getWitnessTable();
  sub_1E68B2A70();
  (*(v21[0] + 8))(v7, v5);
  v21[2] = v17;
  v21[3] = v16;
  v18 = swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v12, v8, v18);
  v19 = *(v9 + 8);
  v19(v12, v8);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v14, v8, v18);
  return (v19)(v14, v8);
}

uint64_t sub_1E67678FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E8);
  v17[2] = a3;
  v17[3] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971F0);
  v17[4] = MEMORY[0x1E6981840];
  v17[5] = a4;
  swift_getTupleTypeMetadata();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2C50();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971F8);
  sub_1E68B1E40();
  swift_getTupleTypeMetadata3();
  sub_1E68B2F00();
  swift_getWitnessTable();
  sub_1E68B2CC0();
  v6 = sub_1E68B1E40();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v17 - v11;
  WitnessTable = swift_getWitnessTable();
  sub_1E68B2A50();
  v17[0] = WitnessTable;
  v17[1] = MEMORY[0x1E697E5D8];
  v14 = swift_getWitnessTable();
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v10, v6, v14);
  v15 = *(v7 + 8);
  v15(v10, v6);
  j_j___s15FitnessCanvasUI19ViewModifierBuilderO17buildPartialBlock5firstQrx_t05SwiftC00dE0RzlFZ_0(v12, v6, v14);
  return (v15)(v12, v6);
}

void sub_1E6767C08()
{
  sub_1E67683F8();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v3 <= 0x3F)
        {
          sub_1E673ED38();
          if (v4 <= 0x3F)
          {
            sub_1E673ED88();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1E6767D04(_DWORD *a1, unsigned int a2, void *a3)
{
  v6 = *(*(sub_1E68B1E00() - 8) + 64);
  if (v6 <= 8)
  {
    v7 = 8;
  }

  else
  {
    v7 = v6;
  }

  v8 = a3[3];
  v9 = *(a3[2] - 8);
  v10 = *(v9 + 84);
  v11 = *(v8 - 8);
  v12 = *(v11 + 84);
  if (v10 <= v12)
  {
    v13 = *(v11 + 84);
  }

  else
  {
    v13 = *(v9 + 84);
  }

  v14 = a3[4];
  v15 = *(v14 - 8);
  v16 = *(v15 + 84);
  v17 = *(v9 + 80);
  v18 = *(*(a3[2] - 8) + 64);
  v19 = *(v11 + 80);
  v20 = *(*(v8 - 8) + 64);
  v21 = *(v15 + 80);
  if (v13 <= v16)
  {
    v22 = *(v15 + 84);
  }

  else
  {
    v22 = v13;
  }

  if (v22 <= 0x7FFFFFFF)
  {
    v22 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v23 = v7 + v17 + 1;
  v24 = *(v15 + 64) + 7;
  if (v22 >= a2)
  {
    goto LABEL_35;
  }

  v25 = ((((((((v24 + ((v20 + v21 + ((v18 + v19 + (v23 & ~v17)) & ~v19)) & ~v21)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 32;
  v26 = a2 - v22;
  if ((v25 & 0xFFFFFFF8) != 0)
  {
    v27 = 2;
  }

  else
  {
    v27 = v26 + 1;
  }

  if (v27 >= 0x10000)
  {
    v28 = 4;
  }

  else
  {
    v28 = 2;
  }

  if (v27 < 0x100)
  {
    v28 = 1;
  }

  if (v27 >= 2)
  {
    v29 = v28;
  }

  else
  {
    v29 = 0;
  }

  if (v29 <= 1)
  {
    if (!v29)
    {
      goto LABEL_35;
    }

    v30 = *(a1 + v25);
    if (!*(a1 + v25))
    {
      goto LABEL_35;
    }

LABEL_32:
    v32 = v30 - 1;
    if ((v25 & 0xFFFFFFF8) != 0)
    {
      v32 = 0;
      v33 = *a1;
    }

    else
    {
      v33 = 0;
    }

    return v22 + (v33 | v32) + 1;
  }

  if (v29 == 2)
  {
    v30 = *(a1 + v25);
    if (*(a1 + v25))
    {
      goto LABEL_32;
    }
  }

  else
  {
    v30 = *(a1 + v25);
    if (v30)
    {
      goto LABEL_32;
    }
  }

LABEL_35:
  v34 = (a1 + v23) & ~v17;
  if (v10 == v22)
  {
    v35 = *(v9 + 48);

    return v35(v34);
  }

  v36 = (v34 + v18 + v19) & ~v19;
  if (v12 == v22)
  {
    v37 = *(v11 + 48);
    v38 = *(v11 + 84);
    v39 = v8;

    return v37(v36, v38, v39);
  }

  v36 = (v36 + v20 + v21) & ~v21;
  if (v16 == v22)
  {
    v37 = *(v15 + 48);
    v38 = *(v15 + 84);
    v39 = v14;

    return v37(v36, v38, v39);
  }

  v40 = *((((v24 + v36) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8);
  if (v40 >= 0xFFFFFFFF)
  {
    LODWORD(v40) = -1;
  }

  return (v40 + 1);
}

void sub_1E676805C(_DWORD *a1, uint64_t a2, unsigned int a3, void *a4)
{
  v8 = *(*(sub_1E68B1E00() - 8) + 64);
  v9 = *(a4[2] - 8);
  if (v8 <= 8)
  {
    v10 = 8;
  }

  else
  {
    v10 = v8;
  }

  v11 = *(a4[2] - 8);
  v12 = *(v9 + 84);
  v13 = a4[3];
  v14 = a4[4];
  v15 = *(v13 - 8);
  v16 = *(v15 + 84);
  if (v12 <= v16)
  {
    v17 = *(v15 + 84);
  }

  else
  {
    v17 = *(v9 + 84);
  }

  v18 = *(v14 - 8);
  v19 = *(v18 + 84);
  v20 = *(v9 + 80);
  v21 = *(v9 + 64);
  v22 = *(v15 + 80);
  v23 = *(*(a4[3] - 8) + 64);
  v24 = *(v18 + 80);
  v25 = *(v18 + 64);
  if (v17 <= v19)
  {
    v26 = *(v18 + 84);
  }

  else
  {
    v26 = v17;
  }

  if (v26 <= 0x7FFFFFFF)
  {
    v26 = 0x7FFFFFFF;
  }

  v27 = v10 + v20 + 1;
  v28 = v25 + 7;
  v29 = ((((((((v25 + 7 + ((v23 + v24 + ((v21 + v22 + (v27 & ~v20)) & ~v22)) & ~v24)) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v26 >= a3)
  {
    v31 = 0;
    v32 = a2 - v26;
    if (a2 <= v26)
    {
      goto LABEL_24;
    }

LABEL_29:
    if (v29)
    {
      v33 = 1;
    }

    else
    {
      v33 = v32;
    }

    if (v29)
    {
      v34 = ~v26 + a2;
      bzero(a1, v29);
      *a1 = v34;
    }

    if (v31 > 1)
    {
      if (v31 == 2)
      {
        *(a1 + v29) = v33;
      }

      else
      {
        *(a1 + v29) = v33;
      }
    }

    else if (v31)
    {
      *(a1 + v29) = v33;
    }

    return;
  }

  if (v29)
  {
    v30 = 2;
  }

  else
  {
    v30 = a3 - v26 + 1;
  }

  if (v30 >= 0x10000)
  {
    v31 = 4;
  }

  else
  {
    v31 = 2;
  }

  if (v30 < 0x100)
  {
    v31 = 1;
  }

  if (v30 < 2)
  {
    v31 = 0;
  }

  v32 = a2 - v26;
  if (a2 > v26)
  {
    goto LABEL_29;
  }

LABEL_24:
  if (v31 > 1)
  {
    if (v31 != 2)
    {
      *(a1 + v29) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_40;
    }

    *(a1 + v29) = 0;
LABEL_39:
    if (!a2)
    {
      return;
    }

    goto LABEL_40;
  }

  if (!v31)
  {
    goto LABEL_39;
  }

  *(a1 + v29) = 0;
  if (!a2)
  {
    return;
  }

LABEL_40:
  v35 = (a1 + v27) & ~v20;
  if (v12 != v26)
  {
    v37 = (v35 + v21 + v22) & ~v22;
    if (v16 == v26)
    {
      v38 = *(v15 + 56);
      v39 = a2;
      v40 = v16;
      v41 = v13;
    }

    else
    {
      v37 = (v37 + v23 + v24) & ~v24;
      if (v19 != v26)
      {
        v42 = ((((v28 + v37) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v42 = a2 & 0x7FFFFFFF;
          v42[1] = 0;
        }

        else
        {
          *v42 = (a2 - 1);
        }

        return;
      }

      v38 = *(v18 + 56);
      v39 = a2;
      v40 = v19;
      v41 = v14;
    }

    v38(v37, v39, v40, v41);
    return;
  }

  v36 = *(v11 + 56);

  v36(v35, a2);
}

void sub_1E67683F8()
{
  if (!qword_1EE2EA888)
  {
    sub_1E68B1E00();
    v0 = sub_1E68B1BA0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2EA888);
    }
  }
}

unint64_t sub_1E676852C()
{
  result = qword_1ED097210;
  if (!qword_1ED097210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0971E8);
    sub_1E673F530(&qword_1ED097218, &qword_1ED097220);
    sub_1E673F530(&qword_1ED097208, &qword_1ED0971F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097210);
  }

  return result;
}

unint64_t sub_1E6768610()
{
  result = qword_1EE2EA6B8;
  if (!qword_1EE2EA6B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097230);
    sub_1E67686C8();
    sub_1E673F530(&qword_1EE2EA5B8, &qword_1ED097260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA6B8);
  }

  return result;
}

unint64_t sub_1E67686C8()
{
  result = qword_1EE2EA6E8;
  if (!qword_1EE2EA6E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097238);
    sub_1E6768780();
    sub_1E673F530(&qword_1EE2EA598, &qword_1ED096E48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA6E8);
  }

  return result;
}

unint64_t sub_1E6768780()
{
  result = qword_1EE2EA758;
  if (!qword_1EE2EA758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097240);
    sub_1E6768838();
    sub_1E673F530(&qword_1EE2EA5F8, &qword_1ED097258);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA758);
  }

  return result;
}

unint64_t sub_1E6768838()
{
  result = qword_1EE2EA7F0;
  if (!qword_1EE2EA7F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097248);
    sub_1E67688F0();
    sub_1E673F530(&qword_1EE2EA5D0, &qword_1ED096DA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA7F0);
  }

  return result;
}

unint64_t sub_1E67688F0()
{
  result = qword_1EE2EA570;
  if (!qword_1EE2EA570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097250);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA570);
  }

  return result;
}

uint64_t sub_1E676896C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097290);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E67689DC()
{
  result = qword_1EE2EA6A0;
  if (!qword_1EE2EA6A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097298);
    sub_1E6768A94();
    sub_1E673F530(&qword_1EE2EA5F8, &qword_1ED097258);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA6A0);
  }

  return result;
}

unint64_t sub_1E6768A94()
{
  result = qword_1EE2EA6B0;
  if (!qword_1EE2EA6B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED097290);
    sub_1E6768B4C();
    sub_1E673F530(&qword_1EE2EA5A8, &qword_1ED0972A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA6B0);
  }

  return result;
}

unint64_t sub_1E6768B4C()
{
  result = qword_1EE2EA6E0;
  if (!qword_1EE2EA6E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0972B0);
    sub_1E6768C04();
    sub_1E673F530(&qword_1EE2EA5B8, &qword_1ED097260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA6E0);
  }

  return result;
}

unint64_t sub_1E6768C04()
{
  result = qword_1EE2EA750;
  if (!qword_1EE2EA750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0972B8);
    sub_1E6768838();
    sub_1E673F530(&qword_1EE2EA598, &qword_1ED096E48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EA750);
  }

  return result;
}

uint64_t sub_1E6768CBC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E6768D04(uint64_t a1)
{
  v2 = sub_1E68B1F00();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E6768D60()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E6768D94()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 12;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_1E6768DC8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  if (v1 != v2)
  {
    if (v1 >= v2)
    {
      __break(1u);
      return result;
    }

    *(v0 + 16) = v1 + 1;
  }

  return v1 == v2;
}

uint64_t sub_1E6768DF4()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E6768E28()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E6768E5C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1E6768E90(char a1)
{
  result = 0x61436E6F69746361;
  switch(a1)
  {
    case 1:
      result = 0x746469576C6C7566;
      break;
    case 2:
      result = 0x697463416F666E69;
      break;
    case 3:
      result = 0x697242656772616CLL;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
    case 9:
      result = 0xD000000000000015;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0x647261646E617473;
      break;
    case 8:
      result = 0xD000000000000017;
      break;
    case 10:
      result = 0x437972616D6D7573;
      break;
    case 11:
      result = 0x647261436C6C6174;
      break;
    case 12:
      result = 0xD000000000000011;
      break;
    case 13:
      result = 0x6369724265646977;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E6769054(uint64_t a1)
{
  v2 = sub_1E676B158();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6769090(uint64_t a1)
{
  v2 = sub_1E676B158();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E67690D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E676F12C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E6769108(uint64_t a1)
{
  v2 = sub_1E676A978();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6769144(uint64_t a1)
{
  v2 = sub_1E676A978();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E6769180(uint64_t a1)
{
  v2 = sub_1E676B0B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E67691BC(uint64_t a1)
{
  v2 = sub_1E676B0B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E67691F8(uint64_t a1)
{
  v2 = sub_1E676B008();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6769234(uint64_t a1)
{
  v2 = sub_1E676B008();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E676927C(uint64_t a1)
{
  v2 = sub_1E676AFB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E67692B8(uint64_t a1)
{
  v2 = sub_1E676AFB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E67692F4(uint64_t a1)
{
  v2 = sub_1E676AF60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6769330(uint64_t a1)
{
  v2 = sub_1E676AF60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E676936C(uint64_t a1)
{
  v2 = sub_1E676AEB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E67693A8(uint64_t a1)
{
  v2 = sub_1E676AEB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E67693E4(uint64_t a1)
{
  v2 = sub_1E676AE10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6769420(uint64_t a1)
{
  v2 = sub_1E676AE10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E676945C(uint64_t a1)
{
  v2 = sub_1E676AD68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6769498(uint64_t a1)
{
  v2 = sub_1E676AD68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E67694D4(uint64_t a1)
{
  v2 = sub_1E676ACC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6769510(uint64_t a1)
{
  v2 = sub_1E676ACC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E676954C(uint64_t a1)
{
  v2 = sub_1E676AC18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6769588(uint64_t a1)
{
  v2 = sub_1E676AC18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E67695C4(uint64_t a1)
{
  v2 = sub_1E676AB70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6769600(uint64_t a1)
{
  v2 = sub_1E676AB70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E676963C(uint64_t a1)
{
  v2 = sub_1E676AAC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6769678(uint64_t a1)
{
  v2 = sub_1E676AAC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E67696B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x74756F79616CLL && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E68B3B00();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E6769738(uint64_t a1)
{
  v2 = sub_1E676AA20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6769774(uint64_t a1)
{
  v2 = sub_1E676AA20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E67697B0(uint64_t a1)
{
  v2 = sub_1E676A9CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E67697EC(uint64_t a1)
{
  v2 = sub_1E676A9CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LazyCanvasItemContent.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0972C8);
  v176 = *(v4 - 8);
  v177 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v174 = &v141 - v5;
  *&v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0972D0);
  *&v179 = *(v180 - 8);
  MEMORY[0x1EEE9AC00](v180);
  v178 = &v141 - v6;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0972D8);
  v173 = *(v175 - 8);
  MEMORY[0x1EEE9AC00](v175);
  v172 = &v141 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0972E0);
  v170 = *(v8 - 8);
  v171 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v169 = &v141 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0972E8);
  v167 = *(v10 - 8);
  v168 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v166 = &v141 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0972F0);
  v164 = *(v12 - 8);
  v165 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v163 = &v141 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0972F8);
  v161 = *(v14 - 8);
  v162 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v160 = &v141 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097300);
  v158 = *(v16 - 8);
  v159 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v157 = &v141 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097308);
  v155 = *(v18 - 8);
  v156 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v154 = &v141 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097310);
  v152 = *(v20 - 8);
  v153 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v151 = &v141 - v21;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097318);
  v146 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149);
  v143 = &v141 - v22;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097320);
  v148 = *(v150 - 8);
  MEMORY[0x1EEE9AC00](v150);
  v144 = &v141 - v23;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097328);
  v145 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147);
  v25 = &v141 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097330);
  v142 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v141 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097338);
  v30 = *(v29 - 8);
  v182 = v29;
  v183 = v30;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v141 - v31;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E676A978();
  v181 = v32;
  sub_1E68B3BD0();
  v33 = v2[13];
  v200[12] = v2[12];
  v200[13] = v33;
  v201[0] = v2[14];
  *(v201 + 9) = *(v2 + 233);
  v34 = v2[9];
  v200[8] = v2[8];
  v200[9] = v34;
  v35 = v2[11];
  v200[10] = v2[10];
  v200[11] = v35;
  v36 = v2[5];
  v200[4] = v2[4];
  v200[5] = v36;
  v37 = v2[7];
  v200[6] = v2[6];
  v200[7] = v37;
  v38 = v2[1];
  v200[0] = *v2;
  v200[1] = v38;
  v39 = v2[3];
  v200[2] = v2[2];
  v200[3] = v39;
  switch(sub_1E67424C4(v200))
  {
    case 1u:
      v95 = nullsub_5(v200);
      LOBYTE(v184) = 1;
      sub_1E676B0B0();
      v96 = v181;
      v57 = v182;
      sub_1E68B3A30();
      v97 = v95[1];
      v184 = *v95;
      v185 = v97;
      v98 = v95[2];
      v99 = v95[3];
      v100 = v95[5];
      v188 = v95[4];
      v189 = v100;
      v186 = v98;
      v187 = v99;
      v101 = v95[6];
      v102 = v95[7];
      v103 = v95[9];
      v192 = v95[8];
      v193 = v103;
      v190 = v101;
      v191 = v102;
      v104 = v95[10];
      v105 = v95[11];
      v106 = v95[13];
      v196 = v95[12];
      v197 = v106;
      v194 = v104;
      v195 = v105;
      sub_1E676B104();
      v107 = v147;
      sub_1E68B3AB0();
      (*(v145 + 8))(v25, v107);
      v108 = *(v183 + 8);
      v109 = v96;
      goto LABEL_17;
    case 2u:
      v80 = nullsub_5(v200);
      LOBYTE(v184) = 2;
      sub_1E676B008();
      v56 = v144;
      v58 = v181;
      v57 = v182;
      sub_1E68B3A30();
      v81 = *v80;
      v82 = v80[1];
      v83 = v80[3];
      v186 = v80[2];
      v187 = v83;
      v184 = v81;
      v185 = v82;
      sub_1E676B05C();
      v65 = v150;
      sub_1E68B3AB0();
      v66 = v148;
      goto LABEL_16;
    case 3u:
      v84 = nullsub_5(v200);
      v85 = *v84;
      v86 = v84[1];
      LOBYTE(v184) = 4;
      sub_1E676AF60();
      v69 = v151;
      v71 = v181;
      v70 = v182;
      sub_1E68B3A30();
      *&v184 = v85;
      *(&v184 + 1) = v86;
      sub_1E676AE64();
      v72 = v153;
      sub_1E68B3AB0();
      v73 = v152;
      goto LABEL_12;
    case 4u:
      v67 = nullsub_5(v200);
      v180 = *v67;
      v68 = *(v67 + 16);
      LOBYTE(v184) = 5;
      sub_1E676AEB8();
      v69 = v154;
      v71 = v181;
      v70 = v182;
      sub_1E68B3A30();
      v184 = v180;
      *&v185 = v68;
      sub_1E676AF0C();
      v72 = v156;
      sub_1E68B3AB0();
      v73 = v155;
      goto LABEL_12;
    case 5u:
      v110 = nullsub_5(v200);
      v111 = *v110;
      v112 = v110[1];
      LOBYTE(v184) = 6;
      sub_1E676AE10();
      v69 = v157;
      v71 = v181;
      v70 = v182;
      sub_1E68B3A30();
      *&v184 = v111;
      *(&v184 + 1) = v112;
      sub_1E676AE64();
      v72 = v159;
      sub_1E68B3AB0();
      v73 = v158;
      goto LABEL_12;
    case 6u:
      v115 = nullsub_5(v200);
      LOBYTE(v184) = 7;
      sub_1E676AD68();
      v56 = v160;
      v58 = v181;
      v57 = v182;
      sub_1E68B3A30();
      v116 = *v115;
      v117 = *(v115 + 32);
      v185 = *(v115 + 16);
      v186 = v117;
      v184 = v116;
      v118 = *(v115 + 48);
      v119 = *(v115 + 64);
      v120 = *(v115 + 80);
      *&v190 = *(v115 + 96);
      v188 = v119;
      v189 = v120;
      v187 = v118;
      sub_1E676ADBC();
      v65 = v162;
      sub_1E68B3AB0();
      v66 = v161;
      goto LABEL_16;
    case 7u:
      v87 = nullsub_5(v200);
      LOBYTE(v184) = 8;
      sub_1E676ACC0();
      v56 = v163;
      v58 = v181;
      v57 = v182;
      sub_1E68B3A30();
      v88 = v87[1];
      v184 = *v87;
      v185 = v88;
      v89 = v87[2];
      v90 = v87[3];
      v91 = v87[5];
      v188 = v87[4];
      v189 = v91;
      v186 = v89;
      v187 = v90;
      v92 = v87[6];
      v93 = v87[7];
      v94 = v87[9];
      v192 = v87[8];
      v193 = v94;
      v190 = v92;
      v191 = v93;
      sub_1E676AD14();
      v65 = v165;
      sub_1E68B3AB0();
      v66 = v164;
      goto LABEL_16;
    case 8u:
      v129 = nullsub_5(v200);
      v130 = *v129;
      v131 = *(v129 + 8);
      v132 = *(v129 + 16);
      v133 = *(v129 + 24);
      v134 = *(v129 + 32);
      v135 = *(v129 + 40);
      v136 = *(v129 + 48);
      LOBYTE(v184) = 9;
      sub_1E676AC18();
      v137 = v166;
      v139 = v181;
      v138 = v182;
      sub_1E68B3A30();
      LOBYTE(v184) = v130;
      *(&v184 + 1) = v131;
      *&v185 = v132;
      *(&v185 + 1) = v133;
      LOBYTE(v186) = v134;
      *(&v186 + 1) = v135;
      *&v187 = v136;
      sub_1E676AC6C();
      v140 = v168;
      sub_1E68B3AB0();
      (*(v167 + 8))(v137, v140);
      v108 = *(v183 + 8);
      v109 = v139;
      v121 = v138;
      return v108(v109, v121);
    case 9u:
      v77 = nullsub_5(v200);
      v78 = *(v77 + 32);
      LOBYTE(v184) = 10;
      sub_1E676AB70();
      v79 = *v77;
      v179 = *(v77 + 16);
      v180 = v79;
      v69 = v169;
      v71 = v181;
      v70 = v182;
      sub_1E68B3A30();
      v184 = v180;
      v185 = v179;
      *&v186 = v78;
      sub_1E676ABC4();
      v72 = v171;
      sub_1E68B3AB0();
      v73 = v170;
LABEL_12:
      (*(v73 + 8))(v69, v72);
      return (*(v183 + 8))(v71, v70);
    case 0xAu:
      v122 = nullsub_5(v200);
      v180 = *v122;
      v123 = *(v122 + 16);
      v124 = *(v122 + 24);
      v125 = *(v122 + 32);
      v126 = *(v122 + 40);
      LOBYTE(v184) = 11;
      sub_1E676AAC8();
      v127 = v172;
      v42 = v181;
      v41 = v182;
      sub_1E68B3A30();
      v184 = v180;
      *&v185 = v123;
      BYTE8(v185) = v124;
      *&v186 = v125;
      *(&v186 + 1) = v126;
      sub_1E676AB1C();
      v128 = v175;
      sub_1E68B3AB0();
      (*(v173 + 8))(v127, v128);
      goto LABEL_19;
    case 0xBu:
      v55 = nullsub_5(v200);
      LOBYTE(v184) = 12;
      sub_1E676AA20();
      v56 = v178;
      v58 = v181;
      v57 = v182;
      sub_1E68B3A30();
      v59 = *v55;
      v60 = v55[1];
      v61 = v55[3];
      v186 = v55[2];
      v187 = v61;
      v184 = v59;
      v185 = v60;
      v62 = v55[4];
      v63 = v55[5];
      v64 = v55[7];
      v190 = v55[6];
      v191 = v64;
      v188 = v62;
      v189 = v63;
      sub_1E676AA74();
      v65 = v180;
      sub_1E68B3AB0();
      v66 = v179;
LABEL_16:
      (*(v66 + 8))(v56, v65);
      v108 = *(v183 + 8);
      v109 = v58;
LABEL_17:
      v121 = v57;
      return v108(v109, v121);
    case 0xCu:
      LOBYTE(v184) = 3;
      sub_1E676AFB4();
      v74 = v143;
      v75 = v181;
      v76 = v182;
      sub_1E68B3A30();
      (*(v146 + 8))(v74, v149);
      goto LABEL_14;
    case 0xDu:
      LOBYTE(v184) = 13;
      sub_1E676A9CC();
      v114 = v174;
      v75 = v181;
      v76 = v182;
      sub_1E68B3A30();
      (*(v176 + 8))(v114, v177);
LABEL_14:
      result = (*(v183 + 8))(v75, v76);
      break;
    default:
      v40 = nullsub_5(v200);
      LOBYTE(v184) = 0;
      sub_1E676B158();
      v42 = v181;
      v41 = v182;
      sub_1E68B3A30();
      v43 = *v40;
      v44 = *(v40 + 16);
      v45 = *(v40 + 48);
      v186 = *(v40 + 32);
      v187 = v45;
      v184 = v43;
      v185 = v44;
      v46 = *(v40 + 64);
      v47 = *(v40 + 80);
      v48 = *(v40 + 112);
      v190 = *(v40 + 96);
      v191 = v48;
      v188 = v46;
      v189 = v47;
      v49 = *(v40 + 128);
      v50 = *(v40 + 144);
      v51 = *(v40 + 176);
      v194 = *(v40 + 160);
      v195 = v51;
      v192 = v49;
      v193 = v50;
      v52 = *(v40 + 192);
      v53 = *(v40 + 208);
      v54 = *(v40 + 224);
      v199 = *(v40 + 240);
      v197 = v53;
      v198 = v54;
      v196 = v52;
      sub_1E676B1AC();
      sub_1E68B3AB0();
      (*(v142 + 8))(v28, v26);
LABEL_19:
      result = (*(v183 + 8))(v42, v41);
      break;
  }

  return result;
}

unint64_t sub_1E676A978()
{
  result = qword_1ED097340;
  if (!qword_1ED097340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097340);
  }

  return result;
}

unint64_t sub_1E676A9CC()
{
  result = qword_1ED097348;
  if (!qword_1ED097348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097348);
  }

  return result;
}

unint64_t sub_1E676AA20()
{
  result = qword_1ED097350;
  if (!qword_1ED097350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097350);
  }

  return result;
}

unint64_t sub_1E676AA74()
{
  result = qword_1ED097358;
  if (!qword_1ED097358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097358);
  }

  return result;
}

unint64_t sub_1E676AAC8()
{
  result = qword_1ED097360;
  if (!qword_1ED097360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097360);
  }

  return result;
}

unint64_t sub_1E676AB1C()
{
  result = qword_1EE2EB700;
  if (!qword_1EE2EB700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EB700);
  }

  return result;
}

unint64_t sub_1E676AB70()
{
  result = qword_1ED097368;
  if (!qword_1ED097368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097368);
  }

  return result;
}

unint64_t sub_1E676ABC4()
{
  result = qword_1ED097370;
  if (!qword_1ED097370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097370);
  }

  return result;
}

unint64_t sub_1E676AC18()
{
  result = qword_1ED097378;
  if (!qword_1ED097378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097378);
  }

  return result;
}

unint64_t sub_1E676AC6C()
{
  result = qword_1EE2EAB78;
  if (!qword_1EE2EAB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EAB78);
  }

  return result;
}

unint64_t sub_1E676ACC0()
{
  result = qword_1ED097380;
  if (!qword_1ED097380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097380);
  }

  return result;
}

unint64_t sub_1E676AD14()
{
  result = qword_1ED097388;
  if (!qword_1ED097388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097388);
  }

  return result;
}

unint64_t sub_1E676AD68()
{
  result = qword_1ED097390;
  if (!qword_1ED097390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097390);
  }

  return result;
}

unint64_t sub_1E676ADBC()
{
  result = qword_1ED097398;
  if (!qword_1ED097398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097398);
  }

  return result;
}

unint64_t sub_1E676AE10()
{
  result = qword_1ED0973A0;
  if (!qword_1ED0973A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0973A0);
  }

  return result;
}

unint64_t sub_1E676AE64()
{
  result = qword_1ED0973A8;
  if (!qword_1ED0973A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0973A8);
  }

  return result;
}

unint64_t sub_1E676AEB8()
{
  result = qword_1ED0973B0;
  if (!qword_1ED0973B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0973B0);
  }

  return result;
}

unint64_t sub_1E676AF0C()
{
  result = qword_1ED0973B8;
  if (!qword_1ED0973B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0973B8);
  }

  return result;
}

unint64_t sub_1E676AF60()
{
  result = qword_1ED0973C0;
  if (!qword_1ED0973C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0973C0);
  }

  return result;
}

unint64_t sub_1E676AFB4()
{
  result = qword_1ED0973C8;
  if (!qword_1ED0973C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0973C8);
  }

  return result;
}

unint64_t sub_1E676B008()
{
  result = qword_1ED0973D0;
  if (!qword_1ED0973D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0973D0);
  }

  return result;
}

unint64_t sub_1E676B05C()
{
  result = qword_1ED0973D8;
  if (!qword_1ED0973D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0973D8);
  }

  return result;
}

unint64_t sub_1E676B0B0()
{
  result = qword_1ED0973E0;
  if (!qword_1ED0973E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0973E0);
  }

  return result;
}

unint64_t sub_1E676B104()
{
  result = qword_1ED0973E8;
  if (!qword_1ED0973E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0973E8);
  }

  return result;
}

unint64_t sub_1E676B158()
{
  result = qword_1ED0973F0;
  if (!qword_1ED0973F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0973F0);
  }

  return result;
}

unint64_t sub_1E676B1AC()
{
  result = qword_1EE2EB360;
  if (!qword_1EE2EB360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2EB360);
  }

  return result;
}

uint64_t LazyCanvasItemContent.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v161 = a2;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0973F8);
  v162 = *(v166 - 8);
  MEMORY[0x1EEE9AC00](v166);
  v159 = v121 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097400);
  v148 = *(v4 - 8);
  v149 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v160 = v121 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097408);
  v146 = *(v6 - 8);
  v147 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v158 = v121 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097410);
  v144 = *(v8 - 8);
  v145 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v157 = v121 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097418);
  v142 = *(v10 - 8);
  v143 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v156 = v121 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097420);
  v140 = *(v12 - 8);
  v141 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v155 = v121 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097428);
  v138 = *(v14 - 8);
  v139 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v154 = v121 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097430);
  v136 = *(v16 - 8);
  v137 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v165 = v121 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097438);
  v134 = *(v18 - 8);
  v135 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v152 = v121 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097440);
  v132 = *(v20 - 8);
  v133 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v153 = v121 - v21;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097448);
  v130 = *(v164 - 8);
  MEMORY[0x1EEE9AC00](v164);
  v150 = v121 - v22;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097450);
  v129 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v151 = v121 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097458);
  v127 = *(v24 - 8);
  v128 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v26 = v121 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097460);
  v126 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = v121 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097468);
  v163 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v32 = v121 - v31;
  v33 = a1[3];
  v167 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v33);
  sub_1E676A978();
  v34 = v212;
  sub_1E68B3BC0();
  if (v34)
  {
    goto LABEL_7;
  }

  v122 = v27;
  v123 = v29;
  v124 = v26;
  v35 = v164;
  v36 = v165;
  v37 = v166;
  v212 = v30;
  v125 = v32;
  v38 = sub_1E68B3A10();
  if (*(v38 + 16) != 1 || (v39 = *(v38 + 32), v39 == 14))
  {
    v47 = sub_1E68B3870();
    swift_allocError();
    v49 = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097050);
    *v49 = &type metadata for LazyCanvasItemContent;
    v50 = v212;
    v51 = v125;
    sub_1E68B3980();
    sub_1E68B3860();
    (*(*(v47 - 8) + 104))(v49, *MEMORY[0x1E69E6AF8], v47);
    swift_willThrow();
    (*(v163 + 8))(v51, v50);
    swift_unknownObjectRelease();
LABEL_7:
    v112 = v167;
    return __swift_destroy_boxed_opaque_existential_1(v112);
  }

  v121[1] = v38;
  v40 = v37;
  v41 = v162;
  switch(v39)
  {
    case 1:
      LOBYTE(v183[0]) = 1;
      sub_1E676B0B0();
      v84 = v124;
      sub_1E68B3970();
      sub_1E676CE74();
      v107 = v128;
      sub_1E68B3A00();
      v108 = (v163 + 8);
      (*(v127 + 8))(v84, v107);
      (*v108)(v125, v212);
      swift_unknownObjectRelease();
      v192 = v177;
      v193 = v178;
      v194 = v179;
      v195 = v180;
      v188 = v173;
      v189 = v174;
      v190 = v175;
      v191 = v176;
      v184 = v169;
      v185 = v170;
      v186 = v171;
      v187 = v172;
      v183[0] = v168[0];
      v183[1] = v168[1];
      sub_1E6744AF8(v183);
      v209 = v194;
      v210 = v195;
      v211[0] = v196[0];
      *(v211 + 9) = *(v196 + 9);
      v206 = v191;
      v207 = v192;
      v208 = v193;
      v201 = v186;
      v202 = v187;
      v203 = v188;
      v204 = v189;
      v205 = v190;
      v197 = v183[0];
      v198 = v183[1];
      v199 = v184;
      v200 = v185;
      v112 = v167;
      break;
    case 2:
      LOBYTE(v183[0]) = 2;
      sub_1E676B008();
      v71 = v151;
      v72 = v212;
      v73 = v125;
      sub_1E68B3970();
      sub_1E676CE20();
      v74 = v131;
      sub_1E68B3A00();
      v75 = (v163 + 8);
      (*(v129 + 8))(v71, v74);
      (*v75)(v73, v72);
      swift_unknownObjectRelease();
      v183[0] = v168[0];
      v183[1] = v168[1];
      v184 = v169;
      v185 = v170;
      sub_1E6744AEC(v183);
      goto LABEL_24;
    case 3:
      LOBYTE(v183[0]) = 3;
      sub_1E676AFB4();
      v76 = v150;
      v77 = v212;
      v78 = v125;
      sub_1E68B3970();
      (*(v130 + 8))(v76, v35);
      (*(v163 + 8))(v78, v77);
      swift_unknownObjectRelease();
      sub_1E6744AB8(&v197);
      goto LABEL_22;
    case 4:
      LOBYTE(v183[0]) = 4;
      sub_1E676AF60();
      v58 = v153;
      v59 = v212;
      v60 = v125;
      sub_1E68B3970();
      sub_1E676CD78();
      v61 = v133;
      sub_1E68B3A00();
      v62 = (v163 + 8);
      (*(v132 + 8))(v58, v61);
      (*v62)(v60, v59);
      swift_unknownObjectRelease();
      v183[0] = v168[0];
      sub_1E6744AAC(v183);
      goto LABEL_24;
    case 5:
      LOBYTE(v183[0]) = 5;
      sub_1E676AEB8();
      v85 = v152;
      v86 = v212;
      v87 = v125;
      sub_1E68B3970();
      sub_1E676CDCC();
      v88 = v135;
      sub_1E68B3A00();
      v89 = (v163 + 8);
      (*(v134 + 8))(v85, v88);
      (*v89)(v87, v86);
      swift_unknownObjectRelease();
      v183[0] = v168[0];
      *&v183[1] = *&v168[1];
      sub_1E6744AA0(v183);
      goto LABEL_24;
    case 6:
      LOBYTE(v183[0]) = 6;
      sub_1E676AE10();
      v93 = v212;
      v94 = v125;
      sub_1E68B3970();
      sub_1E676CD78();
      v95 = v137;
      sub_1E68B3A00();
      v96 = (v163 + 8);
      (*(v136 + 8))(v36, v95);
      (*v96)(v94, v93);
      swift_unknownObjectRelease();
      v183[0] = v168[0];
      sub_1E6744A94(v183);
      goto LABEL_24;
    case 7:
      LOBYTE(v183[0]) = 7;
      sub_1E676AD68();
      v79 = v154;
      v80 = v212;
      v81 = v125;
      sub_1E68B3970();
      sub_1E676CD24();
      v82 = v139;
      sub_1E68B3A00();
      v83 = (v163 + 8);
      (*(v138 + 8))(v79, v82);
      (*v83)(v81, v80);
      swift_unknownObjectRelease();
      v186 = v171;
      v187 = v172;
      *&v188 = v173;
      v183[0] = v168[0];
      v183[1] = v168[1];
      v184 = v169;
      v185 = v170;
      sub_1E6744A88(v183);
      goto LABEL_24;
    case 8:
      LOBYTE(v183[0]) = 8;
      sub_1E676ACC0();
      v102 = v155;
      v103 = v212;
      v104 = v125;
      sub_1E68B3970();
      sub_1E676CCD0();
      v109 = v141;
      sub_1E68B3A00();
      v110 = (v163 + 8);
      (*(v140 + 8))(v102, v109);
      (*v110)(v104, v103);
      swift_unknownObjectRelease();
      v188 = v173;
      v189 = v174;
      v190 = v175;
      v191 = v176;
      v184 = v169;
      v185 = v170;
      v186 = v171;
      v187 = v172;
      v183[0] = v168[0];
      v183[1] = v168[1];
      sub_1E6744A7C(v183);
      goto LABEL_24;
    case 9:
      LOBYTE(v183[0]) = 9;
      sub_1E676AC18();
      v68 = v156;
      v69 = v212;
      v70 = v125;
      sub_1E68B3970();
      sub_1E676CC7C();
      v105 = v143;
      sub_1E68B3A00();
      v106 = (v163 + 8);
      (*(v142 + 8))(v68, v105);
      (*v106)(v70, v69);
      swift_unknownObjectRelease();
      LOBYTE(v183[0]) = v168[0];
      *(v183 + 8) = *(v168 + 8);
      *(&v183[1] + 1) = *(&v168[1] + 1);
      LOBYTE(v184) = v169;
      *(&v184 + 1) = *(&v169 + 1);
      *&v185 = v170;
      sub_1E6744A70(v183);
      v209 = v194;
      v210 = v195;
      v211[0] = v196[0];
      v111 = *(v196 + 9);
      goto LABEL_23;
    case 10:
      LOBYTE(v183[0]) = 10;
      sub_1E676AB70();
      v97 = v157;
      v98 = v212;
      v99 = v125;
      sub_1E68B3970();
      sub_1E676CC28();
      v100 = v145;
      sub_1E68B3A00();
      v101 = (v163 + 8);
      (*(v144 + 8))(v97, v100);
      (*v101)(v99, v98);
      swift_unknownObjectRelease();
      v183[0] = v168[0];
      v183[1] = v168[1];
      *&v184 = v169;
      sub_1E6744A04(v183);
      goto LABEL_24;
    case 11:
      LOBYTE(v183[0]) = 11;
      sub_1E676AAC8();
      v53 = v158;
      v54 = v212;
      v55 = v125;
      sub_1E68B3970();
      sub_1E676CBD4();
      v56 = v147;
      sub_1E68B3A00();
      v57 = (v163 + 8);
      (*(v146 + 8))(v53, v56);
      (*v57)(v55, v54);
      swift_unknownObjectRelease();
      v183[0] = v168[0];
      *&v183[1] = *&v168[1];
      BYTE8(v183[1]) = BYTE8(v168[1]);
      v184 = v169;
      sub_1E67449F8(v183);
LABEL_24:
      v209 = v194;
      v210 = v195;
      v211[0] = v196[0];
      *(v211 + 9) = *(v196 + 9);
      v206 = v191;
      v207 = v192;
      v208 = v193;
      v201 = v186;
      v202 = v187;
      v203 = v188;
      v204 = v189;
      v205 = v190;
      v197 = v183[0];
      v198 = v183[1];
      v199 = v184;
      v200 = v185;
      v112 = v167;
      break;
    case 12:
      LOBYTE(v183[0]) = 12;
      sub_1E676AA20();
      v63 = v160;
      v64 = v212;
      v65 = v125;
      sub_1E68B3970();
      sub_1E676CB80();
      v66 = v149;
      sub_1E68B3A00();
      v67 = (v163 + 8);
      (*(v148 + 8))(v63, v66);
      (*v67)(v65, v64);
      swift_unknownObjectRelease();
      v186 = v171;
      v187 = v172;
      v188 = v173;
      v189 = v174;
      v183[0] = v168[0];
      v183[1] = v168[1];
      v184 = v169;
      v185 = v170;
      sub_1E67449EC(v183);
      v209 = v194;
      v210 = v195;
      v211[0] = v196[0];
      v111 = *(v196 + 9);
LABEL_23:
      *(v211 + 9) = v111;
      v206 = v191;
      v207 = v192;
      v208 = v193;
      v201 = v186;
      v202 = v187;
      v203 = v188;
      v204 = v189;
      v205 = v190;
      v197 = v183[0];
      v198 = v183[1];
      v199 = v184;
      v200 = v185;
      v112 = v167;
      break;
    case 13:
      LOBYTE(v183[0]) = 13;
      sub_1E676A9CC();
      v90 = v159;
      v91 = v212;
      v92 = v125;
      sub_1E68B3970();
      (*(v41 + 8))(v90, v40);
      (*(v163 + 8))(v92, v91);
      swift_unknownObjectRelease();
      sub_1E6744998(&v197);
LABEL_22:
      v112 = v167;
      break;
    default:
      LOBYTE(v183[0]) = 0;
      sub_1E676B158();
      v42 = v123;
      v43 = v212;
      v44 = v125;
      sub_1E68B3970();
      sub_1E676CEC8();
      v45 = v122;
      sub_1E68B3A00();
      v46 = v163;
      (*(v126 + 8))(v42, v45);
      (*(v46 + 8))(v44, v43);
      swift_unknownObjectRelease();
      v194 = v179;
      v195 = v180;
      v196[0] = v181;
      *&v196[1] = v182;
      v190 = v175;
      v191 = v176;
      v192 = v177;
      v193 = v178;
      v186 = v171;
      v187 = v172;
      v188 = v173;
      v189 = v174;
      v183[0] = v168[0];
      v183[1] = v168[1];
      v184 = v169;
      v185 = v170;
      sub_1E6744B38(v183);
      v209 = v194;
      v210 = v195;
      v211[0] = v196[0];
      *(v211 + 9) = *(v196 + 9);
      v206 = v191;
      v207 = v192;
      v208 = v193;
      v201 = v186;
      v202 = v187;
      v203 = v188;
      v204 = v189;
      v205 = v190;
      v197 = v183[0];
      v198 = v183[1];
      v199 = v184;
      v200 = v185;
      v112 = v167;
      break;
  }

  v113 = v210;
  v114 = v161;
  v161[12] = v209;
  v114[13] = v113;
  v114[14] = v211[0];
  *(v114 + 233) = *(v211 + 9);
  v115 = v206;
  v114[8] = v205;
  v114[9] = v115;
  v116 = v208;
  v114[10] = v207;
  v114[11] = v116;
  v117 = v202;
  v114[4] = v201;
  v114[5] = v117;
  v118 = v204;
  v114[6] = v203;
  v114[7] = v118;
  v119 = v198;
  *v114 = v197;
  v114[1] = v119;
  v120 = v200;
  v114[2] = v199;
  v114[3] = v120;
  return __swift_destroy_boxed_opaque_existential_1(v112);
}

unint64_t sub_1E676CB80()
{
  result = qword_1ED097470;
  if (!qword_1ED097470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097470);
  }

  return result;
}

unint64_t sub_1E676CBD4()
{
  result = qword_1ED097478;
  if (!qword_1ED097478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097478);
  }

  return result;
}

unint64_t sub_1E676CC28()
{
  result = qword_1ED097480;
  if (!qword_1ED097480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097480);
  }

  return result;
}

unint64_t sub_1E676CC7C()
{
  result = qword_1ED097488;
  if (!qword_1ED097488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097488);
  }

  return result;
}

unint64_t sub_1E676CCD0()
{
  result = qword_1ED097490;
  if (!qword_1ED097490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097490);
  }

  return result;
}

unint64_t sub_1E676CD24()
{
  result = qword_1ED097498;
  if (!qword_1ED097498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097498);
  }

  return result;
}

unint64_t sub_1E676CD78()
{
  result = qword_1ED0974A0;
  if (!qword_1ED0974A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0974A0);
  }

  return result;
}

unint64_t sub_1E676CDCC()
{
  result = qword_1ED0974A8;
  if (!qword_1ED0974A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0974A8);
  }

  return result;
}

unint64_t sub_1E676CE20()
{
  result = qword_1ED0974B0;
  if (!qword_1ED0974B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0974B0);
  }

  return result;
}

unint64_t sub_1E676CE74()
{
  result = qword_1ED0974B8;
  if (!qword_1ED0974B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0974B8);
  }

  return result;
}

unint64_t sub_1E676CEC8()
{
  result = qword_1ED0974C0;
  if (!qword_1ED0974C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0974C0);
  }

  return result;
}

uint64_t LazyCanvasItemContent.hash(into:)()
{
  v1 = v0[13];
  v21[12] = v0[12];
  v21[13] = v1;
  v22[0] = v0[14];
  *(v22 + 9) = *(v0 + 233);
  v2 = v0[9];
  v21[8] = v0[8];
  v21[9] = v2;
  v3 = v0[11];
  v21[10] = v0[10];
  v21[11] = v3;
  v4 = v0[5];
  v21[4] = v0[4];
  v21[5] = v4;
  v5 = v0[7];
  v21[6] = v0[6];
  v21[7] = v5;
  v6 = v0[1];
  v21[0] = *v0;
  v21[1] = v6;
  v7 = v0[3];
  v21[2] = v0[2];
  v21[3] = v7;
  switch(sub_1E67424C4(v21))
  {
    case 1u:
      nullsub_5(v21);
      MEMORY[0x1E69523D0](1);
      return FullWidthStageViewLayout.hash(into:)();
    case 2u:
      nullsub_5(v21);
      MEMORY[0x1E69523D0](2);
      return InfoActionCardViewLayout.hash(into:)();
    case 3u:
      v15 = nullsub_5(v21);
      v16 = *v15;
      v17 = v15[1];
      v18 = 4;
      goto LABEL_14;
    case 4u:
      v9 = nullsub_5(v21);
      v10 = *v9;
      v11 = *(v9 + 8);
      v12 = *(v9 + 16);
      MEMORY[0x1E69523D0](5);
      sub_1E673E7F4(v10, v11);
      v13 = 0.0;
      if (v12 != 0.0)
      {
        v13 = v12;
      }

      return MEMORY[0x1E69523F0](*&v13);
    case 5u:
      v19 = nullsub_5(v21);
      v16 = *v19;
      v17 = v19[1];
      v18 = 6;
LABEL_14:
      MEMORY[0x1E69523D0](v18);
      if (v16 == 0.0)
      {
        v20 = 0.0;
      }

      else
      {
        v20 = v16;
      }

      MEMORY[0x1E69523F0](*&v20);
      if (v17 == 0.0)
      {
        v13 = 0.0;
      }

      else
      {
        v13 = v17;
      }

      return MEMORY[0x1E69523F0](*&v13);
    case 6u:
      nullsub_5(v21);
      MEMORY[0x1E69523D0](7);
      return StandardCardViewLayout.hash(into:)();
    case 7u:
      nullsub_5(v21);
      MEMORY[0x1E69523D0](8);
      return StandardHorizontalStackViewLayout.hash(into:)();
    case 8u:
      nullsub_5(v21);
      MEMORY[0x1E69523D0](9);
      return StandardVerticalStackViewLayout.hash(into:)();
    case 9u:
      nullsub_5(v21);
      MEMORY[0x1E69523D0](10);
      return SummaryCardViewLayout.hash(into:)();
    case 0xAu:
      nullsub_5(v21);
      MEMORY[0x1E69523D0](11);
      return TallCardViewLayout.hash(into:)();
    case 0xBu:
      nullsub_5(v21);
      MEMORY[0x1E69523D0](12);
      return VerticalStackCardLayout.hash(into:)();
    case 0xCu:
      v14 = 3;
      goto LABEL_22;
    case 0xDu:
      v14 = 13;
LABEL_22:
      result = MEMORY[0x1E69523D0](v14);
      break;
    default:
      nullsub_5(v21);
      MEMORY[0x1E69523D0](0);
      result = ActionCardViewLayout.hash(into:)();
      break;
  }

  return result;
}

uint64_t LazyCanvasItemContent.hashValue.getter()
{
  sub_1E68B3B70();
  LazyCanvasItemContent.hash(into:)();
  return sub_1E68B3BB0();
}

uint64_t sub_1E676D3C8()
{
  sub_1E68B3B70();
  LazyCanvasItemContent.hash(into:)();
  return sub_1E68B3BB0();
}

uint64_t sub_1E676D40C()
{
  sub_1E68B3B70();
  LazyCanvasItemContent.hash(into:)();
  return sub_1E68B3BB0();
}

uint64_t _s15FitnessCanvasUI04LazyB11ItemContentO2eeoiySbAC_ACtFZ_0(_OWORD *a1, __int128 *a2)
{
  v3 = a1[13];
  v267[12] = a1[12];
  v267[13] = v3;
  v268[0] = a1[14];
  *(v268 + 9) = *(a1 + 233);
  v4 = a1[9];
  v267[8] = a1[8];
  v267[9] = v4;
  v5 = a1[11];
  v267[10] = a1[10];
  v267[11] = v5;
  v6 = a1[5];
  v267[4] = a1[4];
  v267[5] = v6;
  v7 = a1[7];
  v267[6] = a1[6];
  v267[7] = v7;
  v8 = a1[1];
  v267[0] = *a1;
  v267[1] = v8;
  v9 = a1[3];
  v267[2] = a1[2];
  v267[3] = v9;
  switch(sub_1E67424C4(v267))
  {
    case 1u:
      v124 = nullsub_5(v267);
      v125 = a2[13];
      v264 = a2[12];
      v265 = v125;
      *v266 = a2[14];
      *&v266[9] = *(a2 + 233);
      v126 = a2[9];
      v260 = a2[8];
      v261 = v126;
      v127 = a2[11];
      v262 = a2[10];
      v263 = v127;
      v128 = a2[5];
      v256 = a2[4];
      v257 = v128;
      v129 = a2[7];
      v258 = a2[6];
      v259 = v129;
      v130 = a2[1];
      v252 = *a2;
      v253 = v130;
      v131 = a2[3];
      v254 = a2[2];
      v255 = v131;
      if (sub_1E67424C4(&v252) != 1)
      {
        goto LABEL_37;
      }

      v132 = nullsub_5(&v252);
      v133 = *(v124 + 176);
      v246 = *(v124 + 160);
      v247 = v133;
      v134 = *(v124 + 208);
      v248 = *(v124 + 192);
      v249 = v134;
      v135 = *(v124 + 112);
      v242 = *(v124 + 96);
      v243 = v135;
      v136 = *(v124 + 144);
      v244 = *(v124 + 128);
      v245 = v136;
      v137 = *(v124 + 48);
      v238 = *(v124 + 32);
      v239 = v137;
      v138 = *(v124 + 80);
      v240 = *(v124 + 64);
      v241 = v138;
      v139 = *(v124 + 16);
      v236 = *v124;
      v237 = v139;
      v140 = v132[11];
      v230 = v132[10];
      v231 = v140;
      v141 = v132[13];
      v232 = v132[12];
      v233 = v141;
      v142 = v132[7];
      v226 = v132[6];
      v227 = v142;
      v143 = v132[9];
      v228 = v132[8];
      v229 = v143;
      v144 = v132[3];
      v222 = v132[2];
      v223 = v144;
      v145 = v132[5];
      v224 = v132[4];
      v225 = v145;
      v146 = v132[1];
      *v221 = *v132;
      *&v221[16] = v146;
      v33 = _s15FitnessCanvasUI24FullWidthStageViewLayoutV2eeoiySbAC_ACtFZ_0(&v236, v221);
      return v33 & 1;
    case 2u:
      v82 = nullsub_5(v267);
      v83 = a2[13];
      v264 = a2[12];
      v265 = v83;
      *v266 = a2[14];
      *&v266[9] = *(a2 + 233);
      v84 = a2[9];
      v260 = a2[8];
      v261 = v84;
      v85 = a2[11];
      v262 = a2[10];
      v263 = v85;
      v86 = a2[5];
      v256 = a2[4];
      v257 = v86;
      v87 = a2[7];
      v258 = a2[6];
      v259 = v87;
      v88 = a2[1];
      v252 = *a2;
      v253 = v88;
      v89 = a2[3];
      v254 = a2[2];
      v255 = v89;
      if (sub_1E67424C4(&v252) != 2)
      {
        goto LABEL_37;
      }

      v90 = nullsub_5(&v252);
      v91 = *(v82 + 16);
      v236 = *v82;
      v237 = v91;
      v92 = *(v82 + 48);
      v238 = *(v82 + 32);
      v239 = v92;
      v93 = v90[1];
      *v221 = *v90;
      *&v221[16] = v93;
      v94 = v90[3];
      v222 = v90[2];
      v223 = v94;
      v33 = _s15FitnessCanvasUI24InfoActionCardViewLayoutV2eeoiySbAC_ACtFZ_0(&v236, v221);
      return v33 & 1;
    case 3u:
      v95 = nullsub_5(v267);
      v97 = *v95;
      v96 = v95[1];
      v98 = a2[13];
      v264 = a2[12];
      v265 = v98;
      *v266 = a2[14];
      *&v266[9] = *(a2 + 233);
      v99 = a2[9];
      v260 = a2[8];
      v261 = v99;
      v100 = a2[11];
      v262 = a2[10];
      v263 = v100;
      v101 = a2[5];
      v256 = a2[4];
      v257 = v101;
      v102 = a2[7];
      v258 = a2[6];
      v259 = v102;
      v103 = a2[1];
      v252 = *a2;
      v253 = v103;
      v104 = a2[3];
      v254 = a2[2];
      v255 = v104;
      if (sub_1E67424C4(&v252) != 3)
      {
        goto LABEL_37;
      }

      goto LABEL_24;
    case 4u:
      v51 = nullsub_5(v267);
      v53 = *v51;
      v52 = v51[1];
      v54 = v51[2];
      v55 = a2[13];
      v264 = a2[12];
      v265 = v55;
      *v266 = a2[14];
      *&v266[9] = *(a2 + 233);
      v56 = a2[9];
      v260 = a2[8];
      v261 = v56;
      v57 = a2[11];
      v262 = a2[10];
      v263 = v57;
      v58 = a2[5];
      v256 = a2[4];
      v257 = v58;
      v59 = a2[7];
      v258 = a2[6];
      v259 = v59;
      v60 = a2[1];
      v252 = *a2;
      v253 = v60;
      v61 = a2[3];
      v254 = a2[2];
      v255 = v61;
      if (sub_1E67424C4(&v252) != 4)
      {
        goto LABEL_37;
      }

      v62 = nullsub_5(&v252);
      v63 = v53 == *v62;
      if (v52 != v62[1])
      {
        v63 = 0;
      }

      v33 = v54 == v62[2] && v63;
      break;
    case 5u:
      v147 = nullsub_5(v267);
      v97 = *v147;
      v96 = v147[1];
      v148 = a2[13];
      v264 = a2[12];
      v265 = v148;
      *v266 = a2[14];
      *&v266[9] = *(a2 + 233);
      v149 = a2[9];
      v260 = a2[8];
      v261 = v149;
      v150 = a2[11];
      v262 = a2[10];
      v263 = v150;
      v151 = a2[5];
      v256 = a2[4];
      v257 = v151;
      v152 = a2[7];
      v258 = a2[6];
      v259 = v152;
      v153 = a2[1];
      v252 = *a2;
      v253 = v153;
      v154 = a2[3];
      v254 = a2[2];
      v255 = v154;
      if (sub_1E67424C4(&v252) != 5)
      {
        goto LABEL_37;
      }

LABEL_24:
      v155 = nullsub_5(&v252);
      v33 = v96 == v155[1] && v97 == *v155;
      break;
    case 6u:
      v163 = nullsub_5(v267);
      v164 = a2[13];
      v264 = a2[12];
      v265 = v164;
      *v266 = a2[14];
      *&v266[9] = *(a2 + 233);
      v165 = a2[9];
      v260 = a2[8];
      v261 = v165;
      v166 = a2[11];
      v262 = a2[10];
      v263 = v166;
      v167 = a2[5];
      v256 = a2[4];
      v257 = v167;
      v168 = a2[7];
      v258 = a2[6];
      v259 = v168;
      v169 = a2[1];
      v252 = *a2;
      v253 = v169;
      v170 = a2[3];
      v254 = a2[2];
      v255 = v170;
      if (sub_1E67424C4(&v252) != 6)
      {
        goto LABEL_37;
      }

      v171 = nullsub_5(&v252);
      v172 = *(v163 + 80);
      v240 = *(v163 + 64);
      v241 = v172;
      *&v242 = *(v163 + 96);
      v173 = *(v163 + 16);
      v236 = *v163;
      v237 = v173;
      v174 = *(v163 + 48);
      v238 = *(v163 + 32);
      v239 = v174;
      v175 = *(v171 + 80);
      v224 = *(v171 + 64);
      v225 = v175;
      *&v226 = *(v171 + 96);
      v176 = *(v171 + 16);
      *v221 = *v171;
      *&v221[16] = v176;
      v177 = *(v171 + 48);
      v222 = *(v171 + 32);
      v223 = v177;
      v33 = _s15FitnessCanvasUI22StandardCardViewLayoutV2eeoiySbAC_ACtFZ_0(&v236, v221);
      break;
    case 7u:
      v105 = nullsub_5(v267);
      v106 = a2[13];
      v264 = a2[12];
      v265 = v106;
      *v266 = a2[14];
      *&v266[9] = *(a2 + 233);
      v107 = a2[9];
      v260 = a2[8];
      v261 = v107;
      v108 = a2[11];
      v262 = a2[10];
      v263 = v108;
      v109 = a2[5];
      v256 = a2[4];
      v257 = v109;
      v110 = a2[7];
      v258 = a2[6];
      v259 = v110;
      v111 = a2[1];
      v252 = *a2;
      v253 = v111;
      v112 = a2[3];
      v254 = a2[2];
      v255 = v112;
      if (sub_1E67424C4(&v252) != 7)
      {
        goto LABEL_37;
      }

      v113 = nullsub_5(&v252);
      v114 = *(v105 + 112);
      v242 = *(v105 + 96);
      v243 = v114;
      v115 = *(v105 + 144);
      v244 = *(v105 + 128);
      v245 = v115;
      v116 = *(v105 + 48);
      v238 = *(v105 + 32);
      v239 = v116;
      v117 = *(v105 + 80);
      v240 = *(v105 + 64);
      v241 = v117;
      v118 = *(v105 + 16);
      v236 = *v105;
      v237 = v118;
      v119 = v113[7];
      v226 = v113[6];
      v227 = v119;
      v120 = v113[9];
      v228 = v113[8];
      v229 = v120;
      v121 = v113[3];
      v222 = v113[2];
      v223 = v121;
      v122 = v113[5];
      v224 = v113[4];
      v225 = v122;
      v123 = v113[1];
      *v221 = *v113;
      *&v221[16] = v123;
      v33 = _s15FitnessCanvasUI33StandardHorizontalStackViewLayoutV2eeoiySbAC_ACtFZ_0(&v236, v221);
      break;
    case 8u:
      v197 = nullsub_5(v267);
      v198 = *v197;
      v199 = *(v197 + 8);
      v200 = *(v197 + 16);
      v201 = *(v197 + 24);
      v202 = *(v197 + 32);
      v203 = *(v197 + 40);
      v204 = *(v197 + 48);
      v205 = a2[13];
      v264 = a2[12];
      v265 = v205;
      *v266 = a2[14];
      *&v266[9] = *(a2 + 233);
      v206 = a2[9];
      v260 = a2[8];
      v261 = v206;
      v207 = a2[11];
      v262 = a2[10];
      v263 = v207;
      v208 = a2[5];
      v256 = a2[4];
      v257 = v208;
      v209 = a2[7];
      v258 = a2[6];
      v259 = v209;
      v210 = a2[3];
      v254 = a2[2];
      v255 = v210;
      v211 = a2[1];
      v252 = *a2;
      v253 = v211;
      if (sub_1E67424C4(&v252) != 8)
      {
        goto LABEL_37;
      }

      v212 = nullsub_5(&v252);
      v213 = *v212;
      v214 = *(v212 + 24);
      v215 = *(v212 + 32);
      v216 = *(v212 + 40);
      v217 = *(v212 + 48);
      LOBYTE(v236.f64[0]) = v198;
      v236.f64[1] = v199;
      *&v237 = v200;
      *(&v237 + 1) = v201;
      LOBYTE(v238) = v202;
      *(&v238 + 1) = v203;
      *&v239 = v204;
      v221[0] = v213;
      *&v221[8] = *(v212 + 8);
      *&v221[24] = v214;
      LOBYTE(v222) = v215;
      *(&v222 + 1) = v216;
      *&v223 = v217;
      v33 = _s15FitnessCanvasUI31StandardVerticalStackViewLayoutV2eeoiySbAC_ACtFZ_0(v236.f64, v221);
      break;
    case 9u:
      v72 = nullsub_5(v267);
      v219 = *(v72 + 16);
      v220 = *v72;
      v73 = *(v72 + 32);
      v74 = a2[3];
      v254 = a2[2];
      v255 = v74;
      v75 = a2[1];
      v252 = *a2;
      v253 = v75;
      v76 = a2[7];
      v258 = a2[6];
      v259 = v76;
      v77 = a2[5];
      v256 = a2[4];
      v257 = v77;
      v78 = a2[11];
      v262 = a2[10];
      v263 = v78;
      v79 = a2[9];
      v260 = a2[8];
      v261 = v79;
      *&v266[9] = *(a2 + 233);
      v80 = a2[14];
      v265 = a2[13];
      *v266 = v80;
      v264 = a2[12];
      if (sub_1E67424C4(&v252) != 9)
      {
        goto LABEL_37;
      }

      v81 = nullsub_5(&v252);
      v33 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v220, *v81), vceqq_f64(v219, v81[1])))) & (v73 == v81[2].f64[0]);
      break;
    case 0xAu:
      v178 = nullsub_5(v267);
      v179 = *v178;
      v180 = *(v178 + 8);
      v181 = *(v178 + 16);
      v182 = *(v178 + 24);
      v183 = *(v178 + 32);
      v184 = *(v178 + 40);
      v185 = a2[13];
      v264 = a2[12];
      v265 = v185;
      *v266 = a2[14];
      *&v266[9] = *(a2 + 233);
      v186 = a2[9];
      v260 = a2[8];
      v261 = v186;
      v187 = a2[11];
      v262 = a2[10];
      v263 = v187;
      v188 = a2[5];
      v256 = a2[4];
      v257 = v188;
      v189 = a2[7];
      v258 = a2[6];
      v259 = v189;
      v190 = a2[3];
      v254 = a2[2];
      v255 = v190;
      v191 = a2[1];
      v252 = *a2;
      v253 = v191;
      if (sub_1E67424C4(&v252) != 10)
      {
        goto LABEL_37;
      }

      v192 = nullsub_5(&v252);
      v193 = *(v192 + 16);
      v194 = *(v192 + 24);
      v195 = *(v192 + 32);
      v196 = *(v192 + 40);
      v236.f64[0] = v179;
      v236.f64[1] = v180;
      *&v237 = v181;
      BYTE8(v237) = v182;
      *&v238 = v183;
      *(&v238 + 1) = v184;
      *v221 = *v192;
      *&v221[16] = v193;
      v221[24] = v194;
      *&v222 = v195;
      *(&v222 + 1) = v196;
      v33 = _s15FitnessCanvasUI18TallCardViewLayoutV2eeoiySbAC_ACtFZ_0(&v236, v221);
      break;
    case 0xBu:
      v34 = nullsub_5(v267);
      v35 = a2[13];
      v264 = a2[12];
      v265 = v35;
      *v266 = a2[14];
      *&v266[9] = *(a2 + 233);
      v36 = a2[9];
      v260 = a2[8];
      v261 = v36;
      v37 = a2[11];
      v262 = a2[10];
      v263 = v37;
      v38 = a2[5];
      v256 = a2[4];
      v257 = v38;
      v39 = a2[7];
      v258 = a2[6];
      v259 = v39;
      v40 = a2[1];
      v252 = *a2;
      v253 = v40;
      v41 = a2[3];
      v254 = a2[2];
      v255 = v41;
      if (sub_1E67424C4(&v252) != 11)
      {
        goto LABEL_37;
      }

      v42 = nullsub_5(&v252);
      v43 = *(v34 + 80);
      v240 = *(v34 + 64);
      v241 = v43;
      v44 = *(v34 + 112);
      v242 = *(v34 + 96);
      v243 = v44;
      v45 = *(v34 + 16);
      v236 = *v34;
      v237 = v45;
      v46 = *(v34 + 48);
      v238 = *(v34 + 32);
      v239 = v46;
      v47 = v42[5];
      v224 = v42[4];
      v225 = v47;
      v48 = v42[7];
      v226 = v42[6];
      v227 = v48;
      v49 = v42[1];
      *v221 = *v42;
      *&v221[16] = v49;
      v50 = v42[3];
      v222 = v42[2];
      v223 = v50;
      v33 = _s15FitnessCanvasUI23VerticalStackCardLayoutV2eeoiySbAC_ACtFZ_0(&v236, v221);
      break;
    case 0xCu:
      v64 = a2[13];
      v264 = a2[12];
      v265 = v64;
      *v266 = a2[14];
      *&v266[9] = *(a2 + 233);
      v65 = a2[9];
      v260 = a2[8];
      v261 = v65;
      v66 = a2[11];
      v262 = a2[10];
      v263 = v66;
      v67 = a2[5];
      v256 = a2[4];
      v257 = v67;
      v68 = a2[7];
      v258 = a2[6];
      v259 = v68;
      v69 = a2[1];
      v252 = *a2;
      v253 = v69;
      v70 = a2[3];
      v254 = a2[2];
      v255 = v70;
      v71 = sub_1E67424C4(&v252) == 12;
      goto LABEL_28;
    case 0xDu:
      v156 = a2[13];
      v264 = a2[12];
      v265 = v156;
      *v266 = a2[14];
      *&v266[9] = *(a2 + 233);
      v157 = a2[9];
      v260 = a2[8];
      v261 = v157;
      v158 = a2[11];
      v262 = a2[10];
      v263 = v158;
      v159 = a2[5];
      v256 = a2[4];
      v257 = v159;
      v160 = a2[7];
      v258 = a2[6];
      v259 = v160;
      v161 = a2[1];
      v252 = *a2;
      v253 = v161;
      v162 = a2[3];
      v254 = a2[2];
      v255 = v162;
      v71 = sub_1E67424C4(&v252) == 13;
LABEL_28:
      v33 = v71;
      break;
    default:
      v10 = nullsub_5(v267);
      v11 = a2[13];
      v264 = a2[12];
      v265 = v11;
      *v266 = a2[14];
      *&v266[9] = *(a2 + 233);
      v12 = a2[9];
      v260 = a2[8];
      v261 = v12;
      v13 = a2[11];
      v262 = a2[10];
      v263 = v13;
      v14 = a2[5];
      v256 = a2[4];
      v257 = v14;
      v15 = a2[7];
      v258 = a2[6];
      v259 = v15;
      v16 = a2[1];
      v252 = *a2;
      v253 = v16;
      v17 = a2[3];
      v254 = a2[2];
      v255 = v17;
      if (sub_1E67424C4(&v252))
      {
LABEL_37:
        v33 = 0;
      }

      else
      {
        v18 = nullsub_5(&v252);
        v19 = *(v10 + 208);
        v248 = *(v10 + 192);
        v249 = v19;
        v250 = *(v10 + 224);
        v251 = *(v10 + 240);
        v20 = *(v10 + 144);
        v244 = *(v10 + 128);
        v245 = v20;
        v21 = *(v10 + 176);
        v246 = *(v10 + 160);
        v247 = v21;
        v22 = *(v10 + 80);
        v240 = *(v10 + 64);
        v241 = v22;
        v23 = *(v10 + 112);
        v242 = *(v10 + 96);
        v243 = v23;
        v24 = *(v10 + 16);
        v236 = *v10;
        v237 = v24;
        v25 = *(v10 + 48);
        v238 = *(v10 + 32);
        v239 = v25;
        v26 = *(v18 + 208);
        v232 = *(v18 + 192);
        v233 = v26;
        v234 = *(v18 + 224);
        v235 = *(v18 + 240);
        v27 = *(v18 + 144);
        v228 = *(v18 + 128);
        v229 = v27;
        v28 = *(v18 + 176);
        v230 = *(v18 + 160);
        v231 = v28;
        v29 = *(v18 + 80);
        v224 = *(v18 + 64);
        v225 = v29;
        v30 = *(v18 + 112);
        v226 = *(v18 + 96);
        v227 = v30;
        v31 = *(v18 + 16);
        *v221 = *v18;
        *&v221[16] = v31;
        v32 = *(v18 + 48);
        v222 = *(v18 + 32);
        v223 = v32;
        v33 = _s15FitnessCanvasUI20ActionCardViewLayoutV2eeoiySbAC_ACtFZ_0(&v236, v221);
      }

      break;
  }

  return v33 & 1;
}

unint64_t sub_1E676DE80()
{
  result = qword_1ED0974C8;
  if (!qword_1ED0974C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0974C8);
  }

  return result;
}

__n128 __swift_memcpy249_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 233) = *(a2 + 233);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for LazyCanvasItemContent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF4 && *(a1 + 249))
  {
    return (*a1 + 244);
  }

  v3 = *(a1 + 248);
  if (v3 >= 0xD)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LazyCanvasItemContent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF3)
  {
    *(result + 233) = 0u;
    *(result + 208) = 0u;
    *(result + 224) = 0u;
    *(result + 176) = 0u;
    *(result + 192) = 0u;
    *(result + 144) = 0u;
    *(result + 160) = 0u;
    *(result + 112) = 0u;
    *(result + 128) = 0u;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 244;
    if (a3 >= 0xF4)
    {
      *(result + 249) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF4)
    {
      *(result + 249) = 0;
    }

    if (a2)
    {
      *(result + 248) = -a2;
    }
  }

  return result;
}

uint64_t sub_1E676DFC4(uint64_t a1)
{
  result = *(a1 + 248);
  if (result >= 0xC)
  {
    return (*a1 + 12);
  }

  return result;
}

uint64_t sub_1E676DFE0(uint64_t result, unsigned int a2)
{
  if (a2 > 0xB)
  {
    *(result + 240) = 0;
    *(result + 208) = 0u;
    *(result + 224) = 0u;
    *(result + 176) = 0u;
    *(result + 192) = 0u;
    *(result + 144) = 0u;
    *(result + 160) = 0u;
    *(result + 112) = 0u;
    *(result + 128) = 0u;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 12;
    LOBYTE(a2) = 12;
  }

  *(result + 248) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for LazyCanvasItemContent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LazyCanvasItemContent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E676E268()
{
  result = qword_1ED0974D0;
  if (!qword_1ED0974D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0974D0);
  }

  return result;
}

unint64_t sub_1E676E2C0()
{
  result = qword_1ED0974D8;
  if (!qword_1ED0974D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0974D8);
  }

  return result;
}

unint64_t sub_1E676E318()
{
  result = qword_1ED0974E0;
  if (!qword_1ED0974E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0974E0);
  }

  return result;
}

unint64_t sub_1E676E370()
{
  result = qword_1ED0974E8;
  if (!qword_1ED0974E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0974E8);
  }

  return result;
}

unint64_t sub_1E676E3C8()
{
  result = qword_1ED0974F0;
  if (!qword_1ED0974F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0974F0);
  }

  return result;
}

unint64_t sub_1E676E420()
{
  result = qword_1ED0974F8;
  if (!qword_1ED0974F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0974F8);
  }

  return result;
}

unint64_t sub_1E676E478()
{
  result = qword_1ED097500;
  if (!qword_1ED097500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097500);
  }

  return result;
}

unint64_t sub_1E676E4D0()
{
  result = qword_1ED097508;
  if (!qword_1ED097508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097508);
  }

  return result;
}

unint64_t sub_1E676E528()
{
  result = qword_1ED097510;
  if (!qword_1ED097510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097510);
  }

  return result;
}

unint64_t sub_1E676E580()
{
  result = qword_1ED097518;
  if (!qword_1ED097518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097518);
  }

  return result;
}

unint64_t sub_1E676E5D8()
{
  result = qword_1ED097520;
  if (!qword_1ED097520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097520);
  }

  return result;
}

unint64_t sub_1E676E630()
{
  result = qword_1ED097528;
  if (!qword_1ED097528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097528);
  }

  return result;
}

unint64_t sub_1E676E688()
{
  result = qword_1ED097530;
  if (!qword_1ED097530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097530);
  }

  return result;
}

unint64_t sub_1E676E6E0()
{
  result = qword_1ED097538;
  if (!qword_1ED097538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097538);
  }

  return result;
}

unint64_t sub_1E676E738()
{
  result = qword_1ED097540;
  if (!qword_1ED097540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097540);
  }

  return result;
}

unint64_t sub_1E676E790()
{
  result = qword_1ED097548;
  if (!qword_1ED097548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097548);
  }

  return result;
}

unint64_t sub_1E676E7E8()
{
  result = qword_1ED097550;
  if (!qword_1ED097550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097550);
  }

  return result;
}

unint64_t sub_1E676E840()
{
  result = qword_1ED097558;
  if (!qword_1ED097558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097558);
  }

  return result;
}

unint64_t sub_1E676E898()
{
  result = qword_1ED097560;
  if (!qword_1ED097560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097560);
  }

  return result;
}

unint64_t sub_1E676E8F0()
{
  result = qword_1ED097568;
  if (!qword_1ED097568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097568);
  }

  return result;
}

unint64_t sub_1E676E948()
{
  result = qword_1ED097570;
  if (!qword_1ED097570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097570);
  }

  return result;
}

unint64_t sub_1E676E9A0()
{
  result = qword_1ED097578;
  if (!qword_1ED097578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097578);
  }

  return result;
}

unint64_t sub_1E676E9F8()
{
  result = qword_1ED097580;
  if (!qword_1ED097580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097580);
  }

  return result;
}

unint64_t sub_1E676EA50()
{
  result = qword_1ED097588;
  if (!qword_1ED097588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097588);
  }

  return result;
}

unint64_t sub_1E676EAA8()
{
  result = qword_1ED097590;
  if (!qword_1ED097590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097590);
  }

  return result;
}

unint64_t sub_1E676EB00()
{
  result = qword_1ED097598;
  if (!qword_1ED097598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097598);
  }

  return result;
}

unint64_t sub_1E676EB58()
{
  result = qword_1ED0975A0;
  if (!qword_1ED0975A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0975A0);
  }

  return result;
}

unint64_t sub_1E676EBB0()
{
  result = qword_1ED0975A8;
  if (!qword_1ED0975A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0975A8);
  }

  return result;
}

unint64_t sub_1E676EC08()
{
  result = qword_1ED0975B0;
  if (!qword_1ED0975B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0975B0);
  }

  return result;
}

unint64_t sub_1E676EC60()
{
  result = qword_1ED0975B8;
  if (!qword_1ED0975B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0975B8);
  }

  return result;
}

unint64_t sub_1E676ECB8()
{
  result = qword_1ED0975C0;
  if (!qword_1ED0975C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0975C0);
  }

  return result;
}

unint64_t sub_1E676ED10()
{
  result = qword_1ED0975C8;
  if (!qword_1ED0975C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0975C8);
  }

  return result;
}

unint64_t sub_1E676ED68()
{
  result = qword_1ED0975D0;
  if (!qword_1ED0975D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0975D0);
  }

  return result;
}

unint64_t sub_1E676EDC0()
{
  result = qword_1ED0975D8;
  if (!qword_1ED0975D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0975D8);
  }

  return result;
}

unint64_t sub_1E676EE18()
{
  result = qword_1ED0975E0;
  if (!qword_1ED0975E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0975E0);
  }

  return result;
}

unint64_t sub_1E676EE70()
{
  result = qword_1ED0975E8;
  if (!qword_1ED0975E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0975E8);
  }

  return result;
}

unint64_t sub_1E676EEC8()
{
  result = qword_1ED0975F0;
  if (!qword_1ED0975F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0975F0);
  }

  return result;
}

unint64_t sub_1E676EF20()
{
  result = qword_1ED0975F8;
  if (!qword_1ED0975F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0975F8);
  }

  return result;
}

unint64_t sub_1E676EF78()
{
  result = qword_1ED097600;
  if (!qword_1ED097600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097600);
  }

  return result;
}

unint64_t sub_1E676EFD0()
{
  result = qword_1ED097608;
  if (!qword_1ED097608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097608);
  }

  return result;
}

unint64_t sub_1E676F028()
{
  result = qword_1ED097610;
  if (!qword_1ED097610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097610);
  }

  return result;
}

unint64_t sub_1E676F080()
{
  result = qword_1ED097618;
  if (!qword_1ED097618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097618);
  }

  return result;
}

unint64_t sub_1E676F0D8()
{
  result = qword_1ED097620;
  if (!qword_1ED097620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED097620);
  }

  return result;
}

uint64_t sub_1E676F12C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61436E6F69746361 && a2 == 0xEA00000000006472;
  if (v4 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746469576C6C7566 && a2 == 0xEE00656761745368 || (sub_1E68B3B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x697463416F666E69 && a2 == 0xEE00647261436E6FLL || (sub_1E68B3B00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x697242656772616CLL && a2 == 0xEA00000000006B63 || (sub_1E68B3B00() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001E68E28B0 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001E68E28D0 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E68E28F0 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x647261646E617473 && a2 == 0xEC00000064726143 || (sub_1E68B3B00() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001E68E2910 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001E68E2930 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x437972616D6D7573 && a2 == 0xEB00000000647261 || (sub_1E68B3B00() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x647261436C6C6174 && a2 == 0xE800000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E68E2950 == a2 || (sub_1E68B3B00() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6369724265646977 && a2 == 0xE90000000000006BLL)
  {

    return 13;
  }

  else
  {
    v6 = sub_1E68B3B00();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

uint64_t DataItemResolution.init(resolved:failed:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t static DataItemResolution.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  if ((sub_1E68B3100() & 1) == 0)
  {
    return 0;
  }

  return MEMORY[0x1EEE696C8](v2, v3, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t DataItemResolution.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1E68B30F0();

  return MEMORY[0x1EEE696D8](a1, v3, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t DataItemResolution.hashValue.getter()
{
  v3 = *v0;
  sub_1E68B3B70();
  DataItemResolution.hash(into:)(v2);
  return sub_1E68B3BB0();
}

uint64_t sub_1E676F808()
{
  sub_1E68B3B70();
  DataItemResolution.hash(into:)(v1);
  return sub_1E68B3BB0();
}

uint64_t sub_1E676F874()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1E676F8BC(uint64_t *a1, int a2)
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

uint64_t sub_1E676F904(uint64_t result, int a2, int a3)
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

uint64_t sub_1E676F95C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
LABEL_7:
    v7 &= v7 - 1;
    sub_1E68B3B70();
    MEMORY[0x1E69523D0](0);
    result = sub_1E68B3BB0();
    v9 = result & ~(-1 << *(a2 + 32));
    if (((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  while (1)
  {
    v10 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v10 >= v8)
    {
      return 1;
    }

    v7 = *(v4 + 8 * v10);
    ++v3;
    if (v7)
    {
      v3 = v10;
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E676FA70(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    sub_1E68B3B70();
    MEMORY[0x1E69523D0](v13);
    result = sub_1E68B3BB0();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t CanvasSectionDescriptor.identifier.getter()
{
  v0 = sub_1E6739D1C();

  return v0;
}

uint64_t CanvasSectionDescriptor.layout.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 180);
  v5 = type metadata accessor for CanvasSectionLayout();
  return (*(*(v5 - 8) + 16))(a2, v2 + v4, v5);
}

uint64_t CanvasSectionDescriptor.header.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 184);
  type metadata accessor for CanvasSectionHeader();
  v5 = sub_1E68B3750();
  return (*(*(v5 - 8) + 16))(a2, v2 + v4, v5);
}

uint64_t CanvasSectionDescriptor.items.getter(uint64_t a1)
{
  sub_1E677293C(a1);
}

uint64_t CanvasSectionDescriptor.items.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 192);

  *(v2 + v4) = a1;
  return result;
}

uint64_t CanvasSectionDescriptor.metrics.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 196);
  v5 = sub_1E68B3750();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t CanvasSectionDescriptor.redactionReasons.getter(uint64_t a1)
{
  sub_1E6772948(a1);
}

uint64_t CanvasSectionDescriptor.init(identifier:layout:header:footer:items:metrics:redactionReasons:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v19 = *a5;
  *a9 = a1;
  *(a9 + 1) = a2;
  v10 = type metadata accessor for CanvasSectionDescriptor();
  v11 = v10[45];
  v12 = type metadata accessor for CanvasSectionLayout();
  (*(*(v12 - 8) + 32))(&a9[v11], a3, v12);
  v13 = v10[46];
  type metadata accessor for CanvasSectionHeader();
  v14 = sub_1E68B3750();
  (*(*(v14 - 8) + 32))(&a9[v13], a4, v14);
  a9[v10[47]] = v19;
  *&a9[v10[48]] = a6;
  v15 = v10[49];
  v16 = sub_1E68B3750();
  result = (*(*(v16 - 8) + 32))(&a9[v15], a7, v16);
  *&a9[v10[50]] = a8;
  return result;
}

uint64_t sub_1E677004C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1E68B3B00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74756F79616CLL && a2 == 0xE600000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726564616568 && a2 == 0xE600000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7265746F6F66 && a2 == 0xE600000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7363697274656DLL && a2 == 0xE700000000000000 || (sub_1E68B3B00() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E68E2970 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_1E68B3B00();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

unint64_t sub_1E6770294(unsigned __int8 a1)
{
  v1 = 0x696669746E656469;
  v2 = 0x7363697274656DLL;
  if (a1 != 5)
  {
    v2 = 0xD000000000000010;
  }

  v3 = 0x7265746F6F66;
  if (a1 != 3)
  {
    v3 = 0x736D657469;
  }

  if (a1 <= 4u)
  {
    v2 = v3;
  }

  v4 = 0x74756F79616CLL;
  if (a1 != 1)
  {
    v4 = 0x726564616568;
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

uint64_t sub_1E6770474()
{
  sub_1E68B3B70();
  sub_1E6739CF4(v2, *v0);
  return sub_1E68B3BB0();
}

uint64_t sub_1E6770544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E677004C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E67705A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E6773BAC();
  *a1 = result;
  return result;
}

uint64_t sub_1E6770608(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E677065C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E67706B0()
{
  v0 = sub_1E6739D1C();

  return v0;
}

uint64_t sub_1E67706F4(uint64_t a1)
{
  sub_1E677293C(a1);
}

uint64_t sub_1E6770720(uint64_t a1)
{
  sub_1E6772948(a1);
}

uint64_t CanvasSectionDescriptor.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  v8 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = *(a2 + 64);
  v11 = *(a2 + 72);
  v13 = *(a2 + 80);
  v12 = *(a2 + 88);
  v14 = *(a2 + 96);
  v15 = *(a2 + 104);
  v16 = *(a2 + 112);
  v17 = *(a2 + 120);
  v18 = *(a2 + 128);
  v19 = *(a2 + 136);
  v20 = *(a2 + 144);
  v21 = *(a2 + 152);
  v22 = *(a2 + 160);
  v23 = *(a2 + 168);
  v52 = v4;
  v60 = v4;
  v61 = v5;
  v47 = v5;
  v46 = v6;
  v62 = v6;
  v63 = v7;
  v45 = v7;
  v44 = v8;
  v64 = v8;
  v65 = v9;
  v37[2] = v9;
  v53 = v10;
  v66 = v10;
  v67 = v11;
  v50 = v11;
  v55 = v13;
  v68 = v13;
  v69 = v12;
  v49 = v12;
  v43 = v14;
  v70 = v14;
  v71 = v15;
  v42 = v15;
  v41 = v16;
  v72 = v16;
  v73 = v17;
  v40 = v17;
  v39 = v18;
  v74 = v18;
  v75 = v19;
  v38 = v19;
  v37[1] = v20;
  v76 = v20;
  v77 = v21;
  v51 = v21;
  v48 = v22;
  v78 = v22;
  v79 = v23;
  v54 = v23;
  type metadata accessor for CanvasSectionDescriptor.CodingKeys();
  swift_getWitnessTable();
  v24 = sub_1E68B3AC0();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = v37 - v26;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E68B3BD0();
  LOBYTE(v60) = 0;
  v28 = v56;
  sub_1E68B3A70();
  if (v28)
  {
    return (*(v25 + 8))(v27, v24);
  }

  v30 = v50;
  v31 = v52;
  v37[0] = v25;
  v56 = v27;
  LOBYTE(v80) = 1;
  v60 = v53;
  v61 = v55;
  v62 = v51;
  v63 = v54;
  type metadata accessor for CanvasSectionLayout();
  swift_getWitnessTable();
  sub_1E68B3AB0();
  LOBYTE(v80) = 2;
  v32 = v31;
  v60 = v31;
  v61 = v30;
  v33 = v49;
  v62 = v49;
  v63 = v48;
  type metadata accessor for CanvasSectionHeader();
  swift_getWitnessTable();
  v34 = v57;
  sub_1E68B3A60();
  LOBYTE(v60) = *(v34 + *(a2 + 188));
  LOBYTE(v80) = 3;
  sub_1E674B0D4();
  sub_1E68B3AB0();
  v35 = v37[0];
  v80 = *(v57 + *(a2 + 192));
  v59 = 4;
  v60 = v32;
  v61 = v47;
  v62 = v46;
  v63 = v45;
  v64 = v44;
  v65 = v55;
  v66 = v33;
  v67 = v43;
  v68 = v42;
  v69 = v41;
  v70 = v40;
  v71 = v39;
  v72 = v38;
  v73 = v54;
  type metadata accessor for CanvasItemDescriptor();
  sub_1E68B33B0();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  v36 = v56;
  sub_1E68B3AB0();
  LOBYTE(v60) = 5;
  sub_1E68B3A60();
  v60 = *(v57 + *(a2 + 200));
  LOBYTE(v80) = 6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED097628);
  sub_1E67729D8(&qword_1EE2EA488, sub_1E6772984);
  sub_1E68B3AB0();
  return (*(v35 + 8))(v36, v24);
}