uint64_t MultiSampleEnumerator.init(profile:sampleTypes:dateRange:additionalPredicateBySampleType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  v8 = type metadata accessor for MultiSampleEnumerator();
  result = sub_251646254(a3, a5 + *(v8 + 24));
  *(a5 + *(v8 + 28)) = a4;
  return result;
}

uint64_t type metadata accessor for MultiSampleEnumerator()
{
  result = qword_27F451998;
  if (!qword_27F451998)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_251646254(uint64_t a1, uint64_t a2)
{
  sub_2516462B8();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2516462B8()
{
  if (!qword_27F451960)
  {
    sub_25164DDA8();
    sub_25164631C();
    v0 = sub_25164DEC8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F451960);
    }
  }
}

unint64_t sub_25164631C()
{
  result = qword_27F451968;
  if (!qword_27F451968)
  {
    sub_25164DDA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F451968);
  }

  return result;
}

uint64_t MultiSampleEnumerator.enumerate(_:onCompletion:)(void (*a1)(void *), uint64_t a2, void (*a3)(void *), uint64_t a4)
{
  v35 = a4;
  v36 = a3;
  v46 = *MEMORY[0x277D85DE8];
  v6 = sub_25164DE88();
  v37 = *(v6 - 8);
  v38 = v6;
  v7 = *(v37 + 64);
  MEMORY[0x28223BE20](v6);
  v34 = (&v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = v4[1];
  v42 = v4;
  sub_251646F14(sub_251646E30, v41, v9);
  v10 = *MEMORY[0x277CCCD50];
  sub_25164DEF8();
  v11 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v12 = sub_25164DEE8();

  v13 = [v11 initWithKey:v12 ascending:1];

  sub_251647704(0, &qword_27F451970, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_25164E5C0;
  *(v14 + 32) = v13;
  v15 = *v4;
  v16 = objc_allocWithZone(MEMORY[0x277D10780]);
  sub_25164762C(0, &qword_27F451978, 0x277D10820);
  v33 = v13;
  v17 = sub_25164DF08();

  sub_25164762C(0, &qword_27F451980, 0x277CCAC98);
  v18 = sub_25164DF08();

  v19 = [v16 initWithQueryDescriptors:v17 includeDeletedObjects:0 anchor:0 sortDescriptors:v18 bufferSize:100 profile:v15];

  *&v45[0] = 0;
  v20 = [v19 advanceWithError_];
  v21 = *&v45[0];
  if (v20)
  {
    do
    {
      v23 = v21;
      if ([v19 object])
      {
        sub_25164DFA8();
        swift_unknownObjectRelease();
      }

      else
      {
        v43 = 0u;
        v44 = 0u;
      }

      v45[0] = v43;
      v45[1] = v44;
      if (*(&v44 + 1))
      {
        sub_25164762C(0, &qword_27F451990, 0x277CCD8A8);
        if (swift_dynamicCast())
        {
          v24 = v39;
          a1(v39);
        }
      }

      else
      {
        sub_2516471EC(v45);
      }

      *&v45[0] = 0;
      v22 = [v19 advanceWithError_];
      v21 = *&v45[0];
    }

    while ((v22 & 1) != 0);
  }

  v25 = v21;
  v26 = sub_25164DD48();

  swift_willThrow();
  swift_getErrorValue();
  if (sub_251647088(v40))
  {
    v28 = v37;
    v27 = v38;
    v29 = v34;
    (*(v37 + 104))(v34, *MEMORY[0x277D10C80], v38);
  }

  else
  {
    v29 = v34;
    *v34 = v26;
    v28 = v37;
    v27 = v38;
    (*(v37 + 104))(v29, *MEMORY[0x277D10C78], v38);
    v30 = v26;
  }

  v36(v29);

  result = (*(v28 + 8))(v29, v27);
  v32 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_251646808(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v42 = a2;
  v47 = a3;
  v45 = sub_25164DDA8();
  v5 = *(v45 - 8);
  v6 = *(v5 + 64);
  v7 = (MEMORY[0x28223BE20])();
  v44 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v41 - v9;
  v46 = sub_25164DD18();
  v11 = *(v46 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v46);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = *a1;
  v15 = HDSampleEntityPredicateForDataType();
  v16 = sub_25164762C(0, &qword_27F4519C8, 0x277D10B70);
  v53[3] = v16;
  v53[0] = v15;
  v41 = type metadata accessor for MultiSampleEnumerator();
  v17 = a2 + *(v41 + 24);
  v18 = *(v5 + 16);
  v19 = v45;
  v18(v10, v17, v45);
  sub_2516462B8();
  v18(v44, v17 + *(v20 + 36), v19);
  sub_25164DD08();
  v21 = sub_25164DCF8();
  (*(v11 + 8))(v14, v46);
  v22 = v43;
  v23 = HDSampleEntityPredicateForDateInterval();

  v54[3] = v16;
  v54[0] = v23;
  v24 = sub_251646E50(v22, *(v42 + *(v41 + 28)));
  if (!v24)
  {
    v16 = 0;
    v55[1] = 0;
    v55[2] = 0;
  }

  v55[0] = v24;
  v55[3] = v16;
  sub_251647D04(v53, &v51);
  v48 = v51;
  v49 = v52;
  if (*(&v52 + 1))
  {
    sub_251648074(&v48, v50);
    v25 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = sub_251648E78(0, *(v25 + 2) + 1, 1, v25);
    }

    v27 = *(v25 + 2);
    v26 = *(v25 + 3);
    if (v27 >= v26 >> 1)
    {
      v25 = sub_251648E78((v26 > 1), v27 + 1, 1, v25);
    }

    *(v25 + 2) = v27 + 1;
    sub_251648074(v50, &v25[32 * v27 + 32]);
  }

  else
  {
    sub_2516471EC(&v48);
    v25 = MEMORY[0x277D84F90];
  }

  sub_251647D04(v54, &v51);
  v48 = v51;
  v49 = v52;
  if (*(&v52 + 1))
  {
    sub_251648074(&v48, v50);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = sub_251648E78(0, *(v25 + 2) + 1, 1, v25);
    }

    v29 = *(v25 + 2);
    v28 = *(v25 + 3);
    if (v29 >= v28 >> 1)
    {
      v25 = sub_251648E78((v28 > 1), v29 + 1, 1, v25);
    }

    *(v25 + 2) = v29 + 1;
    sub_251648074(v50, &v25[32 * v29 + 32]);
  }

  else
  {
    sub_2516471EC(&v48);
  }

  sub_251647D04(v55, &v51);
  v48 = v51;
  v49 = v52;
  if (*(&v52 + 1))
  {
    sub_251648074(&v48, v50);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = sub_251648E78(0, *(v25 + 2) + 1, 1, v25);
    }

    v31 = *(v25 + 2);
    v30 = *(v25 + 3);
    if (v31 >= v30 >> 1)
    {
      v25 = sub_251648E78((v30 > 1), v31 + 1, 1, v25);
    }

    *(v25 + 2) = v31 + 1;
    sub_251648074(v50, &v25[32 * v31 + 32]);
  }

  else
  {
    sub_2516471EC(&v48);
  }

  sub_251647704(0, &qword_27F451988, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88]);
  swift_arrayDestroy();
  v32 = sub_25164DF08();

  v33 = [objc_opt_self() predicateMatchingAllPredicates_];

  sub_251647704(0, &qword_27F451970, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25164E5C0;
  *(inited + 32) = v22;
  v35 = v22;
  sub_251647D90(inited);
  swift_setDeallocating();
  v36 = *(inited + 16);
  swift_arrayDestroy();
  v37 = objc_allocWithZone(MEMORY[0x277D10820]);
  sub_25164762C(0, &qword_27F4519B8, 0x277CCD8D8);
  sub_251647674();
  v38 = v33;
  v39 = sub_25164DF38();

  v40 = [v37 initWithSampleTypes:v39 encodingOptions:0 restrictedSourceEntities:0 authorizationFilter:0 samplePredicate:v38];

  *v47 = v40;
}

