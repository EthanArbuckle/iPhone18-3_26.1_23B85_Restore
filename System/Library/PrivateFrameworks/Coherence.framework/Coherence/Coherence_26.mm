unint64_t sub_1AE001EA8()
{
  v3 = *MEMORY[0x1E69E9840];
  v0 = bswap64(sub_1AE23BFCC());
  if ((v0 & 0xF000) != 0x7000)
  {
    __break(1u);
  }

  v1 = *MEMORY[0x1E69E9840];
  return v0 & 0xFFF | (v0 >> 16 << 12);
}

unint64_t sub_1AE001F28(unint64_t a1, unint64_t a2, unint64_t a3)
{
  if (HIWORD(a1) || a2 > 0xFFF || a3 >> 62)
  {
    __break(1u);
  }

  v3 = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E69E9840];
  return bswap64(a2 | (a1 << 16) | 0x7000);
}

unint64_t sub_1AE001FC4()
{
  result = qword_1EB5BC900[0];
  if (!qword_1EB5BC900[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5BC900);
  }

  return result;
}

uint64_t sub_1AE002018(uint64_t a1, uint64_t a2)
{
  v4 = v2[1];
  v10 = *v2;
  v11 = v4;
  sub_1ADDD86D8(v10, v4);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  sub_1ADE1E638(&v10);
  v7 = v10;
  v8 = v11;

  return sub_1ADDCC35C(v7, v8);
}

uint64_t Ref.subscript.getter(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v4 = v2[1];
  v6 = *(a1 + 32);
  v12 = v5;
  v13 = v4;

  sub_1ADDD86D8(v5, v4);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  sub_1ADE1E638(&v12);

  v9 = v12;
  v10 = v13;

  return sub_1ADDCC35C(v9, v10);
}

void (*Ref.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x40uLL);
  }

  v8 = v7;
  *a1 = v7;
  v10 = *v3;
  v9 = v3[1];
  v11 = *(a2 + 32);
  v7[4] = v10;
  v12 = v7 + 4;
  v7[5] = v9;
  v7[6] = v11;

  sub_1ADDD86D8(v10, v9);
  v13 = *(a3 + 24);
  v8[7] = sub_1ADEAE30C(v8, v12, *(a3 + 16));
  return sub_1ADEBA858;
}

uint64_t Ref.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4[1];
  v13 = *v4;
  v14 = v8;
  v9 = *(a4 + 8);
  sub_1ADDD86D8(v13, v8);
  v9(&v13, *(a2 + 16), *(a2 + 24), a3, a4);
  v10 = v13;
  v11 = v14;

  return sub_1ADDCC35C(v10, v11);
}

{
  v8 = v4[1];
  v13 = *v4;
  v14 = v8;
  v9 = *(a4 + 16);
  sub_1ADDD86D8(v13, v8);
  v9(&v13, *(a2 + 16), *(a2 + 24), a3, a4);
  v10 = v13;
  v11 = v14;

  return sub_1ADDCC35C(v10, v11);
}

uint64_t sub_1AE002310(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2 + a3;
  v5 = *(a2 + a3 - 32);
  v6 = *(v4 - 24);
  v7 = *(v4 - 16);
  v8 = *(v4 - 8);
  v11 = *a1;
  v9 = type metadata accessor for Ref();
  return Ref.subscript.getter(a2, v9, v6, v8);
}

uint64_t sub_1AE002384(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 32);
  v7 = *(a3 + a4 - 24);
  v8 = *(a3 + a4 - 16);
  v9 = *(a3 + a4 - 8);
  v12 = *a2;
  v13 = a2[1];
  sub_1ADDD86D8(*a2, v13);
  v10 = type metadata accessor for Ref();
  sub_1AE003D3C(a1, a3, v10, v7, v9);

  return sub_1ADDCC35C(v12, v13);
}

uint64_t Ref.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1AE003D3C(a1, a2, a3, a4, a5);
  (*(*(a4 - 8) + 8))(a2, a4);
  v9 = *(*(*(a3 + 16) - 8) + 8);

  return v9(a1);
}

void (*Ref.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x38uLL);
  }

  v11 = v10;
  *a1 = v10;
  v12 = *v5;
  v13 = v5[1];
  v11[4] = *v5;
  v11[5] = v13;
  v14 = *(a5 + 32);
  sub_1ADDD86D8(v12, v13);
  v11[6] = v14(v11, v11 + 4, *(a3 + 16), *(a3 + 24), a4, a5);
  return sub_1AE002598;
}

void sub_1AE002598(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);
  sub_1ADDCC35C(*(v1 + 32), *(v1 + 40));

  free(v1);
}

uint64_t sub_1AE0025EC(__int128 *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(a2 + a3 - 32);
  v4 = *(a2 + a3 - 16);
  v5 = *a2;
  v8 = *a1;
  v6 = type metadata accessor for Ref();
  return Ref.subscript.getter(v5, v6);
}

uint64_t sub_1AE002654(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 32);
  v6 = *(a3 + a4 - 16);
  v7 = *a3;
  v8 = *a2;
  v9 = a2[1];
  v12 = *a2;

  sub_1ADDD86D8(v8, v9);
  v10 = type metadata accessor for Ref();
  sub_1AE003E60(a1, v7, v10);

  return sub_1ADDCC35C(v12, v9);
}

uint64_t Ref.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AE003E60(a1, a2, a3);

  v5 = *(*(*(a3 + 16) - 8) + 8);

  return v5(a1);
}

uint64_t Ref.subscript.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1[2];
  if (v6)
  {
    v9 = v3;
    v7 = *v3;
    v8 = v9[1];
    v11 = *a1;
    v10 = a1[1];
    v19 = v11;
    v20 = v10;
    v21 = v6;
    *&v18 = v7;
    *(&v18 + 1) = v8;
    sub_1AE003EE4(v11, v10, v6);
    sub_1ADDD86D8(v7, v8);
    v12 = type metadata accessor for Capsule.ObservableDifference();
    Capsule.ObservableDifference.subscript.getter(&v18, v12, *(a2 + 16), *(a2 + 24), a3);
    sub_1ADDCC35C(v18, *(&v18 + 1));

    return sub_1AE003F24(v11, v10, v6);
  }

  else
  {
    v14 = *(a2 + 16);
    v15 = *(*(a2 + 24) + 16);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v17 = *(*(AssociatedTypeWitness - 8) + 56);

    return v17(a3, 1, 1, AssociatedTypeWitness);
  }
}

uint64_t Ref.id.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_1ADDCC35C(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v3;
  return result;
}

double sub_1AE002938@<D0>(uint64_t a1@<X0>, uint64_t a2@<X3>, _OWORD *a3@<X8>)
{
  v6 = sub_1AE23BFEC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v11, a1, v6, v9);
  *&v18 = sub_1ADDCC6B4(a2);
  *(&v18 + 1) = v12;
  v13 = sub_1ADDD8E0C();
  v15 = v14;
  sub_1AE23BEEC();
  sub_1ADDCC35C(v13, v15);
  v16 = *(v7 + 8);
  v16(a1, v6);
  v16(v11, v6);
  result = *&v18;
  *a3 = v18;
  return result;
}

double Ref.init<A>(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, _OWORD *a4@<X8>)
{
  (*(a3 + 48))(&v8, a2, a3);
  (*(*(a2 - 8) + 8))(a1, a2);
  result = *&v8;
  *a4 = v8;
  return result;
}

double _s9Coherence3RefV__2idACyxGAA7CapsuleVABCyqd___G_xAA9CRKeyPathVSgtcAA4CRDTRd__lufC_0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v8 = *a3;
  v9 = a3[1];
  v10 = *(a1 + 32);

  sub_1ADEAFD1C(a2, a4, &v12);

  (*(*(a4 - 8) + 8))(a2, a4);
  sub_1ADDE158C(v8, v9);
  result = *&v12;
  *a5 = v12;
  return result;
}

uint64_t Ref.init<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = *(a1 + 32);
  v11[0] = *a2;
  v4 = v11[0];
  v11[1] = v5;
  v11[2] = v6;
  v11[3] = v7;
  v11[4] = v8;

  sub_1ADEAEE48(v11);

  sub_1ADDD86D8(v4, v5);
  sub_1ADDCC35C(v4, v5);
  sub_1ADDCC35C(v6, v7);

  *a3 = v4;
  a3[1] = v5;
  return result;
}

uint64_t Ref.visitReferences(_:)(void *a1, uint64_t a2)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v9[0] = v4;
  v9[1] = v5;
  return (*(v7 + 16))(v9, *(a2 + 16), *(a2 + 24), v6, v7);
}

uint64_t Ref.copy(renamingReferences:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *v3;
  v8 = v3[1];
  v21 = *v3;
  v22 = v8;
  WitnessTable = swift_getWitnessTable();
  (*(WitnessTable + 48))(&v19, a2, WitnessTable);
  v10 = v19;
  v11 = v20;
  v12 = *a1;
  if (*(*a1 + 16) && (v13 = sub_1ADDDE7CC(v19, v20), (v14 & 1) != 0))
  {
    v15 = (*(v12 + 56) + 16 * v13);
    v16 = *v15;
    v17 = v15[1];
    sub_1ADDD86D8(*v15, v17);
    result = sub_1ADDCC35C(v10, v11);
    *a3 = v16;
    a3[1] = v17;
  }

  else
  {
    sub_1ADDCC35C(v10, v11);
    *a3 = v7;
    a3[1] = v8;
    return sub_1ADDD86D8(v7, v8);
  }

  return result;
}

uint64_t Ref.copy(renamingReferences:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *v3;
  if (!a1)
  {
    v8 = *v3;
    a1 = sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  v9 = a1;

  Ref.copy(renamingReferences:)(&v9, a2, a3);
}

uint64_t Ref.ObservableDifference.contents.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  if (v3 >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v4 = *v1;
  }

  v5 = 0xF000000000000000;
  if (v3 >> 60 != 15)
  {
    v5 = v1[1];
  }

  *a1 = v4;
  a1[1] = v5;
  return sub_1ADDE0F78(v2, v3);
}

uint64_t Ref.ObservableDifference.subscript.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1[2];
  v7 = v3[1];
  if (v6)
  {
    v8 = v7 >> 60 == 15;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = *(a2 + 16);
    v10 = *(*(a2 + 24) + 16);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v12 = *(*(AssociatedTypeWitness - 8) + 56);

    return v12(a3, 1, 1, AssociatedTypeWitness);
  }

  else
  {
    v14 = *v3;
    v16 = *a1;
    v15 = a1[1];
    v19 = v16;
    v20 = v15;
    v21 = v6;
    *&v18 = v14;
    *(&v18 + 1) = v7;
    sub_1AE003EE4(v16, v15, v6);
    sub_1ADDE0F78(v14, v7);
    v17 = type metadata accessor for Capsule.ObservableDifference();
    Capsule.ObservableDifference.subscript.getter(&v18, v17, *(a2 + 16), *(a2 + 24), a3);
    sub_1ADDCC35C(v18, *(&v18 + 1));

    return sub_1AE003F24(v16, v15, v6);
  }
}

uint64_t Ref.ObservableDifference.isIdentityChanged.getter(uint64_t a1)
{
  v2 = *v1;
  v6 = xmmword_1AE2427C0;
  v7 = v2;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  return static Ref.ObservableDifference.== infix(_:_:)(&v7, &v6) & 1;
}

uint64_t static Ref.ObservableDifference.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = *(a2 + 8);
  if (v2 >> 60 != 15)
  {
    if (v4 >> 60 != 15)
    {
      v9[0] = *a1;
      v9[1] = v2;
      v8[0] = v5;
      v8[1] = v4;
      sub_1ADDE0F78(v5, v4);
      sub_1ADDE0F78(v3, v2);
      sub_1ADDE0F78(v5, v4);
      sub_1ADDE0F78(v3, v2);
      v6 = static Ref.== infix(_:_:)(v9, v8);
      sub_1ADDE158C(v3, v2);
      sub_1ADDE158C(v5, v4);
      sub_1ADDE158C(v5, v4);
      sub_1ADDE158C(v3, v2);
      return v6 & 1;
    }

    goto LABEL_5;
  }

  if (v4 >> 60 != 15)
  {
LABEL_5:
    sub_1ADDE0F78(*a2, *(a2 + 8));
    sub_1ADDE0F78(v3, v2);
    sub_1ADDE158C(v3, v2);
    sub_1ADDE158C(v5, v4);
    v6 = 0;
    return v6 & 1;
  }

  sub_1ADDE158C(*a1, v2);
  sub_1ADDE158C(v5, v4);
  v6 = 1;
  return v6 & 1;
}

uint64_t static Ref.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  sub_1ADDD86D8(*a1, v4);
  v6 = *a2;
  v5 = a2[1];
  sub_1ADDD86D8(v6, v5);
  sub_1ADDD86D8(v3, v4);
  sub_1ADDD86D8(v6, v5);
  v7 = sub_1ADDD6F8C(v3, v4, v6, v5);
  sub_1ADDCC35C(v6, v5);
  sub_1ADDCC35C(v3, v4);
  sub_1ADDCC35C(v6, v5);
  sub_1ADDCC35C(v3, v4);
  return v7 & 1;
}

uint64_t sub_1AE003270(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return static Ref.ObservableDifference.== infix(_:_:)(a1, a2);
}

double sub_1AE00327C@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1AE2427C0;
  return result;
}

uint64_t Ref.observableDifference(from:with:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v24 = a2;
  v7 = *(a3 + 16);
  v8 = *(a3 + 24);
  v9 = *(v8 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_1AE23D7CC();
  v25 = *(v11 - 8);
  v26 = v11;
  v12 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v24 - v13;
  v15 = *a1;
  v16 = a1[1];
  v17 = *v4;
  v18 = v4[1];
  sub_1ADDD86D8(*v4, v18);
  sub_1ADDD86D8(v15, v16);
  v19 = sub_1ADDD6F8C(v17, v18, v15, v16);
  sub_1ADDCC35C(v15, v16);
  result = sub_1ADDCC35C(v17, v18);
  if (v19)
  {
    sub_1AE003F64(v24, v28);
    v21 = v29;
    if (v29)
    {
      v22 = v30;
      __swift_project_boxed_opaque_existential_1(v28, v29);
      v27[0] = v17;
      v27[1] = v18;
      (*(v22 + 8))(v27, v7, v8, v21, v22);
      __swift_destroy_boxed_opaque_existential_1(v28);
      if ((*(*(AssociatedTypeWitness - 8) + 48))(v14, 1, AssociatedTypeWitness) != 1)
      {
        (*(v25 + 8))(v14, v26);
        *a4 = v17;
        a4[1] = v18;
        return sub_1ADDD86D8(v17, v18);
      }
    }

    else
    {
      sub_1AE003FD4(v28);
      (*(*(AssociatedTypeWitness - 8) + 56))(v14, 1, 1, AssociatedTypeWitness);
    }

    result = (*(v25 + 8))(v14, v26);
    v23 = xmmword_1AE250CD0;
  }

  else
  {
    v23 = xmmword_1AE2427C0;
  }

  *a4 = v23;
  return result;
}

uint64_t Ref.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1AE23BECC();
}

uint64_t Ref.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1AE23E31C();
  sub_1AE23BECC();
  return sub_1AE23E34C();
}

uint64_t sub_1AE003568()
{
  sub_1AE23E31C();
  Ref.hash(into:)();
  return sub_1AE23E34C();
}

uint64_t Ref.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = *(a1 + 72);
  if (!v6)
  {
    v21 = 0x80000001AE25FB70;
    sub_1ADE42E40();
    swift_allocError();
    v23 = 0xD000000000000017;
LABEL_20:
    *v22 = v23;
    *(v22 + 8) = v21;
    *(v22 + 16) = 0;
    swift_willThrow();
  }

  v7 = v4;
  v10 = *(a1 + 57);
  v36 = a4;
  if (v10 < 3 || ((v11 = *(v6 + 16), (~v11 & 0xF000000000000007) != 0) ? (v12 = ((v11 >> 59) & 0x1E | (v11 >> 2) & 1) == 16) : (v12 = 0), !v12))
  {
    v13 = *(v6 + 16);
    if ((~v13 & 0xF000000000000007) != 0 && ((v13 >> 59) & 0x1E | (v13 >> 2) & 1) == 7)
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    }

    else
    {
      v14 = &unk_1ED966F48;
    }

    swift_beginAccess();
    v15 = v14[8];
    v16 = v14[9];
    v17 = v14[10];
    if (v15)
    {
      v18 = v16;
    }

    else
    {
      v18 = 0;
    }

    if (v15)
    {
      v19 = v17;
    }

    else
    {
      v19 = 0xC000000000000000;
    }

    swift_retain_n();
    sub_1ADE56F74(v15, v16, v17);
    result = sub_1ADDE94BC(v18, v19, &v34);
    if (v7)
    {
    }

    v24 = v34;
    v25 = v35;
    v26 = *(a1 + 16);
    if (v26)
    {
      goto LABEL_22;
    }

LABEL_32:
    __break(1u);
    return result;
  }

  v29 = *((v11 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  v30 = *(a1 + 40);
  v31 = *(v30 + 16);
  if (v31)
  {
    v32 = v29 >= v31;
  }

  else
  {
    v32 = 1;
  }

  if (v32)
  {
    v21 = 0x80000001AE25FC60;
    sub_1ADE42E40();
    swift_allocError();
    v23 = 0xD000000000000013;
    goto LABEL_20;
  }

  v33 = v30 + 16 * v29;
  v24 = *(v33 + 32);
  v25 = *(v33 + 40);

  result = sub_1ADDD86D8(v24, v25);
  v26 = *(a1 + 16);
  if (!v26)
  {
    goto LABEL_32;
  }

LABEL_22:
  v34 = v24;
  v35 = v25;
  v27 = *(*v26 + 200);

  sub_1ADDD86D8(v24, v25);
  v27(a2, &v34, a1, 0, a2, a3);
  sub_1ADDCC35C(v34, v35);

  if (v7)
  {
    return sub_1ADDCC35C(v24, v25);
  }

  v28 = v36;
  *v36 = v24;
  v28[1] = v25;
  return result;
}

uint64_t Ref.encode(to:)(uint64_t a1)
{
  v3 = v1;
  v6 = *v3;
  v5 = v3[1];
  result = sub_1ADE71C08();
  if (!v2)
  {
    v8 = result;
    v9 = *(a1 + 104);

    if (v9 >= 3)
    {
      v14 = sub_1ADE66644(v6, v5);
      swift_beginAccess();
      sub_1AE1B75D8(v14);
    }

    else
    {
      sub_1ADDD86D8(v6, v5);
      sub_1ADDCC35C(0, 0xC000000000000000);
      v10 = MEMORY[0x1E69E7CC0];

      sub_1ADDD86D8(v6, v5);

      sub_1ADDCC35C(v6, v5);
      swift_beginAccess();
      v11 = *(*(v8 + 24) + 16);
      if ((~v11 & 0xF000000000000007) != 0 && ((v11 >> 59) & 0x1E | (v11 >> 2) & 1) == 7)
      {
        inited = *((v11 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      }

      else
      {
        type metadata accessor for Proto_Reference._StorageClass();
        inited = swift_initStaticObject();
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        type metadata accessor for Proto_Reference._StorageClass();
        swift_allocObject();
        inited = sub_1ADDE4C34(inited);
      }

      swift_beginAccess();
      v15 = inited[8];
      v16 = inited[9];
      v17 = inited[10];
      inited[8] = v10;
      inited[9] = v6;
      inited[10] = v5;
      sub_1ADE73D6C(v15, v16, v17);
      sub_1AE1B76EC(inited);
      v18 = *(*(v8 + 24) + 16);
      if ((~v18 & 0xF000000000000007) != 0 && ((v18 >> 59) & 0x1E | (v18 >> 2) & 1) == 7)
      {
        v19 = *((v18 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      }

      else
      {
        type metadata accessor for Proto_Reference._StorageClass();
        v19 = swift_initStaticObject();
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        type metadata accessor for Proto_Reference._StorageClass();
        swift_allocObject();
        v19 = sub_1ADDE4C34(v19);
      }

      swift_beginAccess();
      *(v19 + 24) = 0;
      *(v19 + 32) = 1;
      sub_1AE1B76EC(v19);
    }

    swift_endAccess();
  }

  return result;
}

uint64_t Ref.encode(to:)(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1ADDD86D8(v2, v3);
  sub_1AE23E3BC();
  __swift_mutable_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_1ADE57060();
  sub_1AE23E06C();
  sub_1ADDCC35C(v2, v3);
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t Ref.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_1ADF4E010(a1, v9);
  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  sub_1AE23E38C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return __swift_destroy_boxed_opaque_existential_1(v9);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    sub_1ADE56FBC();
    sub_1AE23E03C();
    __swift_destroy_boxed_opaque_existential_1(a1);
    __swift_destroy_boxed_opaque_existential_1(v8);
    result = __swift_destroy_boxed_opaque_existential_1(v9);
    *a2 = v6;
    a2[1] = v7;
  }

  return result;
}

uint64_t sub_1AE003D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a3 + 16);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v5;
  v14 = v5[1];
  (*(v16 + 16))(v13, v11);
  v19[0] = v15;
  v19[1] = v14;
  v17 = *(a5 + 24);
  sub_1ADDD86D8(v15, v14);
  return v17(v13, v19, v9, *(a3 + 24), a4, a5);
}

uint64_t sub_1AE003E60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v6 = v3[1];
  v8 = *(a2 + 32);
  v11[0] = v7;
  v11[1] = v6;

  sub_1ADDD86D8(v7, v6);
  v9 = *(a3 + 24);
  sub_1ADECCBCC(a1, v11, *(a3 + 16));
}

uint64_t sub_1AE003EE4(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_1ADDD86D8(result, a2);
  }

  return result;
}

uint64_t sub_1AE003F24(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_1ADDCC35C(result, a2);
  }

  return result;
}

uint64_t sub_1AE003F64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BAA40, &unk_1AE24EC50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AE003FD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BAA40, &unk_1AE24EC50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AE004064()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_9Coherence3RefV20ObservableDifferenceOyx_G(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AE0040C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 16))
  {
    return (*a1 + 12);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  if (v3 + 1 >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AE00411C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 12;
    if (a3 >= 0xC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

void *sub_1AE00416C(void *result, unsigned int a2)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    result[1] = 0;
  }

  else if (a2)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

uint64_t sub_1AE0041C0(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for FinalizedTimestamp(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(*(a2 + 16) - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v2)
  {
    v14 = *v2;
  }

  else
  {
    v15 = v11;
    v16 = *(a2 + 24);
    v17 = type metadata accessor for CRRegisterRef();
    sub_1AE0062C4(a2);
    if (qword_1ED966C80 != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v15, qword_1EB5D74D0);
    sub_1ADED0548(v18, v8);
    v19 = *(v17 + 48);
    v20 = *(v17 + 52);
    v14 = swift_allocObject();
    sub_1ADDD25B8(v13, v8);
  }

  v21 = *(*v14 + 184);

  v22 = v21(a1);

  return v22;
}

uint64_t CRRegister.encode(to:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  result = sub_1ADDFCC74();
  if (!v3)
  {
    v9 = v5;
    v8 = *(a2 + 16);
    v7 = *(a2 + 24);

    sub_1ADE6BB04(&v9, v8, v7);
  }

  return result;
}

uint64_t (*sub_1AE0045FC())()
{
  v1 = *(*v0 + 208);
  swift_beginAccess();
  return j__swift_endAccess_0;
}

uint64_t sub_1AE004674@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED966C80 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for FinalizedTimestamp(0);
  v3 = __swift_project_value_buffer(v2, qword_1EB5D74D0);

  return sub_1ADED0548(v3, a1);
}

uint64_t sub_1AE0046EC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  sub_1ADDD25B8(a1, a2);
  return v7;
}

uint64_t sub_1AE00473C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = type metadata accessor for FinalizedTimestamp(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (*(*(*(v1 + 192) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  sub_1ADDE1760(v9);
  sub_1ADE12F48(v6);
  v12 = *(v2 + 48);
  v13 = *(v2 + 52);
  v14 = swift_allocObject();
  sub_1ADDD25B8(v11, v6);
  return v14;
}

uint64_t sub_1AE004854(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for FinalizedTimestamp(0);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for Proto_CRDT._StorageClass();
  inited = swift_initStaticObject();
  type metadata accessor for Proto_Register._StorageClass();
  v10 = swift_initStaticObject();
  sub_1ADE12F48(v9);
  v11 = a1;
  v12 = sub_1ADDF66A8(v9);
  v13 = *&v9[*(v6 + 28)];
  sub_1ADE173B8(v9);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v11 = swift_allocObject();
    v10 = sub_1ADDE8D20(v10);
  }

  swift_beginAccess();
  *(v10 + 16) = v12;
  *(v10 + 24) = v13;
  *(v10 + 32) = 0;
  v14 = *(a1 + 112);
  v15 = *(a1 + 120);
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  sub_1AE0054D4(v3, a1);
  if (v2)
  {
  }

  else
  {
    v17 = sub_1ADE71C08();
    swift_beginAccess();
    v18 = *(v17 + 24);
    v19 = *(a1 + 112);
    *(a1 + 112) = v14;

    v20 = *(a1 + 120);
    *(a1 + 120) = v15;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      swift_allocObject();
      v10 = sub_1ADDE8D20(v10);
    }

    v11 = inited;
    swift_beginAccess();
    v21 = *(v10 + 40);
    *(v10 + 40) = v18;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = swift_allocObject();
      v23 = *(v11 + 16);
      *(v22 + 16) = v23;
      sub_1ADE5215C(v23);

      v11 = v22;
    }

    v24 = swift_allocObject();
    *(v24 + 16) = v10;
    v25 = *(v11 + 16);
    *(v11 + 16) = v24;
    sub_1ADE52174(v25);
  }

  return v11;
}

uint64_t sub_1AE004B00()
{
  (*(*(*(*v0 + 192) - 8) + 8))(v0 + *(*v0 + 208));
  v1 = v0 + *(*v0 + 216);

  return sub_1ADE173B8(v1);
}

uint64_t (*sub_1AE004B94())()
{
  v1 = *(*v0 + 208);
  swift_beginAccess();
  return j_j__swift_endAccess_0;
}

uint64_t sub_1AE004C00(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 208);
  swift_beginAccess();
  v5 = *(v3 + 192);
  v6 = *(v5 - 8);
  (*(v6 + 24))(v1 + v4, a1, v5);
  swift_endAccess();
  return (*(v6 + 8))(a1, v5);
}

uint64_t sub_1AE004CE4(uint64_t a1)
{
  v3 = *(*v1 + 216);
  swift_beginAccess();
  sub_1ADFAFFE4(a1, v1 + v3);
  swift_endAccess();
  return sub_1ADE173B8(a1);
}

uint64_t sub_1AE004D58@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 224);
  swift_beginAccess();
  return sub_1ADED0548(v1 + v3, a1);
}

uint64_t sub_1AE004DBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  sub_1AE004E14(a1, a2, a3);
  return v9;
}

uint64_t sub_1AE004E14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(*(*v3 + 192) - 8) + 32))(v3 + *(*v3 + 208), a1);
  sub_1ADE172E4(a2, v3 + *(*v3 + 216));
  sub_1ADE172E4(a3, v3 + *(*v3 + 224));
  return v3;
}

