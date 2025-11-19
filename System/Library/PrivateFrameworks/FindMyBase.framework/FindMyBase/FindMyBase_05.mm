uint64_t sub_1DF60E808(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageOffset();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DF60E86C()
{
  result = qword_1ED8E49E8;
  if (!qword_1ED8E49E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8E49E8);
  }

  return result;
}

uint64_t sub_1DF60E8C0(uint64_t a1)
{
  v2 = type metadata accessor for ImageOffset();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MachServiceName.description.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static MachServiceName.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DF63394C();
  }
}

uint64_t MachServiceName.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1DF632ACC();
}

uint64_t MachServiceName.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DF633A6C();
  sub_1DF632ACC();
  return sub_1DF633AAC();
}

uint64_t sub_1DF60E9D8()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_1DF60EA08()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DF633A6C();
  sub_1DF632ACC();
  return sub_1DF633AAC();
}

uint64_t sub_1DF60EA54()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1DF632ACC();
}

__n128 XPCServiceDescription.init(name:exportedObject:exportedInterface:remoteObjectInterface:options:requiredEntitlement:shouldAccept:)@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v9 = a1[1];
  *a9 = *a1;
  *(a9 + 8) = v9;
  result = *a6;
  v11 = *(a6 + 16);
  *(a9 + 48) = *a6;
  *(a9 + 64) = v11;
  v12 = *(a6 + 32);
  *(a9 + 16) = a5;
  *(a9 + 24) = a2;
  *(a9 + 32) = a3;
  *(a9 + 40) = a4;
  *(a9 + 80) = v12;
  *(a9 + 88) = a7;
  *(a9 + 96) = a8;
  return result;
}

double XPCServiceDescription.init(name:remoteObjectInterface:options:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  result = 0.0;
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0u;
  *a4 = v4;
  *(a4 + 8) = v5;
  *(a4 + 16) = a3;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *(a4 + 40) = a2;
  *(a4 + 88) = 0;
  *(a4 + 96) = 0;
  *(a4 + 80) = 0;
  return result;
}

__n128 XPCServiceDescription.init(name:exportedObject:exportedInterface:options:requiredEntitlement:shouldAccept:)@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v8 = a1[1];
  *a8 = *a1;
  *(a8 + 8) = v8;
  result = *a5;
  v10 = *(a5 + 16);
  *(a8 + 48) = *a5;
  *(a8 + 64) = v10;
  v11 = *(a5 + 32);
  *(a8 + 16) = a4;
  *(a8 + 24) = a2;
  *(a8 + 32) = a3;
  *(a8 + 40) = 0;
  *(a8 + 80) = v11;
  *(a8 + 88) = a6;
  *(a8 + 96) = a7;
  return result;
}

double XPCServiceDescription.init(connection:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 serviceName];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1DF63298C();
    v8 = v7;

    if ([a1 exportedObject])
    {
      sub_1DF63339C();
      swift_unknownObjectRelease();
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }

    v16[0] = v14;
    v16[1] = v15;
    if (*(&v15 + 1))
    {
      sub_1DF5A8EB8();
      if (swift_dynamicCast())
      {
        v10 = v13;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      sub_1DF60EC44(v16);
      v10 = 0;
    }

    v11 = [a1 exportedInterface];
    v12 = [a1 remoteObjectInterface];

    *a2 = v6;
    *(a2 + 8) = v8;
    result = 0.0;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 16) = 0;
    *(a2 + 24) = v10;
    *(a2 + 32) = v11;
    *(a2 + 40) = v12;
    *(a2 + 88) = 0;
    *(a2 + 96) = 0;
    *(a2 + 80) = 0;
  }

  else
  {

    *(a2 + 96) = 0;
    result = 0.0;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1DF60EC44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE436C0, &qword_1DF6393D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DF60ECB0()
{
  result = qword_1ED8E4D10[0];
  if (!qword_1ED8E4D10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED8E4D10);
  }

  return result;
}

uint64_t sub_1DF60ED04(uint64_t a1, int a2)
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

uint64_t sub_1DF60ED4C(uint64_t result, int a2, int a3)
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

uint64_t DefaultStringInterpolation.BinaryIntegerRadix.hashValue.getter()
{
  v1 = *v0;
  sub_1DF633A6C();
  MEMORY[0x1E12D9240](v1);
  return sub_1DF633AAC();
}

uint64_t DefaultStringInterpolation.appendInterpolation<A>(_:radix:padded:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*v11 & 1) == 0)
  {
    if (v7)
    {
      v18 = v8;
      sub_1DF63336C();
      v34 = sub_1DF632BCC();
      v35 = v19;
      (*(v5 + 16))(v10, a1, v18);
      v20 = sub_1DF632BDC();
      MEMORY[0x1E12D82E0](v20);

      v15 = v34;
      v16 = v35;
      v17 = sub_1DF63336C();
      goto LABEL_6;
    }

LABEL_7:
    (*(v5 + 16))(v10, a1, v8);
    v31 = sub_1DF632BDC();
    v30 = v32;
    goto LABEL_8;
  }

  if ((v7 & 1) == 0)
  {
    goto LABEL_7;
  }

  v12 = v8;
  sub_1DF63336C();
  v34 = sub_1DF632BCC();
  v35 = v13;
  (*(v5 + 16))(v10, a1, v12);
  v14 = sub_1DF632BDC();
  MEMORY[0x1E12D82E0](v14);

  v15 = v34;
  v16 = v35;
  v17 = sub_1DF63336C() / 4;
LABEL_6:
  v21 = sub_1DF5DC700(v17, v15, v16);
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v28 = MEMORY[0x1E12D8260](v21, v23, v25, v27);
  v30 = v29;

  v31 = v28;
LABEL_8:
  MEMORY[0x1E12D82E0](v31, v30);
}

unint64_t sub_1DF60F0EC()
{
  result = qword_1ECE432B0[0];
  if (!qword_1ECE432B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECE432B0);
  }

  return result;
}

uint64_t AsyncSequence<>.unique()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(*(a1 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, v2, a1);
  return sub_1DF60F230(v7, a1, a2);
}

uint64_t sub_1DF60F230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  *a3 = sub_1DF63280C();
  (*(v6 + 16))(v9, a1, a2);
  v10 = a3 + *(type metadata accessor for UniqueAsyncSequence() + 44);
  sub_1DF632FCC();
  return (*(v6 + 8))(a1, a2);
}

uint64_t AsyncSequence.unique<A>(by:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t **a5@<X8>)
{
  v11 = *(*(a2 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v5, a2);

  return sub_1DF60F470(v13, a1, a2, a3, a4, a5);
}

uint64_t sub_1DF60F470@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t **a6@<X8>)
{
  v12 = *a2;
  v13 = *(a3 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 + *MEMORY[0x1E69E77B0] + 8);
  v19 = sub_1DF63280C();
  *a6 = a2;
  a6[1] = v19;
  (*(v13 + 16))(v16, a1, a3);
  v22[0] = a3;
  v22[1] = v18;
  v22[2] = a4;
  v22[3] = a5;
  v20 = a6 + *(type metadata accessor for UniqueIndirectAsyncSequence() + 56);
  sub_1DF632FCC();
  return (*(v13 + 8))(a1, a3);
}

uint64_t UniqueAsyncSequence.next()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *(a2 + 24);
  v3[6] = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[7] = AssociatedTypeWitness;
  v5 = *(AssociatedTypeWitness - 8);
  v3[8] = v5;
  v6 = *(v5 + 64) + 15;
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v7 = sub_1DF63327C();
  v3[13] = v7;
  v8 = *(v7 - 8);
  v3[14] = v8;
  v9 = *(v8 + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF60F778, 0, 0);
}

