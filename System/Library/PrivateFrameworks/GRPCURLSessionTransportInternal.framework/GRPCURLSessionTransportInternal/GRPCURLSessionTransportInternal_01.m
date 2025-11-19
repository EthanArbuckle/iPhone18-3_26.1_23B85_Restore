uint64_t sub_24DD1C414(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_24DD1C474(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_24DD1C4DC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_24DD1C574()
{
  sub_24DD4AF64();
  if (v0 <= 0x3F)
  {
    sub_24DD1C5E8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_24DD1C5E8()
{
  if (!qword_27F1AF630)
  {
    sub_24DD4AF24();
    sub_24DD4AF64();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F1AF630);
    }
  }
}

uint64_t sub_24DD1C66C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1AF550, &qword_24DD4CB18);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24DD1C6F8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1AF550, &qword_24DD4CB18);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_24DD1C784()
{
  sub_24DD1C5E8();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_24DD1C7DC(uint64_t a1)
{
  v2 = *(a1 + 8);

  v3 = *(a1 + 40);
}

uint64_t sub_24DD1C820(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  v5 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);

  v6 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v6;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  return a1;
}

uint64_t sub_24DD1C8A0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 82))
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

uint64_t sub_24DD1C8E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 82) = 1;
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

    *(result + 82) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
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

uint64_t *sub_24DD1C974(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = *a2;

  a1[1] = a2[1];
  *(a1 + 16) = *(a2 + 16);
  a1[3] = a2[3];
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 5) = *(a2 + 5);
  return a1;
}

uint64_t sub_24DD1C9D4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_24DD1CA1C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t BufferedStream.Source.write(_:onProduceMore:)(uint64_t a1, uint64_t (*a2)(void, void), uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24DD4B594();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v21 - v16;
  v21[1] = *v4;
  (*(v9 + 16))(v12, a1, v8);
  sub_24DD4B5A4();
  WitnessTable = swift_getWitnessTable();
  BufferedStream.Source.write<A>(contentsOf:onProduceMore:)(v17, a2, a3, v19, v13, WitnessTable);
  return (*(v14 + 8))(v17, v13);
}

uint64_t BufferedStream.Source.finish(throwing:)(uint64_t a1)
{
  v3 = *(*v1 + 16);

  sub_24DD209B0(a1);
}

uint64_t BufferedStream.Source.write<A>(contentsOf:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v9 = *(*v4 + 16);

  sub_24DD1E768(a1, a2, a3, a4);
}

uint64_t BufferedStream.Source.enqueueCallback(callbackToken:onProduceMore:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*v3 + 16);
  v8 = *a1;

  sub_24DD1EF38(&v8, a2, a3);
}

uint64_t BufferedStream.Source.write<A>(contentsOf:onProduceMore:)(uint64_t a1, uint64_t (*a2)(void, void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *v6;
  v13 = *(*v6 + 16);

  sub_24DD1E768(a1, a5, a6, &v17);

  if (v18 == 1)
  {
    return a2(0, 0);
  }

  v15 = v17;
  v17 = v12;
  v16 = v15;
  return BufferedStream.Source.enqueueCallback(callbackToken:onProduceMore:)(&v16, a2, a3);
}

uint64_t sub_24DD1CF1C()
{
  sub_24DD1D050(type metadata accessor for BufferedStream._StateMachine.SequenceDeinitializedAction, sub_24DD2B890, sub_24DD2CF4C);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_24DD1CF8C()
{
  v1 = v0[2];
  v4[2] = *(*v0 + 80);
  v2 = type metadata accessor for BufferedStream._StateMachine();
  return sub_24DD49B88(sub_24DD2BB78, v4, v1, v2, MEMORY[0x277D84F78] + 8);
}

uint64_t sub_24DD1D050(void (*a1)(uint64_t, uint64_t), void (*a2)(uint64_t), uint64_t (*a3)(void (*)(void), void (*)(void), uint64_t, uint64_t))
{
  v7 = v3;
  v8 = *(v3 + 16);

  sub_24DD1D0FC(a1, a2, a3);

  v9 = *(v7 + 16);

  return v7;
}

uint64_t sub_24DD1D0FC(void (*a1)(uint64_t, uint64_t), void (*a2)(uint64_t), uint64_t (*a3)(void (*)(void), void (*)(void), uint64_t, uint64_t))
{
  v7 = v3[2];
  v29 = *(*v3 + 80);
  v8 = type metadata accessor for BufferedStream._StateMachine();
  a1(255, v29);
  v9 = sub_24DD4B4B4();
  result = sub_24DD49B88(a2, v28, v7, v8, v9);
  v11 = v33;
  if (v33 != 255)
  {
    v13 = v30;
    v12 = v31;
    v14 = v32;
    if (v33)
    {
      v25 = v32;
      v26 = a3;
      v27 = v30;
      v15 = *(v30 + 2);
      if (v15)
      {
        sub_24DD1C09C();
        v16 = (v27 + 40);
        do
        {
          v18 = *(v16 - 1);
          v17 = *v16;
          v19 = swift_allocError();
          v30 = v19;
          LOBYTE(v31) = 1;

          v18(&v30);

          v16 += 2;
          --v15;
        }

        while (v15);
      }

      if (v12)
      {

        v12(v20);
        sub_24DD1C134(v12);
        v21 = v27;
        v22 = v12;
      }

      else
      {
        v21 = v27;
        v22 = 0;
      }

      return v26(v21, v22, v25, v11);
    }

    else
    {
      if (v30)
      {

        v13(v23);
        a3(v13, v12, v14, v11);
        v24 = v13;
      }

      else
      {
        v24 = 0;
      }

      return a3(v24, v12, v14, v11);
    }
  }

  return result;
}

uint64_t sub_24DD1D2F0()
{
  sub_24DD1D050(type metadata accessor for BufferedStream._StateMachine.IteratorDeinitializedAction, sub_24DD2B820, sub_24DD2CF4C);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t BufferedStream.Iterator.next()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_24DD1D380, 0, 0);
}

uint64_t sub_24DD1D380()
{
  v1 = **(v0 + 24);
  *(v0 + 32) = v1;
  *(v0 + 40) = *(v1 + 16);

  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_24DD1D438;
  v3 = *(v0 + 16);

  return sub_24DD1D624(v3);
}

uint64_t sub_24DD1D438()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_24DD1D5B8;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_24DD1D554;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24DD1D554()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24DD1D5B8()
{
  v2 = v0[4];
  v1 = v0[5];

  v3 = v0[1];
  v4 = v0[7];

  return v3();
}

uint64_t sub_24DD1D624(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*v1 + 80);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  Action = type metadata accessor for BufferedStream._StateMachine.NextAction();
  v2[7] = Action;
  v7 = *(Action - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24DD1D760, 0, 0);
}

uint64_t sub_24DD1D760()
{
  v58 = v0;
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[4];
  v6 = *(v0[3] + 16);
  v7 = swift_task_alloc();
  *(v7 + 16) = v5;
  v8 = type metadata accessor for BufferedStream._StateMachine();
  sub_24DD49B88(sub_24DD2BDBC, v7, v6, v8, v3);

  (*(v4 + 16))(v1, v2, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v30 = v0[9];
      v32 = v0[5];
      v31 = v0[6];
      v33 = v0[4];
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B00C0, &qword_24DD4D260);
      v34 = *(v30 + *(swift_getTupleTypeMetadata2() + 48));
      v55 = *(v32 + 32);
      v55(v31, v30, v33);
      v35 = *(v34 + 16);
      if (v35)
      {
        v36 = (v34 + 40);
        do
        {
          v38 = *(v36 - 1);
          v37 = *v36;
          v56 = 0;
          v57 = 0;

          v38(&v56);

          v36 += 2;
          --v35;
        }

        while (v35);
      }

      v39 = v0[10];
      v40 = v0[7];
      v41 = v0[8];
      v43 = v0[5];
      v42 = v0[6];
      v44 = v0[4];
      v45 = v0[2];

      (*(v41 + 8))(v39, v40);
      v55(v45, v42, v44);
      (*(v43 + 56))(v45, 0, 1, v44);
    }

    else
    {
      v13 = v0[9];
      v14 = v0[4];
      v15 = v0[5];
      v16 = v0[2];
      (*(v0[8] + 8))(v0[10], v0[7]);
      (*(v15 + 32))(v16, v13, v14);
      (*(v15 + 56))(v16, 0, 1, v14);
    }

    goto LABEL_19;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v17 = v0[9];
    v18 = *v17;
    v19 = v17[1];
    v20 = v17[2];
    if (v19)
    {
      v21 = v17[2];

      v19(v22);
      sub_24DD1C134(v19);
    }

    if (v18)
    {
      swift_willThrow();
      sub_24DD1C134(v19);
      v23 = v0[9];
      v24 = v0[6];
      (*(v0[8] + 8))(v0[10], v0[7]);

      v25 = v0[1];
LABEL_20:

      return v25();
    }

    v46 = v0[10];
    v47 = v0[7];
    v48 = v0[8];
    v49 = v0[4];
    v50 = v0[5];
    v51 = v0[2];
    sub_24DD1C134(v19);
    (*(v48 + 8))(v46, v47);
    (*(v50 + 56))(v51, 1, 1, v49);
LABEL_19:
    v53 = v0[9];
    v52 = v0[10];
    v54 = v0[6];

    v25 = v0[1];
    goto LABEL_20;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v10 = v0[4];
    v11 = v0[5];
    v12 = v0[2];
    (*(v0[8] + 8))(v0[10], v0[7]);
    (*(v11 + 56))(v12, 1, 1, v10);
    goto LABEL_19;
  }

  v26 = swift_task_alloc();
  v0[11] = v26;
  *v26 = v0;
  v26[1] = sub_24DD1DBA4;
  v27 = v0[2];
  v28 = v0[3];

  return sub_24DD25A00(v27);
}

uint64_t sub_24DD1DBA4()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_24DD1DD48;
  }

  else
  {
    v3 = sub_24DD1DCB8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24DD1DCB8()
{
  (*(v0[8] + 8))(v0[10], v0[7]);
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[6];

  v4 = v0[1];

  return v4();
}

uint64_t sub_24DD1DD48()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[6];
  (*(v0[8] + 8))(v0[10], v0[7]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24DD1DDE4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24DD0C914;

  return BufferedStream.Iterator.next()(a1);
}

uint64_t BufferedStream.makeAsyncIterator()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = *(a1 + 16);
  type metadata accessor for BufferedStream.Iterator._Backing();
  v6 = *(v4 + 16);

  v8 = sub_24DD2A808(v7);

  *a2 = v8;
  return result;
}

uint64_t sub_24DD1DED8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  BufferedStream.makeAsyncIterator()(a1, a2);
  v3 = *v2;
}

void static BufferedStream.Source.BackPressureStrategy.watermark(low:high:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 < a1)
  {
    __break(1u);
  }

  else
  {
    v5[5] = v3;
    v5[6] = v4;
    v5[0] = a1;
    v5[1] = a2;
    memset(&v5[2], 0, 24);
    sub_24DD1DF78(v5, a3);
  }
}

uint64_t sub_24DD1DF5C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if (a2 < result)
  {
    __break(1u);
  }

  else
  {
    *a5 = result;
    a5[1] = a2;
    a5[2] = 0;
    a5[3] = a3;
    a5[4] = a4;
  }

  return result;
}

double sub_24DD1DF78@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for BufferedStream._InternalBackPressureStrategy();
  (*(*(v4 - 8) + 32))(v8, a1, v4);
  v5 = v9;
  result = *v8;
  v7 = v8[1];
  *a2 = v8[0];
  *(a2 + 16) = v7;
  *(a2 + 32) = v5;
  return result;
}

uint64_t static BufferedStream.Source.BackPressureStrategy.customWatermark(low:high:waterLevelForElement:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (a2 < result)
  {
    __break(1u);
  }

  else
  {
    v7[7] = v5;
    v8 = v6;
    v7[0] = result;
    v7[1] = a2;
    v7[2] = 0;
    v7[3] = a3;
    v7[4] = a4;
    sub_24DD1DF78(v7, a5);
  }

  return result;
}

uint64_t sub_24DD1E058(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_24DD1E098()
{
  v1 = v0;
  v2 = *(v0 + 16);

  sub_24DD1E0DC();

  v3 = *(v1 + 16);

  return v1;
}

uint64_t sub_24DD1E0DC()
{
  v1 = *(*v0 + 80);
  v2 = sub_24DD4B4B4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v55 = &v51 - v4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1AF298, &qword_24DD4C1C0);
  v5 = sub_24DD4B324();
  v6 = sub_24DD4B4B4();
  v57 = *(v6 - 8);
  v58 = v6;
  v7 = *(v57 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v56 = &v51 - v11;
  v12 = type metadata accessor for BufferedStream._StateMachine.SourceDeinitializedAction();
  v13 = sub_24DD4B4B4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v51 - v19;
  v21 = v0[2];
  v60 = v1;
  v22 = type metadata accessor for BufferedStream._StateMachine();
  sub_24DD49B88(sub_24DD2B7D4, v59, v21, v22, v13);
  (*(v14 + 16))(v18, v20, v13);
  if ((*(*(v12 - 8) + 48))(v18, 1, v12) == 1)
  {
    return (*(v14 + 8))(v20, v13);
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v43 = *v18;
    if (*v18)
    {
      v44 = *(v18 + 1);

      v43(v45);
      sub_24DD1C134(v43);
      sub_24DD1C134(v43);
    }

    return (*(v14 + 8))(v20, v13);
  }

  v54 = v13;
  if (EnumCaseMultiPayload == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B00C0, &qword_24DD4D260);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B00C8, &qword_24DD4D268);
    v25 = v58;
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v27 = *&v18[*(TupleTypeMetadata3 + 48)];
    v28 = &v18[*(TupleTypeMetadata3 + 64)];
    v30 = *v28;
    v29 = *(v28 + 1);
    v52 = v30;
    v53 = v27;
    v51 = v29;
    v32 = v56;
    v31 = v57;
    (*(v57 + 32))(v56, v18, v25);
    (*(v31 + 16))(v10, v32, v25);
    v33 = *(v5 - 8);
    v34 = (*(v33 + 48))(v10, 1, v5);
    v35 = v31;
    if (v34 != 1)
    {
      (*(*(v1 - 8) + 56))(v55, 1, 1, v1);
      sub_24DD4B314();
      v35 = v33;
      v25 = v5;
    }

    (*(v35 + 8))(v10, v25);
    v36 = *(v53 + 16);
    if (v36)
    {
      sub_24DD1C09C();
      v37 = (v53 + 40);
      do
      {
        v38 = *(v37 - 1);
        v39 = *v37;
        v40 = swift_allocError();
        v61 = v40;
        v62 = 1;

        v38(&v61);

        v37 += 2;
        --v36;
      }

      while (v36);
    }

    v41 = v52;
    if (v52)
    {

      v41(v42);
      sub_24DD1C134(v41);
      sub_24DD1C134(v41);
    }

    (*(v57 + 8))(v56, v58);
  }

  else
  {
    v58 = *v18;
    v46 = *(v58 + 16);
    if (v46)
    {
      sub_24DD1C09C();
      v47 = (v58 + 40);
      do
      {
        v48 = *(v47 - 1);
        v49 = *v47;
        v50 = swift_allocError();
        v61 = v50;
        v62 = 1;

        v48(&v61);

        v47 += 2;
        --v46;
      }

      while (v46);
    }
  }

  return (*(v14 + 8))(v20, v54);
}

uint64_t sub_24DD1E6E0()
{
  sub_24DD1E098();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t BufferedStream.Source.init(storage:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(*a1 + 80);
  type metadata accessor for BufferedStream.Source._Backing();
  result = swift_allocObject();
  *(result + 16) = a1;
  *a2 = result;
  return result;
}

uint64_t sub_24DD1E768@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v56 = a4;
  v8 = *(*v4 + 80);
  v9 = sub_24DD4B4B4();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v50 = &v49 - v12;
  v51 = *(v8 - 8);
  v13 = *(v51 + 64);
  MEMORY[0x28223BE20](v11);
  v54 = &v49 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1AF298, &qword_24DD4C1C0);
  v53 = sub_24DD4B324();
  v55 = *(v53 - 8);
  v15 = *(v55 + 64);
  MEMORY[0x28223BE20](v53);
  v52 = &v49 - v16;
  v17 = type metadata accessor for BufferedStream._StateMachine.WriteAction();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v49 - v23;
  v25 = v4[2];
  v58 = v8;
  v59 = a2;
  v60 = a3;
  v61 = a1;
  v26 = type metadata accessor for BufferedStream._StateMachine();
  v27 = v62;
  sub_24DD49B88(sub_24DD2BF3C, v57, v25, v26, v17);
  (*(v18 + 16))(v22, v24, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v40 = v53;
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v62 = v27;
      v42 = *(TupleTypeMetadata2 + 48);
      (*(v55 + 32))(v52, v22, v40);
      v43 = v51;
      v44 = &v22[v42];
      v45 = v54;
      (*(v51 + 32))(v54, v44, v8);
      v46 = v50;
      (*(v43 + 16))(v50, v45, v8);
      v31 = 1;
      (*(v43 + 56))(v46, 0, 1, v8);
      v47 = v52;
      sub_24DD4B314();
      (*(v43 + 8))(v54, v8);
      (*(v55 + 8))(v47, v40);
      result = (*(v18 + 8))(v24, v17);
      v30 = 0;
    }

    else
    {
      result = (*(v18 + 8))(v24, v17);
      v31 = 0;
      v30 = *v22;
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    type metadata accessor for BufferedStream.Source.WriteResult.CallbackToken();
    v32 = v53;
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v62 = v27;
    v34 = *(TupleTypeMetadata3 + 48);
    v49 = *&v22[*(TupleTypeMetadata3 + 64)];
    v35 = v52;
    (*(v55 + 32))(v52, v22, v32);
    v36 = v51;
    v37 = v54;
    (*(v51 + 32))(v54, &v22[v34], v8);
    v38 = v50;
    (*(v36 + 16))(v50, v37, v8);
    (*(v36 + 56))(v38, 0, 1, v8);
    v39 = v53;
    sub_24DD4B314();
    (*(v36 + 8))(v37, v8);
    (*(v55 + 8))(v35, v39);
    result = (*(v18 + 8))(v24, v17);
    v30 = v49;
    v31 = 0;
  }

  else
  {
    if (EnumCaseMultiPayload != 3)
    {
      sub_24DD1C09C();
      swift_allocError();
      swift_willThrow();
      return (*(v18 + 8))(v24, v17);
    }

    result = (*(v18 + 8))(v24, v17);
    v30 = 0;
    v31 = 1;
  }

  v48 = v56;
  *v56 = v30;
  *(v48 + 8) = v31;
  return result;
}

uint64_t BufferedStream.Source.write(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v19 = a3;
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24DD4B594();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v18 - v13;
  v15 = *(*v3 + 16);
  (*(v6 + 16))(v9, a1, v5);

  sub_24DD4B5A4();
  WitnessTable = swift_getWitnessTable();
  sub_24DD1E768(v14, v10, WitnessTable, v19);
  (*(v11 + 8))(v14, v10);
}

void sub_24DD1EF38(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = v3[2];
  v13[2] = *(*v3 + 80);
  v13[3] = v4;
  v13[4] = a2;
  v13[5] = a3;
  v6 = type metadata accessor for BufferedStream._StateMachine();
  type metadata accessor for BufferedStream._StateMachine.EnqueueProducerAction();
  v7 = sub_24DD4B4B4();
  sub_24DD49B88(sub_24DD2BE5C, v13, v5, v6, v7);
  v8 = v16;
  if ((~v16 & 0xF000000000000007) != 0)
  {
    v10 = v14;
    v9 = v15;
    if (v16 < 0)
    {
      v11 = (v16 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = (v8 & 0x7FFFFFFFFFFFFFFFLL);

      v10(v8 & 0x7FFFFFFFFFFFFFFFLL, 1);
      sub_24DD1BFE8(v10, v9, v8);
    }

    else
    {
      sub_24DD1C04C(v14, v15, v16);
      v10(0, 0);
      sub_24DD1BFE8(v10, v9, v8);
      sub_24DD1BFE8(v10, v9, v8);
    }
  }
}

uint64_t BufferedStream.Source.cancelCallback(callbackToken:)(uint64_t *a1)
{
  v2 = *(*v1 + 16);
  v4 = *a1;

  sub_24DD1F0E4(&v4);
}

uint64_t sub_24DD1F0E4(uint64_t *a1)
{
  v2 = *a1;
  v3 = v1[2];
  v9[2] = *(*v1 + 80);
  v9[3] = v2;
  v4 = type metadata accessor for BufferedStream._StateMachine();
  type metadata accessor for BufferedStream._StateMachine.CancelProducerAction();
  v5 = sub_24DD4B4B4();
  result = sub_24DD49B88(sub_24DD2BCEC, v9, v3, v4, v5);
  v7 = v10;
  if (v10)
  {
    sub_24DD4B334();
    sub_24DD2BA94();
    v8 = swift_allocError();

    sub_24DD4B104();
    v7(v8, 1);
    sub_24DD1C134(v7);

    return sub_24DD1C134(v7);
  }

  return result;
}

uint64_t BufferedStream.Source.write<A>(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a3;
  v5[5] = a4;
  v5[2] = a1;
  v5[3] = a2;
  v5[6] = *v4;
  return MEMORY[0x2822009F8](sub_24DD1F22C, 0, 0);
}

{
  v5[5] = a3;
  v5[6] = a4;
  v5[3] = a1;
  v5[4] = a2;
  v7 = *(a2 + 16);
  v5[7] = v7;
  v8 = *(v7 - 8);
  v5[8] = v8;
  v9 = *(v8 + 64) + 15;
  v5[9] = swift_task_alloc();
  v10 = sub_24DD4B594();
  v5[10] = v10;
  v11 = *(v10 - 8);
  v5[11] = v11;
  v12 = *(v11 + 64) + 15;
  v5[12] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[13] = AssociatedTypeWitness;
  v14 = *(AssociatedTypeWitness - 8);
  v5[14] = v14;
  v15 = *(v14 + 64) + 15;
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v16 = *(*(sub_24DD4B4B4() - 8) + 64) + 15;
  v5[17] = swift_task_alloc();
  v17 = *(a3 - 8);
  v5[18] = v17;
  v18 = *(v17 + 64) + 15;
  v5[19] = swift_task_alloc();
  v19 = swift_getAssociatedTypeWitness();
  v5[20] = v19;
  v20 = *(v19 - 8);
  v5[21] = v20;
  v21 = *(v20 + 64) + 15;
  v22 = swift_task_alloc();
  v23 = *v4;
  v5[22] = v22;
  v5[23] = v23;

  return MEMORY[0x2822009F8](sub_24DD2015C, 0, 0);
}

uint64_t sub_24DD1F22C()
{
  v18 = v0;
  v1 = v0[5];
  v2 = v0[4];
  v3 = v0[2];
  v4 = *(v0[3] + 16);
  v5 = *(v0[6] + 16);

  sub_24DD1E768(v3, v2, v1, &v16);

  if (v17)
  {
    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v16;
    v10 = v0[5];
    v9 = v0[6];
    v11 = v0[4];
    v12 = swift_task_alloc();
    v0[7] = v12;
    v12[2] = v4;
    v12[3] = v11;
    v12[4] = v10;
    v12[5] = v9;
    v12[6] = v8;
    v13 = swift_task_alloc();
    v0[8] = v13;
    v13[2] = v4;
    v13[3] = v11;
    v13[4] = v10;
    v13[5] = v9;
    v13[6] = v8;
    v14 = *(MEMORY[0x277D85A10] + 4);
    v15 = swift_task_alloc();
    v0[9] = v15;
    *v15 = v0;
    v15[1] = sub_24DD1F3F8;

    return MEMORY[0x282200830](v15, &unk_24DD4CC20);
  }
}

uint64_t sub_24DD1F3F8()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v8 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_24DD1F534;
  }

  else
  {
    v6 = *(v2 + 56);
    v5 = *(v2 + 64);

    v4 = sub_24DD1F51C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24DD1F534()
{
  v2 = v0[7];
  v1 = v0[8];

  v3 = v0[10];
  v4 = v0[1];

  return v4();
}

uint64_t sub_24DD1F5A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_24DD1F5C8, 0, 0);
}