uint64_t sub_1AE004EE0()
{
  v1 = *v0;
  v2 = *v0;
  v3 = type metadata accessor for FinalizedTimestamp(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  v10 = (*(*(*(v1 + 192) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v20 - v13;
  sub_1ADDE1760(v12);
  sub_1ADE12F48(v9);
  v15 = *(*v0 + 224);
  swift_beginAccess();
  sub_1ADED0548(v0 + v15, v6);
  v16 = *(v2 + 48);
  v17 = *(v2 + 52);
  v18 = swift_allocObject();
  sub_1AE004E14(v14, v9, v6);
  return v18;
}

uint64_t sub_1AE00505C(uint64_t a1)
{
  v4 = type metadata accessor for FinalizedTimestamp(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 104) >= 2u)
  {
    v36 = v2;
    v34 = type metadata accessor for Proto_CRDT._StorageClass();
    inited = swift_initStaticObject();
    v37 = type metadata accessor for Proto_Register._StorageClass();
    v9 = swift_initStaticObject();
    sub_1ADE12F48(v7);
    v10 = sub_1ADDF66A8(v7);
    v11 = *&v7[*(v4 + 20)];
    sub_1ADE173B8(v7);
    v12 = v9;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      swift_allocObject();
      v12 = sub_1ADDE8D20(v9);
    }

    swift_beginAccess();
    *(v12 + 16) = v10;
    *(v12 + 24) = v11;
    *(v12 + 32) = 0;
    sub_1AE004D58(v7);
    v13 = sub_1ADDF66A8(v7);
    v14 = *&v7[*(v4 + 20)];
    sub_1ADE173B8(v7);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      swift_allocObject();
      v9 = sub_1ADDE8D20(v9);
    }

    swift_beginAccess();
    *(v9 + 16) = v13;
    *(v9 + 24) = v14;
    *(v9 + 32) = 0;
    v4 = *(a1 + 112);
    v15 = *(a1 + 120);
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
    v16 = v36;
    sub_1AE0054D4(v1, a1);
    if (v16)
    {
    }

    else
    {
      v18 = sub_1ADE71C08();
      swift_beginAccess();
      v19 = *(v18 + 24);
      v20 = *(a1 + 112);
      *(a1 + 112) = v4;

      v21 = *(a1 + 120);
      *(a1 + 120) = v15;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        swift_allocObject();
        v9 = sub_1ADDE8D20(v9);
      }

      v4 = inited;
      swift_beginAccess();
      v23 = *(v9 + 40);
      *(v9 + 40) = v19;

      swift_beginAccess();
      if (*(v12 + 48))
      {
        v24 = *(v12 + 48);
      }

      else
      {
        v24 = v4;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = swift_allocObject();
        v26 = *(v24 + 16);
        *(v25 + 16) = v26;
        sub_1ADE5215C(v26);

        v24 = v25;
      }

      v27 = swift_allocObject();
      *(v27 + 16) = v9;
      v28 = *(v24 + 16);
      *(v24 + 16) = v27;
      sub_1ADE52174(v28);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        swift_allocObject();
        v12 = sub_1ADDE8D20(v12);
      }

      swift_beginAccess();
      v29 = *(v12 + 48);
      *(v12 + 48) = v24;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = swift_allocObject();
        v31 = *(v4 + 16);
        *(v30 + 16) = v31;
        sub_1ADE5215C(v31);

        v4 = v30;
      }

      v32 = swift_allocObject();
      *(v32 + 16) = v12;
      v33 = *(v4 + 16);
      *(v4 + 16) = v32;
      sub_1ADE52174(v33);
    }
  }

  else
  {
    sub_1ADE42E40();
    swift_allocError();
    *v8 = 0xD00000000000003CLL;
    *(v8 + 8) = 0x80000001AE262020;
    *(v8 + 16) = 3;
    swift_willThrow();
  }

  return v4;
}

uint64_t sub_1AE0054D4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 192);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v12 - v8;
  v10(v7);
  (*(*(*(*(v3 + 200) + 8) + 8) + 16))(a2, v4);
  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_1AE005604()
{
  (*(*(*(*v0 + 192) - 8) + 8))(v0 + *(*v0 + 208));
  sub_1ADE173B8(v0 + *(*v0 + 216));
  v1 = v0 + *(*v0 + 224);

  return sub_1ADE173B8(v1);
}

uint64_t sub_1AE0056B4()
{
  (*(*(*(*v0 + 192) - 8) + 8))(v0 + *(*v0 + 208));
  sub_1ADE173B8(v0 + *(*v0 + 216));
  sub_1ADE173B8(v0 + *(*v0 + 224));
  return v0;
}

uint64_t CRRegister.setValue(in:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v65 = *(a3 + 16);
  v62 = *(v65 - 8);
  v63 = a2;
  v7 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v64 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FinalizedTimestamp(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v60 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v61 = &v60 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v60 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v60 - v22;
  v66 = *v3;
  CRRegister.timestamp.getter(&v60 - v22);
  v24 = *(v9 + 20);
  v25 = *(a1 + v24);
  if (v25 != *&v23[v24])
  {
    sub_1ADE173B8(v23);
LABEL_11:
    v66 = *v4;
    CRRegister.timestamp.getter(v12);
    v37 = *&v12[*(v9 + 20)];
    if (v37 == v25)
    {
      v38 = sub_1ADF5EB00();
      sub_1ADE173B8(v12);
      if ((v38 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      sub_1ADE173B8(v12);
      if (v37 >= v25)
      {
        return 0;
      }
    }

    v39 = *(a3 + 24);
    v40 = v65;
    type metadata accessor for CRRegisterRefBase();
    v41 = v20;
    if ((sub_1AE23DFAC() & 1) == 0 || !*v4 || (type metadata accessor for CRGroupedRegisterRef(), (v42 = swift_dynamicCastClass()) == 0))
    {
      v47 = type metadata accessor for CRGroupedRegisterRef();
      v48 = v64;
      (*(v62 + 16))(v64, v63, v40);
      sub_1ADED0548(a1, v41);
      if (qword_1ED96AC50 != -1)
      {
        swift_once();
      }

      sub_1ADDD0F70();
      v49 = v61;
      sub_1AE23BFBC();
      *(v49 + *(v9 + 20)) = 0;
      v50 = *(v47 + 48);
      v51 = *(v47 + 52);
      v52 = swift_allocObject();
      v53 = v48;
      v54 = v41;
      v55 = v49;
      goto LABEL_27;
    }

    v43 = v42;
    v44 = *(*v42 + 216);
    swift_beginAccess();

    sub_1ADFAFFE4(a1, v43 + v44);
    swift_endAccess();
    if (qword_1ED96AC50 == -1)
    {
LABEL_19:
      sub_1ADDD0F70();
      sub_1AE23BFBC();
      *(v41 + *(v9 + 20)) = 0;
      v45 = *(*v43 + 224);
      swift_beginAccess();
      sub_1ADFAF2E4(v41, v43 + v45);
      swift_endAccess();
      v46 = *(*v43 + 208);
      swift_beginAccess();
      (*(v62 + 24))(v43 + v46, v63, v65);
      swift_endAccess();

      return 1;
    }

LABEL_30:
    swift_once();
    goto LABEL_19;
  }

  v26 = sub_1AE23BF8C();
  sub_1ADE173B8(v23);
  if ((v26 & 1) == 0)
  {
    goto LABEL_11;
  }

  v27 = *(a3 + 24);
  v28 = v65;
  type metadata accessor for CRRegisterRefBase();
  if ((sub_1AE23DFAC() & 1) == 0 || !*v4 || (type metadata accessor for CRGroupedRegisterRef(), (v29 = swift_dynamicCastClass()) == 0))
  {
    v43 = type metadata accessor for CRGroupedRegisterRef();
    (*(v62 + 16))(v64, v63, v28);
    sub_1ADED0548(a1, v20);
    v66 = *v4;
    sub_1AE005FDC(v15);
    if (qword_1ED96AC50 != -1)
    {
      swift_once();
    }

    sub_1ADDD0F70();
    v41 = v61;
    sub_1AE23BFBC();
    v56 = *&v15[*(v9 + 20)];
    sub_1ADE173B8(v15);
    if (!__OFADD__(v56, 1))
    {
      *(v41 + *(v9 + 20)) = v56 + 1;
      v57 = *(v43 + 48);
      v58 = *(v43 + 52);
      v52 = swift_allocObject();
      v53 = v64;
      v54 = v20;
      v55 = v41;
LABEL_27:
      sub_1AE004E14(v53, v54, v55);
      v59 = *v4;

      *v4 = v52;
      return 1;
    }

    __break(1u);
    goto LABEL_30;
  }

  v30 = v29;
  v31 = *(*v29 + 224);
  swift_beginAccess();
  v32 = v61;
  sub_1ADED0548(v30 + v31, v61);
  v33 = qword_1ED96AC50;

  if (v33 != -1)
  {
    swift_once();
  }

  sub_1ADDD0F70();
  sub_1AE23BFBC();
  v34 = *(v32 + *(v9 + 20));
  result = sub_1ADE173B8(v32);
  if (!__OFADD__(v34, 1))
  {
    *&v20[*(v9 + 20)] = v34 + 1;
    swift_beginAccess();
    sub_1ADFAF2E4(v20, v30 + v31);
    swift_endAccess();
    v36 = *(*v30 + 208);
    swift_beginAccess();
    (*(v62 + 24))(v30 + v36, v63, v65);
    swift_endAccess();

    return 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AE005FDC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA460, &qword_1AE251020);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v14 - v6;
  v8 = *v1;
  if (v8)
  {
    (*(*v8 + 144))(v5);
    v9 = type metadata accessor for FinalizedTimestamp(0);
    (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
    return sub_1ADE172E4(v7, a1);
  }

  else
  {
    v11 = type metadata accessor for FinalizedTimestamp(0);
    v12 = *(v11 - 8);
    (*(v12 + 56))(v7, 1, 1, v11);
    if (qword_1ED966C80 != -1)
    {
      swift_once();
    }

    v13 = __swift_project_value_buffer(v11, qword_1EB5D74D0);
    sub_1ADED0548(v13, a1);
    result = (*(v12 + 48))(v7, 1, v11);
    if (result != 1)
    {
      return sub_1ADE1727C(v7);
    }
  }

  return result;
}

uint64_t sub_1AE0061C4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4[1] = *a1;
  result = CRRegister.projectedValue.getter(v4);
  *a2 = v4[0];
  return result;
}

uint64_t sub_1AE006208(uint64_t *a1)
{
  v1 = *a1;

  v2 = CRRegister.projectedValue.modify();
  v4 = *v3;
  *v3 = v1;

  return v2(&v6, 0);
}

uint64_t CRRegister.projectedValue.setter(uint64_t *a1)
{
  v3 = *v1;

  *v1 = *a1;
  return result;
}

uint64_t sub_1AE00633C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 8);
  v5 = *(*(*(a3 + a4 - 16) - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v12 - v7;
  (*(v9 + 16))(&v12 - v7, v6);
  v10 = type metadata accessor for CRRegister();
  return CRRegister.value.setter(v8, v10);
}

void (*CRRegister.value.modify(void *a1, uint64_t a2))(void *a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x78uLL);
  }

  v7 = v6;
  *a1 = v6;
  v6[4] = a2;
  v6[5] = v2;
  v8 = *(a2 + 16);
  v6[6] = v8;
  v9 = *(v8 - 8);
  v6[7] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[8] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[8] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[9] = v11;
  v12 = type metadata accessor for FinalizedTimestamp(0);
  v7[10] = v12;
  v13 = *(*(v12 - 8) + 64);
  if (v5)
  {
    v7[11] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v7[11] = malloc(v13);
    v14 = malloc(v13);
  }

  v7[12] = v14;
  sub_1ADE02740(a2);
  sub_1ADE02898(a2);
  v15 = *v2;
  v7[13] = v15;
  if (v15)
  {
    v16 = *(*v15 + 112);

    v7[14] = v16(v7);
    return sub_1AE0065E8;
  }

  else
  {
    sub_1AE0062C4(a2);
    return sub_1AE006794;
  }
}

void sub_1AE0065E8(void *a1, char a2)
{
  v3 = *a1;
  (*(*a1 + 112))(*a1, 0);
  if (a2)
  {
    v4 = *(v3 + 104);
  }

  else
  {
    v16 = **(v3 + 40);
    CRRegister.timestamp.getter(*(v3 + 88));
    if (qword_1ED96AC50 != -1)
    {
      swift_once();
    }

    v5 = *(v3 + 88);
    v6 = *(v3 + 96);
    v7 = *(v3 + 80);
    sub_1ADDD0F70();
    sub_1AE23BFBC();
    v8 = *(v5 + *(v7 + 20));
    sub_1ADE173B8(v5);
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      return;
    }

    v11 = *(v3 + 96);
    v12 = *(v3 + 104);
    *(v11 + *(v7 + 20)) = v10;
    (*(*v12 + 128))(v11, v9);
  }

  v13 = *(v3 + 88);
  v15 = *(v3 + 64);
  v14 = *(v3 + 72);
  free(*(v3 + 96));
  free(v13);
  free(v14);
  free(v15);

  free(v3);
}

void sub_1AE006794(void *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    (*(v2[7] + 8))(v2[9], v2[6]);
  }

  else
  {
    v3 = v2[11];
    v5 = v2[8];
    v4 = v2[9];
    v6 = v2[6];
    v7 = v2[7];
    v8 = v2[5];
    v9 = *(v2[4] + 24);
    v10 = type metadata accessor for CRRegisterRef();
    (*(v7 + 16))(v5, v4, v6);
    v29 = *v8;
    CRRegister.timestamp.getter(v3);
    if (qword_1ED96AC50 != -1)
    {
      swift_once();
    }

    v11 = v2[11];
    v12 = v2[12];
    v13 = v2[10];
    sub_1ADDD0F70();
    sub_1AE23BFBC();
    v14 = *(v11 + *(v13 + 20));
    sub_1ADE173B8(v11);
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      return;
    }

    v16 = v2[12];
    v18 = v2[8];
    v17 = v2[9];
    v19 = v2[6];
    v20 = v2[7];
    v21 = v2[5];
    *(v16 + *(v13 + 20)) = v15;
    v22 = *(v10 + 48);
    v23 = *(v10 + 52);
    v24 = swift_allocObject();
    sub_1ADDD25B8(v18, v16);
    v25 = *v21;

    *v21 = v24;
    (*(v20 + 8))(v17, v19);
  }

  v26 = v2[11];
  v28 = v2[8];
  v27 = v2[9];
  free(v2[12]);
  free(v26);
  free(v27);
  free(v28);

  free(v2);
}

void (*CRRegister.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(a2 + 16);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v6[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  v13 = *v2;
  CRRegister.value.getter(a2);
  return sub_1AE006ACC;
}

void sub_1AE006ACC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    (*(v6 + 16))((*a1)[4], v4, v5);
    sub_1ADE031A0(v3, v8);
    v9 = *(v6 + 8);
    v9(v3, v5);
    v9(v4, v5);
  }

  else
  {
    sub_1ADE031A0((*a1)[5], v8);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t CRRegister.copy(renamingReferences:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(a2 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v23 - v13;
  v15 = *v3;
  if (*(*v16 + 16))
  {
    v24 = *v3;
    CRRegister.value.getter(a2);
    v17 = *(a2 + 24);
    (*(*(v17 + 8) + 24))(a1, v7);
    (*(v8 + 8))(v11, v7);
    v18 = a3;
    v19 = v14;
    v20 = v7;
    v21 = v17;
  }

  else
  {
    v24 = *v3;
    CRRegister.value.getter(a2);
    v21 = *(a2 + 24);
    v18 = a3;
    v19 = v14;
    v20 = v7;
  }

  return CRRegister.init(_:)(v19, v20, v21, v18);
}

uint64_t CRRegister.copy(renamingReferences:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *v3;
  if (a1)
  {
    v7 = a1;
  }

  else
  {
    v7 = sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  v9 = v7;

  CRRegister.copy(renamingReferences:)(&v9, a2, a3);
}

uint64_t CRRegister.init<A>(_:_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v8 = sub_1AE23D7CC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v16 - v12;
  (*(v9 + 16))(&v16 - v12, a2, v8, v11);
  v16 = a3;
  WitnessTable = swift_getWitnessTable();
  CRRegister.init(_:)(v13, v8, WitnessTable, &v17);

  result = (*(v9 + 8))(a2, v8);
  *a4 = v17;
  return result;
}

uint64_t CRRegister.init(_:_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v14, v12);
  CRRegister.init(_:)(v14, a3, a4, &v17);

  result = (*(v10 + 8))(a2, a3);
  *a5 = v17;
  return result;
}

uint64_t CRRegister.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v6 = sub_1AE23D7CC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v14 - v10;
  (*(v7 + 16))(&v14 - v10, a1, v6, v9);
  v14 = a2;
  WitnessTable = swift_getWitnessTable();
  CRRegister.init(_:)(v11, v6, WitnessTable, &v15);
  result = (*(v7 + 8))(a1, v6);
  *a3 = v15;
  return result;
}

uint64_t CRRegister.init(defaultState:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(*(*(v10 + 8) + 8) + 40))(v7);
  if (!v2)
  {
    result = (*(v5 + 8))(v9, a1);
    *a2 = 0;
  }

  return result;
}

uint64_t CRRegister.init(_:clock:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = type metadata accessor for FinalizedTimestamp(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a3 - 8);
  v15 = *(v14 + 64);
  v17.n128_f64[0] = MEMORY[0x1EEE9AC00](v16);
  v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 || ((*(*(*(a4 + 8) + 8) + 48))(a3, v17.n128_f64[0]) & 1) == 0)
  {
    (*(v14 + 16))(v19, a1, a3, v17);
    if (qword_1ED96AC50 != -1)
    {
      swift_once();
    }

    sub_1ADDD0F70();
    sub_1AE23BFBC();
    *&v13[*(v10 + 20)] = a2;
    sub_1ADDD22FC(v19, v13, a3, &v23);
    result = (*(v14 + 8))(a1, a3);
    v21 = v23;
  }

  else
  {
    result = (*(v14 + 8))(a1, a3);
    v21 = 0;
  }

  *a5 = v21;
  return result;
}

