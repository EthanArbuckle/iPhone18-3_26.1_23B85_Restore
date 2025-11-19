void Tensor.init<A>(randomNormal:mean:standardDeviation:seed:scalarType:on:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_9_18();
  v24 = v23;
  v84 = v25;
  v27 = v26;
  v29 = v28;
  v85 = v31;
  v86 = v30;
  OUTLINED_FUNCTION_9();
  v33 = v32;
  v35 = *(v34 + 64);
  v36 = v92;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_30_15();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_174_0();
  v40 = *v39;
  v83 = v41;
  sub_25BAA51C8(v41, &v96);
  if (*(&v97[0] + 1))
  {
    v95[0] = v96;
    v95[1] = v97[0];
    v95[2] = v97[1];
    OUTLINED_FUNCTION_214_0();
  }

  else
  {
    type metadata accessor for ContextManager();
    sub_25BAA49B8();
    OUTLINED_FUNCTION_175_0();

    sub_25BAA51C8(v94, v95);
    sub_25BAA4AF4(v94);
    if (*(&v97[0] + 1))
    {
      sub_25BA9C2C8(&v96);
    }
  }

  if ((v27 & 1) == 0)
  {
    goto LABEL_10;
  }

  v42 = type metadata accessor for ContextManager();
  v43 = sub_25BAA49B8();
  OUTLINED_FUNCTION_132_0();
  OUTLINED_FUNCTION_180();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v43[2] = v92;
  if (isUniquelyReferenced_nonNull_native)
  {
    if (v42)
    {
      goto LABEL_8;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_25BBF1454(v92);
  v36 = v82;
  v43[2] = v82;
  if (!v42)
  {
    goto LABEL_20;
  }

LABEL_8:
  if (v42 > *(v36 + 2))
  {
LABEL_21:
    __break(1u);
    return;
  }

  v29 = sub_25BC32FA0();
  v43[2] = v36;
  swift_endAccess();

LABEL_10:
  v45 = sub_25BBE5CAC(v29);
  v92[0] = v46;
  OUTLINED_FUNCTION_82_5(v45, v47, *&v46, v48);
  v49 = *(v93 + 16);

  *&v88 = v40;
  v50 = *(v33 + 16);
  v50(v22, v86, v24);
  v51 = (v50)(v21, v85, v24);
  OUTLINED_FUNCTION_126_0(v51, *(a21 + 8));
  v52(&v96, v24);
  sub_25BC32164(v22, v21, &v96, v24, a21, v94);
  v91 = 0;
  OUTLINED_FUNCTION_19_3("/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/RandomOp.swift");
  *(v97 + 8) = xmmword_25BCBC690;
  OUTLINED_FUNCTION_72_4(v53);
  OUTLINED_FUNCTION_201();
  v54 = OUTLINED_FUNCTION_3();
  sub_25BC323E4(v54, v55, v56, v49, v57, v58, v59);
  OUTLINED_FUNCTION_11_30();
  sub_25BBF3030(v60, v61);
  v62 = OUTLINED_FUNCTION_185_0();
  sub_25BAA51C8(v62, &v88);
  if (*(&v89 + 1))
  {
    v94[0] = v88;
    v94[1] = v89;
    v94[2] = v90;
    OUTLINED_FUNCTION_135_0();
    OUTLINED_FUNCTION_225();
    sub_25BA9C2C8(&v87);
    sub_25BABF0A8(v94);
  }

  else
  {
    sub_25BA9C2C8(&v88);
    OUTLINED_FUNCTION_114_3();
  }

  type metadata accessor for ContextManager();
  sub_25BAA49B8();
  OUTLINED_FUNCTION_175_0();

  sub_25BAA4AF4(v94);
  sub_25BAA49B8();
  OUTLINED_FUNCTION_175_0();

  sub_25BAA4AF4(v94);
  type metadata accessor for TensorRepresentation();
  OUTLINED_FUNCTION_93();
  v63 = swift_allocObject();

  OUTLINED_FUNCTION_48_9();
  v70 = sub_25BC0C634(v64, v65, v66, v67, v68, v69, v63);
  type metadata accessor for TensorHandle();
  OUTLINED_FUNCTION_22();
  v71 = swift_allocObject();
  *(v71 + 16) = v70;

  sub_25BAA6EB0();
  sub_25BAA51C8(v95, &v88);
  if (*(&v89 + 1))
  {
    OUTLINED_FUNCTION_65_2();
    *&v88 = v71;
    v72 = Tensor.scalarType.getter();
    sub_25BBABD24(v72, v73);
    OUTLINED_FUNCTION_186();
    if (!v74)
    {
      OUTLINED_FUNCTION_78_4();
      OUTLINED_FUNCTION_55(v94, v75);
    }

    OUTLINED_FUNCTION_200_0();

    sub_25BA9C2C8(v83);
    v76 = *(v33 + 8);
    v77 = OUTLINED_FUNCTION_219();
    v76(v77);
    v78 = OUTLINED_FUNCTION_218();
    v76(v78);
    sub_25BABF0A8(v94);
    sub_25BA9C2C8(v95);
    v71 = v88;
  }

  else
  {

    sub_25BA9C2C8(v83);
    v79 = *(v33 + 8);
    v80 = OUTLINED_FUNCTION_219();
    v79(v80);
    v81 = OUTLINED_FUNCTION_218();
    v79(v81);
    sub_25BA9C2C8(v95);
    sub_25BA9C2C8(&v88);
  }

  *v84 = v71;
  OUTLINED_FUNCTION_10_16();
}

void Tensor.init<A>(randomTruncatedNormal:mean:standardDeviation:seed:scalarType:on:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_9_18();
  v25 = v24;
  v89 = v26;
  v28 = v27;
  v30 = v29;
  v90 = v32;
  v91 = v31;
  OUTLINED_FUNCTION_9();
  v34 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_30_15();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_171();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_221(v40);
  v86 = v41;
  v87 = v42;
  sub_25BAA51C8(v41, &v105);
  if (*(&v106[0] + 1))
  {
    v104[0] = v105;
    v104[1] = v106[0];
    v104[2] = v106[1];
    OUTLINED_FUNCTION_214_0();
  }

  else
  {
    type metadata accessor for ContextManager();
    sub_25BAA49B8();
    OUTLINED_FUNCTION_175_0();

    sub_25BAA51C8(&v100, v104);
    sub_25BAA4AF4(&v100);
    if (*(&v106[0] + 1))
    {
      sub_25BA9C2C8(&v105);
    }
  }

  if ((v28 & 1) == 0)
  {
    goto LABEL_10;
  }

  v43 = v34;
  type metadata accessor for ContextManager();
  v44 = sub_25BAA49B8();
  OUTLINED_FUNCTION_132_0();
  v45 = v44[2];
  v46 = *(v45 + 16);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v44[2] = v45;
  if (isUniquelyReferenced_nonNull_native)
  {
    if (v46)
    {
      goto LABEL_8;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_25BBF1454(v45);
  v45 = v85;
  v44[2] = v85;
  if (!v46)
  {
    goto LABEL_20;
  }

LABEL_8:
  if (v46 > *(v45 + 16))
  {
LABEL_21:
    __break(1u);
    return;
  }

  v30 = sub_25BC32FA0();
  v44[2] = v45;
  swift_endAccess();

  v34 = v43;
LABEL_10:
  v48 = sub_25BBE5CAC(v30);
  v98 = v49;
  OUTLINED_FUNCTION_82_5(v48, v50, *&v49, v51);
  v52 = *(v99 + 16);

  *&v93 = v87;
  v88 = v34;
  v53 = *(v34 + 16);
  v53(v21, v91, v25);
  v54 = (v53)(v23, v90, v25);
  OUTLINED_FUNCTION_126_0(v54, *(a21 + 8));
  v55(&v105, v25);
  sub_25BBEEF00(v25, a21);
  sub_25BC32248(v21, v23, v22, &v105, v25, a21, &v100);
  v97 = 0;
  OUTLINED_FUNCTION_19_3("/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/RandomOp.swift");
  *(v106 + 8) = xmmword_25BCBC690;
  OUTLINED_FUNCTION_72_4(v56);
  OUTLINED_FUNCTION_201();
  v57 = OUTLINED_FUNCTION_3();
  sub_25BC323E4(v57, v58, v59, v52, v60, v61, v62);
  OUTLINED_FUNCTION_11_30();
  sub_25BBF3030(v63, v64);
  v65 = OUTLINED_FUNCTION_185_0();
  sub_25BAA51C8(v65, &v93);
  if (*(&v94 + 1))
  {
    v100 = v93;
    v101 = v94;
    v102 = v95;
    OUTLINED_FUNCTION_135_0();
    OUTLINED_FUNCTION_225();
    sub_25BA9C2C8(&v92);
    sub_25BABF0A8(&v100);
  }

  else
  {
    sub_25BA9C2C8(&v93);
    OUTLINED_FUNCTION_114_3();
  }

  type metadata accessor for ContextManager();
  sub_25BAA49B8();
  OUTLINED_FUNCTION_175_0();

  sub_25BAA4AF4(&v100);
  sub_25BAA49B8();
  OUTLINED_FUNCTION_175_0();

  sub_25BAA4AF4(&v100);
  type metadata accessor for TensorRepresentation();
  OUTLINED_FUNCTION_93();
  v66 = swift_allocObject();

  OUTLINED_FUNCTION_48_9();
  v73 = sub_25BC0C634(v67, v68, v69, v70, v71, v72, v66);
  type metadata accessor for TensorHandle();
  OUTLINED_FUNCTION_22();
  v74 = swift_allocObject();
  *(v74 + 16) = v73;

  sub_25BAA6EB0();
  sub_25BAA51C8(v104, &v93);
  if (*(&v94 + 1))
  {
    v100 = v93;
    v101 = v94;
    v102 = v95;
    v103 = v96;
    *&v93 = v74;
    v75 = Tensor.scalarType.getter();
    sub_25BBABD24(v75, v76);
    OUTLINED_FUNCTION_186();
    if (!v77)
    {
      OUTLINED_FUNCTION_78_4();
      OUTLINED_FUNCTION_55(&v100, v78);
    }

    OUTLINED_FUNCTION_200_0();

    sub_25BA9C2C8(v86);
    v79 = *(v88 + 8);
    v80 = OUTLINED_FUNCTION_219();
    v79(v80);
    v81 = OUTLINED_FUNCTION_218();
    v79(v81);
    sub_25BABF0A8(&v100);
    sub_25BA9C2C8(v104);
    v74 = v93;
  }

  else
  {

    sub_25BA9C2C8(v86);
    v82 = *(v88 + 8);
    v83 = OUTLINED_FUNCTION_219();
    v82(v83);
    v84 = OUTLINED_FUNCTION_218();
    v82(v84);
    sub_25BA9C2C8(v104);
    sub_25BA9C2C8(&v93);
  }

  *v89 = v74;
  OUTLINED_FUNCTION_10_16();
}

uint64_t sub_25BBE5CAC(unint64_t a1)
{
  sub_25BAFD30C();
  v3 = v2;
  for (i = 0; i != 64; i += 8)
  {
    v5 = *(v3 + 16);
    if (v5 >= *(v3 + 24) >> 1)
    {
      sub_25BAFD30C();
      v3 = v6;
    }

    *(v3 + 16) = v5 + 1;
    *(v3 + v5 + 32) = a1 >> i;
  }

  return sub_25BB6B250(v3);
}

void Tensor.init<A>(shape:scalars:scalarType:on:)()
{
  OUTLINED_FUNCTION_9_18();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = *v11;
  v13 = *(*v11 + 16);
  if (v13)
  {
    v14 = (v12 + 32);
    v15 = 1;
    while (1)
    {
      v16 = *v14++;
      v17 = v15 * v16;
      if ((v15 * v16) >> 64 != (v15 * v16) >> 63)
      {
        break;
      }

      v15 = v17;
      if (!--v13)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
    v17 = 1;
LABEL_7:
    v18 = *(*(v0 + 8) + 8);
    OUTLINED_FUNCTION_92();
    if (v17 == sub_25BCB6ABC())
    {
      v32[7] = v12;
      v19 = *(v18 + 8);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v21 = sub_25BAA51C8(v6, v32);
      MEMORY[0x28223BE20](v21);
      v22 = OUTLINED_FUNCTION_137_0();
      Tensor.init(unsafeUninitializedShape:scalarType:computeDevice:initializingWith:)(v22, AssociatedTypeWitness, v2, v32, v23, v24, v25);
      sub_25BA9C2C8(v6);
      *v10 = v32[8];
      OUTLINED_FUNCTION_11_1(v4);
      (*(v26 + 8))(v8, v4);
      OUTLINED_FUNCTION_10_16();
      return;
    }
  }

  v32[0] = 0;
  v32[1] = 0xE000000000000000;
  sub_25BCB70FC();
  MEMORY[0x25F876C90](0xD000000000000013, 0x800000025BCDA710);
  if (*(v12 + 16))
  {
    while (1)
    {
      OUTLINED_FUNCTION_0();
      if (!v27)
      {
        break;
      }

      OUTLINED_FUNCTION_222();
      if (v27)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

LABEL_15:
  v28 = sub_25BCB77FC();
  MEMORY[0x25F876C90](v28);

  v29 = OUTLINED_FUNCTION_51_1();
  MEMORY[0x25F876C90](v29);
  OUTLINED_FUNCTION_92();
  sub_25BCB6ABC();
  v30 = sub_25BCB77FC();
  MEMORY[0x25F876C90](v30);

  v31 = OUTLINED_FUNCTION_50_8();
  MEMORY[0x25F876C90](v31);
  OUTLINED_FUNCTION_122_0();
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_228();
  __break(1u);
}

void Tensor.init(coercing:scalarType:on:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_38_2();
  a21 = v23;
  a22 = v26;
  v28 = v27;
  v30 = v29;
  v355 = v31;
  if (v24)
  {
    v32 = v25;
    v33 = v24;
  }

  else
  {
    v33 = OUTLINED_FUNCTION_229();
    v32 = v30[4];
  }

  v34 = sub_25BCB6E8C();
  OUTLINED_FUNCTION_2(v34);
  v36 = v35;
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v39);
  v41 = &v349 - v40;
  if (OUTLINED_FUNCTION_229() == v33)
  {
    OUTLINED_FUNCTION_136_0();
    v44 = &qword_27FBB4528;
    v45 = &unk_25BCC1A60;
LABEL_49:
    __swift_instantiateConcreteTypeFromMangledNameV2(v44, v45);
    OUTLINED_FUNCTION_179_0();
    swift_dynamicCast();
    v111 = OUTLINED_FUNCTION_178_0();
    __swift_storeEnumTagSinglePayload(v111, v112, v113, v33);
    goto LABEL_50;
  }

  if (swift_dynamicCastMetatype())
  {
    OUTLINED_FUNCTION_136_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4528, &unk_25BCC1A60);
    if (OUTLINED_FUNCTION_31_17())
    {
      OUTLINED_FUNCTION_61_5();
      v43 = *(v42 - 256);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE8, &qword_25BCC4128);
      if (OUTLINED_FUNCTION_18_26())
      {
        OUTLINED_FUNCTION_124_2();
        v22 = v361;
        v353 = v362;
        OUTLINED_FUNCTION_121_2(v360, v361);
        OUTLINED_FUNCTION_127();
        v32 = &v349;
        OUTLINED_FUNCTION_9();
        v49 = *(v48 + 64);
        MEMORY[0x28223BE20](v50);
        OUTLINED_FUNCTION_1();
        OUTLINED_FUNCTION_105_3();
        v52 = OUTLINED_FUNCTION_46_10(v51);
        v53(v52);
        OUTLINED_FUNCTION_104_4();
        sub_25BBF2A24();
        v43 = v54;
        OUTLINED_FUNCTION_143_0();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE0, &qword_25BCC4120);
        if (!OUTLINED_FUNCTION_18_26())
        {
          if (OUTLINED_FUNCTION_31_17())
          {
            OUTLINED_FUNCTION_61_5();
            v43 = *(v74 - 256);
          }

          else
          {
            LOWORD(v43) = 0;
            v22 = 1;
          }

          goto LABEL_48;
        }

        OUTLINED_FUNCTION_127();
        v352 = v34;
        v351 = v28;
        OUTLINED_FUNCTION_124_2();
        v34 = v361;
        v28 = v362;
        __swift_project_boxed_opaque_existential_1(v360, v361);
        OUTLINED_FUNCTION_119_3();
        v350 = v55;
        OUTLINED_FUNCTION_9();
        v32 = v56;
        v58 = *(v57 + 64);
        MEMORY[0x28223BE20](v59);
        OUTLINED_FUNCTION_1();
        v61 = OUTLINED_FUNCTION_60_4(v60);
        v62(v61);
        OUTLINED_FUNCTION_59_4();
        if (sub_25BCB6F9C() <= 64)
        {
          OUTLINED_FUNCTION_123_2();
          OUTLINED_FUNCTION_103_4();
          v95 = *(v94 - 256);
          v96 = OUTLINED_FUNCTION_196_0();
          OUTLINED_FUNCTION_59_4();
          v97 = sub_25BCB6F8C();
          v98 = OUTLINED_FUNCTION_58_5();
          v99(v98);
          if (v96)
          {
            v43 = v97;
          }

          else
          {
            v43 = v97;
          }

          v28 = v351;
          v32 = v95;
          OUTLINED_FUNCTION_216_0();
          v34 = v352;
          v36 = v349;
        }

        else
        {
          sub_25BB95A00();
          sub_25BB95A54();
          OUTLINED_FUNCTION_83_4();
          v63 = OUTLINED_FUNCTION_58_5();
          v64(v63);
          v43 = *&v359;
          OUTLINED_FUNCTION_101_3();
          OUTLINED_FUNCTION_143_0();
        }

        OUTLINED_FUNCTION_117(v368);
      }

      OUTLINED_FUNCTION_37_11();
    }

LABEL_48:
    __swift_destroy_boxed_opaque_existential_1(v363);
    *v363 = v43;
    BYTE2(v363[0]) = v22;
    v44 = &unk_27FBB5B08;
    v45 = &unk_25BCC4140;
    goto LABEL_49;
  }

  if (swift_dynamicCastMetatype())
  {
    sub_25BAC27B0(v30, v360);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4528, &unk_25BCC1A60);
    if (OUTLINED_FUNCTION_91_4())
    {
      v46 = 0;
      LOWORD(v47) = v363[0];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4D30, &qword_25BCC2280);
      if (OUTLINED_FUNCTION_91_4())
      {
        sub_25BADF778(v363, &v356);
        v47 = v357;
        v352 = v358;
        OUTLINED_FUNCTION_103_4();
        *(v67 - 256) = v32;
        OUTLINED_FUNCTION_121_2(&v356, v47);
        OUTLINED_FUNCTION_9();
        v69 = *(v68 + 64);
        MEMORY[0x28223BE20](v70);
        OUTLINED_FUNCTION_1();
        v41 = v36;
        v36 = v34;
        v72 = OUTLINED_FUNCTION_46_10(v71);
        v73(v72);
        OUTLINED_FUNCTION_80_4();
        BFloat16.init<A>(_:)();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4D28, &qword_25BCC2278);
        if (!OUTLINED_FUNCTION_91_4())
        {
          if (OUTLINED_FUNCTION_91_4())
          {
            v46 = 0;
            LODWORD(v47) = HIWORD(COERCE_UNSIGNED_INT(LOBYTE(v363[0])));
          }

          else
          {
            LOWORD(v47) = 0;
            v46 = 1;
          }

          goto LABEL_27;
        }

        sub_25BADF778(v363, &v356);
        v47 = v357;
        v352 = v358;
        OUTLINED_FUNCTION_103_4();
        *(v75 - 256) = v32;
        OUTLINED_FUNCTION_121_2(&v356, v47);
        OUTLINED_FUNCTION_9();
        v77 = *(v76 + 64);
        MEMORY[0x28223BE20](v78);
        OUTLINED_FUNCTION_1();
        v41 = v36;
        v36 = v34;
        v80 = OUTLINED_FUNCTION_46_10(v79);
        v81(v80);
        OUTLINED_FUNCTION_80_4();
        BFloat16.init<A>(_:)();
      }

      v32 = v47;
      LOWORD(v47) = LOWORD(v359);
      __swift_destroy_boxed_opaque_existential_1(&v356);
      v46 = 0;
    }

LABEL_27:
    __swift_destroy_boxed_opaque_existential_1(v360);
    LOWORD(v363[0]) = v47;
    BYTE2(v363[0]) = v46;
    v44 = &unk_27FBB6380;
    v45 = &unk_25BCC8FC8;
    goto LABEL_49;
  }

  if (swift_dynamicCastMetatype())
  {
    OUTLINED_FUNCTION_136_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4528, &unk_25BCC1A60);
    if (OUTLINED_FUNCTION_31_17())
    {
      OUTLINED_FUNCTION_61_5();
      v66 = *(v65 - 256);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE8, &qword_25BCC4128);
      if (OUTLINED_FUNCTION_18_26())
      {
        OUTLINED_FUNCTION_124_2();
        v22 = v361;
        v354 = v362;
        __swift_project_boxed_opaque_existential_1(v360, v361);
        OUTLINED_FUNCTION_119_3();
        v353 = v84;
        OUTLINED_FUNCTION_9();
        v86 = *(v85 + 64);
        MEMORY[0x28223BE20](v87);
        OUTLINED_FUNCTION_1();
        v89 = OUTLINED_FUNCTION_88_4(v88);
        v90(v89);
        v91 = OUTLINED_FUNCTION_89_4();
        v66 = sub_25BBF1544(v91, v92, v93);
        OUTLINED_FUNCTION_117(v370);
        OUTLINED_FUNCTION_37_11();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE0, &qword_25BCC4120);
        if (OUTLINED_FUNCTION_18_26())
        {
          OUTLINED_FUNCTION_127();
          v352 = v34;
          v351 = v28;
          OUTLINED_FUNCTION_124_2();
          v34 = v361;
          v28 = v362;
          __swift_project_boxed_opaque_existential_1(v360, v361);
          OUTLINED_FUNCTION_119_3();
          v350 = v100;
          OUTLINED_FUNCTION_9();
          v32 = v101;
          v103 = *(v102 + 64);
          MEMORY[0x28223BE20](v104);
          OUTLINED_FUNCTION_1();
          v106 = OUTLINED_FUNCTION_60_4(v105);
          v107(v106);
          OUTLINED_FUNCTION_59_4();
          if (sub_25BCB6F9C() <= 64)
          {
            OUTLINED_FUNCTION_196_0();
            v353 = &v349;
            OUTLINED_FUNCTION_123_2();
            v143 = v142;
            OUTLINED_FUNCTION_59_4();
            v144 = sub_25BCB6F8C();
            v145 = OUTLINED_FUNCTION_58_5();
            v146(v145);
            v32 = v354;
            v36 = v349;
            if (v143)
            {
              v66 = v144;
            }

            else
            {
              v66 = v144;
            }
          }

          else
          {
            sub_25BB18A50();
            sub_25BBF2100();
            OUTLINED_FUNCTION_83_4();
            v108 = OUTLINED_FUNCTION_58_5();
            v109(v108);
            v66 = *&v359;
            OUTLINED_FUNCTION_143_0();
          }

          OUTLINED_FUNCTION_117(v368);
          OUTLINED_FUNCTION_37_11();
          OUTLINED_FUNCTION_101_3();
        }

        else if (OUTLINED_FUNCTION_31_17())
        {
          OUTLINED_FUNCTION_61_5();
          v66 = *(v129 - 256);
        }

        else
        {
          v66 = 0.0;
          v22 = 1;
        }
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v363);
    *v363 = v66;
    BYTE4(v363[0]) = v22;
    v44 = &unk_27FBB6378;
    v45 = &unk_25BCC8FC0;
    goto LABEL_49;
  }

  if (swift_dynamicCastMetatype())
  {
    OUTLINED_FUNCTION_136_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4528, &unk_25BCC1A60);
    if (OUTLINED_FUNCTION_31_17())
    {
      OUTLINED_FUNCTION_61_5();
      v83 = *(v82 - 256);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE8, &qword_25BCC4128);
      if (OUTLINED_FUNCTION_18_26())
      {
        OUTLINED_FUNCTION_124_2();
        v22 = v361;
        v354 = v362;
        __swift_project_boxed_opaque_existential_1(v360, v361);
        OUTLINED_FUNCTION_119_3();
        v353 = v119;
        OUTLINED_FUNCTION_9();
        v121 = *(v120 + 64);
        MEMORY[0x28223BE20](v122);
        OUTLINED_FUNCTION_1();
        v124 = OUTLINED_FUNCTION_88_4(v123);
        v125(v124);
        v126 = OUTLINED_FUNCTION_89_4();
        v83 = sub_25BBF234C(v126, v127, v128);
        OUTLINED_FUNCTION_117(v370);
        OUTLINED_FUNCTION_37_11();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE0, &qword_25BCC4120);
        if (OUTLINED_FUNCTION_18_26())
        {
          OUTLINED_FUNCTION_127();
          v352 = v34;
          v351 = v28;
          OUTLINED_FUNCTION_124_2();
          v34 = v361;
          v28 = v362;
          __swift_project_boxed_opaque_existential_1(v360, v361);
          OUTLINED_FUNCTION_119_3();
          v350 = v130;
          OUTLINED_FUNCTION_9();
          v32 = v131;
          v133 = *(v132 + 64);
          MEMORY[0x28223BE20](v134);
          OUTLINED_FUNCTION_1();
          v136 = OUTLINED_FUNCTION_60_4(v135);
          v137(v136);
          OUTLINED_FUNCTION_59_4();
          if (sub_25BCB6F9C() <= 64)
          {
            OUTLINED_FUNCTION_196_0();
            v353 = &v349;
            OUTLINED_FUNCTION_123_2();
            v157 = v156;
            OUTLINED_FUNCTION_59_4();
            v158 = sub_25BCB6F8C();
            v159 = OUTLINED_FUNCTION_58_5();
            v160(v159);
            v32 = v354;
            v36 = v349;
            if (v157)
            {
              v83 = v158;
            }

            else
            {
              v83 = v158;
            }
          }

          else
          {
            sub_25BB675B0();
            sub_25BB67604();
            OUTLINED_FUNCTION_83_4();
            v138 = OUTLINED_FUNCTION_58_5();
            v139(v138);
            v83 = v359;
            OUTLINED_FUNCTION_143_0();
          }

          OUTLINED_FUNCTION_117(v368);
          OUTLINED_FUNCTION_37_11();
          OUTLINED_FUNCTION_101_3();
        }

        else if (OUTLINED_FUNCTION_31_17())
        {
          OUTLINED_FUNCTION_61_5();
          v83 = *(v147 - 256);
        }

        else
        {
          v83 = 0.0;
          v22 = 1;
        }
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v363);
    *v363 = v83;
    BYTE8(v363[0]) = v22;
    v44 = &unk_27FBB6370;
    v45 = &unk_25BCC8FB8;
    goto LABEL_49;
  }

  if (swift_dynamicCastMetatype())
  {
    OUTLINED_FUNCTION_136_0();
    v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4528, &unk_25BCC1A60);
    if (OUTLINED_FUNCTION_31_17())
    {
LABEL_43:
      OUTLINED_FUNCTION_40_13();
LABEL_67:
      __swift_destroy_boxed_opaque_existential_1(v363);
      LOBYTE(v363[0]) = v110;
      BYTE1(v363[0]) = v22;
      v44 = &unk_27FBB6360;
      v45 = &unk_25BCC8FB0;
      goto LABEL_49;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE0, &qword_25BCC4120);
    if (OUTLINED_FUNCTION_18_26())
    {
      OUTLINED_FUNCTION_124_2();
      v354 = v33;
      OUTLINED_FUNCTION_105_3();
      OUTLINED_FUNCTION_9_35();
      OUTLINED_FUNCTION_104_4();
      v33 = v354;
      v110 = sub_25BCB6F8C();
      OUTLINED_FUNCTION_37_11();
      goto LABEL_67;
    }

    if (OUTLINED_FUNCTION_33_15())
    {
      v148 = OUTLINED_FUNCTION_25_18();
      sub_25BBF112C(v148, v149);
      OUTLINED_FUNCTION_153_0();
      if ((v150 & 1) == 0)
      {
        goto LABEL_43;
      }

      v151 = sub_25BAFCF80(80);
      v153 = OUTLINED_FUNCTION_0_60(v151, v152);
      goto LABEL_106;
    }

    if (OUTLINED_FUNCTION_33_15())
    {
      v161 = OUTLINED_FUNCTION_24_15();
      sub_25BBF0F78(v161, v162);
      OUTLINED_FUNCTION_153_0();
      if ((v163 & 1) == 0)
      {
        goto LABEL_43;
      }

      v164 = sub_25BAFCF80(80);
      v153 = OUTLINED_FUNCTION_3_36(v164, v165);
      goto LABEL_106;
    }

    if (OUTLINED_FUNCTION_33_15())
    {
      v174 = OUTLINED_FUNCTION_23_22();
      sub_25BBF0DC4(v174, v175);
      OUTLINED_FUNCTION_153_0();
      if ((v176 & 1) == 0)
      {
        goto LABEL_43;
      }

      v177 = sub_25BAFCF80(80);
      v153 = OUTLINED_FUNCTION_4_43(v177, v178);
LABEL_106:
      MEMORY[0x25F876C90](v153);
      OUTLINED_FUNCTION_11_0();
      v179 = OUTLINED_FUNCTION_217();
LABEL_107:
      v180 = 0xE400000000000000;
LABEL_333:
      MEMORY[0x25F876C90](v179, v180);
      OUTLINED_FUNCTION_162_0();
      for (i = &a11; ; i = &a17)
      {
        v328 = *(i - 32);
        OUTLINED_FUNCTION_122_0();
        v349 = 2740;
        OUTLINED_FUNCTION_10_5();
        sub_25BCB74CC();
        __break(1u);
LABEL_335:
        v329 = sub_25BAFCF80(80);
        OUTLINED_FUNCTION_28_17(v329, v330);
        OUTLINED_FUNCTION_165_0();

        OUTLINED_FUNCTION_11_0();
        v321 = OUTLINED_FUNCTION_106_4();
LABEL_336:
        v322 = 0xE500000000000000;
LABEL_337:
        MEMORY[0x25F876C90](v321, v322);
        OUTLINED_FUNCTION_162_0();
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE8, &qword_25BCC4128);
    if ((OUTLINED_FUNCTION_18_26() & 1) == 0)
    {
      if ((OUTLINED_FUNCTION_31_17() & 1) == 0)
      {
        OUTLINED_FUNCTION_141_0();
        goto LABEL_67;
      }

      goto LABEL_43;
    }

    v353 = &v349;
    OUTLINED_FUNCTION_8_33();
    sub_25BBF22F8();
    OUTLINED_FUNCTION_32_15();
    if ((BYTE1(v359) & 1) == 0)
    {
      v110 = LOBYTE(v359);
      OUTLINED_FUNCTION_37_11();
      OUTLINED_FUNCTION_216_0();
      goto LABEL_67;
    }

    v319 = sub_25BAFCF80(80);
    OUTLINED_FUNCTION_28_17(v319, v320);
    OUTLINED_FUNCTION_165_0();

    OUTLINED_FUNCTION_11_0();
    v321 = OUTLINED_FUNCTION_217();
LABEL_328:
    v322 = 0xE400000000000000;
    goto LABEL_337;
  }

  if (swift_dynamicCastMetatype())
  {
    OUTLINED_FUNCTION_136_0();
    v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4528, &unk_25BCC1A60);
    if (OUTLINED_FUNCTION_31_17())
    {
LABEL_64:
      OUTLINED_FUNCTION_61_5();
      v140 = *(v141 - 256);
LABEL_84:
      __swift_destroy_boxed_opaque_existential_1(v363);
      LOWORD(v363[0]) = v140;
      BYTE2(v363[0]) = v22;
      v44 = &unk_27FBB6350;
      v45 = &unk_25BCC8FA8;
      goto LABEL_49;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE0, &qword_25BCC4120);
    if (OUTLINED_FUNCTION_18_26())
    {
      OUTLINED_FUNCTION_124_2();
      v354 = v33;
      OUTLINED_FUNCTION_105_3();
      OUTLINED_FUNCTION_9_35();
      OUTLINED_FUNCTION_104_4();
      v33 = v354;
      v140 = sub_25BCB6F8C();
      OUTLINED_FUNCTION_37_11();
      goto LABEL_84;
    }

    if (OUTLINED_FUNCTION_33_15())
    {
      v166 = OUTLINED_FUNCTION_25_18();
      sub_25BBF0C54(v166, v167);
      OUTLINED_FUNCTION_147_0();
      if ((v168 & 1) == 0)
      {
        goto LABEL_64;
      }

      v169 = sub_25BAFCF80(80);
      v171 = OUTLINED_FUNCTION_0_60(v169, v170);
    }

    else if (OUTLINED_FUNCTION_33_15())
    {
      v181 = OUTLINED_FUNCTION_24_15();
      sub_25BBF0AA0(v181, v182);
      OUTLINED_FUNCTION_147_0();
      if ((v183 & 1) == 0)
      {
        goto LABEL_64;
      }

      v184 = sub_25BAFCF80(80);
      v171 = OUTLINED_FUNCTION_3_36(v184, v185);
    }

    else
    {
      if ((OUTLINED_FUNCTION_33_15() & 1) == 0)
      {
        OUTLINED_FUNCTION_52_7();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE8, &qword_25BCC4128);
        if (OUTLINED_FUNCTION_18_26())
        {
          OUTLINED_FUNCTION_8_33();
          sub_25BBF22A4();
          OUTLINED_FUNCTION_32_15();
          if (BYTE2(v359))
          {
            v323 = sub_25BAFCF80(80);
            OUTLINED_FUNCTION_28_17(v323, v324);
            OUTLINED_FUNCTION_165_0();

            OUTLINED_FUNCTION_11_0();
            v321 = OUTLINED_FUNCTION_108_4();
            goto LABEL_336;
          }

          v140 = LOWORD(v359);
          OUTLINED_FUNCTION_37_11();
        }

        else if (OUTLINED_FUNCTION_31_17())
        {
          OUTLINED_FUNCTION_40_13();
        }

        else
        {
          OUTLINED_FUNCTION_141_0();
        }

        OUTLINED_FUNCTION_44_8();
        goto LABEL_84;
      }

      v192 = OUTLINED_FUNCTION_23_22();
      sub_25BBF08EC(v192, v193);
      OUTLINED_FUNCTION_147_0();
      if ((v194 & 1) == 0)
      {
        goto LABEL_64;
      }

      v195 = sub_25BAFCF80(80);
      v171 = OUTLINED_FUNCTION_4_43(v195, v196);
    }

    MEMORY[0x25F876C90](v171);
    OUTLINED_FUNCTION_11_0();
    v179 = OUTLINED_FUNCTION_108_4();
