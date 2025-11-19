uint64_t sub_242DED5B4()
{
  v1 = *v0;
  v2 = *(v0 + 32);
  v3 = v0[5];
  v4 = *(v0 + 7);
  v5 = *(v0 + 64);
  v6 = v0[9];
  sub_242F06390();
  if (v2 == 255)
  {
    MEMORY[0x245D279A0](0);
  }

  else
  {
    MEMORY[0x245D279A0](1);
    if ((*&v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v7 = v1;
    }

    else
    {
      v7 = 0.0;
    }

    MEMORY[0x245D279D0](*&v7);
    CarouselConfiguration.PageControlPosition.hash(into:)();
  }

  v8 = 0.0;
  if (v3 != 0.0)
  {
    v8 = v3;
  }

  MEMORY[0x245D279D0](*&v8);
  sub_242F063B0();
  if (v5)
  {
    MEMORY[0x245D279A0](1);
  }

  else
  {
    MEMORY[0x245D279A0](0);
    if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v9 = v4;
    }

    else
    {
      v9 = 0;
    }

    MEMORY[0x245D279D0](v9);
  }

  v10 = 0.0;
  if (v6 != 0.0)
  {
    v10 = v6;
  }

  MEMORY[0x245D279D0](*&v10);
  return sub_242F063E0();
}

uint64_t static CarouselModel.Direction.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v36 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v31[0] = v31 - v10;
  v31[1] = a3;
  v31[2] = a5;
  v11 = type metadata accessor for CarouselModel.Direction();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v35 = v31 - v13;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v34 = *(TupleTypeMetadata2 - 8);
  v15 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v17 = v31 - v16;
  v32 = v12;
  v33 = v18;
  v19 = *(v18 + 48);
  v20 = *(v12 + 16);
  v20(v31 - v16, a1, v11, v15);
  (v20)(&v17[v19], v36, v11);
  v21 = *(v9 + 48);
  v22 = v21(v17, 2, AssociatedTypeWitness);
  if (!v22)
  {
    v36 = v9;
    (v20)(v35, v17, v11);
    if (!v21(&v17[v19], 2, AssociatedTypeWitness))
    {
      v26 = v36;
      v27 = &v17[v19];
      v28 = v31[0];
      (*(v36 + 32))(v31[0], v27, AssociatedTypeWitness);
      swift_getAssociatedConformanceWitness();
      v29 = v35;
      v23 = sub_242F04EE0();
      v30 = *(v26 + 8);
      v30(v28, AssociatedTypeWitness);
      v30(v29, AssociatedTypeWitness);
      v24 = v32;
      goto LABEL_10;
    }

    (*(v36 + 8))(v35, AssociatedTypeWitness);
    goto LABEL_9;
  }

  if (v22 == 1)
  {
    if (v21(&v17[v19], 2, AssociatedTypeWitness) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (v21(&v17[v19], 2, AssociatedTypeWitness) != 2)
  {
LABEL_9:
    v23 = 0;
    v11 = v33;
    v24 = v34;
    goto LABEL_10;
  }

  v23 = 1;
  v24 = v32;
LABEL_10:
  (*(v24 + 8))(v17, v11);
  return v23 & 1;
}

uint64_t sub_242DEDAD0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, a2, v5);
  sub_242DFB0C0(v7, a2);
  return (*(v4 + 8))(a1, a2);
}

uint64_t sub_242DEDBD0(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v7 - v4;
  sub_242DEDDE0();
  swift_beginAccess();

  sub_242DEDD34();

  (*(v3 + 8))(v5, v2);
  return sub_242DEEBA8();
}

uint64_t sub_242DEDD34()
{
  sub_242F053E0();
  swift_getWitnessTable();
  sub_242F055D0();
  if (v2)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_242DEDDE0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_242F03A80();
}

uint64_t sub_242DEDEB8()
{
  swift_beginAccess();
  sub_242F03AB0();
  sub_242F03A50();
  return swift_endAccess();
}

uint64_t sub_242DEDF44@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t (**a3)()@<X8>)
{
  v12 = *(a1 + a2 - 24);
  v4 = *(a1 + a2 - 8);
  v5 = sub_242DFC868();
  if (v5)
  {
    v7 = v5;
    v8 = v6;
    v9 = swift_allocObject();
    v5 = v7;
    *(v9 + 16) = v12;
    *(v9 + 32) = v4;
    *(v9 + 40) = v7;
    *(v9 + 48) = v8;
    v10 = sub_242DFF870;
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  *a3 = v10;
  a3[1] = v9;

  return sub_242C5573C(v5);
}

uint64_t sub_242DEDFFC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  if (*a1)
  {
    v6 = a3 + a4;
    v7 = *(a3 + a4 - 8);
    v8 = swift_allocObject();
    *(v8 + 16) = *(v6 - 24);
    *(v8 + 32) = v7;
    *(v8 + 40) = v4;
    *(v8 + 48) = v5;
    v9 = sub_242DFF8AC;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  sub_242C5573C(v4);
  return sub_242DEE0D4(v9, v8);
}

uint64_t sub_242DEE0A0()
{
  v0 = sub_242DFC868();
  sub_242C5573C(v0);
  return v0;
}

uint64_t (*sub_242DEE0D8(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = (v1 + *(*v1 + 112));
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;
  sub_242C5573C(v4);
  return sub_242DEE13C;
}

uint64_t sub_242DEE13C(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    sub_242C5573C(*a1);
    v5 = (v4 + *(*v4 + 112));
    v6 = *v5;
    *v5 = v3;
    v5[1] = v2;
    sub_242C655DC(v6);
    v7 = v3;
  }

  else
  {
    v8 = (v4 + *(*v4 + 112));
    v7 = *v8;
    *v8 = v3;
    v8[1] = v2;
  }

  return sub_242C655DC(v7);
}

uint64_t sub_242DEE1D8(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + *(*v2 + 112));
  v4 = *v3;
  *v3 = a1;
  v3[1] = a2;
  return sub_242C655DC(v4);
}

uint64_t sub_242DEE204@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t (**a3)()@<X8>)
{
  v12 = *(a1 + a2 - 24);
  v4 = *(a1 + a2 - 8);
  v5 = sub_242DFC888();
  if (v5)
  {
    v7 = v5;
    v8 = v6;
    v9 = swift_allocObject();
    v5 = v7;
    *(v9 + 16) = v12;
    *(v9 + 32) = v4;
    *(v9 + 40) = v7;
    *(v9 + 48) = v8;
    v10 = sub_242DFF870;
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  *a3 = v10;
  a3[1] = v9;

  return sub_242C5573C(v5);
}

uint64_t sub_242DEE2BC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  if (*a1)
  {
    v6 = a3 + a4;
    v7 = *(a3 + a4 - 8);
    v8 = swift_allocObject();
    *(v8 + 16) = *(v6 - 24);
    *(v8 + 32) = v7;
    *(v8 + 40) = v4;
    *(v8 + 48) = v5;
    v9 = sub_242DFF8AC;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  sub_242C5573C(v4);
  return sub_242DEE394(v9, v8);
}

uint64_t sub_242DEE360()
{
  v0 = sub_242DFC888();
  sub_242C5573C(v0);
  return v0;
}

uint64_t (*sub_242DEE398(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = (v1 + *(*v1 + 120));
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;
  sub_242C5573C(v4);
  return sub_242DEE3FC;
}

uint64_t sub_242DEE3FC(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    sub_242C5573C(*a1);
    v5 = (v4 + *(*v4 + 120));
    v6 = *v5;
    *v5 = v3;
    v5[1] = v2;
    sub_242C655DC(v6);
    v7 = v3;
  }

  else
  {
    v8 = (v4 + *(*v4 + 120));
    v7 = *v8;
    *v8 = v3;
    v8[1] = v2;
  }

  return sub_242C655DC(v7);
}

uint64_t sub_242DEE498(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + *(*v2 + 120));
  v4 = *v3;
  *v3 = a1;
  v3[1] = a2;
  return sub_242C655DC(v4);
}

uint64_t sub_242DEE4C4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t (**a3)()@<X8>)
{
  v12 = *(a1 + a2 - 24);
  v4 = *(a1 + a2 - 8);
  v5 = sub_242DFC8A8();
  if (v5)
  {
    v7 = v5;
    v8 = v6;
    v9 = swift_allocObject();
    v5 = v7;
    *(v9 + 16) = v12;
    *(v9 + 32) = v4;
    *(v9 + 40) = v7;
    *(v9 + 48) = v8;
    v10 = sub_242DFF870;
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  *a3 = v10;
  a3[1] = v9;

  return sub_242C5573C(v5);
}

uint64_t sub_242DEE57C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  if (*a1)
  {
    v6 = a3 + a4;
    v7 = *(a3 + a4 - 8);
    v8 = swift_allocObject();
    *(v8 + 16) = *(v6 - 24);
    *(v8 + 32) = v7;
    *(v8 + 40) = v4;
    *(v8 + 48) = v5;
    v9 = sub_242DFF8AC;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  sub_242C5573C(v4);
  return sub_242DEE654(v9, v8);
}

uint64_t sub_242DEE620()
{
  v0 = sub_242DFC8A8();
  sub_242C5573C(v0);
  return v0;
}

uint64_t sub_242DEE654(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 128));
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_242C655DC(v6);
}

uint64_t sub_242DEE72C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t (**a3)()@<X8>)
{
  v12 = *(a1 + a2 - 24);
  v4 = *(a1 + a2 - 8);
  v5 = sub_242DFC8FC();
  if (v5)
  {
    v7 = v5;
    v8 = v6;
    v9 = swift_allocObject();
    v5 = v7;
    *(v9 + 16) = v12;
    *(v9 + 32) = v4;
    *(v9 + 40) = v7;
    *(v9 + 48) = v8;
    v10 = sub_242DFEF48;
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  *a3 = v10;
  a3[1] = v9;

  return sub_242C5573C(v5);
}

uint64_t sub_242DEE7E4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  if (*a1)
  {
    v6 = a3 + a4;
    v7 = *(a3 + a4 - 8);
    v8 = swift_allocObject();
    *(v8 + 16) = *(v6 - 24);
    *(v8 + 32) = v7;
    *(v8 + 40) = v4;
    *(v8 + 48) = v5;
    v9 = sub_242DFEF20;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  sub_242C5573C(v4);
  return sub_242DEE8BC(v9, v8);
}

uint64_t sub_242DEE888()
{
  v0 = sub_242DFC8FC();
  sub_242C5573C(v0);
  return v0;
}

uint64_t sub_242DEE8BC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 136));
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_242C655DC(v6);
}

uint64_t sub_242DEE994()
{
  sub_242DFC598();
}

uint64_t sub_242DEE9BC(uint64_t a1)
{
  v3 = *(*v1 + 144);
  swift_beginAccess();
  *(v1 + v3) = a1;

  return sub_242DEDBD0(v4);
}

__n128 CarouselModel.configuration.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1 + *(*v1 + 160);
  v3 = *(v2 + 48);
  *(a1 + 32) = *(v2 + 32);
  *(a1 + 48) = v3;
  *(a1 + 64) = *(v2 + 64);
  result = *(v2 + 16);
  *a1 = *v2;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_242DEEA7C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_242DEEAD0();
  *a1 = result;
  return result;
}

uint64_t sub_242DEEAD0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_242F03A80();

  return v1;
}

uint64_t sub_242DEEBA8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_242F03A90();
}

uint64_t sub_242DEEC7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7C18);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v8 - v4;
  (*(v6 + 16))(&v8 - v4, a1, v3);
  return sub_242DEEDD0(v5);
}

uint64_t sub_242DEED50()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF31C0);
  sub_242F03A50();
  return swift_endAccess();
}

uint64_t sub_242DEEDD0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7C18);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF31C0);
  sub_242F03A60();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t sub_242DEEF14()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_242F03A80();

  return v1;
}

uint64_t sub_242DEEFEC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_242F03A90();
}

uint64_t sub_242DEF0FC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_242F03A80();

  return v1;
}

uint64_t sub_242DEF1E0()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_242F03A90();
}

uint64_t CarouselModel.init(items:activeItem:configuration:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v4 = sub_242DFB478(a1, a2, a3);
  v5 = sub_242F05860();
  (*(*(v5 - 8) + 8))(a2, v5);
  return v4;
}

uint64_t sub_242DEF340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a2;
  v19 = sub_242F05860();
  v4 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v6 = &v18 - v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v18 - v12;
  sub_242F05AA0();
  (*(v4 + 16))(v6, v20, v19);
  v14 = *(a3 - 8);
  result = (*(v14 + 48))(v6, 1, a3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_242F05AA0();
    (*(v14 + 8))(v6, a3);
    swift_getAssociatedConformanceWitness();
    v16 = sub_242F04EE0();
    v17 = *(v8 + 8);
    v17(v10, AssociatedTypeWitness);
    v17(v13, AssociatedTypeWitness);
    return v16 & 1;
  }

  return result;
}

uint64_t sub_242DEF5DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v33 = *v2;
  v34 = a1;
  v3 = v33[12];
  v4 = v33[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v32 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v30 = &v27 - v6;
  v28 = v33[11];
  v29 = v3;
  v7 = type metadata accessor for CarouselModel.Direction();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - v9;
  v11 = *(v4 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v27 - v13;
  sub_242DEDDE0();
  sub_242DEEF14();
  v15 = sub_242DEDD34();

  v16 = v14;
  v17 = AssociatedTypeWitness;
  v18 = v32;
  (*(v11 + 8))(v16, v4);
  (*(v8 + 16))(v10, v34, v7);
  result = (*(v18 + 48))(v10, 2, v17);
  if (!result)
  {
    v21 = v30;
    (*(v18 + 32))(v30, v10, v17);
    v35 = sub_242DEEF14();
    MEMORY[0x28223BE20](v35);
    v23 = v28;
    v22 = v29;
    *(&v27 - 4) = v4;
    *(&v27 - 3) = v23;
    *(&v27 - 2) = v22;
    *(&v27 - 1) = v21;
    sub_242F053E0();
    swift_getWitnessTable();
    sub_242F05180();

    return (*(v18 + 8))(v21, v17);
  }

  if (result != 1)
  {
    if (!__OFADD__(v15, 1))
    {
      sub_242DEEF14();
      v24 = sub_242F05380();

      v25 = sub_242DEEF14();
      if (v15 + 1 >= v24)
      {
        v35 = v25;
        sub_242F053E0();
        swift_getWitnessTable();
        sub_242F05600();
      }

LABEL_9:
      v26 = v31;
      sub_242F05400();

      return (*(v11 + 56))(v26, 0, 1, v4);
    }

LABEL_14:
    __break(1u);
    return result;
  }

  if (__OFSUB__(v15, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  v20 = sub_242DEEF14();
  if (((v15 - 1) & 0x8000000000000000) == 0)
  {
    goto LABEL_9;
  }

  v35 = v20;
  sub_242F053E0();
  swift_getWitnessTable();
  sub_242F04E10();
}

uint64_t sub_242DEFABC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v62 = a1;
  v5 = *v2;
  v6 = *(*v2 + 80);
  v7 = sub_242F05860();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v56 - v9;
  v11 = *(v6 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v15);
  v60 = &v56 - v17;
  (*(v8 + 16))(v10, a2, v7, v16);
  v18 = (*(v11 + 48))(v10, 1, v6);
  v61 = v11;
  if (v18 == 1)
  {
    (*(v8 + 8))(v10, v7);
    v19 = v5;
  }

  else
  {
    v20 = v60;
    (*(v11 + 32))(v60, v10, v6);
    v21 = *(*v3 + 144);
    v22 = swift_beginAccess();
    v58 = &v56;
    v65 = *(v3 + v21);
    MEMORY[0x28223BE20](v22);
    v23 = *(v5 + 88);
    v24 = *(v5 + 96);
    v59 = v5;
    *(&v56 - 4) = v6;
    *(&v56 - 3) = v23;
    v56 = v24;
    v57 = v23;
    *(&v56 - 2) = v24;
    *(&v56 - 1) = v20;
    sub_242F053E0();

    swift_getWitnessTable();
    sub_242F055D0();

    if (v64 != 1)
    {
      v65 = sub_242DEEF14();
      MEMORY[0x28223BE20](v65);
      v26 = v56;
      v25 = v57;
      *(&v56 - 4) = v6;
      *(&v56 - 3) = v25;
      v27 = v60;
      *(&v56 - 2) = v26;
      *(&v56 - 1) = v27;
      sub_242F055D0();

      if (v64 != 1)
      {
        v58 = v63;
        v47 = v61;
        v48 = *(v61 + 16);
        v49 = v62;
        v48(v14, v62, v6);
        swift_beginAccess();
        sub_242F053B0();
        v50 = swift_endAccess();
        sub_242DEDBD0(v50);
        v51 = (v48)(v14, v49, v6);
        MEMORY[0x28223BE20](v51);
        v53 = v56;
        v52 = v57;
        *(&v56 - 4) = v6;
        *(&v56 - 3) = v52;
        *(&v56 - 2) = v53;
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        *(&v56 - 4) = v6;
        *(&v56 - 3) = v52;
        *(&v56 - 2) = v53;
        swift_getKeyPath();
        v55 = sub_242F03A70();
        sub_242F053B0();
        v55(&v63, 0);

        (*(v47 + 8))(v60, v6);
        goto LABEL_11;
      }
    }

    v11 = v61;
    (*(v61 + 8))(v60, v6);
    v19 = v59;
  }

  v65 = sub_242DEEF14();
  sub_242F053E0();
  swift_getWitnessTable();
  sub_242F055D0();

  if (v64)
  {
    v28 = *(v11 + 16);
    v29 = v62;
    v28(v14, v62, v6);
    swift_beginAccess();
    sub_242F053A0();
    v30 = swift_endAccess();
    sub_242DEDBD0(v30);
    v31 = (v28)(v14, v29, v6);
    MEMORY[0x28223BE20](v31);
    v32 = *(v19 + 88);
    v33 = *(v19 + 96);
    *(&v56 - 4) = v6;
    *(&v56 - 3) = v32;
    *(&v56 - 2) = v33;
    v34 = swift_getKeyPath();
    MEMORY[0x28223BE20](v34);
    *(&v56 - 4) = v6;
    *(&v56 - 3) = v32;
    *(&v56 - 2) = v33;
    swift_getKeyPath();
    v35 = sub_242F03A70();
    sub_242F053A0();
    v35(&v63, 0);
  }

  else
  {
    v37 = v62;
    v36 = v63;
    v38 = *(v11 + 16);
    v38(v14, v62, v6);
    swift_beginAccess();
    sub_242F053A0();
    v39 = swift_endAccess();
    sub_242DEDBD0(v39);
    result = (v38)(v14, v37, v6);
    if (__OFADD__(v36, 1))
    {
      __break(1u);
      return result;
    }

    MEMORY[0x28223BE20](result);
    v60 = v41;
    v42 = *(v19 + 88);
    v43 = *(v19 + 96);
    *(&v56 - 4) = v6;
    *(&v56 - 3) = v42;
    *(&v56 - 2) = v43;
    v44 = swift_getKeyPath();
    MEMORY[0x28223BE20](v44);
    *(&v56 - 4) = v6;
    *(&v56 - 3) = v42;
    *(&v56 - 2) = v43;
    swift_getKeyPath();
    v45 = sub_242F03A70();
    sub_242F053B0();
    v45(&v63, 0);
  }

LABEL_11:
  swift_beginAccess();

  v46 = sub_242F05380();

  if (v46 == 1)
  {
    sub_242DFC5E8(v62);
  }

  sub_242DEDDE0();
  swift_beginAccess();

  sub_242DEDD34();

  (*(v61 + 8))(v14, v6);
  return sub_242DEEBA8();
}

uint64_t sub_242DF0430(uint64_t a1, uint64_t a2)
{
  v3 = *(*a2 + 96);
  v4 = *(*a2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v59 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v47 = &v46 - v6;
  v7 = sub_242F05860();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v50 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v54 = &v46 - v8;
  v52 = sub_242F05860();
  v48 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v10 = &v46 - v9;
  v53 = v7;
  v11 = v7;
  v12 = v4;
  v56 = *(v11 - 8);
  MEMORY[0x28223BE20](v13);
  v49 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v46 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v46 - v19;
  v51 = v3;
  sub_242F05AA0();
  v21 = *(v59 + 56);
  v55 = v20;
  v21(v20, 0, 1, AssociatedTypeWitness);
  v22 = *(*a2 + 144);
  swift_beginAccess();
  v60 = *(a2 + v22);
  sub_242F053E0();
  swift_getWitnessTable();
  sub_242F04E10();
  v23 = *(v12 - 8);
  v24 = (*(v23 + 48))(v10, 1, v12);
  v46 = v12;
  v58 = AssociatedTypeWitness;
  if (v24 == 1)
  {
    v48[1](v10, v52);
    v25 = v17;
    v26 = 1;
  }

  else
  {
    sub_242F05AA0();
    (*(v23 + 8))(v10, v12);
    v25 = v17;
    v26 = 0;
  }

  v21(v25, v26, 1, AssociatedTypeWitness);
  v27 = v17;
  v28 = v56;
  v29 = *(TupleTypeMetadata2 + 48);
  v30 = *(v56 + 16);
  v31 = v53;
  v32 = v54;
  v33 = v55;
  v30(v54, v55, v53);
  v52 = v29;
  v30(&v32[v29], v27, v31);
  v34 = *(v59 + 48);
  if (v34(v32, 1, v58) != 1)
  {
    v48 = v27;
    v37 = v49;
    v30(v49, v32, v31);
    v38 = v52;
    v39 = v58;
    if (v34(&v32[v52], 1, v58) != 1)
    {
      v41 = v59;
      v42 = v47;
      (*(v59 + 32))(v47, &v32[v38], v39);
      swift_getAssociatedConformanceWitness();
      v36 = sub_242F04EE0();
      v43 = *(v41 + 8);
      v43(v42, v39);
      v44 = *(v56 + 8);
      v44(v48, v31);
      v44(v55, v31);
      v43(v37, v39);
      v44(v32, v31);
      return v36 & 1;
    }

    v40 = *(v56 + 8);
    v40(v48, v31);
    v40(v55, v31);
    (*(v59 + 8))(v37, v39);
    goto LABEL_9;
  }

  v35 = *(v28 + 8);
  v35(v27, v31);
  v35(v33, v31);
  if (v34(&v32[v52], 1, v58) != 1)
  {
LABEL_9:
    (*(v50 + 8))(v32, TupleTypeMetadata2);
    v36 = 0;
    return v36 & 1;
  }

  v35(v32, v31);
  v36 = 1;
  return v36 & 1;
}

uint64_t sub_242DF0AF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = *v3;
  v8 = *(*v3 + 80);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](a1);
  v46 = &v41[-v10];
  v50 = sub_242F05860();
  v11 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v47 = &v41[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v49 = &v41[-v14];
  v15 = *(v6 + 144);
  swift_beginAccess();
  v56[8] = *(v3 + v15);
  v51 = v8;
  v52 = a2;
  v45 = *(v7 + 88);
  v53 = v45;
  v54 = a1;
  sub_242F053E0();

  swift_getWitnessTable();
  sub_242F055D0();

  if (v58 == 1)
  {
    swift_beginAccess();

    v16 = sub_242F05380();
  }

  else
  {
    v16 = v57;
  }

  v17 = *(*v3 + 144);
  swift_beginAccess();
  v57 = *(v3 + v17);
  v44 = v16;
  v56[0] = v16;
  v18 = v49;
  sub_242DF1174(v49);
  v19 = v46;
  if (qword_27ECEF4C0 != -1)
  {
    swift_once();
  }

  v20 = sub_242F039D0();
  __swift_project_value_buffer(v20, qword_27ED5D2E0);
  v21 = *(v9 + 16);
  v48 = a1;
  v21(v19, a1, v8);
  v22 = v47;
  v23 = v50;
  (*(v11 + 16))(v47, v18, v50);
  swift_retain_n();
  v24 = sub_242F039B0();
  v25 = sub_242F056E0();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v56[0] = v43;
    *v26 = 136315906;
    v42 = v25;
    v27 = sub_242F05F60();
    v29 = v28;
    (*(v9 + 8))(v19, v8);
    v30 = sub_242C8FD38(v27, v29, v56);

    *(v26 + 4) = v30;
    *(v26 + 12) = 2048;
    swift_beginAccess();

    v31 = sub_242F05380();

    *(v26 + 14) = v31;

    *(v26 + 22) = 2048;
    *(v26 + 24) = v44;
    *(v26 + 32) = 2080;
    v55 = v45;
    swift_getWitnessTable();
    v32 = sub_242F05F60();
    v34 = v33;
    v35 = *(v11 + 8);
    v35(v22, v50);
    v36 = sub_242C8FD38(v32, v34, v56);
    v18 = v49;

    *(v26 + 34) = v36;
    _os_log_impl(&dword_242C53000, v24, v42, "[sortedInsert] item=%s items.count=%ld itemsIndex=%ld sibling=%s", v26, 0x2Au);
    v37 = v43;
    swift_arrayDestroy();
    MEMORY[0x245D287D0](v37, -1, -1);
    v38 = v26;
    v23 = v50;
    MEMORY[0x245D287D0](v38, -1, -1);
  }

  else
  {

    v39 = v19;
    v35 = *(v11 + 8);
    v35(v22, v23);
    (*(v9 + 8))(v39, v8);
  }

  sub_242DEFABC(v48, v18);
  return (v35)(v18, v23);
}

uint64_t sub_242DF1174@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v5 = &v14[-v4];
  sub_242F05590();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = sub_242F051E0();
  (*(v3 + 8))(v5, AssociatedTypeWitness);
  if (v6)
  {
    v7 = sub_242F05650();
    v9 = v8;
    v10 = swift_getAssociatedTypeWitness();
    v11 = *(v10 - 8);
    (*(v11 + 16))(a1, v9, v10);
    v7(v14, 0);
    return (*(v11 + 56))(a1, 0, 1, v10);
  }

  else
  {
    v13 = swift_getAssociatedTypeWitness();
    return (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
  }
}

uint64_t sub_242DF141C(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v59 = a3;
  WitnessTable = a2;
  v73 = a1;
  v5 = *v3;
  v62 = sub_242F042C0();
  v61 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v60 = v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v5[10];
  v58 = sub_242F05860();
  v57 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v63 = v53 - v8;
  v66 = *(v7 - 8);
  MEMORY[0x28223BE20](v9);
  v64 = v53 - v10;
  v11 = v5[11];
  v12 = v5[12];
  v13 = type metadata accessor for CarouselModel.Direction();
  v70 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v65 = v53 - v14;
  v15 = sub_242F05860();
  v72 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = v53 - v19;
  v21 = v5[18];
  swift_beginAccess();
  v78[0] = *(v4 + v21);
  v74 = v7;
  v75 = v11;
  v68 = v11;
  v67 = v12;
  v76 = v12;
  v22 = v73;
  v77 = v73;
  v71 = v7;
  v23 = sub_242F053E0();

  swift_getWitnessTable();
  LOBYTE(v21) = sub_242F051C0();

  if (v21)
  {
    v53[1] = v23;
    v56 = 0;
    v25 = v22;
    sub_242DF1E14(WitnessTable, v4, v22, v20);
    v26 = v72;
    (*(v72 + 16))(v17, v20, v15);
    v27 = v70;
    v28 = v20;
    if ((v70[6])(v17, 1, v13) == 1)
    {
      v29 = *(v26 + 8);
      v72 = v26 + 8;
      v70 = v29;
      v30 = (v29)(v17, v15);
      MEMORY[0x28223BE20](v30);
      v55 = v15;
      v54 = v20;
      v31 = v71;
      v32 = v68;
      v53[-4] = v71;
      v53[-3] = v32;
      v33 = v67;
      v53[-2] = v67;
      v53[-1] = v25;
      swift_beginAccess();
      WitnessTable = swift_getWitnessTable();
      swift_getWitnessTable();
      sub_242F05690();
      v34 = swift_endAccess();
      v35 = sub_242DEDBD0(v34);
      v66 = v53;
      MEMORY[0x28223BE20](v35);
      v53[-4] = v31;
      v53[-3] = v32;
      v36 = v73;
      v53[-2] = v33;
      v53[-1] = v36;
      MEMORY[0x28223BE20](v37);
      v53[-4] = v31;
      v53[-3] = v32;
      v53[-2] = v33;
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      v53[-4] = v31;
      v53[-3] = v32;
      v53[-2] = v33;
      swift_getKeyPath();
      v39 = sub_242F03A70();
      sub_242F05690();
      v39(v78, 0);

      return (v70)(v54, v55);
    }

    else
    {
      v40 = v65;
      (v27[4])(v65, v17, v13);
      v41 = v63;
      sub_242DF5074(v40, v63);
      v42 = v66;
      v43 = v71;
      if ((v66[6])(v41, 1, v71) == 1)
      {
        v27[1](v40, v13);
        (*(v26 + 8))(v28, v15);
        return (*(v57 + 8))(v41, v58);
      }

      else
      {
        v44 = (v42[4])(v64, v41, v43);
        if (*(v4 + *(*v4 + 152)))
        {

          sub_242F04BD0();
        }

        v45 = v59;
        v55 = v15;
        v54 = v28;
        if (v59)
        {
        }

        MEMORY[0x28223BE20](v44);
        v53[-4] = v73;
        v46 = v45 & 1;
        LOBYTE(v53[-3]) = v45 & 1;
        v47 = v64;
        v53[-2] = v4;
        v53[-1] = v47;
        v48 = swift_allocObject();
        swift_weakInit();
        v49 = swift_allocObject();
        v50 = v71;
        v51 = v68;
        *(v49 + 16) = v71;
        *(v49 + 24) = v51;
        *(v49 + 32) = v67;
        *(v49 + 40) = v48;
        *(v49 + 48) = v46;

        v52 = v60;
        sub_242F042A0();
        sub_242F03D40();

        (*(v61 + 8))(v52, v62);
        v70[1](v65, v13);
        (*(v72 + 8))(v54, v55);

        return (v66[1])(v47, v50);
      }
    }
  }

  return result;
}

uint64_t sub_242DF1E14@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v61 = a4;
  v7 = *a2;
  v8 = *(*a2 + 80);
  v63 = *(*a2 + 96);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v60 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v59 = v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v58 = v51 - v12;
  v13 = sub_242F05860();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v51 - v18;
  MEMORY[0x28223BE20](v20);
  v55 = v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v22);
  v62 = v51 - v24;
  v25 = *(v14 + 16);
  v26 = a1;
  v28 = v27;
  v57 = v29;
  v25(v19, v26, v23);
  v54 = *(v28 + 48);
  v30 = v54(v19, 1, v8);
  v56 = v7;
  if (v30 == 1)
  {
    (*(v14 + 8))(v19, v57);
    v32 = v59;
    v31 = v60;
    v33 = v58;
    v34 = v28;
  }

  else
  {
    v52 = v28;
    v53 = a3;
    v35 = *(v28 + 32);
    v36 = v62;
    v35(v62, v19, v8);
    v37 = *(*a2 + 144);
    v38 = swift_beginAccess();
    v51[1] = v51;
    v64 = *(a2 + v37);
    MEMORY[0x28223BE20](v38);
    v39 = *(v7 + 88);
    v51[-4] = v8;
    v51[-3] = v39;
    v51[0] = v39;
    v51[-2] = v63;
    v51[-1] = v36;
    sub_242F053E0();

    swift_getWitnessTable();
    sub_242F05180();

    LODWORD(v37) = v54(v16, 1, v8);
    (*(v14 + 8))(v16, v57);
    if (v37 == 1)
    {
      v34 = v52;
      (*(v52 + 8))(v62, v8);
      v32 = v59;
      v31 = v60;
      v33 = v58;
    }

    else
    {
      v33 = v58;
      sub_242F05AA0();
      v32 = v59;
      sub_242F05AA0();
      swift_getAssociatedConformanceWitness();
      v40 = sub_242F04EE0();
      v31 = v60;
      v41 = *(v60 + 8);
      v41(v32, AssociatedTypeWitness);
      v41(v33, AssociatedTypeWitness);
      if ((v40 & 1) == 0)
      {
        v48 = v61;
        v49 = v62;
        sub_242F05AA0();
        (*(v31 + 56))(v48, 0, 2, AssociatedTypeWitness);
        v50 = type metadata accessor for CarouselModel.Direction();
        (*(*(v50 - 8) + 56))(v48, 0, 1, v50);
        return (*(v52 + 8))(v49, v8);
      }

      v34 = v52;
      (*(v52 + 8))(v62, v8);
    }
  }

  sub_242F05AA0();
  v42 = v55;
  sub_242DEDDE0();
  sub_242F05AA0();
  (*(v34 + 8))(v42, v8);
  swift_getAssociatedConformanceWitness();
  LOBYTE(v42) = sub_242F04EE0();
  v43 = *(v31 + 8);
  v43(v32, AssociatedTypeWitness);
  v43(v33, AssociatedTypeWitness);
  if (v42)
  {
    v44 = v61;
    (*(v31 + 56))(v61, 2, 2, AssociatedTypeWitness);
    v45 = type metadata accessor for CarouselModel.Direction();
    return (*(*(v45 - 8) + 56))(v44, 0, 1, v45);
  }

  else
  {
    v47 = type metadata accessor for CarouselModel.Direction();
    return (*(*(v47 - 8) + 56))(v61, 1, 1, v47);
  }
}

