uint64_t ClientResponse.Contents.metadata.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;

  *v1 = v2;
  return result;
}

uint64_t ClientResponse.Contents.message.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = *(a1 + 16);
  sub_24DC2E0D8();
  v6 = sub_24DCB5904();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v2 + v4, v6);
}

unint64_t sub_24DC2E0D8()
{
  result = qword_27F19ED50;
  if (!qword_27F19ED50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19ED50);
  }

  return result;
}

uint64_t ClientResponse.Contents.message.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = *(a2 + 16);
  sub_24DC2E0D8();
  v6 = sub_24DCB5904();
  v7 = *(*(v6 - 8) + 40);

  return v7(v2 + v4, a1, v6);
}

uint64_t (*ClientResponse.Contents.message.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t ClientResponse.Contents.trailingMetadata.setter(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 32);
  v5 = *(v2 + v4);

  *(v2 + v4) = v3;
  return result;
}

uint64_t (*ClientResponse.Contents.trailingMetadata.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 32);
  return result;
}

uint64_t ClientResponse.Contents.init(metadata:message:trailingMetadata:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v8 = *a3;
  *a5 = *a1;
  v9 = type metadata accessor for ClientResponse.Contents();
  (*(*(a4 - 8) + 32))(&a5[*(v9 + 28)], a2, a4);
  sub_24DC2E0D8();
  sub_24DCB5904();
  result = swift_storeEnumTagMultiPayload();
  *&a5[*(v9 + 32)] = v8;
  return result;
}

uint64_t ClientResponse.Contents.init(metadata:error:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  *a3 = *a1;
  v9 = type metadata accessor for ClientResponse.Contents();
  v10 = a3 + *(v9 + 28);
  *v10 = v4;
  *(v10 + 1) = v5;
  *(v10 + 2) = v6;
  *(v10 + 3) = v7;
  *(v10 + 4) = v8;
  sub_24DC2E0D8();
  sub_24DCB5904();
  swift_storeEnumTagMultiPayload();
  *(a3 + *(v9 + 32)) = v7;
}

uint64_t ClientResponse.accepted.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  type metadata accessor for ClientResponse.Contents();
  sub_24DC2E0D8();
  v5 = sub_24DCB5904();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2, v5);
}

uint64_t ClientResponse.accepted.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  type metadata accessor for ClientResponse.Contents();
  sub_24DC2E0D8();
  v5 = sub_24DCB5904();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2, a1, v5);
}

uint64_t ClientResponse.init(accepted:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for ClientResponse.Contents();
  sub_24DC2E0D8();
  v4 = sub_24DCB5904();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t StreamingClientResponse.Contents.metadata.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;

  *v1 = v2;
  return result;
}

uint64_t StreamingClientResponse.Contents.bodyParts.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  type metadata accessor for StreamingClientResponse.Contents.BodyPart();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v5 = type metadata accessor for RPCAsyncSequence();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + 8, v5);
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

uint64_t StreamingClientResponse.Contents.bodyParts.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  type metadata accessor for StreamingClientResponse.Contents.BodyPart();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v5 = type metadata accessor for RPCAsyncSequence();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + 8, a1, v5);
}

__n128 StreamingClientResponse.Contents.init(metadata:bodyParts:)@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *a1;
  result = *a2;
  v4 = *(a2 + 16);
  *(a3 + 8) = *a2;
  *(a3 + 24) = v4;
  *(a3 + 40) = *(a2 + 32);
  return result;
}

uint64_t StreamingClientResponse.accepted.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  type metadata accessor for StreamingClientResponse.Contents();
  sub_24DC2E0D8();
  v5 = sub_24DCB5904();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2, v5);
}

uint64_t StreamingClientResponse.accepted.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  type metadata accessor for StreamingClientResponse.Contents();
  sub_24DC2E0D8();
  v5 = sub_24DCB5904();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2, a1, v5);
}

__n128 StreamingClientResponse.init(accepted:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *(a1 + 32);
  *(a2 + 32) = result;
  *(a2 + 48) = *(a1 + 48);
  return result;
}

uint64_t ClientResponse.init(message:metadata:trailingMetadata:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for ClientResponse.Contents();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v17 - v13;
  v15 = *a2;
  v17 = *a3;
  v18 = v15;
  ClientResponse.Contents.init(metadata:message:trailingMetadata:)(&v18, a1, &v17, a4, v14);
  (*(v11 + 32))(a5, v14, v10);
  sub_24DC2E0D8();
  sub_24DCB5904();
  return swift_storeEnumTagMultiPayload();
}

uint64_t ClientResponse.init(of:metadata:error:)@<X0>(uint64_t *a1@<X1>, char *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ClientResponse.Contents();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15[-v9];
  v11 = *a1;
  v12 = *a2;
  v13 = *(a2 + 1);
  v18 = *(a2 + 4);
  v19 = v11;
  v15[0] = v12;
  v16 = v13;
  v17 = *(a2 + 1);
  ClientResponse.Contents.init(metadata:error:)(&v19, v15, v10);
  (*(v7 + 32))(a3, v10, v6);
  sub_24DC2E0D8();
  sub_24DCB5904();
  return swift_storeEnumTagMultiPayload();
}

uint64_t ClientResponse.init(of:error:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 32);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  type metadata accessor for ClientResponse.Contents();
  sub_24DC2E0D8();
  sub_24DCB5904();

  return swift_storeEnumTagMultiPayload();
}

uint64_t ClientResponse.metadata.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 16);
  v6 = type metadata accessor for ClientResponse.Contents();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = (&v19 - v9);
  sub_24DC2E0D8();
  v11 = sub_24DCB5904();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  (*(v12 + 16))(&v19 - v14, v3, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v12 + 8))(v15, v11);
    return Metadata.init(dictionaryLiteral:)(MEMORY[0x277D84F90]);
  }

  else
  {
    (*(v7 + 32))(v10, v15, v6);
    v17 = *v10;
    v18 = *(v7 + 8);

    result = v18(v10, v6);
    *a2 = v17;
  }

  return result;
}

double ClientResponse.message.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  sub_24DC2E0D8();
  v5 = sub_24DCB5904();
  v6 = *(*(v5 - 1) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  v16 = v4;
  type metadata accessor for ClientResponse.Contents();
  v9 = sub_24DCB5904();
  sub_24DC2F064(sub_24DC2EFC8, v9, v8);
  sub_24DC2F270(v5, v17, a2);
  if (v2)
  {
    v11 = v17[0];
    v12 = v18;
    v13 = v20;
    v15 = v19;
    swift_allocError();
    *v14 = v11;
    *(v14 + 8) = v12;
    result = *&v15;
    *(v14 + 16) = v15;
    *(v14 + 32) = v13;
  }

  return result;
}

uint64_t sub_24DC2EFC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(type metadata accessor for ClientResponse.Contents() + 28);
  sub_24DC2E0D8();
  v7 = sub_24DCB5904();
  v8 = *(*(v7 - 8) + 16);

  return v8(a2, a1 + v6, v7);
}

uint64_t sub_24DC2F064@<X0>(void (*a1)(char *)@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = a2[2];
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(a2[3] - 8) + 32))(a3, v15, a2[3]);
    v18 = a2[4];
    sub_24DCB5904();
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    (*(v7 + 32))(v11, v15, v6);
    a1(v11);
    return (*(v7 + 8))(v11, v6);
  }
}

uint64_t sub_24DC2F270@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(a1[2] - 8) + 32))(a3, v3);
  }

  (*(*(a1[3] - 8) + 32))(a2, v3, a1[3]);
  v7 = a1[4];
  return swift_willThrowTypedImpl();
}

uint64_t ClientResponse.trailingMetadata.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 16);
  v6 = type metadata accessor for ClientResponse.Contents();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - v9;
  sub_24DC2E0D8();
  v11 = sub_24DCB5904();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (&v21 - v13);
  (*(v15 + 16))(&v21 - v13, v3, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = v14[2];
    v17 = v14[3];
    v18 = v14[4];

    result = MEMORY[0x2530363B0](v18);
  }

  else
  {
    (*(v7 + 32))(v10, v14, v6);
    v17 = *&v10[*(v6 + 32)];
    v20 = *(v7 + 8);

    result = v20(v10, v6);
  }

  *a2 = v17;
  return result;
}

__n128 StreamingClientResponse.init(of:metadata:bodyParts:)@<Q0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  *a3 = *a1;
  result = *a2;
  v4 = *(a2 + 16);
  *(a3 + 8) = *a2;
  *(a3 + 24) = v4;
  *(a3 + 40) = *(a2 + 32);
  *(a3 + 48) = 0;
  return result;
}

__n128 StreamingClientResponse.init(of:error:)@<Q0>(__n128 *a1@<X1>, __n128 *a2@<X8>)
{
  v2 = a1->n128_u64[1];
  v3 = a1[2].n128_u64[0];
  a2->n128_u8[0] = a1->n128_u8[0];
  a2->n128_u64[1] = v2;
  result = a1[1];
  a2[1] = result;
  a2[2].n128_u64[0] = v3;
  a2[3].n128_u8[0] = 1;
  return result;
}

uint64_t StreamingClientResponse.metadata.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 16);
  v6 = type metadata accessor for StreamingClientResponse.Contents();
  sub_24DC2E0D8();
  v7 = sub_24DCB5904();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v13, v3, v7);
  if (v14)
  {
    (*(v8 + 8))(v13, v7);
    return Metadata.init(dictionaryLiteral:)(MEMORY[0x277D84F90]);
  }

  else
  {
    v12[0] = v13[0];
    v12[1] = v13[1];
    v12[2] = v13[2];
    v10 = *&v13[0];
    v11 = *(*(v6 - 8) + 8);

    result = v11(v12, v6);
    *a2 = v10;
  }

  return result;
}

uint64_t StreamingClientResponse.messages.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = *(a1 + 16);
  type metadata accessor for StreamingClientResponse.Contents.BodyPart();
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v4 = type metadata accessor for RPCAsyncSequence();
  swift_getWitnessTable();
  v5 = sub_24DCB5734();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - v11;
  v13 = type metadata accessor for StreamingClientResponse.Contents();
  sub_24DC2E0D8();
  v14 = sub_24DCB5904();
  (*(*(v14 - 8) + 16))(&v27, v2, v14);
  if (v30)
  {
    v15 = v27;
    v16 = *(&v27 + 1);
    v17 = v29;
    v22 = v28;
    v18 = swift_allocError();
    *v19 = v15;
    *(v19 + 8) = v16;
    *(v19 + 16) = v22;
    *(v19 + 32) = v17;
    *&v26[0] = v18;
    sub_24DC3EFE0(v26, v3, v23, v24);
    return MEMORY[0x2530363B0](v18);
  }

  else
  {
    v26[0] = v27;
    v26[1] = v28;
    v26[2] = v29;
    (*(*(v4 - 8) + 16))(v25, v26 + 8, v4);
    *(swift_allocObject() + 16) = v3;
    sub_24DCB5264();

    (*(v6 + 16))(v10, v12, v5);
    WitnessTable = swift_getWitnessTable();
    RPCAsyncSequence.init<A>(wrapping:)(v10, v3, v23, v5, WitnessTable);
    (*(v6 + 8))(v12, v5);
    return (*(*(v13 - 8) + 8))(v26, v13);
  }
}

uint64_t sub_24DC2FA0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for StreamingClientResponse.Contents.BodyPart();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24DC2FAD4, 0, 0);
}

uint64_t sub_24DC2FAD4()
{
  (*(v0[6] + 16))(v0[7], v0[3], v0[5]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = v0[4];
    (*(v0[6] + 8))(v0[7], v0[5]);
    v2 = *(v1 - 8);
    v3 = 1;
  }

  else
  {
    v2 = *(v0[4] - 8);
    (*(v2 + 32))(v0[2], v0[7]);
    v3 = 0;
  }

  v4 = v0[7];
  (*(v2 + 56))(v0[2], v3, 1, v0[4]);

  v5 = v0[1];

  return v5();
}

uint64_t sub_24DC2FC50(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24DC2FD00;

  return sub_24DC2FA0C(a1, a2, v6);
}

uint64_t sub_24DC2FD00()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t StreamingClientResponse.bodyParts.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 16);
  v6 = type metadata accessor for StreamingClientResponse.Contents();
  sub_24DC2E0D8();
  v7 = sub_24DCB5904();
  (*(*(v7 - 8) + 16))(&v19, v3, v7);
  if (v22)
  {
    v8 = v19;
    v9 = *(&v19 + 1);
    v10 = v21;
    v17 = v20;
    v11 = swift_allocError();
    *v12 = v8;
    *(v12 + 8) = v9;
    *(v12 + 16) = v17;
    *(v12 + 32) = v10;
    *&v18[0] = v11;
    v13 = type metadata accessor for StreamingClientResponse.Contents.BodyPart();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19ED58, &qword_24DCB79B0);
    sub_24DC3EFE0(v18, v13, v14, a2);
    return MEMORY[0x2530363B0](v11);
  }

  else
  {
    v18[0] = v19;
    v18[1] = v20;
    v18[2] = v21;
    type metadata accessor for StreamingClientResponse.Contents.BodyPart();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
    v16 = type metadata accessor for RPCAsyncSequence();
    (*(*(v16 - 8) + 16))(a2, v18 + 8, v16);
    return (*(*(v6 - 8) + 8))(v18, v6);
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t static StreamingClientResponse.Contents.BodyPart<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28[1] = a4;
  v31 = a1;
  v32 = a2;
  v30 = *(a3 - 8);
  v5 = *(v30 + 64);
  MEMORY[0x28223BE20](a1);
  v28[0] = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StreamingClientResponse.Contents.BodyPart();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v28 - v13;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v29 = *(TupleTypeMetadata2 - 8);
  v16 = *(v29 + 64);
  v17 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v19 = v28 - v18;
  v20 = *(v17 + 48);
  v21 = *(v8 + 16);
  v21(v28 - v18, v31, v7);
  v21(&v19[v20], v32, v7);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v21(v14, v19, v7);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v24 = v30;
      v25 = v28[0];
      (*(v30 + 32))(v28[0], &v19[v20], a3);
      v23 = sub_24DCB4DA4();
      v26 = *(v24 + 8);
      v26(v25, a3);
      v26(v14, a3);
      goto LABEL_9;
    }

    (*(v30 + 8))(v14, a3);
    goto LABEL_7;
  }

  v21(v12, v19, v7);
  v22 = *v12;
  if (swift_getEnumCaseMultiPayload() != 1)
  {

LABEL_7:
    v23 = 0;
    v8 = v29;
    v7 = TupleTypeMetadata2;
    goto LABEL_9;
  }

  v33 = *&v19[v20];
  v34 = v22;
  sub_24DC303C8();
  v23 = sub_24DCB4DA4();

LABEL_9:
  (*(v8 + 8))(v19, v7);
  return v23 & 1;
}

unint64_t sub_24DC303C8()
{
  result = qword_27F19ED60;
  if (!qword_27F19ED60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19ED60);
  }

  return result;
}