uint64_t CRRegister.merge(_:)@<X0>(uint64_t *a1@<X0>, __int16 *a2@<X8>)
{
  v3 = v2;
  v60 = a2;
  v5 = type metadata accessor for FinalizedTimestamp(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v56 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v57 = &v55 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v55 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v55 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v59 = &v55 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v58 = &v55 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v55 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v55 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v55 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v55 - v30;
  v32 = *a1;
  v62 = *v3;
  CRRegister.timestamp.getter(&v55 - v30);
  v61 = v32;
  CRRegister.timestamp.getter(v28);
  v33 = *(v5 + 20);
  v34 = *&v31[v33];
  v35 = *&v28[v33];
  if (v34 == v35)
  {
    v36 = sub_1ADF5EB00();
  }

  else
  {
    v36 = v34 < v35;
  }

  sub_1ADE173B8(v28);
  sub_1ADE173B8(v31);
  if (v36)
  {
    goto LABEL_5;
  }

  v62 = *v3;
  CRRegister.timestamp.getter(v25);
  v61 = v32;
  CRRegister.timestamp.getter(v22);
  if (*&v25[*(v5 + 20)] == *&v22[*(v5 + 20)])
  {
    v40 = sub_1AE23BF8C();
    sub_1ADE173B8(v22);
    sub_1ADE173B8(v25);
    if (v40)
    {
      v62 = *v3;
      v41 = v58;
      sub_1AE005FDC(v58);
      v61 = v32;
      v42 = v59;
      sub_1AE005FDC(v59);
      v43 = *(v5 + 20);
      v44 = *(v41 + v43);
      v45 = *(v42 + v43);
      v46 = v44 == v45 ? sub_1ADF5EB00() : v44 < v45;
      sub_1ADE173B8(v42);
      sub_1ADE173B8(v41);
      if (v46)
      {
LABEL_5:
        v37 = *v3;

        *v3 = v32;
        if (qword_1EB5B9910 != -1)
        {
          result = swift_once();
        }

        v39 = &word_1EB5D750B;
        goto LABEL_25;
      }
    }
  }

  else
  {
    sub_1ADE173B8(v22);
    sub_1ADE173B8(v25);
  }

  v62 = *v3;
  CRRegister.timestamp.getter(v15);
  v61 = v32;
  CRRegister.timestamp.getter(v12);
  if (*&v15[*(v5 + 20)] != *&v12[*(v5 + 20)])
  {
    sub_1ADE173B8(v12);
    v51 = v15;
LABEL_21:
    result = sub_1ADE173B8(v51);
    goto LABEL_22;
  }

  v47 = sub_1AE23BF8C();
  sub_1ADE173B8(v12);
  result = sub_1ADE173B8(v15);
  if ((v47 & 1) == 0)
  {
    goto LABEL_22;
  }

  v62 = *v3;
  v48 = v57;
  sub_1AE005FDC(v57);
  v61 = v32;
  v49 = v56;
  sub_1AE005FDC(v56);
  if (*(v48 + *(v5 + 20)) != *(v49 + *(v5 + 20)))
  {
    sub_1ADE173B8(v49);
    v51 = v48;
    goto LABEL_21;
  }

  v50 = sub_1AE23BF8C();
  sub_1ADE173B8(v49);
  result = sub_1ADE173B8(v48);
  if (v50)
  {
    if (qword_1ED9670C0 != -1)
    {
      result = swift_once();
    }

    v39 = &word_1ED96F220;
    goto LABEL_25;
  }

LABEL_22:
  if (qword_1EB5B9908 != -1)
  {
    result = swift_once();
  }

  v39 = &word_1EB5D7508;
LABEL_25:
  v52 = *v39;
  v53 = *(v39 + 2);
  v54 = v60;
  *v60 = v52;
  *(v54 + 2) = v53;
  return result;
}

uint64_t CRRegister.newRefs(from:)(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 16);
  v51 = *(v6 - 8);
  v7 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v50 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FinalizedTimestamp(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v48 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v47 = &v46 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v46 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v46 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v46 - v21;
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v46 - v25;
  v27 = *a1;
  v28 = *v3;
  v29 = *(*(a2 + 24) + 8);
  v30 = *(v29 + 80);
  v49 = v6;
  if (v30(v6, v29, v24))
  {
    v46 = a2;
    v53 = v28;
    CRRegister.timestamp.getter(v26);
    v52 = v27;
    CRRegister.timestamp.getter(v22);
    v31 = *(v9 + 20);
    v32 = *&v22[v31];
    v33 = *&v26[v31];
    if (v32 == v33)
    {
      v34 = sub_1ADF5EB00();
    }

    else
    {
      v34 = v32 < v33;
    }

    sub_1ADE173B8(v22);
    sub_1ADE173B8(v26);
    if (v34)
    {
      goto LABEL_6;
    }

    v53 = v28;
    CRRegister.timestamp.getter(v19);
    v52 = v27;
    CRRegister.timestamp.getter(v16);
    if (*&v19[*(v9 + 20)] == *&v16[*(v9 + 20)])
    {
      v39 = sub_1AE23BF8C();
      sub_1ADE173B8(v16);
      sub_1ADE173B8(v19);
      if (v39)
      {
        v53 = v28;
        v40 = v47;
        sub_1AE005FDC(v47);
        v52 = v27;
        v41 = v48;
        sub_1AE005FDC(v48);
        v42 = *(v9 + 20);
        v43 = *(v41 + v42);
        v44 = *(v40 + v42);
        v45 = v43 == v44 ? sub_1ADF5EB00() : v43 < v44;
        sub_1ADE173B8(v41);
        sub_1ADE173B8(v40);
        if (v45)
        {
LABEL_6:
          v53 = v28;
          v35 = v50;
          CRRegister.value.getter(v46);
          v36 = v49;
          v37 = sub_1ADECE30C(v49, v29);
          (*(v51 + 8))(v35, v36);
          return v37;
        }
      }
    }

    else
    {
      sub_1ADE173B8(v16);
      sub_1ADE173B8(v19);
    }
  }

  return MEMORY[0x1E69E7CD0];
}

Swift::Bool __swiftcall CRRegister.needToFinalizeTimestamps()()
{
  v2 = v0;
  v3 = *(v0 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = (MEMORY[0x1EEE9AC00])();
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  if (v9)
  {
    (*(*v9 + 96))(v6);
    LOBYTE(v9) = (*(*(*(v2 + 24) + 8) + 56))(v3);
    (*(v4 + 8))(v8, v3);
  }

  return v9 & 1;
}

uint64_t CRRegister.finalizeTimestamps(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v9[0] = *v2;

  v6 = CRRegister.needToFinalizeTimestamps()();

  if (v6)
  {
    result = sub_1ADE02898(a2);
    if (*v3)
    {
      v8 = (*(**v3 + 112))(v9);
      (*(*(*(a2 + 24) + 8) + 64))(a1, *(a2 + 16));
      return v8(v9, 0);
    }
  }

  return result;
}

uint64_t CRRegister.description.getter(uint64_t a1)
{
  v2 = *(*(*(a1 + 16) - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v6 = *v1;
  CRRegister.value.getter(v3);
  v4 = sub_1AE23CD6C();
  MEMORY[0x1B26FB670](v4);

  MEMORY[0x1B26FB670](93, 0xE100000000000000);
  return 0x7473696765525243;
}

uint64_t CRRegister.actionUndoingDifference(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a2;
  v6 = *(a2 + 16);
  v7 = sub_1AE23D7CC();
  v50 = *(v7 - 8);
  v51 = v7;
  v8 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v49 = &v47 - v9;
  v10 = type metadata accessor for FinalizedTimestamp(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v48 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v47 = &v47 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v47 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v47 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v47 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v47 - v25;
  v27 = *a1;
  v28 = *v3;
  v54 = *v3;
  CRRegister.timestamp.getter(&v47 - v25);
  v53 = v27;
  CRRegister.timestamp.getter(v23);
  v29 = *(v10 + 20);
  v30 = *&v26[v29];
  v31 = *&v23[v29];
  if (v30 == v31)
  {
    v32 = sub_1ADF5EB00();
  }

  else
  {
    v32 = v30 < v31;
  }

  sub_1ADE173B8(v23);
  sub_1ADE173B8(v26);
  if ((v32 & 1) == 0)
  {
    v54 = v28;
    CRRegister.timestamp.getter(v20);
    v53 = v27;
    CRRegister.timestamp.getter(v17);
    if (*&v20[*(v10 + 20)] == *&v17[*(v10 + 20)])
    {
      v35 = sub_1AE23BF8C();
      sub_1ADE173B8(v17);
      sub_1ADE173B8(v20);
      if (v35)
      {
        v54 = v28;
        v36 = v47;
        sub_1AE005FDC(v47);
        v53 = v27;
        v37 = v48;
        sub_1AE005FDC(v48);
        v38 = *(v10 + 20);
        v39 = *(v37 + v38);
        v40 = *(v36 + v38);
        v41 = v39 == v40 ? sub_1ADF5EB00() : v39 < v40;
        sub_1ADE173B8(v37);
        sub_1ADE173B8(v36);
        if ((v41 & 1) == 0)
        {
          goto LABEL_5;
        }
      }
    }

    else
    {
      sub_1ADE173B8(v17);
      sub_1ADE173B8(v20);
    }

    v54 = v27;
    v42 = v49;
    v43 = v52;
    CRRegister.value.getter(v52);
    (*(*(v6 - 8) + 56))(v42, 0, 1, v6);
    v44 = *(v43 + 24);
    (*(v50 + 32))(a3, v42, v51);
    v34 = 0;
    goto LABEL_12;
  }

LABEL_5:
  v33 = *(v52 + 24);
  v34 = 1;
LABEL_12:
  v45 = type metadata accessor for CRRegister.MutatingAction();
  return (*(*(v45 - 8) + 56))(a3, v34, 1, v45);
}

uint64_t CRRegister.apply(_:)(uint64_t a1, uint64_t a2)
{
  v36 = a1;
  v3 = *(a2 + 16);
  v4 = sub_1AE23D7CC();
  v34 = *(v4 - 8);
  v35 = v4;
  v5 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v32 - v6;
  v33 = *(v3 - 8);
  v8 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v32 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - v12;
  v14 = *(a2 + 24);
  v15 = type metadata accessor for CRRegister.MutatingAction();
  v16 = sub_1AE23D7CC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v32 - v19;
  v21 = *(v15 - 8);
  v22 = *(v21 + 64);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v32 - v25;
  (*(v17 + 16))(v20, v36, v16, v24);
  if ((*(v21 + 48))(v20, 1, v15) == 1)
  {
    return (*(v17 + 8))(v20, v16);
  }

  (*(v21 + 32))(v26, v20, v15);
  v29 = v34;
  v28 = v35;
  (*(v34 + 16))(v7, v26, v35);
  v30 = v33;
  if ((*(v33 + 48))(v7, 1, v3) == 1)
  {
    (*(v21 + 8))(v26, v15);
    return (*(v29 + 8))(v7, v28);
  }

  else
  {
    (*(v30 + 32))(v13, v7, v3);
    v31 = v32;
    (*(v30 + 16))(v32, v13, v3);
    CRRegister.value.setter(v31, a2);
    (*(v30 + 8))(v13, v3);
    return (*(v21 + 8))(v26, v15);
  }
}

uint64_t CRRegister.hasDelta(from:)(uint64_t *a1)
{
  v3 = type metadata accessor for FinalizedTimestamp(0);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v17 - v9;
  v11 = *a1;
  v17[1] = *v1;
  CRRegister.timestamp.getter(v17 - v9);
  v17[0] = v11;
  CRRegister.timestamp.getter(v7);
  v12 = *(v4 + 28);
  v13 = *&v7[v12];
  v14 = *&v10[v12];
  if (v13 == v14)
  {
    v15 = sub_1ADF5EB00();
  }

  else
  {
    v15 = v13 < v14;
  }

  sub_1ADE173B8(v7);
  sub_1ADE173B8(v10);
  return v15 & 1;
}

uint64_t CRRegister.delta(_:from:)@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for FinalizedTimestamp(0);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v20 - v11;
  v13 = *a1;
  v14 = *v2;
  v20[1] = v13;
  CRRegister.timestamp.getter(v20 - v11);
  v20[0] = v14;
  CRRegister.timestamp.getter(v9);
  v15 = *(v6 + 28);
  v16 = *&v12[v15];
  v17 = *&v9[v15];
  if (v16 == v17)
  {
    v18 = sub_1ADF5EB00();
  }

  else
  {
    v18 = v16 < v17;
  }

  sub_1ADE173B8(v9);
  result = sub_1ADE173B8(v12);
  if (v18)
  {
  }

  else
  {
    v14 = 1;
  }

  *a2 = v14;
  return result;
}

uint64_t CRRegister.merge(delta:)(uint64_t *a1)
{
  v2 = *a1;
  CRRegister.merge(_:)(&v2, &v3);
  return 1;
}

uint64_t CRRegister.observableDifference(from:with:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a3 + 16);
  v9 = *(v8 - 8);
  v50 = a2;
  v51 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v49 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v48 = &v43 - v13;
  v45 = *(*(v14 + 24) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = sub_1AE23D7CC();
  v46 = *(v16 - 8);
  v47 = v16;
  v17 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v44 = &v43 - v18;
  v19 = type metadata accessor for FinalizedTimestamp(0);
  v20 = v19 - 8;
  v21 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v43 - v26;
  v28 = *a1;
  v29 = *v4;
  v30 = *(*(AssociatedTypeWitness - 8) + 56);
  v52 = a4;
  v30(a4, 1, 1, AssociatedTypeWitness, v25);
  v54 = v28;
  CRRegister.timestamp.getter(v27);
  v53 = v29;
  CRRegister.timestamp.getter(v23);
  v31 = *(v20 + 28);
  v32 = *&v23[v31];
  v33 = *&v27[v31];
  if (v32 == v33)
  {
    v34 = sub_1ADF5EB00();
  }

  else
  {
    v34 = v32 < v33;
  }

  sub_1ADE173B8(v23);
  result = sub_1ADE173B8(v27);
  if ((v34 & 1) == 0)
  {
    v54 = v29;
    v36 = v48;
    CRRegister.value.getter(a3);
    v53 = v28;
    v37 = v49;
    CRRegister.value.getter(a3);
    v38 = v44;
    (*(v45 + 40))(v37, v50, v8);
    v39 = *(v51 + 8);
    v39(v37, v8);
    v39(v36, v8);
    v41 = v46;
    v40 = v47;
    v42 = v52;
    (*(v46 + 8))(v52, v47);
    return (*(v41 + 32))(v42, v38, v40);
  }

  return result;
}

uint64_t CRRegister.minEncodingVersion.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[1] = *v1;
  CRRegister.value.getter(v8);
  (*(*(*(*(a1 + 24) + 8) + 8) + 24))(v3);
  return (*(v4 + 8))(v7, v3);
}

uint64_t static CRRegister.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for FinalizedTimestamp(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v22 - v15;
  v17 = *a1;
  v18 = *a2;
  v23 = v17;
  CRRegister.timestamp.getter(&v22 - v15);
  v22 = v18;
  CRRegister.timestamp.getter(v13);
  if (*&v16[*(v4 + 20)] != *&v13[*(v4 + 20)])
  {
    sub_1ADE173B8(v13);
    sub_1ADE173B8(v16);
    goto LABEL_6;
  }

  v19 = sub_1AE23BF8C();
  sub_1ADE173B8(v13);
  sub_1ADE173B8(v16);
  if ((v19 & 1) == 0)
  {
LABEL_6:
    v20 = 0;
    return v20 & 1;
  }

  v23 = v17;
  sub_1AE005FDC(v10);
  v22 = v18;
  sub_1AE005FDC(v7);
  if (*&v10[*(v4 + 20)] == *&v7[*(v4 + 20)])
  {
    v20 = sub_1AE23BF8C();
  }

  else
  {
    v20 = 0;
  }

  sub_1ADE173B8(v7);
  sub_1ADE173B8(v10);
  return v20 & 1;
}

uint64_t sub_1AE0090A8(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return static CRRegister.== infix(_:_:)(a1, a2);
}

uint64_t CRRegister.MutatingAction.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = sub_1AE23D7CC();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v26 - v12;
  if (*(a1 + 64))
  {
    v26 = v11;
    v27 = a4;
    type metadata accessor for CRDecoder.CRDTContainer();
    inited = swift_initStackObject();
    *(inited + 16) = a1;
    *(inited + 24) = 0;
    *(inited + 32) = 1;

    v15 = *(sub_1ADDE78C8() + 16);
    if (v15 >> 60)
    {
      v16 = 1;
    }

    else
    {
      v16 = (v15 & 0xF000000000000007) == 0xF000000000000007;
    }

    if (v16)
    {
      type metadata accessor for Proto_Register._StorageClass();
      v19 = swift_initStaticObject();
    }

    else
    {
      v19 = *(v15 + 16);
    }

    swift_beginAccess();
    v20 = *(v19 + 40);

    if (v20)
    {
      v21 = *(sub_1ADDE78C8() + 16);
      if (v21 >> 60 || (v21 & 0xF000000000000007) == 0xF000000000000007)
      {
        type metadata accessor for Proto_Register._StorageClass();
        v22 = swift_initStaticObject();
      }

      else
      {
        v22 = *(v21 + 16);
      }

      swift_beginAccess();
      v23 = *(v22 + 40);
      if (v23)
      {
        v24 = *(v22 + 40);
      }

      else
      {
        type metadata accessor for Proto_Value._StorageClass();
        v23 = swift_initStaticObject();
      }

      type metadata accessor for CRDecoder();
      swift_allocObject();

      v25 = sub_1ADE0262C(v23, a1);

      (*(*(*(a3 + 8) + 8) + 8))(v25, a2);

      if (!v4)
      {
        (*(*(a2 - 8) + 56))(v13, 0, 1, a2);
        return (*(v26 + 32))(v27, v13, v9);
      }
    }

    else
    {

      return (*(*(a2 - 8) + 56))(v27, 1, 1, a2);
    }
  }

  else
  {
    sub_1ADE42E40();
    swift_allocError();
    *v17 = 0xD000000000000014;
    *(v17 + 8) = 0x80000001AE25FB50;
    *(v17 + 16) = 0;
    swift_willThrow();
  }

  return result;
}

uint64_t CRRegister.MutatingAction.encode(to:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v6 = sub_1AE23D7CC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v26 - v9;
  v11 = *(v5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1ADDFCC74();
  if (!v2)
  {
    v17 = result;
    v27 = 0;
    (*(v7 + 16))(v10, v28, v6);
    if ((*(v11 + 48))(v10, 1, v5) == 1)
    {
      return (*(v7 + 8))(v10, v6);
    }

    else
    {
      v18 = (*(v11 + 32))(v15, v10, v5);
      MEMORY[0x1EEE9AC00](v18);
      v19 = *(a2 + 24);
      *(&v26 - 4) = v5;
      *(&v26 - 3) = v19;
      *(&v26 - 2) = v15;
      *(&v26 - 1) = a1;

      v20 = v27;
      v21 = sub_1ADE6B938(sub_1ADE74060);
      if (v20)
      {
      }

      else
      {
        v22 = v21;
        swift_beginAccess();
        v23 = *(*(v17 + 24) + 16);
        if (v23 >> 60 || (v23 & 0xF000000000000007) == 0xF000000000000007)
        {
          type metadata accessor for Proto_Register._StorageClass();
          inited = swift_initStaticObject();
        }

        else
        {
          inited = *(v23 + 16);
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          type metadata accessor for Proto_Register._StorageClass();
          swift_allocObject();
          inited = sub_1ADDE8D20(inited);
        }

        swift_beginAccess();
        v25 = *(inited + 40);
        *(inited + 40) = v22;

        sub_1AE1B783C(inited);
        swift_endAccess();
      }

      return (*(v11 + 8))(v15, v5);
    }
  }

  return result;
}

uint64_t CRRegister<>.encode(to:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v14[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  v11 = v10[4];
  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_1AE23E3BC();
  v14[6] = v9;
  CRRegister.value.getter(a2);
  __swift_mutable_project_boxed_opaque_existential_1(v14, v14[3]);
  sub_1AE23E06C();
  (*(v5 + 8))(v8, v4);
  return __swift_destroy_boxed_opaque_existential_1(v14);
}

uint64_t keypath_get_3Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = a2 + a3;
  v6 = *(a2 + a3 - 16);
  v7 = *(v5 - 8);
  v10 = *a1;
  v8 = type metadata accessor for CRRegister();
  return a4(v8);
}

uint64_t sub_1AE0099D4(uint64_t a1)
{
  v1 = *(a1 + 192);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = type metadata accessor for FinalizedTimestamp(319);
    if (v4 <= 0x3F)
    {
      v6 = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1AE009AA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = sub_1AE23D7CC();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t (*CRTaggedValue.value.modify(uint64_t a1, uint64_t a2))(Coherence_namespace *__hidden this, unint64_t)
{
  result = Coherence_namespace::CRTTBoundedCheckedCastNSUIntegerToUInt32;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t CRTaggedValue.init(tag:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  v7 = type metadata accessor for CRTaggedValue();
  v8 = *(*(a3 - 8) + 32);
  v9 = a4 + *(v7 + 36);

  return v8(v9, a2, a3);
}

uint64_t CRTaggedValue.observableDifference(from:with:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v31 = a2;
  v32 = a4;
  v7 = *(a3 + 16);
  v8 = *(*(a3 + 24) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1AE23D7CC();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v29 - v12;
  v14 = *(AssociatedTypeWitness - 8);
  v15 = *(v14 + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v29 - v19;
  if (*v4 == *a1)
  {
    v30 = v17;
    (*(v8 + 40))(&a1[*(a3 + 36)], v31, v7, v8, v18);
    if ((*(v14 + 48))(v13, 1, AssociatedTypeWitness) == 1)
    {
      (*(v30 + 8))(v13, v10);
      return (*(v14 + 56))(v32, 1, 1, AssociatedTypeWitness);
    }

    else
    {
      v25 = *(v14 + 32);
      v25(v20, v13, AssociatedTypeWitness);
      v26 = v32;
      v25(v32, v20, AssociatedTypeWitness);
      return (*(v14 + 56))(v26, 0, 1, AssociatedTypeWitness);
    }
  }

  else
  {
    v22 = swift_conformsToProtocol2();
    if (v22)
    {
      v23 = *(v22 + 8);
      *(&v34 + 1) = AssociatedTypeWitness;
      v35 = v22;
      v24 = v22;
      __swift_allocate_boxed_opaque_existential_1(&v33);
      v23(AssociatedTypeWitness, v24);
    }

    else
    {
      v35 = 0;
      v33 = 0u;
      v34 = 0u;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB5BA3B8, &qword_1AE242400);
    v27 = v32;
    v28 = swift_dynamicCast();
    return (*(v14 + 56))(v27, v28 ^ 1u, 1, AssociatedTypeWitness);
  }
}

uint64_t CRTaggedValue.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - v13;
  v16 = *(v15 + 72);
  if (v16)
  {
    v17 = *(v16 + 16);
    v30 = v12;
    v31 = v3;
    if ((~v17 & 0xF000000000000007) != 0 && ((v17 >> 59) & 0x1E | (v17 >> 2) & 1) == 0xB)
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    }

    else
    {
      v18 = &unk_1EB5B9140;
    }

    swift_beginAccess();
    v19 = *(v16 + 16);
    if ((~v19 & 0xF000000000000007) != 0 && ((v19 >> 59) & 0x1E | (v19 >> 2) & 1) == 0xB)
    {
      v20 = *((v19 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    }

    else
    {
      v20 = &unk_1EB5B9140;
    }

    v29 = v18[2];
    swift_beginAccess();
    if (v20[3])
    {
      inited = v20[3];
    }

    else
    {
      type metadata accessor for Proto_Value._StorageClass();
      inited = swift_initStaticObject();
    }

    type metadata accessor for CRDecoder();
    swift_allocObject();

    v24 = sub_1ADE0262C(inited, a1);
    v25 = v31;
    (*(*(*(a3 + 8) + 8) + 8))(v24, a2);

    if (!v25)
    {
      v26 = *(v7 + 32);
      v26(v10, v14, a2);
      v27 = v30;
      *v30 = v29;
      v28 = type metadata accessor for CRTaggedValue();
      return (v26)(v27 + *(v28 + 36), v10, a2);
    }
  }

  else
  {
    sub_1ADE42E40();
    swift_allocError();
    *v22 = 0xD000000000000017;
    *(v22 + 8) = 0x80000001AE25FB70;
    *(v22 + 16) = 0;
    swift_willThrow();
  }

  return result;
}

uint64_t CRTaggedValue.encode(to:)(uint64_t a1, uint64_t a2)
{
  result = sub_1ADE71C08();
  if (!v3)
  {
    v6 = result;
    v7 = *v2;
    swift_beginAccess();
    v8 = *(*(v6 + 24) + 16);
    if ((~v8 & 0xF000000000000007) != 0 && ((v8 >> 59) & 0x1E | (v8 >> 2) & 1) == 11)
    {
      inited = *((v8 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    }

    else
    {
      type metadata accessor for Proto_TaggedValue._StorageClass();
      inited = swift_initStaticObject();
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      type metadata accessor for Proto_TaggedValue._StorageClass();
      swift_allocObject();
      inited = sub_1ADDE5178(inited);
    }

    swift_beginAccess();
    *(inited + 16) = v7;
    sub_1AE1B7530(inited);
    v11 = swift_endAccess();
    MEMORY[0x1EEE9AC00](v11);
    v16 = *(a2 + 16);
    v12 = sub_1ADE6B938(sub_1AE00A804);
    swift_beginAccess();
    v13 = *(*(v6 + 24) + 16);
    if ((~v13 & 0xF000000000000007) != 0 && ((v13 >> 59) & 0x1E | (v13 >> 2) & 1) == 0xB)
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    }

    else
    {
      type metadata accessor for Proto_TaggedValue._StorageClass();
      v14 = swift_initStaticObject();
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      type metadata accessor for Proto_TaggedValue._StorageClass();
      swift_allocObject();
      v14 = sub_1ADDE5178(v14);
    }

    swift_beginAccess();
    v15 = *(v14 + 24);
    *(v14 + 24) = v12;

    sub_1AE1B7530(v14);
    swift_endAccess();
  }

  return result;
}

uint64_t static CRTaggedValue<>.== infix(_:_:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v6 = *(type metadata accessor for CRTaggedValue() + 36);
  v7 = *(a5 + 8);
  return sub_1AE23CCBC() & 1;
}

uint64_t CRTaggedValue<>.hash(into:)(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1B26FCBD0](*v2);
  v4 = *(a2 + 16);
  v5 = v2 + *(a2 + 36);
  return sub_1AE23CBCC();
}

uint64_t CRTaggedValue<>.hashValue.getter(uint64_t a1)
{
  sub_1AE23E31C();
  MEMORY[0x1B26FCBD0](*v1);
  v3 = *(a1 + 16);
  v4 = v1 + *(a1 + 36);
  sub_1AE23CBCC();
  return sub_1AE23E34C();
}

uint64_t sub_1AE00A768(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_1AE23E31C();
  CRTaggedValue<>.hash(into:)(v6, a2);
  return sub_1AE23E34C();
}

uint64_t CRTaggedValue<>.encode(to:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 36);
  v3 = *(a2 + 16);
  return sub_1AE23CBAC();
}

uint64_t sub_1AE00A804()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = *(type metadata accessor for CRTaggedValue() + 36);
  return (*(*(*(v2 + 8) + 8) + 16))(v3, v1);
}

uint64_t sub_1AE00A87C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AE00A8FC(uint64_t a1)
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

uint64_t sub_1AE00A97C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
  }

  v8 = ((v6 + 8) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

void sub_1AE00AADC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 8) & ~v8) + *(v6 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v15 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v14 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v13 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v9] = v14;
              }

              else
              {
                *&a1[v9] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v9] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v12)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v6 + 56);
  v19 = &a1[v8 + 8] & ~v8;

  v18(v19);
}

uint64_t sub_1AE00AD5C()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  swift_getAssociatedConformanceWitness();
  type metadata accessor for Capsule();
  v4 = sub_1AE23D21C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v73 = &v53 - v7;
  v8 = sub_1AE23BFEC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v63 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = v12;
  v74 = v4;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v71 = sub_1AE23D7CC();
  v14 = *(v71 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v53 - v19;
  swift_beginAccess();
  v54 = v0;
  v21 = v0[14];
  v22 = *(v21 + 64);
  v55 = v21 + 64;
  v23 = 1 << *(v21 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v22;
  v26 = (v23 + 63) >> 6;
  v58 = v5 + 16;
  v59 = v9 + 16;
  v57 = v9 + 32;
  v27 = (v5 + 32);
  v69 = (v14 + 32);
  v70 = TupleTypeMetadata2 - 8;
  v64 = v9;
  v65 = v5;
  v67 = (v9 + 8);
  v68 = (v5 + 8);
  v66 = v21;

  v29 = 0;
  v61 = v17;
  v62 = TupleTypeMetadata2;
  v60 = v20;
  v56 = (v5 + 32);
  if (v25)
  {
    while (1)
    {
      v30 = v29;
LABEL_12:
      v33 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
      v34 = v33 | (v30 << 6);
      v35 = v66;
      v37 = v63;
      v36 = v64;
      v38 = v72;
      (*(v64 + 16))(v63, *(v66 + 48) + *(v64 + 72) * v34, v72);
      v39 = v65;
      v40 = *(v35 + 56) + *(v65 + 72) * v34;
      v42 = v73;
      v41 = v74;
      (*(v65 + 16))(v73, v40, v74);
      v43 = *(v62 + 48);
      v44 = *(v36 + 32);
      v17 = v61;
      v45 = v38;
      TupleTypeMetadata2 = v62;
      v44(v61, v37, v45);
      v46 = v42;
      v27 = v56;
      (*(v39 + 32))(&v17[v43], v46, v41);
      v47 = 0;
      v32 = v30;
      v20 = v60;
LABEL_13:
      v48 = *(TupleTypeMetadata2 - 8);
      (*(v48 + 56))(v17, v47, 1, TupleTypeMetadata2);
      (*v69)(v20, v17, v71);
      if ((*(v48 + 48))(v20, 1, TupleTypeMetadata2) == 1)
      {
        break;
      }

      v49 = v73;
      v50 = v74;
      (*v27)(v73, &v20[*(TupleTypeMetadata2 + 48)], v74);
      sub_1AE23D20C();
      (*v68)(v49, v50);
      result = (*v67)(v20, v72);
      v29 = v32;
      if (!v25)
      {
        goto LABEL_5;
      }
    }

    v51 = v54;
    v52 = v54[14];

    MEMORY[0x1B26FDB50](v51 + 15);
    swift_defaultActor_destroy();
    return v51;
  }

  else
  {
LABEL_5:
    if (v26 <= v29 + 1)
    {
      v31 = v29 + 1;
    }

    else
    {
      v31 = v26;
    }

    v32 = v31 - 1;
    while (1)
    {
      v30 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v30 >= v26)
      {
        v25 = 0;
        v47 = 1;
        goto LABEL_13;
      }

      v25 = *(v55 + 8 * v30);
      ++v29;
      if (v25)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1AE00B2D0()
{
  sub_1AE00AD5C();

  return swift_defaultActor_deallocate();
}

uint64_t sub_1AE00B314(uint64_t *a1)
{
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  swift_getAssociatedConformanceWitness();
  type metadata accessor for Capsule();
  v80 = sub_1AE23D1CC();
  v6 = *(v80 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v80);
  v79 = &v59 - v8;
  v9 = sub_1AE23D21C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v85 = &v59 - v12;
  v13 = sub_1AE23BFEC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v67 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = v17;
  v87 = v9;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v83 = sub_1AE23D7CC();
  v19 = *(v83 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v83);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v59 - v24;
  v26 = *a1;
  v77 = a1[1];
  v78 = v26;
  v27 = a1[2];
  v75 = a1[3];
  v76 = v27;
  v74 = a1[4];
  swift_beginAccess();
  v28 = v1[14];
  v29 = *(v28 + 64);
  v60 = v28 + 64;
  v30 = 1 << *(v28 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & v29;
  v59 = (v30 + 63) >> 6;
  v82 = TupleTypeMetadata2 - 8;
  v63 = v14 + 16;
  v62 = v10 + 16;
  v61 = v14 + 32;
  v84 = (v10 + 32);
  v81 = (v19 + 32);
  v73 = (v6 + 8);
  v69 = v10;
  v72 = (v10 + 8);
  v68 = v14;
  v71 = (v14 + 8);
  v70 = v28;

  v34 = 0;
  v66 = TupleTypeMetadata2;
  v65 = v22;
  v64 = v25;
  if (v32)
  {
    while (1)
    {
      v35 = v34;
LABEL_12:
      v38 = __clz(__rbit64(v32));
      v32 &= v32 - 1;
      v39 = v38 | (v35 << 6);
      v40 = v70;
      v41 = v68;
      v42 = v67;
      v43 = v86;
      (*(v68 + 16))(v67, *(v70 + 48) + *(v68 + 72) * v39, v86);
      v44 = v69;
      v45 = *(v40 + 56) + *(v69 + 72) * v39;
      v46 = v85;
      v47 = v87;
      (*(v69 + 16))(v85, v45, v87);
      v48 = v66;
      v49 = *(v66 + 48);
      v50 = *(v41 + 32);
      v22 = v65;
      v50(v65, v42, v43);
      v51 = *(v44 + 32);
      TupleTypeMetadata2 = v48;
      v51(&v22[v49], v46, v47);
      v52 = 0;
      v37 = v35;
      v25 = v64;
LABEL_13:
      v53 = *(TupleTypeMetadata2 - 8);
      (*(v53 + 56))(v22, v52, 1, TupleTypeMetadata2);
      (*v81)(v25, v22, v83);
      if ((*(v53 + 48))(v25, 1, TupleTypeMetadata2) == 1)
      {
      }

      v54 = v85;
      v55 = v87;
      (*v84)(v85, &v25[*(TupleTypeMetadata2 + 48)], v87);
      v88 = v78;
      v89 = v77;
      v57 = v75;
      v56 = v76;
      v90 = v76;
      v91 = v75;
      v92 = v74;
      sub_1ADDD86D8(v78, v77);
      sub_1ADDD86D8(v56, v57);

      v58 = v79;
      sub_1AE23D1FC();
      (*v73)(v58, v80);
      (*v72)(v54, v55);
      result = (*v71)(v25, v86);
      v34 = v37;
      if (!v32)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v59 <= v34 + 1)
    {
      v36 = v34 + 1;
    }

    else
    {
      v36 = v59;
    }

    v37 = v36 - 1;
    while (1)
    {
      v35 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v35 >= v59)
      {
        v32 = 0;
        v52 = 1;
        goto LABEL_13;
      }

      v32 = *(v60 + 8 * v35);
      ++v34;
      if (v32)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1AE00B9F0(uint64_t a1)
{
  v40 = a1;
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 96);
  v41 = *(*v1 + 88);
  v42 = v3;
  swift_getAssociatedConformanceWitness();
  v38 = v2;
  type metadata accessor for Capsule();
  v4 = sub_1AE23D1CC();
  v35 = *(v4 - 8);
  v36 = v4;
  v5 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v34 = &v33 - v6;
  v37 = sub_1AE23D21C();
  v7 = sub_1AE23D7CC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v39 = &v33 - v9;
  v10 = sub_1AE23BFEC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v33 - v15;
  if (qword_1ED96AC50 != -1)
  {
    swift_once();
  }

  sub_1ADDD0F70();
  sub_1AE23BFBC();
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = *(v11 + 16);
  v18(v13, v16, v10);
  v19 = v10;
  v20 = v16;
  v21 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v22 = swift_allocObject();
  v23 = v41;
  v22[2] = v38;
  v22[3] = v23;
  v22[4] = v42;
  v22[5] = v17;
  v24 = v22 + v21;
  v25 = v20;
  v26 = v19;
  (*(v11 + 32))(v24, v13, v19);
  v27 = v37;
  v28 = v40;
  sub_1AE23D1DC();
  v18(v13, v25, v26);
  v29 = *(v27 - 8);
  v30 = v39;
  (*(v29 + 16))(v39, v28, v27);
  (*(v29 + 56))(v30, 0, 1, v27);
  swift_beginAccess();
  sub_1AE00C950();
  sub_1AE23CB1C();
  sub_1AE23CB8C();
  swift_endAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    (*(v42 + 24))(&v43, v41);
    swift_unknownObjectRelease();
    if (v44 != 1)
    {
      v31 = v34;
      sub_1AE23D1FC();
      (*(v35 + 8))(v31, v36);
    }
  }

  return (*(v11 + 8))(v25, v26);
}

uint64_t sub_1AE00BEFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = a6;
  v9 = sub_1AE23BFEC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BDD00, &qword_1AE242340);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v21 - v14;
  v16 = sub_1AE23D1BC();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  v17 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  (*(v10 + 16))(&v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v9);
  v18 = (*(v10 + 80) + 64) & ~*(v10 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  *(v19 + 4) = a4;
  *(v19 + 5) = a5;
  *(v19 + 6) = v21;
  *(v19 + 7) = v17;
  (*(v10 + 32))(&v19[v18], &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  sub_1AE217F10(0, 0, v15, &unk_1AE251478, v19);
}

uint64_t sub_1AE00C140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AE00C164, 0, 0);
}

uint64_t sub_1AE00C164()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AE00C228, Strong, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_1AE00C228()
{
  v1 = *(v0 + 64);
  sub_1AE00C2C0(*(v0 + 56));

  return MEMORY[0x1EEE6DFA0](sub_1AE00C298, 0, 0);
}

uint64_t sub_1AE00C2C0(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  swift_getAssociatedConformanceWitness();
  type metadata accessor for Capsule();
  v6 = sub_1AE23D21C();
  v7 = sub_1AE23D7CC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v17 - v9;
  v11 = sub_1AE23BFEC();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  (*(v15 + 16))(&v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11, v13);
  (*(*(v6 - 8) + 56))(v10, 1, 1, v6);
  swift_beginAccess();
  sub_1AE00C950();
  sub_1AE23CB1C();
  sub_1AE23CB8C();
  return swift_endAccess();
}

uint64_t sub_1AE00C4CC()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  swift_getAssociatedConformanceWitness();
  type metadata accessor for Capsule();
  v4 = sub_1AE23D1EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v10 - v7);
  swift_checkMetadataState();
  *v8 = 1;
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8640], v4);
  return sub_1AE23D24C();
}

