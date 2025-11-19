char *sub_214F880A8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42708);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_214F881AC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42680);
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

char *sub_214F882BC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA426B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_214F883C8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA426C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA426C8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_214F884FC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

id static related decl e for ICErrorCode.assertionFailure(_:_:)(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = sub_214F8875C(v4, a1, a2);

  return v5;
}

id sub_214F8875C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = (a1 + 16);
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = *(a1 + 16);
  }

  else
  {
    type metadata accessor for ICError(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41F48);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2150C25D0;
    *(inited + 32) = sub_2150A4AD0();
    *(inited + 40) = v8;
    v9 = a3();
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 48) = v9;
    *(inited + 56) = v10;
    sub_214F301C4(inited);
    swift_setDeallocating();
    sub_214F88894(inited + 32);
    sub_214F888FC();
    sub_2150A35B0();
    swift_beginAccess();
    v11 = *v4;
    *v4 = v14;
    v5 = v14;

    v3 = 0;
  }

  v12 = v3;
  return v5;
}

uint64_t sub_214F88894(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_214F888FC()
{
  result = qword_27CA419D8;
  if (!qword_27CA419D8)
  {
    type metadata accessor for ICError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA419D8);
  }

  return result;
}

uint64_t sub_214F88954@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v25 = a5;
  v26 = a2;
  v28 = a4;
  v27 = a1;
  v24 = *(a3 - 8);
  v10 = (MEMORY[0x28223BE20])();
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v10);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v6);
  v22 = 1;
  if ((*(v15 + 48))(v20, 1, v14) != 1)
  {
    (*(v15 + 32))(v18, v20, v14);
    v27(v18, v12);
    (*(v15 + 8))(v18, v14);
    if (v7)
    {
      return (*(v24 + 32))(v25, v12, a3);
    }

    v22 = 0;
  }

  return (*(*(v28 - 8) + 56))(a6, v22, 1);
}

uint64_t sub_214F88BFC(uint64_t a1)
{
  v2 = sub_214F8A7EC(a1);

  if (*(v2 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CA42768);
    v3 = sub_2150A5EA0();
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
  }

  v8 = v3;
  sub_214F8A93C(v2, 1, &v8);
  if (v1)
  {

    return v2;
  }

  v4 = v8;
  v5 = *(v8 + 16);
  if (!v5)
  {

    return MEMORY[0x277D84F90];
  }

  v2 = sub_214F40D5C(*(v8 + 16), 0);
  v6 = sub_214F420FC(&v8, (v2 + 32), v5, v4);
  result = sub_214F420F4();
  if (v6 == v5)
  {

    return v2;
  }

  __break(1u);
  return result;
}

google::protobuf::io::ZeroCopyOutputStream *Array.init<A, B>(uniquing:by:uniquingKeysWith:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int (*a5)(char *, uint64_t, uint64_t), uint64_t a6, uint64_t a7)
{
  v9 = sub_214F8AC98(a1, a2, a3, a4, a5, a6, a7);

  (*(*(a5 - 1) + 8))(a1, a5);
  return v9;
}

uint64_t Array.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_214F8AE0C(a1, a2, a3);
  v4 = sub_2150A57E0();
  v5 = *(*(v4 - 8) + 8);

  return v5(a1, v4);
}

uint64_t sub_214F88E40(uint64_t a1, uint64_t *a2, unint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42760);
  sub_2150A4FD0();
  swift_getWitnessTable();
  sub_2150A53B0();
  sub_214D6EBB0();
  result = sub_2150A4DE0();
  if (result)
  {
    sub_2150A4F30();
    sub_214F8A798(a3, *a2);
    v9 = *a2;
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
    v11 = v9 & 0xFFFFFFFFFFFFFF8;
    if ((isClassOrObjCExistentialType & 1) == 0)
    {
      v11 = v9;
    }

    return (*(*(a4 - 8) + 24))(v11 + ((*(*(a4 - 8) + 80) + 32) & ~*(*(a4 - 8) + 80)) + *(*(a4 - 8) + 72) * a3, a1, a4);
  }

  return result;
}

void (*Array.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
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
  v10 = *(a3 + 16);
  v11 = sub_2150A57E0();
  v9[3] = v11;
  v12 = *(v11 - 8);
  v9[4] = v12;
  v13 = *(v12 + 64);
  if (v7)
  {
    v9[5] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v9[5] = malloc(*(v12 + 64));
    v14 = malloc(v13);
  }

  v9[6] = v14;
  Array.subscript.getter(v10, v14);
  return sub_214F890D8;
}

void sub_214F890D8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  v5 = (*a1)[3];
  v6 = (*a1)[4];
  v7 = (*a1)[1];
  v8 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[5], v4, v5);
    sub_214F8AE0C(v3, v8, v7);
    v9 = *(v6 + 8);
    v9(v3, v5);
    v9(v4, v5);
  }

  else
  {
    sub_214F8AE0C((*a1)[6], v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

google::protobuf::io::ZeroCopyOutputStream *Array.init<A, B>(uniquing:combine:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_214F8AB08(a1);
  (*(*(a6 - 8) + 8))(a1, a6);
  return v8;
}

uint64_t sub_214F89240@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(*a2 + *MEMORY[0x277D84DE8]);
  v6 = *(swift_getTupleTypeMetadata2() + 48);
  swift_getAtKeyPath();
  return (*(*(v5 - 8) + 16))(a3 + v6, a1, v5);
}

uint64_t sub_214F89314(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a8;
  v9 = v8;
  v60 = a2;
  v61 = a4;
  v59 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v43 = &v42 - v15;
  v46 = a5;
  v44 = *(a5 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v56 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v57 = &v42 - v18;
  v19 = sub_2150A57E0();
  v47 = *(v19 - 8);
  v48 = v19;
  v20 = MEMORY[0x28223BE20](v19);
  v50 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v42 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v55 = *(a3 - 1);
  MEMORY[0x28223BE20](v27);
  v29 = &v42 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a6;
  v62 = swift_getAssociatedTypeWitness();
  v51 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v31 = &v42 - v30;
  v32 = sub_2150A4D70();
  v63 = sub_2150A5D20();
  v58 = sub_2150A5D30();
  sub_2150A5CD0();
  (*(v55 + 2))(v29, v52, a3);
  v61 = v31;
  v55 = a3;
  result = sub_2150A4D60();
  if (v32 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v32)
  {
    v34 = (v54 + 48);
    v35 = (v54 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_2150A5850();
      result = (*v34)(v24, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v59(v24, v57);
      if (v9)
      {
        (*(v51 + 8))(v61, v62);

        (*(v44 + 32))(v45, v57, v46);
        return (*v35)(v24, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v35)(v24, AssociatedTypeWitness);
      sub_2150A5D10();
      if (!--v32)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v36 = v50;
  sub_2150A5850();
  v37 = v36;
  v38 = v54;
  v39 = *(v54 + 48);
  v57 = (v54 + 48);
  v55 = v39;
  if (v39(v36, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v51 + 8))(v61, v62);
    (*(v47 + 8))(v37, v48);
    return v63;
  }

  else
  {
    v54 = *(v38 + 32);
    v40 = (v38 + 8);
    v41 = v43;
    while (1)
    {
      (v54)(v41, v37, AssociatedTypeWitness);
      v59(v41, v56);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v40)(v41, AssociatedTypeWitness);
      sub_2150A5D10();
      sub_2150A5850();
      if (v55(v37, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v40)(v41, AssociatedTypeWitness);
    (*(v51 + 8))(v61, v62);

    return (*(v44 + 32))(v45, v56, v46);
  }
}

uint64_t Array.appendNonNil(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = sub_2150A57E0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v16 - v7;
  v9 = *(v3 - 8);
  v10 = MEMORY[0x28223BE20](v6);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v16 - v13;
  (*(v5 + 16))(v8, a1, v4);
  if ((*(v9 + 48))(v8, 1, v3) == 1)
  {
    return (*(v5 + 8))(v8, v4);
  }

  (*(v9 + 32))(v14, v8, v3);
  (*(v9 + 16))(v12, v14, v3);
  sub_2150A4F90();
  return (*(v9 + 8))(v14, v3);
}

uint64_t Array.insertOptional(_:at:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = sub_2150A57E0();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = *(v4 - 8);
  v11 = MEMORY[0x28223BE20](v7);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v17 - v14;
  (*(v6 + 16))(v9, a1, v5);
  if ((*(v10 + 48))(v9, 1, v4) == 1)
  {
    return (*(v6 + 8))(v9, v5);
  }

  (*(v10 + 32))(v15, v9, v4);
  (*(v10 + 16))(v13, v15, v4);
  sub_2150A4FA0();
  return (*(v10 + 8))(v15, v4);
}

uint64_t Array.prependNonNil(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = sub_2150A57E0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  v9 = *(v3 - 8);
  MEMORY[0x28223BE20](v6);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  if ((*(v9 + 48))(v8, 1, v3) == 1)
  {
    return (*(v5 + 8))(v8, v4);
  }

  (*(v9 + 32))(v11, v8, v3);
  Array.prepend(_:)(v11);
  return (*(v9 + 8))(v11, v3);
}

uint64_t Array.firstIndex(matching:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26[0] = a1;
  v26[1] = a2;
  v6 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v31 = sub_2150A57E0();
  v10 = *(v31 - 8);
  v11 = MEMORY[0x28223BE20](v31);
  v30 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = v26 - v13;
  v33[1] = a3;
  v27 = a4;
  v15 = sub_2150A4FD0();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x216061950](v33, v15, WitnessTable);
  v32 = v33[0];
  sub_2150A5E60();
  sub_2150A5E30();
  v17 = sub_2150A5E50();
  v18 = (v10 + 32);
  v28 = TupleTypeMetadata2 - 8;
  v29 = v17;
  v19 = (v6 + 32);
  v20 = (v6 + 8);
  v21 = v27;
  while (1)
  {
    v22 = v30;
    sub_2150A5E40();
    (*v18)(v14, v22, v31);
    if ((*(*(TupleTypeMetadata2 - 8) + 48))(v14, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v23 = *v14;
    (*v19)(v8, &v14[*(TupleTypeMetadata2 + 48)], v21);
    v24 = (v26[0])(v23, v8);
    (*v20)(v8, v21);
    if (v24)
    {
      goto LABEL_6;
    }
  }

  v23 = 0;
LABEL_6:

  return v23;
}

uint64_t Array.firstSearchingBackwardsIndex(from:matching:)(uint64_t a1, uint64_t (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a1;
  v8 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2150A4F80();
  result = 0;
  if (v11 > v7 && (v7 & 0x8000000000000000) == 0)
  {
    v13 = (v8 + 8);
    while (1)
    {
      sub_2150A4FF0();
      v14 = a2(v10);
      (*v13)(v10, a5);
      if (v14)
      {
        break;
      }

      if (v7-- <= 0)
      {
        return 0;
      }
    }

    return v7;
  }

  return result;
}

uint64_t sub_214F8A490@<X0>(uint64_t a1@<X4>, void (*a2)(void)@<X5>, uint64_t a3@<X8>)
{
  a2();
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    sub_2150A4FF0();
    v6 = 0;
  }

  v7 = *(*(a1 - 8) + 56);

  return v7(a3, v6, 1, a1);
}

uint64_t Array.firstSearchingForwardsIndex(from:matching:)(uint64_t a1, uint64_t (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a1;
  v8 = *(a5 - 8);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v9 < 0)
  {
    return 0;
  }

  v12 = sub_2150A4F80();
  if (v12 <= v7)
  {
    return 0;
  }

  v13 = v12;
  v14 = (v8 + 8);
  while (1)
  {
    sub_2150A4FF0();
    v15 = a2(v11);
    (*v14)(v11, a5);
    if (v15)
    {
      break;
    }

    if (v13 == ++v7)
    {
      return 0;
    }
  }

  return v7;
}

google::protobuf::io::ZeroCopyOutputStream *Array<A>.init<A>(uniquing:uniquingKeysWith:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int (*a5)(char *, uint64_t, uint64_t), uint64_t a6, uint64_t a7)
{
  KeyPath = swift_getKeyPath();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = sub_214F8AC98(a1, KeyPath, a2, a3, a5, AssociatedConformanceWitness, a7);

  (*(*(a5 - 1) + 8))(a1, a5);
  return v14;
}

uint64_t sub_214F8A798(unint64_t a1, uint64_t a2)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v5 = a2;
  }

  if (*(v5 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_214F8A7EC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v14 = MEMORY[0x277D84F90];
  sub_214F86F2C(0, v2, 0);
  if (v2)
  {
    v3 = a1 + 56;
    do
    {
      v9 = *(v3 - 24);
      v10 = *(v3 - 16);
      v11 = *(v3 - 8);

      swift_getAtKeyPath();

      v4 = v11;
      v6 = *(v14 + 16);
      v5 = *(v14 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_214F86F2C((v5 > 1), v6 + 1, 1);
        v4 = v11;
      }

      v3 += 32;
      *(v14 + 16) = v6 + 1;
      v7 = v14 + 48 * v6;
      *(v7 + 32) = v12;
      *(v7 + 40) = v13;
      *(v7 + 48) = v9;
      *(v7 + 56) = v10;
      *(v7 + 64) = v4;
      --v2;
    }

    while (v2);
  }

  return v14;
}

unint64_t sub_214F8A93C(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    v5 = (result + 72);
    do
    {
      v8 = *(v5 - 1);
      v9 = *v5;
      v10 = *(v5 - 3);
      v11 = *(v5 - 2);
      v13 = *(v5 - 5);
      v12 = *(v5 - 4);

      if (!v12)
      {
        break;
      }

      v28 = v3;
      v29 = v10;
      v14 = *a3;
      result = sub_214F30094(v13, v12);
      v16 = v14[2];
      v17 = (v15 & 1) == 0;
      v18 = __OFADD__(v16, v17);
      v19 = v16 + v17;
      if (v18)
      {
        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        result = sub_2150A63E0();
        __break(1u);
        return result;
      }

      v20 = v15;
      if (v14[3] >= v19)
      {
        if ((a2 & 1) == 0)
        {
          v27 = result;
          sub_214FED974();
          result = v27;
        }
      }

      else
      {
        sub_214FEA0C0(v19, a2 & 1);
        result = sub_214F30094(v13, v12);
        if ((v20 & 1) != (v21 & 1))
        {
          goto LABEL_18;
        }
      }

      v22 = *a3;
      if (v20)
      {
        v6 = result;

        v7 = (v22[7] + 32 * v6);
        *v7 = v29;
        v7[1] = v11;
        v7[2] = v8;
        v7[3] = v9;
      }

      else
      {
        v22[(result >> 6) + 8] |= 1 << result;
        v23 = (v22[6] + 16 * result);
        *v23 = v13;
        v23[1] = v12;
        v24 = (v22[7] + 32 * result);
        *v24 = v29;
        v24[1] = v11;
        v24[2] = v8;
        v24[3] = v9;
        v25 = v22[2];
        v18 = __OFADD__(v25, 1);
        v26 = v25 + 1;
        if (v18)
        {
          goto LABEL_17;
        }

        v22[2] = v26;
      }

      v5 += 6;
      a2 = 1;
      --v3;
    }

    while (v28 != 1);
  }

  return result;
}

google::protobuf::io::ZeroCopyOutputStream *sub_214F8AB08(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  (*(v3 + 16))(v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_2150A4970();
  if (!v1)
  {
    google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(result);
    v6 = v5;

    v7[1] = v6;
    sub_2150A4950();
    swift_getWitnessTable();
    return sub_2150A4FE0();
  }

  return result;
}

google::protobuf::io::ZeroCopyOutputStream *sub_214F8AC98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int (*a5)(char *, uint64_t, uint64_t), uint64_t a6, uint64_t a7)
{
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a2;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v18 = sub_214F89314(sub_214F8AEC0, v13, a5, TupleTypeMetadata2, MEMORY[0x277D84A98], a7, MEMORY[0x277D84AC0], v10);
  sub_2150A4FD0();
  swift_getWitnessTable();
  v11 = sub_214F8AB08(&v18);

  return v11;
}

uint64_t sub_214F8AE0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[2] = *(a3 + 16);
  v5[4] = a2;
  sub_2150A57E0();
  return sub_214F88954(sub_214F8AE9C, v5, MEMORY[0x277D84A98], MEMORY[0x277D84F78] + 8, v3, &v6);
}

uint64_t sub_214F8AEE4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_214F8AF20(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_214F8AF68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_214F8AFFC(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  result = sub_214FB6DA0(a3, a4);
  if (!v4)
  {
    if (v9)
    {
      v10 = result;
      v11 = v9;
      if (a2)
      {
        sub_2150A5B20();
        v12 = sub_214FB7B38(a3, a4);
        MEMORY[0x2160617E0](v12);

        MEMORY[0x2160617E0](2570, 0xE200000000000000);
        MEMORY[0x2160617E0](v10, v11);

        MEMORY[0x2160617E0](0x1000000000000016, 0x80000002150E26C0);
        sub_2150A49F0();
        MEMORY[0x2160617E0](91, 0xE100000000000000);
        v14 = sub_2150A6100();
        MEMORY[0x2160617E0](v14);

        sub_2150A49F0();
        MEMORY[0x2160617E0](0, 0xE000000000000000);

        MEMORY[0x2160617E0](1886152040, 0xE400000000000000);
        sub_2150A49F0();
        MEMORY[0x2160617E0](91, 0xE100000000000000);
        v15 = sub_2150A6100();
        MEMORY[0x2160617E0](v15);

        sub_2150A49F0();
        MEMORY[0x2160617E0](0, 0xE000000000000000);

        MEMORY[0x2160617E0](0xD00000000000001ELL, 0x80000002150E26E0);
      }

      else
      {
        v13 = sub_214FB7B38(a3, a4);
        MEMORY[0x2160617E0](v13);

        MEMORY[0x2160617E0](2570, 0xE200000000000000);
        v16 = sub_214FB7EB8();
        MEMORY[0x2160617E0](v16);

        MEMORY[0x2160617E0](2570, 0xE200000000000000);
        MEMORY[0x2160617E0](v10, v11);
      }

      return 0;
    }

    else
    {
      return sub_214FB7B38(a3, a4);
    }
  }

  return result;
}

id RealtimeCollaborationSelectionDocument.State.__allocating_init(identity:fields:)(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v2);
  v5 = sub_2150A39A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA427F0);
  v6 = sub_2150A4910();

  v7 = [v4 initWithIdentity:v5 fields:v6];

  v8 = sub_2150A3A00();
  (*(*(v8 - 8) + 8))(a1, v8);
  return v7;
}

id RealtimeCollaborationSelectionDocument.State.init(identity:fields:)(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_2150A39A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA427F0);
  v6 = sub_2150A4910();

  v10.receiver = v2;
  v10.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v10, sel_initWithIdentity_fields_, v5, v6);

  v8 = sub_2150A3A00();
  (*(*(v8 - 8) + 8))(a1, v8);
  return v7;
}

id RealtimeCollaborationSelectionDocument.State.__allocating_init(iccrCoder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithICCRCoder_];

  return v3;
}

id RealtimeCollaborationSelectionDocument.State.init(iccrCoder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithICCRCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

unint64_t _s11NotesShared38RealtimeCollaborationSelectionDocumentC5StateC12crPropertiesSDySSSo12ICCRDataType_pGvgZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42378);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2150C29C0;
  v1 = NSStringFromSelector(sel_participantIDsToSelectionRegisters);
  v2 = sub_2150A4AD0();
  v4 = v3;

  *(inited + 32) = v2;
  *(inited + 40) = v4;
  *(inited + 48) = [objc_allocWithZone(ICCRDictionary) init];
  v5 = NSStringFromSelector(sel_participantIDsOrder);
  v6 = sub_2150A4AD0();
  v8 = v7;

  *(inited + 56) = v6;
  *(inited + 64) = v8;
  *(inited + 72) = [objc_allocWithZone(ICCROrderedSet) init];
  v9 = sub_214FA5058(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA42380);
  swift_arrayDestroy();
  return v9;
}

id sub_214F8BA5C(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() standardUserDefaults];
  sub_2150A5B20();

  MEMORY[0x2160617E0](a1, a2);
  v5 = sub_2150A4A90();

  v6 = [v4 BOOLForKey_];

  return v6;
}

uint64_t sub_214F8BCEC()
{
  v0 = sub_2150A3F30();
  __swift_allocate_value_buffer(v0, qword_280C23258);
  __swift_project_value_buffer(v0, qword_280C23258);
  return sub_2150A3F20();
}

uint64_t sub_214F8BFC4()
{
  v0 = sub_2150A3F30();
  __swift_allocate_value_buffer(v0, qword_280C23280);
  __swift_project_value_buffer(v0, qword_280C23280);
  return sub_2150A3F20();
}

uint64_t sub_214F8C380()
{
  v0 = sub_2150A3F30();
  __swift_allocate_value_buffer(v0, qword_27CA429F0);
  __swift_project_value_buffer(v0, qword_27CA429F0);
  return sub_2150A3F20();
}

uint64_t sub_214F8C68C()
{
  v0 = sub_2150A3F30();
  __swift_allocate_value_buffer(v0, qword_27CA42AC8);
  __swift_project_value_buffer(v0, qword_27CA42AC8);
  return sub_2150A3F20();
}

uint64_t sub_214F8C820()
{
  v0 = sub_2150A3F30();
  __swift_allocate_value_buffer(v0, qword_27CA42B28);
  __swift_project_value_buffer(v0, qword_27CA42B28);
  return sub_2150A3F20();
}

