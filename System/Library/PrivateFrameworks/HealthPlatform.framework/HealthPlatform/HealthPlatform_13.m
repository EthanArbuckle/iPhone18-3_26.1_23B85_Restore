uint64_t sub_22850E61C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  sub_228510110(0, &qword_280DE8FB0, MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_228560580;
  *(v4 + 32) = v3;
  *(v4 + 40) = 0;
  *a2 = v4;
}

uint64_t sub_22850E69C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v26 = a2;
  sub_228510164(0, qword_280DEBC68, MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v25 - v5;
  v7 = type metadata accessor for PluginSharableModel();
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v36 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v30 = &v25 - v13;
  v14 = *a1;
  if (*a1 >> 62)
  {
    goto LABEL_19;
  }

  v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v15)
  {
    do
    {
      v16 = 0;
      v34 = v14 & 0xFFFFFFFFFFFFFF8;
      v35 = v14 & 0xC000000000000001;
      v33 = (v31 + 56);
      v17 = MEMORY[0x277D84F90];
      v32 = (v31 + 48);
      *&v12 = 136446210;
      v27 = v12;
      v28 = v15;
      v29 = v14;
      while (v35)
      {
        v18 = MEMORY[0x22AAB9D20](v16, v14);
        v19 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_17;
        }

LABEL_9:
        v20 = v18;
        PluginSharableModel.init(sharedSummary:)(v20, v6);
        (*v33)(v6, 0, 1, v7);

        if ((*v32)(v6, 1, v7) == 1)
        {
          result = sub_2285101C4(v6);
        }

        else
        {
          v21 = v30;
          sub_2284B7280(v6, v30);
          sub_2284B7280(v21, v36);
          v22 = v19;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v17 = sub_228426C8C(0, v17[2] + 1, 1, v17);
          }

          v24 = v17[2];
          v23 = v17[3];
          if (v24 >= v23 >> 1)
          {
            v17 = sub_228426C8C(v23 > 1, v24 + 1, 1, v17);
          }

          v17[2] = v24 + 1;
          result = sub_2284B7280(v36, v17 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v24);
          v19 = v22;
        }

        ++v16;
        if (v19 == v15)
        {
          goto LABEL_21;
        }
      }

      if (v16 >= *(v34 + 16))
      {
        goto LABEL_18;
      }

      v18 = *(v14 + 8 * v16 + 32);
      v19 = v16 + 1;
      if (!__OFADD__(v16, 1))
      {
        goto LABEL_9;
      }

LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      result = sub_22855DB4C();
      v15 = result;
    }

    while (result);
  }

  v17 = MEMORY[0x277D84F90];
LABEL_21:
  *v26 = v17;
  return result;
}

uint64_t Publisher.catchAndReplaceErrorWithEmpty(debugDescription:completesImmediately:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  *(v10 + 24) = a5;
  *(v10 + 32) = a1;
  *(v10 + 40) = a2;
  *(v10 + 48) = a3;
  swift_getAssociatedTypeWitness();
  sub_22855CDEC();

  swift_getWitnessTable();
  sub_22855CEBC();
}

uint64_t sub_22850EC78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v42 = a4;
  v40 = a7;
  v41 = a6;
  v43 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v39 = &v35[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v16 = &v35[-v15];
  if (a3)
  {
    v44 = 0x20726F6620;
    v45 = 0xE500000000000000;
    MEMORY[0x22AAB92A0](a2, a3);
    v17 = v45;
    v38 = v44;
  }

  else
  {
    v38 = 0;
    v17 = 0xE000000000000000;
  }

  if (qword_280DEEBE8 != -1)
  {
    swift_once();
  }

  v18 = sub_22855CABC();
  __swift_project_value_buffer(v18, qword_280DEEBF0);
  v19 = *(v11 + 16);
  v19(v16, a1, AssociatedTypeWitness);

  v20 = sub_22855CA8C();
  v21 = sub_22855D68C();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = AssociatedTypeWitness;
    v36 = v21;
    v24 = v22;
    v37 = swift_slowAlloc();
    v44 = v37;
    *v24 = 136446722;
    v25 = sub_22855E34C();
    v27 = sub_2283F8938(v25, v26, &v44);

    *(v24 + 4) = v27;
    *(v24 + 12) = 2082;
    v28 = sub_2283F8938(v38, v17, &v44);

    *(v24 + 14) = v28;
    *(v24 + 22) = 2082;
    v19(v39, v16, v23);
    v29 = sub_22855D1BC();
    v31 = v30;
    (*(v11 + 8))(v16, v23);
    v32 = sub_2283F8938(v29, v31, &v44);

    *(v24 + 24) = v32;
    _os_log_impl(&dword_2283ED000, v20, v36, "[%{public}s] Error processing sharable models%{public}s: %{public}s", v24, 0x20u);
    v33 = v37;
    swift_arrayDestroy();
    MEMORY[0x22AABAD40](v33, -1, -1);
    MEMORY[0x22AABAD40](v24, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v16, AssociatedTypeWitness);
  }

  swift_getAssociatedTypeWitness();
  return sub_22855CDDC();
}

uint64_t Publisher<>.catchModelGenerationError()(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_22850F408();
  sub_228510094(&qword_280DE9810, sub_22850F408);
  sub_22855CEBC();
}

uint64_t sub_22850F124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - v10;
  if (qword_280DEEBE8 != -1)
  {
    swift_once();
  }

  v12 = sub_22855CABC();
  __swift_project_value_buffer(v12, qword_280DEEBF0);
  v13 = *(v5 + 16);
  v13(v11, a1, AssociatedTypeWitness);
  v14 = sub_22855CA8C();
  v15 = sub_22855D68C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v24 = a2;
    v17 = v16;
    v18 = swift_slowAlloc();
    v25 = v18;
    *v17 = 136446210;
    v13(v9, v11, AssociatedTypeWitness);
    v19 = sub_22855D1CC();
    v21 = v20;
    (*(v5 + 8))(v11, AssociatedTypeWitness);
    v22 = sub_2283F8938(v19, v21, &v25);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_2283ED000, v14, v15, "PluginSharableModelChange Publisher Error: %{public}s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x22AABAD40](v18, -1, -1);
    MEMORY[0x22AABAD40](v17, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v11, AssociatedTypeWitness);
  }

  sub_228510110(0, &qword_280DE9620, MEMORY[0x277D83940]);
  return sub_22855CDDC();
}

uint64_t sub_22850F400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_22850F124(a1, a2);
}

void sub_22850F408()
{
  if (!qword_280DE9808)
  {
    sub_228510110(255, &qword_280DE9620, MEMORY[0x277D83940]);
    v0 = sub_22855CDEC();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9808);
    }
  }
}

