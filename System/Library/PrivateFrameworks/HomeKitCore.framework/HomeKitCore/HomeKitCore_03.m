uint64_t sub_2530FC9E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for AnyModelStateChange(0);
  v20 = *(v12 - 8);
  v13 = *(v20 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a5 + 24))(&v21, a2, a4, a5);
  (*(*(a4 - 8) + 8))(a3, a4);
  swift_unknownObjectRelease();
  LOBYTE(a3) = v21;
  v16 = *(type metadata accessor for HomesStore.CoreData.ManagedObjectChangeSet.Delete() + 20);
  v17 = sub_253148944();
  (*(*(v17 - 8) + 16))(v15, a1 + v16, v17);
  sub_2530FD014(a1);
  v15[*(type metadata accessor for AnyModelStateChange.Tombstone(0) + 20)] = a3;
  swift_storeEnumTagMultiPayload();
  sub_2530FD070(v15, a6);
  return (*(v20 + 56))(a6, 0, 1, v12);
}

uint64_t sub_2530FCC54()
{
  v0 = sub_253148A94();
  __swift_allocate_value_buffer(v0, qword_27F5818F8);
  __swift_project_value_buffer(v0, qword_27F5818F8);
  return sub_253148A84();
}

uint64_t AnyModelStateChange.Tombstone.modelID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_253148944();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AnyModelStateChange.Tombstone.modelType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AnyModelStateChange.Tombstone(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2530FCDB0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_2530FCDF8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2530FCE70(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2530FCEA8()
{
  sub_2530FCF28();
  if (v0 <= 0x3F)
  {
    type metadata accessor for AnyModelStateChange.Tombstone(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_2530FCF28()
{
  if (!qword_27F581920)
  {
    v0 = sub_253148D64();
    if (!v1)
    {
      atomic_store(v0, &qword_27F581920);
    }
  }
}

uint64_t sub_2530FCFA0()
{
  result = sub_253148944();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2530FD014(uint64_t a1)
{
  v2 = type metadata accessor for HomesStore.CoreData.ManagedObjectChangeSet.Delete();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2530FD070(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnyModelStateChange(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2530FD0D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5806E0, &qword_25314D900);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2530FD168(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 homes];
  type metadata accessor for HMCDHomeModel();
  sub_2530FD6F4(&qword_27F581940, 255, type metadata accessor for HMCDHomeModel);
  v4 = sub_253148F74();

  *a2 = v4;
}

void sub_2530FD20C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  type metadata accessor for HMCDHomeModel();
  sub_2530FD6F4(&qword_27F581940, 255, type metadata accessor for HMCDHomeModel);
  v4 = sub_253148F64();
  [v3 setHomes_];
}

id HMCDHomesTopologyModel.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id HMCDHomesTopologyModel.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for HMCDHomesTopologyModel();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id HMCDHomesTopologyModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HMCDHomesTopologyModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_2530FD448(void *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_2530FD4B8(v2);
  return sub_2530D0B14;
}

void (*sub_2530FD4B8(void *a1))(void ***a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = sub_253148944();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[2] = v7;
  v9 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
    v5[4] = v10;
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v10 = malloc(v9);
    v5[4] = v10;
    v11 = malloc(v9);
  }

  v12 = v11;
  v5[5] = v11;
  v13 = [v1 modelID];
  sub_253148924();

  (*(v8 + 32))(v12, v10, v6);
  return sub_2530D0CD8;
}

uint64_t sub_2530FD650(uint64_t a1, uint64_t a2)
{
  result = sub_2530FD6F4(&qword_27F581938, a2, type metadata accessor for HMCDHomesTopologyModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2530FD6A8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for HMCDHomesTopologyModel();
  result = sub_2531493E4();
  *a1 = result;
  return result;
}

uint64_t sub_2530FD6F4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_2530FD73C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v104 = sub_253148534();
  v103 = *(v104 - 8);
  v6 = *(v103 + 64);
  MEMORY[0x28223BE20](v104);
  v102 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_253148824();
  v109 = *(v111 - 8);
  v8 = *(v109 + 64);
  MEMORY[0x28223BE20](v111);
  v110 = &v102 - v9;
  v129 = &v102 - v9;
  v128 = a2;
  v115 = sub_253148974();
  v108 = a1;
  sub_253148964();
  v10 = *(a3 + 48);
  v112 = a2;
  v113 = a3;
  v107 = a3 + 48;
  v106 = v10;
  (v10)(&v123, a2, a3);
  sub_2530D0400();
  v12 = (*(v11 + 8))();
  v13 = 0;
  v15 = v12 + 64;
  v14 = *(v12 + 64);
  v116 = v12;
  v16 = 1 << *(v12 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v14;
  v19 = (v16 + 63) >> 6;
  v20 = MEMORY[0x277D84F98];
  v114 = v12 + 64;
LABEL_5:
  v119 = v20;
  if (v18)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v22 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v22 >= v19)
    {

      v106(&v123);
      sub_2530D0400();
      v39 = (*(v38 + 16))();
      v40 = v39;
      if ((v39 & 0xC000000000000001) != 0)
      {
        v41 = sub_253149574();
        v42 = 0;
        v43 = 0;
        v44 = 0;
        v40 = v41 | 0x8000000000000000;
      }

      else
      {
        v45 = -1 << *(v39 + 32);
        v42 = v39 + 64;
        v43 = ~v45;
        v46 = -v45;
        if (v46 < 64)
        {
          v47 = ~(-1 << v46);
        }

        else
        {
          v47 = -1;
        }

        v44 = v47 & *(v39 + 64);
      }

      v48 = v115;
      v49 = 0;
      v107 = v43;
      v50 = (v43 + 64) >> 6;
      v51 = MEMORY[0x277D84F98];
      v114 = v50;
      v116 = v42;
      while (1)
      {
        if ((v40 & 0x8000000000000000) != 0)
        {
          v62 = sub_253149584();
          if (!v62)
          {
            goto LABEL_36;
          }

          v64 = v63;
          v120[0] = v62;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581960, &qword_2531507D0);
          swift_dynamicCast();
          v59 = v123;
          v120[0] = v64;
          sub_2530CF970(0, &qword_27F581968, 0x277CCAC30);
          swift_dynamicCast();
          v61 = v123;
          i = v49;
          v57 = v44;
          if (!v59)
          {
LABEL_36:
            v118 = v51;
LABEL_37:
            sub_2530DFAD4();
            v76 = v102;
            sub_253148814();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581950, &qword_25314F138);
            v77 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581958, &unk_25314F140) - 8);
            v78 = *(*v77 + 72);
            v79 = (*(*v77 + 80) + 32) & ~*(*v77 + 80);
            v80 = swift_allocObject();
            *(v80 + 16) = xmmword_25314D290;
            v81 = v80 + v79;
            v82 = (v80 + v79 + v77[14]);
            v83 = v103;
            v84 = v104;
            (*(v103 + 16))(v80 + v79, v76, v104);
            v85 = objc_opt_self();
            v86 = v119;

            v87 = v118;

            v88 = [v85 expressionForEvaluatedObject];
            v82[1] = 0;
            v82[2] = 0;
            *v82 = v88;
            v89 = sub_253109FA0(v80);
            swift_setDeallocating();
            sub_2530CD33C(v81, &qword_27F581958, &unk_25314F140);
            swift_deallocClassInstance();
            (*(v83 + 8))(v76, v84);
            v123 = 1;
            v124 = v89;
            v125 = v86;
            v126 = v87;
            v127 = 0;
            v90 = v108;
            sub_253148954();
            v91 = v121;
            v92 = v122;
            __swift_project_boxed_opaque_existential_1(v120, v121);
            v93 = v105;
            sub_2530FFD64(&v123, v91, *(v92 + 8));
            if (v93)
            {
              (*(*(v48 - 8) + 8))(v90, v48);

              __swift_destroy_boxed_opaque_existential_0(v120);
              goto LABEL_39;
            }

            (*(*(v48 - 8) + 8))(v90, v48);

            __swift_destroy_boxed_opaque_existential_0(v120);

            (*(v109 + 8))(v110, v111);
            return;
          }
        }

        else
        {
          v54 = v49;
          v55 = v44;
          for (i = v49; !v55; ++v54)
          {
            i = v54 + 1;
            if (__OFADD__(v54, 1))
            {
              goto LABEL_45;
            }

            if (i >= v50)
            {
              v118 = v51;
              goto LABEL_37;
            }

            v55 = *(v42 + 8 * i);
          }

          v57 = (v55 - 1) & v55;
          v58 = (i << 9) | (8 * __clz(__rbit64(v55)));
          v59 = *(*(v40 + 48) + v58);
          v60 = *(*(v40 + 56) + v58);

          v61 = v60;
          if (!v59)
          {
            goto LABEL_36;
          }
        }

        v117 = v57;
        v118 = v61;
        v112 = v49;
        v113 = v44;
        v65 = *v59;
        v120[0] = v59;
        sub_253149244();
        swift_retain_n();
        v66 = sub_253148B74();
        v68 = v67;
        v123 = v66;
        v124 = v67;

        sub_253109850(46, 0xE100000000000000, v66, v68);
        v70 = v69;

        if (v70)
        {

          v123 = v59;

          v98 = sub_253148B74();
          v100 = v99;
          sub_253109940();
          swift_allocError();
          *v101 = v98;
          *(v101 + 8) = v100;
          *(v101 + 16) = 0;
          swift_willThrow();

          sub_2530DFAD4();
          (*(*(v115 - 8) + 8))(v108);

          goto LABEL_40;
        }

        sub_253148BC4();
        sub_253148BA4();

        v72 = v123;
        v71 = v124;
        v73 = v51;
        if (v51[2])
        {
          sub_25311D908(v123, v124);
          if (v74)
          {
            sub_253109940();
            swift_allocError();
            *v75 = v72;
            *(v75 + 8) = v71;
            *(v75 + 16) = 0;
            swift_willThrow();

            sub_2530DFAD4();
            (*(*(v115 - 8) + 8))(v108);
LABEL_39:

            goto LABEL_40;
          }
        }

        v52 = v118;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v123 = v73;
        sub_25312FC20(v52, v72, v71, isUniquelyReferenced_nonNull_native);

        v51 = v123;
        v49 = i;
        v42 = v116;
        v44 = v117;
        v50 = v114;
        v48 = v115;
      }
    }

    v18 = *(v15 + 8 * v22);
    ++v13;
    if (v18)
    {
      v13 = v22;
LABEL_10:
      v23 = __clz(__rbit64(v18)) | (v13 << 6);
      v24 = *(*(v116 + 48) + 8 * v23);
      v25 = (*(v116 + 56) + 16 * v23);
      v26 = v25[1];
      v117 = *v25;
      v27 = *v24;
      v120[0] = v24;
      sub_253149244();
      swift_retain_n();
      v118 = v26;

      v28 = sub_253148B74();
      v30 = v29;
      v123 = v28;
      v124 = v29;

      sub_253109850(46, 0xE100000000000000, v28, v30);
      v32 = v31;

      if (v32)
      {

        v123 = v24;

        v94 = sub_253148B74();
        v96 = v95;
        sub_253109940();
        swift_allocError();
        *v97 = v94;
        *(v97 + 8) = v96;
        *(v97 + 16) = 0;
        swift_willThrow();

        (*(*(v115 - 8) + 8))(v108);
        goto LABEL_40;
      }

      sub_253148BC4();
      sub_253148BA4();

      v33 = v123;
      v34 = v124;
      v35 = v119;
      if (*(v119 + 16))
      {
        sub_25311D908(v123, v124);
        if (v36)
        {

          sub_253109940();
          swift_allocError();
          *v37 = v33;
          *(v37 + 8) = v34;
          *(v37 + 16) = 0;
          swift_willThrow();

          (*(*(v115 - 8) + 8))(v108);
LABEL_40:

          (*(v109 + 8))(v110, v111);
          return;
        }
      }

      v18 &= v18 - 1;
      v21 = swift_isUniquelyReferenced_nonNull_native();
      v123 = v35;
      sub_25312FD98(v117, v118, v33, v34, v21);

      v20 = v123;
      v15 = v114;
      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
}

uint64_t sub_2530FE3A0(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_2531496F4();
  MEMORY[0x259BFC7D0](v5);

  if (v4 == -1)
  {
    __break(1u);
  }

  else
  {
    *v1 = v4 + 1;
    v7 = sub_253148B54();
    v8 = [objc_opt_self() expressionForVariable_];

    v9 = v2[1];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = v2[1];
    sub_25312FA20(v8, 0, 0, a1, isUniquelyReferenced_nonNull_native);
    v2[1] = v11;
    return 0x5F6C61636F6C5FLL;
  }

  return result;
}

id sub_2530FE4B4()
{
  v1 = sub_253149764();
  v2 = objc_opt_self();
  v3 = [v2 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v4 = [v2 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v5 = [v2 expressionForConditional:v0 trueExpression:v3 falseExpression:v4];

  return v5;
}

id sub_2530FE5A8()
{
  v1 = sub_2530CF970(0, &qword_27F5819C0, 0x277CCA9C0);
  v9[3] = v1;
  v9[0] = v0;
  v2 = objc_opt_self();
  v3 = v0;
  v4 = sub_253148B54();
  v5 = [v2 _newKeyPathExpressionForString_];

  if (!v5)
  {
    v1 = 0;
    v8[1] = 0;
    v8[2] = 0;
  }

  v8[0] = v5;
  v8[3] = v1;
  v6 = objc_allocWithZone(MEMORY[0x277CCAAA8]);
  result = sub_253109994(v9, v8);
  if (!result)
  {
    __break(1u);
  }

  return result;
}

void *sub_2530FE680(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, char a5)
{
  v6 = v5;
  if ([v5 expressionType] == 1)
  {
    if (a5 & 1) == 0 || a3[2] && (sub_25311D908(a1, a2), (v12) || *(a4 + 16) && (sub_25311D908(a1, a2), (v13))
    {
      if (a3[2])
      {
        v14 = sub_25311D908(a1, a2);
        if (v15)
        {
          v16 = (a3[7] + 16 * v14);
          v18 = *v16;
          v17 = v16[1];
        }
      }

      v19 = sub_253148B54();

      v20 = objc_opt_self();
      a3 = [v20 expressionForKeyPath_];

      v21 = sub_253148B54();
      [v20 expressionForKeyPath_];

      if (!*(a4 + 16))
      {
        return a3;
      }

      v22 = sub_25311D908(a1, a2);
      if ((v23 & 1) == 0)
      {
        return a3;
      }

      v24 = *(*(a4 + 56) + 8 * v22);
      goto LABEL_13;
    }

    goto LABEL_17;
  }

  v64 = a4;
  if ([v5 expressionType] == 3)
  {
    v26 = [v5 keyPath];
    v27 = sub_253148B64();
    v29 = v28;

    v61 = v27;
    v62 = v29;
    v57 = 64;
    v58 = 0xE100000000000000;
    sub_25310A5B0();
    LOBYTE(v26) = sub_253149214();

    if ((v26 & 1) == 0)
    {
      v38 = [v6 keyPath];
      v39 = sub_253148B64();
      v41 = v40;

      v61 = v39;
      v62 = v41;
      MEMORY[0x259BFC7D0](46, 0xE100000000000000);
      MEMORY[0x259BFC7D0](a1, a2);
      v42 = v39;
      if (a5 & 1) == 0 || a3[2] && (sub_25311D908(v61, v62), (v43) || *(v64 + 16) && (sub_25311D908(v39, v41), (v44))
      {
        if (a3[2])
        {
          v45 = sub_25311D908(v39, v41);
          if (v46)
          {
            v47 = (a3[7] + 16 * v45);
            v49 = *v47;
            v48 = v47[1];
          }
        }

        v50 = sub_253148B54();

        v51 = objc_opt_self();
        a3 = [v51 expressionForKeyPath_];

        v52 = sub_253148B54();
        [v51 expressionForKeyPath_];

        if (!*(v64 + 16))
        {

          return a3;
        }

        v53 = sub_25311D908(v42, v41);
        v55 = v54;

        if ((v55 & 1) == 0)
        {
          return a3;
        }

        v24 = *(*(v64 + 56) + 8 * v53);
LABEL_13:
        v25 = v24;
        return a3;
      }

      sub_253109940();
      swift_allocError();
      *v56 = v39;
      *(v56 + 8) = v41;
      *(v56 + 16) = 0;
LABEL_18:
      swift_willThrow();
      return a3;
    }
  }

  if ([v6 expressionType] == 20)
  {
LABEL_17:
    sub_253109940();
    swift_allocError();
    *v30 = a1;
    *(v30 + 8) = a2;
    *(v30 + 16) = 0;

    goto LABEL_18;
  }

  v31 = sub_2530CF970(0, &qword_27F5819C0, 0x277CCA9C0);
  v63 = v31;
  v61 = v6;
  v32 = objc_opt_self();
  v33 = v6;
  v34 = sub_253148B54();
  v35 = [v32 _newKeyPathExpressionForString_];

  if (!v35)
  {
    v31 = 0;
    v58 = 0;
    v59 = 0;
  }

  v57 = v35;
  v60 = v31;
  v36 = objc_allocWithZone(MEMORY[0x277CCAAA8]);
  result = sub_253109994(&v61, &v57);
  if (result)
  {
    return result;
  }

  __break(1u);
  return result;
}

id sub_2530FEB94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v39 = a1;
  v8 = sub_253148474();
  v43 = *(v8 - 8);
  v44 = v8;
  v9 = *(v43 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = sub_2531491F4();
  v40 = *(v13 - 8);
  v41 = v13;
  v14 = *(v40 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v35 - v16;
  v18 = *(AssociatedTypeWitness - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v15);
  v22 = &v35 - v21;
  v23 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  (*(v25 + 16))(&v35 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581970, &qword_25314F150);
  if (swift_dynamicCast())
  {
    v36 = v22;
    v37 = v18;
    v38 = v3;
    sub_2530BDB14(&v46, &v49);
    v26 = v50;
    v27 = v51;
    __swift_project_boxed_opaque_existential_1(&v49, v50);
    v28 = (*(v27 + 16))(v39, v26, v27);
    if (!v4)
    {
      v5 = v28;
      __swift_destroy_boxed_opaque_existential_0(&v49);
      return v5;
    }

    __swift_destroy_boxed_opaque_existential_0(&v49);
    v5 = 0;
    v29 = v4;
    v18 = v37;
    v22 = v36;
  }

  else
  {
    v48 = 0;
    v46 = 0u;
    v47 = 0u;
    sub_2530CD33C(&v46, &qword_27F581978, &unk_25314F158);
    v29 = 0;
  }

  sub_253148484();
  sub_253148494();
  if (v5)
  {

    (*(v43 + 8))(v11, v44);
    (*(v18 + 56))(v17, 1, 1, AssociatedTypeWitness);
    (*(v40 + 8))(v17, v41);
    if (v29)
    {
      goto LABEL_11;
    }
  }

  else
  {
    (*(v43 + 8))(v11, v44);
    (*(v18 + 56))(v17, 0, 1, AssociatedTypeWitness);
    (*(v18 + 32))(v22, v17, AssociatedTypeWitness);
    v45[3] = AssociatedTypeWitness;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v45);
    (*(v18 + 16))(boxed_opaque_existential_0, v22, AssociatedTypeWitness);
    sub_2530FF174(v45, &v46);
    __swift_destroy_boxed_opaque_existential_0(v45);
    if (*(&v47 + 1))
    {
      sub_2530C02F4(&v46, &v49);
      __swift_project_boxed_opaque_existential_1(&v49, v50);
      v32 = v29;
      v33 = sub_253149724();
      v5 = [objc_opt_self() expressionForConstantValue_];
      swift_unknownObjectRelease();

      __swift_destroy_boxed_opaque_existential_0(&v49);
      (*(v18 + 8))(v22, AssociatedTypeWitness);
      return v5;
    }

    (*(v18 + 8))(v22, AssociatedTypeWitness);
    sub_2530CD33C(&v46, &qword_27F5818A0, &qword_25314E9C0);
    if (v29)
    {
      goto LABEL_11;
    }
  }

  sub_253109940();
  swift_allocError();
  *v31 = 0;
  *(v31 + 8) = 0;
  *(v31 + 16) = 3;
LABEL_11:
  swift_willThrow();
  return v5;
}

uint64_t sub_2530FF174@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2531488E4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v57[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_253148944();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v57[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2530C0304(a1, v71);
  sub_2530C0304(v71, &v64);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5818A0, &qword_25314E9C0);
  swift_dynamicCast();
  if (!v70)
  {
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return __swift_destroy_boxed_opaque_existential_0(v71);
  }

  sub_2530CD33C(&v68, &qword_27F5818A0, &qword_25314E9C0);
  if (!swift_dynamicCast())
  {
    if (swift_dynamicCast())
    {
      (*(v10 + 8))(v13, v9);
      goto LABEL_12;
    }

    if (swift_dynamicCast())
    {
      (*(v5 + 8))(v8, v4);
      goto LABEL_12;
    }

    if (swift_dynamicCast())
    {
      sub_2530C2478(v68, *(&v68 + 1));
      goto LABEL_12;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581980, &qword_25314F168);
    if (swift_dynamicCast())
    {
      sub_2530BDB14(&v68, &v64);
      v16 = *__swift_project_boxed_opaque_existential_1(&v64, v66) + 1;
      *(a2 + 24) = MEMORY[0x277D83B88];
      *a2 = v16;
    }

    else
    {
      type metadata accessor for Decimal(0);
      if (swift_dynamicCast())
      {
        v64 = v68;
        v65 = v69;
        v17 = objc_allocWithZone(MEMORY[0x277CCA980]);
        v61 = v64;
        v62 = v65;
        v18 = [v17 initWithDecimal_];
        [v18 floatValue];
        v20 = v19;

        *(a2 + 24) = MEMORY[0x277D83A90];
        *a2 = v20;
        return __swift_destroy_boxed_opaque_existential_0(v71);
      }

      v21 = MEMORY[0x277D83B88];
      if ((swift_dynamicCast() & 1) != 0 || (swift_dynamicCast() & 1) != 0 || (swift_dynamicCast() & 1) != 0 || (swift_dynamicCast() & 1) != 0 || (swift_dynamicCast() & 1) != 0 || (swift_dynamicCast() & 1) != 0 || (swift_dynamicCast() & 1) != 0 || (swift_dynamicCast() & 1) != 0 || (swift_dynamicCast() & 1) != 0 || (swift_dynamicCast() & 1) != 0 || (swift_dynamicCast() & 1) != 0 || (swift_dynamicCast() & 1) != 0 || (swift_dynamicCast() & 1) != 0 || swift_dynamicCast())
      {
        goto LABEL_12;
      }

      type metadata accessor for ComparisonResult(0);
      if (swift_dynamicCast())
      {
        v22 = v68;
        *(a2 + 24) = v21;
        *a2 = v22;
        return __swift_destroy_boxed_opaque_existential_0(v71);
      }

      if (swift_dynamicCast())
      {
        v23 = v68;
        *(a2 + 24) = MEMORY[0x277D837D0];
        *a2 = v23;
        return __swift_destroy_boxed_opaque_existential_0(v71);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581988, &qword_25314F170);
      if (swift_dynamicCast())
      {
        sub_2530BDB14(&v68, &v64);
        v25 = v66;
        v24 = v67;
        v26 = __swift_project_boxed_opaque_existential_1(&v64, v66);
        v27 = MEMORY[0x28223BE20](v26);
        *(&v56 - 4) = v25;
        *(&v56 - 3) = v24;
        *(&v56 - 2) = sub_2530FF174;
        *(&v56 - 1) = 0;
        MEMORY[0x28223BE20](v27);
        *(&v56 - 4) = v25;
        *(&v56 - 3) = v24;
        *(&v56 - 2) = sub_25310A1F8;
        *(&v56 - 1) = v28;
        v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580730, &qword_25314F190);
        v30 = v56;
        v31 = sub_253100290(sub_25310A218, (&v56 - 6), v25, v14, v29, v24, MEMORY[0x277D84950], &v61);
        v56 = v30;
        if (v30)
        {
          v56 = v61;
        }

        else
        {
          v49 = v31;
          *(a2 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5819A0, &qword_25314F188);
          *a2 = v49;
        }

        goto LABEL_15;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581990, &qword_25314F178);
      if (!swift_dynamicCast())
      {
        v39 = a1[3];
        v40 = __swift_project_boxed_opaque_existential_1(a1, v39);
        v41 = *(*(v39 - 8) + 64);
        MEMORY[0x28223BE20](v40);
        (*(v43 + 16))(&v57[-1] - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
        v44 = sub_253148B84();
        v46 = v45;
        sub_253109940();
        v47 = swift_allocError();
        *v48 = v44;
        *(v48 + 8) = v46;
        *(v48 + 16) = 1;
        v56 = v47;
        swift_willThrow();
        return __swift_destroy_boxed_opaque_existential_0(v71);
      }

      sub_2530BDB14(&v68, &v64);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581998, &qword_25314F180);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_25314E1C0;
      v33 = v66;
      v34 = v67;
      __swift_project_boxed_opaque_existential_1(&v64, v66);
      (*(v34 + 8))(&v61, v59, v33, v34);
      __swift_destroy_boxed_opaque_existential_0(v59);
      v35 = v63;
      v36 = __swift_project_boxed_opaque_existential_1(&v61, v63);
      v58 = v35;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v57);
      (*(*(v35 - 8) + 16))(boxed_opaque_existential_0, v36, v35);
      v38 = v56;
      sub_2530FF174(v57);
      v56 = v38;
      if (v38)
      {
        __swift_destroy_boxed_opaque_existential_0(v57);
        __swift_destroy_boxed_opaque_existential_0(&v61);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0(v57);
        __swift_destroy_boxed_opaque_existential_0(&v61);
        v50 = v66;
        v51 = v67;
        __swift_project_boxed_opaque_existential_1(&v64, v66);
        (*(v51 + 8))(&v61, v59, v50, v51);
        __swift_destroy_boxed_opaque_existential_0(&v61);
        v52 = v60;
        v53 = __swift_project_boxed_opaque_existential_1(v59, v60);
        v58 = v52;
        v54 = __swift_allocate_boxed_opaque_existential_0(v57);
        (*(*(v52 - 8) + 16))(v54, v53, v52);
        v55 = v56;
        sub_2530FF174(v57);
        v56 = v55;
        if (!v55)
        {
          __swift_destroy_boxed_opaque_existential_0(v57);
          __swift_destroy_boxed_opaque_existential_0(v59);
          *(a2 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5819A0, &qword_25314F188);
          *a2 = v32;
          goto LABEL_15;
        }

        __swift_destroy_boxed_opaque_existential_0(v57);
        __swift_destroy_boxed_opaque_existential_0(v59);
        sub_2530CD33C(v32 + 32, &qword_27F5818A0, &qword_25314E9C0);
      }

      *(v32 + 16) = 0;
    }

LABEL_15:
    __swift_destroy_boxed_opaque_existential_0(&v64);
    return __swift_destroy_boxed_opaque_existential_0(v71);
  }

LABEL_12:
  __swift_destroy_boxed_opaque_existential_0(v71);
  return sub_2530C0304(a1, a2);
}

id sub_2530FFCD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_2530FEB94(a1, a2, a3);
  if (v3 || !v6)
  {
    return v7;
  }

  v9 = v5;
  if (v6 != 1)
  {

    return v7;
  }

  v10 = v4;
  v11 = sub_2530FE4B4();
  sub_25310A19C(v7, v10, v9, 1u);
  return v11;
}

id sub_2530FFD64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2530FEB94(a1, a2, a3);
  if (!v3)
  {
    if (v7)
    {
      if (v7 == 1)
      {
        return result;
      }

      v8 = result;
      v9 = v5;
      v10 = v6;
      v11 = sub_253149764();
      v12 = [objc_opt_self() expressionForConstantValue_];
      swift_unknownObjectRelease();
      v13 = [objc_allocWithZone(MEMORY[0x277CCA918]) initWithLeftExpression:v8 rightExpression:v12 modifier:0 type:4 options:0];

      v14 = v10;
      v15 = v13;
    }

    else
    {
      v16 = result;
      v17 = v5;
      v18 = v6;
      v19 = sub_253149764();
      v14 = [objc_opt_self() expressionForConstantValue_];
      swift_unknownObjectRelease();
      v15 = [objc_allocWithZone(MEMORY[0x277CCA918]) initWithLeftExpression:v16 rightExpression:v14 modifier:0 type:4 options:0];
      sub_25310A19C(v16, v17, v18, 0);
    }

    return v15;
  }

  return result;
}

id sub_2530FFF08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2530FEB94(a1, a2, a3);
  if (!v4)
  {
    v3 = v5;
    if (v8 == 1)
    {
      v10 = v6;
      v11 = v7;
      v12 = sub_2530FE4B4();
      sub_25310A19C(v3, v10, v11, 1u);
      return v12;
    }
  }

  return v3;
}

unint64_t sub_2530FFF9C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    if (!a3)
    {
      sub_2531493C4();
      v5 = 0xD00000000000003BLL;
      v6 = 0x800000025314B3D0;
LABEL_8:
      MEMORY[0x259BFC7D0](v5, v6);
      MEMORY[0x259BFC7D0](a1, a2);
      MEMORY[0x259BFC7D0](46, 0xE100000000000000);
      return 0;
    }

    sub_2531493C4();
    v7 = "Fetchable predicate conversion error, unsupported constant: ";
LABEL_7:
    v6 = (v7 - 32) | 0x8000000000000000;
    v5 = 0xD00000000000003CLL;
    goto LABEL_8;
  }

  if (a3 == 2)
  {
    sub_2531493C4();
    v7 = "Fetchable predicate conversion error, unsupported operator: ";
    goto LABEL_7;
  }

  return 0xD000000000000037;
}

