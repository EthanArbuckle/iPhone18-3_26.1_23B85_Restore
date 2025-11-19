uint64_t sub_25BB25F7C(uint64_t a1)
{
  v2 = a1;

  return Tensor.init(zerosLike:)(&v2);
}

uint64_t sub_25BB25FB8(uint64_t a1, float a2)
{
  v23[0] = a1;
  Tensor.scalarType.getter();
  (*(v4 + 32))(v13);
  v5 = LOBYTE(v13[0]);
  if (sub_25BAA80BC(0xAu, &unk_286D42270) && sub_25BAA80BC(v5, &unk_286D427E8) || v5 == 12)
  {
    OUTLINED_FUNCTION_92_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25BCBAE50;
    *(inited + 32) = a2;
    sub_25BAA51C8(v23, v13);
    sub_25BC78BA0(MEMORY[0x277D84F90], inited, v13, &v24);
    sub_25BA9C2C8(v23);
  }

  else
  {
    v14 = MEMORY[0x277D83A90];
    v15 = &protocol witness table for Float;
    *v13 = a2;
    v23[8] = a1;
    Tensor.scalarType.getter();
    OUTLINED_FUNCTION_92_1();
    Tensor.init(coercing:scalarType:on:)(v13, v6, v7, v23, v7, v8, v9, v10, v13[0], v13[1], v13[2], v14, v15, v16, v17, v18, v19, v20, v21, v22, v23[0], v23[1]);
  }

  v23[0] = v24;
  v13[0] = a1;
  static Tensor.* infix(_:_:)();
}

uint64_t sub_25BB26124()
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

unint64_t sub_25BB26174(char a1)
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
      result = 0x6544746867696577;
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

uint64_t sub_25BB262D4(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v7 = *a2;
  v8 = *a3;
  if (*(v4 + 40))
  {
    v9 = *a3;
    v10 = *(a4 + 16);
    v11 = *(a4 + 24);
    v12 = type metadata accessor for OptimizerStateDictionary();
    OptimizerStateDictionary.subscript.getter(a1, v12);
    v13 = v67;
    if (!v67)
    {
      memset(v72, 0, 28);
      v71 = 0u;
      v70 = 0u;
      v69 = 0u;
      v68 = 0u;
      v67 = 0u;
      v72[28] = 22;
      sub_25BADDD28();
    }

    v14 = v12;
    v8 = v9;
  }

  else
  {
    *&v67 = *(v4 + 48);
    v15 = *(a4 + 16);
    v16 = *(a4 + 24);
    v14 = type metadata accessor for OptimizerStateDictionary();
    OptimizerStateDictionary.subscript.getter(sub_25BB28290, v14, v65);
    v13 = v65[0];
  }

  *&v67 = *(v4 + 56);
  type metadata accessor for OptimizerStateDictionary();
  OptimizerStateDictionary.subscript.getter(sub_25BB28290, v14, &v66);
  v17 = *(v4 + 4);
  LODWORD(v70) = 0;
  v69 = 0u;
  v68 = 0u;
  v67 = 0u;
  v18 = v14;
  v19 = *(*(v8 + 16) + 160);
  sub_25BAA51C8(&v67, v65);
  v63 = sub_25BACD7D8(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
  v20 = swift_allocObject();
  v21 = sub_25BACD7C4(v20, 1);
  *v22 = 1.0 - v17;
  v23 = nullsub_1(v21, v22);
  LOBYTE(v61) = v19;
  sub_25BAA51C8(v65, v62);
  Tensor.init(shape:coercingScalars:scalarType:on:)(&v63, v23, &v61, v62, &v64);
  sub_25BA9C2C8(v65);
  sub_25BA9C2C8(&v67);
  v24 = v64;
  LODWORD(v70) = 0;
  v69 = 0u;
  v68 = 0u;
  v67 = 0u;
  v25 = *(*(v8 + 16) + 160);
  sub_25BAA51C8(&v67, v65);
  v63 = sub_25BACD7D8(0);
  v26 = swift_allocObject();
  v27 = sub_25BACD7C4(v26, 1);
  *v28 = v17;
  v29 = nullsub_1(v27, v28);
  LOBYTE(v61) = v25;
  sub_25BAA51C8(v65, v62);
  Tensor.init(shape:coercingScalars:scalarType:on:)(&v63, v29, &v61, v62, &v64);
  sub_25BA9C2C8(v65);
  sub_25BA9C2C8(&v67);
  *&v67 = v64;
  v65[0] = v13;

  static Tensor.* infix(_:_:)();

  *&v67 = v24;
  v65[0] = v8;
  static Tensor.* infix(_:_:)();
  static Tensor.+ infix(_:_:)();

  v30 = v67;
  v31 = *(v5 + 8);
  LODWORD(v70) = 0;
  v69 = 0u;
  v68 = 0u;
  v67 = 0u;
  v32 = *(*(v8 + 16) + 160);
  sub_25BAA51C8(&v67, v65);
  v63 = sub_25BACD7D8(0);
  v33 = swift_allocObject();
  v34 = sub_25BACD7C4(v33, 1);
  *v35 = 1.0 - v31;
  v36 = nullsub_1(v34, v35);
  LOBYTE(v61) = v32;
  sub_25BAA51C8(v65, v62);
  Tensor.init(shape:coercingScalars:scalarType:on:)(&v63, v36, &v61, v62, &v64);
  sub_25BA9C2C8(v65);
  sub_25BA9C2C8(&v67);
  v37 = v64;
  LODWORD(v70) = 0;
  v69 = 0u;
  v68 = 0u;
  v67 = 0u;
  v38 = *(*(v8 + 16) + 160);
  sub_25BAA51C8(&v67, v65);
  v63 = sub_25BACD7D8(0);
  v39 = swift_allocObject();
  v40 = sub_25BACD7C4(v39, 1);
  *v41 = v31;
  v42 = nullsub_1(v40, v41);
  LOBYTE(v61) = v38;
  sub_25BAA51C8(v65, v62);
  Tensor.init(shape:coercingScalars:scalarType:on:)(&v63, v42, &v61, v62, &v64);
  sub_25BA9C2C8(v65);
  sub_25BA9C2C8(&v67);
  *&v67 = v64;
  v65[0] = v66;

  static Tensor.* infix(_:_:)();

  *&v67 = v37;
  v65[0] = v8;
  Tensor.squared()();
  static Tensor.* infix(_:_:)();

  static Tensor.+ infix(_:_:)();

  if (*(v5 + 64))
  {
    v65[0] = *(v5 + 64);
    OptimizerStateDictionary.subscript.getter(a1, v18);
    if (v67)
    {
      v65[0] = v67;
      v62[0] = v66;

      max(_:_:)();

      v66 = v67;
      if (*(v5 + 64))
      {

        OptimizerStateDictionary.subscript.setter(&v67, a1, v18);
      }
    }
  }

  *&v67 = v30;

  OptimizerStateDictionary.subscript.setter(&v67, a1, v18);
  *&v67 = v66;

  OptimizerStateDictionary.subscript.setter(&v67, a1, v18);
  v43 = *(v5 + 12);
  LODWORD(v70) = 0;
  v69 = 0u;
  v68 = 0u;
  v67 = 0u;
  v44 = *(*(v8 + 16) + 160);
  sub_25BAA51C8(&v67, v65);
  v63 = sub_25BACD7D8(0);
  v45 = swift_allocObject();
  v46 = sub_25BACD7C4(v45, 1);
  *v47 = v43;
  v48 = nullsub_1(v46, v47);
  LOBYTE(v61) = v44;
  sub_25BAA51C8(v65, v62);
  Tensor.init(shape:coercingScalars:scalarType:on:)(&v63, v48, &v61, v62, &v64);
  sub_25BA9C2C8(v65);
  sub_25BA9C2C8(&v67);
  v49 = v64;
  sub_25BB25FB8(v30, *(v5 + 72));
  v65[0] = v66;

  sqrt(_:)(v62, v65);

  v65[0] = v49;
  static Tensor.+ infix(_:_:)();

  static Tensor./ infix(_:_:)();

  v50 = *(v5 + 32);
  if (v50 == 0.0)
  {
    v51 = v64;
    v52 = v7;
  }

  else
  {
    v53 = v50 * *v5;
    LODWORD(v70) = 0;
    v69 = 0u;
    v68 = 0u;
    v67 = 0u;
    v54 = *(*(v8 + 16) + 160);
    sub_25BAA51C8(&v67, v65);
    v61 = sub_25BACD7D8(0);
    v55 = swift_allocObject();
    v56 = sub_25BACD7C4(v55, 1);
    *v57 = v53;
    v58 = nullsub_1(v56, v57);
    v60 = v54;
    sub_25BAA51C8(v65, v62);
    Tensor.init(shape:coercingScalars:scalarType:on:)(&v61, v58, &v60, v62, &v63);
    sub_25BA9C2C8(v65);
    sub_25BA9C2C8(&v67);
    v65[0] = v63;
    v52 = v7;
    v62[0] = v7;
    static Tensor.* infix(_:_:)();
    v62[0] = v64;
    v63 = v67;
    static Tensor.+ infix(_:_:)();

    v51 = v65[0];
  }

  *&v67 = v52;
  v65[0] = v51;

  static Tensor.- infix(_:_:)();
}

uint64_t sub_25BB26BBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25BB26C30(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_25BB26C9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25BB26D0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25BB26D7C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  result = sub_25BB26124();
  *a3 = result;
  return result;
}

uint64_t sub_25BB26DCC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void, void, void)@<X2>, uint64_t *a3@<X8>)
{
  result = a2(*v3, *(a1 + 16), *(a1 + 24));
  *a3 = result;
  a3[1] = v6;
  return result;
}

unint64_t sub_25BB26E04(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_25BB262CC(*v1);
}

uint64_t sub_25BB26E10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  result = sub_25BB26170(a1, a2, *(a3 + 16), *(a3 + 24));
  *a4 = result;
  return result;
}

uint64_t sub_25BB26E6C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_25BB26EC0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

void AdamW.init(from:)()
{
  OUTLINED_FUNCTION_119_0();
  v2 = v1;
  v4 = v3;
  v48 = v5;
  type metadata accessor for AdamW.CodingKeys();
  OUTLINED_FUNCTION_44_1();
  swift_getWitnessTable();
  v49 = OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_2(v49);
  v47 = v6;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - v10;
  v12 = v4[4];
  v71 = v4;
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  v50 = v11;
  OUTLINED_FUNCTION_35_1();
  sub_25BCB7B2C();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  else
  {
    v13 = v48;
    v46 = v2;
    v14 = v47;
    LOBYTE(v52) = 0;
    OUTLINED_FUNCTION_76_0();
    v16 = v15;
    OUTLINED_FUNCTION_15_6(10);
    v17 = sub_25BCB769C();
    OUTLINED_FUNCTION_15_6(1);
    sub_25BCB768C();
    v19 = v18;
    OUTLINED_FUNCTION_15_6(2);
    sub_25BCB768C();
    v21 = v20;
    OUTLINED_FUNCTION_15_6(3);
    sub_25BCB768C();
    v23 = v22;
    OUTLINED_FUNCTION_15_6(6);
    sub_25BCB768C();
    v25 = v24;
    OUTLINED_FUNCTION_15_6(5);
    sub_25BCB768C();
    v27 = v26;
    LOBYTE(v51[0]) = 4;
    sub_25BB278BC();
    OUTLINED_FUNCTION_87_0();
    v44 = v52;
    v43 = v54;
    v42 = v53;
    OUTLINED_FUNCTION_108_0();
    v28 = type metadata accessor for OptimizerStateDictionary();
    LOBYTE(v51[0]) = 7;
    OUTLINED_FUNCTION_10_6();
    swift_getWitnessTable();
    v45 = v28;
    sub_25BCB76AC();
    v29 = v52;
    LOBYTE(v51[0]) = 8;
    OUTLINED_FUNCTION_37_1();
    sub_25BCB76AC();
    v41 = v52;
    v67 = 9;
    OUTLINED_FUNCTION_37_1();
    sub_25BCB765C();
    v30 = v42 | (v43 << 32);
    v31 = *(v14 + 8);
    v32 = OUTLINED_FUNCTION_14_9();
    v33(v32);
    v34 = v68;
    v49 = v68;

    v51[0] = __PAIR64__(v19, v16);
    v51[1] = __PAIR64__(v23, v21);
    v35 = v44;
    v51[2] = v44;
    v50 = HIDWORD(v30);
    BYTE4(v51[3]) = BYTE4(v30);
    LODWORD(v51[3]) = v30;
    *(&v51[3] + 5) = v69;
    HIBYTE(v51[3]) = v70;
    v51[4] = __PAIR64__(v25, v27);
    v51[5] = v17;
    v51[6] = v29;
    v36 = v41;
    v51[7] = v41;
    v51[8] = v34;
    LODWORD(v51[9]) = 0;
    memcpy(v13, v51, 0x4CuLL);
    OUTLINED_FUNCTION_108_0();
    v37 = type metadata accessor for AdamW();
    OUTLINED_FUNCTION_69_0(v37);
    v39 = v38;
    (*(v38 + 16))(&v52, v51, v34);
    __swift_destroy_boxed_opaque_existential_1(v71);
    v52 = __PAIR64__(v19, v16);
    v53 = v21;
    v54 = v23;
    v55 = v35;
    v57 = v50;
    v56 = v30;
    v58 = v69;
    v59 = v70;
    v60 = v27;
    v61 = v25;
    v62 = v17;
    v63 = v29;
    v64 = v36;
    v65 = v49;
    v66 = 0;
    (*(v39 + 8))(&v52, v34);
  }

  OUTLINED_FUNCTION_117_1();
}

void AdamW.encode(to:)()
{
  OUTLINED_FUNCTION_119_0();
  v35 = v1;
  v3 = v2;
  OUTLINED_FUNCTION_93_1(v2, v4);
  v5 = type metadata accessor for AdamW.CodingKeys();
  OUTLINED_FUNCTION_44_1();
  swift_getWitnessTable();
  v6 = OUTLINED_FUNCTION_110_0();
  OUTLINED_FUNCTION_2(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - v12;
  v15 = *v0;
  v14 = v0[1];
  v17 = v0[2];
  v16 = v0[3];
  v18 = *(v0 + 2);
  v32 = *(v0 + 28);
  v33 = v18;
  v31 = v0[6];
  v19 = v0[8];
  v20 = v0[9];
  v21 = *(v0 + 6);
  v34 = *(v0 + 5);
  v22 = *(v0 + 8);
  v29 = *(v0 + 7);
  v30 = v21;
  v28 = v22;
  v23 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  OUTLINED_FUNCTION_60_0();
  LOBYTE(v36) = 0;
  v24 = v35;
  sub_25BCB777C();
  if (v24)
  {
    (*(v8 + 8))(v13, v5);
  }

  else
  {
    v25 = v31;
    v26 = v32;
    v27 = v33;
    LOBYTE(v36) = 10;
    OUTLINED_FUNCTION_39_4();
    sub_25BCB778C();
    OUTLINED_FUNCTION_79_0(1);
    OUTLINED_FUNCTION_40_3();
    sub_25BCB777C();
    OUTLINED_FUNCTION_79_0(2);
    OUTLINED_FUNCTION_40_3();
    sub_25BCB777C();
    OUTLINED_FUNCTION_79_0(3);
    OUTLINED_FUNCTION_40_3();
    sub_25BCB777C();
    OUTLINED_FUNCTION_79_0(6);
    OUTLINED_FUNCTION_40_3();
    sub_25BCB777C();
    OUTLINED_FUNCTION_79_0(5);
    OUTLINED_FUNCTION_40_3();
    sub_25BCB777C();
    v36 = v27;
    v37 = v25;
    v38 = (v25 | (v26 << 32)) >> 32;
    sub_25BB2797C();
    OUTLINED_FUNCTION_39_4();
    sub_25BCB773C();
    v36 = v30;
    type metadata accessor for OptimizerStateDictionary();
    sub_25BCB617C();
    OUTLINED_FUNCTION_12_5();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_58_1();
    OUTLINED_FUNCTION_112_0();

    v36 = v29;
    sub_25BCB617C();
    OUTLINED_FUNCTION_22_4();
    sub_25BCB779C();

    v36 = v28;
    sub_25BCB617C();
    OUTLINED_FUNCTION_22_4();
    sub_25BCB773C();

    (*(v8 + 8))(v27, v5);
  }

  OUTLINED_FUNCTION_117_1();
}

void sub_25BB277B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  AdamW.init(from:)();
}

uint64_t sub_25BB27830(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_25BC9ACB8(a1);
}

unint64_t sub_25BB27868()
{
  result = qword_27FBB4240;
  if (!qword_27FBB4240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4240);
  }

  return result;
}

unint64_t sub_25BB278BC()
{
  result = qword_27FBB4248;
  if (!qword_27FBB4248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4248);
  }

  return result;
}

unint64_t sub_25BB27928()
{
  result = qword_27FBB4250;
  if (!qword_27FBB4250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4250);
  }

  return result;
}

unint64_t sub_25BB2797C()
{
  result = qword_27FBB4258[0];
  if (!qword_27FBB4258[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FBB4258);
  }

  return result;
}