uint64_t Publisher<>.filter(identifiers:objectTypes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v24 = a1;
  v25 = a2;
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228510110(255, &qword_280DE9620, MEMORY[0x277D83940]);
  v22[2] = v11;
  v12 = sub_22855CB6C();
  v23 = *(v12 - 8);
  v13 = *(v23 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v22 - v14;
  (*(v8 + 16))(v10, v5, a3);
  v16 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v17 = (v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;
  (*(v8 + 32))(v18 + v16, v10, a3);
  v19 = v25;
  *(v18 + v17) = v24;
  *(v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8)) = v19;

  sub_22855CE8C();

  swift_getWitnessTable();
  v20 = sub_22855CE6C();
  (*(v23 + 8))(v15, v12);
  return v20;
}

char *sub_22850F70C@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v4 = (*(*(*(v2 + 16) - 8) + 80) + 32) & ~*(*(*(v2 + 16) - 8) + 80);
  v5 = (*(*(*(v2 + 16) - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v2 + v5);
  v8 = *(v2 + v6);
  v9 = *a1;
  v11[1] = *(v2 + 16);
  v12 = v2 + v4;
  v13 = v7;
  v14 = v8;
  result = sub_22850DDE4(sub_22850F948, v11, v9);
  *a2 = result;
  return result;
}

uint64_t sub_22850F7E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  if (v6 == 2)
  {
    v9 = *a1;
    if (a2)
    {
      sub_2284D0B58(v9, 2u);

      v11 = sub_22850F980(v5, a2);
    }

    else
    {
      sub_2284D0B58(v9, 2u);
      v11 = sub_228406280(v5);
    }

    v12 = v11;
    sub_2284D0B6C(v5, 2u);
    v13 = *(v12 + 16);
    if (v13)
    {
      v14 = sub_22840770C(*(v12 + 16), 0);
      v15 = sub_2284077A8(&v16, v14 + 4, v13, v12);
      result = sub_228407958();
      if (v15 != v13)
      {
        __break(1u);
        return result;
      }

      *a4 = v14;
      v8 = 2;
LABEL_15:
      *(a4 + 8) = v8;
      return result;
    }

LABEL_14:

    *a4 = 0;
    v8 = -1;
    goto LABEL_15;
  }

  if (v6 == 1)
  {
    result = sub_22850FD00(*a1, a2, a3);
    if (*(result + 16))
    {
      *a4 = result;
      v8 = 1;
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (*(a1 + 8))
  {
    *a4 = v5;
    *(a4 + 8) = v6;
    return sub_2284D0B58(v5, v6);
  }

  else
  {
    result = sub_22850FD00(*a1, a2, a3);
    *a4 = result;
    *(a4 + 8) = 0;
  }

  return result;
}

uint64_t sub_22850F948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_22850F7E4(a1, v2[5], v2[6], a2);
}

uint64_t sub_22850F96C(uint64_t a1, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    return sub_2284D0B6C(a1, a2);
  }

  return a1;
}

uint64_t sub_22850F980(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v18[6] = *MEMORY[0x277D85DE8];
  v17 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v18[3] = &v17;
  v18[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v13 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v9 = &v16 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_22850FB20(v9, v7, v3, a2);
  }

  else
  {
    v14 = v13;
    v15 = swift_slowAlloc();
    bzero(v15, v14);
    sub_2285100DC(v15, v7, v18);
    v10 = v18[0];

    MEMORY[0x22AABAD40](v15, -1, -1);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t sub_22850FB20(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = *(a3 + 16);
  v28 = a3 + 32;
  v8 = a4 + 56;
  v26 = result;
  v27 = v7;
  while (2)
  {
    v25 = v5;
    if (v6 != v7)
    {
      while (1)
      {
        while (1)
        {
          if (v6 >= v7)
          {
            __break(1u);
LABEL_26:
            __break(1u);
            return result;
          }

          v9 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_26;
          }

          v10 = (v28 + 16 * v6);
          v12 = *v10;
          v11 = v10[1];
          v13 = *(a4 + 40);
          sub_22855E22C();

          sub_22855D20C();
          v14 = sub_22855E27C();
          v15 = -1 << *(a4 + 32);
          v16 = v14 & ~v15;
          v17 = v16 >> 6;
          v18 = 1 << v16;
          if (((1 << v16) & *(v8 + 8 * (v16 >> 6))) != 0)
          {
            break;
          }

LABEL_5:
          v6 = v9;

          if (v9 == v7)
          {
            goto LABEL_24;
          }
        }

        v19 = (*(a4 + 48) + 16 * v16);
        if (*v19 != v12 || v19[1] != v11)
        {
          v21 = ~v15;
          while ((sub_22855E15C() & 1) == 0)
          {
            v16 = (v16 + 1) & v21;
            v17 = v16 >> 6;
            v18 = 1 << v16;
            if (((1 << v16) & *(v8 + 8 * (v16 >> 6))) == 0)
            {
              v7 = v27;
              goto LABEL_5;
            }

            v22 = (*(a4 + 48) + 16 * v16);
            if (*v22 == v12 && v22[1] == v11)
            {
              break;
            }
          }
        }

        v23 = v26[v17];
        v26[v17] = v23 | v18;
        if ((v23 & v18) == 0)
        {
          break;
        }

        v7 = v27;
        v6 = v9;
        if (v9 == v27)
        {
          goto LABEL_24;
        }
      }

      v5 = v25 + 1;
      v7 = v27;
      v6 = v9;
      if (!__OFADD__(v25, 1))
      {
        continue;
      }

      __break(1u);
    }

    break;
  }

LABEL_24:

  return sub_228525FAC(v26, a2, v25, a4);
}

uint64_t sub_22850FD00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PluginSharableModel();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6 - 8);
  v45 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = (&v39 - v11);
  if (a2)
  {
    v13 = a2;
  }

  else
  {
    v13 = MEMORY[0x277D84FA0];
  }

  if (a3)
  {

    v46 = a3;
  }

  else if (MEMORY[0x277D84F90] >> 62 && sub_22855DB4C())
  {

    sub_22845FC94(MEMORY[0x277D84F90]);
    v46 = v38;
  }

  else
  {

    v46 = MEMORY[0x277D84FA0];
  }

  v14 = *(a1 + 16);

  v44 = v14;
  if (v14)
  {
    v15 = 0;
    v16 = *(v7 + 72);
    v40 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v43 = a1 + v40;
    v17 = v13 + 56;
    v18 = v46 & 0xFFFFFFFFFFFFFF8;
    if (v46 < 0)
    {
      v18 = v46;
    }

    v41 = v18;
    v42 = v46 & 0xC000000000000001;
    v19 = MEMORY[0x277D84F90];
    while (1)
    {
      sub_22848DB1C(v43 + v16 * v15, v12);
      if (*(v13 + 16))
      {
        v20 = *v12;
        v21 = v12[1];
        v22 = *(v13 + 40);
        sub_22855E22C();
        sub_22855D20C();
        v23 = sub_22855E27C();
        v24 = -1 << *(v13 + 32);
        v25 = v23 & ~v24;
        if (((*(v17 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
        {
LABEL_23:
          v29 = 0;
          if (!v42)
          {
            goto LABEL_24;
          }

          goto LABEL_28;
        }

        v26 = ~v24;
        while (1)
        {
          v27 = (*(v13 + 48) + 16 * v25);
          v28 = *v27 == v20 && v27[1] == v21;
          if (v28 || (sub_22855E15C() & 1) != 0)
          {
            break;
          }

          v25 = (v25 + 1) & v26;
          if (((*(v17 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
          {
            goto LABEL_23;
          }
        }
      }

      v29 = 1;
      if (!v42)
      {
LABEL_24:
        if (!*(v46 + 16))
        {
          goto LABEL_25;
        }

        goto LABEL_29;
      }

LABEL_28:
      if (!sub_22855DB4C())
      {
LABEL_25:
        if (v29)
        {
          goto LABEL_30;
        }

        goto LABEL_12;
      }

LABEL_29:
      v30 = v12[5];

      v32 = sub_228428BF8(v31);

      sub_22850DF48(v46, v32);
      LODWORD(v30) = v33;

      if ((v29 & v30) == 1)
      {
LABEL_30:
        sub_2284B7280(v12, v45);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v47 = v19;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_228427710(0, *(v19 + 16) + 1, 1);
          v19 = v47;
        }

        v36 = *(v19 + 16);
        v35 = *(v19 + 24);
        if (v36 >= v35 >> 1)
        {
          sub_228427710(v35 > 1, v36 + 1, 1);
          v19 = v47;
        }

        *(v19 + 16) = v36 + 1;
        sub_2284B7280(v45, v19 + v40 + v36 * v16);
        goto LABEL_13;
      }

LABEL_12:
      sub_22848D7D8(v12);
LABEL_13:
      if (++v15 == v44)
      {
        goto LABEL_36;
      }
    }
  }

  v19 = MEMORY[0x277D84F90];
LABEL_36:

  return v19;
}

uint64_t sub_228510094(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2285100DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_22850FB20(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

void sub_228510110(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for PluginSharableModelChange);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_228510164(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for PluginSharableModel();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2285101C4(uint64_t a1)
{
  sub_228510164(0, qword_280DEBC68, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ProfileDisplayName.init(shortName:termsOfAddress:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a1;
  a4[3] = a2;
  a4[4] = a3;
}

uint64_t ProfileDisplayName.shortName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ProfileDisplayName.shortNameWithSuggestion.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ProfileDisplayName.init(shortName:shortNameWithSuggestion:termsOfAddress:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t static ProfileDisplayName.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (!v8 && (sub_22855E15C() & 1) == 0)
  {
    return 0;
  }

  v9 = v2 == v5 && v4 == v6;
  if (!v9 && (sub_22855E15C() & 1) == 0)
  {
    return 0;
  }

  return sub_2284BCE44(v3, v7);
}

uint64_t sub_228510384()
{
  v1 = 0xD000000000000017;
  if (*v0 != 1)
  {
    v1 = 0x41664F736D726574;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6D614E74726F6873;
  }
}

uint64_t sub_2285103F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_228510FC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22851041C(uint64_t a1)
{
  v2 = sub_2285106D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_228510458(uint64_t a1)
{
  v2 = sub_2285106D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ProfileDisplayName.encode(to:)(void *a1)
{
  sub_228510A34(0, &qword_27D8405B0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v16 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v18 = v1[3];
  v19 = v11;
  v17 = v1[4];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2285106D8();
  sub_22855E31C();
  v24 = 0;
  v13 = v20;
  sub_22855E08C();
  if (!v13)
  {
    v14 = v17;
    v23 = 1;
    sub_22855E08C();
    v21 = v14;
    v22 = 2;
    sub_228510DA4(0, &qword_27D8405C0, MEMORY[0x277CC8930], MEMORY[0x277D83940]);
    sub_228510A98(&qword_27D8405C8, &qword_27D8405D0);
    sub_22855E0CC();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_2285106D8()
{
  result = qword_27D8405B8;
  if (!qword_27D8405B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8405B8);
  }

  return result;
}

uint64_t ProfileDisplayName.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_228510A34(0, &qword_27D8405D8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v19 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2285106D8();
  sub_22855E30C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v25 = 0;
  v12 = sub_22855DFFC();
  v14 = v13;
  v21 = v12;
  v24 = 1;
  v19 = sub_22855DFFC();
  v20 = v15;
  sub_228510DA4(0, &qword_27D8405C0, MEMORY[0x277CC8930], MEMORY[0x277D83940]);
  v23 = 2;
  sub_228510A98(&qword_27D8405E0, &qword_27D8405E8);
  sub_22855E03C();
  (*(v7 + 8))(v10, v6);
  v16 = v22;
  *a2 = v21;
  a2[1] = v14;
  v17 = v20;
  a2[2] = v19;
  a2[3] = v17;
  a2[4] = v16;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

void sub_228510A34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2285106D8();
    v7 = a3(a1, &type metadata for ProfileDisplayName.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_228510A98(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_228510DA4(255, &qword_27D8405C0, MEMORY[0x277CC8930], MEMORY[0x277D83940]);
    sub_228510B44(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_228510B44(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_22855BEAC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_228510BB8(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (!v8 && (sub_22855E15C() & 1) == 0)
  {
    return 0;
  }

  v9 = v2 == v5 && v4 == v6;
  if (!v9 && (sub_22855E15C() & 1) == 0)
  {
    return 0;
  }

  return sub_2284BCE44(v3, v7);
}

uint64_t ProfileDisplayName.termsOfAddressOptions.getter()
{
  v1 = *(v0 + 32);

  sub_22855BF0C();
  sub_228510DA4(0, &qword_27D8405F0, MEMORY[0x277CC8C88], MEMORY[0x277D84560]);
  v2 = sub_22855BF1C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_228560580;
  *(v6 + v5) = v1;
  (*(v3 + 104))(v6 + v5, *MEMORY[0x277CC8C80], v2);
  return sub_22855BEFC();
}

void sub_228510DA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_228510E08(uint64_t a1, int a2)
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

uint64_t sub_228510E50(uint64_t result, int a2, int a3)
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

unint64_t sub_228510EBC()
{
  result = qword_27D8405F8;
  if (!qword_27D8405F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8405F8);
  }

  return result;
}

unint64_t sub_228510F14()
{
  result = qword_27D840600;
  if (!qword_27D840600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840600);
  }

  return result;
}

unint64_t sub_228510F6C()
{
  result = qword_27D840608;
  if (!qword_27D840608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840608);
  }

  return result;
}

uint64_t sub_228510FC0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E74726F6873 && a2 == 0xE900000000000065;
  if (v4 || (sub_22855E15C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000228572F20 == a2 || (sub_22855E15C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x41664F736D726574 && a2 == 0xEE00737365726464)
  {

    return 2;
  }

  else
  {
    v6 = sub_22855E15C();

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

uint64_t KeywordFeatureTag.value.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_228511D24()
{
  result = swift_getKeyPath();
  qword_280DEBD48 = result;
  return result;
}

uint64_t static KeywordFeatureTag.keyPath.getter()
{
  if (qword_280DEBD50 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static KeywordFeatureTag.keyPath.setter(uint64_t a1)
{
  if (qword_280DEBD50 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_280DEBD48 = a1;
}

uint64_t (*static KeywordFeatureTag.keyPath.modify())()
{
  if (qword_280DEBD50 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_228511ED4()
{
  if (qword_280DEBD50 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

unint64_t sub_2285120B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v31 = MEMORY[0x277D84F90];
  sub_2284272C0(0, v1, 0);
  v2 = v31;
  v3 = a1 + 56;
  v4 = -1 << *(a1 + 32);
  result = sub_22855DAAC();
  v6 = result;
  v7 = a1;
  v8 = 0;
  v28 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v7 + 32))
  {
    v11 = v6 >> 6;
    if ((*(v3 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v29 = *(v7 + 36);
    v30 = *(*(v7 + 48) + v6);
    v12 = v7;
    result = ContentKind.rawValue.getter();
    v14 = v2;
    v32 = v2;
    v15 = *(v2 + 16);
    v16 = *(v14 + 24);
    if (v15 >= v16 >> 1)
    {
      v25 = v13;
      v26 = result;
      sub_2284272C0((v16 > 1), v15 + 1, 1);
      v13 = v25;
      result = v26;
      v14 = v32;
    }

    *(v14 + 16) = v15 + 1;
    v17 = v14 + 16 * v15;
    *(v17 + 32) = result;
    *(v17 + 40) = v13;
    v9 = 1 << *(v12 + 32);
    if (v6 >= v9)
    {
      goto LABEL_22;
    }

    v18 = *(v3 + 8 * v11);
    if ((v18 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    v7 = v12;
    v2 = v14;
    if (v29 != *(v12 + 36))
    {
      goto LABEL_24;
    }

    v19 = v18 & (-2 << (v6 & 0x3F));
    if (v19)
    {
      v9 = __clz(__rbit64(v19)) | v6 & 0x7FFFFFFFFFFFFFC0;
      v10 = v28;
    }

    else
    {
      v20 = v11 << 6;
      v21 = v11 + 1;
      v22 = (a1 + 64 + 8 * v11);
      v10 = v28;
      while (v21 < (v9 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          result = sub_228416CB8(v6, v29, 0);
          v7 = a1;
          v9 = __clz(__rbit64(v23)) + v20;
          goto LABEL_4;
        }
      }

      result = sub_228416CB8(v6, v29, 0);
      v7 = a1;
    }

LABEL_4:
    ++v8;
    v6 = v9;
    if (v8 == v10)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t FeedItemChangeDomain.init(contentKinds:sourceProfiles:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = sub_228429B98(a1);

  *a3 = v5;
  v6 = sub_228429EA4(a2);

  a3[1] = v6;
  return result;
}

uint64_t FeedItemChangeDomain.contentKinds.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t FeedItemChangeDomain.sourceProfiles.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

void FeedItemChangeDomain.merge(with:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  sub_2284430C8(v1);
  sub_2284431A4(v2);
}

uint64_t FeedItemChangeDomain.overlaps(with:)(uint64_t *a1)
{
  v2 = a1[1];
  v3 = *v1;
  v4 = v1[1];
  if (sub_2285124E8(*a1, v3))
  {
    v5 = 0;
  }

  else
  {
    sub_228512F1C(v2, v4);
    v5 = v6 ^ 1;
  }

  return v5 & 1;
}

uint64_t sub_2285124E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 1;
  }

  if (v2 >= v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (v2 >= v3)
  {
    v5 = a2;
  }

  else
  {
    v5 = a1;
  }

  v6 = v4 + 56;
  v7 = 1 << *(v4 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v4 + 56);
  v10 = (v7 + 63) >> 6;
  v32 = v5 + 56;

  v12 = 0;
LABEL_12:
  if (v9)
  {
    v13 = v9;
    goto LABEL_18;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v10)
    {

      return 1;
    }

    v13 = *(v6 + 8 * v14);
    ++v12;
    if (v13)
    {
      v12 = v14;
LABEL_18:
      v9 = (v13 - 1) & v13;
      if (*(v5 + 16))
      {
        v15 = *(*(v4 + 48) + (__clz(__rbit64(v13)) | (v12 << 6)));
        v16 = *(v5 + 40);
        sub_22855E22C();
        sub_22855D20C();

        result = sub_22855E27C();
        v17 = -1 << *(v5 + 32);
        v18 = result & ~v17;
        if ((*(v32 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
        {
          v29 = v9;
          v30 = v4;
          v31 = ~v17;
          while (2)
          {
            v19 = 0xE500000000000000;
            v20 = 0x7472656C61;
            switch(*(*(v5 + 48) + v18))
            {
              case 1:
                break;
              case 2:
                v19 = 0xE300000000000000;
                v20 = 7368801;
                break;
              case 3:
                v19 = 0xE700000000000000;
                v20 = 0x656C6369747261;
                break;
              case 4:
                v19 = 0xE800000000000000;
                v20 = 0x79726F6765746163;
                break;
              case 5:
                v19 = 0xE400000000000000;
                v20 = 1635017060;
                break;
              case 6:
                v20 = 0x67676F4C61746164;
                v19 = 0xEB00000000676E69;
                break;
              case 7:
                v20 = 0x6D6D755361746164;
                v19 = 0xEB00000000797261;
                break;
              case 8:
                v20 = 0xD000000000000010;
                v19 = 0x800000022856CF30;
                break;
              case 9:
                v20 = 0xD000000000000010;
                v19 = 0x800000022856CF50;
                break;
              case 0xA:
                v20 = 0xD000000000000010;
                v19 = 0x800000022856CF70;
                break;
              case 0xB:
                v20 = 0x5365727574616566;
                v19 = 0xED00007375746174;
                break;
              case 0xC:
                v19 = 0xE900000000000074;
                goto LABEL_39;
              case 0xD:
                v19 = 0xEF68637261655374;
LABEL_39:
                v20 = 0x6867696C68676968;
                break;
              case 0xE:
                v20 = 0x697461676976616ELL;
                v19 = 0xEA00000000006E6FLL;
                break;
              case 0xF:
                v19 = 0xE600000000000000;
                v20 = 0x617461446F6ELL;
                break;
              case 0x10:
                v20 = 0x726568746FLL;
                break;
              case 0x11:
                v20 = 0x6D726F6674616C70;
                v19 = 0xED00007472656C41;
                break;
              case 0x12:
                v20 = 0x6F69746F6D6F7270;
                v19 = 0xE90000000000006ELL;
                break;
              case 0x13:
                v19 = 0xE600000000000000;
                v20 = 0x74706D6F7270;
                break;
              case 0x14:
                v19 = 0xE700000000000000;
                v20 = 0x656C69666F7270;
                break;
              case 0x15:
                v20 = 0x6E6F6974616C6572;
                v19 = 0xEC00000070696873;
                break;
              case 0x16:
                v19 = 0xE800000000000000;
                v20 = 0x73676E6974746573;
                break;
              case 0x17:
                v19 = 0xE600000000000000;
                v20 = 0x657461647075;
                break;
              case 0x18:
                v19 = 0xE700000000000000;
                v20 = 0x72616265646973;
                break;
              default:
                v20 = 0xD000000000000011;
                v19 = 0x800000022856CEE0;
                break;
            }

            v21 = 0xE500000000000000;
            v22 = 0x7472656C61;
            switch(v15)
            {
              case 1:
                goto LABEL_93;
              case 2:
                v21 = 0xE300000000000000;
                if (v20 != 7368801)
                {
                  goto LABEL_95;
                }

                goto LABEL_94;
              case 3:
                v21 = 0xE700000000000000;
                v25 = 0x6C6369747261;
                goto LABEL_72;
              case 4:
                v21 = 0xE800000000000000;
                if (v20 != 0x79726F6765746163)
                {
                  goto LABEL_95;
                }

                goto LABEL_94;
              case 5:
                v21 = 0xE400000000000000;
                if (v20 != 1635017060)
                {
                  goto LABEL_95;
                }

                goto LABEL_94;
              case 6:
                v26 = 0x67676F4C61746164;
                v27 = 6778473;
                goto LABEL_82;
              case 7:
                v26 = 0x6D6D755361746164;
                v27 = 7959137;
LABEL_82:
                v21 = v27 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
                if (v20 != v26)
                {
                  goto LABEL_95;
                }

                goto LABEL_94;
              case 8:
                v21 = 0x800000022856CF30;
                if (v20 != 0xD000000000000010)
                {
                  goto LABEL_95;
                }

                goto LABEL_94;
              case 9:
                v21 = 0x800000022856CF50;
                if (v20 != 0xD000000000000010)
                {
                  goto LABEL_95;
                }

                goto LABEL_94;
              case 10:
                v21 = 0x800000022856CF70;
                if (v20 != 0xD000000000000010)
                {
                  goto LABEL_95;
                }

                goto LABEL_94;
              case 11:
                v23 = 0x5365727574616566;
                v24 = 0x7375746174;
                goto LABEL_69;
              case 12:
                v21 = 0xE900000000000074;
                goto LABEL_79;
              case 13:
                v21 = 0xEF68637261655374;
LABEL_79:
                if (v20 != 0x6867696C68676968)
                {
                  goto LABEL_95;
                }

                goto LABEL_94;
              case 14:
                v21 = 0xEA00000000006E6FLL;
                if (v20 != 0x697461676976616ELL)
                {
                  goto LABEL_95;
                }

                goto LABEL_94;
              case 15:
                v21 = 0xE600000000000000;
                if (v20 != 0x617461446F6ELL)
                {
                  goto LABEL_95;
                }

                goto LABEL_94;
              case 16:
                if (v20 != 0x726568746FLL)
                {
                  goto LABEL_95;
                }

                goto LABEL_94;
              case 17:
                v23 = 0x6D726F6674616C70;
                v24 = 0x7472656C41;
LABEL_69:
                v21 = v24 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
                if (v20 != v23)
                {
                  goto LABEL_95;
                }

                goto LABEL_94;
              case 18:
                v21 = 0xE90000000000006ELL;
                if (v20 != 0x6F69746F6D6F7270)
                {
                  goto LABEL_95;
                }

                goto LABEL_94;
              case 19:
                v21 = 0xE600000000000000;
                v22 = 0x74706D6F7270;
LABEL_93:
                if (v20 == v22)
                {
                  goto LABEL_94;
                }

                goto LABEL_95;
              case 20:
                v21 = 0xE700000000000000;
                v25 = 0x6C69666F7270;
LABEL_72:
                if (v20 != (v25 & 0xFFFFFFFFFFFFLL | 0x65000000000000))
                {
                  goto LABEL_95;
                }

                goto LABEL_94;
              case 21:
                v21 = 0xEC00000070696873;
                if (v20 != 0x6E6F6974616C6572)
                {
                  goto LABEL_95;
                }

                goto LABEL_94;
              case 22:
                v21 = 0xE800000000000000;
                if (v20 != 0x73676E6974746573)
                {
                  goto LABEL_95;
                }

                goto LABEL_94;
              case 23:
                v21 = 0xE600000000000000;
                if (v20 != 0x657461647075)
                {
                  goto LABEL_95;
                }

                goto LABEL_94;
              case 24:
                v21 = 0xE700000000000000;
                if (v20 != 0x72616265646973)
                {
                  goto LABEL_95;
                }

                goto LABEL_94;
              default:
                v21 = 0x800000022856CEE0;
                if (v20 != 0xD000000000000011)
                {
                  goto LABEL_95;
                }

LABEL_94:
                if (v19 == v21)
                {

                  return 0;
                }

LABEL_95:
                v28 = sub_22855E15C();

                if (v28)
                {

                  return 0;
                }

                v18 = (v18 + 1) & v31;
                if ((*(v32 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
                {
                  continue;
                }

                v9 = v29;
                v4 = v30;
                break;
            }

            break;
          }
        }
      }

      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void sub_228512F1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return;
  }

  if (v2 >= v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  v5 = v4 + 56;
  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  v7 = 1 << *(v4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v4 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = v6 + 56;

  v12 = 0;
  v25 = v4;
  while (1)
  {
    do
    {
      if (v9)
      {
        v13 = v9;
      }

      else
      {
        do
        {
          v14 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            __break(1u);
            return;
          }

          if (v14 >= v10)
          {
            goto LABEL_33;
          }

          v13 = *(v5 + 8 * v14);
          ++v12;
        }

        while (!v13);
        v12 = v14;
      }

      v9 = (v13 - 1) & v13;
    }

    while (!*(v6 + 16));
    v26 = (v13 - 1) & v13;
    v15 = *(*(v4 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v13)))));
    v16 = *(v6 + 40);
    sub_22855E22C();
    if (v15)
    {
      MEMORY[0x22AABA2B0](1);
      v17 = v15;
      sub_22855D9BC();
    }

    else
    {
      MEMORY[0x22AABA2B0](0);
    }

    v18 = sub_22855E27C();
    v19 = -1 << *(v6 + 32);
    v20 = v18 & ~v19;
    if ((*(v11 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
    {
      break;
    }

LABEL_14:

    v4 = v25;
    v9 = v26;
  }

  v21 = ~v19;
  while (1)
  {
    v22 = *(*(v6 + 48) + 8 * v20);
    if (!v22)
    {
      if (!v15)
      {
        goto LABEL_33;
      }

      goto LABEL_28;
    }

    if (v15)
    {
      sub_2284185F4();
      v23 = v22;
      v24 = sub_22855D9AC();

      if (v24)
      {
        break;
      }
    }

LABEL_28:
    v20 = (v20 + 1) & v21;
    if (((*(v11 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

LABEL_33:
}

unint64_t FeedItemChangeDomain.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  sub_22855DC6C();

  sub_2285120B4(v2);
  sub_2283F78D8();
  sub_2283F7928();
  v3 = sub_22855D15C();
  v5 = v4;

  MEMORY[0x22AAB92A0](v3, v5);

  MEMORY[0x22AAB92A0](0xD000000000000012, 0x8000000228573AB0);
  sub_22842B914();
  v6 = sub_22855D52C();
  MEMORY[0x22AAB92A0](v6);

  return 0xD000000000000024;
}

uint64_t static FeedItemChangeDomain.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_228441950(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_22844211C(v2, v3);
}

uint64_t sub_2285132B0()
{
  if (*v0)
  {
    result = 0x7250656372756F73;
  }

  else
  {
    result = 0x4B746E65746E6F63;
  }

  *v0;
  return result;
}

uint64_t sub_228513300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4B746E65746E6F63 && a2 == 0xEC00000073646E69;
  if (v6 || (sub_22855E15C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7250656372756F73 && a2 == 0xEE0073656C69666FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22855E15C();

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

uint64_t sub_2285133E8(uint64_t a1)
{
  v2 = sub_228513AEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_228513424(uint64_t a1)
{
  v2 = sub_228513AEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FeedItemChangeDomain.encode(to:)(void *a1)
{
  sub_228513B94(0, &qword_27D840610, sub_228513AEC, &type metadata for FeedItemChangeDomain.CodingKeys, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = &v13 - v7;
  v9 = *v1;
  v14 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_228513AEC();

  sub_22855E31C();
  v17 = v9;
  v16 = 0;
  sub_228513B94(0, &qword_27D840620, sub_22842BA18, &type metadata for ContentKind, MEMORY[0x277D83B48]);
  sub_228513BFC(&qword_27D840628, sub_22845DBD0);
  v11 = v15;
  sub_22855E0CC();

  if (!v11)
  {
    v17 = v14;
    v16 = 1;
    sub_228513B94(0, &qword_27D840630, sub_22842B914, &type metadata for SourceProfile, MEMORY[0x277D83B48]);
    sub_228513CA0(&qword_27D840638, sub_228513B40);
    sub_22855E0CC();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t FeedItemChangeDomain.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_228513B94(0, &qword_27D840648, sub_228513AEC, &type metadata for FeedItemChangeDomain.CodingKeys, MEMORY[0x277D844C8]);
  v16 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_228513AEC();
  sub_22855E30C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v11 = v6;
  sub_228513B94(0, &qword_27D840620, sub_22842BA18, &type metadata for ContentKind, MEMORY[0x277D83B48]);
  v17 = 0;
  sub_228513BFC(&qword_27D840650, sub_22845DB7C);
  v12 = v16;
  sub_22855E03C();
  v13 = v18;
  sub_228513B94(0, &qword_27D840630, sub_22842B914, &type metadata for SourceProfile, MEMORY[0x277D83B48]);
  v17 = 1;
  sub_228513CA0(&qword_27D840658, sub_228513D44);
  sub_22855E03C();
  (*(v11 + 8))(v9, v12);
  v14 = v18;
  *a2 = v13;
  a2[1] = v14;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_228513A8C(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_228441950(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_22844211C(v2, v3);
}

unint64_t sub_228513AEC()
{
  result = qword_27D840618;
  if (!qword_27D840618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840618);
  }

  return result;
}

unint64_t sub_228513B40()
{
  result = qword_27D840640;
  if (!qword_27D840640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840640);
  }

  return result;
}

void sub_228513B94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_228513BFC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_228513B94(255, &qword_27D840620, sub_22842BA18, &type metadata for ContentKind, MEMORY[0x277D83B48]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_228513CA0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_228513B94(255, &qword_27D840630, sub_22842B914, &type metadata for SourceProfile, MEMORY[0x277D83B48]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_228513D44()
{
  result = qword_27D840660;
  if (!qword_27D840660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840660);
  }

  return result;
}

unint64_t sub_228513DAC()
{
  result = qword_27D840668;
  if (!qword_27D840668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840668);
  }

  return result;
}

unint64_t sub_228513E04()
{
  result = qword_27D840670;
  if (!qword_27D840670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840670);
  }

  return result;
}

unint64_t sub_228513E5C()
{
  result = qword_27D840678;
  if (!qword_27D840678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840678);
  }

  return result;
}

uint64_t OrchestrationWorkQueueStatusObserver.__allocating_init()()
{
  v0 = swift_allocObject();
  sub_228513F44();
  v1 = swift_allocObject();
  v1[1] = 0u;
  v1[2] = 0u;
  *(v1 + 44) = 0u;
  *(v0 + 16) = v1;
  return v0;
}

uint64_t OrchestrationWorkQueueStatusObserver.init()()
{
  sub_228513F44();
  v1 = swift_allocObject();
  v1[1] = 0u;
  v1[2] = 0u;
  *(v1 + 44) = 0u;
  *(v0 + 16) = v1;
  return v0;
}

void sub_228513F44()
{
  if (!qword_280DE90F0)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_22855DCFC();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE90F0);
    }
  }
}

Swift::Void __swiftcall OrchestrationWorkQueueStatusObserver.didFinishStartup(latency:)(Swift::Double latency)
{
  v2 = sub_22855D17C();
  sub_22840012C();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_228560580;
  *(inited + 32) = 0x79636E6574616CLL;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  sub_228400184(inited);
  swift_setDeallocating();
  sub_228514B5C(inited + 32);
  sub_2283EF310(0, &qword_280DEEB30, 0x277D82BB8);
  v4 = sub_22855D0DC();

  AnalyticsSendEvent();
}

Swift::Void __swiftcall OrchestrationWorkQueueStatusObserver.didEndForegroundSession(planCount:duration:)(Swift::Int planCount, Swift::Double duration)
{
  if (qword_280DE9DF0 != -1)
  {
    swift_once();
  }

  v4 = sub_22855CABC();
  __swift_project_value_buffer(v4, qword_280DE9DF8);
  v5 = sub_22855CA8C();
  v6 = sub_22855D66C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134218240;
    *(v7 + 4) = planCount;
    *(v7 + 12) = 2048;
    *(v7 + 14) = duration;
    _os_log_impl(&dword_2283ED000, v5, v6, "Finished foreground session with %ld plans over %fs.", v7, 0x16u);
    MEMORY[0x22AABAD40](v7, -1, -1);
  }

  v8 = sub_22855D17C();
  sub_22840012C();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_228560570;
  *(inited + 32) = 0x736E616C70;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 56) = 0x6E6F697461727564;
  *(inited + 64) = 0xE800000000000000;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  sub_228400184(inited);
  swift_setDeallocating();
  sub_228400378();
  swift_arrayDestroy();
  sub_2283EF310(0, &qword_280DEEB30, 0x277D82BB8);
  v10 = sub_22855D0DC();

  AnalyticsSendEvent();
}

uint64_t sub_22851430C(void *a1)
{
  v3 = *v1;
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  sub_2283FF03C(0, &qword_27D840688, MEMORY[0x277D839B0], MEMORY[0x277CBCEA8]);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v8 = a1;
  sub_22855CE0C();
  sub_228514CF4();
  v9 = sub_22855CE6C();

  return v9;
}

void sub_22851440C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = qword_280DE9DF0;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = sub_22855CABC();
  __swift_project_value_buffer(v10, qword_280DE9DF8);
  v11 = a3;
  v12 = sub_22855CA8C();
  v13 = sub_22855D6AC();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    aBlock[0] = v15;
    *v14 = 136315395;
    v16 = sub_22855E34C();
    v29 = a4;
    v18 = sub_2283F8938(v16, v17, aBlock);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2081;
    v19 = [v11 profileIdentifier];
    v20 = [v19 description];
    v21 = sub_22855D1AC();
    v23 = v22;

    v24 = sub_2283F8938(v21, v23, aBlock);

    *(v14 + 14) = v24;
    a4 = v29;
    _os_log_impl(&dword_2283ED000, v12, v13, "[%s] Pushing shared summaries for %{private}s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AABAD40](v15, -1, -1);
    MEMORY[0x22AABAD40](v14, -1, -1);
  }

  v25 = [objc_allocWithZone(MEMORY[0x277CCD930]) initWithHealthStore_];
  v26 = swift_allocObject();
  v26[2] = sub_228476D24;
  v26[3] = v8;
  v26[4] = v11;
  v26[5] = a4;
  aBlock[4] = sub_228514D70;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2284A72DC;
  aBlock[3] = &block_descriptor_26;
  v27 = _Block_copy(aBlock);
  v28 = v11;

  [v25 pushWithCompletion_];
  _Block_release(v27);
}

void sub_22851470C(char a1, id a2, void (*a3)(id, uint64_t), uint64_t a4, void *a5)
{
  if (a2)
  {
    v7 = a2;
    if (qword_280DE9DF0 != -1)
    {
      swift_once();
    }

    v8 = sub_22855CABC();
    __swift_project_value_buffer(v8, qword_280DE9DF8);
    v9 = a2;
    v10 = sub_22855CA8C();
    v11 = sub_22855D68C();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v40 = v13;
      *v12 = 136315394;
      v14 = sub_22855E34C();
      v16 = sub_2283F8938(v14, v15, &v40);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2082;
      v17 = a2;
      sub_22842BFBC(0, &qword_280DECFE0);
      v18 = sub_22855D1CC();
      v20 = sub_2283F8938(v18, v19, &v40);

      *(v12 + 14) = v20;
      _os_log_impl(&dword_2283ED000, v10, v11, "[%s] Shared Summaries Push Error: %{public}s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v13, -1, -1);
      MEMORY[0x22AABAD40](v12, -1, -1);
    }

    v21 = a2;
    a3(a2, 1);
  }

  else
  {
    if (qword_280DE9DF0 != -1)
    {
      swift_once();
    }

    v24 = sub_22855CABC();
    __swift_project_value_buffer(v24, qword_280DE9DF8);
    v25 = a5;
    v26 = sub_22855CA8C();
    v27 = sub_22855D6AC();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v40 = v39;
      *v28 = 136315651;
      v29 = sub_22855E34C();
      v31 = sub_2283F8938(v29, v30, &v40);

      *(v28 + 4) = v31;
      *(v28 + 12) = 2081;
      v32 = [v25 profileIdentifier];
      v33 = [v32 description];
      v34 = sub_22855D1AC();
      v35 = a3;
      v37 = v36;

      v38 = sub_2283F8938(v34, v37, &v40);
      a3 = v35;

      *(v28 + 14) = v38;
      *(v28 + 22) = 1024;
      *(v28 + 24) = a1 & 1;
      _os_log_impl(&dword_2283ED000, v26, v27, "[%s] Successfully pushed shared summaries for %{private}s. Success: %{BOOL}d", v28, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v39, -1, -1);
      MEMORY[0x22AABAD40](v28, -1, -1);
    }

    a3((a1 & 1), 0);
  }
}

uint64_t OrchestrationWorkQueueStatusObserver.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t OrchestrationWorkQueueStatusObserver.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_228514B5C(uint64_t a1)
{
  sub_228400378();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_228514C08(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_228514C28(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
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

  *(result + 40) = v3;
  return result;
}

unint64_t sub_228514C6C()
{
  result = qword_280DE8EB8;
  if (!qword_280DE8EB8)
  {
    sub_2283FF03C(255, &qword_280DE8EB0, MEMORY[0x277D84F78] + 8, MEMORY[0x277CBCF38]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DE8EB8);
  }

  return result;
}

unint64_t sub_228514CF4()
{
  result = qword_27D840690;
  if (!qword_27D840690)
  {
    sub_2283FF03C(255, &qword_27D840688, MEMORY[0x277D839B0], MEMORY[0x277CBCEA8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840690);
  }

  return result;
}

uint64_t DefaultHKSharedSummaryTransactionProvider.init(healthStore:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for HealthStoreHKSharedSummaryTransactionSource();
  result = swift_allocObject();
  *(result + 16) = a1;
  a2[3] = v4;
  a2[4] = &protocol witness table for HealthStoreHKSharedSummaryTransactionSource;
  *a2 = result;
  return result;
}

uint64_t _s14HealthPlatform41DefaultHKSharedSummaryTransactionProviderV09fetchOpenF0So0deF0CSgyYaAA0iF10FetchErrorOYKF(uint64_t a1)
{
  *(v2 + 48) = v1;
  *(v2 + 56) = a1;
  return MEMORY[0x2822009F8](sub_228514DF0, 0, 0);
}

uint64_t sub_228514DF0()
{
  v1 = *(v0 + 48);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 8);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_228514F18;

  return (v8)(0, v2, v3);
}

uint64_t sub_228514F18(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 64);
  v6 = *v2;
  *(v3 + 72) = a1;
  *(v3 + 80) = a2;

  return MEMORY[0x2822009F8](sub_228515018, 0, 0);
}

uint64_t sub_228515018()
{
  v32 = v0;
  v2 = *(v0 + 80);
  if (v2)
  {

    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v3 = sub_22855CABC();
    __swift_project_value_buffer(v3, qword_280DEEC98);
    v4 = v2;
    v5 = sub_22855CA8C();
    v6 = sub_22855D6AC();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v31 = v9;
      *v7 = 136315650;
      *(v7 + 4) = sub_2283F8938(0xD000000000000029, 0x8000000228569CC0, &v31);
      *(v7 + 12) = 2080;
      *(v7 + 14) = sub_2283F8938(0xD000000000000016, 0x8000000228573C30, &v31);
      *(v7 + 22) = 2112;
      v10 = v2;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 24) = v11;
      *v8 = v11;
      _os_log_impl(&dword_2283ED000, v5, v6, "[%s][%s]: Failed to fetch open transaction: %@", v7, 0x20u);
      sub_22841DC98(v8);
      MEMORY[0x22AABAD40](v8, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v9, -1, -1);
      MEMORY[0x22AABAD40](v7, -1, -1);
    }

    v12 = *(v0 + 80);
    v13 = *(v0 + 56);
    *v13 = v12;
    *(v13 + 8) = 1;
    *(v0 + 32) = v12;
    *(v0 + 40) = 1;
    sub_228516B64();
    swift_willThrowTypedImpl();
LABEL_7:
    v14 = *(v0 + 8);

    return v14();
  }

  if (!*(v0 + 72))
  {
    goto LABEL_26;
  }

  v16 = sub_228515698(0, *(v0 + 72));

  if (!(v16 >> 62))
  {
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

  if (!sub_22855DB4C())
  {
LABEL_25:

LABEL_26:
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v25 = sub_22855CABC();
    __swift_project_value_buffer(v25, qword_280DEEC98);
    v26 = sub_22855CA8C();
    v27 = sub_22855D66C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v31 = v29;
      *v28 = 136315394;
      *(v28 + 4) = sub_2283F8938(0xD000000000000029, 0x8000000228569CC0, &v31);
      *(v28 + 12) = 2080;
      *(v28 + 14) = sub_2283F8938(0xD000000000000016, 0x8000000228573C30, &v31);
      _os_log_impl(&dword_2283ED000, v26, v27, "[%s][%s]: Could not find any valid open transactions", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v29, -1, -1);
      MEMORY[0x22AABAD40](v28, -1, -1);
    }

    v18 = 0;
    goto LABEL_31;
  }

LABEL_13:
  if ((v16 & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x22AAB9D20](0, v16);
  }

  else
  {
    if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_36;
    }

    v17 = *(v16 + 32);
  }

  v1 = v17;
  if (v16 >> 62)
  {
    if (sub_22855DB4C() < 2)
    {
      goto LABEL_18;
    }

LABEL_20:
    if (qword_280DEEC90 == -1)
    {
LABEL_21:
      v19 = sub_22855CABC();
      __swift_project_value_buffer(v19, qword_280DEEC98);
      v20 = sub_22855CA8C();
      v21 = sub_22855D68C();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v31 = v23;
        *v22 = 136315394;
        *(v22 + 4) = sub_2283F8938(0xD000000000000029, 0x8000000228569CC0, &v31);
        *(v22 + 12) = 2080;
        *(v22 + 14) = sub_2283F8938(0xD000000000000016, 0x8000000228573C30, &v31);
        _os_log_impl(&dword_2283ED000, v20, v21, "[%s][%s]: Found multiple open transactions", v22, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AABAD40](v23, -1, -1);
        MEMORY[0x22AABAD40](v22, -1, -1);
      }

      v24 = *(v0 + 56);
      *v24 = v16;
      *(v24 + 8) = 0;
      *(v0 + 16) = v16;
      *(v0 + 24) = 0;
      sub_228516B64();
      swift_willThrowTypedImpl();

      goto LABEL_7;
    }

LABEL_36:
    swift_once();
    goto LABEL_21;
  }

  if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2)
  {
    goto LABEL_20;
  }

LABEL_18:

  v18 = v1;
LABEL_31:
  v30 = *(v0 + 8);

  return v30(v18);
}

uint64_t HealthStoreHKSharedSummaryTransactionSource.__allocating_init(healthStore:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_228515698(int a1, unint64_t a2)
{
  v38 = a1;
  sub_228516CD4(0, &qword_280DEE380, MEMORY[0x277CC9578]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v36 - v5;
  v39 = MEMORY[0x277D84F90];
  if (a2 >> 62)
  {
LABEL_50:
    v7 = sub_22855DB4C();
  }

  else
  {
    v7 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v7)
  {
    a2 = MEMORY[0x277D84F90];
    v41 = MEMORY[0x277D84F90];
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
    {
      goto LABEL_51;
    }

    goto LABEL_21;
  }

  v8 = 0;
  v37 = "_TtC14HealthPlatform7Profile";
  do
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x22AAB9D20](v8, a2);
    }

    else
    {
      if (v8 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_47;
      }

      v9 = *(a2 + 8 * v8 + 32);
    }

    v10 = v9;
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v12 = [v9 metadata];
    v13 = sub_22855D0EC();

    if (*(v13 + 16) && (v14 = sub_2283F6D18(0xD000000000000032, v37 | 0x8000000000000000), (v15 & 1) != 0))
    {
      sub_2283F6E48(*(v13 + 56) + 32 * v14, v42);

      v16 = sub_22855C16C();
      v17 = swift_dynamicCast();
      v18 = *(v16 - 8);
      (*(v18 + 56))(v6, v17 ^ 1u, 1, v16);
      LODWORD(v16) = (*(v18 + 48))(v6, 1, v16) != 1;
      sub_2284648E4(v6);
      if ((v16 ^ v38))
      {
        goto LABEL_5;
      }
    }

    else
    {

      v19 = sub_22855C16C();
      (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
      sub_2284648E4(v6);
      if (v38)
      {
LABEL_5:

        goto LABEL_6;
      }
    }

    sub_22855DD1C();
    v20 = *(v39 + 16);
    sub_22855DD5C();
    sub_22855DD6C();
    sub_22855DD2C();
LABEL_6:
    ++v8;
  }

  while (v11 != v7);
  a2 = v39;
  v41 = MEMORY[0x277D84F90];
  if ((v39 & 0x8000000000000000) != 0)
  {
LABEL_51:
    v21 = sub_22855DB4C();
    if (!v21)
    {
      goto LABEL_52;
    }

LABEL_23:
    v6 = 0;
    while (2)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x22AAB9D20](v6, a2);
      }

      else
      {
        if (v6 >= *(a2 + 16))
        {
          goto LABEL_49;
        }

        v22 = *(a2 + 8 * v6 + 32);
      }

      v23 = v22;
      v24 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_48;
      }

      v25 = [v22 metadata];
      v26 = sub_22855D0EC();

      if (*(v26 + 16) && (v27 = sub_2283F6D18(0xD000000000000048, 0x800000022856FA50), (v28 & 1) != 0))
      {
        sub_2283F6E48(*(v26 + 56) + 32 * v27, v42);

        if (swift_dynamicCast())
        {
          v29 = v39;
          v30 = v40;
          goto LABEL_36;
        }
      }

      else
      {
      }

      v29 = 0;
      v30 = 0;
LABEL_36:
      if (qword_280DE9298 == -1)
      {
        if (v30)
        {
          goto LABEL_38;
        }

LABEL_24:
      }

      else
      {
        v33 = v29;
        swift_once();
        v29 = v33;
        if (!v30)
        {
          goto LABEL_24;
        }

LABEL_38:
        if (__PAIR128__(v30, v29) == xmmword_280DE92A0)
        {
        }

        else
        {
          v31 = sub_22855E15C();

          if ((v31 & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        sub_22855DD1C();
        v32 = *(v41 + 16);
        sub_22855DD5C();
        sub_22855DD6C();
        sub_22855DD2C();
      }

      ++v6;
      if (v24 == v21)
      {
        v34 = v41;
        goto LABEL_53;
      }

      continue;
    }
  }

LABEL_21:
  if ((a2 & 0x4000000000000000) != 0)
  {
    goto LABEL_51;
  }

  v21 = *(a2 + 16);
  if (v21)
  {
    goto LABEL_23;
  }

LABEL_52:
  v34 = MEMORY[0x277D84F90];
LABEL_53:

  return v34;
}

uint64_t sub_228515BF4()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 8);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_228515D1C;

  return v8(1, v2, v3);
}

uint64_t sub_228515D1C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 24);
  v6 = *v2;
  *(v3 + 32) = a1;
  *(v3 + 40) = a2;

  return MEMORY[0x2822009F8](sub_228515E1C, 0, 0);
}

uint64_t sub_228515E1C()
{
  v16 = v0;
  v1 = v0[5];
  if (v1)
  {

    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v2 = sub_22855CABC();
    __swift_project_value_buffer(v2, qword_280DEEC98);
    v3 = v1;
    v4 = sub_22855CA8C();
    v5 = sub_22855D6AC();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v15[0] = v8;
      *v6 = 136315650;
      *(v6 + 4) = sub_2283F8938(0xD000000000000029, 0x8000000228569CC0, v15);
      *(v6 + 12) = 2080;
      *(v6 + 14) = sub_2283F8938(0xD00000000000001CLL, 0x8000000228573C50, v15);
      *(v6 + 22) = 2112;
      v9 = v1;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 24) = v10;
      *v7 = v10;
      _os_log_impl(&dword_2283ED000, v4, v5, "[%s][%s]: Failed to fetch committed transactions: %@", v6, 0x20u);
      sub_22841DC98(v7);
      MEMORY[0x22AABAD40](v7, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v8, -1, -1);
      MEMORY[0x22AABAD40](v6, -1, -1);
    }

    swift_willThrow();
    v11 = v0[1];

    return v11();
  }

  else
  {
    if (v0[4])
    {
      v13 = sub_228515698(1, v0[4]);
    }

    else
    {
      v13 = MEMORY[0x277D84F90];
    }

    v14 = v0[1];

    return v14(v13);
  }
}

uint64_t sub_2285160B8(uint64_t a1)
{
  *(v1 + 32) = a1;
  v2 = swift_task_alloc();
  *(v1 + 40) = v2;
  *v2 = v1;
  v2[1] = sub_228516150;

  return _s14HealthPlatform41DefaultHKSharedSummaryTransactionProviderV09fetchOpenF0So0deF0CSgyYaAA0iF10FetchErrorOYKF(v1 + 16);
}

uint64_t sub_228516150(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v4 + 32);
    v8 = *(v4 + 24);
    *v7 = *(v4 + 16);
    *(v7 + 8) = v8;
    v9 = *(v6 + 8);

    return v9();
  }

  else
  {
    v11 = *(v6 + 8);

    return v11(a1);
  }
}

uint64_t sub_2285162AC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_228516338;

  return DefaultHKSharedSummaryTransactionProvider.fetchCommittedTransactions()();
}

uint64_t sub_228516338(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t HealthStoreHKSharedSummaryTransactionSource.fetchTransactions(committed:)(char a1)
{
  *(v2 + 32) = v1;
  *(v2 + 56) = a1;
  return MEMORY[0x2822009F8](sub_228516468, 0, 0);
}

uint64_t sub_228516468()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 56);
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(MEMORY[0x277D859E0] + 4);
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  sub_228516BC4();
  *v5 = v0;
  v5[1] = sub_22851656C;

  return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0xD00000000000001DLL, 0x8000000228573C70, sub_228516BB8, v3, v6);
}

uint64_t sub_22851656C()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_228516684, 0, 0);
}

void sub_22851669C(uint64_t a1, char a2, uint64_t a3)
{
  sub_228517378();
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  (*(v8 + 16))(aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  v10 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v11 = swift_allocObject();
  (*(v8 + 32))(v11 + v10, aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v12 = objc_allocWithZone(MEMORY[0x277CCD958]);
  aBlock[4] = sub_2285173E0;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22850D278;
  aBlock[3] = &block_descriptor_27;
  v13 = _Block_copy(aBlock);
  v14 = [v12 initWithCommittedTransactions:a2 & 1 handler:v13];
  _Block_release(v13);

  [*(a3 + 16) executeQuery_];
}

uint64_t sub_228516874(uint64_t a1, uint64_t a2, void *a3)
{

  v4 = a3;
  sub_228517378();
  return sub_22855D4BC();
}

uint64_t HealthStoreHKSharedSummaryTransactionSource.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_228516920(char a1)
{
  *(v2 + 56) = a1;
  *(v2 + 32) = *v1;
  return MEMORY[0x2822009F8](sub_228516948, 0, 0);
}

uint64_t sub_228516948()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 56);
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(MEMORY[0x277D859E0] + 4);
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  sub_228516BC4();
  *v5 = v0;
  v5[1] = sub_228516A4C;

  return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0xD00000000000001DLL, 0x8000000228573C70, sub_228517470, v3, v6);
}

uint64_t sub_228516A4C()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22851746C, 0, 0);
}

unint64_t sub_228516B64()
{
  result = qword_27D840698;
  if (!qword_27D840698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840698);
  }

  return result;
}

void sub_228516BC4()
{
  if (!qword_280DE9598)
  {
    sub_228516C50();
    sub_228516CD4(255, &qword_280DE8EC0, sub_228418D44);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280DE9598);
    }
  }
}

void sub_228516C50()
{
  if (!qword_280DE95A0)
  {
    sub_2284D0860(255, &qword_280DE95A8, &qword_280DE9280, 0x277CCD940, MEMORY[0x277D83940]);
    v0 = sub_22855DA2C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE95A0);
    }
  }
}

void sub_228516CD4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22855DA2C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t _s14HealthPlatform34HKSharedSummaryTransactionProviderP09fetchOpenE0So0cdE0CSgyYaAA0hE10FetchErrorOYKFTj(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_228516E50;

  return v11(a1, a2, a3);
}

uint64_t sub_228516E50(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of HKSharedSummaryTransactionProvider.fetchCommittedTransactions()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_228517468;

  return v9(a1, a2);
}

uint64_t sub_228517080(uint64_t a1, int a2)
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

uint64_t sub_2285170C8(uint64_t result, int a2, int a3)
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

uint64_t dispatch thunk of HKSharedSummaryTransactionSource.fetchTransactions(committed:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_228517248;

  return v11(a1, a2, a3);
}

uint64_t sub_228517248(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

void sub_228517378()
{
  if (!qword_280DE9568)
  {
    sub_228516BC4();
    v0 = sub_22855D4CC();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9568);
    }
  }
}

uint64_t sub_2285173E0(uint64_t a1, uint64_t a2, void *a3)
{
  sub_228517378();
  v7 = *(*(v6 - 8) + 80);

  return sub_228516874(a1, a2, a3);
}

uint64_t PreservedValue.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a2 - 8);
  (*(*(a2 - 8) + 32))(a3, a1, a2);
  v5 = *(v7 + 56);

  return v5(a3, 0, 1, a2);
}

uint64_t PreservedValue.executeIfSetValue(_:)(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = (MEMORY[0x28223BE20])();
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v15);
  result = (*(v5 + 48))(v13, 1, v4);
  if (result != 1)
  {
    (*(v5 + 32))(v9, v13, v4);
    a1(v9);
    return (*(v5 + 8))(v9, v4);
  }

  return result;
}

uint64_t PreservedValue.newValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6);
  v8 = *(a1 + 16);
  v9 = *(v8 - 8);
  v10 = 1;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    (*(v9 + 32))(a2, v6, v8);
    v10 = 0;
  }

  return (*(v9 + 56))(a2, v10, 1, v8);
}

uint64_t PreservedValue.assignIfSetValue<A>(_:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = a2;
  return PreservedValue.executeIfSetValue(_:)(sub_22851795C, v4, a3);
}

uint64_t sub_228517864(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(*(*(*a3 + *MEMORY[0x277D84568] + 8) - 8) + 64);
  MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v7 - v4);
  return swift_setAtReferenceWritableKeyPath();
}

uint64_t PreservedValue<A>.hasChanged(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a3;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v19 = *(TupleTypeMetadata2 - 8);
  v8 = *(v19 + 64);
  v9 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v11 = &v19 - v10;
  v12 = *(v9 + 48);
  v13 = *(a2 - 8);
  v14 = *(v13 + 16);
  v14(&v19 - v10, v3, a2);
  v14(&v11[v12], a1, a2);
  v15 = *(a2 + 16);
  v16 = *(*(v15 - 8) + 48);
  if (v16(v11, 1, v15) == 1)
  {
    (*(v13 + 8))(&v11[v12], a2);
  }

  else
  {
    if (v16(&v11[v12], 1, v15) != 1)
    {
      v17 = static PreservedValue<A>.== infix(_:_:)(v4, a1, v15, v20) ^ 1;
      (*(v19 + 8))(v11, TupleTypeMetadata2);
      return v17 & 1;
    }

    (*(v13 + 8))(v11, a2);
  }

  v17 = 0;
  return v17 & 1;
}

uint64_t static PreservedValue<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a4;
  v32 = a1;
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v29 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PreservedValue();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v33 = &v28 - v12;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v14 = *(TupleTypeMetadata2 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v18 = &v28 - v17;
  v19 = *(v16 + 48);
  v31 = v10;
  v20 = *(v10 + 16);
  v20(&v28 - v17, v32, v9);
  v20(&v18[v19], a2, v9);
  v32 = v6;
  v21 = *(v6 + 48);
  if (v21(v18, 1, a3) == 1)
  {
    v22 = 1;
    if (v21(&v18[v19], 1, a3) == 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v20(v33, v18, v9);
    if (v21(&v18[v19], 1, a3) != 1)
    {
      v23 = v32;
      v24 = v29;
      (*(v32 + 32))(v29, &v18[v19], a3);
      v25 = v33;
      v22 = sub_22855D16C();
      v26 = *(v23 + 8);
      v26(v24, a3);
      v26(v25, a3);
LABEL_8:
      v14 = v31;
      goto LABEL_9;
    }

    (*(v32 + 8))(v33, a3);
  }

  v22 = 0;
  v9 = TupleTypeMetadata2;
LABEL_9:
  (*(v14 + 8))(v18, v9);
  return v22 & 1;
}

uint64_t PreservedValue<A>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, v13);
  if ((*(v3 + 48))(v11, 1, v2) == 1)
  {
    return MEMORY[0x22AABA2B0](1);
  }

  (*(v3 + 32))(v7, v11, v2);
  MEMORY[0x22AABA2B0](0);
  sub_22855D14C();
  return (*(v3 + 8))(v7, v2);
}

uint64_t PreservedValue<A>.hashValue.getter(uint64_t a1)
{
  sub_22855E22C();
  PreservedValue<A>.hash(into:)(v3, a1);
  return sub_22855E27C();
}

uint64_t sub_2285180E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_22855E22C();
  PreservedValue<A>.hash(into:)(v6, a2);
  return sub_22855E27C();
}

uint64_t Publisher.asPrependedPreservedValue()(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for PreservedValue();
  v6 = sub_22855CB6C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - v9;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  sub_22855CE8C();

  sub_22855E12C();
  v12 = *(*(v5 - 8) + 72);
  v13 = *(*(v5 - 8) + 80);
  swift_allocObject();
  sub_22855D3CC();
  (*(*(AssociatedTypeWitness - 8) + 56))(v14, 1, 1, AssociatedTypeWitness);
  sub_22855D47C();
  swift_getWitnessTable();
  sub_22855CF3C();

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_228518390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = &v10 - v7;
  (*(v5 + 16))(&v10 - v7, a1, AssociatedTypeWitness);
  (*(v5 + 32))(a2, v8, AssociatedTypeWitness);
  return (*(v5 + 56))(a2, 0, 1, AssociatedTypeWitness);
}

uint64_t sub_2285184B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_228518390(a1, a2);
}

uint64_t sub_228518510(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_22851856C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

void sub_2285186EC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  v10 = v8 - 1;
  if (v8)
  {
    v11 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v10 = 0;
    v11 = v9 + 1;
  }

  v12 = a3 >= v10;
  v13 = a3 - v10;
  if (v13 == 0 || !v12)
  {
    goto LABEL_16;
  }

  if (v11 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v14 = ((v13 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
  if (!HIWORD(v14))
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
      v6 = v15;
    }

    else
    {
      v6 = 0;
    }

LABEL_16:
    if (v10 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_17:
    v16 = ~v10 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> (8 * v11)) + 1;
      if (v11)
      {
        v18 = v16 & ~(-1 << (8 * v11));
        bzero(a1, v11);
        if (v11 != 3)
        {
          if (v11 == 2)
          {
            *a1 = v18;
            if (v6 > 1)
            {
LABEL_55:
              if (v6 == 2)
              {
                *&a1[v11] = v17;
              }

              else
              {
                *&a1[v11] = v17;
              }

              return;
            }
          }

          else
          {
            *a1 = v16;
            if (v6 > 1)
            {
              goto LABEL_55;
            }
          }

          goto LABEL_52;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v6 > 1)
      {
        goto LABEL_55;
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
      if (v6 > 1)
      {
        goto LABEL_55;
      }
    }

LABEL_52:
    if (v6)
    {
      a1[v11] = v17;
    }

    return;
  }

LABEL_26:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *&a1[v11] = 0;
LABEL_32:
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!v6)
  {
    goto LABEL_32;
  }

  a1[v11] = 0;
  if (!a2)
  {
    return;
  }

LABEL_33:
  if (v8 >= 2)
  {
    if (a2 >= v8)
    {
      if (v9 <= 3)
      {
        v20 = ~(-1 << (8 * v9));
      }

      else
      {
        v20 = -1;
      }

      if (v9)
      {
        v21 = v20 & (a2 - v8);
        if (v9 <= 3)
        {
          v22 = v9;
        }

        else
        {
          v22 = 4;
        }

        bzero(a1, v9);
        if (v22 > 2)
        {
          if (v22 == 3)
          {
            *a1 = v21;
            a1[2] = BYTE2(v21);
          }

          else
          {
            *a1 = v21;
          }
        }

        else if (v22 == 1)
        {
          *a1 = v21;
        }

        else
        {
          *a1 = v21;
        }
      }
    }

    else
    {
      v19 = *(v7 + 56);

      v19();
    }
  }
}

uint64_t HealthExperienceStoreCreationError.hashValue.getter()
{
  v1 = *v0;
  sub_22855E22C();
  MEMORY[0x22AABA2B0](v1);
  return sub_22855E27C();
}

uint64_t HealthExperienceStore.object<A>(from:in:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[1] = *MEMORY[0x277D85DE8];
  result = HealthExperienceStore.managedObjectID(for:)(a1, a3, a5);
  if (result)
  {
    v7 = result;
    v14[0] = 0;
    v8 = [a2 existingObjectWithID:result error:v14];
    if (!v8)
    {
      v11 = v14[0];
      v12 = sub_22855BF3C();

      swift_willThrow();
      goto LABEL_6;
    }

    v9 = v8;
    v10 = v14[0];

    result = swift_dynamicCastUnknownClass();
    if (!result)
    {

LABEL_6:
      result = 0;
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

id HealthExperienceStore.managedObjectID(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a3 + 24))(a2, a3);
  v4 = [v3 persistentStoreCoordinator];

  v5 = sub_22855BFBC();
  v6 = [v4 managedObjectIDForURIRepresentation_];

  return v6;
}

unint64_t sub_228518BB0()
{
  result = qword_27D8406A0;
  if (!qword_27D8406A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8406A0);
  }

  return result;
}

unint64_t sub_228518C50()
{
  result = qword_27D83FC20;
  if (!qword_27D83FC20)
  {
    sub_22855C06C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FC20);
  }

  return result;
}

uint64_t HealthPluginHostEntitlement.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_22855DFBC();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_228518D1C()
{
  sub_22855E22C();
  sub_22855D20C();
  return sub_22855E27C();
}

uint64_t sub_228518D90()
{
  sub_22855E22C();
  sub_22855D20C();
  return sub_22855E27C();
}

uint64_t sub_228518DE4@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_22855DFBC();

  *a2 = v5 != 0;
  return result;
}

CFTypeRef NSXPCConnection.value<A>(for:)()
{
  sub_22855D33C();
  v0 = NSXPCConnection.value(for:)(v2, v3);

  return v0;
}

CFTypeRef NSXPCConnection.value(for:)(uint64_t a1, unint64_t a2)
{
  v40 = *MEMORY[0x277D85DE8];
  [v2 auditToken];
  v5 = SecTaskCreateWithAuditToken(0, &token);
  if (!v5)
  {
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v9 = sub_22855CABC();
    __swift_project_value_buffer(v9, qword_280DEEC98);
    v10 = v2;
    v6 = sub_22855CA8C();
    v11 = sub_22855D68C();

    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *token.val = v13;
      *v12 = 136315138;
      v14 = [v10 debugDescription];
      v15 = sub_22855D1AC();
      v17 = v16;

      v18 = sub_2283F8938(v15, v17, &token);

      *(v12 + 4) = v18;
      _os_log_impl(&dword_2283ED000, v6, v11, "Could not get secTask from XPC connection %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x22AABAD40](v13, -1, -1);
      MEMORY[0x22AABAD40](v12, -1, -1);
    }

    goto LABEL_23;
  }

  v6 = v5;
  *token.val = 0;
  v7 = sub_22855D17C();
  v8 = SecTaskCopyValueForEntitlement(v6, v7, &token);

  if (!v8)
  {
    if (*token.val)
    {
      v19 = qword_280DEEC90;
      v20 = *token.val;
      if (v19 != -1)
      {
        swift_once();
      }

      v21 = sub_22855CABC();
      __swift_project_value_buffer(v21, qword_280DEEC98);

      v22 = v20;
      v23 = sub_22855CA8C();
      v24 = sub_22855D68C();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v38 = v26;
        *v25 = 136315394;
        *(v25 + 4) = sub_2283F8938(a1, a2, &v38);
        *(v25 + 12) = 2080;
        type metadata accessor for CFError(0);
        v27 = v22;
        v28 = sub_22855D1BC();
        v30 = sub_2283F8938(v28, v29, &v38);

        *(v25 + 14) = v30;
        _os_log_impl(&dword_2283ED000, v23, v24, "Could not get value for entitlement %s: %s", v25, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AABAD40](v26, -1, -1);
        MEMORY[0x22AABAD40](v25, -1, -1);

        v31 = *token.val;
        if (!*token.val)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }
    }

    else
    {
      if (qword_280DEEC90 != -1)
      {
        swift_once();
      }

      v32 = sub_22855CABC();
      __swift_project_value_buffer(v32, qword_280DEEC98);

      v23 = sub_22855CA8C();
      v33 = sub_22855D68C();

      if (os_log_type_enabled(v23, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v38 = v35;
        *v34 = 136315138;
        *(v34 + 4) = sub_2283F8938(a1, a2, &v38);
        _os_log_impl(&dword_2283ED000, v23, v33, "Missing value for entitlement %s", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v35);
        MEMORY[0x22AABAD40](v35, -1, -1);
        MEMORY[0x22AABAD40](v34, -1, -1);
      }
    }

    v31 = *token.val;
    if (!*token.val)
    {
LABEL_23:

      v8 = 0;
      goto LABEL_24;
    }

LABEL_22:

    goto LABEL_23;
  }

  if (*token.val)
  {
  }

LABEL_24:
  v36 = *MEMORY[0x277D85DE8];
  return v8;
}

unint64_t sub_2285193A4()
{
  result = qword_27D8406A8;
  if (!qword_27D8406A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8406A8);
  }

  return result;
}