uint64_t sub_242DF2580(uint64_t a1, int a2, uint64_t *a3, uint64_t a4)
{
  v54 = a2;
  v6 = *a3;
  v7 = *(*a3 + 80);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](a1);
  v51 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v42 - v11;
  if (qword_27ECEF4C0 != -1)
  {
    swift_once();
  }

  WitnessTable = v6;
  v13 = sub_242F039D0();
  __swift_project_value_buffer(v13, qword_27ED5D2E0);
  v14 = *(v8 + 16);
  v49 = a1;
  v14(v12, a1, v7);
  v15 = sub_242F039B0();
  v16 = sub_242F056E0();
  v17 = os_log_type_enabled(v15, v16);
  v50 = v8;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v45 = a4;
    v19 = v18;
    v44 = swift_slowAlloc();
    v52[0] = v44;
    *v19 = 136446466;
    v43 = v15;
    v20 = v51;
    v14(v51, v12, v7);
    v21 = *(v8 + 8);
    v21(v12, v7);
    v53 = v16;
    v22 = WitnessTable;
    v23 = sub_242F05F60();
    v25 = v24;
    v48 = v21;
    v21(v20, v7);
    v26 = sub_242C8FD38(v23, v25, v52);

    *(v19 + 4) = v26;
    *(v19 + 12) = 1026;
    *(v19 + 14) = v54 & 1;
    v27 = v43;
    _os_log_impl(&dword_242C53000, v43, v53, "Removing carousel item with id %{public}s. Animated: %{BOOL,public}d", v19, 0x12u);
    v28 = v44;
    __swift_destroy_boxed_opaque_existential_2Tm(v44);
    MEMORY[0x245D287D0](v28, -1, -1);
    v29 = v19;
    a4 = v45;
    MEMORY[0x245D287D0](v29, -1, -1);
  }

  else
  {
    v48 = *(v8 + 8);
    v48(v12, v7);

    v22 = WitnessTable;
  }

  v30 = sub_242DFC5E8(a4);
  v45 = &v42;
  MEMORY[0x28223BE20](v30);
  v31 = *(v22 + 88);
  v32 = *(v22 + 96);
  *(&v42 - 4) = v7;
  *(&v42 - 3) = v31;
  v33 = v49;
  *(&v42 - 2) = v32;
  *(&v42 - 1) = v33;
  swift_beginAccess();
  sub_242F053E0();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  v34 = v47;
  sub_242F05690();
  v47 = v34;
  v35 = swift_endAccess();
  v36 = sub_242DEDBD0(v35);
  v45 = &v42;
  MEMORY[0x28223BE20](v36);
  *(&v42 - 4) = v7;
  *(&v42 - 3) = v31;
  *(&v42 - 2) = v32;
  *(&v42 - 1) = v33;
  MEMORY[0x28223BE20](v37);
  *(&v42 - 4) = v7;
  *(&v42 - 3) = v31;
  *(&v42 - 2) = v32;
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  *(&v42 - 4) = v7;
  *(&v42 - 3) = v31;
  *(&v42 - 2) = v32;
  swift_getKeyPath();
  v39 = sub_242F03A70();
  sub_242F05690();
  v39(v52, 0);

  sub_242DEF0D4();
  sub_242DEF1CC();
  v40 = v51;
  sub_242DEDDE0();
  sub_242DF5E04(v40);
  return (v48)(v40, v7);
}

BOOL sub_242DF2B4C()
{
  sub_242DEEF14();
  sub_242F053E0();
  swift_getWitnessTable();
  sub_242F055D0();

  return (v1 & 1) == 0;
}

uint64_t sub_242DF2C4C(uint64_t a1, int a2)
{
  v77 = a2;
  v4 = *v2;
  v5 = sub_242F042C0();
  v66 = *(v5 - 8);
  v67 = v5;
  MEMORY[0x28223BE20](v5);
  v65 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v4[12];
  v8 = v4[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v73 = *(AssociatedTypeWitness - 8);
  v74 = AssociatedTypeWitness;
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v72 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v71 = &v61 - v12;
  v70 = sub_242F05860();
  v68 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v76 = &v61 - v13;
  v81 = *(v8 - 8);
  MEMORY[0x28223BE20](v14);
  v69 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v80 = &v61 - v17;
  v78 = v2;
  v18 = v4[11];
  v79 = v8;
  v64 = v18;
  v75 = v7;
  v19 = type metadata accessor for CarouselModel.Direction();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v61 - v24;
  if (qword_27ECEF4C0 != -1)
  {
    swift_once();
  }

  v26 = sub_242F039D0();
  __swift_project_value_buffer(v26, qword_27ED5D2E0);
  v27 = *(v20 + 16);
  v27(v25, a1, v19);
  v28 = sub_242F039B0();
  v29 = sub_242F056E0();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v63 = a1;
    v31 = v30;
    v62 = swift_slowAlloc();
    v82[0] = v62;
    *v31 = 136446466;
    v27(v22, v25, v19);
    v32 = *(v20 + 8);
    v32(v25, v19);
    v33 = CarouselModel.Direction.description.getter(v19);
    v35 = v34;
    v32(v22, v19);
    v36 = sub_242C8FD38(v33, v35, v82);

    *(v31 + 4) = v36;
    *(v31 + 12) = 1026;
    *(v31 + 14) = v77 & 1;
    _os_log_impl(&dword_242C53000, v28, v29, "Rotating carousel item with direction %{public}s. Animated: %{BOOL,public}d", v31, 0x12u);
    v37 = v62;
    __swift_destroy_boxed_opaque_existential_2Tm(v62);
    MEMORY[0x245D287D0](v37, -1, -1);
    v38 = v31;
    a1 = v63;
    MEMORY[0x245D287D0](v38, -1, -1);
  }

  else
  {
    (*(v20 + 8))(v25, v19);
  }

  v39 = v76;
  v40 = v78;
  sub_242DF5074(a1, v76);
  v41 = v81;
  v42 = v79;
  if ((*(v81 + 48))(v39, 1, v79) == 1)
  {
    return (*(v68 + 8))(v39, v70);
  }

  (*(v41 + 32))(v80, v39, v42);
  v44 = v71;
  sub_242F05AA0();
  v45 = v69;
  sub_242DEDDE0();
  v46 = v72;
  sub_242F05AA0();
  v49 = *(v41 + 8);
  v47 = v41 + 8;
  v48 = v49;
  v49(v45, v42);
  v50 = v74;
  swift_getAssociatedConformanceWitness();
  v51 = sub_242F04EE0();
  v52 = *(v73 + 8);
  v52(v46, v50);
  v52(v44, v50);
  if (v51)
  {
    return v48(v80, v42);
  }

  v53 = v80;
  if (*(v40 + *(*v40 + 152)))
  {

    sub_242F04BD0();
  }

  v54 = v48;
  v81 = v47;
  if (v77)
  {
  }

  v55 = v65;
  v56 = sub_242F042B0();
  MEMORY[0x28223BE20](v56);
  *(&v61 - 4) = v53;
  v57 = v77 & 1;
  *(&v61 - 24) = v77 & 1;
  *(&v61 - 2) = v40;
  v58 = swift_allocObject();
  swift_weakInit();
  v59 = swift_allocObject();
  v60 = v64;
  *(v59 + 16) = v42;
  *(v59 + 24) = v60;
  *(v59 + 32) = v75;
  *(v59 + 40) = v58;
  *(v59 + 48) = v57;

  sub_242F03D40();
  (*(v66 + 8))(v55, v67);

  return v54(v53, v42);
}

uint64_t sub_242DF3498(uint64_t a1, int a2, uint64_t a3)
{
  v36 = a2;
  v33 = *a3;
  isa = v33[10].isa;
  v7 = *(isa - 1);
  MEMORY[0x28223BE20](a1);
  v35 = &v29[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v29[-v10];
  if (qword_27ECEF4C0 != -1)
  {
    swift_once();
  }

  v12 = sub_242F039D0();
  __swift_project_value_buffer(v12, qword_27ED5D2E0);
  v13 = *(v7 + 16);
  v34 = a1;
  v13(v11, a1, isa);
  v14 = sub_242F039B0();
  v15 = sub_242F056E0();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v32 = v3;
    v17 = v16;
    v31 = swift_slowAlloc();
    v37 = v31;
    *v17 = 136446466;
    v30 = v15;
    v18 = v35;
    v13(v35, v11, isa);
    v19 = *(v7 + 8);
    v19(v11, isa);
    v20 = sub_242F05F60();
    v33 = v14;
    v21 = v20;
    v23 = v22;
    v19(v18, isa);
    v24 = sub_242C8FD38(v21, v23, &v37);

    *(v17 + 4) = v24;
    *(v17 + 12) = 1026;
    *(v17 + 14) = v36 & 1;
    v25 = v33;
    _os_log_impl(&dword_242C53000, v33, v30, "Starting carousel rotation to %{public}s. Animated: %{BOOL,public}d", v17, 0x12u);
    v26 = v31;
    __swift_destroy_boxed_opaque_existential_2Tm(v31);
    MEMORY[0x245D287D0](v26, -1, -1);
    MEMORY[0x245D287D0](v17, -1, -1);
  }

  else
  {
    v19 = *(v7 + 8);
    v19(v11, isa);
  }

  sub_242DFC5E8(v34);
  sub_242DEF0D4();
  result = sub_242DEF1CC();
  if (*(a3 + *(*a3 + 160) + 64) == 1)
  {
    v28 = v35;
    sub_242DEDDE0();
    sub_242DF5E04(v28);
    return v19(v28, isa);
  }

  return result;
}

uint64_t sub_242DF3848(uint64_t a1, char a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    sub_242DEDDE0();
    v10 = 0.0;
    if (a2)
    {
      v10 = *(v9 + *(*v9 + 160) + 72);
    }

    sub_242DF5E90(v7, v10);

    return (*(v5 + 8))(v7, a3);
  }

  return result;
}

uint64_t sub_242DF396C(char a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_242F04B60();
  MEMORY[0x28223BE20](v5);
  v17[0] = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27ECEF4C0 != -1)
  {
    swift_once();
  }

  v7 = sub_242F039D0();
  __swift_project_value_buffer(v7, qword_27ED5D2E0);
  v8 = sub_242F039B0();
  v9 = sub_242F056E0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67240192;
    *(v10 + 4) = a1 & 1;
    _os_log_impl(&dword_242C53000, v8, v9, "Showing carousel decorations. Animated: %{BOOL,public}d", v10, 8u);
    MEMORY[0x245D287D0](v10, -1, -1);
  }

  if (*(v2 + *(*v2 + 152)))
  {

    sub_242F04BD0();
  }

  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = *(v4 + 80);
  *(v13 + 32) = *(v4 + 96);
  *(v13 + 40) = v12;
  *(v13 + 48) = a1 & 1;
  *(v13 + 56) = v11;
  aBlock[4] = sub_242DFCA3C;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_242DEA248;
  aBlock[3] = &block_descriptor_1;
  _Block_copy(aBlock);
  v17[1] = MEMORY[0x277D84F90];
  sub_242DFCA68();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECFC610);
  sub_242C7E000(&qword_27ECFC060, &unk_27ECFC610);
  sub_242F05930();
  sub_242F04BE0();
  swift_allocObject();
  v14 = sub_242F04BC0();

  swift_beginAccess();
  *(v11 + 16) = v14;

  *(v2 + *(*v2 + 152)) = v14;

  sub_242D3DCD0();
  result = sub_242F05750();
  if (*(v2 + *(*v2 + 152)))
  {
    v16 = result;

    sub_242F05770();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_242DF3D68(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_242F042C0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v27 = a3;
    v28 = v12;
    v30 = v11;
    v16 = a4;
    if (a2)
    {
      v29 = *(result + *(*result + 200));
    }

    else
    {
      v29 = 0;
    }

    v17 = swift_allocObject();
    v18 = swift_weakInit();
    v26[2] = v26;
    MEMORY[0x28223BE20](v18);
    v26[1] = &v26[-8];
    v26[-6] = v16;
    v26[-5] = a5;
    v19 = a5;
    v20 = a6;
    v26[-4] = a6;
    v26[-3] = v17;
    v21 = a2 & 1;
    LOBYTE(v26[-2]) = a2 & 1;
    v22 = swift_allocObject();
    swift_weakInit();
    v23 = v27;
    swift_beginAccess();
    v24 = *(v23 + 16);
    v25 = swift_allocObject();
    *(v25 + 16) = v16;
    *(v25 + 24) = v19;
    *(v25 + 32) = v20;
    *(v25 + 40) = v22;
    *(v25 + 48) = v24;
    *(v25 + 56) = v21;
    swift_retain_n();

    sub_242F042A0();
    sub_242F03D40();
    (*(v28 + 8))(v14, v30);
  }

  return result;
}

uint64_t sub_242DF4028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    sub_242DEF0D4();
    sub_242DEF1CC();
    if (*(v8 + *(*v8 + 160) + 64) == 1)
    {
    }

    v9 = (v8 + *(*v8 + 112));
    v10 = *v9;
    if (!*v9)
    {
    }

    else
    {
      sub_242C5573C(*v9);
      sub_242DEDDE0();
      v10(v6);
      sub_242C655DC(v10);

      return (*(v4 + 8))(v6, a3);
    }
  }

  return result;
}

uint64_t sub_242DF420C(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    if (a2)
    {

      if (sub_242F04BB0())
      {
        if (qword_27ECEF4C0 != -1)
        {
          swift_once();
        }

        v7 = sub_242F039D0();
        __swift_project_value_buffer(v7, qword_27ED5D2E0);
        v8 = sub_242F039B0();
        v9 = sub_242F056E0();
        if (os_log_type_enabled(v8, v9))
        {
          v10 = swift_slowAlloc();
          *v10 = 67240192;
          *(v10 + 4) = a3 & 1;
          _os_log_impl(&dword_242C53000, v8, v9, "Previous carousel decorations showing was cancelled. Animated: %{BOOL,public}d", v10, 8u);
          MEMORY[0x245D287D0](v10, -1, -1);
        }
      }

      else
      {
        if (qword_27ECEF4C0 != -1)
        {
          swift_once();
        }

        v11 = sub_242F039D0();
        __swift_project_value_buffer(v11, qword_27ED5D2E0);
        v12 = sub_242F039B0();
        v13 = sub_242F056E0();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          *v14 = 67240192;
          *(v14 + 4) = a3 & 1;
          _os_log_impl(&dword_242C53000, v12, v13, "Finished showing carousel decorations. Animated: %{BOOL,public}d", v14, 8u);
          MEMORY[0x245D287D0](v14, -1, -1);
        }

        swift_beginAccess();
        sub_242F053E0();
        swift_getWitnessTable();
        v15 = sub_242F05610();
        v16 = 0.0;
        if ((v15 & 1) == 0)
        {
          v16 = *(v6 + *(*v6 + 160) + 72);
        }

        sub_242DF44C0(v16);
      }
    }
  }

  return result;
}

uint64_t sub_242DF44C0(double a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_242F04BA0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v27 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v28 = &v26 - v9;
  v10 = sub_242F04B60();
  MEMORY[0x28223BE20](v10);
  v26 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27ECEF4C0 != -1)
  {
    swift_once();
  }

  v12 = sub_242F039D0();
  __swift_project_value_buffer(v12, qword_27ED5D2E0);
  v13 = sub_242F039B0();
  v14 = sub_242F056E0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134349056;
    *(v15 + 4) = a1;
    _os_log_impl(&dword_242C53000, v13, v14, "Hiding carousel decorations. Delay: %{public}f", v15, 0xCu);
    MEMORY[0x245D287D0](v15, -1, -1);
  }

  v29 = v6;
  v30 = v5;

  if (*(v2 + *(*v2 + 152)))
  {

    sub_242F04BD0();
  }

  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = *(v4 + 80);
  *(v18 + 32) = *(v4 + 96);
  *(v18 + 40) = v17;
  *(v18 + 48) = v16;
  *(v18 + 56) = a1;
  aBlock[4] = sub_242DFCAC0;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_242DEA248;
  aBlock[3] = &block_descriptor_38;
  _Block_copy(aBlock);
  v31 = MEMORY[0x277D84F90];
  sub_242DFCA68();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECFC610);
  sub_242C7E000(&qword_27ECFC060, &unk_27ECFC610);
  sub_242F05930();
  sub_242F04BE0();
  swift_allocObject();
  v19 = sub_242F04BC0();

  swift_beginAccess();
  *(v16 + 16) = v19;

  *(v2 + *(*v2 + 152)) = v19;

  sub_242D3DCD0();
  v20 = sub_242F05750();
  v21 = v27;
  sub_242F04B90();
  v22 = v28;
  sub_242F04BF0();
  v23 = v30;
  v24 = *(v29 + 8);
  result = v24(v21, v30);
  if (*(v2 + *(*v2 + 152)))
  {

    sub_242F05740();

    v24(v22, v23);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_242DF49B8(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_242F042C0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = *(*result + 200);
    v24 = v11;
    v23[1] = *(result + v16);
    v17 = swift_allocObject();
    v18 = swift_weakInit();
    v25 = v23;
    MEMORY[0x28223BE20](v18);
    v23[2] = &v23[-6];
    v23[-4] = a4;
    v23[-3] = a5;
    v23[-2] = a6;
    v23[-1] = v17;
    v19 = a6;
    v20 = swift_allocObject();
    swift_weakInit();
    swift_beginAccess();
    v21 = *(a3 + 16);
    v22 = swift_allocObject();
    *(v22 + 16) = a4;
    *(v22 + 24) = a5;
    *(v22 + 32) = v19;
    *(v22 + 40) = v20;
    *(v22 + 48) = v21;
    *(v22 + 56) = a1;
    swift_retain_n();

    sub_242F042A0();
    sub_242F03D40();
    (*(v12 + 8))(v14, v24);
  }

  return result;
}

uint64_t sub_242DF4C5C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_242DEF0D4();
    sub_242DEF1CC();
  }

  return result;
}