uint64_t sub_253100104(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(a3 + 24);
  a1[3] = v6;
  a1[4] = v7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a1);
  v12 = *(*(v6 - 8) + 16);
  v12(boxed_opaque_existential_0, v3, v6);
  v9 = *(a3 + 36);
  a2[3] = v6;
  a2[4] = v7;
  v10 = __swift_allocate_boxed_opaque_existential_0(a2);

  return (v12)(v10, v3 + v9, v6);
}

uint64_t sub_2531001BC(uint64_t a1, void (*a2)(uint64_t *))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[3] = AssociatedTypeWitness;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v7);
  (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_0, a1, AssociatedTypeWitness);
  a2(v7);
  return __swift_destroy_boxed_opaque_existential_0(v7);
}

uint64_t sub_253100290(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v52 = a8;
  v9 = v8;
  v67 = a2;
  v68 = a4;
  v66 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v61 = *(AssociatedTypeWitness - 8);
  v15 = *(v61 + 64);
  v16 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v50 = &v49 - v17;
  v53 = a5;
  v51 = *(a5 - 8);
  v18 = *(v51 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v63 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v64 = &v49 - v21;
  v22 = sub_2531491F4();
  v54 = *(v22 - 8);
  v55 = v22;
  v23 = *(v54 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v57 = &v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v49 - v27;
  v29 = *(*(a4 - 1) + 64);
  v30 = MEMORY[0x28223BE20](v26);
  v56 = &v49 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v62 = *(a3 - 1);
  v33 = *(v62 + 8);
  MEMORY[0x28223BE20](v32);
  v35 = &v49 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a6;
  v69 = swift_getAssociatedTypeWitness();
  v58 = *(v69 - 8);
  v36 = *(v58 + 64);
  MEMORY[0x28223BE20](v69);
  v38 = &v49 - v37;
  v39 = sub_253148C24();
  v70 = sub_253149504();
  v65 = sub_253149514();
  sub_2531494B4();
  (*(v62 + 2))(v35, v59, a3);
  v68 = v38;
  v62 = a3;
  result = sub_253148C14();
  if (v39 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v39)
  {
    v41 = (v61 + 48);
    v42 = (v61 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_253149204();
      result = (*v41)(v28, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v66(v28, v64);
      if (v9)
      {
        (*(v58 + 8))(v68, v69);

        (*(v51 + 32))(v52, v64, v53);
        return (*v42)(v28, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v42)(v28, AssociatedTypeWitness);
      sub_2531494F4();
      if (!--v39)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v43 = v57;
  sub_253149204();
  v44 = v43;
  v45 = v61;
  v46 = *(v61 + 48);
  v64 = (v61 + 48);
  v62 = v46;
  if (v46(v43, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v58 + 8))(v68, v69);
    (*(v54 + 8))(v44, v55);
    return v70;
  }

  else
  {
    v61 = *(v45 + 32);
    v47 = (v45 + 8);
    v48 = v50;
    while (1)
    {
      (v61)(v48, v44, AssociatedTypeWitness);
      v66(v48, v63);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v47)(v48, AssociatedTypeWitness);
      sub_2531494F4();
      sub_253149204();
      if (v62(v44, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v47)(v48, AssociatedTypeWitness);
    (*(v58 + 8))(v68, v69);

    return (*(v51 + 32))(v52, v63, v53);
  }
}

id sub_253100984(uint64_t a1, uint64_t a2)
{
  v13[3] = *(a2 + 16);
  __swift_allocate_boxed_opaque_existential_0(v13);
  MEMORY[0x259BFC360](a2);
  sub_2530FF174(v13, v14);
  __swift_destroy_boxed_opaque_existential_0(v13);
  if (!v3)
  {
    v5 = v15;
    if (v15)
    {
      v6 = __swift_project_boxed_opaque_existential_1(v14, v15);
      v7 = *(v5 - 8);
      v8 = *(v7 + 64);
      MEMORY[0x28223BE20](v6);
      v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v7 + 16))(v10);
      v11 = sub_253149724();
      (*(v7 + 8))(v10, v5);
      __swift_destroy_boxed_opaque_existential_0(v14);
    }

    else
    {
      v11 = 0;
    }

    v2 = [objc_opt_self() expressionForConstantValue_];
    swift_unknownObjectRelease();
  }

  return v2;
}

uint64_t sub_253100B50(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_253100B8C(uint64_t a1)
{
  v2 = sub_253148534();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_253148814();
  v8 = *(a1 + 8);
  if (*(v8 + 16))
  {
    result = sub_25311DA30(v6);
    if (v9)
    {
      v10 = *(v3 + 8);
      v11 = *(*(v8 + 56) + 24 * result);
      v10(v6, v2);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_253100CE4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_253100D20(uint64_t a1)
{
  v2 = sub_253148534();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  result = sub_253148814();
  v11 = *(a1 + 8);
  if (!*(v11 + 16))
  {
    __break(1u);
    goto LABEL_9;
  }

  result = sub_25311DA30(v9);
  if ((v12 & 1) == 0)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v13 = *(*(v11 + 56) + 24 * result + 8);
  v14 = *(v3 + 8);
  v15 = v13;
  v14(v9, v2);
  if (v13)
  {
    return v15;
  }

  result = sub_253148814();
  if (!*(v11 + 16))
  {
    goto LABEL_10;
  }

  result = sub_25311DA30(v7);
  if (v16)
  {
    v15 = *(*(v11 + 56) + 24 * result);
    v14(v7, v2);
    return v15;
  }

LABEL_11:
  __break(1u);
  return result;
}

void sub_253100ECC(uint64_t a1, void *a2)
{
  v5 = a2[2];
  v4 = a2[3];
  v6 = a2[4];
  v7 = sub_2531487B4();
  v8 = sub_2531491F4();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v76 - v11;
  v83 = v7;
  v13 = *(*(v7 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v10);
  v80 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v81 = &v76 - v17;
  v18 = *(v5 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v16);
  v22 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v26 = *(a1 + 32);
  v27 = __CFADD__(v26, 1);
  v28 = v26 + 1;
  if (v27)
  {
    __break(1u);
    goto LABEL_27;
  }

  v78 = v25;
  v79 = v23;
  v84 = v24;
  v85 = v6;
  *(a1 + 32) = v28;
  MEMORY[0x259BFC3D0](a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5819F0, &qword_25314F1E8);
  if (swift_dynamicCast())
  {
    v29 = *(&v87 + 1);
    v30 = v88;
    __swift_project_boxed_opaque_existential_1(&v86, *(&v87 + 1));
    v82 = (*(v30 + 8))(a1, v29, v30);
    __swift_destroy_boxed_opaque_existential_0(&v86);
    v31 = v89;
  }

  else
  {
    v77 = v12;
    v88 = 0;
    v86 = 0u;
    v87 = 0u;
    sub_2530CD33C(&v86, &qword_27F5819F8, &qword_25314F1F0);
    MEMORY[0x259BFC3D0](a2);
    v32 = v89;
    v33 = sub_2530FFF08(a1, v5, v85);
    v89 = v34;
    v36 = v35;
    (*(v18 + 8))(v22, v5);
    v31 = v32;
    if (v32)
    {
      return;
    }

    v82 = v33;
    if (v89)
    {

      v82 = v89;
    }

    else
    {
    }

    v12 = v77;
  }

  v37 = *(a1 + 32);
  v38 = v37 - 1;
  v39 = v83;
  if (!v37)
  {
LABEL_27:
    __break(1u);
    return;
  }

  *(a1 + 32) = v38;
  sub_2531487C4();
  v40 = v84;
  if ((*(v84 + 48))(v12, 1, v39) != 1)
  {
    v89 = v31;
    v45 = v81;
    (*(v40 + 32))(v81, v12, v39);
    swift_getAssociatedTypeWitness();
    v46 = v80;
    (*(v40 + 16))(v80, v45, v39);
    v47 = (*(v40 + 88))(v46, v39);
    if (v47 == *MEMORY[0x277CC9098])
    {
      v48 = v40;
      v49 = v82;
      sub_2530FE5A8();

      (*(v48 + 8))(v45, v39);
      return;
    }

    if (v47 == *MEMORY[0x277CC90A8])
    {
      v50 = v40;
      v51 = v82;
      v52 = sub_2530FE5A8();

      *&v86 = 0;
      v53 = sub_253149764();
      v54 = [objc_opt_self() expressionForConstantValue_];
      swift_unknownObjectRelease();
      [objc_allocWithZone(MEMORY[0x277CCA918]) initWithLeftExpression:v52 rightExpression:v54 modifier:0 type:4 options:0];

      (*(v50 + 8))(v45, v39);
      return;
    }

    if (v47 == *MEMORY[0x277CC90A0])
    {
    }

    else
    {
      v61 = *MEMORY[0x277CC90B0];
      v62 = v47;

      if (v62 != v61)
      {
        v69 = sub_2531487A4();
        v70 = *v69;
        *&v86 = v69;
        v71 = sub_253148B74();
        v73 = v72;
        sub_253109940();
        swift_allocError();
        *v74 = v71;
        *(v74 + 8) = v73;
        *(v74 + 16) = 0;
        swift_willThrow();

        v75 = *(v84 + 8);
        v75(v45, v39);
        v75(v46, v39);
        return;
      }
    }

    v63 = sub_2531487A4();
    v64 = *v63;
    *&v86 = v63;
    v65 = sub_253148B74();
    v67 = v66;
    sub_253109940();
    swift_allocError();
    *v68 = v65;
    *(v68 + 8) = v67;
    *(v68 + 16) = 0;
    swift_willThrow();

    (*(v84 + 8))(v45, v39);
    return;
  }

  (*(v78 + 8))(v12, v79);
  v41 = v82;
  if ([v82 expressionType])
  {
    sub_2531487A4();
    v42 = sub_253101784();
    v44 = v43;

    if (v44)
    {
      sub_2530FE680(v42, v44, *(a1 + 16), *(a1 + 24), v38 == 0);
    }

    else
    {
      v55 = sub_2531487A4();
      v56 = *v55;
      *&v86 = v55;
      v57 = sub_253148B74();
      v59 = v58;
      sub_253109940();
      swift_allocError();
      *v60 = v57;
      *(v60 + 8) = v59;
      *(v60 + 16) = 0;
      swift_willThrow();
    }
  }
}

uint64_t sub_253101784()
{
  sub_253149244();

  v0 = sub_253148B74();
  v2 = v1;

  sub_253109850(46, 0xE100000000000000, v0, v2);
  v4 = v3;

  if (v4)
  {

    return 0;
  }

  else
  {
    sub_253148BC4();
    sub_253148BA4();
    return v0;
  }
}

uint64_t sub_253101874(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2531018B0(uint64_t a1, uint64_t *a2)
{
  v178 = sub_253148534();
  v166 = *(v178 - 8);
  v6 = *(v166 + 64);
  v7 = MEMORY[0x28223BE20](v178);
  v180 = &v150 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata = MEMORY[0x28223BE20](v7);
  v181 = &v150 - v10;
  v11 = a2[2];
  v12 = 8 * v11;
  if (v11 == 1)
  {
    v13 = *(a2[4] & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v14 = &v150 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v11)
    {
      v15 = 0;
      v16 = a2[4] & 0xFFFFFFFFFFFFFFFELL;
      if (v11 < 4)
      {
        goto LABEL_9;
      }

      if (&v14[-v16] < 0x20)
      {
        goto LABEL_9;
      }

      v15 = v11 & 0xFFFFFFFFFFFFFFFCLL;
      v17 = (v16 + 16);
      v18 = v14 + 16;
      v19 = v11 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v20 = *v17;
        *(v18 - 1) = *(v17 - 1);
        *v18 = v20;
        v17 += 2;
        v18 += 2;
        v19 -= 4;
      }

      while (v19);
      if (v11 != v15)
      {
LABEL_9:
        v21 = v11 - v15;
        v22 = 8 * v15;
        v23 = &v14[8 * v15];
        v24 = (v16 + v22);
        do
        {
          v25 = *v24++;
          *v23 = v25;
          v23 += 8;
          --v21;
        }

        while (v21);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v13 = TupleTypeMetadata;
  }

  v153 = *(v13 - 8);
  v26 = *(v153 + 64);
  v27 = MEMORY[0x28223BE20](TupleTypeMetadata);
  v171 = &v150 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = v11;
  v179 = a1;
  v176 = a2;
  v174 = (8 * v11);
  v158 = v29;
  v168 = v13;
  v175 = v2;
  v177 = v3;
  if (v11 == 1)
  {
    v30 = *(a2[4] & 0xFFFFFFFFFFFFFFFELL);
    v31 = *(a2[6] & 0xFFFFFFFFFFFFFFFELL);
    swift_getAssociatedTypeWitness();
    v32 = sub_253148824();
    v33 = 1;
  }

  else
  {
    MEMORY[0x28223BE20](v27);
    v34 = (&v150 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (v11)
    {
      v35 = (v176[4] & 0xFFFFFFFFFFFFFFFELL);
      v36 = (v176[6] & 0xFFFFFFFFFFFFFFFELL);
      v37 = v34;
      v38 = v172;
      do
      {
        v39 = *v35++;
        v40 = *v36++;
        swift_getAssociatedTypeWitness();
        *v37++ = sub_253148824();
        --v38;
      }

      while (v38);
    }

    v33 = v172;
    v32 = swift_getTupleTypeMetadata();
    a2 = v176;
    v12 = v174;
  }

  v162 = &v150;
  v167 = v32;
  v152 = *(v32 - 8);
  v41 = *(v152 + 64);
  MEMORY[0x28223BE20](v32);
  v170 = &v150 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_253148474();
  v161 = &v150;
  v173 = v43;
  v169 = *(v43 - 8);
  v44 = *(v169 + 64);
  v45 = MEMORY[0x28223BE20](v43);
  v163 = &v150 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = &v150;
  v165 = a2[3];
  v164 = *(v165 - 1);
  v47 = *(v164 + 64);
  v48 = MEMORY[0x28223BE20](v45);
  v50 = &v150 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = &v150;
  MEMORY[0x28223BE20](v48);
  if (v33)
  {
    v51 = (v176[4] & 0xFFFFFFFFFFFFFFFELL);
    v52 = (v176[6] & 0xFFFFFFFFFFFFFFFELL);
    v53 = (&v150 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    v54 = v172;
    do
    {
      v55 = *v51++;
      v56 = *v52++;
      *v53++ = swift_getAssociatedTypeWitness();
      --v54;
    }

    while (v54);
  }

  v57 = sub_253148974();
  v155 = sub_2531491F4();
  v154 = *(v155 - 8);
  v58 = *(v154 + 64);
  v59 = MEMORY[0x28223BE20](v155);
  v61 = &v150 - v60;
  v157 = &v150;
  v62 = *(v57 - 8);
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v59);
  v156 = &v150 - v64;
  v65 = v50;
  v66 = v176;
  sub_2531484B4();
  v67 = v163;
  sub_253148484();
  v68 = v66[5];
  v69 = v177;
  v70 = v165;
  sub_253148494();
  if (v69)
  {

    (*(v169 + 8))(v67, v173);
    (*(v164 + 8))(v65, v70);
    (*(v62 + 56))(v61, 1, 1, v57);
    (*(v154 + 8))(v61, v155);
    sub_253109940();
    swift_allocError();
    *v71 = 0;
    *(v71 + 8) = 0;
    *(v71 + 16) = 3;
    swift_willThrow();
    return v61;
  }

  (*(v169 + 8))(v67, v173);
  (*(v164 + 8))(v65, v70);
  (*(v62 + 56))(v61, 0, 1, v57);
  v72 = (*(v62 + 32))(v156, v61, v57);
  v165 = &v150;
  MEMORY[0x28223BE20](v72);
  v74 = &v150 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = v172;
  v177 = 0;
  v151 = v57;
  v150 = v62;
  if (!v172)
  {
    sub_253148964();
    sub_2531484A4();
    v101 = v179;
LABEL_54:
    v144 = v151;
    v145 = v156;
    sub_253148954();
    v61 = v183;
    v146 = v184;
    __swift_project_boxed_opaque_existential_1(&v182, v183);
    v147 = v177;
    v148 = sub_2530FEB94(v101, v61, *(v146 + 8));
    if (!v147)
    {
      v61 = v148;
    }

    (*(v150 + 8))(v145, v144);
    __swift_destroy_boxed_opaque_existential_0(&v182);
    (*(v153 + 8))(v171, v168);
    (*(v152 + 8))(v170, v167);
    return v61;
  }

  v76 = 0;
  v77 = 32;
  v78 = v167;
  v79 = v168;
  v80 = v170;
  do
  {
    if (v75 == 1)
    {
      v81 = 0;
    }

    else
    {
      v81 = *(v78 + v77);
    }

    *&v74[8 * v76++] = &v80[v81];
    v77 += 16;
  }

  while (v75 != v76);
  v82 = sub_253148964();
  MEMORY[0x28223BE20](v82);
  v84 = &v150 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = 0;
  v86 = 32;
  v87 = v171;
  do
  {
    if (v75 == 1)
    {
      v88 = 0;
    }

    else
    {
      v88 = *(v79 + v86);
    }

    *&v84[8 * v85++] = &v87[v88];
    v86 += 16;
  }

  while (v75 != v85);
  v89 = v176;
  sub_2531484A4();
  v90 = (v89[4] & 0xFFFFFFFFFFFFFFFELL);
  v91 = (v89[6] & 0xFFFFFFFFFFFFFFFELL);
  v173 = (v166 + 16);
  v169 = v166 + 8;
  v92 = 32;
  v93 = v75;
  while (1)
  {
    v175 = v93;
    if (v75 == 1)
    {
      v102 = 0;
    }

    else
    {
      v102 = *(v167 + v92);
    }

    v176 = v90;
    v103 = *v90;
    v61 = *v91;
    swift_getAssociatedTypeWitness();
    v104 = sub_253148824();
    v174 = &v150;
    v105 = *(v104 - 8);
    v106 = *(v105 + 64);
    MEMORY[0x28223BE20](v104);
    v108 = &v150 - v107;
    (*(v105 + 16))(&v150 - v107, &v170[v102], v104);
    sub_253148814();
    v109 = (*(v105 + 8))(v108, v104);
    if (v75 != 1)
    {
      v110 = *(v168 + v92);
    }

    v111 = *(v103 - 8);
    v112 = *(v111 + 64);
    MEMORY[0x28223BE20](v109);
    v114 = &v150 - ((v113 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v111 + 16))(v114, &v171[v115], v103);
    v116 = v179;
    v117 = v177;
    v118 = sub_2530FFCD4(v179, v103, v61);
    v177 = v117;
    if (v117)
    {
      (*(v111 + 8))(v114, v103);
      (*v169)(v181, v178);
      (*(v150 + 8))(v156, v151);
      (*(v153 + 8))(v171, v168);
      (*(v152 + 8))(v170, v167);
      return v61;
    }

    v119 = v118;
    (*(v111 + 8))(v114, v103);
    v120 = *v173;
    v121 = v180;
    (*v173)(v180, v181, v178);
    v122 = v119;
    v123 = *(v116 + 8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v182 = *(v116 + 8);
    v125 = v182;
    v126 = sub_25311DA30(v121);
    v128 = *(v125 + 16);
    v129 = (v127 & 1) == 0;
    v130 = __OFADD__(v128, v129);
    v131 = v128 + v129;
    if (v130)
    {
      break;
    }

    v132 = v127;
    if (*(v125 + 24) < v131)
    {
      sub_25312CFC8(v131, isUniquelyReferenced_nonNull_native);
      v126 = sub_25311DA30(v180);
      if ((v132 & 1) != (v133 & 1))
      {
        goto LABEL_61;
      }

LABEL_48:
      v134 = v182;
      if (v132)
      {
        goto LABEL_35;
      }

      goto LABEL_49;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_48;
    }

    v143 = v126;
    sub_25312BB44();
    v126 = v143;
    v134 = v182;
    if (v132)
    {
LABEL_35:
      v94 = v134[7] + 24 * v126;
      v95 = *v94;
      v96 = *(v94 + 8);
      v97 = *(v94 + 16);
      *v94 = v122;
      *(v94 + 8) = 0;
      *(v94 + 16) = 0;

      v98 = *v169;
      v99 = v178;
      (*v169)(v180, v178);
      v98(v181, v99);
      goto LABEL_36;
    }

LABEL_49:
    v134[(v126 >> 6) + 8] |= 1 << v126;
    v135 = v166;
    v136 = v126;
    v137 = v180;
    v138 = v178;
    v120(v134[6] + *(v166 + 72) * v126, v180, v178);
    v139 = (v134[7] + 24 * v136);
    *v139 = v122;
    v139[1] = 0;
    v139[2] = 0;

    v140 = *(v135 + 8);
    v140(v137, v138);
    v140(v181, v138);
    v141 = v134[2];
    v130 = __OFADD__(v141, 1);
    v142 = v141 + 1;
    if (v130)
    {
      goto LABEL_60;
    }

    v134[2] = v142;
    v75 = v172;
LABEL_36:
    v100 = v175;
    v101 = v179;
    *(v179 + 8) = v134;
    v92 += 16;
    ++v91;
    v90 = v176 + 1;
    v93 = v100 - 1;
    if (!v93)
    {
      goto LABEL_54;
    }
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  result = sub_253149784();
  __break(1u);
  return result;
}

uint64_t sub_253102928(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2531029AC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

id sub_2531029E8(uint64_t a1, void *a2, void (*a3)(void *), void (*a4)(void *), SEL *a5)
{
  v9 = a2[3];
  v35 = a4;
  v36 = v9;
  v32 = *(v9 - 8);
  v33 = a5;
  v10 = *(v32 + 64);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 16);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v11);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5813C8, &qword_25314DA00);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_25314EC30;
  v34 = v5;
  a3(a2);
  v21 = v37;
  v22 = sub_2530FFD64(a1, v15, a2[4]);
  v24 = *(v16 + 8);
  v23 = (v16 + 8);
  v24(v19, v15);
  if (v21)
  {
    *(v20 + 16) = 0;
  }

  else
  {
    v26 = v32;
    v25 = v33;
    *(v20 + 32) = v22;
    v35(a2);
    v27 = v36;
    v29 = sub_2530FFD64(a1, v36, a2[5]);
    (*(v26 + 8))(v13, v27);
    *(v20 + 40) = v29;
    sub_2530CF970(0, &qword_27F581968, 0x277CCAC30);
    v30 = sub_253148C84();

    v23 = [objc_opt_self() *v25];
  }

  return v23;
}

id sub_253102CE4(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void *), void (*a5)(void *), SEL *a6)
{
  result = sub_2531029E8(a1, a2, a4, a5, a6);
  if (v6)
  {
    return v8;
  }

  return result;
}

uint64_t sub_253102D18(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

id sub_253102D54(uint64_t a1, void *a2)
{
  v39 = a2[3];
  v36 = *(v39 - 8);
  v5 = *(v36 + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 16);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v6);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_253148724();
  v15 = a2[4];
  v37 = a1;
  v16 = sub_2530FFF08(a1, v10, v15);
  v18 = v17;
  v20 = v19;
  v22 = *(v11 + 8);
  v21 = (v11 + 8);
  v22(v14, v10);
  if (!v2)
  {
    v23 = v36;
    v35 = v18;
    sub_253148734();
    v24 = v39;
    v26 = sub_2530FFF08(v37, v39, a2[5]);
    v28 = v27;
    v30 = v29;
    v37 = 0;
    (*(v23 + 8))(v8, v24);
    if (![v16 expressionType])
    {
      if (![v16 constantValue])
      {
        goto LABEL_11;
      }

      sub_253149224();
      swift_unknownObjectRelease();
      sub_2530CD33C(v38, &qword_27F5818A0, &qword_25314E9C0);
    }

    if ([v26 expressionType])
    {
LABEL_10:
      v21 = [objc_allocWithZone(MEMORY[0x277CCA918]) initWithLeftExpression:v16 rightExpression:v26 modifier:0 type:4 options:0];

      v28 = v35;
LABEL_16:

      return v21;
    }

    if ([v26 constantValue])
    {
      sub_253149224();
      swift_unknownObjectRelease();
      sub_2530CD33C(v38, &qword_27F5818A0, &qword_25314E9C0);
      goto LABEL_10;
    }

LABEL_11:
    memset(v38, 0, sizeof(v38));
    sub_2530CD33C(v38, &qword_27F5818A0, &qword_25314E9C0);
    if (v20)
    {
      v31 = v30;
      v30 = v20;
    }

    else
    {
      if (!v30)
      {
        goto LABEL_10;
      }

      v31 = v30;
      v20 = 0;
      v30 = v31;
    }

    v32 = objc_opt_self();
    v33 = v20;
    v21 = [v32 notPredicateWithSubpredicate_];

    v20 = v35;
    goto LABEL_16;
  }

  return v21;
}

uint64_t sub_253103190(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

id sub_2531031CC(uint64_t a1, void *a2)
{
  v37 = a2[3];
  v33 = *(v37 - 8);
  v6 = *(v33 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 16);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v7);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v2;
  sub_2531487F4();
  v16 = a2[4];
  v35 = a1;
  v17 = sub_2530FFF08(a1, v11, v16);
  v19 = v18;
  v21 = v20;
  (*(v12 + 8))(v15, v11);
  if (!v3)
  {
    v22 = v17;
    v32 = v21;
    v23 = v33;
    sub_253148804();
    v24 = v37;
    v26 = sub_2530FFF08(v35, v37, a2[5]);
    v28 = v27;
    v30 = v29;
    (*(v23 + 8))(v9, v24);
    if (![v22 expressionType])
    {
      if (![v22 constantValue])
      {
        goto LABEL_11;
      }

      sub_253149224();
      swift_unknownObjectRelease();
      sub_2530CD33C(v36, &qword_27F5818A0, &qword_25314E9C0);
    }

    if ([v26 expressionType])
    {
LABEL_10:
      v17 = [objc_allocWithZone(MEMORY[0x277CCA918]) initWithLeftExpression:v22 rightExpression:v26 modifier:0 type:5 options:0];

      return v17;
    }

    if ([v26 constantValue])
    {
      sub_253149224();
      swift_unknownObjectRelease();
      sub_2530CD33C(v36, &qword_27F5818A0, &qword_25314E9C0);
      goto LABEL_10;
    }

LABEL_11:
    memset(v36, 0, sizeof(v36));
    sub_2530CD33C(v36, &qword_27F5818A0, &qword_25314E9C0);
    if (v32)
    {
      v31 = v30;
    }

    else
    {
      if (!v30)
      {
        goto LABEL_10;
      }

      v31 = v30;
      v32 = v30;
    }

    return v32;
  }

  return v17;
}

uint64_t sub_253103584(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void *sub_2531035C0(uint64_t a1, void *a2)
{
  v42 = a1;
  v39 = a2[3];
  v38 = *(v39 - 8);
  v4 = *(v38 + 64);
  v5 = MEMORY[0x28223BE20](a1);
  v37 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 16);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v5);
  v12 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_253148624();
  v14 = *(v13 - 1);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v16);
  v18 = v36 - v17;
  v43 = v2;
  sub_2531484C4();
  v19 = (*(v14 + 88))(v18, v13);
  if (v19 == *MEMORY[0x277CC8FA8])
  {
    v40 = 0xE700000000000000;
    v20 = 0x3A6F743A646461;
  }

  else if (v19 == *MEMORY[0x277CC8FB8])
  {
    v40 = 0xEE003A7463617274;
    v20 = 0x6275733A6D6F7266;
  }

  else
  {
    if (v19 != *MEMORY[0x277CC8FB0])
    {
      sub_2531484C4();
      v29 = sub_253148B74();
      v31 = v30;
      sub_253109940();
      swift_allocError();
      *v32 = v29;
      *(v32 + 8) = v31;
      *(v32 + 16) = 2;
      swift_willThrow();
      (*(v14 + 8))(v18, v13);
      return v13;
    }

    v40 = 0xEC0000003A79623ALL;
    v20 = 0x796C7069746C756DLL;
  }

  v36[1] = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581680, &qword_25314F1B0);
  v13 = swift_allocObject();
  *(v13 + 1) = xmmword_25314E1C0;
  sub_2531484D4();
  v21 = v41;
  v22 = v42;
  v23 = sub_2530FFCD4(v42, v8, a2[4]);
  (*(v9 + 8))(v12, v8);
  if (v21)
  {

    v13[2] = 0;
  }

  else
  {
    v24 = sub_2530CF970(0, &qword_27F5819C0, 0x277CCA9C0);
    v13[7] = v24;
    v13[4] = v23;
    v25 = v37;
    sub_2531484E4();
    v26 = a2[5];
    v27 = v39;
    v33 = sub_2530FFCD4(v22, v39, v26);
    (*(v38 + 8))(v25, v27);
    v13[11] = v24;
    v13[8] = v33;
    v34 = sub_253148B54();

    v35 = sub_253148C84();

    v13 = [objc_opt_self() expressionForFunction:v34 arguments:v35];
  }

  return v13;
}

uint64_t sub_253103AC8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

char *sub_253103B04(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581680, &qword_25314F1B0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_25314E1C0;
  sub_253148524();
  v11 = v9;
  v12 = sub_2530FFCD4(a1, v5, *(a2 + 24));
  if (v2)
  {
    (*(v6 + 8))(v9, v5);
    *(v10 + 16) = 0;
  }

  else
  {
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    v14 = sub_2530CF970(0, &qword_27F5819C0, 0x277CCA9C0);
    *(v10 + 56) = v14;
    *(v10 + 32) = v13;
    v21[1] = -1;
    v15 = sub_253149764();
    v16 = objc_opt_self();
    v17 = [v16 expressionForConstantValue_];
    swift_unknownObjectRelease();
    *(v10 + 88) = v14;
    *(v10 + 64) = v17;
    v18 = sub_253148B54();
    v19 = sub_253148C84();

    v11 = [v16 expressionForFunction:v18 arguments:v19];
  }

  return v11;
}

uint64_t sub_253103D88(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void *sub_253103DC4(uint64_t a1, void *a2)
{
  v2 = a2;
  v42 = a1;
  v39 = *(a2[3] - 8);
  v3 = *(v39 + 64);
  v4 = MEMORY[0x28223BE20](a1);
  v38 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v6 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v4);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_253148634();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v35[1] = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = v35 - v17;
  sub_2531484F4();
  v36 = v13;
  v37 = v12;
  v19 = v12;
  v20 = v42;
  v21 = (*(v13 + 88))(v18, v19);
  v22 = 0;
  if (v21 != *MEMORY[0x277CC8FD8])
  {
    if (v21 == *MEMORY[0x277CC8FC8])
    {
      v22 = 1;
    }

    else if (v21 == *MEMORY[0x277CC8FC0])
    {
      v22 = 2;
    }

    else
    {
      if (v21 != *MEMORY[0x277CC8FD0])
      {
        sub_2531484F4();
        v30 = v37;
        v31 = sub_253148B74();
        v2 = v32;
        sub_253109940();
        swift_allocError();
        *v33 = v31;
        *(v33 + 8) = v2;
        *(v33 + 16) = 2;
        swift_willThrow();
        (*(v36 + 8))(v18, v30);
        return v2;
      }

      v22 = 3;
    }
  }

  v42 = v22;
  sub_253148504();
  v23 = v41;
  v24 = sub_2530FFCD4(v20, v7, v2[4]);
  (*(v8 + 8))(v11, v7);
  if (!v23)
  {
    v25 = v38;
    sub_253148514();
    v26 = v2[5];
    v27 = v40;
    v28 = sub_2530FFCD4(v20, v40, v26);
    (*(v39 + 8))(v25, v27);
    v29 = objc_allocWithZone(MEMORY[0x277CCA918]);
    v2 = [v29 initWithLeftExpression:v24 rightExpression:v28 modifier:0 type:v42 options:0];
  }

  return v2;
}

uint64_t sub_2531041D4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t *sub_253104210(uint64_t a1, uint64_t *a2)
{
  v3 = a2;
  v5 = a2[2];
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2531487E4();
  v10 = sub_2530FFD64(a1, v5, v3[3]);
  (*(v6 + 8))(v9, v5);
  if (!v2)
  {
    v3 = [objc_opt_self() notPredicateWithSubpredicate_];
  }

  return v3;
}

uint64_t sub_25310437C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

id sub_2531043B8(uint64_t a1, void *a2)
{
  v41 = a1;
  v37 = a2[3];
  v35 = *(v37 - 8);
  v3 = *(v35 + 64);
  v4 = MEMORY[0x28223BE20](a1);
  v36 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *(v6 + 16);
  v42 = *(v38 - 8);
  v7 = *(v42 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_253148534();
  v10 = *(v40 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v40);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a2[6];
  v39 = a2[4];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v15 = sub_253148824();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = v34 - v18;
  sub_253148794();
  sub_253148814();
  v20 = v19;
  v21 = v38;
  (*(v16 + 8))(v20, v15);
  v22 = v41;
  v34[1] = sub_2530FE3A0(v13);
  v24 = v23;
  (*(v10 + 8))(v13, v40);
  sub_253148784();
  v25 = v43;
  v26 = sub_2530FFCD4(v22, v21, v39);
  if (v25)
  {
    (*(v42 + 8))(v9, v21);
  }

  else
  {
    v27 = v26;
    v43 = v24;
    (*(v42 + 8))(v9, v21);
    v28 = v36;
    sub_253148774();
    v29 = v22;
    v30 = v37;
    v32 = sub_2530FFD64(v29, v37, a2[5]);
    (*(v35 + 8))(v28, v30);
    v33 = sub_253148B54();

    v24 = [objc_opt_self() expressionForSubquery:v27 usingIteratorVariable:v33 predicate:v32];
  }

  return v24;
}

uint64_t sub_253104830(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

id sub_25310486C(uint64_t a1, void *a2)
{
  v30 = a2[3];
  v27 = *(v30 - 8);
  v6 = *(v27 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 16);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v7);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581680, &qword_25314F1B0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_25314E1C0;
  v28 = v2;
  MEMORY[0x259BFC1B0](a2);
  v17 = a2[4];
  v29 = a1;
  v18 = sub_2530FFCD4(a1, v11, v17);
  (*(v12 + 8))(v15, v11);
  if (v3)
  {
    *(v16 + 16) = 0;
  }

  else
  {
    v19 = v27;
    v20 = sub_2530CF970(0, &qword_27F5819C0, 0x277CCA9C0);
    *(v16 + 56) = v20;
    *(v16 + 32) = v18;
    MEMORY[0x259BFC1C0](a2);
    v21 = v30;
    v23 = sub_2530FFCD4(v29, v30, a2[5]);
    (*(v19 + 8))(v9, v21);
    *(v16 + 88) = v20;
    *(v16 + 64) = v23;
    v24 = sub_253148B54();
    v25 = sub_253148C84();

    v18 = [objc_opt_self() expressionForFunction:v24 arguments:v25];
  }

  return v18;
}

uint64_t sub_253104B80(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

id sub_253104BBC(uint64_t a1, void *a2)
{
  v28 = a2[3];
  v25 = *(v28 - 8);
  v6 = *(v25 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 16);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v7);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5813C8, &qword_25314DA00);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_25314EC30;
  v26 = v2;
  MEMORY[0x259BFC140](a2);
  v17 = a2[4];
  v27 = a1;
  v18 = sub_2530FFCD4(a1, v11, v17);
  (*(v12 + 8))(v15, v11);
  if (v3)
  {
    *(v16 + 16) = 0;
  }

  else
  {
    *(v16 + 32) = v18;
    v19 = v25;
    MEMORY[0x259BFC150](a2);
    v20 = v28;
    v22 = sub_2530FFCD4(v27, v28, a2[5]);
    (*(v19 + 8))(v9, v20);
    *(v16 + 40) = v22;
    sub_2530CF970(0, &qword_27F5819C0, 0x277CCA9C0);
    v23 = sub_253148C84();

    v18 = [objc_opt_self() expressionForAggregate_];
  }

  return v18;
}

uint64_t sub_253104E90(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

id sub_253104ECC(uint64_t a1, void *a2)
{
  v28 = a2[2];
  v27 = *(v28 - 8);
  v5 = *(v27 + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 24);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v6);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_253148604();
  v15 = sub_2530FFCD4(a1, v10, a2[5]);
  v17 = *(v11 + 8);
  v16 = (v11 + 8);
  v17(v14, v10);
  if (!v2)
  {
    v18 = v15;
    MEMORY[0x259BFC210](a2);
    v19 = v28;
    v20 = sub_2530FFCD4(a1, v28, a2[4]);
    (*(v27 + 8))(v8, v19);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v23 = swift_conformsToProtocol2();
    if (AssociatedTypeWitness)
    {
      v24 = v23 == 0;
    }

    else
    {
      v24 = 1;
    }

    if (v24)
    {
      v25 = 10;
    }

    else
    {
      v25 = 100;
    }

    v16 = [objc_allocWithZone(MEMORY[0x277CCA918]) initWithLeftExpression:v18 rightExpression:v20 modifier:0 type:v25 options:0];
  }

  return v16;
}

uint64_t sub_253105174(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2531051B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 32);
  a2[3] = *(a1 + 16);
  a2[4] = v3;
  __swift_allocate_boxed_opaque_existential_0(a2);
  return MEMORY[0x259BFC340](a1);
}

uint64_t sub_2531051F0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 40);
  a2[3] = *(a1 + 24);
  a2[4] = v3;
  __swift_allocate_boxed_opaque_existential_0(a2);
  return MEMORY[0x259BFC350](a1);
}

uint64_t sub_253105238@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v68 = sub_253149564();
  v63 = *(v68 - 8);
  v5 = *(v63 + 64);
  v6 = MEMORY[0x28223BE20](v68);
  v64 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v67 = &v62 - v8;
  v72 = sub_2531495E4();
  v65 = *(v72 - 8);
  v9 = *(v65 + 64);
  v10 = MEMORY[0x28223BE20](v72);
  v66 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v71 = &v62 - v12;
  v76 = sub_253149554();
  v69 = *(v76 - 8);
  v13 = *(v69 + 64);
  v14 = MEMORY[0x28223BE20](v76);
  v70 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v75 = &v62 - v16;
  v17 = sub_253148B34();
  v73 = *(v17 - 8);
  v18 = *(v73 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v74 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v62 - v21;
  v23 = sub_253149074();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v62 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v62 - v30;
  v32 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v34 = &v62 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = v35;
  (*(v35 + 16))(v34, v77, a1);
  if (swift_dynamicCast())
  {
    (*(v24 + 32))(v28, v31, v23);
    v36 = v78;
    *(v78 + 24) = AssociatedTypeWitness;
    *(v36 + 32) = AssociatedConformanceWitness;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v36);
    v38 = *(*(AssociatedTypeWitness - 8) + 32);
    v38(boxed_opaque_existential_0, v28, AssociatedTypeWitness);
    v39 = *(v23 + 36);
    *(v36 + 64) = AssociatedTypeWitness;
    *(v36 + 72) = AssociatedConformanceWitness;
    v40 = __swift_allocate_boxed_opaque_existential_0((v36 + 40));
    v38(v40, &v28[v39], AssociatedTypeWitness);
    *(v36 + 80) = 0;
  }

  else
  {
    v41 = v78;
    if (swift_dynamicCast())
    {
      v42 = v74;
      (*(v73 + 32))(v74, v22, v17);
      v43 = v41;
      *(v41 + 24) = AssociatedTypeWitness;
      *(v41 + 32) = AssociatedConformanceWitness;
      v44 = __swift_allocate_boxed_opaque_existential_0(v41);
      v45 = *(*(AssociatedTypeWitness - 8) + 32);
      v45(v44, v42, AssociatedTypeWitness);
      v46 = *(v17 + 36);
      *(v43 + 64) = AssociatedTypeWitness;
      *(v43 + 72) = AssociatedConformanceWitness;
      v47 = __swift_allocate_boxed_opaque_existential_0((v43 + 40));
      v45(v47, &v42[v46], AssociatedTypeWitness);
      *(v43 + 80) = 1;
    }

    else
    {
      v49 = v75;
      v48 = v76;
      if (swift_dynamicCast())
      {
        v50 = v70;
        (*(v69 + 32))(v70, v49, v48);
        *(v41 + 24) = AssociatedTypeWitness;
        *(v41 + 32) = AssociatedConformanceWitness;
        v51 = __swift_allocate_boxed_opaque_existential_0(v41);
        (*(*(AssociatedTypeWitness - 8) + 32))(v51, v50, AssociatedTypeWitness);
        v52 = 2;
      }

      else
      {
        v54 = v71;
        v53 = v72;
        if (swift_dynamicCast())
        {
          v55 = v66;
          (*(v65 + 32))(v66, v54, v53);
          *(v41 + 24) = AssociatedTypeWitness;
          *(v41 + 32) = AssociatedConformanceWitness;
          v56 = __swift_allocate_boxed_opaque_existential_0(v41);
          (*(*(AssociatedTypeWitness - 8) + 32))(v56, v55, AssociatedTypeWitness);
          v52 = 3;
        }

        else
        {
          v58 = v67;
          v57 = v68;
          if (swift_dynamicCast())
          {
            v59 = v64;
            (*(v63 + 32))(v64, v58, v57);
            *(v41 + 24) = AssociatedTypeWitness;
            *(v41 + 32) = AssociatedConformanceWitness;
            v60 = __swift_allocate_boxed_opaque_existential_0(v41);
            (*(*(AssociatedTypeWitness - 8) + 32))(v60, v59, AssociatedTypeWitness);
            v52 = 4;
          }

          else
          {
            *(v41 + 48) = 0u;
            *(v41 + 64) = 0u;
            *(v41 + 16) = 0u;
            *(v41 + 32) = 0u;
            *v41 = 0u;
            v52 = -1;
          }
        }
      }

      *(v41 + 80) = v52;
    }
  }

  return (*(v79 + 8))(v34, a1);
}

uint64_t sub_2531059AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x259BFC360](v6);
  sub_253105238(v3, a2);
  return (*(v4 + 8))(v8, v3);
}

char *sub_253105A90(uint64_t a1, void *a2)
{
  v32 = a2[2];
  v33 = *(v32 - 8);
  v5 = *(v33 + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v30 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v9 = MEMORY[0x28223BE20](v8);
  v35 = &v27 - v10;
  v12 = *(v11 + 24);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v9);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v2;
  MEMORY[0x259BFC2D0](v17);
  v18 = a2[5];
  v31 = a1;
  v19 = v16;
  v20 = v36;
  v21 = sub_2530FFCD4(a1, v12, v18);
  if (v20)
  {
    (*(v13 + 8))(v16, v12);
  }

  else
  {
    v29 = v18;
    v36 = v21;
    (*(v13 + 8))(v16, v12);
    MEMORY[0x259BFC2C0](a2);
    v23 = v32;
    v28 = a2[4];
    v24 = sub_2530FFCD4(v31, v32, v28);
    (*(v33 + 8))(v35, v23);
    v25 = objc_allocWithZone(MEMORY[0x277CCA918]);
    v26 = v36;
    v19 = [v25 initWithLeftExpression:v36 rightExpression:v24 modifier:0 type:100 options:0];
  }

  return v19;
}

uint64_t sub_253106768(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

id sub_2531067A4(void *a1, void *a2)
{
  v44 = a1;
  v40 = a2[3];
  v38 = *(v40 - 8);
  v3 = *(v38 + 64);
  v4 = MEMORY[0x28223BE20](a1);
  v39 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = *(v6 + 16);
  v45 = *(v41 - 8);
  v7 = *(v45 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_253148534();
  v10 = *(v43 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v43);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a2[6];
  v42 = a2[4];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v15 = sub_253148824();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  sub_253148664();
  sub_253148814();
  (*(v16 + 8))(v19, v15);
  v20 = v44;
  v21 = sub_2530FE3A0(v13);
  v22 = v13;
  v23 = v41;
  (*(v10 + 8))(v22, v43);
  MEMORY[0x259BFC280](a2);
  v24 = v46;
  v25 = sub_2530FFCD4(v20, v23, v42);
  if (v24)
  {
    (*(v45 + 8))(v9, v23);
  }

  else
  {
    v43 = v21;
    v46 = v25;
    v26 = v38;
    (*(v45 + 8))(v9, v23);
    v27 = v39;
    MEMORY[0x259BFC270](a2);
    v28 = v40;
    v30 = sub_2530FFD64(v20, v40, a2[5]);
    (*(v26 + 8))(v27, v28);
    v31 = sub_253148B54();

    v32 = objc_opt_self();
    v33 = v46;
    v34 = [v32 expressionForSubquery:v46 usingIteratorVariable:v31 predicate:v30];

    v35 = sub_2530FE5A8();
    v47 = 0;
    v36 = [v32 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v20 = [objc_allocWithZone(MEMORY[0x277CCA918]) initWithLeftExpression:v35 rightExpression:v36 modifier:0 type:5 options:0];
  }

  return v20;
}

uint64_t sub_253106CB4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

id sub_253106CF0(uint64_t a1, void *a2)
{
  v49 = a1;
  v3 = a2[2];
  v44 = *(v3 - 8);
  v4 = *(v44 + 64);
  v5 = MEMORY[0x28223BE20](a1);
  v45 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = *(v7 + 24);
  v50 = *(v48 - 8);
  v8 = *(v50 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_253148534();
  v11 = *(v47 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v47);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a2[6];
  v43 = a2[4];
  v46 = v3;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v16 = sub_253148824();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v42 - v19;
  sub_253148664();
  sub_253148814();
  v21 = v20;
  v22 = v48;
  (*(v17 + 8))(v21, v16);
  v23 = v49;
  v42 = sub_2530FE3A0(v14);
  v25 = v24;
  (*(v11 + 8))(v14, v47);
  MEMORY[0x259BFC240](a2);
  v26 = v51;
  v27 = sub_2530FFD64(v23, v22, a2[5]);
  if (v26)
  {
    (*(v50 + 8))(v10, v22);
  }

  else
  {
    v28 = v27;
    v51 = v25;
    v29 = v44;
    (*(v50 + 8))(v10, v22);
    v30 = [objc_opt_self() notPredicateWithSubpredicate_];

    v31 = v45;
    MEMORY[0x259BFC250](a2);
    v32 = v23;
    v33 = v46;
    v35 = sub_2530FFCD4(v32, v46, v43);
    (*(v29 + 8))(v31, v33);
    v36 = v30;
    v37 = sub_253148B54();

    v38 = objc_opt_self();
    v39 = [v38 expressionForSubquery:v35 usingIteratorVariable:v37 predicate:v36];

    v40 = sub_2530FE5A8();
    v52 = 0;
    v41 = [v38 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v25 = [objc_allocWithZone(MEMORY[0x277CCA918]) initWithLeftExpression:v40 rightExpression:v41 modifier:0 type:4 options:0];
  }

  return v25;
}

uint64_t sub_253107234(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

id sub_2531072AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  result = sub_253107318(a1, a2, a4, a5);
  if (v5)
  {
    return v7;
  }

  return result;
}

uint64_t sub_2531072DC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

id sub_253107318(uint64_t a1, uint64_t a2, uint64_t a3, id a4)
{
  v8 = *(a2 + 16);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14(v13);
  v15 = sub_2530FFCD4(a1, v8, *(a2 + 24));
  (*(v9 + 8))(v12, v8);
  if (!v4)
  {
    a4 = sub_2530FE5A8();
  }

  return a4;
}

uint64_t sub_253107488(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void *sub_2531074C4(uint64_t a1, void *a2)
{
  v33 = a2[4];
  v32 = *(v33 - 8);
  v5 = *(v32 + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(v9 + 24);
  v34 = *(v35 - 8);
  v10 = *(v34 + 64);
  v11 = MEMORY[0x28223BE20](v6);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 16);
  v16 = *(v15 - 1);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v11);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v2;
  sub_253148584();
  v20 = v37;
  v21 = sub_2530FFD64(a1, v15, a2[5]);
  (*(v16 + 8))(v19, v15);
  if (!v20)
  {
    v37 = v21;
    v22 = v32;
    v23 = v33;
    sub_253148564();
    v24 = v35;
    v25 = sub_2530FFCD4(a1, v35, a2[6]);
    (*(v34 + 8))(v13, v24);
    v26 = v25;
    sub_253148574();
    v27 = sub_2530FFCD4(a1, v23, a2[7]);
    (*(v22 + 8))(v8, v23);
    v29 = objc_opt_self();
    v30 = v37;
    v15 = [v29 expressionForConditional:v37 trueExpression:v26 falseExpression:v27];
  }

  return v15;
}

uint64_t sub_2531077F8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

id sub_253107834(uint64_t a1, void *a2)
{
  v31 = a2[3];
  v33 = *(v31 - 8);
  v6 = *(v33 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 16);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v7);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v2;
  MEMORY[0x259BFC190](v16);
  v17 = a1;
  v18 = v15;
  v19 = sub_2530FFCD4(a1, v11, a2[4]);
  (*(v12 + 8))(v15, v11);
  if (!v3)
  {
    sub_2531485A4();
    v20 = v17;
    v21 = v31;
    v18 = sub_2530FFCD4(v20, v31, a2[5]);
    (*(v33 + 8))(v9, v21);
    if (![v19 expressionType])
    {
      if (![v19 constantValue])
      {

        memset(v32, 0, sizeof(v32));
        sub_2530CD33C(v32, &qword_27F5818A0, &qword_25314E9C0);
        return v18;
      }

      sub_253149224();
      swift_unknownObjectRelease();
      sub_2530CD33C(v32, &qword_27F5818A0, &qword_25314E9C0);
    }

    v23 = objc_opt_self();
    v24 = [v23 expressionForConstantValue_];
    v25 = objc_allocWithZone(MEMORY[0x277CCA918]);
    v26 = v19;
    v27 = [v25 initWithLeftExpression:v26 rightExpression:v24 modifier:0 type:5 options:0];

    v28 = v27;
    v29 = [v23 expressionForConditional:v28 trueExpression:v26 falseExpression:v18];

    return v29;
  }

  return v18;
}

uint64_t sub_253107B8C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_253107BC8(uint64_t a1, void *a2)
{
  v65 = a2[4];
  v4 = *(v65 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v64 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_253148534();
  v62 = *(v7 - 8);
  v63 = v7;
  v8 = *(v62 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2[3];
  v12 = sub_253148824();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v56 - v15;
  v17 = a2[2];
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  result = MEMORY[0x28223BE20](v14);
  v23 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(a1 + 32);
  v25 = __CFADD__(v24, 1);
  v26 = v24 + 1;
  if (!v25)
  {
    v59 = result;
    v60 = v10;
    v61 = v21;
    v58 = v4;
    *(a1 + 32) = v26;
    MEMORY[0x259BFC1D0](a2);
    v27 = v66;
    v28 = sub_2530FFF08(a1, v17, a2[6]);
    v30 = v29;
    v32 = v31;
    v34 = *(v18 + 8);
    v33 = (v18 + 8);
    result = v34(v23, v17);
    if (!v27)
    {
      v66 = v28;
      v35 = *(a1 + 32);
      v25 = v35 != 0;
      v36 = v35 - 1;
      if (!v25)
      {
        goto LABEL_12;
      }

      v57 = v32;
      *(a1 + 32) = v36;
      sub_2531485E4();
      v37 = v59;
      v38 = v60;
      sub_253148814();
      v61[1](v16, v37);
      v61 = v30;
      v39 = *(a1 + 8);
      v40 = v66;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v68 = *(a1 + 8);
      sub_25312FA20(v40, v30, 0, v38, isUniquelyReferenced_nonNull_native);
      *(a1 + 8) = v68;
      (*(v62 + 8))(v38, v63);
      v42 = v64;
      sub_2531485F4();
      v43 = v65;
      v44 = sub_2530FFF08(a1, v65, a2[7]);
      v66 = 0;
      v67 = v45;
      v46 = v44;
      (*(v58 + 8))(v42, v43);
      v47 = objc_opt_self();
      v48 = v40;
      v49 = [v47 expressionForConstantValue_];
      v50 = [objc_allocWithZone(MEMORY[0x277CCA918]) initWithLeftExpression:v48 rightExpression:v49 modifier:0 type:5 options:0];

      v51 = v57;
      if (v57)
      {
        v52 = v57;
      }

      else
      {
        v52 = v50;
        v51 = 0;
      }

      v53 = v51;
      v54 = v46;
      v55 = [v47 expressionForConstantValue_];
      v33 = [v47 expressionForConditional:v52 trueExpression:v54 falseExpression:v55];
    }

    return v33;
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_253108108(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_253108144(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

char *sub_253108180(uint64_t a1, void *a2)
{
  v37 = a2[3];
  v35 = *(v37 - 8);
  v5 = *(v35 + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 16);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v6);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581680, &qword_25314F1B0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_25314E1C0;
  v36 = v2;
  MEMORY[0x259BFC2F0](a2);
  v16 = v41;
  v17 = sub_2530FFCD4(a1, v10, a2[4]);
  (*(v11 + 8))(v14, v10);
  if (v16)
  {
    *(v15 + 16) = 0;
  }

  else
  {
    v18 = v35;
    v19 = sub_2530CF970(0, &qword_27F5819C0, 0x277CCA9C0);
    *(v15 + 56) = v19;
    *(v15 + 32) = v17;
    MEMORY[0x259BFC2E0](a2);
    v20 = v37;
    v22 = sub_2530FFCD4(a1, v37, a2[5]);
    (*(v18 + 8))(v8, v20);
    *(v15 + 88) = v19;
    *(v15 + 64) = v22;
    v23 = sub_253148B54();
    v24 = sub_253148C84();

    v14 = objc_opt_self();
    v25 = [v14 expressionForFunction:v23 arguments:v24];

    if ([v25 expressionValueWithObject:0 context:0])
    {
      sub_253149224();
      swift_unknownObjectRelease();
      sub_2530C02F4(&v38, v40);
      sub_2530FF174(v40, &v38);
      v27 = v39;
      if (v39)
      {
        v28 = __swift_project_boxed_opaque_existential_1(&v38, v39);
        v29 = *(v27 - 8);
        v30 = *(v29 + 64);
        MEMORY[0x28223BE20](v28);
        v32 = &v34 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v29 + 16))(v32);
        v33 = sub_253149724();
        (*(v29 + 8))(v32, v27);
        __swift_destroy_boxed_opaque_existential_0(&v38);
      }

      else
      {
        v33 = 0;
      }

      v14 = [v14 expressionForConstantValue_];

      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_0(v40);
    }

    else
    {
      sub_253109940();
      swift_allocError();
      *v26 = 0;
      *(v26 + 8) = 0;
      *(v26 + 16) = 3;
      swift_willThrow();
    }
  }

  return v14;
}

char *sub_253108624(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  result = sub_253108180(a1, a2);
  if (v3)
  {
    return v6;
  }

  return result;
}

uint64_t sub_253108650(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

id sub_25310868C(uint64_t a1, void *a2)
{
  v29 = a2[3];
  v27 = *(v29 - 8);
  v5 = *(v27 + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 16);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v6);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581680, &qword_25314F1B0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_25314E1C0;
  v28 = v2;
  MEMORY[0x259BFC2B0](a2);
  v16 = v30;
  v17 = sub_2530FFCD4(a1, v10, a2[5]);
  (*(v11 + 8))(v14, v10);
  if (v16)
  {
    *(v15 + 16) = 0;
  }

  else
  {
    v18 = v27;
    v19 = sub_2530CF970(0, &qword_27F5819C0, 0x277CCA9C0);
    *(v15 + 56) = v19;
    *(v15 + 32) = v17;
    sub_2531486A4();
    v20 = v29;
    v22 = sub_2530FFCD4(a1, v29, a2[6]);
    (*(v18 + 8))(v8, v20);
    *(v15 + 88) = v19;
    *(v15 + 64) = v22;
    v23 = sub_253148B54();
    v24 = sub_253148C84();

    v17 = [objc_opt_self() expressionForFunction:v23 arguments:v24];

    if ([v17 expressionType])
    {
      sub_253109940();
      swift_allocError();
      *v25 = 0;
      *(v25 + 8) = 0;
      *(v25 + 16) = 3;
      swift_willThrow();
    }
  }

  return v17;
}

uint64_t sub_2531089F0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_253108A70(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

id sub_253108AAC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void *), uint64_t a7)
{
  v29 = a7;
  v31 = a2[3];
  v32 = a6;
  v33 = *(v31 - 8);
  v11 = *(v33 + 64);
  v12 = MEMORY[0x28223BE20](a1);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 + 16);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v12);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v7;
  v22(v21);
  v23 = a1;
  v24 = sub_2530FFCD4(a1, v16, a2[4]);
  (*(v17 + 8))(v20, v16);
  if (!v8)
  {
    v25 = v29;
    v32(a2);
    v26 = v31;
    v27 = sub_2530FFCD4(a1, v31, a2[5]);
    (*(v33 + 8))(v14, v26);
    v23 = [objc_allocWithZone(MEMORY[0x277CCA918]) initWithLeftExpression:v24 rightExpression:v27 modifier:0 type:v25 options:0];
  }

  return v23;
}

id sub_253108D28(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  result = sub_253108AAC(a1, a2, *(a3 - 8), *(a3 - 16), a4, a5, a6);
  if (v6)
  {
    return v8;
  }

  return result;
}

uint64_t sub_253108D64(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_253108DF4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_253108E30(uint64_t a1)
{
  type metadata accessor for ComparisonResult(0);
  v13[3] = v3;
  v13[0] = a1;
  sub_2530FF174(v13, v14);
  result = __swift_destroy_boxed_opaque_existential_0(v13);
  if (!v1)
  {
    v5 = v15;
    if (v15)
    {
      v6 = __swift_project_boxed_opaque_existential_1(v14, v15);
      v7 = *(v5 - 8);
      v8 = *(v7 + 64);
      MEMORY[0x28223BE20](v6);
      v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v7 + 16))(v10);
      v11 = sub_253149724();
      (*(v7 + 8))(v10, v5);
      __swift_destroy_boxed_opaque_existential_0(v14);
    }

    else
    {
      v11 = 0;
    }

    v12 = [objc_opt_self() expressionForConstantValue_];
    swift_unknownObjectRelease();
    return v12;
  }

  return result;
}

id sub_253108FB4(id a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = sub_2530FFCD4(a3, a5, a7);
  if (!v8)
  {
    v30 = a4;
    v31 = v16;
    v18 = sub_2530FFCD4(a3, a6, a8);
    v29 = [objc_allocWithZone(MEMORY[0x277CCA918]) initWithLeftExpression:v31 rightExpression:v18 modifier:0 type:4 options:a4];

    v19 = sub_2530FFCD4(a3, a5, a7);
    v20 = sub_2530FFCD4(a3, a6, a8);
    v21 = [objc_allocWithZone(MEMORY[0x277CCA918]) initWithLeftExpression:v19 rightExpression:v20 modifier:0 type:0 options:v30];

    v22 = sub_253108E30(-1);
    v23 = sub_253108E30(1);
    v24 = objc_opt_self();
    v25 = v21;
    v26 = [v24 expressionForConditional:v25 trueExpression:v22 falseExpression:v23];

    v27 = sub_253108E30(0);
    v28 = v29;
    a1 = [v24 expressionForConditional:v28 trueExpression:v27 falseExpression:v26];
  }

  return a1;
}

uint64_t sub_2531092A0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  result = sub_253109310(a1, a2, a4, a5, a6);
  if (v6)
  {
    return v8;
  }

  return result;
}

uint64_t sub_2531092D4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_253109310(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  v25 = a1;
  v26 = a5;
  v7 = a2[3];
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v10);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20(v19);
  a4(a2);
  v21 = v27;
  v22 = sub_253108FB4(v18, v12, v25, v26, v14, v7, a2[4], a2[5]);
  if (v21)
  {
    (*(v8 + 8))(v12, v7);
    return (*(v15 + 8))(v18, v14);
  }

  else
  {
    v24 = v22;
    (*(v8 + 8))(v12, v7);
    (*(v15 + 8))(v18, v14);
    return v24;
  }
}

uint64_t sub_253109558(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

id sub_253109594(uint64_t a1, void *a2)
{
  v24 = a2[3];
  v25 = *(v24 - 8);
  v6 = *(v25 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 16);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v7);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v2;
  MEMORY[0x259BFC300](v16);
  v17 = a1;
  v18 = sub_2530FFCD4(a1, v11, a2[4]);
  (*(v12 + 8))(v15, v11);
  if (!v3)
  {
    MEMORY[0x259BFC310](a2);
    v19 = v17;
    v20 = v24;
    v21 = sub_2530FFCD4(v19, v24, a2[5]);
    (*(v25 + 8))(v9, v20);
    v17 = [objc_allocWithZone(MEMORY[0x277CCA918]) initWithLeftExpression:v18 rightExpression:v21 modifier:0 type:99 options:11];
  }

  return v17;
}

uint64_t sub_2531097E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = a4();
  if (v4)
  {
    return v6;
  }

  return result;
}

uint64_t sub_253109814(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_253109850(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
  while (sub_253148BF4() != a1 || v9 != a2)
  {
    v10 = sub_253149734();

    if (v10)
    {
      return v8;
    }

    v8 = sub_253148BC4();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

unint64_t sub_253109940()
{
  result = qword_27F581948;
  if (!qword_27F581948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F581948);
  }

  return result;
}

id sub_253109994(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[3];
  if (!v4)
  {
    v11 = 0;
    v12 = a2[3];
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_5:
    v18 = 0;
    goto LABEL_6;
  }

  v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7 = *(v4 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10);
  v11 = sub_253149724();
  (*(v7 + 8))(v10, v4);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v12 = a2[3];
  if (!v12)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13 = __swift_project_boxed_opaque_existential_1(a2, v12);
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17);
  v18 = sub_253149724();
  (*(v14 + 8))(v17, v12);
  __swift_destroy_boxed_opaque_existential_0(a2);
LABEL_6:
  v19 = [v2 initWithOperand:v11 andKeyPath:v18];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v19;
}

uint64_t sub_253109BC4(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      if (a6 == 2)
      {
        if (a1 == a4 && a2 == a5)
        {
          return 1;
        }

        return sub_253149734();
      }
    }

    else if (a6 == 3 && !(a5 | a4))
    {
      return 1;
    }

    return 0;
  }

  if (a3)
  {
    if (a6 == 1)
    {
      if (a1 == a4 && a2 == a5)
      {
        return 1;
      }

      return sub_253149734();
    }

    return 0;
  }

  if (a6)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  return sub_253149734();
}

unint64_t sub_253109C78(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5819B8, &qword_25314F1A8);
    v3 = sub_2531495D4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_25311D7B8(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v10 = (v3[7] + 16 * result);
      *v10 = v6;
      v10[1] = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_253109D78(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5819B0, &qword_25314F1A0);
    v3 = sub_2531495D4();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;

      v7 = v6;
      result = sub_25311D7B8(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_253109E70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581A08, &qword_25314F1F8);
    v3 = sub_2531495D4();
    v4 = a1 + 32;

    while (1)
    {
      sub_2530CD26C(v4, &v13, &qword_27F580A30, &unk_25314F200);
      v5 = v13;
      v6 = v14;
      result = sub_25311D908(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2530C02F4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_253109FA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581958, &unk_25314F140);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5819A8, &qword_25314F198);
    v8 = sub_2531495D4();
    v9 = &v6[*(v2 + 48)];
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_2530CD26C(v10, v6, &qword_27F581958, &unk_25314F140);
      result = sub_25311DA30(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_253148534();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7] + 24 * v14;
      v18 = *(v9 + 8);
      *v17 = *v9;
      *(v17 + 8) = v18;
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_25310A19C(void *a1, void *a2, void *a3, unsigned __int8 a4)
{
  if (a4 >= 2u)
  {
    if (a4 != 2)
    {
      return;
    }

    a1 = a3;
  }
}

uint64_t sub_25310A1F8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  return sub_2531001BC(a1, *(v1 + 32));
}

uint64_t sub_25310A218(uint64_t a1, void *a2)
{
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  result = v5();
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

unint64_t sub_25310A288(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F580A38, &qword_25314CE58);
    v3 = sub_2531495D4();
    v4 = a1 + 32;

    while (1)
    {
      sub_2530CD26C(v4, v13, &qword_27F581A10, &qword_25314F210);
      result = sub_25311D980(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_2530C02F4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_25310A3C4(void *a1)
{
  v2 = a1[3];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v2);
  v14[3] = v2;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v14);
  (*(*(v2 - 8) + 16))(boxed_opaque_existential_0, v3, v2);
  sub_2530FF174(v14, v15);
  result = __swift_destroy_boxed_opaque_existential_0(v14);
  if (!v1)
  {
    v6 = v16;
    if (v16)
    {
      v7 = __swift_project_boxed_opaque_existential_1(v15, v16);
      v8 = *(v6 - 8);
      v9 = *(v8 + 64);
      MEMORY[0x28223BE20](v7);
      v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v8 + 16))(v11);
      v12 = sub_253149724();
      (*(v8 + 8))(v11, v6);
      __swift_destroy_boxed_opaque_existential_0(v15);
    }

    else
    {
      v12 = 0;
    }

    v13 = [objc_opt_self() expressionForConstantValue_];
    swift_unknownObjectRelease();
    return v13;
  }

  return result;
}