uint64_t sub_24DD1F5C8()
{
  v1 = *(v0 + 56);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *(v4 + 16) = *(v0 + 40);
  *(v4 + 32) = v1;
  *(v4 + 40) = v3;
  *(v4 + 48) = v2;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *v6 = v0;
  v6[1] = sub_24DD1F6DC;
  v7 = *(v0 + 16);
  v8 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v7, 0, 0, 0xD000000000000012, 0x800000024DD52440, sub_24DD2BBBC, v4, v8);
}

uint64_t sub_24DD1F6DC()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24DD1F818, 0, 0);
  }

  else
  {
    v4 = v3[8];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_24DD1F818()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_24DD1F87C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v14 - v9;
  v14[0] = a3;
  v14[1] = a2;
  (*(v7 + 16))(v14 - v9, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v10, v6);
  BufferedStream.Source.enqueueCallback(callbackToken:onProduceMore:)(v14, sub_24DD2BC60, v12);
}

uint64_t sub_24DD1F9D8(void *a1, char a2)
{
  if (a2)
  {
    v2 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
    return sub_24DD4B304();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
    return sub_24DD4B314();
  }
}

uint64_t BufferedStream.Source.write(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a1;
  v3[4] = a2;
  v4 = *(a2 + 16);
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_24DD4B594();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v10 = swift_task_alloc();
  v11 = *v2;
  v3[10] = v10;
  v3[11] = v11;

  return MEMORY[0x2822009F8](sub_24DD1FB70, 0, 0);
}

uint64_t sub_24DD1FB70()
{
  v1 = v0[10];
  v3 = v0[7];
  v2 = v0[8];
  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[3];
  v0[2] = v0[11];
  (*(v4 + 16))(v3, v6, v5);
  sub_24DD4B5A4();
  v7 = swift_task_alloc();
  v0[12] = v7;
  WitnessTable = swift_getWitnessTable();
  *v7 = v0;
  v7[1] = sub_24DD1FC7C;
  v9 = v0[10];
  v10 = v0[8];
  v11 = v0[4];

  return BufferedStream.Source.write<A>(contentsOf:)(v9, v11, v10, WitnessTable);
}

uint64_t sub_24DD1FC7C()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v6 = *v1;
  v6[13] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24DD1FE34, 0, 0);
  }

  else
  {
    v7 = v6[10];
    v8 = v6[7];

    v9 = v6[1];

    return v9();
  }
}

uint64_t sub_24DD1FE34()
{
  v1 = v0[10];
  v2 = v0[7];

  v3 = v0[1];
  v4 = v0[13];

  return v3();
}

uint64_t sub_24DD2015C()
{
  v1 = v0[22];
  v2 = v0[6];
  (*(v0[18] + 16))(v0[19], v0[3], v0[5]);
  sub_24DD4B3A4();
  v3 = v0[20];
  v5 = v0[5];
  v4 = v0[6];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v0[24] = AssociatedConformanceWitness;
  v7 = *(MEMORY[0x277D856D8] + 4);
  v8 = swift_task_alloc();
  v0[25] = v8;
  *v8 = v0;
  v8[1] = sub_24DD20270;
  v9 = v0[22];
  v10 = v0[20];
  v12 = v0[16];
  v11 = v0[17];

  return MEMORY[0x282200310](v11, 0, 0, v12, v10, AssociatedConformanceWitness);
}

uint64_t sub_24DD20270()
{
  v2 = *(*v1 + 200);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_24DD2074C;
  }

  else
  {
    v3 = sub_24DD20380;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24DD20380()
{
  v1 = v0[17];
  v2 = v0[7];
  v3 = v0[8];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[19];
    v6 = v0[15];
    v5 = v0[16];
    v7 = v0[12];
    v8 = v0[9];
    (*(v0[21] + 8))(v0[22], v0[20]);

    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = v0[12];
    v13 = v0[9];
    v12 = v0[10];
    v0[2] = v0[23];
    (*(v3 + 32))(v13, v1, v2);
    sub_24DD4B5A4();
    v14 = swift_task_alloc();
    v0[26] = v14;
    WitnessTable = swift_getWitnessTable();
    *v14 = v0;
    v14[1] = sub_24DD20564;
    v16 = v0[12];
    v17 = v0[10];
    v18 = v0[4];

    return BufferedStream.Source.write<A>(contentsOf:)(v16, v18, v17, WitnessTable);
  }
}

uint64_t sub_24DD20564()
{
  v2 = *(*v1 + 208);
  v3 = *v1;
  v3[27] = v0;

  if (v0)
  {
    (*(v3[11] + 8))(v3[12], v3[10]);

    return MEMORY[0x2822009F8](sub_24DD208D8, 0, 0);
  }

  else
  {
    (*(v3[11] + 8))(v3[12], v3[10]);
    v4 = v3[20];
    v6 = v3[5];
    v5 = v3[6];
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v3[24] = AssociatedConformanceWitness;
    v8 = *(MEMORY[0x277D856D8] + 4);
    v9 = swift_task_alloc();
    v3[25] = v9;
    *v9 = v3;
    v9[1] = sub_24DD20270;
    v10 = v3[22];
    v11 = v3[20];
    v13 = v3[16];
    v12 = v3[17];

    return MEMORY[0x282200310](v12, 0, 0, v13, v11, AssociatedConformanceWitness);
  }
}

uint64_t sub_24DD2074C()
{
  v1 = v0[24];
  v2 = v0[20];
  v3 = *(v0[14] + 32);
  v3(v0[15], v0[16], v0[13]);
  swift_getAssociatedConformanceWitness();
  v4 = sub_24DD4B634();
  v5 = v0[15];
  if (v4)
  {
    (*(v0[14] + 8))(v0[15], v0[13]);
  }

  else
  {
    v6 = v0[13];
    swift_allocError();
    v3(v7, v5, v6);
  }

  (*(v0[21] + 8))(v0[22], v0[20]);
  v8 = v0[22];
  v9 = v0[19];
  v11 = v0[16];
  v10 = v0[17];
  v12 = v0[15];
  v13 = v0[12];
  v14 = v0[9];

  v15 = v0[1];

  return v15();
}

uint64_t sub_24DD208D8()
{
  (*(v0[21] + 8))(v0[22], v0[20]);
  v1 = v0[27];
  v2 = v0[22];
  v3 = v0[19];
  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[15];
  v7 = v0[12];
  v8 = v0[9];

  v9 = v0[1];

  return v9();
}

uint64_t sub_24DD209B0(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = sub_24DD4B4B4();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v41 = &v39 - v6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1AF298, &qword_24DD4C1C0);
  v7 = sub_24DD4B324();
  v42 = *(v7 - 8);
  v8 = *(v42 + 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v39 - v9;
  v11 = type metadata accessor for BufferedStream._StateMachine.FinishAction();
  v12 = sub_24DD4B4B4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v39 - v18;
  v20 = v1[2];
  v44 = v3;
  v45 = a1;
  v21 = type metadata accessor for BufferedStream._StateMachine();
  sub_24DD49B88(sub_24DD2C020, v43, v20, v21, v12);
  (*(v13 + 16))(v17, v19, v12);
  if ((*(*(v11 - 8) + 48))(v17, 1, v11) == 1)
  {
    return (*(v13 + 8))(v19, v12);
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v31 = *v17;
    if (*v17)
    {
      v32 = *(v17 + 1);

      v31(v33);
      sub_24DD1C134(v31);
      sub_24DD1C134(v31);
    }

    return (*(v13 + 8))(v19, v12);
  }

  v40 = v12;
  if (EnumCaseMultiPayload != 1)
  {
    v42 = *v17;
    v34 = *(v42 + 2);
    if (v34)
    {
      sub_24DD1C09C();
      v35 = (v42 + 40);
      do
      {
        v37 = *(v35 - 1);
        v36 = *v35;
        v38 = swift_allocError();
        v46 = v38;
        v47 = 1;

        v37(&v46);

        v35 += 2;
        --v34;
      }

      while (v34);
    }

    return (*(v13 + 8))(v19, v40);
  }

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B00D8, &unk_24DD4D290);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B00C8, &qword_24DD4D268);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v25 = *&v17[*(TupleTypeMetadata3 + 48)];
  v26 = &v17[*(TupleTypeMetadata3 + 64)];
  v27 = *v26;
  v39 = *(v26 + 1);
  v28 = v42;
  (*(v42 + 4))(v10, v17, v7);
  if (!v25)
  {
    (*(*(v3 - 8) + 56))(v41, 1, 1, v3);
    sub_24DD4B314();
    if (v27)
    {
      goto LABEL_7;
    }

LABEL_15:

    goto LABEL_16;
  }

  v46 = v25;
  v29 = v25;
  sub_24DD4B304();
  if (!v27)
  {
    goto LABEL_15;
  }

LABEL_7:

  v27(v30);
  sub_24DD1C134(v27);

  sub_24DD1C134(v27);
LABEL_16:
  v28[1](v10, v7);
  return (*(v13 + 8))(v19, v40);
}

uint64_t static BufferedStream.makeStream(of:throwing:backPressureStrategy:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = type metadata accessor for BufferedStream._InternalBackPressureStrategy();
  v10 = *(v9 - 8);
  (*(v10 + 32))(v16, a6, v9);
  type metadata accessor for BufferedStream._BackPressuredStorage();
  (*(v10 + 16))(&v15, v16, v9);
  v11 = swift_allocObject();
  sub_24DD213F0(v16);
  v12 = *(*v11 + 80);
  type metadata accessor for BufferedStream.Source._Backing();
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  sub_24DD21038(v11, a1);
  *a2 = v13;
}

uint64_t sub_24DD20FF8(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_24DD213F0(a1);
  return v2;
}

uint64_t sub_24DD21038@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(*a1 + 80);
  type metadata accessor for BufferedStream._Backing();
  result = swift_allocObject();
  *(result + 16) = a1;
  *a2 = result;
  return result;
}

uint64_t sub_24DD2108C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[3];
  if (!v5)
  {
LABEL_5:
    v11 = *(a4 + 16);
    sub_24DD4B074();
    swift_getWitnessTable();
    sub_24DD4B6D4();
    swift_getWitnessTable();
    result = sub_24DD4B3E4();
    v12 = v4[2];
    v13 = __OFADD__(v12, result);
    v10 = v12 + result;
    if (v13)
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  v6 = v4[4];
  MEMORY[0x28223BE20](a1);
  v14 = *(v7 + 16);
  sub_24DD4B074();

  swift_getWitnessTable();
  sub_24DD4B6D4();
  swift_getWitnessTable();
  sub_24DD4B264();
  result = sub_24DD1C134(v5);
  v9 = v4[2];
  v10 = v9 + v15;
  if (__OFADD__(v9, v15))
  {
    __break(1u);
    goto LABEL_5;
  }

LABEL_6:
  v4[2] = v10;
  if ((v10 & 0x8000000000000000) == 0)
  {
    return v10 < v4[1];
  }

  __break(1u);
LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_24DD21270(uint64_t result)
{
  v2 = v1;
  v3 = v1[3];
  if (!v3)
  {
LABEL_5:
    v8 = v2 + 2;
    v11 = v2[2];
    v9 = __OFSUB__(v11, 1);
    v10 = v11 - 1;
    if (v9)
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  v4 = result;
  v5 = v2[4];

  v6 = v3(v4);
  result = sub_24DD1C134(v3);
  v8 = v2 + 2;
  v7 = v2[2];
  v9 = __OFSUB__(v7, v6);
  v10 = v7 - v6;
  if (v9)
  {
    __break(1u);
    goto LABEL_5;
  }

LABEL_6:
  *v8 = v10;
  if ((v10 & 0x8000000000000000) == 0)
  {
    return v10 < *v2;
  }

  __break(1u);
LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_24DD21310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = *v4;
  v13 = v4[1];
  v14 = *(v4 + 4);
  v8 = *(a4 + 16);
  v9 = type metadata accessor for BufferedStream._WatermarkBackPressureStrategy();
  v10 = sub_24DD2108C(a1, a2, a3, v9);
  *v4 = v12;
  v4[1] = v13;
  *(v4 + 4) = v14;
  return v10 & 1;
}

uint64_t sub_24DD2139C(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = *(v1 + 4);
  v2 = sub_24DD21270(a1);
  *v1 = v4;
  v1[1] = v5;
  *(v1 + 4) = v6;
  return v2 & 1;
}

void *sub_24DD213F0(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = type metadata accessor for BufferedStream._StateMachine();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  sub_24DD214F0(a1, &v11 - v7);
  v9 = sub_24DD49EF8();
  (*(v5 + 8))(v8, v4);
  v1[2] = v9;
  return v1;
}

uint64_t sub_24DD214F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + *(type metadata accessor for BufferedStream._StateMachine() + 28)) = 0;
  v4 = type metadata accessor for BufferedStream._InternalBackPressureStrategy();
  (*(*(v4 - 8) + 32))(v8, a1, v4);
  v5 = v9;
  v6 = v8[1];
  *a2 = v8[0];
  *(a2 + 16) = v6;
  *(a2 + 32) = v5;
  *(a2 + 40) = 0;
  type metadata accessor for BufferedStream._StateMachine._State();
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_24DD215AC(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = type metadata accessor for BufferedStream._StateMachine._State.Streaming();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v35 - v7;
  v9 = type metadata accessor for BufferedStream._StateMachine._State();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v35 - v12;
  (*(v10 + 16))(&v35 - v12, v2, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v20 = *v13;
      v22 = *(v13 + 1);
      v21 = *(v13 + 2);
      v18 = *(v13 + 3);
      v23 = *(v13 + 4);
      if (v20 == 1)
      {

        goto LABEL_8;
      }

      (*(v10 + 8))(v2, v9);
      *v2 = 0;
      swift_storeEnumTagMultiPayload();
      sub_24DD1CA8C(v18);

      v24 = v18;
LABEL_15:
      sub_24DD1C134(v24);
      return v18;
    }

    if (EnumCaseMultiPayload == 3)
    {
      return 0;
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v15 = *(v13 + 3);
      v16 = *(v13 + 4);
      v17 = v13[40];
      v18 = *(v13 + 6);
      v19 = *(v13 + 7);
      if (v17 == 1)
      {
        sub_24DD1C134(v15);
LABEL_8:
        sub_24DD1C134(v18);
        return 0;
      }

      (*(v10 + 8))(v2, v9);
      *v2 = 0;
      swift_storeEnumTagMultiPayload();
      v24 = v15;
      goto LABEL_15;
    }

    (*(v5 + 32))(v8, v13, v4);
    if (v8[40] == 1)
    {
      (*(v5 + 8))(v8, v4);
      return 0;
    }

    (*(v10 + 8))(v2, v9);
    *v2 = 0;
    swift_storeEnumTagMultiPayload();
    v25 = *&v8[*(v4 + 44)];
    v26 = v25[3];
    v18 = MEMORY[0x277D84F90];
    if (!v26)
    {
LABEL_27:
      v33 = *(v8 + 7);
      sub_24DD1CA8C(*(v8 + 6));
      (*(v5 + 8))(v8, v4);
      return v18;
    }

    v35 = v5;
    v36 = v4;
    v38 = MEMORY[0x277D84F90];
    sub_24DD286D4(0, v26 & ~(v26 >> 63), 0);
    if ((v26 & 0x8000000000000000) == 0)
    {
      v27 = 0;
      v18 = v38;
      while (v27 < v25[3])
      {
        v28 = v25[4];
        if (v27 + v28 >= v25[2])
        {
          v29 = v25[2];
        }

        else
        {
          v29 = 0;
        }

        v30 = *&v25[3 * v27 + 6 + 3 * (v28 - v29)];
        v38 = v18;
        v32 = *(v18 + 16);
        v31 = *(v18 + 24);
        v37 = v30;

        if (v32 >= v31 >> 1)
        {
          sub_24DD286D4((v31 > 1), v32 + 1, 1);
          v18 = v38;
        }

        ++v27;
        *(v18 + 16) = v32 + 1;
        *(v18 + 16 * v32 + 32) = v37;
        if (v26 == v27)
        {
          v5 = v35;
          v4 = v36;
          goto LABEL_27;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  result = sub_24DD4B5B4();
  __break(1u);
  return result;
}

uint64_t sub_24DD21A18(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *))
{
  v4 = a1;
  v5 = a2 & 1;
  return a3(&v4);
}

uint64_t sub_24DD21A58(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = type metadata accessor for BufferedStream._StateMachine._State.Streaming();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v24 - v6;
  v8 = type metadata accessor for BufferedStream._StateMachine._State();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - v11;
  (*(v9 + 16))(&v24 - v11, v1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      if (*v12 != 1)
      {
        v21 = *(v12 + 3);
        v20 = *(v12 + 4);
        v25 = *(v12 + 8);
        (*(v9 + 8))(v1, v8);
        *v1 = 1;
        *(v1 + 8) = v25;
        *(v1 + 24) = v21;
        *(v1 + 32) = v20;
        return swift_storeEnumTagMultiPayload();
      }
    }

    else if (EnumCaseMultiPayload == 3 && *v12 != 1)
    {
      (*(v9 + 8))(v1, v8);
      *v1 = 1;
      return swift_storeEnumTagMultiPayload();
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v22 = *(v4 + 32);
    v22(v7, v12, v3);
    if (v7[40] != 1)
    {
      v7[40] = 1;
      (*(v9 + 8))(v1, v8);
      v22(v1, v7, v3);
      return swift_storeEnumTagMultiPayload();
    }
  }

  else if (v12[40] != 1)
  {
    v15 = *(v12 + 6);
    v14 = *(v12 + 7);
    v16 = *(v12 + 4);
    v17 = *(v9 + 8);
    v18 = *v12;
    v24 = *(v12 + 1);
    v25 = v18;
    v17(v1, v8);
    v19 = v24;
    *v1 = v25;
    *(v1 + 16) = v19;
    *(v1 + 32) = v16;
    *(v1 + 40) = 1;
    *(v1 + 41) = *v26;
    *(v1 + 44) = *&v26[3];
    *(v1 + 48) = v15;
    *(v1 + 56) = v14;
    return swift_storeEnumTagMultiPayload();
  }

  result = sub_24DD4B5B4();
  __break(1u);
  return result;
}

uint64_t sub_24DD21E2C(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = type metadata accessor for BufferedStream._StateMachine._State.Streaming();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v33 - v7;
  v9 = type metadata accessor for BufferedStream._StateMachine._State();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v33 - v12;
  (*(v10 + 16))(&v33 - v12, v2, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      if (*v13 == 1)
      {
        v15 = *(v13 + 3);
        v20 = *(v13 + 4);
        v22 = *(v13 + 1);
        v21 = *(v13 + 2);
        (*(v10 + 8))(v2, v9);
        *v2 = 1;
        swift_storeEnumTagMultiPayload();
        sub_24DD1CA8C(v15);

        v19 = v15;
        goto LABEL_8;
      }
    }

    else if (EnumCaseMultiPayload == 3)
    {
      return 0;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    (*(v5 + 32))(v8, v13, v4);
    if (v8[40] == 1)
    {
      (*(v10 + 8))(v2, v9);
      *v2 = 1;
      swift_storeEnumTagMultiPayload();
      v23 = *&v8[*(v4 + 44)];
      v24 = v23[3];
      v15 = MEMORY[0x277D84F90];
      if (!v24)
      {
LABEL_23:
        v31 = *(v8 + 7);
        sub_24DD1CA8C(*(v8 + 6));
        (*(v5 + 8))(v8, v4);
        return v15;
      }

      v33 = v5;
      v34 = v4;
      v36 = MEMORY[0x277D84F90];
      sub_24DD286D4(0, v24 & ~(v24 >> 63), 0);
      if ((v24 & 0x8000000000000000) == 0)
      {
        v25 = 0;
        v15 = v36;
        while (v25 < v23[3])
        {
          v26 = v23[4];
          if (v25 + v26 >= v23[2])
          {
            v27 = v23[2];
          }

          else
          {
            v27 = 0;
          }

          v28 = *&v23[3 * v25 + 6 + 3 * (v26 - v27)];
          v36 = v15;
          v30 = *(v15 + 16);
          v29 = *(v15 + 24);
          v35 = v28;

          if (v30 >= v29 >> 1)
          {
            sub_24DD286D4((v29 > 1), v30 + 1, 1);
            v15 = v36;
          }

          ++v25;
          *(v15 + 16) = v30 + 1;
          *(v15 + 16 * v30 + 32) = v35;
          if (v24 == v25)
          {
            v5 = v33;
            v4 = v34;
            goto LABEL_23;
          }
        }

        __break(1u);
      }

      __break(1u);
    }
  }

  else if (v13[40] == 1)
  {
    v15 = *(v13 + 6);
    v16 = *(v13 + 7);
    v18 = *(v13 + 3);
    v17 = *(v13 + 4);
    (*(v10 + 8))(v2, v9);
    *v2 = 1;
    swift_storeEnumTagMultiPayload();
    v19 = v18;
LABEL_8:
    sub_24DD1C134(v19);
    return v15;
  }

  result = sub_24DD4B5B4();
  __break(1u);
  return result;
}

uint64_t sub_24DD222AC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 16);
  sub_24DD4B4B4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1AF298, &qword_24DD4C1C0);
  v6 = sub_24DD4B324();
  v67 = sub_24DD4B4B4();
  v7 = *(v67 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v67);
  v10 = v65 - v9;
  v11 = type metadata accessor for BufferedStream._StateMachine._State.Streaming();
  v69 = *(v11 - 8);
  v12 = *(v69 + 64);
  MEMORY[0x28223BE20](v11);
  v68 = v65 - v13;
  v14 = type metadata accessor for BufferedStream._StateMachine._State();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v65 - v17;
  (*(v15 + 16))(v65 - v17, v3, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      (*(v15 + 8))(v18, v14);
    }

    else if (EnumCaseMultiPayload != 3)
    {
LABEL_43:
      result = sub_24DD4B5B4();
      __break(1u);
      return result;
    }

    v42 = type metadata accessor for BufferedStream._StateMachine.SourceDeinitializedAction();
    return (*(*(v42 - 8) + 56))(a2, 1, 1, v42);
  }

  v66 = a2;
  if (!EnumCaseMultiPayload)
  {
    v20 = *(v18 + 3);
    v21 = *(v18 + 4);
    v22 = v18[40];
    v24 = *(v18 + 6);
    v23 = *(v18 + 7);
    (*(v15 + 8))(v3, v14);
    *v3 = v22;
    swift_storeEnumTagMultiPayload();
    sub_24DD1C134(v20);
    if (v24)
    {
      v25 = v23;
    }

    else
    {
      v25 = 0;
    }

    v26 = v66;
    *v66 = v24;
    v26[1] = v25;
    v27 = type metadata accessor for BufferedStream._StateMachine.SourceDeinitializedAction();
    swift_storeEnumTagMultiPayload();
    return (*(*(v27 - 8) + 56))(v26, 0, 1, v27);
  }

  v29 = v5;
  v30 = v68;
  (*(v69 + 32))(v68, v18, v11);
  *&v70 = *(v30 + 8);
  v71 = v70;
  v65[1] = v29;
  sub_24DD4B074();
  v31 = v11;
  swift_getWitnessTable();
  v32 = sub_24DD4B3F4();
  v65[0] = v11;
  if (v32)
  {
    (*(v15 + 8))(v3, v14);
    *v3 = v30[40];
    swift_storeEnumTagMultiPayload();
    (*(v7 + 16))(v66, &v30[*(v11 + 40)], v67);
    v33 = *&v30[*(v11 + 44)];
    v34 = v33[3];
    v35 = MEMORY[0x277D84F90];
    if (!v34)
    {
LABEL_35:
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B00C0, &qword_24DD4D260);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B00C8, &qword_24DD4D268);
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v57 = v66;
      v58 = (v66 + *(TupleTypeMetadata3 + 64));
      *(v66 + *(TupleTypeMetadata3 + 48)) = v35;
      v59 = v68;
      v60 = *(v68 + 6);
      v61 = *(v68 + 7);
      *v58 = v60;
      v58[1] = v61;
      v62 = type metadata accessor for BufferedStream._StateMachine.SourceDeinitializedAction();
      swift_storeEnumTagMultiPayload();
      (*(*(v62 - 8) + 56))(v57, 0, 1, v62);
      sub_24DD1CA8C(v60);
      return (*(v69 + 8))(v59, v65[0]);
    }

    v71 = MEMORY[0x277D84F90];
    sub_24DD286D4(0, v34 & ~(v34 >> 63), 0);
    if (v34 < 0)
    {
      goto LABEL_41;
    }

    v36 = 0;
    v35 = v71;
    while (v36 < v33[3])
    {
      v37 = v33[4];
      if (v36 + v37 >= v33[2])
      {
        v38 = v33[2];
      }

      else
      {
        v38 = 0;
      }

      v39 = *&v33[3 * v36 + 6 + 3 * (v37 - v38)];
      v71 = v35;
      v40 = *(v35 + 16);
      v41 = *(v35 + 24);
      v70 = v39;

      if (v40 >= v41 >> 1)
      {
        sub_24DD286D4((v41 > 1), v40 + 1, 1);
        v35 = v71;
      }

      ++v36;
      *(v35 + 16) = v40 + 1;
      *(v35 + 16 * v40 + 32) = v70;
      if (v34 == v36)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
    goto LABEL_39;
  }

  v43 = v67;
  (*(v7 + 16))(v10, &v30[*(v31 + 40)], v67);
  v44 = (*(*(v6 - 8) + 48))(v10, 1, v6);
  (*(v7 + 8))(v10, v43);
  if (v44 != 1)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  (*(v15 + 8))(v3, v14);
  v45 = *(v30 + 6);
  v46 = *(v30 + 7);
  *v3 = v30[40];
  *(v3 + 1) = *v72;
  *(v3 + 4) = *&v72[3];
  *(v3 + 8) = v70;
  *(v3 + 16) = 0;
  *(v3 + 24) = v45;
  *(v3 + 32) = v46;
  swift_storeEnumTagMultiPayload();
  v47 = *&v30[*(v31 + 44)];
  v48 = v47[3];
  if (v48)
  {

    sub_24DD1CA8C(v45);
    v71 = MEMORY[0x277D84F90];
    sub_24DD286D4(0, v48 & ~(v48 >> 63), 0);
    if (v48 < 0)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v49 = 0;
    v50 = v71;
    while (v49 < v47[3])
    {
      v51 = v47[4];
      if (v49 + v51 >= v47[2])
      {
        v52 = v47[2];
      }

      else
      {
        v52 = 0;
      }

      v53 = *&v47[3 * v49 + 6 + 3 * (v51 - v52)];
      v71 = v50;
      v54 = *(v50 + 16);
      v55 = *(v50 + 24);
      v70 = v53;

      if (v54 >= v55 >> 1)
      {
        sub_24DD286D4((v55 > 1), v54 + 1, 1);
        v50 = v71;
      }

      ++v49;
      *(v50 + 16) = v54 + 1;
      *(v50 + 16 * v54 + 32) = v70;
      if (v48 == v49)
      {
        goto LABEL_37;
      }
    }

LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  sub_24DD1CA8C(v45);
  v50 = MEMORY[0x277D84F90];
LABEL_37:
  v63 = v66;
  *v66 = v50;
  v64 = type metadata accessor for BufferedStream._StateMachine.SourceDeinitializedAction();
  swift_storeEnumTagMultiPayload();
  (*(*(v64 - 8) + 56))(v63, 0, 1, v64);
  return (*(v69 + 8))(v68, v65[0]);
}