uint64_t sub_1AE00C64C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(*a2 + 80);
  v21 = *(*a2 + 96);
  v6 = *(v4 + 88);
  swift_getAssociatedConformanceWitness();
  type metadata accessor for Capsule();
  v7 = sub_1AE23D21C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v20 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BDD00, &qword_1AE242340);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v20 - v14;
  v16 = sub_1AE23D1BC();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v8 + 16))(v11, a1, v7);
  v17 = (*(v8 + 80) + 64) & ~*(v8 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = 0;
  *(v18 + 3) = 0;
  *(v18 + 4) = v5;
  *(v18 + 5) = v6;
  *(v18 + 6) = v21;
  *(v18 + 7) = a2;
  (*(v8 + 32))(&v18[v17], v11, v7);

  sub_1AE217C10(0, 0, v15, &unk_1AE251488, v18);
}

uint64_t sub_1AE00C8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1AE00C8D4, a4, 0);
}

uint64_t sub_1AE00C8D4()
{
  v1 = v0[2];
  sub_1AE00B9F0(v0[3]);
  v2 = v0[1];

  return v2();
}

unint64_t sub_1AE00C950()
{
  result = qword_1ED96A718;
  if (!qword_1ED96A718)
  {
    sub_1AE23BFEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED96A718);
  }

  return result;
}

uint64_t sub_1AE00C9A8(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = *(sub_1AE23BFEC() - 8);
  v7 = v1[5];
  v8 = v1 + ((*(v6 + 80) + 48) & ~*(v6 + 80));

  return sub_1AE00BEFC(a1, v7, v8, v3, v4, v5);
}

uint64_t sub_1AE00CA40(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = *(sub_1AE23BFEC() - 8);
  v8 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[7];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1ADE74240;

  return sub_1AE00C140(a1, v9, v10, v11, v1 + v8);
}

void *sub_1AE00CB5C()
{
  v1 = *v0;
  swift_defaultActor_initialize();
  v2 = sub_1AE23BFEC();
  v3 = v1[10];
  v4 = v1[12];
  v5 = v1[11];
  swift_getAssociatedConformanceWitness();
  type metadata accessor for Capsule();
  v6 = sub_1AE23D21C();
  swift_getTupleTypeMetadata2();
  v7 = sub_1AE23D05C();
  v8 = sub_1AE00C950();
  v9 = sub_1ADDEAF38(v7, v2, v6, v8);

  v0[14] = v9;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  return v0;
}

void *sub_1AE00CC84()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[12];
  type metadata accessor for AsyncUpdatesActor();
  swift_allocObject();
  return sub_1AE00CB5C();
}

uint64_t sub_1AE00CCD4(uint64_t a1)
{
  v3 = v2;
  v6 = v1[4];
  v5 = v1[5];
  v7 = v1[6];
  swift_getAssociatedConformanceWitness();
  type metadata accessor for Capsule();
  v8 = *(sub_1AE23D21C() - 8);
  v9 = (*(v8 + 80) + 64) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[7];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1ADE744B8;

  return sub_1AE00C8B4(a1, v10, v11, v12, v1 + v9);
}

void (*CROrderedDictionary.index(where:)(uint64_t (*a1)(char *, char *), uint64_t a2, uint64_t a3))(char *, char *, uint64_t)
{
  v50 = a1;
  v51 = a2;
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v65 = *(TupleTypeMetadata2 - 8);
  v8 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v48 = &v39 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v39 = &v39 - v14;
  v15 = swift_getTupleTypeMetadata2();
  v57 = sub_1AE23D7CC();
  v16 = *(v57 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v56 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v55 = (&v39 - v20);
  v21 = v3[1];
  v62 = *v3;
  v63 = v21;
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1B26FB780](v64, a3, WitnessTable);
  v62 = v64[0];
  v63 = v64[1];
  sub_1AE23DC9C();
  sub_1AE23DC6C();
  v23 = v15;
  v24 = sub_1AE23DC8C();
  v53 = (v16 + 32);
  v54 = v24;
  v25 = v39;
  v52 = v23 - 8;
  v46 = v5 - 8;
  v45 = v6 - 8;
  v44 = (v65 + 16);
  v47 = (v65 + 8);
  v49 = v10;
  v42 = v23;
  v43 = v5;
  while (1)
  {
    v26 = v56;
    sub_1AE23DC7C();
    v27 = v55;
    (*v53)(v55, v26, v57);
    v28 = (*(*(v23 - 8) + 48))(v27, 1, v23);
    if (v28 == 1)
    {
      v31 = 0;
      goto LABEL_7;
    }

    v40 = v28;
    v41 = *v27;
    v58 = v27 + *(v23 + 48);
    v65 = *(TupleTypeMetadata2 + 48);
    v60 = *(v5 - 8);
    v59 = *(v60 + 32);
    v29 = v48;
    v59(v48);
    v30 = *(v6 - 8);
    v31 = *(v30 + 32);
    v31(&v29[v65], &v58[v65], v6);
    v58 = *(TupleTypeMetadata2 + 48);
    (v59)(v25, v29, v5);
    v32 = v49;
    v31(&v58[v25], &v29[v65], v6);
    (*v44)(v32, v25, TupleTypeMetadata2);
    v33 = *(TupleTypeMetadata2 + 48);
    v34 = v32;
    v35 = v61;
    v36 = v50(v32, &v32[v33]);
    v61 = v35;
    if (v35)
    {
      break;
    }

    v37 = v36;
    (*v47)(v25, TupleTypeMetadata2);
    (*(v30 + 8))(&v34[v33], v6);
    v5 = v43;
    (*(v60 + 8))(v34, v43);
    v23 = v42;
    if (v37)
    {
      v31 = v41;
LABEL_7:

      return v31;
    }
  }

  (*v47)(v25, TupleTypeMetadata2);

  (*(v30 + 8))(&v32[v33], v6);
  (*(v60 + 8))(v32, v43);
  return v31;
}

uint64_t CROrderedDictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AE017788(a1, a2, a3);
  v5 = *(*(*(a3 + 24) - 8) + 8);

  return v5(a1);
}

BOOL CROrderedDictionary.contains(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_1AE23D7CC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v13 - v8;
  v16 = *(v2 + 8);
  v13[1] = *(a2 + 16);
  v13[2] = v4;
  v10 = *(a2 + 48);
  v14 = *(a2 + 32);
  v15 = v10;
  type metadata accessor for CRDictionary();
  CRDictionary.subscript.getter(v9);
  v11 = (*(*(v4 - 8) + 48))(v9, 1, v4) != 1;
  (*(v6 + 8))(v9, v5);
  return v11;
}

uint64_t CROrderedDictionary.insert(value:forKey:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a3;
  v37 = a1;
  v47 = type metadata accessor for Timestamp(0);
  v7 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47);
  v46 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a4 + 16);
  v38 = *(v9 - 8);
  v10 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v43 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = *(a4 + 32);
  v40 = *(&v49 + 1);
  v41 = v49;
  v44 = type metadata accessor for CROrderedSetElement();
  v42 = *(v44 - 8);
  v13 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v39 = &v37 - v14;
  v15 = *(a4 + 24);
  v16 = sub_1AE23D7CC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v37 - v22;
  *&v24 = v9;
  *(&v24 + 1) = v15;
  v51 = v49;
  v50 = v24;
  v52 = *(a4 + 48);
  v25 = type metadata accessor for CRDictionary();
  *&v49 = v4;
  v45 = a2;
  CRDictionary.subscript.getter(v23);
  v26 = *(v15 - 8);
  v27 = (*(v26 + 48))(v23, 1, v15);
  v28 = *(v17 + 8);
  result = v28(v23, v16);
  if (v27 == 1)
  {
    (*(v26 + 16))(v20, v37, v15);
    (*(v26 + 56))(v20, 0, 1, v15);
    v30 = v49;
    v31 = v45;
    sub_1ADFAEA78(v20, v45, v25);
    v28(v20, v16);
    v32 = v44;
    v33 = type metadata accessor for CRSequence();
    sub_1ADE108AC(v33);
    v34 = v43;
    (*(v38 + 16))(v43, v31, v9);
    *&v50 = *v30;
    v35 = v46;
    sub_1ADE16998(v46);
    *(v35 + *(type metadata accessor for Replica() + 20)) = 0;
    *(v35 + *(v47 + 20)) = 0;
    v36 = v39;
    sub_1ADE0C8B4(v34, v35, v9, v39);
    CRSequence.insert(_:at:)(v36, v48, v33);
    return (*(v42 + 8))(v36, v32);
  }

  return result;
}

uint64_t sub_1AE00D9DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a2;
  v6 = *(a3 + 24);
  v7 = sub_1AE23D7CC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - v13;
  v23 = *(a3 + 16);
  v24 = v6;
  v15 = *(a3 + 48);
  v25 = *(a3 + 32);
  v26 = v15;
  v16 = type metadata accessor for CRDictionary();
  v22 = v3;
  CRDictionary.subscript.getter(v14);
  v17 = *(v6 - 8);
  v18 = (*(v17 + 48))(v14, 1, v6);
  v19 = *(v8 + 8);
  result = v19(v14, v7);
  if (v18 != 1)
  {
    (*(v17 + 16))(v11, v21, v6);
    (*(v17 + 56))(v11, 0, 1, v6);
    sub_1ADFAEA78(v11, a1, v16);
    return v19(v11, v7);
  }

  return result;
}

Swift::Void __swiftcall CROrderedDictionary.move(from:to:)(Swift::Int from, Swift::Int to)
{
  v4 = v2;
  v7 = *(v2 + 16);
  v44 = *(v7 - 8);
  v8 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](from);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Timestamp(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v43 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - v15;
  v17 = *(v4 + 32);
  v41 = *(v4 + 40);
  v42 = v17;
  v18 = type metadata accessor for CROrderedSetElement();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v36 - v24;
  if (from == to)
  {
    return;
  }

  if (__OFSUB__(to, 1))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (to - 1 == from)
  {
    return;
  }

  v36 = to - 1;
  v37 = v23;
  v38 = v10;
  v45 = *v3;
  v26 = type metadata accessor for CRSequence();
  v40 = v11;
  v27 = v26;
  CRSequence.subscript.getter();
  CRSequence.remove(at:)(from);
  v39 = v3;
  v45 = *v3;
  sub_1ADE16998(v16);
  *&v16[*(type metadata accessor for Replica() + 20)] = 0;
  v28 = *(v40 + 20);
  v29 = *&v25[*(v18 + 44) + v28];
  v30 = __OFADD__(v29, 1);
  v31 = v29 + 1;
  if (v30)
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (from >= to)
  {
    v32 = to;
  }

  else
  {
    v32 = v36;
  }

  *&v16[v28] = v31;
  v33 = v38;
  (*(v44 + 16))(v38, v25, v7);
  v34 = v43;
  sub_1ADDF8030(v16, v43, type metadata accessor for Timestamp);
  sub_1ADE0C8B4(v33, v34, v7, v21);
  CRSequence.insert(_:at:)(v21, v32, v27);
  v35 = *(v37 + 8);
  v35(v21, v18);
  sub_1AE017AB8(v16);
  v35(v25, v18);
}

uint64_t CROrderedDictionary.moveOrInsert(value:forKey:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = a3;
  v41 = a1;
  v7 = *(a4 + 24);
  v8 = sub_1AE23D7CC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v37 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v35 - v13;
  v15 = *(a4 + 16);
  v16 = *(a4 + 32);
  v18 = *(a4 + 48);
  v17 = *(a4 + 56);
  v44 = v15;
  v45 = v7;
  v39 = v16;
  v46 = v16;
  v47 = v18;
  v48 = v17;
  v19 = type metadata accessor for CRDictionary();
  v42 = a2;
  v43 = v4;
  v36 = v19;
  CRDictionary.subscript.getter(v14);
  v20 = *(v7 - 8);
  v21 = (*(v20 + 48))(v14, 1, v7);
  v22 = *(v9 + 8);
  v38 = v8;
  v23 = v8;
  v24 = v22;
  v25 = v22(v14, v23);
  if (v21 == 1)
  {
    return CROrderedDictionary.insert(value:forKey:at:)(v41, v42, v40, a4);
  }

  v35 = &v35;
  v44 = *v43;
  MEMORY[0x1EEE9AC00](v25);
  *&v27 = v15;
  *(&v27 + 1) = v7;
  v28 = v39;
  *(&v35 - 4) = v27;
  *(&v35 - 3) = v28;
  *(&v35 - 4) = v18;
  *(&v35 - 3) = v17;
  v29 = v42;
  *(&v35 - 2) = v42;
  type metadata accessor for CROrderedSetElement();
  v30 = type metadata accessor for CRSequence();

  swift_getWitnessTable();
  v31 = sub_1AE1644B0(sub_1AE017F88, (&v35 - 10), v30);
  v33 = v32;

  if ((v33 & 1) == 0)
  {
    CROrderedDictionary.move(from:to:)(v31, v40);
    v34 = v37;
    (*(v20 + 16))(v37, v41, v7);
    (*(v20 + 56))(v34, 0, 1, v7);
    sub_1ADFAEA78(v34, v29, v36);
    return v24(v34, v38);
  }

  return result;
}

uint64_t CROrderedDictionary.append(value:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a1;
  v47 = type metadata accessor for Timestamp(0);
  v6 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47);
  v46 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a3 + 16);
  v38 = *(v8 - 8);
  v9 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v48 = *(a3 + 32);
  v42 = v48;
  v43 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = *(&v48 + 1);
  v44 = type metadata accessor for CROrderedSetElement();
  v40 = *(v44 - 8);
  v12 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v39 = &v36 - v13;
  v14 = *(a3 + 24);
  v15 = sub_1AE23D7CC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v36 - v21;
  *&v23 = v8;
  *(&v23 + 1) = v14;
  v50 = v48;
  v49 = v23;
  v51 = *(a3 + 48);
  v24 = type metadata accessor for CRDictionary();
  *&v48 = v3;
  v45 = a2;
  CRDictionary.subscript.getter(v22);
  v25 = *(v14 - 8);
  v26 = (*(v25 + 48))(v22, 1, v14);
  v27 = *(v16 + 8);
  result = v27(v22, v15);
  if (v26 == 1)
  {
    (*(v25 + 16))(v19, v37, v14);
    (*(v25 + 56))(v19, 0, 1, v14);
    v29 = v48;
    v30 = v45;
    sub_1ADFAEA78(v19, v45, v24);
    v27(v19, v15);
    v31 = v44;
    v32 = type metadata accessor for CRSequence();
    sub_1ADE108AC(v32);
    v33 = v43;
    (*(v38 + 16))(v43, v30, v8);
    *&v49 = *v29;
    v34 = v46;
    sub_1ADE16998(v46);
    *(v34 + *(type metadata accessor for Replica() + 20)) = 0;
    *(v34 + *(v47 + 20)) = 0;
    v35 = v39;
    sub_1ADE0C8B4(v33, v34, v8, v39);
    CRSequence.append(_:)(v35, v32);
    return (*(v40 + 8))(v35, v31);
  }

  return result;
}

uint64_t CROrderedDictionary.moveOrAppend(value:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = a1;
  v6 = *(a3 + 24);
  v7 = sub_1AE23D7CC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v41 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - v12;
  v14 = *(a3 + 16);
  v15 = *(a3 + 32);
  v17 = *(a3 + 48);
  v16 = *(a3 + 56);
  v47 = v14;
  v48 = v6;
  v44 = v15;
  v49 = v15;
  v50 = v17;
  v51 = v16;
  v43 = v16;
  v18 = type metadata accessor for CRDictionary();
  v19 = v3;
  v46 = a2;
  v40 = v18;
  CRDictionary.subscript.getter(v13);
  v39 = *(v6 - 8);
  v20 = (*(v39 + 48))(v13, 1, v6);
  v21 = *(v8 + 8);
  v42 = v8 + 8;
  v21(v13, v7);
  if (v20 == 1)
  {
    return CROrderedDictionary.append(value:forKey:)(v45, v46, a3);
  }

  v37 = v21;
  v23 = v19;
  v24 = v19[1];
  v47 = *v19;
  v48 = v24;
  v25 = CROrderedDictionary.count.getter(a3);
  v38 = &v36;
  v47 = *v23;
  MEMORY[0x1EEE9AC00](v25);
  *&v26 = v14;
  *(&v26 + 1) = v6;
  v27 = v44;
  *(&v36 - 4) = v26;
  *(&v36 - 3) = v27;
  v28 = v43;
  *(&v36 - 4) = v17;
  *(&v36 - 3) = v28;
  v29 = v46;
  *(&v36 - 2) = v46;
  type metadata accessor for CROrderedSetElement();
  v30 = type metadata accessor for CRSequence();

  swift_getWitnessTable();
  v31 = sub_1AE1644B0(sub_1AE017F88, (&v36 - 10), v30);
  v33 = v32;

  if ((v33 & 1) == 0)
  {
    CROrderedDictionary.move(from:to:)(v31, v25);
    v34 = v39;
    v35 = v41;
    (*(v39 + 16))(v41, v45, v6);
    (*(v34 + 56))(v35, 0, 1, v6);
    sub_1ADFAEA78(v35, v29, v40);
    return v37(v35, v7);
  }

  return result;
}

void *sub_1AE00E9E4(uint64_t a1, void *a2)
{
  v87 = a1;
  v4 = *v2;
  v56 = v2[1];
  if (qword_1ED967F98 != -1)
  {
    swift_once();
  }

  v5 = off_1ED967FA0;
  v83 = v4;
  v6 = a2[2];
  v8 = a2[4];
  v7 = a2[5];
  type metadata accessor for CROrderedSetElement();
  v9 = type metadata accessor for CRSequence();

  sub_1AE1650E8(v87, v84);
  if (v57)
  {
    goto LABEL_7;
  }

  v50 = a2;
  v52 = v6;
  v53 = v7;
  v57 = v8;
  v54 = v9;
  v10 = v87;
  v55 = v4;

  v51 = 0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for Proto_OrderedSet._StorageClass();
    swift_allocObject();
    v11 = sub_1AE1D0514(v5);

    v5 = v11;
  }

  v49 = v5;
  v78 = v84[4];
  v79 = v84[5];
  v80 = v85;
  v74 = v84[0];
  v75 = v84[1];
  v76 = v84[2];
  v77 = v84[3];
  swift_beginAccess();
  v82 = v5[24];
  v12 = *(v5 + 11);
  v81[4] = *(v5 + 10);
  v81[5] = v12;
  v13 = *(v5 + 7);
  v81[0] = *(v5 + 6);
  v81[1] = v13;
  v14 = *(v5 + 9);
  v81[2] = *(v5 + 8);
  v81[3] = v14;
  v15 = v75;
  *(v5 + 6) = v74;
  *(v5 + 7) = v15;
  v16 = v76;
  v17 = v77;
  v18 = v78;
  v19 = v79;
  v5[24] = v80;
  *(v5 + 10) = v18;
  *(v5 + 11) = v19;
  *(v5 + 8) = v16;
  *(v5 + 9) = v17;
  sub_1ADDCEDE0(v81, &qword_1EB5BCC28, &unk_1AE251820);
  v73 = v56;
  v20 = *(v10 + 16);

  v48 = sub_1AE16CC2C();
  *&v64 = v55;
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1B26FB7B0](&v59, v54, WitnessTable);
  v69 = v59;
  v21 = swift_allocObject();
  v22 = v50;
  v56 = v50[3];
  v23 = v56;
  v24 = v52;
  v5 = v53;
  v21[2] = v52;
  v21[3] = v23;
  v21[4] = v57;
  v21[5] = v5;
  v26 = v22[6];
  v25 = v22[7];
  v21[6] = v26;
  v21[7] = v25;
  sub_1AE23DA5C();
  swift_getWitnessTable();
  sub_1AE23DCFC();

  v69 = v71;
  v70 = v72;
  *&v64 = v24;
  *(&v64 + 1) = v56;
  *&v65 = v57;
  *(&v65 + 1) = v5;
  *&v66 = v26;
  *(&v66 + 1) = v25;
  v27 = type metadata accessor for CRDictionary();
  v28 = v87;
  v29 = sub_1AE23DB7C();
  v30 = swift_getWitnessTable();
  sub_1ADFAD9A8(v48, v28, &v69, v27, v29, v30, v86);

  sub_1AE017EE4(v69, v70);
  if (v51)
  {
LABEL_7:
  }

  else
  {
    v51 = v25;

    v5 = v49;
    v46 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      type metadata accessor for Proto_OrderedSet._StorageClass();
      swift_allocObject();
      v32 = sub_1AE1D0514(v49);

      v5 = v32;
    }

    v34 = v53;
    v33 = v54;
    v35 = v57;
    v61 = v86[2];
    v62 = v86[3];
    v63 = v86[4];
    v59 = v86[0];
    v60 = v86[1];
    swift_beginAccess();
    v36 = *(v5 + 2);
    v37 = *(v5 + 3);
    v38 = *(v5 + 5);
    v67 = *(v5 + 4);
    v68 = v38;
    v65 = v36;
    v66 = v37;
    v64 = *(v5 + 1);
    v39 = v63;
    *(v5 + 1) = v59;
    *(v5 + 4) = v62;
    *(v5 + 5) = v39;
    v40 = v61;
    *(v5 + 2) = v60;
    *(v5 + 3) = v40;
    sub_1ADDCEDE0(&v64, &qword_1EB5BCC30, &qword_1AE2580D0);
    v58 = v55;
    MEMORY[0x1EEE9AC00](v55);
    v45[2] = v52;
    v45[3] = v56;
    v45[4] = v35;
    v45[5] = v34;
    v45[6] = v46;
    v45[7] = v51;
    v45[8] = v28;

    v41 = sub_1AE165268(sub_1AE017F28, v45, v33, &type metadata for Proto_Timestamp);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      type metadata accessor for Proto_OrderedSet._StorageClass();
      swift_allocObject();
      v42 = sub_1AE1D0514(v5);

      v5 = v42;
    }

    swift_beginAccess();
    v43 = v5[25];
    v5[25] = v41;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      type metadata accessor for Proto_OrderedSet._StorageClass();
      swift_allocObject();
      v44 = sub_1AE1D0514(v5);

      v5 = v44;
    }

    swift_beginAccess();
    v5[26] = 1;
    *(v5 + 216) = 1;
  }

  return v5;
}

uint64_t sub_1AE00F014(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];
      sub_1ADDD86D8(*v10, v12);
      sub_1ADDE0110(v13, v11, v12);
      result = sub_1ADDCC35C(v13[0], v13[1]);
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

Swift::Void __swiftcall CROrderedDictionary.remove(at:)(Swift::Int at)
{
  v28 = at;
  v3 = *(v1 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](at);
  v25 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v7 + 32);
  v8 = v7;
  v24 = v7;
  v9 = type metadata accessor for CROrderedSetElement();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v22 - v12;
  v23 = *(v8 + 24);
  v26 = sub_1AE23D7CC();
  v14 = *(v26 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v17 = &v22 - v16;
  v32 = *v2;
  v22 = type metadata accessor for CRSequence();
  v18 = v28;
  CRSequence.subscript.getter();
  v19 = v25;
  (*(v4 + 16))(v25, v13, v3);
  (*(v10 + 8))(v13, v9);
  *&v20 = v3;
  *(&v20 + 1) = v23;
  v30 = v27;
  v29 = v20;
  v31 = *(v24 + 48);
  v21 = type metadata accessor for CRDictionary();
  CRDictionary.removeValue(forKey:)(v19, v21, v17);
  (*(v4 + 8))(v19, v3);
  (*(v14 + 8))(v17, v26);
  CRSequence.remove(at:)(v18);
}

