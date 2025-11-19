void sub_24DCA44F0()
{
  sub_24DCA455C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_24DCA455C()
{
  if (!qword_27F19F2D8)
  {
    v0 = sub_24DCB51F4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F19F2D8);
    }
  }
}

uint64_t sub_24DCA45B0()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_24DCA45E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24DC2FD00;

  return sub_24DC53800(a1, v5);
}

uint64_t sub_24DCA46B0(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_24DC334F4;

  return sub_24DCA2CF0(a1, a2, v7, v9, v8, v6);
}

uint64_t sub_24DCA4778()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_24DCA47B8(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24DC334F4;

  return sub_24DCA3768(a1, v7, v8, v5, v6, v4);
}

uint64_t sub_24DCA486C()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F2C0, &qword_24DCBD750) - 8);
  v2 = (*(*v1 + 80) + 40) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F2C8, &qword_24DCBD760);
  (*(*(v5 - 8) + 8))(v0 + v2, v5);
  v6 = v1[14];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F2D0, &qword_24DCBD768);
  (*(*(v7 - 8) + 8))(v0 + v2 + v6, v7);

  return swift_deallocObject();
}

uint64_t sub_24DCA49B0(uint64_t a1)
{
  v4 = *(v1 + 32);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F2C0, &qword_24DCBD750) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24DC334F4;

  return sub_24DCA39EC(a1, v7, v8, v1 + v6, v4);
}

uint64_t sub_24DCA4AA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void *sub_24DCA4B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12)
{
  v13 = *(a1 + 8);
  v14 = *(a1 + 24);

  v15 = *(a9 - 8);
  v16 = (*(v15 + 80) + 80) & ~*(v15 + 80);
  v17 = *(a10 - 8);
  v18 = (v16 + *(v15 + 64) + *(v17 + 80)) & ~*(v17 + 80);
  v19 = (*(v17 + 64) + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = a6;
  *(v20 + 24) = a7;
  *(v20 + 32) = a8;
  *(v20 + 40) = a9;
  *(v20 + 48) = a10;
  *(v20 + 56) = a11;
  *(v20 + 72) = a12;
  (*(v15 + 32))(v20 + v16, a2, a9);
  (*(v17 + 32))(v20 + v18, a3, a10);
  v21 = (v20 + v19);
  *v21 = a4;
  v21[1] = a5;
  return &unk_24DCBD868;
}

uint64_t sub_24DCA4D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v11 = swift_task_alloc();
  *(v10 + 16) = v11;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  *v11 = v10;
  v11[1] = sub_24DC334F4;

  return sub_24DC76ED8(a2, a1, a4, a5, a3, a6, a7, a9);
}

uint64_t sub_24DCA4E68()
{
  v1 = *(v0 + 48);
  v2 = *(*(v0 + 40) - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  v4 = *(v1 - 8);
  v5 = (v3 + *(v2 + 64) + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3);
  (*(v4 + 8))(v0 + v5, v1);
  v7 = *(v0 + v6 + 8);

  return swift_deallocObject();
}

uint64_t sub_24DCA4F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v26 = *(v9 + 16);
  v23 = *(v9 + 24);
  v12 = *(v9 + 32);
  v11 = *(v9 + 40);
  v13 = *(v9 + 48);
  v22 = *(v9 + 56);
  v14 = *(v9 + 72);
  v15 = (*(*(v11 - 8) + 80) + 80) & ~*(*(v11 - 8) + 80);
  v16 = (v15 + *(*(v11 - 8) + 64) + *(*(v13 - 8) + 80)) & ~*(*(v13 - 8) + 80);
  v17 = (v9 + ((*(*(v13 - 8) + 64) + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  v18 = *v17;
  v19 = v17[1];
  v20 = swift_task_alloc();
  *(v10 + 16) = v20;
  *v20 = v10;
  v20[1] = sub_24DC2FD00;

  return sub_24DCA4D18(a1, a2, a3, v9 + v15, v9 + v16, v18, v19, v26, a9);
}

uint64_t sub_24DCA5138(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v11 = (a4 + *a4);
  v8 = a4[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_24DC2FD00;

  return v11(a1, a2, a3);
}

uint64_t RPCRouter.init()@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for RPCRouter.RPCHandler();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19F2E8, &qword_24DCBD878);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  swift_getTupleTypeMetadata2();
  v3 = sub_24DCB4FF4();
  v4 = sub_24DC9CDEC();
  v5 = sub_24DCA68F8(v3, &type metadata for MethodDescriptor, TupleTypeMetadata2, v4);

  *a1 = v5;
  return result;
}

uint64_t RPCRouter.methods.getter(uint64_t a1)
{
  v2 = *v1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  type metadata accessor for RPCRouter.RPCHandler();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19F2E8, &qword_24DCBD878);
  swift_getTupleTypeMetadata2();
  sub_24DC9CDEC();
  sub_24DCB4CC4();

  swift_getWitnessTable();
  return sub_24DCB50B4();
}

uint64_t RPCRouter.count.getter(uint64_t a1)
{
  v2 = *v1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  type metadata accessor for RPCRouter.RPCHandler();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19F2E8, &qword_24DCBD878);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6 = sub_24DC9CDEC();

  return MEMORY[0x2821FB858](v2, &type metadata for MethodDescriptor, TupleTypeMetadata2, v6);
}

Swift::Bool __swiftcall RPCRouter.hasHandler(forMethod:)(GRPCCoreInternal::MethodDescriptor forMethod)
{
  v8 = *forMethod.service.fullyQualifiedService._countAndFlagsBits;
  v2 = *(forMethod.service.fullyQualifiedService._countAndFlagsBits + 16);
  v3 = *(forMethod.service.fullyQualifiedService._countAndFlagsBits + 24);
  v4 = *v1;
  v6 = *(forMethod.service.fullyQualifiedService._object + 2);
  v5 = *(forMethod.service.fullyQualifiedService._object + 3);
  type metadata accessor for RPCRouter.RPCHandler();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19F2E8, &qword_24DCBD878);
  swift_getTupleTypeMetadata2();
  sub_24DC9CDEC();
  sub_24DCB4CC4();
  swift_getWitnessTable();
  sub_24DC8814C();
  return sub_24DCB4F74() & 1;
}

uint64_t RPCRouter.registerHandler<A, B, C, D>(forMethod:deserializer:serializer:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v39 = a8;
  v37 = a4;
  v38 = a7;
  v33 = a3;
  v14 = *(a10 - 8);
  v15 = *(v14 + 64);
  v35 = a12;
  v36 = a11;
  v16 = MEMORY[0x28223BE20](a1);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(*(a9 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v16);
  v22 = &v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *v20;
  v24 = v20[1];
  v25 = v20[3];
  v34 = v20[2];
  v43 = v23;
  v44 = v24;
  v45 = v34;
  v46 = v25;
  (*(v26 + 16))(v22);
  (*(v14 + 16))(v18, v33, a10);
  v27 = *(a6 + 16);
  v28 = *(a6 + 24);

  *&v31 = v28;
  *(&v31 + 1) = v36;
  sub_24DCA4B5C(&v43, v22, v18, v37, a5, v27, v38, v39, a9, a10, v31, v35);
  v40 = &unk_24DCBD868;
  v41 = v29;
  v42 = MEMORY[0x277D84F90];
  v43 = v23;
  v44 = v24;
  v45 = v34;
  v46 = v25;
  type metadata accessor for RPCRouter.RPCHandler();

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19F2E8, &qword_24DCBD878);
  swift_getTupleTypeMetadata2();
  sub_24DC9CDEC();
  sub_24DCB4CE4();
  return sub_24DCB4D14();
}

Swift::Bool __swiftcall RPCRouter.removeHandler(forMethod:)(GRPCCoreInternal::MethodDescriptor forMethod)
{
  v4 = *forMethod.service.fullyQualifiedService._countAndFlagsBits;
  v5 = *(forMethod.service.fullyQualifiedService._countAndFlagsBits + 16);
  v6 = *(forMethod.service.fullyQualifiedService._countAndFlagsBits + 24);
  v2 = *(forMethod.service.fullyQualifiedService._object + 2);
  v1 = *(forMethod.service.fullyQualifiedService._object + 3);
  type metadata accessor for RPCRouter.RPCHandler();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19F2E8, &qword_24DCBD878);
  swift_getTupleTypeMetadata2();
  sub_24DC9CDEC();
  sub_24DCB4CE4();
  sub_24DCB4CB4();
  if (v7)
  {
    sub_24DCA6BE4(v7);
  }

  return v7 != 0;
}

Swift::Void __swiftcall RPCRouter.registerInterceptors(pipeline:)(Swift::OpaquePointer pipeline)
{
  v4 = *v2;
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  type metadata accessor for RPCRouter.RPCHandler();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19F2E8, &qword_24DCBD878);
  swift_getTupleTypeMetadata2();
  sub_24DC9CDEC();
  v7 = v4 + 64;
  v8 = 1 << *(v4 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = (v8 + 63) >> 6;
  rawValue = pipeline._rawValue;
  v44 = v4;
  v11 = pipeline._rawValue + 32;
  v12 = v9 & *(v4 + 64);
  v40 = v11;

  v13 = 0;
  v41 = v10;
  v42 = v4 + 64;
  while (v12)
  {
LABEL_11:
    v45 = v12;
    v15 = (*(v44 + 48) + ((v13 << 11) | (32 * __clz(__rbit64(v12)))));
    v16 = *v15;
    v17 = v15[1];
    v19 = v15[2];
    v18 = v15[3];
    v20 = rawValue[2];

    if (v20)
    {
      v21 = v40;
      v22 = MEMORY[0x277D84F90];
      v46 = v16;
      do
      {
        sub_24DCA6C28(v21, v57);
        *&v53 = v16;
        *(&v53 + 1) = v17;
        *&v54 = v19;
        *(&v54 + 1) = v18;
        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F270, &qword_24DCBD880);
        if (sub_24DCA0190(&v53, v23))
        {
          v53 = v57[0];
          v54 = v57[1];
          v55 = v57[2];
          v56 = v58;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v49 = v22;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_24DC92774(0, *(v22 + 16) + 1, 1);
            v22 = v49;
          }

          v26 = *(v22 + 16);
          v25 = *(v22 + 24);
          if (v26 >= v25 >> 1)
          {
            sub_24DC92774((v25 > 1), v26 + 1, 1);
            v22 = v49;
          }

          *(v22 + 16) = v26 + 1;
          v27 = v22 + 56 * v26;
          v28 = v53;
          v29 = v54;
          v30 = v55;
          *(v27 + 80) = v56;
          *(v27 + 48) = v29;
          *(v27 + 64) = v30;
          *(v27 + 32) = v28;
          v16 = v46;
        }

        else
        {
          sub_24DCA6C98(v57);
        }

        v21 += 56;
        --v20;
      }

      while (v20);
    }

    else
    {
      v22 = MEMORY[0x277D84F90];
    }

    v12 = (v45 - 1) & v45;
    if (*(v22 + 16))
    {
      v49 = v16;
      v50 = v17;
      v51 = v19;
      v52 = v18;
      sub_24DCB4CE4();
      v32 = sub_24DCB4CF4();
      if (*v31)
      {
        v33 = v31;
        v34 = *(v22 + 16);
        if (v34)
        {
          v47 = MEMORY[0x277D84F90];
          sub_24DCA6790(0, v34, 0);
          v35 = v47;
          v36 = v22 + 32;
          do
          {
            sub_24DCA6C28(v36, v57);
            sub_24DC5B208(v57, &v53);
            sub_24DCA6C98(v57);
            v38 = *(v47 + 16);
            v37 = *(v47 + 24);
            if (v38 >= v37 >> 1)
            {
              sub_24DCA6790((v37 > 1), v38 + 1, 1);
            }

            *(v47 + 16) = v38 + 1;
            sub_24DC5B2AC(&v53, v47 + 40 * v38 + 32);
            v36 += 56;
            --v34;
          }

          while (v34);

          v12 = (v45 - 1) & v45;
        }

        else
        {

          v35 = MEMORY[0x277D84F90];
        }

        v39 = v33[2];
        v33[2] = v35;
      }

      else
      {
      }

      v32(v48, 0);
    }

    else
    {
    }

    v10 = v41;
    v7 = v42;
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v10)
    {

      return;
    }

    v12 = *(v7 + 8 * v14);
    ++v13;
    if (v12)
    {
      v13 = v14;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_24DCA5CB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a1;
  v4[11] = a2;
  v4[12] = *(a3 + 24);
  v4[13] = *(a3 + 16);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5 = type metadata accessor for RPCResponsePart();
  v4[14] = v5;
  v6 = *(v5 - 8);
  v4[15] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v9 = *v3;
  v4[16] = v8;
  v4[17] = v9;

  return MEMORY[0x2822009F8](sub_24DCA5DE0, 0, 0);
}

uint64_t sub_24DCA5DE0()
{
  v1 = v0[10];
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  v0[2] = *v1;
  v5 = v0[17];
  v7 = v0[12];
  v6 = v0[13];
  v0[3] = v2;
  v0[4] = v3;
  v0[5] = v4;
  type metadata accessor for RPCRouter.RPCHandler();

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19F2E8, &qword_24DCBD878);
  swift_getTupleTypeMetadata2();
  sub_24DC9CDEC();
  sub_24DCB4D04();
  v8 = v0[3];
  v9 = v0[5];

  v10 = v0[6];
  if (v10)
  {
    v12 = v0[7];
    v11 = v0[8];
    v0[18] = v11;
    v0[19] = v12;
    v13 = swift_task_alloc();
    v0[20] = v13;
    *v13 = v0;
    v13[1] = sub_24DCA6050;
    v15 = v0[10];
    v14 = v0[11];

    return sub_24DCA5138(v15, v14, v11, v10);
  }

  else
  {
    v17 = v0[10];
    if (qword_27F1A7B50 != -1)
    {
      swift_once();
    }

    v18 = v0[16];
    v19 = v0[14];
    v20 = qword_27F1A7B58;

    Metadata.init(dictionaryLiteral:)(MEMORY[0x277D84F90]);
    v21 = v0[9];
    *v18 = v20;
    v18[1] = v21;
    swift_storeEnumTagMultiPayload();
    v22 = swift_task_alloc();
    v0[21] = v22;
    v0[22] = type metadata accessor for RPCWriter.Closable();
    *v22 = v0;
    v22[1] = sub_24DCA61D0;
    v23 = v0[16];

    return RPCWriter.Closable.write(_:)(v23);
  }
}

uint64_t sub_24DCA6050()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 144);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24DCA6168, 0, 0);
}

uint64_t sub_24DCA6168()
{
  v1 = v0[19];

  v2 = v0[16];

  v3 = v0[1];

  return v3();
}

uint64_t sub_24DCA61D0()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;

  if (v0)
  {
    v6 = v2[15];
    v5 = v2[16];
    v7 = v2[14];
    MEMORY[0x2530363B0](v0);
    (*(v6 + 8))(v5, v7);

    return MEMORY[0x2822009F8](sub_24DCA64A4, 0, 0);
  }

  else
  {
    (*(v2[15] + 8))(v2[16], v2[14]);
    v8 = v2[10];
    v9 = swift_task_alloc();
    v2[23] = v9;
    *v9 = v4;
    v9[1] = sub_24DCA6394;
    v10 = v2[22];

    return RPCWriter.Closable.finish()();
  }
}

uint64_t sub_24DCA6394()
{
  v1 = *v0;
  v2 = *(*v0 + 184);
  v6 = *v0;

  v3 = *(v1 + 128);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_24DCA64A4()
{
  v1 = v0[10];
  v2 = swift_task_alloc();
  v0[23] = v2;
  *v2 = v0;
  v2[1] = sub_24DCA6394;
  v3 = v0[22];

  return RPCWriter.Closable.finish()();
}

unint64_t sub_24DCA65AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 40);
  v9 = sub_24DCB4D24();

  return sub_24DCA6608(a1, v9, a2, a3);
}

unint64_t sub_24DCA6608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a1;
  v24 = a4;
  v6 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v23[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v7 + 16);
    v14 = v7 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v25 + 48) + v17 * v12, a3);
      v20 = *(v24 + 8);
      v21 = sub_24DCB4DA4();
      (*v18)(v9, a3);
      if (v21)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v23[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

void *sub_24DCA6790(void *a1, int64_t a2, char a3)
{
  result = sub_24DCA67B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24DCA67B0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F2F0, &qword_24DCBD948);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F260, &qword_24DCBCA50);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_24DCA68F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_24DCB5034())
  {
    sub_24DCB5624();
    v13 = sub_24DCB5614();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  result = sub_24DCB5034();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_24DCB5024())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_24DCB54F4();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_24DCA65AC(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t sub_24DCA6BE4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_24DCA6C28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F270, &qword_24DCBD880);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24DCA6C98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F270, &qword_24DCBD880);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24DCA6D00()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24DCA6D54()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t ServiceConfig.methodConfig.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t ServiceConfig.loadBalancingConfig.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

void sub_24DCA6E38(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

__n128 ServiceConfig.retryThrottling.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[2].n128_u8[0];
  result = v1[1];
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 ServiceConfig.retryThrottling.setter(__n128 *a1)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  v1[1] = *a1;
  v1[2].n128_u8[0] = v2;
  return result;
}

void __swiftcall ServiceConfig.init(methodConfig:loadBalancingConfig:retryThrottling:)(GRPCCoreInternal::ServiceConfig *__return_ptr retstr, Swift::OpaquePointer methodConfig, Swift::OpaquePointer loadBalancingConfig, GRPCCoreInternal::ServiceConfig::RetryThrottling_optional retryThrottling)
{
  v4 = *(retryThrottling.value.maxTokens + 16);
  retstr->methodConfig = methodConfig;
  retstr->loadBalancingConfig = loadBalancingConfig;
  retstr->retryThrottling.value = *retryThrottling.value.maxTokens;
  retstr->retryThrottling.is_nil = v4;
}