uint64_t sub_24DD22B3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, char *, uint64_t)@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v6 = v5;
  v137 = a4;
  v136 = a3;
  v135 = a1;
  v129 = a2;
  v8 = *(a2 + 16);
  v9 = sub_24DD4B4B4();
  v123 = *(v9 - 8);
  v10 = *(v123 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v126 = &v114 - v12;
  v128 = *(v8 - 8);
  v13 = *(v128 + 64);
  MEMORY[0x28223BE20](v11);
  v125 = &v114 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1AF298, &qword_24DD4C1C0);
  v124 = v9;
  v15 = sub_24DD4B324();
  v134 = *(v15 - 8);
  v16 = *(v134 + 64);
  MEMORY[0x28223BE20](v15);
  v127 = &v114 - v17;
  v18 = type metadata accessor for BufferedStream._StateMachine._State.Streaming();
  v138 = *(v18 - 8);
  v139 = v18;
  v19 = *(v138 + 64);
  MEMORY[0x28223BE20](v18);
  v132 = &v114 - v20;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v21 = sub_24DD4B4B4();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v114 - v23;
  v140 = v15;
  v131 = sub_24DD4B4B4();
  v130 = *(v131 - 8);
  v25 = *(v130 + 64);
  v26 = MEMORY[0x28223BE20](v131);
  v28 = &v114 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v114 - v29;
  v31 = type metadata accessor for BufferedStream._StateMachine._State();
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v114 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v37 = &v114 - v36;
  v141 = v38;
  (*(v38 + 16))(&v114 - v36, v6, v31);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v121 = v24;
    v122 = a5;
    if (!EnumCaseMultiPayload)
    {
      v139 = v6;
      v40 = *(v37 + 4);
      LODWORD(v131) = v37[40];
      v41 = *(v37 + 6);
      v42 = *(v37 + 7);
      v43 = *(v37 + 1);
      v145[0] = *v37;
      v145[1] = v43;
      v146 = v40;
      v138 = v41;
      v132 = v42;
      sub_24DD1CA8C(v41);
      v144 = sub_24DD4B064();
      sub_24DD4B074();
      sub_24DD4B034();
      swift_getWitnessTable();
      sub_24DD4B144();
      v45 = v147;
      v44 = v148;
      v46 = v149;
      v47 = type metadata accessor for BufferedStream._InternalBackPressureStrategy();
      v48 = sub_24DD21310(v45, v44, v46, v47);

      v49 = 0;
      if (v48)
      {
LABEL_6:
        v137 = v49;
        v51 = *(v47 - 8);
        (*(v51 + 32))(&v147, v145, v47);
        v52 = v144;
        (*(v134 + 56))(v30, 1, 1, v140);
        (*(v51 + 16))(&v142, &v147, v47);

        v53 = *sub_24DD4B024();
        swift_retain_n();
        v120 = v8;
        v54 = v48 & 1;
        v55 = v138;
        sub_24DD28070(&v147, v131, v138, v132, v52, v30, v53, v53, v35, v54);
        sub_24DD1C134(v55);

        (*(v51 + 8))(&v147, v47);
        swift_storeEnumTagMultiPayload();
        (*(v141 + 40))(v139, v35, v31);
        v142 = v137;
        v143 = v54;
        v56 = v121;
        (*(*(TupleTypeMetadata2 - 8) + 56))(v121, 1, 1);
        return sub_24DD28248(&v142, v56, v120, v122);
      }

      v50 = *(v129 + 28);
      v49 = *(v139 + v50);
      if (v49 != -1)
      {
        *(v139 + v50) = v49 + 1;
        goto LABEL_6;
      }

      __break(1u);
      goto LABEL_29;
    }

    v58 = v139;
    v59 = v132;
    (*(v138 + 32))(v132, v37, v139);
    v60 = *(v141 + 8);
    v141 += 8;
    v119 = v60;
    v60(v6, v31);
    swift_storeEnumTagMultiPayload();
    sub_24DD28978(sub_24DD2896C, 0, *(v59 + 64), MEMORY[0x277CFB918], v8, MEMORY[0x277D84A98], MEMORY[0x277D83B88], MEMORY[0x277D84AC0], v113);
    v61 = v147;
    v62 = sub_24DD4B074();
    sub_24DD4B034();
    *&v145[0] = v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0108, &qword_24DD4D2D8);
    swift_getWitnessTable();
    sub_24DD2BFA4();
    v136 = v62;
    v137 = v59 + 64;
    sub_24DD4B134();
    v63 = v147;
    v64 = v148;
    v65 = v6;
    v66 = v149;
    v135 = type metadata accessor for BufferedStream._InternalBackPressureStrategy();
    v67 = sub_24DD21310(v63, v64, v66, v135);

    v117 = *(v58 + 52);
    *(v59 + v117) = v67 & 1;
    v68 = v130;
    v69 = *(v130 + 16);
    v118 = *(v58 + 40);
    v70 = v131;
    v69(v28, v59 + v118, v131);
    v71 = v8;
    v72 = v134;
    v73 = v140;
    if ((*(v134 + 48))(v28, 1, v140) != 1)
    {
      v116 = v67;
      v78 = v119;
      v79 = v72;
      v81 = *(v72 + 32);
      v80 = v72 + 32;
      v82 = v127;
      v115 = v81;
      v81(v127, v28, v73);
      v83 = v126;
      v84 = v73;
      sub_24DD4B054();
      v85 = v128;
      if ((*(v128 + 48))(v83, 1, v71) != 1)
      {
        v137 = v80;
        v96 = *(v85 + 32);
        v97 = v83;
        v98 = v125;
        v120 = v71;
        v128 = v85 + 32;
        v136 = v96;
        v96(v125, v97, v71);
        v99 = v132;
        v100 = sub_24DD2139C(v98);
        *(v99 + v117) = v100 & 1;
        v101 = v118;
        (*(v130 + 8))(v99 + v118, v131);
        (*(v79 + 56))(v99 + v101, 1, 1, v84);
        v78(v65, v31);
        v102 = v99;
        v104 = v138;
        v103 = v139;
        (*(v138 + 16))(v65, v99, v139);
        swift_storeEnumTagMultiPayload();
        if (v100)
        {
          v105 = 0;
          v106 = v122;
        }

        else
        {
          v108 = *(v129 + 28);
          v105 = *(v65 + v108);
          v106 = v122;
          if (v105 == -1)
          {
LABEL_31:
            __break(1u);
            goto LABEL_32;
          }

          *(v65 + v108) = v105 + 1;
        }

        v109 = v120;
        v147 = v105;
        LOBYTE(v148) = v100 & 1;
        v110 = TupleTypeMetadata2;
        v111 = *(TupleTypeMetadata2 + 48);
        v112 = v121;
        v115(v121, v127, v140);
        v136(v112 + v111, v125, v109);
        (*(*(v110 - 8) + 56))(v112, 0, 1, v110);
        sub_24DD28248(&v147, v112, v109, v106);
        return (*(v104 + 8))(v102, v103);
      }

      (*(v79 + 8))(v82, v84);
      (*(v123 + 8))(v83, v124);
      v86 = v65;
      v78(v65, v31);
      v88 = v138;
      v87 = v139;
      v89 = v132;
      (*(v138 + 16))(v86, v132, v139);
      swift_storeEnumTagMultiPayload();
      v90 = v122;
      v91 = v116;
      if (v116)
      {
        v92 = 0;
        v93 = v121;
      }

      else
      {
        v107 = *(v129 + 28);
        v92 = *(v86 + v107);
        v93 = v121;
        if (v92 == -1)
        {
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

        *(v86 + v107) = v92 + 1;
      }

      v147 = v92;
      LOBYTE(v148) = v91 & 1;
      (*(*(TupleTypeMetadata2 - 8) + 56))(v93, 1, 1);
      sub_24DD28248(&v147, v93, v71, v90);
      return (*(v88 + 8))(v89, v87);
    }

    (*(v68 + 8))(v28, v70);
    v119(v65, v31);
    v75 = v138;
    v74 = v139;
    (*(v138 + 16))(v65, v59, v139);
    swift_storeEnumTagMultiPayload();
    v76 = v122;
    if (v67)
    {
      v77 = 0;
    }

    else
    {
      v94 = *(v129 + 28);
      v77 = *(v65 + v94);
      if (v77 == -1)
      {
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      *(v65 + v94) = v77 + 1;
    }

    v147 = v77;
    LOBYTE(v148) = v67 & 1;
    v95 = v121;
    (*(*(TupleTypeMetadata2 - 8) + 56))(v121, 1, 1);
    sub_24DD28248(&v147, v95, v71, v76);
    return (*(v75 + 8))(v59, v74);
  }

  if (EnumCaseMultiPayload == 2)
  {
    (*(v141 + 8))(v37, v31);
LABEL_13:
    type metadata accessor for BufferedStream._StateMachine.WriteAction();
    return swift_storeEnumTagMultiPayload();
  }

  if (EnumCaseMultiPayload == 3)
  {
    goto LABEL_13;
  }

LABEL_32:
  result = sub_24DD4B5B4();
  __break(1u);
  return result;
}

uint64_t sub_24DD23AE0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = *(a4 + 16);
  v10 = type metadata accessor for BufferedStream._StateMachine._State.Streaming();
  v11 = *(v10 - 1);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v38 - v13;
  v15 = type metadata accessor for BufferedStream._StateMachine._State();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = *a1;
  (*(v16 + 16))(&v38 - v18, v5, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v42 = a2;
    v43 = a3;
    if (EnumCaseMultiPayload == 1)
    {
      v40 = *(v11 + 32);
      v41 = v11 + 32;
      v40(v14, v19, v10);
      v22 = v10[12];
      v23 = *&v14[v22];
      v24 = v23[3];
      if (v24)
      {
        v25 = 0;
        while (1)
        {
          if ((v24 & ~(v24 >> 63)) == v25)
          {
            __break(1u);
            goto LABEL_29;
          }

          v26 = v23[4];
          v27 = v25 + v26 >= v23[2] ? v23[2] : 0;
          if (v23[v25 + 5 + v26 - v27] == v20)
          {
            break;
          }

          if (v24 == ++v25)
          {
            goto LABEL_13;
          }
        }

        v35 = *(v16 + 8);
        v35(v5, v15);
        swift_storeEnumTagMultiPayload();
        if (v25 >= v23[3])
        {
          goto LABEL_30;
        }

        v36 = *&v14[v22];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_24DD4910C();
        }

        v37 = *&v14[v22];
        if (v25 < *(v37 + 24))
        {
          sub_24DD2987C(v25, v25 + 1, (v37 + 16), v37 + 40, v44);

          sub_24DD29C34(v25, v25 + 1, (v37 + 16), (v37 + 40));

          v35(v5, v15);
          (*(v11 + 16))(v5, v14, v10);
          swift_storeEnumTagMultiPayload();
          sub_24DD4B334();
          sub_24DD2BA94();
          swift_allocError();
          sub_24DD4B104();
          (*(v11 + 8))(v14, v10);

          return v42;
        }
      }

      else
      {
LABEL_13:
        if (v14[v10[13]] == 1)
        {
          (*(v11 + 8))(v14, v10);

          return v42;
        }

        v39 = *(v16 + 8);
        v39(v5, v15);
        swift_storeEnumTagMultiPayload();
        v29 = swift_allocObject();
        *(v29 + 16) = v42;
        *(v29 + 24) = v43;
        v30 = v10[11];
        v31 = *(*&v14[v30] + 24);
        v32 = v31 + 1;
        if (!__OFADD__(v31, 1))
        {

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v34 = *&v14[v30];
          if (*(v34 + 16) < v32 || (isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_24DD28A7C(isUniquelyReferenced_nonNull_native, v32);
            v34 = *&v14[v30];
          }

          sub_24DD29A5C((v34 + 16), v34 + 40, v20, sub_24DD2BF1C, v29);

          v39(v5, v15);
          v40(v5, v14, v10);
          swift_storeEnumTagMultiPayload();
          return 0;
        }

LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
      }

      __break(1u);
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      (*(v16 + 8))(v19, v15);
LABEL_16:
      sub_24DD1C09C();
      swift_allocError();

      return a2;
    }

    if (EnumCaseMultiPayload == 3)
    {
      goto LABEL_16;
    }
  }

  result = sub_24DD4B5B4();
  __break(1u);
  return result;
}

uint64_t (*sub_24DD24060(uint64_t *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *(a2 + 16);
  v6 = type metadata accessor for BufferedStream._StateMachine._State.Streaming();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v41 - v9;
  v11 = type metadata accessor for BufferedStream._StateMachine._State();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v41 - v14;
  v16 = *a1;
  (*(v12 + 16))(&v41 - v14, v3, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v44 = *(v7 + 32);
      v44(v10, v15, v6);
      v18 = *(v6 + 44);
      v19 = *&v10[v18];
      v20 = v19[3];
      v45 = v7 + 32;
      if (v20)
      {
        v21 = 0;
        while (1)
        {
          if ((v20 & ~(v20 >> 63)) == v21)
          {
            __break(1u);
            goto LABEL_31;
          }

          v22 = v19[4];
          v23 = v21 + v22 >= v19[2] ? v19[2] : 0;
          if (v19[3 * v21 + 5 + 3 * (v22 - v23)] == v16)
          {
            break;
          }

          if (v20 == ++v21)
          {
            goto LABEL_13;
          }
        }

        v32 = *(v12 + 8);
        v32(v3, v11);
        swift_storeEnumTagMultiPayload();
        if (v21 >= v19[3])
        {
          goto LABEL_32;
        }

        v33 = *&v10[v18];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_24DD491D0();
        }

        v43 = v32;
        v34 = *&v10[v18];
        if (v21 < *(v34 + 24))
        {
          v35 = *(v34 + 32);
          if (v35 + v21 >= *(v34 + 16))
          {
            v36 = *(v34 + 16);
          }

          else
          {
            v36 = 0;
          }

          v37 = v34 + 40 + 24 * (v35 - v36 + v21);
          v38 = *(v37 + 16);
          v42 = *(v37 + 8);

          sub_24DD29B38(v21, v21 + 1, (v34 + 16), (v34 + 40));

          v39 = swift_allocObject();
          v40 = v43;
          *(v39 + 16) = v42;
          *(v39 + 24) = v38;
          v40(v3, v11);
          v44(v3, v10, v6);
          swift_storeEnumTagMultiPayload();
          return sub_24DD2BD64;
        }
      }

      else
      {
LABEL_13:
        v24 = *(v12 + 8);
        v24(v3, v11);
        swift_storeEnumTagMultiPayload();
        v25 = *(v6 + 48);
        v26 = *(*&v10[v25] + 24);
        v27 = v26 + 1;
        if (!__OFADD__(v26, 1))
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v29 = *&v10[v25];
          if (*(v29 + 16) < v27 || (isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_24DD28EDC(isUniquelyReferenced_nonNull_native, v27);
            v29 = *&v10[v25];
          }

          sub_24DD29ADC((v29 + 16), v29 + 40, v16);
          v24(v3, v11);
          v44(v3, v10, v6);
          swift_storeEnumTagMultiPayload();
          return 0;
        }

LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
      }

      __break(1u);
    }

LABEL_34:
    result = sub_24DD4B5B4();
    __break(1u);
    return result;
  }

  if (EnumCaseMultiPayload == 2)
  {
    (*(v12 + 8))(v15, v11);
    return 0;
  }

  v31 = EnumCaseMultiPayload;
  result = 0;
  if (v31 != 3)
  {
    goto LABEL_34;
  }

  return result;
}

