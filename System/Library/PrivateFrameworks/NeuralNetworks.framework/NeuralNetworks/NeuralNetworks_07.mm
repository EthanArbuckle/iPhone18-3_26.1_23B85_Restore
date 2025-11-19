uint64_t static ParameterInitializer.custom(_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_12();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 100) = 4;

  return v4;
}

uint64_t sub_25BB145F8()
{
  v0 = sub_25BCB738C();
  v4 = MEMORY[0x25F877220](v0, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  sub_25BCB737C();

  while (1)
  {
    sub_25BCB75DC();
    if (!v3)
    {
      break;
    }

    sub_25BADBE78(&v2, v2, v3);
  }

  return v4;
}

void sub_25BB14688(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_48_1(a1);
  MEMORY[0x25F877220](v5, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  OUTLINED_FUNCTION_45_2();
  while (1)
  {
    if (v3 == v2)
    {

      return;
    }

    if (v2 >= *(v1 + 16))
    {
      break;
    }

    ++v2;
    v7 = *(v4 - 1);
    v6 = *v4;
    v8 = sub_25BCB617C();
    v16 = OUTLINED_FUNCTION_47_2(v8, v9, v10, v11, v12, v13, v14, v15, v19, v20);
    sub_25BADBE78(v16, v17, v18);

    v4 += 2;
  }

  __break(1u);
}

void sub_25BB1472C(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_48_1(a1);
  MEMORY[0x25F877220](v5, MEMORY[0x277D835B0], MEMORY[0x277D835B8]);
  OUTLINED_FUNCTION_45_2();
  while (1)
  {
    if (v3 == v2)
    {

      return;
    }

    if (v2 >= *(v1 + 16))
    {
      break;
    }

    ++v2;
    v7 = *(v4 - 1);
    v6 = *v4;
    v8 = sub_25BCB617C();
    v16 = OUTLINED_FUNCTION_47_2(v8, v9, v10, v11, v12, v13, v14, v15, v17, v18);
    sub_25BC42494(v16);

    v4 += 2;
  }

  __break(1u);
}

uint64_t sub_25BB147D0()
{
  OUTLINED_FUNCTION_35();
  sub_25BB14570(v0 + 16, v7);
  switch(v9[52])
  {
    case 1:
    case 2:
    case 3:

      v1 = v7[2];
      v2 = v9;
      goto LABEL_5;
    case 4:
      v5 = &unk_286D42838;
      (v7[0])(&v6, &v5);

      v5 = v6;
      v3 = Tensor.scalarType.getter();

      v1 = dynamic_cast_existential_1_conditional(v3);
      break;
    default:
      v1 = v7[1];
      v2 = &v8;
LABEL_5:
      sub_25BA9C2C8(v2);
      break;
  }

  return v1;
}

void sub_25BB148DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v15[0] = v10;
  v12 = *(v11 + 16);
  v13 = sub_25BB18A50();
  v12(v15, MEMORY[0x277D83A90], &protocol witness table for Float, v13, a4, a5);
  v16 = a2;
  sub_25BAA51C8(a3, v15);
  v14 = *(a5 + 8);
  sub_25BCB617C();
  Tensor.init<A>(repeating:shape:scalarType:on:)();
}

void sub_25BB149E8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v44 = a6;
  v40 = a3;
  v41 = a4;
  v42 = a8;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v39 = *(TupleTypeMetadata2 - 8);
  v12 = *(v39 + 64);
  v13 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v37 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v34 - v16;
  v18 = *(a5 - 8);
  v19 = v18[8];
  v20 = MEMORY[0x28223BE20](v15);
  v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v34 - v23;
  v25 = *(*(*(a7 + 16) + 24) + 8);
  v36 = sub_25BCB62FC();
  v26 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36);
  v28 = &v34 - v27;
  v46 = a2;
  sub_25BCB617C();
  sub_25BCB60EC();
  v43 = a1;
  sub_25BCB60EC();
  v38 = v25;
  if (sub_25BCB62BC())
  {
    v29 = v18[4];
    v29(v17, v24, a5);
    v30 = TupleTypeMetadata2;
    v29(&v17[*(TupleTypeMetadata2 + 48)], v22, a5);
    v31 = v39;
    v32 = v37;
    (*(v39 + 16))(v37, v17, v30);
    v34 = *(v30 + 48);
    v29(v28, v32, a5);
    v33 = v18[1];
    v33(&v32[v34], a5);
    (*(v31 + 32))(v32, v17, v30);
    v29(&v28[*(v36 + 36)], &v32[*(v30 + 48)], a5);
    v33(v32, a5);
    if (v40)
    {
      sub_25BB6AAA8();
    }

    sub_25BAA51C8(v41, v45);
    Tensor.init<A>(randomUniform:in:seed:scalarType:on:)();
  }

  else
  {
    __break(1u);
  }
}