uint64_t CROrderedDictionary.merge(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, _WORD *a3@<X8>)
{
  v133 = a3;
  v177 = sub_1AE23BFFC();
  v132 = *(v177 - 8);
  v5 = *(v132 + 64);
  MEMORY[0x1EEE9AC00](v177);
  v176 = &v127 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BCA88, &qword_1AE251490);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v129 = &v127 - v9;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BCA90, &qword_1AE251498);
  v10 = *(*(v131 - 8) + 64);
  MEMORY[0x1EEE9AC00](v131);
  v12 = &v127 - v11;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB7C0, &unk_1AE2514A0);
  v13 = *(*(v159 - 8) + 64);
  MEMORY[0x1EEE9AC00](v159);
  v166 = &v127 - v14;
  v15 = *(a2 + 16);
  v175 = *(a2 + 32);
  v171 = *(&v175 + 1);
  v16 = v15;
  v17 = type metadata accessor for CROrderedSetElement();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v165 = sub_1AE23D7CC();
  v128 = *(v165 - 8);
  v19 = *(v128 + 64);
  MEMORY[0x1EEE9AC00](v165);
  v164 = &v127 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v163 = (&v127 - v22);
  v130 = sub_1AE23C12C();
  v136 = *(v130 - 8);
  v23 = *(v136 + 64);
  MEMORY[0x1EEE9AC00](v130);
  v154 = &v127 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = *(v16 - 8);
  v25 = *(v150 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v141 = &v127 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA480, &qword_1AE25AAE0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v148 = &v127 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v169 = &v127 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v168 = &v127 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v142 = &v127 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v140 = &v127 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v146 = &v127 - v40;
  v41 = type metadata accessor for Timestamp(0);
  v135 = *(v41 - 8);
  v42 = *(v135 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v143 = &v127 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v145 = &v127 - v45;
  v46 = *(a2 + 24);
  v161 = sub_1AE23D7CC();
  v151 = *(v161 - 1);
  v47 = *(v151 + 64);
  MEMORY[0x1EEE9AC00](v161);
  v160 = &v127 - v48;
  v170 = v17;
  v134 = *(v17 - 8);
  v49 = *(v134 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v174 = &v127 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52);
  v172 = &v127 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v147 = &v127 - v55;
  v56 = a1[1];
  *&v181[0] = *a1;
  v57 = type metadata accessor for CRSequence();

  v58 = v178;
  CRSequence.merge(_:)(v181, v57, &v183);

  v182 = v56;
  *&v59 = v16;
  *(&v59 + 1) = v46;
  v181[1] = v175;
  v181[0] = v59;
  v181[2] = *(a2 + 48);
  v157 = type metadata accessor for CRDictionary();
  CRDictionary.merge(_:)(&v182, v157, v181);

  LOWORD(v182) = v181[0];
  BYTE2(v182) = BYTE2(v181[0]);
  v60 = &v182;
  MergeResult.merge(_:)(v60);
  v182 = sub_1AE23C9CC();
  *&v181[0] = *v58;
  CRSequence.count.getter();
  v173 = v16;
  v167 = v41;
  v139 = sub_1AE23CB1C();
  sub_1AE23CA3C();
  v61 = v170;
  *&v181[0] = *v58;
  *&v175 = v57;
  v62 = v57;
  v63 = v147;
  v64 = sub_1ADDEF6DC(v62);
  v179 = 0;
  v180 = v64;
  v162 = v64;
  if (sub_1AE23D0AC())
  {
    v156 = sub_1AE23D11C();
    v65 = 0;
    v155 = (v134 + 16);
    v153 = (v134 + 32);
    v152 = v46 - 8;
    v151 += 8;
    v149 = (v135 + 48);
    v138 = (v150 + 16);
    v137 = (v135 + 56);
    v150 = v134 + 8;
    v144 = v46;
    while (1)
    {
      v66 = v156;
      swift_getWitnessTable();
      v67 = sub_1ADE5E0E4(v181, &v179, v66);
      (*v155)(v63);
      result = (v67)(v181, 0);
      v69 = v65 + 1;
      if (__OFADD__(v65, 1))
      {
        __break(1u);
        return result;
      }

      v179 = v65 + 1;
      v70 = v172;
      (*v153)(v172, v63, v61);
      v71 = v160;
      CRDictionary.subscript.getter(v160);
      if ((*(*(v46 - 8) + 48))(v71, 1, v46) != 1)
      {
        break;
      }

      (*v150)(v70, v61);
      (*v151)(v71, v161);
LABEL_4:
      ++v65;
      if (v69 == sub_1AE23D0AC())
      {
        goto LABEL_21;
      }
    }

    (*v151)(v71, v161);
    v72 = v146;
    v73 = v167;
    sub_1AE23CB7C();
    v74 = *v149;
    if ((*v149)(v72, 1, v73) == 1)
    {
      sub_1ADDCEDE0(v72, &qword_1EB5BA480, &qword_1AE25AAE0);
      goto LABEL_13;
    }

    v75 = v145;
    sub_1AE017B14(v72, v145);
    v76 = &v70[*(v170 + 44)];
    v77 = *(v73 + 20);
    v78 = *(v75 + v77);
    v79 = *(v76 + v77);
    v80 = v78 < v79;
    if (v78 == v79 && (v81 = *(type metadata accessor for Replica() + 20), v82 = *(v75 + v81), v83 = *(v76 + v81), v80 = v82 < v83, v82 == v83))
    {
      v84 = sub_1ADF5EB00();
      v46 = v144;
      if ((v84 & 1) == 0)
      {
LABEL_12:
        sub_1AE017AB8(v145);
LABEL_13:
        v85 = v142;
        v86 = v172;
        sub_1AE23CB7C();
        if (v74(v85, 1, v73) == 1)
        {
          sub_1ADDCEDE0(v85, &qword_1EB5BA480, &qword_1AE25AAE0);
          (*v138)(v141, v86, v173);
          v61 = v170;
          v87 = v140;
          sub_1ADDF8030(&v86[*(v170 + 44)], v140, type metadata accessor for Timestamp);
          (*v137)(v87, 0, 1, v73);
          v46 = v144;
          sub_1AE23CB8C();
          (*v150)(v86, v61);
        }

        else
        {
          v61 = v170;
          (*v150)(v86, v170);
          sub_1ADDCEDE0(v85, &qword_1EB5BA480, &qword_1AE25AAE0);
        }

        goto LABEL_20;
      }
    }

    else
    {
      v46 = v144;
      if (!v80)
      {
        goto LABEL_12;
      }
    }

    v88 = v172;
    (*v138)(v141, v172, v173);
    v89 = v140;
    sub_1ADDF8030(v76, v140, type metadata accessor for Timestamp);
    (*v137)(v89, 0, 1, v73);
    sub_1AE23CB8C();
    sub_1AE017AB8(v145);
    v61 = v170;
    (*v150)(v88, v170);
LABEL_20:
    v63 = v147;
    goto LABEL_4;
  }

LABEL_21:

  sub_1AE23C11C();
  *&v181[0] = *v178;
  v179 = sub_1ADDEF6DC(v175);
  v90 = sub_1AE23D11C();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1B26FB780](&v180, v90, WitnessTable);

  v179 = v180;
  sub_1AE23DC9C();
  sub_1AE23DC6C();
  v162 = sub_1AE23DC8C();
  v161 = (v128 + 32);
  v160 = TupleTypeMetadata2 - 8;
  v157 = (v134 + 32);
  v156 = (v135 + 56);
  v92 = (v135 + 48);
  v155 = (v134 + 8);
  v158 = TupleTypeMetadata2;
  while (1)
  {
    v93 = v164;
    sub_1AE23DC7C();
    v94 = v163;
    (*v161)(v163, v93, v165);
    if ((*(*(TupleTypeMetadata2 - 8) + 48))(v94, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v172 = *v94;
    v95 = v94 + *(TupleTypeMetadata2 + 48);
    v96 = v174;
    (*v157)(v174, v95, v61);
    v97 = v168;
    v98 = v167;
    sub_1AE23CB7C();
    v99 = &v96[*(v61 + 44)];
    v100 = v169;
    sub_1ADDF8030(v99, v169, type metadata accessor for Timestamp);
    (*v156)(v100, 0, 1, v98);
    v101 = *(v159 + 48);
    v102 = v166;
    sub_1ADDCEE40(v97, v166, &qword_1EB5BA480, &qword_1AE25AAE0);
    sub_1ADDCEE40(v100, v102 + v101, &qword_1EB5BA480, &qword_1AE25AAE0);
    v103 = *v92;
    if ((*v92)(v102, 1, v98) == 1)
    {
      sub_1ADDCEDE0(v100, &qword_1EB5BA480, &qword_1AE25AAE0);
      sub_1ADDCEDE0(v97, &qword_1EB5BA480, &qword_1AE25AAE0);
      if (v103(v102 + v101, 1, v98) == 1)
      {
        sub_1ADDCEDE0(v102, &qword_1EB5BA480, &qword_1AE25AAE0);
        v61 = v170;
        TupleTypeMetadata2 = v158;
        goto LABEL_23;
      }

      goto LABEL_30;
    }

    v104 = v148;
    sub_1ADDCEE40(v102, v148, &qword_1EB5BA480, &qword_1AE25AAE0);
    if (v103(v102 + v101, 1, v98) == 1)
    {
      sub_1ADDCEDE0(v169, &qword_1EB5BA480, &qword_1AE25AAE0);
      sub_1ADDCEDE0(v168, &qword_1EB5BA480, &qword_1AE25AAE0);
      sub_1AE017AB8(v104);
LABEL_30:
      v105 = v102;
      v106 = &qword_1EB5BB7C0;
      v107 = &unk_1AE2514A0;
      goto LABEL_36;
    }

    v108 = v143;
    sub_1AE017B14(v102 + v101, v143);
    v109 = v104;
    if (*(v104 + *(v98 + 20)) == *(v108 + *(v98 + 20)))
    {
      v110 = type metadata accessor for Replica();
      if (*(v104 + *(v110 + 20)) == *(v108 + *(v110 + 20)))
      {
        v111 = sub_1AE23BF8C();
        sub_1AE017AB8(v108);
        sub_1ADDCEDE0(v169, &qword_1EB5BA480, &qword_1AE25AAE0);
        sub_1ADDCEDE0(v168, &qword_1EB5BA480, &qword_1AE25AAE0);
        sub_1AE017AB8(v109);
        sub_1ADDCEDE0(v166, &qword_1EB5BA480, &qword_1AE25AAE0);
        v61 = v170;
        TupleTypeMetadata2 = v158;
        if (v111)
        {
          goto LABEL_23;
        }

        goto LABEL_37;
      }
    }

    sub_1AE017AB8(v108);
    sub_1ADDCEDE0(v169, &qword_1EB5BA480, &qword_1AE25AAE0);
    sub_1ADDCEDE0(v168, &qword_1EB5BA480, &qword_1AE25AAE0);
    sub_1AE017AB8(v104);
    v105 = v166;
    v106 = &qword_1EB5BA480;
    v107 = &qword_1AE25AAE0;
LABEL_36:
    sub_1ADDCEDE0(v105, v106, v107);
    v61 = v170;
    TupleTypeMetadata2 = v158;
LABEL_37:
    sub_1AE23C08C();
LABEL_23:
    (*v155)(v174, v61);
  }

  v112 = v136;
  v113 = *(v136 + 16);
  v114 = v129;
  v115 = v130;
  v113(v129, v154, v130);
  v113(v12, v114, v115);
  v116 = *(v131 + 36);
  sub_1AE017B78(&qword_1ED967148, MEMORY[0x1E6969B50]);
  sub_1AE23D46C();
  v117 = *(v112 + 8);
  v136 = v112 + 8;
  v174 = v117;
  (v117)(v114, v115);
  v118 = (v132 + 8);
  v119 = v176;
  while (1)
  {
    sub_1AE23D41C();
    sub_1AE017B78(&qword_1ED967158, MEMORY[0x1E6969B18]);
    v120 = v177;
    v121 = sub_1AE23CCBC();
    (*v118)(v119, v120);
    if (v121)
    {
      break;
    }

    sub_1AE017B78(qword_1EB5BCA98, MEMORY[0x1E6969B50]);
    sub_1AE23CBDC();
    v122 = sub_1AE23D51C();
    v124 = *v123;
    v122(v181, 0);
    CRSequence.remove(at:)(v124);
  }

  sub_1ADDCEDE0(v12, &qword_1EB5BCA90, &qword_1AE251498);
  (v174)(v154, v115);
  v125 = v184;
  v126 = v133;
  *v133 = v183;
  *(v126 + 2) = v125;
}

uint64_t CROrderedDictionary.newRefs(from:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *v2;
  v17 = v2[1];
  v16 = v5;
  v7 = *(a2 + 32);
  v8 = *(a2 + 56);

  v15 = *(a2 + 16);
  v14 = *(a2 + 40);
  v9 = type metadata accessor for CRDictionary();
  v10 = CRDictionary.newRefs(from:)(&v16, v9);

  v17 = v6;
  v16 = v4;
  type metadata accessor for CROrderedSetElement();
  v11 = type metadata accessor for CRSequence();
  v12 = CRSequence.newRefs(from:)(&v16, v11);

  sub_1AE00F014(v12);
  return v10;
}

id CROrderedDictionary.count.getter(void *a1)
{
  v6 = *v1;
  v2 = a1[2];
  v3 = a1[4];
  v4 = a1[5];
  type metadata accessor for CROrderedSetElement();
  type metadata accessor for CRSequence();
  return CRSequence.count.getter();
}

Swift::Bool __swiftcall CROrderedDictionary.needToFinalizeTimestamps()()
{
  v2 = v0;
  v3 = *v1;
  v10 = v1[1];
  v4 = *(v0 + 32);
  v5 = *(v0 + 56);

  v9 = *(v2 + 16);
  v8 = *(v2 + 40);
  type metadata accessor for CRDictionary();
  LOBYTE(v5) = CRDictionary.needToFinalizeTimestamps()();

  if (v5)
  {
    return 1;
  }

  else
  {
    type metadata accessor for CROrderedSetElement();
    type metadata accessor for CRSequence();

    v6 = CRSequence.needToFinalizeTimestamps()();
  }

  return v6;
}

uint64_t CROrderedDictionary.finalizeTimestamps(_:)(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 24);
  v5 = *(a2 + 16);
  v10 = *(a2 + 32);
  type metadata accessor for CROrderedSetElement();
  v6 = type metadata accessor for CRSequence();
  CRSequence.finalizeTimestamps(_:)(a1, v6);
  v7 = *v4;
  v11 = *(a2 + 48);
  v8 = type metadata accessor for CRDictionary();
  return CRDictionary.finalizeTimestamps(_:)(a1, v8);
}

uint64_t CROrderedDictionary.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a1;
  v26 = a3;
  v5 = *(a2 + 24);
  v6 = sub_1AE23D7CC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v30 = &v26 - v8;
  v9 = *(a2 + 16);
  v29 = *(v9 - 8);
  v10 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(a2 + 32);
  v14 = type metadata accessor for CROrderedSetElement();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v26 - v17;
  v19 = *v3;
  v27 = v3[1];
  *&v32 = v19;
  type metadata accessor for CRSequence();
  v20 = CRSequence.count.getter();
  result = v31;
  if (v20 <= v31)
  {
    __break(1u);
  }

  else
  {
    v36 = v19;
    CRSequence.subscript.getter();
    v22 = v29;
    (*(v29 + 16))(v13, v18, v9);
    (*(v15 + 8))(v18, v14);
    v35 = v27;
    *&v23 = v9;
    *(&v23 + 1) = v5;
    v32 = v23;
    v33 = v28;
    v34 = *(a2 + 48);
    type metadata accessor for CRDictionary();
    v24 = v30;
    CRDictionary.subscript.getter(v30);
    v25 = *(v5 - 8);
    result = (*(v25 + 48))(v24, 1, v5);
    if (result != 1)
    {
      (*(v22 + 8))(v13, v9);
      return (*(v25 + 32))(v26, v24, v5);
    }
  }

  __break(1u);
  return result;
}

uint64_t CROrderedDictionary.remove(atOffsets:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB4C0, &unk_1AE2514B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v60 = v59 - v6;
  v59[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB4C8, &unk_1AE24C640);
  v7 = *(*(v59[0] - 8) + 64);
  MEMORY[0x1EEE9AC00](v59[0]);
  v9 = v59 - v8;
  v10 = *(a2 + 16);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v71 = v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = *(a2 + 32);
  v77 = type metadata accessor for CROrderedSetElement();
  v15 = *(v77 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v69 = v59 - v17;
  v73 = a2;
  v18 = *(a2 + 24);
  v68 = sub_1AE23D7CC();
  v61 = *(v68 - 8);
  v19 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v67 = v59 - v20;
  v76 = sub_1AE23BFFC();
  v74 = *(v76 - 8);
  v21 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v76);
  v75 = v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA490, &qword_1AE2514C0);
  v24 = v23 - 8;
  v25 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = v59 - v26;
  v59[1] = a1;
  sub_1AE23C01C();
  v28 = *(v24 + 44);
  v29 = sub_1AE23C12C();
  v30 = sub_1AE017B78(&qword_1ED967148, MEMORY[0x1E6969B50]);
  v74 += 8;
  v65 = (v11 + 16);
  v64 = (v15 + 8);
  v63 = (v11 + 8);
  v72 = v10;
  *&v31 = v10;
  *(&v31 + 1) = v18;
  v62 = v31;
  v61 += 8;
  v66 = v29;
  while (1)
  {
    v32 = v75;
    sub_1AE23D46C();
    sub_1AE017B78(&qword_1ED967158, MEMORY[0x1E6969B18]);
    v33 = v76;
    v34 = sub_1AE23CCBC();
    (*v74)(v32, v33);
    if (v34)
    {
      break;
    }

    v35 = sub_1AE23D51C();
    v37 = *v36;
    v35(v79, 0);
    sub_1AE23D47C();
    v38 = v77;
    v80 = *v78;
    type metadata accessor for CRSequence();
    v39 = v27;
    v40 = v30;
    v41 = v69;
    CRSequence.subscript.getter();
    v42 = v28;
    v44 = v71;
    v43 = v72;
    (*v65)(v71, v41, v72);
    v45 = v41;
    v30 = v40;
    v27 = v39;
    (*v64)(v45, v38);
    v79[0] = v62;
    v79[1] = v70;
    v79[2] = *(v73 + 48);
    v46 = type metadata accessor for CRDictionary();
    v47 = v67;
    CRDictionary.removeValue(forKey:)(v44, v46, v67);
    v48 = v44;
    v28 = v42;
    (*v63)(v48, v43);
    (*v61)(v47, v68);
  }

  sub_1ADDCEDE0(v27, &qword_1EB5BA490, &qword_1AE2514C0);
  v49 = v60;
  sub_1AE23C10C();
  v50 = sub_1AE23C0EC();
  v51 = *(v50 - 8);
  (*(v51 + 16))(v9, v49, v50);
  v52 = *(v59[0] + 36);
  sub_1AE017B78(&qword_1ED96A708, MEMORY[0x1E6969B30]);
  sub_1AE23D46C();
  (*(v51 + 8))(v49, v50);
  sub_1AE23D41C();
  if (*&v9[v52] != *&v79[0])
  {
    sub_1AE017B78(&qword_1EB5BB4E0, MEMORY[0x1E6969B30]);
    do
    {
      sub_1AE23CBDC();
      v53 = sub_1AE23D51C();
      v55 = *v54;
      v56 = v54[1];
      v53(v79, 0);
      v57 = type metadata accessor for CRSequence();
      CRSequence.removeSubrange(_:)(v55, v56, v57);
      sub_1AE23D41C();
    }

    while (*&v9[v52] != *&v79[0]);
  }

  return sub_1ADDCEDE0(v9, &qword_1EB5BB4C8, &unk_1AE24C640);
}

void sub_1AE011700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v82 = a4;
  v81 = a3;
  v101 = *(a5 + 16);
  v15 = v101;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v16 = sub_1AE23D7CC();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v102 = &v74 - v18;
  v78 = a8;
  v19 = *(a8 + 8);
  v75 = a9;
  v20 = *(a9 + 8);
  *&v105 = a6;
  *(&v105 + 1) = a7;
  *&v106 = v19;
  *(&v106 + 1) = v20;
  v77 = sub_1AE23DA9C();
  v21 = *(*(v77 - 8) + 64);
  MEMORY[0x1EEE9AC00](v77);
  v76 = &v74 - v22;
  v83 = a6;
  *&v105 = a6;
  *(&v105 + 1) = a7;
  v84 = a7;
  v80 = v19;
  *&v106 = v19;
  *(&v106 + 1) = v20;
  v79 = v20;
  v99 = sub_1AE23DA8C();
  v85 = *(v99 - 8);
  v23 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v99);
  v98 = &v74 - v24;
  v97 = *(v15 - 8);
  v25 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v74 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = a5;
  v95 = v15;
  v100 = *(a5 + 32);
  v96 = type metadata accessor for CROrderedSetElement();
  v29 = *(v96 - 1);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v96);
  v32 = &v74 - v31;
  v86 = *(&v15 + 1);
  v33 = sub_1AE23D7CC();
  v74 = *(v33 - 8);
  v34 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v93 = &v74 - v35;
  v87 = a1;
  if (a1 == a2)
  {
    goto LABEL_6;
  }

  v36 = v87;
  if (a2 < v87)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v87 >= a2)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v91 = *v104;
  v90 = type metadata accessor for CRSequence();
  v89 = (v97 + 16);
  v88 = (v29 + 8);
  v37 = (v97 + 8);
  v38 = (v74 + 8);
  v39 = v36;
  do
  {
    v40 = v39 + 1;
    v108 = v91;
    CRSequence.subscript.getter();
    v41 = a2;
    v42 = v33;
    v43 = v95;
    (*v89)(v28, v32, v95);
    (*v88)(v32, v96);
    v105 = v101;
    v106 = v100;
    v107 = *(v94 + 48);
    v44 = type metadata accessor for CRDictionary();
    v45 = v32;
    v46 = v93;
    CRDictionary.removeValue(forKey:)(v28, v44, v93);
    v47 = v43;
    v33 = v42;
    a2 = v41;
    (*v37)(v28, v47);
    v48 = v46;
    v32 = v45;
    (*v38)(v48, v33);
    v39 = v40;
  }

  while (v41 != v40);
LABEL_6:
  v92 = v33;
  v49 = v96;
  v90 = type metadata accessor for CRSequence();
  v50 = v104;
  v51 = sub_1ADE108AC(v90);
  MEMORY[0x1EEE9AC00](v51);
  v52 = v100;
  *(&v74 - 6) = v101;
  v53 = v83;
  v54 = v84;
  *(&v74 - 10) = v83;
  *(&v74 - 9) = v54;
  *(&v74 - 4) = v52;
  v55 = *(v94 + 56);
  v94 = *(v94 + 48);
  *(&v74 - 6) = v94;
  *(&v74 - 5) = v55;
  v91 = v55;
  v56 = v78;
  v57 = v75;
  *(&v74 - 4) = v78;
  *(&v74 - 3) = v57;
  *(&v74 - 2) = v50;
  *&v105 = sub_1ADE08EB0(sub_1AE017E68, (&v74 - 14), v53, v49, MEMORY[0x1E69E73E0], v56, MEMORY[0x1E69E7410], v58);
  v59 = sub_1AE23D11C();
  WitnessTable = swift_getWitnessTable();
  CRSequence.replaceSubrange<A>(_:with:)(v87, a2, &v105, v90, v59, WitnessTable);

  sub_1AE23E25C();
  sub_1AE23DA6C();
  v61 = v102;
  sub_1AE23DA7C();
  v62 = *(*(TupleTypeMetadata2 - 8) + 48);
  v63 = v62(v61, 1);
  v64 = v95;
  v65 = v86;
  v66 = v97;
  v67 = v93;
  if (v63 != 1)
  {
    v96 = *(v97 + 32);
    v90 = v86 - 8;
    v97 += 32;
    v68 = (v66 + 8);
    v69 = (v74 + 8);
    do
    {
      v70 = *(TupleTypeMetadata2 + 48);
      v96(v28, v61, v64);
      v71 = v64;
      v72 = *(v65 - 8);
      (*(v72 + 32))(v67, &v102[v70], v65);
      (*(v72 + 56))(v67, 0, 1, v65);
      v64 = v71;
      v61 = v102;
      v105 = v101;
      v106 = v100;
      *&v107 = v94;
      *(&v107 + 1) = v91;
      v73 = type metadata accessor for CRDictionary();
      sub_1ADFAEA78(v67, v28, v73);
      (*v68)(v28, v64);
      (*v69)(v67, v92);
      sub_1AE23DA7C();
    }

    while ((v62)(v61, 1, TupleTypeMetadata2) != 1);
  }

  (*(v85 + 8))(v98, v99);
}

uint64_t CROrderedDictionary.observableDifference(from:with:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v5 = a1[1];
  v6 = *v4;
  v7 = v4[1];
  v9[2] = *a1;
  v9[3] = v5;
  v9[0] = v6;
  v9[1] = v7;
  return sub_1AE01415C(v9, a2, a3, a4);
}

uint64_t CROrderedDictionary.hasDelta(from:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *v2;
  v7 = v2[1];
  v17 = *a1;
  v8 = *(a2 + 16);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  type metadata accessor for CROrderedSetElement();
  type metadata accessor for CRSequence();
  v11 = sub_1AE164BF0(&v17);
  swift_retain_n();
  swift_retain_n();

  if (v11 && v7 == v5)
  {

    v12 = 0;
  }

  else
  {
    v16 = v5;
    v17 = v7;
    v13 = *(a2 + 24);

    v15 = *(a2 + 48);
    type metadata accessor for CRDictionary();
    LOBYTE(v13) = CRDictionary.hasDelta(from:)(&v16);

    if (v13)
    {

      v12 = 1;
    }

    else
    {
      v17 = v4;
      v12 = CRSequence.hasDelta(from:)(&v17);
    }
  }

  return v12 & 1;
}

uint64_t CROrderedDictionary.actionUndoingDifference(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *v3;
  v22 = v3[1];
  v21 = v7;
  v9 = *(a2 + 32);
  v10 = *(a2 + 56);

  v17 = *(a2 + 16);
  v18 = v9;
  v19 = *(a2 + 40);
  v20 = v10;
  v11 = type metadata accessor for CRDictionary();
  CRDictionary.actionUndoingDifference(from:)(&v21, v11, &v17);

  v12 = v17;
  v22 = v8;
  v21 = v6;
  type metadata accessor for CROrderedSetElement();
  type metadata accessor for CRSequence();
  CRSequence.actionUndoingDifference(from:)(&v21, &v17);

  v14 = v17;
  if (v12 | v17)
  {
    v15 = v12;
  }

  else
  {
    v15 = 1;
  }

  if (v12 | v17)
  {
    v16 = *(&v12 + 1);
  }

  else
  {
    v16 = 0;
  }

  *a3 = v15;
  a3[1] = v16;
  a3[2] = v14;
  return result;
}

void CROrderedDictionary.apply(_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1 != 1)
  {
    v5 = *(a1 + 8);
    v4 = *(a1 + 16);
    v13[0] = v4;
    sub_1ADF5C694(v2, v5, v4);
    v6 = *(a2 + 16);
    v7 = *(a2 + 32);
    v8 = *(a2 + 40);
    type metadata accessor for CROrderedSetElement();
    v9 = type metadata accessor for CRSequence();
    v10 = v4;
    LOBYTE(v9) = sub_1AE16501C(v13, v9);

    if (v9)
    {
      v15[0] = v2;
      v15[1] = v5;
      sub_1ADE42C78(v2);
      v11 = *(a2 + 24);
      v13[0] = v6;
      v13[1] = v11;
      v13[2] = v7;
      v13[3] = v8;
      v14 = *(a2 + 48);
      v12 = type metadata accessor for CRDictionary();
      CRDictionary.apply(_:)(v15, v12);
      sub_1ADE24060(v2, v5, v4);
      sub_1ADE42CB8(v15[0]);
    }

    else
    {

      sub_1ADE24060(v2, v5, v4);
    }
  }
}

BOOL CROrderedDictionary.isDefaultState.getter()
{
  v1 = *(v0 + 8);
  swift_beginAccess();
  return !*(*(v1 + 32) + 16) && *(*(v1 + 24) + 16) == 0;
}