uint64_t sub_24DD24514@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v80 = a3;
  v6 = *(a2 + 16);
  sub_24DD4B4B4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1AF298, &qword_24DD4C1C0);
  v7 = sub_24DD4B324();
  v8 = sub_24DD4B4B4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v74 - v12;
  *&v82 = *(v7 - 8);
  v14 = *(v82 + 64);
  MEMORY[0x28223BE20](v11);
  v76 = &v74 - v15;
  v16 = type metadata accessor for BufferedStream._StateMachine._State.Streaming();
  v78 = *(v16 - 8);
  v79 = v16;
  v17 = *(v78 + 64);
  MEMORY[0x28223BE20](v16);
  v77 = &v74 - v18;
  v81 = v6;
  v19 = type metadata accessor for BufferedStream._StateMachine._State();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v74 - v25;
  (*(v20 + 16))(&v74 - v25, v4, v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      (*(v20 + 8))(v26, v19);
    }

    else if (EnumCaseMultiPayload != 3)
    {
LABEL_35:
      result = sub_24DD4B5B4();
      __break(1u);
      return result;
    }

    v57 = type metadata accessor for BufferedStream._StateMachine.FinishAction();
    return (*(*(v57 - 8) + 56))(v80, 1, 1, v57);
  }

  v75 = a1;
  if (!EnumCaseMultiPayload)
  {
    v28 = *(v26 + 3);
    v29 = *(v26 + 4);
    v30 = v26[40];
    v32 = *(v26 + 6);
    v31 = *(v26 + 7);
    v33 = sub_24DD4B064();
    *v24 = v30;
    *(v24 + 1) = v83;
    *(v24 + 1) = *(&v83 + 3);
    v34 = v75;
    *(v24 + 1) = v33;
    *(v24 + 2) = v34;
    *(v24 + 3) = v32;
    *(v24 + 4) = v31;
    swift_storeEnumTagMultiPayload();
    v35 = v34;
    sub_24DD1CA8C(v32);
    (*(v20 + 40))(v4, v24, v19);
    sub_24DD1C134(v28);
    if (v32)
    {
      v36 = v31;
    }

    else
    {
      v36 = 0;
    }

    v37 = v80;
    *v80 = v32;
    v37[1] = v36;
    v38 = type metadata accessor for BufferedStream._StateMachine.FinishAction();
    swift_storeEnumTagMultiPayload();
    return (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
  }

  v40 = v77;
  v41 = v79;
  (*(v78 + 32))(v77, v26, v79);
  (*(v9 + 16))(v13, &v40[*(v41 + 40)], v8);
  v42 = v82;
  if ((*(v82 + 48))(v13, 1, v7) == 1)
  {
    (*(v9 + 8))(v13, v8);
    (*(v20 + 8))(v4, v19);
    v43 = *(v40 + 7);
    v44 = *(v40 + 8);
    v45 = *(v40 + 6);
    *v4 = v40[40];
    *(v4 + 1) = *v84;
    *(v4 + 4) = *&v84[3];
    v46 = v75;
    *(v4 + 8) = v44;
    *(v4 + 16) = v46;
    *(v4 + 24) = v45;
    *(v4 + 32) = v43;
    swift_storeEnumTagMultiPayload();
    v47 = *&v40[*(v41 + 44)];
    v48 = v47[3];
    if (v48)
    {
      v49 = v46;

      sub_24DD1CA8C(v45);
      v83 = MEMORY[0x277D84F90];
      sub_24DD286D4(0, v48 & ~(v48 >> 63), 0);
      if (v48 < 0)
      {
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v50 = 0;
      v51 = v83;
      while (v50 < v47[3])
      {
        v52 = v47[4];
        if (v50 + v52 >= v47[2])
        {
          v53 = v47[2];
        }

        else
        {
          v53 = 0;
        }

        v54 = *&v47[3 * v50 + 6 + 3 * (v52 - v53)];
        v83 = v51;
        v55 = *(v51 + 16);
        v56 = *(v51 + 24);
        v82 = v54;

        if (v55 >= v56 >> 1)
        {
          sub_24DD286D4((v56 > 1), v55 + 1, 1);
          v51 = v83;
        }

        ++v50;
        *(v51 + 16) = v55 + 1;
        *(v51 + 16 * v55 + 32) = v82;
        if (v48 == v50)
        {
          v70 = v79;
          goto LABEL_30;
        }
      }

      __break(1u);
      goto LABEL_32;
    }

    v70 = v41;
    v71 = v46;

    sub_24DD1CA8C(v45);
    v51 = MEMORY[0x277D84F90];
LABEL_30:
    v72 = v80;
    *v80 = v51;
    v73 = type metadata accessor for BufferedStream._StateMachine.FinishAction();
    swift_storeEnumTagMultiPayload();
    (*(*(v73 - 8) + 56))(v72, 0, 1, v73);
    return (*(v78 + 8))(v77, v70);
  }

  else
  {
    v58 = v42 + 32;
    v59 = *(v42 + 32);
    *&v82 = v58;
    v59(v76, v13, v7);
    v83 = *(v40 + 8);
    sub_24DD4B074();
    swift_getWitnessTable();
    if ((sub_24DD4B3F4() & 1) == 0)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if (*(*&v40[*(v79 + 44)] + 24))
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    (*(v20 + 8))(v4, v19);
    *v4 = v40[40];
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B00D8, &unk_24DD4D290);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B00C8, &qword_24DD4D268);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v61 = *(TupleTypeMetadata3 + 48);
    v62 = v80;
    v63 = (v80 + *(TupleTypeMetadata3 + 64));
    v59(v80, v76, v7);
    v64 = v75;
    *(v62 + v61) = v75;
    v65 = *(v40 + 6);
    v66 = *(v40 + 7);
    if (v65)
    {
      v67 = *(v40 + 7);
    }

    else
    {
      v67 = 0;
    }

    *v63 = v65;
    v63[1] = v67;
    v68 = type metadata accessor for BufferedStream._StateMachine.FinishAction();
    swift_storeEnumTagMultiPayload();
    (*(*(v68 - 8) + 56))(v62, 0, 1, v68);
    v69 = v64;
    sub_24DD1CA8C(v65);
    return (*(v78 + 8))(v40, v79);
  }
}

uint64_t sub_24DD24DEC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v97 = a2;
  v3 = *(a1 + 16);
  v4 = sub_24DD4B4B4();
  v89 = *(v4 - 8);
  v5 = *(v89 + 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v88 = &v87 - v10;
  v94 = *(v3 - 8);
  v11 = *(v94 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v87 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v91 = &v87 - v14;
  v15 = type metadata accessor for BufferedStream._StateMachine._State.Streaming();
  v16 = *(v15 - 8);
  v92 = v15;
  v93 = v16;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v90 = &v87 - v18;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1AF298, &qword_24DD4C1C0);
  *&v99 = v4;
  v19 = sub_24DD4B324();
  v20 = sub_24DD4B4B4();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v87 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v87 - v26;
  v98 = v3;
  v28 = type metadata accessor for BufferedStream._StateMachine._State();
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v87 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v34 = &v87 - v33;
  v95 = v2;
  v96 = v35;
  (*(v35 + 16))(&v87 - v33, v2, v28);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      LODWORD(v93) = *v34;
      v42 = *(v34 + 2);
      v43 = *(v34 + 3);
      v44 = *(v34 + 4);
      v101[0] = *(v34 + 1);
      v45 = v95;
      v46 = *(v96 + 8);
      v46(v95, v28);
      swift_storeEnumTagMultiPayload();
      v47 = v98;
      sub_24DD4B074();
      sub_24DD4B054();
      v48 = v94;
      if ((*(v94 + 48))(v8, 1, v47) == 1)
      {

        (*(v89 + 1))(v8, v99);
        v46(v45, v28);
        *v45 = v93;
        swift_storeEnumTagMultiPayload();
        if (v43)
        {
          v49 = v44;
        }

        else
        {
          v49 = 0;
        }

        v50 = v97;
        *v97 = v42;
        v50[1] = v43;
        v50[2] = v49;
        type metadata accessor for BufferedStream._StateMachine.NextAction();
        return swift_storeEnumTagMultiPayload();
      }

      *&v99 = v43;
      v63 = *(v48 + 32);
      v96 = v44;
      v64 = v87;
      v63(v87, v8, v47);
      v46(v45, v28);
      v65 = v101[0];
      *v45 = v93;
      *(v45 + 8) = v65;
      *(v45 + 16) = v42;
      v66 = v96;
      *(v45 + 24) = v99;
      *(v45 + 32) = v66;
      swift_storeEnumTagMultiPayload();
      v63(v97, v64, v47);
LABEL_29:
      type metadata accessor for BufferedStream._StateMachine.NextAction();
      return swift_storeEnumTagMultiPayload();
    }

    if (EnumCaseMultiPayload == 3)
    {
      goto LABEL_29;
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v37 = type metadata accessor for BufferedStream._InternalBackPressureStrategy();
      v38 = *(v37 - 8);
      (*(v38 + 32))(v101, v34, v37);
      LODWORD(v99) = v34[40];
      v40 = *(v34 + 6);
      v39 = *(v34 + 7);
      (*(v38 + 16))(v100, v101, v37);
      sub_24DD1CA8C(v40);
      v94 = sub_24DD4B064();
      (*(*(v19 - 8) + 56))(v27, 1, 1, v19);
      v41 = *sub_24DD4B024();
      swift_retain_n();
      sub_24DD28070(v101, v99, v40, v39, v94, v27, v41, v41, v32, 0);
      (*(v38 + 8))(v101, v37);
      sub_24DD1C134(v40);
      swift_storeEnumTagMultiPayload();
      (*(v96 + 40))(v95, v32, v28);
      goto LABEL_29;
    }

    v51 = v92;
    v52 = *(v93 + 32);
    v53 = v90;
    v93 += 32;
    v87 = v52;
    (v52)(v90, v34, v92);
    (*(v21 + 16))(v25, &v53[*(v51 + 40)], v20);
    LODWORD(v51) = (*(*(v19 - 8) + 48))(v25, 1, v19);
    (*(v21 + 8))(v25, v20);
    if (v51 == 1)
    {
      v54 = v95;
      v55 = v96 + 8;
      v56 = *(v96 + 8);
      v56(v95, v28);
      swift_storeEnumTagMultiPayload();
      v57 = v98;
      sub_24DD4B074();
      v58 = v88;
      sub_24DD4B054();
      v59 = v94;
      v60 = (*(v94 + 48))(v58, 1, v57);
      v61 = v91;
      v62 = v53;
      if (v60 == 1)
      {
        (*(v89 + 1))(v58, v99);
        v56(v54, v28);
        (v87)(v54, v53, v92);
        swift_storeEnumTagMultiPayload();
        goto LABEL_29;
      }

      v67 = *(v59 + 32);
      v94 = v59 + 32;
      v67(v91, v58, v57);
      type metadata accessor for BufferedStream._InternalBackPressureStrategy();
      v68 = sub_24DD2139C(v61);
      v69 = v92;
      v62[*(v92 + 52)] = v68 & 1;
      if ((v68 & 1) == 0)
      {
        v56(v54, v28);
        (v87)(v54, v62, v69);
        swift_storeEnumTagMultiPayload();
        v67(v97, v61, v57);
        goto LABEL_29;
      }

      v89 = v67;
      v88 = v56;
      v70 = *(v69 + 44);
      v71 = v70;
      v72 = *&v62[v70];
      v73 = v72[3];
      if (!v73)
      {
        v81 = *&v62[v70];

        v75 = MEMORY[0x277D84F90];
LABEL_31:
        *&v62[v71] = *sub_24DD4B024();

        v82 = v95;
        (v88)(v95, v28);
        (v87)(v82, v62, v69);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B00C0, &qword_24DD4D260);
        v83 = v98;
        v84 = *(swift_getTupleTypeMetadata2() + 48);
        v85 = v97;
        v89(v97, v61, v83);
        *(v85 + v84) = v75;
        type metadata accessor for BufferedStream._StateMachine.NextAction();
        return swift_storeEnumTagMultiPayload();
      }

      v96 = v55;
      v101[0] = MEMORY[0x277D84F90];
      sub_24DD286D4(0, v73 & ~(v73 >> 63), 0);
      if ((v73 & 0x8000000000000000) == 0)
      {
        v74 = 0;
        v75 = v101[0];
        while (v74 < v72[3])
        {
          v76 = v72[4];
          if (v74 + v76 >= v72[2])
          {
            v77 = v72[2];
          }

          else
          {
            v77 = 0;
          }

          v78 = *&v72[3 * v74 + 6 + 3 * (v76 - v77)];
          v101[0] = v75;
          v79 = *(v75 + 16);
          v80 = *(v75 + 24);
          v99 = v78;

          if (v79 >= v80 >> 1)
          {
            sub_24DD286D4((v80 > 1), v79 + 1, 1);
            v75 = v101[0];
          }

          ++v74;
          *(v75 + 16) = v79 + 1;
          *(v75 + 16 * v79 + 32) = v99;
          if (v73 == v74)
          {

            v61 = v91;
            v69 = v92;
            v62 = v90;
            goto LABEL_31;
          }
        }

        __break(1u);
      }

      __break(1u);
    }
  }

  result = sub_24DD4B5B4();
  __break(1u);
  return result;
}

uint64_t sub_24DD25A00(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x2822009F8](sub_24DD25A48, 0, 0);
}

uint64_t sub_24DD25A48()
{
  v1 = v0[4];
  v2 = *(MEMORY[0x277D85A10] + 4);
  v3 = swift_task_alloc();
  v0[5] = v3;
  v4 = *(v1 + 80);
  sub_24DD4B4B4();
  *v3 = v0;
  v3[1] = sub_24DD25B28;
  v5 = v0[2];
  v6 = v0[3];

  return MEMORY[0x282200830](v5, &unk_24DD4D288);
}

uint64_t sub_24DD25B28()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  *(v3 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24DD2CF28, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_24DD25C5C(uint64_t a1, void *a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = *a2;
  return MEMORY[0x2822009F8](sub_24DD25CA4, 0, 0);
}

uint64_t sub_24DD25CA4()
{
  v1 = v0[4];
  v2 = *(MEMORY[0x277D85A40] + 4);
  v3 = swift_task_alloc();
  v0[5] = v3;
  v4 = *(v1 + 80);
  v5 = sub_24DD4B4B4();
  *v3 = v0;
  v3[1] = sub_24DD25D8C;
  v6 = v0[2];
  v7 = v0[3];

  return MEMORY[0x2822008A0](v6, 0, 0, 0x4E646E6570737573, 0xED00002928747865, sub_24DD2BAEC, v7, v5);
}

uint64_t sub_24DD25D8C()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  *(v3 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24DD25EC0, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_24DD25ED8(uint64_t a1, void *a2)
{
  v4 = *(*a2 + 80);
  v5 = sub_24DD4B4B4();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v66 = &v62 - v8;
  v68 = *(v4 - 8);
  v9 = *(v68 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v65 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v62 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1AF298, &qword_24DD4C1C0);
  v67 = sub_24DD4B324();
  v69 = *(v67 - 8);
  v14 = *(v69 + 64);
  v15 = MEMORY[0x28223BE20](v67);
  v63 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v64 = &v62 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v62 - v19;
  Action = type metadata accessor for BufferedStream._StateMachine.SuspendNextAction();
  v22 = sub_24DD4B4B4();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v62 - v28;
  v30 = a2[2];
  v71 = v4;
  v72 = a1;
  v31 = type metadata accessor for BufferedStream._StateMachine();
  sub_24DD49B88(sub_24DD2BB0C, v70, v30, v31, v22);
  (*(v23 + 16))(v27, v29, v22);
  if ((*(*(Action - 8) + 48))(v27, 1, Action) == 1)
  {
    return (*(v23 + 8))(v29, v22);
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v59 = v69;
      v60 = v67;
      (*(v69 + 32))(v20, v27, v67);
      (*(v68 + 56))(v66, 1, 1, v4);
      sub_24DD4B314();
      (*(v59 + 8))(v20, v60);
      return (*(v23 + 8))(v29, v22);
    }

    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B00D8, &unk_24DD4D290);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B00C8, &qword_24DD4D268);
    v37 = v67;
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v39 = *&v27[*(TupleTypeMetadata3 + 48)];
    v40 = &v27[*(TupleTypeMetadata3 + 64)];
    v41 = *v40;
    v42 = *(v40 + 1);
    v43 = v63;
    (*(v69 + 32))(v63, v27, v37);
    if (v39)
    {
      v73 = v39;
      v44 = v39;
      sub_24DD4B304();
      v45 = v43;
      if (v41)
      {
LABEL_8:

        v41(v46);
        sub_24DD1C134(v41);

        sub_24DD1C134(v41);
LABEL_16:
        (*(v69 + 8))(v45, v37);
        return (*(v23 + 8))(v29, v22);
      }
    }

    else
    {
      (*(v68 + 56))(v66, 1, 1, v4);
      sub_24DD4B314();
      v45 = v43;
      if (v41)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_16;
  }

  if (EnumCaseMultiPayload)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B00C0, &qword_24DD4D260);
    v47 = v67;
    v48 = swift_getTupleTypeMetadata3();
    v49 = *(v48 + 48);
    v50 = *&v27[*(v48 + 64)];
    (*(v69 + 32))(v64, v27, v47);
    v51 = v68;
    v52 = &v27[v49];
    v53 = v65;
    (*(v68 + 32))(v65, v52, v4);
    v54 = v66;
    (*(v51 + 16))(v66, v53, v4);
    (*(v51 + 56))(v54, 0, 1, v4);
    sub_24DD4B314();
    v55 = *(v50 + 16);
    if (v55)
    {
      v56 = (v50 + 40);
      do
      {
        v58 = *(v56 - 1);
        v57 = *v56;
        v73 = 0;
        v74 = 0;

        v58(&v73);

        v56 += 2;
        --v55;
      }

      while (v55);
    }

    (*(v68 + 8))(v65, v4);
    (*(v69 + 8))(v64, v47);
  }

  else
  {
    v33 = v67;
    v65 = *(swift_getTupleTypeMetadata2() + 48);
    v34 = v69;
    (*(v69 + 32))(v20, v27, v33);
    v35 = v68;
    (*(v68 + 32))(v13, &v65[v27], v4);
    v36 = v66;
    (*(v35 + 16))(v66, v13, v4);
    (*(v35 + 56))(v36, 0, 1, v4);
    sub_24DD4B314();
    (*(v35 + 8))(v13, v4);
    (*(v34 + 8))(v20, v33);
  }

  return (*(v23 + 8))(v29, v22);
}

uint64_t sub_24DD26688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v130 = a1;
  v131 = a3;
  v5 = *(a2 + 16);
  v6 = sub_24DD4B4B4();
  v125 = *(v6 - 8);
  v7 = *(v125 + 8);
  v8 = MEMORY[0x28223BE20](v6);
  v123 = &v118 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v118 - v11;
  v128 = *(v5 - 8);
  v13 = *(v128 + 64);
  v14 = MEMORY[0x28223BE20](v10);
  v124 = (&v118 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v17 = &v118 - v16;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1AF298, &qword_24DD4C1C0);
  v126 = v6;
  v133 = sub_24DD4B324();
  v18 = sub_24DD4B4B4();
  *&v134 = *(v18 - 8);
  v19 = *(v134 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v118 - v20;
  v22 = type metadata accessor for BufferedStream._StateMachine._State.Streaming();
  v23 = *(v22 - 8);
  v24 = *(v23 + 8);
  MEMORY[0x28223BE20](v22);
  v26 = &v118 - v25;
  v132 = v5;
  v27 = type metadata accessor for BufferedStream._StateMachine._State();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v30 = &v118 - v29;
  v129 = v31;
  v32 = *(v31 + 16);
  v127 = v4;
  v33 = v4;
  v35 = v34;
  v32(&v118 - v29, v33, v34);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v37 = *v30;
      v38 = *(v30 + 1);
      *&v134 = *(v30 + 2);
      v39 = *(v30 + 3);
      v40 = *(v30 + 4);
      v135 = v38;
      v41 = *(v129 + 8);
      v42 = v127;
      v41(v127, v35);
      swift_storeEnumTagMultiPayload();
      v43 = v35;
      v44 = v132;
      sub_24DD4B074();
      v45 = v123;
      sub_24DD4B054();
      v46 = v128;
      if ((*(v128 + 48))(v45, 1, v44) == 1)
      {

        (*(v125 + 1))(v45, v126);
        v41(v42, v43);
        *v42 = v37;
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B00D8, &unk_24DD4D290);
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B00C8, &qword_24DD4D268);
        v47 = v133;
        TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
        v49 = *(TupleTypeMetadata3 + 48);
        v50 = v131;
        v51 = (v131 + *(TupleTypeMetadata3 + 64));
        (*(*(v47 - 8) + 16))(v131, v130, v47);
        *(v50 + v49) = v134;
        if (v39)
        {
          v52 = v40;
        }

        else
        {
          v52 = 0;
        }

        *v51 = v39;
        v51[1] = v52;
        Action = type metadata accessor for BufferedStream._StateMachine.SuspendNextAction();
      }

      else
      {
        v129 = *(v46 + 32);
        (v129)(v124, v45, v44);
        v41(v42, v43);
        v81 = v135;
        *v42 = v37;
        v82 = v134;
        *(v42 + 1) = v81;
        *(v42 + 2) = v82;
        *(v42 + 3) = v39;
        *(v42 + 4) = v40;
        swift_storeEnumTagMultiPayload();
        v83 = v133;
        v84 = *(swift_getTupleTypeMetadata2() + 48);
        v50 = v131;
        (*(*(v83 - 8) + 16))(v131, v130, v83);
        (v129)(v50 + v84, v124, v44);
        Action = type metadata accessor for BufferedStream._StateMachine.SuspendNextAction();
      }

      swift_storeEnumTagMultiPayload();
      return (*(*(Action - 8) + 56))(v50, 0, 1, Action);
    }

    if (EnumCaseMultiPayload == 3)
    {
      v79 = v131;
      (*(*(v133 - 8) + 16))(v131, v130);
      v80 = type metadata accessor for BufferedStream._StateMachine.SuspendNextAction();
      swift_storeEnumTagMultiPayload();
      return (*(*(v80 - 8) + 56))(v79, 0, 1, v80);
    }

LABEL_34:
    result = sub_24DD4B5B4();
    __break(1u);
    return result;
  }

  v54 = v12;
  v55 = v134;
  v121 = v26;
  v122 = v18;
  v119 = v17;
  v120 = v54;
  v123 = v22;
  v124 = v23;
  if (EnumCaseMultiPayload != 1)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v56 = v123;
  v57 = v121;
  v124[4](v121, v30, v123);
  v58 = *(v55 + 16);
  v118 = *(v56 + 10);
  v59 = v122;
  v58(v21, &v57[v118], v122);
  v60 = *(v133 - 8);
  v61 = (*(v60 + 48))(v21, 1);
  v62 = *(v55 + 8);
  *&v134 = v55 + 8;
  v62(v21, v59);
  if (v61 != 1)
  {
    goto LABEL_34;
  }

  v63 = v129 + 8;
  v64 = *(v129 + 8);
  v65 = v127;
  v64(v127, v35);
  swift_storeEnumTagMultiPayload();
  v66 = v132;
  sub_24DD4B074();
  v67 = v120;
  sub_24DD4B054();
  v68 = v128;
  if ((*(v128 + 48))(v67, 1, v66) == 1)
  {
    (*(v125 + 1))(v67, v126);
    v69 = v118;
    v62(&v57[v118], v122);
    v70 = *(v60 + 16);
    v71 = &v57[v69];
    v72 = v60;
    v73 = v57;
    v74 = v133;
    v70(v71, v130, v133);
    (*(v72 + 56))(&v73[v69], 0, 1, v74);
    v64(v65, v35);
    v75 = v123;
    v76 = v124;
    v124[2](v65, v73, v123);
    swift_storeEnumTagMultiPayload();
    v77 = type metadata accessor for BufferedStream._StateMachine.SuspendNextAction();
    (*(*(v77 - 8) + 56))(v131, 1, 1, v77);
    return (v76[1])(v73, v75);
  }

  v125 = v64;
  v126 = v60;
  v85 = v35;
  v129 = v63;
  v86 = *(v68 + 32);
  v87 = v119;
  v86(v119, v67, v66);
  type metadata accessor for BufferedStream._InternalBackPressureStrategy();
  v88 = sub_24DD2139C(v87);
  v89 = v123;
  v57[*(v123 + 13)] = v88 & 1;
  if ((v88 & 1) == 0)
  {
    v125(v65, v85);
    v101 = v86;
    v102 = v87;
    v103 = v124;
    v124[2](v65, v57, v89);
    swift_storeEnumTagMultiPayload();
    v104 = v133;
    v105 = v57;
    v106 = *(swift_getTupleTypeMetadata2() + 48);
    v107 = v131;
    (*(v126 + 16))(v131, v130, v104);
    v101(v107 + v106, v102, v66);
    v108 = type metadata accessor for BufferedStream._StateMachine.SuspendNextAction();
    swift_storeEnumTagMultiPayload();
    (*(*(v108 - 8) + 56))(v107, 0, 1, v108);
    return (v103[1])(v105, v89);
  }

  v128 = v68 + 32;
  v90 = *(v89 + 11);
  v91 = *&v90[v57];
  v92 = v91[3];
  v93 = v124;
  v122 = v86;
  if (v92)
  {
    v120 = v90;
    v135 = MEMORY[0x277D84F90];
    sub_24DD286D4(0, v92 & ~(v92 >> 63), 0);
    if ((v92 & 0x8000000000000000) == 0)
    {
      v94 = 0;
      v95 = v135;
      while (v94 < v91[3])
      {
        v96 = v91[4];
        if (v94 + v96 >= v91[2])
        {
          v97 = v91[2];
        }

        else
        {
          v97 = 0;
        }

        v98 = *&v91[3 * v94 + 6 + 3 * (v96 - v97)];
        v135 = v95;
        v100 = *(v95 + 16);
        v99 = *(v95 + 24);
        v134 = v98;

        if (v100 >= v99 >> 1)
        {
          sub_24DD286D4((v99 > 1), v100 + 1, 1);
          v95 = v135;
        }

        ++v94;
        *(v95 + 16) = v100 + 1;
        *(v95 + 16 * v100 + 32) = v134;
        if (v92 == v94)
        {

          v66 = v132;
          v65 = v127;
          v89 = v123;
          v93 = v124;
          v90 = v120;
          goto LABEL_30;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_33;
  }

  v95 = MEMORY[0x277D84F90];
LABEL_30:
  v109 = sub_24DD4B024();
  v110 = v121;
  *&v90[v121] = *v109;

  v125(v65, v85);
  v93[2](v65, v110, v89);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B00C0, &qword_24DD4D260);
  v111 = v93;
  v112 = v133;
  v113 = swift_getTupleTypeMetadata3();
  v114 = *(v113 + 48);
  v115 = *(v113 + 64);
  v116 = v131;
  (*(v126 + 16))(v131, v130, v112);
  v122(v116 + v114, v119, v66);
  *(v116 + v115) = v95;
  v117 = type metadata accessor for BufferedStream._StateMachine.SuspendNextAction();
  swift_storeEnumTagMultiPayload();
  (*(*(v117 - 8) + 56))(v116, 0, 1, v117);
  return v111[1](v110, v89);
}

uint64_t sub_24DD27444(void *a1)
{
  v2 = *(*a1 + 80);
  sub_24DD4B4B4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1AF298, &qword_24DD4C1C0);
  v3 = sub_24DD4B324();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v33 - v6;
  Action = type metadata accessor for BufferedStream._StateMachine.CancelNextAction();
  v9 = sub_24DD4B4B4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = (&v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v16 = &v33 - v15;
  v17 = a1[2];
  v38 = v2;
  v18 = type metadata accessor for BufferedStream._StateMachine();
  sub_24DD49B88(sub_24DD2BA48, v37, v17, v18, v9);
  (*(v10 + 16))(v14, v16, v9);
  if ((*(*(Action - 8) + 48))(v14, 1, Action) == 1)
  {
    return (*(v10 + 8))(v16, v9);
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B00C8, &qword_24DD4D268);
    v28 = v14 + *(swift_getTupleTypeMetadata2() + 48);
    v29 = *v28;
    v30 = *(v28 + 1);
    (*(v4 + 32))(v7, v14, v3);
    sub_24DD4B334();
    sub_24DD2BA94();
    v31 = swift_allocError();
    sub_24DD4B104();
    v39 = v31;
    sub_24DD4B304();
    if (v29)
    {

      v29(v32);
      sub_24DD1C134(v29);
      sub_24DD1C134(v29);
    }

    (*(v4 + 8))(v7, v3);
    return (*(v10 + 8))(v16, v9);
  }

  v19 = *v14;
  v34 = v14[1];
  v35 = v9;
  v33 = v14[2];
  v36 = v19;
  v20 = *(v19 + 16);
  if (v20)
  {
    sub_24DD1C09C();
    v21 = (v36 + 40);
    do
    {
      v22 = *(v21 - 1);
      v23 = *v21;
      v24 = swift_allocError();
      v39 = v24;
      v40 = 1;

      v22(&v39);

      v21 += 2;
      --v20;
    }

    while (v20);
  }

  v25 = v34;
  if (v34)
  {

    v25(v26);
    sub_24DD1C134(v25);
    sub_24DD1C134(v25);
  }

  return (*(v10 + 8))(v16, v35);
}