void sub_25BB14DA8(uint64_t a1@<X0>, int a2@<W1>, unint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  sub_25BAA51C8(a5, &v53);
  if (*&v54[8])
  {
    v51[0] = v53;
    v51[1] = *v54;
    v51[2] = *&v54[16];
    v52 = v55;
  }

  else
  {
    type metadata accessor for ContextManager();
    sub_25BAA49B8();
    sub_25BAA4A5C(&__src);

    sub_25BAA51C8(&__src, v51);
    sub_25BAA4AF4(&__src);
    if (*&v54[8])
    {
      sub_25BA9C2C8(&v53);
    }
  }

  if ((a4 & 1) == 0)
  {
    goto LABEL_10;
  }

  type metadata accessor for ContextManager();
  v12 = sub_25BAA49B8();
  swift_beginAccess();
  v13 = v12[2];
  v14 = *(v13 + 16);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12[2] = v13;
  if (isUniquelyReferenced_nonNull_native)
  {
    if (v14)
    {
      goto LABEL_8;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_25BBF1454(v13);
  v13 = v31;
  v12[2] = v31;
  if (!v14)
  {
    goto LABEL_20;
  }

LABEL_8:
  if (v14 > *(v13 + 16))
  {
LABEL_21:
    __break(1u);
    return;
  }

  a3 = sub_25BB6B548();
  v12[2] = v13;
  swift_endAccess();

LABEL_10:
  v16 = sub_25BBE5CAC(a3);
  v38 = v17;
  v39 = v18;
  v40 = v16 & 1;
  v41 = v19;
  sub_25BB6B668(&v42);
  v20 = *(v42 + 16);

  *&v33 = a1;
  *(&v44 + 1) = &type metadata for BFloat16;
  *&v45 = sub_25BB18AFC();
  LOWORD(__src) = a2;
  v47 = &type metadata for BFloat16;
  v48 = v45;
  WORD4(v45) = HIWORD(a2);
  v50 = 2306;
  v37 = 0;
  *&v53 = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/RandomOp.swift";
  *(&v53 + 1) = 110;
  v54[0] = 2;
  *&v54[8] = xmmword_25BCBC690;
  *&v54[24] = "init(id:state:shape:distribution:creationSite:)";
  v55 = 47;
  v56 = 2;
  type metadata accessor for RandomOperation();
  swift_allocObject();
  sub_25BC323E4(0, 0, 0, v20, &v33, &__src, &v53);
  v21 = sub_25BB18AA4();
  sub_25BAA51C8(v51, &v33);
  if (*(&v34 + 1))
  {
    __src = v33;
    v44 = v34;
    v45 = v35;
    v46 = v36;
    sub_25BABEF40(&__src, v32);
    sub_25BC170C8(v21, v32, &v33);
    sub_25BA9C2C8(v32);
    sub_25BABF0A8(&__src);
  }

  else
  {
    sub_25BA9C2C8(&v33);
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0;
  }

  type metadata accessor for ContextManager();
  sub_25BAA49B8();
  sub_25BAA4A5C(&__src);

  v22 = v49;

  sub_25BAA4AF4(&__src);
  sub_25BAA49B8();
  sub_25BAA4A5C(&__src);

  v23 = v48;

  sub_25BAA4AF4(&__src);
  type metadata accessor for TensorRepresentation();
  v24 = swift_allocObject();

  LOBYTE(__src) = 1;
  v26 = sub_25BC0C634(v25, 0, &v33, 0x100000000, v22, v23, v24);
  type metadata accessor for TensorHandle();
  v27 = swift_allocObject();
  *(v27 + 16) = v26;

  sub_25BAA6EB0();
  sub_25BAA51C8(v51, &v33);
  if (*(&v34 + 1))
  {
    __src = v33;
    v44 = v34;
    v45 = v35;
    v46 = v36;
    *&v33 = v27;
    v28 = Tensor.scalarType.getter();
    v30 = sub_25BBABD24(v28, v29);
    if (v30 != 2)
    {
      sub_25BC87800(&__src, v30 & 1);
    }

    *&v33 = v27;

    Tensor.place(on:)(&__src);

    sub_25BA9C2C8(a5);
    sub_25BABF0A8(&__src);
    sub_25BA9C2C8(v51);

    v27 = v33;
  }

  else
  {

    sub_25BA9C2C8(a5);
    sub_25BA9C2C8(v51);
    sub_25BA9C2C8(&v33);
  }

  *a6 = v27;
}

void sub_25BB1527C()
{
  OUTLINED_FUNCTION_38_2();
  OUTLINED_FUNCTION_26_4();
  v8 = v7;
  v10 = v9;
  OUTLINED_FUNCTION_23_2(v11, v12, v13, v14);
  if (v148)
  {
    OUTLINED_FUNCTION_11_10();
  }

  else
  {
    type metadata accessor for ContextManager();
    v15 = sub_25BAA49B8();
    OUTLINED_FUNCTION_36_0(v15, v16, v17, v18, v19, v20, v21, v22, v108, v116, v117, v118, v119, v120, v121, v122, v123, *(&v123 + 1), v124, *(&v124 + 1), v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, __src[0]);

    sub_25BAA51C8(__src, v146);
    sub_25BAA4AF4(__src);
    if (v148)
    {
      sub_25BA9C2C8(&v147);
    }
  }

  if ((v5 & 1) == 0)
  {
    goto LABEL_10;
  }

  v23 = type metadata accessor for ContextManager();
  sub_25BAA49B8();
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_15_4();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 16) = v6;
  if (isUniquelyReferenced_nonNull_native)
  {
    if (v23)
    {
      goto LABEL_8;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_25BBF1454(v6);
  v6 = v107;
  *(v5 + 16) = v107;
  if (!v23)
  {
    goto LABEL_20;
  }

LABEL_8:
  if (v23 > *(v6 + 16))
  {
LABEL_21:
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_42_0();
  OUTLINED_FUNCTION_41_1();

LABEL_10:
  v25 = sub_25BBE5CAC(v4);
  v34 = OUTLINED_FUNCTION_13_4(v33, v25, v26, v27, v28, v29, v30, v31, v32, v108, v116, v117, v118, v119, v120, v121, v122, v123, *(&v123 + 1), v124, *(&v124 + 1), v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136);
  OUTLINED_FUNCTION_40_2(v34, v35, v36, v37, v38, v39, v40, v41, v109, v116, v117, v118, v119, v120, v121, v122, v123, *(&v123 + 1), v124, *(&v124 + 1), v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136);

  v138 = MEMORY[0x277D84DC8];
  v139 = &protocol witness table for Float16;
  *__src = v10;
  v141 = MEMORY[0x277D84DC8];
  v142 = &protocol witness table for Float16;
  v140 = v8;
  v144 = v2;
  v145 = 8;
  HIBYTE(v127) = 0;
  OUTLINED_FUNCTION_19_3("/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/RandomOp.swift");
  OUTLINED_FUNCTION_14_3(v42, xmmword_25BCBC690);
  v43 = swift_allocObject();
  OUTLINED_FUNCTION_7_8(v43, v44, v45, v46, v47, v48, v49, v50, v110, v116, v117, v118, v119, v120, v121, v122, v3, *(&v123 + 1), v124, *(&v124 + 1), v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, __src[0]);
  v51 = sub_25BB18AA4();
  v59 = OUTLINED_FUNCTION_44_0(v51, v52, v53, v54, v55, v56, v57, v58);
  if (*(&v124 + 1))
  {
    OUTLINED_FUNCTION_0_12(v59, v60, v61, v62, v63, v64, v65, v66, v111, v116, v117, v118, v119, v120, v121, v122, v123, v124, v67);
    v68 = sub_25BABEF40(__src, &v116);
    OUTLINED_FUNCTION_30_3(v68);
    sub_25BA9C2C8(&v116);
    sub_25BABF0A8(__src);
  }

  else
  {
    sub_25BA9C2C8(&v123);
    OUTLINED_FUNCTION_27_1();
  }

  type metadata accessor for ContextManager();
  v69 = sub_25BAA49B8();
  OUTLINED_FUNCTION_36_0(v69, v70, v71, v72, v73, v74, v75, v76, v111, v116, v117, v118, v119, v120, v121, v122, v123, *(&v123 + 1), v124, *(&v124 + 1), v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, __src[0]);

  v77 = v143;

  sub_25BAA4AF4(__src);
  v78 = sub_25BAA49B8();
  OUTLINED_FUNCTION_36_0(v78, v79, v80, v81, v82, v83, v84, v85, v112, v116, v117, v118, v119, v120, v121, v122, v123, *(&v123 + 1), v124, *(&v124 + 1), v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, __src[0]);

  sub_25BAA4AF4(__src);
  type metadata accessor for TensorRepresentation();
  swift_allocObject();

  OUTLINED_FUNCTION_8(v86, v87, v88, v89, v90, v91, v92, v93, v113, v116, v117, v118, v119, v120, v121, v122, v123, *(&v123 + 1), v124, *(&v124 + 1), v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, __src[0]);
  type metadata accessor for TensorHandle();
  v94 = swift_allocObject();
  OUTLINED_FUNCTION_43_1(v94);
  sub_25BAA6EB0();
  v95 = sub_25BAA51C8(v146, &v123);
  if (*(&v124 + 1))
  {
    OUTLINED_FUNCTION_0_12(v95, v96, v97, v98, v99, v100, v101, v102, v114, v116, v117, v118, v119, v120, v121, v122, v123, v124, v103);
    *&v123 = v77;
    v104 = Tensor.scalarType.getter();
    if (sub_25BBABD24(v104, v105) != 2)
    {
      OUTLINED_FUNCTION_34_2();
      OUTLINED_FUNCTION_16_9(v106, v115, v116, v117, v118, v119, v120, v121, v122, v123, *(&v123 + 1), v124, *(&v124 + 1), v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, __src[0]);
    }

    *&v123 = v77;

    Tensor.place(on:)(__src);

    sub_25BA9C2C8(v1);
    sub_25BABF0A8(__src);
    sub_25BA9C2C8(v146);

    v77 = v123;
  }

  else
  {

    sub_25BA9C2C8(v1);
    sub_25BA9C2C8(v146);
    sub_25BA9C2C8(&v123);
  }

  *v0 = v77;
  OUTLINED_FUNCTION_37_0();
}

void sub_25BB155AC(uint64_t a1@<X0>, __int16 a2@<W1>, __int16 a3@<W2>, unint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  sub_25BAA51C8(a6, &v55);
  if (*&v56[8])
  {
    v53[0] = v55;
    v53[1] = *v56;
    v53[2] = *&v56[16];
    v54 = v57;
  }

  else
  {
    type metadata accessor for ContextManager();
    sub_25BAA49B8();
    sub_25BAA4A5C(&__src);

    sub_25BAA51C8(&__src, v53);
    sub_25BAA4AF4(&__src);
    if (*&v56[8])
    {
      sub_25BA9C2C8(&v55);
    }
  }

  if ((a5 & 1) == 0)
  {
    goto LABEL_10;
  }

  type metadata accessor for ContextManager();
  v14 = sub_25BAA49B8();
  swift_beginAccess();
  v15 = v14[2];
  v16 = *(v15 + 16);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14[2] = v15;
  if (isUniquelyReferenced_nonNull_native)
  {
    if (v16)
    {
      goto LABEL_8;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_25BBF1454(v15);
  v15 = v33;
  v14[2] = v33;
  if (!v16)
  {
    goto LABEL_20;
  }

LABEL_8:
  if (v16 > *(v15 + 16))
  {
LABEL_21:
    __break(1u);
    return;
  }

  a4 = sub_25BB6B548();
  v14[2] = v15;
  swift_endAccess();

LABEL_10:
  v18 = sub_25BBE5CAC(a4);
  v40 = v19;
  v41 = v20;
  v42 = v18 & 1;
  v43 = v21;
  sub_25BB6B668(&v44);
  v22 = *(v44 + 16);

  *&v35 = a1;
  *(&v46 + 1) = &type metadata for BFloat16;
  *&v47 = sub_25BB18AFC();
  LOWORD(__src) = a2;
  v49 = &type metadata for BFloat16;
  v50 = v47;
  WORD4(v47) = a3;
  v52 = 2304;
  v39 = 0;
  *&v55 = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/RandomOp.swift";
  *(&v55 + 1) = 110;
  v56[0] = 2;
  *&v56[8] = xmmword_25BCBC690;
  *&v56[24] = "init(id:state:shape:distribution:creationSite:)";
  v57 = 47;
  v58 = 2;
  type metadata accessor for RandomOperation();
  swift_allocObject();
  sub_25BC323E4(0, 0, 0, v22, &v35, &__src, &v55);
  v23 = sub_25BB18AA4();
  sub_25BAA51C8(v53, &v35);
  if (*(&v36 + 1))
  {
    __src = v35;
    v46 = v36;
    v47 = v37;
    v48 = v38;
    sub_25BABEF40(&__src, v34);
    sub_25BC170C8(v23, v34, &v35);
    sub_25BA9C2C8(v34);
    sub_25BABF0A8(&__src);
  }

  else
  {
    sub_25BA9C2C8(&v35);
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0;
  }

  type metadata accessor for ContextManager();
  sub_25BAA49B8();
  sub_25BAA4A5C(&__src);

  v24 = v51;

  sub_25BAA4AF4(&__src);
  sub_25BAA49B8();
  sub_25BAA4A5C(&__src);

  v25 = v50;

  sub_25BAA4AF4(&__src);
  type metadata accessor for TensorRepresentation();
  v26 = swift_allocObject();

  LOBYTE(__src) = 1;
  v28 = sub_25BC0C634(v27, 0, &v35, 0x100000000, v24, v25, v26);
  type metadata accessor for TensorHandle();
  v29 = swift_allocObject();
  *(v29 + 16) = v28;

  sub_25BAA6EB0();
  sub_25BAA51C8(v53, &v35);
  if (*(&v36 + 1))
  {
    __src = v35;
    v46 = v36;
    v47 = v37;
    v48 = v38;
    *&v35 = v29;
    v30 = Tensor.scalarType.getter();
    v32 = sub_25BBABD24(v30, v31);
    if (v32 != 2)
    {
      sub_25BC87800(&__src, v32 & 1);
    }

    *&v35 = v29;

    Tensor.place(on:)(&__src);

    sub_25BA9C2C8(a6);
    sub_25BABF0A8(&__src);
    sub_25BA9C2C8(v53);

    v29 = v35;
  }

  else
  {

    sub_25BA9C2C8(a6);
    sub_25BA9C2C8(v53);
    sub_25BA9C2C8(&v35);
  }

  *a7 = v29;
}

void sub_25BB15A80()
{
  OUTLINED_FUNCTION_38_2();
  OUTLINED_FUNCTION_26_4();
  v8 = v7;
  v10 = v9;
  OUTLINED_FUNCTION_23_2(v11, v12, v13, v14);
  if (v148)
  {
    OUTLINED_FUNCTION_11_10();
  }

  else
  {
    type metadata accessor for ContextManager();
    v15 = sub_25BAA49B8();
    OUTLINED_FUNCTION_36_0(v15, v16, v17, v18, v19, v20, v21, v22, v108, v116, v117, v118, v119, v120, v121, v122, v123, *(&v123 + 1), v124, *(&v124 + 1), v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, __src[0]);

    sub_25BAA51C8(__src, v146);
    sub_25BAA4AF4(__src);
    if (v148)
    {
      sub_25BA9C2C8(&v147);
    }
  }

  if ((v5 & 1) == 0)
  {
    goto LABEL_10;
  }

  v23 = type metadata accessor for ContextManager();
  sub_25BAA49B8();
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_15_4();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 16) = v6;
  if (isUniquelyReferenced_nonNull_native)
  {
    if (v23)
    {
      goto LABEL_8;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_25BBF1454(v6);
  v6 = v107;
  *(v5 + 16) = v107;
  if (!v23)
  {
    goto LABEL_20;
  }

LABEL_8:
  if (v23 > *(v6 + 16))
  {
LABEL_21:
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_42_0();
  OUTLINED_FUNCTION_41_1();

LABEL_10:
  v25 = sub_25BBE5CAC(v4);
  v34 = OUTLINED_FUNCTION_13_4(v33, v25, v26, v27, v28, v29, v30, v31, v32, v108, v116, v117, v118, v119, v120, v121, v122, v123, *(&v123 + 1), v124, *(&v124 + 1), v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136);
  OUTLINED_FUNCTION_40_2(v34, v35, v36, v37, v38, v39, v40, v41, v109, v116, v117, v118, v119, v120, v121, v122, v123, *(&v123 + 1), v124, *(&v124 + 1), v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136);

  v138 = MEMORY[0x277D83A90];
  v139 = &protocol witness table for Float;
  *__src = v10;
  v141 = MEMORY[0x277D83A90];
  v142 = &protocol witness table for Float;
  v140 = v8;
  v144 = v2;
  v145 = 10;
  HIBYTE(v127) = 0;
  OUTLINED_FUNCTION_19_3("/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/RandomOp.swift");
  OUTLINED_FUNCTION_14_3(v42, xmmword_25BCBC690);
  v43 = swift_allocObject();
  OUTLINED_FUNCTION_7_8(v43, v44, v45, v46, v47, v48, v49, v50, v110, v116, v117, v118, v119, v120, v121, v122, v3, *(&v123 + 1), v124, *(&v124 + 1), v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, __src[0]);
  v51 = sub_25BB18AA4();
  v59 = OUTLINED_FUNCTION_44_0(v51, v52, v53, v54, v55, v56, v57, v58);
  if (*(&v124 + 1))
  {
    OUTLINED_FUNCTION_0_12(v59, v60, v61, v62, v63, v64, v65, v66, v111, v116, v117, v118, v119, v120, v121, v122, v123, v124, v67);
    v68 = sub_25BABEF40(__src, &v116);
    OUTLINED_FUNCTION_30_3(v68);
    sub_25BA9C2C8(&v116);
    sub_25BABF0A8(__src);
  }

  else
  {
    sub_25BA9C2C8(&v123);
    OUTLINED_FUNCTION_27_1();
  }

  type metadata accessor for ContextManager();
  v69 = sub_25BAA49B8();
  OUTLINED_FUNCTION_36_0(v69, v70, v71, v72, v73, v74, v75, v76, v111, v116, v117, v118, v119, v120, v121, v122, v123, *(&v123 + 1), v124, *(&v124 + 1), v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, __src[0]);

  v77 = v143;

  sub_25BAA4AF4(__src);
  v78 = sub_25BAA49B8();
  OUTLINED_FUNCTION_36_0(v78, v79, v80, v81, v82, v83, v84, v85, v112, v116, v117, v118, v119, v120, v121, v122, v123, *(&v123 + 1), v124, *(&v124 + 1), v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, __src[0]);

  sub_25BAA4AF4(__src);
  type metadata accessor for TensorRepresentation();
  swift_allocObject();

  OUTLINED_FUNCTION_8(v86, v87, v88, v89, v90, v91, v92, v93, v113, v116, v117, v118, v119, v120, v121, v122, v123, *(&v123 + 1), v124, *(&v124 + 1), v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, __src[0]);
  type metadata accessor for TensorHandle();
  v94 = swift_allocObject();
  OUTLINED_FUNCTION_43_1(v94);
  sub_25BAA6EB0();
  v95 = sub_25BAA51C8(v146, &v123);
  if (*(&v124 + 1))
  {
    OUTLINED_FUNCTION_0_12(v95, v96, v97, v98, v99, v100, v101, v102, v114, v116, v117, v118, v119, v120, v121, v122, v123, v124, v103);
    *&v123 = v77;
    v104 = Tensor.scalarType.getter();
    if (sub_25BBABD24(v104, v105) != 2)
    {
      OUTLINED_FUNCTION_34_2();
      OUTLINED_FUNCTION_16_9(v106, v115, v116, v117, v118, v119, v120, v121, v122, v123, *(&v123 + 1), v124, *(&v124 + 1), v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, __src[0]);
    }

    *&v123 = v77;

    Tensor.place(on:)(__src);

    sub_25BA9C2C8(v1);
    sub_25BABF0A8(__src);
    sub_25BA9C2C8(v146);

    v77 = v123;
  }

  else
  {

    sub_25BA9C2C8(v1);
    sub_25BA9C2C8(v146);
    sub_25BA9C2C8(&v123);
  }

  *v0 = v77;
  OUTLINED_FUNCTION_37_0();
}

void sub_25BB15DB0()
{
  OUTLINED_FUNCTION_38_2();
  OUTLINED_FUNCTION_26_4();
  v8 = v7;
  v10 = v9;
  OUTLINED_FUNCTION_23_2(v11, v12, v13, v14);
  if (v148)
  {
    OUTLINED_FUNCTION_11_10();
  }

  else
  {
    type metadata accessor for ContextManager();
    v15 = sub_25BAA49B8();
    OUTLINED_FUNCTION_36_0(v15, v16, v17, v18, v19, v20, v21, v22, v108, v116, v117, v118, v119, v120, v121, v122, v123, *(&v123 + 1), v124, *(&v124 + 1), v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, __src[0]);

    sub_25BAA51C8(__src, v146);
    sub_25BAA4AF4(__src);
    if (v148)
    {
      sub_25BA9C2C8(&v147);
    }
  }

  if ((v5 & 1) == 0)
  {
    goto LABEL_10;
  }

  v23 = type metadata accessor for ContextManager();
  sub_25BAA49B8();
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_15_4();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 16) = v6;
  if (isUniquelyReferenced_nonNull_native)
  {
    if (v23)
    {
      goto LABEL_8;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_25BBF1454(v6);
  v6 = v107;
  *(v5 + 16) = v107;
  if (!v23)
  {
    goto LABEL_20;
  }

LABEL_8:
  if (v23 > *(v6 + 16))
  {
LABEL_21:
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_42_0();
  OUTLINED_FUNCTION_41_1();

LABEL_10:
  v25 = sub_25BBE5CAC(v4);
  v34 = OUTLINED_FUNCTION_13_4(v33, v25, v26, v27, v28, v29, v30, v31, v32, v108, v116, v117, v118, v119, v120, v121, v122, v123, *(&v123 + 1), v124, *(&v124 + 1), v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136);
  OUTLINED_FUNCTION_40_2(v34, v35, v36, v37, v38, v39, v40, v41, v109, v116, v117, v118, v119, v120, v121, v122, v123, *(&v123 + 1), v124, *(&v124 + 1), v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136);

  v138 = MEMORY[0x277D839F8];
  v139 = &protocol witness table for Double;
  *__src = v10;
  v141 = MEMORY[0x277D839F8];
  v142 = &protocol witness table for Double;
  v140 = v8;
  v144 = v2;
  v145 = 11;
  HIBYTE(v127) = 0;
  OUTLINED_FUNCTION_19_3("/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/RandomOp.swift");
  OUTLINED_FUNCTION_14_3(v42, xmmword_25BCBC690);
  v43 = swift_allocObject();
  OUTLINED_FUNCTION_7_8(v43, v44, v45, v46, v47, v48, v49, v50, v110, v116, v117, v118, v119, v120, v121, v122, v3, *(&v123 + 1), v124, *(&v124 + 1), v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, __src[0]);
  v51 = sub_25BB18AA4();
  v59 = OUTLINED_FUNCTION_44_0(v51, v52, v53, v54, v55, v56, v57, v58);
  if (*(&v124 + 1))
  {
    OUTLINED_FUNCTION_0_12(v59, v60, v61, v62, v63, v64, v65, v66, v111, v116, v117, v118, v119, v120, v121, v122, v123, v124, v67);
    v68 = sub_25BABEF40(__src, &v116);
    OUTLINED_FUNCTION_30_3(v68);
    sub_25BA9C2C8(&v116);
    sub_25BABF0A8(__src);
  }

  else
  {
    sub_25BA9C2C8(&v123);
    OUTLINED_FUNCTION_27_1();
  }

  type metadata accessor for ContextManager();
  v69 = sub_25BAA49B8();
  OUTLINED_FUNCTION_36_0(v69, v70, v71, v72, v73, v74, v75, v76, v111, v116, v117, v118, v119, v120, v121, v122, v123, *(&v123 + 1), v124, *(&v124 + 1), v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, __src[0]);

  v77 = v143;

  sub_25BAA4AF4(__src);
  v78 = sub_25BAA49B8();
  OUTLINED_FUNCTION_36_0(v78, v79, v80, v81, v82, v83, v84, v85, v112, v116, v117, v118, v119, v120, v121, v122, v123, *(&v123 + 1), v124, *(&v124 + 1), v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, __src[0]);

  sub_25BAA4AF4(__src);
  type metadata accessor for TensorRepresentation();
  swift_allocObject();

  OUTLINED_FUNCTION_8(v86, v87, v88, v89, v90, v91, v92, v93, v113, v116, v117, v118, v119, v120, v121, v122, v123, *(&v123 + 1), v124, *(&v124 + 1), v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, __src[0]);
  type metadata accessor for TensorHandle();
  v94 = swift_allocObject();
  OUTLINED_FUNCTION_43_1(v94);
  sub_25BAA6EB0();
  v95 = sub_25BAA51C8(v146, &v123);
  if (*(&v124 + 1))
  {
    OUTLINED_FUNCTION_0_12(v95, v96, v97, v98, v99, v100, v101, v102, v114, v116, v117, v118, v119, v120, v121, v122, v123, v124, v103);
    *&v123 = v77;
    v104 = Tensor.scalarType.getter();
    if (sub_25BBABD24(v104, v105) != 2)
    {
      OUTLINED_FUNCTION_34_2();
      OUTLINED_FUNCTION_16_9(v106, v115, v116, v117, v118, v119, v120, v121, v122, v123, *(&v123 + 1), v124, *(&v124 + 1), v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, __src[0]);
    }

    *&v123 = v77;

    Tensor.place(on:)(__src);

    sub_25BA9C2C8(v1);
    sub_25BABF0A8(__src);
    sub_25BA9C2C8(v146);

    v77 = v123;
  }

  else
  {

    sub_25BA9C2C8(v1);
    sub_25BA9C2C8(v146);
    sub_25BA9C2C8(&v123);
  }

  *v0 = v77;
  OUTLINED_FUNCTION_37_0();
}

void sub_25BB160E0(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X8>, __n128 a6@<Q0>, __n128 a7@<Q1>)
{
  v10 = a7.n128_u16[0];
  v11 = a6.n128_u16[0];
  sub_25BAA51C8(a4, &v57);
  if (*&v58[8])
  {
    v55[0] = v57;
    v55[1] = *v58;
    v55[2] = *&v58[16];
    v56 = v59;
  }

  else
  {
    type metadata accessor for ContextManager();
    sub_25BAA49B8();
    sub_25BAA4A5C(&__src);

    sub_25BAA51C8(&__src, v55);
    sub_25BAA4AF4(&__src);
    if (*&v58[8])
    {
      sub_25BA9C2C8(&v57);
    }
  }

  if ((a3 & 1) == 0)
  {
    goto LABEL_10;
  }

  type metadata accessor for ContextManager();
  v14 = sub_25BAA49B8();
  swift_beginAccess();
  v15 = v14[2];
  v16 = *(v15 + 16);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14[2] = v15;
  if (isUniquelyReferenced_nonNull_native)
  {
    if (v16)
    {
      goto LABEL_8;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_25BBF1454(v15);
  v15 = v33;
  v14[2] = v33;
  if (!v16)
  {
    goto LABEL_20;
  }

LABEL_8:
  if (v16 > *(v15 + 16))
  {
LABEL_21:
    __break(1u);
    return;
  }

  a2 = sub_25BB6B548();
  v14[2] = v15;
  swift_endAccess();

LABEL_10:
  v18 = sub_25BBE5CAC(a2);
  v40 = v19;
  v41 = v20;
  v42 = v18 & 1;
  v43 = v21;
  sub_25BB6B668(&v44);
  v22 = *(v44 + 16);

  *&v35 = a1;
  *(&v46 + 1) = MEMORY[0x277D84DC8];
  *&v47 = &protocol witness table for Float16;
  LOWORD(__src) = v11;
  v49 = MEMORY[0x277D84DC8];
  v50 = &protocol witness table for Float16;
  WORD4(v47) = v10;
  v52 = MEMORY[0x277D84DC8];
  v53 = &protocol witness table for Float16;
  LOWORD(v51) = COERCE_UNSIGNED_INT(2.0);
  v54 = 2049;
  v39 = 0;
  *&v57 = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/RandomOp.swift";
  *(&v57 + 1) = 110;
  v58[0] = 2;
  *&v58[8] = xmmword_25BCBC690;
  *&v58[24] = "init(id:state:shape:distribution:creationSite:)";
  v59 = 47;
  v60 = 2;
  v61 = 0;
  type metadata accessor for RandomOperation();
  swift_allocObject();
  sub_25BC323E4(0, 0, 0, v22, &v35, &__src, &v57);
  v23 = sub_25BB18AA4();
  sub_25BAA51C8(v55, &v35);
  if (*(&v36 + 1))
  {
    __src = v35;
    v46 = v36;
    v47 = v37;
    v48 = v38;
    sub_25BABEF40(&__src, v34);
    sub_25BC170C8(v23, v34, &v35);
    sub_25BA9C2C8(v34);
    sub_25BABF0A8(&__src);
  }

  else
  {
    sub_25BA9C2C8(&v35);
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0;
  }

  type metadata accessor for ContextManager();
  sub_25BAA49B8();
  sub_25BAA4A5C(&__src);

  v24 = v51;

  sub_25BAA4AF4(&__src);
  sub_25BAA49B8();
  sub_25BAA4A5C(&__src);

  v25 = v50;

  sub_25BAA4AF4(&__src);
  type metadata accessor for TensorRepresentation();
  v26 = swift_allocObject();

  LOBYTE(__src) = 1;
  v28 = sub_25BC0C634(v27, 0, &v35, 0x100000000, v24, v25, v26);
  type metadata accessor for TensorHandle();
  v29 = swift_allocObject();
  *(v29 + 16) = v28;

  sub_25BAA6EB0();
  sub_25BAA51C8(v55, &v35);
  if (*(&v36 + 1))
  {
    __src = v35;
    v46 = v36;
    v47 = v37;
    v48 = v38;
    *&v35 = v29;
    v30 = Tensor.scalarType.getter();
    v32 = sub_25BBABD24(v30, v31);
    if (v32 != 2)
    {
      sub_25BC87800(&__src, v32 & 1);
    }

    *&v35 = v29;

    Tensor.place(on:)(&__src);

    sub_25BA9C2C8(a4);
    sub_25BABF0A8(&__src);
    sub_25BA9C2C8(v55);

    v29 = v35;
  }

  else
  {

    sub_25BA9C2C8(a4);
    sub_25BA9C2C8(v55);
    sub_25BA9C2C8(&v35);
  }

  *a5 = v29;
}

void sub_25BB165CC(uint64_t a1@<X0>, __int16 a2@<W1>, __int16 a3@<W2>, unint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  sub_25BAA51C8(a6, &v57);
  if (*&v58[8])
  {
    v55[0] = v57;
    v55[1] = *v58;
    v55[2] = *&v58[16];
    v56 = v59;
  }

  else
  {
    type metadata accessor for ContextManager();
    sub_25BAA49B8();
    sub_25BAA4A5C(&__src);

    sub_25BAA51C8(&__src, v55);
    sub_25BAA4AF4(&__src);
    if (*&v58[8])
    {
      sub_25BA9C2C8(&v57);
    }
  }

  if ((a5 & 1) == 0)
  {
    goto LABEL_10;
  }

  type metadata accessor for ContextManager();
  v14 = sub_25BAA49B8();
  swift_beginAccess();
  v15 = v14[2];
  v16 = *(v15 + 16);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14[2] = v15;
  if (isUniquelyReferenced_nonNull_native)
  {
    if (v16)
    {
      goto LABEL_8;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_25BBF1454(v15);
  v15 = v33;
  v14[2] = v33;
  if (!v16)
  {
    goto LABEL_20;
  }

LABEL_8:
  if (v16 > *(v15 + 16))
  {
LABEL_21:
    __break(1u);
    return;
  }

  a4 = sub_25BB6B548();
  v14[2] = v15;
  swift_endAccess();

LABEL_10:
  v18 = sub_25BBE5CAC(a4);
  v40 = v19;
  v41 = v20;
  v42 = v18 & 1;
  v43 = v21;
  sub_25BB6B668(&v44);
  v22 = *(v44 + 16);

  *&v35 = a1;
  *(&v46 + 1) = &type metadata for BFloat16;
  *&v47 = sub_25BB18AFC();
  LOWORD(__src) = a2;
  v49 = &type metadata for BFloat16;
  v50 = v47;
  WORD4(v47) = a3;
  v52 = &type metadata for BFloat16;
  v53 = v47;
  LOWORD(v51) = 0x4000;
  v54 = 2305;
  v39 = 0;
  *&v57 = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/RandomOp.swift";
  *(&v57 + 1) = 110;
  v58[0] = 2;
  *&v58[8] = xmmword_25BCBC690;
  *&v58[24] = "init(id:state:shape:distribution:creationSite:)";
  v59 = 47;
  v60 = 2;
  v61 = 0;
  type metadata accessor for RandomOperation();
  swift_allocObject();
  sub_25BC323E4(0, 0, 0, v22, &v35, &__src, &v57);
  v23 = sub_25BB18AA4();
  sub_25BAA51C8(v55, &v35);
  if (*(&v36 + 1))
  {
    __src = v35;
    v46 = v36;
    v47 = v37;
    v48 = v38;
    sub_25BABEF40(&__src, v34);
    sub_25BC170C8(v23, v34, &v35);
    sub_25BA9C2C8(v34);
    sub_25BABF0A8(&__src);
  }

  else
  {
    sub_25BA9C2C8(&v35);
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0;
  }

  type metadata accessor for ContextManager();
  sub_25BAA49B8();
  sub_25BAA4A5C(&__src);

  v24 = v51;

  sub_25BAA4AF4(&__src);
  sub_25BAA49B8();
  sub_25BAA4A5C(&__src);

  v25 = v50;

  sub_25BAA4AF4(&__src);
  type metadata accessor for TensorRepresentation();
  v26 = swift_allocObject();

  LOBYTE(__src) = 1;
  v28 = sub_25BC0C634(v27, 0, &v35, 0x100000000, v24, v25, v26);
  type metadata accessor for TensorHandle();
  v29 = swift_allocObject();
  *(v29 + 16) = v28;

  sub_25BAA6EB0();
  sub_25BAA51C8(v55, &v35);
  if (*(&v36 + 1))
  {
    __src = v35;
    v46 = v36;
    v47 = v37;
    v48 = v38;
    *&v35 = v29;
    v30 = Tensor.scalarType.getter();
    v32 = sub_25BBABD24(v30, v31);
    if (v32 != 2)
    {
      sub_25BC87800(&__src, v32 & 1);
    }

    *&v35 = v29;

    Tensor.place(on:)(&__src);

    sub_25BA9C2C8(a6);
    sub_25BABF0A8(&__src);
    sub_25BA9C2C8(v55);

    v29 = v35;
  }

  else
  {

    sub_25BA9C2C8(a6);
    sub_25BA9C2C8(v55);
    sub_25BA9C2C8(&v35);
  }

  *a7 = v29;
}

void sub_25BB16AB0(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X8>, float a6@<S0>, float a7@<S1>)
{
  sub_25BAA51C8(a4, &v57);
  if (*&v58[8])
  {
    v55[0] = v57;
    v55[1] = *v58;
    v55[2] = *&v58[16];
    v56 = v59;
  }

  else
  {
    type metadata accessor for ContextManager();
    sub_25BAA49B8();
    sub_25BAA4A5C(&__src);

    sub_25BAA51C8(&__src, v55);
    sub_25BAA4AF4(&__src);
    if (*&v58[8])
    {
      sub_25BA9C2C8(&v57);
    }
  }

  if ((a3 & 1) == 0)
  {
    goto LABEL_10;
  }

  type metadata accessor for ContextManager();
  v14 = sub_25BAA49B8();
  swift_beginAccess();
  v15 = v14[2];
  v16 = *(v15 + 16);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14[2] = v15;
  if (isUniquelyReferenced_nonNull_native)
  {
    if (v16)
    {
      goto LABEL_8;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_25BBF1454(v15);
  v15 = v33;
  v14[2] = v33;
  if (!v16)
  {
    goto LABEL_20;
  }

LABEL_8:
  if (v16 > *(v15 + 16))
  {
LABEL_21:
    __break(1u);
    return;
  }

  a2 = sub_25BB6B548();
  v14[2] = v15;
  swift_endAccess();

LABEL_10:
  v18 = sub_25BBE5CAC(a2);
  v40 = v19;
  v41 = v20;
  v42 = v18 & 1;
  v43 = v21;
  sub_25BB6B668(&v44);
  v22 = *(v44 + 16);

  *&v35 = a1;
  *(&v46 + 1) = MEMORY[0x277D83A90];
  *&v47 = &protocol witness table for Float;
  *&__src = a6;
  v49 = MEMORY[0x277D83A90];
  v50 = &protocol witness table for Float;
  *(&v47 + 2) = a7;
  v52 = MEMORY[0x277D83A90];
  v53 = &protocol witness table for Float;
  LODWORD(v51) = 0x40000000;
  v54 = 2561;
  v39 = 0;
  *&v57 = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/RandomOp.swift";
  *(&v57 + 1) = 110;
  v58[0] = 2;
  *&v58[8] = xmmword_25BCBC690;
  *&v58[24] = "init(id:state:shape:distribution:creationSite:)";
  v59 = 47;
  v60 = 2;
  v61 = 0;
  type metadata accessor for RandomOperation();
  swift_allocObject();
  sub_25BC323E4(0, 0, 0, v22, &v35, &__src, &v57);
  v23 = sub_25BB18AA4();
  sub_25BAA51C8(v55, &v35);
  if (*(&v36 + 1))
  {
    __src = v35;
    v46 = v36;
    v47 = v37;
    v48 = v38;
    sub_25BABEF40(&__src, v34);
    sub_25BC170C8(v23, v34, &v35);
    sub_25BA9C2C8(v34);
    sub_25BABF0A8(&__src);
  }

  else
  {
    sub_25BA9C2C8(&v35);
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0;
  }

  type metadata accessor for ContextManager();
  sub_25BAA49B8();
  sub_25BAA4A5C(&__src);

  v24 = v51;

  sub_25BAA4AF4(&__src);
  sub_25BAA49B8();
  sub_25BAA4A5C(&__src);

  v25 = v50;

  sub_25BAA4AF4(&__src);
  type metadata accessor for TensorRepresentation();
  v26 = swift_allocObject();

  LOBYTE(__src) = 1;
  v28 = sub_25BC0C634(v27, 0, &v35, 0x100000000, v24, v25, v26);
  type metadata accessor for TensorHandle();
  v29 = swift_allocObject();
  *(v29 + 16) = v28;

  sub_25BAA6EB0();
  sub_25BAA51C8(v55, &v35);
  if (*(&v36 + 1))
  {
    __src = v35;
    v46 = v36;
    v47 = v37;
    v48 = v38;
    *&v35 = v29;
    v30 = Tensor.scalarType.getter();
    v32 = sub_25BBABD24(v30, v31);
    if (v32 != 2)
    {
      sub_25BC87800(&__src, v32 & 1);
    }

    *&v35 = v29;

    Tensor.place(on:)(&__src);

    sub_25BA9C2C8(a4);
    sub_25BABF0A8(&__src);
    sub_25BA9C2C8(v55);

    v29 = v35;
  }

  else
  {

    sub_25BA9C2C8(a4);
    sub_25BA9C2C8(v55);
    sub_25BA9C2C8(&v35);
  }

  *a5 = v29;
}

void sub_25BB16F9C(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  sub_25BAA51C8(a4, &v57);
  if (*&v58[8])
  {
    v55[0] = v57;
    v55[1] = *v58;
    v55[2] = *&v58[16];
    v56 = v59;
  }

  else
  {
    type metadata accessor for ContextManager();
    sub_25BAA49B8();
    sub_25BAA4A5C(&__src);

    sub_25BAA51C8(&__src, v55);
    sub_25BAA4AF4(&__src);
    if (*&v58[8])
    {
      sub_25BA9C2C8(&v57);
    }
  }

  if ((a3 & 1) == 0)
  {
    goto LABEL_10;
  }

  type metadata accessor for ContextManager();
  v14 = sub_25BAA49B8();
  swift_beginAccess();
  v15 = v14[2];
  v16 = *(v15 + 16);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14[2] = v15;
  if (isUniquelyReferenced_nonNull_native)
  {
    if (v16)
    {
      goto LABEL_8;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_25BBF1454(v15);
  v15 = v33;
  v14[2] = v33;
  if (!v16)
  {
    goto LABEL_20;
  }

LABEL_8:
  if (v16 > *(v15 + 16))
  {
LABEL_21:
    __break(1u);
    return;
  }

  a2 = sub_25BB6B548();
  v14[2] = v15;
  swift_endAccess();

LABEL_10:
  v18 = sub_25BBE5CAC(a2);
  v40 = v19;
  v41 = v20;
  v42 = v18 & 1;
  v43 = v21;
  sub_25BB6B668(&v44);
  v22 = *(v44 + 16);

  *&v35 = a1;
  *(&v46 + 1) = MEMORY[0x277D839F8];
  *&v47 = &protocol witness table for Double;
  *&__src = a6;
  v49 = MEMORY[0x277D839F8];
  v50 = &protocol witness table for Double;
  *(&v47 + 1) = a7;
  v52 = MEMORY[0x277D839F8];
  v53 = &protocol witness table for Double;
  v51 = 0x4000000000000000;
  v54 = 2817;
  v39 = 0;
  *&v57 = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/RandomOp.swift";
  *(&v57 + 1) = 110;
  v58[0] = 2;
  *&v58[8] = xmmword_25BCBC690;
  *&v58[24] = "init(id:state:shape:distribution:creationSite:)";
  v59 = 47;
  v60 = 2;
  v61 = 0;
  type metadata accessor for RandomOperation();
  swift_allocObject();
  sub_25BC323E4(0, 0, 0, v22, &v35, &__src, &v57);
  v23 = sub_25BB18AA4();
  sub_25BAA51C8(v55, &v35);
  if (*(&v36 + 1))
  {
    __src = v35;
    v46 = v36;
    v47 = v37;
    v48 = v38;
    sub_25BABEF40(&__src, v34);
    sub_25BC170C8(v23, v34, &v35);
    sub_25BA9C2C8(v34);
    sub_25BABF0A8(&__src);
  }

  else
  {
    sub_25BA9C2C8(&v35);
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0;
  }

  type metadata accessor for ContextManager();
  sub_25BAA49B8();
  sub_25BAA4A5C(&__src);

  v24 = v51;

  sub_25BAA4AF4(&__src);
  sub_25BAA49B8();
  sub_25BAA4A5C(&__src);

  v25 = v50;

  sub_25BAA4AF4(&__src);
  type metadata accessor for TensorRepresentation();
  v26 = swift_allocObject();

  LOBYTE(__src) = 1;
  v28 = sub_25BC0C634(v27, 0, &v35, 0x100000000, v24, v25, v26);
  type metadata accessor for TensorHandle();
  v29 = swift_allocObject();
  *(v29 + 16) = v28;

  sub_25BAA6EB0();
  sub_25BAA51C8(v55, &v35);
  if (*(&v36 + 1))
  {
    __src = v35;
    v46 = v36;
    v47 = v37;
    v48 = v38;
    *&v35 = v29;
    v30 = Tensor.scalarType.getter();
    v32 = sub_25BBABD24(v30, v31);
    if (v32 != 2)
    {
      sub_25BC87800(&__src, v32 & 1);
    }

    *&v35 = v29;

    Tensor.place(on:)(&__src);

    sub_25BA9C2C8(a4);
    sub_25BABF0A8(&__src);
    sub_25BA9C2C8(v55);

    v29 = v35;
  }

  else
  {

    sub_25BA9C2C8(a4);
    sub_25BA9C2C8(v55);
    sub_25BA9C2C8(&v35);
  }

  *a5 = v29;
}

uint64_t ParameterInitializer.__deallocating_deinit()
{
  sub_25BB1879C(v0 + 16);
  OUTLINED_FUNCTION_4_12();

  return swift_deallocClassInstance();
}

uint64_t sub_25BB174D8(char a1)
{
  if (!a1)
  {
    return 0x6D726F66696E75;
  }

  if (a1 == 1)
  {
    return 0x6C616D726F6ELL;
  }

  return 0xD000000000000010;
}

uint64_t sub_25BB17538(char a1)
{
  if (!a1)
  {
    return 0x2820746F726F6C47;
  }

  if (a1 == 1)
  {
    return 0x6D69614B28206548;
  }

  return 0x6E7543654CLL;
}

uint64_t sub_25BB175A0(unsigned __int8 a1)
{
  sub_25BCB79CC();
  MEMORY[0x25F878200](a1);
  return sub_25BCB7A3C();
}

uint64_t sub_25BB175F0()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  LOBYTE(v0) = 2;
  if ((sub_25BAB74D0(v2, 2, 0, 2) & 1) == 0)
  {
LABEL_18:
    v16[1] = 0;
    v16[2] = 0;
    v16[0] = v2;
    v17 = 6;
    v18 = xmmword_25BCBC6A0;
    v19 = v0;
    v20 = 7;
    sub_25BADDD28();
  }

  v3 = v1[2];
  if (v3 != 2)
  {
    if (v3 >= 2)
    {
      v16[0] = v1;
      v0 = v16;
      TensorShape.subscript.getter(0, v3 - 2, &v15);
      v5 = *(v15 + 16);
      if (!v5)
      {
        v9 = 1;
LABEL_11:

        v10 = v1[2] - 2;
        v16[0] = v1;
        v0 = v16;
        v11 = TensorShape.subscript.getter(v10);
        v2 = v11 * v9;
        if ((v11 * v9) >> 64 == (v11 * v9) >> 63)
        {
          v12 = v1[2] - 1;
          v16[0] = v1;
          v0 = v16;
          v13 = TensorShape.subscript.getter(v12);
          if ((v13 * v9) >> 64 == (v13 * v9) >> 63)
          {
            return v2;
          }

          goto LABEL_17;
        }

LABEL_16:
        __break(1u);
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      v6 = (v15 + 32);
      v7 = 1;
      while (1)
      {
        v8 = *v6++;
        v9 = v7 * v8;
        if ((v7 * v8) >> 64 != (v7 * v8) >> 63)
        {
          break;
        }

        v7 = v9;
        if (!--v5)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_16;
  }

  v2 = v1[4];
  v4 = v1[5];
  return v2;
}

uint64_t sub_25BB17760(unint64_t a1, char a2)
{
  if (a2)
  {
    return 0;
  }

  v3 = sub_25BBE5CAC(a1);
  v12 = v4;
  v6 = v5;
  v7 = v3;
  v9 = v8;
  v14 = &type metadata for PhiloxRandomNumberGenerator;
  v15 = sub_25BB189FC();
  v10 = swift_allocObject();
  *&v13 = v10;
  *(v10 + 16) = v12;
  *(v10 + 32) = v6;
  *(v10 + 40) = v7 & 1;
  *(v10 + 48) = v9;
  type metadata accessor for AnyRandomNumberGenerator();
  v2 = swift_allocObject();
  sub_25BA97060(&v13, v2 + 16);
  return v2;
}

uint64_t ParameterInitializer.computeDevice.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_35();
  sub_25BB14570(v1 + 16, __src);
  result = memcpy(__dst, __src, sizeof(__dst));
  switch(__dst[84])
  {
    case 1:
    case 2:
    case 3:

      v4 = *&__dst[48];
      *a1 = *&__dst[32];
      *(a1 + 16) = v4;
      *(a1 + 32) = *&__dst[64];
      v5 = *&__dst[80];
      goto LABEL_5;
    case 4:
      result = sub_25BB1879C(__dst);
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0;
      break;
    default:
      v6 = *&__src[5];
      *a1 = *&__src[3];
      *(a1 + 16) = v6;
      *(a1 + 32) = *&__src[7];
      v5 = __src[9];
LABEL_5:
      *(a1 + 48) = v5;
      break;
  }

  return result;
}

double sub_25BB1790C(float a1)
{
  OUTLINED_FUNCTION_4_12();
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D83A90];
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  *(v2 + 32) = &protocol witness table for Float;
  *(v2 + 100) = 0;
  result = 0.0;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0;
  return result;
}

uint64_t sub_25BB1796C(__n128 a1)
{
  __src = a1.n128_u8[0];
  sub_25BB147D0();
  ParameterInitializer.computeDevice.getter(v13);
  v13[60] = 0;
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_12_3(v2, v3, v4, v5, v6, v7, v8, v9, v11, __src);
  return v1;
}

uint64_t static ParameterInitializer.repeating(_:scalarType:on:)(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __src = a1.n128_u8[0];
  sub_25BAA51C8(a4, v16);
  v16[60] = 0;
  OUTLINED_FUNCTION_4_12();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_12_3(v5, v6, v7, v8, v9, v10, v11, v12, v14, __src);
  return v4;
}

uint64_t static ParameterInitializer.randomUniform(in:seed:scalarType:on:)()
{
  OUTLINED_FUNCTION_25_2();
  __src = v1;
  OUTLINED_FUNCTION_52_0(v2, v3);
  OUTLINED_FUNCTION_18_5();
  OUTLINED_FUNCTION_4_12();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_12_3(v4, v5, v6, v7, v8, v9, v10, v11, v13, __src);
  return v0;
}

uint64_t static ParameterInitializer.randomNormal(mean:standardDeviation:seed:scalarType:on:)()
{
  OUTLINED_FUNCTION_25_2();
  __src = v1;
  OUTLINED_FUNCTION_52_0(v2, v3);
  OUTLINED_FUNCTION_18_5();
  OUTLINED_FUNCTION_4_12();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_12_3(v4, v5, v6, v7, v8, v9, v10, v11, v13, __src);
  return v0;
}

uint64_t static ParameterInitializer.heUniform(scale:seed:scalarType:on:)()
{
  OUTLINED_FUNCTION_25_2();
  OUTLINED_FUNCTION_52_0(v1, v2);
  OUTLINED_FUNCTION_18_5();
  OUTLINED_FUNCTION_4_12();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_12_3(v3, v4, v5, v6, v7, v8, v9, v10, v12, 1);
  return v0;
}

uint64_t sub_25BB17B9C()
{
  OUTLINED_FUNCTION_25_2();
  __src = v1;
  OUTLINED_FUNCTION_52_0(v2, v3);
  OUTLINED_FUNCTION_18_5();
  OUTLINED_FUNCTION_4_12();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_12_3(v4, v5, v6, v7, v8, v9, v10, v11, v13, __src);
  return v0;
}

uint64_t ParameterInitializer.description.getter()
{
  OUTLINED_FUNCTION_35();
  sub_25BB14570(v0 + 16, v22);
  switch(v24[52])
  {
    case 1:

      OUTLINED_FUNCTION_21_2();
      sub_25BCB70FC();

      v21 = 0xD000000000000012;
      v18 = sub_25BB187CC();
      MEMORY[0x25F876C90](v18);

      v17 = OUTLINED_FUNCTION_49_2();
      goto LABEL_23;
    case 2:

      OUTLINED_FUNCTION_21_2();
      sub_25BCB70FC();
      MEMORY[0x25F876C90](0xD000000000000015, 0x800000025BCD9E40);
      sub_25BCB69CC();
      MEMORY[0x25F876C90](0xD000000000000016, 0x800000025BCD9E60);
      sub_25BCB69CC();
      MEMORY[0x25F876C90](0x2073612029, 0xE500000000000000);
      v5 = sub_25BCB7C1C();
      MEMORY[0x25F876C90](v5);

      v3 = v21;
      v4 = v24;
      goto LABEL_24;
    case 3:
      v6 = v22[0];
      v7 = v22[1];

      OUTLINED_FUNCTION_21_2();
      sub_25BCB70FC();
      v8 = 0xEC00000029676E69;
      v9 = 0x6D69614B28206548;
      if (v6 != 1)
      {
        v9 = 0x6E7543654CLL;
        v8 = 0xE500000000000000;
      }

      if (v6)
      {
        v10 = v9;
      }

      else
      {
        v10 = 0x2820746F726F6C47;
      }

      if (v6)
      {
        v11 = v8;
      }

      else
      {
        v11 = 0xEF29726569766158;
      }

      MEMORY[0x25F876C90](v10, v11);

      MEMORY[0x25F876C90](32, 0xE100000000000000);
      v12 = 0xE600000000000000;
      v13 = 0x6C616D726F6ELL;
      if (v7 != 1)
      {
        v13 = 0xD000000000000010;
        v12 = 0x800000025BCD9E00;
      }

      if (v7)
      {
        v14 = v13;
      }

      else
      {
        v14 = 0x6D726F66696E75;
      }

      if (v7)
      {
        v15 = v12;
      }

      else
      {
        v15 = 0xE700000000000000;
      }

      MEMORY[0x25F876C90](v14, v15);

      v16 = 0x800000025BCD9E20;
      v17 = 0xD000000000000010;
LABEL_23:
      MEMORY[0x25F876C90](v17, v16);
      v19 = sub_25BCB7C1C();
      MEMORY[0x25F876C90](v19);

      v3 = v21;
      v4 = v24;
      goto LABEL_24;
    case 4:
      sub_25BB1879C(v22);
      return 0x6D6F74737563;
    default:
      OUTLINED_FUNCTION_21_2();
      sub_25BCB70FC();
      MEMORY[0x25F876C90](0x6E69746165706572, 0xEA00000000002067);
      sub_25BCB69CC();
      v1 = OUTLINED_FUNCTION_49_2();
      MEMORY[0x25F876C90](v1);
      v2 = sub_25BCB7C1C();
      MEMORY[0x25F876C90](v2);

      v3 = v21;
      v4 = &v23;
LABEL_24:
      sub_25BA9C2C8(v4);
      return v3;
  }
}

uint64_t sub_25BB18010@<X0>(uint64_t a1@<X8>)
{
  result = sub_25BB14570(v1, v7);
  switch(v10)
  {
    case 1:
    case 2:
    case 3:

      v4 = *&v8[24];
      *a1 = *&v8[8];
      *(a1 + 16) = v4;
      *(a1 + 32) = *&v8[40];
      v5 = v9;
      goto LABEL_5;
    case 4:
      result = sub_25BB1879C(v7);
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0;
      break;
    default:
      v6 = *&v8[16];
      *a1 = *v8;
      *(a1 + 16) = v6;
      *(a1 + 32) = *&v8[32];
      v5 = *&v8[48];
LABEL_5:
      *(a1 + 48) = v5;
      break;
  }

  return result;
}

uint64_t ParameterInitializer.place(on:)(uint64_t a1)
{
  swift_beginAccess();
  sub_25BB18110(a1);
  return swift_endAccess();
}

uint64_t sub_25BB18110(uint64_t a1)
{
  sub_25BB14570(v1, &v10);
  switch(v12[52])
  {
    case 1:
      sub_25BB1879C(v1);
      v9 = *v11;
      *v1 = v10;
      *(v1 + 8) = v9;
      *(v1 + 16) = *&v11[8];
      sub_25BABEF40(a1, v1 + 32);
      v6 = 1;
      goto LABEL_7;
    case 2:
      sub_25BB1879C(v1);
      v5 = *v11;
      *v1 = v10;
      *(v1 + 8) = v5;
      *(v1 + 16) = *&v11[8];
      sub_25BABEF40(a1, v1 + 32);
      v6 = 2;
      goto LABEL_7;
    case 3:
      sub_25BB1879C(v1);
      v7 = HIDWORD(v10);
      v8 = *v11;
      *v1 = v10;
      *(v1 + 4) = v7;
      *(v1 + 8) = v8;
      *(v1 + 16) = *&v11[8];
      sub_25BABEF40(a1, v1 + 32);
      v6 = 3;
LABEL_7:
      *(v1 + 84) = v6;
      v3 = v12;
      return sub_25BA9C2C8(v3);
    case 4:
      return sub_25BB1879C(&v10);
    default:
      sub_25BB1879C(v1);
      *v1 = v10;
      *(v1 + 8) = *v11;
      sub_25BABEF40(a1, v1 + 24);
      *(v1 + 84) = 0;
      v3 = &v11[16];
      return sub_25BA9C2C8(v3);
  }
}

uint64_t ParameterInitializer.placed(on:)(uint64_t a1)
{
  v3 = *v1;
  if (sub_25BB147D0())
  {
    (*(*(v4 + 8) + 32))(v16);
    if (LOBYTE(v16[0]) - 8 <= 2)
    {
      v14 = 732;
      sub_25BC87800(a1, LOBYTE(v16[0]) == 10);
    }
  }

  OUTLINED_FUNCTION_35();
  sub_25BB14570((v1 + 2), v15);
  sub_25BB14570(v15, v16);
  sub_25BB18110(a1);
  sub_25BB1879C(v15);
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_51_3(v5, v6, v7, v8, v9, v10, v11, v12, v14, v15[0], v15[1], v15[2], v15[3], v15[4], v15[5], v15[6], v15[7], v15[8], v15[9], v15[10], v15[11], v15[12], v15[13], v16[0]);
  return v3;
}

uint64_t sub_25BB183F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  result = ParameterInitializer.placed(on:)(a1);
  *a2 = result;
  return result;
}

uint64_t ParameterInitializer.cast(to:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  OUTLINED_FUNCTION_35();
  sub_25BB14570((v2 + 2), v16);
  sub_25BB184D8(a1, a2, v17);
  sub_25BB1879C(v16);
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_51_3(v6, v7, v8, v9, v10, v11, v12, v13, v15, v16[0], v16[1], v16[2], v16[3], v16[4], v16[5], v16[6], v16[7], v16[8], v16[9], v16[10], v16[11], v16[12], v16[13], v17[0]);
  return a2;
}

uint64_t sub_25BB184D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_25BB14570(v3, v13);
  switch(v14[60])
  {
    case 1:
      OUTLINED_FUNCTION_33_2();
      if (v9)
      {
        goto LABEL_12;
      }

      *a3 = v13[0];
      OUTLINED_FUNCTION_39_3();
      v10 = 1;
      goto LABEL_11;
    case 2:
      OUTLINED_FUNCTION_33_2();
      if (v9)
      {
        goto LABEL_12;
      }

      *a3 = v13[0];
      OUTLINED_FUNCTION_39_3();
      v10 = 2;
      goto LABEL_11;
    case 3:
      OUTLINED_FUNCTION_33_2();
      if (v9)
      {
LABEL_12:
        sub_25BB14570(v3, a3);
      }

      else
      {
        v11 = HIDWORD(v13[0]);
        *a3 = v13[0];
        *(a3 + 4) = v11;
        OUTLINED_FUNCTION_39_3();
        v10 = 3;
LABEL_11:
        *(a3 + 84) = v10;
      }

      v12 = (v4 + 32);
      return sub_25BA9C2C8(v12);
    case 4:
      sub_25BB1879C(v13);
      return sub_25BB14570(v3, a3);
    default:
      if (v13[1] == a1)
      {
        sub_25BB14570(v3, a3);
      }

      else
      {
        *a3 = v13[0];
        *(a3 + 8) = a1;
        *(a3 + 16) = a2;
        sub_25BB18010(a3 + 24);
        *(a3 + 84) = 0;
      }

      v12 = v14;
      return sub_25BA9C2C8(v12);
  }
}

id sub_25BB18650(void (*a1)(uint64_t *__return_ptr))
{
  v3 = v1;
  v5 = sub_25BA928B4();
  [v5 lock];

  a1(&v7);
  if (v2)
  {
    return [*(v3 + 224) unlock];
  }

  [*(v3 + 224) unlock];
  return v7;
}

uint64_t dynamic_cast_existential_2_conditional(uint64_t a1)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    if (swift_conformsToProtocol2())
    {
      return a1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_25BB187CC()
{
  sub_25BCB73CC();
  MEMORY[0x25F876C90](3026478, 0xE300000000000000);
  sub_25BCB73CC();
  return 0;
}

uint64_t sub_25BB188B4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 85))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 84);
  if (v3 >= 5)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25BB188F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 77) = 0;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 85) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 85) = 0;
    }

    if (a2)
    {
      *(result + 84) = -a2;
    }
  }

  return result;
}

uint64_t sub_25BB18944(uint64_t result, unsigned int a2)
{
  if (a2 > 4)
  {
    v2 = a2 - 5;
    *(result + 80) = 0;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    LOBYTE(a2) = 5;
    *result = v2;
  }

  *(result + 84) = a2;
  return result;
}

uint64_t sub_25BB18984()
{
  OUTLINED_FUNCTION_50_1();
  MEMORY[0x25F876C90](3026478, 0xE300000000000000);
  OUTLINED_FUNCTION_50_1();
  return 0;
}

unint64_t sub_25BB189FC()
{
  result = qword_28154C9D0[0];
  if (!qword_28154C9D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28154C9D0);
  }

  return result;
}

unint64_t sub_25BB18A50()
{
  result = qword_28154BE68;
  if (!qword_28154BE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154BE68);
  }

  return result;
}

unint64_t sub_25BB18AA4()
{
  result = qword_28154F3A0;
  if (!qword_28154F3A0)
  {
    type metadata accessor for RandomOperation();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154F3A0);
  }

  return result;
}

unint64_t sub_25BB18AFC()
{
  result = qword_27FBB40A0;
  if (!qword_27FBB40A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB40A0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Upsample1D.Size.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_25BB18BE8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_25BB18CC8()
{
  result = qword_27FBB40A8;
  if (!qword_27FBB40A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB40A8);
  }

  return result;
}

unint64_t sub_25BB18D20()
{
  result = qword_27FBB40B0;
  if (!qword_27FBB40B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB40B0);
  }

  return result;
}

void *OUTLINED_FUNCTION_51_3(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char __src)
{
  v25 = (a1 + 16);

  return memcpy(v25, &__src, 0x55uLL);
}

uint64_t sub_25BB18DB0(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v6 = *(v1 + 40);
  v7 = sub_25BAC4018();
  if (sub_25BB3EE04(v7, a1))
  {
    v8 = *(v4 + 48);
    v9 = sub_25BAC4018();
    if (sub_25BB3EE04(v9, a1))
    {
      v11 = v10;
      v12 = *(v4 + 56);
      v13 = sub_25BAC4018();
      if (sub_25BB3EE04(v13, a1))
      {
        ObjectType = swift_getObjectType();
        v3 = *(v11 + 8);
        (v3)((&v36 + 1), ObjectType, v11);
        if (BYTE1(v36) == 10)
        {
          v15 = OUTLINED_FUNCTION_1_11();
          v21 = sub_25BB18FC8(v15, v16, v17, v18, v19, v20);
          if (v2)
          {
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
LABEL_13:
            swift_unknownObjectRelease();
            return v3;
          }
        }

        else
        {
          (v3)(&v36, ObjectType, v11);
          sub_25BC8FACC();
          v35 = v25;
          v26 = OUTLINED_FUNCTION_1_11();
          v21 = sub_25BB19720(v26, v27, v28, v29, v30, v31, v32, v32, v35);
          if (v2)
          {
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            goto LABEL_13;
          }
        }

        v33 = v21;
        v34 = v22;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
        v3 = swift_allocObject();
        *(v3 + 16) = xmmword_25BCBAE50;
        *(v3 + 32) = v33;
        *(v3 + 40) = v34;
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        return v3;
      }

      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  sub_25BB0E2EC();
  swift_allocError();
  *v23 = xmmword_25BCBCA70;
  *(v23 + 16) = 0x4000;
  swift_willThrow();
  return v3;
}

void (*sub_25BB18FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))(char *, uint64_t)
{
  v7 = v6;
  v77 = a2;
  v78 = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v71 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v66 = &v59 - v16;
  v70 = sub_25BCB54EC();
  v69 = *(v70 - 1);
  v17 = *(v69 + 64);
  v18 = MEMORY[0x28223BE20](v70);
  v76 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v79 = &v59 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v73 = &v59 - v23;
  MEMORY[0x28223BE20](v22);
  v72 = &v59 - v24;
  ObjectType = swift_getObjectType();
  v26 = *(a6 + 16);
  v26(v80, ObjectType, a6);
  v27 = *(v80[0] + 16);

  v74 = a6;
  v61 = v26;
  v60 = ObjectType;
  if (v27 < 2)
  {
    v64 = 1;
    v28 = a5;
  }

  else
  {
    v68 = v6;
    v26(&v88, ObjectType, a6);
    if (!*(v88 + 16))
    {
      memset(v80, 0, sizeof(v80));
      v81 = -1;
      v83 = 0;
      v84 = 0;
      v82 = 0;
      v85 = -1;
      v86 = 4;
      sub_25BADDD28();
    }

    v64 = *(v88 + 32);

    v28 = a5;
    v7 = v68;
  }

  type metadata accessor for NativeTensorStorage();
  v80[0] = *(v75 + 80);
  LOBYTE(v88) = *(v75 + 88);
  sub_25BCB617C();
  sub_25BBC0130(v80, &v88, 0);
  v63 = v7;
  v30 = *(v29 + 16);
  if (v30[2])
  {
    v31 = *(v29 + 16);
    sub_25BCB617C();
  }

  else
  {
    v30 = &unk_286D428D8;
  }

  v32 = v72;
  sub_25BBF5A38(v30, 0);

  v33 = swift_getObjectType();
  v34 = *(v77 + 16);
  v62 = v33;
  v34(v80);
  v35 = v80[0];
  if (!*(v80[0] + 16))
  {

    v35 = &unk_286D42900;
  }

  sub_25BBF5A38(v35, 0);

  v36 = swift_getObjectType();
  (*(a4 + 16))(v80, v36, a4);
  v37 = v80[0];
  if (!*(v80[0] + 16))
  {

    v37 = &unk_286D42928;
  }

  v38 = v74;
  v67 = a3;
  v68 = a4;
  sub_25BBF5A38(v37, 0);

  v61(v80, v60, v38);
  v39 = v80[0];
  v40 = *(v80[0] + 16);
  v65 = v28;
  if (!v40)
  {

    v39 = &unk_286D42950;
  }

  v41 = v76;
  v42 = v69;
  v43 = v70;
  sub_25BBF5A38(v39, 0);

  v44 = *(v42 + 16);
  v45 = v66;
  v44(v66, v32, v43);
  __swift_storeEnumTagSinglePayload(v45, 0, 1, v43);

  v46 = v41;
  v47 = v43;
  v48 = sub_25BC6728C(v45);
  sub_25BAA6F5C(v45, &qword_27FBB4080, &qword_25BCBC638);
  v49 = v71;
  v50 = v73;
  v44(v71, v73, v47);
  v51 = __swift_storeEnumTagSinglePayload(v49, 0, 1, v47);
  v70 = &v59;
  MEMORY[0x28223BE20](v51);
  v52 = v68;
  *(&v59 - 10) = v67;
  *(&v59 - 9) = v52;
  v53 = v79;
  v54 = v65;
  *(&v59 - 8) = v79;
  *(&v59 - 7) = v54;
  *(&v59 - 6) = v74;
  *(&v59 - 5) = v46;
  *(&v59 - 4) = v64;
  *(&v59 - 3) = v48;
  *(&v59 - 2) = v75;
  v55 = v63;
  sub_25BC675C0(sub_25BB1A884, (&v59 - 12), MEMORY[0x277D84F78] + 8, &v87);
  if (v55)
  {

    sub_25BAA6F5C(v49, &qword_27FBB4080, &qword_25BCBC638);
    v56 = *(v42 + 8);
    v56(v50, v47);
    v56(v72, v47);
    v56(v76, v47);
    v56(v53, v47);
  }

  else
  {
    sub_25BAA6F5C(v49, &qword_27FBB4080, &qword_25BCBC638);
    v56 = sub_25BB1A750();

    v57 = *(v42 + 8);
    v57(v50, v47);
    v57(v72, v47);
    v57(v76, v47);
    v57(v53, v47);
  }

  return v56;
}

uint64_t sub_25BB19720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  type metadata accessor for NativeTensorStorage();
  v33 = *(v9 + 80);
  v32 = *(v9 + 88);
  sub_25BCB617C();
  sub_25BBC0130(&v33, &v32, 0);
  v15 = v14;
  ObjectType = swift_getObjectType();
  v22 = a8;
  v23 = a9;
  v24 = a5;
  v25 = a6;
  v26 = a1;
  v27 = a2;
  v28 = v15;
  v29 = v9;
  v30 = a3;
  v31 = a4;
  (*(a4 + 56))(sub_25BB1A9C8, v21, MEMORY[0x277D84F78] + 8, ObjectType, a4);
  return v15;
}

uint64_t sub_25BB19840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  ObjectType = swift_getObjectType();
  v23 = a11;
  v24 = a12;
  v25 = a5;
  v26 = a6;
  v27 = a7;
  v28 = a1;
  v29 = a2;
  v30 = a8;
  v31 = a9;
  v32 = a10;
  v33 = a3;
  v34 = a4;
  return (*(a4 + 56))(sub_25BB1A9F8, v22, MEMORY[0x277D84F78] + 8, ObjectType, a4);
}

uint64_t sub_25BB19924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  ObjectType = swift_getObjectType();
  v24 = a12;
  v25 = a13;
  v26 = a5;
  v27 = a6;
  v28 = a7;
  v29 = a1;
  v30 = a2;
  v31 = a8;
  v32 = a3;
  v33 = a4;
  v34 = a9;
  v35 = a10;
  v36 = a11;
  return (*(a4 + 56))(sub_25BB1AA28, v23, MEMORY[0x277D84F78] + 8, ObjectType, a4);
}

uint64_t sub_25BB19A80(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v39 = a5;
  v42 = result;
  v38 = a3;
  if (!a3)
  {
    goto LABEL_9;
  }

  v17 = *(*(a17 - 8) + 72);
  if (!v17)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (a4 - a3 == 0x8000000000000000 && v17 == -1)
  {
    __break(1u);
LABEL_9:
    v38 = 0;
  }

  if (!a5)
  {
LABEL_18:
    v39 = 0;
    goto LABEL_19;
  }

  v19 = *(*(a17 - 8) + 72);
  if (!v19)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (a6 - a5 == 0x8000000000000000 && v19 == -1)
  {
    __break(1u);
    goto LABEL_18;
  }

LABEL_19:
  if (!result)
  {
LABEL_27:
    v42 = 0;
    goto LABEL_28;
  }

  v21 = *(*(a17 - 8) + 72);
  if (!v21)
  {
LABEL_46:
    __break(1u);
    return result;
  }

  if (a2 - result == 0x8000000000000000 && v21 == -1)
  {
    __break(1u);
    goto LABEL_27;
  }

LABEL_28:
  v23 = *(a9 + 80);
  v24 = *(v23 + 16);
  if (v24)
  {
    v25 = (v23 + 32);
    v26 = 1;
    while (1)
    {
      v27 = *v25++;
      v28 = v26 * v27;
      if ((v26 * v27) >> 64 != (v26 * v27) >> 63)
      {
        break;
      }

      v26 = v28;
      if (!--v24)
      {
        if ((v28 & 0x8000000000000000) == 0)
        {
          if (v28)
          {
            goto LABEL_36;
          }

          return result;
        }

LABEL_43:
        __break(1u);
        goto LABEL_44;
      }
    }

    __break(1u);
    goto LABEL_43;
  }

  v26 = 1;
LABEL_36:
  ObjectType = swift_getObjectType();
  v29 = 0;
  v30 = *(a11 + 16);
  do
  {
    v30(&v43, ObjectType, a11);
    v31 = sub_25BC6FB74(v29);

    v32 = *(a12 + 16);
    if (*(a7 + v31) == 1)
    {
      v43 = *(a12 + 16);
      sub_25BCB617C();
      v33 = sub_25BC6FB74(v29);

      v34 = swift_getObjectType();
      (*(a14 + 16))(&v43, v34);
      v35 = sub_25BC6FB74(v29);

      v36 = v38;
    }

    else
    {
      v43 = *(a12 + 16);
      sub_25BCB617C();
      v33 = sub_25BC6FB74(v29);

      v37 = swift_getObjectType();
      (*(a16 + 16))(&v43, v37);
      v35 = sub_25BC6FB74(v29);

      v36 = v39;
    }

    ++v29;
    result = (*(*(a17 - 8) + 24))(v42 + *(*(a17 - 8) + 72) * v33, v36 + *(*(a17 - 8) + 72) * v35, a17);
  }

  while (v26 != v29);
  return result;
}

uint64_t sub_25BB19DA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v21 = a6;
  v22 = a7;
  v20 = a5;
  v23 = a8;
  v24 = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v19 - v15;
  swift_getObjectType();
  v17 = sub_25BCB54EC();
  (*(*(v17 - 8) + 16))(v16, a3, v17);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v17);
  v26 = a4;
  v27 = v20;
  v28 = v21;
  v29 = v22;
  v30 = a1;
  v31 = a9;
  v32 = a10;
  sub_25BC675C0(sub_25BB1A934, v25, MEMORY[0x277D84F78] + 8, v23);
  return sub_25BAA6F5C(v16, &qword_27FBB4080, &qword_25BCBC638);
}

uint64_t sub_25BB19F28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v20 = a7;
  v21 = a8;
  v22 = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v19 - v15;
  swift_getObjectType();
  v17 = sub_25BCB54EC();
  (*(*(v17 - 8) + 16))(v16, a3, v17);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v17);
  v24 = a4;
  v25 = a5;
  v26 = a1;
  v27 = a6;
  v28 = v20;
  sub_25BC675C0(sub_25BB1A95C, v23, MEMORY[0x277D84F78] + 8, v21);
  return sub_25BAA6F5C(v16, &qword_27FBB4080, &qword_25BCBC638);
}

