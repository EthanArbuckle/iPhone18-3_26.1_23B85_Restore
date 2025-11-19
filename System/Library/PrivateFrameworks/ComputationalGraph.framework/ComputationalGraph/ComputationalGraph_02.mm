unint64_t sub_1C6E0CE3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7770, &qword_1C6EE6920);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7778, &qword_1C6EE6928);
    v8 = sub_1C6EE5340();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1C6E0D1DC(v10, v6, &qword_1EC1F7770, &qword_1C6EE6920);
      v12 = *v6;
      v13 = v6[1];
      result = sub_1C6E02334(*v6, v13, sub_1C6DEC79C);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer(0);
      result = sub_1C6E0D34C(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

uint64_t sub_1C6E0D038(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1C6E0D09C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6E0D104(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F77F8, &unk_1C6EE69B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6E0D174(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6E0D1DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6E0D244(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C6E0D2A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C6E0D2EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C6E0D34C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1C6E0D3B4()
{
  result = qword_1EDEF8918[0];
  if (!qword_1EDEF8918[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDEF8918);
  }

  return result;
}

uint64_t sub_1C6E0D408(uint64_t result, unint64_t a2, char a3)
{
  if ((~a2 & 0x3000000000000000) != 0 || ~a3 != 0)
  {
    return sub_1C6E00C60(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1C6E0D470()
{
  sub_1C6EE5580();
  MEMORY[0x1CCA58990](0);
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E0D4DC()
{
  sub_1C6EE5580();
  MEMORY[0x1CCA58990](0);
  return sub_1C6EE55A0();
}

char *sub_1C6E0D52C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v10 = sub_1C6EE42F0();
  v57 = *(v10 - 8);
  v58 = v10;
  v11 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v56 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v53 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v53 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v25 = &v53 - v23;
  v26 = &v5[OBJC_IVAR____TtC18ComputationalGraph19TextOutputContainer_textOutput];
  *v26 = a1;
  *(v26 + 1) = a2;
  *(v26 + 2) = a3;
  v27 = *a4;
  v28 = *(*a4 + 16);
  if (v28 == 1 && (v55 = v24, v29 = (*(v22 + 80) + 32) & ~*(v22 + 80), sub_1C6E00BFC(v27 + v29, &v53 - v23), v30 = OBJC_IVAR____TtC18ComputationalGraph19TextOutputContainer_input, sub_1C6E0E580(v25, &v5[OBJC_IVAR____TtC18ComputationalGraph19TextOutputContainer_input], type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO), v31 = a4[1], *(v31 + 16) == 1))
  {
    v54 = a4;
    sub_1C6E00BFC(v31 + v29, v21);
    v32 = OBJC_IVAR____TtC18ComputationalGraph19TextOutputContainer_output;
    sub_1C6E0E580(v21, &v5[OBJC_IVAR____TtC18ComputationalGraph19TextOutputContainer_output], type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
    sub_1C6E00BFC(&v5[v30], v18);
    v33 = *(v18 + 2);
    if (*(v33 + 16) == 1)
    {
      v34 = *(v33 + 32);
      sub_1C6E0E4CC(v18, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
      v35 = v55;
      sub_1C6E00BFC(&v5[v32], v55);
      v36 = *(v35 + 16);
      if (*(v36 + 16) == 1)
      {
        v37 = *(v36 + 32);
        sub_1C6E0E4CC(v35, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
        if (v34 == v37)
        {
          *&v5[OBJC_IVAR____TtC18ComputationalGraph19TextOutputContainer_ioLen] = v34;
          v38 = v56;
          sub_1C6EE42E0();
          v39 = sub_1C6EE42D0();
          v41 = v40;
          (*(v57 + 8))(v38, v58);
          sub_1C6E0E580(v54, &v5[OBJC_IVAR____TtC18ComputationalGraph19AbstractComputation_modelIOSpec], type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec);
          v42 = OBJC_IVAR____TtC18ComputationalGraph19AbstractComputation_nodeCachePolicy;
          v43 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_NodeCachePolicy(0);
          (*(*(v43 - 8) + 56))(&v5[v42], 1, 1, v43);
          *(v5 + 2) = v39;
          *(v5 + 3) = v41;
          return v5;
        }

        sub_1C6E0E52C();
        swift_allocError();
        swift_willThrow();
        sub_1C6E0E4CC(v54, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec);
        v45 = 1;
      }

      else
      {
        sub_1C6E0E478();
        swift_allocError();
        v45 = 1;
        *v52 = 1;
        swift_willThrow();
        sub_1C6E0E4CC(v54, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec);
        sub_1C6E0E4CC(v35, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
      }
    }

    else
    {
      sub_1C6E0E478();
      swift_allocError();
      v45 = 1;
      *v51 = 1;
      swift_willThrow();
      sub_1C6E0E4CC(v54, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec);
      sub_1C6E0E4CC(v18, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
    }
  }

  else
  {
    sub_1C6E0E478();
    swift_allocError();
    *v44 = 0;
    swift_willThrow();
    sub_1C6E0E4CC(a4, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec);
    v45 = 0;
  }

  v46 = *v26;
  v47 = *(v26 + 2);

  if (v28 == 1)
  {
    sub_1C6E0E4CC(&v5[OBJC_IVAR____TtC18ComputationalGraph19TextOutputContainer_input], type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
  }

  if (v45)
  {
    sub_1C6E0E4CC(&v5[OBJC_IVAR____TtC18ComputationalGraph19TextOutputContainer_output], type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
  }

  type metadata accessor for TextOutputContainer();
  v48 = *(*v5 + 48);
  v49 = *(*v5 + 52);
  swift_deallocPartialClassInstance();
  return v5;
}

uint64_t sub_1C6E0DAE4(uint64_t a1)
{
  v2 = v1;
  v25 = a1;
  v3 = sub_1C6EE4760();
  v28 = *(v3 - 8);
  v29 = v3;
  v4 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C6EE4790();
  v26 = *(v7 - 8);
  v27 = v7;
  v8 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEF8F80 != -1)
  {
    swift_once();
  }

  v11 = qword_1EDEF8F88;
  sub_1C6EE4770();
  sub_1C6EE4780();
  sub_1C6EE4740();
  v12 = swift_slowAlloc();
  v13 = swift_slowAlloc();
  v32 = v13;
  *v12 = 136446210;
  v14 = *(v1 + OBJC_IVAR____TtC18ComputationalGraph19TextOutputContainer_input + 8);
  v30 = *(v1 + OBJC_IVAR____TtC18ComputationalGraph19TextOutputContainer_input);
  v31 = v14;

  MEMORY[0x1CCA57F60](540945696, 0xE400000000000000);
  MEMORY[0x1CCA57F60](*(v1 + OBJC_IVAR____TtC18ComputationalGraph19TextOutputContainer_output), *(v1 + OBJC_IVAR____TtC18ComputationalGraph19TextOutputContainer_output + 8));
  v15 = sub_1C6E41514(v30, v31, &v32);

  *(v12 + 4) = v15;
  v16 = sub_1C6EE4780();
  v17 = sub_1C6EE4F80();
  v18 = v6;
  v19 = sub_1C6EE4750();
  _os_signpost_emit_with_name_impl(&dword_1C6DE9000, v16, v17, v19, "TextOutputContainer.doCall", "%{public}s", v12, 0xCu);
  sub_1C6E0DDFC(v25, v2, &v30);
  v20 = sub_1C6EE4F70();
  v21 = sub_1C6EE4750();
  _os_signpost_emit_with_name_impl(&dword_1C6DE9000, v16, v20, v21, "TextOutputContainer.doCall", "%{public}s", v12, 0xCu);

  v22 = v30;
  __swift_destroy_boxed_opaque_existential_0(v13);
  MEMORY[0x1CCA59290](v13, -1, -1);
  MEMORY[0x1CCA59290](v12, -1, -1);
  (*(v28 + 8))(v18, v29);
  (*(v26 + 8))(v10, v27);
  return v22;
}

void sub_1C6E0DDFC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!*(a1 + 16))
  {
    v25 = MEMORY[0x1E69E7CC8];
LABEL_21:
    *a3 = v25;
    return;
  }

  v6 = sub_1C6DEC784(*(a2 + OBJC_IVAR____TtC18ComputationalGraph19TextOutputContainer_input), *(a2 + OBJC_IVAR____TtC18ComputationalGraph19TextOutputContainer_input + 8));
  if ((v7 & 1) == 0)
  {
LABEL_20:
    v25 = MEMORY[0x1E69E7CC8];
    goto LABEL_21;
  }

  v8 = *(a1 + 56) + 24 * v6;
  v10 = *v8;
  v9 = *(v8 + 8);
  v11 = *(v8 + 16);
  v43 = *v8;
  v44 = v9;
  v45 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9AC0, &qword_1C6EE6A50);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1C6EE6590;
  v13 = *(a2 + OBJC_IVAR____TtC18ComputationalGraph19TextOutputContainer_ioLen);
  if (v13 < 0xFFFFFFFF80000000)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v13 > 0x7FFFFFFF)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v42 = a2;
  *(v12 + 32) = v13;
  v14 = v12;
  sub_1C6E00CBC(v10, v9, v11);
  v15 = sub_1C6E0E97C(131104, v14);

  if (!v15)
  {
    sub_1C6E00C60(v10, v9, v11);
    goto LABEL_20;
  }

  v16 = [v15 count];
  v17 = v16 - 1;
  if (__OFSUB__(v16, 1))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v38 = v10;
  v39 = v9;
  v40 = v11;
  v41 = a3;
  if ((v17 & 0x8000000000000000) == 0)
  {
    v18 = 0;
    v19 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v20 = [v15 objectAtIndexedSubscript_];
      v21 = [v20 intValue];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_1C6ED93D8(0, *(v19 + 2) + 1, 1, v19);
      }

      v23 = *(v19 + 2);
      v22 = *(v19 + 3);
      if (v23 >= v22 >> 1)
      {
        v19 = sub_1C6ED93D8((v22 > 1), v23 + 1, 1, v19);
      }

      *(v19 + 2) = v23 + 1;
      *&v19[4 * v23 + 32] = v21;
      if (v17 == v18)
      {
        break;
      }

      if (__OFADD__(v18++, 1))
      {
        __break(1u);
        goto LABEL_22;
      }
    }

    v26 = sub_1C6E4B0AC(v19, *(v42 + OBJC_IVAR____TtC18ComputationalGraph19TextOutputContainer_textOutput), *(v42 + OBJC_IVAR____TtC18ComputationalGraph19TextOutputContainer_textOutput + 8), *(v42 + OBJC_IVAR____TtC18ComputationalGraph19TextOutputContainer_textOutput + 16));

    Feature.init(stringList:)(v26, &v43);
    v27 = v43;
    v28 = v44;
    v37 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7868, &qword_1C6EE6A58);
    v29 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7718, &unk_1C6EE6A60) - 8);
    v30 = *(*v29 + 72);
    v31 = (*(*v29 + 80) + 32) & ~*(*v29 + 80);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1C6EE6590;
    v33 = (v32 + v31);
    v34 = v29[14];
    v35 = *(v42 + OBJC_IVAR____TtC18ComputationalGraph19TextOutputContainer_output + 8);
    *v33 = *(v42 + OBJC_IVAR____TtC18ComputationalGraph19TextOutputContainer_output);
    v33[1] = v35;
    v43 = v27;
    v44 = v28;
    v45 = v37;

    sub_1C6E0F330(v32 + v31 + v34);
    v36 = sub_1C6E0B978(v32);
    swift_setDeallocating();
    sub_1C6E0E634(v32 + v31, &qword_1EC1F7718, &unk_1C6EE6A60);
    swift_deallocClassInstance();
    v25 = sub_1C6E2A384(v36);
    sub_1C6E00C60(v38, v39, v40);
    sub_1C6E00C60(v27, v28, v37);

    a3 = v41;
    goto LABEL_21;
  }

LABEL_25:
  __break(1u);
}

uint64_t sub_1C6E0E1D8()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ComputationalGraph19TextOutputContainer_textOutput);
  v2 = *(v0 + OBJC_IVAR____TtC18ComputationalGraph19TextOutputContainer_textOutput + 16);

  sub_1C6E0E4CC(v0 + OBJC_IVAR____TtC18ComputationalGraph19TextOutputContainer_input, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
  return sub_1C6E0E4CC(v0 + OBJC_IVAR____TtC18ComputationalGraph19TextOutputContainer_output, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
}

uint64_t sub_1C6E0E250()
{
  v1 = v0[3];

  sub_1C6E0E4CC(v0 + OBJC_IVAR____TtC18ComputationalGraph19AbstractComputation_modelIOSpec, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec);
  sub_1C6E0E634(v0 + OBJC_IVAR____TtC18ComputationalGraph19AbstractComputation_nodeCachePolicy, &qword_1EC1F7508, &unk_1C6EE6690);
  v2 = *(v0 + OBJC_IVAR____TtC18ComputationalGraph19TextOutputContainer_textOutput);
  v3 = *(v0 + OBJC_IVAR____TtC18ComputationalGraph19TextOutputContainer_textOutput + 16);

  sub_1C6E0E4CC(v0 + OBJC_IVAR____TtC18ComputationalGraph19TextOutputContainer_input, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
  sub_1C6E0E4CC(v0 + OBJC_IVAR____TtC18ComputationalGraph19TextOutputContainer_output, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TextOutputContainer()
{
  result = qword_1EDEF6490;
  if (!qword_1EDEF6490)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6E0E3CC()
{
  result = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1C6E0E478()
{
  result = qword_1EC1F7858;
  if (!qword_1EC1F7858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7858);
  }

  return result;
}

uint64_t sub_1C6E0E4CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1C6E0E52C()
{
  result = qword_1EC1F7860;
  if (!qword_1EC1F7860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7860);
  }

  return result;
}

uint64_t sub_1C6E0E580(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1C6E0E634(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for TextOutputContainerError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for TextOutputContainerError(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_1C6E0E788()
{
  result = qword_1EC1F7870;
  if (!qword_1EC1F7870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7870);
  }

  return result;
}

uint64_t sub_1C6E0E7DC()
{
  sub_1C6DEFC3C();
  result = sub_1C6EE4FD0();
  qword_1EDEF8460 = result;
  return result;
}

uint64_t sub_1C6E0E848()
{
  sub_1C6DEFC3C();
  result = sub_1C6EE4FD0();
  qword_1EDEF8F78 = result;
  return result;
}

uint64_t sub_1C6E0E8B0()
{
  sub_1C6DEFC3C();
  result = sub_1C6EE4FD0();
  qword_1EDEF66D0 = result;
  return result;
}

uint64_t sub_1C6E0E918()
{
  sub_1C6DEFC3C();
  result = sub_1C6EE4FD0();
  qword_1EDEF8FA8 = result;
  return result;
}

id sub_1C6E0E97C(uint64_t a1, unint64_t a2)
{
  v5 = 131104;
  v6 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v10 = v2[1];
  v12 = *(v2 + 16);
  v13 = (v10 >> 60) & 3;
  if (v12)
  {
    v14 = 4;
  }

  else
  {
    v14 = 0;
  }

  v15 = v13 | v14;
  if ((v13 | v14) > 3)
  {
    if (v15 != 4 && v15 != 5 || a1 != 65552)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if ((v15 - 2) < 2)
    {
      goto LABEL_26;
    }

    v16 = 65568;
    if (v15)
    {
      v16 = 131104;
    }

    if (v16 != a1)
    {
LABEL_26:
      if (qword_1EDEF8F80 != -1)
      {
        swift_once();
      }

      sub_1C6EE4EC0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_1C6EE6B40;
      v46 = 0;
      v47 = 0xE000000000000000;
      v49 = a1;
      type metadata accessor for MLMultiArrayDataType(0);
      sub_1C6EE52F0();
      v30 = v46;
      v31 = v47;
      v32 = MEMORY[0x1E69E6158];
      *(v29 + 56) = MEMORY[0x1E69E6158];
      v33 = sub_1C6DF10E0();
      *(v29 + 64) = v33;
      *(v29 + 32) = v30;
      *(v29 + 40) = v31;
      v46 = 0;
      v47 = 0xE000000000000000;
      if (v15 <= 2)
      {
        if (!v15)
        {
          v34 = 0;
          v5 = 65568;
          goto LABEL_39;
        }

        if (v15 != 1)
        {
          goto LABEL_37;
        }

        v34 = 0;
      }

      else
      {
        if (v15 > 4)
        {
          if (v15 != 5)
          {
LABEL_37:
            v5 = 0;
            v34 = 1;
            goto LABEL_39;
          }
        }

        else if (v15 == 3)
        {
          goto LABEL_37;
        }

        v34 = 0;
        v5 = 65552;
      }

LABEL_39:
      v49 = v5;
      v50 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7AA0, &qword_1C6EE7848);
      v35 = sub_1C6EE4AF0();
      MEMORY[0x1CCA57F60](v35);

      v36 = v46;
      v37 = v47;
      *(v29 + 96) = v32;
      *(v29 + 104) = v33;
      *(v29 + 72) = v36;
      *(v29 + 80) = v37;
      sub_1C6EE4730();
LABEL_40:

      return 0;
    }
  }

  v46 = v11;
  v47 = v10;
  v48 = v12;
  sub_1C6E0F330(v9);
  v17 = sub_1C6E12B64();
  sub_1C6E1842C(v9, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
  if (v17)
  {
    v18 = sub_1C6DFD948([v17 count], a2);
    if (!v18)
    {
      if (qword_1EDEF8F80 == -1)
      {
LABEL_43:
        sub_1C6EE4EC0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
        v39 = swift_allocObject();
        *(v39 + 16) = xmmword_1C6EE6B40;
        v40 = [v17 count];
        v41 = MEMORY[0x1E69E65A8];
        *(v39 + 56) = MEMORY[0x1E69E6530];
        *(v39 + 64) = v41;
        *(v39 + 32) = v40;
        *(v39 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7918, &qword_1C6EE6BD0);
        *(v39 + 104) = sub_1C6E185A4(&qword_1EC1F7AA8, &qword_1EC1F7918, &qword_1C6EE6BD0);
        *(v39 + 72) = a2;

        sub_1C6EE4730();

        goto LABEL_40;
      }

LABEL_50:
      swift_once();
      goto LABEL_43;
    }

    v19 = v18;
    v20 = [v17 shape];
    sub_1C6E184F4(0, &qword_1EDEF6758, 0x1E696AD98);
    a2 = sub_1C6EE4CA0();

    if (a2 >> 62)
    {
      v21 = sub_1C6EE5110();
      if (v21)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v21 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v21)
      {
LABEL_17:
        v45 = v19;
        v46 = MEMORY[0x1E69E7CC0];
        sub_1C6E15A90(0, v21 & ~(v21 >> 63), 0);
        if ((v21 & 0x8000000000000000) == 0)
        {
          v22 = 0;
          v23 = v46;
          do
          {
            if ((a2 & 0xC000000000000001) != 0)
            {
              v24 = MEMORY[0x1CCA585E0](v22, a2);
            }

            else
            {
              v24 = *(a2 + 8 * v22 + 32);
            }

            v25 = v24;
            v26 = [v24 integerValue];

            v46 = v23;
            v28 = *(v23 + 16);
            v27 = *(v23 + 24);
            if (v28 >= v27 >> 1)
            {
              sub_1C6E15A90((v27 > 1), v28 + 1, 1);
              v23 = v46;
            }

            ++v22;
            *(v23 + 16) = v28 + 1;
            *(v23 + 8 * v28 + 32) = v26;
          }

          while (v21 != v22);

          v19 = v45;
          goto LABEL_46;
        }

        __break(1u);
        goto LABEL_50;
      }
    }

    v23 = MEMORY[0x1E69E7CC0];
LABEL_46:
    v42 = sub_1C6E6F90C(v23, v19);

    if (v42)
    {
    }

    else
    {
      v43 = sub_1C6E13734(v19);

      return v43;
    }
  }

  return v17;
}

uint64_t Feature.init(stringList:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = sub_1C6EE4AE0();
  v5 = *(v24 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (v9)
  {
    v22 = a2;
    v25 = MEMORY[0x1E69E7CC0];
    sub_1C6E15AB0(0, v9, 0);
    v10 = 0;
    v11 = v25;
    v23 = (v5 + 8);
    v12 = (a1 + 40);
    while (1)
    {
      if (v10 >= *(a1 + 16))
      {
        __break(1u);
        goto LABEL_15;
      }

      v2 = *(v12 - 1);
      v5 = *v12;

      sub_1C6EE4AD0();
      v13 = sub_1C6EE4AA0();
      v15 = v14;
      (*v23)(v8, v24);
      if (v15 >> 60 == 15)
      {
        break;
      }

      v25 = v11;
      v2 = *(v11 + 16);
      v16 = *(v11 + 24);
      v5 = v2 + 1;
      if (v2 >= v16 >> 1)
      {
        sub_1C6E15AB0((v16 > 1), v2 + 1, 1);
        v11 = v25;
      }

      ++v10;
      *(v11 + 16) = v5;
      v17 = v11 + 16 * v2;
      *(v17 + 32) = v13;
      *(v17 + 40) = v15;
      v12 += 2;
      if (v9 == v10)
      {

        a2 = v22;
        goto LABEL_12;
      }
    }

    if (qword_1EDEF8F80 == -1)
    {
      goto LABEL_11;
    }

LABEL_15:
    swift_once();
LABEL_11:
    sub_1C6EE4EC0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1C6EE6590;
    *(v18 + 56) = MEMORY[0x1E69E6158];
    *(v18 + 64) = sub_1C6DF10E0();
    *(v18 + 32) = v2;
    *(v18 + 40) = v5;

    sub_1C6EE4730();

    v11 = 0;
    v19 = 1;
    v20 = 0x2000000000000000;
    a2 = v22;
  }

  else
  {

    v11 = MEMORY[0x1E69E7CC0];
LABEL_12:
    v19 = 0;
    v20 = 0x3000000000000000;
  }

  *a2 = v11;
  *(a2 + 8) = v20;
  *(a2 + 16) = v19;
  return result;
}

uint64_t sub_1C6E0F330@<X0>(uint64_t a1@<X8>)
{
  v54 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v3 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList(0);
  v6 = *(*(v52 - 8) + 64);
  MEMORY[0x1EEE9AC00](v52);
  v53 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = (&v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(v1 + 8);
  v55 = *v1;
  v21 = *(v1 + 16);
  v22 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 56);
  v57 = v22;
  v58 = v24;
  v56 = v23 + 56;
  (v24)(a1, 1, 1);
  v25 = a1 + *(type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature(0) + 20);
  result = sub_1C6EE4420();
  if (v21)
  {
    v27 = 4;
  }

  else
  {
    v27 = 0;
  }

  v28 = (v20 >> 60) & 3 | v27;
  if (v28 <= 2)
  {
    if (v28)
    {
      if (v28 == 1)
      {
        v33 = *(v12 + 20);
        v34 = v55;

        sub_1C6EE4420();
        *v15 = v34;
        sub_1C6E1848C(a1);
        sub_1C6E1853C(v15, a1, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
        v35 = v57;
        swift_storeEnumTagMultiPayload();
        v58(a1, 0, 1, v35);
        v36 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List;
        v37 = v15;
      }

      else
      {
        v43 = *(v8 + 20);
        v44 = v55;

        sub_1C6EE4420();
        *v11 = v44;
        sub_1C6E1848C(a1);
        sub_1C6E1853C(v11, a1, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
        v45 = v57;
        swift_storeEnumTagMultiPayload();
        v58(a1, 0, 1, v45);
        v36 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List;
        v37 = v11;
      }
    }

    else
    {
      v40 = *(v16 + 20);
      v41 = v55;

      sub_1C6EE4420();
      *v19 = v41;
      sub_1C6E1848C(a1);
      sub_1C6E1853C(v19, a1, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
      v42 = v57;
      swift_storeEnumTagMultiPayload();
      v58(a1, 0, 1, v42);
      v36 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList;
      v37 = v19;
    }

    return sub_1C6E1842C(v37, v36);
  }

  if (v28 > 4)
  {
    if (v28 != 5)
    {
      return result;
    }

    *v5 = xmmword_1C6EE6B50;
    v38 = v55;
    v39 = *(v54 + 20);
    sub_1C6E00D18(v55, v20 & 0xCFFFFFFFFFFFFFFFLL);
    sub_1C6EE4420();
    sub_1C6DF1134(*v5, *(v5 + 1));
    *v5 = v38;
    *(v5 + 1) = v20 & 0xCFFFFFFFFFFFFFFFLL;
    goto LABEL_16;
  }

  if (v28 != 3)
  {
    *v5 = xmmword_1C6EE6B50;
    v46 = &v5[*(v54 + 20)];
    sub_1C6EE4420();
    v47 = sub_1C6E10650(v55);
    v49 = v48;
    sub_1C6DF1134(*v5, *(v5 + 1));
    *v5 = v47;
    *(v5 + 1) = v49;
LABEL_16:
    sub_1C6E1848C(a1);
    sub_1C6E1853C(v5, a1, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    v50 = v57;
    swift_storeEnumTagMultiPayload();
    v58(a1, 0, 1, v50);
    v32 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List;
    goto LABEL_17;
  }

  v29 = *(v52 + 20);
  v30 = v55;

  v5 = v53;
  sub_1C6EE4420();
  *v5 = v30;
  sub_1C6E1848C(a1);
  sub_1C6E1853C(v5, a1, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
  v31 = v57;
  swift_storeEnumTagMultiPayload();
  v58(a1, 0, 1, v31);
  v32 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList;
LABEL_17:
  v36 = v32;
  v37 = v5;
  return sub_1C6E1842C(v37, v36);
}

uint64_t sub_1C6E0F908(uint64_t a1)
{
  v2 = sub_1C6E18754();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6E0F944(uint64_t a1)
{
  v2 = sub_1C6E18754();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C6E0F980(void *a1, int a2)
{
  LODWORD(v63) = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7B68, &qword_1C6EE7988);
  v57 = *(v3 - 8);
  v58 = v3;
  v4 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v56 = &v46 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7B70, &qword_1C6EE7990);
  v54 = *(v6 - 8);
  v55 = v6;
  v7 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v53 = &v46 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7B78, &qword_1C6EE7998);
  v51 = *(v9 - 8);
  v52 = v9;
  v10 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v46 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7B80, &qword_1C6EE79A0);
  v48 = *(v12 - 8);
  v49 = v12;
  v13 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v47 = &v46 - v14;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7B88, &qword_1C6EE79A8);
  v62 = *(v46 - 8);
  v15 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v61 = &v46 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7B90, &qword_1C6EE79B0);
  v60 = *(v17 - 8);
  v18 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v46 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7B98, &qword_1C6EE79B8);
  v59 = *(v21 - 8);
  v22 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v46 - v23;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7BA0, &qword_1C6EE79C0);
  v25 = *(v65 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v28 = &v46 - v27;
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1C6E18658();
  v64 = v28;
  sub_1C6EE55C0();
  v30 = (v25 + 8);
  v31 = v63;
  if (v63 <= 2u)
  {
    v37 = v59;
    v38 = v60;
    v63 = v17;
    v40 = v61;
    v39 = v62;
    if (v31)
    {
      if (v31 != 1)
      {
        v68 = 2;
        sub_1C6E187FC();
        v44 = v64;
        v45 = v65;
        sub_1C6EE53F0();
        (*(v39 + 8))(v40, v46);
        return (*v30)(v44, v45);
      }

      v67 = 1;
      sub_1C6E18850();
      v42 = v64;
      v41 = v65;
      sub_1C6EE53F0();
      (*(v38 + 8))(v20, v63);
    }

    else
    {
      v66 = 0;
      sub_1C6E188A4();
      v42 = v64;
      v41 = v65;
      sub_1C6EE53F0();
      (*(v37 + 8))(v24, v21);
    }

    return (*v30)(v42, v41);
  }

  if (v63 > 4u)
  {
    if (v63 == 5)
    {
      v71 = 5;
      sub_1C6E18700();
      v32 = v53;
      v33 = v64;
      v34 = v65;
      sub_1C6EE53F0();
      v36 = v54;
      v35 = v55;
    }

    else
    {
      v72 = 6;
      sub_1C6E186AC();
      v32 = v56;
      v33 = v64;
      v34 = v65;
      sub_1C6EE53F0();
      v36 = v57;
      v35 = v58;
    }
  }

  else if (v63 == 3)
  {
    v69 = 3;
    sub_1C6E187A8();
    v32 = v47;
    v33 = v64;
    v34 = v65;
    sub_1C6EE53F0();
    v36 = v48;
    v35 = v49;
  }

  else
  {
    v70 = 4;
    sub_1C6E18754();
    v32 = v50;
    v33 = v64;
    v34 = v65;
    sub_1C6EE53F0();
    v36 = v51;
    v35 = v52;
  }

  (*(v36 + 8))(v32, v35);
  return (*v30)(v33, v34);
}

uint64_t sub_1C6E10074()
{
  v1 = *v0;
  v2 = 1701736302;
  v3 = 0x363174616F6C66;
  if (v1 != 5)
  {
    v3 = 0x5F363174616F6C66;
  }

  v4 = 0x74616F6C66;
  if (v1 != 3)
  {
    v4 = 0x7365747962;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x3233746E69;
  if (v1 != 1)
  {
    v5 = 0x3436746E69;
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

uint64_t sub_1C6E10140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C6E168E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C6E10174(uint64_t a1)
{
  v2 = sub_1C6E18658();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6E101B0(uint64_t a1)
{
  v2 = sub_1C6E18658();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C6E10204(uint64_t a1)
{
  v2 = sub_1C6E18700();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6E10240(uint64_t a1)
{
  v2 = sub_1C6E18700();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C6E10294(uint64_t a1)
{
  v2 = sub_1C6E186AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6E102D0(uint64_t a1)
{
  v2 = sub_1C6E186AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C6E10324(uint64_t a1)
{
  v2 = sub_1C6E187A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6E10360(uint64_t a1)
{
  v2 = sub_1C6E187A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C6E103B4(uint64_t a1)
{
  v2 = sub_1C6E18850();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6E103F0(uint64_t a1)
{
  v2 = sub_1C6E18850();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C6E10444(uint64_t a1)
{
  v2 = sub_1C6E187FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6E10480(uint64_t a1)
{
  v2 = sub_1C6E187FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C6E104D4(uint64_t a1)
{
  v2 = sub_1C6E188A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6E10510(uint64_t a1)
{
  v2 = sub_1C6E188A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C6E1054C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C6E16B24(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t Feature.count.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (*(v0 + 16))
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  v4 = (v2 >> 60) & 3 | v3;
  if (v4 <= 2)
  {
    return *(v1 + 16);
  }

  if (v4 <= 4)
  {
    return *(v1 + 16);
  }

  if (v4 != 5)
  {
    return 0;
  }

  v6 = v2 >> 62;
  if ((v2 >> 62) <= 1)
  {
    if (!v6)
    {
      return BYTE6(v2);
    }

    v10 = __OFSUB__(HIDWORD(v1), v1);
    v11 = HIDWORD(v1) - v1;
    if (!v10)
    {
      return v11;
    }

    goto LABEL_19;
  }

  if (v6 != 2)
  {
    return 0;
  }

  v9 = v1 + 16;
  v7 = *(v1 + 16);
  v8 = *(v9 + 8);
  result = v8 - v7;
  if (__OFSUB__(v8, v7))
  {
    __break(1u);
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C6E10650(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 16);
  if ((v1 + 0x4000000000000000) < 0)
  {
    __break(1u);
  }

  if (v1)
  {
    if ((2 * v1) < 15)
    {
      v8 = 0;
      v9 = 0;
    }

    else
    {
      v2 = a1;
      v3 = sub_1C6EE3FE0();
      v4 = *(v3 + 48);
      v5 = *(v3 + 52);
      swift_allocObject();
      v6 = sub_1C6EE3FD0();
      v7 = v6;
      v8 = v1 >> 30;
      if (v1 >> 30)
      {
        sub_1C6EE41D0();
        v8 = swift_allocObject();
        v9 = v7 | 0x8000000000000000;
        *(v8 + 16) = 0;
        *(v8 + 24) = 0;
      }

      else
      {
        v9 = v6 | 0x4000000000000000;
      }

      a1 = v2;
    }

    v26 = v8;
    v27 = v9;
    v12 = (a1 + 32);
    do
    {
      if (v27 >> 62 == 2)
      {
        v13 = *(v26 + 24);
      }

      v15 = *v12++;
      v14 = HIBYTE(v15);
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7AD0, &qword_1C6EE7870);
      v24 = v16;
      v17 = sub_1C6E185A4(qword_1EDEF5D30, &qword_1EC1F7AD0, &qword_1C6EE7870);
      v25 = v17;
      LOBYTE(v23[0]) = v15;
      v22 = *__swift_project_boxed_opaque_existential_1Tm(v23, v16);
      sub_1C6EE41E0();
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      if (v27 >> 62 == 2)
      {
        v18 = *(v26 + 24);
      }

      v24 = v16;
      v25 = v17;
      LOBYTE(v23[0]) = v14;
      v21 = *__swift_project_boxed_opaque_existential_1Tm(v23, v16);
      sub_1C6EE41E0();
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      --v1;
    }

    while (v1);
    v10 = v26;
    v11 = v27;
  }

  else
  {
    v10 = 0;
    v11 = 0xC000000000000000;
  }

  sub_1C6E00D18(v10, v11);
  sub_1C6DF1134(v10, v11);
  v19 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t sub_1C6E108D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v39 = (&v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = (&v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = (&v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = (&v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = (&v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v39 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7A98, &qword_1C6EE7840);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v30 = &v39 - v29;
  sub_1C6E18354(a1, &v39 - v29);
  sub_1C6E1842C(a1, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
  v31 = 1;
  result = (*(v23 + 48))(v30, 1, v22);
  if (result == 1)
  {
    v33 = 0;
    goto LABEL_3;
  }

  sub_1C6E183C4(v30, v26, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        sub_1C6E183C4(v26, v9, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
        v33 = *v9;

        result = sub_1C6E1842C(v9, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
        v31 = 0;
        v34 = 0x3000000000000000;
      }

      else
      {
        v37 = v39;
        sub_1C6E183C4(v26, v39, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        v33 = *v37;
        v38 = v37[1];
        sub_1C6E00D18(*v37, v38);
        result = sub_1C6E1842C(v37, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        v34 = v38 | 0x1000000000000000;
        v31 = 1;
      }

      goto LABEL_4;
    }

    sub_1C6E183C4(v26, v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
    v33 = *v13;

    result = sub_1C6E1842C(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
    v31 = 0;
LABEL_3:
    v34 = 0x2000000000000000;
LABEL_4:
    v35 = v40;
    goto LABEL_5;
  }

  v35 = v40;
  if (EnumCaseMultiPayload)
  {
    sub_1C6E183C4(v26, v17, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
    v33 = *v17;

    result = sub_1C6E1842C(v17, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
    v31 = 0;
    v34 = 0x1000000000000000;
  }

  else
  {
    sub_1C6E183C4(v26, v21, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
    v33 = *v21;

    result = sub_1C6E1842C(v21, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
    v34 = 0;
    v31 = 0;
  }

LABEL_5:
  *v35 = v33;
  *(v35 + 8) = v34;
  *(v35 + 16) = v31;
  return result;
}

uint64_t sub_1C6E10DB8(uint64_t a1)
{
  v2 = sub_1C6E1622C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6E10DF4(uint64_t a1)
{
  v2 = sub_1C6E1622C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C6E10E30()
{
  v1 = *v0;
  sub_1C6EE5580();
  MEMORY[0x1CCA58990](v1);
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E10E78()
{
  v1 = *v0;
  sub_1C6EE5580();
  MEMORY[0x1CCA58990](v1);
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E10EBC()
{
  v1 = *v0;
  v2 = 1701736302;
  v3 = 0x4C363174616F6C66;
  if (v1 != 5)
  {
    v3 = 0xD000000000000018;
  }

  v4 = 0x73694C3436746E69;
  if (v1 != 3)
  {
    v4 = 0x73694C7365747962;
  }

  if (*v0 > 4u)
  {
    v4 = v3;
  }

  v5 = 0x73694C74616F6C66;
  if (v1 != 1)
  {
    v5 = 0x73694C3233746E69;
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
    return v4;
  }
}

uint64_t sub_1C6E10FA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C6E17434(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C6E10FD8(uint64_t a1)
{
  v2 = sub_1C6E16018();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6E11014(uint64_t a1)
{
  v2 = sub_1C6E16018();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C6E11070(uint64_t a1)
{
  v2 = sub_1C6E16114();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6E110AC(uint64_t a1)
{
  v2 = sub_1C6E16114();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C6E11108(uint64_t a1)
{
  v2 = sub_1C6E1606C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6E11144(uint64_t a1)
{
  v2 = sub_1C6E1606C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C6E111A0(uint64_t a1)
{
  v2 = sub_1C6E16420();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6E111DC(uint64_t a1)
{
  v2 = sub_1C6E16420();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C6E11238(uint64_t a1)
{
  v2 = sub_1C6E16350();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6E11274(uint64_t a1)
{
  v2 = sub_1C6E16350();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C6E112B8()
{
  sub_1C6EE5580();
  MEMORY[0x1CCA58990](0);
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E112FC()
{
  sub_1C6EE5580();
  MEMORY[0x1CCA58990](0);
  return sub_1C6EE55A0();
}

uint64_t sub_1C6E11348@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1C6EE54B0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1C6E113D4(uint64_t a1)
{
  v2 = sub_1C6E16280();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6E11410(uint64_t a1)
{
  v2 = sub_1C6E16280();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C6E11464(uint64_t a1)
{
  v2 = sub_1C6E164F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6E114A0(uint64_t a1)
{
  v2 = sub_1C6E164F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Feature.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7878, &qword_1C6EE6B78);
  v67 = *(v3 - 8);
  v68 = v3;
  v4 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v66 = &v57 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7880, &qword_1C6EE6B80);
  v64 = *(v6 - 8);
  v65 = v6;
  v7 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v63 = &v57 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7888, &qword_1C6EE6B88);
  v61 = *(v9 - 8);
  v62 = v9;
  v10 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v60 = &v57 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7890, &qword_1C6EE6B90);
  v74 = *(v12 - 8);
  v75 = v12;
  v13 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v73 = &v57 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7898, &qword_1C6EE6B98);
  v71 = *(v15 - 8);
  v72 = v15;
  v16 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v70 = &v57 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F78A0, &qword_1C6EE6BA0);
  v69 = *(v18 - 8);
  v19 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v57 - v20;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F78A8, &qword_1C6EE6BA8);
  v58 = *(v59 - 8);
  v22 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v24 = &v57 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F78B0, &qword_1C6EE6BB0);
  v26 = *(v25 - 8);
  v77 = v25;
  v78 = v26;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v28 = v1[1];
  v76 = *v1;
  v29 = *(v1 + 16);
  v31 = a1[3];
  v30 = a1[4];
  v32 = a1;
  v34 = &v57 - v33;
  __swift_project_boxed_opaque_existential_1Tm(v32, v31);
  sub_1C6E16018();
  v81 = v34;
  sub_1C6EE55C0();
  if (v29)
  {
    v35 = 4;
  }

  else
  {
    v35 = 0;
  }

  v36 = (v28 >> 60) & 3 | v35;
  if (v36 <= 2)
  {
    v42 = v69;
    v41 = v70;
    v44 = v71;
    v43 = v72;
    v46 = v73;
    v45 = v74;
    v47 = v75;
    if (v36)
    {
      v37 = v77;
      if (v36 == 1)
      {
        LOBYTE(v79) = 2;
        sub_1C6E16350();
        v39 = v81;
        sub_1C6EE53F0();
        v79 = v76;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7918, &qword_1C6EE6BD0);
        sub_1C6E163A4();
        sub_1C6EE5440();
        (*(v44 + 8))(v41, v43);
        return (*(v78 + 8))(v39, v37);
      }

      LOBYTE(v79) = 3;
      sub_1C6E16280();
      v55 = v81;
      sub_1C6EE53F0();
      v79 = v76;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7900, &qword_1C6EE6BC8);
      sub_1C6E162D4();
      sub_1C6EE5440();
      (*(v45 + 8))(v46, v47);
      return (*(v78 + 8))(v55, v37);
    }

    else
    {
      LOBYTE(v79) = 1;
      sub_1C6E16420();
      v52 = v21;
      v53 = v77;
      v54 = v81;
      sub_1C6EE53F0();
      v79 = v76;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7930, &qword_1C6EE6BD8);
      sub_1C6E16474();
      sub_1C6EE5440();
      (*(v42 + 8))(v52, v18);
      return (*(v78 + 8))(v54, v53);
    }
  }

  else
  {
    if (v36 > 4)
    {
      v37 = v77;
      if (v36 != 5)
      {
        LOBYTE(v79) = 0;
        sub_1C6E164F0();
        v56 = v81;
        sub_1C6EE53F0();
        (*(v58 + 8))(v24, v59);
        return (*(v78 + 8))(v56, v37);
      }

      LOBYTE(v79) = 6;
      sub_1C6E1606C();
      v49 = v66;
      sub_1C6EE53F0();
      v79 = v76;
      v80 = v28 & 0xCFFFFFFFFFFFFFFFLL;
      sub_1C6E160C0();
      v50 = v68;
      sub_1C6EE5440();
      v51 = v67;
    }

    else
    {
      v37 = v77;
      if (v36 == 3)
      {
        LOBYTE(v79) = 4;
        sub_1C6E1622C();
        v38 = v60;
        v39 = v81;
        sub_1C6EE53F0();
        v79 = v76;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F78E8, &qword_1C6EE6BC0);
        sub_1C6E16614(&qword_1EC1F78F0, sub_1C6E160C0);
        v40 = v62;
        sub_1C6EE5440();
        (*(v61 + 8))(v38, v40);
        return (*(v78 + 8))(v39, v37);
      }

      LOBYTE(v79) = 5;
      sub_1C6E16114();
      v49 = v63;
      sub_1C6EE53F0();
      v79 = v76;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F78D0, &qword_1C6EE6BB8);
      sub_1C6E16168();
      v50 = v65;
      sub_1C6EE5440();
      v51 = v64;
    }

    (*(v51 + 8))(v49, v50);
    return (*(v78 + 8))(v81, v37);
  }
}

uint64_t Feature.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7948, &qword_1C6EE6BE0);
  v4 = *(v3 - 8);
  v81 = v3;
  v82 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v87 = &v67 - v6;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7950, &qword_1C6EE6BE8);
  v80 = *(v77 - 8);
  v7 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v86 = &v67 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7958, &qword_1C6EE6BF0);
  v78 = *(v9 - 8);
  v79 = v9;
  v10 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v85 = &v67 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7960, &qword_1C6EE6BF8);
  v13 = *(v12 - 8);
  v75 = v12;
  v76 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v84 = &v67 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7968, &qword_1C6EE6C00);
  v73 = *(v16 - 8);
  v74 = v16;
  v17 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v83 = &v67 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7970, &qword_1C6EE6C08);
  v71 = *(v19 - 8);
  v72 = v19;
  v20 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v67 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7978, &qword_1C6EE6C10);
  v70 = *(v23 - 8);
  v24 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v67 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7980, &qword_1C6EE6C18);
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v67 - v30;
  v33 = a1[3];
  v32 = a1[4];
  v89 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v33);
  sub_1C6E16018();
  v34 = v92;
  sub_1C6EE55B0();
  if (!v34)
  {
    v68 = v23;
    v35 = v85;
    v69 = 0;
    v37 = v86;
    v36 = v87;
    v92 = v28;
    v38 = v88;
    v39 = sub_1C6EE53E0();
    if (*(v39 + 16) != 1 || (v40 = *(v39 + 32), v40 == 7))
    {
      v44 = sub_1C6EE5210();
      swift_allocError();
      v46 = v45;
      v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7988, &unk_1C6EE6C20) + 48);
      *v46 = &type metadata for Feature;
      sub_1C6EE5380();
      sub_1C6EE5200();
      (*(*(v44 - 8) + 104))(v46, *MEMORY[0x1E69E6AF8], v44);
      swift_willThrow();
      (*(v92 + 8))(v31, v27);
    }

    else
    {
      if (*(v39 + 32) <= 2u)
      {
        if (*(v39 + 32))
        {
          v87 = v39;
          v50 = v69;
          if (v40 == 1)
          {
            LOBYTE(v90) = 1;
            sub_1C6E16420();
            sub_1C6EE5370();
            if (!v50)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7930, &qword_1C6EE6BD8);
              sub_1C6E16784();
              v51 = v72;
              sub_1C6EE53D0();
              (*(v71 + 8))(v22, v51);
              (*(v92 + 8))(v31, v27);
              swift_unknownObjectRelease();
              v66 = 0;
              v64 = 0;
              v65 = v90;
              goto LABEL_31;
            }
          }

          else
          {
            LOBYTE(v90) = 2;
            sub_1C6E16350();
            v55 = v83;
            sub_1C6EE5370();
            if (!v50)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7918, &qword_1C6EE6BD0);
              sub_1C6E16708();
              v56 = v74;
              sub_1C6EE53D0();
              (*(v73 + 8))(v55, v56);
              (*(v92 + 8))(v31, v27);
              swift_unknownObjectRelease();
              v64 = 0;
              v65 = v90;
              v66 = 0x1000000000000000;
              goto LABEL_31;
            }
          }
        }

        else
        {
          LOBYTE(v90) = 0;
          sub_1C6E164F0();
          v54 = v69;
          sub_1C6EE5370();
          if (!v54)
          {
            (*(v70 + 8))(v26, v68);
            (*(v92 + 8))(v31, v27);
            swift_unknownObjectRelease();
            v65 = 0;
            v64 = 1;
            v66 = 0x2000000000000000;
            goto LABEL_31;
          }
        }
      }

      else if (*(v39 + 32) > 4u)
      {
        if (v40 == 5)
        {
          LOBYTE(v90) = 5;
          sub_1C6E16114();
          v52 = v69;
          sub_1C6EE5370();
          if (!v52)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F78D0, &qword_1C6EE6BB8);
            sub_1C6E16598();
            v53 = v77;
            sub_1C6EE53D0();
            (*(v80 + 8))(v37, v53);
            (*(v92 + 8))(v31, v27);
            swift_unknownObjectRelease();
            v66 = 0;
            v65 = v90;
            v64 = 1;
            goto LABEL_31;
          }
        }

        else
        {
          v59 = v38;
          LOBYTE(v90) = 6;
          sub_1C6E1606C();
          v60 = v36;
          v61 = v69;
          sub_1C6EE5370();
          if (!v61)
          {
            sub_1C6E16544();
            v62 = v81;
            sub_1C6EE53D0();
            v63 = v92;
            (*(v82 + 8))(v60, v62);
            (*(v63 + 8))(v31, v27);
            swift_unknownObjectRelease();
            v65 = v90;
            v66 = v91 | 0x1000000000000000;
            v64 = 1;
            v48 = v89;
LABEL_32:
            *v59 = v65;
            *(v59 + 8) = v66;
            *(v59 + 16) = v64;
            return __swift_destroy_boxed_opaque_existential_1Tm(v48);
          }
        }
      }

      else if (v40 == 3)
      {
        LOBYTE(v90) = 3;
        sub_1C6E16280();
        v41 = v69;
        sub_1C6EE5370();
        if (!v41)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7900, &qword_1C6EE6BC8);
          sub_1C6E1668C();
          v42 = v75;
          v43 = v84;
          sub_1C6EE53D0();
          (*(v76 + 8))(v43, v42);
          (*(v92 + 8))(v31, v27);
          swift_unknownObjectRelease();
          v64 = 0;
          v65 = v90;
          v66 = 0x2000000000000000;
LABEL_31:
          v48 = v89;
          v59 = v38;
          goto LABEL_32;
        }
      }

      else
      {
        LOBYTE(v90) = 4;
        sub_1C6E1622C();
        v57 = v69;
        sub_1C6EE5370();
        if (!v57)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F78E8, &qword_1C6EE6BC0);
          sub_1C6E16614(&qword_1EC1F79A0, sub_1C6E16544);
          v58 = v79;
          sub_1C6EE53D0();
          (*(v78 + 8))(v35, v58);
          (*(v92 + 8))(v31, v27);
          swift_unknownObjectRelease();
          v64 = 0;
          v65 = v90;
          v66 = 0x3000000000000000;
          goto LABEL_31;
        }
      }

      (*(v92 + 8))(v31, v27);
    }

    swift_unknownObjectRelease();
  }

  v48 = v89;
  return __swift_destroy_boxed_opaque_existential_1Tm(v48);
}

id sub_1C6E12B64()
{
  v1 = v0;
  v89 = *MEMORY[0x1E69E9840];
  v75 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v2 = *(*(v75 - 8) + 64);
  MEMORY[0x1EEE9AC00](v75);
  v78 = (&v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7AB0, &qword_1C6EE7850);
  v85 = *(v4 - 8);
  *&v86 = v4;
  v5 = *(v85 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v83 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v84 = &v74 - v8;
  v76 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList(0);
  v9 = *(*(v76 - 8) + 64);
  MEMORY[0x1EEE9AC00](v76);
  v77 = (&v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7AB8, &qword_1C6EE7858);
  v81 = *(v11 - 8);
  v82 = v11;
  v12 = *(v81 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v79 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v80 = &v74 - v15;
  v74 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List(0);
  v16 = *(*(v74 - 8) + 64);
  MEMORY[0x1EEE9AC00](v74);
  v18 = (&v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7A98, &qword_1C6EE7840);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = &v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v74 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v74 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v74 - v30;
  sub_1C6E18354(v1, &v74 - v30);
  v32 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  v33 = *(*(v32 - 8) + 48);
  v34 = 0;
  if (v33(v31, 1, v32) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v36 = v31;
    if (EnumCaseMultiPayload > 1)
    {
      if ((EnumCaseMultiPayload - 2) < 2)
      {
        v37 = v31;
        v34 = 0;
LABEL_40:
        sub_1C6E1842C(v37, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
        goto LABEL_41;
      }

      sub_1C6E18354(v1, v23);
      if (v33(v23, 1, v32) == 1)
      {
        sub_1C6E1848C(v23);
        v39 = v78;
      }

      else
      {
        v40 = swift_getEnumCaseMultiPayload();
        v39 = v78;
        if (v40 == 4)
        {
          sub_1C6E183C4(v23, v78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
          goto LABEL_22;
        }

        sub_1C6E1842C(v23, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
      }

      *v39 = xmmword_1C6EE6B50;
      v51 = v39 + *(v75 + 20);
      sub_1C6EE4420();
LABEL_22:
      v52 = *v39;
      v53 = v39[1];
      sub_1C6E00D18(*v39, v53);
      sub_1C6E1842C(v39, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      v54 = sub_1C6EE4210();
      v55 = [v54 bytes];
      v56 = v54;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7AC0, &unk_1C6EE7860);
      v57 = swift_allocObject();
      *(v57 + 16) = xmmword_1C6EE6B60;
      v58 = v53 >> 62;
      v86 = xmmword_1C6EE6B60;
      if ((v53 >> 62) > 1)
      {
        if (v58 != 2)
        {
          v37 = v36;
LABEL_31:
          *(v57 + 32) = sub_1C6EE4E30();
          v59 = swift_allocObject();
          *(v59 + 16) = v86;
          sub_1C6E184F4(0, &qword_1EDEF6758, 0x1E696AD98);
          *(v59 + 32) = sub_1C6EE4F90();
          v60 = objc_allocWithZone(MEMORY[0x1E695FED0]);
          v61 = sub_1C6EE4C90();

          v62 = sub_1C6EE4C90();

          v87 = 0;
          v34 = [v60 initWithDataPointer:v55 shape:v61 dataType:65552 strides:v62 deallocator:0 error:&v87];

          v63 = v87;
          if (v34)
          {
            sub_1C6DF1134(v52, v53);
          }

          else
          {
            v64 = v63;
            v65 = sub_1C6EE4050();

            swift_willThrow();
            sub_1C6DF1134(v52, v53);
            if (qword_1EDEF8F80 != -1)
            {
              swift_once();
            }

            sub_1C6EE4EC0();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
            v66 = swift_allocObject();
            *(v66 + 16) = xmmword_1C6EE6590;
            v87 = 0;
            v88 = 0xE000000000000000;
            swift_getErrorValue();
            sub_1C6EE5480();
            v67 = v87;
            v68 = v88;
            *(v66 + 56) = MEMORY[0x1E69E6158];
            *(v66 + 64) = sub_1C6DF10E0();
            *(v66 + 32) = v67;
            *(v66 + 40) = v68;
            sub_1C6EE4730();

            v34 = 0;
          }

          goto LABEL_40;
        }

        if (!__OFSUB__(*(v52 + 24), *(v52 + 16)))
        {
          v37 = v36;
          goto LABEL_31;
        }

        __break(1u);
      }

      else
      {
        if (!v58)
        {
          v37 = v36;
          goto LABEL_31;
        }

        if (!__OFSUB__(HIDWORD(v52), v52))
        {
          v37 = v36;
          goto LABEL_31;
        }
      }

      __break(1u);
    }

    if (!EnumCaseMultiPayload)
    {
      sub_1C6E18354(v1, v26);
      if (v33(v26, 1, v32) == 1)
      {
        sub_1C6E1848C(v26);
        v38 = v77;
      }

      else
      {
        v41 = swift_getEnumCaseMultiPayload();
        v38 = v77;
        if (!v41)
        {
          v37 = v36;
          sub_1C6E183C4(v26, v77, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
          goto LABEL_17;
        }

        sub_1C6E1842C(v26, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
      }

      v37 = v36;
      *v38 = MEMORY[0x1E69E7CC0];
      v42 = v38 + *(v76 + 20);
      sub_1C6EE4420();
LABEL_17:
      v43 = *v38;

      sub_1C6E1842C(v38, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
      v87 = v43;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7AC8, &qword_1C6EF6BE0);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_1C6EE6590;
      *(v44 + 32) = v43[2];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7930, &qword_1C6EE6BD8);
      sub_1C6E185A4(&qword_1EDEF67B0, &qword_1EC1F7930, &qword_1C6EE6BD8);
      v45 = v84;
      sub_1C6EE4800();
      sub_1C6E184F4(0, &qword_1EDEF6788, 0x1E695FED0);
      v47 = v85;
      v46 = v86;
      (*(v85 + 16))(v83, v45, v86);
      v48 = &qword_1EDEF6868;
      v49 = &qword_1EC1F7AB0;
      v50 = &qword_1C6EE7850;
LABEL_39:
      sub_1C6E185A4(v48, v49, v50);
      v34 = sub_1C6EE4E80();
      (*(v47 + 8))(v45, v46);
      goto LABEL_40;
    }

    sub_1C6E18354(v1, v29);
    if (v33(v29, 1, v32) == 1)
    {
      sub_1C6E1848C(v29);
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v37 = v31;
        sub_1C6E183C4(v29, v18, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
LABEL_38:
        v70 = *v18;

        sub_1C6E1842C(v18, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
        v87 = v70;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7AC8, &qword_1C6EF6BE0);
        v71 = swift_allocObject();
        *(v71 + 16) = xmmword_1C6EE6590;
        *(v71 + 32) = v70[2];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7918, &qword_1C6EE6BD0);
        sub_1C6E185A4(&qword_1EDEF6798, &qword_1EC1F7918, &qword_1C6EE6BD0);
        v45 = v80;
        sub_1C6EE4800();
        sub_1C6E184F4(0, &qword_1EDEF6788, 0x1E695FED0);
        v47 = v81;
        v46 = v82;
        (*(v81 + 16))(v79, v45, v82);
        v48 = &unk_1EDEF6860;
        v49 = &qword_1EC1F7AB8;
        v50 = &qword_1C6EE7858;
        goto LABEL_39;
      }

      sub_1C6E1842C(v29, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    }

    v37 = v31;
    *v18 = MEMORY[0x1E69E7CC0];
    v69 = v18 + *(v74 + 20);
    sub_1C6EE4420();
    goto LABEL_38;
  }

LABEL_41:
  v72 = *MEMORY[0x1E69E9840];
  return v34;
}

id sub_1C6E13734(uint64_t a1)
{
  v31[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (!v2)
  {
LABEL_23:
    if ([v1 count] == 1)
    {
      __break(1u);
    }

    goto LABEL_25;
  }

  v4 = 0;
  v5 = (a1 + 32);
  v6 = 1;
  do
  {
    v7 = v5[v4];
    v8 = v6 * v7;
    if ((v6 * v7) >> 64 != (v6 * v7) >> 63)
    {
      __break(1u);
      goto LABEL_21;
    }

    ++v4;
    v6 *= v7;
  }

  while (v2 != v4);
  if (v8 != [v1 count])
  {
LABEL_25:
    __break(1u);
  }

  v9 = sub_1C6EE4D00();
  *(v9 + 16) = v2;
  v10 = (v9 + 16);
  v11 = (v9 + 32);
  bzero((v9 + 32), 8 * v2);
  *(8 * v2 + v9 + 32 - 8) = 1;
  if (v2 != 1)
  {
    v12 = 1;
    v13 = v2;
    while (1)
    {
      v14 = v13 - 1;
      if (v13 - 1 >= *v10)
      {
        break;
      }

      v15 = *(a1 + 24 + 8 * v13);
      if ((v12 * v15) >> 64 != (v12 * v15) >> 63)
      {
        goto LABEL_22;
      }

      v10[v13--] = v12 * v15;
      v12 *= v15;
      if (v14 <= 1)
      {
        goto LABEL_11;
      }
    }

LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

LABEL_11:
  v31[0] = MEMORY[0x1E69E7CC0];
  sub_1C6EE5290();
  do
  {
    v16 = *v5++;
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    sub_1C6EE5260();
    v17 = *(v31[0] + 2);
    sub_1C6EE52A0();
    sub_1C6EE52B0();
    sub_1C6EE5270();
    --v2;
  }

  while (v2);
  v18 = *v10;
  if (*v10)
  {
    v31[0] = MEMORY[0x1E69E7CC0];
    sub_1C6EE5290();
    do
    {
      v19 = *v11++;
      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      sub_1C6EE5260();
      v20 = *(v31[0] + 2);
      sub_1C6EE52A0();
      sub_1C6EE52B0();
      sub_1C6EE5270();
      --v18;
    }

    while (v18);
  }

  v21 = [v1 dataPointer];
  v22 = [v1 dataType];
  v23 = objc_allocWithZone(MEMORY[0x1E695FED0]);
  sub_1C6E184F4(0, &qword_1EDEF6758, 0x1E696AD98);
  v24 = sub_1C6EE4C90();

  v25 = sub_1C6EE4C90();

  v31[0] = 0;
  v26 = [v23 initWithDataPointer:v21 shape:v24 dataType:v22 strides:v25 deallocator:0 error:v31];

  if (v26)
  {
    v27 = v31[0];
  }

  else
  {
    v28 = v31[0];
    sub_1C6EE4050();

    swift_willThrow();
  }

  v29 = *MEMORY[0x1E69E9840];
  return v26;
}

uint64_t Feature.floatList.getter()
{
  if (*(v0 + 16))
  {
    v1 = 4;
  }

  else
  {
    v1 = 0;
  }

  v2 = (v0[1] >> 60) & 3 | v1;
  if (v2 > 2)
  {
    v3 = 768;
    if (v2 == 5)
    {
      v3 = 774;
    }

    v4 = 772;
    if (v2 != 3)
    {
      v4 = 773;
    }

    if (v2 <= 4)
    {
      v5 = v4;
    }

    else
    {
      v5 = v3;
    }

    goto LABEL_16;
  }

  if (v2)
  {
    if (v2 == 1)
    {
      v5 = 769;
    }

    else
    {
      v5 = 770;
    }

LABEL_16:
    sub_1C6E16800();
    swift_allocError();
    *v6 = v5;
    *(v6 + 8) = 0;
    *(v6 + 16) = 3;
    return swift_willThrow();
  }

  v8 = *v0;
}

uint64_t Feature.int32List.getter()
{
  if (*(v0 + 16))
  {
    v1 = 4;
  }

  else
  {
    v1 = 0;
  }

  v2 = (v0[1] >> 60) & 3 | v1;
  if (v2 > 2)
  {
    v3 = 256;
    if (v2 == 5)
    {
      v3 = 262;
    }

    v4 = 260;
    if (v2 != 3)
    {
      v4 = 261;
    }

    if (v2 <= 4)
    {
      v5 = v4;
    }

    else
    {
      v5 = v3;
    }

    goto LABEL_12;
  }

  if (!v2)
  {
    v5 = 259;
LABEL_12:
    sub_1C6E16800();
    swift_allocError();
    *v6 = v5;
    *(v6 + 8) = 0;
    *(v6 + 16) = 3;
    return swift_willThrow();
  }

  if (v2 != 1)
  {
    v5 = 258;
    goto LABEL_12;
  }

  v8 = *v0;
}

uint64_t Feature.int64List.getter()
{
  if (*(v0 + 16))
  {
    v1 = 4;
  }

  else
  {
    v1 = 0;
  }

  v2 = (v0[1] >> 60) & 3 | v1;
  if (v2 > 2)
  {
    v3 = 512;
    if (v2 == 5)
    {
      v3 = 518;
    }

    v4 = 516;
    if (v2 != 3)
    {
      v4 = 517;
    }

    if (v2 <= 4)
    {
      v5 = v4;
    }

    else
    {
      v5 = v3;
    }

    goto LABEL_12;
  }

  if (!v2)
  {
    v5 = 515;
    goto LABEL_12;
  }

  if (v2 == 1)
  {
    v5 = 513;
LABEL_12:
    sub_1C6E16800();
    swift_allocError();
    *v6 = v5;
    *(v6 + 8) = 0;
    *(v6 + 16) = 3;
    return swift_willThrow();
  }

  v8 = *v0;
}

uint64_t Feature.bytesList.getter()
{
  if (*(v0 + 16))
  {
    v1 = 4;
  }

  else
  {
    v1 = 0;
  }

  v2 = (v0[1] >> 60) & 3 | v1;
  if (v2 <= 2)
  {
    v5 = 1025;
    if (v2 != 1)
    {
      v5 = 1026;
    }

    if (v2)
    {
      v6 = v5;
    }

    else
    {
      v6 = 1027;
    }
  }

  else if (v2 > 4)
  {
    if (v2 == 5)
    {
      v6 = 1030;
    }

    else
    {
      v6 = 1024;
    }
  }

  else
  {
    if (v2 == 3)
    {
      v3 = *v0;
    }

    v6 = 1029;
  }

  sub_1C6E16800();
  swift_allocError();
  *v7 = v6;
  *(v7 + 8) = 0;
  *(v7 + 16) = 3;
  return swift_willThrow();
}

uint64_t Feature.float16List.getter()
{
  if (*(v0 + 16))
  {
    v1 = 4;
  }

  else
  {
    v1 = 0;
  }

  v2 = (v0[1] >> 60) & 3 | v1;
  if (v2 <= 2)
  {
    v4 = 1281;
    if (v2 != 1)
    {
      v4 = 1282;
    }

    if (v2)
    {
      v3 = v4;
    }

    else
    {
      v3 = 1283;
    }

    goto LABEL_16;
  }

  if (v2 > 4)
  {
    if (v2 == 5)
    {
      v3 = 1286;
    }

    else
    {
      v3 = 1280;
    }

    goto LABEL_16;
  }

  if (v2 == 3)
  {
    v3 = 1284;
LABEL_16:
    sub_1C6E16800();
    swift_allocError();
    *v5 = v3;
    *(v5 + 8) = 0;
    *(v5 + 16) = 3;
    return swift_willThrow();
  }

  v7 = *v0;
}

uint64_t Feature.float16LittleEndianBytes.getter()
{
  v1 = *(v0 + 8);
  if (*(v0 + 16))
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  v3 = (v1 >> 60) & 3 | v2;
  if (v3 <= 2)
  {
    v5 = 1537;
    if (v3 != 1)
    {
      v5 = 1538;
    }

    if (v3)
    {
      v4 = v5;
    }

    else
    {
      v4 = 1539;
    }
  }

  else if (v3 > 4)
  {
    if (v3 != 6)
    {
      v4 = *v0;
      sub_1C6E00D18(v4, v1 & 0xCFFFFFFFFFFFFFFFLL);
      return v4;
    }

    v4 = 1536;
  }

  else if (v3 == 3)
  {
    v4 = 1540;
  }

  else
  {
    v4 = 1541;
  }

  sub_1C6E16800();
  swift_allocError();
  *v6 = v4;
  *(v6 + 8) = 0;
  *(v6 + 16) = 3;
  swift_willThrow();
  return v4;
}

uint64_t Feature.stringList.getter()
{
  v2 = sub_1C6EE4AE0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v30 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 8);
  v6 = *(v0 + 16);
  if (*(v0 + 16))
  {
    v7 = 4;
  }

  else
  {
    v7 = 0;
  }

  v8 = (v5 >> 60) & 3 | v7;
  if (v8 <= 2)
  {
    v24 = 1025;
    if (v8 != 1)
    {
      v24 = 1026;
    }

    if (v8)
    {
      v11 = v24;
    }

    else
    {
      v11 = 1027;
    }

    goto LABEL_24;
  }

  if (v8 > 4)
  {
    if (v8 == 5)
    {
      v11 = 1030;
    }

    else
    {
      v11 = 1024;
    }

    goto LABEL_24;
  }

  if (v8 != 3)
  {
    v11 = 1029;
LABEL_24:
    sub_1C6E16800();
    swift_allocError();
    *v25 = v11;
    *(v25 + 8) = 0;
    *(v25 + 16) = 3;
    swift_willThrow();
    return v11;
  }

  v9 = *v0;
  v10 = *(*v0 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (!v10)
  {
    return v11;
  }

  v27 = v1;
  v28 = v5;
  v29 = v6;
  v31 = MEMORY[0x1E69E7CC0];

  result = sub_1C6E15A10(0, v10, 0);
  v13 = 0;
  v11 = v31;
  v14 = (v9 + 40);
  while (v13 < *(v9 + 16))
  {
    v15 = *(v14 - 1);
    v16 = *v14;
    sub_1C6E00D18(v15, *v14);
    sub_1C6EE4AD0();
    v17 = sub_1C6EE4AB0();
    if (!v18)
    {
      sub_1C6E00C60(v9, v28, v29);
      sub_1C6E16800();
      swift_allocError();
      *v26 = v15;
      *(v26 + 8) = v16;
      *(v26 + 16) = 1;
      swift_willThrow();

      return v11;
    }

    v19 = v17;
    v20 = v18;
    result = sub_1C6DF1134(v15, v16);
    v31 = v11;
    v22 = *(v11 + 16);
    v21 = *(v11 + 24);
    if (v22 >= v21 >> 1)
    {
      result = sub_1C6E15A10((v21 > 1), v22 + 1, 1);
      v11 = v31;
    }

    ++v13;
    *(v11 + 16) = v22 + 1;
    v23 = v11 + 16 * v22;
    *(v23 + 32) = v19;
    *(v23 + 40) = v20;
    v14 += 2;
    if (v10 == v13)
    {
      sub_1C6E00C60(v9, v28, v29);
      return v11;
    }
  }

  __break(1u);
  return result;
}

void sub_1C6E1423C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 dataType];
  if (v4 != 65552)
  {
    if (v4 == 131104)
    {
      v14 = [a1 count];
      if ((v14 & 0x8000000000000000) == 0)
      {
        v15 = v14;
        if (v14)
        {
          v27 = MEMORY[0x1E69E7CC0];
          sub_1C6E15AD0(0, v14, 0);
          v16 = 0;
          v8 = v27;
          do
          {
            v17 = [a1 objectAtIndexedSubscript_];
            v18 = [v17 intValue];

            v20 = *(v27 + 16);
            v19 = *(v27 + 24);
            if (v20 >= v19 >> 1)
            {
              sub_1C6E15AD0((v19 > 1), v20 + 1, 1);
            }

            ++v16;
            *(v27 + 16) = v20 + 1;
            *(v27 + 4 * v20 + 32) = v18;
          }

          while (v15 != v16);

          v25 = 0;
          v24 = 0x1000000000000000;
          goto LABEL_24;
        }

        v25 = 0;
        v24 = 0x1000000000000000;
LABEL_23:
        v8 = MEMORY[0x1E69E7CC0];
        goto LABEL_24;
      }

      __break(1u);
    }

    else
    {
      if (v4 != 65568)
      {
        if (qword_1EDEF8F80 == -1)
        {
LABEL_20:
          sub_1C6EE4EC0();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
          v21 = swift_allocObject();
          *(v21 + 16) = xmmword_1C6EE6590;
          [a1 dataType];
          type metadata accessor for MLMultiArrayDataType(0);
          sub_1C6EE52F0();
          *(v21 + 56) = MEMORY[0x1E69E6158];
          *(v21 + 64) = sub_1C6DF10E0();
          *(v21 + 32) = 0;
          *(v21 + 40) = 0xE000000000000000;
          sub_1C6EE4730();

          v22 = [a1 dataType];
          sub_1C6E16800();
          swift_allocError();
          *v23 = v22;
          *(v23 + 8) = 0;
          *(v23 + 16) = 2;
          swift_willThrow();

          return;
        }

LABEL_27:
        swift_once();
        goto LABEL_20;
      }

      v5 = [a1 count];
      if ((v5 & 0x8000000000000000) == 0)
      {
        v6 = v5;
        if (v5)
        {
          v26 = MEMORY[0x1E69E7CC0];
          sub_1C6E15AF0(0, v5, 0);
          v7 = 0;
          v8 = v26;
          do
          {
            v9 = [a1 objectAtIndexedSubscript_];
            [v9 floatValue];
            v11 = v10;

            v13 = *(v26 + 16);
            v12 = *(v26 + 24);
            if (v13 >= v12 >> 1)
            {
              sub_1C6E15AF0((v12 > 1), v13 + 1, 1);
            }

            ++v7;
            *(v26 + 16) = v13 + 1;
            *(v26 + 4 * v13 + 32) = v11;
          }

          while (v6 != v7);

          v24 = 0;
          v25 = 0;
          goto LABEL_24;
        }

        v24 = 0;
        v25 = 0;
        goto LABEL_23;
      }
    }

    __break(1u);
    goto LABEL_27;
  }

  v8 = sub_1C6E14628();

  v24 = 0;
  v25 = 1;
LABEL_24:
  *a2 = v8;
  *(a2 + 8) = v24;
  *(a2 + 16) = v25;
}

uint64_t sub_1C6E14628()
{
  v1 = v0;
  if ([v0 dataType] == 65552)
  {
    v2 = [v0 count];
    if ((v2 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v3 = v2;
      if (v2)
      {
        v4 = sub_1C6EE4D00();
        *(v4 + 16) = v3;
        bzero((v4 + 32), 2 * v3);
      }

      else
      {
        v4 = MEMORY[0x1E69E7CC0];
      }

      v5 = [v1 dataPointer];
      if (!v3)
      {
        return v4;
      }

      if (v3 <= *(v4 + 16))
      {
        if (v3 < 4 || (v4 - v5) >= 0xFFFFFFFFFFFFFFE0)
        {
          v6 = 0;
LABEL_11:
          v7 = v3 - v6;
          v8 = 2 * v6;
          v9 = (2 * v6 + v4 + 32);
          v10 = &v5[v8];
          do
          {
            v11 = *v10;
            v10 += 2;
            *v9++ = v11;
            --v7;
          }

          while (v7);
          return v4;
        }

        if (v3 >= 0x10)
        {
          v6 = v3 & 0x7FFFFFFFFFFFFFF0;
          v13 = (v5 + 16);
          v14 = (v4 + 48);
          v15 = v3 & 0x7FFFFFFFFFFFFFF0;
          do
          {
            v16 = *v13;
            *(v14 - 1) = *(v13 - 1);
            *v14 = v16;
            v13 += 2;
            v14 += 2;
            v15 -= 16;
          }

          while (v15);
          if (v3 == v6)
          {
            return v4;
          }

          if ((v3 & 0xC) == 0)
          {
            goto LABEL_11;
          }
        }

        else
        {
          v6 = 0;
        }

        v17 = v6;
        v6 = v3 & 0x7FFFFFFFFFFFFFFCLL;
        v18 = &v5[2 * v17];
        v19 = (2 * v17 + v4 + 32);
        v20 = v17 - (v3 & 0x7FFFFFFFFFFFFFFCLL);
        do
        {
          v21 = *v18;
          v18 += 8;
          *v19++ = v21;
          v20 += 4;
        }

        while (v20);
        if (v3 == v6)
        {
          return v4;
        }

        goto LABEL_11;
      }
    }

    __break(1u);
  }

  result = sub_1C6EE5300();
  __break(1u);
  return result;
}

uint64_t Feature.prettyJSONString.getter()
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = sub_1C6EE4AE0();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = *v0;
  v4 = *(v0 + 8);
  v5 = *(v0 + 16);
  v6 = objc_opt_self();
  sub_1C6E14B38(v3, v4, v5, &v25);
  __swift_project_boxed_opaque_existential_1Tm(&v25, v28);
  v7 = sub_1C6EE54A0();
  __swift_destroy_boxed_opaque_existential_1Tm(&v25);
  v25 = 0;
  v8 = [v6 dataWithJSONObject:v7 options:3 error:&v25];
  swift_unknownObjectRelease();
  v9 = v25;
  if (v8)
  {
    v10 = sub_1C6EE4220();
    v12 = v11;

    sub_1C6EE4AD0();
    v13 = sub_1C6EE4AB0();
    v15 = v14;
    sub_1C6DF1134(v10, v12);
    if (!v15)
    {
      sub_1C6EE4EC0();
      sub_1C6E184F4(0, &qword_1EDEF6750, 0x1E69E9BF8);
      v22 = sub_1C6EE4FC0();
      sub_1C6EE4730();

      v25 = v3;
      v26 = v4;
      v27 = v5;
      sub_1C6E00CBC(v3, v4, v5);
      v13 = sub_1C6EE4AF0();
    }
  }

  else
  {
    v16 = v9;
    v17 = sub_1C6EE4050();

    swift_willThrow();
    sub_1C6EE4EC0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1C6EE6590;
    v25 = 0;
    v26 = 0xE000000000000000;
    swift_getErrorValue();
    sub_1C6EE5480();
    v19 = v25;
    v20 = v26;
    *(v18 + 56) = MEMORY[0x1E69E6158];
    *(v18 + 64) = sub_1C6DF10E0();
    *(v18 + 32) = v19;
    *(v18 + 40) = v20;
    sub_1C6E184F4(0, &qword_1EDEF6750, 0x1E69E9BF8);
    v21 = sub_1C6EE4FC0();
    sub_1C6EE4730();

    v25 = v3;
    v26 = v4;
    v27 = v5;
    sub_1C6E00CBC(v3, v4, v5);
    v13 = sub_1C6EE4AF0();
  }

  v23 = *MEMORY[0x1E69E9840];
  return v13;
}

uint64_t sub_1C6E14B38@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  v8 = sub_1C6EE4AE0();
  v9 = *(*(v8 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = (a2 >> 60) & 3 | (4 * (a3 & 1));
  if (v11 <= 2)
  {
    if (v11)
    {
      if (v11 == 1)
      {
        v23 = &qword_1EC1F7918;
        v24 = &qword_1C6EE6BD0;
      }

      else
      {
        v23 = &qword_1EC1F7900;
        v24 = &qword_1C6EE6BC8;
      }
    }

    else
    {
      v23 = &qword_1EC1F7930;
      v24 = &qword_1C6EE6BD8;
    }

LABEL_20:
    a4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(v23, v24);
    *a4 = a1;
  }

  if (v11 <= 4)
  {
    if (v11 == 3)
    {
      v12 = *(a1 + 16);
      v13 = MEMORY[0x1E69E7CC0];
      if (v12)
      {
        v25 = MEMORY[0x1E69E7CC0];
        sub_1C6E15B10(0, v12, 0);
        v13 = v25;
        v14 = (a1 + 40);
        do
        {
          v15 = *(v14 - 1);
          v16 = *v14;
          sub_1C6E00D18(v15, *v14);
          sub_1C6EE4AD0();
          v17 = sub_1C6EE4AB0();
          v19 = v18;
          sub_1C6DF1134(v15, v16);
          v21 = *(v25 + 16);
          v20 = *(v25 + 24);
          if (v21 >= v20 >> 1)
          {
            sub_1C6E15B10((v20 > 1), v21 + 1, 1);
          }

          v14 += 2;
          *(v25 + 16) = v21 + 1;
          v22 = v25 + 16 * v21;
          *(v22 + 32) = v17;
          *(v22 + 40) = v19;
          --v12;
        }

        while (v12);
      }

      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7AD8, &qword_1C6EE7878);
      a4[3] = result;
      *a4 = v13;
      return result;
    }

    v23 = &qword_1EC1F78D0;
    v24 = &qword_1C6EE6BB8;
    goto LABEL_20;
  }

  if (v11 == 5)
  {
    a4[3] = MEMORY[0x1E6969080];
    *a4 = a1;
    a4[1] = a2 & 0xCFFFFFFFFFFFFFFFLL;

    return sub_1C6E00D18(a1, a2 & 0xCFFFFFFFFFFFFFFFLL);
  }

  else
  {
    a4[3] = MEMORY[0x1E69E6158];
    *a4 = 1701736302;
    a4[1] = 0xE400000000000000;
  }

  return result;
}

char *static Feature.intList(_:)@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 2);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v5 = result;
    v11 = MEMORY[0x1E69E7CC0];
    result = sub_1C6E15AD0(0, v3, 0);
    v4 = v11;
    v6 = (v5 + 32);
    while (1)
    {
      v8 = *v6++;
      v7 = v8;
      if (v8 < 0xFFFFFFFF80000000)
      {
        break;
      }

      if (v7 > 0x7FFFFFFF)
      {
        goto LABEL_10;
      }

      v12 = v4;
      v10 = *(v4 + 16);
      v9 = *(v4 + 24);
      if (v10 >= v9 >> 1)
      {
        result = sub_1C6E15AD0((v9 > 1), v10 + 1, 1);
        v4 = v12;
      }

      *(v4 + 16) = v10 + 1;
      *(v4 + 4 * v10 + 32) = v7;
      if (!--v3)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
LABEL_8:
    *a2 = v4;
    *(a2 + 8) = 0x1000000000000000;
    *(a2 + 16) = 0;
  }

  return result;
}

uint64_t static Feature.int(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9AC0, &qword_1C6EE6A50);
  result = swift_allocObject();
  *(result + 16) = xmmword_1C6EE6590;
  if (a1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a1 <= 0x7FFFFFFF)
  {
    *(result + 32) = a1;
    *a2 = result;
    *(a2 + 8) = 0x1000000000000000;
    *(a2 + 16) = 0;
    return result;
  }

  __break(1u);
  return result;
}

double static Feature.float(_:)@<D0>(uint64_t a1@<X8>, float a2@<S0>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9AD0, &qword_1C6EE6C30);
  v4 = swift_allocObject();
  *&result = 1;
  *(v4 + 16) = xmmword_1C6EE6590;
  *(v4 + 32) = a2;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  return result;
}

double static Feature.int32(_:)@<D0>(int a1@<W0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9AC0, &qword_1C6EE6A50);
  v4 = swift_allocObject();
  *&result = 1;
  *(v4 + 16) = xmmword_1C6EE6590;
  *(v4 + 32) = a1;
  *a2 = v4;
  *(a2 + 8) = 0x1000000000000000;
  *(a2 + 16) = 0;
  return result;
}

double static Feature.int64(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F79C8, &qword_1C6EE6C38);
  v4 = swift_allocObject();
  *&result = 1;
  *(v4 + 16) = xmmword_1C6EE6590;
  *(v4 + 32) = a1;
  *a2 = v4;
  *(a2 + 8) = 0x2000000000000000;
  *(a2 + 16) = 0;
  return result;
}

uint64_t static Feature.bytes(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F79D0, &qword_1C6EE6C40);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C6EE6590;
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  *a3 = v6;
  *(a3 + 8) = 0x3000000000000000;
  *(a3 + 16) = 0;

  return sub_1C6E00D18(a1, a2);
}

uint64_t static Feature.string(_:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C6EE4AE0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6EE4AD0();
  v7 = sub_1C6EE4AA0();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  if (v9 >> 60 == 15)
  {
    result = 0;
    v11 = -1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F79D0, &qword_1C6EE6C40);
    result = swift_allocObject();
    v11 = 0;
    *(result + 16) = xmmword_1C6EE6590;
    *(result + 32) = v7;
    *(result + 40) = v9;
  }

  *a1 = result;
  *(a1 + 8) = 0x3000000000000000;
  *(a1 + 16) = v11;
  return result;
}

double static Feature.float16(_:)@<D0>(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v2 = a2.n128_u16[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F79D8, &qword_1C6EE6C48);
  v4 = swift_allocObject();
  *&result = 1;
  *(v4 + 16) = xmmword_1C6EE6590;
  *(v4 + 32) = v2;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  return result;
}

uint64_t Feature.intList.getter()
{
  if (*(v0 + 16))
  {
    v1 = 4;
  }

  else
  {
    v1 = 0;
  }

  v2 = (v0[1] >> 60) & 3 | v1;
  if (v2 > 2)
  {
    v3 = 256;
    if (v2 == 5)
    {
      v3 = 262;
    }

    v4 = 260;
    if (v2 != 3)
    {
      v4 = 261;
    }

    if (v2 <= 4)
    {
      v5 = v4;
    }

    else
    {
      v5 = v3;
    }

    goto LABEL_12;
  }

  if (!v2)
  {
    v5 = 259;
LABEL_12:
    sub_1C6E16800();
    swift_allocError();
    *v6 = v5;
    *(v6 + 8) = 0;
    *(v6 + 16) = 3;
    return swift_willThrow();
  }

  if (v2 != 1)
  {
    v5 = 258;
    goto LABEL_12;
  }

  v8 = *v0;
  v9 = *(*v0 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1C6E15A90(0, v9, 0);
    result = v15;
    v10 = (v8 + 32);
    v11 = *(v15 + 16);
    do
    {
      v13 = *v10++;
      v12 = v13;
      v16 = result;
      v14 = *(result + 24);
      if (v11 >= v14 >> 1)
      {
        sub_1C6E15A90((v14 > 1), v11 + 1, 1);
        result = v16;
      }

      *(result + 16) = v11 + 1;
      *(result + 8 * v11++ + 32) = v12;
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t Feature.int.getter()
{
  if (*(v0 + 16))
  {
    v1 = 4;
  }

  else
  {
    v1 = 0;
  }

  v2 = (*(v0 + 8) >> 60) & 3 | v1;
  if (v2 > 2)
  {
    v3 = 256;
    if (v2 == 5)
    {
      v3 = 262;
    }

    v4 = 260;
    if (v2 != 3)
    {
      v4 = 261;
    }

    if (v2 <= 4)
    {
      v5 = v4;
    }

    else
    {
      v5 = v3;
    }

    goto LABEL_12;
  }

  if (!v2)
  {
    v5 = 259;
LABEL_12:
    sub_1C6E16800();
    swift_allocError();
    *v6 = v5;
    *(v6 + 8) = 0;
    *(v6 + 16) = 3;
    return swift_willThrow();
  }

  if (v2 != 1)
  {
    v5 = 258;
    goto LABEL_12;
  }

  if (!*(*v0 + 16))
  {
    v5 = 257;
    goto LABEL_12;
  }

  return *(*v0 + 32);
}

void Feature.float.getter()
{
  if (*(v0 + 16))
  {
    v1 = 4;
  }

  else
  {
    v1 = 0;
  }

  v2 = (*(v0 + 8) >> 60) & 3 | v1;
  if (v2 > 2)
  {
    v3 = 768;
    if (v2 == 5)
    {
      v3 = 774;
    }

    v4 = 772;
    if (v2 != 3)
    {
      v4 = 773;
    }

    if (v2 <= 4)
    {
      v5 = v4;
    }

    else
    {
      v5 = v3;
    }

    goto LABEL_16;
  }

  if (v2)
  {
    if (v2 == 1)
    {
      v5 = 769;
    }

    else
    {
      v5 = 770;
    }

LABEL_16:
    sub_1C6E16800();
    swift_allocError();
    *v6 = v5;
    *(v6 + 8) = 0;
    v7 = 3;
LABEL_17:
    *(v6 + 16) = v7;
    swift_willThrow();
    return;
  }

  if (!*(*v0 + 16))
  {
    sub_1C6E16800();
    swift_allocError();
    *v6 = 0;
    *(v6 + 8) = 0;
    v7 = 4;
    goto LABEL_17;
  }

  v8 = *(*v0 + 32);
}

uint64_t Feature.int32.getter()
{
  if (*(v0 + 16))
  {
    v1 = 4;
  }

  else
  {
    v1 = 0;
  }

  v2 = (*(v0 + 8) >> 60) & 3 | v1;
  if (v2 > 2)
  {
    v3 = 256;
    if (v2 == 5)
    {
      v3 = 262;
    }

    v4 = 260;
    if (v2 != 3)
    {
      v4 = 261;
    }

    if (v2 <= 4)
    {
      v5 = v4;
    }

    else
    {
      v5 = v3;
    }

    goto LABEL_12;
  }

  if (!v2)
  {
    v5 = 259;
LABEL_12:
    sub_1C6E16800();
    swift_allocError();
    *v6 = v5;
    *(v6 + 8) = 0;
    v7 = 3;
LABEL_13:
    *(v6 + 16) = v7;
    return swift_willThrow();
  }

  if (v2 != 1)
  {
    v5 = 258;
    goto LABEL_12;
  }

  if (!*(*v0 + 16))
  {
    sub_1C6E16800();
    swift_allocError();
    *v6 = 0;
    *(v6 + 8) = 0;
    v7 = 4;
    goto LABEL_13;
  }

  return *(*v0 + 32);
}

uint64_t Feature.int64.getter()
{
  if (*(v0 + 16))
  {
    v1 = 4;
  }

  else
  {
    v1 = 0;
  }

  v2 = (*(v0 + 8) >> 60) & 3 | v1;
  if (v2 > 2)
  {
    v3 = 512;
    if (v2 == 5)
    {
      v3 = 518;
    }

    v4 = 516;
    if (v2 != 3)
    {
      v4 = 517;
    }

    if (v2 <= 4)
    {
      v5 = v4;
    }

    else
    {
      v5 = v3;
    }

    goto LABEL_12;
  }

  if (!v2)
  {
    v5 = 515;
    goto LABEL_12;
  }

  if (v2 == 1)
  {
    v5 = 513;
LABEL_12:
    sub_1C6E16800();
    swift_allocError();
    *v6 = v5;
    *(v6 + 8) = 0;
    v7 = 3;
LABEL_13:
    *(v6 + 16) = v7;
    return swift_willThrow();
  }

  if (!*(*v0 + 16))
  {
    sub_1C6E16800();
    swift_allocError();
    *v6 = 0;
    *(v6 + 8) = 0;
    v7 = 4;
    goto LABEL_13;
  }

  return *(*v0 + 32);
}

uint64_t Feature.bytes.getter()
{
  result = sub_1C6E17698();
  if (!v0)
  {
    v3 = result;
    sub_1C6E00D18(result, v2);
    return v3;
  }

  return result;
}

char *Feature.string.getter()
{
  v2 = sub_1C6EE4AE0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v4) = *(v0 + 16);
  v11 = *v0;
  v12 = v4;
  v6 = sub_1C6E17698();
  if (!v1)
  {
    v8 = v6;
    v9 = v7;
    sub_1C6E00D18(v6, v7);
    sub_1C6EE4AD0();
    v5 = sub_1C6EE4AB0();
    sub_1C6DF1134(v8, v9);
  }

  return v5;
}

void Feature.float16.getter()
{
  if (*(v0 + 16))
  {
    v1 = 4;
  }

  else
  {
    v1 = 0;
  }

  v2 = (*(v0 + 8) >> 60) & 3 | v1;
  if (v2 <= 2)
  {
    v4 = 1281;
    if (v2 != 1)
    {
      v4 = 1282;
    }

    if (v2)
    {
      v3 = v4;
    }

    else
    {
      v3 = 1283;
    }

    goto LABEL_16;
  }

  if (v2 > 4)
  {
    if (v2 == 5)
    {
      v3 = 1286;
    }

    else
    {
      v3 = 1280;
    }

    goto LABEL_16;
  }

  if (v2 == 3)
  {
    v3 = 1284;
LABEL_16:
    sub_1C6E16800();
    swift_allocError();
    *v5 = v3;
    *(v5 + 8) = 0;
    v6 = 3;
LABEL_17:
    *(v5 + 16) = v6;
    swift_willThrow();
    return;
  }

  if (!*(*v0 + 16))
  {
    sub_1C6E16800();
    swift_allocError();
    *v5 = 0;
    *(v5 + 8) = 0;
    v6 = 4;
    goto LABEL_17;
  }

  v7 = *(*v0 + 32);
}

char *sub_1C6E15A10(char *a1, int64_t a2, char a3)
{
  result = sub_1C6ECCD94(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1C6E15A30(size_t a1, int64_t a2, char a3)
{
  result = sub_1C6ECCEA0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C6E15A50(void *a1, int64_t a2, char a3)
{
  result = sub_1C6ECCEC4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C6E15A70(void *a1, int64_t a2, char a3)
{
  result = sub_1C6ECCEE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C6E15A90(char *a1, int64_t a2, char a3)
{
  result = sub_1C6ECD040(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C6E15AB0(char *a1, int64_t a2, char a3)
{
  result = sub_1C6ECD144(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C6E15AD0(char *a1, int64_t a2, char a3)
{
  result = sub_1C6ECD250(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C6E15AF0(char *a1, int64_t a2, char a3)
{
  result = sub_1C6ECD354(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C6E15B10(void *a1, int64_t a2, char a3)
{
  result = sub_1C6ECD458(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1C6E15B30(size_t a1, int64_t a2, char a3)
{
  result = sub_1C6ECD58C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C6E15B50(void *a1, int64_t a2, char a3)
{
  result = sub_1C6ECD5B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1C6E15B70(size_t a1, int64_t a2, char a3)
{
  result = sub_1C6ECD6F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C6E15B90(void *a1, int64_t a2, char a3)
{
  result = sub_1C6ECD71C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1C6E15BB0(size_t a1, int64_t a2, char a3)
{
  result = sub_1C6ECD860(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1C6E15BD0(size_t a1, int64_t a2, char a3)
{
  result = sub_1C6ECCD6C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1C6E15BF0(size_t a1, int64_t a2, char a3)
{
  result = sub_1C6ECD884(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C6E15C10(char *a1, int64_t a2, char a3)
{
  result = sub_1C6ECDA88(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1C6E15C30(size_t a1, int64_t a2, char a3)
{
  result = sub_1C6ECDB94(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t _s18ComputationalGraph7FeatureO2eeoiySbAC_ACtFZ_0(uint64_t result, uint64_t a2)
{
  v3 = *result;
  v2 = *(result + 8);
  v4 = *(result + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4)
  {
    v8 = 4;
  }

  else
  {
    v8 = 0;
  }

  v9 = (v2 >> 60) & 3 | v8;
  if (v9 > 2)
  {
    if (v9 > 4)
    {
      if (v9 == 5)
      {
        if (*(a2 + 16))
        {
          v17 = 4;
        }

        else
        {
          v17 = 0;
        }

        if (((v5 >> 60) & 3 | v17) == 5)
        {
          sub_1C6E00CBC(*a2, *(a2 + 8), v7);
          sub_1C6E00CBC(v3, v2, v4);
          v11 = sub_1C6E6B56C(v3, v2 & 0xCFFFFFFFFFFFFFFFLL, v6, v5 & 0xCFFFFFFFFFFFFFFFLL);
          goto LABEL_34;
        }

        goto LABEL_84;
      }

      if (*(a2 + 16))
      {
        v34 = 4;
      }

      else
      {
        v34 = 0;
      }

      if (((v5 >> 60) & 3 | v34) == 6 && v6 == 0 && v5 == 0x2000000000000000)
      {
        sub_1C6E00C60(*result, v2, v4);
        v32 = 0;
        v33 = 0x2000000000000000;
        goto LABEL_86;
      }
    }

    else
    {
      if (v9 == 3)
      {
        if (*(a2 + 16))
        {
          v10 = 4;
        }

        else
        {
          v10 = 0;
        }

        if (((v5 >> 60) & 3 | v10) == 3)
        {
          sub_1C6E00CBC(*a2, *(a2 + 8), v7);
          sub_1C6E00CBC(v3, v2, v4);
          v11 = sub_1C6E597C0(v3, v6);
LABEL_34:
          v18 = v11;
          sub_1C6E00C60(v3, v2, v4);
          sub_1C6E00C60(v6, v5, v7);
          return v18 & 1;
        }

        goto LABEL_84;
      }

      if (*(a2 + 16))
      {
        v29 = 4;
      }

      else
      {
        v29 = 0;
      }

      if (((v5 >> 60) & 3 | v29) == 4)
      {
        v30 = *(v3 + 16);
        if (v30 == *(v6 + 16))
        {
          if (v30)
          {
            v31 = v3 == v6;
          }

          else
          {
            v31 = 1;
          }

          if (!v31)
          {
            v37 = (v3 + 32);
            v38 = (v6 + 32);
            while (v30)
            {
              if (*v37 != *v38)
              {
                goto LABEL_84;
              }

              ++v37;
              ++v38;
              if (!--v30)
              {
                goto LABEL_73;
              }
            }

            goto LABEL_93;
          }

          goto LABEL_73;
        }
      }
    }

LABEL_84:
    sub_1C6E00CBC(*a2, *(a2 + 8), v7);
    sub_1C6E00CBC(v3, v2, v4);
    sub_1C6E00C60(v3, v2, v4);
    sub_1C6E00C60(v6, v5, v7);
    return 0;
  }

  if (!v9)
  {
    if (*(a2 + 16))
    {
      v19 = 4;
    }

    else
    {
      v19 = 0;
    }

    if ((v5 >> 60) & 3 | v19)
    {
      goto LABEL_84;
    }

    v20 = *(v3 + 16);
    if (v20 != *(v6 + 16))
    {
      goto LABEL_84;
    }

    if (v20)
    {
      v21 = v3 == v6;
    }

    else
    {
      v21 = 1;
    }

    if (!v21)
    {
      v22 = (v3 + 32);
      v23 = (v6 + 32);
      while (v20)
      {
        if (*v22 != *v23)
        {
          goto LABEL_84;
        }

        ++v22;
        ++v23;
        if (!--v20)
        {
          goto LABEL_73;
        }
      }

      goto LABEL_94;
    }

    goto LABEL_73;
  }

  if (v9 != 1)
  {
    if (*(a2 + 16))
    {
      v24 = 4;
    }

    else
    {
      v24 = 0;
    }

    if (((v5 >> 60) & 3 | v24) != 2)
    {
      goto LABEL_84;
    }

    v25 = *(v3 + 16);
    if (v25 != *(v6 + 16))
    {
      goto LABEL_84;
    }

    if (v25)
    {
      v26 = v3 == v6;
    }

    else
    {
      v26 = 1;
    }

    if (!v26)
    {
      v27 = (v3 + 32);
      v28 = (v6 + 32);
      while (v25)
      {
        if (*v27 != *v28)
        {
          goto LABEL_84;
        }

        ++v27;
        ++v28;
        if (!--v25)
        {
          goto LABEL_73;
        }
      }

      goto LABEL_92;
    }

LABEL_73:
    sub_1C6E00CBC(*a2, *(a2 + 8), v7);
    sub_1C6E00CBC(v3, v2, v4);
    sub_1C6E00C60(v3, v2, v4);
    v32 = v6;
    v33 = v5;
LABEL_86:
    sub_1C6E00C60(v32, v33, v7);
    return 1;
  }

  if (*(a2 + 16))
  {
    v12 = 4;
  }

  else
  {
    v12 = 0;
  }

  if (((v5 >> 60) & 3 | v12) != 1)
  {
    goto LABEL_84;
  }

  v13 = *(v3 + 16);
  if (v13 != *(v6 + 16))
  {
    goto LABEL_84;
  }

  if (v13)
  {
    v14 = v3 == v6;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    goto LABEL_73;
  }

  v15 = (v3 + 32);
  v16 = (v6 + 32);
  while (v13)
  {
    if (*v15 != *v16)
    {
      goto LABEL_84;
    }

    ++v15;
    ++v16;
    if (!--v13)
    {
      goto LABEL_73;
    }
  }

  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
  return result;
}

unint64_t sub_1C6E16018()
{
  result = qword_1EC1F78B8;
  if (!qword_1EC1F78B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F78B8);
  }

  return result;
}

unint64_t sub_1C6E1606C()
{
  result = qword_1EC1F78C0;
  if (!qword_1EC1F78C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F78C0);
  }

  return result;
}

unint64_t sub_1C6E160C0()
{
  result = qword_1EDEF61D0;
  if (!qword_1EDEF61D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEF61D0);
  }

  return result;
}

unint64_t sub_1C6E16114()
{
  result = qword_1EC1F78C8;
  if (!qword_1EC1F78C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F78C8);
  }

  return result;
}

unint64_t sub_1C6E16168()
{
  result = qword_1EC1F78D8;
  if (!qword_1EC1F78D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1F78D0, &qword_1C6EE6BB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F78D8);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1C6E1622C()
{
  result = qword_1EC1F78E0;
  if (!qword_1EC1F78E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F78E0);
  }

  return result;
}

unint64_t sub_1C6E16280()
{
  result = qword_1EC1F78F8;
  if (!qword_1EC1F78F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F78F8);
  }

  return result;
}

unint64_t sub_1C6E162D4()
{
  result = qword_1EC1F7908;
  if (!qword_1EC1F7908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1F7900, &qword_1C6EE6BC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7908);
  }

  return result;
}

unint64_t sub_1C6E16350()
{
  result = qword_1EC1F7910;
  if (!qword_1EC1F7910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7910);
  }

  return result;
}

unint64_t sub_1C6E163A4()
{
  result = qword_1EC1F7920;
  if (!qword_1EC1F7920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1F7918, &qword_1C6EE6BD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7920);
  }

  return result;
}

unint64_t sub_1C6E16420()
{
  result = qword_1EC1F7928;
  if (!qword_1EC1F7928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7928);
  }

  return result;
}

unint64_t sub_1C6E16474()
{
  result = qword_1EC1F7938;
  if (!qword_1EC1F7938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1F7930, &qword_1C6EE6BD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7938);
  }

  return result;
}

unint64_t sub_1C6E164F0()
{
  result = qword_1EC1F7940;
  if (!qword_1EC1F7940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7940);
  }

  return result;
}

unint64_t sub_1C6E16544()
{
  result = qword_1EC1F7990;
  if (!qword_1EC1F7990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7990);
  }

  return result;
}

unint64_t sub_1C6E16598()
{
  result = qword_1EC1F7998;
  if (!qword_1EC1F7998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1F78D0, &qword_1C6EE6BB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7998);
  }

  return result;
}

uint64_t sub_1C6E16614(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1F78E8, &qword_1C6EE6BC0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C6E1668C()
{
  result = qword_1EC1F79A8;
  if (!qword_1EC1F79A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1F7900, &qword_1C6EE6BC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F79A8);
  }

  return result;
}

unint64_t sub_1C6E16708()
{
  result = qword_1EC1F79B0;
  if (!qword_1EC1F79B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1F7918, &qword_1C6EE6BD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F79B0);
  }

  return result;
}

unint64_t sub_1C6E16784()
{
  result = qword_1EC1F79B8;
  if (!qword_1EC1F79B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1F7930, &qword_1C6EE6BD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F79B8);
  }

  return result;
}

unint64_t sub_1C6E16800()
{
  result = qword_1EC1F79C0;
  if (!qword_1EC1F79C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F79C0);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1C6E168E4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C6EE54B0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x3233746E69 && a2 == 0xE500000000000000 || (sub_1C6EE54B0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x3436746E69 && a2 == 0xE500000000000000 || (sub_1C6EE54B0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74616F6C66 && a2 == 0xE500000000000000 || (sub_1C6EE54B0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7365747962 && a2 == 0xE500000000000000 || (sub_1C6EE54B0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x363174616F6C66 && a2 == 0xE700000000000000 || (sub_1C6EE54B0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x5F363174616F6C66 && a2 == 0xEE0079636167656CLL)
  {

    return 6;
  }

  else
  {
    v6 = sub_1C6EE54B0();

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

uint64_t sub_1C6E16B24(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7AE8, &qword_1C6EE7948);
  v69 = *(v2 - 8);
  v70 = v2;
  v3 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v73 = &v54[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7AF0, &qword_1C6EE7950);
  v67 = *(v5 - 8);
  v68 = v5;
  v6 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v75 = &v54[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7AF8, &qword_1C6EE7958);
  v9 = *(v8 - 8);
  v65 = v8;
  v66 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v72 = &v54[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7B00, &qword_1C6EE7960);
  v13 = *(v12 - 8);
  v63 = v12;
  v64 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v71 = &v54[-v15];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7B08, &qword_1C6EE7968);
  v61 = *(v16 - 8);
  v62 = v16;
  v17 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v74 = &v54[-v18];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7B10, &qword_1C6EE7970);
  v59 = *(v19 - 8);
  v60 = v19;
  v20 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v54[-v21];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7B18, &qword_1C6EE7978);
  v58 = *(v23 - 8);
  v24 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v54[-v25];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7B20, &qword_1C6EE7980);
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v54[-v30];
  v32 = a1[3];
  v33 = a1[4];
  v76 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v32);
  sub_1C6E18658();
  v34 = v77;
  sub_1C6EE55B0();
  if (v34)
  {
    goto LABEL_18;
  }

  v56 = v23;
  v35 = v74;
  v36 = v75;
  v57 = v28;
  v37 = v27;
  v77 = v31;
  v38 = sub_1C6EE53E0();
  if (*(v38 + 16) != 1 || (v39 = *(v38 + 32), v39 == 7))
  {
    v43 = sub_1C6EE5210();
    swift_allocError();
    v45 = v44;
    v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7988, &unk_1C6EE6C20) + 48);
    *v45 = &type metadata for Feature.DataType;
    v47 = v77;
    sub_1C6EE5380();
    sub_1C6EE5200();
    (*(*(v43 - 8) + 104))(v45, *MEMORY[0x1E69E6AF8], v43);
    swift_willThrow();
    (*(v57 + 8))(v47, v37);
    swift_unknownObjectRelease();
LABEL_18:
    __swift_destroy_boxed_opaque_existential_1Tm(v76);
    return 0;
  }

  v55 = *(v38 + 32);
  if (v39 <= 2)
  {
    if (v39)
    {
      if (v39 == 1)
      {
        v79 = 1;
        sub_1C6E18850();
        v48 = v77;
        sub_1C6EE5370();
        (*(v59 + 8))(v22, v60);
      }

      else
      {
        v80 = 2;
        sub_1C6E187FC();
        v48 = v77;
        sub_1C6EE5370();
        (*(v61 + 8))(v35, v62);
      }
    }

    else
    {
      v78 = 0;
      sub_1C6E188A4();
      v48 = v77;
      sub_1C6EE5370();
      (*(v58 + 8))(v26, v56);
    }

    (*(v57 + 8))(v48, v27);
  }

  else if (v39 > 4)
  {
    v49 = v57;
    if (v39 == 5)
    {
      v83 = 5;
      sub_1C6E18700();
      v50 = v77;
      sub_1C6EE5370();
      (*(v67 + 8))(v36, v68);
    }

    else
    {
      v84 = 6;
      sub_1C6E186AC();
      v52 = v73;
      v50 = v77;
      sub_1C6EE5370();
      (*(v69 + 8))(v52, v70);
    }

    (*(v49 + 8))(v50, v27);
  }

  else
  {
    v40 = v57;
    if (v39 == 3)
    {
      v81 = 3;
      sub_1C6E187A8();
      v41 = v71;
      v42 = v77;
      sub_1C6EE5370();
      (*(v64 + 8))(v41, v63);
    }

    else
    {
      v82 = 4;
      sub_1C6E18754();
      v51 = v72;
      v42 = v77;
      sub_1C6EE5370();
      (*(v66 + 8))(v51, v65);
    }

    (*(v40 + 8))(v42, v27);
  }

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v76);
  return v55;
}

uint64_t sub_1C6E17434(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C6EE54B0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73694C74616F6C66 && a2 == 0xE900000000000074 || (sub_1C6EE54B0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73694C3233746E69 && a2 == 0xE900000000000074 || (sub_1C6EE54B0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73694C3436746E69 && a2 == 0xE900000000000074 || (sub_1C6EE54B0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x73694C7365747962 && a2 == 0xE900000000000074 || (sub_1C6EE54B0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4C363174616F6C66 && a2 == 0xEB00000000747369 || (sub_1C6EE54B0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001C6EF7DF0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_1C6EE54B0();

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

uint64_t sub_1C6E17698()
{
  if (*(v0 + 16))
  {
    v1 = 4;
  }

  else
  {
    v1 = 0;
  }

  v2 = (v0[1] >> 60) & 3 | v1;
  if (v2 <= 2)
  {
    v6 = 1025;
    if (v2 != 1)
    {
      v6 = 1026;
    }

    if (v2)
    {
      v7 = v6;
    }

    else
    {
      v7 = 1027;
    }

    goto LABEL_18;
  }

  if (v2 > 4)
  {
    if (v2 == 5)
    {
      v7 = 1030;
    }

    else
    {
      v7 = 1024;
    }

    goto LABEL_18;
  }

  if (v2 != 3)
  {
    v7 = 1029;
LABEL_18:
    sub_1C6E16800();
    swift_allocError();
    *v8 = v7;
    *(v8 + 8) = 0;
    v9 = 3;
    goto LABEL_19;
  }

  v3 = *v0;
  if (*(*v0 + 16))
  {
    result = *(v3 + 32);
    v5 = *(v3 + 40);
    return result;
  }

  sub_1C6E16800();
  swift_allocError();
  *v8 = 0;
  *(v8 + 8) = 0;
  v9 = 4;
LABEL_19:
  *(v8 + 16) = v9;
  return swift_willThrow();
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_18ComputationalGraph7FeatureO(uint64_t a1)
{
  v1 = (*(a1 + 8) >> 60) & 3 | (4 * (*(a1 + 16) & 1));
  if (v1 <= 5)
  {
    return v1;
  }

  else
  {
    return (*a1 + 6);
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1C6E177F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FA && *(a1 + 17))
  {
    return (*a1 + 1018);
  }

  v3 = ((*(a1 + 8) >> 60) & 3 | (4 * *(a1 + 16))) ^ 0x3FF;
  if (v3 >= 0x3F9)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1C6E17844(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3F9)
  {
    *(result + 16) = 0;
    *result = a2 - 1018;
    *(result + 8) = 0;
    if (a3 >= 0x3FA)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FA)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (-a2 & 3) << 60;
      *(result + 16) = -a2 >> 2;
    }
  }

  return result;
}

uint64_t sub_1C6E178A4(uint64_t result, unsigned int a2)
{
  if (a2 < 6)
  {
    *(result + 8) = *(result + 8) & 0xCFFFFFFFFFFFFFFFLL | ((a2 & 3) << 60);
    *(result + 16) = a2 > 3;
  }

  else
  {
    *result = a2 - 6;
    *(result + 8) = 0x2000000000000000;
    *(result + 16) = 1;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18ComputationalGraph7FeatureO6ErrorsO(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_1C6E178F8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1C6E17940(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_1C6E17988(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1C6E17A80(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *sub_1C6E17AD0(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_1C6E17B70()
{
  result = qword_1EC1F79E0;
  if (!qword_1EC1F79E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F79E0);
  }

  return result;
}

unint64_t sub_1C6E17BC8()
{
  result = qword_1EC1F79E8;
  if (!qword_1EC1F79E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F79E8);
  }

  return result;
}

unint64_t sub_1C6E17C20()
{
  result = qword_1EC1F79F0;
  if (!qword_1EC1F79F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F79F0);
  }

  return result;
}

unint64_t sub_1C6E17C78()
{
  result = qword_1EC1F79F8;
  if (!qword_1EC1F79F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F79F8);
  }

  return result;
}

unint64_t sub_1C6E17CD0()
{
  result = qword_1EC1F7A00;
  if (!qword_1EC1F7A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7A00);
  }

  return result;
}

unint64_t sub_1C6E17D28()
{
  result = qword_1EC1F7A08;
  if (!qword_1EC1F7A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7A08);
  }

  return result;
}

unint64_t sub_1C6E17D80()
{
  result = qword_1EC1F7A10;
  if (!qword_1EC1F7A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7A10);
  }

  return result;
}

unint64_t sub_1C6E17DD8()
{
  result = qword_1EC1F7A18;
  if (!qword_1EC1F7A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7A18);
  }

  return result;
}

unint64_t sub_1C6E17E30()
{
  result = qword_1EC1F7A20;
  if (!qword_1EC1F7A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7A20);
  }

  return result;
}

unint64_t sub_1C6E17E88()
{
  result = qword_1EC1F7A28;
  if (!qword_1EC1F7A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7A28);
  }

  return result;
}

unint64_t sub_1C6E17EE0()
{
  result = qword_1EC1F7A30;
  if (!qword_1EC1F7A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7A30);
  }

  return result;
}

unint64_t sub_1C6E17F38()
{
  result = qword_1EC1F7A38;
  if (!qword_1EC1F7A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7A38);
  }

  return result;
}

unint64_t sub_1C6E17F90()
{
  result = qword_1EC1F7A40;
  if (!qword_1EC1F7A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7A40);
  }

  return result;
}

unint64_t sub_1C6E17FE8()
{
  result = qword_1EC1F7A48;
  if (!qword_1EC1F7A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7A48);
  }

  return result;
}

unint64_t sub_1C6E18040()
{
  result = qword_1EC1F7A50;
  if (!qword_1EC1F7A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7A50);
  }

  return result;
}

unint64_t sub_1C6E18098()
{
  result = qword_1EC1F7A58;
  if (!qword_1EC1F7A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7A58);
  }

  return result;
}

unint64_t sub_1C6E180F0()
{
  result = qword_1EC1F7A60;
  if (!qword_1EC1F7A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7A60);
  }

  return result;
}

unint64_t sub_1C6E18148()
{
  result = qword_1EC1F7A68;
  if (!qword_1EC1F7A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7A68);
  }

  return result;
}

unint64_t sub_1C6E181A0()
{
  result = qword_1EC1F7A70;
  if (!qword_1EC1F7A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7A70);
  }

  return result;
}

unint64_t sub_1C6E181F8()
{
  result = qword_1EC1F7A78;
  if (!qword_1EC1F7A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7A78);
  }

  return result;
}

unint64_t sub_1C6E18250()
{
  result = qword_1EC1F7A80;
  if (!qword_1EC1F7A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7A80);
  }

  return result;
}

unint64_t sub_1C6E182A8()
{
  result = qword_1EC1F7A88;
  if (!qword_1EC1F7A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7A88);
  }

  return result;
}

unint64_t sub_1C6E18300()
{
  result = qword_1EC1F7A90;
  if (!qword_1EC1F7A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7A90);
  }

  return result;
}

uint64_t sub_1C6E18354(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7A98, &qword_1C6EE7840);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6E183C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6E1842C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C6E1848C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7A98, &qword_1C6EE7840);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C6E184F4(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_1C6E1853C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6E185A4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_1C6E18604()
{
  result = qword_1EC1F7AE0;
  if (!qword_1EC1F7AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7AE0);
  }

  return result;
}

unint64_t sub_1C6E18658()
{
  result = qword_1EC1F7B28;
  if (!qword_1EC1F7B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7B28);
  }

  return result;
}

unint64_t sub_1C6E186AC()
{
  result = qword_1EC1F7B30;
  if (!qword_1EC1F7B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7B30);
  }

  return result;
}

unint64_t sub_1C6E18700()
{
  result = qword_1EC1F7B38;
  if (!qword_1EC1F7B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7B38);
  }

  return result;
}

unint64_t sub_1C6E18754()
{
  result = qword_1EC1F7B40;
  if (!qword_1EC1F7B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7B40);
  }

  return result;
}

unint64_t sub_1C6E187A8()
{
  result = qword_1EC1F7B48;
  if (!qword_1EC1F7B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7B48);
  }

  return result;
}

unint64_t sub_1C6E187FC()
{
  result = qword_1EC1F7B50;
  if (!qword_1EC1F7B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7B50);
  }

  return result;
}

unint64_t sub_1C6E18850()
{
  result = qword_1EC1F7B58;
  if (!qword_1EC1F7B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7B58);
  }

  return result;
}

unint64_t sub_1C6E188A4()
{
  result = qword_1EC1F7B60;
  if (!qword_1EC1F7B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7B60);
  }

  return result;
}

uint64_t sub_1C6E188F8(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1C6E18988(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C6E18AC0()
{
  result = qword_1EC1F7BA8;
  if (!qword_1EC1F7BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7BA8);
  }

  return result;
}

unint64_t sub_1C6E18B18()
{
  result = qword_1EC1F7BB0;
  if (!qword_1EC1F7BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7BB0);
  }

  return result;
}

unint64_t sub_1C6E18B70()
{
  result = qword_1EC1F7BB8;
  if (!qword_1EC1F7BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7BB8);
  }

  return result;
}

unint64_t sub_1C6E18BC8()
{
  result = qword_1EC1F7BC0;
  if (!qword_1EC1F7BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7BC0);
  }

  return result;
}

unint64_t sub_1C6E18C20()
{
  result = qword_1EC1F7BC8;
  if (!qword_1EC1F7BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7BC8);
  }

  return result;
}

unint64_t sub_1C6E18C78()
{
  result = qword_1EC1F7BD0;
  if (!qword_1EC1F7BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7BD0);
  }

  return result;
}

unint64_t sub_1C6E18CD0()
{
  result = qword_1EC1F7BD8;
  if (!qword_1EC1F7BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7BD8);
  }

  return result;
}

unint64_t sub_1C6E18D28()
{
  result = qword_1EC1F7BE0;
  if (!qword_1EC1F7BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7BE0);
  }

  return result;
}

unint64_t sub_1C6E18D80()
{
  result = qword_1EC1F7BE8;
  if (!qword_1EC1F7BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7BE8);
  }

  return result;
}

unint64_t sub_1C6E18DD8()
{
  result = qword_1EC1F7BF0;
  if (!qword_1EC1F7BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7BF0);
  }

  return result;
}

unint64_t sub_1C6E18E30()
{
  result = qword_1EC1F7BF8;
  if (!qword_1EC1F7BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7BF8);
  }

  return result;
}

unint64_t sub_1C6E18E88()
{
  result = qword_1EC1F7C00;
  if (!qword_1EC1F7C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7C00);
  }

  return result;
}

unint64_t sub_1C6E18EE0()
{
  result = qword_1EC1F7C08;
  if (!qword_1EC1F7C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7C08);
  }

  return result;
}

unint64_t sub_1C6E18F38()
{
  result = qword_1EC1F7C10;
  if (!qword_1EC1F7C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7C10);
  }

  return result;
}

unint64_t sub_1C6E18F90()
{
  result = qword_1EC1F7C18;
  if (!qword_1EC1F7C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7C18);
  }

  return result;
}

unint64_t sub_1C6E18FE8()
{
  result = qword_1EC1F7C20;
  if (!qword_1EC1F7C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7C20);
  }

  return result;
}