uint64_t sub_24DC30430(uint64_t a1)
{
  v1 = *(a1 + 16);
  type metadata accessor for ClientResponse.Contents();
  sub_24DC2E0D8();
  result = sub_24DCB5904();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24DC304C0(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 80) & 0xF8;
  v5 = (v4 + 15) & ~v4 & 0x1F8;
  v6 = *(v3 + 64);
  if (v6 <= 0x28)
  {
    v6 = 40;
  }

  v7 = ((v6 + v5 + 8) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 <= 0x28)
  {
    v7 = 40;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_29;
  }

  v8 = v7 | 1;
  if ((v7 | 1) <= 3)
  {
    v9 = ((a2 + 1) >> 8) + 1;
  }

  else
  {
    v9 = 2;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *&a1[v8];
      if (*&a1[v8])
      {
        goto LABEL_25;
      }
    }

    else
    {
      v12 = *&a1[v8];
      if (v12)
      {
        goto LABEL_25;
      }
    }

LABEL_29:
    v16 = a1[v7];
    if (v16 >= 2)
    {
      return (v16 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v11)
  {
    goto LABEL_29;
  }

  v12 = a1[v8];
  if (!a1[v8])
  {
    goto LABEL_29;
  }

LABEL_25:
  v14 = (v12 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v15 = *a1;
  }

  else
  {
    v14 = 0;
    v15 = *a1;
  }

  return (v15 | v14) + 255;
}

void sub_24DC305F8(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 80) & 0xF8;
  v7 = (v6 + 15) & ~v6 & 0x1F8;
  v8 = *(v5 + 64);
  if (v8 <= 0x28)
  {
    v8 = 40;
  }

  v9 = ((v8 + v7 + 8) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 <= 0x28)
  {
    v9 = 40;
  }

  v10 = v9 | 1;
  if (a3 < 0xFF)
  {
    v13 = 0;
    if (a2 > 0xFE)
    {
      goto LABEL_18;
    }

LABEL_26:
    if (v13 > 1)
    {
      if (v13 != 2)
      {
        *&a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_36;
      }

      *&a1[v10] = 0;
    }

    else if (v13)
    {
      a1[v10] = 0;
      if (!a2)
      {
        return;
      }

LABEL_36:
      a1[v9] = -a2;
      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_36;
  }

  if (v10 <= 3)
  {
    v11 = ((a3 + 1) >> 8) + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 <= 0xFE)
  {
    goto LABEL_26;
  }

LABEL_18:
  v14 = a2 - 255;
  v15 = (a2 - 255) >> 8;
  bzero(a1, v9 | 1);
  if (v10 <= 3)
  {
    v16 = v15 + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v14;
    if (v13 > 1)
    {
LABEL_23:
      if (v13 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v14;
    if (v13 > 1)
    {
      goto LABEL_23;
    }
  }

  if (v13)
  {
    a1[v10] = v16;
  }
}

uint64_t sub_24DC307B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  sub_24DC2E0D8();
  result = sub_24DCB5904();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24DC3084C(uint64_t *a1, int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  if (v4 <= 0x28)
  {
    v4 = 40;
  }

  if (!a2)
  {
    return 0;
  }

  if ((a2 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  v7 = *(v3 + 80) & 0xF8;
  v8 = ((v4 + ((v7 + 15) & ~v7 & 0x1F8) + 8) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = v8 & 0xFFFFFFF8;
  v10 = a2 - 2147483646;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11;
  }

  if (v12 == 4)
  {
    v13 = *(a1 + v8);
    if (!v13)
    {
      goto LABEL_5;
    }
  }

  else if (v12 == 2)
  {
    v13 = *(a1 + v8);
    if (!v13)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v13 = *(a1 + v8);
    if (!v13)
    {
LABEL_5:
      v5 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v5) = -1;
      }

      return (v5 + 1);
    }
  }

  v14 = v13 - 1;
  if (v9)
  {
    v14 = 0;
    LODWORD(v9) = *a1;
  }

  return (v9 | v14) ^ 0x80000000;
}

int *sub_24DC30964(int *result, int a2, int a3, uint64_t a4)
{
  v4 = *(*(a4 + 16) - 8);
  v5 = *(v4 + 64);
  if (v5 <= 0x28)
  {
    v5 = 40;
  }

  v6 = ((v5 + (((*(v4 + 80) & 0xF8) + 15) & ~(*(v4 + 80) & 0xF8) & 0x1F8) + 8) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (a3 < 0)
  {
    v8 = a3 - 2147483646;
    if (v6)
    {
      v8 = 2;
    }

    if (v8 >= 0x10000)
    {
      v9 = 4;
    }

    else
    {
      v9 = 2;
    }

    if (v8 < 0x100)
    {
      v7 = 1;
    }

    else
    {
      v7 = v9;
    }

    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_18:
    v10 = a2 & 0x7FFFFFFF;
    if (v6)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10 + 1;
    }

    if (v6)
    {
      v12 = result;
      bzero(result, v6);
      result = v12;
      *v12 = v10;
    }

    if (v7 > 1)
    {
      if (v7 == 2)
      {
        *(result + v6) = v11;
      }

      else
      {
        *(result + v6) = v11;
      }
    }

    else if (v7)
    {
      *(result + v6) = v11;
    }

    return result;
  }

  v7 = 0;
  if (a2 < 0)
  {
    goto LABEL_18;
  }

LABEL_5:
  if (v7 <= 1)
  {
    if (v7)
    {
      *(result + v6) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_29;
    }

LABEL_28:
    if (!a2)
    {
      return result;
    }

    goto LABEL_29;
  }

  if (v7 == 2)
  {
    *(result + v6) = 0;
    goto LABEL_28;
  }

  *(result + v6) = 0;
  if (a2)
  {
LABEL_29:
    *result = (a2 - 1);
  }

  return result;
}

uint64_t sub_24DC30AD0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_24DC30B40(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
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

uint64_t sub_24DC30B88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_24DC30BF4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_24DC30C44(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_24DC30C8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24DC30CD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24DC30D44(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
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

void sub_24DC30E5C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
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

uint64_t RuntimeError.message.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t RuntimeError.message.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t RuntimeError.cause.getter()
{
  v1 = *(v0 + 24);
  MEMORY[0x2530363C0](v1);
  return v1;
}

uint64_t RuntimeError.cause.setter(uint64_t a1)
{
  result = MEMORY[0x2530363B0](*(v1 + 24));
  *(v1 + 24) = a1;
  return result;
}

_BYTE *RuntimeError.init(code:message:cause:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = *result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

uint64_t RuntimeError.hash(into:)()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  MEMORY[0x253035FF0](*v0);

  return sub_24DCB4D44();
}

uint64_t static RuntimeError.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2))
  {
    return 1;
  }

  else
  {
    return sub_24DCB57A4();
  }
}

uint64_t RuntimeError.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  sub_24DCB58A4();
  MEMORY[0x253035FF0](v1);
  sub_24DCB4D44();
  return sub_24DCB58F4();
}

uint64_t sub_24DC312B0()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  sub_24DCB58A4();
  MEMORY[0x253035FF0](v1);
  sub_24DCB4D44();
  return sub_24DCB58F4();
}

uint64_t sub_24DC31314()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  MEMORY[0x253035FF0](*v0);

  return sub_24DCB4D44();
}

uint64_t sub_24DC31368()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  sub_24DCB58A4();
  MEMORY[0x253035FF0](v1);
  sub_24DCB4D44();
  return sub_24DCB58F4();
}

uint64_t sub_24DC313C8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2))
  {
    return 1;
  }

  else
  {
    return sub_24DCB57A4();
  }
}

uint64_t RuntimeError.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  if (v4)
  {
    v8 = 0;
    MEMORY[0x2530363C0](v4);
    sub_24DCB54D4();
    sub_24DC316E0();
    v5 = sub_24DCB5744();
    MEMORY[0x253035590](v5);

    MEMORY[0x253035590](2236474, 0xE300000000000000);
    MEMORY[0x253035590](v2, v3);
    MEMORY[0x253035590](0x6573756163282022, 0xEB0000000022203ALL);
    swift_getErrorValue();
    sub_24DCB5784();
    MEMORY[0x253035590](10530, 0xE200000000000000);
    MEMORY[0x2530363B0](v4);
  }

  else
  {
    v7 = *v0;
    sub_24DC316E0();
    v8 = sub_24DCB5744();
    MEMORY[0x253035590](2236474, 0xE300000000000000);
    MEMORY[0x253035590](v2, v3);
    MEMORY[0x253035590](34, 0xE100000000000000);
  }

  return v8;
}

uint64_t RuntimeError.Code.hashValue.getter()
{
  v1 = *v0;
  sub_24DCB58A4();
  MEMORY[0x253035FF0](v1);
  return sub_24DCB58F4();
}

uint64_t sub_24DC31698()
{
  v1 = *v0;
  sub_24DCB58A4();
  MEMORY[0x253035FF0](v1);
  return sub_24DCB58F4();
}

unint64_t sub_24DC316E0()
{
  result = qword_27F19ED68;
  if (!qword_27F19ED68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19ED68);
  }

  return result;
}

uint64_t sub_24DC31734()
{
  v1 = *v0;
  sub_24DCB58A4();
  MEMORY[0x253035FF0](v1);
  return sub_24DCB58F4();
}

unint64_t sub_24DC317B0()
{
  result = qword_27F19ED70;
  if (!qword_27F19ED70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19ED70);
  }

  return result;
}

unint64_t sub_24DC31808()
{
  result = qword_27F19ED78;
  if (!qword_27F19ED78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19ED78);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_24DC3189C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24DC318E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Timeout.Unit(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Timeout.Unit(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24DC31AC0()
{
  result = qword_27F19FA80[0];
  if (!qword_27F19FA80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F19FA80);
  }

  return result;
}

BOOL sub_24DC31BA4(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_24DC31BD4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_24DC31C00@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_24DC31CEC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_24DC31D1C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_24DC331A8(a1);

  *a2 = v3;
  return result;
}

BOOL sub_24DC31D5C(__int16 a1, __int16 a2)
{
  if ((a1 & 0x100) != 0)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return (a2 & 0x100) != 0 && a2 == 1;
      }

      else
      {
        return (a2 & 0x100) != 0 && a2 > 1u;
      }
    }

    else
    {
      return (a2 & 0x100) != 0 && !a2;
    }
  }

  else
  {
    if ((a2 & 0x100) != 0)
    {
      return 0;
    }

    return a1 == a2;
  }
}

BOOL sub_24DC31DD0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a2[1];
  if (a1[1] != 1)
  {
    if ((a2[1] & 1) == 0)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (*a1)
  {
    if (v2 != 1)
    {
      if (v3 > 1)
      {
        v8 = a2[1];
      }

      else
      {
        v8 = 0;
      }

      return v8 == 1;
    }

    v5 = v3 == 1;
  }

  else
  {
    v5 = v3 == 0;
  }

  if (v5)
  {
    v7 = a2[1];
  }

  else
  {
    v7 = 0;
  }

  return (v7 & 1) != 0;
}

uint64_t sub_24DC31E38()
{
  if (sub_24DCB5384())
  {
    return 0;
  }

  result = sub_24DCB5374();
  if (__OFADD__(result, 2))
  {
    __break(1u);
    goto LABEL_8;
  }

  v1 = (result + 2) / 3;
  if ((v1 - 0x2000000000000000) >> 62 != 3)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  MEMORY[0x28223BE20](4 * v1);
  return sub_24DCB4E04();
}