void sub_25BB1A0A4(void *a1, size_t a2, const size_t *a3, void *a4, uint64_t a5)
{
  v56 = a2;
  v88 = *MEMORY[0x277D85DE8];
  v9 = sub_25BCB54EC();
  v54 = *(v9 - 8);
  v55 = v9;
  v10 = *(v54 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v52 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v51 = &v50 - v14;
  MEMORY[0x28223BE20](v13);
  v53 = &v50 - v15;
  v16 = sub_25BCB530C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v81, (a5 + 16), sizeof(v81));
  memcpy(v80, (a5 + 16), sizeof(v80));
  sub_25BCB6E0C();
  LODWORD(v62) = sub_25BCB6D6C();
  v22 = v21;
  v60 = v24;
  v61 = v23;
  v59 = a3;
  memcpy(v72, a3, sizeof(v72));
  v58 = a4;
  memcpy(&v84[4], a4, 0xB0uLL);
  v57 = a1;
  memcpy(&v83[4], a1, 0xB0uLL);
  memcpy(&v82[4], v81, 0xB0uLL);
  v73 = 0;
  memcpy(v74, v84, sizeof(v74));
  v75 = 0;
  memcpy(v76, v83, sizeof(v76));
  v77 = 0;
  memcpy(v78, v82, sizeof(v78));
  v79 = 0;
  (*(v17 + 104))(v20, *MEMORY[0x277D82F78], v16);
  sub_25BCB52FC();
  (*(v17 + 8))(v20, v16);
  v67 = 31;
  v68 = v72;
  v69 = v85;
  v70 = v86;
  v71 = v87;
  v63 = v62;
  v64 = v22;
  v65 = v61;
  v66 = v60;
  v25 = MEMORY[0x25F8784A0](&v67, &v63);
  if (v25)
  {
    v26 = v59[17];
    if (v26 && (v27 = v58[17]) != 0 && (v28 = v57[17]) != 0 && v80[17])
    {
      v29 = v25;
      v62 = v80[17];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB40D0, &unk_25BCBCAB0);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_25BCBAE90;
      *(v30 + 32) = v26;
      v60 = (v30 + 32);
      v61 = v30;
      *(v30 + 40) = v27;
      *(v30 + 48) = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
      v31 = swift_allocObject();
      v32 = v53;
      sub_25BCB6D7C();
      v33 = sub_25BCB549C();
      v34 = v55;
      v35 = *(v54 + 8);
      v35(v32, v55);
      *(v31 + 32) = v33;
      v59 = (v31 + 32);
      v36 = v51;
      sub_25BCB6D7C();
      v37 = sub_25BCB549C();
      v35(v36, v34);
      *(v31 + 40) = v37;
      v38 = v52;
      sub_25BCB6D7C();
      v39 = sub_25BCB549C();
      v35(v38, v34);
      *(v31 + 48) = v39;
      sub_25BCB6D7C();
      v40 = sub_25BCB549C();
      v35(v32, v34);
      LODWORD(v40) = BNNSArithmeticFilterApplyBatch(v29, v56, 3uLL, v60, v59, v62, v40);
      swift_setDeallocating();
      swift_deallocClassInstance();

      if (!v40)
      {
        goto LABEL_11;
      }

      v41 = sub_25BCB547C();
      sub_25BB1A980(&qword_27FBB40C8, MEMORY[0x277D83098]);
      v42 = swift_allocError();
      v44 = v43;
      v45 = MEMORY[0x277D83080];
    }

    else
    {
      v41 = sub_25BCB547C();
      sub_25BB1A980(&qword_27FBB40C8, MEMORY[0x277D83098]);
      v42 = swift_allocError();
      v44 = v46;
      v45 = MEMORY[0x277D83090];
    }
  }

  else
  {
    v41 = sub_25BCB547C();
    sub_25BB1A980(&qword_27FBB40C8, MEMORY[0x277D83098]);
    v42 = swift_allocError();
    v44 = v47;
    v45 = MEMORY[0x277D83088];
  }

  (*(*(v41 - 8) + 104))(v44, *v45, v41);
  swift_willThrow();
  sub_25BB0E2EC();
  swift_allocError();
  *v48 = 0xD000000000000024;
  *(v48 + 8) = 0x800000025BCD9FF0;
  *(v48 + 16) = 0x2000;
  swift_willThrow();