uint64_t sub_242DF4CC8(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a2)
    {
      v11 = result;

      if (sub_242F04BB0())
      {
        if (qword_27ECEF4C0 != -1)
        {
          swift_once();
        }

        v12 = sub_242F039D0();
        __swift_project_value_buffer(v12, qword_27ED5D2E0);
        v13 = sub_242F039B0();
        v14 = sub_242F056E0();
        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          *v15 = 0;
          _os_log_impl(&dword_242C53000, v13, v14, "Previous carousel decorations hiding was cancelled", v15, 2u);
          MEMORY[0x245D287D0](v15, -1, -1);
        }
      }

      else
      {
        if (qword_27ECEF4C0 != -1)
        {
          swift_once();
        }

        v16 = sub_242F039D0();
        __swift_project_value_buffer(v16, qword_27ED5D2E0);
        v17 = sub_242F039B0();
        v18 = sub_242F056E0();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          *v19 = 134349056;
          *(v19 + 4) = a4;
          _os_log_impl(&dword_242C53000, v17, v18, "Finished hiding carousel decorations. Delay: %{public}f", v19, 0xCu);
          MEMORY[0x245D287D0](v19, -1, -1);
        }

        if (*(v11 + *(*v11 + 160) + 64) != 1)
        {
          v20 = sub_242F039B0();
          v21 = sub_242F056E0();
          if (os_log_type_enabled(v20, v21))
          {
            v22 = swift_slowAlloc();
            *v22 = 134349056;
            *(v22 + 4) = a4;
            _os_log_impl(&dword_242C53000, v20, v21, "Animation settled after %{public}f.", v22, 0xCu);
            MEMORY[0x245D287D0](v22, -1, -1);
          }

          v23 = (v11 + *(*v11 + 120));
          v24 = *v23;
          if (*v23)
          {
            sub_242C5573C(*v23);
            sub_242DEDDE0();
            v24(v9);

            sub_242C655DC(v24);

            return (*(v7 + 8))(v9, a3);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_242DF5074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v78 = a1;
  v82 = *v2;
  v5 = v82[12];
  v6 = v82[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v74 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v73 = &v68 - v8;
  v72 = v82[11];
  v79 = v5;
  v9 = type metadata accessor for CarouselModel.Direction();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v68 - v11;
  v71 = *(v6 - 8);
  MEMORY[0x28223BE20](v13);
  v77 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v68 - v16;
  sub_242DEEF14();
  v81 = v6;
  v18 = sub_242F05380();

  if (v18 >= 2)
  {
    v70 = a2;
    sub_242DEDDE0();
    sub_242DEEF14();
    v19 = sub_242DEDD34();

    v20 = *(v71 + 8);
    v82 = v17;
    v75 = v20;
    v76 = v71 + 8;
    v20(v17, v81);
    (*(v10 + 16))(v12, v78, v9);
    v21 = v74;
    v22 = v74[6](v12, 2, AssociatedTypeWitness);
    v80 = v3;
    if (v22)
    {
      v23 = v72;
      if (v22 == 1)
      {
        v24 = -1;
      }

      else
      {
        v24 = 1;
      }

      goto LABEL_11;
    }

    v28 = v73;
    (v21)[4](v73, v12, AssociatedTypeWitness);
    v85 = sub_242DEEF14();
    MEMORY[0x28223BE20](v85);
    v29 = AssociatedTypeWitness;
    v23 = v72;
    *(&v68 - 4) = v81;
    *(&v68 - 3) = v23;
    *(&v68 - 2) = v79;
    *(&v68 - 1) = v28;
    sub_242F053E0();
    swift_getWitnessTable();
    sub_242F055D0();

    if (v84)
    {
      (v21[1])(v28, v29);
      v24 = 0;
LABEL_11:
      result = v71;
      goto LABEL_12;
    }

    v59 = v83;
    v60 = v83 - v19;
    v61 = __OFSUB__(v83, v19);
    if (v83 >= v19)
    {
      if (v61)
      {
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      sub_242DEEF14();
      v66 = sub_242F05380();

      v65 = v60 - v66;
      if (__OFSUB__(v60, v66))
      {
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      v64 = v59 - v19;
      v60 -= v66;
      if ((v65 & 0x8000000000000000) == 0)
      {
        goto LABEL_46;
      }
    }

    else
    {
      if (v61)
      {
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

      sub_242DEEF14();
      v62 = sub_242F05380();

      v63 = v59 + v62;
      if (__OFADD__(v59, v62))
      {
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      v31 = __OFSUB__(v63, v19);
      v64 = v63 - v19;
      if (v31)
      {
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      v65 = v59 - v19;
      if ((v60 & 0x8000000000000000) == 0)
      {
        goto LABEL_46;
      }
    }

    v65 = -v60;
    if (__OFSUB__(0, v60))
    {
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
      return result;
    }

LABEL_46:
    v67 = v64;
    if (v64 < 0)
    {
      v67 = -v64;
      if (__OFSUB__(0, v64))
      {
        goto LABEL_64;
      }
    }

    if (v65 >= v67)
    {
      v24 = v64;
    }

    else
    {
      v24 = v60;
    }

    (v21[1])(v73, v29);
    result = v71;
LABEL_12:
    v30 = v19;
    v31 = __OFADD__(v19, v24);
    v32 = v19 + v24;
    v33 = __OFADD__(v19, v24);
    if (v31)
    {
LABEL_54:
      __break(1u);
    }

    else
    {
      v69 = v24;
      v34 = v32;
      if (v32 < 0)
      {
        goto LABEL_21;
      }

      sub_242DEEF14();
      v35 = sub_242F05380();

      if (v32 >= v35)
      {
        v36 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
LABEL_56:
          __break(1u);
          goto LABEL_57;
        }

        sub_242DEEF14();
        v37 = sub_242F05380();

        v31 = __OFSUB__(v36, v37);
        v34 = v36 - v37;
        if (v31)
        {
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

        result = v71;
        if (v34)
        {
LABEL_21:
          v74 = (result + 16);
          do
          {
            v78 = v30;
            MEMORY[0x28223BE20](result);
            v38 = v81;
            *(&v68 - 4) = v81;
            *(&v68 - 3) = v23;
            v39 = v79;
            *(&v68 - 2) = v79;
            KeyPath = swift_getKeyPath();
            MEMORY[0x28223BE20](KeyPath);
            *(&v68 - 4) = v38;
            *(&v68 - 3) = v23;
            *(&v68 - 2) = v39;
            swift_getKeyPath();
            if (v34 < 0)
            {
              v73 = sub_242F03A70();
              v49 = v81;
              sub_242F053E0();
              swift_getWitnessTable();
              swift_getWitnessTable();
              v50 = v79;
              v51 = v72;
              sub_242F05680();
              (v73)(&v83, 0);

              v52 = (*v74)(v77, v82, v49);
              MEMORY[0x28223BE20](v52);
              *(&v68 - 4) = v49;
              *(&v68 - 3) = v51;
              *(&v68 - 2) = v50;
              v53 = swift_getKeyPath();
              MEMORY[0x28223BE20](v53);
              *(&v68 - 4) = v49;
              *(&v68 - 3) = v51;
              v54 = v51;
              *(&v68 - 2) = v50;
              swift_getKeyPath();
              v55 = sub_242F03A70();
              v56 = v82;
              sub_242F053B0();
              v55(&v83, 0);

              result = v75(v56, v49);
              v30 = v78 + 1;
              if (__OFADD__(v78, 1))
              {
                goto LABEL_53;
              }

              v48 = 1;
              v23 = v54;
            }

            else
            {
              v41 = sub_242F03A70();
              v42 = v81;
              sub_242F053E0();
              swift_getWitnessTable();
              sub_242F05660();
              v41(&v83, 0);

              v43 = (*v74)(v77, v82, v42);
              MEMORY[0x28223BE20](v43);
              *(&v68 - 4) = v42;
              *(&v68 - 3) = v23;
              v44 = v79;
              *(&v68 - 2) = v79;
              v45 = swift_getKeyPath();
              MEMORY[0x28223BE20](v45);
              *(&v68 - 4) = v42;
              *(&v68 - 3) = v23;
              *(&v68 - 2) = v44;
              swift_getKeyPath();
              v46 = sub_242F03A70();
              v47 = v82;
              sub_242F053A0();
              v46(&v83, 0);

              result = v75(v47, v42);
              v30 = v78 - 1;
              if (__OFSUB__(v78, 1))
              {
                __break(1u);
LABEL_53:
                __break(1u);
                goto LABEL_54;
              }

              v48 = -1;
            }

            v34 += v48;
          }

          while (v34);
          v33 = __OFADD__(v30, v69);
        }
      }

      if (!v33)
      {
        sub_242DEEF14();
        v57 = v70;
        v58 = v81;
        sub_242F05400();

        return (*(v71 + 56))(v57, 0, 1, v58);
      }
    }

    __break(1u);
    goto LABEL_56;
  }

  v25 = *(v71 + 56);
  v26 = v81;

  return v25(a2, 1, 1, v26);
}

uint64_t sub_242DF5B28()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v3 = &v6 - v2;
  sub_242F05AA0();
  swift_getAssociatedConformanceWitness();
  v4 = sub_242F04EE0();
  (*(v1 + 8))(v3, AssociatedTypeWitness);
  return v4 & 1;
}

uint64_t sub_242DF5C70()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = *(AssociatedTypeWitness - 8);
  v2 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  sub_242F05AA0();
  sub_242F05AA0();
  swift_getAssociatedConformanceWitness();
  v7 = sub_242F04EE0();
  v8 = *(v1 + 8);
  v8(v4, AssociatedTypeWitness);
  v8(v6, AssociatedTypeWitness);
  return v7 & 1;
}

uint64_t sub_242DF5E04(uint64_t result)
{
  v2 = (v1 + *(*v1 + 112));
  v3 = *v2;
  if (*v2)
  {
    v4 = result;
    sub_242C5573C(*v2);
    v3(v4);

    return sub_242C655DC(v3);
  }

  return result;
}

uint64_t sub_242DF5E90(uint64_t a1, double a2)
{
  v3 = v2;
  if (*(v2 + *(*v2 + 160) + 64) == 1)
  {
    if (qword_27ECEF4C0 != -1)
    {
      swift_once();
    }

    v6 = sub_242F039D0();
    __swift_project_value_buffer(v6, qword_27ED5D2E0);
    v7 = sub_242F039B0();
    v8 = sub_242F056E0();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_242C53000, v7, v8, "Animation settled immidiately.", v9, 2u);
      MEMORY[0x245D287D0](v9, -1, -1);
    }

    v10 = (v3 + *(*v3 + 120));
    v11 = *v10;
    if (*v10)
    {
      sub_242C5573C(*v10);
      v11(a1);
      sub_242C655DC(v11);
    }
  }

  swift_beginAccess();
  sub_242F053E0();
  swift_getWitnessTable();
  v12 = sub_242F05610();
  v13 = 0.0;
  if ((v12 & 1) == 0)
  {
    v13 = a2;
  }

  return sub_242DF44C0(v13);
}

uint64_t CarouselModel.deinit()
{
  v1 = *(*v0 + 104);
  v2 = sub_242F03AB0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_242C655DC(*(v0 + *(*v0 + 112)));
  sub_242C655DC(*(v0 + *(*v0 + 120)));
  sub_242C655DC(*(v0 + *(*v0 + 128)));
  sub_242C655DC(*(v0 + *(*v0 + 136)));

  v3 = *(*v0 + 168);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF31C0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 176);
  sub_242F053E0();
  v6 = sub_242F03AB0();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(*v0 + 184);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2ED8);
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v7, v8);
  v9(v0 + *(*v0 + 192), v8);

  return v0;
}

uint64_t CarouselModel.__deallocating_deinit()
{
  CarouselModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_242DF63A8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CarouselModel();
  result = sub_242F03A10();
  *a1 = result;
  return result;
}

double sub_242DF63F0(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v8 - v4;
  sub_242DEDDE0();
  sub_242DEEF14();
  v6 = sub_242DEDD34();

  (*(v3 + 8))(v5, v2);
  return -v6;
}

uint64_t sub_242DF6514(uint64_t a1)
{
  v17[1] = a1;
  v2 = *v1;
  v3 = *(*v1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v17 - v9;
  v11 = *(v3 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = v17 - v13;
  if ((*(v1 + *(v2 + 160) + 64) & 1) == 0)
  {
    return sub_242DEF0E8();
  }

  sub_242DEDDE0();
  sub_242F05AA0();
  (*(v11 + 8))(v14, v3);
  sub_242F05AA0();
  swift_getAssociatedConformanceWitness();
  sub_242F04EE0();
  v15 = *(v5 + 8);
  v15(v7, AssociatedTypeWitness);
  return (v15)(v10, AssociatedTypeWitness);
}

double sub_242DF67A8()
{
  v1 = v0 + *(*v0 + 160);
  v2 = *(v1 + 32);
  if (v2 == 255)
  {
    v3 = 11.0;
  }

  else
  {
    v3 = *(v1 + 8);
    if (v2)
    {
      return v3;
    }
  }

  v4 = sub_242DEF0E8();
  v5 = 0.0;
  if (v4)
  {
    v5 = *(v0 + *(*v0 + 160) + 40);
  }

  return v5 + v3;
}

uint64_t CarouselModel.Direction.description.getter(uint64_t a1)
{
  v2 = v1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v7 = v16 - v6;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, v2, a1, v9);
  v13 = (*(v5 + 48))(v11, 2, AssociatedTypeWitness);
  if (v13)
  {
    if (v13 == 1)
    {
      return 28789;
    }

    else
    {
      return 1853321060;
    }
  }

  else
  {
    (*(v5 + 32))(v7, v11, AssociatedTypeWitness);
    v16[0] = 0;
    v16[1] = 0xE000000000000000;
    MEMORY[0x245D26660](0x2874736574736166, 0xE800000000000000);
    sub_242F060F0();
    MEMORY[0x245D26660](41, 0xE100000000000000);
    v15 = v16[0];
    (*(v5 + 8))(v7, AssociatedTypeWitness);
    return v15;
  }
}

double sub_242DF6A44@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

double sub_242DF6A50(_OWORD *a1, void (*a2)(_OWORD *__return_ptr))
{
  a2(v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  a1[1] = v4;
  return result;
}

uint64_t sub_242DF6A98()
{
  type metadata accessor for CarouselModel();
  swift_getWitnessTable();

  return sub_242F03DA0();
}

uint64_t Carousel.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF7878);
  *&v49 = a1 + 5;
  v3 = a1[3];
  v4 = sub_242F053E0();
  v5 = a1[6];
  v46 = v3;
  v47 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v48 = a1[2];
  sub_242F03E00();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF7880);
  sub_242F03E00();
  v42 = sub_242F03E00();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF7888);
  v43 = sub_242F03E00();
  v44 = sub_242F03E00();
  *&v86 = v4;
  *(&v86 + 1) = AssociatedTypeWitness;
  *&v87 = sub_242F03E00();
  *(&v87 + 1) = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_242F049B0();
  v84 = a1[4];
  v7 = v84;
  v85 = MEMORY[0x277CDF678];
  v8 = MEMORY[0x277CDFAD8];
  WitnessTable = swift_getWitnessTable();
  v83 = sub_242C7E000(&qword_27ECF7890, &qword_27ECF7880);
  v80 = swift_getWitnessTable();
  v81 = MEMORY[0x277CDF690];
  v78 = swift_getWitnessTable();
  v79 = sub_242C7E000(&qword_27ECF7898, &qword_27ECF7888);
  v76 = swift_getWitnessTable();
  v77 = sub_242DFCAD8();
  v74 = swift_getWitnessTable();
  v75 = sub_242DFCB2C();
  v45 = v8;
  v73 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_242F04910();
  sub_242F03E00();
  v71 = swift_getWitnessTable();
  v72 = MEMORY[0x277CDF748];
  swift_getWitnessTable();
  sub_242F03D90();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF78B0);
  sub_242F03E00();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF78B8);
  sub_242F03E00();
  swift_getTupleTypeMetadata2();
  sub_242F04AF0();
  v38[1] = swift_getWitnessTable();
  v9 = sub_242F04930();
  v41 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = v38 - v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF78C0);
  v39 = sub_242F03E00();
  v43 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v52 = v38 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF78C8);
  v13 = sub_242F03E00();
  v44 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v40 = v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v42 = v38 - v16;
  v18 = *v50;
  v17 = *(v50 + 8);
  v19 = *(v50 + 16);
  v20 = *(v50 + 24);
  *&v21 = v7;
  *(&v21 + 1) = *v49;
  *&v22 = v48;
  v23 = v47;
  *(&v22 + 1) = v46;
  v49 = v21;
  v50 = v22;
  v60 = v22;
  v61 = v21;
  v62 = v47;
  v63 = v18;
  v64 = v17;
  v65 = v19;
  v66 = v20;
  sub_242F04A70();
  sub_242F04920();
  v24 = (v17 + *(*v17 + 160));
  v25 = *(v24 + 32);
  v26 = v24[1];
  v86 = *v24;
  v87 = v26;
  LOBYTE(AssociatedConformanceWitness) = v25;
  v27 = swift_getWitnessTable();
  sub_242DFCBB8();
  sub_242F04630();
  (*(v41 + 8))(v11, v9);
  v53 = v50;
  v54 = v49;
  v55 = v23;
  v56 = v18;
  v57 = v17;
  v58 = v19;
  v59 = v20;
  sub_242F04A70();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF78D8);
  v28 = sub_242C7E000(&qword_27ECF78E0, &qword_27ECF78C0);
  v69 = v27;
  v70 = v28;
  v29 = v39;
  v30 = swift_getWitnessTable();
  sub_242C7E000(&qword_27ECF78E8, &qword_27ECF78D8);
  v31 = v40;
  v32 = v52;
  sub_242F04690();
  (*(v43 + 8))(v32, v29);
  v33 = sub_242C7E000(&qword_27ECF78F0, &qword_27ECF78C8);
  v67 = v30;
  v68 = v33;
  v34 = swift_getWitnessTable();
  v35 = v42;
  sub_242CA32B4(v31, v13, v34);
  v36 = *(v44 + 8);
  v36(v31, v13);
  sub_242CA32B4(v35, v13, v34);
  return (v36)(v35, v13);
}

uint64_t sub_242DF73C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v75 = a8;
  v81 = a4;
  v78 = a1;
  v79 = a3;
  v85 = a9;
  v77 = sub_242F04A30();
  v14 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v16 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7C20);
  MEMORY[0x28223BE20](v76);
  v18 = (&v72 - v17);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7878);
  MEMORY[0x28223BE20](v87);
  v84 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v72 - v21;
  MEMORY[0x28223BE20](v23);
  v88 = &v72 - v24;
  v74 = sub_242F04740();
  sub_242F049D0();
  v80 = a5;
  *&v140 = a5;
  *(&v140 + 1) = a6;
  v25 = v75;
  v82 = a10;
  *&v83 = a6;
  *&v86 = a7;
  *&v141 = a7;
  *(&v141 + 1) = v75;
  *&v142 = a10;
  type metadata accessor for Carousel();
  v26 = (a2 + *(*a2 + 160));
  v27 = *v26;
  v72 = v26[1];
  v73 = v27;
  v28 = *(v26 + 32);

  LOBYTE(a7) = sub_242DEF0C0();

  v29 = 0.0;
  v30 = 0.0;
  if (a7)
  {
    v30 = -*(a2 + *(*a2 + 160) + 40);
  }

  v31 = v18 + *(v76 + 36);
  (*(v14 + 32))(v31, v16, v77);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7C28);
  v33 = &v31[*(v32 + 52)];
  v34 = v72;
  *v33 = v73;
  *(v33 + 1) = v34;
  v33[32] = v28;
  *(v33 + 5) = v30;
  *&v31[*(v32 + 56)] = 256;
  *v18 = v74;

  LOBYTE(v31) = sub_242DEF0C0();

  if (v31)
  {
    v35 = 1.0;
  }

  else
  {
    v35 = 0.0;
  }

  sub_242CF6B3C(v18, v22, &qword_27ECF7C20);
  v36 = v88;
  *&v22[*(v87 + 36)] = v35;
  sub_242CF6B3C(v22, v36, &qword_27ECF7878);
  v37 = swift_allocObject();
  v38 = v81;
  v40 = v82;
  v39 = v83;
  v37[2] = v80;
  v37[3] = v39;
  v37[4] = v86;
  v37[5] = v25;
  v42 = v78;
  v41 = v79;
  v37[6] = v40;
  v37[7] = v42;
  v37[8] = a2;
  v37[9] = v41;
  v37[10] = v38;
  v43 = sub_242F053E0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_242F03E00();

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF7880);
  v79 = sub_242F03E00();
  v78 = sub_242F03E00();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF7888);
  v80 = sub_242F03E00();
  v81 = sub_242F03E00();
  v45 = sub_242F03E00();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v140 = v43;
  *(&v140 + 1) = AssociatedTypeWitness;
  *&v141 = v45;
  *(&v141 + 1) = WitnessTable;
  *&v142 = AssociatedConformanceWitness;
  sub_242F049B0();
  v128 = v86;
  v129 = MEMORY[0x277CDF678];
  v48 = swift_getWitnessTable();
  v49 = sub_242C7E000(&qword_27ECF7890, &qword_27ECF7880);
  v126 = v48;
  v127 = v49;
  v124 = swift_getWitnessTable();
  v125 = MEMORY[0x277CDF690];
  v50 = swift_getWitnessTable();
  v51 = sub_242C7E000(&qword_27ECF7898, &qword_27ECF7888);
  v122 = v50;
  v123 = v51;
  v52 = swift_getWitnessTable();
  v53 = sub_242DFCAD8();
  v120 = v52;
  v121 = v53;
  v54 = swift_getWitnessTable();
  v55 = sub_242DFCB2C();
  v118 = v54;
  v119 = v55;
  v117 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_242F04910();
  sub_242F03E00();
  v115 = swift_getWitnessTable();
  v116 = MEMORY[0x277CDF748];
  swift_getWitnessTable();
  *&v140 = sub_242F03D80();
  *(&v140 + 1) = v56;
  *&v134 = 0x6B63617473;
  *(&v134 + 1) = 0xE500000000000000;
  sub_242F03D90();
  v57 = swift_getWitnessTable();
  sub_242F04640();

  v111 = v130;
  v112 = v131;
  v113 = v132;
  v114 = v133;
  v58 = (a2 + *(*a2 + 160));
  v59 = *v58;
  v83 = v58[1];
  v86 = v59;
  v60 = *(v58 + 32);

  v61 = sub_242DEF0C0();

  if (v61)
  {
    v29 = -*(a2 + *(*a2 + 160) + 40);
  }

  v140 = v86;
  v141 = v83;
  LOBYTE(v142) = v60;
  *(&v142 + 1) = v29;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF78B0);
  sub_242F03E00();
  v62 = sub_242C7E000(&qword_27ECF7C30, &qword_27ECF78B0);
  v98[4] = v57;
  v98[5] = v62;
  v63 = swift_getWitnessTable();
  sub_242DFE3E4();
  sub_242F046D0();

  v107 = v136;
  v108 = v137;
  v109 = v138;
  v110 = v139;
  v105 = v134;
  v106 = v135;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF78B8);
  v64 = sub_242F03E00();
  v65 = sub_242C7E000(&qword_27ECF7C38, &qword_27ECF78B8);
  v98[2] = v63;
  v98[3] = v65;
  v66 = swift_getWitnessTable();
  sub_242CA32B4(&v105, v64, v66);
  v99[2] = v107;
  v99[3] = v108;
  v99[4] = v109;
  v100 = v110;
  v99[0] = v105;
  v99[1] = v106;
  v67 = *(v64 - 8);
  v68 = *(v67 + 8);
  v68(v99, v64);
  v69 = v88;
  v70 = v84;
  sub_242DFF020(v88, v84);
  v101[2] = v142;
  v101[3] = v143;
  v101[4] = v144;
  v102 = v145;
  v101[0] = v140;
  v101[1] = v141;
  v94 = v142;
  v95 = v143;
  v96 = v144;
  v97 = v145;
  v92 = v140;
  v93 = v141;
  v98[0] = v70;
  v98[1] = &v92;
  (*(v67 + 16))(&v105, v101, v64);
  v91[0] = v87;
  v91[1] = v64;
  v89 = sub_242DFF090();
  v90 = v66;
  sub_242DE9FD8(v98, 2uLL, v91);
  v103[2] = v142;
  v103[3] = v143;
  v103[4] = v144;
  v104 = v145;
  v103[0] = v140;
  v103[1] = v141;
  v68(v103, v64);
  sub_242DFF1D4(v69);
  v107 = v94;
  v108 = v95;
  v109 = v96;
  v110 = v97;
  v105 = v92;
  v106 = v93;
  v68(&v105, v64);
  return sub_242DFF1D4(v70);
}

uint64_t sub_242DF7E98()
{
  v0 = sub_242F03BB0();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x277CDF3D0], v0, v2);
  sub_242F03BA0();
  (*(v1 + 8))(v4, v0);
  return 0x7372657474616C70;
}

uint64_t sub_242DF7FB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v40 = a8;
  v46 = a6;
  v51 = a4;
  v52 = a5;
  v48 = a2;
  v49 = a3;
  v50 = a1;
  v53 = a9;
  v47 = a10;
  v12 = sub_242F053E0();
  v44 = a7;
  v45 = a11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_242F03E00();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF7880);
  sub_242F03E00();
  sub_242F03E00();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF7888);
  v42 = sub_242F03E00();
  v54 = sub_242F03E00();
  v80 = v12;
  v81 = AssociatedTypeWitness;
  v82 = sub_242F03E00();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = sub_242F049B0();
  v15 = v40;
  v78 = v40;
  v79 = MEMORY[0x277CDF678];
  v16 = MEMORY[0x277CDFAD8];
  v76 = swift_getWitnessTable();
  v77 = sub_242C7E000(&qword_27ECF7890, &qword_27ECF7880);
  v74 = swift_getWitnessTable();
  v75 = MEMORY[0x277CDF690];
  v43 = v16;
  v72 = swift_getWitnessTable();
  v73 = sub_242C7E000(&qword_27ECF7898, &qword_27ECF7888);
  v70 = swift_getWitnessTable();
  v71 = sub_242DFCAD8();
  v68 = swift_getWitnessTable();
  v69 = sub_242DFCB2C();
  v67 = swift_getWitnessTable();
  v38 = v14;
  v37 = swift_getWitnessTable();
  v17 = sub_242F04910();
  v41 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v54 = &v35 - v18;
  v19 = sub_242F03E00();
  v42 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v36 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v39 = &v35 - v22;
  v23 = v46;
  v24 = v47;
  v26 = v44;
  v25 = v45;
  v55 = v46;
  v56 = v44;
  v57 = v15;
  v58 = v47;
  v59 = v45;
  v60 = v48;
  v61 = v49;
  v62 = v51;
  v63 = v52;
  v64 = v50;
  sub_242F04080();
  sub_242F04900();
  v80 = v23;
  v81 = v26;
  v82 = v15;
  WitnessTable = v24;
  AssociatedConformanceWitness = v25;
  type metadata accessor for Carousel();

  sub_242DF63F0(v27);

  sub_242F03CF0();
  v28 = swift_getWitnessTable();
  v29 = v36;
  v30 = v54;
  sub_242F04680();
  (*(v41 + 8))(v30, v17);
  v65 = v28;
  v66 = MEMORY[0x277CDF748];
  v31 = swift_getWitnessTable();
  v32 = v39;
  sub_242CA32B4(v29, v19, v31);
  v33 = *(v42 + 8);
  v33(v29, v19);
  sub_242CA32B4(v32, v19, v31);
  return (v33)(v32, v19);
}