uint64_t sub_24DD2787C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v68 = a2;
  v3 = *(a1 + 16);
  sub_24DD4B4B4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1AF298, &qword_24DD4C1C0);
  v4 = sub_24DD4B324();
  v5 = sub_24DD4B4B4();
  v6 = *(v5 - 8);
  v65 = v5;
  v66 = v6;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v62 - v9;
  *&v70 = *(v4 - 8);
  v11 = *(v70 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v62 - v12;
  v14 = type metadata accessor for BufferedStream._StateMachine._State.Streaming();
  v69 = *(v14 - 8);
  v15 = *(v69 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v62 - v16;
  v67 = v3;
  v18 = type metadata accessor for BufferedStream._StateMachine._State();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v62 - v21;
  (*(v19 + 16))(&v62 - v21, v2, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      (*(v19 + 8))(v22, v18);
LABEL_18:
      Action = type metadata accessor for BufferedStream._StateMachine.CancelNextAction();
      return (*(*(Action - 8) + 56))(v68, 1, 1, Action);
    }

    if (EnumCaseMultiPayload == 3)
    {
      goto LABEL_18;
    }

    goto LABEL_31;
  }

  v62 = v10;
  v63 = v2;
  v24 = v65;
  v64 = v14;
  if (EnumCaseMultiPayload != 1)
  {
LABEL_31:
    result = sub_24DD4B5B4();
    __break(1u);
    return result;
  }

  v25 = v69;
  v26 = v17;
  v27 = v22;
  v28 = v64;
  (*(v69 + 32))(v17, v27, v64);
  v29 = v63;
  (*(v19 + 8))(v63, v18);
  *v29 = v26[40];
  v30 = v28;
  swift_storeEnumTagMultiPayload();
  v31 = v66;
  v32 = &v26[*(v28 + 40)];
  v33 = v62;
  v34 = v24;
  (*(v66 + 16))(v62, v32, v24);
  v35 = v70;
  if ((*(v70 + 48))(v33, 1, v4) == 1)
  {
    (*(v31 + 8))(v33, v34);
    v36 = *&v26[*(v30 + 44)];
    v37 = v36[3];
    v38 = MEMORY[0x277D84F90];
    if (v37)
    {
      v71 = MEMORY[0x277D84F90];
      sub_24DD286D4(0, v37 & ~(v37 >> 63), 0);
      if (v37 < 0)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v39 = 0;
      v38 = v71;
      while (v39 < v36[3])
      {
        v40 = v36[4];
        if (v39 + v40 >= v36[2])
        {
          v41 = v36[2];
        }

        else
        {
          v41 = 0;
        }

        v42 = *&v36[3 * v39 + 6 + 3 * (v40 - v41)];
        v71 = v38;
        v44 = *(v38 + 16);
        v43 = *(v38 + 24);
        v70 = v42;

        if (v44 >= v43 >> 1)
        {
          sub_24DD286D4((v43 > 1), v44 + 1, 1);
          v38 = v71;
        }

        ++v39;
        *(v38 + 16) = v44 + 1;
        *(v38 + 16 * v44 + 32) = v70;
        v25 = v69;
        if (v37 == v39)
        {
          v30 = v64;
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

LABEL_24:
    v56 = *(v26 + 6);
    v57 = *(v26 + 7);
    if (v56)
    {
      v58 = *(v26 + 7);
    }

    else
    {
      v58 = 0;
    }

    v59 = v68;
    *v68 = v38;
    v59[1] = v56;
    v59[2] = v58;
    v60 = v26;
    v61 = type metadata accessor for BufferedStream._StateMachine.CancelNextAction();
    swift_storeEnumTagMultiPayload();
    (*(*(v61 - 8) + 56))(v59, 0, 1, v61);
    sub_24DD1CA8C(v56);
    return (*(v25 + 8))(v60, v30);
  }

  else
  {
    v47 = *(v35 + 32);
    v47(v13, v33, v4);
    if (*(*&v26[*(v30 + 44)] + 24))
    {
      goto LABEL_29;
    }

    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B00C8, &qword_24DD4D268);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v49 = v68;
    v50 = (v68 + *(TupleTypeMetadata2 + 48));
    v47(v68, v13, v4);
    v51 = *(v26 + 6);
    v52 = *(v26 + 7);
    if (v51)
    {
      v53 = *(v26 + 7);
    }

    else
    {
      v53 = 0;
    }

    *v50 = v51;
    v50[1] = v53;
    v54 = v26;
    v55 = type metadata accessor for BufferedStream._StateMachine.CancelNextAction();
    swift_storeEnumTagMultiPayload();
    (*(*(v55 - 8) + 56))(v49, 0, 1, v55);
    sub_24DD1CA8C(v51);
    return (*(v69 + 8))(v54, v30);
  }
}

uint64_t BufferedStream._BackPressuredStorage.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t BufferedStream._BackPressuredStorage.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

double sub_24DD27FC0@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for BufferedStream._InternalBackPressureStrategy();
  (*(*(v10 - 8) + 32))(v14, a1, v10);
  v11 = v15;
  result = *v14;
  v13 = v14[1];
  *a5 = v14[0];
  *(a5 + 16) = v13;
  *(a5 + 32) = v11;
  *(a5 + 40) = a2;
  *(a5 + 41) = v14[0];
  *(a5 + 44) = *(v14 + 3);
  *(a5 + 48) = a3;
  *(a5 + 56) = a4;
  return result;
}

uint64_t sub_24DD28070@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10)
{
  v16 = type metadata accessor for BufferedStream._StateMachine._State.Streaming();
  v17 = v16[10];
  sub_24DD4B4B4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1AF298, &qword_24DD4C1C0);
  v18 = sub_24DD4B324();
  (*(*(v18 - 8) + 56))(a9 + v17, 1, 1, v18);
  v19 = type metadata accessor for BufferedStream._InternalBackPressureStrategy();
  (*(*(v19 - 8) + 32))(a9, a1, v19);
  *(a9 + 40) = a2;
  *(a9 + 48) = a3;
  *(a9 + 56) = a4;
  *(a9 + 64) = a5;
  v20 = sub_24DD4B4B4();
  result = (*(*(v20 - 8) + 40))(a9 + v17, a6, v20);
  *(a9 + v16[11]) = a7;
  *(a9 + v16[12]) = a8;
  *(a9 + v16[13]) = a10;
  return result;
}

uint64_t sub_24DD28218@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t sub_24DD28228@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 28);
  v4 = *(v2 + v3);
  if (v4 == -1)
  {
    __break(1u);
  }

  else
  {
    *(v2 + v3) = v4 + 1;
    *a2 = v4;
  }

  return result;
}

uint64_t sub_24DD28248@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v43 = a4;
  v42 = *(a3 - 8);
  v7 = *(v42 + 64);
  MEMORY[0x28223BE20](a1);
  v41 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24DD4B4B4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1AF298, &qword_24DD4C1C0);
  v9 = sub_24DD4B324();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v40 - v12;
  type metadata accessor for BufferedStream.Source.WriteResult.CallbackToken();
  sub_24DD4B4B4();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v15 = sub_24DD4B4B4();
  v16 = swift_getTupleTypeMetadata2();
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v40 - v19;
  v21 = *a1;
  v22 = *(a1 + 8);
  v23 = &v20[*(v18 + 56)];
  *v20 = v21;
  v20[8] = v22;
  (*(*(v15 - 8) + 32))(v23, a2, v15);
  v24 = *v20;
  LODWORD(a2) = v20[8];
  v25 = (*(*(TupleTypeMetadata2 - 8) + 48))(v23, 1, TupleTypeMetadata2);
  if (a2 == 1)
  {
    if (v25 != 1)
    {
      v26 = *(TupleTypeMetadata2 + 48);
      v27 = *(v10 + 32);
      v27(v13, v23, v9);
      v28 = v41;
      v29 = *(v42 + 32);
      v29(v41, &v23[v26], a3);
      v30 = *(swift_getTupleTypeMetadata2() + 48);
      v31 = v43;
      v27(v43, v13, v9);
      v29(&v31[v30], v28, a3);
    }
  }

  else if (v25 == 1)
  {
    *v43 = v24;
  }

  else
  {
    v32 = *(TupleTypeMetadata2 + 48);
    v40 = *(v10 + 32);
    v40(v13, v23, v9);
    v33 = *(v42 + 32);
    v34 = &v23[v32];
    v35 = v41;
    v33(v41, v34, a3);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v37 = *(TupleTypeMetadata3 + 48);
    v42 = *(TupleTypeMetadata3 + 64);
    v38 = v43;
    v40(v43, v13, v9);
    v33(&v38[v37], v35, a3);
    *&v38[v42] = v24;
  }

  type metadata accessor for BufferedStream._StateMachine.WriteAction();
  return swift_storeEnumTagMultiPayload();
}

void *sub_24DD286B4(void *a1, int64_t a2, char a3)
{
  result = sub_24DD286F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24DD286D4(void *a1, int64_t a2, char a3)
{
  result = sub_24DD28838(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24DD286F4(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B00E8, &qword_24DD4D2B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B00F0, &qword_24DD4D2B8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24DD28838(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B00D0, &qword_24DD4D270);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AFE20, &qword_24DD4D070);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_24DD28978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *(a6 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20]();
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v17(v16 + ((*(*(v15 - 8) + 80) + 16) & ~*(*(v15 - 8) + 80)), v14);
  if (v9)
  {
    return (*(v11 + 32))(a9, v14, a6);
  }

  return result;
}

uint64_t sub_24DD28A7C(char a1, uint64_t a2)
{
  v3 = *v2;
  v4 = (*v2 + 16);
  v5 = *v4;
  if (*v4 >= a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B00F8, &unk_24DD4D2C0);
    v8 = swift_allocObject();
    v9 = *(v3 + 24);
    *(v8 + 16) = v5;
    *(v8 + 24) = v9;
    if (v9 >= 1)
    {
      sub_24DD49380(v8 + 16, v8 + 40, v4, v3 + 40);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AFE30, qword_24DD4D078);
    sub_24DD4B044();
    if (a1)
    {
      v7 = *(v3 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B00F8, &unk_24DD4D2C0);
      v8 = swift_allocObject();
      *(v8 + 16) = (_swift_stdlib_malloc_size(v8) - 40) / 24;
      *(v8 + 24) = v7;
      *(v8 + 32) = 0;
      if (v7 >= 1)
      {
        sub_24DD29088(v8 + 16, (v8 + 40), v4, (v3 + 40));
        *(v3 + 24) = 0;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B00F8, &unk_24DD4D2C0);
      v8 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v8);
      v11 = *(v3 + 24);
      *(v8 + 16) = (v10 - 40) / 24;
      *(v8 + 24) = v11;
      *(v8 + 32) = 0;
      if (v11 >= 1)
      {
        sub_24DD294FC(v8 + 16, v8 + 40, v4, v3 + 40);
      }
    }
  }

  *v2 = v8;
  return result;
}

size_t sub_24DD28C60(char a1, uint64_t a2)
{
  v5 = *v2;
  v6 = (*v2 + 16);
  v7 = *v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0B60, &qword_24DD4CB20);
  v9 = v8;
  if (v7 >= a2)
  {
    v18 = *(v8 - 8);
    v19 = *(v18 + 80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0100, &qword_24DD4D2D0);
    v20 = *(v18 + 72);
    v15 = swift_allocObject();
    v21 = *(v5 + 24);
    *(v15 + 16) = v7;
    *(v15 + 24) = v21;
    if (v21 >= 1)
    {
      sub_24DD49580(v15 + 16, v15 + ((v19 + 40) & ~v19), v6, v5 + ((v19 + 40) & ~v19));
    }

    goto LABEL_19;
  }

  sub_24DD4B044();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  if (a1)
  {
    v12 = *(v5 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0100, &qword_24DD4D2D0);
    v13 = *(v10 + 72);
    v14 = (v11 + 40) & ~v11;
    v15 = swift_allocObject();
    result = _swift_stdlib_malloc_size(v15);
    if (v13)
    {
      if (result - v14 != 0x8000000000000000 || v13 != -1)
      {
        *(v15 + 16) = (result - v14) / v13;
        *(v15 + 24) = v12;
        *(v15 + 32) = 0;
        if (v12 >= 1)
        {
          sub_24DD291C8(v15 + 16, v15 + v14, v6, v5 + v14);
          *(v5 + 24) = 0;
        }

LABEL_19:

        *v2 = v15;
        return result;
      }

      goto LABEL_22;
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0100, &qword_24DD4D2D0);
  v22 = *(v10 + 72);
  v23 = (v11 + 40) & ~v11;
  v15 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v15);
  if (!v22)
  {
    goto LABEL_21;
  }

  if (result - v23 != 0x8000000000000000 || v22 != -1)
  {
    v25 = *(v5 + 24);
    *(v15 + 16) = (result - v23) / v22;
    *(v15 + 24) = v25;
    *(v15 + 32) = 0;
    if (v25 >= 1)
    {
      sub_24DD29610(v15 + 16, v15 + v23, v6, v5 + v23);
    }

    goto LABEL_19;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_24DD28EDC(char a1, uint64_t a2)
{
  v3 = *v2;
  v4 = (*v2 + 16);
  v5 = *v4;
  if (*v4 >= a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B00E0, &unk_24DD4D2A0);
    v9 = swift_allocObject();
    v12 = *(v3 + 24);
    *(v9 + 16) = v5;
    *(v9 + 24) = v12;
    if (v12 >= 1)
    {
      sub_24DD49498(v9 + 16, (v9 + 40), v4, (v3 + 40));
    }
  }

  else
  {
    v7 = *v2;
    sub_24DD4B044();
    if (a1)
    {
      v8 = *(v3 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B00E0, &unk_24DD4D2A0);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v9);
      v11 = v10 - 40;
      if (v10 < 40)
      {
        v11 = v10 - 33;
      }

      *(v9 + 16) = v11 >> 3;
      *(v9 + 24) = v8;
      *(v9 + 32) = 0;
      if (v8 >= 1)
      {
        sub_24DD293D4(v9 + 16, (v9 + 40), v4, (v3 + 40));
        *(v3 + 24) = 0;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B00E0, &unk_24DD4D2A0);
      v9 = swift_allocObject();
      v13 = _swift_stdlib_malloc_size(v9);
      v14 = v13 - 40;
      if (v13 < 40)
      {
        v14 = v13 - 33;
      }

      v15 = *(v3 + 24);
      *(v9 + 16) = v14 >> 3;
      *(v9 + 24) = v15;
      *(v9 + 32) = 0;
      if (v15 >= 1)
      {
        sub_24DD29784(v9 + 16, (v9 + 40), v4, (v3 + 40));
      }
    }
  }

  *v2 = v9;
  return result;
}

void sub_24DD29088(int a1, char *__dst, void *a3, char *a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_32;
  }

  v6 = a3[1];
  if (v5 < v6)
  {
    v7 = v6 - v5;
    if (!__OFSUB__(v6, v5))
    {
      v8 = *a3 - v4;
      v9 = a4;
      goto LABEL_6;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v9 = 0;
  v7 = 0;
  v8 = a3[1];
LABEL_6:
  if (v7)
  {
    v10 = v5 < v6;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  if (v8 < 1)
  {
    v8 = 0;
    goto LABEL_20;
  }

  if (!a4)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v12 = &a4[24 * v4];
  if (v12 != __dst || &v12[24 * v8] <= __dst)
  {
    v14 = __dst;
    memmove(__dst, v12, 24 * v8);
    __dst = v14;
  }

LABEL_20:
  if (v5 >= v6 || v7 < 1)
  {
    return;
  }

  if (!v11)
  {
LABEL_34:
    __break(1u);
    return;
  }

  v16 = &__dst[24 * v8];
  if (v16 != v11 || v16 >= &v11[24 * v7])
  {

    memmove(v16, v11, 24 * v7);
  }
}

void sub_24DD291C8(uint64_t a1, unint64_t a2, void *a3, unint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_35;
  }

  v8 = a3[1];
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0B60, &qword_24DD4CB20) - 8);
  if (v5 < v8)
  {
    v10 = v8 - v5;
    if (!__OFSUB__(v8, v5))
    {
      v11 = v5;
      v12 = a4;
      goto LABEL_6;
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v12 = 0;
  v10 = 0;
  v11 = v8;
LABEL_6:
  if (v10)
  {
    v13 = v5 < v8;
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  if (v11 < 1)
  {
    v11 = 0;
    if (v5 >= v8)
    {
      return;
    }

    goto LABEL_23;
  }

  if (!a4)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v15 = a4 + *(v9 + 72) * v4;
  if (v15 > a2 || v15 + *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0B60, &qword_24DD4CB20) - 8) + 72) * v11 <= a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0B60, &qword_24DD4CB20);
    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v15 != a2)
  {
    swift_arrayInitWithTakeBackToFront();
    if (v5 >= v8)
    {
      return;
    }

    goto LABEL_23;
  }

  if (v5 >= v8)
  {
    return;
  }

LABEL_23:
  if (v10 < 1)
  {
    return;
  }

  if (!v14)
  {
LABEL_37:
    __break(1u);
    return;
  }

  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0B60, &qword_24DD4CB20) - 8) + 72);
  v17 = a2 + v16 * v11;
  v18 = v14 + v16 * v10;
  if (v17 < v14 || v17 >= v18)
  {
    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v17 != v14)
  {
    swift_arrayInitWithTakeBackToFront();
  }
}

void sub_24DD293D4(int a1, char *__dst, void *a3, char *a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_35;
  }

  v6 = a3[1];
  if (v5 < v6)
  {
    v7 = v6 - v5;
    if (!__OFSUB__(v6, v5))
    {
      v8 = *a3 - v4;
      v9 = a4;
      goto LABEL_6;
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v9 = 0;
  v7 = 0;
  v8 = a3[1];
LABEL_6:
  if (v7)
  {
    v10 = v5 < v6;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  if (v8 < 1)
  {
    v8 = 0;
    goto LABEL_20;
  }

  if (!a4)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v12 = &a4[8 * v4];
  if (v12 != __dst || &v12[8 * v8] <= __dst)
  {
    v14 = __dst;
    memmove(__dst, v12, 8 * v8);
    __dst = v14;
  }

LABEL_20:
  if (v5 >= v6 || v7 < 1)
  {
    return;
  }

  if (!v11)
  {
LABEL_37:
    __break(1u);
    return;
  }

  v16 = &__dst[8 * v8];
  if (v16 != v11 || v16 >= &v11[8 * v7])
  {

    memmove(v16, v11, 8 * v7);
  }
}

uint64_t sub_24DD294FC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3[1];
  if (v5 < v6)
  {
    v7 = v6 - v5;
    if (!__OFSUB__(v6, v5))
    {
      v8 = *a3 - v4;
      v9 = a4;
      if (v5 < 1)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = 0;
  v7 = 0;
  v10 = a3[1];
  if (v6 >= 1)
  {
LABEL_7:
    if (a4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0B50, &unk_24DD4DDF0);
      result = swift_arrayInitWithCopy();
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_9:
  if (v5 < v6 && v7 >= 1)
  {
    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0B50, &unk_24DD4DDF0);
      return swift_arrayInitWithCopy();
    }

LABEL_19:
    __break(1u);
  }

  return result;
}

void sub_24DD29610(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_15;
  }

  v7 = a3[1];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0B60, &qword_24DD4CB20) - 8);
  if (v5 < v7)
  {
    v9 = v7 - v5;
    if (!__OFSUB__(v7, v5))
    {
      v10 = a4;
      if (v5 < 1)
      {
        goto LABEL_5;
      }

      goto LABEL_8;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = 0;
  v9 = 0;
  if (v7 < 1)
  {
LABEL_5:
    if (v5 >= v7)
    {
      return;
    }

    goto LABEL_10;
  }

LABEL_8:
  if (!a4)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = a4 + *(v8 + 72) * v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0B60, &qword_24DD4CB20);
  swift_arrayInitWithCopy();
  if (v5 >= v7)
  {
    return;
  }

LABEL_10:
  if (v9 < 1)
  {
    return;
  }

  if (!v10)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0B60, &qword_24DD4CB20) - 8) + 72);
  swift_arrayInitWithCopy();
}