unint64_t sub_25310A5B0()
{
  result = qword_27F581A00;
  if (!qword_27F581A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F581A00);
  }

  return result;
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_25310A634(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 81))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 80);
  if (v3 >= 5)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25310A670(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 80) = 0;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = -a2;
    }
  }

  return result;
}

uint64_t sub_25310A6C4(uint64_t result, unsigned int a2)
{
  if (a2 > 4)
  {
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 5;
    LOBYTE(a2) = 5;
  }

  *(result + 80) = a2;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_25310A714(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_25310A75C(uint64_t result, int a2, int a3)
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

uint64_t get_enum_tag_for_layout_string_11HomeKitCore33FetchablePredicateConversionErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_25310A7DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_25310A824(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_25310A868(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

void sub_25310A894()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F581E00, &unk_25314F540);
  sub_253148994();
  v2 = v8;
  if (qword_27F580250 != -1)
  {
    swift_once();
  }

  [v8 setRemoteObjectInterface_];
  v3 = swift_allocObject();
  swift_weakInit();
  v12 = sub_25310B058;
  v13 = v3;
  v8 = MEMORY[0x277D85DD0];
  v9 = 1107296256;
  v10 = sub_25310AB2C;
  v11 = &block_descriptor_1;
  v4 = _Block_copy(&v8);

  [v2 setInvalidationHandler_];
  _Block_release(v4);
  v5 = swift_allocObject();
  swift_weakInit();
  v12 = sub_25310B0A8;
  v13 = v5;
  v8 = MEMORY[0x277D85DD0];
  v9 = 1107296256;
  v10 = sub_25310AB2C;
  v11 = &block_descriptor_19;
  v6 = _Block_copy(&v8);

  [v2 setInterruptionHandler_];
  _Block_release(v6);
  [v2 resume];
  v7 = *(v1 + 112);
  *(v1 + 112) = v2;
}

uint64_t sub_25310AAC4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 112);
  *(v1 + 112) = 0;

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_25310AB2C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_25310AB70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580568, &qword_25314BDB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = sub_253148DE4();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v9;
    sub_253112858(0, 0, v7, a3, v11);
  }

  return result;
}