uint64_t sub_24DC31F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v37 = *(AssociatedTypeWitness - 8);
  v15 = *(v37 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v17 = &v36 - v16;
  (*(v8 + 16))(v11, a2, a4);
  sub_24DCB4F04();
  swift_getAssociatedConformanceWitness();
  v18 = 0;
  v38 = a3;
  v19 = a3 + 32;
  while (1)
  {
    sub_24DCB5444();
    if (v44 == 1)
    {
      (*(v37 + 8))(v17, AssociatedTypeWitness);
      return v18;
    }

    v22 = v43;
    sub_24DCB5444();
    v23 = v41;
    v24 = v42;
    result = sub_24DCB5444();
    v26 = *(v38 + 16);
    if (v26 <= v22 >> 2)
    {
      break;
    }

    v27 = v39;
    v28 = v40;
    *(a1 + v18) = *(v19 + (v22 >> 2));
    v29 = v23 >> 4;
    if (v24)
    {
      v29 = 0;
    }

    v30 = v29 & 0xFFFFFFCF | (16 * (v22 & 3));
    if (v26 <= v30)
    {
      goto LABEL_20;
    }

    v31 = *(v19 + v30);
    v32 = a1 + v18;
    *(a1 + v18 + 1) = v31;
    if (v24)
    {
      *(v32 + 2) = 61;
      if ((v28 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v33 = v27 >> 6;
      if (v28)
      {
        v33 = 0;
      }

      v34 = v33 & 0xFFFFFFC3 | (4 * (v23 & 0xF));
      if (v26 <= v34)
      {
        goto LABEL_22;
      }

      *(v32 + 2) = *(v19 + v34);
      if ((v28 & 1) == 0)
      {
LABEL_16:
        v35 = v27 & 0x3F;
        if (v26 <= v35)
        {
          goto LABEL_23;
        }

        v20 = *(v19 + v35);
        goto LABEL_3;
      }
    }

    v20 = 61;
LABEL_3:
    *(a1 + v18 + 3) = v20;
    v21 = __OFADD__(v18, 4);
    v18 += 4;
    if (v21)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_24DC32250(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = a2;
  v6 = a1;
  if ((a2 & 0x1000000000000000) != 0)
  {

    v6 = sub_24DC329BC();
    v13 = v12;

    v5 = v13;
LABEL_9:
    v10 = sub_24DC32250(v6, v5, a3);
    if (v3)
    {
    }

    v11 = v10;

    return v11;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
    v14[0] = a1;
    v14[1] = v5 & 0xFFFFFFFFFFFFFFLL;
    v7 = v14;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v8 = v6 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = sub_24DCB5504();
  }

  result = sub_24DC3236C(v7, v8, a3, &v15);
  if (!v3)
  {
    result = v15;
    if (!v15)
    {

      goto LABEL_9;
    }
  }

  return result;
}

uint64_t sub_24DC3236C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v61 = *MEMORY[0x277D85DE8];
  if (a2 >= 1)
  {
    if (__OFADD__(a2, 3))
    {
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    v9 = result;
    v10 = 3 * ((a2 + 3) >> 2);
    v11 = sub_24DCB5014();
    v12 = v11;
    *(v11 + 16) = v10;
    if (v9)
    {
      v13 = a2 & 3;
      if ((a3 & 2) != 0)
      {
        if (v13 == 1)
        {
          goto LABEL_6;
        }
      }

      else if ((a2 & 3) != 0)
      {
LABEL_6:
        sub_24DC331E0();
        v14 = swift_allocError();
        *v15 = 256;
        result = swift_willThrow();
        goto LABEL_73;
      }

      v29 = v11 + 32;
      v30 = (__PAIR128__(a2 >> 2, v13) - 1) >> 64;
      v31 = &unk_2860EAC40;
      if ((a3 & 1) == 0)
      {
        v31 = &unk_2860EBCC0;
      }

      v32 = &unk_2860EB060;
      if ((a3 & 1) == 0)
      {
        v32 = &unk_2860EC0E0;
      }

      v33 = &unk_2860EB480;
      if ((a3 & 1) == 0)
      {
        v33 = &unk_2860EC500;
      }

      v34 = &unk_2860EB8A0;
      if ((a3 & 1) == 0)
      {
        v34 = &unk_2860EC920;
      }

      if (v30 >= 1)
      {
        v35 = 0;
        v36 = (v9 + 3);
        v37 = v11 + 32;
        v38 = v30;
        while (v35 != 0xA000000000000000)
        {
          v39 = *(v36 - 3);
          v40 = v32[*(v36 - 2)] | v31[v39] | v33[*(v36 - 1)] | v34[*v36];
          if (v40 >= 0x1FFFFFF)
          {
            goto LABEL_72;
          }

          *v37 = v40;
          *(v37 + 2) = BYTE2(v40);
          v35 -= 3;
          v37 += 3;
          v36 += 4;
          if (!--v38)
          {
            v41 = -v35;
            goto LABEL_43;
          }
        }

        __break(1u);
        goto LABEL_78;
      }

      v41 = 0;
LABEL_43:
      v43 = 4 * v30;
      v44 = (v9 + 4 * v30);
      v39 = *v44;
      v45 = v44[1];
      v46 = (4 * v30) | 2;
      if (v46 >= a2)
      {
        v46 = 0;
        v47 = 1;
      }

      else
      {
        LODWORD(v46) = *(v9 + v46);
        v47 = v46 == 61;
        if (v46 == 61)
        {
          v46 = 0;
        }

        else
        {
          v46 = v46;
        }
      }

      v48 = v43 | 3;
      if (v48 >= a2)
      {
        v53 = v31[v39];
        v54 = v32[v45];
        v55 = 65;
        if (!v47)
        {
          v55 = v46;
        }

        v50 = v54 | v53 | v33[v55];
      }

      else
      {
        v49 = *(v9 + v48);
        if (v47)
        {
          v46 = 65;
        }

        v50 = v32[v45] | v31[v39] | v33[v46];
        if (v49 == 61)
        {
          LOBYTE(v51) = 0;
        }

        else
        {
          LOBYTE(v51) = v49;
        }

        if (v49 != 61)
        {
          v52 = 0;
          v51 = v51;
LABEL_63:
          v56 = v34[v51] | v50;
          if (v56 <= 0x1FFFFFE)
          {
            *(v29 + v41) = v56;
            v28 = v41 + 1;
            if (__OFADD__(v41, 1))
            {
LABEL_81:
              __break(1u);
LABEL_82:
              __break(1u);
              goto LABEL_83;
            }

            if (!v47)
            {
              *(v29 + v28) = BYTE1(v56);
              v57 = __OFADD__(v28, 1);
              v28 = v41 + 2;
              if (v57)
              {
                goto LABEL_82;
              }
            }

            if ((v52 & 1) == 0)
            {
              *(v29 + v28) = BYTE2(v56);
              v57 = __OFADD__(v28++, 1);
              if (v57)
              {
LABEL_83:
                __break(1u);
              }
            }

            v58 = v10 < v28;
            if (v5)
            {
              goto LABEL_74;
            }

LABEL_70:
            if (v58)
            {
LABEL_80:
              __break(1u);
              goto LABEL_81;
            }

            goto LABEL_71;
          }

LABEL_72:
          sub_24DC331E0();
          v14 = swift_allocError();
          *v59 = v39;
          v59[1] = 0;
          swift_willThrow();

LABEL_73:
          v28 = 0;
          v58 = v10 < 0;
          if (v14)
          {
LABEL_74:
            if (!v58)
            {
              goto LABEL_75;
            }

            goto LABEL_79;
          }

          goto LABEL_70;
        }
      }

      v52 = 1;
      v51 = 65;
      goto LABEL_63;
    }

    v16 = MEMORY[0xFFFFFFFFFFFFFFFE];
    if (MEMORY[0xFFFFFFFFFFFFFFFE] == 61)
    {
      v17 = 65;
    }

    else
    {
      v17 = MEMORY[0xFFFFFFFFFFFFFFFE];
    }

    if (MEMORY[0xFFFFFFFFFFFFFFFF] == 61)
    {
      v18 = 65;
    }

    else
    {
      v18 = MEMORY[0xFFFFFFFFFFFFFFFF];
    }

    v19 = MEMORY[0xFFFFFFFFFFFFFFFC];
    v20 = &unk_2860EAC40;
    if ((a3 & 1) == 0)
    {
      v20 = &unk_2860EBCC0;
    }

    v21 = &unk_2860EB060;
    v22 = v20[MEMORY[0xFFFFFFFFFFFFFFFC]];
    if ((a3 & 1) == 0)
    {
      v21 = &unk_2860EC0E0;
    }

    v23 = v21[MEMORY[0xFFFFFFFFFFFFFFFD]];
    v24 = &unk_2860EB480;
    if ((a3 & 1) == 0)
    {
      v24 = &unk_2860EC500;
    }

    v25 = v24[v17];
    v26 = &unk_2860EB8A0;
    if ((a3 & 1) == 0)
    {
      v26 = &unk_2860EC920;
    }

    v27 = v23 | v22 | v25 | v26[v18];
    if (v27 > 0x1FFFFFE)
    {
      sub_24DC331E0();
      swift_allocError();
      *v42 = v19;
      v42[1] = 0;
      swift_willThrow();

      v28 = 0;
LABEL_75:
      *(v12 + 16) = v28;

      goto LABEL_76;
    }

    *(v11 + 32) = v27;
    if (v16 == 61)
    {
      v28 = 1;
      if (MEMORY[0xFFFFFFFFFFFFFFFF] == 61)
      {
        goto LABEL_49;
      }
    }

    else
    {
      *(v11 + 33) = BYTE1(v27);
      v28 = 2;
      if (MEMORY[0xFFFFFFFFFFFFFFFF] == 61)
      {
LABEL_49:

LABEL_71:
        *(v12 + 16) = v28;
        *a4 = v12;
        goto LABEL_76;
      }
    }

    *(v11 + 32 + v28++) = BYTE2(v27);
    goto LABEL_49;
  }

  *a4 = MEMORY[0x277D84F90];
LABEL_76:
  v60 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24DC3290C(uint64_t result, uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    v6 = swift_slowAlloc();
    result = a2(v6, v3);
    if (v2)
    {
LABEL_5:
      MEMORY[0x253036540](v6, -1, -1);
      return v5;
    }

    if (result <= v5)
    {
      *(v6 + result) = 0;
      v5 = sub_24DCB4E64();
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24DC329BC()
{
  v0 = sub_24DCB4EF4();
  v4 = sub_24DC32D40(v0, v1, v2, v3);

  return v4;
}

unint64_t sub_24DC32A40()
{
  result = qword_27F19ED80;
  if (!qword_27F19ED80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19ED80);
  }

  return result;
}

unint64_t sub_24DC32A98()
{
  result = qword_27F19ED88;
  if (!qword_27F19ED88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19ED88);
  }

  return result;
}

unint64_t sub_24DC32AF0()
{
  result = qword_27F19ED90;
  if (!qword_27F19ED90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19ED90);
  }

  return result;
}

unint64_t sub_24DC32B48()
{
  result = qword_27F19ED98;
  if (!qword_27F19ED98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19ED98);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Base64.DecodingError(unsigned __int16 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2 + 0xFFFF;
  if ((a2 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (v2 < 0xFF0000)
  {
    v3 = 1;
  }

  if (v2 >= 0x10000)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      return v4;
    }

    v4 = *(a1 + 2);
    if (!*(a1 + 2))
    {
      return v4;
    }

    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  if (v4 == 2)
  {
    v4 = a1[1];
    if (!a1[1])
    {
      return v4;
    }

    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  v4 = *(a1 + 1);
  if (v4)
  {
    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  return v4;
}

_WORD *storeEnumTagSinglePayload for Base64.DecodingError(_WORD *result, int a2, int a3)
{
  v3 = a3 + 0xFFFF;
  if ((a3 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (v3 < 0xFF0000)
  {
    v4 = 1;
  }

  if (v3 >= 0x10000)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (!a3)
  {
    v5 = 0;
  }

  if (a2)
  {
    v6 = ((a2 - 1) >> 16) + 1;
    *result = a2 - 1;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result[1] = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
    }
  }

  else if (v5 > 1)
  {
    if (v5 == 2)
    {
      result[1] = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v5)
  {
    *(result + 2) = 0;
  }

  return result;
}

uint64_t sub_24DC32CEC(unsigned __int8 *a1)
{
  if (a1[1])
  {
    return (*a1 | (a1[1] << 8)) - 255;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_24DC32D0C(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    result[1] = ((a2 - 1) >> 8) + 1;
  }

  else
  {
    result[1] = 0;
  }

  return result;
}

uint64_t sub_24DC32D40(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_24DCB4DF4();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_24DCB5434();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_24DC32E98(v9, 0);
  v12 = sub_24DC32F0C(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_24DCB4DF4();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_24DCB5504();
LABEL_4:

  return sub_24DCB4DF4();
}

void *sub_24DC32E98(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19EDA8, qword_24DCB8060);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_24DC32F0C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_24DC3312C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_24DCB4EB4();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_24DCB5504();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_24DC3312C(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_24DCB4E74();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_24DC3312C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_24DCB4EC4();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x2530355D0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_24DC331A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

unint64_t sub_24DC331E0()
{
  result = qword_27F19EDA0;
  if (!qword_27F19EDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19EDA0);
  }

  return result;
}

uint64_t dispatch thunk of ClientTransport.connect()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 32);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24DC334F4;

  return v9(a1, a2);
}

uint64_t dispatch thunk of ClientTransport.withStream<A>(descriptor:options:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *(a8 + 48);
  v21 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  *(v8 + 16) = v19;
  *v19 = v8;
  v19[1] = sub_24DC2FD00;

  return v21(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t MethodConfig.Name.service.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_24DC33528@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

void sub_24DC33534(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a2[1];

  *a2 = v4;
  a2[1] = v3;
  sub_24DC335C4();
}

void MethodConfig.Name.service.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;

  sub_24DC335C4();
}

void sub_24DC335C4()
{
  v1 = v0[1];
  v2 = *v0 & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  if (!v2)
  {
    v3 = v0[3];
    v4 = v0[2] & 0xFFFFFFFFFFFFLL;
    if ((v3 & 0x2000000000000000) != 0)
    {
      v4 = HIBYTE(v3) & 0xF;
    }

    if (v4)
    {
      v5 = v0[3];

      static RuntimeError.Code.invalidArgument.getter(&v7);
      sub_24DC3C254();
      swift_allocError();
      RuntimeError.init(code:message:cause:)(&v7, 0xD00000000000002DLL, 0x800000024DCC5470, 0, v6);
      swift_willThrow();

      swift_unexpectedError();
      __break(1u);
    }
  }
}

void sub_24DC336BC()
{
  v1 = v0[1];
  v2 = *v0 & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  if (!v2)
  {
    v3 = v0[3];
    if ((v3 & 0x2000000000000000) != 0)
    {
      v4 = HIBYTE(v3) & 0xF;
    }

    else
    {
      v4 = v0[2] & 0xFFFFFFFFFFFFLL;
    }

    if (v4)
    {
      static RuntimeError.Code.invalidArgument.getter(&v6);
      sub_24DC3C254();
      swift_allocError();
      RuntimeError.init(code:message:cause:)(&v6, 0xD00000000000002DLL, 0x800000024DCC5470, 0, v5);
      swift_willThrow();
    }
  }
}

void sub_24DC33790(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = *a1;
    sub_24DC335C4();
  }
}

uint64_t MethodConfig.Name.method.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t MethodConfig.Name.method.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

GRPCCoreInternal::MethodConfig::Name __swiftcall MethodConfig.Name.init(service:method:)(Swift::String service, Swift::String method)
{
  object = method._object;
  countAndFlagsBits = method._countAndFlagsBits;
  v5 = service._object;
  v6 = service._countAndFlagsBits;
  v7 = v2;

  sub_24DC336BC();

  *v7 = v6;
  v7[1] = v5;
  v7[2] = countAndFlagsBits;
  v7[3] = object;
  result.method._object = v11;
  result.method._countAndFlagsBits = v10;
  result.service._object = v9;
  result.service._countAndFlagsBits = v8;
  return result;
}

uint64_t static MethodConfig.Name.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_24DCB57A4(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_24DCB57A4();
    }
  }

  return result;
}

uint64_t MethodConfig.Name.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_24DCB4D44();

  return sub_24DCB4D44();
}

uint64_t MethodConfig.Name.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_24DCB58A4();
  sub_24DCB4D44();
  sub_24DCB4D44();
  return sub_24DCB58F4();
}

uint64_t sub_24DC33A5C()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_24DCB58A4();
  sub_24DCB4D44();
  sub_24DCB4D44();
  return sub_24DCB58F4();
}

uint64_t sub_24DC33AC4()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_24DCB4D44();

  return sub_24DCB4D44();
}

uint64_t sub_24DC33B14()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_24DCB58A4();
  sub_24DCB4D44();
  sub_24DCB4D44();
  return sub_24DCB58F4();
}

uint64_t sub_24DC33B78(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_24DCB57A4(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_24DCB57A4();
    }
  }

  return result;
}

uint64_t MethodConfig.names.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t MethodConfig.timeout.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return result;
}

uint64_t MethodConfig.timeout.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 16) = result;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3 & 1;
  return result;
}

uint64_t MethodConfig.maxRequestMessageBytes.getter()
{
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  return result;
}

uint64_t MethodConfig.maxRequestMessageBytes.setter(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
}

uint64_t MethodConfig.maxResponseMessageBytes.getter()
{
  result = *(v0 + 56);
  v2 = *(v0 + 64);
  return result;
}

uint64_t MethodConfig.maxResponseMessageBytes.setter(uint64_t result, char a2)
{
  *(v2 + 56) = result;
  *(v2 + 64) = a2 & 1;
  return result;
}

double sub_24DC33D70@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 56) = -1;
  return result;
}

uint64_t MethodConfig.executionPolicy.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 88);
  v7[0] = *(v1 + 72);
  v7[1] = v2;
  v8[0] = *(v1 + 104);
  v3 = v8[0];
  *(v8 + 9) = *(v1 + 113);
  v4 = *(v8 + 9);
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  *(a1 + 41) = v4;
  return sub_24DC33DDC(v7, &v6);
}

uint64_t sub_24DC33DDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19EDB0, &qword_24DCB80B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 MethodConfig.executionPolicy.setter(uint64_t a1)
{
  v3 = *(v1 + 88);
  v6[0] = *(v1 + 72);
  v6[1] = v3;
  v7[0] = *(v1 + 104);
  *(v7 + 9) = *(v1 + 113);
  sub_24DC3DFD4(v6, &qword_27F19EDB0, &qword_24DCB80B0);
  v4 = *(a1 + 16);
  *(v1 + 72) = *a1;
  *(v1 + 88) = v4;
  *(v1 + 104) = *(a1 + 32);
  result = *(a1 + 41);
  *(v1 + 113) = result;
  return result;
}

__n128 MethodConfig.init(names:waitForReady:timeout:maxRequestMessageBytes:maxResponseMessageBytes:executionPolicy:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11)
{
  *(a9 + 72) = 0u;
  *(a9 + 88) = 0u;
  *(a9 + 104) = 0u;
  *(a9 + 120) = 0;
  *(a9 + 128) = -1;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5 & 1;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7 & 1;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10 & 1;
  v12 = *(a9 + 72);
  v13 = *(a9 + 88);
  v14 = *(a9 + 104);
  *&v18[9] = *(a9 + 113);
  v17[1] = v13;
  *v18 = v14;
  v17[0] = v12;
  sub_24DC3DFD4(v17, &qword_27F19EDB0, &qword_24DCB80B0);
  v15 = *(a11 + 16);
  *(a9 + 72) = *a11;
  *(a9 + 88) = v15;
  *(a9 + 104) = *(a11 + 32);
  result = *(a11 + 41);
  *(a9 + 113) = result;
  return result;
}

uint64_t sub_24DC33FB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    for (i = (a2 + 56); ; i += 4)
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(i - 1);
      v8 = *i;
      v9 = *(v3 - 3) == *(i - 3) && *(v3 - 2) == *(i - 2);
      if (!v9 && (sub_24DCB57A4() & 1) == 0)
      {
        break;
      }

      v10 = v5 == v7 && v6 == v8;
      if (!v10 && (sub_24DCB57A4() & 1) == 0)
      {
        break;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t MethodConfig.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(v2 + 8);
  v23 = v2[3];
  v24 = v2[2];
  v27 = *(v2 + 32);
  v28 = *(v2 + 48);
  v25 = v2[5];
  v26 = v2[7];
  v6 = *(v2 + 64);
  v7 = *(v2 + 13);
  v34 = *(v2 + 11);
  *v35 = v7;
  *&v35[9] = *(v2 + 113);
  v33 = *(v2 + 9);
  v8 = *(v4 + 16);
  MEMORY[0x253035FF0](v8);
  if (v8)
  {
    v9 = (v4 + 56);
    do
    {
      v10 = *(v9 - 3);
      v11 = *(v9 - 2);
      v13 = *(v9 - 1);
      v12 = *v9;

      sub_24DCB4D44();
      sub_24DCB4D44();

      v9 += 4;
      --v8;
    }

    while (v8);
  }

  if (v5 != 2)
  {
    sub_24DCB58C4();
  }

  sub_24DCB58C4();
  if (v27)
  {
    sub_24DCB58C4();
    if (!v28)
    {
      goto LABEL_8;
    }

LABEL_11:
    sub_24DCB58C4();
    if (!v6)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  sub_24DCB58C4();
  sub_24DCB5994();
  if (v28)
  {
    goto LABEL_11;
  }

LABEL_8:
  sub_24DCB58C4();
  MEMORY[0x253035FF0](v25);
  if (!v6)
  {
LABEL_9:
    sub_24DCB58C4();
    MEMORY[0x253035FF0](v26);
    goto LABEL_13;
  }

LABEL_12:
  sub_24DCB58C4();
LABEL_13:
  if (v35[24] == 255)
  {
    return sub_24DCB58C4();
  }

  v14 = *(&v34 + 1);
  v15 = *&v35[8];
  v16 = *&v35[16];
  sub_24DCB58C4();
  if (v35[24])
  {
    MEMORY[0x253035FF0](1);
    MEMORY[0x253035FF0](v33);
    v17 = *(v2 + 11);
    v30 = *(v2 + 9);
    v31 = v17;
    v32[0] = *(v2 + 13);
    *(v32 + 9) = *(v2 + 113);
    sub_24DC3C1B4(&v30, v29);
    sub_24DCB5994();
    v18 = a1;
    v19 = v14;
  }

  else
  {
    MEMORY[0x253035FF0](0);
    MEMORY[0x253035FF0](v33);
    v21 = *(v2 + 11);
    v30 = *(v2 + 9);
    v31 = v21;
    v32[0] = *(v2 + 13);
    *(v32 + 9) = *(v2 + 113);
    sub_24DC3C1B4(&v30, v29);
    sub_24DCB5994();
    sub_24DCB5994();
    if ((v15 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v22 = v15;
    }

    else
    {
      v22 = 0;
    }

    MEMORY[0x253036020](v22);
    v18 = a1;
    v19 = v16;
  }

  sub_24DC3B8F8(v18, v19);
  return sub_24DC3DFD4(&v33, &qword_27F19EDB0, &qword_24DCB80B0);
}

uint64_t MethodConfig.hashValue.getter()
{
  sub_24DCB58A4();
  MethodConfig.hash(into:)(v1);
  return sub_24DCB58F4();
}

uint64_t sub_24DC34354()
{
  sub_24DCB58A4();
  MethodConfig.hash(into:)(v1);
  return sub_24DCB58F4();
}

uint64_t sub_24DC34398()
{
  sub_24DCB58A4();
  MethodConfig.hash(into:)(v1);
  return sub_24DCB58F4();
}

uint64_t sub_24DC34404@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v8[0] = v1[2];
  v3 = v8[0];
  *(v8 + 9) = *(v1 + 41);
  v4 = *(v8 + 9);
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  *(a1 + 41) = v4;
  return sub_24DC3C1EC(v7, &v6);
}

uint64_t RPCExecutionPolicy.retry.getter@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 56))
  {
    result = 0;
    v4 = 0uLL;
    v5 = 0uLL;
    v6 = 0uLL;
  }

  else
  {
    v7 = *(v1 + 6);
    v9 = v1[1];
    v10 = v1[2];
    v8 = *v1;

    v5 = v9;
    v6 = v10;
    v4 = v8;
  }

  *a1 = v4;
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t RPCExecutionPolicy.hedge.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = 0uLL;
  v4 = 0uLL;
  if (*(v1 + 56) == 1)
  {
    v6 = v1[1];
    v7 = *v1;

    v4 = v6;
    v3 = v7;
  }

  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t static RPCExecutionPolicy.retry(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v5;
  *(a2 + 32) = v2;
  *(a2 + 40) = v3;
  *(a2 + 48) = v4;
  *(a2 + 56) = 0;
}