void sub_24DD29784(int a1, char *__dst, void *a3, char *__src)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_20;
  }

  v7 = a3[1];
  if (v5 >= v7)
  {
    v10 = 0;
    v8 = 0;
    v9 = a3[1];
    if (v7 < 1)
    {
      goto LABEL_5;
    }

    goto LABEL_7;
  }

  v8 = v7 - v5;
  if (__OFSUB__(v7, v5))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v9 = *a3 - v4;
  v10 = __src;
  if (v5 < 1)
  {
LABEL_5:
    v9 = 0;
    goto LABEL_9;
  }

LABEL_7:
  if (!__src)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  memcpy(__dst, &__src[8 * v4], 8 * v9);
LABEL_9:
  if (v5 < v7 && v8 >= 1)
  {
    if (v10)
    {

      memcpy(&__dst[8 * v9], v10, 8 * v8);
      return;
    }

LABEL_22:
    __break(1u);
  }
}

uint64_t sub_24DD2987C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a3[2];
  v6 = v5 + result;
  v7 = *a3;
  if (v5 + result >= *a3)
  {
    v8 = *a3;
  }

  else
  {
    v8 = 0;
  }

  v9 = v5 + a2;
  if (v5 + a2 >= v7)
  {
    v10 = *a3;
  }

  else
  {
    v10 = 0;
  }

  v11 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
  }

  else
  {
    v12 = v6 - v8;
    v13 = v9 - v10;
    if (v11)
    {
      v14 = v12 < v13;
    }

    else
    {
      v14 = 1;
    }

    v15 = v14;
    if (v15 == 1)
    {
      v16 = 0;
      v13 = 0;
LABEL_18:
      *a5 = a4 + 8 * v12;
      *(a5 + 8) = v11;
      *(a5 + 16) = v16;
      *(a5 + 24) = v13;
      *(a5 + 32) = v15;
      return result;
    }

    v11 = v7 - v12;
    if (!__OFSUB__(v7, v12))
    {
      v16 = a4;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24DD298F4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = a3[2];
  v7 = v6 + result;
  v8 = *a3;
  if (v6 + result >= *a3)
  {
    v9 = *a3;
  }

  else
  {
    v9 = 0;
  }

  v10 = v6 + a2;
  if (v10 >= v8)
  {
    v11 = *a3;
  }

  else
  {
    v11 = 0;
  }

  v12 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
  }

  else
  {
    v14 = v7 - v9;
    v15 = v10 - v11;
    if (v12)
    {
      v16 = v14 < v15;
    }

    else
    {
      v16 = 1;
    }

    v17 = v16;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0B60, &qword_24DD4CB20);
    v20 = *(v18 - 8);
    result = v18 - 8;
    v19 = v20;
    if (v17 == 1)
    {
      v21 = 0;
      v15 = 0;
LABEL_18:
      *a5 = a4 + *(v19 + 72) * v14;
      *(a5 + 8) = v12;
      *(a5 + 16) = v21;
      *(a5 + 24) = v15;
      *(a5 + 32) = v17;
      return result;
    }

    v12 = v8 - v14;
    if (!__OFSUB__(v8, v14))
    {
      v21 = a4;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24DD299E0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a3[2];
  v6 = v5 + result;
  v7 = *a3;
  if (v5 + result >= *a3)
  {
    v8 = *a3;
  }

  else
  {
    v8 = 0;
  }

  v9 = v5 + a2;
  if (v5 + a2 >= v7)
  {
    v10 = *a3;
  }

  else
  {
    v10 = 0;
  }

  v11 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
  }

  else
  {
    v12 = v6 - v8;
    v13 = v9 - v10;
    if (v11)
    {
      v14 = v12 < v13;
    }

    else
    {
      v14 = 1;
    }

    v15 = v14;
    if (v15 == 1)
    {
      v16 = 0;
      v13 = 0;
LABEL_18:
      *a5 = a4 + 24 * v12;
      *(a5 + 8) = v11;
      *(a5 + 16) = v16;
      *(a5 + 24) = v13;
      *(a5 + 32) = v15;
      return result;
    }

    v11 = v7 - v12;
    if (!__OFSUB__(v7, v12))
    {
      v16 = a4;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

void *sub_24DD29A5C(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = result[1];
  v5 = result[2];
  v8 = __OFADD__(v5, v6);
  v7 = v5 + v6;
  if (!v8)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      v8 = __OFSUB__(v7, *result);
      if (v7 < *result || (v7 -= *result, !v8))
      {
LABEL_9:
        v9 = (a2 + 24 * v7);
        *v9 = a3;
        v9[1] = a4;
        v9[2] = a5;
        v10 = result[1];
        v8 = __OFADD__(v10, 1);
        v11 = v10 + 1;
        if (!v8)
        {
          result[1] = v11;
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v7 < 0)
    {
      v8 = __OFADD__(v7, *result);
      v7 += *result;
      if (v8)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

void *sub_24DD29ADC(void *result, uint64_t a2, uint64_t a3)
{
  v4 = result[1];
  v3 = result[2];
  v6 = __OFADD__(v3, v4);
  v5 = v3 + v4;
  if (!v6)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      v6 = __OFSUB__(v5, *result);
      if (v5 < *result || (v5 -= *result, !v6))
      {
LABEL_9:
        *(a2 + 8 * v5) = a3;
        v7 = result[1];
        v6 = __OFADD__(v7, 1);
        v8 = v7 + 1;
        if (!v6)
        {
          result[1] = v8;
          return result;
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v5 < 0)
    {
      v6 = __OFADD__(v5, *result);
      v5 += *result;
      if (v6)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

unint64_t sub_24DD29B38(unint64_t a1, uint64_t a2, uint64_t *a3, char *a4)
{
  sub_24DD299E0(a1, a2, a3, a4, v12);
  if (v12[3])
  {
    v8 = v13;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = v12[2];
  }

  if (v12[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0B50, &unk_24DD4DDF0);
    swift_arrayDestroy();
  }

  if (v9)
  {
    v10 = v8;
  }

  else
  {
    v10 = 1;
  }

  if ((v10 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0B50, &unk_24DD4DDF0);
    swift_arrayDestroy();
  }

  return sub_24DD2A1EC(a1, a2, a3, a4);
}

unint64_t sub_24DD29C34(unint64_t result, uint64_t a2, uint64_t *a3, char *__src)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
LABEL_143:
    __break(1u);
    goto LABEL_144;
  }

  if (v6 < 1)
  {
    return result;
  }

  v8 = a3[1];
  v7 = a3[2];
  v9 = v7 + result;
  v10 = *a3;
  if ((v7 + result) >= *a3)
  {
    v11 = *a3;
  }

  else
  {
    v11 = 0;
  }

  v12 = v7 + a2;
  if (v7 + a2 >= v10)
  {
    v13 = *a3;
  }

  else
  {
    v13 = 0;
  }

  v14 = v8 - a2;
  if (__OFSUB__(v8, a2))
  {
    goto LABEL_143;
  }

  v15 = v9 - v11;
  v16 = v12 - v13;
  if (v14 <= result)
  {
    goto LABEL_31;
  }

  v14 = v7 + v6;
  if (__OFADD__(v7, v6))
  {
LABEL_144:
    __break(1u);
    goto LABEL_145;
  }

  v17 = __OFSUB__(v14, v10);
  if (v14 >= v10)
  {
    v14 -= v10;
    if (v17)
    {
      goto LABEL_148;
    }
  }

  if (!result)
  {
    goto LABEL_117;
  }

  if (v16 <= 0)
  {
    v8 = *a3;
  }

  else
  {
    v8 = v12 - v13;
  }

  if (v15 <= 0)
  {
    v18 = *a3;
  }

  else
  {
    v18 = v9 - v11;
  }

  if (v7 < v18)
  {
    if (v8 >= v14)
    {
      if (result <= 0)
      {
        goto LABEL_117;
      }

      v47 = &__src[8 * v7];
      if (v14 >= v7 && &__src[8 * v14] < &v47[8 * result] && v14 == v7)
      {
        goto LABEL_117;
      }

      v48 = 8 * result;
      result = &__src[8 * v14];
      v16 = a3;
      v49 = v48;
      goto LABEL_116;
    }

    if (v16 > 0)
    {
      v19 = &__src[8 * (v10 - v6)];
      if (v10 - v6 > 0 || (v7 = &v19[8 * v16], v7 <= __src) || v10 != v6)
      {
        v15 = result;
        v20 = a3;
        v21 = __src;
        memmove(__src, v19, 8 * v16);
        result = v15;
        __src = v21;
        a3 = v20;
      }
    }

    v10 = result - v16;
    if (!__OFSUB__(result, v16))
    {
      goto LABEL_111;
    }

    __break(1u);
LABEL_31:
    v5 = v7 + v8;
    if (!__OFADD__(v7, v8))
    {
      if ((v8 & 0x8000000000000000) == 0)
      {
        v22 = __OFSUB__(v5, v10);
        if (v5 < v10)
        {
          goto LABEL_39;
        }

        v5 -= v10;
        if (!v22)
        {
          goto LABEL_39;
        }

        __break(1u);
      }

      if (v5 < 0)
      {
        v17 = __OFADD__(v5, v10);
        v5 += v10;
        if (v17)
        {
          goto LABEL_155;
        }
      }

LABEL_39:
      v17 = __OFSUB__(v8, v6);
      v23 = v8 - v6;
      if (!v17)
      {
        v24 = v23 + v7;
        if (v24 >= v10)
        {
          v25 = v10;
        }

        else
        {
          v25 = 0;
        }

        if (!v14)
        {
          goto LABEL_139;
        }

        v4 = v24 - v25;
        if (v24 - v25 <= 0)
        {
          v26 = v10;
        }

        else
        {
          v26 = v24 - v25;
        }

        if (v5 <= 0)
        {
          v27 = v10;
        }

        else
        {
          v27 = v5;
        }

        if (v16 < v27)
        {
          if (v26 >= v15)
          {
            goto LABEL_120;
          }

          v28 = v10 - v15;
          if (__OFSUB__(v10, v15))
          {
LABEL_150:
            __break(1u);
            goto LABEL_151;
          }

          if (v28 > 0)
          {
            result = &__src[8 * v15];
            v29 = &__src[8 * v16];
            if (v15 != v16 || result >= &v29[8 * v28])
            {
              v30 = a3;
              v31 = __src;
              result = memmove(result, v29, 8 * v28);
              __src = v31;
              a3 = v30;
            }

            v17 = __OFADD__(v16, v28);
            v16 += v28;
            if (v17)
            {
              goto LABEL_156;
            }

            v32 = __OFSUB__(v16, *a3);
            if (v16 >= *a3)
            {
              v16 -= *a3;
              if (v32)
              {
                goto LABEL_160;
              }
            }
          }

          v33 = v14 - v28;
          if (__OFSUB__(v14, v28))
          {
            goto LABEL_154;
          }

          if (v33 < 1)
          {
            goto LABEL_139;
          }

          v34 = &__src[8 * v16];
          if (v16 <= 0 && &v34[8 * v33] > __src && !v16)
          {
            goto LABEL_139;
          }

          v35 = 8 * v33;
LABEL_99:
          result = __src;
LABEL_138:
          v60 = a3;
          result = memmove(result, v34, v35);
          a3 = v60;
          goto LABEL_139;
        }

LABEL_76:
        v38 = v10 - v16;
        v39 = __OFSUB__(v10, v16);
        if (v26 >= v15)
        {
          if (v39)
          {
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
            return result;
          }

          if (v38 > 0)
          {
            result = &__src[8 * v15];
            v56 = &__src[8 * v16];
            if (v15 != v16 || result >= &v56[8 * v38])
            {
              v57 = a3;
              v58 = __src;
              result = memmove(result, v56, 8 * v38);
              __src = v58;
              a3 = v57;
            }

            v17 = __OFADD__(v15, v38);
            v15 += v38;
            if (v17)
            {
              goto LABEL_158;
            }

            v59 = __OFSUB__(v15, *a3);
            if (v15 >= *a3)
            {
              v15 -= *a3;
              if (v59)
              {
                goto LABEL_162;
              }
            }
          }

          if (v5 >= 1)
          {
            result = &__src[8 * v15];
            if (v15 < 0 || v15 >= v5 || v15)
            {
              v35 = 8 * v5;
              v34 = __src;
              goto LABEL_138;
            }
          }

          goto LABEL_139;
        }

        if (v39)
        {
LABEL_151:
          __break(1u);
          goto LABEL_152;
        }

        if (v38 > 0)
        {
          result = &__src[8 * v15];
          v40 = &__src[8 * v16];
          if (v15 != v16 || result >= &v40[8 * v38])
          {
            v41 = a3;
            v42 = __src;
            result = memmove(result, v40, 8 * v38);
            __src = v42;
            a3 = v41;
          }

          v17 = __OFADD__(v15, v38);
          v15 += v38;
          if (v17)
          {
            goto LABEL_157;
          }

          v43 = __OFSUB__(v15, *a3);
          if (v15 >= *a3)
          {
            v15 -= *a3;
            if (v43)
            {
              goto LABEL_161;
            }
          }
        }

        result = &__src[8 * v15];
        if (v15 < 0 || v15 >= v6 || v15)
        {
          v44 = a3;
          v45 = __src;
          result = memmove(result, __src, 8 * v6);
          __src = v45;
          a3 = v44;
        }

        v46 = v6;
        if (v6 >= *a3)
        {
          v46 = v6 - *a3;
          if (__OFSUB__(v6, *a3))
          {
            goto LABEL_159;
          }
        }

        if (v4 <= 0)
        {
          goto LABEL_139;
        }

        v34 = &__src[8 * v46];
        if (v46 <= 0 && &v34[8 * v4] > __src && !v46)
        {
          goto LABEL_139;
        }

        v35 = 8 * v4;
        goto LABEL_99;
      }

LABEL_146:
      __break(1u);
      goto LABEL_147;
    }

LABEL_145:
    __break(1u);
    goto LABEL_146;
  }

  if (v8 >= v14)
  {
    if (__OFSUB__(0, v15))
    {
LABEL_149:
      __break(1u);
      goto LABEL_150;
    }

    if (v15 > 0)
    {
      v50 = &__src[8 * v16 + -8 * v15];
      if (v50 != __src || v50 >= &__src[8 * v15])
      {
        v16 = result;
        v51 = a3;
        v52 = __src;
        memmove(v50, __src, 8 * v15);
        result = v16;
        __src = v52;
        a3 = v51;
      }
    }

    v10 = result - v15;
    if (__OFSUB__(result, v15))
    {
      goto LABEL_153;
    }

    goto LABEL_111;
  }

  if (v15 > 0)
  {
    v36 = 8 * v15;
    v15 = result;
    v4 = a3;
    v5 = __src;
    memmove(&__src[8 * v6], __src, v36);
    result = v15;
    __src = v5;
    a3 = v4;
  }

  v26 = *a3 - v6;
  if (*a3 < 1 || (v37 = *a3 == v6, v26 > 0) || *a3 != v6)
  {
    v15 = result;
    v4 = a3;
    v5 = __src;
    memmove(__src, &__src[8 * v26], 8 * v6);
    result = v15;
    __src = v5;
    a3 = v4;
  }

  v10 = result - v16;
  if (__OFSUB__(result, v16))
  {
    __break(1u);
    goto LABEL_76;
  }

LABEL_111:
  if (v10 < 1)
  {
    goto LABEL_117;
  }

  v53 = a3[2];
  result = &__src[8 * v14];
  v47 = &__src[8 * v53];
  if (v14 >= v53 && result < &v47[8 * v10] && v14 == v53)
  {
    goto LABEL_117;
  }

  v16 = a3;
  v49 = 8 * v10;
LABEL_116:
  result = memmove(result, v47, v49);
  a3 = v16;
LABEL_117:
  a3[2] = v14;
  v54 = a3[1];
  v17 = __OFSUB__(v54, v6);
  v55 = v54 - v6;
  if (!v17)
  {
    goto LABEL_140;
  }

  __break(1u);
LABEL_120:
  if (v14 > 0)
  {
    result = &__src[8 * v15];
    v34 = &__src[8 * v16];
    if (v15 < v16 || result >= &v34[8 * v14] || v15 != v16)
    {
      v35 = 8 * v14;
      goto LABEL_138;
    }
  }

LABEL_139:
  v61 = a3[1];
  v17 = __OFSUB__(v61, v6);
  v55 = v61 - v6;
  if (v17)
  {
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
    goto LABEL_149;
  }

LABEL_140:
  a3[1] = v55;
  return result;
}

unint64_t sub_24DD2A1EC(unint64_t result, uint64_t a2, uint64_t *a3, char *__src)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
LABEL_148:
    __break(1u);
    goto LABEL_149;
  }

  if (v6 < 1)
  {
    return result;
  }

  v8 = a3[1];
  v7 = a3[2];
  v9 = v7 + result;
  v10 = *a3;
  if ((v7 + result) >= *a3)
  {
    v11 = *a3;
  }

  else
  {
    v11 = 0;
  }

  v12 = v7 + a2;
  if (v7 + a2 >= v10)
  {
    v13 = *a3;
  }

  else
  {
    v13 = 0;
  }

  v14 = v8 - a2;
  if (__OFSUB__(v8, a2))
  {
    goto LABEL_148;
  }

  v15 = v9 - v11;
  v16 = v12 - v13;
  if (v14 <= result)
  {
    goto LABEL_33;
  }

  v14 = v7 + v6;
  if (__OFADD__(v7, v6))
  {
LABEL_149:
    __break(1u);
    goto LABEL_150;
  }

  v17 = __OFSUB__(v14, v10);
  if (v14 >= v10)
  {
    v14 -= v10;
    if (v17)
    {
      goto LABEL_153;
    }
  }

  if (!result)
  {
    goto LABEL_122;
  }

  if (v16 <= 0)
  {
    v8 = *a3;
  }

  else
  {
    v8 = v12 - v13;
  }

  if (v15 <= 0)
  {
    v18 = *a3;
  }

  else
  {
    v18 = v9 - v11;
  }

  if (v7 < v18)
  {
    if (v8 >= v14)
    {
      if (result <= 0)
      {
        goto LABEL_122;
      }

      v49 = &__src[24 * v7];
      if (v14 >= v7 && &__src[24 * v14] < &v49[24 * result] && v14 == v7)
      {
        goto LABEL_122;
      }

      v50 = 24 * result;
      result = &__src[24 * v14];
      v16 = a3;
      v51 = v50;
      goto LABEL_121;
    }

    if (v16 > 0)
    {
      v8 = v10 - v6;
      v19 = &__src[24 * (v10 - v6)];
      if (v10 - v6 > 0 || ((v7 = &v19[24 * v16], v7 > __src) ? (v20 = v10 == v6) : (v20 = 0), !v20))
      {
        v15 = result;
        v21 = a3;
        v22 = __src;
        memmove(__src, v19, 24 * v16);
        result = v15;
        __src = v22;
        a3 = v21;
      }
    }

    v10 = result - v16;
    if (!__OFSUB__(result, v16))
    {
      goto LABEL_116;
    }

    __break(1u);
LABEL_33:
    v5 = v7 + v8;
    if (!__OFADD__(v7, v8))
    {
      if ((v8 & 0x8000000000000000) == 0)
      {
        v23 = __OFSUB__(v5, v10);
        if (v5 < v10)
        {
          goto LABEL_41;
        }

        v5 -= v10;
        if (!v23)
        {
          goto LABEL_41;
        }

        __break(1u);
      }

      if (v5 < 0)
      {
        v17 = __OFADD__(v5, v10);
        v5 += v10;
        if (v17)
        {
          goto LABEL_160;
        }
      }

LABEL_41:
      v17 = __OFSUB__(v8, v6);
      v24 = v8 - v6;
      if (!v17)
      {
        v25 = v24 + v7;
        if (v25 >= v10)
        {
          v26 = v10;
        }

        else
        {
          v26 = 0;
        }

        if (!v14)
        {
          goto LABEL_144;
        }

        v4 = v25 - v26;
        if (v25 - v26 <= 0)
        {
          v27 = v10;
        }

        else
        {
          v27 = v25 - v26;
        }

        if (v5 <= 0)
        {
          v28 = v10;
        }

        else
        {
          v28 = v5;
        }

        if (v16 < v28)
        {
          if (v27 >= v15)
          {
            goto LABEL_125;
          }

          v29 = v10 - v15;
          if (__OFSUB__(v10, v15))
          {
LABEL_155:
            __break(1u);
            goto LABEL_156;
          }

          if (v29 > 0)
          {
            result = &__src[24 * v15];
            v30 = &__src[24 * v16];
            if (v15 != v16 || result >= &v30[24 * v29])
            {
              v31 = a3;
              v32 = __src;
              result = memmove(result, v30, 24 * v29);
              __src = v32;
              a3 = v31;
            }

            v17 = __OFADD__(v16, v29);
            v16 += v29;
            if (v17)
            {
              goto LABEL_161;
            }

            v33 = __OFSUB__(v16, *a3);
            if (v16 >= *a3)
            {
              v16 -= *a3;
              if (v33)
              {
                goto LABEL_165;
              }
            }
          }

          v34 = v14 - v29;
          if (__OFSUB__(v14, v29))
          {
            goto LABEL_159;
          }

          if (v34 < 1)
          {
            goto LABEL_144;
          }

          v35 = &__src[24 * v16];
          if (v16 <= 0 && &v35[24 * v34] > __src && !v16)
          {
            goto LABEL_144;
          }

          v36 = 3 * v34;
LABEL_101:
          v48 = 8 * v36;
          result = __src;
LABEL_143:
          v63 = a3;
          result = memmove(result, v35, v48);
          a3 = v63;
          goto LABEL_144;
        }

LABEL_78:
        v39 = v10 - v16;
        v40 = __OFSUB__(v10, v16);
        if (v27 >= v15)
        {
          if (v40)
          {
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
LABEL_163:
            __break(1u);
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
LABEL_167:
            __break(1u);
            return result;
          }

          if (v39 > 0)
          {
            result = &__src[24 * v15];
            v59 = &__src[24 * v16];
            if (v15 != v16 || result >= &v59[24 * v39])
            {
              v60 = a3;
              v61 = __src;
              result = memmove(result, v59, 24 * v39);
              __src = v61;
              a3 = v60;
            }

            v17 = __OFADD__(v15, v39);
            v15 += v39;
            if (v17)
            {
              goto LABEL_163;
            }

            v62 = __OFSUB__(v15, *a3);
            if (v15 >= *a3)
            {
              v15 -= *a3;
              if (v62)
              {
                goto LABEL_167;
              }
            }
          }

          if (v5 >= 1)
          {
            result = &__src[24 * v15];
            if (v15 < 0 || v15 >= v5 || v15)
            {
              v48 = 24 * v5;
              v35 = __src;
              goto LABEL_143;
            }
          }

          goto LABEL_144;
        }

        if (v40)
        {
LABEL_156:
          __break(1u);
          goto LABEL_157;
        }

        if (v39 > 0)
        {
          result = &__src[24 * v15];
          v41 = &__src[24 * v16];
          if (v15 != v16 || result >= &v41[24 * v39])
          {
            v42 = a3;
            v43 = __src;
            result = memmove(result, v41, 24 * v39);
            __src = v43;
            a3 = v42;
          }

          v17 = __OFADD__(v15, v39);
          v15 += v39;
          if (v17)
          {
            goto LABEL_162;
          }

          v44 = __OFSUB__(v15, *a3);
          if (v15 >= *a3)
          {
            v15 -= *a3;
            if (v44)
            {
              goto LABEL_166;
            }
          }
        }

        result = &__src[24 * v15];
        if (v15 < 0 || v15 >= v6 || v15)
        {
          v45 = a3;
          v46 = __src;
          result = memmove(result, __src, 24 * v6);
          __src = v46;
          a3 = v45;
        }

        v47 = v6;
        if (v6 >= *a3)
        {
          v47 = v6 - *a3;
          if (__OFSUB__(v6, *a3))
          {
            goto LABEL_164;
          }
        }

        if (v4 <= 0)
        {
          goto LABEL_144;
        }

        v35 = &__src[24 * v47];
        if (v47 <= 0 && &v35[24 * v4] > __src && !v47)
        {
          goto LABEL_144;
        }

        v36 = 3 * v4;
        goto LABEL_101;
      }

LABEL_151:
      __break(1u);
      goto LABEL_152;
    }

LABEL_150:
    __break(1u);
    goto LABEL_151;
  }

  if (v8 >= v14)
  {
    if (__OFSUB__(0, v15))
    {
LABEL_154:
      __break(1u);
      goto LABEL_155;
    }

    if (v15 > 0)
    {
      v52 = &__src[24 * v16 + -24 * v15];
      if (v52 != __src || v52 >= &__src[24 * v15])
      {
        v16 = result;
        v54 = a3;
        v55 = __src;
        memmove(v52, __src, 24 * v15);
        result = v16;
        __src = v55;
        a3 = v54;
      }
    }

    v10 = result - v15;
    if (__OFSUB__(result, v15))
    {
      goto LABEL_158;
    }

    goto LABEL_116;
  }

  if (v15 > 0)
  {
    v37 = 24 * v15;
    v15 = result;
    v4 = a3;
    v5 = __src;
    memmove(&__src[24 * v6], __src, v37);
    result = v15;
    __src = v5;
    a3 = v4;
  }

  v27 = *a3;
  v38 = *a3 - v6;
  if (*a3 < 1 || (v20 = *a3 == v6, v38 > 0) || v27 != v6)
  {
    v15 = result;
    v4 = a3;
    v5 = __src;
    memmove(__src, &__src[24 * v38], 24 * v6);
    result = v15;
    __src = v5;
    a3 = v4;
  }

  v10 = result - v16;
  if (__OFSUB__(result, v16))
  {
    __break(1u);
    goto LABEL_78;
  }

LABEL_116:
  if (v10 < 1)
  {
    goto LABEL_122;
  }

  v56 = a3[2];
  result = &__src[24 * v14];
  v49 = &__src[24 * v56];
  if (v14 >= v56 && result < &v49[24 * v10] && v14 == v56)
  {
    goto LABEL_122;
  }

  v16 = a3;
  v51 = 24 * v10;
LABEL_121:
  result = memmove(result, v49, v51);
  a3 = v16;
LABEL_122:
  a3[2] = v14;
  v57 = a3[1];
  v17 = __OFSUB__(v57, v6);
  v58 = v57 - v6;
  if (!v17)
  {
    goto LABEL_145;
  }

  __break(1u);
LABEL_125:
  if (v14 > 0)
  {
    result = &__src[24 * v15];
    v35 = &__src[24 * v16];
    if (v15 < v16 || result >= &v35[24 * v14] || v15 != v16)
    {
      v48 = 24 * v14;
      goto LABEL_143;
    }
  }

LABEL_144:
  v64 = a3[1];
  v17 = __OFSUB__(v64, v6);
  v58 = v64 - v6;
  if (v17)
  {
LABEL_152:
    __break(1u);
LABEL_153:
    __break(1u);
    goto LABEL_154;
  }

LABEL_145:
  a3[1] = v58;
  return result;
}

uint64_t sub_24DD2A808(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;

  sub_24DD1CF8C();
  return v2;
}

uint64_t sub_24DD2A874(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24DD0D4B0;

  return sub_24DD1F5A0(a1, v7, v8, v4, v5, v6);
}

uint64_t sub_24DD2A93C()
{
  v1 = *(v0 + 40);
  v3[0] = *(v0 + 48);
  v3[1] = v1;
  return BufferedStream.Source.cancelCallback(callbackToken:)(v3);
}

uint64_t sub_24DD2A9C0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t sub_24DD2AAE0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24DD2AB40()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24DD2AB94()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
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

uint64_t sub_24DD2AC04(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24DD2AC24(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_24DD2AC54(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24DD2AC70(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_24DD2ACA8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24DD2AD5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = type metadata accessor for BufferedStream._StateMachine._State();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24DD2ADE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = type metadata accessor for BufferedStream._StateMachine._State();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t sub_24DD2AE84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = type metadata accessor for BufferedStream._StateMachine._State();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_24DD2AF18(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = type metadata accessor for BufferedStream._StateMachine._State.Initial();
  if (v3 <= 0x3F)
  {
    result = type metadata accessor for BufferedStream._StateMachine._State.Streaming();
    if (v4 <= 0x3F)
    {
      result = type metadata accessor for BufferedStream._StateMachine._State.SourceFinished();
      if (v5 <= 0x3F)
      {
        result = sub_24DD2B014();
        if (v6 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_24DD2B014()
{
  result = qword_27F1AFD10[0];
  if (!qword_27F1AFD10[0])
  {
    result = MEMORY[0x277D839B0];
    atomic_store(MEMORY[0x277D839B0], qword_27F1AFD10);
  }

  return result;
}

uint64_t sub_24DD2B044()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24DD2B080(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_24DD2B0C8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_24DD2B118(uint64_t a1)
{
  v1 = *(a1 + 16);
  type metadata accessor for BufferedStream._InternalBackPressureStrategy();
  if (v2 <= 0x3F)
  {
    sub_24DD2C48C(319, &qword_27F1AFE18, &qword_27F1AFE20, &qword_24DD4D070, MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      sub_24DD4B074();
      if (v4 <= 0x3F)
      {
        sub_24DD4B4B4();
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1AF298, &qword_24DD4C1C0);
        sub_24DD4B324();
        sub_24DD4B4B4();
        if (v5 <= 0x3F)
        {
          sub_24DD2C48C(319, &qword_27F1AFE28, &qword_27F1AFE30, qword_24DD4D078, MEMORY[0x277CFB920]);
          if (v6 <= 0x3F)
          {
            sub_24DD2B4AC();
            if (v7 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_24DD2B2C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 64);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v6 = *(a3 + 16);
    sub_24DD4B4B4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1AF298, &qword_24DD4C1C0);
    sub_24DD4B324();
    v9 = sub_24DD4B4B4();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 40);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_24DD2B3C8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 64) = (a2 - 1);
  }

  else
  {
    v6 = *(a4 + 16);
    sub_24DD4B4B4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1AF298, &qword_24DD4C1C0);
    sub_24DD4B324();
    v8 = sub_24DD4B4B4();
    v9 = *(*(v8 - 8) + 56);
    v10 = v5 + *(a4 + 40);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

void sub_24DD2B4AC()
{
  if (!qword_27F1AFE38[0])
  {
    v0 = sub_24DD4B074();
    if (!v1)
    {
      atomic_store(v0, qword_27F1AFE38);
    }
  }
}

uint64_t sub_24DD2B4FC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24DD2B538(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_24DD2B594(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_24DD2B5F8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24DD2B64C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24DD2B6A0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24DD2B6DC(uint64_t *a1, int a2)
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

uint64_t sub_24DD2B724(uint64_t result, int a2, int a3)
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

uint64_t sub_24DD2B778()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24DD2B7D4@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = type metadata accessor for BufferedStream._StateMachine();
  return sub_24DD222AC(v4, a1);
}

uint64_t sub_24DD2B864(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_24DD2B938(result, a2, a3, a4 & 1);
  }

  return result;
}

uint64_t sub_24DD2B8BC@<X0>(uint64_t (*a1)(uint64_t)@<X1>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = type metadata accessor for BufferedStream._StateMachine();
  result = a1(v6);
  *a2 = result;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  return result;
}

uint64_t sub_24DD2B938(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {

    a1 = a2;
  }

  return sub_24DD1C134(a1);
}

uint64_t sub_24DD2B98C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24DD0C914;

  return sub_24DD25C5C(a1, v1);
}

uint64_t sub_24DD2BA48@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = type metadata accessor for BufferedStream._StateMachine();
  return sub_24DD2787C(v4, a1);
}

unint64_t sub_24DD2BA94()
{
  result = qword_27F1AF598;
  if (!qword_27F1AF598)
  {
    sub_24DD4B334();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1AF598);
  }

  return result;
}

uint64_t sub_24DD2BB0C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = type metadata accessor for BufferedStream._StateMachine();
  return sub_24DD26688(v4, v5, a1);
}

uint64_t sub_24DD2BB78()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for BufferedStream._StateMachine();
  return sub_24DD21A58(v2);
}

uint64_t sub_24DD2BBBC(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_24DD1F87C(a1, v1[5], v1[6]);
}

uint64_t sub_24DD2BBCC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24DD2BC60(void *a1, char a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0) - 8) + 80);

  return sub_24DD1F9D8(a1, a2 & 1);
}

uint64_t (*sub_24DD2BCEC@<X0>(uint64_t (**a1)(uint64_t a1, char a2)@<X8>))(uint64_t a1, char a2)
{
  v3 = *(v1 + 16);
  v7 = *(v1 + 24);
  v4 = type metadata accessor for BufferedStream._StateMachine();
  result = sub_24DD24060(&v7, v4);
  *a1 = result;
  a1[1] = v6;
  return result;
}

uint64_t sub_24DD2BD64(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a1;
  v7 = a2 & 1;
  return v3(&v6);
}

uint64_t sub_24DD2BDBC@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = type metadata accessor for BufferedStream._StateMachine();
  return sub_24DD24DEC(v4, a1);
}

uint64_t sub_24DD2BE08@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v7 = *a1;
  result = v5(a2);
  if (__OFADD__(v7, result))
  {
    __break(1u);
  }

  else
  {
    *a3 = v7 + result;
  }

  return result;
}

uint64_t sub_24DD2BE5C@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v11 = v4;
  v7 = type metadata accessor for BufferedStream._StateMachine();
  result = sub_24DD23AE0(&v11, v6, v5, v7);
  *a1 = result;
  a1[1] = v9;
  a1[2] = v10;
  return result;
}

uint64_t sub_24DD2BEE4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24DD2BF3C@<X0>(char *a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = type metadata accessor for BufferedStream._StateMachine();
  return sub_24DD22B3C(v5, v7, v4, v6, a1);
}

unint64_t sub_24DD2BFA4()
{
  result = qword_27F1B0110[0];
  if (!qword_27F1B0110[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B0108, &qword_24DD4D2D8);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F1B0110);
  }

  return result;
}

uint64_t sub_24DD2C020@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = type metadata accessor for BufferedStream._StateMachine();
  return sub_24DD24514(v4, v5, a1);
}

uint64_t sub_24DD2C074()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_24DD2C0D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 24))
  {
    return (*a1 + 127);
  }

  v3 = (((*(a1 + 16) >> 57) >> 6) | (2 * ((*(a1 + 16) >> 57) & 0x38 | *(a1 + 16) & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_24DD2C12C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_24DD2C1A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = type metadata accessor for BufferedStream.Source.WriteResult.CallbackToken();
  if (v3 <= 0x3F)
  {
    sub_24DD4B4B4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1AF298, &qword_24DD4C1C0);
    sub_24DD4B324();
    result = swift_getTupleTypeMetadata2();
    if (v4 <= 0x3F)
    {
      result = swift_getTupleTypeMetadata3();
      if (v5 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_24DD2C2B0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_24DD2C2EC(uint64_t a1)
{
  sub_24DD2C48C(319, &qword_27F1AFE18, &qword_27F1AFE20, &qword_24DD4D070, MEMORY[0x277D83D88]);
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    sub_24DD4B4B4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1AF298, &qword_24DD4C1C0);
    sub_24DD4B324();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B00D8, &unk_24DD4D290);
    swift_getTupleTypeMetadata3();
    if (v4 <= 0x3F)
    {
      sub_24DD2C418();
      if (v5 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_24DD2C418()
{
  if (!qword_27F1B0318)
  {
    sub_24DD2C48C(0, &qword_27F1B0320, qword_27F1B0328, qword_24DD4D408, MEMORY[0x277D83940]);
    if (!v1)
    {
      atomic_store(v0, &qword_27F1B0318);
    }
  }
}

void sub_24DD2C48C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_24DD2C4F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  sub_24DD4B4B4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1AF298, &qword_24DD4C1C0);
  v2 = sub_24DD4B324();
  v4 = v3;
  result = swift_getTupleTypeMetadata2();
  if (v6 <= 0x3F)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B00C0, &qword_24DD4D260);
    result = swift_getTupleTypeMetadata3();
    if (v7 <= 0x3F)
    {
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B00D8, &unk_24DD4D290);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B00C8, &qword_24DD4D268);
      result = swift_getTupleTypeMetadata3();
      if (v8 <= 0x3F)
      {
        if (v4 > 0x3F)
        {
          return v2;
        }

        else
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

void sub_24DD2C658(uint64_t a1)
{
  v1 = *(a1 + 16);
  sub_24DD4B4B4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1AF298, &qword_24DD4C1C0);
  sub_24DD4B324();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B00C8, &qword_24DD4D268);
  swift_getTupleTypeMetadata2();
  if (v2 <= 0x3F)
  {
    sub_24DD2CB54(319, qword_27F1B0430, &qword_27F1B00C0, &qword_24DD4D260);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_24DD2C748(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B00C0, &qword_24DD4D260);
    swift_getTupleTypeMetadata2();
    if (v3 <= 0x3F)
    {
      sub_24DD2CB54(319, qword_27F1B04B8, &qword_27F1B00D8, &unk_24DD4D290);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_24DD2C818(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (((v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v3)
  {
    v3 = ((v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v4 = 24;
  if (v3 > 0x18)
  {
    v4 = v3;
  }

  v5 = 252 - (1u >> (8 * v4));
  if (v4 >= 4)
  {
    v5 = 252;
  }

  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    goto LABEL_29;
  }

  v6 = v4 + 1;
  v7 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v10 = ((~(-1 << v7) + a2 - v5) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v10 < 2)
    {
LABEL_29:
      v12 = *(a1 + v4);
      if (v5 <= (v12 ^ 0xFFu))
      {
        return 0;
      }

      else
      {
        return (256 - v12);
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_29;
  }

LABEL_18:
  v11 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_24DD2C96C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v5)
  {
    v5 = ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v5 <= 0x18)
  {
    v5 = 24;
  }

  v6 = 252 - (1u >> (8 * v5));
  if (v5 >= 4)
  {
    v6 = 252;
  }

  v7 = v5 + 1;
  if (v6 >= a3)
  {
    v8 = 0;
    if (v6 < a2)
    {
      goto LABEL_19;
    }

LABEL_23:
    if (v8 > 1)
    {
      if (v8 != 2)
      {
        *&a1[v7] = 0;
        if (!a2)
        {
          return;
        }

LABEL_35:
        a1[v5] = -a2;
        return;
      }

      *&a1[v7] = 0;
    }

    else if (v8)
    {
      a1[v7] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  v8 = 1;
  if (v7 <= 3)
  {
    v9 = ((~(-1 << (8 * v7)) + a3 - v6) >> (8 * v7)) + 1;
    v10 = HIWORD(v9);
    if (v9 < 0x100)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    if (v9 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    if (v10)
    {
      v8 = 4;
    }

    else
    {
      v8 = v12;
    }
  }

  if (v6 >= a2)
  {
    goto LABEL_23;
  }

LABEL_19:
  v13 = ~v6 + a2;
  if (v7 >= 4)
  {
    bzero(a1, v7);
    *a1 = v13;
    v14 = 1;
    if (v8 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  v14 = (v13 >> (8 * v7)) + 1;
  if (v5 == -1)
  {
LABEL_39:
    if (v8 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  v15 = v13 & ~(-1 << (8 * v7));
  bzero(a1, v7);
  if (v7 == 3)
  {
    *a1 = v15;
    a1[2] = BYTE2(v15);
    goto LABEL_39;
  }

  if (v7 == 2)
  {
    *a1 = v15;
    if (v8 > 1)
    {
LABEL_43:
      if (v8 == 2)
      {
        *&a1[v7] = v14;
      }

      else
      {
        *&a1[v7] = v14;
      }

      return;
    }
  }

  else
  {
    *a1 = v13;
    if (v8 > 1)
    {
      goto LABEL_43;
    }
  }

LABEL_40:
  if (v8)
  {
    a1[v7] = v14;
  }
}

void sub_24DD2CB54(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B00C8, &qword_24DD4D268);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_24DD2CBF4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24DD2CC34(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24DD2CC80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

void sub_24DD2CCE4(uint64_t a1)
{
  sub_24DD2C48C(319, &qword_27F1AFE18, &qword_27F1AFE20, &qword_24DD4D070, MEMORY[0x277D83D88]);
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    sub_24DD4B4B4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1AF298, &qword_24DD4C1C0);
    sub_24DD4B324();
    sub_24DD4B4B4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1B00C0, &qword_24DD4D260);
    swift_getTupleTypeMetadata3();
    if (v4 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_24DD2CE08()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24DD2CE44(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_24DD2CEA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_24DD2CF50(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
      v6 = *(v5 + 16);
LABEL_11:
      result = sub_24DD4B554();
      v3 = result;
      goto LABEL_12;
    }

LABEL_10:
    sub_24DD4B5C4();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
  if (a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_9;
  }

LABEL_12:
  *v1 = v3;
  return result;
}

uint64_t sub_24DD2CFEC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5A0, &qword_24DD4CB48);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v42 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5A8, &qword_24DD4CB50);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v42 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0860, &qword_24DD4D9F8);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = (&v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v18 = (&v42 - v17);
  v19 = *(v1 + 16);
  v20 = *(*v19 + *MEMORY[0x277D841D0] + 16);
  v21 = (*(*v19 + 48) + 7) & 0x1FFFFFFF8;
  result = pthread_mutex_lock((v19 + v21));
  if (result)
  {
    __break(1u);
    goto LABEL_20;
  }

  sub_24DD2DC90(a1, v18);
  result = pthread_mutex_unlock((v19 + v21));
  if (result)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  sub_24DD1C3AC(v18, v16, &qword_27F1B0860, &qword_24DD4D9F8);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0868, &qword_24DD4DA00);
  if ((*(*(v23 - 8) + 48))(v16, 1, v23) == 1)
  {
    return sub_24DD1C414(v18, &qword_27F1B0860, &qword_24DD4D9F8);
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v32 = *v16;
    if (*v16)
    {
      v33 = v16[1];

      v32(v34);
      sub_24DD1C134(v32);
      sub_24DD1C134(v32);
    }

    return sub_24DD1C414(v18, &qword_27F1B0860, &qword_24DD4D9F8);
  }

  if (EnumCaseMultiPayload == 1)
  {
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0870, &qword_24DD4DA08);
    v26 = *(v16 + *(v25 + 48));
    v27 = v16 + *(v25 + 64);
    v28 = *v27;
    v29 = *(v27 + 1);
    (*(v8 + 32))(v11, v16, v7);
    if (v26)
    {
      v42 = v26;
      v30 = v26;
      sub_24DD4B304();
      if (v28)
      {
LABEL_8:

        v28(v31);
        sub_24DD1C134(v28);

        sub_24DD1C134(v28);
LABEL_17:
        (*(v8 + 8))(v11, v7);
        return sub_24DD1C414(v18, &qword_27F1B0860, &qword_24DD4D9F8);
      }
    }

    else
    {
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0B60, &qword_24DD4CB20);
      (*(*(v41 - 8) + 56))(v6, 1, 1, v41);
      sub_24DD4B314();
      if (v28)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_17;
  }

  v35 = *v16;
  v36 = *(*v16 + 2);
  if (v36)
  {
    sub_24DD1C09C();
    v37 = (v35 + 40);
    do
    {
      v39 = *(v37 - 1);
      v38 = *v37;
      v40 = swift_allocError();
      v42 = v40;
      v43 = 1;

      v39(&v42);

      v37 += 2;
      --v36;
    }

    while (v36);
  }

  sub_24DD1C414(v18, &qword_27F1B0860, &qword_24DD4D9F8);
}

uint64_t sub_24DD2D480(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  sub_24DD1C474(a1, v20, &qword_27F1B0880, &qword_24DD4DA28);
  v2 = v21;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0888, &qword_24DD4DA30);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v19 - v9;
  *&v10[*(v8 + 36)] = 0;
  v11 = v20[1];
  *v10 = v20[0];
  *(v10 + 1) = v11;
  *(v10 + 4) = v2;
  v10[40] = 0;
  *(v10 + 6) = 0;
  *(v10 + 7) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0878, &qword_24DD4DA20);
  swift_storeEnumTagMultiPayload();
  sub_24DD1C3AC(v10, v7, &qword_27F1B0888, &qword_24DD4DA30);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0890, &qword_24DD4DA38);
  v13 = *(v12 + 52);
  v14 = (*(v12 + 48) + 7) & 0x1FFFFFFF8;
  v15 = swift_allocObject();
  sub_24DD1C3AC(v7, v15 + *(*v15 + *MEMORY[0x277D841D0] + 16), &qword_27F1B0888, &qword_24DD4DA30);
  v16 = (*(*v15 + 48) + 7) & 0x1FFFFFFF8;
  v19.__sig = 0;
  *v19.__opaque = 0;

  pthread_mutexattr_init(&v19);
  LODWORD(v16) = pthread_mutex_init((v15 + v16), &v19);

  if (v16)
  {
    __break(1u);
  }

  sub_24DD1C414(v7, &qword_27F1B0888, &qword_24DD4DA30);
  sub_24DD1C414(v10, &qword_27F1B0888, &qword_24DD4DA30);
  *(v1 + 16) = v15;
  v17 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t sub_24DD2D6DC(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  sub_24DD1C474(a1, v20, &qword_27F1B0898, &unk_24DD4DA40);
  v2 = v21;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5E0, &qword_24DD4CB88);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v19 - v9;
  *&v10[*(v8 + 36)] = 0;
  v11 = v20[1];
  *v10 = v20[0];
  *(v10 + 1) = v11;
  *(v10 + 4) = v2;
  v10[40] = 0;
  *(v10 + 6) = 0;
  *(v10 + 7) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF588, &qword_24DD4CB40);
  swift_storeEnumTagMultiPayload();
  sub_24DD1C3AC(v10, v7, &qword_27F1AF5E0, &qword_24DD4CB88);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B08A0, &unk_24DD4DA50);
  v13 = *(v12 + 52);
  v14 = (*(v12 + 48) + 7) & 0x1FFFFFFF8;
  v15 = swift_allocObject();
  sub_24DD1C3AC(v7, v15 + *(*v15 + *MEMORY[0x277D841D0] + 16), &qword_27F1AF5E0, &qword_24DD4CB88);
  v16 = (*(*v15 + 48) + 7) & 0x1FFFFFFF8;
  v19.__sig = 0;
  *v19.__opaque = 0;

  pthread_mutexattr_init(&v19);
  LODWORD(v16) = pthread_mutex_init((v15 + v16), &v19);

  if (v16)
  {
    __break(1u);
  }

  sub_24DD1C414(v7, &qword_27F1AF5E0, &qword_24DD4CB88);
  sub_24DD1C414(v10, &qword_27F1AF5E0, &qword_24DD4CB88);
  *(v1 + 16) = v15;
  v17 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t sub_24DD2D938()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1B0B00, &unk_24DD4DDA0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v18 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0878, &qword_24DD4DA20);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  sub_24DD1C3AC(v0, &v18 - v7, &qword_27F1B0878, &qword_24DD4DA20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      if ((*v8 & 1) == 0)
      {
        v16 = *(v8 + 3);
        v15 = *(v8 + 4);
        v19 = *(v8 + 8);
        sub_24DD1C414(v0, &qword_27F1B0878, &qword_24DD4DA20);
        *v0 = 1;
        *(v0 + 8) = v19;
        *(v0 + 24) = v16;
        *(v0 + 32) = v15;
        return swift_storeEnumTagMultiPayload();
      }
    }

    else if (EnumCaseMultiPayload == 3 && (*v8 & 1) == 0)
    {
      sub_24DD1C414(v0, &qword_27F1B0878, &qword_24DD4DA20);
      *v0 = 1;
      return swift_storeEnumTagMultiPayload();
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_24DD1C474(v8, v4, &unk_27F1B0B00, &unk_24DD4DDA0);
    if ((v4[40] & 1) == 0)
    {
      v4[40] = 1;
      sub_24DD1C414(v0, &qword_27F1B0878, &qword_24DD4DA20);
      sub_24DD1C474(v4, v0, &unk_27F1B0B00, &unk_24DD4DDA0);
      return swift_storeEnumTagMultiPayload();
    }
  }

  else if ((v8[40] & 1) == 0)
  {
    v11 = *(v8 + 6);
    v10 = *(v8 + 7);
    v12 = *(v8 + 4);
    v13 = *v8;
    v18 = *(v8 + 1);
    v19 = v13;
    sub_24DD1C414(v0, &qword_27F1B0878, &qword_24DD4DA20);
    v14 = v18;
    *v0 = v19;
    *(v0 + 16) = v14;
    *(v0 + 32) = v12;
    *(v0 + 40) = 1;
    *(v0 + 48) = v11;
    *(v0 + 56) = v10;
    return swift_storeEnumTagMultiPayload();
  }

  result = sub_24DD4B5B4();
  __break(1u);
  return result;
}

uint64_t sub_24DD2DC90@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v71 = a2;
  *&v72 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5D0, &unk_24DD4DA10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v68 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF5A8, &qword_24DD4CB50);
  v70 = *(v8 - 8);
  v9 = *(v70 + 64);
  MEMORY[0x28223BE20](v8);
  v69 = &v68 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF580, &qword_24DD4CB38);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v68 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1AF588, &qword_24DD4CB40);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v68 - v20;
  sub_24DD1C3AC(v3, &v68 - v20, &qword_27F1AF588, &qword_24DD4CB40);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_24DD1C414(v21, &qword_27F1AF588, &qword_24DD4CB40);
    }

    else if (EnumCaseMultiPayload != 3)
    {
LABEL_36:
      result = sub_24DD4B5B4();
      __break(1u);
      return result;
    }

    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0868, &qword_24DD4DA00);
    return (*(*(v52 - 8) + 56))(v71, 1, 1, v52);
  }

  if (EnumCaseMultiPayload)
  {
    v35 = v14;
    sub_24DD1C474(v21, v14, &qword_27F1AF580, &qword_24DD4CB38);
    sub_24DD1C3AC(&v14[*(v11 + 40)], v7, &qword_27F1AF5D0, &unk_24DD4DA10);
    v36 = v70;
    if ((*(v70 + 48))(v7, 1, v8) == 1)
    {
      sub_24DD1C414(v7, &qword_27F1AF5D0, &unk_24DD4DA10);
      sub_24DD1C414(v3, &qword_27F1AF588, &qword_24DD4CB40);
      v37 = v14[40];
      v38 = *(v14 + 7);
      v39 = *(v14 + 8);
      v40 = *(v35 + 48);
      *v3 = v37;
      v41 = v72;
      *(v3 + 8) = v39;
      *(v3 + 16) = v41;
      *(v3 + 24) = v40;
      *(v3 + 32) = v38;
      swift_storeEnumTagMultiPayload();
      v42 = *(v35 + *(v11 + 44));
      v43 = v42[3];
      if (v43)
      {
        v44 = v41;

        sub_24DD1CA8C(v40);
        v73 = MEMORY[0x277D84F90];
        sub_24DD286D4(0, v43 & ~(v43 >> 63), 0);
        if (v43 < 0)
        {
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        v45 = 0;
        v46 = v73;
        while (v45 < v42[3])
        {
          v47 = v42[4];
          if (v45 + v47 >= v42[2])
          {
            v48 = v42[2];
          }

          else
          {
            v48 = 0;
          }

          v49 = *&v42[3 * v45 + 6 + 3 * (v47 - v48)];
          v73 = v46;
          v50 = *(v46 + 16);
          v51 = *(v46 + 24);
          v72 = v49;

          if (v50 >= v51 >> 1)
          {
            sub_24DD286D4((v51 > 1), v50 + 1, 1);
            v46 = v73;
          }

          ++v45;
          *(v46 + 16) = v50 + 1;
          *(v46 + 16 * v50 + 32) = v72;
          if (v43 == v45)
          {
            goto LABEL_30;
          }
        }

        __break(1u);
        goto LABEL_33;
      }

      v65 = v41;

      sub_24DD1CA8C(v40);
      v46 = MEMORY[0x277D84F90];
LABEL_30:
      v66 = v71;
      *v71 = v46;
      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0868, &qword_24DD4DA00);
      swift_storeEnumTagMultiPayload();
      (*(*(v67 - 8) + 56))(v66, 0, 1, v67);
    }

    else
    {
      v53 = *(v36 + 32);
      v53(v69, v7, v8);
      if (*(*(v14 + 8) + 24))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v54 = *(*&v14[*(v11 + 44)] + 24);
      v55 = v72;
      if (v54)
      {
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      sub_24DD1C414(v3, &qword_27F1AF588, &qword_24DD4CB40);
      *v3 = *(v35 + 40);
      swift_storeEnumTagMultiPayload();
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0870, &qword_24DD4DA08);
      v57 = *(v56 + 48);
      v58 = v71;
      v59 = (v71 + *(v56 + 64));
      v53(v71, v69, v8);
      *(v58 + v57) = v55;
      v60 = *(v35 + 48);
      v61 = *(v35 + 56);
      if (v60)
      {
        v62 = *(v35 + 56);
      }

      else
      {
        v62 = 0;
      }

      *v59 = v60;
      v59[1] = v62;
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0868, &qword_24DD4DA00);
      swift_storeEnumTagMultiPayload();
      (*(*(v63 - 8) + 56))(v58, 0, 1, v63);
      v64 = v55;
      sub_24DD1CA8C(v60);
    }

    return sub_24DD1C414(v35, &qword_27F1AF580, &qword_24DD4CB38);
  }

  v23 = *(v21 + 3);
  v24 = *(v21 + 4);
  v25 = v21[40];
  v27 = *(v21 + 6);
  v26 = *(v21 + 7);
  v28 = *sub_24DD4B024();
  *v19 = v25;
  v29 = v72;
  *(v19 + 1) = v28;
  *(v19 + 2) = v29;
  *(v19 + 3) = v27;
  *(v19 + 4) = v26;
  swift_storeEnumTagMultiPayload();

  sub_24DD1CA8C(v27);
  v30 = v29;
  sub_24DD3D224(v19, v3);
  sub_24DD1C134(v23);
  if (v27)
  {
    v31 = v26;
  }

  else
  {
    v31 = 0;
  }

  v32 = v71;
  *v71 = v27;
  v32[1] = v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0868, &qword_24DD4DA00);
  swift_storeEnumTagMultiPayload();
  return (*(*(v33 - 8) + 56))(v32, 0, 1, v33);
}