uint64_t sub_24DCA6EAC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v65 = v2;
  v66 = v3;
  v5 = a1 + 32;
  v6 = a2 + 32;
  for (i = v4 - 1; ; --i)
  {
    v8 = *(v5 + 80);
    v9 = *(v5 + 112);
    v50 = *(v5 + 96);
    v51 = v9;
    v10 = *(v5 + 16);
    v11 = *(v5 + 48);
    v46 = *(v5 + 32);
    v47 = v11;
    v12 = *(v5 + 48);
    v13 = *(v5 + 80);
    v48 = *(v5 + 64);
    v49 = v13;
    v14 = *(v5 + 16);
    v45[0] = *v5;
    v45[1] = v14;
    v15 = *(v5 + 112);
    v42 = v50;
    v43 = v15;
    v38 = v46;
    v39 = v12;
    v40 = v48;
    v41 = v8;
    v36 = v45[0];
    v37 = v10;
    v16 = *(v6 + 80);
    v17 = *(v6 + 112);
    v58 = *(v6 + 96);
    v59 = v17;
    v18 = *(v6 + 16);
    v19 = *(v6 + 48);
    v54 = *(v6 + 32);
    v55 = v19;
    v20 = *(v6 + 48);
    v21 = *(v6 + 80);
    v56 = *(v6 + 64);
    v57 = v21;
    v22 = *(v6 + 16);
    v53[0] = *v6;
    v53[1] = v22;
    v23 = *(v6 + 112);
    v33 = v58;
    v34 = v23;
    v29 = v54;
    v30 = v20;
    v31 = v56;
    v32 = v16;
    v52 = *(v5 + 128);
    v44 = *(v5 + 128);
    v60 = *(v6 + 128);
    v35 = *(v6 + 128);
    v27 = v53[0];
    v28 = v18;
    sub_24DC3C4DC(v45, v26);
    sub_24DC3C4DC(v53, v26);
    sub_24DC3CE60();
    v24 = sub_24DCB4DA4();
    v61[6] = v33;
    v61[7] = v34;
    v62 = v35;
    v61[2] = v29;
    v61[3] = v30;
    v61[4] = v31;
    v61[5] = v32;
    v61[0] = v27;
    v61[1] = v28;
    sub_24DC3C514(v61);
    v63[6] = v42;
    v63[7] = v43;
    v64 = v44;
    v63[2] = v38;
    v63[3] = v39;
    v63[4] = v40;
    v63[5] = v41;
    v63[0] = v36;
    v63[1] = v37;
    sub_24DC3C514(v63);
    if ((v24 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 136;
    v5 += 136;
  }

  return 1;
}

uint64_t sub_24DCA7090(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3++;
      v5 = v6;
      v7 = *v4;
      if (v6 == 3)
      {
        if (v7 != 3)
        {
          return 0;
        }
      }

      else
      {
        if (v7 == 3)
        {
          return 0;
        }

        if (v5 == 2)
        {
          if (v7 != 2)
          {
            return 0;
          }
        }

        else if (v7 == 2 || ((v7 ^ v5) & 1) != 0)
        {
          return 0;
        }
      }

      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t ServiceConfig.hash(into:)(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = *(v1 + 32);
  MEMORY[0x253035FF0](*(*v1 + 16));
  v8 = *(v4 + 16);
  if (v8)
  {
    v9 = (v4 + 32);
    do
    {
      v18[0] = *v9;
      v10 = v9[1];
      v11 = v9[2];
      v12 = v9[4];
      v18[3] = v9[3];
      v18[4] = v12;
      v18[1] = v10;
      v18[2] = v11;
      v13 = v9[5];
      v14 = v9[6];
      v15 = v9[7];
      v19 = *(v9 + 128);
      v18[6] = v14;
      v18[7] = v15;
      v18[5] = v13;
      memmove(__dst, v9, 0x81uLL);
      sub_24DC3C4DC(v18, v20);
      sub_24DC4979C();
      sub_24DCB4D34();
      v20[6] = __dst[6];
      v20[7] = __dst[7];
      v21 = v23;
      v20[2] = __dst[2];
      v20[3] = __dst[3];
      v20[4] = __dst[4];
      v20[5] = __dst[5];
      v20[0] = __dst[0];
      v20[1] = __dst[1];
      sub_24DC3C514(v20);
      v9 = (v9 + 136);
      --v8;
    }

    while (v8);
  }

  sub_24DCAA144(a1, v3);
  if (v7)
  {
    return sub_24DCB58C4();
  }

  sub_24DCB58C4();
  MEMORY[0x253035FF0](v5);
  if ((v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v17 = v6;
  }

  else
  {
    v17 = 0;
  }

  return MEMORY[0x253036020](v17);
}

uint64_t ServiceConfig.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_24DCB58A4();
  MEMORY[0x253035FF0](*(v2 + 16));
  v6 = *(v2 + 16);
  if (v6)
  {
    v7 = (v2 + 32);
    do
    {
      v16[0] = *v7;
      v8 = v7[1];
      v9 = v7[2];
      v10 = v7[4];
      v16[3] = v7[3];
      v16[4] = v10;
      v16[1] = v8;
      v16[2] = v9;
      v11 = v7[5];
      v12 = v7[6];
      v13 = v7[7];
      v17 = *(v7 + 128);
      v16[6] = v12;
      v16[7] = v13;
      v16[5] = v11;
      memmove(__dst, v7, 0x81uLL);
      sub_24DC3C4DC(v16, v18);
      sub_24DC4979C();
      sub_24DCB4D34();
      v18[6] = __dst[6];
      v18[7] = __dst[7];
      v19 = v21;
      v18[2] = __dst[2];
      v18[3] = __dst[3];
      v18[4] = __dst[4];
      v18[5] = __dst[5];
      v18[0] = __dst[0];
      v18[1] = __dst[1];
      sub_24DC3C514(v18);
      v7 = (v7 + 136);
      --v6;
    }

    while (v6);
  }

  sub_24DCAA144(v22, v1);
  if (v5)
  {
    sub_24DCB58C4();
  }

  else
  {
    sub_24DCB58C4();
    MEMORY[0x253035FF0](v3);
    if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v14 = v4;
    }

    else
    {
      v14 = 0;
    }

    MEMORY[0x253036020](v14);
  }

  return sub_24DCB58F4();
}

uint64_t sub_24DCA73D8(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = *(v1 + 32);
  MEMORY[0x253035FF0](*(*v1 + 16));
  v8 = *(v4 + 16);
  if (v8)
  {
    v9 = (v4 + 32);
    do
    {
      v18[0] = *v9;
      v10 = v9[1];
      v11 = v9[2];
      v12 = v9[4];
      v18[3] = v9[3];
      v18[4] = v12;
      v18[1] = v10;
      v18[2] = v11;
      v13 = v9[5];
      v14 = v9[6];
      v15 = v9[7];
      v19 = *(v9 + 128);
      v18[6] = v14;
      v18[7] = v15;
      v18[5] = v13;
      memmove(__dst, v9, 0x81uLL);
      sub_24DC3C4DC(v18, v20);
      sub_24DC4979C();
      sub_24DCB4D34();
      v20[6] = __dst[6];
      v20[7] = __dst[7];
      v21 = v23;
      v20[2] = __dst[2];
      v20[3] = __dst[3];
      v20[4] = __dst[4];
      v20[5] = __dst[5];
      v20[0] = __dst[0];
      v20[1] = __dst[1];
      sub_24DC3C514(v20);
      v9 = (v9 + 136);
      --v8;
    }

    while (v8);
  }

  sub_24DCAA144(a1, v3);
  if (v7)
  {
    return sub_24DCB58C4();
  }

  sub_24DCB58C4();
  MEMORY[0x253035FF0](v5);
  if ((v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v17 = v6;
  }

  else
  {
    v17 = 0;
  }

  return MEMORY[0x253036020](v17);
}

uint64_t sub_24DCA7530()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_24DCB58A4();
  MEMORY[0x253035FF0](*(v2 + 16));
  v6 = *(v2 + 16);
  if (v6)
  {
    v7 = (v2 + 32);
    do
    {
      v16[0] = *v7;
      v8 = v7[1];
      v9 = v7[2];
      v10 = v7[4];
      v16[3] = v7[3];
      v16[4] = v10;
      v16[1] = v8;
      v16[2] = v9;
      v11 = v7[5];
      v12 = v7[6];
      v13 = v7[7];
      v17 = *(v7 + 128);
      v16[6] = v12;
      v16[7] = v13;
      v16[5] = v11;
      memmove(__dst, v7, 0x81uLL);
      sub_24DC3C4DC(v16, v18);
      sub_24DC4979C();
      sub_24DCB4D34();
      v18[6] = __dst[6];
      v18[7] = __dst[7];
      v19 = v21;
      v18[2] = __dst[2];
      v18[3] = __dst[3];
      v18[4] = __dst[4];
      v18[5] = __dst[5];
      v18[0] = __dst[0];
      v18[1] = __dst[1];
      sub_24DC3C514(v18);
      v7 = (v7 + 136);
      --v6;
    }

    while (v6);
  }

  sub_24DCAA144(v22, v1);
  if (v5)
  {
    sub_24DCB58C4();
  }

  else
  {
    sub_24DCB58C4();
    MEMORY[0x253035FF0](v3);
    if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v14 = v4;
    }

    else
    {
      v14 = 0;
    }

    MEMORY[0x253036020](v14);
  }

  return sub_24DCB58F4();
}

uint64_t sub_24DCA768C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000013;
  v4 = 0x800000024DCC61E0;
  if (v2 == 1)
  {
    v5 = 0x800000024DCC61E0;
  }

  else
  {
    v3 = 0x7268547972746572;
    v5 = 0xEF676E696C74746FLL;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x6F43646F6874656DLL;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xEC0000006769666ELL;
  }

  v8 = 0xD000000000000013;
  if (*a2 != 1)
  {
    v8 = 0x7268547972746572;
    v4 = 0xEF676E696C74746FLL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6F43646F6874656DLL;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEC0000006769666ELL;
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

uint64_t sub_24DCA77A4()
{
  v1 = *v0;
  sub_24DCB58A4();
  sub_24DCB4D44();

  return sub_24DCB58F4();
}

uint64_t sub_24DCA7860()
{
  *v0;
  *v0;
  sub_24DCB4D44();
}

uint64_t sub_24DCA7908()
{
  v1 = *v0;
  sub_24DCB58A4();
  sub_24DCB4D44();

  return sub_24DCB58F4();
}

uint64_t sub_24DCA79C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_24DCAB49C();
  *a2 = result;
  return result;
}

void sub_24DCA79F0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC0000006769666ELL;
  v4 = 0x800000024DCC61E0;
  v5 = 0xD000000000000013;
  if (v2 != 1)
  {
    v5 = 0x7268547972746572;
    v4 = 0xEF676E696C74746FLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6F43646F6874656DLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_24DCA7A68()
{
  v1 = 0xD000000000000013;
  if (*v0 != 1)
  {
    v1 = 0x7268547972746572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F43646F6874656DLL;
  }
}

uint64_t sub_24DCA7ADC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24DCAB49C();
  *a1 = result;
  return result;
}

uint64_t sub_24DCA7B04(uint64_t a1)
{
  v2 = sub_24DCAA2D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24DCA7B40(uint64_t a1)
{
  v2 = sub_24DCAA2D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ServiceConfig.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F2F8, &qword_24DCBD950);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24DCAA2D8();
  sub_24DCB5924();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F300, &qword_24DCBD958);
  v21 = 0;
  sub_24DCAA4A0(&qword_27F19F308, sub_24DCAA32C);
  sub_24DCB5674();
  v18 = a2;
  v12 = MEMORY[0x277D84F90];
  if (v19)
  {
    v13 = v19;
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F318, &qword_24DCBD960);
  v21 = 1;
  sub_24DCAA380(&qword_27F19F320, sub_24DCAA3F8);
  sub_24DCB5674();
  if (v19)
  {
    v12 = v19;
  }

  v21 = 2;
  sub_24DCAA44C();
  sub_24DCB5674();
  (*(v6 + 8))(v9, v5);
  v14 = v20;
  v15 = v19;
  v16 = v18;
  *v18 = v13;
  v16[1] = v12;
  *(v16 + 1) = v15;
  *(v16 + 32) = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t ServiceConfig.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F338, &qword_24DCBD968);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v18 = v1[2];
  v19 = v9;
  v17 = v11;
  v23 = *(v1 + 32);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24DCAA2D8();

  sub_24DCB5944();
  v20 = v10;
  v24 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F300, &qword_24DCBD958);
  sub_24DCAA4A0(&qword_27F19F340, sub_24DCAA518);
  sub_24DCB5724();

  if (!v2)
  {
    v13 = v23;
    v15 = v17;
    v14 = v18;
    v20 = v19;
    v24 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F318, &qword_24DCBD960);
    sub_24DCAA380(&qword_27F19F350, sub_24DCAA56C);
    sub_24DCB5724();
    v20 = v14;
    v21 = v15;
    v22 = v13;
    v24 = 2;
    sub_24DCAA5C0();
    sub_24DCB56D4();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_24DCA8168()
{
  v1 = *v0;
  sub_24DCB58A4();
  if (v1 == 2)
  {
    MEMORY[0x253035FF0](1);
  }

  else
  {
    MEMORY[0x253035FF0](0);
    sub_24DCB58C4();
  }

  return sub_24DCB58F4();
}

uint64_t sub_24DCA81D0()
{
  if (*v0 == 2)
  {
    return MEMORY[0x253035FF0](1);
  }

  MEMORY[0x253035FF0](0);
  return sub_24DCB58C4();
}

uint64_t sub_24DCA821C()
{
  v1 = *v0;
  sub_24DCB58A4();
  if (v1 == 2)
  {
    MEMORY[0x253035FF0](1);
  }

  else
  {
    MEMORY[0x253035FF0](0);
    sub_24DCB58C4();
  }

  return sub_24DCB58F4();
}

uint64_t sub_24DCA8280(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = v2 == 2;
  v4 = *a2;
  if (v4 != 2)
  {
    v3 = 0;
  }

  v5 = v2 == 2 || v4 == 2;
  v6 = v4 ^ v2 ^ 1;
  if (v5)
  {
    v6 = v3;
  }

  return v6 & 1;
}

void ServiceConfig.LoadBalancingConfig.pickFirst.getter(char *a1@<X8>)
{
  v2 = *v1 & 1;
  if ((*v1 & 0xFE) == 2)
  {
    v2 = 2;
  }

  *a1 = v2;
}

_BYTE *sub_24DCA8300@<X0>(_BYTE *result@<X0>, char *a2@<X8>)
{
  v2 = *result & 1;
  if ((*result & 0xFE) == 2)
  {
    v2 = 2;
  }

  *a2 = v2;
  return result;
}

unsigned __int8 *sub_24DCA831C(unsigned __int8 *result, char *a2)
{
  v2 = *result;
  if (v2 == 2)
  {
    v3 = 3;
  }

  else
  {
    v3 = v2 & 1;
  }

  *a2 = v3;
  return result;
}

unsigned __int8 *ServiceConfig.LoadBalancingConfig.pickFirst.setter(unsigned __int8 *result)
{
  v2 = *result;
  if (v2 == 2)
  {
    v3 = 3;
  }

  else
  {
    v3 = v2 & 1;
  }

  *v1 = v3;
  return result;
}

uint64_t (*ServiceConfig.LoadBalancingConfig.pickFirst.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v2 = *v1 & 1;
  if ((*v1 & 0xFE) == 2)
  {
    v2 = 2;
  }

  *(a1 + 8) = v2;
  return sub_24DCA8390;
}

uint64_t sub_24DCA8390(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 == 2)
  {
    v2 = 3;
  }

  else
  {
    v2 = v1 & 1;
  }

  **result = v2;
  return result;
}

_BYTE *sub_24DCA83D8(_BYTE *result, char *a2)
{
  if (*result)
  {
    v2 = 3;
  }

  else
  {
    v2 = 2;
  }

  *a2 = v2;
  return result;
}

_BYTE *ServiceConfig.LoadBalancingConfig.roundRobin.setter(_BYTE *result)
{
  if (*result)
  {
    v2 = 3;
  }

  else
  {
    v2 = 2;
  }

  *v1 = v2;
  return result;
}

uint64_t (*ServiceConfig.LoadBalancingConfig.roundRobin.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  *(a1 + 8) = *v1 != 2;
  return sub_24DCA843C;
}

uint64_t sub_24DCA843C(uint64_t result)
{
  if (*(result + 8))
  {
    v1 = 3;
  }

  else
  {
    v1 = 2;
  }

  **result = v1;
  return result;
}

uint64_t ServiceConfig.LoadBalancingConfig.hash(into:)()
{
  v1 = *v0;
  if (v1 != 3)
  {
    sub_24DCB58C4();
    if (v1 == 2)
    {
      return MEMORY[0x253035FF0](1);
    }

    MEMORY[0x253035FF0](0);
  }

  return sub_24DCB58C4();
}

uint64_t ServiceConfig.LoadBalancingConfig.hashValue.getter()
{
  v1 = *v0;
  sub_24DCB58A4();
  if (v1 == 3)
  {
    goto LABEL_5;
  }

  sub_24DCB58C4();
  if (v1 != 2)
  {
    MEMORY[0x253035FF0](0);
LABEL_5:
    sub_24DCB58C4();
    return sub_24DCB58F4();
  }

  MEMORY[0x253035FF0](1);
  return sub_24DCB58F4();
}

uint64_t sub_24DCA8548()
{
  v1 = *v0;
  if (v1 != 3)
  {
    sub_24DCB58C4();
    if (v1 == 2)
    {
      return MEMORY[0x253035FF0](1);
    }

    MEMORY[0x253035FF0](0);
  }

  return sub_24DCB58C4();
}

uint64_t sub_24DCA85AC()
{
  v1 = *v0;
  sub_24DCB58A4();
  if (v1 == 3)
  {
    goto LABEL_5;
  }

  sub_24DCB58C4();
  if (v1 != 2)
  {
    MEMORY[0x253035FF0](0);
LABEL_5:
    sub_24DCB58C4();
    return sub_24DCB58F4();
  }

  MEMORY[0x253035FF0](1);
  return sub_24DCB58F4();
}

