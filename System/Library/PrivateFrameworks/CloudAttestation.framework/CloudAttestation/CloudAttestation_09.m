uint64_t SEP.SealedHash.ratchet(digest:flags:)(uint64_t a1, unint64_t a2, char *a3)
{
  v8 = type metadata accessor for SEP.SealedHash.Value(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22FFB13F8();
  v34 = *(v12 - 8);
  v13 = *(v34 + 64);
  result = MEMORY[0x28223BE20](v12);
  v16 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a3;
  v18 = a2 >> 62;
  v33 = v4;
  if ((a2 >> 62) > 1)
  {
    v19 = 0;
    if (v18 != 2)
    {
      goto LABEL_10;
    }

    v21 = *(a1 + 16);
    v20 = *(a1 + 24);
    v19 = v20 - v21;
    if (!__OFSUB__(v20, v21))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v18)
  {
    v19 = BYTE6(a2);
    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
    __break(1u);
    return result;
  }

  v19 = HIDWORD(a1) - a1;
LABEL_10:
  if (sub_22FFB13A8() < v19)
  {
    sub_22FF5FE1C();
    swift_allocError();
    v23 = 1;
LABEL_16:
    *v22 = v23;
    *(v22 + 4) = 1;
    return swift_willThrow();
  }

  v24 = *v3;
  if ((*v3 & 6) != 2)
  {
LABEL_15:
    sub_22FF5FE1C();
    swift_allocError();
    v23 = 0;
    goto LABEL_16;
  }

  v32 = a1;
  v25 = v8;
  v26 = *(type metadata accessor for SEP.SealedHash(0) + 20);
  sub_22FF5FE70(&v3[v26], v11);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_22FED82C8(v11, type metadata accessor for SEP.SealedHash.Value);
    goto LABEL_15;
  }

  v30[1] = v25;
  v31 = v26;
  v27 = *(v34 + 32);
  v27(v16, v11, v12);
  if ((v17 & 4) != 0)
  {
    *v3 = v24 | 4;
  }

  v28 = v32;
  sub_22FEA5608(v32, a2);
  sub_22FED5478(v28, a2);
  sub_22FEA55AC(v28, a2);
  v29 = v31;
  sub_22FED82C8(&v3[v31], type metadata accessor for SEP.SealedHash.Value);
  v27(&v3[v29], v16, v12);
  return swift_storeEnumTagMultiPayload();
}

uint64_t SEP.SealedHash.init(entry:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 56);
  v9 = *(a1 + 32);
  sub_22FEA5608(v3, v4);
  SEP.SealedHash.init(digest:flags:)(v3, v4, &v9, a2);
  sub_22FEA55AC(v3, v4);
  sub_22FEA56EC(v5, v6);
}

uint64_t SEP.SealedHash.init<A>(entries:)@<X0>(uint64_t a1@<X0>, unsigned int (*a2)(char *, uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v9 = type metadata accessor for SEP.SealedHash(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v16[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_22FF5EA44(sub_22FF5EA10, 0, a2, MEMORY[0x277CC9318], MEMORY[0x277D84A98], a3, MEMORY[0x277D84AC0], v13);
  sub_22FF5D114(v14, v12);
  if (v4)
  {
    return (*(*(a2 - 1) + 8))(a1, a2);
  }

  sub_22FF5FF1C(v12, a4);
  v16[14] = 0;
  sub_22FFB1658();
  result = (*(*(a2 - 1) + 8))(a1, a2);
  *a4 = v16[15];
  return result;
}

uint64_t sub_22FF5EA10@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return sub_22FEA5608(v3, v2);
}

uint64_t sub_22FF5EA44(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
  v22 = sub_22FFB1888();
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
  v39 = sub_22FFB1628();
  v70 = sub_22FFB1A78();
  v65 = sub_22FFB1A88();
  sub_22FFB1A28();
  (*(v62 + 2))(v35, v59, a3);
  v68 = v38;
  v62 = a3;
  result = sub_22FFB1608();
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
      sub_22FFB18A8();
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
      sub_22FFB1A68();
      if (!--v39)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v43 = v57;
  sub_22FFB18A8();
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
      sub_22FFB1A68();
      sub_22FFB18A8();
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

BOOL sub_22FF5F1CC(_BYTE *a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = *v2;
  if ((v4 & v3) != v3)
  {
    *v2 = v4 | v3;
  }

  *a1 = v3;
  return (v4 & v3) != v3;
}

unsigned __int8 *sub_22FF5F1FC@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  v5 = v4 & v3;
  if ((v4 & v3) != 0)
  {
    *v2 = v4 & ~v3;
  }

  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

unsigned __int8 *sub_22FF5F228@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 = v4 | v3;
  v5 = v4 & v3;
  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

uint64_t SEP.SealedHash.Value.description.getter()
{
  v0 = sub_22FF5CE54();
  v2 = v1;
  v3 = sub_22FEB0B54(v0, v1);
  sub_22FEA55AC(v0, v2);
  return v3;
}

uint64_t sub_22FF5F350()
{
  v0 = sub_22FF5CE54();
  v2 = v1;
  v3 = sub_22FEB0B54(v0, v1);
  sub_22FEA55AC(v0, v2);
  return v3;
}

uint64_t static SEP.SealedHash.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v5 = *(type metadata accessor for SEP.SealedHash(0) + 20);

  return _s16CloudAttestation3SEPO10SealedHashV5ValueO2eeoiySbAG_AGtFZ_0(&a1[v5], &a2[v5]);
}

uint64_t sub_22FF5F400(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*a1 == *a2)
  {
    return static SEP.SealedHash.Value.== infix(_:_:)(&a1[*(a3 + 20)], &a2[*(a3 + 20)]);
  }

  else
  {
    return 0;
  }
}

uint64_t SEP.SealedHash.Entry.digest.getter()
{
  v1 = *v0;
  sub_22FEA5608(*v0, *(v0 + 8));
  return v1;
}

uint64_t SEP.SealedHash.Entry.data.getter()
{
  v1 = *(v0 + 16);
  sub_22FEBF8F0(v1, *(v0 + 24));
  return v1;
}

uint64_t SEP.SealedHash.Entry.algorithm.getter()
{
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  return result;
}

uint64_t SEP.SealedHash.Entry.metadata.setter(uint64_t a1)
{
  v3 = *(v1 + 56);

  *(v1 + 56) = a1;
  return result;
}

uint64_t SEP.SealedHash.Entry.init<A>(data:flags:algorithm:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v16 = &v22 - v15;
  v23 = *a3;
  *(a6 + 56) = 0;
  v24 = a1;
  v25 = a2;
  sub_22FEB0E54();
  sub_22FFB1378();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18 = sub_22FEC4190(v16, AssociatedTypeWitness, *(AssociatedConformanceWitness + 32));
  v20 = v19;
  result = (*(v13 + 8))(v16, AssociatedTypeWitness);
  *a6 = v18;
  *(a6 + 8) = v20;
  *(a6 + 16) = a1;
  *(a6 + 24) = a2;
  *(a6 + 32) = v23;
  *(a6 + 40) = a4;
  *(a6 + 48) = a5;
  return result;
}

double SEP.SealedHash.Entry.init<A>(digest:flags:algorithm:)@<D0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v9 = *a2;
  *(a5 + 56) = 0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = sub_22FEC4190(a1, AssociatedTypeWitness, *(AssociatedConformanceWitness + 32));
  v14 = v13;
  (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
  *a5 = v12;
  *(a5 + 8) = v14;
  result = 0.0;
  *(a5 + 16) = xmmword_22FFB2D00;
  *(a5 + 32) = v9;
  *(a5 + 40) = a3;
  *(a5 + 48) = a4;
  return result;
}

double SEP.SealedHash.Entry.init<A>(digest:flags:algorithm:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v6 = *a3;
  *(a6 + 48) = a5;
  *(a6 + 56) = 0;
  *a6 = a1;
  *(a6 + 8) = a2;
  result = 0.0;
  *(a6 + 16) = xmmword_22FFB2D00;
  *(a6 + 32) = v6;
  *(a6 + 40) = a4;
  return result;
}

BOOL static SEP.SealedHash.Error.== infix(_:_:)(int *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 4);
  if (*(a1 + 4) == 1)
  {
    if (v2)
    {
      if (v2 == 1)
      {
        if (v3 == 1)
        {
          v5 = *(a2 + 4);
        }

        else
        {
          v5 = 0;
        }

        if (v5)
        {
          return 1;
        }
      }

      else
      {
        if (v3 > 1)
        {
          v8 = *(a2 + 4);
        }

        else
        {
          v8 = 0;
        }

        if (v8)
        {
          return 1;
        }
      }
    }

    else
    {
      if (v3)
      {
        LOBYTE(v7) = 0;
      }

      else
      {
        v7 = *(a2 + 4);
      }

      if (v7)
      {
        return 1;
      }
    }
  }

  else if ((*(a2 + 4) & 1) == 0)
  {
    return v2 == v3;
  }

  return 0;
}

BOOL sub_22FF5F838(int *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 4);
  if (*(a1 + 4) != 1)
  {
    if ((*(a2 + 4) & 1) == 0)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (v2)
  {
    if (v2 != 1)
    {
      if (v3 > 1)
      {
        v8 = *(a2 + 4);
      }

      else
      {
        v8 = 0;
      }

      return (v8 & 1) != 0;
    }

    v5 = v3 == 1;
  }

  else
  {
    v5 = v3 == 0;
  }

  if (v5)
  {
    v7 = *(a2 + 4);
  }

  else
  {
    v7 = 0;
  }

  return (v7 & 1) != 0;
}

uint64_t sub_22FF5F89C(uint64_t a1, uint64_t a2)
{
  result = sub_22FFB0588();
  if (!result || (result = sub_22FFB05B8(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_22FFB05A8();
      sub_22FFB13F8();
      sub_22FF5FED4(&qword_28148F188, MEMORY[0x277CC5550]);
      return sub_22FFB1358();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _s16CloudAttestation3SEPO10SealedHashV5ValueO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FFB13B8();
  v35 = *(v4 - 8);
  v5 = *(v35 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22FFB13F8();
  v9 = *(v8 - 8);
  v36 = v8;
  v37 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SEP.SealedHash.Value(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = (&v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v19 = (&v34 - v18);
  sub_22FF5FE70(a1, &v34 - v18);
  if (swift_getEnumCaseMultiPayload())
  {
    v20 = *v19;
    v21 = v19[1];
  }

  else
  {
    v22 = *(v37 + 32);
    v34 = a2;
    v23 = v36;
    v22(v12, v19, v36);
    sub_22FFB13D8();
    v41 = v4;
    v42 = sub_22FF5FED4(&qword_28148F1A8, MEMORY[0x277CC52C8]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v40);
    v25 = v35;
    (*(v35 + 16))(boxed_opaque_existential_1, v7, v4);
    __swift_project_boxed_opaque_existential_1(v40, v41);
    sub_22FFB0618();
    (*(v25 + 8))(v7, v4);
    v26 = v23;
    a2 = v34;
    (*(v37 + 8))(v12, v26);
    v20 = v38;
    v21 = v39;
    __swift_destroy_boxed_opaque_existential_1(v40);
  }

  sub_22FF5FE70(a2, v17);
  if (swift_getEnumCaseMultiPayload())
  {
    v27 = *v17;
    v28 = v17[1];
  }

  else
  {
    v29 = v37;
    (*(v37 + 32))(v12, v17, v36);
    sub_22FFB13D8();
    v41 = v4;
    v42 = sub_22FF5FED4(&qword_28148F1A8, MEMORY[0x277CC52C8]);
    v30 = __swift_allocate_boxed_opaque_existential_1(v40);
    v31 = v35;
    (*(v35 + 16))(v30, v7, v4);
    __swift_project_boxed_opaque_existential_1(v40, v41);
    sub_22FFB0618();
    (*(v31 + 8))(v7, v4);
    (*(v29 + 8))(v12, v36);
    v27 = v38;
    v28 = v39;
    __swift_destroy_boxed_opaque_existential_1(v40);
  }

  v32 = sub_22FEC3DC8(v20, v21, v27, v28);
  sub_22FEA55AC(v27, v28);
  sub_22FEA55AC(v20, v21);
  return v32 & 1;
}

unint64_t sub_22FF5FE1C()
{
  result = qword_27DAF36D8;
  if (!qword_27DAF36D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF36D8);
  }

  return result;
}

uint64_t sub_22FF5FE70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SEP.SealedHash.Value(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FF5FED4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22FF5FF1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SEP.SealedHash(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_22FF5FF84()
{
  result = qword_27DAF36E0;
  if (!qword_27DAF36E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF36E0);
  }

  return result;
}

unint64_t sub_22FF5FFDC()
{
  result = qword_27DAF36E8;
  if (!qword_27DAF36E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF36E8);
  }

  return result;
}

unint64_t sub_22FF60034()
{
  result = qword_27DAF36F0;
  if (!qword_27DAF36F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF36F0);
  }

  return result;
}

unint64_t sub_22FF6008C()
{
  result = qword_27DAF36F8;
  if (!qword_27DAF36F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF36F8);
  }

  return result;
}

uint64_t sub_22FF60108()
{
  result = type metadata accessor for SEP.SealedHash.Value(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t _s10SealedHashV5FlagsVwet(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 255) >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 255) >> 8 < 0xFF)
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
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (*(a1 + 1))
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else
    {
      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }
  }

  return 0;
}

uint64_t _s10SealedHashV5FlagsVwst(uint64_t result, int a2, int a3)
{
  if ((a3 + 255) >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 255) >> 8 < 0xFF)
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
    v5 = ((a2 - 1) >> 8) + 1;
    *result = a2 - 1;
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
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *(result + 1) = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v4)
  {
    *(result + 1) = 0;
  }

  return result;
}

void sub_22FF60298()
{
  sub_22FF6030C();
  if (v0 <= 0x3F)
  {
    sub_22FF60354();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_22FF6030C()
{
  if (!qword_28148F190)
  {
    v0 = sub_22FFB13F8();
    if (!v1)
    {
      atomic_store(v0, &qword_28148F190);
    }
  }
}

uint64_t sub_22FF60354()
{
  result = qword_281491360;
  if (!qword_281491360)
  {
    result = MEMORY[0x277CC9318];
    atomic_store(MEMORY[0x277CC9318], &qword_281491360);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
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

uint64_t sub_22FF603C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22FF60408(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t _s10SealedHashV5ErrorOwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s10SealedHashV5ErrorOwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_22FF604B4(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22FF604D0(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

uint64_t sub_22FF60504()
{
  v0 = sub_22FFB12F8();
  __swift_allocate_value_buffer(v0, qword_27DB05A98);
  __swift_project_value_buffer(v0, qword_27DB05A98);
  return sub_22FFB12E8();
}

id SWTransparencyLog.init(environment:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  if (MEMORY[0x277D73580])
  {
    result = [objc_allocWithZone(MEMORY[0x277D73580]) initWithApplication_];
  }

  else
  {
    result = 0;
  }

  *(a2 + 8) = result;
  return result;
}

uint64_t SWTransparencyLog.proveInclusion(of:)(uint64_t a1)
{
  *(v2 + 80) = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAF3700, &qword_22FFBE8B8) - 8) + 64) + 15;
  *(v2 + 88) = swift_task_alloc();
  v4 = *(type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofResponse(0) - 8);
  *(v2 + 96) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 104) = swift_task_alloc();
  v6 = *(type metadata accessor for TransparencyLogProofs(0) - 8);
  *(v2 + 112) = v6;
  v7 = *(v6 + 64) + 15;
  *(v2 + 120) = swift_task_alloc();
  v8 = *(*(sub_22FFB0FE8() - 8) + 64) + 15;
  *(v2 + 128) = swift_task_alloc();
  v9 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofBatchResponse(0);
  *(v2 + 136) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v2 + 144) = swift_task_alloc();
  v11 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofRequest(0);
  *(v2 + 152) = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  *(v2 + 160) = swift_task_alloc();
  v13 = sub_22FFB0658();
  *(v2 + 168) = v13;
  v14 = *(v13 - 8);
  *(v2 + 176) = v14;
  v15 = *(v14 + 64) + 15;
  *(v2 + 184) = swift_task_alloc();
  v16 = sub_22FFB04A8();
  *(v2 + 192) = v16;
  v17 = *(v16 - 8);
  *(v2 + 200) = v17;
  v18 = *(v17 + 64) + 15;
  *(v2 + 208) = swift_task_alloc();
  v19 = sub_22FFB06B8();
  *(v2 + 216) = v19;
  v20 = *(v19 - 8);
  *(v2 + 224) = v20;
  v21 = *(v20 + 64) + 15;
  *(v2 + 232) = swift_task_alloc();
  *(v2 + 240) = swift_task_alloc();
  *(v2 + 248) = swift_task_alloc();
  *(v2 + 256) = swift_task_alloc();
  *(v2 + 264) = swift_task_alloc();
  v22 = sub_22FFB0818();
  *(v2 + 272) = v22;
  v23 = *(v22 - 8);
  *(v2 + 280) = v23;
  v24 = *(v23 + 64) + 15;
  v25 = swift_task_alloc();
  *(v2 + 394) = *v1;
  v26 = *(v1 + 8);
  *(v2 + 288) = v25;
  *(v2 + 296) = v26;

  return MEMORY[0x2822009F8](sub_22FF60970, 0, 0);
}

uint64_t sub_22FF60970()
{
  v115 = v0;
  v1 = *(*(v0 + 80) + 16);
  *(v0 + 304) = v1;
  if (!v1)
  {
    v33 = *(v0 + 288);
    v34 = *(v0 + 256);
    v35 = *(v0 + 264);
    v37 = *(v0 + 240);
    v36 = *(v0 + 248);
    v38 = *(v0 + 232);
    v39 = *(v0 + 208);
    v40 = *(v0 + 184);
    v41 = *(v0 + 160);
    v42 = *(v0 + 144);
    v100 = *(v0 + 128);
    v103 = *(v0 + 120);
    v107 = *(v0 + 104);
    v110 = *(v0 + 88);

    v43 = *(v0 + 8);
    v44 = MEMORY[0x277D84F90];

    return v43(v44);
  }

  if (qword_27DAF1490 != -1)
  {
    goto LABEL_37;
  }

LABEL_3:
  v2 = sub_22FFB12F8();
  *(v0 + 312) = __swift_project_value_buffer(v2, qword_27DB05A98);

  v3 = sub_22FFB12D8();
  v4 = sub_22FFB1848();

  if (os_log_type_enabled(v3, v4))
  {
    v95 = v4;
    log = v3;
    v5 = *(v0 + 280);
    v6 = *(v0 + 80);
    v7 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    v113 = v93;
    buf = v7;
    *v7 = 136446210;
    v114 = MEMORY[0x277D84F90];
    sub_22FECDAB4(0, v1, 0);
    v8 = 0;
    v9 = v114;
    v97 = v6 + 32;
    v98 = v1;
    while (1)
    {
      if (v8 == v1)
      {
        __break(1u);
LABEL_37:
        swift_once();
        v92 = *(v0 + 80);
        goto LABEL_3;
      }

      v10 = (v97 + 16 * v8);
      v11 = *v10;
      v102 = v9;
      v106 = v10[1];
      v12 = v106 >> 62;
      if ((v106 >> 62) > 1)
      {
        if (v12 == 2)
        {
          v13 = *(v11 + 16);
LABEL_11:
          sub_22FEA5608(v11, v106);
        }
      }

      else if (v12)
      {
        goto LABEL_11;
      }

      v14 = *(v0 + 288);
      v15 = *(v0 + 272);
      sub_22FEA5608(v11, v106);
      v99 = v11;
      sub_22FFB0828();
      sub_22FF63904(&qword_281491358, MEMORY[0x277CC92E0]);
      sub_22FFB18A8();
      v16 = MEMORY[0x277D84F90];
      if ((*(v0 + 393) & 1) == 0)
      {
        do
        {
          v23 = *(v0 + 392);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAF3750, &qword_22FFB35F0);
          v24 = swift_allocObject();
          *(v24 + 16) = xmmword_22FFB2D10;
          *(v24 + 56) = MEMORY[0x277D84B78];
          *(v24 + 64) = MEMORY[0x277D84BC0];
          *(v24 + 32) = v23;
          v25 = sub_22FFB14D8();
          v27 = v26;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v16 = sub_22FEC2E8C(0, *(v16 + 2) + 1, 1, v16);
          }

          v29 = *(v16 + 2);
          v28 = *(v16 + 3);
          if (v29 >= v28 >> 1)
          {
            v16 = sub_22FEC2E8C((v28 > 1), v29 + 1, 1, v16);
          }

          v30 = *(v0 + 288);
          v31 = *(v0 + 272);
          *(v16 + 2) = v29 + 1;
          v32 = &v16[16 * v29];
          *(v32 + 4) = v25;
          *(v32 + 5) = v27;
          sub_22FFB18A8();
        }

        while (*(v0 + 393) != 1);
      }

      (*(v5 + 8))(*(v0 + 288), *(v0 + 272));
      *(v0 + 72) = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAF3740, &unk_22FFB4290);
      sub_22FEB0F00();
      v17 = sub_22FFB1458();
      v19 = v18;
      sub_22FEA55AC(v99, v106);

      v9 = v102;
      v114 = v102;
      v21 = *(v102 + 16);
      v20 = *(v102 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_22FECDAB4((v20 > 1), v21 + 1, 1);
        v9 = v114;
      }

      ++v8;
      *(v9 + 16) = v21 + 1;
      v22 = v9 + 16 * v21;
      *(v22 + 32) = v17;
      *(v22 + 40) = v19;
      v1 = v98;
      if (v8 == v98)
      {
        v46 = MEMORY[0x23190DEA0](v9, MEMORY[0x277D837D0]);
        v48 = v47;

        v49 = sub_22FF9E448(v46, v48, &v113);

        *(buf + 4) = v49;
        _os_log_impl(&dword_22FE99000, log, v95, "Fetching inclusion proofs for digests %{public}s", buf, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v93);
        MEMORY[0x23190EFF0](v93, -1, -1);
        MEMORY[0x23190EFF0](buf, -1, -1);

        goto LABEL_27;
      }
    }
  }