LABEL_332:
    v180 = 0xE500000000000000;
    goto LABEL_333;
  }

  if (swift_dynamicCastMetatype())
  {
    OUTLINED_FUNCTION_136_0();
    v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4528, &unk_25BCC1A60);
    if (OUTLINED_FUNCTION_31_17())
    {
LABEL_81:
      OUTLINED_FUNCTION_61_5();
      v154 = *(v155 - 256);
LABEL_102:
      __swift_destroy_boxed_opaque_existential_1(v363);
      LODWORD(v363[0]) = v154;
      BYTE4(v363[0]) = v22;
      v44 = &unk_27FBB5AF0;
      v45 = &unk_25BCC4130;
      goto LABEL_49;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE0, &qword_25BCC4120);
    if (OUTLINED_FUNCTION_18_26())
    {
      OUTLINED_FUNCTION_124_2();
      v354 = v33;
      OUTLINED_FUNCTION_105_3();
      OUTLINED_FUNCTION_9_35();
      OUTLINED_FUNCTION_104_4();
      v33 = v354;
      v154 = sub_25BCB6F8C();
      OUTLINED_FUNCTION_37_11();
      goto LABEL_102;
    }

    if (OUTLINED_FUNCTION_33_15())
    {
      OUTLINED_FUNCTION_25_18();
      sub_25BBF075C();
      OUTLINED_FUNCTION_145_0();
      if ((v186 & 1) == 0)
      {
        goto LABEL_81;
      }

      v187 = sub_25BAFCF80(80);
      v189 = OUTLINED_FUNCTION_0_60(v187, v188);
    }

    else
    {
      if ((OUTLINED_FUNCTION_33_15() & 1) == 0)
      {
        OUTLINED_FUNCTION_52_7();
        if (OUTLINED_FUNCTION_33_15())
        {
          v207 = OUTLINED_FUNCTION_23_22();
          sub_25BBF0474(v207, v208);
          OUTLINED_FUNCTION_145_0();
          if (v209)
          {
            v325 = sub_25BAFCF80(80);
            v189 = OUTLINED_FUNCTION_4_43(v325, v326);
            goto LABEL_331;
          }

          OUTLINED_FUNCTION_61_5();
          v154 = *(v210 - 256);
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE8, &qword_25BCC4128);
          if (OUTLINED_FUNCTION_18_26())
          {
            OUTLINED_FUNCTION_8_33();
            sub_25BB959AC();
            OUTLINED_FUNCTION_32_15();
            if (BYTE4(v359))
            {
              goto LABEL_335;
            }

            v154 = LODWORD(v359);
            OUTLINED_FUNCTION_37_11();
          }

          else if (OUTLINED_FUNCTION_31_17())
          {
            OUTLINED_FUNCTION_40_13();
          }

          else
          {
            OUTLINED_FUNCTION_141_0();
          }
        }

        OUTLINED_FUNCTION_44_8();
        goto LABEL_102;
      }

      OUTLINED_FUNCTION_24_15();
      sub_25BBF0614();
      OUTLINED_FUNCTION_145_0();
      if ((v197 & 1) == 0)
      {
        goto LABEL_81;
      }

      v198 = sub_25BAFCF80(80);
      v189 = OUTLINED_FUNCTION_3_36(v198, v199);
    }

LABEL_331:
    MEMORY[0x25F876C90](v189);
    OUTLINED_FUNCTION_11_0();
    v179 = OUTLINED_FUNCTION_106_4();
    goto LABEL_332;
  }

  if (swift_dynamicCastMetatype())
  {
    OUTLINED_FUNCTION_136_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4528, &unk_25BCC1A60);
    if (OUTLINED_FUNCTION_31_17())
    {
      OUTLINED_FUNCTION_61_5();
      v173 = *(v172 - 256);
LABEL_169:
      OUTLINED_FUNCTION_146_0();
      v44 = &qword_27FBB6340;
      v45 = &qword_25BCCE500;
      goto LABEL_49;
    }

    v354 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE0, &qword_25BCC4120);
    if (OUTLINED_FUNCTION_18_26())
    {
      OUTLINED_FUNCTION_124_2();
      OUTLINED_FUNCTION_9_35();
      sub_25BCB6F8C();
      OUTLINED_FUNCTION_37_11();
LABEL_168:
      v30 = v354;
      goto LABEL_169;
    }

    OUTLINED_FUNCTION_52_7();
    if (OUTLINED_FUNCTION_33_15())
    {
      OUTLINED_FUNCTION_25_18();
      sub_25BBF02C4();
      OUTLINED_FUNCTION_85_4();
      if (v200)
      {
        v201 = sub_25BAFCF80(80);
        v203 = OUTLINED_FUNCTION_0_60(v201, v202);
LABEL_339:
        MEMORY[0x25F876C90](v203);
        OUTLINED_FUNCTION_11_0();
        v179 = OUTLINED_FUNCTION_109_4();
        goto LABEL_333;
      }
    }

    else if (OUTLINED_FUNCTION_33_15())
    {
      OUTLINED_FUNCTION_24_15();
      sub_25BBF0118();
      OUTLINED_FUNCTION_85_4();
      if (v211)
      {
        v212 = sub_25BAFCF80(80);
        v203 = OUTLINED_FUNCTION_3_36(v212, v213);
        goto LABEL_339;
      }
    }

    else
    {
      if ((OUTLINED_FUNCTION_33_15() & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE8, &qword_25BCC4128);
        if (OUTLINED_FUNCTION_18_26())
        {
          OUTLINED_FUNCTION_8_33();
          sub_25BBF2250();
          OUTLINED_FUNCTION_32_15();
          OUTLINED_FUNCTION_215_0();
          if (v234)
          {
            v333 = sub_25BAFCF80(80);
            OUTLINED_FUNCTION_28_17(v333, v334);
            OUTLINED_FUNCTION_165_0();

            OUTLINED_FUNCTION_11_0();
            v321 = OUTLINED_FUNCTION_109_4();
            goto LABEL_337;
          }

          OUTLINED_FUNCTION_211_0();
          OUTLINED_FUNCTION_37_11();
        }

        else if (OUTLINED_FUNCTION_31_17())
        {
          OUTLINED_FUNCTION_40_13();
        }

        else
        {
          OUTLINED_FUNCTION_212_0();
        }

        goto LABEL_167;
      }

      OUTLINED_FUNCTION_23_22();
      sub_25BBEFF60();
      OUTLINED_FUNCTION_85_4();
      if (v222)
      {
        v331 = sub_25BAFCF80(80);
        v203 = OUTLINED_FUNCTION_4_43(v331, v332);
        goto LABEL_339;
      }
    }

    OUTLINED_FUNCTION_61_5();
    v224 = *(v223 - 256);
LABEL_167:
    OUTLINED_FUNCTION_44_8();
    goto LABEL_168;
  }

  if (swift_dynamicCastMetatype())
  {
    OUTLINED_FUNCTION_136_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4528, &unk_25BCC1A60);
    if (OUTLINED_FUNCTION_31_17())
    {
      OUTLINED_FUNCTION_61_5();
      v191 = *(v190 - 256);
LABEL_194:
      OUTLINED_FUNCTION_146_0();
      v44 = &unk_27FBB6330;
      v45 = &unk_25BCC8FA0;
      goto LABEL_49;
    }

    OUTLINED_FUNCTION_52_7();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE0, &qword_25BCC4120);
    if (OUTLINED_FUNCTION_18_26())
    {
      OUTLINED_FUNCTION_124_2();
      OUTLINED_FUNCTION_9_35();
      sub_25BCB6F8C();
LABEL_142:
      OUTLINED_FUNCTION_37_11();
LABEL_193:
      OUTLINED_FUNCTION_44_8();
      goto LABEL_194;
    }

    if (OUTLINED_FUNCTION_33_15())
    {
      OUTLINED_FUNCTION_25_18();
      sub_25BBEFE1C();
      OUTLINED_FUNCTION_85_4();
      if (v214)
      {
        v215 = sub_25BAFCF80(80);
        v217 = OUTLINED_FUNCTION_0_60(v215, v216);
LABEL_342:
        MEMORY[0x25F876C90](v217);
        OUTLINED_FUNCTION_11_0();
        v179 = OUTLINED_FUNCTION_204_0();
        goto LABEL_107;
      }
    }

    else if (OUTLINED_FUNCTION_33_15())
    {
      OUTLINED_FUNCTION_24_15();
      sub_25BBEFCE0();
      OUTLINED_FUNCTION_85_4();
      if (v225)
      {
        v226 = sub_25BAFCF80(80);
        v217 = OUTLINED_FUNCTION_3_36(v226, v227);
        goto LABEL_342;
      }
    }

    else
    {
      if ((OUTLINED_FUNCTION_33_15() & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE8, &qword_25BCC4128);
        if ((OUTLINED_FUNCTION_18_26() & 1) == 0)
        {
          if (OUTLINED_FUNCTION_31_17())
          {
            OUTLINED_FUNCTION_40_13();
          }

          else
          {
            OUTLINED_FUNCTION_212_0();
          }

          goto LABEL_193;
        }

        OUTLINED_FUNCTION_8_33();
        sub_25BBF21FC();
        OUTLINED_FUNCTION_32_15();
        OUTLINED_FUNCTION_215_0();
        if (v251)
        {
          v337 = sub_25BAFCF80(80);
          OUTLINED_FUNCTION_28_17(v337, v338);
          OUTLINED_FUNCTION_165_0();

          OUTLINED_FUNCTION_11_0();
          v321 = OUTLINED_FUNCTION_204_0();
          goto LABEL_328;
        }

        OUTLINED_FUNCTION_211_0();
        goto LABEL_142;
      }

      OUTLINED_FUNCTION_23_22();
      sub_25BBEFBDC();
      OUTLINED_FUNCTION_85_4();
      if (v237)
      {
        v335 = sub_25BAFCF80(80);
        v217 = OUTLINED_FUNCTION_4_43(v335, v336);
        goto LABEL_342;
      }
    }

    OUTLINED_FUNCTION_61_5();
    v239 = *(v238 - 256);
    goto LABEL_193;
  }

  OUTLINED_FUNCTION_123_2();
  OUTLINED_FUNCTION_103_4();
  *(v204 - 256) = v32;
  if (swift_dynamicCastMetatype())
  {
    sub_25BAC27B0(v30, v363);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4528, &unk_25BCC1A60);
    if (OUTLINED_FUNCTION_31_17())
    {
LABEL_136:
      OUTLINED_FUNCTION_61_5();
      v206 = *(v205 - 256);
LABEL_163:
      OUTLINED_FUNCTION_146_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6320, &qword_25BCC8F98);
      OUTLINED_FUNCTION_179_0();
      swift_dynamicCast();
      v219 = OUTLINED_FUNCTION_178_0();
      __swift_storeEnumTagSinglePayload(v219, v220, v221, v33);
      v36 = v349;
      v32 = v354;
      goto LABEL_50;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE0, &qword_25BCC4120);
    if (OUTLINED_FUNCTION_18_26())
    {
      OUTLINED_FUNCTION_124_2();
      OUTLINED_FUNCTION_9_35();
      sub_25BCB6F8C();
LABEL_162:
      OUTLINED_FUNCTION_37_11();
      goto LABEL_163;
    }

    if (OUTLINED_FUNCTION_33_15())
    {
      OUTLINED_FUNCTION_25_18();
      sub_25BBF02C4();
      OUTLINED_FUNCTION_85_4();
      if ((v228 & 1) == 0)
      {
        goto LABEL_136;
      }

      v229 = sub_25BAFCF80(80);
      v231 = OUTLINED_FUNCTION_0_60(v229, v230);
    }

    else if (OUTLINED_FUNCTION_33_15())
    {
      OUTLINED_FUNCTION_24_15();
      sub_25BBF0118();
      OUTLINED_FUNCTION_85_4();
      if ((v240 & 1) == 0)
      {
        goto LABEL_136;
      }

      v241 = sub_25BAFCF80(80);
      v231 = OUTLINED_FUNCTION_3_36(v241, v242);
    }

    else
    {
      if ((OUTLINED_FUNCTION_33_15() & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE8, &qword_25BCC4128);
        if ((OUTLINED_FUNCTION_18_26() & 1) == 0)
        {
          if (OUTLINED_FUNCTION_31_17())
          {
            OUTLINED_FUNCTION_40_13();
          }

          else
          {
            OUTLINED_FUNCTION_212_0();
          }

          goto LABEL_163;
        }

        OUTLINED_FUNCTION_8_33();
        sub_25BBF21A8();
        OUTLINED_FUNCTION_32_15();
        OUTLINED_FUNCTION_215_0();
        if (v268)
        {
          v339 = sub_25BAFCF80(80);
          OUTLINED_FUNCTION_28_17(v339, v340);
          OUTLINED_FUNCTION_165_0();

          OUTLINED_FUNCTION_11_0();
          v321 = OUTLINED_FUNCTION_107_4();
          goto LABEL_336;
        }

        OUTLINED_FUNCTION_211_0();
        goto LABEL_162;
      }

      OUTLINED_FUNCTION_23_22();
      sub_25BBEFF60();
      OUTLINED_FUNCTION_85_4();
      if ((v252 & 1) == 0)
      {
        goto LABEL_136;
      }

      v253 = sub_25BAFCF80(80);
      v231 = OUTLINED_FUNCTION_4_43(v253, v254);
    }

    MEMORY[0x25F876C90](v231);
    OUTLINED_FUNCTION_11_0();
    v179 = OUTLINED_FUNCTION_107_4();
    goto LABEL_332;
  }

  v32 = v33;
  if (!swift_dynamicCastMetatype())
  {
    if (swift_dynamicCastMetatype())
    {
      OUTLINED_FUNCTION_136_0();
      v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4528, &unk_25BCC1A60);
      if (OUTLINED_FUNCTION_31_17())
      {
LABEL_182:
        OUTLINED_FUNCTION_61_5();
        v232 = *(v233 - 256);
LABEL_214:
        __swift_destroy_boxed_opaque_existential_1(v363);
        LOWORD(v363[0]) = v232;
        BYTE2(v363[0]) = v22;
        v235 = &qword_27FBB6308;
        v236 = &qword_25BCC8F88;
        goto LABEL_314;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE0, &qword_25BCC4120);
      if (OUTLINED_FUNCTION_18_26())
      {
        OUTLINED_FUNCTION_124_2();
        OUTLINED_FUNCTION_9_35();
        v232 = sub_25BCB6F8C();
LABEL_213:
        OUTLINED_FUNCTION_37_11();
        goto LABEL_214;
      }

      if (OUTLINED_FUNCTION_33_15())
      {
        v260 = OUTLINED_FUNCTION_25_18();
        sub_25BBEF69C(v260, v261);
        OUTLINED_FUNCTION_147_0();
        if ((v262 & 1) == 0)
        {
          goto LABEL_182;
        }

        v263 = sub_25BAFCF80(80);
        v265 = OUTLINED_FUNCTION_0_60(v263, v264);
        goto LABEL_264;
      }

      if (OUTLINED_FUNCTION_33_15())
      {
        v274 = OUTLINED_FUNCTION_24_15();
        sub_25BBEF53C(v274, v275);
        OUTLINED_FUNCTION_147_0();
        if ((v276 & 1) == 0)
        {
          goto LABEL_182;
        }

        v277 = sub_25BAFCF80(80);
        v265 = OUTLINED_FUNCTION_3_36(v277, v278);
        goto LABEL_264;
      }

      if (OUTLINED_FUNCTION_33_15())
      {
        v286 = OUTLINED_FUNCTION_23_22();
        sub_25BBEF3DC(v286, v287);
        OUTLINED_FUNCTION_147_0();
        if ((v288 & 1) == 0)
        {
          goto LABEL_182;
        }

        v289 = sub_25BAFCF80(80);
        v265 = OUTLINED_FUNCTION_4_43(v289, v290);
LABEL_264:
        MEMORY[0x25F876C90](v265);
        OUTLINED_FUNCTION_11_0();
        v179 = OUTLINED_FUNCTION_71_3() & 0xFFFF0000FFFFFFFFLL | 0x363100000000;
LABEL_298:
        v180 = 0xE600000000000000;
        goto LABEL_333;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE8, &qword_25BCC4128);
      if ((OUTLINED_FUNCTION_18_26() & 1) == 0)
      {
        if (OUTLINED_FUNCTION_31_17())
        {
          OUTLINED_FUNCTION_40_13();
        }

        else
        {
          OUTLINED_FUNCTION_141_0();
        }

        goto LABEL_214;
      }

      OUTLINED_FUNCTION_8_33();
      sub_25BB95A54();
      OUTLINED_FUNCTION_32_15();
      if ((BYTE2(v359) & 1) == 0)
      {
        v232 = LOWORD(v359);
        goto LABEL_213;
      }

      v343 = sub_25BAFCF80(80);
      OUTLINED_FUNCTION_28_17(v343, v344);
      OUTLINED_FUNCTION_165_0();

      OUTLINED_FUNCTION_11_0();
      v321 = OUTLINED_FUNCTION_71_3() & 0xFFFF0000FFFFFFFFLL | 0x363100000000;
LABEL_349:
      v322 = 0xE600000000000000;
      goto LABEL_337;
    }

    if (swift_dynamicCastMetatype())
    {
      OUTLINED_FUNCTION_136_0();
      v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4528, &unk_25BCC1A60);
      if (OUTLINED_FUNCTION_31_17())
      {
LABEL_207:
        OUTLINED_FUNCTION_61_5();
        v249 = *(v250 - 256);
LABEL_237:
        __swift_destroy_boxed_opaque_existential_1(v363);
        LODWORD(v363[0]) = v249;
        BYTE4(v363[0]) = v22;
        v235 = &unk_27FBB62F8;
        v236 = &unk_25BCC8F80;
        goto LABEL_314;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE0, &qword_25BCC4120);
      if (OUTLINED_FUNCTION_18_26())
      {
        OUTLINED_FUNCTION_124_2();
        OUTLINED_FUNCTION_9_35();
        v249 = sub_25BCB6F8C();
LABEL_236:
        OUTLINED_FUNCTION_37_11();
        goto LABEL_237;
      }

      if (OUTLINED_FUNCTION_33_15())
      {
        v279 = OUTLINED_FUNCTION_25_18();
        sub_25BBEF278(v279, v280);
        OUTLINED_FUNCTION_145_0();
        if ((v281 & 1) == 0)
        {
          goto LABEL_207;
        }

        v282 = sub_25BAFCF80(80);
        v284 = OUTLINED_FUNCTION_0_60(v282, v283);
      }

      else if (OUTLINED_FUNCTION_33_15())
      {
        v291 = OUTLINED_FUNCTION_24_15();
        sub_25BBEF15C(v291, v292);
        OUTLINED_FUNCTION_145_0();
        if ((v293 & 1) == 0)
        {
          goto LABEL_207;
        }

        v294 = sub_25BAFCF80(80);
        v284 = OUTLINED_FUNCTION_3_36(v294, v295);
      }

      else
      {
        if ((OUTLINED_FUNCTION_33_15() & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE8, &qword_25BCC4128);
          if ((OUTLINED_FUNCTION_18_26() & 1) == 0)
          {
            if (OUTLINED_FUNCTION_31_17())
            {
              OUTLINED_FUNCTION_40_13();
            }

            else
            {
              OUTLINED_FUNCTION_141_0();
            }

            goto LABEL_237;
          }

          OUTLINED_FUNCTION_8_33();
          sub_25BBF2100();
          OUTLINED_FUNCTION_32_15();
          if (BYTE4(v359))
          {
            v345 = sub_25BAFCF80(80);
            OUTLINED_FUNCTION_28_17(v345, v346);
            OUTLINED_FUNCTION_165_0();

            OUTLINED_FUNCTION_11_0();
            v321 = OUTLINED_FUNCTION_71_3() & 0xFFFF0000FFFFFFFFLL | 0x323300000000;
            goto LABEL_349;
          }

          v249 = LODWORD(v359);
          goto LABEL_236;
        }

        v302 = OUTLINED_FUNCTION_23_22();
        sub_25BBEF000(v302, v303);
        OUTLINED_FUNCTION_145_0();
        if ((v304 & 1) == 0)
        {
          goto LABEL_207;
        }

        v305 = sub_25BAFCF80(80);
        v284 = OUTLINED_FUNCTION_4_43(v305, v306);
      }

      MEMORY[0x25F876C90](v284);
      OUTLINED_FUNCTION_11_0();
      v179 = OUTLINED_FUNCTION_71_3() & 0xFFFF0000FFFFFFFFLL | 0x323300000000;
      goto LABEL_298;
    }

    if (swift_dynamicCastMetatype())
    {
      OUTLINED_FUNCTION_136_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4528, &unk_25BCC1A60);
      if (OUTLINED_FUNCTION_31_17())
      {
LABEL_230:
        OUTLINED_FUNCTION_61_5();
        v267 = *(v266 - 256);
LABEL_260:
        OUTLINED_FUNCTION_146_0();
        v235 = &unk_27FBB62F0;
        v236 = &unk_25BCC8F78;
        goto LABEL_314;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE0, &qword_25BCC4120);
      if (OUTLINED_FUNCTION_18_26())
      {
        OUTLINED_FUNCTION_124_2();
        OUTLINED_FUNCTION_9_35();
        sub_25BCB6F8C();
LABEL_259:
        OUTLINED_FUNCTION_37_11();
        goto LABEL_260;
      }

      if (OUTLINED_FUNCTION_33_15())
      {
        OUTLINED_FUNCTION_25_18();
        sub_25BBEFE1C();
        OUTLINED_FUNCTION_85_4();
        if ((v296 & 1) == 0)
        {
          goto LABEL_230;
        }

        v297 = sub_25BAFCF80(80);
        v299 = OUTLINED_FUNCTION_0_60(v297, v298);
      }

      else if (OUTLINED_FUNCTION_33_15())
      {
        OUTLINED_FUNCTION_24_15();
        sub_25BBEFCE0();
        OUTLINED_FUNCTION_85_4();
        if ((v307 & 1) == 0)
        {
          goto LABEL_230;
        }

        v308 = sub_25BAFCF80(80);
        v299 = OUTLINED_FUNCTION_3_36(v308, v309);
      }

      else
      {
        if ((OUTLINED_FUNCTION_33_15() & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE8, &qword_25BCC4128);
          if ((OUTLINED_FUNCTION_18_26() & 1) == 0)
          {
            if (OUTLINED_FUNCTION_31_17())
            {
              OUTLINED_FUNCTION_40_13();
            }

            else
            {
              OUTLINED_FUNCTION_212_0();
            }

            goto LABEL_260;
          }

          OUTLINED_FUNCTION_8_33();
          sub_25BB67604();
          OUTLINED_FUNCTION_32_15();
          OUTLINED_FUNCTION_215_0();
          if (v314)
          {
            v347 = sub_25BAFCF80(80);
            OUTLINED_FUNCTION_28_17(v347, v348);
            OUTLINED_FUNCTION_165_0();

            OUTLINED_FUNCTION_11_0();
            v321 = OUTLINED_FUNCTION_71_3() & 0xFFFF0000FFFFFFFFLL | 0x343600000000;
            goto LABEL_349;
          }

          OUTLINED_FUNCTION_211_0();
          goto LABEL_259;
        }

        OUTLINED_FUNCTION_23_22();
        sub_25BBEFBDC();
        OUTLINED_FUNCTION_85_4();
        if ((v311 & 1) == 0)
        {
          goto LABEL_230;
        }

        v312 = sub_25BAFCF80(80);
        v299 = OUTLINED_FUNCTION_4_43(v312, v313);
      }

      MEMORY[0x25F876C90](v299);
      OUTLINED_FUNCTION_11_0();
      v179 = OUTLINED_FUNCTION_71_3() & 0xFFFF0000FFFFFFFFLL | 0x343600000000;
      goto LABEL_298;
    }

    if (!swift_dynamicCastMetatype())
    {
      __swift_storeEnumTagSinglePayload(v41, 1, 1, v33);
      OUTLINED_FUNCTION_143_0();
      OUTLINED_FUNCTION_216_0();
      v36 = v349;
      goto LABEL_51;
    }

    OUTLINED_FUNCTION_136_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4528, &unk_25BCC1A60);
    if (OUTLINED_FUNCTION_31_17())
    {
      v285 = v356;
LABEL_313:
      __swift_destroy_boxed_opaque_existential_1(v363);
      LOBYTE(v363[0]) = v285;
      v235 = &unk_27FBB5B00;
      v236 = &unk_25BCC4138;
      goto LABEL_314;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE8, &qword_25BCC4128);
    if (OUTLINED_FUNCTION_18_26())
    {
      OUTLINED_FUNCTION_124_2();
      v300 = v362;
      __swift_project_boxed_opaque_existential_1(v360, v361);
      v301 = v300[2];
      v285 = (sub_25BCB61FC() & 1) == 0;
      __swift_destroy_boxed_opaque_existential_1(v360);
      goto LABEL_313;
    }

    if (OUTLINED_FUNCTION_31_17())
    {
      goto LABEL_290;
    }

    if (OUTLINED_FUNCTION_31_17())
    {
      goto LABEL_301;
    }

    if (OUTLINED_FUNCTION_31_17())
    {
      goto LABEL_308;
    }

    if (!OUTLINED_FUNCTION_31_17() && !OUTLINED_FUNCTION_31_17())
    {
      if (OUTLINED_FUNCTION_31_17())
      {
LABEL_290:
        OUTLINED_FUNCTION_70_4();
LABEL_309:
        v315 = v310 == 0;
        goto LABEL_310;
      }

      if (OUTLINED_FUNCTION_31_17())
      {
LABEL_301:
        v310 = v356;
        goto LABEL_309;
      }

      if (OUTLINED_FUNCTION_31_17())
      {
LABEL_308:
        v310 = v356;
        goto LABEL_309;
      }

      if (!OUTLINED_FUNCTION_31_17())
      {
        v285 = 2;
        goto LABEL_313;
      }
    }

    v315 = v356 == 0;