LABEL_11:
  v49 = *MEMORY[0x277D85DE8];
}

uint64_t sub_25BB1A750()
{
  v1 = sub_25BB1A838();
  sub_25BB1A8BC(__src);
  memcpy(__dst, (v0 + 16), 0xB8uLL);
  memcpy((v0 + 16), __src, 0xB8uLL);
  sub_25BAA6F5C(__dst, &qword_27FBB40B8, &qword_25BCBCAA0);

  return v1;
}

uint64_t sub_25BB1A7E0(uint64_t a1)
{
  result = sub_25BB1A980(&qword_27FBB3820, type metadata accessor for SelectOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB1A838()
{
  memcpy(__dst, (v0 + 16), 0xB8uLL);
  v1 = __dst[22];
  sub_25BB1A8C4(__dst, v3);
  return v1;
}

uint64_t sub_25BB1A8C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB40C0, &qword_25BCBCAA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25BB1A980(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25BB1AAB0()
{
  *(v0 + 24) = xmmword_25BCBCAC0;
  type metadata accessor for VariableIdentityGenerator();
  *(v0 + 16) = sub_25BC9B024();
  v1 = *(v0 + 32);
  *(v0 + 32) = 0xF000000000000007;
  sub_25BAB310C(v1);
  return v0;
}

uint64_t sub_25BB1AB04(uint64_t a1)
{
  *(v1 + 24) = xmmword_25BCBCAC0;
  type metadata accessor for VariableIdentityGenerator();
  *(v1 + 16) = sub_25BC9B024();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
  sub_25BAB310C(v3);
  return v1;
}

uint64_t sub_25BB1AB60(unint64_t a1)
{
  *(v1 + 24) = xmmword_25BCBCAC0;
  type metadata accessor for VariableIdentityGenerator();
  *(v1 + 16) = sub_25BC9B024();
  v3 = *(v1 + 32);
  v4 = 0xF000000000000007;
  if (a1)
  {
    v4 = a1;
  }

  *(v1 + 32) = v4;
  sub_25BAB310C(v3);
  return v1;
}

uint64_t *sub_25BB1ABC8(uint64_t *result)
{
  v2 = *(v1 + 32);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3[0] = *result;
    sub_25BAB69FC();
    ParameterInitializer.callAsFunction(shape:)();
    v3[0] = v3[1] | 0x8000000000000000;
    sub_25BACED40(v3);
    return sub_25BAB310C(v2);
  }

  return result;
}

uint64_t sub_25BB1AC40()
{
  v0 = sub_25BCB761C();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25BB1AC94(char a1)
{
  if (a1)
  {
    return 0x65756C6176;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_25BB1ACE0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25BB1AC40();
  *a2 = result;
  return result;
}

uint64_t sub_25BB1AD10@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25BB1AC94(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_25BB1AD44@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25BB1AC40();
  *a1 = result;
  return result;
}

uint64_t sub_25BB1AD78(uint64_t a1)
{
  v2 = sub_25BB1B908();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BB1ADB4(uint64_t a1)
{
  v2 = sub_25BB1B908();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25BB1ADF0(uint64_t *a1)
{
  OUTLINED_FUNCTION_1_2();
  v2 = swift_allocObject();
  sub_25BB1AE3C(a1);
  return v2;
}

uint64_t *sub_25BB1AE3C(uint64_t *a1)
{
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB40E8, &unk_25BCBCC60);
  v6 = OUTLINED_FUNCTION_2(v5);
  v17 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v11 = &v17 - v10;
  *(v1 + 3) = xmmword_25BCBCAC0;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BB1B908();
  sub_25BCB7B2C();
  if (v2)
  {
    sub_25BAB310C(v1[4]);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v13 = v17;
    v20 = 0;
    *(v1 + 4) = sub_25BCB76DC();
    v19 = 1;
    sub_25BB1B9B0();
    sub_25BCB765C();
    (*(v13 + 8))(v11, v5);
    v15 = 0xF000000000000007;
    if (v18)
    {
      v15 = v18 | 0x8000000000000000;
    }

    v16 = v1[4];
    v1[4] = v15;
    sub_25BAB310C(v16);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_25BB1B068(void *a1)
{
  v3 = v1;
  v31[0] = *v3;
  v5 = sub_25BCB71DC();
  v6 = OUTLINED_FUNCTION_2(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB40D8, &qword_25BCBCC50);
  v14 = OUTLINED_FUNCTION_2(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  v20 = v31 - v19;
  if ((*(v3 + 32) & 0x8000000000000000) == 0)
  {
    v21 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_25BCB7B3C();
    sub_25BCB71AC();
    v22 = sub_25BCB71EC();
    swift_allocError();
    v24 = v23;
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB40E0, &qword_25BCBCC58) + 48);
    *(v24 + 3) = v31[0];
    *v24 = v3;
    (*(v8 + 16))(&v24[v25], v12, v5);
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D841A8], v22);
    swift_willThrow();
    v26 = *(v8 + 8);

    return v26(v12, v5);
  }

  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BB1B908();
  sub_25BCB7B6C();
  v29 = *(v3 + 16);
  v33 = 0;
  sub_25BCB77BC();
  if (v2)
  {
    return (*(v16 + 8))(v20, v13);
  }

  v30 = *(v3 + 32);
  if ((~v30 & 0xF000000000000007) != 0 && v30 < 0)
  {
    v31[1] = v30 & 0x7FFFFFFFFFFFFFFFLL;
    v32 = 1;
    sub_25BAB69FC();
    sub_25BB1B95C();
    sub_25BCB773C();

    return (*(v16 + 8))(v20, v13);
  }

  result = sub_25BCB74CC();
  __break(1u);
  return result;
}

uint64_t sub_25BB1B46C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7F && *(a1 + 8))
    {
      v2 = *a1 + 126;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7E)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_25BB1B4C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_25BB1B554@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_25BB1ADF0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_25BB1B5A4(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  if ((~v3 & 0xF000000000000007) != 0)
  {
    if (v3 < 0)
    {
      v4 = *((v3 & 0x7FFFFFFFFFFFFFFFLL) + 0x10) + 168;

      sub_25BAA51C8(v4, a1);
    }

    else
    {
      sub_25BAB69FC();
      ParameterInitializer.computeDevice.getter(a1);

      sub_25BAB310C(v3);
    }
  }

  else
  {
    *(a1 + 48) = 0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }
}

uint64_t sub_25BB1B644(uint64_t result)
{
  v2 = *(v1 + 32);
  if ((~v2 & 0xF000000000000007) != 0)
  {
    v3 = result;
    if (v2 < 0)
    {
      v11 = v2 & 0x7FFFFFFFFFFFFFFFLL;
      v6 = Tensor.scalarType.getter();
      v8 = v7;

      v9 = sub_25BBABD24(v6, v8);
      if (v9 != 2)
      {
        OUTLINED_FUNCTION_2_9(v9);
      }

      v11 = v2 & 0x7FFFFFFFFFFFFFFFLL;
      sub_25BAB69FC();
      Tensor.place(on:)(v3);
      v10 = v2 & 0x7FFFFFFFFFFFFFFFLL | 0x8000000000000000;
      v5 = &v10;
    }

    else
    {
      v4 = *(v1 + 32);
      sub_25BAB69FC();
      v11 = ParameterInitializer.placed(on:)(v3);
      v5 = &v11;
    }

    sub_25BACED40(v5);
    return sub_25BAB310C(v2);
  }

  return result;
}

uint64_t sub_25BB1B740(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[4];
  if ((~v3 & 0xF000000000000007) != 0)
  {
    if (v3 < 0)
    {
      v8 = v1;
      v9 = Tensor.scalarType.getter();
      v11 = v10;

      v12 = sub_25BBABD24(v9, v11);
      if (v12 != 2)
      {
        OUTLINED_FUNCTION_2_9(v12);
      }

      v15 = v3 & 0x7FFFFFFFFFFFFFFFLL;
      sub_25BAB69FC();
      Tensor.place(on:)(a1);
      v13 = *(v8 + 4);
      OUTLINED_FUNCTION_1_2();
      v4 = swift_allocObject();
      sub_25BAB6D38(&v15, v13);
    }

    else
    {
      v6 = v1[4];
      sub_25BAB69FC();
      v7 = ParameterInitializer.placed(on:)(a1);
      OUTLINED_FUNCTION_1_2();
      v4 = swift_allocObject();
      sub_25BB1AB04(v7);
    }

    sub_25BAB310C(v3);
  }

  else
  {
    OUTLINED_FUNCTION_1_2();
    v4 = swift_allocObject();
    sub_25BB1AAB0();
  }

  return v4;
}

uint64_t sub_25BB1B8D0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  result = sub_25BB1B740(a1);
  *a2 = result;
  return result;
}

unint64_t sub_25BB1B908()
{
  result = qword_28154DA20;
  if (!qword_28154DA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154DA20);
  }

  return result;
}

unint64_t sub_25BB1B95C()
{
  result = qword_28154C1C0;
  if (!qword_28154C1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154C1C0);
  }

  return result;
}

unint64_t sub_25BB1B9B0()
{
  result = qword_28154C1B8;
  if (!qword_28154C1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154C1B8);
  }

  return result;
}

uint64_t sub_25BB1BA04(char *a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = sub_25BCB783C();
  v6 = OUTLINED_FUNCTION_2(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v24[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v13 = v2[4];
  if ((~v13 & 0xF000000000000007) != 0)
  {
    v15 = *a1;
    if (v13 < 0)
    {
      __src[0] = v13 & 0x7FFFFFFFFFFFFFFFLL;
      v24[0] = v15;
      (*(v8 + 104))(v12, *MEMORY[0x277D84660], v5);
      sub_25BAB69FC();
      Tensor.cast(to:roundingRule:)();
      (*(v8 + 8))(v12, v5);
      v21 = *(v2 + 4);
      OUTLINED_FUNCTION_1_2();
      v14 = swift_allocObject();
      LOBYTE(__src[0]) = 0;
      sub_25BAB6D38(&v23, v21);
    }

    else
    {
      v26 = *a1;
      v16 = sub_25BC8FACC();
      v17 = dynamic_cast_existential_1_unconditional(v16);
      v19 = v18;
      swift_beginAccess();
      sub_25BB14570(v13 + 16, v24);
      sub_25BAB69FC();
      sub_25BB184D8(v17, v19, __src);
      sub_25BB1879C(v24);
      type metadata accessor for ParameterInitializer();
      v20 = swift_allocObject();
      memcpy((v20 + 16), __src, 0x55uLL);
      OUTLINED_FUNCTION_1_2();
      v14 = swift_allocObject();
      sub_25BB1AB04(v20);
    }

    sub_25BAB310C(v13);
  }

  else
  {
    OUTLINED_FUNCTION_1_2();
    v14 = swift_allocObject();
    sub_25BB1AAB0();
  }

  return v14;
}

uint64_t dynamic_cast_existential_1_unconditional(uint64_t a1)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    return a1;
  }

  __break(1u);
  return result;
}

_BYTE *storeEnumTagSinglePayload for LayerVariableReference.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_25BB1BD80()
{
  result = qword_27FBB40F0;
  if (!qword_27FBB40F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB40F0);
  }

  return result;
}

unint64_t sub_25BB1BDD8()
{
  result = qword_28154DA10;
  if (!qword_28154DA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154DA10);
  }

  return result;
}

unint64_t sub_25BB1BE30()
{
  result = qword_28154DA18;
  if (!qword_28154DA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154DA18);
  }

  return result;
}

void Tensor.description.getter()
{
  v1 = *v0;
  if (*(*(*(*v0 + 16) + 152) + 16))
  {
    do
    {
      OUTLINED_FUNCTION_0();
      if (!v4)
      {
        __break(1u);
        return;
      }
    }

    while (v2 != 1);
    v5 = v3 > 1000;
  }

  else
  {
    v5 = 0;
  }

  v6 = Tensor.scalarType.getter();

  sub_25BB1BF28(v6, v1, 80, 3, v5, v6, v7);
}

