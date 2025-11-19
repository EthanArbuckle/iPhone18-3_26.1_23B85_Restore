uint64_t sub_25DCFC270()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25DCFC300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25DD96814();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_25DCFC3C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25DD96814();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_25DCFC480()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_25DCFC4B8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

__n128 sub_25DCFC508(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_25DCFC560()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25DCFC598()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void sub_25DCFC5D8(void *a1@<X8>)
{
  a1[3] = &type metadata for ISO8601DateTranscoder;
  a1[4] = &protocol witness table for ISO8601DateTranscoder;
  static DateTranscoder<>.iso8601.getter(a1);
}

uint64_t sub_25DCFC5F4(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2488, &unk_25DD99F10);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2460, &qword_25DD99E20);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2490, &unk_25DD99F20);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[9];

  return v15(v16, a2, v14);
}

uint64_t sub_25DCFC784(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2488, &unk_25DD99F10);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2460, &qword_25DD99E20);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2490, &unk_25DD99F20);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[9];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_25DCFC9BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_25DD968B4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_25DCFCA68(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_25DD968B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_25DCFCB0C()
{
  v1 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t get_enum_tag_for_layout_string_22OpenAPIRuntimeInternal32JSONLinesDeserializationSequenceV8IteratorV12StateMachineV10NextActionOyx_qd____G_0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_25DCFCB5C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25DCFCB94()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25DCFCBCC()
{
  v1 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_25DCFCC04()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25DCFCC3C()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25DCFCC74()
{
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_25DCFCCAC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25DCFCCE4()
{
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_25DCFCD1C()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25DCFCD54()
{
  v1 = *(*(v0 + 24) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25DCFCDE4()
{
  MEMORY[0x25F8A43F0](*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25DCFCE1C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25DCFCE54()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25DCFCE9C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25DCFCEE4()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for UniversalClient();
  v3 = *(*(v2 - 8) + 80);
  v28 = *(*(v2 - 8) + 64);
  v33 = *(v1 - 8);
  v4 = *(v33 + 80);
  v26 = *(v33 + 64);
  v32 = sub_25DD968B4();
  v5 = *(v32 - 8);
  v6 = *(v5 + 80);
  v25 = *(v5 + 64);
  v7 = sub_25DD96704();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = *(v8 + 64);
  v29 = v10;
  v30 = *(v8 + 8);
  v11 = v0 + ((v3 + 32) & ~v3);
  v31 = v7;
  v30(v11);
  v34 = v2;
  v12 = (v11 + *(v2 + 20));
  __swift_destroy_boxed_opaque_existential_1(v12);
  __swift_destroy_boxed_opaque_existential_1(v12 + 6);
  if (v12[14])
  {
    __swift_destroy_boxed_opaque_existential_1(v12 + 11);
  }

  v27 = v3 | v4 | v6 | v9;
  v13 = (v28 + ((v3 + 32) & ~v3) + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + v4 + 16) & ~v4;
  v15 = (v14 + v26 + v6) & ~v6;
  v16 = (v25 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + v9 + 8) & ~v9;
  v18 = v12[16];

  v19 = v12[17];

  v20 = v12[18];

  __swift_destroy_boxed_opaque_existential_1((v11 + *(v34 + 24)));
  v21 = *(v11 + *(v34 + 28));

  v22 = *(v0 + v13 + 8);

  (*(v33 + 8))(v0 + v14, v1);
  (*(v5 + 8))(v0 + v15, v32);
  v23 = *(v0 + v16);

  (v30)(v0 + v17, v31);

  return MEMORY[0x2821FE8E8](v0, v17 + v29, v27 | 7);
}

uint64_t sub_25DCFD1BC()
{
  v20 = v0[2];
  v1 = *(v20 - 8);
  v2 = *(v1 + 80);
  v18 = (v2 + 104) & ~v2;
  v3 = *(v1 + 64);
  v19 = sub_25DD968B4();
  v4 = *(v19 - 8);
  v5 = *(v4 + 80);
  v6 = (v18 + v3 + v5) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = sub_25DD96704();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = (v7 + v10 + 8) & ~v10;
  v17 = *(v9 + 64);
  v12 = v2 | v5 | v10;
  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  v13 = v0[10];

  v14 = v0[12];

  (*(v1 + 8))(v0 + v18, v20);
  (*(v4 + 8))(v0 + v6, v19);
  v15 = *(v0 + v7);

  (*(v9 + 8))(v0 + v11, v8);

  return MEMORY[0x2821FE8E8](v0, v11 + v17, v12 | 7);
}

uint64_t sub_25DCFD3BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25DD96704();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_25DCFD47C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25DD96704();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_25DCFD538()
{
  v1 = *(v0 + 2);
  v2 = sub_25DD968B4();
  v3 = *(v2 - 8);
  v27 = *(v3 + 80);
  v28 = v1;
  v4 = (v27 + 72) & ~v27;
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = type metadata accessor for UniversalServer();
  v9 = *(*(v8 - 1) + 80);
  v10 = (v9 + v7 + 16) & ~v9;
  v26 = *(*(v8 - 1) + 64);
  v11 = *(v0 + 6);

  v12 = *(v0 + 8);

  (*(v3 + 8))(&v0[v4], v2);
  v13 = *&v0[v5];

  v14 = *&v0[v6];

  v15 = *&v0[v7 + 8];

  v16 = &v0[v10];
  v17 = sub_25DD96704();
  (*(*(v17 - 8) + 8))(&v0[v10], v17);
  v18 = &v0[v10 + v8[7]];
  __swift_destroy_boxed_opaque_existential_1(v18);
  __swift_destroy_boxed_opaque_existential_1(v18 + 6);
  if (v18[14])
  {
    __swift_destroy_boxed_opaque_existential_1(v18 + 11);
  }

  v19 = (v26 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = v18[16];

  v21 = v18[17];

  v22 = v18[18];

  (*(*(v28 - 8) + 8))(&v16[v8[8]]);
  v23 = *&v16[v8[9]];

  v24 = *&v0[v19 + 8];

  return MEMORY[0x2821FE8E8](v0, v19 + 16, v27 | v9 | 7);
}

uint64_t sub_25DCFD7A4()
{
  v1 = sub_25DD968B4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 112) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1(v0 + 5);
  v7 = v0[11];

  v8 = v0[13];

  (*(v2 + 8))(v0 + v4, v1);
  v9 = *(v0 + v5);

  v10 = *(v0 + v6);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

uint64_t sub_25DCFD8A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MultipartParser.StateMachine(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_25DCFD910(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MultipartParser.StateMachine(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_25DCFD980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MultipartParser.StateMachine.State(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_25DCFDA3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MultipartParser.StateMachine.State(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_25DCFDAF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_25DD96814();
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

uint64_t sub_25DCFDB60(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_25DD96814();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_25DCFDBE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  v7 = type metadata accessor for MultipartFramesToRawPartsSequence.StateMachine.State();
  v8 = *(*(v7 - 8) + 48);

  return v8(a1, a2, v7);
}

uint64_t sub_25DCFDC50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(a4 + 24);
  v8 = type metadata accessor for MultipartFramesToRawPartsSequence.StateMachine.State();
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, a2, a2, v8);
}

uint64_t sub_25DCFDCC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2710, &qword_25DD9D858);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 4)
  {
    return v5 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25DCFDD3C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2710, &qword_25DD9D858);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_25DCFDDCC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25DCFDE04()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25DCFDE3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25DD96814();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_25DCFDEF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25DD96814();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_25DCFDFB0()
{
  MEMORY[0x25F8A43F0](*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25DCFDFE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_25DD96814();
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

uint64_t sub_25DCFE054(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_25DD96814();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_25DCFE0D4(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_25DD74CBC(result, a2 & 1);
  }

  return result;
}

uint64_t sub_25DCFE100()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

id sub_25DCFE138(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_25DD77894(result, a2 & 1);
  }

  return result;
}

uint64_t sub_25DCFE164()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_25DCFE19C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for URIEncodedNode(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_25DCFE248(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for URIEncodedNode(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_25DCFE2FC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_25DCFE344()
{
  LOWORD(v1) = *v0;
  sub_25DD97964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC20E0, &qword_25DD98110);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_25DD98100;
  v3 = MEMORY[0x277D83A80];
  *(v2 + 56) = MEMORY[0x277D839F8];
  *(v2 + 64) = v3;
  *(v2 + 32) = v1 / 1000.0;
  sub_25DD96B34();
  sub_25DD96B94();

  return sub_25DD979A4();
}

uint64_t sub_25DCFE418()
{
  LOWORD(v1) = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC20E0, &qword_25DD98110);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_25DD98100;
  v3 = MEMORY[0x277D83A80];
  *(v2 + 56) = MEMORY[0x277D839F8];
  *(v2 + 64) = v3;
  *(v2 + 32) = v1 / 1000.0;
  sub_25DD96B34();
  sub_25DD96B94();
}

uint64_t sub_25DCFE4E0()
{
  LOWORD(v1) = *v0;
  sub_25DD97964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC20E0, &qword_25DD98110);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_25DD98100;
  v3 = MEMORY[0x277D83A80];
  *(v2 + 56) = MEMORY[0x277D839F8];
  *(v2 + 64) = v3;
  *(v2 + 32) = v1 / 1000.0;
  sub_25DD96B34();
  sub_25DD96B94();

  return sub_25DD979A4();
}

uint64_t sub_25DCFE5BC(unsigned __int16 a1, unsigned __int16 a2)
{
  v2 = a2;
  v3 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC20E0, &qword_25DD98110);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_25DD98100;
  v5 = MEMORY[0x277D839F8];
  v6 = MEMORY[0x277D83A80];
  *(v4 + 56) = MEMORY[0x277D839F8];
  *(v4 + 64) = v6;
  *(v4 + 32) = v3 / 1000.0;
  v7 = sub_25DD96B34();
  v9 = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_25DD98100;
  *(v10 + 56) = v5;
  *(v10 + 64) = v6;
  *(v10 + 32) = v2 / 1000.0;
  if (v7 == sub_25DD96B34() && v9 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_25DD975D4();
  }

  return v12 & 1;
}

uint64_t QualityValue.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = sub_25DCFFACC(a1, a2);

  if (!v4)
  {
    LOWORD(v7) = 0;
    goto LABEL_8;
  }

  if (0.0 > 1.0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v6 = 0.0 * 1000.0;
  if (COERCE_UNSIGNED_INT64(fabs(0.0 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v6 <= -1.0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v6 < 65536.0)
  {
    v7 = v6;
LABEL_8:
    *a3 = v7;
    *(a3 + 2) = !v4;
    return result;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t QualityValue.rawValue.getter()
{
  LOWORD(v1) = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC20E0, &qword_25DD98110);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_25DD98100;
  v3 = MEMORY[0x277D83A80];
  *(v2 + 56) = MEMORY[0x277D839F8];
  *(v2 + 64) = v3;
  *(v2 + 32) = v1 / 1000.0;

  return sub_25DD96B34();
}

uint64_t sub_25DCFE88C@<X0>(uint64_t *a1@<X8>)
{
  LOWORD(v2) = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC20E0, &qword_25DD98110);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_25DD98100;
  v5 = MEMORY[0x277D83A80];
  *(v4 + 56) = MEMORY[0x277D839F8];
  *(v4 + 64) = v5;
  *(v4 + 32) = v2 / 1000.0;
  result = sub_25DD96B34();
  *a1 = result;
  a1[1] = v7;
  return result;
}

uint64_t QualityValue.init(integerLiteral:)@<X0>(uint64_t result@<X0>, _WORD *a2@<X8>)
{
  if (result > 1u)
  {
    __break(1u);
  }

  else
  {
    *a2 = 1000 * result;
  }

  return result;
}

unsigned __int16 *sub_25DCFE94C@<X0>(unsigned __int16 *result@<X0>, _WORD *a2@<X8>)
{
  v2 = *result;
  if (v2 > 1)
  {
    __break(1u);
  }

  else
  {
    *a2 = 1000 * v2;
  }

  return result;
}

void _s22OpenAPIRuntimeInternal12QualityValueV06doubleE0ACSd_tcfC_0(_WORD *a1@<X8>, double a2@<D0>)
{
  if (a2 < 0.0 || a2 > 1.0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = a2 * 1000.0;
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v3 <= -1.0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v3 < 65536.0)
  {
    *a1 = v3;
    return;
  }

LABEL_12:
  __break(1u);
}

uint64_t AcceptHeaderContentType.init(contentType:quality:)@<X0>(uint64_t a1@<X0>, __int16 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a2;
  *(a4 + *(type metadata accessor for AcceptHeaderContentType() + 36)) = v7;
  v8 = *(*(a3 - 8) + 32);

  return v8(a4, a1, a3);
}

uint64_t sub_25DCFEA90(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v34 - v24;
  v26 = sub_25DD96E94();
  if (!v26)
  {
    return sub_25DD96D54();
  }

  v48 = v26;
  v52 = sub_25DD97204();
  v39 = sub_25DD97214();
  sub_25DD971E4();
  result = sub_25DD96E84();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_25DD96ED4();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_25DD971F4();
      result = sub_25DD96EB4();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*AcceptHeaderContentType.quality.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t sub_25DCFEF9C(uint64_t a1, uint64_t a2, void (*a3)(char *, char *))
{
  v6 = *(a2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = &v17[-v10];
  sub_25DD97144();
  v18 = a1;
  v19 = a2;
  v12 = type metadata accessor for AcceptHeaderContentType();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = sub_25DCFEA90(a3, v17, AssociatedTypeWitness, v12, MEMORY[0x277D84A98], AssociatedConformanceWitness, MEMORY[0x277D84AC0], v14);
  (*(v8 + 8))(v11, AssociatedTypeWitness);
  return v15;
}

uint64_t sub_25DCFF10C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8);
  *(a3 + *(type metadata accessor for AcceptHeaderContentType() + 36)) = 1000;
  return (*(v5 + 32))(a3, v8, a2);
}

uint64_t sub_25DCFF20C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_25DCFF278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25DCFF2E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25DCFF358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t AcceptHeaderContentType.init(rawValue:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_25DD96F04();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v46[-v14];
  v16 = *(a3 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v13);
  v56 = &v46[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v55 = &v46[-v20];
  OpenAPIMIMEType.init(_:)(a1, a2, &v57);
  v21 = v62;
  if (!v62)
  {
    goto LABEL_9;
  }

  v48 = v11;
  v49 = v10;
  v53 = v16;
  v23 = v57;
  v22 = v58;
  v25 = v59;
  v24 = v60;
  v54 = v61;
  if (*(v62 + 16) && (v26 = sub_25DCFF99C(113, 0xE100000000000000), (v27 & 1) != 0))
  {
    v28 = (*(v21 + 56) + 16 * v26);
    v29 = v28[1];
    v52 = *v28;

    QualityValue.init(rawValue:)(v52, v29, &v57);
    if (BYTE2(v57) == 1)
    {
      sub_25DCFFC50(v23, v22, v25, v24, v54, v21);
LABEL_9:
      v39 = type metadata accessor for AcceptHeaderContentType();
      return (*(*(v39 - 8) + 56))(a5, 1, 1, v39);
    }

    v50 = v15;
    v51 = a4;
    v52 = a5;
    v30 = v57;
  }

  else
  {
    v50 = v15;
    v51 = a4;
    v52 = a5;
    v30 = 1000;
  }

  v47 = v30;
  v57 = v23;
  v58 = v22;
  v59 = v25;
  v60 = v24;
  v31 = v24;
  v32 = v54;
  LOBYTE(v61) = v54;
  OpenAPIMIMEType.Kind.description.getter();
  v33 = sub_25DD96B54();
  v35 = v34;
  sub_25DCFFC50(v23, v22, v25, v31, v32, v21);

  v57 = v33;
  v58 = v35;
  v36 = v50;
  v37 = *(v51 + 24);
  sub_25DD96D14();
  v38 = v53;
  if ((*(v53 + 48))(v36, 1, a3) == 1)
  {
    (*(v48 + 8))(v36, v49);
    a5 = v52;
    goto LABEL_9;
  }

  v41 = *(v38 + 32);
  v42 = v55;
  v41(v55, v36, a3);
  v43 = v56;
  v41(v56, v42, a3);
  v44 = type metadata accessor for AcceptHeaderContentType();
  v45 = v52;
  *(v52 + *(v44 + 36)) = v47;
  v41(v45, v43, a3);
  return (*(*(v44 - 8) + 56))(v45, 0, 1, v44);
}

uint64_t AcceptHeaderContentType.rawValue.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*(a1 + 24) + 24);
  sub_25DD96D04();
  v5 = *(v1 + *(a1 + 36));
  if (v5 == 1000)
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC20E0, &qword_25DD98110);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_25DD98100;
    v9 = MEMORY[0x277D83A80];
    *(v8 + 56) = MEMORY[0x277D839F8];
    *(v8 + 64) = v9;
    *(v8 + 32) = v5 / 1000.0;
    v10 = sub_25DD96B34();
    MEMORY[0x25F8A3200](v10);

    v6 = 1030823995;
    v7 = 0xE400000000000000;
  }

  MEMORY[0x25F8A3200](v6, v7);

  return v12;
}

uint64_t sub_25DCFF8E0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = AcceptHeaderContentType.rawValue.getter(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t Array.sortedByQuality<A>()()
{
  type metadata accessor for AcceptHeaderContentType();
  sub_25DD96D84();
  swift_getWitnessTable();
  return sub_25DD96CE4();
}

unint64_t sub_25DCFF99C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_25DD97964();
  sub_25DD96B94();
  v6 = sub_25DD979A4();

  return sub_25DCFFA14(a1, a2, v6);
}

unint64_t sub_25DCFFA14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_25DD975D4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

BOOL sub_25DCFFACC(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtod_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  sub_25DD97114();
  if (!v2)
  {
    return v7;
  }

  return v4;
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

uint64_t sub_25DCFFC50(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  if (a6)
  {
    sub_25DCFFC90(result, a2, a3, a4, a5);
  }

  return result;
}

uint64_t sub_25DCFFC90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    if (a5 != 1)
    {
      return result;
    }
  }
}

BOOL sub_25DCFFCF4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for AcceptHeaderContentType() + 36);
  LOWORD(v8) = *(a1 + v7);
  LOWORD(v9) = *(a2 + v7);
  return v9 / 1000.0 < v8 / 1000.0;
}

unint64_t sub_25DCFFD68()
{
  result = qword_27FCC20E8;
  if (!qword_27FCC20E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC20E8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for QualityValue(unsigned __int16 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 0xFFFF) <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if ((a2 + 0xFFFF) < 0xFF0000)
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
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }

    else if (v3 == 2)
    {
      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (*(a1 + 2))
      {
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }
  }

  return 0;
}

_WORD *storeEnumTagSinglePayload for QualityValue(_WORD *result, int a2, int a3)
{
  if ((a3 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if ((a3 + 0xFFFF) < 0xFF0000)
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
    v5 = ((a2 - 1) >> 16) + 1;
    *result = a2 - 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      result[1] = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v4)
  {
    *(result + 2) = 0;
  }

  return result;
}

uint64_t sub_25DCFFF20(uint64_t a1)
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

uint64_t sub_25DCFFF98(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  v6 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v7 = ((*(*(*(a3 + 16) - 8) + 64) + 1) & 0xFFFFFFFFFFFFFFFELL) + 2;
  v8 = 8 * v7;
  if (v7 <= 3)
  {
    v10 = ((v6 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v7);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v7 > 3)
  {
    v11 = 0;
  }

  if (((*(*(*(a3 + 16) - 8) + 64) + 1) & 0xFFFFFFFE) != 0xFFFFFFFE)
  {
    if (v7 <= 3)
    {
      LODWORD(v7) = *a1;
    }

    else
    {
      LODWORD(v7) = *a1;
    }
  }

  return v5 + (v7 | v11) + 1;
}

unsigned int *sub_25DD000B0(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + 1) & 0xFFFFFFFFFFFFFFFELL) + 2;
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (((*(v5 + 64) + 1) & 0xFFFFFFFE) != 0xFFFFFFFE)
      {
        v16 = result;
        bzero(result, v7);
        result = v16;
        *v16 = v11;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
    }

    if (v10 > 1)
    {
      if (v10 == 2)
      {
        *(result + v7) = v13;
      }

      else
      {
        *(result + v7) = v13;
      }
    }

    else if (v10)
    {
      *(result + v7) = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *(result + v7) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_27;
    }

    *(result + v7) = 0;
  }

  else if (v10)
  {
    *(result + v7) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_27;
  }

  if (!a2)
  {
    return result;
  }

LABEL_27:
  v17 = *(v5 + 56);

  return v17();
}

_BYTE *sub_25DD0027C@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    v8 = *(v2 + 16);
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v9 = *result == 0;
    }

    else
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t Base64EncodedData.data.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  return swift_unknownObjectRetain();
}

uint64_t Base64EncodedData.data.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = swift_unknownObjectRelease();
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
  return result;
}

uint64_t Base64EncodedData.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t Base64EncodedData.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  (*(v6 + 16))(&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  v9 = sub_25DD97074();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  result = (*(v6 + 8))(a1, a2);
  *a3 = v9;
  a3[1] = v11;
  a3[2] = v13;
  a3[3] = v15;
  return result;
}

uint64_t static Base64EncodedData.== infix(_:_:)(uint64_t result, void *a2)
{
  v2 = *(result + 16);
  v3 = *(result + 24) >> 1;
  v4 = v3 - v2;
  if (__OFSUB__(v3, v2))
  {
    __break(1u);
    goto LABEL_23;
  }

  v5 = a2[2];
  v6 = a2[3] >> 1;
  v7 = v6 - v5;
  if (__OFSUB__(v6, v5))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v4 != v7)
  {
    return 0;
  }

  if (!v4)
  {
    return 1;
  }

  v8 = *(result + 8) + v2;
  v9 = a2[1] + v5;
  result = 1;
  if (v8 != v9 && v2 != v3)
  {
    if (v2 >= v3)
    {
LABEL_26:
      __break(1u);
      return result;
    }

    if (v5 == v6)
    {
      return 0;
    }

    v10 = 0;
    if (v5 <= v6)
    {
      v11 = a2[3] >> 1;
    }

    else
    {
      v11 = a2[2];
    }

    v12 = v11 - v5;
    while (v12 != v10)
    {
      if (*(v8 + v10) != *(v9 + v10))
      {
        return 0;
      }

      if (~v2 + v3 == v10)
      {
        return 1;
      }

      v13 = v2 + v10 + 1;
      if (v13 < v2 || v13 >= v3)
      {
        goto LABEL_25;
      }

      result = 0;
      if (v7 == ++v10)
      {
        return result;
      }
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  return result;
}

uint64_t Base64EncodedData.hash(into:)()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  result = v2 - v1;
  if (__OFSUB__(v2, v1))
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = v0[1];
  result = MEMORY[0x25F8A3F90](result);
  v5 = __OFSUB__(v2, v1);
  v6 = v2 - v1;
  if (!v6)
  {
    return result;
  }

  if ((v6 < 0) ^ v5 | (v6 == 0))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v7 = (v4 + v1);
  do
  {
    v8 = *v7++;
    result = sub_25DD97984();
    --v6;
  }

  while (v6);
  return result;
}

uint64_t Base64EncodedData.hashValue.getter()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  sub_25DD97964();
  v4 = v3 >> 1;
  result = v4 - v2;
  if (__OFSUB__(v4, v2))
  {
    __break(1u);
  }

  else
  {
    result = MEMORY[0x25F8A3F90](result);
    v6 = __OFSUB__(v4, v2);
    v7 = v4 - v2;
    if (!v7)
    {
      return sub_25DD979A4();
    }

    if (!((v7 < 0) ^ v6 | (v7 == 0)))
    {
      v8 = (v1 + v2);
      do
      {
        v9 = *v8++;
        sub_25DD97984();
        --v7;
      }

      while (v7);
      return sub_25DD979A4();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25DD006F0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  result = v2 - v1;
  if (__OFSUB__(v2, v1))
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = v0[1];
  result = MEMORY[0x25F8A3F90](result);
  v5 = __OFSUB__(v2, v1);
  v6 = v2 - v1;
  if (!v6)
  {
    return result;
  }

  if ((v6 < 0) ^ v5 | (v6 == 0))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v7 = (v4 + v1);
  do
  {
    v8 = *v7++;
    result = sub_25DD97984();
    --v6;
  }

  while (v6);
  return result;
}

uint64_t sub_25DD0075C()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  sub_25DD97964();
  v4 = v3 >> 1;
  result = v4 - v2;
  if (__OFSUB__(v4, v2))
  {
    __break(1u);
  }

  else
  {
    result = MEMORY[0x25F8A3F90](result);
    v6 = __OFSUB__(v4, v2);
    v7 = v4 - v2;
    if (!v7)
    {
      return sub_25DD979A4();
    }

    if (!((v7 < 0) ^ v6 | (v7 == 0)))
    {
      v8 = (v1 + v2);
      do
      {
        v9 = *v8++;
        sub_25DD97984();
        --v7;
      }

      while (v7);
      return sub_25DD979A4();
    }
  }

  __break(1u);
  return result;
}

uint64_t Base64EncodedData.init(arrayLiteral:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = result;
  a2[1] = result + 32;
  a2[2] = 0;
  a2[3] = (2 * v2) | 1;
  return result;
}

uint64_t sub_25DD00818@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = result;
  a2[1] = result + 32;
  a2[2] = 0;
  a2[3] = (2 * v2) | 1;
  return result;
}

uint64_t Base64EncodedData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25DD979B4();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v18, v18[3]);
    v6 = sub_25DD975E4();
    v8 = v7;
    v9 = v6;
    v10 = sub_25DD96734();
    if (v11 >> 60 == 15)
    {
      sub_25DD01034();
      swift_allocError();
      *v12 = v9;
      *(v12 + 8) = v8;
      *(v12 + 48) = 5;
      swift_willThrow();
    }

    else
    {
      v13 = v10;
      v14 = v11;

      v15 = sub_25DD00CE0(v13, v14);
      v16 = (2 * *(v15 + 16)) | 1;
      *a2 = v15;
      a2[1] = v15 + 32;
      a2[2] = 0;
      a2[3] = v16;
    }

    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Base64EncodedData.encode(to:)(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_unknownObjectRetain();
  sub_25DD979D4();
  v7 = sub_25DD00A5C(v2, v3, v4, v5);
  v9 = v8;
  sub_25DD96774();
  sub_25DD01088(v7, v9);
  __swift_mutable_project_boxed_opaque_existential_1(v11, v11[3]);
  sub_25DD97674();

  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t sub_25DD00A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2100, "4D");
  v18[3] = v8;
  v18[4] = sub_25DD01228();
  v9 = swift_allocObject();
  v18[0] = v9;
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  v10 = __swift_project_boxed_opaque_existential_1(v18, v8);
  v11 = v10[2];
  v12 = v10[3] >> 1;
  v13 = __OFSUB__(v12, v11);
  v14 = v12 - v11;
  if (v13)
  {
    __break(1u);
    result = MEMORY[0x25F8A43F0](a2);
    __break(1u);
  }

  else
  {
    sub_25DD00C4C((v10[1] + v11), (v10[1] + v11 + v14), &v17);
    v15 = v17;
    __swift_destroy_boxed_opaque_existential_1(v18);
    return v15;
  }

  return result;
}