uint64_t static RPCExecutionPolicy.hedge(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  *a2 = *a1;
  *(a2 + 16) = v3;
  *(a2 + 24) = v2;
  *(a2 + 56) = 1;
}

uint64_t static RPCExecutionPolicy.== infix(_:_:)(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v16[0] = *a1;
  v16[1] = v2;
  v4 = *a1;
  v3 = a1[1];
  v17[0] = a1[2];
  *(v17 + 9) = *(a1 + 41);
  v5 = a2[1];
  v18[0] = *a2;
  v18[1] = v5;
  v7 = *a2;
  v6 = a2[1];
  v19[0] = a2[2];
  *(v19 + 9) = *(a2 + 41);
  v13 = v4;
  v14 = v3;
  v15[0] = a1[2];
  *(v15 + 9) = *(a1 + 41);
  v10 = v7;
  v11 = v6;
  v12[0] = a2[2];
  *(v12 + 9) = *(a2 + 41);
  sub_24DC3C1EC(v16, v22);
  sub_24DC3C1EC(v18, v22);
  v8 = sub_24DC3BAF8(&v13, &v10);
  v20[0] = v10;
  v20[1] = v11;
  v21[0] = v12[0];
  *(v21 + 9) = *(v12 + 9);
  sub_24DC3C224(v20);
  v22[0] = v13;
  v22[1] = v14;
  v23[0] = v15[0];
  *(v23 + 9) = *(v15 + 9);
  sub_24DC3C224(v22);
  return v8 & 1;
}

uint64_t sub_24DC34678(__int128 *a1)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  if (v1[7])
  {
    MEMORY[0x253035FF0](1);
    MEMORY[0x253035FF0](v4);
    sub_24DCB5994();
  }

  else
  {
    v8 = v1[5];
    v7 = v1[6];
    v9 = v1[4];
    MEMORY[0x253035FF0](0);
    MEMORY[0x253035FF0](v4);
    sub_24DCB5994();
    sub_24DCB5994();
    if ((v8 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v10 = v8;
    }

    else
    {
      v10 = 0;
    }

    MEMORY[0x253036020](v10);
    v5 = v7;
  }

  return sub_24DC3B8F8(a1, v5);
}

uint64_t sub_24DC34754()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = *(v0 + 56);
  sub_24DCB58A4();
  if (v8)
  {
    MEMORY[0x253035FF0](1);
    MEMORY[0x253035FF0](v2);
    sub_24DCB5994();
  }

  else
  {
    MEMORY[0x253035FF0](0);
    MEMORY[0x253035FF0](v2);
    sub_24DCB5994();
    sub_24DCB5994();
    if ((v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v9 = v6;
    }

    else
    {
      v9 = 0;
    }

    MEMORY[0x253036020](v9);
    v3 = v7;
  }

  sub_24DC3B8F8(v11, v3);
  return sub_24DCB58F4();
}

uint64_t sub_24DC34844(__int128 *a1)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  if (v1[7])
  {
    MEMORY[0x253035FF0](1);
    MEMORY[0x253035FF0](v4);
    sub_24DCB5994();

    return sub_24DC3B8F8(a1, v5);
  }

  else
  {
    v8 = v1[6];
    v9 = v1[5];
    v10 = v1[4];
    MEMORY[0x253035FF0](0);
    return RetryPolicy.hash(into:)(a1);
  }
}

uint64_t sub_24DC34930()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = *(v0 + 56);
  sub_24DCB58A4();
  if (v8)
  {
    MEMORY[0x253035FF0](1);
    MEMORY[0x253035FF0](v2);
    sub_24DCB5994();
  }

  else
  {
    MEMORY[0x253035FF0](0);
    MEMORY[0x253035FF0](v2);
    sub_24DCB5994();
    sub_24DCB5994();
    if ((v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v9 = v6;
    }

    else
    {
      v9 = 0;
    }

    MEMORY[0x253036020](v9);
    v3 = v7;
  }

  sub_24DC3B8F8(v11, v3);
  return sub_24DCB58F4();
}

uint64_t sub_24DC34A18(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v16[0] = *a1;
  v16[1] = v2;
  v4 = *a1;
  v3 = a1[1];
  v17[0] = a1[2];
  *(v17 + 9) = *(a1 + 41);
  v5 = a2[1];
  v18[0] = *a2;
  v18[1] = v5;
  v7 = *a2;
  v6 = a2[1];
  v19[0] = a2[2];
  *(v19 + 9) = *(a2 + 41);
  v13 = v4;
  v14 = v3;
  v15[0] = a1[2];
  *(v15 + 9) = *(a1 + 41);
  v10 = v7;
  v11 = v6;
  v12[0] = a2[2];
  *(v12 + 9) = *(a2 + 41);
  sub_24DC3C1EC(v16, v22);
  sub_24DC3C1EC(v18, v22);
  v8 = sub_24DC343D8(&v13, &v10);
  v20[0] = v10;
  v20[1] = v11;
  v21[0] = v12[0];
  *(v21 + 9) = *(v12 + 9);
  sub_24DC3C224(v20);
  v22[0] = v13;
  v22[1] = v14;
  v23[0] = v15[0];
  *(v23 + 9) = *(v15 + 9);
  sub_24DC3C224(v22);
  return v8 & 1;
}

uint64_t RetryPolicy.maxAttempts.setter(uint64_t result)
{
  *v1 = result;
  if (result < 2)
  {
    static RuntimeError.Code.invalidArgument.getter(&v5);
    sub_24DCB54D4();

    v3 = sub_24DCB5744();
    MEMORY[0x253035590](v3);

    MEMORY[0x253035590](41, 0xE100000000000000);
    sub_24DC3C254();
    swift_allocError();
    RuntimeError.init(code:message:cause:)(&v5, 0xD00000000000002BLL, 0x800000024DCC5250, 0, v4);
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v2 = 5;
    if (result < 5)
    {
      v2 = result;
    }

    *v1 = v2;
  }

  return result;
}

uint64_t sub_24DC34C74(uint64_t result)
{
  if (result < 2)
  {
    static RuntimeError.Code.invalidArgument.getter(&v3);
    sub_24DCB54D4();

    v1 = sub_24DCB5744();
    MEMORY[0x253035590](v1);

    MEMORY[0x253035590](41, 0xE100000000000000);
    sub_24DC3C254();
    swift_allocError();
    RuntimeError.init(code:message:cause:)(&v3, 0xD00000000000002BLL, 0x800000024DCC5250, 0, v2);
    return swift_willThrow();
  }

  else if (result >= 5)
  {
    return 5;
  }

  return result;
}

uint64_t RetryPolicy.initialBackoff.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

__n128 sub_24DC34DB8@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  result = *(a1 + 8);
  *a2 = result;
  return result;
}