uint64_t sub_25BB27A64(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB27AA0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB27ADC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB27B18()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_25BB27B70(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 48);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25BB27BB0(uint64_t result, int a2, int a3)
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
      *(result + 48) = (a2 - 1);
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

uint64_t sub_25BB27BFC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25BB27C40(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 56);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25BB27C80(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25BB27CD4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25BB27D18(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 76))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 48);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25BB27D58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 76) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 76) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25BB27DAC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
    if (a2 + 10 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 10) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_25BB27E34(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DotNodeShape(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_25BB27F88(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_25BB28374()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_20_3();
  v4 = v3 & 0xC000000000000001;
  v5 = OUTLINED_FUNCTION_3_2();
  sub_25BAB4D78(v5, v6, v0);
  if (v4)
  {
    OUTLINED_FUNCTION_30_5();
  }

  else
  {
    v7 = *(v0 + 32);
  }

  v8 = v7;
  v9 = OUTLINED_FUNCTION_6_15();
  sub_25BAB4D78(v9, v10, v0);
  if (v4)
  {
    v11 = MEMORY[0x25F8779B0](1, v0);
  }

  else
  {
    v11 = *(v0 + 40);
  }

  v12 = v11;
  if (*(v2 + 56) == 1)
  {
    OUTLINED_FUNCTION_25_5();
    v14 = *(v2 + 24);
    v13 = *(v2 + 32);
    sub_25BCB617C();

    MEMORY[0x25F876C90](0x6172745F73686C5FLL, 0xEE0065736F70736ELL);
    OUTLINED_FUNCTION_21_4();
    v21 = sub_25BB2B84C(v15, v16, v17, v18, v19, v1, v20);

    v8 = v21;
  }

  if (*(v2 + 57) == 1)
  {
    OUTLINED_FUNCTION_25_5();
    v23 = *(v2 + 24);
    v22 = *(v2 + 32);
    sub_25BCB617C();

    MEMORY[0x25F876C90](0x6172745F7368725FLL, 0xEE0065736F70736ELL);
    OUTLINED_FUNCTION_21_4();
    v30 = sub_25BB2B84C(v24, v25, v26, v27, v28, v1, v29);

    v12 = v30;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v31 = OUTLINED_FUNCTION_5();
  *(v31 + 16) = xmmword_25BCBB6D0;
  v32 = *(v2 + 24);
  v33 = *(v2 + 32);
  sub_25BCB617C();
  v34 = OUTLINED_FUNCTION_16_2();
  *(v31 + 32) = sub_25BB07CA4(v34, v35, v32, v33, v1, v36);

  return v31;
}

unint64_t sub_25BB2856C()
{
  sub_25BB2B624(v0, v2);
  if (v3 < 3)
  {
    return v3 + 1;
  }

  sub_25BB2B680(v2);
  return 0;
}

double sub_25BB285B4()
{
  sub_25BB2B624(v0, &v6);
  if (v7 >= 3)
  {
    sub_25BA97060(&v6, v5);
    sub_25BAC27B0(v5, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4528, &unk_25BCC1A60);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v5);
      v1 = *&v3;
    }

    else
    {
      if (!swift_dynamicCast())
      {
        sub_25BCB70FC();
        MEMORY[0x25F876C90](0xD000000000000025, 0x800000025BCDA730);
        sub_25BCB73CC();
        MEMORY[0x25F876C90](11872, 0xE200000000000000);
        sub_25BCB617C();
        sub_25BA97890();
      }

      __swift_destroy_boxed_opaque_existential_1(v5);
      v1 = v3;
    }

    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  else
  {
    sub_25BB2B680(&v6);
    return 0.0;
  }

  return v1;
}

uint64_t sub_25BB28758()
{
  v1 = *(v0 + 88);
  v2 = *(v1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v7 = MEMORY[0x277D84F90];
    sub_25BCB727C();
    v4 = (v1 + 32);
    do
    {
      v5 = *v4;
      v4 += 2;
      sub_25BCB6A6C();
      sub_25BCB723C();
      v6 = *(v7 + 16);
      sub_25BCB728C();
      sub_25BCB729C();
      sub_25BCB725C();
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_25BB28800()
{
  v1 = *(v0 + 88);
  v2 = *(v1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v7 = MEMORY[0x277D84F90];
    sub_25BCB727C();
    v4 = (v1 + 40);
    do
    {
      v5 = *v4;
      v4 += 2;
      sub_25BCB6A6C();
      sub_25BCB723C();
      v6 = *(v7 + 16);
      sub_25BCB728C();
      sub_25BCB729C();
      sub_25BCB725C();
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

__n128 *sub_25BB288A8()
{
  OUTLINED_FUNCTION_20_3();
  v4 = v3 & 0xC000000000000001;
  v5 = OUTLINED_FUNCTION_3_2();
  sub_25BAB4D78(v5, v6, v0);
  if (v4)
  {
    OUTLINED_FUNCTION_30_5();
  }

  else
  {
    v7 = *(v0 + 32);
  }

  v8 = v7;
  sub_25BB2856C();
  sub_25BB28758();
  sub_25BB2BA50(0, &qword_28154BD90, 0x277CCABB0);
  v9 = sub_25BCB672C();

  sub_25BB28800();
  v10 = sub_25BCB672C();

  v11 = sub_25BB285B4();
  v13 = *(v2 + 24);
  v12 = *(v2 + 32);
  sub_25BCB617C();
  v14 = OUTLINED_FUNCTION_16_2();
  sub_25BB2B578(v14, v15, v9, v10, v11, v13, v12, v1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v16 = OUTLINED_FUNCTION_5();
  return OUTLINED_FUNCTION_12_6(v16, xmmword_25BCBB6D0);
}

uint64_t sub_25BB28A00(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = a2 & 0xC000000000000001;
  v7 = OUTLINED_FUNCTION_3_2();
  sub_25BAB4D78(v7, v8, a2);
  if (v6)
  {
    OUTLINED_FUNCTION_30_5();
  }

  else
  {
    v9 = *(a2 + 32);
  }

  v10 = v9;
  v11 = OUTLINED_FUNCTION_6_15();
  sub_25BAB4D78(v11, v12, a2);
  if (v6)
  {
    v13 = MEMORY[0x25F8779B0](1, a2);
  }

  else
  {
    v13 = *(a2 + 40);
  }

  v14 = v13;
  v15 = sub_25BB2856C();
  sub_25BB28758();
  sub_25BB2BA50(0, &qword_28154BD90, 0x277CCABB0);
  v16 = sub_25BCB672C();

  sub_25BB28800();
  v17 = sub_25BCB672C();

  v19 = *(v3 + 24);
  v18 = *(v3 + 32);
  sub_25BCB617C();
  v20 = sub_25BB2B7A8(v10, v14, v15, v16, v17, v19, v18, a1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v21 = OUTLINED_FUNCTION_5();
  *(v21 + 16) = xmmword_25BCBB6D0;
  *(v21 + 32) = v20;

  return v21;
}

void *sub_25BB28BA0()
{
  v1 = [objc_opt_self() descriptorWithKernelWidth:*(v0 + 56) kernelHeight:*(v0 + 48) strideInX:*(v0 + 72) strideInY:*(v0 + 64) dilationRateInX:1 dilationRateInY:1 paddingLeft:*(v0 + 88) paddingRight:*(v0 + 88) paddingTop:*(v0 + 80) paddingBottom:*(v0 + 80) paddingStyle:0 dataLayout:0];
  if (!v1)
  {
    if (*(v0 + 169))
    {
      v5 = xmmword_25BCBDF50;
      v6 = "mpsPooling2DOpDescriptor";
      v7 = 2;
      v8 = 24;
      v9 = 108;
      v10 = 2;
      v11 = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Backends/MPSGraph/MPSNNOps.swift";
    }

    else
    {
      v7 = *(v0 + 128);
      v11 = *(v0 + 112);
      v9 = *(v0 + 120);
      v10 = *(v0 + 168);
      v6 = *(v0 + 152);
      v8 = *(v0 + 160);
      v5 = *(v0 + 136);
      *v12 = *(v0 + 129);
      *&v12[3] = *(v0 + 132);
    }

    v13[0] = v11;
    v13[1] = v9;
    v14 = v7;
    *v15 = *v12;
    *&v15[3] = *&v12[3];
    v16 = v5;
    v17 = v6;
    v18 = v8;
    v19 = v10;
    sub_25BB28D60(v13);
  }

  v2 = v1;
  if (*v0 == _TtC14NeuralNetworks22Average2DPoolOperation)
  {
    v3 = 192;
LABEL_6:
    [v1 setIncludeZeroPadToAverage_];
    goto LABEL_7;
  }

  if (*v0 == _TtC14NeuralNetworks30Average2DPoolGradientOperation)
  {
    v3 = 184;
    goto LABEL_6;
  }

LABEL_7:
  [v2 setReturnIndicesMode_];
  return v2;
}

void sub_25BB28D60(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  v6 = *(a1 + 56);
  OUTLINED_FUNCTION_17_6(a1);
  MEMORY[0x25F876C90](0x20646E656B636142, 0xED0000726F727265);
  OUTLINED_FUNCTION_122_1();
  OUTLINED_FUNCTION_16_2();
  v7 = sub_25BB2B338();
  MEMORY[0x25F876C90](v7);

  MEMORY[0x25F876C90](2606, 0xE200000000000000);
  sub_25BCB73CC();
  MEMORY[0x25F876C90](0xD00000000000006DLL, 0x800000025BCD9370);
  OUTLINED_FUNCTION_18_7();
  __break(1u);
}

void sub_25BB28E60(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  v6 = *(a1 + 56);
  OUTLINED_FUNCTION_17_6(a1);
  MEMORY[0x25F876C90](0xD000000000000015, 0x800000025BCDA8E0);
  OUTLINED_FUNCTION_122_1();
  v7 = sub_25BB2B338();
  MEMORY[0x25F876C90](v7);

  MEMORY[0x25F876C90](2606, 0xE200000000000000);
  MEMORY[0x25F876C90](0xD00000000000006DLL, 0x800000025BCD9370);
  OUTLINED_FUNCTION_18_7();
  __break(1u);
}

__n128 *sub_25BB28F78(void *a1, uint64_t a2, SEL *a3)
{
  v7 = a2 & 0xC000000000000001;
  v8 = OUTLINED_FUNCTION_3_2();
  sub_25BAB4D78(v8, v9, a2);
  if (v7)
  {
    v10 = MEMORY[0x25F8779B0](0, a2);
  }

  else
  {
    v10 = *(a2 + 32);
  }

  v11 = v10;
  v12 = sub_25BB28BA0();
  v14 = *(v3 + 24);
  v13 = *(v3 + 32);
  sub_25BCB617C();
  v15 = OUTLINED_FUNCTION_16_2();
  sub_25BB07CA4(v15, v16, v14, v13, a1, a3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v17 = OUTLINED_FUNCTION_5();
  return OUTLINED_FUNCTION_12_6(v17, xmmword_25BCBB6D0);
}

__n128 *sub_25BB29060(void *a1, uint64_t a2, SEL *a3)
{
  v7 = a2 & 0xC000000000000001;
  v8 = OUTLINED_FUNCTION_3_2();
  sub_25BAB4D78(v8, v9, a2);
  if (v7)
  {
    OUTLINED_FUNCTION_29_2();
  }

  else
  {
    v10 = *(a2 + 32);
  }

  v11 = v10;
  v12 = OUTLINED_FUNCTION_6_15();
  sub_25BAB4D78(v12, v13, a2);
  if (v7)
  {
    OUTLINED_FUNCTION_27_4();
  }

  else
  {
    v14 = *(a2 + 40);
  }

  v15 = v14;
  v16 = sub_25BB28BA0();
  v18 = *(v3 + 24);
  v17 = *(v3 + 32);
  sub_25BCB617C();
  v19 = OUTLINED_FUNCTION_16_2();
  sub_25BB2B84C(v19, v20, v16, v18, v17, a1, a3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v21 = OUTLINED_FUNCTION_5();
  return OUTLINED_FUNCTION_12_6(v21, xmmword_25BCBB6D0);
}

uint64_t sub_25BB29178(void *a1, id *a2)
{
  v6 = OUTLINED_FUNCTION_2_12();
  sub_25BAB4D78(v6, v7, a2);
  if (v2)
  {
    v8 = MEMORY[0x25F8779B0](0, a2);
  }

  else
  {
    v8 = a2[4];
  }

  v9 = v8;
  v10 = OUTLINED_FUNCTION_1_13();
  sub_25BAB4D78(v10, v11, a2);
  if (v2)
  {
    v12 = MEMORY[0x25F8779B0](1, a2);
  }

  else
  {
    v12 = a2[5];
  }

  v13 = v12;
  if (v3[7])
  {
    v14 = OUTLINED_FUNCTION_0_15();
    sub_25BAB4D78(v14, v15, a2);
    if (v2)
    {
      v16 = MEMORY[0x25F8779B0](2, a2);
    }

    else
    {
      v16 = a2[6];
    }

    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = OUTLINED_FUNCTION_11_11();
  sub_25BB29534(v18, v19);
  OUTLINED_FUNCTION_9_6();
  OUTLINED_FUNCTION_21_4();
  v26 = sub_25BB2B84C(v20, v21, v22, v23, v24, a1, v25);
  if (!v17)
  {
    sub_25BB29534(0x7261656E696CLL, 0xE600000000000000);
    OUTLINED_FUNCTION_4_13();
    v50 = sub_25BB07CA4(v9, v26, v48, v49, a1, &selRef_matrixMultiplicationWithPrimaryTensor_secondaryTensor_name_);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
    v51 = OUTLINED_FUNCTION_5();
    *(v51 + 16) = xmmword_25BCBB6D0;
    *(v51 + 32) = v50;
    v52 = v26;
    v37 = v9;
    v43 = v13;
    goto LABEL_31;
  }

  v27 = *(v3[5] + 152);
  v56 = v13;
  v57 = v9;
  if (v27[2] < 3uLL || v27[4] <= 1 || (v28 = v27[5], v28 < 1))
  {
    v29 = v9;
    goto LABEL_19;
  }

  v29 = v9;
  if (v28 > 0x20)
  {
LABEL_19:
    v34 = 0;
    goto LABEL_20;
  }

  sub_25BB29534(0x6C665F7475706E69, 0xEF64656E65747461);
  OUTLINED_FUNCTION_4_13();
  v32 = v26;
  v33 = sub_25BB07CA4(v29, -1, v30, v31, a1, &selRef_flatten2DTensor_axis_name_);

  v34 = 1;
  v29 = v33;
  v26 = v32;
LABEL_20:
  sub_25BB29534(0x6C756D74616DLL, 0xE600000000000000);
  OUTLINED_FUNCTION_4_13();
  v54 = v29;
  v55 = v26;
  v37 = sub_25BB07CA4(v29, v26, v35, v36, a1, &selRef_matrixMultiplicationWithPrimaryTensor_secondaryTensor_name_);
  if (v34)
  {
    v38 = 0x6D5F646573616962;
  }

  else
  {
    v38 = 0x7261656E696CLL;
  }

  if (v34)
  {
    v39 = 0xED00006C756D7461;
  }

  else
  {
    v39 = 0xE600000000000000;
  }

  v40 = sub_25BB29534(v38, v39);
  v42 = v41;

  v43 = sub_25BB07CA4(v37, v17, v40, v42, a1, &selRef_additionWithPrimaryTensor_secondaryTensor_name_);
  sub_25BAF99E8(v3[8]);
  if (v34)
  {
    sub_25BB2BA50(0, &qword_28154BD90, 0x277CCABB0);
    v44 = sub_25BCB672C();

    sub_25BB29534(0x7261656E696CLL, 0xE600000000000000);
    OUTLINED_FUNCTION_4_13();
    v47 = sub_25BB07CA4(v43, v44, v45, v46, a1, &selRef_reshapeTensor_withShape_name_);
  }

  else
  {

    v47 = v43;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v51 = OUTLINED_FUNCTION_5();
  *(v51 + 16) = xmmword_25BCBB6D0;
  *(v51 + 32) = v47;

  v52 = v57;
LABEL_31:

  return v51;
}

uint64_t sub_25BB29534(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  sub_25BCB617C();
  MEMORY[0x25F876C90](95, 0xE100000000000000);
  MEMORY[0x25F876C90](a1, a2);
  return v6;
}

uint64_t sub_25BB295B0(void *a1, unint64_t a2)
{
  v5 = a2 & 0xC000000000000001;
  v6 = OUTLINED_FUNCTION_3_2();
  sub_25BAB4D78(v6, v7, a2);
  if (v5)
  {
    v8 = MEMORY[0x25F8779B0](0, a2);
  }

  else
  {
    v8 = *(a2 + 32);
  }

  v9 = v8;
  v10 = OUTLINED_FUNCTION_6_15();
  sub_25BAB4D78(v10, v11, a2);
  if (v5)
  {
    v12 = MEMORY[0x25F8779B0](1, a2);
  }

  else
  {
    v12 = *(a2 + 40);
  }

  v43 = v12;
  sub_25BAB4D78(2, v5 == 0, a2);
  if (v5)
  {
    v13 = MEMORY[0x25F8779B0](2, a2);
  }

  else
  {
    v13 = *(a2 + 48);
  }

  v14 = v13;
  OUTLINED_FUNCTION_32_4();
  OUTLINED_FUNCTION_4_13();
  v17 = sub_25BB07CA4(v9, v14, v15, v16, a1, &selRef_matrixMultiplicationWithPrimaryTensor_secondaryTensor_name_);
  v42 = v14;
  if (*(*(v2[5] + 152) + 16) == 2)
  {
    v18 = v9;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
    v19 = OUTLINED_FUNCTION_31();
    *(v19 + 16) = xmmword_25BCBAE40;
    *(v19 + 32) = sub_25BCB6A6C();
    result = sub_25BB731F4(*(v2[5] + 152));
    if (v21)
    {
      __break(1u);
      goto LABEL_23;
    }

    *(v19 + 40) = sub_25BCB6A6C();
    sub_25BB2BA50(0, &qword_28154BD90, 0x277CCABB0);
    v22 = OUTLINED_FUNCTION_26_6();

    v18 = [a1 reshapeTensor:v9 withShape:v22 name:{0, v42}];
  }

  if (*(*(v2[6] + 152) + 16) != 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
    v24 = OUTLINED_FUNCTION_31();
    *(v24 + 16) = xmmword_25BCBAE40;
    *(v24 + 32) = sub_25BCB6A6C();
    result = sub_25BB731F4(*(v2[6] + 152));
    if ((v25 & 1) == 0)
    {
      *(v24 + 40) = sub_25BCB6A6C();
      sub_25BB2BA50(0, &qword_28154BD90, 0x277CCABB0);
      v26 = OUTLINED_FUNCTION_26_6();

      v23 = [a1 reshapeTensor:v43 withShape:v26 name:0];

      goto LABEL_17;
    }

LABEL_23:
    __break(1u);
    return result;
  }

  v23 = v43;
LABEL_17:
  sub_25BB29534(1415543140, 0xE400000000000000);
  OUTLINED_FUNCTION_9_6();
  OUTLINED_FUNCTION_21_4();
  v33 = sub_25BB2B84C(v27, v28, v29, v30, v31, a1, v32);
  sub_25BB29534(30564, 0xE200000000000000);
  OUTLINED_FUNCTION_4_13();
  v36 = sub_25BB07CA4(v33, v23, v34, v35, a1, &selRef_matrixMultiplicationWithPrimaryTensor_secondaryTensor_name_);
  if (v2[8])
  {
    sub_25BB29534(25188, 0xE200000000000000);
    OUTLINED_FUNCTION_4_13();
    v39 = sub_25BB07CA4(v18, 0, v37, v38, a1, &selRef_reductionSumWithTensor_axis_name_);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_25BCBAE60;
    *(v40 + 32) = v17;
    *(v40 + 40) = v36;
    *(v40 + 48) = v39;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
    v40 = OUTLINED_FUNCTION_31();
    *(v40 + 16) = xmmword_25BCBAE40;
    *(v40 + 32) = v17;
    *(v40 + 40) = v36;
  }

  v41 = v17;

  return v40;
}

id sub_25BB29988()
{
  result = [objc_opt_self() descriptorWithStrideInX:*(v0 + 72) strideInY:*(v0 + 64) dilationRateInX:*(v0 + 104) dilationRateInY:*(v0 + 96) groups:*(v0 + 112) paddingLeft:*(v0 + 88) paddingRight:*(v0 + 88) paddingTop:*(v0 + 80) paddingBottom:*(v0 + 80) paddingStyle:0 dataLayout:0 weightsLayout:2];
  if (!result)
  {
    if (*(v0 + 185))
    {
      v2 = xmmword_25BCBDF60;
      v3 = "mpsConvolution2DOpDescriptor";
      v4 = 2;
      v5 = 28;
      v6 = 108;
      v7 = 2;
      v8 = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Backends/MPSGraph/MPSNNOps.swift";
    }

    else
    {
      v4 = *(v0 + 144);
      v8 = *(v0 + 128);
      v6 = *(v0 + 136);
      v7 = *(v0 + 184);
      v3 = *(v0 + 168);
      v5 = *(v0 + 176);
      v2 = *(v0 + 152);
      *v9 = *(v0 + 145);
      *&v9[3] = *(v0 + 148);
    }

    v10[0] = v8;
    v10[1] = v6;
    v11 = v4;
    *v12 = *v9;
    *&v12[3] = *&v9[3];
    v13 = v2;
    v14 = v3;
    v15 = v5;
    v16 = v7;
    sub_25BB28D60(v10);
  }

  return result;
}

id sub_25BB29AD8()
{
  sub_25BB2BA50(0, &qword_27FBB4530, 0x277CD7830);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_25BCBAE60;
  *(v1 + 32) = sub_25BCB6A6C();
  v2 = *(v0 + 64);
  *(v1 + 40) = sub_25BCB6A6C();
  v3 = *(v0 + 72);
  *(v1 + 48) = sub_25BCB6A6C();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_25BCBAE60;
  *(v4 + 32) = sub_25BCB6A6C();
  v5 = *(v0 + 96);
  *(v4 + 40) = sub_25BCB6A6C();
  v6 = *(v0 + 104);
  *(v4 + 48) = sub_25BCB6A6C();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_25BCBAE80;
  *(v7 + 32) = sub_25BCB6A6C();
  *(v7 + 40) = sub_25BCB6A6C();
  v8 = *(v0 + 80);
  *(v7 + 48) = sub_25BCB6A6C();
  *(v7 + 56) = sub_25BCB6A6C();
  v9 = *(v0 + 88);
  *(v7 + 64) = sub_25BCB6A6C();
  *(v7 + 72) = sub_25BCB6A6C();
  v10 = sub_25BB29D18(v1, v4, v7, 0);
  if (!v10)
  {
    if (*(v0 + 185))
    {
      v13 = xmmword_25BCBDF70;
      v14 = "mpsDepthwiseConvolution3DOpDescriptor";
      v15 = 2;
      v16 = 37;
      v17 = 108;
      v18 = 2;
      v19 = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Backends/MPSGraph/MPSNNOps.swift";
    }

    else
    {
      v15 = *(v0 + 144);
      v19 = *(v0 + 128);
      v17 = *(v0 + 136);
      v18 = *(v0 + 184);
      v14 = *(v0 + 168);
      v16 = *(v0 + 176);
      v13 = *(v0 + 152);
      *v20 = *(v0 + 145);
      *&v20[3] = *(v0 + 148);
    }

    v21[0] = v19;
    v21[1] = v17;
    v22 = v15;
    *v23 = *v20;
    *&v23[3] = *&v20[3];
    v24 = v13;
    v25 = v14;
    v26 = v16;
    v27 = v18;
    sub_25BB28D60(v21);
  }

  v11 = v10;
  [v10 setChannelDimensionIndex_];
  return v11;
}

id sub_25BB29D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_25BB2BA50(0, &qword_28154BD90, 0x277CCABB0);
  v5 = sub_25BCB672C();

  v6 = sub_25BCB672C();

  v7 = sub_25BCB672C();

  v8 = [swift_getObjCClassFromMetadata() descriptorWithStrides:v5 dilationRates:v6 paddingValues:v7 paddingStyle:a4];

  return v8;
}

BOOL sub_25BB29E00()
{
  if (v0[14] < 2)
  {
    return 0;
  }

  v1 = *(v0[6] + 152);
  v2 = *(v1 + 16);
  if (v2 <= 1)
  {
    v5 = *(v1 + 16);
    sub_25BCB617C();
    sub_25BADDD28();
  }

  if (*(v1 + 40) != 1)
  {
    return 0;
  }

  return v2 > 3 && *(*(v0[5] + 152) + 16) > 3uLL;
}

void sub_25BB29ECC()
{
  OUTLINED_FUNCTION_22_0();
  v5 = v4;
  v7 = v6;
  v8 = OUTLINED_FUNCTION_2_12();
  sub_25BAB4D78(v8, v9, v5);
  if (v0)
  {
    OUTLINED_FUNCTION_29_2();
  }

  else
  {
    v10 = v5[4];
  }

  v11 = v10;
  v12 = OUTLINED_FUNCTION_1_13();
  sub_25BAB4D78(v12, v13, v5);
  if (v0)
  {
    OUTLINED_FUNCTION_27_4();
  }

  else
  {
    v14 = v5[5];
  }

  v15 = v14;
  if (*(v1 + 56))
  {
    v16 = OUTLINED_FUNCTION_0_15();
    sub_25BAB4D78(v16, v17, v5);
    if (v0)
    {
      v18 = MEMORY[0x25F8779B0](2, v5);
    }

    else
    {
      v18 = v5[6];
    }

    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (sub_25BB29E00())
  {
    v20 = OUTLINED_FUNCTION_11_11();
    sub_25BB29534(v20, v21);
    OUTLINED_FUNCTION_9_6();
    v24 = sub_25BB2B84C(v15, -3, -4, v22, v23, v7, &selRef_transposeTensor_dimension_withDimension_name_);
    sub_25BB29AD8();
    OUTLINED_FUNCTION_23_5();
    OUTLINED_FUNCTION_9_6();
    v27 = sub_25BB2B84C(v11, v24, v3, v25, v26, v7, &selRef_depthwiseConvolution3DWithSourceTensor_weightsTensor_descriptor_name_);
  }

  else
  {
    sub_25BB29988();
    OUTLINED_FUNCTION_23_5();
    OUTLINED_FUNCTION_9_6();
    v27 = sub_25BB2B84C(v11, v15, v3, v28, v29, v7, &selRef_convolution2DWithSourceTensor_weightsTensor_descriptor_name_);
  }

  if (!v19)
  {
LABEL_21:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
    v38 = OUTLINED_FUNCTION_5();
    *(v38 + 16) = xmmword_25BCBB6D0;
    if (v27)
    {
      *(v38 + 32) = v27;

      return;
    }

    goto LABEL_25;
  }

  v40 = v15;
  v30 = *(*(v1 + 192) + 16);
  v31 = v19;
  v32 = sub_25BAC0E14(1, v30);
  v33 = sub_25BBA5020();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_25BAA2110(v32);
    v32 = v39;
  }

  if (*(v32 + 16) < 2uLL)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  *(v32 + 40) = v33;
  sub_25BAF99E8(v32);
  sub_25BB2BA50(0, &qword_28154BD90, 0x277CCABB0);
  OUTLINED_FUNCTION_26_6();
  OUTLINED_FUNCTION_19_5();

  v34 = [v7 reshapeTensor:v31 withShape:v2 name:0];

  if (v27)
  {

    sub_25BB29534(1935763810, 0xE400000000000000);
    OUTLINED_FUNCTION_4_13();
    v37 = sub_25BB07CA4(v27, v34, v35, v36, v7, &selRef_additionWithPrimaryTensor_secondaryTensor_name_);

    v27 = v37;
    v15 = v40;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
}

void *sub_25BB2A1AC(void *a1, id *a2)
{
  v6 = v3;
  v9 = OUTLINED_FUNCTION_2_12();
  sub_25BAB4D78(v9, v10, a2);
  if (v2)
  {
    OUTLINED_FUNCTION_30_5();
  }

  else
  {
    v11 = a2[4];
  }

  v12 = v11;
  v13 = OUTLINED_FUNCTION_1_13();
  sub_25BAB4D78(v13, v14, a2);
  if (v2)
  {
    v15 = MEMORY[0x25F8779B0](1, a2);
  }

  else
  {
    v15 = a2[5];
  }

  v16 = v15;
  v17 = OUTLINED_FUNCTION_0_15();
  sub_25BAB4D78(v17, v18, a2);
  if (v2)
  {
    v19 = MEMORY[0x25F8779B0](2, a2);
  }

  else
  {
    v19 = a2[6];
  }

  v20 = v19;
  v86 = MEMORY[0x277D84F90];
  sub_25BAC1E24(2, 0);
  v85 = v20;
  if (sub_25BB29E00())
  {
    v21 = OUTLINED_FUNCTION_11_11();
    sub_25BB29534(v21, v22);
    OUTLINED_FUNCTION_9_6();
    v5 = sub_25BB2B84C(v20, -3, -4, v23, v24, a1, &selRef_transposeTensor_dimension_withDimension_name_);
    v25 = sub_25BAB7EC0();
    v26 = *(v25 + 16);
    if (v26)
    {
      v84 = v16;
      v27 = *(v25 + 32);
      sub_25BCB617C();

      v28 = sub_25BAF99E8(v27);

      v29 = sub_25BB29AD8();
      OUTLINED_FUNCTION_32_4();
      OUTLINED_FUNCTION_7_9();
      v82 = v5;
      v32 = sub_25BB2B8E0(v12, v5, v28, v29, v30, v31, a1);

      v5 = v32;
      MEMORY[0x25F876F40]();
      OUTLINED_FUNCTION_14_10();
      v34 = *(v33 + 16);
      v26 = *(v33 + 24);
      if (v34 < v26 >> 1)
      {
LABEL_12:
        sub_25BCB680C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_25BCBDF80;
        *(inited + 32) = 1;
        v36 = v6[6];
        v37 = *(v36 + 152);
        if (!*(v37 + 16) || (*(inited + 40) = *(v37 + 32), v38 = *(v36 + 152), *(v38 + 16) <= 2uLL) || (*(inited + 48) = *(v38 + 48), v39 = *(v36 + 152), *(v39 + 16) <= 3uLL))
        {
          sub_25BCB617C();
          sub_25BADDD28();
        }

        *(inited + 56) = *(v39 + 56);
        sub_25BAF99E8(inited);
        OUTLINED_FUNCTION_15();
        swift_setDeallocating();
        sub_25BB2BA50(0, &qword_28154BD90, 0x277CCABB0);
        v40 = sub_25BCB672C();

        v41 = sub_25BB29AD8();
        sub_25BB29534(1415542628, 0xE400000000000000);
        OUTLINED_FUNCTION_7_9();
        v44 = sub_25BB2B9B4(v12, v84, v40, v41, v42, v43, a1, &selRef_depthwiseConvolution3DWeightsGradientWithIncomingGradientTensor_sourceTensor_outputShape_descriptor_name_);

        sub_25BB2B84C(v44, -3, -4, 30564, 0xE200000000000000, a1, &selRef_transposeTensor_dimension_withDimension_name_);
        MEMORY[0x25F876F40]();
        OUTLINED_FUNCTION_14_10();
        v47 = *(v45 + 16);
        v46 = *(v45 + 24);
        if (v47 < v46 >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_34;
      }

LABEL_32:
      OUTLINED_FUNCTION_81(v26);
      sub_25BCB67AC();
      goto LABEL_12;
    }

    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v50 = sub_25BAB7EC0();
  v26 = *(v50 + 16);
  if (!v26)
  {
    goto LABEL_31;
  }

  v84 = v4;
  v51 = v16;
  v52 = *(v50 + 32);
  sub_25BCB617C();

  sub_25BAF99E8(v52);
  OUTLINED_FUNCTION_15();

  v5 = sub_25BB2BA50(0, &qword_28154BD90, 0x277CCABB0);
  v53 = sub_25BCB672C();

  v54 = sub_25BB29988();
  OUTLINED_FUNCTION_32_4();
  OUTLINED_FUNCTION_7_9();
  v57 = sub_25BB2B9B4(v12, v20, v53, v54, v55, v56, a1, &selRef_convolution2DDataGradientWithIncomingGradientTensor_weightsTensor_outputShape_forwardConvolutionDescriptor_name_);

  v58 = v57;
  MEMORY[0x25F876F40]();
  OUTLINED_FUNCTION_14_10();
  v44 = *(v59 + 16);
  v60 = *(v59 + 24);
  if (v44 >= v60 >> 1)
  {
    OUTLINED_FUNCTION_81(v60);
    sub_25BCB67AC();
  }

  sub_25BCB680C();
  v46 = v6[15];
  if (*(v46 + 16) < 2uLL)
  {
    __break(1u);
LABEL_34:
    OUTLINED_FUNCTION_81(v46);
    sub_25BCB67AC();
LABEL_16:
    sub_25BCB680C();
    v48 = v86;

    v49 = v84;
    goto LABEL_24;
  }

  v81 = v58;
  v61 = a1;
  v62 = v12;
  v63 = v51;
  v64 = *(v46 + 48);
  v65 = sub_25BCB617C();
  sub_25BAF99E8(v65);
  OUTLINED_FUNCTION_15();

  v66 = sub_25BCB672C();

  v67 = sub_25BB29988();
  sub_25BB29534(30564, 0xE200000000000000);
  OUTLINED_FUNCTION_7_9();
  v83 = v62;
  v68 = v62;
  v49 = v63;
  a1 = v61;
  sub_25BB2B9B4(v68, v63, v66, v67, v69, v70, v61, &selRef_convolution2DWeightsGradientWithIncomingGradientTensor_sourceTensor_outputShape_forwardConvolutionDescriptor_name_);

  MEMORY[0x25F876F40]();
  OUTLINED_FUNCTION_14_10();
  v73 = *(v71 + 16);
  v72 = *(v71 + 24);
  if (v73 >= v72 >> 1)
  {
    OUTLINED_FUNCTION_81(v72);
    sub_25BCB67AC();
  }

  sub_25BCB680C();
  v48 = v86;

  v12 = v83;
  v20 = v85;
LABEL_24:
  if (v6[7])
  {
    sub_25BAF99E8(&unk_286D42440);
    sub_25BB2BA50(0, &qword_28154BD90, 0x277CCABB0);
    OUTLINED_FUNCTION_26_6();
    OUTLINED_FUNCTION_15();

    v74 = [a1 reductionSumWithTensor:v12 axes:v48 name:0];

    v75 = v74;
    sub_25BB29534(25188, 0xE200000000000000);
    sub_25BCB633C();
    OUTLINED_FUNCTION_15();

    v76 = [a1 squeezeTensor:v75 name:v6];

    MEMORY[0x25F876F40]();
    OUTLINED_FUNCTION_14_10();
    v79 = *(v77 + 16);
    v78 = *(v77 + 24);
    if (v79 >= v78 >> 1)
    {
      OUTLINED_FUNCTION_81(v78);
      sub_25BCB67AC();
    }

    sub_25BCB680C();
  }

  return v48;
}

void sub_25BB2A8D4(void *a1, id *a2)
{
  v7 = OUTLINED_FUNCTION_2_12();
  sub_25BAB4D78(v7, v8, a2);
  if (v2)
  {
    OUTLINED_FUNCTION_29_2();
  }

  else
  {
    v9 = a2[4];
  }

  v10 = v9;
  v11 = OUTLINED_FUNCTION_1_13();
  sub_25BAB4D78(v11, v12, a2);
  if (v2)
  {
    OUTLINED_FUNCTION_27_4();
  }

  else
  {
    v13 = a2[5];
  }

  v34 = v13;
  if (*(v3 + 56))
  {
    v14 = OUTLINED_FUNCTION_0_15();
    sub_25BAB4D78(v14, v15, a2);
    if (v2)
    {
      v16 = MEMORY[0x25F8779B0](2, a2);
    }

    else
    {
      v16 = a2[6];
    }

    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = *(v3 + 192);
  sub_25BAF99E8(v18);
  sub_25BB2BA50(0, &qword_28154BD90, 0x277CCABB0);
  sub_25BCB672C();
  OUTLINED_FUNCTION_19_5();

  v19 = sub_25BB29988();
  sub_25BB29534(0x65736F706E617274, 0xED0000766E6F635FLL);
  OUTLINED_FUNCTION_7_9();
  v20 = v10;
  v23 = sub_25BB2B9B4(v10, v34, v4, v19, v21, v22, a1, &selRef_convolutionTranspose2DWithSourceTensor_weightsTensor_outputShape_descriptor_name_);

  if (!v17)
  {
    goto LABEL_17;
  }

  v24 = *(v18 + 16);
  v25 = v17;
  v26 = sub_25BAC0E14(1, v24);
  sub_25BBA4AC8();
  OUTLINED_FUNCTION_19_5();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_25BAA2110(v26);
    v26 = v33;
  }

  if (*(v26 + 16) >= 2uLL)
  {
    *(v26 + 40) = v4;
    sub_25BAF99E8(v26);
    OUTLINED_FUNCTION_19_5();

    v27 = sub_25BCB672C();

    v28 = [a1 reshapeTensor:v25 withShape:v27 name:0];

    sub_25BB29534(1935763810, 0xE400000000000000);
    OUTLINED_FUNCTION_4_13();
    v31 = sub_25BB07CA4(v23, v28, v29, v30, a1, &selRef_additionWithPrimaryTensor_secondaryTensor_name_);

    v23 = v31;
LABEL_17:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
    v32 = OUTLINED_FUNCTION_5();
    *(v32 + 16) = xmmword_25BCBB6D0;
    *(v32 + 32) = v23;

    return;
  }

  __break(1u);
}

uint64_t sub_25BB2AB84()
{
  OUTLINED_FUNCTION_22_0();
  v4 = v2;
  v6 = v5;
  v8 = v7;
  v9 = OUTLINED_FUNCTION_2_12();
  sub_25BAB4D78(v9, v10, v6);
  if (v0)
  {
    OUTLINED_FUNCTION_29_2();
  }

  else
  {
    v11 = v6[4];
  }

  v12 = v11;
  v13 = OUTLINED_FUNCTION_1_13();
  sub_25BAB4D78(v13, v14, v6);
  if (v0)
  {
    OUTLINED_FUNCTION_27_4();
  }

  else
  {
    v15 = v6[5];
  }

  v16 = v15;
  v17 = OUTLINED_FUNCTION_0_15();
  sub_25BAB4D78(v17, v18, v6);
  if (v0)
  {
    v19 = MEMORY[0x25F8779B0](2, v6);
  }

  else
  {
    v19 = v6[6];
  }

  v20 = v19;
  v21 = sub_25BAB7EC0();
  v22 = *(v21 + 16);
  if (!v22)
  {
    __break(1u);
    goto LABEL_18;
  }

  v23 = *(v21 + 32);
  sub_25BCB617C();

  sub_25BAF99E8(v23);

  v3 = sub_25BB2BA50(0, &qword_28154BD90, 0x277CCABB0);
  v24 = sub_25BCB672C();

  v25 = sub_25BB29988();
  OUTLINED_FUNCTION_32_4();
  OUTLINED_FUNCTION_7_9();
  v4 = sub_25BB2B9B4(v12, v20, v24, v25, v26, v27, v8, &selRef_convolutionTranspose2DDataGradientWithIncomingGradientTensor_weightsTensor_outputShape_forwardConvolutionDescriptor_name_);

  v22 = *(v1 + 120);
  if (*(v22 + 16) < 2uLL)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    OUTLINED_FUNCTION_81(v22);
    sub_25BCB67AC();
    goto LABEL_13;
  }

  v28 = *(v22 + 48);
  v29 = sub_25BCB617C();
  sub_25BAF99E8(v29);

  v30 = sub_25BCB672C();

  v31 = sub_25BB29988();
  sub_25BB29534(30564, 0xE200000000000000);
  OUTLINED_FUNCTION_7_9();
  v34 = sub_25BB2B9B4(v12, v16, v30, v31, v32, v33, v8, &selRef_convolutionTranspose2DWeightsGradientWithIncomingGradientTensor_sourceTensor_outputShape_forwardConvolutionDescriptor_name_);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v35 = OUTLINED_FUNCTION_31();
  *(v35 + 16) = xmmword_25BCBAE40;
  *(v35 + 32) = v4;
  *(v35 + 40) = v34;
  v41 = v35;
  if (!*(v1 + 56))
  {
    v39 = v35;
    goto LABEL_15;
  }

  v4 = v4;
  v3 = v34;
  v36 = sub_25BAF99E8(&unk_286D42478);
  sub_25BB29534(25188, 0xE200000000000000);
  OUTLINED_FUNCTION_4_13();
  sub_25BB2B6EC(v12, v36, v37, v38, v8);
  MEMORY[0x25F876F40]();
  v22 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18);
  if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v22 >> 1)
  {
    goto LABEL_19;
  }

LABEL_13:
  sub_25BCB680C();
  v39 = v41;

  v16 = v3;
  v20 = v4;
LABEL_15:

  return v39;
}

uint64_t sub_25BB2AE78(uint64_t a1)
{
  result = sub_25BB2B2F0(&qword_27FBB44E0, type metadata accessor for ConvolutionTranspose2DGradientOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB2AED0(uint64_t a1)
{
  result = sub_25BB2B2F0(&qword_27FBB44E8, type metadata accessor for ConvolutionTranspose2DOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB2AF28(uint64_t a1)
{
  result = sub_25BB2B2F0(qword_28154C7D0, type metadata accessor for Convolution2DGradientOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB2AF80(uint64_t a1)
{
  result = sub_25BB2B2F0(qword_28154DC68, type metadata accessor for Convolution2DOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB2AFD8(uint64_t a1)
{
  result = sub_25BB2B2F0(&qword_28154D770, type metadata accessor for LinearGradientOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB2B030(uint64_t a1)
{
  result = sub_25BB2B2F0(&qword_28154F570, type metadata accessor for LinearOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB2B088(uint64_t a1)
{
  result = sub_25BB2B2F0(&qword_27FBB44F0, type metadata accessor for Max2DPoolGradientOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB2B0E0(uint64_t a1)
{
  result = sub_25BB2B2F0(&qword_27FBB44F8, type metadata accessor for Max2DPoolOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB2B138(uint64_t a1)
{
  result = sub_25BB2B2F0(&qword_27FBB4500, type metadata accessor for Average2DPoolGradientOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB2B190(uint64_t a1)
{
  result = sub_25BB2B2F0(&qword_27FBB4508, type metadata accessor for Average2DPoolOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB2B1E8(uint64_t a1)
{
  result = sub_25BB2B2F0(&qword_27FBB4510, type metadata accessor for PadGradientOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB2B240(uint64_t a1)
{
  result = sub_25BB2B2F0(&qword_27FBB4518, type metadata accessor for PadOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB2B298(uint64_t a1)
{
  result = sub_25BB2B2F0(&qword_27FBB4520, type metadata accessor for MatrixMultiplicationOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB2B2F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25BB2B338()
{
  v0 = sub_25BCB63AC();
  MEMORY[0x25F876C90](v0);

  MEMORY[0x25F876C90](96, 0xE100000000000000);
  return 96;
}

uint64_t sub_25BB2B3A8()
{
  OUTLINED_FUNCTION_5_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4538, &qword_25BCBE100);
  sub_25BCB63AC();
  OUTLINED_FUNCTION_28_0();

  OUTLINED_FUNCTION_8_11();
  return v1;
}

uint64_t sub_25BB2B408()
{
  OUTLINED_FUNCTION_5_13();
  sub_25BCB63AC();
  OUTLINED_FUNCTION_28_0();

  OUTLINED_FUNCTION_8_11();
  return v1;
}

uint64_t sub_25BB2B458()
{
  OUTLINED_FUNCTION_5_13();
  sub_25BCB617C();
  sub_25BCB63AC();
  OUTLINED_FUNCTION_28_0();

  OUTLINED_FUNCTION_8_11();
  return v1;
}

uint64_t sub_25BB2B4B0()
{
  OUTLINED_FUNCTION_5_13();
  sub_25BCB617C();
  sub_25BCB63AC();
  OUTLINED_FUNCTION_28_0();

  OUTLINED_FUNCTION_8_11();
  return v1;
}

uint64_t sub_25BB2B504(uint64_t a1)
{
  v4 = 96;
  v5 = 0xE100000000000000;
  sub_25BB2BA90(a1, &v3);
  v1 = sub_25BCB63AC();
  MEMORY[0x25F876C90](v1);

  MEMORY[0x25F876C90](96, 0xE100000000000000);
  return v4;
}

id sub_25BB2B578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, uint64_t a6, uint64_t a7, void *a8)
{
  v14 = sub_25BCB633C();

  v15 = [a8 padTensor:a1 withPaddingMode:a2 leftPadding:a3 rightPadding:a4 constantValue:v14 name:a5];

  return v15;
}

id sub_25BB2B6EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_25BB2BA50(0, &qword_28154BD90, 0x277CCABB0);
  v7 = sub_25BCB672C();

  v8 = sub_25BCB633C();

  v9 = [a5 reductionSumWithTensor:a1 axes:v7 name:v8];

  return v9;
}

id sub_25BB2B7A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v14 = sub_25BCB633C();

  v15 = [a8 padGradientWithIncomingGradientTensor:a1 sourceTensor:a2 paddingMode:a3 leftPadding:a4 rightPadding:a5 name:v14];

  return v15;
}

id sub_25BB2B84C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, SEL *a7)
{
  v12 = sub_25BCB633C();

  v13 = [a6 *a7];

  return v13;
}

id sub_25BB2B8E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  sub_25BB2BA50(0, &qword_28154BD90, 0x277CCABB0);
  v11 = sub_25BCB672C();

  v12 = sub_25BCB633C();

  v13 = [a7 depthwiseConvolution3DDataGradientWithIncomingGradientTensor:a1 weightsTensor:a2 outputShape:v11 descriptor:a4 name:v12];

  return v13;
}

id sub_25BB2B9B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, SEL *a8)
{
  v14 = sub_25BCB633C();

  v15 = [a7 *a8];

  return v15;
}

uint64_t sub_25BB2BA50(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_25BB2BA90(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

BOOL LearningPhase.isTraining.getter()
{
  if (*v0)
  {
    return *v0 == 1;
  }

  type metadata accessor for ContextManager();
  sub_25BAA49B8();
  sub_25BAA4A5C(v3);

  if (v4)
  {
    v1 = *(v4 + 24) & 1;
  }

  else
  {
    v1 = 0;
  }

  sub_25BAA4AF4(v3);
  return v1;
}

uint64_t LearningPhase.description.getter()
{
  v1 = 0x676E696E69617274;
  if (*v0 != 1)
  {
    v1 = 0x636E657265666E69;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6974616D6F747561;
  }
}

NeuralNetworks::LearningPhase_optional __swiftcall LearningPhase.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_25BB2BC1C@<X0>(uint64_t *a1@<X8>)
{
  result = LearningPhase.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_25BB2BCFC()
{
  result = qword_27FBB4540;
  if (!qword_27FBB4540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4540);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LearningPhase(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25BB2BE2C()
{
  result = qword_27FBB4548;
  if (!qword_27FBB4548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4548);
  }

  return result;
}

id sub_25BB2BE80()
{
  v1 = v0;
  sub_25BC31C8C(__src);

  v2 = sub_25BC6640C();
  sub_25BB2C64C(v1 + 48, __src);
  memcpy(__dst, __src, 0x79uLL);
  if (BYTE8(__dst[7]))
  {
    if (BYTE8(__dst[7]) == 1)
    {
      sub_25BA97060(__dst, v26);
      sub_25BA97060((&__dst[2] + 8), v24);
      sub_25BA97060(&__dst[5], v22);
      v3 = [objc_opt_self() descriptorWithDistribution:2 dataType:v2];
      if (v3)
      {
        v4 = v27;
        __swift_project_boxed_opaque_existential_1(v26, v27);
        *&v5 = sub_25BC31CA0(v4);
        [v3 setMean_];
        v6 = v25;
        __swift_project_boxed_opaque_existential_1(v24, v25);
        *&v7 = sub_25BC31CA0(v6);
        [v3 setStandardDeviation_];
        v8 = v23;
        __swift_project_boxed_opaque_existential_1(v22, v23);
        *&v9 = -sub_25BC31CA0(v8);
        [v3 setMin_];
        v10 = v23;
        __swift_project_boxed_opaque_existential_1(v22, v23);
        *&v11 = sub_25BC31CA0(v10);
        [v3 setMax_];
      }

      __swift_destroy_boxed_opaque_existential_1(v22);
    }

    else
    {
      sub_25BA97060(__dst, v26);
      sub_25BA97060((&__dst[2] + 8), v24);
      v3 = [objc_opt_self() descriptorWithDistribution:0 dataType:v2];
      if (v3)
      {
        v16 = v27;
        __swift_project_boxed_opaque_existential_1(v26, v27);
        if (v2 == 536870944)
        {
          [v3 setMinInteger_];
          v17 = v25;
          __swift_project_boxed_opaque_existential_1(v24, v25);
          [v3 setMaxInteger_];
        }

        else
        {
          *&v18 = sub_25BC31CA0(v16);
          [v3 setMin_];
          v19 = v25;
          __swift_project_boxed_opaque_existential_1(v24, v25);
          *&v20 = sub_25BC31CA0(v19);
          [v3 setMax_];
        }
      }
    }
  }

  else
  {
    sub_25BA97060(__dst, v26);
    sub_25BA97060((&__dst[2] + 8), v24);
    v3 = [objc_opt_self() descriptorWithDistribution:1 dataType:v2];
    if (v3)
    {
      v12 = v27;
      __swift_project_boxed_opaque_existential_1(v26, v27);
      *&v13 = sub_25BC31CA0(v12);
      [v3 setMean_];
      v14 = v25;
      __swift_project_boxed_opaque_existential_1(v24, v25);
      *&v15 = sub_25BC31CA0(v14);
      [v3 setStandardDeviation_];
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v24);
  __swift_destroy_boxed_opaque_existential_1(v26);
  return v3;
}

uint64_t sub_25BB2C21C(void *a1, uint64_t a2)
{
  v5 = sub_25BB2BE80();
  if (!v5)
  {
    v26[0] = 0xD00000000000002ELL;
    v26[1] = 0x800000025BCDA900;
    v27 = 3;
    if (*(v2 + 241))
    {
      v19 = xmmword_25BCBE250;
      v20 = "encode(to:inputs:)";
      v21 = 2;
      v22 = 18;
      v23 = 111;
      v24 = 2;
      v25 = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Backends/MPSGraph/MPSRandomOp.swift";
    }

    else
    {
      v21 = *(v2 + 200);
      v25 = *(v2 + 184);
      v23 = *(v2 + 192);
      v24 = *(v2 + 240);
      v20 = *(v2 + 224);
      v22 = *(v2 + 232);
      v19 = *(v2 + 208);
      v35[0] = *(v2 + 201);
      *(v35 + 3) = *(v2 + 204);
    }

    v28[0] = v25;
    v28[1] = v23;
    v29 = v21;
    *v30 = v35[0];
    *&v30[3] = *(v35 + 3);
    v31 = v19;
    v32 = v20;
    v33 = v22;
    v34 = v24;
    sub_25BB28D60(v28);
  }

  v6 = v5;
  sub_25BC31C8C(v26);
  sub_25BAF99E8(v26[0]);

  sub_25BB2BA50(0, &qword_28154BD90, 0x277CCABB0);
  v7 = sub_25BCB672C();

  sub_25BAB4D78(0, (a2 & 0xC000000000000001) == 0, a2);
  if ((a2 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x25F8779B0](0, a2);
  }

  else
  {
    v8 = *(a2 + 32);
  }

  v9 = v8;
  v10 = *(v2 + 24);
  v11 = *(v2 + 32);
  v12 = sub_25BCB633C();
  v13 = [a1 randomTensorWithShape:v7 descriptor:v6 stateTensor:v9 name:v12];

  sub_25BB2BA50(0, &qword_27FBB3908, 0x277CD7888);
  v14 = sub_25BCB673C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_25BCBB6D0;
  sub_25BAB4D78(0, (v14 & 0xC000000000000001) == 0, v14);
  if ((v14 & 0xC000000000000001) != 0)
  {
    v16 = MEMORY[0x25F8779B0](0, v14);
  }

  else
  {
    v16 = *(v14 + 32);
  }

  v17 = v16;

  *(v15 + 32) = v17;

  return v15;
}

uint64_t sub_25BB2C4A8(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_25BCBB6D0;
  v4 = v1[7];
  v6 = v1[3];
  v5 = v1[4];
  sub_25BCB617C();
  *(v3 + 32) = sub_25BB2C6A8(v4, v6, v5, a1);
  return v3;
}

uint64_t sub_25BB2C554(uint64_t a1)
{
  result = sub_25BB2C604(&qword_27FBB4550, type metadata accessor for RandomStateOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB2C5AC(uint64_t a1)
{
  result = sub_25BB2C604(&qword_28154F3A0, type metadata accessor for RandomOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB2C604(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_25BB2C6A8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_25BCB633C();

  v7 = [a4 randomPhiloxStateTensorWithSeed:a1 name:v6];

  return v7;
}

NeuralNetworks::ReductionKind_optional __swiftcall ReductionKind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25BCB761C();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_25BB2C7AC()
{
  result = qword_27FBB4558;
  if (!qword_27FBB4558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4558);
  }

  return result;
}

uint64_t sub_25BB2C824@<X0>(uint64_t *a1@<X8>)
{
  result = ReductionKind.rawValue.getter();
  *a1 = result;
  a1[1] = 0xE300000000000000;
  return result;
}

unint64_t sub_25BB2C854()
{
  result = qword_27FBB4560;
  if (!qword_27FBB4560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBB4568, &qword_25BCBE338);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB4560);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ReductionKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ReductionKind(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

double sub_25BB2CA2C(uint64_t a1)
{
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  ObjectType = swift_getObjectType();
  v11[2] = a1;
  v12 = v1;
  v6 = *(v4 + 56);
  v7 = sub_25BB2BA50(0, &qword_27FBB3908, 0x277CD7888);
  v6(&v13, sub_25BB2CEC4, v11, v7, ObjectType, v4);
  v8 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v9 = swift_allocObject();
  *&result = 1;
  *(v9 + 16) = xmmword_25BCBB6D0;
  *(v9 + 32) = v8;
  return result;
}

void sub_25BB2CB1C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if (a1)
  {
    v7 = MEMORY[0x25F876250](a1, a2 - a1);
    v9 = v8;
    v10 = sub_25BCB59FC();
    sub_25BB0D160(v7, v9);
    v11 = *(a4 + 56);
    v12 = *(a4 + 64);
    ObjectType = swift_getObjectType();
    if (sub_25BC5D23C(ObjectType, v12))
    {
      (*(v12 + 16))(&v19, ObjectType, v12);
      sub_25BAF99E8(v19);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_25BCBB6D0;
      sub_25BB2BA50(0, &qword_28154BD90, 0x277CCABB0);
      *(v14 + 32) = sub_25BCB6DDC();
    }

    sub_25BB2BA50(0, &qword_28154BD90, 0x277CCABB0);
    v15 = sub_25BCB672C();

    (*(v12 + 8))(&v18, ObjectType, v12);
    v16 = [a3 constantWithData:v10 shape:v15 dataType:sub_25BC6640C()];

    *a5 = v16;
  }

  else
  {
    __break(1u);
  }
}

double sub_25BB2CD00(void *a1)
{
  v2 = v1;
  v4 = sub_25BAF99E8(*(v1 + 40));
  v11 = *(v1 + 48);
  v5 = sub_25BC6640C();
  v6 = *(v1 + 24);
  v7 = *(v2 + 32);
  sub_25BCB617C();
  v8 = sub_25BB2CEE0(v4, v5, v6, v7, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v9 = swift_allocObject();
  *&result = 1;
  *(v9 + 16) = xmmword_25BCBB6D0;
  *(v9 + 32) = v8;
  return result;
}

uint64_t sub_25BB2CDCC(uint64_t a1)
{
  result = sub_25BB2CE7C(&qword_28154F720, type metadata accessor for InputOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB2CE24(uint64_t a1)
{
  result = sub_25BB2CE7C(&qword_27FBB4570, type metadata accessor for ConstantOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB2CE7C(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_25BB2CEE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_25BB2BA50(0, &qword_28154BD90, 0x277CCABB0);
  v7 = sub_25BCB672C();

  v8 = sub_25BCB633C();

  v9 = [a5 placeholderWithShape:v7 dataType:a2 name:v8];

  return v9;
}

unint64_t sub_25BB2CF9C()
{
  v1 = *v0;
  switch(*(v0 + 8) >> 13)
  {
    case 1:
      if (!v0[1])
      {
        return 0xD00000000000001CLL;
      }

      v7 = v0[1];
      sub_25BCB617C();
      return v1;
    case 2:
      OUTLINED_FUNCTION_0_16();
      sub_25BCB70FC();

      OUTLINED_FUNCTION_4_14();
      v5 = v6 | 4;
      goto LABEL_5;
    case 3:
      OUTLINED_FUNCTION_0_16();
      sub_25BCB70FC();
      OUTLINED_FUNCTION_4_14();
      OUTLINED_FUNCTION_3_3();
      MEMORY[0x25F876C90]();
      goto LABEL_7;
    case 4:
      OUTLINED_FUNCTION_0_16();
      sub_25BCB70FC();

      OUTLINED_FUNCTION_4_14();
      v5 = v4 + 18;
LABEL_5:
      v9 = v5;
LABEL_7:
      OUTLINED_FUNCTION_2_13();
      v2 = 11872;
      v3 = 0xE200000000000000;
      break;
    case 5:
      OUTLINED_FUNCTION_0_16();
      sub_25BCB70FC();
      OUTLINED_FUNCTION_4_14();
      OUTLINED_FUNCTION_3_3();
      MEMORY[0x25F876C90]();
      OUTLINED_FUNCTION_2_13();
      MEMORY[0x25F876C90](0x657078650A202C60, 0xEE0020676E697463);
      OUTLINED_FUNCTION_1_14();
      MEMORY[0x25F876C90](0x20646E6120, 0xE500000000000000);
      OUTLINED_FUNCTION_1_14();
      v2 = 0x6374616D206F7420;
      v3 = 0xEA00000000002E68;
      break;
    default:
      OUTLINED_FUNCTION_0_16();
      sub_25BCB70FC();
      OUTLINED_FUNCTION_3_3();
      MEMORY[0x25F876C90](0xD00000000000001BLL);
      OUTLINED_FUNCTION_2_13();
      OUTLINED_FUNCTION_3_3();
      break;
  }

  MEMORY[0x25F876C90](v2, v3);
  return v9;
}

void sub_25BB2D1F8(uint64_t a1)
{
  v3 = objc_autoreleasePoolPush();
  sub_25BAD6FB0(a1, v4);
  type metadata accessor for BNNSExecutor();
  swift_initStackObject();
  sub_25BB2D2D8(v4);
  sub_25BB2D37C();
  sub_25BB2D608();
  if (!v1)
  {
    sub_25BB2DD70();
  }

  objc_autoreleasePoolPop(v3);
}

uint64_t sub_25BB2D2D8(uint64_t a1)
{
  sub_25BAD6FB0(a1, v5);
  type metadata accessor for BNNSExecutor.Context();
  v3 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3938, &qword_25BCBE490);
  *(v3 + 16) = sub_25BCB614C();
  memcpy((v3 + 24), v5, 0xECuLL);
  sub_25BA9AC78(a1);
  *(v1 + 16) = v3;
  return v1;
}

uint64_t sub_25BB2D37C()
{
  sub_25BB2D2C8(v28);
  v0 = v28[11];
  sub_25BCB617C();
  sub_25BA9AC78(v28);
  result = sub_25BA9BEA0(v0);
  v26 = result;
  if (!result)
  {
  }

  if (result < 1)
  {
    goto LABEL_26;
  }

  v2 = 0;
  v3 = *(v27 + 16);
  while (1)
  {
    if ((v0 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x25F8779B0](v2, v0);
    }

    else
    {
      v4 = *(v0 + 8 * v2 + 32);
    }

    sub_25BB2D2C8(v28);
    v5 = v28[13];
    v6 = v28[14];
    v7 = sub_25BAC44E4();
    if (!*(v6 + 16))
    {

      goto LABEL_13;
    }

    v9 = sub_25BA9266C(v7, v8);
    v11 = v10;

    if (v11)
    {
      break;
    }

LABEL_13:
    v5 = v28[17];
    v13 = v28[18];
    v14 = sub_25BAC44E4();
    if (!*(v13 + 16))
    {

LABEL_19:
      v21 = sub_25BAC44E4();
      v20 = v22;
      goto LABEL_20;
    }

    v16 = sub_25BA9266C(v14, v15);
    v18 = v17;

    if ((v18 & 1) == 0)
    {
      goto LABEL_19;
    }

    v12 = *(*(v13 + 56) + 8 * v16);
    if ((v12 & 0x8000000000000000) != 0)
    {
      goto LABEL_24;
    }

    if (v12 >= *(v5 + 16))
    {
      goto LABEL_25;
    }

LABEL_17:
    v19 = v5 + 16 * v12;
    v21 = *(v19 + 32);
    v20 = *(v19 + 40);
    sub_25BCB617C();
LABEL_20:
    ++v2;
    sub_25BA9AC78(v28);

    v23 = sub_25BA928B4();
    [v23 lock];

    sub_25BA92920(v4, 0, 0, v28);
    [*(v4 + 224) unlock];

    v24 = v28[1];
    swift_beginAccess();
    v25 = swift_unknownObjectRetain();
    sub_25BB2E2B0(v25, v24, v21, v20);
    swift_endAccess();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (v26 == v2)
    {
    }
  }

  v12 = *(*(v6 + 56) + 8 * v9);
  if ((v12 & 0x8000000000000000) == 0)
  {
    if (v12 >= *(v5 + 16))
    {
      goto LABEL_23;
    }

    goto LABEL_17;
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_25BB2D608()
{
  sub_25BB2D2C8(v90);
  v0 = v90[15];
  sub_25BCB617C();
  sub_25BA9AC78(v90);
  v1 = 0;
  v2 = v0 + 32;
  v3 = *(v0 + 16);
  v78 = v0;
  v74 = v3;
  v75 = v0 + 32;
LABEL_2:
  if (v1 == v3)
  {
  }

  if (v1 >= *(v0 + 16))
  {
    goto LABEL_57;
  }

  v4 = (v2 + 16 * v1);
  v6 = *v4;
  v5 = v4[1];
  v7 = v1;
  swift_getObjectType();
  if (!dynamic_cast_existential_1_conditional(v6))
  {
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    v70 = (*(v5 + 24))(ObjectType, v5);
    v72 = v71;
    sub_25BB0E2EC();
    swift_allocError();
    *v73 = v70;
    *(v73 + 8) = v72;
    *(v73 + 16) = 0;
    swift_willThrow();
    return swift_unknownObjectRelease();
  }

  v77 = v8;
  v76 = v7 + 1;
  v9 = swift_getObjectType();
  v10 = *(v5 + 32);
  swift_unknownObjectRetain_n();
  v81 = v5;
  v80 = v9;
  v11 = v10(v9, v5);
  v12 = 0;
  v84 = v11 & 0xC000000000000001;
  v85 = sub_25BA9BEA0(v11);
  v87 = v11;
  v82 = v11 & 0xFFFFFFFFFFFFFF8;
  v13 = MEMORY[0x277D84F98];
  while (1)
  {
    if (v85 == v12)
    {

      v33 = swift_getObjectType();
      v34 = (*(v77 + 16))(v13, v33);
      if (v79)
      {

        swift_willThrow();
        goto LABEL_43;
      }

      v35 = v34;

      v36 = 0;
      v37 = v81;
      v86 = *(v35 + 16);
      v83 = v35;
      while (v86 != v36)
      {
        if (v36 >= *(v35 + 16))
        {
          goto LABEL_51;
        }

        v89 = *(v35 + 16 * v36 + 32);
        v38 = *(v92 + 16);
        sub_25BB2D2C8(v90);
        v39 = *(v37 + 72);
        swift_unknownObjectRetain();
        v40 = v39(v36, v80, v37);
        v42 = v40;
        v43 = v41;
        v44 = v91;
        if (*(v91 + 16))
        {
          v45 = v90[17];
          v46 = sub_25BA9266C(v40, v41);
          if (v47)
          {
            v48 = v46;

            v49 = *(*(v44 + 56) + 8 * v48);
            if ((v49 & 0x8000000000000000) != 0)
            {
              goto LABEL_55;
            }

            if (v49 >= *(v45 + 16))
            {
              goto LABEL_56;
            }

            v50 = v45 + 16 * v49;
            v42 = *(v50 + 32);
            v43 = *(v50 + 40);
            sub_25BCB617C();
          }
        }

        sub_25BA9AC78(v90);
        swift_beginAccess();
        swift_unknownObjectRetain();
        v51 = *(v38 + 16);
        swift_isUniquelyReferenced_nonNull_native();
        v52 = *(v38 + 16);
        *(v38 + 16) = 0x8000000000000000;
        v53 = sub_25BA9266C(v42, v43);
        if (__OFADD__(v52[2], (v54 & 1) == 0))
        {
          goto LABEL_52;
        }

        v55 = v53;
        v56 = v54;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4580, &qword_25BCBE488);
        if (sub_25BCB745C())
        {
          v57 = sub_25BA9266C(v42, v43);
          v35 = v83;
          if ((v56 & 1) != (v58 & 1))
          {
            goto LABEL_58;
          }

          v55 = v57;
        }

        else
        {
          v35 = v83;
        }

        if (v56)
        {
          v59 = *(v52[7] + 16 * v55);
          swift_unknownObjectRelease();
          *(v52[7] + 16 * v55) = v89;
        }

        else
        {
          v52[(v55 >> 6) + 8] |= 1 << v55;
          v60 = (v52[6] + 16 * v55);
          *v60 = v42;
          v60[1] = v43;
          *(v52[7] + 16 * v55) = v89;
          v61 = v52[2];
          v31 = __OFADD__(v61, 1);
          v62 = v61 + 1;
          if (v31)
          {
            goto LABEL_54;
          }

          v52[2] = v62;
          sub_25BCB617C();
        }

        v63 = *(v38 + 16);
        *(v38 + 16) = v52;

        swift_endAccess();
        swift_unknownObjectRelease();

        ++v36;
        v37 = v81;
      }

      swift_unknownObjectRelease_n();

      v0 = v78;
      v2 = v75;
      v1 = v76;
      v3 = v74;
      goto LABEL_2;
    }

    if (v84)
    {
      MEMORY[0x25F8779B0](v12, v87);
    }

    else
    {
      if (v12 >= *(v82 + 16))
      {
        goto LABEL_49;
      }

      v14 = *(v87 + 8 * v12 + 32);
    }

    if (__OFADD__(v12, 1))
    {
      break;
    }

    v15 = *(v92 + 16);
    v16 = sub_25BB2E080();
    if (!v16)
    {

      v90[0] = 0;
      v90[1] = 0xE000000000000000;
      sub_25BCB70FC();

      sub_25BB2D2C8(v90);
      v64 = sub_25BC60380(v80, v81);
      v66 = v65;
      sub_25BA9AC78(v90);
      MEMORY[0x25F876C90](v64, v66);

      MEMORY[0x25F876C90](96, 0xE100000000000000);
      sub_25BB0E2EC();
      swift_allocError();
      *v67 = 0xD000000000000027;
      *(v67 + 8) = 0x800000025BCDAB50;
      *(v67 + 16) = 0x2000;
      swift_willThrow();

LABEL_43:
      swift_unknownObjectRelease();
      return swift_unknownObjectRelease();
    }

    v18 = v16;
    v19 = v17;
    v88 = v12;
    v20 = sub_25BAC4018();
    swift_unknownObjectRetain();
    swift_isUniquelyReferenced_nonNull_native();
    v90[0] = v13;
    v21 = sub_25BAFEEB0(v20);
    if (__OFADD__(v13[2], (v22 & 1) == 0))
    {
      goto LABEL_50;
    }

    v23 = v21;
    v24 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4578, &qword_25BCBE480);
    if (sub_25BCB745C())
    {
      v25 = sub_25BAFEEB0(v20);
      if ((v24 & 1) != (v26 & 1))
      {
        goto LABEL_58;
      }

      v23 = v25;
    }

    v13 = v90[0];
    if (v24)
    {
      v27 = (*(v90[0] + 56) + 16 * v23);
      v28 = *v27;
      *v27 = v18;
      v27[1] = v19;
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
    }

    else
    {
      *(v90[0] + 8 * (v23 >> 6) + 64) |= 1 << v23;
      *(v13[6] + 8 * v23) = v20;
      v29 = (v13[7] + 16 * v23);
      *v29 = v18;
      v29[1] = v19;
      swift_unknownObjectRelease();

      v30 = v13[2];
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        goto LABEL_53;
      }

      v13[2] = v32;
    }

    v12 = v88 + 1;
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  result = sub_25BCB795C();
  __break(1u);
  return result;
}

uint64_t sub_25BB2DD70()
{
  v1 = v0;
  sub_25BB2D2C8(v27);
  v2 = v28;
  sub_25BCB617C();
  sub_25BA9AC78(v27);
  v3 = sub_25BA9BEA0(v2);
  v4 = 0;
  v29 = v2 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v3 == v4)
    {
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x25F8779B0](v4, v2);
    }

    else
    {
      if (v4 >= *(v29 + 16))
      {
        goto LABEL_20;
      }

      v5 = *(v2 + 8 * v4 + 32);
    }

    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      v18[0] = 0xD00000000000002BLL;
      v18[1] = 0x800000025BCDAAA0;
      v19 = 9;
      sub_25BA97890();
    }

    v6 = *(v1 + 16);
    v7 = sub_25BB2E080();
    if (!v7)
    {
      break;
    }

    v9 = v7;
    v10 = v8;

    swift_unknownObjectRetain();
    v11 = sub_25BA928B4();
    [v11 lock];

    swift_beginAccess();
    sub_25BA9323C(v5 + 40, v27);
    if (!v27[105])
    {
      sub_25BA9323C(v5 + 40, v21);
      sub_25BA9323C(v21, v20);
      if (v20[105])
      {
        goto LABEL_21;
      }

      sub_25BA9BE3C(v20, v18);
      v12 = v18[7];
      v17 = v18[6];
      Strong = swift_weakLoadStrong();
      swift_unknownObjectRetain();
      sub_25BCB617C();
      if (Strong)
      {

        v22 = v9;
        v23 = v10;
        v24 = v17;
        v25 = v12;
        sub_25BA9BE3C(v18, v26);
        v14 = 1;
      }

      else
      {
        sub_25BA977E0(v18);
        v22 = v9;
        v23 = v10;
        v14 = 2;
        v24 = v17;
        v25 = v12;
      }

      v26[73] = v14;
      sub_25BA9778C(v21);
      swift_beginAccess();
      sub_25BA97834(&v22, v5 + 40);
      swift_endAccess();
    }

    sub_25BA9778C(v27);
    [*(v5 + 224) unlock];
    swift_unknownObjectRelease_n();

    ++v4;
  }

  sub_25BB0E2EC();
  swift_allocError();
  *v16 = 0xD000000000000034;
  *(v16 + 8) = 0x800000025BCDAA60;
  *(v16 + 16) = 0x2000;
  swift_willThrow();
}

uint64_t sub_25BB2E080()
{
  sub_25BAD6FB0(v0 + 24, v16);
  v1 = v16[13];
  v2 = v16[14];
  v3 = sub_25BAC44E4();
  v5 = sub_25BB2E238(v3, v4, v1, v2);
  v7 = v6;

  if (!v7)
  {
    v8 = v16[17];
    v9 = v16[18];
    v10 = sub_25BAC44E4();
    v5 = sub_25BB2E238(v10, v11, v8, v9);
    v7 = v12;

    if (!v7)
    {
      v5 = sub_25BAC44E4();
      v7 = v13;
    }
  }

  sub_25BA9AC78(v16);
  swift_beginAccess();
  v14 = sub_25BAD7914(v5, v7, *(v0 + 16));
  swift_endAccess();

  return v14;
}

uint64_t sub_25BB2E178()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_25BB2E1D4()
{
  v1 = *(v0 + 16);

  sub_25BA9AC78(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_25BB2E238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(a4 + 16))
  {
    return 0;
  }

  result = sub_25BA9266C(a1, a2);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = *(*(a4 + 56) + 8 * result);
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v8 < *(a3 + 16))
  {
    v9 = a3 + 16 * v8;
    v10 = *(v9 + 32);
    v11 = *(v9 + 40);
    sub_25BCB617C();
    return v10;
  }

  __break(1u);
  return result;
}

uint64_t sub_25BB2E2B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  swift_isUniquelyReferenced_nonNull_native();
  v19 = *v4;
  v10 = sub_25BA9266C(a3, a4);
  if (__OFADD__(*(v19 + 16), (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4580, &qword_25BCBE488);
  if (sub_25BCB745C())
  {
    v14 = sub_25BA9266C(a3, a4);
    if ((v13 & 1) == (v15 & 1))
    {
      v12 = v14;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_25BCB795C();
    __break(1u);
    return result;
  }

LABEL_5:
  if (v13)
  {
    v16 = (*(v19 + 56) + 16 * v12);
    result = *v16;
    v18 = v16[1];
    *v16 = a1;
    v16[1] = a2;
  }

  else
  {
    sub_25BC1ACAC(v12, a3, a4, a1, a2, v19);
    sub_25BCB617C();
    result = 0;
  }

  *v4 = v19;
  return result;
}

uint64_t sub_25BB2E400(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFB && *(a1 + 18))
    {
      v2 = *a1 + 250;
    }

    else
    {
      v2 = ((*(a1 + 16) >> 13) | (8 * (HIBYTE(*(a1 + 16)) & 0x10 | (*(a1 + 16) >> 4)))) ^ 0xFF;
      if (v2 >= 0xFA)
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

uint64_t sub_25BB2E454(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (32 * (-a2 & 0x80) - (a2 << 13)) & 0xFF0F | (16 * ((-a2 >> 3) & 0xF));
    }
  }

  return result;
}

uint64_t Tensor.cumulativeSum(alongAxis:exclusive:reverse:)(uint64_t a1)
{
  OUTLINED_FUNCTION_6_16(a1);
  if (!v3)
  {
    v30[56] = v2;
    v28[0] = sub_25BC8FACC();
    v28[1] = v24;
    OUTLINED_FUNCTION_0_17();
    OUTLINED_FUNCTION_2_14();
    sub_25BADDD28();
  }

  OUTLINED_FUNCTION_11_12();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_5_14(v4);

  sub_25BAAF074(sub_25BB2F490);

  v30[55] = 0;
  OUTLINED_FUNCTION_1_15("/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/CumulativeOps.swift");
  v31 = xmmword_25BCBE600;
  OUTLINED_FUNCTION_4_15(v5);
  type metadata accessor for CumulativeOperation();
  swift_allocObject();
  OUTLINED_FUNCTION_10_7();
  v6 = OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_13_6(v6, v7, v8, 0, v9, v10, v11, v12, v25, v26, v27);
  OUTLINED_FUNCTION_12_7();
  sub_25BAA51C8(v30, v29);
  type metadata accessor for ContextManager();
  OUTLINED_FUNCTION_9_7();
  swift_retain_n();
  v13 = sub_25BAA49B8();
  OUTLINED_FUNCTION_18_8(v13, v14, v15, v16);

  sub_25BAA4AF4(v28);
  v17 = sub_25BAA49B8();
  OUTLINED_FUNCTION_18_8(v17, v18, v19, v20);

  sub_25BAA4AF4(v28);
  type metadata accessor for TensorRepresentation();
  OUTLINED_FUNCTION_16_3();
  LOBYTE(v28[0]) = 1;
  v21 = OUTLINED_FUNCTION_7_10();
  sub_25BC0CBC8(v21);
  OUTLINED_FUNCTION_17_7();
  v22 = OUTLINED_FUNCTION_15_7();
  OUTLINED_FUNCTION_14_2(v22);
  sub_25BAA6EB0();
  OUTLINED_FUNCTION_9_7();

  result = sub_25BA9C2C8(v30);
  *v1 = v22;
  return result;
}

uint64_t sub_25BB2E70C(uint64_t result, void *a2, char a3, char a4)
{
  if (!*(result + 16))
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = a2[2];
  if (!v6)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v6 != 1)
  {
    v16[7] = v4;
    v16[8] = v5;
    v9 = *(result + 32);
    v10 = a2[4];
    v15[0] = a2[5];
    v15[1] = v9;

    Tensor.cumulativeSum(alongAxis:exclusive:reverse:)(v16, v15, a3 & 1, (a4 & 1) == 0);
    v11 = v16[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_25BCBAE50;
    *(v12 + 32) = v11;
    v13 = *(v10 + 16);

    *(v12 + 40) = sub_25BAC42B0();
    *(v12 + 48) = v14;

    return v12;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_25BB2E84C(uint64_t a1, char a2, char a3, void (*a4)(_OWORD *, void, void))
{
  v10 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4588, &qword_25BCBE630);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_25BCBAE70;
  *(v11 + 32) = 0;
  *(v11 + 40) = 0;
  *(v11 + 48) = 0;
  v12 = *(*(*(v10 + 16) + 152) + 16);
  if (!v12)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5 = v11;
  *(v11 + 56) = -v12;
  *(v11 + 64) = v12 - 1;
  *(v11 + 72) = 1;
  if ((sub_25BAB74D0(a1, v11, 0, 4) & 1) == 0)
  {
    goto LABEL_9;
  }

  v16[1] = v10;
  if (a1 < 0xFFFFFFFF80000000)
  {
    goto LABEL_7;
  }

  if (a1 > 0x7FFFFFFF)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    *&v17[0] = a1;
    *(v17 + 8) = xmmword_25BCBE5F0;
    BYTE8(v17[1]) = 0;
    v18 = v5;
    LOBYTE(v19) = 4;
    v20 = 7;
    OUTLINED_FUNCTION_2_14();
    sub_25BADDD28();
  }

  v19 = 0;
  v18 = 0u;
  memset(v17, 0, sizeof(v17));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C8, &unk_25BCC2630);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25BCBAE50;
  *(inited + 32) = a1;
  sub_25BAA51C8(v17, v15);
  sub_25BB2F098(MEMORY[0x277D84F90], inited, v15, v16);
  sub_25BA9C2C8(v17);
  *&v17[0] = v16[0];
  a4(v17, a2 & 1, a3 & 1);
}

uint64_t Tensor.cumulativeProduct(alongAxis:exclusive:reverse:)(uint64_t a1)
{
  OUTLINED_FUNCTION_6_16(a1);
  if (!v3)
  {
    v30[56] = v2;
    v28[0] = sub_25BC8FACC();
    v28[1] = v24;
    OUTLINED_FUNCTION_0_17();
    OUTLINED_FUNCTION_2_14();
    sub_25BADDD28();
  }

  OUTLINED_FUNCTION_11_12();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_5_14(v4);

  sub_25BAAF074(sub_25BB2F49C);

  v30[55] = 0;
  OUTLINED_FUNCTION_1_15("/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/CumulativeOps.swift");
  v31 = xmmword_25BCBE600;
  OUTLINED_FUNCTION_4_15(v5);
  type metadata accessor for CumulativeOperation();
  swift_allocObject();
  OUTLINED_FUNCTION_10_7();
  v6 = OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_13_6(v6, v7, v8, 1, v9, v10, v11, v12, v25, v26, v27);
  OUTLINED_FUNCTION_12_7();
  sub_25BAA51C8(v30, v29);
  type metadata accessor for ContextManager();
  OUTLINED_FUNCTION_9_7();
  swift_retain_n();
  v13 = sub_25BAA49B8();
  OUTLINED_FUNCTION_18_8(v13, v14, v15, v16);

  sub_25BAA4AF4(v28);
  v17 = sub_25BAA49B8();
  OUTLINED_FUNCTION_18_8(v17, v18, v19, v20);

  sub_25BAA4AF4(v28);
  type metadata accessor for TensorRepresentation();
  OUTLINED_FUNCTION_16_3();
  LOBYTE(v28[0]) = 1;
  v21 = OUTLINED_FUNCTION_7_10();
  sub_25BC0CBC8(v21);
  OUTLINED_FUNCTION_17_7();
  v22 = OUTLINED_FUNCTION_15_7();
  OUTLINED_FUNCTION_14_2(v22);
  sub_25BAA6EB0();
  OUTLINED_FUNCTION_9_7();

  result = sub_25BA9C2C8(v30);
  *v1 = v22;
  return result;
}

uint64_t sub_25BB2EC3C(uint64_t result, void *a2, char a3, char a4)
{
  if (!*(result + 16))
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = a2[2];
  if (!v6)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v6 != 1)
  {
    v18[9] = v4;
    v18[10] = v5;
    v9 = *(result + 32);
    v11 = a2[4];
    v16 = a2[5];
    v10 = v16;
    v17 = v11;

    Tensor.cumulativeProduct(alongAxis:exclusive:reverse:)(v18, &v16, a3 & 1, a4 & 1);
    v16 = v9;
    v17 = v18[0];
    static Tensor.* infix(_:_:)();
    v16 = v10;
    v17 = v18[0];
    Tensor.cumulativeSum(alongAxis:exclusive:reverse:)(&v16);

    v17 = v11;
    static Tensor./ infix(_:_:)();

    v12 = v18[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_25BCBAE50;
    *(v13 + 32) = v12;
    v14 = *(v11 + 16);

    *(v13 + 40) = sub_25BAC42B0();
    *(v13 + 48) = v15;

    return v13;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_25BB2EE50@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X3>, void (*a3)(uint64_t, void, _BYTE *, uint64_t, uint64_t, uint64_t, uint64_t)@<X4>, uint64_t *a4@<X8>)
{
  v6 = *v4;
  v7 = *(*(*(*v4 + 16) + 152) + 16);
  if (-v7 > a1 || v7 <= a1)
  {
    v22[1] = 0;
    v22[2] = 0;
    v22[0] = a1;
    v23 = -1;
    v25 = 0;
    v26 = 0;
    v24 = v7;
    v27 = -1;
    v30 = 4;

    sub_25BADDD28();
  }

  v32[55] = 0;
  OUTLINED_FUNCTION_1_15("/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/SortingOps.swift");
  v33 = v11;
  v13 = OUTLINED_FUNCTION_4_15(v12);
  v14(v13);
  swift_allocObject();

  v15 = OUTLINED_FUNCTION_3();
  v16 = a2(v15);
  sub_25BAA51C8(*(v6 + 16) + 168, v32);
  sub_25BAA51C8(v32, v31);
  type metadata accessor for ContextManager();
  swift_retain_n();
  sub_25BAA49B8();
  sub_25BAA4A5C(v22);

  v17 = v29;

  sub_25BAA4AF4(v22);
  sub_25BAA49B8();
  sub_25BAA4A5C(v22);

  v18 = v28;

  sub_25BAA4AF4(v22);
  type metadata accessor for TensorRepresentation();
  v19 = OUTLINED_FUNCTION_16_3();
  LOBYTE(v22[0]) = 1;
  a3(v16, 0, v31, 0x100000000, v17, v18, v19);
  OUTLINED_FUNCTION_17_7();
  v20 = OUTLINED_FUNCTION_15_7();
  OUTLINED_FUNCTION_14_2(v20);
  sub_25BAA6EB0();

  result = sub_25BA9C2C8(v32);
  *a4 = v20;
  return result;
}

uint64_t sub_25BB2F098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v33 = a2;
  if (*(a1 + 16))
  {
    while (1)
    {
      OUTLINED_FUNCTION_0();
      if (!v11)
      {
        break;
      }

      if (v9 == 1)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_14:
    swift_once();
LABEL_13:
    v25[0] = a1;
    LOBYTE(v26) = 2;
    sub_25BAA4B48(v25, &v26, v30, sub_25BACC614, v4);
    v14 = v13;

    sub_25BAA51C8(v30, v25);
    type metadata accessor for TensorRepresentation();
    v15 = OUTLINED_FUNCTION_16_3();
    ObjectType = swift_getObjectType();
    v17 = swift_unknownObjectRetain();
    LOBYTE(v26) = 1;
    sub_25BAA5BB4(v17, v25, 0x100000000, v15, ObjectType, v14);
    OUTLINED_FUNCTION_17_7();
    v18 = OUTLINED_FUNCTION_15_7();
    OUTLINED_FUNCTION_14_2(v18);
    sub_25BAA6EB0();
    swift_unknownObjectRelease();

    sub_25BA9C2C8(a3);
    sub_25BA9C2C8(v30);
    sub_25BA9C2C8(v32);

    *a4 = v18;
    return result;
  }

  v10 = 1;
LABEL_7:
  if (v10 == *(a2 + 16))
  {
    v12 = sub_25BAA51C8(a3, v32);
    MEMORY[0x28223BE20](v12);
    v4 = v24;
    v24[2] = &v33;
    sub_25BAA51C8(v32, &v26);
    if (*(&v27 + 1))
    {
      v30[0] = v26;
      v30[1] = v27;
      v30[2] = v28;
      v31 = v29;
    }

    else
    {
      type metadata accessor for ContextManager();
      sub_25BAA49B8();
      sub_25BAA4A5C(v25);

      sub_25BAA51C8(v25, v30);
      sub_25BAA4AF4(v25);
      if (*(&v27 + 1))
      {
        sub_25BA9C2C8(&v26);
      }
    }

    if (qword_28154F2C8 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v25[0] = 0;
  v25[1] = 0xE000000000000000;
  sub_25BCB70FC();
  MEMORY[0x25F876C90](0xD000000000000013, 0x800000025BCDA710);
  if (*(a1 + 16))
  {
    while (1)
    {
      OUTLINED_FUNCTION_0();
      if (!v11)
      {
        break;
      }

      if (v20 == 1)
      {
        goto LABEL_21;
      }
    }

    __break(1u);

    sub_25BA9C2C8(v30);
    sub_25BA9C2C8(v32);

    __break(1u);
  }

  v21 = 1;
LABEL_21:
  v32[0] = v21;
  v22 = sub_25BCB77FC();
  MEMORY[0x25F876C90](v22);

  MEMORY[0x25F876C90](0x7372616C61637320, 0xED00002074756220);
  v32[0] = *(a2 + 16);
  v23 = sub_25BCB77FC();
  MEMORY[0x25F876C90](v23);

  MEMORY[0x25F876C90](0x7270206572657720, 0xEF2E64656469766FLL);
  result = sub_25BCB74CC();
  __break(1u);
  return result;
}

uint64_t sub_25BB2F4A8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_25BCBAE60;
  v2 = v0[6];
  *(v1 + 32) = v0[5];
  *(v1 + 40) = v2;
  *(v1 + 48) = v0[7];

  return v1;
}

uint64_t sub_25BB2F524()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_25BCBAE40;
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;

  return v1;
}

uint64_t sub_25BB2F588()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB3630, &unk_25BCBB080);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_25BCBAE50;
  v2 = *(v0 + 88);
  *(v1 + 32) = *(v0 + 80);
  *(v1 + 40) = v2;
  sub_25BCB617C();
  return v1;
}

uint64_t sub_25BB2F5EC(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, _OWORD *a8, uint64_t a9, uint64_t a10)
{
  v15 = *a7;
  v16 = *(a7 + 8);
  if (!a3)
  {
    a1 = sub_25BAA5EA0(0x7463656C6573, 0xE600000000000000);
  }

  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  *(v10 + 48) = a5;
  *(v10 + 88) = v16;
  v17 = a8[1];
  *(v10 + 96) = *a8;
  *(v10 + 112) = v17;
  *(v10 + 128) = a8[2];
  *(v10 + 138) = *(a8 + 42);
  *(v10 + 56) = a6;
  *(v10 + 64) = a9;
  *(v10 + 72) = a10;
  *(v10 + 80) = v15;
  return v10;
}

uint64_t sub_25BB2F690(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_25BAC4018();
  v8 = (v2 + 40);
  v7 = *(v2 + 40);
  if (v6 != sub_25BAC4018())
  {
    v9 = *(a1 + 16);
    v8 = (v3 + 48);
    v10 = *(v3 + 48);
    if (sub_25BAC4018() != v9)
    {
      v11 = *(a1 + 16);
      v13 = *(v3 + 56);
      v12 = (v3 + 56);
      if (sub_25BAC4018() != v11)
      {
        return 0;
      }

      v8 = v12;
    }
  }

  v15 = *v8;
  *v8 = a2;

  return 1;
}

void *sub_25BB2F73C()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[9];
  sub_25BA9D148(v0[8]);
  v6 = v0[10];

  return v0;
}

uint64_t sub_25BB2F784()
{
  sub_25BB2F73C();

  return swift_deallocClassInstance();
}

uint64_t sub_25BB2F7FC()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  sub_25BA9D8C4(v1);
  return v1;
}

uint64_t sub_25BB2F884(uint64_t a1)
{
  result = sub_25BB2F8C8(qword_27FBB4590);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB2F8C8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SelectOperation();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_25BB2F958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

uint64_t sub_25BB2F9A0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);
  *(v0 + 32) = 0;

  if (v2)
  {
    do
    {

      if (!swift_isUniquelyReferenced_native())
      {
        break;
      }

      v3 = *(v2 + 32);
      swift_retain_n();

      v2 = v3;
    }

    while (v3);
  }

  return v0;
}

uint64_t sub_25BB2FA20()
{
  sub_25BB2F9A0();

  return swift_deallocClassInstance();
}

uint64_t sub_25BB2FA68()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_ypSbIegnd_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_25BB2FABC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25BB2FAFC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_25BB2FB70()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3850, &qword_25BCBB820);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_25BCBAE50;
  v2 = v0[3];
  *(v1 + 32) = v0[2];
  *(v1 + 40) = v2;
  sub_25BCB617C();

  v3 = 0;
  for (i = 2; ; ++i)
  {
    v5 = v0[4];
    if (!v5)
    {
      break;
    }

    v7 = v5[2];
    v6 = v5[3];
    v8 = *(v1 + 24);
    v9 = v0[4];

    sub_25BCB617C();
    if (i - 1 >= v8 >> 1)
    {
      sub_25BAFD258();
      v1 = v11;
    }

    *(v1 + 16) = i;
    v10 = v1 + v3;
    *(v10 + 48) = v7;
    *(v10 + 56) = v6;
    v3 += 16;
    v0 = v5;
  }

  v12 = swift_allocObject();

  *(v12 + 16) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB46A8, &qword_25BCBE970);
  result = swift_allocObject();
  *(result + 16) = sub_25BB30804;
  *(result + 24) = v12;
  return result;
}

uint64_t sub_25BB2FCC0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  swift_beginAccess();
  if (*(*(a1 + 16) + 16))
  {
    sub_25BB30D3C();
    if (v5 == 1)
    {
      sub_25BB30924(*(*(a1 + 16) + 16) - 1);
    }
  }

  else
  {
    v4 = 0;
    v5 = 1;
  }

  *a2 = v4;
  a2[1] = v5;
  return swift_endAccess();
}

uint64_t sub_25BB2FD50@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = sub_25BB2FB70();

  *a1 = v4;
  return result;
}

uint64_t sub_25BB2FD94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB46B8, &qword_25BCBE988);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v23 - v7;
  v9 = sub_25BCB7AAC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25BCB7A5C();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_25BB30D98(v8);
  }

  else
  {
    (*(v10 + 32))(v13, v8, v9);
    sub_25BB2FD94(v13, a2, a3);
    (*(v10 + 8))(v13, v9);
  }

  sub_25BCB7A9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB46C0, &qword_25BCBE990);
  v14 = swift_dynamicCastClass();
  if (v14)
  {
    v15 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB46D0, &qword_25BCBE9A8);
    swift_allocObject();
    v16 = sub_25BB30BA0(v15);
  }

  else
  {

    v17 = sub_25BBA894C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB46C8, &qword_25BCBE998);
    swift_allocObject();
    sub_25BB30C84(v17);
  }

  v18 = MEMORY[0x28223BE20](v16);
  v19 = *(a3 + 16);
  v23[-2] = v19;
  v23[-1] = a2;
  MEMORY[0x28223BE20](v18);
  v23[-4] = v19;
  v23[-3] = sub_25BB30E00;
  v23[-2] = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3868, &qword_25BCBE9A0);
  _s17RecursiveChildrenV9LabelPathCMa();
  swift_getTupleTypeMetadata2();
  v21 = sub_25BB301AC();

  v23[0] = v21;
  sub_25BCB68CC();
  swift_getWitnessTable();
  return sub_25BCB686C();
}

void *sub_25BB30124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  _s17RecursiveChildrenV9LabelPathCMa();
  v10 = sub_25BB2F958(a2, a3, a5);
  sub_25BB2BA90(a4, a1);

  sub_25BCB617C();
  return v10;
}

uint64_t sub_25BB301AC()
{
  v1 = sub_25BCB73AC();
  if (v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3EC8, qword_25BCC3F80);
    swift_dynamicCast();
    swift_willThrowTypedImpl();
  }

  return v1;
}

uint64_t sub_25BB30264@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v46 = a2;
  v52 = a1;
  v4 = *(a1 + 16);
  v53 = sub_25BCB6E8C();
  OUTLINED_FUNCTION_9();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  v11 = &v45 - v10;
  OUTLINED_FUNCTION_9();
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v16);
  v49 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_25BCB7AAC();
  OUTLINED_FUNCTION_9();
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v22);
  v24 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = _s17RecursiveChildrenV9LabelPathCMa();
  v26 = (v19 + 8);
  v50 = (v13 + 32);
  v47 = (v13 + 8);
  v48 = (v6 + 8);
  while (1)
  {
    while (1)
    {
      swift_getTupleTypeMetadata2();
      v27 = sub_25BCB68CC();
      WitnessTable = swift_getWitnessTable();
      v29 = swift_getWitnessTable();
      MEMORY[0x25F8773F0](&v54, v27, WitnessTable, v29);
      if (!v54)
      {
        v36 = sub_25BCB6E8C();
        (*(*(v36 - 8) + 8))(&v54, v36);
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBB46B0, &qword_25BCBE978);
        TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
        v38 = v46;
        v39 = 1;
        return __swift_storeEnumTagSinglePayload(v38, v39, 1, TupleTypeMetadata2);
      }

      v56 = v54;
      sub_25BB1D62C(&v55, v57);
      v30 = v56;
      sub_25BB1D62C(v57, &v58);
      v31 = *(v3 + 8);
      if (!v31 || (v32 = *(v3 + 16), (v31(&v58) & 1) != 0))
      {
        sub_25BB2BA90(&v58, &v56);
        sub_25BCB7A6C();

        sub_25BB2FD94(v24, v30, v52);

        (*v26)(v24, v51);
      }

      sub_25BB2BA90(&v58, &v56);
      if (swift_dynamicCast())
      {
        break;
      }

      __swift_storeEnumTagSinglePayload(v11, 1, 1, v4);
      __swift_destroy_boxed_opaque_existential_1(&v58);
      (*v48)(v11, v53);
    }

    v33 = v25;
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v4);
    v34 = v49;
    v35 = *v50;
    (*v50)(v49, v11, v4);
    __swift_project_boxed_opaque_existential_1(&v58, v59);
    if (swift_getDynamicType() != v53)
    {
      break;
    }

    (*v47)(v34, v4);
    __swift_destroy_boxed_opaque_existential_1(&v58);
    v25 = v33;
  }

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBB46B0, &qword_25BCBE978);
  v40 = swift_getTupleTypeMetadata2();
  v41 = *(v40 + 48);
  v56 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3858, &qword_25BCBE980);
  swift_getWitnessTable();
  v42 = sub_25BCB68DC();
  __swift_destroy_boxed_opaque_existential_1(&v58);
  v43 = v46;
  *v46 = v42;
  v35(v43 + v41, v34, v4);
  v38 = v43;
  v39 = 0;
  TupleTypeMetadata2 = v40;
  return __swift_storeEnumTagSinglePayload(v38, v39, 1, TupleTypeMetadata2);
}

void sub_25BB3080C(unint64_t a1)
{
  if ((OUTLINED_FUNCTION_124_0() & 1) == 0)
  {
    sub_25BBF1360(v1);
    v1 = v10;
  }

  v4 = *(v1 + 16);
  if (v4 <= a1)
  {
    __break(1u);
  }

  else
  {
    v5 = v4 - 1;
    v6 = (v1 + 24 * a1);
    v7 = v6[4];
    v6 += 4;
    v9 = v6[1];
    v8 = v6[2];
    sub_25BAC9924(v6 + 3);
    *(v1 + 16) = v5;
    *v2 = v1;
  }
}

void sub_25BB30898(unint64_t a1@<X0>, void *a2@<X8>)
{
  if ((OUTLINED_FUNCTION_124_0() & 1) == 0)
  {
    sub_25BBF1454(v2);
    v2 = v7;
  }

  v5 = *(v2 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v2 + 144 * a1;
    memcpy(a2, (v6 + 32), 0x88uLL);
    sub_25BC561F4((v6 + 176), v5 - 1 - a1, (v6 + 32));
    OUTLINED_FUNCTION_1_16();
  }
}

void sub_25BB30924(unint64_t a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_25BBF146C(v3);
    v3 = v10;
  }

  v4 = *(v3 + 16);
  if (v4 <= a1)
  {
    __break(1u);
  }

  else
  {
    v5 = v4 - 1;
    v6 = v4 - 1 - a1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    sub_25BAC9480((v7 + 48), v6, (v7 + 32));
    *(v3 + 16) = v5;
    *v1 = v3;
  }
}

void sub_25BB309AC(unint64_t a1@<X0>, void *a2@<X8>)
{
  if ((OUTLINED_FUNCTION_124_0() & 1) == 0)
  {
    sub_25BBF14B4(v2);
    v2 = v7;
  }

  v5 = *(v2 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v2 + 240 * a1;
    memcpy(a2, (v6 + 32), 0xECuLL);
    sub_25BC56184((v6 + 272), v5 - 1 - a1, (v6 + 32));
    OUTLINED_FUNCTION_1_16();
  }
}

void sub_25BB30A38(unint64_t a1)
{
  if ((OUTLINED_FUNCTION_124_0() & 1) == 0)
  {
    sub_25BBF14CC(v1);
    v1 = v7;
  }

  v3 = *(v1 + 16);
  if (v3 <= a1)
  {
    __break(1u);
  }

  else
  {
    v4 = v3 - 1 - a1;
    v5 = v1 + 8 * a1;
    v6 = *(v5 + 32);
    sub_25BAB254C(v5 + 40, v4, v5 + 32);
    OUTLINED_FUNCTION_1_16();
  }
}

uint64_t sub_25BB30AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a6 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v13(v10, v12);
  if (v6)
  {
    swift_allocError();
    return (*(v8 + 32))(v15, v12, a6);
  }

  return result;
}

void *sub_25BB30BA0(uint64_t a1)
{
  v1[6] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB46D8, &unk_25BCBE9B0);
  v3 = swift_allocObject();
  *(v3 + 16) = *(a1 + 32);
  v4 = sub_25BB30E7C(&qword_27FBB46E0, &qword_27FBB46D8, &unk_25BCBE9B0);
  v5 = swift_allocObject();
  *(v5 + 16) = *(a1 + 16);
  v1[2] = v3;
  v1[3] = v4;
  v1[4] = v5;
  v1[5] = v4;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return v1;
}

void *sub_25BB30C84(uint64_t a1)
{
  v1[6] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB46E8, &unk_25BCBE9C0);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = sub_25BB30E7C(&qword_27FBB46F0, &qword_27FBB46E8, &unk_25BCBE9C0);
  v5 = *(a1 + 16);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v1[2] = v3;
  v1[3] = v4;
  v1[4] = v6;
  v1[5] = v4;
  return v1;
}

void sub_25BB30D3C()
{
  v1 = *v0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_25BBF146C(v1);
    v1 = v7;
  }

  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = v1 + 16 * v3;
    v5 = *(v4 + 32);
    v6 = *(v4 + 40);
    *(v1 + 16) = v3;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_25BB30D98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB46B8, &qword_25BCBE988);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25BB30E08@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  result = v4(a2 + 1, *a1, a1[1], a1 + 2);
  *a2 = result;
  return result;
}

uint64_t sub_25BB30E7C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_25BB30EC4(void *a1@<X8>)
{
  if ((OUTLINED_FUNCTION_124_0() & 1) == 0)
  {
    sub_25BBF14B4(v1);
    v1 = v4;
  }

  v3 = *(v1 + 16);
  if (v3)
  {
    memcpy(a1, (v1 + 240 * v3 - 208), 0xECuLL);
    OUTLINED_FUNCTION_1_16();
  }

  else
  {
    __break(1u);
  }
}

void sub_25BB30F30()
{
  if ((OUTLINED_FUNCTION_124_0() & 1) == 0)
  {
    sub_25BBF14CC(v0);
    v0 = v5;
  }

  v2 = *(v0 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = *(v0 + 8 * v3 + 32);
    *(v0 + 16) = v3;
    *v1 = v0;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_25BB30F88()
{
  OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_1_17();
  v1 = *(v0 + 16);
  swift_unknownObjectRetain();
  v2 = OUTLINED_FUNCTION_0_18();
  v3 = v1(v2);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_25BB30FF8()
{
  OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_1_17();
  v1 = *(v0 + 24);
  swift_unknownObjectRetain();
  v2 = OUTLINED_FUNCTION_0_18();
  v3 = v1(v2);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_25BB31060()
{
  OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_1_17();
  v1 = *(v0 + 32);
  swift_unknownObjectRetain();
  v2 = OUTLINED_FUNCTION_0_18();
  v3 = v1(v2);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_25BB310C0()
{
  v3 = *(v0 + 16);
  swift_getObjectType();
  if (!dynamic_cast_existential_1_conditional(v3))
  {
    return MEMORY[0x277D84F90];
  }

  v5 = v4;
  swift_getObjectType();
  OUTLINED_FUNCTION_1_17();
  v6 = *(v2 + 24);
  swift_unknownObjectRetain();
  v7 = v6(v1, v5);
  swift_unknownObjectRelease();
  return v7;
}

uint64_t sub_25BB3115C()
{
  OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_1_17();
  v1 = *(v0 + 56);
  swift_unknownObjectRetain();
  v2 = OUTLINED_FUNCTION_0_18();
  v3 = v1(v2);
  swift_unknownObjectRelease();
  return v3 & 1;
}

double sub_25BB311BC@<D0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v6 = *(v4 + 48);
  swift_unknownObjectRetain();
  v6(v9, ObjectType, v4);
  swift_unknownObjectRelease();
  v7 = v9[1];
  *a1 = v9[0];
  a1[1] = v7;
  a1[2] = v10[0];
  result = *(v10 + 10);
  *(a1 + 42) = *(v10 + 10);
  return result;
}

uint64_t sub_25BB31258()
{
  OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_1_17();
  v1 = *(v0 + 40);
  swift_unknownObjectRetain();
  v2 = OUTLINED_FUNCTION_0_18();
  v3 = v1(v2);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_25BB312B8()
{
  v3 = *(v0 + 16);
  swift_getObjectType();
  v5 = dynamic_cast_existential_1_conditional(v3);
  if (v5)
  {
    v6 = v4;
    swift_getObjectType();
    OUTLINED_FUNCTION_1_17();
    v7 = *(v2 + 16);
    swift_unknownObjectRetain();
    v5 = v7(v1, v6);
    swift_unknownObjectRelease();
  }

  return v5;
}

uint64_t sub_25BB3135C(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_getObjectType();
  result = dynamic_cast_existential_1_conditional(v3);
  if (result)
  {
    v6 = v5;
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 32);
    swift_unknownObjectRetain();
    v9 = v8(a1, ObjectType, v6);
    swift_unknownObjectRelease();
    return v9 & 1;
  }

  return result;
}

uint64_t sub_25BB31404(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v8 = *(v6 + 80);
  swift_unknownObjectRetain();
  LOBYTE(a2) = v8(a1, a2, ObjectType, v6);
  swift_unknownObjectRelease();
  return a2 & 1;
}

double sub_25BB314C4@<D0>(_OWORD *a1@<X8>)
{
  sub_25BB311BC(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  a1[2] = v5[0];
  result = *(v5 + 10);
  *(a1 + 42) = *(v5 + 10);
  return result;
}

uint64_t sub_25BB31514()
{
  OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_1_17();
  v1 = *(v0 + 64);
  swift_unknownObjectRetain();
  v2 = OUTLINED_FUNCTION_0_18();
  v3 = v1(v2);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_25BB3157C(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v6 = *(v4 + 88);
  swift_unknownObjectRetain();
  LOBYTE(a1) = v6(a1, ObjectType, v4);
  swift_unknownObjectRelease();
  return a1 & 1;
}

uint64_t sub_25BB3160C(uint64_t a1)
{
  v3 = *v1;
  WitnessTable = swift_getWitnessTable();
  return sub_25BC60CAC(a1, WitnessTable);
}

uint64_t sub_25BB31658(uint64_t a1)
{
  v2 = v1;
  v15 = *(v2 + 16);
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3E40, &qword_25BCC88E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB46F8, &qword_25BCBEA90);
  if (!swift_dynamicCast())
  {
    v14 = 0;
    memset(v13, 0, sizeof(v13));
    sub_25BB31954(v13);
    *&v9 = 0;
    *(&v9 + 1) = 0xE000000000000000;
    sub_25BCB70FC();
    v13[0] = v9;
    MEMORY[0x25F876C90](0xD000000000000013, 0x800000025BCDB070);
    v7 = *(v2 + 16);
    swift_getObjectType();
    v8 = sub_25BCB7C1C();
    MEMORY[0x25F876C90](v8);

    MEMORY[0x25F876C90](0xD00000000000003ALL, 0x800000025BCDB090);
    v9 = v13[0];
    v12 = 9;
    sub_25BCB617C();
    sub_25BA97890();
  }

  sub_25BA97060(v13, &v9);
  v4 = v10;
  v5 = v11;
  __swift_project_boxed_opaque_existential_1(&v9, v10);
  (*(v5 + 8))(a1, v4, v5);
  return __swift_destroy_boxed_opaque_existential_1(&v9);
}

uint64_t sub_25BB31830()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_25BB3188C(uint64_t a1)
{
  result = sub_25BB31914(&qword_28154E3C0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB318D0(uint64_t a1)
{
  result = sub_25BB31914(qword_28154E3C8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB31914(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PassthroughOperation();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25BB31954(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4700, &qword_25BCBEA98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25BB319C0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v94 = a1;
  v97 = a3;
  v93 = a2;
  v5 = sub_25BCB5C9C();
  v6 = OUTLINED_FUNCTION_2(v5);
  v96 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_50();
  v100 = v10;
  MEMORY[0x28223BE20](v11);
  v98 = &v79 - v12;
  v99 = sub_25BCB5BCC();
  v13 = OUTLINED_FUNCTION_2(v99);
  v101 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_50();
  v87 = v17;
  MEMORY[0x28223BE20](v18);
  v86 = &v79 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4840, &qword_25BCBEAA0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v92 = (&v79 - v22);
  v23 = sub_25BCB5DDC();
  v24 = OUTLINED_FUNCTION_2(v23);
  v88 = v25;
  v89 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_1();
  v30 = v29 - v28;
  v91 = sub_25BCB5E7C();
  v31 = OUTLINED_FUNCTION_2(v91);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_1();
  v38 = v37 - v36;
  v39 = sub_25BCB5E6C();
  v40 = OUTLINED_FUNCTION_2(v39);
  v90 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_1();
  v46 = v45 - v44;
  sub_25BCB5C7C();
  v47 = a4;
  sub_25BCB5BEC();
  v48 = v94;
  v49 = v95;
  sub_25BB320E8(v48, v46);
  if (v49)
  {
    v50 = sub_25BCB5C8C();
    OUTLINED_FUNCTION_6_4(v50);
    (*(v51 + 8))(v47);
  }

  else
  {
    v83 = v48;
    v84 = 0;
    v85 = v30;
    (*(v90 + 16))(v38, v46, v39);
    (*(v33 + 104))(v38, *MEMORY[0x277D253D8], v91);
    sub_25BCB5BFC();
    v53 = sub_25BCB5E5C();
    v54 = v92;
    sub_25BB3EE50(v93, v97, v53, v92);

    v55 = v89;
    if (__swift_getEnumTagSinglePayload(v54, 1, v89) == 1)
    {
      (*(v90 + 8))(v46, v39);

      return sub_25BB33D84(v54, &qword_27FBB4840, &qword_25BCBEAA0);
    }

    else
    {
      v56 = v47;
      v80 = v46;
      v81 = v39;
      v57 = v88;
      v58 = v85;
      (*(v88 + 32))(v85, v54, v55);
      v59 = *(sub_25BCB5DBC() + 16);
      v97 = v5;
      v82 = v56;
      if (v59)
      {
        OUTLINED_FUNCTION_3_13();
        v95 = *(v96 + 16);
        v60 = (*(v96 + 80) + 32) & ~*(v96 + 80);
        v79 = v57;
        v61 = v57 + v60;
        v93 = *(v96 + 72);
        v94 = (v96 + 16);
        v91 = v101 + 32;
        v92 = (v96 + 8);
        v62 = v86;
        do
        {
          v63 = OUTLINED_FUNCTION_7_11();
          v64 = v95;
          v95(v63);
          v64(v100, v58, v5);
          sub_25BCB5BDC();
          (*v92)(v58, v5);
          OUTLINED_FUNCTION_5_15();
          if (v66)
          {
            OUTLINED_FUNCTION_4_16(v65);
          }

          v67 = OUTLINED_FUNCTION_2_16();
          v68(v67, v62, v99);
          v61 += v93;
          --v59;
          v5 = v97;
        }

        while (v59);

        v57 = v88;
        v58 = v85;
      }

      else
      {
      }

      sub_25BCB5C3C();
      v69 = *(sub_25BCB5DCC() + 16);
      v70 = v101;
      if (v69)
      {
        OUTLINED_FUNCTION_3_13();
        v71 = *(v96 + 16);
        v72 = v57 + ((*(v96 + 80) + 32) & ~*(v96 + 80));
        v94 = *(v96 + 72);
        v95 = v71;
        v93 = v96 + 8;
        v91 = v57;
        v92 = (v70 + 32);
        v73 = v87;
        v96 += 16;
        do
        {
          v74 = OUTLINED_FUNCTION_7_11();
          v75 = v95;
          v95(v74);
          v75(v100, v58, v5);
          sub_25BCB5BDC();
          (*v93)(v58, v5);
          OUTLINED_FUNCTION_5_15();
          if (v66)
          {
            OUTLINED_FUNCTION_4_16(v76);
          }

          v77 = OUTLINED_FUNCTION_2_16();
          v78(v77, v73, v99);
          v72 += v94;
          --v69;
          v5 = v97;
        }

        while (v69);

        v57 = v88;
        v58 = v85;
      }

      else
      {
      }

      sub_25BCB5C6C();

      (*(v57 + 8))(v58, v89);
      return (*(v90 + 8))(v80, v81);
    }
  }
}

void sub_25BB320E8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v4 = sub_25BCB5E6C();
  v5 = OUTLINED_FUNCTION_2(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  v12 = v11 - v10;
  v24[0] = 0;
  v13 = [a1 serializeToProtobufWithError_];
  v14 = v24[0];
  sub_25BCB5A1C();

  if (v14)
  {
    swift_willThrow();

    a1 = v14;
  }

  else
  {
    v15 = OUTLINED_FUNCTION_8_12();
    sub_25BB33C70(v15, v16);
    OUTLINED_FUNCTION_8_12();
    sub_25BCB5CAC();
    if (!v23)
    {
      (*(v7 + 32))(a2, v12, v4);
      v20 = sub_25BCB614C();
      sub_25BB3242C(a2, v20);
      sub_25BB322B8();

      v21 = OUTLINED_FUNCTION_8_12();
      sub_25BB0D160(v21, v22);
      goto LABEL_5;
    }
  }

  v17 = OUTLINED_FUNCTION_8_12();
  sub_25BB0D160(v17, v18);

LABEL_5:
  v19 = *MEMORY[0x277D85DE8];
}

uint64_t sub_25BB322B8()
{
  result = sub_25BCB5E5C();
  v1 = result;
  v2 = 0;
  v3 = result + 64;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  for (i = (v4 + 63) >> 6; v6; v2 = v8)
  {
    v8 = v2;
LABEL_8:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
    v12 = *v10;
    v11 = v10[1];
    sub_25BCB617C();
    v13 = sub_25BCB5E4C();
    v14 = sub_25BB3A46C();
    v16 = v15;
    v17 = sub_25BCB5DDC();
    if (!__swift_getEnumTagSinglePayload(v16, 1, v17))
    {
      sub_25BB32EB4();
    }

    (v14)(&v18, 0);

    result = v13(v19, 0);
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v8 >= i)
    {
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25BB3242C(uint64_t a1, uint64_t a2)
{
  sub_25BCB617C();
  result = sub_25BCB5E5C();
  v3 = result;
  v4 = 0;
  v5 = result + 64;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(result + 64);
  for (i = (v6 + 63) >> 6; v8; v4 = v10)
  {
    v10 = v4;
LABEL_8:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = (*(v3 + 48) + ((v10 << 10) | (16 * v11)));
    v14 = *v12;
    v13 = v12[1];
    sub_25BCB617C();
    v20 = sub_25BCB5E4C();
    v15 = sub_25BB3A46C();
    v17 = v16;
    v18 = sub_25BCB5DDC();
    if (!__swift_getEnumTagSinglePayload(v17, 1, v18))
    {
      sub_25BCB617C();
      sub_25BB325E8(v17, a2);
    }

    (v15)(v21, 0);

    result = v20(v22, 0);
  }

  while (1)
  {
    v10 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v10 >= i)
    {
      swift_bridgeObjectRelease_n();
    }

    v8 = *(v5 + 8 * v10);
    ++v4;
    if (v8)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_25BB325E8(uint64_t a1, uint64_t a2)
{
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4720, &unk_25BCBEAC0);
  v4 = *(*(v110 - 8) + 64);
  MEMORY[0x28223BE20](v110);
  v109 = (&v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v99 = &v91 - v7;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3EB8, &qword_25BCBBE08);
  v97 = *(v98 - 8);
  v8 = *(v97 + 64);
  MEMORY[0x28223BE20](v98);
  v10 = &v91 - v9;
  v93 = a1;
  v11 = sub_25BCB5D9C();
  if (*(a2 + 16))
  {
    v13 = sub_25BA9266C(v11, v12);
    if (v14)
    {
      v15 = (*(a2 + 56) + 16 * v13);
      v17 = *v15;
      v16 = v15[1];
      sub_25BCB617C();
    }
  }

  sub_25BCB5DAC();
  v18 = sub_25BCB5D7C();
  v19 = *(v18 + 16);
  if (v19)
  {
    v120 = MEMORY[0x277D84F90];
    sub_25BB00AD4(0, v19, 0);
    v107 = v120;
    result = sub_25BBE144C(v18);
    v23 = 0;
    v111 = 0;
    v108 = v18 + 64;
    v24 = a2 + 64;
    v94 = v21;
    v92 = v18 + 72;
    v115 = v10;
    v96 = v18;
    v95 = v19;
    while ((result & 0x8000000000000000) == 0 && result < 1 << *(v18 + 32))
    {
      if ((*(v108 + 8 * (result >> 6)) & (1 << result)) == 0)
      {
        goto LABEL_55;
      }

      if (*(v18 + 36) != v21)
      {
        goto LABEL_56;
      }

      v103 = 1 << result;
      v104 = result >> 6;
      v102 = v21;
      v100 = v22;
      v101 = v23;
      v25 = *(v110 + 48);
      v26 = *(v18 + 56);
      v27 = (*(v18 + 48) + 16 * result);
      v28 = *v27;
      v112 = v27[1];
      v29 = result;
      v30 = sub_25BCB5CDC();
      v31 = *(v30 - 8);
      v32 = *(v31 + 72);
      v106 = v29;
      v33 = *(v31 + 16);
      v34 = v99;
      v33(&v99[v25], v26 + v32 * v29, v30);
      v35 = v109;
      v105 = v28;
      v36 = v112;
      *v109 = v28;
      *(v35 + 1) = v36;
      v37 = *(v110 + 48);
      (*(v31 + 32))(&v35[v37], &v34[v25], v30);
      v38 = *(v98 + 48);
      v33(v115 + v38, &v35[v37], v30);
      v39 = v115;
      sub_25BCB617C();
      v114 = v38;
      v40 = *(sub_25BCB5CCC() + 16);

      v113 = v40;
      if (v40)
      {
        v41 = 0;
        while (1)
        {
          v42 = sub_25BCB5CBC();
          v44 = v43;
          v45 = *v43;
          result = swift_isUniquelyReferenced_nonNull_native();
          *v44 = v45;
          if ((result & 1) == 0)
          {
            v68 = sub_25BCB617C();
            sub_25BBF1484(v68);
            v69 = *v44;
            *v44 = v70;

            v45 = *v44;
          }

          if (v41 >= *(v45 + 16))
          {
            break;
          }

          v116 = v41 + 1;
          v117 = v42;
          v46 = *(sub_25BCB5E2C() - 8);
          v47 = v45 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v41;
          v48 = sub_25BCB5E0C();
          v50 = v49;
          v51 = 1 << *(a2 + 32);
          if (v51 < 64)
          {
            v52 = ~(-1 << v51);
          }

          else
          {
            v52 = -1;
          }

          v53 = v52 & *(a2 + 64);
          v54 = (v51 + 63) >> 6;
          v55 = a2;
          sub_25BCB617C();
          v56 = 0;
          do
          {
            if (!v53)
            {
              while (1)
              {
                v57 = v56 + 1;
                if (__OFADD__(v56, 1))
                {
                  break;
                }

                if (v57 >= v54)
                {
                  a2 = v55;

                  goto LABEL_29;
                }

                v53 = *(v24 + 8 * v57);
                ++v56;
                if (v53)
                {
                  v56 = v57;
                  goto LABEL_25;
                }
              }

              __break(1u);
              goto LABEL_50;
            }

            v57 = v56;
LABEL_25:
            v58 = __clz(__rbit64(v53));
            v53 &= v53 - 1;
            v59 = (*(v55 + 48) + ((v57 << 10) | (16 * v58)));
            v61 = *v59;
            v60 = v59[1];
            sub_25BCB617C();
            LOBYTE(v61) = sub_25BCB64EC();
          }

          while ((v61 & 1) == 0);
          v118[0] = 46;
          v118[1] = 0xE100000000000000;
          MEMORY[0x28223BE20](v62);
          *(&v91 - 2) = v118;
          sub_25BCB617C();
          v63 = v111;
          result = sub_25BBB3568(0x7FFFFFFFFFFFFFFFLL, 1, sub_25BB33D64, (&v91 - 4), v48, v50);
          if (*(result + 16) < 2uLL)
          {
            goto LABEL_53;
          }

          v111 = v63;
          v64 = *(result + 64);
          v65 = *(result + 72);
          v66 = *(result + 80);
          v67 = *(result + 88);
          sub_25BCB617C();

          MEMORY[0x25F876C00](v64, v65, v66, v67);

          a2 = v55;

LABEL_29:
          sub_25BCB5E1C();
          v117(v119, 0);
          v39 = v115;
          v41 = v116;
          if (v116 == v113)
          {
            goto LABEL_30;
          }
        }

        __break(1u);
LABEL_53:
        __break(1u);
        break;
      }

LABEL_30:
      if (*(a2 + 16))
      {
        v71 = v105;
        v72 = v112;
        v73 = sub_25BA9266C(v105, v112);
        if (v74)
        {
          v75 = (*(a2 + 56) + 16 * v73);
          v71 = *v75;
          v72 = v75[1];
        }
      }

      else
      {
        v71 = v105;
        v72 = v112;
      }

      sub_25BCB617C();
      *v39 = v71;
      v39[1] = v72;
      sub_25BB33D84(v109, &qword_27FBB4720, &unk_25BCBEAC0);
      v76 = v107;
      v120 = v107;
      v78 = *(v107 + 16);
      v77 = *(v107 + 24);
      if (v78 >= v77 >> 1)
      {
        sub_25BB00AD4(v77 > 1, v78 + 1, 1);
        v76 = v120;
      }

      *(v76 + 16) = v78 + 1;
      v79 = (*(v97 + 80) + 32) & ~*(v97 + 80);
      v107 = v76;
      sub_25BB33DD8(v39, v76 + v79 + *(v97 + 72) * v78);
      v18 = v96;
      v80 = 1 << *(v96 + 32);
      result = v106;
      if (v106 >= v80)
      {
        goto LABEL_57;
      }

      v81 = *(v108 + 8 * v104);
      if ((v81 & v103) == 0)
      {
        goto LABEL_58;
      }

      if (*(v96 + 36) != v102)
      {
        goto LABEL_59;
      }

      v82 = v81 & (-2 << (v106 & 0x3F));
      if (v82)
      {
        v83 = v106;
        sub_25BB33E48(v106, v102, v100 & 1);
        v80 = __clz(__rbit64(v82)) | v83 & 0x7FFFFFFFFFFFFFC0;
        v84 = v101;
      }

      else
      {
        v85 = v104 << 6;
        v86 = v104 + 1;
        v87 = (v92 + 8 * v104);
        while (v86 < (v80 + 63) >> 6)
        {
          v89 = *v87++;
          v88 = v89;
          v85 += 64;
          ++v86;
          if (v89)
          {
            sub_25BB33E48(v106, v102, v100 & 1);
            v80 = __clz(__rbit64(v88)) + v85;
            goto LABEL_46;
          }
        }

        sub_25BB33E48(v106, v102, v100 & 1);
LABEL_46:
        v84 = v101;
      }

      v22 = 0;
      v23 = v84 + 1;
      result = v80;
      v21 = v94;
      if (v23 == v95)
      {

        v90 = v107;
        goto LABEL_51;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
  }

  else
  {
LABEL_50:

    v90 = MEMORY[0x277D84F90];
LABEL_51:
    sub_25BAFA648(v90);
    sub_25BCB5D8C();
  }

  return result;
}

uint64_t sub_25BB32EB4()
{
  v121 = sub_25BCB5E3C();
  v1 = *(v121 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v121);
  v120 = v110 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_25BCB5D0C();
  v4 = *(v128 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v128);
  v127 = v110 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4708, &qword_25BCBEAA8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v136 = v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v110 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4710, &qword_25BCBEAB0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = v110 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v119 = v110 - v18;
  MEMORY[0x28223BE20](v19);
  v137 = v110 - v20;
  v21 = sub_25BCB5D5C();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v116 = v110 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v135 = v110 - v26;
  v27 = sub_25BCB5D7C();
  v28 = 0;
  v30 = v27 + 64;
  v29 = *(v27 + 64);
  v125 = v27;
  v31 = 1 << *(v27 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & v29;
  v34 = (v31 + 63) >> 6;
  v130 = v22 + 16;
  v134 = (v22 + 32);
  v129 = *MEMORY[0x277D25290];
  v132 = (v22 + 8);
  v118 = (v4 + 32);
  v117 = (v1 + 8);
  v131 = v22;
  v110[0] = v22 + 40;
  v115 = (v4 + 8);
  v35 = v21;
  v123 = v27 + 64;
  v122 = v34;
  v110[1] = v0;
  if ((v32 & v29) != 0)
  {
LABEL_8:
    while (1)
    {
      v37 = __clz(__rbit64(v33));
      v33 &= v33 - 1;
      v38 = (*(v125 + 48) + ((v28 << 10) | (16 * v37)));
      v40 = *v38;
      v39 = v38[1];
      sub_25BCB617C();
      v41 = sub_25BCB5D6C();
      v42 = sub_25BB3A4C8();
      v44 = v43;
      v45 = sub_25BCB5CDC();
      if (!__swift_getEnumTagSinglePayload(v44, 1, v45))
      {
        break;
      }

      (v42)(v146, 0);

      v41(v147, 0);
LABEL_52:
      v30 = v123;
      v34 = v122;
      if (!v33)
      {
        goto LABEL_4;
      }
    }

    v112 = v42;
    v113 = v39;
    v46 = *(sub_25BCB5CCC() + 16);

    v139 = v46;
    if (!v46)
    {
LABEL_51:
      (v112)(v146, 0);

      v41(v147, 0);
      goto LABEL_52;
    }

    v47 = 0;
    v126 = v12;
    v140 = v16;
    v141 = v35;
    v138 = v41;
    v114 = v44;
    while (1)
    {
      v142 = sub_25BCB5CBC();
      v49 = v48;
      v50 = *v48;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v49 = v50;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_25BBF1484(v50);
        v50 = v108;
        *v49 = v108;
      }

      if (v47 >= *(v50 + 16))
      {
        goto LABEL_56;
      }

      v52 = *(sub_25BCB5E2C() - 8);
      v53 = v50 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v47;
      if (sub_25BCB5E0C() == 0x74736E6F63 && v54 == 0xE500000000000000)
      {
        break;
      }

      v56 = sub_25BCB789C();

      if (v56)
      {
        goto LABEL_22;
      }

LABEL_50:
      ++v47;
      v142(v145, 0);
      v16 = v140;
      v41 = v138;
      if (v139 == v47)
      {
        goto LABEL_51;
      }
    }

LABEL_22:
    v57 = sub_25BCB5DFC();
    if (*(v57 + 16) && (v58 = sub_25BA9266C(7102838, 0xE300000000000000), (v59 & 1) != 0))
    {
      (*(v131 + 16))(v137, *(v57 + 56) + *(v131 + 72) * v58, v141);
      v60 = 0;
    }

    else
    {
      v60 = 1;
    }

    v61 = v136;
    v62 = v137;
    v63 = v141;
    __swift_storeEnumTagSinglePayload(v137, v60, 1, v141);
    v35 = v63;

    if (__swift_getEnumTagSinglePayload(v62, 1, v63) == 1)
    {
      v64 = v62;
      v65 = &qword_27FBB4710;
      v66 = &qword_25BCBEAB0;
    }

    else
    {
      v67 = v135;
      v133 = *v134;
      v133(v135, v62, v35);
      sub_25BCB5D2C();
      v68 = sub_25BCB5D1C();
      if (__swift_getEnumTagSinglePayload(v12, 1, v68) == 1)
      {
        (*v132)(v67, v35);
      }

      else
      {
        sub_25BB33CC8(v12, v61);
        v69 = v61;
        v70 = *(v68 - 8);
        v71 = (*(v70 + 88))(v69, v68);
        if (v71 == v129)
        {
          (*(v70 + 96))(v69, v68);
          v72 = v35;
          (*v118)(v127, v69, v128);
          strcpy(v144, "@model_path/");
          HIBYTE(v144[6]) = 0;
          v144[7] = -5120;
          v73 = sub_25BCB5CFC();
          MEMORY[0x25F876C90](v73);

          v74 = v120;
          sub_25BCB5D4C();
          sub_25BCB5CEC();
          v75 = v119;
          sub_25BCB5D3C();

          (*v117)(v74, v121);
          __swift_storeEnumTagSinglePayload(v75, 0, 1, v72);
          v76 = v72;
          v77 = sub_25BCB5DEC();
          v79 = v78;
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v75, 1, v76);
          v124 = v77;
          if (EnumTagSinglePayload == 1)
          {
            sub_25BB33D84(v75, &qword_27FBB4710, &qword_25BCBEAB0);
            v81 = *v79;
            v82 = sub_25BA9266C(7102838, 0xE300000000000000);
            if (v83)
            {
              v84 = v82;
              v85 = *v79;
              swift_isUniquelyReferenced_nonNull_native();
              v143 = *v79;
              v86 = v143[3];
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4718, &qword_25BCBEAB8);
              sub_25BCB745C();
              v87 = v143;
              v88 = *(v143[6] + 16 * v84 + 8);

              v90 = v140;
              v89 = v141;
              v133(v140, v87[7] + *(v131 + 72) * v84, v141);
              sub_25BCB747C();
              v91 = 0;
              *v79 = v87;
              v92 = v128;
              v12 = v126;
            }

            else
            {
              v91 = 1;
              v92 = v128;
              v12 = v126;
              v90 = v140;
              v89 = v141;
            }

            v102 = v135;
            __swift_storeEnumTagSinglePayload(v90, v91, 1, v89);
            sub_25BB33D84(v90, &qword_27FBB4710, &qword_25BCBEAB0);
            v35 = v89;
          }

          else
          {
            v133(v116, v75, v76);
            v93 = *v79;
            swift_isUniquelyReferenced_nonNull_native();
            v111 = v79;
            v143 = *v79;
            v94 = v143;
            v95 = sub_25BA9266C(7102838, 0xE300000000000000);
            if (__OFADD__(v94[2], (v96 & 1) == 0))
            {
              goto LABEL_57;
            }

            v97 = v95;
            v98 = v96;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4718, &qword_25BCBEAB8);
            if (sub_25BCB745C())
            {
              v99 = sub_25BA9266C(7102838, 0xE300000000000000);
              v101 = v128;
              v12 = v126;
              if ((v98 & 1) != (v100 & 1))
              {
                goto LABEL_59;
              }

              v97 = v99;
            }

            else
            {
              v101 = v128;
              v12 = v126;
            }

            v35 = v141;
            v103 = v143;
            if (v98)
            {
              (*(v131 + 40))(v143[7] + *(v131 + 72) * v97, v116, v141);
            }

            else
            {
              v143[(v97 >> 6) + 8] |= 1 << v97;
              v104 = (v103[6] + 16 * v97);
              *v104 = 7102838;
              v104[1] = 0xE300000000000000;
              v133((v103[7] + *(v131 + 72) * v97), v116, v35);
              v105 = v103[2];
              v106 = __OFADD__(v105, 1);
              v107 = v105 + 1;
              if (v106)
              {
                goto LABEL_58;
              }

              v103[2] = v107;
            }

            *v111 = v103;
            v102 = v135;
            v92 = v101;
          }

          v124(v144, 0);
          (*v115)(v127, v92);
          (*v132)(v102, v35);
        }

        else
        {
          (*v132)(v135, v35);
          (*(v70 + 8))(v69, v68);
          v12 = v126;
        }
      }

      v64 = v12;
      v65 = &qword_27FBB4708;
      v66 = &qword_25BCBEAA8;
    }

    sub_25BB33D84(v64, v65, v66);
    goto LABEL_50;
  }

LABEL_4:
  while (1)
  {
    v36 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v36 >= v34)
    {
    }

    v33 = *(v30 + 8 * v36);
    ++v28;
    if (v33)
    {
      v28 = v36;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  result = sub_25BCB795C();
  __break(1u);
  return result;
}

uint64_t sub_25BB33C70(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_25BB33CC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4708, &qword_25BCBEAA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25BB33D84(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_6_4(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_25BB33DD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3EB8, &qword_25BCBBE08);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25BB33E48(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t Conv1D.weight.modify(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_21_5(a1);
  if (v2)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
  }

  else
  {
    if (v1 < 0)
    {
      OUTLINED_FUNCTION_86_0(v1);
      return OUTLINED_FUNCTION_113();
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
  }

  result = OUTLINED_FUNCTION_67();
  __break(1u);
  return result;
}

uint64_t (*Conv1D.bias.modify(uint64_t a1))()
{
  OUTLINED_FUNCTION_41_3(a1);
  if (!v3)
  {
    *v1 = 0;
    return sub_25BB3A330;
  }

  v4 = OUTLINED_FUNCTION_29(*(v2 + 16));
  if (v3)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
  }

  else
  {
    if (v4 < 0)
    {
      OUTLINED_FUNCTION_86_0(v4);
      return sub_25BB3A32C;
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
  }

  result = OUTLINED_FUNCTION_67();
  __break(1u);
  return result;
}

uint64_t sub_25BB33FB0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  OUTLINED_FUNCTION_80_1(a1);
  v49 = v11;
  v50 = v12;
  v14 = *v13;
  v15 = *(v13 + 8);
  type metadata accessor for LayerVariableReference();
  OUTLINED_FUNCTION_1_2();
  swift_allocObject();
  OUTLINED_FUNCTION_66();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4728, &unk_25BCBEAE0);
  *(OUTLINED_FUNCTION_68() + 16) = 0;
  OUTLINED_FUNCTION_22_5();
  if (v42)
  {
    goto LABEL_34;
  }

  v48 = v16;
  if ((v17 & 0x8000000000000000) == 0)
  {
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_46_2(v17);
  if ((OUTLINED_FUNCTION_35_2(v18) & 1) == 0)
  {
    OUTLINED_FUNCTION_108_1();
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_22_5();
  if (v42)
  {
    goto LABEL_34;
  }

  if ((v19 & 0x8000000000000000) == 0)
  {
LABEL_25:
    OUTLINED_FUNCTION_0_19();
    goto LABEL_26;
  }

  v20 = OUTLINED_FUNCTION_13_7(v19);
  if (!v21)
  {
LABEL_40:
    OUTLINED_FUNCTION_53_3();
    sub_25BCB617C();
    goto LABEL_41;
  }

  if (a5 != -1)
  {
    v22 = *(v20 + 32);
    if (a5)
    {
      v22 = *(v20 + 32) % a5;
    }

    if (v22)
    {
      OUTLINED_FUNCTION_2_17();
      goto LABEL_31;
    }
  }

  if (!v14)
  {
    OUTLINED_FUNCTION_1_2();
    swift_allocObject();
    OUTLINED_FUNCTION_92_2();
    v52 = sub_25BB1AB60(0);
    LOBYTE(v15) = 0;
    LOBYTE(v27) = 1;
    goto LABEL_20;
  }

  v23 = *(v14 + 32);
  OUTLINED_FUNCTION_48_3();
  if (v42)
  {
LABEL_34:
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
    goto LABEL_35;
  }

  if ((v24 & 0x8000000000000000) == 0)
  {
    goto LABEL_25;
  }

  v25 = v24 & 0x7FFFFFFFFFFFFFFFLL;
  v26 = *((v24 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  OUTLINED_FUNCTION_23_6();
  if (!v42)
  {
    OUTLINED_FUNCTION_9_8();
    OUTLINED_FUNCTION_106_1();
LABEL_31:
    while (1)
    {
      OUTLINED_FUNCTION_10_5();
LABEL_35:
      while (1)
      {
        sub_25BCB74CC();
        __break(1u);
LABEL_36:
        if (v43 < 0)
        {
          break;
        }

        OUTLINED_FUNCTION_18();
        OUTLINED_FUNCTION_100_1();
LABEL_26:
        OUTLINED_FUNCTION_7_0();
      }

      v44 = OUTLINED_FUNCTION_13_7(v43);
      if (!v45)
      {
        break;
      }

      v53 = *(v44 + 32);
      v46 = sub_25BCB77FC();
      MEMORY[0x25F876C90](v46);

      OUTLINED_FUNCTION_83_1();
    }

    goto LABEL_40;
  }

  OUTLINED_FUNCTION_99_1();
  if (!v42)
  {
    OUTLINED_FUNCTION_79_1();
    sub_25BAB3020(v38);
    sub_25BCB70FC();
    MEMORY[0x25F876C90](a4 + 13, 0x800000025BCDB380);
    v39 = OUTLINED_FUNCTION_91_1(*(v25 + 16));
    v40 = MEMORY[0x25F876F80](v39, MEMORY[0x277D83B88]);
    MEMORY[0x25F876C90](v40);

    v41 = OUTLINED_FUNCTION_37_2();
    MEMORY[0x25F876C90](v41, 0xE500000000000000);
    OUTLINED_FUNCTION_22_5();
    if (!v42)
    {
      goto LABEL_36;
    }

    goto LABEL_34;
  }

  v27 = (v15 >> 8) & 1;

  v52 = v14;
LABEL_20:

  OUTLINED_FUNCTION_22_5();
  if (v42)
  {
    goto LABEL_34;
  }

  if ((v28 & 0x8000000000000000) == 0)
  {
    goto LABEL_25;
  }

  v47 = v27;
  OUTLINED_FUNCTION_46_2(v28);
  v30 = *(v29 + 152);
  if (!v30[2])
  {
    goto LABEL_40;
  }

  v31 = v6;
  v32 = a3;
  v33 = a5;
  v34 = a4;
  v35 = v30[4];
  sub_25BCB617C();

  if (v30[2] <= 2uLL)
  {
    OUTLINED_FUNCTION_10_8();
LABEL_41:
    OUTLINED_FUNCTION_17_4();
LABEL_42:
    sub_25BADDD28();
  }

  v36 = v30[6];

  *a6 = v31;
  *(a6 + 8) = v50;
  *(a6 + 9) = v49;
  *(a6 + 16) = v52;
  *(a6 + 24) = v15 & 1;
  *(a6 + 25) = v47;
  *(a6 + 26) = v14 != 0;
  *(a6 + 32) = v35;
  *(a6 + 40) = v36;
  *(a6 + 48) = a2;
  *(a6 + 56) = v32;
  *(a6 + 64) = v34;
  *(a6 + 72) = v33;
  *(a6 + 80) = v48;
  return result;
}

void *Conv1D.init(weight:bias:stride:padding:dilation:groupCount:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v13 = *a1;
  v14 = *a2;
  type metadata accessor for LayerVariableReference();
  OUTLINED_FUNCTION_1_2();
  swift_allocObject();
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_87_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4728, &unk_25BCBEAE0);
  v15 = OUTLINED_FUNCTION_68();
  *(v15 + 16) = 0;
  __src[10] = v15;
  if ((OUTLINED_FUNCTION_35_2(*(v13 + 16)) & 1) == 0)
  {
    OUTLINED_FUNCTION_108_1();
    goto LABEL_24;
  }

  v16 = OUTLINED_FUNCTION_43(*(v13 + 16));
  if (!v17)
  {
    goto LABEL_22;
  }

  if (a6 != -1)
  {
    v18 = *(v16 + 32);
    if (a6)
    {
      v18 = *(v16 + 32) % a6;
    }

    if (v18)
    {
      OUTLINED_FUNCTION_28_5();
LABEL_20:
      OUTLINED_FUNCTION_10_5();
      goto LABEL_21;
    }
  }

  if (v14)
  {
    v19 = *(v14 + 16);
    OUTLINED_FUNCTION_23_6();
    if (!v20)
    {
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_105_0();
LABEL_21:
      OUTLINED_FUNCTION_69_1();
      __break(1u);
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_99_1();
    if (!v20)
    {

      sub_25BCB70FC();
      v38 = OUTLINED_FUNCTION_39_5();
      MEMORY[0x25F876C90](v38);
      v39 = OUTLINED_FUNCTION_91_1(*(v14 + 16));
      v40 = MEMORY[0x25F876F80](v39, MEMORY[0x277D83B88]);
      MEMORY[0x25F876C90](v40);

      v41 = OUTLINED_FUNCTION_37_2();
      MEMORY[0x25F876C90](v41, 0xE500000000000000);
      v42 = OUTLINED_FUNCTION_43(*(v13 + 16));
      if (!v43)
      {
        goto LABEL_22;
      }

      v49 = *(v42 + 32);
      v44 = sub_25BCB77FC();
      MEMORY[0x25F876C90](v44);

      OUTLINED_FUNCTION_83_1();
      goto LABEL_20;
    }
  }

  LOWORD(__src[1]) = 256;
  OUTLINED_FUNCTION_1_2();
  swift_allocObject();
  v21 = OUTLINED_FUNCTION_92_2();
  __src[0] = OUTLINED_FUNCTION_95_1(v21, v22, v23, v24);

  OUTLINED_FUNCTION_123_0(v25, v26, v27, v28, v29, v30, v31, v32, v45, v46, v47, v48, v13);
  v33 = OUTLINED_FUNCTION_81_1();
  if (!v34)
  {
LABEL_22:
    sub_25BCB617C();
    goto LABEL_23;
  }

  __src[4] = *(v33 + 32);

  v35 = *(v7 + 152);
  sub_25BCB617C();

  if (*(v35 + 16) <= 2uLL)
  {
    OUTLINED_FUNCTION_6_17();
LABEL_23:
    OUTLINED_FUNCTION_17_4();
LABEL_24:
    sub_25BADDD28();
  }

  v36 = *(v35 + 48);

  __src[5] = v36;
  __src[6] = a3;
  __src[7] = a4;
  __src[8] = a5;
  __src[9] = a6;
  return memcpy(a7, __src, 0x58uLL);
}

void Conv1D.init(filterCount:kernelSize:stride:padding:dilation:groupCount:weightInitializer:biasInitializer:)()
{
  OUTLINED_FUNCTION_120();
  v2 = v1;
  v4 = v3;
  v18 = v5;
  v19 = v6;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_1_2();
  swift_allocObject();
  v13 = OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_42_2(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4728, &unk_25BCBEAE0);
  v14 = OUTLINED_FUNCTION_68();
  *(v14 + 16) = 0;
  *(v0 + 80) = v14;
  if (v4 != -1)
  {
    v15 = v12;
    if (v4)
    {
      v15 = v12 % v4;
    }

    if (v15)
    {
      goto LABEL_13;
    }
  }

  if (v12 <= 0)
  {
LABEL_13:
    OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_7_0();
    goto LABEL_14;
  }

  if (v10 <= 0)
  {
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_7_0();
LABEL_14:
    OUTLINED_FUNCTION_69_1();
    __break(1u);
    return;
  }

  *(v0 + 32) = v12;
  *(v0 + 40) = v10;
  *(v0 + 48) = v8;
  *(v0 + 56) = v18;
  *(v0 + 64) = v19;
  *(v0 + 72) = v4;
  OUTLINED_FUNCTION_1_2();
  swift_allocObject();

  v17 = sub_25BB1AB04(v16);
  OUTLINED_FUNCTION_58_2(v17);
  OUTLINED_FUNCTION_1_2();
  swift_allocObject();
  if (v2)
  {
    sub_25BB1AB04(v2);
  }

  else
  {
    OUTLINED_FUNCTION_66();
  }

  OUTLINED_FUNCTION_120_1();

  OUTLINED_FUNCTION_57_1();
  *(v0 + 26) = v2;
  OUTLINED_FUNCTION_85_1();
}

uint64_t Conv1D.initializeParameters(for:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_11_13(*a1);
  if (!(!v11 & v3))
  {
LABEL_13:
    OUTLINED_FUNCTION_59_1();
    OUTLINED_FUNCTION_17_4();
    sub_25BADDD28();
  }

  OUTLINED_FUNCTION_54_2();
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[9];
  v8 = *(v7 + 40);
  if (v6 != -1 && v8 % v6)
  {
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_7_0();
    result = OUTLINED_FUNCTION_49_4();
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
    v9 = swift_allocObject();
    v10 = OUTLINED_FUNCTION_74_1(v9, xmmword_25BCBAE90);
    v11 = v8 == 0x8000000000000000 && v6 == -1;
    if (v11)
    {
      __break(1u);
      goto LABEL_13;
    }

    v10[2].n128_u64[1] = v8 / v6;
    v10[3].n128_u64[0] = v5;
    v14[0] = v10;

    sub_25BB1ABC8(v14);

    if (v2)
    {
      OUTLINED_FUNCTION_1_2();
      v13 = swift_allocObject();
      v14[0] = OUTLINED_FUNCTION_74_1(v13, xmmword_25BCBAE50);

      sub_25BB1ABC8(v14);
    }
  }

  return result;
}

void Conv1D.init(from:)()
{
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_55_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4730, &qword_25BCBEAF0);
  OUTLINED_FUNCTION_2(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_6();
  sub_25BB398E8();
  OUTLINED_FUNCTION_44_2();
  if (!v1)
  {
    sub_25BB3993C();
    OUTLINED_FUNCTION_7_12();
    sub_25BCB76AC();
    OUTLINED_FUNCTION_14_11();
    LOBYTE(v16[0]) = v7;
    OUTLINED_FUNCTION_7_12();
    sub_25BCB765C();
    OUTLINED_FUNCTION_40_4();
    OUTLINED_FUNCTION_26_7(2);
    OUTLINED_FUNCTION_26_7(3);
    OUTLINED_FUNCTION_26_7(4);
    OUTLINED_FUNCTION_34_4();
    v8 = OUTLINED_FUNCTION_60_1();
    sub_25BB33FB0(v8, v9, v10, v11, v12, v13);
    v14 = OUTLINED_FUNCTION_24_5();
    v15(v14);
    memcpy(v2, v16, 0x58uLL);
  }

  __swift_destroy_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_15_5();
  OUTLINED_FUNCTION_16();
}

uint64_t sub_25BB34D2C()
{
  v0 = sub_25BCB761C();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25BB34DA8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25BB34D2C();
  *a2 = result;
  return result;
}

uint64_t sub_25BB34DD8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25BB34D78();
  *a1 = result;
  return result;
}

uint64_t sub_25BB34E00@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25BB34D7C();
  *a1 = result;
  return result;
}

uint64_t sub_25BB34E28(uint64_t a1)
{
  v2 = sub_25BB398E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BB34E64(uint64_t a1)
{
  v2 = sub_25BB398E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Conv2D.weight.getter()
{
  v1 = *v0;
  v2 = OUTLINED_FUNCTION_38();
  if (v4)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_8:
    result = OUTLINED_FUNCTION_67();
    __break(1u);
    return result;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_75_1(v2, v3);

  return sub_25BAB69FC();
}

uint64_t sub_25BB34F2C@<X0>(void *a1@<X8>)
{
  result = Conv2D.weight.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_25BB34F68(uint64_t *a1)
{
  v9 = *a1;

  return Conv2D.weight.setter(&v9, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t Conv2D.weight.modify(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_21_5(a1);
  if (v2)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
  }

  else
  {
    if (v1 < 0)
    {
      OUTLINED_FUNCTION_86_0(v1);
      return OUTLINED_FUNCTION_113();
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
  }

  result = OUTLINED_FUNCTION_67();
  __break(1u);
  return result;
}

void Conv2D.bias.getter()
{
  OUTLINED_FUNCTION_73_1();
  if (!v2)
  {
    *v1 = 0;
    return;
  }

  v3 = *(v0 + 16);
  v4 = OUTLINED_FUNCTION_38();
  if (v2)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_10:
    OUTLINED_FUNCTION_67();
    __break(1u);
    return;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_75_1(v4, v5);

  sub_25BAB69FC();
}

void sub_25BB35140(uint64_t *a1)
{
  v1 = *a1;

  Conv2D.bias.setter(&v1);
}

void Conv2D.bias.setter(uint64_t *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_73_1();
  if (v3)
  {
    if (v2)
    {
      OUTLINED_FUNCTION_93_2(v2, v4, v5, v6, v7);
      return;
    }

    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_104_1();
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_103_1();
    goto LABEL_9;
  }

  if (v2)
  {
    OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_7_0();
LABEL_9:
    OUTLINED_FUNCTION_98();
    __break(1u);
  }
}

uint64_t (*Conv2D.bias.modify(uint64_t a1))()
{
  OUTLINED_FUNCTION_41_3(a1);
  if (!v3)
  {
    *v1 = 0;
    return sub_25BB3A330;
  }

  v4 = OUTLINED_FUNCTION_29(*(v2 + 16));
  if (v3)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
  }

  else
  {
    if (v4 < 0)
    {
      OUTLINED_FUNCTION_86_0(v4);
      return sub_25BB3A32C;
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
  }

  result = OUTLINED_FUNCTION_67();
  __break(1u);
  return result;
}

uint64_t Conv2D.$bias.getter()
{
  OUTLINED_FUNCTION_78_1();
  if (v1)
  {
    OUTLINED_FUNCTION_45_4();
    if (v1)
    {
      v2 = 0;
    }

    v5 = v2 | v3;
  }

  else
  {
    result = 0;
    v5 = 0;
  }

  *v0 = result;
  *(v0 + 8) = v5;
  return result;
}

uint64_t Conv2D.isEveryParameterInitialized.getter()
{
  v1 = *(v0 + 112);
  if (*(v1 + 16))
  {
    return OUTLINED_FUNCTION_53_0();
  }

  v3 = *(*v0 + 32);
  if ((~v3 & 0xF000000000000007) != 0)
  {
    if (((v3 < 0) & *(v0 + 26)) == 1)
    {
      v5 = *(*(v0 + 16) + 32);
      v4 = (~v5 & 0xF000000000000007) != 0 && v5 < 0;
    }

    else
    {
      v4 = v3 >> 63;
    }
  }

  else
  {
    v4 = 0;
  }

  return OUTLINED_FUNCTION_89_1(v4, v1);
}

uint64_t Conv2D.kernelSize.getter()
{
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  return result;
}

uint64_t Conv2D.stride.getter()
{
  result = *(v0 + 56);
  v2 = *(v0 + 64);
  return result;
}

uint64_t Conv2D.padding.getter()
{
  result = *(v0 + 72);
  v2 = *(v0 + 80);
  return result;
}

uint64_t Conv2D.dilation.getter()
{
  result = *(v0 + 88);
  v2 = *(v0 + 96);
  return result;
}

void sub_25BB353C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  OUTLINED_FUNCTION_117_2();
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v99 = v56;
  v100 = v57;
  v98 = v58;
  v60 = v59;
  OUTLINED_FUNCTION_80_1(v61);
  v96 = v62;
  v97 = v63;
  v65 = *v64;
  v66 = *(v64 + 8);
  type metadata accessor for LayerVariableReference();
  OUTLINED_FUNCTION_1_2();
  swift_allocObject();
  OUTLINED_FUNCTION_66();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4740, &qword_25BCBEB00);
  *(OUTLINED_FUNCTION_68() + 16) = 0;
  OUTLINED_FUNCTION_22_5();
  if (v89)
  {
    goto LABEL_35;
  }

  if ((v67 & 0x8000000000000000) == 0)
  {
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_46_2(v67);
  v70 = *(v69 + 152);
  if (*(v70 + 16) != 4)
  {
    OUTLINED_FUNCTION_9_8();
    goto LABEL_32;
  }

  v71 = *(v70 + 32);
  if (a49 != -1)
  {
    v72 = v71;
    if (a49)
    {
      v72 = v71 % a49;
    }

    if (v72)
    {
      OUTLINED_FUNCTION_2_17();
      goto LABEL_32;
    }
  }

  v95 = v68;
  if (!v65)
  {
    OUTLINED_FUNCTION_25_6();
    swift_allocObject();
    OUTLINED_FUNCTION_92_2();
    v102 = sub_25BB1AB60(0);
    LOBYTE(v66) = 0;
    LOBYTE(v77) = 1;
    goto LABEL_17;
  }

  v73 = *(v65 + 32);
  OUTLINED_FUNCTION_48_3();
  if (v89)
  {
LABEL_35:
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
    goto LABEL_36;
  }

  if ((v74 & 0x8000000000000000) == 0)
  {
LABEL_23:
    OUTLINED_FUNCTION_0_19();
    goto LABEL_24;
  }

  v75 = v74 & 0x7FFFFFFFFFFFFFFFLL;
  v76 = *((v74 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  OUTLINED_FUNCTION_23_6();
  if (!v89)
  {
    OUTLINED_FUNCTION_9_8();
    OUTLINED_FUNCTION_106_1();
LABEL_32:
    while (1)
    {
      OUTLINED_FUNCTION_10_5();
LABEL_36:
      while (1)
      {
        sub_25BCB74CC();
        __break(1u);
LABEL_37:
        if (v90 < 0)
        {
          break;
        }

        OUTLINED_FUNCTION_18();
        OUTLINED_FUNCTION_100_1();
LABEL_24:
        OUTLINED_FUNCTION_7_0();
      }

      v91 = OUTLINED_FUNCTION_13_7(v90);
      if (!v92)
      {
        break;
      }

      v103 = *(v91 + 32);
      v93 = sub_25BCB77FC();
      MEMORY[0x25F876C90](v93);

      OUTLINED_FUNCTION_83_1();
    }

    goto LABEL_41;
  }

  OUTLINED_FUNCTION_99_1();
  if (!v89)
  {
    OUTLINED_FUNCTION_79_1();
    sub_25BAB3020(v86);
    sub_25BCB70FC();
    MEMORY[0x25F876C90](v55 | 0x11, 0x800000025BCDB4C0);
    v87 = OUTLINED_FUNCTION_91_1(*(v75 + 16));
    v88 = MEMORY[0x25F876F80](v87, MEMORY[0x277D83B88]);
    MEMORY[0x25F876C90](v88);

    MEMORY[0x25F876C90](0x20202020203D2120, 0xE90000000000005BLL);
    OUTLINED_FUNCTION_22_5();
    if (!v89)
    {
      goto LABEL_37;
    }

    goto LABEL_35;
  }

  v77 = (v66 >> 8) & 1;

  v102 = v65;
LABEL_17:

  OUTLINED_FUNCTION_22_5();
  if (v89)
  {
    goto LABEL_35;
  }

  if ((v78 & 0x8000000000000000) == 0)
  {
    goto LABEL_23;
  }

  v101 = v55;
  OUTLINED_FUNCTION_46_2(v78);
  v80 = *(v79 + 152);
  v81 = v80[2];
  if (!v81)
  {
LABEL_41:
    OUTLINED_FUNCTION_61_1();
    goto LABEL_28;
  }

  v94 = v51;
  if (v81 <= 2)
  {
    OUTLINED_FUNCTION_62_1();
LABEL_28:
    sub_25BCB617C();
    goto LABEL_30;
  }

  v82 = v53;
  v83 = v80[4];
  v84 = v80[6];
  sub_25BCB617C();

  if (v80[2] <= 3uLL)
  {
    OUTLINED_FUNCTION_62_1();
LABEL_30:
    OUTLINED_FUNCTION_17_4();
    sub_25BADDD28();
  }

  v85 = v80[7];

  *v60 = v49;
  *(v60 + 8) = v97;
  *(v60 + 9) = v96;
  *(v60 + 16) = v102;
  *(v60 + 24) = v66 & 1;
  *(v60 + 25) = v77;
  *(v60 + 26) = v65 != 0;
  *(v60 + 32) = v83;
  *(v60 + 40) = v84;
  *(v60 + 48) = v85;
  *(v60 + 56) = v98;
  *(v60 + 64) = v99;
  *(v60 + 72) = v100;
  *(v60 + 80) = v101;
  *(v60 + 88) = v82;
  *(v60 + 96) = v94;
  *(v60 + 104) = a49;
  *(v60 + 112) = v95;
  OUTLINED_FUNCTION_116_1();
}

void *Conv2D.init(weight:bias:stride:padding:dilation:groupCount:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X6>, uint64_t a4@<X7>, void *a5@<X8>, uint64_t a6)
{
  v10 = *a1;
  v11 = *a2;
  type metadata accessor for LayerVariableReference();
  OUTLINED_FUNCTION_1_2();
  swift_allocObject();
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_88_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4740, &qword_25BCBEB00);
  v12 = OUTLINED_FUNCTION_68();
  *(v12 + 16) = 0;
  __src[14] = v12;
  v13 = *(*(v10 + 16) + 152);
  if (*(v13 + 16) != 4)
  {
    goto LABEL_18;
  }

  v14 = *(v13 + 32);
  if (a6 != -1)
  {
    v15 = v14;
    if (a6)
    {
      v15 = v14 % a6;
    }

    if (v15)
    {
LABEL_18:
      OUTLINED_FUNCTION_28_5();
      goto LABEL_19;
    }
  }

  if (v11)
  {
    v16 = *(v11 + 16);
    OUTLINED_FUNCTION_23_6();
    if (!v17)
    {
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_105_0();
      while (1)
      {
        OUTLINED_FUNCTION_69_1();
        __break(1u);
LABEL_21:
        v38 = 0;
        v39 = 0xE000000000000000;

        sub_25BCB70FC();
        MEMORY[0x25F876C90](0xD00000000000003FLL, 0x800000025BCDB4C0);
        v32 = OUTLINED_FUNCTION_91_1(*(v11 + 16));
        v33 = MEMORY[0x25F876F80](v32, MEMORY[0x277D83B88]);
        MEMORY[0x25F876C90](v33);

        MEMORY[0x25F876C90](0x20202020203D2120, 0xE90000000000005BLL);
        v34 = OUTLINED_FUNCTION_43(*(v10 + 16));
        if (!v35)
        {
          break;
        }

        v38 = *(v34 + 32);
        v36 = sub_25BCB77FC();
        v10 = v37;
        MEMORY[0x25F876C90](v36);

        OUTLINED_FUNCTION_83_1();
LABEL_19:
        OUTLINED_FUNCTION_10_5();
      }

      goto LABEL_23;
    }

    OUTLINED_FUNCTION_99_1();
    if (!v17)
    {
      goto LABEL_21;
    }
  }

  LOWORD(__src[1]) = 256;
  OUTLINED_FUNCTION_25_6();
  swift_allocObject();
  v18 = OUTLINED_FUNCTION_92_2();
  __src[0] = OUTLINED_FUNCTION_96_1(v18, v19, v20, v21, v22, v23, v24, v25);

  v38 = v11;
  OptionalParameter.init(wrappedValue:)(&v38);
  v26 = OUTLINED_FUNCTION_81_1();
  if (!v27)
  {
LABEL_23:
    OUTLINED_FUNCTION_64_2();
    goto LABEL_24;
  }

  __src[4] = *(v26 + 32);
  if (v27 <= 2)
  {
    v39 = 0;
    v40 = 0;
    v38 = 2;
    OUTLINED_FUNCTION_27_5();
LABEL_24:
    OUTLINED_FUNCTION_107_2();
    sub_25BCB617C();
LABEL_25:
    OUTLINED_FUNCTION_17_4();
    sub_25BADDD28();
  }

  v28 = *(v26 + 48);

  v29 = *(v6 + 152);
  sub_25BCB617C();

  if (*(v29 + 16) <= 3uLL)
  {
    v39 = 0;
    v40 = 0;
    v38 = 3;
    OUTLINED_FUNCTION_27_5();
    OUTLINED_FUNCTION_107_2();
    goto LABEL_25;
  }

  v30 = *(v29 + 56);

  __src[5] = v28;
  __src[6] = v30;
  OUTLINED_FUNCTION_112_1();
  __src[11] = a3;
  __src[12] = a4;
  __src[13] = a6;
  return memcpy(a5, __src, 0x78uLL);
}

void Conv2D.init(filterCount:kernelSize:stride:padding:dilation:groupCount:weightInitializer:biasInitializer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_120();
  v30 = v29;
  v32 = v31;
  v48 = v33;
  v49 = v34;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_1_2();
  swift_allocObject();
  v43 = OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_42_2(v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4740, &qword_25BCBEB00);
  v44 = OUTLINED_FUNCTION_68();
  *(v44 + 16) = 0;
  *(v28 + 112) = v44;
  if (v42 < 1)
  {
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_7_0();
LABEL_15:
    OUTLINED_FUNCTION_69_1();
    __break(1u);
    return;
  }

  if (a26 != -1 && (!a26 || v42 % a26) || (v40 >= 1 ? (v45 = v38 <= 0) : (v45 = 1), v45))
  {
    OUTLINED_FUNCTION_20_4();
    OUTLINED_FUNCTION_7_0();
    goto LABEL_15;
  }

  *(v28 + 32) = v42;
  *(v28 + 40) = v40;
  *(v28 + 48) = v38;
  *(v28 + 56) = v36;
  *(v28 + 64) = v48;
  *(v28 + 72) = v49;
  *(v28 + 80) = v32;
  *(v28 + 88) = v30;
  *(v28 + 96) = a25;
  *(v28 + 104) = a26;
  OUTLINED_FUNCTION_25_6();
  swift_allocObject();

  v47 = sub_25BB1AB04(v46);
  OUTLINED_FUNCTION_58_2(v47);
  OUTLINED_FUNCTION_25_6();
  swift_allocObject();
  if (a28)
  {
    sub_25BB1AB04(a28);
  }

  else
  {
    OUTLINED_FUNCTION_66();
  }

  OUTLINED_FUNCTION_57_1();
  *(v28 + 26) = a28 != 0;
  OUTLINED_FUNCTION_85_1();
}

uint64_t Conv2D.initializeParameters(for:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_11_13(*a1);
  if (!(!v17 & v3))
  {
LABEL_13:
    OUTLINED_FUNCTION_6_17();
    sub_25BCB617C();
    OUTLINED_FUNCTION_17_4();
    sub_25BADDD28();
  }

  OUTLINED_FUNCTION_54_2();
  v4 = *(v1 + 32);
  v5 = *(v1 + 104);
  v7 = *(v6 + 40);
  if (v5 != -1 && v7 % v5)
  {
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_7_0();
    result = OUTLINED_FUNCTION_49_4();
    __break(1u);
  }

  else
  {
    v22 = *(v1 + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
    v8 = swift_allocObject();
    v9 = OUTLINED_FUNCTION_74_1(v8, xmmword_25BCBDF80);
    v17 = v7 == 0x8000000000000000 && v5 == -1;
    if (v17)
    {
      __break(1u);
      goto LABEL_13;
    }

    v9[2].n128_u64[1] = v7 / v5;
    OUTLINED_FUNCTION_118_1(v9, v10, v11, v12, v13, v14, v15, v16, v20, v21, v22);
    sub_25BB1ABC8(v23);

    if (v2)
    {
      OUTLINED_FUNCTION_1_2();
      v19 = swift_allocObject();
      v23[0] = OUTLINED_FUNCTION_74_1(v19, xmmword_25BCBAE50);

      sub_25BB1ABC8(v23);
    }
  }

  return result;
}

uint64_t Conv2D.forward(_:)(uint64_t *a1)
{
  v3 = *a1;
  v4 = *v1;
  v5 = v1[7];
  v6 = v1[8];
  v7 = v1[9];
  v8 = v1[10];
  v9 = v1[11];
  v10 = v1[12];
  v12 = v1[13];
  v11 = v1[14];
  OUTLINED_FUNCTION_115_1();
  if (v15)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_8:
    result = OUTLINED_FUNCTION_67();
    __break(1u);
    return result;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
    goto LABEL_8;
  }

  v28 = v2 & 0x7FFFFFFFFFFFFFFFLL;
  v19 = v14;
  v20 = *(v1 + 1);
  v21 = *(v1 + 3);
  v22 = *(v1 + 5);
  v23 = v8;
  v24 = v9;
  v25 = v10;
  v26 = v12;
  v27 = v13;
  Conv2D.bias.getter();
  sub_25BAB3020(v2);
  conv2D(_:weight:bias:stride:padding:dilation:groupCount:)(v29, &v28, &v18, v5, v6, v7, v8, v9, v10, v12, v17, v18, v19, v20, *(&v20 + 1), v21, *(&v21 + 1), v22, *(&v22 + 1), v5, v6, v7);
}

void Conv2D.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{
  OUTLINED_FUNCTION_17_1();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4768, &qword_25BCBEB18);
  OUTLINED_FUNCTION_2(v12);
  v24 = v13;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_47_4();
  sub_25BB399E4();
  OUTLINED_FUNCTION_122_2();
  OUTLINED_FUNCTION_121_0();

  OUTLINED_FUNCTION_19_6();
  sub_25BCB779C();
  if (v10)
  {

    v17 = *(v24 + 8);
    v18 = OUTLINED_FUNCTION_102_1();
    v19(v18);
  }

  else
  {
    OUTLINED_FUNCTION_119_1();
    if (a10)
    {
    }

    else
    {
      v20 = 0;
    }

    OUTLINED_FUNCTION_52_2(v20);
    OUTLINED_FUNCTION_19_6();
    sub_25BCB773C();

    OUTLINED_FUNCTION_101_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4758, &qword_25BCBEB10);
    OUTLINED_FUNCTION_51(&qword_27FBB4770);
    OUTLINED_FUNCTION_17_8();
    OUTLINED_FUNCTION_17_8();
    OUTLINED_FUNCTION_17_8();
    OUTLINED_FUNCTION_70_2(5);
    sub_25BCB778C();
    v21 = *(v11 + 8);
    v22 = OUTLINED_FUNCTION_102_1();
    v23(v22);
  }

  OUTLINED_FUNCTION_15_5();
  OUTLINED_FUNCTION_16();
}

uint64_t sub_25BB3653C()
{
  v0 = sub_25BCB761C();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25BB3658C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25BB3653C();
  *a2 = result;
  return result;
}

uint64_t sub_25BB365BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25BB36588();
  *a1 = result;
  return result;
}

uint64_t sub_25BB365E4(uint64_t a1)
{
  v2 = sub_25BB399E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BB36620(uint64_t a1)
{
  v2 = sub_25BB399E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25BB36660()
{
  v1 = *v0;
  v2 = OUTLINED_FUNCTION_38();
  if (v4)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_8:
    result = OUTLINED_FUNCTION_67();
    __break(1u);
    return result;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_75_1(v2, v3);

  return sub_25BAB69FC();
}

uint64_t TransposedConv1D.weight.modify(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_21_5(a1);
  if (v2)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
  }

  else
  {
    if (v1 < 0)
    {
      OUTLINED_FUNCTION_86_0(v1);
      return OUTLINED_FUNCTION_113();
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
  }

  result = OUTLINED_FUNCTION_67();
  __break(1u);
  return result;
}

void sub_25BB3681C(uint64_t *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_73_1();
  if (v3)
  {
    if (v2)
    {
      OUTLINED_FUNCTION_93_2(v2, v4, v5, v6, v7);
      return;
    }

    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_104_1();
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_103_1();
    goto LABEL_9;
  }

  if (v2)
  {
    OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_7_0();
LABEL_9:
    OUTLINED_FUNCTION_98();
    __break(1u);
  }
}

uint64_t (*TransposedConv1D.bias.modify(uint64_t a1))()
{
  OUTLINED_FUNCTION_41_3(a1);
  if (!v3)
  {
    *v1 = 0;
    return sub_25BB3698C;
  }

  v4 = OUTLINED_FUNCTION_29(*(v2 + 16));
  if (v3)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
  }

  else
  {
    if (v4 < 0)
    {
      OUTLINED_FUNCTION_86_0(v4);
      return sub_25BB36988;
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
  }

  result = OUTLINED_FUNCTION_67();
  __break(1u);
  return result;
}

uint64_t sub_25BB36994()
{
  OUTLINED_FUNCTION_78_1();
  if (v1)
  {
    OUTLINED_FUNCTION_45_4();
    if (v1)
    {
      v2 = 0;
    }

    v5 = v2 | v3;
  }

  else
  {
    result = 0;
    v5 = 0;
  }

  *v0 = result;
  *(v0 + 8) = v5;
  return result;
}

uint64_t sub_25BB36A08@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v11 = *a1;
  v45 = *(a1 + 9);
  v46 = *(a1 + 8);
  v12 = *a2;
  v13 = *(a2 + 8);
  type metadata accessor for LayerVariableReference();
  OUTLINED_FUNCTION_1_2();
  swift_allocObject();
  OUTLINED_FUNCTION_66();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4778, &qword_25BCBEB20);
  *(OUTLINED_FUNCTION_68() + 16) = 0;
  OUTLINED_FUNCTION_82_2();
  if (v15)
  {
    goto LABEL_31;
  }

  if ((v14 & 0x8000000000000000) == 0)
  {
    goto LABEL_32;
  }

  v16 = OUTLINED_FUNCTION_11_13(v14 & 0x7FFFFFFFFFFFFFFFLL);
  if (!(!v15 & v18))
  {
    goto LABEL_35;
  }

  if (a6 != -1)
  {
    v19 = *(v16 + 40);
    if (a6)
    {
      v19 = *(v16 + 40) % a6;
    }

    if (v19)
    {
      OUTLINED_FUNCTION_2_17();
      goto LABEL_39;
    }
  }

  v44 = v17;
  if (v12)
  {
    v20 = *(v12 + 32);
    OUTLINED_FUNCTION_48_3();
    if (v15)
    {
      goto LABEL_31;
    }

    if ((v21 & 0x8000000000000000) == 0)
    {
LABEL_32:
      OUTLINED_FUNCTION_0_19();
      goto LABEL_33;
    }

    v22 = v21 & 0x7FFFFFFFFFFFFFFFLL;
    v23 = *((v21 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    OUTLINED_FUNCTION_23_6();
    if (!v15)
    {
      OUTLINED_FUNCTION_9_8();
      OUTLINED_FUNCTION_106_1();
LABEL_39:
      OUTLINED_FUNCTION_10_5();
      goto LABEL_34;
    }

    if ((v25 * a6) >> 64 != (v25 * a6) >> 63)
    {
      __break(1u);
      goto LABEL_25;
    }

    OUTLINED_FUNCTION_111_1();
    if (!v15)
    {
LABEL_25:
      sub_25BAB3020(v24);
      sub_25BCB70FC();
      MEMORY[0x25F876C90](0xD00000000000003BLL, 0x800000025BCDB540);
      v35 = *(*(v22 + 16) + 152);
      v36 = sub_25BCB617C();
      v37 = MEMORY[0x25F876F80](v36, MEMORY[0x277D83B88]);
      MEMORY[0x25F876C90](v37);

      v38 = OUTLINED_FUNCTION_37_2();
      MEMORY[0x25F876C90](v38, 0xE500000000000000);
      OUTLINED_FUNCTION_82_2();
      if (!v15)
      {
        if (v39 < 0)
        {
          v40 = OUTLINED_FUNCTION_11_13(v39 & 0x7FFFFFFFFFFFFFFFLL);
          if (!(!v15 & v18))
          {
            goto LABEL_35;
          }

          OUTLINED_FUNCTION_109_1(v40);
          if (v15)
          {
            v41 = sub_25BCB77FC();
            MEMORY[0x25F876C90](v41);

            OUTLINED_FUNCTION_83_1();
            goto LABEL_39;
          }

          __break(1u);
          goto LABEL_31;
        }

        OUTLINED_FUNCTION_18();
        OUTLINED_FUNCTION_100_1();
LABEL_33:
        OUTLINED_FUNCTION_7_0();
        goto LABEL_34;
      }

LABEL_31:
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_1_3();
LABEL_34:
      sub_25BCB74CC();
      __break(1u);
      goto LABEL_35;
    }

    v26 = (v13 >> 8) & 1;

    v43 = v12;
  }

  else
  {
    OUTLINED_FUNCTION_1_2();
    swift_allocObject();

    v43 = sub_25BB1AB60(0);
    LOBYTE(v13) = 0;
    LOBYTE(v26) = 1;
  }

  OUTLINED_FUNCTION_82_2();
  if (v15)
  {
    goto LABEL_31;
  }

  if ((v27 & 0x8000000000000000) == 0)
  {
    goto LABEL_32;
  }

  v42 = a4;
  OUTLINED_FUNCTION_46_2(v27);
  v29 = *(v28 + 152);
  if (v29[2] <= 1uLL)
  {
LABEL_35:
    OUTLINED_FUNCTION_10_8();
    sub_25BCB617C();
    goto LABEL_37;
  }

  v30 = a6;
  v31 = a5;
  v32 = v29[5];
  sub_25BCB617C();

  if (v29[2] <= 2uLL)
  {
    OUTLINED_FUNCTION_10_8();
LABEL_37:
    OUTLINED_FUNCTION_17_4();
    sub_25BADDD28();
  }

  v33 = v29[6];

  *a7 = v11;
  *(a7 + 8) = v46;
  *(a7 + 9) = v45;
  *(a7 + 16) = v43;
  *(a7 + 24) = v13 & 1;
  *(a7 + 25) = v26;
  *(a7 + 26) = v12 != 0;
  *(a7 + 32) = v32;
  *(a7 + 40) = v33;
  *(a7 + 48) = a3;
  *(a7 + 56) = v42;
  *(a7 + 64) = v31;
  *(a7 + 72) = v30;
  *(a7 + 80) = v44;
  return result;
}

void *TransposedConv1D.init(weight:bias:stride:padding:dilation:groupCount:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v12 = *a1;
  v13 = *a2;
  type metadata accessor for LayerVariableReference();
  OUTLINED_FUNCTION_1_2();
  swift_allocObject();
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_87_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4778, &qword_25BCBEB20);
  v14 = OUTLINED_FUNCTION_68();
  *(v14 + 16) = 0;
  __src[10] = v14;
  v15 = OUTLINED_FUNCTION_18_9(*(v12 + 16));
  if (!(!v17 & v16))
  {
    goto LABEL_21;
  }

  if (a6 != -1)
  {
    v18 = *(v15 + 40);
    if (a6)
    {
      v18 = *(v15 + 40) % a6;
    }

    if (v18)
    {
      OUTLINED_FUNCTION_28_5();
      goto LABEL_25;
    }
  }

  if (v13)
  {
    v19 = *(v13 + 16);
    OUTLINED_FUNCTION_23_6();
    if (!v17)
    {
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_105_0();
      while (1)
      {
        OUTLINED_FUNCTION_69_1();
        __break(1u);
LABEL_27:
        v44 = sub_25BCB77FC();
        MEMORY[0x25F876C90](v44);

        OUTLINED_FUNCTION_83_1();
LABEL_25:
        OUTLINED_FUNCTION_10_5();
      }
    }

    if ((v20 * a6) >> 64 != (v20 * a6) >> 63)
    {
      __break(1u);
      goto LABEL_17;
    }

    OUTLINED_FUNCTION_111_1();
    if (!v17)
    {
LABEL_17:

      sub_25BCB70FC();
      v38 = OUTLINED_FUNCTION_39_5();
      MEMORY[0x25F876C90](v38);
      v39 = *(*(v13 + 16) + 152);
      v40 = sub_25BCB617C();
      v41 = MEMORY[0x25F876F80](v40, MEMORY[0x277D83B88]);
      MEMORY[0x25F876C90](v41);

      v42 = OUTLINED_FUNCTION_37_2();
      MEMORY[0x25F876C90](v42, 0xE500000000000000);
      v43 = OUTLINED_FUNCTION_18_9(*(v12 + 16));
      if (!v17 & v16)
      {
        OUTLINED_FUNCTION_109_1(v43);
        if (v17)
        {
          goto LABEL_27;
        }

        __break(1u);
      }

      goto LABEL_21;
    }
  }

  LOWORD(__src[1]) = 256;
  OUTLINED_FUNCTION_1_2();
  swift_allocObject();

  __src[0] = OUTLINED_FUNCTION_95_1(v21, v22, v23, v24);

  OUTLINED_FUNCTION_123_0(v25, v26, v27, v28, v29, v30, v31, v32, v45, v46, v47, v48, v12);
  v33 = *(v12 + 16);
  v34 = *(v33 + 152);
  if (*(v34 + 16) <= 1uLL)
  {
LABEL_21:
    OUTLINED_FUNCTION_6_17();
    sub_25BCB617C();
    goto LABEL_23;
  }

  __src[4] = *(v34 + 40);

  v35 = *(v33 + 152);
  sub_25BCB617C();

  if (*(v35 + 16) <= 2uLL)
  {
    OUTLINED_FUNCTION_6_17();
LABEL_23:
    OUTLINED_FUNCTION_17_4();
    sub_25BADDD28();
  }

  v36 = *(v35 + 48);

  __src[5] = v36;
  __src[6] = a3;
  __src[7] = a4;
  __src[8] = a5;
  __src[9] = a6;
  return memcpy(a7, __src, 0x58uLL);
}

void TransposedConv1D.init(filterCount:kernelSize:stride:padding:dilation:groupCount:weightInitializer:biasInitializer:)()
{
  OUTLINED_FUNCTION_120();
  v2 = v1;
  v4 = v3;
  v18 = v5;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_1_2();
  swift_allocObject();
  v14 = OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_42_2(v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4778, &qword_25BCBEB20);
  v15 = OUTLINED_FUNCTION_68();
  *(v15 + 16) = 0;
  *(v0 + 80) = v15;
  if (v13 < 1)
  {
    goto LABEL_12;
  }

  if (v11 <= 0)
  {
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_7_0();
LABEL_13:
    OUTLINED_FUNCTION_69_1();
    __break(1u);
    return;
  }

  if (v4 != -1 && (!v4 || v13 % v4))
  {
LABEL_12:
    OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_7_0();
    goto LABEL_13;
  }

  *(v0 + 32) = v13;
  *(v0 + 40) = v11;
  *(v0 + 48) = v9;
  *(v0 + 56) = v7;
  *(v0 + 64) = v18;
  *(v0 + 72) = v4;
  OUTLINED_FUNCTION_1_2();
  swift_allocObject();

  v17 = sub_25BB1AB04(v16);
  OUTLINED_FUNCTION_58_2(v17);
  OUTLINED_FUNCTION_1_2();
  swift_allocObject();
  if (v2)
  {
    sub_25BB1AB04(v2);
  }

  else
  {
    OUTLINED_FUNCTION_66();
  }

  OUTLINED_FUNCTION_120_1();

  OUTLINED_FUNCTION_57_1();
  *(v0 + 26) = v2;
  OUTLINED_FUNCTION_85_1();
}

uint64_t TransposedConv1D.initializeParameters(for:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_11_13(*a1);
  if (!(!v11 & v3))
  {
LABEL_17:
    OUTLINED_FUNCTION_59_1();
    OUTLINED_FUNCTION_17_4();
    sub_25BADDD28();
  }

  OUTLINED_FUNCTION_54_2();
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[9];
  v8 = *(v7 + 40);
  v9 = v8;
  if (v6)
  {
    if (v6 == -1)
    {
      goto LABEL_7;
    }

    v9 = v8 % v6;
  }

  if (v9)
  {
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_7_0();
    result = OUTLINED_FUNCTION_49_4();
    __break(1u);
    return result;
  }

LABEL_7:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_25BCBAE90;
  *(v10 + 32) = v8;
  if (!v6)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v4 == 0x8000000000000000 && v6 == -1;
  if (v11)
  {
    goto LABEL_16;
  }

  *(v10 + 40) = v4 / v6;
  *(v10 + 48) = v5;
  v14[0] = v10;

  sub_25BB1ABC8(v14);

  if (v2)
  {
    OUTLINED_FUNCTION_1_2();
    v13 = swift_allocObject();
    v14[0] = OUTLINED_FUNCTION_74_1(v13, xmmword_25BCBAE50);

    sub_25BB1ABC8(v14);
  }

  return result;
}

void TransposedConv1D.init(from:)()
{
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_55_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4780, &qword_25BCBEB28);
  OUTLINED_FUNCTION_2(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_6();
  sub_25BB39A88();
  OUTLINED_FUNCTION_44_2();
  if (!v1)
  {
    sub_25BB3993C();
    OUTLINED_FUNCTION_7_12();
    sub_25BCB76AC();
    OUTLINED_FUNCTION_14_11();
    LOBYTE(v17[0]) = v7;
    OUTLINED_FUNCTION_7_12();
    sub_25BCB765C();
    OUTLINED_FUNCTION_40_4();
    OUTLINED_FUNCTION_26_7(2);
    OUTLINED_FUNCTION_26_7(3);
    OUTLINED_FUNCTION_26_7(4);
    OUTLINED_FUNCTION_34_4();
    v8 = OUTLINED_FUNCTION_60_1();
    sub_25BB36A08(v8, v9, v10, v11, v12, v13, v14);
    v15 = OUTLINED_FUNCTION_24_5();
    v16(v15);
    memcpy(v2, v17, 0x58uLL);
  }

  __swift_destroy_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_15_5();
  OUTLINED_FUNCTION_16();
}

void sub_25BB37928()
{
  OUTLINED_FUNCTION_17_1();
  v30 = v2;
  v31 = v1;
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_2(v7);
  v32 = v8;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v11);
  v13 = v25 - v12;
  v14 = *v0;
  v15 = *(v0 + 8);
  v36 = *(v0 + 9);
  v16 = v0[2];
  v17 = *(v0 + 24);
  v26 = *(v0 + 25);
  v27 = v17;
  v28 = *(v0 + 26);
  v18 = v0[7];
  v25[0] = v0[6];
  v25[1] = v16;
  v29 = v18;
  v19 = v0[8];
  v25[2] = v0[9];
  v25[3] = v19;
  v20 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  v30();
  v21 = v7;
  sub_25BCB7B6C();
  v33 = v14;
  v34 = v15;
  v35 = v36;
  sub_25BB39990();

  v22 = v31;
  sub_25BCB779C();
  if (v22)
  {

    (*(v32 + 8))(v13, v7);
  }

  else
  {
    v23 = v32;

    if (v28)
    {
    }

    else
    {
      v24 = 0;
    }

    OUTLINED_FUNCTION_52_2(v24);
    OUTLINED_FUNCTION_19_6();
    sub_25BCB773C();

    OUTLINED_FUNCTION_70_2(2);
    OUTLINED_FUNCTION_72_1();
    OUTLINED_FUNCTION_70_2(3);
    OUTLINED_FUNCTION_72_1();
    OUTLINED_FUNCTION_70_2(4);
    OUTLINED_FUNCTION_72_1();
    OUTLINED_FUNCTION_70_2(5);
    OUTLINED_FUNCTION_72_1();
    (*(v23 + 8))(v13, v21);
  }

  OUTLINED_FUNCTION_15_5();
  OUTLINED_FUNCTION_16();
}

uint64_t sub_25BB37BA8()
{
  v0 = sub_25BCB761C();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25BB37BF8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25BB37BA8();
  *a2 = result;
  return result;
}

uint64_t sub_25BB37C28@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25BB37BF4();
  *a1 = result;
  return result;
}

uint64_t sub_25BB37C50(uint64_t a1)
{
  v2 = sub_25BB39A88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BB37C8C(uint64_t a1)
{
  v2 = sub_25BB39A88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TransposedConv2D.weight.getter()
{
  v1 = *v0;
  v2 = OUTLINED_FUNCTION_38();
  if (v4)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_8:
    result = OUTLINED_FUNCTION_67();
    __break(1u);
    return result;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_75_1(v2, v3);

  return sub_25BAB69FC();
}

uint64_t sub_25BB37D54@<X0>(void *a1@<X8>)
{
  result = TransposedConv2D.weight.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_25BB37D90(uint64_t *a1)
{
  v9 = *a1;

  return TransposedConv2D.weight.setter(&v9, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t TransposedConv2D.weight.modify(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_21_5(a1);
  if (v2)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
  }

  else
  {
    if (v1 < 0)
    {
      OUTLINED_FUNCTION_86_0(v1);
      return OUTLINED_FUNCTION_113();
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
  }

  result = OUTLINED_FUNCTION_67();
  __break(1u);
  return result;
}

uint64_t sub_25BB37E84(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    v5 = *a1;

    Parameter.wrappedValue.setter(&v5);
  }

  else
  {
    v5 = *a1;
    return Parameter.wrappedValue.setter(&v5);
  }
}

void TransposedConv2D.bias.getter()
{
  OUTLINED_FUNCTION_73_1();
  if (!v2)
  {
    *v1 = 0;
    return;
  }

  v3 = *(v0 + 16);
  v4 = OUTLINED_FUNCTION_38();
  if (v2)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_10:
    OUTLINED_FUNCTION_67();
    __break(1u);
    return;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_75_1(v4, v5);

  sub_25BAB69FC();
}

void sub_25BB37FD8(uint64_t *a1)
{
  v1 = *a1;

  TransposedConv2D.bias.setter(&v1);
}

void TransposedConv2D.bias.setter(uint64_t *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_73_1();
  if (v3)
  {
    if (v2)
    {
      OUTLINED_FUNCTION_93_2(v2, v4, v5, v6, v7);
      return;
    }

    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_104_1();
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_103_1();
    goto LABEL_9;
  }

  if (v2)
  {
    OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_7_0();
LABEL_9:
    OUTLINED_FUNCTION_98();
    __break(1u);
  }
}

uint64_t (*TransposedConv2D.bias.modify(uint64_t a1))()
{
  OUTLINED_FUNCTION_41_3(a1);
  if (!v3)
  {
    *v1 = 0;
    return sub_25BB3A330;
  }

  v4 = OUTLINED_FUNCTION_29(*(v2 + 16));
  if (v3)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
  }

  else
  {
    if (v4 < 0)
    {
      OUTLINED_FUNCTION_86_0(v4);
      return sub_25BB3A32C;
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
  }

  result = OUTLINED_FUNCTION_67();
  __break(1u);
  return result;
}

uint64_t sub_25BB38180(uint64_t *a1, char a2)
{
  v2 = *a1;
  if ((a2 & 1) == 0)
  {
    if (v2)
    {
      v5 = a1[1];
      v6 = *a1;
      return Parameter.wrappedValue.setter(&v6);
    }

    goto LABEL_8;
  }

  if (!v2)
  {
LABEL_8:
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_104_1();
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_103_1();
    result = OUTLINED_FUNCTION_98();
    __break(1u);
    return result;
  }

  v3 = a1[1];
  v6 = *a1;

  Parameter.wrappedValue.setter(&v6);
}