uint64_t sub_25BB1BF28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(a6 - 8);
  v10 = *(v9 + 64);
  result = MEMORY[0x28223BE20](a1);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v12 + 16);
  v19 = *(v18 + 152);
  v20 = *(v19 + 16);
  if (v20)
  {
    v21 = (v19 + 32);
    v22 = 1;
    while (1)
    {
      v23 = *v21++;
      v24 = v22 * v23;
      if ((v22 * v23) >> 64 != (v22 * v23) >> 63)
      {
        break;
      }

      v22 = v24;
      if (!--v20)
      {
        if (v24 == 1)
        {
          goto LABEL_6;
        }

        v35 = v14;
        v36 = v13;
        v34 = v15;
        *&v41 = v12;
        v33 = Tensor.scalars<A>(as:)(result, a6, a7);
        *&v38 = v33;
        v26 = sub_25BCB68CC();
        WitnessTable = swift_getWitnessTable();
        MEMORY[0x25F876E40](&v43, v26, WitnessTable);
        v40 = v43;
        v28 = swift_allocObject();
        *(v28 + 16) = a6;
        *(v28 + 24) = a7;
        sub_25BCB711C();
        swift_getWitnessTable();
        sub_25BCB75FC();

        v37 = v41;
        v38 = v41;
        v39 = v42;
        sub_25BCB735C();
        swift_getWitnessTable();
        sub_25BCB669C();

        if (v44)
        {
          v29 = 3;
        }

        else
        {
          v29 = v43;
        }

        if (v29)
        {
          if (v36 != 0x8000000000000000 || v29 != -1)
          {
            if (v36 / v29 <= 1)
            {
              v31 = 1;
            }

            else
            {
              v31 = v36 / v29;
            }

            *&v41 = *(v18 + 152);
            sub_25BCB617C();
            sub_25BB1C368(0, v35, v29, v31, v34 & 1, &v41, v33, a6, a7);
            v25 = v32;

            return v25;
          }

LABEL_22:
          __break(1u);
          return result;
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

LABEL_6:
  *&v41 = 0;
  *(&v41 + 1) = 0xE000000000000000;
  *&v38 = v12;
  Tensor.scalar<A>(as:)(result, a6, a7);
  sub_25BCB784C();
  (*(v9 + 8))(v17, a6);
  return v41;
}

uint64_t sub_25BB1C28C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  (*(v6 + 16))(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25BCB63AC();
  v7 = sub_25BCB641C();

  *a3 = v7;
  return result;
}

void sub_25BB1C368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = *(*(a8 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v17 = *v16;
  sub_25BCB68CC();
  swift_getWitnessTable();
  if (sub_25BCB6B6C())
  {
    return;
  }

  if (sub_25BCB681C() == 1)
  {
    sub_25BCB690C();
    sub_25BCB63AC();
    return;
  }

  v18 = *(v17 + 16);
  if (v18 == 1)
  {
    sub_25BB1C824(a1, a2, a3, a4, a5 & 1, a7, a8, a9);
    return;
  }

  v34 = MEMORY[0x277D84F90];
  if (!v18)
  {
LABEL_18:
    sub_25BADDD28();
  }

  v19 = *(v17 + 32);
  if (v19 < 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  sub_25BB1D14C(0, v19, &v34, v17, a7, a5 & 1, a2, a1, a3, a4);
  v20 = *(v17 + 16);
  v21 = sub_25BCB651C();
  MEMORY[0x25F876C90](v21);

  if (__OFADD__(a1, 1))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22 = sub_25BCB651C();
  v24 = v23;
  sub_25BCB617C();
  MEMORY[0x25F876C90](v22, v24);

  v25 = v34;
  v26 = *(v34 + 16);
  sub_25BCB617C();
  sub_25BCB617C();
  v27 = 0;
  v28 = (v25 + 40);
  while (v26 != v27)
  {
    v30 = *(v28 - 1);
    v29 = *v28;
    sub_25BCB617C();
    MEMORY[0x25F876C90](v30, v29);
    if (v27 == *(v25 + 16) - 1)
    {
      v31 = 0;
      v32 = 0xE000000000000000;
    }

    else
    {
      sub_25BCB617C();
      v31 = 44;
      v32 = 0xE100000000000000;
    }

    MEMORY[0x25F876C90](v31, v32);

    v28 += 2;
    ++v27;
  }

  swift_bridgeObjectRelease_n();
  sub_25BCB617C();
  MEMORY[0x25F876C90](93, 0xE100000000000000);
}

void Tensor.playgroundDescription.getter(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (!*(*(*(*v1 + 16) + 152) + 16))
  {
    goto LABEL_6;
  }

  do
  {
    OUTLINED_FUNCTION_0();
    if (!v6)
    {
      __break(1u);
      return;
    }
  }

  while (v4 != 1);
  if (v5 != 1)
  {
    v13[0] = v3;
    Tensor.description.getter();
    *(a1 + 24) = MEMORY[0x277D837D0];
    *a1 = v9;
    *(a1 + 8) = v10;
  }

  else
  {
LABEL_6:
    v15 = v3;
    v7 = Tensor.scalarType.getter();
    sub_25BB1C7C4(v7, v8, v13);
    if (v14)
    {
      sub_25BB1D62C(v13, a1);
    }

    else
    {
      Tensor.description.getter();
      *(a1 + 24) = MEMORY[0x277D837D0];
      *a1 = v11;
      *(a1 + 8) = v12;
      if (v14)
      {
        sub_25BB1D5C4(v13);
      }
    }
  }
}

uint64_t sub_25BB1C7C4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  a3[3] = a1;
  __swift_allocate_boxed_opaque_existential_0(a3);
  return Tensor.scalar<A>(as:)(a1, a1, a2);
}

void sub_25BB1C824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = a1;
  v60 = MEMORY[0x277D84F90];
  if ((a5 & 1) == 0)
  {
    goto LABEL_5;
  }

  a1 = sub_25BCB681C();
  if (a2 + 0x4000000000000000 >= 0)
  {
    if (a1 > 2 * a2)
    {
      sub_25BCB68CC();
      v55 = v13;
      sub_25BCB617C();
      swift_getWitnessTable();
      v15 = sub_25BCB6B5C();
      *&v52 = &v51;
      v51 = v58;
      v56 = v58;
      v57 = v59;
      v16 = MEMORY[0x28223BE20](v15);
      v48 = a7;
      v49 = a8;
      v50 = a3;
      MEMORY[0x28223BE20](v16);
      v44 = a7;
      v45 = a8;
      v46 = sub_25BB1D784;
      v47 = v17;
      v18 = sub_25BCB700C();
      v53 = v18;
      WitnessTable = swift_getWitnessTable();
      v20 = sub_25BAB2B20(sub_25BB1D76C, v43, v18, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v19);
      swift_unknownObjectRelease();
      sub_25BAB1D84(v20);
      sub_25BAB1D84(&unk_286D42160);
      *&v56 = a6;
      sub_25BCB617C();
      swift_getWitnessTable();
      v13 = v55;
      v21 = sub_25BCB626C();
      v52 = v58;
      v56 = v58;
      v57 = v59;
      v22 = MEMORY[0x28223BE20](v21);
      v48 = a7;
      v49 = a8;
      v50 = a3;
      MEMORY[0x28223BE20](v22);
      v44 = a7;
      v45 = a8;
      v46 = sub_25BB1D784;
      v47 = v23;
      v25 = sub_25BAB2B20(sub_25BB1D76C, v43, v53, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v24);
      swift_unknownObjectRelease();
      goto LABEL_6;
    }

LABEL_5:
    *&v58 = a6;
    v26 = MEMORY[0x28223BE20](a1);
    v48 = a7;
    v49 = a8;
    v50 = a3;
    MEMORY[0x28223BE20](v26);
    v44 = a7;
    v45 = a8;
    v46 = sub_25BB1D6A4;
    v47 = v27;
    v28 = sub_25BCB68CC();
    v29 = swift_getWitnessTable();
    v25 = sub_25BAB2B20(sub_25BB1D6B0, v43, v28, MEMORY[0x277D837D0], MEMORY[0x277D84A98], v29, MEMORY[0x277D84AC0], v30);
LABEL_6:
    sub_25BAB1D84(v25);
    if (a4)
    {
      v31 = v60;
      v32 = sub_25BB1CEBC(0, *(v60 + 16), a4, a4, &v60);
      if (__OFADD__(v13, 1))
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v33 = v32;
      WitnessTable = v31;
      v34 = sub_25BCB651C();
      *&v58 = 2604;
      *(&v58 + 1) = 0xE200000000000000;
      MEMORY[0x25F876C90](v34);

      v35 = *(&v58 + 1);
      v55 = v58;
      *&v56 = 91;
      *(&v56 + 1) = 0xE100000000000000;
      v36 = *(v33 + 16);
      sub_25BCB617C();
      v37 = 0;
      for (i = (v33 + 48); ; i += 2)
      {
        if (v36 == v37)
        {

          swift_bridgeObjectRelease_n();
          v58 = v56;
          sub_25BCB617C();
          MEMORY[0x25F876C90](93, 0xE100000000000000);

          return;
        }

        if (v37 >= *(v33 + 16))
        {
          break;
        }

        v39 = *i;
        v58 = *(i - 1);
        v59 = v39;
        swift_unknownObjectRetain_n();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3960, &qword_25BCBB900);
        sub_25BB1D6C8();
        v40 = sub_25BCB627C();
        MEMORY[0x25F876C90](v40);

        if (v37 == *(v33 + 16) - 1)
        {
          v41 = 0;
          v42 = 0xE000000000000000;
        }

        else
        {
          sub_25BCB617C();
          v41 = v55;
          v42 = v35;
        }

        MEMORY[0x25F876C90](v41, v42);
        swift_unknownObjectRelease_n();

        ++v37;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_19:
  __break(1u);
}

uint64_t sub_25BB1CDB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  (*(v6 + 16))(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25BCB63AC();
  result = sub_25BCB641C();
  if (__OFSUB__(a2, result))
  {
    __break(1u);
  }

  else
  {
    v8 = sub_25BBA49FC((a2 - result) & ~((a2 - result) >> 63));

    return v8;
  }

  return result;
}

uint64_t sub_25BB1CEBC(int64_t a1, int64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = a1;
  v7 = sub_25BC08CA4(a1, a2, a3);
  v26 = MEMORY[0x277D84F90];
  result = sub_25BB005B0(0, v7 & ~(v7 >> 63), 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    if (!v7)
    {
      v10 = v6;
      goto LABEL_20;
    }

    while (1)
    {
      v9 = v6 <= a2;
      if (a3 > 0)
      {
        v9 = v6 >= a2;
      }

      if (v9)
      {
        break;
      }

      if (__OFADD__(v6, a3))
      {
        v10 = ((v6 + a3) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v10 = v6 + a3;
      }

      if (__OFADD__(v6, a4))
      {
        goto LABEL_40;
      }

      v11 = *a5;
      if (*(*a5 + 16) >= v6 + a4)
      {
        v12 = v6 + a4;
      }

      else
      {
        v12 = *(*a5 + 16);
      }

      if (v12 < v6)
      {
        goto LABEL_41;
      }

      if (v6 < 0)
      {
        goto LABEL_42;
      }

      v14 = *(v26 + 16);
      v13 = *(v26 + 24);
      result = sub_25BCB617C();
      if (v14 >= v13 >> 1)
      {
        result = sub_25BB005B0(v13 > 1, v14 + 1, 1);
      }

      *(v26 + 16) = v14 + 1;
      v15 = (v26 + 32 * v14);
      v15[4] = v11;
      v15[5] = v11 + 32;
      v15[6] = v6;
      v15[7] = (2 * v12) | 1;
      v6 = v10;
      if (!--v7)
      {
        while (1)
        {
LABEL_20:
          v16 = v10 <= a2;
          if (a3 > 0)
          {
            v16 = v10 >= a2;
          }

          if (v16)
          {
            return v26;
          }

          v17 = __OFADD__(v10, a3) ? ((v10 + a3) >> 63) ^ 0x8000000000000000 : v10 + a3;
          if (__OFADD__(v10, a4))
          {
            break;
          }

          v18 = *a5;
          if (*(*a5 + 16) >= v10 + a4)
          {
            v19 = v10 + a4;
          }

          else
          {
            v19 = *(*a5 + 16);
          }

          if (v19 < v10)
          {
            goto LABEL_37;
          }

          if (v10 < 0)
          {
            goto LABEL_38;
          }

          v21 = *(v26 + 16);
          v20 = *(v26 + 24);
          result = sub_25BCB617C();
          if (v21 >= v20 >> 1)
          {
            result = sub_25BB005B0(v20 > 1, v21 + 1, 1);
          }

          *(v26 + 16) = v21 + 1;
          v22 = (v26 + 32 * v21);
          v22[4] = v18;
          v22[5] = v18 + 32;
          v22[6] = v10;
          v22[7] = (2 * v19) | 1;
          v10 = v17;
        }

        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        break;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25BB1D0F0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  result = a3 + 1;
  if (__OFADD__(a3, 1))
  {
    __break(1u);
  }

  else
  {
    v11[1] = v7;
    v11[2] = v8;
    v11[0] = *a2;
    return sub_25BB1C368(result, a4, a5, a6, a7 & 1, v11, a1);
  }

  return result;
}

uint64_t sub_25BB1D14C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v16 = *(a4 + 16);
  if (!v16)
  {
    goto LABEL_64;
  }

  v13 = a1;
  v57 = a10;
  v56 = a9;
  v14 = sub_25BABAF60(1, v16, a4);
  v10 = v19;
  v11 = v20;
  v12 = v21;
  v60 = a7;
  v59 = a6;
  if ((v21 & 1) == 0)
  {
    goto LABEL_3;
  }

  sub_25BCB78DC();
  swift_unknownObjectRetain_n();
  v22 = swift_dynamicCastClass();
  if (!v22)
  {
    swift_unknownObjectRelease();
    v22 = MEMORY[0x277D84F90];
  }

  v23 = *(v22 + 16);

  if (__OFSUB__(v12 >> 1, v11))
  {
    goto LABEL_65;
  }

  if (v23 != (v12 >> 1) - v11)
  {
    goto LABEL_67;
  }

  v10 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  a7 = v60;
  v61 = v10;
  if (!v10)
  {
    v61 = MEMORY[0x277D84F90];
    goto LABEL_10;
  }

LABEL_11:
  if (v13 != a2)
  {
    if (a2 < v13)
    {
      goto LABEL_66;
    }

    v10 = v61;
    v25 = *(v61 + 16);

    v14 = sub_25BCB681C();
    v26 = (v61 + 32);
    v54 = a2 - a7;
    v27 = __OFSUB__(a2, a7);
    v55 = v27;
    while (1)
    {
      if (v13 >= a2)
      {
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        swift_unknownObjectRelease();
        a7 = v60;
        a6 = v59;
LABEL_3:
        v61 = sub_25BABA62C(v14, v10, v11, v12);
LABEL_10:
        swift_unknownObjectRelease();
        goto LABEL_11;
      }

      if (v25)
      {
        v28 = v26;
        v29 = v25;
        v30 = 1;
        while (1)
        {
          v31 = *v28++;
          v32 = v30 * v31;
          if ((v30 * v31) >> 64 != (v30 * v31) >> 63)
          {
            break;
          }

          v30 = v32;
          if (!--v29)
          {
            goto LABEL_27;
          }
        }

        __break(1u);
        goto LABEL_58;
      }

      v32 = 1;
LABEL_27:
      v33 = v13 * v32;
      if ((v13 * v32) >> 64 != (v13 * v32) >> 63)
      {
        goto LABEL_60;
      }

      if (v33 < v14)
      {
        if (v25)
        {
          v34 = v26;
          v35 = v25;
          v36 = 1;
          while (1)
          {
            v37 = *v34++;
            v38 = v36 * v37;
            if ((v36 * v37) >> 64 != (v36 * v37) >> 63)
            {
              break;
            }

            v36 = v38;
            if (!--v35)
            {
              goto LABEL_35;
            }
          }

LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        v38 = 1;
LABEL_35:
        if (__OFADD__(v33, v38))
        {
          goto LABEL_61;
        }

        if (v14 >= v33 + v38)
        {
          v39 = v33 + v38;
        }

        else
        {
          v39 = v14;
        }

        if ((a6 & 1) == 0 || v13 < a7)
        {
          goto LABEL_49;
        }

        if (v55)
        {
          goto LABEL_63;
        }

        if (v13 >= v54)
        {
LABEL_49:
          if (v39 < v33)
          {
            goto LABEL_62;
          }

          v63[0] = sub_25BCB68EC();
          v63[1] = v42;
          v63[2] = v43;
          v63[3] = v44;
          sub_25BCB700C();
          swift_getWitnessTable();
          v45 = sub_25BCB68DC();
          v63[0] = v61;
          v10 = sub_25BB1D0F0(v45, v63, a8, a7, v56, v57, a6 & 1);
          v12 = v46;

          v40 = *a3;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v48 = *(v40 + 16);
            sub_25BAB1E30();
            v40 = v49;
          }

          v41 = *(v40 + 16);
          v11 = v41 + 1;
          if (v41 >= *(v40 + 24) >> 1)
          {
            sub_25BAB1E30();
            v40 = v50;
          }

          goto LABEL_54;
        }

        if (v13 == a7)
        {
          v40 = *a3;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v51 = *(v40 + 16);
            sub_25BAB1E30();
            v40 = v52;
          }

          v41 = *(v40 + 16);
          v11 = v41 + 1;
          if (v41 >= *(v40 + 24) >> 1)
          {
            sub_25BAB1E30();
            v40 = v53;
          }

          v12 = 0xE300000000000000;
          v10 = 3026478;
LABEL_54:
          *(v40 + 16) = v11;
          v47 = v40 + 16 * v41;
          *(v47 + 32) = v10;
          *(v47 + 40) = v12;
          *a3 = v40;
          a7 = v60;
          a6 = v59;
          v26 = (v61 + 32);
        }
      }

      if (++v13 == a2)
      {
      }
    }
  }
}

uint64_t sub_25BB1D5C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB40F8, &qword_25BCBF760);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_OWORD *sub_25BB1D62C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

unint64_t sub_25BB1D6C8()
{
  result = qword_27FBB4100;
  if (!qword_27FBB4100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBB3960, &qword_25BCBB900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4100);
  }

  return result;
}

uint64_t sub_25BB1D72C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  result = v3();
  *a1 = result;
  a1[1] = v6;
  return result;
}

uint64_t Upsample1D.Size.init(integerLiteral:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

void Upsample1D.size.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t Upsample1D.init(size:mode:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 8);
  v4 = *a2;
  *a3 = *result;
  *(a3 + 8) = v3;
  *(a3 + 9) = v4;
  return result;
}

uint64_t Upsample1D.forward(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 9);
  v6 = *(*(*(*a1 + 16) + 152) + 16);
  if ((sub_25BAB74D0(v6, 3, 0, 0) & 1) == 0)
  {
    goto LABEL_21;
  }

  v9 = OUTLINED_FUNCTION_14_8(*(v2 + 16));
  if (v4)
  {
    if (!(!v8 & v7))
    {
LABEL_22:
      v22 = 0uLL;
      v21 = 2;
      v23 = -1;
      v25 = 0;
      v24 = v10;
      v26 = -1;
      v27 = 4;
      sub_25BCB617C();
      OUTLINED_FUNCTION_17_4();
LABEL_23:
      sub_25BADDD28();
    }

    v11 = *&v3 * *(v9 + 48);
    if (COERCE_INT(fabs(v11)) > 2139095039)
    {
      __break(1u);
    }

    else if (v11 > -9.2234e18)
    {
      if (v11 < 9.2234e18)
      {
        v3 = v11;
        goto LABEL_15;
      }

      goto LABEL_20;
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    v21 = v6;
    v22 = xmmword_25BCBCE20;
    v23 = 0;
    v24 = xmmword_25BCBCE30;
    LOBYTE(v25) = 0;
    v27 = 7;
    OUTLINED_FUNCTION_5_12();
    goto LABEL_23;
  }

  if (!(!v8 & v7))
  {
    goto LABEL_22;
  }

  v12 = *(v9 + 48);
  if (v12 != -1)
  {
    v13 = v3;
    if (v12)
    {
      v13 = v3 % v12;
    }

    if (v13)
    {
      v21 = 0;
      *&v22 = 0xE000000000000000;
      sub_25BCB70FC();
      v15 = OUTLINED_FUNCTION_12_4();
      MEMORY[0x25F876C90](v15);
      v16 = *(*(v2 + 16) + 152);
      v17 = sub_25BCB617C();
      v18 = MEMORY[0x25F876F80](v17, MEMORY[0x277D83B88]);
      MEMORY[0x25F876C90](v18);

      MEMORY[0x25F876C90](0xD00000000000007CLL, 0x800000025BCDA290);
      OUTLINED_FUNCTION_10_5();
      result = OUTLINED_FUNCTION_29_5();
      __break(1u);
      return result;
    }
  }

LABEL_15:
  v21 = v2;
  Tensor.expandingShape(at:)();
  v19 = v5;
  resize(images:size:mode:)(&v20, v3, 1, &v19, &v21);

  v20 = v21;
  Tensor.squeezingShape(at:)();
}

uint64_t sub_25BB1DA94(uint64_t a1)
{
  v2 = sub_25BB1F710();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BB1DAD0(uint64_t a1)
{
  v2 = sub_25BB1F710();

  return MEMORY[0x2821FE720](a1, v2);
}

void Upsample1D.encode(to:)()
{
  OUTLINED_FUNCTION_17_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4108, &qword_25BCBCE58);
  OUTLINED_FUNCTION_2(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_9_5();
  v10 = *v0;
  v11 = *(v0 + 8);
  v16 = *(v0 + 9);
  v12 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_25BB1F710();
  OUTLINED_FUNCTION_23_3();
  sub_25BCB7B6C();
  sub_25BB1F764();
  sub_25BCB779C();
  if (!v1)
  {
    sub_25BB1F7B8();
    OUTLINED_FUNCTION_1_12();
    sub_25BCB779C();
  }

  v13 = *(v6 + 8);
  v14 = OUTLINED_FUNCTION_26_0();
  v15(v14);
  OUTLINED_FUNCTION_15_5();
  OUTLINED_FUNCTION_16();
}

void Upsample1D.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12)
{
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_25_3();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4128, &qword_25BCBCE60);
  OUTLINED_FUNCTION_2(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_4_6();
  sub_25BB1F710();
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_18_1();
  sub_25BCB7B2C();
  if (!v13)
  {
    sub_25BB1F80C();
    OUTLINED_FUNCTION_3_11();
    sub_25BB1F860();
    OUTLINED_FUNCTION_3_11();
    v19 = OUTLINED_FUNCTION_7_1();
    v20(v19);
    *v14 = v21;
    *(v14 + 8) = v22;
    *(v14 + 9) = a12;
  }

  __swift_destroy_boxed_opaque_existential_1(v12);
  OUTLINED_FUNCTION_16();
}

uint64_t Upsample2D.Size.init(integerLiteral:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result;
  *(a2 + 16) = 0;
  return result;
}

uint64_t Upsample2D.Size.init(arrayLiteral:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1[2] == 2)
  {
    v3 = a1[4];
    v4 = a1[5];

    *a2 = v3;
    *(a2 + 8) = v4;
    *(a2 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_5();
    result = OUTLINED_FUNCTION_29_5();
    __break(1u);
  }

  return result;
}

__n128 Upsample2D.size.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u8[0];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u8[0] = v2;
  return result;
}

uint64_t Upsample2D.init(size:mode:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  v6 = *a2;
  if (v5 == 1)
  {
    if (*&v3 <= 0.0)
    {
      goto LABEL_8;
    }

    v7 = HIDWORD(*result);
    if (*(&v3 + 1) <= 0.0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (v3 < 1)
  {
LABEL_8:
    OUTLINED_FUNCTION_8_9();
    goto LABEL_9;
  }

  if (v4 > 0)
  {
LABEL_7:
    *a3 = v3;
    *(a3 + 8) = v4;
    *(a3 + 16) = v5;
    *(a3 + 17) = v6;
    return result;
  }

LABEL_9:
  OUTLINED_FUNCTION_10_5();
  result = OUTLINED_FUNCTION_29_5();
  __break(1u);
  return result;
}

uint64_t Upsample2D.forward(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v6 = *v2;
  v5 = *(v2 + 8);
  v7 = *(v2 + 16);
  v8 = *(v2 + 17);
  v9 = *(*a1 + 16);
  LOBYTE(v10) = *(v9 + 160);
  if (!sub_25BAA80BC(v10, &unk_286D42270))
  {
    goto LABEL_32;
  }

  v10 = *(*(v9 + 152) + 16);
  if ((sub_25BAB74D0(v10, 4, 0, 0) & 1) == 0)
  {
    v29 = v10;
    *v30 = xmmword_25BCBCE20;
    v30[16] = 0;
    v31 = xmmword_25BCBCE40;
    LOBYTE(v32) = 0;
    v34 = 7;
    OUTLINED_FUNCTION_5_12();
    goto LABEL_37;
  }

  if (v7)
  {
    v11 = OUTLINED_FUNCTION_14_8(*(v4 + 16));
    if (!(!v14 & v13))
    {
LABEL_34:
      *&v30[8] = 0;
      v29 = 2;
LABEL_36:
      *v30 = 0;
      v30[16] = -1;
      v32 = 0;
      v31 = v12;
      v33 = -1;
      v34 = 4;
      sub_25BCB617C();
      OUTLINED_FUNCTION_17_4();
LABEL_37:
      sub_25BADDD28();
    }

    v15 = *&v6 * *(v11 + 48);
    if (COERCE_INT(fabs(v15)) > 2139095039)
    {
      __break(1u);
    }

    else if (v15 > -9.2234e18)
    {
      if (v15 < 9.2234e18)
      {
        if (v12 != 3)
        {
          v16 = *(&v6 + 1) * *(v11 + 56);
          if (COERCE_INT(fabs(v16)) <= 2139095039)
          {
            if (v16 > -9.2234e18)
            {
              if (v16 < 9.2234e18)
              {
                v6 = v15;
                v5 = v16;
LABEL_25:
                v29 = v4;
                v28 = v8;
                return resize(images:size:mode:)(&v29, v6, v5, &v28, a2);
              }

              goto LABEL_31;
            }

LABEL_30:
            __break(1u);
LABEL_31:
            __break(1u);
LABEL_32:
            v28 = v10;
            v29 = sub_25BC8FACC();
            *v30 = v23;
            *&v30[8] = xmmword_25BCBCE20;
            LOBYTE(v31) = 0;
            *(&v31 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
            LOBYTE(v32) = 2;
            v34 = 3;
            OUTLINED_FUNCTION_5_12();
            goto LABEL_37;
          }

LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

LABEL_35:
        *&v30[8] = 0;
        v29 = v12;
        goto LABEL_36;
      }

LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    __break(1u);
    goto LABEL_28;
  }

  v17 = OUTLINED_FUNCTION_14_8(*(v4 + 16));
  if (!(!v14 & v13))
  {
    goto LABEL_34;
  }

  v18 = *(v17 + 48);
  if (v18 == -1)
  {
    goto LABEL_20;
  }

  v19 = v6;
  if (v18)
  {
    v19 = v6 % v18;
  }

  if (!v19)
  {
LABEL_20:
    if (v12 == 3)
    {
      goto LABEL_35;
    }

    v20 = *(v17 + 56);
    if (v20 == -1)
    {
      goto LABEL_25;
    }

    v21 = v5;
    if (v20)
    {
      v21 = v5 % v20;
    }

    if (!v21)
    {
      goto LABEL_25;
    }
  }

  v29 = 0;
  *v30 = 0xE000000000000000;
  sub_25BCB70FC();
  v24 = OUTLINED_FUNCTION_12_4();
  MEMORY[0x25F876C90](v24);
  v25 = *(*(v4 + 16) + 152);
  v26 = sub_25BCB617C();
  v27 = MEMORY[0x25F876F80](v26, MEMORY[0x277D83B88]);
  MEMORY[0x25F876C90](v27);

  MEMORY[0x25F876C90](0xD00000000000007ELL, 0x800000025BCDA430);
  OUTLINED_FUNCTION_10_5();
  result = OUTLINED_FUNCTION_29_5();
  __break(1u);
  return result;
}

uint64_t sub_25BB1E394(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702521203 && a2 == 0xE400000000000000;
  if (v3 || (OUTLINED_FUNCTION_28_4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701080941 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_28_4();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_25BB1E444(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_25BCB79CC();
  a4(v8, v6);
  return sub_25BCB7A3C();
}

uint64_t sub_25BB1E490(uint64_t a1)
{
  v2 = sub_25BB1F8B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BB1E4CC(uint64_t a1)
{
  v2 = sub_25BB1F8B4();

  return MEMORY[0x2821FE720](a1, v2);
}

void Upsample2D.encode(to:)()
{
  OUTLINED_FUNCTION_17_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4148, &qword_25BCBCE68);
  OUTLINED_FUNCTION_2(v4);
  v16 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_9_5();
  v10 = *v0;
  v9 = v0[1];
  v11 = *(v0 + 16);
  v17 = *(v0 + 17);
  v12 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_25BB1F8B4();
  OUTLINED_FUNCTION_23_3();
  sub_25BCB7B6C();
  sub_25BB1F908();
  sub_25BCB779C();
  if (!v1)
  {
    OUTLINED_FUNCTION_21_3();
    sub_25BB1F7B8();
    OUTLINED_FUNCTION_1_12();
    sub_25BCB779C();
  }

  v13 = *(v16 + 8);
  v14 = OUTLINED_FUNCTION_26_0();
  v15(v14);
  OUTLINED_FUNCTION_15_5();
  OUTLINED_FUNCTION_16();
}

void Upsample2D.init(from:)()
{
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_25_3();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4160, &qword_25BCBCE70);
  OUTLINED_FUNCTION_2(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_6();
  sub_25BB1F8B4();
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_18_1();
  sub_25BCB7B2C();
  if (!v1)
  {
    sub_25BB1F95C();
    OUTLINED_FUNCTION_3_11();
    OUTLINED_FUNCTION_21_3();
    sub_25BB1F860();
    OUTLINED_FUNCTION_3_11();
    v7 = OUTLINED_FUNCTION_7_1();
    v8(v7);
    *v2 = v9;
    *(v2 + 8) = v10;
    *(v2 + 16) = v11;
    *(v2 + 17) = v9;
  }

  __swift_destroy_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_16();
}

uint64_t sub_25BB1E7EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696D697263736964 && a2 == 0xED0000726F74616ELL;
  if (v4 || (sub_25BCB789C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6176247463617865 && a2 == 0xEB0000000065756CLL;
    if (v6 || (sub_25BCB789C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x794264656C616373 && a2 == 0xEE00656C61637324)
    {

      return 2;
    }

    else
    {
      v8 = sub_25BCB789C();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_25BB1E918(char a1)
{
  if (!a1)
  {
    return 0x696D697263736964;
  }

  if (a1 == 1)
  {
    return 0x6176247463617865;
  }

  return 0x794264656C616373;
}

uint64_t sub_25BB1EA94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25BB1E7EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25BB1EABC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25BB1E910();
  *a1 = result;
  return result;
}

uint64_t sub_25BB1EAE4(uint64_t a1)
{
  v2 = sub_25BB1F9B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BB1EB20(uint64_t a1)
{
  v2 = sub_25BB1F9B0();

  return MEMORY[0x2821FE720](a1, v2);
}

void Upsample1D.Size.encode(to:)()
{
  OUTLINED_FUNCTION_17_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4170, &qword_25BCBCE78);
  OUTLINED_FUNCTION_2(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_9_5();
  v15 = *v0;
  v10 = *(v0 + 8);
  v11 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_25BB1F9B0();
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_18_1();
  sub_25BCB7B6C();
  if (v10 == 1)
  {
    OUTLINED_FUNCTION_21_3();
    sub_25BB1FA04();
    OUTLINED_FUNCTION_1_12();
    sub_25BCB779C();
    if (!v1)
    {
      OUTLINED_FUNCTION_20_1(2);
    }
  }

  else
  {
    sub_25BB1FA04();
    OUTLINED_FUNCTION_1_12();
    sub_25BCB779C();
    if (!v1)
    {
      OUTLINED_FUNCTION_1_12();
      sub_25BCB778C();
    }
  }

  v12 = *(v6 + 8);
  v13 = OUTLINED_FUNCTION_26_0();
  v14(v13);
  OUTLINED_FUNCTION_15_5();
  OUTLINED_FUNCTION_16();
}

void Upsample1D.Size.init(from:)()
{
  OUTLINED_FUNCTION_25_3();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4188, &qword_25BCBCE80);
  OUTLINED_FUNCTION_2(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_6();
  sub_25BB1F9B0();
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_18_1();
  sub_25BCB7B2C();
  if (!v1)
  {
    sub_25BB1FA58();
    OUTLINED_FUNCTION_27_2();
    OUTLINED_FUNCTION_2_10();
    if (v14)
    {
      sub_25BCB768C();
      v8 = v7;
      v9 = OUTLINED_FUNCTION_22_3();
      v10(v9);
      v11 = v8;
    }

    else
    {
      v11 = sub_25BCB769C();
      v12 = OUTLINED_FUNCTION_22_3();
      v13(v12);
    }

    *v2 = v11;
    *(v2 + 8) = v14;
  }

  __swift_destroy_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_15_5();
}

uint64_t sub_25BB1EE8C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696D697263736964 && a2 == 0xED0000726F74616ELL;
  if (v4 || (sub_25BCB789C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6568247463617865 && a2 == 0xEC00000074686769;
    if (v6 || (sub_25BCB789C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6977247463617865 && a2 == 0xEB00000000687464;
      if (v7 || (sub_25BCB789C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x794264656C616373 && a2 == 0xEF74686769656824;
        if (v8 || (sub_25BCB789C() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x794264656C616373 && a2 == 0xEE00687464697724)
        {

          return 4;
        }

        else
        {
          v10 = sub_25BCB789C();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_25BB1F054(char a1)
{
  result = 0x696D697263736964;
  switch(a1)
  {
    case 1:
      result = 0x6568247463617865;
      break;
    case 2:
      result = 0x6977247463617865;
      break;
    case 3:
    case 4:
      result = 0x794264656C616373;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25BB1F1F4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_25BCB79CC();
  a4(v8, v6);
  return sub_25BCB7A3C();
}

uint64_t sub_25BB1F248@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25BB1EE8C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25BB1F270@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25BB1F04C();
  *a1 = result;
  return result;
}

uint64_t sub_25BB1F298(uint64_t a1)
{
  v2 = sub_25BB1FAAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BB1F2D4(uint64_t a1)
{
  v2 = sub_25BB1FAAC();

  return MEMORY[0x2821FE720](a1, v2);
}

void Upsample2D.Size.encode(to:)()
{
  OUTLINED_FUNCTION_17_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4198, &qword_25BCBCE88);
  OUTLINED_FUNCTION_2(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_9_5();
  v15 = v0[1];
  v16 = *v0;
  v10 = *(v0 + 16);
  v11 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_25BB1FAAC();
  OUTLINED_FUNCTION_23_3();
  sub_25BCB7B6C();
  if (v10 == 1)
  {
    OUTLINED_FUNCTION_21_3();
    sub_25BB1FB00();
    OUTLINED_FUNCTION_1_12();
    sub_25BCB779C();
    if (!v1)
    {
      OUTLINED_FUNCTION_20_1(3);
      sub_25BCB777C();
    }
  }

  else
  {
    sub_25BB1FB00();
    OUTLINED_FUNCTION_1_12();
    sub_25BCB779C();
    if (!v1)
    {
      OUTLINED_FUNCTION_1_12();
      sub_25BCB778C();
      OUTLINED_FUNCTION_1_12();
      sub_25BCB778C();
    }
  }

  v12 = *(v6 + 8);
  v13 = OUTLINED_FUNCTION_26_0();
  v14(v13);
  OUTLINED_FUNCTION_15_5();
  OUTLINED_FUNCTION_16();
}

uint64_t Upsample2D.Size.init(from:)()
{
  OUTLINED_FUNCTION_25_3();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB41B0, &qword_25BCBCE90);
  OUTLINED_FUNCTION_2(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_6();
  sub_25BB1FAAC();
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_18_1();
  sub_25BCB7B2C();
  if (!v1)
  {
    sub_25BB1FB54();
    OUTLINED_FUNCTION_27_2();
    OUTLINED_FUNCTION_2_10();
    if (v18)
    {
      sub_25BCB768C();
      v9 = v8;
      OUTLINED_FUNCTION_2_10();
      sub_25BCB768C();
      v11 = v10;
      v12 = OUTLINED_FUNCTION_6_3();
      v13(v12);
      v14 = 0;
      v15 = v9 | (v11 << 32);
    }

    else
    {
      v15 = sub_25BCB769C();
      OUTLINED_FUNCTION_2_10();
      v14 = sub_25BCB769C();
      v16 = OUTLINED_FUNCTION_6_3();
      v17(v16);
    }

    *v2 = v15;
    *(v2 + 8) = v14;
    *(v2 + 16) = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1(v0);
}

unint64_t sub_25BB1F710()
{
  result = qword_27FBB4110;
  if (!qword_27FBB4110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4110);
  }

  return result;
}

unint64_t sub_25BB1F764()
{
  result = qword_27FBB4118;
  if (!qword_27FBB4118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4118);
  }

  return result;
}

unint64_t sub_25BB1F7B8()
{
  result = qword_27FBB4120;
  if (!qword_27FBB4120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4120);
  }

  return result;
}

unint64_t sub_25BB1F80C()
{
  result = qword_27FBB4130;
  if (!qword_27FBB4130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4130);
  }

  return result;
}

unint64_t sub_25BB1F860()
{
  result = qword_27FBB4138;
  if (!qword_27FBB4138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4138);
  }

  return result;
}

unint64_t sub_25BB1F8B4()
{
  result = qword_27FBB4150;
  if (!qword_27FBB4150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4150);
  }

  return result;
}

unint64_t sub_25BB1F908()
{
  result = qword_27FBB4158;
  if (!qword_27FBB4158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4158);
  }

  return result;
}

unint64_t sub_25BB1F95C()
{
  result = qword_27FBB4168;
  if (!qword_27FBB4168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4168);
  }

  return result;
}

unint64_t sub_25BB1F9B0()
{
  result = qword_27FBB4178;
  if (!qword_27FBB4178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4178);
  }

  return result;
}

unint64_t sub_25BB1FA04()
{
  result = qword_27FBB4180;
  if (!qword_27FBB4180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4180);
  }

  return result;
}

unint64_t sub_25BB1FA58()
{
  result = qword_27FBB4190;
  if (!qword_27FBB4190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4190);
  }

  return result;
}

unint64_t sub_25BB1FAAC()
{
  result = qword_27FBB41A0;
  if (!qword_27FBB41A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB41A0);
  }

  return result;
}

unint64_t sub_25BB1FB00()
{
  result = qword_27FBB41A8;
  if (!qword_27FBB41A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB41A8);
  }

  return result;
}

unint64_t sub_25BB1FB54()
{
  result = qword_27FBB41B8;
  if (!qword_27FBB41B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB41B8);
  }

  return result;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Upsample1D(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 10))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Upsample1D(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Upsample1D.Size(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Upsample1D.Size(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Upsample2D(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 18))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Upsample2D(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Upsample2D.Size(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Upsample2D.Size(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Upsample2D.Size.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for Upsample2D.Size.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for Upsample1D.Size.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_25BB200C8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_25BB201A8()
{
  result = qword_27FBB41C0;
  if (!qword_27FBB41C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB41C0);
  }

  return result;
}

unint64_t sub_25BB20200()
{
  result = qword_27FBB41C8;
  if (!qword_27FBB41C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB41C8);
  }

  return result;
}

unint64_t sub_25BB20258()
{
  result = qword_27FBB41D0;
  if (!qword_27FBB41D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB41D0);
  }

  return result;
}

unint64_t sub_25BB202B0()
{
  result = qword_27FBB41D8;
  if (!qword_27FBB41D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB41D8);
  }

  return result;
}

unint64_t sub_25BB20308()
{
  result = qword_27FBB41E0;
  if (!qword_27FBB41E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB41E0);
  }

  return result;
}

unint64_t sub_25BB20360()
{
  result = qword_27FBB41E8;
  if (!qword_27FBB41E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB41E8);
  }

  return result;
}

unint64_t sub_25BB203B8()
{
  result = qword_27FBB41F0;
  if (!qword_27FBB41F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB41F0);
  }

  return result;
}

unint64_t sub_25BB20410()
{
  result = qword_27FBB41F8;
  if (!qword_27FBB41F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB41F8);
  }

  return result;
}

unint64_t sub_25BB20468()
{
  result = qword_27FBB4200;
  if (!qword_27FBB4200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4200);
  }

  return result;
}

unint64_t sub_25BB204C0()
{
  result = qword_27FBB4208;
  if (!qword_27FBB4208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4208);
  }

  return result;
}

unint64_t sub_25BB20518()
{
  result = qword_27FBB4210;
  if (!qword_27FBB4210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4210);
  }

  return result;
}

unint64_t sub_25BB20570()
{
  result = qword_27FBB4218;
  if (!qword_27FBB4218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4218);
  }

  return result;
}

unint64_t sub_25BB205C8()
{
  result = qword_27FBB4220;
  if (!qword_27FBB4220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4220);
  }

  return result;
}

unint64_t sub_25BB20620()
{
  result = qword_27FBB4228;
  if (!qword_27FBB4228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4228);
  }

  return result;
}

unint64_t sub_25BB20674()
{
  result = qword_27FBB4230;
  if (!qword_27FBB4230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4230);
  }

  return result;
}

unint64_t sub_25BB206C8()
{
  result = qword_27FBB4238;
  if (!qword_27FBB4238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4238);
  }

  return result;
}