uint64_t sub_24DC34DC4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  sub_24DCB59A4();
  result = sub_24DCB5974();
  if (result)
  {
    *(a2 + 8) = v3;
    *(a2 + 16) = v4;
  }

  else
  {
    static RuntimeError.Code.invalidArgument.getter(&v7);
    sub_24DC3C254();
    swift_allocError();
    RuntimeError.init(code:message:cause:)(&v7, 0xD000000000000028, 0x800000024DCC5280, 0, v6);
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t RetryPolicy.initialBackoff.setter(uint64_t a1, uint64_t a2)
{
  sub_24DCB59A4();
  result = sub_24DCB5974();
  if (result)
  {
    *(v2 + 8) = a1;
    *(v2 + 16) = a2;
  }

  else
  {
    static RuntimeError.Code.invalidArgument.getter(&v7);
    sub_24DC3C254();
    swift_allocError();
    RuntimeError.init(code:message:cause:)(&v7, 0xD000000000000028, 0x800000024DCC5280, 0, v6);
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*RetryPolicy.initialBackoff.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *(a1 + 16) = v1;
  *a1 = *(v1 + 8);
  return sub_24DC34F78;
}

uint64_t sub_24DC34F78(uint64_t *a1, char a2)
{
  v4 = *a1;
  v5 = a1[1];
  sub_24DCB59A4();
  result = sub_24DCB5974();
  if ((a2 & 1) == 0)
  {
    if ((result & 1) == 0)
    {
      static RuntimeError.Code.invalidArgument.getter(v11);
      sub_24DC3C254();
      swift_allocError();
      v8 = v11;
      goto LABEL_7;
    }

LABEL_5:
    v9 = a1[2];
    *(v9 + 8) = v4;
    *(v9 + 16) = v5;
    return result;
  }

  if (result)
  {
    goto LABEL_5;
  }

  static RuntimeError.Code.invalidArgument.getter(&v10);
  sub_24DC3C254();
  swift_allocError();
  v8 = &v10;
LABEL_7:
  RuntimeError.init(code:message:cause:)(v8, 0xD000000000000028, 0x800000024DCC5280, 0, v7);
  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t RetryPolicy.maxBackoff.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

__n128 sub_24DC35090@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  result = *(a1 + 24);
  *a2 = result;
  return result;
}

uint64_t sub_24DC3509C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  sub_24DCB59A4();
  result = sub_24DCB5974();
  if (result)
  {
    *(a2 + 24) = v3;
    *(a2 + 32) = v4;
  }

  else
  {
    static RuntimeError.Code.invalidArgument.getter(&v7);
    sub_24DC3C254();
    swift_allocError();
    RuntimeError.init(code:message:cause:)(&v7, 0xD000000000000024, 0x800000024DCC52B0, 0, v6);
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t RetryPolicy.maxBackoff.setter(uint64_t a1, uint64_t a2)
{
  sub_24DCB59A4();
  result = sub_24DCB5974();
  if (result)
  {
    *(v2 + 24) = a1;
    *(v2 + 32) = a2;
  }

  else
  {
    static RuntimeError.Code.invalidArgument.getter(&v7);
    sub_24DC3C254();
    swift_allocError();
    RuntimeError.init(code:message:cause:)(&v7, 0xD000000000000024, 0x800000024DCC52B0, 0, v6);
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*RetryPolicy.maxBackoff.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *(a1 + 16) = v1;
  *a1 = *(v1 + 24);
  return sub_24DC35250;
}

uint64_t sub_24DC35250(uint64_t *a1, char a2)
{
  v4 = *a1;
  v5 = a1[1];
  sub_24DCB59A4();
  result = sub_24DCB5974();
  if ((a2 & 1) == 0)
  {
    if ((result & 1) == 0)
    {
      static RuntimeError.Code.invalidArgument.getter(v11);
      sub_24DC3C254();
      swift_allocError();
      v8 = v11;
      goto LABEL_7;
    }

LABEL_5:
    v9 = a1[2];
    *(v9 + 24) = v4;
    *(v9 + 32) = v5;
    return result;
  }

  if (result)
  {
    goto LABEL_5;
  }

  static RuntimeError.Code.invalidArgument.getter(&v10);
  sub_24DC3C254();
  swift_allocError();
  v8 = &v10;
LABEL_7:
  RuntimeError.init(code:message:cause:)(v8, 0xD000000000000024, 0x800000024DCC52B0, 0, v7);
  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

double sub_24DC35368@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 40);
  *a2 = result;
  return result;
}

void *sub_24DC35374(void *result, uint64_t a2)
{
  if (*result <= 0.0)
  {
    v10 = v5;
    v11 = v4;
    v12 = v3;
    v13 = v2;
    v14 = v6;
    v15 = v7;
    static RuntimeError.Code.invalidArgument.getter(&v9);
    sub_24DC3C254();
    swift_allocError();
    RuntimeError.init(code:message:cause:)(&v9, 0xD00000000000002BLL, 0x800000024DCC52E0, 0, v8);
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    *(a2 + 40) = *result;
  }

  return result;
}

void RetryPolicy.backoffMultiplier.setter(double a1)
{
  if (a1 <= 0.0)
  {
    static RuntimeError.Code.invalidArgument.getter(&v3);
    sub_24DC3C254();
    swift_allocError();
    RuntimeError.init(code:message:cause:)(&v3, 0xD00000000000002BLL, 0x800000024DCC52E0, 0, v2);
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }

  else
  {
    *(v1 + 40) = a1;
  }
}

uint64_t (*RetryPolicy.backoffMultiplier.modify(void *a1))(uint64_t result, char a2)
{
  a1[1] = v1;
  *a1 = *(v1 + 40);
  return sub_24DC354F4;
}

uint64_t sub_24DC354F4(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    if (*result <= 0.0)
    {
      static RuntimeError.Code.invalidArgument.getter(v5);
      sub_24DC3C254();
      swift_allocError();
      v3 = v5;
      goto LABEL_7;
    }

LABEL_6:
    *(*(result + 8) + 40) = *result;
    return result;
  }

  if (*result > 0.0)
  {
    goto LABEL_6;
  }

  static RuntimeError.Code.invalidArgument.getter(&v4);
  sub_24DC3C254();
  swift_allocError();
  v3 = &v4;
LABEL_7:
  RuntimeError.init(code:message:cause:)(v3, 0xD00000000000002BLL, 0x800000024DCC52E0, 0, v2);
  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_24DC35604(uint64_t *a1)
{
  v1 = *a1;

  return RetryPolicy.retryableStatusCodes.setter(v2);
}

uint64_t RetryPolicy.retryableStatusCodes.setter(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = *(v1 + 48);

    *(v1 + 48) = a1;
  }

  else
  {
    static RuntimeError.Code.invalidArgument.getter(&v6);
    sub_24DC3C254();
    swift_allocError();
    RuntimeError.init(code:message:cause:)(&v6, 0xD000000000000025, 0x800000024DCC5310, 0, v5);
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*RetryPolicy.retryableStatusCodes.modify(void *a1))(void *a1, char a2)
{
  v3 = *(v1 + 48);
  a1[1] = v1;
  a1[2] = v3;
  *a1 = v3;

  return sub_24DC3573C;
}

uint64_t sub_24DC3573C(void *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  if ((a2 & 1) == 0)
  {
    if (v3)
    {
      v9 = a1[1];
      v8 = a1[2];

      *(v9 + 48) = v2;
      return result;
    }

    static RuntimeError.Code.invalidArgument.getter(v14);
    sub_24DC3C254();
    swift_allocError();
    v12 = v14;
    goto LABEL_10;
  }

  if (!v3)
  {
    v10 = *a1;

    static RuntimeError.Code.invalidArgument.getter(&v13);
    sub_24DC3C254();
    swift_allocError();
    v12 = &v13;
LABEL_10:
    RuntimeError.init(code:message:cause:)(v12, 0xD000000000000025, 0x800000024DCC5310, 0, v11);
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v5 = a1[1];
  v4 = a1[2];
  v6 = *a1;

  *(v5 + 48) = v2;
}

uint64_t RetryPolicy.init(maxAttempts:initialBackoff:maxBackoff:backoffMultiplier:retryableStatusCodes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>)
{
  v15 = sub_24DC34C74(a1);
  sub_24DCB59A4();
  if ((sub_24DCB5974() & 1) == 0)
  {
    static RuntimeError.Code.invalidArgument.getter(v24);
    sub_24DC3C254();
    swift_allocError();
    RuntimeError.init(code:message:cause:)(v24, 0xD000000000000028, 0x800000024DCC5280, 0, v17);
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    goto LABEL_7;
  }

  sub_24DCB59A4();
  result = sub_24DCB5974();
  if ((result & 1) == 0)
  {
LABEL_7:
    static RuntimeError.Code.invalidArgument.getter(&v23);
    sub_24DC3C254();
    swift_allocError();
    RuntimeError.init(code:message:cause:)(&v23, 0xD000000000000024, 0x800000024DCC52B0, 0, v18);
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    goto LABEL_8;
  }

  if (a8 <= 0.0)
  {
LABEL_8:
    static RuntimeError.Code.invalidArgument.getter(&v21);
    sub_24DC3C254();
    swift_allocError();
    RuntimeError.init(code:message:cause:)(&v21, 0xD00000000000002BLL, 0x800000024DCC52E0, 0, v19);
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    goto LABEL_9;
  }

  if (*(a6 + 16))
  {
    *a7 = v15;
    *(a7 + 8) = a2;
    *(a7 + 16) = a3;
    *(a7 + 24) = a4;
    *(a7 + 32) = a5;
    *(a7 + 40) = a8;
    *(a7 + 48) = a6;
    return result;
  }

LABEL_9:
  static RuntimeError.Code.invalidArgument.getter(&v22);
  sub_24DC3C254();
  swift_allocError();
  RuntimeError.init(code:message:cause:)(&v22, 0xD000000000000025, 0x800000024DCC5310, 0, v20);
  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_24DC35B54(uint64_t result, uint64_t a2)
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
  v9 = a2 + 56;
  v18 = result;
  if (v7)
  {
    do
    {
      v10 = __clz(__rbit64(v7));
      v19 = (v7 - 1) & v7;
LABEL_13:
      v21 = *(*(result + 48) + (v10 | (v3 << 6)));
      v13 = *(a2 + 40);
      sub_24DC3DF2C();
      v14 = sub_24DCB4D24();
      v15 = -1 << *(a2 + 32);
      v16 = v14 & ~v15;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        return 0;
      }

      v17 = ~v15;
      sub_24DC3DF80();
      while (1)
      {
        v20 = *(*(a2 + 48) + v16);
        if (sub_24DCB4DA4())
        {
          break;
        }

        v16 = (v16 + 1) & v17;
        if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
        {
          return 0;
        }
      }

      result = v18;
      v7 = v19;
    }

    while (v19);
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v19 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t RetryPolicy.hash(into:)(__int128 *a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  MEMORY[0x253035FF0](*v1);
  sub_24DCB5994();
  sub_24DCB5994();
  v9 = 0.0;
  if (v7 != 0.0)
  {
    v9 = v7;
  }

  MEMORY[0x253036020](*&v9);

  return sub_24DC3B8F8(a1, v8);
}

uint64_t RetryPolicy.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = *(v0 + 4);
  v6 = v0[5];
  v7 = *(v0 + 6);
  sub_24DCB58A4();
  MEMORY[0x253035FF0](*&v1);
  sub_24DCB5994();
  sub_24DCB5994();
  v8 = 0.0;
  if (v6 != 0.0)
  {
    v8 = v6;
  }

  MEMORY[0x253036020](*&v8);
  sub_24DC3B8F8(v10, v7);
  return sub_24DCB58F4();
}

uint64_t sub_24DC35E74()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = *(v0 + 4);
  v6 = v0[5];
  v7 = *(v0 + 6);
  sub_24DCB58A4();
  MEMORY[0x253035FF0](*&v1);
  sub_24DCB5994();
  sub_24DCB5994();
  v8 = 0.0;
  if (v6 != 0.0)
  {
    v8 = v6;
  }

  MEMORY[0x253036020](*&v8);
  sub_24DC3B8F8(v10, v7);
  return sub_24DCB58F4();
}

uint64_t HedgingPolicy.maxAttempts.setter(uint64_t result)
{
  *v1 = result;
  if (result < 2)
  {
    static RuntimeError.Code.invalidArgument.getter(&v5);
    sub_24DCB54D4();

    v3 = sub_24DCB5744();
    MEMORY[0x253035590](v3);

    MEMORY[0x253035590](41, 0xE100000000000000);
    sub_24DC3C254();
    swift_allocError();
    RuntimeError.init(code:message:cause:)(&v5, 0xD00000000000002BLL, 0x800000024DCC5250, 0, v4);
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v2 = 5;
    if (result < 5)
    {
      v2 = result;
    }

    *v1 = v2;
  }

  return result;
}

uint64_t sub_24DC360BC(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = *(result + 8);
    v3 = *v2;
    if (*v2 < 2)
    {
      v5 = result;
      static RuntimeError.Code.invalidArgument.getter(&v10);
      v11 = 0;
      v12 = 0xE000000000000000;
      sub_24DCB54D4();

      v11 = 0xD00000000000002BLL;
      v12 = 0x800000024DCC5250;
      *v5 = v3;
      v6 = sub_24DCB5744();
      MEMORY[0x253035590](v6);

      MEMORY[0x253035590](41, 0xE100000000000000);
      v7 = v11;
      v8 = v12;
      sub_24DC3C254();
      swift_allocError();
      RuntimeError.init(code:message:cause:)(&v10, v7, v8, 0, v9);
      swift_willThrow();
      result = swift_unexpectedError();
      __break(1u);
    }

    else
    {
      v4 = 5;
      if (v3 < 5)
      {
        v4 = *v2;
      }

      *v2 = v4;
    }
  }

  return result;
}

uint64_t HedgingPolicy.hedgingDelay.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

uint64_t sub_24DC36200(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  sub_24DCB59A4();
  result = sub_24DCB5974();
  if (result)
  {
    static RuntimeError.Code.invalidArgument.getter(&v7);
    sub_24DC3C254();
    swift_allocError();
    RuntimeError.init(code:message:cause:)(&v7, 0xD000000000000032, 0x800000024DCC5340, 0, v6);
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    *(a2 + 8) = v3;
    *(a2 + 16) = v4;
  }

  return result;
}

uint64_t HedgingPolicy.hedgingDelay.setter(uint64_t a1, uint64_t a2)
{
  sub_24DCB59A4();
  result = sub_24DCB5974();
  if (result)
  {
    static RuntimeError.Code.invalidArgument.getter(&v7);
    sub_24DC3C254();
    swift_allocError();
    RuntimeError.init(code:message:cause:)(&v7, 0xD000000000000032, 0x800000024DCC5340, 0, v6);
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    *(v2 + 8) = a1;
    *(v2 + 16) = a2;
  }

  return result;
}

uint64_t (*HedgingPolicy.hedgingDelay.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *(a1 + 16) = v1;
  *a1 = *(v1 + 8);
  return sub_24DC363C4;
}

uint64_t sub_24DC363C4(uint64_t *a1, char a2)
{
  v4 = *a1;
  v5 = a1[1];
  sub_24DCB59A4();
  result = sub_24DCB5974();
  if ((a2 & 1) == 0)
  {
    if (result)
    {
      static RuntimeError.Code.invalidArgument.getter(v11);
      sub_24DC3C254();
      swift_allocError();
      v8 = v11;
      goto LABEL_7;
    }

LABEL_5:
    v9 = a1[2];
    *(v9 + 8) = v4;
    *(v9 + 16) = v5;
    return result;
  }

  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  static RuntimeError.Code.invalidArgument.getter(&v10);
  sub_24DC3C254();
  swift_allocError();
  v8 = &v10;
LABEL_7:
  RuntimeError.init(code:message:cause:)(v8, 0xD000000000000032, 0x800000024DCC5340, 0, v7);
  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t HedgingPolicy.nonFatalStatusCodes.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t HedgingPolicy.init(maxAttempts:hedgingDelay:nonFatalStatusCodes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = sub_24DC34C74(a1);
  sub_24DCB59A4();
  result = sub_24DCB5974();
  if (result)
  {
    static RuntimeError.Code.invalidArgument.getter(v12);
    sub_24DC3C254();
    swift_allocError();
    RuntimeError.init(code:message:cause:)(v12, 0xD000000000000032, 0x800000024DCC5340, 0, v11);
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    *a5 = v9;
    a5[1] = a2;
    a5[2] = a3;
    a5[3] = a4;
  }

  return result;
}

uint64_t static HedgingPolicy.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a2[2];
  v3 = a2[3];
  v4 = a2[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[1];
  if ((sub_24DCB5984() & 1) == 0)
  {
    return 0;
  }

  return sub_24DC35B54(v6, v3);
}

uint64_t HedgingPolicy.hash(into:)(__int128 *a1)
{
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  MEMORY[0x253035FF0](*v1);
  sub_24DCB5994();

  return sub_24DC3B8F8(a1, v5);
}

uint64_t HedgingPolicy.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_24DCB58A4();
  MEMORY[0x253035FF0](v1);
  sub_24DCB5994();
  sub_24DC3B8F8(v6, v4);
  return sub_24DCB58F4();
}

uint64_t sub_24DC3678C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_24DCB58A4();
  MEMORY[0x253035FF0](v1);
  sub_24DCB5994();
  sub_24DC3B8F8(v6, v4);
  return sub_24DCB58F4();
}

uint64_t sub_24DC36804(__int128 *a1)
{
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  MEMORY[0x253035FF0](*v1);
  sub_24DCB5994();

  return sub_24DC3B8F8(a1, v5);
}

uint64_t sub_24DC3686C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_24DCB58A4();
  MEMORY[0x253035FF0](v1);
  sub_24DCB5994();
  sub_24DC3B8F8(v6, v4);
  return sub_24DCB58F4();
}

uint64_t sub_24DC368E0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a2[2];
  v3 = a2[3];
  v4 = a2[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[1];
  if ((sub_24DCB5984() & 1) == 0)
  {
    return 0;
  }

  return sub_24DC35B54(v6, v3);
}

uint64_t sub_24DC36958(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0x50676E6967646568;
  v5 = 0xED00007963696C6FLL;
  if (a1 == 5)
  {
    v4 = 0x6C6F507972746572;
    v5 = 0xEB00000000796369;
  }

  v6 = 0xD000000000000016;
  v7 = 0x800000024DCC5120;
  if (a1 != 3)
  {
    v6 = 0xD000000000000017;
    v7 = 0x800000024DCC5140;
  }

  if (a1 <= 4u)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0x52726F4674696177;
  v9 = 0xEC00000079646165;
  if (a1 != 1)
  {
    v8 = 0x74756F656D6974;
    v9 = 0xE700000000000000;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 1701667182;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xEC00000079646165;
        if (v10 != 0x52726F4674696177)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xE700000000000000;
        if (v10 != 0x74756F656D6974)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE400000000000000;
      if (v10 != 1701667182)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xEB00000000796369;
      if (v10 != 0x6C6F507972746572)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0xED00007963696C6FLL;
      if (v10 != 0x50676E6967646568)
      {
LABEL_39:
        v13 = sub_24DCB57A4();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0x800000024DCC5120;
    if (v10 != 0xD000000000000016)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0x800000024DCC5140;
    if (v10 != 0xD000000000000017)
    {
      goto LABEL_39;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v13 = 1;
LABEL_40:

  return v13 & 1;
}

uint64_t sub_24DC36BB0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x426C616974696E69;
    }

    else
    {
      v3 = 0x6D6574744178616DLL;
    }

    if (v2)
    {
      v4 = 0xEE0066666F6B6361;
    }

    else
    {
      v4 = 0xEB00000000737470;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x6F6B63614278616DLL;
    v4 = 0xEA00000000006666;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0xD000000000000011;
    }

    else
    {
      v3 = 0xD000000000000014;
    }

    if (v2 == 3)
    {
      v4 = 0x800000024DCC51B0;
    }

    else
    {
      v4 = 0x800000024DCC51D0;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v7 = 0x426C616974696E69;
    }

    else
    {
      v7 = 0x6D6574744178616DLL;
    }

    if (a2)
    {
      v6 = 0xEE0066666F6B6361;
    }

    else
    {
      v6 = 0xEB00000000737470;
    }

    if (v3 != v7)
    {
      goto LABEL_37;
    }
  }

  else if (a2 == 2)
  {
    v6 = 0xEA00000000006666;
    if (v3 != 0x6F6B63614278616DLL)
    {
LABEL_37:
      v8 = sub_24DCB57A4();
      goto LABEL_38;
    }
  }

  else
  {
    if (a2 == 3)
    {
      v5 = 0xD000000000000011;
    }

    else
    {
      v5 = 0xD000000000000014;
    }

    if (a2 == 3)
    {
      v6 = 0x800000024DCC51B0;
    }

    else
    {
      v6 = 0x800000024DCC51D0;
    }

    if (v3 != v5)
    {
      goto LABEL_37;
    }
  }

  if (v4 != v6)
  {
    goto LABEL_37;
  }

  v8 = 1;
LABEL_38:

  return v8 & 1;
}

uint64_t sub_24DC36D7C()
{
  *v0;
  *v0;
  *v0;
  sub_24DCB4D44();
}

uint64_t sub_24DC36EAC()
{
  sub_24DCB58A4();
  sub_24DCB4D44();

  return sub_24DCB58F4();
}

uint64_t sub_24DC36FE8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_24DC3C88C();
  *a2 = result;
  return result;
}