uint64_t sub_242DF8554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v53 = a8;
  v73 = a6;
  v57 = a5;
  v67 = a4;
  v66 = a3;
  v50 = a2;
  v64 = a1;
  v72 = a9;
  v51 = a10;
  v55 = sub_242F03D10();
  v12 = *(v55 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v55);
  v52 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_242F053E0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v70 = AssociatedTypeWitness;
  v54 = sub_242F03E00();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF7880);
  v60 = sub_242F03E00();
  v58 = sub_242F03E00();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF7888);
  v63 = sub_242F03E00();
  v68 = sub_242F03E00();
  v16 = sub_242F03E00();
  v61 = v16;
  v71 = v14;
  WitnessTable = swift_getWitnessTable();
  v69 = WitnessTable;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v87 = v14;
  v88 = AssociatedTypeWitness;
  v89 = v16;
  v90 = WitnessTable;
  v91 = AssociatedConformanceWitness;
  v56 = sub_242F049B0();
  v65 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v59 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v62 = &v49 - v21;
  v87 = v73;
  v88 = a7;
  v22 = a7;
  v23 = v53;
  v24 = v51;
  v89 = v53;
  v90 = v51;
  v91 = a11;
  type metadata accessor for Carousel();
  v25 = v50;

  v26 = sub_242DEEF14();

  v87 = v26;
  v27 = v12;
  v28 = v52;
  v29 = v55;
  (*(v12 + 16))(v52, v57, v55);
  v30 = (*(v12 + 80) + 88) & ~*(v12 + 80);
  v31 = swift_allocObject();
  *(v31 + 2) = v73;
  *(v31 + 3) = v22;
  *(v31 + 4) = v23;
  *(v31 + 5) = v24;
  v32 = v64;
  *(v31 + 6) = a11;
  *(v31 + 7) = v32;
  v33 = v66;
  *(v31 + 8) = v25;
  *(v31 + 9) = v33;
  *(v31 + 10) = v67;
  (*(v27 + 32))(&v31[v30], v28, v29);
  v85 = v23;
  v86 = MEMORY[0x277CDF678];

  v34 = swift_getWitnessTable();
  v35 = sub_242C7E000(&qword_27ECF7890, &qword_27ECF7880);
  v83 = v34;
  v84 = v35;
  v81 = swift_getWitnessTable();
  v82 = MEMORY[0x277CDF690];
  v36 = swift_getWitnessTable();
  v37 = sub_242C7E000(&qword_27ECF7898, &qword_27ECF7888);
  v79 = v36;
  v80 = v37;
  v38 = swift_getWitnessTable();
  v39 = sub_242DFCAD8();
  v77 = v38;
  v78 = v39;
  v40 = swift_getWitnessTable();
  v41 = sub_242DFCB2C();
  v75 = v40;
  v76 = v41;
  v42 = swift_getWitnessTable();
  v43 = v59;
  sub_242F049A0();
  v74 = v42;
  v44 = v56;
  v45 = swift_getWitnessTable();
  v46 = v62;
  sub_242CA32B4(v43, v44, v45);
  v47 = *(v65 + 8);
  v47(v43, v44);
  sub_242CA32B4(v46, v44, v45);
  return (v47)(v46, v44);
}

uint64_t sub_242DF8BB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(void, __n128)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v104 = a7;
  v111 = a5;
  v106 = a4;
  v115 = a3;
  v110 = a2;
  v101 = a1;
  v100 = a8;
  v105 = a11;
  v98 = *(a7 - 8);
  v112 = *(v98 + 64);
  v114 = a10;
  v113 = a9;
  MEMORY[0x28223BE20](a1);
  v109 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_242F03E00();
  v87 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v84 - v21;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF7880);
  v23 = sub_242F03E00();
  v89 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v85 = &v84 - v24;
  v88 = sub_242F03E00();
  v90 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v86 = &v84 - v25;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF7888);
  v91 = sub_242F03E00();
  v92 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v107 = &v84 - v26;
  v94 = sub_242F03E00();
  v97 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v108 = &v84 - v27;
  v96 = sub_242F03E00();
  v99 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v93 = &v84 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v29);
  v95 = &v84 - v31;
  a4(a1, v30);
  sub_242F03CF0();
  sub_242F03CF0();
  sub_242F04A70();
  v32 = v113;
  sub_242F04670();
  v33 = *(v16 + 8);
  v103 = a6;
  v33(v19, a6);
  v131 = v32;
  v132 = MEMORY[0x277CDF678];
  v34 = MEMORY[0x277CDFAD8];
  WitnessTable = swift_getWitnessTable();
  sub_242DFF324();
  v36 = v85;
  sub_242F046D0();
  (*(v87 + 8))(v22, v20);
  v126 = a6;
  v127 = v104;
  v128 = v32;
  v129 = v114;
  v37 = v105;
  v130 = v105;
  type metadata accessor for Carousel();

  v38 = v101;
  sub_242DF6514(v101);
  v40 = v39;
  v42 = v41;

  sub_242F04B50();
  v44 = v43;
  v46 = v45;
  v47 = sub_242C7E000(&qword_27ECF7890, &qword_27ECF7880);
  v124 = WitnessTable;
  v125 = v47;
  v102 = v34;
  v48 = swift_getWitnessTable();
  v49 = v86;
  MEMORY[0x245D25BF0](v23, v48, v40, v42, v44, v46);
  (*(v89 + 8))(v36, v23);
  sub_242F04B50();
  sub_242F03CA0();
  sub_242F03CB0();
  sub_242F03CC0();

  v122 = v48;
  v123 = MEMORY[0x277CDF690];
  v50 = v88;
  v51 = swift_getWitnessTable();
  sub_242F045B0();

  (*(v90 + 8))(v49, v50);
  v52 = v98;
  v90 = *(v98 + 16);
  v53 = v109;
  v54 = v38;
  v55 = v104;
  (v90)(v109, v54, v104);
  v56 = (*(v52 + 80) + 88) & ~*(v52 + 80);
  v57 = swift_allocObject();
  v57[2] = v103;
  v57[3] = v55;
  v58 = v114;
  v57[4] = v113;
  v57[5] = v58;
  v59 = v110;
  v57[6] = v37;
  v57[7] = v59;
  v60 = v106;
  v57[8] = v115;
  v57[9] = v60;
  v61 = v111;
  v57[10] = v111;
  v98 = *(v52 + 32);
  v62 = v53;
  v63 = v55;
  (v98)(v57 + v56, v62, v55);
  v64 = sub_242C7E000(&qword_27ECF7898, &qword_27ECF7888);
  v120 = v51;
  v121 = v64;

  v65 = v91;
  v66 = swift_getWitnessTable();
  v67 = v107;
  sub_242DF98AC(sub_242DFF378, v57, v65, v66, &type metadata for OnScrollIn);

  (*(v92 + 8))(v67, v65);
  v68 = v109;
  (v90)(v109, v101, v63);
  v69 = swift_allocObject();
  v69[2] = v103;
  v69[3] = v63;
  v70 = v114;
  v69[4] = v113;
  v69[5] = v70;
  v71 = v110;
  v69[6] = v105;
  v69[7] = v71;
  v72 = v106;
  v69[8] = v115;
  v69[9] = v72;
  v69[10] = v61;
  (v98)(v69 + v56, v68, v63);
  v73 = sub_242DFCAD8();
  v118 = v66;
  v119 = v73;

  v74 = v94;
  v75 = swift_getWitnessTable();
  v76 = v93;
  v77 = v108;
  sub_242DF98AC(sub_242DFF454, v69, v74, v75, &type metadata for OnScrollOut);

  (*(v97 + 8))(v77, v74);
  v78 = sub_242DFCB2C();
  v116 = v75;
  v117 = v78;
  v79 = v96;
  v80 = swift_getWitnessTable();
  v81 = v95;
  sub_242CA32B4(v76, v79, v80);
  v82 = *(v99 + 8);
  v82(v76, v79);
  sub_242CA32B4(v81, v79, v80);
  return (v82)(v81, v79);
}

uint64_t sub_242DF9754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for Carousel();
  v7 = (a2 + *(*a2 + 128));
  result = swift_beginAccess();
  v9 = *v7;
  if (*v7)
  {
    sub_242C5573C(v9);
    v9(a5);
    return sub_242C655DC(v9);
  }

  return result;
}

uint64_t sub_242DF9800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for Carousel();
  v7 = (a2 + *(*a2 + 136));
  result = swift_beginAccess();
  v9 = *v7;
  if (*v7)
  {
    sub_242C5573C(v9);
    v9(a5);
    return sub_242C655DC(v9);
  }

  return result;
}

uint64_t sub_242DF98AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = 0;
  sub_242F048A0();
  v10 = v13;
  v11 = v14;
  v13 = a1;
  v14 = a2;
  v15 = v10;
  v16 = v11;
  MEMORY[0x245D25CB0](&v13, a3, a5, a4);
}

uint64_t sub_242DF994C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t (**a9)@<X0>(uint64_t a1@<X8>)@<X8>, uint64_t a10)
{
  v19 = swift_allocObject();
  *(v19 + 2) = a5;
  *(v19 + 3) = a6;
  *(v19 + 4) = a7;
  *(v19 + 5) = a8;
  *(v19 + 6) = a10;
  *(v19 + 7) = a1;
  *(v19 + 8) = a2;
  *(v19 + 9) = a3;
  *(v19 + 10) = a4;
  *a9 = sub_242DFEF70;
  a9[1] = v19;
}

uint64_t sub_242DF9A08@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = sub_242F04740();
  type metadata accessor for Carousel();
  swift_beginAccess();

  v5 = sub_242F05380();

  v6 = sub_242DEEAD0();

  v7 = a1 + *(*a1 + 160);
  if (*(v7 + 32) == 255)
  {
    v8 = 0x3FF3333333333333;
  }

  else
  {
    v8 = *(v7 + 24);
  }

  v9 = sub_242F04A70();
  v11 = v10;
  sub_242F03CF0();
  v13 = v12;

  v14 = sub_242DF67A8();

  v15 = a1 + *(*a1 + 160);
  v16 = 0;
  if (*(v15 + 32) != 255)
  {
    v16 = *(v15 + 16);
  }

  v17 = v13 * 0.5 + v14;

  v18 = sub_242DEF0E8();

  v20 = 1.0;
  if ((v18 & 1) == 0)
  {
    v20 = 0.0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v8;
  *(a2 + 32) = v9;
  *(a2 + 40) = v11;
  *(a2 + 48) = v17;
  *(a2 + 56) = v16;
  *(a2 + 64) = v20;
  return result;
}

double sub_242DF9BF0@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  result = *(v1 + 40);
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  *(a1 + 40) = result;
  return result;
}

double sub_242DF9C0C@<D0>(double *a1@<X8>)
{
  result = *(v1 + 40);
  *a1 = result;
  return result;
}

double sub_242DF9C18(double *a1)
{
  result = *a1;
  *(v1 + 40) = *a1;
  return result;
}

double (*sub_242DF9C24(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 40);
  return sub_242DF9C50;
}

double sub_242DF9C50(uint64_t a1)
{
  result = *a1;
  *(*(a1 + 8) + 40) = *a1;
  return result;
}

uint64_t sub_242DF9C64@<X0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v11 = sub_242F03E30();
  MEMORY[0x28223BE20](v11);
  v13 = (&v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *v5;
  v15 = *(v5 + 32);
  v16 = *(v5 + 40);
  v29.origin.x = a2;
  v29.origin.y = a3;
  v29.size.width = a4;
  v29.size.height = a5;
  CGRectInset(v29, v16, v16);
  if (v15 == 255)
  {
    result = sub_242F048F0();
    v22 = v26;
    v23 = v27;
    v20 = v28;
  }

  else
  {
    v17 = *(v11 + 20);
    v18 = *MEMORY[0x277CE0118];
    v19 = sub_242F04070();
    (*(*(v19 - 8) + 104))(v13 + v17, v18, v19);
    *v13 = v14 - v16;
    v13[1] = v14 - v16;
    sub_242F03E10();
    v24 = v27;
    v25 = v26;
    v20 = v28;
    result = sub_242DFEEC4(v13);
    v23 = v24;
    v22 = v25;
  }

  *a1 = v22;
  *(a1 + 16) = v23;
  *(a1 + 32) = v20;
  return result;
}

uint64_t sub_242DF9E10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_242DFE3E4();

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_242DF9E74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_242DFE3E4();

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_242DF9ED8(uint64_t a1)
{
  v2 = sub_242DFE3E4();

  return MEMORY[0x282133738](a1, v2);
}

void sub_242DF9F24(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = *(v2 + 32);
  v4 = *(v2 + 16);
  *a1 = *v2;
  *(a1 + 16) = v4;
  *(a1 + 32) = v3;
  *(a1 + 40) = a2;
}

uint64_t sub_242DF9F3C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_242F03E30();
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 32) == 255)
  {
    result = sub_242F048F0();
    v13 = v17;
    v14 = v18;
    v11 = v19;
  }

  else
  {
    v7 = *v1;
    v8 = *(v4 + 20);
    v9 = *MEMORY[0x277CE0118];
    v10 = sub_242F04070();
    (*(*(v10 - 8) + 104))(&v6[v8], v9, v10);
    *v6 = v7;
    *(v6 + 1) = v7;
    sub_242F03E10();
    v15 = v18;
    v16 = v17;
    v11 = v19;
    result = sub_242DFEEC4(v6);
    v14 = v15;
    v13 = v16;
  }

  *a1 = v13;
  *(a1 + 16) = v14;
  *(a1 + 32) = v11;
  return result;
}

void (*sub_242DFA09C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_242F03B10();
  return sub_242DFA124;
}

void sub_242DFA124(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_242DFA170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_242DFE608();

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_242DFA1D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_242DFE608();

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_242DFA238(uint64_t a1)
{
  v2 = sub_242DFE608();

  return MEMORY[0x282133738](a1, v2);
}

uint64_t sub_242DFA284(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = sub_242F04B60();
  v26 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_242F04B80();
  MEMORY[0x28223BE20](v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + 8);
  v18 = *(a1 + 24);
  if (v17 > -v18 && v17 < v18)
  {
    v25 = v14;
    LOBYTE(aBlock) = a4 & 1;
    v28 = a5;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7BF8);
    sub_242F048B0();
    if (v33)
    {
    }

    else
    {
      LOBYTE(aBlock) = a4 & 1;
      v28 = a5;
      v33 = 1;
      sub_242F048C0();

      sub_242D3DCD0();
      v21 = sub_242F05750();
      v22 = swift_allocObject();
      *(v22 + 16) = a2;
      *(v22 + 24) = a3;
      *(v22 + 32) = a4 & 1;
      *(v22 + 40) = a5;
      v31 = sub_242CD5510;
      v32 = v22;
      aBlock = MEMORY[0x277D85DD0];
      v28 = 1107296256;
      v29 = sub_242DEA248;
      v30 = &block_descriptor_184;
      v23 = _Block_copy(&aBlock);

      sub_242F04B70();
      aBlock = MEMORY[0x277D84F90];
      sub_242DFCA68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECFC610);
      sub_242C7E000(&qword_27ECFC060, &unk_27ECFC610);
      sub_242F05930();
      MEMORY[0x245D26D60](0, v16, v12, v23);
      _Block_release(v23);

      (*(v26 + 8))(v12, v10);
      return (*(v25 + 8))(v16, v13);
    }
  }

  else
  {
    LOBYTE(aBlock) = a4 & 1;
    v28 = a5;
    v33 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7BF8);
    return sub_242F048C0();
  }
}

uint64_t sub_242DFA620@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *v2;
  v5 = v2[1];
  v7 = *(v2 + 16);
  v8 = v2[3];
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  *(v9 + 24) = v5;
  *(v9 + 32) = v7;
  *(v9 + 40) = v8;

  v10 = sub_242F04A70();
  v12 = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7BE8);
  (*(*(v13 - 8) + 16))(a2, a1, v13);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7BF0);
  v15 = (a2 + *(result + 36));
  *v15 = sub_242DFED90;
  v15[1] = v9;
  v15[2] = v10;
  v15[3] = v12;
  return result;
}

uint64_t sub_242DFA724@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, int a3@<W3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t *a6@<X8>)
{
  v26 = a5;
  HIDWORD(v25) = a3;
  v10 = sub_242F041E0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_242F04740();
  v27 = 0x6B63617473;
  v28 = 0xE500000000000000;
  sub_242F04240();
  sub_242F03D00();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  (*(v11 + 8))(v13, v10);
  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  *(v23 + 24) = a2;
  *(v23 + 32) = BYTE4(v25);
  *(v23 + 40) = a4;
  *a6 = v14;
  a6[1] = v16;
  a6[2] = v18;
  a6[3] = v20;
  a6[4] = v22;
  a6[5] = v26;
  a6[6] = v23;
}

uint64_t sub_242DFA8C8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = sub_242F04B60();
  v26 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_242F04B80();
  MEMORY[0x28223BE20](v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + 8);
  v18 = *(a1 + 24);
  if (v17 > -v18 && v17 < v18)
  {
    LOBYTE(aBlock) = a4 & 1;
    v28 = a5;
    v33 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7BF8);
    return sub_242F048C0();
  }

  else
  {
    v25 = v14;
    LOBYTE(aBlock) = a4 & 1;
    v28 = a5;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7BF8);
    sub_242F048B0();
    if (v33 == 1)
    {
      LOBYTE(aBlock) = a4 & 1;
      v28 = a5;
      v33 = 0;
      sub_242F048C0();

      sub_242D3DCD0();
      v20 = sub_242F05750();
      v21 = swift_allocObject();
      *(v21 + 16) = a2;
      *(v21 + 24) = a3;
      *(v21 + 32) = a4 & 1;
      *(v21 + 40) = a5;
      v31 = sub_242CD607C;
      v32 = v21;
      aBlock = MEMORY[0x277D85DD0];
      v28 = 1107296256;
      v29 = sub_242DEA248;
      v30 = &block_descriptor_196;
      v22 = _Block_copy(&aBlock);

      sub_242F04B70();
      aBlock = MEMORY[0x277D84F90];
      sub_242DFCA68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECFC610);
      sub_242C7E000(&qword_27ECFC060, &unk_27ECFC610);
      sub_242F05930();
      MEMORY[0x245D26D60](0, v16, v12, v22);
      _Block_release(v22);

      (*(v26 + 8))(v12, v10);
      return (*(v25 + 8))(v16, v13);
    }

    else
    {
    }
  }
}

uint64_t sub_242DFAC68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *v2;
  v5 = v2[1];
  v7 = *(v2 + 16);
  v8 = v2[3];
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  *(v9 + 24) = v5;
  *(v9 + 32) = v7;
  *(v9 + 40) = v8;

  v10 = sub_242F04A70();
  v12 = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7C00);
  (*(*(v13 - 8) + 16))(a2, a1, v13);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7C08);
  v15 = (a2 + *(result + 36));
  *v15 = sub_242DFEDE0;
  v15[1] = v9;
  v15[2] = v10;
  v15[3] = v12;
  return result;
}

id sub_242DFAD6C(CGFloat a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x277D757E0]) init];
  [v5 setNumberOfPages_];
  [v5 setHidesForSinglePage_];
  [v5 setDirection_];
  [v5 setAllowsContinuousInteraction_];
  CGAffineTransformMakeScale(&v11, a1, a1);
  [v5 setTransform_];
  v6 = objc_opt_self();
  v7 = [v6 labelColor];
  [v5 setCurrentPageIndicatorTintColor_];

  v8 = [v6 labelColor];
  v9 = [v8 colorWithAlphaComponent_];

  [v5 setPageIndicatorTintColor_];
  return v5;
}

id sub_242DFAEEC(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  CGAffineTransformMakeScale(&v6, *(v1 + 2), *(v1 + 2));
  [a1 setTransform_];
  [a1 setNumberOfPages_];
  return [a1 setCurrentPage_];
}

uint64_t sub_242DFAFD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_242DFEE70();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_242DFB034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_242DFEE70();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_242DFB098()
{
  sub_242DFEE70();
  sub_242F04170();
  __break(1u);
}

uint64_t sub_242DFB0C0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2, v5);
  sub_242F03A40();
  return (*(v4 + 8))(a1, a2);
}

uint64_t sub_242DFB1B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_242DEEF14();
  *a1 = result;
  return result;
}

uint64_t sub_242DFB208@<X0>(_BYTE *a1@<X8>)
{
  result = sub_242DEF0C0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_242DFB260@<X0>(_BYTE *a1@<X8>)
{
  result = sub_242DEF0E8();
  *a1 = result & 1;
  return result;
}

BOOL _s14CarPlayAssetUI21CarouselConfigurationV0E5StyleO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a2 + 32);
  if (v2 == 255)
  {
    return v3 == 255;
  }

  if (v3 == 255 || *a1 != *a2)
  {
    return 0;
  }

  if ((v2 & 1) == 0)
  {
    if ((v3 & 1) == 0)
    {
      return *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
    }

    return 0;
  }

  if ((v3 & 1) == 0)
  {
    return 0;
  }

  return *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
}

BOOL _s14CarPlayAssetUI21CarouselConfigurationV19PageControlPositionO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    if ((*(a2 + 24) & 1) == 0)
    {
      goto LABEL_5;
    }

    return 0;
  }

  if ((*(a2 + 24) & 1) == 0)
  {
    return 0;
  }

LABEL_5:
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  return *(a1 + 16) == *(a2 + 16);
}

BOOL _s14CarPlayAssetUI21CarouselConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  v12 = *(a2 + 64);
  v13 = *(a2 + 72);
  v14 = *(a1 + 16);
  v21[0] = *a1;
  v21[1] = v14;
  v22 = v2;
  v15 = *(a2 + 16);
  v19[0] = *a2;
  v19[1] = v15;
  v20 = v8;
  v16 = _s14CarPlayAssetUI21CarouselConfigurationV0E5StyleO2eeoiySbAE_AEtFZ_0(v21, v19);
  result = 0;
  if (v16 && v3 == v9 && ((v4 ^ v10) & 1) == 0)
  {
    if (v6)
    {
      if (!v12)
      {
        return 0;
      }
    }

    else
    {
      if (v5 == v11)
      {
        v18 = v12;
      }

      else
      {
        v18 = 1;
      }

      if (v18)
      {
        return 0;
      }
    }

    return v7 == v13;
  }

  return result;
}

uint64_t sub_242DFB478(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v4 = v3;
  v61 = a2;
  v60 = a1;
  v66 = *v3;
  v6 = v66;
  v7 = *(v66 + 80);
  v8 = sub_242F05860();
  v62 = *(v8 - 8);
  v63 = v8;
  MEMORY[0x28223BE20](v8);
  v57 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v64 = &v55 - v11;
  v65 = *(v7 - 8);
  MEMORY[0x28223BE20](v12);
  v59 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v58 = &v55 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2ED8);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v55 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF31C0);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v55 - v22;
  v24 = a3[3];
  v70 = a3[2];
  v71 = v24;
  v72 = a3[4];
  v25 = a3[1];
  v68 = *a3;
  v69 = v25;
  v26 = &v4[*(v6 + 112)];
  *v26 = 0;
  *(v26 + 1) = 0;
  v27 = &v4[*(*v4 + 120)];
  *v27 = 0;
  *(v27 + 1) = 0;
  v28 = &v4[*(*v4 + 128)];
  *v28 = 0;
  *(v28 + 1) = 0;
  v29 = &v4[*(*v4 + 136)];
  *v29 = 0;
  *(v29 + 1) = 0;
  *&v4[*(*v4 + 152)] = 0;
  v30 = *(*v4 + 168);
  v55 = *(v66 + 88);
  v67 = 0;
  sub_242F03A40();
  (*(v21 + 32))(&v4[v30], v23, v20);
  v31 = *(*v4 + 184);
  LOBYTE(v67) = 0;
  sub_242F03A40();
  v32 = *(v17 + 32);
  v32(&v4[v31], v19, v16);
  v33 = *(*v4 + 192);
  LOBYTE(v67) = 0;
  v34 = v60;
  sub_242F03A40();
  v32(&v4[v33], v19, v16);
  v35 = *(*v4 + 200);
  *&v4[v35] = sub_242F04A90();
  v67 = v34;
  v36 = sub_242F053E0();
  WitnessTable = swift_getWitnessTable();
  if ((sub_242F05610() & 1) == 0)
  {
    v37 = *(v65 + 48);
    v38 = v61;
    v39 = v37(v61, 1, v7);
    if (v39 != 1)
    {
      v67 = v34;
      MEMORY[0x28223BE20](v39);
      *(&v55 - 4) = v7;
      *(&v55 - 24) = v55;
      v54 = v38;
      swift_getWitnessTable();
      if ((sub_242F051C0() & 1) == 0)
      {
        LODWORD(v54) = 0;
        v53 = 0;
        goto LABEL_13;
      }
    }

    *&v4[*(*v4 + 144)] = v34;
    swift_beginAccess();
    swift_bridgeObjectRetain_n();
    v73 = v34;
    sub_242DFB0C0(&v73, v36);
    swift_endAccess();
    v41 = v62;
    v40 = v63;
    v42 = v64;
    (*(v62 + 16))(v64, v38, v63);
    if (v37(v42, 1, v7) != 1)
    {

      v45 = v65;
      v46 = v58;
      (*(v65 + 32))(v58, v42, v7);
LABEL_9:
      swift_beginAccess();
      sub_242DEDAD0(v46, v7);
      swift_endAccess();
      v48 = &v4[*(*v4 + 160)];
      v49 = v71;
      *(v48 + 2) = v70;
      *(v48 + 3) = v49;
      *(v48 + 4) = v72;
      v50 = v69;
      *v48 = v68;
      *(v48 + 1) = v50;
      v51 = v59;
      sub_242DEDDE0();
      swift_beginAccess();

      sub_242DEDD34();

      (*(v45 + 8))(v51, v7);
      sub_242DEEBA8();
      return v4;
    }

    v67 = v34;
    v43 = v57;
    sub_242F05600();
    v44 = v43;
    if (v37(v43, 1, v7) != 1)
    {

      v45 = v65;
      v46 = v58;
      (*(v65 + 32))(v58, v44, v7);
      v47 = v64;
      if (v37(v64, 1, v7) != 1)
      {
        (*(v41 + 8))(v47, v40);
      }

      goto LABEL_9;
    }

    __break(1u);
  }

  LODWORD(v54) = 0;
  v53 = 0;