uint64_t ServiceConfig.LoadBalancingConfig.PickFirst.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F368, &qword_24DCBD970);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24DCAA614();
  sub_24DCB5924();
  if (!v2)
  {
    v11 = sub_24DCB5654();
    (*(v6 + 8))(v9, v5);
    *a2 = v11 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24DCA87D0()
{
  sub_24DCB58A4();
  MEMORY[0x253035FF0](0);
  return sub_24DCB58F4();
}

uint64_t sub_24DCA883C()
{
  sub_24DCB58A4();
  MEMORY[0x253035FF0](0);
  return sub_24DCB58F4();
}

uint64_t sub_24DCA8898@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x800000024DCC6280 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_24DCB57A4();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_24DCA892C(uint64_t a1)
{
  v2 = sub_24DCAA614();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24DCA8968(uint64_t a1)
{
  v2 = sub_24DCAA614();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ServiceConfig.LoadBalancingConfig.PickFirst.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F370, &qword_24DCBD978);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24DCAA614();
  sub_24DCB5944();
  sub_24DCB56F4();
  return (*(v4 + 8))(v7, v3);
}

uint64_t ServiceConfig.LoadBalancingConfig.PickFirst.hashValue.getter()
{
  v1 = *v0;
  sub_24DCB58A4();
  sub_24DCB58C4();
  return sub_24DCB58F4();
}

uint64_t sub_24DCA8B68(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F370, &qword_24DCBD978);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24DCAA614();
  sub_24DCB5944();
  sub_24DCB56F4();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_24DCA8CA8@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_24DCA8CE4(uint64_t a1)
{
  v2 = sub_24DCAA668();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24DCA8D20(uint64_t a1)
{
  v2 = sub_24DCAA668();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ServiceConfig.LoadBalancingConfig.RoundRobin.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F378, &qword_24DCBD980);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24DCAA668();
  sub_24DCB5944();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_24DCA8F68(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F378, &qword_24DCBD980);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24DCAA668();
  sub_24DCB5944();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_24DCA907C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x7269665F6B636970;
  }

  else
  {
    v4 = 0x6F725F646E756F72;
  }

  if (v3)
  {
    v5 = 0xEB000000006E6962;
  }

  else
  {
    v5 = 0xEA00000000007473;
  }

  if (*a2)
  {
    v6 = 0x7269665F6B636970;
  }

  else
  {
    v6 = 0x6F725F646E756F72;
  }

  if (*a2)
  {
    v7 = 0xEA00000000007473;
  }

  else
  {
    v7 = 0xEB000000006E6962;
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

uint64_t sub_24DCA9130()
{
  v1 = *v0;
  sub_24DCB58A4();
  sub_24DCB4D44();

  return sub_24DCB58F4();
}

uint64_t sub_24DCA91C0()
{
  *v0;
  sub_24DCB4D44();
}

uint64_t sub_24DCA923C()
{
  v1 = *v0;
  sub_24DCB58A4();
  sub_24DCB4D44();

  return sub_24DCB58F4();
}

uint64_t sub_24DCA92C8@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
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

void sub_24DCA9328(uint64_t *a1@<X8>)
{
  v2 = 0x6F725F646E756F72;
  if (*v1)
  {
    v2 = 0x7269665F6B636970;
  }

  v3 = 0xEB000000006E6962;
  if (*v1)
  {
    v3 = 0xEA00000000007473;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_24DCA9374()
{
  if (*v0)
  {
    result = 0x7269665F6B636970;
  }

  else
  {
    result = 0x6F725F646E756F72;
  }

  *v0;
  return result;
}

uint64_t sub_24DCA93BC@<X0>(char *a1@<X8>)
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

uint64_t sub_24DCA9420(uint64_t a1)
{
  v2 = sub_24DCAA6BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24DCA945C(uint64_t a1)
{
  v2 = sub_24DCAA6BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ServiceConfig.LoadBalancingConfig.init(from:)@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F380, &qword_24DCBD988);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24DCAA6BC();
  sub_24DCB5924();
  if (!v2)
  {
    v16 = 0;
    sub_24DCAA710();
    sub_24DCB5674();
    if (v17 == 1)
    {
      v14 = 1;
      sub_24DCAA764();
      sub_24DCB5674();
      (*(v6 + 8))(v9, v5);
      if (v15 == 2)
      {
        v11 = 3;
      }

      else
      {
        v11 = v15 & 1;
      }
    }

    else
    {
      (*(v6 + 8))(v9, v5);
      v11 = 2;
    }

    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t ServiceConfig.LoadBalancingConfig.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F398, &qword_24DCBD990);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24DCAA6BC();
  sub_24DCB5944();
  if (v8 == 2)
  {
    v14 = 0;
    sub_24DCAA7B8();
    goto LABEL_5;
  }

  if (v8 != 3)
  {
    v13 = v8 & 1;
    v12 = 1;
    sub_24DCAA80C();
LABEL_5:
    sub_24DCB5724();
  }

  return (*(v4 + 8))(v7, v3);
}

GRPCCoreInternal::ServiceConfig::RetryThrottling __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ServiceConfig.RetryThrottling.init(maxTokens:tokenRatio:)(Swift::Int maxTokens, Swift::Double tokenRatio)
{
  if (maxTokens < 1)
  {
    static RuntimeError.Code.invalidArgument.getter(&v11);
    sub_24DC3C254();
    swift_allocError();
    v3 = &v11;
    v4 = 0x800000024DCC6220;
    v6 = v5;
    v7 = 0xD000000000000023;
LABEL_6:
    RuntimeError.init(code:message:cause:)(v3, v7, v4, 0, v6);
    maxTokens = swift_willThrow();
    goto LABEL_7;
  }

  if (tokenRatio <= 0.0)
  {
    static RuntimeError.Code.invalidArgument.getter(&v10);
    sub_24DC3C254();
    swift_allocError();
    v6 = v8;
    v3 = &v10;
    v7 = 0xD000000000000024;
    v4 = 0x800000024DCC6250;
    goto LABEL_6;
  }

  *v2 = maxTokens;
  *(v2 + 8) = tokenRatio;
LABEL_7:
  result.tokenRatio = tokenRatio;
  result.maxTokens = maxTokens;
  return result;
}

uint64_t ServiceConfig.RetryThrottling.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F3B0, &qword_24DCBD998);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24DCAA860();
  sub_24DCB5924();
  if (!v2)
  {
    v23[2] = 0;
    v11 = sub_24DCB5694();
    v23[1] = 1;
    sub_24DCB5684();
    if (v11 < 1)
    {
      static RuntimeError.Code.invalidArgument.getter(v23);
      sub_24DC3C254();
      swift_allocError();
      v14 = v23;
      v15 = 0x800000024DCC6220;
      v17 = v16;
      v18 = 0xD000000000000023;
    }

    else
    {
      if (v12 > 0.0)
      {
        v13 = v12;
        (*(v6 + 8))(v9, v5);
        *a2 = v11;
        *(a2 + 1) = v13;
        return __swift_destroy_boxed_opaque_existential_1(a1);
      }

      static RuntimeError.Code.invalidArgument.getter(&v22);
      sub_24DC3C254();
      swift_allocError();
      v17 = v19;
      v14 = &v22;
      v18 = 0xD000000000000024;
      v15 = 0x800000024DCC6250;
    }

    RuntimeError.init(code:message:cause:)(v14, v18, v15, 0, v17);
    swift_willThrow();
    (*(v6 + 8))(v9, v5);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24DCA9C3C()
{
  if (*v0)
  {
    result = 0x7461526E656B6F74;
  }

  else
  {
    result = 0x6E656B6F5478616DLL;
  }

  *v0;
  return result;
}

uint64_t sub_24DCA9C80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E656B6F5478616DLL && a2 == 0xE900000000000073;
  if (v6 || (sub_24DCB57A4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7461526E656B6F74 && a2 == 0xEA00000000006F69)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24DCB57A4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24DCA9D6C(uint64_t a1)
{
  v2 = sub_24DCAA860();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24DCA9DA8(uint64_t a1)
{
  v2 = sub_24DCAA860();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ServiceConfig.RetryThrottling.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F3B8, &qword_24DCBD9A0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13[-v7];
  v9 = *v1;
  v10 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24DCAA860();
  sub_24DCB5944();
  v13[15] = 0;
  sub_24DCB5714();
  if (!v2)
  {
    v13[14] = 1;
    sub_24DCB5704();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t ServiceConfig.RetryThrottling.hash(into:)()
{
  v1 = *(v0 + 8);
  MEMORY[0x253035FF0](*v0);
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  return MEMORY[0x253036020](*&v2);
}

uint64_t ServiceConfig.RetryThrottling.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24DCB58A4();
  MEMORY[0x253035FF0](*&v1);
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  MEMORY[0x253036020](*&v3);
  return sub_24DCB58F4();
}

uint64_t sub_24DCAA034()
{
  v1 = *(v0 + 8);
  MEMORY[0x253035FF0](*v0);
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  return MEMORY[0x253036020](*&v2);
}

uint64_t sub_24DCAA080()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24DCB58A4();
  MEMORY[0x253035FF0](*&v1);
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  MEMORY[0x253036020](*&v3);
  return sub_24DCB58F4();
}

uint64_t sub_24DCAA144(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x253035FF0](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      while (1)
      {
        v7 = *v5++;
        v6 = v7;
        if (v7 != 3)
        {
          break;
        }

LABEL_3:
        result = sub_24DCB58C4();
        if (!--v3)
        {
          return result;
        }
      }

      sub_24DCB58C4();
      if (v6 != 2)
      {
        MEMORY[0x253035FF0](0);
        goto LABEL_3;
      }

      result = MEMORY[0x253035FF0](1);
      --v3;
    }

    while (v3);
  }

  return result;
}

BOOL _s16GRPCCoreInternal13ServiceConfigV013LoadBalancingD0V2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 3)
  {
    return v3 == 3;
  }

  if (v3 == 3)
  {
    return 0;
  }

  if (v2 == 2)
  {
    return v3 == 2;
  }

  else
  {
    return v3 != 2 && ((v3 ^ v2) & 1) == 0;
  }
}

BOOL _s16GRPCCoreInternal13ServiceConfigV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  if ((sub_24DCA6EAC(*a1, *a2) & 1) == 0 || (sub_24DCA7090(v2, v6) & 1) == 0)
  {
    return 0;
  }

  if ((v5 & 1) == 0)
  {
    return (v9 & 1) == 0 && v3 == v7 && v4 == v8;
  }

  return (v9 & 1) != 0;
}

unint64_t sub_24DCAA2D8()
{
  result = qword_27F1A7C60;
  if (!qword_27F1A7C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1A7C60);
  }

  return result;
}

unint64_t sub_24DCAA32C()
{
  result = qword_27F19F310;
  if (!qword_27F19F310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F310);
  }

  return result;
}

uint64_t sub_24DCAA380(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19F318, &qword_24DCBD960);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24DCAA3F8()
{
  result = qword_27F19F328;
  if (!qword_27F19F328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F328);
  }

  return result;
}

unint64_t sub_24DCAA44C()
{
  result = qword_27F19F330;
  if (!qword_27F19F330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F330);
  }

  return result;
}

uint64_t sub_24DCAA4A0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19F300, &qword_24DCBD958);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24DCAA518()
{
  result = qword_27F19F348;
  if (!qword_27F19F348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F348);
  }

  return result;
}

unint64_t sub_24DCAA56C()
{
  result = qword_27F19F358;
  if (!qword_27F19F358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F358);
  }

  return result;
}

unint64_t sub_24DCAA5C0()
{
  result = qword_27F19F360;
  if (!qword_27F19F360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F360);
  }

  return result;
}

unint64_t sub_24DCAA614()
{
  result = qword_27F1A7C68;
  if (!qword_27F1A7C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1A7C68);
  }

  return result;
}

unint64_t sub_24DCAA668()
{
  result = qword_27F1A7C70;
  if (!qword_27F1A7C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1A7C70);
  }

  return result;
}

unint64_t sub_24DCAA6BC()
{
  result = qword_27F1A7C78;
  if (!qword_27F1A7C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1A7C78);
  }

  return result;
}

unint64_t sub_24DCAA710()
{
  result = qword_27F19F388;
  if (!qword_27F19F388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F388);
  }

  return result;
}

unint64_t sub_24DCAA764()
{
  result = qword_27F19F390;
  if (!qword_27F19F390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F390);
  }

  return result;
}

unint64_t sub_24DCAA7B8()
{
  result = qword_27F19F3A0;
  if (!qword_27F19F3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F3A0);
  }

  return result;
}

unint64_t sub_24DCAA80C()
{
  result = qword_27F19F3A8;
  if (!qword_27F19F3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F3A8);
  }

  return result;
}

unint64_t sub_24DCAA860()
{
  result = qword_27F1A7C80[0];
  if (!qword_27F1A7C80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F1A7C80);
  }

  return result;
}

unint64_t sub_24DCAA8B8()
{
  result = qword_27F19F3C0;
  if (!qword_27F19F3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F3C0);
  }

  return result;
}

unint64_t sub_24DCAA910()
{
  result = qword_27F19F3C8;
  if (!qword_27F19F3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F3C8);
  }

  return result;
}

unint64_t sub_24DCAA968()
{
  result = qword_27F19F3D0;
  if (!qword_27F19F3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F3D0);
  }

  return result;
}

unint64_t sub_24DCAA9C0()
{
  result = qword_27F19F3D8;
  if (!qword_27F19F3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F3D8);
  }

  return result;
}

unint64_t sub_24DCAAA18()
{
  result = qword_27F19F3E0;
  if (!qword_27F19F3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F3E0);
  }

  return result;
}

uint64_t sub_24DCAAA6C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_24DCAAAB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ServiceConfig.LoadBalancingConfig(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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
        return (*a1 | (v4 << 8)) - 3;
      }
    }

    else
    {
      if (v3 == 2)
      {
        v4 = *(a1 + 1);
        if (!*(a1 + 1))
        {
          goto LABEL_16;
        }

        return (*a1 | (v4 << 8)) - 3;
      }

      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 8)) - 3;
      }
    }
  }

LABEL_16:
  v6 = *a1;
  if (*a1 >= 2u)
  {
    v7 = (v6 & 0xFE) + 2147483646;
    if ((v7 & 0x7FFFFFFE) != 0)
    {
      return (v7 & 0x7FFFFFFE | v6 & 1u) - 1;
    }
  }

  return 0;
}

uint64_t getEnumTagSinglePayload for ServiceConfig.LoadBalancingConfig.PickFirst(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t getEnumTagSinglePayload for ServiceConfig.LoadBalancingConfig.Value(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
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
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = (v7 + 2147483646) & 0x7FFFFFFF;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ServiceConfig.LoadBalancingConfig.Value(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_24DCAAE0C(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_24DCAAE28(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t _s16GRPCCoreInternal13ServiceConfigV19LoadBalancingConfigV10RoundRobinVwet_0(unsigned int *a1, int a2)
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

_WORD *_s16GRPCCoreInternal13ServiceConfigV19LoadBalancingConfigV10RoundRobinVwst_0(_WORD *result, int a2, int a3)
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

unint64_t sub_24DCAAF78()
{
  result = qword_27F1A8810[0];
  if (!qword_27F1A8810[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F1A8810);
  }

  return result;
}

unint64_t sub_24DCAAFD0()
{
  result = qword_27F1A8A20[0];
  if (!qword_27F1A8A20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F1A8A20);
  }

  return result;
}

unint64_t sub_24DCAB028()
{
  result = qword_27F1A8DB0[0];
  if (!qword_27F1A8DB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F1A8DB0);
  }

  return result;
}

unint64_t sub_24DCAB080()
{
  result = qword_27F1A8FC0[0];
  if (!qword_27F1A8FC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F1A8FC0);
  }

  return result;
}

unint64_t sub_24DCAB0D8()
{
  result = qword_27F1A9150[0];
  if (!qword_27F1A9150[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F1A9150);
  }

  return result;
}

unint64_t sub_24DCAB130()
{
  result = qword_27F1A91E0;
  if (!qword_27F1A91E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1A91E0);
  }

  return result;
}

unint64_t sub_24DCAB188()
{
  result = qword_27F1A91E8[0];
  if (!qword_27F1A91E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F1A91E8);
  }

  return result;
}

unint64_t sub_24DCAB1E0()
{
  result = qword_27F1A9270;
  if (!qword_27F1A9270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1A9270);
  }

  return result;
}

unint64_t sub_24DCAB238()
{
  result = qword_27F1A9278;
  if (!qword_27F1A9278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1A9278);
  }

  return result;
}

unint64_t sub_24DCAB290()
{
  result = qword_27F1A9300;
  if (!qword_27F1A9300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1A9300);
  }

  return result;
}

unint64_t sub_24DCAB2E8()
{
  result = qword_27F1A9308[0];
  if (!qword_27F1A9308[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F1A9308);
  }

  return result;
}

unint64_t sub_24DCAB340()
{
  result = qword_27F1A9390;
  if (!qword_27F1A9390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1A9390);
  }

  return result;
}

unint64_t sub_24DCAB398()
{
  result = qword_27F1A9398[0];
  if (!qword_27F1A9398[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F1A9398);
  }

  return result;
}

unint64_t sub_24DCAB3F0()
{
  result = qword_27F1A9420;
  if (!qword_27F1A9420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1A9420);
  }

  return result;
}

unint64_t sub_24DCAB448()
{
  result = qword_27F1A9428[0];
  if (!qword_27F1A9428[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F1A9428);
  }

  return result;
}

uint64_t sub_24DCAB49C()
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

uint64_t ClientContext.descriptor.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

__n128 ClientContext.descriptor.setter(__n128 *a1)
{
  v7 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];
  v4 = v1->n128_u64[1];
  v5 = v1[1].n128_u64[1];

  result = v7;
  *v1 = v7;
  v1[1].n128_u64[0] = v2;
  v1[1].n128_u64[1] = v3;
  return result;
}

uint64_t ClientContext.remotePeer.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t ClientContext.remotePeer.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t ClientContext.localPeer.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t ClientContext.localPeer.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

void __swiftcall ClientContext.init(descriptor:remotePeer:localPeer:)(GRPCCoreInternal::ClientContext *__return_ptr retstr, GRPCCoreInternal::MethodDescriptor descriptor, Swift::String remotePeer, Swift::String localPeer)
{
  v4 = *(descriptor.service.fullyQualifiedService._countAndFlagsBits + 16);
  v5 = *(descriptor.service.fullyQualifiedService._countAndFlagsBits + 24);
  retstr->descriptor.service = *descriptor.service.fullyQualifiedService._countAndFlagsBits;
  retstr->descriptor.method._countAndFlagsBits = v4;
  retstr->descriptor.method._object = v5;
  retstr->remotePeer._countAndFlagsBits = descriptor.service.fullyQualifiedService._object;
  retstr->remotePeer._object = descriptor.method._countAndFlagsBits;
  retstr->localPeer._countAndFlagsBits = descriptor.method._object;
  retstr->localPeer._object = remotePeer._countAndFlagsBits;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24DCAB704(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_24DCAB74C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of ClientInterceptor.intercept<A, B>(request:context:next:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = *(a9 + 8);
  v21 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  *(v9 + 16) = v19;
  *v19 = v9;
  v19[1] = sub_24DC2FD00;

  return v21(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t ServerResponse.Contents.metadata.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;

  *v1 = v2;
  return result;
}

uint64_t (*ServerResponse.Contents.message.modify(uint64_t a1, uint64_t a2))(void)
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t ServerResponse.Contents.trailingMetadata.setter(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 32);
  v5 = *(v2 + v4);

  *(v2 + v4) = v3;
  return result;
}

uint64_t (*ServerResponse.Contents.trailingMetadata.modify(uint64_t a1, uint64_t a2))(void)
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 32);
  return result;
}

uint64_t ServerResponse.Contents.init(message:metadata:trailingMetadata:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v8 = *a3;
  *a5 = *a2;
  v9 = type metadata accessor for ServerResponse.Contents();
  result = (*(*(a4 - 8) + 32))(&a5[*(v9 + 28)], a1, a4);
  *&a5[*(v9 + 32)] = v8;
  return result;
}

uint64_t ServerResponse.accepted.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  type metadata accessor for ServerResponse.Contents();
  sub_24DC2E0D8();
  v5 = sub_24DCB5904();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2, v5);
}

uint64_t ServerResponse.accepted.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  type metadata accessor for ServerResponse.Contents();
  sub_24DC2E0D8();
  v5 = sub_24DCB5904();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2, a1, v5);
}

uint64_t ServerResponse.init(accepted:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for ServerResponse.Contents();
  sub_24DC2E0D8();
  v4 = sub_24DCB5904();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t StreamingServerResponse.Contents.metadata.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;

  *v1 = v2;
  return result;
}

uint64_t sub_24DCABD54@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_24DCABD60(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a2 + 16);

  *(a2 + 8) = v4;
  *(a2 + 16) = v3;
  return result;
}

uint64_t StreamingServerResponse.Contents.producer.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t StreamingServerResponse.Contents.producer.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

void *StreamingServerResponse.Contents.init(metadata:producer:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = *result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t StreamingServerResponse.accepted.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  return sub_24DC7CC28(v2, v3, v4, v5, v6, v7);
}