void sub_24DC37018(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701667182;
  v5 = 0xEB00000000796369;
  v6 = 0x6C6F507972746572;
  if (v2 != 5)
  {
    v6 = 0x50676E6967646568;
    v5 = 0xED00007963696C6FLL;
  }

  v7 = 0xD000000000000016;
  v8 = 0x800000024DCC5120;
  if (v2 != 3)
  {
    v7 = 0xD000000000000017;
    v8 = 0x800000024DCC5140;
  }

  if (*v1 <= 4u)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0xEC00000079646165;
  v10 = 0x52726F4674696177;
  if (v2 != 1)
  {
    v10 = 0x74756F656D6974;
    v9 = 0xE700000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_24DC37110()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x6C6F507972746572;
  if (v1 != 5)
  {
    v3 = 0x50676E6967646568;
  }

  v4 = 0xD000000000000016;
  if (v1 != 3)
  {
    v4 = 0xD000000000000017;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x52726F4674696177;
  if (v1 != 1)
  {
    v5 = 0x74756F656D6974;
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

uint64_t sub_24DC37204@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24DC3C88C();
  *a1 = result;
  return result;
}

uint64_t sub_24DC37238(uint64_t a1)
{
  v2 = sub_24DC3C2EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24DC37274(uint64_t a1)
{
  v2 = sub_24DC3C2EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MethodConfig.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19EDC0, &qword_24DCB80B8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v37 - v9;
  v11 = a1[3];
  v12 = a1[4];
  v53 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_24DC3C2EC();
  sub_24DCB5924();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v53);
    v67 = 0;
    v65 = 0u;
    v66 = 0u;
    v64 = 0u;
    LOBYTE(v68) = -1;
    return sub_24DC3DFD4(&v64, &qword_27F19EDB0, &qword_24DCB80B0);
  }

  v13 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19EDC8, &qword_24DCB80C0);
  LOBYTE(v55) = 0;
  sub_24DC3C544(&qword_27F19EDD0, sub_24DC3C38C);
  sub_24DCB56A4();
  v15 = v64;
  LOBYTE(v64) = 1;
  v52 = sub_24DCB5654();
  LOBYTE(v55) = 2;
  sub_24DC3C3E0();
  sub_24DCB5674();
  v51 = v15;
  if (v65)
  {
    v16 = 0;
  }

  else
  {
    v16 = v64;
  }

  if (v65)
  {
    v17 = 0;
  }

  else
  {
    v17 = *(&v64 + 1);
  }

  v84 = v65;
  LOBYTE(v64) = 3;
  v18 = sub_24DCB5664();
  v48 = v17;
  v49 = v16;
  v50 = v18;
  v82 = v19 & 1;
  LOBYTE(v64) = 4;
  v47 = sub_24DCB5664();
  v80 = v20 & 1;
  LOBYTE(v64) = 6;
  sub_24DC3C434();
  sub_24DCB5674();
  v21 = v51;
  if (*(&v56 + 1))
  {
    v45 = *(&v56 + 1);
    v22 = *(&v55 + 1);
    v46 = v56;
    v44 = v55;
    (*(v13 + 8))(v10, v6);
    v43 = 1;
    v54 = 1;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0;
    LOBYTE(v68) = -1;
    sub_24DC3DFD4(&v64, &qword_27F19EDB0, &qword_24DCB80B0);
    v24 = v49;
  }

  else
  {
    LOBYTE(v64) = 5;
    sub_24DC3C488();
    sub_24DCB5674();
    (*(v13 + 8))(v10, v6);
    v24 = v49;
    if (v58)
    {
      v36 = v58;
      v3 = *(&v57 + 1);
      v38 = v57;
      v22 = *(&v55 + 1);
      v45 = *(&v56 + 1);
      v46 = v56;
      v44 = v55;
      v54 = 0;
      v64 = 0u;
      v65 = 0u;
      v66 = 0u;
      v67 = 0;
      LOBYTE(v68) = -1;
      sub_24DC3DFD4(&v64, &qword_27F19EDB0, &qword_24DCB80B0);
      v43 = 0;
      v25 = v48;
      v23 = v36;
      goto LABEL_13;
    }

    v67 = 0;
    v65 = 0u;
    v66 = 0u;
    v64 = 0u;
    v43 = 255;
    LOBYTE(v68) = -1;
    sub_24DC3DFD4(&v64, &qword_27F19EDB0, &qword_24DCB80B0);
    v44 = 0;
    v45 = 0;
    v22 = 0;
    v46 = 0;
    v38 = 0;
    v23 = 0;
    v3 = 0;
  }

  v25 = v48;
LABEL_13:
  v40 = v22;
  *&v55 = v21;
  BYTE8(v55) = v52;
  *(&v55 + 9) = v85[0];
  HIDWORD(v55) = *(v85 + 3);
  *&v56 = v24;
  *(&v56 + 1) = v25;
  v42 = v84;
  LOBYTE(v57) = v84;
  *(&v57 + 1) = *v83;
  DWORD1(v57) = *&v83[3];
  *(&v57 + 1) = v50;
  v41 = v82;
  LOBYTE(v58) = v82;
  *(&v58 + 1) = *v81;
  DWORD1(v58) = *&v81[3];
  *(&v58 + 1) = v47;
  v39 = v80;
  LOBYTE(v59) = v80;
  *(&v59 + 1) = *v79;
  DWORD1(v59) = *&v79[3];
  v27 = v44;
  v26 = v45;
  *(&v59 + 1) = v44;
  *&v60 = v22;
  v28 = v46;
  *(&v60 + 1) = v46;
  *&v61 = v45;
  v29 = v38;
  *(&v61 + 1) = v38;
  *&v62 = v3;
  *(&v62 + 1) = v23;
  v30 = v43;
  v63 = v43;
  v31 = v62;
  *(a2 + 96) = v61;
  *(a2 + 112) = v31;
  *(a2 + 128) = v30;
  v32 = v60;
  *(a2 + 64) = v59;
  *(a2 + 80) = v32;
  v33 = v58;
  *(a2 + 32) = v57;
  *(a2 + 48) = v33;
  v34 = v56;
  *a2 = v55;
  *(a2 + 16) = v34;
  v35 = v23;
  sub_24DC3C4DC(&v55, &v64);
  __swift_destroy_boxed_opaque_existential_1(v53);
  *&v64 = v51;
  BYTE8(v64) = v52;
  *(&v64 + 9) = v85[0];
  HIDWORD(v64) = *(v85 + 3);
  *&v65 = v49;
  *(&v65 + 1) = v48;
  LOBYTE(v66) = v42;
  *(&v66 + 1) = *v83;
  DWORD1(v66) = *&v83[3];
  *(&v66 + 1) = v50;
  LOBYTE(v67) = v41;
  HIDWORD(v67) = *&v81[3];
  *(&v67 + 1) = *v81;
  v68 = v47;
  v69 = v39;
  *v70 = *v79;
  *&v70[3] = *&v79[3];
  v71 = v27;
  v72 = v40;
  v73 = v28;
  v74 = v26;
  v75 = v29;
  v76 = v3;
  v77 = v35;
  v78 = v30;
  return sub_24DC3C514(&v64);
}

uint64_t MethodConfig.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19EDF8, &qword_24DCB80C8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - v7;
  v9 = *v1;
  v37 = *(v1 + 8);
  v10 = v1[2];
  v35 = v1[3];
  v36 = v10;
  LODWORD(v10) = *(v1 + 32);
  v32 = v1[5];
  v33 = *(v1 + 48);
  v34 = v10;
  v30 = v1[7];
  v31 = *(v1 + 64);
  v11 = v1[10];
  v25 = v1[9];
  v26 = v11;
  v12 = v1[12];
  v27 = v1[11];
  v28 = v12;
  v23 = v1[13];
  v13 = v1[14];
  v24 = v1[15];
  v29 = *(v1 + 128);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24DC3C2EC();

  v15 = v4;
  sub_24DCB5944();
  v38 = v9;
  v46 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19EDC8, &qword_24DCB80C0);
  sub_24DC3C544(&qword_27F19EE00, sub_24DC3C5BC);
  sub_24DCB5724();
  if (v2)
  {
  }

  else
  {
    v17 = v35;
    v16 = v36;
    v18 = v34;

    LOBYTE(v38) = 1;
    sub_24DCB56B4();
    if (v18)
    {
      v19 = 0;
    }

    else
    {
      v19 = v16;
    }

    if (v18)
    {
      v20 = 0;
    }

    else
    {
      v20 = v17;
    }

    v38 = v19;
    v39 = v20;
    LOBYTE(v40) = v18;
    v46 = 2;
    sub_24DC3C610();
    sub_24DCB56D4();
    LOBYTE(v38) = 3;
    sub_24DCB56C4();
    v46 = 4;
    sub_24DCB56C4();
    if (v29 != 255)
    {
      v38 = v25;
      v39 = v26;
      v40 = v27;
      v41 = v28;
      if (v29)
      {
        v45 = 6;
        sub_24DC3C664();
      }

      else
      {
        v42 = v23;
        v43 = v13;
        v44 = v24;
        v45 = 5;
        sub_24DC3C6B8();
      }

      sub_24DCB5724();
    }
  }

  return (*(v5 + 8))(v8, v15);
}

uint64_t sub_24DC37D24(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x646F6874656DLL;
  }

  else
  {
    v4 = 0x65636976726573;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  if (*a2)
  {
    v6 = 0x646F6874656DLL;
  }

  else
  {
    v6 = 0x65636976726573;
  }

  if (*a2)
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_24DCB57A4();
  }

  return v9 & 1;
}

uint64_t sub_24DC37DC8()
{
  v1 = *v0;
  sub_24DCB58A4();
  sub_24DCB4D44();

  return sub_24DCB58F4();
}

uint64_t sub_24DC37E48()
{
  *v0;
  sub_24DCB4D44();
}

uint64_t sub_24DC37EB4()
{
  v1 = *v0;
  sub_24DCB58A4();
  sub_24DCB4D44();

  return sub_24DCB58F4();
}