LABEL_13:
  result = sub_242F05C60();
  __break(1u);
  return result;
}

unint64_t sub_242DFBD50()
{
  result = qword_27ECF7770;
  if (!qword_27ECF7770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7770);
  }

  return result;
}

unint64_t sub_242DFBDA4()
{
  result = qword_27ECF7778;
  if (!qword_27ECF7778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7778);
  }

  return result;
}

unint64_t sub_242DFBDF8()
{
  result = qword_27ECF7780;
  if (!qword_27ECF7780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7780);
  }

  return result;
}

unint64_t sub_242DFBE4C()
{
  result = qword_27ECF77B8;
  if (!qword_27ECF77B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF77B8);
  }

  return result;
}

unint64_t sub_242DFBEA0()
{
  result = qword_27ECF77C0;
  if (!qword_27ECF77C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF77C0);
  }

  return result;
}

unint64_t sub_242DFBEF4()
{
  result = qword_27ECF77C8;
  if (!qword_27ECF77C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF77C8);
  }

  return result;
}

unint64_t sub_242DFBF48()
{
  result = qword_27ECF7800;
  if (!qword_27ECF7800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7800);
  }

  return result;
}

unint64_t sub_242DFBF9C()
{
  result = qword_27ECF7808;
  if (!qword_27ECF7808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7808);
  }

  return result;
}

unint64_t sub_242DFBFF0()
{
  result = qword_27ECF7810;
  if (!qword_27ECF7810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7810);
  }

  return result;
}

unint64_t sub_242DFC044()
{
  result = qword_27ECF7818;
  if (!qword_27ECF7818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7818);
  }

  return result;
}

unint64_t sub_242DFC098()
{
  result = qword_27ECF7838;
  if (!qword_27ECF7838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7838);
  }

  return result;
}

unint64_t sub_242DFC0EC()
{
  result = qword_27ECF7848;
  if (!qword_27ECF7848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7848);
  }

  return result;
}

unint64_t sub_242DFC140()
{
  result = qword_27ECF7850;
  if (!qword_27ECF7850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7850);
  }

  return result;
}

unint64_t sub_242DFC194()
{
  result = qword_27ECF7858;
  if (!qword_27ECF7858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7858);
  }

  return result;
}

unint64_t sub_242DFC1E8()
{
  result = qword_27ECF7868;
  if (!qword_27ECF7868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7868);
  }

  return result;
}

unint64_t sub_242DFC23C()
{
  result = qword_27ECF7870;
  if (!qword_27ECF7870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7870);
  }

  return result;
}

uint64_t sub_242DFC2A8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x8000000242F5BA40 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000242F5BA60 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000242F5BA80 == a2)
  {

    return 2;
  }

  else
  {
    v5 = sub_242F06110();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_242DFC3D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C797473 && a2 == 0xE500000000000000;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5072657474616C70 && a2 == 0xEE00676E69646461 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000242F5BAC0 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F6974616D696E61 && a2 == 0xEE00656C7974536ELL || (sub_242F06110() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000242F5BAE0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_242F06110();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_242DFC598()
{
  v1 = *(*v0 + 144);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_242DFC5E8(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = v12 - v5;
  v12[4] = v3;
  v13 = *(v7 + 88);
  v8 = v13;
  v14 = *(v7 + 96);
  v9 = v14;
  swift_getKeyPath();
  v12[0] = v3;
  v12[1] = v8;
  v12[2] = v9;
  swift_getKeyPath();
  (*(v4 + 16))(v6, a1, v3);

  v10 = sub_242F03A90();
  return sub_242DEDBD0(v10);
}

uint64_t sub_242DFC748(uint64_t a1)
{
  v2 = sub_242F03AA0();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - v3, a1);
  swift_beginAccess();
  sub_242F03AB0();
  sub_242F03A60();
  return swift_endAccess();
}

uint64_t sub_242DFC8A8()
{
  v1 = v0 + *(*v0 + 128);
  swift_beginAccess();
  return *v1;
}

uint64_t sub_242DFC8FC()
{
  v1 = v0 + *(*v0 + 136);
  swift_beginAccess();
  return *v1;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_242DFCA68()
{
  result = qword_27ECFC050;
  if (!qword_27ECFC050)
  {
    sub_242F04B60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFC050);
  }

  return result;
}

unint64_t sub_242DFCAD8()
{
  result = qword_27ECF78A0;
  if (!qword_27ECF78A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF78A0);
  }

  return result;
}

unint64_t sub_242DFCB2C()
{
  result = qword_27ECF78A8;
  if (!qword_27ECF78A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF78A8);
  }

  return result;
}

unint64_t sub_242DFCBB8()
{
  result = qword_27ECF78D0;
  if (!qword_27ECF78D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF78D0);
  }

  return result;
}

unint64_t sub_242DFCC48()
{
  result = qword_27ECF78F8;
  if (!qword_27ECF78F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF78F8);
  }

  return result;
}

unint64_t sub_242DFCCA0()
{
  result = qword_27ECF7900;
  if (!qword_27ECF7900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7900);
  }

  return result;
}

unint64_t sub_242DFCCF8()
{
  result = qword_27ECF7908;
  if (!qword_27ECF7908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7908);
  }

  return result;
}

unint64_t sub_242DFCD50()
{
  result = qword_27ECF7910[0];
  if (!qword_27ECF7910[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ECF7910);
  }

  return result;
}

uint64_t sub_242DFCE24(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 80))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_242DFCE78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CarouselConfiguration.PageControlPosition(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CarouselConfiguration.PageControlPosition(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for CarouselConfiguration.CarouselStyle(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  if (v4 + 1 >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CarouselConfiguration.CarouselStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = ~a2;
    }
  }

  return result;
}

uint64_t sub_242DFD038(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_242DFD04C(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
  }

  else if (a2)
  {
    *(result + 32) = -a2;
  }

  return result;
}

void sub_242DFD088()
{
  sub_242F03AB0();
  if (v0 <= 0x3F)
  {
    sub_242DFD6C0(319, qword_27ECF7998);
    if (v1 <= 0x3F)
    {
      sub_242F053E0();
      sub_242F03AB0();
      if (v2 <= 0x3F)
      {
        sub_242DFD6C0(319, &qword_27ECF3080);
        if (v3 <= 0x3F)
        {
          swift_initClassMetadata2();
        }
      }
    }
  }
}

void sub_242DFD6C0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_242F03AB0();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_242DFD70C()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return AssociatedTypeWitness;
}

uint64_t sub_242DFD77C(unsigned __int16 *a1, unsigned int a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  v7 = v6 - 2;
  v8 = *(v5 + 64);
  if (v6 <= 1)
  {
    v7 = 0;
    if (v8 <= 3)
    {
      v10 = (~(-1 << (8 * v8)) - v6 + 2) >> (8 * v8);
      if (v10 > 0xFFFE)
      {
        v9 = 4;
      }

      else
      {
        v11 = 1;
        if (v10 >= 0xFF)
        {
          v11 = 2;
        }

        if (v10)
        {
          v9 = v11;
        }

        else
        {
          v9 = 0;
        }
      }
    }

    else
    {
      v9 = 1;
    }

    v8 += v9;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 > v7)
  {
    v12 = 8 * v8;
    if (v8 <= 3)
    {
      v14 = ((a2 - v7 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v14))
      {
        v13 = *(a1 + v8);
        if (!v13)
        {
          goto LABEL_33;
        }

        goto LABEL_22;
      }

      if (v14 > 0xFF)
      {
        v13 = *(a1 + v8);
        if (!*(a1 + v8))
        {
          goto LABEL_33;
        }

        goto LABEL_22;
      }

      if (v14 < 2)
      {
LABEL_33:
        if (!v7)
        {
          return 0;
        }

        goto LABEL_34;
      }
    }

    v13 = *(a1 + v8);
    if (!*(a1 + v8))
    {
      goto LABEL_33;
    }

LABEL_22:
    v15 = (v13 - 1) << v12;
    if (v8 > 3)
    {
      v15 = 0;
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

    return v7 + (v8 | v15) + 1;
  }

LABEL_34:
  if (!v6)
  {
    return 0;
  }

  v16 = (*(v5 + 48))(a1, v6, AssociatedTypeWitness);
  v17 = v16 >= 2;
  result = v16 - 2;
  if (result == 0 || !v17)
  {
    return 0;
  }

  return result;
}

void sub_242DFD970(_BYTE *a1, unsigned int a2, unsigned int a3)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 2;
  v9 = *(v6 + 64);
  v10 = v9;
  if (v7 <= 1)
  {
    v8 = 0;
    if (v9 <= 3)
    {
      v12 = (~(-1 << (8 * v9)) - v7 + 2) >> (8 * v9);
      if (v12 > 0xFFFE)
      {
        v11 = 4;
      }

      else
      {
        v13 = 1;
        if (v12 >= 0xFF)
        {
          v13 = 2;
        }

        if (v12)
        {
          v11 = v13;
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

    v10 = v11 + v9;
  }

  v14 = a3 - v8;
  if (a3 <= v8)
  {
    v15 = 0;
    if (v8 < a2)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v15 = 1;
    if (v10 <= 3)
    {
      v16 = ((v14 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      v17 = HIWORD(v16);
      if (v16 < 0x100)
      {
        v18 = 1;
      }

      else
      {
        v18 = 2;
      }

      if (v16 >= 2)
      {
        v19 = v18;
      }

      else
      {
        v19 = 0;
      }

      if (v17)
      {
        v15 = 4;
      }

      else
      {
        v15 = v19;
      }
    }

    if (v8 < a2)
    {
LABEL_24:
      v20 = ~v8 + a2;
      if (v10 < 4)
      {
        v21 = (v20 >> (8 * v10)) + 1;
        if (v10)
        {
          v22 = v20 & ~(-1 << (8 * v10));
          bzero(a1, v10);
          if (v10 != 3)
          {
            if (v10 == 2)
            {
              *a1 = v22;
              if (v15 > 1)
              {
LABEL_61:
                if (v15 == 2)
                {
                  *&a1[v10] = v21;
                }

                else
                {
                  *&a1[v10] = v21;
                }

                return;
              }
            }

            else
            {
              *a1 = v20;
              if (v15 > 1)
              {
                goto LABEL_61;
              }
            }

            goto LABEL_58;
          }

          *a1 = v22;
          a1[2] = BYTE2(v22);
        }

        if (v15 > 1)
        {
          goto LABEL_61;
        }
      }

      else
      {
        bzero(a1, v10);
        *a1 = v20;
        v21 = 1;
        if (v15 > 1)
        {
          goto LABEL_61;
        }
      }

LABEL_58:
      if (v15)
      {
        a1[v10] = v21;
      }

      return;
    }
  }

  if (v15 > 1)
  {
    if (v15 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_40;
    }

    *&a1[v10] = 0;
LABEL_39:
    if (!a2)
    {
      return;
    }

    goto LABEL_40;
  }

  if (!v15)
  {
    goto LABEL_39;
  }

  a1[v10] = 0;
  if (!a2)
  {
    return;
  }

LABEL_40:
  if (a2 + 2 <= v7)
  {
    v26 = *(v6 + 56);

    v26(a1, a2 + 2);
  }

  else
  {
    if (v9 <= 3)
    {
      v23 = ~(-1 << (8 * v9));
    }

    else
    {
      v23 = -1;
    }

    if (v9)
    {
      v24 = v23 & (a2 - v7 + 1);
      if (v9 <= 3)
      {
        v25 = v9;
      }

      else
      {
        v25 = 4;
      }

      bzero(a1, v9);
      if (v25 > 2)
      {
        if (v25 == 3)
        {
          *a1 = v24;
          a1[2] = BYTE2(v24);
        }

        else
        {
          *a1 = v24;
        }
      }

      else if (v25 == 1)
      {
        *a1 = v24;
      }

      else
      {
        *a1 = v24;
      }
    }
  }
}

uint64_t sub_242DFDC8C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for PageControl(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PageControl(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_242DFDD4C(uint64_t *a1, int a2)
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

uint64_t sub_242DFDD94(uint64_t result, int a2, int a3)
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

uint64_t sub_242DFDDE4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t sub_242DFDE30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = ~a2;
    }
  }

  return result;
}

uint64_t sub_242DFDE88(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 48))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t sub_242DFDED4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 32) = ~a2;
    }
  }

  return result;
}

unint64_t sub_242DFDFD8()
{
  result = qword_27ECF7AA0;
  if (!qword_27ECF7AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7AA0);
  }

  return result;
}

unint64_t sub_242DFE030()
{
  result = qword_27ECF7AA8;
  if (!qword_27ECF7AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7AA8);
  }

  return result;
}

unint64_t sub_242DFE088()
{
  result = qword_27ECF7AB0;
  if (!qword_27ECF7AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7AB0);
  }

  return result;
}

unint64_t sub_242DFE0E0()
{
  result = qword_27ECF7AB8;
  if (!qword_27ECF7AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7AB8);
  }

  return result;
}

unint64_t sub_242DFE138()
{
  result = qword_27ECF7AC0;
  if (!qword_27ECF7AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7AC0);
  }

  return result;
}

unint64_t sub_242DFE190()
{
  result = qword_27ECF7AC8;
  if (!qword_27ECF7AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7AC8);
  }

  return result;
}

unint64_t sub_242DFE1E8()
{
  result = qword_27ECF7AD0;
  if (!qword_27ECF7AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7AD0);
  }

  return result;
}

unint64_t sub_242DFE240()
{
  result = qword_27ECF7AD8;
  if (!qword_27ECF7AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7AD8);
  }

  return result;
}

unint64_t sub_242DFE2DC()
{
  result = qword_27ECF7AF0;
  if (!qword_27ECF7AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7AF0);
  }

  return result;
}

unint64_t sub_242DFE334()
{
  result = qword_27ECF7AF8;
  if (!qword_27ECF7AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7AF8);
  }

  return result;
}

unint64_t sub_242DFE38C()
{
  result = qword_27ECF7B00;
  if (!qword_27ECF7B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7B00);
  }

  return result;
}

unint64_t sub_242DFE3E4()
{
  result = qword_27ECF7B08;
  if (!qword_27ECF7B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7B08);
  }

  return result;
}

unint64_t sub_242DFE49C()
{
  result = qword_27ECF7B20;
  if (!qword_27ECF7B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7B20);
  }

  return result;
}

unint64_t sub_242DFE4F4()
{
  result = qword_27ECF7B28;
  if (!qword_27ECF7B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7B28);
  }

  return result;
}

unint64_t sub_242DFE54C()
{
  result = qword_27ECF7B30;
  if (!qword_27ECF7B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7B30);
  }

  return result;
}

unint64_t sub_242DFE5B0()
{
  result = qword_27ECF7B38;
  if (!qword_27ECF7B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7B38);
  }

  return result;
}

unint64_t sub_242DFE608()
{
  result = qword_27ECF7B40;
  if (!qword_27ECF7B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7B40);
  }

  return result;
}

unint64_t sub_242DFE6B4()
{
  result = qword_27ECF7B48;
  if (!qword_27ECF7B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7B48);
  }

  return result;
}

unint64_t sub_242DFE70C()
{
  result = qword_27ECF7B50;
  if (!qword_27ECF7B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7B50);
  }

  return result;
}

unint64_t sub_242DFE764()
{
  result = qword_27ECF7B58;
  if (!qword_27ECF7B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7B58);
  }

  return result;
}

unint64_t sub_242DFE7BC()
{
  result = qword_27ECF7B60;
  if (!qword_27ECF7B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7B60);
  }

  return result;
}

unint64_t sub_242DFE814()
{
  result = qword_27ECF7B68;
  if (!qword_27ECF7B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7B68);
  }

  return result;
}

unint64_t sub_242DFE86C()
{
  result = qword_27ECF7B70;
  if (!qword_27ECF7B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7B70);
  }

  return result;
}

unint64_t sub_242DFE8C4()
{
  result = qword_27ECF7B78;
  if (!qword_27ECF7B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7B78);
  }

  return result;
}

unint64_t sub_242DFE91C()
{
  result = qword_27ECF7B80;
  if (!qword_27ECF7B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7B80);
  }

  return result;
}

unint64_t sub_242DFE974()
{
  result = qword_27ECF7B88;
  if (!qword_27ECF7B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7B88);
  }

  return result;
}

unint64_t sub_242DFE9CC()
{
  result = qword_27ECF7B90;
  if (!qword_27ECF7B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7B90);
  }

  return result;
}

unint64_t sub_242DFEA24()
{
  result = qword_27ECF7B98;
  if (!qword_27ECF7B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7B98);
  }

  return result;
}

unint64_t sub_242DFEA7C()
{
  result = qword_27ECF7BA0;
  if (!qword_27ECF7BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7BA0);
  }

  return result;
}

unint64_t sub_242DFEAD4()
{
  result = qword_27ECF7BA8;
  if (!qword_27ECF7BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7BA8);
  }

  return result;
}

unint64_t sub_242DFEB2C()
{
  result = qword_27ECF7BB0;
  if (!qword_27ECF7BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7BB0);
  }

  return result;
}

unint64_t sub_242DFEB84()
{
  result = qword_27ECF7BB8;
  if (!qword_27ECF7BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7BB8);
  }

  return result;
}

unint64_t sub_242DFEBDC()
{
  result = qword_27ECF7BC0;
  if (!qword_27ECF7BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7BC0);
  }

  return result;
}

unint64_t sub_242DFEC34()
{
  result = qword_27ECF7BC8;
  if (!qword_27ECF7BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7BC8);
  }

  return result;
}

unint64_t sub_242DFEC8C()
{
  result = qword_27ECF7BD0;
  if (!qword_27ECF7BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7BD0);
  }

  return result;
}

unint64_t sub_242DFECE4()
{
  result = qword_27ECF7BD8;
  if (!qword_27ECF7BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7BD8);
  }

  return result;
}

unint64_t sub_242DFED3C()
{
  result = qword_27ECF7BE0;
  if (!qword_27ECF7BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7BE0);
  }

  return result;
}

uint64_t objectdestroy_174Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_242DFEE70()
{
  result = qword_27ECF7C10;
  if (!qword_27ECF7C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7C10);
  }

  return result;
}

uint64_t sub_242DFEEC4(uint64_t a1)
{
  v2 = sub_242F03E30();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_240Tm()
{

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_242DFF020(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7878);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_242DFF090()
{
  result = qword_27ECF7C40;
  if (!qword_27ECF7C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF7878);
    sub_242DFF11C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7C40);
  }

  return result;
}

unint64_t sub_242DFF11C()
{
  result = qword_27ECF7C48;
  if (!qword_27ECF7C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF7C20);
    sub_242C7E000(&qword_27ECF7C50, &qword_27ECF7C28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7C48);
  }

  return result;
}

uint64_t sub_242DFF1D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7878);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_242DFF274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v9 = *(v2 + 32);
  v7 = *(v2 + 48);
  sub_242F03D10();
  return sub_242DF8BB4(a1, *(v2 + 56), *(v2 + 64), *(v2 + 72), *(v2 + 80), v5, v6, a2, v9, *(&v9 + 1), v7);
}

unint64_t sub_242DFF324()
{
  result = qword_27ECF7C58;
  if (!qword_27ECF7C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7C58);
  }

  return result;
}

uint64_t objectdestroy_249Tm()
{
  v1 = *(v0 + 24);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 88) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t objectdestroy_34Tm(uint64_t a1)
{

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

unint64_t sub_242DFF610()
{
  result = qword_27ECF7C60;
  if (!qword_27ECF7C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF7BF0);
    sub_242C7E000(&qword_27ECF7C68, &qword_27ECF7BE8);
    sub_242C7E000(&qword_27ECF7C70, &qword_27ECF7C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7C60);
  }

  return result;
}

unint64_t sub_242DFF6F4()
{
  result = qword_27ECF7C80;
  if (!qword_27ECF7C80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF7C08);
    sub_242C7E000(&qword_27ECF7C88, &qword_27ECF7C00);
    sub_242C7E000(&qword_27ECF7C70, &qword_27ECF7C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7C80);
  }

  return result;
}

unint64_t sub_242DFF7D8()
{
  result = qword_27ECF7C90;
  if (!qword_27ECF7C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7C90);
  }

  return result;
}

uint64_t sub_242DFF8F4(uint64_t a1)
{
  v2 = type metadata accessor for ActionConfiguration(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - v6;
  sub_242E02634(a1, &v9 - v6, type metadata accessor for ActionConfiguration);
  sub_242E02634(v7, v4, type metadata accessor for ActionConfiguration);
  sub_242D59520();
  sub_242F04020();
  return sub_242E0269C(v7, type metadata accessor for ActionConfiguration);
}

__n128 IconNotificationButtonConfiguration.init(imageSize:imageScale:style:buttonPadding:verticalAlignment:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X2>, double *a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>, double a9@<D4>)
{
  v18 = a2[2].n128_i8[0];
  v19 = type metadata accessor for IconNotificationButtonConfiguration(0);
  v20 = v19[5];
  v21 = sub_242F04820();
  v25 = *a2;
  v26 = a2[1];
  (*(*(v21 - 8) + 32))(a4 + v20, a1, v21);
  *a4 = a5;
  v22 = (a4 + v19[6]);
  result = v26;
  *v22 = v25;
  v22[1] = v26;
  v22[2].n128_u8[0] = v18;
  v24 = (a4 + v19[7]);
  *v24 = a6;
  v24[1] = a7;
  v24[2] = a8;
  v24[3] = a9;
  *(a4 + v19[8]) = a3;
  return result;
}

uint64_t sub_242DFFB1C@<X0>(_BYTE *a1@<X8>)
{
  sub_242D97D74();
  result = sub_242F04010();
  *a1 = v3;
  return result;
}

uint64_t IconNotificationButton.init(image:configuration:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a3;
  a5[2] = a4;
  v6 = a5 + *(type metadata accessor for IconNotificationButton(0) + 24);

  return sub_242DFFC28(a2, v6);
}

uint64_t sub_242DFFC28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IconNotificationButtonConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static IconNotificationButtonConfiguration.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF6C0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for IconNotificationButtonConfiguration(0);
  v3 = __swift_project_value_buffer(v2, qword_27ECF7C98);
  return sub_242E02634(v3, a1, type metadata accessor for IconNotificationButtonConfiguration);
}

uint64_t IconNotificationButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v2 = type metadata accessor for IconNotificationButtonStyle(0);
  MEMORY[0x28223BE20](v2);
  v4 = (&v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7CB0);
  v6 = *(v5 - 8);
  v27 = v5;
  v28 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7CB8);
  v29 = *(v9 - 8);
  v30 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - v10;
  v13 = v1[1];
  v12 = v1[2];
  if (v13)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    *(v14 + 24) = v12;
    v15 = sub_242D5A6E0;
  }

  else
  {
    v15 = nullsub_2;
    v14 = 0;
  }

  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = v14;
  sub_242CA0064(v13, v12);
  sub_242F048E0();
  v17 = *v1;
  v18 = type metadata accessor for IconNotificationButton(0);
  sub_242E02634(v1 + *(v18 + 24), v4 + v2[8], type metadata accessor for IconNotificationButtonConfiguration);
  *v4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7CC0);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  *(v4 + v2[6]) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0BA0);
  swift_storeEnumTagMultiPayload();
  v20 = v4 + v2[5];
  *v20 = KeyPath;
  v20[8] = 0;
  *(v4 + v2[7]) = v17;
  v21 = sub_242C7E000(&qword_27ECF7CC8, &qword_27ECF7CB0);
  v22 = sub_242E02844(&qword_27ECF7CD0, type metadata accessor for IconNotificationButtonStyle);

  v23 = v27;
  sub_242F045D0();
  sub_242E0269C(v4, type metadata accessor for IconNotificationButtonStyle);
  (*(v28 + 8))(v8, v23);
  v32 = v23;
  v33 = v2;
  v34 = v21;
  v35 = v22;
  swift_getOpaqueTypeConformance2();
  v24 = v30;
  sub_242F04610();
  return (*(v29 + 8))(v11, v24);
}

uint64_t IconNotificationButtonContent.init(image:forceFocusedState:configuration:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = swift_getKeyPath();
  *(a4 + 8) = 0;
  *(a4 + 16) = swift_getKeyPath();
  *(a4 + 24) = 0;
  *(a4 + 32) = a1;
  *(a4 + 25) = a2;
  v8 = a4 + *(type metadata accessor for IconNotificationButtonContent(0) + 32);

  return sub_242DFFC28(a3, v8);
}