unint64_t sub_1C6E19040()
{
  result = qword_1EC1F7C28;
  if (!qword_1EC1F7C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7C28);
  }

  return result;
}

uint64_t sub_1C6E191F4(uint64_t a1, int8x16_t *a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8 = a2[2].i8[0];
  return sub_1C6E1E694(v5, v7) & 1;
}

uint64_t sub_1C6E19240(uint64_t a1, void *a2)
{
  v5 = sub_1C6EE42F0();
  v84 = *(v5 - 8);
  v85 = v5;
  v6 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v83 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FeaturePaddingValue(0);
  v87 = *(v8 - 8);
  v9 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7C30, &qword_1C6EEC710);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v77 - v17;
  v19 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO(0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = &v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v88 = &v77 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v77 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v31 = *a2;
  if (*(*a2 + 16) == 1)
  {
    v86 = a1;
    v81 = v2;
    v32 = (*(v29 + 80) + 32) & ~*(v29 + 80);
    v33 = &v77 - v30;
    sub_1C6E1EAFC(v31 + v32, v28, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
    sub_1C6E1EC68(v28, v33, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
    v34 = a2[1];
    if (*(v34 + 16) == 1)
    {
      v82 = v33;
      sub_1C6E1EAFC(v34 + v32, v23, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
      v35 = v88;
      sub_1C6E1EC68(v23, v88, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
      v36 = *(v35 + 16);
      if (*(v36 + 16) == 1)
      {
        v37 = *(v82 + 3);
        v38 = v82[32];
        v39 = *(v35 + 24);
        v40 = *(v35 + 32);
        v78 = *(v36 + 32);
        v79 = v39;
        v80 = v40;
        if (sub_1C6E6F844(v37, v38, v39))
        {
          v77 = v38;
          v79 = v37;
          v41 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FeaturePreprocessingSpec(0);
          v42 = v86;
          v80 = *(v41 + 20);
          sub_1C6E1E460(v86 + v80, v18, &qword_1EC1F7C30, &qword_1C6EEC710);
          v43 = *(v87 + 48);
          v44 = v43(v18, 1, v8);
          sub_1C6E1ED14(v18, &qword_1EC1F7C30, &qword_1C6EEC710);
          if (v44 == 1)
          {
            goto LABEL_18;
          }

          sub_1C6E1E460(v42 + v80, v16, &qword_1EC1F7C30, &qword_1C6EEC710);
          if (v43(v16, 1, v8) == 1)
          {
            *v11 = xmmword_1C6EE7FC0;
            v11[16] = -1;
            v45 = &v11[*(v8 + 20)];
            sub_1C6EE4420();
            if (v43(v16, 1, v8) != 1)
            {
              sub_1C6E1ED14(v16, &qword_1EC1F7C30, &qword_1C6EEC710);
            }
          }

          else
          {
            sub_1C6E1EC68(v16, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FeaturePaddingValue);
          }

          v58 = *v11;
          v57 = *(v11 + 1);
          v59 = v11[16];
          sub_1C6E1E3E0(*v11, v57, v11[16]);
          sub_1C6E1EC08(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FeaturePaddingValue);
          if ((~v57 & 0x3000000000000000) == 0 && v59 == 255)
          {
LABEL_18:
            sub_1C6E1E38C();
            swift_allocError();
            *v61 = 0u;
            *(v61 + 16) = 0u;
            *(v61 + 32) = -64;
            swift_willThrow();
            v62 = v42;
          }

          else
          {
            v63 = v59 & 1;
            v64 = v79;
            v65 = v77;
            if (sub_1C6E19C60(v79, v77, v60, v57, v59 & 1))
            {
              if (sub_1C6E19CB8(v58, v57, v59 & 1))
              {
                v51 = v89;
                sub_1C6E1EAFC(v82, v89 + OBJC_IVAR____TtC18ComputationalGraph29FeaturePreprocessingContainer_input, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
                v66 = v51 + OBJC_IVAR____TtC18ComputationalGraph29FeaturePreprocessingContainer_output;
                v67 = v88;
                sub_1C6E1EAFC(v88, v51 + OBJC_IVAR____TtC18ComputationalGraph29FeaturePreprocessingContainer_output, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
                v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7C40, &qword_1C6EE8010);
                *(v66 + *(v68 + 48)) = v78;
                v69 = v51 + OBJC_IVAR____TtC18ComputationalGraph29FeaturePreprocessingContainer_paddingValue;
                *v69 = v58;
                *(v69 + 8) = v57;
                *(v69 + 16) = v59 & 1;
                sub_1C6E1E408(v58, v57);
                v70 = v83;
                sub_1C6EE42E0();
                v87 = sub_1C6EE42D0();
                v72 = v71;
                sub_1C6E1E420(v58, v57, v59);
                sub_1C6E1EC08(v86, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FeaturePreprocessingSpec);
                (*(v84 + 8))(v70, v85);
                sub_1C6E1EC08(v82, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
                sub_1C6E1EC08(v67, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
                sub_1C6E1EAFC(a2, v51 + OBJC_IVAR____TtC18ComputationalGraph19AbstractComputation_modelIOSpec, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec);
                v73 = OBJC_IVAR____TtC18ComputationalGraph19AbstractComputation_nodeCachePolicy;
                v74 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_NodeCachePolicy(0);
                (*(*(v74 - 8) + 56))(v51 + v73, 1, 1, v74);
                *(v51 + 16) = v87;
                *(v51 + 24) = v72;
                sub_1C6E1EC08(a2, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec);
                return v51;
              }

              sub_1C6E1E38C();
              swift_allocError();
              *v76 = v58;
              *(v76 + 8) = v57;
              *(v76 + 16) = v63;
              *(v76 + 24) = 0;
              *(v76 + 32) = 0;
            }

            else
            {
              sub_1C6E1E38C();
              swift_allocError();
              *v75 = v64;
              *(v75 + 8) = v65;
              *(v75 + 16) = v58;
              *(v75 + 24) = v57;
              *(v75 + 32) = v63 | 0x80;
            }

            swift_willThrow();
            v62 = v86;
          }

          sub_1C6E1EC08(v62, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FeaturePreprocessingSpec);
          sub_1C6E1EC08(v82, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
          v48 = v88;
        }

        else
        {
          sub_1C6E1E38C();
          swift_allocError();
          *v55 = v37;
          *(v55 + 8) = v38;
          v56 = v80;
          *(v55 + 16) = v79;
          *(v55 + 24) = v56;
          *(v55 + 32) = 64;
          swift_willThrow();
          sub_1C6E1EC08(v86, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FeaturePreprocessingSpec);
          sub_1C6E1EC08(v82, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
          v48 = v35;
        }

        v47 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO;
      }

      else
      {
        sub_1C6E0E478();
        swift_allocError();
        *v50 = 1;
        swift_willThrow();
        sub_1C6E1EC08(v86, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FeaturePreprocessingSpec);
        sub_1C6E1EC08(v82, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
        v48 = v35;
        v47 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO;
      }
    }

    else
    {
      sub_1C6E0E478();
      swift_allocError();
      *v49 = 0;
      swift_willThrow();
      sub_1C6E1EC08(v86, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FeaturePreprocessingSpec);
      v47 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO;
      v48 = v33;
    }
  }

  else
  {
    sub_1C6E0E478();
    swift_allocError();
    *v46 = 0;
    swift_willThrow();
    v47 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FeaturePreprocessingSpec;
    v48 = a1;
  }

  sub_1C6E1EC08(v48, v47);
  sub_1C6E1EC08(a2, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec);
  type metadata accessor for FeaturePreprocessingContainer();
  v51 = v89;
  v52 = *(*v89 + 48);
  v53 = *(*v89 + 52);
  swift_deallocPartialClassInstance();
  return v51;
}

BOOL sub_1C6E19C60(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v5 = (a4 >> 60) & 3 | (4 * (a5 & 1));
  v6 = a1 == 2;
  v7 = a1 == 3;
  if (v5 != 3)
  {
    v7 = a1 == 6;
  }

  if (v5 != 2)
  {
    v6 = v7;
  }

  v8 = a1 == 7;
  v10 = a1 == 4 || a1 == 5;
  if (v5)
  {
    v8 = v10;
  }

  if (v5 <= 1)
  {
    return v8;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_1C6E19CB8(uint64_t result, unint64_t a2, char a3)
{
  v3 = (a2 >> 60) & 3 | (4 * (a3 & 1));
  if ((v3 - 1) < 3)
  {
    return 1;
  }

  if (v3)
  {
    v5 = a2 >> 62;
    if ((a2 >> 62) <= 1)
    {
      v6 = v5 == 0;
      if (v5)
      {
        v7 = result >> 32;
      }

      else
      {
        v7 = BYTE6(a2);
      }

      if (v6)
      {
        v8 = 0;
      }

      else
      {
        v8 = result;
      }

      return v8 != v7;
    }

LABEL_18:
    if (v5 == 2)
    {
      v8 = *(result + 16);
      v7 = *(result + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }

    return v8 != v7;
  }

  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      v5 = 0;
      return v5 == 2;
    }

    v10 = *(result + 16);
    v9 = *(result + 24);
    v11 = __OFSUB__(v9, v10);
    v5 = v9 - v10;
    if (!v11)
    {
      return v5 == 2;
    }

    __break(1u);
    goto LABEL_18;
  }

  if (!v4)
  {
    v5 = BYTE6(a2);
    return v5 == 2;
  }

  LODWORD(v5) = HIDWORD(result) - result;
  if (!__OFSUB__(HIDWORD(result), result))
  {
    v5 = v5;
    return v5 == 2;
  }

  __break(1u);
  return result;
}

unint64_t sub_1C6E19D7C(unint64_t a1)
{
  v2 = sub_1C6EE4760();
  v22 = *(v2 - 8);
  v23 = v2;
  v3 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C6EE4790();
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEF8F80 != -1)
  {
    swift_once();
  }

  v10 = qword_1EDEF8F88;
  sub_1C6EE4770();
  sub_1C6EE4780();
  sub_1C6EE4740();
  v11 = swift_slowAlloc();
  *v11 = 0;
  v12 = sub_1C6EE4780();
  v13 = sub_1C6EE4F80();
  v14 = sub_1C6EE4750();
  _os_signpost_emit_with_name_impl(&dword_1C6DE9000, v12, v13, v14, "FeaturePreprocessingContainer.doCall", "", v11, 2u);
  sub_1C6E19FFC(a1, v19[1], &v24);
  v15 = sub_1C6EE4F70();
  v16 = sub_1C6EE4750();
  _os_signpost_emit_with_name_impl(&dword_1C6DE9000, v12, v15, v16, "FeaturePreprocessingContainer.doCall", "", v11, 2u);

  v17 = v24;
  MEMORY[0x1CCA59290](v11, -1, -1);
  (*(v22 + 8))(v5, v23);
  (*(v20 + 8))(v9, v21);
  return v17;
}

uint64_t sub_1C6E19FFC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v84 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7C40, &qword_1C6EE8010);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v82 = (&v80 - v7);
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7A98, &qword_1C6EE7840);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v80 - v15;
  v17 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature(0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v21 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v83 = &v80 - v22;
  if (!*(a1 + 16) || (v23 = a2 + OBJC_IVAR____TtC18ComputationalGraph29FeaturePreprocessingContainer_input, v24 = *(a2 + OBJC_IVAR____TtC18ComputationalGraph29FeaturePreprocessingContainer_input + 8), v80 = *(a2 + OBJC_IVAR____TtC18ComputationalGraph29FeaturePreprocessingContainer_input), v81 = v24, v25 = sub_1C6DEC784(v80, v24), (v26 & 1) == 0))
  {
    *v84 = a1;
  }

  v27 = *(a1 + 56) + 24 * v25;
  v28 = *(v27 + 16);
  v86 = *v27;
  v87 = v28;
  sub_1C6E0F330(v21);
  v29 = v83;
  sub_1C6E1EC68(v21, v83, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
  sub_1C6E1E460(v29, v16, &qword_1EC1F7A98, &qword_1C6EE7840);
  if ((*(v9 + 48))(v16, 1, v8) == 1)
  {
    sub_1C6E1ED14(v16, &qword_1EC1F7A98, &qword_1C6EE7840);
    LOBYTE(v30) = 0;
    LOBYTE(v31) = 0;
    LOBYTE(v32) = 6;
  }

  else
  {
    sub_1C6E1EAFC(v16, v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_1C6E1EC08(v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    sub_1C6E1EC08(v16, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    v30 = 0x10u >> EnumCaseMultiPayload;
    v31 = 8u >> EnumCaseMultiPayload;
    v32 = 0x403010002uLL >> (8 * EnumCaseMultiPayload);
  }

  v35 = *(v23 + 24);
  v36 = *(v23 + 32);
  if (v36 != 1)
  {
    goto LABEL_26;
  }

  if (v35 <= 3)
  {
    if (v35 < 2)
    {
      goto LABEL_26;
    }

    v37 = v35 != 2;
    goto LABEL_17;
  }

  if (v35 <= 5)
  {
    if (v35 != 4)
    {
      goto LABEL_26;
    }

    v37 = 2;
LABEL_17:
    if (v37 == v32)
    {
      goto LABEL_18;
    }

LABEL_26:
    if (qword_1EDEF8F80 != -1)
    {
      swift_once();
    }

    sub_1C6EE4EC0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9900, &qword_1C6EE6B70);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_1C6EE65B0;
    v51 = MEMORY[0x1E69E6158];
    *(v50 + 56) = MEMORY[0x1E69E6158];
    v52 = sub_1C6DF10E0();
    *(v50 + 64) = v52;
    v53 = v81;
    *(v50 + 32) = v80;
    *(v50 + 40) = v53;
    LOBYTE(v86) = v32;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7C48, &qword_1C6EE8018);
    v54 = sub_1C6EE4AF0();
    *(v50 + 96) = v51;
    *(v50 + 104) = v52;
    *(v50 + 72) = v54;
    *(v50 + 80) = v55;
    *&v86 = 0;
    *(&v86 + 1) = 0xE000000000000000;
    v56 = 0x403050201000505uLL >> (8 * v35);
    if (!v36)
    {
      LOBYTE(v56) = 5;
    }

    v85 = v56;
    sub_1C6EE52F0();
    v57 = v86;
    *(v50 + 136) = v51;
    *(v50 + 144) = v52;
    *(v50 + 112) = v57;
    sub_1C6EE4730();

    result = sub_1C6E1EC08(v83, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
    *v84 = MEMORY[0x1E69E7CC8];
    return result;
  }

  if (v35 != 6)
  {
    if (v30)
    {
      goto LABEL_18;
    }

    goto LABEL_26;
  }

  if ((v31 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_18:
  v38 = a2;
  v39 = a2 + OBJC_IVAR____TtC18ComputationalGraph29FeaturePreprocessingContainer_paddingValue;
  v40 = *(a2 + OBJC_IVAR____TtC18ComputationalGraph29FeaturePreprocessingContainer_paddingValue);
  v41 = *(a2 + OBJC_IVAR____TtC18ComputationalGraph29FeaturePreprocessingContainer_paddingValue + 8);
  if (*(v39 + 16))
  {
    v42 = 4;
  }

  else
  {
    v42 = 0;
  }

  v43 = (v41 >> 60) & 3 | v42;
  if (v43 > 1)
  {
    if (v43 == 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7C50, &qword_1C6EE8020);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C6EE6590;
      v64 = v82;
      sub_1C6E1E460(v38 + OBJC_IVAR____TtC18ComputationalGraph29FeaturePreprocessingContainer_output, v82, &qword_1EC1F7C40, &qword_1C6EE8010);
      v66 = *v64;
      v65 = v64[1];

      sub_1C6E1EC08(v64, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
      *(inited + 32) = v66;
      v48 = inited + 32;
      *(inited + 40) = v65;
      v49 = v83;
      sub_1C6E1A9AC(v83, v38, v40, (inited + 48));
      goto LABEL_34;
    }

    if (v43 == 3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7C50, &qword_1C6EE8020);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C6EE6590;
      v45 = v82;
      sub_1C6E1E460(v38 + OBJC_IVAR____TtC18ComputationalGraph29FeaturePreprocessingContainer_output, v82, &qword_1EC1F7C40, &qword_1C6EE8010);
      v47 = *v45;
      v46 = v45[1];

      sub_1C6E1EC08(v45, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
      *(inited + 32) = v47;
      v48 = inited + 32;
      *(inited + 40) = v46;
      v49 = v83;
      sub_1C6E1B484(v83, v38, v40, (inited + 48));
LABEL_34:
      v67 = sub_1C6E0BC8C(inited);
      swift_setDeallocating();
      sub_1C6E1ED14(v48, &qword_1EC1F7C58, &qword_1C6EF6BC0);
      result = sub_1C6E1EC08(v49, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
      *v84 = v67;
      return result;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7C50, &qword_1C6EE8020);
    v58 = swift_initStackObject();
    *(v58 + 16) = xmmword_1C6EE6590;
    v68 = v82;
    sub_1C6E1E460(v38 + OBJC_IVAR____TtC18ComputationalGraph29FeaturePreprocessingContainer_output, v82, &qword_1EC1F7C40, &qword_1C6EE8010);
    v70 = *v68;
    v69 = v68[1];
    sub_1C6E1E408(v40, v41);

    sub_1C6E1EC08(v68, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
    *(v58 + 32) = v70;
    v62 = v58 + 32;
    *(v58 + 40) = v69;
    v63 = v83;
    sub_1C6E1CA08(v83, v38, v40, v41, (v58 + 48));
    goto LABEL_36;
  }

  if (!v43)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7C50, &qword_1C6EE8020);
    v58 = swift_initStackObject();
    *(v58 + 16) = xmmword_1C6EE6590;
    v59 = v82;
    sub_1C6E1E460(v38 + OBJC_IVAR____TtC18ComputationalGraph29FeaturePreprocessingContainer_output, v82, &qword_1EC1F7C40, &qword_1C6EE8010);
    v61 = *v59;
    v60 = v59[1];
    sub_1C6E1E408(v40, v41);

    sub_1C6E1EC08(v59, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
    *(v58 + 32) = v61;
    v62 = v58 + 32;
    *(v58 + 40) = v60;
    v63 = v83;
    sub_1C6E1D494(v83, v38, v40, v41, (v58 + 48));
LABEL_36:
    v71 = sub_1C6E0BC8C(v58);
    swift_setDeallocating();
    sub_1C6E1ED14(v62, &qword_1EC1F7C58, &qword_1C6EF6BC0);
    sub_1C6E1E448(v40, v41);
    result = sub_1C6E1EC08(v63, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
    *v84 = v71;
    return result;
  }

  v72 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7C50, &qword_1C6EE8020);
  v73 = swift_initStackObject();
  *(v73 + 16) = xmmword_1C6EE6590;
  v74 = v82;
  sub_1C6E1E460(v38 + OBJC_IVAR____TtC18ComputationalGraph29FeaturePreprocessingContainer_output, v82, &qword_1EC1F7C40, &qword_1C6EE8010);
  v76 = *v74;
  v75 = v74[1];

  sub_1C6E1EC08(v74, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
  *(v73 + 32) = v76;
  *(v73 + 40) = v75;
  v77 = v83;
  v78.n128_u32[0] = v72;
  sub_1C6E1BF5C(v83, v38, v73 + 48, v78);
  v79 = sub_1C6E0BC8C(v73);
  swift_setDeallocating();
  sub_1C6E1ED14(v73 + 32, &qword_1EC1F7C58, &qword_1C6EF6BC0);
  result = sub_1C6E1EC08(v77, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
  *v84 = v79;
  return result;
}

uint64_t sub_1C6E1A9AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t *a4@<X8>)
{
  v99 = a2;
  v93 = a4;
  v6 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v89 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7C40, &qword_1C6EE8010);
  v9 = *(*(v98 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v98);
  v92 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v87 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7A98, &qword_1C6EE7840);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v88 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v87 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v91 = &v87 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v87 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v87 - v26;
  v97 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List(0);
  v28 = *(*(v97 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v97);
  v87 = (&v87 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = MEMORY[0x1EEE9AC00](v29);
  v33 = (&v87 - v32);
  v34 = MEMORY[0x1EEE9AC00](v31);
  v90 = &v87 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v38 = (&v87 - v37);
  MEMORY[0x1EEE9AC00](v36);
  v40 = (&v87 - v39);
  v94 = a1;
  sub_1C6E1E460(a1, v27, &qword_1EC1F7A98, &qword_1C6EE7840);
  v41 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  v42 = *(v41 - 8);
  v43 = *(v42 + 48);
  v95 = v42 + 48;
  v96 = v43;
  if (v43(v27, 1, v41) == 1)
  {
    sub_1C6E1ED14(v27, &qword_1EC1F7A98, &qword_1C6EE7840);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C6E1EC68(v27, v40, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
      goto LABEL_7;
    }

    sub_1C6E1EC08(v27, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  }

  *v40 = MEMORY[0x1E69E7CC0];
  v44 = v40 + *(v97 + 20);
  sub_1C6EE4420();
LABEL_7:
  v45 = *v40;

  sub_1C6E1EC08(v40, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
  v46 = *(v45 + 16);

  v47 = OBJC_IVAR____TtC18ComputationalGraph29FeaturePreprocessingContainer_output;
  sub_1C6E1E460(v99 + OBJC_IVAR____TtC18ComputationalGraph29FeaturePreprocessingContainer_output, v13, &qword_1EC1F7C40, &qword_1C6EE8010);
  v48 = *&v13[*(v98 + 48)];
  sub_1C6E1EC08(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
  if (v46 < v48)
  {
    v49 = v94;
    sub_1C6E1E460(v94, v25, &qword_1EC1F7A98, &qword_1C6EE7840);
    if (v96(v25, 1, v41) == 1)
    {
      sub_1C6E1ED14(v25, &qword_1EC1F7A98, &qword_1C6EE7840);
      v50 = v92;
    }

    else
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v50 = v92;
      if (EnumCaseMultiPayload == 1)
      {
        sub_1C6E1EC68(v25, v38, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
        goto LABEL_18;
      }

      sub_1C6E1EC08(v25, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    }

    *v38 = MEMORY[0x1E69E7CC0];
    v53 = v38 + *(v97 + 20);
    sub_1C6EE4420();
LABEL_18:
    v54 = v90;
    v55 = *v38;

    sub_1C6E1EC08(v38, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
    sub_1C6E1E460(v99 + v47, v50, &qword_1EC1F7C40, &qword_1C6EE8010);
    v56 = *(v50 + *(v98 + 48));
    v57 = v91;
    sub_1C6E1E460(v49, v91, &qword_1EC1F7A98, &qword_1C6EE7840);
    if (v96(v57, 1, v41) == 1)
    {
      sub_1C6E1ED14(v57, &qword_1EC1F7A98, &qword_1C6EE7840);
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1C6E1EC68(v57, v54, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
LABEL_30:
        v66 = *v54;

        sub_1C6E1EC08(v54, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
        v67 = *(v66 + 16);

        v68 = v56 - v67;
        if (__OFSUB__(v56, v67))
        {
          __break(1u);
        }

        else
        {
          sub_1C6E1EC08(v50, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
          if ((v68 & 0x8000000000000000) == 0)
          {
            if (v68)
            {
              v69 = sub_1C6EE4D00();
              *(v69 + 16) = v68;
              v70 = (v69 + 32);
              if (v68 > 7)
              {
                v71 = v68 & 0x7FFFFFFFFFFFFFF8;
                v70 += v68 & 0x7FFFFFFFFFFFFFF8;
                v72 = vdupq_n_s32(a3);
                v73 = (v69 + 48);
                v74 = v68 & 0x7FFFFFFFFFFFFFF8;
                do
                {
                  v73[-1] = v72;
                  *v73 = v72;
                  v73 += 2;
                  v74 -= 8;
                }

                while (v74);
                if (v68 == v71)
                {
                  goto LABEL_42;
                }
              }

              else
              {
                v71 = 0;
              }

              v75 = v71 + v67 - v56;
              do
              {
                *v70++ = a3;
              }

              while (!__CFADD__(v75++, 1));
            }

            else
            {
              v69 = MEMORY[0x1E69E7CC0];
            }

LABEL_42:
            v100 = v55;
            result = sub_1C6ED1B98(v69);
            v77 = v93;
            *v93 = v100;
            v77[1] = 0x1000000000000000;
            *(v77 + 16) = 0;
            return result;
          }
        }

        __break(1u);
        goto LABEL_63;
      }

      sub_1C6E1EC08(v57, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    }

    *v54 = MEMORY[0x1E69E7CC0];
    v65 = v54 + *(v97 + 20);
    sub_1C6EE4420();
    goto LABEL_30;
  }

  v51 = v94;
  sub_1C6E1E460(v94, v20, &qword_1EC1F7A98, &qword_1C6EE7840);
  if (v96(v20, 1, v41) == 1)
  {
    sub_1C6E1ED14(v20, &qword_1EC1F7A98, &qword_1C6EE7840);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C6E1EC68(v20, v33, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
      goto LABEL_24;
    }

    sub_1C6E1EC08(v20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  }

  *v33 = MEMORY[0x1E69E7CC0];
  v58 = v33 + *(v97 + 20);
  sub_1C6EE4420();
LABEL_24:
  v59 = *v33;

  sub_1C6E1EC08(v33, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
  v60 = *(v59 + 16);

  sub_1C6E1E460(v99 + v47, v13, &qword_1EC1F7C40, &qword_1C6EE8010);
  v61 = *&v13[*(v98 + 48)];
  sub_1C6E1EC08(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
  if (v61 >= v60)
  {
    v63 = v89;
    sub_1C6E1EAFC(v51, v89, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
    return sub_1C6E108D4(v63, v93);
  }

  v62 = v88;
  sub_1C6E1E460(v51, v88, &qword_1EC1F7A98, &qword_1C6EE7840);
  if (v96(v62, 1, v41) == 1)
  {
    sub_1C6E1ED14(v62, &qword_1EC1F7A98, &qword_1C6EE7840);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v68 = v87;
      sub_1C6E1EC68(v62, v87, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
      goto LABEL_47;
    }

    sub_1C6E1EC08(v62, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  }

  v68 = v87;
  *v87 = MEMORY[0x1E69E7CC0];
  v78 = v68 + *(v97 + 20);
  sub_1C6EE4420();
LABEL_47:
  v55 = *v68;

  sub_1C6E1EC08(v68, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
  sub_1C6E1E460(v99 + v47, v13, &qword_1EC1F7C40, &qword_1C6EE8010);
  v79 = *&v13[*(v98 + 48)];
  if ((v79 & 0x8000000000000000) != 0)
  {
LABEL_63:
    __break(1u);
LABEL_64:
    swift_unknownObjectRelease_n();
    sub_1C6EC8A98(v55, v55 + 32, 0, v68);
    v84 = v86;
    goto LABEL_58;
  }

  v80 = *(v55 + 16);
  if (v80 >= v79)
  {
    v80 = *&v13[*(v98 + 48)];
  }

  v81 = 2 * v80;
  if (v79)
  {
    v68 = v81 + 1;
  }

  else
  {
    v68 = 1;
  }

  sub_1C6E1EC08(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
  sub_1C6EE54C0();
  swift_unknownObjectRetain_n();
  v82 = swift_dynamicCastClass();
  if (!v82)
  {
    swift_unknownObjectRelease();
    v82 = MEMORY[0x1E69E7CC0];
  }

  v83 = *(v82 + 16);

  if (v83 != v68 >> 1)
  {
    goto LABEL_64;
  }

  v84 = swift_dynamicCastClass();
  result = swift_unknownObjectRelease_n();
  if (!v84)
  {
    v84 = MEMORY[0x1E69E7CC0];
LABEL_58:
    result = swift_unknownObjectRelease();
  }

  v85 = v93;
  *v93 = v84;
  v85[1] = 0x1000000000000000;
  *(v85 + 16) = 0;
  return result;
}

uint64_t sub_1C6E1B484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v99 = a2;
  v93 = a4;
  v6 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v89 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7C40, &qword_1C6EE8010);
  v9 = *(*(v98 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v98);
  v92 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v87 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7A98, &qword_1C6EE7840);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v88 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v87 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v91 = &v87 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v87 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v87 - v26;
  v97 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List(0);
  v28 = *(*(v97 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v97);
  v87 = (&v87 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = MEMORY[0x1EEE9AC00](v29);
  v33 = (&v87 - v32);
  v34 = MEMORY[0x1EEE9AC00](v31);
  v90 = &v87 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v38 = (&v87 - v37);
  MEMORY[0x1EEE9AC00](v36);
  v40 = (&v87 - v39);
  v94 = a1;
  sub_1C6E1E460(a1, v27, &qword_1EC1F7A98, &qword_1C6EE7840);
  v41 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  v42 = *(v41 - 8);
  v43 = *(v42 + 48);
  v95 = v42 + 48;
  v96 = v43;
  if (v43(v27, 1, v41) == 1)
  {
    sub_1C6E1ED14(v27, &qword_1EC1F7A98, &qword_1C6EE7840);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1C6E1EC68(v27, v40, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
      goto LABEL_7;
    }

    sub_1C6E1EC08(v27, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  }

  *v40 = MEMORY[0x1E69E7CC0];
  v44 = v40 + *(v97 + 20);
  sub_1C6EE4420();
LABEL_7:
  v45 = *v40;

  sub_1C6E1EC08(v40, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
  v46 = *(v45 + 16);

  v47 = OBJC_IVAR____TtC18ComputationalGraph29FeaturePreprocessingContainer_output;
  sub_1C6E1E460(v99 + OBJC_IVAR____TtC18ComputationalGraph29FeaturePreprocessingContainer_output, v13, &qword_1EC1F7C40, &qword_1C6EE8010);
  v48 = *&v13[*(v98 + 48)];
  sub_1C6E1EC08(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
  if (v46 < v48)
  {
    v49 = v94;
    sub_1C6E1E460(v94, v25, &qword_1EC1F7A98, &qword_1C6EE7840);
    if (v96(v25, 1, v41) == 1)
    {
      sub_1C6E1ED14(v25, &qword_1EC1F7A98, &qword_1C6EE7840);
      v50 = v92;
    }

    else
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v50 = v92;
      if (EnumCaseMultiPayload == 2)
      {
        sub_1C6E1EC68(v25, v38, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
        goto LABEL_18;
      }

      sub_1C6E1EC08(v25, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    }

    *v38 = MEMORY[0x1E69E7CC0];
    v53 = v38 + *(v97 + 20);
    sub_1C6EE4420();
LABEL_18:
    v54 = v90;
    v55 = *v38;

    sub_1C6E1EC08(v38, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
    sub_1C6E1E460(v99 + v47, v50, &qword_1EC1F7C40, &qword_1C6EE8010);
    v56 = *(v50 + *(v98 + 48));
    v57 = v91;
    sub_1C6E1E460(v49, v91, &qword_1EC1F7A98, &qword_1C6EE7840);
    if (v96(v57, 1, v41) == 1)
    {
      sub_1C6E1ED14(v57, &qword_1EC1F7A98, &qword_1C6EE7840);
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        sub_1C6E1EC68(v57, v54, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
LABEL_30:
        v66 = *v54;

        sub_1C6E1EC08(v54, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
        v67 = *(v66 + 16);

        v68 = v56 - v67;
        if (__OFSUB__(v56, v67))
        {
          __break(1u);
        }

        else
        {
          sub_1C6E1EC08(v50, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
          if ((v68 & 0x8000000000000000) == 0)
          {
            if (v68)
            {
              v69 = sub_1C6EE4D00();
              *(v69 + 16) = v68;
              v70 = (v69 + 32);
              if (v68 > 3)
              {
                v71 = v68 & 0x7FFFFFFFFFFFFFFCLL;
                v70 += v68 & 0x7FFFFFFFFFFFFFFCLL;
                v72 = vdupq_n_s64(a3);
                v73 = (v69 + 48);
                v74 = v68 & 0x7FFFFFFFFFFFFFFCLL;
                do
                {
                  v73[-1] = v72;
                  *v73 = v72;
                  v73 += 2;
                  v74 -= 4;
                }

                while (v74);
                if (v68 == v71)
                {
                  goto LABEL_42;
                }
              }

              else
              {
                v71 = 0;
              }

              v75 = v71 + v67 - v56;
              do
              {
                *v70++ = a3;
              }

              while (!__CFADD__(v75++, 1));
            }

            else
            {
              v69 = MEMORY[0x1E69E7CC0];
            }

LABEL_42:
            v100 = v55;
            result = sub_1C6ED1C84(v69);
            v77 = v93;
            *v93 = v100;
            v77[1] = 0x2000000000000000;
            *(v77 + 16) = 0;
            return result;
          }
        }

        __break(1u);
        goto LABEL_63;
      }

      sub_1C6E1EC08(v57, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    }

    *v54 = MEMORY[0x1E69E7CC0];
    v65 = v54 + *(v97 + 20);
    sub_1C6EE4420();
    goto LABEL_30;
  }

  v51 = v94;
  sub_1C6E1E460(v94, v20, &qword_1EC1F7A98, &qword_1C6EE7840);
  if (v96(v20, 1, v41) == 1)
  {
    sub_1C6E1ED14(v20, &qword_1EC1F7A98, &qword_1C6EE7840);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1C6E1EC68(v20, v33, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
      goto LABEL_24;
    }

    sub_1C6E1EC08(v20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  }

  *v33 = MEMORY[0x1E69E7CC0];
  v58 = v33 + *(v97 + 20);
  sub_1C6EE4420();
LABEL_24:
  v59 = *v33;

  sub_1C6E1EC08(v33, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
  v60 = *(v59 + 16);

  sub_1C6E1E460(v99 + v47, v13, &qword_1EC1F7C40, &qword_1C6EE8010);
  v61 = *&v13[*(v98 + 48)];
  sub_1C6E1EC08(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
  if (v61 >= v60)
  {
    v63 = v89;
    sub_1C6E1EAFC(v51, v89, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
    return sub_1C6E108D4(v63, v93);
  }

  v62 = v88;
  sub_1C6E1E460(v51, v88, &qword_1EC1F7A98, &qword_1C6EE7840);
  if (v96(v62, 1, v41) == 1)
  {
    sub_1C6E1ED14(v62, &qword_1EC1F7A98, &qword_1C6EE7840);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v68 = v87;
      sub_1C6E1EC68(v62, v87, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
      goto LABEL_47;
    }

    sub_1C6E1EC08(v62, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  }

  v68 = v87;
  *v87 = MEMORY[0x1E69E7CC0];
  v78 = v68 + *(v97 + 20);
  sub_1C6EE4420();
LABEL_47:
  v55 = *v68;

  sub_1C6E1EC08(v68, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
  sub_1C6E1E460(v99 + v47, v13, &qword_1EC1F7C40, &qword_1C6EE8010);
  v79 = *&v13[*(v98 + 48)];
  if ((v79 & 0x8000000000000000) != 0)
  {
LABEL_63:
    __break(1u);
LABEL_64:
    swift_unknownObjectRelease_n();
    sub_1C6EC8B68(v55, v55 + 32, 0, v68);
    v84 = v86;
    goto LABEL_58;
  }

  v80 = *(v55 + 16);
  if (v80 >= v79)
  {
    v80 = *&v13[*(v98 + 48)];
  }

  v81 = 2 * v80;
  if (v79)
  {
    v68 = v81 + 1;
  }

  else
  {
    v68 = 1;
  }

  sub_1C6E1EC08(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
  sub_1C6EE54C0();
  swift_unknownObjectRetain_n();
  v82 = swift_dynamicCastClass();
  if (!v82)
  {
    swift_unknownObjectRelease();
    v82 = MEMORY[0x1E69E7CC0];
  }

  v83 = *(v82 + 16);

  if (v83 != v68 >> 1)
  {
    goto LABEL_64;
  }

  v84 = swift_dynamicCastClass();
  result = swift_unknownObjectRelease_n();
  if (!v84)
  {
    v84 = MEMORY[0x1E69E7CC0];
LABEL_58:
    result = swift_unknownObjectRelease();
  }

  v85 = v93;
  *v93 = v84;
  v85[1] = 0x2000000000000000;
  *(v85 + 16) = 0;
  return result;
}

uint64_t sub_1C6E1BF5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, __n128 a4@<Q0>)
{
  v91 = a4;
  v100 = a2;
  v95 = a3;
  v5 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v90 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7C40, &qword_1C6EE8010);
  v8 = *(*(v99 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v99);
  v94 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v87 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7A98, &qword_1C6EE7840);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v89 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v87 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v93 = &v87 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v87 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v87 - v25;
  v27 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList(0);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v88 = (&v87 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = MEMORY[0x1EEE9AC00](v29);
  v33 = (&v87 - v32);
  v34 = MEMORY[0x1EEE9AC00](v31);
  v92 = (&v87 - v35);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v38 = (&v87 - v37);
  MEMORY[0x1EEE9AC00](v36);
  v40 = (&v87 - v39);
  v96 = a1;
  sub_1C6E1E460(a1, v26, &qword_1EC1F7A98, &qword_1C6EE7840);
  v41 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  v42 = *(v41 - 8);
  v43 = *(v42 + 48);
  v97 = v42 + 48;
  v98 = v43;
  if (v43(v26, 1, v41) == 1)
  {
    sub_1C6E1ED14(v26, &qword_1EC1F7A98, &qword_1C6EE7840);
LABEL_5:
    *v40 = MEMORY[0x1E69E7CC0];
    v44 = v40 + *(v27 + 20);
    sub_1C6EE4420();
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload())
  {
    sub_1C6E1EC08(v26, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    goto LABEL_5;
  }

  sub_1C6E1EC68(v26, v40, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
LABEL_6:
  v45 = *v40;

  sub_1C6E1EC08(v40, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
  v46 = *(v45 + 16);

  v47 = OBJC_IVAR____TtC18ComputationalGraph29FeaturePreprocessingContainer_output;
  sub_1C6E1E460(v100 + OBJC_IVAR____TtC18ComputationalGraph29FeaturePreprocessingContainer_output, v12, &qword_1EC1F7C40, &qword_1C6EE8010);
  v48 = *&v12[*(v99 + 48)];
  sub_1C6E1EC08(v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
  if (v46 >= v48)
  {
    sub_1C6E1E460(v96, v19, &qword_1EC1F7A98, &qword_1C6EE7840);
    if (v98(v19, 1, v41) == 1)
    {
      sub_1C6E1ED14(v19, &qword_1EC1F7A98, &qword_1C6EE7840);
    }

    else
    {
      if (!swift_getEnumCaseMultiPayload())
      {
        sub_1C6E1EC68(v19, v33, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
LABEL_19:
        v56 = *v33;

        sub_1C6E1EC08(v33, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
        v57 = *(v56 + 16);

        sub_1C6E1E460(v100 + v47, v12, &qword_1EC1F7C40, &qword_1C6EE8010);
        v58 = *&v12[*(v99 + 48)];
        sub_1C6E1EC08(v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
        if (v58 >= v57)
        {
          v69 = v90;
          sub_1C6E1EAFC(v96, v90, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
          return sub_1C6E108D4(v69, v95);
        }

        v59 = v89;
        sub_1C6E1E460(v96, v89, &qword_1EC1F7A98, &qword_1C6EE7840);
        if (v98(v59, 1, v41) == 1)
        {
          sub_1C6E1ED14(v59, &qword_1EC1F7A98, &qword_1C6EE7840);
        }

        else
        {
          if (!swift_getEnumCaseMultiPayload())
          {
            v85 = v59;
            v53 = v88;
            sub_1C6E1EC68(v85, v88, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
LABEL_43:
            v64 = *v53;

            sub_1C6E1EC08(v53, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
            sub_1C6E1E460(v100 + v47, v12, &qword_1EC1F7C40, &qword_1C6EE8010);
            v78 = *&v12[*(v99 + 48)];
            if ((v78 & 0x8000000000000000) == 0)
            {
              v79 = *(v64 + 16);
              if (v79 >= v78)
              {
                v79 = *&v12[*(v99 + 48)];
              }

              v80 = 2 * v79;
              if (v78)
              {
                v53 = v80 + 1;
              }

              else
              {
                v53 = 1;
              }

              sub_1C6E1EC08(v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
              sub_1C6EE54C0();
              swift_unknownObjectRetain_n();
              v81 = swift_dynamicCastClass();
              if (!v81)
              {
                swift_unknownObjectRelease();
                v81 = MEMORY[0x1E69E7CC0];
              }

              v82 = *(v81 + 16);

              if (v82 == v53 >> 1)
              {
                v83 = swift_dynamicCastClass();
                result = swift_unknownObjectRelease_n();
                v76 = v95;
                if (v83)
                {
LABEL_55:
                  *v76 = v83;
                  goto LABEL_56;
                }

                v83 = MEMORY[0x1E69E7CC0];
LABEL_54:
                result = swift_unknownObjectRelease();
                goto LABEL_55;
              }

LABEL_65:
              swift_unknownObjectRelease_n();
              sub_1C6EC8C38(v64, v64 + 32, 0, v53);
              v83 = v86;
              v76 = v95;
              goto LABEL_54;
            }

LABEL_64:
            __break(1u);
            goto LABEL_65;
          }

          sub_1C6E1EC08(v59, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
        }

        v53 = v88;
        *v88 = MEMORY[0x1E69E7CC0];
        v77 = v53 + *(v27 + 20);
        sub_1C6EE4420();
        goto LABEL_43;
      }

      sub_1C6E1EC08(v19, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    }

    *v33 = MEMORY[0x1E69E7CC0];
    v55 = v33 + *(v27 + 20);
    sub_1C6EE4420();
    goto LABEL_19;
  }

  v49 = v96;
  sub_1C6E1E460(v96, v24, &qword_1EC1F7A98, &qword_1C6EE7840);
  if (v98(v24, 1, v41) == 1)
  {
    sub_1C6E1ED14(v24, &qword_1EC1F7A98, &qword_1C6EE7840);
LABEL_13:
    *v38 = MEMORY[0x1E69E7CC0];
    v50 = v38 + *(v27 + 20);
    sub_1C6EE4420();
    goto LABEL_14;
  }

  if (swift_getEnumCaseMultiPayload())
  {
    sub_1C6E1EC08(v24, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    goto LABEL_13;
  }

  sub_1C6E1EC68(v24, v38, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
LABEL_14:
  v51 = v93;
  v52 = v94;
  v53 = *v38;

  sub_1C6E1EC08(v38, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
  sub_1C6E1E460(v100 + v47, v52, &qword_1EC1F7C40, &qword_1C6EE8010);
  v54 = *(v52 + *(v99 + 48));
  sub_1C6E1E460(v49, v51, &qword_1EC1F7A98, &qword_1C6EE7840);
  if (v98(v51, 1, v41) == 1)
  {
    sub_1C6E1ED14(v51, &qword_1EC1F7A98, &qword_1C6EE7840);
LABEL_24:
    v60 = v92;
    *v92 = MEMORY[0x1E69E7CC0];
    v61 = v60 + *(v27 + 20);
    sub_1C6EE4420();
    goto LABEL_25;
  }

  if (swift_getEnumCaseMultiPayload())
  {
    sub_1C6E1EC08(v51, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    goto LABEL_24;
  }

  v84 = v51;
  v60 = v92;
  sub_1C6E1EC68(v84, v92, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
LABEL_25:
  v62 = *v60;

  sub_1C6E1EC08(v60, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
  v63 = *(v62 + 16);

  v64 = v54 - v63;
  if (__OFSUB__(v54, v63))
  {
    __break(1u);
    goto LABEL_63;
  }

  sub_1C6E1EC08(v52, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
  if ((v64 & 0x8000000000000000) != 0)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (v64)
  {
    v65 = sub_1C6EE4D00();
    *(v65 + 16) = v64;
    v66 = (v65 + 32);
    if (v64 > 7)
    {
      v67 = v64 & 0x7FFFFFFFFFFFFFF8;
      v66 += v64 & 0x7FFFFFFFFFFFFFF8;
      v68 = v91.n128_u32[0];
      v71 = vdupq_lane_s32(v91.n128_u64[0], 0);
      v72 = (v65 + 48);
      v73 = v64 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v72[-1] = v71;
        *v72 = v71;
        v72 += 2;
        v73 -= 8;
      }

      while (v73);
      if (v64 == v67)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v67 = 0;
      v68 = v91.n128_u32[0];
    }

    v74 = v67 + v63 - v54;
    do
    {
      *v66++ = v68;
    }

    while (!__CFADD__(v74++, 1));
  }

  else
  {
    v65 = MEMORY[0x1E69E7CC0];
  }

LABEL_39:
  v76 = v95;
  v101 = v53;
  result = sub_1C6ED1D80(v65);
  *v76 = v101;
LABEL_56:
  *(v76 + 8) = 0;
  *(v76 + 16) = 0;
  return result;
}

uint64_t sub_1C6E1CA08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, void *a5@<X8>)
{
  v87 = a3;
  v88 = a4;
  v97 = a2;
  v92 = a5;
  v6 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v86 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7C40, &qword_1C6EE8010);
  v9 = *(*(v96 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v96);
  v91 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v83 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7A98, &qword_1C6EE7840);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v85 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v83 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v90 = &v83 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v83 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v83 - v26;
  v95 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList(0);
  v28 = *(*(v95 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v95);
  v84 = (&v83 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = MEMORY[0x1EEE9AC00](v29);
  v33 = (&v83 - v32);
  v34 = MEMORY[0x1EEE9AC00](v31);
  v89 = (&v83 - v35);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v38 = (&v83 - v37);
  MEMORY[0x1EEE9AC00](v36);
  v40 = (&v83 - v39);
  v94 = a1;
  sub_1C6E1E460(a1, v27, &qword_1EC1F7A98, &qword_1C6EE7840);
  v41 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  v42 = *(*(v41 - 8) + 48);
  if (v42(v27, 1, v41) == 1)
  {
    sub_1C6E1ED14(v27, &qword_1EC1F7A98, &qword_1C6EE7840);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1C6E1EC68(v27, v40, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
      goto LABEL_7;
    }

    sub_1C6E1EC08(v27, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  }

  *v40 = MEMORY[0x1E69E7CC0];
  v43 = v40 + *(v95 + 20);
  sub_1C6EE4420();
LABEL_7:
  v44 = *v40;

  sub_1C6E1EC08(v40, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
  v45 = *(v44 + 16);

  v93 = OBJC_IVAR____TtC18ComputationalGraph29FeaturePreprocessingContainer_output;
  sub_1C6E1E460(v97 + OBJC_IVAR____TtC18ComputationalGraph29FeaturePreprocessingContainer_output, v13, &qword_1EC1F7C40, &qword_1C6EE8010);
  v46 = *&v13[*(v96 + 48)];
  sub_1C6E1EC08(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
  if (v45 < v46)
  {
    v47 = v94;
    sub_1C6E1E460(v94, v25, &qword_1EC1F7A98, &qword_1C6EE7840);
    if (v42(v25, 1, v41) == 1)
    {
      sub_1C6E1ED14(v25, &qword_1EC1F7A98, &qword_1C6EE7840);
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        sub_1C6E1EC68(v25, v38, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
        goto LABEL_18;
      }

      sub_1C6E1EC08(v25, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    }

    *v38 = MEMORY[0x1E69E7CC0];
    v49 = v38 + *(v95 + 20);
    sub_1C6EE4420();
LABEL_18:
    v50 = v91;
    v51 = *v38;

    sub_1C6E1EC08(v38, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
    sub_1C6E1E460(v97 + v93, v50, &qword_1EC1F7C40, &qword_1C6EE8010);
    v52 = *(v50 + *(v96 + 48));
    v53 = v47;
    v54 = v90;
    sub_1C6E1E460(v53, v90, &qword_1EC1F7A98, &qword_1C6EE7840);
    if (v42(v54, 1, v41) == 1)
    {
      sub_1C6E1ED14(v54, &qword_1EC1F7A98, &qword_1C6EE7840);
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v55 = v54;
        v56 = v89;
        sub_1C6E1EC68(v55, v89, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
LABEL_30:
        v66 = *v56;

        sub_1C6E1EC08(v56, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
        v67 = *(v66 + 16);

        v68 = v52 - v67;
        if (!__OFSUB__(v52, v67))
        {
          sub_1C6E1EC08(v50, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
          v70 = v87;
          v69 = v88;
          sub_1C6E00D18(v87, v88);
          v71 = sub_1C6E1EB64(v70, v69, v68);
          sub_1C6DF1134(v70, v69);
          v98 = v51;
          result = sub_1C6ED1E6C(v71);
          v72 = v92;
          *v92 = v98;
          v72[1] = 0x3000000000000000;
          *(v72 + 16) = 0;
          return result;
        }

        __break(1u);
        goto LABEL_51;
      }

      sub_1C6E1EC08(v54, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    }

    v56 = v89;
    *v89 = MEMORY[0x1E69E7CC0];
    v65 = v56 + *(v95 + 20);
    sub_1C6EE4420();
    goto LABEL_30;
  }

  v48 = v94;
  sub_1C6E1E460(v94, v20, &qword_1EC1F7A98, &qword_1C6EE7840);
  if (v42(v20, 1, v41) == 1)
  {
    sub_1C6E1ED14(v20, &qword_1EC1F7A98, &qword_1C6EE7840);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1C6E1EC68(v20, v33, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
      goto LABEL_24;
    }

    sub_1C6E1EC08(v20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  }

  *v33 = MEMORY[0x1E69E7CC0];
  v57 = v33 + *(v95 + 20);
  sub_1C6EE4420();
LABEL_24:
  v58 = *v33;

  sub_1C6E1EC08(v33, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
  v59 = *(v58 + 16);

  v60 = v93;
  sub_1C6E1E460(v97 + v93, v13, &qword_1EC1F7C40, &qword_1C6EE8010);
  v61 = *&v13[*(v96 + 48)];
  sub_1C6E1EC08(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
  if (v61 >= v59)
  {
    v63 = v86;
    sub_1C6E1EAFC(v48, v86, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
    return sub_1C6E108D4(v63, v92);
  }

  v62 = v85;
  sub_1C6E1E460(v48, v85, &qword_1EC1F7A98, &qword_1C6EE7840);
  if (v42(v62, 1, v41) == 1)
  {
    sub_1C6E1ED14(v62, &qword_1EC1F7A98, &qword_1C6EE7840);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v73 = v62;
      v52 = v84;
      sub_1C6E1EC68(v73, v84, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
      goto LABEL_36;
    }

    sub_1C6E1EC08(v62, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  }

  v52 = v84;
  *v84 = MEMORY[0x1E69E7CC0];
  v74 = v52 + *(v95 + 20);
  sub_1C6EE4420();
LABEL_36:
  v68 = *v52;

  sub_1C6E1EC08(v52, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
  sub_1C6E1E460(v97 + v60, v13, &qword_1EC1F7C40, &qword_1C6EE8010);
  v75 = *&v13[*(v96 + 48)];
  if ((v75 & 0x8000000000000000) != 0)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    swift_unknownObjectRelease_n();
    sub_1C6EC8D08(v68, v68 + 32, 0, v52);
    v80 = v82;
    v81 = v92;
    goto LABEL_47;
  }

  v76 = *(v68 + 16);
  if (v76 >= v75)
  {
    v76 = *&v13[*(v96 + 48)];
  }

  v77 = 2 * v76;
  if (v75)
  {
    v52 = v77 + 1;
  }

  else
  {
    v52 = 1;
  }

  sub_1C6E1EC08(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
  sub_1C6EE54C0();
  swift_unknownObjectRetain_n();
  v78 = swift_dynamicCastClass();
  if (!v78)
  {
    swift_unknownObjectRelease();
    v78 = MEMORY[0x1E69E7CC0];
  }

  v79 = *(v78 + 16);

  if (v79 != v52 >> 1)
  {
    goto LABEL_52;
  }

  v80 = swift_dynamicCastClass();
  result = swift_unknownObjectRelease_n();
  v81 = v92;
  if (!v80)
  {
    v80 = MEMORY[0x1E69E7CC0];
LABEL_47:
    result = swift_unknownObjectRelease();
  }

  *v81 = v80;
  v81[1] = 0x3000000000000000;
  *(v81 + 16) = 0;
  return result;
}

uint64_t sub_1C6E1D494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v126 = a3;
  v127 = a4;
  v133 = a5;
  v134 = a2;
  v6 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v125 = &v122 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7C40, &qword_1C6EE8010);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v132 = &v122 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v122 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1F7A98, &qword_1C6EE7840);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v124 = &v122 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v129 = &v122 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v131 = &v122 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v128 = &v122 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v122 - v25;
  v27 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v123 = (&v122 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = MEMORY[0x1EEE9AC00](v29);
  v33 = (&v122 - v32);
  v34 = MEMORY[0x1EEE9AC00](v31);
  v130 = (&v122 - v35);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v38 = (&v122 - v37);
  MEMORY[0x1EEE9AC00](v36);
  v40 = (&v122 - v39);
  v138 = a1;
  sub_1C6E1E460(a1, v26, &qword_1EC1F7A98, &qword_1C6EE7840);
  v41 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  v42 = *(v41 - 8);
  v43 = *(v42 + 48);
  v136 = v42 + 48;
  v137 = v43;
  v44 = v43(v26, 1, v41);
  v45 = &off_1C6EE6000;
  v135 = v41;
  if (v44 == 1)
  {
    sub_1C6E1ED14(v26, &qword_1EC1F7A98, &qword_1C6EE7840);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1C6E1EC68(v26, v40, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      v46 = v27;
      goto LABEL_7;
    }

    sub_1C6E1EC08(v26, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  }

  v46 = v27;
  *v40 = xmmword_1C6EE6B50;
  v47 = v40 + *(v27 + 20);
  sub_1C6EE4420();
LABEL_7:
  v48 = *v40;
  v49 = v40[1];
  sub_1C6E00D18(*v40, v49);
  sub_1C6E1EC08(v40, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v50 = v49 >> 62;
  if ((v49 >> 62) > 1)
  {
    if (v50 != 2)
    {
      v51 = 0;
      goto LABEL_16;
    }

    v52 = v9;
    v53 = v134;
    v55 = *(v48 + 16);
    v54 = *(v48 + 24);
    result = sub_1C6DF1134(v48, v49);
    v51 = v54 - v55;
    if (__OFSUB__(v54, v55))
    {
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    v57 = v53;
    v9 = v52;
    v45 = &off_1C6EE6000;
    v46 = v27;
    v58 = v57;
  }

  else
  {
    if (!v50)
    {
      v51 = BYTE6(v49);
LABEL_16:
      v58 = v134;
      goto LABEL_17;
    }

    result = sub_1C6DF1134(v48, v49);
    LODWORD(v51) = HIDWORD(v48) - v48;
    v58 = v134;
    if (__OFSUB__(HIDWORD(v48), v48))
    {
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    v51 = v51;
  }

LABEL_17:
  v59 = v51;
  v60 = OBJC_IVAR____TtC18ComputationalGraph29FeaturePreprocessingContainer_output;
  sub_1C6E1E460(v58 + OBJC_IVAR____TtC18ComputationalGraph29FeaturePreprocessingContainer_output, v14, &qword_1EC1F7C40, &qword_1C6EE8010);
  v61 = *&v14[*(v9 + 48)];
  sub_1C6E1EC08(v14, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
  if (v61 <= v59 / 2)
  {
    v63 = v129;
    sub_1C6E1E460(v138, v129, &qword_1EC1F7A98, &qword_1C6EE7840);
    v64 = v135;
    if (v137(v63, 1, v135) == 1)
    {
      sub_1C6E1ED14(v63, &qword_1EC1F7A98, &qword_1C6EE7840);
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        sub_1C6E1EC68(v63, v33, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        goto LABEL_34;
      }

      sub_1C6E1EC08(v63, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    }

    *v33 = *(v45 + 181);
    v76 = v33 + *(v46 + 20);
    sub_1C6EE4420();
LABEL_34:
    v77 = *v33;
    v78 = v33[1];
    sub_1C6E00D18(*v33, v78);
    sub_1C6E1EC08(v33, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    v79 = v78 >> 62;
    if ((v78 >> 62) > 1)
    {
      if (v79 == 2)
      {
        v81 = v58;
        v83 = *(v77 + 16);
        v82 = *(v77 + 24);
        result = sub_1C6DF1134(v77, v78);
        v80 = v82 - v83;
        if (__OFSUB__(v82, v83))
        {
LABEL_80:
          __break(1u);
          goto LABEL_81;
        }

        v58 = v81;
        v64 = v135;
      }

      else
      {
        v80 = 0;
      }
    }

    else if (v79)
    {
      result = sub_1C6DF1134(v77, v78);
      LODWORD(v80) = HIDWORD(v77) - v77;
      if (__OFSUB__(HIDWORD(v77), v77))
      {
LABEL_82:
        __break(1u);
        goto LABEL_83;
      }

      v80 = v80;
    }

    else
    {
      v80 = BYTE6(v78);
    }

    v91 = v80;
    sub_1C6E1E460(v58 + v60, v14, &qword_1EC1F7C40, &qword_1C6EE8010);
    v92 = *&v14[*(v9 + 48)];
    sub_1C6E1EC08(v14, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
    if (v92 >= v91 / 2)
    {
      v95 = v125;
      sub_1C6E1EAFC(v138, v125, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
      return sub_1C6E108D4(v95, v133);
    }

    v93 = v124;
    sub_1C6E1E460(v138, v124, &qword_1EC1F7A98, &qword_1C6EE7840);
    if (v137(v93, 1, v64) == 1)
    {
      sub_1C6E1ED14(v93, &qword_1EC1F7A98, &qword_1C6EE7840);
      v94 = v123;
    }

    else
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v94 = v123;
      if (EnumCaseMultiPayload == 4)
      {
        sub_1C6E1EC68(v93, v123, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
LABEL_70:
        v114 = *v94;
        v115 = v94[1];
        sub_1C6E00D18(*v94, v115);
        sub_1C6E1EC08(v94, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        result = sub_1C6E1E460(v58 + v60, v14, &qword_1EC1F7C40, &qword_1C6EE8010);
        v116 = *&v14[*(v9 + 48)];
        if (v116 + 0x4000000000000000 < 0)
        {
LABEL_78:
          __break(1u);
          goto LABEL_79;
        }

        v117 = 2 * v116;
        result = sub_1C6E1EC08(v14, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
        if (v117 < 0)
        {
LABEL_79:
          __break(1u);
          goto LABEL_80;
        }

        v118 = sub_1C6EE4200();
        v120 = v119;
        result = sub_1C6DF1134(v114, v115);
        v121 = v133;
        *v133 = v118;
        v121[1] = v120 | 0x1000000000000000;
        *(v121 + 16) = 1;
        return result;
      }

      sub_1C6E1EC08(v93, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    }

    *v94 = *(v45 + 181);
    v113 = v94 + *(v46 + 20);
    sub_1C6EE4420();
    goto LABEL_70;
  }

  v62 = v128;
  sub_1C6E1E460(v138, v128, &qword_1EC1F7A98, &qword_1C6EE7840);
  if (v137(v62, 1, v135) == 1)
  {
    sub_1C6E1ED14(v62, &qword_1EC1F7A98, &qword_1C6EE7840);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v65 = v58;
      sub_1C6E1EC68(v62, v38, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      goto LABEL_28;
    }

    sub_1C6E1EC08(v62, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  }

  v65 = v58;
  *v38 = *(v45 + 181);
  v66 = v38 + *(v46 + 20);
  sub_1C6EE4420();
LABEL_28:
  v67 = *v38;
  v68 = v38[1];
  sub_1C6E00D18(*v38, v68);
  sub_1C6E1EC08(v38, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v69 = v65 + v60;
  v70 = v132;
  sub_1C6E1E460(v69, v132, &qword_1EC1F7C40, &qword_1C6EE8010);
  v71 = *(v70 + *(v9 + 48));
  v72 = v131;
  sub_1C6E1E460(v138, v131, &qword_1EC1F7A98, &qword_1C6EE7840);
  if (v137(v72, 1, v135) == 1)
  {
    sub_1C6E1ED14(v72, &qword_1EC1F7A98, &qword_1C6EE7840);
LABEL_41:
    v73 = v45;
    v75 = v130;
    *v130 = *(v45 + 181);
    v84 = v75 + *(v46 + 20);
    sub_1C6EE4420();
    goto LABEL_42;
  }

  if (swift_getEnumCaseMultiPayload() != 4)
  {
    sub_1C6E1EC08(v72, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    goto LABEL_41;
  }

  v73 = v45;
  v74 = v72;
  v75 = v130;
  sub_1C6E1EC68(v74, v130, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
LABEL_42:
  v85 = *v75;
  v86 = v75[1];
  sub_1C6E00D18(*v75, v86);
  result = sub_1C6E1EC08(v75, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v87 = v86 >> 62;
  if ((v86 >> 62) > 1)
  {
    if (v87 == 2)
    {
      v90 = *(v85 + 16);
      v89 = *(v85 + 24);
      result = sub_1C6DF1134(v85, v86);
      v88 = v89 - v90;
      if (__OFSUB__(v89, v90))
      {
LABEL_81:
        __break(1u);
        goto LABEL_82;
      }

      v70 = v132;
    }

    else
    {
      v88 = 0;
    }
  }

  else if (v87)
  {
    result = sub_1C6DF1134(v85, v86);
    LODWORD(v88) = HIDWORD(v85) - v85;
    if (__OFSUB__(HIDWORD(v85), v85))
    {
LABEL_83:
      __break(1u);
      return result;
    }

    v88 = v88;
  }

  else
  {
    v88 = BYTE6(v86);
  }

  v96 = v71 - v88 / 2;
  if (__OFSUB__(v71, v88 / 2))
  {
    goto LABEL_75;
  }

  sub_1C6E1EC08(v70, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
  v98 = v126;
  v97 = v127;
  sub_1C6E00D18(v126, v127);
  v99 = sub_1C6E1EB64(v98, v97, v96);
  result = sub_1C6DF1134(v98, v97);
  v139 = *(v73 + 181);
  v100 = *(v99 + 16);
  if (v100)
  {
    v101 = 0;
    v102 = (v99 + 40);
    while (v101 < *(v99 + 16))
    {
      ++v101;
      v104 = *(v102 - 1);
      v103 = *v102;
      sub_1C6E00D18(v104, *v102);
      sub_1C6EE4240();
      result = sub_1C6DF1134(v104, v103);
      v102 += 2;
      if (v100 == v101)
      {
        v106 = *(&v139 + 1);
        v105 = v139;
        goto LABEL_65;
      }
    }

    __break(1u);
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v105 = 0;
  v106 = 0xC000000000000000;
LABEL_65:

  v142 = v67;
  v143 = v68;
  v140 = MEMORY[0x1E6969080];
  v141 = MEMORY[0x1E6969078];
  *&v139 = v105;
  *(&v139 + 1) = v106;
  v107 = __swift_project_boxed_opaque_existential_1(&v139, MEMORY[0x1E6969080]);
  v108 = *v107;
  v109 = v107[1];
  sub_1C6E00D18(v67, v68);
  sub_1C6E00D18(v105, v106);
  sub_1C6E1E4C8(v108, v109);
  sub_1C6DF1134(v105, v106);
  sub_1C6DF1134(v67, v68);
  result = __swift_destroy_boxed_opaque_existential_1(&v139);
  v110 = v143 | 0x1000000000000000;
  v111 = v133;
  *v133 = v142;
  v111[1] = v110;
  *(v111 + 16) = 1;
  return result;
}

uint64_t sub_1C6E1E0F8()
{
  sub_1C6E1EC08(v0 + OBJC_IVAR____TtC18ComputationalGraph29FeaturePreprocessingContainer_input, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
  v1 = *(v0 + OBJC_IVAR____TtC18ComputationalGraph29FeaturePreprocessingContainer_paddingValue + 16);
  sub_1C6E1E448(*(v0 + OBJC_IVAR____TtC18ComputationalGraph29FeaturePreprocessingContainer_paddingValue), *(v0 + OBJC_IVAR____TtC18ComputationalGraph29FeaturePreprocessingContainer_paddingValue + 8));
  return sub_1C6E1ED14(v0 + OBJC_IVAR____TtC18ComputationalGraph29FeaturePreprocessingContainer_output, &qword_1EC1F7C40, &qword_1C6EE8010);
}

uint64_t sub_1C6E1E168()
{
  v1 = v0[3];

  sub_1C6E1EC08(v0 + OBJC_IVAR____TtC18ComputationalGraph19AbstractComputation_modelIOSpec, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIOSpec);
  sub_1C6E1ED14(v0 + OBJC_IVAR____TtC18ComputationalGraph19AbstractComputation_nodeCachePolicy, &qword_1EC1F7508, &unk_1C6EE6690);
  v2 = OBJC_IVAR____TtC18ComputationalGraph29FeaturePreprocessingContainer_input;

  sub_1C6E1EC08(v0 + v2, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO);
  v3 = *(v0 + OBJC_IVAR____TtC18ComputationalGraph29FeaturePreprocessingContainer_paddingValue + 16);
  sub_1C6E1E448(*(v0 + OBJC_IVAR____TtC18ComputationalGraph29FeaturePreprocessingContainer_paddingValue), *(v0 + OBJC_IVAR____TtC18ComputationalGraph29FeaturePreprocessingContainer_paddingValue + 8));
  sub_1C6E1ED14(v0 + OBJC_IVAR____TtC18ComputationalGraph29FeaturePreprocessingContainer_output, &qword_1EC1F7C40, &qword_1C6EE8010);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FeaturePreprocessingContainer()
{
  result = qword_1EDEF6360;
  if (!qword_1EDEF6360)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6E1E2D8()
{
  result = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_ModelIO(319);
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    v4 = &unk_1C6EE7FF0;
    swift_getTupleTypeLayout2();
    v5 = &v2;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1C6E1E38C()
{
  result = qword_1EC1F7C38;
  if (!qword_1EC1F7C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1F7C38);
  }

  return result;
}

uint64_t sub_1C6E1E3E0(uint64_t a1, unint64_t a2, char a3)
{
  if ((~a2 & 0x3000000000000000) != 0 || ~a3 != 0)
  {
    return sub_1C6E1E408(a1, a2);
  }

  return a1;
}

uint64_t sub_1C6E1E408(uint64_t a1, unint64_t a2)
{
  if (((a2 >> 60) & 3 | 4) == 4)
  {
    return sub_1C6E00D18(a1, a2);
  }

  return a1;
}

uint64_t sub_1C6E1E420(uint64_t a1, unint64_t a2, char a3)
{
  if ((~a2 & 0x3000000000000000) != 0 || ~a3 != 0)
  {
    return sub_1C6E1E448(a1, a2);
  }

  return a1;
}

uint64_t sub_1C6E1E448(uint64_t a1, unint64_t a2)
{
  if (((a2 >> 60) & 3 | 4) == 4)
  {
    return sub_1C6DF1134(a1, a2);
  }

  return a1;
}

uint64_t sub_1C6E1E460(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6E1E4C8(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      result = sub_1C6EE41F0();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_1C6E1E600(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C6E1E600(uint64_t a1, uint64_t a2)
{
  result = sub_1C6EE3F90();
  if (!result || (result = sub_1C6EE3FC0(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1C6EE3FB0();
      return sub_1C6EE41F0();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6E1E694(uint64_t a1, int8x16_t *a2)
{
  v3 = *a1;
  result = *(a1 + 16);
  v5 = *(a1 + 32);
  v6 = v5 >> 6;
  if (v5 >> 6 > 1)
  {
    if (v6 != 2)
    {
      v26 = a2[2].u8[0];
      if (v26 < 0xC0)
      {
        return 0;
      }

      v27 = vorrq_s8(*a2, a2[1]);
      v28 = vorr_s8(*v27.i8, *&vextq_s8(v27, v27, 8uLL));
      return v26 == 192 && *&v28 == 0;
    }

    v17 = a2[2].i8[0];
    if ((v17 & 0xC0) != 0x80)
    {
      return 0;
    }

    v18 = *(a1 + 24);
    v19 = *(a1 + 31);
    v20 = *(a1 + 29);
    v21 = *(a1 + 25);
    v22 = a2->i64[0];
    v9 = a2[1].i64[0];
    v23 = a2[1].u64[1];
    if (a2->i8[8])
    {
      if (v22 > 3)
      {
        if (v22 > 5)
        {
          if (v22 == 6)
          {
            if (v3 != 6)
            {
              return 0;
            }
          }

          else if (v3 != 7)
          {
            return 0;
          }
        }

        else if (v22 == 4)
        {
          if (v3 != 4)
          {
            return 0;
          }
        }

        else if (v3 != 5)
        {
          return 0;
        }
      }

      else if (v22 > 1)
      {
        if (v22 == 2)
        {
          if (v3 != 2)
          {
            return 0;
          }
        }

        else if (v3 != 3)
        {
          return 0;
        }
      }

      else if (v22)
      {
        if (v3 != 1)
        {
          return 0;
        }
      }

      else if (v3)
      {
        return 0;
      }
    }

    else if (v3 != v22)
    {
      return 0;
    }

    v30 = v21 | ((v20 | (v19 << 16)) << 32);
    v31 = v18 | (v30 << 8);
    v32 = (v30 >> 52) & 3;
    if (v5)
    {
      v33 = 4;
    }

    else
    {
      v33 = 0;
    }

    v34 = v33 | v32;
    if (v34 <= 1)
    {
      if (v34)
      {
        if (v17)
        {
          v40 = 4;
        }

        else
        {
          v40 = 0;
        }

        if ((v40 | (v23 >> 60) & 3) != 1)
        {
          return 0;
        }

        v36 = *&result;
        return v36 == *&v9;
      }

      if (v17)
      {
        v37 = 4;
      }

      else
      {
        v37 = 0;
      }

      if (v37 | (v23 >> 60) & 3)
      {
        return 0;
      }
    }

    else
    {
      if (v34 == 2)
      {
        if (v17)
        {
          v38 = 4;
        }

        else
        {
          v38 = 0;
        }

        return (v38 | (v23 >> 60) & 3) == 2 && result == v9;
      }

      if (v34 == 3)
      {
        if (v17)
        {
          v35 = 4;
        }

        else
        {
          v35 = 0;
        }

        return (v35 | (v23 >> 60) & 3) == 3 && result == v9;
      }

      if (v17)
      {
        v39 = 4;
      }

      else
      {
        v39 = 0;
      }

      if ((v39 | (v23 >> 60) & 3) != 4)
      {
        return 0;
      }
    }

    return (sub_1C6E6B56C(result, v31, v9, v23) & 1) != 0;
  }

  if (!v6)
  {
    if (a2[2].u8[0] > 0x3Fu)
    {
      return 0;
    }

    v7 = *(a1 + 8);
    v8 = *(a1 + 9) | ((*(a1 + 13) | (*(a1 + 15) << 16)) << 32);
    v9 = a2->i64[0];
    v10 = a2->u64[1];
    v11 = v7 | (v8 << 8);
    v12 = (v8 >> 52) & 3;
    if (result)
    {
      v13 = 4;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13 | v12;
    if (a2[1].i32[0])
    {
      v15 = 4;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15 | (v10 >> 60) & 3;
    if (v14 > 1)
    {
      if (v14 == 2)
      {
        return v16 == 2 && v3 == v9;
      }

      if (v14 == 3)
      {
        return v16 == 3 && v3 == v9;
      }

      if (v16 == 4)
      {
LABEL_75:
        if (sub_1C6E6B56C(v3, v11 & 0xCFFFFFFFFFFFFFFFLL, v9, v10 & 0xCFFFFFFFFFFFFFFFLL))
        {
          return 1;
        }
      }

      return 0;
    }

    if (!v14)
    {
      if (v16)
      {
        return 0;
      }

      goto LABEL_75;
    }

    if (v16 != 1)
    {
      return 0;
    }

    v36 = *&v3;
    return v36 == *&v9;
  }

  if ((a2[2].i8[0] & 0xC0) != 0x40)
  {
    return 0;
  }

  v24 = a2->i64[0];
  v25 = a2[1].i64[0];
  if (a2->i8[8])
  {
    if (v24 > 3)
    {
      if (v24 > 5)
      {
        if (v24 == 6)
        {
          if (v3 != 6)
          {
            return 0;
          }
        }

        else if (v3 != 7)
        {
          return 0;
        }
      }

      else if (v24 == 4)
      {
        if (v3 != 4)
        {
          return 0;
        }
      }

      else if (v3 != 5)
      {
        return 0;
      }
    }

    else if (v24 > 1)
    {
      if (v24 == 2)
      {
        if (v3 != 2)
        {
          return 0;
        }
      }

      else if (v3 != 3)
      {
        return 0;
      }
    }

    else if (v24)
    {
      if (v3 != 1)
      {
        return 0;
      }
    }

    else if (v3)
    {
      return 0;
    }
  }

  else if (v3 != v24)
  {
    return 0;
  }

  if ((a2[1].i8[8] & 1) == 0)
  {
    return result == v25;
  }

  if (v25 > 3)
  {
    if (v25 > 5)
    {
      if (v25 == 6)
      {
        if (result == 6)
        {
          return 1;
        }
      }

      else if (result == 7)
      {
        return 1;
      }
    }

    else if (v25 == 4)
    {
      if (result == 4)
      {
        return 1;
      }
    }

    else if (result == 5)
    {
      return 1;
    }

    return 0;
  }

  if (v25 > 1)
  {
    if (v25 == 2)
    {
      if (result == 2)
      {
        return 1;
      }
    }

    else if (result == 3)
    {
      return 1;
    }

    return 0;
  }

  if (!v25)
  {
    return !result;
  }

  if (result != 1)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1C6E1EAFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6E1EB64(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a3)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v4 = result;
    v6 = sub_1C6EE4D00();
    v7 = v6;
    v6[2] = a3;
    v6[4] = v4;
    v6[5] = a2;
    v8 = a3 - 1;
    if (v8)
    {
      v9 = v6 + 7;
      do
      {
        sub_1C6E00D18(v4, a2);
        *(v9 - 1) = v4;
        *v9 = a2;
        v9 += 2;
        --v8;
      }

      while (v8);
    }

    sub_1C6E00D18(v4, a2);
    return v7;
  }

  return result;
}