void RMSProp.gradientClippingMode.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 12);
  v3 = *(v1 + 20);
  v4 = *(v1 + 24);
  OUTLINED_FUNCTION_32_3(a1);
}

void RMSProp.regularizationKind.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 28);
  v3 = *(v1 + 32);
  OUTLINED_FUNCTION_82_1(a1);
}

uint64_t RMSProp.step.getter()
{
  v1 = *(v0 + 40);
  result = v1 + 1;
  if (__OFADD__(v1, 1))
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25BB207AC@<X0>(uint64_t *a1@<X8>)
{
  result = RMSProp.step.getter();
  *a1 = result;
  return result;
}

void RMSProp.step.setter(uint64_t a1)
{
  if (__OFSUB__(a1, 1))
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_81_0(a1 - 1);
  }
}

uint64_t (*RMSProp.step.modify(uint64_t (*result)()))()
{
  *(result + 1) = v1;
  v2 = *(v1 + 40);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *result = v4;
    return sub_25BB2828C;
  }

  return result;
}

uint64_t RMSProp.alpha.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 48);

  *(v1 + 48) = v2;
  return result;
}

uint64_t RMSProp.init(for:learningRate:rho:epsilon:gradientClippingMode:regularizationKind:gradientScale:)@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X8>, float a4@<S0>, float a5@<S1>, float a6@<S2>, float a7@<S3>)
{
  OUTLINED_FUNCTION_9();
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1();
  v23 = v22 - v21;
  if (v24 < 0.0)
  {
LABEL_8:
    OUTLINED_FUNCTION_28_1();
    OUTLINED_FUNCTION_7_0();
    goto LABEL_9;
  }

  if (a5 >= 0.0)
  {
    v25 = *v17;
    v26 = *v18 | (*(v18 + 4) << 32);
    if (BYTE4(v26) == 255 || (*(v18 + 4), *v18 > 0.0))
    {
      v27 = *(v17 + 2) | (*(v17 + 12) << 32);
      (*(v20 + 16))(v23, v19, a1);
      result = OptimizerStateDictionary.init(_:)(v23, a1, a2, &v30);
      v29 = v30;
      *a3 = a4;
      *(a3 + 4) = a5;
      *(a3 + 8) = a6;
      *(a3 + 12) = v25;
      *(a3 + 24) = BYTE4(v27);
      *(a3 + 20) = v27;
      *(a3 + 32) = BYTE4(v26);
      *(a3 + 28) = v26;
      *(a3 + 36) = a7;
      *(a3 + 40) = 0;
      *(a3 + 48) = v29;
      return result;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_7_0();
LABEL_9:
  result = sub_25BCB74CC();
  __break(1u);
  return result;
}

uint64_t (*RMSProp.update(_:with:)(uint64_t a1, void *a2, uint64_t a3))(_BYTE *, void)
{
  v5 = v3;
  v262 = a1;
  v241 = sub_25BCB783C();
  v8 = OUTLINED_FUNCTION_2(v241);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5_4();
  v240 = v13;
  OUTLINED_FUNCTION_7();
  v14 = sub_25BCB5EFC();
  v15 = OUTLINED_FUNCTION_2(v14);
  v238 = v16;
  v239 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_5_4();
  v237 = v19;
  OUTLINED_FUNCTION_7();
  v247 = sub_25BCB5EBC();
  v20 = OUTLINED_FUNCTION_2(v247);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_50();
  v244 = v25;
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v233 - v28;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_72_0();
  WitnessTable = swift_getWitnessTable();
  nullsub_1(a3, WitnessTable);
  v267 = a3;
  v261 = *(a3 + 16);
  sub_25BCB736C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v248 = a2;
  v264 = TupleTypeMetadata2;
  sub_25BCB681C();
  OUTLINED_FUNCTION_63_0();
  sub_25BACC03C();
  v266 = v31;
  if (qword_28154BE88 != -1)
  {
    OUTLINED_FUNCTION_20_2();
  }

  v32 = sub_25BCB5EEC();
  v33 = __swift_project_value_buffer(v32, qword_28154BE90);
  sub_25BCB5EAC();
  v243 = v33;
  v34 = sub_25BCB5EDC();
  v35 = sub_25BCB6D5C();
  v36 = sub_25BCB6E1C();
  v258 = v5;
  if (v36)
  {
    v37 = OUTLINED_FUNCTION_90();
    v38 = OUTLINED_FUNCTION_88_1(v37);
    _os_signpost_emit_with_name_impl(&dword_25BA90000, v34, v35, v38, "Optimizing", "", v5, 2u);
    v5 = v258;
    OUTLINED_FUNCTION_89();
  }

  (*(v22 + 16))(v29, v4, v247);
  v39 = sub_25BCB5F2C();
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  swift_allocObject();
  v246 = sub_25BCB5F1C();
  v43 = v22 + 8;
  v42 = *(v22 + 8);
  v44 = OUTLINED_FUNCTION_102_0();
  v245 = v43;
  v42(v44);
  OUTLINED_FUNCTION_0_14();
  v45 = OUTLINED_FUNCTION_29_1();
  sub_25BAA51C8(v45, v46);
  v47 = MEMORY[0x277D84F90];
  sub_25BACC1B0(MEMORY[0x277D84F90], &unk_286D42A40, v277, v272);
  sub_25BA9C2C8(v271);
  v278 = v272[0];
  v48 = *(v5 + 24);
  OUTLINED_FUNCTION_67_1();
  if (!v52 & v51)
  {
    v52 = 0;
  }

  else
  {
    v52 = v50 == 0x200000000;
  }

  if (v52)
  {
    v54 = *(v5 + 3);
    v53 = v248;
    if ((v54 & 0x100000000) != 0)
    {
      v271[0] = v248;
      MEMORY[0x28223BE20](v49);
      OUTLINED_FUNCTION_71_0();
      v59 = WitnessTable;
      *(v60 - 16) = v267;
      *(v60 - 8) = v59;
      v61 = sub_25BCB68CC();
      OUTLINED_FUNCTION_1_1();
      v62 = swift_getWitnessTable();
      sub_25BAB2B20(sub_25BB27830, v54, v61, &type metadata for Tensor, MEMORY[0x277D84A98], v62, MEMORY[0x277D84AC0], v63);
      v260 = 0;
      OUTLINED_FUNCTION_75_0();
      v271[0] = v277[0];
      v275[0] = &unk_286D42A68;
      Tensor.reshaped(to:)(v275, v272);

      v275[0] = v272[0];
      Tensor.sum(squeezingAxes:)(v271);

      v53 = v248;

      v64 = v271[0];
      OUTLINED_FUNCTION_0_14();
      v65 = *(v64[2] + 160);
      v66 = OUTLINED_FUNCTION_29_1();
      sub_25BAA51C8(v66, v67);
      v276 = v47;
      LOBYTE(v274) = v65;
      v68 = OUTLINED_FUNCTION_41_2();
      sub_25BAA51C8(v68, v69);
      Tensor.init(shape:coercingScalars:scalarType:on:)(&v276, &unk_286D42AB8, &v274, v272, v275);
      sub_25BA9C2C8(v277);
      sub_25BA9C2C8(v271);
      v271[0] = v64;
      v277[0] = v275[0];
      OUTLINED_FUNCTION_29_1();
      static Tensor.* infix(_:_:)();
      sqrt(_:)(v271, v272);

      v58 = v271[0];
    }

    else
    {
      OUTLINED_FUNCTION_0_14();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
      v55 = OUTLINED_FUNCTION_56();
      *(v55 + 16) = xmmword_25BCBAE50;
      *(v55 + 32) = v54;
      v56 = OUTLINED_FUNCTION_29_1();
      sub_25BAA51C8(v56, v57);
      sub_25BACC1B0(MEMORY[0x277D84F90], v55, v277, v272);
      sub_25BA9C2C8(v271);
      v58 = v272[0];

      v260 = 0;
    }

    v278 = v58;
  }

  else
  {
    v260 = 0;
    v53 = v248;
  }

  v70 = sub_25BCB681C();
  OUTLINED_FUNCTION_63_0();
  sub_25BAA1B64();
  v276 = v71;
  if (v70 < 0)
  {
    __break(1u);
LABEL_60:

    __break(1u);
LABEL_61:
    OUTLINED_FUNCTION_21();
    v233 = 329;
    OUTLINED_FUNCTION_7_0();
LABEL_63:
    sub_25BCB74CC();
    __break(1u);
LABEL_64:
    OUTLINED_FUNCTION_17_5();
    OUTLINED_FUNCTION_52_1();
    sub_25BADDD28();
  }

  v242 = v42;
  if (v70)
  {
    v72 = 0;
    v235 = (v10 + 8);
    v236 = (v10 + 104);
    v234 = *MEMORY[0x277D84660];
    v265 = xmmword_25BCBAE50;
    v73 = v258;
    v259 = v70;
    while (1)
    {
      v74 = v53;
      sub_25BCB690C();
      v76 = v271[0];
      v75 = v271[1];

      MEMORY[0x28223BE20](v77);
      v78 = &v233 - 10;
      v79 = WitnessTable;
      *(&v233 - 8) = v267;
      *(&v233 - 7) = v79;
      v268 = v75;
      *(&v233 - 6) = v75;
      *(&v233 - 5) = v73;
      *(&v233 - 4) = &v278;
      *(&v233 - 3) = v76;
      *(&v233 - 2) = &v276;

      v80 = sub_25BCB6FCC();
      if (v81)
      {
        v82 = swift_modifyAtWritableKeyPath();
        v84 = v82;
        if ((*(v83 + 8) & 1) == 0)
        {
          v85 = v83;
          v254 = v82;
          v86 = *(v73 + 36);
          v256 = v83;
          if (v86 == 1.0)
          {
            v87 = v268;
          }

          else
          {
            OUTLINED_FUNCTION_0_14();
            v93 = v268;
            v94 = *(v268[2] + 160);
            v95 = OUTLINED_FUNCTION_29_1();
            sub_25BAA51C8(v95, v96);
            v273 = MEMORY[0x277D84F90];
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
            v97 = OUTLINED_FUNCTION_56();
            OUTLINED_FUNCTION_38_3(v97);
            v269[0] = v94;
            v98 = OUTLINED_FUNCTION_41_2();
            sub_25BAA51C8(v98, v99);
            v100 = OUTLINED_FUNCTION_19_4();
            Tensor.init(shape:coercingScalars:scalarType:on:)(v100, v97, v101, v102, v103);
            sub_25BA9C2C8(v277);
            sub_25BA9C2C8(v271);
            v277[0] = v93;
            v272[0] = v274;
            v85 = v256;

            OUTLINED_FUNCTION_41_2();
            static Tensor.* infix(_:_:)();

            v87 = v271[0];
          }

          v104 = *(v73 + 24);
          OUTLINED_FUNCTION_64_1();
          if (!v52 & v51)
          {
            v271[0] = v87;
          }

          else
          {
            v106 = *(v73 + 12);
            v107 = *(v73 + 20) | (v105 << 32);
            if (HIDWORD(v107))
            {
              v108 = v278;
              OUTLINED_FUNCTION_0_14();
              if (HIDWORD(v107) == 1)
              {
                v109 = *(v87[2] + 160);
                v110 = OUTLINED_FUNCTION_29_1();
                sub_25BAA51C8(v110, v111);
                v273 = MEMORY[0x277D84F90];
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
                v112 = OUTLINED_FUNCTION_56();
                *(v112 + 16) = v265;
                *(v112 + 32) = v106;
                v269[0] = v109;
                v113 = OUTLINED_FUNCTION_41_2();
                sub_25BAA51C8(v113, v114);

                v115 = OUTLINED_FUNCTION_19_4();
                Tensor.init(shape:coercingScalars:scalarType:on:)(v115, v112, v116, v117, v118);
                sub_25BA9C2C8(v277);
                sub_25BA9C2C8(v271);
                v119 = v274;
                v277[0] = v87;
                OUTLINED_FUNCTION_96_0();
                Tensor.squared()();
                v272[0] = v271[0];
                v274 = &unk_286D42B08;
                v120 = OUTLINED_FUNCTION_98_1();
                Tensor.reshaped(to:)(v120, v121);

                v272[0] = v277[0];
                Tensor.sum(squeezingAxes:)(&v274);

                v122 = OUTLINED_FUNCTION_97_0();
                sqrt(_:)(v123, v122);

                v124 = v271[0];
                v277[0] = v87;
                v271[0] = v119;
                v272[0] = v124;
                v274 = v119;
                max(_:_:)();
                static Tensor./ infix(_:_:)();

                OUTLINED_FUNCTION_41_2();
                static Tensor.* infix(_:_:)();
              }

              else
              {
                v128 = *(v87[2] + 160);
                v129 = OUTLINED_FUNCTION_29_1();
                sub_25BAA51C8(v129, v130);
                v273 = MEMORY[0x277D84F90];
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
                v131 = OUTLINED_FUNCTION_56();
                *(v131 + 16) = v265;
                *(v131 + 32) = v107;
                v269[0] = v128;
                v132 = OUTLINED_FUNCTION_41_2();
                sub_25BAA51C8(v132, v133);

                v134 = OUTLINED_FUNCTION_19_4();
                Tensor.init(shape:coercingScalars:scalarType:on:)(v134, v131, v135, v136, v137);
                sub_25BA9C2C8(v277);
                sub_25BA9C2C8(v271);
                v271[0] = v87;
                v277[0] = v274;
                OUTLINED_FUNCTION_29_1();
                static Tensor.* infix(_:_:)();
                v271[0] = v108;
                LOBYTE(v274) = *(v87[2] + 160);
                v139 = v240;
                v138 = v241;
                (*v236)(v240, v234, v241);
                OUTLINED_FUNCTION_98_1();
                Tensor.cast(to:roundingRule:)();
                (*v235)(v139, v138);
                v274 = v277[0];
                static Tensor./ infix(_:_:)();
              }

              v73 = v258;
            }

            else
            {
              v277[0] = v87;
              OUTLINED_FUNCTION_96_0();
              Tensor.clamped(to:)(v125, v126, v127);

              v73 = v258;
            }

            v85 = v256;
          }

          v140 = *(*v85 + 32);
          if ((~v140 & 0xF000000000000007) == 0)
          {
            goto LABEL_61;
          }

          if ((v140 & 0x8000000000000000) == 0)
          {
            OUTLINED_FUNCTION_24();
            OUTLINED_FUNCTION_7_0();
            goto LABEL_63;
          }

          v141 = v271[0];
          v142 = *(v73 + 32);
          OUTLINED_FUNCTION_64_1();
          if (!v52 & v51)
          {

            sub_25BAB3020(v140);

            v147 = v141;
          }

          else
          {
            v144 = *(v73 + 28);
            OUTLINED_FUNCTION_47_3(v143);
            v277[0] = v141;
            v272[0] = v140 & 0x7FFFFFFFFFFFFFFFLL;
            sub_25BAB3020(v140);

            v145 = OUTLINED_FUNCTION_41_2();
            sub_25BB08FF0(v145, v146);
            v147 = v271[0];
          }

          v148 = *(v73 + 40);
          v255 = &v233;
          v252 = v140 & 0x7FFFFFFFFFFFFFFFLL;
          v253 = v140;
          v257 = v141;
          if (v148)
          {
            OUTLINED_FUNCTION_68_1();
            v149 = type metadata accessor for OptimizerStateDictionary();
            v150 = v73;
            OptimizerStateDictionary.subscript.getter(v76, v149);
            if (!v271[0])
            {
              goto LABEL_64;
            }

            v151 = v271[0];
            v152 = v150;
          }

          else
          {
            v271[0] = *(v73 + 48);
            OUTLINED_FUNCTION_68_1();
            v153 = type metadata accessor for OptimizerStateDictionary();
            OptimizerStateDictionary.subscript.getter(sub_25BB28290, v153, v277);
            v152 = v73;
            v151 = v277[0];
          }

          v250 = v151;
          OUTLINED_FUNCTION_0_14();
          v154 = *(v147[2] + 160);
          v155 = OUTLINED_FUNCTION_29_1();
          sub_25BAA51C8(v155, v156);
          v157 = MEMORY[0x277D84F90];
          v273 = MEMORY[0x277D84F90];
          v269[0] = v154;
          v158 = OUTLINED_FUNCTION_41_2();
          sub_25BAA51C8(v158, v159);
          v160 = OUTLINED_FUNCTION_19_4();
          Tensor.init(shape:coercingScalars:scalarType:on:)(v160, &unk_286D42AE0, v161, v162, v163);
          sub_25BA9C2C8(v277);
          sub_25BA9C2C8(v271);
          v164 = v274;
          v251 = v274;
          v165 = *(v152 + 4);
          OUTLINED_FUNCTION_0_14();
          v166 = *(v147[2] + 160);
          v167 = OUTLINED_FUNCTION_29_1();
          sub_25BAA51C8(v167, v168);
          v274 = v157;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
          v169 = OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_38_3(v169);
          v269[0] = v166;
          v170 = OUTLINED_FUNCTION_41_2();
          sub_25BAA51C8(v170, v171);
          Tensor.init(shape:coercingScalars:scalarType:on:)(&v274, v169, v269, v272, &v273);
          sub_25BA9C2C8(v277);
          sub_25BA9C2C8(v271);
          v271[0] = v151;
          static Tensor.* infix(_:_:)();

          OUTLINED_FUNCTION_0_14();
          v172 = *(v147[2] + 160);
          v173 = OUTLINED_FUNCTION_29_1();
          sub_25BAA51C8(v173, v174);
          v273 = v157;
          v175 = OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_38_3(v175);
          v270 = v172;
          v176 = OUTLINED_FUNCTION_41_2();
          sub_25BAA51C8(v176, v177);
          v178 = OUTLINED_FUNCTION_100_0();
          Tensor.init(shape:coercingScalars:scalarType:on:)(v178, v175, v179, v180, v181);
          sub_25BA9C2C8(v277);
          sub_25BA9C2C8(v271);
          v271[0] = v147;
          v277[0] = v164;
          OUTLINED_FUNCTION_29_1();
          pow(_:_:)();
          static Tensor.* infix(_:_:)();

          OUTLINED_FUNCTION_97_0();
          static Tensor.+ infix(_:_:)();

          v78 = v271[0];
          sqrt(_:)(&v274, v271);
          v182 = v258;
          v183 = v258[2];
          OUTLINED_FUNCTION_0_14();
          LOBYTE(v157) = *(v147[2] + 160);
          v184 = OUTLINED_FUNCTION_29_1();
          sub_25BAA51C8(v184, v185);
          v186 = MEMORY[0x277D84F90];
          v273 = MEMORY[0x277D84F90];
          v187 = OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_38_3(v187);
          v270 = v157;
          v188 = OUTLINED_FUNCTION_41_2();
          sub_25BAA51C8(v188, v189);
          v190 = OUTLINED_FUNCTION_100_0();
          Tensor.init(shape:coercingScalars:scalarType:on:)(v190, v187, v191, v192, v193);
          sub_25BA9C2C8(v277);
          sub_25BA9C2C8(v271);
          OUTLINED_FUNCTION_97_0();
          static Tensor.+ infix(_:_:)();

          v194 = v271[0];
          v249 = v271[0];
          v195 = *v182;
          OUTLINED_FUNCTION_0_14();
          LOBYTE(v187) = *(v147[2] + 160);
          v196 = OUTLINED_FUNCTION_29_1();
          sub_25BAA51C8(v196, v197);
          v273 = v186;
          v198 = OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_38_3(v198);
          v269[0] = v187;
          v199 = OUTLINED_FUNCTION_41_2();
          sub_25BAA51C8(v199, v200);
          v201 = OUTLINED_FUNCTION_19_4();
          Tensor.init(shape:coercingScalars:scalarType:on:)(v201, v198, v202, v203, v204);
          sub_25BA9C2C8(v277);
          sub_25BA9C2C8(v271);
          v277[0] = v252;
          v271[0] = v274;
          v272[0] = v147;
          static Tensor.* infix(_:_:)();
          v271[0] = v194;
          static Tensor./ infix(_:_:)();

          OUTLINED_FUNCTION_41_2();
          static Tensor.- infix(_:_:)();

          v205 = v271[0];
          v271[0] = v78;
          OUTLINED_FUNCTION_68_1();
          v206 = type metadata accessor for OptimizerStateDictionary();

          OptimizerStateDictionary.subscript.setter(v271, v76, v206);

          v207 = v276;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_45_3();
            v207 = v218;
          }

          v73 = v258;
          v70 = v259;
          v209 = *(v207 + 16);
          v208 = *(v207 + 24);
          OUTLINED_FUNCTION_95_0();
          if (v51)
          {
            OUTLINED_FUNCTION_13_5(v210);
            sub_25BAA1B64();
            v207 = v219;
          }

          *(v207 + 16) = v78;
          *(v207 + 8 * v209 + 32) = v205;
          v276 = v207;
          v271[0] = v205;

          Parameter.wrappedValue.setter(v271);

          sub_25BAB310C(v253);

          v74 = v248;
          v84 = v254;
        }

        v84(v275, 0);
      }

      else
      {
        MEMORY[0x28223BE20](v80);
        OUTLINED_FUNCTION_70_1();
        v88 = *(v267 + 24);
        v89 = v261;
        *(v90 - 48) = v261;
        *(v90 - 40) = v88;
        *(v90 - 32) = v91;
        *(v90 - 24) = sub_25BACC630;
        *(v90 - 16) = v78;
        v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3EC8, qword_25BCC3F80);
        v78 = v260;
        sub_25BAB2F30(v262, sub_25BACC688, v76, v89, v92);
        if (v78)
        {
          goto LABEL_60;
        }

        v260 = 0;

        v70 = v259;
      }

      v211 = v268[2];
      v212 = sub_25BAC4018();
      v214 = *(v266 + 16);
      v213 = *(v266 + 24);
      OUTLINED_FUNCTION_95_0();
      if (v51)
      {
        OUTLINED_FUNCTION_13_5(v215);
        sub_25BACC03C();
        v266 = v217;
      }

      v53 = v74;
      ++v72;

      v216 = v266;
      *(v266 + 16) = v78;
      *(v216 + 8 * v214 + 32) = v212;
      if (v70 == v72)
      {
        goto LABEL_54;
      }
    }
  }

  v73 = v258;
LABEL_54:
  v220 = sub_25BCB5EDC();
  v221 = v244;
  sub_25BCB5F0C();
  v222 = sub_25BCB6D4C();
  if (sub_25BCB6E1C())
  {

    sub_25BCB5F3C();

    v223 = OUTLINED_FUNCTION_48_2();
    if (v224(v223) != *MEMORY[0x277D85B00])
    {
      v225 = OUTLINED_FUNCTION_74_0();
      v226(v225);
    }

    *OUTLINED_FUNCTION_90() = 0;
    v227 = sub_25BCB5E9C();
    OUTLINED_FUNCTION_61_0(&dword_25BA90000, v228, v222, v227, "Optimizing");
    OUTLINED_FUNCTION_89();
  }

  v242(v221, v247);

  v229 = sub_25BACED8C();
  OUTLINED_FUNCTION_114_0(v229);

  v230 = v267;
  v231 = WitnessTable;
  nullsub_1(v267, WitnessTable);
  return sub_25BA9B48C(v73, v230, v231);
}