uint64_t sub_25310AC8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580788, &qword_25314F560);
  v4[6] = v6;
  v7 = *(v6 - 8);
  v4[7] = v7;
  v8 = *(v7 + 64) + 15;
  v4[8] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581A18, &qword_25314F568);
  v4[9] = v9;
  v10 = *(v9 - 8);
  v4[10] = v10;
  v11 = *(v10 + 64) + 15;
  v4[11] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580778, &qword_25314F570);
  v4[12] = v12;
  v13 = *(v12 - 8);
  v4[13] = v13;
  v14 = *(v13 + 64) + 15;
  v4[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25310AE2C, a4, 0);
}

uint64_t sub_25310AE2C()
{
  v1 = *(*(v0 + 40) + 120);
  *(v0 + 120) = v1;
  return MEMORY[0x2822009F8](sub_25310AE50, v1, 0);
}

uint64_t sub_25310AE50()
{
  v1 = v0[15];
  swift_beginAccess();
  v2 = *(v1 + 112);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v0[13];
    v23 = v0[14];
    v5 = v0[7];
    v22 = *(v0[12] + 36);
    v6 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v20 = (v5 + 16);
    v21 = *(v4 + 72);
    v7 = (v5 + 8);
    v8 = (v0[10] + 8);
    v19 = *(v1 + 112);

    do
    {
      v9 = v0[14];
      v10 = v0[11];
      v12 = v0[8];
      v11 = v0[9];
      v13 = v0[6];
      sub_25310B194(v6, v9);
      (*v20)(v12, v23 + v22, v13);
      sub_25310B204(v9);
      sub_253148E34();
      (*v7)(v12, v13);
      (*v8)(v10, v11);
      v6 += v21;
      --v3;
    }

    while (v3);
  }

  v14 = v0[14];
  v15 = v0[11];
  v16 = v0[8];

  v17 = v0[1];

  return v17();
}