uint64_t URLSessionTransport.__allocating_init(baseURL:session:serviceConfig:config:)(uint64_t a1, void (**a2)(uint64_t, char *, uint64_t), uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  swift_allocObject();
  v11 = sub_24DD3AE34(a1, a2, a3, a4);

  return v11;
}

uint64_t URLSessionTransport.init(baseURL:session:serviceConfig:config:)(uint64_t a1, void (**a2)(uint64_t, char *, uint64_t), uint64_t a3, uint64_t a4)
{
  v5 = sub_24DD3AE34(a1, a2, a3, a4);

  return v5;
}

uint64_t URLSessionTransport.config(forMethod:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v42 = a2;
  v43 = a1;
  v3 = sub_24DD4AD74();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v40 = sub_24DD4AD44();
  v5 = *(v40 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v40);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_24DD4AC74();
  v9 = *(v41 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v41);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v40 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v40 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v40 - v20;
  v22 = *(v2 + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal19URLSessionTransport_methodConfig);
  if (*(v22 + 16) && (v23 = *(v2 + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal19URLSessionTransport_methodConfig), v24 = sub_24DD39324(v43), (v25 & 1) != 0))
  {
    v26 = *(v22 + 56) + *(v9 + 72) * v24;
    v27 = v41;
    (*(v9 + 16))(v19, v26, v41);
    v28 = *(v9 + 32);
    v28(v21, v19, v27);
    v29 = v42;
    v28(v42, v21, v27);
    v30 = 0;
  }

  else
  {
    v31 = v40;
    (*(v5 + 16))(v8, v43, v40);
    sub_24DD4AD24();
    if (!*(v22 + 16) || (v32 = sub_24DD39324(v8), (v33 & 1) == 0))
    {
      sub_24DD4AD64();
      sub_24DD4AD34();
      if (*(v22 + 16))
      {
        v36 = sub_24DD39324(v8);
        v29 = v42;
        if (v37)
        {
          v38 = *(v22 + 56) + *(v9 + 72) * v36;
          v27 = v41;
          (*(v9 + 16))(v42, v38, v41);
          (*(v5 + 8))(v8, v31);
          v30 = 0;
          return (*(v9 + 56))(v29, v30, 1, v27);
        }

        (*(v5 + 8))(v8, v31);
        v30 = 1;
      }

      else
      {
        (*(v5 + 8))(v8, v31);
        v30 = 1;
        v29 = v42;
      }

      v27 = v41;
      return (*(v9 + 56))(v29, v30, 1, v27);
    }

    v34 = *(v22 + 56) + *(v9 + 72) * v32;
    v27 = v41;
    (*(v9 + 16))(v13, v34, v41);
    (*(v5 + 8))(v8, v31);
    v35 = *(v9 + 32);
    v35(v16, v13, v27);
    v29 = v42;
    v35(v42, v16, v27);
    v30 = 0;
  }

  return (*(v9 + 56))(v29, v30, 1, v27);
}