uint64_t sub_1DF60F778()
{
  v1 = v0[17];
  v2 = v0[7];
  v3 = v0[8];
  v4 = *(v3 + 56);
  v0[18] = v4;
  v0[19] = (v3 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v4(v1, 1, 1, v2);
  sub_1DF632F7C();
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[4];
  v8 = *(v0[3] + 44);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = *(MEMORY[0x1E69E85A8] + 4);
  v12 = swift_task_alloc();
  v0[20] = v12;
  *v12 = v0;
  v12[1] = sub_1DF60F96C;
  v13 = v0[16];

  return MEMORY[0x1EEE6D8C8](v13, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_1DF60F96C()
{
  v2 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_1DF60FED4;
  }

  else
  {
    v3 = sub_1DF60FA80;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DF60FA80()
{
  v1 = v0[16];
  v2 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[13];
  v6 = v0[7];
  v7 = v0[8];
  v8 = *(v4 + 8);
  v8(v2, v5);
  v65 = *(v4 + 32);
  v65(v2, v1, v5);
  (*(v4 + 16))(v3, v2, v5);
  if ((*(v7 + 48))(v3, 1, v6) == 1)
  {
    v10 = v0[18];
    v9 = v0[19];
    v11 = v0[15];
    v12 = v0[13];
    v13 = v0[7];
    v14 = v0[2];
    v8(v0[17], v12);
    v8(v11, v12);
    v10(v14, 1, 1, v13);
LABEL_7:
    v44 = v0[16];
    v43 = v0[17];
    v45 = v0[15];
    v47 = v0[11];
    v46 = v0[12];
    v49 = v0[9];
    v48 = v0[10];

    v37 = v0[1];
    goto LABEL_8;
  }

  v63 = v8;
  v15 = v0[11];
  v16 = v0[12];
  v17 = v0[7];
  v18 = v0[8];
  v20 = v0[3];
  v19 = v0[4];
  (*(v18 + 32))(v16, v0[15], v17);
  v21 = *(v18 + 16);
  v21(v15, v16, v17);
  v22 = *v19;
  v23 = *(v20 + 32);
  v24 = sub_1DF6330BC();
  v25 = v0[11];
  v26 = v0[12];
  if ((v24 & 1) == 0)
  {
    v62 = v0[13];
    v64 = v0[17];
    v60 = v0[12];
    v38 = v0[10];
    v40 = v0[7];
    v39 = v0[8];
    v41 = v0[4];
    v61 = v0[2];
    v21(v0[9], v25, v40);
    sub_1DF6330CC();
    sub_1DF6330AC();
    v42 = *(v39 + 8);
    v42(v38, v40);
    v42(v25, v40);
    v42(v60, v40);
    v65(v61, v64, v62);
    goto LABEL_7;
  }

  v27 = v0[21];
  v28 = v0[7];
  v29 = *(v0[8] + 8);
  v29(v0[11], v28);
  v29(v26, v28);
  sub_1DF632F7C();
  if (v27)
  {
    v30 = v0[14] + 8;
    v31 = v0[16];
    v32 = v0[15];
    v34 = v0[11];
    v33 = v0[12];
    v36 = v0[9];
    v35 = v0[10];
    v63(v0[17], v0[13]);

    v37 = v0[1];
LABEL_8:

    return v37();
  }

  v51 = v0[5];
  v52 = v0[6];
  v53 = v0[4];
  v54 = *(v0[3] + 44);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v57 = *(MEMORY[0x1E69E85A8] + 4);
  v58 = swift_task_alloc();
  v0[20] = v58;
  *v58 = v0;
  v58[1] = sub_1DF60F96C;
  v59 = v0[16];

  return MEMORY[0x1EEE6D8C8](v59, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_1DF60FED4()
{
  v1 = v0[21];
  v2 = v0[16];
  v3 = v0[15];
  v5 = v0[11];
  v4 = v0[12];
  v7 = v0[9];
  v6 = v0[10];
  (*(v0[14] + 8))(v0[17], v0[13]);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1DF60FFC0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DF59D2C8;

  return UniqueAsyncSequence.next()(a1, a2);
}

uint64_t sub_1DF610068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = *(MEMORY[0x1E69E85D8] + 4);
  v13 = swift_task_alloc();
  *(v6 + 32) = v13;
  *v13 = v6;
  v13[1] = sub_1DF61013C;

  return MEMORY[0x1EEE6D8E0](a1, a2, a3, a5, a6, v6 + 16);
}

uint64_t sub_1DF61013C()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v4 = *v1;

  if (v0)
  {
    **(v2 + 24) = *(v2 + 16);
  }

  v5 = *(v4 + 8);

  return v5();
}

uint64_t UniqueIndirectAsyncSequence.next()(uint64_t a1, void *a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v5 = a2[3];
  v3[5] = v5;
  v6 = *(v5 - 8);
  v3[6] = v6;
  v7 = *(v6 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = a2[4];
  v3[11] = a2[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[12] = AssociatedTypeWitness;
  v9 = *(AssociatedTypeWitness - 8);
  v3[13] = v9;
  v10 = *(v9 + 64) + 15;
  v3[14] = swift_task_alloc();
  v11 = sub_1DF63327C();
  v3[15] = v11;
  v12 = *(v11 - 8);
  v3[16] = v12;
  v13 = *(v12 + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF610458, 0, 0);
}

uint64_t sub_1DF610458()
{
  v1 = v0[19];
  v2 = v0[12];
  v3 = v0[13];
  v4 = *(v3 + 56);
  v0[20] = v4;
  v0[21] = (v3 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v4(v1, 1, 1, v2);
  sub_1DF632F7C();
  v5 = v0[4];
  v6 = v0[10];
  v7 = v0[11];
  v8 = *(v0[3] + 56);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = *(MEMORY[0x1E69E85A8] + 4);
  v12 = swift_task_alloc();
  v0[22] = v12;
  *v12 = v0;
  v12[1] = sub_1DF61064C;
  v13 = v0[18];

  return MEMORY[0x1EEE6D8C8](v13, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_1DF61064C()
{
  v2 = *(*v1 + 176);
  v5 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = sub_1DF610BC0;
  }

  else
  {
    v3 = sub_1DF610760;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DF610760()
{
  v1 = v0[18];
  v2 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[15];
  v6 = v0[12];
  v7 = v0[13];
  v8 = *(v4 + 8);
  v8(v2, v5);
  v63 = *(v4 + 32);
  v63(v2, v1, v5);
  (*(v4 + 16))(v3, v2, v5);
  if ((*(v7 + 48))(v3, 1, v6) == 1)
  {
    v10 = v0[20];
    v9 = v0[21];
    v11 = v0[17];
    v12 = v0[15];
    v13 = v0[12];
    v14 = v0[2];
    v8(v0[19], v12);
    v8(v11, v12);
    v10(v14, 1, 1, v13);
LABEL_7:
    v43 = v0[18];
    v42 = v0[19];
    v44 = v0[17];
    v45 = v0[14];
    v47 = v0[8];
    v46 = v0[9];
    v48 = v0[7];

    v36 = v0[1];
    goto LABEL_8;
  }

  v15 = v8;
  v16 = v0[9];
  v18 = v0[4];
  v17 = v0[5];
  v19 = v0[3];
  (*(v0[13] + 32))(v0[14], v0[17], v0[12]);
  v20 = *v18;
  swift_getAtKeyPath();
  v21 = v18[1];
  v22 = *(v19 + 40);
  v23 = sub_1DF6330BC();
  v24 = v0[13];
  v25 = v0[14];
  v26 = v0[12];
  v27 = v0[9];
  if ((v23 & 1) == 0)
  {
    v61 = v0[15];
    v62 = v0[19];
    v37 = v0[8];
    v39 = v0[5];
    v38 = v0[6];
    v59 = v0[12];
    v40 = v0[4];
    v60 = v0[2];
    (*(v38 + 16))(v0[7], v27, v39);
    sub_1DF6330CC();
    sub_1DF6330AC();
    v41 = *(v38 + 8);
    v41(v37, v39);
    v41(v27, v39);
    (*(v24 + 8))(v25, v59);
    v63(v60, v62, v61);
    goto LABEL_7;
  }

  v28 = v0[23];
  (*(v0[6] + 8))(v0[9], v0[5]);
  (*(v24 + 8))(v25, v26);
  sub_1DF632F7C();
  if (v28)
  {
    v29 = v0[17];
    v30 = v0[16] + 8;
    v31 = v0[18];
    v32 = v0[14];
    v34 = v0[8];
    v33 = v0[9];
    v35 = v0[7];
    v15(v0[19], v0[15]);

    v36 = v0[1];
LABEL_8:

    return v36();
  }

  v50 = v0[10];
  v51 = v0[11];
  v52 = v0[4];
  v53 = *(v0[3] + 56);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v56 = *(MEMORY[0x1E69E85A8] + 4);
  v57 = swift_task_alloc();
  v0[22] = v57;
  *v57 = v0;
  v57[1] = sub_1DF61064C;
  v58 = v0[18];

  return MEMORY[0x1EEE6D8C8](v58, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_1DF610BC0()
{
  v1 = v0[17];
  v2 = v0[23];
  v3 = v0[18];
  v4 = v0[14];
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[7];
  (*(v0[16] + 8))(v0[19], v0[15]);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1DF610CF0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  v5 = *(*(a1 - 8) + 8);

  return v5(v3, a1);
}

uint64_t sub_1DF610D54(uint64_t a1, void *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DF59D2C4;

  return UniqueIndirectAsyncSequence.next()(a1, a2);
}

uint64_t sub_1DF610DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = *(MEMORY[0x1E69E85D8] + 4);
  v13 = swift_task_alloc();
  *(v6 + 32) = v13;
  *v13 = v6;
  v13[1] = sub_1DF611980;

  return MEMORY[0x1EEE6D8E0](a1, a2, a3, a5, a6, v6 + 16);
}

uint64_t sub_1DF610ED8(void *a1)
{
  v3 = a1[2];
  v2 = a1[3];
  swift_getAssociatedTypeWitness();
  v4 = a1[4];
  result = sub_1DF6330CC();
  if (v6 <= 0x3F)
  {
    result = swift_getAssociatedTypeWitness();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DF610FA8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v8 + 84);
  }

  v12 = *(v8 + 80);
  v13 = *(v8 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v11)
  {
    goto LABEL_26;
  }

  v14 = ((v12 + 8) & ~v12) + v13;
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v18 = ((a2 - v11 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v18))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v18 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v18 < 2)
    {
LABEL_26:
      if ((v10 & 0x80000000) != 0)
      {
        v21 = *(v9 + 48);

        return v21((a1 + v12 + 8) & ~v12);
      }

      else
      {
        v20 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v20) = -1;
        }

        return (v20 + 1);
      }
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_26;
  }

LABEL_15:
  v19 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v19 = 0;
  }

  if (v14)
  {
    if (v14 > 3)
    {
      LODWORD(v14) = 4;
    }

    if (v14 > 2)
    {
      if (v14 == 3)
      {
        LODWORD(v14) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v14) = *a1;
      }
    }

    else if (v14 == 1)
    {
      LODWORD(v14) = *a1;
    }

    else
    {
      LODWORD(v14) = *a1;
    }
  }

  return v11 + (v14 | v19) + 1;
}

void sub_1DF61117C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v13 = ((v11 + 8) & ~v11) + *(v9 + 64);
  if (a3 <= v12)
  {
    v14 = 0;
  }

  else if (v13 <= 3)
  {
    v17 = ((a3 - v12 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
    if (HIWORD(v17))
    {
      v14 = 4;
    }

    else
    {
      if (v17 < 0x100)
      {
        v18 = 1;
      }

      else
      {
        v18 = 2;
      }

      if (v17 >= 2)
      {
        v14 = v18;
      }

      else
      {
        v14 = 0;
      }
    }
  }

  else
  {
    v14 = 1;
  }

  if (v12 < a2)
  {
    v15 = ~v12 + a2;
    if (v13 < 4)
    {
      v16 = (v15 >> (8 * v13)) + 1;
      if (v13)
      {
        v19 = v15 & ~(-1 << (8 * v13));
        bzero(a1, v13);
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *a1 = v19;
            if (v14 > 1)
            {
LABEL_47:
              if (v14 == 2)
              {
                *&a1[v13] = v16;
              }

              else
              {
                *&a1[v13] = v16;
              }

              return;
            }
          }

          else
          {
            *a1 = v15;
            if (v14 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v19;
        a1[2] = BYTE2(v19);
      }

      if (v14 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v15;
      v16 = 1;
      if (v14 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v14)
    {
      a1[v13] = v16;
    }

    return;
  }

  if (v14 > 1)
  {
    if (v14 != 2)
    {
      *&a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v13] = 0;
  }

  else if (v14)
  {
    a1[v13] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v10 & 0x80000000) != 0)
  {
    v21 = *(v9 + 56);

    v21(&a1[v11 + 8] & ~v11, a2);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v20 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v20 = (a2 - 1);
    }

    *a1 = v20;
  }
}

uint64_t sub_1DF611410(void *a1)
{
  v2 = a1[4];
  v3 = a1[2];
  swift_getAssociatedTypeWitness();
  v4 = a1[3];
  result = sub_1DF633B0C();
  if (v6 <= 0x3F)
  {
    v7 = a1[5];
    result = sub_1DF6330CC();
    if (v8 <= 0x3F)
    {
      result = swift_getAssociatedTypeWitness();
      if (v9 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1DF611508(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 32);
  v6 = *(a3 + 16);
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = v7;
  v9 = *(v7 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v7 + 84);
  }

  v11 = *(v7 + 80);
  v12 = *(v7 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v10)
  {
    goto LABEL_26;
  }

  v13 = ((v11 + 16) & ~v11) + v12;
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v17 = ((a2 - v10 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v17))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v17 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v17 < 2)
    {
LABEL_26:
      if ((v9 & 0x80000000) != 0)
      {
        v20 = *(v8 + 48);

        return v20((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v11 + 8) & ~v11);
      }

      else
      {
        v19 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v19) = -1;
        }

        return (v19 + 1);
      }
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_26;
  }

LABEL_15:
  v18 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v18 = 0;
  }

  if (v13)
  {
    if (v13 > 3)
    {
      LODWORD(v13) = 4;
    }

    if (v13 > 2)
    {
      if (v13 == 3)
      {
        LODWORD(v13) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v13) = *a1;
      }
    }

    else if (v13 == 1)
    {
      LODWORD(v13) = *a1;
    }

    else
    {
      LODWORD(v13) = *a1;
    }
  }

  return v10 + (v13 | v18) + 1;
}

void sub_1DF6116E8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 32);
  v8 = *(a4 + 16);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v13 = ((v11 + 16) & ~v11) + *(v9 + 64);
  if (a3 <= v12)
  {
    v14 = 0;
  }

  else if (v13 <= 3)
  {
    v17 = ((a3 - v12 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
    if (HIWORD(v17))
    {
      v14 = 4;
    }

    else
    {
      if (v17 < 0x100)
      {
        v18 = 1;
      }

      else
      {
        v18 = 2;
      }

      if (v17 >= 2)
      {
        v14 = v18;
      }

      else
      {
        v14 = 0;
      }
    }
  }

  else
  {
    v14 = 1;
  }

  if (v12 < a2)
  {
    v15 = ~v12 + a2;
    if (v13 < 4)
    {
      v16 = (v15 >> (8 * v13)) + 1;
      if (v13)
      {
        v19 = v15 & ~(-1 << (8 * v13));
        bzero(a1, v13);
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *a1 = v19;
            if (v14 > 1)
            {
LABEL_47:
              if (v14 == 2)
              {
                *&a1[v13] = v16;
              }

              else
              {
                *&a1[v13] = v16;
              }

              return;
            }
          }

          else
          {
            *a1 = v15;
            if (v14 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v19;
        a1[2] = BYTE2(v19);
      }

      if (v14 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v15;
      v16 = 1;
      if (v14 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v14)
    {
      a1[v13] = v16;
    }

    return;
  }

  if (v14 > 1)
  {
    if (v14 != 2)
    {
      *&a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v13] = 0;
  }

  else if (v14)
  {
    a1[v13] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v10 & 0x80000000) != 0)
  {
    v21 = *(v9 + 56);

    v21((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v11 + 8) & ~v11, a2);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v20 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v20 = (a2 - 1);
    }

    *a1 = v20;
  }
}

uint64_t DispatchTimer.isCancelled.getter()
{
  v1 = *(v0 + 40);
  swift_getObjectType();
  return sub_1DF6331FC() & 1;
}

uint64_t DispatchTimer.__allocating_init(deadline:repeating:leeway:queue:block:)(void *a1, char *a2, uint64_t a3, double a4, double a5, double a6)
{
  v12 = swift_allocObject();
  DispatchTimer.init(deadline:repeating:leeway:queue:block:)(a1, a2, a3, a4, a5, a6);
  return v12;
}

uint64_t DispatchTimer.init(deadline:repeating:leeway:queue:block:)(void *a1, char *a2, uint64_t a3, double a4, double a5, double a6)
{
  v7 = v6;
  v14 = sub_1DF6326DC();
  v90 = *(v14 - 8);
  v15 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1DF6326CC();
  v96 = *(v18 - 8);
  v19 = *(v96 + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v89 = (v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20);
  v92 = (v75 - v22);
  v93 = sub_1DF63271C();
  v95 = *(v93 - 8);
  v23 = *(v95 + 64);
  v24 = MEMORY[0x1EEE9AC00](v93);
  v88 = v75 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v94 = v75 - v26;
  v27 = sub_1DF6331DC();
  v28 = *(v27 - 8);
  v29 = v28[8];
  MEMORY[0x1EEE9AC00](v27);
  v31 = v75 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_1DF6331BC();
  v79 = *(v80 - 1);
  v32 = v79[8];
  MEMORY[0x1EEE9AC00](v80);
  v78 = v75 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_1DF6331AC();
  v34 = *(*(v76 - 8) + 64);
  MEMORY[0x1EEE9AC00](v76);
  v77 = v75 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1DF6326FC();
  v37 = *(*(v36 - 8) + 64);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v91 = v75 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v7 + 16) = 0x408F400000000000;
  v41 = a4 * 1000.0;
  v42 = 2147483650.0;
  if (v41 < 2147483650.0)
  {
    v42 = v41;
    if ((*&v41 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
      goto LABEL_28;
    }
  }

  if (v42 <= -2147483650.0)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v42 >= 2147483650.0)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  a5 = a5 * 1000.0;
  *(v7 + 24) = v42;
  v43 = 2147483650.0;
  if (a5 < 2147483650.0)
  {
    v43 = a5;
    if ((*&a5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_30;
    }
  }

  if (v43 <= -2147483650.0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v43 >= 2147483650.0)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  a6 = a6 * 1000.0;
  *(v7 + 28) = v43;
  v44 = 2147483650.0;
  if (a6 < 2147483650.0)
  {
    v44 = a6;
    if ((*&a6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_33;
    }
  }

  if (v44 <= -2147483650.0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v44 >= 2147483650.0)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    swift_once();
    goto LABEL_17;
  }

  v81 = v28;
  v82 = v27;
  v83 = v39;
  v84 = v38;
  *(v7 + 32) = v44;
  if (v41 <= 2147483650.0 && a5 <= 2147483650.0 && a6 <= 2147483650.0)
  {
    goto LABEL_20;
  }

  v87 = v18;
  v18 = v14;
  v14 = v17;
  v17 = a2;
  v28 = a1;
  if (qword_1ECE42580 != -1)
  {
    goto LABEL_36;
  }

LABEL_17:
  v45 = sub_1DF6326AC();
  __swift_project_value_buffer(v45, qword_1ECE4BDA8);
  v46 = sub_1DF63268C();
  v47 = sub_1DF63316C();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 134218752;
    *(v48 + 4) = 0x41DFFFFFFFC00000;
    *(v48 + 12) = 2048;
    *(v48 + 14) = v41;
    *(v48 + 22) = 2048;
    *(v48 + 24) = a5;
    *(v48 + 32) = 2048;
    *(v48 + 34) = a6;
    _os_log_impl(&dword_1DF59A000, v46, v47, "DispatchTimer: Exceeded maximum value of %f: deadline: %f, repeating: %f, leeway: %f", v48, 0x2Au);
    MEMORY[0x1E12D9D80](v48, -1, -1);
  }

  a1 = v28;
  a2 = v17;
  v17 = v14;
  v14 = v18;
  v18 = v87;
LABEL_20:
  v87 = v14;
  *(v7 + 48) = a2;
  *(v7 + 56) = a3;
  v49 = MEMORY[0x1E69E7CC0];
  v86 = a3;
  v85 = v17;
  if (a1)
  {

    v50 = a1;
  }

  else
  {
    v75[1] = sub_1DF60359C(0, &qword_1ECE433C0, 0x1E69E9610);

    sub_1DF6326EC();
    aBlock[0] = v49;
    sub_1DF612978(&qword_1ECE433C8, MEMORY[0x1E69E8030]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE433D0, &qword_1DF63BB80);
    sub_1DF6129C0(&qword_1ECE433D8, &qword_1ECE433D0, &qword_1DF63BB80);
    sub_1DF6333CC();
    (v79[13])(v78, *MEMORY[0x1E69E8090], v80);
    v51 = sub_1DF6331CC();
    a1 = 0;
    v49 = MEMORY[0x1E69E7CC0];
    v50 = v51;
  }

  *(v7 + 64) = v50;
  sub_1DF60359C(0, &qword_1ECE422F0, 0x1E69E9630);
  aBlock[0] = v49;
  sub_1DF612978(&unk_1ECE422F8, MEMORY[0x1E69E80B0]);
  v80 = a1;
  v79 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE433E0, &qword_1DF63BB88);
  sub_1DF6129C0(&qword_1ECE42328, &qword_1ECE433E0, &qword_1DF63BB88);
  v52 = v82;
  sub_1DF6333CC();
  v53 = sub_1DF6331EC();
  (v81[1])(v31, v52);
  *(v7 + 40) = v53;
  v54 = v88;
  sub_1DF63270C();
  v55 = v92;
  *v92 = *(v7 + 24);
  v56 = *MEMORY[0x1E69E7F38];
  v57 = v96;
  v58 = *(v96 + 104);
  v58(v55, v56, v18);
  MEMORY[0x1E12D7EF0](v54, v55);
  v59 = v18;
  v82 = *(v57 + 8);
  v82(v55, v18);
  v60 = v95 + 8;
  v88 = *(v95 + 8);
  (v88)(v54, v93);
  v61 = *(v7 + 28);
  v95 = v60;
  v62 = v57 + 8;
  if (v61 < 1)
  {
    v64 = *MEMORY[0x1E69E7F40];
    v63 = v89;
  }

  else
  {
    v63 = v89;
    *v89 = v61;
    v64 = v56;
  }

  v58(v63, v64, v59);
  v65 = *(v7 + 40);
  ObjectType = swift_getObjectType();
  v67 = v92;
  *v92 = *(v7 + 32);
  v58(v67, v56, v59);
  MEMORY[0x1E12D8A00](v94, v63, v67, ObjectType);
  v96 = v62;
  v68 = v82;
  v82(v67, v59);
  v69 = *(v7 + 40);
  swift_getObjectType();
  v70 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1DF6126B0;
  aBlock[5] = v70;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DF6126B8;
  aBlock[3] = &block_descriptor;
  v71 = _Block_copy(aBlock);

  v72 = v91;
  sub_1DF6326EC();
  v73 = v85;
  sub_1DF6126FC();
  sub_1DF63320C();
  _Block_release(v71);

  (*(v90 + 8))(v73, v87);
  (*(v83 + 8))(v72, v84);
  v68(v63, v59);
  (v88)(v94, v93);

  return v7;
}

uint64_t sub_1DF612638()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = *(result + 48);
    v1 = *(result + 56);

    v2(v3);
  }

  return result;
}

uint64_t sub_1DF6126B8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_1DF6126FC()
{
  sub_1DF6326DC();
  sub_1DF612978(&qword_1ECE42340, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE433E8, &qword_1DF63BC00);
  sub_1DF6129C0(&unk_1ECE42330, &qword_1ECE433E8, &qword_1DF63BC00);
  return sub_1DF6333CC();
}

Swift::Void __swiftcall DispatchTimer.resume()()
{
  v1 = *(v0 + 40);
  swift_getObjectType();
  sub_1DF63322C();
}

Swift::Void __swiftcall DispatchTimer.cancel()()
{
  v1 = *(v0 + 40);
  swift_getObjectType();
  sub_1DF63321C();
}

uint64_t DispatchTimer.deinit()
{
  v1 = *(v0 + 40);
  swift_unknownObjectRelease();
  v2 = *(v0 + 56);

  return v0;
}

uint64_t DispatchTimer.__deallocating_deinit()
{
  v1 = *(v0 + 40);
  swift_unknownObjectRelease();
  v2 = *(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_1DF6128A4()
{
  v0 = sub_1DF6326AC();
  __swift_allocate_value_buffer(v0, qword_1ECE4BDA8);
  __swift_project_value_buffer(v0, qword_1ECE4BDA8);
  return sub_1DF63269C();
}

uint64_t sub_1DF612978(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DF6129C0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t DateParsingStrategy.Error.hashValue.getter()
{
  sub_1DF633A6C();
  MEMORY[0x1E12D9240](0);
  return sub_1DF633AAC();
}

id sub_1DF612AAC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
  result = [v5 setFormatOptions_];
  *a3 = v5;
  return result;
}

void sub_1DF612B08()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v1 = sub_1DF63295C();
  [v0 setDateFormat_];

  qword_1ECE43400 = v0;
}

uint64_t DateParsingStrategy.parse(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = sub_1DF63252C();
  v48 = *(v3 - 8);
  v4 = v48[8];
  MEMORY[0x1EEE9AC00](v3);
  v6 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42D00, &qword_1DF63B250);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v46 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v44 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v44 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = v44 - v17;
  if (qword_1ECE42590 != -1)
  {
    swift_once();
  }

  v19 = qword_1ECE433F8;
  v20 = a1;
  v21 = sub_1DF63295C();
  v22 = [v19 dateFromString_];

  if (v22)
  {
    sub_1DF6324FC();

    v23 = v48;
    v24 = v48[4];
    v24(v16, v6, v3);
    v25 = v23[7];
    v25(v16, 0, 1, v3);
    v24(v18, v16, v3);
    v25(v18, 0, 1, v3);
    v26 = (v23[6])(v18, 1, v3);
  }

  else
  {
    v44[1] = v20;
    v45 = v13;
    v23 = v48;
    v27 = v48[7];
    v44[0] = v16;
    v28 = v16;
    v29 = v27;
    v27(v28, 1, 1, v3);
    if (qword_1ECE42588 != -1)
    {
      swift_once();
    }

    v30 = qword_1ECE433F0;
    v31 = sub_1DF63295C();
    v32 = [v30 dateFromString_];

    if (v32)
    {
      sub_1DF6324FC();

      v33 = v23[4];
      v34 = v45;
      v33(v45, v6, v3);
      v29(v34, 0, 1, v3);
      v33(v18, v34, v3);
      v29(v18, 0, 1, v3);
      v35 = v23[6];
    }

    else
    {
      v29(v45, 1, 1, v3);
      if (qword_1ECE42598 != -1)
      {
        swift_once();
      }

      v36 = qword_1ECE43400;
      v37 = sub_1DF63295C();
      v38 = [v36 dateFromString_];

      if (v38)
      {
        v39 = v46;
        sub_1DF6324FC();

        v40 = 0;
      }

      else
      {
        v40 = 1;
        v39 = v46;
      }

      v29(v39, v40, 1, v3);
      sub_1DF6130F4(v39, v18);
      v35 = v23[6];
      v41 = v45;
      if (v35(v45, 1, v3) != 1)
      {
        sub_1DF5BAC4C(v41);
      }
    }

    v42 = v44[0];
    if (v35(v44[0], 1, v3) != 1)
    {
      sub_1DF5BAC4C(v42);
    }

    v26 = v35(v18, 1, v3);
  }

  if (v26 != 1)
  {
    return (v23[4])(v47, v18, v3);
  }

  sub_1DF5BAC4C(v18);
  sub_1DF613164();
  swift_allocError();
  return swift_willThrow();
}

uint64_t sub_1DF6130F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42D00, &qword_1DF63B250);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DF613164()
{
  result = qword_1ECE43408;
  if (!qword_1ECE43408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43408);
  }

  return result;
}

uint64_t sub_1DF6131C0(uint64_t a1)
{
  v2 = sub_1DF61334C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF6131FC(uint64_t a1)
{
  v2 = sub_1DF61334C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DateParsingStrategy.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43410, &qword_1DF63BC08);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF61334C();
  sub_1DF633AFC();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_1DF61334C()
{
  result = qword_1ECE43418;
  if (!qword_1ECE43418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43418);
  }

  return result;
}

uint64_t sub_1DF613424(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43410, &qword_1DF63BC08);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF61334C();
  sub_1DF633AFC();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_1DF61353C()
{
  result = qword_1ECE43420;
  if (!qword_1ECE43420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43420);
  }

  return result;
}

unint64_t sub_1DF613594()
{
  result = qword_1ECE43428;
  if (!qword_1ECE43428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43428);
  }

  return result;
}

unint64_t sub_1DF6135EC()
{
  result = qword_1ECE43430;
  if (!qword_1ECE43430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43430);
  }

  return result;
}

unint64_t sub_1DF613644()
{
  result = qword_1ECE43438;
  if (!qword_1ECE43438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43438);
  }

  return result;
}

unint64_t sub_1DF61369C()
{
  result = qword_1ECE43440;
  if (!qword_1ECE43440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43440);
  }

  return result;
}

unint64_t sub_1DF613724()
{
  result = qword_1ECE43448;
  if (!qword_1ECE43448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43448);
  }

  return result;
}

unint64_t sub_1DF61377C()
{
  result = qword_1ECE43450;
  if (!qword_1ECE43450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43450);
  }

  return result;
}

uint64_t FM.XPCSession.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1ED8E6A28;
  v4 = sub_1DF6325AC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1DF61385C(uint64_t a1)
{
  v2 = *(v1 + qword_1ED8E5D70);
  *(v1 + qword_1ED8E5D70) = a1;
  return MEMORY[0x1EEE66BB8]();
}

void *FM.XPCSession.deinit()
{
  v1 = v0;
  v2 = *v0;
  if (qword_1ED8E5990 != -1)
  {
    swift_once();
  }

  v3 = sub_1DF6326AC();
  __swift_project_value_buffer(v3, qword_1ED8E69B8);

  v4 = sub_1DF63268C();
  v5 = sub_1DF63315C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136446210;
    v8 = *(v2 + 80);
    type metadata accessor for FM.XPCSession();

    v9 = sub_1DF632A3C();
    v11 = sub_1DF59EEC8(v9, v10, &v18);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1DF59A000, v4, v5, "Deallocating %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1E12D9D80](v7, -1, -1);
    MEMORY[0x1E12D9D80](v6, -1, -1);
  }

  v12 = qword_1ED8E5D70;
  v13 = *(v1 + qword_1ED8E5D70);
  if (v13)
  {
    [v13 invalidate];
    v14 = *(v1 + v12);
  }

  else
  {
    v14 = 0;
  }

  *(v1 + v12) = 0;

  v15 = qword_1ED8E6A28;
  v16 = sub_1DF6325AC();
  (*(*(v16 - 8) + 8))(v1 + v15, v16);
  sub_1DF5A8528(v1 + qword_1ED8E6A20);

  swift_defaultActor_destroy();
  return v1;
}