uint64_t sub_228519408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = -1 << *(a1 + 32);
  v5 = sub_22855DAAC();
  v6 = 1;
  if (v5 != 1 << *(a1 + 32))
  {
    sub_22845F8B0(v5, *(a1 + 36), a1, a2);
    v6 = 0;
  }

  v7 = type metadata accessor for UserProfile();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2, v6, 1, v7);
}

uint64_t sub_2285194C4(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_22855DAEC();
    v5 = v4;
    v6 = sub_22855DBAC();
    v8 = v7;
    v9 = MEMORY[0x22AAB9B90](v3, v5, v6, v7);
    sub_228416CB8(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_228416CB8(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v3 = sub_22855DAAC();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_22845F970(v3, v5, v2 != 0, a1);
  v13 = v12;
  sub_228416CB8(v3, v5, v2 != 0);
  return v13;
}

uint64_t static InputSignalSet.LookupKey.summarySharingProfileDisplayName.getter()
{
  v0 = sub_22855C85C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_22855C84C();
  type metadata accessor for SummarySharingProfileDisplayNameInputSignal();
  return sub_22855C61C();
}

uint64_t static SummarySharingProfileDisplayNameInputSignal.identityConfiguration.getter()
{
  v0 = sub_22855C85C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_22855C84C();
  return sub_22855C82C();
}

uint64_t SummarySharingProfileDisplayNameInputSignal.observer.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return swift_unknownObjectRetain();
}

uint64_t SummarySharingProfileDisplayNameInputSignal.__allocating_init(observer:healthStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  SummarySharingProfileDisplayNameInputSignal.init(observer:healthStore:)(a1, a2, a3);
  return v6;
}

void SummarySharingProfileDisplayNameInputSignal.init(observer:healthStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = type metadata accessor for SummarySharingProfileDisplayNameInputSignal.State();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v11 = 0;
  v12 = *(v9 + 28);
  sub_2285199F4();
  (*(*(v13 - 8) + 56))(&v11[v12], 1, 1, v13);
  sub_228519B74();
  v15 = *(v14 + 52);
  v16 = (*(v14 + 48) + 3) & 0x1FFFFFFFCLL;
  v17 = swift_allocObject();
  *(v17 + ((*(*v17 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_228519BDC(v11, v17 + *(*v17 + *MEMORY[0x277D841D0] + 16));
  v3[5] = v17;
  v18 = [a3 profileIdentifier];
  v19 = [v18 type];

  if (v19 == 2)
  {
    v3[2] = a1;
    v3[3] = a2;
    v3[4] = a3;
  }

  else
  {
    __break(1u);
  }
}

uint64_t type metadata accessor for SummarySharingProfileDisplayNameInputSignal.State()
{
  result = qword_27D8406F8;
  if (!qword_27D8406F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2285199F4()
{
  if (!qword_27D8406B0)
  {
    sub_228519A78();
    sub_228519ACC();
    sub_228519B20();
    v0 = sub_22855C7AC();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8406B0);
    }
  }
}

unint64_t sub_228519A78()
{
  result = qword_27D8406B8;
  if (!qword_27D8406B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8406B8);
  }

  return result;
}

unint64_t sub_228519ACC()
{
  result = qword_27D8406C0;
  if (!qword_27D8406C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8406C0);
  }

  return result;
}

unint64_t sub_228519B20()
{
  result = qword_27D8406C8;
  if (!qword_27D8406C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8406C8);
  }

  return result;
}

void sub_228519B74()
{
  if (!qword_27D8406D0)
  {
    type metadata accessor for SummarySharingProfileDisplayNameInputSignal.State();
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_22855DCFC();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8406D0);
    }
  }
}