uint64_t sub_24DD2E8EC()
{
  v1 = *(v0 + 16) + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal19URLSessionTransport_logger;
  v2 = sub_24DD4B084();
  v3 = sub_24DD4B414();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24DD09000, v2, v3, "Starting URLSession transport", v4, 2u);
    MEMORY[0x253038870](v4, -1, -1);
  }

  v5 = *(MEMORY[0x277D85A10] + 4);
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_24DD2EA44;
  v7 = *(v0 + 16);

  return MEMORY[0x282200830](v6, &unk_24DD4D6E0);
}

uint64_t sub_24DD2EA44()
{
  v2 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v3 = sub_24DD2EBBC;
  }

  else
  {
    v3 = sub_24DD2EB58;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24DD2EB58()
{
  v1 = *(v0 + 16);
  sub_24DD2EC20();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24DD2EBBC()
{
  v1 = v0[2];
  sub_24DD2EC20();
  v2 = v0[1];
  v3 = v0[4];

  return v2();
}

void sub_24DD2EC20()
{
  oslog = sub_24DD4B084();
  v0 = sub_24DD4B414();
  if (os_log_type_enabled(oslog, v0))
  {
    v1 = swift_slowAlloc();
    *v1 = 0;
    _os_log_impl(&dword_24DD09000, oslog, v0, "Finished running URLSession transport", v1, 2u);
    MEMORY[0x253038870](v1, -1, -1);
  }
}

uint64_t sub_24DD2ECCC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_24DD2ECEC, 0, 0);
}

uint64_t sub_24DD2ECEC()
{
  v1 = *(MEMORY[0x277D85A40] + 4);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_24DD2EDC4;
  v3 = v0[2];
  v4 = v0[3];
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v3, 0, 0, 0x287463656E6E6F63, 0xE900000000000029, sub_24DD3D2E0, v4, v5);
}

uint64_t sub_24DD2EDC4()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24DD2EEF8, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_24DD2EF10(uint64_t a1, uint64_t a2)
{
  v38 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B06D0, &qword_24DD4D6E8);
  v39 = *(v8 - 8);
  v9 = *(v39 + 64);
  MEMORY[0x28223BE20](v8);
  v40 = &v33 - v10;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B08B0, &qword_24DD4DA70);
  v11 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v13 = &v33 - v12;
  v14 = type metadata accessor for URLSessionTransport.State.ConnectAction(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = (&v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v20 = (&v33 - v19);
  v21 = (a2 + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal19URLSessionTransport_state);
  os_unfair_lock_lock((a2 + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal19URLSessionTransport_state));
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B06E0, &qword_24DD4D6F8) + 28);
  v41[0] = *(a2 + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal19URLSessionTransport_transportID);
  sub_24DD2F350(v38, v41, v20);
  os_unfair_lock_unlock(v21);
  sub_24DD3BD4C(v20, v18, type metadata accessor for URLSessionTransport.State.ConnectAction);
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    (*(v4 + 32))(v7, v18, v3);
    sub_24DD4B314();
    (*(v4 + 8))(v7, v3);
    return sub_24DD3BCCC(v20, type metadata accessor for URLSessionTransport.State.ConnectAction);
  }

  v34 = v20;
  v24 = *v18;
  v38 = v18[1];
  v36 = *(v24 + 16);
  if (!v36)
  {
LABEL_9:

LABEL_11:
    v20 = v34;
    return sub_24DD3BCCC(v20, type metadata accessor for URLSessionTransport.State.ConnectAction);
  }

  v25 = 0;
  v35 = v39 + 16;
  v26 = (v39 + 32);
  v27 = (v39 + 8);
  v28 = (v38 + 40);
  while (v25 < *(v24 + 16))
  {
    result = (*(v39 + 16))(v40, v24 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v25, v8);
    v29 = *(v38 + 16);
    if (v25 == v29)
    {

      (*v27)(v40, v8);
      goto LABEL_11;
    }

    if (v25 >= v29)
    {
      goto LABEL_14;
    }

    ++v25;
    v30 = *(v28 - 1);
    v31 = *v28;
    v32 = &v13[*(v37 + 48)];
    (*v26)(v13, v40, v8);
    *v32 = v30;
    v32[1] = v31;
    v41[0] = v30;
    v41[1] = v31;
    sub_24DD4B314();
    result = (*v27)(v13, v8);
    v28 += 2;
    if (v36 == v25)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_24DD2F350@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v8 = sub_24DD3C18C(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for URLSessionTransport.State(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a2;
  sub_24DD3CBF8(v4, v15, type metadata accessor for URLSessionTransport.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v18 = *v15;
      v19 = *(v8 + 20);
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
      (*(*(v20 - 8) + 16))(v11 + v19, a1, v20);
      v21 = MEMORY[0x277D84F90];
      *v11 = sub_24DD3AD24(MEMORY[0x277D84F90]);
      v11[1] = v16;
      v11[2] = 0;
      v57 = v18;
      v22 = *(v18 + 16);
      v23 = sub_24DD4A19C(0, v22, 0, v21);
      if (!v22)
      {
LABEL_26:
        sub_24DD3CBF8(v11, v4, sub_24DD3C18C);
        swift_storeEnumTagMultiPayload();
        *a3 = v57;
        a3[1] = v23;
        type metadata accessor for URLSessionTransport.State.ConnectAction(0);
        return swift_storeEnumTagMultiPayload();
      }

      v56 = a3;
      v24 = 0;
      v25 = v11[1];
      while (1)
      {
        v26 = *v11;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v58 = *v11;
        v28 = v58;
        v29 = sub_24DD393BC(v25, v24);
        v31 = v28[2];
        v32 = (v30 & 1) == 0;
        v33 = __OFADD__(v31, v32);
        v34 = v31 + v32;
        if (v33)
        {
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          result = sub_24DD4B684();
          __break(1u);
          return result;
        }

        v35 = v30;
        if (v28[3] < v34)
        {
          break;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_10;
        }

        v40 = v29;
        sub_24DD3A4D4();
        v29 = v40;
        v37 = v58;
        if (v35)
        {
LABEL_11:
          v38 = v37[7];
          v39 = *(v38 + 8 * v29);
          *(v38 + 8 * v29) = 0;
          sub_24DD3CC60(v39);
          goto LABEL_15;
        }

LABEL_13:
        v37[(v29 >> 6) + 8] |= 1 << v29;
        v41 = (v37[6] + 16 * v29);
        *v41 = v25;
        v41[1] = v24;
        *(v37[7] + 8 * v29) = 0;
        v42 = v37[2];
        v33 = __OFADD__(v42, 1);
        v43 = v42 + 1;
        if (v33)
        {
          goto LABEL_33;
        }

        v37[2] = v43;
LABEL_15:
        *v11 = v37;
        v45 = *(v23 + 2);
        v44 = *(v23 + 3);
        if (v45 >= v44 >> 1)
        {
          v23 = sub_24DD4A19C((v44 > 1), v45 + 1, 1, v23);
        }

        v46 = &v23[16 * v45];
        *(v46 + 4) = v25;
        *(v46 + 5) = v24;
        *(v23 + 2) = v45 + 1;
        if (v22 == ++v24)
        {
          v11[2] = v22;
          a3 = v56;
          goto LABEL_26;
        }
      }

      sub_24DD39BD4(v34, isUniquelyReferenced_nonNull_native);
      v29 = sub_24DD393BC(v25, v24);
      if ((v35 & 1) != (v36 & 1))
      {
        goto LABEL_34;
      }

LABEL_10:
      v37 = v58;
      if (v35)
      {
        goto LABEL_11;
      }

      goto LABEL_13;
    }

    sub_24DD3CBF8(v15, v4, sub_24DD3C18C);
LABEL_22:
    swift_storeEnumTagMultiPayload();
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
    (*(*(v47 - 8) + 16))(a3, a1, v47);
    type metadata accessor for URLSessionTransport.State.ConnectAction(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_24DD3CBF8(v15, v4, sub_24DD3C1AC);
    goto LABEL_22;
  }

  swift_storeEnumTagMultiPayload();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
  v50 = *(v49 - 8);
  (*(v50 + 16))(a3, a1, v49);
  type metadata accessor for URLSessionTransport.State.ConnectAction(0);
  swift_storeEnumTagMultiPayload();
  result = swift_getEnumCaseMultiPayload();
  if (result > 1)
  {
    if (result != 2)
    {
      return result;
    }

    v52 = *v15;

    v53 = *(sub_24DD3C1AC(0) + 20);
  }

  else
  {
    if (!result)
    {
      v51 = *v15;
    }

    v54 = *v15;

    v53 = *(v8 + 20);
  }

  return (*(v50 + 8))(&v15[v53], v49);
}

uint64_t sub_24DD2F888(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B06D0, &qword_24DD4D6E8);
  v46 = *(v2 - 8);
  v3 = *(v46 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v45 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B0A60, &qword_24DD4D6F0);
  v47 = *(v6 - 8);
  v48 = v6;
  v7 = *(v47 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v45 - v8;
  v10 = type metadata accessor for URLSessionTransport.State.CancelConnectAction(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v45 - v15;
  v17 = sub_24DD4B084();
  v18 = sub_24DD4B414();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_24DD09000, v17, v18, "Cancelling transport's connection", v19, 2u);
    MEMORY[0x253038870](v19, -1, -1);
  }

  v20 = (a1 + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal19URLSessionTransport_state);
  os_unfair_lock_lock((a1 + OBJC_IVAR____TtC31GRPCURLSessionTransportInternal19URLSessionTransport_state));
  v21 = v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B06E0, &qword_24DD4D6F8) + 28);
  sub_24DD2FD8C(v16);
  os_unfair_lock_unlock(v20);
  sub_24DD3BD4C(v16, v14, type metadata accessor for URLSessionTransport.State.CancelConnectAction);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 1)
  {
    if (!result)
    {
      v23 = v16;
      v24 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1B08A8, &qword_24DD4DA68) + 48)];
      v25 = *v24;
      v26 = v24[8];
      v28 = v47;
      v27 = v48;
      (*(v47 + 32))(v9, v14, v48);
      if (v26)
      {
        v49 = v25;
        sub_24DD4B304();
      }

      else
      {
        sub_24DD4B314();
      }

      (*(v28 + 8))(v9, v27);
      v44 = v23;
      return sub_24DD3BCCC(v44, type metadata accessor for URLSessionTransport.State.CancelConnectAction);
    }

    v34 = *v14;
    v35 = *(v14 + 1);
    v47 = *(v14 + 2);
    LODWORD(v48) = v14[24];
    v36 = *(v34 + 16);
    if (v36)
    {
      v37 = v46 + 16;
      v38 = *(v46 + 16);
      v39 = (*(v46 + 80) + 32) & ~*(v46 + 80);
      v45 = v16;
      v46 = v34;
      v40 = v34 + v39;
      v41 = *(v37 + 56);
      v42 = (v37 - 8);
      v38(v5, v34 + v39, v2);
      while (1)
      {
        if (v48)
        {
          v49 = v35;
          v43 = v35;
          sub_24DD4B304();
        }

        else
        {
          v49 = v35;
          v50 = v47;
          sub_24DD4B314();
        }

        (*v42)(v5, v2);
        v40 += v41;
        if (!--v36)
        {
          break;
        }

        v38(v5, v40, v2);
      }

      v16 = v45;
    }

    else
    {
    }

    sub_24DD3D2D4(v35, v47, v48);
    goto LABEL_28;
  }

  if (result != 2)
  {
LABEL_28:
    v44 = v16;
    return sub_24DD3BCCC(v44, type metadata accessor for URLSessionTransport.State.CancelConnectAction);
  }

  v29 = *v14;
  if (!(*v14 >> 62))
  {
    v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v30)
    {
      goto LABEL_10;
    }

LABEL_30:

    v44 = v16;
    return sub_24DD3BCCC(v44, type metadata accessor for URLSessionTransport.State.CancelConnectAction);
  }

  result = sub_24DD4B5C4();
  v30 = result;
  if (!result)
  {
    goto LABEL_30;
  }

LABEL_10:
  if (v30 >= 1)
  {
    for (i = 0; i != v30; ++i)
    {
      if ((v29 & 0xC000000000000001) != 0)
      {
        v32 = MEMORY[0x253037FE0](i, v29);
      }

      else
      {
        v32 = *(v29 + 8 * i + 32);
      }

      v33 = v32;
      [v32 cancel];
    }

    goto LABEL_30;
  }

  __break(1u);
  return result;
}