uint64_t FM.XPCSession.__deallocating_deinit()
{
  FM.XPCSession.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1DF613AD0(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_1DF6325AC();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v6 = swift_task_alloc();
  v2[10] = v6;
  *v6 = v2;
  v6[1] = sub_1DF613BFC;
  v7 = *MEMORY[0x1E69E9840];

  return sub_1DF5A419C();
}

uint64_t sub_1DF613BFC(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 88) = a1;

  v4 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1DF613D40, v3, 0);
}

uint64_t sub_1DF613D40()
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = v0[11];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[4];
  v0[2] = v1;
  v7 = sub_1DF5B2644((v0 + 2), (v0 + 3));
  v9 = v8;
  sub_1DF5B1CE8(v7, v8, v2);
  sub_1DF5B33C0(v7, v9);

  v0[3] = v6;
  v10 = sub_1DF5B2644((v0 + 3), (v0 + 4));
  v12 = v11;
  sub_1DF5B1CE8(v10, v11, v3);
  sub_1DF5B33C0(v10, v12);
  MyBase10IdentifierV2eeoiySbACyxG_AEtFZ_0 = _s10FindMyBase10IdentifierV2eeoiySbACyxG_AEtFZ_0();
  v14 = *(v5 + 8);
  v14(v3, v4);
  v14(v2, v4);

  v15 = v0[1];
  v16 = *MEMORY[0x1E69E9840];

  return v15(MyBase10IdentifierV2eeoiySbACyxG_AEtFZ_0 & 1);
}

uint64_t sub_1DF613EA4()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1DF613F34;

  return sub_1DF5A419C();
}

uint64_t sub_1DF613F34(uint64_t a1)
{
  v2 = *(*v1 + 24);
  v3 = *(*v1 + 16);
  v5 = *v1;
  *(*v1 + 32) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1DF61404C, v3, 0);
}

uint64_t sub_1DF61404C()
{
  v1 = *(v0 + 32);
  [v1 suspend];

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1DF6140BC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DF59D2C8;

  return sub_1DF61454C();
}

void sub_1DF614148(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_1DF6141B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  v4[16] = *v3;
  v5 = swift_task_alloc();
  v4[17] = v5;
  *v5 = v4;
  v5[1] = sub_1DF61426C;

  return sub_1DF5A419C();
}

uint64_t sub_1DF61426C(uint64_t a1)
{
  v2 = *(*v1 + 136);
  v3 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 144) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1DF614384, v3, 0);
}

uint64_t sub_1DF614384()
{
  v1 = v0[18];
  v2 = v0[16];
  v3 = v0[14];
  v4 = v0[12];
  v0[6] = v0[13];
  v0[7] = v3;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1DF614148;
  v0[5] = &block_descriptor_10;
  v5 = _Block_copy(v0 + 2);
  v6 = v0[7];

  v7 = [v1 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v5);

  sub_1DF63339C();
  swift_unknownObjectRelease();
  v8 = *(v2 + 80);
  v9 = swift_dynamicCast();
  (*(*(v8 - 8) + 56))(v4, v9 ^ 1u, 1, v8);
  v10 = v0[1];

  return v10();
}

void sub_1DF6144FC()
{
  [*(v0 + qword_1ED8E5D70) invalidate];
  v1 = *(v0 + qword_1ED8E5D70);
  *(v0 + qword_1ED8E5D70) = 0;
}

uint64_t sub_1DF61456C()
{
  v1 = *(v0 + 16);
  [*(v1 + qword_1ED8E5D70) invalidate];
  v2 = *(v1 + qword_1ED8E5D70);
  *(v1 + qword_1ED8E5D70) = 0;

  v3 = *(v0 + 8);

  return v3();
}

uint64_t FM.XPCSession.hashValue.getter()
{
  sub_1DF633A6C();
  FM.XPCSession.hash(into:)();
  return sub_1DF633AAC();
}

uint64_t sub_1DF6146A0()
{
  sub_1DF633A6C();
  v1 = *v0;
  FM.XPCSession.hash(into:)();
  return sub_1DF633AAC();
}

uint64_t sub_1DF6146E0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return static FM.XPCSession.== infix(_:_:)() & 1;
}

uint64_t XPCSessionError.hashValue.getter()
{
  sub_1DF633A6C();
  MEMORY[0x1E12D9240](0);
  return sub_1DF633AAC();
}

void NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E695DFA8]) init];
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43460, &qword_1DF63BEE8);
      [v2 addObject_];
      swift_unknownObjectRelease();
      --v3;
    }

    while (v3);
  }

  v6 = v2;
  sub_1DF63308C();

  sub_1DF6336EC();
  __break(1u);
}

uint64_t NSXPCConnection.shortDescription.getter()
{
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43468, &qword_1DF63BEF0);
  v0 = sub_1DF632A5C();
  MEMORY[0x1E12D82E0](v0);

  MEMORY[0x1E12D82E0](2016419898, 0xE400000000000000);
  sub_1DF5B9E58();
  v1 = sub_1DF632BDC();
  MEMORY[0x1E12D82E0](v1);

  MEMORY[0x1E12D82E0](62, 0xE100000000000000);
  return 60;
}

unint64_t sub_1DF6149F4()
{
  result = qword_1ECE43458;
  if (!qword_1ECE43458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43458);
  }

  return result;
}

unint64_t sub_1DF614A68()
{
  result = qword_1ECE43470;
  if (!qword_1ECE43470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43470);
  }

  return result;
}

uint64_t dispatch thunk of FM.XPCSession.represents(underlyingConnection:)(uint64_t a1)
{
  v4 = *(*v1 + 176);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DF5A459C;

  return v8(a1);
}

uint64_t dispatch thunk of FM.XPCSession.suspend()()
{
  v2 = *(*v0 + 192);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1DF59D2C4;

  return v6();
}

uint64_t dispatch thunk of FM.XPCSession.invalidate()()
{
  v2 = *(*v0 + 200);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1DF59D2C8;

  return v6();
}

uint64_t dispatch thunk of FM.XPCSession.proxy(errorHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 208);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1DF59D2C8;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of FM.XPCSession.syncProxy(errorHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 216);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1DF59D2C4;

  return v12(a1, a2, a3);
}

uint64_t sub_1DF6150DC()
{
  v0 = sub_1DF6326AC();
  __swift_allocate_value_buffer(v0, qword_1ED8E6970);
  v1 = __swift_project_value_buffer(v0, qword_1ED8E6970);
  if (qword_1ED8E4AB0 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1ED8E6958);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t XPCActivity.name.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

uint64_t XPCActivity.__allocating_init(name:qos:criteriaBlock:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v7[9] = swift_allocObject();

  return MEMORY[0x1EEE6DFA0](sub_1DF615258, 0, 0);
}

uint64_t sub_1DF615258()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 40);
  v7 = *(v0 + 16);
  v8 = *(v0 + 48);
  swift_defaultActor_initialize();
  swift_unknownObjectWeakInit();
  *(v2 + 168) = 0;
  *(v2 + 176) = 0;
  *(v2 + 184) = 0;
  *(v2 + 112) = v7;
  *(v2 + 128) = v3;
  *(v2 + 136) = v8;
  *(v2 + 152) = v1;

  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_1DF615348;
  v5 = *(v0 + 72);

  return sub_1DF615770();
}

uint64_t sub_1DF615348()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v6 = *v0;

  sub_1DF615908();
  swift_getObjectType();
  v4 = sub_1DF632E1C();

  return MEMORY[0x1EEE6DFA0](sub_1DF615478, v4, v3);
}

uint64_t sub_1DF615478()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[4];

  v4 = sub_1DF6326FC();
  (*(*(v4 - 8) + 8))(v3, v4);
  v5 = v0[1];
  v6 = v0[9];

  return v5(v6);
}

uint64_t XPCActivity.init(name:qos:criteriaBlock:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DF615550, 0, 0);
}

uint64_t sub_1DF615550()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 40);
  v7 = *(v0 + 16);
  v8 = *(v0 + 48);
  swift_defaultActor_initialize();
  swift_unknownObjectWeakInit();
  *(v2 + 168) = 0;
  *(v2 + 176) = 0;
  *(v2 + 184) = 0;
  *(v2 + 112) = v7;
  *(v2 + 128) = v3;
  *(v2 + 136) = v8;
  *(v2 + 152) = v1;

  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_1DF615640;
  v5 = *(v0 + 72);

  return sub_1DF615770();
}

uint64_t sub_1DF615640()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v6 = *v0;

  sub_1DF615908();
  swift_getObjectType();
  v4 = sub_1DF632E1C();

  return MEMORY[0x1EEE6DFA0](sub_1DF61B260, v4, v3);
}

uint64_t sub_1DF615790(uint64_t a1)
{
  if ((sub_1DF5A4734(a1) & 1) == 0)
  {
    v2 = v1[8];
    v3 = swift_allocObject();
    swift_weakInit();
    v4 = v2[22];
    v5 = v2[23];
    v2[22] = sub_1DF61B1AC;
    v2[23] = v3;

    sub_1DF5A83BC(v4);
    v7 = v2[14];
    v6 = v2[15];
    v8 = *MEMORY[0x1E69E9C50];
    v1[6] = sub_1DF61B1AC;
    v1[7] = v3;
    v1[2] = MEMORY[0x1E69E9820];
    v1[3] = 1107296256;
    v1[4] = sub_1DF618160;
    v1[5] = &block_descriptor_1;
    v9 = _Block_copy(v1 + 2);
    v10 = v1[7];

    v11 = sub_1DF632A7C();
    xpc_activity_register((v11 + 32), v8, v9);

    _Block_release(v9);
  }

  v12 = v1[1];

  return v12();
}

unint64_t sub_1DF615908()
{
  result = qword_1ED8E4B50;
  if (!qword_1ED8E4B50)
  {
    type metadata accessor for XPCActivity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8E4B50);
  }

  return result;
}

uint64_t sub_1DF615980()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE43478, &unk_1DF63C118);
  v2 = sub_1DF632A3C();
  MEMORY[0x1E12D82E0](v2);

  MEMORY[0x1E12D82E0](8250, 0xE200000000000000);
  sub_1DF5B9E58();
  v3 = sub_1DF632BDC();
  MEMORY[0x1E12D82E0](v3);

  MEMORY[0x1E12D82E0](30768, 0xE200000000000000);

  MEMORY[0x1E12D82E0](8233, 0xE200000000000000);
  MEMORY[0x1E12D82E0](v0[14], v0[15]);
  MEMORY[0x1E12D82E0](62, 0xE100000000000000);
  return 60;
}

void sub_1DF615AB4(_BYTE *a1@<X8>)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    state = xpc_activity_get_state(Strong);
    sub_1DF615C68(state, a1);

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1ED8E4B70 != -1)
    {
      swift_once();
    }

    v4 = sub_1DF6326AC();
    __swift_project_value_buffer(v4, qword_1ED8E6970);

    v5 = sub_1DF63268C();
    v6 = sub_1DF63316C();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v12 = v8;
      *v7 = 136446210;
      v9 = sub_1DF615980();
      v11 = sub_1DF59EEC8(v9, v10, &v12);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_1DF59A000, v5, v6, "%{public}s: state called on invalidated XPCActivity", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x1E12D9D80](v8, -1, -1);
      MEMORY[0x1E12D9D80](v7, -1, -1);
    }

    *a1 = 0;
  }
}

unint64_t sub_1DF615C68@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result >= 6)
  {
    sub_1DF63347C();

    v2 = sub_1DF6338DC();
    MEMORY[0x1E12D82E0](v2);

    result = sub_1DF6336EC();
    __break(1u);
  }

  else
  {
    *a2 = result;
  }

  return result;
}

BOOL sub_1DF615D30()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    should_defer = xpc_activity_should_defer(Strong);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1ED8E4B70 != -1)
    {
      swift_once();
    }

    v2 = sub_1DF6326AC();
    __swift_project_value_buffer(v2, qword_1ED8E6970);

    v3 = sub_1DF63268C();
    v4 = sub_1DF63316C();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v11 = v6;
      *v5 = 136446210;
      v7 = sub_1DF615980();
      v9 = sub_1DF59EEC8(v7, v8, &v11);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_1DF59A000, v3, v4, "%{public}s: shouldDefer called on invalidated XPCActivity", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x1E12D9D80](v6, -1, -1);
      MEMORY[0x1E12D9D80](v5, -1, -1);
    }

    return 0;
  }

  return should_defer;
}

BOOL sub_1DF615ED4(xpc_activity_state_t a1, const char *a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = xpc_activity_set_state(Strong, a1);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1ED8E4B70 != -1)
    {
      swift_once();
    }

    v6 = sub_1DF6326AC();
    __swift_project_value_buffer(v6, qword_1ED8E6970);

    v7 = sub_1DF63268C();
    v8 = sub_1DF63316C();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136446210;
      v11 = sub_1DF615980();
      v13 = sub_1DF59EEC8(v11, v12, &v15);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_1DF59A000, v7, v8, a2, v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x1E12D9D80](v10, -1, -1);
      MEMORY[0x1E12D9D80](v9, -1, -1);
    }

    return 0;
  }

  return v5;
}

uint64_t sub_1DF616078(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DF616098, v1, 0);
}

uint64_t sub_1DF616098()
{
  v43 = v0;
  if (qword_1ED8E4B70 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_1DF6326AC();
  __swift_project_value_buffer(v2, qword_1ED8E6970);

  v3 = sub_1DF63268C();
  v4 = sub_1DF63318C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v42 = v7;
    *v6 = 136446210;
    v8 = sub_1DF615980();
    v10 = sub_1DF59EEC8(v8, v9, &v42);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1DF59A000, v3, v4, "%{public}s: updateCriteria called on XPCActivity", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1E12D9D80](v7, -1, -1);
    MEMORY[0x1E12D9D80](v6, -1, -1);
  }

  v11 = v0[3];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[4] = Strong;
  if (Strong)
  {
    v13 = Strong;
    v14 = swift_task_alloc();
    v0[5] = v14;
    *v14 = v0;
    v14[1] = sub_1DF61657C;
    v15 = v0[2];
    v16 = v0[3];

    return sub_1DF61681C(v15, v13);
  }

  else
  {
    v18 = v0[3];
    v20 = *(v18 + 112);
    v19 = *(v18 + 120);
    v21 = *(v18 + 168);

    v22 = sub_1DF63268C();
    v23 = sub_1DF63318C();

    v24 = os_log_type_enabled(v22, v23);
    if (v21 == 1)
    {
      if (v24)
      {
        v25 = v0[3];
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v42 = v27;
        *v26 = 136446466;
        v28 = sub_1DF615980();
        v30 = sub_1DF59EEC8(v28, v29, &v42);

        *(v26 + 4) = v30;
        *(v26 + 12) = 2082;
        v31 = sub_1DF59EEC8(v20, v19, &v42);

        *(v26 + 14) = v31;
        _os_log_impl(&dword_1DF59A000, v22, v23, "%{public}s: No current activity -- re-registering %{public}s", v26, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12D9D80](v27, -1, -1);
        MEMORY[0x1E12D9D80](v26, -1, -1);
      }

      else
      {
      }

      v39 = swift_task_alloc();
      v0[6] = v39;
      *v39 = v0;
      v39[1] = sub_1DF6166EC;
      v40 = v0[3];

      return sub_1DF615770();
    }

    else
    {
      if (v24)
      {
        v32 = v0[3];
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v42 = v34;
        *v33 = 136446466;
        v35 = sub_1DF615980();
        v37 = sub_1DF59EEC8(v35, v36, &v42);

        *(v33 + 4) = v37;
        *(v33 + 12) = 2082;
        v38 = sub_1DF59EEC8(v20, v19, &v42);

        *(v33 + 14) = v38;
        _os_log_impl(&dword_1DF59A000, v22, v23, "%{public}s: No current activity -- hasn't checked in yet %{public}s", v33, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12D9D80](v34, -1, -1);
        MEMORY[0x1E12D9D80](v33, -1, -1);
      }

      else
      {
      }

      *v0[2] = 6;
      v41 = v0[1];

      return v41();
    }
  }
}

uint64_t sub_1DF61657C()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DF61668C, v2, 0);
}

uint64_t sub_1DF61668C()
{
  v1 = *(v0 + 32);
  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1DF6166EC()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DF6167FC, v2, 0);
}

uint64_t sub_1DF61681C(uint64_t a1, uint64_t a2)
{
  v3[23] = a2;
  v3[24] = v2;
  v3[22] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DF616840, v2, 0);
}

uint64_t sub_1DF616840()
{
  v26 = v0;
  v1 = xpc_activity_copy_criteria(*(v0 + 184));
  *(v0 + 200) = v1;
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = swift_unknownObjectRetain();
  sub_1DF5E526C(v2, v22);
  v3 = v22[0];
  v4 = v22[1];
  *(v0 + 208) = v22[0];
  *(v0 + 216) = v4;
  v5 = v23;
  v6 = v24;
  *(v0 + 224) = v23;
  *(v0 + 232) = v6;
  v7 = v25;
  *(v0 + 240) = v25;
  if (v3 == 2)
  {
    swift_unknownObjectRelease();
LABEL_4:
    v8 = *(v0 + 192);
    v9 = *(v8 + 128);
    v10 = *(v8 + 136);
    *(v0 + 56) = 2;
    v11 = v0 + 56;
    *(v0 + 64) = 0u;
    *(v0 + 80) = 0u;
    v21 = (v9 + *v9);
    v12 = v9[1];
    v13 = swift_task_alloc();
    *(v0 + 256) = v13;
    *v13 = v0;
    v13[1] = sub_1DF617134;
    v14 = v0 + 16;
    goto LABEL_6;
  }

  v15 = *(v0 + 192);
  v16 = *(v15 + 128);
  v17 = *(v15 + 136);
  *(v0 + 136) = v3;
  v11 = v0 + 136;
  *(v0 + 144) = v4;
  *(v0 + 152) = v5;
  *(v0 + 160) = v6;
  *(v0 + 168) = v7;
  v21 = (v16 + *v16);
  v18 = v16[1];
  v19 = swift_task_alloc();
  *(v0 + 248) = v19;
  *v19 = v0;
  v19[1] = sub_1DF616A54;
  v14 = v0 + 96;
LABEL_6:

  return v21(v14, v11);
}

uint64_t sub_1DF616A54()
{
  v1 = *(*v0 + 248);
  v2 = *(*v0 + 192);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DF616B64, v2, 0);
}