__n128 StreamingServerResponse.accepted.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_24DC7BD50(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));
  result = *a1;
  v6 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v6;
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  return result;
}

__n128 StreamingServerResponse.init(accepted:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  result = *a1;
  v5 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v5;
  *(a2 + 32) = v2;
  *(a2 + 40) = v3;
  return result;
}

uint64_t ServerResponse.init(message:metadata:trailingMetadata:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for ServerResponse.Contents();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v18 - v14;
  v16 = *a3;
  *(&v18 - v14) = *a2;
  (*(*(a4 - 8) + 32))(&v18 + *(v13 + 28) - v14, a1, a4);
  *&v15[*(v10 + 32)] = v16;
  (*(v11 + 32))(a5, v15, v10);
  sub_24DC2E0D8();
  sub_24DCB5904();
  return swift_storeEnumTagMultiPayload();
}

uint64_t ServerResponse.init(of:error:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 32);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  type metadata accessor for ServerResponse.Contents();
  sub_24DC2E0D8();
  sub_24DCB5904();

  return swift_storeEnumTagMultiPayload();
}

uint64_t ServerResponse.metadata.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 16);
  v6 = type metadata accessor for ServerResponse.Contents();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = (&v21 - v9);
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
    v17 = *v10;
    v20 = *(v7 + 8);

    result = v20(v10, v6);
  }

  *a2 = v17;
  return result;
}

uint64_t sub_24DCAC2A0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v4 = *(a1 + a2 - 8);
  v5 = type metadata accessor for ServerResponse();
  result = ServerResponse.metadata.getter(v5, &v7);
  *a3 = v7;
  return result;
}

uint64_t sub_24DCAC2EC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 8);
  v7 = *a1;
  v5 = type metadata accessor for ServerResponse();

  return ServerResponse.metadata.setter(&v7, v5);
}

uint64_t ServerResponse.metadata.setter(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = type metadata accessor for ServerResponse.Contents();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v23 - v8);
  sub_24DC2E0D8();
  v10 = sub_24DCB5904();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - v13;
  v15 = *a1;
  (*(v11 + 16))(&v23 - v13, v2, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *v14;
    v18 = *(v14 + 1);
    v17 = *(v14 + 2);
    v19 = *(v14 + 3);
    v20 = *(v14 + 4);

    (*(v11 + 8))(v2, v10);
    *v2 = v16;
    *(v2 + 8) = v18;
    *(v2 + 16) = v17;
    *(v2 + 24) = v15;
    *(v2 + 32) = v20;
    swift_storeEnumTagMultiPayload();

    MEMORY[0x2530363C0](v20);

    return MEMORY[0x2530363B0](v20);
  }

  else
  {
    (*(v6 + 32))(v9, v14, v5);
    v22 = *v9;

    *v9 = v15;
    (*(v11 + 8))(v2, v10);
    (*(v6 + 16))(v2, v9, v5);
    swift_storeEnumTagMultiPayload();
    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t (*ServerResponse.metadata.modify(void *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  a1[1] = a2;
  a1[2] = v2;
  ServerResponse.metadata.getter(a2, a1);
  return sub_24DCAC618;
}

uint64_t sub_24DCAC618(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = *a1;
  if (a2)
  {
    v6 = *a1;

    ServerResponse.metadata.setter(&v6, v3);
  }

  else
  {
    v6 = *a1;
    return ServerResponse.metadata.setter(&v6, v3);
  }
}

double ServerResponse.message.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  sub_24DC2E0D8();
  v5 = sub_24DCB5904();
  v6 = *(*(v5 - 1) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  v16 = v4;
  type metadata accessor for ServerResponse.Contents();
  v9 = sub_24DCB5904();
  sub_24DC64B5C(sub_24DCAC7F8, v9, v8);
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

uint64_t sub_24DCAC7F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = type metadata accessor for ServerResponse.Contents();
  v7 = *(*(v5 - 8) + 16);
  v8 = a1 + *(v6 + 28);

  return v7(a2, v8, v5);
}

uint64_t ServerResponse.trailingMetadata.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 16);
  v6 = type metadata accessor for ServerResponse.Contents();
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

void StreamingServerResponse.init(of:metadata:producer:)(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  *a4 = *a1;
  *(a4 + 8) = a2;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *(a4 + 16) = a3;
  *(a4 + 40) = 0;
}

__n128 StreamingServerResponse.init(of:error:)@<Q0>(__n128 *a1@<X1>, __n128 *a2@<X8>)
{
  v2 = a1->n128_u64[1];
  v3 = a1[2].n128_u64[0];
  a2->n128_u64[0] = a1->n128_u8[0];
  a2->n128_u64[1] = v2;
  result = a1[1];
  a2[1] = result;
  a2[2].n128_u64[0] = v3;
  a2[2].n128_u8[8] = 1;
  return result;
}

uint64_t StreamingServerResponse.metadata.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = 24;
  if (!*(v1 + 40))
  {
    v3 = 0;
  }

  v4 = *(v1 + v3);

  *a1 = result;
  return result;
}

uint64_t sub_24DCACAC8@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 4);
  v4 = *(a1 + 40);
  v5 = a1[1];
  v8 = *a1;
  v9 = v5;
  v10 = v3;
  v11 = v4;
  result = StreamingServerResponse.metadata.getter(&v7);
  *a2 = v7;
  return result;
}

uint64_t sub_24DCACB1C(uint64_t *a1)
{
  v2 = *a1;

  return StreamingServerResponse.metadata.setter(&v2);
}

uint64_t StreamingServerResponse.metadata.setter(uint64_t *a1)
{
  v2 = *a1;
  v4 = *(v1 + 1);
  v3 = *(v1 + 2);
  v5 = v1[40];
  if (v5)
  {
    v19 = *v1;
    v7 = *(v1 + 3);
    v6 = *(v1 + 4);

    MEMORY[0x2530363C0](v6);

    v8 = *v1;
    v9 = *(v1 + 1);
    v10 = *(v1 + 2);
    v11 = *(v1 + 3);
    v12 = *(v1 + 4);
    v18 = v1[40];

    MEMORY[0x2530363C0](v6);
    sub_24DC7BD50(v8, v9, v10, v11, v12, v18);
    *v1 = v19;
    *(v1 + 1) = v4;
    *(v1 + 2) = v3;
    *(v1 + 3) = v2;
    *(v1 + 4) = v6;
    v1[40] = 1;

    JUMPOUT(0x2530363B0);
  }

  v13 = *v1;
  v14 = *(v1 + 3);
  v15 = *(v1 + 4);
  v16 = *a1;

  swift_retain_n();
  sub_24DC7BD50(v13, v4, v3, v14, v15, v5);
  *v1 = v2;
  *(v1 + 1) = v4;
  *(v1 + 3) = 0;
  *(v1 + 4) = 0;
  *(v1 + 2) = v3;
  v1[40] = 0;
}

uint64_t (*StreamingServerResponse.metadata.modify(void *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  a1[1] = a2;
  a1[2] = v2;
  v3 = (v2 + 24);
  if (!*(v2 + 40))
  {
    v3 = v2;
  }

  *a1 = *v3;

  return sub_24DCACD40;
}

uint64_t sub_24DCACD40(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[2];
  if (a2)
  {
    v5 = *a1;

    StreamingServerResponse.metadata.setter(&v5);
  }

  else
  {
    v5 = *a1;
    return StreamingServerResponse.metadata.setter(&v5);
  }
}

uint64_t StreamingServerResponse.init(single:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ServerResponse.Contents();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v10 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - v11;
  sub_24DC2E0D8();
  v13 = sub_24DCB5904();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - v15;
  (*(v17 + 32))(&v27 - v15, a1, v13);
  result = swift_getEnumCaseMultiPayload();
  v19 = result;
  if (result == 1)
  {
    v20 = *v16;
    v21 = *(v16 + 1);
    v22 = *(v16 + 2);
    v23 = *(v16 + 3);
    v24 = *(v16 + 4);
  }

  else
  {
    v28 = a2;
    v25 = *(v7 + 32);
    v25(v12, v16, v6);
    v20 = *v12;
    v25(v10, v12, v6);
    v26 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = v28;
    v25((v22 + v26), v10, v6);

    v23 = 0;
    v24 = 0;
    v21 = &unk_24DCBE4A8;
  }

  *a3 = v20;
  *(a3 + 8) = v21;
  *(a3 + 16) = v22;
  *(a3 + 24) = v23;
  *(a3 + 32) = v24;
  *(a3 + 40) = v19 == 1;
  return result;
}

uint64_t sub_24DCAD020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v5 = type metadata accessor for ServerResponse.Contents();
  v3[4] = v5;
  v6 = *(v5 + 28);
  v7 = swift_task_alloc();
  v3[5] = v7;
  type metadata accessor for RPCWriter();
  *v7 = v3;
  v7[1] = sub_24DCAD100;

  return RPCWriter.write(_:)(a3 + v6);
}

uint64_t sub_24DCAD100()
{
  v2 = *(*v1 + 40);
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_24DCAD230, 0, 0);
  }
}

uint64_t sub_24DCAD230()
{
  **(v0 + 16) = *(*(v0 + 24) + *(*(v0 + 32) + 32));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24DCAD2AC()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for ServerResponse.Contents() - 8);
  v3 = *(*v2 + 64);
  v4 = (v0 + ((*(*v2 + 80) + 24) & ~*(*v2 + 80)));
  v5 = *v4;

  (*(*(v1 - 8) + 8))(&v4[v2[9]], v1);
  v6 = *&v4[v2[10]];

  return swift_deallocObject();
}

uint64_t sub_24DCAD3A8(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(type metadata accessor for ServerResponse.Contents() - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_24DC2FD00;

  return sub_24DCAD020(a1, a2, v2 + v8);
}

uint64_t sub_24DCAD4D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  type metadata accessor for ServerResponse.Contents();
  sub_24DC2E0D8();
  result = sub_24DCB5904();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24DCAD560(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v3 = ((*(*(*(a3 + 16) - 8) + 64) + ((*(*(*(a3 + 16) - 8) + 80) + 8) & ~*(*(*(a3 + 16) - 8) + 80)) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v3 <= 0x28)
  {
    v3 = 40;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_27;
  }

  v4 = v3 | 1;
  if ((v3 | 1) <= 3)
  {
    v5 = ((a2 + 1) >> 8) + 1;
  }

  else
  {
    v5 = 2;
  }

  if (v5 >= 0x10000)
  {
    v6 = 4;
  }

  else
  {
    v6 = 2;
  }

  if (v5 < 0x100)
  {
    v6 = 1;
  }

  if (v5 >= 2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (v7 > 1)
  {
    if (v7 == 2)
    {
      v8 = *&a1[v4];
      if (*&a1[v4])
      {
        goto LABEL_23;
      }
    }

    else
    {
      v8 = *&a1[v4];
      if (v8)
      {
        goto LABEL_23;
      }
    }

LABEL_27:
    v12 = a1[v3];
    if (v12 >= 2)
    {
      return (v12 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v7)
  {
    goto LABEL_27;
  }

  v8 = a1[v4];
  if (!a1[v4])
  {
    goto LABEL_27;
  }

LABEL_23:
  v10 = (v8 - 1) << (8 * v4);
  if (v4 <= 3)
  {
    v11 = *a1;
  }

  else
  {
    v10 = 0;
    v11 = *a1;
  }

  return (v11 | v10) + 255;
}

void sub_24DCAD688(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = ((*(*(*(a4 + 16) - 8) + 64) + ((*(*(*(a4 + 16) - 8) + 80) + 8) & ~*(*(*(a4 + 16) - 8) + 80)) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v5 <= 0x28)
  {
    v5 = 40;
  }

  v6 = v5 | 1;
  if (a3 < 0xFF)
  {
    v9 = 0;
    if (a2 > 0xFE)
    {
      goto LABEL_16;
    }

LABEL_24:
    if (v9 > 1)
    {
      if (v9 != 2)
      {
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      }

      *&a1[v6] = 0;
    }

    else if (v9)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_34:
      a1[v5] = -a2;
      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (v6 <= 3)
  {
    v7 = ((a3 + 1) >> 8) + 1;
  }

  else
  {
    v7 = 2;
  }

  if (v7 >= 0x10000)
  {
    v8 = 4;
  }

  else
  {
    v8 = 2;
  }

  if (v7 < 0x100)
  {
    v8 = 1;
  }

  if (v7 >= 2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (a2 <= 0xFE)
  {
    goto LABEL_24;
  }

LABEL_16:
  v10 = a2 - 255;
  v11 = (a2 - 255) >> 8;
  bzero(a1, v5 | 1);
  if (v6 <= 3)
  {
    v12 = v11 + 1;
  }

  else
  {
    v12 = 1;
  }

  if (v6 <= 3)
  {
    *a1 = v10;
    if (v9 > 1)
    {
LABEL_21:
      if (v9 == 2)
      {
        *&a1[v6] = v12;
      }

      else
      {
        *&a1[v6] = v12;
      }

      return;
    }
  }

  else
  {
    *a1 = v10;
    if (v9 > 1)
    {
      goto LABEL_21;
    }
  }

  if (v9)
  {
    a1[v6] = v12;
  }
}

uint64_t sub_24DCAD828(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24DCAD8A8(uint64_t *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 8) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
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

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
    }

    v17 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

void *sub_24DCAD9F0(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 8) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 8) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
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

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if ((v6 & 0x80000000) != 0)
      {
        v19 = *(v5 + 56);
        v20 = (result + v8 + 8) & ~v8;

        return v19(v20);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v18 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v18 = a2 - 1;
        }

        *result = v18;
      }

      return result;
    }
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 8) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 8) & ~v8) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

uint64_t sub_24DCADBBC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24DCADC18(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_24DCADC60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_24DCADCC8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24DCADD24@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v5 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v5;
  *(a1 + 32) = v2;
  *(a1 + 40) = v3;
  *(a1 + 48) = v4;
}

double sub_24DCADD48@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 32);
  result = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v5;
  *(a2 + 32) = v2;
  *(a2 + 40) = result;
  *(a2 + 48) = v4;
  return result;
}

uint64_t sub_24DCADD6C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v5 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v5;
  *(a1 + 32) = v2;
  *(a1 + 40) = v3;
  *(a1 + 48) = v4;
  *(a1 + 56) = 1;
}

double sub_24DCADD94@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 32);
  result = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v5;
  *(a2 + 32) = v2;
  *(a2 + 40) = result;
  *(a2 + 48) = v4;
  *(a2 + 56) = 1;
  return result;
}

double sub_24DCADDCC()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = sub_24DCB5954();
  sub_24DCB5954();
  return v4 / 1.0e18 + v3;
}

double sub_24DCADE24()
{
  v0 = sub_24DCB5954();
  sub_24DCB5954();
  return v1 / 1.0e18 + v0;
}

double sub_24DCADE78()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = sub_24DCB5954();
  sub_24DCB5954();
  return v4 / 1.0e18 + v3;
}

void sub_24DCADED0()
{
  v1 = *(v0 + 56);
  if (__OFSUB__(v1, 1))
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v2 = pow(*(v0 + 40), (v1 - 1));
  v3 = *(v0 + 8);
  v4 = *(v0 + 16);
  v5 = sub_24DCB5954();
  sub_24DCB5954();
  v7 = v2 * (v6 / 1.0e18 + v5);
  v8 = *(v0 + 24);
  v9 = *(v0 + 32);
  v10 = sub_24DCB5954();
  sub_24DCB5954();
  if (v11 / 1.0e18 + v10 < v7)
  {
    v7 = v11 / 1.0e18 + v10;
  }

  if (v7 < 0.0)
  {
    goto LABEL_11;
  }

  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v12 = sub_24DCAE0E4(0x20000000000001uLL);
  v13 = v7 * vcvtd_n_f64_u64(v12, 0x35uLL) + 0.0;
  if (v12 == 0x20000000000000)
  {
    v13 = v7;
  }

  sub_24DCAE6B8(v13);
  if (!__OFADD__(v1, 1))
  {
    *(v0 + 56) = v1 + 1;
    return;
  }

LABEL_13:
  __break(1u);
}

void sub_24DCADFF8(uint64_t a1@<X8>)
{
  sub_24DCADED0();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
}

double sub_24DCAE024@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  result = *(v1 + 40);
  v4 = *(v1 + 48);
  v5 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v5;
  *(a1 + 32) = v2;
  *(a1 + 40) = result;
  *(a1 + 48) = v4;
  *(a1 + 56) = 1;
  return result;
}

uint64_t sub_24DCAE04C()
{
  v1 = *(v0 + 16);
  v4[0] = *v0;
  v4[1] = v1;
  v4[2] = *(v0 + 32);
  v5 = *(v0 + 48);
  v2 = sub_24DCAE170(v4);
  sub_24DCAE870(v4);
  return v2;
}

long double *sub_24DCAE0A0(long double *a1, long double **a2, uint64_t a3)
{
  v5 = *v3;
  v6 = v3[1];
  v7 = v3[2];
  v8 = *(v3 + 6);
  return sub_24DCAE450(a1, a2, a3);
}