uint64_t sub_25310AFF4()
{
  v1 = *(v0 + 120);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25310B0E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2530BF218;

  return sub_25310AC8C(a1, v4, v5, v6);
}

uint64_t sub_25310B194(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580778, &qword_25314F570);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25310B204(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580778, &qword_25314F570);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_21Tm_0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_25310B2AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2530CD684;

  return sub_25310AAA4(a1, v4, v5, v6);
}

unint64_t sub_25310B374()
{
  result = qword_27F581A20;
  if (!qword_27F581A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F581A20);
  }

  return result;
}

void sub_25310B3D0(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2531492A4();
    sub_2530CF970(0, &qword_27F581A88, 0x277CBE4F0);
    sub_25310E998();
    sub_253148FC4();
    v1 = v31;
    v2 = v32;
    v3 = v33;
    v4 = v34;
    v5 = v35;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v9 = MEMORY[0x277D84F90];
  while (v1 < 0)
  {
    if (!sub_253149314() || (sub_2530CF970(0, &qword_27F581A88, 0x277CBE4F0), swift_dynamicCast(), (v12 = v36) == 0))
    {
LABEL_27:
      sub_2530DFAD4();
      return;
    }

LABEL_17:
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (v13)
    {
      v15 = v13;
      v16 = v12;
      v17 = [v15 name];
      v18 = sub_253148B64();
      v29 = v19;
      v30 = v18;

      v20 = 0;
      goto LABEL_22;
    }

    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (v14)
    {
      v21 = v14;
      v22 = v12;
      v23 = [v21 name];
      v24 = sub_253148B64();
      v29 = v25;
      v30 = v24;

      LOBYTE(v21) = [v21 isToMany];
      v20 = v21 | 0x80;
LABEL_22:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_2530F4A08(0, *(v9 + 2) + 1, 1, v9);
      }

      v27 = *(v9 + 2);
      v26 = *(v9 + 3);
      if (v27 >= v26 >> 1)
      {
        v9 = sub_2530F4A08((v26 > 1), v27 + 1, 1, v9);
      }

      *(v9 + 2) = v27 + 1;
      v28 = &v9[24 * v27];
      *(v28 + 4) = v30;
      *(v28 + 5) = v29;
      v28[48] = v20;
    }

    else
    {
    }
  }

  v10 = v4;
  v11 = v5;
  if (v5)
  {
LABEL_13:
    v5 = (v11 - 1) & v11;
    v12 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v12)
    {
      goto LABEL_27;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_27;
    }

    v11 = *(v2 + 8 * v4);
    ++v10;
    if (v11)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_25310B704(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v33 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  v38 = a2 + 56;
  v34 = v7;
  v35 = result;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
    v8 = __clz(__rbit64(v6));
    v36 = (v6 - 1) & v6;
LABEL_13:
    v11 = *(result + 48) + 24 * (v8 | (v3 << 6));
    v12 = *v11;
    v13 = *(v11 + 8);
    v14 = *(v11 + 16);
    v15 = *(v2 + 40);
    sub_253149814();
    if (v14 < 0)
    {
      MEMORY[0x259BFD420](1);

      sub_253148BB4();
      sub_253149834();
    }

    else
    {
      MEMORY[0x259BFD420](0);

      sub_253148BB4();
    }

    v16 = sub_253149844();
    v17 = -1 << *(v2 + 32);
    v18 = v16 & ~v17;
    if (((*(v38 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_42:
      sub_2530DA7C4();
      return 0;
    }

    v37 = ~v17;
    while (1)
    {
      v19 = v2;
      v20 = *(v2 + 48) + 24 * v18;
      v22 = *v20;
      v21 = *(v20 + 8);
      v23 = *(v20 + 16);
      if ((v23 & 0x80000000) == 0)
      {
        break;
      }

      if ((v14 & 0x80000000) == 0)
      {
        goto LABEL_19;
      }

      if (v22 == v12 && v21 == v13)
      {
        sub_2530DA7BC();
        sub_2530DA7BC();
        sub_2530DA7C4();
        sub_2530DA7C4();
        v2 = v19;
        if (((v14 ^ v23) & 1) == 0)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v29 = *v20;
        v30 = *(v20 + 8);
        v31 = sub_253149734();
        sub_2530DA7BC();
        sub_2530DA7BC();
        sub_2530DA7C4();
        sub_2530DA7C4();
        v2 = v19;
        if ((v31 & 1) != 0 && ((v14 ^ v23) & 1) == 0)
        {
          goto LABEL_39;
        }
      }

LABEL_20:
      v18 = (v18 + 1) & v37;
      if (((*(v38 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_42;
      }
    }

    if (v14 < 0)
    {
LABEL_19:
      sub_2530DA7BC();
      sub_2530DA7BC();
      sub_2530DA7C4();
      sub_2530DA7C4();
      v2 = v19;
      goto LABEL_20;
    }

    if (v22 != v12 || v21 != v13)
    {
      v25 = *v20;
      v26 = *(v20 + 8);
      v27 = sub_253149734();
      sub_2530DA7BC();
      sub_2530DA7BC();
      sub_2530DA7C4();
      sub_2530DA7C4();
      v2 = v19;
      if (v27)
      {
        goto LABEL_39;
      }

      goto LABEL_20;
    }

    v32 = *(v20 + 8);

    sub_2530DA7C4();
    v2 = v19;
LABEL_39:
    sub_2530DA7C4();
    v7 = v34;
    result = v35;
    v6 = v36;
  }

  while (v36);
LABEL_8:
  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v10 = *(v33 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v36 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25310BAD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_253148944();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v46 = &v35 - v11;
  result = MEMORY[0x28223BE20](v10);
  v14 = &v35 - v13;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v15 = 0;
  v16 = *(a1 + 56);
  v35 = a1 + 56;
  v17 = 1 << *(a1 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & v16;
  v20 = (v17 + 63) >> 6;
  v42 = v5 + 32;
  v44 = a2 + 56;
  v45 = v5 + 16;
  v21 = (v5 + 8);
  v36 = v20;
  v37 = &v35 - v13;
  v38 = v5;
  v39 = a1;
  if (v19)
  {
    while (1)
    {
      v22 = __clz(__rbit64(v19));
      v41 = (v19 - 1) & v19;
LABEL_13:
      v25 = *(a1 + 48);
      v43 = *(v5 + 72);
      v26 = *(v5 + 16);
      v26(v14, v25 + v43 * (v22 | (v15 << 6)), v4);
      (*(v5 + 32))(v46, v14, v4);
      v27 = *(a2 + 40);
      sub_25310E510(&qword_27F580560, MEMORY[0x277CC95F0]);
      v28 = sub_253148B04();
      v29 = -1 << *(a2 + 32);
      v30 = v28 & ~v29;
      if (((*(v44 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
      {
        break;
      }

      v40 = v21 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v31 = a2;
      v32 = ~v29;
      while (1)
      {
        v26(v9, *(v31 + 48) + v30 * v43, v4);
        sub_25310E510(&qword_27F580C40, MEMORY[0x277CC95F0]);
        v33 = sub_253148B44();
        v34 = *v21;
        (*v21)(v9, v4);
        if (v33)
        {
          break;
        }

        v30 = (v30 + 1) & v32;
        if (((*(v44 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
        {
          v34(v46, v4);
          return 0;
        }
      }

      result = (v34)(v46, v4);
      a2 = v31;
      v5 = v38;
      a1 = v39;
      v20 = v36;
      v14 = v37;
      v19 = v41;
      if (!v41)
      {
        goto LABEL_8;
      }
    }

    (*v21)(v46, v4);
    return 0;
  }

LABEL_8:
  v23 = v15;
  while (1)
  {
    v15 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v15 >= v20)
    {
      return 1;
    }

    v24 = *(v35 + 8 * v15);
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v41 = (v24 - 1) & v24;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void HomesStore.CoreData.ManagedObjectChangeSet.init()(void *a1@<X8>)
{
  v1 = MEMORY[0x277D84F98];
  *a1 = MEMORY[0x277D84F98];
  a1[1] = v1;
  a1[2] = v1;
}

Swift::Void __swiftcall HomesStore.CoreData.ManagedObjectChangeSet.processChange(_:)(NSPersistentHistoryChange a1)
{
  v2 = [(objc_class *)a1.super.isa changeType];
  if (v2 == 2)
  {

    sub_25310D890(a1.super.isa);
  }

  else if (v2 == 1)
  {

    sub_25310D68C(a1.super.isa);
  }

  else if (v2)
  {
    if (qword_27F5802A8 != -1)
    {
      swift_once();
    }

    v3 = sub_253148A94();
    __swift_project_value_buffer(v3, qword_27F581A28);
    v9 = a1.super.isa;
    oslog = sub_253148A74();
    v4 = sub_2531490B4();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 134218242;
      *(v5 + 4) = [(objc_class *)v9 changeType];

      *(v5 + 12) = 2112;
      *(v5 + 14) = v9;
      *v6 = v9;
      v7 = v9;
      _os_log_impl(&dword_2530B8000, oslog, v4, "Skipping change with unknown change type %ld: %@", v5, 0x16u);
      sub_2530CD33C(v6, &qword_27F581E10, &qword_25314F640);
      MEMORY[0x259BFDC60](v6, -1, -1);
      MEMORY[0x259BFDC60](v5, -1, -1);
      v8 = oslog;
    }

    else
    {

      v8 = v9;
    }
  }

  else
  {

    sub_25310D46C(a1.super.isa);
  }
}

uint64_t sub_25310C0B0()
{
  v0 = sub_253148A94();
  __swift_allocate_value_buffer(v0, qword_27F581A28);
  __swift_project_value_buffer(v0, qword_27F581A28);
  return sub_253148A84();
}

uint64_t HomesStore.CoreData.ManagedObjectChangeSet.AttributeDescription.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static HomesStore.CoreData.ManagedObjectChangeSet.AttributeDescription.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_253149734();
  }
}

uint64_t HomesStore.CoreData.ManagedObjectChangeSet.AttributeDescription.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_253148BB4();
}

uint64_t HomesStore.CoreData.ManagedObjectChangeSet.AttributeDescription.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_253149814();
  sub_253148BB4();
  return sub_253149844();
}

uint64_t sub_25310C1E4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_253149814();
  sub_253148BB4();
  return sub_253149844();
}

uint64_t sub_25310C230()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_253148BB4();
}

uint64_t sub_25310C238()
{
  v1 = *v0;
  v2 = v0[1];
  sub_253149814();
  sub_253148BB4();
  return sub_253149844();
}

uint64_t sub_25310C280(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_253149734();
  }
}

uint64_t HomesStore.CoreData.ManagedObjectChangeSet.RelationshipDescription.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static HomesStore.CoreData.ManagedObjectChangeSet.RelationshipDescription.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 ^ v3 ^ 1u;
  }

  v5 = sub_253149734();
  result = 0;
  if (v5)
  {
    return v2 ^ v3 ^ 1u;
  }

  return result;
}

uint64_t HomesStore.CoreData.ManagedObjectChangeSet.RelationshipDescription.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_253148BB4();
  return sub_253149834();
}

uint64_t HomesStore.CoreData.ManagedObjectChangeSet.RelationshipDescription.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_253149814();
  sub_253148BB4();
  sub_253149834();
  return sub_253149844();
}

uint64_t sub_25310C3E4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_253149814();
  sub_253148BB4();
  sub_253149834();
  return sub_253149844();
}

uint64_t sub_25310C448()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_253148BB4();
  return sub_253149834();
}

uint64_t sub_25310C480()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_253149814();
  sub_253148BB4();
  sub_253149834();
  return sub_253149844();
}

uint64_t sub_25310C4E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 ^ v3 ^ 1u;
  }

  v5 = sub_253149734();
  result = 0;
  if (v5)
  {
    return v2 ^ v3 ^ 1u;
  }

  return result;
}