uint64_t sub_1DF616B64()
{
  v81 = v0;
  v1 = *(v0 + 96);
  if (v1 == 2)
  {
    v3 = *(v0 + 192);
    v2 = *(v0 + 200);
    v4 = *(v0 + 176);
    sub_1DF6181C0();
    swift_unknownObjectRelease();
    *v4 = 6;
  }

  else
  {
    v5 = *(v0 + 104);
    v6 = *(v0 + 112);
    v7 = *(v0 + 120);
    v8 = *(v0 + 128);
    v9 = *(v0 + 208);
    v10 = *(v0 + 96) & 1;
    LOWORD(v77[0]) = v1 & 0x101;
    v11 = (v1 >> 8) & 1;
    v75 = v5;
    v77[1] = v5;
    v77[2] = v6;
    v77[3] = v7;
    v77[4] = v8;
    v12 = v9 & 1;
    v78 = v9 & 0x101;
    v13 = (v9 >> 8) & 1;
    v79 = *(v0 + 216);
    v80 = *(v0 + 232);
    if (_s10FindMyBase11XPCActivityC8CriteriaV2eeoiySbAE_AEtFZ_0(v77, &v78))
    {
      if (qword_1ED8E4B70 != -1)
      {
        swift_once();
      }

      v14 = *(v0 + 192);
      v15 = sub_1DF6326AC();
      __swift_project_value_buffer(v15, qword_1ED8E6970);

      v16 = sub_1DF63268C();
      v17 = sub_1DF63318C();

      v18 = os_log_type_enabled(v16, v17);
      v19 = *(v0 + 200);
      if (v18)
      {
        v20 = *(v0 + 192);
        v73 = *(v0 + 232);
        v76 = *(v0 + 216);
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v77[0] = v22;
        *v21 = 136446466;
        v23 = sub_1DF615980();
        v25 = sub_1DF59EEC8(v23, v24, v77);

        *(v21 + 4) = v25;
        *(v21 + 12) = 2082;
        LOBYTE(v78) = v12;
        HIBYTE(v78) = v13;
        v80 = v73;
        v79 = v76;
        v26 = XPCActivity.Criteria.description.getter();
        v28 = sub_1DF59EEC8(v26, v27, v77);

        *(v21 + 14) = v28;
        _os_log_impl(&dword_1DF59A000, v16, v17, "%{public}s: Keeping existing criteria: %{public}s", v21, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12D9D80](v22, -1, -1);
        MEMORY[0x1E12D9D80](v21, -1, -1);
      }

      swift_unknownObjectRelease();
    }

    else
    {
      v69 = v11;
      v70 = v10;
      v71 = v8;
      v74 = v6;
      if (qword_1ED8E4B70 != -1)
      {
        swift_once();
      }

      v29 = *(v0 + 192);
      v30 = sub_1DF6326AC();
      __swift_project_value_buffer(v30, qword_1ED8E6970);

      v31 = sub_1DF63268C();
      v32 = sub_1DF63318C();

      v72 = v7;
      if (os_log_type_enabled(v31, v32))
      {
        v33 = *(v0 + 192);
        v65 = *(v0 + 232);
        v66 = *(v0 + 216);
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v77[0] = v35;
        *v34 = 136446466;
        v36 = sub_1DF615980();
        v38 = sub_1DF59EEC8(v36, v37, v77);

        *(v34 + 4) = v38;
        *(v34 + 12) = 2082;
        LOBYTE(v78) = v12;
        HIBYTE(v78) = v13;
        v80 = v65;
        v79 = v66;
        v39 = XPCActivity.Criteria.description.getter();
        v41 = sub_1DF59EEC8(v39, v40, v77);

        *(v34 + 14) = v41;
        _os_log_impl(&dword_1DF59A000, v31, v32, "%{public}s: Existing criteria: %{public}s", v34, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12D9D80](v35, -1, -1);
        MEMORY[0x1E12D9D80](v34, -1, -1);
      }

      v42 = *(v0 + 192);

      v43 = sub_1DF63268C();
      v44 = sub_1DF63318C();

      if (os_log_type_enabled(v43, v44))
      {
        v68 = v44;
        v45 = *(v0 + 192);
        v46 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v77[0] = v67;
        *v46 = 136446466;
        v47 = sub_1DF615980();
        v49 = sub_1DF59EEC8(v47, v48, v77);

        *(v46 + 4) = v49;
        *(v46 + 12) = 2082;
        v50 = v69;
        v51 = v70;
        LOBYTE(v78) = v70;
        HIBYTE(v78) = v69;
        v53 = v72;
        v52 = v74;
        *&v79 = v75;
        *(&v79 + 1) = v74;
        v54 = v71;
        *&v80 = v72;
        *(&v80 + 1) = v71;
        v55 = XPCActivity.Criteria.description.getter();
        v57 = sub_1DF59EEC8(v55, v56, v77);

        *(v46 + 14) = v57;
        _os_log_impl(&dword_1DF59A000, v43, v68, "%{public}s: Registering updated criteria: %{public}s", v46, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12D9D80](v67, -1, -1);
        MEMORY[0x1E12D9D80](v46, -1, -1);
      }

      else
      {

        v53 = v72;
        v52 = v74;
        v54 = v71;
        v50 = v69;
        v51 = v70;
      }

      v58 = *(v0 + 200);
      v59 = *(v0 + 184);
      LOBYTE(v78) = v51;
      HIBYTE(v78) = v50;
      *&v79 = v75;
      *(&v79 + 1) = v52;
      *&v80 = v53;
      *(&v80 + 1) = v54;
      sub_1DF5E5758();
      xpc_activity_set_criteria(v59, v60);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    v61 = *(v0 + 176);
    state = xpc_activity_get_state(*(v0 + 184));
    sub_1DF615C68(state, v61);
  }

  v63 = *(v0 + 8);

  return v63();
}

uint64_t sub_1DF617134()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 192);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DF617244, v2, 0);
}

uint64_t sub_1DF617244()
{
  v42 = v0;
  v1 = *(v0 + 16);
  if (v1 == 2)
  {
    v2 = *(v0 + 192);
    v3 = *(v0 + 176);
    sub_1DF6181C0();
    *v3 = 6;
  }

  else
  {
    v4 = *(v0 + 24);
    v5 = *(v0 + 32);
    v6 = *(v0 + 40);
    v34 = *(v0 + 48);
    if (qword_1ED8E4B70 != -1)
    {
      swift_once();
    }

    v7 = v1 & 0x100;
    v8 = *(v0 + 192);
    v9 = sub_1DF6326AC();
    __swift_project_value_buffer(v9, qword_1ED8E6970);

    v10 = sub_1DF63268C();
    v11 = sub_1DF63318C();

    if (os_log_type_enabled(v10, v11))
    {
      v32 = v11;
      v12 = *(v0 + 192);
      v13 = swift_slowAlloc();
      v33 = v4;
      v31 = swift_slowAlloc();
      v35 = v31;
      *v13 = 136446466;
      v14 = sub_1DF615980();
      v16 = v6;
      v17 = v5;
      v18 = sub_1DF59EEC8(v14, v15, &v35);

      *(v13 + 4) = v18;
      *(v13 + 12) = 2082;
      v19 = v1 & 1;
      v36 = v19;
      v20 = v7 >> 8;
      v37 = v20;
      v21 = v34;
      v38 = v33;
      v39 = v17;
      v40 = v16;
      v41 = v34;
      v22 = XPCActivity.Criteria.description.getter();
      v24 = sub_1DF59EEC8(v22, v23, &v35);

      *(v13 + 14) = v24;
      v5 = v17;
      v6 = v16;
      _os_log_impl(&dword_1DF59A000, v10, v32, "%{public}s: Registering new criteria: %{public}s", v13, 0x16u);
      swift_arrayDestroy();
      v4 = v33;
      MEMORY[0x1E12D9D80](v31, -1, -1);
      MEMORY[0x1E12D9D80](v13, -1, -1);
    }

    else
    {

      v19 = v1 & 1;
      v20 = v7 >> 8;
      v21 = v34;
    }

    v25 = *(v0 + 184);
    v36 = v19;
    v37 = v20;
    v38 = v4;
    v39 = v5;
    v40 = v6;
    v41 = v21;
    sub_1DF5E5758();
    xpc_activity_set_criteria(v25, v26);
    swift_unknownObjectRelease();
    v27 = *(v0 + 176);
    state = xpc_activity_get_state(*(v0 + 184));
    sub_1DF615C68(state, v27);
  }

  v29 = *(v0 + 8);

  return v29();
}

void *XPCActivity.deinit()
{
  v1 = v0[15];

  v2 = v0[17];

  v3 = v0[19];

  sub_1DF61A074((v0 + 20));
  v4 = v0[23];
  sub_1DF5A83BC(v0[22]);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t XPCActivity.__deallocating_deinit()
{
  v1 = v0[15];

  v2 = v0[17];

  v3 = v0[19];

  sub_1DF61A074((v0 + 20));
  v4 = v0[23];
  sub_1DF5A83BC(v0[22]);
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1DF6175BC(_xpc_activity_s *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    state = xpc_activity_get_state(a1);
    sub_1DF615C68(state, &v7);
    v4 = v7;
    v5 = swift_allocObject();
    swift_weakInit();
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = v4;
    *(v6 + 32) = a1;

    swift_unknownObjectRetain();
    _s10FindMyBase11TransactionC9asyncTask4name5blockys12StaticStringV_yyYaYbctFZ_0("XPCActivity", 11, 2, &unk_1DF63CAB8, v6);
  }

  return result;
}

uint64_t sub_1DF6176CC(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 73) = a2;
  *(v3 + 40) = a1;
  *(v3 + 48) = a3;
  return MEMORY[0x1EEE6DFA0](sub_1DF6176F0, 0, 0);
}

uint64_t sub_1DF6176F0()
{
  v1 = *(v0 + 40);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    *(v0 + 72) = *(v0 + 73);
    v3 = swift_task_alloc();
    *(v0 + 64) = v3;
    *v3 = v0;
    v3[1] = sub_1DF6177EC;
    v4 = *(v0 + 48);

    return sub_1DF6178FC((v0 + 72), v4);
  }

  else
  {
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_1DF6177EC()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1DF6178FC(_BYTE *a1, uint64_t a2)
{
  *(v3 + 24) = a2;
  *(v3 + 32) = v2;
  *(v3 + 67) = *a1;
  return MEMORY[0x1EEE6DFA0](sub_1DF617924, v2, 0);
}

uint64_t sub_1DF617924()
{
  v41 = v0;
  if (qword_1ED8E4B70 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = sub_1DF6326AC();
  __swift_project_value_buffer(v3, qword_1ED8E6970);

  swift_unknownObjectRetain();
  v4 = sub_1DF63268C();
  v5 = sub_1DF63318C();

  swift_unknownObjectRelease();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 67);
    v8 = *(v0 + 24);
    v7 = *(v0 + 32);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v40 = v10;
    *v9 = 136446722;
    v11 = sub_1DF615980();
    v13 = sub_1DF59EEC8(v11, v12, &v40);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    *(v0 + 16) = v8;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE435F0, &qword_1DF63CAC8);
    v14 = sub_1DF632A3C();
    v16 = sub_1DF59EEC8(v14, v15, &v40);

    v17 = 0xE800000000000000;
    v18 = 0x6E496B636568632ELL;
    *(v9 + 14) = v16;
    v19 = 0xE500000000000000;
    *(v9 + 22) = 2082;
    v20 = 0x656E6F642ELL;
    if (v6 != 5)
    {
      v20 = 0x64696C61766E692ELL;
      v19 = 0xEC00000064657461;
    }

    v21 = 0xE600000000000000;
    v22 = 0x72656665642ELL;
    if (v6 != 3)
    {
      v22 = 0x756E69746E6F632ELL;
      v21 = 0xE900000000000065;
    }

    if (v6 <= 4)
    {
      v20 = v22;
      v19 = v21;
    }

    v23 = 0xE500000000000000;
    v24 = 0x746961772ELL;
    if (v6 != 1)
    {
      v24 = 1853190702;
      v23 = 0xE400000000000000;
    }

    if (v6)
    {
      v18 = v24;
      v17 = v23;
    }

    if (v6 <= 2)
    {
      v25 = v18;
    }

    else
    {
      v25 = v20;
    }

    if (v6 <= 2)
    {
      v26 = v17;
    }

    else
    {
      v26 = v19;
    }

    v27 = sub_1DF59EEC8(v25, v26, &v40);

    *(v9 + 24) = v27;
    _os_log_impl(&dword_1DF59A000, v4, v5, "%{public}s: activityHandler() for %{public}s\nstate: %{public}s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12D9D80](v10, -1, -1);
    MEMORY[0x1E12D9D80](v9, -1, -1);
  }

  v28 = *(v0 + 32);
  if (*(v0 + 67))
  {
    v29 = *(v28 + 144);
    v30 = *(v28 + 152);
    *(v0 + 64) = *(v0 + 67);
    v39 = (v29 + *v29);
    v31 = v29[1];
    v32 = swift_task_alloc();
    *(v0 + 56) = v32;
    *v32 = v0;
    v32[1] = sub_1DF61806C;
    v33 = *(v0 + 32);

    return v39(v33, v0 + 64);
  }

  else
  {
    v35 = *(v0 + 24);
    swift_unknownObjectWeakAssign();
    *(v28 + 168) = 1;
    v36 = swift_task_alloc();
    *(v0 + 40) = v36;
    *v36 = v0;
    v36[1] = sub_1DF617D60;
    v37 = *(v0 + 24);
    v38 = *(v0 + 32);

    return sub_1DF61681C(v0 + 65, v37);
  }
}

uint64_t sub_1DF617D60()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DF617E70, v2, 0);
}

uint64_t sub_1DF617E70()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 144);
  v3 = *(v1 + 152);
  *(v0 + 66) = *(v0 + 65);
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_1DF617F78;
  v6 = *(v0 + 32);

  return v8(v6, v0 + 66);
}

uint64_t sub_1DF617F78()
{
  v1 = *(*v0 + 48);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1DF61806C()
{
  v1 = *(*v0 + 56);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1DF618160(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void sub_1DF6181C0()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = sub_1DF632A7C();
  xpc_activity_unregister((v3 + 32));

  v4 = v0[22];
  v5 = v0[23];
  v0[22] = 0;
  v0[23] = 0;
  sub_1DF5A83BC(v4);
  swift_unknownObjectWeakAssign();
  if (qword_1ED8E4B70 != -1)
  {
    swift_once();
  }

  v6 = sub_1DF6326AC();
  __swift_project_value_buffer(v6, qword_1ED8E6970);

  oslog = sub_1DF63268C();
  v7 = sub_1DF63318C();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136446210;
    v10 = sub_1DF615980();
    v12 = sub_1DF59EEC8(v10, v11, &v14);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1DF59A000, oslog, v7, "%{public}s: Unregistered criteria", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1E12D9D80](v9, -1, -1);
    MEMORY[0x1E12D9D80](v8, -1, -1);
  }
}