void *sub_251646E50(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_25164E048();

    if (v4)
    {
      sub_25164762C(0, &qword_27F4519C8, 0x277D10B70);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_251647754(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

uint64_t sub_251646F14(void (*a1)(void **__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v5 = v3;
  if (a3 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_25164E058())
  {
    result = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v16 = MEMORY[0x277D84F90];
    sub_25164E018();
    if (i < 0)
    {
      __break(1u);
LABEL_19:

      __break(1u);
      return result;
    }

    for (j = 0; ; ++j)
    {
      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x25307CAB0](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v11 = *(a3 + 8 * j + 32);
      }

      v4 = v11;
      v14 = v11;
      a1(&v15, &v14);
      if (v5)
      {
        goto LABEL_19;
      }

      v5 = 0;

      v4 = v15;
      sub_25164DFF8();
      v12 = *(v16 + 16);
      sub_25164E028();
      sub_25164E038();
      sub_25164E008();
      if (v10 == i)
      {
        return v16;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return result;
}

id sub_251647088(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v6, a1);
  v7 = sub_25164E078();
  if (v7)
  {
    v8 = v7;
    (*(v2 + 8))(v5, a1);
  }

  else
  {
    v8 = swift_allocError();
    (*(v2 + 32))(v9, v5, a1);
  }

  v10 = sub_25164DD38();

  v11 = [v10 hk:900 isHealthKitErrorWithCode:?];
  return v11;
}

uint64_t sub_2516471EC(uint64_t a1)
{
  sub_251647704(0, &qword_27F451988, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25164727C(void (*a1)(_OWORD *), uint64_t a2, void (*a3)(void *), uint64_t a4)
{

  sub_25164786C(a3, a4, v4, a1);
}

uint64_t sub_251647300(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_2516462B8();
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void *sub_2516473C0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_2516462B8();
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

void sub_251647464()
{
  sub_25164762C(319, &qword_27F4519A8, 0x277D107F8);
  if (v0 <= 0x3F)
  {
    sub_251647528();
    if (v1 <= 0x3F)
    {
      sub_2516462B8();
      if (v2 <= 0x3F)
      {
        sub_251647590();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_251647528()
{
  if (!qword_27F4519B0)
  {
    sub_25164762C(255, &qword_27F4519B8, 0x277CCD8D8);
    v0 = sub_25164DF28();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4519B0);
    }
  }
}

void sub_251647590()
{
  if (!qword_27F4519C0)
  {
    sub_25164762C(255, &qword_27F4519B8, 0x277CCD8D8);
    sub_25164762C(255, &qword_27F4519C8, 0x277D10B70);
    sub_251647674();
    v0 = sub_25164DE98();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4519C0);
    }
  }
}

uint64_t sub_25164762C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t sub_251647674()
{
  result = qword_27F4519D0;
  if (!qword_27F4519D0)
  {
    sub_25164762C(255, &qword_27F4519B8, 0x277CCD8D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4519D0);
  }

  return result;
}

void sub_251647704(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_251647754(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_25164DF78();

  return sub_251647798(a1, v5);
}

unint64_t sub_251647798(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_25164762C(0, &qword_27F4519B8, 0x277CCD8D8);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_25164DF88();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_25164786C(void (*a1)(void *), uint64_t a2, void *a3, void (*a4)(_OWORD *))
{
  v35 = a2;
  v36 = a1;
  v46 = *MEMORY[0x277D85DE8];
  v6 = sub_25164DE88();
  v37 = *(v6 - 8);
  v38 = v6;
  v7 = *(v37 + 64);
  MEMORY[0x28223BE20](v6);
  v34 = (&v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = a3[1];
  v42 = a3;
  sub_251646F14(sub_2516480F8, v41, v9);
  v10 = *MEMORY[0x277CCCD50];
  sub_25164DEF8();
  v11 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v12 = sub_25164DEE8();

  v13 = [v11 initWithKey:v12 ascending:1];

  sub_251647704(0, &qword_27F451970, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_25164E5C0;
  *(v14 + 32) = v13;
  v15 = *a3;
  v16 = objc_allocWithZone(MEMORY[0x277D10780]);
  sub_25164762C(0, &qword_27F451978, 0x277D10820);
  v33 = v13;
  v17 = sub_25164DF08();

  sub_25164762C(0, &qword_27F451980, 0x277CCAC98);
  v18 = sub_25164DF08();

  v19 = [v16 initWithQueryDescriptors:v17 includeDeletedObjects:0 anchor:0 sortDescriptors:v18 bufferSize:100 profile:v15];

  *&v45[0] = 0;
  v20 = [v19 advanceWithError_];
  v21 = *&v45[0];
  if (v20)
  {
    do
    {
      v23 = v21;
      if ([v19 object])
      {
        sub_25164DFA8();
        swift_unknownObjectRelease();
      }

      else
      {
        v43 = 0u;
        v44 = 0u;
      }

      v45[0] = v43;
      v45[1] = v44;
      if (*(&v44 + 1))
      {
        sub_25164762C(0, &qword_27F451990, 0x277CCD8A8);
        if (swift_dynamicCast())
        {
          v24 = v39;
          *&v45[0] = v39;
          a4(v45);
        }
      }

      else
      {
        sub_2516471EC(v45);
      }

      *&v45[0] = 0;
      v22 = [v19 advanceWithError_];
      v21 = *&v45[0];
    }

    while ((v22 & 1) != 0);
  }

  v25 = v21;
  v26 = sub_25164DD48();

  swift_willThrow();
  swift_getErrorValue();
  if (sub_251647088(v40))
  {
    v28 = v37;
    v27 = v38;
    v29 = v34;
    (*(v37 + 104))(v34, *MEMORY[0x277D10C80], v38);
  }

  else
  {
    v29 = v34;
    *v34 = v26;
    v28 = v37;
    v27 = v38;
    (*(v37 + 104))(v29, *MEMORY[0x277D10C78], v38);
    v30 = v26;
  }

  v36(v29);

  result = (*(v28 + 8))(v29, v27);
  v32 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_251647D04(uint64_t a1, uint64_t a2)
{
  sub_251647704(0, &qword_27F451988, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_251647D90(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_25164E058())
    {
LABEL_3:
      sub_251648084();
      v3 = sub_25164DFB8();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_25164E058();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v40 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v38 = v1;
    while (1)
    {
      v8 = MEMORY[0x25307CAB0](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = *(v3 + 40);
      v12 = sub_25164DF78();
      v13 = -1 << *(v3 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      v16 = *(v6 + 8 * (v14 >> 6));
      v17 = 1 << v14;
      if (((1 << v14) & v16) != 0)
      {
        v18 = ~v13;
        sub_25164762C(0, &qword_27F4519B8, 0x277CCD8D8);
        while (1)
        {
          v19 = *(*(v3 + 48) + 8 * v14);
          v20 = sub_25164DF88();

          if (v20)
          {
            break;
          }

          v14 = (v14 + 1) & v18;
          v15 = v14 >> 6;
          v16 = *(v6 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            v1 = v38;
            v5 = v40;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v38;
        v5 = v40;
        if (v7 == v40)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v15) = v17 | v16;
        *(*(v3 + 48) + 8 * v14) = v10;
        v21 = *(v3 + 16);
        v9 = __OFADD__(v21, 1);
        v22 = v21 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v22;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v23 = 0;
    v37 = v1 + 32;
    v39 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v23 != v39)
    {
      v24 = *(v3 + 40);
      v25 = *(v37 + 8 * v23);
      v26 = sub_25164DF78();
      v27 = -1 << *(v3 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      v30 = *(v6 + 8 * (v28 >> 6));
      v31 = 1 << v28;
      if (((1 << v28) & v30) != 0)
      {
        v32 = ~v27;
        sub_25164762C(0, &qword_27F4519B8, 0x277CCD8D8);
        do
        {
          v33 = *(*(v3 + 48) + 8 * v28);
          v34 = sub_25164DF88();

          if (v34)
          {

            v5 = v40;
            goto LABEL_23;
          }

          v28 = (v28 + 1) & v32;
          v29 = v28 >> 6;
          v30 = *(v6 + 8 * (v28 >> 6));
          v31 = 1 << v28;
        }

        while (((1 << v28) & v30) != 0);
        v5 = v40;
      }

      *(v6 + 8 * v29) = v31 | v30;
      *(*(v3 + 48) + 8 * v28) = v25;
      v35 = *(v3 + 16);
      v9 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v36;
LABEL_23:
      if (++v23 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

_OWORD *sub_251648074(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_251648084()
{
  if (!qword_27F4519E0)
  {
    sub_25164762C(255, &qword_27F4519B8, 0x277CCD8D8);
    sub_251647674();
    v0 = sub_25164DFC8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4519E0);
    }
  }
}

uint64_t SampleEnumerator.enumerate(_:onCompletion:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v69 = a5;
  v62[1] = a4;
  v63 = a3;
  v71 = a1;
  v72 = a2;
  v82[12] = *MEMORY[0x277D85DE8];
  v7 = sub_25164DE88();
  v64 = *(v7 - 8);
  v65 = v7;
  v8 = *(v64 + 64);
  MEMORY[0x28223BE20](v7);
  v62[0] = v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25164DDA8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v68 = v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = v62 - v15;
  v70 = sub_25164DD18();
  v67 = *(v70 - 8);
  v17 = *(v67 + 64);
  MEMORY[0x28223BE20](v70);
  v19 = v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = objc_opt_self();
  v21 = *v5;
  v22 = v5[1];
  v66 = v5;
  v73 = [v20 entityEnumeratorWithType:v22 profile:v21];
  v23 = HDSampleEntityPredicateForDataType();
  v24 = sub_25164762C(0, &qword_27F4519C8, 0x277D10B70);
  v82[3] = v24;
  v82[0] = v23;
  v25 = v69;
  v26 = v6 + *(v69 + 32);
  v27 = *(v11 + 16);
  v27(v16, v26, v10);
  sub_2516462B8();
  v27(v68, &v26[*(v28 + 36)], v10);
  v29 = v25;
  sub_25164DD08();
  v30 = sub_25164DCF8();
  (*(v67 + 8))(v19, v70);
  v31 = HDSampleEntityPredicateForDateInterval();

  v82[7] = v24;
  v82[4] = v31;
  v32 = *(v66 + *(v29 + 36));
  if (!v32)
  {
    v24 = 0;
    v82[9] = 0;
    v82[10] = 0;
  }

  v82[8] = v32;
  v82[11] = v24;
  v33 = v32;
  v34 = &v81;
  sub_251647D04(v82, &v74);
  v78 = v74;
  v79 = v75;
  v35 = v73;
  if (!*(&v75 + 1))
  {
    sub_2516471EC(&v78);
    v36 = MEMORY[0x277D84F90];
    goto LABEL_9;
  }

  sub_251648074(&v78, v80);
  v36 = MEMORY[0x277D84F90];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v38 = *(v36 + 16);
    v37 = *(v36 + 24);
    if (v38 >= v37 >> 1)
    {
      v36 = sub_251648E78((v37 > 1), v38 + 1, 1, v36);
    }

    *(v36 + 16) = v38 + 1;
    sub_251648074(v80, (v36 + 32 * v38 + 32));
LABEL_9:
    sub_251647D04((v34 + 8), &v74);
    v78 = v74;
    v79 = v75;
    if (*(&v75 + 1))
    {
      sub_251648074(&v78, v80);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = sub_251648E78(0, *(v36 + 16) + 1, 1, v36);
      }

      v40 = *(v36 + 16);
      v39 = *(v36 + 24);
      if (v40 >= v39 >> 1)
      {
        v36 = sub_251648E78((v39 > 1), v40 + 1, 1, v36);
      }

      *(v36 + 16) = v40 + 1;
      sub_251648074(v80, (v36 + 32 * v40 + 32));
    }

    else
    {
      sub_2516471EC(&v78);
    }

    sub_251647D04((v34 + 12), &v74);
    v78 = v74;
    v79 = v75;
    if (*(&v75 + 1))
    {
      sub_251648074(&v78, v80);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = sub_251648E78(0, *(v36 + 16) + 1, 1, v36);
      }

      v42 = *(v36 + 16);
      v41 = *(v36 + 24);
      if (v42 >= v41 >> 1)
      {
        v36 = sub_251648E78((v41 > 1), v42 + 1, 1, v36);
      }

      *(v36 + 16) = v42 + 1;
      sub_251648074(v80, (v36 + 32 * v42 + 32));
    }

    else
    {
      sub_2516471EC(&v78);
    }

    sub_251649340(0, &qword_27F451988, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88]);
    swift_arrayDestroy();
    v43 = sub_25164DF08();

    v44 = [objc_opt_self() predicateMatchingAllPredicates_];

    [v35 setPredicate_];
    sub_251649340(0, &qword_27F451970, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_25164E5C0;
    v46 = *MEMORY[0x277D104B0];
    sub_25164762C(0, &qword_27F4519E8, 0x277D10848);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    *(v45 + 32) = [objc_opt_self() orderingTermWithProperty:v46 entityClass:ObjCClassFromMetadata ascending:1];
    sub_25164762C(0, &qword_27F4519F0, 0x277D10B68);
    v48 = sub_25164DF08();

    [v35 setOrderingTerms_];

    v34 = swift_allocObject();
    v49 = v71;
    v50 = v72;
    v34[2] = *(v29 + 16);
    v34[3] = v49;
    v34[4] = v50;
    v36 = swift_allocObject();
    *(v36 + 16) = sub_251648AE4;
    *(v36 + 24) = v34;
    v76 = sub_251648B00;
    v77 = v36;
    *&v74 = MEMORY[0x277D85DD0];
    *(&v74 + 1) = 1107296256;
    *&v75 = sub_251648B2C;
    *(&v75 + 1) = &block_descriptor;
    v51 = _Block_copy(&v74);

    *&v74 = 0;
    v52 = [v35 enumerateWithError:&v74 handler:v51];
    _Block_release(v51);
    v53 = v74;
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_29:
    v36 = sub_251648E78(0, *(v36 + 16) + 1, 1, v36);
  }

  if (v52)
  {
    v56 = v64;
    v55 = v65;
    v57 = v62[0];
    (*(v64 + 104))(v62[0], *MEMORY[0x277D10C80], v65);
    v63(v57);
  }

  else
  {
    v58 = sub_25164DD48();

    swift_willThrow();
    v57 = v62[0];
    *v62[0] = v58;
    v56 = v64;
    v55 = v65;
    (*(v64 + 104))(v57, *MEMORY[0x277D10C78], v65);
    v59 = v58;
    v63(v57);
  }

  (*(v56 + 8))(v57, v55);

  v61 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL sub_251648A04(void *a1, uint64_t a2, void *a3, void (*a4)(uint64_t))
{
  v7 = swift_dynamicCastUnknownClass();
  if (v7)
  {
    v8 = a1;
    a4(v7);
  }

  else if (a3)
  {
    *a3 = [objc_opt_self() hk:3 error:0 userInfo:?];
  }

  return v7 != 0;
}

uint64_t sub_251648AAC()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

BOOL sub_251648AE4(void *a1, uint64_t a2, void *a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 32);
  return sub_251648A04(a1, a2, a3, *(v3 + 24));
}

uint64_t sub_251648B00()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1() & 1;
}

uint64_t sub_251648B2C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  v5 = v3();

  return v5 & 1;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_251648BA0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = *(a5 + 16);
  v10[3] = a1;
  v10[4] = a2;

  SampleEnumerator.enumerate(_:onCompletion:)(sub_251649308, v10, a3, a4, a5);
}

id sub_251648C98@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, SEL *a4@<X3>, unint64_t *a5@<X4>, unint64_t *a6@<X5>, uint64_t *a7@<X6>, void *a8@<X8>)
{
  sub_25164762C(0, &qword_27F4519B8, 0x277CCD8D8);
  result = [swift_getObjCClassFromMetadata() *a4];
  if (result)
  {
    v16 = result;
    sub_251649020(0, a5, a6, a7, type metadata accessor for SampleEnumerator);
    v18 = v17;
    sub_251648FBC(a2, a8 + *(v17 + 32));
    *a8 = a1;
    a8[1] = v16;
    *(a8 + *(v18 + 36)) = a3;
    v19 = a3;

    return a1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id static SampleEnumerator<>.audiogram(profile:dateRange:additionalPredicate:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  sub_25164762C(0, &qword_27F4519B8, 0x277CCD8D8);
  v7 = [swift_getObjCClassFromMetadata() audiogramSampleType];
  sub_251649020(0, &qword_27F451A18, qword_27F451A20, 0x277CCD030, type metadata accessor for SampleEnumerator);
  v9 = v8;
  sub_251648FBC(a2, a4 + *(v8 + 32));
  *a4 = a1;
  a4[1] = v7;
  *(a4 + *(v9 + 36)) = a3;
  v10 = a3;

  return a1;
}

char *sub_251648E78(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_251649340(0, &qword_27F451AB0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_251648FBC(uint64_t a1, uint64_t a2)
{
  sub_2516462B8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_251649020(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_25164762C(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_251649090()
{
  sub_25164762C(319, &qword_27F4519A8, 0x277D107F8);
  if (v0 <= 0x3F)
  {
    sub_25164762C(319, &qword_27F4519B8, 0x277CCD8D8);
    if (v1 <= 0x3F)
    {
      sub_2516462B8();
      if (v2 <= 0x3F)
      {
        sub_251649020(319, &qword_27F451AA8, &qword_27F4519C8, 0x277D10B70, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_2516491A4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_2516462B8();
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

void *sub_251649264(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_2516462B8();
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 32);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_251649308(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v5 = a1;
  return v2(&v5);
}

void sub_251649340(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t RawQuantitySampleEnumerator.init(profile:quantityType:dateRange:additionalPredicate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  v8 = type metadata accessor for RawQuantitySampleEnumerator();
  result = sub_25164A550(a3, a5 + *(v8 + 24), sub_2516462B8);
  *(a5 + *(v8 + 28)) = a4;
  return result;
}

uint64_t type metadata accessor for RawQuantitySampleEnumerator()
{
  result = qword_27F451AB8;
  if (!qword_27F451AB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RawQuantitySampleEnumerator.enumerate(_:onCompletion:)(uint64_t a1, uint64_t a2, void (*a3)(void *), uint64_t a4)
{
  v59 = a4;
  v60 = a3;
  v68 = a1;
  v69 = a2;
  v78[12] = *MEMORY[0x277D85DE8];
  v5 = sub_25164DE88();
  v61 = *(v5 - 8);
  v62 = v5;
  v6 = *(v61 + 64);
  MEMORY[0x28223BE20](v5);
  v58 = (&v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v66 = sub_25164DDA8();
  v8 = *(v66 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v66);
  v65 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v57 - v12;
  v67 = sub_25164DD18();
  v14 = *(v67 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v67);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v4[1];
  v63 = v4;
  v64 = v18;
  v19 = HDSampleEntityPredicateForDataType();
  v20 = sub_25164762C(0, &qword_27F4519C8, 0x277D10B70);
  v78[3] = v20;
  v78[0] = v19;
  v21 = type metadata accessor for RawQuantitySampleEnumerator();
  v22 = v4 + *(v21 + 24);
  v23 = *(v8 + 16);
  v24 = v66;
  v23(v13, v22, v66);
  sub_2516462B8();
  v23(v65, v22 + *(v25 + 36), v24);
  sub_25164DD08();
  v26 = sub_25164DCF8();
  (*(v14 + 8))(v17, v67);
  v27 = HDSampleEntityPredicateForDateInterval();

  v78[7] = v20;
  v78[4] = v27;
  v28 = *(v21 + 28);
  v29 = v63;
  v30 = *(v63 + v28);
  if (!v30)
  {
    v20 = 0;
    v78[9] = 0;
    v78[10] = 0;
  }

  v78[8] = v30;
  v78[11] = v20;
  v31 = v30;
  v32 = &v77;
  sub_25164A4E8(v78, &v70, sub_251649C74);
  v74 = v70;
  v75 = v71;
  if (!*(&v71 + 1))
  {
    sub_2516471EC(&v74);
    v33 = MEMORY[0x277D84F90];
    goto LABEL_9;
  }

  sub_251648074(&v74, v76);
  v33 = MEMORY[0x277D84F90];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v35 = *(v33 + 16);
    v34 = *(v33 + 24);
    if (v35 >= v34 >> 1)
    {
      v33 = sub_251648E78((v34 > 1), v35 + 1, 1, v33);
    }

    *(v33 + 16) = v35 + 1;
    sub_251648074(v76, (v33 + 32 * v35 + 32));
LABEL_9:
    sub_25164A4E8((v32 + 8), &v70, sub_251649C74);
    v74 = v70;
    v75 = v71;
    if (*(&v71 + 1))
    {
      sub_251648074(&v74, v76);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_251648E78(0, *(v33 + 16) + 1, 1, v33);
      }

      v37 = *(v33 + 16);
      v36 = *(v33 + 24);
      if (v37 >= v36 >> 1)
      {
        v33 = sub_251648E78((v36 > 1), v37 + 1, 1, v33);
      }

      *(v33 + 16) = v37 + 1;
      sub_251648074(v76, (v33 + 32 * v37 + 32));
    }

    else
    {
      sub_2516471EC(&v74);
    }

    sub_25164A4E8((v32 + 12), &v70, sub_251649C74);
    v74 = v70;
    v75 = v71;
    if (*(&v71 + 1))
    {
      sub_251648074(&v74, v76);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_251648E78(0, *(v33 + 16) + 1, 1, v33);
      }

      v39 = *(v33 + 16);
      v38 = *(v33 + 24);
      if (v39 >= v38 >> 1)
      {
        v33 = sub_251648E78((v38 > 1), v39 + 1, 1, v33);
      }

      *(v33 + 16) = v39 + 1;
      sub_251648074(v76, (v33 + 32 * v39 + 32));
    }

    else
    {
      sub_2516471EC(&v74);
    }

    sub_251649C74();
    swift_arrayDestroy();
    v40 = sub_25164DF08();

    v41 = [objc_opt_self() predicateMatchingAllPredicates_];

    v42 = objc_opt_self();
    v43 = *v29;
    v44 = swift_allocObject();
    v45 = v69;
    *(v44 + 16) = v68;
    *(v44 + 24) = v45;
    v33 = swift_allocObject();
    *(v33 + 16) = sub_25164A0F4;
    *(v33 + 24) = v44;
    v72 = sub_25164A130;
    v73 = v33;
    *&v70 = MEMORY[0x277D85DD0];
    *(&v70 + 1) = 1107296256;
    *&v71 = sub_25164A15C;
    *(&v71 + 1) = &block_descriptor_0;
    v46 = _Block_copy(&v70);
    v29 = v73;
    v47 = v41;

    *&v70 = 0;
    v48 = [v42 orderedQuantityValuesForPredicate:v47 profile:v43 options:0 error:&v70 handler:v46];
    _Block_release(v46);

    v32 = v70;
    v49 = v70;
    LOBYTE(v42) = swift_isEscapingClosureAtFileLocation();

    if ((v42 & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_29:
    v33 = sub_251648E78(0, *(v33 + 16) + 1, 1, v33);
  }

  if (v48)
  {
    v51 = v61;
    v50 = v62;
    v52 = v58;
    (*(v61 + 104))(v58, *MEMORY[0x277D10C80], v62);
    v60(v52);
  }

  else
  {
    v53 = sub_25164DD48();

    swift_willThrow();
    v52 = v58;
    *v58 = v53;
    v51 = v61;
    v50 = v62;
    (*(v61 + 104))(v52, *MEMORY[0x277D10C78], v62);
    v54 = v53;
    v60(v52);
  }

  (*(v51 + 8))(v52, v50);

  v56 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_251649C74()
{
  if (!qword_27F451988)
  {
    v0 = sub_25164DF98();
    if (!v1)
    {
      atomic_store(v0, &qword_27F451988);
    }
  }
}

uint64_t sub_251649CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(char *), uint64_t a9)
{
  sub_25164A480();
  v11 = v10;
  v12 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v47 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v41 - v15;
  sub_2516462B8();
  v48 = v17;
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_25164DE28();
  v21 = *(v50 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v50);
  v49 = &v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_25164DDA8();
  v25 = *(v24 - 8);
  v26 = v25[8];
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v41 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = &v41 - v30;
  sub_25164DD58();
  sub_25164DD58();
  sub_25164631C();
  result = sub_25164DEB8();
  if (result)
  {
    v45 = v31;
    v46 = a9;
    v43 = a8;
    v44 = v21;
    v33 = v25[2];
    v33(v16, v31, v24);
    v34 = &v16[*(v11 + 48)];
    v42 = v29;
    v33(v34, v29, v24);
    v35 = v47;
    sub_25164A4E8(v16, v47, sub_25164A480);
    v36 = *(v11 + 48);
    v37 = v11;
    v38 = v25[4];
    v38(v20, v35, v24);
    v39 = v25[1];
    v39(v35 + v36, v24);
    sub_25164A550(v16, v35, sub_25164A480);
    v38(&v20[*(v48 + 36)], v35 + *(v37 + 48), v24);
    v39(v35, v24);
    v40 = v49;
    sub_25164DE18();
    v43(v40);
    (*(v44 + 8))(v40, v50);
    v39(v42, v24);
    v39(v45, v24);
    return 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25164A0BC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25164A130()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1() & 1;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25164A1E0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_2516462B8();
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void *sub_25164A2A0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_2516462B8();
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

void sub_25164A344()
{
  sub_25164762C(319, &qword_27F4519A8, 0x277D107F8);
  if (v0 <= 0x3F)
  {
    sub_25164762C(319, &qword_27F451AC8, 0x277CCD830);
    if (v1 <= 0x3F)
    {
      sub_2516462B8();
      if (v2 <= 0x3F)
      {
        sub_25164A418();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_25164A418()
{
  if (!qword_27F451AA8)
  {
    sub_25164762C(255, &qword_27F4519C8, 0x277D10B70);
    v0 = sub_25164DF98();
    if (!v1)
    {
      atomic_store(v0, &qword_27F451AA8);
    }
  }
}

void sub_25164A480()
{
  if (!qword_27F451AD0)
  {
    sub_25164DDA8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F451AD0);
    }
  }
}

uint64_t sub_25164A4E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25164A550(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25164A5B8(uint64_t a1)
{
  v7 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_25164E018();
  if (!v2)
  {
    return v7;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_25164B268(i, v6);
    sub_25164762C(0, &qword_27F451AE0, 0x277CCD0B0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_25164DFF8();
    v4 = *(v7 + 16);
    sub_25164E028();
    sub_25164E038();
    sub_25164E008();
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

uint64_t sub_25164A6C4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v7 = MEMORY[0x277D84F90];
    sub_25164E018();
    v4 = a1 + 32;
    do
    {
      sub_25164B268(v4, &v6);
      sub_25164762C(0, &qword_27F451AE0, 0x277CCD0B0);
      swift_dynamicCast();
      sub_25164DFF8();
      v5 = *(v7 + 16);
      sub_25164E028();
      sub_25164E038();
      sub_25164E008();
      v4 += 32;
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_25164A7BC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_25164E058();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_25164E058();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_25164A8AC(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_25164A94C(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_25164A8AC(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_25164E058();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_25164DFE8();
  *v1 = result;
  return result;
}

uint64_t sub_25164A94C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_25164E058();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_25164E058();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_25164B1B8();
          sub_25164B220(&qword_27F451AF0, sub_25164B1B8);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_25164D340(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_25164762C(0, &qword_27F451AE0, 0x277CCD0B0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_25164AAF8(uint64_t a1, uint64_t a2)
{
  v73[1] = *MEMORY[0x277D85DE8];
  v5 = sub_25164DDA8();
  v71 = *(v5 - 8);
  v72 = v5;
  v6 = *(v71 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v70 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v67 = &v58 - v9;
  v10 = sub_25164DD18();
  v68 = *(v10 - 8);
  v69 = v10;
  v11 = *(v68 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_opt_self() _categoryTypeWithCode_];
  if (!v14)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  v15 = v14;
  sub_25164B16C(0, &qword_27F451AB0);
  v65 = v16;
  v17 = swift_allocObject();
  v64 = xmmword_25164E740;
  *(v17 + 16) = xmmword_25164E740;
  v18 = HDSampleEntityPredicateForDataType();
  v19 = sub_25164762C(0, &qword_27F4519C8, 0x277D10B70);
  *(v17 + 56) = v19;
  *(v17 + 32) = v18;
  v66 = a1;
  v20 = sub_25164DD88();
  v21 = HDSampleEntityPredicateForStartDate();

  *(v17 + 88) = v19;
  *(v17 + 64) = v21;
  v22 = sub_25164DF08();

  v23 = objc_opt_self();
  v24 = [v23 predicateMatchingAllPredicates_];

  if (!v24)
  {
    goto LABEL_26;
  }

  sub_25164762C(0, &qword_27F451AD8, 0x277D105E8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v73[0] = 0;
  v63 = ObjCClassFromMetadata;
  v26 = a2;
  v27 = [ObjCClassFromMetadata samplesWithType:v15 profile:a2 encodingOptions:0 predicate:v24 limit:1 anchor:0 error:v73];
  v28 = v73[0];
  if (!v27)
  {
    v35 = v73[0];
    sub_25164DD48();

    swift_willThrow();
    goto LABEL_20;
  }

  v29 = v27;
  v62 = v23;
  v30 = sub_25164DF18();
  v31 = v28;

  v32 = sub_25164A5B8(v30);

  v60 = v26;
  v61 = v24;
  v58 = v2;
  if (v32)
  {
    if (v32 >> 62)
    {
      if (sub_25164E058())
      {
        goto LABEL_7;
      }
    }

    else if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_7:
      if ((v32 & 0xC000000000000001) != 0)
      {
        v33 = MEMORY[0x25307CAB0](0, v32);
        goto LABEL_10;
      }

      if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v33 = *(v32 + 32);
LABEL_10:
        v59 = v33;

        v34 = v66;
        goto LABEL_15;
      }

      __break(1u);
      goto LABEL_25;
    }
  }

  v59 = 0;
  v34 = v66;
LABEL_15:
  v36 = swift_allocObject();
  *(v36 + 16) = v64;
  v37 = HDSampleEntityPredicateForDataType();
  *(v36 + 56) = v19;
  *(v36 + 32) = v37;
  v38 = v72;
  v39 = *(v71 + 16);
  v39(v67, v34, v72);
  sub_2516462B8();
  v39(v70, v34 + *(v40 + 36), v38);
  sub_25164DD08();
  v41 = sub_25164DCF8();
  (*(v68 + 8))(v13, v69);
  v42 = HDSampleEntityPredicateForDateInterval();

  *(v36 + 88) = v19;
  *(v36 + 64) = v42;
  v43 = sub_25164DF08();

  v44 = [v62 predicateMatchingAllPredicates_];

  if (v44)
  {
    v45 = *MEMORY[0x277D10C08];
    v73[0] = 0;
    v46 = [v63 samplesWithType:v15 profile:v60 encodingOptions:0 predicate:v44 limit:v45 anchor:0 error:v73];
    v47 = v73[0];
    v48 = v61;
    if (v46)
    {
      v49 = v46;
      v50 = sub_25164DF18();
      v51 = v47;

      v52 = sub_25164A6C4(v50);

      v53 = v59;
      if (v59)
      {
        sub_25164B16C(0, &qword_27F451970);
        v54 = swift_allocObject();
        *(v54 + 16) = xmmword_25164E5C0;
        *(v54 + 32) = v53;
        v73[0] = v54;
        v55 = v53;
        sub_25164A7BC(v52);
      }

      else
      {
      }

      goto LABEL_22;
    }

    v56 = v73[0];
    sub_25164DD48();

    swift_willThrow();
    v24 = v59;
LABEL_20:

LABEL_22:
    v57 = *MEMORY[0x277D85DE8];
    return;
  }

  __break(1u);
}

void sub_25164B16C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_25164E068();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_25164B1B8()
{
  if (!qword_27F451AE8)
  {
    sub_25164762C(255, &qword_27F451AE0, 0x277CCD0B0);
    v0 = sub_25164DF28();
    if (!v1)
    {
      atomic_store(v0, &qword_27F451AE8);
    }
  }
}

uint64_t sub_25164B220(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25164B268(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_25164B2CC()
{
  sub_25164E0C8();
  MEMORY[0x25307CBB0](0);
  return sub_25164E0E8();
}

uint64_t sub_25164B338()
{
  sub_25164E0C8();
  MEMORY[0x25307CBB0](0);
  return sub_25164E0E8();
}

void sub_25164B388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  *&v10 = 0;
  v3 = [objc_opt_self() mostRecentSampleWithType:a1 profile:a2 encodingOptions:0 predicate:a3 anchor:0 error:&v10];
  v4 = v10;
  if (v3)
  {
    v5 = v10;
    sub_25164DFA8();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
    v6 = v4;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (v4)
  {
    swift_willThrow();
    sub_2516471EC(v12);
  }

  else
  {
    sub_251647D04(v12, &v8);
    if (v9)
    {
      sub_251648074(&v8, &v10);
      sub_25164B268(&v10, &v8);
      sub_25164B9D0();
      if ((swift_dynamicCast() & 1) == 0)
      {
        sub_25164B734();
        swift_allocError();
        swift_willThrow();
      }

      __swift_destroy_boxed_opaque_existential_0(&v10);
      sub_2516471EC(v12);
    }

    else
    {
      sub_2516471EC(v12);
      sub_2516471EC(&v8);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t static HDSampleEntity.mostRecentSample<A>(of:expecting:profile:predicate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = *MEMORY[0x277D85DE8];
  *&v15 = 0;
  v6 = [objc_opt_self() mostRecentSampleWithType:a1 profile:a3 encodingOptions:0 predicate:a4 anchor:0 error:&v15];
  v7 = v15;
  if (v6)
  {
    v8 = v15;
    sub_25164DFA8();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v9 = v7;
  }

  v17[0] = v15;
  v17[1] = v16;
  if (v7)
  {
    swift_willThrow();
    sub_2516471EC(v17);
  }

  else
  {
    sub_251647D04(v17, &v13);
    if (v14)
    {
      sub_251648074(&v13, &v15);
      sub_25164B268(&v15, &v13);
      if (swift_dynamicCast())
      {
        a5 = v12;
      }

      else
      {
        sub_25164B734();
        swift_allocError();
        swift_willThrow();
      }

      __swift_destroy_boxed_opaque_existential_0(&v15);
      sub_2516471EC(v17);
    }

    else
    {
      sub_2516471EC(v17);
      sub_2516471EC(&v13);
      a5 = 0;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return a5;
}

unint64_t sub_25164B734()
{
  result = qword_27F451AF8;
  if (!qword_27F451AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F451AF8);
  }

  return result;
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

void static HDSampleEntity.mostRecentSampleStartDate(of:profile:predicate:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_25164B388(a1, a2, a3);
  if (!v4)
  {
    if (v6)
    {
      v7 = v6;
      v8 = [v6 startDate];
      sub_25164DD98();

      v9 = 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = sub_25164DDA8();
    (*(*(v10 - 8) + 56))(a4, v9, 1, v10);
  }
}

uint64_t _s21MostRecentSampleErrorOwet(unsigned int *a1, int a2)
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

_WORD *_s21MostRecentSampleErrorOwst(_WORD *result, int a2, int a3)
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

unint64_t sub_25164B97C()
{
  result = qword_27F451B00;
  if (!qword_27F451B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F451B00);
  }

  return result;
}

unint64_t sub_25164B9D0()
{
  result = qword_27F451990;
  if (!qword_27F451990)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F451990);
  }

  return result;
}

uint64_t HDProfile.fetchFactorTimeline(of:over:calendar:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[0] = a4;
  sub_25164BBFC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25164DE78();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  HDProfile.factorTimeline(of:over:calendar:)(a1, a2, a3, v15);
  (*(v12 + 16))(v10, v15, v11);
  swift_storeEnumTagMultiPayload();
  (v17[0])(v10);
  sub_25164CA20(v10);
  return (*(v12 + 8))(v15, v11);
}

void sub_25164BBFC()
{
  if (!qword_27F451B08)
  {
    sub_25164DE78();
    sub_25164BC6C();
    v0 = sub_25164E0F8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F451B08);
    }
  }
}

unint64_t sub_25164BC6C()
{
  result = qword_27F451B10;
  if (!qword_27F451B10)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F451B10);
  }

  return result;
}

void HDProfile.factorTimeline(of:over:calendar:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v129 = a2;
  v110 = a4;
  v7 = sub_25164DE08();
  v111 = *(v7 - 8);
  v112 = v7;
  v8 = *(v111 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v109 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v108 = &v99 - v11;
  sub_2516462B8();
  v131 = *(v12 - 8);
  v13 = *(v131 + 8);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v117 = &v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v116 = &v99 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v120 = &v99 - v19;
  MEMORY[0x28223BE20](v18);
  v122 = &v99 - v20;
  v126 = sub_25164DE58();
  v107 = *(v126 - 8);
  v21 = *(v107 + 64);
  v22 = MEMORY[0x28223BE20](v126);
  v106 = &v99 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v121 = &v99 - v24;
  v104 = sub_25164DDB8();
  v103 = *(v104 - 8);
  v25 = *(v103 + 64);
  MEMORY[0x28223BE20](v104);
  v102 = &v99 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_25164DD28();
  v123 = *(v27 - 8);
  v124 = v27;
  v28 = *(v123 + 64);
  v29 = MEMORY[0x28223BE20](v27);
  v101 = &v99 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v100 = &v99 - v31;
  v32 = MEMORY[0x277D83D88];
  sub_25164DC4C(0, &qword_27F451B18, MEMORY[0x277D10C18], MEMORY[0x277D83D88]);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v33 - 8);
  v105 = &v99 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v114 = &v99 - v38;
  MEMORY[0x28223BE20](v37);
  v125 = &v99 - v39;
  sub_25164DC4C(0, &qword_27F451B20, MEMORY[0x277CC8990], v32);
  v41 = *(*(v40 - 8) + 64);
  v42 = MEMORY[0x28223BE20](v40 - 8);
  v113 = &v99 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v42);
  v115 = &v99 - v45;
  MEMORY[0x28223BE20](v44);
  v127 = &v99 - v46;
  v47 = sub_25164DE38();
  v48 = *(v47 - 8);
  v49 = v48[8];
  MEMORY[0x28223BE20](v47);
  v51 = &v99 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v48[13];
  v52(v51, *MEMORY[0x277D10C40], v47);
  v128 = a1;
  LOBYTE(a1) = sub_25164CA7C(v51, a1);
  v53 = v48[1];
  v53(v51, v47);
  if (a1)
  {
    v54 = v130;
    sub_25164AAF8(v129, v4);
    if (v54)
    {
      return;
    }

    v118 = v55;
    v119 = v4;
    v99 = a3;
    v56 = 0;
  }

  else
  {
    v119 = v4;
    v99 = a3;
    v56 = v130;
    v118 = MEMORY[0x277D84F90];
  }

  v52(v51, *MEMORY[0x277D10C48], v47);
  v57 = v128;
  v58 = sub_25164CA7C(v51, v128);
  v53(v51, v47);
  if (v58)
  {
    v59 = sub_25164CC94();
    if (v56)
    {
      goto LABEL_18;
    }

    v60 = v59;
    v130 = 0;
    v57 = v128;
  }

  else
  {
    v130 = v56;
    v60 = MEMORY[0x277D84F90];
  }

  v52(v51, *MEMORY[0x277D10C50], v47);
  v61 = sub_25164CA7C(v51, v57);
  v53(v51, v47);
  if (v61)
  {
    v62 = v115;
    v63 = v130;
    sub_25164CE18(v115);
    if (v63)
    {
LABEL_17:

LABEL_18:

      return;
    }

    v130 = 0;
    sub_25164D540(v62, v127, &qword_27F451B20, MEMORY[0x277CC8990]);
    v57 = v128;
  }

  else
  {
    (*(v123 + 56))(v127, 1, 1, v124);
  }

  v52(v51, *MEMORY[0x277D10C58], v47);
  v64 = sub_25164CA7C(v51, v57);
  v53(v51, v47);
  if (v64)
  {
    v65 = v130;
    v66 = sub_25164CFAC();
    v68 = v116;
    v67 = v117;
    v70 = v123;
    v69 = v124;
    if (v65)
    {
      sub_25164D3C8(v127, &qword_27F451B20, MEMORY[0x277CC8990]);
      goto LABEL_17;
    }

    v128 = v66;
    v130 = 0;
  }

  else
  {
    v128 = 0;
    v68 = v116;
    v67 = v117;
    v70 = v123;
    v69 = v124;
  }

  v71 = v113;
  sub_25164D4C0(v127, v113, &qword_27F451B20, MEMORY[0x277CC8990]);
  v72 = (*(v70 + 48))(v71, 1, v69);
  v73 = v126;
  v74 = v99;
  if (v72 == 1)
  {
    sub_25164D3C8(v71, &qword_27F451B20, MEMORY[0x277CC8990]);
    v75 = 1;
    v76 = v114;
  }

  else
  {
    v77 = v100;
    (*(v70 + 32))(v100, v71, v69);
    (*(v70 + 16))(v101, v77, v69);
    (*(v103 + 16))(v102, v74, v104);
    v76 = v114;
    sub_25164DDC8();
    v78 = v77;
    v73 = v126;
    (*(v70 + 8))(v78, v69);
    v75 = 0;
  }

  v79 = sub_25164DDD8();
  (*(*(v79 - 8) + 56))(v76, v75, 1, v79);
  sub_25164D540(v76, v125, &qword_27F451B18, MEMORY[0x277D10C18]);
  v80 = v129;
  sub_251648FBC(v129, v122);
  sub_25164DE48();
  sub_251648FBC(v80, v120);
  v81 = v130;
  if (v60 >> 62)
  {
    v92 = v130;
    v93 = sub_25164E058();
    v81 = v92;
    v82 = v93;
    if (v93)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v82 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v82)
    {
LABEL_26:
      v132 = MEMORY[0x277D84F90];
      sub_25164D124(0, v82 & ~(v82 >> 63), 0);
      if (v82 < 0)
      {
        __break(1u);
        return;
      }

      v83 = v132;
      if ((v60 & 0xC000000000000001) != 0)
      {
        v84 = 0;
        do
        {
          MEMORY[0x25307CAB0](v84, v60);
          sub_25164DF68();
          swift_unknownObjectRelease();
          v132 = v83;
          v86 = *(v83 + 16);
          v85 = *(v83 + 24);
          if (v86 >= v85 >> 1)
          {
            sub_25164D124(v85 > 1, v86 + 1, 1);
            v83 = v132;
          }

          ++v84;
          *(v83 + 16) = v86 + 1;
          sub_251646254(v68, v83 + ((*(v131 + 80) + 32) & ~*(v131 + 80)) + *(v131 + 9) * v86);
        }

        while (v82 != v84);
      }

      else
      {
        v87 = 32;
        do
        {
          v88 = *(v60 + v87);
          sub_25164DF68();

          v132 = v83;
          v90 = *(v83 + 16);
          v89 = *(v83 + 24);
          if (v90 >= v89 >> 1)
          {
            sub_25164D124(v89 > 1, v90 + 1, 1);
            v83 = v132;
          }

          *(v83 + 16) = v90 + 1;
          sub_251646254(v67, v83 + ((*(v131 + 80) + 32) & ~*(v131 + 80)) + *(v131 + 9) * v90);
          v87 += 8;
          --v82;
        }

        while (v82);
      }

      v91 = v126;
      goto LABEL_40;
    }
  }

  v130 = v81;

  v83 = MEMORY[0x277D84F90];
  v91 = v73;
LABEL_40:
  v132 = v83;
  sub_25164DC4C(0, &qword_27F451B28, sub_2516462B8, MEMORY[0x277D83940]);
  sub_25164D438();
  v94 = v108;
  sub_25164DDF8();
  sub_251648FBC(v80, v122);
  v131 = MEMORY[0x277D10C18];
  sub_25164D4C0(v125, v105, &qword_27F451B18, MEMORY[0x277D10C18]);
  v95 = v107;
  v96 = v121;
  (*(v107 + 16))(v106, v121, v91);
  v98 = v111;
  v97 = v112;
  (*(v111 + 16))(v109, v94, v112);
  sub_25164DE68();
  (*(v98 + 8))(v94, v97);
  (*(v95 + 8))(v96, v126);
  sub_25164D3C8(v125, &qword_27F451B18, v131);
  sub_25164D3C8(v127, &qword_27F451B20, MEMORY[0x277CC8990]);
}

uint64_t sub_25164CA20(uint64_t a1)
{
  sub_25164BBFC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25164CA7C(uint64_t a1, uint64_t a2)
{
  v3 = sub_25164DE38();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_25164DCB0(&qword_27F451B58, MEMORY[0x277D10C60]), v9 = sub_25164DEA8(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v19 = a2;
    v12 = ~v10;
    v13 = v4 + 16;
    v14 = *(v4 + 16);
    v15 = *(v13 + 56);
    v16 = (v13 - 8);
    do
    {
      v14(v7, *(v19 + 48) + v15 * v11, v3);
      sub_25164DCB0(&unk_27F451B60, MEMORY[0x277D10C60]);
      v17 = sub_25164DED8();
      (*v16)(v7, v3);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

id sub_25164CC94()
{
  v13[1] = *MEMORY[0x277D85DE8];
  sub_25164762C(0, &qword_27F451AD8, 0x277D105E8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_25164762C(0, &qword_27F451B38, 0x277CCD0C0);
  v2 = MEMORY[0x25307CA20](*MEMORY[0x277CCBA68]);
  sub_25164D5C0();
  v4 = v3;
  v5 = *MEMORY[0x277D10C08];
  v13[0] = 0;
  v6 = [ObjCClassFromMetadata samplesWithType:v2 profile:v0 encodingOptions:0 predicate:v3 limit:v5 anchor:0 error:v13];

  v7 = v13[0];
  if (v6)
  {
    v8 = sub_25164DF18();
    v9 = v7;

    v10 = sub_25164A6C4(v8);
  }

  else
  {
    v10 = v13[0];
    sub_25164DD48();

    swift_willThrow();
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t sub_25164CE18@<X0>(uint64_t a1@<X8>)
{
  v12[4] = *MEMORY[0x277D85DE8];
  v3 = [v1 userCharacteristicsManager];
  sub_25164762C(0, &qword_27F451B48, 0x277CCD0D0);
  v4 = MEMORY[0x25307CA30](*MEMORY[0x277CCBB18]);
  v12[0] = 0;
  v5 = [v3 userCharacteristicForType:v4 error:v12];

  if (v5)
  {
    v6 = v12[0];
    sub_25164DFA8();
    swift_unknownObjectRelease();
    v7 = sub_25164DD28();
    v8 = swift_dynamicCast();
    result = (*(*(v7 - 8) + 56))(a1, v8 ^ 1u, 1, v7);
  }

  else
  {
    v10 = v12[0];
    sub_25164DD48();

    result = swift_willThrow();
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_25164CFAC()
{
  v9[4] = *MEMORY[0x277D85DE8];
  v1 = [v0 userCharacteristicsManager];
  sub_25164762C(0, &qword_27F451B48, 0x277CCD0D0);
  v2 = MEMORY[0x25307CA30](*MEMORY[0x277CCBB08]);
  v9[0] = 0;
  v3 = [v1 userCharacteristicForType:v2 error:v9];

  if (v3)
  {
    v4 = v9[0];
    sub_25164DFA8();
    swift_unknownObjectRelease();
    if (swift_dynamicCast())
    {
      result = v8;
    }

    else
    {
      result = 0;
    }
  }

  else
  {
    v6 = v9[0];
    sub_25164DD48();

    result = swift_willThrow();
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

size_t sub_25164D124(size_t a1, int64_t a2, char a3)
{
  result = sub_25164D144(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_25164D144(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_25164DC4C(0, &qword_27F451B50, sub_2516462B8, MEMORY[0x277D84560]);
  sub_2516462B8();
  v11 = *(*(v10 - 8) + 72);
  v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  sub_2516462B8();
  v16 = *(v15 - 8);
  if (v5)
  {
    if (v13 < a4 || (v17 = (*(v16 + 80) + 32) & ~*(v16 + 80), v13 + v17 >= a4 + v17 + *(v16 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void (*sub_25164D340(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x25307CAB0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_25164D3C0;
  }

  __break(1u);
  return result;
}

uint64_t sub_25164D3C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_25164DC4C(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_25164D438()
{
  result = qword_27F451B30;
  if (!qword_27F451B30)
  {
    sub_25164DC4C(255, &qword_27F451B28, sub_2516462B8, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F451B30);
  }

  return result;
}

uint64_t sub_25164D4C0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_25164DC4C(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_25164D540(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_25164DC4C(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void sub_25164D5C0()
{
  v0 = sub_25164DDA8();
  v1 = *(v0 - 8);
  v58 = v0;
  v59 = v1;
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v54 - v6;
  sub_25164DBF8();
  v8 = swift_allocObject();
  v60 = xmmword_25164E740;
  *(v8 + 16) = xmmword_25164E740;
  v9 = sub_25164DD88();
  v10 = HDSampleEntityPredicateForStartDate();

  v11 = sub_25164762C(0, &qword_27F4519C8, 0x277D10B70);
  *(v8 + 56) = v11;
  *(v8 + 32) = v10;
  sub_2516462B8();
  v13 = *(v12 + 36);
  v14 = sub_25164DD88();
  v15 = HDSampleEntityPredicateForStartDate();

  *(v8 + 88) = v11;
  *(v8 + 64) = v15;
  v16 = sub_25164DF08();

  v17 = objc_opt_self();
  v18 = [v17 predicateMatchingAllPredicates_];

  v57 = v18;
  if (!v18)
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_25164DDE8();
  sub_25164DD78();
  v19 = swift_allocObject();
  *(v19 + 16) = v60;
  v56 = v7;
  v20 = sub_25164DD88();
  v21 = HDSampleEntityPredicateForEndDate();

  *(v19 + 56) = v11;
  *(v19 + 32) = v21;
  v22 = sub_25164DD88();
  v23 = HDSampleEntityPredicateForEndDate();

  *(v19 + 88) = v11;
  *(v19 + 64) = v23;
  v24 = sub_25164DF08();

  v25 = [v17 predicateMatchingAllPredicates_];

  if (!v25)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v26 = swift_allocObject();
  *(v26 + 16) = v60;
  v27 = sub_25164DD88();
  v28 = HDSampleEntityPredicateForStartDate();

  *(v26 + 56) = v11;
  *(v26 + 32) = v28;
  v29 = sub_25164DD88();
  v30 = HDSampleEntityPredicateForEndDate();

  *(v26 + 88) = v11;
  *(v26 + 64) = v30;
  v31 = sub_25164DF08();

  v32 = [v17 predicateMatchingAllPredicates_];

  if (!v32)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v33 = swift_allocObject();
  *(v33 + 16) = v60;
  v34 = sub_25164DD88();
  v35 = HDSampleEntityPredicateForStartDate();

  *(v33 + 56) = v11;
  *(v33 + 32) = v35;
  sub_25164DD68();
  v36 = sub_25164DD88();
  v37 = *(v59 + 8);
  v59 += 8;
  v37(v5, v58);
  v38 = HDSampleEntityPredicateForEndDate();

  *(v33 + 88) = v11;
  *(v33 + 64) = v38;
  v39 = sub_25164DF08();

  v40 = [v17 predicateMatchingAllPredicates_];

  if (!v40)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_25164E820;
  v42 = sub_25164762C(0, &qword_27F451B40, 0x277D10B20);
  v43 = v57;
  *(v41 + 32) = v57;
  *(v41 + 56) = v42;
  *(v41 + 64) = v25;
  *(v41 + 88) = v42;
  *(v41 + 96) = v32;
  *(v41 + 152) = v42;
  *(v41 + 120) = v42;
  *(v41 + 128) = v40;
  v57 = v43;
  v55 = v25;
  v44 = v32;
  v45 = v40;
  v46 = sub_25164DF08();

  v47 = [v17 predicateMatchingAnyPredicates_];

  if (!v47)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v48 = swift_allocObject();
  *(v48 + 16) = v60;
  sub_25164762C(0, &qword_27F451B38, 0x277CCD0C0);
  v49 = MEMORY[0x25307CA20](*MEMORY[0x277CCBA68]);
  v50 = HDSampleEntityPredicateForDataType();

  *(v48 + 32) = v50;
  *(v48 + 88) = v42;
  *(v48 + 56) = v11;
  *(v48 + 64) = v47;
  v51 = v47;
  v52 = sub_25164DF08();

  v53 = [v17 predicateMatchingAllPredicates_];

  if (v53)
  {
    v37(v56, v58);

    return;
  }

LABEL_13:
  __break(1u);
}

void sub_25164DBF8()
{
  if (!qword_27F451AB0)
  {
    v0 = sub_25164E068();
    if (!v1)
    {
      atomic_store(v0, &qword_27F451AB0);
    }
  }
}

void sub_25164DC4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_25164DCB0(unint64_t *a1, void (*a2)(uint64_t))
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