uint64_t sub_228519BDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummarySharingProfileDisplayNameInputSignal.State();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t SummarySharingProfileDisplayNameInputSignal.dependencyConfigurations(for:)()
{
  v0 = sub_22855C85C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_22851C41C(0, &qword_280DE8F50, sub_22842DFA0, MEMORY[0x277D84560]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_228560580;
  *(v2 + 56) = sub_22855C83C();
  *(v2 + 64) = sub_22851B508(&qword_280DE9F08, 255, MEMORY[0x277D11C38]);
  __swift_allocate_boxed_opaque_existential_1((v2 + 32));
  sub_22855C84C();
  sub_22855C82C();
  return v2;
}

uint64_t SummarySharingProfileDisplayNameInputSignal.dependencyDidUpdate(anchors:)()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for SummarySharingProfileDisplayNameInputSignal.State();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22855C85C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_2285199F4();
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22851A080(&v26);
  v15 = v28;
  v23 = v27;
  v24 = v26;
  sub_22855C84C();
  v27 = v23;
  v26 = v24;
  v28 = v15;
  sub_228519A78();
  sub_228519ACC();
  sub_228519B20();
  sub_22855C79C();
  v16 = v1[5];
  v25 = v14;
  v17 = *(*v16 + *MEMORY[0x277D841D0] + 16);
  v18 = (*(*v16 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v16 + v18));
  sub_22851B490(v16 + v17, v6);
  os_unfair_lock_unlock((v16 + v18));
  if (*v6 == 1)
  {
    v19 = v1[2];
    v20 = v1[3];
    swift_getObjectType();
    *&v26 = v1;
    sub_22851B508(&qword_27D8406D8, v21, type metadata accessor for SummarySharingProfileDisplayNameInputSignal);
    sub_22855C78C();
  }

  sub_22851B4AC(v6);
  return (*(v11 + 8))(v14, v10);
}