uint64_t XPCActivity.State.description.getter()
{
  v1 = *v0;
  v2 = 0x6E496B636568632ELL;
  v3 = 0x656E6F642ELL;
  if (v1 != 5)
  {
    v3 = 0x64696C61766E692ELL;
  }

  v4 = 0x72656665642ELL;
  if (v1 != 3)
  {
    v4 = 0x756E69746E6F632ELL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x746961772ELL;
  if (v1 != 1)
  {
    v5 = 1853190702;
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

uint64_t sub_1DF618440(uint64_t a1)
{
  v2 = sub_1DF61A2E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF61847C(uint64_t a1)
{
  v2 = sub_1DF61A2E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF6184B8()
{
  v1 = *v0;
  v2 = 0x6E496B63656863;
  v3 = 1701736292;
  if (v1 != 5)
  {
    v3 = 0x6164696C61766E69;
  }

  v4 = 0x7265666564;
  if (v1 != 3)
  {
    v4 = 0x65756E69746E6F63;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 1953063287;
  if (v1 != 1)
  {
    v5 = 7239026;
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

uint64_t sub_1DF618580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DF61AF10(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DF6185B4(uint64_t a1)
{
  v2 = sub_1DF61A09C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF6185F0(uint64_t a1)
{
  v2 = sub_1DF61A09C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF61862C(uint64_t a1)
{
  v2 = sub_1DF61A198();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF618668(uint64_t a1)
{
  v2 = sub_1DF61A198();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF6186A4(uint64_t a1)
{
  v2 = sub_1DF61A1EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF6186E0(uint64_t a1)
{
  v2 = sub_1DF61A1EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF61871C(uint64_t a1)
{
  v2 = sub_1DF61A144();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF618758(uint64_t a1)
{
  v2 = sub_1DF61A144();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF618794(uint64_t a1)
{
  v2 = sub_1DF61A0F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF6187D0(uint64_t a1)
{
  v2 = sub_1DF61A0F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF61880C(uint64_t a1)
{
  v2 = sub_1DF61A240();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF618848(uint64_t a1)
{
  v2 = sub_1DF61A240();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF618884(uint64_t a1)
{
  v2 = sub_1DF61A294();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF6188C0(uint64_t a1)
{
  v2 = sub_1DF61A294();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t XPCActivity.State.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43488, &qword_1DF63C130);
  v59 = *(v4 - 8);
  v60 = v4;
  v5 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v58 = &v47 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43490, &qword_1DF63C138);
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v55 = &v47 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43498, &qword_1DF63C140);
  v53 = *(v10 - 8);
  v54 = v10;
  v11 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v52 = &v47 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE434A0, &qword_1DF63C148);
  v50 = *(v13 - 8);
  v51 = v13;
  v14 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v49 = &v47 - v15;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE434A8, &qword_1DF63C150);
  v64 = *(v48 - 8);
  v16 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v63 = &v47 - v17;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE434B0, &qword_1DF63C158);
  v62 = *(v47 - 8);
  v18 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v20 = &v47 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE434B8, &qword_1DF63C160);
  v61 = *(v21 - 8);
  v22 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v47 - v23;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE434C0, &qword_1DF63C168);
  v25 = *(v66 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v28 = &v47 - v27;
  v29 = *v2;
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF61A09C();
  v65 = v28;
  sub_1DF633AFC();
  v31 = (v25 + 8);
  if (v29 <= 2)
  {
    v37 = v61;
    v38 = v62;
    v39 = v63;
    v40 = v64;
    if (v29)
    {
      if (v29 == 1)
      {
        v68 = 1;
        sub_1DF61A294();
        v42 = v65;
        v41 = v66;
        sub_1DF63383C();
        (*(v38 + 8))(v20, v47);
      }

      else
      {
        v69 = 2;
        sub_1DF61A240();
        v46 = v39;
        v42 = v65;
        v41 = v66;
        sub_1DF63383C();
        (*(v40 + 8))(v46, v48);
      }

      return (*v31)(v42, v41);
    }

    else
    {
      v67 = 0;
      sub_1DF61A2E8();
      v43 = v65;
      v44 = v66;
      sub_1DF63383C();
      (*(v37 + 8))(v24, v21);
      return (*v31)(v43, v44);
    }
  }

  else
  {
    if (v29 > 4)
    {
      if (v29 == 5)
      {
        v72 = 5;
        sub_1DF61A144();
        v32 = v55;
        v33 = v65;
        v34 = v66;
        sub_1DF63383C();
        v36 = v56;
        v35 = v57;
      }

      else
      {
        v73 = 6;
        sub_1DF61A0F0();
        v32 = v58;
        v33 = v65;
        v34 = v66;
        sub_1DF63383C();
        v36 = v59;
        v35 = v60;
      }
    }

    else if (v29 == 3)
    {
      v70 = 3;
      sub_1DF61A1EC();
      v32 = v49;
      v33 = v65;
      v34 = v66;
      sub_1DF63383C();
      v36 = v50;
      v35 = v51;
    }

    else
    {
      v71 = 4;
      sub_1DF61A198();
      v32 = v52;
      v33 = v65;
      v34 = v66;
      sub_1DF63383C();
      v36 = v53;
      v35 = v54;
    }

    (*(v36 + 8))(v32, v35);
    return (*v31)(v33, v34);
  }
}

uint64_t XPCActivity.State.hashValue.getter()
{
  v1 = *v0;
  sub_1DF633A6C();
  MEMORY[0x1E12D9240](v1);
  return sub_1DF633AAC();
}

uint64_t XPCActivity.State.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v79 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43508, &qword_1DF63C170);
  v74 = *(v3 - 8);
  v75 = v3;
  v4 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v78 = &v59[-v5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43510, &qword_1DF63C178);
  v72 = *(v6 - 8);
  v73 = v6;
  v7 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v81 = &v59[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43518, &qword_1DF63C180);
  v10 = *(v9 - 8);
  v70 = v9;
  v71 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v77 = &v59[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43520, &qword_1DF63C188);
  v14 = *(v13 - 8);
  v68 = v13;
  v69 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v76 = &v59[-v16];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43528, &qword_1DF63C190);
  v66 = *(v17 - 8);
  v67 = v17;
  v18 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v80 = &v59[-v19];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43530, &qword_1DF63C198);
  v64 = *(v20 - 8);
  v65 = v20;
  v21 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v59[-v22];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43538, &qword_1DF63C1A0);
  v63 = *(v24 - 8);
  v25 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v59[-v26];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43540, &qword_1DF63C1A8);
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v59[-v31];
  v33 = a1[3];
  v34 = a1[4];
  v82 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v33);
  sub_1DF61A09C();
  v35 = v83;
  sub_1DF633ADC();
  if (!v35)
  {
    v61 = v24;
    v36 = v80;
    v37 = v81;
    v62 = v29;
    v83 = v28;
    v38 = sub_1DF63381C();
    if (*(v38 + 16) == 1)
    {
      v39 = *(v38 + 32);
      if (v39 != 7)
      {
        v60 = *(v38 + 32);
        if (v39 > 2)
        {
          if (v39 > 4)
          {
            v40 = v39 == 5;
            v41 = v79;
            v51 = v83;
            if (v40)
            {
              v89 = 5;
              sub_1DF61A144();
              sub_1DF63379C();
              v56 = v62;
              (*(v72 + 8))(v37, v73);
            }

            else
            {
              v90 = 6;
              sub_1DF61A0F0();
              v55 = v78;
              sub_1DF63379C();
              v56 = v62;
              (*(v74 + 8))(v55, v75);
            }

            (*(v56 + 8))(v32, v51);
          }

          else
          {
            v40 = v39 == 3;
            v41 = v79;
            v42 = v83;
            if (v40)
            {
              v87 = 3;
              sub_1DF61A1EC();
              v43 = v76;
              sub_1DF63379C();
              v54 = v62;
              (*(v69 + 8))(v43, v68);
            }

            else
            {
              v88 = 4;
              sub_1DF61A198();
              v53 = v77;
              sub_1DF63379C();
              v54 = v62;
              (*(v71 + 8))(v53, v70);
            }

            (*(v54 + 8))(v32, v42);
          }

          swift_unknownObjectRelease();
          v57 = v82;
          goto LABEL_25;
        }

        if (v39)
        {
          if (v39 == 1)
          {
            v85 = 1;
            sub_1DF61A294();
            v49 = v32;
            v50 = v83;
            sub_1DF63379C();
            (*(v64 + 8))(v23, v65);
            (*(v62 + 8))(v49, v50);
LABEL_21:
            swift_unknownObjectRelease();
            v57 = v82;
            v41 = v79;
LABEL_25:
            *v41 = v60;
            return __swift_destroy_boxed_opaque_existential_1(v57);
          }

          v86 = 2;
          sub_1DF61A240();
          v52 = v83;
          sub_1DF63379C();
          (*(v66 + 8))(v36, v67);
        }

        else
        {
          v84 = 0;
          sub_1DF61A2E8();
          v52 = v83;
          sub_1DF63379C();
          (*(v63 + 8))(v27, v61);
        }

        (*(v62 + 8))(v32, v52);
        goto LABEL_21;
      }
    }

    v44 = sub_1DF6334DC();
    swift_allocError();
    v46 = v45;
    v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43548, &qword_1DF63C1B0) + 48);
    *v46 = &type metadata for XPCActivity.State;
    v48 = v83;
    sub_1DF6337AC();
    sub_1DF6334CC();
    (*(*(v44 - 8) + 104))(v46, *MEMORY[0x1E69E6AF8], v44);
    swift_willThrow();
    (*(v62 + 8))(v32, v48);
    swift_unknownObjectRelease();
  }

  v57 = v82;
  return __swift_destroy_boxed_opaque_existential_1(v57);
}

uint64_t sub_1DF619A2C()
{
  v1 = *v0;
  v2 = 0x6E496B636568632ELL;
  v3 = 0x656E6F642ELL;
  if (v1 != 5)
  {
    v3 = 0x64696C61766E692ELL;
  }

  v4 = 0x72656665642ELL;
  if (v1 != 3)
  {
    v4 = 0x756E69746E6F632ELL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x746961772ELL;
  if (v1 != 1)
  {
    v5 = 1853190702;
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

uint64_t sub_1DF619B00()
{
  v0 = *MEMORY[0x1E69E9D78];
  result = sub_1DF632B2C();
  qword_1ED8E4B60 = result;
  *algn_1ED8E4B68 = v2;
  return result;
}

uint64_t XPCActivity.Priority.description.getter()
{
  if (*v0)
  {
    result = 0x6E65746E69616D2ELL;
  }

  else
  {
    result = 0x7974696C6974752ELL;
  }

  *v0;
  return result;
}

FindMyBase::XPCActivity::Priority_optional __swiftcall XPCActivity.Priority.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DF63376C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t XPCActivity.Priority.rawValue.getter()
{
  if (*v0)
  {
    result = 0x616E65746E69616DLL;
  }

  else
  {
    result = 0x7974696C697475;
  }

  *v0;
  return result;
}

uint64_t sub_1DF619C1C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x616E65746E69616DLL;
  }

  else
  {
    v4 = 0x7974696C697475;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xEB0000000065636ELL;
  }

  if (*a2)
  {
    v6 = 0x616E65746E69616DLL;
  }

  else
  {
    v6 = 0x7974696C697475;
  }

  if (*a2)
  {
    v7 = 0xEB0000000065636ELL;
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
    v9 = sub_1DF63394C();
  }

  return v9 & 1;
}

uint64_t sub_1DF619CCC()
{
  v1 = *v0;
  sub_1DF633A6C();
  sub_1DF632ACC();

  return sub_1DF633AAC();
}

uint64_t sub_1DF619D58()
{
  *v0;
  sub_1DF632ACC();
}

uint64_t sub_1DF619DD0()
{
  v1 = *v0;
  sub_1DF633A6C();
  sub_1DF632ACC();

  return sub_1DF633AAC();
}

uint64_t sub_1DF619E58@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1DF63376C();

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

void sub_1DF619EB8(uint64_t *a1@<X8>)
{
  v2 = 0x7974696C697475;
  if (*v1)
  {
    v2 = 0x616E65746E69616DLL;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xEB0000000065636ELL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1DF619FB0()
{
  if (*v0)
  {
    result = 0x6E65746E69616D2ELL;
  }

  else
  {
    result = 0x7974696C6974752ELL;
  }

  *v0;
  return result;
}

uint64_t sub_1DF619FF4()
{
  v0 = sub_1DF6326AC();
  __swift_allocate_value_buffer(v0, qword_1ED8E6958);
  __swift_project_value_buffer(v0, qword_1ED8E6958);
  return sub_1DF63269C();
}

unint64_t sub_1DF61A09C()
{
  result = qword_1ECE434C8;
  if (!qword_1ECE434C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE434C8);
  }

  return result;
}

unint64_t sub_1DF61A0F0()
{
  result = qword_1ECE434D0;
  if (!qword_1ECE434D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE434D0);
  }

  return result;
}

unint64_t sub_1DF61A144()
{
  result = qword_1ECE434D8;
  if (!qword_1ECE434D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE434D8);
  }

  return result;
}

unint64_t sub_1DF61A198()
{
  result = qword_1ECE434E0;
  if (!qword_1ECE434E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE434E0);
  }

  return result;
}

unint64_t sub_1DF61A1EC()
{
  result = qword_1ECE434E8;
  if (!qword_1ECE434E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE434E8);
  }

  return result;
}

unint64_t sub_1DF61A240()
{
  result = qword_1ECE434F0;
  if (!qword_1ECE434F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE434F0);
  }

  return result;
}

unint64_t sub_1DF61A294()
{
  result = qword_1ECE434F8;
  if (!qword_1ECE434F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE434F8);
  }

  return result;
}

unint64_t sub_1DF61A2E8()
{
  result = qword_1ECE43500;
  if (!qword_1ECE43500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43500);
  }

  return result;
}

unint64_t sub_1DF61A340()
{
  result = qword_1ECE43550;
  if (!qword_1ECE43550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43550);
  }

  return result;
}

unint64_t sub_1DF61A398()
{
  result = qword_1ECE43558;
  if (!qword_1ECE43558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43558);
  }

  return result;
}

uint64_t dispatch thunk of XPCActivity.__allocating_init(name:qos:criteriaBlock:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = *(v7 + 208);
  v20 = (v16 + *v16);
  v17 = v16[1];
  v18 = swift_task_alloc();
  *(v8 + 16) = v18;
  *v18 = v8;
  v18[1] = sub_1DF5A459C;

  return v20(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of XPCActivity.updateCriteria()(uint64_t a1)
{
  v4 = *(*v1 + 264);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DF59D2C8;

  return v8(a1);
}

uint64_t sub_1DF61A778(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1DF61A808(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DF61A93C()
{
  result = qword_1ECE43560;
  if (!qword_1ECE43560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43560);
  }

  return result;
}

unint64_t sub_1DF61A994()
{
  result = qword_1ECE43568;
  if (!qword_1ECE43568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43568);
  }

  return result;
}

unint64_t sub_1DF61A9EC()
{
  result = qword_1ECE43570;
  if (!qword_1ECE43570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43570);
  }

  return result;
}

unint64_t sub_1DF61AA44()
{
  result = qword_1ECE43578;
  if (!qword_1ECE43578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43578);
  }

  return result;
}

unint64_t sub_1DF61AA9C()
{
  result = qword_1ECE43580;
  if (!qword_1ECE43580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43580);
  }

  return result;
}

unint64_t sub_1DF61AAF4()
{
  result = qword_1ECE43588;
  if (!qword_1ECE43588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43588);
  }

  return result;
}

unint64_t sub_1DF61AB4C()
{
  result = qword_1ECE43590;
  if (!qword_1ECE43590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43590);
  }

  return result;
}

unint64_t sub_1DF61ABA4()
{
  result = qword_1ECE43598;
  if (!qword_1ECE43598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43598);
  }

  return result;
}

unint64_t sub_1DF61ABFC()
{
  result = qword_1ECE435A0;
  if (!qword_1ECE435A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE435A0);
  }

  return result;
}

unint64_t sub_1DF61AC54()
{
  result = qword_1ECE435A8;
  if (!qword_1ECE435A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE435A8);
  }

  return result;
}

unint64_t sub_1DF61ACAC()
{
  result = qword_1ECE435B0;
  if (!qword_1ECE435B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE435B0);
  }

  return result;
}

unint64_t sub_1DF61AD04()
{
  result = qword_1ECE435B8;
  if (!qword_1ECE435B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE435B8);
  }

  return result;
}

unint64_t sub_1DF61AD5C()
{
  result = qword_1ECE435C0;
  if (!qword_1ECE435C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE435C0);
  }

  return result;
}

unint64_t sub_1DF61ADB4()
{
  result = qword_1ECE435C8;
  if (!qword_1ECE435C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE435C8);
  }

  return result;
}

unint64_t sub_1DF61AE0C()
{
  result = qword_1ECE435D0;
  if (!qword_1ECE435D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE435D0);
  }

  return result;
}

unint64_t sub_1DF61AE64()
{
  result = qword_1ECE435D8;
  if (!qword_1ECE435D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE435D8);
  }

  return result;
}

unint64_t sub_1DF61AEBC()
{
  result = qword_1ECE435E0;
  if (!qword_1ECE435E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE435E0);
  }

  return result;
}

uint64_t sub_1DF61AF10(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E496B63656863 && a2 == 0xE700000000000000;
  if (v4 || (sub_1DF63394C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1953063287 && a2 == 0xE400000000000000 || (sub_1DF63394C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7239026 && a2 == 0xE300000000000000 || (sub_1DF63394C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7265666564 && a2 == 0xE500000000000000 || (sub_1DF63394C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65756E69746E6F63 && a2 == 0xE800000000000000 || (sub_1DF63394C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1701736292 && a2 == 0xE400000000000000 || (sub_1DF63394C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6164696C61766E69 && a2 == 0xEB00000000646574)
  {

    return 6;
  }

  else
  {
    v6 = sub_1DF63394C();

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

unint64_t sub_1DF61B158()
{
  result = qword_1ECE435E8;
  if (!qword_1ECE435E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE435E8);
  }

  return result;
}

uint64_t sub_1DF61B1B4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 24);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1DF59D2C4;

  return sub_1DF6176CC(v2, v4, v3);
}

uint64_t sub_1DF61B2B8()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1();
}

uint64_t UnsignedInteger.reversed.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36[0] = *(a1 - 8);
  v4 = *(v36[0] + 64);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = v36 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = v36 - v11;
  v14 = *(v13 + 8);
  v15 = *(v14[3] + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v19 = v36 - v18;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v40 = AssociatedTypeWitness;
  v38 = AssociatedConformanceWitness;
  sub_1DF63399C();
  v36[1] = a2;
  v39 = v19;
  v41 = v15;
  sub_1DF63392C();
  result = sub_1DF63336C();
  if (result < 0)
  {
    goto LABEL_22;
  }

  v22 = result;
  if (result)
  {
    v42 = sub_1DF5B9E58();
    v23 = 0;
    v24 = (v36[0] + 8);
    v37 = v22;
    while (1)
    {
      v43 = v23;
      sub_1DF63331C();
      sub_1DF63399C();
      sub_1DF63392C();
      sub_1DF6332FC();
      v25 = *v24;
      (*v24)(v7, a1);
      v25(v10, a1);
      if (sub_1DF63337C())
      {
        break;
      }

      v26 = sub_1DF63337C();
      v27 = sub_1DF63336C();
      if ((v26 & 1) == 0)
      {
        if (v27 >= 64)
        {
LABEL_15:
          v43 = 0;
          sub_1DF6332EC();
          v31 = *(v14[2] + 8);
          v32 = sub_1DF63292C();
          v25(v10, a1);
          result = (v25)(v12, a1);
          if (v32)
          {
            goto LABEL_4;
          }

          goto LABEL_16;
        }

        goto LABEL_13;
      }

      if (v27 > 64)
      {
        goto LABEL_15;
      }

      sub_1DF63399C();
      sub_1DF63392C();
      v28 = *(v14[4] + 8);
      v29 = sub_1DF63290C();
      v25(v10, a1);
      if (v29)
      {
        goto LABEL_13;
      }

      v25(v12, a1);
LABEL_16:
      sub_1DF63399C();
      sub_1DF63392C();
      result = sub_1DF63336C();
      v33 = result - 1;
      if (__OFSUB__(result, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        return result;
      }

      v34 = __OFSUB__(v33, v23);
      v35 = v33 - v23;
      if (v34)
      {
        goto LABEL_21;
      }

      v43 = v35;
      sub_1DF63332C();
      v25(v7, a1);
      sub_1DF63333C();
      result = (v25)(v10, a1);
LABEL_4:
      if (v37 == ++v23)
      {
        return result;
      }
    }

    if (sub_1DF63336C() >= 64)
    {
      goto LABEL_15;
    }

LABEL_13:
    v30 = sub_1DF63335C();
    result = (v25)(v12, a1);
    if (!v30)
    {
      goto LABEL_4;
    }

    goto LABEL_16;
  }

  return result;
}

int8x8_t static UInt64.interleave(x:y:)(unsigned int a1, unsigned int a2)
{
  v2 = vdupq_n_s64(a2);
  v3 = vdupq_n_s64(a1);
  v4 = vorrq_s8(vorrq_s8(vorrq_s8(vorrq_s8(vshlq_u64(vandq_s8(v2, xmmword_1DF63CD70), xmmword_1DF63CDB0), vorrq_s8(vorrq_s8(vshlq_u64(vandq_s8(v2, xmmword_1DF63CD10), xmmword_1DF63CD50), vshlq_u64(vandq_s8(v3, xmmword_1DF63CCB0), xmmword_1DF63CCD0)), vshlq_u64(vandq_s8(v3, xmmword_1DF63CD10), xmmword_1DF63CD30))), vshlq_u64(vandq_s8(v3, xmmword_1DF63CD70), xmmword_1DF63CD90)), vorrq_s8(vorrq_s8(vshlq_u64(vandq_s8(v2, xmmword_1DF63CCB0), xmmword_1DF63CCF0), vorrq_s8(vorrq_s8(vshlq_u64(vandq_s8(v2, xmmword_1DF63CC50), xmmword_1DF63CC90), vshlq_u64(vandq_s8(v3, xmmword_1DF63CBF0), xmmword_1DF63CC10)), vshlq_u64(vandq_s8(v3, xmmword_1DF63CC50), xmmword_1DF63CC70))), vorrq_s8(vorrq_s8(vshlq_u64(vandq_s8(v2, xmmword_1DF63CBF0), xmmword_1DF63CC30), vorrq_s8(vshlq_u64(vandq_s8(v2, xmmword_1DF63CB90), xmmword_1DF63CBD0), vshlq_u64(vandq_s8(v3, xmmword_1DF63CB90), xmmword_1DF63CBB0))), vorrq_s8(vorrq_s8(vshlq_u64(vandq_s8(v2, xmmword_1DF63CB30), xmmword_1DF63CB70), vshlq_u64(vandq_s8(v3, xmmword_1DF63CB30), xmmword_1DF63CB50)), vorrq_s8(vshlq_u64(vandq_s8(v2, xmmword_1DF63CAE0), xmmword_1DF63CB10), vshlq_u64(vandq_s8(v3, xmmword_1DF63CAE0), xmmword_1DF63CB00)))))), vorrq_s8(vorrq_s8(vorrq_s8(vshlq_u64(vandq_s8(v2, xmmword_1DF63CD60), xmmword_1DF63CDA0), vorrq_s8(vorrq_s8(vshlq_u64(vandq_s8(v2, xmmword_1DF63CD00), xmmword_1DF63CD40), vshlq_u64(vandq_s8(v3, xmmword_1DF63CCA0), xmmword_1DF63CCC0)), vshlq_u64(vandq_s8(v3, xmmword_1DF63CD00), xmmword_1DF63CD20))), vshlq_u64(vandq_s8(v3, xmmword_1DF63CD60), xmmword_1DF63CD80)), vorrq_s8(vorrq_s8(vshlq_u64(vandq_s8(v2, xmmword_1DF63CCA0), xmmword_1DF63CCE0), vorrq_s8(vorrq_s8(vshlq_u64(vandq_s8(v2, xmmword_1DF63CC40), xmmword_1DF63CC80), vshlq_u64(vandq_s8(v3, xmmword_1DF63CBE0), xmmword_1DF63CC00)), vshlq_u64(vandq_s8(v3, xmmword_1DF63CC40), xmmword_1DF63CC60))), vorrq_s8(vorrq_s8(vshlq_u64(vandq_s8(v2, xmmword_1DF63CBE0), xmmword_1DF63CC20), vorrq_s8(vshlq_u64(vandq_s8(v2, xmmword_1DF63CB80), xmmword_1DF63CBC0), vshlq_u64(vandq_s8(v3, xmmword_1DF63CB80), xmmword_1DF63CBA0))), vorrq_s8(vorrq_s8(vshlq_u64(vandq_s8(v2, xmmword_1DF63CB20), xmmword_1DF63CB60), vshlq_u64(vandq_s8(v3, xmmword_1DF63CB20), xmmword_1DF63CB40)), vorrq_s8(vshlq_u64(vandq_s8(v2, xmmword_1DF638990), xmmword_1DF638990), vshlq_u64(vandq_s8(v3, xmmword_1DF638990), xmmword_1DF63CAF0)))))));
  return vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL));
}

uint64_t UInt64.deinterleave.getter(uint64_t result)
{
  LODWORD(v1) = 0;
  LODWORD(v2) = 0;
  v3 = -2;
  for (i = 1; ; ++i)
  {
    v5 = ((1 << (v3 + 2)) & result) >> (i - 1);
    if (HIDWORD(v5))
    {
      break;
    }

    v6 = ((2 << (v3 + 2)) & result) >> i;
    if (HIDWORD(v6))
    {
      goto LABEL_7;
    }

    v2 = v2 | v5;
    v1 = v1 | v6;
    v3 += 2;
    if (v3 >= 0x3E)
    {
      return v2 | (v1 << 32);
    }
  }

  __break(1u);
LABEL_7:
  __break(1u);
  return result;
}

uint64_t withCancellableCheckedThrowingContinuation<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DF61BC48, 0, 0);
}

uint64_t sub_1DF61BC48()
{
  v1 = *(v0 + 40);
  v2 = type metadata accessor for ContinuationBox();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v12 = *(v0 + 24);
  v5 = sub_1DF61CC78();
  *(v0 + 48) = v5;
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = v12;
  v7 = *(MEMORY[0x1E69E88F0] + 4);
  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  *v8 = v0;
  v8[1] = sub_1DF61BD70;
  v9 = *(v0 + 40);
  v10 = *(v0 + 16);

  return MEMORY[0x1EEE6DE18](v10, &unk_1DF63CDD8, v6, sub_1DF61C590, v5, 0, 0, v9);
}

uint64_t sub_1DF61BD70()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_1DF61BEF0;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_1DF61BE8C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DF61BE8C()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1DF61BEF0()
{
  v1 = v0[6];
  v2 = v0[7];

  v3 = v0[1];
  v4 = v0[9];

  return v3();
}

uint64_t *sub_1DF61BF74()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_1DF61CC78();
}