uint64_t HomesStore.CoreData.ManagedObjectChangeSet.PropertyDescription.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  if (v0[2] < 0)
  {
    MEMORY[0x259BFD420](1);
    sub_253148BB4();
    return sub_253149834();
  }

  else
  {
    MEMORY[0x259BFD420](0);

    return sub_253148BB4();
  }
}

uint64_t HomesStore.CoreData.ManagedObjectChangeSet.PropertyDescription.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_253149814();
  if (v3 < 0)
  {
    MEMORY[0x259BFD420](1);
    sub_253148BB4();
    sub_253149834();
  }

  else
  {
    MEMORY[0x259BFD420](0);
    sub_253148BB4();
  }

  return sub_253149844();
}

uint64_t sub_25310C670()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_253149814();
  if (v3 < 0)
  {
    MEMORY[0x259BFD420](1);
    sub_253148BB4();
    sub_253149834();
  }

  else
  {
    MEMORY[0x259BFD420](0);
    sub_253148BB4();
  }

  return sub_253149844();
}

uint64_t sub_25310C700()
{
  v1 = *v0;
  v2 = v0[1];
  if (v0[2] < 0)
  {
    MEMORY[0x259BFD420](1);
    sub_253148BB4();
    return sub_253149834();
  }

  else
  {
    MEMORY[0x259BFD420](0);

    return sub_253148BB4();
  }
}

uint64_t sub_25310C79C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_253149814();
  if (v3 < 0)
  {
    MEMORY[0x259BFD420](1);
    sub_253148BB4();
    sub_253149834();
  }

  else
  {
    MEMORY[0x259BFD420](0);
    sub_253148BB4();
  }

  return sub_253149844();
}

uint64_t static HomesStore.CoreData.ManagedObjectChangeSet.Insert.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_2530CF970(0, &qword_27F581A40, 0x277D82BB8);
  return sub_253149194() & 1;
}

uint64_t HomesStore.CoreData.ManagedObjectChangeSet.Insert.hashValue.getter()
{
  v1 = *v0;
  sub_253149814();
  sub_2531491A4();
  return sub_253149844();
}

uint64_t sub_25310C93C()
{
  v1 = *v0;
  sub_253149814();
  sub_2531491A4();
  return sub_253149844();
}

uint64_t sub_25310C9A4()
{
  v1 = *v0;
  sub_253149814();
  sub_2531491A4();
  return sub_253149844();
}

uint64_t sub_25310C9E4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_2530CF970(0, &qword_27F581A40, 0x277D82BB8);
  return sub_253149194() & 1;
}

uint64_t HomesStore.CoreData.ManagedObjectChangeSet.Update.updatedProperties.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t static HomesStore.CoreData.ManagedObjectChangeSet.Update.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  sub_2530CF970(0, &qword_27F581A40, 0x277D82BB8);
  if ((sub_253149194() & 1) == 0)
  {
    return 0;
  }

  return sub_25310B704(v2, v4);
}

uint64_t HomesStore.CoreData.ManagedObjectChangeSet.Update.hash(into:)(__int128 *a1)
{
  v3 = v1[1];
  v4 = *v1;
  sub_2531491A4();

  return sub_25310DF24(a1, v3);
}

uint64_t HomesStore.CoreData.ManagedObjectChangeSet.Update.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_253149814();
  sub_2531491A4();
  sub_25310DF24(v4, v2);
  return sub_253149844();
}

uint64_t sub_25310CC10()
{
  v1 = *v0;
  v2 = v0[1];
  sub_253149814();
  sub_2531491A4();
  sub_25310DF24(v4, v2);
  return sub_253149844();
}

uint64_t sub_25310CC6C(__int128 *a1)
{
  v3 = v1[1];
  v4 = *v1;
  sub_2531491A4();

  return sub_25310DF24(a1, v3);
}

uint64_t sub_25310CCB8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_253149814();
  sub_2531491A4();
  sub_25310DF24(v4, v2);
  return sub_253149844();
}

uint64_t sub_25310CD10(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  sub_2530CF970(0, &qword_27F581A40, 0x277D82BB8);
  if ((sub_253149194() & 1) == 0)
  {
    return 0;
  }

  return sub_25310B704(v2, v4);
}

uint64_t HomesStore.CoreData.ManagedObjectChangeSet.Delete.modelID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HomesStore.CoreData.ManagedObjectChangeSet.Delete() + 20);
  v4 = sub_253148944();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HomesStore.CoreData.ManagedObjectChangeSet.Delete.modelID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HomesStore.CoreData.ManagedObjectChangeSet.Delete() + 20);
  v4 = sub_253148944();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t static HomesStore.CoreData.ManagedObjectChangeSet.Delete.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  sub_2530CF970(0, &qword_27F581A40, 0x277D82BB8);
  v4 = *a1;
  v5 = *a2;
  if ((sub_253149194() & 1) == 0)
  {
    return 0;
  }

  v6 = *(type metadata accessor for HomesStore.CoreData.ManagedObjectChangeSet.Delete() + 20);

  return _s11HomeKitCore25ModelIdentifierDescriptorV2eeoiySbACyxG_AEtFZ_0();
}

uint64_t HomesStore.CoreData.ManagedObjectChangeSet.Delete.hash(into:)()
{
  v1 = *v0;
  sub_2531491A4();
  LODWORD(v1) = *(type metadata accessor for HomesStore.CoreData.ManagedObjectChangeSet.Delete() + 20);
  sub_253148944();
  sub_25310E510(&qword_27F580560, MEMORY[0x277CC95F0]);
  return sub_253148B14();
}

uint64_t HomesStore.CoreData.ManagedObjectChangeSet.Delete.hashValue.getter()
{
  sub_253149814();
  v1 = *v0;
  sub_2531491A4();
  LODWORD(v1) = *(type metadata accessor for HomesStore.CoreData.ManagedObjectChangeSet.Delete() + 20);
  sub_253148944();
  sub_25310E510(&qword_27F580560, MEMORY[0x277CC95F0]);
  sub_253148B14();
  return sub_253149844();
}

uint64_t sub_25310D100(uint64_t a1)
{
  sub_253149814();
  v3 = *v1;
  sub_2531491A4();
  v4 = *(a1 + 20);
  sub_253148944();
  sub_25310E510(&qword_27F580560, MEMORY[0x277CC95F0]);
  sub_253148B14();
  return sub_253149844();
}

uint64_t sub_25310D1AC(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  sub_2531491A4();
  v5 = *(a2 + 20);
  sub_253148944();
  sub_25310E510(&qword_27F580560, MEMORY[0x277CC95F0]);
  return sub_253148B14();
}

uint64_t sub_25310D23C(uint64_t a1, uint64_t a2)
{
  sub_253149814();
  v4 = *v2;
  sub_2531491A4();
  v5 = *(a2 + 20);
  sub_253148944();
  sub_25310E510(&qword_27F580560, MEMORY[0x277CC95F0]);
  sub_253148B14();
  return sub_253149844();
}

uint64_t sub_25310D2E4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  sub_2530CF970(0, &qword_27F581A40, 0x277D82BB8);
  v6 = *a1;
  v7 = *a2;
  if ((sub_253149194() & 1) == 0)
  {
    return 0;
  }

  v8 = *(a3 + 20);

  return _s11HomeKitCore25ModelIdentifierDescriptorV2eeoiySbACyxG_AEtFZ_0();
}

uint64_t HomesStore.CoreData.ManagedObjectChangeSet.insertsByObjectID.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t HomesStore.CoreData.ManagedObjectChangeSet.updatesByObjectID.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t HomesStore.CoreData.ManagedObjectChangeSet.deletesByObjectID.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