LABEL_27:
  v50 = sub_22FF625A0();
  v51 = *(v0 + 264);
  v52 = *(v0 + 216);
  v53 = *(v0 + 224);
  v54 = *(v0 + 256);
  LOBYTE(v114) = *(v0 + 394);
  v55 = v50;
  sub_22FEB20A0(0xD000000000000029, 0x800000022FFC9AE0, v51);
  v56 = type metadata accessor for SWTransparencyLog.Delegate();
  v57 = objc_allocWithZone(v56);
  *&v57[OBJC_IVAR____TtCFV16CloudAttestation17SWTransparencyLog14proveInclusionFzZT2ofGSaV10Foundation4Data__GSaVS_21TransparencyLogProofs_L_8Delegate_credential] = v55;
  *(v0 + 48) = v57;
  *(v0 + 56) = v56;
  v58 = v55;
  v59 = objc_msgSendSuper2((v0 + 48), sel_init);
  v60 = *(v53 + 16);
  v60(v54, v51, v52);
  v61 = sub_22FFB12D8();
  v62 = sub_22FFB1848();
  v63 = os_log_type_enabled(v61, v62);
  v64 = *(v0 + 256);
  v66 = *(v0 + 216);
  v65 = *(v0 + 224);
  if (v63)
  {
    v67 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    v114 = v108;
    *v67 = 136446210;
    sub_22FF63904(&qword_27DAF3728, MEMORY[0x277CC9260]);
    v101 = v62;
    v68 = v59;
    v69 = sub_22FFB1BA8();
    v111 = v60;
    v71 = v70;
    v104 = v58;
    v72 = *(v65 + 8);
    v72(v64, v66);
    v73 = v69;
    v59 = v68;
    v74 = sub_22FF9E448(v73, v71, &v114);
    v60 = v111;

    *(v67 + 4) = v74;
    _os_log_impl(&dword_22FE99000, v61, v101, "Using authenticating transparency log url: %{public}s", v67, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v108);
    MEMORY[0x23190EFF0](v108, -1, -1);
    MEMORY[0x23190EFF0](v67, -1, -1);
  }

  else
  {

    v72 = *(v65 + 8);
    v72(v64, v66);
  }

  *(v0 + 328) = v60;
  *(v0 + 336) = v59;
  *(v0 + 320) = v72;
  v109 = *(v0 + 296);
  v112 = v59;
  v105 = *(v0 + 394);
  v75 = *(v0 + 264);
  v76 = *(v0 + 240);
  v77 = *(v0 + 208);
  v78 = *(v0 + 176);
  v79 = *(v0 + 184);
  v80 = *(v0 + 160);
  v81 = *(v0 + 168);
  v82 = *(v0 + 152);
  v83 = *(v0 + 80);
  *(v0 + 16) = 0xD000000000000011;
  *(v0 + 24) = 0x800000022FFCB370;
  (*(v78 + 104))(v79, *MEMORY[0x277CC91D8], v81);
  sub_22FEB2CAC();
  sub_22FFB0698();
  (*(v78 + 8))(v79, v81);
  sub_22FFB0478();
  sub_22FFB0468();
  sub_22FFB0498();
  v84 = swift_task_alloc();
  *(v84 + 16) = v83;
  *(v84 + 24) = v105;
  *(v84 + 32) = v109;
  sub_22FF63904(&unk_27DAF3710, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofRequest);
  sub_22FFB11B8();

  sub_22FFB1178();
  v85 = *(v0 + 208);
  sub_22FFB0488();
  if (v112)
  {
    v86 = objc_opt_self();
    swift_unknownObjectRetain();
    v87 = [v86 defaultSessionConfiguration];
    v88 = [objc_opt_self() sessionWithConfiguration:v87 delegate:v112 delegateQueue:0];

    swift_unknownObjectRelease();
  }

  else
  {
    v88 = [objc_opt_self() sharedSession];
  }

  *(v0 + 344) = v88;
  v89 = *(MEMORY[0x277CC9D18] + 4);
  v88;
  v90 = swift_task_alloc();
  *(v0 + 352) = v90;
  *v90 = v0;
  v90[1] = sub_22FF61714;
  v91 = *(v0 + 208);

  return MEMORY[0x28211ECF8](v91, 0);
}

uint64_t sub_22FF61714(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 352);
  v9 = *v4;
  *(v5 + 360) = a1;
  *(v5 + 368) = a2;
  *(v5 + 376) = a3;
  *(v5 + 384) = v3;

  if (v3)
  {
    v7 = sub_22FF623E0;
  }

  else
  {

    v7 = sub_22FF61834;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22FF61834()
{
  v136 = v0;
  v1 = *(v0 + 376);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClassUnconditional();
  v3 = v1;
  v4 = sub_22FFB1488();
  v5 = [v2 valueForHTTPHeaderField_];

  v6 = &unk_2788BA000;
  if (v5)
  {
    v132 = v2;
    v7 = *(v0 + 376);
    v8 = *(v0 + 328);
    v9 = *(v0 + 312);
    v10 = *(v0 + 264);
    v12 = *(v0 + 224);
    v11 = *(v0 + 232);
    v13 = *(v0 + 216);
    v129 = sub_22FFB1498();
    v15 = v14;

    v8(v11, v10, v13);
    v16 = v7;

    v17 = sub_22FFB12D8();
    v18 = sub_22FFB1848();

    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 376);
    v21 = *(v0 + 320);
    v22 = *(v0 + 224);
    v23 = *(v0 + 232);
    v24 = *(v0 + 216);
    if (v19)
    {
      v123 = v18;
      v25 = swift_slowAlloc();
      v126 = swift_slowAlloc();
      *&v134[0] = v126;
      *v25 = 136446722;
      sub_22FF63904(&qword_27DAF3728, MEMORY[0x277CC9260]);
      log = v17;
      v26 = sub_22FFB1BA8();
      v28 = v27;
      v21(v23, v24);
      v29 = sub_22FF9E448(v26, v28, v134);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2050;
      v6 = &unk_2788BA000;
      v2 = v132;
      v30 = [v132 statusCode];

      *(v25 + 14) = v30;
      *(v25 + 22) = 2082;
      v31 = sub_22FF9E448(v129, v15, v134);

      *(v25 + 24) = v31;
      _os_log_impl(&dword_22FE99000, log, v123, "Transparency server %{public}s responded with status %{public}ld, server hint %{public}s", v25, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x23190EFF0](v126, -1, -1);
      MEMORY[0x23190EFF0](v25, -1, -1);
    }

    else
    {

      v21(v23, v24);
      v2 = v132;
      v6 = &unk_2788BA000;
    }
  }

  if ([v2 v6[458]] != 200)
  {
    v44 = *(v0 + 368);
    v43 = *(v0 + 376);
    v45 = *(v0 + 360);
    v40 = *(v0 + 336);
    type metadata accessor for TransparencyLogError(0);
    sub_22FF63904(&qword_27DAF21C0, type metadata accessor for TransparencyLogError);
    swift_allocError();
    *v46 = [v2 v6[458]];
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v41 = v45;
    v42 = v44;
LABEL_9:
    sub_22FEA55AC(v41, v42);
    v47 = *(v0 + 344);
    if (v40)
    {
LABEL_10:
      v48 = *(v0 + 336);
      [v47 finishTasksAndInvalidate];

      swift_unknownObjectRelease();
LABEL_27:
      v77 = *(v0 + 320);
      v78 = *(v0 + 288);
      v79 = *(v0 + 264);
      v114 = *(v0 + 256);
      v115 = *(v0 + 248);
      v80 = *(v0 + 224);
      v116 = *(v0 + 240);
      v117 = *(v0 + 232);
      v82 = *(v0 + 208);
      v81 = *(v0 + 216);
      v84 = *(v0 + 192);
      v83 = *(v0 + 200);
      v118 = *(v0 + 184);
      v119 = *(v0 + 144);
      loga = *(v0 + 128);
      v124 = *(v0 + 120);
      v127 = *(v0 + 104);
      v130 = *(v0 + 88);
      sub_22FF63A78(*(v0 + 160), type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofRequest);
      (*(v83 + 8))(v82, v84);
      v77(v79, v81);

      v85 = *(v0 + 8);

      return v85();
    }

LABEL_26:

    goto LABEL_27;
  }

  v32 = *(v0 + 384);
  v33 = *(v0 + 360);
  v34 = *(v0 + 368);
  v36 = *(v0 + 136);
  v35 = *(v0 + 144);
  v37 = *(v0 + 128);

  *(v0 + 32) = v33;
  *(v0 + 40) = v34;
  v135 = 0;
  memset(v134, 0, sizeof(v134));
  sub_22FEA5608(v33, v34);
  sub_22FFB0FD8();
  sub_22FF63904(&qword_27DAF3720, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofBatchResponse);
  sub_22FFB1188();
  if (v32)
  {
    v38 = *(v0 + 368);
    v39 = *(v0 + 360);
    v40 = *(v0 + 336);

    v41 = v39;
    v42 = v38;
    goto LABEL_9;
  }

  v49 = *(v0 + 144);
  v50 = *(v49 + 8);
  if (v50 != 1 || *v49 != 1)
  {
    v65 = *(v0 + 88);
    *&v134[0] = *v49;
    BYTE8(v134[0]) = v50;
    sub_22FF631BC(v65);
    v66 = type metadata accessor for TransparencyLogError(0);
    sub_22FF63904(&qword_27DAF21C0, type metadata accessor for TransparencyLogError);
    swift_allocError();
    v68 = v67;
    v69 = *(*(v66 - 8) + 48);
    v70 = v69(v65, 1, v66);
    v71 = *(v0 + 88);
    if (v70 == 1)
    {
      swift_storeEnumTagMultiPayload();
      if (v69(v71, 1, v66) != 1)
      {
        sub_22FEAEA34(*(v0 + 88), &unk_27DAF3700, &qword_22FFBE8B8);
      }
    }

    else
    {
      sub_22FF63B40(*(v0 + 88), v68, type metadata accessor for TransparencyLogError);
    }

    v72 = *(v0 + 368);
    v73 = *(v0 + 376);
    v74 = *(v0 + 360);
    v75 = *(v0 + 336);
    v76 = *(v0 + 144);
    swift_willThrow();

    sub_22FEA55AC(v74, v72);
    sub_22FF63A78(v76, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofBatchResponse);
    v47 = *(v0 + 344);
    if (v75)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

  v51 = *(v0 + 304);
  v52 = *(v49 + 16);
  if (*(v52 + 16) != v51)
  {
    v86 = *(v0 + 368);
    v87 = *(v0 + 376);
    v88 = *(v0 + 360);
    v89 = *(v0 + 336);
    type metadata accessor for TransparencyLogError(0);
    sub_22FF63904(&qword_27DAF21C0, type metadata accessor for TransparencyLogError);
    swift_allocError();
    *v90 = v51;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_22FEA55AC(v88, v86);
    sub_22FF63A78(v49, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofBatchResponse);
    v47 = *(v0 + 344);
    if (v89)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

  v53 = *(v0 + 112);
  v54 = *(v0 + 96);
  *&v134[0] = MEMORY[0x277D84F90];
  result = sub_22FECDA70(0, v51, 0);
  v56 = 0;
  v57 = *&v134[0];
  v58 = v52 + ((*(v54 + 80) + 32) & ~*(v54 + 80));
  do
  {
    if (v56 == *(v0 + 304))
    {
      __break(1u);
LABEL_39:
      __break(1u);
      return result;
    }

    if (v56 >= *(v52 + 16))
    {
      goto LABEL_39;
    }

    v59 = *(v0 + 120);
    v60 = *(v0 + 104);
    sub_22FF63AD8(v58 + *(v54 + 72) * v56, v60, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofResponse);
    sub_22FF629C0(v60, (v0 + 64), v59);
    sub_22FF63A78(*(v0 + 104), type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofResponse);
    *&v134[0] = v57;
    v62 = *(v57 + 16);
    v61 = *(v57 + 24);
    if (v62 >= v61 >> 1)
    {
      sub_22FECDA70(v61 > 1, v62 + 1, 1);
      v57 = *&v134[0];
    }

    ++v56;
    v63 = *(v0 + 304);
    v64 = *(v0 + 120);
    *(v57 + 16) = v62 + 1;
    result = sub_22FF63B40(v64, v57 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v62, type metadata accessor for TransparencyLogProofs);
  }

  while (v56 != v63);
  v91 = *(v0 + 368);
  v92 = *(v0 + 360);
  v93 = *(v0 + 336);
  v94 = *(v0 + 144);

  sub_22FEA55AC(v92, v91);
  sub_22FF63A78(v94, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofBatchResponse);
  v95 = *(v0 + 344);
  if (v93)
  {
    v96 = *(v0 + 336);
    [*(v0 + 344) finishTasksAndInvalidate];

    swift_unknownObjectRelease();
  }

  else
  {
  }

  v97 = *(v0 + 320);
  v98 = *(v0 + 264);
  v99 = *(v0 + 216);
  v100 = *(v0 + 224);
  v102 = *(v0 + 200);
  v101 = *(v0 + 208);
  v103 = *(v0 + 192);
  sub_22FF63A78(*(v0 + 160), type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofRequest);
  (*(v102 + 8))(v101, v103);
  v97(v98, v99);
  v104 = *(v0 + 288);
  v106 = *(v0 + 256);
  v105 = *(v0 + 264);
  v108 = *(v0 + 240);
  v107 = *(v0 + 248);
  v109 = *(v0 + 232);
  v110 = *(v0 + 208);
  v111 = *(v0 + 184);
  v112 = *(v0 + 160);
  logb = *(v0 + 144);
  v125 = *(v0 + 128);
  v128 = *(v0 + 120);
  v131 = *(v0 + 104);
  v133 = *(v0 + 88);

  v113 = *(v0 + 8);

  return v113(v57);
}

uint64_t sub_22FF623E0()
{
  v1 = *(v0 + 336);

  v2 = *(v0 + 344);
  if (v1)
  {
    v3 = *(v0 + 336);
    [*(v0 + 344) finishTasksAndInvalidate];

    swift_unknownObjectRelease();
  }

  else
  {
  }

  v24 = *(v0 + 384);
  v4 = *(v0 + 320);
  v5 = *(v0 + 288);
  v6 = *(v0 + 264);
  v14 = *(v0 + 256);
  v15 = *(v0 + 248);
  v7 = *(v0 + 224);
  v16 = *(v0 + 240);
  v17 = *(v0 + 232);
  v9 = *(v0 + 208);
  v8 = *(v0 + 216);
  v11 = *(v0 + 192);
  v10 = *(v0 + 200);
  v18 = *(v0 + 184);
  v19 = *(v0 + 144);
  v20 = *(v0 + 128);
  v21 = *(v0 + 120);
  v22 = *(v0 + 104);
  v23 = *(v0 + 88);
  sub_22FF63A78(*(v0 + 160), type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofRequest);
  (*(v10 + 8))(v9, v11);
  v4(v6, v8);

  v12 = *(v0 + 8);

  return v12();
}

void *sub_22FF625A0()
{
  if (MEMORY[0x277D81728])
  {
    v0 = MEMORY[0x277D81718] == 0;
  }

  else
  {
    v0 = 1;
  }

  if (v0 || MEMORY[0x277D81720] == 0 || MEMORY[0x277D81730] == 0)
  {
    if (qword_27DAF1490 != -1)
    {
      swift_once();
    }

    v8 = sub_22FFB12F8();
    __swift_project_value_buffer(v8, qword_27DB05A98);
    v9 = sub_22FFB12D8();
    v10 = sub_22FFB1838();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_22FE99000, v9, v10, "Narrative is not available on this OS", v11, 2u);
      MEMORY[0x23190EFF0](v11, -1, -1);
    }

    type metadata accessor for TransparencyLogError(0);
    sub_22FF63904(&qword_27DAF21C0, type metadata accessor for TransparencyLogError);
    swift_allocError();
    v7 = v12;
    sub_22FF63BA8();
    v13 = swift_allocError();
    *v14 = 0;
    *v7 = v13;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    v3 = sub_22FFB0B38();
    v4 = objc_allocWithZone(v3);
    v5 = sub_22FFB0B28();
    v6 = sub_22FFB0B18();
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v16 = objc_allocWithZone(v3);
      v17 = sub_22FFB0B28();
      v18 = sub_22FFB0B18();
      if (v18)
      {
        v7 = v18;
      }

      else
      {
        if (qword_27DAF1490 != -1)
        {
          swift_once();
        }

        v19 = sub_22FFB12F8();
        __swift_project_value_buffer(v19, qword_27DB05A98);
        v20 = sub_22FFB12D8();
        v21 = sub_22FFB1838();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          *v22 = 0;
          _os_log_impl(&dword_22FE99000, v20, v21, "Unable to load acdc or adb narrative identity", v22, 2u);
          MEMORY[0x23190EFF0](v22, -1, -1);
        }

        v7 = type metadata accessor for TransparencyLogError(0);
        sub_22FF63904(&qword_27DAF21C0, type metadata accessor for TransparencyLogError);
        swift_allocError();
        v24 = v23;
        sub_22FF63BA8();
        v25 = swift_allocError();
        *v26 = 1;
        *v24 = v25;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }
    }
  }

  return v7;
}

uint64_t sub_22FF62928(uint64_t a1, uint64_t a2, char a3)
{
  *a1 = 3;
  *(a1 + 8) = 1;
  v6 = *(a1 + 64);

  *(a1 + 64) = a2;
  if ((a3 - 5) > 5u)
  {
    v8 = 6;
  }

  else
  {
    v8 = qword_22FFBE940[(a3 - 5)];
  }

  *(a1 + 16) = v8;
  *(a1 + 24) = 1;
  return result;
}