double sub_22851A080@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sub_22855C85C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_22851C41C(0, &qword_27D840708, type metadata accessor for SummarySharingInputSignal, MEMORY[0x277D11BC0]);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v11 = &v30 - v10;
  sub_22851C41C(0, &qword_280DE9E60, sub_22846F080, MEMORY[0x277D83D88]);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v30 - v14;
  sub_22855C84C();
  type metadata accessor for SummarySharingInputSignal();
  sub_22855C61C();
  sub_22851B508(&qword_280DEB2B0, 255, type metadata accessor for SummarySharingInputSignal);
  sub_22855C81C();
  (*(v8 + 8))(v11, v7);
  sub_22846F080();
  v17 = v16;
  v18 = *(v16 - 8);
  if ((*(v18 + 48))(v15, 1, v16) == 1)
  {
    sub_22851C120(v15, &qword_280DE9E60, sub_22846F080);
    if (qword_280DE9DF0 != -1)
    {
      swift_once();
    }

    v19 = sub_22855CABC();
    __swift_project_value_buffer(v19, qword_280DE9DF8);
    v20 = sub_22855CA8C();
    v21 = sub_22855D68C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *&v31 = v23;
      *v22 = 136446210;
      v24 = sub_22855E34C();
      v26 = sub_2283F8938(v24, v25, &v31);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_2283ED000, v20, v21, "%{public}s: Missing anchor for dependent signal", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x22AABAD40](v23, -1, -1);
      MEMORY[0x22AABAD40](v22, -1, -1);
    }
  }

  else
  {
    sub_22855C8EC();
    (*(v18 + 8))(v15, v17);
    v27 = sub_22851A600();

    if (v27)
    {
      sub_22851AAF4(v27, &v31);

      v28 = v32;
      *a1 = v31;
      *(a1 + 16) = v28;
      result = *&v33;
      *(a1 + 24) = v33;
      return result;
    }
  }

  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_22851A508@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(type metadata accessor for SummarySharingProfileDisplayNameInputSignal.State() + 20);
  sub_22851C120(a1 + v6, &qword_27D8406E0, sub_2285199F4);
  sub_2285199F4();
  v8 = v7;
  v9 = *(v7 - 8);
  (*(v9 + 16))(a1 + v6, a2, v7);
  (*(v9 + 56))(a1 + v6, 0, 1, v8);
  return sub_22851C3B8(a1, a3);
}

void *sub_22851A600()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_22855C1DC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  v9 = sub_22851B694(v8, v0, v2);
  v10 = sub_2285194C4(v9);
  if (v10)
  {
    v11 = v10;
    if ((v9 & 0xC000000000000001) != 0)
    {
      v12 = sub_22855DB4C();
    }

    else
    {
      v12 = *(v9 + 16);
    }

    if (v12 == 1)
    {
      return v11;
    }

    if (qword_280DE9DF0 != -1)
    {
      swift_once();
    }

    v28 = sub_22855CABC();
    __swift_project_value_buffer(v28, qword_280DE9DF8);

    v29 = sub_22855CA8C();
    v30 = sub_22855D68C();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v44[0] = v43;
      *v31 = 136446466;
      v32 = sub_22855E34C();
      v34 = sub_2283F8938(v32, v33, v44);

      *(v31 + 4) = v34;
      *(v31 + 12) = 2082;
      v35 = [v1[4] profileIdentifier];
      v36 = [v35 identifier];

      sub_22855C1BC();
      v37 = sub_22855C17C();
      v39 = v38;
      (*(v4 + 8))(v7, v3);
      v40 = sub_2283F8938(v37, v39, v44);

      *(v31 + 14) = v40;
      _os_log_impl(&dword_2283ED000, v29, v30, "%{public}s: Got multiple entries matching profile identifier %{public}s", v31, 0x16u);
      v41 = v43;
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v41, -1, -1);
      MEMORY[0x22AABAD40](v31, -1, -1);
    }
  }

  else
  {

    if (qword_280DE9DF0 != -1)
    {
      swift_once();
    }

    v13 = sub_22855CABC();
    __swift_project_value_buffer(v13, qword_280DE9DF8);

    v14 = sub_22855CA8C();
    v15 = sub_22855D68C();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v44[0] = v17;
      *v16 = 136446466;
      v18 = sub_22855E34C();
      v20 = sub_2283F8938(v18, v19, v44);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2082;
      v21 = [v1[4] profileIdentifier];
      v22 = [v21 identifier];

      sub_22855C1BC();
      v23 = sub_22855C17C();
      v25 = v24;
      (*(v4 + 8))(v7, v3);
      v26 = sub_2283F8938(v23, v25, v44);

      *(v16 + 14) = v26;
      _os_log_impl(&dword_2283ED000, v14, v15, "%{public}s: Unexpectedly no entries for summary sharing profile: %{public}s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v17, -1, -1);
      MEMORY[0x22AABAD40](v16, -1, -1);
    }
  }

  return 0;
}

uint64_t sub_22851AAF4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 CNContactIdentifier];
  if (v4)
  {
    v5 = v4;
    sub_22855D1AC();
  }

  v6 = [a1 firstName];
  if (v6)
  {
    v7 = v6;
    sub_22855D1AC();
  }

  v8 = [a1 lastName];
  if (v8)
  {
    v9 = v8;
    sub_22855D1AC();
  }

  sub_22855C36C();
  v10 = [a1 primaryContactIdentifier];
  sub_22855D1AC();

  LOBYTE(v22) = 0;
  v23 = sub_22855C35C();
  v12 = v11;

  v13 = [a1 firstName];
  if (v13)
  {
    v14 = v13;
    sub_22855D1AC();
  }

  v15 = [a1 lastName];
  if (v15)
  {
    v16 = v15;
    sub_22855D1AC();
  }

  v17 = [a1 primaryContactIdentifier];
  sub_22855D1AC();

  v18 = sub_22855C35C();
  v20 = v19;

  *a2 = v23;
  a2[1] = v12;
  a2[2] = v18;
  a2[3] = v20;
  a2[4] = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_22851AD94(id *a1, uint64_t a2)
{
  v3 = *a1;
  if ([*a1 direction] != 1)
  {
    return 0;
  }

  v4 = [v3 profileIdentifier];
  v5 = [*(a2 + 32) profileIdentifier];
  v6 = v5;
  if (v4)
  {
    if (!v5)
    {

      return 0;
    }

    sub_2283EF310(0, &qword_280DEE7B0, 0x277CCD7C8);
    v7 = sub_22855D9AC();

    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {

    return 0;
  }

  if ([v3 status] < 2)
  {
    return 1;
  }

  if (qword_280DE9DF0 != -1)
  {
    swift_once();
  }

  v9 = sub_22855CABC();
  __swift_project_value_buffer(v9, qword_280DE9DF8);
  v10 = v3;
  v11 = sub_22855CA8C();
  v12 = sub_22855D68C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19 = v14;
    *v13 = 136446466;
    v15 = sub_22855E34C();
    v17 = sub_2283F8938(v15, v16, &v19);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2048;
    v18 = [v10 status];

    *(v13 + 14) = v18;
    _os_log_impl(&dword_2283ED000, v11, v12, "%{public}s: Got a matching profile identifier but entry status is %ld", v13, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x22AABAD40](v14, -1, -1);
    MEMORY[0x22AABAD40](v13, -1, -1);
  }

  else
  {
  }

  return 0;
}

Swift::Void __swiftcall SummarySharingProfileDisplayNameInputSignal.stopObservation()()
{
  v1 = *(v0 + 40);
  v2 = (v1 + *(*v1 + *MEMORY[0x277D841D0] + 16));
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  *v2 = 0;
  v4 = *(type metadata accessor for SummarySharingProfileDisplayNameInputSignal.State() + 20);
  sub_22851C120(&v2[v4], &qword_27D8406E0, sub_2285199F4);
  sub_2285199F4();
  (*(*(v5 - 8) + 56))(&v2[v4], 1, 1, v5);

  os_unfair_lock_unlock((v1 + v3));
}

uint64_t SummarySharingProfileDisplayNameInputSignal.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return v0;
}

uint64_t SummarySharingProfileDisplayNameInputSignal.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

void sub_22851B1B8()
{
  v1 = *(*v0 + 40);
  v2 = (v1 + *(*v1 + *MEMORY[0x277D841D0] + 16));
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  *v2 = 0;
  v4 = *(type metadata accessor for SummarySharingProfileDisplayNameInputSignal.State() + 20);
  sub_22851C120(&v2[v4], &qword_27D8406E0, sub_2285199F4);
  sub_2285199F4();
  (*(*(v5 - 8) + 56))(&v2[v4], 1, 1, v5);

  os_unfair_lock_unlock((v1 + v3));
}

uint64_t sub_22851B2BC()
{
  v0 = sub_22855C85C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_22851C41C(0, &qword_280DE8F50, sub_22842DFA0, MEMORY[0x277D84560]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_228560580;
  *(v2 + 56) = sub_22855C83C();
  *(v2 + 64) = sub_22851B508(&qword_280DE9F08, 255, MEMORY[0x277D11C38]);
  __swift_allocate_boxed_opaque_existential_1((v2 + 32));
  sub_22855C84C();
  sub_22855C82C();
  return v2;
}

uint64_t sub_22851B424(uint64_t a1, uint64_t a2)
{
  v3 = sub_22851B508(&qword_27D8406D8, a2, type metadata accessor for SummarySharingProfileDisplayNameInputSignal);

  return MEMORY[0x28216B080](a1, v3);
}

uint64_t sub_22851B4AC(uint64_t a1)
{
  v2 = type metadata accessor for SummarySharingProfileDisplayNameInputSignal.State();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22851B508(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_22851B550(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_22855D99C();
  v5 = -1 << *(a2 + 32);
  result = sub_22855DADC();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t *sub_22851B5D4(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_retain_n();
    sub_22851B95C(v8, a2, a3, a4, &v9);

    if (!v4)
    {
      a3 = v9;
    }

    return a3;
  }

  return result;
}

uint64_t sub_22851B694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x277D84FA0];
    v24 = MEMORY[0x277D84FA0];

    sub_22855DAFC();
    if (sub_22855DB8C())
    {
      sub_2283EF310(0, &qword_280DE9320, 0x277CCDA70);
      while (1)
      {
        swift_dynamicCast();
        v7 = sub_22851AD94(&v23, a2);
        if (v3)
        {
          break;
        }

        v8 = v23;
        if (v7)
        {
          v9 = *(v6 + 16);
          if (*(v6 + 24) <= v9)
          {
            sub_228486DB8(v9 + 1);
          }

          v6 = v24;
          v10 = *(v24 + 40);
          result = sub_22855D99C();
          v12 = v6 + 56;
          v13 = -1 << *(v6 + 32);
          v14 = result & ~v13;
          v15 = v14 >> 6;
          if (((-1 << v14) & ~*(v6 + 56 + 8 * (v14 >> 6))) != 0)
          {
            v16 = __clz(__rbit64((-1 << v14) & ~*(v6 + 56 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v17 = 0;
            v18 = (63 - v13) >> 6;
            do
            {
              if (++v15 == v18 && (v17 & 1) != 0)
              {
                __break(1u);
                return result;
              }

              v19 = v15 == v18;
              if (v15 == v18)
              {
                v15 = 0;
              }

              v17 |= v19;
              v20 = *(v12 + 8 * v15);
            }

            while (v20 == -1);
            v16 = __clz(__rbit64(~v20)) + (v15 << 6);
          }

          *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
          *(*(v6 + 48) + 8 * v16) = v8;
          ++*(v6 + 16);
        }

        else
        {
        }

        if (!sub_22855DB8C())
        {
          goto LABEL_21;
        }
      }

      v22 = v23;
    }

    else
    {
LABEL_21:
    }
  }

  else
  {

    v6 = sub_22851BB3C(a1, a2, a3);
  }

  return v6;
}

uint64_t sub_22851B918(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22851B9DC(a1, a2, a3, a4);
  v5 = v4;

  return v5;
}

uint64_t sub_22851B95C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{

  v11 = sub_22851B918(a1, a2, a3, a4);

  if (!v5)
  {
    *a5 = v11;
  }

  return result;
}

void sub_22851B9DC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = 0;
  v6 = 0;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    v23 = *(*(a3 + 48) + 8 * v15);
    v16 = v23;
    v17 = sub_22851AD94(&v23, a4);

    if (v4)
    {
      return;
    }

    if (v17)
    {
      *(a1 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v21++, 1))
      {
        __break(1u);
LABEL_16:

        sub_2285261C4(a1, a2, v21, a3);
        return;
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_16;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
}

int64_t sub_22851BB3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v30 = a3;
  v32[1] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;
  v31 = a2;

  if (v7 > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v26 = v8;
    v28 = &v26;
    MEMORY[0x28223BE20](v10);
    v27 = &v26 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v27, v9);
    v29 = 0;
    v9 = 0;
    v11 = 1 << *(a1 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v8 = v12 & *(a1 + 56);
    v13 = (v11 + 63) >> 6;
    while (v8)
    {
      v14 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_12:
      v17 = v14 | (v9 << 6);
      v32[0] = *(*(a1 + 48) + 8 * v17);
      v18 = v32[0];
      v19 = sub_22851AD94(v32, v31);
      if (v4)
      {

        swift_willThrow();
        goto LABEL_18;
      }

      v20 = v19;

      if (v20)
      {
        *&v27[(v17 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v17;
        if (__OFADD__(v29++, 1))
        {
          __break(1u);
LABEL_17:
          v13 = sub_2285261C4(v27, v26, v29, a1);
          goto LABEL_18;
        }
      }
    }

    v15 = v9;
    while (1)
    {
      v9 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v9 >= v13)
      {
        goto LABEL_17;
      }

      v16 = *(a1 + 56 + 8 * v9);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v8 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_21:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v24 = swift_slowAlloc();
  v25 = v31;

  v13 = sub_22851B5D4(v24, v8, a1, v25);

  MEMORY[0x22AABAD40](v24, -1, -1);
LABEL_18:

  v22 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t _s14HealthPlatform43SummarySharingProfileDisplayNameInputSignalC16beginObservation4from14configurationsy0A13Orchestration19OptionalValueAnchorVyAA0efG0VGSg_SayAG21IdentityConfigurationVGtF_0()
{
  v1 = *v0;
  sub_2285199F4();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22851C41C(0, &qword_27D8406E0, sub_2285199F4, MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v24 - v13;
  v15 = v0[5];
  v16 = (v15 + *(*v15 + *MEMORY[0x277D841D0] + 16));
  v17 = (*(*v15 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v15 + v17));
  *v16 = 1;
  v18 = type metadata accessor for SummarySharingProfileDisplayNameInputSignal.State();
  sub_22851C324(&v16[*(v18 + 20)], v14);
  os_unfair_lock_unlock((v15 + v17));
  sub_22851C324(v14, v12);
  if ((*(v4 + 48))(v12, 1, v3) == 1)
  {
    sub_22851C120(v14, &qword_27D8406E0, sub_2285199F4);
    v19 = v12;
  }

  else
  {
    (*(v4 + 32))(v7, v12, v3);
    v20 = v0[2];
    v21 = v0[3];
    swift_getObjectType();
    v24[1] = v0;
    sub_22851B508(&qword_27D8406D8, v22, type metadata accessor for SummarySharingProfileDisplayNameInputSignal);
    sub_22855C78C();
    (*(v4 + 8))(v7, v3);
    v19 = v14;
  }

  return sub_22851C120(v19, &qword_27D8406E0, sub_2285199F4);
}

uint64_t sub_22851C120(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_22851C41C(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_22851C278()
{
  sub_22851C41C(319, &qword_27D8406E0, sub_2285199F4, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_22851C324(uint64_t a1, uint64_t a2)
{
  sub_22851C41C(0, &qword_27D8406E0, sub_2285199F4, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22851C3B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummarySharingProfileDisplayNameInputSignal.State();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_22851C41C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void *MockFeedItemStorage.__allocating_init()()
{
  result = swift_allocObject();
  result[2] = sub_22851D830;
  result[3] = 0;
  result[4] = sub_22851D830;
  result[5] = 0;
  result[6] = sub_22851D830;
  result[7] = 0;
  result[8] = sub_22851CC04;
  result[9] = 0;
  return result;
}

uint64_t sub_22851C530@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v5 = *(v3 + 16);
  v4 = *(v3 + 24);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_22851D838;
  a2[1] = v6;
}

uint64_t sub_22851C5B0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v6 + 24);
  *(v6 + 16) = sub_22851D834;
  *(v6 + 24) = v5;
}

uint64_t sub_22851C640()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_22851C68C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_22851C6E0@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)(uint64_t *a1, uint64_t *a2)@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v5 = *(v3 + 32);
  v4 = *(v3 + 40);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_22851D7F8;
  a2[1] = v6;
}

uint64_t sub_22851C760(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v6 + 40);
  *(v6 + 32) = sub_22851D7C0;
  *(v6 + 40) = v5;
}

uint64_t sub_22851C7F0()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_22851C83C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t sub_22851C8E0@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)(uint64_t *a1, uint64_t *a2)@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v5 = *(v3 + 48);
  v4 = *(v3 + 56);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_22851D788;
  a2[1] = v6;
}

uint64_t sub_22851C960(uint64_t *a1, uint64_t *a2, void (*a3)(uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *a1;
  v10 = *a2;
  v9 = a2[1];
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = v9;

  a3(v8, a6, v11);
}

uint64_t sub_22851C9F0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v6 + 56);
  *(v6 + 48) = sub_22851D750;
  *(v6 + 56) = v5;
}

uint64_t sub_22851CA80(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *, void *), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = a1;
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  v13[0] = a7;
  v13[1] = v11;

  a4(&v14, v13);
}

uint64_t sub_22851CB14()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t sub_22851CB60(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 56);
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

uint64_t sub_22851CC38@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)(uint64_t *a1, uint64_t *a2)@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v5 = *(v3 + 64);
  v4 = *(v3 + 72);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_22851D748;
  a2[1] = v6;
}

uint64_t sub_22851CCB8(uint64_t *a1, uint64_t *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t (*)(uint64_t a1, char a2), uint64_t))
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v8 = *a2;
  v7 = a2[1];
  v9 = *(a1 + 24);
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v7;

  a3(v4, v5, v6, v9, sub_22841C06C, v10);
}