LABEL_310:
    v285 = !v315;
    goto LABEL_313;
  }

  OUTLINED_FUNCTION_136_0();
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4528, &unk_25BCC1A60);
  if ((OUTLINED_FUNCTION_31_17() & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE0, &qword_25BCC4120);
    if (OUTLINED_FUNCTION_18_26())
    {
      OUTLINED_FUNCTION_124_2();
      OUTLINED_FUNCTION_9_35();
      v218 = sub_25BCB6F8C();
      goto LABEL_188;
    }

    if (OUTLINED_FUNCTION_33_15())
    {
      v243 = OUTLINED_FUNCTION_25_18();
      sub_25BBEFA7C(v243, v244);
      OUTLINED_FUNCTION_153_0();
      if ((v245 & 1) == 0)
      {
        goto LABEL_156;
      }

      v246 = sub_25BAFCF80(80);
      v248 = OUTLINED_FUNCTION_0_60(v246, v247);
    }

    else if (OUTLINED_FUNCTION_33_15())
    {
      v255 = OUTLINED_FUNCTION_24_15();
      sub_25BBEF91C(v255, v256);
      OUTLINED_FUNCTION_153_0();
      if ((v257 & 1) == 0)
      {
        goto LABEL_156;
      }

      v258 = sub_25BAFCF80(80);
      v248 = OUTLINED_FUNCTION_3_36(v258, v259);
    }

    else
    {
      if ((OUTLINED_FUNCTION_33_15() & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE8, &qword_25BCC4128);
        if ((OUTLINED_FUNCTION_18_26() & 1) == 0)
        {
          if ((OUTLINED_FUNCTION_31_17() & 1) == 0)
          {
            OUTLINED_FUNCTION_141_0();
            goto LABEL_189;
          }

          goto LABEL_156;
        }

        OUTLINED_FUNCTION_8_33();
        sub_25BBF2154();
        OUTLINED_FUNCTION_32_15();
        if (BYTE1(v359))
        {
          v341 = sub_25BAFCF80(80);
          OUTLINED_FUNCTION_28_17(v341, v342);
          OUTLINED_FUNCTION_165_0();

          OUTLINED_FUNCTION_11_0();
          v321 = OUTLINED_FUNCTION_71_3() & 0xFFFF0000FFFFFFFFLL | 0x3800000000;
          goto LABEL_336;
        }

        v218 = LOBYTE(v359);
LABEL_188:
        OUTLINED_FUNCTION_37_11();
        goto LABEL_189;
      }

      v269 = OUTLINED_FUNCTION_23_22();
      sub_25BBEF7BC(v269, v270);
      OUTLINED_FUNCTION_153_0();
      if ((v271 & 1) == 0)
      {
        goto LABEL_156;
      }

      v272 = sub_25BAFCF80(80);
      v248 = OUTLINED_FUNCTION_4_43(v272, v273);
    }

    MEMORY[0x25F876C90](v248);
    OUTLINED_FUNCTION_11_0();
    v179 = OUTLINED_FUNCTION_71_3() & 0xFFFF0000FFFFFFFFLL | 0x3800000000;
    goto LABEL_332;
  }

LABEL_156:
  OUTLINED_FUNCTION_40_13();
LABEL_189:
  __swift_destroy_boxed_opaque_existential_1(v363);
  LOBYTE(v363[0]) = v218;
  BYTE1(v363[0]) = v22;
  v235 = &unk_27FBB6310;
  v236 = &unk_25BCC8F90;
LABEL_314:
  __swift_instantiateConcreteTypeFromMangledNameV2(v235, v236);
  OUTLINED_FUNCTION_179_0();
  swift_dynamicCast();
  v316 = OUTLINED_FUNCTION_178_0();
  __swift_storeEnumTagSinglePayload(v316, v317, v318, v33);
  OUTLINED_FUNCTION_143_0();
  OUTLINED_FUNCTION_216_0();
  v36 = v349;
LABEL_50:
  if (__swift_getEnumTagSinglePayload(v41, 1, v33) != 1)
  {
    v365 = v33;
    v366 = v32;
    __swift_allocate_boxed_opaque_existential_0(&v364);
    OUTLINED_FUNCTION_11_1(v33);
    (*(v116 + 32))();
    sub_25BA97060(&v364, &v367);
    v117 = v369;
    v118 = __swift_project_boxed_opaque_existential_1(&v367, v369);
    sub_25BBE871C(v118, v28, v117);
    sub_25BA9C2C8(v28);
    __swift_destroy_boxed_opaque_existential_1(v30);
    v115 = *&v363[0];
    __swift_destroy_boxed_opaque_existential_1(&v367);
    goto LABEL_53;
  }

LABEL_51:
  (*(v36 + 1))(v41, v34);
  v367 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB62E8, &qword_25BCC8F70);
  v114 = swift_allocObject();
  *(v114 + 16) = xmmword_25BCBAE50;
  sub_25BAC27B0(v30, v114 + 32);
  sub_25BAA51C8(v28, v363);
  Tensor.init(shape:coercingScalars:scalarType:on:)(&v367, v114, v33, v32, v363, &v356);
  sub_25BA9C2C8(v28);
  __swift_destroy_boxed_opaque_existential_1(v30);
  v115 = v356;
LABEL_53:
  *v355 = v115;
  OUTLINED_FUNCTION_37_0();
}

uint64_t Tensor.init<A>(_:scalarType:on:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v19[8] = MEMORY[0x277D84F90];
  v8 = sub_25BBF12DC(a3, a3);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = *(a3 - 8);
  v12 = *(v11 + 72);
  v13 = *(v11 + 80);
  swift_allocObject();
  v14 = sub_25BCB676C();
  (*(v11 + 16))(v15, a1, a3);
  sub_25BBE4B7C();
  v19[7] = v14;
  sub_25BAA51C8(a2, v19);
  v16 = sub_25BCB68CC();
  OUTLINED_FUNCTION_36_12();
  WitnessTable = swift_getWitnessTable();
  sub_25BBE86F4(v16, WitnessTable);
  Tensor.init<A>(shape:scalars:scalarType:on:)();
  sub_25BA9C2C8(a2);
  result = (*(v11 + 8))(a1, a3);
  *a4 = v19[9];
  return result;
}

uint64_t Tensor.init(unsafeUninitializedShape:scalarType:computeDevice:initializingWith:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v12 = *a1;
  (*(a3 + 32))(&v30, a2, a3);
  v13 = v30;
  sub_25BAA51C8(a4, v29);
  sub_25BAA51C8(v29, &v23);
  if (*(&v24 + 1))
  {
    v27[0] = v23;
    v27[1] = v24;
    v27[2] = v25;
    v28 = v26;
  }

  else
  {
    type metadata accessor for ContextManager();
    sub_25BAA49B8();
    sub_25BAA4A5C(v22);

    sub_25BAA51C8(v22, v27);
    sub_25BAA4AF4(v22);
    if (*(&v24 + 1))
    {
      sub_25BA9C2C8(&v23);
    }
  }

  if (qword_28154F2C8 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v22[0] = v12;
  LOBYTE(v23) = v13;
  sub_25BAA4B48(v22, &v23, v27, a5, a6);
  if (v7)
  {
    sub_25BA9C2C8(a4);
    sub_25BA9C2C8(v27);
    sub_25BA9C2C8(v29);
  }

  else
  {
    v16 = v14;

    sub_25BAA51C8(v27, v22);
    type metadata accessor for TensorRepresentation();
    OUTLINED_FUNCTION_93();
    v17 = swift_allocObject();
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    LOBYTE(v23) = 1;
    OUTLINED_FUNCTION_149();
    sub_25BAA5BB4(v19, v22, v20, v17, ObjectType, v16);
    OUTLINED_FUNCTION_9_19();
    type metadata accessor for TensorHandle();
    OUTLINED_FUNCTION_22();
    v21 = swift_allocObject();
    OUTLINED_FUNCTION_14_2(v21);
    sub_25BAA6EB0();
    swift_unknownObjectRelease();

    sub_25BA9C2C8(a4);
    sub_25BA9C2C8(v27);
    result = sub_25BA9C2C8(v29);
    *a7 = v21;
  }

  return result;
}

void sub_25BBE871C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = MEMORY[0x277D84F90];
  v6 = sub_25BBF12DC(a3, a3);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = *(a3 - 8);
  v10 = *(v9 + 72);
  v11 = *(v9 + 80);
  swift_allocObject();
  v12 = sub_25BCB676C();
  (*(v9 + 16))(v13, a1, a3);
  sub_25BBE4B7C();
  v17 = v12;
  sub_25BAA51C8(a2, v16);
  v14 = sub_25BCB68CC();
  WitnessTable = swift_getWitnessTable();
  sub_25BBE86F4(v14, WitnessTable);
  Tensor.init<A>(shape:scalars:scalarType:on:)();
}

uint64_t Tensor.init(shape:coercingScalars:scalarType:on:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v10 = a3;
  v13 = *a1;
  v14 = *(*a1 + 16);
  if (v14)
  {
    v15 = (v13 + 32);
    v16 = 1;
    while (1)
    {
      v17 = *v15++;
      v18 = v16 * v17;
      if ((v16 * v17) >> 64 != (v16 * v17) >> 63)
      {
        break;
      }

      v16 = v18;
      if (!--v14)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  v18 = 1;
LABEL_7:
  v6 = *(a2 + 16);
  if (v18 != v6)
  {
    v36[0] = 0;
    v36[1] = 0xE000000000000000;
    sub_25BCB70FC();
    MEMORY[0x25F876C90](0xD000000000000013, 0x800000025BCDA710);
    if (!*(v13 + 16))
    {
      goto LABEL_29;
    }

    while (1)
    {
      OUTLINED_FUNCTION_0();
      if (!v30)
      {
        break;
      }

      OUTLINED_FUNCTION_222();
      if (v30)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

  if (!(v18 | a3))
  {
    while (1)
    {
LABEL_28:
      OUTLINED_FUNCTION_10_5();
      OUTLINED_FUNCTION_228();
      __break(1u);

      sub_25BA9C2C8(v41);
      sub_25BA9C2C8(v43);

      __break(1u);
LABEL_29:
      v31 = 1;
LABEL_30:
      v43[0] = v31;
      v10 = MEMORY[0x277D83BF8];
      OUTLINED_FUNCTION_92();
      v32 = sub_25BCB77FC();
      MEMORY[0x25F876C90](v32);

      v33 = OUTLINED_FUNCTION_51_1();
      MEMORY[0x25F876C90](v33);
      v43[0] = v6;
      OUTLINED_FUNCTION_92();
      v34 = sub_25BCB77FC();
      MEMORY[0x25F876C90](v34);

      v35 = OUTLINED_FUNCTION_50_8();
      MEMORY[0x25F876C90](v35);
    }
  }

  if (!v18)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    OUTLINED_FUNCTION_0_0();
    swift_once();
    goto LABEL_18;
  }

  sub_25BAC27B0(a2 + 32, v36);
  __swift_project_boxed_opaque_existential_1(v36, v36[3]);
  DynamicType = swift_getDynamicType();
  v20 = v36[4];
  __swift_destroy_boxed_opaque_existential_1(v36);
  if (v10)
  {
    v6 = a4;
  }

  else
  {
    v10 = DynamicType;
    v6 = v20;
  }

  (*(v6 + 32))(&v44, v10, v6);
  v7 = v44;
  sub_25BAA51C8(a5, v43);
  sub_25BAA51C8(v43, &v37);
  if (*(&v38 + 1))
  {
    v41[0] = v37;
    v41[1] = v38;
    v41[2] = v39;
    v42 = v40;
    sub_25BCB617C();
  }

  else
  {
    type metadata accessor for ContextManager();
    sub_25BCB617C();
    sub_25BAA49B8();
    sub_25BAA4A5C(v36);

    sub_25BAA51C8(v36, v41);
    sub_25BAA4AF4(v36);
    if (*(&v38 + 1))
    {
      sub_25BA9C2C8(&v37);
    }
  }

  if (qword_28154F2C8 != -1)
  {
    goto LABEL_21;
  }

LABEL_18:
  v21 = qword_281557400;
  v36[0] = v13;
  LOBYTE(v37) = v7;
  sub_25BCB617C();
  sub_25BC72E00(v36, &v37, v41, v21, a2, v10, v6);
  v23 = v22;

  sub_25BAA51C8(v41, v36);
  type metadata accessor for TensorRepresentation();
  OUTLINED_FUNCTION_93();
  v24 = swift_allocObject();
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  LOBYTE(v37) = 1;
  OUTLINED_FUNCTION_149();
  sub_25BAA5BB4(v26, v36, v27, v24, ObjectType, v23);
  OUTLINED_FUNCTION_9_19();
  type metadata accessor for TensorHandle();
  OUTLINED_FUNCTION_22();
  v28 = swift_allocObject();
  OUTLINED_FUNCTION_14_2(v28);
  sub_25BAA6EB0();
  swift_unknownObjectRelease();

  sub_25BA9C2C8(a5);
  sub_25BA9C2C8(v41);
  sub_25BA9C2C8(v43);

  *a6 = v28;
  return result;
}

void Tensor.init<A>(_:scalarType:on:)()
{
  OUTLINED_FUNCTION_9_18();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_9();
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  v15 = OUTLINED_FUNCTION_5();
  *(v15 + 16) = xmmword_25BCBAE50;
  v16 = *(*(v1 + 8) + 8);
  *(v15 + 32) = sub_25BCB6ABC();
  v18[7] = v15;
  OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_161_0();
  v17();
  sub_25BAA51C8(v5, v18);
  sub_25BBE86F4(v3, v1);
  OUTLINED_FUNCTION_137_0();
  Tensor.init<A>(shape:scalars:scalarType:on:)();
  sub_25BA9C2C8(v5);
  (*(v11 + 8))(v7, v3);
  *v9 = v18[8];
  OUTLINED_FUNCTION_10_16();
}

uint64_t Tensor.init(coercing:scalarType:on:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  v10 = OUTLINED_FUNCTION_5();
  *(v10 + 16) = xmmword_25BCBAE50;
  *(v10 + 32) = *(a1 + 16);
  v13 = v10;
  OUTLINED_FUNCTION_226(v10);
  Tensor.init(shape:coercingScalars:scalarType:on:)(&v13, a1, a2, a3, v12, &v14);
  result = sub_25BA9C2C8(a4);
  *a5 = v14;
  return result;
}

uint64_t sub_25BBE8EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(*(*(a5 + 8) + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v12 - v9;
  swift_getAssociatedTypeWitness();
  sub_25BCB6EFC();
  return (*(v7 + 8))(v10, AssociatedTypeWitness);
}

void sub_25BBE9024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_38_2();
  a20 = v21;
  a21 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v361 = sub_25BCB6E8C();
  v31 = *(*(v361 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v361);
  v34 = &v351 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v32);
  v37 = &v351 - v36;
  v38 = *(v24 - 8);
  v39 = *(v38 + 64);
  v40 = MEMORY[0x28223BE20](v35);
  v42 = (&v351 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v40);
  v45 = &v351 - v44;
  v46 = &v375 + 8;
  v364 = v30;
  if (v30)
  {
    v46 = *(v38 + 72);
    if (!v46)
    {
LABEL_342:
      __break(1u);
LABEL_343:
      v252 = sub_25BAFCF80(80);
      v256 = OUTLINED_FUNCTION_1_46(v252, v253);
LABEL_345:
      MEMORY[0x25F876C90](v256);
      OUTLINED_FUNCTION_11_0();
      v261 = OUTLINED_FUNCTION_217();
      goto LABEL_358;
    }

    if (v28 - v364 != 0x8000000000000000 || v46 + 1 != 0)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  *(v46 - 32) = 0;
LABEL_10:
  v48 = 0;
  v362 = v26 + 32;
  v360 = (v43 + 8);
  v363 = (v38 + 32);
  v49 = *(v26 + 16);
  v354 = v38;
  v355 = v42;
  v356 = &v351 - v44;
  v357 = v38 + 40;
  v359 = v49;
  while (1)
  {
    v50 = 0uLL;
    v51 = v49;
    v52 = 0uLL;
    v53 = 0uLL;
    if (v48 != v49)
    {
      if (v48 >= v49)
      {
        __break(1u);
LABEL_341:
        __break(1u);
        goto LABEL_342;
      }

      v51 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        goto LABEL_341;
      }

      *&v373[0] = v48;
      sub_25BAC27B0(v362 + 40 * v48, v373 + 8);
      v50 = v373[0];
      v52 = v373[1];
      v53 = v373[2];
    }

    v374[0] = v50;
    v374[1] = v52;
    v375 = v53;
    if (!v53)
    {
      OUTLINED_FUNCTION_37_0();
      return;
    }

    v365 = v50;
    sub_25BA97060((v374 + 8), v371);
    OUTLINED_FUNCTION_131();
    LODWORD(v54) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4528, &unk_25BCC1A60);
    if (OUTLINED_FUNCTION_202())
    {
      __swift_storeEnumTagSinglePayload(v37, 0, 1, v24);
      (*v363)(v45, v37, v24);
      v55 = v45;
      goto LABEL_50;
    }

    __swift_storeEnumTagSinglePayload(v37, 1, 1, v24);
    v358 = *v360;
    v358(v37, v361);
    v49 = v372;
    __swift_project_boxed_opaque_existential_1(v371, v372);
    if (swift_getDynamicType() == v24)
    {
      OUTLINED_FUNCTION_131();
      goto LABEL_46;
    }

    v49 = MEMORY[0x277D84DC8];
    if (!swift_dynamicCastMetatype())
    {
      break;
    }

    OUTLINED_FUNCTION_131();
    OUTLINED_FUNCTION_15_28();
    if (OUTLINED_FUNCTION_172_0())
    {
      OUTLINED_FUNCTION_144_0();
      v57 = *(v56 - 256);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE8, &qword_25BCC4128);
      OUTLINED_FUNCTION_15_28();
      if (swift_dynamicCast())
      {
        OUTLINED_FUNCTION_14_27();
        v54 = *(v59 - 256);
        v60 = OUTLINED_FUNCTION_159_0();
        OUTLINED_FUNCTION_121_2(v60, v54);
        v42 = &v351;
        OUTLINED_FUNCTION_9();
        v62 = *(v61 + 64);
        MEMORY[0x28223BE20](v63);
        OUTLINED_FUNCTION_19_20();
        v64 = OUTLINED_FUNCTION_170_0();
        v65(v64);
        OUTLINED_FUNCTION_68_4();
        OUTLINED_FUNCTION_161_0();
        sub_25BBF2A24();
        v57 = v66;
        OUTLINED_FUNCTION_81_4();
        OUTLINED_FUNCTION_130_0();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE0, &qword_25BCC4120);
        OUTLINED_FUNCTION_15_28();
        if (swift_dynamicCast())
        {
          OUTLINED_FUNCTION_14_27();
          v38 = *(v70 - 256);
          v71 = OUTLINED_FUNCTION_159_0();
          __swift_project_boxed_opaque_existential_1(v71, v38);
          OUTLINED_FUNCTION_119_3();
          v353 = v72;
          OUTLINED_FUNCTION_9();
          v42 = v73;
          v75 = *(v74 + 64);
          MEMORY[0x28223BE20](v76);
          OUTLINED_FUNCTION_19_20();
          v77 = OUTLINED_FUNCTION_97_3();
          v78(v77);
          OUTLINED_FUNCTION_57_3();
          if (sub_25BCB6F9C() <= 64)
          {
            v352 = v34;
            v116 = OUTLINED_FUNCTION_195_0();
            OUTLINED_FUNCTION_57_3();
            v54 = sub_25BCB6F8C();
            v117 = OUTLINED_FUNCTION_63_2();
            v118(v117);
            if (v116)
            {
              v57 = v54;
            }

            else
            {
              v57 = v54;
            }

            v34 = v352;
            OUTLINED_FUNCTION_13_28();
            OUTLINED_FUNCTION_69_4();
          }

          else
          {
            sub_25BB95A00();
            sub_25BB95A54();
            OUTLINED_FUNCTION_168_0();
            OUTLINED_FUNCTION_176_0();
            LOBYTE(v54) = v79;
            sub_25BCB60DC();
            v80 = OUTLINED_FUNCTION_63_2();
            v81(v80);
            v57 = *&v369;
            OUTLINED_FUNCTION_13_28();
          }

          OUTLINED_FUNCTION_129_0();
          OUTLINED_FUNCTION_117(v373);
          OUTLINED_FUNCTION_130_0();
          goto LABEL_29;
        }

        OUTLINED_FUNCTION_15_28();
        if (swift_dynamicCast())
        {
          OUTLINED_FUNCTION_144_0();
          v57 = *(v90 - 256);
        }

        else
        {
          LOWORD(v57) = 0;
          LOBYTE(v54) = 1;
        }
      }
    }

    OUTLINED_FUNCTION_129_0();
LABEL_29:
    __swift_destroy_boxed_opaque_existential_1(v373);
    *v373 = v57;
    BYTE2(v373[0]) = v54;
    v67 = &unk_27FBB5B08;
    v68 = &unk_25BCC4140;
LABEL_30:
    __swift_instantiateConcreteTypeFromMangledNameV2(v67, v68);
    OUTLINED_FUNCTION_115_3();
    v69 = OUTLINED_FUNCTION_202();
    OUTLINED_FUNCTION_94_4(v69);
LABEL_48:
    if (__swift_getEnumTagSinglePayload(v34, 1, v24) == 1)
    {
      goto LABEL_368;
    }

    v100 = *v363;
    OUTLINED_FUNCTION_13_24();
    v101();
    v55 = v42;
LABEL_50:
    (*(v38 + 40))(v364 + *(v38 + 72) * v365, v55, v24);
    __swift_destroy_boxed_opaque_existential_1(v371);
    v48 = v51;
  }

  if (swift_dynamicCastMetatype())
  {
    sub_25BAC27B0(v371, v370);
    OUTLINED_FUNCTION_113_3();
    if (OUTLINED_FUNCTION_164())
    {
      v49 = 0;
      LOWORD(v58) = v373[0];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4D30, &qword_25BCC2280);
      OUTLINED_FUNCTION_113_3();
      if (swift_dynamicCast())
      {
        sub_25BADF778(v373, &v366);
        v45 = v368;
        OUTLINED_FUNCTION_121_2(&v366, v367);
        v42 = &v351;
        OUTLINED_FUNCTION_9();
        v85 = *(v84 + 64);
        MEMORY[0x28223BE20](v86);
        OUTLINED_FUNCTION_1();
        v88 = OUTLINED_FUNCTION_46_10(v87);
        v89(v88);
        OUTLINED_FUNCTION_111_4();
        BFloat16.init<A>(_:)();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4D28, &qword_25BCC2278);
        OUTLINED_FUNCTION_113_3();
        if (!swift_dynamicCast())
        {
          OUTLINED_FUNCTION_113_3();
          if (swift_dynamicCast())
          {
            v49 = 0;
            v58 = HIWORD(COERCE_UNSIGNED_INT(LOBYTE(v373[0])));
          }

          else
          {
            LOWORD(v58) = 0;
            v49 = 1;
          }

          goto LABEL_44;
        }

        sub_25BADF778(v373, &v366);
        v45 = v368;
        OUTLINED_FUNCTION_121_2(&v366, v367);
        v42 = &v351;
        OUTLINED_FUNCTION_9();
        v92 = *(v91 + 64);
        MEMORY[0x28223BE20](v93);
        OUTLINED_FUNCTION_1();
        v95 = OUTLINED_FUNCTION_46_10(v94);
        v96(v95);
        OUTLINED_FUNCTION_111_4();
        BFloat16.init<A>(_:)();
      }

      OUTLINED_FUNCTION_81_4();
      LOWORD(v58) = LOWORD(v369);
      __swift_destroy_boxed_opaque_existential_1(&v366);
      v49 = 0;
    }

LABEL_44:
    OUTLINED_FUNCTION_69_4();
    __swift_destroy_boxed_opaque_existential_1(v370);
    LOWORD(v373[0]) = v58;
    BYTE2(v373[0]) = v49;
    v97 = &unk_27FBB6380;
    v98 = &unk_25BCC8FC8;
    goto LABEL_45;
  }

  if (swift_dynamicCastMetatype())
  {
    OUTLINED_FUNCTION_131();
    OUTLINED_FUNCTION_15_28();
    if (OUTLINED_FUNCTION_164())
    {
      OUTLINED_FUNCTION_144_0();
      v83 = *(v82 - 256);
      OUTLINED_FUNCTION_69_4();
      goto LABEL_89;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE8, &qword_25BCC4128);
    OUTLINED_FUNCTION_15_28();
    swift_dynamicCast();
    OUTLINED_FUNCTION_69_4();
    if (v105)
    {
      OUTLINED_FUNCTION_14_27();
      v54 = *(v106 - 256);
      v107 = OUTLINED_FUNCTION_159_0();
      OUTLINED_FUNCTION_121_2(v107, v54);
      v42 = &v351;
      OUTLINED_FUNCTION_9();
      v109 = *(v108 + 64);
      MEMORY[0x28223BE20](v110);
      OUTLINED_FUNCTION_19_20();
      v111 = OUTLINED_FUNCTION_170_0();
      v112(v111);
      OUTLINED_FUNCTION_68_4();
      OUTLINED_FUNCTION_161_0();
      v83 = sub_25BBF1544(v113, v114, v115);
      OUTLINED_FUNCTION_81_4();
      OUTLINED_FUNCTION_130_0();
      goto LABEL_89;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE0, &qword_25BCC4120);
    OUTLINED_FUNCTION_15_28();
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_14_27();
      v38 = *(v119 - 256);
      v120 = OUTLINED_FUNCTION_159_0();
      __swift_project_boxed_opaque_existential_1(v120, v38);
      OUTLINED_FUNCTION_119_3();
      v353 = v121;
      OUTLINED_FUNCTION_9();
      v42 = v122;
      v124 = *(v123 + 64);
      MEMORY[0x28223BE20](v125);
      OUTLINED_FUNCTION_19_20();
      v126 = OUTLINED_FUNCTION_97_3();
      v127(v126);
      OUTLINED_FUNCTION_57_3();
      if (sub_25BCB6F9C() <= 64)
      {
        v155 = OUTLINED_FUNCTION_195_0();
        v352 = v34;
        v156 = v155;
        OUTLINED_FUNCTION_57_3();
        v54 = sub_25BCB6F8C();
        v157 = OUTLINED_FUNCTION_63_2();
        v158(v157);
        v34 = v352;
        if (v156)
        {
          v83 = v54;
        }

        else
        {
          v83 = v54;
        }
      }

      else
      {
        sub_25BB18A50();
        sub_25BBF2100();
        OUTLINED_FUNCTION_168_0();
        OUTLINED_FUNCTION_176_0();
        LOBYTE(v54) = v128;
        sub_25BCB60DC();
        v129 = OUTLINED_FUNCTION_63_2();
        v130(v129);
        v83 = *&v369;
      }

      OUTLINED_FUNCTION_117(v373);
      OUTLINED_FUNCTION_130_0();
      OUTLINED_FUNCTION_13_28();
LABEL_89:
      OUTLINED_FUNCTION_129_0();
    }

    else
    {
      OUTLINED_FUNCTION_15_28();
      swift_dynamicCast();
      OUTLINED_FUNCTION_129_0();
      if (v141)
      {
        OUTLINED_FUNCTION_144_0();
        v83 = *(v142 - 256);
      }

      else
      {
        v83 = 0.0;
        LOBYTE(v54) = 1;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v373);
    *v373 = v83;
    BYTE4(v373[0]) = v54;
    v67 = &unk_27FBB6378;
    v68 = &unk_25BCC8FC0;
    goto LABEL_30;
  }

  v102 = MEMORY[0x277D839F8];
  if (swift_dynamicCastMetatype())
  {
    OUTLINED_FUNCTION_131();
    OUTLINED_FUNCTION_15_28();
    if (OUTLINED_FUNCTION_164())
    {
      OUTLINED_FUNCTION_144_0();
      v104 = *(v103 - 256);
      goto LABEL_108;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE8, &qword_25BCC4128);
    OUTLINED_FUNCTION_15_28();
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_14_27();
      v54 = *(v131 - 256);
      v132 = OUTLINED_FUNCTION_159_0();
      OUTLINED_FUNCTION_121_2(v132, v54);
      v42 = &v351;
      OUTLINED_FUNCTION_9();
      v134 = *(v133 + 64);
      MEMORY[0x28223BE20](v135);
      OUTLINED_FUNCTION_19_20();
      v136 = OUTLINED_FUNCTION_170_0();
      v137(v136);
      OUTLINED_FUNCTION_68_4();
      OUTLINED_FUNCTION_161_0();
      v104 = sub_25BBF234C(v138, v139, v140);
      OUTLINED_FUNCTION_81_4();
      OUTLINED_FUNCTION_130_0();
      goto LABEL_108;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE0, &qword_25BCC4120);
    OUTLINED_FUNCTION_15_28();
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_14_27();
      v38 = *(v143 - 256);
      v144 = OUTLINED_FUNCTION_159_0();
      __swift_project_boxed_opaque_existential_1(v144, v38);
      OUTLINED_FUNCTION_119_3();
      v353 = v145;
      OUTLINED_FUNCTION_9();
      v42 = v146;
      v148 = *(v147 + 64);
      MEMORY[0x28223BE20](v149);
      OUTLINED_FUNCTION_19_20();
      v150 = OUTLINED_FUNCTION_97_3();
      v151(v150);
      OUTLINED_FUNCTION_57_3();
      if (sub_25BCB6F9C() <= 64)
      {
        v165 = OUTLINED_FUNCTION_195_0();
        v352 = v34;
        v166 = v165;
        OUTLINED_FUNCTION_57_3();
        v54 = sub_25BCB6F8C();
        v167 = OUTLINED_FUNCTION_63_2();
        v168(v167);
        v34 = v352;
        if (v166)
        {
          v104 = v54;
        }

        else
        {
          v104 = v54;
        }
      }

      else
      {
        sub_25BB675B0();
        sub_25BB67604();
        OUTLINED_FUNCTION_168_0();
        OUTLINED_FUNCTION_176_0();
        LOBYTE(v54) = v102;
        sub_25BCB60DC();
        v152 = OUTLINED_FUNCTION_63_2();
        v153(v152);
        v104 = v369;
      }

      OUTLINED_FUNCTION_117(v373);
      OUTLINED_FUNCTION_130_0();
      OUTLINED_FUNCTION_13_28();