uint64_t sub_22FF629C0@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v77 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAF3700, &qword_22FFBE8B8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = (&v68 - v7);
  v9 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v78 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v68 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v68 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF37C0, &unk_22FFB5C60);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v68 - v23;
  MEMORY[0x28223BE20](v22);
  v27 = &v68 - v26;
  v28 = *a1;
  if (*a1 != 1)
  {
    v39 = a1;
    v40 = a2;
    LOBYTE(v39) = *(v39 + 8);
    v79 = v28;
    v80 = v39;
    sub_22FF631BC(v8);
    v41 = type metadata accessor for TransparencyLogError(0);
    sub_22FF63904(&qword_27DAF21C0, type metadata accessor for TransparencyLogError);
    v42 = swift_allocError();
    v44 = v43;
    v45 = *(*(v41 - 8) + 48);
    if (v45(v8, 1, v41) == 1)
    {
      swift_storeEnumTagMultiPayload();
      if (v45(v8, 1, v41) != 1)
      {
        sub_22FEAEA34(v8, &unk_27DAF3700, &qword_22FFBE8B8);
      }
    }

    else
    {
      sub_22FF63B40(v8, v44, type metadata accessor for TransparencyLogError);
    }

    a2 = v40;
    goto LABEL_14;
  }

  v75 = v16;
  v76 = v18;
  v74 = v25;
  v29 = *(type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofResponse(0) + 32);
  sub_22FF63A08(a1 + v29, v27);
  v30 = a1;
  v31 = *(v10 + 48);
  v32 = v31(v27, 1, v9);
  sub_22FEAEA34(v27, &qword_27DAF37C0, &unk_22FFB5C60);
  if (v32 == 1)
  {
    goto LABEL_13;
  }

  v73 = v30;
  sub_22FF63A08(v30 + v29, v24);
  v33 = v31(v24, 1, v9);
  v71 = v31;
  v72 = a2;
  v70 = v29;
  if (v33 == 1)
  {
    v34 = v76;
    _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
    v35 = *(v9 + 20);
    v36 = type metadata accessor for LogEntry(0);
    (*(*(v36 - 8) + 56))(v34 + v35, 1, 1, v36);
    v37 = *(v9 + 24);
    v38 = type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency(0);
    (*(*(v38 - 8) + 56))(v34 + v37, 1, 1, v38);
    if (v31(v24, 1, v9) != 1)
    {
      sub_22FEAEA34(v24, &qword_27DAF37C0, &unk_22FFB5C60);
    }
  }

  else
  {
    v34 = v76;
    sub_22FF63B40(v24, v76, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
  }

  v46 = v75;
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v47 = *(v9 + 20);
  v48 = type metadata accessor for LogEntry(0);
  v49 = *(v48 - 8);
  v50 = *(v49 + 56);
  v76 = (v49 + 56);
  v50(v46 + v47, 1, 1, v48);
  v51 = *(v9 + 24);
  v52 = type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency(0);
  v53 = *(v52 - 8);
  v54 = *(v53 + 56);
  v68 = v53 + 56;
  v69 = v54;
  v54(v46 + v51, 1, 1, v52);
  LOBYTE(v51) = _s16CloudAttestation07PrivateA35Compute_TransparencyLog_ATLogProofsV2eeoiySbAC_ACtFZ_0(v34, v46);
  sub_22FF63A78(v46, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
  sub_22FF63A78(v34, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
  v55 = v71;
  a2 = v72;
  if (v51)
  {
LABEL_13:
    type metadata accessor for TransparencyLogError(0);
    sub_22FF63904(&qword_27DAF21C0, type metadata accessor for TransparencyLogError);
    v42 = swift_allocError();
    swift_storeEnumTagMultiPayload();
LABEL_14:
    result = swift_willThrow();
    *a2 = v42;
    return result;
  }

  v57 = v74;
  sub_22FF63A08(v73 + v70, v74);
  if (v55(v57, 1, v9) == 1)
  {
    v58 = v9;
    v59 = v50;
    v60 = v78;
    _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
    v59(v60 + *(v58 + 20), 1, 1, v48);
    v69(v60 + *(v58 + 24), 1, 1, v52);
    result = v55(v57, 1, v58);
    if (result != 1)
    {
      result = sub_22FEAEA34(v57, &qword_27DAF37C0, &unk_22FFB5C60);
    }
  }

  else
  {
    v60 = v78;
    result = sub_22FF63B40(v57, v78, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
  }

  if ((v73[4] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v61 = v73[2];
    v62 = v73[3];
    v63 = v77;
    sub_22FF63AD8(v60, v77, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
    v64 = type metadata accessor for TransparencyLogProofs(0);
    v65 = *(v64 + 20);
    sub_22FEA5608(v61, v62);
    sub_22FFB08B8();
    sub_22FF63A78(v60, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
    v66 = sub_22FFB0908();
    result = (*(*(v66 - 8) + 56))(v63 + v65, 0, 1, v66);
    v67 = (v63 + *(v64 + 24));
    *v67 = v61;
    v67[1] = v62;
  }

  return result;
}

uint64_t sub_22FF631BC@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 8) != 1)
  {
    *a1 = v3;
    v5 = type metadata accessor for TransparencyLogError(0);
LABEL_5:
    swift_storeEnumTagMultiPayload();
    v6 = *(*(v5 - 8) + 56);
    v7 = a1;
    v8 = 0;
    goto LABEL_6;
  }

  v4 = type metadata accessor for TransparencyLogError(0);
  v5 = v4;
  if (v3 != 1)
  {
    goto LABEL_5;
  }

  v6 = *(*(v4 - 8) + 56);
  v7 = a1;
  v8 = 1;
LABEL_6:

  return v6(v7, v8, 1, v5);
}

uint64_t SWTransparencyLog.verifyExpiringInclusion(of:proofs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(v4 + 8);
  *(v5 + 16) = v10;
  v11 = v10;
  v12 = swift_task_alloc();
  *(v5 + 24) = v12;
  *v12 = v5;
  v12[1] = sub_22FF633D4;

  return SWTransparencyVerifier.verifyExpiringInclusion(of:proofs:)(a1, a2, a3, a4);
}

uint64_t sub_22FF633D4()
{
  v2 = *(*v1 + 24);
  v3 = *v1;
  *(v3 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22FEABB60, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_22FF63510(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FEABC3C;

  return SWTransparencyLog.proveInclusion(of:)(a1);
}

uint64_t sub_22FF635A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(v4 + 8);
  *(v5 + 16) = v10;
  v11 = v10;
  v12 = swift_task_alloc();
  *(v5 + 24) = v12;
  *v12 = v5;
  v12[1] = sub_22FF6367C;

  return SWTransparencyVerifier.verifyExpiringInclusion(of:proofs:)(a1, a2, a3, a4);
}

uint64_t sub_22FF6367C()
{
  v2 = *(*v1 + 24);
  v3 = *v1;
  *(v3 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22FEAEC1C, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

id sub_22FF63874()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22FF63904(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22FF6394C(uint64_t a1, unsigned int a2)
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

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_22FF639A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
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

uint64_t sub_22FF63A08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF37C0, &unk_22FFB5C60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FF63A78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22FF63AD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FF63B40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_22FF63BA8()
{
  result = qword_27DAF37C8;
  if (!qword_27DAF37C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF37C8);
  }

  return result;
}

unint64_t sub_22FF63C10()
{
  if (*v0)
  {
    result = 0xD000000000000027;
  }

  else
  {
    result = 0xD000000000000035;
  }

  *v0;
  return result;
}

unint64_t sub_22FF63C5C()
{
  result = qword_27DAF37D0;
  if (!qword_27DAF37D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF37D0);
  }

  return result;
}

id SWTransparencyVerifier.init()@<X0>(void *a1@<X8>)
{
  if (MEMORY[0x277D73580])
  {
    result = [objc_allocWithZone(MEMORY[0x277D73580]) initWithApplication_];
  }

  else
  {
    result = 0;
  }

  *a1 = result;
  return result;
}

uint64_t SWTransparencyVerifier.verifyExpiringInclusion(of:proofs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[26] = a3;
  v5[27] = a4;
  v5[24] = a1;
  v5[25] = a2;
  v6 = sub_22FFB0908();
  v5[28] = v6;
  v7 = *(v6 - 8);
  v5[29] = v7;
  v8 = *(v7 + 64) + 15;
  v5[30] = swift_task_alloc();
  v9 = sub_22FFB0818();
  v5[31] = v9;
  v10 = *(v9 - 8);
  v5[32] = v10;
  v11 = *(v10 + 64) + 15;
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  v12 = swift_task_alloc();
  v13 = *v4;
  v5[35] = v12;
  v5[36] = v13;
  v14 = v13;

  return MEMORY[0x2822009F8](sub_22FF63E48, 0, 0);
}

uint64_t sub_22FF63E48()
{
  if (v0[36])
  {
    v1 = v0[27];
    type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
    sub_22FF662F8(qword_281490ED0, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
    v2 = sub_22FFB1178();
    v21 = v0[36];
    v4 = v0[25];
    v3 = v0[26];
    v5 = v2;
    v7 = v6;
    v20 = sub_22FFB07B8();
    v0[37] = v20;
    sub_22FEA55AC(v5, v7);
    v8 = sub_22FFB07B8();
    v0[38] = v8;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_22FF646E4;
    swift_continuation_init();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF37E8, &qword_22FFBEA78);
    v0[17] = v9;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 14);
    v11 = *(v9 - 8);
    v12 = *(v11 + 64) + 15;
    v13 = swift_task_alloc();
    sub_22FF66298(0, &qword_28148F0D0, 0x277D73578);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAF1D90, &qword_22FFB4410);
    sub_22FFB1778();
    (*(v11 + 32))(boxed_opaque_existential_1, v13, v9);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_22FF660DC;
    v0[13] = &block_descriptor_2;
    [v21 verifyExpiringProofs:v20 forDigest:v8 configuration:0 completion:?];
    (*(v11 + 8))(boxed_opaque_existential_1, v9);

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    sub_22FF66244();
    swift_allocError();
    swift_willThrow();
    v15 = v0[34];
    v14 = v0[35];
    v16 = v0[33];
    v17 = v0[30];

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_22FF646E4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 312) = v2;
  if (v2)
  {
    v3 = sub_22FF65A84;
  }

  else
  {
    v3 = sub_22FF647F4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22FF647F4()
{
  v165 = v0;
  v1 = *(v0 + 296);
  v2 = *(v0 + 144);

  v3 = [v2 result];
  p_base_meths = &PrivateCloudCompute_TransparencyLog_LogConsistency._StorageClass.base_meths;
  if (v3)
  {
    if (v3 == 1)
    {
      if (qword_28148F8D8 != -1)
      {
        swift_once();
      }

      v6 = *(v0 + 200);
      v5 = *(v0 + 208);
      v7 = sub_22FFB12F8();
      __swift_project_value_buffer(v7, qword_281491388);
      sub_22FEA5608(v6, v5);
      v8 = sub_22FFB12D8();
      v9 = sub_22FFB1838();
      sub_22FEA55AC(v6, v5);
      if (os_log_type_enabled(v8, v9))
      {
        log = v8;
        v10 = *(v0 + 208);
        v11 = swift_slowAlloc();
        v150 = swift_slowAlloc();
        v164[0] = v150;
        buf = v11;
        *v11 = 136446210;
        v12 = v10 >> 62;
        if ((v10 >> 62) > 1)
        {
          if (v12 == 2)
          {
            v36 = *(*(v0 + 200) + 16);
          }
        }

        else if (v12)
        {
          v13 = *(v0 + 200);
        }

        v158 = v9;
        v37 = *(v0 + 280);
        v38 = *(v0 + 248);
        sub_22FEA5608(*(v0 + 200), *(v0 + 208));
        sub_22FFB0828();
        sub_22FF662F8(&qword_281491358, MEMORY[0x277CC92E0]);
        sub_22FFB18A8();
        if (*(v0 + 325))
        {
          v39 = MEMORY[0x277D84F90];
        }

        else
        {
          v39 = MEMORY[0x277D84F90];
          v45 = MEMORY[0x277D84B78];
          v46 = MEMORY[0x277D84BC0];
          do
          {
            v47 = *(v0 + 324);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAF3750, &qword_22FFB35F0);
            v48 = swift_allocObject();
            *(v48 + 16) = xmmword_22FFB2D10;
            *(v48 + 56) = v45;
            *(v48 + 64) = v46;
            *(v48 + 32) = v47;
            v49 = sub_22FFB14D8();
            v51 = v50;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v39 = sub_22FEC2E8C(0, *(v39 + 2) + 1, 1, v39);
            }

            v53 = *(v39 + 2);
            v52 = *(v39 + 3);
            if (v53 >= v52 >> 1)
            {
              v39 = sub_22FEC2E8C((v52 > 1), v53 + 1, 1, v39);
            }

            v54 = *(v0 + 280);
            v55 = *(v0 + 248);
            *(v39 + 2) = v53 + 1;
            v56 = &v39[16 * v53];
            *(v56 + 4) = v49;
            *(v56 + 5) = v51;
            sub_22FFB18A8();
          }

          while (*(v0 + 325) != 1);
        }

        (*(*(v0 + 256) + 8))(*(v0 + 280), *(v0 + 248));
        *(v0 + 184) = v39;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAF3740, &unk_22FFB4290);
        sub_22FEB0F00();
        v40 = sub_22FFB1458();
        v42 = v41;

        v43 = sub_22FF9E448(v40, v42, v164);

        *(buf + 4) = v43;
        _os_log_impl(&dword_22FE99000, log, v158, "Invalid transparency proof for digest %{public}s", buf, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v150);
        MEMORY[0x23190EFF0](v150, -1, -1);
        MEMORY[0x23190EFF0](buf, -1, -1);

        p_base_meths = (&PrivateCloudCompute_TransparencyLog_LogConsistency._StorageClass + 32);
      }

      else
      {
      }

      type metadata accessor for TransparencyLogError(0);
      sub_22FF662F8(&qword_27DAF21C0, type metadata accessor for TransparencyLogError);
      v44 = swift_allocError();
    }

    else
    {
      if (qword_28148F8D8 != -1)
      {
        swift_once();
      }

      v26 = *(v0 + 200);
      v25 = *(v0 + 208);
      v27 = sub_22FFB12F8();
      __swift_project_value_buffer(v27, qword_281491388);
      v28 = v2;
      sub_22FEA5608(v26, v25);
      v29 = v28;
      v30 = sub_22FFB12D8();
      v31 = sub_22FFB1838();
      sub_22FEA55AC(v26, v25);
      if (os_log_type_enabled(v30, v31))
      {
        v157 = v30;
        v32 = *(v0 + 208);
        v33 = swift_slowAlloc();
        v149 = swift_slowAlloc();
        v164[0] = v149;
        v152 = v33;
        *v33 = 136446466;
        v34 = v32 >> 62;
        v162 = v2;
        bufb = v31;
        if ((v32 >> 62) > 1)
        {
          if (v34 == 2)
          {
            v93 = *(*(v0 + 200) + 16);
          }
        }

        else if (v34)
        {
          v35 = *(v0 + 200);
        }

        logb = v29;
        v94 = *(v0 + 272);
        v95 = *(v0 + 248);
        sub_22FEA5608(*(v0 + 200), *(v0 + 208));
        sub_22FFB0828();
        sub_22FF662F8(&qword_281491358, MEMORY[0x277CC92E0]);
        sub_22FFB18A8();
        if (*(v0 + 321))
        {
          v96 = MEMORY[0x277D84F90];
        }

        else
        {
          v96 = MEMORY[0x277D84F90];
          v119 = MEMORY[0x277D84B78];
          v120 = MEMORY[0x277D84BC0];
          do
          {
            v121 = *(v0 + 320);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAF3750, &qword_22FFB35F0);
            v122 = swift_allocObject();
            *(v122 + 16) = xmmword_22FFB2D10;
            *(v122 + 56) = v119;
            *(v122 + 64) = v120;
            *(v122 + 32) = v121;
            v123 = sub_22FFB14D8();
            v125 = v124;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v96 = sub_22FEC2E8C(0, *(v96 + 2) + 1, 1, v96);
            }

            v127 = *(v96 + 2);
            v126 = *(v96 + 3);
            if (v127 >= v126 >> 1)
            {
              v96 = sub_22FEC2E8C((v126 > 1), v127 + 1, 1, v96);
            }

            v128 = *(v0 + 272);
            v129 = *(v0 + 248);
            *(v96 + 2) = v127 + 1;
            v130 = &v96[16 * v127];
            *(v130 + 4) = v123;
            *(v130 + 5) = v125;
            sub_22FFB18A8();
          }

          while (*(v0 + 321) != 1);
        }

        (*(*(v0 + 256) + 8))(*(v0 + 272), *(v0 + 248));
        *(v0 + 168) = v96;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAF3740, &unk_22FFB4290);
        sub_22FEB0F00();
        v97 = sub_22FFB1458();
        v99 = v98;

        v100 = sub_22FF9E448(v97, v99, v164);

        *(v152 + 1) = v100;
        *(v152 + 6) = 2050;
        v29 = logb;
        v101 = [logb result];

        *(v152 + 14) = v101;
        _os_log_impl(&dword_22FE99000, v157, bufb, "Unknown transparency proof validation result for digest %{public}s: %{public}lu", v152, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v149);
        MEMORY[0x23190EFF0](v149, -1, -1);
        MEMORY[0x23190EFF0](v152, -1, -1);

        p_base_meths = &PrivateCloudCompute_TransparencyLog_LogConsistency._StorageClass.base_meths;
        v2 = v162;
      }

      else
      {
      }

      type metadata accessor for TransparencyLogError(0);
      sub_22FF662F8(&qword_27DAF21C0, type metadata accessor for TransparencyLogError);
      v44 = swift_allocError();
      v103 = v102;
      v104 = [v29 result];
      if ((v104 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_91:
        swift_once();
LABEL_63:
        v112 = sub_22FFB12F8();
        __swift_project_value_buffer(v112, qword_281491388);
        v113 = v103;
        v114 = sub_22FFB12D8();
        v115 = sub_22FFB1838();

        if (os_log_type_enabled(v114, v115))
        {
          v116 = swift_slowAlloc();
          v117 = swift_slowAlloc();
          *v116 = 138543362;
          *(v116 + 4) = v113;
          *v117 = v113;
          v118 = v113;
          _os_log_impl(&dword_22FE99000, v114, v115, "Inclusion proof has expired: %{public}@", v116, 0xCu);
          sub_22FEAA1C8(v117);
          MEMORY[0x23190EFF0](v117, -1, -1);
          MEMORY[0x23190EFF0](v116, -1, -1);
        }

LABEL_83:
        v141 = *(v0 + 288);

        type metadata accessor for TransparencyLogError(0);
        sub_22FF662F8(&qword_27DAF21C0, type metadata accessor for TransparencyLogError);
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

LABEL_86:
        v145 = *(v0 + 272);
        v144 = *(v0 + 280);
        v146 = *(v0 + 264);
        v147 = *(v0 + 240);

        v80 = *(v0 + 8);
        goto LABEL_87;
      }

      *v103 = v104;
    }

    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    *(v0 + 152) = v44;
    v105 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAF1D90, &qword_22FFB4410);
    sub_22FF66298(0, &qword_27DAF37E0, 0x277CCA9B8);
    if (!swift_dynamicCast())
    {
LABEL_85:
      v142 = *(v0 + 288);

      type metadata accessor for TransparencyLogError(0);
      sub_22FF662F8(&qword_27DAF21C0, type metadata accessor for TransparencyLogError);
      swift_allocError();
      *v143 = v44;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      goto LABEL_86;
    }

    v103 = *(v0 + 160);
    v106 = [v103 domain];
    v107 = sub_22FFB1498();
    v109 = v108;

    if (v107 == 0xD00000000000001CLL && 0x800000022FFCB530 == v109)
    {
    }

    else
    {
      v110 = sub_22FFB1BC8();

      if ((v110 & 1) == 0)
      {

        goto LABEL_74;
      }
    }

    v111 = [v103 code];

    if (v111 == 5)
    {

      if (p_base_meths[283] == -1)
      {
        goto LABEL_63;
      }

      goto LABEL_91;
    }

LABEL_74:
    v131 = [v103 domain];
    v132 = sub_22FFB1498();
    v134 = v133;

    if (v132 == 0xD00000000000001DLL && 0x800000022FFCB550 == v134)
    {
    }

    else
    {
      v135 = sub_22FFB1BC8();

      if ((v135 & 1) == 0)
      {
LABEL_84:

        goto LABEL_85;
      }
    }

    if ([v103 code] == 7)
    {

      if (p_base_meths[283] != -1)
      {
        swift_once();
      }

      v136 = sub_22FFB12F8();
      __swift_project_value_buffer(v136, qword_281491388);
      v113 = v103;
      v114 = sub_22FFB12D8();
      v137 = sub_22FFB1838();

      if (os_log_type_enabled(v114, v137))
      {
        v138 = swift_slowAlloc();
        v139 = swift_slowAlloc();
        *v138 = 138543362;
        *(v138 + 4) = v113;
        *v139 = v113;
        v140 = v113;
        _os_log_impl(&dword_22FE99000, v114, v137, "Inclusion proof verification failed: %{public}@", v138, 0xCu);
        sub_22FEAA1C8(v139);
        MEMORY[0x23190EFF0](v139, -1, -1);
        MEMORY[0x23190EFF0](v138, -1, -1);
      }

      goto LABEL_83;
    }

    goto LABEL_84;
  }

  if (qword_28148F8D8 != -1)
  {
    swift_once();
  }

  v15 = *(v0 + 200);
  v14 = *(v0 + 208);
  v16 = sub_22FFB12F8();
  __swift_project_value_buffer(v16, qword_281491388);
  sub_22FEA5608(v15, v14);
  v17 = v2;
  v18 = sub_22FFB12D8();
  v19 = sub_22FFB1818();
  sub_22FEA55AC(v15, v14);

  v20 = &unk_2788BA000;
  if (os_log_type_enabled(v18, v19))
  {
    v156 = v19;
    loga = v18;
    v21 = *(v0 + 208);
    v22 = swift_slowAlloc();
    v151 = swift_slowAlloc();
    v164[0] = v151;
    bufa = v22;
    *v22 = 136446466;
    v23 = v21 >> 62;
    if ((v21 >> 62) > 1)
    {
      if (v23 == 2)
      {
        v57 = *(*(v0 + 200) + 16);
      }
    }

    else if (v23)
    {
      v24 = *(v0 + 200);
    }

    v163 = v17;
    v58 = *(v0 + 264);
    v59 = *(v0 + 248);
    sub_22FEA5608(*(v0 + 200), *(v0 + 208));
    sub_22FFB0828();
    sub_22FF662F8(&qword_281491358, MEMORY[0x277CC92E0]);
    sub_22FFB18A8();
    if (*(v0 + 323))
    {
      v60 = MEMORY[0x277D84F90];
    }

    else
    {
      v60 = MEMORY[0x277D84F90];
      v81 = MEMORY[0x277D84B78];
      v82 = MEMORY[0x277D84BC0];
      do
      {
        v83 = *(v0 + 322);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAF3750, &qword_22FFB35F0);
        v84 = swift_allocObject();
        *(v84 + 16) = xmmword_22FFB2D10;
        *(v84 + 56) = v81;
        *(v84 + 64) = v82;
        *(v84 + 32) = v83;
        v85 = sub_22FFB14D8();
        v87 = v86;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v60 = sub_22FEC2E8C(0, *(v60 + 2) + 1, 1, v60);
        }

        v89 = *(v60 + 2);
        v88 = *(v60 + 3);
        if (v89 >= v88 >> 1)
        {
          v60 = sub_22FEC2E8C((v88 > 1), v89 + 1, 1, v60);
        }

        v90 = *(v0 + 264);
        v91 = *(v0 + 248);
        *(v60 + 2) = v89 + 1;
        v92 = &v60[16 * v89];
        *(v92 + 4) = v85;
        *(v92 + 5) = v87;
        sub_22FFB18A8();
      }

      while (*(v0 + 323) != 1);
    }

    v61 = *(v0 + 240);
    v63 = *(v0 + 224);
    v62 = *(v0 + 232);
    (*(*(v0 + 256) + 8))(*(v0 + 264), *(v0 + 248));
    *(v0 + 176) = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAF3740, &unk_22FFB4290);
    sub_22FEB0F00();
    v64 = sub_22FFB1458();
    v66 = v65;

    v67 = sub_22FF9E448(v64, v66, v164);

    *(bufa + 4) = v67;
    *(bufa + 6) = 2082;
    v20 = &unk_2788BA000;
    v17 = v163;
    v68 = [v163 expiry];
    sub_22FFB08D8();

    sub_22FF662F8(&qword_281491330, MEMORY[0x277CC9578]);
    v69 = sub_22FFB1BA8();
    v71 = v70;
    (*(v62 + 8))(v61, v63);
    v72 = sub_22FF9E448(v69, v71, v164);

    *(bufa + 14) = v72;
    v18 = loga;
    _os_log_impl(&dword_22FE99000, loga, v156, "Valid transparency proof for digest %{public}s (expires %{public}s", bufa, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23190EFF0](v151, -1, -1);
    MEMORY[0x23190EFF0](bufa, -1, -1);
  }

  v74 = *(v0 + 280);
  v73 = *(v0 + 288);
  v76 = *(v0 + 264);
  v75 = *(v0 + 272);
  v77 = *(v0 + 240);
  v78 = *(v0 + 192);
  v79 = [v17 v20[466]];
  sub_22FFB08D8();

  v80 = *(v0 + 8);
LABEL_87:

  return v80();
}

uint64_t sub_22FF65A84()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 312);
  v3 = *(v0 + 296);
  swift_willThrow();

  v4 = *(v0 + 312);
  *(v0 + 152) = v4;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAF1D90, &qword_22FFB4410);
  sub_22FF66298(0, &qword_27DAF37E0, 0x277CCA9B8);
  if (!swift_dynamicCast())
  {
    goto LABEL_26;
  }

  v6 = *(v0 + 160);
  v7 = [v6 domain];
  v8 = sub_22FFB1498();
  v10 = v9;

  if (v8 == 0xD00000000000001CLL && 0x800000022FFCB530 == v10)
  {
  }

  else
  {
    v12 = sub_22FFB1BC8();

    if ((v12 & 1) == 0)
    {

      goto LABEL_15;
    }
  }

  v13 = [v6 code];

  if (v13 == 5)
  {

    if (qword_28148F8D8 != -1)
    {
      swift_once();
    }

    v14 = sub_22FFB12F8();
    __swift_project_value_buffer(v14, qword_281491388);
    v15 = v6;
    v16 = sub_22FFB12D8();
    v17 = sub_22FFB1838();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138543362;
      *(v18 + 4) = v15;
      *v19 = v15;
      v20 = v15;
      _os_log_impl(&dword_22FE99000, v16, v17, "Inclusion proof has expired: %{public}@", v18, 0xCu);
      sub_22FEAA1C8(v19);
      MEMORY[0x23190EFF0](v19, -1, -1);
      MEMORY[0x23190EFF0](v18, -1, -1);
    }

    goto LABEL_24;
  }

LABEL_15:
  v21 = [v6 domain];
  v22 = sub_22FFB1498();
  v24 = v23;

  if (v22 == 0xD00000000000001DLL && 0x800000022FFCB550 == v24)
  {

    goto LABEL_19;
  }

  v25 = sub_22FFB1BC8();

  if (v25)
  {
LABEL_19:
    if ([v6 code] == 7)
    {

      if (qword_28148F8D8 != -1)
      {
        swift_once();
      }

      v26 = sub_22FFB12F8();
      __swift_project_value_buffer(v26, qword_281491388);
      v15 = v6;
      v16 = sub_22FFB12D8();
      v27 = sub_22FFB1838();

      if (os_log_type_enabled(v16, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        *v28 = 138543362;
        *(v28 + 4) = v15;
        *v29 = v15;
        v30 = v15;
        _os_log_impl(&dword_22FE99000, v16, v27, "Inclusion proof verification failed: %{public}@", v28, 0xCu);
        sub_22FEAA1C8(v29);
        MEMORY[0x23190EFF0](v29, -1, -1);
        MEMORY[0x23190EFF0](v28, -1, -1);
      }

LABEL_24:
      v31 = *(v0 + 288);

      type metadata accessor for TransparencyLogError(0);
      sub_22FF662F8(&qword_27DAF21C0, type metadata accessor for TransparencyLogError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      goto LABEL_27;
    }
  }

LABEL_26:
  v32 = *(v0 + 288);

  type metadata accessor for TransparencyLogError(0);
  sub_22FF662F8(&qword_27DAF21C0, type metadata accessor for TransparencyLogError);
  swift_allocError();
  *v33 = v4;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

LABEL_27:
  v35 = *(v0 + 272);
  v34 = *(v0 + 280);
  v36 = *(v0 + 264);
  v37 = *(v0 + 240);

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_22FF6605C()
{
  v0 = sub_22FFB12F8();
  __swift_allocate_value_buffer(v0, qword_281491388);
  __swift_project_value_buffer(v0, qword_281491388);
  return sub_22FFB12E8();
}

void sub_22FF660DC(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF37E8, &qword_22FFBEA78);
    sub_22FFB1788();
  }

  else
  {
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF37E8, &qword_22FFBEA78);
    sub_22FFB1798();
  }
}

uint64_t sub_22FF66184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_22FEAA0D4;

  return SWTransparencyVerifier.verifyExpiringInclusion(of:proofs:)(a1, a2, a3, a4);
}

unint64_t sub_22FF66244()
{
  result = qword_27DAF37D8;
  if (!qword_27DAF37D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF37D8);
  }

  return result;
}

uint64_t sub_22FF66298(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_22FF662F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22FF66340(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_22FF6639C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_22FF66430()
{
  result = qword_27DAF37F0;
  if (!qword_27DAF37F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF37F0);
  }

  return result;
}

uint64_t NopTransparencyLog.proveInclusion(of:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = type metadata accessor for TransparencyLogProofs(0);
  *(v2 + 24) = v3;
  v4 = *(v3 - 8);
  *(v2 + 32) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 40) = swift_task_alloc();
  *(v2 + 48) = swift_task_alloc();
  *(v2 + 56) = *v1;

  return MEMORY[0x2822009F8](sub_22FF66568, 0, 0);
}