__n128 IconNotificationButtonContent.body.getter@<Q0>(uint64_t a1@<X8>)
{
  sub_242E00270(v1, a1);
  v3 = v1 + *(type metadata accessor for IconNotificationButtonContent(0) + 32);
  v4 = (v3 + *(type metadata accessor for IconNotificationButtonConfiguration(0) + 28));
  v7 = v4[1];
  v8 = *v4;
  LOBYTE(v3) = sub_242F043B0();
  v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7CD8) + 36);
  *v5 = v3;
  result = v8;
  *(v5 + 24) = v7;
  *(v5 + 8) = v8;
  *(v5 + 40) = 0;
  return result;
}

uint64_t sub_242E00270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v143 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7E88);
  MEMORY[0x28223BE20](v3 - 8);
  v131 = &v122 - v4;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7E00);
  MEMORY[0x28223BE20](v130);
  v6 = (&v122 - v5);
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7DF0);
  MEMORY[0x28223BE20](v133);
  v134 = &v122 - v7;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7DE0);
  MEMORY[0x28223BE20](v132);
  v136 = &v122 - v8;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7DD0);
  MEMORY[0x28223BE20](v142);
  v135 = &v122 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v138 = &v122 - v11;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7E90);
  MEMORY[0x28223BE20](v140);
  v141 = &v122 - v12;
  v129 = sub_242F04700();
  v127 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v128 = &v122 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for IconNotificationButtonConfiguration(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v122 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3F48);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v122 - v18;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7D60);
  MEMORY[0x28223BE20](v137);
  v21 = &v122 - v20;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7D50);
  MEMORY[0x28223BE20](v139);
  v23 = &v122 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v122 - v25;
  v27 = a1;
  v28 = a1 + *(type metadata accessor for IconNotificationButtonContent(0) + 32);
  v29 = v28 + *(v14 + 24);
  if (*(v29 + 32))
  {
    v137 = v16;
    v30 = *(v27 + 32);

    if (sub_242E0117C())
    {
      v31 = [objc_opt_self() _carSystemFocusLabelColor];
      v32 = sub_242F047D0();
    }

    else
    {
      v32 = sub_242F04790();
    }

    v129 = v32;
    v60 = v14;
    v61 = v131;
    v62 = [objc_opt_self() _carSystemFocusColor];
    v63 = sub_242F047D0();
    if (sub_242E0117C())
    {
      sub_242F040C0();
    }

    else
    {
      sub_242F040A0();
    }

    v97 = sub_242F040D0();
    (*(*(v97 - 8) + 56))(v61, 0, 1, v97);
    KeyPath = swift_getKeyPath();
    v99 = (v6 + *(v130 + 36));
    v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7E30);
    sub_242CF6B3C(v61, v99 + *(v100 + 28), &qword_27ECF7E88);
    *v99 = KeyPath;
    v101 = v129;
    *v6 = v30;
    v6[1] = v101;
    v6[2] = v63;
    sub_242F04450();
    v102 = sub_242F04430();
    (*(*(v102 - 8) + 56))(v19, 1, 1, v102);
    v103 = sub_242F04460();
    sub_242C6D138(v19, &qword_27ECF3F48);
    v104 = v28;
    v105 = swift_getKeyPath();
    v106 = v134;
    sub_242CF6B3C(v6, v134, &qword_27ECF7E00);
    v107 = (v106 + *(v133 + 36));
    *v107 = v105;
    v107[1] = v103;
    v108 = v137;
    sub_242E02634(v104, v137, type metadata accessor for IconNotificationButtonConfiguration);
    v109 = *(v60 + 20);
    v110 = swift_getKeyPath();
    v111 = v136;
    v112 = &v136[*(v132 + 36)];
    v113 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7E50) + 28);
    v114 = sub_242F04820();
    v115 = *(v114 - 8);
    (*(v115 + 16))(v112 + v113, v108 + v109, v114);
    *v112 = v110;
    sub_242CF6B3C(v106, v111, &qword_27ECF7DF0);
    (*(v115 + 8))(v108 + v109, v114);
    v116 = swift_getKeyPath();
    v117 = v135;
    v118 = &v135[*(v142 + 36)];
    v119 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0BC8) + 28);
    sub_242F04A10();
    v120 = sub_242F04A30();
    (*(*(v120 - 8) + 56))(v118 + v119, 0, 1, v120);
    *v118 = v116;
    sub_242CF6B3C(v111, v117, &qword_27ECF7DE0);
    v96 = &qword_27ECF7DD0;
    v94 = v138;
    sub_242CF6B3C(v117, v138, &qword_27ECF7DD0);
    sub_242CA321C(v94, v141, &qword_27ECF7DD0);
    swift_storeEnumTagMultiPayload();
    sub_242E01DAC(&qword_27ECF7D48, &qword_27ECF7D50, &unk_242F35748, sub_242E01E30);
    sub_242E02110();
  }

  else
  {
    v134 = v28 + *(v14 + 24);
    v135 = v23;
    v138 = v26;
    v33 = *v29;
    v132 = *(v29 + 8);
    v133 = v33;
    v34 = sub_242F04220();
    v35 = swift_getKeyPath();
    v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7D90) + 36);
    v123 = v28;
    v37 = &v21[v36];
    v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0BC8) + 28);
    sub_242F04A10();
    v39 = sub_242F04A30();
    (*(*(v39 - 8) + 56))(v37 + v38, 0, 1, v39);
    *v37 = v35;
    *v21 = v34;
    *(v21 + 2) = 256;
    v40 = sub_242F04A70();
    v130 = v41;
    v131 = v40;
    v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7D80) + 36);
    v136 = v21;
    v43 = &v21[v42];
    v44 = v27;
    v126 = *(v27 + 32);

    v125 = sub_242F04230();
    v45 = v123;
    sub_242F04450();
    v46 = sub_242F04430();
    (*(*(v46 - 8) + 56))(v19, 1, 1, v46);
    v124 = sub_242F04460();
    sub_242C6D138(v19, &qword_27ECF3F48);
    v122 = swift_getKeyPath();
    sub_242E02634(v45, v16, type metadata accessor for IconNotificationButtonConfiguration);
    v47 = *(v14 + 20);
    v48 = swift_getKeyPath();
    v49 = v44;
    v50 = &v43[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7E98) + 36)];
    v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7E50) + 28);
    v52 = sub_242F04820();
    v53 = *(v52 - 8);
    (*(v53 + 16))(v50 + v51, &v16[v47], v52);
    *v50 = v48;
    *v43 = v126;
    *(v43 + 2) = v125;
    v54 = v124;
    *(v43 + 2) = v122;
    *(v43 + 3) = v54;
    (*(v53 + 8))(&v16[v47], v52);
    v55 = &v43[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7DB0) + 36)];
    v56 = v130;
    *v55 = v131;
    *(v55 + 1) = v56;
    v57 = sub_242F04A70();
    v130 = v58;
    v131 = v57;
    v126 = v49;
    if (sub_242E0117C())
    {
      (*(v127 + 104))(v128, *MEMORY[0x277CE0EE0], v129);
      sub_242F047A0();
      v59 = sub_242F04770();
    }

    else
    {
      v59 = sub_242F04740();
    }

    sub_242F03BF0();
    v64 = v173;
    v65 = v174;
    v66 = v175;
    v67 = v176;
    v68 = v177;
    v69 = v178;
    v70 = sub_242F04A70();
    v72 = v71;
    sub_242F04A70();
    sub_242F03C70();
    *(&v149[2] + 8) = v172;
    *(&v149[1] + 8) = v171;
    *&v145 = v64;
    *(&v145 + 1) = __PAIR64__(v66, v65);
    *&v146 = v67;
    *(&v146 + 1) = v68;
    *&v147 = v69;
    *(&v147 + 1) = v59;
    LOWORD(v148) = 256;
    *(&v148 + 2) = v168;
    WORD3(v148) = v169;
    *(&v148 + 1) = v70;
    *&v149[0] = v72;
    *(v149 + 8) = v170;
    v73 = v130;
    v74 = v131;
    *(&v149[3] + 1) = v131;
    v150 = v130;
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7D70);
    v76 = v136;
    v77 = &v136[*(v75 + 36)];
    v78 = v149[3];
    *(v77 + 6) = v149[2];
    *(v77 + 7) = v78;
    *(v77 + 16) = v150;
    v79 = v148;
    *(v77 + 2) = v147;
    *(v77 + 3) = v79;
    v80 = v149[1];
    *(v77 + 4) = v149[0];
    *(v77 + 5) = v80;
    v81 = v146;
    *v77 = v145;
    *(v77 + 1) = v81;
    v151 = v64;
    v152 = v65;
    v153 = v66;
    v154 = v67;
    v155 = v68;
    v156 = v69;
    v157 = v59;
    v158 = 256;
    v82 = v76;
    v159 = v168;
    v160 = v169;
    v161 = v70;
    v162 = v72;
    v164 = v171;
    v165 = v172;
    v163 = v170;
    v166 = v74;
    v167 = v73;
    sub_242CA321C(&v145, v144, &qword_27ECF7DC0);
    sub_242C6D138(&v151, &qword_27ECF7DC0);
    sub_242F04A70();
    sub_242F03C70();
    v83 = (v82 + *(v137 + 9));
    v84 = v144[1];
    *v83 = v144[0];
    v83[1] = v84;
    v83[2] = v144[2];
    LOBYTE(v73) = sub_242F043B0();
    sub_242F03B50();
    v86 = v85;
    v88 = v87;
    v90 = v89;
    v92 = v91;
    v93 = v135;
    sub_242CF6B3C(v82, v135, &qword_27ECF7D60);
    v94 = v138;
    v95 = v93 + *(v139 + 36);
    *v95 = v73;
    *(v95 + 8) = v86;
    *(v95 + 16) = v88;
    *(v95 + 24) = v90;
    *(v95 + 32) = v92;
    *(v95 + 40) = 0;
    v96 = &qword_27ECF7D50;
    sub_242CF6B3C(v93, v94, &qword_27ECF7D50);
    sub_242CA321C(v94, v141, &qword_27ECF7D50);
    swift_storeEnumTagMultiPayload();
    sub_242E01DAC(&qword_27ECF7D48, &qword_27ECF7D50, &unk_242F35748, sub_242E01E30);
    sub_242E02110();
  }

  sub_242F041C0();
  return sub_242C6D138(v94, v96);
}

uint64_t sub_242E0117C()
{
  v1 = sub_242F04000();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 25);
  if (v5)
  {
    goto LABEL_2;
  }

  v9 = *v0;
  if (*(v0 + 8) == 1)
  {
    if ((v9 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {

    sub_242F05710();
    v10 = sub_242F04360();
    sub_242F03930();

    sub_242F03FF0();
    swift_getAtKeyPath();
    sub_242CA31A0(v9, 0);
    (*(v2 + 8))(v4, v1);
    if (v12[15] != 1)
    {
LABEL_9:
      v8 = 0;
      return v8 & 1;
    }
  }

LABEL_2:
  v6 = *(v0 + 16);
  if (*(v0 + 24) != 1)
  {

    sub_242F05710();
    v7 = sub_242F04360();
    sub_242F03930();

    sub_242F03FF0();
    swift_getAtKeyPath();
    sub_242CA31A0(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v12[14];
  }

  v8 = v5 | v6;
  return v8 & 1;
}

__n128 sub_242E0138C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_242E00270(v2, a2);
  v5 = v2 + *(a1 + 32);
  v6 = (v5 + *(type metadata accessor for IconNotificationButtonConfiguration(0) + 28));
  v9 = v6[1];
  v10 = *v6;
  LOBYTE(v5) = sub_242F043B0();
  v7 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7CD8) + 36);
  *v7 = v5;
  result = v10;
  *(v7 + 24) = v9;
  *(v7 + 8) = v10;
  *(v7 + 40) = 0;
  return result;
}

uint64_t sub_242E01420@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7E78);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - v5;
  v7 = type metadata accessor for IconNotificationButtonContent(0);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for IconNotificationButtonStyle(0);
  v12 = *(v1 + *(v11 + 28));
  sub_242E02634(v1 + *(v11 + 32), &v10[*(v8 + 40)], type metadata accessor for IconNotificationButtonConfiguration);
  *v10 = swift_getKeyPath();
  v10[8] = 0;
  *(v10 + 2) = swift_getKeyPath();
  *(v10 + 12) = 0;
  *(v10 + 4) = v12;

  v13 = sub_242F04270();
  sub_242E02634(v10, v6, type metadata accessor for IconNotificationButtonContent);
  v14 = 0.5;
  if (v13)
  {
    v15 = 0.96;
  }

  else
  {
    v14 = 1.0;
    v15 = 1.0;
  }

  *&v6[*(v4 + 44)] = v14;
  sub_242F04B50();
  v17 = v16;
  v19 = v18;
  sub_242E0269C(v10, type metadata accessor for IconNotificationButtonContent);
  sub_242CF6B3C(v6, a1, &qword_27ECF7E78);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7E80);
  v21 = a1 + *(result + 36);
  *v21 = v15;
  *(v21 + 8) = v15;
  *(v21 + 16) = v17;
  *(v21 + 24) = v19;
  return result;
}

uint64_t IconNotificationButtonConfiguration.imageScale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IconNotificationButtonConfiguration(0) + 20);
  v4 = sub_242F04820();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 IconNotificationButtonConfiguration.style.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for IconNotificationButtonConfiguration(0) + 24);
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

double sub_242E01748()
{
  v0 = sub_242F04820();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for IconNotificationButtonConfiguration(0);
  __swift_allocate_value_buffer(v4, qword_27ECF7C98);
  v5 = __swift_project_value_buffer(v4, qword_27ECF7C98);
  (*(v1 + 104))(v3, *MEMORY[0x277CE1048], v0);
  v6 = sub_242F04030();
  (*(v1 + 32))(&v5[v4[5]], v3, v0);
  *v5 = 0x4036000000000000;
  v7 = &v5[v4[6]];
  __asm { FMOV            V1.2D, #4.0 }

  *v7 = vdupq_n_s64(0x4046000000000000uLL);
  *(v7 + 1) = _Q1;
  v7[32] = 0;
  v13 = &v5[v4[7]];
  result = 20.0;
  *v13 = xmmword_242F35500;
  *(v13 + 1) = xmmword_242F35510;
  *&v5[v4[8]] = v6;
  return result;
}

void sub_242E01954()
{
  sub_242E019E8();
  if (v0 <= 0x3F)
  {
    type metadata accessor for IconNotificationButtonConfiguration(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_242E019E8()
{
  if (!qword_27ECF7CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF7CF8);
    v0 = sub_242F05860();
    if (!v1)
    {
      atomic_store(v0, &qword_27ECF7CF0);
    }
  }
}

void sub_242E01A74()
{
  sub_242CA30EC();
  if (v0 <= 0x3F)
  {
    type metadata accessor for IconNotificationButtonConfiguration(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_242E01B34()
{
  result = sub_242F04820();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IconNotificationButtonConfiguration.Style(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for IconNotificationButtonConfiguration.Style(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
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

  *(result + 33) = v3;
  return result;
}

uint64_t sub_242E01C20(uint64_t a1)
{
  if (*(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_242E01C3C(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 32) = 1;
  }

  else
  {
    *(result + 32) = 0;
  }

  return result;
}

unint64_t sub_242E01C70()
{
  result = qword_27ECF7D28;
  if (!qword_27ECF7D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF7D30);
    sub_242E01CF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7D28);
  }

  return result;
}

unint64_t sub_242E01CF4()
{
  result = qword_27ECF7D38;
  if (!qword_27ECF7D38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF7D40);
    sub_242E01DAC(&qword_27ECF7D48, &qword_27ECF7D50, &unk_242F35748, sub_242E01E30);
    sub_242E02110();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7D38);
  }

  return result;
}

uint64_t sub_242E01DAC(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_242E01E30()
{
  result = qword_27ECF7D58;
  if (!qword_27ECF7D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF7D60);
    sub_242E01EBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7D58);
  }

  return result;
}

unint64_t sub_242E01EBC()
{
  result = qword_27ECF7D68;
  if (!qword_27ECF7D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF7D70);
    sub_242E01F74();
    sub_242C7E000(&qword_27ECF7DB8, &qword_27ECF7DC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7D68);
  }

  return result;
}

unint64_t sub_242E01F74()
{
  result = qword_27ECF7D78;
  if (!qword_27ECF7D78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF7D80);
    sub_242E0202C();
    sub_242C7E000(&qword_27ECF7DA8, &qword_27ECF7DB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7D78);
  }

  return result;
}

unint64_t sub_242E0202C()
{
  result = qword_27ECF7D88;
  if (!qword_27ECF7D88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF7D90);
    sub_242C7E000(&qword_27ECF7D98, &qword_27ECF7DA0);
    sub_242C7E000(qword_27ECF0C18, &qword_27ECF0BC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7D88);
  }

  return result;
}

unint64_t sub_242E02110()
{
  result = qword_27ECF7DC8;
  if (!qword_27ECF7DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF7DD0);
    sub_242E021C8();
    sub_242C7E000(qword_27ECF0C18, &qword_27ECF0BC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7DC8);
  }

  return result;
}

unint64_t sub_242E021C8()
{
  result = qword_27ECF7DD8;
  if (!qword_27ECF7DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF7DE0);
    sub_242E02280();
    sub_242C7E000(&qword_27ECF7E48, &qword_27ECF7E50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7DD8);
  }

  return result;
}

unint64_t sub_242E02280()
{
  result = qword_27ECF7DE8;
  if (!qword_27ECF7DE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF7DF0);
    sub_242E02338();
    sub_242C7E000(&qword_27ECF7E38, &qword_27ECF7E40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7DE8);
  }

  return result;
}

unint64_t sub_242E02338()
{
  result = qword_27ECF7DF8;
  if (!qword_27ECF7DF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF7E00);
    sub_242E023F0();
    sub_242C7E000(&qword_27ECF7E28, &qword_27ECF7E30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7DF8);
  }

  return result;
}

unint64_t sub_242E023F0()
{
  result = qword_27ECF7E08;
  if (!qword_27ECF7E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF7E10);
    sub_242C7E000(&qword_27ECF7E18, &qword_27ECF7E20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7E08);
  }

  return result;
}

void sub_242E024D0()
{
  sub_242E025C4(319, &qword_27ECF7E70, type metadata accessor for ActionConfiguration);
  if (v0 <= 0x3F)
  {
    sub_242CA30EC();
    if (v1 <= 0x3F)
    {
      sub_242E025C4(319, &qword_27ECF0CA0, MEMORY[0x277CDF3E0]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for IconNotificationButtonConfiguration(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_242E025C4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_242F03BC0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_242E02634(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_242E0269C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_242E026FC()
{
  result = qword_27ECF7EA0;
  if (!qword_27ECF7EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF7E80);
    sub_242E02788();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7EA0);
  }

  return result;
}

unint64_t sub_242E02788()
{
  result = qword_27ECF7EA8;
  if (!qword_27ECF7EA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF7E78);
    sub_242E02844(&qword_27ECF7EB0, type metadata accessor for IconNotificationButtonContent);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7EA8);
  }

  return result;
}

uint64_t sub_242E02844(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_242E028D4()
{
  sub_242E02998(319, &qword_27ECF7ED8, type metadata accessor for BannerConfiguration);
  if (v0 <= 0x3F)
  {
    sub_242E02998(319, &qword_27ECF7EE0, type metadata accessor for NoticeConfiguration);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_242E02998(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_242F03BC0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_242E02A08@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_242F04000();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7F08);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  sub_242CA321C(v2, &v13 - v9, &qword_27ECF7F08);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_242E07838(v10, a1, type metadata accessor for BannerConfiguration);
  }

  sub_242F05710();
  v12 = sub_242F04360();
  sub_242F03930();

  sub_242F03FF0();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_242E02BEC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_242F04000();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7F00);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = _s23MinimalNotificationViewVMa(0);
  sub_242CA321C(v1 + *(v10 + 20), v9, &qword_27ECF7F00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_242E07838(v9, a1, type metadata accessor for NoticeConfiguration);
  }

  sub_242F05710();
  v12 = sub_242F04360();
  sub_242F03930();

  sub_242F03FF0();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_242E02DD8@<X0>(uint64_t a1@<X8>)
{
  v33[1] = a1;
  v2 = _s10NoticeViewVMa(0);
  MEMORY[0x28223BE20](v2);
  v4 = v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7EE8);
  MEMORY[0x28223BE20](v5);
  v7 = v33 - v6;
  v8 = _s10BannerViewVMa(0);
  MEMORY[0x28223BE20](v8);
  v10 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for BannerConfiguration(0);
  MEMORY[0x28223BE20](v11);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = (v1 + *(_s23MinimalNotificationViewVMa(0) + 24));
  if (*(v14 + 9) || (sub_242E02A08(v13), v15 = v13[*(v11 + 24)], sub_242E03328(v13, type metadata accessor for BannerConfiguration), v15 == 1))
  {
    sub_242E02A08(&v10[*(v8 + 20)]);
    v16 = v14[5];
    v39 = v14[4];
    v40 = v16;
    v41 = v14[6];
    v17 = v14[1];
    v35 = *v14;
    v36 = v17;
    v18 = v14[3];
    v37 = v14[2];
    v38 = v18;
    *v10 = swift_getKeyPath();
    *(v10 + 1) = 0;
    v10[16] = 0;
    v19 = &v10[*(v8 + 24)];
    v20 = v36;
    *v19 = v35;
    *(v19 + 1) = v20;
    v21 = v41;
    *(v19 + 5) = v40;
    *(v19 + 6) = v21;
    v22 = v39;
    *(v19 + 3) = v38;
    *(v19 + 4) = v22;
    *(v19 + 2) = v37;
    sub_242E03388(v10, v7, _s10BannerViewVMa);
    swift_storeEnumTagMultiPayload();
    sub_242E03284(&v35, v34);
    sub_242E032E0(&qword_27ECF7EF0, _s10BannerViewVMa);
    sub_242E032E0(&qword_27ECF7EF8, _s10NoticeViewVMa);
    sub_242F041C0();
    v23 = _s10BannerViewVMa;
    v24 = v10;
  }

  else
  {
    sub_242E02BEC(&v4[*(v2 + 20)]);
    v26 = v14[5];
    v39 = v14[4];
    v40 = v26;
    v41 = v14[6];
    v27 = v14[1];
    v35 = *v14;
    v36 = v27;
    v28 = v14[3];
    v37 = v14[2];
    v38 = v28;
    *v4 = swift_getKeyPath();
    *(v4 + 1) = 0;
    v4[16] = 0;
    v29 = &v4[*(v2 + 24)];
    v30 = v36;
    *v29 = v35;
    *(v29 + 1) = v30;
    v31 = v41;
    *(v29 + 5) = v40;
    *(v29 + 6) = v31;
    v32 = v39;
    *(v29 + 3) = v38;
    *(v29 + 4) = v32;
    *(v29 + 2) = v37;
    sub_242E03388(v4, v7, _s10NoticeViewVMa);
    swift_storeEnumTagMultiPayload();
    sub_242E03284(&v35, v34);
    sub_242E032E0(&qword_27ECF7EF0, _s10BannerViewVMa);
    sub_242E032E0(&qword_27ECF7EF8, _s10NoticeViewVMa);
    sub_242F041C0();
    v23 = _s10NoticeViewVMa;
    v24 = v4;
  }

  return sub_242E03328(v24, v23);
}

uint64_t sub_242E032E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_242E03328(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_242E03388(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_242E03430(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  sub_242DCD3D8();
  if (v5 <= 0x3F)
  {
    a4(319);
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_8Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = *(v8 + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }

  else
  {
    v13 = *(a1 + *(a3 + 24) + 96);
    if (v13 >= 0xFFFFFFFF)
    {
      LODWORD(v13) = -1;
    }

    return (v13 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_index_9Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = result;
    v12 = *(v10 + 56);
    v13 = a1 + *(a4 + 20);

    return v12(v13, a2, a2, v11);
  }

  else
  {
    *(a1 + *(a4 + 24) + 96) = (a2 - 1);
  }

  return result;
}

unint64_t sub_242E03690()
{
  result = qword_27ECF7F30;
  if (!qword_27ECF7F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF7F38);
    sub_242E032E0(&qword_27ECF7EF0, _s10BannerViewVMa);
    sub_242E032E0(&qword_27ECF7EF8, _s10NoticeViewVMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7F30);
  }

  return result;
}

uint64_t sub_242E03798@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6C38);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - v5;
  sub_242E03964(&v22 - v5);
  v7 = v1 + *(_s10BannerViewVMa(0) + 20);
  v8 = type metadata accessor for BannerConfiguration(0);
  v9 = *(v7 + v8[5]);
  v10 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7F40) + 36)];
  v11 = type metadata accessor for PlatterView();
  _s7SwiftUI10ShapeStyleP012CarPlayAssetB0AA8MaterialVRszrlE07platterH0AFvgZ_0();
  v12 = (v7 + v8[14]);
  v14 = *v12;
  v13 = v12[1];
  v15 = v12[2];
  *v10 = swift_getKeyPath();
  *(v10 + 1) = 0;
  v10[16] = 0;
  *(v10 + 3) = swift_getKeyPath();
  v10[32] = 0;
  *(v10 + 5) = v9;
  v16 = &v10[*(v11 + 32)];
  *v16 = v14;
  *(v16 + 1) = v13;
  *(v16 + 2) = v15;

  v17 = sub_242F04A70();
  v19 = v18;
  v20 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6960) + 36)];
  *v20 = v17;
  v20[1] = v19;
  v6[*(v4 + 44)] = *(v7 + v8[13]);
  sub_242DCDA2C(*(v7 + v8[12]), *(v7 + v8[12] + 8), *(v7 + v8[12] + 16), *(v7 + v8[11]), *(v7 + v8[11] + 8), *(v7 + v8[11] + 16), a1);
  return sub_242C6D138(v6, &qword_27ECF6C38);
}