LABEL_108:
      OUTLINED_FUNCTION_69_4();
      OUTLINED_FUNCTION_129_0();
    }

    else
    {
      OUTLINED_FUNCTION_15_28();
      swift_dynamicCast();
      OUTLINED_FUNCTION_69_4();
      OUTLINED_FUNCTION_129_0();
      if (v159)
      {
        OUTLINED_FUNCTION_144_0();
        v104 = *(v160 - 256);
      }

      else
      {
        v104 = 0.0;
        LOBYTE(v54) = 1;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v373);
    *v373 = v104;
    BYTE8(v373[0]) = v54;
    v67 = &unk_27FBB6370;
    v68 = &unk_25BCC8FB8;
    goto LABEL_30;
  }

  if (swift_dynamicCastMetatype())
  {
    OUTLINED_FUNCTION_131();
    OUTLINED_FUNCTION_15_28();
    if (OUTLINED_FUNCTION_164())
    {
      goto LABEL_66;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE0, &qword_25BCC4120);
    OUTLINED_FUNCTION_15_28();
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_2_48();
      OUTLINED_FUNCTION_68_4();
      LOBYTE(v54) = sub_25BCB6F8C();
      OUTLINED_FUNCTION_41_12();
      goto LABEL_83;
    }

    OUTLINED_FUNCTION_26_18();
    if (OUTLINED_FUNCTION_172_0())
    {
      v161 = OUTLINED_FUNCTION_22_22();
      sub_25BBF112C(v161, v162);
      OUTLINED_FUNCTION_100_3(&a9 + 1);
      if (v163)
      {
        goto LABEL_343;
      }

LABEL_96:
      OUTLINED_FUNCTION_34_13();
      goto LABEL_84;
    }

    OUTLINED_FUNCTION_26_18();
    if (swift_dynamicCast())
    {
      v169 = OUTLINED_FUNCTION_21_23();
      sub_25BBF0F78(v169, v170);
      OUTLINED_FUNCTION_155_0();
      if (v171)
      {
        v254 = sub_25BAFCF80(80);
        v256 = OUTLINED_FUNCTION_5_41(v254, v255);
        goto LABEL_345;
      }

LABEL_66:
      OUTLINED_FUNCTION_34_13();
      goto LABEL_83;
    }

    OUTLINED_FUNCTION_26_18();
    if (swift_dynamicCast())
    {
      v176 = OUTLINED_FUNCTION_20_21();
      sub_25BBF0DC4(v176, v177);
      OUTLINED_FUNCTION_155_0();
      if (v178)
      {
        v259 = sub_25BAFCF80(80);
        v256 = OUTLINED_FUNCTION_6_40(v259, v260);
        goto LABEL_345;
      }

      goto LABEL_66;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE8, &qword_25BCC4128);
    OUTLINED_FUNCTION_15_28();
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_7_34();
      sub_25BBF22F8();
      OUTLINED_FUNCTION_39_13();
      OUTLINED_FUNCTION_90_2();
      if ((BYTE1(v369) & 1) == 0)
      {
        LOBYTE(v54) = LOBYTE(v369);
        OUTLINED_FUNCTION_41_12();
        OUTLINED_FUNCTION_68_4();
LABEL_83:
        OUTLINED_FUNCTION_69_4();
        goto LABEL_84;
      }

      v267 = sub_25BAFCF80(80);
      OUTLINED_FUNCTION_27_20(v267, v268);
      OUTLINED_FUNCTION_166_0();

      OUTLINED_FUNCTION_11_0();
      v269 = OUTLINED_FUNCTION_217();
LABEL_360:
      v298 = 0xE400000000000000;
      goto LABEL_381;
    }

    OUTLINED_FUNCTION_15_28();
    swift_dynamicCast();
    OUTLINED_FUNCTION_69_4();
    if (v188)
    {
      goto LABEL_96;
    }

    OUTLINED_FUNCTION_142_0();
LABEL_84:
    __swift_destroy_boxed_opaque_existential_1(v373);
    LOBYTE(v373[0]) = v54;
    BYTE1(v373[0]) = v49;
    v97 = &unk_27FBB6360;
    v98 = &unk_25BCC8FB0;
LABEL_45:
    __swift_instantiateConcreteTypeFromMangledNameV2(v97, v98);
    OUTLINED_FUNCTION_115_3();
LABEL_46:
    v99 = OUTLINED_FUNCTION_202();
    OUTLINED_FUNCTION_94_4(v99);
LABEL_47:
    OUTLINED_FUNCTION_129_0();
    goto LABEL_48;
  }

  if (swift_dynamicCastMetatype())
  {
    OUTLINED_FUNCTION_131();
    OUTLINED_FUNCTION_15_28();
    if (OUTLINED_FUNCTION_164())
    {
      goto LABEL_80;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE0, &qword_25BCC4120);
    OUTLINED_FUNCTION_15_28();
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_2_48();
      OUTLINED_FUNCTION_68_4();
      LOWORD(v54) = sub_25BCB6F8C();
      OUTLINED_FUNCTION_41_12();
      goto LABEL_102;
    }

    OUTLINED_FUNCTION_26_18();
    if (OUTLINED_FUNCTION_172_0())
    {
      v172 = OUTLINED_FUNCTION_22_22();
      sub_25BBF0C54(v172, v173);
      OUTLINED_FUNCTION_100_3(&a9 + 2);
      if ((v174 & 1) == 0)
      {
        OUTLINED_FUNCTION_62_4();
        LOWORD(v54) = *(v175 - 256);
        goto LABEL_103;
      }

      v257 = sub_25BAFCF80(80);
      v264 = OUTLINED_FUNCTION_1_46(v257, v258);
LABEL_348:
      MEMORY[0x25F876C90](v264);
      OUTLINED_FUNCTION_11_0();
      v261 = OUTLINED_FUNCTION_108_4();
LABEL_366:
      v291 = 0xE500000000000000;
LABEL_378:
      MEMORY[0x25F876C90](v261, v291);
      OUTLINED_FUNCTION_162_0();
      v347 = &a9 + 8;
      goto LABEL_382;
    }

    OUTLINED_FUNCTION_26_18();
    if (swift_dynamicCast())
    {
      v179 = OUTLINED_FUNCTION_21_23();
      sub_25BBF0AA0(v179, v180);
      OUTLINED_FUNCTION_152_0();
      if (v181)
      {
        v262 = sub_25BAFCF80(80);
        v264 = OUTLINED_FUNCTION_5_41(v262, v263);
        goto LABEL_348;
      }

      goto LABEL_80;
    }

    OUTLINED_FUNCTION_26_18();
    if (swift_dynamicCast())
    {
      v184 = OUTLINED_FUNCTION_20_21();
      sub_25BBF08EC(v184, v185);
      OUTLINED_FUNCTION_152_0();
      if (v186)
      {
        v270 = sub_25BAFCF80(80);
        v264 = OUTLINED_FUNCTION_6_40(v270, v271);
        goto LABEL_348;
      }

LABEL_80:
      OUTLINED_FUNCTION_62_4();
      LOWORD(v54) = *(v154 - 256);
      goto LABEL_102;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE8, &qword_25BCC4128);
    OUTLINED_FUNCTION_15_28();
    if ((swift_dynamicCast() & 1) == 0)
    {
      OUTLINED_FUNCTION_15_28();
      swift_dynamicCast();
      OUTLINED_FUNCTION_69_4();
      if (v195)
      {
        OUTLINED_FUNCTION_34_13();
      }

      else
      {
        OUTLINED_FUNCTION_142_0();
      }

      goto LABEL_103;
    }

    OUTLINED_FUNCTION_7_34();
    sub_25BBF22A4();
    OUTLINED_FUNCTION_39_13();
    OUTLINED_FUNCTION_90_2();
    if ((BYTE2(v369) & 1) == 0)
    {
      LOWORD(v54) = LOWORD(v369);
      OUTLINED_FUNCTION_41_12();
      OUTLINED_FUNCTION_68_4();
LABEL_102:
      OUTLINED_FUNCTION_69_4();
LABEL_103:
      __swift_destroy_boxed_opaque_existential_1(v373);
      LOWORD(v373[0]) = v54;
      BYTE2(v373[0]) = v49;
      v97 = &unk_27FBB6350;
      v98 = &unk_25BCC8FA8;
      goto LABEL_45;
    }

    v277 = sub_25BAFCF80(80);
    OUTLINED_FUNCTION_27_20(v277, v278);
    OUTLINED_FUNCTION_166_0();

    OUTLINED_FUNCTION_11_0();
    v269 = OUTLINED_FUNCTION_108_4();
LABEL_370:
    v298 = 0xE500000000000000;
    goto LABEL_381;
  }

  if (swift_dynamicCastMetatype())
  {
    OUTLINED_FUNCTION_131();
    OUTLINED_FUNCTION_15_28();
    if (OUTLINED_FUNCTION_164())
    {
      goto LABEL_99;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE0, &qword_25BCC4120);
    OUTLINED_FUNCTION_15_28();
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_2_48();
      OUTLINED_FUNCTION_68_4();
      LODWORD(v54) = sub_25BCB6F8C();
      OUTLINED_FUNCTION_41_12();
      goto LABEL_122;
    }

    OUTLINED_FUNCTION_26_18();
    if (OUTLINED_FUNCTION_172_0())
    {
      OUTLINED_FUNCTION_22_22();
      sub_25BBF075C();
      OUTLINED_FUNCTION_100_3(&a9 + 4);
      if ((v182 & 1) == 0)
      {
        OUTLINED_FUNCTION_62_4();
        LODWORD(v54) = *(v183 - 256);
        goto LABEL_123;
      }

      v265 = sub_25BAFCF80(80);
      v274 = OUTLINED_FUNCTION_1_46(v265, v266);
LABEL_351:
      MEMORY[0x25F876C90](v274);
      OUTLINED_FUNCTION_11_0();
      v261 = OUTLINED_FUNCTION_106_4();
      goto LABEL_366;
    }

    OUTLINED_FUNCTION_26_18();
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_21_23();
      sub_25BBF0614();
      OUTLINED_FUNCTION_151_0();
      if (v187)
      {
        v272 = sub_25BAFCF80(80);
        v274 = OUTLINED_FUNCTION_5_41(v272, v273);
        goto LABEL_351;
      }
    }

    else
    {
      OUTLINED_FUNCTION_26_18();
      if ((swift_dynamicCast() & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE8, &qword_25BCC4128);
        OUTLINED_FUNCTION_15_28();
        if (swift_dynamicCast())
        {
          OUTLINED_FUNCTION_7_34();
          sub_25BB959AC();
          OUTLINED_FUNCTION_39_13();
          OUTLINED_FUNCTION_90_2();
          if (BYTE4(v369))
          {
            v287 = sub_25BAFCF80(80);
            OUTLINED_FUNCTION_27_20(v287, v288);
            OUTLINED_FUNCTION_166_0();

            OUTLINED_FUNCTION_11_0();
            v269 = OUTLINED_FUNCTION_106_4();
            goto LABEL_370;
          }

          LODWORD(v54) = LODWORD(v369);
          OUTLINED_FUNCTION_41_12();
          OUTLINED_FUNCTION_68_4();
LABEL_122:
          OUTLINED_FUNCTION_69_4();
        }

        else
        {
          OUTLINED_FUNCTION_15_28();
          swift_dynamicCast();
          OUTLINED_FUNCTION_69_4();
          if (v200)
          {
            OUTLINED_FUNCTION_34_13();
          }

          else
          {
            OUTLINED_FUNCTION_142_0();
          }
        }

LABEL_123:
        __swift_destroy_boxed_opaque_existential_1(v373);
        LODWORD(v373[0]) = v54;
        BYTE4(v373[0]) = v49;
        v97 = &unk_27FBB5AF0;
        v98 = &unk_25BCC4130;
        goto LABEL_45;
      }

      v191 = OUTLINED_FUNCTION_20_21();
      sub_25BBF0474(v191, v192);
      OUTLINED_FUNCTION_151_0();
      if (v193)
      {
        v279 = sub_25BAFCF80(80);
        v274 = OUTLINED_FUNCTION_6_40(v279, v280);
        goto LABEL_351;
      }
    }

LABEL_99:
    OUTLINED_FUNCTION_62_4();
    LODWORD(v54) = *(v164 - 256);
    goto LABEL_122;
  }

  if (swift_dynamicCastMetatype())
  {
    OUTLINED_FUNCTION_131();
    OUTLINED_FUNCTION_15_28();
    if (OUTLINED_FUNCTION_164())
    {
      goto LABEL_119;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE0, &qword_25BCC4120);
    OUTLINED_FUNCTION_15_28();
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_2_48();
      OUTLINED_FUNCTION_68_4();
      sub_25BCB6F8C();
      OUTLINED_FUNCTION_41_12();
      goto LABEL_142;
    }

    OUTLINED_FUNCTION_26_18();
    if (OUTLINED_FUNCTION_172_0())
    {
      OUTLINED_FUNCTION_22_22();
      sub_25BBF02C4();
      OUTLINED_FUNCTION_70_4();
      if ((v189 & 1) == 0)
      {
        OUTLINED_FUNCTION_49_11();
        goto LABEL_143;
      }

      v275 = sub_25BAFCF80(80);
      v283 = OUTLINED_FUNCTION_1_46(v275, v276);
LABEL_353:
      MEMORY[0x25F876C90](v283);
      OUTLINED_FUNCTION_11_0();
      v261 = OUTLINED_FUNCTION_109_4();
      goto LABEL_378;
    }

    OUTLINED_FUNCTION_26_18();
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_21_23();
      sub_25BBF0118();
      OUTLINED_FUNCTION_70_4();
      if (v194)
      {
        v281 = sub_25BAFCF80(80);
        v283 = OUTLINED_FUNCTION_5_41(v281, v282);
        goto LABEL_353;
      }
    }

    else
    {
      OUTLINED_FUNCTION_26_18();
      if ((swift_dynamicCast() & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE8, &qword_25BCC4128);
        OUTLINED_FUNCTION_15_28();
        if (swift_dynamicCast())
        {
          OUTLINED_FUNCTION_7_34();
          sub_25BBF2250();
          OUTLINED_FUNCTION_39_13();
          OUTLINED_FUNCTION_90_2();
          OUTLINED_FUNCTION_210_0();
          if (v203)
          {
            v296 = sub_25BAFCF80(80);
            OUTLINED_FUNCTION_27_20(v296, v297);
            OUTLINED_FUNCTION_166_0();

            OUTLINED_FUNCTION_11_0();
            v269 = OUTLINED_FUNCTION_109_4();
            goto LABEL_381;
          }

          OUTLINED_FUNCTION_209_0();
          OUTLINED_FUNCTION_41_12();
          OUTLINED_FUNCTION_68_4();
        }

        else
        {
          OUTLINED_FUNCTION_15_28();
          if (swift_dynamicCast())
          {
            OUTLINED_FUNCTION_34_13();
          }

          else
          {
            OUTLINED_FUNCTION_213_0();
          }
        }

LABEL_142:
        OUTLINED_FUNCTION_69_4();
LABEL_143:
        OUTLINED_FUNCTION_160_0();
        v97 = &qword_27FBB6340;
        v98 = &qword_25BCCE500;
        goto LABEL_45;
      }

      OUTLINED_FUNCTION_20_21();
      sub_25BBEFF60();
      OUTLINED_FUNCTION_70_4();
      if (v198)
      {
        v289 = sub_25BAFCF80(80);
        v283 = OUTLINED_FUNCTION_6_40(v289, v290);
        goto LABEL_353;
      }
    }

LABEL_119:
    OUTLINED_FUNCTION_49_11();
    goto LABEL_142;
  }

  if (swift_dynamicCastMetatype())
  {
    OUTLINED_FUNCTION_131();
    OUTLINED_FUNCTION_15_28();
    if (OUTLINED_FUNCTION_164())
    {
      OUTLINED_FUNCTION_49_11();
      goto LABEL_136;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE0, &qword_25BCC4120);
    OUTLINED_FUNCTION_15_28();
    swift_dynamicCast();
    OUTLINED_FUNCTION_69_4();
    if (v190)
    {
      OUTLINED_FUNCTION_2_48();
      OUTLINED_FUNCTION_68_4();
      sub_25BCB6F8C();
      OUTLINED_FUNCTION_41_12();
      goto LABEL_207;
    }

    OUTLINED_FUNCTION_26_18();
    if (OUTLINED_FUNCTION_172_0())
    {
      OUTLINED_FUNCTION_22_22();
      sub_25BBEFE1C();
      OUTLINED_FUNCTION_70_4();
      if (v196)
      {
        v284 = sub_25BAFCF80(80);
        v286 = OUTLINED_FUNCTION_1_46(v284, v285);
        goto LABEL_357;
      }

LABEL_206:
      OUTLINED_FUNCTION_49_11();
      goto LABEL_207;
    }

    OUTLINED_FUNCTION_26_18();
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_21_23();
      sub_25BBEFCE0();
      OUTLINED_FUNCTION_70_4();
      if ((v199 & 1) == 0)
      {
        goto LABEL_206;
      }

      v292 = sub_25BAFCF80(80);
      v286 = OUTLINED_FUNCTION_5_41(v292, v293);
    }

    else
    {
      OUTLINED_FUNCTION_26_18();
      if ((swift_dynamicCast() & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE8, &qword_25BCC4128);
        OUTLINED_FUNCTION_15_28();
        if (swift_dynamicCast())
        {
          OUTLINED_FUNCTION_7_34();
          sub_25BBF21FC();
          OUTLINED_FUNCTION_39_13();
          OUTLINED_FUNCTION_92_5();
          sub_25BCB744C();
          OUTLINED_FUNCTION_210_0();
          if (v210)
          {
            v307 = sub_25BAFCF80(80);
            OUTLINED_FUNCTION_27_20(v307, v308);
            OUTLINED_FUNCTION_166_0();

            OUTLINED_FUNCTION_11_0();
            v269 = OUTLINED_FUNCTION_204_0();
            goto LABEL_360;
          }

          OUTLINED_FUNCTION_209_0();
          OUTLINED_FUNCTION_41_12();
        }

        else
        {
          OUTLINED_FUNCTION_15_28();
          if (swift_dynamicCast())
          {
            OUTLINED_FUNCTION_34_13();
          }

          else
          {
            OUTLINED_FUNCTION_213_0();
          }
        }

        OUTLINED_FUNCTION_13_28();
LABEL_136:
        OUTLINED_FUNCTION_69_4();
LABEL_207:
        OUTLINED_FUNCTION_160_0();
        v97 = &unk_27FBB6330;
        v98 = &unk_25BCC8FA0;
        goto LABEL_45;
      }

      OUTLINED_FUNCTION_20_21();
      sub_25BBEFBDC();
      OUTLINED_FUNCTION_70_4();
      if ((v204 & 1) == 0)
      {
        goto LABEL_206;
      }

      v299 = sub_25BAFCF80(80);
      v286 = OUTLINED_FUNCTION_6_40(v299, v300);
    }

LABEL_357:
    MEMORY[0x25F876C90](v286);
    OUTLINED_FUNCTION_11_0();
    v261 = OUTLINED_FUNCTION_204_0();
LABEL_358:
    v291 = 0xE400000000000000;
    goto LABEL_378;
  }

  if (swift_dynamicCastMetatype())
  {
    OUTLINED_FUNCTION_131();
    OUTLINED_FUNCTION_15_28();
    if (OUTLINED_FUNCTION_164())
    {
      OUTLINED_FUNCTION_49_11();
      goto LABEL_158;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE0, &qword_25BCC4120);
    OUTLINED_FUNCTION_15_28();
    swift_dynamicCast();
    OUTLINED_FUNCTION_69_4();
    if (v197)
    {
      OUTLINED_FUNCTION_2_48();
      OUTLINED_FUNCTION_68_4();
      sub_25BCB6F8C();
      OUTLINED_FUNCTION_41_12();
      goto LABEL_195;
    }

    OUTLINED_FUNCTION_26_18();
    if (OUTLINED_FUNCTION_172_0())
    {
      OUTLINED_FUNCTION_22_22();
      sub_25BBF02C4();
      OUTLINED_FUNCTION_70_4();
      if ((v201 & 1) == 0)
      {
        OUTLINED_FUNCTION_49_11();
        goto LABEL_195;
      }

      v294 = sub_25BAFCF80(80);
      v303 = OUTLINED_FUNCTION_1_46(v294, v295);
LABEL_362:
      MEMORY[0x25F876C90](v303);
      OUTLINED_FUNCTION_11_0();
      v261 = OUTLINED_FUNCTION_107_4();
      goto LABEL_366;
    }

    OUTLINED_FUNCTION_26_18();
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_21_23();
      sub_25BBF0118();
      OUTLINED_FUNCTION_70_4();
      if (v205)
      {
        v301 = sub_25BAFCF80(80);
        v303 = OUTLINED_FUNCTION_5_41(v301, v302);
        goto LABEL_362;
      }

LABEL_228:
      OUTLINED_FUNCTION_49_11();
    }

    else
    {
      OUTLINED_FUNCTION_26_18();
      if (swift_dynamicCast())
      {
        OUTLINED_FUNCTION_20_21();
        sub_25BBEFF60();
        OUTLINED_FUNCTION_70_4();
        if (v211)
        {
          v309 = sub_25BAFCF80(80);
          v303 = OUTLINED_FUNCTION_6_40(v309, v310);
          goto LABEL_362;
        }

        goto LABEL_228;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE8, &qword_25BCC4128);
      OUTLINED_FUNCTION_15_28();
      if (swift_dynamicCast())
      {
        OUTLINED_FUNCTION_7_34();
        sub_25BBF21A8();
        OUTLINED_FUNCTION_39_13();
        OUTLINED_FUNCTION_92_5();
        sub_25BCB744C();
        OUTLINED_FUNCTION_210_0();
        if (v218)
        {
          v316 = sub_25BAFCF80(80);
          OUTLINED_FUNCTION_27_20(v316, v317);
          OUTLINED_FUNCTION_166_0();

          OUTLINED_FUNCTION_11_0();
          v269 = OUTLINED_FUNCTION_107_4();
          goto LABEL_370;
        }

        OUTLINED_FUNCTION_209_0();
        OUTLINED_FUNCTION_41_12();
      }

      else
      {
        OUTLINED_FUNCTION_15_28();
        if (swift_dynamicCast())
        {
          OUTLINED_FUNCTION_34_13();
        }

        else
        {
          OUTLINED_FUNCTION_213_0();
        }
      }
    }

    OUTLINED_FUNCTION_13_28();
LABEL_158:
    OUTLINED_FUNCTION_69_4();
LABEL_195:
    OUTLINED_FUNCTION_160_0();
    v97 = &unk_27FBB6320;
    v98 = &unk_25BCC8F98;
    goto LABEL_45;
  }

  if (swift_dynamicCastMetatype())
  {
    OUTLINED_FUNCTION_131();
    OUTLINED_FUNCTION_15_28();
    if (OUTLINED_FUNCTION_164())
    {
      OUTLINED_FUNCTION_34_13();
LABEL_254:
      OUTLINED_FUNCTION_69_4();
      __swift_destroy_boxed_opaque_existential_1(v373);
      LOBYTE(v373[0]) = v54;
      BYTE1(v373[0]) = v49;
      v97 = &unk_27FBB6310;
      v98 = &unk_25BCC8F90;
      goto LABEL_45;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE0, &qword_25BCC4120);
    OUTLINED_FUNCTION_15_28();
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_2_48();
      LOBYTE(v54) = sub_25BCB6F8C();
      OUTLINED_FUNCTION_41_12();
LABEL_253:
      OUTLINED_FUNCTION_68_4();
      goto LABEL_254;
    }

    OUTLINED_FUNCTION_26_18();
    if (OUTLINED_FUNCTION_172_0())
    {
      v206 = OUTLINED_FUNCTION_22_22();
      sub_25BBEFA7C(v206, v207);
      OUTLINED_FUNCTION_155_0();
      if (v208)
      {
        v304 = sub_25BAFCF80(80);
        v306 = OUTLINED_FUNCTION_1_46(v304, v305);
LABEL_365:
        MEMORY[0x25F876C90](v306);
        OUTLINED_FUNCTION_11_0();
        v261 = OUTLINED_FUNCTION_71_3() & 0xFFFF0000FFFFFFFFLL | 0x3800000000;
        goto LABEL_366;
      }

      goto LABEL_251;
    }

    OUTLINED_FUNCTION_26_18();
    if (swift_dynamicCast())
    {
      v212 = OUTLINED_FUNCTION_21_23();
      sub_25BBEF91C(v212, v213);
      OUTLINED_FUNCTION_155_0();
      if (v214)
      {
        v311 = sub_25BAFCF80(80);
        v306 = OUTLINED_FUNCTION_5_41(v311, v312);
        goto LABEL_365;
      }

LABEL_251:
      OUTLINED_FUNCTION_34_13();
    }

    else
    {
      OUTLINED_FUNCTION_26_18();
      if (swift_dynamicCast())
      {
        v221 = OUTLINED_FUNCTION_20_21();
        sub_25BBEF7BC(v221, v222);
        OUTLINED_FUNCTION_155_0();
        if (v223)
        {
          v318 = sub_25BAFCF80(80);
          v306 = OUTLINED_FUNCTION_6_40(v318, v319);
          goto LABEL_365;
        }

        goto LABEL_251;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE8, &qword_25BCC4128);
      OUTLINED_FUNCTION_15_28();
      if (swift_dynamicCast())
      {
        OUTLINED_FUNCTION_7_34();
        sub_25BBF2154();
        OUTLINED_FUNCTION_39_13();
        OUTLINED_FUNCTION_92_5();
        sub_25BCB744C();
        if (BYTE1(v369))
        {
          v328 = sub_25BAFCF80(80);
          OUTLINED_FUNCTION_27_20(v328, v329);
          OUTLINED_FUNCTION_166_0();

          OUTLINED_FUNCTION_11_0();
          v269 = OUTLINED_FUNCTION_71_3() & 0xFFFF0000FFFFFFFFLL | 0x3800000000;
          goto LABEL_370;
        }

        LOBYTE(v54) = LOBYTE(v369);
        OUTLINED_FUNCTION_41_12();
      }

      else
      {
        OUTLINED_FUNCTION_15_28();
        if (swift_dynamicCast())
        {
          goto LABEL_251;
        }

        OUTLINED_FUNCTION_142_0();
      }
    }

    v38 = v354;
    OUTLINED_FUNCTION_81_4();
    goto LABEL_253;
  }

  v49 = MEMORY[0x277D84C58];
  if (swift_dynamicCastMetatype())
  {
    OUTLINED_FUNCTION_131();
    OUTLINED_FUNCTION_15_28();
    if (OUTLINED_FUNCTION_172_0())
    {
      OUTLINED_FUNCTION_62_4();
      LOWORD(v54) = *(v202 - 256);
      goto LABEL_279;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE0, &qword_25BCC4120);
    OUTLINED_FUNCTION_15_28();
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_2_48();
      LOWORD(v54) = sub_25BCB6F8C();
      goto LABEL_225;
    }

    OUTLINED_FUNCTION_26_18();
    if (swift_dynamicCast())
    {
      v215 = OUTLINED_FUNCTION_22_22();
      sub_25BBEF69C(v215, v216);
      OUTLINED_FUNCTION_152_0();
      if (v217)
      {
        v313 = sub_25BAFCF80(80);
        v315 = OUTLINED_FUNCTION_1_46(v313, v314);
        goto LABEL_372;
      }

LABEL_277:
      OUTLINED_FUNCTION_62_4();
      LOWORD(v54) = *(v234 - 256);
LABEL_278:
      OUTLINED_FUNCTION_13_28();
LABEL_279:
      __swift_destroy_boxed_opaque_existential_1(v373);
      LOWORD(v373[0]) = v54;
      BYTE2(v373[0]) = v49;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6308, &qword_25BCC8F88);
      OUTLINED_FUNCTION_115_3();
      v235 = OUTLINED_FUNCTION_202();
      OUTLINED_FUNCTION_94_4(v235);
LABEL_323:
      OUTLINED_FUNCTION_69_4();
      goto LABEL_47;
    }

    OUTLINED_FUNCTION_26_18();
    if (swift_dynamicCast())
    {
      v224 = OUTLINED_FUNCTION_21_23();
      sub_25BBEF53C(v224, v225);
      OUTLINED_FUNCTION_152_0();
      if ((v226 & 1) == 0)
      {
        goto LABEL_277;
      }

      v320 = sub_25BAFCF80(80);
      v315 = OUTLINED_FUNCTION_5_41(v320, v321);
    }

    else
    {
      OUTLINED_FUNCTION_26_18();
      if ((swift_dynamicCast() & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE8, &qword_25BCC4128);
        OUTLINED_FUNCTION_15_28();
        if (swift_dynamicCast())
        {
          OUTLINED_FUNCTION_7_34();
          sub_25BB95A54();
          OUTLINED_FUNCTION_39_13();
          OUTLINED_FUNCTION_92_5();
          sub_25BCB744C();
          if (BYTE2(v369))
          {
            v337 = sub_25BAFCF80(80);
            OUTLINED_FUNCTION_27_20(v337, v338);
            OUTLINED_FUNCTION_166_0();

            OUTLINED_FUNCTION_11_0();
            v269 = OUTLINED_FUNCTION_71_3() & 0xFFFF0000FFFFFFFFLL | 0x363100000000;
            goto LABEL_380;
          }

          LOWORD(v54) = LOWORD(v369);
LABEL_225:
          OUTLINED_FUNCTION_41_12();
        }

        else
        {
          OUTLINED_FUNCTION_15_28();
          if (swift_dynamicCast())
          {
            OUTLINED_FUNCTION_34_13();
          }

          else
          {
            OUTLINED_FUNCTION_142_0();
          }
        }

        goto LABEL_278;
      }

      v231 = OUTLINED_FUNCTION_20_21();
      sub_25BBEF3DC(v231, v232);
      OUTLINED_FUNCTION_152_0();
      if ((v233 & 1) == 0)
      {
        goto LABEL_277;
      }

      v330 = sub_25BAFCF80(80);
      v315 = OUTLINED_FUNCTION_6_40(v330, v331);
    }

LABEL_372:
    MEMORY[0x25F876C90](v315);
    OUTLINED_FUNCTION_11_0();
    v261 = OUTLINED_FUNCTION_71_3() & 0xFFFF0000FFFFFFFFLL | 0x363100000000;