uint64_t sub_22FF66568()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = *(v0 + 24);
    v30 = *(v0 + 32);
    v31 = MEMORY[0x277D84F90];
    sub_22FECDA70(0, v2, 0);
    v3 = v31;
    v5 = (v1 + 40);
    v29 = v4;
    do
    {
      v6 = *(v0 + 56);
      v7 = *(v0 + 40);
      v8 = *(v5 - 1);
      v9 = *v5;
      v10 = *(v4 + 20);
      sub_22FEA5608(v8, *v5);
      sub_22FFB0848();
      v11 = sub_22FFB0908();
      (*(*(v11 - 8) + 56))(v7 + v10, 0, 1, v11);
      v12 = *(v0 + 40);
      if (v6 == 1)
      {
        type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
        sub_22FF66C78();
        sub_22FFB11B8();
      }

      else
      {
        v13 = *(v0 + 40);
        _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
        v14 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
        v15 = *(v14 + 20);
        v16 = type metadata accessor for LogEntry(0);
        (*(*(v16 - 8) + 56))(v12 + v15, 1, 1, v16);
        v17 = *(v14 + 24);
        v18 = type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency(0);
        (*(*(v18 - 8) + 56))(v12 + v17, 1, 1, v18);
      }

      v19 = *(v0 + 40);
      v20 = *(v0 + 48);
      v4 = v29;
      v21 = (v19 + *(v29 + 24));
      *v21 = v8;
      v21[1] = v9;
      sub_22FF66CE0(v19, v20, type metadata accessor for TransparencyLogProofs);
      v23 = *(v31 + 16);
      v22 = *(v31 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_22FECDA70(v22 > 1, v23 + 1, 1);
      }

      v5 += 2;
      v24 = *(v0 + 48);
      *(v31 + 16) = v23 + 1;
      sub_22FF66CE0(v24, v31 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v23, type metadata accessor for TransparencyLogProofs);
      --v2;
    }

    while (v2);
  }

  v26 = *(v0 + 40);
  v25 = *(v0 + 48);

  v27 = *(v0 + 8);

  return v27(v3);
}

uint64_t sub_22FF66850()
{
  v1 = *(v0 + 16);
  sub_22FFB1D28();
  sub_22FFB1D28();
  sub_22FFB0898();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22FF668FC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FEABC3C;

  return NopTransparencyLog.proveInclusion(of:)(a1);
}

uint64_t sub_22FF669B0(uint64_t a1)
{
  v2 = type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LogEntry(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v12 = 0;
  v12[8] = 1;
  *(v12 + 2) = MEMORY[0x277D84F90];
  *(v12 + 24) = xmmword_22FFB33B0;
  *(v12 + 5) = 0;
  *(v12 + 6) = 0;
  v12[56] = 1;
  v13 = &v12[*(v10 + 36)];
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v14 = *(v7 + 40);
  v15 = type metadata accessor for SignedObject(0);
  (*(*(v15 - 8) + 56))(&v12[v14], 1, 1, v15);
  v16 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
  v17 = *(v16 + 20);
  sub_22FEAEA34(a1 + v17, &qword_27DAF2150, &qword_22FFB5CA0);
  sub_22FF66CE0(v12, a1 + v17, type metadata accessor for LogEntry);
  (*(v8 + 56))(a1 + v17, 0, 1, v7);
  _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
  v18 = *(v2 + 20);
  if (qword_281490E10 != -1)
  {
    swift_once();
  }

  *&v6[v18] = qword_281490E18;
  v19 = *(v16 + 24);

  sub_22FEAEA34(a1 + v19, &qword_27DAF2140, &qword_22FFB5C90);
  sub_22FF66CE0(v6, a1 + v19, type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency);
  return (*(v3 + 56))(a1 + v19, 0, 1, v2);
}

unint64_t sub_22FF66C78()
{
  result = qword_281490ED0[0];
  if (!qword_281490ED0[0])
  {
    type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_281490ED0);
  }

  return result;
}

uint64_t sub_22FF66CE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FF66D6C(uint64_t a1)
{
  v37 = sub_22FFB0C28();
  v3 = *(v37 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v29 = v1;
    v41 = MEMORY[0x277D84F90];
    sub_22FECDAB4(0, v6, 0);
    v40 = v41;
    v8 = a1 + 56;
    v9 = -1 << *(a1 + 32);
    result = sub_22FFB1948();
    v10 = result;
    v11 = 0;
    v34 = v3 + 8;
    v35 = v3 + 16;
    v30 = a1 + 64;
    v31 = v6;
    v32 = v3;
    v33 = a1 + 56;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v13 = v10 >> 6;
      if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_22;
      }

      v38 = *(a1 + 36);
      v14 = v36;
      v15 = v37;
      (*(v3 + 16))(v36, *(a1 + 48) + *(v3 + 72) * v10, v37);
      v39 = sub_22FF69F84();
      v17 = v16;
      result = (*(v3 + 8))(v14, v15);
      v18 = v40;
      v41 = v40;
      v20 = *(v40 + 16);
      v19 = *(v40 + 24);
      if (v20 >= v19 >> 1)
      {
        result = sub_22FECDAB4((v19 > 1), v20 + 1, 1);
        v18 = v41;
      }

      *(v18 + 16) = v20 + 1;
      v21 = v18 + 16 * v20;
      *(v21 + 32) = v39;
      *(v21 + 40) = v17;
      v12 = 1 << *(a1 + 32);
      if (v10 >= v12)
      {
        goto LABEL_23;
      }

      v8 = v33;
      v22 = *(v33 + 8 * v13);
      if ((v22 & (1 << v10)) == 0)
      {
        goto LABEL_24;
      }

      v40 = v18;
      if (v38 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v23 = v22 & (-2 << (v10 & 0x3F));
      if (v23)
      {
        v12 = __clz(__rbit64(v23)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v3 = v32;
      }

      else
      {
        v24 = v13 << 6;
        v25 = v13 + 1;
        v26 = (v30 + 8 * v13);
        v3 = v32;
        while (v25 < (v12 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_22FED2064(v10, v38, 0);
            v12 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        result = sub_22FED2064(v10, v38, 0);
      }

LABEL_4:
      ++v11;
      v10 = v12;
      if (v11 == v31)
      {
        return v40;
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
  }

  return result;
}

uint64_t Release.init(bundle:evaluateTrust:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Proto_AttestationBundle(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FF6D130(a1, v9, type metadata accessor for Proto_AttestationBundle);
  sub_22FF68C5C(v9, a2, 0, a3);
  return sub_22FF6D5BC(a1, type metadata accessor for AttestationBundle);
}

uint64_t Release.digest<A>(using:)()
{
  v0 = sub_22FFB0E58();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FFB0E48();
  type metadata accessor for Release();
  sub_22FF6D574(&qword_28148F578, type metadata accessor for Release);
  sub_22FFB0E38();
  v5 = sub_22FFB0E18();
  v6 = sub_22FF9F990(v5);
  v8 = v7;

  (*(v1 + 8))(v4, v0);
  v11 = v6;
  v12 = v8;
  sub_22FEB0E54();
  sub_22FFB1378();
  return sub_22FEA55AC(v11, v12);
}

uint64_t Release.init(bundle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Proto_AttestationBundle(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FF6D130(a1, v7, type metadata accessor for Proto_AttestationBundle);
  sub_22FF68C5C(v7, 1, 0, a2);
  return sub_22FF6D5BC(a1, type metadata accessor for AttestationBundle);
}

uint64_t Release.jsonString.getter()
{
  v0 = sub_22FFB0508();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = sub_22FFB0548();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_22FFB0538();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF37F8, &qword_22FFBEC50);
  v6 = *(v1 + 72);
  v7 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_22FFB2D20;
  sub_22FFB04F8();
  sub_22FFB04E8();
  v20[0] = v8;
  sub_22FF6D574(&qword_281491368, MEMORY[0x277CC8718]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3800, &qword_22FFBEC58);
  sub_22FEBF78C(&qword_28148F160, &qword_27DAF3800, &qword_22FFBEC58);
  sub_22FFB1938();
  sub_22FFB0518();
  type metadata accessor for Release();
  sub_22FF6D574(&qword_28148F568, type metadata accessor for Release);
  v9 = sub_22FFB0528();
  v11 = v10;
  v12 = sub_22FF6CADC(v9, v10);
  if (v13)
  {
    goto LABEL_8;
  }

  v18 = v9;
  v19 = v11;
  sub_22FEA5608(v9, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3808, &qword_22FFBEC60);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v17 = 0;
    memset(v16, 0, sizeof(v16));
    sub_22FEAEA34(v16, &qword_27DAF3810, &qword_22FFBEC68);
LABEL_7:
    v12 = sub_22FF6BE80(v9, v11);
LABEL_8:
    v14 = v12;

    sub_22FEA55AC(v9, v11);
    return v14;
  }

  sub_22FE9B84C(v16, v20);
  __swift_project_boxed_opaque_existential_1(v20, v21);
  if ((sub_22FFB1B08() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(v20);
    goto LABEL_7;
  }

  sub_22FEA55AC(v9, v11);
  __swift_project_boxed_opaque_existential_1(v20, v21);
  sub_22FFB1AF8();

  v14 = *&v16[0];
  __swift_destroy_boxed_opaque_existential_1(v20);
  return v14;
}

uint64_t sub_22FF67790(uint64_t a1)
{
  v60 = sub_22FFB0818();
  v2 = *(v60 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v60);
  v59 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_22FFB0C28();
  v5 = *(v58 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v58);
  v9 = (&v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v56 = &v54 - v10;
  v11 = *(a1 + 16);
  v69 = MEMORY[0x277D84F90];
  sub_22FECD9B8(0, v11, 0);
  v12 = a1 + 56;
  v13 = v69;
  v14 = -1;
  v15 = -1 << *(a1 + 32);
  if (-v15 < 64)
  {
    v14 = ~(-1 << -v15);
  }

  v16 = v14 & *(a1 + 56);
  v17 = (63 - v15) >> 6;
  v66 = a1 + 56;
  v67 = a1;
  v64 = v5;
  v65 = v17;
  v63 = v11;
  v55 = v2;
  if (v11)
  {
    v57 = (v2 + 8);
    v61 = v5 + 32;
    v62 = v9;

    v19 = 0;
    v11 = 0;
    v20 = v58;
    while (1)
    {
      v68 = v13;
      if (!v16)
      {
        do
        {
          v21 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            __break(1u);
LABEL_60:
            __break(1u);
            goto LABEL_61;
          }

          if (v21 >= v17)
          {
            goto LABEL_60;
          }

          v16 = *(v12 + 8 * v21);
          ++v11;
        }

        while (!v16);
        v11 = v21;
      }

      v22 = (*(result + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v16)))));
      v24 = *v22;
      v23 = v22[1];
      v25 = v23 >> 62;
      if ((v23 >> 62) > 1)
      {
        if (v25 != 2)
        {
          goto LABEL_23;
        }

        v28 = *(v24 + 16);
        v27 = *(v24 + 24);
        v26 = v27 - v28;
        if (__OFSUB__(v27, v28))
        {
          goto LABEL_64;
        }
      }

      else
      {
        if (!v25)
        {
          v26 = BYTE6(v23);
          if (BYTE6(v23))
          {
            goto LABEL_21;
          }

          goto LABEL_23;
        }

        if (__OFSUB__(HIDWORD(v24), v24))
        {
          goto LABEL_63;
        }

        v26 = HIDWORD(v24) - v24;
      }

      sub_22FEA5608(v24, v23);
      if (v26)
      {
LABEL_21:
        if (v26 < 1)
        {
          v29 = MEMORY[0x277D84F90];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF36C8, &unk_22FFC0160);
          v29 = swift_allocObject();
          v30 = _swift_stdlib_malloc_size(v29);
          v29[2] = v26;
          v29[3] = 2 * v30 - 64;
        }

        v31 = v59;
        v32 = sub_22FFB0718();
        result = (*v57)(v31, v60);
        v20 = v58;
        if (v32 != v26)
        {
          goto LABEL_62;
        }

        goto LABEL_26;
      }

LABEL_23:
      v29 = MEMORY[0x277D84F90];
LABEL_26:
      v33 = (2 * v29[2]) | 1;
      v34 = v62;
      sub_22FFB0BF8();
      sub_22FEA55AC(v24, v23);
      v13 = v68;
      v69 = v68;
      v36 = *(v68 + 16);
      v35 = *(v68 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_22FECD9B8(v35 > 1, v36 + 1, 1);
        v20 = v58;
        v13 = v69;
      }

      ++v19;
      v16 &= v16 - 1;
      *(v13 + 16) = v36 + 1;
      v5 = v64;
      (*(v64 + 32))(v13 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v36, v34, v20);
      v17 = v65;
      v12 = v66;
      result = v67;
      if (v19 == v63)
      {
        goto LABEL_31;
      }
    }
  }

  v20 = v58;
LABEL_31:
  v37 = v56;
  v62 = (v55 + 8);
  v63 = v5 + 32;
  if (!v16)
  {
    goto LABEL_33;
  }

  do
  {
    v68 = v13;
LABEL_37:
    v39 = (*(result + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v16)))));
    v40 = *v39;
    v41 = v39[1];
    v42 = v41 >> 62;
    if ((v41 >> 62) > 1)
    {
      if (v42 != 2)
      {
        goto LABEL_50;
      }

      v45 = *(v40 + 16);
      v44 = *(v40 + 24);
      v43 = v44 - v45;
      if (__OFSUB__(v44, v45))
      {
        goto LABEL_66;
      }
    }

    else
    {
      if (!v42)
      {
        v43 = BYTE6(v41);
        if (!BYTE6(v41))
        {
          goto LABEL_50;
        }

        goto LABEL_48;
      }

      if (__OFSUB__(HIDWORD(v40), v40))
      {
        goto LABEL_67;
      }

      v43 = HIDWORD(v40) - v40;
    }

    sub_22FEA5608(v40, v41);
    if (!v43)
    {
LABEL_50:
      v46 = MEMORY[0x277D84F90];
      goto LABEL_54;
    }

LABEL_48:
    if (v43 < 1)
    {
      v46 = MEMORY[0x277D84F90];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF36C8, &unk_22FFC0160);
      v46 = swift_allocObject();
      v47 = _swift_stdlib_malloc_size(v46);
      v46[2] = v43;
      v46[3] = 2 * v47 - 64;
    }

    v48 = v59;
    v49 = sub_22FFB0718();
    result = (*v62)(v48, v60);
    v50 = v49 == v43;
    v5 = v64;
    v37 = v56;
    if (!v50)
    {
      goto LABEL_65;
    }

LABEL_54:
    v51 = (2 * v46[2]) | 1;
    sub_22FFB0BF8();
    sub_22FEA55AC(v40, v41);
    v13 = v68;
    v69 = v68;
    v53 = *(v68 + 16);
    v52 = *(v68 + 24);
    if (v53 >= v52 >> 1)
    {
      sub_22FECD9B8(v52 > 1, v53 + 1, 1);
      v20 = v58;
      v13 = v69;
    }

    v16 &= v16 - 1;
    *(v13 + 16) = v53 + 1;
    (*(v5 + 32))(v13 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v53, v37, v20);
    v12 = v66;
    result = v67;
    v17 = v65;
  }

  while (v16);
LABEL_33:
  while (1)
  {
    v38 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v38 >= v17)
    {

      return v13;
    }

    v16 = *(v12 + 8 * v38);
    ++v11;
    if (v16)
    {
      v68 = v13;
      v11 = v38;
      goto LABEL_37;
    }
  }

LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
  return result;
}