uint64_t sub_1DF61BFA8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1DF61BFF4, 0, 0);
}

uint64_t sub_1DF61BFF4()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *(v3 + 16) = *(v0 + 24);
  *(v3 + 32) = v2;
  v4 = *(MEMORY[0x1E69E8920] + 4);
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  v6 = *(v1 + 80);
  *v5 = v0;
  v5[1] = sub_1DF609B10;
  v7 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v7, 0, 0, 0xD00000000000002ELL, 0x80000001DF635A60, sub_1DF61CE48, v3, v6);
}

uint64_t sub_1DF61C0F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DF59D2C8;

  return sub_1DF61BFA8(a1, v4, v5, v6);
}

uint64_t sub_1DF61C1A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a4;
  v7 = *(*a2 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE42B18, &qword_1DF63B240);
  v8 = sub_1DF632E4C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v22 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42C10, &qword_1DF63B260);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = v22 - v15;
  sub_1DF632F7C();
  v17 = sub_1DF632E9C();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  (*(v9 + 16))(v12, a1, v8);
  v18 = *(v9 + 80);
  v22[0] = a3;
  v19 = (v18 + 48) & ~v18;
  v20 = swift_allocObject();
  *(v20 + 2) = 0;
  *(v20 + 3) = 0;
  *(v20 + 4) = v7;
  *(v20 + 5) = a2;
  (*(v9 + 32))(&v20[v19], v12, v8);

  sub_1DF5CE7F8(0, 0, v16, &unk_1DF63CE78, v20);

  return (v22[0])(a1);
}

uint64_t sub_1DF61C404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1DF61C424, a4, 0);
}

uint64_t sub_1DF61C424()
{
  v1 = v0[2];
  sub_1DF61C6E8(v0[3]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_1DF61C484(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42C10, &qword_1DF63B260);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v9 - v4;
  v6 = sub_1DF632E9C();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = a1;

  sub_1DF5CE7F8(0, 0, v5, &unk_1DF63CE68, v7);
}

uint64_t sub_1DF61C598(uint64_t a1)
{
  v1 = *(a1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE42B18, &qword_1DF63B240);
  sub_1DF632E4C();
  result = sub_1DF63327C();
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

uint64_t sub_1DF61C688()
{
  v1 = *(v0 + 16);
  sub_1DF61C898();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1DF61C6E8(uint64_t a1)
{
  v3 = *(*v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE42B18, &qword_1DF63B240);
  v4 = sub_1DF632E4C();
  v5 = sub_1DF63327C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  v10 = *(v4 - 8);
  (*(v10 + 16))(&v13 - v8, a1, v4);
  (*(v10 + 56))(v9, 0, 1, v4);
  v11 = *(*v1 + 96);
  swift_beginAccess();
  (*(v6 + 40))(v1 + v11, v9, v5);
  return swift_endAccess();
}

uint64_t sub_1DF61C898()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(*v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE42B18, &qword_1DF63B240);
  v4 = sub_1DF632E4C();
  v5 = sub_1DF63327C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v21 - v12;
  v14 = *(v4 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v17 = v21 - v16;
  v18 = *(v2 + 96);
  swift_beginAccess();
  (*(v6 + 16))(v13, v1 + v18, v5);
  if ((*(v14 + 48))(v13, 1, v4) == 1)
  {
    return (*(v6 + 8))(v13, v5);
  }

  (*(v14 + 32))(v17, v13, v4);
  sub_1DF632E5C();
  sub_1DF61CD3C();
  v20 = swift_allocError();
  sub_1DF6327FC();
  v21[0] = v20;
  sub_1DF632E2C();
  (*(v14 + 8))(v17, v4);
  (*(v14 + 56))(v10, 1, 1, v4);
  swift_beginAccess();
  (*(v6 + 40))(v1 + v18, v10, v5);
  return swift_endAccess();
}

uint64_t sub_1DF61CB8C()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE42B18, &qword_1DF63B240);
  sub_1DF632E4C();
  v3 = sub_1DF63327C();
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1DF61CC50()
{
  v0 = sub_1DF61CB8C();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t *sub_1DF61CC78()
{
  v1 = *v0;
  swift_defaultActor_initialize();
  v2 = *(*v0 + 96);
  v3 = *(v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE42B18, &qword_1DF63B240);
  v4 = sub_1DF632E4C();
  (*(*(v4 - 8) + 56))(v0 + v2, 1, 1, v4);
  return v0;
}

unint64_t sub_1DF61CD3C()
{
  result = qword_1ED8E56F0;
  if (!qword_1ED8E56F0)
  {
    sub_1DF632E5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8E56F0);
  }

  return result;
}

uint64_t sub_1DF61CD94(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DF59D2C4;

  return sub_1DF61C668(a1, v4, v5, v6);
}

uint64_t sub_1DF61CE54(uint64_t a1)
{
  v3 = v2;
  v5 = v1[4];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE42B18, &qword_1DF63B240);
  v6 = *(sub_1DF632E4C() - 8);
  v7 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[5];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1DF59D2C8;

  return sub_1DF61C404(a1, v8, v9, v10, v1 + v7);
}

uint64_t sub_1DF61CF78(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v52 = a8;
  v9 = v8;
  v67 = a2;
  v68 = a4;
  v66 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v61 = *(AssociatedTypeWitness - 8);
  v15 = *(v61 + 64);
  v16 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v50 = &v49 - v17;
  v53 = a5;
  v51 = *(a5 - 8);
  v18 = *(v51 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v63 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v64 = &v49 - v21;
  v22 = sub_1DF63327C();
  v54 = *(v22 - 8);
  v55 = v22;
  v23 = *(v54 + 64);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v57 = &v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v49 - v27;
  v29 = *(*(a4 - 1) + 64);
  v30 = MEMORY[0x1EEE9AC00](v26);
  v56 = &v49 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v62 = *(a3 - 1);
  v33 = *(v62 + 8);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v49 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a6;
  v69 = swift_getAssociatedTypeWitness();
  v58 = *(v69 - 8);
  v36 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v38 = &v49 - v37;
  v39 = sub_1DF632C3C();
  v70 = sub_1DF63354C();
  v65 = sub_1DF63355C();
  sub_1DF63352C();
  (*(v62 + 2))(v35, v59, a3);
  v68 = v38;
  v62 = a3;
  result = sub_1DF632C1C();
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
      sub_1DF63329C();
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
      sub_1DF63353C();
      if (!--v39)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v43 = v57;
  sub_1DF63329C();
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
      sub_1DF63353C();
      sub_1DF63329C();
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

uint64_t backtrace(maxiumFrameCount:)(unint64_t isStackAllocationSafe)
{
  v7[1] = *MEMORY[0x1E69E9840];
  if ((isStackAllocationSafe & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
  }

  v1 = isStackAllocationSafe;
  if (isStackAllocationSafe >> 60)
  {
    goto LABEL_9;
  }

  if ((8 * isStackAllocationSafe) <= 1024 || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), isStackAllocationSafe))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    sub_1DF61E118((v7 - v2), v1, v7);
    result = v7[0];
  }

  else
  {
    v5 = swift_slowAlloc();
    sub_1DF61E118(v5, v1, v7);
    MEMORY[0x1E12D9D80](v5, -1, -1);
    result = v7[0];
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t Sequence<>.logRepresentation.getter(unsigned int (*a1)(char *, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1DF61CF78(sub_1DF61E504, 0, a1, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], a2, MEMORY[0x1E69E7410], a8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE425C0, &qword_1DF637D10);
  sub_1DF5BC754();
  v8 = sub_1DF6328DC();

  return v8;
}

uint64_t ImageOffset.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1DF6325AC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ImageOffset.description.getter()
{
  sub_1DF6325AC();
  sub_1DF5A9208(&unk_1ED8E4A10);
  v4 = sub_1DF6338DC();
  MEMORY[0x1E12D82E0](2016419898, 0xE400000000000000);
  v3 = *(v0 + *(type metadata accessor for ImageOffset() + 20));
  sub_1DF60E86C();
  v1 = sub_1DF632BDC();
  MEMORY[0x1E12D82E0](v1);

  return v4;
}

uint64_t sub_1DF61D9D4()
{
  if (*v0)
  {
    result = 0x74657366666FLL;
  }

  else
  {
    result = 1684632949;
  }

  *v0;
  return result;
}

uint64_t sub_1DF61DA04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1684632949 && a2 == 0xE400000000000000;
  if (v5 || (sub_1DF63394C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74657366666FLL && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DF63394C();

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

uint64_t sub_1DF61DADC(uint64_t a1)
{
  v2 = sub_1DF61E638();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF61DB18(uint64_t a1)
{
  v2 = sub_1DF61E638();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImageOffset.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43600, &qword_1DF63CE80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF61E638();
  sub_1DF633AFC();
  v13[15] = 0;
  sub_1DF6325AC();
  sub_1DF5A9208(&qword_1ECE430A0);
  sub_1DF63385C();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for ImageOffset() + 20));
    v13[14] = 1;
    sub_1DF63389C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ImageOffset.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v24 = sub_1DF6325AC();
  v22 = *(v24 - 8);
  v4 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43610, &qword_1DF63CE88);
  v23 = *(v25 - 8);
  v7 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v9 = &v20 - v8;
  v10 = type metadata accessor for ImageOffset();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF61E638();
  sub_1DF633ADC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = v13;
  v15 = v22;
  v27 = 0;
  sub_1DF5A9208(qword_1ECE430A8);
  v16 = v24;
  sub_1DF6337CC();
  v17 = v20;
  (*(v15 + 32))(v20, v6, v16);
  v26 = 1;
  v18 = sub_1DF63380C();
  (*(v23 + 8))(v9, v25);
  *(v17 + *(v10 + 20)) = v18;
  sub_1DF60E808(v17, v21);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1DF60E8C0(v17);
}

uint64_t sub_1DF61E050(uint64_t a1)
{
  sub_1DF6325AC();
  sub_1DF5A9208(&unk_1ED8E4A10);
  v6 = sub_1DF6338DC();
  MEMORY[0x1E12D82E0](2016419898, 0xE400000000000000);
  v5 = *(v1 + *(a1 + 20));
  sub_1DF60E86C();
  v3 = sub_1DF632BDC();
  MEMORY[0x1E12D82E0](v3);

  return v6;
}

uint64_t sub_1DF61E118@<X0>(void **a1@<X0>, size_t a2@<X2>, void *a3@<X8>)
{
  v40[1] = *MEMORY[0x1E69E9840];
  v7 = type metadata accessor for ImageOffset();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  result = MEMORY[0x1EEE9AC00](v7);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1E69E7CC0];
  if (!a1)
  {
    goto LABEL_19;
  }

  isStackAllocationSafe = backtrace_async(a1, a2, 0);
  if (isStackAllocationSafe < 0)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  v15 = isStackAllocationSafe;
  v38 = a3;
  v39 = v3;
  v16 = 20 * isStackAllocationSafe;
  if ((isStackAllocationSafe * 20) >> 64 != (20 * isStackAllocationSafe) >> 63)
  {
    goto LABEL_22;
  }

  if (v16 <= 1024 || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), isStackAllocationSafe))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v18 = (v37 - v17);
    if (v15 <= 0x7FFFFFFF)
    {
      backtrace_image_offsets(a1, v18, v15);
      if (v15)
      {
        v19 = sub_1DF5EF624(v15, 0);
        memcpy(v19 + 4, v18, v16);
      }

      else
      {
        v19 = MEMORY[0x1E69E7CC0];
      }

      v20 = v19[2];
      if (!v20)
      {
        goto LABEL_18;
      }

      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_21;
  }

  v33 = swift_slowAlloc();
  v34 = v39;
  sub_1DF61E44C(v33, a1, v15, v15, v40);
  v39 = v34;
  if (!v34)
  {
    MEMORY[0x1E12D9D80](v33, -1, -1);
    v19 = v40[0];
    v20 = *(v40[0] + 16);
    if (!v20)
    {
LABEL_18:

      a3 = v38;
LABEL_19:
      *a3 = v13;
      v35 = *MEMORY[0x1E69E9840];
      return result;
    }

LABEL_10:
    v40[0] = v13;
    sub_1DF5DB1B8(0, v20, 0);
    v13 = v40[0];
    v37[1] = v19;
    v21 = v19 + 6;
    do
    {
      v22 = *v21;
      v23 = *(v21 - 9);
      v24 = *(v21 - 10);
      v25 = *(v21 - 11);
      v26 = *(v21 - 12);
      v27 = *(v21 - 13);
      v28 = *(v21 - 14);
      v29 = *(v21 - 15);
      v30 = *(v21 - 16);
      v36 = *(v21 - 1);
      sub_1DF63257C();
      *&v12[*(v7 + 20)] = v22;
      v40[0] = v13;
      v32 = *(v13 + 16);
      v31 = *(v13 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_1DF5DB1B8(v31 > 1, v32 + 1, 1);
        v13 = v40[0];
      }

      v21 += 5;
      *(v13 + 16) = v32 + 1;
      sub_1DF61E840(v12, v13 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v32);
      --v20;
    }

    while (v20);
    goto LABEL_18;
  }

  result = MEMORY[0x1E12D9D80](v33, -1, -1);
  __break(1u);
  return result;
}

void sub_1DF61E44C(image_offset *image_offsets@<X0>, void **array@<X2>, uint64_t size@<X3>, uint64_t a4@<X1>, void *a5@<X8>)
{
  if (!image_offsets)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_8:
    *a5 = v8;
    return;
  }

  if (size < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (size <= 0x7FFFFFFF)
  {
    backtrace_image_offsets(array, image_offsets, size);
    if (a4)
    {
      v8 = sub_1DF5EF624(a4, 0);
      memcpy(v8 + 4, image_offsets, 20 * a4);
    }

    else
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_1DF61E504@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1DF6325AC();
  sub_1DF5A9208(&unk_1ED8E4A10);
  v7 = sub_1DF6338DC();
  v8 = v4;
  MEMORY[0x1E12D82E0](2016419898, 0xE400000000000000);
  v9 = *(a1 + *(type metadata accessor for ImageOffset() + 20));
  sub_1DF60E86C();
  v5 = sub_1DF632BDC();
  MEMORY[0x1E12D82E0](v5);

  *a2 = v7;
  a2[1] = v8;
  return result;
}

uint64_t type metadata accessor for ImageOffset()
{
  result = qword_1ED8E5BD0;
  if (!qword_1ED8E5BD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1DF61E638()
{
  result = qword_1ECE43608;
  if (!qword_1ECE43608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43608);
  }

  return result;
}

uint64_t sub_1DF61E6B4()
{
  result = sub_1DF6325AC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1DF61E73C()
{
  result = qword_1ECE43618;
  if (!qword_1ECE43618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43618);
  }

  return result;
}

unint64_t sub_1DF61E794()
{
  result = qword_1ECE43620;
  if (!qword_1ECE43620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43620);
  }

  return result;
}

unint64_t sub_1DF61E7EC()
{
  result = qword_1ECE43628;
  if (!qword_1ECE43628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43628);
  }

  return result;
}

uint64_t sub_1DF61E840(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageOffset();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t AirTagVersionNumber.description.getter()
{
  v1 = v0[1];
  v2 = *(v0 + 1);
  v6 = *v0;
  v7 = sub_1DF6338DC();
  MEMORY[0x1E12D82E0](46, 0xE100000000000000);
  v3 = sub_1DF6338DC();
  MEMORY[0x1E12D82E0](v3);

  MEMORY[0x1E12D82E0](46, 0xE100000000000000);
  v4 = sub_1DF6338DC();
  MEMORY[0x1E12D82E0](v4);

  return v7;
}

uint64_t AirTagVersionNumber.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 1);
  v4 = AirTagVersionNumber.description.getter();
  v5 = v3 | (v1 << 24) | (v2 << 16);
  v6 = sub_1DF5B88EC(v5, 0x4000000000000uLL);
  v8 = v7;
  sub_1DF5B33C0(v5, 0x4000000000000uLL);
  MEMORY[0x1E12D82E0](v6, v8);

  MEMORY[0x1E12D82E0](0x756C615677617220, 0xEA00000000002065);

  return v4;
}

unint64_t AirTagVersionNumber.dataRepresentation.getter()
{
  v1 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return *(v0 + 1) | (*v0 << 24) | (v0[1] << 16);
}