LABEL_377:
    v291 = 0xE600000000000000;
    goto LABEL_378;
  }

  if (swift_dynamicCastMetatype())
  {
    OUTLINED_FUNCTION_131();
    OUTLINED_FUNCTION_15_28();
    if (swift_dynamicCast())
    {
      goto LABEL_219;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE0, &qword_25BCC4120);
    OUTLINED_FUNCTION_15_28();
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_2_48();
      LODWORD(v54) = sub_25BCB6F8C();
      goto LABEL_247;
    }

    OUTLINED_FUNCTION_26_18();
    if (swift_dynamicCast())
    {
      v227 = OUTLINED_FUNCTION_22_22();
      sub_25BBEF278(v227, v228);
      OUTLINED_FUNCTION_151_0();
      if (v229)
      {
        v322 = sub_25BAFCF80(80);
        v324 = OUTLINED_FUNCTION_1_46(v322, v323);
LABEL_374:
        MEMORY[0x25F876C90](v324);
        OUTLINED_FUNCTION_11_0();
        v261 = OUTLINED_FUNCTION_71_3() & 0xFFFF0000FFFFFFFFLL | 0x323300000000;
        goto LABEL_377;
      }

      goto LABEL_219;
    }

    OUTLINED_FUNCTION_26_18();
    if (swift_dynamicCast())
    {
      v236 = OUTLINED_FUNCTION_21_23();
      sub_25BBEF15C(v236, v237);
      OUTLINED_FUNCTION_151_0();
      if (v238)
      {
        v332 = sub_25BAFCF80(80);
        v324 = OUTLINED_FUNCTION_5_41(v332, v333);
        goto LABEL_374;
      }

LABEL_219:
      OUTLINED_FUNCTION_62_4();
      LODWORD(v54) = *(v209 - 256);
    }

    else
    {
      OUTLINED_FUNCTION_26_18();
      if (swift_dynamicCast())
      {
        v243 = OUTLINED_FUNCTION_20_21();
        sub_25BBEF000(v243, v244);
        OUTLINED_FUNCTION_151_0();
        if (v245)
        {
          v339 = sub_25BAFCF80(80);
          v324 = OUTLINED_FUNCTION_6_40(v339, v340);
          goto LABEL_374;
        }

        goto LABEL_219;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE8, &qword_25BCC4128);
      OUTLINED_FUNCTION_15_28();
      if (swift_dynamicCast())
      {
        OUTLINED_FUNCTION_7_34();
        sub_25BBF2100();
        OUTLINED_FUNCTION_39_13();
        OUTLINED_FUNCTION_92_5();
        sub_25BCB744C();
        if (BYTE4(v369))
        {
          v343 = sub_25BAFCF80(80);
          OUTLINED_FUNCTION_27_20(v343, v344);
          OUTLINED_FUNCTION_166_0();

          OUTLINED_FUNCTION_11_0();
          v269 = OUTLINED_FUNCTION_71_3() & 0xFFFF0000FFFFFFFFLL | 0x323300000000;
          goto LABEL_380;
        }

        LODWORD(v54) = LODWORD(v369);
LABEL_247:
        OUTLINED_FUNCTION_41_12();
      }

      else
      {
        OUTLINED_FUNCTION_15_28();
        if (swift_dynamicCast())
        {
          OUTLINED_FUNCTION_34_13();
        }

        else
        {
          OUTLINED_FUNCTION_142_0();
        }
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v373);
    LODWORD(v373[0]) = v54;
    BYTE4(v373[0]) = v49;
    v219 = &unk_27FBB62F8;
    v220 = &unk_25BCC8F80;
LABEL_322:
    __swift_instantiateConcreteTypeFromMangledNameV2(v219, v220);
    OUTLINED_FUNCTION_115_3();
    v250 = OUTLINED_FUNCTION_202();
    OUTLINED_FUNCTION_94_4(v250);
    OUTLINED_FUNCTION_13_28();
    goto LABEL_323;
  }

  if (!swift_dynamicCastMetatype())
  {
    if (!swift_dynamicCastMetatype())
    {
      __swift_storeEnumTagSinglePayload(v34, 1, 1, v24);
LABEL_368:
      v358(v34, v361);
      *&v373[0] = sub_25BCB786C();
      *(&v373[0] + 1) = v325;
      MEMORY[0x25F876C90](0xD000000000000016, 0x800000025BCE1250);
      __swift_project_boxed_opaque_existential_1(v371, v372);
      swift_getDynamicType();
      v326 = sub_25BCB7C1C();
      MEMORY[0x25F876C90](v326);

      MEMORY[0x25F876C90](540877088, 0xE400000000000000);
      v327 = sub_25BCB7C1C();
      MEMORY[0x25F876C90](v327);

      MEMORY[0x25F876C90](0, 0xE000000000000000);
      OUTLINED_FUNCTION_122_0();
      v351 = 188;
      OUTLINED_FUNCTION_10_5();
      goto LABEL_383;
    }

    OUTLINED_FUNCTION_131();
    OUTLINED_FUNCTION_15_28();
    if (swift_dynamicCast())
    {
      v230 = v366;
LABEL_321:
      __swift_destroy_boxed_opaque_existential_1(v373);
      LOBYTE(v373[0]) = v230;
      v219 = &unk_27FBB5B00;
      v220 = &unk_25BCC4138;
      goto LABEL_322;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE8, &qword_25BCC4128);
    OUTLINED_FUNCTION_15_28();
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_14_27();
      v49 = *(v239 - 256);
      v240 = v370[4];
      __swift_project_boxed_opaque_existential_1(v370, v49);
      v241 = *(v240 + 16);
      v230 = (sub_25BCB61FC() & 1) == 0;
      __swift_destroy_boxed_opaque_existential_1(v370);
      goto LABEL_321;
    }

    OUTLINED_FUNCTION_15_28();
    if (swift_dynamicCast())
    {
      goto LABEL_298;
    }

    OUTLINED_FUNCTION_15_28();
    if (swift_dynamicCast())
    {
      goto LABEL_308;
    }

    OUTLINED_FUNCTION_15_28();
    if (swift_dynamicCast())
    {
      goto LABEL_316;
    }

    OUTLINED_FUNCTION_15_28();
    if (!swift_dynamicCast())
    {
      OUTLINED_FUNCTION_15_28();
      if (!swift_dynamicCast())
      {
        OUTLINED_FUNCTION_15_28();
        if (swift_dynamicCast())
        {
LABEL_298:
          v246 = v366;
LABEL_317:
          v249 = v246 == 0;
          goto LABEL_318;
        }

        OUTLINED_FUNCTION_15_28();
        if (swift_dynamicCast())
        {
LABEL_308:
          v246 = v366;
          goto LABEL_317;
        }

        OUTLINED_FUNCTION_15_28();
        if (swift_dynamicCast())
        {
LABEL_316:
          v246 = v366;
          goto LABEL_317;
        }

        OUTLINED_FUNCTION_15_28();
        if (!swift_dynamicCast())
        {
          v230 = 2;
          goto LABEL_321;
        }
      }
    }

    v249 = v366 == 0;
LABEL_318:
    v230 = !v249;
    goto LABEL_321;
  }

  OUTLINED_FUNCTION_131();
  OUTLINED_FUNCTION_15_28();
  if (swift_dynamicCast())
  {
    goto LABEL_241;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE0, &qword_25BCC4120);
  OUTLINED_FUNCTION_15_28();
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_2_48();
    sub_25BCB6F8C();
    goto LABEL_273;
  }

  OUTLINED_FUNCTION_26_18();
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_22_22();
    sub_25BBEFE1C();
    OUTLINED_FUNCTION_70_4();
    if (v242)
    {
      v334 = sub_25BAFCF80(80);
      v336 = OUTLINED_FUNCTION_1_46(v334, v335);
LABEL_376:
      MEMORY[0x25F876C90](v336);
      OUTLINED_FUNCTION_11_0();
      v261 = OUTLINED_FUNCTION_71_3() & 0xFFFF0000FFFFFFFFLL | 0x343600000000;
      goto LABEL_377;
    }

    goto LABEL_241;
  }

  OUTLINED_FUNCTION_26_18();
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_21_23();
    sub_25BBEFCE0();
    OUTLINED_FUNCTION_70_4();
    if (v247)
    {
      v341 = sub_25BAFCF80(80);
      v336 = OUTLINED_FUNCTION_5_41(v341, v342);
      goto LABEL_376;
    }

LABEL_241:
    OUTLINED_FUNCTION_49_11();
LABEL_274:
    OUTLINED_FUNCTION_160_0();
    v219 = &unk_27FBB62F0;
    v220 = &unk_25BCC8F78;
    goto LABEL_322;
  }

  OUTLINED_FUNCTION_26_18();
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_20_21();
    sub_25BBEFBDC();
    OUTLINED_FUNCTION_70_4();
    if (v248)
    {
      v345 = sub_25BAFCF80(80);
      v336 = OUTLINED_FUNCTION_6_40(v345, v346);
      goto LABEL_376;
    }

    goto LABEL_241;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE8, &qword_25BCC4128);
  OUTLINED_FUNCTION_15_28();
  if ((swift_dynamicCast() & 1) == 0)
  {
    OUTLINED_FUNCTION_15_28();
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_34_13();
    }

    else
    {
      OUTLINED_FUNCTION_213_0();
    }

    goto LABEL_274;
  }

  OUTLINED_FUNCTION_7_34();
  sub_25BB67604();
  OUTLINED_FUNCTION_39_13();
  OUTLINED_FUNCTION_92_5();
  sub_25BCB744C();
  OUTLINED_FUNCTION_210_0();
  if ((v251 & 1) == 0)
  {
    OUTLINED_FUNCTION_209_0();
LABEL_273:
    OUTLINED_FUNCTION_41_12();
    goto LABEL_274;
  }

  v348 = sub_25BAFCF80(80);
  OUTLINED_FUNCTION_27_20(v348, v349);
  OUTLINED_FUNCTION_166_0();

  OUTLINED_FUNCTION_11_0();
  v269 = OUTLINED_FUNCTION_71_3() & 0xFFFF0000FFFFFFFFLL | 0x343600000000;
LABEL_380:
  v298 = 0xE600000000000000;
LABEL_381:
  MEMORY[0x25F876C90](v269, v298);
  OUTLINED_FUNCTION_162_0();
  v347 = &a15;
LABEL_382:
  v350 = *(v347 - 32);
  OUTLINED_FUNCTION_122_0();
  v351 = 2740;
  OUTLINED_FUNCTION_10_5();
LABEL_383:
  sub_25BCB74CC();
  __break(1u);
}

uint64_t Tensor.init(shape:data:scalarType:on:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v15 = *a1;
  v11 = (*(a5 + 32))(&v14, a4, a5);
  OUTLINED_FUNCTION_226(v11);
  Tensor.init(shape:data:scalarType:on:)(&v15, a2, a3, &v14, v13, &v16);
  result = sub_25BA9C2C8(a6);
  *a7 = v16;
  return result;
}

void Tensor.init(bytesNoCopy:shape:scalarType:deallocator:)()
{
  OUTLINED_FUNCTION_9_18();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v50 = v12;
  v13 = sub_25BCB59BC();
  v14 = OUTLINED_FUNCTION_2(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_4_0();
  v46 = v19 - v20;
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v45 - v23;
  v25 = *v7;
  (*(v3 + 32))(&v54, v5, v3, v22);
  v26 = v54;
  v47 = v16;
  v48 = v24;
  v27 = *(v16 + 16);
  v49 = v1;
  v27(v24, v1, v13);
  v28 = v9 - v11;
  if (!v11)
  {
    v28 = 0;
  }

  v29 = *(v25 + 16);
  if (v29)
  {
    v30 = (v25 + 32);
    v31 = 1;
    while (1)
    {
      v32 = *v30++;
      v33 = v31 * v32;
      if ((v31 * v32) >> 64 != (v31 * v32) >> 63)
      {
        break;
      }

      v31 = v33;
      if (!--v29)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v33 = 1;
LABEL_9:
  if ((v26 - 1) > 0xA)
  {
    v34 = 1;
  }

  else
  {
    v34 = qword_25BCC8FD8[(v26 - 1)];
  }

  if ((v33 * v34) >> 64 != (v33 * v34) >> 63)
  {
    goto LABEL_16;
  }

  if (v28 >= v33 * v34)
  {
    v51[0] = v25;
    v53[0] = v26;
    v35 = v46;
    v36 = v48;
    v27(v46, v48, v13);
    v37 = type metadata accessor for NativeTensorStorage();
    v38 = *(v37 + 48);
    v39 = *(v37 + 52);
    swift_allocObject();
    sub_25BA9F928(v51, v53, v11, v9, v34, v35);
    type metadata accessor for TensorRepresentation();
    memset(v51, 0, sizeof(v51));
    v52 = 0;
    OUTLINED_FUNCTION_93();
    v40 = swift_allocObject();

    v53[0] = 1;
    OUTLINED_FUNCTION_149();
    sub_25BBF1DE0(v41, v51, v42, v40);
    OUTLINED_FUNCTION_9_19();
    type metadata accessor for TensorHandle();
    OUTLINED_FUNCTION_22();
    v43 = swift_allocObject();
    OUTLINED_FUNCTION_14_2(v43);
    sub_25BAA6EB0();

    v44 = *(v47 + 8);
    v44(v49, v13);
    v44(v36, v13);
    *v50 = v43;
    OUTLINED_FUNCTION_10_16();
    return;
  }

LABEL_17:
  OUTLINED_FUNCTION_122_0();
  v45 = 557;
  OUTLINED_FUNCTION_10_5();
  sub_25BCB74CC();
  __break(1u);
}

{
  OUTLINED_FUNCTION_9_18();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = sub_25BCB59BC();
  v13 = OUTLINED_FUNCTION_2(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1();
  v20 = v19 - v18;
  v21 = *v5;
  v22 = *v3;
  v23 = v7 - v9;
  if (!v9)
  {
    v23 = 0;
  }

  v24 = *(v21 + 16);
  if (v24)
  {
    v25 = (v21 + 32);
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
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v28 = 1;
LABEL_9:
  if ((v22 - 1) > 0xA)
  {
    v29 = 1;
  }

  else
  {
    v29 = qword_25BCCB678[(v22 - 1)];
  }

  if ((v28 * v29) >> 64 != (v28 * v29) >> 63)
  {
    goto LABEL_16;
  }

  if (v23 >= v28 * v29)
  {
    v37[0] = *v5;
    v39[0] = v22;
    (*(v15 + 16))(v20, v1, v12);
    v30 = type metadata accessor for NativeTensorStorage();
    v31 = *(v30 + 48);
    v32 = *(v30 + 52);
    swift_allocObject();
    sub_25BA9F928(v37, v39, v9, v7, v29, v20);
    type metadata accessor for TensorRepresentation();
    memset(v37, 0, sizeof(v37));
    v38 = 0;
    OUTLINED_FUNCTION_93();
    v33 = swift_allocObject();

    v39[0] = 1;
    OUTLINED_FUNCTION_149();
    sub_25BBF1DE0(v34, v37, v35, v33);
    OUTLINED_FUNCTION_9_19();
    type metadata accessor for TensorHandle();
    OUTLINED_FUNCTION_22();
    v36 = swift_allocObject();
    OUTLINED_FUNCTION_14_2(v36);
    sub_25BAA6EB0();

    (*(v15 + 8))(v1, v12);
    *v11 = v36;
    OUTLINED_FUNCTION_10_16();
    return;
  }

LABEL_17:
  OUTLINED_FUNCTION_122_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_52_9();
  __break(1u);
}

uint64_t Tensor.init(contentsOfFile:shape:scalarType:on:)@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, void *a5@<X8>)
{
  v26 = sub_25BCB598C();
  v9 = OUTLINED_FUNCTION_2(v26);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1();
  v12 = *a1;
  sub_25BCB591C();

  sub_25BAA51C8(a4, v31);
  v13 = sub_25BCB59AC();
  if (v5)
  {

    sub_25BA9C2C8(a4);
    sub_25BA9C2C8(v31);
    v15 = OUTLINED_FUNCTION_207_0();
    return v16(v15);
  }

  else
  {
    v18 = v13;
    v19 = v14;
    v20 = sub_25BAA51C8(v31, v30);
    v29 = v12;
    OUTLINED_FUNCTION_126_0(v20, a3);
    v21(&v28, a2);
    sub_25BAA51C8(v30, v27);
    Tensor.init(shape:data:scalarType:on:)(&v29, v18, v19, &v28, v27, &v32);
    sub_25BA9C2C8(a4);
    sub_25BA9C2C8(v30);
    sub_25BA9C2C8(v31);
    v22 = OUTLINED_FUNCTION_207_0();
    result = v23(v22);
    *a5 = v32;
  }

  return result;
}

uint64_t Tensor.init(contentsOf:shape:scalarType:on:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = *a2;
  v13 = sub_25BCB59AC();
  if (v6)
  {

    sub_25BA9C2C8(a5);
    v15 = sub_25BCB598C();
    OUTLINED_FUNCTION_9_3(v15);
    return (*(v16 + 8))(a1);
  }

  else
  {
    v18 = v13;
    v19 = v14;
    sub_25BAA51C8(a5, v25);
    v24 = v12;
    (*(a4 + 32))(&v23, a3, a4);
    sub_25BAA51C8(v25, v22);
    Tensor.init(shape:data:scalarType:on:)(&v24, v18, v19, &v23, v22, &v26);
    sub_25BA9C2C8(a5);
    v20 = sub_25BCB598C();
    OUTLINED_FUNCTION_9_3(v20);
    (*(v21 + 8))(a1);
    result = sub_25BA9C2C8(v25);
    *a6 = v26;
  }

  return result;
}

uint64_t sub_25BBEBD84@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v12[0] = *a1;
  OUTLINED_FUNCTION_126_0(a1, *(a3 + 8));
  v9 = v8(&v11, a2);
  OUTLINED_FUNCTION_226(v9);
  Tensor.init(zeros:scalarType:on:)(v12);
  result = sub_25BA9C2C8(a4);
  *a5 = v12[1];
  return result;
}

uint64_t Tensor.init(ones:scalarType:on:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  return sub_25BBEBF70(a1, a2, a3, a4, sub_25BBF30CC, a5);
}

{
  return sub_25BBEBF70(a1, a2, a3, a4, sub_25BBF30B0, a5);
}

uint64_t sub_25BBEBE20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = 1;
  v11 = *(v10 + 16);
  v12 = sub_25BBF2FDC();
  v11(&v15, MEMORY[0x277D849A8], &protocol witness table for Int32, v12, a3, a4);
  sub_25BCB6F0C();
  return (*(v6 + 8))(v9, a3);
}

uint64_t sub_25BBEBF70@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v11 = *a1;
  sub_25BAA51C8(a4, &v15);
  if (*(&v16 + 1))
  {
    v19[0] = v15;
    v19[1] = v16;
    v19[2] = v17;
    v20 = v18;
  }

  else
  {
    type metadata accessor for ContextManager();
    sub_25BAA49B8();
    sub_25BAA4A5C(v14);

    sub_25BAA51C8(v14, v19);
    sub_25BAA4AF4(v14);
    if (*(&v16 + 1))
    {
      sub_25BA9C2C8(&v15);
    }
  }

  sub_25BBEC0A8(a2, v11, a2, a3, v19, a2, a3, a5);

  type metadata accessor for TensorHandle();
  OUTLINED_FUNCTION_22();
  v12 = swift_allocObject();
  OUTLINED_FUNCTION_14_2(v12);
  sub_25BAA6EB0();

  sub_25BA9C2C8(a4);
  result = sub_25BA9C2C8(v19);
  *a6 = v12;
  return result;
}

uint64_t sub_25BBEC0A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (qword_28154F2C8 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    a1 = swift_once();
  }

  v25[0] = a2;
  OUTLINED_FUNCTION_126_0(a1, *(a4 + 8));
  v16 = v15(&v26, a3);
  MEMORY[0x28223BE20](v16);
  v24[2] = a6;
  v24[3] = a7;
  v17 = sub_25BAA4B48(v25, &v26, a5, a8, v24);
  v19 = v18;
  v20 = type metadata accessor for TensorRepresentation();
  sub_25BAA51C8(a5, v25);
  swift_getObjectType();
  LOBYTE(v26) = 1;
  OUTLINED_FUNCTION_149();
  return sub_25BC5FAD0(v17, v25, v21, v20, v22, v19);
}

uint64_t sub_25BBEC1E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = 1065353216;
  v11 = *(v10 + 16);
  v12 = sub_25BB18A50();
  v11(&v15, MEMORY[0x277D83A90], &protocol witness table for Float, v12, a3, a4);
  sub_25BCB6F0C();
  return (*(v6 + 8))(v9, a3);
}

uint64_t Tensor.init<A>(identity:scalarType:on:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v9 = *a1;
  v10 = *(*a1 + 16);
  if ((sub_25BAB74D0(v10, 2, 0, 2) & 1) == 0)
  {
    v15 = v10;
    v16 = xmmword_25BCC8F30;
    v17 = 0;
    v18 = xmmword_25BCBC6A0;
    v19 = 2;
    v20 = 7;
    sub_25BADDD28();
  }

  v14 = v9;
  (*(a4 + 32))(&v13, a3, a4);
  sub_25BAA51C8(a2, &v15);
  Tensor.init(ones:scalarType:on:)(&v14, &v13, &v15, &v12);
  Tensor.bandPart(lowerBandCount:upperBandCount:)(0, 0, &v15);
  sub_25BA9C2C8(a2);

  *a5 = v15;
  return result;
}

void Tensor.init<A>(oneHotAtIndex:depth:onValue:offValue:scalarType:on:)()
{
  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_150_0(v6, v7, v8, v9, v10, v11, v12, v13);
  v15 = v14;
  OUTLINED_FUNCTION_9();
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_30_15();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_174_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  v22 = OUTLINED_FUNCTION_5();
  *(v22 + 16) = xmmword_25BCBAE50;
  *(v22 + 32) = v15;
  v23 = OUTLINED_FUNCTION_148_0(v22);
  v0(v23);
  (v0)(v5, v3, v1);
  sub_25BAA51C8(v4, &v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  sub_25BBF2F60(&qword_27FBB3FB0, &unk_27FBB5DF0, &qword_25BCC2AA0);
  v24 = OUTLINED_FUNCTION_77_3();
  Tensor.init<A, B>(oneHotAtIndices:depth:onValue:offValue:scalarType:on:)(v24);
  Tensor.squeezingShape(at:)();
  sub_25BA9C2C8(v4);
  v25 = *(v17 + 8);
  v26 = OUTLINED_FUNCTION_110_4();
  v25(v26);
  (v25)(v2, v1);

  OUTLINED_FUNCTION_116_2(v27);
  OUTLINED_FUNCTION_10_16();
}

{
  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_150_0(v6, v7, v8, v9, v10, v11, v12, v13);
  v15 = v14;
  OUTLINED_FUNCTION_9();
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_30_15();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_174_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C8, &unk_25BCC2630);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_25BCBAE50;
  *(v22 + 32) = v15;
  v23 = OUTLINED_FUNCTION_148_0(v22);
  v0(v23);
  (v0)(v5, v3, v1);
  sub_25BAA51C8(v4, &v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB48D0, &qword_25BCBFA20);
  sub_25BBF2F60(&qword_27FBB6388, &qword_27FBB48D0, &qword_25BCBFA20);
  v24 = OUTLINED_FUNCTION_77_3();
  Tensor.init<A, B>(oneHotAtIndices:depth:onValue:offValue:scalarType:on:)(v24);
  Tensor.squeezingShape(at:)();
  sub_25BA9C2C8(v4);
  v25 = *(v17 + 8);
  v26 = OUTLINED_FUNCTION_110_4();
  v25(v26);
  (v25)(v2, v1);

  OUTLINED_FUNCTION_116_2(v27);
  OUTLINED_FUNCTION_10_16();
}

void sub_25BBEC840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void (*a25)(uint64_t *__return_ptr, uint64_t, uint64_t, _BYTE *))
{
  OUTLINED_FUNCTION_9_18();
  v26 = v25;
  v28 = v27;
  v69 = v29;
  v70 = v30;
  v73 = v31;
  v74 = v32;
  v34 = v33;
  v71 = v35;
  v72 = a21;
  v67 = a25;
  v68 = v36;
  OUTLINED_FUNCTION_9();
  v38 = v37;
  v40 = *(v39 + 64);
  v65[1] = a24;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_4_0();
  v44 = (v42 - v43);
  MEMORY[0x28223BE20](v45);
  v47 = v65 - v46;
  OUTLINED_FUNCTION_9();
  v49 = v48;
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_1();
  v55 = v54 - v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  v56 = OUTLINED_FUNCTION_5();
  *(v56 + 16) = xmmword_25BCBAE50;
  v66 = v34;
  *(v56 + 32) = sub_25BCB6ABC();
  OUTLINED_FUNCTION_206_0();
  v57(v55, v34, v26);
  v58 = *(a23 + 8);
  v59 = sub_25BCB68DC();
  v77 = 0;
  memset(v76, 0, sizeof(v76));
  v67(&v75, v56, v59, v76);
  v60 = *(v38 + 16);
  v61 = v68;
  v60(v47, v68, v28);
  v62 = v69;
  v60(v44, v69, v28);
  v63 = v70;
  sub_25BAA51C8(v70, v76);
  Tensor.init<A>(oneHotAtIndices:depth:onValue:offValue:scalarType:on:)();
  sub_25BA9C2C8(v63);
  v64 = *(v38 + 8);
  v64(v62, v28);
  v64(v61, v28);
  (*(v49 + 8))(v66, v26);
  OUTLINED_FUNCTION_116_2(v78);
  OUTLINED_FUNCTION_10_16();
}

void sub_25BBECAE0()
{
  OUTLINED_FUNCTION_9_18();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v31 = v3;
  if (*(v5 + 16))
  {
    while (1)
    {
      OUTLINED_FUNCTION_0();
      if (!v9)
      {
        break;
      }

      OUTLINED_FUNCTION_222();
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_15:
    OUTLINED_FUNCTION_0_0();
    swift_once();
LABEL_14:
    v26[0] = v6;
    v27[0] = 3;
    sub_25BAA4B48(v26, v27, v29, sub_25BBF3094, v0);
    v14 = v13;

    sub_25BAA51C8(v29, v26);
    type metadata accessor for TensorRepresentation();
    OUTLINED_FUNCTION_93();
    v15 = swift_allocObject();
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    v27[0] = 1;
    OUTLINED_FUNCTION_149();
    sub_25BAA5BB4(v17, v26, v18, v15, ObjectType, v14);
    OUTLINED_FUNCTION_9_19();
    type metadata accessor for TensorHandle();
    OUTLINED_FUNCTION_22();
    v19 = swift_allocObject();
    OUTLINED_FUNCTION_14_2(v19);
    sub_25BAA6EB0();
    swift_unknownObjectRelease();

    sub_25BA9C2C8(v2);
    sub_25BA9C2C8(v29);
    sub_25BA9C2C8(v30);

    *v8 = v19;
    OUTLINED_FUNCTION_10_16();
    return;
  }

  v10 = 1;
LABEL_8:
  if (v10 == *(v4 + 16))
  {
    v11 = sub_25BAA51C8(v2, v30);
    MEMORY[0x28223BE20](v11);
    v0 = v25;
    v25[2] = &v31;
    sub_25BAA51C8(v30, v27);
    if (v28)
    {
      OUTLINED_FUNCTION_158_0(v29);
      v29[12] = v12;
    }

    else
    {
      type metadata accessor for ContextManager();
      sub_25BAA49B8();
      sub_25BAA4A5C(v26);

      sub_25BAA51C8(v26, v29);
      sub_25BAA4AF4(v26);
      if (v28)
      {
        sub_25BA9C2C8(v27);
      }
    }

    if (qword_28154F2C8 == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v26[0] = 0;
  v26[1] = 0xE000000000000000;
  sub_25BCB70FC();
  MEMORY[0x25F876C90](0xD000000000000013, 0x800000025BCDA710);
  if (*(v6 + 16))
  {
    while (1)
    {
      OUTLINED_FUNCTION_0();
      if (!v9)
      {
        break;
      }

      OUTLINED_FUNCTION_222();
      if (v9)
      {
        goto LABEL_23;
      }
    }

    __break(1u);

    sub_25BA9C2C8(v29);
    sub_25BA9C2C8(v30);

    __break(1u);
  }

  v20 = 1;
LABEL_23:
  v30[0] = v20;
  OUTLINED_FUNCTION_102_0();
  v21 = sub_25BCB77FC();
  MEMORY[0x25F876C90](v21);

  v22 = OUTLINED_FUNCTION_51_1();
  MEMORY[0x25F876C90](v22);
  v30[0] = *(v4 + 16);
  OUTLINED_FUNCTION_102_0();
  v23 = sub_25BCB77FC();
  MEMORY[0x25F876C90](v23);

  v24 = OUTLINED_FUNCTION_50_8();
  MEMORY[0x25F876C90](v24);
  OUTLINED_FUNCTION_122_0();
  OUTLINED_FUNCTION_10_5();
  sub_25BCB74CC();
  __break(1u);
}

void Tensor.init<A>(oneHotAtIndices:depth:onValue:offValue:scalarType:on:)()
{
  OUTLINED_FUNCTION_38_2();
  v3 = v2;
  v5 = v4;
  v45 = v6;
  v46 = v8;
  v47 = v7;
  v10 = v9;
  v12 = v11;
  OUTLINED_FUNCTION_9_19();
  v13 = sub_25BCB783C();
  v14 = OUTLINED_FUNCTION_2(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_19_20();
  v19 = *v0;
  v20 = *(*(*v0 + 2) + 160);
  if (!sub_25BAA80BC(v20, &unk_286D427E8))
  {
    LOBYTE(v59) = v20;
    *&v48 = sub_25BC8FACC();
    *(&v48 + 1) = v44;
    v49 = xmmword_25BCC8F40;
    LOBYTE(v50) = 0;
    *(&v50 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6390, &qword_25BCC8FD0);
    LOBYTE(v51) = 2;
    v54 = 3;
    sub_25BADDD28();
  }

  if (v12 <= 0)
  {
    OUTLINED_FUNCTION_122_0();
    OUTLINED_FUNCTION_10_5();
    OUTLINED_FUNCTION_228();
    __break(1u);
  }

  else
  {
    v59 = v19;
    LOBYTE(v56[0]) = 2;
    (*(v16 + 104))(v1, *MEMORY[0x277D84660], v13);
    Tensor.cast(to:roundingRule:)();
    (*(v16 + 8))(v1, v13);

    v21 = v48;
    v22 = *(*(v48 + 16) + 152);
    swift_bridgeObjectRetain_n();
    v23 = v22;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = *(v22 + 16);
      sub_25BAAE04C();
      v23 = v42;
    }

    v24 = *(v23 + 16);
    if (v24 >= *(v23 + 24) >> 1)
    {
      sub_25BAAE04C();
      v23 = v43;
    }

    *(v23 + 16) = v24 + 1;
    *(v23 + 8 * v24 + 32) = v12;

    v25 = *(v21 + 16);

    v26 = v10;
    v27 = sub_25BC31CA0(v5);
    v28 = sub_25BC31CA0(v5);
    (*(v3 + 32))(&v48, v5, v3);
    v29 = v48;
    v58 = 0;
    v59 = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/TensorCreationOps.swift";
    v60 = 119;
    v61 = 2;
    v62 = xmmword_25BCC8F50;
    v63 = "init(id:indices:depth:onValue:offValue:resultDescriptor:creationSite:)";
    v64 = 70;
    v65 = 2;
    type metadata accessor for OneHotOperation();
    swift_allocObject();
    v30 = OUTLINED_FUNCTION_3();
    v34 = sub_25BAB4964(v30, v31, v32, v25, v12, v23, v29, v33, v27, v28);
    sub_25BAA51C8(v45, &v48);
    if (*(&v49 + 1))
    {
      v56[0] = v48;
      v56[1] = v49;
      v56[2] = v50;
      v57 = v51;
    }

    else
    {
      sub_25BAA51C8(*(v21 + 16) + 168, v56);
      if (*(&v49 + 1))
      {
        sub_25BA9C2C8(&v48);
      }
    }

    sub_25BAA51C8(v56, v55);
    type metadata accessor for ContextManager();
    swift_retain_n();
    sub_25BAA49B8();
    sub_25BAA4A5C(&v48);

    v35 = v53;

    sub_25BAA4AF4(&v48);
    sub_25BAA49B8();
    sub_25BAA4A5C(&v48);

    v36 = v52;

    sub_25BAA4AF4(&v48);
    type metadata accessor for TensorRepresentation();
    OUTLINED_FUNCTION_93();
    v37 = swift_allocObject();
    LOBYTE(v48) = 1;
    sub_25BAA025C(v34, 0, v55, 0x100000000, v35, v36, v37);
    OUTLINED_FUNCTION_9_19();
    type metadata accessor for TensorHandle();
    OUTLINED_FUNCTION_22();
    v38 = swift_allocObject();
    OUTLINED_FUNCTION_14_2(v38);
    sub_25BAA6EB0();

    sub_25BA9C2C8(v45);
    OUTLINED_FUNCTION_11_1(v5);
    v40 = *(v39 + 8);
    v40(v47, v5);
    v40(v26, v5);
    sub_25BA9C2C8(v56);
    *v46 = v38;
    OUTLINED_FUNCTION_37_0();
  }
}

void Tensor.init<A>(rangeFrom:to:stride:scalarType:on:)()
{
  OUTLINED_FUNCTION_9_18();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_25BCB7BEC();
  OUTLINED_FUNCTION_9_3(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v13);
  sub_25BCB7AFC();
  swift_getWitnessTable();
  v18[7] = sub_25BCB68DC();
  sub_25BAA51C8(v3, v18);
  sub_25BCB68CC();
  OUTLINED_FUNCTION_36_12();
  swift_getWitnessTable();
  Tensor.init<A>(_:scalarType:on:)();
  sub_25BA9C2C8(v3);
  OUTLINED_FUNCTION_13_24();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9_3(AssociatedTypeWitness);
  (*(v15 + 8))(v5);
  OUTLINED_FUNCTION_11_1(v1);
  v17 = *(v16 + 8);
  v17(v7, v1);
  v17(v9, v1);
  OUTLINED_FUNCTION_10_16();
}

void Tensor.init<A>(linearSpaceFrom:through:count:scalarType:on:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_9_18();
  v22 = v21;
  v65 = v24;
  v66 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v67 = v31;
  OUTLINED_FUNCTION_9();
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_4_0();
  v39 = v37 - v38;
  MEMORY[0x28223BE20](v40);
  v42 = &v62 - v41;
  MEMORY[0x28223BE20](v43);
  v46 = &v62 - v45;
  if (v47 < 2)
  {
    OUTLINED_FUNCTION_122_0();
    v62 = 708;
    OUTLINED_FUNCTION_10_5();
    OUTLINED_FUNCTION_228();
    __break(1u);
  }

  else
  {
    v63 = a21;
    v64 = v44;
    v48 = *(*(*(*(v22 + 16) + 16) + 8) + 8);
    sub_25BCB750C();
    sub_25BCB620C();
    OUTLINED_FUNCTION_13_24();
    sub_25BCB61DC();
    v49 = *(v33 + 8);
    v49(v39, v26);
    v50 = (v49)(v42, v26);
    v68[0] = 0;
    v68[1] = v28;
    MEMORY[0x28223BE20](v50);
    v51 = v65;
    *(&v62 - 6) = v26;
    *(&v62 - 5) = v51;
    v52 = v63;
    *(&v62 - 4) = v22;
    *(&v62 - 3) = v52;
    *(&v62 - 2) = v30;
    *(&v62 - 1) = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB48E8, &qword_25BCBFAB0);
    sub_25BB42928();
    OUTLINED_FUNCTION_139_0();
    v68[7] = sub_25BAB2B20(v53, v54, v55, v56, v57, v58, v59, v60);
    v61 = v66;
    sub_25BAA51C8(v66, v68);
    sub_25BCB68CC();
    OUTLINED_FUNCTION_36_12();
    swift_getWitnessTable();
    Tensor.init<A>(_:scalarType:on:)();
    sub_25BA9C2C8(v61);
    v49(v64, v26);
    *v67 = v68[8];
    v49(v46, v26);
    v49(v30, v26);
    OUTLINED_FUNCTION_10_16();
  }
}

uint64_t sub_25BBED804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v20 - v10;
  v13 = *v12;
  v15 = *(v14 + 16);
  sub_25BCB620C();
  v16 = *(*(v15 + 16) + 8);
  sub_25BCB6A8C();
  v17 = *(v5 + 8);
  v17(v8, a4);
  v18 = *(v16 + 8);
  sub_25BCB74FC();
  return (v17)(v11, a4);
}

void Tensor.init<A, B>(randomUniform:in:using:scalarType:on:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_120_3(v24, v25, v26, v27);
  v28 = *(*(*(a21 + 16) + 24) + 8);
  v29 = sub_25BCB62FC();
  OUTLINED_FUNCTION_2(v29);
  v31 = v30;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v34);
  v37[7] = *v23;
  OUTLINED_FUNCTION_206_0();
  v35 = OUTLINED_FUNCTION_56_5();
  v36(v35);
  sub_25BCB621C();
  sub_25BAA51C8(v22, v37);
  OUTLINED_FUNCTION_137_0();
  Tensor.init<A>(randomUniform:in:seed:scalarType:on:)();
  sub_25BA9C2C8(v22);
  (*(v31 + 8))(v21, v29);
  OUTLINED_FUNCTION_116_2(v37[8]);
  OUTLINED_FUNCTION_10_16();
}