uint64_t CROrderedDictionary.copy(renamingReferences:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  *&v58 = a1;
  v50 = a3;
  v6 = *(a2 + 16);
  v53 = *(v6 - 8);
  v7 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v57 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 24);
  v52 = *(v10 - 8);
  v11 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v56 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v15 = *(TupleTypeMetadata2 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v18 = &v48 - v17;
  v19 = sub_1AE23D7CC();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v48 - v24;
  v26 = *v3;
  v54 = v4[1];
  v27 = *(a2 + 48);
  v28 = *(a2 + 56);
  v63 = *(a2 + 32);
  v55 = v63;
  v49 = v27;
  v62 = v28;
  CROrderedDictionary.init()(v69);
  v29 = *(*v58 + 16);
  v51 = v15;
  v61 = (v15 + 48);
  v30 = v53;
  v60 = (v53 + 32);
  v31 = v52;
  v59 = (v52 + 32);
  if (v29)
  {
    *&v64 = v26;
    *(&v64 + 1) = v54;
    v54 = a2;
    CROrderedDictionary.makeIterator()(a2, v68);
    v53 = v30 + 8;
    v52 = v31 + 8;
    ++v51;
    v32 = v49;
    v33 = v56;
    v34 = v58;
    while (1)
    {
      *&v64 = v6;
      *(&v64 + 1) = v10;
      v65 = v63;
      v66 = v32;
      v67 = v62;
      v35 = type metadata accessor for CROrderedDictionary.Iterator();
      CROrderedDictionary.Iterator.next()(v35, v25);
      if ((*v61)(v25, 1, TupleTypeMetadata2) == 1)
      {
        break;
      }

      v36 = *(TupleTypeMetadata2 + 48);
      (*v60)(v18, v25, v6);
      (*v59)(&v18[v36], &v25[v36], v10);
      (*(*(v32 + 8) + 24))(v34, v10);
      v37 = v10;
      v38 = v57;
      (*(*(v55 + 8) + 24))(v34, v6);
      CROrderedDictionary.append(value:forKey:)(v33, v38, v54);
      v39 = v38;
      v10 = v37;
      (*v53)(v39, v6);
      (*v52)(v33, v37);
      (*v51)(v18, TupleTypeMetadata2);
    }
  }

  else
  {
    *&v64 = v26;
    *(&v64 + 1) = v54;
    CROrderedDictionary.makeIterator()(a2, v68);
    v40 = v51 + 1;
    *&v41 = v6;
    *(&v41 + 1) = v10;
    v58 = v41;
    v42 = v49;
    while (1)
    {
      v64 = v58;
      v65 = v63;
      v66 = v42;
      v67 = v62;
      v43 = type metadata accessor for CROrderedDictionary.Iterator();
      CROrderedDictionary.Iterator.next()(v43, v22);
      if ((*v61)(v22, 1, TupleTypeMetadata2) == 1)
      {
        break;
      }

      v44 = *(TupleTypeMetadata2 + 48);
      (*v60)(v18, v22, v6);
      (*v59)(&v18[v44], &v22[v44], v10);
      CROrderedDictionary.append(value:forKey:)(&v18[v44], v18, a2);
      (*v40)(v18, TupleTypeMetadata2);
    }
  }

  v46 = v50;
  v47 = v69[1];
  *v50 = v69[0];
  v46[1] = v47;
  return result;
}

uint64_t CROrderedDictionary.copy(renamingReferences:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = *v3;
  v6 = v3[1];
  if (a1)
  {
    v8 = a1;
  }

  else
  {
    v8 = sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  v10 = v8;

  CROrderedDictionary.copy(renamingReferences:)(&v10, a2, a3);
}

void CROrderedDictionary.init(_:)(void *a1@<X0>, void *a2@<X8>)
{
  CROrderedDictionary.init()(v5);

  v4 = v5[1];
  *a2 = v5[0];
  a2[1] = v4;
}

void CROrderedDictionary.init(defaultState:)(void *a1@<X8>)
{
  CROrderedDictionary.init()(v3);
  v2 = v3[1];
  *a1 = v3[0];
  a1[1] = v2;
}

uint64_t CROrderedDictionary.merge(_:)(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  return CROrderedDictionary.merge(_:)(v4, a2, &v5);
}

uint64_t sub_1AE012B90@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for Timestamp(0);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*(a3 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17, a1, a3, v15);
  v20[3] = *a2;
  type metadata accessor for CROrderedSetElement();
  type metadata accessor for CRSequence();
  sub_1ADE16998(v12);
  *&v12[*(type metadata accessor for Replica() + 20)] = 0;
  *&v12[*(v9 + 28)] = 0;
  return sub_1ADE0C8B4(v17, v12, a3, a4);
}

void CROrderedDictionary.removeValue(forKey:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v6 = *(a2 + 24);
  v7 = sub_1AE23D7CC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v24 - v10;
  v12 = *(v4 + 16);
  v13 = *(v4 + 32);
  v14 = *(v4 + 48);
  v15 = *(v4 + 56);
  v25 = v12;
  v26 = v6;
  v24[0] = v13;
  v27 = v13;
  v28 = v14;
  v29 = v15;
  v16 = type metadata accessor for CRDictionary();
  CRDictionary.removeValue(forKey:)(a1, v16, v11);
  LODWORD(v4) = (*(*(v6 - 8) + 48))(v11, 1, v6);
  v17 = (*(v8 + 8))(v11, v7);
  if (v4 != 1)
  {
    v25 = *v3;
    MEMORY[0x1EEE9AC00](v17);
    *&v18 = v12;
    *(&v18 + 1) = v6;
    v19 = v24[0];
    v24[-4] = v18;
    v24[-3] = v19;
    *&v24[-2] = v14;
    *(&v24[-2] + 1) = v15;
    *&v24[-1] = a1;
    type metadata accessor for CROrderedSetElement();
    v20 = type metadata accessor for CRSequence();

    swift_getWitnessTable();
    v21 = sub_1AE1644B0(sub_1AE017BC0, &v24[-5], v20);
    v23 = v22;

    if ((v23 & 1) == 0)
    {
      CRSequence.remove(at:)(v21);
    }
  }
}

uint64_t CROrderedDictionary.map<A>(_:)(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = a1;
  v50 = a2;
  v38 = *(a3 + 24);
  v7 = sub_1AE23D7CC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v37 = &v37 - v9;
  v10 = *(a3 + 16);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v53 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(*(a4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = *(a3 + 32);
  v19 = type metadata accessor for CROrderedSetElement();
  v20 = sub_1AE23D7CC();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v37 - v22;
  v25 = *v4;
  v24 = v4[1];
  v62 = sub_1AE23C9DC();
  *&v57 = v25;
  *(&v57 + 1) = v24;
  v51 = v24;
  v54 = a3;
  CROrderedDictionary.count.getter(a3);
  v48 = sub_1AE23D11C();
  sub_1AE23D02C();
  *&v57 = v25;
  v26 = type metadata accessor for CRSequence();

  CRSequence.makeIterator()(v26, v61);

  v47 = type metadata accessor for CRSequence.Iterator();
  CRSequence.Iterator.next()(v47, v23);
  v27 = *(v19 - 8);
  v28 = *(v27 + 48);
  v55 = v19;
  v46 = v27 + 48;
  v45 = v28;
  if (v28(v23, 1, v19) == 1)
  {
LABEL_6:

    return v62;
  }

  else
  {
    v40 = v18;
    v44 = *(v11 + 16);
    v29 = v38;
    v43 = v38 - 8;
    v30 = v37;
    v39 = (v11 + 8);
    v42 = (v27 + 8);
    *&v31 = v10;
    *(&v31 + 1) = v38;
    v41 = v31;
    v32 = v55;
    while (1)
    {
      v33 = v53;
      v44(v53, v23, v10);
      (*v42)(v23, v32);
      v60 = v51;
      v57 = v41;
      v58 = v52;
      v59 = *(v54 + 48);
      type metadata accessor for CRDictionary();
      CRDictionary.subscript.getter(v30);
      v34 = *(v29 - 8);
      result = (*(v34 + 48))(v30, 1, v29);
      if (result == 1)
      {
        break;
      }

      (*v39)(v33, v10);
      v36 = v56;
      v49(v30);
      if (v36)
      {

        return (*(v34 + 8))(v30, v29);
      }

      v56 = 0;
      (*(v34 + 8))(v30, v29);
      sub_1AE23D0CC();
      CRSequence.Iterator.next()(v47, v23);
      v32 = v55;
      if (v45(v23, 1, v55) == 1)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t CROrderedDictionary._map<A>(_:)(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = a1;
  v41 = a2;
  v6 = *(*(a4 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = *(v7 + 24);
  v46 = *(v7 + 16);
  v35[0] = v8;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v36 = *(TupleTypeMetadata2 - 8);
  v10 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v35 - v14;
  v16 = sub_1AE23D7CC();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v45 = v35 - v18;
  v19 = *v4;
  v20 = v4[1];
  v53 = sub_1AE23C9DC();
  v48 = v19;
  v49 = v20;
  v44 = CROrderedDictionary.count.getter(a3);
  v35[1] = sub_1AE23D11C();
  sub_1AE23D02C();
  v48 = v19;
  v49 = v20;
  v21 = v46;
  v22 = v35[0];
  CROrderedDictionary.makeIterator()(a3, &v52);
  v44 = (v36 + 48);
  v23 = *(a3 + 32);
  v42 = *(a3 + 48);
  v43 = v23;
  v38 = v22 - 8;
  v39 = v21 - 8;
  v37 = (v36 + 16);
  for (v36 += 8; ; (*v36)(v15, TupleTypeMetadata2))
  {
    v48 = v21;
    v49 = v22;
    v50 = v43;
    v51 = v42;
    v24 = type metadata accessor for CROrderedDictionary.Iterator();
    v25 = v45;
    CROrderedDictionary.Iterator.next()(v24, v45);
    if ((*v44)(v25, 1, TupleTypeMetadata2) == 1)
    {

      return v53;
    }

    v26 = *(TupleTypeMetadata2 + 48);
    v27 = *(v21 - 8);
    (*(v27 + 32))(v15, v25, v21);
    v28 = *(v22 - 8);
    v29 = &v25[v26];
    v30 = v22;
    (*(v28 + 32))(&v15[v26], v29, v22);
    (*v37)(v12, v15, TupleTypeMetadata2);
    v31 = *(TupleTypeMetadata2 + 48);
    v32 = v47;
    v40(v12, &v12[v31]);
    v47 = v32;
    if (v32)
    {
      break;
    }

    v33 = &v12[v31];
    v22 = v30;
    (*(v28 + 8))(v33, v30);
    v21 = v46;
    (*(v27 + 8))(v12, v46);
    sub_1AE23D0CC();
  }

  (*v36)(v15, TupleTypeMetadata2);

  (*(v28 + 8))(&v12[v31], v30);
  return (*(v27 + 8))(v12, v46);
}

uint64_t CROrderedDictionary.insertionCount.getter(_OWORD *a1)
{
  v7 = *(v1 + 8);
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v2 = type metadata accessor for CRDictionary();
  return CRDictionary.insertionCount.getter(v2);
}

uint64_t sub_1AE01396C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a2;
  v11 = *a1;
  v12 = a1[1];
  v8 = *(a2 + a3 - 48);
  v9 = *(a2 + a3 - 32);
  v10 = *(a2 + a3 - 16);
  v6 = type metadata accessor for CROrderedDictionary();
  return CROrderedDictionary.subscript.getter(v5, v6, a4);
}

id sub_1AE0139DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *a3;
  v8 = *(a3 + a4 - 48);
  v9 = *(a3 + a4 - 32);
  v10 = *(a3 + a4 - 16);
  v6 = type metadata accessor for CROrderedDictionary();
  return sub_1AE017788(a1, v5, v6);
}

void (*CROrderedDictionary.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  v10 = *(a3 + 24);
  v8[3] = v10;
  v11 = *(v10 - 8);
  v8[4] = v11;
  v12 = *(v11 + 64);
  if (v7)
  {
    v8[5] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v8[5] = malloc(v12);
    v13 = malloc(v12);
  }

  v9[6] = v13;
  v15 = *v3;
  v16 = v3[1];
  CROrderedDictionary.subscript.getter(a2, a3, v13);
  return sub_1AE013B78;
}

void sub_1AE013B78(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  v5 = (*a1)[3];
  v6 = (*a1)[4];
  v8 = (*a1)[1];
  v7 = (*a1)[2];
  v9 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[5], v4, v5);
    sub_1AE017788(v3, v9, v8);
    v10 = *(v6 + 8);
    v10(v3, v5);
    v10(v4, v5);
  }

  else
  {
    sub_1AE017788((*a1)[6], v9, v8);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t CROrderedDictionary.delta(_:from:)@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t CROrderedDictionary.merge(delta:)(void *a1, uint64_t a2)
{
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;

  CROrderedDictionary.merge(_:)(v5, a2, &v6);

  return 1;
}

uint64_t sub_1AE013D70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static CRDT.== infix(_:_:)(a1, a2, a3, WitnessTable);
}

uint64_t CROrderedDictionary.encode(to:)(uint64_t a1, void *a2)
{
  v5 = *v2;
  v6 = v2[1];
  result = sub_1ADDFCC74();
  if (!v3)
  {
    v14[0] = v5;
    v14[1] = v6;
    v8 = a2[2];
    v9 = a2[3];
    v10 = a2[4];
    v11 = a2[5];
    v13 = a2[6];
    v12 = a2[7];

    sub_1ADE6BC94(v14);
  }

  return result;
}

void sub_1AE013ED8(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[2];
  v2 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  CROrderedDictionary.init(defaultState:)(a2);
}

uint64_t CROrderedDictionary.ObservableDifference.removed.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 68);
  v5 = sub_1AE23C12C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t CROrderedDictionary.ObservableDifference.added.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 76);
  v5 = sub_1AE23C12C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t CROrderedDictionary.ObservableDifference.subscript.getter(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*(a2 + 48) + 8);
  v5 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  return sub_1AE23CB7C();
}

uint64_t sub_1AE01407C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  v9 = type metadata accessor for CROrderedDictionary.ObservableDifference();
  v10 = v9[17];
  v11 = sub_1AE23C12C();
  v12 = *(*(v11 - 8) + 32);
  v12(&a5[v10], a2, v11);
  *&a5[v9[18]] = a3;
  return (v12)(&a5[v9[19]], a4, v11);
}