uint64_t AirTagVersionNumber.init(stringLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{

  AirTagVersionNumber.init(string:)(a1, a2, v8);
  if ((v8[0] & 0x100000000) != 0)
  {
    v8[0] = 0;
    v8[1] = 0xE000000000000000;
    sub_1DF63347C();
    MEMORY[0x1E12D82E0](0xD00000000000003BLL, 0x80000001DF635AC0);
    MEMORY[0x1E12D82E0](a1, a2);
    MEMORY[0x1E12D82E0](93, 0xE100000000000000);
    result = sub_1DF6336EC();
    __break(1u);
  }

  else
  {
    v6 = v8[0];

    *a3 = v6;
  }

  return result;
}

uint64_t AirTagVersionNumber.init(string:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a1;
  v34 = a2;
  sub_1DF5BC6B8();
  v4 = sub_1DF6332BC();

  v6 = v4[2];
  if ((v6 & 0x7FFFFFFFFFFFFFFELL) != 2 || ((v7 = v4[4], v8 = v4[5], v9 = HIBYTE(v8) & 0xF, v10 = v7 & 0xFFFFFFFFFFFFLL, (v8 & 0x2000000000000000) != 0) ? (v11 = HIBYTE(v8) & 0xF) : (v11 = v7 & 0xFFFFFFFFFFFFLL), !v11))
  {
LABEL_73:

    goto LABEL_74;
  }

  if ((v8 & 0x1000000000000000) != 0)
  {
    v32 = v4[5];

    LOWORD(v7) = sub_1DF620C08(v7, v8, 10);

    if ((v7 & 0x100) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_73;
  }

  if ((v8 & 0x2000000000000000) != 0)
  {
    v33 = v4[4];
    v34 = v8 & 0xFFFFFFFFFFFFFFLL;
    if (v7 == 43)
    {
      if (v9)
      {
        if (--v9)
        {
          LOBYTE(v7) = 0;
          v19 = &v33 + 1;
          while (1)
          {
            v20 = *v19 - 48;
            if (v20 > 9)
            {
              break;
            }

            if (((10 * v7) & 0xF00) != 0)
            {
              break;
            }

            LODWORD(v7) = (10 * v7) + v20;
            if ((v7 >> 8))
            {
              break;
            }

            ++v19;
            if (!--v9)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_62;
      }
    }

    else
    {
      if (v7 != 45)
      {
        if (v9)
        {
          LOBYTE(v7) = 0;
          v22 = &v33;
          while (1)
          {
            v23 = *v22 - 48;
            if (v23 > 9)
            {
              break;
            }

            if (((10 * v7) & 0xF00) != 0)
            {
              break;
            }

            LODWORD(v7) = (10 * v7) + v23;
            if ((v7 >> 8))
            {
              break;
            }

            ++v22;
            if (!--v9)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_62;
      }

      if (v9)
      {
        if (--v9)
        {
          LOBYTE(v7) = 0;
          v15 = &v33 + 1;
          while (1)
          {
            v16 = *v15 - 48;
            if (v16 > 9)
            {
              break;
            }

            if (((10 * v7) & 0xF00) != 0)
            {
              break;
            }

            LODWORD(v7) = (10 * v7) - v16;
            if ((v7 & 0xFFFFFF00) != 0)
            {
              break;
            }

            ++v15;
            if (!--v9)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_62;
      }

LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
    }

    __break(1u);
LABEL_82:
    __break(1u);
    return result;
  }

  if ((v7 & 0x1000000000000000) == 0)
  {
    goto LABEL_77;
  }

  for (result = (v8 & 0xFFFFFFFFFFFFFFFLL) + 32; ; result = sub_1DF63350C())
  {
    v12 = *result;
    if (v12 == 43)
    {
      if (v10 < 1)
      {
        goto LABEL_80;
      }

      v9 = v10 - 1;
      if (v10 != 1)
      {
        LOBYTE(v7) = 0;
        if (!result)
        {
          goto LABEL_54;
        }

        v17 = (result + 1);
        while (1)
        {
          v18 = *v17 - 48;
          if (v18 > 9)
          {
            break;
          }

          if (((10 * v7) & 0xF00) != 0)
          {
            break;
          }

          LODWORD(v7) = (10 * v7) + v18;
          if ((v7 >> 8))
          {
            break;
          }

          ++v17;
          if (!--v9)
          {
            goto LABEL_63;
          }
        }
      }
    }

    else if (v12 == 45)
    {
      if (v10 < 1)
      {
        __break(1u);
        goto LABEL_79;
      }

      v9 = v10 - 1;
      if (v10 != 1)
      {
        LOBYTE(v7) = 0;
        if (!result)
        {
          goto LABEL_54;
        }

        v13 = (result + 1);
        while (1)
        {
          v14 = *v13 - 48;
          if (v14 > 9)
          {
            break;
          }

          if (((10 * v7) & 0xF00) != 0)
          {
            break;
          }

          LODWORD(v7) = (10 * v7) - v14;
          if ((v7 & 0xFFFFFF00) != 0)
          {
            break;
          }

          ++v13;
          if (!--v9)
          {
            goto LABEL_63;
          }
        }
      }
    }

    else if (v10)
    {
      LOBYTE(v7) = 0;
      if (!result)
      {
LABEL_54:
        LOBYTE(v9) = 0;
        goto LABEL_63;
      }

      while (1)
      {
        v21 = *result - 48;
        if (v21 > 9)
        {
          break;
        }

        if (((10 * v7) & 0xF00) != 0)
        {
          break;
        }

        LODWORD(v7) = (10 * v7) + v21;
        if ((v7 >> 8))
        {
          break;
        }

        ++result;
        if (!--v10)
        {
          goto LABEL_54;
        }
      }
    }

LABEL_62:
    LOBYTE(v7) = 0;
    LOBYTE(v9) = 1;
LABEL_63:
    if (v9)
    {
      goto LABEL_73;
    }

LABEL_64:
    if (v4[2] >= 2uLL)
    {
      break;
    }

    __break(1u);
LABEL_77:
    ;
  }

  v24 = v4[6];
  v25 = v4[7];

  result = sub_1DF61F1D0(v24, v25);
  if ((result & 0x100) != 0)
  {
    goto LABEL_73;
  }

  v26 = result;
  if (v6 != 3)
  {

    v29 = 0;
    goto LABEL_71;
  }

  if (v4[2] < 3uLL)
  {
    goto LABEL_82;
  }

  v27 = v4[8];
  v28 = v4[9];

  result = sub_1DF61F4E8(v27, v28);
  if ((result & 0x10000) == 0)
  {
    v29 = result << 16;
LABEL_71:
    v30 = 0;
    v31 = v29 | (v7 | (v26 << 8));
    goto LABEL_75;
  }

LABEL_74:
  v31 = 0;
  v30 = 1;
LABEL_75:
  *a3 = v31;
  *(a3 + 4) = v30;
  return result;
}

uint64_t AirTagVersionNumber.init(major:minor:revision:)@<X0>(uint64_t result@<X0>, char a2@<W1>, __int16 a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 1) = a2;
  *(a4 + 2) = a3;
  return result;
}

uint64_t AirTagVersionNumber.init(data:)@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_11;
    }

    v6 = *(result + 16);
    v5 = *(result + 24);
    v7 = __OFSUB__(v5, v6);
    v8 = v5 - v6;
    if (!v7)
    {
      if (v8 == 4)
      {
        goto LABEL_8;
      }

LABEL_11:
      result = sub_1DF5B33C0(result, a2);
      v22 = 0;
      v21 = 1;
      goto LABEL_12;
    }

    __break(1u);
  }

  else
  {
    if (!v4)
    {
      if (BYTE6(a2) != 4)
      {
        goto LABEL_11;
      }

LABEL_8:
      v9 = result;
      v11 = sub_1DF63241C();
      v13 = v12;
      v14 = sub_1DF63241C();
      v16 = v15;
      v17 = sub_1DF63241C();
      v19 = v18;
      v25 = sub_1DF63238C();
      v24 = sub_1DF63238C();
      v23 = sub_1DF63238C();
      v20 = sub_1DF63238C();
      sub_1DF5B33C0(v17, v19);
      sub_1DF5B33C0(v14, v16);
      sub_1DF5B33C0(v11, v13);
      result = sub_1DF5B33C0(v9, a2);
      v21 = 0;
      v22 = (v23 << 24) | (v20 << 16) | v25 | (v24 << 8);
LABEL_12:
      *a3 = v22;
      *(a3 + 4) = v21;
      return result;
    }

    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result == 4)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DF61F1D0(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    v19 = 0;
    LOBYTE(v18) = 1;
    return v19 | ((v18 & 1) << 8);
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v6 = sub_1DF620C08(result, a2, 10);

    v18 = (v6 >> 8) & 1;
LABEL_63:
    if (v18)
    {
      v19 = 0;
    }

    else
    {
      v19 = v6;
    }

    return v19 | ((v18 & 1) << 8);
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_1DF63350C();
      v3 = v20;
    }

    v5 = *result;
    if (v5 == 43)
    {
      if (v3 >= 1)
      {
        if (--v3)
        {
          LOBYTE(v6) = 0;
          if (result)
          {
            v11 = (result + 1);
            while (1)
            {
              v12 = *v11 - 48;
              if (v12 > 9)
              {
                goto LABEL_61;
              }

              if (((10 * v6) & 0xF00) != 0)
              {
                goto LABEL_61;
              }

              v6 = (10 * v6) + v12;
              if ((v6 >> 8))
              {
                goto LABEL_61;
              }

              ++v11;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

        goto LABEL_61;
      }

      goto LABEL_72;
    }

    if (v5 != 45)
    {
      if (v3)
      {
        LOBYTE(v6) = 0;
        if (result)
        {
          while (1)
          {
            v15 = *result - 48;
            if (v15 > 9)
            {
              goto LABEL_61;
            }

            if (((10 * v6) & 0xF00) != 0)
            {
              goto LABEL_61;
            }

            v6 = (10 * v6) + v15;
            if ((v6 >> 8))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_60;
      }

LABEL_61:
      LOBYTE(v6) = 0;
      LOBYTE(v3) = 1;
      goto LABEL_62;
    }

    if (v3 >= 1)
    {
      if (--v3)
      {
        LOBYTE(v6) = 0;
        if (result)
        {
          v7 = (result + 1);
          while (1)
          {
            v8 = *v7 - 48;
            if (v8 > 9)
            {
              goto LABEL_61;
            }

            if (((10 * v6) & 0xF00) != 0)
            {
              goto LABEL_61;
            }

            v6 = (10 * v6) - v8;
            if ((v6 & 0xFFFFFF00) != 0)
            {
              goto LABEL_61;
            }

            ++v7;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_60:
        LOBYTE(v3) = 0;
LABEL_62:
        v22 = v3;
        LOBYTE(v18) = v3;

        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v21[0] = result;
  v21[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v2)
      {
        LOBYTE(v6) = 0;
        v16 = v21;
        while (1)
        {
          v17 = *v16 - 48;
          if (v17 > 9)
          {
            break;
          }

          if (((10 * v6) & 0xF00) != 0)
          {
            break;
          }

          v6 = (10 * v6) + v17;
          if ((v6 >> 8))
          {
            break;
          }

          ++v16;
          if (!--v2)
          {
            goto LABEL_60;
          }
        }
      }

      goto LABEL_61;
    }

    if (v2)
    {
      v3 = v2 - 1;
      if (v2 != 1)
      {
        LOBYTE(v6) = 0;
        v9 = v21 + 1;
        while (1)
        {
          v10 = *v9 - 48;
          if (v10 > 9)
          {
            break;
          }

          if (((10 * v6) & 0xF00) != 0)
          {
            break;
          }

          v6 = (10 * v6) - v10;
          if ((v6 & 0xFFFFFF00) != 0)
          {
            break;
          }

          ++v9;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_71;
  }

  if (v2)
  {
    v3 = v2 - 1;
    if (v2 != 1)
    {
      LOBYTE(v6) = 0;
      v13 = v21 + 1;
      while (1)
      {
        v14 = *v13 - 48;
        if (v14 > 9)
        {
          break;
        }

        if (((10 * v6) & 0xF00) != 0)
        {
          break;
        }

        v6 = (10 * v6) + v14;
        if ((v6 >> 8))
        {
          break;
        }

        ++v13;
        if (!--v3)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_73:
  __break(1u);
  return result;
}

uint64_t sub_1DF61F4E8(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    v19 = 0;
    LOBYTE(v18) = 1;
    return v19 & 0xFFFEFFFF | ((v18 & 1) << 16);
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v6 = sub_1DF620634(result, a2, 10);

    v18 = HIWORD(v6) & 1;
LABEL_63:
    if (v18)
    {
      v19 = 0;
    }

    else
    {
      v19 = v6;
    }

    return v19 & 0xFFFEFFFF | ((v18 & 1) << 16);
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_1DF63350C();
      v3 = v20;
    }

    v5 = *result;
    if (v5 == 43)
    {
      if (v3 >= 1)
      {
        if (--v3)
        {
          LOWORD(v6) = 0;
          if (result)
          {
            v11 = (result + 1);
            while (1)
            {
              v12 = *v11 - 48;
              if (v12 > 9)
              {
                goto LABEL_61;
              }

              if (((10 * v6) & 0xF0000) != 0)
              {
                goto LABEL_61;
              }

              v6 = (10 * v6) + v12;
              if ((v6 & 0x10000) != 0)
              {
                goto LABEL_61;
              }

              ++v11;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

        goto LABEL_61;
      }

      goto LABEL_72;
    }

    if (v5 != 45)
    {
      if (v3)
      {
        LOWORD(v6) = 0;
        if (result)
        {
          while (1)
          {
            v15 = *result - 48;
            if (v15 > 9)
            {
              goto LABEL_61;
            }

            if (((10 * v6) & 0xF0000) != 0)
            {
              goto LABEL_61;
            }

            v6 = (10 * v6) + v15;
            if ((v6 & 0x10000) != 0)
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_60;
      }

LABEL_61:
      LOWORD(v6) = 0;
      LOBYTE(v3) = 1;
      goto LABEL_62;
    }

    if (v3 >= 1)
    {
      if (--v3)
      {
        LOWORD(v6) = 0;
        if (result)
        {
          v7 = (result + 1);
          while (1)
          {
            v8 = *v7 - 48;
            if (v8 > 9)
            {
              goto LABEL_61;
            }

            if (((10 * v6) & 0xF0000) != 0)
            {
              goto LABEL_61;
            }

            v6 = (10 * v6) - v8;
            if ((v6 & 0xFFFF0000) != 0)
            {
              goto LABEL_61;
            }

            ++v7;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_60:
        LOBYTE(v3) = 0;
LABEL_62:
        v22 = v3;
        LOBYTE(v18) = v3;

        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v21[0] = result;
  v21[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v2)
      {
        LOWORD(v6) = 0;
        v16 = v21;
        while (1)
        {
          v17 = *v16 - 48;
          if (v17 > 9)
          {
            break;
          }

          if (((10 * v6) & 0xF0000) != 0)
          {
            break;
          }

          v6 = (10 * v6) + v17;
          if ((v6 & 0x10000) != 0)
          {
            break;
          }

          ++v16;
          if (!--v2)
          {
            goto LABEL_60;
          }
        }
      }

      goto LABEL_61;
    }

    if (v2)
    {
      v3 = v2 - 1;
      if (v2 != 1)
      {
        LOWORD(v6) = 0;
        v9 = v21 + 1;
        while (1)
        {
          v10 = *v9 - 48;
          if (v10 > 9)
          {
            break;
          }

          if (((10 * v6) & 0xF0000) != 0)
          {
            break;
          }

          v6 = (10 * v6) - v10;
          if ((v6 & 0xFFFF0000) != 0)
          {
            break;
          }

          ++v9;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_71;
  }

  if (v2)
  {
    v3 = v2 - 1;
    if (v2 != 1)
    {
      LOWORD(v6) = 0;
      v13 = v21 + 1;
      while (1)
      {
        v14 = *v13 - 48;
        if (v14 > 9)
        {
          break;
        }

        if (((10 * v6) & 0xF0000) != 0)
        {
          break;
        }

        v6 = (10 * v6) + v14;
        if ((v6 & 0x10000) != 0)
        {
          break;
        }

        ++v13;
        if (!--v3)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_73:
  __break(1u);
  return result;
}

uint64_t sub_1DF61F838()
{
  v1 = 0x726F6E696DLL;
  if (*v0 != 1)
  {
    v1 = 0x6E6F697369766572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x726F6A616DLL;
  }
}

uint64_t sub_1DF61F88C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DF6214BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DF61F8C0(uint64_t a1)
{
  v2 = sub_1DF621230();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF61F8FC(uint64_t a1)
{
  v2 = sub_1DF621230();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AirTagVersionNumber.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43630, &qword_1DF63D050);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v12 - v7;
  v12[6] = v1[1];
  v12[3] = *(v1 + 1);
  v9 = a1[4];
  v10 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF621230();
  sub_1DF633AFC();
  v15 = 0;
  sub_1DF63387C();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v14 = 1;
  sub_1DF63387C();
  v13 = 2;
  sub_1DF63388C();
  return (*(v5 + 8))(v8, v4);
}

uint64_t AirTagVersionNumber.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 1);
  sub_1DF633A8C();
  sub_1DF633A8C();
  return sub_1DF633A9C();
}

uint64_t AirTagVersionNumber.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 1);
  sub_1DF633A6C();
  sub_1DF633A8C();
  sub_1DF633A8C();
  sub_1DF633A9C();
  return sub_1DF633AAC();
}

uint64_t AirTagVersionNumber.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE43640, &qword_1DF63D058);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF621230();
  sub_1DF633ADC();
  if (!v2)
  {
    v18 = 0;
    v11 = sub_1DF6337EC();
    v17 = 1;
    v15 = sub_1DF6337EC();
    v16 = 2;
    v13 = sub_1DF6337FC();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 1) = v15;
    *(a2 + 2) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1DF61FDB0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v3 < v2)
  {
    return 0;
  }

  if (v2 < v3)
  {
    return 1;
  }

  v5 = a1[1];
  v6 = a2[1];
  v8 = v5 < v6 || *(a2 + 1) >= *(a1 + 1);
  return v6 >= v5 && v8;
}

uint64_t sub_1DF61FE08(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 < v3)
  {
    return 0;
  }

  if (v3 < v2)
  {
    return 1;
  }

  v5 = a1[1];
  v6 = a2[1];
  v8 = v6 < v5 || *(a1 + 1) >= *(a2 + 1);
  return v5 >= v6 && v8;
}

uint64_t sub_1DF61FE60(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v3 < v2)
  {
    return 1;
  }

  v5 = a1[1];
  v6 = a2[1];
  v8 = v5 >= v6 && *(a2 + 1) < *(a1 + 1);
  v9 = v6 < v5 || v8;
  if (v2 < v3)
  {
    return 0;
  }

  else
  {
    return v9;
  }
}

uint64_t sub_1DF61FEC4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 1);
  sub_1DF633A6C();
  sub_1DF633A8C();
  sub_1DF633A8C();
  sub_1DF633A9C();
  return sub_1DF633AAC();
}

uint64_t sub_1DF61FF34()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 1);
  sub_1DF633A8C();
  sub_1DF633A8C();
  return sub_1DF633A9C();
}

uint64_t sub_1DF61FF80()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 1);
  sub_1DF633A6C();
  sub_1DF633A8C();
  sub_1DF633A8C();
  sub_1DF633A9C();
  return sub_1DF633AAC();
}

uint64_t sub_1DF620024@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];

  AirTagVersionNumber.init(string:)(v4, v3, v7);
  if ((v7[0] & 0x100000000) != 0)
  {
    v7[0] = 0;
    v7[1] = 0xE000000000000000;
    sub_1DF63347C();
    MEMORY[0x1E12D82E0](0xD00000000000003BLL, 0x80000001DF635AC0);
    MEMORY[0x1E12D82E0](v4, v3);
    MEMORY[0x1E12D82E0](93, 0xE100000000000000);
    result = sub_1DF6336EC();
    __break(1u);
  }

  else
  {
    v5 = v7[0];

    *a2 = v5;
  }

  return result;
}

void AirTagVersionNumber.upNextMajor.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v2 + 1;
  if (((v2 + 1) & 0x100) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v4 = v1[1];
  v5 = *(v1 + 1);
  if (v2 < v3)
  {
LABEL_5:
    *a1 = v2;
    *(a1 + 1) = v4;
    *(a1 + 2) = v5;
    *(a1 + 4) = v3;
    *(a1 + 5) = 0;
    *(a1 + 6) = 0;
    return;
  }

  if (v1[1])
  {
    goto LABEL_7;
  }

  if (!*(v1 + 1))
  {
    goto LABEL_5;
  }

LABEL_8:
  __break(1u);
}

void sub_1DF62017C(uint64_t a1@<X8>)
{
  v2 = v1[1];
  v3 = v2 + 1;
  if (((v2 + 1) & 0x100) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 1);
    if (v2 < v3 || v4 == 0)
    {
      v6 = *v1;
      *a1 = *v1;
      *(a1 + 1) = v2;
      *(a1 + 2) = v4;
      *(a1 + 4) = v6;
      *(a1 + 5) = v3;
      *(a1 + 6) = 0;
      return;
    }
  }

  __break(1u);
}

uint64_t sub_1DF6201C0()
{
  v0 = sub_1DF632C0C();
  v4 = sub_1DF620240(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1DF620240(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1DF632ABC();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_1DF63328C();
  if (!v9)
  {
    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_1DF5A8128(v9, 0);
  v12 = sub_1DF620398(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_1DF632ABC();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_1DF63350C();
LABEL_4:

  return sub_1DF632ABC();
}

unint64_t sub_1DF620398(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_1DF6205B8(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1DF632B6C();
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
          result = sub_1DF63350C();
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

    result = sub_1DF6205B8(v12, a6, a7);
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

    result = sub_1DF632B4C();
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

uint64_t sub_1DF6205B8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1DF632B9C();
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
    v5 = MEMORY[0x1E12D8320](15, a1 >> 16);
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

unsigned __int8 *sub_1DF620634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v63 = a1;
  v64 = a2;

  result = sub_1DF632BFC();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1DF6201C0();
    v36 = v35;

    v5 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1DF63350C();
      v7 = v62;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v20 = v7 - 1;
        if (v20)
        {
          v21 = a3 + 48;
          v22 = a3 + 55;
          v23 = a3 + 87;
          if (a3 > 10)
          {
            v21 = 58;
          }

          else
          {
            v23 = 97;
            v22 = 65;
          }

          if (result)
          {
            LOWORD(v13) = 0;
            v24 = result + 1;
            v15 = 1;
            do
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v21)
              {
                if (v25 < 0x41 || v25 >= v22)
                {
                  v18 = 0;
                  if (v25 < 0x61 || v25 >= v23)
                  {
                    goto LABEL_127;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v13 * a3;
              if ((v27 & 0xFFFF0000) != 0)
              {
                goto LABEL_126;
              }

              v13 = v27 + (v25 + v26);
              if ((v13 & 0x10000) != 0)
              {
                goto LABEL_126;
              }

              ++v24;
              --v20;
            }

            while (v20);
LABEL_46:
            v15 = 0;
            v18 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        v15 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (result)
        {
          LOWORD(v31) = 0;
          v15 = 1;
          do
          {
            v32 = *result;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                v18 = 0;
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_127;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v34 & 0xFFFF0000) != 0)
            {
              goto LABEL_126;
            }

            v31 = v34 + (v32 + v33);
            if ((v31 & 0x10000) != 0)
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v15 = 0;
          v18 = v31;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          LOWORD(v13) = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if ((v19 & 0xFFFF0000) != 0)
            {
              goto LABEL_126;
            }

            v13 = v19 - (v16 + v17);
            if ((v13 & 0xFFFF0000) != 0)
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
        v15 = 0;
LABEL_127:

        return (v18 | (v15 << 16));
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v37 = HIBYTE(v5) & 0xF;
  v63 = v6;
  v64 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        LOWORD(v39) = 0;
        v55 = a3 + 48;
        v56 = a3 + 55;
        v57 = a3 + 87;
        if (a3 > 10)
        {
          v55 = 58;
        }

        else
        {
          v57 = 97;
          v56 = 65;
        }

        v58 = &v63;
        v15 = 1;
        while (1)
        {
          v59 = *v58;
          if (v59 < 0x30 || v59 >= v55)
          {
            if (v59 < 0x41 || v59 >= v56)
            {
              v18 = 0;
              if (v59 < 0x61 || v59 >= v57)
              {
                goto LABEL_127;
              }

              v60 = -87;
            }

            else
            {
              v60 = -55;
            }
          }

          else
          {
            v60 = -48;
          }

          v61 = v39 * a3;
          if ((v61 & 0xFFFF0000) != 0)
          {
            goto LABEL_126;
          }

          v39 = v61 + (v59 + v60);
          if ((v39 & 0x10000) != 0)
          {
            goto LABEL_126;
          }

          v58 = (v58 + 1);
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        LOWORD(v39) = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v63 + 1;
        v15 = 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              v18 = 0;
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_127;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v46 & 0xFFFF0000) != 0)
          {
            goto LABEL_126;
          }

          v39 = v46 - (v44 + v45);
          if ((v39 & 0xFFFF0000) != 0)
          {
            goto LABEL_126;
          }

          ++v43;
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      LOWORD(v39) = 0;
      v48 = a3 + 48;
      v49 = a3 + 55;
      v50 = a3 + 87;
      if (a3 > 10)
      {
        v48 = 58;
      }

      else
      {
        v50 = 97;
        v49 = 65;
      }

      v51 = &v63 + 1;
      v15 = 1;
      do
      {
        v52 = *v51;
        if (v52 < 0x30 || v52 >= v48)
        {
          if (v52 < 0x41 || v52 >= v49)
          {
            v18 = 0;
            if (v52 < 0x61 || v52 >= v50)
            {
              goto LABEL_127;
            }

            v53 = -87;
          }

          else
          {
            v53 = -55;
          }
        }

        else
        {
          v53 = -48;
        }

        v54 = v39 * a3;
        if ((v54 & 0xFFFF0000) != 0)
        {
          goto LABEL_126;
        }

        v39 = v54 + (v52 + v53);
        if ((v39 & 0x10000) != 0)
        {
          goto LABEL_126;
        }

        ++v51;
        --v47;
      }

      while (v47);
LABEL_125:
      v15 = 0;
      v18 = v39;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unsigned __int8 *sub_1DF620C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v63 = a1;
  v64 = a2;

  result = sub_1DF632BFC();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1DF6201C0();
    v36 = v35;

    v5 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1DF63350C();
      v7 = v62;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v20 = v7 - 1;
        if (v20)
        {
          v21 = a3 + 48;
          v22 = a3 + 55;
          v23 = a3 + 87;
          if (a3 > 10)
          {
            v21 = 58;
          }

          else
          {
            v23 = 97;
            v22 = 65;
          }

          if (result)
          {
            LOBYTE(v13) = 0;
            v24 = result + 1;
            v15 = 1;
            do
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v21)
              {
                if (v25 < 0x41 || v25 >= v22)
                {
                  v18 = 0;
                  if (v25 < 0x61 || v25 >= v23)
                  {
                    goto LABEL_127;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v13 * a3;
              if ((v27 & 0xFF00) != 0)
              {
                goto LABEL_126;
              }

              v13 = v27 + (v25 + v26);
              if ((v13 >> 8))
              {
                goto LABEL_126;
              }

              ++v24;
              --v20;
            }

            while (v20);
LABEL_46:
            v15 = 0;
            v18 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        v15 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (result)
        {
          LOBYTE(v31) = 0;
          v15 = 1;
          do
          {
            v32 = *result;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                v18 = 0;
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_127;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v34 & 0xFF00) != 0)
            {
              goto LABEL_126;
            }

            v31 = v34 + (v32 + v33);
            if ((v31 >> 8))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v15 = 0;
          v18 = v31;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          LOBYTE(v13) = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if ((v19 & 0xFF00) != 0)
            {
              goto LABEL_126;
            }

            v13 = v19 - (v16 + v17);
            if ((v13 & 0xFFFFFF00) != 0)
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
        v15 = 0;
LABEL_127:

        return (v18 | (v15 << 8));
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v37 = HIBYTE(v5) & 0xF;
  v63 = v6;
  v64 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        LOBYTE(v39) = 0;
        v55 = a3 + 48;
        v56 = a3 + 55;
        v57 = a3 + 87;
        if (a3 > 10)
        {
          v55 = 58;
        }

        else
        {
          v57 = 97;
          v56 = 65;
        }

        v58 = &v63;
        v15 = 1;
        while (1)
        {
          v59 = *v58;
          if (v59 < 0x30 || v59 >= v55)
          {
            if (v59 < 0x41 || v59 >= v56)
            {
              v18 = 0;
              if (v59 < 0x61 || v59 >= v57)
              {
                goto LABEL_127;
              }

              v60 = -87;
            }

            else
            {
              v60 = -55;
            }
          }

          else
          {
            v60 = -48;
          }

          v61 = v39 * a3;
          if ((v61 & 0xFF00) != 0)
          {
            goto LABEL_126;
          }

          v39 = v61 + (v59 + v60);
          if ((v39 >> 8))
          {
            goto LABEL_126;
          }

          v58 = (v58 + 1);
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        LOBYTE(v39) = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v63 + 1;
        v15 = 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              v18 = 0;
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_127;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v46 & 0xFF00) != 0)
          {
            goto LABEL_126;
          }

          v39 = v46 - (v44 + v45);
          if ((v39 & 0xFFFFFF00) != 0)
          {
            goto LABEL_126;
          }

          ++v43;
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      LOBYTE(v39) = 0;
      v48 = a3 + 48;
      v49 = a3 + 55;
      v50 = a3 + 87;
      if (a3 > 10)
      {
        v48 = 58;
      }

      else
      {
        v50 = 97;
        v49 = 65;
      }

      v51 = &v63 + 1;
      v15 = 1;
      do
      {
        v52 = *v51;
        if (v52 < 0x30 || v52 >= v48)
        {
          if (v52 < 0x41 || v52 >= v49)
          {
            v18 = 0;
            if (v52 < 0x61 || v52 >= v50)
            {
              goto LABEL_127;
            }

            v53 = -87;
          }

          else
          {
            v53 = -55;
          }
        }

        else
        {
          v53 = -48;
        }

        v54 = v39 * a3;
        if ((v54 & 0xFF00) != 0)
        {
          goto LABEL_126;
        }

        v39 = v54 + (v52 + v53);
        if ((v39 >> 8))
        {
          goto LABEL_126;
        }

        ++v51;
        --v47;
      }

      while (v47);
LABEL_125:
      v15 = 0;
      v18 = v39;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t _s10FindMyBase19AirTagVersionNumberV1loiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 < v3)
  {
    return 1;
  }

  v5 = a1[1];
  v6 = a2[1];
  v8 = v6 >= v5 && *(a1 + 1) < *(a2 + 1);
  v9 = v5 < v6 || v8;
  if (v3 >= v2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1DF621230()
{
  result = qword_1ECE43638;
  if (!qword_1ECE43638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43638);
  }

  return result;
}

unint64_t sub_1DF621284()
{
  result = qword_1ECE43648;
  if (!qword_1ECE43648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43648);
  }

  return result;
}

unint64_t sub_1DF6212DC()
{
  result = qword_1ECE43650;
  if (!qword_1ECE43650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43650);
  }

  return result;
}

unint64_t sub_1DF621334()
{
  result = qword_1ECE43658;
  if (!qword_1ECE43658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43658);
  }

  return result;
}

unint64_t sub_1DF6213B8()
{
  result = qword_1ECE43660;
  if (!qword_1ECE43660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43660);
  }

  return result;
}

unint64_t sub_1DF621410()
{
  result = qword_1ECE43668;
  if (!qword_1ECE43668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43668);
  }

  return result;
}

unint64_t sub_1DF621468()
{
  result = qword_1ECE43670;
  if (!qword_1ECE43670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43670);
  }

  return result;
}

uint64_t sub_1DF6214BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F6A616DLL && a2 == 0xE500000000000000;
  if (v4 || (sub_1DF63394C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F6E696DLL && a2 == 0xE500000000000000 || (sub_1DF63394C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F697369766572 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DF63394C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t TokenBucket.__allocating_init(fillRate:capacity:initialAllocation:)(double a1, double a2, double a3)
{
  v6 = swift_allocObject();
  TokenBucket.init(fillRate:capacity:initialAllocation:)(a1, a2, a3);
  return v6;
}

uint64_t *TokenBucket.init(fillRate:capacity:initialAllocation:)(double a1, double a2, double a3)
{
  v7 = 0xD000000000000015;
  v8 = *v3;
  v9 = sub_1DF63252C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE42A80, qword_1DF638E00);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  v3[2] = v14;
  *(v3 + 7) = 0u;
  *(v3 + 9) = 0u;
  *(v3 + 11) = 0u;
  *(v3 + 13) = 0u;
  if (a1 <= 0.0)
  {
    v16 = "fillRate must be > 0.";
LABEL_7:
    v15 = v16 - 32;
    goto LABEL_8;
  }

  if (a2 <= 0.0)
  {
    v16 = "capacity must be > 0.";
    goto LABEL_7;
  }

  if (a3 >= 0.0)
  {
    if (a3 <= a2)
    {
      *(v3 + 4) = a2;
      *(v3 + 5) = a3;
      *(v3 + 3) = a1;
      sub_1DF63250C();
      sub_1DF63244C();
      v22 = v21;
      v23 = *(v10 + 8);
      v23(v13, v9);
      v3[13] = v22;
      sub_1DF63245C();
      sub_1DF63244C();
      v25 = v24;
      v23(v13, v9);
      v3[6] = v25;
      return v3;
    }

    v15 = "initialAllocation must be >= 0.";
    v7 = 0xD000000000000027;
  }

  else
  {
    v15 = "capacity must be > 0.";
    v7 = 0xD00000000000001FLL;
  }

LABEL_8:
  v17 = v15 | 0x8000000000000000;
  sub_1DF621898();
  swift_allocError();
  *v18 = v7;
  v18[1] = v17;
  swift_willThrow();
  v19 = v3[2];

  swift_deallocPartialClassInstance();
  return v3;
}

unint64_t sub_1DF621898()
{
  result = qword_1ECE43678;
  if (!qword_1ECE43678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE43678);
  }

  return result;
}

Swift::Bool __swiftcall TokenBucket.operationAllowed(cost:)(Swift::Double cost)
{
  if (cost < 1.0)
  {
    return 0;
  }

  v3 = *(v1 + 16);
  (MEMORY[0x1EEE9AC00])();
  MEMORY[0x1EEE9AC00](v4);
  os_unfair_lock_lock(v3 + 4);
  sub_1DF5A4B88(&v5);
  os_unfair_lock_unlock(v3 + 4);
  return v5;
}

uint64_t sub_1DF6219B4@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  sub_1DF621A0C();
  result = sub_1DF621B28(v4);
  *a1 = result & 1;
  return result;
}

uint64_t sub_1DF621A0C()
{
  v1 = v0;
  v2 = sub_1DF63252C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF63251C();
  sub_1DF63244C();
  v8 = v7;
  result = (*(v3 + 8))(v6, v2);
  v10 = v1[2].f64[0];
  v11 = v1[2].f64[1];
  if (v11 < v10)
  {
    v12 = v11 + v1[1].f64[1] * (v8 - v1[6].f64[1]);
    v13.f64[0] = fabs(v12) - v10;
    v13.f64[1] = v1[1].f64[1] * (v8 - v1[6].f64[1]);
    v1[4] = vaddq_f64(v1[4], v13);
    if (v12 < v10)
    {
      v10 = v12;
    }

    v1[2].f64[1] = v10;
  }

  v1[6].f64[1] = v8;
  return result;
}

uint64_t sub_1DF621B28(double a1)
{
  v2 = v1;
  v4 = sub_1DF63252C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x1EEE9AC00](v4);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 <= 0.0)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1DF63251C();
  sub_1DF63244C();
  v11 = v10;
  v12 = *(v5 + 8);
  v12(v9, v4);
  v13 = *(v2 + 48);
  sub_1DF63245C();
  sub_1DF63244C();
  v15 = v14;
  result = (v12)(v9, v4);
  v16 = 0.0;
  if (v13 != v15)
  {
    v16 = v11 - *(v2 + 48);
  }

  *(v2 + 112) = v16;
  v17 = v16 + *(v2 + 56);
  *(v2 + 48) = v11;
  *(v2 + 56) = v17;
  v18 = *(v2 + 88);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    goto LABEL_10;
  }

  *(v2 + 88) = v20;
  v21 = *(v2 + 40);
  if (v21 < a1)
  {
    return v21 >= a1;
  }

  *(v2 + 40) = v21 - a1;
  *(v2 + 80) = *(v2 + 80) + a1;
  v22 = *(v2 + 96);
  v19 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (!v19)
  {
    *(v2 + 96) = v23;
    return v21 >= a1;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t TokenBucket.durationUntilOperationAllowed(cost:)()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 4);
  sub_1DF6221B0(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

Swift::Int __swiftcall TokenBucket.countOfOperationsAllowed(cost:)(Swift::Double cost)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  sub_1DF622214(&v4);
  os_unfair_lock_unlock(v2 + 4);
  return v4;
}

uint64_t sub_1DF621DA0@<X0>(uint64_t a1@<X0>, void *a2@<X8>, double a3@<D0>)
{
  result = sub_1DF621A0C();
  v7 = floor(*(a1 + 40) / a3);
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v7 < 9.22337204e18)
  {
    *a2 = v7;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

Swift::Void __swiftcall TokenBucket.reset()()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 4);
  sub_1DF622274(v2);
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_1DF621E9C(void *a1)
{
  v2 = sub_1DF63252C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1[7] = 0;
  a1[11] = 0;
  a1[12] = 0;
  a1[5] = a1[4];
  sub_1DF63245C();
  sub_1DF63244C();
  v8 = v7;
  v9 = *(v3 + 8);
  v9(v6, v2);
  a1[6] = v8;
  a1[14] = 0;
  sub_1DF63251C();
  sub_1DF63244C();
  v11 = v10;
  result = (v9)(v6, v2);
  a1[13] = v11;
  a1[9] = 0;
  a1[10] = 0;
  a1[8] = 0;
  return result;
}

void TokenBucket.statistics.getter()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 4);
  sub_1DF622274(v2);
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_1DF622030@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 88);
  v3 = *(result + 96);
  if (__OFSUB__(v2, v3))
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = *(result + 72);
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = *(result + 80);
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v5 < 9.22337204e18)
  {
    v6 = *(result + 112);
    v7 = *(result + 56);
    v8 = *(result + 64);
    *a2 = v2;
    *(a2 + 8) = v3;
    *(a2 + 16) = v2 - v3;
    *(a2 + 24) = v6;
    *(a2 + 32) = v7 / v2;
    *(a2 + 40) = v8;
    *(a2 + 48) = v4;
    *(a2 + 56) = v5;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t TokenBucket.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t TokenBucket.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}