{
  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_120_3(v25, v26, v27, v28);
  v29 = *(*(*(a21 + 8) + 32) + 8);
  v30 = sub_25BCB62FC();
  OUTLINED_FUNCTION_2(v30);
  v32 = v31;
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v35);
  v48[7] = *v24;
  OUTLINED_FUNCTION_125_1();
  v36 = OUTLINED_FUNCTION_110_4();
  v37(v36);
  sub_25BCB621C();
  sub_25BAA51C8(v22, v48);
  OUTLINED_FUNCTION_137_0();
  OUTLINED_FUNCTION_13_24();
  Tensor.init<A>(randomUniform:in:seed:scalarType:on:)(v38, v39, v40, 0, v45, v41, v23, v46, a21, v42, v43, v44, v45, v46, v47, v48[0], v48[1], v48[2], v48[3], v48[4], v48[5]);
  sub_25BA9C2C8(v22);
  (*(v32 + 8))(v21, v30);
  OUTLINED_FUNCTION_116_2(v48[8]);
  OUTLINED_FUNCTION_10_16();
}

void Tensor.init<A>(randomUniform:in:seed:scalarType:on:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_9_18();
  v126 = v21;
  v23 = v22;
  v25 = v24;
  v128 = v26;
  v28 = v27;
  v30 = v29;
  v135 = v31;
  v33 = v32;
  v132 = v34;
  v35 = sub_25BCB783C();
  v36 = OUTLINED_FUNCTION_2(v35);
  v129 = v37;
  v130 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_1();
  v127 = v41 - v40;
  v42 = *(a21 + 8);
  v123 = *(*(v42 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9_3(AssociatedTypeWitness);
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v45);
  v121 = &v121 - v46;
  OUTLINED_FUNCTION_9();
  v48 = v47;
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_4_0();
  v124 = v52 - v53;
  MEMORY[0x28223BE20](v54);
  v134 = &v121 - v55;
  MEMORY[0x28223BE20](v56);
  v58 = &v121 - v57;
  v133 = *v33;
  v131 = v25;
  sub_25BAA51C8(v25, &v143);
  if (*(&v144 + 1))
  {
    v158[0] = v143;
    v158[1] = v144;
    v158[2] = v145;
    v159 = v146;
  }

  else
  {
    type metadata accessor for ContextManager();
    sub_25BAA49B8();
    sub_25BAA4A5C(&v152);

    sub_25BAA51C8(&v152, v158);
    sub_25BAA4AF4(&v152);
    if (*(&v144 + 1))
    {
      sub_25BA9C2C8(&v143);
    }
  }

  if ((v28 & 1) == 0)
  {
    goto LABEL_10;
  }

  type metadata accessor for ContextManager();
  v59 = sub_25BAA49B8();
  swift_beginAccess();
  v60 = *(v59 + 16);
  v61 = *(v60 + 16);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v59 + 16) = v60;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_68;
  }

  if (v61)
  {
    while (1)
    {
      if (v61 > *(v60 + 16))
      {
        goto LABEL_70;
      }

      v30 = sub_25BC32FA0();
      *(v59 + 16) = v60;
      swift_endAccess();

LABEL_10:
      v63 = sub_25BBE5CAC(v30);
      v152 = v64;
      v153 = v65;
      v154 = v63 & 1;
      v155 = v66;
      sub_25BB6B668(&v151);
      v67 = *(v151 + 16);

      v150 = v133;
      v133 = *(v48 + 16);
      (v133)(v58, v135, v23);
      OUTLINED_FUNCTION_56_5();
      if ((sub_25BCB6FAC() & 1) == 0)
      {
        goto LABEL_23;
      }

      OUTLINED_FUNCTION_42_11();
      if (sub_25BCB6F9C() <= 32)
      {
        goto LABEL_23;
      }

      LODWORD(v152) = 0x80000000;
      v68 = v23;
      OUTLINED_FUNCTION_56_5();
      if (sub_25BCB6FAC())
      {
        break;
      }

      v68 = v23;
      OUTLINED_FUNCTION_56_5();
      v69 = sub_25BCB6FAC();
      OUTLINED_FUNCTION_42_11();
      v70 = sub_25BCB6F9C();
      if (v69)
      {
        if (v70 <= 32)
        {
          swift_getAssociatedConformanceWitness();
          sub_25BCB790C();
          sub_25BCB788C();
          OUTLINED_FUNCTION_190_0();
          v73 = OUTLINED_FUNCTION_73_4();
          v74(v73);
          if (v23)
          {
            goto LABEL_71;
          }

LABEL_22:
          OUTLINED_FUNCTION_42_11();
          sub_25BCB6F8C();
          goto LABEL_23;
        }

        goto LABEL_17;
      }

      if (v70 < 32)
      {
        goto LABEL_22;
      }

LABEL_23:
      OUTLINED_FUNCTION_42_11();
      if (sub_25BCB6F9C() <= 32)
      {
        goto LABEL_28;
      }

      while (1)
      {
        LODWORD(v152) = 0x7FFFFFFF;
        OUTLINED_FUNCTION_56_5();
        v75 = sub_25BCB6FAC();
        OUTLINED_FUNCTION_42_11();
        v76 = sub_25BCB6F9C();
        if (v75)
        {
          if (v76 < 33)
          {
            goto LABEL_32;
          }
        }

        else if (v76 < 32)
        {
LABEL_32:
          OUTLINED_FUNCTION_42_11();
          sub_25BCB6F8C();
          break;
        }

        sub_25BBF2FDC();
        OUTLINED_FUNCTION_181_0();
        v77 = *(*(v42 + 32) + 8);
        sub_25BCB629C();
        v78 = OUTLINED_FUNCTION_73_4();
        v79(v78);
        if ((v23 & 1) == 0)
        {
          break;
        }

        __break(1u);
LABEL_28:
        OUTLINED_FUNCTION_42_11();
        if (sub_25BCB6F9C() == 32)
        {
          OUTLINED_FUNCTION_56_5();
          if ((sub_25BCB6FAC() & 1) == 0)
          {
            continue;
          }
        }

        break;
      }

      v125 = v67;
      OUTLINED_FUNCTION_42_11();
      v59 = sub_25BCB6F8C();
      v81 = *(v48 + 8);
      v48 += 8;
      v80 = v81;
      v81(v58, v23);
      v60 = *(*(v42 + 32) + 8);
      v58 = sub_25BCB62FC();
      v82 = v134;
      (v133)(v134, v135 + *(v58 + 9), v23);
      v83 = v82;
      OUTLINED_FUNCTION_56_5();
      if (sub_25BCB6FAC())
      {
        OUTLINED_FUNCTION_54_7();
        if (sub_25BCB6F9C() > 32)
        {
          LODWORD(v152) = 0x80000000;
          OUTLINED_FUNCTION_56_5();
          if (sub_25BCB6FAC())
          {
            OUTLINED_FUNCTION_54_7();
            if (sub_25BCB6F9C() < 32)
            {
              goto LABEL_46;
            }

            sub_25BBF2FDC();
            v133 = v58;
            OUTLINED_FUNCTION_99_4();
            OUTLINED_FUNCTION_133_0();
            v84 = OUTLINED_FUNCTION_17_26();
            v58 = v133;
            v80(v84, v23);
            if (v23)
            {
              goto LABEL_72;
            }
          }

          else
          {
            OUTLINED_FUNCTION_56_5();
            v85 = sub_25BCB6FAC();
            OUTLINED_FUNCTION_56_5();
            v86 = sub_25BCB6F9C();
            if (v85)
            {
              v133 = v58;
              if (v86 <= 32)
              {
                swift_getAssociatedConformanceWitness();
                sub_25BCB790C();
                sub_25BCB788C();
                v83 = v134;
                OUTLINED_FUNCTION_133_0();
                v88 = OUTLINED_FUNCTION_17_26();
                v80(v88, v23);
                v58 = v133;
                if (v23)
                {
                  goto LABEL_72;
                }

LABEL_46:
                OUTLINED_FUNCTION_54_7();
                sub_25BCB6F8C();
                goto LABEL_47;
              }

              sub_25BBF2FDC();
              OUTLINED_FUNCTION_99_4();
              v83 = v134;
              OUTLINED_FUNCTION_133_0();
              v87 = OUTLINED_FUNCTION_17_26();
              v80(v87, v23);
              v58 = v133;
              if (v82)
              {
                goto LABEL_72;
              }
            }

            else
            {
              v83 = v134;
              if (v86 < 32)
              {
                goto LABEL_46;
              }
            }
          }
        }
      }

LABEL_47:
      OUTLINED_FUNCTION_54_7();
      if (sub_25BCB6F9C() <= 32)
      {
        goto LABEL_52;
      }

      do
      {
        LODWORD(v152) = 0x7FFFFFFF;
        OUTLINED_FUNCTION_56_5();
        v89 = v83;
        v90 = sub_25BCB6FAC();
        OUTLINED_FUNCTION_56_5();
        v91 = sub_25BCB6F9C();
        if (v90)
        {
          if (v91 < 33)
          {
            goto LABEL_56;
          }
        }

        else if (v91 < 32)
        {
LABEL_56:
          v83 = v134;
          OUTLINED_FUNCTION_54_7();
          sub_25BCB6F8C();
          break;
        }

        sub_25BBF2FDC();
        v133 = v58;
        OUTLINED_FUNCTION_99_4();
        v83 = v134;
        sub_25BCB629C();
        v92 = OUTLINED_FUNCTION_17_26();
        v58 = v133;
        v80(v92, v23);
        if ((v89 & 1) == 0)
        {
          break;
        }

        __break(1u);
LABEL_52:
        OUTLINED_FUNCTION_54_7();
        if (sub_25BCB6F9C() != 32)
        {
          break;
        }

        OUTLINED_FUNCTION_56_5();
      }

      while ((sub_25BCB6FAC() & 1) == 0);
      OUTLINED_FUNCTION_54_7();
      v61 = sub_25BCB6F8C();
      v80(v83, v23);
      if (v61 >= v59)
      {
        *(&v144 + 1) = MEMORY[0x277D849A8];
        *&v145 = &protocol witness table for Int32;
        LODWORD(v143) = v59;
        v147 = MEMORY[0x277D849A8];
        v148 = &protocol witness table for Int32;
        DWORD2(v145) = v61;
        v149 = 514;
        v142 = 0;
        OUTLINED_FUNCTION_19_3("/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/RandomOp.swift");
        v160 = xmmword_25BCBC690;
        OUTLINED_FUNCTION_72_4(v93);
        v94 = OUTLINED_FUNCTION_201();
        v95 = OUTLINED_FUNCTION_3();
        sub_25BC323E4(v95, v96, v97, v125, v98, v99, v100);
        OUTLINED_FUNCTION_11_30();
        sub_25BBF3030(v101, v102);
        v103 = OUTLINED_FUNCTION_185_0();
        sub_25BAA51C8(v103, &v138);
        if (*(&v139 + 1))
        {
          OUTLINED_FUNCTION_163_0();
          sub_25BABEF40(&v152, v136);
          sub_25BC170C8(v94, v136, &v138);
          sub_25BA9C2C8(v136);
          sub_25BABF0A8(&v152);
        }

        else
        {
          sub_25BA9C2C8(&v138);
          v138 = 0u;
          v139 = 0u;
          v140 = 0u;
          v141 = 0;
        }

        type metadata accessor for ContextManager();
        sub_25BAA49B8();
        sub_25BAA4A5C(&v152);

        v104 = v157;

        sub_25BAA4AF4(&v152);
        sub_25BAA49B8();
        sub_25BAA4A5C(&v152);

        v105 = v156;

        sub_25BAA4AF4(&v152);
        type metadata accessor for TensorRepresentation();
        OUTLINED_FUNCTION_93();
        v106 = swift_allocObject();

        LOBYTE(v152) = 1;
        v108 = sub_25BC0C634(v107, 0, &v138, 0x100000000, v104, v105, v106);
        type metadata accessor for TensorHandle();
        OUTLINED_FUNCTION_22();
        v109 = swift_allocObject();
        *(v109 + 16) = v108;

        sub_25BAA6EB0();
        sub_25BAA51C8(v158, &v138);
        if (*(&v139 + 1))
        {
          OUTLINED_FUNCTION_163_0();
          *&v138 = v109;
          v110 = Tensor.scalarType.getter();
          sub_25BBABD24(v110, v111);
          OUTLINED_FUNCTION_186();
          if (!v112)
          {
            OUTLINED_FUNCTION_78_4();
            OUTLINED_FUNCTION_55(&v152, v113);
          }

          *&v138 = v109;
          Tensor.place(on:)(&v152);
          sub_25BABF0A8(&v152);
          v109 = v138;
        }

        else
        {
          sub_25BA9C2C8(&v138);
          *&v138 = v109;
        }

        v115 = v129;
        v114 = v130;
        v116 = v127;
        v117 = (*(v129 + 104))(v127, *MEMORY[0x277D84660], v130);
        v136[0] = v109;
        OUTLINED_FUNCTION_126_0(v117, *(v126 + 8));
        v118(&v137, v23);
        Tensor.cast(to:roundingRule:)();

        sub_25BA9C2C8(v131);
        OUTLINED_FUNCTION_11_1(v58);
        (*(v119 + 8))(v135, v58);
        (*(v115 + 8))(v116, v114);

        sub_25BA9C2C8(v158);
        OUTLINED_FUNCTION_116_2(v152);
        OUTLINED_FUNCTION_10_16();
        return;
      }

      __break(1u);
LABEL_68:
      sub_25BBF1454(v60);
      v60 = v120;
      *(v59 + 16) = v120;
      if (!v61)
      {
        goto LABEL_69;
      }
    }

    OUTLINED_FUNCTION_42_11();
    if (sub_25BCB6F9C() < 32)
    {
      goto LABEL_22;
    }

LABEL_17:
    sub_25BBF2FDC();
    OUTLINED_FUNCTION_181_0();
    OUTLINED_FUNCTION_190_0();
    v71 = OUTLINED_FUNCTION_73_4();
    v72(v71);
    if (v68)
    {
      goto LABEL_71;
    }

    goto LABEL_23;
  }

LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
}

uint64_t Tensor.init<A>(randomUniform:using:scalarType:on:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v7 = *a1;
  v5 = sub_25BCB621C();
  OUTLINED_FUNCTION_226(v5);
  Tensor.init(randomUniform:seed:scalarType:on:)();
  result = sub_25BA9C2C8(a2);
  *a3 = v8;
  return result;
}

void Tensor.init(randomUniform:seed:scalarType:on:)()
{
  OUTLINED_FUNCTION_9_18();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_25BCB783C();
  v9 = OUTLINED_FUNCTION_2(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1();
  v16 = v15 - v14;
  v17 = *v7;
  v51 = v1;
  sub_25BAA51C8(v1, &v69);
  if (*(&v70[0] + 1))
  {
    v68[0] = v69;
    v68[1] = v70[0];
    v68[2] = v70[1];
    OUTLINED_FUNCTION_214_0();
  }

  else
  {
    type metadata accessor for ContextManager();
    sub_25BAA49B8();
    sub_25BAA4A5C(v64);

    sub_25BAA51C8(v64, v68);
    sub_25BAA4AF4(v64);
    if (*(&v70[0] + 1))
    {
      sub_25BA9C2C8(&v69);
    }
  }

  if ((v3 & 1) == 0)
  {
    goto LABEL_10;
  }

  type metadata accessor for ContextManager();
  v18 = sub_25BAA49B8();
  swift_beginAccess();
  v19 = v18[2];
  v20 = *(v19 + 16);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18[2] = v19;
  if (isUniquelyReferenced_nonNull_native)
  {
    if (v20)
    {
      goto LABEL_8;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_25BBF1454(v19);
  v19 = v50;
  v18[2] = v50;
  if (!v20)
  {
    goto LABEL_20;
  }

LABEL_8:
  if (v20 > *(v19 + 16))
  {
LABEL_21:
    __break(1u);
    return;
  }

  v5 = sub_25BC32FA0();
  v18[2] = v19;
  swift_endAccess();

LABEL_10:
  v22 = sub_25BBE5CAC(v5);
  v59 = v23;
  v60 = v24;
  v61 = v22 & 1;
  v62 = v25;
  sub_25BB6B668(&v63);
  v26 = *(v63 + 16);

  *&v54 = v17;
  v64[3] = MEMORY[0x277D83B88];
  v64[4] = &protocol witness table for Int;
  v64[0] = 0;
  v64[8] = MEMORY[0x277D83B88];
  v65 = &protocol witness table for Int;
  v64[5] = 1;
  v67 = 514;
  v58 = 0;
  OUTLINED_FUNCTION_19_3("/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/RandomOp.swift");
  *(v70 + 8) = xmmword_25BCBC690;
  OUTLINED_FUNCTION_72_4(v27);
  OUTLINED_FUNCTION_201();
  v28 = OUTLINED_FUNCTION_3();
  v29 = v26;
  v31 = v30;
  sub_25BC323E4(v28, v32, v33, v29, v34, v35, v36);
  OUTLINED_FUNCTION_11_30();
  sub_25BBF3030(v37, v38);
  v39 = OUTLINED_FUNCTION_185_0();
  sub_25BAA51C8(v39, &v54);
  if (*(&v55 + 1))
  {
    OUTLINED_FUNCTION_154_0();
    sub_25BABEF40(v64, v52);
    sub_25BC170C8(v31, v52, &v54);
    sub_25BA9C2C8(v52);
    sub_25BABF0A8(v64);
  }

  else
  {
    sub_25BA9C2C8(&v54);
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0;
  }

  type metadata accessor for ContextManager();
  sub_25BAA49B8();
  sub_25BAA4A5C(v64);

  v40 = v66;

  sub_25BAA4AF4(v64);
  sub_25BAA49B8();
  sub_25BAA4A5C(v64);

  v41 = v65;

  sub_25BAA4AF4(v64);
  type metadata accessor for TensorRepresentation();
  OUTLINED_FUNCTION_93();
  v42 = swift_allocObject();

  LOBYTE(v64[0]) = 1;
  v44 = sub_25BC0C634(v43, 0, &v54, 0x100000000, v40, v41, v42);
  type metadata accessor for TensorHandle();
  OUTLINED_FUNCTION_22();
  v45 = swift_allocObject();
  *(v45 + 16) = v44;

  sub_25BAA6EB0();
  sub_25BAA51C8(v68, &v54);
  if (*(&v55 + 1))
  {
    OUTLINED_FUNCTION_154_0();
    *&v54 = v45;
    v46 = Tensor.scalarType.getter();
    sub_25BBABD24(v46, v47);
    OUTLINED_FUNCTION_186();
    if (!v48)
    {
      OUTLINED_FUNCTION_78_4();
      OUTLINED_FUNCTION_55(v64, v49);
    }

    *&v54 = v45;
    Tensor.place(on:)(v64);
    sub_25BABF0A8(v64);
    v45 = v54;
  }

  else
  {
    sub_25BA9C2C8(&v54);
    *&v54 = v45;
  }

  (*(v11 + 104))(v16, *MEMORY[0x277D84660], v8);
  v52[0] = v45;
  v53 = 12;
  Tensor.cast(to:roundingRule:)();

  sub_25BA9C2C8(v51);
  (*(v11 + 8))(v16, v8);

  sub_25BA9C2C8(v68);
  OUTLINED_FUNCTION_116_2(v64[0]);
  OUTLINED_FUNCTION_10_16();
}

void sub_25BBEED74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void (*a25)(uint64_t *__return_ptr, uint64_t *, uint64_t, uint64_t, uint64_t, void, uint64_t, _BYTE *, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_9_18();
  v46 = v27;
  v29 = v28;
  v31 = v30;
  v47 = v32;
  v34 = v33;
  OUTLINED_FUNCTION_9();
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_171();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_221(v41);
  v49 = v42;
  v43 = *(v36 + 16);
  (v43)(v25);
  OUTLINED_FUNCTION_13_24();
  v43();
  v44 = sub_25BCB621C();
  sub_25BAA51C8(v31, v48);
  a25(&v50, &v49, v25, v26, v44, 0, v47, v48, v29, a21);
  sub_25BA9C2C8(v31);
  v45 = *(v36 + 8);
  v45(v34, v29);
  v45(v46, v29);
  OUTLINED_FUNCTION_116_2(v50);
  OUTLINED_FUNCTION_10_16();
}

uint64_t sub_25BBEEF00(uint64_t a1, uint64_t a2)
{
  v7 = 2;
  v4 = *(a2 + 24);
  v5 = sub_25BB6D800();
  return v4(&v7, MEMORY[0x277D83B88], &protocol witness table for Int, v5, a1, a2);
}

void *sub_25BBEEF84(void *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v3 = (a2 - result) / 8;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a3 + 16);
  if (v4)
  {
    if (v3 < v4)
    {
      __break(1u);
    }

    else
    {
      return memcpy(result, (a3 + 32), 8 * v4);
    }
  }

  return result;
}

uint64_t sub_25BBEEFC4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  return sub_25BCB6F0C();
}

BOOL sub_25BBEF000(uint64_t a1, double a2)
{
  v3 = LODWORD(a2);
  v4 = (*&a2 >> 52) & 0x7FFLL;
  v5 = *&a2 & 0xFFFFFFFFFFFFFLL;
  v6 = v4 | *&a2 & 0xFFFFFFFFFFFFFLL;
  if (!v6)
  {
    v8 = 0;
    result = 1;
    goto LABEL_28;
  }

  if (v4 != 2047 && a2 > -1.0)
  {
    v10 = sub_25BCB695C();
    if (v10 <= 31)
    {
      v11 = v10;
      v12 = sub_25BCB692C();
      v13 = v12 + __clz(__rbit64(v5));
      v14 = v11 - v13;
      if (__OFSUB__(v11, v13))
      {
        __break(1u);
      }

      else
      {
        if (v13 <= 31)
        {
          if (v14 < -32 || v14 > 32)
          {
LABEL_13:
            LODWORD(v14) = 0;
            v15 = 0;
            if ((v11 & 0x8000000000000000) == 0)
            {
              goto LABEL_26;
            }

            goto LABEL_27;
          }

          if (v14 < 0)
          {
            if (v14 == -32)
            {
              goto LABEL_13;
            }

            LODWORD(v14) = v3 >> (v13 - v11);
          }

          else
          {
            if (v14 == 32)
            {
              goto LABEL_13;
            }

            LODWORD(v14) = v3 << v14;
          }

LABEL_24:
          if ((v11 & 0x8000000000000000) == 0)
          {
LABEL_26:
            v15 = 1 << v11;
            goto LABEL_27;
          }

          v15 = 0;
LABEL_27:
          LOBYTE(v6) = 0;
          v8 = v14 | v15;
          result = v11 >= v12;
          goto LABEL_28;
        }

        if ((v14 - 65) <= 0xFFFFFFFFFFFFFF7ELL)
        {
          LODWORD(v14) = 0;
          goto LABEL_24;
        }

        if ((v14 & 0x8000000000000000) == 0)
        {
          if (v14 >= 0x40)
          {
            LODWORD(v14) = 0;
          }

          else
          {
            v14 = v5 << v14;
          }

          goto LABEL_24;
        }
      }

      if (v14 <= 0xFFFFFFFFFFFFFFC0)
      {
        LODWORD(v14) = 0;
      }

      else
      {
        v14 = v5 >> (v13 - v11);
      }

      goto LABEL_24;
    }
  }

  v8 = 0;
  result = 0;
  LOBYTE(v6) = 1;
LABEL_28:
  *a1 = v8;
  *(a1 + 4) = v6;
  return result;
}

BOOL sub_25BBEF15C(uint64_t a1, float a2)
{
  v3 = (LODWORD(a2) >> 23);
  v4 = LODWORD(a2) & 0x7FFFFF;
  v5 = v3 | LODWORD(a2) & 0x7FFFFF;
  if (v5)
  {
    if (v3 != 255 && a2 > -1.0)
    {
      v9 = sub_25BCB69DC();
      if (v9 <= 31)
      {
        v10 = v9;
        v11 = sub_25BCB699C();
        v12 = v11 + __clz(__rbit32(v4));
        v13 = v10 - v12;
        if (__OFSUB__(v10, v12))
        {
          __break(1u);
        }

        else
        {
          if (v13 < -32 || v13 > 32)
          {
LABEL_12:
            v14 = 0;
            v15 = 0;
            if ((v10 & 0x8000000000000000) == 0)
            {
              goto LABEL_22;
            }

LABEL_23:
            LOBYTE(v5) = 0;
            v7 = v14 | v15;
            result = v10 >= v11;
            goto LABEL_24;
          }

          if ((v13 & 0x8000000000000000) == 0)
          {
            if (v13 == 32)
            {
              goto LABEL_12;
            }

            v14 = v4 << v13;
            if (v10 < 0)
            {
              goto LABEL_17;
            }

            goto LABEL_22;
          }
        }

        if (v13 == -32)
        {
          goto LABEL_12;
        }

        v14 = v4 >> (v12 - v10);
        if (v10 < 0)
        {
LABEL_17:
          v15 = 0;
          goto LABEL_23;
        }

LABEL_22:
        v15 = 1 << v10;
        goto LABEL_23;
      }
    }

    v7 = 0;
    result = 0;
    LOBYTE(v5) = 1;
  }

  else
  {
    v7 = 0;
    result = 1;
  }

LABEL_24:
  *a1 = v7;
  *(a1 + 4) = v5;
  return result;
}

BOOL sub_25BBEF278(uint64_t a1, float a2)
{
  v3 = (LODWORD(a2) >> 10) & 0x1F;
  v4 = LOWORD(a2) & 0x3FF;
  v5 = v3 | v4;
  if (!(v3 | v4))
  {
    v7 = 0;
    result = 1;
    goto LABEL_25;
  }

  if (v3 != 31 && *&a2 > COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(-1.0)))
  {
    v9 = sub_25BCB7BBC();
    if (v9 <= 31)
    {
      v10 = v9;
      v11 = sub_25BCB7B8C();
      v12 = v11 + __clz(__rbit32(v4 | 0x10000));
      v13 = v10 - v12;
      if (__OFSUB__(v10, v12))
      {
        __break(1u);
      }

      else
      {
        if (v12 <= 31)
        {
          if (v13 < -32 || v13 > 32)
          {
LABEL_13:
            v14 = 0;
            v15 = 0;
            if ((v10 & 0x8000000000000000) == 0)
            {
              goto LABEL_23;
            }

            goto LABEL_24;
          }

          if (v13 < 0)
          {
            if (v13 == -32)
            {
              goto LABEL_13;
            }

            v14 = v4 >> (v12 - v10);
          }

          else
          {
            if (v13 == 32)
            {
              goto LABEL_13;
            }

            v14 = v4 << v13;
          }

LABEL_21:
          if ((v10 & 0x8000000000000000) == 0)
          {
LABEL_23:
            v15 = 1 << v10;
            goto LABEL_24;
          }

          v15 = 0;
LABEL_24:
          v5 = 0;
          v7 = v14 | v15;
          result = v10 >= v11;
          goto LABEL_25;
        }

        if ((v13 - 17) <= 0xFFFFFFFFFFFFFFDELL)
        {
          goto LABEL_16;
        }

        if ((v13 & 0x8000000000000000) == 0)
        {
          if (v13 < 0x10)
          {
            v14 = v4 << v13;
            goto LABEL_20;
          }

LABEL_16:
          LOWORD(v14) = 0;
LABEL_20:
          v14 = v14;
          goto LABEL_21;
        }
      }

      if (v13 > 0xFFFFFFFFFFFFFFF0)
      {
        v14 = v4 >> (v12 - v10);
        goto LABEL_20;
      }

      goto LABEL_16;
    }
  }

  v7 = 0;
  result = 0;
  v5 = 1;
LABEL_25:
  *a1 = v7;
  *(a1 + 4) = v5;
  return result;
}