void sub_25BB21DE0(uint64_t a1@<X8>)
{
  v2 = *(v1 + 20);
  v3 = *(v1 + 24);
  *a1 = *(v1 + 12);
  *(a1 + 12) = v3;
  *(a1 + 8) = v2;
}

uint64_t sub_25BB21E04@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v9 = *a2;
  v10 = *a3;
  if (*(v5 + 32) == 255)
  {
    v11 = *a3;
  }

  else
  {
    v12 = v5[7] | (*(v5 + 32) << 32);
    LODWORD(v63) = v5[7];
    BYTE4(v63) = BYTE4(v12) & 1;
    v64[0] = v10;
    v61[0] = v9;
    sub_25BB08FF0(v64, v61);
    v10 = v65;
  }

  v57 = a1;
  v58 = a5;
  if (*(v5 + 5))
  {
    v13 = *(a4 + 16);
    v14 = *(a4 + 24);
    v15 = type metadata accessor for OptimizerStateDictionary();
    OptimizerStateDictionary.subscript.getter(a1, v15);
    v16 = v65;
    if (!v65)
    {
      v69 = 0u;
      memset(v70, 0, 28);
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v70[28] = 22;
      sub_25BADDD28();
    }
  }

  else
  {
    *&v65 = *(v5 + 6);
    v17 = *(a4 + 16);
    v18 = *(a4 + 24);
    v19 = type metadata accessor for OptimizerStateDictionary();
    OptimizerStateDictionary.subscript.getter(sub_25BB28290, v19, v64);
    v16 = v64[0];
  }

  v20 = v9;
  LODWORD(v68) = 0;
  v66 = 0u;
  v67 = 0u;
  v65 = 0u;
  v21 = *(*(v10 + 16) + 160);
  sub_25BAA51C8(&v65, v64);
  v62 = sub_25BACD7D8(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
  v22 = swift_allocObject();
  v23 = sub_25BACD7C4(v22, 1);
  *v24 = 0x40000000;
  v25 = nullsub_1(v23, v24);
  LOBYTE(v59) = v21;
  sub_25BAA51C8(v64, v61);
  Tensor.init(shape:coercingScalars:scalarType:on:)(&v62, v25, &v59, v61, &v63);
  sub_25BA9C2C8(v64);
  sub_25BA9C2C8(&v65);
  v26 = v63;
  v27 = *(v5 + 1);
  LODWORD(v68) = 0;
  v66 = 0u;
  v67 = 0u;
  v65 = 0u;
  v28 = *(*(v10 + 16) + 160);
  sub_25BAA51C8(&v65, v64);
  v63 = sub_25BACD7D8(0);
  v29 = swift_allocObject();
  v30 = sub_25BACD7C4(v29, 1);
  *v31 = v27;
  v32 = nullsub_1(v30, v31);
  LOBYTE(v59) = v28;
  sub_25BAA51C8(v64, v61);
  Tensor.init(shape:coercingScalars:scalarType:on:)(&v63, v32, &v59, v61, &v62);
  sub_25BA9C2C8(v64);
  sub_25BA9C2C8(&v65);
  *&v65 = v16;
  static Tensor.* infix(_:_:)();

  LODWORD(v68) = 0;
  v66 = 0u;
  v67 = 0u;
  v65 = 0u;
  v33 = *(*(v10 + 16) + 160);
  sub_25BAA51C8(&v65, v64);
  v62 = sub_25BACD7D8(0);
  v34 = swift_allocObject();
  v35 = sub_25BACD7C4(v34, 1);
  *v36 = 1.0 - v27;
  v37 = nullsub_1(v35, v36);
  v60 = v33;
  sub_25BAA51C8(v64, v61);
  Tensor.init(shape:coercingScalars:scalarType:on:)(&v62, v37, &v60, v61, &v59);
  sub_25BA9C2C8(v64);
  sub_25BA9C2C8(&v65);
  *&v65 = v10;
  v64[0] = v26;
  pow(_:_:)();
  static Tensor.* infix(_:_:)();

  static Tensor.+ infix(_:_:)();

  v38 = v65;
  sqrt(_:)(&v63, &v65);
  v39 = v5[2];
  LODWORD(v68) = 0;
  v66 = 0u;
  v67 = 0u;
  v65 = 0u;
  v40 = *(*(v10 + 16) + 160);
  sub_25BAA51C8(&v65, v64);
  v62 = sub_25BACD7D8(0);
  v41 = swift_allocObject();
  v42 = sub_25BACD7C4(v41, 1);
  *v43 = v39;
  v44 = nullsub_1(v42, v43);
  v60 = v40;
  sub_25BAA51C8(v64, v61);
  Tensor.init(shape:coercingScalars:scalarType:on:)(&v62, v44, &v60, v61, &v59);
  sub_25BA9C2C8(v64);
  sub_25BA9C2C8(&v65);
  static Tensor.+ infix(_:_:)();

  v45 = v65;
  v46 = *v5;
  LODWORD(v68) = 0;
  v66 = 0u;
  v67 = 0u;
  v65 = 0u;
  v47 = *(*(v10 + 16) + 160);
  sub_25BAA51C8(&v65, v64);
  v62 = sub_25BACD7D8(0);
  v48 = swift_allocObject();
  v49 = sub_25BACD7C4(v48, 1);
  *v50 = v46;
  v51 = nullsub_1(v49, v50);
  LOBYTE(v59) = v47;
  sub_25BAA51C8(v64, v61);
  Tensor.init(shape:coercingScalars:scalarType:on:)(&v62, v51, &v59, v61, &v63);
  sub_25BA9C2C8(v64);
  sub_25BA9C2C8(&v65);
  v64[0] = v20;
  *&v65 = v63;
  v61[0] = v10;
  static Tensor.* infix(_:_:)();
  *&v65 = v45;
  static Tensor./ infix(_:_:)();

  static Tensor.- infix(_:_:)();

  v52 = v65;
  *&v65 = v38;
  v53 = *(a4 + 16);
  v54 = *(a4 + 24);
  v55 = type metadata accessor for OptimizerStateDictionary();

  OptimizerStateDictionary.subscript.setter(&v65, v57, v55);

  *v58 = v52;
  return result;
}

uint64_t sub_25BB223EC()
{
  v0 = sub_25BCB761C();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_25BB22444(char a1)
{
  result = 0x676E696E7261656CLL;
  switch(a1)
  {
    case 1:
      result = 7301234;
      break;
    case 2:
      result = 0x6E6F6C69737065;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0x746E656964617267;
      break;
    case 6:
      result = 0x6F69746172657469;
      break;
    case 7:
      result = 0x6168706C61;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25BB22544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25BB225B8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_25BB22624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25BB22694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25BB22704@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  result = sub_25BB223EC();
  *a3 = result;
  return result;
}

unint64_t sub_25BB22754(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_25BB22540(*v1);
}

uint64_t sub_25BB22760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  result = sub_25BB22438(a1, a2, *(a3 + 16), *(a3 + 24));
  *a4 = result;
  return result;
}

uint64_t sub_25BB227A8@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  result = sub_25BB2243C();
  *a2 = result;
  return result;
}

uint64_t sub_25BB227D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_25BB2282C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t RMSProp.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a3;
  type metadata accessor for RMSProp.CodingKeys();
  OUTLINED_FUNCTION_43_2();
  swift_getWitnessTable();
  v51 = OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_2(v51);
  v48 = v6;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v9);
  v11 = &v42 - v10;
  v13 = a1[3];
  v12 = a1[4];
  v74 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  v50 = v11;
  OUTLINED_FUNCTION_35_1();
  sub_25BCB7B2C();
  if (v3)
  {
    return __swift_destroy_boxed_opaque_existential_1(v74);
  }

  v14 = v48;
  v15 = v49;
  LOBYTE(v55) = 0;
  sub_25BCB768C();
  v17 = v16;
  OUTLINED_FUNCTION_30_4(6);
  v18 = sub_25BCB769C();
  OUTLINED_FUNCTION_30_4(1);
  sub_25BCB768C();
  v20 = v19;
  OUTLINED_FUNCTION_30_4(2);
  sub_25BCB768C();
  v22 = v21;
  OUTLINED_FUNCTION_30_4(5);
  sub_25BCB768C();
  v24 = v23;
  v52[0] = 4;
  sub_25BB27868();
  sub_25BCB765C();
  v47 = BYTE4(v55);
  v25 = v55;
  v52[0] = 3;
  sub_25BB278BC();
  sub_25BCB765C();
  v26 = v55;
  v45 = v57;
  v44 = v56;
  v46 = a2;
  type metadata accessor for OptimizerStateDictionary();
  v69 = 7;
  OUTLINED_FUNCTION_10_6();
  swift_getWitnessTable();
  sub_25BCB76AC();
  v43 = v26;
  v27 = v25 | (v47 << 32);
  v28 = *(v14 + 8);
  v29 = v44 | (v45 << 32);
  v30 = OUTLINED_FUNCTION_101();
  v31(v30);
  v32 = v70;
  *v52 = v17;
  *&v52[4] = v20;
  *&v52[8] = v22;
  *&v52[12] = v26;
  v51 = HIDWORD(v29);
  v52[24] = BYTE4(v29);
  *&v52[20] = v29;
  OUTLINED_FUNCTION_99_0();
  *&v52[25] = v33;
  v52[27] = v73;
  *&v52[28] = v27;
  LOBYTE(v53) = BYTE4(v27);
  *(&v53 + 1) = v71;
  BYTE3(v53) = v72;
  DWORD1(v53) = v24;
  *(&v53 + 1) = v18;
  v54 = v32;
  v34 = *v52;
  v35 = *&v52[16];
  v36 = v53;
  *(v15 + 48) = v32;
  *(v15 + 16) = v35;
  *(v15 + 32) = v36;
  *v15 = v34;
  v37 = type metadata accessor for RMSProp();
  OUTLINED_FUNCTION_69_0(v37);
  v39 = v38;
  (*(v38 + 16))(&v55, v52, v27);
  __swift_destroy_boxed_opaque_existential_1(v74);
  v55 = __PAIR64__(v20, v17);
  v56 = v22;
  v57 = v43;
  v59 = v51;
  v58 = v29;
  OUTLINED_FUNCTION_99_0();
  v60 = v40;
  v61 = v73;
  v63 = BYTE4(v27);
  v62 = v27;
  v64 = v71;
  v65 = v72;
  v66 = v24;
  v67 = v18;
  v68 = v32;
  return (*(v39 + 8))(&v55, v27);
}

uint64_t RMSProp.encode(to:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_93_1(a1, a2);
  type metadata accessor for RMSProp.CodingKeys();
  OUTLINED_FUNCTION_43_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_73_0();
  v4 = sub_25BCB77CC();
  OUTLINED_FUNCTION_2(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - v10;
  v13 = *v2;
  v12 = v2[1];
  v14 = v2[2];
  v15 = *(v2 + 3);
  v29 = *(v2 + 24);
  v30 = v15;
  v33 = v2[5];
  v32 = *(v2 + 32);
  v31 = v2[7];
  v16 = v2[9];
  v17 = *(v2 + 6);
  v34 = *(v2 + 5);
  v19 = *(a1 + 24);
  v18 = *(a1 + 32);
  v20 = a1;
  v22 = v21;
  __swift_project_boxed_opaque_existential_1(v20, v19);
  sub_25BCB7B6C();
  LOBYTE(v36) = 0;
  v23 = v35;
  sub_25BCB777C();
  if (!v23)
  {
    v25 = v31;
    v24 = v32;
    v26 = v33;
    LOBYTE(v36) = 6;
    OUTLINED_FUNCTION_57_0();
    sub_25BCB778C();
    OUTLINED_FUNCTION_59_0(1);
    OUTLINED_FUNCTION_57_0();
    sub_25BCB777C();
    OUTLINED_FUNCTION_59_0(2);
    OUTLINED_FUNCTION_57_0();
    sub_25BCB777C();
    OUTLINED_FUNCTION_59_0(5);
    OUTLINED_FUNCTION_57_0();
    sub_25BCB777C();
    LODWORD(v36) = v25;
    BYTE4(v36) = (v25 | (v24 << 32)) >> 32;
    v39 = 4;
    sub_25BB27928();
    OUTLINED_FUNCTION_58_1();
    OUTLINED_FUNCTION_57_0();
    sub_25BCB773C();
    v36 = v30;
    v38 = (v26 | (v29 << 32)) >> 32;
    v37 = v26;
    v39 = 3;
    sub_25BB2797C();
    OUTLINED_FUNCTION_58_1();
    OUTLINED_FUNCTION_57_0();
    sub_25BCB773C();
    v36 = v17;
    v39 = 7;
    type metadata accessor for OptimizerStateDictionary();
    sub_25BCB617C();
    OUTLINED_FUNCTION_12_5();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_58_1();
    OUTLINED_FUNCTION_57_0();
    sub_25BCB779C();
  }

  return (*(v6 + 8))(v11, v22);
}

void Adam.gradientClippingMode.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 28);
  OUTLINED_FUNCTION_32_3(a1);
}

void Adam.regularizationKind.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 36);
  OUTLINED_FUNCTION_82_1(a1);
}

uint64_t sub_25BB23084@<X0>(uint64_t *a1@<X8>)
{
  result = Adam.step.getter();
  *a1 = result;
  return result;
}

uint64_t Adam.step.setter(uint64_t result)
{
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    *(v1 + 48) = (result - 1) & ~((result - 1) >> 63);
  }

  return result;
}

void *Adam.step.modify(void *result)
{
  result[1] = v1;
  v2 = *(v1 + 48);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *result = v4;
    return sub_25BB23128;
  }

  return result;
}

void *sub_25BB23128(void *result, char a2)
{
  v2 = *result - 1;
  v3 = __OFSUB__(*result, 1);
  if (a2)
  {
    if (!v3)
    {
LABEL_8:
      *(result[1] + 48) = v2 & ~(v2 >> 63);
      return result;
    }

    __break(1u);
  }

  if (!v3)
  {
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t Adam.firstMoments.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 56);

  *(v1 + 56) = v2;
  return result;
}

uint64_t Adam.secondMoments.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 64);

  *(v1 + 64) = v2;
  return result;
}

uint64_t Adam.maximumSecondMoments.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 72);

  *(v1 + 72) = v2;
  return result;
}

void Adam.init(for:learningRate:beta1:beta2:usesAMSGrad:epsilon:gradientClippingMode:regularizationKind:gradientScale:)()
{
  OUTLINED_FUNCTION_120_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  OUTLINED_FUNCTION_9();
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1();
  if (v22 < 0.0)
  {
    OUTLINED_FUNCTION_66_1();
LABEL_19:
    OUTLINED_FUNCTION_7_0();
    sub_25BCB74CC();
    __break(1u);
    return;
  }

  v23 = v9 < 0.0 || v9 > 1.0;
  if (v23 || (v7 >= 0.0 ? (v24 = v7 > 1.0) : (v24 = 1), v24))
  {
    OUTLINED_FUNCTION_21();
    goto LABEL_19;
  }

  v25 = v20;
  OUTLINED_FUNCTION_106_0(v19, v20, v21);
  v29 = *v26 | (*(v26 + 4) << 32);
  if (BYTE4(v29) != 255)
  {
    *(v26 + 4);
    if (*v26 <= 0.0)
    {
      OUTLINED_FUNCTION_28_1();
      goto LABEL_19;
    }
  }

  v30 = v28 | (v27 << 32);
  v31 = *(v15 + 16);
  v32 = OUTLINED_FUNCTION_27_3();
  v31(v32);
  v33 = OUTLINED_FUNCTION_26_5();
  OptimizerStateDictionary.init(_:)(v33, v34, v1, v35);
  v36 = OUTLINED_FUNCTION_27_3();
  v31(v36);
  v37 = OUTLINED_FUNCTION_26_5();
  OptimizerStateDictionary.init(_:)(v37, v38, v1, v39);
  v40 = v49;
  if (v25)
  {
    v41 = OUTLINED_FUNCTION_27_3();
    v43 = v42;
    v31(v41);
    v44 = OUTLINED_FUNCTION_26_5();
    OptimizerStateDictionary.init(_:)(v44, v45, v1, v46);
    v47 = v49;

    v40 = v43;
  }

  else
  {
    v47 = 0;
  }

  *v13 = v11;
  *(v13 + 4) = v9;
  *(v13 + 8) = v7;
  *(v13 + 12) = v5;
  *(v13 + 16) = v48;
  *(v13 + 24) = v30;
  *(v13 + 28) = BYTE4(v30);
  *(v13 + 32) = v29;
  *(v13 + 36) = BYTE4(v29);
  *(v13 + 40) = v3;
  *(v13 + 48) = 0;
  *(v13 + 56) = v49;
  *(v13 + 64) = v40;
  *(v13 + 72) = v47;
  OUTLINED_FUNCTION_116_0();
}

uint64_t sub_25BB234E0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, void *a8@<X8>, uint64_t a9, uint64_t *a10)
{
  v10 = *a10;
  v26 = a1;
  v24 = a3;
  v25 = a2;
  v22 = a5;
  v23 = a4;
  v20 = a7;
  v21 = a6;
  basicAdam(parameter:gradient:momentum:velocity:maximumVelocity:learningRate:step:beta1:beta2:epsilon:)(&v30, &v29, &v28, &v27, &v26, &v25, &v24, &v23, *(a9 + 4), *(a9 + 8), *(a9 + 12), &v22, &v21, &v20);
  v11 = v30;
  v13 = v28;
  v12 = v29;
  v14 = v27;
  v30 = v29;
  v15 = *(v10 + *MEMORY[0x277D84308]);
  v16 = type metadata accessor for OptimizerStateDictionary();

  OptimizerStateDictionary.subscript.setter(&v30, a10, v16);
  v30 = v13;

  OptimizerStateDictionary.subscript.setter(&v30, a10, v16);
  if (v14 && *(a9 + 72))
  {
    v30 = v14;

    OptimizerStateDictionary.subscript.setter(&v30, a10, v16);
  }

  v30 = v11;
  sub_25BAC481C(&v30);
  v30 = v14;
  sub_25BACE994(&v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25BCBAE70;
  *(inited + 32) = v13;
  *(inited + 40) = v12;

  sub_25BACEA3C(inited);

  swift_setDeallocating();
  result = sub_25BAB3FD0();
  *a8 = v11;
  return result;
}

uint64_t sub_25BB236F0()
{
  v0 = sub_25BCB761C();

  if (v0 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_25BB23748(char a1)
{
  result = 0x676E696E7261656CLL;
  switch(a1)
  {
    case 1:
      result = 0x3161746562;
      break;
    case 2:
      result = 0x3261746562;
      break;
    case 3:
      result = 0x6E6F6C69737065;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0x746E656964617267;
      break;
    case 7:
      result = 0x6D6F4D7473726966;
      break;
    case 8:
      result = 0x6F4D646E6F636573;
      break;
    case 9:
      result = 0xD000000000000014;
      break;
    case 10:
      result = 0x6F69746172657469;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25BB238A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25BB2391C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_25BB23988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25BB239F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25BB23A68@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  result = sub_25BB236F0();
  *a3 = result;
  return result;
}

unint64_t sub_25BB23AB8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_25BB238A0(*v1);
}

uint64_t sub_25BB23AC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  result = sub_25BB2373C(a1, a2, *(a3 + 16), *(a3 + 24));
  *a4 = result;
  return result;
}

uint64_t sub_25BB23AF4@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  result = sub_25BB23740();
  *a2 = result;
  return result;
}

uint64_t sub_25BB23B24(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_25BB23B78(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

void Adam.init(from:)()
{
  OUTLINED_FUNCTION_115_0();
  v2 = v1;
  v51 = v3;
  type metadata accessor for Adam.CodingKeys();
  OUTLINED_FUNCTION_42_1();
  swift_getWitnessTable();
  v52 = OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_2(v52);
  v50 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v7);
  v9 = &v41 - v8;
  v11 = v2[3];
  v10 = v2[4];
  v54 = v2;
  __swift_project_boxed_opaque_existential_1(v2, v11);
  v53 = v9;
  OUTLINED_FUNCTION_35_1();
  sub_25BCB7B2C();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v54);
  }

  else
  {
    v12 = v51;
    v13 = v50;
    LOBYTE(v56) = 0;
    OUTLINED_FUNCTION_76_0();
    v15 = v14;
    OUTLINED_FUNCTION_16_10(10);
    v16 = sub_25BCB769C();
    OUTLINED_FUNCTION_16_10(1);
    sub_25BCB768C();
    v18 = v17;
    OUTLINED_FUNCTION_16_10(2);
    sub_25BCB768C();
    v20 = v19;
    OUTLINED_FUNCTION_16_10(3);
    sub_25BCB768C();
    v22 = v21;
    OUTLINED_FUNCTION_16_10(6);
    sub_25BCB768C();
    v24 = v23;
    OUTLINED_FUNCTION_94_0(5);
    sub_25BB27868();
    OUTLINED_FUNCTION_107_1();
    OUTLINED_FUNCTION_87_0();
    v49 = v16;
    v48 = BYTE4(v56);
    v25 = v56;
    OUTLINED_FUNCTION_94_0(4);
    sub_25BB278BC();
    OUTLINED_FUNCTION_107_1();
    OUTLINED_FUNCTION_87_0();
    v43 = v25;
    v46 = v56;
    v45 = v58;
    v44 = v57;
    OUTLINED_FUNCTION_73_0();
    type metadata accessor for OptimizerStateDictionary();
    OUTLINED_FUNCTION_94_0(7);
    OUTLINED_FUNCTION_10_6();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_107_1();
    v47 = v26;
    OUTLINED_FUNCTION_37_1();
    sub_25BCB76AC();
    v27 = v56;
    OUTLINED_FUNCTION_94_0(8);
    OUTLINED_FUNCTION_107_1();
    OUTLINED_FUNCTION_37_1();
    sub_25BCB76AC();
    v42 = v56;
    v73 = 9;
    OUTLINED_FUNCTION_37_1();
    sub_25BCB765C();
    v28 = v43 | (v48 << 32);
    v29 = *(v13 + 8);
    v30 = v44 | (v45 << 32);
    v31 = OUTLINED_FUNCTION_14_9();
    v32(v31);
    v33 = v74;
    v50 = v74;

    v55[0] = __PAIR64__(v18, v15);
    v55[1] = __PAIR64__(v22, v20);
    v55[2] = v46;
    v53 = HIDWORD(v30);
    BYTE4(v55[3]) = BYTE4(v30);
    LODWORD(v55[3]) = v30;
    OUTLINED_FUNCTION_99_0();
    *(&v55[3] + 5) = v34;
    HIBYTE(v55[3]) = v77;
    v48 = v28;
    v52 = HIDWORD(v28);
    BYTE4(v55[4]) = BYTE4(v28);
    LODWORD(v55[4]) = v28;
    *(&v55[4] + 5) = v75;
    HIBYTE(v55[4]) = v76;
    LODWORD(v55[5]) = v24;
    v35 = v49;
    v55[6] = v49;
    v55[7] = v27;
    v36 = v42;
    v55[8] = v42;
    v55[9] = v33;
    memcpy(v12, v55, 0x50uLL);
    OUTLINED_FUNCTION_73_0();
    v37 = type metadata accessor for Adam();
    OUTLINED_FUNCTION_69_0(v37);
    v39 = v38;
    (*(v38 + 16))(&v56, v55, v33);
    __swift_destroy_boxed_opaque_existential_1(v54);
    v56 = __PAIR64__(v18, v15);
    v57 = v20;
    v58 = v22;
    v59 = v46;
    v61 = v53;
    v60 = v30;
    OUTLINED_FUNCTION_99_0();
    v62 = v40;
    v63 = v77;
    v65 = v52;
    v64 = v48;
    v66 = v75;
    v67 = v76;
    v68 = v24;
    v69 = v35;
    v70 = v27;
    v71 = v36;
    v72 = v50;
    (*(v39 + 8))(&v56, v33);
  }

  OUTLINED_FUNCTION_118_0();
}

void Adam.encode(to:)()
{
  OUTLINED_FUNCTION_115_0();
  v41 = v1;
  v3 = v2;
  v5 = *(v4 + 24);
  v33 = *(v4 + 16);
  v34 = v5;
  v6 = type metadata accessor for Adam.CodingKeys();
  OUTLINED_FUNCTION_42_1();
  swift_getWitnessTable();
  v7 = OUTLINED_FUNCTION_110_0();
  OUTLINED_FUNCTION_2(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v12);
  v14 = &v29 - v13;
  v16 = *v0;
  v15 = v0[1];
  v18 = v0[2];
  v17 = v0[3];
  v19 = *(v0 + 2);
  v38 = *(v0 + 28);
  v39 = v19;
  v37 = v0[6];
  v36 = *(v0 + 36);
  v35 = v0[8];
  v20 = v0[10];
  v21 = *(v0 + 7);
  v40 = *(v0 + 6);
  v22 = *(v0 + 9);
  v31 = *(v0 + 8);
  v32 = v21;
  v30 = v22;
  v23 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  OUTLINED_FUNCTION_60_0();
  LOBYTE(v43) = 0;
  v24 = v41;
  sub_25BCB777C();
  if (v24)
  {
    (*(v9 + 8))(v14, v6);
  }

  else
  {
    v26 = v37;
    v25 = v38;
    v27 = v39;
    v28 = v36;
    LOBYTE(v43) = 10;
    OUTLINED_FUNCTION_39_4();
    sub_25BCB778C();
    OUTLINED_FUNCTION_59_0(1);
    OUTLINED_FUNCTION_40_3();
    sub_25BCB777C();
    v41 = v9;
    OUTLINED_FUNCTION_59_0(2);
    OUTLINED_FUNCTION_40_3();
    sub_25BCB777C();
    OUTLINED_FUNCTION_59_0(3);
    OUTLINED_FUNCTION_40_3();
    sub_25BCB777C();
    v43 = v27;
    v44 = v26;
    v45 = (v26 | (v25 << 32)) >> 32;
    v42 = 4;
    sub_25BB2797C();
    OUTLINED_FUNCTION_34_3();
    OUTLINED_FUNCTION_40_3();
    sub_25BCB773C();
    BYTE4(v43) = (v35 | (v28 << 32)) >> 32;
    LODWORD(v43) = v35;
    v42 = 5;
    sub_25BB27928();
    OUTLINED_FUNCTION_34_3();
    OUTLINED_FUNCTION_40_3();
    sub_25BCB773C();
    OUTLINED_FUNCTION_59_0(6);
    OUTLINED_FUNCTION_40_3();
    sub_25BCB777C();
    v43 = v32;
    v42 = 7;
    type metadata accessor for OptimizerStateDictionary();
    sub_25BCB617C();
    OUTLINED_FUNCTION_12_5();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_34_3();
    OUTLINED_FUNCTION_112_0();

    v43 = v31;
    v42 = 8;
    sub_25BCB617C();
    OUTLINED_FUNCTION_22_4();
    sub_25BCB779C();

    v43 = v30;
    v42 = 9;
    sub_25BCB617C();
    OUTLINED_FUNCTION_22_4();
    sub_25BCB773C();

    (*(v9 + 8))(v28, v6);
  }

  OUTLINED_FUNCTION_118_0();
}