size_t sub_22FF67DCC(uint64_t a1)
{
  v34 = sub_22FFB0818();
  v2 = *(v34 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v34);
  v33 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22FFB0C28();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v35 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v37 = MEMORY[0x277D84F90];
  result = sub_22FECD9B8(0, v9, 0);
  v11 = v37;
  if (!v9)
  {
    return v11;
  }

  v30 = (v2 + 8);
  v31 = v6;
  v36 = v6 + 32;
  v12 = (a1 + 40);
  v32 = v5;
  v13 = v35;
  while (1)
  {
    v15 = *(v12 - 1);
    v14 = *v12;
    v16 = *v12 >> 62;
    if (v16 > 1)
    {
      if (v16 != 2)
      {
        v18 = MEMORY[0x277D84F90];
        goto LABEL_20;
      }

      v20 = *(v15 + 16);
      v19 = *(v15 + 24);
      v17 = v19 - v20;
      if (__OFSUB__(v19, v20))
      {
        goto LABEL_25;
      }
    }

    else
    {
      if (!v16)
      {
        v17 = BYTE6(v14);
        if (BYTE6(v14))
        {
          break;
        }

        goto LABEL_6;
      }

      if (__OFSUB__(HIDWORD(v15), v15))
      {
        goto LABEL_24;
      }

      v17 = HIDWORD(v15) - v15;
    }

    sub_22FEA5608(*(v12 - 1), *v12);
    if (v17)
    {
      break;
    }

LABEL_6:
    v18 = MEMORY[0x277D84F90];
    v13 = v35;
LABEL_20:
    v25 = (2 * v18[2]) | 1;
    sub_22FFB0BF8();
    sub_22FEA55AC(v15, v14);
    v37 = v11;
    v26 = v13;
    v28 = *(v11 + 16);
    v27 = *(v11 + 24);
    if (v28 >= v27 >> 1)
    {
      sub_22FECD9B8(v27 > 1, v28 + 1, 1);
      v11 = v37;
    }

    v12 += 2;
    *(v11 + 16) = v28 + 1;
    result = (*(v6 + 32))(v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v28, v26, v5);
    --v9;
    v13 = v26;
    if (!v9)
    {
      return v11;
    }
  }

  if (v17 < 1)
  {
    v18 = MEMORY[0x277D84F90];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF36C8, &unk_22FFC0160);
    v18 = swift_allocObject();
    v21 = _swift_stdlib_malloc_size(v18);
    v18[2] = v17;
    v18[3] = 2 * v21 - 64;
  }

  v22 = v33;
  v23 = sub_22FFB0718();
  result = (*v30)(v22, v34);
  v24 = v23 == v17;
  v6 = v31;
  v5 = v32;
  v13 = v35;
  if (v24)
  {
    goto LABEL_20;
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_22FF68120(uint64_t a1)
{
  v2 = *(a1 + 16);
  v11 = MEMORY[0x277D84F90];
  sub_22FECD9FC(0, v2, 0);
  if (!v2)
  {
    return v11;
  }

  v3 = (a1 + 48);
  while (1)
  {
    v4 = *v3;
    v6 = *(v3 - 2);
    v5 = *(v3 - 1);
    result = sub_22FEA5608(v6, v5);
    if (v4 == 4)
    {
      break;
    }

    sub_22FEA5608(v6, v5);
    sub_22FEA55AC(v6, v5);
    v9 = *(v11 + 16);
    v8 = *(v11 + 24);
    if (v9 >= v8 >> 1)
    {
      sub_22FECD9FC((v8 > 1), v9 + 1, 1);
    }

    v3 += 24;
    *(v11 + 16) = v9 + 1;
    v10 = v11 + 16 * v9;
    *(v10 + 32) = v6;
    *(v10 + 40) = v5;
    if (!--v2)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t Release.apTicket.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22FFB0C28();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Release.cryptexTickets.getter()
{
  v1 = *(v0 + *(type metadata accessor for Release() + 20));
}

uint64_t Release.unknownFields.getter()
{
  v1 = *(v0 + *(type metadata accessor for Release() + 24));
}

uint64_t Release.init<A>(apTicket:cryptexTickets:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int (*a4)(char *, uint64_t, uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_22FEA5608(a1, a2);
  v12 = (2 * *(sub_22FEC623C(a1, a2) + 16)) | 1;
  sub_22FFB0BF8();
  v13 = sub_22FFB0C28();
  v15 = sub_22FF5EA44(sub_22FF68434, 0, a4, v13, MEMORY[0x277D84A98], a5, MEMORY[0x277D84AC0], v14);
  v16 = sub_22FEBE804(v15);

  v17 = type metadata accessor for Release();
  *(a6 + *(v17 + 20)) = v16;
  sub_22FEA55AC(a1, a2);
  result = (*(*(a4 - 1) + 8))(a3, a4);
  *(a6 + *(v17 + 24)) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_22FF68434(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_22FEA5608(*a1, v2);
  v3 = (2 * *(sub_22FEC623C(v1, v2) + 16)) | 1;
  return sub_22FFB0BF8();
}

uint64_t Release.init<A>(apTicket:cryptexTickets:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22FFB0C28();
  v13 = *(v12 - 8);
  (*(v13 + 16))(a4, a1, v12);
  (*(v8 + 16))(v11, a2, a3);
  sub_22FF6D574(&qword_28148F1F0, MEMORY[0x277D6A8E8]);
  v14 = sub_22FFB17E8();
  v15 = type metadata accessor for Release();
  *(a4 + *(v15 + 20)) = v14;
  (*(v8 + 8))(a2, a3);
  result = (*(v13 + 8))(a1, v12);
  *(a4 + *(v15 + 24)) = MEMORY[0x277D84F90];
  return result;
}

uint64_t Release.init<A>(apTicket:cryptexTickets:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unsigned int (*a3)(char *, uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X7>, uint64_t a6@<X8>)
{
  v9 = *a1;
  v10 = a1[1];
  v11 = sub_22FF5EA44(sub_22FF5EA10, 0, a3, MEMORY[0x277CC9318], MEMORY[0x277D84A98], a4, MEMORY[0x277D84AC0], a5);
  v12 = sub_22FEBE724(v11);

  sub_22FEA5608(v9, v10);
  v13 = (2 * *(sub_22FEC623C(v9, v10) + 16)) | 1;
  sub_22FFB0BF8();
  v14 = sub_22FF67790(v12);

  v15 = sub_22FEBE804(v14);

  v16 = type metadata accessor for Release();
  *(a6 + *(v16 + 20)) = v15;
  sub_22FEA55AC(v9, v10);
  *(a6 + *(v16 + 24)) = MEMORY[0x277D84F90];
  v17 = *(*(a3 - 1) + 8);

  return v17(a2, a3);
}

uint64_t Release.init(tickets:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_22FF6CEB4(a1);

  if (!*(v3 + 16) || (v4 = sub_22FFA6500(0), (v5 & 1) == 0) || (v6 = *(*(v3 + 56) + 8 * v4), !v6[2]))
  {

    sub_22FF6D0DC();
    swift_allocError();
    return swift_willThrow();
  }

  v7 = v6[4];
  v8 = v6[5];
  if (*(v3 + 16))
  {
    v9 = sub_22FFA6500(1u);
    if (v10)
    {
      v11 = *(*(v3 + 56) + 8 * v9);

      if (!*(v3 + 16))
      {
        goto LABEL_13;
      }
    }

    else
    {
      v11 = MEMORY[0x277D84F90];
      if (!*(v3 + 16))
      {
        goto LABEL_13;
      }
    }

    v14 = sub_22FFA6500(2u);
    if (v15)
    {
      v13 = *(*(v3 + 56) + 8 * v14);

      goto LABEL_14;
    }

LABEL_13:
    v13 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  v11 = MEMORY[0x277D84F90];
  v13 = MEMORY[0x277D84F90];
LABEL_14:
  sub_22FEA5608(v7, v8);
  sub_22FECB4EC(v13);
  v16 = v11;
  v17 = MEMORY[0x277D84F90];
  if (*(v3 + 16))
  {
    v18 = sub_22FFA6500(3u);
    if (v19)
    {
      v20 = *(*(v3 + 56) + 8 * v18);
    }

    else
    {
      v20 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v20 = MEMORY[0x277D84F90];
  }

  sub_22FECB4EC(v20);
  sub_22FEA5608(v7, v8);
  v21 = sub_22FF68120(v16);

  v22 = sub_22FEBE724(v21);

  sub_22FEA5608(v7, v8);
  v23 = (2 * *(sub_22FEC623C(v7, v8) + 16)) | 1;
  sub_22FFB0BF8();
  v24 = sub_22FF67790(v22);

  v25 = sub_22FEBE804(v24);

  v26 = type metadata accessor for Release();
  *(a2 + *(v26 + 20)) = v25;
  sub_22FEA55AC(v7, v8);
  result = sub_22FEA55AC(v7, v8);
  *(a2 + *(v26 + 24)) = v17;
  return result;
}

uint64_t Release.init<A>(serializedData:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = a1;
  v6 = sub_22FFB0BE8();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v9 = *(a2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Release();
  (*(v9 + 16))(v12, a1, a2);
  v13 = *(*(*(*(a3 + 8) + 8) + 8) + 8);
  sub_22FFB18E8();
  _s16CloudAttestation7ReleaseV17defaultIdentifier17SwiftASN1Internal0gE0VvgZ_0();
  sub_22FF6D574(&qword_28148F570, type metadata accessor for Release);
  sub_22FFB0DD8();
  return (*(v9 + 8))(v16, a2);
}

uint64_t sub_22FF68C5C@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v6 = a1;
  v78 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + *(type metadata accessor for Proto_AttestationBundle(0) + 20));
  swift_beginAccess();
  v10 = *(v8 + 32);
  v9 = *(v8 + 40);
  v73 = MEMORY[0x277CC9318];
  v74 = MEMORY[0x277CC9300];
  *&v71 = v10;
  *(&v71 + 1) = v9;
  v11 = __swift_project_boxed_opaque_existential_1(&v71, MEMORY[0x277CC9318]);
  v12 = *v11;
  v13 = v11[1];
  v14 = v13 >> 62;
  if ((v13 >> 62) <= 1)
  {
    if (v14)
    {
      v29 = a4;
      v30 = v12;
      v31 = v12 >> 32;
      v32 = v31 - v30;
      if (v31 < v30)
      {
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      sub_22FEA5608(v10, v9);
      v33 = sub_22FFB0588();
      if (v33)
      {
        v34 = sub_22FFB05B8();
        if (__OFSUB__(v30, v34))
        {
          goto LABEL_46;
        }

        v33 += v30 - v34;
      }

      a4 = v29;
      v35 = sub_22FFB05A8();
      if (v35 >= v32)
      {
        v36 = v32;
      }

      else
      {
        v36 = v35;
      }

      v37 = (v36 + v33);
      if (v33)
      {
        v16 = v37;
      }

      else
      {
        v16 = 0;
      }

      v15 = v33;
    }

    else
    {
      v68[0] = *v11;
      LOWORD(v68[1]) = v13;
      BYTE2(v68[1]) = BYTE2(v13);
      BYTE3(v68[1]) = BYTE3(v13);
      BYTE4(v68[1]) = BYTE4(v13);
      BYTE5(v68[1]) = BYTE5(v13);
      sub_22FEA5608(v10, v9);
      v15 = v68;
      v16 = v68 + BYTE6(v13);
    }

    goto LABEL_28;
  }

  if (v14 != 2)
  {
    memset(v68, 0, 14);
    sub_22FEA5608(v10, v9);
    v15 = v68;
    v16 = v68;
LABEL_28:
    sub_22FF9E9E4(v15, v16, &v69);
    v28 = v4;
    goto LABEL_29;
  }

  v17 = a4;
  v18 = *(v12 + 16);
  v19 = *(v12 + 24);
  sub_22FEA5608(v10, v9);
  v20 = sub_22FFB0588();
  if (v20)
  {
    v21 = sub_22FFB05B8();
    if (__OFSUB__(v18, v21))
    {
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
    }

    v20 += v18 - v21;
  }

  v22 = __OFSUB__(v19, v18);
  v23 = v19 - v18;
  if (v22)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v24 = sub_22FFB05A8();
  if (v24 >= v23)
  {
    v25 = v23;
  }

  else
  {
    v25 = v24;
  }

  v26 = &v20[v25];
  if (v20)
  {
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  sub_22FF9E9E4(v20, v27, &v69);
  v28 = v4;
  a4 = v17;
LABEL_29:
  v38 = v69;
  v39 = v70;
  __swift_destroy_boxed_opaque_existential_1(&v71);
  *&v71 = v38;
  *(&v71 + 1) = v39;
  v72 = 0;
  sub_22FEC1A38(a2 & 1);
  sub_22FEA55AC(v38, v39);
  if (!v28)
  {
    v40 = v75;
    v65 = v76;
    sub_22FF933EC(a3 & 1, &v69);
    v41 = v70;
    if (v70 == 255)
    {
      v46 = MEMORY[0x277D84F90];
    }

    else
    {
      v64 = v6;
      v42 = v69;
      v68[0] = v69;
      LOBYTE(v68[1]) = v70 & 1;
      v43 = sub_22FF936C4();
      sub_22FED8150(v42, v41);
      v44 = *(v43 + 16);
      if (v44)
      {
        v62 = a4;
        v63 = v40;
        v67 = MEMORY[0x277D84F90];
        sub_22FECD9FC(0, v44, 0);
        v45 = 0;
        v46 = v67;
        v47 = (v43 + 48);
        while (v45 < *(v43 + 16))
        {
          v48 = *(v47 - 2);
          v49 = *(v47 - 1);
          v50 = *v47;
          v75 = v48;
          v76 = v49;
          v77 = v50;
          sub_22FEA5608(v48, v49);
          sub_22FEC1A38(a2 & 1);
          sub_22FEA55AC(v48, v49);
          v51 = v71;
          v53 = *(v67 + 16);
          v52 = *(v67 + 24);
          if (v53 >= v52 >> 1)
          {
            v61 = v71;
            sub_22FECD9FC((v52 > 1), v53 + 1, 1);
            v51 = v61;
          }

          ++v45;
          *(v67 + 16) = v53 + 1;
          *(v67 + 16 * v53 + 32) = v51;
          v47 += 24;
          if (v44 == v45)
          {

            v40 = v63;
            v6 = v64;
            a4 = v62;
            goto LABEL_40;
          }
        }

        __break(1u);
        goto LABEL_43;
      }

      v46 = MEMORY[0x277D84F90];
      v6 = v64;
    }

LABEL_40:
    v54 = sub_22FEBE724(v46);

    sub_22FEA5608(v40, v65);
    v55 = (2 * *(sub_22FEC623C(v40, v65) + 16)) | 1;
    sub_22FFB0BF8();
    v56 = sub_22FF67790(v54);

    v57 = sub_22FEBE804(v56);

    v58 = type metadata accessor for Release();
    *(a4 + *(v58 + 20)) = v57;
    sub_22FEA55AC(v40, v65);
    *(a4 + *(v58 + 24)) = MEMORY[0x277D84F90];
  }

  result = sub_22FF6D5BC(v6, type metadata accessor for Proto_AttestationBundle);
  v60 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t Release.init(bundle:evaluateTrust:requireCryptex1:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for Proto_AttestationBundle(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FF6D130(a1, v11, type metadata accessor for Proto_AttestationBundle);
  sub_22FF68C5C(v11, a2, a3, a4);
  return sub_22FF6D5BC(a1, type metadata accessor for AttestationBundle);
}

uint64_t Release.serializedData.getter()
{
  v0 = sub_22FFB0E58();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FFB0E48();
  type metadata accessor for Release();
  sub_22FF6D574(&qword_28148F578, type metadata accessor for Release);
  sub_22FFB0E38();
  v5 = sub_22FFB0E18();
  v6 = sub_22FF9F990(v5);

  (*(v1 + 8))(v4, v0);
  return v6;
}

uint64_t static Release.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_22FFB0C08() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for Release();
  if ((sub_22FEE72BC(*(a1 + *(v4 + 20)), *(a2 + *(v4 + 20))) & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 24);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);

  return sub_22FEE800C(v6, v7);
}

uint64_t Release.hash(into:)(__int128 *a1)
{
  v3 = sub_22FFB0CC8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FFB0C28();
  sub_22FF6D574(&qword_28148F1F0, MEMORY[0x277D6A8E8]);
  sub_22FFB1438();
  v8 = type metadata accessor for Release();
  sub_22FF6CC88(a1, *(v1 + *(v8 + 20)));
  v9 = *(v1 + *(v8 + 24));
  result = MEMORY[0x23190E460](*(v9 + 16));
  v11 = *(v9 + 16);
  if (v11)
  {
    v14 = *(v4 + 16);
    v12 = v4 + 16;
    v13 = v14;
    v15 = v9 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v7, v15, v3);
      sub_22FF6D574(&qword_27DAF3820, MEMORY[0x277D6A988]);
      sub_22FFB1438();
      result = (*(v12 - 8))(v7, v3);
      v15 += v16;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t Release.hashValue.getter()
{
  sub_22FFB1CA8();
  Release.hash(into:)(v1);
  return sub_22FFB1CF8();
}

uint64_t sub_22FF696BC()
{
  sub_22FFB1CA8();
  Release.hash(into:)(v1);
  return sub_22FFB1CF8();
}

uint64_t sub_22FF69700()
{
  sub_22FFB1CA8();
  Release.hash(into:)(v1);
  return sub_22FFB1CF8();
}

uint64_t sub_22FF6973C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_22FFB0C08() & 1) == 0 || (sub_22FEE72BC(*(a1 + *(a3 + 20)), *(a2 + *(a3 + 20))) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 24);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_22FEE800C(v7, v8);
}

uint64_t Release.sha256.getter()
{
  v0 = sub_22FFB13C8();
  v20 = *(v0 - 8);
  v1 = *(v20 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22FFB0E58();
  v4 = *(v18 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v18);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22FFB1398();
  v8 = *(v19 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v19);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FFB0E48();
  type metadata accessor for Release();
  sub_22FF6D574(&qword_28148F578, type metadata accessor for Release);
  sub_22FFB0E38();
  v12 = sub_22FFB0E18();
  v13 = sub_22FF9F990(v12);
  v15 = v14;

  (*(v4 + 8))(v7, v18);
  sub_22FF6D574(&qword_28148F198, MEMORY[0x277CC5540]);
  sub_22FFB1388();
  sub_22FEA5608(v13, v15);
  sub_22FF9EA78(v13, v15);
  sub_22FEA55AC(v13, v15);
  sub_22FFB1368();
  sub_22FEA55AC(v13, v15);
  (*(v20 + 8))(v3, v0);
  v16 = sub_22FF95DBC();
  (*(v8 + 8))(v11, v19);
  return v16;
}

unint64_t Release.description.getter()
{
  sub_22FFB19B8();

  v0 = Release.sha256.getter();
  MEMORY[0x23190DD10](v0);

  MEMORY[0x23190DD10](41, 0xE100000000000000);
  return 0xD000000000000010;
}

unint64_t sub_22FF69B8C()
{
  sub_22FFB19B8();

  v0 = Release.sha256.getter();
  MEMORY[0x23190DD10](v0);

  MEMORY[0x23190DD10](41, 0xE100000000000000);
  return 0xD000000000000010;
}

uint64_t Release.encode(to:)(void *a1)
{
  v4 = type metadata accessor for Release();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FF6D130(v1, v8, type metadata accessor for Release);
  v9 = sub_22FF69F84();
  v11 = v10;
  v14 = sub_22FF66D6C(*&v8[*(v5 + 28)]);

  sub_22FF6BF28(&v14);
  if (v2)
  {

    __break(1u);
  }

  else
  {

    sub_22FF6D5BC(v8, type metadata accessor for Release);
    sub_22FF69D6C(a1, 1, v9, v11, v14);
  }

  return result;
}

uint64_t sub_22FF69D6C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15[1] = a3;
  v15[2] = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3848, &unk_22FFBEEB0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22FF6D4A4();
  sub_22FFB1D18();
  v18 = 0;
  sub_22FFB1B78();
  if (!v5)
  {
    v17 = 1;
    sub_22FFB1B68();
    v15[3] = a5;
    v16 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAF3740, &unk_22FFB4290);
    sub_22FF6D4F8();
    sub_22FFB1B88();
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_22FF69F84()
{
  v0 = sub_22FFB13C8();
  v36 = *(v0 - 8);
  v1 = *(v36 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22FFB1398();
  v31 = *(v4 - 8);
  v32 = v4;
  v5 = *(v31 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v31 - v9;
  sub_22FFB0C18();
  sub_22FF6D574(&qword_28148F198, MEMORY[0x277CC5540]);
  sub_22FFB1388();
  result = sub_22FFB18D8();
  if (!__OFSUB__(v12 >> 1, v13))
  {
    sub_22FFB1358();
    swift_unknownObjectRelease();
    sub_22FFB1368();
    swift_unknownObjectRelease();
    (*(v36 + 8))(v3, v0);
    v14 = v31;
    v15 = v32;
    (*(v31 + 16))(v8, v10, v32);
    sub_22FF6D574(&qword_28148F1B8, MEMORY[0x277CC5290]);
    result = sub_22FFB1608();
    v17 = v37;
    v16 = v38;
    v36 = *(v37 + 16);
    v18 = v14;
    v19 = MEMORY[0x277D84F90];
    if (v38 == v36)
    {
LABEL_3:
      (*(v18 + 8))(v10, v15);

      v37 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAF3740, &unk_22FFB4290);
      sub_22FEBF78C(&qword_28148F130, &unk_27DAF3740, &unk_22FFB4290);
      v20 = sub_22FFB1458();

      return v20;
    }

    v34 = v37 + 32;
    v33 = xmmword_22FFB2D10;
    v21 = v38;
    v35 = v10;
    while ((v16 & 0x8000000000000000) == 0)
    {
      if (v21 >= *(v17 + 16))
      {
        goto LABEL_14;
      }

      v22 = v16;
      v23 = *(v34 + v21);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAF3750, &qword_22FFB35F0);
      v24 = swift_allocObject();
      *(v24 + 16) = v33;
      *(v24 + 56) = MEMORY[0x277D84B78];
      *(v24 + 64) = MEMORY[0x277D84BC0];
      *(v24 + 32) = v23;
      v25 = sub_22FFB14D8();
      v27 = v26;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_22FEC2E8C(0, *(v19 + 16) + 1, 1, v19);
        v19 = result;
      }

      v29 = *(v19 + 16);
      v28 = *(v19 + 24);
      if (v29 >= v28 >> 1)
      {
        result = sub_22FEC2E8C((v28 > 1), v29 + 1, 1, v19);
        v19 = result;
      }

      ++v21;
      *(v19 + 16) = v29 + 1;
      v30 = v19 + 16 * v29;
      *(v30 + 32) = v25;
      *(v30 + 40) = v27;
      v10 = v35;
      v16 = v22;
      if (v36 == v21)
      {
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22FF6A3F8()
{
  v1 = 0x74656B6369547061;
  if (*v0 != 1)
  {
    v1 = 0x5478657470797263;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t sub_22FF6A460@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22FF6D7CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22FF6A488(uint64_t a1)
{
  v2 = sub_22FF6D4A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FF6A4C4(uint64_t a1)
{
  v2 = sub_22FF6D4A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22FF6A570(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FFB0CC8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22FFB0BE8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = 1;
  result = sub_22FFB0E38();
  if (!v2)
  {
    sub_22FFB0C28();
    sub_22FFB0E38();
    v21 = 0;
    v20 = type metadata accessor for Release();
    v23 = *(a2 + *(v20 + 20));
    v22 = v23;

    sub_22FFB0B58();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3840, &qword_22FFBEEA8);
    sub_22FEBF78C(&qword_28148F100, &qword_27DAF3840, &qword_22FFBEEA8);
    v15 = v21;
    sub_22FFB0E08();
    if (v15)
    {
      (*(v10 + 8))(v13, v9);
    }

    (*(v10 + 8))(v13, v9);

    v16 = *(a2 + *(v20 + 24));
    v17 = *(v16 + 16);

    v22 = v17;
    if (!v17)
    {
    }

    v18 = 0;
    while (v18 < *(v16 + 16))
    {
      (*(v5 + 16))(v8, v16 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v18, v4);
      sub_22FFB0E38();
      ++v18;
      result = (*(v5 + 8))(v8, v4);
      if (v22 == v18)
      {
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t Release.init(derEncoded:withIdentifier:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Release();
  sub_22FFB0EA8();
  v4 = sub_22FFB0BE8();
  (*(*(v4 - 8) + 8))(a2, v4);
  v5 = sub_22FFB0D08();
  return (*(*(v5 - 8) + 8))(a1, v5);
}

uint64_t sub_22FF6A9A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v55 = sub_22FFB0CC8();
  v51 = *(v55 - 8);
  v3 = *(v51 + 64);
  MEMORY[0x28223BE20](v55);
  v58 = v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1CC8, &qword_22FFBEEA0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v61 = v45 - v7;
  v52 = sub_22FFB0D08();
  v60 = *(v52 - 8);
  v8 = *(v60 + 64);
  v9 = MEMORY[0x28223BE20](v52);
  v56 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v57 = v45 - v11;
  v12 = sub_22FFB0C28();
  v54 = *(v12 - 8);
  v13 = *(v54 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22FFB0BE8();
  v53 = *(v16 - 8);
  v17 = *(v53 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  MEMORY[0x28223BE20](v21);
  sub_22FFB0DB8();
  v22 = v62;
  result = sub_22FFB0DC8();
  if (!v22)
  {
    v48 = v16;
    v49 = v15;
    v50 = v12;
    v62 = a1;
    v24 = v63;
    if (v63 == 1)
    {
      sub_22FFB0DB8();
      sub_22FFB0DC8();
      sub_22FFB0B58();
      v45[0] = sub_22FFB0E68();
      (*(v53 + 8))(v20, v48);
      v26 = v61;
      sub_22FFB0C48();
      v27 = v60;
      v28 = *(v60 + 48);
      v29 = v52;
      v53 = v60 + 48;
      v48 = v28;
      if (v28(v26, 1, v52) == 1)
      {
        v30 = MEMORY[0x277D84F90];
        v31 = v59;
        v32 = v61;
      }

      else
      {
        v38 = *(v27 + 32);
        v37 = v27 + 32;
        v46 = (v37 - 16);
        v47 = v38;
        v60 = v37;
        v39 = (v37 - 24);
        v40 = v51;
        v45[1] = v51 + 32;
        v30 = MEMORY[0x277D84F90];
        v41 = v57;
        v32 = v61;
        do
        {
          v47(v41, v32, v29);
          (*v46)(v56, v41, v29);
          sub_22FFB0CB8();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v30 = sub_22FEC369C(0, v30[2] + 1, 1, v30);
          }

          v43 = v30[2];
          v42 = v30[3];
          v41 = v57;
          if (v43 >= v42 >> 1)
          {
            v30 = sub_22FEC369C(v42 > 1, v43 + 1, 1, v30);
          }

          (*v39)(v41, v29);
          v30[2] = v43 + 1;
          (*(v40 + 32))(v30 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v43, v58, v55);
          v32 = v61;
          sub_22FFB0C48();
          v44 = v48(v32, 1, v29);
          v31 = v59;
        }

        while (v44 != 1);
      }

      sub_22FEAEA34(v32, &qword_27DAF1CC8, &qword_22FFBEEA0);
      v33 = v54;
      v35 = v49;
      v34 = v50;
      (*(v54 + 16))(v31, v49, v50);
      v36 = sub_22FEBE804(v45[0]);

      (*(v33 + 8))(v35, v34);
      result = type metadata accessor for Release();
      *(v31 + *(result + 20)) = v36;
      *(v31 + *(result + 24)) = v30;
    }

    else
    {
      v63 = 0;
      v64 = 0xE000000000000000;
      sub_22FFB19B8();

      v63 = 0xD000000000000015;
      v64 = 0x800000022FFCB610;
      v65 = v24;
      v25 = sub_22FFB1BA8();
      MEMORY[0x23190DD10](v25);

      sub_22FFB0D38();
      sub_22FF6D574(&qword_27DAF1CA0, MEMORY[0x277D6A9C0]);
      swift_allocError();
      sub_22FFB0D18();

      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_22FF6B118(uint64_t a1, uint64_t a2)
{
  sub_22FFB0EA8();
  v4 = sub_22FFB0BE8();
  (*(*(v4 - 8) + 8))(a2, v4);
  v5 = sub_22FFB0D08();
  return (*(*(v5 - 8) + 8))(a1, v5);
}

uint64_t static Release.local<A>(assetProvider:requireCryptex1:)@<X0>(char a1@<W1>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = a3;
  v118 = *MEMORY[0x277D85DE8];
  result = (*(a3 + 8))(a2, a3);
  if (!v4)
  {
    v12 = result;
    v13 = v11;
    v14 = (*(v6 + 24))(a2, v6);
    v103 = a4;
    if (qword_281490280 != -1)
    {
      swift_once();
    }

    v15 = sub_22FFB0958();
    v16 = __swift_project_value_buffer(v15, qword_281491418);
    v17 = MEMORY[0x277CC9318];
    v18 = MEMORY[0x277CC9300];
    if (!*(v14 + 16) || (v19 = sub_22FFA6214(v16), (v20 & 1) == 0))
    {

      v104 = 0;
      goto LABEL_64;
    }

    v21 = *(*(v14 + 56) + 8 * v19);

    v22 = *(v21 + 16);
    if (!v22)
    {
      v104 = MEMORY[0x277D84F90];
      goto LABEL_63;
    }

    v23 = 0;
    if (a1)
    {
      v24 = 1;
    }

    else
    {
      v24 = 3;
    }

    v102 = v24;
    v25 = v22 - 1;
    v104 = MEMORY[0x277D84F90];
    do
    {
      v26 = (v23 << 6) | 0x20;
      v27 = v23;
      while (1)
      {
        if (v27 >= *(v21 + 16))
        {
          __break(1u);

          sub_22FEBF960(&v114);
          sub_22FEA55AC(v12, v13);
          sub_22FEA56EC(v100, v5);
          sub_22FEA55AC(v97, v6);

          goto LABEL_90;
        }

        v28 = *(v21 + v26 + 48);
        v29 = *(v21 + v26);
        v30 = *(v21 + v26 + 16);
        v116 = *(v21 + v26 + 32);
        v117 = v28;
        v114 = v29;
        v115 = v30;
        v5 = *(&v30 + 1);
        if (*(&v30 + 1) >> 60 != 15 && v116 != 4)
        {
          break;
        }

        ++v27;
        v26 += 64;
        if (v22 == v27)
        {
          goto LABEL_63;
        }
      }

      v111 = MEMORY[0x277CC9318];
      v112 = MEMORY[0x277CC9300];
      v101 = v115;
      v110 = __PAIR128__(*(&v30 + 1), v115);
      v31 = __swift_project_boxed_opaque_existential_1(&v110, MEMORY[0x277CC9318]);
      v32 = *v31;
      v96 = v25;
      v98 = v31[1];
      v33 = v98 >> 62;
      if ((v98 >> 62) <= 1)
      {
        if (!v33)
        {
          __src = *v31;
          v106 = v98;
          v107 = WORD2(v98);
          if (BYTE6(v98))
          {
            if (BYTE6(v98) <= 0xEuLL)
            {
              *(&__dst + 6) = 0;
              *&__dst = 0;
              BYTE14(__dst) = BYTE6(v98);
              memcpy(&__dst, &__src, BYTE6(v98));
              v99 = __dst;
              v6 = v87 & 0xF00000000000000 | DWORD2(__dst) | ((WORD6(__dst) | (BYTE14(__dst) << 16)) << 32);
              sub_22FEBF8F0(v101, v5);
              v37 = v99;
              sub_22FEBF8F0(v101, v5);
              sub_22FEBF904(&v114, &__dst);
              v87 = v6;
            }

            else
            {
              v34 = sub_22FFB05D8();
              v35 = *(v34 + 48);
              v36 = *(v34 + 52);
              swift_allocObject();
              sub_22FEBF8F0(v101, v5);
              sub_22FEBF8F0(v101, v5);
              sub_22FEBF904(&v114, &__dst);
              v37 = BYTE6(v98) << 32;
              v6 = sub_22FFB0578() | 0x4000000000000000;
            }
          }

          else
          {
            sub_22FEBF8F0(v101, v5);
            sub_22FEBF8F0(v101, v5);
            sub_22FEBF904(&v114, &__dst);
            v37 = 0;
            v6 = 0xC000000000000000;
          }

          goto LABEL_55;
        }

        v91 = (v32 >> 32) - v32;
        v94 = v32;
        if (v32 >> 32 >= v32)
        {
          sub_22FEBF8F0(v101, v5);
          sub_22FEBF8F0(v101, v5);
          sub_22FEBF904(&v114, &__dst);
          v41 = sub_22FFB0588();
          if (v41)
          {
            v89 = v41;
            v42 = sub_22FFB05B8();
            if (!__OFSUB__(v94, v42))
            {
              v95 = v94 + v89 - v42;
              goto LABEL_41;
            }

LABEL_98:
            __break(1u);
          }

          v95 = 0;
LABEL_41:
          v48 = sub_22FFB05A8();
          if (v48 >= v91)
          {
            v49 = v91;
          }

          else
          {
            v49 = v48;
          }

          v6 = 0xC000000000000000;
          if (v95 && v49)
          {
            if (v49 < 15)
            {
              *(&__dst + 6) = 0;
              *&__dst = 0;
              BYTE14(__dst) = v49;
              memcpy(&__dst, v95, v49);
              v37 = __dst;
              v6 = v85 & 0xF00000000000000 | DWORD2(__dst) | ((WORD6(__dst) | (BYTE14(__dst) << 16)) << 32);
              v85 = v6;
              goto LABEL_55;
            }

            v47 = v49;
            goto LABEL_48;
          }

LABEL_50:
          v37 = 0;
          goto LABEL_55;
        }

LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
        goto LABEL_98;
      }

      if (v33 != 2)
      {
        v43 = *v31;
        sub_22FEBF8F0(v101, v5);
        v37 = v43;
        sub_22FEBF8F0(v101, v5);
        sub_22FEBF904(&v114, &__dst);
        v6 = v98;
        goto LABEL_55;
      }

      v88 = *(v32 + 24);
      v90 = *(v32 + 16);
      sub_22FEBF8F0(v101, v5);
      sub_22FEBF8F0(v101, v5);
      sub_22FEBF904(&v114, &__dst);
      v38 = sub_22FFB0588();
      if (v38)
      {
        v92 = v38;
        v39 = sub_22FFB05B8();
        v40 = v90;
        if (__OFSUB__(v90, v39))
        {
          goto LABEL_97;
        }

        v93 = &v92[v90 - v39];
      }

      else
      {
        v93 = 0;
        v40 = v90;
      }

      v44 = v88 - v40;
      if (__OFSUB__(v88, v40))
      {
        goto LABEL_96;
      }

      v45 = sub_22FFB05A8();
      if (v45 >= v44)
      {
        v46 = v44;
      }

      else
      {
        v46 = v45;
      }

      v6 = 0xC000000000000000;
      if (!v93 || !v46)
      {
        goto LABEL_50;
      }

      if (v46 < 15)
      {
        *(&__dst + 6) = 0;
        *&__dst = 0;
        BYTE14(__dst) = v46;
        memcpy(&__dst, v93, v46);
        v37 = __dst;
        v6 = v86 & 0xF00000000000000 | DWORD2(__dst) | ((WORD6(__dst) | (BYTE14(__dst) << 16)) << 32);
        v86 = v6;
        goto LABEL_55;
      }

      v47 = v46;
LABEL_48:
      v50 = sub_22FFB05D8();
      v51 = *(v50 + 48);
      v52 = *(v50 + 52);
      swift_allocObject();
      v53 = sub_22FFB0578();
      v54 = v53;
      if (v47 >= 0x7FFFFFFF)
      {
        sub_22FFB0738();
        v56 = swift_allocObject();
        *(v56 + 16) = 0;
        *(v56 + 24) = v47;
        v6 = v54 | 0x8000000000000000;
        v37 = v56;
      }

      else
      {
        v55 = v47 << 32;
        v6 = v53 | 0x4000000000000000;
        v37 = v55;
      }

LABEL_55:
      __swift_destroy_boxed_opaque_existential_1(&v110);
      v97 = v37;
      *&__dst = v37;
      *(&__dst + 1) = v6;
      v109 = v102;
      sub_22FEC1A38(1);
      sub_22FEBF960(&v114);
      sub_22FEA56EC(v101, v5);
      sub_22FEA55AC(v37, v6);
      v100 = v113[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v104 = sub_22FEC334C(0, *(v104 + 2) + 1, 1, v104);
      }

      v5 = *(v104 + 2);
      v57 = *(v104 + 3);
      if (v5 >= v57 >> 1)
      {
        v104 = sub_22FEC334C((v57 > 1), v5 + 1, 1, v104);
      }

      v23 = v27 + 1;
      *(v104 + 2) = v5 + 1;
      *&v104[16 * v5 + 32] = v100;
      v25 = v96;
    }

    while (v96 != v27);
LABEL_63:

    v17 = MEMORY[0x277CC9318];
    v18 = MEMORY[0x277CC9300];
LABEL_64:
    *(&v115 + 1) = v17;
    *&v116 = v18;
    *&v114 = v12;
    *(&v114 + 1) = v13;
    v58 = __swift_project_boxed_opaque_existential_1(&v114, v17);
    v59 = *v58;
    v60 = v58[1];
    v61 = v60 >> 62;
    if ((v60 >> 62) <= 1)
    {
      if (!v61)
      {
        *&v113[0] = *v58;
        WORD4(v113[0]) = v60;
        BYTE10(v113[0]) = BYTE2(v60);
        BYTE11(v113[0]) = BYTE3(v60);
        BYTE12(v113[0]) = BYTE4(v60);
        BYTE13(v113[0]) = BYTE5(v60);
        sub_22FEA5608(v12, v13);
        v62 = v113;
        v63 = v113 + BYTE6(v60);
        goto LABEL_86;
      }

LABEL_74:
      v70 = v59;
      v71 = v59 >> 32;
      v69 = v71 - v70;
      if (v71 >= v70)
      {
        sub_22FEA5608(v12, v13);
        v66 = sub_22FFB0588();
        if (!v66)
        {
          goto LABEL_78;
        }

        v72 = sub_22FFB05B8();
        if (!__OFSUB__(v70, v72))
        {
          v66 += v70 - v72;
          goto LABEL_78;
        }

LABEL_94:
        __break(1u);
        goto LABEL_95;
      }

      __break(1u);
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

    if (v61 == 2)
    {
      v64 = *(v59 + 16);
      v65 = *(v59 + 24);
      sub_22FEA5608(v12, v13);
      v66 = sub_22FFB0588();
      if (v66)
      {
        v67 = sub_22FFB05B8();
        v59 = v64 - v67;
        if (__OFSUB__(v64, v67))
        {
          goto LABEL_93;
        }

        v66 += v59;
      }

      v68 = __OFSUB__(v65, v64);
      v69 = v65 - v64;
      if (v68)
      {
        __break(1u);
        goto LABEL_74;
      }

LABEL_78:
      v73 = sub_22FFB05A8();
      if (v73 >= v69)
      {
        v74 = v69;
      }

      else
      {
        v74 = v73;
      }

      v75 = (v74 + v66);
      if (v66)
      {
        v63 = v75;
      }

      else
      {
        v63 = 0;
      }

      v62 = v66;
    }

    else
    {
      *(v113 + 6) = 0;
      *&v113[0] = 0;
      sub_22FEA5608(v12, v13);
      v62 = v113;
      v63 = v113;
    }

LABEL_86:
    sub_22FF9E9E4(v62, v63, &v110);
    v76 = v110;
    __swift_destroy_boxed_opaque_existential_1(&v114);
    v114 = v76;
    LOBYTE(v115) = 0;
    sub_22FEC1A38(1);
    sub_22FEA55AC(v76, *(&v76 + 1));
    v77 = __dst;
    v78 = MEMORY[0x277D84F90];
    if (v104)
    {
      v79 = v104;
    }

    else
    {
      v79 = MEMORY[0x277D84F90];
    }

    sub_22FEA5608(__dst, *(&__dst + 1));
    v80 = (2 * *(sub_22FEC623C(v77, *(&v77 + 1)) + 16)) | 1;
    sub_22FFB0BF8();
    v81 = sub_22FF67DCC(v79);

    v82 = sub_22FEBE804(v81);

    v83 = type metadata accessor for Release();
    *(v103 + *(v83 + 20)) = v82;
    sub_22FEA55AC(v77, *(&v77 + 1));
    result = sub_22FEA55AC(v12, v13);
    *(v103 + *(v83 + 24)) = v78;
  }

LABEL_90:
  v84 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t type metadata accessor for Release()
{
  result = qword_28148F558;
  if (!qword_28148F558)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_22FF6BE0C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF36C8, &unk_22FFC0160);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_22FF6BE80(uint64_t a1, unint64_t a2)
{
  sub_22FEA5608(a1, a2);
  v4 = *(sub_22FF6C960(a1, a2) + 16);
  v5 = sub_22FFB1528();

  return v5;
}

uint64_t sub_22FF6BEEC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22FFB1528();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_22FF6BF28(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_22FF9021C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_22FF6BF94(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_22FF6BF94(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22FFB1B98();
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
        v5 = sub_22FFB1718();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_22FF6C15C(v7, v8, a1, v4);
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
    return sub_22FF6C08C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22FF6C08C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_22FFB1BC8(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22FF6C15C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_22FF8FB54(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_22FF6C738((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_22FFB1BC8();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_22FFB1BC8();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_22FEC2F98(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_22FEC2F98((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_22FF6C738((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_22FF8FB54(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_22FF8FAC8(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_22FFB1BC8(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_22FF6C738(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_22FFB1BC8() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_22FFB1BC8() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_22FF6C960(uint64_t a1, unint64_t a2)
{
  v4 = sub_22FFB0818();
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
      sub_22FEA55AC(a1, a2);
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
      v14 = sub_22FF6BE0C(v11, 0);
      v15 = sub_22FFB0718();
      sub_22FEA55AC(a1, a2);
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

uint64_t sub_22FF6CADC(uint64_t a1, unint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  if (v2 != 2)
  {
    goto LABEL_16;
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  a1 = sub_22FFB0588();
  if (a1)
  {
    a1 = sub_22FFB05B8();
    if (__OFSUB__(v3, a1))
    {
      goto LABEL_18;
    }
  }

  if (__OFSUB__(v4, v3))
  {
    __break(1u);
LABEL_10:
    v5 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!sub_22FFB0588() || !__OFSUB__(v5, sub_22FFB05B8()))
      {
        goto LABEL_15;
      }

LABEL_19:
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_15:
  sub_22FFB05A8();
LABEL_16:
  result = sub_22FFB1528();
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22FF6CC88(__int128 *a1, uint64_t a2)
{
  v4 = sub_22FFB0C28();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[3];
  v26 = a1[2];
  v27 = v9;
  v28 = *(a1 + 8);
  v11 = *a1;
  v10 = a1[1];
  v23[0] = a1;
  v24 = v11;
  v25 = v10;
  v12 = sub_22FFB1CF8();
  v13 = 1 << *(a2 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a2 + 56);
  v16 = (v13 + 63) >> 6;
  v23[2] = v5 + 16;
  v23[3] = v12;
  v23[1] = v5 + 8;

  v18 = 0;
  for (i = 0; v15; v18 ^= v22)
  {
    v20 = i;
LABEL_9:
    v21 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    (*(v5 + 16))(v8, *(a2 + 48) + *(v5 + 72) * (v21 | (v20 << 6)), v4);
    sub_22FF6D574(&qword_28148F1F0, MEMORY[0x277D6A8E8]);
    v22 = sub_22FFB1428();
    result = (*(v5 + 8))(v8, v4);
  }

  while (1)
  {
    v20 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v20 >= v16)
    {

      return MEMORY[0x23190E460](v18);
    }

    v15 = *(a2 + 56 + 8 * v20);
    ++i;
    if (v15)
    {
      i = v20;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22FF6CEB4(uint64_t a1)
{
  v1 = MEMORY[0x277D84F98];
  v34 = MEMORY[0x277D84F98];
  v2 = *(a1 + 16);
  if (!v2)
  {
    return v1;
  }

  for (i = (a1 + 48); ; i += 24)
  {
    v6 = *(i - 2);
    v5 = *(i - 1);
    v7 = *i;
    v8 = sub_22FFA6500(*i);
    v10 = v1[2];
    v11 = (v9 & 1) == 0;
    v12 = v10 + v11;
    if (__OFADD__(v10, v11))
    {
      break;
    }

    v13 = v8;
    v14 = v9;
    v15 = v5;
    v16 = v2;
    v17 = v1[3];
    v33 = v15;
    sub_22FEA5608(v6, v15);
    if (v17 < v12)
    {
      sub_22FF8BC3C(v12, 1);
      v1 = v34;
      v18 = sub_22FFA6500(v7);
      if ((v14 & 1) != (v19 & 1))
      {
        goto LABEL_19;
      }

      v13 = v18;
    }

    if (v14)
    {
      v20 = v1[7];
      v21 = *(v20 + 8 * v13);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v20 + 8 * v13) = v21;
      v32 = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v21 = sub_22FEC3564(0, *(v21 + 2) + 1, 1, v21);
        *(v20 + 8 * v13) = v21;
      }

      v24 = *(v21 + 2);
      v23 = *(v21 + 3);
      v25 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        v26 = sub_22FEC3564((v23 > 1), v24 + 1, 1, v21);
        v25 = v24 + 1;
        v21 = v26;
        *(v32 + 8 * v13) = v26;
      }

      *(v21 + 2) = v25;
      v4 = &v21[24 * v24];
      *(v4 + 4) = v6;
      *(v4 + 5) = v33;
      v4[48] = v7;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1C48, &qword_22FFB43E0);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_22FFB2D10;
      *(v27 + 32) = v6;
      *(v27 + 40) = v33;
      *(v27 + 48) = v7;
      v1[(v13 >> 6) + 8] |= 1 << v13;
      *(v1[6] + v13) = v7;
      *(v1[7] + 8 * v13) = v27;
      v28 = v1[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_18;
      }

      v1[2] = v30;
    }

    v2 = v16 - 1;
    if (v16 == 1)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_22FFB1C18();
  __break(1u);
  return result;
}

unint64_t sub_22FF6D0DC()
{
  result = qword_27DAF3818;
  if (!qword_27DAF3818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF3818);
  }

  return result;
}

uint64_t sub_22FF6D130(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_22FF6D2B4()
{
  sub_22FFB0C28();
  if (v0 <= 0x3F)
  {
    sub_22FF6D350();
    if (v1 <= 0x3F)
    {
      sub_22FF6D3E4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22FF6D350()
{
  if (!qword_28148F108)
  {
    sub_22FFB0C28();
    sub_22FF6D574(&qword_28148F1F0, MEMORY[0x277D6A8E8]);
    v0 = sub_22FFB17D8();
    if (!v1)
    {
      atomic_store(v0, &qword_28148F108);
    }
  }
}

void sub_22FF6D3E4()
{
  if (!qword_27DAF3830)
  {
    sub_22FFB0CC8();
    v0 = sub_22FFB1738();
    if (!v1)
    {
      atomic_store(v0, &qword_27DAF3830);
    }
  }
}

unint64_t sub_22FF6D450()
{
  result = qword_27DAF3838;
  if (!qword_27DAF3838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF3838);
  }

  return result;
}

unint64_t sub_22FF6D4A4()
{
  result = qword_281490268;
  if (!qword_281490268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281490268);
  }

  return result;
}

unint64_t sub_22FF6D4F8()
{
  result = qword_28148F138;
  if (!qword_28148F138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DAF3740, &unk_22FFB4290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28148F138);
  }

  return result;
}

uint64_t sub_22FF6D574(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22FF6D5BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22FF6D61C(uint64_t a1, int a2)
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

uint64_t sub_22FF6D664(uint64_t result, int a2, int a3)
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

unint64_t sub_22FF6D6C8()
{
  result = qword_27DAF3850;
  if (!qword_27DAF3850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF3850);
  }

  return result;
}

unint64_t sub_22FF6D720()
{
  result = qword_281490258;
  if (!qword_281490258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281490258);
  }

  return result;
}

unint64_t sub_22FF6D778()
{
  result = qword_281490260;
  if (!qword_281490260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281490260);
  }

  return result;
}

uint64_t sub_22FF6D7CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (sub_22FFB1BC8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74656B6369547061 && a2 == 0xE800000000000000 || (sub_22FFB1BC8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x5478657470797263 && a2 == 0xEE007374656B6369)
  {

    return 2;
  }

  else
  {
    v6 = sub_22FFB1BC8();

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

uint64_t sub_22FF6D964(void *a1, unint64_t a2)
{
  v4 = v3;
  v7 = sub_22FFB0C28();
  v69 = *(v7 - 8);
  v8 = *(v69 + 64);
  MEMORY[0x28223BE20](v7);
  v68 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = 0x3A6E6F6973726556;
  v72 = 0xE900000000000020;
  v75 = 1;
  v10 = sub_22FFB1BA8();
  MEMORY[0x23190DD10](v10);

  MEMORY[0x23190DD10](10, 0xE100000000000000);
  v11 = v71;
  v12 = v72;
  v71 = a1;
  v72 = a2;

  MEMORY[0x23190DD10](v11, v12);

  v77 = v71;
  v78 = v72;
  v71 = a1;
  v72 = a2;

  MEMORY[0x23190DD10](0x656B636954205041, 0xEB000000000A3A74);
  MEMORY[0x23190DD10](v71, v72);

  v79 = v2;
  v13 = sub_22FFB0C18();
  sub_22FF960FC(v13, v14, v15, v16);
  v18 = v17;
  v20 = v19;
  v71 = v17;
  v72 = v19;
  LOBYTE(v73) = 0;
  v21 = a1;
  v75 = a1;
  v76 = a2;
  v22 = a2;

  MEMORY[0x23190DD10](538976288, 0xE400000000000000);
  v23 = sub_22FEC4DE8(v75, v76);
  if (v4)
  {

    return sub_22FEA55AC(v18, v20);
  }

  v66 = v18;
  v67 = v20;
  v26 = v23;
  v27 = v24;

  MEMORY[0x23190DD10](v26, v27);

  v28 = *&v79[*(type metadata accessor for Release() + 20)];
  v29 = *(v28 + 16);
  if (v29)
  {
    v79 = 0;
    v30 = sub_22FF8A288(v29, 0);
    v70 = sub_22FF8FF48(&v71, &v30[(*(v69 + 80) + 32) & ~*(v69 + 80)], v29, v28);
    v65 = v74;

    sub_22FF6F7A8();
    if (v70 != v29)
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v4 = v79;
  }

  else
  {
    v30 = MEMORY[0x277D84F90];
  }

  v71 = v30;
  v31 = v4;
  sub_22FF6E0CC(&v71);
  v32 = v69;
  v79 = v31;
  if (!v31)
  {
    v33 = v71;
    v34 = v67;
    v35 = v68;
    v36 = v66;
    v65 = *(v71 + 16);
    if (!v65)
    {
LABEL_13:

      sub_22FEA55AC(v36, v34);
      return v77;
    }

    v37 = 0;
    v62 = "Unsupported version: ";
    v63 = v69 + 16;
    v60 = v7;
    v61 = v69 + 8;
    v64 = v71;
    while (v37 < v33[2])
    {
      v38 = v33 + ((*(v32 + 80) + 32) & ~*(v32 + 80));
      v39 = *(v32 + 72);
      v70 = v37;
      (*(v32 + 16))(v35, &v38[v39 * v37], v7);
      v40 = v21;
      v71 = v21;
      v72 = v22;
      v41 = v22;

      MEMORY[0x23190DD10](0xD000000000000010, v62 | 0x8000000000000000);
      MEMORY[0x23190DD10](v71, v72);

      v42 = sub_22FFB0C18();
      v44 = v43;
      v46 = v45;
      v48 = v47;
      (*(v32 + 8))(v35, v7);
      sub_22FF960FC(v42, v44, v46, v48);
      v50 = v49;
      v52 = v51;
      v71 = v49;
      v72 = v51;
      LOBYTE(v73) = 3;
      v53 = v40;
      v75 = v40;
      v76 = v41;
      v54 = v41;

      MEMORY[0x23190DD10](538976288, 0xE400000000000000);
      v55 = v79;
      v56 = sub_22FEC4DE8(v75, v76);
      v58 = v57;

      v79 = v55;
      if (v55)
      {

        sub_22FEA55AC(v66, v67);

        return sub_22FEA55AC(v50, v52);
      }

      v37 = v70 + 1;
      MEMORY[0x23190DD10](v56, v58);

      sub_22FEA55AC(v50, v52);
      v36 = v66;
      v21 = v53;
      v22 = v54;
      v7 = v60;
      v35 = v68;
      v32 = v69;
      v34 = v67;
      v33 = v64;
      if (v65 == v37)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

LABEL_17:

  __break(1u);
  return result;
}

uint64_t sub_22FF6DE9C()
{
  v0 = sub_22FFB0C18();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  result = sub_22FFB0C18();
  v11 = 0;
  v12 = v6 >> 1;
  v13 = v10 >> 1;
  v14 = v9 + (v6 >> 1) - v4;
  if (v4 <= (v6 >> 1))
  {
    v15 = v6 >> 1;
  }

  else
  {
    v15 = v4;
  }

  v16 = v15 - v4;
  while (1)
  {
    if (!(v4 - (v6 >> 1) + v11))
    {
      goto LABEL_13;
    }

    if (v16 == v11)
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    if (!(v9 - v13 + v11))
    {
      break;
    }

    if (v9 + v11 >= v13)
    {
      goto LABEL_18;
    }

    v17 = *(v2 + v4 + v11);
    v18 = *(v8 + v9 + v11);
    if (v17 < v18)
    {
      v29 = v0;
      v30 = v2;
      v31 = v4;
      v32 = v6;
      v33 = v4 + v11 + 1;
      v34 = result;
      v35 = v8;
      v36 = v9;
      v37 = v10;
      v38 = v9 + v11 + 1;
      v39 = 0;
      sub_22FF6F7B0(&v29);
      return 1;
    }

    ++v11;
    if (v18 < v17)
    {
      v29 = v0;
      v30 = v2;
      v31 = v4;
      v32 = v6;
      v33 = v4 + v11;
      v34 = result;
      v35 = v8;
      v36 = v9;
      v37 = v10;
      v38 = v9 + v11;
      v39 = 0;
      sub_22FF6F7B0(&v29);
      return 0;
    }
  }

  v14 = v10 >> 1;
  v12 = v4 + (v10 >> 1) - v9 + 1;
LABEL_13:
  v29 = v0;
  v30 = v2;
  v31 = v4;
  v32 = v6;
  v33 = v12;
  v34 = result;
  v35 = v8;
  v36 = v9;
  v37 = v10;
  v38 = v14;
  v39 = 1;
  sub_22FF6F7B0(&v29);
  sub_22FFB0C18();
  v20 = v19;
  v22 = v21;
  result = swift_unknownObjectRelease();
  v23 = __OFSUB__(v22 >> 1, v20);
  v24 = (v22 >> 1) - v20;
  if (v23)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  sub_22FFB0C18();
  v26 = v25;
  v28 = v27;
  result = swift_unknownObjectRelease();
  if (!__OFSUB__(v28 >> 1, v26))
  {
    return v24 < ((v28 >> 1) - v26);
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_22FF6E0CC(void **a1)
{
  v2 = *(sub_22FFB0C28() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_22FF90230(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_22FF6E174(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_22FF6E174(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22FFB1B98();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_22FFB0C28();
        v6 = sub_22FFB1718();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_22FFB0C28() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_22FF6E580(v8, v9, a1, v4);
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
    return sub_22FF6E2A0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22FF6E2A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v43 = sub_22FFB0C28();
  v9 = *(v43 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v43);
  v48 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v36 - v14;
  result = MEMORY[0x28223BE20](v13);
  v38 = a2;
  if (a3 != a2)
  {
    v51 = &v36 - v17;
    v18 = *a4;
    v20 = *(v9 + 16);
    v19 = v9 + 16;
    v21 = *(v19 + 56);
    v49 = v20;
    v50 = (v19 - 8);
    v22 = (v18 + v21 * (a3 - 1));
    v44 = -v21;
    v45 = (v19 + 16);
    v23 = a1 - a3;
    v46 = v18;
    v47 = v19;
    v37 = v21;
    v24 = v18 + v21 * a3;
    v25 = v4;
    while (2)
    {
      v41 = v22;
      v42 = a3;
      v39 = v24;
      v40 = v23;
      v26 = v43;
      while (1)
      {
        v27 = v51;
        v28 = v49;
        v49(v51, v24, v26);
        v28(v15, v22, v26);
        v29 = sub_22FF6DE9C();
        v52 = v25;
        if (v25)
        {
          v35 = *v50;
          (*v50)(v15, v26);
          return (v35)(v27, v26);
        }

        v30 = v29;
        v31 = *v50;
        (*v50)(v15, v26);
        result = (v31)(v27, v26);
        if ((v30 & 1) == 0)
        {
          break;
        }

        if (!v46)
        {
          __break(1u);
          return result;
        }

        v32 = *v45;
        v33 = v48;
        (*v45)(v48, v24, v26);
        swift_arrayInitWithTakeFrontToBack();
        result = v32(v22, v33, v26);
        v22 += v44;
        v24 += v44;
        v34 = __CFADD__(v23++, 1);
        v25 = v52;
        if (v34)
        {
          goto LABEL_11;
        }
      }

      v25 = v52;
LABEL_11:
      a3 = v42 + 1;
      v22 = &v41[v37];
      v23 = v40 - 1;
      v24 = v39 + v37;
      if (v42 + 1 != v38)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_22FF6E580(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v145 = a1;
  v9 = sub_22FFB0C28();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v9);
  v148 = &v134 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v149 = &v134 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v151 = &v134 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v150 = &v134 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v21 = MEMORY[0x28223BE20](v20);
  v144 = &v134 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v134 - v24;
  result = MEMORY[0x28223BE20](v23);
  v29 = a3[1];
  if (v29 < 1)
  {
    v31 = MEMORY[0x277D84F90];
LABEL_104:
    v5 = *v145;
    if (*v145)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_137;
      }

      goto LABEL_106;
    }

    goto LABEL_146;
  }

  v141 = &v134 - v27;
  v139 = a4;
  v30 = 0;
  v159 = (v10 + 1);
  v160 = v10 + 2;
  v156 = (v10 + 4);
  v31 = MEMORY[0x277D84F90];
  v161 = v9;
  v153 = v28;
  v142 = v25;
  v146 = a3;
  v138 = v10;
  while (1)
  {
    v32 = v30;
    if ((v30 + 1) >= v29)
    {
      v55 = v30 + 1;
    }

    else
    {
      v157 = v29;
      v162 = v6;
      v33 = *a3;
      v34 = v10[9];
      v5 = *a3 + v34 * (v30 + 1);
      v35 = v10[2];
      v36 = v141;
      v37 = v30;
      v35(v141, v5, v9);
      v140 = v33;
      v158 = v34;
      v38 = &v33[v34 * v37];
      v39 = v142;
      v154 = v35;
      v35(v142, v38, v9);
      v40 = v39;
      v41 = v162;
      LODWORD(v155) = sub_22FF6DE9C();
      v162 = v41;
      if (v41)
      {
        v133 = *v159;
        (*v159)(v39, v9);
        v133(v36, v9);
      }

      v42 = *v159;
      (*v159)(v40, v9);
      v152 = v42;
      result = (v42)(v36, v9);
      v143 = v37;
      v43 = v37 + 2;
      v44 = v158;
      v45 = &v140[v158 * (v37 + 2)];
      v46 = v144;
      while (v157 != v43)
      {
        v47 = v31;
        v48 = v161;
        v49 = v154;
        (v154)(v46, v45, v161);
        v50 = v153;
        v49(v153, v5, v48);
        v51 = v162;
        v52 = sub_22FF6DE9C();
        v162 = v51;
        if (v51)
        {
          v131 = v152;
          (v152)(v50, v48);
          (v131)(v46, v48);
        }

        v53 = v52;
        v54 = v152;
        (v152)(v50, v48);
        result = (v54)(v46, v48);
        ++v43;
        v44 = v158;
        v45 += v158;
        v5 += v158;
        v31 = v47;
        if ((v155 ^ v53))
        {
          v55 = (v43 - 1);
          goto LABEL_12;
        }
      }

      v55 = v157;
LABEL_12:
      v10 = v138;
      v9 = v161;
      v6 = v162;
      v32 = v143;
      if ((v155 & 1) == 0)
      {
        goto LABEL_25;
      }

      if (v55 < v143)
      {
        goto LABEL_140;
      }

      if (v143 < v55)
      {
        v56 = v55;
        v57 = v44 * (v55 - 1);
        v58 = v56 * v44;
        v157 = v56;
        v59 = v143;
        v60 = v143 * v44;
        do
        {
          if (v59 != --v56)
          {
            v162 = v6;
            v62 = *v146;
            if (!*v146)
            {
              goto LABEL_144;
            }

            v5 = v62 + v60;
            v155 = *v156;
            v155(v148, v62 + v60, v161);
            if (v60 < v57 || v5 >= v62 + v58)
            {
              v61 = v161;
              swift_arrayInitWithTakeFrontToBack();
            }

            else
            {
              v61 = v161;
              if (v60 != v57)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            result = (v155)(v62 + v57, v148, v61);
            v6 = v162;
            v44 = v158;
          }

          ++v59;
          v57 -= v44;
          v58 -= v44;
          v60 += v44;
        }

        while (v59 < v56);
        a3 = v146;
        v10 = v138;
        v9 = v161;
        v32 = v143;
        v55 = v157;
      }

      else
      {
LABEL_25:
        a3 = v146;
      }
    }

    v63 = a3[1];
    if (v55 >= v63)
    {
      goto LABEL_37;
    }

    if (__OFSUB__(v55, v32))
    {
      goto LABEL_136;
    }

    if (v55 - v32 >= v139)
    {
      goto LABEL_37;
    }

    if (__OFADD__(v32, v139))
    {
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
      goto LABEL_143;
    }

    v157 = v55;
    if (&v32[v139] >= v63)
    {
      v64 = v63;
    }

    else
    {
      v64 = &v32[v139];
    }

    if (v64 < v32)
    {
      goto LABEL_139;
    }

    if (v157 == v64)
    {
      v55 = v157;
LABEL_37:
      if (v55 < v32)
      {
        goto LABEL_135;
      }

      goto LABEL_38;
    }

    v111 = *a3;
    v112 = v10[9];
    v158 = v10[2];
    v113 = v111 + v112 * (v157 - 1);
    v154 = -v112;
    v155 = v111;
    v143 = v32;
    v114 = &v32[-v157];
    v135 = v112;
    v5 = v111 + v157 * v112;
    v116 = v150;
    v115 = v151;
    v152 = v64;
    v147 = v31;
    do
    {
      v136 = v5;
      v137 = v114;
      v140 = v113;
      v117 = v113;
      while (1)
      {
        v118 = v6;
        v119 = v158;
        (v158)(v116, v5, v9);
        v119(v115, v117, v9);
        v120 = sub_22FF6DE9C();
        v121 = v115;
        v162 = v118;
        if (v118)
        {
          v132 = *v159;
          (*v159)(v115, v9);
          v132(v116, v9);
        }

        v122 = v120;
        v123 = *v159;
        (*v159)(v121, v9);
        result = (v123)(v116, v9);
        if ((v122 & 1) == 0)
        {
          break;
        }

        v31 = v147;
        if (!v155)
        {
          goto LABEL_142;
        }

        v124 = *v156;
        v125 = v149;
        v9 = v161;
        (*v156)(v149, v5, v161);
        swift_arrayInitWithTakeFrontToBack();
        v124(v117, v125, v9);
        v117 += v154;
        v5 += v154;
        v126 = __CFADD__(v114++, 1);
        v6 = v162;
        v116 = v150;
        v115 = v151;
        if (v126)
        {
          goto LABEL_100;
        }
      }

      v9 = v161;
      v6 = v162;
      v116 = v150;
      v115 = v151;
      v31 = v147;
LABEL_100:
      v113 = &v140[v135];
      v114 = v137 - 1;
      v5 = v136 + v135;
      v55 = v152;
      ++v157;
    }

    while (v157 != v152);
    a3 = v146;
    v10 = v138;
    v32 = v143;
    if (v152 < v143)
    {
      goto LABEL_135;
    }

LABEL_38:
    result = swift_isUniquelyReferenced_nonNull_native();
    v5 = v6;
    if ((result & 1) == 0)
    {
      result = sub_22FEC2F98(0, *(v31 + 2) + 1, 1, v31);
      v31 = result;
    }

    v66 = *(v31 + 2);
    v65 = *(v31 + 3);
    v67 = v66 + 1;
    if (v66 >= v65 >> 1)
    {
      result = sub_22FEC2F98((v65 > 1), v66 + 1, 1, v31);
      v31 = result;
    }

    *(v31 + 2) = v67;
    v68 = &v31[16 * v66];
    *(v68 + 4) = v32;
    *(v68 + 5) = v55;
    v152 = v55;
    v69 = *v145;
    if (!*v145)
    {
      goto LABEL_145;
    }

    if (v66)
    {
      break;
    }

    v6 = v5;
LABEL_89:
    v29 = a3[1];
    v30 = v152;
    v9 = v161;
    if (v152 >= v29)
    {
      goto LABEL_104;
    }
  }

  v6 = v5;
  while (1)
  {
    v5 = v67 - 1;
    if (v67 >= 4)
    {
      v74 = &v31[16 * v67 + 32];
      v75 = *(v74 - 64);
      v76 = *(v74 - 56);
      v80 = __OFSUB__(v76, v75);
      v77 = v76 - v75;
      if (v80)
      {
        goto LABEL_122;
      }

      v79 = *(v74 - 48);
      v78 = *(v74 - 40);
      v80 = __OFSUB__(v78, v79);
      v72 = v78 - v79;
      v73 = v80;
      if (v80)
      {
        goto LABEL_123;
      }

      v81 = &v31[16 * v67];
      v83 = *v81;
      v82 = *(v81 + 1);
      v80 = __OFSUB__(v82, v83);
      v84 = v82 - v83;
      if (v80)
      {
        goto LABEL_125;
      }

      v80 = __OFADD__(v72, v84);
      v85 = v72 + v84;
      if (v80)
      {
        goto LABEL_128;
      }

      if (v85 >= v77)
      {
        v103 = &v31[16 * v5 + 32];
        v105 = *v103;
        v104 = *(v103 + 1);
        v80 = __OFSUB__(v104, v105);
        v106 = v104 - v105;
        if (v80)
        {
          goto LABEL_134;
        }

        if (v72 < v106)
        {
          v5 = v67 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_58;
    }

    if (v67 == 3)
    {
      v70 = *(v31 + 4);
      v71 = *(v31 + 5);
      v80 = __OFSUB__(v71, v70);
      v72 = v71 - v70;
      v73 = v80;
LABEL_58:
      if (v73)
      {
        goto LABEL_124;
      }

      v86 = &v31[16 * v67];
      v88 = *v86;
      v87 = *(v86 + 1);
      v89 = __OFSUB__(v87, v88);
      v90 = v87 - v88;
      v91 = v89;
      if (v89)
      {
        goto LABEL_127;
      }

      v92 = &v31[16 * v5 + 32];
      v94 = *v92;
      v93 = *(v92 + 1);
      v80 = __OFSUB__(v93, v94);
      v95 = v93 - v94;
      if (v80)
      {
        goto LABEL_130;
      }

      if (__OFADD__(v90, v95))
      {
        goto LABEL_131;
      }

      if (v90 + v95 >= v72)
      {
        if (v72 < v95)
        {
          v5 = v67 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_72;
    }

    v96 = &v31[16 * v67];
    v98 = *v96;
    v97 = *(v96 + 1);
    v80 = __OFSUB__(v97, v98);
    v90 = v97 - v98;
    v91 = v80;
LABEL_72:
    if (v91)
    {
      goto LABEL_126;
    }

    v99 = &v31[16 * v5];
    v101 = *(v99 + 4);
    v100 = *(v99 + 5);
    v80 = __OFSUB__(v100, v101);
    v102 = v100 - v101;
    if (v80)
    {
      goto LABEL_129;
    }

    if (v102 < v90)
    {
      goto LABEL_89;
    }

LABEL_79:
    v107 = v5 - 1;
    if (v5 - 1 >= v67)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_141;
    }

    v108 = *&v31[16 * v107 + 32];
    v109 = *&v31[16 * v5 + 40];
    sub_22FF6F10C(*a3 + v10[9] * v108, *a3 + v10[9] * *&v31[16 * v5 + 32], *a3 + v10[9] * v109, v69);
    if (v6)
    {
    }

    if (v109 < v108)
    {
      goto LABEL_120;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_22FF8FB54(v31);
    }

    if (v107 >= *(v31 + 2))
    {
      goto LABEL_121;
    }

    v110 = &v31[16 * v107];
    *(v110 + 4) = v108;
    *(v110 + 5) = v109;
    v163 = v31;
    result = sub_22FF8FAC8(v5);
    v31 = v163;
    v67 = *(v163 + 2);
    if (v67 <= 1)
    {
      goto LABEL_89;
    }
  }

  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  result = sub_22FF8FB54(v31);
  v31 = result;
LABEL_106:
  v163 = v31;
  v127 = *(v31 + 2);
  if (v127 < 2)
  {
  }

  while (*a3)
  {
    v128 = *&v31[16 * v127];
    v129 = *&v31[16 * v127 + 24];
    sub_22FF6F10C(*a3 + v10[9] * v128, *a3 + v10[9] * *&v31[16 * v127 + 16], *a3 + v10[9] * v129, v5);
    if (v6)
    {
    }

    if (v129 < v128)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_22FF8FB54(v31);
    }

    if (v127 - 2 >= *(v31 + 2))
    {
      goto LABEL_133;
    }

    v130 = &v31[16 * v127];
    *v130 = v128;
    *(v130 + 1) = v129;
    v163 = v31;
    result = sub_22FF8FAC8(v127 - 1);
    v31 = v163;
    v127 = *(v163 + 2);
    if (v127 <= 1)
    {
    }
  }

LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
  return result;
}

uint64_t sub_22FF6F10C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v77 = a3;
  v9 = sub_22FFB0C28();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v62 - v14;
  MEMORY[0x28223BE20](v13);
  result = MEMORY[0x28223BE20](&v62 - v16);
  v20 = &v62 - v19;
  v73 = *(v21 + 72);
  if (!v73)
  {
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v73 == -1)
  {
    goto LABEL_66;
  }

  v22 = v77 - a2;
  if (v77 - a2 == 0x8000000000000000 && v73 == -1)
  {
    goto LABEL_67;
  }

  v23 = (a2 - a1) / v73;
  v80 = a1;
  v79 = a4;
  v75 = v9;
  if (v23 >= v22 / v73)
  {
    v71 = v18;
    v72 = v15;
    v25 = v22 / v73 * v73;
    if (a4 < a2 || a2 + v25 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v37 = a4 + v25;
    if (v25 >= 1)
    {
      v38 = v72;
      v39 = -v73;
      v68 = (v10 + 16);
      v69 = (v10 + 8);
      v40 = v37;
      v74 = a4;
      v65 = a1;
      v66 = -v73;
      do
      {
        v76 = v5;
        v63 = v37;
        v41 = a2;
        v42 = a2 + v39;
        v67 = v42;
        v70 = v41;
        while (1)
        {
          v45 = v77;
          if (v41 <= a1)
          {
            v80 = v41;
            v60 = v63;
LABEL_62:
            v78 = v60;
            goto LABEL_64;
          }

          v64 = v37;
          v73 = v40;
          v46 = v40 + v39;
          v47 = *v68;
          v48 = v75;
          (*v68)(v38, v40 + v39, v75);
          v49 = v42;
          v50 = v39;
          v51 = v71;
          v47(v71, v49, v48);
          v52 = v76;
          v53 = sub_22FF6DE9C();
          v76 = v52;
          if (v52)
          {
            v61 = *v69;
            (*v69)(v51, v48);
            v61(v38, v48);
            v80 = v70;
            v60 = v64;
            goto LABEL_62;
          }

          v54 = v53;
          v77 = v45 + v50;
          v55 = *v69;
          (*v69)(v51, v48);
          v55(v38, v48);
          if (v54)
          {
            break;
          }

          v37 = v46;
          v56 = v65;
          if (v45 < v73 || v77 >= v73)
          {
            swift_arrayInitWithTakeFrontToBack();
            v39 = v66;
            v42 = v67;
            v43 = v74;
          }

          else
          {
            v39 = v66;
            v42 = v67;
            v43 = v74;
            if (v45 != v73)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v40 = v46;
          v44 = v46 > v43;
          v38 = v72;
          a1 = v56;
          v41 = v70;
          if (!v44)
          {
            a2 = v70;
            goto LABEL_63;
          }
        }

        a1 = v65;
        if (v45 < v70 || v77 >= v70)
        {
          a2 = v67;
          swift_arrayInitWithTakeFrontToBack();
          v58 = v74;
          v5 = v76;
          v37 = v64;
          v39 = v66;
        }

        else
        {
          v57 = v45 == v70;
          v39 = v66;
          a2 = v67;
          v58 = v74;
          v5 = v76;
          v37 = v64;
          if (!v57)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v38 = v72;
        v40 = v73;
      }

      while (v73 > v58);
    }

LABEL_63:
    v80 = a2;
    v78 = v37;
  }

  else
  {
    v24 = v23 * v73;
    v72 = result;
    if (a4 < a1 || a1 + v24 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v71 = a4 + v24;
    v78 = a4 + v24;
    if (v24 >= 1 && a2 < v77)
    {
      v27 = *(v10 + 16);
      v70 = v10 + 16;
      v68 = v27;
      v69 = (v10 + 8);
      while (1)
      {
        v28 = a2;
        v29 = a4;
        v30 = v68;
        (v68)(v20, a2, v9);
        v31 = v20;
        v32 = v72;
        v74 = v29;
        (v30)(v72, v29, v9);
        v33 = sub_22FF6DE9C();
        if (v5)
        {
          break;
        }

        v34 = v33;
        v76 = 0;
        v35 = *v69;
        (*v69)(v32, v9);
        v35(v31, v9);
        v20 = v31;
        if (v34)
        {
          v36 = v73;
          a2 = v28 + v73;
          if (a1 < v28 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v28)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a4 = v74;
        }

        else
        {
          v36 = v73;
          a4 = v74 + v73;
          a2 = v28;
          if (a1 < v74 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v74)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v79 = a4;
        }

        a1 += v36;
        v80 = a1;
        v5 = v76;
        if (a4 < v71)
        {
          v9 = v75;
          if (a2 < v77)
          {
            continue;
          }
        }

        goto LABEL_64;
      }

      v59 = *v69;
      (*v69)(v32, v9);
      v59(v31, v9);
    }
  }

LABEL_64:
  sub_22FF8FB68(&v80, &v79, &v78);
  return 1;
}

uint64_t sub_22FF6F7B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3858, &qword_22FFBF070);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22FF6F818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v3 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
  v79 = *(v3 - 8);
  v80 = v3;
  v4 = *(v79 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v75 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v76 = &v70 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF37C0, &unk_22FFB5C60);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v74 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v78 = &v70 - v12;
  v13 = type metadata accessor for Proto_TransparencyProofs(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v73 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v77 = &v70 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2118, &unk_22FFB5C70);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v72 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v70 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v70 - v26;
  v28 = type metadata accessor for TransparencyLogProofs(0);
  v81 = *(v28 - 8);
  v82 = v28;
  v29 = *(v81 + 64);
  MEMORY[0x28223BE20](v28);
  v71 = &v70 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease(0) + 24);
  v32 = a1;
  sub_22FEBF3A4(a1 + v31, v27, &qword_27DAF2118, &unk_22FFB5C70);
  v33 = *(v14 + 48);
  LODWORD(a1) = v33(v27, 1, v13);
  sub_22FEAEA34(v27, &qword_27DAF2118, &unk_22FFB5C70);
  if (a1 == 1)
  {
    v34 = type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease;
    v35 = v32;
  }

  else
  {
    sub_22FEBF3A4(v32 + v31, v25, &qword_27DAF2118, &unk_22FFB5C70);
    v36 = v33(v25, 1, v13);
    v37 = v33;
    v70 = v31;
    if (v36 == 1)
    {
      v38 = v77;
      _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
      (*(v79 + 56))(v38 + *(v13 + 20), 1, 1, v80);
      v39 = v37;
      if (v37(v25, 1, v13) != 1)
      {
        sub_22FEAEA34(v25, &qword_27DAF2118, &unk_22FFB5C70);
      }
    }

    else
    {
      v39 = v33;
      v38 = v77;
      sub_22FF72A5C(v25, v77, type metadata accessor for Proto_TransparencyProofs);
    }

    v40 = v78;
    sub_22FEBF3A4(v38 + *(v13 + 20), v78, &qword_27DAF37C0, &unk_22FFB5C60);
    sub_22FF70D60(v38, type metadata accessor for Proto_TransparencyProofs);
    v41 = *(v79 + 48);
    v42 = v41(v40, 1, v80);
    sub_22FEAEA34(v40, &qword_27DAF37C0, &unk_22FFB5C60);
    if (v42 == 1)
    {
      v34 = type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease;
      v35 = v32;
    }

    else
    {
      v43 = v72;
      sub_22FEBF3A4(v32 + v70, v72, &qword_27DAF2118, &unk_22FFB5C70);
      v44 = v39;
      if (v39(v43, 1, v13) == 1)
      {
        v45 = v73;
        _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
        v46 = v80;
        (*(v79 + 56))(v45 + *(v13 + 20), 1, 1, v80);
        v47 = v44(v43, 1, v13) == 1;
        v48 = v43;
        v49 = v76;
        v50 = v74;
        v51 = v41;
        if (!v47)
        {
          sub_22FEAEA34(v48, &qword_27DAF2118, &unk_22FFB5C70);
        }
      }

      else
      {
        v45 = v73;
        sub_22FF72A5C(v43, v73, type metadata accessor for Proto_TransparencyProofs);
        v49 = v76;
        v46 = v80;
        v50 = v74;
        v51 = v41;
      }

      sub_22FEBF3A4(v45 + *(v13 + 20), v50, &qword_27DAF37C0, &unk_22FFB5C60);
      if (v51(v50, 1, v46) == 1)
      {
        _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
        sub_22FF70D60(v45, type metadata accessor for Proto_TransparencyProofs);
        v52 = *(v46 + 20);
        v53 = type metadata accessor for LogEntry(0);
        (*(*(v53 - 8) + 56))(v49 + v52, 1, 1, v53);
        v54 = *(v46 + 24);
        v55 = type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency(0);
        (*(*(v55 - 8) + 56))(v49 + v54, 1, 1, v55);
        if (v51(v50, 1, v46) != 1)
        {
          sub_22FEAEA34(v50, &qword_27DAF37C0, &unk_22FFB5C60);
        }
      }

      else
      {
        sub_22FF70D60(v45, type metadata accessor for Proto_TransparencyProofs);
        sub_22FF72A5C(v50, v49, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
      }

      v56 = v75;
      _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
      v57 = *(v46 + 20);
      v58 = type metadata accessor for LogEntry(0);
      (*(*(v58 - 8) + 56))(v56 + v57, 1, 1, v58);
      v59 = *(v46 + 24);
      v60 = type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency(0);
      (*(*(v60 - 8) + 56))(v56 + v59, 1, 1, v60);
      LOBYTE(v59) = _s16CloudAttestation07PrivateA35Compute_TransparencyLog_ATLogProofsV2eeoiySbAC_ACtFZ_0(v49, v56);
      sub_22FF70D60(v32, type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease);
      sub_22FF70D60(v56, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
      if ((v59 & 1) == 0)
      {
        v65 = v71;
        sub_22FF72A5C(v49, v71, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
        v66 = v82;
        v67 = *(v82 + 20);
        v68 = sub_22FFB0908();
        (*(*(v68 - 8) + 56))(v65 + v67, 1, 1, v68);
        *(v65 + *(v66 + 24)) = xmmword_22FFB2D00;
        v69 = v83;
        sub_22FF72A5C(v65, v83, type metadata accessor for TransparencyLogProofs);
        v63 = v66;
        v62 = v69;
        v61 = 0;
        return (*(v81 + 56))(v62, v61, 1, v63);
      }

      v34 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs;
      v35 = v49;
    }
  }

  sub_22FF70D60(v35, v34);
  v61 = 1;
  v63 = v82;
  v62 = v83;
  return (*(v81 + 56))(v62, v61, 1, v63);
}

uint64_t TransparencyLogProofs.init(bundle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a2;
  v3 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
  v4 = *(v3 - 8);
  v85 = v3;
  v86 = v4;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v80 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v81 = &v74 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF37C0, &unk_22FFB5C60);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v79 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v84 = &v74 - v13;
  v14 = type metadata accessor for Proto_TransparencyProofs(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v78 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v83 = &v74 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2118, &unk_22FFB5C70);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v77 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v82 = &v74 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v74 - v26;
  v28 = type metadata accessor for TransparencyLogProofs(0);
  v87 = *(v28 - 8);
  v88 = v28;
  v29 = *(v87 + 64);
  MEMORY[0x28223BE20](v28);
  v76 = &v74 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a1;
  v32 = *(a1 + *(type metadata accessor for Proto_AttestationBundle(0) + 20));
  v33 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__transparencyProofs;
  swift_beginAccess();
  sub_22FEBF3A4(v32 + v33, v27, &qword_27DAF2118, &unk_22FFB5C70);
  v34 = *(v15 + 48);
  LODWORD(a1) = v34(v27, 1, v14);
  sub_22FEAEA34(v27, &qword_27DAF2118, &unk_22FFB5C70);
  if (a1 == 1)
  {
    v35 = type metadata accessor for AttestationBundle;
  }

  else
  {
    v75 = v31;
    v38 = v82;
    sub_22FEBF3A4(v32 + v33, v82, &qword_27DAF2118, &unk_22FFB5C70);
    v39 = v34(v38, 1, v14);
    v74 = v34;
    if (v39 == 1)
    {
      v40 = v34;
      v41 = v83;
      _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
      v42 = v85;
      (*(v86 + 56))(v41 + *(v14 + 20), 1, 1, v85);
      if (v40(v38, 1, v14) != 1)
      {
        sub_22FEAEA34(v38, &qword_27DAF2118, &unk_22FFB5C70);
      }
    }

    else
    {
      v41 = v83;
      sub_22FF72A5C(v38, v83, type metadata accessor for Proto_TransparencyProofs);
      v42 = v85;
    }

    v43 = v84;
    sub_22FEBF3A4(v41 + *(v14 + 20), v84, &qword_27DAF37C0, &unk_22FFB5C60);
    sub_22FF70D60(v41, type metadata accessor for Proto_TransparencyProofs);
    v44 = *(v86 + 48);
    v45 = v44(v43, 1, v42);
    sub_22FEAEA34(v43, &qword_27DAF37C0, &unk_22FFB5C60);
    if (v45 == 1)
    {
      v36 = type metadata accessor for AttestationBundle;
      v37 = v75;
      goto LABEL_10;
    }

    v50 = v77;
    sub_22FEBF3A4(v32 + v33, v77, &qword_27DAF2118, &unk_22FFB5C70);
    v51 = v74;
    if (v74(v50, 1, v14) == 1)
    {
      v52 = v78;
      _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
      v53 = v85;
      (*(v86 + 56))(v52 + *(v14 + 20), 1, 1, v85);
      v54 = v14;
      v55 = v51(v50, 1, v14) == 1;
      v56 = v50;
      v31 = v81;
      v57 = v79;
      if (!v55)
      {
        sub_22FEAEA34(v56, &qword_27DAF2118, &unk_22FFB5C70);
      }
    }

    else
    {
      v54 = v14;
      v52 = v78;
      sub_22FF72A5C(v50, v78, type metadata accessor for Proto_TransparencyProofs);
      v31 = v81;
      v53 = v85;
      v57 = v79;
    }

    sub_22FEBF3A4(v52 + *(v54 + 20), v57, &qword_27DAF37C0, &unk_22FFB5C60);
    v58 = v44(v57, 1, v53);
    v59 = v75;
    if (v58 == 1)
    {
      _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
      sub_22FF70D60(v52, type metadata accessor for Proto_TransparencyProofs);
      v60 = *(v53 + 20);
      v61 = type metadata accessor for LogEntry(0);
      (*(*(v61 - 8) + 56))(v31 + v60, 1, 1, v61);
      v62 = *(v53 + 24);
      v63 = type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency(0);
      (*(*(v63 - 8) + 56))(v31 + v62, 1, 1, v63);
      if (v44(v57, 1, v53) != 1)
      {
        sub_22FEAEA34(v57, &qword_27DAF37C0, &unk_22FFB5C60);
      }
    }

    else
    {
      sub_22FF70D60(v52, type metadata accessor for Proto_TransparencyProofs);
      sub_22FF72A5C(v57, v31, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
    }

    v64 = v80;
    _s16CloudAttestation13Proto_CryptexV4SaltVAEycfC_0();
    v65 = *(v53 + 20);
    v66 = type metadata accessor for LogEntry(0);
    (*(*(v66 - 8) + 56))(v64 + v65, 1, 1, v66);
    v67 = *(v53 + 24);
    v68 = type metadata accessor for PrivateCloudCompute_TransparencyLog_LogConsistency(0);
    (*(*(v68 - 8) + 56))(v64 + v67, 1, 1, v68);
    LOBYTE(v67) = _s16CloudAttestation07PrivateA35Compute_TransparencyLog_ATLogProofsV2eeoiySbAC_ACtFZ_0(v31, v64);
    sub_22FF70D60(v64, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
    sub_22FF70D60(v59, type metadata accessor for AttestationBundle);
    if ((v67 & 1) == 0)
    {
      v69 = v76;
      sub_22FF72A5C(v31, v76, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
      v70 = v88;
      v71 = *(v88 + 20);
      v72 = sub_22FFB0908();
      (*(*(v72 - 8) + 56))(v69 + v71, 1, 1, v72);
      *(v69 + *(v70 + 24)) = xmmword_22FFB2D00;
      v73 = v89;
      sub_22FF72A5C(v69, v89, type metadata accessor for TransparencyLogProofs);
      v48 = v70;
      v47 = v73;
      v46 = 0;
      return (*(v87 + 56))(v47, v46, 1, v48);
    }

    v35 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs;
  }

  v36 = v35;
  v37 = v31;
LABEL_10:
  sub_22FF70D60(v37, v36);
  v46 = 1;
  v48 = v88;
  v47 = v89;
  return (*(v87 + 56))(v47, v46, 1, v48);
}

uint64_t TransparencyLogProofs.verify(expiration:)(char *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1510, &qword_22FFB3800);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v18 - v5;
  v7 = sub_22FFB0908();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TransparencyLogProofs(0);
  sub_22FEBF3A4(v1 + *(v12 + 20), v6, &qword_27DAF1510, &qword_22FFB3800);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_22FEAEA34(v6, &qword_27DAF1510, &qword_22FFB3800);
  }

  (*(v8 + 32))(v11, v6, v7);
  if (sub_22FFB0888())
  {
    v18[1] = type metadata accessor for TransparencyLogError(0);
    sub_22FF72AE4(&qword_27DAF21C0, type metadata accessor for TransparencyLogError);
    swift_allocError();
    v15 = v14;
    v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3860, &qword_22FFBF078) + 48);
    v17 = *(v8 + 16);
    v17(v15, v11, v7);
    v17(v15 + v16, a1, v7);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_22FF70D60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22FF70DC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 8);
  v9 = *v3;
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_22FEAA0D4;

  return sub_22FF70E9C(a1, a2, a3, v9, v8);
}

uint64_t sub_22FF70E9C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 40) = a2;
  *(v5 + 48) = a3;
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  *(v5 + 32) = a1;
  return MEMORY[0x2822009F8](sub_22FF70EC4, 0, 0);
}

uint64_t sub_22FF70EC4()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1C58, &qword_22FFB3FC8);
  v3 = swift_allocObject();
  v0[7] = v3;
  *(v3 + 16) = xmmword_22FFB2D10;
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  sub_22FEA5608(v1, v2);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_22FF70FAC;

  return SWTransparencyLog.proveInclusion(of:)(v3);
}

uint64_t sub_22FF70FAC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(v4 + 72) = a1;
  *(v4 + 80) = v1;

  v7 = *(v3 + 56);

  if (v1)
  {
    v8 = sub_22FF71244;
  }

  else
  {
    v8 = sub_22FF710E8;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_22FF710E8()
{
  v1 = v0[9];
  if (*(v1 + 16))
  {
    v2 = v0[4];
    v3 = *(type metadata accessor for TransparencyLogProofs(0) - 8);
    sub_22FF72B2C(v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v2, type metadata accessor for TransparencyLogProofs);
  }

  else
  {
    v5 = v0[9];

    type metadata accessor for TransparencyLogError(0);
    sub_22FF72AE4(&qword_27DAF21C0, type metadata accessor for TransparencyLogError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_22FF7125C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 72) = a2;
  *(v4 + 80) = a3;
  *(v4 + 64) = a1;
  *(v4 + 120) = a4;
  return MEMORY[0x2822009F8](sub_22FF71284, 0, 0);
}

uint64_t sub_22FF71284()
{
  v1 = v0[9];
  v2 = v0[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1C58, &qword_22FFB3FC8);
  inited = swift_initStackObject();
  v0[11] = inited;
  *(inited + 16) = xmmword_22FFB2D10;
  *(inited + 32) = v1;
  *(inited + 40) = v2;
  sub_22FEA5608(v1, v2);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_22FF71368;

  return NopTransparencyLog.proveInclusion(of:)(inited);
}

uint64_t sub_22FF71368(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 96);
  v8 = *v2;
  v3[13] = a1;
  v3[14] = v1;

  if (v1)
  {
    v5 = sub_22FF715EC;
  }

  else
  {
    v6 = v3[11];
    swift_setDeallocating();
    sub_22FF733A0(v6 + 32);
    v5 = sub_22FF71490;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22FF71490()
{
  v1 = v0[13];
  if (*(v1 + 16))
  {
    v2 = v0[8];
    v3 = *(type metadata accessor for TransparencyLogProofs(0) - 8);
    sub_22FF72B2C(v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v2, type metadata accessor for TransparencyLogProofs);
  }

  else
  {
    v5 = v0[13];

    type metadata accessor for TransparencyLogError(0);
    sub_22FF72AE4(&qword_27DAF21C0, type metadata accessor for TransparencyLogError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_22FF715EC()
{
  v1 = v0[11];
  swift_setDeallocating();
  sub_22FF733A0(v1 + 32);
  v2 = v0[14];
  v3 = v0[1];

  return v3();
}

uint64_t TransparencyProver.proveInclusion(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_22FF71684, 0, 0);
}

uint64_t sub_22FF71684()
{
  v12 = v0[6];
  v1 = v0[3];
  v2 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1C58, &qword_22FFB3FC8);
  v3 = swift_allocObject();
  v0[8] = v3;
  *(v3 + 16) = xmmword_22FFB2D10;
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  v4 = *(v12 + 16);
  sub_22FEA5608(v1, v2);
  v11 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  v6[1] = sub_22FF717F4;
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[5];

  return v11(v3, v9, v7);
}

uint64_t sub_22FF717F4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 72);
  v8 = *v2;
  v3[10] = a1;
  v3[11] = v1;

  if (v1)
  {
    v5 = sub_22FF71A6C;
  }

  else
  {
    v6 = v3[8];

    v5 = sub_22FF71910;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22FF71910()
{
  v1 = v0[10];
  if (*(v1 + 16))
  {
    v2 = v0[2];
    v3 = *(type metadata accessor for TransparencyLogProofs(0) - 8);
    sub_22FF72B2C(v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v2, type metadata accessor for TransparencyLogProofs);
  }

  else
  {
    v5 = v0[10];

    type metadata accessor for TransparencyLogError(0);
    sub_22FF72AE4(&qword_27DAF21C0, type metadata accessor for TransparencyLogError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_22FF71A6C()
{
  v1 = v0[8];

  v2 = v0[11];
  v3 = v0[1];

  return v3();
}

uint64_t sub_22FF71AD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_22FEAA538;

  return sub_22FF7125C(a1, a2, a3, v8);
}

uint64_t sub_22FF71BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_22FEAA538;

  return TransparencyProver.proveInclusion(of:)(a1, a2, a3, a4, a5);
}

uint64_t TransparencyLogProofs.hash(into:)()
{
  v1 = sub_22FFB0908();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1510, &qword_22FFB3800);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v14 - v8;
  type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
  sub_22FF72AE4(&qword_27DAF2398, type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs);
  sub_22FFB1438();
  v10 = type metadata accessor for TransparencyLogProofs(0);
  sub_22FEBF3A4(v0 + *(v10 + 20), v9, &qword_27DAF1510, &qword_22FFB3800);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    sub_22FFB1CC8();
  }

  else
  {
    (*(v2 + 32))(v5, v9, v1);
    sub_22FFB1CC8();
    sub_22FF72AE4(&qword_27DAF3868, MEMORY[0x277CC9578]);
    sub_22FFB1438();
    (*(v2 + 8))(v5, v1);
  }

  v11 = (v0 + *(v10 + 24));
  if (v11[1] >> 60 == 15)
  {
    return sub_22FFB1CC8();
  }

  v13 = *v11;
  sub_22FFB1CC8();
  return sub_22FFB07F8();
}

uint64_t TransparencyLogProofs.hashValue.getter()
{
  sub_22FFB1CA8();
  TransparencyLogProofs.hash(into:)();
  return sub_22FFB1CF8();
}

uint64_t sub_22FF71F40()
{
  sub_22FFB1CA8();
  TransparencyLogProofs.hash(into:)();
  return sub_22FFB1CF8();
}

uint64_t sub_22FF71F84()
{
  sub_22FFB1CA8();
  TransparencyLogProofs.hash(into:)();
  return sub_22FFB1CF8();
}

uint64_t sub_22FF71FC4(uint64_t a1)
{
  v2 = sub_22FF72AE4(&qword_27DAF3880, type metadata accessor for TransparencyLogError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22FF72030(uint64_t a1)
{
  v2 = sub_22FF72AE4(&qword_27DAF3880, type metadata accessor for TransparencyLogError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t TransparencyLogError.errorCode.getter()
{
  v1 = type metadata accessor for TransparencyLogError(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FF72B2C(v0, v4, type metadata accessor for TransparencyLogError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 1;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      result = 8;
      break;
    case 2:
      sub_22FF70D60(v4, type metadata accessor for TransparencyLogError);
      result = 9;
      break;
    case 3:
      sub_22FF70D60(v4, type metadata accessor for TransparencyLogError);
      result = 11;
      break;
    case 4:
      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3860, &qword_22FFBF078) + 48);
      v8 = sub_22FFB0908();
      v9 = *(*(v8 - 8) + 8);
      v9(&v4[v7], v8);
      v9(v4, v8);
      result = 13;
      break;
    case 5:
      result = 14;
      break;
    case 6:
      result = 2;
      break;
    case 7:
      result = 3;
      break;
    case 8:
      result = 4;
      break;
    case 9:
      result = 5;
      break;
    case 10:
      result = 6;
      break;
    case 11:
      result = 7;
      break;
    case 12:
      result = 10;
      break;
    case 13:
      result = 12;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t TransparencyLogError.errorUserInfo.getter()
{
  v1 = v0;
  v2 = type metadata accessor for TransparencyLogError(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = (v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22FF72B2C(v1, v5, type metadata accessor for TransparencyLogError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    v16 = *v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1B50, &unk_22FFB3B80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22FFB2D10;
    v23 = *MEMORY[0x277CCA7E8];
    *(inited + 32) = sub_22FFB1498();
    v19 = inited + 32;
    *(inited + 40) = v24;
    swift_getErrorValue();
    v21 = v27[24];
    v22 = v27[25];
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v16 = *v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1B50, &unk_22FFB3B80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22FFB2D10;
    v18 = *MEMORY[0x277CCA7E8];
    *(inited + 32) = sub_22FFB1498();
    v19 = inited + 32;
    *(inited + 40) = v20;
    swift_getErrorValue();
    v21 = v27[10];
    v22 = v27[11];
LABEL_7:
    *(inited + 72) = v22;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
    (*(*(v22 - 8) + 16))(boxed_opaque_existential_1, v21, v22);
    v15 = sub_22FFA6C20(inited);
    swift_setDeallocating();
    sub_22FEAEA34(v19, &qword_27DAF1B58, &qword_22FFC02B0);

    return v15;
  }

  if (EnumCaseMultiPayload)
  {
    v15 = sub_22FFA6C20(MEMORY[0x277D84F90]);
    sub_22FF70D60(v5, type metadata accessor for TransparencyLogError);
  }

  else
  {
    v7 = *v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1B50, &unk_22FFB3B80);
    v8 = swift_initStackObject();
    *(v8 + 16) = xmmword_22FFB2D10;
    v9 = *MEMORY[0x277CCA7E8];
    *(v8 + 32) = sub_22FFB1498();
    *(v8 + 40) = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1ED0, &qword_22FFBF090);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_22FFB45C0;
    v12 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v13 = sub_22FFB1488();
    v14 = [v12 initWithDomain:v13 code:v7 userInfo:0];

    *(v11 + 32) = v14;
    *(v8 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3870, &qword_22FFBF098);
    *(v8 + 48) = v11;
    v15 = sub_22FFA6C20(v8);
    swift_setDeallocating();
    sub_22FEAEA34(v8 + 32, &qword_27DAF1B58, &qword_22FFC02B0);
  }

  return v15;
}

BOOL _s16CloudAttestation21TransparencyLogProofsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FFB0908();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1510, &qword_22FFB3800);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF3888, &unk_22FFBF270);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - v15;
  if ((static PrivateCloudCompute_TransparencyLog_ATLogProofs.== infix(_:_:)(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v17 = type metadata accessor for TransparencyLogProofs(0);
  v18 = a1;
  v19 = a2;
  v36 = v17;
  v37 = v18;
  v20 = *(v17 + 20);
  v21 = *(v13 + 48);
  sub_22FEBF3A4(v18 + v20, v16, &qword_27DAF1510, &qword_22FFB3800);
  v22 = v19 + v20;
  v23 = v19;
  sub_22FEBF3A4(v22, &v16[v21], &qword_27DAF1510, &qword_22FFB3800);
  v24 = *(v5 + 48);
  if (v24(v16, 1, v4) == 1)
  {
    if (v24(&v16[v21], 1, v4) == 1)
    {
      sub_22FEAEA34(v16, &qword_27DAF1510, &qword_22FFB3800);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  sub_22FEBF3A4(v16, v12, &qword_27DAF1510, &qword_22FFB3800);
  if (v24(&v16[v21], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_7:
    sub_22FEAEA34(v16, &qword_27DAF3888, &unk_22FFBF270);
    return 0;
  }

  (*(v5 + 32))(v8, &v16[v21], v4);
  sub_22FF72AE4(&qword_27DAF3890, MEMORY[0x277CC9578]);
  v25 = sub_22FFB1478();
  v26 = *(v5 + 8);
  v26(v8, v4);
  v26(v12, v4);
  v23 = v19;
  sub_22FEAEA34(v16, &qword_27DAF1510, &qword_22FFB3800);
  if ((v25 & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  v27 = *(v36 + 24);
  v28 = v37 + v27;
  v30 = *(v37 + v27);
  v29 = *(v37 + v27 + 8);
  v31 = (v23 + v27);
  v33 = *v31;
  v32 = v31[1];
  if (v29 >> 60 == 15)
  {
    if (v32 >> 60 == 15)
    {
      sub_22FEBF8F0(*v28, *(v28 + 8));
      sub_22FEBF8F0(v33, v32);
      sub_22FEA56EC(v30, v29);
      return 1;
    }

    goto LABEL_13;
  }

  if (v32 >> 60 == 15)
  {
LABEL_13:
    sub_22FEBF8F0(*v28, *(v28 + 8));
    sub_22FEBF8F0(v33, v32);
    sub_22FEA56EC(v30, v29);
    sub_22FEA56EC(v33, v32);
    return 0;
  }

  sub_22FEBF8F0(*v28, *(v28 + 8));
  sub_22FEBF8F0(v33, v32);
  v35 = sub_22FEC3DC8(v30, v29, v33, v32);
  sub_22FEA56EC(v33, v32);
  sub_22FEA56EC(v30, v29);
  return (v35 & 1) != 0;
}

uint64_t sub_22FF72A5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FF72AE4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22FF72B2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t dispatch thunk of TransparencyProver.proveInclusion(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 8);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_22FEAA0D4;

  return v15(a1, a2, a3, a4, a5);
}