uint64_t sub_24DC37F30@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_24DCB5634();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_24DC37F90(uint64_t *a1@<X8>)
{
  v2 = 0x65636976726573;
  if (*v1)
  {
    v2 = 0x646F6874656DLL;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_24DC37FCC()
{
  if (*v0)
  {
    result = 0x646F6874656DLL;
  }

  else
  {
    result = 0x65636976726573;
  }

  *v0;
  return result;
}

uint64_t sub_24DC38004@<X0>(char *a1@<X8>)
{
  v2 = sub_24DCB5634();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_24DC38074(uint64_t a1)
{
  v2 = sub_24DC3C70C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24DC380B0(uint64_t a1)
{
  v2 = sub_24DC3C70C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MethodConfig.Name.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19EE28, &qword_24DCB80D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24DC3C70C();
  sub_24DCB5924();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v22) = 0;
  v11 = sub_24DCB5644();
  if (v12)
  {
    v14 = v11;
  }

  else
  {
    v14 = 0;
  }

  v26 = v14;
  v15 = 0xE000000000000000;
  if (v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = 0xE000000000000000;
  }

  LOBYTE(v22) = 1;
  v17 = sub_24DCB5644();
  if (v18)
  {
    v19 = v17;
  }

  else
  {
    v19 = 0;
  }

  if (v18)
  {
    v15 = v18;
  }

  v22 = v26;
  v23 = v16;
  v21 = v19;
  v24 = v19;
  v25 = v15;

  sub_24DC336BC();

  (*(v6 + 8))(v9, v5);
  *a2 = v26;
  a2[1] = v16;
  a2[2] = v21;
  a2[3] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t MethodConfig.Name.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19EE30, &qword_24DCB80D8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v14 - v6;
  v8 = *v1;
  v14[1] = v1[1];
  v14[2] = v8;
  v9 = v1[2];
  v10 = v1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24DC3C70C();
  sub_24DCB5944();
  v16 = 1;
  v12 = v14[3];
  sub_24DCB56E4();
  if (!v12)
  {
    v15 = 0;
    sub_24DCB56E4();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_24DC38528()
{
  v1 = *v0;
  sub_24DCB58A4();
  sub_24DCB4D44();

  return sub_24DCB58F4();
}

uint64_t sub_24DC38628()
{
  *v0;
  *v0;
  *v0;
  sub_24DCB4D44();
}

uint64_t sub_24DC38714()
{
  v1 = *v0;
  sub_24DCB58A4();
  sub_24DCB4D44();

  return sub_24DCB58F4();
}

uint64_t sub_24DC38810@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_24DC3C8D8();
  *a2 = result;
  return result;
}

void sub_24DC38840(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000737470;
  v4 = 0x6D6574744178616DLL;
  v5 = 0xEA00000000006666;
  v6 = 0x6F6B63614278616DLL;
  v7 = 0xD000000000000011;
  v8 = 0x800000024DCC51B0;
  if (v2 != 3)
  {
    v7 = 0xD000000000000014;
    v8 = 0x800000024DCC51D0;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = v8;
  }

  if (*v1)
  {
    v4 = 0x426C616974696E69;
    v3 = 0xEE0066666F6B6361;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_24DC388FC()
{
  v1 = *v0;
  v2 = 0x6D6574744178616DLL;
  v3 = 0x6F6B63614278616DLL;
  v4 = 0xD000000000000011;
  if (v1 != 3)
  {
    v4 = 0xD000000000000014;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x426C616974696E69;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24DC389B4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24DC3C8D8();
  *a1 = result;
  return result;
}

uint64_t sub_24DC389E8(uint64_t a1)
{
  v2 = sub_24DC3C760();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24DC38A24(uint64_t a1)
{
  v2 = sub_24DC3C760();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RetryPolicy.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19EE38, &qword_24DCB80E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v39 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24DC3C760();
  sub_24DCB5924();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v49) = 0;
  v11 = sub_24DCB5694();
  v47 = sub_24DC34C74(v11);
  v48 = 1;
  sub_24DC3C3E0();
  sub_24DCB56A4();
  v13 = v49;
  v12 = v50;
  sub_24DCB59A4();
  if ((sub_24DCB5974() & 1) == 0)
  {
    static RuntimeError.Code.invalidArgument.getter(&v49);
    v27 = "t be greater than one (was ";
    sub_24DC3C254();
    swift_allocError();
    v29 = v28;
    v30 = 0xD000000000000028;
LABEL_12:
    v31 = v27 | 0x8000000000000000;
LABEL_13:
    RuntimeError.init(code:message:cause:)(&v49, v30, v31, 0, v29);
    swift_willThrow();
    (*(v6 + 8))(v9, v5);
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v46 = v12;
  v48 = 2;
  sub_24DCB56A4();
  v15 = v49;
  v14 = v50;
  sub_24DCB59A4();
  if ((sub_24DCB5974() & 1) == 0)
  {
    static RuntimeError.Code.invalidArgument.getter(&v49);
    sub_24DC3C254();
    swift_allocError();
    v31 = 0x800000024DCC52B0;
    v29 = v33;
    v30 = 0xD000000000000024;
    goto LABEL_13;
  }

  v45 = v14;
  LOBYTE(v49) = 3;
  sub_24DCB5684();
  if (v16 <= 0.0)
  {
    static RuntimeError.Code.invalidArgument.getter(&v49);
    v27 = "be greater than zero";
    sub_24DC3C254();
    swift_allocError();
    v29 = v34;
    v30 = 0xD00000000000002BLL;
    goto LABEL_12;
  }

  v17 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19EE40, &qword_24DCB80E8);
  v48 = 4;
  sub_24DC3C7B4();
  sub_24DCB56A4();
  v42 = v15;
  v43 = v13;
  v44 = v49;
  v18 = *(v49 + 16);
  if (v18)
  {
    v49 = MEMORY[0x277D84F90];
    sub_24DC3B6B8(0, v18, 0);
    v19 = v18;
    v20 = v49;
    v21 = *(v49 + 16);
    v22 = 32;
    v23 = v44;
    do
    {
      v24 = *(v23 + v22);
      v49 = v20;
      v25 = *(v20 + 24);
      v26 = v21 + 1;
      if (v21 >= v25 >> 1)
      {
        v40 = v19;
        v41 = v21 + 1;
        HIDWORD(v39) = v24;
        sub_24DC3B6B8((v25 > 1), v21 + 1, 1);
        LOBYTE(v24) = BYTE4(v39);
        v19 = v40;
        v26 = v41;
        v23 = v44;
        v20 = v49;
      }

      *(v20 + 16) = v26;
      *(v20 + v21 + 32) = v24;
      ++v22;
      v21 = v26;
      --v19;
    }

    while (v19);
  }

  else
  {

    v20 = MEMORY[0x277D84F90];
  }

  v35 = sub_24DC3C924(v20);

  if (*(v35 + 16))
  {
    (*(v6 + 8))(v9, v5);
    v36 = v43;
    *a2 = v47;
    a2[1] = v36;
    v37 = v42;
    a2[2] = v46;
    a2[3] = v37;
    a2[4] = v45;
    *(a2 + 5) = v17;
    a2[6] = v35;
  }

  else
  {
    static RuntimeError.Code.invalidArgument.getter(&v49);
    sub_24DC3C254();
    swift_allocError();
    RuntimeError.init(code:message:cause:)(&v49, 0xD000000000000025, 0x800000024DCC5310, 0, v38);
    swift_willThrow();
    (*(v6 + 8))(v9, v5);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24DC38FBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v34 = MEMORY[0x277D84F90];
    v33 = *(a1 + 16);
    sub_24DC3B6D8(0, v1, 0);
    v2 = v34;
    v4 = a1 + 56;
    v5 = -1 << *(a1 + 32);
    v6 = sub_24DCB5494();
    v7 = v33;
    v8 = 0;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
    {
      v10 = v6 >> 6;
      v11 = 1 << v6;
      if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_39;
      }

      v12 = *(a1 + 36);
      ++v8;
      v13 = v6 & 0x3F;
      v14 = 0xE200000000000000;
      v15 = 19279;
      switch(*(*(a1 + 48) + v6))
      {
        case 1:
          v15 = 0x454C4C45434E4143;
          goto LABEL_21;
        case 2:
          v14 = 0xE700000000000000;
          v15 = 0x4E574F4E4B4E55;
          break;
        case 3:
          v15 = 0xD000000000000010;
          v14 = 0x800000024DCC5420;
          break;
        case 4:
          v15 = 0xD000000000000011;
          v14 = 0x800000024DCC5400;
          break;
        case 5:
          v15 = 0x4E554F465F544F4ELL;
LABEL_21:
          v14 = 0xE900000000000044;
          break;
        case 6:
          v15 = 0x5F59444145524C41;
          v14 = 0xEE00535453495845;
          break;
        case 7:
          v15 = 0xD000000000000011;
          v14 = 0x800000024DCC53E0;
          break;
        case 8:
          v15 = 0xD000000000000012;
          v14 = 0x800000024DCC53C0;
          break;
        case 9:
          v15 = 0xD000000000000013;
          v14 = 0x800000024DCC53A0;
          break;
        case 0xA:
          v14 = 0xE700000000000000;
          v15 = 0x444554524F4241;
          break;
        case 0xB:
          v15 = 0x525F464F5F54554FLL;
          v14 = 0xEC00000045474E41;
          break;
        case 0xC:
          v15 = 0x4D454C504D494E55;
          v14 = 0xED00004445544E45;
          break;
        case 0xD:
          v14 = 0xE800000000000000;
          v15 = 0x4C414E5245544E49;
          break;
        case 0xE:
          v15 = 0x414C494156414E55;
          v14 = 0xEB00000000454C42;
          break;
        case 0xF:
          v14 = 0xE900000000000053;
          v15 = 0x534F4C5F41544144;
          break;
        case 0x10:
          v15 = 0x4E45485455414E55;
          v14 = 0xEF44455441434954;
          break;
        default:
          break;
      }

      v17 = *(v34 + 16);
      v16 = *(v34 + 24);
      if (v17 >= v16 >> 1)
      {
        v31 = *(a1 + 36);
        v32 = v6;
        v29 = v6 & 0x3F;
        v30 = v8;
        sub_24DC3B6D8((v16 > 1), v17 + 1, 1);
        v13 = v29;
        v8 = v30;
        v7 = v33;
        v12 = v31;
        v6 = v32;
      }

      *(v34 + 16) = v17 + 1;
      v18 = v34 + 16 * v17;
      *(v18 + 32) = v15;
      *(v18 + 40) = v14;
      v9 = 1 << *(a1 + 32);
      if (v6 >= v9)
      {
        goto LABEL_40;
      }

      v19 = *(v4 + 8 * v10);
      if ((v19 & v11) == 0)
      {
        goto LABEL_41;
      }

      if (v12 != *(a1 + 36))
      {
        goto LABEL_42;
      }

      v20 = v19 & (-2 << v13);
      if (v20)
      {
        v9 = __clz(__rbit64(v20)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v10 << 6;
        v22 = v10 + 1;
        v23 = (a1 + 64 + 8 * v10);
        while (v22 < (v9 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            v26 = v8;
            sub_24DC3DF20(v6, v12, 0);
            v8 = v26;
            v7 = v33;
            v9 = __clz(__rbit64(v24)) + v21;
            goto LABEL_4;
          }
        }

        v27 = v8;
        sub_24DC3DF20(v6, v12, 0);
        v8 = v27;
        v7 = v33;
      }

LABEL_4:
      v6 = v9;
      if (v8 == v7)
      {
        return v2;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    JUMPOUT(0x24DC39414);
  }

  return v2;
}

uint64_t RetryPolicy.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19EE58, &unk_24DCB80F0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v18 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[3];
  v20 = v1[2];
  v21 = v8;
  v18 = v1[4];
  v19 = v10;
  v11 = v1[5];
  v12 = v1[6];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24DC3C760();
  sub_24DCB5944();
  LOBYTE(v24) = 0;
  v14 = v22;
  sub_24DCB5714();
  if (!v14)
  {
    v15 = v18;
    v16 = v19;
    v24 = v21;
    v25 = v20;
    v23 = 1;
    sub_24DC3C610();
    sub_24DCB5724();
    v24 = v16;
    v25 = v15;
    v23 = 2;
    sub_24DCB5724();
    LOBYTE(v24) = 3;
    sub_24DCB5704();
    v24 = sub_24DC38FBC(v12);
    v23 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19EE60, &qword_24DCBBC90);
    sub_24DC3C998();
    sub_24DCB5724();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_24DC39704(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x44676E6967646568;
  v4 = 0xEC00000079616C65;
  v5 = 0x800000024DCC5200;
  if (v2 != 1)
  {
    v3 = 0xD000000000000013;
    v4 = 0x800000024DCC5200;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x6D6574744178616DLL;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xEB00000000737470;
  }

  v8 = 0x44676E6967646568;
  if (*a2 == 1)
  {
    v5 = 0xEC00000079616C65;
  }

  else
  {
    v8 = 0xD000000000000013;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6D6574744178616DLL;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xEB00000000737470;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24DCB57A4();
  }

  return v11 & 1;
}

uint64_t sub_24DC39814()
{
  v1 = *v0;
  sub_24DCB58A4();
  sub_24DCB4D44();

  return sub_24DCB58F4();
}

uint64_t sub_24DC398CC()
{
  *v0;
  *v0;
  sub_24DCB4D44();
}

uint64_t sub_24DC39970()
{
  v1 = *v0;
  sub_24DCB58A4();
  sub_24DCB4D44();

  return sub_24DCB58F4();
}

uint64_t sub_24DC39A24@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_24DC3CA68();
  *a2 = result;
  return result;
}

void sub_24DC39A54(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000737470;
  v4 = 0xEC00000079616C65;
  v5 = 0x44676E6967646568;
  if (v2 != 1)
  {
    v5 = 0xD000000000000013;
    v4 = 0x800000024DCC5200;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6D6574744178616DLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_24DC39AC8()
{
  v1 = 0x44676E6967646568;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6D6574744178616DLL;
  }
}

uint64_t sub_24DC39B38@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24DC3CA68();
  *a1 = result;
  return result;
}

uint64_t sub_24DC39B6C(uint64_t a1)
{
  v2 = sub_24DC3CA14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24DC39BA8(uint64_t a1)
{
  v2 = sub_24DC3CA14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HedgingPolicy.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19EE70, &qword_24DCB8100);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24DC3CA14();
  sub_24DCB5924();
  if (!v2)
  {
    LOBYTE(v32) = 0;
    v11 = sub_24DCB5694();
    v31 = sub_24DC34C74(v11);
    v35 = 1;
    sub_24DC3C3E0();
    sub_24DCB56A4();
    v12 = v32;
    v13 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19EE40, &qword_24DCB80E8);
    v35 = 2;
    sub_24DC3C7B4();
    sub_24DCB56A4();
    v29 = v13;
    v30 = v12;
    v15 = v32;
    v16 = *(v32 + 16);
    if (v16)
    {
      v27 = a2;
      v32 = MEMORY[0x277D84F90];
      v28 = v15;
      sub_24DC3B6B8(0, v16, 0);
      v17 = v28;
      v18 = v32;
      v19 = *(v32 + 16);
      v20 = 32;
      do
      {
        v21 = *(v17 + v20);
        v32 = v18;
        v22 = *(v18 + 24);
        v23 = v19 + 1;
        if (v19 >= v22 >> 1)
        {
          v26 = v19 + 1;
          v34 = v21;
          sub_24DC3B6B8((v22 > 1), v19 + 1, 1);
          LOBYTE(v21) = v34;
          v17 = v28;
          v23 = v26;
          v18 = v32;
        }

        *(v18 + 16) = v23;
        *(v18 + v19 + 32) = v21;
        ++v20;
        v19 = v23;
        --v16;
      }

      while (v16);

      a2 = v27;
    }

    else
    {

      v18 = MEMORY[0x277D84F90];
    }

    v24 = sub_24DC3C924(v18);

    (*(v6 + 8))(v9, v5);
    v25 = v30;
    *a2 = v31;
    a2[1] = v25;
    a2[2] = v29;
    a2[3] = v24;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t HedgingPolicy.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19EE78, &qword_24DCB8108);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v17 = v1[2];
  v18 = v9;
  v16 = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24DC3CA14();
  sub_24DCB5944();
  LOBYTE(v19) = 0;
  sub_24DCB5714();
  if (!v2)
  {
    v13 = v16;
    v19 = v18;
    v20 = v17;
    v21 = 1;
    sub_24DC3C610();
    sub_24DCB5724();
    v19 = sub_24DC38FBC(v13);
    v21 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19EE60, &qword_24DCBBC90);
    sub_24DC3C998();
    sub_24DCB5724();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_24DC3A11C(uint64_t result, uint64_t a2)
{
  *v2 = result;
  v2[1] = a2;
  return result;
}

unint64_t sub_24DC3A15C(unint64_t result, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    v11 = 0;
    return v11 | ((v2 == 0) << 8);
  }

  v4 = (result & 0x800000000000000) >> 59;
  v5 = 4 << v4;
  v6 = 11;
  if (((a2 >> 60) & ((result & 0x800000000000000) == 0)) == 0)
  {
    v6 = 7;
  }

  v7 = v6 | (v2 << 16);
  v8 = v6 & 0xC;
  if ((a2 & 0x1000000000000000) == 0)
  {
    v5 = 8;
  }

  if (v8 == v5)
  {
    v13 = result;
    result = sub_24DC3312C(v7, result, a2);
    if (result < 0x4000)
    {
      __break(1u);
LABEL_25:
      v14 = result;
      v9 = sub_24DC3312C(v9, result, a2);
      result = v14;
LABEL_13:
      v10 = v9 >> 16;
      if (v9 >> 16 >= v2)
      {
        __break(1u);
      }

      else
      {
        if ((a2 & 0x1000000000000000) != 0)
        {
          v11 = sub_24DCB4EB4();
          return v11 | ((v2 == 0) << 8);
        }

        if ((a2 & 0x2000000000000000) != 0)
        {
          v16[0] = result;
          v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
          v11 = *(v16 + v10);
          return v11 | ((v2 == 0) << 8);
        }

        if ((result & 0x1000000000000000) != 0)
        {
          v12 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
LABEL_20:
          v11 = *(v12 + v10);
          return v11 | ((v2 == 0) << 8);
        }
      }

      v12 = sub_24DCB5504();
      goto LABEL_20;
    }

    v7 = result;
    result = v13;
    if ((a2 & 0x1000000000000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((a2 & 0x1000000000000000) == 0)
  {
LABEL_11:
    v9 = (v7 & 0xFFFFFFFFFFFF0000) - 65532;
    LOBYTE(v4) = 1;
    goto LABEL_12;
  }

  if (v2 >= v7 >> 16)
  {
    v15 = result;
    v9 = sub_24DCB4E84();
    result = v15;
LABEL_12:
    if ((v9 & 0xC) != 4 << v4)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

  __break(1u);
  return result;
}

uint64_t sub_24DC3A2F8(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24DCB5934();
  sub_24DCB5954();
  sub_24DCB5954();
  sub_24DCB5324();
  MEMORY[0x253035590](115, 0xE100000000000000);
  __swift_mutable_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_24DCB57E4();

  return __swift_destroy_boxed_opaque_existential_1(v3);
}

const char *sub_24DC3A40C@<X0>(uint64_t *a1@<X0>, const char **a2@<X8>)
{
  result = sub_24DC3CB80(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_24DC3A438(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  return sub_24DC3A2F8(a1);
}

uint64_t sub_24DC3A478@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24DCB5914();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v15, v15[3]);
    v7 = sub_24DCB57C4();
    v8 = v6;
    v9 = v7 == 19279 && v6 == 0xE200000000000000;
    if (v9 || (sub_24DCB57A4() & 1) != 0)
    {

      v10 = sub_24DC4311C();
    }

    else if (v7 == 0x454C4C45434E4143 && v8 == 0xE900000000000044 || (sub_24DCB57A4() & 1) != 0)
    {

      v10 = sub_24DC43650();
    }

    else if (v7 == 0x4E574F4E4B4E55 && v8 == 0xE700000000000000 || (sub_24DCB57A4() & 1) != 0)
    {

      v10 = sub_24DC4365C();
    }

    else if (v7 == 0xD000000000000010 && 0x800000024DCC5420 == v8 || (sub_24DCB57A4() & 1) != 0)
    {

      v10 = sub_24DC43668();
    }

    else if (v7 == 0xD000000000000011 && 0x800000024DCC5400 == v8 || (sub_24DCB57A4() & 1) != 0)
    {

      v10 = sub_24DC43674();
    }

    else if (v7 == 0x4E554F465F544F4ELL && v8 == 0xE900000000000044 || (sub_24DCB57A4() & 1) != 0)
    {

      v10 = sub_24DC43680();
    }

    else if (v7 == 0x5F59444145524C41 && v8 == 0xEE00535453495845 || (sub_24DCB57A4() & 1) != 0)
    {

      v10 = sub_24DC4368C();
    }

    else if (v7 == 0xD000000000000011 && 0x800000024DCC53E0 == v8 || (sub_24DCB57A4() & 1) != 0)
    {

      v10 = sub_24DC43698();
    }

    else if (v7 == 0xD000000000000012 && 0x800000024DCC53C0 == v8 || (sub_24DCB57A4() & 1) != 0)
    {

      v10 = sub_24DC436A4();
    }

    else if (v7 == 0xD000000000000013 && 0x800000024DCC53A0 == v8 || (sub_24DCB57A4() & 1) != 0)
    {

      v10 = sub_24DC436B0();
    }

    else if (v7 == 0x444554524F4241 && v8 == 0xE700000000000000 || (sub_24DCB57A4() & 1) != 0)
    {

      v10 = sub_24DC436BC();
    }

    else if (v7 == 0x525F464F5F54554FLL && v8 == 0xEC00000045474E41 || (sub_24DCB57A4() & 1) != 0)
    {

      v10 = sub_24DC436C8();
    }

    else if (v7 == 0x4D454C504D494E55 && v8 == 0xED00004445544E45 || (sub_24DCB57A4() & 1) != 0)
    {

      v10 = sub_24DC436D4();
    }

    else if (v7 == 0x4C414E5245544E49 && v8 == 0xE800000000000000 || (sub_24DCB57A4() & 1) != 0)
    {

      v10 = sub_24DC436E0();
    }

    else if (v7 == 0x414C494156414E55 && v8 == 0xEB00000000454C42 || (sub_24DCB57A4() & 1) != 0)
    {

      v10 = sub_24DC436EC();
    }

    else if (v7 == 0x534F4C5F41544144 && v8 == 0xE900000000000053 || (sub_24DCB57A4() & 1) != 0)
    {

      v10 = sub_24DC436F8();
    }

    else
    {
      if (v7 == 0x4E45485455414E55 && v8 == 0xEF44455441434954)
      {
      }

      else
      {
        v14 = sub_24DCB57A4();

        if ((v14 & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      v10 = sub_24DC43704();
    }

    v11 = *v10;
    if (v11 != 17)
    {
      __swift_destroy_boxed_opaque_existential_1(v15);
      *a2 = v11;
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

LABEL_10:
    static RuntimeError.Code.invalidArgument.getter(&v16);
    sub_24DC3C254();
    swift_allocError();
    RuntimeError.init(code:message:cause:)(&v16, 0xD000000000000017, 0x800000024DCC5380, 0, v12);
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24DC3AB30(void *a1)
{
  v2 = *v1;
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24DCB5934();
  __swift_mutable_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_24DCB57E4();

  return __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t sub_24DC3AE44(unsigned __int8 *a1, unsigned __int8 a2)
{
  v16 = a2;
  v4 = *v2;
  v5 = *(*v2 + 40);
  sub_24DC3DF2C();
  v6 = sub_24DCB4D24();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    sub_24DC3DF80();
    while (1)
    {
      v15 = *(*(v4 + 48) + v8);
      if (sub_24DCB4DA4())
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    v12 = (*(v4 + 48) + v8);
  }

  else
  {
LABEL_5:
    v10 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_24DC3B1D0(v16, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    v12 = &v16;
    result = 1;
  }

  *a1 = *v12;
  return result;
}

uint64_t sub_24DC3AF78(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19EEC8, &qword_24DCB8D48);
  result = sub_24DCB54C4();
  v6 = result;
  if (*(v3 + 16))
  {
    v27 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v28 = *(*(v3 + 48) + (v15 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_24DC3DF2C();
      result = sub_24DCB4D24();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + v14) = v28;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_24DC3B1D0(uint64_t result, unint64_t a2, char a3)
{
  v16 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_24DC3AF78(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_24DC3B350();
      goto LABEL_12;
    }

    sub_24DC3B490(v5 + 1);
  }

  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_24DC3DF2C();
  result = sub_24DCB4D24();
  v9 = -1 << *(v7 + 32);
  a2 = result & ~v9;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    sub_24DC3DF80();
    do
    {
      v15 = *(*(v7 + 48) + a2);
      result = sub_24DCB4DA4();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + a2) = v16;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_24DCB5814();
  __break(1u);
  return result;
}

void *sub_24DC3B350()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19EEC8, &qword_24DCB8D48);
  v2 = *v0;
  v3 = sub_24DCB54B4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_24DC3B490(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19EEC8, &qword_24DCB8D48);
  result = sub_24DCB54C4();
  v6 = result;
  if (*(v3 + 16))
  {
    v25 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v26 = *(*(v3 + 48) + (v14 | (v7 << 6)));
      v17 = *(v6 + 40);
      sub_24DC3DF2C();
      result = sub_24DCB4D24();
      v18 = -1 << *(v6 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + v13) = v26;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v25;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

char *sub_24DC3B6B8(char *a1, int64_t a2, char a3)
{
  result = sub_24DC3B6F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24DC3B6D8(char *a1, int64_t a2, char a3)
{
  result = sub_24DC3B7EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24DC3B6F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19EED0, &qword_24DCB8D50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_24DC3B7EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19EEB0, &qword_24DCB8D40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_24DC3B8F8(__int128 *a1, uint64_t a2)
{
  v15 = a1[2];
  v16 = a1[3];
  v17 = *(a1 + 8);
  v13 = *a1;
  v14 = a1[1];
  sub_24DCB58F4();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  for (i = 0; v5; v8 ^= result)
  {
    v10 = i;
LABEL_9:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v12 = *(*(a2 + 48) + (v11 | (v10 << 6)));
    sub_24DC3DF2C();
    result = sub_24DCB4D24();
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x253035FF0](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++i;
    if (v5)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s16GRPCCoreInternal11RetryPolicyV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v14 = a1 + 8;
  v12 = *(a1 + 8);
  v13 = *(v14 + 8);
  if ((sub_24DCB5984() & 1) == 0 || (sub_24DCB5984() & 1) == 0 || v4 != v8)
  {
    return 0;
  }

  return sub_24DC35B54(v5, v9);
}

uint64_t sub_24DC3BAF8(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v20 = *a1;
  *v21 = v2;
  *&v21[16] = a1[2];
  v3 = *&v21[16];
  v4 = a2[1];
  v22 = *a2;
  v23 = v4;
  v6 = *a2;
  v5 = a2[1];
  *v24 = a2[2];
  *&v24[9] = *(a2 + 41);
  *&v21[25] = *(a1 + 41);
  v25[0] = v20;
  v25[1] = v2;
  v26[0] = v3;
  *(v26 + 9) = *&v21[25];
  v26[2] = v6;
  v26[3] = v5;
  v27[0] = a2[2];
  *(v27 + 9) = *(a2 + 41);
  if ((v21[40] & 1) == 0)
  {
    if ((v24[24] & 1) == 0)
    {
      v14 = v20;
      v15 = v2;
      v16 = *&v21[8];
      v17 = *&v21[24];
      v18 = *&v21[32];
      v12[0] = v22;
      v12[1] = v23;
      v12[2] = *v24;
      v13 = *&v24[16];
      sub_24DC3C1EC(&v22, v19);
      sub_24DC3C1EC(&v20, v19);
      sub_24DC3C1EC(&v20, v19);
      sub_24DC3C1EC(&v22, v19);
      v9 = _s16GRPCCoreInternal11RetryPolicyV2eeoiySbAC_ACtFZ_0(&v14, v12);
      sub_24DC3DFD4(v25, &qword_27F19EED8, &qword_24DCB8D58);
      sub_24DC3C224(&v22);
      sub_24DC3C224(&v20);
      return v9 & 1;
    }

    goto LABEL_8;
  }

  if ((v24[24] & 1) == 0 || v20 != v22)
  {
LABEL_8:
    sub_24DC3C1EC(&v20, v19);
    sub_24DC3C1EC(&v22, v19);
    sub_24DC3DFD4(v25, &qword_27F19EED8, &qword_24DCB8D58);
    goto LABEL_9;
  }

  v11 = *&v21[8];
  v7 = *(&v23 + 1);
  sub_24DC3C1EC(&v22, v19);
  sub_24DC3C1EC(&v20, v19);
  sub_24DC3C1EC(&v20, v19);
  sub_24DC3C1EC(&v22, v19);
  if ((sub_24DCB5984() & 1) == 0)
  {
    sub_24DC3DFD4(v25, &qword_27F19EED8, &qword_24DCB8D58);
    sub_24DC3C224(&v22);
    sub_24DC3C224(&v20);
    goto LABEL_9;
  }

  v8 = sub_24DC35B54(v11, v7);
  sub_24DC3DFD4(v25, &qword_27F19EED8, &qword_24DCB8D58);
  sub_24DC3C224(&v22);
  sub_24DC3C224(&v20);
  if ((v8 & 1) == 0)
  {
LABEL_9:
    v9 = 0;
    return v9 & 1;
  }

  v9 = 1;
  return v9 & 1;
}

uint64_t _s16GRPCCoreInternal12MethodConfigV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v35 = *(a1 + 24);
  v36 = *(a1 + 16);
  v6 = *(a1 + 32);
  v33 = *(a1 + 40);
  v37 = *(a1 + 48);
  v7 = *(a1 + 56);
  v34 = *(a1 + 64);
  v8 = *(a1 + 88);
  v62[0] = *(a1 + 72);
  v62[1] = v8;
  *v63 = *(a1 + 104);
  *&v63[9] = *(a1 + 113);
  v9 = *a2;
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  v13 = *(a2 + 32);
  v14 = *(a2 + 48);
  v30 = *(a2 + 56);
  v31 = *(a2 + 40);
  v32 = *(a2 + 64);
  v15 = *(a2 + 88);
  v64[0] = *(a2 + 72);
  v64[1] = v15;
  *v65 = *(a2 + 104);
  *&v65[9] = *(a2 + 113);
  if ((sub_24DC33FB0(v4, v9) & 1) == 0)
  {
    goto LABEL_33;
  }

  v29 = v7;
  if (v5 == 2)
  {
    if (v10 != 2)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v16 = 0;
    if (v10 == 2 || ((v10 ^ v5) & 1) != 0)
    {
      return v16 & 1;
    }
  }

  if (v6)
  {
    if ((v13 & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  else if ((v13 & 1) != 0 || (sub_24DCB5984() & 1) == 0)
  {
    goto LABEL_33;
  }

  if (v37)
  {
    v17 = v29;
    if (!v14)
    {
      goto LABEL_33;
    }
  }

  else
  {
    if (v33 == v31)
    {
      v18 = v14;
    }

    else
    {
      v18 = 1;
    }

    v17 = v29;
    if (v18)
    {
      goto LABEL_33;
    }
  }

  if (v34)
  {
    if (v32)
    {
      goto LABEL_25;
    }

LABEL_33:
    v16 = 0;
    return v16 & 1;
  }

  v19 = v32;
  if (v17 != v30)
  {
    v19 = 1;
  }

  if (v19)
  {
    goto LABEL_33;
  }

LABEL_25:
  v20 = v63[24];
  *&v61[7] = *(a2 + 72);
  *&v61[23] = *(a2 + 88);
  *&v61[39] = *(a2 + 104);
  *&v61[55] = *(a2 + 120);
  v21 = v65[24];
  if (v63[24] == 255)
  {
    if (v65[24] != 255)
    {
      sub_24DC33DDC(v62, &v54);
      sub_24DC33DDC(v64, &v54);
      goto LABEL_32;
    }

    v24 = *(a1 + 88);
    v54 = *(a1 + 72);
    v55 = v24;
    *v56 = *(a1 + 104);
    *&v56[16] = *(a1 + 120);
    v56[24] = -1;
    sub_24DC33DDC(v62, &v51);
    sub_24DC33DDC(v64, &v51);
    sub_24DC3DFD4(&v54, &qword_27F19EDB0, &qword_24DCB80B0);
    v16 = 1;
  }

  else
  {
    v22 = *(a1 + 104);
    *&v56[16] = *(a1 + 120);
    v23 = *(a1 + 88);
    v54 = *(a1 + 72);
    v55 = v23;
    *v56 = v22;
    v56[24] = v63[24];
    v51 = v54;
    v52 = v23;
    v53[0] = v22;
    *(v53 + 9) = *&v56[9];
    if (v65[24] == 255)
    {
      v48 = v54;
      v49 = v55;
      v50[0] = *v56;
      *(v50 + 9) = *&v56[9];
      sub_24DC33DDC(v62, v46);
      sub_24DC33DDC(v64, v46);
      sub_24DC33DDC(&v54, v46);
      sub_24DC3E034(&v48);
LABEL_32:
      v27 = *(a1 + 88);
      v54 = *(a1 + 72);
      v55 = v27;
      *v56 = *(a1 + 104);
      *&v56[16] = *(a1 + 120);
      v56[24] = v20;
      v57 = *v61;
      v58 = *&v61[16];
      *v59 = *&v61[32];
      *&v59[15] = *&v61[47];
      v60 = v21;
      sub_24DC3DFD4(&v54, &qword_27F19EEE0, &unk_24DCB8D60);
      goto LABEL_33;
    }

    v25 = *(a2 + 88);
    v38 = *(a2 + 72);
    v39 = v25;
    *v40 = *(a2 + 104);
    v44[0] = v54;
    v44[1] = v55;
    v45[0] = *v56;
    *(v45 + 9) = *&v56[9];
    v41 = v54;
    v42 = v55;
    *&v40[16] = *(a2 + 120);
    *v43 = *v56;
    *&v43[9] = *&v56[9];
    v40[24] = v65[24];
    sub_24DC33DDC(v62, &v48);
    sub_24DC33DDC(v64, &v48);
    sub_24DC33DDC(&v54, &v48);
    sub_24DC3C1EC(v44, &v48);
    v16 = sub_24DC3BAF8(&v41, &v38);
    v46[0] = v38;
    v46[1] = v39;
    v47[0] = *v40;
    *(v47 + 9) = *&v40[9];
    sub_24DC3C224(v46);
    v48 = v41;
    v49 = v42;
    v50[0] = *v43;
    *(v50 + 9) = *&v43[9];
    sub_24DC3C224(&v48);
    v38 = v51;
    v39 = v52;
    *v40 = v53[0];
    *&v40[9] = *(v53 + 9);
    sub_24DC3E034(&v38);
    v26 = *(a1 + 88);
    v41 = *(a1 + 72);
    v42 = v26;
    *v43 = *(a1 + 104);
    *&v43[16] = *(a1 + 120);
    v43[24] = v20;
    sub_24DC3DFD4(&v41, &qword_27F19EDB0, &qword_24DCB80B0);
  }

  return v16 & 1;
}

unint64_t sub_24DC3C254()
{
  result = qword_27F19EDB8;
  if (!qword_27F19EDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19EDB8);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_24DC3C2EC()
{
  result = qword_27F19FF10;
  if (!qword_27F19FF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19FF10);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_24DC3C38C()
{
  result = qword_27F19EDD8;
  if (!qword_27F19EDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19EDD8);
  }

  return result;
}

unint64_t sub_24DC3C3E0()
{
  result = qword_27F19EDE0;
  if (!qword_27F19EDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19EDE0);
  }

  return result;
}

unint64_t sub_24DC3C434()
{
  result = qword_27F19EDE8;
  if (!qword_27F19EDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19EDE8);
  }

  return result;
}

unint64_t sub_24DC3C488()
{
  result = qword_27F19EDF0;
  if (!qword_27F19EDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19EDF0);
  }

  return result;
}

uint64_t sub_24DC3C544(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19EDC8, &qword_24DCB80C0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24DC3C5BC()
{
  result = qword_27F19EE08;
  if (!qword_27F19EE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19EE08);
  }

  return result;
}

unint64_t sub_24DC3C610()
{
  result = qword_27F19EE10;
  if (!qword_27F19EE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19EE10);
  }

  return result;
}

unint64_t sub_24DC3C664()
{
  result = qword_27F19EE18;
  if (!qword_27F19EE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19EE18);
  }

  return result;
}

unint64_t sub_24DC3C6B8()
{
  result = qword_27F19EE20;
  if (!qword_27F19EE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19EE20);
  }

  return result;
}

unint64_t sub_24DC3C70C()
{
  result = qword_27F19FF18;
  if (!qword_27F19FF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19FF18);
  }

  return result;
}

unint64_t sub_24DC3C760()
{
  result = qword_27F19FF20;
  if (!qword_27F19FF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19FF20);
  }

  return result;
}

unint64_t sub_24DC3C7B4()
{
  result = qword_27F19EE48;
  if (!qword_27F19EE48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19EE40, &qword_24DCB80E8);
    sub_24DC3C838();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19EE48);
  }

  return result;
}

unint64_t sub_24DC3C838()
{
  result = qword_27F19EE50;
  if (!qword_27F19EE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19EE50);
  }

  return result;
}

uint64_t sub_24DC3C88C()
{
  v0 = sub_24DCB5634();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_24DC3C8D8()
{
  v0 = sub_24DCB5634();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_24DC3C924(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_24DC3DF2C();
  result = MEMORY[0x253035A80](v2, &type metadata for Status.Code, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_24DC3AE44(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_24DC3C998()
{
  result = qword_27F19EE68;
  if (!qword_27F19EE68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19EE60, &qword_24DCBBC90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19EE68);
  }

  return result;
}

unint64_t sub_24DC3CA14()
{
  result = qword_27F19FF28[0];
  if (!qword_27F19FF28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F19FF28);
  }

  return result;
}

uint64_t sub_24DC3CA68()
{
  v0 = sub_24DCB5634();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_24DC3CAB4(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v1 = result;
  result = sub_24DCB4E24();
  if (__OFSUB__(result, v1))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_24DCB4E44();

  return sub_24DCB4EF4();
}

const char *sub_24DC3CB80(uint64_t *a1)
{
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24DCB5914();
  if (v1)
  {
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(v13, v13[3]);
  v5 = sub_24DCB57C4();
  if ((sub_24DC3A15C(v5, v6) & 0x1FF) != 0x73)
  {

LABEL_13:
    static RuntimeError.Code.invalidArgument.getter(&v14);
    v4 = "INVALID_ARGUMENT";
    sub_24DC3C254();
    swift_allocError();
    RuntimeError.init(code:message:cause:)(&v14, 0xD000000000000020, 0x800000024DCC5440, 0, v12);
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(v13);
LABEL_15:
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v4;
  }

  sub_24DC3CAB4(1);

  *&result = COERCE_DOUBLE(sub_24DCB5334());
  if (v8)
  {
    goto LABEL_13;
  }

  v9 = floor(*&result);
  if (v9 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v9 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v10 = (*&result - v9) * 1.0e18;
  v11 = COERCE_UNSIGNED_INT64(fabs(v10)) > 0x7FEFFFFFFFFFFFFFLL;
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v11)
  {
    goto LABEL_19;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v10 < 9.22337204e18)
  {
    v4 = sub_24DCB5964();
    __swift_destroy_boxed_opaque_existential_1(v13);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v4;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

unint64_t sub_24DC3CE08()
{
  result = qword_27F19EE80;
  if (!qword_27F19EE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19EE80);
  }

  return result;
}

unint64_t sub_24DC3CE60()
{
  result = qword_27F19EE88;
  if (!qword_27F19EE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19EE88);
  }

  return result;
}

unint64_t sub_24DC3CEB8()
{
  result = qword_27F19EE90;
  if (!qword_27F19EE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19EE90);
  }

  return result;
}

unint64_t sub_24DC3CF10()
{
  result = qword_27F19EE98;
  if (!qword_27F19EE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19EE98);
  }

  return result;
}

unint64_t sub_24DC3CF68()
{
  result = qword_27F19EEA0;
  if (!qword_27F19EEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19EEA0);
  }

  return result;
}

unint64_t sub_24DC3CFC0()
{
  result = qword_27F19EEA8;
  if (!qword_27F19EEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19EEA8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16GRPCCoreInternal18RPCExecutionPolicyVSg(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy129_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_24DC3D068(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 129))
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

uint64_t sub_24DC3D0B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 129) = 1;
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

    *(result + 129) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24DC3D124(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_24DC3D16C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_24DC3D1EC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 57))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 56);
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

uint64_t sub_24DC3D238(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
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

uint64_t sub_24DC3D2C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24DC3D30C(uint64_t result, int a2, int a3)
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

uint64_t sub_24DC3D368(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_24DC3D3B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for GoogleProtobufDuration(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for GoogleProtobufDuration(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for GoogleRPCCode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GoogleRPCCode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HedgingPolicy.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HedgingPolicy.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RetryPolicy.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RetryPolicy.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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