uint64_t sub_242E03964@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7F48);
  MEMORY[0x28223BE20](v31);
  v29 = (&v28 - v2);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7F50);
  MEMORY[0x28223BE20](v33);
  v4 = &v28 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7F58);
  MEMORY[0x28223BE20](v5);
  v30 = &v28 - v6;
  v7 = sub_242F04000();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  v11 = *(v1 + 8);
  if (*(v1 + 16) == 1)
  {
    v34[0] = *v1;
    v34[1] = v11;
  }

  else
  {

    sub_242F05710();
    v13 = sub_242F04360();
    v28 = v5;
    v14 = v13;
    sub_242F03930();

    sub_242F03FF0();
    swift_getAtKeyPath();
    sub_242DD16BC();
    (*(v8 + 8))(v10, v7);
    v12 = v34[0];
  }

  v15 = _s10BannerViewVMa(0);
  v16 = v1 + *(v15 + 24);
  v17 = *(v16 + 48);
  if (v17)
  {
    v18 = *(v16 + 40);
  }

  else
  {
    v18 = 0;
  }

  v12(&v35, v18, v17);

  if (v35)
  {
    LOBYTE(v34[0]) = v36;

    v20 = v30;
    sub_242E03DDC(v19, v34);

    sub_242CA321C(v20, v4, &qword_27ECF7F58);
    swift_storeEnumTagMultiPayload();
    sub_242E0761C();
    sub_242C7E000(&qword_27ECF7F90, &qword_27ECF7F48);
    sub_242F041C0();

    v21 = v20;
    v22 = &qword_27ECF7F58;
  }

  else
  {
    v23 = v1 + *(v15 + 20);
    v24 = type metadata accessor for IconNotificationButtonConfiguration(0);
    v25 = v29;
    *v29 = *(v23 + *(v24 + 32));
    *(v25 + 8) = 0;
    *(v25 + 16) = 0;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7F60);
    sub_242E04134(v1, v25 + *(v26 + 44));
    sub_242CA321C(v25, v4, &qword_27ECF7F48);
    swift_storeEnumTagMultiPayload();
    sub_242E0761C();
    sub_242C7E000(&qword_27ECF7F90, &qword_27ECF7F48);
    sub_242F041C0();
    v21 = v25;
    v22 = &qword_27ECF7F48;
  }

  return sub_242C6D138(v21, v22);
}

uint64_t sub_242E03DDC(uint64_t a1, unsigned __int8 *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7F88);
  MEMORY[0x28223BE20](v5);
  v7 = (&v22 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7F98);
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7F78);
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  v14 = *a2;
  if (v14 == 2)
  {
    *v7 = sub_242F04A40();
    v7[1] = v15;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7FA8);
    sub_242E050A4(a1, 2, v2, v7 + *(v16 + 44));
    sub_242CA321C(v7, v10, &qword_27ECF7F88);
    swift_storeEnumTagMultiPayload();
    sub_242C7E000(&qword_27ECF7F70, &qword_27ECF7F78);
    sub_242C7E000(&qword_27ECF7F80, &qword_27ECF7F88);
    sub_242F041C0();
    v17 = v7;
    v18 = &qword_27ECF7F88;
  }

  else
  {
    v19 = v2 + *(_s10BannerViewVMa(0) + 20);
    *v13 = *(v19 + *(type metadata accessor for IconNotificationButtonConfiguration(0) + 32));
    *(v13 + 1) = 0;
    v13[16] = 0;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7FA0);
    sub_242E049F8(a1, v14, v2, &v13[*(v20 + 44)]);
    sub_242CA321C(v13, v10, &qword_27ECF7F78);
    swift_storeEnumTagMultiPayload();
    sub_242C7E000(&qword_27ECF7F70, &qword_27ECF7F78);
    sub_242C7E000(&qword_27ECF7F80, &qword_27ECF7F88);
    sub_242F041C0();
    v17 = v13;
    v18 = &qword_27ECF7F78;
  }

  return sub_242C6D138(v17, v18);
}

uint64_t sub_242E04134@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7FB0);
  MEMORY[0x28223BE20](v3 - 8);
  v61 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v60 = &v59 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8038);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v59 - v11;
  *v12 = sub_242F04040();
  *(v12 + 1) = 0;
  v12[16] = 0;
  v13 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8040) + 44)];
  v14 = _s10BannerViewVMa(0);
  v16 = *(v14 + 20);
  v15 = *(v14 + 24);
  v17 = a1;
  v59 = a1;
  v18 = a1 + v15;
  v19 = *v18;
  v20 = *(v18 + 8);
  v22 = *(v18 + 16);
  v21 = *(v18 + 24);
  v23 = *(v18 + 32);
  v24 = v17 + v16 + *(type metadata accessor for BannerConfiguration(0) + 36);
  v25 = type metadata accessor for TextContentView(0);
  sub_242D575E8(v24, v13 + *(v25 + 24));
  *v13 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0BA0);
  swift_storeEnumTagMultiPayload();
  v26 = v13 + *(v25 + 20);
  *v26 = v19;
  *(v26 + 1) = v20;
  *(v26 + 2) = v22;
  *(v26 + 3) = v21;
  v26[32] = v23;
  sub_242CD52B8(v19, v20, v22, v21, v23);
  LOBYTE(v21) = sub_242F043C0();
  sub_242F03B50();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6A88) + 36);
  *v35 = v21;
  *(v35 + 1) = v28;
  *(v35 + 2) = v30;
  *(v35 + 3) = v32;
  *(v35 + 4) = v34;
  v35[40] = 0;
  LOBYTE(v21) = sub_242F043D0();
  sub_242F03B50();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v44 = v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6A80) + 36);
  *v44 = v21;
  *(v44 + 1) = v37;
  *(v44 + 2) = v39;
  *(v44 + 3) = v41;
  *(v44 + 4) = v43;
  v44[40] = 0;
  LOBYTE(v21) = sub_242F043E0();
  sub_242F03B50();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v53 = v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8048) + 36);
  *v53 = v21;
  *(v53 + 1) = v46;
  *(v53 + 2) = v48;
  *(v53 + 3) = v50;
  *(v53 + 4) = v52;
  v53[40] = 0;
  v54 = v60;
  sub_242E04514(v60);
  sub_242CA321C(v12, v9, &qword_27ECF8038);
  v55 = v61;
  sub_242CA321C(v54, v61, &qword_27ECF7FB0);
  v56 = v62;
  sub_242CA321C(v9, v62, &qword_27ECF8038);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8050);
  sub_242CA321C(v55, v56 + *(v57 + 48), &qword_27ECF7FB0);
  sub_242C6D138(v54, &qword_27ECF7FB0);
  sub_242C6D138(v12, &qword_27ECF8038);
  sub_242C6D138(v55, &qword_27ECF7FB0);
  return sub_242C6D138(v9, &qword_27ECF8038);
}

uint64_t sub_242E04514@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7FD0);
  MEMORY[0x28223BE20](v3);
  v5 = (v33 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7FD8);
  MEMORY[0x28223BE20](v6);
  v8 = v33 - v7;
  v9 = type metadata accessor for IconNotificationButton(0);
  MEMORY[0x28223BE20](v9);
  v11 = (v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = _s10BannerViewVMa(0);
  v13 = v12;
  v14 = (v1 + *(v12 + 24));
  v15 = v14[9];
  if (v15)
  {
    v33[1] = v6;
    v16 = v14[10];
    v17 = v14[11];
    v34 = a1;
    v18 = v14[8];
    sub_242D5A520(v18, v15);

    v19 = sub_242F047F0();
    v33[2] = v3;
    v20 = v19;
    sub_242E03388(v1 + *(v13 + 20), v11 + *(v9 + 24), type metadata accessor for IconNotificationButtonConfiguration);
    v21 = swift_allocObject();
    v21[2] = v18;
    v21[3] = v15;
    v21[4] = v16;
    v21[5] = v17;
    *v11 = v20;
    v11[1] = sub_242E07810;
    v11[2] = v21;
    sub_242E03388(v11, v8, type metadata accessor for IconNotificationButton);
    swift_storeEnumTagMultiPayload();
    sub_242E032E0(&qword_27ECF7FE8, type metadata accessor for IconNotificationButton);
    sub_242E07700();
    v22 = v34;
    sub_242F041C0();
    sub_242E03328(v11, type metadata accessor for IconNotificationButton);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7FE0);
    return (*(*(v23 - 8) + 56))(v22, 0, 1, v23);
  }

  else
  {
    v25 = v1 + *(v12 + 20);
    if (*(v25 + *(type metadata accessor for BannerConfiguration(0) + 24)) == 1)
    {
      v26 = sub_242F047F0();
      v27 = *(v9 + 24);
      if (qword_27ECEF6C0 != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for IconNotificationButtonConfiguration(0);
      v29 = __swift_project_value_buffer(v28, qword_27ECF7C98);
      sub_242E03388(v29, v5 + v27, type metadata accessor for IconNotificationButtonConfiguration);
      v5[1] = 0;
      v5[2] = 0;
      *v5 = v26;
      sub_242CA321C(v5, v8, &qword_27ECF7FD0);
      swift_storeEnumTagMultiPayload();
      sub_242E032E0(&qword_27ECF7FE8, type metadata accessor for IconNotificationButton);
      sub_242E07700();
      sub_242F041C0();
      sub_242C6D138(v5, &qword_27ECF7FD0);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7FE0);
      return (*(*(v30 - 8) + 56))(a1, 0, 1, v30);
    }

    else
    {
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7FE0);
      v32 = *(*(v31 - 8) + 56);

      return v32(a1, 1, 1, v31);
    }
  }
}

uint64_t sub_242E049F8@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7FB0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6A98);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v23 - v18;
  *v19 = sub_242F04040();
  *(v19 + 1) = 0;
  v19[16] = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6AA0);
  sub_242E04C28(a1, a2, a3, &v19[*(v20 + 44)]);
  sub_242E04514(v13);
  sub_242CA321C(v19, v16, &qword_27ECF6A98);
  sub_242CA321C(v13, v10, &qword_27ECF7FB0);
  sub_242CA321C(v16, a4, &qword_27ECF6A98);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8030);
  sub_242CA321C(v10, a4 + *(v21 + 48), &qword_27ECF7FB0);
  sub_242C6D138(v13, &qword_27ECF7FB0);
  sub_242C6D138(v19, &qword_27ECF6A98);
  sub_242C6D138(v10, &qword_27ECF7FB0);
  return sub_242C6D138(v16, &qword_27ECF6A98);
}

uint64_t sub_242E04C28@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v53 = a2;
  v54 = a1;
  v57 = a4;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6A80);
  MEMORY[0x28223BE20](v55);
  v58 = &v52[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v52[-v7];
  v9 = type metadata accessor for NotificationSymbolConfiguration(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v52[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for SymbolView(0);
  MEMORY[0x28223BE20](v12);
  v56 = &v52[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v16 = &v52[-v15];
  MEMORY[0x28223BE20](v17);
  v59 = &v52[-v18];
  v19 = _s10BannerViewVMa(0);
  v20 = a3 + *(v19 + 20);
  v21 = type metadata accessor for BannerConfiguration(0);
  sub_242E03388(v20 + *(v21 + 28), v11, type metadata accessor for NotificationSymbolConfiguration);
  v22 = a3 + *(v19 + 24);
  if (*(v22 + 48))
  {
    v23 = *(v22 + 56);
  }

  else
  {
    v23 = 0;
  }

  *v16 = swift_getKeyPath();
  *(v16 + 1) = 0;
  v16[16] = 0;
  *(v16 + 3) = v54;
  v16[32] = v53;
  sub_242E07838(v11, &v16[*(v12 + 24)], type metadata accessor for NotificationSymbolConfiguration);
  *&v16[*(v12 + 28)] = v23;
  sub_242E07838(v16, v59, type metadata accessor for SymbolView);
  v24 = *v22;
  v25 = *(v22 + 8);
  v26 = *(v22 + 16);
  v27 = *(v22 + 24);
  v28 = v20 + *(v21 + 36);
  v29 = *(v22 + 32);
  v30 = type metadata accessor for TextContentView(0);
  sub_242D575E8(v28, v8 + *(v30 + 24));
  *v8 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0BA0);
  swift_storeEnumTagMultiPayload();
  v31 = v8 + *(v30 + 20);
  *v31 = v24;
  *(v31 + 1) = v25;
  *(v31 + 2) = v26;
  *(v31 + 3) = v27;
  v31[32] = v29;

  sub_242CD52B8(v24, v25, v26, v27, v29);
  LOBYTE(v30) = sub_242F043C0();
  sub_242F03B50();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v40 = v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6A88) + 36);
  *v40 = v30;
  *(v40 + 1) = v33;
  *(v40 + 2) = v35;
  *(v40 + 3) = v37;
  *(v40 + 4) = v39;
  v40[40] = 0;
  LOBYTE(v30) = sub_242F043D0();
  sub_242F03B50();
  v41 = v56;
  v42 = v8 + *(v55 + 36);
  *v42 = v30;
  *(v42 + 1) = v43;
  *(v42 + 2) = v44;
  *(v42 + 3) = v45;
  *(v42 + 4) = v46;
  v42[40] = 0;
  v47 = v59;
  sub_242E03388(v59, v41, type metadata accessor for SymbolView);
  v48 = v58;
  sub_242CA321C(v8, v58, &qword_27ECF6A80);
  v49 = v57;
  sub_242E03388(v41, v57, type metadata accessor for SymbolView);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6AB0);
  sub_242CA321C(v48, v49 + *(v50 + 48), &qword_27ECF6A80);
  sub_242C6D138(v8, &qword_27ECF6A80);
  sub_242E03328(v47, type metadata accessor for SymbolView);
  sub_242C6D138(v48, &qword_27ECF6A80);
  return sub_242E03328(v41, type metadata accessor for SymbolView);
}

uint64_t sub_242E050A4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7FB0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7FB8);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v23 - v18;
  *v19 = sub_242F04080();
  *(v19 + 1) = 0;
  v19[16] = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7FC0);
  sub_242E052D4(a1, a2, a3, &v19[*(v20 + 44)]);
  sub_242E04514(v13);
  sub_242CA321C(v19, v16, &qword_27ECF7FB8);
  sub_242CA321C(v13, v10, &qword_27ECF7FB0);
  sub_242CA321C(v16, a4, &qword_27ECF7FB8);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7FC8);
  sub_242CA321C(v10, a4 + *(v21 + 48), &qword_27ECF7FB0);
  sub_242C6D138(v13, &qword_27ECF7FB0);
  sub_242C6D138(v19, &qword_27ECF7FB8);
  sub_242C6D138(v10, &qword_27ECF7FB0);
  return sub_242C6D138(v16, &qword_27ECF7FB8);
}

uint64_t sub_242E052D4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a2;
  v40 = a1;
  v43 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8000);
  MEMORY[0x28223BE20](v5 - 8);
  v42 = &v38[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v41 = &v38[-v8];
  v9 = type metadata accessor for NotificationSymbolConfiguration(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v38[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for SymbolView(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v38[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8008);
  MEMORY[0x28223BE20](v15);
  v17 = &v38[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v20 = &v38[-v19];
  MEMORY[0x28223BE20](v21);
  v23 = &v38[-v22];
  v24 = _s10BannerViewVMa(0);
  v25 = a3 + *(v24 + 20);
  v26 = type metadata accessor for BannerConfiguration(0);
  sub_242E03388(v25 + *(v26 + 32), v11, type metadata accessor for NotificationSymbolConfiguration);
  v27 = a3 + *(v24 + 24);
  if (*(v27 + 48))
  {
    v28 = *(v27 + 56);
  }

  else
  {
    v28 = 0;
  }

  *v14 = swift_getKeyPath();
  *(v14 + 1) = 0;
  v14[16] = 0;
  *(v14 + 3) = v40;
  v14[32] = v39;
  sub_242E07838(v11, &v14[*(v12 + 24)], type metadata accessor for NotificationSymbolConfiguration);
  *&v14[*(v12 + 28)] = v28;

  sub_242F04A70();
  sub_242F03E40();
  sub_242E07838(v14, v20, type metadata accessor for SymbolView);
  v29 = &v20[*(v15 + 36)];
  v30 = v49;
  v29[4] = v48;
  v29[5] = v30;
  v29[6] = v50;
  v31 = v45;
  *v29 = v44;
  v29[1] = v31;
  v32 = v47;
  v29[2] = v46;
  v29[3] = v32;
  sub_242CF6B3C(v20, v23, &qword_27ECF8008);
  v33 = v41;
  sub_242E05718(v41);
  sub_242CA321C(v23, v17, &qword_27ECF8008);
  v34 = v42;
  sub_242CA321C(v33, v42, &qword_27ECF8000);
  v35 = v43;
  sub_242CA321C(v17, v43, &qword_27ECF8008);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8010);
  sub_242CA321C(v34, v35 + *(v36 + 48), &qword_27ECF8000);
  sub_242C6D138(v33, &qword_27ECF8000);
  sub_242C6D138(v23, &qword_27ECF8008);
  sub_242C6D138(v34, &qword_27ECF8000);
  return sub_242C6D138(v17, &qword_27ECF8008);
}

uint64_t sub_242E05718@<X0>(uint64_t a1@<X8>)
{
  v66 = a1;
  v2 = type metadata accessor for TextContentView(0);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = (&v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8018);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v62 = &v62 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8020);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v63 = &v62 - v11;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8028) - 8;
  MEMORY[0x28223BE20](v65);
  v64 = &v62 - v12;
  v13 = _s10BannerViewVMa(0);
  v14 = v1 + *(v13 + 24);
  v15 = *v14;
  v16 = *(v14 + 8);
  v18 = *(v14 + 16);
  v17 = *(v14 + 24);
  v19 = v1 + *(v13 + 20);
  v20 = *(v14 + 32);
  v21 = type metadata accessor for BannerConfiguration(0);
  sub_242D575E8(v19 + *(v21 + 40), v5 + *(v3 + 32));
  *v5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0BA0);
  swift_storeEnumTagMultiPayload();
  v22 = v5 + *(v3 + 28);
  *v22 = v15;
  *(v22 + 1) = v16;
  *(v22 + 2) = v18;
  *(v22 + 3) = v17;
  v22[32] = v20;
  sub_242CD52B8(v15, v16, v18, v17, v20);
  sub_242F04A70();
  sub_242F03E40();
  v23 = v62;
  sub_242E07838(v5, v62, type metadata accessor for TextContentView);
  v24 = (v23 + *(v7 + 44));
  v25 = v72;
  v24[4] = v71;
  v24[5] = v25;
  v24[6] = v73;
  v26 = v68;
  *v24 = v67;
  v24[1] = v26;
  v27 = v70;
  v24[2] = v69;
  v24[3] = v27;
  LOBYTE(v17) = sub_242F043E0();
  sub_242F03B50();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = v23;
  v37 = v63;
  sub_242CF6B3C(v36, v63, &qword_27ECF8018);
  v38 = v37 + *(v10 + 44);
  *v38 = v17;
  *(v38 + 8) = v29;
  *(v38 + 16) = v31;
  *(v38 + 24) = v33;
  *(v38 + 32) = v35;
  *(v38 + 40) = 0;
  LOBYTE(v17) = sub_242F04400();
  sub_242F03B50();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v47 = v37;
  v48 = v64;
  sub_242CF6B3C(v47, v64, &qword_27ECF8020);
  v49 = v48 + *(v65 + 44);
  *v49 = v17;
  *(v49 + 8) = v40;
  *(v49 + 16) = v42;
  *(v49 + 24) = v44;
  *(v49 + 32) = v46;
  *(v49 + 40) = 0;
  LOBYTE(v17) = sub_242F043D0();
  sub_242F03B50();
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v58 = v48;
  v59 = v66;
  sub_242CF6B3C(v58, v66, &qword_27ECF8028);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8000);
  v61 = v59 + *(result + 36);
  *v61 = v17;
  *(v61 + 8) = v51;
  *(v61 + 16) = v53;
  *(v61 + 24) = v55;
  *(v61 + 32) = v57;
  *(v61 + 40) = 0;
  return result;
}

uint64_t sub_242E05B2C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6C48);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - v5;
  sub_242E05CF4(&v22 - v5);
  v7 = (v1 + *(_s10NoticeViewVMa(0) + 20));
  v8 = *v7;
  v9 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8058) + 36)];
  v10 = type metadata accessor for PlatterView();
  _s7SwiftUI10ShapeStyleP012CarPlayAssetB0AA8MaterialVRszrlE07platterH0AFvgZ_0();
  v11 = type metadata accessor for NoticeConfiguration(0);
  v12 = (v7 + v11[12]);
  v14 = *v12;
  v13 = v12[1];
  v15 = v12[2];
  *v9 = swift_getKeyPath();
  *(v9 + 1) = 0;
  v9[16] = 0;
  *(v9 + 3) = swift_getKeyPath();
  v9[32] = 0;
  *(v9 + 5) = v8;
  v16 = &v9[*(v10 + 32)];
  *v16 = v14;
  *(v16 + 1) = v13;
  *(v16 + 2) = v15;

  v17 = sub_242F04A70();
  v19 = v18;
  v20 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6960) + 36)];
  *v20 = v17;
  v20[1] = v19;
  v6[*(v4 + 44)] = *(v7 + v11[11]);
  sub_242DCDC4C(*(v7 + v11[10]), *(v7 + v11[10] + 8), *(v7 + v11[10] + 16), *(v7 + v11[9]), *(v7 + v11[9] + 8), *(v7 + v11[9] + 16), a1);
  return sub_242C6D138(v6, &qword_27ECF6C48);
}

uint64_t sub_242E05CF4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v29 = a1;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8060);
  MEMORY[0x28223BE20](v28);
  v4 = (&v25 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8068);
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - v6;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8070);
  MEMORY[0x28223BE20](v30);
  v27 = &v25 - v8;
  v9 = sub_242F04000();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v1;
  v13 = *(v1 + 8);
  if (*(v2 + 16) == 1)
  {
    v31[0] = v14;
    v31[1] = v13;
  }

  else
  {

    sub_242F05710();
    v15 = sub_242F04360();
    v26 = v7;
    v16 = v15;
    sub_242F03930();

    v7 = v26;
    sub_242F03FF0();
    swift_getAtKeyPath();
    sub_242DD16BC();
    (*(v10 + 8))(v12, v9);
    v14 = v31[0];
  }

  v17 = v2 + *(_s10NoticeViewVMa(0) + 24);
  v18 = *(v17 + 48);
  if (v18)
  {
    v19 = *(v17 + 40);
  }

  else
  {
    v19 = 0;
  }

  v14(&v32, v19, v18);

  if (v32)
  {
    LOBYTE(v31[0]) = v33;

    v21 = v27;
    sub_242E0613C(v20, v31, v27);

    sub_242CA321C(v21, v7, &qword_27ECF8070);
    swift_storeEnumTagMultiPayload();
    sub_242E078A0();
    sub_242E07A70(&qword_27ECF80A8, &qword_27ECF8060, &unk_242F488D0, sub_242E07A10);
    sub_242F041C0();

    v22 = v21;
    v23 = &qword_27ECF8070;
  }

  else
  {
    sub_242E06568(v4);
    sub_242CA321C(v4, v7, &qword_27ECF8060);
    swift_storeEnumTagMultiPayload();
    sub_242E078A0();
    sub_242E07A70(&qword_27ECF80A8, &qword_27ECF8060, &unk_242F488D0, sub_242E07A10);
    sub_242F041C0();
    v22 = v4;
    v23 = &qword_27ECF8060;
  }

  return sub_242C6D138(v22, v23);
}

uint64_t sub_242E0613C@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v39 = a1;
  v40 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7FB8);
  MEMORY[0x28223BE20](v6);
  v8 = v38 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF80F8);
  MEMORY[0x28223BE20](v9);
  v11 = v38 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8098);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v38 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8088);
  MEMORY[0x28223BE20](v15);
  v17 = v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = v38 - v19;
  v21 = *a2;
  if (v21 == 2)
  {
    *v8 = sub_242F04080();
    *(v8 + 1) = 0;
    v8[16] = 0;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7FC0);
    sub_242E06DA8(v39, 2, v4, &v8[*(v22 + 44)]);
    sub_242CA321C(v8, v11, &qword_27ECF7FB8);
    swift_storeEnumTagMultiPayload();
    sub_242E07958();
    sub_242C7E000(&qword_27ECF80A0, &qword_27ECF7FB8);
    sub_242F041C0();
    v23 = v8;
    v24 = &qword_27ECF7FB8;
  }

  else
  {
    v38[1] = v6;
    *v14 = sub_242F04040();
    *(v14 + 1) = 0;
    v14[16] = 0;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8100);
    sub_242E067C4(v39, v21, v4, &v14[*(v25 + 44)]);
    v26 = sub_242F04400();
    v27 = v4 + *(_s10NoticeViewVMa(0) + 20);
    if ((*(v27 + *(type metadata accessor for NoticeConfiguration(0) + 28) + 144) & 1) == 0)
    {
      type metadata accessor for NotificationSymbolConfiguration(0);
    }

    sub_242F03B50();
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    sub_242CF6B3C(v14, v17, &qword_27ECF8098);
    v36 = &v17[*(v15 + 36)];
    *v36 = v26;
    *(v36 + 1) = v29;
    *(v36 + 2) = v31;
    *(v36 + 3) = v33;
    *(v36 + 4) = v35;
    v36[40] = 0;
    sub_242CF6B3C(v17, v20, &qword_27ECF8088);
    sub_242CA321C(v20, v11, &qword_27ECF8088);
    swift_storeEnumTagMultiPayload();
    sub_242E07958();
    sub_242C7E000(&qword_27ECF80A0, &qword_27ECF7FB8);
    sub_242F041C0();
    v23 = v20;
    v24 = &qword_27ECF8088;
  }

  return sub_242C6D138(v23, v24);
}