unint64_t sub_24DCAE0E4(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x253036550](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x253036550](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24DCAE170(void *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = *(a1 + 5);
  sub_24DCAE8A0(a1, v37);
  v6 = 0;
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v9 = (MEMORY[0x277D84F90] + 32);
  for (i = 1; ; v6 = i - 1)
  {
    v11 = pow(v5, v6);
    v12 = sub_24DCB5954();
    sub_24DCB5954();
    v14 = v11 * (v13 / 1.0e18 + v12);
    v15 = sub_24DCB5954();
    result = sub_24DCB5954();
    if (v17 / 1.0e18 + v15 < v14)
    {
      v14 = v17 / 1.0e18 + v15;
    }

    if (v14 < 0.0)
    {
      break;
    }

    if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_32;
    }

    do
    {
      v37[0] = 0;
      result = MEMORY[0x253036550](v37, 8);
    }

    while ((0x20000000000001 * v37[0]) < 0x1FFFFFFFFFF801);
    v18 = (v37[0] * 0x20000000000001uLL) >> 64;
    v19 = v14 * vcvtd_n_f64_u64(v18, 0x35uLL) + 0.0;
    if (v18 == 0x20000000000000)
    {
      v19 = v14;
    }

    if (v19 <= -9.22337204e18)
    {
      goto LABEL_33;
    }

    if (v19 >= 9.22337204e18)
    {
      goto LABEL_34;
    }

    v20 = (v19 - v19) * 1.0e18;
    v21 = COERCE__INT64(fabs(v20)) > 0x7FEFFFFFFFFFFFFFLL;
    if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v21)
    {
      goto LABEL_35;
    }

    if (v20 <= -9.22337204e18)
    {
      goto LABEL_36;
    }

    if (v20 >= 9.22337204e18)
    {
      goto LABEL_37;
    }

    result = sub_24DCB5964();
    v23 = __OFADD__(i++, 1);
    if (v23)
    {
      goto LABEL_38;
    }

    if (!v7)
    {
      v24 = v8[3];
      if (((v24 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_40;
      }

      v25 = v1;
      v26 = v22;
      v27 = result;
      v28 = v24 & 0xFFFFFFFFFFFFFFFELL;
      if (v28 <= 1)
      {
        v29 = 1;
      }

      else
      {
        v29 = v28;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F3F0, &unk_24DCBE768);
      v30 = swift_allocObject();
      v31 = _swift_stdlib_malloc_size(v30);
      v32 = v31 - 32;
      if (v31 < 32)
      {
        v32 = v31 - 17;
      }

      v33 = v32 >> 4;
      v30[2] = v29;
      v30[3] = 2 * (v32 >> 4);
      v34 = (v30 + 4);
      v35 = v8[3] >> 1;
      if (v8[2])
      {
        v36 = v8 + 4;
        if (v30 != v8 || v34 >= v36 + 16 * v35)
        {
          memmove(v30 + 4, v36, 16 * v35);
        }

        v8[2] = 0;
      }

      v9 = (v34 + 16 * v35);
      v7 = (v33 & 0x7FFFFFFFFFFFFFFFLL) - v35;

      v8 = v30;
      result = v27;
      v22 = v26;
      v1 = v25;
    }

    v23 = __OFSUB__(v7--, 1);
    if (v23)
    {
      goto LABEL_39;
    }

    *v9 = result;
    v9[1] = v22;
    v9 += 2;
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

long double *sub_24DCAE450(long double *result, long double **a2, uint64_t a3)
{
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = *(v3 + 5);
  v10 = v3[6];
  if (!a2)
  {
    v11 = 0;
LABEL_22:
    v14 = 1;
LABEL_23:
    *result = v4;
    *(result + 1) = v5;
    *(result + 2) = v6;
    *(result + 3) = v7;
    *(result + 4) = v8;
    result[5] = v9;
    *(result + 6) = v10;
    *(result + 7) = v14;
    return v11;
  }

  v11 = a3;
  if (!a3)
  {
    goto LABEL_22;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v12 = a2;
    v26 = v3[6];
    v27 = *v3;
    v28 = result;
    v13 = 0;
    v14 = 1;
    while (1)
    {
      v15 = pow(v9, (v14 - 1));
      v16 = sub_24DCB5954();
      sub_24DCB5954();
      v18 = v15 * (v17 / 1.0e18 + v16);
      v19 = sub_24DCB5954();
      result = sub_24DCB5954();
      if (v20 / 1.0e18 + v19 < v18)
      {
        v18 = v20 / 1.0e18 + v19;
      }

      if (v18 < 0.0)
      {
        break;
      }

      if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_25;
      }

      do
      {
        v29 = 0;
        result = MEMORY[0x253036550](&v29, 8);
      }

      while (0x20000000000001 * v29 < 0x1FFFFFFFFFF801);
      v21 = (v29 * 0x20000000000001uLL) >> 64;
      v22 = v18 * vcvtd_n_f64_u64(v21, 0x35uLL) + 0.0;
      if (v21 == 0x20000000000000)
      {
        v22 = v18;
      }

      if (v22 <= -9.22337204e18)
      {
        goto LABEL_26;
      }

      if (v22 >= 9.22337204e18)
      {
        goto LABEL_27;
      }

      v23 = (v22 - v22) * 1.0e18;
      v24 = COERCE__INT64(fabs(v23)) > 0x7FEFFFFFFFFFFFFFLL;
      if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v24)
      {
        goto LABEL_28;
      }

      if (v23 <= -9.22337204e18)
      {
        goto LABEL_29;
      }

      if (v23 >= 9.22337204e18)
      {
        goto LABEL_30;
      }

      result = sub_24DCB5964();
      if (v13 == 0x7FFFFFFFFFFFFFFELL)
      {
        goto LABEL_31;
      }

      ++v13;
      ++v14;
      *v12 = result;
      v12[1] = v25;
      v12 += 2;
      if (v13 == v11)
      {
        v4 = v27;
        result = v28;
        v10 = v26;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24DCAE6B8(double a1)
{
  if (a1 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (a1 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v1 = (a1 - a1) * 1.0e18;
  v2 = COERCE__INT64(fabs(v1)) > 0x7FEFFFFFFFFFFFFFLL;
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v2)
  {
    goto LABEL_10;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v1 < 9.22337204e18)
  {
    return sub_24DCB5964();
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_24DCAE764()
{
  result = qword_27F19F3E8;
  if (!qword_27F19F3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F19F3E8);
  }

  return result;
}

uint64_t sub_24DCAE7C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_24DCAE810(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24DCAE8D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 84);
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  v6 = *(v3 + 48);
  v7 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v7;
  *(a2 + 32) = v4;
  *(a2 + 40) = v5;
  *(a2 + 48) = v6;
}

uint64_t sub_24DCAE904@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v15 = *(a2 + 32);
  v16 = *(a2 + 40);
  v17 = *(a2 + 48);
  (*(*(a8 - 8) + 32))(a9, a1, a8);
  v18 = _s13RetryExecutorVMa();
  v19 = a9 + v18[21];
  v20 = *(a2 + 16);
  *v19 = *a2;
  *(v19 + 16) = v20;
  *(v19 + 32) = v15;
  *(v19 + 40) = v16;
  *(v19 + 48) = v17;
  sub_24DC49B94(a3, a9 + v18[22]);
  *(a9 + v18[23]) = a4;
  (*(*(a12 - 8) + 32))(a9 + v18[24], a5, a12);
  result = (*(*(a13 - 8) + 32))(a9 + v18[25], a6, a13);
  *(a9 + v18[26]) = a7;
  return result;
}

uint64_t sub_24DCAEAAC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 176) = a8;
  *(v9 + 184) = v8;
  *(v9 + 160) = a6;
  *(v9 + 168) = a7;
  *(v9 + 144) = a1;
  *(v9 + 152) = a5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v13 = sub_24DCB5904();
  *(v9 + 192) = v13;
  v14 = *(v13 - 8);
  *(v9 + 200) = v14;
  v15 = *(v14 + 64) + 15;
  *(v9 + 208) = swift_task_alloc();
  *(v9 + 216) = swift_task_alloc();
  *(v9 + 224) = *a2;
  v16 = *a3;
  *(v9 + 240) = *(a2 + 16);
  *(v9 + 248) = v16;
  *(v9 + 256) = *(a3 + 1);
  *(v9 + 272) = a3[3];
  v17 = *(a4 + 80);
  *(v9 + 80) = *(a4 + 64);
  *(v9 + 96) = v17;
  *(v9 + 112) = *(a4 + 96);
  *(v9 + 128) = *(a4 + 112);
  v18 = *(a4 + 16);
  *(v9 + 16) = *a4;
  *(v9 + 32) = v18;
  v19 = *(a4 + 48);
  *(v9 + 48) = *(a4 + 32);
  *(v9 + 64) = v19;

  return MEMORY[0x2822009F8](sub_24DCAEC10, 0, 0);
}

uint64_t sub_24DCAEC10()
{
  v1 = *(v0 + 272);
  v14 = *(v0 + 240);
  v15 = *(v0 + 256);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  v4 = *(v0 + 168);
  v5 = type metadata accessor for _RetryExecutorTask();
  v6 = swift_task_alloc();
  *(v0 + 280) = v6;
  v7 = *(v0 + 224);
  v8 = *(v0 + 152);
  *(v6 + 16) = *(v4 + 16);
  *(v6 + 24) = *(v4 + 24);
  *(v6 + 32) = *(v4 + 32);
  *(v6 + 48) = *(v4 + 48);
  *(v6 + 56) = v2;
  *(v6 + 64) = *(v4 + 56);
  *(v6 + 80) = *(v4 + 72);
  *(v6 + 88) = v3;
  *(v6 + 96) = v7;
  *(v6 + 112) = v14;
  *(v6 + 128) = v15;
  *(v6 + 144) = v1;
  *(v6 + 152) = v0 + 16;
  *(v6 + 160) = v8;
  v9 = *(MEMORY[0x277D858E8] + 4);
  v10 = swift_task_alloc();
  *(v0 + 288) = v10;
  *v10 = v0;
  v10[1] = sub_24DC49ED0;
  v11 = *(v0 + 216);
  v12 = *(v0 + 192);

  return MEMORY[0x282200600](v11, v5, v12, 0, 0, &unk_24DCBE790, v6, v5);
}

uint64_t sub_24DCAED90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 584) = v29;
  *(v8 + 568) = v28;
  *(v8 + 560) = v27;
  *(v8 + 552) = v26;
  *(v8 + 544) = v25;
  *(v8 + 512) = v23;
  *(v8 + 528) = v24;
  *(v8 + 480) = v21;
  *(v8 + 496) = v22;
  *(v8 + 464) = a7;
  *(v8 + 472) = a8;
  *(v8 + 448) = a5;
  *(v8 + 456) = a6;
  *(v8 + 432) = a3;
  *(v8 + 440) = a4;
  *(v8 + 416) = a1;
  *(v8 + 424) = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v9 = sub_24DCB5904();
  *(v8 + 592) = v9;
  v10 = *(v9 - 8);
  *(v8 + 600) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 608) = swift_task_alloc();
  v12 = sub_24DCB5414();
  *(v8 + 616) = v12;
  v13 = *(v12 - 8);
  *(v8 + 624) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 632) = swift_task_alloc();
  *(v8 + 640) = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F050, &qword_24DCB9EB0) - 8) + 64) + 15;
  *(v8 + 648) = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F000, &qword_24DCB9BC0) - 8) + 64) + 15;
  *(v8 + 656) = swift_task_alloc();
  v17 = sub_24DCB55B4();
  *(v8 + 664) = v17;
  v18 = *(v17 - 8);
  *(v8 + 672) = v18;
  *(v8 + 680) = *(v18 + 64);
  *(v8 + 688) = swift_task_alloc();
  *(v8 + 696) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24DCAF010, 0, 0);
}

uint64_t sub_24DCAF010()
{
  v89 = v0;
  v1 = (v0 + 440);
  v2 = *(v0 + 536);
  *(v0 + 136) = *(v0 + 520);
  v81 = (v0 + 328);
  v82 = v0 + 200;
  v3 = *(v0 + 672);
  v4 = *(v0 + 664);
  v5 = *(v0 + 656);
  v6 = *(v0 + 584);
  v7 = *(v0 + 552);
  v8 = *(v0 + 432);
  *(v0 + 152) = v2;
  *(v0 + 168) = v7;
  *(v0 + 176) = *(v0 + 568);
  *(v0 + 192) = v6;
  v79 = _s13RetryExecutorVMa();
  sub_24DC4982C(v8 + v79[22], v5, &qword_27F19F000, &qword_24DCB9BC0);
  if ((*(v3 + 48))(v5, 1, v4) == 1)
  {
    sub_24DC3DFD4(*(v0 + 656), &qword_27F19F000, &qword_24DCB9BC0);
  }

  else
  {
    v9 = *(v0 + 696);
    v10 = *(v0 + 688);
    v11 = *(v0 + 680);
    v12 = *(v0 + 672);
    v13 = *(v0 + 664);
    v14 = *(v0 + 648);
    v70 = *(v0 + 552);
    v76 = *(v0 + 424);
    v15 = *(v12 + 32);
    v62 = *(v0 + 536);
    v64 = *(v0 + 520);
    v83 = *(v0 + 560);
    v67 = *(v0 + 576);
    v73 = v9;
    v15(v9, *(v0 + 656), v13);
    v16 = sub_24DCB51C4();
    (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
    (*(v12 + 16))(v10, v9, v13);
    v17 = (*(v12 + 80) + 104) & ~*(v12 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = 0;
    *(v18 + 24) = 0;
    *(v18 + 32) = v64;
    *(v18 + 48) = v62;
    *(v18 + 64) = v70;
    *(v18 + 72) = v83;
    *(v18 + 88) = v67;
    v15(v18 + v17, v10, v13);
    type metadata accessor for _RetryExecutorTask();
    v19 = sub_24DCB5174();
    sub_24DC4B67C(v14, &unk_24DCBE878, v18, v19);
    sub_24DC3DFD4(v14, &qword_27F19F050, &qword_24DCB9EB0);
    (*(v12 + 8))(v73, v13);
  }

  v20 = *(v0 + 648);
  v21 = *(v0 + 520);
  v22 = *(v0 + 456);
  v23 = *(v0 + 424);
  v77 = *(v0 + 432);
  v24 = *(v77 + v79[26]);
  v65 = *(v0 + 528);
  v68 = *(v0 + 560);
  v71 = *(v0 + 576);
  v74 = *(v0 + 544);
  v84 = *v1;
  v25 = nullsub_1(*(v0 + 528));
  v26 = sub_24DC5CDE0(v25, v24);
  v28 = v27;
  *(v0 + 704) = v26;
  *(v0 + 712) = v27;
  v29 = sub_24DCB51C4();
  (*(*(v29 - 8) + 56))(v20, 1, 1, v29);
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  *(v30 + 32) = v21;
  *(v30 + 40) = v65;
  *(v30 + 56) = v74;
  *(v30 + 72) = v68;
  *(v30 + 88) = v71;
  *(v30 + 104) = v84;
  *(v30 + 120) = v22;
  *(v30 + 128) = v26;
  *(v30 + 136) = v28;
  type metadata accessor for _RetryExecutorTask();
  v31 = sub_24DCB5174();

  sub_24DC4B67C(v20, &unk_24DCBE858, v30, v31);
  sub_24DC3DFD4(v20, &qword_27F19F050, &qword_24DCB9EB0);
  v32 = v77 + v79[21];
  v33 = *v32;
  *(v0 + 720) = *v32;
  v34 = *(v32 + 40);
  v35 = *(v32 + 48);
  *&v87[0] = v33;
  *(v87 + 8) = *(v32 + 8);
  *(&v87[1] + 8) = *(v32 + 24);
  *(&v87[2] + 1) = v34;
  v88 = v35;

  sub_24DCADD48(v87, v81);
  v36 = *(v0 + 344);
  v87[0] = *v81;
  v87[1] = v36;
  v87[2] = *(v0 + 360);
  v88 = *(v0 + 376);
  result = sub_24DCADD6C(v82);
  if (v33 < 1)
  {
    __break(1u);
  }

  else
  {
    v85 = *(v0 + 584);
    v39 = *(v0 + 488);
    v38 = *(v0 + 496);
    v41 = *(v0 + 472);
    v40 = *(v0 + 480);
    v42 = *(v0 + 464);
    v43 = *(v0 + 424);
    v78 = *(v0 + 432);
    v80 = *(v0 + 456);
    v75 = *(v0 + 568);
    v44 = *(v75 + 48);
    *(v0 + 728) = v44;
    *(v0 + 736) = (v75 + 48) & 0xFFFFFFFFFFFFLL | 0xA05C000000000000;
    *(v0 + 744) = 1;
    *(v0 + 384) = v42;
    *(v0 + 392) = v41;
    *(v0 + 400) = v40;
    *(v0 + 408) = v39;
    v61 = *(v0 + 552);
    v63 = *(v0 + 536);
    v66 = *v1;
    v69 = *(v0 + 704);
    v60 = *(v0 + 520);
    v72 = *(v0 + 504);
    v45 = *v38;
    v46 = v38[1];
    v47 = v38[3];
    *(v0 + 48) = v38[2];
    *(v0 + 64) = v47;
    *(v0 + 16) = v45;
    *(v0 + 32) = v46;
    v48 = v38[4];
    v49 = v38[5];
    v50 = v38[6];
    *(v0 + 128) = *(v38 + 56);
    *(v0 + 96) = v49;
    *(v0 + 112) = v50;
    *(v0 + 80) = v48;
    v51 = swift_task_alloc();
    *(v0 + 752) = v51;
    *(v51 + 16) = v60;
    *(v51 + 32) = v63;
    *(v51 + 48) = v61;
    *(v51 + 64) = v75;
    *(v51 + 80) = v85;
    *(v51 + 88) = v43;
    *(v51 + 96) = v66;
    *(v51 + 112) = v80;
    *(v51 + 120) = v78;
    *(v51 + 128) = v69;
    *(v51 + 144) = v42;
    *(v51 + 152) = v41;
    *(v51 + 160) = v40;
    *(v51 + 168) = v39;
    *(v51 + 176) = 1;
    *(v51 + 184) = v72;
    *(v51 + 200) = v82;
    *(v51 + 208) = v81;
    v86 = (v44 + *v44);
    v52 = v44[1];
    v53 = swift_task_alloc();
    *(v0 + 760) = v53;
    *v53 = v0;
    v53[1] = sub_24DCAF678;
    v54 = *(v0 + 736);
    v55 = *(v0 + 640);
    v56 = *(v0 + 616);
    v57 = *(v0 + 568);
    v58 = *(v0 + 520);
    v59 = *(v0 + 432);

    return v86(v55, v0 + 384, v0 + 16, &unk_24DCBE868, v51, v56, v58, v57);
  }

  return result;
}

uint64_t sub_24DCAF678()
{
  v2 = *v1;
  v3 = *(*v1 + 760);
  v7 = *v1;
  *(*v1 + 768) = v0;

  if (v0)
  {
    v4 = sub_24DCAFBC4;
  }

  else
  {
    v5 = *(v2 + 752);

    v4 = sub_24DCAF794;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24DCAF794()
{
  v1 = (v0 + 200);
  v2 = *(v0 + 632);
  v3 = *(v0 + 600);
  v4 = *(v0 + 592);
  (*(*(v0 + 624) + 32))(v2, *(v0 + 640), *(v0 + 616));
  if ((*(v3 + 48))(v2, 1, v4) == 1)
  {
    v5 = *(v0 + 744);
    v6 = *(v0 + 720);
    result = (*(*(v0 + 624) + 8))(*(v0 + 632), *(v0 + 616));
    if (v5 == v6)
    {
      return sub_24DCB55E4();
    }

    else
    {
      v26 = *(v0 + 744);
      v27 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
      }

      else
      {
        *(v0 + 744) = v27;
        v28 = *(v0 + 736);
        v59 = *(v0 + 584);
        v61 = *(v0 + 728);
        v30 = *(v0 + 488);
        v29 = *(v0 + 496);
        v31 = *(v0 + 472);
        v32 = *(v0 + 480);
        v33 = *(v0 + 464);
        v57 = *(v0 + 432);
        v58 = *(v0 + 456);
        v56 = *(v0 + 424);
        *(v0 + 384) = v33;
        *(v0 + 392) = v31;
        *(v0 + 400) = v32;
        *(v0 + 408) = v30;
        v51 = *(v0 + 552);
        v52 = *(v0 + 536);
        v53 = *(v0 + 440);
        v54 = *(v0 + 704);
        v49 = *(v0 + 520);
        v50 = *(v0 + 568);
        v55 = *(v0 + 504);
        v34 = *v29;
        v35 = v29[1];
        v36 = v29[3];
        *(v0 + 48) = v29[2];
        *(v0 + 64) = v36;
        *(v0 + 16) = v34;
        *(v0 + 32) = v35;
        v37 = v29[4];
        v38 = v29[5];
        v39 = v29[6];
        *(v0 + 128) = *(v29 + 56);
        *(v0 + 96) = v38;
        *(v0 + 112) = v39;
        *(v0 + 80) = v37;
        v40 = swift_task_alloc();
        *(v0 + 752) = v40;
        *(v40 + 16) = v49;
        *(v40 + 32) = v52;
        *(v40 + 48) = v51;
        *(v40 + 64) = v50;
        *(v40 + 80) = v59;
        *(v40 + 88) = v56;
        *(v40 + 96) = v53;
        *(v40 + 112) = v58;
        *(v40 + 120) = v57;
        *(v40 + 128) = v54;
        *(v40 + 144) = v33;
        *(v40 + 152) = v31;
        *(v40 + 160) = v32;
        *(v40 + 168) = v30;
        *(v40 + 176) = v27;
        *(v40 + 184) = v55;
        *(v40 + 200) = v1;
        *(v40 + 208) = v0 + 328;
        v60 = (v61 + *v61);
        v41 = v61[1];
        v42 = swift_task_alloc();
        *(v0 + 760) = v42;
        *v42 = v0;
        v42[1] = sub_24DCAF678;
        v43 = *(v0 + 736);
        v44 = *(v0 + 640);
        v45 = *(v0 + 616);
        v46 = *(v0 + 568);
        v47 = *(v0 + 520);
        v48 = *(v0 + 432);

        return v60(v44, v0 + 384, v0 + 16, &unk_24DCBE868, v40, v45, v47, v46);
      }
    }
  }

  else
  {
    v8 = *(v0 + 712);
    v9 = *(v0 + 704);
    v10 = *(v0 + 632);
    v11 = *(v0 + 608);
    v12 = *(v0 + 600);
    v13 = *(v0 + 592);
    v14 = *(v0 + 416);

    sub_24DCAE870(v0 + 328);
    v15 = *(v12 + 32);
    v15(v11, v10, v13);
    v15(v14, v11, v13);
    v16 = *(v0 + 696);
    v17 = *(v0 + 688);
    v18 = *(v0 + 656);
    v19 = *(v0 + 648);
    v20 = *(v0 + 640);
    v21 = *(v0 + 632);
    v22 = *(v0 + 608);
    v23 = *(v0 + 216);
    *(v0 + 264) = *v1;
    *(v0 + 280) = v23;
    v24 = *(v0 + 248);
    *(v0 + 296) = *(v0 + 232);
    *(v0 + 312) = v24;
    sub_24DCB4368(v0 + 264);

    v25 = *(v0 + 8);

    return v25();
  }

  return result;
}

uint64_t sub_24DCAFBC4()
{
  v1 = *(v0 + 768);
  v2 = *(v0 + 752);
  v3 = *(v0 + 712);
  v4 = *(v0 + 704);
  v5 = *(v0 + 592);
  v6 = *(v0 + 416);

  sub_24DCAE870(v0 + 328);

  *v6 = v1;
  swift_storeEnumTagMultiPayload();
  v7 = *(v0 + 696);
  v8 = *(v0 + 688);
  v9 = *(v0 + 656);
  v10 = *(v0 + 648);
  v11 = *(v0 + 640);
  v12 = *(v0 + 632);
  v13 = *(v0 + 608);
  v14 = *(v0 + 216);
  *(v0 + 264) = *(v0 + 200);
  *(v0 + 280) = v14;
  v15 = *(v0 + 248);
  *(v0 + 296) = *(v0 + 232);
  *(v0 + 312) = v15;
  sub_24DCB4368(v0 + 264);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_24DCAFCF4(uint64_t a1, uint64_t a2)
{
  v22 = *(v2 + 24);
  v23 = *(v2 + 16);
  v4 = *(v2 + 32);
  v5 = *(v2 + 40);
  v6 = *(v2 + 48);
  v7 = *(v2 + 56);
  v8 = *(v2 + 64);
  v9 = *(v2 + 72);
  v10 = *(v2 + 80);
  v20 = *(v2 + 96);
  v21 = *(v2 + 88);
  v18 = *(v2 + 112);
  v19 = *(v2 + 104);
  v17 = *(v2 + 120);
  v11 = *(v2 + 128);
  v15 = *(v2 + 152);
  v16 = *(v2 + 136);
  v12 = *(v2 + 168);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_24DC334F4;

  return sub_24DCAED90(a1, a2, v21, v20, v19, v18, v17, v11);
}

uint64_t sub_24DCAFE30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v4[6] = v6;
  v4[4] = a1;
  return MEMORY[0x2822009F8](sub_24DCAFE5C, 0, 0);
}

uint64_t sub_24DCAFE5C()
{
  v1 = v0[5];
  v2 = swift_task_alloc();
  v0[7] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[8] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19ED58, &qword_24DCB79B0);
  *v3 = v0;
  v3[1] = sub_24DCAFF50;
  v5 = MEMORY[0x277D84F78] + 8;

  return sub_24DC8C5F4((v0 + 2), dword_24DCBE888, v2, v5, v4);
}

uint64_t sub_24DCAFF50()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24DCB0068, 0, 0);
}