void sub_25310D46C(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5818C8, &unk_25314E9F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  v8 = [a1 changedObjectID];
  v9 = v8;
  if (!*(*v2 + 16) || (sub_25311DB04(v8), (v10 & 1) == 0))
  {
    v11 = v2[2];
    if (!*(v11 + 16) || (v12 = sub_25311DB04(v9), (v13 & 1) == 0))
    {
      v14 = type metadata accessor for HomesStore.CoreData.ManagedObjectChangeSet.Delete();
      (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
      sub_2530CD33C(v7, &qword_27F5818C8, &unk_25314E9F0);
      v15 = v9;
      v16 = *v2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = *v2;
      sub_2531300A0(v15, v15, isUniquelyReferenced_nonNull_native);
      *v2 = v22;
      sub_25312E850(v15, &v22);
      sub_25310E8D8(v22);

      return;
    }

    v18 = *(v11 + 56);
    v19 = v12;
    v20 = type metadata accessor for HomesStore.CoreData.ManagedObjectChangeSet.Delete();
    v21 = *(v20 - 8);
    sub_2530FBB74(v18 + *(v21 + 72) * v19, v7);
    (*(v21 + 56))(v7, 0, 1, v20);
    sub_2530CD33C(v7, &qword_27F5818C8, &unk_25314E9F0);
    __break(1u);
  }

  __break(1u);
}

void sub_25310D68C(void *a1)
{
  v2 = v1;
  v4 = [a1 changedObjectID];
  if (!*(*v1 + 16) || (v23 = v4, sub_25311DB04(v4), v4 = v23, (v5 & 1) == 0))
  {

    v6 = [a1 changedObjectID];
    v7 = v6;
    v8 = v1[1];
    if (*(v8 + 16) && (v9 = sub_25311DB04(v6), (v10 & 1) != 0))
    {
      v11 = *(v8 + 56) + 16 * v9;
      v12 = *(v11 + 8);
      v13 = *v11;

      v14 = v13;
    }

    else
    {

      v14 = [a1 changedObjectID];
      v12 = MEMORY[0x277D84FA0];
    }

    v26 = v14;
    v27 = v12;
    v15 = [a1 updatedProperties];
    if (v15)
    {
      v16 = v15;
      sub_2530CF970(0, &qword_27F581A88, 0x277CBE4F0);
      sub_25310E998();
      v17 = sub_253148F74();

      sub_25310B3D0(v17);
      v19 = v18;
    }

    else
    {
      v19 = MEMORY[0x277D84F90];
    }

    sub_25310E918(v19);

    v20 = [a1 changedObjectID];
    v24 = v26;

    v21 = v2[1];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v2[1];
    sub_25312FF20(v24, v27, v20, isUniquelyReferenced_nonNull_native);

    v2[1] = v25;

    v4 = v24;
  }
}

void sub_25310D890(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5818C8, &unk_25314E9F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v46 - v5;
  v7 = type metadata accessor for HomesStore.CoreData.ManagedObjectChangeSet.Delete();
  v47 = *(v7 - 8);
  v48 = v7;
  v8 = *(v47 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581608, &qword_25314E3D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v46 - v13;
  v15 = sub_253148944();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [a1 changedObjectID];
  v21 = v20;
  if (*(*v1 + 16))
  {
    sub_25311DB04(v20);
    if (v22)
    {

      v23 = [a1 changedObjectID];
      sub_25312E8E8(v23, &v51);

      return;
    }
  }

  v24 = [a1 changedObjectID];
  sub_25312E850(v24, &v51);

  sub_25310E8D8(v51);
  v25 = [a1 tombstone];
  if (v25)
  {
    v26 = v25;
    v27 = sub_253148AD4();
  }

  else
  {
    v27 = sub_25310A288(MEMORY[0x277D84F90]);
  }

  v49 = 0x44496C65646F6DLL;
  v50 = 0xE700000000000000;
  sub_253149364();
  if (*(v27 + 16) && (v28 = sub_25311D980(&v51), (v29 & 1) != 0))
  {
    sub_2530C0304(*(v27 + 56) + 32 * v28, v52);
    sub_2530FB904(&v51);
    v30 = swift_dynamicCast();
    (*(v16 + 56))(v14, v30 ^ 1u, 1, v15);
    if ((*(v16 + 48))(v14, 1, v15) != 1)
    {

      (*(v16 + 32))(v19, v14, v15);
      v31 = [a1 changedObjectID];
      v32 = v48;
      (*(v16 + 16))(&v10[*(v48 + 20)], v19, v15);
      *v10 = v31;
      v33 = [a1 changedObjectID];
      sub_2530FBB74(v10, v6);
      (*(v47 + 56))(v6, 0, 1, v32);
      sub_25312AFD0(v6, v33);
      sub_2530FD014(v10);
      (*(v16 + 8))(v19, v15);
      return;
    }
  }

  else
  {
    sub_2530FB904(&v51);
    (*(v16 + 56))(v14, 1, 1, v15);
  }

  sub_2530CD33C(v14, &qword_27F581608, &qword_25314E3D0);
  if (qword_27F5802A8 != -1)
  {
    swift_once();
  }

  v34 = sub_253148A94();
  __swift_project_value_buffer(v34, qword_27F581A28);
  v35 = a1;

  v36 = sub_253148A74();
  v37 = sub_2531490B4();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v51 = v40;
    *v38 = 138412546;
    v41 = [v35 changedObjectID];
    *(v38 + 4) = v41;
    *v39 = v41;
    *(v38 + 12) = 2080;
    v42 = sub_253148AE4();
    v44 = v43;

    v45 = sub_253146498(v42, v44, &v51);

    *(v38 + 14) = v45;
    _os_log_impl(&dword_2530B8000, v36, v37, "Could not find model ID in tombstoned properties for deleted managed object ID %@: %s", v38, 0x16u);
    sub_2530CD33C(v39, &qword_27F581E10, &qword_25314F640);
    MEMORY[0x259BFDC60](v39, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v40);
    MEMORY[0x259BFDC60](v40, -1, -1);
    MEMORY[0x259BFDC60](v38, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_25310DF24(__int128 *a1, uint64_t a2)
{
  v18 = a1[2];
  v19 = a1[3];
  v20 = *(a1 + 8);
  v16 = *a1;
  v17 = a1[1];
  sub_253149844();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  while (v5)
  {
LABEL_11:
    v12 = *(a2 + 48) + 24 * (__clz(__rbit64(v5)) | (v9 << 6));
    v13 = *v12;
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    sub_253149814();
    if (v15 < 0)
    {
      MEMORY[0x259BFD420](1);

      sub_253148BB4();
      sub_253149834();
    }

    else
    {
      MEMORY[0x259BFD420](0);

      sub_253148BB4();
    }

    v5 &= v5 - 1;
    v10 = sub_253149844();
    result = sub_2530DA7C4();
    v8 ^= v10;
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return MEMORY[0x259BFD420](v8);
    }

    v5 = *(a2 + 56 + 8 * v11);
    ++v9;
    if (v5)
    {
      v9 = v11;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s11HomeKitCore10HomesStoreC0C4DataO22ManagedObjectChangeSetV19PropertyDescriptionO2eeoiySbAI_AItFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = a2[1];
  v7 = *(a2 + 16);
  if (v4 < 0)
  {
    if (v7 < 0)
    {
      v14 = *a1;
      if (v3 == v6 && v2 == v5)
      {
        sub_2530DA7BC();
        sub_2530DA7BC();
        sub_2530DA7C4();
        sub_2530DA7C4();
        if (((v4 ^ v7) & 1) == 0)
        {
          return 1;
        }
      }

      else
      {
        v16 = sub_253149734();
        sub_2530DA7BC();
        sub_2530DA7BC();
        sub_2530DA7C4();
        sub_2530DA7C4();
        if ((v16 & 1) != 0 && ((v4 ^ v7) & 1) == 0)
        {
          return 1;
        }
      }

      return 0;
    }

LABEL_10:
    v12 = *a2;
    v13 = a2[1];
    sub_2530DA7BC();
    sub_2530DA7BC();
    sub_2530DA7C4();
    sub_2530DA7C4();
    return 0;
  }

  if (v7 < 0)
  {
    goto LABEL_10;
  }

  v8 = *a1;
  if (v3 == v6 && v2 == v5)
  {
    sub_2530DA7BC();
    sub_2530DA7BC();
    sub_2530DA7C4();
    sub_2530DA7C4();
    return 1;
  }

  v10 = sub_253149734();
  sub_2530DA7BC();
  sub_2530DA7BC();
  sub_2530DA7C4();
  sub_2530DA7C4();
  result = 0;
  if (v10)
  {
    return 1;
  }

  return result;
}

uint64_t type metadata accessor for HomesStore.CoreData.ManagedObjectChangeSet.Delete()
{
  result = qword_27F581A78;
  if (!qword_27F581A78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_25310E314()
{
  result = qword_27F581A48;
  if (!qword_27F581A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F581A48);
  }

  return result;
}

unint64_t sub_25310E36C()
{
  result = qword_27F581A50;
  if (!qword_27F581A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F581A50);
  }

  return result;
}

unint64_t sub_25310E3C4()
{
  result = qword_27F581A58;
  if (!qword_27F581A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F581A58);
  }

  return result;
}

unint64_t sub_25310E41C()
{
  result = qword_27F581A60;
  if (!qword_27F581A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F581A60);
  }

  return result;
}

unint64_t sub_25310E474()
{
  result = qword_27F581A68;
  if (!qword_27F581A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F581A68);
  }

  return result;
}

uint64_t sub_25310E510(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25310E568(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_25310E5B0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_25310E5FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_25310E644(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25310E6A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 17))
  {
    return (*a1 + 127);
  }

  v3 = (*(a1 + 16) & 0x7E | (*(a1 + 16) >> 7)) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_25310E6F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 16) = 0;
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

uint64_t sub_25310E778(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_25310E7C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25310E844()
{
  result = sub_2530CF970(319, &qword_27F5818D0, 0x277CBE448);
  if (v1 <= 0x3F)
  {
    result = sub_253148944();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void *sub_25310E8D8(void *result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25310E918(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 48);
    do
    {
      v4 = *(v2 - 2);
      v3 = *(v2 - 1);
      v5 = *v2;
      v2 += 24;
      sub_2530DA7BC();
      sub_2530D62E4(&v6, v4, v3, v5);
      result = sub_2530DA7C4();
      --v1;
    }

    while (v1);
  }

  return result;
}

unint64_t sub_25310E998()
{
  result = qword_27F581A90;
  if (!qword_27F581A90)
  {
    sub_2530CF970(255, &qword_27F581A88, 0x277CBE4F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F581A90);
  }

  return result;
}

uint64_t HomesStore.Accessory.Category.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 0;
  v3 = 18;
  switch(result)
  {
    case 1:
      goto LABEL_28;
    case 2:
      v2 = 1;
      goto LABEL_28;
    case 3:
      v2 = 2;
      goto LABEL_28;
    case 4:
      v2 = 3;
      goto LABEL_28;
    case 5:
      v2 = 4;
      goto LABEL_28;
    case 6:
      v2 = 5;
      goto LABEL_28;
    case 7:
      v2 = 6;
      goto LABEL_28;
    case 8:
      v2 = 7;
      goto LABEL_28;
    case 9:
      v2 = 8;
      goto LABEL_28;
    case 10:
      v2 = 9;
      goto LABEL_28;
    case 11:
      v2 = 10;
      goto LABEL_28;
    case 12:
      v2 = 11;
      goto LABEL_28;
    case 13:
      v2 = 12;
      goto LABEL_28;
    case 14:
      v2 = 13;
      goto LABEL_28;
    case 15:
      v2 = 14;
      goto LABEL_28;
    case 16:
      v2 = 15;
      goto LABEL_28;
    case 17:
      v2 = 16;
      goto LABEL_28;
    case 18:
      v2 = 17;
LABEL_28:
      v3 = v2;
      goto LABEL_29;
    case 19:
LABEL_29:
      *a2 = v3;
      break;
    case 20:
      *a2 = 19;
      break;
    case 21:
      *a2 = 20;
      break;
    case 22:
      *a2 = 21;
      break;
    case 23:
      *a2 = 22;
      break;
    case 24:
      *a2 = 23;
      break;
    case 25:
      *a2 = 24;
      break;
    case 26:
      *a2 = 25;
      break;
    case 27:
      *a2 = 26;
      break;
    case 28:
      *a2 = 27;
      break;
    case 29:
      *a2 = 28;
      break;
    case 30:
      *a2 = 29;
      break;
    case 31:
      *a2 = 30;
      break;
    case 32:
      *a2 = 31;
      break;
    case 33:
      *a2 = 32;
      break;
    case 34:
      *a2 = 33;
      break;
    case 35:
      *a2 = 34;
      break;
    case 36:
      *a2 = 35;
      break;
    default:
      *a2 = 36;
      break;
  }

  return result;
}

uint64_t HomesStore.Accessory.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_253148944();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t HomesStore.Accessory.name.getter()
{
  v1 = (v0 + *(type metadata accessor for HomesStore.Accessory() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t type metadata accessor for HomesStore.Accessory()
{
  result = qword_27F581B18;
  if (!qword_27F581B18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t HomesStore.Accessory.category.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for HomesStore.Accessory();
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t HomesStore.Accessory.legacyUniqueIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HomesStore.Accessory() + 28);
  v4 = sub_253148944();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HomesStore.Accessory.model.getter()
{
  v1 = (v0 + *(type metadata accessor for HomesStore.Accessory() + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t HomesStore.Accessory.firmwareVersion.getter()
{
  v1 = (v0 + *(type metadata accessor for HomesStore.Accessory() + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

unint64_t sub_25310EDCC()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0xD000000000000016;
  v4 = 0x6C65646F6DLL;
  if (v1 != 4)
  {
    v4 = 0x657261776D726966;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 1701667182;
  if (v1 != 1)
  {
    v5 = 0x79726F6765746163;
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

uint64_t sub_25310EE80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2531106CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25310EEA8(uint64_t a1)
{
  v2 = sub_25310FE34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25310EEE4(uint64_t a1)
{
  v2 = sub_25310FE34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HomesStore.Accessory.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581AB0, "<w");
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25310FE34();
  sub_253149894();
  v30 = 0;
  sub_253148944();
  sub_2531101C4(&qword_27F580630, MEMORY[0x277CC95F0]);
  sub_2531496D4();
  if (!v2)
  {
    v11 = type metadata accessor for HomesStore.Accessory();
    v12 = (v3 + v11[5]);
    v13 = *v12;
    v14 = v12[1];
    v29 = 1;
    sub_2531496B4();
    v28 = *(v3 + v11[6]);
    v27 = 2;
    sub_25310FE88();
    sub_2531496D4();
    v15 = v11[7];
    v26 = 3;
    sub_2531496D4();
    v16 = (v3 + v11[8]);
    v17 = *v16;
    v18 = v16[1];
    v25 = 4;
    sub_2531496A4();
    v19 = (v3 + v11[9]);
    v20 = *v19;
    v21 = v19[1];
    v24 = 5;
    sub_2531496A4();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t HomesStore.Accessory.hash(into:)()
{
  v1 = v0;
  sub_253148944();
  sub_2531101C4(&qword_27F580560, MEMORY[0x277CC95F0]);
  sub_253148B14();
  v2 = type metadata accessor for HomesStore.Accessory();
  v3 = (v0 + v2[5]);
  v4 = *v3;
  v5 = v3[1];
  sub_253148BB4();
  MEMORY[0x259BFD420](*(v0 + v2[6]) + 1);
  v6 = v0 + v2[7];
  sub_253148B14();
  v7 = (v1 + v2[8]);
  if (v7[1])
  {
    v8 = *v7;
    sub_253149834();
    sub_253148BB4();
  }

  else
  {
    sub_253149834();
  }

  v9 = (v1 + v2[9]);
  if (!v9[1])
  {
    return sub_253149834();
  }

  v10 = *v9;
  sub_253149834();

  return sub_253148BB4();
}

uint64_t HomesStore.Accessory.hashValue.getter()
{
  sub_253149814();
  HomesStore.Accessory.hash(into:)();
  return sub_253149844();
}

uint64_t HomesStore.Accessory.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v40 = sub_253148944();
  v37 = *(v40 - 8);
  v3 = *(v37 + 64);
  v4 = MEMORY[0x28223BE20](v40);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581AC8, &qword_25314FAB8);
  v38 = *(v9 - 8);
  v39 = v9;
  v10 = *(v38 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v35 - v11;
  v13 = type metadata accessor for HomesStore.Accessory();
  v14 = *(*(v13 - 1) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25310FE34();
  v41 = v12;
  v18 = v42;
  sub_253149884();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v42 = v6;
  v19 = v16;
  v49 = 0;
  v20 = sub_2531101C4(&qword_27F5805E8, MEMORY[0x277CC95F0]);
  sub_253149664();
  v35[2] = v20;
  v21 = *(v37 + 32);
  v21(v19, v8, v40);
  v48 = 1;
  v22 = sub_253149644();
  v23 = (v19 + v13[5]);
  *v23 = v22;
  v23[1] = v24;
  v46 = 2;
  sub_25310FEDC();
  v35[1] = 0;
  sub_253149664();
  *(v19 + v13[6]) = v47;
  v45 = 3;
  v25 = v42;
  v26 = v40;
  sub_253149664();
  v21(v19 + v13[7], v25, v26);
  v44 = 4;
  v27 = sub_253149634();
  v28 = (v19 + v13[8]);
  *v28 = v27;
  v28[1] = v29;
  v43 = 5;
  v30 = sub_253149634();
  v32 = v31;
  (*(v38 + 8))(v41, v39);
  v33 = (v19 + v13[9]);
  *v33 = v30;
  v33[1] = v32;
  sub_25310FF30(v19, v36);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_25310FF94(v19);
}

uint64_t sub_25310F8FC()
{
  sub_253149814();
  HomesStore.Accessory.hash(into:)();
  return sub_253149844();
}

uint64_t sub_25310F940()
{
  sub_253149814();
  HomesStore.Accessory.hash(into:)();
  return sub_253149844();
}

uint64_t sub_25310F9C0()
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581B58, &qword_25314FF90);
  swift_allocObject();

  v1 = sub_253142134(v0);

  qword_27F581A98 = v1;
  return result;
}

uint64_t sub_25310FA54()
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581B50, &unk_25314FF58);
  swift_allocObject();

  v1 = sub_25314255C(v0);

  qword_27F581AA0 = v1;
  return result;
}

uint64_t sub_25310FAE8()
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581B48, &unk_25314FF20);
  swift_allocObject();

  v1 = sub_2531429AC(v0);

  qword_27F581AA8 = v1;
  return result;
}

uint64_t sub_25310FB88()
{
  v1 = *v0;
  sub_253149814();
  MEMORY[0x259BFD420](v1 + 1);
  return sub_253149844();
}

uint64_t sub_25310FC00()
{
  v1 = *v0;
  sub_253149814();
  MEMORY[0x259BFD420](v1 + 1);
  return sub_253149844();
}

uint64_t _s11HomeKitCore10HomesStoreC9AccessoryV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s11HomeKitCore25ModelIdentifierDescriptorV2eeoiySbACyxG_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for HomesStore.Accessory();
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_253149734() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v4[6]) != *(a2 + v4[6]))
  {
    return 0;
  }

  v10 = v4[7];
  if ((_s11HomeKitCore25ModelIdentifierDescriptorV2eeoiySbACyxG_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v11 = v4[8];
  v12 = (a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v15 = v14[1];
  if (v13)
  {
    if (!v15)
    {
      return 0;
    }

    v16 = *v12 == *v14 && v13 == v15;
    if (!v16 && (sub_253149734() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  v17 = v4[9];
  v18 = (a1 + v17);
  v19 = *(a1 + v17 + 8);
  v20 = (a2 + v17);
  v21 = v20[1];
  if (v19)
  {
    if (v21 && (*v18 == *v20 && v19 == v21 || (sub_253149734() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v21)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_25310FE34()
{
  result = qword_27F581AB8;
  if (!qword_27F581AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F581AB8);
  }

  return result;
}

unint64_t sub_25310FE88()
{
  result = qword_27F581AC0;
  if (!qword_27F581AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F581AC0);
  }

  return result;
}

unint64_t sub_25310FEDC()
{
  result = qword_27F581AD0;
  if (!qword_27F581AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F581AD0);
  }

  return result;
}

uint64_t sub_25310FF30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomesStore.Accessory();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25310FF94(uint64_t a1)
{
  v2 = type metadata accessor for HomesStore.Accessory();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25310FFF0(void *a1)
{
  a1[1] = sub_2531101C4(&qword_27F581AE0, type metadata accessor for HomesStore.Accessory);
  a1[2] = sub_2531101C4(&qword_27F581AE8, type metadata accessor for HomesStore.Accessory);
  a1[3] = sub_2531101C4(&qword_27F581AF0, type metadata accessor for HomesStore.Accessory);
  a1[4] = sub_2531101C4(&qword_27F581AF8, type metadata accessor for HomesStore.Accessory);
  result = sub_2531101C4(&qword_27F581B00, type metadata accessor for HomesStore.Accessory);
  a1[5] = result;
  return result;
}

uint64_t sub_2531101C4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_253110210()
{
  result = qword_27F581B10;
  if (!qword_27F581B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F581B10);
  }

  return result;
}

void sub_25311028C()
{
  sub_253148944();
  if (v0 <= 0x3F)
  {
    sub_2530EC300();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t _s9AccessoryV8CategoryOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDD)
  {
    goto LABEL_17;
  }

  if (a2 + 35 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 35) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 35;
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

      return (*a1 | (v4 << 8)) - 35;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 35;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x24;
  v8 = v6 - 36;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s9AccessoryV8CategoryOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 35 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 35) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDD)
  {
    v4 = 0;
  }

  if (a2 > 0xDC)
  {
    v5 = ((a2 - 221) >> 8) + 1;
    *result = a2 + 35;
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
    *result = a2 + 35;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s9AccessoryV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s9AccessoryV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2531105C8()
{
  result = qword_27F581B28;
  if (!qword_27F581B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F581B28);
  }

  return result;
}

unint64_t sub_253110620()
{
  result = qword_27F581B30;
  if (!qword_27F581B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F581B30);
  }

  return result;
}

unint64_t sub_253110678()
{
  result = qword_27F581B38;
  if (!qword_27F581B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F581B38);
  }

  return result;
}

uint64_t sub_2531106CC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_253149734() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_253149734() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x79726F6765746163 && a2 == 0xE800000000000000 || (sub_253149734() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x800000025314B480 == a2 || (sub_253149734() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C65646F6DLL && a2 == 0xE500000000000000 || (sub_253149734() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x657261776D726966 && a2 == 0xEF6E6F6973726556)
  {

    return 5;
  }

  else
  {
    v6 = sub_253149734();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_2531108CC()
{
  result = qword_27F581B40;
  if (!qword_27F581B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F581B40);
  }

  return result;
}

uint64_t sub_253110940()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
  v2 = *MEMORY[0x277CCA308];
  sub_253148B64();
  sub_2531490D4();
  if (v0)
  {
  }

  else
  {

    [v1 finishEncoding];
    v4 = [v1 encodedData];
    v5 = sub_2531488B4();

    return v5;
  }
}

uint64_t sub_253110A90(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5816A0, &qword_253151500);
  v41 = *(v3 - 8);
  v4 = *(v41 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v36 - v5;
  v42 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = sub_2531492E4();
  }

  else
  {
    v7 = *(a1 + 16);
  }

  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {
    return v8;
  }

  v48 = MEMORY[0x277D84F90];
  sub_2530F4EF8(0, v7 & ~(v7 >> 63), 0);
  v8 = v48;
  if (v42)
  {
    result = sub_253149294();
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    result = sub_253149264();
    v10 = *(a1 + 36);
  }

  v45 = result;
  v46 = v10;
  v47 = v42 != 0;
  if ((v7 & 0x8000000000000000) == 0)
  {
    v12 = 0;
    v13 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 < 0)
    {
      v13 = a1;
    }

    v38 = a1 + 56;
    v39 = v13;
    v36[1] = v1;
    v37 = a1 + 64;
    v43 = a1;
    v40 = v7;
    while (v12 < v7)
    {
      if (__OFADD__(v12++, 1))
      {
        goto LABEL_38;
      }

      v17 = v45;
      v16 = v46;
      v18 = v47;
      sub_25311220C(v45, v46, v47, a1);
      v20 = v19;
      v21 = [v19 modelID];
      sub_253148924();

      v48 = v8;
      v22 = v6;
      v24 = *(v8 + 16);
      v23 = *(v8 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_2530F4EF8(v23 > 1, v24 + 1, 1);
        v8 = v48;
      }

      *(v8 + 16) = v24 + 1;
      result = sub_25311240C(v22, v8 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v24);
      v6 = v22;
      if (v42)
      {
        a1 = v43;
        if (!v18)
        {
          goto LABEL_43;
        }

        if (sub_2531492B4())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        v7 = v40;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581B80, &qword_25314FFD8);
        v14 = sub_253148F94();
        sub_253149334();
        result = v14(v44, 0);
        if (v12 == v7)
        {
LABEL_35:
          sub_2530BA974(v45, v46, v47);
          return v8;
        }
      }

      else
      {
        a1 = v43;
        if (v18)
        {
          goto LABEL_44;
        }

        if ((v17 & 0x8000000000000000) != 0)
        {
          goto LABEL_39;
        }

        v25 = 1 << *(v43 + 32);
        if (v17 >= v25)
        {
          goto LABEL_39;
        }

        v26 = v17 >> 6;
        v27 = *(v38 + 8 * (v17 >> 6));
        if (((v27 >> v17) & 1) == 0)
        {
          goto LABEL_40;
        }

        if (*(v43 + 36) != v16)
        {
          goto LABEL_41;
        }

        v28 = v27 & (-2 << (v17 & 0x3F));
        if (v28)
        {
          v25 = __clz(__rbit64(v28)) | v17 & 0x7FFFFFFFFFFFFFC0;
          v7 = v40;
        }

        else
        {
          v29 = v6;
          v30 = v26 << 6;
          v31 = v26 + 1;
          v32 = (v37 + 8 * v26);
          v7 = v40;
          while (v31 < (v25 + 63) >> 6)
          {
            v34 = *v32++;
            v33 = v34;
            v30 += 64;
            ++v31;
            if (v34)
            {
              result = sub_2530BA974(v17, v16, 0);
              v25 = __clz(__rbit64(v33)) + v30;
              goto LABEL_33;
            }
          }

          result = sub_2530BA974(v17, v16, 0);
LABEL_33:
          v6 = v29;
          a1 = v43;
        }

        v35 = *(a1 + 36);
        v45 = v25;
        v46 = v35;
        v47 = 0;
        if (v12 == v7)
        {
          goto LABEL_35;
        }
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_253110E94(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581B60, &qword_25314FFC8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v46 - v4;
  v54 = type metadata accessor for HomesStore.HomesRelationshipModel.Home(0);
  v6 = *(v54 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v54);
  v48 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v46 = &v46 - v10;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2531492A4();
    type metadata accessor for HMCDHomeModel();
    sub_2531121C4(&qword_27F581940, type metadata accessor for HMCDHomeModel);
    result = sub_253148FC4();
    a1 = v59;
    v12 = v60;
    v13 = v61;
    v14 = v62;
    v15 = v63;
  }

  else
  {
    v16 = -1 << *(a1 + 32);
    v12 = a1 + 56;
    v13 = ~v16;
    v17 = -v16;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v15 = v18 & *(a1 + 56);

    v14 = 0;
  }

  v55 = v5;
  v49 = v13;
  v19 = (v13 + 64) >> 6;
  v47 = v6;
  v51 = (v6 + 48);
  v52 = (v6 + 56);
  v50 = MEMORY[0x277D84F90];
  v53 = v19;
LABEL_8:
  v20 = v14;
  for (i = v15; a1 < 0; v19 = v53)
  {
    v26 = sub_253149314();
    if (!v26)
    {
      goto LABEL_25;
    }

    v58 = v26;
    type metadata accessor for HMCDHomeModel();
    swift_dynamicCast();
    v25 = v64;
    v14 = v20;
    v24 = i;
    if (!v64)
    {
      goto LABEL_25;
    }

LABEL_17:
    v57 = v24;
    v27 = v12;
    v28 = a1;
    v29 = [v25 accessories];
    type metadata accessor for HMCDAccessoryModel();
    sub_2531121C4(&qword_27F581B68, type metadata accessor for HMCDAccessoryModel);
    v30 = sub_253148F74();

    v56 = sub_2531114EC(v30);

    v31 = [v25 rooms];
    type metadata accessor for HMCDRoomModel();
    sub_2531121C4(&qword_27F580998, type metadata accessor for HMCDRoomModel);
    v32 = sub_253148F74();

    v33 = sub_253110A90(v32);

    v34 = [v25 zones];
    type metadata accessor for HMCDZoneModel();
    sub_2531121C4(&qword_27F581B70, type metadata accessor for HMCDZoneModel);
    v35 = sub_253148F74();

    v36 = sub_253111AE8(v35);

    v37 = [v25 modelID];
    v38 = v55;
    sub_253148924();

    v39 = v54;
    *(v38 + *(v54 + 20)) = v56;
    *(v38 + *(v39 + 24)) = v33;
    *(v38 + *(v39 + 28)) = v36;
    (*v52)(v38, 0, 1, v39);

    if ((*v51)(v38, 1, v39) != 1)
    {
      v40 = v46;
      sub_25311247C(v38, v46, type metadata accessor for HomesStore.HomesRelationshipModel.Home);
      sub_25311247C(v40, v48, type metadata accessor for HomesStore.HomesRelationshipModel.Home);
      v41 = v50;
      a1 = v28;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = sub_2530F46A8(0, v41[2] + 1, 1, v41);
      }

      v42 = v47;
      v12 = v27;
      v44 = v41[2];
      v43 = v41[3];
      v15 = v57;
      if (v44 >= v43 >> 1)
      {
        v41 = sub_2530F46A8(v43 > 1, v44 + 1, 1, v41);
      }

      v41[2] = v44 + 1;
      v45 = (*(v42 + 80) + 32) & ~*(v42 + 80);
      v50 = v41;
      result = sub_25311247C(v48, v41 + v45 + *(v42 + 72) * v44, type metadata accessor for HomesStore.HomesRelationshipModel.Home);
      v19 = v53;
      goto LABEL_8;
    }

    result = sub_2530CD33C(v38, &qword_27F581B60, &qword_25314FFC8);
    v20 = v14;
    i = v57;
    a1 = v28;
    v12 = v27;
  }

  v22 = v20;
  v23 = i;
  v14 = v20;
  if (i)
  {
LABEL_13:
    v24 = (v23 - 1) & v23;
    v25 = *(*(a1 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v23)))));
    if (v25)
    {
      goto LABEL_17;
    }

LABEL_25:
    sub_2530DFAD4();
    return v50;
  }

  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v19)
    {
      goto LABEL_25;
    }

    v23 = *(v12 + 8 * v14);
    ++v22;
    if (v23)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2531114EC(uint64_t a1)
{
  v65 = sub_253148944();
  v3 = *(v65 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v65);
  v64 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v63 = &v53 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581B88, &qword_25314FFE0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v53 - v10;
  v68 = type metadata accessor for HomesStore.HomesRelationshipModel.Accessory(0);
  v12 = *(v68 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v68);
  v56 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v54 = &v53 - v16;
  v58 = v1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2531492A4();
    type metadata accessor for HMCDAccessoryModel();
    sub_2531121C4(&qword_27F581B68, type metadata accessor for HMCDAccessoryModel);
    result = sub_253148FC4();
    a1 = v71;
    v18 = v72;
    v19 = v73;
    v20 = v74;
    v21 = v75;
  }

  else
  {
    v22 = -1 << *(a1 + 32);
    v18 = a1 + 56;
    v19 = ~v22;
    v23 = -v22;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v21 = v24 & *(a1 + 56);

    v20 = 0;
  }

  v57 = v19;
  v25 = (v19 + 64) >> 6;
  v61 = (v3 + 32);
  v55 = v12;
  v66 = (v12 + 48);
  v67 = (v12 + 56);
  v59 = MEMORY[0x277D84F90];
  v60 = a1;
  v62 = v25;
  v26 = v20;
  if ((a1 & 0x8000000000000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v27 = sub_253149314();
  if (v27 && (v70 = v27, type metadata accessor for HMCDAccessoryModel(), swift_dynamicCast(), v28 = v76, v29 = v26, v30 = v21, v76))
  {
    while (1)
    {
      v33 = [v28 room];
      if (v33)
      {
        v34 = v33;
        v35 = [v33 modelID];

        v36 = v18;
        v37 = v64;
        sub_253148924();

        v69 = v30;
        v38 = *v61;
        v39 = v63;
        v40 = v37;
        v41 = v65;
        (*v61)(v63, v40, v65);
        v42 = [v28 modelID];
        sub_253148924();

        v43 = v68;
        v44 = v39;
        v45 = v41;
        a1 = v60;
        v18 = v36;
        v25 = v62;
        v38(&v11[*(v68 + 20)], v44, v45);
        v30 = v69;
        (*v67)(v11, 0, 1, v43);
      }

      else
      {
        v43 = v68;
        (*v67)(v11, 1, 1, v68);
      }

      if ((*v66)(v11, 1, v43) == 1)
      {
        result = sub_2530CD33C(v11, &qword_27F581B88, &qword_25314FFE0);
        v26 = v29;
        v21 = v30;
        if (a1 < 0)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v69 = v30;
        v46 = v25;
        v47 = v54;
        sub_25311247C(v11, v54, type metadata accessor for HomesStore.HomesRelationshipModel.Accessory);
        sub_25311247C(v47, v56, type metadata accessor for HomesStore.HomesRelationshipModel.Accessory);
        v48 = v59;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v48 = sub_2530F4B4C(0, v48[2] + 1, 1, v48);
        }

        v49 = v55;
        v51 = v48[2];
        v50 = v48[3];
        if (v51 >= v50 >> 1)
        {
          v48 = sub_2530F4B4C(v50 > 1, v51 + 1, 1, v48);
        }

        v48[2] = v51 + 1;
        v52 = (*(v49 + 80) + 32) & ~*(v49 + 80);
        v59 = v48;
        result = sub_25311247C(v56, v48 + v52 + *(v49 + 72) * v51, type metadata accessor for HomesStore.HomesRelationshipModel.Accessory);
        v25 = v46;
        v21 = v69;
        v26 = v29;
        if (a1 < 0)
        {
          goto LABEL_8;
        }
      }

LABEL_11:
      v31 = v26;
      v32 = v21;
      v29 = v26;
      if (!v21)
      {
        break;
      }

LABEL_15:
      v30 = (v32 - 1) & v32;
      v28 = *(*(a1 + 48) + ((v29 << 9) | (8 * __clz(__rbit64(v32)))));
      if (!v28)
      {
        goto LABEL_28;
      }
    }

    while (1)
    {
      v29 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v29 >= v25)
      {
        goto LABEL_28;
      }

      v32 = *(v18 + 8 * v29);
      ++v31;
      if (v32)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_28:
    sub_2530DFAD4();
    return v59;
  }

  return result;
}

void *sub_253111AE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581B78, &qword_25314FFD0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v36 - v4;
  v44 = type metadata accessor for HomesStore.HomesRelationshipModel.Zone(0);
  v6 = *(v44 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v44);
  v39 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v37 = &v36 - v10;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2531492A4();
    type metadata accessor for HMCDZoneModel();
    sub_2531121C4(&qword_27F581B70, type metadata accessor for HMCDZoneModel);
    result = sub_253148FC4();
    a1 = v47;
    v12 = v48;
    v13 = v49;
    v14 = v50;
    v15 = v51;
  }

  else
  {
    v16 = -1 << *(a1 + 32);
    v12 = a1 + 56;
    v13 = ~v16;
    v17 = -v16;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v15 = v18 & *(a1 + 56);

    v14 = 0;
  }

  v40 = v13;
  v38 = v6;
  v42 = (v6 + 48);
  v43 = (v6 + 56);
  v41 = MEMORY[0x277D84F90];
  v45 = a1;
LABEL_8:
  v19 = v14;
  v20 = v15;
  if (a1 < 0)
  {
    do
    {
      v24 = sub_253149314();
      if (!v24)
      {
        goto LABEL_25;
      }

      v46 = v24;
      type metadata accessor for HMCDZoneModel();
      swift_dynamicCast();
      v23 = v52;
      v14 = v19;
      v15 = v20;
      if (!v52)
      {
        goto LABEL_25;
      }

LABEL_17:
      v25 = [v23 rooms];
      type metadata accessor for HMCDRoomModel();
      sub_2531121C4(&qword_27F580998, type metadata accessor for HMCDRoomModel);
      v26 = sub_253148F74();

      v27 = sub_253110A90(v26);

      v28 = [v23 modelID];
      sub_253148924();

      v29 = v43;
      v30 = v44;
      *&v5[*(v44 + 20)] = v27;
      (*v29)(v5, 0, 1, v30);

      if ((*v42)(v5, 1, v30) != 1)
      {
        v31 = v37;
        sub_25311247C(v5, v37, type metadata accessor for HomesStore.HomesRelationshipModel.Zone);
        sub_25311247C(v31, v39, type metadata accessor for HomesStore.HomesRelationshipModel.Zone);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v41 = sub_2530F4B24(0, v41[2] + 1, 1, v41);
        }

        v32 = v38;
        v34 = v41[2];
        v33 = v41[3];
        if (v34 >= v33 >> 1)
        {
          v41 = sub_2530F4B24(v33 > 1, v34 + 1, 1, v41);
        }

        v35 = v41;
        v41[2] = v34 + 1;
        result = sub_25311247C(v39, v35 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v34, type metadata accessor for HomesStore.HomesRelationshipModel.Zone);
        a1 = v45;
        goto LABEL_8;
      }

      result = sub_2530CD33C(v5, &qword_27F581B78, &qword_25314FFD0);
      v19 = v14;
      v20 = v15;
      a1 = v45;
    }

    while (v45 < 0);
  }

  v21 = v19;
  v22 = v20;
  v14 = v19;
  if (v20)
  {
LABEL_13:
    v15 = (v22 - 1) & v22;
    v23 = *(*(a1 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v22)))));
    if (v23)
    {
      goto LABEL_17;
    }

LABEL_25:
    sub_2530DFAD4();
    return v41;
  }

  while (1)
  {
    v14 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v14 >= ((v13 + 64) >> 6))
    {
      goto LABEL_25;
    }

    v22 = *(v12 + 8 * v14);
    ++v21;
    if (v22)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_253112004@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for HomesStore.HomesRelationshipModel(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 modelID];
  sub_253148924();

  v10 = [a1 homes];
  type metadata accessor for HMCDHomeModel();
  sub_2531121C4(&qword_27F581940, type metadata accessor for HMCDHomeModel);
  v11 = sub_253148F74();

  v12 = sub_253110E94(v11);

  *&v8[*(v4 + 20)] = v12;
  sub_25311247C(v8, a2, type metadata accessor for HomesStore.HomesRelationshipModel);
  return (*(v5 + 56))(a2, 0, 1, v4);
}

uint64_t sub_2531121C4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_25311220C(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x259BFCF00](a1, a2, v7);
      type metadata accessor for HMCDRoomModel();
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    type metadata accessor for HMCDRoomModel();
    if (sub_2531492C4() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_2531492D4();
    swift_dynamicCast();
    v4 = v16;
    v8 = *(a4 + 40);
    v9 = sub_253149184();
    v10 = -1 << *(a4 + 32);
    v6 = v9 & ~v10;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v11 = ~v10;
      do
      {
        v12 = *(*(a4 + 48) + 8 * v6);
        v13 = sub_253149194();

        if (v13)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v11;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v14 = *(*(a4 + 48) + 8 * v6);

  v15 = v14;
}

uint64_t sub_25311240C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5816A0, &qword_253151500);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25311247C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_253112510()
{
  result = qword_27F580958;
  if (!qword_27F580958)
  {
    type metadata accessor for HMCDUserModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F580958);
  }

  return result;
}

uint64_t sub_253112574@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v8 modelID];
  sub_253148924();

  v12 = [a1 handle];
  v13 = sub_253148B64();
  v15 = v14;

  v16 = &v10[*(a2 + 20)];
  *v16 = v13;
  v16[1] = v15;
  sub_2531127F4(v10, a3);
  return (*(v6 + 56))(a3, 0, 1, a2);
}