uint64_t sub_25DD00B58(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_unknownObjectRetain();
  sub_25DD979D4();
  v7 = sub_25DD00A5C(v2, v3, v4, v5);
  v9 = v8;
  sub_25DD96774();
  sub_25DD01088(v7, v9);
  __swift_mutable_project_boxed_opaque_existential_1(v11, v11[3]);
  sub_25DD97674();

  return __swift_destroy_boxed_opaque_existential_1(v11);
}

_BYTE *sub_25DD00C4C@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_25DD012D4(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_25DD0138C(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_25DD01408(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_25DD00CE0(uint64_t a1, unint64_t a2)
{
  v4 = sub_25DD96784();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 != 2)
    {
LABEL_12:
      sub_25DD01088(a1, a2);
      return MEMORY[0x277D84F90];
    }

    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
    v11 = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
      if (v11)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v10)
    {
      goto LABEL_10;
    }

    v11 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v14 = sub_25DD00E5C(v11, 0);
      v15 = sub_25DD96724();
      sub_25DD01088(a1, a2);
      v16 = *(v5 + 8);
      v5 += 8;
      v16(v9, v4);
      result = v14;
      if (v15 == v11)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v17 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v11 = v17;
      if (!v17)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

void *sub_25DD00E5C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2110, &unk_25DD984C0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_25DD00ED0(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v6 = a3 >> 1;
  v7 = (a3 >> 1) - a2;
  if (__OFSUB__(a3 >> 1, a2))
  {
    __break(1u);
    goto LABEL_23;
  }

  v8 = a6 >> 1;
  v9 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v7 != v9)
  {
    return 0;
  }

  if (!v7)
  {
    return 1;
  }

  v10 = result + a2;
  result = 1;
  if (v10 != a4 + a5 && v6 != a2)
  {
    if (v6 <= a2)
    {
LABEL_26:
      __break(1u);
      return result;
    }

    if (v8 == a5)
    {
      return 0;
    }

    v11 = 0;
    if (a5 <= v8)
    {
      v12 = a6 >> 1;
    }

    else
    {
      v12 = a5;
    }

    v13 = v12 - a5;
    while (v13 != v11)
    {
      if (*(v10 + v11) != *(a4 + a5 + v11))
      {
        return 0;
      }

      if (~a2 + v6 == v11)
      {
        return 1;
      }

      v14 = a2 + v11 + 1;
      if (v14 < a2 || v14 >= v6)
      {
        goto LABEL_25;
      }

      result = 0;
      if (v9 == ++v11)
      {
        return result;
      }
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
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

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_25DD01034()
{
  result = qword_27FCC20F0;
  if (!qword_27FCC20F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC20F0);
  }

  return result;
}

uint64_t sub_25DD01088(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
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

unint64_t sub_25DD01130()
{
  result = qword_27FCC20F8;
  if (!qword_27FCC20F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC20F8);
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

uint64_t sub_25DD01190(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_25DD011D8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_25DD01228()
{
  result = qword_27FCC2108;
  if (!qword_27FCC2108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCC2100, "4D");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC2108);
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

uint64_t sub_25DD012D4(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_25DD0138C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_25DD96694();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_25DD96644();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_25DD96744();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_25DD01408(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_25DD96694();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_25DD96644();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_25DD01564()
{
  result = sub_25DD0313C(&unk_286F94850);
  qword_27FCCE570 = result;
  return result;
}

uint64_t *sub_25DD0158C()
{
  if (qword_27FCC30A0 != -1)
  {
    swift_once();
  }

  return &qword_27FCCE570;
}

uint64_t sub_25DD015DC()
{
  if (qword_27FCC30A0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_25DD01638(unsigned __int8 a1)
{
  v1 = a1;
  result = 1;
  if ((v1 - 33) > 0x3F || ((1 << (v1 - 33)) & 0xE00000000000367DLL) == 0)
  {
    v3 = (v1 - 91) > 0xFFFFFFE5 || (v1 - 97) < 0x1A;
    v4 = (v1 - 58) > 0xFFFFFFF5 || v3;
    if (v1 == 126)
    {
      v4 = 1;
    }

    if (v1 == 124)
    {
      return 1;
    }

    else
    {
      return v4;
    }
  }

  return result;
}

uint64_t sub_25DD016A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v67 = a6;
  v69 = a5;
  v70 = a1;
  v58 = a7;
  v57 = a4;
  v9 = *(*(a4 + 8) + 8);
  v10 = *(v9 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v72 = *(AssociatedTypeWitness - 8);
  v11 = *(v72 + 64);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v66 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v54 = &v54 - v14;
  v15 = sub_25DD96F04();
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v54 - v18;
  v20 = *(a3 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  v23 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = swift_getAssociatedTypeWitness();
  v56 = *(v24 - 8);
  v25 = *(v56 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v54 - v26;
  v71 = swift_getAssociatedTypeWitness();
  v59 = *(v71 - 8);
  v28 = *(v59 + 64);
  v29 = MEMORY[0x28223BE20](v71);
  v68 = &v54 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v74 = &v54 - v31;
  sub_25DD96E84();
  (*(v20 + 16))(v23, v70, a3);
  v32 = v54;
  sub_25DD96CB4();
  v33 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v69 = v27;
  v70 = v24;
  v64 = AssociatedConformanceWitness;
  sub_25DD96F74();
  v35 = v72;
  v36 = *(v72 + 48);
  v73 = v19;
  v62 = v36;
  v63 = v72 + 48;
  if (v36(v19, 1, v33) == 1)
  {
LABEL_6:
    (*(v56 + 8))(v69, v70);
    (*(v59 + 32))(v58, v74, v71);
  }

  else
  {
    v38 = *(v35 + 32);
    v37 = v35 + 32;
    v65 = (v59 + 8);
    v60 = (v37 - 16);
    v61 = v38;
    v72 = v37;
    v39 = (v37 - 24);
    while (1)
    {
      v61(v32, v73, v33);
      v40 = v33;
      v41 = v68;
      sub_25DD96EA4();
      v42 = v71;
      swift_getAssociatedConformanceWitness();
      v43 = sub_25DD96AE4();
      v44 = v9;
      v45 = a2;
      v46 = *v65;
      (*v65)(v41, v42);
      if ((v43 & 1) == 0)
      {
        (*v39)(v32, v40);
        (*(v56 + 8))(v69, v70);
        v46(v74, v71);
        goto LABEL_9;
      }

      v47 = sub_25DD96ED4();
      v48 = v32;
      v49 = v66;
      (*v60)(v66);
      (v47)(v75, 0);
      LOBYTE(v47) = sub_25DD96B04();
      v50 = *v39;
      (*v39)(v49, v40);
      v33 = v40;
      if ((v47 & 1) == 0)
      {
        break;
      }

      sub_25DD96EB4();
      v50(v48, v40);
      v51 = v73;
      sub_25DD96F74();
      v52 = v62(v51, 1, v40);
      a2 = v45;
      v9 = v44;
      v32 = v48;
      if (v52 == 1)
      {
        goto LABEL_6;
      }
    }

    v50(v48, v40);
    (*(v56 + 8))(v69, v70);
    (*(v59 + 32))(v58, v74, v71);
  }

LABEL_9:
  type metadata accessor for FirstIndexAfterPrefixResult();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_25DD01D84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v87 = a5;
  v88 = a6;
  v85 = a1;
  v86 = a3;
  v69 = a7;
  v10 = *(*(a4 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v66 = *(TupleTypeMetadata2 - 8);
  v12 = *(v66 + 64);
  v13 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v67 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v65 = &v64 - v15;
  v16 = swift_getAssociatedTypeWitness();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v83 = &v64 - v19;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v82 = sub_25DD97244();
  v76 = *(v82 - 8);
  v21 = *(v76 + 64);
  MEMORY[0x28223BE20](v82);
  v81 = &v64 - v22;
  v70 = a4;
  v23 = swift_getAssociatedConformanceWitness();
  v84 = v16;
  v80 = v23;
  IndexAfterPrefixResult = type metadata accessor for FirstIndexAfterPrefixResult();
  v73 = *(IndexAfterPrefixResult - 8);
  v25 = *(v73 + 64);
  v26 = MEMORY[0x28223BE20](IndexAfterPrefixResult);
  v79 = &v64 - v27;
  v28 = *(AssociatedTypeWitness - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v26);
  v32 = &v64 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v34 = &v64 - v33;
  sub_25DD96E84();
  v35 = v10;
  v89 = a2;
  v90 = (v28 + 8);
  v71 = v28;
  v76 += 8;
  v77 = (v28 + 16);
  v74 = AssociatedConformanceWitness;
  v75 = (v17 + 8);
  v73 += 8;
  for (i = AssociatedTypeWitness; ; AssociatedTypeWitness = i)
  {
    v36 = v7;
    v37 = v35;
    sub_25DD96EA4();
    v38 = sub_25DD96AE4();
    v39 = *v90;
    (*v90)(v32, AssociatedTypeWitness);
    if ((v38 & 1) == 0)
    {
      v39(v34, AssociatedTypeWitness);
      goto LABEL_11;
    }

    v40 = *(AssociatedConformanceWitness + 8);
    result = sub_25DD96B04();
    if ((result & 1) == 0)
    {
      __break(1u);
      goto LABEL_13;
    }

    v72 = v39;
    v42 = v81;
    (*v77)(v81, v34, AssociatedTypeWitness);
    v43 = v82;
    swift_getWitnessTable();
    v44 = IndexAfterPrefixResult;
    v45 = v83;
    sub_25DD96EC4();
    (*v76)(v42, v43);
    v46 = v79;
    v47 = v84;
    sub_25DD016A4(v85, v84, v86, v80, v87, v88, v79);
    v48 = v45;
    IndexAfterPrefixResult = v44;
    (*v75)(v48, v47);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 1)
    {
      break;
    }

    v7 = v36;
    sub_25DD96EB4();
    (*v73)(v46, v44);
    v35 = v37;
    AssociatedConformanceWitness = v74;
  }

  if (EnumCaseMultiPayload)
  {
    (*(v71 + 32))(v69, v34, i);
    goto LABEL_11;
  }

  v51 = v71 + 32;
  v50 = *(v71 + 32);
  v52 = i;
  v50(v32, v46, i);
  result = sub_25DD96AF4();
  if (result)
  {
    v53 = v34;
    v54 = v65;
    v50(v65, v53, v52);
    v55 = v51;
    v56 = TupleTypeMetadata2;
    v50(&v54[*(TupleTypeMetadata2 + 48)], v32, v52);
    v71 = v55;
    v57 = v66;
    v58 = v67;
    (*(v66 + 16))(v67, v54, v56);
    v59 = *(v56 + 48);
    v60 = v69;
    v50(v69, v58, v52);
    v61 = v72;
    v72(&v58[v59], v52);
    (*(v57 + 32))(v58, v54, v56);
    v62 = *(v56 + 48);
    v63 = sub_25DD96EF4();
    v50(&v60[*(v63 + 36)], &v58[v62], v52);
    v61(v58, v52);
LABEL_11:
    type metadata accessor for LongestMatchResult();
    return swift_storeEnumTagMultiPayload();
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_25DD02518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v6 = v5;
  v31 = a1;
  v32 = a4;
  v27 = a5;
  v28 = a2;
  v26[1] = a3;
  v7 = *(*(*(a3 + 8) + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = v26 - v11;
  v13 = swift_getAssociatedTypeWitness();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v33 = v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = v26 - v18;
  sub_25DD96E84();
  v26[0] = v14;
  v34 = (v14 + 8);
  v29 = (v9 + 16);
  for (i = (v9 + 8); ; (*i)(v12, AssociatedTypeWitness))
  {
    v20 = v33;
    sub_25DD96EA4();
    swift_getAssociatedConformanceWitness();
    v21 = sub_25DD96AE4();
    v22 = v6;
    v23 = *v34;
    (*v34)(v20, v13);
    if ((v21 & 1) == 0)
    {
      v23(v19, v13);
      goto LABEL_8;
    }

    v24 = sub_25DD96ED4();
    (*v29)(v12);
    v24(v35, 0);
    if (sub_25DD96B04())
    {
      break;
    }

    v6 = v22;
    if (sub_25DD96B04())
    {
      break;
    }

    sub_25DD96EB4();
  }

  (*i)(v12, AssociatedTypeWitness);
  (*(v26[0] + 32))(v27, v19, v13);
LABEL_8:
  type metadata accessor for MatchOfOneOfResult();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_25DD02920(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(*(*(a1 + 24) + 8) + 8);
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    swift_getAssociatedConformanceWitness();
    result = sub_25DD96EF4();
    if (v5 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25DD029EC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = a3 + 16;
  v5 = *(a3 + 16);
  v7 = *(*(*(v6 + 8) + 8) + 8);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 64);
  v10 = ((v9 + *(v8 + 80)) & ~*(v8 + 80)) + v9;
  if (v10 <= v9)
  {
    v10 = v9;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_25;
  }

  v11 = v10 + 1;
  v12 = 8 * (v10 + 1);
  if ((v10 + 1) <= 3)
  {
    v15 = ((a2 + ~(-1 << v12) - 253) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v15 < 2)
    {
LABEL_25:
      v17 = *(a1 + v10);
      if (v17 >= 3)
      {
        return (v17 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_25;
  }

LABEL_14:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return (v11 | v16) + 254;
}

void sub_25DD02B7C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(*(*(a4 + 24) + 8) + 8);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 64);
  v11 = ((v10 + *(v9 + 80)) & ~*(v9 + 80)) + v10;
  if (v11 > v10)
  {
    v10 = v11;
  }

  v12 = v10 + 1;
  if (a3 < 0xFE)
  {
    v13 = 0;
  }

  else if (v12 <= 3)
  {
    v16 = ((a3 + ~(-1 << (8 * v12)) - 253) >> (8 * v12)) + 1;
    if (HIWORD(v16))
    {
      v13 = 4;
    }

    else
    {
      if (v16 < 0x100)
      {
        v17 = 1;
      }

      else
      {
        v17 = 2;
      }

      if (v16 >= 2)
      {
        v13 = v17;
      }

      else
      {
        v13 = 0;
      }
    }
  }

  else
  {
    v13 = 1;
  }

  if (a2 > 0xFD)
  {
    v14 = a2 - 254;
    if (v12 >= 4)
    {
      bzero(a1, v10 + 1);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v15 = (v14 >> (8 * v12)) + 1;
    if (v10 != -1)
    {
      v18 = v14 & ~(-1 << (8 * v12));
      bzero(a1, v12);
      if (v12 != 3)
      {
        if (v12 == 2)
        {
          *a1 = v18;
          if (v13 > 1)
          {
LABEL_39:
            if (v13 == 2)
            {
              *&a1[v12] = v15;
            }

            else
            {
              *&a1[v12] = v15;
            }

            return;
          }
        }

        else
        {
          *a1 = v14;
          if (v13 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v13)
        {
          a1[v12] = v15;
        }

        return;
      }

      *a1 = v18;
      a1[2] = BYTE2(v18);
    }

    if (v13 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v13 <= 1)
  {
    if (v13)
    {
      a1[v12] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v10] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v13 == 2)
  {
    *&a1[v12] = 0;
    goto LABEL_24;
  }

  *&a1[v12] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_25DD02D98(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(*(*(a1 + 24) + 8) + 8);
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25DD02E18(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = a3 + 16;
  v5 = *(a3 + 16);
  v7 = *(*(*(v6 + 8) + 8) + 8);
  v8 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_23;
  }

  v9 = v8 + 1;
  v10 = 8 * (v8 + 1);
  if ((v8 + 1) <= 3)
  {
    v13 = ((a2 + ~(-1 << v10) - 253) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v13 < 2)
    {
LABEL_23:
      v15 = *(a1 + v8);
      if (v15 >= 3)
      {
        return (v15 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_23;
  }

LABEL_12:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return (v9 | v14) + 254;
}

void sub_25DD02F68(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(*(*(a4 + 24) + 8) + 8);
  v9 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v10 = v9 + 1;
  if (a3 < 0xFE)
  {
    v11 = 0;
  }

  else if (v10 <= 3)
  {
    v14 = ((a3 + ~(-1 << (8 * v10)) - 253) >> (8 * v10)) + 1;
    if (HIWORD(v14))
    {
      v11 = 4;
    }

    else
    {
      if (v14 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v14 >= 2)
      {
        v11 = v15;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 1;
  }

  if (a2 > 0xFD)
  {
    v12 = a2 - 254;
    if (v10 >= 4)
    {
      bzero(a1, v9 + 1);
      *a1 = v12;
      v13 = 1;
      if (v11 > 1)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v13 = (v12 >> (8 * v10)) + 1;
    if (v9 != -1)
    {
      v16 = v12 & ~(-1 << (8 * v10));
      bzero(a1, v10);
      if (v10 != 3)
      {
        if (v10 == 2)
        {
          *a1 = v16;
          if (v11 > 1)
          {
LABEL_37:
            if (v11 == 2)
            {
              *&a1[v10] = v13;
            }

            else
            {
              *&a1[v10] = v13;
            }

            return;
          }
        }

        else
        {
          *a1 = v12;
          if (v11 > 1)
          {
            goto LABEL_37;
          }
        }

LABEL_34:
        if (v11)
        {
          a1[v10] = v13;
        }

        return;
      }

      *a1 = v16;
      a1[2] = BYTE2(v16);
    }

    if (v11 > 1)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  if (v11 <= 1)
  {
    if (v11)
    {
      a1[v10] = 0;
      if (!a2)
      {
        return;
      }

LABEL_23:
      a1[v9] = -a2;
      return;
    }

LABEL_22:
    if (!a2)
    {
      return;
    }

    goto LABEL_23;
  }

  if (v11 == 2)
  {
    *&a1[v10] = 0;
    goto LABEL_22;
  }

  *&a1[v10] = 0;
  if (a2)
  {
    goto LABEL_23;
  }
}

uint64_t sub_25DD0313C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2118, &qword_25DD98588);
    v3 = sub_25DD970F4();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    v7 = *(v3 + 40);
    while (1)
    {
      v11 = *(v6 + v4);
      result = MEMORY[0x25F8A3F70](v7, *(v6 + v4), 1);
      v13 = ~(-1 << *(v3 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v13);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + v14) != v11)
        {
          v14 = (v14 + 1) & v13;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + v14) = v11;
        v8 = *(v3 + 16);
        v9 = __OFADD__(v8, 1);
        v10 = v8 + 1;
        if (v9)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v10;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_25DD03274(uint64_t a1)
{
  if (sub_25DD96B54() == 0x7461642D6D726F66 && v2 == 0xE900000000000061)
  {

LABEL_5:

    return 0;
  }

  v3 = sub_25DD975D4();

  if (v3)
  {
    goto LABEL_5;
  }

  return a1;
}

uint64_t sub_25DD03330(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a1;
  }

  else
  {
    v2 = 0x7461642D6D726F66;
  }

  return v2;
}

uint64_t sub_25DD03380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      if (a1 != a3 || a2 != a4)
      {
        return sub_25DD975D4();
      }

      return 1;
    }

    return 0;
  }

  return !a4;
}

uint64_t sub_25DD033B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return MEMORY[0x25F8A3F90](0);
  }

  MEMORY[0x25F8A3F90](1);

  return sub_25DD96B94();
}

uint64_t sub_25DD03424(uint64_t a1, uint64_t a2)
{
  sub_25DD97964();
  if (a2)
  {
    MEMORY[0x25F8A3F90](1);
    sub_25DD96B94();
  }

  else
  {
    MEMORY[0x25F8A3F90](0);
  }

  return sub_25DD979A4();
}

uint64_t sub_25DD03498()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25DD97964();
  if (v2)
  {
    MEMORY[0x25F8A3F90](1);
    sub_25DD96B94();
  }

  else
  {
    MEMORY[0x25F8A3F90](0);
  }

  return sub_25DD979A4();
}

uint64_t sub_25DD03508()
{
  if (!v0[1])
  {
    return MEMORY[0x25F8A3F90](0);
  }

  v1 = *v0;
  MEMORY[0x25F8A3F90](1);

  return sub_25DD96B94();
}

uint64_t sub_25DD03580()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25DD97964();
  if (v2)
  {
    MEMORY[0x25F8A3F90](1);
    sub_25DD96B94();
  }

  else
  {
    MEMORY[0x25F8A3F90](0);
  }

  return sub_25DD979A4();
}

uint64_t sub_25DD035EC(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      if (*a1 != *a2 || v3 != v4)
      {
        return sub_25DD975D4();
      }

      return 1;
    }

    return 0;
  }

  return !v4;
}

uint64_t sub_25DD03664(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_25DD036BC(uint64_t a1)
{
  v3 = sub_25DD96B54();
  v4 = v2;
  if (v3 == 1701667182 && v2 == 0xE400000000000000 || (sub_25DD975D4() & 1) != 0)
  {

    return 0;
  }

  if (v3 == 0x656D616E656C6966 && v4 == 0xE800000000000000)
  {

LABEL_9:

    return 0;
  }

  v6 = sub_25DD975D4();

  if (v6)
  {
    goto LABEL_9;
  }

  return a1;
}

uint64_t sub_25DD037C8(uint64_t a1, unint64_t a2)
{
  v2 = 0x656D616E656C6966;
  if (a2 != 1)
  {
    v2 = a1;
  }

  if (a2)
  {
    v3 = v2;
  }

  else
  {
    v3 = 1701667182;
  }

  sub_25DD03828(a1, a2);
  return v3;
}

uint64_t sub_25DD03828(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_25DD0383C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!a2)
  {
    return !a4;
  }

  if (a2 == 1)
  {
    return a4 == 1;
  }

  if (a4 < 2)
  {
    return 0;
  }

  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_25DD975D4();
  }
}

uint64_t sub_25DD03894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    v3 = 0;
    return MEMORY[0x25F8A3F90](v3);
  }

  if (a3 == 1)
  {
    v3 = 1;
    return MEMORY[0x25F8A3F90](v3);
  }

  MEMORY[0x25F8A3F90](2);

  return sub_25DD96B94();
}

uint64_t sub_25DD03914(uint64_t a1, uint64_t a2)
{
  sub_25DD97964();
  if (a2)
  {
    if (a2 != 1)
    {
      MEMORY[0x25F8A3F90](2);
      sub_25DD96B94();
      return sub_25DD979A4();
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x25F8A3F90](v3);
  return sub_25DD979A4();
}

uint64_t sub_25DD03998()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25DD97964();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x25F8A3F90](2);
      sub_25DD96B94();
      return sub_25DD979A4();
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x25F8A3F90](v3);
  return sub_25DD979A4();
}

uint64_t sub_25DD03A18()
{
  v1 = v0[1];
  if (!v1)
  {
    v2 = 0;
    return MEMORY[0x25F8A3F90](v2);
  }

  if (v1 == 1)
  {
    v2 = 1;
    return MEMORY[0x25F8A3F90](v2);
  }

  v4 = *v0;
  MEMORY[0x25F8A3F90](2);

  return sub_25DD96B94();
}

uint64_t sub_25DD03AA0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25DD97964();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x25F8A3F90](2);
      sub_25DD96B94();
      return sub_25DD979A4();
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x25F8A3F90](v3);
  return sub_25DD979A4();
}

uint64_t sub_25DD03B1C(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (!v3)
  {
    return !v4;
  }

  if (v3 == 1)
  {
    return v4 == 1;
  }

  if (v4 < 2)
  {
    return 0;
  }

  if (*a1 != *a2 || v3 != v4)
  {
    return sub_25DD975D4();
  }

  return 1;
}

uint64_t sub_25DD03B90(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_25DD03C10(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v4;
    sub_25DD04A2C(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);
    result = sub_25DD07C8C(a3, a4);
    *v4 = v20;
  }

  else
  {
    v13 = *v4;
    v14 = sub_25DD043CC(a3, a4);
    LOBYTE(v13) = v15;
    result = sub_25DD07C8C(a3, a4);
    if (v13)
    {
      v16 = *v5;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v5;
      v21 = *v5;
      if (!v17)
      {
        sub_25DD04BB8();
        v18 = v21;
      }

      sub_25DD07C8C(*(*(v18 + 48) + 16 * v14), *(*(v18 + 48) + 16 * v14 + 8));
      v19 = *(*(v18 + 56) + 16 * v14 + 8);

      result = sub_25DD0484C(v14, v18);
      *v5 = v18;
    }
  }

  return result;
}

uint64_t (*sub_25DD03D20(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = *(v1 + 16);
  if (*(v3 + 16) && (v4 = sub_25DD043CC(0, 0), (v5 & 1) != 0))
  {
    v6 = (*(v3 + 56) + 16 * v4);
    v8 = *v6;
    v7 = v6[1];
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  *a1 = v8;
  a1[1] = v9;
  return sub_25DD03D9C;
}

uint64_t sub_25DD03DAC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v5 = sub_25DD043CC(0, a4);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = (*(a3 + 56) + 16 * v5);
  v9 = *v7;
  v8 = v7[1];

  return v9;
}

uint64_t (*sub_25DD03E44(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = *(v1 + 16);
  if (*(v3 + 16) && (v4 = sub_25DD043CC(0, 1uLL), (v5 & 1) != 0))
  {
    v6 = (*(v3 + 56) + 16 * v4);
    v8 = *v6;
    v7 = v6[1];
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  *a1 = v8;
  a1[1] = v9;
  return sub_25DD03EC0;
}

uint64_t sub_25DD03EC8(uint64_t *a1, char a2, unint64_t a3)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  if ((a2 & 1) == 0)
  {
    return sub_25DD03C10(*a1, v4, 0, a3);
  }

  v7 = a1[1];

  sub_25DD03C10(v5, v4, 0, a3);
}

uint64_t sub_25DD03F58()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_25DD97964();
  sub_25DD04148(v1, v2, v3);
  sub_25DD96B94();

  return sub_25DD979A4();
}

uint64_t sub_25DD03FD0()
{
  sub_25DD04148(*v0, *(v0 + 8), *(v0 + 16));
  sub_25DD96B94();
}

uint64_t sub_25DD04028()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_25DD97964();
  sub_25DD04148(v1, v2, v3);
  sub_25DD96B94();

  return sub_25DD979A4();
}

uint64_t sub_25DD0409C(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = sub_25DD04148(*a1, *(a1 + 8), *(a1 + 16));
  v7 = v6;
  if (v5 == sub_25DD04148(v2, v3, v4) && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_25DD975D4();
  }

  return v10 & 1;
}

uint64_t sub_25DD04148(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v22 = 0;
  v23 = 0xE000000000000000;
  if (a2)
  {
    v4 = a1;
  }

  else
  {
    v4 = 0x7461642D6D726F66;
  }

  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0xE900000000000061;
  }

  MEMORY[0x25F8A3200](v4, v5);

  v6 = *(a3 + 16);
  if (!v6)
  {
    return v22;
  }

  v7 = sub_25DD05540(*(a3 + 16), 0);
  v8 = sub_25DD06A60(&v20, (v7 + 4), v6, a3);

  sub_25DD07900();
  if (v8 == v6)
  {
    v20 = v7;
    sub_25DD05824(&v20);
    v9 = *(v20 + 16);
    if (v9)
    {
      v10 = (v20 + 56);
      do
      {
        v11 = *(v10 - 3);
        v12 = *(v10 - 2);
        v13 = *(v10 - 1);
        v14 = *v10;
        v20 = 8251;
        v21 = 0xE200000000000000;
        if (v12 == 1)
        {
          v15 = 0x656D616E656C6966;
        }

        else
        {
          v15 = v11;
        }

        if (v12 == 1)
        {
          v16 = 0xE800000000000000;
        }

        else
        {
          v16 = v12;
        }

        if (v12)
        {
          v17 = v15;
        }

        else
        {
          v17 = 1701667182;
        }

        if (v12)
        {
          v18 = v16;
        }

        else
        {
          v18 = 0xE400000000000000;
        }

        sub_25DD03828(v11, v12);
        MEMORY[0x25F8A3200](v17, v18);

        MEMORY[0x25F8A3200](8765, 0xE200000000000000);
        MEMORY[0x25F8A3200](v13, v14);

        MEMORY[0x25F8A3200](34, 0xE100000000000000);
        MEMORY[0x25F8A3200](v20, v21);

        v10 += 4;
        --v9;
      }

      while (v9);
    }

    return v22;
  }

  __break(1u);
  MEMORY[0x25F8A43F0](v7);

  __break(1u);
  return result;
}

uint64_t sub_25DD04368@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_25DD070C4(*a1, *(a1 + 8));
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  return result;
}

uint64_t sub_25DD0439C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25DD04148(*v1, *(v1 + 8), *(v1 + 16));
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_25DD043CC(uint64_t a1, unint64_t a2)
{
  v5 = *(v2 + 40);
  sub_25DD97964();
  if (!a2)
  {
    v6 = 0;
    goto LABEL_5;
  }

  if (a2 == 1)
  {
    v6 = 1;
LABEL_5:
    MEMORY[0x25F8A3F90](v6);
    goto LABEL_7;
  }

  MEMORY[0x25F8A3F90](2);
  sub_25DD96B94();
LABEL_7:
  v7 = sub_25DD979A4();

  return sub_25DD04470(a1, a2, v7);
}

unint64_t sub_25DD04470(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    v10 = *(v3 + 48);
    do
    {
      v11 = (v10 + 16 * v6);
      v12 = v11[1];
      if (v12)
      {
        if (v12 == 1)
        {
          if (a2 == 1)
          {
            return v6;
          }
        }

        else if (a2 >= 2)
        {
          v13 = *v11 == a1 && v12 == a2;
          if (v13 || (sub_25DD975D4() & 1) != 0)
          {
            return v6;
          }
        }
      }

      else if (!a2)
      {
        return v6;
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

uint64_t sub_25DD04554(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2178, &qword_25DD98818);
  v38 = a2;
  result = sub_25DD972B4();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (1)
    {
      if (!v13)
      {
        v20 = v9;
        while (1)
        {
          v9 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            __break(1u);
            goto LABEL_43;
          }

          if (v9 >= v14)
          {
            break;
          }

          v21 = v10[v9];
          ++v20;
          if (v21)
          {
            v19 = __clz(__rbit64(v21));
            v13 = (v21 - 1) & v21;
            goto LABEL_17;
          }
        }

        if ((v38 & 1) == 0)
        {

          v3 = v37;
          goto LABEL_41;
        }

        v36 = 1 << *(v5 + 32);
        v3 = v37;
        if (v36 >= 64)
        {
          bzero((v5 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v10 = -1 << v36;
        }

        *(v5 + 16) = 0;
        goto LABEL_40;
      }

      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = 16 * (v19 | (v9 << 6));
      v23 = *(*(v5 + 48) + v22);
      v24 = (*(v5 + 56) + v22);
      v25 = v24[1];
      v39 = *v24;
      v40 = v23;
      v26 = *(&v23 + 1);
      if ((v38 & 1) == 0)
      {
        sub_25DD03828(v23, *(&v23 + 1));
      }

      v27 = *(v8 + 40);
      sub_25DD97964();
      if (!v26)
      {
        break;
      }

      if (v26 == 1)
      {
        v28 = 1;
LABEL_23:
        MEMORY[0x25F8A3F90](v28);
        goto LABEL_25;
      }

      MEMORY[0x25F8A3F90](2);
      sub_25DD96B94();
LABEL_25:
      result = sub_25DD979A4();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_43:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      *(*(v8 + 48) + v17) = v40;
      v18 = (*(v8 + 56) + v17);
      *v18 = v39;
      v18[1] = v25;
      ++*(v8 + 16);
    }

    v28 = 0;
    goto LABEL_23;
  }

LABEL_40:

LABEL_41:
  *v3 = v8;
  return result;
}

uint64_t sub_25DD0484C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25DD970C4() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_25DD97964();
      if (!v12)
      {
        break;
      }

      if (v12 == 1)
      {
        v13 = 1;
LABEL_9:
        MEMORY[0x25F8A3F90](v13);
        goto LABEL_11;
      }

      MEMORY[0x25F8A3F90](2);

      sub_25DD96B94();
LABEL_11:
      v14 = sub_25DD979A4();
      result = sub_25DD07C8C(v11, v12);
      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_16;
      }

      if (v3 >= v15)
      {
LABEL_16:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 16 * v3);
        v21 = (v19 + 16 * v6);
        if (v3 != v6 || v20 >= v21 + 1)
        {
          *v20 = *v21;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    v13 = 0;
    goto LABEL_9;
  }

LABEL_22:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_25DD04A2C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_25DD043CC(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_25DD04554(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_25DD043CC(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_25DD978F4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_25DD04BB8();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;

  return sub_25DD03828(a3, a4);
}

void *sub_25DD04BB8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2178, &qword_25DD98818);
  v2 = *v0;
  v3 = sub_25DD972A4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 56) + v17);
        v19 = *v18;
        v20 = v18[1];
        v21 = *(*(v2 + 48) + v17);
        *(*(v4 + 48) + v17) = v21;
        v22 = (*(v4 + 56) + v17);
        *v22 = v19;
        v22[1] = v20;
        sub_25DD03828(v21, *(&v21 + 1));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

unint64_t sub_25DD04D30@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_25DD96CA4();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_25DD05434(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_25DD05434((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_25DD96C84();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_25DD96BA4();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_25DD96BA4();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_25DD96CA4();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_25DD05434(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_25DD96CA4();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_25DD05434(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_25DD05434((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_25DD96BA4();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

char *sub_25DD050F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2148, &qword_25DD996D0);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_25DD051F4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2180, &qword_25DD98820);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2188, &qword_25DD98828);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25DD05328(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2190, &unk_25DD98830);
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

char *sub_25DD05434(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2198, &unk_25DD9BED0);
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

void *sub_25DD05540(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2138, &qword_25DD987F8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 1;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 5);
  return result;
}

char *sub_25DD055C4(char *a1, int64_t a2, char a3)
{
  result = sub_25DD05718(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25DD055E4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2138, &qword_25DD987F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2140, &unk_25DD98800);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25DD05718(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2190, &unk_25DD98830);
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

uint64_t sub_25DD05824(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_25DD06BF0(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_25DD05890(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_25DD05890(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_25DD97354();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2140, &unk_25DD98800);
        v5 = sub_25DD96D64();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_25DD05B84(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_25DD05998(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_25DD05998(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v28 = *a4;
    v4 = *a4 + 32 * a3;
    v5 = result - a3;
LABEL_5:
    v26 = v4;
    v27 = a3;
    v6 = (v28 + 32 * a3);
    v7 = *v6;
    v8 = v6[1];
    v9 = v6[3];
    v25 = v5;
    while (1)
    {
      v30 = v5;
      v11 = *(v4 - 32);
      v10 = *(v4 - 24);
      v12 = *(v4 - 8);
      if (v8 == 1)
      {
        v13 = 0x656D616E656C6966;
      }

      else
      {
        v13 = v7;
      }

      if (v8 == 1)
      {
        v14 = 0xE800000000000000;
      }

      else
      {
        v14 = v8;
      }

      if (v8)
      {
        v15 = v13;
      }

      else
      {
        v15 = 1701667182;
      }

      if (v8)
      {
        v16 = v14;
      }

      else
      {
        v16 = 0xE400000000000000;
      }

      if (v10 == 1)
      {
        v17 = 0x656D616E656C6966;
      }

      else
      {
        v17 = *(v4 - 32);
      }

      if (v10 == 1)
      {
        v18 = 0xE800000000000000;
      }

      else
      {
        v18 = *(v4 - 24);
      }

      if (v10)
      {
        v19 = v17;
      }

      else
      {
        v19 = 1701667182;
      }

      if (v10)
      {
        v20 = v18;
      }

      else
      {
        v20 = 0xE400000000000000;
      }

      if (v15 == v19 && v16 == v20)
      {
        v29 = 0;
      }

      else
      {
        v29 = sub_25DD975D4();
      }

      sub_25DD03828(v11, v10);
      sub_25DD03828(v7, v8);
      sub_25DD03828(v7, v8);
      sub_25DD03828(v11, v10);

      sub_25DD07C8C(v11, v10);

      sub_25DD07C8C(v7, v8);

      if ((v29 & 1) == 0)
      {
LABEL_4:
        a3 = v27 + 1;
        v4 = v26 + 32;
        v5 = v25 - 1;
        if (v27 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v28)
      {
        break;
      }

      v7 = *v4;
      v21 = *(v4 + 24);
      v22 = *(v4 + 8);
      v23 = *(v4 - 16);
      *v4 = *(v4 - 32);
      *(v4 + 16) = v23;
      *(v4 - 24) = v22;
      *(v4 - 8) = v21;
      *(v4 - 32) = v7;
      v4 -= 32;
      v8 = v22;
      v5 = v30 + 1;
      if (v30 == -1)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_25DD05B84(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v125 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_164:
    v5 = *v125;
    if (!*v125)
    {
      goto LABEL_203;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_197;
    }

    goto LABEL_166;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8 + 1;
    v136 = v9;
    if (v8 + 1 < v7)
    {
      v132 = v7;
      v126 = v8;
      v128 = v6;
      v11 = *a3;
      v12 = (*a3 + 32 * v10);
      v14 = *v12;
      v13 = v12[1];
      v15 = v12[3];
      v16 = (*a3 + 32 * v8);
      v17 = *v16;
      v5 = v16[1];
      v18 = v16[3];
      sub_25DD03828(v14, v13);

      sub_25DD03828(v17, v5);

      if (v13)
      {
        if (v13 == 1)
        {
          v19 = 0x656D616E656C6966;
        }

        else
        {
          v19 = v14;
        }

        if (v13 == 1)
        {
          v20 = 0xE800000000000000;
        }

        else
        {
          v20 = v13;
        }

        if (v5)
        {
LABEL_13:
          if (v5 == 1)
          {
            v21 = 0x656D616E656C6966;
          }

          else
          {
            v21 = v17;
          }

          if (v5 == 1)
          {
            v22 = 0xE800000000000000;
          }

          else
          {
            v22 = v5;
          }

          if (v19 != v21)
          {
            goto LABEL_25;
          }

LABEL_23:
          if (v20 == v22)
          {
            v134 = 0;
            goto LABEL_26;
          }

LABEL_25:
          v134 = sub_25DD975D4();
LABEL_26:
          sub_25DD03828(v14, v13);
          sub_25DD03828(v17, v5);

          if (v128)
          {
            sub_25DD07C8C(v17, v5);

            sub_25DD07C8C(v14, v13);
          }

          sub_25DD07C8C(v17, v5);

          sub_25DD07C8C(v14, v13);

          v23 = 0;
          v24 = v126 + 2;
          v25 = (v11 + 32 * v126 + 88);
          v9 = v136;
          do
          {
            v26 = v24;
            v27 = v10;
            v28 = v23;
            if (v24 >= v132)
            {
              break;
            }

            v140 = v23;
            v142 = v10;
            v143 = v24;
            v30 = *(v25 - 3);
            v29 = *(v25 - 2);
            v5 = *v25;
            v31 = *(v25 - 7);
            v32 = *(v25 - 6);
            v33 = *(v25 - 4);
            v34 = v29 == 1 ? 0x656D616E656C6966 : *(v25 - 3);
            v35 = v29 == 1 ? 0xE800000000000000 : *(v25 - 2);
            v36 = v29 ? v34 : 1701667182;
            v37 = v29 ? v35 : 0xE400000000000000;
            v38 = v32 == 1 ? 0x656D616E656C6966 : *(v25 - 7);
            v39 = v32 == 1 ? 0xE800000000000000 : *(v25 - 6);
            v40 = v32 ? v38 : 1701667182;
            v41 = v32 ? v39 : 0xE400000000000000;
            v138 = v36 == v40 && v37 == v41 ? 0 : sub_25DD975D4();
            sub_25DD03828(v31, v32);
            sub_25DD03828(v30, v29);
            sub_25DD03828(v30, v29);
            sub_25DD03828(v31, v32);

            sub_25DD07C8C(v31, v32);

            sub_25DD07C8C(v30, v29);

            v26 = v143;
            v24 = v143 + 1;
            v25 += 4;
            v28 = v140;
            v27 = v142;
            v10 = v142 + 1;
            v23 = v140 + 32;
            v9 = v136;
          }

          while (((v134 ^ v138) & 1) == 0);
          if (v134)
          {
            v8 = v126;
            v6 = 0;
            if (v26 < v126)
            {
              goto LABEL_196;
            }

            if (v126 < v26)
            {
              v42 = 0;
              v43 = v126;
              do
              {
                if (v43 != v27)
                {
                  if (!*a3)
                  {
                    goto LABEL_200;
                  }

                  v45 = *a3 + 32 * v126;
                  v46 = (v45 + v42);
                  v47 = v45 + v28;
                  v48 = *(v46 + 2);
                  v49 = *(v46 + 3);
                  v50 = *v46;
                  v51 = *(v47 + 48);
                  *v46 = *(v47 + 32);
                  v46[1] = v51;
                  *(v47 + 32) = v50;
                  *(v47 + 48) = v48;
                  *(v47 + 56) = v49;
                }

                ++v43;
                v28 -= 32;
                v42 += 32;
              }

              while (v43 < v27--);
            }

            v10 = v26;
          }

          else
          {
            v10 = v26;
            v8 = v126;
            v6 = 0;
          }

          goto LABEL_69;
        }
      }

      else
      {
        v20 = 0xE400000000000000;
        v19 = 1701667182;
        if (v5)
        {
          goto LABEL_13;
        }
      }

      v22 = 0xE400000000000000;
      if (v19 != 1701667182)
      {
        goto LABEL_25;
      }

      goto LABEL_23;
    }

LABEL_69:
    v52 = a3[1];
    if (v10 < v52)
    {
      if (__OFSUB__(v10, v8))
      {
        goto LABEL_193;
      }

      if (v10 - v8 < a4)
      {
        v53 = v8 + a4;
        if (__OFADD__(v8, a4))
        {
          goto LABEL_194;
        }

        if (v53 >= v52)
        {
          v53 = a3[1];
        }

        if (v53 < v8)
        {
LABEL_195:
          __break(1u);
LABEL_196:
          __break(1u);
LABEL_197:
          result = sub_25DD06A4C(v9);
          v9 = result;
LABEL_166:
          v120 = *(v9 + 2);
          if (v120 >= 2)
          {
            while (*a3)
            {
              v121 = *&v9[16 * v120];
              v122 = *&v9[16 * v120 + 24];
              sub_25DD0651C((*a3 + 32 * v121), (*a3 + 32 * *&v9[16 * v120 + 16]), *a3 + 32 * v122, v5);
              if (v6)
              {
              }

              if (v122 < v121)
              {
                goto LABEL_190;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v9 = sub_25DD06A4C(v9);
              }

              if (v120 - 2 >= *(v9 + 2))
              {
                goto LABEL_191;
              }

              v123 = &v9[16 * v120];
              *v123 = v121;
              *(v123 + 1) = v122;
              result = sub_25DD069C0(v120 - 1);
              v120 = *(v9 + 2);
              if (v120 <= 1)
              {
              }
            }

            goto LABEL_201;
          }
        }

        if (v10 != v53)
        {
          break;
        }
      }
    }

LABEL_113:
    if (v10 < v8)
    {
      goto LABEL_192;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v5 = v6;
    if ((result & 1) == 0)
    {
      result = sub_25DD050F0(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v75 = *(v9 + 2);
    v74 = *(v9 + 3);
    v6 = v75 + 1;
    if (v75 >= v74 >> 1)
    {
      result = sub_25DD050F0((v74 > 1), v75 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v6;
    v76 = &v9[16 * v75];
    *(v76 + 4) = v8;
    *(v76 + 5) = v10;
    v8 = v10;
    v77 = *v125;
    if (!*v125)
    {
      goto LABEL_202;
    }

    if (v75)
    {
      while (1)
      {
        v78 = v6 - 1;
        if (v6 >= 4)
        {
          break;
        }

        if (v6 == 3)
        {
          v79 = *(v9 + 4);
          v80 = *(v9 + 5);
          v89 = __OFSUB__(v80, v79);
          v81 = v80 - v79;
          v82 = v89;
LABEL_133:
          if (v82)
          {
            goto LABEL_181;
          }

          v95 = &v9[16 * v6];
          v97 = *v95;
          v96 = *(v95 + 1);
          v98 = __OFSUB__(v96, v97);
          v99 = v96 - v97;
          v100 = v98;
          if (v98)
          {
            goto LABEL_184;
          }

          v101 = &v9[16 * v78 + 32];
          v103 = *v101;
          v102 = *(v101 + 1);
          v89 = __OFSUB__(v102, v103);
          v104 = v102 - v103;
          if (v89)
          {
            goto LABEL_187;
          }

          if (__OFADD__(v99, v104))
          {
            goto LABEL_188;
          }

          if (v99 + v104 >= v81)
          {
            if (v81 < v104)
            {
              v78 = v6 - 2;
            }

            goto LABEL_154;
          }

          goto LABEL_147;
        }

        v105 = &v9[16 * v6];
        v107 = *v105;
        v106 = *(v105 + 1);
        v89 = __OFSUB__(v106, v107);
        v99 = v106 - v107;
        v100 = v89;
LABEL_147:
        if (v100)
        {
          goto LABEL_183;
        }

        v108 = &v9[16 * v78];
        v110 = *(v108 + 4);
        v109 = *(v108 + 5);
        v89 = __OFSUB__(v109, v110);
        v111 = v109 - v110;
        if (v89)
        {
          goto LABEL_186;
        }

        if (v111 < v99)
        {
          goto LABEL_3;
        }

LABEL_154:
        v116 = v78 - 1;
        if (v78 - 1 >= v6)
        {
          __break(1u);
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          __break(1u);
LABEL_181:
          __break(1u);
LABEL_182:
          __break(1u);
LABEL_183:
          __break(1u);
LABEL_184:
          __break(1u);
LABEL_185:
          __break(1u);
LABEL_186:
          __break(1u);
LABEL_187:
          __break(1u);
LABEL_188:
          __break(1u);
LABEL_189:
          __break(1u);
LABEL_190:
          __break(1u);
LABEL_191:
          __break(1u);
LABEL_192:
          __break(1u);
LABEL_193:
          __break(1u);
LABEL_194:
          __break(1u);
          goto LABEL_195;
        }

        if (!*a3)
        {
          goto LABEL_199;
        }

        v117 = *&v9[16 * v116 + 32];
        v118 = *&v9[16 * v78 + 40];
        sub_25DD0651C((*a3 + 32 * v117), (*a3 + 32 * *&v9[16 * v78 + 32]), *a3 + 32 * v118, v77);
        v6 = v5;
        if (v5)
        {
        }

        if (v118 < v117)
        {
          goto LABEL_177;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_25DD06A4C(v9);
        }

        if (v116 >= *(v9 + 2))
        {
          goto LABEL_178;
        }

        v119 = &v9[16 * v116];
        *(v119 + 4) = v117;
        *(v119 + 5) = v118;
        result = sub_25DD069C0(v78);
        v6 = *(v9 + 2);
        if (v6 <= 1)
        {
          goto LABEL_3;
        }
      }

      v83 = &v9[16 * v6 + 32];
      v84 = *(v83 - 64);
      v85 = *(v83 - 56);
      v89 = __OFSUB__(v85, v84);
      v86 = v85 - v84;
      if (v89)
      {
        goto LABEL_179;
      }

      v88 = *(v83 - 48);
      v87 = *(v83 - 40);
      v89 = __OFSUB__(v87, v88);
      v81 = v87 - v88;
      v82 = v89;
      if (v89)
      {
        goto LABEL_180;
      }

      v90 = &v9[16 * v6];
      v92 = *v90;
      v91 = *(v90 + 1);
      v89 = __OFSUB__(v91, v92);
      v93 = v91 - v92;
      if (v89)
      {
        goto LABEL_182;
      }

      v89 = __OFADD__(v81, v93);
      v94 = v81 + v93;
      if (v89)
      {
        goto LABEL_185;
      }

      if (v94 >= v86)
      {
        v112 = &v9[16 * v78 + 32];
        v114 = *v112;
        v113 = *(v112 + 1);
        v89 = __OFSUB__(v113, v114);
        v115 = v113 - v114;
        if (v89)
        {
          goto LABEL_189;
        }

        if (v81 < v115)
        {
          v78 = v6 - 2;
        }

        goto LABEL_154;
      }

      goto LABEL_133;
    }

LABEL_3:
    v7 = a3[1];
    v6 = v5;
    if (v8 >= v7)
    {
      goto LABEL_164;
    }
  }

  v127 = v8;
  v129 = v6;
  v139 = *a3;
  v54 = *a3 + 32 * v10;
  v55 = v8 - v10;
  v130 = v53;
LABEL_79:
  v133 = v54;
  v135 = v10;
  v56 = (v139 + 32 * v10);
  v57 = *v56;
  v58 = v56[1];
  v59 = v56[3];
  v131 = v55;
  v60 = v55;
  while (1)
  {
    v141 = v60;
    v61 = *(v54 - 32);
    v5 = *(v54 - 24);
    v62 = *(v54 - 8);
    if (v58 == 1)
    {
      v63 = 0x656D616E656C6966;
    }

    else
    {
      v63 = v57;
    }

    if (v58 == 1)
    {
      v64 = 0xE800000000000000;
    }

    else
    {
      v64 = v58;
    }

    if (v58)
    {
      v65 = v63;
    }

    else
    {
      v65 = 1701667182;
    }

    if (v58)
    {
      v66 = v64;
    }

    else
    {
      v66 = 0xE400000000000000;
    }

    if (v5 == 1)
    {
      v67 = 0x656D616E656C6966;
    }

    else
    {
      v67 = *(v54 - 32);
    }

    if (v5 == 1)
    {
      v68 = 0xE800000000000000;
    }

    else
    {
      v68 = *(v54 - 24);
    }

    if (v5)
    {
      v69 = v67;
    }

    else
    {
      v69 = 1701667182;
    }

    if (v5)
    {
      v70 = v68;
    }

    else
    {
      v70 = 0xE400000000000000;
    }

    if (v65 == v69 && v66 == v70)
    {
      v144 = 0;
    }

    else
    {
      v144 = sub_25DD975D4();
    }

    sub_25DD03828(v61, v5);
    sub_25DD03828(v57, v58);
    sub_25DD03828(v57, v58);
    sub_25DD03828(v61, v5);

    sub_25DD07C8C(v61, v5);

    sub_25DD07C8C(v57, v58);

    if ((v144 & 1) == 0)
    {
LABEL_78:
      v10 = v135 + 1;
      v54 = v133 + 32;
      v55 = v131 - 1;
      if (v135 + 1 != v130)
      {
        goto LABEL_79;
      }

      v10 = v130;
      v8 = v127;
      v6 = v129;
      v9 = v136;
      goto LABEL_113;
    }

    if (!v139)
    {
      break;
    }

    v57 = *v54;
    v71 = *(v54 + 24);
    v72 = *(v54 + 8);
    v73 = *(v54 - 16);
    *v54 = *(v54 - 32);
    *(v54 + 16) = v73;
    *(v54 - 24) = v72;
    *(v54 - 8) = v71;
    *(v54 - 32) = v57;
    v54 -= 32;
    v58 = v72;
    v60 = v141 + 1;
    if (v141 == -1)
    {
      goto LABEL_78;
    }
  }

  __break(1u);
LABEL_199:
  __break(1u);
LABEL_200:
  __break(1u);
LABEL_201:
  __break(1u);
LABEL_202:
  __break(1u);
LABEL_203:
  __break(1u);
  return result;
}

uint64_t sub_25DD0651C(uint64_t *__src, uint64_t *a2, unint64_t a3, uint64_t *a4)
{
  v4 = a2;
  v5 = __src;
  v6 = a2 - __src;
  v7 = a2 - __src + 31;
  if (a2 - __src >= 0)
  {
    v7 = a2 - __src;
  }

  v8 = v7 >> 5;
  v9 = a3 - a2;
  v10 = a3 - a2 + 31;
  if ((a3 - a2) >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 5;
  v58 = a4;
  if (v8 >= v10 >> 5)
  {
    if (a4 != a2 || &a2[4 * v11] <= a4)
    {
      memmove(a4, a2, 32 * v11);
      a4 = v58;
    }

    v12 = &a4[4 * v11];
    if (v9 < 32 || v4 <= v5)
    {
      v32 = v4;
    }

    else
    {
      v33 = a3;
      v67 = v5;
LABEL_54:
      v34 = 0;
      v35 = v12;
      v69 = v4;
      v56 = v4 - 4;
      v57 = v12;
      do
      {
        v36 = &v35[v34];
        v37 = &v35[v34 - 4];
        v38 = *v37;
        v39 = v35[v34 - 3];
        v40 = v35[v34 - 1];
        v41 = *(v69 - 4);
        v42 = *(v69 - 3);
        v43 = *(v69 - 1);
        if (v39 == 1)
        {
          v44 = 0x656D616E656C6966;
        }

        else
        {
          v44 = v35[v34 - 4];
        }

        if (v39 == 1)
        {
          v45 = 0xE800000000000000;
        }

        else
        {
          v45 = v35[v34 - 3];
        }

        if (v39)
        {
          v46 = v44;
        }

        else
        {
          v46 = 1701667182;
        }

        if (v39)
        {
          v47 = v45;
        }

        else
        {
          v47 = 0xE400000000000000;
        }

        if (v42 == 1)
        {
          v48 = 0x656D616E656C6966;
        }

        else
        {
          v48 = *(v69 - 4);
        }

        if (v42 == 1)
        {
          v49 = 0xE800000000000000;
        }

        else
        {
          v49 = *(v69 - 3);
        }

        if (v42)
        {
          v50 = v48;
        }

        else
        {
          v50 = 1701667182;
        }

        if (v42)
        {
          v51 = v49;
        }

        else
        {
          v51 = 0xE400000000000000;
        }

        v59 = v37;
        v61 = v36;
        if (v46 == v50 && v47 == v51)
        {
          v65 = 0;
        }

        else
        {
          v65 = sub_25DD975D4();
        }

        v52 = (v33 + v34 * 8);
        v60 = (v33 + v34 * 8 - 32);
        sub_25DD03828(v41, v42);
        sub_25DD03828(v38, v39);
        sub_25DD03828(v38, v39);
        sub_25DD03828(v41, v42);

        sub_25DD07C8C(v41, v42);

        sub_25DD07C8C(v38, v39);

        if (v65)
        {
          a4 = v58;
          v32 = v56;
          v33 = v33 + v34 * 8 - 32;
          if (v52 != v69)
          {
            v54 = *(v56 + 1);
            *v60 = *v56;
            v60[1] = v54;
          }

          v12 = &v57[v34];
          if (&v57[v34] <= v58 || (v4 = v56, v56 <= v67))
          {
            v12 = &v57[v34];
            goto LABEL_94;
          }

          goto LABEL_54;
        }

        v35 = v57;
        a4 = v58;
        if ((v33 + v34 * 8) != v61)
        {
          v53 = *(v59 + 1);
          *v60 = *v59;
          *(v33 + v34 * 8 - 16) = v53;
        }

        v34 -= 4;
        v12 = &v57[v34];
      }

      while (&v57[v34] > v58);
      v32 = v69;
    }
  }

  else
  {
    if (a4 != __src || &__src[4 * v8] <= a4)
    {
      memmove(a4, __src, 32 * v8);
      a4 = v58;
    }

    v12 = &a4[4 * v8];
    if (v6 >= 32 && v4 < a3)
    {
      v62 = &a4[4 * v8];
      while (1)
      {
        v66 = v5;
        v14 = *v4;
        v13 = v4[1];
        v68 = v4;
        v15 = v4[3];
        v17 = *a4;
        v16 = a4[1];
        v18 = a4;
        v19 = a4[3];
        v20 = v13 == 1 ? 0x656D616E656C6966 : v14;
        v21 = v13 == 1 ? 0xE800000000000000 : v13;
        v22 = v13 ? v20 : 1701667182;
        v23 = v13 ? v21 : 0xE400000000000000;
        v24 = v16 == 1 ? 0x656D616E656C6966 : *a4;
        v25 = v16 == 1 ? 0xE800000000000000 : a4[1];
        v26 = v16 ? v24 : 1701667182;
        v27 = v16 ? v25 : 0xE400000000000000;
        v64 = v22 == v26 && v23 == v27 ? 0 : sub_25DD975D4();
        sub_25DD03828(v17, v16);
        sub_25DD03828(v14, v13);
        sub_25DD03828(v14, v13);
        sub_25DD03828(v17, v16);

        sub_25DD07C8C(v17, v16);

        sub_25DD07C8C(v14, v13);

        if ((v64 & 1) == 0)
        {
          break;
        }

        v28 = v68;
        v4 = v68 + 4;
        v29 = v66;
        a4 = v18;
        v30 = a3;
        if (v66 != v68)
        {
          goto LABEL_44;
        }

LABEL_45:
        v5 = v29 + 4;
        v12 = v62;
        if (a4 >= v62 || v4 >= v30)
        {
          goto LABEL_47;
        }
      }

      v28 = v18;
      a4 = v18 + 4;
      v29 = v66;
      v4 = v68;
      v30 = a3;
      if (v66 == v18)
      {
        goto LABEL_45;
      }

LABEL_44:
      v31 = *(v28 + 1);
      *v29 = *v28;
      *(v29 + 1) = v31;
      goto LABEL_45;
    }

LABEL_47:
    v32 = v5;
  }

LABEL_94:
  if (v32 != a4 || v32 >= (a4 + ((v12 - a4 + (v12 - a4 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0)))
  {
    memmove(v32, a4, 32 * ((v12 - a4) / 32));
  }

  return 1;
}

uint64_t sub_25DD069C0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_25DD06A4C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void *sub_25DD06A60(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v25 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (v12 << 10) | (16 * v17);
      v19 = (*(a4 + 56) + v18);
      v20 = *v19;
      v21 = v19[1];
      v22 = *(*(a4 + 48) + v18);
      *v11 = v22;
      *(v11 + 16) = v20;
      *(v11 + 24) = v21;
      if (v14 == v10)
      {
        sub_25DD03828(v22, *(&v22 + 1));

        goto LABEL_23;
      }

      v11 += 32;
      sub_25DD03828(v22, *(&v22 + 1));

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v24 = v12 + 1;
    }

    else
    {
      v24 = v13;
    }

    v12 = v24 - 1;
    v10 = result;
LABEL_23:
    v7 = v25;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

unint64_t sub_25DD06C04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2178, &qword_25DD98818);
    v3 = sub_25DD972C4();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;
      sub_25DD03828(v5, v6);

      result = sub_25DD043CC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_25DD06D1C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_25DD06DDC(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = a3;
    LOBYTE(v5) = a2;
    v6 = result;
    v8 = *(result + 32);
    v7 = *(result + 40);
    v9 = *(result + 56);
    v49 = *(result + 48);
    v10 = *a3;
    sub_25DD03828(v8, v7);

    result = sub_25DD043CC(v8, v7);
    v12 = *(v10 + 16);
    v13 = (v11 & 1) == 0;
    v14 = __OFADD__(v12, v13);
    v15 = v12 + v13;
    if (v14)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    LOBYTE(v16) = v11;
    v50 = v4;
    if (*(v10 + 24) < v15)
    {
      sub_25DD04554(v15, v5 & 1);
      v17 = *v4;
      result = sub_25DD043CC(v8, v7);
      if ((v16 & 1) == (v18 & 1))
      {
        goto LABEL_7;
      }

LABEL_5:
      result = sub_25DD978F4();
      __break(1u);
    }

    if ((v5 & 1) == 0)
    {
      v26 = result;
      sub_25DD04BB8();
      result = v26;
      v19 = *v50;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_10;
    }

LABEL_7:
    v19 = *v4;
    if (v16)
    {
LABEL_8:
      v20 = 16 * result;
      v21 = (v19[7] + 16 * result);
      v23 = *v21;
      v22 = v21[1];

      sub_25DD07C8C(v8, v7);
      v24 = (v19[7] + v20);
      v25 = v24[1];
      *v24 = v23;
      v24[1] = v22;

LABEL_12:
      v16 = v3 - 1;
      v4 = v50;
      if (v3 == 1)
      {
        return result;
      }

      v5 = (v6 + 88);
      while (1)
      {
        v7 = *(v5 - 3);
        v6 = *(v5 - 2);
        v3 = *(v5 - 1);
        v8 = *v5;
        v37 = *v4;
        sub_25DD03828(v7, v6);

        result = sub_25DD043CC(v7, v6);
        v39 = *(v37 + 16);
        v40 = (v38 & 1) == 0;
        v14 = __OFADD__(v39, v40);
        v41 = v39 + v40;
        if (v14)
        {
          goto LABEL_23;
        }

        v9 = v38;
        if (*(v37 + 24) < v41)
        {
          sub_25DD04554(v41, 1);
          v42 = *v4;
          result = sub_25DD043CC(v7, v6);
          if ((v9 & 1) != (v43 & 1))
          {
            goto LABEL_5;
          }
        }

        v44 = *v4;
        if (v9)
        {
          v31 = 16 * result;
          v32 = (v44[7] + 16 * result);
          v34 = *v32;
          v33 = v32[1];

          sub_25DD07C8C(v7, v6);
          v35 = (v44[7] + v31);
          v36 = v35[1];
          *v35 = v34;
          v35[1] = v33;
        }

        else
        {
          v44[(result >> 6) + 8] |= 1 << result;
          v45 = (v44[6] + 16 * result);
          *v45 = v7;
          v45[1] = v6;
          v46 = (v44[7] + 16 * result);
          *v46 = v3;
          v46[1] = v8;
          v47 = v44[2];
          v14 = __OFADD__(v47, 1);
          v48 = v47 + 1;
          if (v14)
          {
            goto LABEL_24;
          }

          v44[2] = v48;
        }

        v5 += 4;
        --v16;
        v4 = v50;
        if (!v16)
        {
          return result;
        }
      }
    }

LABEL_10:
    v19[(result >> 6) + 8] |= 1 << result;
    v27 = (v19[6] + 16 * result);
    *v27 = v8;
    v27[1] = v7;
    v28 = (v19[7] + 16 * result);
    *v28 = v49;
    v28[1] = v9;
    v29 = v19[2];
    v14 = __OFADD__(v29, 1);
    v30 = v29 + 1;
    if (v14)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v19[2] = v30;
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_25DD070C4(uint64_t a1, unint64_t a2)
{
  v81 = sub_25DD965E4();
  v4 = *(v81 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v81);
  v7 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277D84F90];
  sub_25DD06C04(MEMORY[0x277D84F90]);

  *&v85 = 59;
  *(&v85 + 1) = 0xE100000000000000;
  v83 = &v85;
  v9 = a1;
  v10 = 0;
  v11 = sub_25DD04D30(0x7FFFFFFFFFFFFFFFLL, 1, sub_25DD07CA0, v82, v9, a2, &v85);
  v12 = *(v11 + 16);
  v80 = v4;
  if (!v12)
  {

    v13 = MEMORY[0x277D84F90];
    v24 = *(MEMORY[0x277D84F90] + 16);
    if (v24)
    {
      goto LABEL_7;
    }

LABEL_14:

    return v24;
  }

  v79 = 0;
  v88 = v8;
  sub_25DD055C4(0, v12, 0);
  v13 = v88;
  v14 = (v4 + 8);
  v78 = v11;
  v15 = (v11 + 56);
  do
  {
    v16 = *(v15 - 1);
    v17 = *v15;
    v85 = *(v15 - 3);
    v86 = v16;
    v87 = v17;

    sub_25DD965C4();
    sub_25DD07CBC();
    v18 = sub_25DD96F94();
    v20 = v19;
    (*v14)(v7, v81);

    v88 = v13;
    v22 = *(v13 + 2);
    v21 = *(v13 + 3);
    if (v22 >= v21 >> 1)
    {
      sub_25DD055C4((v21 > 1), v22 + 1, 1);
      v13 = v88;
    }

    *(v13 + 2) = v22 + 1;
    v23 = &v13[16 * v22];
    *(v23 + 4) = v18;
    *(v23 + 5) = v20;
    v15 += 4;
    --v12;
  }

  while (v12);

  v10 = v79;
  v24 = *(v13 + 2);
  if (!v24)
  {
    goto LABEL_14;
  }

LABEL_7:
  v26 = *(v13 + 4);
  v25 = *(v13 + 5);
  v78 = v13;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v88 = v78;
  if (!isUniquelyReferenced_nonNull_native || (v24 - 1) > *(v78 + 3) >> 1)
  {
    v78 = sub_25DD05328(isUniquelyReferenced_nonNull_native, v24, 1, v78);
    v88 = v78;
  }

  sub_25DD06D1C(0, 1, 0);
  if (sub_25DD96B54() == 0x7461642D6D726F66 && v28 == 0xE900000000000061)
  {
  }

  else
  {
    v29 = sub_25DD975D4();

    if ((v29 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  v26 = 0;
  v25 = 0;
LABEL_17:
  v31 = v78;
  v71 = v26;
  v72 = v25;
  v32 = MEMORY[0x277D84F90];
  v75 = *(v78 + 2);
  if (!v75)
  {
    v73 = MEMORY[0x277D84F90];
LABEL_47:
    v67 = v73;
    if (v73[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2178, &qword_25DD98818);
      v68 = sub_25DD972C4();
    }

    else
    {
      v68 = MEMORY[0x277D84F98];
    }

    v24 = v71;
    *&v85 = v68;
    sub_25DD06DDC(v67, 1, &v85);
    if (v10)
    {
      goto LABEL_55;
    }

    return v24;
  }

  v33 = 0;
  v73 = MEMORY[0x277D84F90];
  v74 = v78 + 32;
  v34 = (v80 + 8);
  while (v33 < *(v31 + 2))
  {
    v35 = &v74[16 * v33];
    v36 = *v35;
    v37 = v35[1];
    *&v85 = 61;
    *(&v85 + 1) = 0xE100000000000000;
    MEMORY[0x28223BE20](v30);
    *(&v70 - 2) = &v85;
    swift_bridgeObjectRetain_n();
    v80 = v37;
    v39 = sub_25DD04D30(1, 1, sub_25DD07E7C, (&v70 - 4), v36, v37, v38);
    v40 = *(v39 + 16);
    if (v40)
    {
      v77 = v33;
      v79 = v10;
      v84 = v32;
      sub_25DD055C4(0, v40, 0);
      v41 = v84;
      v76 = v39;
      v42 = (v39 + 56);
      do
      {
        v43 = *(v42 - 1);
        v44 = *v42;
        v85 = *(v42 - 3);
        v86 = v43;
        v87 = v44;

        sub_25DD965C4();
        sub_25DD07CBC();
        v45 = sub_25DD96F94();
        v47 = v46;
        (*v34)(v7, v81);

        v84 = v41;
        v49 = v41[2];
        v48 = v41[3];
        if (v49 >= v48 >> 1)
        {
          sub_25DD055C4((v48 > 1), v49 + 1, 1);
          v41 = v84;
        }

        v41[2] = v49 + 1;
        v50 = &v41[2 * v49];
        v50[4] = v45;
        v50[5] = v47;
        v42 += 4;
        --v40;
      }

      while (v40);

      v10 = v79;
      v32 = MEMORY[0x277D84F90];
      v33 = v77;
    }

    else
    {

      v41 = v32;
    }

    ++v33;
    if (v41[2] == 2)
    {
      v51 = v41[7];
      *&v85 = v41[6];
      *(&v85 + 1) = v51;
      v84 = &unk_286F949E8;
      sub_25DD07D68();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2160, &qword_25DD98810);
      sub_25DD07DC0();
      v52 = v81;
      sub_25DD970A4();
      sub_25DD07E24();
      v53 = sub_25DD96F94();
      v55 = v54;
      (*v34)(v7, v52);

      if (!v41[2])
      {
        goto LABEL_54;
      }

      v77 = v55;
      v79 = v53;
      v57 = v41[4];
      v56 = v41[5];

      v59 = sub_25DD96B54();
      v60 = v58;
      if (v59 == 1701667182 && v58 == 0xE400000000000000 || (sub_25DD975D4() & 1) != 0)
      {

        v57 = 0;
        v56 = 0;
      }

      else
      {
        if (v59 == 0x656D616E656C6966 && v60 == 0xE800000000000000)
        {

LABEL_45:

          v57 = 0;
          v56 = 1;
          goto LABEL_35;
        }

        v66 = sub_25DD975D4();

        if (v66)
        {
          goto LABEL_45;
        }
      }

LABEL_35:
      v30 = swift_isUniquelyReferenced_nonNull_native();
      if ((v30 & 1) == 0)
      {
        v30 = sub_25DD051F4(0, v73[2] + 1, 1, v73);
        v73 = v30;
      }

      v62 = v73[2];
      v61 = v73[3];
      v31 = v78;
      if (v62 >= v61 >> 1)
      {
        v30 = sub_25DD051F4((v61 > 1), v62 + 1, 1, v73);
        v31 = v78;
        v73 = v30;
      }

      v63 = v73;
      v73[2] = v62 + 1;
      v64 = &v63[4 * v62];
      v64[4] = v57;
      v64[5] = v56;
      v65 = v77;
      v64[6] = v79;
      v64[7] = v65;
      if (v33 == v75)
      {
        goto LABEL_47;
      }
    }

    else
    {

      v31 = v78;
      if (v33 == v75)
      {
        goto LABEL_47;
      }
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:

  MEMORY[0x25F8A43F0](v10);

  __break(1u);
  return result;
}

unint64_t sub_25DD0790C()
{
  result = qword_27FCC2120;
  if (!qword_27FCC2120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC2120);
  }

  return result;
}

unint64_t sub_25DD07964()
{
  result = qword_27FCC2128;
  if (!qword_27FCC2128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC2128);
  }

  return result;
}

unint64_t sub_25DD079BC()
{
  result = qword_27FCC2130;
  if (!qword_27FCC2130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC2130);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_25DD07A24(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_25DD07A6C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_25DD07AC8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25DD07B18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_25DD07B6C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_25DD07B84(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_22OpenAPIRuntimeInternal18ContentDispositionV13ParameterNameO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_25DD07BCC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25DD07C20(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_25DD07C8C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

unint64_t sub_25DD07CBC()
{
  result = qword_27FCC2150;
  if (!qword_27FCC2150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC2150);
  }

  return result;
}

uint64_t sub_25DD07D10(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_25DD975D4() & 1;
  }
}

unint64_t sub_25DD07D68()
{
  result = qword_27FCC2158;
  if (!qword_27FCC2158)
  {
    sub_25DD965E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC2158);
  }

  return result;
}

unint64_t sub_25DD07DC0()
{
  result = qword_27FCC2168;
  if (!qword_27FCC2168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCC2160, &qword_25DD98810);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC2168);
  }

  return result;
}

unint64_t sub_25DD07E24()
{
  result = qword_27FCC2170;
  if (!qword_27FCC2170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC2170);
  }

  return result;
}

uint64_t sub_25DD07E9C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_25DD07F3C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t (*sub_25DD07FE4())()
{
  v1 = *(*v0 + 88);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_25DD08054(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  (*(*(*(*v5 + 80) - 8) + 32))(v5 + *(*v5 + 88), a1);
  return v5;
}

uint64_t sub_25DD081CC()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_25DD08280(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t CopyOnWriteBox.init(value:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for CopyOnWriteBox.Storage();
  result = sub_25DD08054(a1);
  *a2 = result;
  return result;
}

uint64_t CopyOnWriteBox.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *(*v5 + 88);
  swift_beginAccess();
  return (*(*(*(a1 + 16) - 8) + 16))(a2, v5 + v6);
}

uint64_t sub_25DD0839C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + a3 - 8);
  v8 = *a1;
  v6 = type metadata accessor for CopyOnWriteBox();
  return CopyOnWriteBox.value.getter(v6, a4);
}

uint64_t sub_25DD083E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 8);
  v6 = type metadata accessor for CopyOnWriteBox();
  v7 = CopyOnWriteBox.value.modify(v10, v6);
  (*(*(v5 - 8) + 24))(v8, a1, v5);
  return (v7)(v10, 0);
}

void (*CopyOnWriteBox.value.modify(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  v3 = v2;
  v6 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x38uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *(a2 + 16);
  v10 = *(v9 - 8);
  if (v6)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(*(*(v9 - 8) + 64));
  }

  v12 = v11;
  *(v8 + 48) = v11;
  type metadata accessor for CopyOnWriteBox.Storage();
  v13 = sub_25DD97594();
  v14 = *v3;
  if ((v13 & 1) == 0)
  {
    v15 = *(*v14 + 88);
    swift_beginAccess();
    (*(v10 + 16))(v12, v14 + v15, v9);
    v14 = sub_25DD08054(v12);
    v16 = *v3;

    *v3 = v14;
  }

  v17 = *(*v14 + 88);
  swift_beginAccess();
  return sub_25DD08628;
}

void sub_25DD08628(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  swift_endAccess();
  free(v2);

  free(v1);
}

uint64_t CopyOnWriteBox.value.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for CopyOnWriteBox.Storage();
  v10 = sub_25DD97594();
  v11 = *v2;
  if ((v10 & 1) == 0)
  {
    v12 = *(*v11 + 88);
    swift_beginAccess();
    (*(v6 + 16))(v9, v11 + v12, v5);
    v11 = sub_25DD08054(v9);
    v13 = *v3;

    *v3 = v11;
  }

  v14 = *(*v11 + 88);
  swift_beginAccess();
  (*(v6 + 24))(v11 + v14, a1, v5);
  swift_endAccess();
  return (*(v6 + 8))(a1, v5);
}

uint64_t CopyOnWriteBox<A>.encode(to:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[1] = *v2;
  CopyOnWriteBox.value.getter(v8, v7);
  sub_25DD96AA4();
  return (*(v4 + 8))(v7, v3);
}

uint64_t CopyOnWriteBox<A>.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v17[-v13 - 8];
  sub_25DD08A7C(v12, v17);
  sub_25DD96E64();
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  if (!v3)
  {
    (*(v7 + 32))(v11, v14, a2);
    type metadata accessor for CopyOnWriteBox.Storage();
    result = sub_25DD08054(v11);
    *a3 = result;
  }

  return result;
}

uint64_t sub_25DD08A7C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t static CopyOnWriteBox<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v18 - v10;
  v13 = *v12;
  v18[1] = *v9;
  v14 = type metadata accessor for CopyOnWriteBox();
  CopyOnWriteBox.value.getter(v14, v11);
  v18[0] = v13;
  CopyOnWriteBox.value.getter(v14, v8);
  v15 = sub_25DD96B04();
  v16 = *(v4 + 8);
  v16(v8, a3);
  v16(v11, a3);
  return v15 & 1;
}

uint64_t CopyOnWriteBox<A>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[1] = *v2;
  CopyOnWriteBox.value.getter(v8, v7);
  sub_25DD96AC4();
  return (*(v4 + 8))(v7, v3);
}

uint64_t CopyOnWriteBox<A>.hashValue.getter(uint64_t a1)
{
  v4[9] = *v1;
  sub_25DD97964();
  CopyOnWriteBox<A>.hash(into:)(v4, a1);
  return sub_25DD979A4();
}

uint64_t sub_25DD08DE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_25DD97964();
  CopyOnWriteBox<A>.hash(into:)(v6, a2);
  return sub_25DD979A4();
}

uint64_t sub_25DD08E6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = *(a1 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = *v3;
  CopyOnWriteBox.value.getter(v9, v11);
  v12 = a3(v6, a2);
  (*(v7 + 8))(v11, v6);
  return v12;
}

uint64_t sub_25DD08FB8()
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

uint64_t sub_25DD090B4(uint64_t *a1, int a2)
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

uint64_t sub_25DD090FC(uint64_t result, int a2, int a3)
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

uint64_t sub_25DD0913C(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

double sub_25DD091D0()
{
  v0 = sub_25DD0C52C(MEMORY[0x277D84F90]);
  result = 3.9838611e252;
  xmmword_27FCC39C0 = xmmword_25DD98A30;
  *&qword_27FCC39D0 = xmmword_25DD98A40;
  byte_27FCC39E0 = 1;
  qword_27FCC39E8 = v0;
  return result;
}

__n128 OpenAPIMIMEType.init(kind:parameters:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 32);
  result = *a1;
  v5 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v5;
  *(a3 + 32) = v3;
  *(a3 + 40) = a2;
  return result;
}

__int128 *sub_25DD0923C()
{
  if (qword_27FCC39B0 != -1)
  {
    swift_once();
  }

  return &xmmword_27FCC39C0;
}

uint64_t static OpenAPIMIMEType.xml.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FCC39B0 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = xmmword_27FCC39C0;
  v2 = qword_27FCC39D0;
  v3 = unk_27FCC39D8;
  v4 = qword_27FCC39E8;
  *a1 = xmmword_27FCC39C0;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  v5 = byte_27FCC39E0;
  *(a1 + 32) = byte_27FCC39E0;
  *(a1 + 40) = v4;
  sub_25DD0C654(v1, *(&v1 + 1), v2, v3, v5);
}

uint64_t OpenAPIMIMEType.kind.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 32);
  *(a1 + 32) = v6;
  return sub_25DD0C654(v2, v3, v4, v5, v6);
}

__n128 OpenAPIMIMEType.kind.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  sub_25DCFFC90(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32));
  result = *a1;
  v5 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v5;
  *(v1 + 32) = v3;
  return result;
}

uint64_t OpenAPIMIMEType.parameters.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

uint64_t sub_25DD09404(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v37 = MEMORY[0x277D84F90];
  sub_25DD0B46C(0, v1, 0);
  v2 = v37;
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  result = sub_25DD970B4();
  v7 = result;
  v8 = 0;
  v9 = *(v3 + 36);
  v30 = v3 + 72;
  v31 = v1;
  v32 = v9;
  v33 = v3 + 64;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v3 + 32))
  {
    v11 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_22;
    }

    if (v9 != *(v3 + 36))
    {
      goto LABEL_23;
    }

    v34 = v8;
    v12 = (*(v3 + 48) + 16 * v7);
    v13 = *v12;
    v14 = v12[1];
    v15 = (*(v3 + 56) + 16 * v7);
    v36 = *v15;
    v16 = v3;
    v17 = v15[1];
    v35 = sub_25DD96B54();
    v19 = v18;
    v21 = *(v37 + 16);
    v20 = *(v37 + 24);

    if (v21 >= v20 >> 1)
    {
      result = sub_25DD0B46C((v20 > 1), v21 + 1, 1);
    }

    *(v37 + 16) = v21 + 1;
    v22 = (v37 + 32 * v21);
    v22[4] = v35;
    v22[5] = v19;
    v22[6] = v36;
    v22[7] = v17;
    v10 = 1 << *(v16 + 32);
    if (v7 >= v10)
    {
      goto LABEL_24;
    }

    v3 = v16;
    v4 = v33;
    v23 = *(v33 + 8 * v11);
    if ((v23 & (1 << v7)) == 0)
    {
      goto LABEL_25;
    }

    v9 = v32;
    if (v32 != *(v3 + 36))
    {
      goto LABEL_26;
    }

    v24 = v23 & (-2 << (v7 & 0x3F));
    if (v24)
    {
      v10 = __clz(__rbit64(v24)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v25 = v11 << 6;
      v26 = v11 + 1;
      v27 = (v30 + 8 * v11);
      while (v26 < (v10 + 63) >> 6)
      {
        v29 = *v27++;
        v28 = v29;
        v25 += 64;
        ++v26;
        if (v29)
        {
          result = sub_25DD0D514(v7, v32, 0);
          v10 = __clz(__rbit64(v28)) + v25;
          goto LABEL_4;
        }
      }

      result = sub_25DD0D514(v7, v32, 0);
    }

LABEL_4:
    v8 = v34 + 1;
    v7 = v10;
    if (v34 + 1 == v31)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
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

uint64_t sub_25DD09670(uint64_t result, uint64_t a2)
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
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_25DD0C2DC(v15, v16, sub_25DCFFA14);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_25DD975D4();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t OpenAPIMIMEType.Kind.init(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30[0] = 47;
  v30[1] = 0xE100000000000000;
  v29[2] = v30;
  v4 = sub_25DD04D30(0x7FFFFFFFFFFFFFFFLL, 1, sub_25DD07CA0, v29, a1, a2, v30);
  v5 = *(v4 + 16);
  if (!v5)
  {

    v8 = MEMORY[0x277D84F90];
LABEL_9:
    if (v8[2] == 2)
    {
      v21 = v8[4];
      v20 = v8[5];
      v23 = v8[6];
      v22 = v8[7];

      v24 = v21 == 42 && v20 == 0xE100000000000000;
      if (!v24 && (sub_25DD975D4() & 1) == 0)
      {
        v28 = v23 == 42 && v22 == 0xE100000000000000;
        if (v28 || (result = sub_25DD975D4(), (result & 1) != 0))
        {

          *a3 = v21;
          *(a3 + 8) = v20;
          *(a3 + 16) = 0;
          *(a3 + 24) = 0;
          *(a3 + 32) = 0;
          return result;
        }

        *a3 = v21;
        *(a3 + 8) = v20;
        *(a3 + 16) = v23;
        *(a3 + 24) = v22;
        v27 = 1;
LABEL_25:
        *(a3 + 32) = v27;
        return result;
      }

      if (v23 == 42 && v22 == 0xE100000000000000)
      {

LABEL_24:
        *a3 = 0u;
        *(a3 + 16) = 0u;
        v27 = 2;
        goto LABEL_25;
      }

      v26 = sub_25DD975D4();

      if (v26)
      {
        goto LABEL_24;
      }
    }

    else
    {
    }

    *a3 = 0u;
    *(a3 + 16) = 0u;
    v27 = -1;
    goto LABEL_25;
  }

  v30[0] = MEMORY[0x277D84F90];
  result = sub_25DD055C4(0, v5, 0);
  v7 = 0;
  v8 = v30[0];
  v9 = (v4 + 56);
  while (v7 < *(v4 + 16))
  {
    v10 = *(v9 - 3);
    v11 = *(v9 - 2);
    v12 = *(v9 - 1);
    v13 = *v9;

    v14 = MEMORY[0x25F8A3180](v10, v11, v12, v13);
    v16 = v15;

    v30[0] = v8;
    v18 = v8[2];
    v17 = v8[3];
    if (v18 >= v17 >> 1)
    {
      result = sub_25DD055C4((v17 > 1), v18 + 1, 1);
      v8 = v30[0];
    }

    ++v7;
    v8[2] = v18 + 1;
    v19 = &v8[2 * v18];
    v19[4] = v14;
    v19[5] = v16;
    v9 += 4;
    if (v5 == v7)
    {

      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t OpenAPIMIMEType.Kind.description.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (!*(v0 + 32))
  {
    v6 = *v0;
    sub_25DD0C654(*v0, *(v0 + 8), v1, v2, 0);
    v3 = 10799;
    v4 = 0xE200000000000000;
    goto LABEL_5;
  }

  if (*(v0 + 32) == 1)
  {
    v6 = *v0;
    v7 = *(v0 + 8);

    MEMORY[0x25F8A3200](47, 0xE100000000000000);
    v3 = v1;
    v4 = v2;
LABEL_5:
    MEMORY[0x25F8A3200](v3, v4);
    return v6;
  }

  return 2764586;
}

uint64_t OpenAPIMIMEType.init(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v74 = 59;
  *(&v74 + 1) = 0xE100000000000000;
  v73 = &v74;
  v3 = sub_25DD04D30(0x7FFFFFFFFFFFFFFFLL, 1, sub_25DD07E7C, v72, a1, a2, &v74);
  v4 = *(v3 + 16);
  if (v4)
  {
    *&v74 = MEMORY[0x277D84F90];
    sub_25DD055C4(0, v4, 0);
    v5 = 0;
    v6 = v74;
    v7 = (v3 + 56);
    while (v5 < *(v3 + 16))
    {
      v8 = *(v7 - 3);
      v9 = *(v7 - 2);
      v10 = *(v7 - 1);
      v11 = *v7;

      v12 = MEMORY[0x25F8A3180](v8, v9, v10, v11);
      v14 = v13;

      *&v74 = v6;
      v16 = *(v6 + 16);
      v15 = *(v6 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_25DD055C4((v15 > 1), v16 + 1, 1);
        v6 = v74;
      }

      ++v5;
      *(v6 + 16) = v16 + 1;
      v17 = v6 + 16 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v14;
      v7 += 4;
      if (v4 == v5)
      {

        goto LABEL_9;
      }
    }

    goto LABEL_47;
  }

  v6 = MEMORY[0x277D84F90];
LABEL_9:
  v18 = *(v6 + 16);
  if (v18)
  {
    *&v74 = MEMORY[0x277D84F90];
    sub_25DD055C4(0, v18, 0);
    v19 = v74;
    v20 = (v6 + 40);
    do
    {
      v21 = *(v20 - 1);
      v22 = *v20;

      v23 = sub_25DD279B4(v21, v22);
      v25 = v24;

      *&v74 = v19;
      v27 = *(v19 + 16);
      v26 = *(v19 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_25DD055C4((v26 > 1), v27 + 1, 1);
        v19 = v74;
      }

      *(v19 + 16) = v27 + 1;
      v28 = v19 + 16 * v27;
      *(v28 + 32) = v23;
      *(v28 + 40) = v25;
      v20 += 2;
      --v18;
    }

    while (v18);

    v29 = v19;
    v30 = *(v19 + 16);
    if (!v30)
    {
      goto LABEL_43;
    }
  }

  else
  {

    v29 = MEMORY[0x277D84F90];
    v30 = *(MEMORY[0x277D84F90] + 16);
    if (!v30)
    {
LABEL_43:

      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      *a3 = 0u;
      return result;
    }
  }

  v6 = *(v29 + 32);
  v31 = *(v29 + 40);
  v71 = v29;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v77 = v71;
  if (!isUniquelyReferenced_nonNull_native || (v30 - 1) > *(v71 + 3) >> 1)
  {
    v71 = sub_25DD05328(isUniquelyReferenced_nonNull_native, v30, 1, v71);
    v77 = v71;
  }

  v33 = MEMORY[0x277D84F90];
  sub_25DD06D1C(0, 1, 0);
  OpenAPIMIMEType.Kind.init(_:)(v6, v31, &v74);
  if (v76 == 255)
  {
    goto LABEL_43;
  }

  v67 = v76;
  v34 = 0;
  v65 = v75;
  v66 = v74;
  v35 = v71;
  v70 = *(v71 + 2);
  v68 = v33;
  while (1)
  {
    if (v34 == v70)
    {
      if (v68[2])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC21A0, &unk_25DD98A50);
        v62 = sub_25DD972C4();
      }

      else
      {
        v62 = MEMORY[0x277D84F98];
      }

      *&v74 = v62;
      sub_25DD0CC84(v68, 1, &v74);

      v64 = v74;
      *a3 = v66;
      *(a3 + 16) = v65;
      *(a3 + 32) = v67;
      *(a3 + 40) = v64;
      return result;
    }

    if (v34 >= *(v35 + 2))
    {
      goto LABEL_48;
    }

    v39 = &v71[16 * v34 + 32];
    v40 = *v39;
    v41 = v39[1];

    v78[0] = 61;
    v78[1] = 0xE100000000000000;
    *&v75 = v78;

    v6 = sub_25DD04D30(0x7FFFFFFFFFFFFFFFLL, 1, sub_25DD07E7C, &v74, v40, v41, v42);
    v43 = *(v6 + 16);
    if (v43)
    {
      break;
    }

    v45 = v33;
LABEL_32:
    if (v45[2] == 2)
    {
      v36 = v45[4];
      v6 = v45[5];
      v37 = v45[6];
      v38 = v45[7];
    }

    else
    {
      v36 = 0;
      v6 = 0;
      v37 = 0;
      v38 = 0;
    }

    ++v34;

    v35 = v71;
    if (v6)
    {
      v57 = v68;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v57 = sub_25DD0B5E0(0, v68[2] + 1, 1, v68);
      }

      v59 = v57[2];
      v58 = v57[3];
      v68 = v57;
      v35 = v71;
      if (v59 >= v58 >> 1)
      {
        v61 = sub_25DD0B5E0((v58 > 1), v59 + 1, 1, v57);
        v35 = v71;
        v68 = v61;
      }

      v68[2] = v59 + 1;
      v60 = &v68[4 * v59];
      v60[4] = v36;
      v60[5] = v6;
      v60[6] = v37;
      v60[7] = v38;
      v33 = MEMORY[0x277D84F90];
    }
  }

  v78[0] = v33;
  sub_25DD055C4(0, v43, 0);
  v44 = 0;
  v45 = v78[0];
  v46 = (v6 + 56);
  while (v44 < *(v6 + 16))
  {
    v47 = *(v46 - 3);
    v48 = *(v46 - 2);
    v50 = *(v46 - 1);
    v49 = *v46;

    v51 = MEMORY[0x25F8A3180](v47, v48, v50, v49);
    v53 = v52;

    v78[0] = v45;
    v55 = v45[2];
    v54 = v45[3];
    if (v55 >= v54 >> 1)
    {
      sub_25DD055C4((v54 > 1), v55 + 1, 1);
      v45 = v78[0];
    }

    ++v44;
    v45[2] = v55 + 1;
    v56 = &v45[2 * v55];
    v56[4] = v51;
    v56[5] = v53;
    v46 += 4;
    if (v43 == v44)
    {

      v33 = MEMORY[0x277D84F90];
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);

  MEMORY[0x25F8A43F0](v6);

  __break(1u);
  return result;
}

uint64_t OpenAPIMIMEType.description.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2190, &unk_25DD98830);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_25DD98100;
  if (!v5)
  {
    v32 = v2;
    v33 = v1;

    v8 = 10799;
    v9 = 0xE200000000000000;
    goto LABEL_5;
  }

  if (v5 == 1)
  {
    v32 = v2;
    v33 = v1;

    MEMORY[0x25F8A3200](47, 0xE100000000000000);
    v8 = v3;
    v9 = v4;
LABEL_5:
    MEMORY[0x25F8A3200](v8, v9);
    v10 = v32;
    v11 = v33;
    goto LABEL_7;
  }

  v11 = 0xE300000000000000;
  v10 = 2764586;
LABEL_7:
  *(v7 + 32) = v10;
  *(v7 + 40) = v11;
  v31 = v7;
  v12 = *(v6 + 16);
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v14 = sub_25DD0B714(*(v6 + 16), 0);
    v15 = sub_25DD0C360(&v32, v14 + 4, v12, v6);

    sub_25DD07900();
    if (v15 == v12)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  v14 = v13;
LABEL_11:
  v32 = v14;
  sub_25DD0B798(&v32);
  v16 = v32;
  v17 = v32[2];
  if (v17)
  {
    sub_25DD055C4(0, v17, 0);
    v18 = 0;
    v19 = v13;
    v20 = v16 + 7;
    while (v18 < v16[2])
    {
      v21 = *(v20 - 2);
      v22 = *(v20 - 1);
      v23 = *v20;
      v32 = *(v20 - 3);
      v33 = v21;
      swift_bridgeObjectRetain_n();

      MEMORY[0x25F8A3200](61, 0xE100000000000000);
      MEMORY[0x25F8A3200](v22, v23);

      v24 = v32;
      v25 = v33;
      v27 = *(v19 + 16);
      v26 = *(v19 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_25DD055C4((v26 > 1), v27 + 1, 1);
      }

      ++v18;
      *(v19 + 16) = v27 + 1;
      v28 = v19 + 16 * v27;
      *(v28 + 32) = v24;
      *(v28 + 40) = v25;
      v20 += 4;
      if (v17 == v18)
      {

        goto LABEL_19;
      }
    }

    __break(1u);
    MEMORY[0x25F8A43F0](v16);

    __break(1u);
  }

  else
  {

    v19 = MEMORY[0x277D84F90];
LABEL_19:
    v32 = v31;
    sub_25DD0B804(v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC21A8, &qword_25DD98A60);
    sub_25DD0CFAC();
    v29 = sub_25DD96AD4();

    return v29;
  }

  return result;
}

uint64_t sub_25DD0A47C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (!a3)
  {
    return a3;
  }

  if (a3 == 1)
  {
    v3 = __OFADD__(a1, 3);
    result = a1 + 3;
    if (v3)
    {
      __break(1u);
    }
  }

  else if (a1 | a2)
  {
    return 2;
  }

  else
  {
    return 1;
  }

  return result;
}

uint64_t sub_25DD0A4BC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    if (a4 == 1)
    {
      MEMORY[0x25F8A3F90](3);
      v6 = a2;
      return MEMORY[0x25F8A3F90](v6);
    }

    if (a2 | a3)
    {
      v6 = 2;
      return MEMORY[0x25F8A3F90](v6);
    }

LABEL_11:
    v6 = 1;
    return MEMORY[0x25F8A3F90](v6);
  }

  MEMORY[0x25F8A3F90](0);
  if (!a3)
  {
    v6 = 0;
    return MEMORY[0x25F8A3F90](v6);
  }

  if (a3 == 1)
  {
    goto LABEL_11;
  }

  MEMORY[0x25F8A3F90](2);

  return sub_25DD96B94();
}

uint64_t sub_25DD0A574(uint64_t a1, uint64_t a2, char a3)
{
  sub_25DD97964();
  if (a3)
  {
    if (a3 == 1)
    {
      MEMORY[0x25F8A3F90](3);
      v6 = a1;
LABEL_11:
      MEMORY[0x25F8A3F90](v6);
      return sub_25DD979A4();
    }

    if (a1 | a2)
    {
      v6 = 2;
      goto LABEL_11;
    }

LABEL_9:
    v6 = 1;
    goto LABEL_11;
  }

  MEMORY[0x25F8A3F90](0);
  if (!a2)
  {
    v6 = 0;
    goto LABEL_11;
  }

  if (a2 == 1)
  {
    goto LABEL_9;
  }

  MEMORY[0x25F8A3F90](2);
  sub_25DD96B94();
  return sub_25DD979A4();
}

uint64_t sub_25DD0A658()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (*(v0 + 16))
  {
    if (*(v0 + 16) == 1)
    {
      MEMORY[0x25F8A3F90](3);
      v3 = v1;
      return MEMORY[0x25F8A3F90](v3);
    }

    if (v1 | v2)
    {
      v3 = 2;
      return MEMORY[0x25F8A3F90](v3);
    }

LABEL_11:
    v3 = 1;
    return MEMORY[0x25F8A3F90](v3);
  }

  MEMORY[0x25F8A3F90](0);
  if (!v2)
  {
    v3 = 0;
    return MEMORY[0x25F8A3F90](v3);
  }

  if (v2 == 1)
  {
    goto LABEL_11;
  }

  MEMORY[0x25F8A3F90](2);

  return sub_25DD96B94();
}

uint64_t sub_25DD0A710()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_25DD97964();
  if (v3)
  {
    if (v3 == 1)
    {
      MEMORY[0x25F8A3F90](3);
      v4 = v1;
LABEL_11:
      MEMORY[0x25F8A3F90](v4);
      return sub_25DD979A4();
    }

    if (v1 | v2)
    {
      v4 = 2;
      goto LABEL_11;
    }

LABEL_9:
    v4 = 1;
    goto LABEL_11;
  }

  MEMORY[0x25F8A3F90](0);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_11;
  }

  if (v2 == 1)
  {
    goto LABEL_9;
  }

  MEMORY[0x25F8A3F90](2);
  sub_25DD96B94();
  return sub_25DD979A4();
}

uint64_t sub_25DD0A7F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v6 = *a6;
  v7 = a6[1];
  if (!*(a6 + 32))
  {
    v17 = sub_25DD96B54();
    v19 = v18;
    if (v17 == sub_25DD96B54() && v19 == v20)
    {

      return 1;
    }

    else
    {
      v22 = sub_25DD975D4();

      return v22 & 1;
    }
  }

  if (*(a6 + 32) != 1)
  {
    return 0;
  }

  v55 = a6[5];
  v9 = a6[2];
  v10 = a6[3];
  v11 = sub_25DD96B54();
  v13 = v12;
  if (v11 == sub_25DD96B54() && v13 == v14)
  {
  }

  else
  {
    v16 = sub_25DD975D4();

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  v24 = sub_25DD96B54();
  v26 = v25;
  if (v24 == sub_25DD96B54() && v26 == v27)
  {
  }

  else
  {
    v28 = sub_25DD975D4();

    if ((v28 & 1) == 0)
    {
      return 0;
    }
  }

  if (*(sub_25DD09404(a5) + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC21A0, &unk_25DD98A50);
    v29 = sub_25DD972C4();
  }

  else
  {
    v29 = MEMORY[0x277D84F98];
  }

  v56 = v29;

  sub_25DD0AC34(v30, 1, &v56);

  v31 = v56;
  v32 = 1 << *(v55 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & *(v55 + 64);
  v35 = (v32 + 63) >> 6;

  v23 = 0;
  v36 = 0;
  while (v34)
  {
    v54 = v23;
LABEL_36:
    v38 = (v36 << 10) | (16 * __clz(__rbit64(v34)));
    v39 = (*(v55 + 48) + v38);
    v40 = *v39;
    v41 = v39[1];
    v42 = (*(v55 + 56) + v38);
    v44 = *v42;
    v43 = v42[1];
    v23 = sub_25DD96B54();
    v46 = v45;
    v47 = *(v31 + 16);

    if (!v47)
    {
      goto LABEL_46;
    }

    v48 = sub_25DD0C2DC(v23, v46, sub_25DCFFA14);
    if ((v49 & 1) == 0)
    {

LABEL_46:

LABEL_47:

      return v23;
    }

    v50 = (*(v31 + 56) + 16 * v48);
    if (*v50 == v44 && v50[1] == v43)
    {
    }

    else
    {
      v52 = sub_25DD975D4();

      if ((v52 & 1) == 0)
      {
        goto LABEL_47;
      }
    }

    v34 &= v34 - 1;

    v23 = v54 + 1;
    if (__OFADD__(v54, 1))
    {
      goto LABEL_50;
    }
  }

  while (1)
  {
    v37 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v37 >= v35)
    {
      goto LABEL_47;
    }

    v34 = *(v55 + 64 + 8 * v37);
    ++v36;
    if (v34)
    {
      v54 = v23;
      v36 = v37;
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}