uint64_t sub_24DCB0068()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  v3 = *(v0 + 24);
  *v2 = *(v0 + 16);
  *(v2 + 8) = v3;
  type metadata accessor for _RetryExecutorTask();
  swift_storeEnumTagMultiPayload();
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_24DCB00F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v4 = sub_24DCB55C4();
  v3[7] = v4;
  v5 = *(v4 - 8);
  v3[8] = v5;
  v6 = *(v5 + 64) + 15;
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24DCB01B0, 0, 0);
}

uint64_t sub_24DCB01B0()
{
  v1 = *(v0 + 72);
  *(v0 + 16) = sub_24DCB59A4();
  *(v0 + 24) = v2;
  *(v0 + 32) = 0;
  sub_24DCB5854();
  v3 = *(MEMORY[0x277D857F0] + 4);
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  v5 = sub_24DC8C3A4();
  *v4 = v0;
  v4[1] = sub_24DC4B464;
  v6 = *(v0 + 72);
  v7 = *(v0 + 56);
  v8 = *(v0 + 40);

  return MEMORY[0x282200488](v8, v0 + 16, v6, v7, v5);
}

uint64_t sub_24DCB027C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 144) = v14;
  *(v8 + 112) = v12;
  *(v8 + 128) = v13;
  *(v8 + 80) = v10;
  *(v8 + 96) = v11;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 32) = a1;
  *(v8 + 40) = a4;
  return MEMORY[0x2822009F8](sub_24DCB02C0, 0, 0);
}

uint64_t sub_24DCB02C0()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 72);
  v3 = swift_task_alloc();
  *(v0 + 152) = v3;
  v4 = *(v0 + 96);
  v5 = *(v0 + 112);
  v6 = *(v0 + 128);
  v7 = *(v0 + 40);
  v8 = *(v0 + 56);
  *(v3 + 16) = *(v0 + 80);
  *(v3 + 32) = v4;
  *(v3 + 48) = v5;
  *(v3 + 64) = v6;
  *(v3 + 80) = v1;
  *(v3 + 88) = v7;
  *(v3 + 104) = v8;
  *(v3 + 120) = v2;
  v9 = swift_task_alloc();
  *(v0 + 160) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19ED58, &qword_24DCB79B0);
  *v9 = v0;
  v9[1] = sub_24DCB03E4;
  v11 = MEMORY[0x277D84F78] + 8;

  return sub_24DC8C5F4(v0 + 16, &unk_24DCBE8B8, v3, v11, v10);
}

uint64_t sub_24DCB03E4()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 152);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24DCB04FC, 0, 0);
}

uint64_t sub_24DCB04FC()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 88);
  v3 = *(v0 + 72);
  v4 = *(v0 + 32);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  sub_24DC5E100(v5, v6);
  *v4 = v5;
  *(v4 + 8) = v6;
  type metadata accessor for _RetryExecutorTask();
  swift_storeEnumTagMultiPayload();
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_24DCB05A4(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 736) = v44;
  *(v8 + 728) = v43;
  *(v8 + 720) = v42;
  *(v8 + 712) = v41;
  *(v8 + 704) = v40;
  *(v8 + 696) = v39;
  *(v8 + 688) = v38;
  *(v8 + 680) = v37;
  *(v8 + 672) = v36;
  *(v8 + 664) = v35;
  *(v8 + 656) = v34;
  *(v8 + 624) = v32;
  *(v8 + 640) = v33;
  *(v8 + 592) = v30;
  *(v8 + 608) = v31;
  *(v8 + 584) = v29;
  *(v8 + 576) = a8;
  *(v8 + 568) = a7;
  *(v8 + 560) = a6;
  *(v8 + 552) = a5;
  *(v8 + 544) = a4;
  *(v8 + 536) = a2;
  *(v8 + 528) = a1;
  v10 = sub_24DCB55C4();
  *(v8 + 744) = v10;
  v11 = *(v10 - 8);
  *(v8 + 752) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 760) = swift_task_alloc();
  *(v8 + 768) = swift_task_alloc();
  v13 = sub_24DCB55B4();
  *(v8 + 776) = v13;
  v14 = *(v13 - 8);
  *(v8 + 784) = v14;
  v15 = *(v14 + 64) + 15;
  *(v8 + 792) = swift_task_alloc();
  *(v8 + 800) = swift_task_alloc();
  *(v8 + 808) = swift_task_alloc();
  *(v8 + 816) = swift_task_alloc();
  v16 = type metadata accessor for _RetryExecutorTask();
  *(v8 + 824) = v16;
  v17 = sub_24DCB5414();
  *(v8 + 832) = v17;
  v18 = *(v17 - 8);
  *(v8 + 840) = v18;
  v19 = *(v18 + 64) + 15;
  *(v8 + 848) = swift_task_alloc();
  v20 = *(v16 - 8);
  *(v8 + 856) = v20;
  v21 = *(v20 + 64) + 15;
  *(v8 + 864) = swift_task_alloc();
  *(v8 + 872) = swift_task_alloc();
  *(v8 + 192) = v36;
  *(v8 + 200) = v37;
  *(v8 + 208) = v38;
  *(v8 + 216) = v39;
  *(v8 + 224) = v40;
  *(v8 + 232) = v42;
  *(v8 + 240) = v43;
  *(v8 + 248) = v44;
  v22 = _s13RetryExecutorVMa();
  *(v8 + 880) = v22;
  v23 = *(v22 - 8);
  *(v8 + 888) = v23;
  *(v8 + 896) = *(v23 + 64);
  *(v8 + 904) = swift_task_alloc();
  v24 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F050, &qword_24DCB9EB0) - 8) + 64) + 15;
  *(v8 + 912) = swift_task_alloc();
  v25 = a3[1];
  *(v8 + 128) = *a3;
  *(v8 + 144) = v25;
  v26 = a3[3];
  *(v8 + 160) = a3[2];
  *(v8 + 176) = v26;

  return MEMORY[0x2822009F8](sub_24DCB0938, 0, 0);
}

uint64_t sub_24DCB0938()
{
  v1 = *(v0 + 912);
  v58 = v1;
  v2 = *(v0 + 904);
  v45 = *(v0 + 896);
  v3 = *(v0 + 888);
  v4 = *(v0 + 880);
  v39 = v4;
  v40 = v2;
  v59 = *(v0 + 824);
  v48 = *(v0 + 736);
  v56 = *(v0 + 640);
  v57 = *(v0 + 648);
  v54 = *(v0 + 624);
  v55 = *(v0 + 632);
  v52 = *(v0 + 608);
  v53 = *(v0 + 616);
  v50 = *(v0 + 592);
  v51 = *(v0 + 600);
  v49 = *(v0 + 584);
  v5 = *(v0 + 576);
  v47 = *(v0 + 568);
  v60 = *(v0 + 544);
  v6 = *(v0 + 536);
  v7 = sub_24DCB51C4();
  v42 = *(v0 + 672);
  v8 = *(v0 + 704);
  v43 = v8;
  v44 = *(v0 + 688);
  v41 = *(v0 + 720);
  v61 = *(v0 + 552);
  (*(*(v7 - 8) + 56))(v1, 1, 1, v7);
  (*(v3 + 16))(v2, v5, v4);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for RPCResponsePart();
  *(v0 + 920) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v9 = type metadata accessor for RPCAsyncSequence();
  type metadata accessor for RPCRequestPart();
  v10 = type metadata accessor for RPCWriter.Closable();
  WitnessTable = swift_getWitnessTable();
  v12 = swift_getWitnessTable();
  *(v0 + 448) = v9;
  *(v0 + 456) = v10;
  *(v0 + 464) = WitnessTable;
  *(v0 + 472) = v12;
  v13 = type metadata accessor for RPCStream();
  (*(*(v13 - 8) + 16))(v0 + 16, v6, v13);
  v14 = (*(v3 + 80) + 128) & ~*(v3 + 80);
  v15 = (v45 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 71) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 119) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 23) & 0xFFFFFFFFFFFFFFF8;
  v46 = (v18 + 39) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  *(v19 + 32) = v42;
  *(v19 + 48) = v44;
  *(v19 + 64) = v43;
  *(v19 + 80) = v41;
  *(v19 + 96) = v48;
  *(v19 + 104) = v61;
  *(v19 + 120) = v47;
  (*(v3 + 32))(v19 + v14, v40, v39);
  v20 = (v19 + v15);
  v21 = *(v0 + 144);
  v22 = *(v0 + 160);
  v23 = *(v0 + 112);
  *v20 = *(v0 + 128);
  v20[1] = v21;
  v24 = *(v0 + 176);
  v20[2] = v22;
  v20[3] = v24;
  v25 = (v19 + v16);
  v26 = *(v0 + 32);
  *v25 = *(v0 + 16);
  v25[1] = v26;
  v27 = *(v0 + 80);
  v25[5] = *(v0 + 96);
  v25[6] = v23;
  v28 = *(v0 + 64);
  v25[2] = *(v0 + 48);
  v25[3] = v28;
  v25[4] = v27;
  v29 = (v19 + v17);
  *v29 = v49;
  v29[1] = v50;
  v30 = (v19 + v18);
  *v30 = v51;
  v30[1] = v52;
  v30[2] = v53;
  v30[3] = v54;
  *(v19 + v46) = v55;
  v31 = (v19 + ((v46 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v31 = v56;
  v31[1] = v57;

  sub_24DC56148(v0 + 128, v0 + 256);
  v32 = sub_24DCB5174();
  *(v0 + 928) = v32;

  sub_24DC4B67C(v58, &unk_24DCBE898, v19, v32);
  sub_24DC3DFD4(v58, &qword_27F19F050, &qword_24DCB9EB0);
  v33 = *(MEMORY[0x277D856A0] + 4);
  v34 = swift_task_alloc();
  *(v0 + 936) = v34;
  *v34 = v0;
  v34[1] = sub_24DCB0DF4;
  v35 = *(v0 + 928);
  v36 = *(v0 + 848);
  v37 = *(v0 + 544);

  return MEMORY[0x2822002D0](v36, 0, 0, v35);
}

uint64_t sub_24DCB0DF4()
{
  v1 = *(*v0 + 936);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_24DCB0EF0, 0, 0);
}

uint64_t sub_24DCB0EF0()
{
  v1 = *(v0 + 856);
  v2 = *(v0 + 848);
  v3 = *(v0 + 824);
  if ((*(v1 + 48))(v2, 1, v3) == 1)
  {
    (*(*(v0 + 840) + 8))(v2, *(v0 + 832));
    v4 = *(v0 + 920);
    v5 = *(v0 + 712);
    v6 = sub_24DCB5904();
    v7 = *(v6 - 8);
    v8 = 1;
LABEL_3:
    v9 = *(v0 + 912);
    v10 = *(v0 + 904);
    v11 = *(v0 + 872);
    v12 = *(v0 + 864);
    v13 = *(v0 + 848);
    v14 = *(v0 + 816);
    v15 = *(v0 + 808);
    v78 = *(v0 + 800);
    v79 = *(v0 + 792);
    v16 = *(v0 + 768);
    v80 = *(v0 + 760);
    (*(v7 + 56))(*(v0 + 528), v8, 1, v6);

    v17 = *(v0 + 8);

    return v17();
  }

  v19 = *(v0 + 872);
  v20 = *(v0 + 864);
  (*(v1 + 32))(v19, v2, v3);
  (*(v1 + 16))(v20, v19, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v44 = *(v0 + 920);
      v45 = *(v0 + 872);
      v46 = *(v0 + 864);
      v47 = *(v0 + 856);
      v48 = *(v0 + 824);
      v49 = *(v0 + 712);
      v50 = *(v0 + 544);
      v51 = *(v0 + 528);
      v6 = sub_24DCB5904();
      v7 = *(v6 - 8);
      (*(v7 + 32))(v51, v46, v6);
      v52 = *v50;
      sub_24DCB5164();
      (*(v47 + 8))(v45, v48);
      v8 = 0;
      goto LABEL_3;
    }

    v22 = *(v0 + 864);
    if (*(v22 + 8) == 1)
    {
      sub_24DC57738(*v22, 1);
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (EnumCaseMultiPayload != 2)
  {
    v53 = *(v0 + 864);
    if (*(v53 + 8) != 1)
    {
      goto LABEL_18;
    }

    sub_24DC57738(*v53, 1);
LABEL_17:
    v54 = *(v0 + 824);
    v55 = **(v0 + 544);
    sub_24DCB5164();
LABEL_18:
    (*(*(v0 + 856) + 8))(*(v0 + 872), *(v0 + 824));
    v56 = *(MEMORY[0x277D856A0] + 4);
    v57 = swift_task_alloc();
    *(v0 + 936) = v57;
    *v57 = v0;
    v57[1] = sub_24DCB0DF4;
    v29 = *(v0 + 928);
    v26 = *(v0 + 848);
    v58 = *(v0 + 544);
    v27 = 0;
    v28 = 0;

    return MEMORY[0x2822002D0](v26, v27, v28, v29);
  }

  v23 = *(v0 + 864);
  if (*(v23 + 16) == 1)
  {
    v24 = *(v0 + 808);
    v25 = *(v0 + 656);
    sub_24DCB5584();
    sub_24DCADED0();
    if (v28)
    {
      __break(1u);
      return MEMORY[0x2822002D0](v26, v27, v28, v29);
    }

    v30 = *(v0 + 816);
    v31 = *(v0 + 808);
    v32 = *(v0 + 784);
    v33 = *(v0 + 776);
    v34 = *(v0 + 760);
    sub_24DCB5594();
    v35 = *(v32 + 8);
    *(v0 + 968) = v35;
    *(v0 + 976) = (v32 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v35(v31, v33);
    *(v0 + 480) = sub_24DCB59A4();
    *(v0 + 488) = v36;
    *(v0 + 496) = 0;
    sub_24DCB5854();
    v37 = *(MEMORY[0x277D857F0] + 4);
    v38 = swift_task_alloc();
    *(v0 + 984) = v38;
    v39 = sub_24DC8C3A4();
    *v38 = v0;
    v38[1] = sub_24DCB1800;
    v40 = *(v0 + 816);
    v41 = *(v0 + 760);
    v42 = *(v0 + 744);
    v43 = v0 + 480;
  }

  else
  {
    v59 = *(v0 + 800);
    v60 = *(v0 + 792);
    v61 = *(v0 + 784);
    v62 = *(v0 + 776);
    v63 = *(v0 + 768);
    v64 = *(v0 + 664);
    v65 = *(v0 + 656);
    v67 = *v23;
    v66 = v23[1];
    v81 = *v64;
    v82 = v64[1];
    v83 = v64[2];
    v84 = *(v64 + 6);
    sub_24DCADD6C(v0 + 384);
    v68 = *v65;
    v69 = v65[1];
    v70 = v65[3];
    *(v0 + 352) = v65[2];
    *(v0 + 368) = v70;
    *(v0 + 320) = v68;
    *(v0 + 336) = v69;
    v71 = *(v0 + 384);
    v72 = *(v0 + 400);
    v73 = *(v0 + 432);
    v65[2] = *(v0 + 416);
    v65[3] = v73;
    *v65 = v71;
    v65[1] = v72;
    sub_24DCB4368(v0 + 320);
    sub_24DCB5584();
    sub_24DCB5594();
    v74 = *(v61 + 8);
    *(v0 + 944) = v74;
    *(v0 + 952) = (v61 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v74(v60, v62);
    *(v0 + 504) = sub_24DCB59A4();
    *(v0 + 512) = v75;
    *(v0 + 520) = 0;
    sub_24DCB5854();
    v76 = *(MEMORY[0x277D857F0] + 4);
    v77 = swift_task_alloc();
    *(v0 + 960) = v77;
    v39 = sub_24DC8C3A4();
    *v77 = v0;
    v77[1] = sub_24DCB14E8;
    v40 = *(v0 + 800);
    v41 = *(v0 + 768);
    v42 = *(v0 + 744);
    v43 = v0 + 504;
  }

  return MEMORY[0x282200488](v40, v43, v41, v42, v39);
}

uint64_t sub_24DCB14E8()
{
  v2 = *v1;
  v3 = *(*v1 + 960);
  v16 = *v1;

  if (v0)
  {
    v4 = v2[119];
    v5 = v2[118];
    v6 = v2[100];
    v7 = v2[97];
    v8 = v2[96];
    v9 = v2[94];
    v10 = v2[93];
    MEMORY[0x2530363B0](v0);
    (*(v9 + 8))(v8, v10);
    v5(v6, v7);
  }

  else
  {
    v11 = v2[119];
    v12 = v2[118];
    v13 = v2[100];
    v14 = v2[97];
    (*(v2[94] + 8))(v2[96], v2[93]);
    v12(v13, v14);
  }

  return MEMORY[0x2822009F8](sub_24DCB1690, 0, 0);
}

uint64_t sub_24DCB1690()
{
  (*(v0[107] + 8))(v0[109], v0[103]);
  v1 = v0[115];
  v2 = v0[89];
  v3 = sub_24DCB5904();
  v4 = v0[114];
  v5 = v0[113];
  v6 = v0[109];
  v7 = v0[108];
  v8 = v0[106];
  v9 = v0[102];
  v10 = v0[101];
  v11 = v0[100];
  v12 = v0[99];
  v13 = v0[96];
  v16 = v0[95];
  (*(*(v3 - 8) + 56))(v0[66], 1, 1, v3);

  v14 = v0[1];

  return v14();
}

uint64_t sub_24DCB1800()
{
  v2 = *v1;
  v3 = *(*v1 + 984);
  v16 = *v1;

  if (v0)
  {
    v4 = v2[122];
    v5 = v2[121];
    v6 = v2[102];
    v7 = v2[97];
    v8 = v2[95];
    v9 = v2[94];
    v10 = v2[93];
    MEMORY[0x2530363B0](v0);
    (*(v9 + 8))(v8, v10);
    v5(v6, v7);
  }

  else
  {
    v11 = v2[122];
    v12 = v2[121];
    v13 = v2[102];
    v14 = v2[97];
    (*(v2[94] + 8))(v2[95], v2[93]);
    v12(v13, v14);
  }

  return MEMORY[0x2822009F8](sub_24DCB1690, 0, 0);
}

uint64_t sub_24DCB19A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 352) = v23;
  *(v8 + 360) = v24;
  *(v8 + 320) = v21;
  *(v8 + 336) = v22;
  *(v8 + 288) = v19;
  *(v8 + 304) = v20;
  *(v8 + 256) = v17;
  *(v8 + 272) = v18;
  *(v8 + 224) = v15;
  *(v8 + 240) = v16;
  *(v8 + 208) = a7;
  *(v8 + 216) = a8;
  *(v8 + 192) = a1;
  *(v8 + 200) = a4;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F19F000, &qword_24DCB9BC0) - 8) + 64) + 15;
  *(v8 + 368) = swift_task_alloc();
  v10 = sub_24DCB55B4();
  *(v8 + 376) = v10;
  v11 = *(v10 - 8);
  *(v8 + 384) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 392) = swift_task_alloc();
  *(v8 + 400) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24DCB1AEC, 0, 0);
}