uint64_t sub_242E06568@<X0>(uint64_t *a1@<X8>)
{
  v3 = _s10NoticeViewVMa(0);
  v4 = v1 + *(v3 + 24);
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = v1 + *(v3 + 20);
  v10 = *(v4 + 32);
  v11 = v9 + *(type metadata accessor for NoticeConfiguration(0) + 28);
  v12 = type metadata accessor for TextContentView(0);
  sub_242D575E8(v11, a1 + *(v12 + 24));
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0BA0);
  swift_storeEnumTagMultiPayload();
  v13 = a1 + *(v12 + 20);
  *v13 = v5;
  *(v13 + 1) = v6;
  *(v13 + 2) = v7;
  *(v13 + 3) = v8;
  v13[32] = v10;
  v14 = *(v11 + 152);
  KeyPath = swift_getKeyPath();
  v16 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF80E8) + 36));
  *v16 = KeyPath;
  v16[1] = v14;
  sub_242CD52B8(v5, v6, v7, v8, v10);
  LOBYTE(v5) = sub_242F043C0();
  sub_242F03B50();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF80D8) + 36);
  *v25 = v5;
  *(v25 + 1) = v18;
  *(v25 + 2) = v20;
  *(v25 + 3) = v22;
  *(v25 + 4) = v24;
  v25[40] = 0;
  LOBYTE(v5) = sub_242F043D0();
  sub_242F03B50();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF80C8) + 36);
  *v34 = v5;
  *(v34 + 1) = v27;
  *(v34 + 2) = v29;
  *(v34 + 3) = v31;
  *(v34 + 4) = v33;
  v34[40] = 0;
  LOBYTE(v5) = sub_242F043E0();
  sub_242F03B50();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v43 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF80B8) + 36);
  *v43 = v5;
  *(v43 + 1) = v36;
  *(v43 + 2) = v38;
  *(v43 + 3) = v40;
  *(v43 + 4) = v42;
  v43[40] = 0;
  LOBYTE(v5) = sub_242F04400();
  sub_242F03B50();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8060);
  v53 = a1 + *(result + 36);
  *v53 = v5;
  *(v53 + 1) = v45;
  *(v53 + 2) = v47;
  *(v53 + 3) = v49;
  *(v53 + 4) = v51;
  v53[40] = 0;
  return result;
}

uint64_t sub_242E067C4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v71 = a2;
  *&v72 = a1;
  v79 = a4;
  *&v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF80C8);
  MEMORY[0x28223BE20](v73);
  v6 = (&v70 - v5);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF80B8);
  MEMORY[0x28223BE20](v75);
  v78 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v74 = &v70 - v9;
  MEMORY[0x28223BE20](v10);
  v77 = &v70 - v11;
  v12 = type metadata accessor for NotificationSymbolConfiguration(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SymbolView(0);
  MEMORY[0x28223BE20](v15);
  v76 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v70 - v18;
  MEMORY[0x28223BE20](v20);
  v80 = &v70 - v21;
  v22 = _s10NoticeViewVMa(0);
  v23 = a3 + *(v22 + 20);
  v24 = type metadata accessor for NoticeConfiguration(0);
  v70 = v23 + *(v24 + 20);
  sub_242E03388(v70, v14, type metadata accessor for NotificationSymbolConfiguration);
  v25 = a3 + *(v22 + 24);
  if (*(v25 + 48))
  {
    v26 = *(v25 + 56);
  }

  else
  {
    v26 = 0;
  }

  *v19 = swift_getKeyPath();
  *(v19 + 1) = 0;
  v19[16] = 0;
  *(v19 + 3) = v72;
  v19[32] = v71;
  sub_242E07838(v14, &v19[*(v15 + 24)], type metadata accessor for NotificationSymbolConfiguration);
  *&v19[*(v15 + 28)] = v26;
  sub_242E07838(v19, v80, type metadata accessor for SymbolView);
  v27 = *v25;
  v28 = *(v25 + 8);
  v30 = *(v25 + 16);
  v29 = *(v25 + 24);
  v31 = v23 + *(v24 + 28);
  v32 = *(v25 + 32);
  v33 = type metadata accessor for TextContentView(0);
  sub_242D575E8(v31, v6 + *(v33 + 24));
  *v6 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0BA0);
  swift_storeEnumTagMultiPayload();
  v34 = v6 + *(v33 + 20);
  *v34 = v27;
  *(v34 + 1) = v28;
  *(v34 + 2) = v30;
  *(v34 + 3) = v29;
  v34[32] = v32;
  v35 = *(v31 + 152);
  KeyPath = swift_getKeyPath();
  v37 = (v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF80E8) + 36));
  *v37 = KeyPath;
  v37[1] = v35;

  sub_242CD52B8(v27, v28, v30, v29, v32);
  v38 = sub_242F043C0();
  sub_242F03B50();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v47 = v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF80D8) + 36);
  *v47 = v38;
  *(v47 + 1) = v40;
  *(v47 + 2) = v42;
  *(v47 + 3) = v44;
  *(v47 + 4) = v46;
  v47[40] = 0;
  v48 = sub_242F043D0();
  sub_242F03B50();
  v49 = v6 + *(v73 + 36);
  *v49 = v48;
  *(v49 + 1) = v50;
  *(v49 + 2) = v51;
  *(v49 + 3) = v52;
  *(v49 + 4) = v53;
  v49[40] = 0;
  v54 = sub_242F04400();
  if (*(v31 + 144) == 1 || (*(v70 + 24) & 1) == 0)
  {
    sub_242F03B50();
    v55 = 0;
    *(&v57 + 1) = v56;
    *(&v59 + 1) = v58;
    v72 = v57;
    v73 = v59;
  }

  else
  {
    v72 = 0u;
    v73 = 0u;
    v55 = 1;
  }

  v60 = v74;
  sub_242CF6B3C(v6, v74, &qword_27ECF80C8);
  v61 = v60 + *(v75 + 36);
  *v61 = v54;
  v62 = v73;
  *(v61 + 24) = v72;
  *(v61 + 8) = v62;
  *(v61 + 40) = v55;
  v63 = v77;
  sub_242CF6B3C(v60, v77, &qword_27ECF80B8);
  v64 = v80;
  v65 = v76;
  sub_242E03388(v80, v76, type metadata accessor for SymbolView);
  v66 = v78;
  sub_242CA321C(v63, v78, &qword_27ECF80B8);
  v67 = v79;
  sub_242E03388(v65, v79, type metadata accessor for SymbolView);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8108);
  sub_242CA321C(v66, v67 + *(v68 + 48), &qword_27ECF80B8);
  sub_242C6D138(v63, &qword_27ECF80B8);
  sub_242E03328(v64, type metadata accessor for SymbolView);
  sub_242C6D138(v66, &qword_27ECF80B8);
  return sub_242E03328(v65, type metadata accessor for SymbolView);
}

uint64_t sub_242E06DA8@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a2;
  v40 = a1;
  v43 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8000);
  MEMORY[0x28223BE20](v5 - 8);
  v42 = &v38[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v41 = &v38[-v8];
  v9 = type metadata accessor for NotificationSymbolConfiguration(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v38[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for SymbolView(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v38[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8008);
  MEMORY[0x28223BE20](v15);
  v17 = &v38[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v20 = &v38[-v19];
  MEMORY[0x28223BE20](v21);
  v23 = &v38[-v22];
  v24 = _s10NoticeViewVMa(0);
  v25 = a3 + *(v24 + 20);
  v26 = type metadata accessor for NoticeConfiguration(0);
  sub_242E03388(v25 + *(v26 + 24), v11, type metadata accessor for NotificationSymbolConfiguration);
  v27 = a3 + *(v24 + 24);
  if (*(v27 + 48))
  {
    v28 = *(v27 + 56);
  }

  else
  {
    v28 = 0;
  }

  *v14 = swift_getKeyPath();
  *(v14 + 1) = 0;
  v14[16] = 0;
  *(v14 + 3) = v40;
  v14[32] = v39;
  sub_242E07838(v11, &v14[*(v12 + 24)], type metadata accessor for NotificationSymbolConfiguration);
  *&v14[*(v12 + 28)] = v28;

  sub_242F04A70();
  sub_242F03E40();
  sub_242E07838(v14, v20, type metadata accessor for SymbolView);
  v29 = &v20[*(v15 + 36)];
  v30 = v49;
  v29[4] = v48;
  v29[5] = v30;
  v29[6] = v50;
  v31 = v45;
  *v29 = v44;
  v29[1] = v31;
  v32 = v47;
  v29[2] = v46;
  v29[3] = v32;
  sub_242CF6B3C(v20, v23, &qword_27ECF8008);
  v33 = v41;
  sub_242E071EC(v41);
  sub_242CA321C(v23, v17, &qword_27ECF8008);
  v34 = v42;
  sub_242CA321C(v33, v42, &qword_27ECF8000);
  v35 = v43;
  sub_242CA321C(v17, v43, &qword_27ECF8008);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8010);
  sub_242CA321C(v34, v35 + *(v36 + 48), &qword_27ECF8000);
  sub_242C6D138(v33, &qword_27ECF8000);
  sub_242C6D138(v23, &qword_27ECF8008);
  sub_242C6D138(v34, &qword_27ECF8000);
  return sub_242C6D138(v17, &qword_27ECF8008);
}

uint64_t sub_242E071EC@<X0>(uint64_t a1@<X8>)
{
  v66 = a1;
  v2 = type metadata accessor for TextContentView(0);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = (&v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8018);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v62 = &v62 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8020);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v63 = &v62 - v11;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8028) - 8;
  MEMORY[0x28223BE20](v65);
  v64 = &v62 - v12;
  v13 = _s10NoticeViewVMa(0);
  v14 = v1 + *(v13 + 24);
  v15 = *v14;
  v16 = *(v14 + 8);
  v18 = *(v14 + 16);
  v17 = *(v14 + 24);
  v19 = v1 + *(v13 + 20);
  v20 = *(v14 + 32);
  v21 = type metadata accessor for NoticeConfiguration(0);
  sub_242D575E8(v19 + *(v21 + 32), v5 + *(v3 + 32));
  *v5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0BA0);
  swift_storeEnumTagMultiPayload();
  v22 = v5 + *(v3 + 28);
  *v22 = v15;
  *(v22 + 1) = v16;
  *(v22 + 2) = v18;
  *(v22 + 3) = v17;
  v22[32] = v20;
  sub_242CD52B8(v15, v16, v18, v17, v20);
  sub_242F04A70();
  sub_242F03E40();
  v23 = v62;
  sub_242E07838(v5, v62, type metadata accessor for TextContentView);
  v24 = (v23 + *(v7 + 44));
  v25 = v72;
  v24[4] = v71;
  v24[5] = v25;
  v24[6] = v73;
  v26 = v68;
  *v24 = v67;
  v24[1] = v26;
  v27 = v70;
  v24[2] = v69;
  v24[3] = v27;
  LOBYTE(v17) = sub_242F043E0();
  sub_242F03B50();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = v23;
  v37 = v63;
  sub_242CF6B3C(v36, v63, &qword_27ECF8018);
  v38 = v37 + *(v10 + 44);
  *v38 = v17;
  *(v38 + 8) = v29;
  *(v38 + 16) = v31;
  *(v38 + 24) = v33;
  *(v38 + 32) = v35;
  *(v38 + 40) = 0;
  LOBYTE(v17) = sub_242F04400();
  sub_242F03B50();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v47 = v37;
  v48 = v64;
  sub_242CF6B3C(v47, v64, &qword_27ECF8020);
  v49 = v48 + *(v65 + 44);
  *v49 = v17;
  *(v49 + 8) = v40;
  *(v49 + 16) = v42;
  *(v49 + 24) = v44;
  *(v49 + 32) = v46;
  *(v49 + 40) = 0;
  LOBYTE(v17) = sub_242F043D0();
  sub_242F03B50();
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v58 = v48;
  v59 = v66;
  sub_242CF6B3C(v58, v66, &qword_27ECF8028);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8000);
  v61 = v59 + *(result + 36);
  *v61 = v17;
  *(v61 + 8) = v51;
  *(v61 + 16) = v53;
  *(v61 + 24) = v55;
  *(v61 + 32) = v57;
  *(v61 + 40) = 0;
  return result;
}

unint64_t sub_242E0761C()
{
  result = qword_27ECF7F68;
  if (!qword_27ECF7F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF7F58);
    sub_242C7E000(&qword_27ECF7F70, &qword_27ECF7F78);
    sub_242C7E000(&qword_27ECF7F80, &qword_27ECF7F88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7F68);
  }

  return result;
}

unint64_t sub_242E07700()
{
  result = qword_27ECF7FF0;
  if (!qword_27ECF7FF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF7FD0);
    sub_242E032E0(&qword_27ECF7FE8, type metadata accessor for IconNotificationButton);
    sub_242E077BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7FF0);
  }

  return result;
}

unint64_t sub_242E077BC()
{
  result = qword_27ECF7FF8;
  if (!qword_27ECF7FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF7FF8);
  }

  return result;
}

uint64_t sub_242E07838(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_242E078A0()
{
  result = qword_27ECF8078;
  if (!qword_27ECF8078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF8070);
    sub_242E07958();
    sub_242C7E000(&qword_27ECF80A0, &qword_27ECF7FB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8078);
  }

  return result;
}

unint64_t sub_242E07958()
{
  result = qword_27ECF8080;
  if (!qword_27ECF8080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF8088);
    sub_242C7E000(&qword_27ECF8090, &qword_27ECF8098);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8080);
  }

  return result;
}

uint64_t sub_242E07A70(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_242E07B24()
{
  result = qword_27ECF80E0;
  if (!qword_27ECF80E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF80E8);
    sub_242E032E0(&qword_27ECF80F0, type metadata accessor for TextContentView);
    sub_242C7E000(&qword_27ECF6BD0, &qword_27ECF6BD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF80E0);
  }

  return result;
}

unint64_t sub_242E07C0C()
{
  result = qword_27ECF8110;
  if (!qword_27ECF8110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF6C40);
    sub_242E07EEC(&qword_27ECF8118, &qword_27ECF6C38, &unk_242F30A20, sub_242E07CC4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8110);
  }

  return result;
}

unint64_t sub_242E07CC4()
{
  result = qword_27ECF8120;
  if (!qword_27ECF8120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF7F40);
    sub_242E07D7C();
    sub_242C7E000(&qword_27ECF6B70, &qword_27ECF6960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8120);
  }

  return result;
}

unint64_t sub_242E07D7C()
{
  result = qword_27ECF8128;
  if (!qword_27ECF8128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF8130);
    sub_242E0761C();
    sub_242C7E000(&qword_27ECF7F90, &qword_27ECF7F48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8128);
  }

  return result;
}

unint64_t sub_242E07E34()
{
  result = qword_27ECF8138;
  if (!qword_27ECF8138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF6C50);
    sub_242E07EEC(&qword_27ECF8140, &qword_27ECF6C48, &unk_242F30A30, sub_242E07F70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8138);
  }

  return result;
}

uint64_t sub_242E07EEC(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_242DD1FE0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_242E07F70()
{
  result = qword_27ECF8148;
  if (!qword_27ECF8148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF8058);
    sub_242E08028();
    sub_242C7E000(&qword_27ECF6B70, &qword_27ECF6960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8148);
  }

  return result;
}

unint64_t sub_242E08028()
{
  result = qword_27ECF8150;
  if (!qword_27ECF8150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF8158);
    sub_242E078A0();
    sub_242E07A70(&qword_27ECF80A8, &qword_27ECF8060, &unk_242F488D0, sub_242E07A10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF8150);
  }

  return result;
}

uint64_t sub_242E080E0(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2EC8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for RequestContentModel();
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_242C6D138(a1, &qword_27ECF2EC8);
    sub_242D37BAC(a2, v7);
    sub_242C6D138(a2, &qword_27ECFC780);
    return sub_242C6D138(v7, &qword_27ECF2EC8);
  }

  else
  {
    sub_242E0F138(a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_242CDEC1C(v10, a2, isUniquelyReferenced_nonNull_native);
    result = sub_242C6D138(a2, &qword_27ECFC780);
    *v2 = v15;
  }

  return result;
}

uint64_t sub_242E082AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_242CDF54C(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_242CE519C(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_242D0332C();
        v14 = v16;
      }

      result = sub_242ED0DF0(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_242E083A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x277D84F90];
  sub_242E3BC70(0, v1, 0);
  v2 = v25;
  v4 = a1 + 64;
  result = sub_242F05940();
  v6 = result;
  v7 = 0;
  v22 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v23 = *(a1 + 36);
    v10 = (*(a1 + 48) + 16 * v6);
    v11 = v10[1];
    v24 = *v10;
    v12 = *(v25 + 16);
    v13 = *(v25 + 24);

    if (v12 >= v13 >> 1)
    {
      result = sub_242E3BC70((v13 > 1), v12 + 1, 1);
    }

    *(v25 + 16) = v12 + 1;
    v14 = v25 + 16 * v12;
    *(v14 + 32) = v24;
    *(v14 + 40) = v11;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v4 = a1 + 64;
    v15 = *(a1 + 64 + 8 * v9);
    if ((v15 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v23 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (v6 & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 72 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_242C9E060(v6, v23, 0);
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_242C9E060(v6, v23, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v22)
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

uint64_t sub_242E08670@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t (*a3)(uint64_t, uint64_t)@<X4>, uint64_t a4@<X8>)
{
  v8 = v4;
  sub_242E0EF90(v8, a4, a2);
  result = a3(a4, a1);
  if (v5)
  {
    return sub_242E0EFF8(a4, a2);
  }

  return result;
}

uint64_t sub_242E0870C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (!*(*v3 + 16))
  {
    return a3();
  }

  sub_242CE519C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return a3();
  }
}

uint64_t Overrides.encode(to:)(void *a1)
{
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8160);
  v23 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v5 = &v23 - v4;
  v6 = *v1;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242E0A34C();

  v29 = v5;
  result = sub_242F064C0();
  v8 = 0;
  v10 = v6 + 64;
  v9 = *(v6 + 64);
  v28 = v6;
  v11 = 1 << *(v6 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v9;
  v14 = (v11 + 63) >> 6;
  v24 = v14;
  v25 = v6 + 64;
  while (v13)
  {
LABEL_10:
    v26 = v8;
    v27 = v13;
    v16 = __clz(__rbit64(v13)) | (v8 << 6);
    v17 = (*(v28 + 48) + 16 * v16);
    v19 = *v17;
    v18 = v17[1];
    v20 = *(*(v28 + 56) + 8 * v16);
    v31[0] = v19;
    v31[1] = v18;
    v31[2] = 0;
    LOBYTE(v32) = 1;

    result = sub_242F05E30();
    v35 = *(v20 + 16);
    if (v35)
    {
      v21 = 0;
      v22 = v20 + 32;
      while (v21 < *(v20 + 16))
      {
        sub_242C6CF00(v22, v31);
        __swift_project_boxed_opaque_existential_2Tm(v31, v32);
        __swift_mutable_project_boxed_opaque_existential_1(v33, v34);
        sub_242F05FA0();
        if (v2)
        {
          __swift_destroy_boxed_opaque_existential_2Tm(v31);

          (*(v23 + 8))(v29, v30);
          return __swift_destroy_boxed_opaque_existential_2Tm(v33);
        }

        ++v21;
        result = __swift_destroy_boxed_opaque_existential_2Tm(v31);
        v22 += 40;
        if (v35 == v21)
        {
          goto LABEL_4;
        }
      }

      __break(1u);
      goto LABEL_19;
    }

LABEL_4:
    v13 = (v27 - 1) & v27;

    result = __swift_destroy_boxed_opaque_existential_2Tm(v33);
    v14 = v24;
    v10 = v25;
    v8 = v26;
  }

  while (1)
  {
    v15 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v15 >= v14)
    {

      return (*(v23 + 8))(v29, v30);
    }

    v13 = *(v10 + 8 * v15);
    ++v8;
    if (v13)
    {
      v8 = v15;
      goto LABEL_10;
    }
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t Overrides.init(from:)@<X0>(void *a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v90 = a3;
  v87 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8170);
  v89 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v76 - v8;
  v10 = sub_242CE7A40(MEMORY[0x277D84F90]);
  v11 = a1;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242E0A34C();
  sub_242F06480();
  if (v4)
  {

    v12 = a1;
    return __swift_destroy_boxed_opaque_existential_2Tm(v12);
  }

  v86 = v10;
  v13 = v7;
  v88 = v9;
  v14 = MEMORY[0x277D84F90];
  v15 = sub_242CE7A40(MEMORY[0x277D84F90]);
  v16 = sub_242F03920();
  if (sub_242F03920() < 0)
  {
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v17 = sub_242F03920();
  if (v16 < 0 || v17 < v16)
  {
    goto LABEL_54;
  }

  v85 = 0;
  v81 = v11;
  v82 = v13;
  v83 = v15;
  if (v16)
  {
    v95[0] = v14;
    sub_242E3BF30(0, v16, 0);
    v18 = 0;
    v19 = v95[0];
    while (1)
    {
      if (v18 >= sub_242F03920())
      {
        __break(1u);
        goto LABEL_53;
      }

      v20 = *a2;
      v21 = sub_242F038D0();
      if (v20 > 0x7FF)
      {
        if (v21 - 2048 >= 0xFFFFFFFFFFFFF801)
        {
          goto LABEL_16;
        }
      }

      else if (v21 >= 0x800)
      {
        if (v20)
        {
LABEL_16:
          sub_242F038A0();
          v22 = sub_242F05080();
          goto LABEL_17;
        }
      }

      else if (v20 != v21)
      {
        goto LABEL_16;
      }

      sub_242F03890();
      sub_242F03880();
      v22 = sub_242F03850();
LABEL_17:
      v24 = v22;
      v25 = v23;
      v95[0] = v19;
      v27 = *(v19 + 16);
      v26 = *(v19 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_242E3BF30((v26 > 1), v27 + 1, 1);
        v19 = v95[0];
      }

      *(v19 + 16) = v27 + 1;
      v28 = (v19 + 32 * v27);
      v28[4] = v24;
      v28[5] = v25;
      v28[6] = v18;
      v28[7] = a2;
      if (v16 == ++v18)
      {
        v29 = v82;
        v30 = v89;
        v14 = MEMORY[0x277D84F90];
        goto LABEL_23;
      }
    }
  }

  if (*(v14 + 16))
  {
    v29 = v13;
    v30 = v89;
LABEL_23:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2B18);
    v31 = sub_242F05CB0();
  }

  else
  {
    v31 = MEMORY[0x277D84F98];
    v29 = v13;
    v30 = v89;
  }

  v95[0] = v31;

  v33 = v85;
  sub_242E0D7EC(v32, 1, v95);
  if (v33)
  {
LABEL_56:
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v86 = v95[0];
  v34 = sub_242F05E10();
  v35 = v34;
  v36 = *(v34 + 16);
  if (!v36)
  {
    v67 = v87;
    goto LABEL_46;
  }

  v37 = 0;
  v38 = v34 + 32;
  v79 = v34;
  v78 = v36;
  v77 = v34 + 32;
  while (2)
  {
    if (v37 >= *(v35 + 16))
    {
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v85 = v37;
    v39 = v38 + 32 * v37;
    v41 = *v39;
    v40 = *(v39 + 8);
    v42 = *(v39 + 24);
    v43 = *(v39 + 16);
    v96 = v14;
    v80 = v41;
    v91 = v41;
    v92 = v40;
    v93 = v43;
    v94 = v42;
    v84 = v40;

    sub_242F05D00();
    v44 = v86;
    if (!*(v86 + 16) || (v45 = v84, , v46 = sub_242CE519C(v80, v45), v48 = v47, , (v48 & 1) == 0))
    {

      sub_242E0DD68();
      swift_allocError();
      v73 = v84;
      *v74 = v80;
      *(v74 + 8) = v73;
      *(v74 + 16) = 4;
      swift_willThrow();
      (*(v30 + 8))(v88, v29);
      __swift_destroy_boxed_opaque_existential_2Tm(v95);
      goto LABEL_47;
    }

    v49 = v81;
    ++v85;
    v50 = (*(v44 + 56) + 16 * v46);
    v52 = *v50;
    for (i = v50[1]; ; sub_242E09320(v60, v95, &v96, v52, i, a2, v60, v56, v75, v63))
    {
      swift_beginAccess();
      __swift_project_boxed_opaque_existential_2Tm(v95, v95[3]);
      v53 = sub_242F05F90();
      swift_endAccess();
      if (v53)
      {
        break;
      }

      v54 = *i;
      v55 = sub_242F038D0();
      if (v54 > 0x7FF)
      {
        v56 = v90;
        if (v55 - 2048 < 0xFFFFFFFFFFFFF801)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v56 = v90;
        if (v55 >= 0x800)
        {
          if (!v54)
          {
LABEL_37:
            sub_242F03890();
            sub_242F03880();
            v57 = sub_242F03860();
            goto LABEL_41;
          }
        }

        else if (v54 == v55)
        {
          goto LABEL_37;
        }
      }

      v58 = (sub_242F038A0() + 4);
      v59 = *v58;
      v57 = sub_242F038B0();
      if (!v57)
      {
        v57 = MEMORY[0x245D24E40](v58 + v59, i);
      }

LABEL_41:
      v60 = dynamic_cast_existential_3_conditional(v57);
      if (!v60)
      {

        v68 = sub_242F038E0();
        v70 = v69;
        sub_242E0DD68();
        swift_allocError();
        *v71 = v68;
        *(v71 + 8) = v70;
        *(v71 + 16) = 0;
        swift_willThrow();
        (*(v89 + 8))(v88, v82);
        __swift_destroy_boxed_opaque_existential_2Tm(v95);
        v12 = v49;
        return __swift_destroy_boxed_opaque_existential_2Tm(v12);
      }

      *&v75 = v61;
      *(&v75 + 1) = v62;
    }

    swift_beginAccess();
    v64 = v96;
    v65 = v83;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v91 = v65;
    sub_242CDF54C(v64, v80, v84, isUniquelyReferenced_nonNull_native);

    v83 = v91;
    __swift_destroy_boxed_opaque_existential_2Tm(v95);
    v37 = v85;
    v30 = v89;
    v29 = v82;
    v67 = v87;
    v14 = MEMORY[0x277D84F90];
    v35 = v79;
    v38 = v77;
    if (v85 != v78)
    {
      continue;
    }

    break;
  }

LABEL_46:
  (*(v30 + 8))(v88, v29);

  *v67 = v83;
LABEL_47:
  v12 = v81;
  return __swift_destroy_boxed_opaque_existential_2Tm(v12);
}