uint64_t sub_1AE01415C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v321 = a4;
  v8 = *(a3 + 48);
  v9 = *(a3 + 24);
  v328 = *(v8 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v324 = sub_1AE23D7CC();
  v318 = *(v324 - 8);
  v11 = *(v318 + 64);
  MEMORY[0x1EEE9AC00](v324);
  v327 = &v307 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v326 = &v307 - v14;
  v329 = AssociatedTypeWitness;
  v317 = *(AssociatedTypeWitness - 8);
  v15 = *(v317 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v323 = &v307 - v17;
  v335 = v9;
  v320 = v8;
  v18 = type metadata accessor for CRDictionaryElement();
  v333 = sub_1AE23D7CC();
  v316 = *(v333 - 8);
  v19 = *(v316 + 64);
  MEMORY[0x1EEE9AC00](v333);
  v346 = &v307 - v20;
  v339 = *(v18 - 8);
  v21 = *(v339 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v345 = &v307 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v351 = &v307 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v337 = &v307 - v27;
  v28 = *(a3 + 16);
  v342 = v18;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v348 = sub_1AE23D7CC();
  v315 = *(v348 - 8);
  v29 = *(v315 + 64);
  MEMORY[0x1EEE9AC00](v348);
  v353 = &v307 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v354 = &v307 - v32;
  v334 = a3;
  v319 = *(a3 + 32);
  v381 = *(&v319 + 1);
  v312 = v319;
  v33 = type metadata accessor for CROrderedSetElement();
  v365 = *(v33 - 8);
  v34 = *(v365 + 64);
  MEMORY[0x1EEE9AC00](v33);
  *&v374 = &v307 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v371 = (&v307 - v36);
  v314 = sub_1AE23C12C();
  v313 = *(v314 - 8);
  v37 = v313[8];
  MEMORY[0x1EEE9AC00](v314);
  v311 = &v307 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v310 = &v307 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v352 = &v307 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v356 = &v307 - v44;
  v380 = v28;
  v344 = *(v28 - 8);
  v45 = *(v344 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v350 = &v307 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v307 - v49;
  MEMORY[0x1EEE9AC00](v51);
  v53 = (&v307 - v52);
  MEMORY[0x1EEE9AC00](v54);
  v376 = &v307 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v378 = &v307 - v57;
  v357 = swift_getTupleTypeMetadata2();
  v368 = sub_1AE23D7CC();
  v58 = *(v368 - 8);
  v59 = v58[8];
  MEMORY[0x1EEE9AC00](v368);
  v338 = (&v307 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v61);
  v358 = (&v307 - v62);
  MEMORY[0x1EEE9AC00](v63);
  v367 = (&v307 - v64);
  MEMORY[0x1EEE9AC00](v65);
  v67 = (&v307 - v66);
  v68 = *a1;
  v347 = *(a1 + 8);
  v69 = *v4;
  v322 = *(v4 + 8);
  v330 = a2;
  v70 = *(a2 + 24);
  v379 = v33;
  if (!v70)
  {
    goto LABEL_84;
  }

  while (1)
  {
    v394 = v68;
    v389 = v69;
    v71 = v68;
    v72 = type metadata accessor for CRSequence();
    *&v372 = v69;
    swift_retain_n();
    v309 = v71;
    swift_retain_n();
    CRSequence.observableDifference(from:with:)(&v389, v72, &v390);

    v364 = v53;
    v336 = v390;
    v325 = v34;
    if (!v390)
    {
      type metadata accessor for _NSRange(255);
      type metadata accessor for CRSequenceStorage();
      sub_1AE23D7CC();
      swift_getTupleTypeMetadata3();
      v336 = sub_1AE23D05C();
    }

    v73 = v357;
    v398 = sub_1AE23C9CC();
    v397 = sub_1AE23C9CC();
    *&v390 = v372;
    WitnessTable = swift_getWitnessTable();
    MEMORY[0x1B26FB780](&v394, v72, WitnessTable);

    v389 = v394;
    v307 = sub_1AE23DC9C();
    sub_1AE23DC6C();
    v373 = v72;
    v308 = WitnessTable;
    v75 = sub_1AE23DC8C();
    v366 = (v58 + 4);
    v69 = (v344 + 16);
    v377 = (v365 + 8);
    v355 = v75;
    while (1)
    {
      v76 = v367;
      sub_1AE23DC7C();
      v77 = *v366;
      (*v366)(v67, v76, v368);
      v78 = *(v73 - 8);
      v79 = *(v78 + 48);
      v80 = (v78 + 48);
      if (v79(v67, 1, v73) == 1)
      {
        break;
      }

      v81 = *v67;
      v82 = *(v73 + 48);
      (*v69)(v378, v67 + v82, v380);
      (*v377)(v67 + v82, v379);
      v394 = v81;
      v395 = 0;
      sub_1AE23CB1C();
      sub_1AE23CB8C();
    }

    v362 = v80;
    v360 = v77;

    sub_1AE23C11C();
    sub_1AE23C11C();
    type metadata accessor for _NSRange(255);
    type metadata accessor for CRSequenceStorage();
    sub_1AE23D7CC();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v84 = v336;
    v85 = sub_1AE23D0AC();
    v86 = v342;
    v369 = v69;
    if (v85 < 1)
    {

      v358 = MEMORY[0x1E69E7CC0];
      v167 = v354;
      v168 = v318;
      goto LABEL_153;
    }

    v361 = v79;
    v389 = sub_1AE23C9EC();
    v387 = sub_1AE23C9EC();

    v87 = sub_1AE23D0AC();
    v88 = v377;
    v363 = v50;
    v343 = TupleTypeMetadata3;
    if (v87)
    {
      v370 = 0;
      v89 = 0;
      v332 = v84 + 32;
      v375 = (v344 + 8);
      v331 = (v365 + 16);
      while (1)
      {
        v90 = sub_1AE23D08C();
        sub_1AE23D00C();
        if ((v90 & 1) == 0)
        {
          goto LABEL_210;
        }

        if (__OFADD__(v89, 1))
        {
          goto LABEL_211;
        }

        v91 = (v332 + 32 * v89);
        v92 = *v91;
        v93 = v91[1];
        v94 = *v91 + v93;
        if (__OFADD__(*v91, v93))
        {
          goto LABEL_212;
        }

        if (v94 < v92)
        {
          goto LABEL_213;
        }

        v96 = v91[2];
        v95 = v91[3];
        v340 = v89 + 1;
        v341 = v96;
        v359 = v95;
        if (v92 != v94)
        {
          break;
        }

        v97 = v95;
LABEL_20:
        v102 = v331;
        v103 = v359;
        if (v359)
        {
          v104 = v380;
          v105 = sub_1AE16A958();
          v359 = v103;

          v106 = v379;
          if (sub_1AE23D0AC())
          {
            v107 = 0;
            do
            {
              v108 = sub_1AE23D08C();
              sub_1AE23D00C();
              if (v108)
              {
                (*(v365 + 16))(v374, v105 + ((*(v365 + 80) + 32) & ~*(v365 + 80)) + *(v365 + 72) * v107, v106);
                v109 = v107 + 1;
                if (__OFADD__(v107, 1))
                {
                  goto LABEL_194;
                }
              }

              else
              {
                result = sub_1AE23DAAC();
                if (v325 != 8)
                {
                  goto LABEL_228;
                }

                *&v390 = result;
                (*v102)(v374, &v390, v106);
                swift_unknownObjectRelease();
                v109 = v107 + 1;
                if (__OFADD__(v107, 1))
                {
                  goto LABEL_194;
                }
              }

              v110 = v374;
              (*v69)(v376, v374, v104);
              v106 = v379;
              (*v377)(v110, v379);
              sub_1AE23D38C();
              v111 = v378;
              sub_1AE23D33C();
              v112 = v111;
              v69 = v369;
              (*v375)(v112, v104);
              ++v107;
            }

            while (v109 != sub_1AE23D0AC());
          }

          v114 = v359;

          v88 = v377;
        }

        v115 = __OFSUB__(v370, v341);
        v370 -= v341;
        if (v115)
        {
          goto LABEL_214;
        }

        v84 = v336;
        v116 = sub_1AE23D0AC();
        v89 = v340;
        v50 = v363;
        if (v340 == v116)
        {
          goto LABEL_34;
        }
      }

      if (v92 >= v94)
      {
        goto LABEL_215;
      }

      v98 = v380;
      v99 = v95;
      while (!__OFADD__(v92, v370))
      {
        ++v92;
        *&v390 = v372;
        v100 = v371;
        CRSequence.subscript.getter();
        (*v69)(v376, v100, v98);
        sub_1AE23D38C();
        v101 = v378;
        sub_1AE23D33C();
        (*v375)(v101, v98);
        (*v88)(v100, v379);
        if (!--v93)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_193:
      __break(1u);
LABEL_194:
      __break(1u);
LABEL_195:
      __break(1u);
LABEL_196:
      __break(1u);
LABEL_197:
      __break(1u);
LABEL_198:
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
LABEL_204:
      __break(1u);
LABEL_205:
      __break(1u);
LABEL_206:
      __break(1u);
      goto LABEL_207;
    }

LABEL_34:

    v396 = sub_1AE23C9CC();
    v341 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BCC20, &qword_1AE251818);
    v386 = sub_1AE23C9CC();
    if (!sub_1AE23D0AC())
    {
      break;
    }

    v359 = 0;
    v34 = 0;
    v117 = 0;
    v325 = v84 + 32;
    v375 = (v344 + 8);
    v376 = MEMORY[0x1E69E7CC0];
    v67 = v358;
    while (1)
    {
      v118 = sub_1AE23D08C();
      result = sub_1AE23D00C();
      if ((v118 & 1) == 0)
      {
        goto LABEL_216;
      }

      if (__OFADD__(v117, 1))
      {
        goto LABEL_217;
      }

      v119 = (v325 + 32 * v117);
      v120 = *v119;
      v53 = v119[1];
      v121 = v53 + *v119;
      if (__OFADD__(*v119, v53))
      {
        goto LABEL_218;
      }

      if (v121 < v120)
      {
        goto LABEL_219;
      }

      v123 = v119[2];
      v122 = v119[3];
      v365 = v120;
      v332 = v117 + 1;
      v340 = v123;
      v370 = v122;
      if (v120 != v121)
      {
        break;
      }

      result = v122;
LABEL_42:
      v124 = v370;
      if (v370)
      {
        *&v390 = sub_1AE16A958();
        v125 = sub_1AE23D11C();
        v331 = v124;
        v126 = swift_getWitnessTable();
        MEMORY[0x1B26FB780](&v394, v125, v126);
        v383 = v394;
        sub_1AE23DC9C();
        sub_1AE23DC6C();
        v127 = v357;
        v370 = sub_1AE23DC8C();
        v128 = v365;
        while (1)
        {
          v132 = v367;
          sub_1AE23DC7C();
          v360(v67, v132, v368);
          if (v361(v67, 1, v127) == 1)
          {
            break;
          }

          v133 = *v67;
          v134 = *(v127 + 48);
          v135 = *v69;
          (*v69)(v50, v67 + v134, v380);
          (*v377)(v67 + v134, v379);
          if (sub_1AE23D37C())
          {
            v136 = v128 + v34;
            v137 = v376;
            if (__OFADD__(v128, v34))
            {
              goto LABEL_200;
            }

            v138 = &v133[v136];
            if (__OFADD__(v136, v133))
            {
              goto LABEL_202;
            }

            v139 = v380;
            v135(v378, v50, v380);
            v394 = *(v137 + 2);
            v395 = 0;
            v140 = v381;
            sub_1AE23CB1C();
            sub_1AE23CB8C();
            v141 = v386;
            v142 = *(v386 + 16);
            *&v143 = -1;
            *(&v143 + 1) = -1;
            v374 = v143;
            if (v142)
            {
              v144 = sub_1ADDFFB6C(v50, v139, v140);
              v128 = v365;
              if (v145)
              {
                v374 = *(*(v141 + 56) + 16 * v144);
              }
            }

            else
            {
              v128 = v365;
            }

            v115 = __OFADD__(v128, v133);
            v146 = &v133[v128];
            v147 = v376;
            if (v115)
            {
              goto LABEL_204;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v147 = sub_1ADE55D60(0, *(v147 + 2) + 1, 1, v147);
            }

            v149 = *(v147 + 2);
            v148 = *(v147 + 3);
            if (v149 < v148 >> 1)
            {
              v376 = v147;
            }

            else
            {
              v376 = sub_1ADE55D60((v148 > 1), v149 + 1, 1, v147);
            }

            v129 = v363;
            (*v375)(v363, v380);
            v130 = v376;
            *(v376 + 2) = v149 + 1;
            v131 = &v130[32 * v149];
            v50 = v129;
            *(v131 + 2) = v374;
            *(v131 + 6) = v138;
            *(v131 + 7) = v146;
            v127 = v357;
          }

          else
          {
            if (__OFADD__(v133, v128))
            {
              goto LABEL_201;
            }

            sub_1AE23C08C();
            (*v375)(v50, v380);
          }

          v115 = __OFSUB__(v34--, 1);
          if (v115)
          {
            goto LABEL_195;
          }
        }

        v150 = v331;
      }

      v115 = __OFSUB__(v359, v340);
      v359 = (v359 - v340);
      if (v115)
      {
        goto LABEL_220;
      }

      v151 = sub_1AE23D0AC();
      v117 = v332;
      if (v332 == v151)
      {
        goto LABEL_89;
      }
    }

    if (v120 >= v121)
    {
      goto LABEL_226;
    }

    *&v374 = v389;
    v152 = v122;
    while (1)
    {
      v153 = v359 + v120;
      if (__OFADD__(v120, v359))
      {
        goto LABEL_196;
      }

      *&v390 = v372;
      v154 = v380;
      v58 = v371;
      CRSequence.subscript.getter();
      v155 = *v69;
      v156 = v364;
      (*v69)(v364, v58, v154);
      (*v377)(v58, v379);
      if ((sub_1AE23D37C() & 1) == 0)
      {
        sub_1AE23C08C();
        result = (*v375)(v156, v380);
        v50 = v363;
        v67 = v358;
        goto LABEL_69;
      }

      v157 = v34 + v365;
      if (__OFADD__(v34, v365))
      {
        goto LABEL_205;
      }

      v158 = v364;
      sub_1AE23CB7C();
      if ((BYTE8(v390) & 1) == 0)
      {
        break;
      }

      v159 = v380;
      v155(v378, v158, v380);
      *&v390 = v153;
      *(&v390 + 1) = v157;
      LOBYTE(v391) = 0;
      sub_1AE23CB1C();
      sub_1AE23CB8C();
      result = (*v375)(v158, v159);
      v67 = v358;
LABEL_80:
      v115 = __OFADD__(v34++, 1);
      v50 = v363;
      if (v115)
      {
        goto LABEL_206;
      }

      v69 = v369;
LABEL_69:
      ++v120;
      v53 = (v53 - 1);
      if (!v53)
      {
        goto LABEL_42;
      }
    }

    v50 = v390;
    v68 = v376;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v67 = v358;
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((v50 & 0x8000000000000000) != 0)
      {
        goto LABEL_83;
      }

LABEL_77:
      if (v50 >= *(v68 + 2))
      {
        __break(1u);
LABEL_209:
        __break(1u);
LABEL_210:
        sub_1AE23DAAC();
        __break(1u);
LABEL_211:
        __break(1u);
LABEL_212:
        __break(1u);
LABEL_213:
        __break(1u);
LABEL_214:
        __break(1u);
LABEL_215:
        __break(1u);
LABEL_216:
        result = sub_1AE23DAAC();
        __break(1u);
LABEL_217:
        __break(1u);
LABEL_218:
        __break(1u);
LABEL_219:
        __break(1u);
LABEL_220:
        __break(1u);
LABEL_221:
        __break(1u);
LABEL_222:
        __break(1u);
LABEL_223:
        __break(1u);
LABEL_224:
        __break(1u);
LABEL_225:
        __break(1u);
LABEL_226:
        __break(1u);
LABEL_227:
        __break(1u);
LABEL_228:
        __break(1u);
LABEL_229:
        __break(1u);
        return result;
      }

      v161 = v68;
      v162 = &v68[32 * v50];
      *(v162 + 5) = v157;
      result = (*v375)(v364, v380);
      v376 = v161;
      if (v50 >= *(v161 + 2))
      {
        goto LABEL_209;
      }

      *(v162 + 4) = v153;
      goto LABEL_80;
    }

    v68 = sub_1ADF79A2C(v68);
    if ((v50 & 0x8000000000000000) == 0)
    {
      goto LABEL_77;
    }

LABEL_83:
    __break(1u);
LABEL_84:
    *&v390 = v69;
    v394 = v68;
    type metadata accessor for CRSequence();
    v163 = sub_1AE164BF0(&v394);

    if (v163 && v322 == v347)
    {
      v164 = *(v334 + 56);
      *&v165 = v380;
      *(&v165 + 1) = v335;
      v391 = v319;
      v390 = v165;
      v392 = v320;
      v393 = v164;
      v166 = type metadata accessor for CROrderedDictionary.ObservableDifference();
      return (*(*(v166 - 8) + 56))(v321, 1, 1, v166);
    }
  }

  v376 = MEMORY[0x1E69E7CC0];
LABEL_89:

  v384 = MEMORY[0x1E69E7CC0];
  v385 = MEMORY[0x1E69E7CC0];
  v169 = v376;
  v170 = *(v376 + 2);
  if (!v170)
  {
    *&v374 = MEMORY[0x1E69E7CC0];
    v375 = MEMORY[0x1E69E7CC0];
    v358 = MEMORY[0x1E69E7CC0];
    v208 = v367;
    v205 = v373;
    goto LABEL_149;
  }

  swift_beginAccess();
  swift_beginAccess();
  v171 = 0;
  v172 = *(v169 + 2);
  v173 = MEMORY[0x1E69E7CC0];
  result = MEMORY[0x1E69E7CC0];
  while (2)
  {
    if (v171 >= v172)
    {
      goto LABEL_221;
    }

    v174 = &v169[32 * v171];
    v175 = *(v174 + 5);
    v176 = *(result + 16);
    if (v176)
    {
      v177 = 0;
      v178 = (result + 32);
      v179 = *(result + 16);
      while (1)
      {
        v180 = *v178++;
        if (v175 >= v180)
        {
          v115 = __OFADD__(v177++, 1);
          if (v115)
          {
            goto LABEL_197;
          }
        }

        if (!--v179)
        {
          goto LABEL_100;
        }
      }
    }

    v177 = 0;
LABEL_100:
    v181 = *(v173 + 2);
    if (v181)
    {
      v182 = (v173 + 32);
      v183 = *(v173 + 2);
      do
      {
        v184 = *v182++;
        if (v184 < v175)
        {
          v115 = __OFSUB__(v177--, 1);
          if (v115)
          {
            goto LABEL_198;
          }
        }
      }

      while (--v183);
    }

    v376 = v169;
    v185 = *(v174 + 6);
    v186 = 0;
    if (v176)
    {
      v187 = (result + 32);
      do
      {
        v188 = *v187++;
        if (v185 >= v188)
        {
          v115 = __OFADD__(v186++, 1);
          if (v115)
          {
            goto LABEL_199;
          }
        }
      }

      while (--v176);
    }

    if (v181)
    {
      v189 = (v173 + 32);
      do
      {
        v190 = *v189++;
        if (v190 < v185)
        {
          v115 = __OFSUB__(v186--, 1);
          if (v115)
          {
            goto LABEL_203;
          }
        }
      }

      while (--v181);
    }

    v191 = result;
    result = swift_isUniquelyReferenced_nonNull_native();
    v192 = v173;
    if (result)
    {
      v193 = v191;
    }

    else
    {
      result = sub_1ADE55D4C(0, *(v191 + 16) + 1, 1, v191);
      v193 = result;
    }

    v195 = *(v193 + 16);
    v194 = *(v193 + 24);
    if (v195 >= v194 >> 1)
    {
      result = sub_1ADE55D4C((v194 > 1), v195 + 1, 1, v193);
      v193 = result;
    }

    *(v193 + 16) = v195 + 1;
    *(v193 + 8 * v195 + 32) = v185;
    if (v171 >= *(v376 + 2))
    {
      goto LABEL_222;
    }

    *&v374 = v193;
    v196 = *(v174 + 5);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v192 = sub_1ADE55D4C(0, *(v173 + 2) + 1, 1, v173);
    }

    v375 = v192;
    v198 = *(v192 + 2);
    v197 = *(v192 + 3);
    if (v198 >= v197 >> 1)
    {
      v375 = sub_1ADE55D4C((v197 > 1), v198 + 1, 1, v375);
    }

    v199 = v375;
    *(v375 + 2) = v198 + 1;
    v173 = v199;
    *&v199[8 * v198 + 32] = v196;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v376 = sub_1ADF79A2C(v376);
    }

    v172 = *(v376 + 2);
    result = v374;
    if (v171 >= v172)
    {
      goto LABEL_223;
    }

    v200 = &v376[32 * v171];
    v201 = *(v200 + 5);
    v115 = __OFADD__(v201, v177);
    v202 = v201 + v177;
    if (v115)
    {
      goto LABEL_224;
    }

    *(v200 + 5) = v202;
    v203 = *(v200 + 6);
    v115 = __OFADD__(v203, v186);
    v204 = v203 + v186;
    if (v115)
    {
      goto LABEL_225;
    }

    ++v171;
    *(v200 + 6) = v204;
    v169 = v376;
    if (v171 != v170)
    {
      continue;
    }

    break;
  }

  v384 = v173;
  v385 = result;
  v206 = v376 + 48;
  v207 = MEMORY[0x1E69E7CC0];
  v208 = v367;
  do
  {
    v213 = *(v206 - 1);
    v214 = *v206;
    v215 = *v206;
    if (v213 != *v206)
    {
      v115 = __OFSUB__(v215, 1);
      v216 = v215 - 1;
      if (v115)
      {
        goto LABEL_227;
      }

      if (v213 != v216)
      {
        v372 = *v206;
        v217 = *(v206 - 2);
        result = swift_isUniquelyReferenced_nonNull_native();
        *&v390 = v207;
        if ((result & 1) == 0)
        {
          result = sub_1ADE6F3BC(0, *(v207 + 16) + 1, 1);
          v207 = v390;
        }

        v209 = v372;
        v211 = *(v207 + 16);
        v210 = *(v207 + 24);
        if (v211 >= v210 >> 1)
        {
          result = sub_1ADE6F3BC((v210 > 1), v211 + 1, 1);
          v209 = v372;
          v207 = v390;
        }

        *(v207 + 16) = v211 + 1;
        v212 = v207 + 32 * v211;
        *(v212 + 32) = v217;
        *(v212 + 40) = v213;
        *(v212 + 48) = v209;
        v208 = v367;
      }
    }

    v206 += 2;
    --v172;
  }

  while (v172);
  v358 = v207;
  v205 = v373;
LABEL_149:

  *&v390 = v309;
  MEMORY[0x1B26FB780](&v394, v205, v308);

  v382 = v394;
  sub_1AE23DC6C();
  sub_1AE23DC7C();
  v218 = v338;
  v219 = v360;
  v360(v338, v208, v368);
  v220 = v357;
  v221 = v361(v218, 1, v357);
  v222 = v381;
  v223 = v378;
  v224 = v379;
  if (v221 != 1)
  {
    v373 = *v69;
    do
    {
      v376 = *v338;
      v225 = v224;
      v226 = v208;
      v227 = v222;
      v228 = v219;
      v229 = *(v220 + 48);
      (v373)(v223, v338 + v229, v380);
      v230 = v338 + v229;
      v219 = v228;
      v222 = v227;
      v208 = v226;
      v224 = v225;
      (*v377)(v230, v225);
      v394 = v376;
      v395 = 0;
      sub_1AE23CB1C();
      sub_1AE23CB8C();
      sub_1AE23DC7C();
      v231 = v338;
      v219(v338, v208, v368);
    }

    while (v361(v231, 1, v220) != 1);
  }

  v167 = v354;
  v168 = v318;
  v86 = v342;
LABEL_153:
  v396 = sub_1AE23C9CC();
  v232 = v322;
  swift_beginAccess();
  v233 = *(v232 + 40);
  v234 = *(v233 + 64);
  v376 = (v233 + 64);
  v235 = 1 << *(v233 + 32);
  v236 = -1;
  if (v235 < 64)
  {
    v236 = ~(-1 << v235);
  }

  v237 = v236 & v234;
  v366 = ((v235 + 63) >> 6);
  v238 = TupleTypeMetadata2;
  v375 = (TupleTypeMetadata2 - 8);
  v368 = v339 + 16;
  v379 = (v344 + 32);
  v239 = (v339 + 32);
  *&v374 = v315 + 32;
  v373 = (v339 + 48);
  *&v372 = v339 + 8;
  v371 = (v344 + 8);
  v365 = v328 + 40;
  v364 = (v317 + 48);
  v363 = (v317 + 32);
  v362 = (v317 + 16);
  v361 = (v317 + 56);
  v360 = (v317 + 8);
  v359 = (v168 + 8);
  v367 = (v316 + 8);
  v370 = v233;

  v240 = 0;
  v241 = v353;
  v377 = v239;
  while (2)
  {
    if (!v237)
    {
      if (v366 <= v240 + 1)
      {
        v243 = (v240 + 1);
      }

      else
      {
        v243 = v366;
      }

      v244 = v243 - 1;
      while (1)
      {
        v242 = v240 + 1;
        if (__OFADD__(v240, 1))
        {
          goto LABEL_193;
        }

        if (v242 >= v366)
        {
          v237 = 0;
          v258 = 1;
          v240 = v244;
          goto LABEL_168;
        }

        v237 = *&v376[8 * v242];
        ++v240;
        if (v237)
        {
          v240 = v242;
          goto LABEL_167;
        }
      }
    }

    v242 = v240;
LABEL_167:
    v245 = __clz(__rbit64(v237));
    v237 &= v237 - 1;
    v246 = v245 | (v242 << 6);
    v247 = v370;
    v248 = v344;
    v249 = v378;
    v250 = v380;
    (*(v344 + 16))(v378, *(v370 + 48) + *(v344 + 72) * v246, v380);
    v251 = *(v247 + 56);
    v252 = v339;
    v253 = v337;
    (*(v339 + 16))(v337, v251 + *(v339 + 72) * v246, v86);
    v254 = *(v238 + 48);
    v255 = *(v248 + 32);
    v256 = v353;
    v255(v353, v249, v250);
    v257 = *(v252 + 32);
    v241 = v256;
    v239 = v377;
    v257(&v256[v254], v253, v86);
    v258 = 0;
    v167 = v354;
LABEL_168:
    v259 = *(v238 - 8);
    (*(v259 + 56))(v241, v258, 1, v238);
    (*v374)(v167, v241, v348);
    if ((*(v259 + 48))(v167, 1, v238) != 1)
    {
      v260 = *(v238 + 48);
      v261 = v350;
      (*v379)(v350, v167, v380);
      v262 = *v239;
      v263 = &v167[v260];
      v264 = v351;
      (*v239)(v351, v263, v86);
      v265 = v347;
      swift_beginAccess();
      v266 = *(v265 + 40);

      v267 = v346;
      sub_1AE23CB7C();

      if ((*v373)(v267, 1, v86) == 1)
      {
        (*v372)(v264, v86);
        (*v371)(v261, v380);
        (*v367)(v267, v333);
        v238 = TupleTypeMetadata2;
        v241 = v353;
        v167 = v354;
        continue;
      }

      v262(v345, v267, v86);
      sub_1AE23CB7C();
      if (BYTE8(v390) == 1)
      {
        result = sub_1AE23CB7C();
        v167 = v354;
        if (v388)
        {
          goto LABEL_229;
        }

        v268 = v387;
        v269 = v335;
        v270 = v342;
        v271 = v345;
      }

      else
      {
        v268 = v390;
        v269 = v335;
        v270 = v342;
        v271 = v345;
        v167 = v354;
      }

      v272 = v270;
      v273 = *(v270 + 36);
      v274 = *(v334 + 56);
      v275 = v351;
      if (sub_1AE23CCBC())
      {
        v276 = &v275[v273];
        v277 = v326;
        (*(v328 + 40))(v276, v330, v269);
        v278 = v329;
        if ((*v364)(v277, 1, v329) == 1)
        {
          v279 = *v372;
          v280 = v271;
          v86 = v272;
          (*v372)(v280, v272);
          v279(v275, v272);
          (*v371)(v350, v380);
          (*v359)(v277, v324);
        }

        else
        {
          v284 = v323;
          (*v363)(v323, v277, v278);
          v285 = v327;
          (*v362)(v327, v284, v278);
          (*v361)(v285, 0, 1, v278);
          *&v390 = v268;
          sub_1AE23CB1C();
          sub_1AE23CB8C();
          v286 = v284;
          v167 = v354;
          v287 = v342;
          (*v360)(v286, v278);
          v288 = *v372;
          (*v372)(v271, v287);
          v288(v275, v287);
          (*v371)(v350, v380);
          v86 = v287;
        }

        goto LABEL_185;
      }

      v281 = *(type metadata accessor for FinalizedTimestamp(0) + 20);
      v282 = *&v275[v281];
      v283 = *&v271[v281];
      if (v282 == v283)
      {
        if ((sub_1ADF5EB00() & 1) == 0)
        {
          goto LABEL_184;
        }

LABEL_183:
        (*(v328 + 40))(&v275[v273], v330, v335);
        *&v390 = v268;
        sub_1AE23CB1C();
        sub_1AE23CB8C();
      }

      else if (v282 < v283)
      {
        goto LABEL_183;
      }

LABEL_184:
      v289 = *v372;
      v290 = v271;
      v86 = v272;
      (*v372)(v290, v272);
      v289(v275, v272);
      (*v371)(v350, v380);
LABEL_185:
      v238 = TupleTypeMetadata2;
      v241 = v353;
      v239 = v377;
      continue;
    }

    break;
  }

  if (sub_1AE23C04C() > 0 || sub_1AE23CA7C() > 0 || v358[2] || sub_1AE23C04C() >= 1)
  {
    v291 = v396;
    v292 = v313[4];
    v293 = v310;
    v294 = v314;
    v292(v310, v352, v314);
    v295 = v311;
    v292(v311, v356, v294);
    v296 = *(v334 + 56);
    v297 = v320;
    v298 = v321;
    v299 = v291;
    v300 = v380;
    v301 = v335;
    sub_1AE01407C(v299, v293, v358, v295, v321);
    *&v390 = v300;
    *(&v390 + 1) = v301;
    v391 = v319;
    v392 = v297;
    v393 = v296;
    v302 = type metadata accessor for CROrderedDictionary.ObservableDifference();
    (*(*(v302 - 8) + 56))(v298, 0, 1, v302);
    goto LABEL_191;
  }

LABEL_207:
  v303 = v313[1];
  v304 = v314;
  v303(v352, v314);
  v303(v356, v304);
  v305 = *(v334 + 56);
  *&v390 = v380;
  *(&v390 + 1) = v335;
  v391 = v319;
  v392 = v320;
  v393 = v305;
  v306 = type metadata accessor for CROrderedDictionary.ObservableDifference();
  (*(*(v306 - 8) + 56))(v321, 1, 1, v306);

LABEL_191:
}

uint64_t CROrderedDictionary.MergeableDelta.merge(delta:)(void *a1, _OWORD *a2)
{
  v3 = a1[1];
  v8[0] = *a1;
  v8[1] = v3;

  v4 = a2[2];
  v7[0] = a2[1];
  v7[1] = v4;
  v7[2] = a2[3];
  v5 = type metadata accessor for CROrderedDictionary();
  CROrderedDictionary.merge(_:)(v8, v5, v7);

  return 1;
}

uint64_t CROrderedDictionary.MergeableDelta.visitReferences(_:)(void *a1, _OWORD *a2)
{
  v10 = *v2;
  v11 = v2[1];

  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  v5 = type metadata accessor for CROrderedDictionary();
  CROrderedDictionary.visitReferences(_:)(a1, v5);
}

uint64_t CROrderedDictionary.MergeableDelta.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  result = CROrderedDictionary.init(from:)(a1, a2, a3, a4, a5, a6, a7, v12);
  if (!v8)
  {
    v11 = v12[1];
    *a8 = v12[0];
    a8[1] = v11;
  }

  return result;
}

uint64_t CROrderedDictionary.MergeableDelta.encode(to:)(uint64_t a1, _OWORD *a2)
{
  v10 = *v2;
  v11 = v2[1];

  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  v5 = type metadata accessor for CROrderedDictionary();
  CROrderedDictionary.encode(to:)(a1, v5);
}

uint64_t sub_1AE0170EC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  CROrderedDictionary.makeIterator()(a1, a2);
  v4 = *v2;
  v3 = v2[1];
}

uint64_t sub_1AE017128()
{
  v1 = sub_1AE1DCD68();
  v3 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_1AE017174(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, void, void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  type metadata accessor for CRDictionaryElement();
  v13 = *(swift_getTupleTypeMetadata2() + 48);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  result = a2(a1, a1 + v13, *(a1 + *(TupleTypeMetadata2 + 48)), *(a1 + *(TupleTypeMetadata2 + 48) + 8));
  if (v10)
  {
    *a10 = v10;
  }

  return result;
}

uint64_t sub_1AE017238@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for Replica();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1 + *(type metadata accessor for CROrderedSetElement() + 44);
  sub_1ADDF8030(v8, v7, type metadata accessor for Replica);
  v9 = sub_1ADDF66A8(v7);
  v10 = sub_1AE23BFEC();
  (*(*(v10 - 8) + 8))(v7, v10);
  result = type metadata accessor for Timestamp(0);
  v12 = *(v8 + *(result + 20));
  *a2 = v9;
  a2[1] = v12;
  return result;
}

uint64_t CROrderedDictionary<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a4;
  v32 = a3;
  *&v33 = a2;
  v7 = *(a2 + 24);
  v25 = *(a2 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v30 = *(TupleTypeMetadata2 - 8);
  v9 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v11 = &v25 - v10;
  v12 = sub_1AE23D7CC();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v25 - v14;
  v16 = v4[1];
  *&v34 = *v4;
  v42 = v16;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v18 = v25;
  v19 = TupleTypeMetadata2;
  sub_1AE23E3AC();
  v35 = v34;
  v36 = v42;
  v20 = v33;
  CROrderedDictionary.makeIterator()(v33, &v39);
  v21 = *(v20 + 32);
  v33 = *(v20 + 48);
  v34 = v21;
  v42 = (v30 + 48);
  v29 = v18 - 8;
  v28 = v7 - 1;
  v31 = v19;
  v26 = v15;
  v30 += 8;
  while (1)
  {
    v35 = v18;
    v36 = v7;
    v37 = v34;
    v38 = v33;
    v22 = type metadata accessor for CROrderedDictionary.Iterator();
    CROrderedDictionary.Iterator.next()(v22, v15);
    if ((*v42)(v15, 1, v19) == 1)
    {
      break;
    }

    v23 = *(v19 + 48);
    (*(*(v18 - 8) + 32))(v11, v15, v18);
    (*(*(v7 - 1) + 4))(&v11[v23], &v15[v23], v7);
    __swift_mutable_project_boxed_opaque_existential_1(v40, v41);
    sub_1AE23DE6C();
    if (v5)
    {
      (*v30)(v11, v31);
      break;
    }

    __swift_mutable_project_boxed_opaque_existential_1(v40, v41);
    sub_1AE23DE6C();
    v19 = v31;
    (*v30)(v11, v31);
    v15 = v26;
  }

  return __swift_destroy_boxed_opaque_existential_1(v40);
}

uint64_t sub_1AE017714(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;
      sub_1ADDD86D8(v4, *v2);
      sub_1ADDE0110(v5, v4, v3);
      result = sub_1ADDCC35C(v5[0], v5[1]);
      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

id sub_1AE017788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a2;
  v26 = a1;
  v5 = *(a3 + 24);
  v6 = sub_1AE23D7CC();
  v29 = *(v6 - 8);
  v30 = v6;
  v7 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25 - v8;
  v10 = *(a3 + 16);
  v27 = *(v10 - 8);
  v11 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a3;
  v25 = *(a3 + 32);
  v15 = type metadata accessor for CROrderedSetElement();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v25 - v18;
  *&v32 = *v3;
  type metadata accessor for CRSequence();
  result = CRSequence.count.getter();
  if (result <= v31)
  {
    __break(1u);
  }

  else
  {
    v35 = *v3;
    CRSequence.subscript.getter();
    v21 = v27;
    (*(v27 + 16))(v14, v19, v10);
    (*(v16 + 8))(v19, v15);
    v22 = *(v5 - 8);
    (*(v22 + 16))(v9, v26, v5);
    (*(v22 + 56))(v9, 0, 1, v5);
    *&v23 = v10;
    *(&v23 + 1) = v5;
    v33 = v25;
    v32 = v23;
    v34 = *(v28 + 48);
    v24 = type metadata accessor for CRDictionary();
    sub_1ADFAEA78(v9, v14, v24);
    (*(v21 + 8))(v14, v10);
    return (*(v29 + 8))(v9, v30);
  }

  return result;
}