uint64_t sub_214F8C9D4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42C00);
  __swift_allocate_value_buffer(v0, qword_27CA42B88);
  v1 = __swift_project_value_buffer(v0, qword_27CA42B88);
  if (sub_214F8BA5C(0xD000000000000015, 0x80000002150E46C0))
  {
    if (qword_280C23230 != -1)
    {
      swift_once();
    }

    v2 = sub_2150A3F30();
    v3 = __swift_project_value_buffer(v2, qword_280C23238);
    v10 = *(v2 - 8);
    (*(v10 + 16))(v1, v3, v2);
    v4 = *(v10 + 56);
    v5 = v1;
    v6 = 0;
    v7 = v2;
  }

  else
  {
    v8 = sub_2150A3F30();
    v4 = *(*(v8 - 8) + 56);
    v7 = v8;
    v5 = v1;
    v6 = 1;
  }

  return v4(v5, v6, 1, v7);
}

uint64_t static Logger.verboseRealtimeCollaboration.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CA415F8 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42C00);
  v3 = __swift_project_value_buffer(v2, qword_27CA42B88);

  return sub_214F8CBCC(v3, a1);
}

uint64_t sub_214F8CBCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42C00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static ICQueryType.creationDateRange(from:to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for ICQueryType.DateRange(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2150A3960();
  v10 = *(*(v9 - 8) + 16);
  v10(v8, a1, v9);
  v10(&v8[*(v6 + 20)], a2, v9);
  v11 = swift_allocBox();
  result = sub_214F930F0(v8, v12, type metadata accessor for ICQueryType.DateRange);
  *a3 = v11 | 0x4000000000000000;
  return result;
}

uint64_t static ICQueryType.modificationDateRange(from:to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for ICQueryType.DateRange(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2150A3960();
  v10 = *(*(v9 - 8) + 16);
  v10(v8, a1, v9);
  v10(&v8[*(v6 + 20)], a2, v9);
  v11 = swift_allocBox();
  result = sub_214F930F0(v8, v12, type metadata accessor for ICQueryType.DateRange);
  *a3 = v11 | 0x7000000000000000;
  return result;
}

uint64_t ICQueryType.minimumSupportedVersion.getter()
{
  v1 = *v0;
  result = 7;
  switch((*v0 >> 59) & 0x1E | (*v0 >> 2) & 1)
  {
    case 1uLL:
      result = ICQueryType.minimumSupportedVersion.getter(7);
      if (result <= 7)
      {
        return 7;
      }

      return result;
    case 2uLL:
      v1 &= 0xFFFFFFFFFFFFFFBuLL;
      goto LABEL_5;
    case 3uLL:
    case 8uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0x10uLL:
    case 0x11uLL:
    case 0x12uLL:
    case 0x14uLL:
    case 0x16uLL:
    case 0x17uLL:
      return result;
    case 4uLL:
    case 9uLL:
    case 0xFuLL:
      return 8;
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 0x13uLL:
      return 9;
    case 0x15uLL:
      return 15;
    default:
LABEL_5:
      v3 = *(*(v1 + 16) + 16);
      v4 = MEMORY[0x277D84F90];
      if (v3)
      {
        v24 = MEMORY[0x277D84F90];

        v5 = sub_214F86F4C(0, v3, 0);
        v6 = 32;
        v4 = v24;
        do
        {
          v5 = ICQueryType.minimumSupportedVersion.getter(v5);
          v25 = v4;
          v8 = v4[1].u64[0];
          v7 = v4[1].u64[1];
          if (v8 >= v7 >> 1)
          {
            v9 = v5;
            sub_214F86F4C((v7 > 1), v8 + 1, 1);
            v5 = v9;
            v4 = v25;
          }

          v4[1].i64[0] = v8 + 1;
          v4[2].i64[v8] = v5;
          v6 += 8;
          --v3;
        }

        while (v3);
      }

      v10 = v4[1].u64[0];
      if (!v10)
      {
        v12 = 7;
        goto LABEL_26;
      }

      if (v10 > 3)
      {
        v11 = v10 & 0x7FFFFFFFFFFFFFFCLL;
        v13 = v4 + 3;
        v14 = vdupq_n_s64(7uLL);
        v15 = v10 & 0x7FFFFFFFFFFFFFFCLL;
        v16 = v14;
        do
        {
          v14 = vbslq_s8(vcgtq_s64(v13[-1], v14), v13[-1], v14);
          v16 = vbslq_s8(vcgtq_s64(*v13, v16), *v13, v16);
          v13 += 2;
          v15 -= 4;
        }

        while (v15);
        v17 = vbslq_s8(vcgtq_s64(v14, v16), v14, v16);
        v18 = vextq_s8(v17, v17, 8uLL).u64[0];
        v12 = vbsl_s8(vcgtd_s64(v17.i64[0], v18), *v17.i8, v18);
        if (v10 == v11)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v11 = 0;
        v12 = 7;
      }

      v19 = v10 - v11;
      v20 = &v4[2] + v11;
      do
      {
        v22 = *v20++;
        v21 = v22;
        if (*&v22 > *&v12)
        {
          v12 = v21;
        }

        --v19;
      }

      while (v19);
LABEL_26:
      v23 = v12;

      return v23;
  }
}

uint64_t ICQueryType.allowsDeleted.getter()
{
  v1 = *v0;
  v2 = (*v0 >> 59) & 0x1E | (*v0 >> 2) & 1;
  if (v2)
  {
    if (v2 != 2)
    {
      if (v2 == 10)
      {
        return *((v1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      }

      else
      {
        return 1;
      }
    }

    v1 &= 0xFFFFFFFFFFFFFFBuLL;
  }

  v4 = *(v1 + 16);
  v5 = *(v4 + 16);

  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {

      return 1;
    }

    if (v6 >= *(v4 + 16))
    {
      break;
    }

    v7 = v6 + 1;
    result = ICQueryType.allowsDeleted.getter(result);
    v6 = v7;
    if ((result & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t ICQueryType.canBeEdited.getter(uint64_t a1)
{
  v2 = *v1;
  v3 = (*v1 >> 59) & 0x1E | (*v1 >> 2) & 1;
  if ((v3 - 3) < 0x15)
  {
    return 1;
  }

  if (v3)
  {
    v2 &= 0xFFFFFFFFFFFFFFBuLL;
    if (v3 == 1)
    {
      ICQueryType.canBeEdited.getter(a1);
      return 1;
    }
  }

  v5 = *(v2 + 16);
  v6 = *(v5 + 16);

  if (!v6)
  {
LABEL_10:

    return 1;
  }

  v7 = 0;
  while (v7 < *(v5 + 16))
  {
    v8 = v7 + 1;
    result = ICQueryType.canBeEdited.getter(result);
    v7 = v8;
    if (v6 == v8)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_214F8D43C@<X0>(unsigned __int8 *a1@<X0>, char *a2@<X8>)
{
  v93 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42D58);
  MEMORY[0x28223BE20](v3 - 8);
  v90 = &v86 - v4;
  v96 = sub_2150A3B00();
  v98 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v100 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2150A3AF0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v89 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v101 = &v86 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v86 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v92 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v88 = &v86 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v86 - v19;
  v21 = sub_2150A3960();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v91 = &v86 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v106 = &v86 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v86 = &v86 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v87 = &v86 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v105 = &v86 - v32;
  MEMORY[0x28223BE20](v31);
  v34 = &v86 - v33;
  v35 = type metadata accessor for ICQueryType.RelativeDateRange(0);
  v36 = a1;
  sub_214F5D4A4(&a1[*(v35 + 28)], v20);
  v37 = *(v22 + 48);
  v38 = v37(v20, 1, v21);
  v102 = v21;
  v94 = v22 + 48;
  v95 = v37;
  if (v38 == 1)
  {
    sub_2150A3950();
    v39 = v37(v20, 1, v21);
    v40 = v34;
    if (v39 != 1)
    {
      sub_214F302D4(v20, &qword_27CA41DD0);
    }
  }

  else
  {
    (*(v22 + 32))(v34, v20, v21);
    v40 = v34;
  }

  v41 = *MEMORY[0x277CC9968];
  v103 = v7;
  v42 = *(v7 + 104);
  v42(v13, v41, v6);
  v104 = v40;
  sub_2150A3830();
  v43 = *v36;
  v99 = v13;
  v97 = v22;
  if (v43 > 2)
  {
    v44 = v36;
    v45 = v101;
    if (v43 <= 4)
    {
      if (v43 == 3)
      {
        (*(v103 + 8))(v13, v6);
        v42(v13, v41, v6);
        v46 = 30;
      }

      else
      {
        (*(v103 + 8))(v13, v6);
        v42(v13, *MEMORY[0x277CC9998], v6);
        v46 = 3;
      }

      goto LABEL_18;
    }

    if (v43 == 5)
    {
      (*(v103 + 8))(v13, v6);
      v42(v13, *MEMORY[0x277CC9998], v6);
      v46 = 12;
LABEL_36:
      v50 = v102;
      v54 = v100;
      goto LABEL_37;
    }

    v55 = v44[1];
    if (v55 <= 2)
    {
      if (v44[1])
      {
        if (v55 != 1)
        {
          v56 = MEMORY[0x277CC9940];
LABEL_30:
          v41 = *v56;
        }
      }

      else
      {
        v41 = *MEMORY[0x277CC9980];
      }

      v61 = v90;
      v42(v90, v41, v6);
      v62 = v103;
      (*(v103 + 56))(v61, 0, 1, v6);
      (*(v62 + 8))(v13, v6);
LABEL_32:
      v63 = *(v62 + 32);
      v64 = v89;
      v63(v89, v61, v6);
      v63(v13, v64, v6);
      if (v44[16])
      {
        v46 = 0;
      }

      else
      {
        v46 = *(v44 + 1);
      }

      v45 = v101;
      goto LABEL_36;
    }

    if (v55 == 3)
    {
      v56 = MEMORY[0x277CC9998];
    }

    else
    {
      if (v55 != 4)
      {
        v62 = v103;
        (*(v103 + 56))(v90, 1, 1, v6);
        v61 = v13;
        goto LABEL_32;
      }

      v56 = MEMORY[0x277CC9988];
    }

    goto LABEL_30;
  }

  v45 = v101;
  if (!v43)
  {
    (*(v103 + 8))(v13, v6);
    v42(v13, v41, v6);
    v46 = 0;
    goto LABEL_36;
  }

  if (v43 != 1)
  {
    (*(v103 + 8))(v13, v6);
    v42(v13, v41, v6);
    v46 = 7;
LABEL_18:
    v50 = v102;
    v54 = v100;
    goto LABEL_37;
  }

  v89 = *(v103 + 8);
  (v89)(v13, v6);
  v42(v13, v41, v6);
  v47 = v100;
  sub_2150A3AE0();
  v42(v45, v41, v6);
  v48 = v88;
  sub_2150A3AD0();
  v49 = v96;
  v90 = v6;
  (v89)(v45, v6);
  (*(v98 + 8))(v47, v49);
  v50 = v102;
  if (v95(v48, 1, v102) == 1)
  {
    sub_214F302D4(v48, &qword_27CA41DD0);
    v51 = v105;
    v52 = v105;
    v53 = v97;
  }

  else
  {
    v52 = v86;
    sub_2150A3830();
    v53 = v97;
    v57 = v48;
    v58 = *(v97 + 8);
    v51 = v105;
    v58(v105, v50);
    v58(v57, v50);
  }

  v59 = *(v53 + 32);
  v60 = v87;
  v59(v87, v52, v50);
  v59(v51, v60, v50);
  v46 = 1;
  v54 = v100;
  v45 = v101;
  v6 = v90;
LABEL_37:
  result = sub_2150A3AE0();
  if (__OFSUB__(0, v46))
  {
    __break(1u);
  }

  else
  {
    v66 = v45;
    v67 = v42;
    v68 = v92;
    v69 = v104;
    sub_2150A3AD0();
    v70 = v68;
    (*(v98 + 8))(v54, v96);
    v71 = v95;
    if (v95(v68, 1, v50) == 1)
    {
      v72 = v97;
      (*(v97 + 16))(v106, v69, v50);
      if (v71(v70, 1, v50) != 1)
      {
        sub_214F302D4(v70, &qword_27CA41DD0);
      }
    }

    else
    {
      v72 = v97;
      (*(v97 + 32))(v106, v70, v50);
    }

    v73 = v6;
    v67(v45, *MEMORY[0x277CC9980], v6);
    sub_214F92F04(&qword_27CA42D60, MEMORY[0x277CC99D0]);
    v74 = v99;
    v75 = sub_2150A4A80();
    v76 = *(v103 + 8);
    v76(v66, v73);
    if (v75)
    {
      v76(v74, v73);
      v77 = v102;
      (*(v72 + 8))(v104, v102);
      v78 = *(v72 + 32);
    }

    else
    {
      v79 = v73;
      v80 = v91;
      v81 = v106;
      sub_2150A3810();
      v82 = *(v72 + 8);
      v83 = v102;
      v82(v81, v102);
      v76(v74, v79);
      v77 = v83;
      v82(v104, v83);
      v78 = *(v72 + 32);
      v78(v81, v80, v83);
    }

    v84 = v93;
    v78(v93, v106, v77);
    v85 = type metadata accessor for ICQueryType.DateRange(0);
    return (v78)(&v84[*(v85 + 20)], v105, v77);
  }

  return result;
}

id sub_214F8DFDC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = 0xD000000000000031;
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    v5 = 0x80000002150E5000;
  }

  else
  {
    v5 = 0xE000000000000000;
  }

  sub_2150A5B20();
  MEMORY[0x2160617E0](0xD00000000000007ELL, 0x80000002150E4F50);
  MEMORY[0x2160617E0](v4, v5);

  MEMORY[0x2160617E0](539371040, 0xE400000000000000);
  MEMORY[0x2160617E0](0xD000000000000080, 0x80000002150E4EC0);
  MEMORY[0x2160617E0](0x746E756F63402E29, 0xEC00000030203E20);
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2150C25D0;
  *(inited + 32) = sub_2150A4AD0();
  *(inited + 40) = v7;
  if (a2)
  {

    inited = sub_21505F4D0(1, 2, 1, inited);
    *(inited + 16) = 2;
    *(inited + 48) = a1;
    *(inited + 56) = a2;
  }

  sub_2150680E0(inited);

  v8 = sub_2150A4A90();

  v9 = sub_2150A4EB0();

  v10 = [objc_opt_self() predicateWithFormat:v8 argumentArray:v9];

  return v10;
}

uint64_t sub_214F8E23C(uint64_t result)
{
  if (result == 1)
  {
    sub_2150A5B20();
    MEMORY[0x2160617E0](0x2E7265646C6F66, 0xE700000000000000);
    MEMORY[0x2160617E0](0xD00000000000001CLL, 0x80000002150E4E60);
    MEMORY[0x2160617E0](0x2E7265646C6F66, 0xE700000000000000);
    MEMORY[0x2160617E0](0xD000000000000019, 0x80000002150E4E80);
    MEMORY[0x2160617E0](0x2E7265646C6F66, 0xE700000000000000);
    goto LABEL_7;
  }

  if (!result)
  {
    sub_2150A5B20();
    MEMORY[0x2160617E0](0xD00000000000001CLL, 0x80000002150E4E60);
    MEMORY[0x2160617E0](0xD000000000000019, 0x80000002150E4E80);
LABEL_7:
    MEMORY[0x2160617E0](0xD000000000000014, 0x80000002150E4EA0);
    return 0;
  }

  if (!__OFSUB__(result, 1))
  {
    v1 = sub_2150A4D00();
    MEMORY[0x2160617E0](v1);

    sub_2150A5B20();
    MEMORY[0x2160617E0](0x2E7265646C6F66, 0xE700000000000000);
    MEMORY[0x2160617E0](0xD00000000000001CLL, 0x80000002150E4E60);
    MEMORY[0x2160617E0](0x2E7265646C6F66, 0xE700000000000000);
    MEMORY[0x2160617E0](0xD000000000000019, 0x80000002150E4E80);
    MEMORY[0x2160617E0](0x2E7265646C6F66, 0xE700000000000000);

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_214F8E480@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v6 = a2;
  v7 = a1;
  v9 = *v5;
  v10 = (*v5 >> 59) & 0x1E | (*v5 >> 2) & 1;
  if (v10 > 1)
  {
    if (v10 == 2)
    {
      v24 = *(*((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x10) + 16);
      v25 = MEMORY[0x277D84F90];
      if (v24)
      {
        v31 = a5;
        v36 = MEMORY[0x277D84F90];

        sub_214F86F8C(0, v24, 0);
        v26 = 32;
        v25 = v36;
        do
        {

          sub_214F8E480(&v35, v7, v6, a3, a4);

          v27 = v35;
          v36 = v25;
          v29 = *(v25 + 16);
          v28 = *(v25 + 24);
          if (v29 >= v28 >> 1)
          {
            sub_214F86F8C((v28 > 1), v29 + 1, 1);
            v25 = v36;
          }

          *(v25 + 16) = v29 + 1;
          *(v25 + 8 * v29 + 32) = v27;
          v26 += 8;
          --v24;
          v6 = a2;
          v7 = a1;
        }

        while (v24);

        a5 = v31;
      }

      result = swift_allocObject();
      *(result + 16) = v25;
      v15 = result | 0x1000000000000000;
      goto LABEL_32;
    }

    if (v10 != 22)
    {
      goto LABEL_15;
    }

    v16 = *((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x10) == a1 && *((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x18) == a2;
    if (!v16 && (sub_2150A6270() & 1) == 0)
    {
      goto LABEL_15;
    }

    v17 = swift_allocObject();
    *(v17 + 16) = a3;
    *(v17 + 24) = a4;
    *a5 = v17 | 0xB000000000000000;
  }

  else
  {
    if (v10)
    {
      if (v10 == 1)
      {
        v12 = *((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v13 = swift_allocObject();
        v36 = v12;

        sub_214F8E480((v13 + 16), v7, v6, a3, a4);

        v15 = v13 | 4;
LABEL_32:
        *a5 = v15;
        return result;
      }

LABEL_15:
      *a5 = v9;
    }

    v18 = *(*(v9 + 16) + 16);
    v19 = MEMORY[0x277D84F90];
    if (v18)
    {
      v30 = a5;
      v36 = MEMORY[0x277D84F90];

      sub_214F86F8C(0, v18, 0);
      v20 = 32;
      v19 = v36;
      do
      {

        sub_214F8E480(&v35, v7, v6, a3, a4);

        v21 = v35;
        v36 = v19;
        v23 = *(v19 + 16);
        v22 = *(v19 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_214F86F8C((v22 > 1), v23 + 1, 1);
          v19 = v36;
        }

        *(v19 + 16) = v23 + 1;
        *(v19 + 8 * v23 + 32) = v21;
        v20 += 8;
        --v18;
        v6 = a2;
        v7 = a1;
      }

      while (v18);

      a5 = v30;
    }

    result = swift_allocObject();
    *(result + 16) = v19;
    *a5 = result;
  }

  return result;
}

uint64_t sub_214F8E848@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *v3;
  v8 = (*v3 >> 59) & 0x1E | (*v3 >> 2) & 1;
  if (v8 > 1)
  {
    if (v8 != 2)
    {
      if (v8 == 22)
      {
        result = *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v11 = result == a1 && *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x18) == a2;
        if (v11 || (result = sub_2150A6270(), (result & 1) != 0))
        {
          *a3 = 0xF000000000000007;
          return result;
        }
      }

LABEL_14:
      *a3 = v7;
    }

    v33 = a3;
    v19 = *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    v20 = *(v19 + 16);

    if (v20)
    {
      v31 = MEMORY[0x277D84F90];
      v21 = 0;
      while (v21 < *(v19 + 16))
      {
        v22 = v21 + 1;

        sub_214F8E848(&v34, a1, a2);

        if ((~v34 & 0xF000000000000007) != 0)
        {
          v29 = v34;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_2150600E0(0, *(v31 + 16) + 1, 1, v31);
            v31 = result;
          }

          v24 = *(v31 + 16);
          v23 = *(v31 + 24);
          v25 = v29;
          if (v24 >= v23 >> 1)
          {
            result = sub_2150600E0((v23 > 1), v24 + 1, 1, v31);
            v31 = result;
            v25 = v29;
          }

          *(v31 + 16) = v24 + 1;
          *(v31 + 8 * v24 + 32) = v25;
          if (v20 - 1 == v21)
          {
            goto LABEL_45;
          }

          ++v21;
        }

        else
        {
          result = sub_214F94748(v34);
          ++v21;
          if (v20 == v22)
          {
            goto LABEL_45;
          }
        }
      }

      goto LABEL_47;
    }

    v31 = MEMORY[0x277D84F90];
LABEL_45:
    v27 = swift_allocObject();

    *(v27 + 16) = v31;
    *v33 = v27 | 0x1000000000000000;
  }

  else
  {
    if (v8)
    {
      if (v8 == 1)
      {

        sub_214F8E848(&v34, a1, a2);

        v10 = v34;
        if ((~v34 & 0xF000000000000007) != 0)
        {
          result = swift_allocObject();
          *(result + 16) = v10;
          *a3 = result | 4;
        }

        else
        {
          *a3 = v34;
        }

        return result;
      }

      goto LABEL_14;
    }

    v32 = a3;
    v12 = *(v7 + 16);
    v13 = *(v12 + 16);

    if (v13)
    {
      v30 = MEMORY[0x277D84F90];
      v14 = 0;
      while (v14 < *(v12 + 16))
      {
        v15 = v14 + 1;

        sub_214F8E848(&v34, a1, a2);

        if ((~v34 & 0xF000000000000007) != 0)
        {
          v28 = v34;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_2150600E0(0, *(v30 + 16) + 1, 1, v30);
            v30 = result;
          }

          v17 = *(v30 + 16);
          v16 = *(v30 + 24);
          v18 = v28;
          if (v17 >= v16 >> 1)
          {
            result = sub_2150600E0((v16 > 1), v17 + 1, 1, v30);
            v30 = result;
            v18 = v28;
          }

          *(v30 + 16) = v17 + 1;
          *(v30 + 8 * v17 + 32) = v18;
          if (v13 - 1 == v14)
          {
            goto LABEL_43;
          }

          ++v14;
        }

        else
        {
          result = sub_214F94748(v34);
          ++v14;
          if (v13 == v15)
          {
            goto LABEL_43;
          }
        }
      }

      __break(1u);
LABEL_47:
      __break(1u);
      return result;
    }

    v30 = MEMORY[0x277D84F90];
LABEL_43:
    v26 = swift_allocObject();

    *(v26 + 16) = v30;
    *v32 = v26;
  }

  return result;
}

uint64_t static ICQueryType.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v4 = type metadata accessor for ICQueryType.RelativeDateRange(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v48 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v48 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v48 - v14;
  v16 = type metadata accessor for ICQueryType.DateRange(0);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v48 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v48 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v48 - v26;
  v28 = *a1;
  v29 = *a2;
  switch((v28 >> 59) & 0x1E | (v28 >> 2) & 1)
  {
    case 1uLL:
      if (((v29 >> 59) & 0x1E | (v29 >> 2) & 1) != 1)
      {
        goto LABEL_62;
      }

      v44 = *((v28 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v48 = *((v29 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v49 = v44;

      v32 = static ICQueryType.== infix(_:_:)(&v49, &v48);

      return v32 & 1;
    case 2uLL:
      if (((v29 >> 59) & 0x1E | (v29 >> 2) & 1) != 2)
      {
        goto LABEL_62;
      }

      v39 = *((v28 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v40 = *((v29 & 0xFFFFFFFFFFFFFFBLL) + 0x10);

      LOBYTE(v39) = sub_214F8F840(v39, v40);

      return v39 & 1;
    case 3uLL:
      if (((v29 >> 59) & 0x1E | (v29 >> 2) & 1) == 3)
      {
        goto LABEL_59;
      }

      goto LABEL_62;
    case 4uLL:
      if (((v29 >> 59) & 0x1E | (v29 >> 2) & 1) != 4)
      {
        goto LABEL_62;
      }

      v32 = *((v28 & 0xFFFFFFFFFFFFFFBLL) + 0x10) == *((v29 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      return v32 & 1;
    case 5uLL:
      if (((v29 >> 59) & 0x1E | (v29 >> 2) & 1) == 5)
      {
        goto LABEL_59;
      }

      goto LABEL_62;
    case 6uLL:
      if (((v29 >> 59) & 0x1E | (v29 >> 2) & 1) == 6)
      {
        goto LABEL_59;
      }

      goto LABEL_62;
    case 7uLL:
      if (((v29 >> 59) & 0x1E | (v29 >> 2) & 1) == 7)
      {
        goto LABEL_59;
      }

      goto LABEL_62;
    case 8uLL:
      if (((v29 >> 59) & 0x1E | (v29 >> 2) & 1) != 8)
      {
        goto LABEL_62;
      }

      v45 = swift_projectBox();
      v46 = swift_projectBox();
      sub_214F92AE4(v45, v27, type metadata accessor for ICQueryType.DateRange);
      sub_214F92AE4(v46, v25, type metadata accessor for ICQueryType.DateRange);

      if ((sub_2150A3920() & 1) == 0)
      {
        sub_214F92A84(v25, type metadata accessor for ICQueryType.DateRange);
        sub_214F92A84(v27, type metadata accessor for ICQueryType.DateRange);

        goto LABEL_62;
      }

      v47 = sub_2150A3920();
      sub_214F92A84(v25, type metadata accessor for ICQueryType.DateRange);
      sub_214F92A84(v27, type metadata accessor for ICQueryType.DateRange);

      if ((v47 & 1) == 0)
      {
        goto LABEL_62;
      }

      goto LABEL_54;
    case 9uLL:
      if (((v29 >> 59) & 0x1E | (v29 >> 2) & 1) != 9)
      {
        goto LABEL_62;
      }

      v36 = swift_projectBox();
      v37 = swift_projectBox();
      sub_214F92AE4(v36, v15, type metadata accessor for ICQueryType.RelativeDateRange);
      sub_214F92AE4(v37, v13, type metadata accessor for ICQueryType.RelativeDateRange);

      v32 = _s11NotesShared11ICQueryTypeO17RelativeDateRangeV2eeoiySbAE_AEtFZ_0(v15, v13);
      sub_214F92A84(v13, type metadata accessor for ICQueryType.RelativeDateRange);
      v38 = v15;
      goto LABEL_22;
    case 0xAuLL:
      if (((v29 >> 59) & 0x1E | (v29 >> 2) & 1) == 0xA)
      {
        goto LABEL_59;
      }

      goto LABEL_62;
    case 0xBuLL:
      if (((v29 >> 59) & 0x1E | (v29 >> 2) & 1) == 0xB)
      {
        goto LABEL_52;
      }

      goto LABEL_62;
    case 0xCuLL:
      if (((v29 >> 59) & 0x1E | (v29 >> 2) & 1) == 0xC)
      {
        goto LABEL_59;
      }

      goto LABEL_62;
    case 0xDuLL:
      if (((v29 >> 59) & 0x1E | (v29 >> 2) & 1) == 0xD)
      {
        goto LABEL_52;
      }

      goto LABEL_62;
    case 0xEuLL:
      if (((v29 >> 59) & 0x1E | (v29 >> 2) & 1) != 0xE)
      {
        goto LABEL_62;
      }

      v33 = swift_projectBox();
      v34 = swift_projectBox();
      sub_214F92AE4(v33, v22, type metadata accessor for ICQueryType.DateRange);
      sub_214F92AE4(v34, v19, type metadata accessor for ICQueryType.DateRange);

      if (sub_2150A3920())
      {
        v35 = sub_2150A3920();
        sub_214F92A84(v19, type metadata accessor for ICQueryType.DateRange);
        sub_214F92A84(v22, type metadata accessor for ICQueryType.DateRange);

        if (v35)
        {
LABEL_54:
          v32 = 1;
          return v32 & 1;
        }
      }

      else
      {
        sub_214F92A84(v19, type metadata accessor for ICQueryType.DateRange);
        sub_214F92A84(v22, type metadata accessor for ICQueryType.DateRange);
      }

LABEL_62:
      v32 = 0;
      return v32 & 1;
    case 0xFuLL:
      if (((v29 >> 59) & 0x1E | (v29 >> 2) & 1) != 0xF)
      {
        goto LABEL_62;
      }

      v42 = swift_projectBox();
      v43 = swift_projectBox();
      sub_214F92AE4(v42, v10, type metadata accessor for ICQueryType.RelativeDateRange);
      sub_214F92AE4(v43, v7, type metadata accessor for ICQueryType.RelativeDateRange);

      v32 = _s11NotesShared11ICQueryTypeO17RelativeDateRangeV2eeoiySbAE_AEtFZ_0(v10, v7);
      sub_214F92A84(v7, type metadata accessor for ICQueryType.RelativeDateRange);
      v38 = v10;
LABEL_22:
      sub_214F92A84(v38, type metadata accessor for ICQueryType.RelativeDateRange);

      return v32 & 1;
    case 0x10uLL:
      if (((v29 >> 59) & 0x1E | (v29 >> 2) & 1) == 0x10)
      {
        goto LABEL_59;
      }

      goto LABEL_62;
    case 0x11uLL:
      if (((v29 >> 59) & 0x1E | (v29 >> 2) & 1) == 0x11)
      {
        goto LABEL_59;
      }

      goto LABEL_62;
    case 0x12uLL:
      if (((v29 >> 59) & 0x1E | (v29 >> 2) & 1) == 0x12)
      {
        goto LABEL_59;
      }

      goto LABEL_62;
    case 0x13uLL:
      if (((v29 >> 59) & 0x1E | (v29 >> 2) & 1) == 0x13)
      {
        goto LABEL_52;
      }

      goto LABEL_62;
    case 0x14uLL:
      if (((v29 >> 59) & 0x1E | (v29 >> 2) & 1) == 0x14)
      {
        goto LABEL_59;
      }

      goto LABEL_62;
    case 0x15uLL:
      if (((v29 >> 59) & 0x1E | (v29 >> 2) & 1) == 0x15)
      {
        goto LABEL_52;
      }

      goto LABEL_62;
    case 0x16uLL:
      if (((v29 >> 59) & 0x1E | (v29 >> 2) & 1) != 0x16)
      {
        goto LABEL_62;
      }

LABEL_52:
      if (*((v28 & 0xFFFFFFFFFFFFFFBLL) + 0x10) == *((v29 & 0xFFFFFFFFFFFFFFBLL) + 0x10) && *((v28 & 0xFFFFFFFFFFFFFFBLL) + 0x18) == *((v29 & 0xFFFFFFFFFFFFFFBLL) + 0x18))
      {
        goto LABEL_54;
      }

      return sub_2150A6270();
    case 0x17uLL:
      if (((v29 >> 59) & 0x1E | (v29 >> 2) & 1) != 0x17)
      {
        goto LABEL_62;
      }

LABEL_59:
      v32 = *((v28 & 0xFFFFFFFFFFFFFFBLL) + 0x10) ^ *((v29 & 0xFFFFFFFFFFFFFFBLL) + 0x10) ^ 1;
      return v32 & 1;
    default:
      if ((v29 >> 59) & 0x1E | (v29 >> 2) & 1)
      {
        goto LABEL_62;
      }

      v30 = *(v28 + 16);
      v31 = *(v29 + 16);

      v32 = sub_214F8F840(v30, v31);

      return v32 & 1;
  }
}

uint64_t sub_214F8F59C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2150A3BC0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    v21 = 0;
    return v21 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v21 = 1;
    return v21 & 1;
  }

  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v17 = (v15 - 8);
  v24 = *(v15 + 56);
  v25 = v16;
  while (1)
  {
    v18 = v25;
    result = (v25)(v10, v13, v4);
    if (!v11)
    {
      break;
    }

    v20 = v15;
    v18(v8, v14, v4);
    sub_214F92F04(&qword_27CA42D40, MEMORY[0x277CFB080]);
    v21 = sub_2150A4A80();
    v22 = *v17;
    (*v17)(v8, v4);
    v22(v10, v4);
    if (v21)
    {
      v14 += v24;
      v13 += v24;
      v23 = v11-- == 1;
      v15 = v20;
      if (!v23)
      {
        continue;
      }
    }

    return v21 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_214F8F7B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 4)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_2150A6270() & 1) == 0)
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

uint64_t sub_214F8F840(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v7 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v5 = *v3++;
        v10 = v5;
        v6 = *v4++;
        v9 = v6;

        v7 = static ICQueryType.== infix(_:_:)(&v10, &v9);

        --v2;
      }

      while ((v7 & 1) != 0 && v2);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_214F8F910(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_2150A6270() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_214F8F9A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptViewModelSegment(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v31 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      return 1;
    }

    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_214F92AE4(v13, v10, type metadata accessor for TranscriptViewModelSegment);
      sub_214F92AE4(v14, v7, type metadata accessor for TranscriptViewModelSegment);
      if ((sub_2150A39B0() & 1) == 0)
      {
        break;
      }

      v17 = v4[5];
      v18 = *&v10[v17];
      v19 = *&v10[v17 + 8];
      v20 = &v7[v17];
      v21 = v18 == *v20 && v19 == *(v20 + 1);
      if (!v21 && (sub_2150A6270() & 1) == 0 || *&v10[v4[6]] != *&v7[v4[6]] || *&v10[v4[7]] != *&v7[v4[7]] || *&v10[v4[8]] != *&v7[v4[8]])
      {
        break;
      }

      v22 = v4[9];
      v23 = &v10[v22];
      v24 = *&v10[v22 + 8];
      v25 = &v7[v22];
      v26 = *(v25 + 1);
      if (v24)
      {
        if (!v26 || (*v23 != *v25 || v24 != v26) && (sub_2150A6270() & 1) == 0)
        {
          break;
        }
      }

      else if (v26)
      {
        break;
      }

      v27 = v4[10];
      v28 = v10[v27];
      v29 = v7[v27];
      if (v28 == 2)
      {
        if (v29 != 2)
        {
          break;
        }

        sub_214F92A84(v7, type metadata accessor for TranscriptViewModelSegment);
        sub_214F92A84(v10, type metadata accessor for TranscriptViewModelSegment);
      }

      else
      {
        if (v29 == 2)
        {
          break;
        }

        v30 = v29 ^ v28;
        sub_214F92A84(v7, type metadata accessor for TranscriptViewModelSegment);
        sub_214F92A84(v10, type metadata accessor for TranscriptViewModelSegment);
        if (v30)
        {
          return 0;
        }
      }

      v14 += v15;
      v13 += v15;
      result = 1;
      if (!--v11)
      {
        return result;
      }
    }

    sub_214F92A84(v7, type metadata accessor for TranscriptViewModelSegment);
    sub_214F92A84(v10, type metadata accessor for TranscriptViewModelSegment);
  }

  return 0;
}

uint64_t static ICQueryType.DateRange.== infix(_:_:)()
{
  if ((sub_2150A3920() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for ICQueryType.DateRange(0);

  return sub_2150A3920();
}

uint64_t sub_214F8FD00()
{
  if (*v0)
  {
    return 0x657461446F74;
  }

  else
  {
    return 0x657461446D6F7266;
  }
}

uint64_t sub_214F8FD38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x657461446D6F7266 && a2 == 0xE800000000000000;
  if (v6 || (sub_2150A6270() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x657461446F74 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2150A6270();

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

uint64_t sub_214F8FE10(uint64_t a1)
{
  v2 = sub_214F92EB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214F8FE4C(uint64_t a1)
{
  v2 = sub_214F92EB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ICQueryType.DateRange.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42C18);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214F92EB0();
  sub_2150A65B0();
  v8[15] = 0;
  sub_2150A3960();
  sub_214F92F04(&qword_27CA424A0, MEMORY[0x277CC9578]);
  sub_2150A60A0();
  if (!v1)
  {
    type metadata accessor for ICQueryType.DateRange(0);
    v8[14] = 1;
    sub_2150A60A0();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t ICQueryType.DateRange.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v30 = sub_2150A3960();
  v26 = *(v30 - 8);
  v4 = MEMORY[0x28223BE20](v30);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v27 = &v21 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42C28);
  v9 = *(v8 - 8);
  v28 = v8;
  v29 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - v10;
  v12 = type metadata accessor for ICQueryType.DateRange(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214F92EB0();
  sub_2150A6590();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v22 = v12;
  v23 = v6;
  v24 = v14;
  v15 = v26;
  v32 = 0;
  sub_214F92F04(&qword_27CA424D0, MEMORY[0x277CC9578]);
  v16 = v27;
  v17 = v28;
  sub_2150A5FC0();
  v27 = *(v15 + 32);
  (v27)(v24, v16, v30);
  v31 = 1;
  v18 = v23;
  sub_2150A5FC0();
  (*(v29 + 8))(v11, v17);
  v19 = v24;
  (v27)(&v24[*(v22 + 20)], v18, v30);
  sub_214F92AE4(v19, v25, type metadata accessor for ICQueryType.DateRange);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_214F92A84(v19, type metadata accessor for ICQueryType.DateRange);
}

uint64_t sub_214F90440()
{
  if ((sub_2150A3920() & 1) == 0)
  {
    return 0;
  }

  return sub_2150A3920();
}

NotesShared::ICQueryType::RelativeDateRangeType_optional __swiftcall ICQueryType.RelativeDateRangeType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 7;
  if (rawValue < 7)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

NotesShared::ICQueryType::RelativeDateRangeUnit_optional __swiftcall ICQueryType.RelativeDateRangeUnit.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_214F90648()
{
  v1 = 1701869940;
  v2 = 0x6D416D6F74737563;
  if (*v0 != 2)
  {
    v2 = 0x636E657265666572;
  }

  if (*v0)
  {
    v1 = 0x6E556D6F74737563;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_214F906D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214F93DC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214F906FC(uint64_t a1)
{
  v2 = sub_214F92F4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214F90738(uint64_t a1)
{
  v2 = sub_214F92F4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ICQueryType.RelativeDateRange.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42C30);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214F92F4C();
  sub_2150A65B0();
  v10[15] = *v3;
  v10[14] = 0;
  sub_214F92FA0();
  sub_2150A60A0();
  if (!v2)
  {
    v10[13] = v3[1];
    v10[12] = 1;
    sub_214F92FF4();
    sub_2150A6050();
    v10[11] = 2;
    sub_2150A6040();
    type metadata accessor for ICQueryType.RelativeDateRange(0);
    v10[10] = 3;
    sub_2150A3960();
    sub_214F92F04(&qword_27CA424A0, MEMORY[0x277CC9578]);
    sub_2150A6050();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t ICQueryType.RelativeDateRange.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42C50);
  v7 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v9 = &v18 - v8;
  v10 = type metadata accessor for ICQueryType.RelativeDateRange(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v21 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_214F92F4C();
  sub_2150A6590();
  if (!v2)
  {
    v14 = v6;
    v26 = 0;
    sub_214F93048();
    v15 = v20;
    sub_2150A5FC0();
    *v12 = v27;
    v24 = 1;
    sub_214F9309C();
    sub_2150A5F60();
    v12[1] = v25;
    v23 = 2;
    *(v12 + 1) = sub_2150A5F50();
    v12[16] = v17 & 1;
    sub_2150A3960();
    v22 = 3;
    sub_214F92F04(&qword_27CA424D0, MEMORY[0x277CC9578]);
    sub_2150A5F60();
    (*(v7 + 8))(v9, v15);
    sub_214F71500(v14, &v12[*(v10 + 28)]);
    sub_214F930F0(v12, v19, type metadata accessor for ICQueryType.RelativeDateRange);
  }

  return __swift_destroy_boxed_opaque_existential_0(v21);
}

unint64_t sub_214F90D00(char a1)
{
  result = 6581857;
  switch(a1)
  {
    case 1:
      result = 7630702;
      break;
    case 2:
      result = 29295;
      break;
    case 3:
      result = 0x656D686361747461;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0x73696C6B63656863;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    case 7:
    case 14:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
    case 12:
      result = 0xD000000000000019;
      break;
    case 10:
      result = 0x646574656C6564;
      break;
    case 11:
      result = 0x7265646C6F66;
      break;
    case 13:
      result = 0x6E6F69746E656DLL;
      break;
    case 15:
      result = 0xD000000000000015;
      break;
    case 16:
      result = 0xD00000000000001DLL;
      break;
    case 17:
      result = 0xD000000000000011;
      break;
    case 18:
      result = 0x64656E6E6970;
      break;
    case 19:
      result = 0x646572616873;
      break;
    case 20:
      result = 0xD000000000000011;
      break;
    case 21:
      result = 0x61506D6574737973;
      break;
    case 22:
      result = 6775156;
      break;
    case 23:
      result = 0x646567676174;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_214F90F7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214F93F3C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214F90FB0(uint64_t a1)
{
  v2 = sub_214F93158();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214F90FEC(uint64_t a1)
{
  v2 = sub_214F93158();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ICQueryType.init(from:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v103 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42C68);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v98 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v94 = &v91 - v6;
  v99 = type metadata accessor for ICQueryType.RelativeDateRange(0);
  v96 = *(v99 - 8);
  v7 = MEMORY[0x28223BE20](v99);
  v97 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v93 = &v91 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42C70);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v95 = (&v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v101 = (&v91 - v13);
  v102 = type metadata accessor for ICQueryType.DateRange(0);
  v100 = *(v102 - 8);
  v14 = MEMORY[0x28223BE20](v102);
  v16 = &v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v91 - v17;
  v19 = sub_2150A5C10();
  v104 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42C78);
  v105 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v24 = &v91 - v23;
  v25 = a1[3];
  v106 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_214F93158();
  v26 = v107;
  sub_2150A6590();
  if (v26)
  {
    goto LABEL_5;
  }

  v91 = v16;
  v92 = v18;
  v107 = v21;
  v27 = *(sub_2150A5FD0() + 16);

  if (v27 < 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42C88);
    v108 = 0;
    sub_214F93200(&qword_27CA42C90, sub_214F931AC);
    sub_2150A5F60();
    v35 = v109;
    if (v109)
    {
      (*(v105 + 8))(v24, v22);
      v36 = swift_allocObject();
      *(v36 + 16) = v35;
      goto LABEL_9;
    }

    v108 = 1;
    sub_214F931AC();
    sub_2150A5F60();
    v39 = v109;
    if ((~v109 & 0xF000000000000007) != 0)
    {
      (*(v105 + 8))(v24, v22);
      v43 = swift_allocObject();
      *(v43 + 16) = v39;
      v36 = v43 | 4;
      goto LABEL_9;
    }

    v108 = 2;
    sub_2150A5F60();
    v40 = v109;
    v38 = v103;
    v41 = v105;
    if (v109)
    {
      (*(v105 + 8))(v24, v22);
      v42 = swift_allocObject();
      *(v42 + 16) = v40;
      v36 = v42 | 0x1000000000000000;
    }

    else
    {
      v109 = 3;
      v44 = sub_2150A5F40();
      if (v44 == 2)
      {
        LOBYTE(v109) = 4;
        v45 = sub_2150A5F70();
        if ((v45 & 0x10000) != 0)
        {
          LOBYTE(v109) = 5;
          v50 = sub_2150A5F40();
          if (v50 == 2)
          {
            LOBYTE(v109) = 6;
            v51 = sub_2150A5F40();
            if (v51 != 2)
            {
              (*(v105 + 8))(v24, v22);
              v60 = swift_allocObject();
              *(v60 + 16) = v51 & 1;
              v36 = v60 | 0x3000000000000000;
              goto LABEL_9;
            }

            LOBYTE(v109) = 7;
            v52 = sub_2150A5F40();
            if (v52 == 2)
            {
              LOBYTE(v109) = 8;
              sub_214F92F04(&qword_27CA42CA0, type metadata accessor for ICQueryType.DateRange);
              sub_2150A5F60();
              v53 = *(v100 + 48);
              if (v53(v101, 1, v102) != 1)
              {
                (*(v105 + 8))(v24, v22);
                v61 = v92;
                sub_214F930F0(v101, v92, type metadata accessor for ICQueryType.DateRange);
                v62 = swift_allocBox();
                sub_214F930F0(v61, v63, type metadata accessor for ICQueryType.DateRange);
                v36 = v62 | 0x4000000000000000;
                goto LABEL_9;
              }

              sub_214F302D4(v101, &qword_27CA42C70);
              LOBYTE(v109) = 9;
              sub_214F92F04(&qword_27CA42CA8, type metadata accessor for ICQueryType.RelativeDateRange);
              sub_2150A5F60();
              v54 = *(v96 + 48);
              v96 += 48;
              v101 = v54;
              if ((v54)(v94, 1, v99) != 1)
              {
                (*(v105 + 8))(v24, v22);
                v64 = v93;
                sub_214F930F0(v94, v93, type metadata accessor for ICQueryType.RelativeDateRange);
                v65 = swift_allocBox();
                sub_214F930F0(v64, v66, type metadata accessor for ICQueryType.RelativeDateRange);
                v36 = v65 | 0x4000000000000004;
                goto LABEL_9;
              }

              sub_214F302D4(v94, &qword_27CA42C68);
              LOBYTE(v109) = 10;
              v55 = sub_2150A5F40();
              if (v55 == 2)
              {
                LOBYTE(v109) = 11;
                v100 = sub_2150A5F30();
                v57 = v56;
                if (v56)
                {
                  (*(v105 + 8))(v24, v22);
                  v58 = swift_allocObject();
                  *(v58 + 16) = v100;
                  *(v58 + 24) = v57;
                  v59 = 0x5000000000000004;
                }

                else
                {
                  LOBYTE(v109) = 12;
                  v100 = sub_2150A5F30();
                  v68 = v67;
                  if (v67)
                  {
                    (*(v105 + 8))(v24, v22);
                    v58 = swift_allocObject();
                    *(v58 + 16) = v100;
                    *(v58 + 24) = v68;
                    v59 = 0xA000000000000004;
                  }

                  else
                  {
                    LOBYTE(v109) = 17;
                    v69 = sub_2150A5F40();
                    if (v69 != 2)
                    {
                      (*(v105 + 8))(v24, v22);
                      v74 = swift_allocObject();
                      *(v74 + 16) = v69 & 1;
                      v36 = v74 | 0x8000000000000000;
                      goto LABEL_9;
                    }

                    LOBYTE(v109) = 18;
                    v70 = sub_2150A5F40();
                    if (v70 == 2)
                    {
                      LOBYTE(v109) = 19;
                      v71 = sub_2150A5F40();
                      if (v71 == 2)
                      {
                        LOBYTE(v109) = 20;
                        v100 = sub_2150A5F30();
                        v73 = v72;
                        if (v72)
                        {
                          (*(v105 + 8))(v24, v22);
                          v58 = swift_allocObject();
                          *(v58 + 16) = v100;
                          *(v58 + 24) = v73;
                          v59 = 0x9000000000000004;
                        }

                        else
                        {
                          LOBYTE(v109) = 13;
                          v75 = sub_2150A5F40();
                          if (v75 != 2)
                          {
                            (*(v105 + 8))(v24, v22);
                            v78 = swift_allocObject();
                            *(v78 + 16) = v75 & 1;
                            v36 = v78 | 0x6000000000000000;
                            goto LABEL_9;
                          }

                          LOBYTE(v109) = 14;
                          v100 = sub_2150A5F30();
                          v77 = v76;
                          if (v76)
                          {
                            (*(v105 + 8))(v24, v22);
                            v58 = swift_allocObject();
                            *(v58 + 16) = v100;
                            *(v58 + 24) = v77;
                            v59 = 0x6000000000000004;
                          }

                          else
                          {
                            LOBYTE(v109) = 15;
                            sub_2150A5F60();
                            if (v53(v95, 1, v102) != 1)
                            {
                              (*(v105 + 8))(v24, v22);
                              v83 = v91;
                              sub_214F930F0(v95, v91, type metadata accessor for ICQueryType.DateRange);
                              v84 = swift_allocBox();
                              sub_214F930F0(v83, v85, type metadata accessor for ICQueryType.DateRange);
                              v36 = v84 | 0x7000000000000000;
                              goto LABEL_9;
                            }

                            sub_214F302D4(v95, &qword_27CA42C70);
                            LOBYTE(v109) = 16;
                            sub_2150A5F60();
                            if ((v101)(v98, 1, v99) != 1)
                            {
                              (*(v105 + 8))(v24, v22);
                              v86 = v97;
                              sub_214F930F0(v98, v97, type metadata accessor for ICQueryType.RelativeDateRange);
                              v87 = swift_allocBox();
                              sub_214F930F0(v86, v88, type metadata accessor for ICQueryType.RelativeDateRange);
                              v36 = v87 | 0x7000000000000004;
                              goto LABEL_9;
                            }

                            sub_214F302D4(v98, &qword_27CA42C68);
                            LOBYTE(v109) = 22;
                            v79 = sub_2150A5F30();
                            v81 = v80;
                            if (v80)
                            {
                              v82 = v79;
                              (*(v105 + 8))(v24, v22);
                              v58 = swift_allocObject();
                              *(v58 + 16) = v82;
                              *(v58 + 24) = v81;
                              v59 = 0xB000000000000000;
                            }

                            else
                            {
                              LOBYTE(v109) = 23;
                              v89 = sub_2150A5F40();
                              if (v89 == 2)
                              {
                                LOBYTE(v109) = 21;
                                v90 = sub_2150A5F40();
                                if (v90 == 2)
                                {
                                  goto LABEL_3;
                                }

                                (*(v105 + 8))(v24, v22);
                                v58 = swift_allocObject();
                                *(v58 + 16) = v90 & 1;
                                v59 = 0xA000000000000000;
                              }

                              else
                              {
                                (*(v105 + 8))(v24, v22);
                                v58 = swift_allocObject();
                                *(v58 + 16) = v89 & 1;
                                v59 = 0xB000000000000004;
                              }
                            }
                          }
                        }
                      }

                      else
                      {
                        (*(v105 + 8))(v24, v22);
                        v58 = swift_allocObject();
                        *(v58 + 16) = v71 & 1;
                        v59 = 0x9000000000000000;
                      }
                    }

                    else
                    {
                      (*(v105 + 8))(v24, v22);
                      v58 = swift_allocObject();
                      *(v58 + 16) = v70 & 1;
                      v59 = 0x8000000000000004;
                    }
                  }
                }
              }

              else
              {
                (*(v105 + 8))(v24, v22);
                v58 = swift_allocObject();
                *(v58 + 16) = v55 & 1;
                v59 = 0x5000000000000000;
              }
            }

            else
            {
              (*(v105 + 8))(v24, v22);
              v58 = swift_allocObject();
              *(v58 + 16) = v52 & 1;
              v59 = 0x3000000000000004;
            }
          }

          else
          {
            (*(v105 + 8))(v24, v22);
            v58 = swift_allocObject();
            *(v58 + 16) = v50 & 1;
            v59 = 0x2000000000000004;
          }

          v36 = v58 | v59;
        }

        else
        {
          v46 = v45;
          (*(v105 + 8))(v24, v22);
          v47 = swift_allocObject();
          *(v47 + 16) = v46;
          v36 = v47 | 0x2000000000000000;
        }

LABEL_9:
        v37 = v106;
        v38 = v103;
LABEL_10:
        *v38 = v36;
        v33 = v37;
        return __swift_destroy_boxed_opaque_existential_0(v33);
      }

      v48 = v44;
      (*(v41 + 8))(v24, v22);
      v49 = swift_allocObject();
      *(v49 + 16) = v48 & 1;
      v36 = v49 | 0x1000000000000004;
    }

    v37 = v106;
    goto LABEL_10;
  }

LABEL_3:
  sub_2150A5F20();
  v28 = v107;
  sub_2150A5BF0();
  v29 = sub_2150A5C20();
  swift_allocError();
  v31 = v30;
  v32 = v104;
  (*(v104 + 16))(v30, v28, v19);
  (*(*(v29 - 8) + 104))(v31, *MEMORY[0x277D84168], v29);
  swift_willThrow();
  (*(v32 + 8))(v28, v19);
  (*(v105 + 8))(v24, v22);
LABEL_5:
  v33 = v106;
  return __swift_destroy_boxed_opaque_existential_0(v33);
}

uint64_t ICQueryType.encode(to:)(void *a1)
{
  v2 = v1;
  v36 = type metadata accessor for ICQueryType.RelativeDateRange(0);
  v4 = MEMORY[0x28223BE20](v36);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v34 - v7;
  v35 = type metadata accessor for ICQueryType.DateRange(0);
  v9 = MEMORY[0x28223BE20](v35);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v34 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42CB0);
  v15 = *(v14 - 8);
  v38 = v14;
  v39 = v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v34 - v16;
  v18 = *v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214F93158();
  v37 = v17;
  sub_2150A65B0();
  switch((v18 >> 59) & 0x1E | (v18 >> 2) & 1)
  {
    case 1uLL:
      v41 = *((v18 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v40 = 1;
      sub_214F93278();

      v31 = v37;
      v32 = v38;
      sub_2150A60A0();
      (*(v39 + 8))(v31, v32);

    case 2uLL:
      v41 = *((v18 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v40 = 2;
      goto LABEL_10;
    case 3uLL:
      v19 = 3;
      goto LABEL_29;
    case 4uLL:
      LOBYTE(v41) = 4;
      v22 = v37;
      v21 = v38;
      sub_2150A60B0();
      goto LABEL_30;
    case 5uLL:
      v19 = 5;
      goto LABEL_29;
    case 6uLL:
      v19 = 6;
      goto LABEL_29;
    case 7uLL:
      v19 = 7;
      goto LABEL_29;
    case 8uLL:
      v33 = swift_projectBox();
      sub_214F92AE4(v33, v13, type metadata accessor for ICQueryType.DateRange);
      LOBYTE(v41) = 8;
      sub_214F92F04(&qword_27CA42CC0, type metadata accessor for ICQueryType.DateRange);
      v22 = v37;
      v21 = v38;
      sub_2150A60A0();
      v23 = type metadata accessor for ICQueryType.DateRange;
      v24 = v13;
      goto LABEL_24;
    case 9uLL:
      v26 = swift_projectBox();
      sub_214F92AE4(v26, v8, type metadata accessor for ICQueryType.RelativeDateRange);
      LOBYTE(v41) = 9;
      sub_214F92F04(&qword_27CA42CB8, type metadata accessor for ICQueryType.RelativeDateRange);
      v22 = v37;
      v21 = v38;
      sub_2150A60A0();
      v23 = type metadata accessor for ICQueryType.RelativeDateRange;
      v24 = v8;
      goto LABEL_24;
    case 0xAuLL:
      v19 = 10;
      goto LABEL_29;
    case 0xBuLL:
      v25 = 11;
      goto LABEL_27;
    case 0xCuLL:
      v19 = 13;
      goto LABEL_29;
    case 0xDuLL:
      v25 = 14;
      goto LABEL_27;
    case 0xEuLL:
      v20 = swift_projectBox();
      sub_214F92AE4(v20, v11, type metadata accessor for ICQueryType.DateRange);
      LOBYTE(v41) = 15;
      sub_214F92F04(&qword_27CA42CC0, type metadata accessor for ICQueryType.DateRange);
      v22 = v37;
      v21 = v38;
      sub_2150A60A0();
      v23 = type metadata accessor for ICQueryType.DateRange;
      v24 = v11;
      goto LABEL_24;
    case 0xFuLL:
      v30 = swift_projectBox();
      sub_214F92AE4(v30, v6, type metadata accessor for ICQueryType.RelativeDateRange);
      LOBYTE(v41) = 16;
      sub_214F92F04(&qword_27CA42CB8, type metadata accessor for ICQueryType.RelativeDateRange);
      v22 = v37;
      v21 = v38;
      sub_2150A60A0();
      v23 = type metadata accessor for ICQueryType.RelativeDateRange;
      v24 = v6;
LABEL_24:
      sub_214F92A84(v24, v23);
      goto LABEL_30;
    case 0x10uLL:
      v19 = 17;
      goto LABEL_29;
    case 0x11uLL:
      v19 = 18;
      goto LABEL_29;
    case 0x12uLL:
      v19 = 19;
      goto LABEL_29;
    case 0x13uLL:
      v25 = 20;
      goto LABEL_27;
    case 0x14uLL:
      v19 = 21;
      goto LABEL_29;
    case 0x15uLL:
      v25 = 12;
      goto LABEL_27;
    case 0x16uLL:
      v25 = 22;
LABEL_27:
      LOBYTE(v41) = v25;
      v22 = v37;
      v21 = v38;
      sub_2150A6060();
      goto LABEL_30;
    case 0x17uLL:
      v19 = 23;
LABEL_29:
      LOBYTE(v41) = v19;
      v22 = v37;
      v21 = v38;
      sub_2150A6070();
LABEL_30:
      result = (*(v39 + 8))(v22, v21);
      break;
    default:
      v41 = *(v18 + 16);
      v40 = 0;
LABEL_10:

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42C88);
      sub_214F93200(&qword_27CA42CC8, sub_214F93278);
      v27 = v38;
      v28 = v37;
      sub_2150A60A0();
      (*(v39 + 8))(v28, v27);

      break;
  }

  return result;
}

uint64_t sub_214F92A84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_214F92AE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

BOOL _s11NotesShared11ICQueryTypeO17RelativeDateRangeV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_2150A3960();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42D48);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v25 - v13;
  if (*a1 != *a2)
  {
    return 0;
  }

  v15 = a1[1];
  v16 = a2[1];
  if (v15 == 5)
  {
    if (v16 != 5)
    {
      return 0;
    }
  }

  else if (v15 != v16)
  {
    return 0;
  }

  v17 = a2[16];
  if (a1[16])
  {
    if (!a2[16])
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 1) != *(a2 + 1))
    {
      v17 = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  v18 = v12;
  v19 = *(type metadata accessor for ICQueryType.RelativeDateRange(0) + 28);
  v20 = *(v18 + 48);
  sub_214F5D4A4(&a1[v19], v14);
  sub_214F5D4A4(&a2[v19], &v14[v20]);
  v21 = *(v5 + 48);
  if (v21(v14, 1, v4) != 1)
  {
    sub_214F5D4A4(v14, v10);
    if (v21(&v14[v20], 1, v4) == 1)
    {
      (*(v5 + 8))(v10, v4);
      goto LABEL_17;
    }

    (*(v5 + 32))(v7, &v14[v20], v4);
    sub_214F92F04(&qword_27CA42D50, MEMORY[0x277CC9578]);
    v23 = sub_2150A4A80();
    v24 = *(v5 + 8);
    v24(v7, v4);
    v24(v10, v4);
    sub_214F302D4(v14, &qword_27CA41DD0);
    return (v23 & 1) != 0;
  }

  if (v21(&v14[v20], 1, v4) != 1)
  {
LABEL_17:
    sub_214F302D4(v14, &qword_27CA42D48);
    return 0;
  }

  sub_214F302D4(v14, &qword_27CA41DD0);
  return 1;
}

unint64_t sub_214F92EB0()
{
  result = qword_27CA42C20;
  if (!qword_27CA42C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42C20);
  }

  return result;
}

uint64_t sub_214F92F04(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_214F92F4C()
{
  result = qword_27CA42C38;
  if (!qword_27CA42C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42C38);
  }

  return result;
}

unint64_t sub_214F92FA0()
{
  result = qword_27CA42C40;
  if (!qword_27CA42C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42C40);
  }

  return result;
}

unint64_t sub_214F92FF4()
{
  result = qword_27CA42C48;
  if (!qword_27CA42C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42C48);
  }

  return result;
}

unint64_t sub_214F93048()
{
  result = qword_27CA42C58;
  if (!qword_27CA42C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42C58);
  }

  return result;
}

unint64_t sub_214F9309C()
{
  result = qword_27CA42C60;
  if (!qword_27CA42C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42C60);
  }

  return result;
}

uint64_t sub_214F930F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_214F93158()
{
  result = qword_27CA42C80;
  if (!qword_27CA42C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42C80);
  }

  return result;
}

unint64_t sub_214F931AC()
{
  result = qword_27CA42C98;
  if (!qword_27CA42C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42C98);
  }

  return result;
}

uint64_t sub_214F93200(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA42C88);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_214F93278()
{
  result = qword_27CA42CD0;
  if (!qword_27CA42CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42CD0);
  }

  return result;
}

unint64_t sub_214F932D0()
{
  result = qword_27CA42CD8;
  if (!qword_27CA42CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42CD8);
  }

  return result;
}

unint64_t sub_214F93328()
{
  result = qword_27CA42CE0;
  if (!qword_27CA42CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42CE0);
  }

  return result;
}

uint64_t sub_214F9337C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x69 && *(a1 + 8))
  {
    return (*a1 + 105);
  }

  v3 = ((((*a1 >> 57) & 0x78 | *a1 & 7) >> 2) & 0xFFFFFF9F | (32 * (*a1 & 3))) ^ 0x7F;
  if (v3 >= 0x68)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_214F933D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x68)
  {
    *result = a2 - 105;
    if (a3 >= 0x69)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x69)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 5) & 3 | (4 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_214F93498()
{
  result = sub_2150A3960();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ICQueryType.RelativeDateRangeType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ICQueryType.RelativeDateRangeType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for ICQueryType.RelativeDateRangeUnit(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ICQueryType.RelativeDateRangeUnit(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_214F937CC()
{
  sub_214F93898(319, qword_280C24038);
  if (v0 <= 0x3F)
  {
    sub_214F93898(319, &qword_280C23150);
    if (v1 <= 0x3F)
    {
      sub_214F938E4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_214F93898(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_2150A57E0();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_214F938E4()
{
  if (!qword_280C24858)
  {
    sub_2150A3960();
    v0 = sub_2150A57E0();
    if (!v1)
    {
      atomic_store(v0, &qword_280C24858);
    }
  }
}

uint64_t getEnumTagSinglePayload for ICQueryType.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE9)
  {
    goto LABEL_17;
  }

  if (a2 + 23 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 23) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 23;
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

      return (*a1 | (v4 << 8)) - 23;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 23;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x18;
  v8 = v6 - 24;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ICQueryType.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 23 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 23) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE9)
  {
    v4 = 0;
  }

  if (a2 > 0xE8)
  {
    v5 = ((a2 - 233) >> 8) + 1;
    *result = a2 + 23;
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
    *result = a2 + 23;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_214F93AB0()
{
  result = qword_27CA42CE8;
  if (!qword_27CA42CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42CE8);
  }

  return result;
}

unint64_t sub_214F93B08()
{
  result = qword_27CA42CF0;
  if (!qword_27CA42CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42CF0);
  }

  return result;
}

unint64_t sub_214F93B60()
{
  result = qword_27CA42CF8;
  if (!qword_27CA42CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42CF8);
  }

  return result;
}

unint64_t sub_214F93BB8()
{
  result = qword_27CA42D00;
  if (!qword_27CA42D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42D00);
  }

  return result;
}

unint64_t sub_214F93C10()
{
  result = qword_27CA42D08;
  if (!qword_27CA42D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42D08);
  }

  return result;
}

unint64_t sub_214F93C68()
{
  result = qword_27CA42D10;
  if (!qword_27CA42D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42D10);
  }

  return result;
}

unint64_t sub_214F93CC0()
{
  result = qword_27CA42D18;
  if (!qword_27CA42D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42D18);
  }

  return result;
}

unint64_t sub_214F93D18()
{
  result = qword_27CA42D20;
  if (!qword_27CA42D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42D20);
  }

  return result;
}

unint64_t sub_214F93D70()
{
  result = qword_27CA42D28;
  if (!qword_27CA42D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42D28);
  }

  return result;
}

uint64_t sub_214F93DC4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_2150A6270() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E556D6F74737563 && a2 == 0xEA00000000007469 || (sub_2150A6270() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D416D6F74737563 && a2 == 0xEC000000746E756FLL || (sub_2150A6270() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x636E657265666572 && a2 == 0xED00006574614465)
  {

    return 3;
  }

  else
  {
    v6 = sub_2150A6270();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_214F93F3C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6581857 && a2 == 0xE300000000000000;
  if (v3 || (sub_2150A6270() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7630702 && a2 == 0xE300000000000000 || (sub_2150A6270() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 29295 && a2 == 0xE200000000000000 || (sub_2150A6270() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656D686361747461 && a2 == 0xEA0000000000746ELL || (sub_2150A6270() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002150E4D20 == a2 || (sub_2150A6270() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x73696C6B63656863 && a2 == 0xE900000000000074 || (sub_2150A6270() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002150E4D40 == a2 || (sub_2150A6270() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002150E4D60 == a2 || (sub_2150A6270() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002150E4D80 == a2 || (sub_2150A6270() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000019 && 0x80000002150E4DA0 == a2 || (sub_2150A6270() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x646574656C6564 && a2 == 0xE700000000000000 || (sub_2150A6270() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x7265646C6F66 && a2 == 0xE600000000000000 || (sub_2150A6270() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000019 && 0x80000002150E4DC0 == a2 || (sub_2150A6270() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6E6F69746E656DLL && a2 == 0xE700000000000000 || (sub_2150A6270() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002150E4DE0 == a2 || (sub_2150A6270() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000015 && 0x80000002150E4E00 == a2 || (sub_2150A6270() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000002150E4E20 == a2 || (sub_2150A6270() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002150E1960 == a2 || (sub_2150A6270() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x64656E6E6970 && a2 == 0xE600000000000000 || (sub_2150A6270() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x646572616873 && a2 == 0xE600000000000000 || (sub_2150A6270() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002150E4E40 == a2 || (sub_2150A6270() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x61506D6574737973 && a2 == 0xEB00000000726570 || (sub_2150A6270() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 6775156 && a2 == 0xE300000000000000 || (sub_2150A6270() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0x646567676174 && a2 == 0xE600000000000000)
  {

    return 23;
  }

  else
  {
    v6 = sub_2150A6270();

    if (v6)
    {
      return 23;
    }

    else
    {
      return 24;
    }
  }
}

unint64_t sub_214F946A0()
{
  result = qword_27CA42D30;
  if (!qword_27CA42D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42D30);
  }

  return result;
}

unint64_t sub_214F946F4()
{
  result = qword_27CA42D38;
  if (!qword_27CA42D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42D38);
  }

  return result;
}

uint64_t sub_214F94748(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t ActivityEvent.timeInterval.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_2150A3960();
  MEMORY[0x28223BE20](v4 - 8);
  (*(a2 + 8))(a1, a2);
  return sub_2150A3080();
}

uint64_t sub_214F94900()
{
  v1 = sub_2150A3960();
  MEMORY[0x28223BE20](v1);
  (*(v3 + 16))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v0);
  return sub_2150A3080();
}

uint64_t sub_214F949D0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v48 = MEMORY[0x277D84F90];
  sub_214F86C3C(0, v6, 0);
  result = v48;
  v42 = v5;
  v43 = v4;
  v40 = a1;
  v41 = v6;
  v39 = a2;
  if (v6)
  {
    v8 = (a2 + 32);
    v9 = (a1 + 40);
    v10 = v6;
    while (v4)
    {
      if (!v5)
      {
        goto LABEL_38;
      }

      v45 = v10;
      v46 = result;
      v11 = *v9;
      v44 = *v8;
      v12 = qword_27CA41710;

      if (v12 != -1)
      {
        swift_once();
      }

      v13 = qword_27CA43E50;
      v14 = sub_2150A4A90();
      if ((v11 & 0x1000000000000000) != 0)
      {
        v15 = sub_2150A4C90();
      }

      else
      {
        v15 = sub_2150A4CA0();
      }

      v16 = v15;
      v17 = sub_2150A4A90();
      v18 = [v13 stringByReplacingMatchesInString:v14 options:0 range:0 withTemplate:{v16, v17}];

      sub_2150A4AD0();
      v19 = sub_2150A4BC0();

      if (v19 <= v44)
      {
        v19 = v44;
      }

      result = v46;
      v21 = *(v46 + 16);
      v20 = *(v46 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_214F86C3C((v20 > 1), v21 + 1, 1);
        result = v46;
      }

      --v5;
      *(result + 16) = v21 + 1;
      *(result + 8 * v21 + 32) = v19;
      --v4;
      ++v8;
      v9 += 2;
      v10 = v45 - 1;
      if (v45 == 1)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
  }

  else
  {
LABEL_19:
    v23 = v42;
    v22 = v43;
    if (v43 <= v42)
    {
      return result;
    }

    v24 = v41;
    v25 = (v40 + 16 * v41 + 40);
    while (v24 < v22)
    {
      v26 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        goto LABEL_40;
      }

      if (v23 != v24)
      {
        if (v24 >= v23)
        {
          goto LABEL_41;
        }

        v47 = result;
        v27 = *v25;
        v28 = *(v39 + 32 + 8 * v24);
        v29 = qword_27CA41710;

        if (v29 != -1)
        {
          swift_once();
        }

        v30 = qword_27CA43E50;
        v31 = sub_2150A4A90();
        if ((v27 & 0x1000000000000000) != 0)
        {
          v32 = sub_2150A4C90();
        }

        else
        {
          v32 = sub_2150A4CA0();
        }

        v33 = v32;
        v34 = sub_2150A4A90();
        v35 = [v30 stringByReplacingMatchesInString:v31 options:0 range:0 withTemplate:{v33, v34}];

        sub_2150A4AD0();
        v36 = sub_2150A4BC0();

        if (v36 <= v28)
        {
          v36 = v28;
        }

        result = v47;
        v38 = *(v47 + 16);
        v37 = *(v47 + 24);
        if (v38 >= v37 >> 1)
        {
          sub_214F86C3C((v37 > 1), v38 + 1, 1);
          result = v47;
        }

        *(result + 16) = v38 + 1;
        *(result + 8 * v38 + 32) = v36;
        ++v24;
        v25 += 2;
        v23 = v42;
        v22 = v43;
        if (v26 != v43)
        {
          continue;
        }
      }

      return result;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_214F94DCC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v37 = MEMORY[0x277D84F90];
  result = sub_214F86A20(0, v6, 0);
  v34 = v4;
  v35 = v5;
  v32 = a1;
  v33 = v6;
  v31 = a2;
  if (v6)
  {
    v8 = (a2 + 32);
    v9 = (a1 + 40);
    while (v4)
    {
      if (!v5)
      {
        goto LABEL_22;
      }

      v10 = *(v9 - 1);
      v11 = *v9;
      v12 = *v8;

      v36 = sub_214F97638(v10, v11, v12);
      v14 = v13;

      v16 = *(v37 + 16);
      v15 = *(v37 + 24);
      if (v16 >= v15 >> 1)
      {
        result = sub_214F86A20((v15 > 1), v16 + 1, 1);
      }

      *(v37 + 16) = v16 + 1;
      v17 = v37 + 16 * v16;
      --v5;
      *(v17 + 32) = v36;
      *(v17 + 40) = v14;
      --v4;
      ++v8;
      v9 += 2;
      if (!--v6)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  else
  {
LABEL_11:
    v18 = v35;
    if (v34 <= v35)
    {
      return v37;
    }

    v19 = v33;
    v20 = (v32 + 16 * v33 + 40);
    while (v19 < v34)
    {
      v21 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        goto LABEL_24;
      }

      if (v18 != v19)
      {
        if (v19 >= v18)
        {
          goto LABEL_25;
        }

        v22 = *(v20 - 1);
        v23 = *v20;
        v24 = *(v31 + 32 + 8 * v19);

        v25 = sub_214F97638(v22, v23, v24);
        v27 = v26;

        v29 = *(v37 + 16);
        v28 = *(v37 + 24);
        if (v29 >= v28 >> 1)
        {
          result = sub_214F86A20((v28 > 1), v29 + 1, 1);
        }

        *(v37 + 16) = v29 + 1;
        v30 = v37 + 16 * v29;
        *(v30 + 32) = v25;
        *(v30 + 40) = v27;
        ++v19;
        v20 += 2;
        v18 = v35;
        if (v21 != v34)
        {
          continue;
        }
      }

      return v37;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_214F94FEC(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = *(a1 + 16);
  v75 = *(a2 + 16);
  if (v75 >= v4)
  {
    v5 = *(a1 + 16);
  }

  else
  {
    v5 = *(a2 + 16);
  }

  v80 = MEMORY[0x277D84F90];
  result = sub_214F86A20(0, v5, 0);
  v7 = v80;
  v8 = &unk_2150C4000;
  v74 = v4;
  if (!v5)
  {
LABEL_29:
    if (v4 <= v75)
    {
      return v7;
    }

    v71 = a2 + 32;
    v73 = v3 + 32;
    v69 = v8[167];
    while (1)
    {
      if (v5 >= v4)
      {
        goto LABEL_60;
      }

      v39 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_61;
      }

      if (v5 == v75)
      {
        return v7;
      }

      if (v5 >= v75)
      {
        goto LABEL_62;
      }

      toa = v7;
      v40 = (v73 + 16 * v5);
      v42 = *v40;
      v41 = v40[1];
      v43 = *(v71 + 8 * v5);
      v44 = qword_27CA41710;

      if (v44 != -1)
      {
        swift_once();
      }

      v45 = qword_27CA43E50;
      v46 = sub_2150A4A90();
      if ((v41 & 0x1000000000000000) != 0)
      {
        v47 = sub_2150A4C90();
      }

      else
      {
        v47 = sub_2150A4CA0();
      }

      v48 = v47;
      v49 = sub_2150A4A90();
      v50 = [v45 stringByReplacingMatchesInString:v46 options:0 range:0 withTemplate:{v48, v49}];

      sub_2150A4AD0();
      v51 = sub_2150A4BC0();

      v52 = v43 - v51;
      if (__OFSUB__(v43, v51))
      {
        goto LABEL_63;
      }

      if (v52 >= 1)
      {
        break;
      }

      v57 = String.truncating(to:ignoringAnsi:)(v43, 1);
      countAndFlagsBits = v57._countAndFlagsBits;
      object = v57._object;
LABEL_51:
      v79 = countAndFlagsBits;

      MEMORY[0x2160617E0](32, 0xE100000000000000);

      v7 = toa;
      v66 = *(toa + 16);
      v65 = *(toa + 24);
      if (v66 >= v65 >> 1)
      {
        result = sub_214F86A20((v65 > 1), v66 + 1, 1);
        v7 = toa;
      }

      *(v7 + 16) = v66 + 1;
      v67 = v7 + 16 * v66;
      *(v67 + 32) = v79;
      *(v67 + 40) = object;
      v5 = v39;
      v4 = v74;
      if (v39 == v74)
      {
        return v7;
      }
    }

    v53 = sub_2150A4F50();
    *(v53 + 16) = v52;
    v54 = (v53 + 32);
    if (v52 >= 4)
    {
      v55 = v52 & 0x7FFFFFFFFFFFFFFCLL;
      v54 += 2 * (v52 & 0x7FFFFFFFFFFFFFFCLL);
      v59 = (v53 + 64);
      v60 = v52 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        *(v59 - 2) = v69;
        *(v59 - 1) = v69;
        *v59 = v69;
        v59[1] = v69;
        v59 += 4;
        v60 -= 4;
      }

      while (v60);
      if (v52 == v55)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v55 = 0;
    }

    v61 = v51 + v55 - v43;
    do
    {
      *v54 = 32;
      v54[1] = 0xE100000000000000;
      v54 += 2;
      v32 = __CFADD__(v61++, 1);
    }

    while (!v32);
LABEL_50:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DE0);
    sub_214F43BCC(&qword_280C24540, &qword_27CA41DE0);
    v62 = sub_2150A4A20();
    v64 = v63;

    MEMORY[0x2160617E0](v62, v64);

    countAndFlagsBits = v42;
    object = v41;
    goto LABEL_51;
  }

  v9 = 0;
  v72 = v3 + 32;
  v70 = v5;
  v68 = v3;
  while (v9 != v4)
  {
    if (v9 == v75)
    {
      goto LABEL_58;
    }

    v10 = (v72 + 16 * v9);
    v12 = *v10;
    v11 = v10[1];
    to = *(a2 + 32 + 8 * v9);
    v13 = qword_27CA41710;

    if (v13 != -1)
    {
      swift_once();
    }

    v14 = qword_27CA43E50;
    v15 = sub_2150A4A90();
    v16 = v7;
    if ((v11 & 0x1000000000000000) != 0)
    {
      v17 = sub_2150A4C90();
    }

    else
    {
      v17 = sub_2150A4CA0();
    }

    v18 = v17;
    v19 = sub_2150A4A90();
    v20 = [v14 stringByReplacingMatchesInString:v15 options:0 range:0 withTemplate:{v18, v19}];

    sub_2150A4AD0();
    v21 = sub_2150A4BC0();

    v22 = to - v21;
    if (__OFSUB__(to, v21))
    {
      goto LABEL_59;
    }

    if (v22 >= 1)
    {
      v23 = sub_2150A4F50();
      *(v23 + 16) = v22;
      v24 = (v23 + 32);
      v7 = v16;
      if (v22 < 4)
      {
        v25 = 0;
        goto LABEL_20;
      }

      v25 = v22 & 0x7FFFFFFFFFFFFFFCLL;
      v24 += 2 * (v22 & 0x7FFFFFFFFFFFFFFCLL);
      v29 = (v23 + 64);
      v30 = v22 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        *(v29 - 2) = xmmword_2150C4A70;
        *(v29 - 1) = xmmword_2150C4A70;
        *v29 = xmmword_2150C4A70;
        v29[1] = xmmword_2150C4A70;
        v29 += 4;
        v30 -= 4;
      }

      while (v30);
      if (v22 != v25)
      {
LABEL_20:
        v31 = v21 + v25 - to;
        do
        {
          *v24 = 32;
          v24[1] = 0xE100000000000000;
          v24 += 2;
          v32 = __CFADD__(v31++, 1);
        }

        while (!v32);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DE0);
      sub_214F43BCC(&qword_280C24540, &qword_27CA41DE0);
      v33 = sub_2150A4A20();
      v35 = v34;

      MEMORY[0x2160617E0](v33, v35);

      v26 = v12;
      v28 = v11;
      goto LABEL_24;
    }

    v27 = String.truncating(to:ignoringAnsi:)(to, 1);
    v26 = v27._countAndFlagsBits;
    v28 = v27._object;
    v7 = v16;
LABEL_24:
    v78 = v26;

    MEMORY[0x2160617E0](32, 0xE100000000000000);

    v37 = *(v7 + 16);
    v36 = *(v7 + 24);
    if (v37 >= v36 >> 1)
    {
      result = sub_214F86A20((v36 > 1), v37 + 1, 1);
    }

    ++v9;
    *(v7 + 16) = v37 + 1;
    v38 = v7 + 16 * v37;
    *(v38 + 32) = v78;
    *(v38 + 40) = v28;
    v5 = v70;
    v4 = v74;
    v3 = v68;
    v8 = &unk_2150C4000;
    if (v9 == v70)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
  return result;
}

uint64_t static TableFormat.Formats.defaultArgument.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27CA42D68;
  return result;
}

uint64_t static TableFormat.Formats.defaultArgument.setter(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27CA42D68 = v1;
  return result;
}

NotesShared::TableFormat::Formats_optional __swiftcall TableFormat.Formats.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2150A5EE0();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t TableFormat.Formats.rawValue.getter()
{
  v1 = 0x4E49414C50;
  if (*v0 != 1)
  {
    v1 = 1313821514;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x455454414D524F46;
  }
}

uint64_t sub_214F958CC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x4E49414C50;
  if (v2 != 1)
  {
    v4 = 1313821514;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x455454414D524F46;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE900000000000044;
  }

  v7 = 0xE500000000000000;
  v8 = 0x4E49414C50;
  if (*a2 != 1)
  {
    v8 = 1313821514;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x455454414D524F46;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE900000000000044;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2150A6270();
  }

  return v11 & 1;
}

uint64_t sub_214F959B8()
{
  sub_2150A64B0();
  sub_2150A4BB0();

  return sub_2150A64E0();
}

uint64_t sub_214F95A54()
{
  sub_2150A4BB0();
}

uint64_t sub_214F95ADC()
{
  sub_2150A64B0();
  sub_2150A4BB0();

  return sub_2150A64E0();
}

void sub_214F95B80(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000044;
  v4 = 0xE500000000000000;
  v5 = 0x4E49414C50;
  if (v2 != 1)
  {
    v5 = 1313821514;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x455454414D524F46;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_214F95BE8@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27CA42D68;
  return result;
}

uint64_t sub_214F95C94()
{
  sub_2150A2FE0();
  swift_allocObject();
  result = sub_2150A2FD0();
  qword_27CA42D70 = result;
  return result;
}

uint64_t TableFormat.init<A>(rows:columns:format:maximumColumnWidth:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v27 = *a3;
  v37 = a2;
  v36 = a6;
  v34 = a6;
  KeyPath = swift_getKeyPath();
  sub_2150A5C90();
  v11 = MEMORY[0x277D837D0];
  swift_getTupleTypeMetadata2();
  v12 = sub_2150A4FD0();
  WitnessTable = swift_getWitnessTable();
  v14 = MEMORY[0x277D84A98];
  v16 = sub_214F86288(sub_214F960A4, v33, v12, v11, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v15);

  v37 = a1;
  v31 = a6;
  v32 = a2;
  v17 = sub_2150A4FD0();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44B40);
  v19 = swift_getWitnessTable();
  v21 = sub_214F86288(sub_214F960C4, v30, v17, v18, v14, v19, MEMORY[0x277D84AC0], v20);

  v23 = *(v16 + 16);
  v24 = *(v21 + 16);
  v25 = 32;
  while (v24)
  {
    v26 = *(*(v21 + v25) + 16);
    v25 += 8;
    --v24;
    if (v26 != v23)
    {
      __break(1u);
      break;
    }
  }

  *a7 = v23;
  *(a7 + 8) = v16;
  *(a7 + 16) = v21;
  *(a7 + 24) = v27;
  *(a7 + 32) = a4;
  *(a7 + 40) = a5 & 1;
  return result;
}

{
  v10 = *a3;
  v21[5] = a1;
  v21[2] = a6;
  v21[3] = a2;
  v11 = sub_2150A4FD0();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44B40);
  WitnessTable = swift_getWitnessTable();
  v15 = sub_214F86288(sub_214F962F4, v21, v11, v12, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v14);

  v17 = *(v15 + 16);
  if (v17)
  {
    v18 = *(*(v15 + 32) + 16);
  }

  else
  {
    v18 = 0;
  }

  v19 = 32;
  while (v17)
  {
    v20 = *(*(v15 + v19) + 16);
    v19 += 8;
    --v17;
    if (v20 != v18)
    {
      __break(1u);
      break;
    }
  }

  *a7 = v18;
  *(a7 + 8) = 0;
  *(a7 + 16) = v15;
  *(a7 + 24) = v10;
  *(a7 + 32) = a4;
  *(a7 + 40) = a5 & 1;
  return result;
}

uint64_t sub_214F95EDC()
{

  swift_getAtKeyPath();
}

uint64_t sub_214F95F58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9[5] = a2;
  v9[2] = a3;
  v9[3] = a1;
  sub_2150A5C90();
  swift_getTupleTypeMetadata2();
  v5 = sub_2150A4FD0();
  WitnessTable = swift_getWitnessTable();
  result = sub_214F86288(sub_214F991B8, v9, v5, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v7);
  *a4 = result;
  return result;
}

uint64_t TableFormat.init(labels:rows:format:maximumColumnWidth:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  if (result)
  {
    v6 = *(result + 16);
    v7 = *(a2 + 16);
  }

  else
  {
    v7 = *(a2 + 16);
    if (v7)
    {
      v6 = *(*(a2 + 32) + 16);
    }

    else
    {
      v6 = 0;
    }
  }

  v8 = *a3;
  v9 = 32;
  while (v7)
  {
    v10 = *(*(a2 + v9) + 16);
    v9 += 8;
    --v7;
    if (v10 != v6)
    {
      __break(1u);
      break;
    }
  }

  *a6 = v6;
  *(a6 + 8) = result;
  *(a6 + 16) = a2;
  *(a6 + 24) = v8;
  *(a6 + 32) = a4;
  *(a6 + 40) = a5 & 1;
  return result;
}

uint64_t sub_214F96234@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9[5] = a2;
  v9[2] = a3;
  v9[3] = a1;
  sub_2150A5C90();
  v5 = sub_2150A4FD0();
  WitnessTable = swift_getWitnessTable();
  result = sub_214F86288(sub_214F99184, v9, v5, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v7);
  *a4 = result;
  return result;
}

void TableFormat.description.getter()
{
  if (*(v0 + 24))
  {
    if (*(v0 + 24) == 1)
    {
      sub_214F96B48();
    }

    else
    {
      sub_214F9708C();
    }
  }

  else
  {
    sub_214F963BC();
  }
}

void sub_214F963BC()
{
  v1 = v0[1];
  v2 = v0[2];
  to = v0[4];
  v3 = *(v0 + 40);
  v64 = v1;
  v65 = v2;
  if (v1)
  {
    v4 = *(v1 + 16);
    if (v4)
    {
      v73[0] = MEMORY[0x277D84F90];
      sub_214F86C3C(0, v4, 0);
      v68 = v73[0];
      v5 = (v1 + 40);
      do
      {
        v6 = *v5;
        v7 = qword_27CA41710;
        swift_bridgeObjectRetain_n();
        if (v7 != -1)
        {
          swift_once();
        }

        v8 = qword_27CA43E50;
        v9 = sub_2150A4A90();
        if ((v6 & 0x1000000000000000) != 0)
        {
          v10 = sub_2150A4C90();
        }

        else
        {
          v10 = sub_2150A4CA0();
        }

        v11 = v10;
        v12 = sub_2150A4A90();
        v13 = [v8 stringByReplacingMatchesInString:v9 options:0 range:0 withTemplate:{v11, v12}];

        sub_2150A4AD0();
        v14 = sub_2150A4BC0();
        swift_bridgeObjectRelease_n();

        v15 = v68;
        v73[0] = v68;
        v17 = *(v68 + 16);
        v16 = *(v68 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_214F86C3C((v16 > 1), v17 + 1, 1);
          v15 = v73[0];
        }

        *(v15 + 16) = v17 + 1;
        v68 = v15;
        *(v15 + 8 * v17 + 32) = v14;
        v5 += 2;
        --v4;
      }

      while (v4);
    }

    else
    {
      v68 = MEMORY[0x277D84F90];
      v2 = v0[2];
    }
  }

  else
  {
    v18 = *v0;
    if (*v0 < 0)
    {
LABEL_56:
      __break(1u);
      return;
    }

    if (v18)
    {
      v19 = sub_2150A4F50();
      *(v19 + 16) = v18;
      v68 = v19;
      bzero((v19 + 32), 8 * v18);
    }

    else
    {
      v68 = MEMORY[0x277D84F90];
    }
  }

  v20 = MEMORY[0x277D84F90];
  v21 = *(v2 + 16);
  if (v21)
  {
    v75 = MEMORY[0x277D84F90];
    v66 = v21;
    sub_214F86BFC(0, v21, 0);
    v22 = v66;
    v23 = 0;
    v24 = v75;
    v67 = v2 + 32;
    while (v23 < *(v2 + 16))
    {
      v25 = *(v67 + 8 * v23);
      v26 = *(v25 + 16);
      if (v26)
      {
        v70 = v24;
        v74 = v20;

        sub_214F86A20(0, v26, 0);
        v27 = v74;
        v28 = v25 + 32;
        do
        {
          sub_214F50074(v28, v73);
          countAndFlagsBits = sub_214F98870(v73);
          object = v30;
          if ((v3 & 1) == 0)
          {
            v32 = String.truncating(to:ignoringAnsi:)(to, 1);
            countAndFlagsBits = v32._countAndFlagsBits;

            object = v32._object;
          }

          __swift_destroy_boxed_opaque_existential_0(v73);
          v74 = v27;
          v34 = *(v27 + 16);
          v33 = *(v27 + 24);
          if (v34 >= v33 >> 1)
          {
            sub_214F86A20((v33 > 1), v34 + 1, 1);
            v27 = v74;
          }

          *(v27 + 16) = v34 + 1;
          v35 = v27 + 16 * v34;
          *(v35 + 32) = countAndFlagsBits;
          *(v35 + 40) = object;
          v28 += 32;
          --v26;
        }

        while (v26);

        v24 = v70;
        v2 = v65;
        v22 = v66;
        v20 = MEMORY[0x277D84F90];
      }

      else
      {
        v27 = v20;
      }

      v75 = v24;
      v37 = *(v24 + 16);
      v36 = *(v24 + 24);
      v38 = v37 + 1;
      if (v37 >= v36 >> 1)
      {
        sub_214F86BFC((v36 > 1), v37 + 1, 1);
        v22 = v66;
        v24 = v75;
      }

      ++v23;
      *(v24 + 16) = v38;
      *(v24 + 8 * v37 + 32) = v27;
      if (v23 == v22)
      {
        goto LABEL_35;
      }
    }

LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v38 = *(MEMORY[0x277D84F90] + 16);
  v24 = MEMORY[0x277D84F90];
  if (v38)
  {
LABEL_35:
    v39 = 0;
    v40 = v68;
    do
    {
      if (v39 >= *(v24 + 16))
      {
        __break(1u);
        goto LABEL_55;
      }

      v41 = v39 + 1;
      v42 = *(v24 + 8 * v39 + 32);

      v43 = sub_214F949D0(v42, v40);

      swift_bridgeObjectRelease_n();
      v40 = v43;
      v39 = v41;
    }

    while (v38 != v41);
    if (!v64)
    {
      goto LABEL_46;
    }

LABEL_39:

    v45 = sub_214F94DCC(v44, v43);

    v73[0] = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DE0);
    sub_214F43BCC(&qword_280C24540, &qword_27CA41DE0);
    v46 = sub_2150A4A20();
    v48 = v47;

    v49 = *(v24 + 16);
    if (v49)
    {
      goto LABEL_40;
    }

    goto LABEL_47;
  }

  v24 = MEMORY[0x277D84F90];
  v43 = v68;
  if (v64)
  {
    goto LABEL_39;
  }

LABEL_46:
  v46 = 0;
  v48 = 0xE000000000000000;
  v49 = *(v24 + 16);
  if (v49)
  {
LABEL_40:
    v69 = v46;
    toa = v48;
    v73[0] = v20;
    sub_214F86A20(0, v49, 0);
    v50 = 32;
    v51 = v73[0];
    do
    {

      v53 = sub_214F94FEC(v52, v43);

      v75 = v53;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DE0);
      sub_214F43BCC(&qword_280C24540, &qword_27CA41DE0);
      v54 = sub_2150A4A20();
      v56 = v55;

      v73[0] = v51;
      v58 = *(v51 + 16);
      v57 = *(v51 + 24);
      if (v58 >= v57 >> 1)
      {
        sub_214F86A20((v57 > 1), v58 + 1, 1);
        v51 = v73[0];
      }

      *(v51 + 16) = v58 + 1;
      v59 = v51 + 16 * v58;
      *(v59 + 32) = v54;
      *(v59 + 40) = v56;
      v50 += 8;
      --v49;
    }

    while (v49);

    v48 = toa;
    v46 = v69;
    goto LABEL_48;
  }

LABEL_47:

  v51 = MEMORY[0x277D84F90];
LABEL_48:
  v73[0] = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DE0);
  sub_214F43BCC(&qword_280C24540, &qword_27CA41DE0);
  v60 = sub_2150A4A20();
  v62 = v61;

  v63 = HIBYTE(v48) & 0xF;
  if ((v48 & 0x2000000000000000) == 0)
  {
    v63 = v46 & 0xFFFFFFFFFFFFLL;
  }

  if (v63)
  {
    v73[0] = v46;
    v73[1] = v48;

    MEMORY[0x2160617E0](10, 0xE100000000000000);

    MEMORY[0x2160617E0](v60, v62);
  }
}

uint64_t sub_214F96B48()
{
  v1 = *(v0 + 16);
  v41 = *(v0 + 32);
  v40 = *(v0 + 40);
  if (*(v0 + 8))
  {
    v42[0] = *(v0 + 8);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DE0);
    sub_214F43BCC(&qword_280C24540, &qword_27CA41DE0);
    v33 = sub_2150A4A20();
    v34 = v2;
  }

  else
  {
    v33 = 0;
    v34 = 0xE000000000000000;
  }

  v3 = *(v1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (!v3)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_25:
    v42[0] = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DE0);
    sub_214F43BCC(&qword_280C24540, &qword_27CA41DE0);
    v30 = sub_2150A4A20();
    v32 = v31;

    v42[0] = v33;
    v42[1] = v34;

    MEMORY[0x2160617E0](10, 0xE100000000000000);

    MEMORY[0x2160617E0](v30, v32);

    return v42[0];
  }

  v44 = MEMORY[0x277D84F90];
  result = sub_214F86A20(0, v3, 0);
  v6 = 0;
  v7 = v44;
  v36 = v3;
  v37 = v1 + 32;
  v35 = v1;
  while (1)
  {
    if (v6 >= *(v1 + 16))
    {
      goto LABEL_27;
    }

    v39 = v6;
    v8 = *(v37 + 8 * v6);
    v9 = *(v8 + 16);
    if (v9)
    {
      break;
    }

    v10 = v4;
LABEL_20:
    v42[0] = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DE0);
    sub_214F43BCC(&qword_280C24540, &qword_27CA41DE0);
    v24 = sub_2150A4A20();
    v26 = v25;

    v44 = v7;
    v28 = *(v7 + 16);
    v27 = *(v7 + 24);
    if (v28 >= v27 >> 1)
    {
      result = sub_214F86A20((v27 > 1), v28 + 1, 1);
      v7 = v44;
    }

    v6 = v39 + 1;
    *(v7 + 16) = v28 + 1;
    v29 = v7 + 16 * v28;
    *(v29 + 32) = v24;
    *(v29 + 40) = v26;
    if (v39 + 1 == v36)
    {
      goto LABEL_25;
    }
  }

  v38 = v7;
  v43 = v4;

  sub_214F86A20(0, v9, 0);
  v10 = v43;
  v11 = v8 + 32;
  v12 = v41;
  v13 = v40;
  while (1)
  {
    sub_214F50074(v11, v42);
    v14 = sub_214F98870(v42);
    v16 = v15;
    if ((v13 & 1) == 0)
    {
      if (v12 < 1)
      {

        v14 = 0;
        v16 = 0xE000000000000000;
        goto LABEL_15;
      }

      if (v12 < sub_2150A4BC0())
      {
        break;
      }
    }

LABEL_15:
    __swift_destroy_boxed_opaque_existential_0(v42);
    v43 = v10;
    v22 = *(v10 + 16);
    v21 = *(v10 + 24);
    if (v22 >= v21 >> 1)
    {
      sub_214F86A20((v21 > 1), v22 + 1, 1);
      v10 = v43;
    }

    *(v10 + 16) = v22 + 1;
    v23 = v10 + 16 * v22;
    *(v23 + 32) = v14;
    *(v23 + 40) = v16;
    v11 += 32;
    if (!--v9)
    {
      v1 = v35;
      v7 = v38;
      v4 = MEMORY[0x277D84F90];
      goto LABEL_20;
    }
  }

  sub_2150A4BF0();
  sub_2150A4D40();

  v17 = [objc_opt_self() ic_ellipsisCharacterString];
  sub_2150A4AD0();

  v18 = sub_2150A4BC0();
  v19 = sub_2150A5830();
  v20 = __OFADD__(v18, v19);
  result = v18 + v19;
  if (!v20)
  {
    MEMORY[0x216061750](result);
    sub_214F99030();
    sub_2150A4C00();
    sub_2150A4C00();

    v14 = 0;
    v16 = 0xE000000000000000;
    v12 = v41;
    v13 = v40;
    goto LABEL_15;
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_214F9708C()
{
  v2 = sub_2150A4B20();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = *(v0 + 8);
  v5 = *(v0 + 16);
  if (v4)
  {
    v6 = *(v5 + 16);
    v7 = MEMORY[0x277D84F90];
    if (!v6)
    {
      v9 = 0;
      v1 = MEMORY[0x277D84F90];
LABEL_31:
      if (qword_27CA41628 == -1)
      {
        goto LABEL_32;
      }

      goto LABEL_48;
    }

    v51 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
    v61 = MEMORY[0x277D84F90];
    sub_214F86C7C(0, v6, 0);
    v8 = 0;
    v9 = 0;
    v1 = v61;
    v10 = v4[2];
    v53 = v5 + 32;
    v54 = v10;
    v52 = v5;
    v55 = v6;
    v56 = v4;
    while (v8 < *(v5 + 16))
    {
      v11 = *(v53 + 8 * v8);
      v12 = *(v11 + 16);
      if (v12)
      {
        v58 = v1;
        v59 = v7;

        sub_214F86A20(0, v12, 0);
        v7 = v59;
        v57 = v11;
        v13 = v11 + 32;
        do
        {
          sub_214F50074(v13, v60);
          v14 = sub_214F98870(v60);
          v16 = v15;
          __swift_destroy_boxed_opaque_existential_0(v60);
          v59 = v7;
          v18 = v7[2];
          v17 = v7[3];
          v19 = v18 + 1;
          if (v18 >= v17 >> 1)
          {
            sub_214F86A20((v17 > 1), v18 + 1, 1);
            v7 = v59;
          }

          v7[2] = v19;
          v20 = &v7[2 * v18];
          v20[4] = v14;
          v20[5] = v16;
          v13 += 32;
          --v12;
        }

        while (v12);
        v1 = v58;
        v5 = v52;
      }

      else
      {

        v19 = v7[2];
      }

      if (v19 >= v54)
      {
        v21 = v54;
      }

      else
      {
        v21 = v19;
      }

      if (v21)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42DC8);
        v22 = sub_2150A5EA0();
      }

      else
      {
        v22 = MEMORY[0x277D84F98];
      }

      v23 = v56;
      v60[0] = v22;
      swift_bridgeObjectRetain_n();

      sub_214F98454(v23, v7, 1, v60);

      v24 = v60[0];
      v61 = v1;
      v26 = *(v1 + 16);
      v25 = *(v1 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_214F86C7C((v25 > 1), v26 + 1, 1);
        v1 = v61;
      }

      ++v8;
      *(v1 + 16) = v26 + 1;
      *(v1 + 8 * v26 + 32) = v24;
      v7 = MEMORY[0x277D84F90];
      if (v8 == v55)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
  }

  else
  {
    v51 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
    v9 = *(v5 + 16);
    if (!v9)
    {
      if (*(MEMORY[0x277D84F90] + 16))
      {
LABEL_36:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42DC8);
        v42 = sub_2150A5EA0();
      }

      else
      {
        v42 = MEMORY[0x277D84F98];
      }

      v60[0] = v42;

      sub_214F980A4(v43, 1, v60);

      v44 = v60[0];
      if (qword_27CA41628 != -1)
      {
        swift_once();
      }

      v60[0] = v44;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA426F0);
      sub_214F99084();
      v40 = sub_2150A2FC0();
      v41 = v45;

      goto LABEL_40;
    }

    v61 = MEMORY[0x277D84F90];
    sub_214F86C5C(0, v9, 0);
    v27 = v61;
    v28 = (v5 + 32);
    while (1)
    {
      v29 = *v28;
      if (!*(*v28 + 16))
      {
        break;
      }

      sub_214F50074(v29 + 32, v60);

      v30 = sub_214F98870(v60);
      v32 = v31;
      __swift_destroy_boxed_opaque_existential_0(v60);
      if (*(v29 + 16) < 2uLL)
      {
        goto LABEL_47;
      }

      sub_214F50074(v29 + 64, v60);
      v1 = sub_214F98870(v60);
      v34 = v33;

      __swift_destroy_boxed_opaque_existential_0(v60);
      v61 = v27;
      v36 = *(v27 + 16);
      v35 = *(v27 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_214F86C5C((v35 > 1), v36 + 1, 1);
        v27 = v61;
      }

      *(v27 + 16) = v36 + 1;
      v37 = (v27 + 32 * v36);
      v37[4] = v30;
      v37[5] = v32;
      v37[6] = v1;
      v37[7] = v34;
      ++v28;
      if (!--v9)
      {
        goto LABEL_36;
      }
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  swift_once();
LABEL_32:
  v60[0] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42DD8);
  sub_214F99100();
  v38 = sub_2150A2FC0();
  if (v9)
  {

    return 0;
  }

  v40 = v38;
  v41 = v39;

LABEL_40:
  sub_2150A4B10();
  v46 = sub_2150A4AF0();
  if (v47)
  {
    v48 = v46;
    sub_214F7EDE4(v40, v41);
    return v48;
  }

  sub_214F7EDE4(v40, v41);
  return 0;
}

uint64_t sub_214F97638(uint64_t a1, uint64_t a2, Swift::Int a3)
{
  v10 = 1;
  v11 = 0xE000000000000000;
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v6 = sub_2150A6100();
  MEMORY[0x2160617E0](v6);

  sub_2150A49F0();
  v12 = 0;
  v13 = 0xE000000000000000;
  v7 = String.padding(to:alignment:ignoringAnsi:)(a3, &v10, 1, a1, a2);
  MEMORY[0x2160617E0](v7);

  v10 = 0;
  v11 = 0xE000000000000000;
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v8 = sub_2150A6100();
  MEMORY[0x2160617E0](v8);

  sub_2150A49F0();
  MEMORY[0x2160617E0](v10, v11);

  MEMORY[0x2160617E0](32, 0xE100000000000000);
  return v12;
}

void sub_214F977F0()
{
  if (*(v0 + 24))
  {
    if (*(v0 + 24) == 1)
    {
      sub_214F96B48();
    }

    else
    {
      sub_214F9708C();
    }
  }

  else
  {
    sub_214F963BC();
  }
}

uint64_t Date.tableCellDescription.getter()
{
  v0 = sub_2150A38D0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_214F97978(v3);
  v4 = sub_2150A3850();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_214F97978@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42DA0);
  MEMORY[0x28223BE20](v1 - 8);
  v29 = &v24 - v2;
  v28 = sub_2150A3B20();
  v3 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v25 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_2150A38C0();
  v5 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2150A38A0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2150A3880();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2150A3890();
  MEMORY[0x28223BE20](v16);
  (*(v18 + 104))(&v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CC9460]);
  v19 = v12;
  v20 = v28;
  (*(v13 + 104))(v15, *MEMORY[0x277CC9458], v19);
  v21 = v7;
  v22 = v29;
  (*(v9 + 104))(v11, *MEMORY[0x277CC9468], v8);
  (*(v5 + 104))(v21, *MEMORY[0x277CC9480], v27);
  sub_2150A3B10();
  result = (*(v3 + 48))(v22, 1, v20);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v3 + 32))(v25, v22, v20);
    return sub_2150A38B0();
  }

  return result;
}

unint64_t sub_214F97D80()
{
  result = qword_27CA42D78;
  if (!qword_27CA42D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42D78);
  }

  return result;
}

unint64_t sub_214F97E18(uint64_t a1)
{
  result = sub_214F97E40();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_214F97E40()
{
  result = qword_27CA42D90;
  if (!qword_27CA42D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42D90);
  }

  return result;
}

uint64_t sub_214F97E94()
{
  v0 = sub_2150A38D0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_214F97978(v3);
  v4 = sub_2150A3850();
  (*(v1 + 8))(v3, v0);
  return v4;
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

uint64_t sub_214F97F88(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_214F97FD0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_214F98050()
{
  result = qword_27CA42D98;
  if (!qword_27CA42D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42D98);
  }

  return result;
}

void sub_214F980A4(void *a1, char a2, void *a3)
{
  v39 = a1[2];
  if (!v39)
  {
    goto LABEL_21;
  }

  LOBYTE(v4) = a2;
  v6 = a1[4];
  v5 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v9 = *a3;

  v10 = sub_214F30094(v6, v5);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_214FE9184(v15, v4 & 1);
    v10 = sub_214F30094(v6, v5);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_2150A63E0();
    __break(1u);
  }

  if (v4)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v20 = v10;
  sub_214FED04C();
  v10 = v20;
  if (v16)
  {
LABEL_8:
    v18 = swift_allocError();
    swift_willThrow();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD8);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v6;
  v22[1] = v5;
  v23 = (v21[7] + 16 * v10);
  *v23 = v7;
  v23[1] = v8;
  v24 = v21[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_2150A5B20();
    MEMORY[0x2160617E0](0xD00000000000001BLL, 0x80000002150E4190);
    sub_2150A5DB0();
    MEMORY[0x2160617E0](39, 0xE100000000000000);
    sub_2150A5E10();
    __break(1u);
    return;
  }

  v21[2] = v25;
  if (v39 != 1)
  {
    v4 = a1 + 11;
    v7 = 1;
    while (v7 < a1[2])
    {
      v6 = *(v4 - 3);
      v5 = *(v4 - 2);
      v26 = *(v4 - 1);
      v8 = *v4;
      v27 = *a3;

      v28 = sub_214F30094(v6, v5);
      v30 = v27[2];
      v31 = (v29 & 1) == 0;
      v14 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v29;
      if (v27[3] < v32)
      {
        sub_214FE9184(v32, 1);
        v28 = sub_214F30094(v6, v5);
        if ((v16 & 1) != (v33 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v34 = *a3;
      *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      v35 = (v34[6] + 16 * v28);
      *v35 = v6;
      v35[1] = v5;
      v36 = (v34[7] + 16 * v28);
      *v36 = v26;
      v36[1] = v8;
      v37 = v34[2];
      v14 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v7;
      v34[2] = v38;
      v4 += 4;
      if (v39 == v7)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

void sub_214F98454(void *a1, void *a2, char a3, void *a4)
{
  v7 = a1[2];

  if (!v7 || !a2[2])
  {
    goto LABEL_25;
  }

  v8 = a1[4];
  v9 = a1[5];
  v52 = a2;
  v53 = a1;
  v10 = a2[4];
  v11 = a2[5];
  v12 = *a4;

  v14 = sub_214F30094(v8, v9);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v18 = v13;
  if (v12[3] >= v17)
  {
    if (a3)
    {
      if ((v13 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_214FED04C();
      if ((v18 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

LABEL_10:
    v21 = swift_allocError();
    swift_willThrow();
    v22 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD8);
    if ((swift_dynamicCast() & 1) == 0)
    {

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();

      return;
    }

    goto LABEL_32;
  }

  sub_214FE9184(v17, a3 & 1);
  v19 = sub_214F30094(v8, v9);
  if ((v18 & 1) != (v20 & 1))
  {
LABEL_31:
    sub_2150A63E0();
    __break(1u);
LABEL_32:
    sub_2150A5B20();
    MEMORY[0x2160617E0](0xD00000000000001BLL, 0x80000002150E4190);
    sub_2150A5DB0();
    MEMORY[0x2160617E0](39, 0xE100000000000000);
    sub_2150A5E10();
    __break(1u);
    return;
  }

  v14 = v19;
  if (v18)
  {
    goto LABEL_10;
  }

LABEL_13:
  v23 = *a4;
  *(*a4 + 8 * (v14 >> 6) + 64) |= 1 << v14;
  v24 = (v23[6] + 16 * v14);
  *v24 = v8;
  v24[1] = v9;
  v25 = (v23[7] + 16 * v14);
  *v25 = v10;
  v25[1] = v11;
  v26 = v23[2];
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (v27)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v23[2] = v28;
  v29 = v52;
  v30 = v53[2];
  if (v30 != 1)
  {
    v31 = v53 + 7;
    v32 = v52 + 7;
    v33 = 1;
    while (v33 < v30)
    {
      v34 = v29[2];
      if (v33 == v34)
      {
        goto LABEL_25;
      }

      if (v33 >= v34)
      {
        goto LABEL_30;
      }

      v36 = *(v31 - 1);
      v35 = *v31;
      v37 = *(v32 - 1);
      v38 = *v32;
      v39 = *a4;

      v40 = sub_214F30094(v36, v35);
      v42 = v39[2];
      v43 = (v41 & 1) == 0;
      v27 = __OFADD__(v42, v43);
      v44 = v42 + v43;
      if (v27)
      {
        goto LABEL_27;
      }

      v45 = v41;
      if (v39[3] < v44)
      {
        sub_214FE9184(v44, 1);
        v40 = sub_214F30094(v36, v35);
        if ((v45 & 1) != (v46 & 1))
        {
          goto LABEL_31;
        }
      }

      if (v45)
      {
        goto LABEL_10;
      }

      v47 = *a4;
      *(*a4 + 8 * (v40 >> 6) + 64) |= 1 << v40;
      v48 = (v47[6] + 16 * v40);
      *v48 = v36;
      v48[1] = v35;
      v49 = (v47[7] + 16 * v40);
      *v49 = v37;
      v49[1] = v38;
      v50 = v47[2];
      v27 = __OFADD__(v50, 1);
      v51 = v50 + 1;
      if (v27)
      {
        goto LABEL_28;
      }

      ++v33;
      v47[2] = v51;
      v29 = v52;
      v30 = v53[2];
      v31 += 2;
      v32 += 2;
      if (v33 == v30)
      {
        goto LABEL_25;
      }
    }

    goto LABEL_29;
  }

LABEL_25:

  swift_bridgeObjectRelease_n();
}

uint64_t sub_214F98870(uint64_t a1)
{
  v2 = sub_2150A6500();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v35 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42DA8);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42DB0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v39 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v35 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v35 - v15;
  v38 = sub_2150A6540();
  v37 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a1;
  sub_214F50074(a1, v41);
  sub_2150A64F0();
  v40 = v18;
  sub_2150A6510();
  (*(v3 + 104))(v14, *MEMORY[0x277D84C18], v2);
  (*(v3 + 56))(v14, 0, 1, v2);
  v19 = *(v6 + 56);
  sub_214F98FC0(v16, v8);
  sub_214F98FC0(v14, &v8[v19]);
  v20 = *(v3 + 48);
  if (v20(v8, 1, v2) != 1)
  {
    sub_214F98FC0(v8, v39);
    if (v20(&v8[v19], 1, v2) != 1)
    {
      v22 = &v8[v19];
      v23 = v35;
      (*(v3 + 32))(v35, v22, v2);
      v24 = v39;
      v25 = sub_2150A4A80();
      v26 = *(v3 + 8);
      v26(v23, v2);
      sub_214F302D4(v14, &qword_27CA42DB0);
      sub_214F302D4(v16, &qword_27CA42DB0);
      v26(v24, v2);
      sub_214F302D4(v8, &qword_27CA42DB0);
      v21 = v40;
      if (v25)
      {
        goto LABEL_9;
      }

LABEL_7:
      sub_214F50074(v36, &v47);
      goto LABEL_13;
    }

    sub_214F302D4(v14, &qword_27CA42DB0);
    sub_214F302D4(v16, &qword_27CA42DB0);
    (*(v3 + 8))(v39, v2);
LABEL_6:
    sub_214F302D4(v8, &qword_27CA42DA8);
    v21 = v40;
    goto LABEL_7;
  }

  sub_214F302D4(v14, &qword_27CA42DB0);
  sub_214F302D4(v16, &qword_27CA42DB0);
  if (v20(&v8[v19], 1, v2) != 1)
  {
    goto LABEL_6;
  }

  sub_214F302D4(v8, &qword_27CA42DB0);
  v21 = v40;
LABEL_9:
  sub_2150A6530();
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v27 = sub_2150A5B90();
  swift_getObjectType();
  result = sub_2150A5B90();
  if (v27 != result)
  {
    __break(1u);
    return result;
  }

  v29 = sub_2150A5BA0();
  swift_unknownObjectRelease();
  if (v29)
  {
    swift_unknownObjectRelease();

    v48 = MEMORY[0x277D837D0];
    *&v47 = 0;
    *(&v47 + 1) = 0xE000000000000000;
  }

  else
  {
    sub_2150A5E00();
    swift_unknownObjectRelease();

    sub_214D72488(&v42, v44);
    sub_214D72488(v44, &v47);
  }

LABEL_13:
  sub_214F50074(&v47, v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42DB8);
  if (swift_dynamicCast())
  {
    sub_214D7A458(v44, v41);
    v30 = *(&v42 + 1);
    v31 = v43;
    __swift_project_boxed_opaque_existential_1(v41, *(&v42 + 1));
    v32 = (*(v31 + 8))(v30, v31);
    (*(v37 + 8))(v21, v38);
    __swift_destroy_boxed_opaque_existential_0(&v47);
    v33 = v41;
  }

  else
  {
    v45 = 0;
    memset(v44, 0, sizeof(v44));
    sub_214F302D4(v44, &qword_27CA42DC0);
    sub_214F50074(&v47, v41);
    v41[0] = sub_2150A4B30();
    v41[1] = v34;
    *&v44[0] = 10;
    *(&v44[0] + 1) = 0xE100000000000000;
    v46[0] = 32;
    v46[1] = 0xE100000000000000;
    sub_214D6E6C4();
    v32 = sub_2150A5890();

    (*(v37 + 8))(v21, v38);
    v33 = &v47;
  }

  __swift_destroy_boxed_opaque_existential_0(v33);
  return v32;
}

uint64_t sub_214F98FC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42DB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_214F99030()
{
  result = qword_27CA42F30;
  if (!qword_27CA42F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42F30);
  }

  return result;
}

unint64_t sub_214F99084()
{
  result = qword_27CA42DD0;
  if (!qword_27CA42DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA426F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42DD0);
  }

  return result;
}

unint64_t sub_214F99100()
{
  result = qword_27CA42DE0;
  if (!qword_27CA42DE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA42DD8);
    sub_214F99084();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42DE0);
  }

  return result;
}

uint64_t LinkSuggestion.text.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t LinkSuggestion.systemImageName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t LinkSuggestion.timeStamp.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t LinkSuggestion.noteIdentifier.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t LinkSuggestion.noteCachedTrimmedTitle.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t LinkSuggestion.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LinkSuggestion() + 40);
  v4 = sub_2150A3A00();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t LinkSuggestion.init(text:timeStamp:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  type metadata accessor for LinkSuggestion();
  *(a5 + 16) = 0;
  *(a5 + 24) = 0;
  *(a5 + 48) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0;
  result = _s10Foundation4UUIDV11NotesSharedE15defaultArgumentACvgZ_0();
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 32) = a3;
  *(a5 + 40) = a4;
  return result;
}

void LinkSuggestion.init(note:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2150A3960();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v36 - v12;
  *(a2 + 80) = 0;
  type metadata accessor for LinkSuggestion();
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  _s10Foundation4UUIDV11NotesSharedE15defaultArgumentACvgZ_0();
  v14 = [a1 titleForLinking];
  if (v14)
  {
    v15 = v14;
    v16 = sub_2150A4AD0();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0xE000000000000000;
  }

  *a2 = v16;
  *(a2 + 8) = v18;
  v19 = [a1 identifier];
  if (v19)
  {
    v20 = v19;
    v21 = sub_2150A4AD0();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0;
  }

  *(a2 + 48) = v21;
  *(a2 + 56) = v23;
  v24 = [a1 modificationDate];
  if (v24)
  {
    v25 = v24;
    sub_2150A3930();

    (*(v5 + 56))(v11, 0, 1, v4);
  }

  else
  {
    (*(v5 + 56))(v11, 1, 1, v4);
  }

  sub_214F71500(v11, v13);
  if ((*(v5 + 48))(v13, 1, v4))
  {
    sub_214F5D43C(v13);
    v26 = 0;
    v27 = 0;
  }

  else
  {
    (*(v5 + 16))(v7, v13, v4);
    sub_214F5D43C(v13);
    v26 = sub_2150A3800();
    v27 = v28;
    (*(v5 + 8))(v7, v4);
  }

  *(a2 + 32) = v26;
  *(a2 + 40) = v27;
  v29 = [a1 trimmedTitle];
  v30 = sub_2150A4AD0();
  v32 = v31;

  *(a2 + 64) = v30;
  *(a2 + 72) = v32;
  if ([a1 isSharedViaICloud])
  {

    v33 = 0x80000002150E5050;
    v34 = 0xD000000000000012;
  }

  else
  {
    v35 = [a1 isPasswordProtected];

    if (!v35)
    {
      return;
    }

    v33 = 0xE90000000000006CLL;
    v34 = 0x6C69662E6B636F6CLL;
  }

  *(a2 + 16) = v34;
  *(a2 + 24) = v33;
}

double LinkSuggestion.init(url:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for LinkSuggestion();
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0;
  _s10Foundation4UUIDV11NotesSharedE15defaultArgumentACvgZ_0();
  *a2 = sub_2150A3650();
  *(a2 + 8) = v4;
  v5 = sub_2150A3750();
  (*(*(v5 - 8) + 8))(a1, v5);
  *&result = 0x65626F6C67;
  *(a2 + 16) = xmmword_2150C4CE0;
  return result;
}

double LinkSuggestion.init(textForNewNoteSuggestion:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for LinkSuggestion();
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  _s10Foundation4UUIDV11NotesSharedE15defaultArgumentACvgZ_0();
  *a3 = a1;
  *(a3 + 8) = a2;
  result = 1.35426987e243;
  *(a3 + 16) = xmmword_2150C4CF0;
  *(a3 + 80) = 1;
  return result;
}

uint64_t LinkSuggestion.hash(into:)()
{
  sub_2150A4BB0();
  if (v0[3])
  {
    sub_2150A64D0();
    sub_2150A4BB0();
    if (v0[5])
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_2150A64D0();
    if (v0[5])
    {
LABEL_3:
      sub_2150A64D0();
      sub_2150A4BB0();
      if (v0[7])
      {
        goto LABEL_4;
      }

LABEL_8:
      sub_2150A64D0();
      if (v0[9])
      {
        goto LABEL_5;
      }

LABEL_9:
      sub_2150A64D0();
      return sub_2150A64D0();
    }
  }

  sub_2150A64D0();
  if (!v0[7])
  {
    goto LABEL_8;
  }

LABEL_4:
  sub_2150A64D0();
  sub_2150A4BB0();
  if (!v0[9])
  {
    goto LABEL_9;
  }

LABEL_5:
  sub_2150A64D0();
  sub_2150A4BB0();
  return sub_2150A64D0();
}

void __swiftcall LinkSuggestion.completionSuggestionsItem()(ICAutoCompleteSuggestionsItem *__return_ptr retstr)
{
  v2 = v1;
  if (*(v1 + 24))
  {
    v3 = sub_2150A4A90();
    v13 = [objc_opt_self() systemImageNamed_];
  }

  else
  {
    v13 = 0;
  }

  LinkSuggestion.displayText.getter();
  v4 = *(v2 + 40);
  type metadata accessor for LinkSuggestion();
  sub_2150A3990();
  v12 = *(v2 + 80);
  v5 = *(v2 + 56);
  v6 = sub_2150A4A90();

  v7 = sub_2150A4A90();
  if (v4)
  {
    v8 = sub_2150A4A90();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_2150A4A90();

  if (v5)
  {
    v10 = sub_2150A4A90();
  }

  else
  {
    v10 = 0;
  }

  LOBYTE(v11) = v12;
  [objc_allocWithZone(ICAutoCompleteSuggestionsItem) initWithDisplayText:v6 shortText:v7 rightText:v8 uuidString:v9 isEmptyPlaceholder:0 isSectionHeader:0 isCreationSuggestion:v11 iconImage:v13 parentNoteIdentifier:v10 representedObject:0];
}

uint64_t LinkSuggestion.displayText.getter()
{
  if (*(v0 + 80) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2150C25D0;
    v3 = *v0;
    v2 = *(v0 + 8);
    *(inited + 56) = MEMORY[0x277D837D0];
    *(inited + 64) = sub_214D74008();
    *(inited + 32) = v3;
    *(inited + 40) = v2;
    v4 = objc_opt_self();

    v5 = sub_2150A4A90();
    v6 = [v4 localizedFrameworkStringForKey:v5 value:0 table:0 allowSiri:1];

    v7 = sub_2150A4AD0();
    v9 = v8;

    v10 = sub_214F9A03C(inited, v7, v9);
    swift_bridgeObjectRelease_n();
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42268);
    swift_arrayDestroy();
  }

  else
  {
    v10 = *v0;
  }

  return v10;
}

void LinkSuggestion.init(autocompleteSuggestionItem:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for LinkSuggestion();
  _s10Foundation4UUIDV11NotesSharedE15defaultArgumentACvgZ_0();
  v4 = [a1 shortText];
  if (v4)
  {
    v5 = v4;
    v6 = sub_2150A4AD0();
    v8 = v7;

    *a2 = v6;
    *(a2 + 8) = v8;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    v9 = [a1 rightText];
    if (v9)
    {
      v10 = v9;
      v11 = sub_2150A4AD0();
      v13 = v12;
    }

    else
    {
      v11 = 0;
      v13 = 0;
    }

    *(a2 + 32) = v11;
    *(a2 + 40) = v13;
    v14 = [a1 parentNoteIdentifier];
    if (v14)
    {
      v15 = v14;
      v16 = sub_2150A4AD0();
      v18 = v17;
    }

    else
    {
      v16 = 0;
      v18 = 0;
    }

    *(a2 + 48) = v16;
    *(a2 + 56) = v18;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    v19 = [a1 isCreationSuggestion];

    *(a2 + 80) = v19;
  }

  else
  {
    __break(1u);
  }
}

uint64_t LinkSuggestion.hashValue.getter()
{
  sub_2150A64B0();
  LinkSuggestion.hash(into:)();
  return sub_2150A64E0();
}

uint64_t sub_214F99DCC()
{
  sub_2150A64B0();
  LinkSuggestion.hash(into:)();
  return sub_2150A64E0();
}

uint64_t sub_214F99E10()
{
  sub_2150A64B0();
  LinkSuggestion.hash(into:)();
  return sub_2150A64E0();
}

uint64_t sub_214F99E4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_2150A3A00();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t _s11NotesShared14LinkSuggestionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_2150A6270() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 24);
  v6 = *(a2 + 24);
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = *(a1 + 16) == *(a2 + 16) && v5 == v6;
    if (!v7 && (sub_2150A6270() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v8 = *(a1 + 40);
  v9 = *(a2 + 40);
  if (v8)
  {
    if (!v9 || (*(a1 + 32) != *(a2 + 32) || v8 != v9) && (sub_2150A6270() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v10 = *(a1 + 56);
  v11 = *(a2 + 56);
  if (v10)
  {
    if (!v11 || (*(a1 + 48) != *(a2 + 48) || v10 != v11) && (sub_2150A6270() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  v12 = *(a1 + 72);
  v13 = *(a2 + 72);
  if (!v12)
  {
    if (!v13)
    {
      goto LABEL_36;
    }

    return 0;
  }

  if (!v13 || (*(a1 + 64) != *(a2 + 64) || v12 != v13) && (sub_2150A6270() & 1) == 0)
  {
    return 0;
  }

LABEL_36:
  if (*(a1 + 80) != *(a2 + 80))
  {
    return 0;
  }

  type metadata accessor for LinkSuggestion();

  return sub_2150A39B0();
}

uint64_t sub_214F9A03C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2150A5DA0();
  v4 = swift_allocObject();
  v4[2] = 8;
  v4[3] = 0;
  v5 = v4 + 3;
  v4[4] = 0;
  v4[5] = 0;
  v6 = *(a1 + 16);
  if (!v6)
  {
LABEL_26:
    v24 = sub_2150A5D90();
    sub_214F9A360();
    v29[3] = sub_2150A3AC0();
    __swift_allocate_boxed_opaque_existential_1(v29);

    sub_2150A3A70();
    v25 = sub_215005914(a2, a3, v29, v24);
    v26 = sub_2150A4AD0();

    return v26;
  }

  v7 = 0;
  v8 = a1 + 32;
  while (1)
  {
    __swift_project_boxed_opaque_existential_1((v8 + 40 * v7), *(v8 + 40 * v7 + 24));
    result = sub_2150A6570();
    v10 = *v5;
    v11 = *(result + 16);
    v12 = __OFADD__(*v5, v11);
    v13 = *v5 + v11;
    if (v12)
    {
      break;
    }

    v14 = v4[4];
    if (v14 >= v13)
    {
      goto LABEL_18;
    }

    if (v14 + 0x4000000000000000 < 0)
    {
      goto LABEL_29;
    }

    v15 = v4[5];
    if (2 * v14 > v13)
    {
      v13 = 2 * v14;
    }

    v4[4] = v13;
    if ((v13 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_30;
    }

    v16 = result;
    v17 = swift_slowAlloc();
    v18 = v17;
    v4[5] = v17;
    if (v15)
    {
      if (v17 != v15 || v17 >= &v15[8 * v10])
      {
        memmove(v17, v15, 8 * v10);
      }

      sub_2150A5D80();
      result = v16;
LABEL_18:
      v18 = v4[5];
      if (!v18)
      {
        goto LABEL_25;
      }

      goto LABEL_19;
    }

    result = v16;
    if (!v18)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_19:
    v20 = *(result + 16);
    if (v20)
    {
      v21 = (result + 32);
      v22 = *v5;
      while (1)
      {
        v23 = *v21++;
        *&v18[8 * v22] = v23;
        v22 = *v5 + 1;
        if (__OFADD__(*v5, 1))
        {
          break;
        }

        *v5 = v22;
        if (!--v20)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
      break;
    }

LABEL_3:

    if (++v7 == v6)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_214F9A304(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_214F9A360()
{
  result = qword_27CA42350;
  if (!qword_27CA42350)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CA42350);
  }

  return result;
}

uint64_t NSManagedObjectContext.perform<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_214D5996C, 0, 0);
}

uint64_t sub_214F9A3D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v14 - v11;
  v10();
  (*(v6 + 16))(v9, v12, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD8);
  sub_214D5BC54(v9, a3, a4);
  return (*(v6 + 8))(v12, a4);
}

uint64_t NSManagedObjectContext.ic_save(withLogDescription:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;

  LOBYTE(a3) = sub_214F9A5C4(a3, v5);

  return a3 & 1;
}

uint64_t sub_214F9A5C4(uint64_t a1, void *a2)
{
  sub_2150A5DA0();
  v3 = swift_allocObject();
  v3[2] = 8;
  v3[3] = 0;
  v4 = v3 + 3;
  v3[4] = 0;
  v3[5] = 0;
  v5 = *(a1 + 16);
  if (!v5)
  {
LABEL_26:
    v23 = sub_2150A5D90();
    v24 = sub_2150A4A90();
    v25 = [a2 ic:v24 saveWithLogDescription:v23 arguments:?];

    return v25;
  }

  v6 = 0;
  v7 = a1 + 32;
  while (1)
  {
    __swift_project_boxed_opaque_existential_1((v7 + 40 * v6), *(v7 + 40 * v6 + 24));
    result = sub_2150A6570();
    v9 = *v4;
    v10 = *(result + 16);
    v11 = __OFADD__(*v4, v10);
    v12 = *v4 + v10;
    if (v11)
    {
      break;
    }

    v13 = v3[4];
    if (v13 >= v12)
    {
      goto LABEL_18;
    }

    if (v13 + 0x4000000000000000 < 0)
    {
      goto LABEL_29;
    }

    v14 = v3[5];
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    v3[4] = v12;
    if ((v12 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_30;
    }

    v15 = result;
    v16 = swift_slowAlloc();
    v17 = v16;
    v3[5] = v16;
    if (v14)
    {
      if (v16 != v14 || v16 >= &v14[8 * v9])
      {
        memmove(v16, v14, 8 * v9);
      }

      sub_2150A5D80();
      result = v15;
LABEL_18:
      v17 = v3[5];
      if (!v17)
      {
        goto LABEL_25;
      }

      goto LABEL_19;
    }

    result = v15;
    if (!v17)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_19:
    v19 = *(result + 16);
    if (v19)
    {
      v20 = (result + 32);
      v21 = *v4;
      while (1)
      {
        v22 = *v20++;
        *&v17[8 * v21] = v22;
        v21 = *v4 + 1;
        if (__OFADD__(*v4, 1))
        {
          break;
        }

        *v4 = v21;
        if (!--v19)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
      break;
    }

LABEL_3:

    if (++v6 == v5)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_214F9A7EC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42DF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42DF8);
  v0 = sub_2150A46C0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2150C29C0;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x277CFB5E8], v0);
  v6(v5 + v2, *MEMORY[0x277CFB5F0], v0);
  v7 = sub_2150A46E0();

  return v7 & 1;
}

id ICAttachmentSystemPaperModelHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ICAttachmentSystemPaperModelHelper.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ICAttachmentSystemPaperModelHelper();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ICAttachmentSystemPaperModelHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ICAttachmentSystemPaperModelHelper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s11NotesShared34ICAttachmentSystemPaperModelHelperC016minimumSupporteda10VersionForE02at04baseJ0So07ICNotesJ0V10Foundation3URLV_AHtFZ_0(uint64_t a1, uint64_t a2)
{
  if (a2 < 7)
  {
    __break(1u);
    goto LABEL_23;
  }

  v2 = a2;
  if (a2 > 0x11)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  if (a2 == 17)
  {
    return 17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42DF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42DF8);
  v3 = sub_2150A46C0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2150C29C0;
  v8 = v7 + v6;
  v9 = *(v4 + 104);
  v21 = *MEMORY[0x277CFB5E8];
  v9(v7 + v6);
  v20 = *MEMORY[0x277CFB5F0];
  v9(v8 + v5);
  LOBYTE(v8) = sub_2150A46E0();

  if ((v8 & 1) == 0)
  {
    return 17;
  }

  if (v2 <= 0xE)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_2150C29C0;
    v11 = v10 + v6;
    (v9)(v10 + v6, v21, v3);
    (v9)(v11 + v5, v20, v3);
    LOBYTE(v11) = sub_2150A46E0();

    if (v11)
    {
      if (v2 != 14)
      {
        v12 = swift_allocObject();
        *(v12 + 16) = xmmword_2150C29C0;
        v13 = v12 + v6;
        (v9)(v12 + v6, v21, v3);
        (v9)(v13 + v5, v20, v3);
        LOBYTE(v13) = sub_2150A46E0();

        if (v13)
        {
          if (v2 <= 0xC)
          {
            v14 = swift_allocObject();
            *(v14 + 16) = xmmword_2150C29C0;
            v15 = v14 + v6;
            (v9)(v14 + v6, v21, v3);
            (v9)(v15 + v5, v20, v3);
            LOBYTE(v15) = sub_2150A46E0();

            if (v15)
            {
              if (v2 <= 9)
              {
                v16 = swift_allocObject();
                *(v16 + 16) = xmmword_2150C29C0;
                v17 = v16 + v6;
                (v9)(v16 + v6, v21, v3);
                (v9)(v17 + v5, v20, v3);
                v18 = sub_2150A46E0();

                if (v18)
                {
                  if (v2 != 9 && (sub_2150A4700() & 1) == 0)
                  {
                    return 9;
                  }
                }

                else
                {
                  return 10;
                }
              }
            }

            else
            {
              return 13;
            }
          }
        }

        else
        {
          return 14;
        }
      }
    }

    else
    {
      return 15;
    }
  }

  return v2;
}

uint64_t sub_214F9B0AC()
{
  type metadata accessor for ArgumentDecoder();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  result = swift_beginAccess();
  *(v0 + 16) = 0;
  off_27CA42E00 = v0;
  return result;
}

uint64_t ArgumentDecoder.__allocating_init(usesDefaultValueIfMissing:)(char a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  swift_beginAccess();
  *(v2 + 16) = a1;
  return v2;
}

uint64_t static ArgumentDecoder.shared.getter()
{
  if (qword_27CA41630 != -1)
  {
    swift_once();
  }
}

uint64_t ArgumentDecoder.usesDefaultValueIfMissing.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t ArgumentDecoder.init(usesDefaultValueIfMissing:)(char a1)
{
  *(v1 + 16) = 0;
  swift_beginAccess();
  *(v1 + 16) = a1;
  return v1;
}

uint64_t ArgumentDecoder.decode<A>(_:from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v11 = sub_214F9B71C(a2);
  v13 = v12;
  v14 = swift_conformsToProtocol2();
  if (!v14 || !a1)
  {
    swift_beginAccess();
    v29 = *(v5 + 16);
    v30 = type metadata accessor for ArgumentDecoder.Decoder();
    v31 = swift_allocObject();
    v32 = MEMORY[0x277D84F90];
    *(v31 + 40) = MEMORY[0x277D84F90];
    *(v31 + 48) = sub_214FA4E00(v32);
    *(v31 + 16) = v11;
    *(v31 + 24) = v13;
    *(v31 + 32) = v29;
    v53 = v30;
    v54 = sub_214FA4FEC();
    v52[0] = v31;
    return sub_2150A52C0();
  }

  v15 = v14;
  if (v11[2])
  {
    v44 = a4;
    v47 = a5;
    v48 = a3;
    v16 = v11[4];
    v17 = v11[5];
    v45 = *(v14 + 24);
    v18 = sub_2150A57E0();
    v46 = &v41;
    v42 = *(v18 - 8);
    v43 = v18;
    MEMORY[0x28223BE20](v18);
    v20 = &v41 - v19;

    v45(v16, v17, a1, v15);
    v21 = *(a1 - 8);
    if ((*(v21 + 48))(v20, 1, a1) != 1)
    {

      v50 = a1;
      v51 = v15;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v49);
      (*(v21 + 32))(boxed_opaque_existential_1, v20, a1);
      sub_214D7A458(&v49, v52);
      v38 = v53;
      v39 = __swift_project_boxed_opaque_existential_1(v52, v53);
      v50 = v38;
      v40 = __swift_allocate_boxed_opaque_existential_1(&v49);
      (*(*(v38 - 8) + 16))(v40, v39, v38);
      v26 = v47;
      v27 = v48;
      v28 = v48;
      goto LABEL_12;
    }

    (*(v42 + 8))(v20, v43);
    a5 = v47;
    a3 = v48;
  }

  swift_beginAccess();
  if ((*(v6 + 16) & 1) == 0)
  {
    v33 = type metadata accessor for ArgumentDecoder.Decoder();
    v34 = swift_allocObject();
    v35 = MEMORY[0x277D84F90];
    *(v34 + 40) = MEMORY[0x277D84F90];
    *(v34 + 48) = sub_214FA4E00(v35);
    *(v34 + 16) = v11;
    *(v34 + 24) = v13;
    *(v34 + 32) = 0;
    v53 = v33;
    v54 = sub_214FA4FEC();
    v52[0] = v34;
    return sub_2150A52C0();
  }

  v22 = *(v15 + 16);
  v53 = a1;
  v54 = v15;
  __swift_allocate_boxed_opaque_existential_1(v52);
  v22(a1, v15);
  v23 = v53;
  v24 = __swift_project_boxed_opaque_existential_1(v52, v53);
  v50 = v23;
  v25 = __swift_allocate_boxed_opaque_existential_1(&v49);
  (*(*(v23 - 8) + 16))(v25, v24, v23);
  v26 = a5;
  v27 = a3;
  v28 = a3;
LABEL_12:
  castOrFatalError<A>(_:as:)(&v49, v27, v28, v26);
  __swift_destroy_boxed_opaque_existential_0(&v49);
  return __swift_destroy_boxed_opaque_existential_0(v52);
}

uint64_t sub_214F9B71C(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v3 = sub_214FA4CEC(MEMORY[0x277D84F90]);
  v19 = v2;
  v20 = v3;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v4 = *(a1 + 16);
  if (!v4)
  {
    v6 = 0;
    v7 = 0;
    v9 = MEMORY[0x277D84F90];
LABEL_9:

    sub_214FA6150(v9, v3, v7, v6, 0);
    return v9;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = (a1 + 40);
  v9 = MEMORY[0x277D84F90];
  do
  {
    v10 = *v8;
    v18[0] = *(v8 - 1);
    v18[1] = v10;

    sub_214F9B938(&v19, v18, &v13);

    sub_214FA6150(v9, v3, v7, v6, v5);
    v9 = v13;
    v3 = v14;
    v7 = v15;
    v6 = v16;
    v5 = v17;
    v19 = v13;
    v20 = v14;
    v21 = v15;
    v22 = v16;
    v23 = v17;
    v8 += 2;
    --v4;
  }

  while (v4);
  if (!v17)
  {
    goto LABEL_9;
  }

  if (v17 == 1)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = v6;
    sub_214FEC180(1702195828, 0xE400000000000000, v9, v3, isUniquelyReferenced_nonNull_native);

    sub_214FA6150(v9, v3, v7, v6, 1u);
  }

  else
  {

    sub_214FA6150(v9, v3, v7, v6, 2u);
  }

  return v7;
}

uint64_t sub_214F9B938@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v7 = *a2;
  v6 = a2[1];
  if (*(a1 + 32))
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    if (*(a1 + 32) == 1)
    {

      if ((sub_2150A4CD0() & 1) == 0)
      {

        swift_bridgeObjectRetain_n();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_214FEC180(v7, v6, v5, v4, isUniquelyReferenced_nonNull_native);

        *a3 = v5;
        *(a3 + 8) = v4;
        *(a3 + 16) = v8;
        *(a3 + 24) = v9;
        *(a3 + 32) = 2;
        return result;
      }

      v10 = swift_isUniquelyReferenced_nonNull_native();
      v46 = v9;
      sub_214FEC180(1702195828, 0xE400000000000000, v5, v4, v10);
    }

    else
    {
      v50 = *(a1 + 24);

      if ((sub_2150A4CD0() & 1) == 0)
      {
        v43 = sub_214F9BD88(&v46, v5, v4);
        if (*(v44 + 8))
        {
          MEMORY[0x2160617E0](v7, v6);
          MEMORY[0x2160617E0](32, 0xE100000000000000);
        }

        result = (v43)(&v46, 0);
        v45 = v50;
        *a3 = v5;
        *(a3 + 8) = v4;
        *(a3 + 16) = v8;
        *(a3 + 24) = v45;
        v38 = 2;
        goto LABEL_19;
      }
    }

    v25 = sub_2150A4BC0();
    v26 = sub_214FBA930(v25, v7, v6);
    v28 = v27;
    v30 = v29;
    v32 = v31;

    v46 = v26;
    v47 = v28;
    v48 = v30;
    v49 = v32;
    sub_214F99030();
    v33 = sub_2150A4D30();
    sub_214FBDA8C(v33, v34);

    v35 = sub_2150A4B40();
    v37 = v36;

    *a3 = v35;
    *(a3 + 8) = v37;
    *(a3 + 16) = v8;
    *(a3 + 24) = v9;
    v38 = 1;
LABEL_19:
    *(a3 + 32) = v38;
    return result;
  }

  if (sub_2150A4CD0())
  {

    v11 = sub_2150A4BC0();
    v12 = sub_214FBA930(v11, v7, v6);
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v46 = v12;
    v47 = v14;
    v48 = v16;
    v49 = v18;
    sub_214F99030();
    v19 = sub_2150A4D30();
    sub_214FBDA8C(v19, v20);

    v21 = sub_2150A4B40();
    v23 = v22;

    *a3 = v21;
    *(a3 + 8) = v23;
    *(a3 + 16) = v5;
    *(a3 + 24) = v4;
    *(a3 + 32) = 1;
  }

  else
  {

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_21505F4D0(0, *(v5 + 16) + 1, 1, v5);
      v5 = result;
    }

    v41 = *(v5 + 16);
    v40 = *(v5 + 24);
    if (v41 >= v40 >> 1)
    {
      result = sub_21505F4D0((v40 > 1), v41 + 1, 1, v5);
      v5 = result;
    }

    *(v5 + 16) = v41 + 1;
    v42 = v5 + 16 * v41;
    *(v42 + 32) = v7;
    *(v42 + 40) = v6;
    *a3 = v5;
    *(a3 + 8) = v4;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 32) = 0;
  }

  return result;
}

void (*sub_214F9BD88(uint64_t **a1, uint64_t a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_214FA45CC(v6, a2, a3);
  return sub_214F9BE10;
}

void sub_214F9BE10(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t ArgumentDecoder.Decoder.usesDefaultValueIfMissing.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

uint64_t ArgumentDecoder.Decoder.codingPath.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;
}

uint64_t ArgumentDecoder.Decoder.container<A>(keyedBy:)()
{
  v1 = sub_2150A5C10();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v5 = *(v0 + 40);
  if (!*(v5 + 16))
  {

    goto LABEL_5;
  }

  swift_beginAccess();
  if (*(v0 + 32) == 1)
  {
    v6 = sub_214FA4CEC(MEMORY[0x277D84F90]);
    v5 = *(v0 + 40);
LABEL_5:
    v11[1] = v0;
    v11[2] = v5;
    v11[3] = v6;
    type metadata accessor for ArgumentDecoder.KeyedContainer();

    swift_getWitnessTable();
    return sub_2150A5FF0();
  }

  sub_2150A5BF0();
  v8 = sub_2150A5C20();
  swift_allocError();
  v10 = v9;
  (*(v2 + 16))(v9, v4, v1);
  (*(*(v8 - 8) + 104))(v10, *MEMORY[0x277D84168], v8);
  swift_willThrow();
  return (*(v2 + 8))(v4, v1);
}

void *ArgumentDecoder.Decoder.unkeyedContainer()@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  swift_bridgeObjectRetain_n();

  v4 = sub_214F9C334(v3);
  v6 = v5;

  sub_214FA5CE8(v1, v3, v4, v6);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  a1[3] = &type metadata for ArgumentDecoder.UnkeyedContainer;
  a1[4] = sub_214FA5F68();
  result = swift_allocObject();
  *a1 = result;
  result[2] = v1;
  result[3] = v8;
  result[4] = v10;
  result[5] = v12;
  return result;
}

uint64_t sub_214F9C334(void *a1)
{
  if (a1[2])
  {
    __swift_project_boxed_opaque_existential_1(a1 + 4, a1[7]);
    sub_2150A6630();
    v2 = sub_2150A4D30();
    sub_214FBDA8C(v2, v3);

    v4 = sub_2150A4B40();
    v6 = v5;

    v7 = *(v1 + 24);
    if (*(v7 + 16))
    {
      v8 = sub_214F30094(v4, v6);
      v10 = v9;

      if (v10)
      {
        v11 = *(*(v7 + 56) + 16 * v8);

        return v11;
      }
    }

    else
    {
    }
  }

  else if (*(*(v1 + 16) + 16))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DE0);
    sub_214F43BCC(&qword_280C24540, &qword_27CA41DE0);
    v13 = sub_2150A4A20();

    return v13;
  }

  return 0;
}

uint64_t ArgumentDecoder.Decoder.singleValueContainer()@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  swift_bridgeObjectRetain_n();
  v4 = sub_214F9C334(v3);
  v6 = v5;

  a1[3] = &type metadata for ArgumentDecoder.SingleValueContainer;
  a1[4] = sub_214FA5FBC();
  v7 = swift_allocObject();
  *a1 = v7;
  v7[2] = v1;
  v7[3] = v3;
  v7[4] = v4;
  v7[5] = v6;
}

uint64_t ArgumentDecoder.Decoder.deinit()
{

  return v0;
}

uint64_t ArgumentDecoder.Decoder.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *sub_214F9C6A8@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  swift_bridgeObjectRetain_n();

  v5 = sub_214F9C334(v4);
  v7 = v6;

  sub_214FA5CE8(v3, v4, v5, v7);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  a1[3] = &type metadata for ArgumentDecoder.UnkeyedContainer;
  a1[4] = sub_214FA5F68();
  result = swift_allocObject();
  *a1 = result;
  result[2] = v3;
  result[3] = v9;
  result[4] = v11;
  result[5] = v13;
  return result;
}

uint64_t sub_214F9C788@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  swift_bridgeObjectRetain_n();
  v5 = sub_214F9C334(v4);
  v7 = v6;

  a1[3] = &type metadata for ArgumentDecoder.SingleValueContainer;
  a1[4] = sub_214FA5FBC();
  v8 = swift_allocObject();
  *a1 = v8;
  v8[2] = v3;
  v8[3] = v4;
  v8[4] = v5;
  v8[5] = v7;
}

uint64_t sub_214F9C844()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42EA8);
  sub_214F43BCC(&qword_27CA42EB0, &qword_27CA42EA8);
  v0 = sub_2150A4D80();

  return v0;
}

uint64_t sub_214F9C91C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2150A6630();
  v5 = sub_2150A4D30();
  v7 = sub_214FBDA8C(v5, v6);
  v9 = v8;

  if (*(a4 + 16))
  {
    sub_214F30094(v7, v9);
    v11 = v10;
  }

  else
  {

    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_214F9C9DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v57 = a7;
  v54 = a4;
  v55 = a6;
  v53 = a3;
  v51 = a8;
  v12 = *(a5 - 8);
  v13 = MEMORY[0x28223BE20](a1);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v49 - v16;
  v18 = *(v12 + 16);
  v65 = v19;
  v18(&v49 - v16);
  swift_beginAccess();
  v20 = *(a2 + 40);
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v58 = a2;
  *(a2 + 40) = v20;
  v56 = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v20 = sub_21505FF74(0, v20[2] + 1, 1, v20);
    *(v58 + 40) = v20;
  }

  v52 = a9;
  v23 = v20[2];
  v22 = v20[3];
  v24 = a1;
  if (v23 >= v22 >> 1)
  {
    v20 = sub_21505FF74((v22 > 1), v23 + 1, 1, v20);
    *(v58 + 40) = v20;
  }

  v25 = v65;
  (v18)(v15, v17, v65);
  v26 = v58;
  sub_214FA4924(v23, v15, (v58 + 40), v25, v57);
  (*(v12 + 8))(v17, v25);
  *(v26 + 40) = v20;
  swift_endAccess();

  v27 = swift_conformsToProtocol2();
  if (!v27 || !v24)
  {
    goto LABEL_12;
  }

  v28 = v27;

  v30 = sub_214F9C334(v29);
  v32 = v31;

  if (v32)
  {
    v33 = *(v28 + 24);
    v50 = sub_2150A57E0();
    v34 = *(v50 - 8);
    MEMORY[0x28223BE20](v50);
    v36 = &v49 - v35;
    v33(v30, v32, v24, v28);
    v37 = *(v24 - 8);
    if ((*(v37 + 48))(v36, 1, v24) != 1)
    {
      v42 = v58;

      v60 = v24;
      v61 = v28;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v59);
      v44 = v36;
      v26 = v42;
      (*(v37 + 32))(boxed_opaque_existential_1, v44, v24);
      sub_214D7A458(&v59, v62);
      v45 = v63;
      v46 = __swift_project_boxed_opaque_existential_1(v62, v63);
      v60 = v45;
      v47 = __swift_allocate_boxed_opaque_existential_1(&v59);
      (*(*(v45 - 8) + 16))(v47, v46, v45);
      castOrFatalError<A>(_:as:)(&v59, v55, v55, v51);
      __swift_destroy_boxed_opaque_existential_0(&v59);
      __swift_destroy_boxed_opaque_existential_0(v62);
      return sub_214F9CF50(v26);
    }

    (*(v34 + 8))(v36, v50);
    v26 = v58;
  }

  swift_beginAccess();
  if (*(v26 + 32))
  {

    v38 = *(v28 + 16);
    v63 = v24;
    v64 = v28;
    __swift_allocate_boxed_opaque_existential_1(v62);
    v38(v24, v28);
    v39 = v63;
    v40 = __swift_project_boxed_opaque_existential_1(v62, v63);
    v60 = v39;
    v41 = __swift_allocate_boxed_opaque_existential_1(&v59);
    (*(*(v39 - 8) + 16))(v41, v40, v39);
    castOrFatalError<A>(_:as:)(&v59, v55, v55, v51);
    __swift_destroy_boxed_opaque_existential_0(&v59);
    __swift_destroy_boxed_opaque_existential_0(v62);
  }

  else
  {
LABEL_12:
    v63 = type metadata accessor for ArgumentDecoder.Decoder();
    v64 = sub_214FA4FEC();
    v62[0] = v26;
    sub_2150A52C0();
  }

  return sub_214F9CF50(v26);
}

uint64_t sub_214F9CF50(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 40);
  if (!v2[2])
  {
    __break(1u);
LABEL_6:
    result = sub_215060930(v2);
    v2 = result;
    v4 = *(result + 16);
    if (v4)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_6;
  }

  v4 = v2[2];
  if (v4)
  {
LABEL_4:
    v5 = v4 - 1;
    __swift_destroy_boxed_opaque_existential_0(&v2[5 * v4 - 1]);
    v2[2] = v5;
    *(a1 + 40) = v2;
    return swift_endAccess();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_214F9D17C(uint64_t a1, uint64_t a2)
{
  sub_214F9C9DC(MEMORY[0x277D839B0], *v2, v2[1], v2[2], *(a2 + 16), MEMORY[0x277D839B0], *(a2 + 24), &v6, MEMORY[0x277D839D0]);
  if (!v3)
  {
    v4 = v6;
  }

  return v4 & 1;
}

uint64_t sub_214F9D1DC(uint64_t a1, uint64_t a2)
{
  result = sub_214F9C9DC(MEMORY[0x277D837D0], *v2, v2[1], v2[2], *(a2 + 16), MEMORY[0x277D837D0], *(a2 + 24), &v5, MEMORY[0x277D83808]);
  if (!v3)
  {
    return v5;
  }

  return result;
}

double sub_214F9D238(uint64_t a1, uint64_t a2)
{
  sub_214F9C9DC(MEMORY[0x277D839F8], *v2, v2[1], v2[2], *(a2 + 16), MEMORY[0x277D839F8], *(a2 + 24), &v5, MEMORY[0x277D83A30]);
  if (!v3)
  {
    return v5;
  }

  return result;
}

float sub_214F9D294(uint64_t a1, uint64_t a2)
{
  sub_214F9C9DC(MEMORY[0x277D83A90], *v2, v2[1], v2[2], *(a2 + 16), MEMORY[0x277D83A90], *(a2 + 24), &v5, MEMORY[0x277D83AC8]);
  if (!v3)
  {
    return v5;
  }

  return result;
}

uint64_t sub_214F9D420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_214F9C9DC(a4, *v5, v5[1], v5[2], *(a2 + 16), a4, *(a2 + 24), &v8, a5);
  if (!v6)
  {
    return v8;
  }

  return result;
}

uint64_t sub_214F9D49C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_214F9C9DC(a4, *v5, v5[1], v5[2], *(a2 + 16), a4, *(a2 + 24), &v8, a5);
  if (!v6)
  {
    return v8;
  }

  return result;
}

uint64_t sub_214F9D518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_214F9C9DC(a4, *v5, v5[1], v5[2], *(a2 + 16), a4, *(a2 + 24), &v8, a5);
  if (!v6)
  {
    return v8;
  }

  return result;
}

uint64_t sub_214F9D594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_214F9C9DC(a4, *v5, v5[1], v5[2], *(a2 + 16), a4, *(a2 + 24), &v8, a5);
  if (!v6)
  {
    return v8;
  }

  return result;
}

uint64_t sub_214F9D66C()
{
  result = sub_2150A6310();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_214F9D6BC()
{
  result = sub_2150A6320();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_214F9D764()
{
  result = sub_2150A6350();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_214F9D7B4()
{
  result = sub_2150A6330();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_214F9D8F4()
{
  result = sub_2150A6360();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_214F9D944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = a4();
  if (v4)
  {
    return v6;
  }

  return result;
}