uint64_t sub_2531126B0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580EB0, &qword_25314D550);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25314E1C0;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x44496C65646F6DLL;
  *(inited + 48) = 0xE700000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x656C646E6168;
  *(inited + 72) = 0xE600000000000000;
  v1 = sub_253109C78(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580EB8, &qword_25314D638);
  result = swift_arrayDestroy();
  qword_27F58D0A8 = v1;
  return result;
}

uint64_t sub_253112798()
{
  if (qword_27F5802C8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2531127F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomesStore.User();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_253112858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580568, &qword_25314BDB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_25311A0C8(a3, v27 - v11);
  v13 = sub_253148DE4();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_2530CD33C(v12, &qword_27F580568, &qword_25314BDB0);
  }

  else
  {
    sub_253148DD4();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_253148D84();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_253148B94() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_2530CD33C(a3, &qword_27F580568, &qword_25314BDB0);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2530CD33C(a3, &qword_27F580568, &qword_25314BDB0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t HomesStore.AnyChanges.makeAsyncIterator()@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807C8, &qword_25314D940);
  sub_253148E54();
  v3 = *(v1 + *(type metadata accessor for HomesStore.AnyChanges(0) + 20));
  *(a1 + *(type metadata accessor for HomesStore.AnyChanges.AsyncIterator(0) + 20)) = v3;
}

uint64_t sub_253112BF8()
{
  v0 = sub_253148A94();
  __swift_allocate_value_buffer(v0, qword_27F581B90);
  __swift_project_value_buffer(v0, qword_27F581B90);
  return sub_253148A84();
}

uint64_t sub_253112CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v5[2] = a3;
  v5[8] = sub_253148974();
  v6 = sub_2531491F4();
  v5[9] = v6;
  v7 = *(v6 - 8);
  v5[10] = v7;
  v8 = *(v7 + 64) + 15;
  v5[11] = swift_task_alloc();
  v9 = sub_2531489E4();
  v5[12] = v9;
  v10 = *(v9 - 8);
  v5[13] = v10;
  v11 = *(v10 + 64) + 15;
  v5[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_253112DF8, 0, 0);
}

uint64_t sub_253112DF8()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[11];
  v4 = v0[12];
  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[4];
  sub_253149104();
  v0[15] = sub_253118FFC();
  v8 = sub_2531491E4();
  sub_2531489D4();
  sub_2531489B4();

  v9 = *(v2 + 8);
  v0[16] = v9;
  v0[17] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v1, v4);
  v10 = v6[5];
  v11 = v6[6];
  __swift_project_boxed_opaque_existential_1(v6 + 2, v10);
  v12 = *(v5 - 8);
  (*(v12 + 16))(v3, v7, v5);
  (*(v12 + 56))(v3, 0, 1, v5);
  v13 = *(v11 + 16);
  v21 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  v0[18] = v15;
  *v15 = v0;
  v15[1] = sub_253113034;
  v16 = v0[11];
  v17 = v0[5];
  v18 = v0[6];
  v19 = v0[3];

  return v21(v19, v16, v17, v18, v10, v11);
}

uint64_t sub_253113034(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 144);
  v6 = *v2;
  v4[19] = v1;

  v7 = v4[11];
  v8 = v4[10];
  v9 = v4[9];
  if (v1)
  {
    (*(v8 + 8))(v7, v9);
    v10 = sub_25311A1F4;
  }

  else
  {
    v4[20] = a1;
    (*(v8 + 8))(v7, v9);
    v10 = sub_2531131BC;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_2531131BC()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[14];
  v4 = v0[15];
  v6 = v0[11];
  v5 = v0[12];
  sub_2531490F4();
  v7 = sub_2531491E4();
  sub_2531489D4();
  sub_2531489B4();

  v2(v3, v5);

  v8 = v0[1];
  v9 = v0[20];

  return v8(v9);
}

uint64_t sub_2531132A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v4[2] = a2;
  v4[7] = sub_253148974();
  v5 = sub_2531491F4();
  v4[8] = v5;
  v6 = *(v5 - 8);
  v4[9] = v6;
  v7 = *(v6 + 64) + 15;
  v4[10] = swift_task_alloc();
  v8 = sub_2531489E4();
  v4[11] = v8;
  v9 = *(v8 - 8);
  v4[12] = v9;
  v10 = *(v9 + 64) + 15;
  v4[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2531133DC, 0, 0);
}

uint64_t sub_2531133DC()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v6 = v0[6];
  v5 = v0[7];
  sub_253149104();
  v0[14] = sub_253118FFC();
  v7 = sub_2531491E4();
  sub_2531489D4();
  sub_2531489B4();

  v8 = *(v2 + 8);
  v0[15] = v8;
  v0[16] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v4);
  v9 = v6[5];
  v10 = v6[6];
  __swift_project_boxed_opaque_existential_1(v6 + 2, v9);
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v11 = *(v10 + 16);
  v19 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  v0[17] = v13;
  *v13 = v0;
  v13[1] = sub_2531135E4;
  v14 = v0[10];
  v15 = v0[4];
  v16 = v0[5];
  v17 = v0[3];

  return v19(v17, v14, v15, v16, v9, v10);
}

uint64_t sub_2531135E4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 136);
  v6 = *v2;
  v4[18] = v1;

  v7 = v4[10];
  v8 = v4[9];
  v9 = v4[8];
  if (v1)
  {
    (*(v8 + 8))(v7, v9);
    v10 = sub_25311A1F8;
  }

  else
  {
    v4[19] = a1;
    (*(v8 + 8))(v7, v9);
    v10 = sub_25311376C;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_25311376C()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v6 = v0[10];
  v5 = v0[11];
  sub_2531490F4();
  v7 = sub_2531491E4();
  sub_2531489D4();
  sub_2531489B4();

  v2(v3, v5);

  v8 = v0[1];
  v9 = v0[19];

  return v8(v9);
}

uint64_t sub_253113850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_2531489E4();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_253113918, 0, 0);
}

uint64_t sub_253113918()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  sub_253149104();
  v0[10] = sub_253118FFC();
  v5 = sub_2531491E4();
  sub_2531489D4();
  sub_2531489B4();

  v6 = *(v2 + 8);
  v0[11] = v6;
  v0[12] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v3);
  v7 = v4[5];
  v8 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v7);
  v9 = *(v8 + 40);
  v17 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  v0[13] = v11;
  *v11 = v0;
  v11[1] = sub_253113AD8;
  v12 = v0[4];
  v13 = v0[5];
  v14 = v0[2];
  v15 = v0[3];

  return v17(v14, v15, v12, v13, v7, v8);
}

uint64_t sub_253113AD8()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v2 + 72);

    v6 = *(v4 + 8);

    return v6();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_253113C24, 0, 0);
  }
}

uint64_t sub_253113C24()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[7];
  sub_2531490F4();
  v6 = sub_2531491E4();
  sub_2531489D4();
  sub_2531489B4();

  v2(v3, v5);

  v7 = v0[1];

  return v7();
}

uint64_t sub_253113CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v5[2] = swift_getAssociatedTypeWitness();
  v5[8] = sub_253148974();
  v6 = sub_2531491F4();
  v5[9] = v6;
  v7 = *(v6 - 8);
  v5[10] = v7;
  v8 = *(v7 + 64) + 15;
  v5[11] = swift_task_alloc();
  v9 = sub_2531489E4();
  v5[12] = v9;
  v10 = *(v9 - 8);
  v5[13] = v10;
  v11 = *(v10 + 64) + 15;
  v5[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_253113E54, 0, 0);
}

uint64_t sub_253113E54()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[11];
  v4 = v0[12];
  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[4];
  sub_253149104();
  v0[15] = sub_253118FFC();
  v8 = sub_2531491E4();
  sub_2531489D4();
  sub_2531489B4();

  v9 = *(v2 + 8);
  v0[16] = v9;
  v0[17] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v1, v4);
  v10 = v6[5];
  v11 = v6[6];
  __swift_project_boxed_opaque_existential_1(v6 + 2, v10);
  v12 = *(v5 - 8);
  (*(v12 + 16))(v3, v7, v5);
  (*(v12 + 56))(v3, 0, 1, v5);
  v13 = *(v11 + 24);
  v21 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  v0[18] = v15;
  *v15 = v0;
  v15[1] = sub_253114090;
  v16 = v0[11];
  v17 = v0[5];
  v18 = v0[6];
  v19 = v0[3];

  return v21(v19, v16, v17, v18, v10, v11);
}

uint64_t sub_253114090(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 144);
  v6 = *v2;
  v4[19] = v1;

  v7 = v4[11];
  v8 = v4[10];
  v9 = v4[9];
  if (v1)
  {
    (*(v8 + 8))(v7, v9);
    v10 = sub_2531142FC;
  }

  else
  {
    v4[20] = a1;
    (*(v8 + 8))(v7, v9);
    v10 = sub_253114218;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_253114218()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[14];
  v4 = v0[15];
  v6 = v0[11];
  v5 = v0[12];
  sub_2531490F4();
  v7 = sub_2531491E4();
  sub_2531489D4();
  sub_2531489B4();

  v2(v3, v5);

  v8 = v0[1];
  v9 = v0[20];

  return v8(v9);
}

uint64_t sub_2531142FC()
{
  v1 = v0[14];
  v2 = v0[11];

  v3 = v0[1];
  v4 = v0[19];

  return v3();
}

uint64_t sub_25311436C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v4[2] = swift_getAssociatedTypeWitness();
  v4[7] = sub_253148974();
  v5 = sub_2531491F4();
  v4[8] = v5;
  v6 = *(v5 - 8);
  v4[9] = v6;
  v7 = *(v6 + 64) + 15;
  v4[10] = swift_task_alloc();
  v8 = sub_2531489E4();
  v4[11] = v8;
  v9 = *(v8 - 8);
  v4[12] = v9;
  v10 = *(v9 + 64) + 15;
  v4[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2531144CC, 0, 0);
}

uint64_t sub_2531144CC()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v6 = v0[6];
  v5 = v0[7];
  sub_253149104();
  v0[14] = sub_253118FFC();
  v7 = sub_2531491E4();
  sub_2531489D4();
  sub_2531489B4();

  v8 = *(v2 + 8);
  v0[15] = v8;
  v0[16] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v4);
  v9 = v6[5];
  v10 = v6[6];
  __swift_project_boxed_opaque_existential_1(v6 + 2, v9);
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v11 = *(v10 + 24);
  v19 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  v0[17] = v13;
  *v13 = v0;
  v13[1] = sub_2531146D4;
  v14 = v0[10];
  v15 = v0[4];
  v16 = v0[5];
  v17 = v0[3];

  return v19(v17, v14, v15, v16, v9, v10);
}

uint64_t sub_2531146D4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 136);
  v6 = *v2;
  v4[18] = v1;

  v7 = v4[10];
  v8 = v4[9];
  v9 = v4[8];
  if (v1)
  {
    (*(v8 + 8))(v7, v9);
    v10 = sub_253114940;
  }

  else
  {
    v4[19] = a1;
    (*(v8 + 8))(v7, v9);
    v10 = sub_25311485C;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_25311485C()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v6 = v0[10];
  v5 = v0[11];
  sub_2531490F4();
  v7 = sub_2531491E4();
  sub_2531489D4();
  sub_2531489B4();

  v2(v3, v5);

  v8 = v0[1];
  v9 = v0[19];

  return v8(v9);
}

uint64_t sub_253114940()
{
  v1 = v0[13];
  v2 = v0[10];

  v3 = v0[1];
  v4 = v0[18];

  return v3();
}

uint64_t sub_2531149B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580568, &qword_25314BDB0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v24[0] = v24 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807D8, &unk_25314D920);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580770, &qword_25314C4D8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v15 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = v24 - v16;
  type metadata accessor for AnyModelStateChange(0);
  (*(v7 + 104))(v10, *MEMORY[0x277D858A0], v6);
  sub_253148ED4();
  (*(v7 + 8))(v10, v6);
  v18 = sub_253148DE4();
  v19 = v24[0];
  (*(*(v18 - 8) + 56))(v24[0], 1, 1, v18);
  sub_2530C25FC(v24[1] + 16, v26);
  (*(v12 + 16))(v15, v17, v11);
  v20 = (*(v12 + 80) + 80) & ~*(v12 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  *(v21 + 4) = v25;
  sub_2530BDB14(v26, (v21 + 40));
  (*(v12 + 32))(&v21[v20], v15, v11);

  v22 = sub_253112858(0, 0, v19, &unk_25314D930, v21);
  (*(v12 + 8))(v17, v11);
  result = type metadata accessor for HomesStore.AnyChanges(0);
  *(a2 + *(result + 20)) = v22;
  return result;
}

uint64_t sub_253114D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581D00, &qword_253150318);
  v6[13] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807B0, &qword_25314D460) - 8) + 64) + 15;
  v6[17] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807C0, &qword_25314C598);
  v6[18] = v10;
  v11 = *(v10 - 8);
  v6[19] = v11;
  v12 = *(v11 + 64) + 15;
  v6[20] = swift_task_alloc();
  v13 = type metadata accessor for AnyModelStateChange(0);
  v6[21] = v13;
  v14 = *(v13 - 8);
  v6[22] = v14;
  v15 = *(v14 + 64) + 15;
  v6[23] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581D08, &qword_253150320);
  v6[24] = v16;
  v17 = *(v16 - 8);
  v6[25] = v17;
  v18 = *(v17 + 64) + 15;
  v6[26] = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807C8, &qword_25314D940);
  v6[27] = v19;
  v20 = *(v19 - 8);
  v6[28] = v20;
  v21 = *(v20 + 64) + 15;
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_253114F94, 0, 0);
}