uint64_t sub_24DCB1AEC()
{
  v1 = *(v0 + 312);
  *(v0 + 16) = *(v0 + 296);
  v2 = (v0 + 200);
  *(v0 + 176) = *(v0 + 200);
  v3 = *(v0 + 376);
  v4 = *(v0 + 384);
  v5 = *(v0 + 360);
  v6 = *(v0 + 368);
  v7 = *(v0 + 328);
  v8 = *(v0 + 208);
  *(v0 + 32) = v1;
  *(v0 + 48) = v7;
  *(v0 + 56) = *(v0 + 344);
  *(v0 + 72) = v5;
  v9 = _s13RetryExecutorVMa();
  sub_24DC4982C(v8 + *(v9 + 88), v6, &qword_27F19F000, &qword_24DCB9BC0);
  if ((*(v4 + 48))(v6, 1, v3) == 1)
  {
    v10 = *(v0 + 368);
    v11 = *(v0 + 200);

    sub_24DC3DFD4(v10, &qword_27F19F000, &qword_24DCB9BC0);
  }

  else
  {
    v12 = *(v0 + 392);
    v13 = *(v0 + 400);
    v14 = *(v0 + 376);
    v15 = *(v0 + 384);
    v16 = *(v0 + 200);
    (*(v15 + 32))(v13, *(v0 + 368), v14);

    sub_24DCB5574();
    v17 = sub_24DCB55A4();
    v19 = v18;
    v20 = *(v15 + 8);
    v20(v12, v14);
    sub_24DC7F3A0(v17, v19, 0);
    v20(v13, v14);
    v2 = (v0 + 176);
  }

  v21 = *v2;
  v22 = *(v0 + 344);
  v23 = *(v0 + 296);
  v25 = *(v0 + 256);
  v24 = *(v0 + 264);
  v26 = *(v0 + 240);
  v27 = *(v0 + 216);
  v28 = v27[3];
  v30 = *v27;
  v29 = v27[1];
  *(v0 + 112) = v27[2];
  *(v0 + 128) = v28;
  *(v0 + 184) = v21;
  *(v0 + 80) = v30;
  *(v0 + 96) = v29;
  *(v0 + 144) = v26;
  *(v0 + 160) = v25;
  *(v0 + 168) = v24;
  v31 = swift_task_alloc();
  *(v0 + 408) = v31;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  *v31 = v0;
  v31[1] = sub_24DCB1D98;
  v33 = *(v0 + 280);
  v34 = *(v0 + 272);
  v35 = *(v0 + 224);
  v36 = *(v0 + 232);
  v37 = *(v0 + 208);
  v42 = *(v0 + 336);
  v41 = *(v0 + 288);
  v38 = *(v0 + 192);

  return sub_24DCB1F24(v38, (v0 + 80), v35, (v0 + 184), v36, v32, v34, v33);
}

uint64_t sub_24DCB1D98()
{
  v1 = *v0;
  v2 = *(*v0 + 408);
  v5 = *v0;

  v3 = *(v1 + 184);

  return MEMORY[0x2822009F8](sub_24DCB1EB0, 0, 0);
}

uint64_t sub_24DCB1EB0()
{
  v2 = v0[49];
  v1 = v0[50];
  v3 = v0[46];

  v4 = v0[1];

  return v4();
}

uint64_t sub_24DCB1F24(uint64_t a1, _OWORD *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 152) = v15;
  *(v9 + 160) = v8;
  *(v9 + 136) = v14;
  *(v9 + 120) = v13;
  *(v9 + 104) = a7;
  *(v9 + 112) = a8;
  *(v9 + 88) = a3;
  *(v9 + 96) = a5;
  *(v9 + 80) = a1;
  v10 = a2[1];
  *(v9 + 16) = *a2;
  *(v9 + 32) = v10;
  v11 = a2[3];
  *(v9 + 48) = a2[2];
  *(v9 + 64) = v11;
  *(v9 + 168) = *a4;
  return MEMORY[0x2822009F8](sub_24DCB1F7C, 0, 0);
}

uint64_t sub_24DCB1F7C()
{
  v1 = *(v0 + 168);
  v18 = *(v0 + 160);
  v2 = *(v0 + 152);
  v3 = *(v0 + 128);
  v5 = *(v0 + 96);
  v4 = *(v0 + 104);
  v6 = *(v0 + 88);
  v7 = swift_task_alloc();
  *(v0 + 176) = v7;
  v8 = *(v3 + 16);
  v17 = *(v0 + 136);
  v9 = type metadata accessor for _RetryExecutorTask();
  v10 = *(v0 + 112);
  *(v7 + 16) = v8;
  *(v7 + 24) = *(v3 + 24);
  *(v7 + 32) = *(v3 + 32);
  *(v7 + 48) = *(v3 + 48);
  *(v7 + 56) = v17;
  *(v7 + 72) = *(v3 + 56);
  *(v7 + 88) = *(v3 + 72);
  *(v7 + 96) = v2;
  *(v7 + 104) = v1;
  *(v7 + 112) = v5;
  *(v7 + 120) = v0 + 16;
  *(v7 + 128) = v4;
  *(v7 + 136) = v18;
  *(v7 + 144) = v6;
  *(v7 + 152) = v10;
  v11 = *(MEMORY[0x277D858E8] + 4);
  v12 = swift_task_alloc();
  *(v0 + 184) = v12;
  *v12 = v0;
  v12[1] = sub_24DCB210C;
  v13 = *(v0 + 80);
  v14 = MEMORY[0x277D84F78] + 8;
  v15 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200600](v13, v14, v9, 0, 0, &unk_24DCBE7A8, v7, v15);
}

uint64_t sub_24DCB210C()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_24DCB221C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 440) = v21;
  *(v8 + 424) = v20;
  *(v8 + 408) = v19;
  *(v8 + 392) = v17;
  *(v8 + 400) = v18;
  *(v8 + 376) = v16;
  *(v8 + 360) = v15;
  *(v8 + 344) = v14;
  *(v8 + 328) = a7;
  *(v8 + 336) = a8;
  *(v8 + 312) = a5;
  *(v8 + 320) = a6;
  *(v8 + 296) = a3;
  *(v8 + 304) = a4;
  *(v8 + 280) = a1;
  *(v8 + 288) = a2;
  *(v8 + 448) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
  v9 = sub_24DCB5904();
  *(v8 + 456) = v9;
  v10 = *(v9 - 8);
  *(v8 + 464) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 472) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24DCB2358, 0, 0);
}

uint64_t sub_24DCB2358()
{
  v37 = v0;
  v1 = *(v0 + 416);
  v30 = *(v0 + 408);
  v3 = *(v0 + 376);
  v2 = *(v0 + 384);
  v5 = *(v0 + 360);
  v4 = *(v0 + 368);
  v33 = *(v0 + 328);
  v34 = *(v0 + 424);
  v7 = *(v0 + 304);
  v6 = *(v0 + 312);
  v48 = *(v0 + 296);
  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  *(v8 + 24) = v4;
  *(v8 + 32) = v3;
  *(v8 + 40) = v2;
  v32 = *(v0 + 392);
  *(v8 + 48) = v32;
  *(v8 + 64) = v30;
  *(v8 + 72) = v1;
  *(v8 + 80) = v34;
  v31 = *(v0 + 432);
  *(v8 + 88) = v31;
  *(v8 + 104) = v7;

  nullsub_1(v4);
  StreamingClientRequest.init(of:metadata:producer:)(&v48, &unk_24DCBE830, v8, &v35);
  v9 = v36;
  *(v0 + 488) = v36;
  v10 = v35;
  *(v0 + 480) = v35;
  v11 = *v6;
  v12 = v6[1];
  v13 = v6[3];
  *(v0 + 48) = v6[2];
  *(v0 + 64) = v13;
  *(v0 + 16) = v11;
  *(v0 + 32) = v12;
  *(v0 + 256) = v10;
  *(v0 + 272) = v9;
  *(v0 + 80) = v5;
  *(v0 + 88) = v4;
  *(v0 + 96) = v3;
  *(v0 + 104) = v2;
  *(v0 + 112) = v32;
  *(v0 + 120) = v1;
  *(v0 + 128) = v34;
  *(v0 + 136) = v31;
  v14 = _s13RetryExecutorVMa();
  *(v0 + 496) = v14;
  v16 = v14[24];
  v15 = v14[25];
  v17 = *(v33 + v14[23]);
  v18 = swift_task_alloc();
  *(v0 + 504) = v18;
  *v18 = v0;
  v18[1] = sub_24DCB2584;
  v20 = *(v0 + 432);
  v19 = *(v0 + 440);
  v21 = *(v0 + 408);
  v23 = *(v0 + 384);
  v22 = *(v0 + 392);
  v25 = *(v0 + 368);
  v24 = *(v0 + 376);
  v26 = *(v0 + 336);
  v27 = *(v0 + 320);
  v28 = *(v0 + 288);
  v46 = *(v0 + 424);
  v47 = v20;
  v44 = v22;
  v45 = v19;
  v42 = v21;
  v43 = v23;
  v40 = v25;
  v41 = v24;
  v39 = v26;

  return sub_24DC81E14(v0 + 144, v28, v0 + 16, v0 + 256, v27, v33 + v16, v33 + v15, v17);
}

uint64_t sub_24DCB2584()
{
  v1 = *(*v0 + 504);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_24DCB2680, 0, 0);
}

uint64_t sub_24DCB2680()
{
  v46 = v0;
  v1 = *(v0 + 376);
  type metadata accessor for StreamingClientResponse.Contents();
  sub_24DC2E0D8();
  v2 = sub_24DCB5904();
  v3 = *(v2 - 8);
  (*(v3 + 16))(v0 + 200, v0 + 144, v2);
  if ((*(v0 + 248) & 1) == 0)
  {
    v15 = *(v0 + 328);
    if ((*(*(v0 + 416) + 24))(*(v0 + 360)))
    {
      sub_24DC93230();
    }

    (*(v3 + 8))(v0 + 200, v2);
    goto LABEL_21;
  }

  v4 = *(v0 + 496);
  v5 = *(v0 + 416);
  v6 = *(v0 + 360);
  v7 = *(v0 + 328);
  v9 = *(v0 + 216);
  v8 = *(v0 + 224);
  v10 = *(v0 + 232);
  v44 = *(v0 + 200);
  Status.Code.init(_:)(&v44);
  v11 = (v7 + *(v4 + 84));
  LOBYTE(v4) = sub_24DC529CC(v43, v11[6]);
  v12 = (*(v5 + 24))(v6, v5);
  if ((v4 & 1) == 0)
  {
    if (v12)
    {
      sub_24DC93230();

      MEMORY[0x2530363B0](v10);
    }

    else
    {

      MEMORY[0x2530363B0](v10);
    }

    goto LABEL_21;
  }

  if (v12)
  {
    v13 = sub_24DC93278();

    v14 = !v13;
  }

  else
  {
    v14 = 1;
  }

  v45 = v8;
  v16 = sub_24DC7F274();
  v18 = v17;
  v20 = v19;

  MEMORY[0x2530363B0](v10);
  if ((v20 & 0x100) != 0)
  {
    if (((*v11 > *(v0 + 320)) & v14) == 0)
    {
      goto LABEL_21;
    }

    v18 = 0;
    v16 = 0;
  }

  else if ((v20 & 1) != 0 || ((*v11 > *(v0 + 320)) & v14) != 1)
  {
    goto LABEL_21;
  }

  v21 = *(v0 + 368);
  v22 = *(v0 + 304);
  sub_24DC5CFCC();
  if (sub_24DC5CF1C())
  {
    v23 = *(v0 + 480);
    v24 = *(v0 + 488);
    v25 = *(v0 + 400);
    v26 = *(v0 + 280);

    *v26 = v16;
    *(v26 + 8) = v18;
    *(v26 + 16) = HIBYTE(v20) & 1;
    type metadata accessor for _RetryExecutorTask();
    swift_storeEnumTagMultiPayload();
    v27 = *(v0 + 472);
    v28 = *(v0 + 376);
    v29 = type metadata accessor for StreamingClientResponse();
    (*(*(v29 - 8) + 8))(v0 + 144, v29);

    v30 = *(v0 + 8);

    return v30();
  }

LABEL_21:
  v32 = *(v0 + 440);
  v33 = swift_task_alloc();
  *(v0 + 512) = v33;
  v34 = *(v0 + 376);
  v35 = *(v0 + 392);
  v36 = *(v0 + 408);
  v37 = *(v0 + 424);
  v38 = *(v0 + 344);
  *(v33 + 16) = *(v0 + 360);
  *(v33 + 32) = v34;
  *(v33 + 48) = v35;
  *(v33 + 64) = v36;
  *(v33 + 80) = v37;
  *(v33 + 96) = v32;
  *(v33 + 104) = v38;
  *(v33 + 120) = v0 + 144;
  v39 = swift_task_alloc();
  *(v0 + 520) = v39;
  *v39 = v0;
  v39[1] = sub_24DCB2AA0;
  v40 = *(v0 + 472);
  v41 = *(v0 + 448);
  v42 = *(v0 + 400);

  return sub_24DC8C5F4(v40, dword_24DCBE840, v33, v42, v41);
}

uint64_t sub_24DCB2AA0()
{
  v1 = *(*v0 + 520);
  v2 = *(*v0 + 512);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24DCB2BB8, 0, 0);
}