BOOL sub_25BBEF3DC(uint64_t a1, double a2)
{
  v3 = LODWORD(a2);
  v4 = (*&a2 >> 52) & 0x7FFLL;
  v5 = *&a2 & 0xFFFFFFFFFFFFFLL;
  v6 = v4 | *&a2 & 0xFFFFFFFFFFFFFLL;
  if (!v6)
  {
    v8 = 0;
    result = 1;
    goto LABEL_28;
  }

  if (v4 != 2047 && a2 > -1.0)
  {
    v10 = sub_25BCB695C();
    if (v10 <= 15)
    {
      v11 = v10;
      v12 = sub_25BCB692C();
      v13 = v12 + __clz(__rbit64(v5));
      v14 = v11 - v13;
      if (__OFSUB__(v11, v13))
      {
        __break(1u);
      }

      else
      {
        if (v13 <= 15)
        {
          if (v14 < -16 || v14 > 16)
          {
LABEL_13:
            LOWORD(v14) = 0;
            LOWORD(v15) = 0;
            if ((v11 & 0x8000000000000000) == 0)
            {
              goto LABEL_26;
            }

            goto LABEL_27;
          }

          if (v14 < 0)
          {
            if (v14 == -16)
            {
              goto LABEL_13;
            }

            LODWORD(v14) = v3 >> (v13 - v11);
          }

          else
          {
            if (v14 == 16)
            {
              goto LABEL_13;
            }

            LODWORD(v14) = v3 << v14;
          }

LABEL_24:
          if ((v11 & 0x8000000000000000) == 0)
          {
LABEL_26:
            v15 = 1 << v11;
            goto LABEL_27;
          }

          LOWORD(v15) = 0;
LABEL_27:
          LOBYTE(v6) = 0;
          v8 = v14 | v15;
          result = v11 >= v12;
          goto LABEL_28;
        }

        if ((v14 - 65) <= 0xFFFFFFFFFFFFFF7ELL)
        {
          LOWORD(v14) = 0;
          goto LABEL_24;
        }

        if ((v14 & 0x8000000000000000) == 0)
        {
          if (v14 >= 0x40)
          {
            LOWORD(v14) = 0;
          }

          else
          {
            v14 = v5 << v14;
          }

          goto LABEL_24;
        }
      }

      if (v14 <= 0xFFFFFFFFFFFFFFC0)
      {
        LOWORD(v14) = 0;
      }

      else
      {
        v14 = v5 >> (v13 - v11);
      }

      goto LABEL_24;
    }
  }

  v8 = 0;
  result = 0;
  LOBYTE(v6) = 1;
LABEL_28:
  *a1 = v8;
  *(a1 + 2) = v6;
  return result;
}

BOOL sub_25BBEF53C(uint64_t a1, float a2)
{
  v4 = (LODWORD(a2) >> 23);
  v5 = LODWORD(a2) & 0x7FFFFF;
  v6 = v4 | LODWORD(a2) & 0x7FFFFF;
  if (!v6)
  {
    v8 = 0;
    result = 1;
    goto LABEL_27;
  }

  if (v4 != 255 && a2 > -1.0)
  {
    v10 = sub_25BCB69DC();
    if (v10 <= 15)
    {
      v11 = v10;
      v12 = sub_25BCB699C();
      v13 = v12 + __clz(__rbit32(v5));
      v14 = v11 - v13;
      if (__OFSUB__(v11, v13))
      {
        __break(1u);
      }

      else
      {
        if (v13 <= 15)
        {
          if (v14 < -16 || v14 > 16)
          {
LABEL_13:
            LOWORD(v15) = 0;
            LOWORD(v16) = 0;
            if ((v11 & 0x8000000000000000) == 0)
            {
              goto LABEL_25;
            }

            goto LABEL_26;
          }

          if (v14 < 0)
          {
            if (v14 == -16)
            {
              goto LABEL_13;
            }

            v15 = LOWORD(a2) >> (v13 - v11);
          }

          else
          {
            if (v14 == 16)
            {
              goto LABEL_13;
            }

            v15 = LODWORD(a2) << v14;
          }

LABEL_23:
          if ((v11 & 0x8000000000000000) == 0)
          {
LABEL_25:
            v16 = 1 << v11;
            goto LABEL_26;
          }

          LOWORD(v16) = 0;
LABEL_26:
          LOBYTE(v6) = 0;
          v8 = v15 | v16;
          result = v11 >= v12;
          goto LABEL_27;
        }

        if ((v14 - 33) <= 0xFFFFFFFFFFFFFFBELL)
        {
LABEL_16:
          LOWORD(v15) = 0;
          goto LABEL_23;
        }

        if ((v14 & 0x8000000000000000) == 0)
        {
          if (v14 < 0x20)
          {
            v15 = v5 << v14;
            goto LABEL_23;
          }

          goto LABEL_16;
        }
      }

      if (v14 <= 0xFFFFFFFFFFFFFFE0)
      {
        LOWORD(v15) = 0;
      }

      else
      {
        v15 = v5 >> (v13 - v11);
      }

      goto LABEL_23;
    }
  }

  v8 = 0;
  result = 0;
  LOBYTE(v6) = 1;
LABEL_27:
  *a1 = v8;
  *(a1 + 2) = v6;
  return result;
}

BOOL sub_25BBEF69C(uint64_t a1, float a2)
{
  v3 = (LODWORD(a2) >> 10) & 0x1F;
  v4 = LOWORD(a2) & 0x3FF;
  v5 = v3 | v4;
  if (v3 | v4)
  {
    if (v3 != 31 && *&a2 > COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(-1.0)))
    {
      v9 = sub_25BCB7BBC();
      if (v9 <= 15)
      {
        v10 = v9;
        v11 = sub_25BCB7B8C();
        v12 = v11 + __clz(__rbit32(v4 | 0x10000));
        v13 = v10 - v12;
        if (__OFSUB__(v10, v12))
        {
          __break(1u);
        }

        else
        {
          if (v13 < -16 || v13 > 16)
          {
LABEL_12:
            LOWORD(v14) = 0;
            LOWORD(v15) = 0;
            if ((v10 & 0x8000000000000000) == 0)
            {
              goto LABEL_22;
            }

LABEL_23:
            v5 = 0;
            v7 = v14 | v15;
            result = v10 >= v11;
            goto LABEL_24;
          }

          if ((v13 & 0x8000000000000000) == 0)
          {
            if (v13 == 16)
            {
              goto LABEL_12;
            }

            v14 = v4 << v13;
            if (v10 < 0)
            {
              goto LABEL_17;
            }

            goto LABEL_22;
          }
        }

        if (v13 == -16)
        {
          goto LABEL_12;
        }

        v14 = v4 >> (v12 - v10);
        if (v10 < 0)
        {
LABEL_17:
          LOWORD(v15) = 0;
          goto LABEL_23;
        }

LABEL_22:
        v15 = 1 << v10;
        goto LABEL_23;
      }
    }

    v7 = 0;
    result = 0;
    v5 = 1;
  }

  else
  {
    v7 = 0;
    result = 1;
  }

LABEL_24:
  *a1 = v7;
  *(a1 + 2) = v5;
  return result;
}

BOOL sub_25BBEF7BC(_BYTE *a1, double a2)
{
  v3 = LODWORD(a2);
  v4 = (*&a2 >> 52) & 0x7FFLL;
  v5 = *&a2 & 0xFFFFFFFFFFFFFLL;
  v6 = v4 | *&a2 & 0xFFFFFFFFFFFFFLL;
  if (!v6)
  {
    v8 = 0;
    result = 1;
    goto LABEL_28;
  }

  if (v4 != 2047 && a2 > -1.0)
  {
    v10 = sub_25BCB695C();
    if (v10 <= 7)
    {
      v11 = v10;
      v12 = sub_25BCB692C();
      v13 = v12 + __clz(__rbit64(v5));
      v14 = v11 - v13;
      if (__OFSUB__(v11, v13))
      {
        __break(1u);
      }

      else
      {
        if (v13 <= 7)
        {
          if (v14 < -8 || v14 > 8)
          {
LABEL_13:
            LOBYTE(v14) = 0;
            LOBYTE(v15) = 0;
            if ((v11 & 0x8000000000000000) == 0)
            {
              goto LABEL_26;
            }

            goto LABEL_27;
          }

          if (v14 < 0)
          {
            if (v14 == -8)
            {
              goto LABEL_13;
            }

            LODWORD(v14) = v3 >> (v13 - v11);
          }

          else
          {
            if (v14 == 8)
            {
              goto LABEL_13;
            }

            LODWORD(v14) = v3 << v14;
          }

LABEL_24:
          if ((v11 & 0x8000000000000000) == 0)
          {
LABEL_26:
            v15 = 1 << v11;
            goto LABEL_27;
          }

          LOBYTE(v15) = 0;
LABEL_27:
          LOBYTE(v6) = 0;
          v8 = v14 | v15;
          result = v11 >= v12;
          goto LABEL_28;
        }

        if ((v14 - 65) <= 0xFFFFFFFFFFFFFF7ELL)
        {
          LOBYTE(v14) = 0;
          goto LABEL_24;
        }

        if ((v14 & 0x8000000000000000) == 0)
        {
          if (v14 >= 0x40)
          {
            LOBYTE(v14) = 0;
          }

          else
          {
            v14 = v5 << v14;
          }

          goto LABEL_24;
        }
      }

      if (v14 <= 0xFFFFFFFFFFFFFFC0)
      {
        LOBYTE(v14) = 0;
      }

      else
      {
        v14 = v5 >> (v13 - v11);
      }

      goto LABEL_24;
    }
  }

  v8 = 0;
  result = 0;
  LOBYTE(v6) = 1;
LABEL_28:
  *a1 = v8;
  a1[1] = v6;
  return result;
}

BOOL sub_25BBEF91C(_BYTE *a1, float a2)
{
  v4 = (LODWORD(a2) >> 23);
  v5 = LODWORD(a2) & 0x7FFFFF;
  v6 = v4 | LODWORD(a2) & 0x7FFFFF;
  if (!v6)
  {
    v8 = 0;
    result = 1;
    goto LABEL_27;
  }

  if (v4 != 255 && a2 > -1.0)
  {
    v10 = sub_25BCB69DC();
    if (v10 <= 7)
    {
      v11 = v10;
      v12 = sub_25BCB699C();
      v13 = v12 + __clz(__rbit32(v5));
      v14 = v11 - v13;
      if (__OFSUB__(v11, v13))
      {
        __break(1u);
      }

      else
      {
        if (v13 <= 7)
        {
          if (v14 < -8 || v14 > 8)
          {
LABEL_13:
            LOBYTE(v15) = 0;
            LOBYTE(v16) = 0;
            if ((v11 & 0x8000000000000000) == 0)
            {
              goto LABEL_25;
            }

            goto LABEL_26;
          }

          if (v14 < 0)
          {
            if (v14 == -8)
            {
              goto LABEL_13;
            }

            v15 = LOBYTE(a2) >> (v13 - v11);
          }

          else
          {
            if (v14 == 8)
            {
              goto LABEL_13;
            }

            v15 = LODWORD(a2) << v14;
          }

LABEL_23:
          if ((v11 & 0x8000000000000000) == 0)
          {
LABEL_25:
            v16 = 1 << v11;
            goto LABEL_26;
          }

          LOBYTE(v16) = 0;
LABEL_26:
          LOBYTE(v6) = 0;
          v8 = v15 | v16;
          result = v11 >= v12;
          goto LABEL_27;
        }

        if ((v14 - 33) <= 0xFFFFFFFFFFFFFFBELL)
        {
LABEL_16:
          LOBYTE(v15) = 0;
          goto LABEL_23;
        }

        if ((v14 & 0x8000000000000000) == 0)
        {
          if (v14 < 0x20)
          {
            v15 = v5 << v14;
            goto LABEL_23;
          }

          goto LABEL_16;
        }
      }

      if (v14 <= 0xFFFFFFFFFFFFFFE0)
      {
        LOBYTE(v15) = 0;
      }

      else
      {
        v15 = v5 >> (v13 - v11);
      }

      goto LABEL_23;
    }
  }

  v8 = 0;
  result = 0;
  LOBYTE(v6) = 1;
LABEL_27:
  *a1 = v8;
  a1[1] = v6;
  return result;
}

BOOL sub_25BBEFA7C(_BYTE *a1, float a2)
{
  v4 = (LODWORD(a2) >> 10) & 0x1F;
  v5 = LOWORD(a2) & 0x3FF;
  v6 = v4 | v5;
  if (!(v4 | v5))
  {
    v8 = 0;
    result = 1;
    goto LABEL_27;
  }

  if (v4 != 31 && *&a2 > COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(-1.0)))
  {
    v10 = sub_25BCB7BBC();
    if (v10 <= 7)
    {
      v11 = v10;
      v12 = sub_25BCB7B8C();
      v13 = v12 + __clz(__rbit32(v5 | 0x10000));
      v14 = v11 - v13;
      if (__OFSUB__(v11, v13))
      {
        __break(1u);
      }

      else
      {
        if (v13 <= 7)
        {
          if (v14 < -8 || v14 > 8)
          {
LABEL_13:
            LOBYTE(v15) = 0;
            LOBYTE(v16) = 0;
            if ((v11 & 0x8000000000000000) == 0)
            {
              goto LABEL_25;
            }

            goto LABEL_26;
          }

          if ((v14 & 0x8000000000000000) == 0)
          {
            if (v14 == 8)
            {
              goto LABEL_13;
            }

            goto LABEL_22;
          }

          if (v14 == -8)
          {
            goto LABEL_13;
          }

          v15 = LOBYTE(a2) >> (v13 - v11);
LABEL_23:
          if ((v11 & 0x8000000000000000) == 0)
          {
LABEL_25:
            v16 = 1 << v11;
            goto LABEL_26;
          }

          LOBYTE(v16) = 0;
LABEL_26:
          v6 = 0;
          v8 = v15 | v16;
          result = v11 >= v12;
          goto LABEL_27;
        }

        if ((v14 - 17) < 0xFFFFFFFFFFFFFFDFLL)
        {
LABEL_16:
          LOBYTE(v15) = 0;
          goto LABEL_23;
        }

        if ((v14 & 0x8000000000000000) == 0)
        {
          if (v14 < 0x10)
          {
LABEL_22:
            v15 = LODWORD(a2) << v14;
            goto LABEL_23;
          }

          goto LABEL_16;
        }
      }

      if (v14 > 0xFFFFFFFFFFFFFFF0)
      {
        v15 = v5 >> (v13 - v11);
        goto LABEL_23;
      }

      goto LABEL_16;
    }
  }

  v8 = 0;
  result = 0;
  v6 = 1;
LABEL_27:
  *a1 = v8;
  a1[1] = v6;
  return result;
}

BOOL sub_25BBEFBDC()
{
  OUTLINED_FUNCTION_156_0();
  if (v4)
  {
    if (v3 != 2047 && v2 > -1.0)
    {
      v9 = sub_25BCB695C();
      if (v9 <= 63)
      {
        v10 = v9;
        v11 = sub_25BCB692C();
        v12 = v11 + __clz(__rbit64(v1));
        v13 = v10 - v12;
        if (__OFSUB__(v10, v12))
        {
          __break(1u);
        }

        else
        {
          if (v13 < -64 || v13 > 64)
          {
LABEL_12:
            v14 = 0;
            v15 = 0;
            if ((v10 & 0x8000000000000000) == 0)
            {
              goto LABEL_22;
            }

LABEL_23:
            v8 = 0;
            result = v10 >= v11;
            v6 = v14 | v15;
            goto LABEL_24;
          }

          if ((v13 & 0x8000000000000000) == 0)
          {
            if (v13 == 64)
            {
              goto LABEL_12;
            }

            v14 = v1 << v13;
            if (v10 < 0)
            {
              goto LABEL_17;
            }

            goto LABEL_22;
          }
        }

        if (v13 == -64)
        {
          goto LABEL_12;
        }

        OUTLINED_FUNCTION_140_0();
        if (v10 < 0)
        {
LABEL_17:
          v15 = 0;
          goto LABEL_23;
        }

LABEL_22:
        OUTLINED_FUNCTION_220();
        goto LABEL_23;
      }
    }

    v6 = 0;
    result = 0;
    v8 = 1;
  }

  else
  {
    v6 = 0;
    v8 = 0;
    result = 1;
  }

LABEL_24:
  *v0 = v6;
  *(v0 + 8) = v8;
  return result;
}