uint64_t sub_1AE017AB8(uint64_t a1)
{
  v2 = type metadata accessor for Timestamp(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AE017B14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Timestamp(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AE017B78(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1AE017BC0()
{
  v1 = v0[8];
  v2 = *(v0[5] + 8);
  v3 = v0[2];
  return sub_1AE23CCBC() & 1;
}

uint64_t sub_1AE017C0C(uint64_t a1)
{
  *(a1 + 16) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 24) = result;
  return result;
}

void sub_1AE017C90(uint64_t a1)
{
  v1 = *(*(a1 + 48) + 8);
  v2 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  sub_1AE23CB1C();
  if (v3 <= 0x3F)
  {
    sub_1AE23C12C();
    if (v4 <= 0x3F)
    {
      sub_1ADF5CE54();
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1AE017DA8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_9Coherence12CRDictionaryV14MutatingActionVyxq__GSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1AE017E14()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AE017E68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  v5 = *(v2 + 40);
  v6 = *(v2 + 48);
  v7 = *(v2 + 56);
  v11 = *(v2 + 88);
  v10 = *(v2 + 80);
  v9 = *(v2 + 64);
  return sub_1AE012B90(a1, *(v2 + 96), *(v2 + 16), a2);
}

uint64_t sub_1AE017EE4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1AE017F28@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  v7 = v2[6];
  v8 = v2[7];
  v9 = v2[8];
  return sub_1AE017238(a1, a2);
}

uint64_t sub_1AE017FA4()
{
  result = sub_1AE23BDDC();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_initClassMetadata2();
  }

  return result;
}

void sub_1AE01808C(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = v2;
  v7 = sub_1ADDD1E30();
  if (!v3)
  {
    v8 = v7;
    v9 = sqlite3_step(v7);
    if (v9 != 101)
    {
      if (v9 == 5)
      {
        sub_1ADE47024();
        swift_allocError();
        *v10 = 0;
        *(v10 + 8) = 0;
        *(v10 + 16) = 5;
        swift_willThrow();
        sqlite3_finalize(v8);
        return;
      }

      if (sqlite3_errmsg(*(v4 + 32)))
      {
        v18 = sub_1AE23CDEC();
        v20 = v19;
        sub_1ADE47024();
        swift_allocError();
        *v21 = v18;
        *(v21 + 8) = v20;
        *(v21 + 16) = 2;
        swift_willThrow();
        sqlite3_finalize(v8);
        return;
      }

      __break(1u);
      goto LABEL_25;
    }

    v11 = sqlite3_finalize(v8);
    if (a1)
    {
      v12 = *(v4 + 32);
      v13 = *(a1 + 16);

      if (sqlite3_snapshot_open(v12, "main", v13))
      {
        if (sqlite3_errmsg(*(v4 + 32)))
        {
          v14 = sub_1AE23CDEC();
          v16 = v15;
          sub_1ADE47024();
          swift_allocError();
          *v17 = v14;
          *(v17 + 8) = v16;
          *(v17 + 16) = 4;
          swift_willThrow();

          return;
        }

LABEL_25:
        __break(1u);
        goto LABEL_26;
      }
    }

    a2(v11);
    v22 = sub_1ADDD1E30();
    v23 = sqlite3_step(v22);
    if (v23 == 5)
    {
      sub_1ADE47024();
      v24 = swift_allocError();
      *v25 = 0;
      *(v25 + 8) = 0;
      v26 = 5;
    }

    else
    {
      if (v23 == 101)
      {
        sqlite3_finalize(v22);
        return;
      }

      if (!sqlite3_errmsg(*(v4 + 32)))
      {
        goto LABEL_27;
      }

      v27 = sub_1AE23CDEC();
      v29 = v28;
      sub_1ADE47024();
      v24 = swift_allocError();
      *v25 = v27;
      *(v25 + 8) = v29;
      v26 = 2;
    }

    *(v25 + 16) = v26;
    v30 = v24;
    swift_willThrow();
    sqlite3_finalize(v22);
    v31 = sub_1ADDD1E30();
    v32 = sqlite3_step(v31);
    if (v32 == 5)
    {
      sub_1ADE47024();
      swift_allocError();
      *v33 = 0;
      *(v33 + 8) = 0;
      *(v33 + 16) = 5;
      swift_willThrow();
      sqlite3_finalize(v31);

      return;
    }

    if (v32 == 101)
    {
      sqlite3_finalize(v31);
      swift_willThrow();
      return;
    }

    if (sqlite3_errmsg(*(v4 + 32)))
    {
      v34 = sub_1AE23CDEC();
      v36 = v35;
      sub_1ADE47024();
      swift_allocError();
      *v37 = v34;
      *(v37 + 8) = v36;
      *(v37 + 16) = 2;
      swift_willThrow();
      sqlite3_finalize(v31);

      return;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }
}

double sub_1AE018450()
{
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 1;
  return result;
}

uint64_t sub_1AE018484(char *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v19 = *(v11 + 48);
  v20 = *(v11 + 52);
  v21 = swift_allocObject();
  sub_1AE0197B8(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
  return v21;
}

uint64_t sub_1AE018590@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 32);
  swift_beginAccess();
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  v7 = v3[5];
  v8 = v3[6];
  *a1 = v4;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  return sub_1ADE92304(v4, v5, v6, v7, v8);
}

uint64_t sub_1AE01864C(void *a1)
{
  result = sub_1AE02AE6C();
  if (!v2)
  {
    v6 = v5;
    sub_1AE01DAE0(result, a1);

    v7 = *(v1 + 40);
    sub_1ADDF6EEC();

    sub_1AE020878(a1, v6);
  }

  return result;
}

uint64_t sub_1AE018748(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1AE018768, 0, 0);
}

uint64_t sub_1AE018768()
{
  v1 = v0[3];
  v2 = sub_1AE02AE6C();
  v0[4] = v2;
  v0[5] = v3;
  v4 = v2;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_1AE018858;
  v6 = v0[2];
  v7 = v0[3];

  return sub_1AE01ECA0(v4, v6);
}

uint64_t sub_1AE018858()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v9 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = *(v2 + 32);
    v5 = *(v2 + 40);

    v6 = sub_1AE018A34;
  }

  else
  {
    v7 = *(v2 + 32);

    v6 = sub_1AE018984;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1AE018984()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[2];
  v4 = *(v0[3] + 40);
  sub_1ADDF6EEC();

  sub_1AE020878(v3, v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1AE018A34()
{
  v1 = *(v0[3] + 72);
  sub_1AE23D6AC();
  v2 = v0[7];
  swift_willThrow();
  v3 = v0[7];
  v4 = v0[1];

  return v4();
}

uint64_t sub_1AE018AE4(char *a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  sub_1AE020CC8(a1, a2);
  return v7;
}

uint64_t sub_1AE018BE8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1ADF7AFF4(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1AE23DD7C();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[2 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= v14)
          {
            break;
          }

          *(v13 + 1) = v14;
          *v13 = v11;
          v13 -= 2;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 2;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1AE23D06C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1AE029BB8(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1AE018D20(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1ADF7B008(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1AE23DD7C();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = v2[v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= v14)
          {
            break;
          }

          v13[1] = v14;
          *v13-- = v11;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        ++v10;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1AE23D06C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1AE02A108(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1AE018E58(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v13 = result;
    while (v7 < *(a3 + 16))
    {
      v14 = *(a3 + 8 * v7 + 32);

      v9 = v6(&v14);
      if (v3)
      {

        return v8;
      }

      v10 = v14;
      if (v9)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v15 = v8;
        if ((result & 1) == 0)
        {
          result = sub_1ADE6F304(0, *(v8 + 16) + 1, 1);
          v8 = v15;
        }

        v12 = *(v8 + 16);
        v11 = *(v8 + 24);
        if (v12 >= v11 >> 1)
        {
          result = sub_1ADE6F304((v11 > 1), v12 + 1, 1);
          v8 = v15;
        }

        *(v8 + 16) = v12 + 1;
        *(v8 + 8 * v12 + 32) = v10;
        v6 = v13;
      }

      else
      {
      }

      if (v5 == ++v7)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_14:

    return v8;
  }

  return result;
}

double sub_1AE018FE8(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v45 = a7;
  *&v41 = a5;
  v13 = *(a6 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v17;
  v19 = v17[1];
  v20 = *(v7 + 56);

  sub_1AE026EA8(v18, v19, v20, &v42);
  if (!v8)
  {
    v22 = v13;
    v39 = a3;
    v40 = v16;
    v37 = a1;
    v38 = a6;
    v23 = v41;
    v36 = a2;
    v24 = *(&v42 + 1);
    if (*(&v42 + 1) >> 60 == 15)
    {
      sub_1ADE42E40();
      swift_allocError();
      *v25 = 0xD00000000000001BLL;
      *(v25 + 8) = 0x80000001AE2611B0;
      *(v25 + 16) = 0;
      swift_willThrow();
    }

    else
    {
      v35 = v22;
      v26 = v42;
      v27 = v43;
      v28 = v44;
      sub_1ADDD86D8(v42, *(&v42 + 1));
      sub_1ADDD86D8(v27, v28);
      sub_1ADDCC35C(v27, v28);
      type metadata accessor for CRDecoder();
      swift_allocObject();

      v29 = sub_1ADE64748(v26, v24, v23);
      v34 = v26;
      v30 = v38;
      (*(*(*(v45 + 16) + 8) + 8))(v29, v38);
      inited = swift_initStackObject();
      v32 = MEMORY[0x1E69E7CC0];
      *(inited + 32) = MEMORY[0x1E69E7CC0];
      *(inited + 40) = v32;
      *(inited + 48) = MEMORY[0x1E69E7CC8];
      *(inited + 56) = 256;
      *(inited + 64) = 0;
      *(inited + 72) = 0;
      *(inited + 16) = v23;
      *(inited + 24) = v32;

      sub_1ADE62FA4(v27, v28, &v42);
      sub_1AE02AA94(v34, v24, v27, v28);
      swift_setDeallocating();
      CRDecoder.deinit();
      swift_deallocClassInstance();
      v41 = v42;
      (*(v35 + 32))(v37, v40, v30);
      result = *&v41;
      *v36 = v41;
    }
  }

  return result;
}

uint64_t sub_1AE019368@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v32 = a5;
  v6 = v5;
  v37 = a4;
  v10 = sub_1AE23BDDC();
  v35 = *(v10 - 8);
  v36 = v10;
  v11 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a2;
  aBlock = sub_1AE23BEAC();
  v39 = v14;
  v46 = 47;
  v47 = 0xE100000000000000;
  v44 = 95;
  v45 = 0xE100000000000000;
  sub_1ADE42DEC();
  sub_1AE23D82C();

  sub_1AE23BD3C();

  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  v16 = (v15 + 16);
  v33 = a3;
  v34 = v13;
  if (a3)
  {
    v31 = sub_1AE23BD1C();
    v17 = swift_allocObject();
    v17[2] = v6;
    v17[3] = v15;
    v30 = v6;
    v17[4] = v37;
    v17[5] = a1;
    v18 = v48;
    v17[6] = v48;
    v19 = swift_allocObject();
    v29 = sub_1AE02AD20;
    *(v19 + 16) = sub_1AE02AD20;
    *(v19 + 24) = v17;
    v42 = sub_1AE02BD58;
    v43 = v19;
    aBlock = MEMORY[0x1E69E9820];
    v39 = 1107296256;
    v40 = sub_1ADE8AB00;
    v41 = &block_descriptor_35;
    v20 = _Block_copy(&aBlock);

    sub_1ADDD86D8(a1, v18);

    v21 = v31;
    [v33 coordinateReadingItemAtURL:v31 options:0 error:0 byAccessor:v20];

    _Block_release(v20);
    LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

    if (v21)
    {
      __break(1u);
      return result;
    }

    v23 = v29;
  }

  else
  {
    sub_1AE020930(v13, v6, v15, v37, a1, v48);
    v23 = 0;
    v17 = 0;
  }

  swift_beginAccess();
  v24 = *v16;
  if (*v16)
  {
    v25 = *(v35 + 8);
    v26 = *v16;

    v25(v34, v36);

    result = sub_1ADDDCE7C(v23, v17);
    *v32 = v24;
  }

  else
  {
    sub_1ADE42E40();
    swift_allocError();
    *v27 = 0xD000000000000017;
    *(v27 + 8) = 0x80000001AE262230;
    *(v27 + 16) = 0;
    swift_willThrow();
    (*(v35 + 8))(v34, v36);

    return sub_1ADDDCE7C(v23, v17);
  }

  return result;
}

uint64_t sub_1AE019778()
{
  sub_1ADE92284(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocClassInstance();
}

uint64_t sub_1AE0197B8(char *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v222 = a8;
  v226 = a7;
  v229 = a6;
  v236 = a5;
  v233 = a4;
  v237 = a3;
  v256 = a2;
  v234 = a1;
  v255 = a11;
  v231 = a10;
  v232 = a9;
  v264 = *MEMORY[0x1E69E9840];
  v230 = *v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v224 = &v217 - v14;
  v258 = sub_1AE23BDDC();
  v252 = *(v258 - 8);
  v15 = v252[8];
  MEMORY[0x1EEE9AC00](v258);
  v219 = &v217 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v220 = &v217 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v221 = &v217 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v225 = &v217 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v227 = &v217 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v223 = &v217 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v235 = &v217 - v28;
  v246 = sub_1AE23D68C();
  v257 = *(v246 - 8);
  v29 = *(v257 + 64);
  MEMORY[0x1EEE9AC00](v246);
  v245 = &v217 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v254 = sub_1AE23D65C();
  v31 = *(*(v254 - 8) + 64);
  MEMORY[0x1EEE9AC00](v254);
  v253 = &v217 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1AE23C8CC();
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v35 = sub_1AE23BFEC();
  v251 = v35;
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v39 = &v217 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v239 = sub_1ADDCED94();
  v238 = v11;
  v11[2] = 0;
  v11[3] = 0;
  v261 = 0x746972772D6C7173;
  v262 = 0xEA00000000002D65;
  sub_1AE23BFDC();
  v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BB3D0, &unk_1AE24C540);
  v40 = swift_allocObject();
  v247 = xmmword_1AE241900;
  *(v40 + 16) = xmmword_1AE241900;
  sub_1AE23BFCC();
  v41 = MEMORY[0x1E69E7508];
  v42 = MEMORY[0x1E69E7558];
  *(v40 + 56) = MEMORY[0x1E69E7508];
  *(v40 + 64) = v42;
  v43 = v41;
  v44 = v42;
  *(v40 + 32) = v45;
  sub_1AE23BFCC();
  *(v40 + 96) = v43;
  *(v40 + 104) = v44;
  *(v40 + 72) = v46;
  v47 = sub_1AE23CD3C();
  v49 = v48;
  v249 = *(v36 + 8);
  v250 = v36 + 8;
  v249(v39, v35);
  MEMORY[0x1B26FB670](v47, v49);

  sub_1AE23C8AC();
  v261 = MEMORY[0x1E69E7CC0];
  v243 = sub_1AE02ADD4(&unk_1ED96B1F0, MEMORY[0x1E69E8030]);
  v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9E60, &qword_1AE251B80);
  v244 = sub_1ADDCC7D4(&qword_1ED96B200, &qword_1EB5B9E60, &qword_1AE251B80);
  sub_1AE23D8DC();
  LODWORD(v241) = *MEMORY[0x1E69E8090];
  v50 = *(v257 + 104);
  v257 += 104;
  v240 = v50;
  v51 = v246;
  (v50)(v245);
  v52 = sub_1AE23D6CC();
  v53 = v238;
  v238[8] = v52;
  v261 = 0x646165722D6C7173;
  v262 = 0xE90000000000002DLL;
  sub_1AE23BFDC();
  v54 = swift_allocObject();
  *(v54 + 16) = v247;
  sub_1AE23BFCC();
  v55 = MEMORY[0x1E69E7508];
  *(v54 + 56) = MEMORY[0x1E69E7508];
  v56 = MEMORY[0x1E69E7558];
  *(v54 + 64) = MEMORY[0x1E69E7558];
  *(v54 + 32) = v57;
  sub_1AE23BFCC();
  *(v54 + 96) = v55;
  *(v54 + 104) = v56;
  *(v54 + 72) = v58;
  v59 = sub_1AE23CD3C();
  v61 = v60;
  v249(v39, v251);
  MEMORY[0x1B26FB670](v59, v61);

  sub_1AE23C8AC();
  v261 = MEMORY[0x1E69E7CC0];
  sub_1AE23D8DC();
  v62 = v245;
  v240(v245, v241, v51);
  v53[9] = sub_1AE23D6CC();
  v63 = v53;
  v261 = 0x65722D7465737361;
  v262 = 0xEB000000002D6461;
  sub_1AE23BFDC();
  v64 = swift_allocObject();
  *(v64 + 16) = v247;
  sub_1AE23BFCC();
  v65 = MEMORY[0x1E69E7508];
  *(v64 + 56) = MEMORY[0x1E69E7508];
  v66 = MEMORY[0x1E69E7558];
  *(v64 + 64) = MEMORY[0x1E69E7558];
  *(v64 + 32) = v67;
  sub_1AE23BFCC();
  *(v64 + 96) = v65;
  *(v64 + 104) = v66;
  *(v64 + 72) = v68;
  v69 = sub_1AE23CD3C();
  v71 = v70;
  v218 = v39;
  v249(v39, v251);
  MEMORY[0x1B26FB670](v69, v71);

  sub_1AE23C8AC();
  v72 = MEMORY[0x1E69E7CC0];
  v261 = MEMORY[0x1E69E7CC0];
  sub_1AE23D8DC();
  v240(v62, v241, v246);
  v73 = v63;
  *(v63 + 80) = sub_1AE23D6CC();
  *(v63 + qword_1EB5D7450) = 0;
  v254 = qword_1EB5D7458;
  *(v63 + qword_1EB5D7458) = v72;
  v257 = qword_1EB5D7428;
  *(v63 + qword_1EB5D7428) = 0;
  v74 = objc_opt_self();
  v75 = [v74 defaultManager];
  v76 = v235;
  sub_1AE23BD3C();
  sub_1AE23BDAC();
  v77 = (v252 + 1);
  v78 = v252[1];
  v78(v76, v258);
  v79 = sub_1AE23CCDC();

  LOBYTE(v63) = [v75 fileExistsAtPath_];

  if ((v63 & 1) == 0)
  {
    goto LABEL_5;
  }

  while (1)
  {
    v240 = v74;

    v81 = sub_1ADF7E7B4(v80);

    v82 = *(v81 + 16);
    if (!v82)
    {
      break;
    }

    v83 = sub_1AE1942D8(*(v81 + 16), 0);
    v84 = sub_1AE03A9F4(&v261, v83 + 32, v82, v81);
    sub_1ADDDCE74();
    if (v84 == v82)
    {
      goto LABEL_10;
    }

    __break(1u);
LABEL_5:
    if (v233)
    {
      v85 = v256;

      sub_1ADE42E40();
      swift_allocError();
      *v86 = 0xD000000000000014;
      *(v86 + 8) = 0x80000001AE262270;
      *(v86 + 16) = 0;
      goto LABEL_35;
    }

    v87 = [v74 defaultManager];
    v88 = v235;
    v85 = v256;
    sub_1AE23BD3C();
    v89 = sub_1AE23BD1C();
    v78(v88, v258);
    v261 = 0;
    LODWORD(v88) = [v87 createDirectoryAtURL:v89 withIntermediateDirectories:1 attributes:0 error:&v261];

    if (!v88)
    {
      v115 = v261;

      sub_1AE23BC9C();

LABEL_35:
      swift_willThrow();

      sub_1ADDCEDE0(v237, &qword_1EB5B9DC0, &qword_1AE240B90);
      v78(v85, v258);
      v116 = *(v73 + 3);
      sub_1ADE42CB8(*(v73 + 2));
      v117 = 0;
      v118 = v257;
LABEL_66:

      if (v117)
      {
        v187 = v258;
        v78(&v73[qword_1EB5D74C8], v258);
        v78(&v73[qword_1EB5D7420], v187);
        v188 = *&v73[v254];

        v189 = *&v73[qword_1EB5D7430];

        v190 = *&v73[qword_1EB5D7448];

        v191 = *&v73[v118];

        v192 = *&v73[qword_1EB5D7440];
      }

      else
      {
        v193 = *&v73[v254];

        v194 = *&v73[v118];
      }

      v195 = *(*v73 + 48);
      v196 = *(*v73 + 52);
      swift_deallocPartialClassInstance();
LABEL_70:
      v197 = *MEMORY[0x1E69E9840];
      return v73;
    }

    v90 = v261;
  }

  v83 = MEMORY[0x1E69E7CC0];
LABEL_10:
  v261 = v83;

  v91 = v228;
  sub_1AE018D20(&v261);
  v92 = v91;
  if (!v91)
  {

    v93 = qword_1EB5D7448;
    *&v73[qword_1EB5D7448] = v261;

    v94 = v257;
    if (v231)
    {
      v95 = sub_1ADF7E740(v231);

      v96 = *(v95 + 16);
      if (v96)
      {
        v97 = sub_1AE19434C(*(v95 + 16), 0);
        v98 = sub_1AE03A8F4(&v261, v97 + 16, v96, v95);
        sub_1ADDDCE74();
        if (v98 != v96)
        {
          __break(1u);
          goto LABEL_15;
        }
      }

      else
      {

        v97 = MEMORY[0x1E69E7CC0];
      }

      v261 = v97;

      sub_1AE018BE8(&v261);

      v99 = v261;
LABEL_18:
      *&v73[qword_1EB5D7430] = v99;
      v100 = *&v73[v94];
      *&v73[v94] = v99;
      v246 = v99;
      swift_bridgeObjectRetain_n();

      v253 = v77;
      v248 = v78;
      v101 = v255;
      if (v255)
      {
        v102 = *&v73[v94];
        v103 = v256;
        if (v102)
        {
          v245 = v93;
          v104 = *(v102 + 16);
          if (v104)
          {
            *&v247 = 0;
            v105 = (v255 + 32);

            v106 = 0;
            v107 = MEMORY[0x1E69E7CC0];
            do
            {
              v110 = *(v102 + 32 + 2 * v106);
              v111 = *(v101 + 16);
              v112 = v105;
              while (v111)
              {
                v113 = *v112++;
                --v111;
                if (v113 == v110)
                {
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v261 = v107;
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    sub_1ADE6F41C(0, *(v107 + 16) + 1, 1);
                    v107 = v261;
                  }

                  v109 = *(v107 + 16);
                  v108 = *(v107 + 24);
                  if (v109 >= v108 >> 1)
                  {
                    sub_1ADE6F41C((v108 > 1), v109 + 1, 1);
                    v107 = v261;
                  }

                  *(v107 + 16) = v109 + 1;
                  *(v107 + 2 * v109 + 32) = v110;
                  v101 = v255;
                  break;
                }
              }

              ++v106;
            }

            while (v106 != v104);

            v73 = v238;
            v103 = v256;
            v92 = v247;
          }

          else
          {
            v107 = MEMORY[0x1E69E7CC0];
          }

          v94 = v257;
          v93 = v245;
        }

        else
        {

          v107 = 0;
        }

        *&v247 = v92;
        v119 = *&v73[v94];
        *&v73[v94] = v107;
      }

      else
      {
        *&v247 = 0;
        v103 = v256;
      }

      v120 = *&v73[v93];
      v243 = qword_1EB5D7440;
      v245 = v120;
      *&v73[qword_1EB5D7440] = v120;
      v121 = v234;
      *(v73 + 5) = v234;
      v241 = OBJC_IVAR___CRContext_assetManager;
      v255 = *&v121[OBJC_IVAR___CRContext_assetManager];
      *(v73 + 6) = v255;
      v122 = v252;
      v123 = v73;
      v125 = v252 + 2;
      v124 = v252[2];
      v126 = v258;
      v124(&v123[qword_1EB5D74C8], v103, v258);
      v127 = v224;
      sub_1ADDCEE40(v237, v224, &qword_1EB5B9DC0, &qword_1AE240B90);
      v128 = v122[6];
      v129 = v128(v127, 1, v126);
      v242 = v125;
      v244 = v124;
      if (v129 == 1)
      {
        v130 = v227;
        v131 = v258;
        v124(v227, v103, v258);
        v132 = v128(v127, 1, v131);

        v133 = v121;

        v134 = v127;
        v135 = v121;
        if (v132 != 1)
        {
          sub_1ADDCEDE0(v134, &qword_1EB5B9DC0, &qword_1AE240B90);
        }
      }

      else
      {
        v136 = v122[4];
        v130 = v227;
        v136(v227, v127, v258);

        v137 = v121;

        v135 = v121;
      }

      v138 = v223;
      sub_1AE23BD2C();
      v139 = v258;
      v140 = v248;
      v248(v130, v258);
      v141 = v252[4];
      v73 = v238;
      v255 = qword_1EB5D7420;
      v252 += 4;
      v245 = v141;
      (v141)(v238 + qword_1EB5D7420, v138, v139);
      *(v73 + 4) = v236;
      v73[qword_1EB5D7460] = v226 & 1;

      v142 = v225;
      sub_1AE23BD3C();
      v143 = sub_1AE23BDAC();
      v145 = v144;
      v140(v142, v139);
      v146 = v247;
      v147 = sub_1AE01B598(v143, v145, v135, v233 & 1, v229 & 1, v246);
      if (!v146)
      {
        v175 = v147;

        v215 = v175;
        *(v73 + 7) = v175;
        v118 = v257;
        goto LABEL_54;
      }

      v260 = v146;
      v148 = v146;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB180, &unk_1AE2427A0);
      if ((swift_dynamicCast() & 1) == 0)
      {

        sub_1ADDCEDE0(v237, &qword_1EB5B9DC0, &qword_1AE240B90);
        v78 = v248;
        v248(v256, v258);

        v118 = v257;
        goto LABEL_65;
      }

      v118 = v257;
      if (v263 == 2)
      {
        if (!v261)
        {

          v149 = v221;
          sub_1AE23BD3C();
          if ((v233 & 1) == 0)
          {
LABEL_52:
            v174 = v246;
            sub_1AE030854(v234, v149, v246);
            v206 = sub_1AE23BDAC();
            v213 = sub_1AE01B598(v206, v207, v234, v233 & 1, v229 & 1, v174);
            v248(v149, v258);

            *(v73 + 7) = v213;

            v215 = *(v73 + 7);
LABEL_54:
            if (*(v215 + 66))
            {
              v176 = 0;
            }

            else
            {
              v176 = *(v215 + 64);
            }

            if (v176 <= 3u)
            {
              MEMORY[0x1EEE9AC00](v214);
              *(&v217 - 16) = v177;
              v178 = v243;
              swift_beginAccess();
              sub_1AE01B8CC(sub_1AE02ADC8, &v73[v178], v259);
              swift_endAccess();
            }

            v181 = v234;
            v182 = v244;
            v183 = *(v73 + 7);
            if ((*(v183 + 70) & 1) == 0)
            {
              sub_1AE01B9D0(*(v183 + 68), &v73[v118]);
            }

            v199 = v235;
            if (v222)
            {

              sub_1ADDCEDE0(v237, &qword_1EB5B9DC0, &qword_1AE240B90);
              v248(v256, v258);
              v200 = 0;
            }

            else
            {
              v201 = *&v181[v241];
              v202 = v258;
              v203 = v182(v235, &v73[v255], v258);
              v204 = *(v201 + 32);
              MEMORY[0x1EEE9AC00](v203);
              *(&v217 - 4) = v201;
              *(&v217 - 3) = v199;
              *(&v217 - 16) = 1;
              type metadata accessor for CRAssetWatchedDirectory();
              sub_1AE23D6AC();

              sub_1ADDCEDE0(v237, &qword_1EB5B9DC0, &qword_1AE240B90);
              v205 = v248;
              v248(v256, v202);
              v200 = v261;
              v205(v199, v202);
            }

            *&v73[qword_1EB5D7438] = v200;
            goto LABEL_70;
          }

          v150 = [v240 defaultManager];
          v151 = sub_1AE23BD1C();
          v259[0] = 0;
          v152 = [v150 URLForDirectory:99 inDomain:1 appropriateForURL:v151 create:1 error:v259];

          v153 = v259[0];
          if (v152)
          {
            v154 = v235;
            sub_1AE23BD8C();
            v155 = v153;

            v156 = v220;
            sub_1AE23BD3C();
            v157 = v248;
            v248(v154, v258);
            v158 = [v240 &selRef_coalesce + 3];
            v159 = sub_1AE23BD1C();
            v259[0] = 0;
            v160 = [v158 createDirectoryAtURL:v159 withIntermediateDirectories:1 attributes:0 error:v259];

            v161 = v259[0];
            if (v160)
            {
              v259[0] = 0x2D65646172677055;
              v259[1] = 0xE800000000000000;
              v162 = v161;
              v163 = v218;
              sub_1AE23BFDC();
              sub_1AE02ADD4(&qword_1EB5BCCC0, MEMORY[0x1E69695A8]);
              v164 = v251;
              v165 = sub_1AE23DD9C();
              MEMORY[0x1B26FB670](v165);

              v249(v163, v164);
              sub_1AE23BD3C();

              v166 = [v240 defaultManager];
              sub_1AE23BD3C();
              v167 = sub_1AE23BD1C();
              v157(v154, v258);
              v168 = sub_1AE23BD1C();
              v259[0] = 0;
              LODWORD(v164) = [v166 copyItemAtURL:v167 toURL:v168 error:v259];

              if (v164)
              {
                v169 = v259[0];
                v170 = v219;
                sub_1AE23BD3C();
                v171 = v170;
                v172 = v258;
                v157(v171, v258);
                v157(v220, v172);
                v173 = v221;
                v157(v221, v172);
                v149 = v173;
                (v245)(v173, v154, v172);
                goto LABEL_52;
              }

              v216 = v259[0];

              sub_1AE23BC9C();

              swift_willThrow();

              sub_1ADDCEDE0(v237, &qword_1EB5B9DC0, &qword_1AE240B90);
              v211 = v258;
              v157(v256, v258);
              v157(v219, v211);
              v212 = v220;
            }

            else
            {
              v210 = v259[0];

              sub_1AE23BC9C();

              swift_willThrow();

              sub_1ADDCEDE0(v237, &qword_1EB5B9DC0, &qword_1AE240B90);
              v211 = v258;
              v157(v256, v258);
              v212 = v156;
            }

            v157(v212, v211);
            v157(v221, v211);

            v78 = v157;
LABEL_65:
            v184 = *(v73 + 3);
            sub_1ADE42CB8(*(v73 + 2));
            v185 = *(v73 + 4);

            v186 = *(v73 + 6);

            v117 = 1;
            goto LABEL_66;
          }

          v208 = v259[0];

          sub_1AE23BC9C();

          swift_willThrow();

          sub_1ADDCEDE0(v237, &qword_1EB5B9DC0, &qword_1AE240B90);
          v209 = v258;
          v78 = v248;
          v248(v256, v258);
          v179 = v149;
          v180 = v209;
LABEL_62:
          v78(v179, v180);

          goto LABEL_65;
        }
      }

      else
      {
        sub_1ADE74174(v261, v262, v263);
      }

      sub_1ADDCEDE0(v237, &qword_1EB5B9DC0, &qword_1AE240B90);
      v179 = v256;
      v180 = v258;
      v78 = v248;
      goto LABEL_62;
    }

LABEL_15:
    v99 = 0;
    goto LABEL_18;
  }

  __break(1u);
  return result;
}