uint64_t sub_22851CD74(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v6 + 72);
  *(v6 + 64) = sub_22851D740;
  *(v6 + 72) = v5;
}

uint64_t sub_22851CE04(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, void (*a7)(void *, void *))
{
  v13[0] = a1;
  v13[1] = a2;
  v13[2] = a3;
  v14 = a4;
  v10 = swift_allocObject();
  *(v10 + 16) = a5;
  *(v10 + 24) = a6;
  v12[0] = sub_22841C0AC;
  v12[1] = v10;

  a7(v13, v12);
}

uint64_t sub_22851CEB0()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t sub_22851CEFC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 72);
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
}

uint64_t sub_22851CFA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v8 = *(v3 + 16);
  v7 = *(v3 + 24);

  v8(a1, a2, a3);
}

uint64_t sub_22851D01C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v8 = *(v3 + 32);
  v7 = *(v3 + 40);

  v8(a1, a2, a3);
}

uint64_t sub_22851D098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  v14 = *(v6 + 64);
  v13 = *(v6 + 72);

  v14(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_22851D134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v8 = *(v3 + 48);
  v7 = *(v3 + 56);

  v8(a1, a2, a3);
}

void *MockFeedItemStorage.init()()
{
  result = v0;
  v0[2] = sub_22851D830;
  v0[3] = 0;
  v0[4] = sub_22851D830;
  v0[5] = 0;
  v0[6] = sub_22851D830;
  v0[7] = 0;
  v0[8] = sub_22851CC04;
  v0[9] = 0;
  return result;
}

void *MockFeedItemStorage.deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  return v0;
}

uint64_t MockFeedItemStorage.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  return swift_deallocClassInstance();
}

uint64_t sub_22851D290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  swift_beginAccess();
  v9 = *(v7 + 32);
  v8 = *(v7 + 40);

  v9(a1, a2, a3);
}

uint64_t sub_22851D310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  swift_beginAccess();
  v9 = *(v7 + 16);
  v8 = *(v7 + 24);

  v9(a1, a2, a3);
}

uint64_t sub_22851D390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  swift_beginAccess();
  v9 = *(v7 + 48);
  v8 = *(v7 + 56);

  v9(a1, a2, a3);
}

uint64_t sub_22851D410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *v6;
  swift_beginAccess();
  v15 = *(v13 + 64);
  v14 = *(v13 + 72);

  v15(a1, a2, a3, a4, a5, a6);
}

uint64_t FeedSection.__allocating_init(context:identifier:)(void *a1)
{
  v3 = objc_opt_self();
  v4 = sub_22855D17C();
  v5 = [v3 entityForName:v4 inManagedObjectContext:a1];

  if (v5)
  {
    v6 = [objc_allocWithZone(v1) initWithEntity:v5 insertIntoManagedObjectContext:a1];
    v7 = sub_22855D17C();

    [v6 setIdentifier_];

    return v6;
  }

  else
  {
    result = sub_22855DEDC();
    __break(1u);
  }

  return result;
}

void *FeedSection.diagnosticDescription.getter()
{
  v1 = v0;
  v49 = sub_22855C16C();
  v2 = *(v49 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v49);
  v48 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22855C06C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53[0] = 0;
  v53[1] = 0xE000000000000000;
  sub_22855DC6C();

  strcpy(v53, "FeedSection ");
  BYTE5(v53[1]) = 0;
  HIWORD(v53[1]) = -5120;
  v10 = [v0 identifier];
  v11 = sub_22855D1AC();
  v13 = v12;

  MEMORY[0x22AAB92A0](v11, v13);

  MEMORY[0x22AAB92A0](0x64656566206E6920, 0xE900000000000020);
  v14 = [v1 feed];
  v15 = [v14 objectID];

  v16 = [v15 URIRepresentation];
  sub_22855C00C();

  v17 = sub_22855BF7C();
  v19 = v18;
  (*(v6 + 8))(v9, v5);
  MEMORY[0x22AAB92A0](v17, v19);

  MEMORY[0x22AAB92A0](0x20687469770ALL, 0xE600000000000000);
  v20 = [v1 feedItems];
  v21 = [v20 count];

  v51 = v21;
  v22 = sub_22855E11C();
  MEMORY[0x22AAB92A0](v22);

  MEMORY[0x22AAB92A0](0xA3A736D65746920, 0xE800000000000000);
  v23 = v53[0];
  v24 = [v1 feedItems];
  v25 = sub_22851F9AC(v24, sub_22851FE10, 0, &qword_27D840738, type metadata accessor for FeedItem);

  if (v25 < 0 || (v25 & 0x4000000000000000) != 0)
  {
    goto LABEL_15;
  }

  for (i = *(v25 + 16); i; i = sub_22855DB4C())
  {
    v27 = 0;
    v46 = "tity for FeedSection";
    v47 = v25 & 0xC000000000000001;
    v45 = ",\ndateSubmitted: ";
    v43 = (v2 + 8);
    v44 = ",\nglobal sortOrder: ";
    while (1)
    {
      if (v47)
      {
        v28 = MEMORY[0x22AAB9D20](v27, v25);
      }

      else
      {
        if (v27 >= *(v25 + 16))
        {
          goto LABEL_14;
        }

        v28 = *(v25 + 8 * v27 + 32);
      }

      v29 = v28;
      v30 = (v27 + 1);
      if (__OFADD__(v27, 1))
      {
        break;
      }

      v51 = 0;
      v52 = 0xE000000000000000;
      sub_22855DC6C();
      MEMORY[0x22AAB92A0](0x6D65744964656546, 0xE900000000000020);
      v50 = v27;
      v31 = sub_22855E11C();
      MEMORY[0x22AAB92A0](v31);

      MEMORY[0x22AAB92A0](8250, 0xE200000000000000);
      v32 = [v29 uniqueIdentifier];
      v33 = sub_22855D1AC();
      v2 = i;
      v35 = v34;

      MEMORY[0x22AAB92A0](v33, v35);

      MEMORY[0x22AAB92A0](0xD000000000000011, v46 | 0x8000000000000000);
      v36 = [v29 dateSubmitted];
      v37 = v48;
      sub_22855C13C();

      sub_228520084(&qword_280DECD88, MEMORY[0x277CC9578]);
      v38 = v49;
      v39 = sub_22855E11C();
      MEMORY[0x22AAB92A0](v39);

      (*v43)(v37, v38);
      MEMORY[0x22AAB92A0](0xD000000000000014, v45 | 0x8000000000000000);
      v50 = [v29 sortOrder];
      v40 = sub_22855E11C();
      MEMORY[0x22AAB92A0](v40);

      MEMORY[0x22AAB92A0](0xD000000000000015, v44 | 0x8000000000000000);
      v50 = [v29 sectionSortOrder];
      v41 = sub_22855E11C();
      MEMORY[0x22AAB92A0](v41);

      MEMORY[0x22AAB92A0](2570, 0xE200000000000000);
      v23 = v53;
      MEMORY[0x22AAB92A0](v51, v52);

      i = v2;

      ++v27;
      if (v30 == v2)
      {
        v23 = v53[0];
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_12:

  return v23;
}

uint64_t static FeedSection.eligibleIdentifiers.getter()
{
  v0 = sub_22845FFC8(&unk_283B7F550);
  swift_arrayDestroy();
  return v0;
}

uint64_t static ForYouSectionKind.section(for:)(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 > 0xB)
  {
    if (v1 == 12)
    {
      return 0;
    }

    if (v1 == 18)
    {
      return 1;
    }
  }

  else
  {
    if (v1 == 2)
    {
      return 3;
    }

    if (v1 == 3)
    {
      return 2;
    }
  }

  if (qword_280DEECB8 != -1)
  {
    swift_once();
  }

  v3 = sub_22855CABC();
  __swift_project_value_buffer(v3, qword_280DEECC0);
  v4 = sub_22855CA8C();
  v5 = sub_22855D68C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136315138;
    v8 = ContentKind.rawValue.getter();
    v10 = sub_2283F8938(v8, v9, &v11);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_2283ED000, v4, v5, "No section defined for contentKind %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x22AABAD40](v7, -1, -1);
    MEMORY[0x22AABAD40](v6, -1, -1);
  }

  return 4;
}

unint64_t ForYouSectionKind.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x6867696C68676968;
  v2 = 0x73656C6369747261;
  if (a1 != 2)
  {
    v2 = 0x48726F4673707061;
  }

  if (a1)
  {
    v1 = 0xD000000000000011;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_22851E2D4(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEA00000000007374;
  v3 = 0x6867696C68676968;
  v4 = *a1;
  v5 = 0x73656C6369747261;
  if (v4 == 2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v5 = 0x48726F4673707061;
    v6 = 0xED000068746C6165;
  }

  v7 = 0xD000000000000011;
  if (*a1)
  {
    v8 = 0x800000022856D770;
  }

  else
  {
    v7 = 0x6867696C68676968;
    v8 = 0xEA00000000007374;
  }

  if (*a1 <= 1u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v5;
  }

  if (v4 <= 1)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
  }

  v11 = 0xE800000000000000;
  v12 = 0x73656C6369747261;
  if (*a2 != 2)
  {
    v12 = 0x48726F4673707061;
    v11 = 0xED000068746C6165;
  }

  if (*a2)
  {
    v3 = 0xD000000000000011;
    v2 = 0x800000022856D770;
  }

  if (*a2 <= 1u)
  {
    v13 = v3;
  }

  else
  {
    v13 = v12;
  }

  if (*a2 <= 1u)
  {
    v14 = v2;
  }

  else
  {
    v14 = v11;
  }

  if (v9 == v13 && v10 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_22855E15C();
  }

  return v15 & 1;
}

uint64_t sub_22851E428()
{
  v1 = *v0;
  sub_22855E22C();
  sub_22855D20C();

  return sub_22855E27C();
}

uint64_t sub_22851E500()
{
  *v0;
  *v0;
  *v0;
  sub_22855D20C();
}

uint64_t sub_22851E5C4()
{
  v1 = *v0;
  sub_22855E22C();
  sub_22855D20C();

  return sub_22855E27C();
}

uint64_t sub_22851E698@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s14HealthPlatform17ForYouSectionKindO8rawValueACSgSS_tcfC_0();
  *a2 = result;
  return result;
}