uint64_t sub_24DCB2BB8()
{
  v1 = v0[60];
  v2 = v0[61];
  v4 = v0[58];
  v3 = v0[59];
  v5 = v0[57];
  v6 = v0[50];
  v7 = v0[35];

  (*(v4 + 32))(v7, v3, v5);
  type metadata accessor for _RetryExecutorTask();
  swift_storeEnumTagMultiPayload();
  v8 = v0[59];
  v9 = v0[47];
  v10 = type metadata accessor for StreamingClientResponse();
  (*(*(v10 - 8) + 8))(v0 + 18, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_24DCB2CC0(uint64_t a1, uint64_t a2)
{
  v18 = *(v2 + 32);
  v19 = *(v2 + 16);
  v16 = *(v2 + 64);
  v17 = *(v2 + 48);
  v5 = *(v2 + 96);
  v6 = *(v2 + 104);
  v7 = *(v2 + 112);
  v8 = *(v2 + 120);
  v9 = *(v2 + 128);
  v10 = *(v2 + 136);
  v11 = *(v2 + 144);
  v14 = *(v2 + 152);
  v15 = *(v2 + 80);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_24DC2FD00;

  return sub_24DCB221C(a1, a2, v6, v7, v8, v9, v10, v11);
}

void sub_24DCB2DFC(void *a1)
{
  v2 = a1[2];
  swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    sub_24DC8C078();
    if (v4 <= 0x3F)
    {
      sub_24DC547E8();
      if (v5 <= 0x3F)
      {
        v6 = a1[5];
        swift_checkMetadataState();
        if (v7 <= 0x3F)
        {
          v8 = a1[6];
          swift_checkMetadataState();
          if (v9 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_24DCB2EE4(_DWORD *a1, unsigned int a2, void *a3)
{
  v54 = a3[2];
  v6 = *(v54 - 8);
  v53 = v6;
  v7 = *(v6 + 84);
  v8 = *(sub_24DCB55B4() - 8);
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

  if (v7 <= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v7;
  }

  v13 = a3[6];
  v14 = *(a3[5] - 8);
  v15 = v14;
  v16 = *(v14 + 84);
  v17 = *(v13 - 8);
  if (v12 <= v16)
  {
    v18 = *(v14 + 84);
  }

  else
  {
    v18 = v12;
  }

  v19 = *(v13 - 8);
  v20 = *(v17 + 84);
  v21 = *(v6 + 64);
  v22 = *(v8 + 80);
  v23 = *(v8 + 64);
  v24 = *(v14 + 80);
  v25 = *(v14 + 64);
  v26 = *(v17 + 80);
  v27 = *(v17 + 64);
  if (v18 <= v20)
  {
    v28 = *(v17 + 84);
  }

  else
  {
    v28 = v18;
  }

  if (v28 <= 0x7FFFFFFF)
  {
    v29 = 0x7FFFFFFF;
  }

  else
  {
    v29 = v28;
  }

  if (v10)
  {
    v30 = v23;
  }

  else
  {
    v30 = v23 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v31 = v30 + 7;
  v32 = v24 + 8;
  v33 = v25 + v26;
  if (v29 < a2)
  {
    v34 = ((v27 + ((v33 + ((v32 + ((v31 + ((v22 + ((v21 + 7) & 0xFFFFFFFFFFFFFFF8) + 56) & ~v22)) & 0xFFFFFFFFFFFFFFF8)) & ~v24)) & ~v26) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v35 = a2 - v29;
    v36 = v34 & 0xFFFFFFF8;
    if ((v34 & 0xFFFFFFF8) != 0)
    {
      v37 = 2;
    }

    else
    {
      v37 = v35 + 1;
    }

    if (v37 >= 0x10000)
    {
      v38 = 4;
    }

    else
    {
      v38 = 2;
    }

    if (v37 < 0x100)
    {
      v38 = 1;
    }

    if (v37 < 2)
    {
      v38 = 0;
    }

    if (v38 > 1)
    {
      if (v38 == 2)
      {
        v39 = *(a1 + v34);
        if (v39)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v39 = *(a1 + v34);
        if (v39)
        {
          goto LABEL_34;
        }
      }
    }

    else if (v38)
    {
      v39 = *(a1 + v34);
      if (v39)
      {
LABEL_34:
        v40 = v39 - 1;
        if (v36)
        {
          v40 = 0;
          v41 = *a1;
        }

        else
        {
          v41 = 0;
        }

        return v29 + (v41 | v40) + 1;
      }
    }
  }

  if (v7 == v29)
  {
    v42 = v54;
    v43 = *(v53 + 48);
    v44 = a1;
    v45 = v7;
LABEL_42:

    return v43(v44, v45, v42);
  }

  v47 = (a1 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  if ((v28 & 0x80000000) == 0)
  {
    v48 = *(v47 + 48);
    if (v48 >= 0xFFFFFFFF)
    {
      LODWORD(v48) = -1;
    }

    return (v48 + 1);
  }

  v49 = (v47 + v22 + 56) & ~v22;
  if (v11 == v29)
  {
    if (v10 >= 2)
    {
      v52 = (*(v9 + 48))(v49);
      if (v52 >= 2)
      {
        return v52 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v50 = (v32 + ((v31 + v49) & 0xFFFFFFFFFFFFFFF8)) & ~v24;
  if (v16 != v29)
  {
    v43 = *(*(v13 - 8) + 48);
    v44 = ((v33 + v50) & ~v26);
    v45 = v20;
    v42 = v13;
    goto LABEL_42;
  }

  v51 = *(v15 + 48);

  return v51(v50, v16);
}

void sub_24DCB32BC(_DWORD *a1, uint64_t a2, unsigned int a3, void *a4)
{
  v8 = a4[2];
  v9 = *(v8 - 8);
  v47 = v9;
  v10 = *(v9 + 84);
  v11 = 0;
  v12 = *(sub_24DCB55B4() - 8);
  v13 = v12;
  v14 = *(v12 + 84);
  if (v14)
  {
    v15 = v14 - 1;
  }

  else
  {
    v15 = 0;
  }

  v16 = a4[5];
  v17 = *(v16 - 8);
  if (v10 <= v15)
  {
    v18 = v15;
  }

  else
  {
    v18 = v10;
  }

  v19 = *(a4[5] - 8);
  v20 = *(v17 + 84);
  if (v18 <= v20)
  {
    v21 = *(v17 + 84);
  }

  else
  {
    v21 = v18;
  }

  v22 = a4[6];
  v23 = *(v22 - 8);
  v24 = *(v23 + 84);
  v25 = *(v9 + 64);
  v26 = *(v12 + 80);
  v27 = *(v12 + 64);
  v28 = *(v17 + 80);
  v29 = *(v17 + 64);
  v30 = *(v23 + 80);
  if (v21 <= v24)
  {
    v31 = *(v23 + 84);
  }

  else
  {
    v31 = v21;
  }

  if (v31 <= 0x7FFFFFFF)
  {
    v32 = 0x7FFFFFFF;
  }

  else
  {
    v32 = v31;
  }

  if (v14)
  {
    v33 = v27;
  }

  else
  {
    v33 = v27 + 1;
  }

  v34 = v33 + 7;
  v35 = ((*(v23 + 64) + ((v29 + v30 + ((v28 + 8 + ((v34 + ((v26 + ((v25 + 7) & 0xFFFFFFFFFFFFFFF8) + 56) & ~v26)) & 0xFFFFFFFFFFFFFFF8)) & ~v28)) & ~v30) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v32 < a3)
  {
    v36 = a3 - v32;
    if (((*(v23 + 64) + ((v29 + v30 + ((v28 + 8 + ((v34 + ((v26 + ((v25 + 7) & 0xFFFFFFF8) + 56) & ~v26)) & 0xFFFFFFF8)) & ~v28)) & ~v30) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v37 = v36 + 1;
    }

    else
    {
      v37 = 2;
    }

    if (v37 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v37 < 0x100)
    {
      v11 = 1;
    }

    if (v37 < 2)
    {
      v11 = 0;
    }
  }

  if (a2 > v32)
  {
    if (((*(v23 + 64) + ((v29 + v30 + ((v28 + 8 + ((v34 + ((v26 + ((v25 + 7) & 0xFFFFFFF8) + 56) & ~v26)) & 0xFFFFFFF8)) & ~v28)) & ~v30) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v38 = a2 - v32;
    }

    else
    {
      v38 = 1;
    }

    if (((*(v23 + 64) + ((v29 + v30 + ((v28 + 8 + ((v34 + ((v26 + ((v25 + 7) & 0xFFFFFFF8) + 56) & ~v26)) & 0xFFFFFFF8)) & ~v28)) & ~v30) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v39 = ~v32 + a2;
      bzero(a1, v35);
      *a1 = v39;
    }

    if (v11 > 1)
    {
      if (v11 == 2)
      {
        *(a1 + v35) = v38;
      }

      else
      {
        *(a1 + v35) = v38;
      }
    }

    else if (v11)
    {
      *(a1 + v35) = v38;
    }

    return;
  }

  if (v11 > 1)
  {
    if (v11 != 2)
    {
      *(a1 + v35) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_48;
    }

    *(a1 + v35) = 0;
  }

  else if (v11)
  {
    *(a1 + v35) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_48;
  }

  if (!a2)
  {
    return;
  }

LABEL_48:
  if (v10 == v32)
  {
    v40 = *(v47 + 56);
    v41 = a1;
    v42 = a2;
    v43 = v10;
    v16 = v8;
    goto LABEL_50;
  }

  v44 = (a1 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  if ((v31 & 0x80000000) == 0)
  {
    if ((a2 & 0x80000000) != 0)
    {
      *(v44 + 40) = 0u;
      *(v44 + 24) = 0u;
      *(v44 + 8) = 0u;
      *v44 = a2 & 0x7FFFFFFF;
    }

    else
    {
      *(v44 + 48) = (a2 - 1);
    }

    return;
  }

  v45 = (v44 + v26 + 56) & ~v26;
  if (v15 != v32)
  {
    v41 = (v28 + 8 + ((v34 + v45) & 0xFFFFFFFFFFFFFFF8)) & ~v28;
    if (v20 != v32)
    {
      v40 = *(v23 + 56);
      v41 = (v29 + v30 + v41) & ~v30;
      v42 = a2;
      v43 = v24;
      v16 = v22;

      goto LABEL_70;
    }

    v40 = *(v19 + 56);
    v42 = a2;
    v43 = v20;
LABEL_50:

LABEL_70:
    v40(v41, v42, v43, v16);
    return;
  }

  if (v14 >= 2)
  {
    v46 = *(v13 + 56);

    v46(v45, (a2 + 1));
  }
}

void sub_24DCB3708(uint64_t a1)
{
  sub_24DC55134();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F19ED58, &qword_24DCB79B0);
    sub_24DCB5904();
    if (v4 <= 0x3F)
    {
      sub_24DCB3AB4();
      if (v5 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_24DCB37C4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (v3 <= 8)
  {
    v3 = 8;
  }

  v4 = 17;
  if (v3 + 1 > 0x11)
  {
    v4 = v3 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_27;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 252) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v9 < 2)
    {
LABEL_27:
      v11 = *(a1 + v4);
      if (v11 >= 4)
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
    goto LABEL_27;
  }

LABEL_16:
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

  return (v5 | v10) + 253;
}

void sub_24DCB38EC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  if (v5 + 1 > 0x11)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = 17;
  }

  v7 = v6 + 1;
  if (a3 < 0xFD)
  {
    v8 = 0;
  }

  else if (v7 <= 3)
  {
    v11 = ((a3 + ~(-1 << (8 * v7)) - 252) >> (8 * v7)) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFC)
  {
    v9 = a2 - 253;
    if (v7 >= 4)
    {
      bzero(a1, v6 + 1);
      *a1 = v9;
      v10 = 1;
      if (v8 > 1)
      {
        goto LABEL_42;
      }

      goto LABEL_39;
    }

    v10 = (v9 >> (8 * v7)) + 1;
    if (v6 != -1)
    {
      v13 = v9 & ~(-1 << (8 * v7));
      bzero(a1, v7);
      if (v7 != 3)
      {
        if (v7 == 2)
        {
          *a1 = v13;
          if (v8 > 1)
          {
LABEL_42:
            if (v8 == 2)
            {
              *&a1[v7] = v10;
            }

            else
            {
              *&a1[v7] = v10;
            }

            return;
          }
        }

        else
        {
          *a1 = v9;
          if (v8 > 1)
          {
            goto LABEL_42;
          }
        }

LABEL_39:
        if (v8)
        {
          a1[v7] = v10;
        }

        return;
      }

      *a1 = v13;
      a1[2] = BYTE2(v13);
    }

    if (v8 > 1)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  if (v8 <= 1)
  {
    if (v8)
    {
      a1[v7] = 0;
      if (!a2)
      {
        return;
      }

LABEL_28:
      a1[v6] = -a2;
      return;
    }

LABEL_27:
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (v8 == 2)
  {
    *&a1[v7] = 0;
    goto LABEL_27;
  }

  *&a1[v7] = 0;
  if (a2)
  {
    goto LABEL_28;
  }
}

void sub_24DCB3AB4()
{
  if (!qword_27F19F3F8)
  {
    v0 = sub_24DCB5414();
    if (!v1)
    {
      atomic_store(v0, &qword_27F19F3F8);
    }
  }
}

uint64_t sub_24DCB3B04(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  v4 = type metadata accessor for RPCWriter();
  v5 = type metadata accessor for BroadcastAsyncSequence();
  WitnessTable = swift_getWitnessTable();
  v7 = swift_getWitnessTable();
  *v3 = v2;
  v3[1] = sub_24DC4C43C;

  return RPCWriterProtocol.write<A>(contentsOf:)(v2 + 16, v4, v5, WitnessTable, v7);
}

uint64_t sub_24DCB3C2C()
{
  v1 = *(v0 + 104);

  return swift_deallocObject();
}

uint64_t sub_24DCB3C64(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = *(v1 + 104);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24DC334F4;

  return sub_24DCB3B04(a1, v5);
}

uint64_t sub_24DCB3D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v4[6] = v6;
  v4[3] = a2;
  v4[4] = a3;
  v4[2] = a1;
  return MEMORY[0x2822009F8](sub_24DCB3D44, 0, 0);
}

uint64_t sub_24DCB3D44()
{
  sub_24DCB5234();
  v7 = (v0[3] + *v0[3]);
  v1 = *(v0[3] + 4);
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_24DCB3E8C;
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[2];

  return v7(v5, v3);
}

uint64_t sub_24DCB3E8C()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  *(v3 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24DCB3FC0, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_24DCB3FE4(uint64_t a1)
{
  v4 = v1[13];
  v5 = v1[14];
  v6 = v1[15];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24DC2FD00;

  return sub_24DCB3D14(a1, v4, v5, v6);
}

uint64_t sub_24DCB40AC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[13];

  v3 = v0[15];

  v4 = v0[16];

  v5 = v0[17];

  return swift_deallocObject();
}

uint64_t sub_24DCB4104(uint64_t a1)
{
  v16 = *(v1 + 48);
  v17 = *(v1 + 32);
  v14 = *(v1 + 80);
  v15 = *(v1 + 64);
  v5 = *(v1 + 96);
  v4 = *(v1 + 104);
  v6 = *(v1 + 112);
  v7 = *(v1 + 120);
  v9 = *(v1 + 128);
  v8 = *(v1 + 136);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_24DC334F4;

  return sub_24DCB027C(a1, v10, v11, v4, v6, v7, v9, v8);
}

uint64_t sub_24DCB420C(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v5 = v4;
  v6 = *(v3 + 24);
  v22 = *(v3 + 16);
  v7 = *(v3 + 32);
  v8 = *(v3 + 40);
  v9 = *(v3 + 48);
  v10 = *(v3 + 56);
  v11 = *(v3 + 64);
  v12 = *(v3 + 72);
  v13 = *(v3 + 80);
  v26 = *(v3 + 96);
  v27 = *(v3 + 88);
  v24 = *(v3 + 112);
  v25 = *(v3 + 104);
  v23 = *(v3 + 120);
  v20 = *(v3 + 144);
  v21 = *(v3 + 128);
  v18 = *(v3 + 176);
  v19 = *(v3 + 160);
  v17 = *(v3 + 192);
  v14 = *(v3 + 208);
  v15 = swift_task_alloc();
  *(v5 + 16) = v15;
  *v15 = v5;
  v15[1] = sub_24DC334F4;

  return sub_24DCB05A4(a1, a2, a3, v27, v26, v25, v24, v23);
}

uint64_t sub_24DCB43BC()
{
  v1 = sub_24DCB55B4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 104) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24DCB4480(uint64_t a1)
{
  v4 = *(v1 + 72);
  v5 = *(sub_24DCB55B4() - 8);
  v6 = (*(v5 + 80) + 104) & ~*(v5 + 80);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24DC334F4;

  return sub_24DCAFE30(a1, v7, v8, v1 + v6);
}

uint64_t sub_24DCB4568(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_24DC334F4;

  return sub_24DCB00F0(v6, v5, a2);
}

uint64_t sub_24DCB4604()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v31 = *(v0 + 32);
  v33 = *(v0 + 48);
  v34 = *(v0 + 80);
  v35 = *(v0 + 96);
  v3 = _s13RetryExecutorVMa();
  v32 = *(*(v3 - 1) + 80);
  v4 = (v32 + 128) & ~v32;
  v5 = *(*(v3 - 1) + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 104);

  v8 = *(v0 + 120);

  v9 = v0 + v4;
  (*(*(v31 - 8) + 8))(v0 + v4);
  v10 = *(v0 + v4 + v3[21] + 48);

  v11 = v3[22];
  v12 = sub_24DCB55B4();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v0 + v4 + v11, 1, v12))
  {
    (*(v13 + 8))(v9 + v11, v12);
  }

  v14 = (v5 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 71) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 119) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 23) & 0xFFFFFFFFFFFFFFF8;
  v18 = *(v9 + v3[23]);

  (*(*(v1 - 8) + 8))(v9 + v3[24], v1);
  (*(*(v2 - 8) + 8))(v9 + v3[25], v2);
  v19 = *(v0 + v14 + 8);

  v20 = *(v0 + v14 + 24);

  v21 = *(v0 + v14 + 40);

  v22 = *(v0 + v14 + 56);

  v23 = *(v0 + v15 + 8);

  v24 = *(v0 + v15 + 24);

  __swift_destroy_boxed_opaque_existential_1((v0 + v15 + 32));
  __swift_destroy_boxed_opaque_existential_1((v0 + v15 + 72));
  v25 = *(v0 + v16);

  v26 = *(v0 + v16 + 8);

  v27 = *(v0 + v17 + 8);

  v28 = *(v0 + v17 + 24);

  v29 = *(v0 + ((((v17 + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_24DCB48E4(uint64_t a1)
{
  v3 = v2;
  v30 = v1[6];
  v31 = v1[5];
  v28 = v1[8];
  v29 = v1[7];
  v32 = v1[9];
  v4 = v1[11];
  v27 = v1[10];
  v5 = v1[12];
  v2[2] = v1[4];
  v2[3] = v31;
  v2[4] = v30;
  v2[5] = v29;
  v2[6] = v28;
  v2[7] = v27;
  v2[8] = v4;
  v2[9] = v5;
  v6 = *(_s13RetryExecutorVMa() - 8);
  v7 = (*(v6 + 80) + 128) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (((v8 + 71) & 0xFFFFFFFFFFFFFFF8) + 119) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 39) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v25 = *(v1 + v9);
  v26 = v1[13];
  v24 = *(v1 + v10);
  v13 = *(v1 + v11);
  v14 = *(v1 + v10 + 16);
  v15 = *(v1 + v10 + 24);
  v16 = *(v1 + v12);
  v17 = *(v1 + v12 + 8);
  v22 = swift_task_alloc();
  v3[10] = v22;
  *v22 = v3;
  v22[1] = sub_24DC56054;

  return sub_24DCB19A8(a1, v18, v19, v26, v20, v21, v1 + v7, v1 + v8);
}

uint64_t sub_24DCB4B08()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_24DCB4B40()
{
  v2 = v0[3];
  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[15];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_24DC334F4;

  return sub_24DC4BBC4(v6, v7, v3, v4, v8, v5, v9, v2);
}