void sub_25BBEFCE0()
{
  OUTLINED_FUNCTION_102_3();
  v4 = v3 & 0x7FFFFF;
  if (!(v2 | v4))
  {
    OUTLINED_FUNCTION_184_0();
    goto LABEL_25;
  }

  v5 = v2 == 255 || v1 <= -1.0;
  if (!v5 && sub_25BCB69DC() <= 63)
  {
    OUTLINED_FUNCTION_157_0();
    v7 = sub_25BCB699C() + __clz(__rbit32(v4));
    v8 = v0 - v7;
    if (__OFSUB__(v0, v7))
    {
      __break(1u);
    }

    else
    {
      if (v7 <= 63)
      {
        if (v8 < -64 || v8 > 64)
        {
LABEL_13:
          v8 = 0;
          v9 = 0;
          if ((v0 & 0x8000000000000000) == 0)
          {
            goto LABEL_23;
          }

          goto LABEL_24;
        }

        if (v8 < 0)
        {
          if (v8 == -64)
          {
            goto LABEL_13;
          }

          OUTLINED_FUNCTION_140_0();
        }

        else
        {
          if (v8 == 64)
          {
            goto LABEL_13;
          }

          v8 = v4 << v8;
        }

LABEL_21:
        if ((v0 & 0x8000000000000000) == 0)
        {
LABEL_23:
          v9 = 1 << v0;
          goto LABEL_24;
        }

        v9 = 0;
LABEL_24:
        v6 = v8 | v9;
        goto LABEL_25;
      }

      if ((v8 - 33) <= 0xFFFFFFFFFFFFFFBELL)
      {
        goto LABEL_16;
      }

      if ((v8 & 0x8000000000000000) == 0)
      {
        if (v8 < 0x20)
        {
          LODWORD(v8) = v4 << v8;
          goto LABEL_20;
        }

LABEL_16:
        LODWORD(v8) = 0;
LABEL_20:
        v8 = v8;
        goto LABEL_21;
      }
    }

    if (v8 > 0xFFFFFFFFFFFFFFE0)
    {
      LODWORD(v8) = v4 >> (v7 - v0);
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  OUTLINED_FUNCTION_76_3();
LABEL_25:
  OUTLINED_FUNCTION_187_0(v6);
}

void sub_25BBEFE1C()
{
  OUTLINED_FUNCTION_169_0();
  v4 = v3 & 0x3FF;
  if (!(v1 | v4))
  {
    OUTLINED_FUNCTION_184_0();
    goto LABEL_25;
  }

  v5 = v1 == 31 || v2 <= COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(-1.0));
  if (!v5 && sub_25BCB7BBC() <= 63)
  {
    OUTLINED_FUNCTION_157_0();
    v7 = sub_25BCB7B8C() + __clz(__rbit32(v4 | 0x10000));
    v8 = v0 - v7;
    if (__OFSUB__(v0, v7))
    {
      __break(1u);
    }

    else
    {
      if (v7 <= 63)
      {
        if (v8 < -64 || v8 > 64)
        {
LABEL_13:
          v8 = 0;
          v9 = 0;
          if ((v0 & 0x8000000000000000) == 0)
          {
            goto LABEL_23;
          }

          goto LABEL_24;
        }

        if (v8 < 0)
        {
          if (v8 == -64)
          {
            goto LABEL_13;
          }

          OUTLINED_FUNCTION_140_0();
        }

        else
        {
          if (v8 == 64)
          {
            goto LABEL_13;
          }

          v8 = v4 << v8;
        }

LABEL_21:
        if ((v0 & 0x8000000000000000) == 0)
        {
LABEL_23:
          v9 = 1 << v0;
          goto LABEL_24;
        }

        v9 = 0;
LABEL_24:
        v6 = v8 | v9;
        goto LABEL_25;
      }

      if ((v8 - 17) <= 0xFFFFFFFFFFFFFFDELL)
      {
        goto LABEL_16;
      }

      if ((v8 & 0x8000000000000000) == 0)
      {
        if (v8 < 0x10)
        {
          LODWORD(v8) = v4 << v8;
          goto LABEL_20;
        }

LABEL_16:
        LOWORD(v8) = 0;
LABEL_20:
        v8 = v8;
        goto LABEL_21;
      }
    }

    if (v8 > 0xFFFFFFFFFFFFFFF0)
    {
      LODWORD(v8) = v4 >> (v7 - v0);
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  OUTLINED_FUNCTION_76_3();
LABEL_25:
  OUTLINED_FUNCTION_187_0(v6);
}

void sub_25BBEFF60()
{
  OUTLINED_FUNCTION_156_0();
  if (!v3)
  {
    OUTLINED_FUNCTION_184_0();
    goto LABEL_35;
  }

  if (v2 == 2047)
  {
    goto LABEL_38;
  }

  v4 = sub_25BCB695C();
  if (v4 > 63)
  {
    goto LABEL_38;
  }

  v5 = v4;
  v6 = sub_25BCB692C();
  OUTLINED_FUNCTION_66_4(v6);
  v8 = v7 + __clz(__rbit64(v0));
  v9 = v5 - v8;
  if (__OFSUB__(v5, v8))
  {
    __break(1u);
    goto LABEL_37;
  }

  if (v8 <= 63)
  {
    if (v9 < -64 || v9 > 64)
    {
LABEL_8:
      if (v5 != 63)
      {
        if (v5 < -64)
        {
          do
          {
            v10 = 0;
            v11 = 0;
LABEL_30:
            v11 |= v10;
LABEL_31:
            if (v1 >= 0.0)
            {
              if ((v11 & 0x8000000000000000) == 0)
              {
                goto LABEL_35;
              }
            }

            else
            {
              if ((v11 & 0x8000000000000000) == 0)
              {
                goto LABEL_33;
              }

              __break(1u);
            }

            __break(1u);
LABEL_42:
            ;
          }

          while (v5 != -64);
          goto LABEL_15;
        }

        goto LABEL_17;
      }

LABEL_37:
      if (v1 >= 0.0)
      {
        goto LABEL_38;
      }

      goto LABEL_46;
    }

    if ((v9 & 0x8000000000000000) == 0)
    {
      if (v9 == 64)
      {
        goto LABEL_8;
      }

      goto LABEL_24;
    }

    if (v9 == -64)
    {
      goto LABEL_8;
    }

LABEL_50:
    OUTLINED_FUNCTION_140_0();
LABEL_25:
    if (v5 != 63)
    {
      if (v5 >= -64)
      {
        if ((v5 & 0x8000000000000000) == 0)
        {
LABEL_29:
          OUTLINED_FUNCTION_220();
          goto LABEL_30;
        }

        if (v5 == -64)
        {
          goto LABEL_31;
        }
      }

      v10 = 0;
      goto LABEL_30;
    }

    if (v1 >= 0.0 || v11)
    {
LABEL_38:
      OUTLINED_FUNCTION_76_3();
      goto LABEL_35;
    }

LABEL_46:
    v11 = 0x8000000000000000;
    goto LABEL_35;
  }

  if (v9 >= -64 && v9 <= 64)
  {
    if (v9 < 0)
    {
      if (v9 != -64)
      {
        goto LABEL_50;
      }
    }

    else if (v9 != 64)
    {
LABEL_24:
      v11 = v0 << v9;
      goto LABEL_25;
    }
  }

  if (v5 == 63)
  {
    goto LABEL_37;
  }

  if (v5 >= -64)
  {
LABEL_17:
    if (v5 < 0)
    {
      goto LABEL_42;
    }

    goto LABEL_29;
  }

LABEL_15:
  v11 = 0;
  if (v1 < 0.0)
  {
LABEL_33:
    v11 = -v11;
  }

LABEL_35:
  OUTLINED_FUNCTION_187_0(v11);
}

void sub_25BBF0118()
{
  OUTLINED_FUNCTION_102_3();
  v4 = v3 & 0x7FFFFF;
  if (!(v2 | v4))
  {
    OUTLINED_FUNCTION_184_0();
    goto LABEL_30;
  }

  if (v2 == 255 || sub_25BCB69DC() > 63)
  {
LABEL_42:
    OUTLINED_FUNCTION_76_3();
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_157_0();
  v5 = sub_25BCB699C();
  OUTLINED_FUNCTION_66_4(v5);
  OUTLINED_FUNCTION_98_4();
  if (v8)
  {
    __break(1u);
    goto LABEL_35;
  }

  if (v7 > 63)
  {
    if ((v6 - 33) <= 0xFFFFFFFFFFFFFFBELL)
    {
      goto LABEL_13;
    }

    if (v6 < 0)
    {
      if (v6 <= 0xFFFFFFFFFFFFFFE0)
      {
        LODWORD(v6) = 0;
      }

      else
      {
        LODWORD(v6) = v4 >> -v6;
      }

      goto LABEL_17;
    }

    if (v6 >= 0x20)
    {
LABEL_13:
      LODWORD(v6) = 0;
    }

    else
    {
      LODWORD(v6) = v4 << v6;
    }

LABEL_17:
    v6 = v6;
    goto LABEL_18;
  }

  if (v6 < -64 || v6 > 64)
  {
LABEL_8:
    if (v0 == 63)
    {
      goto LABEL_41;
    }

    if (v0 < -64)
    {
      goto LABEL_10;
    }

    if (v0 < 0)
    {
      if (v0 == -64)
      {
LABEL_10:
        v6 = 0;
        if (v1 >= 0.0)
        {
          goto LABEL_30;
        }

        goto LABEL_28;
      }

      v9 = 0;
      v6 = 0;
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (v6 < 0)
  {
    if (v6 == -64)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_140_0();
  }

  else
  {
    if (v6 == 64)
    {
      goto LABEL_8;
    }

    v6 = v4 << v6;
  }

LABEL_18:
  if (v0 == 63)
  {
LABEL_35:
    if (v1 >= 0.0 || v6)
    {
      goto LABEL_42;
    }

    goto LABEL_37;
  }

  if (v0 <= -65)
  {
    goto LABEL_26;
  }

  if ((v0 & 0x8000000000000000) == 0)
  {
LABEL_24:
    OUTLINED_FUNCTION_220();
    goto LABEL_25;
  }

  if (v0 == -64)
  {
    goto LABEL_26;
  }

  v9 = 0;
LABEL_25:
  v6 |= v9;
LABEL_26:
  if (v1 >= 0.0)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_40;
  }

  if (v6 < 0)
  {
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    if (v1 >= 0.0)
    {
      goto LABEL_42;
    }

LABEL_37:
    v6 = 0x8000000000000000;
    goto LABEL_30;
  }

LABEL_28:
  v6 = -v6;
LABEL_30:
  OUTLINED_FUNCTION_187_0(v6);
}

void sub_25BBF02C4()
{
  OUTLINED_FUNCTION_169_0();
  v3 = v2 & 0x3FF;
  if (!(v1 | v3))
  {
    OUTLINED_FUNCTION_184_0();
    goto LABEL_31;
  }

  if (v1 == 31 || sub_25BCB7BBC() > 63)
  {
LABEL_44:
    OUTLINED_FUNCTION_76_3();
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_157_0();
  v4 = sub_25BCB7B8C();
  OUTLINED_FUNCTION_66_4(v4);
  OUTLINED_FUNCTION_98_4();
  if (_VF)
  {
    __break(1u);
    goto LABEL_36;
  }

  if (v6 > 63)
  {
    if ((v5 - 17) > 0xFFFFFFFFFFFFFFDELL)
    {
      if (v5 < 0)
      {
        if (v5 > 0xFFFFFFFFFFFFFFF0)
        {
          LODWORD(v5) = v3 >> -v5;
          goto LABEL_17;
        }
      }

      else if (v5 < 0x10)
      {
        LODWORD(v5) = v3 << v5;
        goto LABEL_17;
      }
    }

    LOWORD(v5) = 0;
LABEL_17:
    v5 = v5;
    goto LABEL_18;
  }

  if (v5 < -64 || v5 > 64)
  {
LABEL_8:
    if (v0 == 63)
    {
      goto LABEL_43;
    }

    if (v0 < -64)
    {
      goto LABEL_10;
    }

    if (v0 < 0)
    {
      if (v0 == -64)
      {
LABEL_10:
        v5 = 0;
        __asm { FCMP            H8, #0 }

        if (!_NF)
        {
          goto LABEL_31;
        }

        goto LABEL_29;
      }

      v12 = 0;
      v5 = 0;
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (v5 < 0)
  {
    if (v5 == -64)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_140_0();
  }

  else
  {
    if (v5 == 64)
    {
      goto LABEL_8;
    }

    v5 = v3 << v5;
  }

LABEL_18:
  if (v0 == 63)
  {
LABEL_36:
    __asm { FCMP            H8, #0 }

    if (!_NF || v5)
    {
      goto LABEL_44;
    }

    goto LABEL_39;
  }

  if (v0 <= -65)
  {
    goto LABEL_26;
  }

  if ((v0 & 0x8000000000000000) == 0)
  {
LABEL_24:
    OUTLINED_FUNCTION_220();
    goto LABEL_25;
  }

  if (v0 == -64)
  {
    goto LABEL_26;
  }

  v12 = 0;
LABEL_25:
  v5 |= v12;
LABEL_26:
  __asm { FCMP            H8, #0 }

  if (!_NF)
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_42;
  }

  if (v5 < 0)
  {
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __asm { FCMP            H8, #0 }

    if (!_NF)
    {
      goto LABEL_44;
    }

LABEL_39:
    v5 = 0x8000000000000000;
    goto LABEL_31;
  }

LABEL_29:
  v5 = -v5;
LABEL_31:
  OUTLINED_FUNCTION_187_0(v5);
}

uint64_t sub_25BBF0474(uint64_t a1, double a2)
{
  v4 = LODWORD(a2);
  v5 = (*&a2 >> 52) & 0x7FFLL;
  v6 = *&a2 & 0xFFFFFFFFFFFFFLL;
  v7 = v5 | *&a2 & 0xFFFFFFFFFFFFFLL;
  if (!v7)
  {
    v15 = 0;
    result = 1;
    goto LABEL_29;
  }

  if (v5 == 2047)
  {
    goto LABEL_40;
  }

  v8 = sub_25BCB695C();
  if (v8 > 31)
  {
    goto LABEL_40;
  }

  v9 = v8;
  v10 = sub_25BCB692C();
  result = OUTLINED_FUNCTION_66_4(v10);
  v7 = v12 + __clz(__rbit64(v6));
  v13 = v9 - v7;
  if (__OFSUB__(v9, v7))
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v7 > 31)
  {
    if ((v13 - 65) > 0xFFFFFFFFFFFFFF7ELL)
    {
      if (v13 < 0)
      {
        v7 = v6 >> (v7 - v9);
        if (v13 <= 0xFFFFFFFFFFFFFFC0)
        {
          LODWORD(v7) = 0;
        }
      }

      else
      {
        v7 = v6 << v13;
        if (v13 >= 0x40)
        {
          LODWORD(v7) = 0;
        }
      }
    }

    else
    {
      LODWORD(v7) = 0;
    }

LABEL_20:
    if (v9 != 31)
    {
      if (v9 < 0)
      {
        v14 = 0;
        goto LABEL_24;
      }

      goto LABEL_23;
    }

LABEL_31:
    if (a2 < 0.0 && !v7)
    {
      goto LABEL_39;
    }

    goto LABEL_40;
  }

  if (v13 >= -32 && v13 <= 32)
  {
    if (v13 < 0)
    {
      if (v13 == -32)
      {
        goto LABEL_8;
      }

      LODWORD(v7) = v4 >> (v7 - v9);
    }

    else
    {
      if (v13 == 32)
      {
        goto LABEL_8;
      }

      LODWORD(v7) = v4 << v13;
    }

    goto LABEL_20;
  }

LABEL_8:
  if (v9 == 31)
  {
    goto LABEL_37;
  }

  v14 = 0;
  LODWORD(v7) = 0;
  if ((v9 & 0x8000000000000000) == 0)
  {
LABEL_23:
    v14 = 1 << v9;
  }

LABEL_24:
  v15 = v7 | v14;
  if (a2 >= 0.0)
  {
    if ((v7 & 0x80000000) == 0)
    {
      LOBYTE(v7) = 0;
      goto LABEL_29;
    }

    goto LABEL_36;
  }

  if ((v7 & 0x80000000) != 0)
  {
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    if (a2 < 0.0)
    {
      LOBYTE(v7) = 0;
LABEL_39:
      v15 = 0x80000000;
      goto LABEL_29;
    }

LABEL_40:
    result = OUTLINED_FUNCTION_167_0();
    goto LABEL_29;
  }

  LOBYTE(v7) = 0;
  v15 = -v15;
LABEL_29:
  *a1 = v15;
  *(a1 + 4) = v7;
  return result;
}

void sub_25BBF0614()
{
  OUTLINED_FUNCTION_102_3();
  v5 = v4 & 0x7FFFFF;
  v6 = v3 | v4 & 0x7FFFFF;
  if (v6)
  {
    if (v3 == 255 || sub_25BCB69DC() > 31)
    {
      goto LABEL_34;
    }

    OUTLINED_FUNCTION_157_0();
    v7 = sub_25BCB699C();
    OUTLINED_FUNCTION_66_4(v7);
    OUTLINED_FUNCTION_98_4();
    if (v9)
    {
      __break(1u);
    }

    else
    {
      if (v8 >= -32 && v8 <= 32)
      {
        if (v8 < 0)
        {
          goto LABEL_29;
        }

        if (v8 != 32)
        {
          v6 = v5 << v8;
          goto LABEL_13;
        }
      }

LABEL_7:
      if (v1 != 31)
      {
        i = 0;
        v6 = 0;
        if (v1 < 0)
        {
          goto LABEL_17;
        }

LABEL_16:
        for (i = 1 << v1; ; i = 0)
        {
LABEL_17:
          v8 = v6 | i;
          if (v2 >= 0.0)
          {
            if ((v6 & 0x80000000) == 0)
            {
              LOBYTE(v6) = 0;
              goto LABEL_22;
            }
          }

          else
          {
            if ((v6 & 0x80000000) == 0)
            {
              LOBYTE(v6) = 0;
              LODWORD(v8) = -v8;
              goto LABEL_22;
            }

            __break(1u);
          }

          __break(1u);
LABEL_29:
          if (v8 == -32)
          {
            goto LABEL_7;
          }

          v6 = v5 >> -v8;
LABEL_13:
          if (v1 == 31)
          {
            break;
          }

          if ((v1 & 0x8000000000000000) == 0)
          {
            goto LABEL_16;
          }
        }

        if (v2 < 0.0 && !v6)
        {
          goto LABEL_33;
        }

        goto LABEL_34;
      }
    }

    if (v2 < 0.0)
    {
      LOBYTE(v6) = 0;
LABEL_33:
      LODWORD(v8) = 0x80000000;
      goto LABEL_22;
    }

LABEL_34:
    OUTLINED_FUNCTION_167_0();
    goto LABEL_22;
  }

  LODWORD(v8) = 0;
LABEL_22:
  *v0 = v8;
  *(v0 + 4) = v6;
}

void sub_25BBF075C()
{
  OUTLINED_FUNCTION_169_0();
  v3 = v4 & 0x3FF;
  LOBYTE(v4) = v2 | v3;
  if (!(v2 | v3))
  {
    v10 = 0;
    goto LABEL_27;
  }

  if (v2 == 31 || sub_25BCB7BBC() > 31)
  {
LABEL_43:
    OUTLINED_FUNCTION_167_0();
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_157_0();
  v5 = sub_25BCB7B8C();
  OUTLINED_FUNCTION_66_4(v5);
  OUTLINED_FUNCTION_98_4();
  if (_VF)
  {
    __break(1u);
    goto LABEL_32;
  }

  if (v4 > 31)
  {
    if ((v6 - 17) > 0xFFFFFFFFFFFFFFDELL)
    {
      if (v6 < 0)
      {
        if (v6 > 0xFFFFFFFFFFFFFFF0)
        {
          v9 = v3 >> -v6;
          goto LABEL_16;
        }
      }

      else if (v6 < 0x10)
      {
        v9 = v3 << v6;
        goto LABEL_16;
      }
    }

    LOWORD(v9) = 0;
LABEL_16:
    LODWORD(v4) = v9;
LABEL_17:
    if (v1 != 31)
    {
      if (v1 < 0)
      {
        v8 = 0;
        goto LABEL_21;
      }

      goto LABEL_20;
    }

LABEL_32:
    __asm { FCMP            H8, #0 }

    if (!_NF || v4)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  if (v6 >= -32 && v6 <= 32)
  {
    if (v6 < 0)
    {
      if (v6 == -32)
      {
        goto LABEL_8;
      }

      LODWORD(v4) = v3 >> -v6;
    }

    else
    {
      if (v6 == 32)
      {
        goto LABEL_8;
      }

      LODWORD(v4) = v3 << v6;
    }

    goto LABEL_17;
  }

LABEL_8:
  if (v1 == 31)
  {
LABEL_39:
    __asm { FCMP            H8, #0 }

    if (!_NF)
    {
      goto LABEL_43;
    }

    LOBYTE(v4) = 0;
LABEL_42:
    v10 = 0x80000000;
    goto LABEL_27;
  }

  v8 = 0;
  LODWORD(v4) = 0;
  if ((v1 & 0x8000000000000000) == 0)
  {
LABEL_20:
    v8 = 1 << v1;
  }

LABEL_21:
  v10 = v4 | v8;
  __asm { FCMP            H8, #0 }

  if (!_NF)
  {
    if ((v4 & 0x80000000) == 0)
    {
      LOBYTE(v4) = 0;
      goto LABEL_27;
    }

    goto LABEL_38;
  }

  if ((v4 & 0x80000000) != 0)
  {
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  LOBYTE(v4) = 0;
  v10 = -v10;
LABEL_27:
  *v0 = v10;
  *(v0 + 4) = v4;
}

BOOL sub_25BBF08EC(uint64_t a1, double a2)
{
  v4 = LODWORD(a2);
  v5 = (*&a2 >> 52) & 0x7FFLL;
  v6 = *&a2 & 0xFFFFFFFFFFFFFLL;
  v7 = v5 | *&a2 & 0xFFFFFFFFFFFFFLL;
  if (!v7)
  {
    LOWORD(v15) = 0;
    result = 1;
    goto LABEL_29;
  }

  if (v5 == 2047 || (v8 = sub_25BCB695C(), v8 > 15))
  {
LABEL_38:
    LOWORD(v15) = 0;
    result = 0;
    LOBYTE(v7) = 1;
    goto LABEL_29;
  }

  v9 = v8;
  v10 = sub_25BCB692C();
  result = v9 >= v10;
  v12 = v10 + __clz(__rbit64(v6));
  v13 = v9 - v12;
  if (__OFSUB__(v9, v12))
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v12 > 15)
  {
    if ((v13 - 65) > 0xFFFFFFFFFFFFFF7ELL)
    {
      if (v13 < 0)
      {
        v12 = v6 >> (v12 - v9);
        if (v13 <= 0xFFFFFFFFFFFFFFC0)
        {
          LODWORD(v12) = 0;
        }
      }

      else
      {
        v12 = v6 << v13;
        if (v13 >= 0x40)
        {
          LODWORD(v12) = 0;
        }
      }
    }

    else
    {
      LODWORD(v12) = 0;
    }

LABEL_20:
    if (v9 != 15)
    {
      if (v9 < 0)
      {
        v14 = 0;
        goto LABEL_24;
      }

      goto LABEL_23;
    }

LABEL_31:
    if (a2 >= 0.0 || v12)
    {
      goto LABEL_38;
    }

    goto LABEL_33;
  }

  if (v13 >= -16 && v13 <= 16)
  {
    if (v13 < 0)
    {
      if (v13 == -16)
      {
        goto LABEL_8;
      }

      LODWORD(v12) = v4 >> (v12 - v9);
    }

    else
    {
      if (v13 == 16)
      {
        goto LABEL_8;
      }

      LODWORD(v12) = v4 << v13;
    }

    goto LABEL_20;
  }

LABEL_8:
  if (v9 == 15)
  {
    goto LABEL_37;
  }

  v14 = 0;
  LODWORD(v12) = 0;
  if ((v9 & 0x8000000000000000) == 0)
  {
LABEL_23:
    v14 = 1 << v9;
  }

LABEL_24:
  v15 = v12 | v14;
  if (a2 >= 0.0)
  {
    if ((v12 & 0x8000) == 0)
    {
      LOBYTE(v7) = 0;
      goto LABEL_29;
    }

    goto LABEL_36;
  }

  if ((v12 & 0x8000) != 0)
  {
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    if (a2 >= 0.0)
    {
      goto LABEL_38;
    }

LABEL_33:
    LOBYTE(v7) = 0;
    LOWORD(v15) = 0x8000;
    goto LABEL_29;
  }

  LOBYTE(v7) = 0;
  v15 = -v15;
LABEL_29:
  *a1 = v15;
  *(a1 + 2) = v7;
  return result;
}

BOOL sub_25BBF0AA0(uint64_t a1, float a2)
{
  v5 = (LODWORD(a2) >> 23);
  v6 = LODWORD(a2) & 0x7FFFFF;
  v7 = v5 | LODWORD(a2) & 0x7FFFFF;
  if (!v7)
  {
    LOWORD(v15) = 0;
    result = 1;
    goto LABEL_28;
  }

  if (v5 == 255 || (v8 = sub_25BCB69DC(), v8 > 15))
  {
LABEL_37:
    LOWORD(v15) = 0;
    result = 0;
    LOBYTE(v7) = 1;
    goto LABEL_28;
  }

  v9 = v8;
  v10 = sub_25BCB699C();
  result = v9 >= v10;
  v12 = v10 + __clz(__rbit32(v6));
  v13 = v9 - v12;
  if (__OFSUB__(v9, v12))
  {
    __break(1u);
    goto LABEL_30;
  }

  if (v12 > 15)
  {
    if ((v13 - 33) <= 0xFFFFFFFFFFFFFFBELL)
    {
LABEL_12:
      LODWORD(v12) = 0;
      goto LABEL_19;
    }

    if (v13 < 0)
    {
      LODWORD(v12) = v6 >> (v12 - v9);
      if (v13 <= 0xFFFFFFFFFFFFFFE0)
      {
        LODWORD(v12) = 0;
      }
    }

    else
    {
      if (v13 >= 0x20)
      {
        goto LABEL_12;
      }

      LODWORD(v12) = v6 << v13;
    }

LABEL_19:
    if (v9 != 15)
    {
      if (v9 < 0)
      {
        v14 = 0;
        goto LABEL_23;
      }

      goto LABEL_22;
    }

LABEL_30:
    if (a2 >= 0.0 || v12)
    {
      goto LABEL_37;
    }

    goto LABEL_32;
  }

  if (v13 >= -16 && v13 <= 16)
  {
    if (v13 < 0)
    {
      if (v13 == -16)
      {
        goto LABEL_8;
      }

      LODWORD(v12) = LOWORD(a2) >> (v12 - v9);
    }

    else
    {
      if (v13 == 16)
      {
        goto LABEL_8;
      }

      LODWORD(v12) = LODWORD(a2) << v13;
    }

    goto LABEL_19;
  }

LABEL_8:
  if (v9 == 15)
  {
    goto LABEL_36;
  }

  v14 = 0;
  LODWORD(v12) = 0;
  if ((v9 & 0x8000000000000000) == 0)
  {
LABEL_22:
    v14 = 1 << v9;
  }

LABEL_23:
  v15 = v12 | v14;
  if (a2 >= 0.0)
  {
    if ((v12 & 0x8000) == 0)
    {
      LOBYTE(v7) = 0;
      goto LABEL_28;
    }

    goto LABEL_35;
  }

  if ((v12 & 0x8000) != 0)
  {
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    if (a2 >= 0.0)
    {
      goto LABEL_37;
    }

LABEL_32:
    LOBYTE(v7) = 0;
    LOWORD(v15) = 0x8000;
    goto LABEL_28;
  }

  LOBYTE(v7) = 0;
  v15 = -v15;
LABEL_28:
  *a1 = v15;
  *(a1 + 2) = v7;
  return result;
}

BOOL sub_25BBF0C54(uint64_t a1, float a2)
{
  v3 = (LODWORD(a2) >> 10) & 0x1F;
  v4 = LOWORD(a2) & 0x3FF;
  v5 = v3 | v4;
  if (!(v3 | v4))
  {
    LOWORD(v11) = 0;
    result = 1;
    goto LABEL_23;
  }

  if (v3 != 31)
  {
    v6 = sub_25BCB7BBC();
    if (v6 <= 15)
    {
      v7 = v6;
      v8 = sub_25BCB7B8C();
      result = v7 >= v8;
      v10 = v8 + __clz(__rbit32(v4 | 0x10000));
      v11 = v7 - v10;
      if (__OFSUB__(v7, v10))
      {
        __break(1u);
      }

      else
      {
        if (v11 >= -16 && v11 <= 16)
        {
          if (v11 < 0)
          {
            goto LABEL_30;
          }

          if (v11 != 16)
          {
            v13 = v4 << v11;
            goto LABEL_13;
          }
        }

LABEL_7:
        if (v7 != 15)
        {
          i = 0;
          v13 = 0;
          if (v7 < 0)
          {
            goto LABEL_17;
          }

LABEL_16:
          for (i = 1 << v7; ; i = 0)
          {
LABEL_17:
            v11 = v13 | i;
            __asm { FCMP            H8, #0 }

            if (_NF)
            {
              if ((v13 & 0x8000) == 0)
              {
                v5 = 0;
                LODWORD(v11) = -v11;
                goto LABEL_23;
              }

              __break(1u);
            }

            else if ((v13 & 0x8000) == 0)
            {
              v5 = 0;
              goto LABEL_23;
            }

            __break(1u);
LABEL_30:
            if (v11 == -16)
            {
              goto LABEL_7;
            }

            v13 = v4 >> -v11;
LABEL_13:
            if (v7 == 15)
            {
              break;
            }

            if ((v7 & 0x8000000000000000) == 0)
            {
              goto LABEL_16;
            }
          }

          __asm { FCMP            H8, #0 }

          if (_NF && !v13)
          {
            goto LABEL_35;
          }

          goto LABEL_26;
        }
      }

      __asm { FCMP            H8, #0 }

      if (_NF)
      {
LABEL_35:
        v5 = 0;
        LOWORD(v11) = 0x8000;
        goto LABEL_23;
      }
    }
  }

LABEL_26:
  LOWORD(v11) = 0;
  result = 0;
  v5 = 1;
LABEL_23:
  *a1 = v11;
  *(a1 + 2) = v5;
  return result;
}

BOOL sub_25BBF0DC4(_BYTE *a1, double a2)
{
  v4 = LODWORD(a2);
  v5 = (*&a2 >> 52) & 0x7FFLL;
  v6 = *&a2 & 0xFFFFFFFFFFFFFLL;
  v7 = v5 | *&a2 & 0xFFFFFFFFFFFFFLL;
  if (!v7)
  {
    LOBYTE(v15) = 0;
    result = 1;
    goto LABEL_29;
  }

  if (v5 == 2047 || (v8 = sub_25BCB695C(), v8 > 7))
  {
LABEL_38:
    LOBYTE(v15) = 0;
    result = 0;
    LOBYTE(v7) = 1;
    goto LABEL_29;
  }

  v9 = v8;
  v10 = sub_25BCB692C();
  result = v9 >= v10;
  v12 = v10 + __clz(__rbit64(v6));
  v13 = v9 - v12;
  if (__OFSUB__(v9, v12))
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v12 > 7)
  {
    if ((v13 - 65) > 0xFFFFFFFFFFFFFF7ELL)
    {
      if (v13 < 0)
      {
        v12 = v6 >> (v12 - v9);
        if (v13 <= 0xFFFFFFFFFFFFFFC0)
        {
          LODWORD(v12) = 0;
        }
      }

      else
      {
        v12 = v6 << v13;
        if (v13 >= 0x40)
        {
          LODWORD(v12) = 0;
        }
      }
    }

    else
    {
      LODWORD(v12) = 0;
    }

LABEL_20:
    if (v9 != 7)
    {
      if (v9 < 0)
      {
        v14 = 0;
        goto LABEL_24;
      }

      goto LABEL_23;
    }

LABEL_31:
    if (a2 >= 0.0 || v12)
    {
      goto LABEL_38;
    }

    goto LABEL_33;
  }

  if (v13 >= -8 && v13 <= 8)
  {
    if (v13 < 0)
    {
      if (v13 == -8)
      {
        goto LABEL_8;
      }

      LODWORD(v12) = v4 >> (v12 - v9);
    }

    else
    {
      if (v13 == 8)
      {
        goto LABEL_8;
      }

      LODWORD(v12) = v4 << v13;
    }

    goto LABEL_20;
  }

LABEL_8:
  if (v9 == 7)
  {
    goto LABEL_37;
  }

  v14 = 0;
  LODWORD(v12) = 0;
  if ((v9 & 0x8000000000000000) == 0)
  {
LABEL_23:
    v14 = 1 << v9;
  }

LABEL_24:
  v15 = v12 | v14;
  if (a2 >= 0.0)
  {
    if ((v12 & 0x80) == 0)
    {
      LOBYTE(v7) = 0;
      goto LABEL_29;
    }

    goto LABEL_36;
  }

  if ((v12 & 0x80) != 0)
  {
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    if (a2 >= 0.0)
    {
      goto LABEL_38;
    }

LABEL_33:
    LOBYTE(v7) = 0;
    LOBYTE(v15) = 0x80;
    goto LABEL_29;
  }

  LOBYTE(v7) = 0;
  v15 = -v15;
LABEL_29:
  *a1 = v15;
  a1[1] = v7;
  return result;
}

BOOL sub_25BBF0F78(_BYTE *a1, float a2)
{
  v5 = (LODWORD(a2) >> 23);
  v6 = LODWORD(a2) & 0x7FFFFF;
  v7 = v5 | LODWORD(a2) & 0x7FFFFF;
  if (!v7)
  {
    LOBYTE(v15) = 0;
    result = 1;
    goto LABEL_28;
  }

  if (v5 == 255 || (v8 = sub_25BCB69DC(), v8 > 7))
  {
LABEL_37:
    LOBYTE(v15) = 0;
    result = 0;
    LOBYTE(v7) = 1;
    goto LABEL_28;
  }

  v9 = v8;
  v10 = sub_25BCB699C();
  result = v9 >= v10;
  v12 = v10 + __clz(__rbit32(v6));
  v13 = v9 - v12;
  if (__OFSUB__(v9, v12))
  {
    __break(1u);
    goto LABEL_30;
  }

  if (v12 > 7)
  {
    if ((v13 - 33) <= 0xFFFFFFFFFFFFFFBELL)
    {
LABEL_12:
      LODWORD(v12) = 0;
      goto LABEL_19;
    }

    if (v13 < 0)
    {
      LODWORD(v12) = v6 >> (v12 - v9);
      if (v13 <= 0xFFFFFFFFFFFFFFE0)
      {
        LODWORD(v12) = 0;
      }
    }

    else
    {
      if (v13 >= 0x20)
      {
        goto LABEL_12;
      }

      LODWORD(v12) = v6 << v13;
    }

LABEL_19:
    if (v9 != 7)
    {
      if (v9 < 0)
      {
        v14 = 0;
        goto LABEL_23;
      }

      goto LABEL_22;
    }

LABEL_30:
    if (a2 >= 0.0 || v12)
    {
      goto LABEL_37;
    }

    goto LABEL_32;
  }

  if (v13 >= -8 && v13 <= 8)
  {
    if (v13 < 0)
    {
      if (v13 == -8)
      {
        goto LABEL_8;
      }

      LODWORD(v12) = LOBYTE(a2) >> (v12 - v9);
    }

    else
    {
      if (v13 == 8)
      {
        goto LABEL_8;
      }

      LODWORD(v12) = LODWORD(a2) << v13;
    }

    goto LABEL_19;
  }

LABEL_8:
  if (v9 == 7)
  {
    goto LABEL_36;
  }

  v14 = 0;
  LODWORD(v12) = 0;
  if ((v9 & 0x8000000000000000) == 0)
  {
LABEL_22:
    v14 = 1 << v9;
  }

LABEL_23:
  v15 = v12 | v14;
  if (a2 >= 0.0)
  {
    if ((v12 & 0x80) == 0)
    {
      LOBYTE(v7) = 0;
      goto LABEL_28;
    }

    goto LABEL_35;
  }

  if ((v12 & 0x80) != 0)
  {
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    if (a2 >= 0.0)
    {
      goto LABEL_37;
    }

LABEL_32:
    LOBYTE(v7) = 0;
    LOBYTE(v15) = 0x80;
    goto LABEL_28;
  }

  LOBYTE(v7) = 0;
  v15 = -v15;
LABEL_28:
  *a1 = v15;
  a1[1] = v7;
  return result;
}

BOOL sub_25BBF112C(_BYTE *a1, float a2)
{
  v4 = (LODWORD(a2) >> 10) & 0x1F;
  v5 = LOWORD(a2) & 0x3FF;
  v6 = v4 | v5;
  if (!(v4 | v5))
  {
    LOBYTE(v14) = 0;
    result = 1;
    goto LABEL_29;
  }

  if (v4 == 31 || (v7 = sub_25BCB7BBC(), v7 > 7))
  {
LABEL_39:
    LOBYTE(v14) = 0;
    result = 0;
    v6 = 1;
    goto LABEL_29;
  }

  v8 = v7;
  v9 = sub_25BCB7B8C();
  result = v8 >= v9;
  v11 = v9 + __clz(__rbit32(v5 | 0x10000));
  v12 = v8 - v11;
  if (__OFSUB__(v8, v11))
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v11 > 7)
  {
    if ((v12 - 17) >= 0xFFFFFFFFFFFFFFDFLL)
    {
      if (v12 < 0)
      {
        if (v12 > 0xFFFFFFFFFFFFFFF0)
        {
          LODWORD(v11) = v5 >> (v11 - v8);
LABEL_19:
          if (v8 != 7)
          {
            if (v8 < 0)
            {
              v13 = 0;
              goto LABEL_23;
            }

            goto LABEL_22;
          }

LABEL_31:
          __asm { FCMP            H8, #0 }

          if (!_NF || v11)
          {
            goto LABEL_39;
          }

          goto LABEL_34;
        }
      }

      else if (v12 < 0x10)
      {
LABEL_18:
        LODWORD(v11) = LODWORD(a2) << v12;
        goto LABEL_19;
      }
    }

    LODWORD(v11) = 0;
    goto LABEL_19;
  }

  if (v12 >= -8 && v12 <= 8)
  {
    if (v12 < 0)
    {
      if (v12 == -8)
      {
        goto LABEL_8;
      }

      LODWORD(v11) = LOBYTE(a2) >> (v11 - v8);
      goto LABEL_19;
    }

    if (v12 == 8)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_8:
  if (v8 == 7)
  {
    goto LABEL_38;
  }

  v13 = 0;
  LODWORD(v11) = 0;
  if ((v8 & 0x8000000000000000) == 0)
  {
LABEL_22:
    v13 = 1 << v8;
  }

LABEL_23:
  v14 = v11 | v13;
  __asm { FCMP            H8, #0 }

  if (!_NF)
  {
    if ((v11 & 0x80) == 0)
    {
      v6 = 0;
      goto LABEL_29;
    }

    goto LABEL_37;
  }

  if ((v11 & 0x80) != 0)
  {
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __asm { FCMP            H8, #0 }

    if (!_NF)
    {
      goto LABEL_39;
    }

LABEL_34:
    v6 = 0;
    LOBYTE(v14) = 0x80;
    goto LABEL_29;
  }

  v6 = 0;
  v14 = -v14;
LABEL_29:
  *a1 = v14;
  a1[1] = v6;
  return result;
}

uint64_t sub_25BBF12DC(uint64_t a1, uint64_t a2)
{
  if (dynamic_cast_existential_0_class_conditional(a2))
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  }

  else
  {

    return MEMORY[0x2821FDC00]();
  }
}

uint64_t sub_25BBF1390(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_25BCB749C();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_25BCB719C();
}

float sub_25BBF1544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  v55 = AssociatedTypeWitness;
  v7 = *(v54 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v53 = &v51 - v8;
  v9 = swift_getAssociatedTypeWitness();
  v51 = *(v9 - 8);
  v52 = v9;
  v10 = *(v51 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v51 - v12;
  v14 = *(a2 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v11);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v51 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v51 - v22;
  v24 = sub_25BCB606C();
  v25 = sub_25BCB608C();
  if (v24 == 11)
  {
    if (v25 == 52)
    {
      (*(v14 + 16))(v23, a1, a2);
      if (swift_dynamicCast())
      {
        (*(v14 + 8))(a1, a2);
        return v56;
      }

      else
      {
        v36 = *(a3 + 16);
        sub_25BCB61EC();
        sub_25BCB607C();
        v37 = v52;
        v38 = *(swift_getAssociatedConformanceWitness() + 8);
        sub_25BCB6F8C();
        (*(v51 + 8))(v13, v37);
        v39 = v53;
        sub_25BCB609C();
        (*(v14 + 8))(a1, a2);
        v40 = v55;
        v41 = *(swift_getAssociatedConformanceWitness() + 8);
        sub_25BCB6F8C();
        (*(v54 + 8))(v39, v40);
        sub_25BCB693C();
      }

      return v35;
    }

LABEL_16:
    sub_25BB18A50();
    sub_25BCB60AC();
LABEL_17:
    (*(v14 + 8))(a1, a2);
    return *&v56;
  }

  if (v24 == 8)
  {
    if (v25 == 23)
    {
      (*(v14 + 16))(v21, a1, a2);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v28 = *(a3 + 16);
        sub_25BCB61EC();
        sub_25BCB607C();
        v29 = v52;
        v30 = *(swift_getAssociatedConformanceWitness() + 8);
        sub_25BCB6F8C();
        (*(v51 + 8))(v13, v29);
        v31 = v53;
        sub_25BCB609C();
        (*(v14 + 8))(a1, a2);
        v32 = v55;
        v33 = *(swift_getAssociatedConformanceWitness() + 8);
        sub_25BCB6F8C();
        (*(v54 + 8))(v31, v32);
        sub_25BCB69AC();
        return result;
      }

      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (v24 != 5 || v25 != 10)
  {
    goto LABEL_16;
  }

  (*(v14 + 16))(v18, a1, a2);
  if (swift_dynamicCast())
  {
    (*(v14 + 8))(a1, a2);
    _H0 = LOWORD(v56);
  }

  else
  {
    v42 = *(a3 + 16);
    sub_25BCB61EC();
    sub_25BCB607C();
    v43 = v52;
    v44 = *(swift_getAssociatedConformanceWitness() + 8);
    sub_25BCB6F8C();
    (*(v51 + 8))(v13, v43);
    v45 = v53;
    sub_25BCB609C();
    (*(v14 + 8))(a1, a2);
    v46 = v55;
    v47 = *(swift_getAssociatedConformanceWitness() + 8);
    sub_25BCB6F8C();
    (*(v54 + 8))(v45, v46);
    sub_25BCB7B9C();
  }

  __asm { FCVT            S0, H0 }

  return result;
}