void sub_25BB24528(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  Adam.init(from:)();
}

void AdamW.gradientClippingMode.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 28);
  OUTLINED_FUNCTION_32_3(a1);
}

uint64_t AdamW.step.getter()
{
  v1 = *(v0 + 40);
  result = v1 + 1;
  if (__OFADD__(v1, 1))
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25BB245CC@<X0>(uint64_t *a1@<X8>)
{
  result = AdamW.step.getter();
  *a1 = result;
  return result;
}

void AdamW.step.setter(uint64_t a1)
{
  if (__OFSUB__(a1, 1))
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_81_0(a1 - 1);
  }
}

uint64_t (*AdamW.step.modify(uint64_t (*result)()))()
{
  *(result + 1) = v1;
  v2 = *(v1 + 40);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *result = v4;
    return sub_25BB24668;
  }

  return result;
}

void *sub_25BB2466C(void *result, char a2)
{
  v2 = *result - 1;
  v3 = __OFSUB__(*result, 1);
  if (a2)
  {
    if (!v3)
    {
LABEL_8:
      *(result[1] + 40) = v2 & ~(v2 >> 63);
      return result;
    }

    __break(1u);
  }

  if (!v3)
  {
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t AdamW.firstMoments.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 48);

  *(v1 + 48) = v2;
  return result;
}

uint64_t AdamW.secondMoments.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 56);

  *(v1 + 56) = v2;
  return result;
}

uint64_t AdamW.maximumSecondMoments.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 64);

  *(v1 + 64) = v2;
  return result;
}

void AdamW.init(for:learningRate:beta1:beta2:usesAMSGrad:epsilon:gradientClippingMode:weightDecay:gradientScale:)()
{
  OUTLINED_FUNCTION_120_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  OUTLINED_FUNCTION_9();
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_1();
  if (v24 < 0.0)
  {
    OUTLINED_FUNCTION_66_1();
    OUTLINED_FUNCTION_7_0();
LABEL_16:
    sub_25BCB74CC();
    __break(1u);
    return;
  }

  v25 = v11 < 0.0 || v11 > 1.0;
  if (v25 || (v9 >= 0.0 ? (v26 = v9 > 1.0) : (v26 = 1), v26))
  {
    OUTLINED_FUNCTION_21();
    OUTLINED_FUNCTION_7_0();
    goto LABEL_16;
  }

  v27 = v22;
  OUTLINED_FUNCTION_106_0(v21, v22, v23);
  v30 = v29 | (v28 << 32);
  v31 = *(v17 + 16);
  v32 = OUTLINED_FUNCTION_27_3();
  v31(v32);
  v33 = OUTLINED_FUNCTION_26_5();
  OptimizerStateDictionary.init(_:)(v33, v34, v1, v35);
  v36 = OUTLINED_FUNCTION_27_3();
  v31(v36);
  v37 = OUTLINED_FUNCTION_26_5();
  OptimizerStateDictionary.init(_:)(v37, v38, v1, v39);
  if (v27)
  {
    v40 = OUTLINED_FUNCTION_27_3();
    v31(v40);
    v41 = OUTLINED_FUNCTION_26_5();
    OptimizerStateDictionary.init(_:)(v41, v42, v1, v43);
    v44 = v46;
  }

  else
  {
    v44 = 0;
  }

  *v15 = v13;
  *(v15 + 4) = v11;
  *(v15 + 8) = v9;
  *(v15 + 12) = v7;
  *(v15 + 16) = v45;
  *(v15 + 24) = v30;
  *(v15 + 28) = BYTE4(v30);
  *(v15 + 32) = v5;
  *(v15 + 36) = v3;
  *(v15 + 40) = 0;
  *(v15 + 48) = v46;
  *(v15 + 56) = v46;
  *(v15 + 64) = v44;
  *(v15 + 72) = 0;
  OUTLINED_FUNCTION_116_0();
}

void sub_25BB249C0()
{
  v1 = *(v0 + 40);
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    v4 = v3;
    v5 = *v0 * sqrtf(1.0 - powf(*(v0 + 8), v3));
    *(v0 + 72) = v5 / (1.0 - powf(*(v0 + 4), v4));
  }
}

uint64_t (*AdamW.update(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3))(_BYTE *, void)
{
  v251 = a1;
  v225 = sub_25BCB783C();
  v7 = OUTLINED_FUNCTION_2(v225);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5_4();
  v224 = v12;
  OUTLINED_FUNCTION_7();
  v13 = sub_25BCB5EFC();
  v14 = OUTLINED_FUNCTION_2(v13);
  v222 = v15;
  v223 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5_4();
  v221 = v18;
  OUTLINED_FUNCTION_7();
  v19 = sub_25BCB5EBC();
  v20 = OUTLINED_FUNCTION_2(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_50();
  v230 = v25;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_109_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_72_0();
  v246 = v3;
  sub_25BB249C0();
  v254 = a3;
  v248 = *(a3 + 16);
  sub_25BCB736C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v253 = a2;
  sub_25BCB681C();
  OUTLINED_FUNCTION_63_0();
  sub_25BACC03C();
  v243 = v28;
  if (qword_28154BE88 != -1)
  {
    OUTLINED_FUNCTION_20_2();
  }

  v29 = sub_25BCB5EEC();
  v30 = __swift_project_value_buffer(v29, qword_28154BE90);
  sub_25BCB5EAC();
  v229 = v30;
  v31 = sub_25BCB5EDC();
  sub_25BCB6D5C();
  if (sub_25BCB6E1C())
  {
    v32 = OUTLINED_FUNCTION_90();
    v33 = OUTLINED_FUNCTION_88_1(v32);
    OUTLINED_FUNCTION_111_0(&dword_25BA90000, v34, v35, v33, "Optimizing", "");
    OUTLINED_FUNCTION_89();
  }

  v36 = OUTLINED_FUNCTION_103_0(v22);
  v37(v36);
  v38 = sub_25BCB5F2C();
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  v231 = sub_25BCB5F1C();
  v43 = *(v22 + 8);
  v42 = v22 + 8;
  v41 = v43;
  v43(v4, v19);
  OUTLINED_FUNCTION_3_12();
  v44 = OUTLINED_FUNCTION_33_3();
  sub_25BAA51C8(v44, v45);
  v46 = MEMORY[0x277D84F90];
  sub_25BACC1B0(MEMORY[0x277D84F90], &unk_286D42E78, v267, v262);
  sub_25BA9C2C8(v260);
  v268 = v262[0];
  v47 = *(v246 + 28);
  OUTLINED_FUNCTION_67_1();
  if (!v52 & v51)
  {
    v52 = 0;
  }

  else
  {
    v52 = v49 == 0x200000000;
  }

  v256 = v9;
  if (v52)
  {
    v53 = *(v50 + 16);
    if ((v53 & 0x100000000) != 0)
    {
      *v260 = v253;
      MEMORY[0x28223BE20](v48);
      *(&v217 - 2) = v254;
      OUTLINED_FUNCTION_8_10();
      *(&v217 - 1) = swift_getWitnessTable();
      v58 = sub_25BCB68CC();
      OUTLINED_FUNCTION_1_1();
      WitnessTable = swift_getWitnessTable();
      sub_25BAB2B20(sub_25BB28258, (&v217 - 4), v58, &type metadata for Tensor, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v60);
      v250 = 0;
      v260[0] = 13;
      Tensor.init(stacking:alongAxis:scalarType:)();
      *v260 = v267[0];
      v265[0] = &unk_286D42EA0;
      Tensor.reshaped(to:)(v265, v262);

      v265[0] = v262[0];
      Tensor.sum(squeezingAxes:)(v260);

      v61 = *v260;
      OUTLINED_FUNCTION_3_12();
      v62 = *(*(v61 + 16) + 160);
      v63 = OUTLINED_FUNCTION_33_3();
      sub_25BAA51C8(v63, v64);
      v266 = v46;
      LOBYTE(v264) = v62;
      v65 = OUTLINED_FUNCTION_36_2();
      sub_25BAA51C8(v65, v66);
      Tensor.init(shape:coercingScalars:scalarType:on:)(&v266, &unk_286D42EF0, &v264, v262, v265);
      sub_25BA9C2C8(v267);
      sub_25BA9C2C8(v260);
      *v260 = v61;
      v267[0] = v265[0];
      OUTLINED_FUNCTION_33_3();
      static Tensor.* infix(_:_:)();
      sqrt(_:)(v260, v262);

      v57 = *v260;
    }

    else
    {
      OUTLINED_FUNCTION_3_12();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
      v54 = OUTLINED_FUNCTION_56();
      *(v54 + 16) = xmmword_25BCBAE50;
      *(v54 + 32) = v53;
      v55 = OUTLINED_FUNCTION_33_3();
      sub_25BAA51C8(v55, v56);
      sub_25BACC1B0(MEMORY[0x277D84F90], v54, v267, v262);
      sub_25BA9C2C8(v260);
      v57 = v262[0];

      v250 = 0;
    }

    v268 = v57;
  }

  else
  {
    v250 = 0;
  }

  v67 = sub_25BCB681C();
  OUTLINED_FUNCTION_63_0();
  sub_25BAA1B64();
  v266 = v68;
  v69 = v243;
  if (v67 < 0)
  {
    __break(1u);
LABEL_64:

    __break(1u);
LABEL_65:
    OUTLINED_FUNCTION_21();
    v217 = 329;
    OUTLINED_FUNCTION_7_0();
LABEL_67:
    sub_25BCB74CC();
    __break(1u);
LABEL_68:
    memset(v260, 0, sizeof(v260));
    v261 = 22;
    OUTLINED_FUNCTION_52_1();
    sub_25BADDD28();
  }

  v227 = v42;
  v228 = v19;
  v226 = v41;
  if (v67)
  {
    v70 = 0;
    v220 = *MEMORY[0x277D84660];
    v218 = (v256 + 1);
    v219 = (v256 + 13);
    v255 = xmmword_25BCBAE50;
    v71 = v246;
    v247 = v67;
    while (1)
    {
      sub_25BCB690C();
      v72 = *&v260[8];
      v73 = *v260;

      v256 = &v217;
      MEMORY[0x28223BE20](v74);
      v75 = &v217 - 10;
      v76 = v254;
      *(&v217 - 8) = v254;
      OUTLINED_FUNCTION_8_10();
      *(&v217 - 7) = swift_getWitnessTable();
      *(&v217 - 6) = v72;
      *(&v217 - 5) = v71;
      *(&v217 - 4) = &v268;
      *(&v217 - 3) = v73;
      *(&v217 - 2) = &v266;

      v77 = sub_25BCB6FCC();
      if (v78)
      {
        v79 = swift_modifyAtWritableKeyPath();
        v81 = v79;
        if ((*(v80 + 8) & 1) == 0)
        {
          v82 = v80;
          v242 = v79;
          v83 = *(v71 + 36);
          v244 = v80;
          if (v83 == 1.0)
          {

            v84 = v72;
          }

          else
          {
            OUTLINED_FUNCTION_3_12();
            v91 = *(*(v72 + 16) + 160);
            v92 = OUTLINED_FUNCTION_33_3();
            sub_25BAA51C8(v92, v93);
            v263 = MEMORY[0x277D84F90];
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
            v94 = OUTLINED_FUNCTION_56();
            OUTLINED_FUNCTION_18_6(v94);
            *(v95 + 32) = v83;
            LOBYTE(v259) = v91;
            v96 = OUTLINED_FUNCTION_36_2();
            sub_25BAA51C8(v96, v97);
            OUTLINED_FUNCTION_53_2();
            sub_25BA9C2C8(v267);
            sub_25BA9C2C8(v260);
            v267[0] = v72;
            v262[0] = v264;

            OUTLINED_FUNCTION_36_2();
            static Tensor.* infix(_:_:)();
            v82 = v244;

            v84 = *v260;
          }

          v98 = *(v71 + 28);
          OUTLINED_FUNCTION_64_1();
          v243 = v69;
          if (!v52 & v51)
          {
            *v260 = v84;
          }

          else
          {
            v100 = *(v71 + 16);
            v101 = *(v71 + 24) | (v99 << 32);
            if (HIDWORD(v101))
            {
              v102 = v268;
              OUTLINED_FUNCTION_3_12();
              if (HIDWORD(v101) == 1)
              {
                v103 = *(*(v84 + 16) + 160);
                v104 = OUTLINED_FUNCTION_33_3();
                sub_25BAA51C8(v104, v105);
                v263 = MEMORY[0x277D84F90];
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
                v106 = OUTLINED_FUNCTION_56();
                OUTLINED_FUNCTION_18_6(v106);
                *(v107 + 32) = v100;
                LOBYTE(v259) = v103;
                v108 = OUTLINED_FUNCTION_36_2();
                sub_25BAA51C8(v108, v109);

                OUTLINED_FUNCTION_53_2();
                sub_25BA9C2C8(v267);
                sub_25BA9C2C8(v260);
                v110 = v264;
                v267[0] = v84;
                Tensor.squared()();
                v262[0] = *v260;
                v264 = &unk_286D42F18;
                Tensor.reshaped(to:)(&v264, v267);

                v249 = v102;
                v262[0] = v267[0];
                Tensor.sum(squeezingAxes:)(&v264);

                v76 = v254;

                sqrt(_:)(v260, &v264);

                v111 = *v260;
                v267[0] = v84;
                *v260 = v110;
                v262[0] = v111;
                v264 = v110;
                max(_:_:)();
                static Tensor./ infix(_:_:)();

                OUTLINED_FUNCTION_36_2();
                static Tensor.* infix(_:_:)();
              }

              else
              {
                v112 = *(*(v84 + 16) + 160);
                v113 = OUTLINED_FUNCTION_33_3();
                sub_25BAA51C8(v113, v114);
                v263 = MEMORY[0x277D84F90];
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
                v115 = OUTLINED_FUNCTION_56();
                OUTLINED_FUNCTION_18_6(v115);
                *(v116 + 32) = v101;
                LOBYTE(v259) = v112;
                v117 = OUTLINED_FUNCTION_36_2();
                sub_25BAA51C8(v117, v118);

                OUTLINED_FUNCTION_53_2();
                sub_25BA9C2C8(v267);
                sub_25BA9C2C8(v260);
                *v260 = v84;
                v267[0] = v264;
                OUTLINED_FUNCTION_33_3();
                static Tensor.* infix(_:_:)();
                *v260 = v102;
                LOBYTE(v264) = *(*(v84 + 16) + 160);
                v119 = v224;
                v120 = v225;
                (*v219)(v224, v220, v225);
                Tensor.cast(to:roundingRule:)();
                v121 = v119;
                v76 = v254;
                (*v218)(v121, v120);
                v264 = v267[0];
                static Tensor./ infix(_:_:)();
              }

              v71 = v246;
              v82 = v244;
            }

            else
            {
              v267[0] = v84;
              Tensor.clamped(to:)(v260, *&v100, *(&v100 + 1));
              v82 = v244;

              v71 = v246;
            }
          }

          v122 = *(*v82 + 32);
          if ((~v122 & 0xF000000000000007) == 0)
          {
            goto LABEL_65;
          }

          v240 = v72;
          if ((v122 & 0x8000000000000000) == 0)
          {
            OUTLINED_FUNCTION_24();
            OUTLINED_FUNCTION_7_0();
            goto LABEL_67;
          }

          v234 = v70;
          v123 = *v260;
          v124 = v122 & 0x7FFFFFFFFFFFFFFFLL;
          v125 = *(v71 + 40);
          v249 = *v260;
          v241 = v122;
          if (v125)
          {
            sub_25BAB3020(v122);
            v126 = *(v76 + 24);
            v127 = OUTLINED_FUNCTION_91_0();

            v128 = v127;
            OptimizerStateDictionary.subscript.getter(v73, v127);
            v129 = *v260;
            if (!*v260)
            {
              goto LABEL_68;
            }

            v130 = v246;
            v123 = v249;
          }

          else
          {
            *v260 = *(v71 + 48);
            sub_25BAB3020(v122);
            v131 = *(v76 + 24);
            v128 = OUTLINED_FUNCTION_91_0();

            OptimizerStateDictionary.subscript.getter(sub_25BB28290, v128, v267);
            v130 = v71;
            v129 = v267[0];
          }

          v233 = v128;
          *v260 = *(v130 + 56);
          OUTLINED_FUNCTION_91_0();
          v232 = v124;
          OptimizerStateDictionary.subscript.getter(sub_25BB28290, v128, &v264);
          v132 = *(v130 + 4);
          OUTLINED_FUNCTION_3_12();
          v133 = *(*(v123 + 16) + 160);
          v134 = OUTLINED_FUNCTION_33_3();
          sub_25BAA51C8(v134, v135);
          v136 = MEMORY[0x277D84F90];
          v259 = MEMORY[0x277D84F90];
          v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
          v138 = OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_18_6(v138);
          *(v139 + 32) = 1.0 - v132;
          LOBYTE(v258) = v133;
          v140 = OUTLINED_FUNCTION_36_2();
          sub_25BAA51C8(v140, v141);
          OUTLINED_FUNCTION_25_4();
          sub_25BA9C2C8(v267);
          sub_25BA9C2C8(v260);
          v142 = v263;
          OUTLINED_FUNCTION_3_12();
          v143 = *(*(v123 + 16) + 160);
          v144 = OUTLINED_FUNCTION_33_3();
          sub_25BAA51C8(v144, v145);
          v259 = v136;
          v146 = OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_18_6(v146);
          *(v147 + 32) = v132;
          LOBYTE(v258) = v143;
          v148 = OUTLINED_FUNCTION_36_2();
          sub_25BAA51C8(v148, v149);
          OUTLINED_FUNCTION_25_4();
          sub_25BA9C2C8(v267);
          sub_25BA9C2C8(v260);
          v238 = v263;
          *v260 = v263;
          v267[0] = v129;

          OUTLINED_FUNCTION_33_3();
          static Tensor.* infix(_:_:)();

          v239 = v142;
          *v260 = v142;
          v267[0] = v123;
          OUTLINED_FUNCTION_33_3();
          static Tensor.* infix(_:_:)();
          static Tensor.+ infix(_:_:)();

          v245 = *v260;
          v150 = *(v130 + 8);
          OUTLINED_FUNCTION_3_12();
          v151 = *(*(v123 + 16) + 160);
          v152 = OUTLINED_FUNCTION_33_3();
          sub_25BAA51C8(v152, v153);
          v259 = v136;
          v154 = OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_18_6(v154);
          *(v155 + 32) = 1.0 - v150;
          LOBYTE(v258) = v151;
          v156 = OUTLINED_FUNCTION_36_2();
          sub_25BAA51C8(v156, v157);
          OUTLINED_FUNCTION_25_4();
          sub_25BA9C2C8(v267);
          sub_25BA9C2C8(v260);
          v158 = v263;
          OUTLINED_FUNCTION_3_12();
          v159 = *(*(v123 + 16) + 160);
          v160 = OUTLINED_FUNCTION_33_3();
          sub_25BAA51C8(v160, v161);
          v259 = v136;
          v237 = v137;
          v162 = OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_18_6(v162);
          *(v163 + 32) = v150;
          LOBYTE(v258) = v159;
          v164 = OUTLINED_FUNCTION_36_2();
          sub_25BAA51C8(v164, v165);
          OUTLINED_FUNCTION_25_4();
          sub_25BA9C2C8(v267);
          sub_25BA9C2C8(v260);
          v235 = v263;
          *v260 = v263;
          v267[0] = v264;

          OUTLINED_FUNCTION_33_3();
          static Tensor.* infix(_:_:)();

          v236 = v158;
          *v260 = v158;
          v267[0] = v123;
          Tensor.squared()();
          static Tensor.* infix(_:_:)();

          static Tensor.+ infix(_:_:)();

          v166 = v130;
          v167 = v123;
          v72 = v240;
          v168 = v233;
          v70 = v234;
          if (*(v130 + 64))
          {
            v267[0] = *(v130 + 64);
            OptimizerStateDictionary.subscript.getter(v73, v233);
            if (*v260)
            {
              v267[0] = *v260;
              v262[0] = v264;

              OUTLINED_FUNCTION_36_2();
              max(_:_:)();

              v166 = v246;

              v264 = *v260;
              if (*(v166 + 64))
              {

                OptimizerStateDictionary.subscript.setter(v260, v73, v168);
              }

              v167 = v249;
            }
          }

          v169 = v245;
          *v260 = v245;

          OptimizerStateDictionary.subscript.setter(v260, v73, v168);
          *v260 = v264;

          OptimizerStateDictionary.subscript.setter(v260, v73, v168);
          v170 = *(v166 + 12);
          OUTLINED_FUNCTION_3_12();
          v171 = *(*(v167 + 16) + 160);
          v172 = OUTLINED_FUNCTION_33_3();
          sub_25BAA51C8(v172, v173);
          v259 = MEMORY[0x277D84F90];
          v174 = OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_18_6(v174);
          *(v175 + 32) = v170;
          LOBYTE(v258) = v171;
          v176 = OUTLINED_FUNCTION_36_2();
          sub_25BAA51C8(v176, v177);
          OUTLINED_FUNCTION_25_4();
          sub_25BA9C2C8(v267);
          sub_25BA9C2C8(v260);
          v178 = v263;
          sub_25BB25FB8(v169, *(v166 + 72));
          v267[0] = v264;

          sqrt(_:)(v262, v267);

          v267[0] = v178;
          static Tensor.+ infix(_:_:)();

          static Tensor./ infix(_:_:)();

          v179 = *(v166 + 32);
          if (v179 == 0.0)
          {
            v180 = v263;
            v181 = v232;
          }

          else
          {
            v182 = v179 * *v166;
            OUTLINED_FUNCTION_3_12();
            v183 = *(*(v167 + 16) + 160);
            v184 = OUTLINED_FUNCTION_33_3();
            sub_25BAA51C8(v184, v185);
            v258 = MEMORY[0x277D84F90];
            v186 = OUTLINED_FUNCTION_56();
            *(v186 + 16) = v255;
            *(v186 + 32) = v182;
            v257 = v183;
            v187 = OUTLINED_FUNCTION_36_2();
            sub_25BAA51C8(v187, v188);
            Tensor.init(shape:coercingScalars:scalarType:on:)(&v258, v186, &v257, v262, &v259);
            sub_25BA9C2C8(v267);
            sub_25BA9C2C8(v260);
            v267[0] = v259;
            v181 = v232;
            v262[0] = v232;
            OUTLINED_FUNCTION_36_2();
            static Tensor.* infix(_:_:)();
            v262[0] = v263;
            v259 = *v260;
            static Tensor.+ infix(_:_:)();

            v180 = v267[0];
            v263 = v267[0];
          }

          v267[0] = v181;
          v262[0] = v180;

          OUTLINED_FUNCTION_36_2();
          static Tensor.- infix(_:_:)();

          v189 = *v260;
          v190 = v266;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_45_3();
            v190 = v199;
          }

          v67 = v247;
          v192 = *(v190 + 16);
          v191 = *(v190 + 24);
          v75 = (v192 + 1);
          if (v192 >= v191 >> 1)
          {
            OUTLINED_FUNCTION_13_5(v191);
            sub_25BAA1B64();
            v190 = v200;
          }

          *(v190 + 16) = v75;
          *(v190 + 8 * v192 + 32) = v189;
          v266 = v190;
          *v260 = v189;

          Parameter.wrappedValue.setter(v260);

          sub_25BAB310C(v241);

          v71 = v246;
          v81 = v242;
          v69 = v243;
        }

        v81(v265, 0);
      }

      else
      {
        MEMORY[0x28223BE20](v77);
        OUTLINED_FUNCTION_70_1();
        v86 = *(v85 + 24);
        v87 = v248;
        *(v88 - 48) = v248;
        *(v88 - 40) = v86;
        *(v88 - 32) = v89;
        *(v88 - 24) = sub_25BACC670;
        *(v88 - 16) = v75;
        v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3EC8, qword_25BCC3F80);
        v75 = v250;
        sub_25BAB2F30(v251, sub_25BACC6E0, v73, v87, v90);
        if (v75)
        {
          goto LABEL_64;
        }

        v250 = 0;

        v67 = v247;
      }

      v193 = *(v72 + 16);
      v194 = sub_25BAC4018();
      v196 = *(v69 + 16);
      v195 = *(v69 + 24);
      OUTLINED_FUNCTION_95_0();
      if (v51)
      {
        OUTLINED_FUNCTION_13_5(v197);
        sub_25BACC03C();
        v69 = v198;
      }

      ++v70;

      *(v69 + 16) = v75;
      *(v69 + 8 * v196 + 32) = v194;
      if (v67 == v70)
      {
        goto LABEL_58;
      }
    }
  }

  v71 = v246;
LABEL_58:
  v201 = sub_25BCB5EDC();
  v202 = v230;
  sub_25BCB5F0C();
  v203 = sub_25BCB6D4C();
  v204 = sub_25BCB6E1C();
  v205 = v228;
  if (v204)
  {
    v243 = v69;

    sub_25BCB5F3C();

    v206 = OUTLINED_FUNCTION_48_2();
    if (v207(v206) != *MEMORY[0x277D85B00])
    {
      v208 = OUTLINED_FUNCTION_74_0();
      v209(v208);
    }

    *OUTLINED_FUNCTION_90() = 0;
    v210 = sub_25BCB5E9C();
    OUTLINED_FUNCTION_61_0(&dword_25BA90000, v211, v203, v210, "Optimizing");
    OUTLINED_FUNCTION_89();
  }

  v226(v202, v205);
  v212 = v266;

  v213 = sub_25BACED8C();
  *v260 = 1;
  *&v260[8] = v213;
  Array<A>.resolve(descriptor:)(v260, v212);

  OUTLINED_FUNCTION_8_10();
  v214 = v254;
  v215 = swift_getWitnessTable();
  nullsub_1(v214, v215);
  return sub_25BA9B48C(v71, v214, v215);
}