void sub_22851E6C8(unint64_t *a1@<X8>)
{
  v2 = 0xEA00000000007374;
  v3 = 0x6867696C68676968;
  v4 = 0xE800000000000000;
  v5 = 0x73656C6369747261;
  if (*v1 != 2)
  {
    v5 = 0x48726F4673707061;
    v4 = 0xED000068746C6165;
  }

  if (*v1)
  {
    v3 = 0xD000000000000011;
    v2 = 0x800000022856D770;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_22851E76C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_22851FDFC(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_22851E7D8(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_22851E7D8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22855E10C();
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
        v5 = sub_22855D40C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_22851E9A0(v7, v8, a1, v4);
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
    return sub_22851E8D0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22851E8D0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
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
      if (v13 || (result = sub_22855E15C(), (result & 1) == 0))
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

uint64_t sub_22851E9A0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
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
      result = sub_22851F230(v8);
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
        sub_22851EF7C((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
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
        result = sub_22855E15C();
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
            result = sub_22855E15C();
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
      result = sub_2284263F0(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_2284263F0((v39 > 1), v40 + 1, 1, v8);
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
        sub_22851EF7C((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_22851F230(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_22851F1A4(v44);
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
    if (v37 || (result = sub_22855E15C(), (result & 1) == 0))
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

uint64_t sub_22851EF7C(char *__dst, char *__src, char *a3, char *a4)
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
      if (!v16 && (sub_22855E15C() & 1) != 0)
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
      if (!v21 && (sub_22855E15C() & 1) != 0)
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

uint64_t sub_22851F1A4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_22851F230(v3);
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

char *sub_22851F244(char *result, int64_t a2, char a3, char *a4)
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
    sub_2285201D4();
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

void *sub_22851F33C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_22851F590(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_22851F3CC(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_22851F590(v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v6, a2, a1);
  }

  else
  {
    v12 = swift_slowAlloc();

    v9 = sub_22851F33C(v12, v6, a2, a1);

    MEMORY[0x22AABAD40](v12, -1, -1);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t sub_22851F590(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v52 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v55 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v53 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v53);
      v25 = *v23;
      v24 = v23[1];
      v26 = *(v4 + 40);
      sub_22855E22C();

      sub_22855D20C();
      v27 = sub_22855E27C();
      v28 = -1 << *(v4 + 32);
      v29 = v27 & ~v28;
      if ((*(v19 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
      {
        v30 = ~v28;
        while (1)
        {
          v31 = (*(a4 + 48) + 16 * v29);
          v32 = *v31 == v25 && v31[1] == v24;
          if (v32 || (sub_22855E15C() & 1) != 0)
          {
            break;
          }

          v29 = (v29 + 1) & v30;
          if (((*(v19 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v52 + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v53;
        v33 = __OFADD__(v55++, 1);
        v4 = a4;
        if (v33)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          return sub_228525FAC(v52, a2, v55, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v55 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v51 = v11;
    while (v10)
    {
      v34 = __clz(__rbit64(v10));
      v54 = (v10 - 1) & v10;
LABEL_41:
      v37 = (*(v4 + 48) + 16 * (v34 | (v6 << 6)));
      v39 = *v37;
      v38 = v37[1];
      v40 = *(v5 + 40);
      sub_22855E22C();

      sub_22855D20C();
      v41 = sub_22855E27C();
      v42 = -1 << *(v5 + 32);
      v43 = v41 & ~v42;
      v44 = v43 >> 6;
      v45 = 1 << v43;
      if (((1 << v43) & *(v12 + 8 * (v43 >> 6))) != 0)
      {
        v46 = (*(v5 + 48) + 16 * v43);
        if (*v46 != v39 || v46[1] != v38)
        {
          v48 = ~v42;
          while ((sub_22855E15C() & 1) == 0)
          {
            v43 = (v43 + 1) & v48;
            v44 = v43 >> 6;
            v45 = 1 << v43;
            if (((1 << v43) & *(v12 + 8 * (v43 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v49 = (*(a3 + 48) + 16 * v43);
            if (*v49 == v39 && v49[1] == v38)
            {
              break;
            }
          }
        }

        v11 = v51;
        v52[v44] |= v45;
        v5 = a3;
        v33 = __OFADD__(v55++, 1);
        v4 = a4;
        v10 = v54;
        if (v33)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v51;
        v10 = v54;
      }
    }

    v35 = v6;
    while (1)
    {
      v6 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v36 = *(v7 + 8 * v6);
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v54 = (v36 - 1) & v36;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22851F9AC(void *a1, void (*a2)(uint64_t *__return_ptr, uint64_t *), uint64_t a3, unint64_t *a4, void (*a5)(uint64_t))
{
  v49 = a2;
  sub_2285200CC(0, a4, a5);
  v10 = v9;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v45 - v12;
  v14 = [a1 count];
  v15 = v14;
  if (v14)
  {
    if (v14 <= 0)
    {
      v16 = MEMORY[0x277D84F90];
    }

    else
    {
      sub_22844C284(0, &qword_280DED000, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
      v16 = swift_allocObject();
      v17 = _swift_stdlib_malloc_size(v16);
      v18 = v17 - 32;
      if (v17 < 32)
      {
        v18 = v17 - 25;
      }

      v16[2] = v15;
      v16[3] = (2 * (v18 >> 3)) | 1;
    }
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  v19 = v16[3];

  result = sub_22855D64C();
  v21 = &v13[*(v10 + 44)];
  *v21 = v49;
  *(v21 + 1) = a3;
  if ((v15 & 0x8000000000000000) != 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v46 = a4;
  v47 = a5;
  v22 = v16 + 4;
  v23 = v19 >> 1;
  if (v15)
  {
    v23 -= v15;
    sub_22855BF4C();
    sub_228520084(&qword_27D840730, MEMORY[0x277CC9178]);

    v24 = v49;
    while (1)
    {
      result = sub_22855DA4C();
      v52 = v54;
      v53 = v55;
      if (!*(&v55 + 1))
      {
        goto LABEL_41;
      }

      sub_228400400(&v52, v51);
      v24(&v50, v51);
      __swift_destroy_boxed_opaque_existential_0(v51);
      *v22++ = v50;
      if (!--v15)
      {
        goto LABEL_16;
      }
    }
  }

  v24 = v49;
LABEL_16:
  v25 = sub_22855BF4C();
  v26 = sub_228520084(&qword_27D840730, MEMORY[0x277CC9178]);
  sub_22855DA4C();
  v52 = v54;
  v53 = v55;
  if (*(&v55 + 1))
  {
    v48 = v13;
    while (1)
    {
      sub_228400400(&v52, v51);
      v24(&v50, v51);
      result = __swift_destroy_boxed_opaque_existential_0(v51);
      v27 = v50;
      if (!v23)
      {
        v28 = v16[3];
        if (((v28 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_38;
        }

        v29 = v26;
        v30 = v25;
        v31 = a3;
        v32 = v28 & 0xFFFFFFFFFFFFFFFELL;
        if (v32 <= 1)
        {
          v33 = 1;
        }

        else
        {
          v33 = v32;
        }

        sub_22844C284(0, &qword_280DED000, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
        v34 = swift_allocObject();
        v35 = _swift_stdlib_malloc_size(v34);
        v36 = v35 - 32;
        if (v35 < 32)
        {
          v36 = v35 - 25;
        }

        v37 = v36 >> 3;
        v34[2] = v33;
        v34[3] = (2 * (v36 >> 3)) | 1;
        v38 = (v34 + 4);
        v39 = v16[3] >> 1;
        if (v16[2])
        {
          v40 = v16 + 4;
          if (v34 != v16 || v38 >= v40 + 8 * v39)
          {
            memmove(v34 + 4, v40, 8 * v39);
          }

          v16[2] = 0;
        }

        v22 = (v38 + 8 * v39);
        v23 = (v37 & 0x7FFFFFFFFFFFFFFFLL) - v39;

        v16 = v34;
        a3 = v31;
        v25 = v30;
        v26 = v29;
        v13 = v48;
        v24 = v49;
      }

      v41 = __OFSUB__(v23--, 1);
      if (v41)
      {
        break;
      }

      *v22++ = v27;
      sub_22855DA4C();
      v52 = v54;
      v53 = v55;
      if (!*(&v55 + 1))
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

LABEL_33:
  result = sub_228520178(v13, v46, v47);
  v42 = v16[3];
  if (v42 < 2)
  {
    return v16;
  }

  v43 = v42 >> 1;
  v41 = __OFSUB__(v43, v23);
  v44 = v43 - v23;
  if (!v41)
  {
    v16[2] = v44;
    return v16;
  }

LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_22851FE10@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_22854A158(a1);
  *a2 = result;
  return result;
}

uint64_t _s14HealthPlatform11FeedSectionC03getD10Identifier4fromSSSgShySSG_tFZ_0(uint64_t a1)
{
  v2 = sub_22845FFC8(&unk_283B7F550);
  swift_arrayDestroy();

  v3 = sub_22851F3CC(v2, a1);

  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = sub_22840770C(*(v3 + 16), 0);
    v6 = sub_2284077A8(&v10, v5 + 4, v4, v3);

    sub_228407958();
    if (v6 == v4)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v5 = MEMORY[0x277D84F90];
LABEL_5:
  v10 = v5;
  sub_22851E76C(&v10);

  if (*(v10 + 2))
  {
    v7 = *(v10 + 4);
    v8 = *(v10 + 5);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

unint64_t sub_22851FFA0()
{
  result = qword_27D840710;
  if (!qword_27D840710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840710);
  }

  return result;
}

unint64_t sub_22851FFF8()
{
  result = qword_27D840718;
  if (!qword_27D840718)
  {
    sub_22844C284(255, &qword_27D840720, &type metadata for ForYouSectionKind, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D840718);
  }

  return result;
}

uint64_t sub_228520084(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2285200CC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_228450394();
    a3(255);
    sub_228520084(&qword_280DE94E8, sub_228450394);
    v5 = sub_22855DDAC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_228520178(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_2285200CC(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_2285201D4()
{
  if (!qword_280DE8F00)
  {
    sub_22842B828();
    v0 = sub_22855E12C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE8F00);
    }
  }
}

id HealthAppOrchestrationListener.init(listener:coordinator:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = &v3[OBJC_IVAR____TtC14HealthPlatform30HealthAppOrchestrationListener_coordinator];
  *&v3[OBJC_IVAR____TtC14HealthPlatform30HealthAppOrchestrationListener_coordinator + 8] = 0;
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR____TtC14HealthPlatform30HealthAppOrchestrationListener_protectedState;
  sub_228520378();
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  v9 = MEMORY[0x277D84F90];
  *&v3[v7] = v8;
  *(v8 + 16) = v9;
  *&v3[OBJC_IVAR____TtC14HealthPlatform30HealthAppOrchestrationListener_listener] = a1;
  *(v6 + 1) = a3;
  swift_unknownObjectWeakAssign();
  v13.receiver = v3;
  v13.super_class = type metadata accessor for HealthAppOrchestrationListener();
  v10 = a1;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  [v10 setDelegate_];

  swift_unknownObjectRelease();
  return v11;
}

void sub_228520378()
{
  if (!qword_280DE91B0)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_22855DCFC();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE91B0);
    }
  }
}

uint64_t sub_228520404(void **a1)
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = *a1;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_228426DE4(0, v3[2] + 1, 1, v3);
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = sub_228426DE4((v4 > 1), v5 + 1, 1, v3);
  }

  v3[2] = v5 + 1;
  v6 = &v3[2 * v5];
  v6[4] = sub_228520AFC;
  v6[5] = v2;

  *a1 = v3;
  return result;
}

id HealthAppOrchestrationListener.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HealthAppOrchestrationListener.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HealthAppOrchestrationListener();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_228520678(void *a1)
{
  v2 = v1;
  v4 = v2 + OBJC_IVAR____TtC14HealthPlatform30HealthAppOrchestrationListener_coordinator;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = *(v4 + 8);
    v8 = sub_22855D17C();
    v9 = [a1 valueForEntitlement_];

    if (v9)
    {
      sub_22855DA7C();
      swift_unknownObjectRelease();
      sub_2283F4858(v28, sub_228400E48);
      if (qword_280DEEBC8 != -1)
      {
        swift_once();
      }

      v10 = sub_22855CABC();
      __swift_project_value_buffer(v10, qword_280DEEBD0);
      v11 = a1;
      v12 = sub_22855CA8C();
      v13 = sub_22855D6AC();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        *v14 = 138412290;
        *(v14 + 4) = v11;
        *v15 = v11;
        v16 = v11;
        _os_log_impl(&dword_2283ED000, v12, v13, "Accepting orchestration connection %@", v14, 0xCu);
        sub_2283F4858(v15, sub_22841DCF4);
        MEMORY[0x22AABAD40](v15, -1, -1);
        MEMORY[0x22AABAD40](v14, -1, -1);
      }

      v17 = objc_allocWithZone(type metadata accessor for HealthAppOrchestrationServer());
      v18 = v11;
      swift_unknownObjectRetain();
      v19 = HealthAppOrchestrationServer.init(connection:coordinator:)(v18, v6, v7);
      v20 = *(v2 + OBJC_IVAR____TtC14HealthPlatform30HealthAppOrchestrationListener_protectedState);
      MEMORY[0x28223BE20](v19);
      os_unfair_lock_lock((v20 + 24));
      sub_228520AE0((v20 + 16));
      os_unfair_lock_unlock((v20 + 24));

      swift_unknownObjectRelease();
      return 1;
    }

    else
    {
      memset(v28, 0, sizeof(v28));
      sub_2283F4858(v28, sub_228400E48);
      if (qword_280DEEBC8 != -1)
      {
        swift_once();
      }

      v21 = sub_22855CABC();
      __swift_project_value_buffer(v21, qword_280DEEBD0);
      v22 = a1;
      v23 = sub_22855CA8C();
      v24 = sub_22855D68C();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        *v25 = 138412290;
        *(v25 + 4) = v22;
        *v26 = v22;
        v27 = v22;
        _os_log_impl(&dword_2283ED000, v23, v24, "Rejecting connection %@ due to missing entitlement", v25, 0xCu);
        sub_2283F4858(v26, sub_22841DCF4);
        MEMORY[0x22AABAD40](v26, -1, -1);
        MEMORY[0x22AABAD40](v25, -1, -1);
      }

      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

uint64_t sub_228520AFC@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_228520B44()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_228520BA8(uint64_t a1, uint64_t a2)
{
  v3 = sub_228521088(&qword_280DEAF38, a2, type metadata accessor for LegacyGenerationInputSignal);

  return MEMORY[0x28216B080](a1, v3);
}

uint64_t sub_228520CA8(uint64_t a1)
{
  v20 = *v1;
  v3 = sub_22855C85C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_228520F70();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2283EF6D4();
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v1[2];
  v16 = v1[3];
  sub_228520FC8(a1, v8);
  v17 = *(v11 + 48);
  if (v17(v8, 1, v10) == 1)
  {
    sub_22855C84C();
    Current = CFAbsoluteTimeGetCurrent();
    sub_22855C57C();
    if (v17(v8, 1, v10) != 1)
    {
      sub_22852102C(v8);
    }
  }

  else
  {
    (*(v11 + 32))(v14, v8, v10);
  }

  swift_getObjectType();
  Current = *&v1;
  sub_228521088(&qword_280DEAF38, v18, type metadata accessor for LegacyGenerationInputSignal);
  sub_22855C78C();
  return (*(v11 + 8))(v14, v10);
}

void sub_228520F70()
{
  if (!qword_280DE9F48)
  {
    sub_2283EF6D4();
    v0 = sub_22855DA2C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9F48);
    }
  }
}

uint64_t sub_228520FC8(uint64_t a1, uint64_t a2)
{
  sub_228520F70();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22852102C(uint64_t a1)
{
  sub_228520F70();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_228521088(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

Swift::Void __swiftcall Int.moveUp()()
{
  if (__OFADD__(*v0, 1))
  {
    __break(1u);
  }

  else
  {
    ++*v0;
  }
}

Swift::Void __swiftcall Int.moveDown()()
{
  if (__OFSUB__(*v0, 1))
  {
    __break(1u);
  }

  else
  {
    --*v0;
  }
}

id PluginFeedItem.NotificationIdentifier.sourceProfile.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t PluginFeedItem.NotificationIdentifier.pluginIdentifier.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t PluginFeedItem.NotificationIdentifier.pluginIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t PluginFeedItem.NotificationIdentifier.feedItemIdentifier.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t PluginFeedItem.NotificationIdentifier.notificationIdentifier.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t PluginFeedItem.NotificationIdentifier.init(sourceProfile:pluginIdentifier:feedItemIdentifier:notificationIdentifier:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = result;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  a8[6] = a7;
  return result;
}

uint64_t PluginFeedItem.NotificationIdentifier.description.getter()
{
  v1 = sub_22855C1DC();
  v17 = *(v1 - 8);
  v18 = v1;
  v2 = *(v17 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(v0 + 8);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  v9 = *(v0 + 32);
  v10 = *(v0 + 40);
  v11 = *(v0 + 48);
  v19 = 0;
  v20 = 0xE000000000000000;
  sub_22855DC6C();
  MEMORY[0x22AAB92A0](0xD000000000000018, 0x80000002285740B0);
  MEMORY[0x22AAB92A0](v10, v11);
  MEMORY[0x22AAB92A0](0xD000000000000015, 0x80000002285740D0);
  MEMORY[0x22AAB92A0](v8, v9);
  MEMORY[0x22AAB92A0](0xD000000000000013, 0x80000002285740F0);
  MEMORY[0x22AAB92A0](v6, v7);
  MEMORY[0x22AAB92A0](0xD000000000000014, 0x8000000228574110);
  if (v5)
  {
    v12 = [v5 identifier];
    sub_22855C1BC();

    v13 = sub_22855C17C();
    v15 = v14;
    (*(v17 + 8))(v4, v18);
  }

  else
  {
    v15 = 0xE800000000000000;
    v13 = 0x636974736F6E6761;
  }

  MEMORY[0x22AAB92A0](v13, v15);

  return v19;
}

unint64_t sub_22852142C()
{
  v1 = 0x7250656372756F73;
  v2 = 0xD000000000000016;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
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

uint64_t sub_2285214C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_228522274(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2285214E8(uint64_t a1)
{
  v2 = sub_228521FA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_228521524(uint64_t a1)
{
  v2 = sub_228521FA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PluginFeedItem.NotificationIdentifier.encode(to:)(void *a1)
{
  sub_228521FFC(0, &qword_27D8407C8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v17 - v7;
  v10 = *v1;
  v9 = *(v1 + 8);
  v11 = *(v1 + 24);
  v17[4] = *(v1 + 16);
  v17[5] = v9;
  v12 = *(v1 + 40);
  v17[2] = *(v1 + 32);
  v17[3] = v11;
  v17[0] = *(v1 + 48);
  v17[1] = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_228521FA8();
  v14 = v10;
  sub_22855E31C();
  v22 = v10;
  v21 = 0;
  sub_228513B40();
  v15 = v17[6];
  sub_22855E0CC();
  if (v15)
  {
  }

  else
  {

    v20 = 1;
    sub_22855E08C();
    v19 = 2;
    sub_22855E08C();
    v18 = 3;
    sub_22855E08C();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t PluginFeedItem.NotificationIdentifier.hash(into:)()
{
  v1 = v0[1];
  v3 = v0[2];
  v2 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[6];
  if (*v0)
  {
    MEMORY[0x22AABA2B0](1);
    sub_22855D9BC();
  }

  else
  {
    MEMORY[0x22AABA2B0](0);
  }

  sub_22855D20C();
  sub_22855D20C();

  return sub_22855D20C();
}

uint64_t PluginFeedItem.NotificationIdentifier.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  sub_22855E22C();
  if (v2)
  {
    MEMORY[0x22AABA2B0](1);
    sub_22855D9BC();
  }

  else
  {
    MEMORY[0x22AABA2B0](0);
  }

  sub_22855D20C();
  sub_22855D20C();
  sub_22855D20C();
  return sub_22855E27C();
}

void PluginFeedItem.NotificationIdentifier.init(from:)(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_228521FFC(0, &qword_27D8407D8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v25 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_228521FA8();
  sub_22855E30C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v33 = 0;
    sub_228513D44();
    sub_22855E03C();
    v12 = v34;
    v32 = 1;
    v28 = sub_22855DFFC();
    v29 = v13;
    v31 = 2;
    v26 = sub_22855DFFC();
    v27 = v14;
    v30 = 3;
    v15 = sub_22855DFFC();
    v17 = v16;
    v18 = *(v7 + 8);
    v25 = v15;
    v18(v10, v6);
    v19 = v28;
    v20 = v29;
    *a2 = v12;
    a2[1] = v19;
    v21 = v26;
    v22 = v27;
    a2[2] = v20;
    a2[3] = v21;
    v23 = v25;
    a2[4] = v22;
    a2[5] = v23;
    a2[6] = v17;
    v24 = v12;

    __swift_destroy_boxed_opaque_existential_0(a1);
  }
}

uint64_t sub_228521C28()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  sub_22855E22C();
  if (v2)
  {
    MEMORY[0x22AABA2B0](1);
    sub_22855D9BC();
  }

  else
  {
    MEMORY[0x22AABA2B0](0);
  }

  sub_22855D20C();
  sub_22855D20C();
  sub_22855D20C();
  return sub_22855E27C();
}

uint64_t sub_228521CE0()
{
  v1 = v0[1];
  v3 = v0[2];
  v2 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[6];
  if (*v0)
  {
    MEMORY[0x22AABA2B0](1);
    sub_22855D9BC();
  }

  else
  {
    MEMORY[0x22AABA2B0](0);
  }

  sub_22855D20C();
  sub_22855D20C();

  return sub_22855D20C();
}

uint64_t sub_228521D98()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  sub_22855E22C();
  if (v2)
  {
    MEMORY[0x22AABA2B0](1);
    sub_22855D9BC();
  }

  else
  {
    MEMORY[0x22AABA2B0](0);
  }

  sub_22855D20C();
  sub_22855D20C();
  sub_22855D20C();
  return sub_22855E27C();
}

uint64_t _s14HealthPlatform14PluginFeedItemV22NotificationIdentifierV2eeoiySbAE_AEtFZ_0(void *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[6];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v10 = a2[3];
  v11 = a2[4];
  v16 = a2[5];
  v17 = a1[5];
  v12 = a2[6];
  if (*a1)
  {
    if (!v8)
    {
      return 0;
    }

    v14 = a2[6];
    v15 = a1[6];
    sub_2284185F4();
    if ((sub_22855D9AC() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v14 = a2[6];
    v15 = a1[6];
    if (v8)
    {
      return 0;
    }
  }

  if ((v2 != v7 || v3 != v9) && (sub_22855E15C() & 1) == 0 || (v4 != v10 || v5 != v11) && (sub_22855E15C() & 1) == 0)
  {
    return 0;
  }

  if (v17 == v16 && v15 == v14)
  {
    return 1;
  }

  return sub_22855E15C();
}

unint64_t sub_228521FA8()
{
  result = qword_27D8407D0;
  if (!qword_27D8407D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8407D0);
  }

  return result;
}

void sub_228521FFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_228521FA8();
    v7 = a3(a1, &_s22NotificationIdentifierV10CodingKeysON, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_228522064()
{
  result = qword_27D8407E0;
  if (!qword_27D8407E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8407E0);
  }

  return result;
}

uint64_t sub_2285220B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_228522100(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_228522170()
{
  result = qword_27D8407E8;
  if (!qword_27D8407E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8407E8);
  }

  return result;
}

unint64_t sub_2285221C8()
{
  result = qword_27D8407F0;
  if (!qword_27D8407F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8407F0);
  }

  return result;
}

unint64_t sub_228522220()
{
  result = qword_27D8407F8;
  if (!qword_27D8407F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8407F8);
  }

  return result;
}

uint64_t sub_228522274(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7250656372756F73 && a2 == 0xED0000656C69666FLL;
  if (v4 || (sub_22855E15C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000228574130 == a2 || (sub_22855E15C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000228574150 == a2 || (sub_22855E15C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000228574170 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_22855E15C();

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

double sub_2285223E8(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 24);
  if (v3)
  {
    v23 = *(a1 + 8);
    v4 = *(a1 + 48);
    *&v24[8] = *(a1 + 32);
    *&v24[24] = v4;
    *&v24[40] = *(a1 + 64);
    v5 = *(a1 + 80);
    *v24 = v3;
    *&v24[56] = v5;
    v6 = a2[3];
    v17[2] = a2[2];
    v17[3] = v6;
    v17[4] = a2[4];
    v7 = a2[1];
    v17[0] = *a2;
    v17[1] = v7;
    sub_2284E4738(v17, &v18);
    v8 = *(a1 + 24);
    v9 = *(a1 + 56);
    *&v24[16] = *(a1 + 40);
    *&v24[32] = v9;
    *&v24[48] = *(a1 + 72);
    v23 = *(a1 + 8);
    *v24 = v8;
  }

  else
  {
    v10 = a2[3];
    v20 = a2[2];
    v21 = v10;
    v22 = a2[4];
    v11 = a2[1];
    v18 = *a2;
    v19 = v11;
    v12 = *(a1 + 24);
    v13 = *(a1 + 56);
    *&v24[16] = *(a1 + 40);
    *&v24[32] = v13;
    *&v24[48] = *(a1 + 72);
    v23 = *(a1 + 8);
    *v24 = v12;
    sub_22842DCDC(a2, v17);
  }

  sub_22842DC5C(&v23);
  v14 = v18;
  *(a1 + 24) = v19;
  v15 = v21;
  *(a1 + 40) = v20;
  *(a1 + 56) = v15;
  result = *&v22;
  *(a1 + 72) = v22;
  *(a1 + 8) = v14;
  return result;
}

uint64_t sub_22852250C()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t LegacyGenerationProvider.__allocating_init(environmentalState:)()
{
  swift_allocObject();
  v0 = sub_228522DF0();

  return v0;
}

uint64_t LegacyGenerationProvider.init(environmentalState:)()
{
  v0 = sub_228522DF0();

  return v0;
}

void LegacyGenerationProvider.requestBackgroundGeneration(request:)(_OWORD *a1)
{
  v2 = v1;
  v4 = sub_22855C85C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_2283EF6D4();
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = a1[3];
  v22[2] = a1[2];
  v22[3] = v12;
  v22[4] = a1[4];
  v13 = a1[1];
  v22[0] = *a1;
  v22[1] = v13;
  v14 = *(*(v2 + 16) + 16);
  v20 = v22;
  os_unfair_lock_lock(v14 + 26);
  sub_228522EE0(&v14[4]);
  os_unfair_lock_unlock(v14 + 26);
  v15 = *(v2 + 24);
  os_unfair_lock_lock((v15 + 24));
  v16 = *(v15 + 16);

  os_unfair_lock_unlock((v15 + 24));
  if (v16 != 0.0)
  {
    v17 = *(*&v16 + 16);
    v18 = *(*&v16 + 24);
    swift_getObjectType();
    sub_22855C84C();
    Current = CFAbsoluteTimeGetCurrent();
    sub_22855C57C();
    Current = v16;
    type metadata accessor for LegacyGenerationInputSignal();
    sub_2283EF774(&qword_280DEAF38, 255, type metadata accessor for LegacyGenerationInputSignal);
    sub_22855C78C();
    (*(v8 + 8))(v11, v7);
  }
}

uint64_t LegacyGenerationProvider.inputSignals(for:observer:)(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = swift_conformsToProtocol2();
  result = MEMORY[0x277D84F90];
  if (v4 && a1)
  {
    ObjectType = swift_getObjectType();
    v7 = *(v4 + 16);
    v8 = *(v7 + 16);
    swift_unknownObjectRetain();
    v9 = v8(ObjectType, v7);
    if (v9)
    {
      v10 = v9;
      v11 = [v9 profileIdentifier];
    }

    else
    {
      v11 = 0;
    }

    v12 = [objc_opt_self() primaryProfile];
    v13 = v12;
    if (v11)
    {
      if (v12)
      {
        sub_228522F1C();
        v14 = sub_22855D9AC();

        if ((v14 & 1) == 0)
        {
          goto LABEL_14;
        }

LABEL_11:
        v15 = *(v2 + 24);
        MEMORY[0x28223BE20](v12);
        os_unfair_lock_lock((v15 + 24));
        sub_228522EFC((v15 + 16), &v18);
        os_unfair_lock_unlock((v15 + 24));
        v16 = v18;
        sub_22840CB74(0, &qword_280DE8F78, &qword_280DE9F60);
        v17 = swift_allocObject();
        *(v17 + 16) = xmmword_228560580;
        *(v17 + 56) = type metadata accessor for LegacyGenerationInputSignal();
        *(v17 + 64) = sub_2283EF774(&qword_280DEAF38, 255, type metadata accessor for LegacyGenerationInputSignal);
        *(v17 + 32) = v16;
        swift_unknownObjectRelease();
        return v17;
      }

      v13 = v11;
    }

    else if (!v12)
    {
      goto LABEL_11;
    }

LABEL_14:
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_228522A6C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v8 = *a1;
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    type metadata accessor for LegacyGenerationInputSignal();
    v9 = swift_allocObject();
    v9[2] = a2;
    v9[3] = a3;
    v9[4] = a4;
    v9[5] = a5;
    *a1 = v9;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
  }

  *a6 = v9;
}

uint64_t LegacyGenerationProvider.executors(for:)(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = swift_conformsToProtocol2();
  result = MEMORY[0x277D84F90];
  if (v4 && a1)
  {
    ObjectType = swift_getObjectType();
    v7 = *(v4 + 16);
    v8 = *(v7 + 16);
    swift_unknownObjectRetain();
    v9 = v8(ObjectType, v7);
    if (v9)
    {
      v10 = v9;
      v11 = [v9 profileIdentifier];
    }

    else
    {
      v11 = 0;
    }

    v12 = [objc_opt_self() primaryProfile];
    v13 = v12;
    if (v11)
    {
      if (v12)
      {
        sub_228522F1C();
        v14 = sub_22855D9AC();

        if ((v14 & 1) == 0)
        {
          goto LABEL_14;
        }

LABEL_11:
        sub_22840CB74(0, &qword_280DE8F38, &qword_280DE9E30);
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_228560580;
        v16 = *(v2 + 16);
        type metadata accessor for LegacyGenerationExecutor();
        v17 = swift_allocObject();
        v17[2] = v16;
        v17[3] = a1;
        v17[4] = v4;
        v18 = sub_2283EF774(qword_280DEB7A0, 255, type metadata accessor for LegacyGenerationExecutor);
        *(v15 + 32) = v17;
        *(v15 + 40) = v18;

        return v15;
      }

      v13 = v11;
    }

    else if (!v12)
    {
      goto LABEL_11;
    }

LABEL_14:
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t LegacyGenerationProvider.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t LegacyGenerationProvider.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_228522DF0()
{
  type metadata accessor for LegacyGenerationProvider.RequestedGenerationState();
  v1 = swift_allocObject();
  sub_2285230D4();
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 104) = 0;
  *(v1 + 16) = v2;
  *(v0 + 16) = v1;
  sub_228523134();
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  *(v3 + 16) = 0;
  *(v0 + 24) = v3;
  sub_2283EF774(qword_280DEB650, v4, type metadata accessor for LegacyGenerationProvider);

  sub_22855C91C();

  return v0;
}

unint64_t sub_228522F1C()
{
  result = qword_280DEE7B0;
  if (!qword_280DEE7B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DEE7B0);
  }

  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_228523000(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 88))
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

uint64_t sub_22852305C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

void sub_2285230D4()
{
  if (!qword_280DE9168)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_22855DCFC();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9168);
    }
  }
}

void sub_228523134()
{
  if (!qword_280DE9140)
  {
    sub_22852319C();
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_22855DCFC();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9140);
    }
  }
}

void sub_22852319C()
{
  if (!qword_280DEAE80)
  {
    type metadata accessor for LegacyGenerationInputSignal();
    v0 = sub_22855DA2C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DEAE80);
    }
  }
}

BOOL PluginFeedItem.hasChanged(from:)(uint64_t a1)
{
  v3 = type metadata accessor for RelevantDateInterval();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228527534(0, &qword_280DEEC28, type metadata accessor for RelevantDateInterval, MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v89 - v10;
  sub_22845DCB4();
  v13 = v12;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*v1 != *a1 || *(v1 + 8) != *(a1 + 8)) && (sub_22855E15C() & 1) == 0)
  {
    return 1;
  }

  v17 = *(v1 + 32);
  v18 = *(a1 + 16);
  v19 = *(a1 + 24);
  v20 = *(a1 + 32);
  if (v17 <= 2)
  {
    if (*(v1 + 32))
    {
      if (v17 == 1)
      {
        if (v20 != 1)
        {
          return 1;
        }
      }

      else if (v20 != 2)
      {
        return 1;
      }
    }

    else if (*(a1 + 32))
    {
      return 1;
    }

    goto LABEL_18;
  }

  if (v17 == 3)
  {
    if (v20 != 3)
    {
      return 1;
    }

LABEL_18:
    if ((*(v1 + 16) != v18 || *(v1 + 24) != v19) && (sub_22855E15C() & 1) == 0)
    {
      return 1;
    }

    goto LABEL_24;
  }

  if (v17 == 4)
  {
    if (v20 != 4)
    {
      return 1;
    }

    goto LABEL_18;
  }

  if (v20 != 5 || v19 | v18)
  {
    return 1;
  }

LABEL_24:
  if ((sub_22845C148(*(v1 + 88), *(v1 + 96), *(a1 + 88), *(a1 + 96)) & 1) == 0)
  {
    return 1;
  }

  v21 = type metadata accessor for PluginFeedItem();
  v22 = v21[11];
  v23 = *(v13 + 48);
  sub_228457F0C(v1 + v22, v16);
  sub_228457F0C(a1 + v22, &v16[v23]);
  v24 = *(v4 + 48);
  if (v24(v16, 1, v3) == 1)
  {
    if (v24(&v16[v23], 1, v3) == 1)
    {
      sub_22845DD34(v16);
      goto LABEL_28;
    }

LABEL_33:
    sub_228526B54(v16, sub_22845DCB4);
    return 1;
  }

  sub_228457F0C(v16, v11);
  if (v24(&v16[v23], 1, v3) == 1)
  {
    sub_228526B54(v11, type metadata accessor for RelevantDateInterval);
    goto LABEL_33;
  }

  sub_228526BB4(&v16[v23], v7, type metadata accessor for RelevantDateInterval);
  if ((sub_22855BDDC() & 1) == 0 || *&v11[*(v3 + 20)] != *&v7[*(v3 + 20)])
  {
    sub_228526B54(v7, type metadata accessor for RelevantDateInterval);
    sub_228526B54(v11, type metadata accessor for RelevantDateInterval);
    sub_22845DD34(v16);
    return 1;
  }

  v33 = *(v3 + 24);
  v34 = *&v11[v33];
  v35 = *&v7[v33];
  sub_228526B54(v7, type metadata accessor for RelevantDateInterval);
  sub_228526B54(v11, type metadata accessor for RelevantDateInterval);
  sub_22845DD34(v16);
  if (v34 != v35)
  {
    return 1;
  }

LABEL_28:
  v25 = v21[12];
  v26 = v1;
  v27 = *(v1 + v25);
  LOBYTE(v25) = *(a1 + v25);
  v91 = v27;
  v90 = v25;
  v28 = ContentKind.rawValue.getter();
  v30 = v29;
  if (v28 == ContentKind.rawValue.getter() && v30 == v31)
  {

    v32 = v1;
  }

  else
  {
    v36 = sub_22855E15C();

    v32 = v1;
    if ((v36 & 1) == 0)
    {
      return 1;
    }
  }

  v37 = v21[16];
  v38 = (v32 + v37);
  v39 = *(v32 + v37 + 8);
  v40 = (a1 + v37);
  v41 = v40[1];
  if (v39)
  {
    if (!v41 || (*v38 != *v40 || v39 != v41) && (sub_22855E15C() & 1) == 0)
    {
      return 1;
    }
  }

  else if (v41)
  {
    return 1;
  }

  v42 = v21[27];
  v43 = v32 + v42;
  v44 = *(v32 + v42 + 16);
  v45 = (a1 + v42);
  v46 = v45[2];
  if (!v44)
  {
    if (!v46)
    {
      goto LABEL_67;
    }

    v51 = v45[2];
    goto LABEL_59;
  }

  if (!v46)
  {
LABEL_59:

LABEL_60:

    return 1;
  }

  v89 = *(v43 + 8);
  v47 = v45[1];
  if (*v43)
  {
    v48 = ".pinnedContent.summary";
  }

  else
  {
    v48 = "espiratory";
  }

  v49 = v48 | 0x8000000000000000;
  if (*v45)
  {
    v50 = ".pinnedContent.summary";
  }

  else
  {
    v50 = "espiratory";
  }

  if (v49 == (v50 | 0x8000000000000000))
  {
    swift_bridgeObjectRetain_n();

    goto LABEL_62;
  }

  v52 = sub_22855E15C();
  swift_bridgeObjectRetain_n();

  if ((v52 & 1) == 0)
  {
    swift_bridgeObjectRelease_n();
    goto LABEL_60;
  }

LABEL_62:
  if (v89 != v47 || v44 != v46)
  {
    v53 = sub_22855E15C();
    swift_bridgeObjectRelease_n();

    if ((v53 & 1) == 0)
    {
      return 1;
    }

    goto LABEL_68;
  }

  swift_bridgeObjectRelease_n();
LABEL_67:

LABEL_68:
  if ((sub_2284424C4(*(v32 + v21[13]), *(a1 + v21[13])) & 1) == 0 || (sub_228442728(*(v32 + v21[14]), *(a1 + v21[14])) & 1) == 0 || !sub_22843FF48(*(v32 + v21[17]), *(a1 + v21[17])) || (sub_22844230C(*(v32 + v21[18]), *(a1 + v21[18])) & 1) == 0)
  {
    return 1;
  }

  v54 = v21[19];
  v55 = *(a1 + v54);
  if (*(v32 + v54))
  {
    if (!v55)
    {
      return 1;
    }

    sub_2283EF310(0, &qword_280DEEB30, 0x277D82BB8);
    v32 = v26;
    if ((sub_22855D9AC() & 1) == 0)
    {
      return 1;
    }
  }

  else if (v55)
  {
    return 1;
  }

  v56 = v21[20];
  v57 = (v32 + v56);
  v58 = *(v32 + v56 + 8);
  v59 = (a1 + v56);
  v60 = v59[1];
  if (v58)
  {
    if (!v60 || (*v57 != *v59 || v58 != v60) && (sub_22855E15C() & 1) == 0)
    {
      return 1;
    }
  }

  else if (v60)
  {
    return 1;
  }

  v61 = v21[21];
  v62 = (v32 + v61);
  v63 = *(v32 + v61 + 8);
  v64 = (a1 + v61);
  v65 = v64[1];
  if (v63)
  {
    if (!v65)
    {
      return 1;
    }

    v66 = v26;
    if ((*v62 != *v64 || v63 != v65) && (sub_22855E15C() & 1) == 0)
    {
      return 1;
    }
  }

  else
  {
    v66 = v26;
    if (v65)
    {
      return 1;
    }
  }

  v67 = v21[22];
  v68 = (v66 + v67);
  v69 = *(v66 + v67 + 8);
  v70 = (a1 + v67);
  v71 = v70[1];
  if (v69)
  {
    if (!v71)
    {
      return 1;
    }

    v72 = v26;
    if ((*v68 != *v70 || v69 != v71) && (sub_22855E15C() & 1) == 0)
    {
      return 1;
    }
  }

  else
  {
    v72 = v26;
    if (v71)
    {
      return 1;
    }
  }

  if (*(v72 + v21[23]) != *(a1 + v21[23]))
  {
    return 1;
  }

  if (*(v72 + v21[25]) != *(a1 + v21[25]))
  {
    return 1;
  }

  v73 = v21[26];
  v74 = *(v72 + v73);
  if (v74 != 2)
  {
    v75 = *(a1 + v73);
    if (v75 == 2 || ((v75 ^ v74) & 1) != 0)
    {
      return 1;
    }
  }

  v76 = v21[24];
  v77 = *(v72 + v76);
  v78 = *(a1 + v76);
  if (!(v77 == 13 ? v78 == 13 : v77 == v78))
  {
    return 1;
  }

  v80 = v21[29];
  v81 = *(v26 + v80);
  v82 = *(a1 + v80);
  if (v81)
  {
    v83 = 0x656D6F7268436F6ELL;
  }

  else
  {
    v83 = 0x656D6F726863;
  }

  if (v81)
  {
    v84 = 0xE800000000000000;
  }

  else
  {
    v84 = 0xE600000000000000;
  }

  if (v82)
  {
    v85 = 0x656D6F7268436F6ELL;
  }

  else
  {
    v85 = 0x656D6F726863;
  }

  if (v82)
  {
    v86 = 0xE800000000000000;
  }

  else
  {
    v86 = 0xE600000000000000;
  }

  if (v83 == v85 && v84 == v86)
  {
  }

  else
  {
    v87 = sub_22855E15C();

    if ((v87 & 1) == 0)
    {
      return 1;
    }
  }

  return (sub_22844230C(*(v26 + v21[15]), *(a1 + v21[15])) & 1) == 0;
}