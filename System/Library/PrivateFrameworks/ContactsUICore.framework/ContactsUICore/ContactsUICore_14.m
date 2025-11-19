uint64_t sub_1A33BE320(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1A33BEEC8();
  result = MEMORY[0x1A58EED90](v2, &type metadata for VisualIdentitySuggestionContext.Change, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_1A34643EC(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1A33BE394(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1A58EED90](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1A34647C8(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1A33BE42C(uint64_t a1)
{
  v2 = sub_1A34CB1C0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA0B8);
    v9 = sub_1A34CDA80();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1A33BF05C(&qword_1EB0CA0C0, MEMORY[0x1E697C4F8]);
      v16 = sub_1A34CCFD0();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_1A33BF05C(&qword_1EB0CA0C8, MEMORY[0x1E697C4F8]);
          v23 = sub_1A34CD040();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1A33BE74C(uint64_t a1)
{
  v2 = sub_1A34C9930();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA078);
    v9 = sub_1A34CDA80();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1A33BF05C(&qword_1EB0CA080, MEMORY[0x1E6969AD0]);
      v16 = sub_1A34CCFD0();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_1A33BF05C(&qword_1EB0CA088, MEMORY[0x1E6969AD0]);
          v23 = sub_1A34CD040();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1A33BEA6C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA090);
    v3 = sub_1A34CDA80();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_1A34CDF20();

      sub_1A34CD1C0();
      result = sub_1A34CDF70();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_1A34CDE30();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

unint64_t sub_1A33BEBF8(unint64_t result, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v4 = result;
  v5 = result >> 62;
  v24 = result;
  if (result >> 62)
  {
    v9 = a2;
    result = sub_1A34CD9B0();
    a2 = v9;
    v4 = v24;
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(a2);
      result = sub_1A34CDA80();
      v6 = result;
      v7 = v4 & 0xFFFFFFFFFFFFFF8;
      if (!v5)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_1A34CD9B0();
      v8 = result;
      if (!result)
      {
        return v6;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v6 = MEMORY[0x1E69E7CD0];
  v7 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v5)
  {
    goto LABEL_8;
  }

LABEL_4:
  v8 = *(v7 + 16);
  if (!v8)
  {
    return v6;
  }

LABEL_9:
  v10 = 0;
  v11 = v6 + 56;
  v25 = v4 & 0xC000000000000001;
  v22 = v4 + 32;
  v23 = v4 & 0xFFFFFFFFFFFFFF8;
  while (v25)
  {
    result = MEMORY[0x1A58EF310](v10, v4);
    v12 = result;
    v13 = __OFADD__(v10++, 1);
    if (v13)
    {
      goto LABEL_26;
    }

LABEL_18:
    __swift_instantiateConcreteTypeFromMangledNameV2(a4);
    result = sub_1A34CCFD0();
    v14 = -1 << *(v6 + 32);
    v15 = result & ~v14;
    v16 = v15 >> 6;
    v17 = *(v11 + 8 * (v15 >> 6));
    v18 = 1 << v15;
    if (((1 << v15) & v17) != 0)
    {
      v19 = ~v14;
      do
      {
        result = sub_1A34CD040();
        if (result)
        {

          v4 = v24;
          goto LABEL_11;
        }

        v15 = (v15 + 1) & v19;
        v16 = v15 >> 6;
        v17 = *(v11 + 8 * (v15 >> 6));
        v18 = 1 << v15;
      }

      while (((1 << v15) & v17) != 0);
      v4 = v24;
    }

    *(v11 + 8 * v16) = v18 | v17;
    *(*(v6 + 48) + 8 * v15) = v12;
    v20 = *(v6 + 16);
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (v13)
    {
      goto LABEL_27;
    }

    *(v6 + 16) = v21;
LABEL_11:
    if (v10 == v8)
    {
      return v6;
    }
  }

  if (v10 >= *(v23 + 16))
  {
    goto LABEL_28;
  }

  v12 = *(v22 + 8 * v10);
  result = sub_1A34C9010();
  v13 = __OFADD__(v10++, 1);
  if (!v13)
  {
    goto LABEL_18;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1A33BEE48@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1A33BC398(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t keypath_getTm_0@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X4>, uint64_t *a3@<X8>)
{
  v5 = a1(0);
  result = sub_1A3463D24(v5, a2);
  *a3 = result;
  a3[1] = v7;
  a3[2] = v8;
  return result;
}

unint64_t sub_1A33BEEC8()
{
  result = qword_1EB0C16E0;
  if (!qword_1EB0C16E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C16E0);
  }

  return result;
}

uint64_t sub_1A33BEF1C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8) >> 3;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1A33BEF6C(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 120) = 1;
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
      *a1 = 0;
      *(a1 + 8) = 8 * -a2;
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0u;
      *(a1 + 112) = 0;
      return result;
    }

    *(a1 + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A33BEFF0(uint64_t result, uint64_t a2)
{
  if (a2 < 4)
  {
    v2 = *(result + 32);
    v3 = *(result + 96) & 0xC000000000000007 | (a2 << 59);
    *(result + 8) &= 7uLL;
    *(result + 32) = v2;
    *(result + 96) = v3;
  }

  else
  {
    *result = (a2 - 4);
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 88) = 0;
    *(result + 96) = 0x2000000000000000;
    *(result + 104) = 0;
    *(result + 112) = 0;
  }

  return result;
}

uint64_t sub_1A33BF05C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for Placeholder()
{
  result = qword_1ED854AD8;
  if (!qword_1ED854AD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A33BF118()
{
  sub_1A31EF4D8();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1A33BF1A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + *(a1 + 20));
  v5 = [objc_opt_self() systemGray6Color];
  result = sub_1A34CC440();
  *a2 = v4;
  *(a2 + 8) = result;
  return result;
}

unint64_t sub_1A33BF1FC()
{
  result = qword_1ED854EA0;
  if (!qword_1ED854EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C9000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED854EA0);
  }

  return result;
}

void *sub_1A33BF260@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1A34CB0B0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A328D790(v2, v10, &unk_1EB0C5650);
  if (v10[264] == 1)
  {
    return memcpy(a1, v10, 0x108uLL);
  }

  sub_1A34CD650();
  v9 = sub_1A34CBA30();
  sub_1A34CA210();

  sub_1A34CB0A0();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t ContactCardInlineActions.init(viewModel:styleProvider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA0D8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for ContactCardStyleProvider.InlineActions();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  *a3 = swift_getKeyPath();
  *(a3 + 264) = 0;
  v13 = type metadata accessor for ContactCardInlineActions();
  *(a3 + *(v13 + 24)) = a1;
  sub_1A328D790(a2, v8, &qword_1EB0CA0D8);
  v14 = *(v10 + 48);
  if (v14(v8, 1, v9) == 1)
  {
    *v12 = sub_1A34CC500();
    v15 = [objc_opt_self() currentDevice];
    v16 = [v15 userInterfaceIdiom];

    v17 = 64.0;
    if (v16 == 1)
    {
      v17 = 48.0;
    }

    v12[1] = v17;
    v12[2] = 12.0;
    sub_1A33C20FC();
    sub_1A34CCC50();
    sub_1A3288FDC(a2, &qword_1EB0CA0D8);
    if (v14(v8, 1, v9) != 1)
    {
      sub_1A3288FDC(v8, &qword_1EB0CA0D8);
    }
  }

  else
  {
    sub_1A3288FDC(a2, &qword_1EB0CA0D8);
    sub_1A33C31D4(v8, v12, type metadata accessor for ContactCardStyleProvider.InlineActions);
  }

  return sub_1A33C31D4(v12, a3 + *(v13 + 20), type metadata accessor for ContactCardStyleProvider.InlineActions);
}

uint64_t type metadata accessor for ContactCardInlineActions()
{
  result = qword_1EB0C1E78;
  if (!qword_1EB0C1E78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ContactCardInlineActions.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v23[1] = a1;
  v3 = type metadata accessor for ContactCardInlineActions();
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA0E0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA0E8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v23 - v11;
  v13 = *(v2 + *(v4 + 28) + 16);
  *v9 = sub_1A34CB110();
  *(v9 + 1) = v13;
  v9[16] = 0;
  v23[0] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA0F0) + 44);
  v14 = *(v2 + *(v4 + 32));
  swift_getKeyPath();
  *&v24 = v14;
  sub_1A33C3088(&unk_1EB0C2198, type metadata accessor for InlineActionsViewModel);
  sub_1A34C99A0();

  v15 = OBJC_IVAR____TtC14ContactsUICore22InlineActionsViewModel__actionItems;
  swift_beginAccess();
  *&v24 = *(v14 + v15);
  sub_1A33C316C(v2, v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ContactCardInlineActions);
  v16 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v17 = swift_allocObject();
  sub_1A33C31D4(v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for ContactCardInlineActions);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA0F8);
  type metadata accessor for CNUIContactCardActionType(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA100);
  sub_1A3284D0C(&qword_1EB0C0280, &qword_1EB0CA0F8);
  sub_1A33C21D0();
  sub_1A33C2C50();
  sub_1A34CC9D0();
  sub_1A34CCC80();
  sub_1A34CADA0();
  sub_1A3209C48(v9, v12);
  v18 = &v12[*(v10 + 36)];
  v19 = v29;
  *(v18 + 4) = v28;
  *(v18 + 5) = v19;
  *(v18 + 6) = v30;
  v20 = v25;
  *v18 = v24;
  *(v18 + 1) = v20;
  v21 = v27;
  *(v18 + 2) = v26;
  *(v18 + 3) = v21;
  sub_1A33C2CA4();
  sub_1A34CC1F0();
  return sub_1A3288FDC(v12, &qword_1EB0CA0E8);
}

uint64_t sub_1A33BFB00@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v67 = a2;
  v73 = a3;
  v4 = sub_1A34CAD20();
  v65 = *(v4 - 8);
  v66 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v64 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1A34CAAE0();
  v55 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v53 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA168);
  MEMORY[0x1EEE9AC00](v54);
  v8 = &v53 - v7;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA160);
  v58 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v56 = &v53 - v9;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA190);
  v60 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v57 = &v53 - v10;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA158);
  MEMORY[0x1EEE9AC00](v72);
  v63 = &v53 - v11;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA198);
  MEMORY[0x1EEE9AC00](v69);
  v71 = &v53 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA110);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v53 - v14;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA108);
  MEMORY[0x1EEE9AC00](v68);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v53 - v19;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA1A0);
  MEMORY[0x1EEE9AC00](v70);
  v23 = &v53 - v22;
  v24 = *a1;
  v25 = a1[1];
  v26 = a1[2];
  if (*(v25 + 16))
  {
    sub_1A33C0DAC(v67, *a1, a1[1], a1[2], a1[3], a1[1], v8);
    v27 = v53;
    sub_1A34CAAD0();
    v28 = sub_1A33C2A3C();
    v29 = sub_1A33C3088(&qword_1EB0C0FD0, MEMORY[0x1E697C150]);
    v30 = v56;
    v31 = v54;
    v32 = v59;
    sub_1A34CC410();
    (*(v55 + 8))(v27, v32);
    sub_1A3288FDC(v8, &qword_1EB0CA168);
    v33 = v64;
    sub_1A34CAD10();
    v74 = v31;
    v75 = v32;
    v76 = v28;
    v77 = v29;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v35 = sub_1A33C3088(&qword_1EB0C0998, MEMORY[0x1E697C248]);
    v36 = v57;
    v37 = v61;
    v38 = v66;
    sub_1A34CBEA0();
    (*(v65 + 8))(v33, v38);
    (*(v58 + 8))(v30, v37);
    v74 = v37;
    v75 = v38;
    v76 = OpaqueTypeConformance2;
    v77 = v35;
    swift_getOpaqueTypeConformance2();
    v39 = v62;
    v40 = v63;
    sub_1A34CC1F0();
    (*(v60 + 8))(v36, v39);
    sub_1A328D790(v40, v71, &qword_1EB0CA158);
    swift_storeEnumTagMultiPayload();
    v41 = sub_1A33C22FC(&qword_1EB0C0A00, &qword_1EB0CA108, &unk_1A34EF750, sub_1A33C22CC);
    v74 = v68;
    v75 = v41;
    swift_getOpaqueTypeConformance2();
    sub_1A33C2868();
    sub_1A34CB3E0();
    return sub_1A3288FDC(v40, &qword_1EB0CA158);
  }

  else
  {
    v43 = *a1;
    v44 = a1[1];
    v45 = a1[2];
    v65 = a1[3];
    v66 = v21;
    sub_1A33C04B0(v43, v44, v45, v65, v15);
    v74 = sub_1A33C0D04(v24);
    v75 = v46;
    sub_1A33C22CC();
    sub_1A328A95C();
    sub_1A34CC0A0();

    sub_1A3288FDC(v15, &qword_1EB0CA110);
    v47 = v68;
    sub_1A34CAC10();
    sub_1A3288FDC(v17, &qword_1EB0CA108);
    v48 = swift_allocObject();
    v48[2] = v24;
    v48[3] = v25;
    v49 = v65;
    v48[4] = v26;
    v48[5] = v49;

    sub_1A321418C(v26);
    v50 = sub_1A33C22FC(&qword_1EB0C0A00, &qword_1EB0CA108, &unk_1A34EF750, sub_1A33C22CC);
    sub_1A34CBF50();

    sub_1A3288FDC(v20, &qword_1EB0CA108);
    v51 = v66;
    v52 = v70;
    (*(v66 + 16))(v71, v23, v70);
    swift_storeEnumTagMultiPayload();
    v74 = v47;
    v75 = v50;
    swift_getOpaqueTypeConformance2();
    sub_1A33C2868();
    sub_1A34CB3E0();
    return (*(v51 + 8))(v23, v52);
  }
}

uint64_t sub_1A33C04B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v68 = a3;
  v69 = a4;
  v67 = a2;
  v72 = a5;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C91D8);
  MEMORY[0x1EEE9AC00](v65);
  v9 = v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v62 = v61 - v11;
  v73 = sub_1A34CAAF0();
  v12 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v74 = v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v61 - v15;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C91E0);
  MEMORY[0x1EEE9AC00](v64);
  v63 = v61 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA128);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v61 - v19;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA118);
  MEMORY[0x1EEE9AC00](v71);
  v70 = v61 - v21;
  v22 = v6;
  v66 = a1;
  sub_1A33C1C0C();
  if (qword_1EB0C1DD0 != -1)
  {
    swift_once();
  }

  v23 = sub_1A34CC670();
  v24 = __swift_project_value_buffer(v23, qword_1EB0ED278);
  KeyPath = swift_getKeyPath();
  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA138) + 36);
  v75 = v20;
  v27 = &v20[v26];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C54D8);
  (*(*(v23 - 8) + 16))(v27 + *(v28 + 28), v24, v23);
  *v27 = KeyPath;
  if (qword_1EB0C1DD8 != -1)
  {
    swift_once();
  }

  v29 = qword_1EB0ED290;
  v30 = swift_getKeyPath();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA130);
  v32 = v75;
  v33 = &v75[*(v31 + 36)];
  *v33 = v30;
  v33[1] = v29;
  type metadata accessor for ContactCardInlineActions();
  v34 = v22;
  sub_1A34C9010();
  sub_1A34CCC80();
  sub_1A34CA760();
  v35 = v18;
  v36 = &v32[*(v18 + 36)];
  v37 = v84[4];
  *v36 = v84[3];
  *(v36 + 1) = v37;
  *(v36 + 2) = v84[5];
  v38 = v12[13];
  v39 = v16;
  v40 = v16;
  v41 = v73;
  v38(v40, *MEMORY[0x1E697E6F8], v73);
  v42 = v74;
  v38(v74, *MEMORY[0x1E697E6C0], v41);
  sub_1A33C3088(&qword_1EB0C0FC8, MEMORY[0x1E697E730]);
  result = sub_1A34CD020();
  if (result)
  {
    v44 = v12[4];
    v45 = v39;
    v46 = v62;
    v44(v62, v45, v41);
    v61[1] = v35;
    v47 = v65;
    v44((v46 + *(v65 + 48)), v42, v41);
    sub_1A328D790(v46, v9, &qword_1EB0C91D8);
    v74 = v34;
    v61[0] = *(v47 + 48);
    v48 = v63;
    v44(v63, v9, v41);
    v49 = v12[1];
    v49(&v9[v61[0]], v41);
    sub_1A33C2E6C(v46, v9);
    v44((v48 + *(v64 + 36)), &v9[*(v47 + 48)], v41);
    v49(v9, v41);
    sub_1A33C25BC();
    sub_1A3284D0C(&qword_1EB0C02D8, &qword_1EB0C91E0);
    v50 = v70;
    v51 = v75;
    sub_1A34CC010();
    sub_1A3288FDC(v48, &qword_1EB0C91E0);
    sub_1A3288FDC(v51, &qword_1EB0CA128);
    LOBYTE(v77) = sub_1A33C1E44(v66, v67, v68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA120);
    sub_1A33C2EDC();
    sub_1A34CCC50();
    sub_1A33BF260(&v77);
    sub_1A31EE4BC(v84, &v85);
    sub_1A3292144(&v77);
    v52 = __swift_project_boxed_opaque_existential_1(&v85, *(&v86 + 1));
    v53 = MEMORY[0x1EEE9AC00](v52);
    (*(v55 + 16))(v61 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0), v53);
    v56 = sub_1A34CA770();
    __swift_destroy_boxed_opaque_existential_0(&v85);
    v57 = sub_1A34CCC80();
    *&v85 = v56;
    WORD4(v85) = 256;
    LOBYTE(v86) = 1;
    *(&v86 + 1) = 0xD000000000000013;
    *&v87 = 0x80000001A3510A00;
    *(&v87 + 1) = v57;
    v88 = v58;
    v59 = v50 + *(v71 + 36);
    v60 = v87;
    *(v59 + 16) = v86;
    *(v59 + 32) = v60;
    *v59 = v85;
    *(v59 + 48) = v58;
    v77 = v56;
    v78 = 256;
    v79 = 1;
    v80 = 0xD000000000000013;
    v81 = 0x80000001A3510A00;
    v82 = v57;
    v83 = v58;
    sub_1A328D790(&v85, &v76, &qword_1EB0CA150);
    sub_1A3288FDC(&v77, &qword_1EB0CA150);
    sub_1A33C23B0();
    sub_1A34CC1F0();
    return sub_1A3288FDC(v50, &qword_1EB0CA118);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A33C0D04(uint64_t a1)
{
  result = 0;
  v3 = 0xD000000000000029;
  if (a1 > 16)
  {
    if (a1 == 17)
    {
      v4 = "VIDEOCALL_ACTION_TYPE_ACCESSIBILITY_LABEL";
LABEL_10:
      v5 = (v4 - 32);
      return sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, v3, v5 | 0x8000000000000000);
    }

    if (a1 != 18)
    {
      return result;
    }

    v5 = "InlineActionButton";
    v3 = 0xD000000000000024;
  }

  else
  {
    if (a1 != 15)
    {
      if (a1 != 16)
      {
        return result;
      }

      v4 = "AUDIOCALL_ACTION_TYPE_ACCESSIBILITY_LABEL";
      goto LABEL_10;
    }

    v5 = "_TYPE_ACCESSIBILITY_LABEL";
    v3 = 0xD000000000000027;
  }

  return sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, v3, v5 | 0x8000000000000000);
}

uint64_t sub_1A33C0DAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v48 = a6;
  v50 = a5;
  v52 = a7;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA1B0);
  MEMORY[0x1EEE9AC00](v51);
  v49 = v46 - v11;
  v12 = type metadata accessor for ContactCardInlineActions();
  v13 = v12 - 8;
  v47 = *(v12 - 8);
  v14 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA180);
  v53 = *(v16 - 8);
  v54 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v46 - v17;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA178);
  MEMORY[0x1EEE9AC00](v57);
  v55 = v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v56 = v46 - v21;
  v22 = *(a1 + *(v13 + 32));
  swift_getKeyPath();
  v60 = v22;
  sub_1A33C3088(&unk_1EB0C2198, type metadata accessor for InlineActionsViewModel);
  sub_1A34C99A0();

  v23 = OBJC_IVAR____TtC14ContactsUICore22InlineActionsViewModel__defaultActions;
  v24 = swift_beginAccess();
  if (*(*(v22 + v23) + 16) && (v24 = sub_1A33E1F70(a2), (v25 & 1) != 0) || *(a3 + 16) <= 1uLL)
  {
    v46[1] = v46;
    MEMORY[0x1EEE9AC00](v24);
    v46[0] = &v46[-4];
    v45 = a1;
    MEMORY[0x1EEE9AC00](v30);
    v46[-6] = a1;
    v46[-5] = a2;
    v46[-4] = a3;
    v46[-3] = a4;
    v31 = a4;
    v32 = v50;
    v44 = v50;
    sub_1A33C316C(a1, v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ContactCardInlineActions);
    v33 = (*(v47 + 80) + 16) & ~*(v47 + 80);
    v48 = a1;
    v34 = v18;
    v35 = (v14 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
    v36 = swift_allocObject();
    sub_1A33C31D4(v15, v36 + v33, type metadata accessor for ContactCardInlineActions);
    v37 = (v36 + v35);
    *v37 = a2;
    v37[1] = a3;
    v37[2] = v31;
    v37[3] = v32;

    sub_1A321418C(v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA110);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA1B8);
    v38 = sub_1A33C22CC();
    v39 = sub_1A33C2FF8();
    v44 = v38;
    v45 = v39;
    sub_1A34CBC60();
    v58 = sub_1A33C0D04(a2);
    v59 = v40;
    sub_1A3284D0C(&unk_1EB0C0608, &qword_1EB0CA180);
    sub_1A328A95C();
    v41 = v54;
    v29 = v55;
    sub_1A34CC0A0();

    (*(v53 + 8))(v34, v41);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v24);
    v45 = a1;
    MEMORY[0x1EEE9AC00](v26);
    v46[-6] = a1;
    v46[-5] = a2;
    v46[-4] = a3;
    v46[-3] = a4;
    v44 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA110);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA1B8);
    sub_1A33C22CC();
    sub_1A33C2FF8();
    sub_1A34CBC70();
    v58 = sub_1A33C0D04(a2);
    v59 = v27;
    sub_1A3284D0C(&unk_1EB0C0608, &qword_1EB0CA180);
    sub_1A328A95C();
    v28 = v54;
    v29 = v55;
    sub_1A34CC0A0();

    (*(v53 + 8))(v18, v28);
  }

  v42 = v56;
  sub_1A34CAC10();
  sub_1A3288FDC(v29, &qword_1EB0CA178);
  sub_1A328D790(v42, v49, &qword_1EB0CA178);
  swift_storeEnumTagMultiPayload();
  sub_1A33C2B68();
  sub_1A34CB3E0();
  return sub_1A3288FDC(v42, &qword_1EB0CA178);
}

uint64_t sub_1A33C150C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for ContactCardActionRow();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ContactCardInlineActions();
  sub_1A33C15B0(a3, v6);
  sub_1A33EB3B0(v6);
  return sub_1A32D3FF8(v6);
}

void sub_1A33C15B0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for ContactCardActionRow();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v31 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v31 - v13;
  v15 = *(a1 + 16);
  if (v15)
  {
    v16 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    sub_1A33C316C(v16, &v31 - v13, type metadata accessor for ContactCardActionRow);
    if (v14[8])
    {
      v17 = v14;
    }

    else
    {
      v32 = v11;
      v33 = a2;
      v18 = *v14;
      v19 = *(v2 + *(type metadata accessor for ContactCardInlineActions() + 24));
      swift_getKeyPath();
      v34 = v19;
      sub_1A33C3088(&unk_1EB0C2198, type metadata accessor for InlineActionsViewModel);
      sub_1A34C99A0();

      v20 = OBJC_IVAR____TtC14ContactsUICore22InlineActionsViewModel__defaultActions;
      swift_beginAccess();
      v21 = *(v19 + v20);
      if (*(v21 + 16))
      {
        v22 = sub_1A33E1F70(v18);
        if (v23)
        {
          v24 = *(v6 + 72);
          v25 = *(*(v21 + 56) + 8 * v22);
          do
          {
            sub_1A33C316C(v16, v8, type metadata accessor for ContactCardActionRow);
            v26 = *&v8[*(v5 + 64)];
            if (v26)
            {
              sub_1A33C323C();
              v27 = v25;
              v28 = v26;
              v29 = sub_1A34CD830();

              if (v29)
              {

                v30 = v32;
                sub_1A33C31D4(v8, v32, type metadata accessor for ContactCardActionRow);
                sub_1A32D3FF8(v14);
                v17 = v30;
                goto LABEL_13;
              }
            }

            sub_1A32D3FF8(v8);
            v16 += v24;
            --v15;
          }

          while (v15);
        }
      }

      v17 = v14;
LABEL_13:
      a2 = v33;
    }

    sub_1A33C31D4(v17, a2, type metadata accessor for ContactCardActionRow);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1A33C18A4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C9070);
  sub_1A3382240();
  return sub_1A34CCA00();
}

uint64_t sub_1A33C1910(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactCardInlineActions();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = *(a1 + 16);
  v11[0] = 0;
  v11[1] = v7;
  swift_getKeyPath();
  sub_1A33C316C(a2, v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ContactCardInlineActions);
  v8 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  sub_1A33C31D4(v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for ContactCardInlineActions);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8EA0);
  type metadata accessor for ContactCardActionMenu();
  sub_1A32D3A44();
  sub_1A33C3088(&qword_1EB0C22C8, type metadata accessor for ContactCardActionMenu);
  return sub_1A34CC9C0();
}

unint64_t *sub_1A33C1AF0@<X0>(unint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v4 >= *(a2 + 16))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v8 = *(type metadata accessor for ContactCardActionRow() - 8);
  sub_1A33C316C(a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v4, a4, type metadata accessor for ContactCardActionRow);
  v10 = *(a3 + *(type metadata accessor for ContactCardInlineActions() + 24));
  v9 = (a4 + *(type metadata accessor for ContactCardActionMenu() + 20));
  v9[3] = type metadata accessor for InlineActionsViewModel();
  v9[4] = &off_1F1626358;
  *v9 = v10;

  return v10;
}

uint64_t sub_1A33C1C0C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA1A8);
  MEMORY[0x1EEE9AC00](v0);
  v2 = v7 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5B00);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v7 - v4;
  v7[1] = sub_1A34CC5E0();
  sub_1A34CC1F0();

  sub_1A328D790(v5, v2, &qword_1EB0C5B00);
  swift_storeEnumTagMultiPayload();
  sub_1A32A4B80();
  sub_1A34CB3E0();
  return sub_1A3288FDC(v5, &qword_1EB0C5B00);
}

BOOL sub_1A33C1E44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + *(type metadata accessor for ContactCardInlineActions() + 24));
  swift_getKeyPath();
  sub_1A33C3088(&unk_1EB0C2198, type metadata accessor for InlineActionsViewModel);
  sub_1A34C99A0();

  v8 = *(a2 + 16) | a3;
  if (*(v7 + OBJC_IVAR____TtC14ContactsUICore22InlineActionsViewModel__isBlocked) != 1)
  {
    return v8 != 0;
  }

  if (v8)
  {
    sub_1A33F1340();
    v10 = *(v9 + 16);
    v11 = 32;
    while (v10)
    {
      v12 = *(v9 + v11);
      v11 += 8;
      --v10;
      if (v12 == a1)
      {

        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1A33C1F68@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A33C3088(&unk_1EB0C2198, type metadata accessor for InlineActionsViewModel);
  sub_1A34C99A0();

  v4 = OBJC_IVAR____TtC14ContactsUICore22InlineActionsViewModel__actionItems;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1A33C2030()
{
  swift_getKeyPath();
  sub_1A33C3088(&unk_1EB0C2198, type metadata accessor for InlineActionsViewModel);
  sub_1A34C9990();
}

unint64_t sub_1A33C20FC()
{
  result = qword_1EB0C27A0;
  if (!qword_1EB0C27A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C27A0);
  }

  return result;
}

uint64_t sub_1A33C2150@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ContactCardInlineActions() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1A33BFB00(a1, v6, a2);
}

unint64_t sub_1A33C21D0()
{
  result = qword_1EB0C0858;
  if (!qword_1EB0C0858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA100);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA108);
    sub_1A33C22FC(&qword_1EB0C0A00, &qword_1EB0CA108, &unk_1A34EF750, sub_1A33C22CC);
    swift_getOpaqueTypeConformance2();
    sub_1A33C2868();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0858);
  }

  return result;
}

uint64_t sub_1A33C22FC(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_1A33C3088(&qword_1ED8544B0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A33C23B0()
{
  result = qword_1EB0C0BA0;
  if (!qword_1EB0C0BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA118);
    sub_1A33C2468();
    sub_1A3284D0C(&qword_1EB0C0918, &qword_1EB0CA150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0BA0);
  }

  return result;
}

unint64_t sub_1A33C2468()
{
  result = qword_1EB0C0DE0;
  if (!qword_1EB0C0DE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA120);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA128);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C91E0);
    sub_1A33C25BC();
    sub_1A3284D0C(&qword_1EB0C02D8, &qword_1EB0C91E0);
    swift_getOpaqueTypeConformance2();
    sub_1A3284D0C(&qword_1ED8539D8, &unk_1EB0C93D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0DE0);
  }

  return result;
}

unint64_t sub_1A33C25BC()
{
  result = qword_1EB0C0A80;
  if (!qword_1EB0C0A80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA128);
    sub_1A33C2648();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0A80);
  }

  return result;
}

unint64_t sub_1A33C2648()
{
  result = qword_1EB0C0B68;
  if (!qword_1EB0C0B68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA130);
    sub_1A33C2700();
    sub_1A3284D0C(&unk_1ED8534A0, &unk_1EB0C8FE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0B68);
  }

  return result;
}

unint64_t sub_1A33C2700()
{
  result = qword_1EB0C0D50;
  if (!qword_1EB0C0D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA138);
    sub_1A33C27B8();
    sub_1A3284D0C(&qword_1EB0C0680, &qword_1EB0C54D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0D50);
  }

  return result;
}

unint64_t sub_1A33C27B8()
{
  result = qword_1EB0C05C8;
  if (!qword_1EB0C05C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA140);
    sub_1A33C2AEC(&qword_1EB0C08A8, &qword_1EB0CA148, &unk_1A34EF798, sub_1A32A4B80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C05C8);
  }

  return result;
}

unint64_t sub_1A33C2868()
{
  result = qword_1EB0C0E00;
  if (!qword_1EB0C0E00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA158);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA160);
    sub_1A34CAD20();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA168);
    sub_1A34CAAE0();
    sub_1A33C2A3C();
    sub_1A33C3088(&qword_1EB0C0FD0, MEMORY[0x1E697C150]);
    swift_getOpaqueTypeConformance2();
    sub_1A33C3088(&qword_1EB0C0998, MEMORY[0x1E697C248]);
    swift_getOpaqueTypeConformance2();
    sub_1A33C3088(&qword_1ED8544B0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0E00);
  }

  return result;
}

unint64_t sub_1A33C2A3C()
{
  result = qword_1EB0C05D0;
  if (!qword_1EB0C05D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA168);
    sub_1A33C2AEC(&qword_1EB0C08C0, &qword_1EB0CA170, &unk_1A34EF7C0, sub_1A33C2B68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C05D0);
  }

  return result;
}

uint64_t sub_1A33C2AEC(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_1A33C2B68()
{
  result = qword_1EB0C0E40;
  if (!qword_1EB0C0E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA178);
    sub_1A3284D0C(&unk_1EB0C0608, &qword_1EB0CA180);
    sub_1A33C3088(&qword_1ED8544B0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0E40);
  }

  return result;
}

unint64_t sub_1A33C2C50()
{
  result = qword_1EB0C21B0;
  if (!qword_1EB0C21B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C21B0);
  }

  return result;
}

unint64_t sub_1A33C2CA4()
{
  result = qword_1EB0C0D18;
  if (!qword_1EB0C0D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA0E8);
    sub_1A3284D0C(&unk_1EB0C04E8, &qword_1EB0CA0E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0D18);
  }

  return result;
}

void sub_1A33C2DA0()
{
  sub_1A33813A4();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ContactCardStyleProvider.InlineActions();
    if (v1 <= 0x3F)
    {
      type metadata accessor for InlineActionsViewModel();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1A33C2E3C()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_1A33C2E6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C91D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A33C2EDC()
{
  result = qword_1EB0C1300;
  if (!qword_1EB0C1300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C1300);
  }

  return result;
}

uint64_t sub_1A33C2F64()
{
  v1 = *(type metadata accessor for ContactCardInlineActions() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];

  return sub_1A33C150C(v0 + v2, v4, v5);
}

unint64_t sub_1A33C2FF8()
{
  result = qword_1EB0CA1C0;
  if (!qword_1EB0CA1C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA1B8);
    sub_1A3382240();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CA1C0);
  }

  return result;
}

uint64_t sub_1A33C3088(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A33C316C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A33C31D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A33C323C()
{
  result = qword_1EB0C01A8;
  if (!qword_1EB0C01A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB0C01A8);
  }

  return result;
}

uint64_t objectdestroy_36Tm_0()
{
  v1 = type metadata accessor for ContactCardInlineActions();
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);

  v3 = v0 + v2;
  if (*(v0 + v2 + 264) == 1)
  {

    __swift_destroy_boxed_opaque_existential_0(v3 + 32);

    __swift_destroy_boxed_opaque_existential_0(v3 + 88);
    __swift_destroy_boxed_opaque_existential_0(v3 + 128);
    __swift_destroy_boxed_opaque_existential_0(v3 + 168);
    __swift_destroy_boxed_opaque_existential_0(v3 + 216);
  }

  v4 = v3 + *(v1 + 20);

  v5 = *(type metadata accessor for ContactCardStyleProvider.InlineActions() + 28);
  v6 = sub_1A34CCC60();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);

  return swift_deallocObject();
}

uint64_t sub_1A33C34E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_1A33C3528(uint64_t result, int a2, int a3)
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
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A33C3590(uint64_t a1)
{
  result = sub_1A33C35B8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A33C35B8()
{
  result = qword_1EB0CA1C8;
  if (!qword_1EB0CA1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CA1C8);
  }

  return result;
}

double sub_1A33C3628@<D0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C9E80);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - v6;
  sub_1A33C3984(v1, a1);
  v29 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5890);
  sub_1A34CC760();
  v24 = v27;
  v25 = v26;
  HIDWORD(v23) = v28;
  v8 = &a1[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA1D0) + 36)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA1D8);
  v10 = MEMORY[0x1E69E7CC0];
  *&v29 = sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0x5020656C67676F54, 0xEC0000006F746F68);
  *(&v29 + 1) = v11;
  v12 = swift_allocObject();
  v13 = *(v2 + 48);
  *(v12 + 48) = *(v2 + 32);
  *(v12 + 64) = v13;
  *(v12 + 80) = *(v2 + 64);
  *(v12 + 96) = *(v2 + 80);
  v14 = *(v2 + 16);
  *(v12 + 16) = *v2;
  *(v12 + 32) = v14;
  sub_1A33C44EC(v2, &v26);
  sub_1A328A95C();
  sub_1A34CC7C0();
  v26 = COERCE_DOUBLE(sub_1A3332448(v10, 0, 0, 0x6F68502074696445, 0xEA00000000006F74));
  v27 = v15;
  sub_1A3284D0C(&unk_1EB0C0510, &unk_1EB0C9E80);
  sub_1A34CC040();

  (*(v5 + 8))(v7, v4);
  type metadata accessor for VisualIdentityEditorViewModel();
  sub_1A33C4524();
  v16 = sub_1A34CA600();
  LOBYTE(v10) = v17;
  *&v8[v9[10]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5478);
  swift_storeEnumTagMultiPayload();
  *v8 = 0;
  *(v8 + 1) = v16;
  v8[16] = v10 & 1;
  v18 = &v8[v9[11]];
  v19 = v24;
  *v18 = v25;
  *(v18 + 1) = v19;
  v18[16] = BYTE4(v23);
  v20 = &v8[v9[13]];
  *&v29 = 0x4076800000000000;
  sub_1A34CC730();
  result = v26;
  v22 = v27;
  *v20 = v26;
  *(v20 + 1) = v22;
  return result;
}

uint64_t sub_1A33C3984@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v52 = a2;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA1E8);
  v55 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v50 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v54 = &v44 - v5;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C8D50);
  v46 = *(v48 - 8);
  v6 = v46;
  MEMORY[0x1EEE9AC00](v48);
  v49 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v53 = &v44 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v44 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v44 - v14;
  v16 = swift_allocObject();
  v17 = *(a1 + 48);
  *(v16 + 48) = *(a1 + 32);
  *(v16 + 64) = v17;
  *(v16 + 80) = *(a1 + 64);
  *(v16 + 96) = *(a1 + 80);
  v18 = *(a1 + 16);
  *(v16 + 16) = *a1;
  *(v16 + 32) = v18;
  sub_1A33C44EC(a1, v60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C5660);
  sub_1A3284D0C(&unk_1EB0C0590, &unk_1EB0C5660);
  v47 = v15;
  sub_1A34CC790();
  v19 = sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 1347375683, 0xE400000000000000);
  v21 = v20;
  v22 = swift_allocObject();
  v23 = *(a1 + 48);
  *(v22 + 48) = *(a1 + 32);
  *(v22 + 64) = v23;
  *(v22 + 80) = *(a1 + 64);
  *(v22 + 96) = *(a1 + 80);
  v24 = *(a1 + 16);
  *(v22 + 16) = *a1;
  *(v22 + 32) = v24;
  v59[0] = v19;
  v59[1] = v21;
  v56 = v59;
  v57 = 1886351971;
  v58 = 0xE400000000000000;
  sub_1A33C44EC(a1, v60);
  v25 = v12;
  v45 = v12;
  sub_1A34CC790();

  v26 = swift_allocObject();
  v27 = *(a1 + 48);
  *(v26 + 48) = *(a1 + 32);
  *(v26 + 64) = v27;
  *(v26 + 80) = *(a1 + 64);
  *(v26 + 96) = *(a1 + 80);
  v28 = *(a1 + 16);
  *(v26 + 16) = *a1;
  *(v26 + 32) = v28;
  sub_1A33C44EC(a1, v60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA1F0);
  sub_1A3284D0C(&qword_1EB0CA1F8, &qword_1EB0CA1F0);
  v29 = v54;
  sub_1A34CC790();
  v30 = *(v6 + 16);
  v31 = v53;
  v32 = v15;
  v33 = v48;
  v30(v53, v32, v48);
  v34 = v49;
  v30(v49, v25, v33);
  v35 = *(v55 + 16);
  v36 = v50;
  v37 = v29;
  v38 = v51;
  v35(v50, v37, v51);
  v39 = v52;
  v30(v52, v31, v33);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA200);
  v30(&v39[*(v40 + 48)], v34, v33);
  v35(&v39[*(v40 + 64)], v36, v38);
  v41 = *(v55 + 8);
  v41(v54, v38);
  v42 = *(v46 + 8);
  v42(v45, v33);
  v42(v47, v33);
  v41(v36, v38);
  v42(v34, v33);
  return (v42)(v53, v33);
}

uint64_t sub_1A33C3F84()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA208);
  sub_1A33C45D8();

  return sub_1A34CC6A0();
}

double sub_1A33C401C@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1A34CC5E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C52E0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1A34E3590;
  *(v3 + 32) = sub_1A34CC490();
  *(v3 + 40) = sub_1A34CC510();
  *(v3 + 48) = sub_1A34CC530();
  *(v3 + 56) = sub_1A34CC4F0();
  *(v3 + 64) = sub_1A34CC4A0();
  *(v3 + 72) = sub_1A34CC520();
  *(v3 + 80) = sub_1A34CC490();
  sub_1A34CCE10();
  MEMORY[0x1A58EE2C0](v3);
  sub_1A34CAAC0();
  v4 = v14[8];
  v5 = sub_1A34CCC80();
  v7 = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1A34DCA90;
  *(v8 + 32) = sub_1A34CC500();
  sub_1A34CC500();
  v9 = sub_1A34CC540();

  *(v8 + 40) = v9;
  MEMORY[0x1A58EE2C0](v8);
  sub_1A34CCE10();
  sub_1A34CAA20();
  v20[0] = v17;
  v20[1] = v18;
  *&v21 = v19;
  *(&v21 + 1) = 0x3FE8000000000000;
  *&v22 = v5;
  *(&v22 + 1) = v7;
  v23[0] = v17;
  v28 = v17;
  v29 = v18;
  v30 = v21;
  v31 = v22;
  v23[1] = v18;
  v24 = v19;
  v25 = 0x3FE8000000000000;
  v26 = v5;
  v27 = v7;
  sub_1A328D790(v20, v14, &qword_1EB0CA240);
  sub_1A3288FDC(v23, &qword_1EB0CA240);
  *a1 = v2;
  *(a1 + 8) = v4;
  v10 = v16;
  *(a1 + 16) = v15;
  *(a1 + 32) = v10;
  v11 = v29;
  *(a1 + 48) = v28;
  *(a1 + 64) = v11;
  result = *&v30;
  v13 = v31;
  *(a1 + 80) = v30;
  *(a1 + 96) = v13;
  return result;
}

uint64_t sub_1A33C4238(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 64);
  v22 = *(a1 + 48);
  v23 = v2;
  v3 = *(a1 + 32);
  v20 = *(a1 + 16);
  v21 = v3;
  v4 = *(a1 + 64);
  v17 = v22;
  v18 = v4;
  v24 = *(a1 + 80);
  v19 = *(a1 + 80);
  v15 = v20;
  v16 = v1;
  sub_1A328D790(&v20, v13, &qword_1EB0CA1E0);
  sub_1A328D790(&v20, v13, &qword_1EB0CA1E0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA1E0);
  MEMORY[0x1A58EE120](v13);
  if (v13[0] != __PAIR128__(0xE700000000000000, 0x656C6C656E614ALL))
  {
    sub_1A34CDE30();
  }

  sub_1A3288FDC(&v20, &qword_1EB0CA1E0);
  v13[2] = v22;
  v13[3] = v23;
  v14 = v24;
  v13[0] = v20;
  v13[1] = v21;
  MEMORY[0x1A58EE120](&v12, v5);

  v9 = v22;
  v10 = v23;
  v11 = v24;
  v7 = v20;
  v8 = v21;
  sub_1A34CC910();
  v17 = v9;
  v18 = v10;
  v19 = v11;
  v15 = v7;
  v16 = v8;
  return sub_1A3288FDC(&v15, &qword_1EB0CA1E0);
}

unint64_t sub_1A33C4524()
{
  result = qword_1EB0C18C0;
  if (!qword_1EB0C18C0)
  {
    type metadata accessor for VisualIdentityEditorViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C18C0);
  }

  return result;
}

unint64_t sub_1A33C45D8()
{
  result = qword_1EB0CA210;
  if (!qword_1EB0CA210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA208);
    sub_1A33C4690();
    sub_1A3284D0C(&qword_1EB0CA238, &qword_1EB0CA240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CA210);
  }

  return result;
}

unint64_t sub_1A33C4690()
{
  result = qword_1EB0CA218;
  if (!qword_1EB0CA218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA220);
    sub_1A3284D0C(&qword_1EB0CA228, &qword_1EB0CA230);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CA218);
  }

  return result;
}

unint64_t sub_1A33C4748()
{
  result = qword_1EB0CA248;
  if (!qword_1EB0CA248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA1D0);
    sub_1A3284D0C(&qword_1EB0CA250, &qword_1EB0CA258);
    sub_1A3284D0C(&qword_1EB0CA260, &qword_1EB0CA1D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CA248);
  }

  return result;
}

uint64_t sub_1A33C4830(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  sub_1A31EC930();
  **(*(v1 + 64) + 40) = sub_1A34CD370();

  return MEMORY[0x1EEE6DED8](v1);
}

uint64_t sub_1A33C48A4(uint64_t a1)
{
  sub_1A34CDF20();
  sub_1A34C9780();
  sub_1A33C5D8C(&qword_1EB0C2A40, MEMORY[0x1E69695A8]);
  sub_1A34CCFE0();
  MEMORY[0x1A58EF750](*(v1 + *(a1 + 20)));
  return sub_1A34CDF70();
}

uint64_t sub_1A33C4948(uint64_t a1, uint64_t a2)
{
  sub_1A34C9780();
  sub_1A33C5D8C(&qword_1EB0C2A40, MEMORY[0x1E69695A8]);
  sub_1A34CCFE0();
  return MEMORY[0x1A58EF750](*(v2 + *(a2 + 20)));
}

uint64_t sub_1A33C49D4(uint64_t a1, uint64_t a2)
{
  sub_1A34CDF20();
  sub_1A34C9780();
  sub_1A33C5D8C(&qword_1EB0C2A40, MEMORY[0x1E69695A8]);
  sub_1A34CCFE0();
  MEMORY[0x1A58EF750](*(v2 + *(a2 + 20)));
  return sub_1A34CDF70();
}

uint64_t sub_1A33C4A74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_1A34C9750())
  {
    v6 = *(a1 + *(a3 + 20)) ^ *(a2 + *(a3 + 20)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1A33C4ACC(uint64_t a1, _BYTE *a2)
{
  *(v3 + 104) = a1;
  *(v3 + 112) = v2;
  v5 = *(type metadata accessor for VisualIdentity(0) - 8);
  *(v3 + 120) = v5;
  *(v3 + 128) = *(v5 + 64);
  *(v3 + 136) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6110);
  *(v3 + 144) = swift_task_alloc();
  *(v3 + 152) = type metadata accessor for ProminentColorCache.CacheKey();
  *(v3 + 160) = swift_task_alloc();
  *(v3 + 224) = *a2;
  sub_1A34CD450();
  *(v3 + 168) = sub_1A34CD440();
  v7 = sub_1A34CD3E0();
  *(v3 + 176) = v7;
  *(v3 + 184) = v6;

  return MEMORY[0x1EEE6DFA0](sub_1A33C4C38, v7, v6);
}

uint64_t sub_1A33C4C38()
{
  v1 = *(v0 + 224);
  v3 = *(v0 + 152);
  v2 = *(v0 + 160);
  v4 = *(v0 + 104);
  v5 = *(v0 + 112);
  v6 = sub_1A34C9780();
  (*(*(v6 - 8) + 16))(v2, v4, v6);
  *(v2 + *(v3 + 20)) = v1;
  swift_beginAccess();
  v7 = *(v5 + 16);
  if (!*(v7 + 16))
  {
    goto LABEL_8;
  }

  v8 = *(v0 + 160);

  v9 = sub_1A33DB400(v8);
  if ((v10 & 1) == 0)
  {

LABEL_8:
    v16 = *(v0 + 160);
    v18 = *(v0 + 136);
    v17 = *(v0 + 144);
    v19 = *(v0 + 120);
    v20 = *(v0 + 104);
    sub_1A34CD460();
    v21 = sub_1A34CD4A0();
    (*(*(v21 - 8) + 56))(v17, 0, 1, v21);
    sub_1A3300BB8(v20, v18);
    v22 = (*(v19 + 80) + 33) & ~*(v19 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    *(v23 + 24) = 0;
    *(v23 + 32) = v1;
    sub_1A3336E78(v18, v23 + v22);
    v24 = sub_1A32C321C(0, 0, v17, &unk_1A34EFC10, v23);
    *(v0 + 208) = v24;
    sub_1A33C5ECC(v17);
    swift_beginAccess();
    sub_1A34C9010();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *(v5 + 16);
    *(v5 + 16) = 0x8000000000000000;
    sub_1A33F0B7C(v24, 0, v16, isUniquelyReferenced_nonNull_native);
    *(v5 + 16) = v31;
    swift_endAccess();
    v26 = swift_task_alloc();
    *(v0 + 216) = v26;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C61F8);
    *v26 = v0;
    v26[1] = sub_1A33C51A0;
    v28 = v0 + 88;
    v29 = v24;
    goto LABEL_9;
  }

  v11 = *(v7 + 56) + 16 * v9;
  v12 = *v11;
  *(v0 + 192) = *v11;
  v13 = *(v11 + 8);
  sub_1A33C5F90(v12, v13);

  if (v13)
  {
    sub_1A33C5F34(*(v0 + 160));

    v14 = *(v0 + 8);

    return v14(v12);
  }

  v30 = swift_task_alloc();
  *(v0 + 200) = v30;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C61F8);
  *v30 = v0;
  v30[1] = sub_1A33C4FDC;
  v28 = v0 + 96;
  v29 = v12;
LABEL_9:

  return MEMORY[0x1EEE6DA40](v28, v29, v27);
}

uint64_t sub_1A33C4FDC()
{
  v1 = *v0;

  v2 = *(v1 + 184);
  v3 = *(v1 + 176);

  return MEMORY[0x1EEE6DFA0](sub_1A33C50FC, v3, v2);
}

uint64_t sub_1A33C50FC()
{
  v1 = v0[24];
  v2 = v0[20];

  sub_1A33C5F34(v2);
  sub_1A336F738(v1, 0);
  v3 = v0[12];

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_1A33C51A0()
{
  v1 = *v0;

  v2 = *(v1 + 184);
  v3 = *(v1 + 176);

  return MEMORY[0x1EEE6DFA0](sub_1A33C52C0, v3, v2);
}

uint64_t sub_1A33C52C0()
{
  v1 = v0[20];
  v2 = v0[14];

  v3 = v0[11];
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v2 + 16);
  *(v2 + 16) = 0x8000000000000000;
  sub_1A33F0B7C(v3, 1, v1, isUniquelyReferenced_nonNull_native);
  *(v2 + 16) = v7;
  swift_endAccess();

  sub_1A33C5F34(v1);

  v5 = v0[1];

  return v5(v3);
}

uint64_t sub_1A33C53C8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 80) = a4;
  *(v5 + 48) = a1;
  *(v5 + 56) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1A33C53EC, 0, 0);
}

uint64_t sub_1A33C53EC()
{
  v1 = *(v0 + 80);
  v2 = type metadata accessor for VisualIdentity(0);
  v3 = *(v0 + 56);
  if (v1)
  {
    v4 = (v3 + *(v2 + 32));
    v5 = v4[3];
    v6 = v4[4];
    __swift_project_boxed_opaque_existential_1(v4, v5);
    v12 = (*(v6 + 16) + **(v6 + 16));
    v7 = swift_task_alloc();
    *(v0 + 72) = v7;
    *v7 = v0;
    v8 = sub_1A33C570C;
  }

  else
  {
    v9 = (v3 + *(v2 + 28));
    v5 = v9[3];
    v10 = v9[4];
    __swift_project_boxed_opaque_existential_1(v9, v5);
    v6 = *(v10 + 8);
    v12 = (*(v6 + 16) + **(v6 + 16));
    v7 = swift_task_alloc();
    *(v0 + 64) = v7;
    *v7 = v0;
    v8 = sub_1A33C55EC;
  }

  v7[1] = v8;

  return v12(v5, v6);
}

uint64_t sub_1A33C55EC(uint64_t a1)
{
  v2 = *v1;
  *(v2 + 16) = v1;
  *(v2 + 24) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1A33C56EC, 0, 0);
}

uint64_t sub_1A33C570C(uint64_t a1)
{
  v2 = *v1;
  *(v2 + 32) = v1;
  *(v2 + 40) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1A33C580C, 0, 0);
}

uint64_t sub_1A33C5828()
{

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ProminentColorCache.CacheKey()
{
  result = qword_1EB0C2388;
  if (!qword_1EB0C2388)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A33C5920()
{
  result = sub_1A34C9780();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A33C59FC()
{
  v1 = v0[19];
  v2 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1A33C5B38;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA268);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1A33C4830;
  v0[13] = &block_descriptor_15;
  v0[14] = v3;
  [v2 fetchColorsForImage:v1 ciContext:0 withCompletionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1A33C5B38()
{

  return MEMORY[0x1EEE6DFA0](sub_1A33C5C18, 0, 0);
}

uint64_t sub_1A33C5C18()
{
  v1 = *(v0 + 144);
  if (v1 >> 62)
  {
    v2 = sub_1A34CD9B0();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_11:

    v6 = MEMORY[0x1E69E7CC0];
    goto LABEL_12;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_11;
  }

LABEL_3:
  v8 = MEMORY[0x1E69E7CC0];
  result = sub_1A34CDB70();
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  v4 = 0;
  do
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1A58EF310](v4, v1);
    }

    else
    {
      v5 = *(v1 + 8 * v4 + 32);
    }

    ++v4;
    sub_1A34CC440();
    sub_1A34CDB50();
    sub_1A34CDB80();
    sub_1A34CDB90();
    sub_1A34CDB60();
  }

  while (v2 != v4);

  v6 = v8;
LABEL_12:
  v7 = *(v0 + 8);

  return v7(v6);
}

uint64_t sub_1A33C5D8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A33C5DD4(uint64_t a1)
{
  v4 = *(type metadata accessor for VisualIdentity(0) - 8);
  v5 = (*(v4 + 80) + 33) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1A3292050;

  return sub_1A33C53C8(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1A33C5ECC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6110);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A33C5F34(uint64_t a1)
{
  v2 = type metadata accessor for ProminentColorCache.CacheKey();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A33C5F90(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
    return sub_1A34C9010();
  }
}

unint64_t sub_1A33C5F9C()
{
  result = sub_1A33C5FBC();
  qword_1EB0EDE60 = result;
  return result;
}

unint64_t sub_1A33C5FBC()
{
  if (qword_1EB0C25F0 != -1)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v0 = qword_1EB0ED888;
    v1 = qword_1EB0C25E8;

    if (v1 != -1)
    {
      swift_once();
    }

    sub_1A33B8C4C(v2);
    v3 = *(v0 + 16);
    if (!v3)
    {
      break;
    }

    v4 = 0;
    v5 = (v0 + 120);
    v6 = MEMORY[0x1E69E7CC0];
    while (v4 < *(v0 + 16))
    {
      v7 = *v5;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1A32983B8(0, *(v6 + 2) + 1, 1, v6);
      }

      v9 = *(v6 + 2);
      v8 = *(v6 + 3);
      if (v9 >= v8 >> 1)
      {
        v6 = sub_1A32983B8((v8 > 1), v9 + 1, 1, v6);
      }

      ++v4;
      *(v6 + 2) = v9 + 1;
      v10 = &v6[16 * v9];
      *(v10 + 4) = v7;
      v10[40] = 2;
      v5 += 12;
      if (v3 == v4)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_18:
    swift_once();
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_14:

  return sub_1A33C616C(0x10uLL, v6);
}

unint64_t sub_1A33C616C(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v3 = result;
  if (!result)
  {

    return MEMORY[0x1E69E7CC0];
  }

  if (*(a2 + 16) >= result)
  {
    v4 = result;
  }

  else
  {
    v4 = *(a2 + 16);
  }

  v28 = MEMORY[0x1E69E7CC0];
  result = sub_1A32EBB54(0, v4, 0);
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = 0;
    v25 = v3;
    v26 = *(a2 + 16);
    v23 = v5 - 1;
    do
    {
      v24 = v7;
      v8 = (a2 + 40 + 16 * v6);
      while (1)
      {
        if (v6 >= *(a2 + 16))
        {
          __break(1u);
          goto LABEL_32;
        }

        v9 = *(v8 - 1);
        v10 = *v8;
        v11 = v6 + 1;
        v12 = *(v28 + 16);
        result = sub_1A31EE004(v9, *v8);
        if (v12 >= v3)
        {
          break;
        }

        v14 = *(v28 + 16);
        v13 = *(v28 + 24);
        if (v14 >= v13 >> 1)
        {
          result = sub_1A32EBB54((v13 > 1), v14 + 1, 1);
        }

        *(v28 + 16) = v14 + 1;
        v15 = v28 + 16 * v14;
        *(v15 + 32) = v9;
        *(v15 + 40) = v10;
        v8 += 16;
        ++v6;
        v3 = v25;
        if (v26 == v11)
        {
          v7 = v24;
          goto LABEL_23;
        }
      }

      if (v24 >= v12)
      {
        goto LABEL_33;
      }

      v16 = v28 + 16 * v24;
      v17 = *(v16 + 32);
      *(v16 + 32) = v9;
      v18 = *(v16 + 40);
      *(v16 + 40) = v10;
      result = sub_1A31ECC9C(v17, v18);
      if ((v24 + 1) < v3)
      {
        v7 = v24 + 1;
      }

      else
      {
        v7 = 0;
      }
    }

    while (v23 != v6++);
LABEL_23:

    if (!v7)
    {
      return v28;
    }

    v20 = *(v28 + 16);
    v27 = MEMORY[0x1E69E7CC0];
    result = sub_1A32EBB54(0, v20, 0);
    if (v20 >= v7)
    {
      if (v7 < 0)
      {
        goto LABEL_35;
      }

      v21 = *(v28 + 16);
      if (v21 >= v7 && v21 >= v20)
      {
        v22 = sub_1A34C9010();
        sub_1A33C63CC(v22, v28 + 32, v7, (2 * v20) | 1);
        sub_1A33C63CC(v28, v28 + 32, 0, (2 * v7) | 1);
        return v27;
      }

      goto LABEL_36;
    }

LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    return result;
  }

  return v28;
}

void sub_1A33C63CC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_23;
  }

  v7 = *v4;
  v8 = *(*v4 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v7;
  if (isUniquelyReferenced_nonNull_native)
  {
    v12 = *(v7 + 24) >> 1;
    if (v12 >= v9)
    {
      goto LABEL_12;
    }

    if (v8 <= v9)
    {
      v13 = v8 + v6;
    }

    else
    {
      v13 = v8;
    }
  }

  else if (v8 <= v9)
  {
    v13 = v8 + v6;
  }

  else
  {
    v13 = v8;
  }

  sub_1A32EBB54(isUniquelyReferenced_nonNull_native, v13, 1);
  v7 = *v4;
  v12 = *(*v4 + 24) >> 1;
LABEL_12:
  v14 = v12 - *(v7 + 16);
  if (v5 != a3)
  {
    if (v14 >= v6)
    {
      swift_arrayInitWithCopy();
      if (v6 <= 0)
      {
        goto LABEL_19;
      }

      v15 = *(v7 + 16);
      v16 = __OFADD__(v15, v6);
      v17 = v15 + v6;
      if (!v16)
      {
        *(v7 + 16) = v17;
        goto LABEL_19;
      }

LABEL_26:
      __break(1u);
      return;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v6 > 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v6 = 0;
LABEL_19:
  swift_unknownObjectRelease();
  if (v6 == v14)
  {
    sub_1A33C6508(0, 0xFFu);
  }

  *v4 = v7;
}

uint64_t sub_1A33C6508(uint64_t a1, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    return sub_1A31ECC9C(a1, a2);
  }

  return a1;
}

uint64_t sub_1A33C651C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A33C8514(&qword_1EB0C1478, type metadata accessor for VisualIdentityEditorStyleProvider);
  sub_1A34C99A0();

  *a2 = *(v3 + 32);
  return sub_1A34C9010();
}

uint64_t sub_1A33C65F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v36 = a3;
  v11 = a3 & 1;
  v12 = sub_1A34CB0B0();
  v34 = *(v12 - 8);
  v35 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v33 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v38 = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA270);
  (*(*(v15 - 8) + 16))(a6, a1, v15);
  v16 = a6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA278) + 36);
  *v16 = KeyPath;
  *(v16 + 8) = v38;
  *(v16 + 9) = 256;
  *(v16 + 16) = sub_1A33C6A50;
  *(v16 + 24) = 0u;
  *(v16 + 40) = 0u;
  *(v16 + 56) = 0;
  v17 = swift_getKeyPath();
  v39 = 0;
  v18 = a6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA280) + 36);
  *v18 = v17;
  *(v18 + 8) = v39;
  *(v18 + 9) = 258;
  *(v18 + 16) = sub_1A33C6A7C;
  *(v18 + 24) = 0u;
  *(v18 + 40) = 0u;
  *(v18 + 56) = 0;
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = v11;
  *(v19 + 32) = a4;
  a5 &= 1u;
  *(v19 + 40) = a5;
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = v11;
  *(v20 + 32) = a4;
  *(v20 + 40) = a5;
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  *(v21 + 24) = v11;
  *(v21 + 32) = a4;
  *(v21 + 40) = a5;
  v22 = swift_getKeyPath();
  v40 = 0;
  v23 = a6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA288) + 36);
  *v23 = v22;
  *(v23 + 8) = v40;
  *(v23 + 9) = 258;
  *(v23 + 16) = sub_1A33C8340;
  *(v23 + 24) = v19;
  *(v23 + 32) = sub_1A33C8360;
  *(v23 + 40) = v20;
  *(v23 + 48) = sub_1A33C8378;
  *(v23 + 56) = v21;
  v24 = swift_getKeyPath();
  v41 = 0;
  v25 = a6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA290) + 36);
  *v25 = v24;
  *(v25 + 8) = v41;
  *(v25 + 9) = 258;
  *(v25 + 16) = sub_1A33C7530;
  *(v25 + 24) = 0u;
  *(v25 + 40) = 0u;
  *(v25 + 56) = 0;
  v26 = swift_getKeyPath();
  sub_1A33C83B8(a4, a5);
  swift_retain_n();
  sub_1A33C83B8(a4, a5);
  sub_1A34C9010();
  sub_1A33C83B8(a4, a5);
  sub_1A34C9010();
  if ((v36 & 1) == 0)
  {
    sub_1A34CD650();
    v27 = sub_1A34CBA30();
    sub_1A34CA210();

    v28 = v33;
    sub_1A34CB0A0();
    swift_getAtKeyPath();

    (*(v34 + 8))(v28, v35);
    a2 = v37;
  }

  v29 = *(a2 + OBJC_IVAR____TtC14ContactsUICore29VisualIdentityEditorViewModel_visualIdentityProducer + 16);
  sub_1A34C9010();

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA298);
  v31 = (a6 + *(result + 36));
  *v31 = v26;
  v31[1] = v29;
  return result;
}

uint64_t sub_1A33C6AA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v39 = a5;
  v42 = a6;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA2B0);
  MEMORY[0x1EEE9AC00](v40);
  v11 = &v35 - v10;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA2B8);
  v38 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v37 = &v35 - v12;
  v13 = sub_1A34CB0B0();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA2C0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v35 - v18;
  sub_1A328D790(a1, &v35 - v18, &qword_1EB0CA2C8);
  v19[*(type metadata accessor for MemojiPicker(0) + 20)] = 1;
  sub_1A34C9010();
  if ((a3 & 1) == 0)
  {
    sub_1A34CD650();
    v20 = sub_1A34CBA30();
    sub_1A34CA210();

    sub_1A34CB0A0();
    swift_getAtKeyPath();

    (*(v14 + 8))(v16, v13);
    a2 = v43;
  }

  v36 = v13;
  v21 = *(a2 + 32);
  sub_1A34C9010();

  swift_getKeyPath();
  v43 = v21;
  sub_1A33C8514(&qword_1EB0C1478, type metadata accessor for VisualIdentityEditorStyleProvider);
  sub_1A34C99A0();

  v22 = *(v21 + 32);
  sub_1A34C9010();

  KeyPath = swift_getKeyPath();
  v43 = v22;
  v24 = MEMORY[0x1E69815C0];
  v25 = MEMORY[0x1E6981568];
  v26 = sub_1A34CA770();
  v27 = &v19[*(v17 + 36)];
  *v27 = KeyPath;
  v27[1] = v26;
  if ((v39 & 1) == 0)
  {
    sub_1A34C9010();
    sub_1A34CD650();
    v28 = sub_1A34CBA30();
    sub_1A34CA210();

    sub_1A34CB0A0();
    swift_getAtKeyPath();
    sub_1A32141EC(a4, 0);
    (*(v14 + 8))(v16, v36);
    a4 = v43;
  }

  if (a4 == 2)
  {
    sub_1A328D790(v19, v11, &qword_1EB0CA2C0);
    swift_storeEnumTagMultiPayload();
    v29 = sub_1A33C842C();
    v43 = v17;
    v44 = v24;
    v45 = v29;
    v46 = v25;
    swift_getOpaqueTypeConformance2();
    sub_1A34CB3E0();
  }

  else
  {
    v43 = sub_1A34CC4E0();
    v30 = sub_1A33C842C();
    v31 = v37;
    sub_1A34CC1E0();

    v32 = v38;
    v33 = v41;
    (*(v38 + 16))(v11, v31, v41);
    swift_storeEnumTagMultiPayload();
    v43 = v17;
    v44 = v24;
    v45 = v30;
    v46 = v25;
    swift_getOpaqueTypeConformance2();
    sub_1A34CB3E0();
    (*(v32 + 8))(v31, v33);
  }

  return sub_1A3288FDC(v19, &qword_1EB0CA2C0);
}

uint64_t sub_1A33C7038(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v8 = sub_1A34CB0B0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A34C9010();
  if ((a2 & 1) == 0)
  {
    sub_1A34CD650();
    v12 = sub_1A34CBA30();
    sub_1A34CA210();

    sub_1A34CB0A0();
    swift_getAtKeyPath();

    (*(v9 + 8))(v11, v8);
    a1 = v17;
  }

  if ((a4 & 1) == 0)
  {
    sub_1A34C9010();
    sub_1A34CD650();
    v13 = sub_1A34CBA30();
    sub_1A34CA210();

    sub_1A34CB0A0();
    swift_getAtKeyPath();
    sub_1A32141EC(a3, 0);
    (*(v9 + 8))(v11, v8);
    a3 = v17;
  }

  if (((a3 != 2) ^ *(a1 + 44)))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v16 - 2) = a1;
    *(&v16 - 8) = a3 != 2;
    v17 = a1;
    sub_1A33C8514(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
    sub_1A34C9990();
  }

  else
  {
    *(a1 + 44) = a3 != 2;
  }
}

uint64_t sub_1A33C7310(uint64_t a1, char a2)
{
  v4 = sub_1A34CB0B0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A34C9010();
  if ((a2 & 1) == 0)
  {
    sub_1A34CD650();
    v8 = sub_1A34CBA30();
    sub_1A34CA210();

    sub_1A34CB0A0();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    a1 = v12;
  }

  if (*(a1 + 44))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v11 - 2) = a1;
    *(&v11 - 8) = 0;
    v12 = a1;
    sub_1A33C8514(&qword_1EB0C18C0, type metadata accessor for VisualIdentityEditorViewModel);
    sub_1A34C9990();
  }

  else
  {
    *(a1 + 44) = 0;
  }
}

uint64_t sub_1A33C7530@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for iPhoneSheetStyle();
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for NewPosterView();
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A328D790(a1, v11, &qword_1EB0CA2A0);
  v12 = &v11[*(v9 + 28)];
  v22[15] = 0;
  sub_1A34CC730();
  v13 = v23;
  *v12 = v22[16];
  *(v12 + 1) = v13;
  *v7 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C58B8);
  swift_storeEnumTagMultiPayload();
  *(v7 + *(v5 + 32)) = 0x3FEB333333333333;
  v14 = [objc_opt_self() mainScreen];
  [v14 bounds];
  v16 = v15;
  v18 = v17;

  if (v18 >= v16)
  {
    v19 = v16;
  }

  else
  {
    v19 = v18;
  }

  *(v7 + *(v5 + 28)) = v19;
  sub_1A33C83C4(v11, a2, type metadata accessor for NewPosterView);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA2A8);
  return sub_1A33C83C4(v7, a2 + *(v20 + 36), type metadata accessor for iPhoneSheetStyle);
}

uint64_t sub_1A33C7738@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1A34CB0B0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C58B8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_1A328D790(v2, &v14 - v9, &qword_1EB0C58B8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1A34CA980();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_1A34CD650();
    v13 = sub_1A34CBA30();
    sub_1A34CA210();

    sub_1A34CB0A0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1A33C7938@<X0>(void *a1@<X8>)
{
  sub_1A329BBB4();
  result = sub_1A34CB0E0();
  *a1 = v3;
  return result;
}

uint64_t sub_1A33C7988()
{
  sub_1A329BBB4();
  sub_1A34C9010();
  return sub_1A34CB0F0();
}

uint64_t sub_1A33C7A08@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v32 = a1;
  v37 = a2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA2D0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v29 - v2;
  v33 = sub_1A34CB780();
  v29 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA2D8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v29 - v6;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA2E0);
  v31 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v30 = &v29 - v8;
  v9 = sub_1A34CA980();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v29 - v14;
  sub_1A33C7738(&v29 - v14);
  sub_1A34CA970();
  sub_1A33C8514(&qword_1EB0CA2E8, MEMORY[0x1E697E398]);
  v16 = sub_1A34CD040();
  v17 = *(v10 + 8);
  v17(v12, v9);
  v17(v15, v9);
  if (v16)
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA2F0);
    (*(*(v18 - 8) + 16))(v36, v32, v18);
    swift_storeEnumTagMultiPayload();
    v19 = sub_1A33C855C();
    *&v42 = v5;
    *(&v42 + 1) = v33;
    *&v43 = v19;
    *(&v43 + 1) = MEMORY[0x1E697C8E8];
    swift_getOpaqueTypeConformance2();
    sub_1A3284D0C(&qword_1EB0CA300, &qword_1EB0CA2F0);
    return sub_1A34CB3E0();
  }

  else
  {
    type metadata accessor for iPhoneSheetStyle();
    sub_1A34CCC80();
    sub_1A34CA760();
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA2F0);
    (*(*(v21 - 8) + 16))(v7, v32, v21);
    v22 = &v7[*(v5 + 36)];
    v23 = v43;
    *v22 = v42;
    *(v22 + 1) = v23;
    *(v22 + 2) = v44;
    sub_1A34CB1E0();
    v24 = sub_1A33C855C();
    v25 = v30;
    v26 = v33;
    sub_1A34CC0D0();
    (*(v29 + 8))(v4, v26);
    sub_1A3288FDC(v7, &qword_1EB0CA2D8);
    v27 = v31;
    v28 = v35;
    (*(v31 + 16))(v36, v25, v35);
    swift_storeEnumTagMultiPayload();
    v38 = v5;
    v39 = v26;
    v40 = v24;
    v41 = MEMORY[0x1E697C8E8];
    swift_getOpaqueTypeConformance2();
    sub_1A3284D0C(&qword_1EB0CA300, &qword_1EB0CA2F0);
    sub_1A34CB3E0();
    return (*(v27 + 8))(v25, v28);
  }
}

uint64_t EnvironmentValues.isPresentedInSheet.getter()
{
  sub_1A33C8068();
  sub_1A34CB0E0();
  return v1;
}

unint64_t sub_1A33C8068()
{
  result = qword_1EB0C22D8;
  if (!qword_1EB0C22D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C22D8);
  }

  return result;
}

uint64_t (*EnvironmentValues.isPresentedInSheet.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_1A33C8068();
  sub_1A34CB0E0();
  *(a1 + 16) = *(a1 + 17);
  return sub_1A33C8160;
}

uint64_t type metadata accessor for iPhoneSheetStyle()
{
  result = qword_1EB0C2710;
  if (!qword_1EB0C2710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A33C820C()
{
  sub_1A33C8290();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1A33C8290()
{
  if (!qword_1ED8534D0)
  {
    sub_1A34CA980();
    v0 = sub_1A34CA5F0();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8534D0);
    }
  }
}

uint64_t sub_1A33C83B8(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_1A34C9010();
  }

  return result;
}

uint64_t sub_1A33C83C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A33C842C()
{
  result = qword_1EB0C0F68;
  if (!qword_1EB0C0F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA2C0);
    sub_1A33C8514(&qword_1EB0C2920, type metadata accessor for MemojiPicker);
    sub_1A3284D0C(&qword_1EB0C06A8, &qword_1EB0C7E78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0F68);
  }

  return result;
}

uint64_t sub_1A33C8514(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A33C855C()
{
  result = qword_1EB0CA2F8;
  if (!qword_1EB0CA2F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA2D8);
    sub_1A3284D0C(&qword_1EB0CA300, &qword_1EB0CA2F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CA2F8);
  }

  return result;
}

unint64_t sub_1A33C8614()
{
  result = qword_1EB0C09D8;
  if (!qword_1EB0C09D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA298);
    sub_1A33C86CC();
    sub_1A3284D0C(&qword_1EB0C06B8, &qword_1EB0CA328);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C09D8);
  }

  return result;
}

unint64_t sub_1A33C86CC()
{
  result = qword_1EB0C0A18;
  if (!qword_1EB0C0A18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA290);
    sub_1A33C8784();
    sub_1A3284D0C(&qword_1EB0C1EA0, &qword_1EB0CA320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0A18);
  }

  return result;
}

unint64_t sub_1A33C8784()
{
  result = qword_1EB0C0AE0;
  if (!qword_1EB0C0AE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA288);
    sub_1A33C883C();
    sub_1A3284D0C(&qword_1EB0C1EB0, &qword_1EB0CA318);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0AE0);
  }

  return result;
}

unint64_t sub_1A33C883C()
{
  result = qword_1EB0C0C08;
  if (!qword_1EB0C0C08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA280);
    sub_1A33C88F4();
    sub_1A3284D0C(&qword_1EB0C1EA8, &qword_1EB0CA310);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0C08);
  }

  return result;
}

unint64_t sub_1A33C88F4()
{
  result = qword_1EB0C0ED8;
  if (!qword_1EB0C0ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA278);
    sub_1A3284D0C(&qword_1EB0C0760, &qword_1EB0CA270);
    sub_1A3284D0C(qword_1EB0C1EB8, &qword_1EB0CA308);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0ED8);
  }

  return result;
}

unint64_t sub_1A33C89D8()
{
  result = qword_1EB0CA330;
  if (!qword_1EB0CA330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA338);
    sub_1A33C8A5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CA330);
  }

  return result;
}

unint64_t sub_1A33C8A5C()
{
  result = qword_1EB0CA340;
  if (!qword_1EB0CA340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA348);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA2D8);
    sub_1A34CB780();
    sub_1A33C855C();
    swift_getOpaqueTypeConformance2();
    sub_1A3284D0C(&qword_1EB0CA300, &qword_1EB0CA2F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CA340);
  }

  return result;
}

uint64_t sub_1A33C8B80(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1A33CAF7C(a1, &v11);
  type metadata accessor for VisualIdentitySuggestionCache.CacheKey();
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  v6 = v12;
  *(v5 + 24) = v11;
  *(v5 + 40) = v6;
  *(v5 + 56) = v13;

  v7 = [a3 objectForKey_];
  if (v7)
  {
    sub_1A31EE354(v7 + 16, &v11);
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7690);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA370);
  if ((swift_dynamicCast() & 1) == 0 || (v8 = v10) == 0)
  {
    if (qword_1EB0C4A20 != -1)
    {
      swift_once();
    }

    v8 = qword_1EB0CA350;
  }

  return v8;
}

uint64_t sub_1A33C8CE4(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1A33CAF7C(a1, &v10);
  type metadata accessor for VisualIdentitySuggestionCache.CacheKey();
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  v6 = v11;
  *(v5 + 24) = v10;
  *(v5 + 40) = v6;
  *(v5 + 56) = v12;

  v7 = [a3 objectForKey_];

  if (v7)
  {
    sub_1A31EE354(v7 + 16, &v10);
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7690);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA358);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  result = v9;
  if (v9 == 1)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1A33C8DFC(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1A33CAF7C(a1, &v11);
  type metadata accessor for VisualIdentitySuggestionCache.CacheKey();
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  v6 = v12;
  *(v5 + 24) = v11;
  *(v5 + 40) = v6;
  *(v5 + 56) = v13;

  v7 = [a3 objectForKey_];
  if (v7)
  {
    sub_1A31EE354(v7 + 16, &v11);
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C7690);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA388);
  if ((swift_dynamicCast() & 1) != 0 && (v8 = v10) != 0)
  {
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  return v8;
}

uint64_t sub_1A33C8F44(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v7 = *v3;
  sub_1A33CAF7C(a2, &v13);
  type metadata accessor for VisualIdentitySuggestionCache.CacheKey();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = v14;
  *(v8 + 24) = v13;
  *(v8 + 40) = v9;
  *(v8 + 56) = v15;
  v10 = v3[1];
  *(&v14 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  *&v13 = a1;
  type metadata accessor for VisualIdentitySuggestionCache.CacheValue();
  v11 = swift_allocObject();
  sub_1A31FA144(&v13, (v11 + 16));

  [v10 setObject:v11 forKey:v8];

  return sub_1A32F7584(a2);
}

void sub_1A33C9048(uint64_t a1@<X8>)
{
  if (*(v1 + 32) == 1)
  {
    goto LABEL_12;
  }

  v2 = *v1;
  if (*v1 >> 62)
  {
    v14 = a1;
    v3 = sub_1A34CD9B0();
    a1 = v14;
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = v1[1];
  if (v4 == v3)
  {
LABEL_11:
    *(v1 + 32) = 1;
LABEL_12:
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    return;
  }

  if ((v2 & 0xC000000000000001) == 0)
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    v5 = a1;
    v6 = *(v2 + 8 * v4 + 32);
    v7 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      goto LABEL_9;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v5 = a1;
  v6 = MEMORY[0x1A58EF310](v1[1], v2);
  v7 = v4 + 1;
  if (__OFADD__(v4, 1))
  {
    goto LABEL_20;
  }

LABEL_9:
  v1[1] = v7;
  v8 = v1[2];
  v9 = v1[3];
  v10 = *(v8 + 16);
  if (v9 == v10)
  {

    a1 = v5;
    goto LABEL_11;
  }

  if (v9 >= v10)
  {
    goto LABEL_23;
  }

  v11 = v8 + 16 * v9;
  v12 = *(v11 + 32);
  v13 = *(v11 + 40);
  v1[3] = v9 + 1;
  *v5 = v6;
  *(v5 + 8) = v12;
  *(v5 + 16) = v13;

  sub_1A31EE004(v12, v13);
}

uint64_t sub_1A33C9180()
{
  v0 = type metadata accessor for MemojiSuggestionProvider();

  return sub_1A3463D24(v0, &off_1F1625428);
}

uint64_t sub_1A33C91B0()
{
  result = sub_1A3332448(MEMORY[0x1E69E7CC0], 0, 0, 0xD000000000000012, 0x80000001A350E9A0);
  qword_1EB0ED260 = result;
  *algn_1EB0ED268 = v1;
  return result;
}

uint64_t sub_1A33C9204()
{
  sub_1A31F08B0(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1A33C9274()
{
  if (qword_1EB0C1D88 != -1)
  {
    swift_once();
  }

  v0 = qword_1EB0ED260;

  return v0;
}

uint64_t sub_1A33C92E4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A330F6A8;

  return (sub_1A33CA40C)(a1, a2);
}

uint64_t sub_1A33C9398(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v3[13] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1A33C93E4, 0, 0);
}

uint64_t sub_1A33C93E4()
{
  v50 = v0;
  v1 = v0[11];
  v2 = v0[12];
  v3 = *v1;
  v4 = v1[1];
  swift_getKeyPath();
  v0[2] = v2;
  sub_1A33CAFD8();
  sub_1A34C99A0();

  v5 = [*(v2 + 56) identifier];
  v6 = sub_1A34CD110();
  v8 = v7;

  v0[8] = v6;
  v0[9] = v8;
  sub_1A33CB030();

  sub_1A34CDA40();
  v9 = sub_1A33C8B80((v0 + 2), v3, v4);

  sub_1A32F7584((v0 + 2));
  v10 = v9;
  if (v9 >> 62)
  {
    while (1)
    {
      v40 = v10;
      v41 = sub_1A34CD9B0();
      v10 = v40;
      if (v41)
      {
        break;
      }

LABEL_3:
      v11 = v0[10];

      v12 = *(v11 + *(type metadata accessor for VisualIdentitySuggestionContext(0) + 32));
      v49[0] = xmmword_1A34EB520;
      sub_1A32FD380();
      *&v49[0] += v12;
      sub_1A32FD380();
      v48 = v49[0];
      if (qword_1EB0C1780 != -1)
      {
        swift_once();
      }

      v13 = v0[12];
      *&v49[0] = qword_1EB0ED118;

      sub_1A3485068(&v48);
      v14 = *&v49[0];
      v15 = objc_opt_self();
      swift_getKeyPath();
      v0[2] = v13;
      sub_1A34C99A0();

      v16 = [v15 variantsOfMemojiMetadata:*(v2 + 56) count:16];
      sub_1A31EC194(0, &qword_1EB0C01B8);
      v17 = sub_1A34CD370();

      *&v49[0] = sub_1A33C9C90(v17);
      sub_1A34852B4(&v48);
      v18 = *&v49[0];
      *&v49[0] = MEMORY[0x1E69E7CC0];
      sub_1A34CDB70();
      v47 = *(v14 + 16);
      if (v47)
      {
        if ((v18 & 0x8000000000000000) == 0 && (v18 & 0x4000000000000000) == 0)
        {
          v19 = *(v18 + 16);
          goto LABEL_9;
        }

        goto LABEL_27;
      }

      __break(1u);
      do
      {
        __break(1u);
LABEL_27:
        v19 = sub_1A34CD9B0();
LABEL_9:
        v10 = objc_opt_self();
        v45 = v10;
      }

      while (!v19);
      v42 = v2;
      v2 = 0;
      v46 = v18 & 0xC000000000000001;
      v43 = v18 + 32;
      v44 = v18;
      while (v2 % v47 < *(v14 + 16))
      {
        v27 = v14 + 32 + 16 * (v2 % v47);
        v28 = *v27;
        v29 = *(v27 + 8);
        v30 = v2 % v19;
        if (v46)
        {
          sub_1A31EE004(v28, v29);
          v20 = MEMORY[0x1A58EF310](v2 % v19, v18);
        }

        else
        {
          if (v30 >= *(v18 + 16))
          {
            goto LABEL_22;
          }

          v31 = *(v43 + 8 * v30);
          sub_1A31EE004(v28, v29);
          v20 = v31;
        }

        v21 = v20;
        ++v2;
        v22 = swift_allocObject();
        *(v22 + 16) = 0u;
        *(v22 + 32) = 0u;
        *(v22 + 48) = 1;
        *(v22 + 80) = 0;
        *(v22 + 88) = 0;
        sub_1A34C99D0();
        *(v22 + 56) = v21;
        *(v22 + 64) = v28;
        *(v22 + 72) = v29;
        swift_getKeyPath();
        v0[2] = v22;
        v23 = v21;
        sub_1A34C99A0();

        v24 = *(v22 + 56);
        v0[6] = sub_1A33CB084;
        v0[7] = v22;
        v0[2] = MEMORY[0x1E69E9820];
        v0[3] = 1107296256;
        v0[4] = sub_1A341B5F8;
        v0[5] = &block_descriptor_16;
        v25 = _Block_copy(v0 + 2);
        v26 = v24;
        sub_1A34C9010();

        [v45 stickerImageFromMetadata:v26 size:v25 completionHandler:400.0];
        _Block_release(v25);

        sub_1A34CDB50();
        sub_1A34CDB80();
        sub_1A34CDB90();
        v10 = sub_1A34CDB60();
        v18 = v44;
        if (v2 == 16)
        {
          v32 = v0[12];

          v33 = *&v49[0];
          swift_getKeyPath();
          v0[2] = v32;
          sub_1A34C99A0();

          v34 = [*(v42 + 56) identifier];
          v35 = sub_1A34CD110();
          v37 = v36;

          v0[2] = v35;
          v0[3] = v37;
          sub_1A34C9010();

          sub_1A34CDA40();
          sub_1A33C8F44(v33, v49, &qword_1EB0CA370);

          v10 = v33;
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
    }
  }

  else if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

LABEL_18:
  v38 = v0[1];

  return v38(v10);
}

uint64_t sub_1A33C9A10(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A335E180;

  return sub_1A33C9398(a1, a2);
}

void sub_1A33C9ACC()
{
  v1 = *v0;
  v2 = *(*v0 + 2);
  v25 = v2 - 2;
  if (v2 >= 2)
  {
    v3 = 0;
    while (1)
    {
      v26 = 0;
      MEMORY[0x1A58F1030](&v26, 8);
      v5 = (v26 * v2) >> 64;
      if (v2 > v26 * v2)
      {
        v6 = -v2 % v2;
        if (v6 > v26 * v2)
        {
          do
          {
            v26 = 0;
            MEMORY[0x1A58F1030](&v26, 8);
          }

          while (v6 > v26 * v2);
          v5 = (v26 * v2) >> 64;
        }
      }

      v7 = v3 + v5;
      if (__OFADD__(v3, v5))
      {
        break;
      }

      if (v3 != v7)
      {
        v8 = *(v1 + 2);
        if (v3 >= v8)
        {
          goto LABEL_19;
        }

        if (v7 >= v8)
        {
          goto LABEL_20;
        }

        v9 = &v1[16 * v3 + 32];
        v10 = *v9;
        v11 = *(v9 + 8);
        v12 = 16 * v7;
        v13 = &v1[16 * v7 + 32];
        v14 = *v13;
        v15 = *(v13 + 8);
        sub_1A31EE004(*v9, v11);
        v24 = v15;
        sub_1A31EE004(v14, v15);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v1 = sub_1A348595C(v1);
        }

        if (v3 >= *(v1 + 2))
        {
          goto LABEL_21;
        }

        v16 = v1 + 32;
        v17 = &v1[16 * v3 + 32];
        v18 = *v17;
        *v17 = v14;
        v19 = *(v17 + 8);
        *(v17 + 8) = v24;
        sub_1A31ECC9C(v18, v19);
        if (v7 >= *(v1 + 2))
        {
          goto LABEL_22;
        }

        v20 = &v16[v12];
        v21 = *&v16[16 * v7];
        *v20 = v10;
        v22 = v16[v12 + 8];
        v20[8] = v11;
        sub_1A31ECC9C(v21, v22);
        *v23 = v1;
      }

      --v2;
      if (v3++ == v25)
      {
        return;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }
}

uint64_t sub_1A33C9C90(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_1A34CD9B0();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v4 = v3;
  v5 = sub_1A3444644(v3, 0);
  sub_1A33C9F30((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1A33C9D64(uint64_t result, uint64_t a2, unint64_t a3, unint64_t *a4, uint64_t (*a5)(_BYTE *, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v7 = result;
  v8 = a3 >> 62;
  if (a3 >> 62)
  {
    v18 = a4;
    v19 = a2;
    result = sub_1A34CD9B0();
    a2 = v19;
    a4 = v18;
    v9 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v9 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      return a3;
    }
  }

  if (v7)
  {
    if (v8)
    {
      v10 = a4;
      v11 = a2;
      result = sub_1A34CD9B0();
      if (result <= v11)
      {
        if (v9 >= 1)
        {
          v12 = sub_1A32D0FF4(v10, &qword_1EB0CA3A0);
          for (i = 0; i != v9; ++i)
          {
            v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA3A0);
            v15 = a5(v20, i, a3, v14, v12);
            v17 = *v16;
            v15(v20, 0);
            *(v7 + 8 * i) = v17;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8160);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A33C9F30(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1A34CD9B0();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1A34CD9B0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1A32D0FF4(&qword_1EB0CA380, &qword_1EB0CA378);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA378);
            v9 = sub_1A329980C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1A31EC194(0, &qword_1EB0C01B8);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A33CA0D0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1A34CD9B0();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1A34CD9B0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1A32D0FF4(&qword_1EB0CA410, &qword_1EB0CA408);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA408);
            v9 = sub_1A3299914(v13, i, a3);
            v11 = *v10;
            sub_1A34C9010();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C8140);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A33CA26C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1A34CD9B0();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1A34CD9B0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1A32D0FF4(&qword_1EB0CA3D0, &qword_1EB0CA3C8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA3C8);
            v9 = sub_1A329980C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1A31EC194(0, &qword_1EB0C01C0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A33CA40C(uint64_t a1, uint64_t a2)
{
  v2[35] = a1;
  v2[36] = a2;
  v3 = type metadata accessor for VisualIdentity(0);
  v2[37] = v3;
  v2[38] = *(v3 - 8);
  v2[39] = swift_task_alloc();
  v4 = sub_1A34CA250();
  v2[40] = v4;
  v2[41] = *(v4 - 8);
  v2[42] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A33CA528, 0, 0);
}

uint64_t sub_1A33CA528()
{
  v34 = v0;
  if (qword_1EB0C1248 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 328);
  v1 = *(v0 + 336);
  v3 = *(v0 + 320);
  v5 = *(v0 + 280);
  v4 = *(v0 + 288);
  v6 = __swift_project_value_buffer(v3, qword_1EB0ECF90);
  (*(v2 + 16))(v1, v6, v3);
  sub_1A34C9F00();
  swift_allocObject();
  *(v0 + 344) = sub_1A34C9E90();
  sub_1A34C9EA0();
  v7 = *(v5 + 8);
  *(v0 + 201) = v7;
  v9 = *v4;
  v8 = v4[1];
  if (v7 == 1)
  {
    *(v0 + 272) = &type metadata for MemojiSuggestionsCacheKey;
    sub_1A34CDA40();
    v10 = sub_1A33C8CE4(v0 + 128, v9, v8);
    sub_1A32F7584(v0 + 128);
    if (v10)
    {
      goto LABEL_26;
    }

    v11 = &selRef_suggestedMemojiMetadataWithCount_;
  }

  else
  {
    *(v0 + 248) = &type metadata for AnimojiSuggestionsCacheKey;
    sub_1A34CDA40();
    v10 = sub_1A33C8CE4(v0 + 88, v9, v8);
    sub_1A32F7584(v0 + 88);
    if (v10)
    {
      goto LABEL_26;
    }

    v11 = &selRef_suggestedAnimojiMetadataWithCount_;
  }

  v12 = [objc_opt_self() *v11];
  sub_1A31EC194(0, &qword_1EB0C01B8);
  v13 = sub_1A34CD370();

  if (qword_1EB0C1778 != -1)
  {
    swift_once();
  }

  v14 = qword_1EB0ED110;
  v15 = *(qword_1EB0ED110 + 16);
  if (v15 >= 2)
  {
    v16 = v15 - 1;
  }

  else
  {
    v16 = 0;
  }

  sub_1A34CDE40();
  swift_unknownObjectRetain_n();

  v17 = swift_dynamicCastClass();
  if (!v17)
  {
    swift_unknownObjectRelease();
    v17 = MEMORY[0x1E69E7CC0];
  }

  v18 = *(v17 + 16);

  if (v18 == v16)
  {
    v19 = swift_dynamicCastClass();
    if (!v19)
    {
      swift_unknownObjectRelease();
      v19 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    swift_unknownObjectRelease();
    sub_1A34A5208(v14, v14 + 32, 0, (2 * v16) | 1);
  }

  v33[0] = v19;
  sub_1A33C9ACC();
  swift_unknownObjectRelease();
  v20 = v33[0];
  *(v0 + 168) = v13;
  *(v0 + 176) = 0;
  *(v0 + 184) = v20;
  *(v0 + 192) = 0;
  *(v0 + 200) = 0;
  sub_1A33C9048(v0 + 208);
  v21 = *(v0 + 208);
  if (v21)
  {
    v22 = *(v0 + 216);
    v23 = *(v0 + 224);
    v24 = MEMORY[0x1E69E7CC0];
    *(v0 + 360) = v21;
    *(v0 + 368) = v24;
    *(v0 + 352) = v22;
    *(v0 + 202) = v23;
    v25 = *(v0 + 280);
    *(v0 + 232) = v22;
    *(v0 + 240) = v23;
    *(v0 + 376) = type metadata accessor for MemojiAvatarSource();
    swift_allocObject();
    v26 = v21;
    sub_1A31EE004(v22, v23);
    v27 = sub_1A341C270(v26, v0 + 232);
    *(v0 + 384) = v27;

    v28 = *v25;
    v29 = swift_task_alloc();
    *(v0 + 392) = v29;
    *v29 = v0;
    v29[1] = sub_1A33CAA2C;

    return sub_1A34198E8(v0 + 16, v28, v27);
  }

  v31 = *(v0 + 201);

  if (v31 == 1)
  {
    *(v0 + 264) = &type metadata for MemojiSuggestionsCacheKey;
  }

  else
  {
    *(v0 + 256) = &type metadata for AnimojiSuggestionsCacheKey;
  }

  v10 = MEMORY[0x1E69E7CC0];

  sub_1A34CDA40();
  sub_1A33C8F44(v10, v33, &unk_1EB0CA358);
LABEL_26:
  sub_1A34C9E80();

  v32 = *(v0 + 8);

  return v32(v10);
}

uint64_t sub_1A33CAA2C()
{
  *(*v1 + 400) = v0;

  if (v0)
  {

    v2 = sub_1A33CAEC4;
  }

  else
  {
    v2 = sub_1A33CAB5C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A33CAB5C()
{
  v27 = v0;
  v2 = *(v0 + 376);
  v1 = *(v0 + 384);
  v3 = *(v0 + 312);
  v4 = *(v0 + 296);
  sub_1A34C8A90();
  v5 = (v3 + v4[7]);
  v5[3] = v2;
  v5[4] = &off_1F1627328;
  *v5 = v1;
  v6 = (v3 + v4[8]);
  v6[3] = &type metadata for PosterConfigurationSource;
  v6[4] = &off_1F16220A8;
  v7 = swift_allocObject();
  *v6 = v7;
  sub_1A335DA24(v0 + 16, v7 + 16);
  *(v3 + v4[5]) = 1;
  *(v3 + v4[6]) = 0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + 368);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_1A3298DD8(0, v9[2] + 1, 1, *(v0 + 368));
  }

  v11 = v9[2];
  v10 = v9[3];
  if (v11 >= v10 >> 1)
  {
    v9 = sub_1A3298DD8(v10 > 1, v11 + 1, 1, v9);
  }

  v12 = *(v0 + 360);
  v14 = *(v0 + 304);
  v13 = *(v0 + 312);
  sub_1A31ECC9C(*(v0 + 352), *(v0 + 202));

  sub_1A335D9D0(v0 + 16);
  v9[2] = v11 + 1;
  sub_1A3336E78(v13, v9 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v11);
  sub_1A33C9048(v0 + 208);
  v15 = *(v0 + 208);
  if (v15)
  {
    v16 = *(v0 + 216);
    v17 = *(v0 + 224);
    *(v0 + 360) = v15;
    *(v0 + 368) = v9;
    *(v0 + 352) = v16;
    *(v0 + 202) = v17;
    v18 = *(v0 + 280);
    *(v0 + 232) = v16;
    *(v0 + 240) = v17;
    *(v0 + 376) = type metadata accessor for MemojiAvatarSource();
    swift_allocObject();
    v19 = v15;
    sub_1A31EE004(v16, v17);
    v20 = sub_1A341C270(v19, v0 + 232);
    *(v0 + 384) = v20;

    v21 = *v18;
    v22 = swift_task_alloc();
    *(v0 + 392) = v22;
    *v22 = v0;
    v22[1] = sub_1A33CAA2C;

    return sub_1A34198E8(v0 + 16, v21, v20);
  }

  else
  {
    v24 = *(v0 + 201);

    if (v24 == 1)
    {
      *(v0 + 264) = &type metadata for MemojiSuggestionsCacheKey;
    }

    else
    {
      *(v0 + 256) = &type metadata for AnimojiSuggestionsCacheKey;
    }

    sub_1A34CDA40();
    sub_1A33C8F44(v9, v26, &unk_1EB0CA358);
    sub_1A34C9E80();

    v25 = *(v0 + 8);

    return v25(v9);
  }
}

uint64_t sub_1A33CAEC4()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 202);

  sub_1A31ECC9C(v1, v2);

  sub_1A34C9E80();

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_1A33CAFD8()
{
  result = qword_1EB0C24A0;
  if (!qword_1EB0C24A0)
  {
    type metadata accessor for MemojiAvatarSource();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C24A0);
  }

  return result;
}

unint64_t sub_1A33CB030()
{
  result = qword_1EB0CA368;
  if (!qword_1EB0CA368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CA368);
  }

  return result;
}

unint64_t sub_1A33CB0C8()
{
  result = qword_1EB0CA3D8;
  if (!qword_1EB0CA3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CA3D8);
  }

  return result;
}

unint64_t sub_1A33CB11C(uint64_t a1)
{
  result = sub_1A33CB144();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A33CB144()
{
  result = qword_1EB0CA3E0;
  if (!qword_1EB0CA3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CA3E0);
  }

  return result;
}

unint64_t sub_1A33CB19C()
{
  result = qword_1EB0CA3E8;
  if (!qword_1EB0CA3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CA3E8);
  }

  return result;
}

unint64_t sub_1A33CB1F0(uint64_t a1)
{
  result = sub_1A33CB218();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A33CB218()
{
  result = qword_1EB0CA3F0;
  if (!qword_1EB0CA3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CA3F0);
  }

  return result;
}

unint64_t sub_1A33CB26C(uint64_t a1)
{
  result = sub_1A33CB030();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A33CB298()
{
  result = qword_1EB0CA3F8;
  if (!qword_1EB0CA3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CA3F8);
  }

  return result;
}

uint64_t ContactCardHeroView.init(contact:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ContactCardHeroView(0);
  v5 = v4[5];
  *(a2 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA420);
  swift_storeEnumTagMultiPayload();
  v6 = v4[6];
  *(a2 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA5E0);
  swift_storeEnumTagMultiPayload();
  v7 = a2 + v4[7];
  *v7 = vdupq_n_s64(0x3FD6666666666666uLL);
  *(v7 + 16) = xmmword_1A34E7710;
  *(v7 + 32) = vdupq_n_s64(0x3FDB851EB851EB85uLL);
  *(v7 + 48) = xmmword_1A34E7720;
  *(v7 + 64) = 0x3FE0A3D70A3D70A4;
  result = swift_allocObject();
  *(result + 16) = a1;
  *a2 = sub_1A3345408;
  *(a2 + 8) = result;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_1A33CB444()
{
  v0 = sub_1A34CA250();
  __swift_allocate_value_buffer(v0, qword_1EB0ECF78);
  __swift_project_value_buffer(v0, qword_1EB0ECF78);
  return sub_1A34CA240();
}

uint64_t sub_1A33CB4BC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A34CB0B0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA5E0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for ContactCardHeroView(0);
  sub_1A328D790(v1 + *(v10 + 24), v9, &unk_1EB0CA5E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1A329D98C(v9, a1, &qword_1EB0C80D8);
  }

  sub_1A34CD650();
  v12 = sub_1A34CBA30();
  sub_1A34CA210();

  sub_1A34CB0A0();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

void sub_1A33CB6A4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double *a4@<X8>)
{
  v149 = a3;
  v152 = a4;
  v6 = sub_1A34CB5F0();
  v150 = *(v6 - 8);
  v151 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v142 = &v133 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C80F8);
  MEMORY[0x1EEE9AC00](v148);
  v144 = &v133 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v135 = &v133 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v138 = &v133 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v141 = &v133 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v133 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C80D8);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v143 = &v133 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v145 = &v133 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v133 = &v133 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v134 = &v133 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v137 = &v133 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v136 = &v133 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v140 = &v133 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v139 = &v133 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v133 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v133 - v38;
  v40 = sub_1A34CB400();
  v41 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v43 = &v133 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = *(a2 + 8);
  v45 = *(a2 + 16);
  sub_1A34CB640();
  v146 = a1;
  sub_1A34CA7D0();
  v47 = v46;
  v49 = v48;
  width = v50;
  v53 = v52;
  (*(v41 + 8))(v43, v40);
  if (!(v44 >> 62))
  {
    sub_1A34CA7B0();
    v62 = v61;
    v64 = v150;
    v63 = v151;
    (*(v150 + 104))(v39, *MEMORY[0x1E697FF40], v151);
    (*(v64 + 56))(v39, 0, 1, v63);
    v65 = *(v148 + 48);
    sub_1A328D790(v149, v17, &qword_1EB0C80D8);
    sub_1A328D790(v39, &v17[v65], &qword_1EB0C80D8);
    v66 = *(v64 + 48);
    if (v66(v17, 1, v63) == 1)
    {
      sub_1A3288FDC(v39, &qword_1EB0C80D8);
      v67 = v66(&v17[v65], 1, v63);
      v68 = v147;
      if (v67 == 1)
      {
        sub_1A3288FDC(v17, &qword_1EB0C80D8);
        v69 = v152;
LABEL_25:
        ++v68;
        goto LABEL_26;
      }
    }

    else
    {
      sub_1A328D790(v17, v36, &qword_1EB0C80D8);
      if (v66(&v17[v65], 1, v63) != 1)
      {
        v80 = &v17[v65];
        v81 = v142;
        (*(v64 + 32))(v142, v80, v63);
        sub_1A33D0FE0(&qword_1EB0C0720, MEMORY[0x1E697FF50]);
        v82 = sub_1A34CD040();
        v83 = *(v64 + 8);
        v83(v81, v63);
        sub_1A3288FDC(v39, &qword_1EB0C80D8);
        v83(v36, v63);
        sub_1A3288FDC(v17, &qword_1EB0C80D8);
        v69 = v152;
        v68 = v147;
        if (v82)
        {
          goto LABEL_25;
        }

LABEL_26:
        v84 = *v68;
        v49 = v49 + v62;
LABEL_34:
        CGAffineTransformMakeScale(&v153, 1.0, v84);
        v155.width = width;
        v155.height = v53;
        v101 = CGSizeApplyAffineTransform(v155, &v153);
        height = v101.height;
        width = v101.width;
        goto LABEL_35;
      }

      sub_1A3288FDC(v39, &qword_1EB0C80D8);
      (*(v64 + 8))(v36, v63);
      v68 = v147;
    }

    sub_1A3288FDC(v17, &qword_1EB0C80F8);
    v69 = v152;
    goto LABEL_26;
  }

  if (v44 >> 62 != 1)
  {
    CGAffineTransformMakeScale(&v153, 1.0, 0.25);
    v154.width = width;
    v154.height = v53;
    v71 = CGSizeApplyAffineTransform(v154, &v153);
    height = v71.height;
    width = v71.width;
    v69 = v152;
    goto LABEL_35;
  }

  v54 = [objc_allocWithZone(CNUIPRSPosterConfigurationAttributes) initWithCNConfiguration_];
  v55 = [v54 extensionIdentifier];
  if (!v55)
  {

    v60 = v145;
    goto LABEL_16;
  }

  v56 = v55;
  v57 = sub_1A34CD110();
  v59 = v58;

  v60 = v145;
  if (!v59)
  {
LABEL_16:

    v73 = v150;
    v72 = v151;
    v74 = v144;
    v75 = v143;
    goto LABEL_17;
  }

  if (v57 == 0xD00000000000002CLL && 0x80000001A350EE80 == v59)
  {

    goto LABEL_28;
  }

  v85 = sub_1A34CDE30();

  if (v85)
  {
LABEL_28:
    v87 = v150;
    v86 = v151;

    sub_1A34CA7B0();
    v89 = v88;
    v90 = v139;
    (*(v87 + 104))(v139, *MEMORY[0x1E697FF40], v86);
    (*(v87 + 56))(v90, 0, 1, v86);
    v91 = *(v148 + 48);
    v92 = v141;
    sub_1A328D790(v149, v141, &qword_1EB0C80D8);
    sub_1A328D790(v90, v92 + v91, &qword_1EB0C80D8);
    v93 = *(v87 + 48);
    v94 = v93(v92, 1, v86);
    v95 = v140;
    if (v94 == 1)
    {
      sub_1A3288FDC(v90, &qword_1EB0C80D8);
      v96 = v93(v92 + v91, 1, v86);
      v69 = v152;
      v97 = v147;
      if (v96 == 1)
      {
        sub_1A3288FDC(v92, &qword_1EB0C80D8);
LABEL_43:
        ++v97;
        goto LABEL_44;
      }
    }

    else
    {
      sub_1A328D790(v92, v140, &qword_1EB0C80D8);
      if (v93(v92 + v91, 1, v86) != 1)
      {
        v102 = v92 + v91;
        v103 = v142;
        (*(v87 + 32))(v142, v102, v86);
        sub_1A33D0FE0(&qword_1EB0C0720, MEMORY[0x1E697FF50]);
        v104 = sub_1A34CD040();
        v105 = *(v87 + 8);
        v105(v103, v86);
        sub_1A3288FDC(v90, &qword_1EB0C80D8);
        v105(v95, v86);
        sub_1A3288FDC(v92, &qword_1EB0C80D8);
        v69 = v152;
        v97 = v147;
        if (v104)
        {
          goto LABEL_43;
        }

LABEL_44:
        v49 = v49 + v89;
        height = v53 * *v97;
        goto LABEL_35;
      }

      sub_1A3288FDC(v90, &qword_1EB0C80D8);
      (*(v87 + 8))(v95, v86);
      v69 = v152;
      v97 = v147;
    }

    sub_1A3288FDC(v92, &qword_1EB0C80F8);
    goto LABEL_44;
  }

  v73 = v150;
  v72 = v151;
  if (v57 == 0xD000000000000028 && 0x80000001A350EF00 == v59)
  {

    goto LABEL_46;
  }

  v106 = sub_1A34CDE30();

  if ((v106 & 1) == 0)
  {
    if (v57 == 0xD00000000000002ELL && 0x80000001A350EED0 == v59)
    {

      goto LABEL_66;
    }

    v122 = sub_1A34CDE30();

    v74 = v144;
    v75 = v143;
    if (v122)
    {
LABEL_66:
      v123 = v134;
      (*(v73 + 104))(v134, *MEMORY[0x1E697FF40], v72);
      (*(v73 + 56))(v123, 0, 1, v72);
      v124 = *(v148 + 48);
      v125 = v135;
      sub_1A328D790(v149, v135, &qword_1EB0C80D8);
      sub_1A328D790(v123, v125 + v124, &qword_1EB0C80D8);
      v126 = *(v73 + 48);
      if (v126(v125, 1, v72) == 1)
      {
        sub_1A3288FDC(v123, &qword_1EB0C80D8);
        if (v126(v125 + v124, 1, v72) == 1)
        {
          sub_1A3288FDC(v125, &qword_1EB0C80D8);
          v69 = v152;
LABEL_74:
          v49 = v49 + v147[3];
          v84 = v147[5];
          goto LABEL_34;
        }
      }

      else
      {
        v127 = v133;
        sub_1A328D790(v125, v133, &qword_1EB0C80D8);
        if (v126(v125 + v124, 1, v72) != 1)
        {
          v129 = v125 + v124;
          v130 = v142;
          (*(v73 + 32))(v142, v129, v72);
          sub_1A33D0FE0(&qword_1EB0C0720, MEMORY[0x1E697FF50]);
          v131 = sub_1A34CD040();
          v132 = *(v73 + 8);
          v132(v130, v72);
          sub_1A3288FDC(v123, &qword_1EB0C80D8);
          v132(v127, v72);
          sub_1A3288FDC(v125, &qword_1EB0C80D8);
          v69 = v152;
          if (v131)
          {
            goto LABEL_74;
          }

          goto LABEL_72;
        }

        sub_1A3288FDC(v123, &qword_1EB0C80D8);
        (*(v73 + 8))(v127, v72);
      }

      sub_1A3288FDC(v125, &qword_1EB0C80F8);
      v69 = v152;
LABEL_72:
      sub_1A34CA7B0();
      v49 = v49 + v128 * 0.66;
      v84 = v147[4];
      goto LABEL_34;
    }

LABEL_17:
    (*(v73 + 104))(v60, *MEMORY[0x1E697FF40], v72);
    (*(v73 + 56))(v60, 0, 1, v72);
    v76 = *(v148 + 48);
    sub_1A328D790(v149, v74, &qword_1EB0C80D8);
    sub_1A328D790(v60, v74 + v76, &qword_1EB0C80D8);
    v77 = *(v73 + 48);
    if (v77(v74, 1, v72) == 1)
    {
      sub_1A3288FDC(v60, &qword_1EB0C80D8);
      v78 = v77(v74 + v76, 1, v72);
      v69 = v152;
      if (v78 == 1)
      {
        sub_1A3288FDC(v74, &qword_1EB0C80D8);
LABEL_32:
        v79 = v147 + 1;
        goto LABEL_33;
      }
    }

    else
    {
      sub_1A328D790(v74, v75, &qword_1EB0C80D8);
      if (v77(v74 + v76, 1, v72) != 1)
      {
        v98 = v142;
        (*(v73 + 32))(v142, v74 + v76, v72);
        sub_1A33D0FE0(&qword_1EB0C0720, MEMORY[0x1E697FF50]);
        v99 = sub_1A34CD040();
        v100 = *(v73 + 8);
        v100(v98, v72);
        sub_1A3288FDC(v60, &qword_1EB0C80D8);
        v100(v75, v72);
        sub_1A3288FDC(v74, &qword_1EB0C80D8);
        v69 = v152;
        if (v99)
        {
          goto LABEL_32;
        }

LABEL_23:
        v79 = v147;
LABEL_33:
        v84 = *v79;
        goto LABEL_34;
      }

      sub_1A3288FDC(v60, &qword_1EB0C80D8);
      (*(v73 + 8))(v75, v72);
      v69 = v152;
    }

    sub_1A3288FDC(v74, &qword_1EB0C80F8);
    goto LABEL_23;
  }

LABEL_46:

  v107 = v136;
  (*(v73 + 104))(v136, *MEMORY[0x1E697FF40], v72);
  (*(v73 + 56))(v107, 0, 1, v72);
  v108 = *(v148 + 48);
  v109 = v138;
  sub_1A328D790(v149, v138, &qword_1EB0C80D8);
  sub_1A328D790(v107, v109 + v108, &qword_1EB0C80D8);
  v110 = *(v73 + 48);
  v111 = v110(v109, 1, v72);
  v112 = v137;
  if (v111 == 1)
  {
    sub_1A3288FDC(v107, &qword_1EB0C80D8);
    v113 = v110(v109 + v108, 1, v72);
    v114 = v147;
    if (v113 == 1)
    {
      sub_1A3288FDC(v109, &qword_1EB0C80D8);
      v69 = v152;
LABEL_59:
      CGAffineTransformMakeScale(&v153, 1.0, v114[8]);
      v157.width = width;
      v157.height = v53;
      v121 = CGSizeApplyAffineTransform(v157, &v153);
      height = v121.height;
      v49 = v49 + v114[6];
      if (v121.width / v121.height <= 1.1)
      {
        width = v121.width;
      }

      else
      {
        width = v121.height * 1.1;
      }

      if (v121.width / v121.height > 1.1)
      {
        v47 = (v121.width - v121.height * 1.1) * 0.5;
      }

      goto LABEL_35;
    }

    goto LABEL_51;
  }

  sub_1A328D790(v109, v137, &qword_1EB0C80D8);
  if (v110(v109 + v108, 1, v72) == 1)
  {
    sub_1A3288FDC(v107, &qword_1EB0C80D8);
    (*(v73 + 8))(v112, v72);
    v114 = v147;
LABEL_51:
    sub_1A3288FDC(v109, &qword_1EB0C80F8);
    v69 = v152;
    goto LABEL_52;
  }

  v117 = v109 + v108;
  v118 = v142;
  (*(v73 + 32))(v142, v117, v72);
  sub_1A33D0FE0(&qword_1EB0C0720, MEMORY[0x1E697FF50]);
  v119 = sub_1A34CD040();
  v120 = *(v73 + 8);
  v120(v118, v72);
  sub_1A3288FDC(v107, &qword_1EB0C80D8);
  v120(v112, v72);
  sub_1A3288FDC(v109, &qword_1EB0C80D8);
  v69 = v152;
  v114 = v147;
  if (v119)
  {
    goto LABEL_59;
  }

LABEL_52:
  CGAffineTransformMakeScale(&v153, 1.0, v114[7]);
  v156.width = width;
  v156.height = v53;
  v115 = CGSizeApplyAffineTransform(v156, &v153);
  width = v115.width;
  sub_1A34CA7B0();
  height = v115.height;
  v49 = v49 + v116 * 0.66;
  if (v115.width / v115.height > 1.1)
  {
    width = v115.height * 1.1;
    v47 = (v115.width - v115.height * 1.1) * 0.5;
  }

LABEL_35:
  *v69 = v47;
  v69[1] = v49;
  v69[2] = width;
  v69[3] = height;
}

uint64_t sub_1A33CCB78(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
  type metadata accessor for ContactCardHeroView.Model(0);
  v3 = swift_allocObject();
  sub_1A33CEC88(a1, v2);
  return v3;
}

uint64_t ContactCardHeroView.body.getter()
{
  v1 = type metadata accessor for ContactCardHeroView(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1A33D12F0(v0, v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ContactCardHeroView);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_1A33D1358(v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4, type metadata accessor for ContactCardHeroView);
  v7[0] = sub_1A33D0BCC;
  v7[1] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA430);
  sub_1A3284D0C(&qword_1EB0C0FF8, &unk_1EB0CA430);
  sub_1A34CC1F0();
}

uint64_t sub_1A33CCD78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA468);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C80D8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v21 - v10;
  v12 = (a2 + *(type metadata accessor for ContactCardHeroView(0) + 28));
  v13 = v12[3];
  v31 = v12[2];
  v32 = v13;
  v33 = *(v12 + 8);
  v14 = v12[1];
  v29 = *v12;
  v30 = v14;
  type metadata accessor for ContactCardHeroView.Model(0);
  sub_1A33D0FE0(&unk_1EB0C2420, type metadata accessor for ContactCardHeroView.Model);
  sub_1A34CA650();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A34CA370();

  v21 = v23;
  v22 = v24;
  sub_1A33CB4BC(v11);
  sub_1A33CB6A4(a1, &v21, v11, &v25);
  sub_1A3288FDC(v11, &qword_1EB0C80D8);
  sub_1A33D17F0(v21, *(&v21 + 1), v22);
  v15 = v25;
  v16 = v26;
  v17 = v27;
  v18 = v28;
  sub_1A33CD068(v8, v25, v26, v27, v28);
  sub_1A33D180C();
  sub_1A34CC1F0();
  sub_1A3288FDC(v8, &qword_1EB0CA468);
  type metadata accessor for PosterLayoutPreferencesValue();
  v19 = swift_allocObject();
  v19[2] = v15;
  v19[3] = v16;
  v19[4] = v17;
  v19[5] = v18;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA508);
  *(a3 + *(result + 36)) = v19;
  return result;
}

uint64_t sub_1A33CD068@<X0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v72 = a1;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA4F0);
  MEMORY[0x1EEE9AC00](v64);
  v10 = &v58 - v9;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA4E0);
  MEMORY[0x1EEE9AC00](v71);
  v65 = &v58 - v11;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA510);
  MEMORY[0x1EEE9AC00](v62);
  v13 = (&v58 - v12);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA4B0);
  MEMORY[0x1EEE9AC00](v61);
  v15 = (&v58 - v14);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA490);
  MEMORY[0x1EEE9AC00](v67);
  v63 = &v58 - v16;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA518);
  MEMORY[0x1EEE9AC00](v69);
  v70 = &v58 - v17;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA520);
  MEMORY[0x1EEE9AC00](v66);
  v19 = &v58 - v18;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA480);
  MEMORY[0x1EEE9AC00](v68);
  v21 = &v58 - v20;
  type metadata accessor for ContactCardHeroView.Model(0);
  sub_1A33D0FE0(&unk_1EB0C2420, type metadata accessor for ContactCardHeroView.Model);
  sub_1A34CA650();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A34CA370();

  v22 = v83;
  v23 = v84;
  v24 = v85;
  if (v84 >> 62)
  {
    if (v84 >> 62 == 1)
    {
      v66 = HIDWORD(v83);
      KeyPath = swift_getKeyPath();
      v76 = 0;
      v80[0] = 0;
      v26 = v24;
      sub_1A34CC730();
      LODWORD(v63) = v73[0];
      v67 = v74;
      v58 = v24;
      v27 = v22 & 1;
      v28 = v23 & 1;
      v75 = 0;
      v29 = v76;
      v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA500) + 36);
      v59 = v23;
      v31 = &v10[v30];
      v32 = type metadata accessor for ContactCardHeroView.ScrollPositionBlurEffect(0);
      v60 = v22;
      v33 = v32;
      sub_1A33CB4BC(&v31[*(v32 + 20)]);
      *v31 = 1;
      v34 = &v31[*(v33 + 24)];
      type metadata accessor for ContactPosterScrollGeometryObserver(0);
      sub_1A33D0FE0(&qword_1EB0C13A8, type metadata accessor for ContactPosterScrollGeometryObserver);
      *v34 = sub_1A34CA600();
      v34[8] = v35 & 1;
      *v10 = KeyPath;
      v10[8] = v29;
      *(v10 + 3) = *&v73[3];
      *(v10 + 9) = *v73;
      v10[16] = v27;
      v10[19] = v82;
      *(v10 + 17) = v81;
      *(v10 + 5) = v66;
      v10[24] = v28;
      *(v10 + 7) = *&v80[3];
      *(v10 + 25) = *v80;
      *(v10 + 4) = v26;
      *(v10 + 5) = 0;
      v10[48] = 0;
      *(v10 + 13) = *&v79[3];
      *(v10 + 49) = *v79;
      *(v10 + 7) = a2;
      *(v10 + 8) = a3;
      *(v10 + 9) = a4;
      *(v10 + 10) = a5;
      v10[88] = 0;
      *(v10 + 23) = *&v78[3];
      *(v10 + 89) = *v78;
      v10[96] = v63;
      *(v10 + 97) = *v77;
      *(v10 + 25) = *&v77[3];
      *(v10 + 13) = v67;
      v36 = sub_1A34CAC60();
      v37 = sub_1A34CBA90();
      v38 = &v10[*(v64 + 36)];
      *v38 = v36;
      v38[8] = v37;
      sub_1A33D1C30(&qword_1EB0C0C68, &unk_1EB0CA4F0, &unk_1A34F06E0, sub_1A33D1CB4);
      v39 = v65;
      sub_1A34CC1F0();
      sub_1A3288FDC(v10, &unk_1EB0CA4F0);
      v40 = &unk_1EB0CA4E0;
      sub_1A328D790(v39, v70, &unk_1EB0CA4E0);
      swift_storeEnumTagMultiPayload();
      sub_1A33D191C();
      sub_1A33D1B48();
      sub_1A34CB3E0();
      sub_1A33D17F0(v60, v59, v58);
      v41 = v39;
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      sub_1A33D19A8();
      sub_1A34CB3E0();
      v40 = &unk_1EB0CA480;
      sub_1A328D790(v21, v70, &unk_1EB0CA480);
      swift_storeEnumTagMultiPayload();
      sub_1A33D191C();
      sub_1A33D1B48();
      sub_1A34CB3E0();
      v41 = v21;
    }
  }

  else
  {
    *v15 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA420);
    swift_storeEnumTagMultiPayload();
    v42 = v15 + *(type metadata accessor for BackgroundRepresentationModifier() + 20);
    *v42 = v22;
    v42[8] = v23;
    sub_1A31EE004(v22, v23);
    v43 = sub_1A34CAC60();
    v60 = v22;
    v44 = v43;
    v45 = sub_1A34CBA90();
    v46 = v15 + *(v61 + 36);
    *v46 = v44;
    v46[8] = v45;
    v59 = v23;
    v58 = v24;
    sub_1A33D1C30(&qword_1EB0C0B18, &unk_1EB0CA4B0, &unk_1A34F06C0, sub_1A32F6838);
    v47 = v63;
    sub_1A34CC1F0();
    sub_1A3288FDC(v15, &unk_1EB0CA4B0);
    v65 = sub_1A34CCC80();
    v49 = v48;
    v50 = v47 + *(v67 + 36);
    type metadata accessor for ContactCardHeroView(0);
    *v13 = sub_1A34CCC80();
    v13[1] = v51;
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA528);
    sub_1A33CDB20(v13 + *(v52 + 44), a2, a3, a4, a5);
    v53 = sub_1A34CAC60();
    v54 = sub_1A34CBA90();
    v55 = v13 + *(v62 + 36);
    *v55 = v53;
    v55[8] = v54;
    sub_1A33D1D70();
    sub_1A34CC1F0();
    sub_1A3288FDC(v13, &qword_1EB0CA510);
    v56 = (v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA4D0) + 36));
    *v56 = v65;
    v56[1] = v49;
    v40 = &unk_1EB0CA490;
    sub_1A328D790(v47, v19, &unk_1EB0CA490);
    swift_storeEnumTagMultiPayload();
    sub_1A33D19A8();
    sub_1A34CB3E0();
    sub_1A328D790(v21, v70, &unk_1EB0CA480);
    swift_storeEnumTagMultiPayload();
    sub_1A33D191C();
    sub_1A33D1B48();
    sub_1A34CB3E0();
    sub_1A33D17F0(v60, v59, v58);
    sub_1A3288FDC(v21, &unk_1EB0CA480);
    v41 = v47;
  }

  return sub_1A3288FDC(v41, v40);
}

uint64_t sub_1A33CDB20@<X0>(uint64_t a1@<X8>, CGFloat a2@<D1>, CGFloat a3@<D2>, CGFloat a4@<D3>, CGFloat a5@<D4>)
{
  v58 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA548);
  v55 = *(v9 - 8);
  v56 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v53 = &v52 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA550);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v57 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v52 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA558);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v52 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA560);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v54 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v52 - v22;
  type metadata accessor for ContactCardHeroView.Model(0);
  sub_1A33D0FE0(&unk_1EB0C2420, type metadata accessor for ContactCardHeroView.Model);
  v24 = *(sub_1A34CA650() + 16);

  v25 = type metadata accessor for CNContactAvatarContact();
  swift_allocObject();
  v26 = sub_1A32F27E4(v24, 1);
  *(&v69 + 1) = v25;
  v70 = sub_1A33D0FE0(&qword_1ED8547B0, type metadata accessor for CNContactAvatarContact);
  *&v68 = v26;
  *&v71 = 0;
  sub_1A34CCC80();
  sub_1A34CA760();
  sub_1A32A43A4(&v68, v18);
  v27 = v78;
  *(v18 + 56) = v77;
  *(v18 + 72) = v27;
  *(v18 + 88) = v79;
  sub_1A32A4400(&v68);
  v85.origin.x = a2;
  v85.origin.y = a3;
  v85.size.width = a4;
  v85.size.height = a5;
  MidX = CGRectGetMidX(v85);
  v86.origin.x = a2;
  v86.origin.y = a3;
  v86.size.width = a4;
  v86.size.height = a5;
  MidY = CGRectGetMidY(v86);
  *(v18 + 13) = MidX;
  *(v18 + 14) = MidY;
  v30 = &v18[*(v16 + 36)];
  v31 = type metadata accessor for ContactCardHeroView.ScrollPositionBlurEffect(0);
  sub_1A33CB4BC(&v30[*(v31 + 20)]);
  *v30 = 0;
  v32 = &v30[*(v31 + 24)];
  type metadata accessor for ContactPosterScrollGeometryObserver(0);
  sub_1A33D0FE0(&qword_1EB0C13A8, type metadata accessor for ContactPosterScrollGeometryObserver);
  *v32 = sub_1A34CA600();
  v32[8] = v33 & 1;
  sub_1A33D1E28();
  sub_1A34CC1F0();
  sub_1A3288FDC(v18, &qword_1EB0CA558);
  v34 = [objc_opt_self() standardPreferences];
  v35 = sub_1A34CD0E0();
  LODWORD(v32) = [v34 userHasOptedInToPreference_];

  if (v32)
  {
    v36 = sub_1A34CC490();
    sub_1A34CA670();
    v37 = v80;
    v38 = v82;
    v39 = v83;
    v40 = v84;
    v41 = sub_1A34CCC80();
    v43 = v42;
    sub_1A34CCC80();
    sub_1A34CA760();
    v87.origin.x = a2;
    v87.origin.y = a3;
    v87.size.width = a4;
    v87.size.height = a5;
    v44 = CGRectGetMidX(v87);
    v88.origin.x = a2;
    v88.origin.y = a3;
    v88.size.width = a4;
    v88.size.height = a5;
    v45 = CGRectGetMidY(v88);
    v59 = __PAIR128__(v81, v37);
    *&v60 = v38;
    *(&v60 + 1) = v39;
    *&v61 = v40;
    *(&v61 + 1) = v36;
    LOWORD(v62) = 256;
    *(&v62 + 1) = v41;
    *&v63[0] = v43;
    *(v63 + 8) = v65;
    *(&v63[1] + 8) = v66;
    *(&v63[2] + 8) = v67;
    *(&v63[3] + 1) = v44;
    v64 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA5A8);
    sub_1A33D1F70();
    v46 = v53;
    sub_1A34CC1F0();
    v74 = v63[2];
    v75 = v63[3];
    v76 = v64;
    v70 = v61;
    v71 = v62;
    v72 = v63[0];
    v73 = v63[1];
    v68 = v59;
    v69 = v60;
    sub_1A3288FDC(&v68, &qword_1EB0CA5A8);
    sub_1A329D98C(v46, v15, &qword_1EB0CA548);
    (*(v55 + 56))(v15, 0, 1, v56);
  }

  else
  {
    (*(v55 + 56))(v15, 1, 1, v56);
  }

  v47 = v54;
  sub_1A328D790(v23, v54, &unk_1EB0CA560);
  v48 = v57;
  sub_1A328D790(v15, v57, &qword_1EB0CA550);
  v49 = v58;
  sub_1A328D790(v47, v58, &unk_1EB0CA560);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA5A0);
  sub_1A328D790(v48, v49 + *(v50 + 48), &qword_1EB0CA550);
  sub_1A3288FDC(v15, &qword_1EB0CA550);
  sub_1A3288FDC(v23, &unk_1EB0CA560);
  sub_1A3288FDC(v48, &qword_1EB0CA550);
  return sub_1A3288FDC(v47, &unk_1EB0CA560);
}

double sub_1A33CE2B4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C80D8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v39 = &v36 - v2;
  v3 = sub_1A34CB5F0();
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v37 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v36 = &v36 - v6;
  v7 = sub_1A34CB0B0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ContactCardHeroView.ScrollPositionBlurEffect(0);
  v12 = *(v11 + 24);
  v38 = v0;
  v13 = (v0 + v12);
  v14 = *v13;
  v15 = *(v13 + 8);
  sub_1A34C9010();
  v16 = v14;
  if ((v15 & 1) == 0)
  {
    sub_1A34CD650();
    v17 = sub_1A34CBA30();
    sub_1A34CA210();

    sub_1A34CB0A0();
    swift_getAtKeyPath();

    (*(v8 + 8))(v10, v7);
    v16 = v43;
  }

  swift_getKeyPath();
  v43 = v16;
  sub_1A33D0FE0(&qword_1EB0C13A8, type metadata accessor for ContactPosterScrollGeometryObserver);
  sub_1A34C99A0();

  swift_beginAccess();
  v18 = *(v16 + 24);
  v19 = *(v16 + 32);

  v20 = 0.0;
  if ((v19 & 1) == 0)
  {
    sub_1A34C9010();
    if ((v15 & 1) == 0)
    {
      sub_1A34CD650();
      v21 = sub_1A34CBA30();
      sub_1A34CA210();

      sub_1A34CB0A0();
      swift_getAtKeyPath();

      (*(v8 + 8))(v10, v7);
      v14 = v42;
    }

    swift_getKeyPath();
    v42 = v14;
    sub_1A34C99A0();

    swift_beginAccess();
    v22 = *(v14 + 40);
    v23 = *(v14 + 72);

    if ((v23 & 1) == 0)
    {
      v24 = v39;
      sub_1A328D790(v38 + *(v11 + 20), v39, &qword_1EB0C80D8);
      v26 = v40;
      v25 = v41;
      if ((*(v40 + 48))(v24, 1, v41) == 1)
      {
        sub_1A3288FDC(v24, &qword_1EB0C80D8);
      }

      else
      {
        v27 = v36;
        (*(v26 + 32))(v36, v24, v25);
        v28 = (v18 + v22) / 200.0;
        v29 = 0.0;
        if (v28 >= 0.0)
        {
          v29 = (v18 + v22) / 200.0;
        }

        if (v28 >= 1.0)
        {
          v30 = 1.0;
        }

        else
        {
          v30 = v29;
        }

        v31 = v37;
        (*(v26 + 104))(v37, *MEMORY[0x1E697FF38], v25);
        v32 = sub_1A34CB5E0();
        v33 = *(v26 + 8);
        v33(v31, v25);
        v33(v27, v25);
        v34 = 3.5;
        if (v32)
        {
          v34 = 3.0;
        }

        return v30 * v34;
      }
    }
  }

  return v20;
}

uint64_t sub_1A33CE7D8()
{
  sub_1A34CADD0();
  sub_1A33D0FE0(&qword_1EB0C0970, MEMORY[0x1E697ED30]);
  return sub_1A34CA710();
}

uint64_t sub_1A33CE86C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A34CA370();
}

uint64_t sub_1A33CE8E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v5 = sub_1A33CE2B4();
  sub_1A33D12F0(v2, v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ContactCardHeroView.ScrollPositionBlurEffect);
  v6 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  sub_1A33D1358(v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for ContactCardHeroView.ScrollPositionBlurEffect);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA448);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA450);
  v10 = sub_1A3284D0C(&unk_1EB0C0768, &qword_1EB0CA448);
  v11 = sub_1A34CADD0();
  v12 = sub_1A33D0FE0(&qword_1EB0C0970, MEMORY[0x1E697ED30]);
  v15[0] = v11;
  v15[1] = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x1A58ED790](sub_1A33D13C0, v7, v8, v9, v10, OpaqueTypeConformance2);
}

uint64_t sub_1A33CEB00(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  sub_1A33D12F0(v1, v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ContactCardHeroView);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_1A33D1358(v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4, type metadata accessor for ContactCardHeroView);
  v7[0] = sub_1A33D22C0;
  v7[1] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA430);
  sub_1A3284D0C(&qword_1EB0C0FF8, &unk_1EB0CA430);
  sub_1A34CC1F0();
}

uint64_t sub_1A33CEC88(void *a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6110);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v126 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA460);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v126 - v11;
  v13 = OBJC_IVAR____TtCV14ContactsUICore19ContactCardHeroView5Model__representation;
  v140 = xmmword_1A34F02C0;
  *&v141 = 0;
  sub_1A34CA330();
  (*(v10 + 32))(v3 + v13, v12, v9);
  *(v3 + 16) = a1;
  v14 = qword_1EB0C1238;
  v15 = a1;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = sub_1A34CA250();
  v17 = __swift_project_value_buffer(v16, qword_1EB0ECF78);
  v18 = v15;
  v19 = sub_1A34CA230();
  v20 = sub_1A34CD660();

  v21 = os_log_type_enabled(v19, v20);
  v129 = a2;
  v130 = v3;
  v128 = v8;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *&v140 = v23;
    *v22 = 136315138;
    v24 = [v18 identifier];
    v25 = sub_1A34CD110();
    v27 = v26;

    v28 = sub_1A31EE23C(v25, v27, &v140);

    *(v22 + 4) = v28;
    _os_log_impl(&dword_1A31E6000, v19, v20, "Attempting to retrieve poster configuration for contact: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x1A58F1010](v23, -1, -1);
    MEMORY[0x1A58F1010](v22, -1, -1);
  }

  v29 = 0;
  sub_1A344331C();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = v18;
  v37 = sub_1A34CA230();
  v38 = sub_1A34CD660();

  v39 = os_log_type_enabled(v37, v38);
  if (v35)
  {
    if (v39)
    {
      v40 = swift_slowAlloc();
      v128 = swift_slowAlloc();
      *&v140 = v128;
      *v40 = 136315138;
      v41 = [v36 identifier];
      v42 = sub_1A34CD110();
      LODWORD(v127) = v38;
      v43 = v42;
      v45 = v44;

      v46 = sub_1A31EE23C(v43, v45, &v140);

      *(v40 + 4) = v46;
      _os_log_impl(&dword_1A31E6000, v37, v127, "Successfully found poster configuration for contact: %s", v40, 0xCu);
      v47 = v128;
      __swift_destroy_boxed_opaque_existential_0(v128);
      MEMORY[0x1A58F1010](v47, -1, -1);
      MEMORY[0x1A58F1010](v40, -1, -1);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    *&v140 = v31 & 0xFFFFFFFF00000001;
    *(&v140 + 1) = v33 & 1 | 0x4000000000000000;
    *&v141 = v35;
    v48 = v130;
    sub_1A34C9010();
    sub_1A34CA380();

    goto LABEL_9;
  }

  v127 = v17;
  if (v39)
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *&v140 = v50;
    *v49 = 136315138;
    v51 = [v36 identifier];
    v52 = v38;
    v53 = sub_1A34CD110();
    v55 = v54;

    v56 = sub_1A31EE23C(v53, v55, &v140);

    *(v49 + 4) = v56;
    _os_log_impl(&dword_1A31E6000, v37, v52, "No poster configuration found for contact: %s", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v50);
    MEMORY[0x1A58F1010](v50, -1, -1);
    MEMORY[0x1A58F1010](v49, -1, -1);
  }

  v48 = v130;
  v57 = [v18 thumbnailImageData];
  if (!v57)
  {
    v57 = [v18 imageData];
    if (!v57)
    {
      v69 = *MEMORY[0x1E695C328];
      if ([v18 isKeyAvailable_] && objc_msgSend(v18, sel_contactType) == 1 || (v70 = objc_msgSend(objc_opt_self(), sel_stringFromContact_style_, v18, 1002)) == 0)
      {
        v75 = 0;
        v74 = 0xE000000000000000;
      }

      else
      {
        v71 = v70;
        v72 = sub_1A34CD110();
        v74 = v73;

        v75 = v72 & 0xFFFFFFFFFFFFLL;
      }

      v76 = HIBYTE(v74) & 0xF;
      if ((v74 & 0x2000000000000000) == 0)
      {
        v76 = v75;
      }

      if (v76)
      {
        v77 = objc_opt_self();
        v78 = [v77 whiteColor];
        v79 = [v77 whiteColor];
        if ([v18 isKeyAvailable_] && objc_msgSend(v18, sel_contactType) == 1 || (v80 = objc_msgSend(objc_opt_self(), sel_stringFromContact_style_, v18, 1002)) == 0)
        {
          v82 = 0;
          v84 = 0xE000000000000000;
        }

        else
        {
          v81 = v80;
          v82 = sub_1A34CD110();
          v84 = v83;
        }

        v94 = v78;
        v85 = CNContact.monogramSupportedForName.getter();
        v87 = sub_1A33E3C00();
        v86 = sub_1A33E3C00();

        v88 = 0uLL;
        v89 = 0uLL;
        v90 = 0uLL;
        v91 = 0uLL;
        v92 = 0uLL;
        v93 = 0uLL;
        goto LABEL_41;
      }

      if (qword_1EB0C4B08 != -1)
      {
        goto LABEL_56;
      }

      goto LABEL_38;
    }
  }

  v58 = v57;
  v59 = sub_1A34C9690();
  v61 = v60;

  sub_1A31EC234(v59, v61);
  while (1)
  {
    v62 = [v18 backgroundColors];
    if (!v62)
    {
      goto LABEL_53;
    }

    v63 = v62;
    v64 = [v62 contactImage];

    sub_1A31EC194(0, &qword_1ED853440);
    v29 = sub_1A34CD370();

    if (v29 >> 62)
    {
      v65 = sub_1A34CD9B0();
      if (!v65)
      {
LABEL_51:

        v68 = MEMORY[0x1E69E7CC0];
LABEL_52:
        swift_getKeyPath();
        swift_getKeyPath();
        *&v136[0] = v68;
        *(v136 + 8) = xmmword_1A34F02D0;
        sub_1A34C9010();
        sub_1A34CA380();
LABEL_53:
        v118 = sub_1A34CD4A0();
        v119 = v128;
        (*(*(v118 - 8) + 56))(v128, 1, 1, v118);
        sub_1A34CD450();
        v120 = v18;
        sub_1A34C9010();
        v121 = v129;
        v122 = sub_1A34CD440();
        v123 = swift_allocObject();
        v124 = MEMORY[0x1E69E85E0];
        v123[2] = v122;
        v123[3] = v124;
        v123[4] = v120;
        v123[5] = v48;
        v123[6] = v121;
        sub_1A32C0B38(0, 0, v119, &unk_1A34F07A0, v123);

        return v48;
      }
    }

    else
    {
      v65 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v65)
      {
        goto LABEL_51;
      }
    }

    *&v136[0] = MEMORY[0x1E69E7CC0];
    sub_1A34CDB70();
    if ((v65 & 0x8000000000000000) == 0)
    {
      v66 = 0;
      do
      {
        if ((v29 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1A58EF310](v66, v29);
        }

        else
        {
          v67 = *(v29 + 8 * v66 + 32);
        }

        ++v66;
        sub_1A34CC440();
        sub_1A34CDB50();
        sub_1A34CDB80();
        sub_1A34CDB90();
        sub_1A34CDB60();
      }

      while (v65 != v66);

      v68 = *&v136[0];
      goto LABEL_52;
    }

    __break(1u);
LABEL_56:
    swift_once();
LABEL_38:
    v146 = xmmword_1EB0EE010;
    v147 = *&qword_1EB0EE020;
    v148 = byte_1EB0EE030;
    v142 = xmmword_1EB0EDFD0;
    v143 = unk_1EB0EDFE0;
    v144 = xmmword_1EB0EDFF0;
    v145 = unk_1EB0EE000;
    v140 = xmmword_1EB0EDFB0;
    v141 = unk_1EB0EDFC0;
    v85 = byte_1EB0EE030;
    v84 = unk_1EB0EE028;
    v82 = qword_1EB0EE020;
    v87 = *(&xmmword_1EB0EE010 + 1);
    v86 = xmmword_1EB0EE010;
    sub_1A33851C8(&v140, v136);
    v88 = v140;
    v89 = v141;
    v90 = v142;
    v91 = v143;
    v92 = v144;
    v93 = v145;
LABEL_41:
    v136[0] = v88;
    v136[1] = v89;
    v136[2] = v90;
    v136[3] = v91;
    v136[4] = v92;
    v136[5] = v93;
    *&v137 = v86;
    *(&v137 + 1) = v87;
    *&v138 = v82;
    *(&v138 + 1) = v84;
    v139 = v85 & 1;
    v148 = v85 & 1;
    v146 = v137;
    v147 = v138;
    v142 = v90;
    v143 = v91;
    v144 = v92;
    v145 = v93;
    v140 = v88;
    v141 = v89;
    v95 = sub_1A33EA2AC(MEMORY[0x1E69E7CC0]);
    v96 = [objc_allocWithZone(CNUIPRSMutablePosterConfiguration) init];
    v133[5] = 0xD00000000000002CLL;
    v133[6] = 0x80000001A350EE80;
    v134 = v95;
    v135 = v96;
    v131 = 0xD000000000000012;
    v132 = 0x80000001A350AF00;
    sub_1A34CDA40();
    sub_1A34911BC(&v140, v133);
    if (!v29)
    {
      break;
    }

    sub_1A32F7584(v133);
    v97 = v29;
    v98 = sub_1A34CA230();
    v99 = sub_1A34CD640();

    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v133[0] = v101;
      *v100 = 136315138;
      v131 = v29;
      v102 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C69B0);
      v103 = sub_1A34CD170();
      v105 = sub_1A31EE23C(v103, v104, v133);

      *(v100 + 4) = v105;
      _os_log_impl(&dword_1A31E6000, v98, v99, "Failed to save MonogramPosterConfiguration, error: %s", v100, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v101);
      MEMORY[0x1A58F1010](v101, -1, -1);
      MEMORY[0x1A58F1010](v100, -1, -1);
      sub_1A335DA80(v136);
    }

    else
    {
      sub_1A335DA80(v136);
    }

    v48 = v130;
  }

  sub_1A32F7584(v133);
  v106 = v134;
  v107 = objc_opt_self();
  v108 = sub_1A3444DEC(v106, v96);
  v109 = sub_1A34CD0E0();
  v110 = [v107 finalizedConfiguration:v108 forExtensionIdentifier:v109];

  v48 = v130;
  if (v110)
  {
    v111 = v110;
  }

  else
  {
    v111 = sub_1A3444DEC(v106, v96);
  }

  v112 = sub_1A3444A44(v111, 0);
  v114 = v113;
  v115 = v112 & 0xFFFFFFFF00000001;
  v117 = v116 & 1 | 0x4000000000000000;
  swift_getKeyPath();
  swift_getKeyPath();
  v133[0] = v115;
  v133[1] = v117;
  v133[2] = v114;
  sub_1A34C9010();
  sub_1A34CA380();
  sub_1A335DA80(v136);

LABEL_9:

  return v48;
}

uint64_t sub_1A33CFAF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[15] = a5;
  v6[16] = a6;
  v6[14] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6110);
  v6[17] = swift_task_alloc();
  sub_1A34CD450();
  v6[18] = sub_1A34CD440();
  v8 = sub_1A34CD3E0();
  v6[19] = v8;
  v6[20] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1A33CFBCC, v8, v7);
}

uint64_t sub_1A33CFBCC()
{
  v1 = [*(v0 + 112) thumbnailImageData];
  if (!v1)
  {
    v1 = [*(v0 + 112) imageData];
    if (!v1)
    {

      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 16) = xmmword_1A34F02E0;
      *(v0 + 32) = 0;
      sub_1A34C9010();
      sub_1A34CA380();
      goto LABEL_25;
    }
  }

  v2 = v1;
  v3 = sub_1A34C9690();
  v5 = v4;

  *(v0 + 168) = v5;
  *(v0 + 176) = v3;
  v6 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
  sub_1A31EC1E0(v3, v5);
  v7 = sub_1A34C9680();
  v8 = [v6 initWithData_];
  *(v0 + 184) = v8;

  sub_1A31EC234(v3, v5);
  if (!v8)
  {

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 40) = xmmword_1A34F02E0;
    *(v0 + 56) = 0;
    sub_1A34C9010();
    sub_1A34CA380();
LABEL_23:
    sub_1A31EC234(v3, v5);
LABEL_25:

    v34 = *(v0 + 8);

    return v34();
  }

  v9 = *(v0 + 112);
  v10 = [objc_opt_self() unifiedMeContactMonitor];
  LOBYTE(v9) = [v10 isMeContact_];

  if (v9)
  {
    v11 = *(v0 + 112);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6970);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1A34DAA30;
    v13 = *MEMORY[0x1E695C268];
    *(v12 + 32) = *MEMORY[0x1E695C268];
    v14 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C7370);
    v15 = sub_1A34CD350();

    LODWORD(v11) = [v11 areKeysAvailable_];

    if (v11)
    {
      v16 = [*(v0 + 112) backgroundColors];
      if (v16)
      {
        v17 = v16;
        v18 = [v16 contactImage];

        sub_1A31EC194(0, &qword_1ED853440);
        v19 = sub_1A34CD370();

        v20 = v19 >> 62 ? sub_1A34CD9B0() : *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (v20)
        {
          v21 = *(v0 + 112);

          v22 = [v21 backgroundColors];
          v23 = MEMORY[0x1E69E7CC0];
          if (v22)
          {
            v24 = v22;
            v25 = [v22 contactImage];

            v26 = sub_1A34CD370();
            if (v26 >> 62)
            {
              v27 = sub_1A34CD9B0();
              if (v27)
              {
                goto LABEL_13;
              }
            }

            else
            {
              v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v27)
              {
LABEL_13:
                v35 = v23;
                result = sub_1A34CDB70();
                if (v27 < 0)
                {
                  __break(1u);
                  return result;
                }

                v29 = 0;
                v30 = v26 & 0xC000000000000001;
                v31 = v26;
                do
                {
                  if (v30)
                  {
                    MEMORY[0x1A58EF310](v29, v26);
                  }

                  else
                  {
                    v33 = *(v26 + 8 * v29 + 32);
                  }

                  ++v29;
                  sub_1A34CC440();
                  sub_1A34CDB50();
                  sub_1A34CDB80();
                  sub_1A34CDB90();
                  sub_1A34CDB60();
                  v26 = v31;
                }

                while (v27 != v29);

                v23 = v35;
                goto LABEL_32;
              }
            }
          }

LABEL_32:
          swift_getKeyPath();
          swift_getKeyPath();
          *(v0 + 88) = v23;
          *(v0 + 96) = xmmword_1A34F02D0;
          sub_1A34C9010();
          sub_1A34CA380();

          goto LABEL_23;
        }
      }
    }
  }

  v32 = swift_task_alloc();
  *(v0 + 192) = v32;
  *v32 = v0;
  v32[1] = sub_1A33D014C;

  return sub_1A33C59DC(v8);
}

uint64_t sub_1A33D014C(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 200) = a1;

  v3 = *(v2 + 160);
  v4 = *(v2 + 152);

  return MEMORY[0x1EEE6DFA0](sub_1A33D0274, v4, v3);
}

uint64_t sub_1A33D0274()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 184);
  v12 = *(v0 + 168);
  v13 = *(v0 + 176);
  v3 = *(v0 + 136);
  v4 = *(v0 + 128);
  v5 = *(v0 + 112);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 64) = v1;
  *(v0 + 72) = xmmword_1A34F02D0;
  sub_1A34C9010();

  sub_1A34CA380();
  sub_1A34CD470();
  v6 = sub_1A34CD4A0();
  (*(*(v6 - 8) + 56))(v3, 0, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v5;
  v7[5] = v1;
  v7[6] = v4;
  v8 = v5;
  v9 = v4;
  sub_1A32C2F5C(0, 0, v3, &unk_1A34F07B8, v7);

  sub_1A31EC234(v13, v12);
  sub_1A3288FDC(v3, &qword_1EB0C6110);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1A33D0430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[7] = a4;
  v7 = sub_1A34CA250();
  v6[10] = v7;
  v6[11] = *(v7 - 8);
  v6[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A33D04F4, 0, 0);
}

uint64_t sub_1A33D04F4()
{
  v1 = *(v0 + 56);
  [v1 mutableCopy];
  sub_1A34CD920();
  swift_unknownObjectRelease();
  sub_1A31EC194(0, &qword_1EB0C2B00);
  swift_dynamicCast();
  v2 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C6970);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1A34DAA30;
  v4 = *MEMORY[0x1E695C268];
  *(v3 + 32) = *MEMORY[0x1E695C268];
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C7370);
  v6 = sub_1A34CD350();

  LODWORD(v1) = [v1 areKeysAvailable_];

  if (!v1 || (v7 = [*(v0 + 56) backgroundColors]) == 0)
  {
    v7 = [objc_allocWithZone(CNUIBackgroundColors) init];
  }

  v8 = *(v0 + 64);
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = v7;
    sub_1A34CDB70();
    sub_1A31EC194(0, &qword_1ED853440);
    v11 = v8 + 32;
    do
    {
      v11 += 8;
      sub_1A34C9010();
      sub_1A34CD800();
      sub_1A34CDB50();
      sub_1A34CDB80();
      sub_1A34CDB90();
      sub_1A34CDB60();
      --v9;
    }

    while (v9);
  }

  else
  {
    v12 = v7;
  }

  sub_1A31EC194(0, &qword_1ED853440);
  v13 = sub_1A34CD350();

  [v7 setContactImage_];

  [v2 setBackgroundColors_];
  if (qword_1EB0C1238 != -1)
  {
    swift_once();
  }

  v14 = *(v0 + 88);
  v15 = *(v0 + 96);
  v17 = *(v0 + 72);
  v16 = *(v0 + 80);
  v18 = __swift_project_value_buffer(v16, qword_1EB0ECF78);
  (*(v14 + 16))(v15, v18, v16);
  sub_1A34C9F00();
  swift_allocObject();
  sub_1A34C9E90();
  v19 = swift_task_alloc();
  *(v19 + 16) = v2;
  *(v19 + 24) = v17;
  sub_1A34C9EC0();

  v20 = *(v0 + 8);

  return v20();
}

void sub_1A33D089C(uint64_t a1, void *a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = [objc_allocWithZone(MEMORY[0x1E695CF88]) init];
  [v4 setSuppressChangeNotifications_];
  [v4 updateContact_];
  v16[0] = 0;
  if ([a2 executeSaveRequest:v4 error:v16])
  {
    v5 = v16[0];
  }

  else
  {
    v6 = v16[0];
    v7 = sub_1A34C9580();

    swift_willThrow();
    if (qword_1EB0C1238 != -1)
    {
      swift_once();
    }

    v8 = sub_1A34CA250();
    __swift_project_value_buffer(v8, qword_1EB0ECF78);
    v9 = v7;
    v10 = sub_1A34CA230();
    v11 = sub_1A34CD640();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      v14 = v7;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v15;
      *v13 = v15;
      _os_log_impl(&dword_1A31E6000, v10, v11, "Failed to save background colors, error: %@", v12, 0xCu);
      sub_1A3288FDC(v13, &unk_1EB0C6C40);
      MEMORY[0x1A58F1010](v13, -1, -1);
      MEMORY[0x1A58F1010](v12, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_1A33D0ADC()
{
  v1 = OBJC_IVAR____TtCV14ContactsUICore19ContactCardHeroView5Model__representation;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA460);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1A33D0B8C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ContactCardHeroView.Model(0);
  result = sub_1A34CA2C0();
  *a1 = result;
  return result;
}

void sub_1A33D0C14()
{
  sub_1A33D0CE8();
  if (v0 <= 0x3F)
  {
    sub_1A31EF23C(319, qword_1ED854EB0, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_1A33D0D9C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A33D0CE8()
{
  if (!qword_1EB0C1108)
  {
    type metadata accessor for ContactCardHeroView.Model(255);
    sub_1A33D0FE0(&unk_1EB0C2420, type metadata accessor for ContactCardHeroView.Model);
    v0 = sub_1A34CA660();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB0C1108);
    }
  }
}

void sub_1A33D0D9C()
{
  if (!qword_1EB0C2C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C80D8);
    v0 = sub_1A34CA5F0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB0C2C10);
    }
  }
}

void sub_1A33D0E08()
{
  sub_1A33D0EA8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1A33D0EA8()
{
  if (!qword_1EB0C1220)
  {
    v0 = sub_1A34CA390();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB0C1220);
    }
  }
}

unint64_t sub_1A33D0EF8()
{
  result = qword_1EB0C0E78;
  if (!qword_1EB0C0E78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA440);
    sub_1A3284D0C(&qword_1EB0C0FF8, &unk_1EB0CA430);
    sub_1A33D0FE0(&qword_1ED8544B0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0E78);
  }

  return result;
}

uint64_t sub_1A33D0FE0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t get_enum_tag_for_layout_string_14ContactsUICore19ContactCardHeroViewV5ModelC14RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1A33D1044(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8) >> 3;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1A33D1094(uint64_t result, int a2, int a3)
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
      *result = 0;
      *(result + 8) = 8 * -a2;
      *(result + 16) = 0;
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

void *sub_1A33D10EC(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    result[1] = result[1] & 7 | (a2 << 62);
  }

  else
  {
    *result = (a2 - 2);
    *(result + 1) = xmmword_1A34F02F0;
  }

  return result;
}

uint64_t sub_1A33D112C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 72))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A33D114C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
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

  *(result + 72) = v3;
  return result;
}

void sub_1A33D11E0()
{
  sub_1A31EF23C(319, &qword_1EB0C0718, MEMORY[0x1E697FF50], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1A31EF23C(319, &qword_1EB0C1170, type metadata accessor for ContactPosterScrollGeometryObserver, MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1A33D12F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A33D1358(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A33D13C0()
{
  type metadata accessor for ContactCardHeroView.ScrollPositionBlurEffect(0);

  return sub_1A33CE7D8();
}

double sub_1A33D144C@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A34CA370();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_1A33D14D4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A33D1568(v1, v2, v3);
  sub_1A34C9010();
  return sub_1A34CA380();
}

uint64_t sub_1A33D1568(uint64_t a1, unint64_t a2, void *a3)
{
  if (a2 >> 62 == 1)
  {
    return a3;
  }

  if (!(a2 >> 62))
  {
    return sub_1A31EE004(a1, a2);
  }

  return a1;
}

uint64_t objectdestroy_6Tm()
{
  v1 = type metadata accessor for ContactCardHeroView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  sub_1A31F3C20();
  v3 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA420);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A34CA5D0();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA5E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1A34CB5F0();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v2 + v5, 1, v6))
    {
      (*(v7 + 8))(v2 + v5, v6);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A33D1770@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ContactCardHeroView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1A33CCD78(a1, v6, a2);
}

void sub_1A33D17F0(uint64_t a1, unint64_t a2, void *a3)
{
  if (a2 >> 62 == 1)
  {
  }

  else if (!(a2 >> 62))
  {
    sub_1A31ECC9C(a1, a2);
  }
}

unint64_t sub_1A33D180C()
{
  result = qword_1EB0C05A0;
  if (!qword_1EB0C05A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA468);
    sub_1A33D1890();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C05A0);
  }

  return result;
}

unint64_t sub_1A33D1890()
{
  result = qword_1EB0C07D8;
  if (!qword_1EB0C07D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0CA470);
    sub_1A33D191C();
    sub_1A33D1B48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C07D8);
  }

  return result;
}

unint64_t sub_1A33D191C()
{
  result = qword_1EB0C0818;
  if (!qword_1EB0C0818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0CA480);
    sub_1A33D19A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0818);
  }

  return result;
}

unint64_t sub_1A33D19A8()
{
  result = qword_1EB0C09E8;
  if (!qword_1EB0C09E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0CA490);
    sub_1A33D1A60();
    sub_1A3284D0C(&qword_1EB0C0988, &unk_1EB0CA4D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C09E8);
  }

  return result;
}

unint64_t sub_1A33D1A60()
{
  result = qword_1EB0C0A58;
  if (!qword_1EB0C0A58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0CA4A0);
    sub_1A33D1C30(&qword_1EB0C0B18, &unk_1EB0CA4B0, &unk_1A34F06C0, sub_1A32F6838);
    sub_1A33D0FE0(&qword_1ED8544B0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0A58);
  }

  return result;
}

unint64_t sub_1A33D1B48()
{
  result = qword_1EB0C0B08;
  if (!qword_1EB0C0B08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0CA4E0);
    sub_1A33D1C30(&qword_1EB0C0C68, &unk_1EB0CA4F0, &unk_1A34F06E0, sub_1A33D1CB4);
    sub_1A33D0FE0(&qword_1ED8544B0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0B08);
  }

  return result;
}

uint64_t sub_1A33D1C30(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_1A33D1CB4()
{
  result = qword_1EB0C0F78;
  if (!qword_1EB0C0F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA500);
    sub_1A32F626C();
    sub_1A33D0FE0(&qword_1EB0C2450, type metadata accessor for ContactCardHeroView.ScrollPositionBlurEffect);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0C0F78);
  }

  return result;
}

unint64_t sub_1A33D1D70()
{
  result = qword_1EB0CA530;
  if (!qword_1EB0CA530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA510);
    sub_1A3284D0C(&qword_1EB0CA538, &qword_1EB0CA540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CA530);
  }

  return result;
}

unint64_t sub_1A33D1E28()
{
  result = qword_1EB0CA570;
  if (!qword_1EB0CA570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA558);
    sub_1A33D1EE4();
    sub_1A33D0FE0(&qword_1EB0C2450, type metadata accessor for ContactCardHeroView.ScrollPositionBlurEffect);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CA570);
  }

  return result;
}

unint64_t sub_1A33D1EE4()
{
  result = qword_1EB0CA578;
  if (!qword_1EB0CA578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB0CA580);
    sub_1A32A4A5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CA578);
  }

  return result;
}

unint64_t sub_1A33D1F70()
{
  result = qword_1EB0CA5B0;
  if (!qword_1EB0CA5B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA5A8);
    sub_1A33D1FFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CA5B0);
  }

  return result;
}

unint64_t sub_1A33D1FFC()
{
  result = qword_1EB0CA5B8;
  if (!qword_1EB0CA5B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA5C0);
    sub_1A3284D0C(&qword_1EB0CA5C8, &unk_1EB0CA5D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0CA5B8);
  }

  return result;
}

uint64_t sub_1A33D20B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1A3292C58;

  return sub_1A33CFAF8(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_67Tm(void (*a1)(void))
{
  swift_unknownObjectRelease();

  a1(*(v1 + 40));

  return swift_deallocObject();
}

uint64_t sub_1A33D21DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1A3292050;

  return sub_1A33D0430(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1A33D22C4(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_1A34CCDB0();
}

uint64_t EnvironmentValues.detailsStyle.getter()
{
  sub_1A3292C04();

  return sub_1A34CB0E0();
}

uint64_t EnvironmentValues.detailsStyle.setter(uint64_t a1)
{
  sub_1A3292BA8(a1, &v3);
  sub_1A3292C04();
  sub_1A34CB0F0();
  return sub_1A3292144(a1);
}

uint64_t static ContactCard.descriptorsForRequiredKeys.getter()
{
  if (qword_1EB0C4BC0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EB0CCE80;
  v1 = qword_1EB0C49B8;

  if (v1 != -1)
  {
    swift_once();
  }

  sub_1A31EABF0(v2);
  return v0;
}

uint64_t sub_1A33D25E0(uint64_t a1)
{
  v2 = sub_1A34CAA80();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v4);
  sub_1A34CC730();
  return (*(v3 + 8))(a1, v2);
}

uint64_t ContactCard.init(configuration:quickActionsView:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t *a3@<X8>)
{
  v50 = a2;
  v5 = type metadata accessor for ContactCardConfiguration(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  isUniquelyReferenced_nonNull_native = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v44 - v9;
  v11 = sub_1A34CAA80();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA5E0);
  swift_storeEnumTagMultiPayload();
  v14 = type metadata accessor for ContactCard();
  sub_1A34CAA60();
  sub_1A33D25E0(v13);
  sub_1A33E1434(a1, v10, type metadata accessor for ContactCardConfiguration);
  type metadata accessor for ContactCardSwiftUIViewModel();
  swift_allocObject();
  v15 = sub_1A33E21B4(v10);
  sub_1A34C9010();
  v16 = sub_1A34CA500();
  v49 = v14;
  v50(v16);
  Strong = swift_unknownObjectWeakLoadStrong();
  v18 = sub_1A33EA7E8(MEMORY[0x1E69E7CC0]);
  if (Strong)
  {
    v45 = a3;
    v46 = v15;
    v47 = isUniquelyReferenced_nonNull_native;
    v48 = a1;
    v50 = *a1;
    v19 = type metadata accessor for ContactCardActionsViewModel(0);
    v20 = 0;
    while (1)
    {
      v23 = *(&unk_1F161B120 + v20 + 32);
      v24 = objc_allocWithZone(v19);
      v25 = v50;
      swift_unknownObjectRetain();
      v26 = sub_1A3414878(v25, Strong, v23);

      swift_unknownObjectRelease();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v51 = v18;
      v28 = sub_1A33DB730(v23);
      v29 = v18[2];
      v30 = (v27 & 1) == 0;
      v31 = v29 + v30;
      if (__OFADD__(v29, v30))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      a1 = v27;
      if (v18[3] >= v31)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v18 = v51;
          if (v27)
          {
            goto LABEL_3;
          }
        }

        else
        {
          sub_1A33DEB58(&qword_1EB0CA7E0);
          v18 = v51;
          if (a1)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
        sub_1A33DDAD8(v31, isUniquelyReferenced_nonNull_native, &qword_1EB0CA7E0);
        v32 = sub_1A33DB730(v23);
        if ((a1 & 1) != (v33 & 1))
        {
          type metadata accessor for CNUIContactCardActionPlacement(0);
          result = sub_1A34CDE90();
          __break(1u);
          return result;
        }

        v28 = v32;
        v18 = v51;
        if (a1)
        {
LABEL_3:
          v21 = v18[7];
          v22 = *(v21 + 8 * v28);
          *(v21 + 8 * v28) = v26;

          goto LABEL_4;
        }
      }

      v18[(v28 >> 6) + 8] |= 1 << v28;
      *(v18[6] + 8 * v28) = v23;
      *(v18[7] + 8 * v28) = v26;
      v34 = v18[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_23;
      }

      v18[2] = v36;
LABEL_4:
      v20 += 8;
      if (v20 == 32)
      {
        swift_unknownObjectRelease();
        isUniquelyReferenced_nonNull_native = v47;
        a1 = v48;
        a3 = v45;
        break;
      }
    }
  }

  *(a3 + *(v49 + 48)) = v18;
  if (qword_1EB0C12D8 != -1)
  {
LABEL_24:
    swift_once();
  }

  v37 = sub_1A34CA250();
  __swift_project_value_buffer(v37, qword_1EB0ED098);
  sub_1A33E1434(a1, isUniquelyReferenced_nonNull_native, type metadata accessor for ContactCardConfiguration);
  v38 = sub_1A34CA230();
  v39 = sub_1A34CD660();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v40 = 138477827;
    v42 = *isUniquelyReferenced_nonNull_native;
    sub_1A33E0988(isUniquelyReferenced_nonNull_native, type metadata accessor for ContactCardConfiguration);
    *(v40 + 4) = v42;
    *v41 = v42;
    _os_log_impl(&dword_1A31E6000, v38, v39, "[ContactCard] init for %{private}@", v40, 0xCu);
    sub_1A3288FDC(v41, &unk_1EB0C6C40);
    MEMORY[0x1A58F1010](v41, -1, -1);
    MEMORY[0x1A58F1010](v40, -1, -1);
  }

  else
  {

    sub_1A33E0988(a1, type metadata accessor for ContactCardConfiguration);
    a1 = isUniquelyReferenced_nonNull_native;
  }

  return sub_1A33E0988(a1, type metadata accessor for ContactCardConfiguration);
}

void sub_1A33D2C5C(uint64_t a1@<X8>)
{
  v3 = sub_1A34CB0B0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v8 = *(v1 + 8);
  v11 = *(v1 + 16);
  v10 = *(v1 + 24);
  v12 = *(v1 + 32);
  if (*(v1 + 33) == 1)
  {
    *a1 = v9;
    *(a1 + 8) = v8;
    *(a1 + 16) = v11;
    *(a1 + 24) = v10;
    *(a1 + 32) = v12 & 1;
  }

  else
  {
    v15 = v5;
    sub_1A34C9010();
    sub_1A34CD650();
    v13 = sub_1A34CBA30();
    sub_1A34CA210();

    sub_1A34CB0A0();
    swift_getAtKeyPath();
    sub_1A32BEA78(v9, v8, v11, v10, v12, 0);
    (*(v4 + 8))(v7, v15);
  }
}

uint64_t sub_1A33D2DDC()
{
  v1 = sub_1A34CB0B0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  sub_1A34C9010();
  if ((v6 & 1) == 0)
  {
    sub_1A34CD650();
    v7 = sub_1A34CBA30();
    sub_1A34CA210();

    sub_1A34CB0A0();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t sub_1A33D2F1C(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](a1);
  (*(v2 + 16))(&v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v5 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = swift_allocObject();
  v29 = *(a1 + 16);
  *(v6 + 16) = v29;
  (*(v2 + 32))(v6 + v5, &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v38 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA668);
  v39 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA670);
  v40 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA678);
  v41 = sub_1A34CAC30();
  v42 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA680);
  v43 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA688);
  v44 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA690);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA698);
  v45 = v7;
  v46 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA6A0);
  v47 = v7;
  swift_getTupleTypeMetadata();
  sub_1A34CCDA0();
  swift_getWitnessTable();
  v8 = sub_1A34CBC40();
  WitnessTable = swift_getWitnessTable();
  v10 = sub_1A33E0680();
  v38 = v8;
  v39 = &type metadata for ContactCardFormStyle;
  v40 = WitnessTable;
  v41 = v10;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v38 = v8;
  v39 = &type metadata for ContactCardFormStyle;
  v40 = WitnessTable;
  v41 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v38 = OpaqueTypeMetadata2;
  v39 = OpaqueTypeConformance2;
  v13 = swift_getOpaqueTypeMetadata2();
  v38 = OpaqueTypeMetadata2;
  v39 = OpaqueTypeConformance2;
  v14 = swift_getOpaqueTypeConformance2();
  v38 = v13;
  v39 = v14;
  v15 = swift_getOpaqueTypeMetadata2();
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C8C20);
  v38 = v13;
  v39 = v14;
  v17 = swift_getOpaqueTypeConformance2();
  v18 = sub_1A33E06D4();
  v38 = v15;
  v39 = v16;
  v40 = v17;
  v41 = v18;
  v19 = swift_getOpaqueTypeMetadata2();
  v38 = v15;
  v39 = v16;
  v40 = v17;
  v41 = v18;
  v20 = swift_getOpaqueTypeConformance2();
  v38 = v19;
  v39 = v20;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA6B8);
  sub_1A34CAC30();
  sub_1A34CB3F0();
  sub_1A34CB970();
  sub_1A34CAC30();
  v38 = v19;
  v39 = v20;
  v21 = swift_getOpaqueTypeConformance2();
  v22 = sub_1A3284D0C(&qword_1ED853F30, &qword_1EB0CA6B8);
  v36 = v21;
  v37 = v22;
  v34 = swift_getWitnessTable();
  v35 = v21;
  v23 = swift_getWitnessTable();
  v24 = sub_1A33E1CA8(&qword_1ED8544B0, MEMORY[0x1E697CBE8]);
  v32 = v23;
  v33 = v24;
  swift_getWitnessTable();
  v30 = sub_1A34CA930();
  v31 = v25;
  v26 = sub_1A34CA940();
  v27 = swift_getWitnessTable();
  sub_1A3345BC8(&v30, v26, v27);

  v30 = v38;
  v31 = v39;
  sub_1A3345BC8(&v30, v26, v27);
}

uint64_t sub_1A33D3504@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v153 = a4;
  v150 = a1;
  v151 = a2;
  v148 = a5;
  v6 = sub_1A34CB530();
  v146 = *(v6 - 8);
  v147 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v145 = v101 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A34CA7F0();
  v143 = *(v8 - 8);
  v144 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v141 = v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = v9;
  v152 = a3;
  v10 = type metadata accessor for ContactCard.InnerFormView();
  v139 = *(v10 - 8);
  v140 = v10;
  v138 = *(v139 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v137 = v101 - v11;
  v12 = sub_1A34CB7C0();
  v135 = *(v12 - 8);
  v136 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v107 = v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1A34CB8A0();
  v120 = *(v14 - 8);
  v121 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v116 = v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164.i64[0] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA668);
  v164.i64[1] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA670);
  v165.i64[0] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA678);
  v165.i64[1] = sub_1A34CAC30();
  v166 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA680);
  v167 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA688);
  v168 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA690);
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA698);
  v169 = v16;
  v170 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA6A0);
  v171 = v16;
  swift_getTupleTypeMetadata();
  v105 = sub_1A34CCDA0();
  WitnessTable = swift_getWitnessTable();
  v17 = sub_1A34CBC40();
  v108 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v103 = v101 - v18;
  v19 = swift_getWitnessTable();
  v20 = sub_1A33E0680();
  v164.i64[0] = v17;
  v164.i64[1] = &type metadata for ContactCardFormStyle;
  v165.i64[0] = v19;
  v101[2] = v20;
  v101[3] = v19;
  v165.i64[1] = v20;
  v21 = v20;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v106 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v102 = v101 - v23;
  v164.i64[0] = v17;
  v164.i64[1] = &type metadata for ContactCardFormStyle;
  v165.i64[0] = v19;
  v165.i64[1] = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v164.i64[0] = OpaqueTypeMetadata2;
  v164.i64[1] = OpaqueTypeConformance2;
  v25 = OpaqueTypeConformance2;
  v101[1] = OpaqueTypeConformance2;
  v26 = swift_getOpaqueTypeMetadata2();
  v110 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v28 = v101 - v27;
  v164.i64[0] = OpaqueTypeMetadata2;
  v164.i64[1] = v25;
  v29 = swift_getOpaqueTypeConformance2();
  v164.i64[0] = v26;
  v164.i64[1] = v29;
  v30 = swift_getOpaqueTypeMetadata2();
  v118 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v149 = v101 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C8C20);
  v111 = v26;
  v164.i64[0] = v26;
  v109 = v29;
  v164.i64[1] = v29;
  v33 = swift_getOpaqueTypeConformance2();
  v34 = sub_1A33E06D4();
  v164.i64[0] = v30;
  v164.i64[1] = v32;
  v165.i64[0] = v33;
  v165.i64[1] = v34;
  v35 = swift_getOpaqueTypeMetadata2();
  v117 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v114 = v32;
  v115 = v101 - v36;
  v119 = v30;
  v164.i64[0] = v30;
  v164.i64[1] = v32;
  v112 = v34;
  v113 = v33;
  v165.i64[0] = v33;
  v165.i64[1] = v34;
  v37 = v28;
  v38 = v107;
  v39 = swift_getOpaqueTypeConformance2();
  v125 = v35;
  v164.i64[0] = v35;
  v122 = v39;
  v164.i64[1] = v39;
  v40 = swift_getOpaqueTypeMetadata2();
  v131 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v126 = v101 - v41;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA6B8);
  v123 = sub_1A34CAC30();
  v132 = v40;
  v42 = sub_1A34CB3F0();
  v128 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v124 = v101 - v43;
  sub_1A34CB970();
  v130 = v42;
  v44 = sub_1A34CAC30();
  v133 = *(v44 - 8);
  v134 = v44;
  MEMORY[0x1EEE9AC00](v44);
  v127 = v101 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v129 = v101 - v47;
  v154 = v152;
  v155 = v153;
  v156 = v151;
  v48 = v103;
  sub_1A34CBC30();
  sub_1A34CA7C0();
  v50 = v49;
  v52 = v51;
  v164.i64[0] = swift_getKeyPath();
  v172 = 0;
  v173 = v50;
  v174 = v52;
  v53 = v102;
  sub_1A34CC3E0();
  sub_1A33E0794(&v164);
  (*(v108 + 8))(v48, v17);
  v54 = v116;
  sub_1A34CB890();
  sub_1A34CC230();
  (*(v120 + 8))(v54, v121);
  (*(v106 + 8))(v53, OpaqueTypeMetadata2);
  sub_1A34CB7B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0C5E88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A34DCA90;
  LOBYTE(v32) = sub_1A34CBA70();
  *(inited + 32) = v32;
  v56 = sub_1A34CBA50();
  *(inited + 33) = v56;
  sub_1A34CBA60();
  sub_1A34CBA60();
  if (sub_1A34CBA60() != v32)
  {
    sub_1A34CBA60();
  }

  sub_1A34CBA60();
  if (sub_1A34CBA60() != v56)
  {
    sub_1A34CBA60();
  }

  v57 = v111;
  sub_1A34CC090();
  (*(v135 + 8))(v38, v136);
  (*(v110 + 8))(v37, v57);
  v58 = v151;
  sub_1A33D2C5C(&v164);
  if (v166)
  {
    v59 = -1;
  }

  else
  {
    v59 = 0;
  }

  v60 = vdupq_n_s64(v59);
  v164 = vbicq_s8(v164, v60);
  v165 = vbicq_s8(v165, v60);
  v62 = v139;
  v61 = v140;
  v63 = v137;
  (*(v139 + 16))(v137, v58, v140);
  v64 = v143;
  v65 = v144;
  v66 = v141;
  (*(v143 + 16))(v141, v150, v144);
  v67 = (*(v62 + 80) + 32) & ~*(v62 + 80);
  v68 = (v138 + *(v64 + 80) + v67) & ~*(v64 + 80);
  v69 = swift_allocObject();
  v70 = v153;
  *(v69 + 16) = v152;
  *(v69 + 24) = v70;
  (*(v62 + 32))(v69 + v67, v63, v61);
  (*(v64 + 32))(v69 + v68, v66, v65);
  v71 = v115;
  v72 = v119;
  v73 = v149;
  sub_1A34CC3B0();

  (*(v118 + 8))(v73, v72);
  v74 = sub_1A34CBAA0();
  v75 = v151[8];
  v164.i64[0] = v151[7];
  v164.i64[1] = v75;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA6C0);
  sub_1A34CC740();
  v76 = v163;
  v77 = v145;
  sub_1A34CB510();
  v78 = v125;
  v79 = v126;
  v80 = v122;
  MEMORY[0x1A58ED7D0](v74, v76, 0, v77, v125, v122);
  (*(v146 + 8))(v77, v147);
  (*(v117 + 8))(v71, v78);
  v81 = [objc_opt_self() standardPreferences];
  v82 = sub_1A34CD0E0();
  v83 = [v81 userHasOptedInToPreference_];

  v151 = v101;
  MEMORY[0x1EEE9AC00](v84);
  v85 = v153;
  v101[-2] = v152;
  v101[-1] = v85;
  v164.i64[0] = v78;
  v164.i64[1] = v80;
  v86 = swift_getOpaqueTypeConformance2();
  v87 = sub_1A3284D0C(&qword_1ED853F30, &qword_1EB0CA6B8);
  v161 = v86;
  v162 = v87;
  v88 = v123;
  v89 = swift_getWitnessTable();
  v90 = v124;
  v91 = v132;
  sub_1A34A77AC(v83, sub_1A33E08C4, &v101[-4], v132, v88, v86, v89, v124);
  (*(v131 + 8))(v79, v91);
  v159 = v89;
  v160 = v86;
  v92 = v130;
  v93 = swift_getWitnessTable();
  v94 = v127;
  sub_1A34CC1F0();
  (*(v128 + 8))(v90, v92);
  v95 = sub_1A33E1CA8(&qword_1ED8544B0, MEMORY[0x1E697CBE8]);
  v157 = v93;
  v158 = v95;
  v96 = v134;
  v97 = swift_getWitnessTable();
  v98 = v129;
  sub_1A3345BC8(v94, v96, v97);
  v99 = *(v133 + 8);
  v99(v94, v96);
  sub_1A3345BC8(v98, v96, v97);
  return (v99)(v98, v96);
}

uint64_t sub_1A33D45C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v317 = a4;
  v323 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA6C8);
  v322 = *(v323 - 8);
  MEMORY[0x1EEE9AC00](v323);
  v269 = &v256 - v7;
  v315 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA6A0);
  MEMORY[0x1EEE9AC00](v315);
  v318 = &v256 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v339 = &v256 - v10;
  v332 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA6D0);
  v324 = *(v332 - 8);
  MEMORY[0x1EEE9AC00](v332);
  v268 = &v256 - v11;
  v314 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA698);
  MEMORY[0x1EEE9AC00](v314);
  v316 = &v256 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v335 = &v256 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v337 = &v256 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v346 = &v256 - v18;
  v298 = type metadata accessor for ContactCardDetails();
  MEMORY[0x1EEE9AC00](v298);
  v297 = &v256 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v313 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA690);
  MEMORY[0x1EEE9AC00](v313);
  v334 = &v256 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v345 = &v256 - v22;
  v286 = type metadata accessor for ContactCardActions();
  MEMORY[0x1EEE9AC00](v286);
  v285 = &v256 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA6D8);
  v295 = *(v24 - 8);
  v296 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v267 = &v256 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v287 = &v256 - v27;
  v312 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA688);
  MEMORY[0x1EEE9AC00](v312);
  v333 = &v256 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v348 = &v256 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA6E0);
  v293 = *(v31 - 8);
  v294 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v284 = &v256 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA6E8);
  v280 = *(v33 - 8);
  v281 = v33;
  MEMORY[0x1EEE9AC00](v33);
  v260 = &v256 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA6F0);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v283 = &v256 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v282 = &v256 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA6F8);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v266 = &v256 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v265 = &v256 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v319 = &v256 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v321 = &v256 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA700);
  v277 = *(v47 - 8);
  v278 = v47;
  MEMORY[0x1EEE9AC00](v47);
  v264 = &v256 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA610);
  MEMORY[0x1EEE9AC00](v49 - 8);
  v275 = &v256 - v50;
  v51 = type metadata accessor for ContactCardCustomViewConfiguration(0);
  v273 = *(v51 - 8);
  v274 = v51;
  MEMORY[0x1EEE9AC00](v51);
  v263 = &v256 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA708);
  MEMORY[0x1EEE9AC00](v53 - 8);
  v279 = &v256 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v55);
  v320 = &v256 - v56;
  v311 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA680);
  MEMORY[0x1EEE9AC00](v311);
  v331 = &v256 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v58);
  v342 = &v256 - v59;
  v344 = sub_1A34CAC30();
  v328 = *(v344 - 8);
  MEMORY[0x1EEE9AC00](v344);
  v343 = &v256 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v61);
  v341 = &v256 - v62;
  v291 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA710);
  MEMORY[0x1EEE9AC00](v291);
  v327 = (&v256 - v63);
  v301 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA718);
  WitnessTable = *(v301 - 1);
  MEMORY[0x1EEE9AC00](v301);
  v290 = &v256 - v64;
  v310 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA678);
  MEMORY[0x1EEE9AC00](v310);
  v330 = &v256 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v66);
  v340 = &v256 - v67;
  v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA720);
  MEMORY[0x1EEE9AC00](v262);
  v69 = &v256 - v68;
  v288 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA728);
  v70 = *(v288 - 8);
  MEMORY[0x1EEE9AC00](v288);
  v261 = &v256 - v71;
  v271 = type metadata accessor for ContactCardConfiguration(0);
  MEMORY[0x1EEE9AC00](v271);
  v259 = (&v256 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v73);
  v300 = &v256 - v74;
  MEMORY[0x1EEE9AC00](v75);
  v258 = (&v256 - v76);
  MEMORY[0x1EEE9AC00](v77);
  v292 = &v256 - v78;
  MEMORY[0x1EEE9AC00](v79);
  v276 = (&v256 - v80);
  MEMORY[0x1EEE9AC00](v81);
  v272 = (&v256 - v82);
  MEMORY[0x1EEE9AC00](v83);
  v270 = &v256 - v84;
  MEMORY[0x1EEE9AC00](v85);
  v87 = &v256 - v86;
  MEMORY[0x1EEE9AC00](v88);
  v336 = (&v256 - v89);
  MEMORY[0x1EEE9AC00](v90);
  v92 = &v256 - v91;
  v308 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA670);
  MEMORY[0x1EEE9AC00](v308);
  v329 = &v256 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v94);
  v347 = &v256 - v95;
  v309 = sub_1A34CC4E0();
  v96 = *(a1 + 64);
  v369 = *(a1 + 56);
  v370 = v96;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA6C0);
  sub_1A34CC740();
  sub_1A34CCC80();
  v97 = 1;
  sub_1A34CA760();
  v307 = v381;
  v306 = v382;
  v305 = v383;
  v304 = v384;
  v302 = v386;
  v303 = v385;
  v325 = a2;
  v326 = a3;
  v289 = type metadata accessor for ContactCard.InnerFormView();
  v98 = sub_1A33D2DDC();
  sub_1A33E1434(v98 + OBJC_IVAR____TtC14ContactsUICore27ContactCardSwiftUIViewModel_configuration, v92, type metadata accessor for ContactCardConfiguration);

  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1A33E0988(v92, type metadata accessor for ContactCardConfiguration);
  if (Strong)
  {
    v100 = *(sub_1A33D2DDC() + OBJC_IVAR____TtC14ContactsUICore27ContactCardSwiftUIViewModel_hasSensitiveContent);

    if (v100 == 1)
    {
      v101 = sub_1A33D2DDC();
      v102 = v336;
      sub_1A33E1434(v101 + OBJC_IVAR____TtC14ContactsUICore27ContactCardSwiftUIViewModel_configuration, v336, type metadata accessor for ContactCardConfiguration);

      v257 = *v102;
      sub_1A33E0988(v102, type metadata accessor for ContactCardConfiguration);
      v103 = type metadata accessor for SensitiveContentActionsView(0);
      v104 = &v69[v103[5]];
      LOBYTE(v362[0]) = 0;
      swift_unknownObjectRetain();
      sub_1A34CC730();
      v105 = v370;
      *v104 = v369;
      *(v104 + 1) = v105;
      v106 = &v69[v103[6]];
      LOBYTE(v362[0]) = 0;
      sub_1A34CC730();
      v107 = v370;
      *v106 = v369;
      *(v106 + 1) = v107;
      v108 = &v69[v103[7]];
      LOBYTE(v362[0]) = 0;
      sub_1A34CC730();
      v109 = v370;
      *v108 = v369;
      *(v108 + 1) = v109;
      v110 = swift_allocObject();
      *(v110 + 16) = v257;
      *(v110 + 24) = Strong;
      type metadata accessor for SensitiveContentActionsView.Model(0);
      sub_1A34CA500();
      sub_1A33E0CBC();
      v111 = v261;
      sub_1A34CC1F0();
      swift_unknownObjectRelease();
      sub_1A3288FDC(v69, &qword_1EB0CA720);
      sub_1A329D98C(v111, v347, &qword_1EB0CA728);
      v97 = 0;
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  (*(v70 + 56))(v347, v97, 1, v288);
  v338 = a1;
  v112 = sub_1A33D2DDC();
  v113 = v336;
  sub_1A33E1434(v112 + OBJC_IVAR____TtC14ContactsUICore27ContactCardSwiftUIViewModel_configuration, v336, type metadata accessor for ContactCardConfiguration);

  HeaderView.init(configuration:)(v113, v327);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA730);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A34DCA90;
  v115 = sub_1A34CBAE0();
  *(inited + 32) = v115;
  v116 = sub_1A34CBAC0();
  *(inited + 33) = v116;
  sub_1A34CBAD0();
  sub_1A34CBAD0();
  if (sub_1A34CBAD0() != v115)
  {
    sub_1A34CBAD0();
  }

  sub_1A34CBAD0();
  if (sub_1A34CBAD0() != v116)
  {
    sub_1A34CBAD0();
  }

  v117 = v338;
  v118 = sub_1A33E08CC();
  v120 = v290;
  v119 = v291;
  v121 = v327;
  sub_1A34CBF80();
  sub_1A3288FDC(v121, &qword_1EB0CA710);
  v369 = v119;
  v370 = v118;
  v122 = 1;
  swift_getOpaqueTypeConformance2();
  v123 = v301;
  sub_1A34CC1F0();
  v124 = (*(WitnessTable + 8))(v120, v123);
  v125 = v343;
  v126 = v326;
  MEMORY[0x1A58EDBC0](v124, v325, &type metadata for ClearBackgroundSection, v326);
  v127 = sub_1A33DFE80();
  v379 = v126;
  v380 = v127;
  v128 = v344;
  WitnessTable = swift_getWitnessTable();
  sub_1A3345BC8(v125, v128, WitnessTable);
  v129 = *(v328 + 8);
  v327 = (v328 + 8);
  v301 = v129;
  (v129)(v125, v128);
  v130 = sub_1A33D2DDC();
  sub_1A33E1434(v130 + OBJC_IVAR____TtC14ContactsUICore27ContactCardSwiftUIViewModel_configuration, v87, type metadata accessor for ContactCardConfiguration);

  v131 = swift_unknownObjectWeakLoadStrong();
  sub_1A33E0988(v87, type metadata accessor for ContactCardConfiguration);
  if (v131)
  {
    v132 = sub_1A33D2DDC();
    v133 = v270;
    sub_1A33E1434(v132 + OBJC_IVAR____TtC14ContactsUICore27ContactCardSwiftUIViewModel_configuration, v270, type metadata accessor for ContactCardConfiguration);

    v134 = v275;
    sub_1A328D790(v133 + *(v271 + 36), v275, &qword_1EB0CA610);
    sub_1A33E0988(v133, type metadata accessor for ContactCardConfiguration);
    if ((*(v273 + 48))(v134, 1, v274) == 1)
    {
      sub_1A3288FDC(v134, &qword_1EB0CA610);
      (*(v277 + 56))(v320, 1, 1, v278);
    }

    else
    {
      v137 = v263;
      v138 = sub_1A33E1530(v134, v263, type metadata accessor for ContactCardCustomViewConfiguration);
      MEMORY[0x1EEE9AC00](v138);
      *(&v256 - 2) = v137;
      *(&v256 - 1) = v131;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA780);
      sub_1A33E1348();
      v139 = v264;
      sub_1A34CCA00();
      v141 = v277;
      v140 = v278;
      v142 = v320;
      (*(v277 + 32))(v320, v139, v278);
      (*(v141 + 56))(v142, 0, 1, v140);
      sub_1A33E0988(v137, type metadata accessor for ContactCardCustomViewConfiguration);
    }

    v143 = sub_1A33D2DDC();
    v144 = v272;
    sub_1A33E1434(v143 + OBJC_IVAR____TtC14ContactsUICore27ContactCardSwiftUIViewModel_configuration, v272, type metadata accessor for ContactCardConfiguration);

    v145 = *v144;
    sub_1A33E0988(v144, type metadata accessor for ContactCardConfiguration);
    v146 = type metadata accessor for ContactCardCustomActionsViewModel();
    v147 = objc_allocWithZone(v146);
    v148 = OBJC_IVAR____TtC14ContactsUICore33ContactCardCustomActionsViewModel__actionsProvider;
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakInit();
    swift_unknownObjectRetain();
    sub_1A34C99D0();
    *&v147[OBJC_IVAR____TtC14ContactsUICore33ContactCardCustomActionsViewModel_contact] = v145;
    v149 = v145;
    swift_unknownObjectRetain();
    sub_1A31F08B0(&v147[v148]);
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    *&v147[OBJC_IVAR____TtC14ContactsUICore33ContactCardCustomActionsViewModel_placement] = 1;
    *&v147[OBJC_IVAR____TtC14ContactsUICore33ContactCardCustomActionsViewModel__customActionSections] = MEMORY[0x1E69E7CC0];
    v349.receiver = v147;
    v349.super_class = v146;
    v150 = objc_msgSendSuper2(&v349, sel_init);
    swift_getKeyPath();
    v369 = v150;
    sub_1A33E1CA8(&qword_1EB0C1560, type metadata accessor for ContactCardCustomActionsViewModel);
    sub_1A34C99A0();

    v151 = swift_unknownObjectWeakLoadStrong();
    v291 = v131;
    if (v151)
    {
      [v151 addObserver_];

      swift_unknownObjectRelease();
    }

    else
    {
    }

    swift_unknownObjectRelease();
    v152 = sub_1A32D3614(v150);
    v369 = v152;
    sub_1A33E12E0();
    sub_1A34CC1F0();

    v153 = v338;
    v154 = sub_1A33D2DDC();
    v155 = v276;
    sub_1A33E1434(v154 + OBJC_IVAR____TtC14ContactsUICore27ContactCardSwiftUIViewModel_configuration, v276, type metadata accessor for ContactCardConfiguration);

    v156 = *v155;
    sub_1A33E0988(v155, type metadata accessor for ContactCardConfiguration);
    if ([v156 isSuggested])
    {

LABEL_19:
      v157 = 1;
      v159 = v281;
      v158 = v282;
      v160 = v280;
LABEL_25:
      (*(v160 + 56))(v158, v157, 1, v159);
      v166 = v320;
      v167 = v279;
      sub_1A328D790(v320, v279, &qword_1EB0CA708);
      v168 = v321;
      v169 = v319;
      sub_1A328D790(v321, v319, &qword_1EB0CA6F8);
      v170 = v158;
      v171 = v158;
      v172 = v283;
      sub_1A328D790(v170, v283, &qword_1EB0CA6F0);
      v173 = v284;
      sub_1A328D790(v167, v284, &qword_1EB0CA708);
      v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA778);
      sub_1A328D790(v169, v173 + *(v174 + 48), &qword_1EB0CA6F8);
      sub_1A328D790(v172, v173 + *(v174 + 64), &qword_1EB0CA6F0);
      swift_unknownObjectRelease();
      sub_1A3288FDC(v171, &qword_1EB0CA6F0);
      sub_1A3288FDC(v168, &qword_1EB0CA6F8);
      sub_1A3288FDC(v166, &qword_1EB0CA708);
      sub_1A3288FDC(v172, &qword_1EB0CA6F0);
      sub_1A3288FDC(v169, &qword_1EB0CA6F8);
      sub_1A3288FDC(v167, &qword_1EB0CA708);
      v136 = v342;
      sub_1A329D98C(v173, v342, &qword_1EB0CA6E0);
      v122 = 0;
      v135 = v324;
      v113 = v336;
      v117 = v338;
      goto LABEL_26;
    }

    v161 = [v156 iOSLegacyIdentifier];
    if (v161 == *MEMORY[0x1E695C248])
    {
      v162 = [v156 isSuggestedMe];

      if ((v162 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
    }

    MEMORY[0x1EEE9AC00](v163);
    v164 = v326;
    *(&v256 - 4) = v325;
    *(&v256 - 3) = v164;
    *(&v256 - 2) = v153;
    type metadata accessor for ContactCardSharedProfile();
    sub_1A33E1CA8(&unk_1EB0C1E60, type metadata accessor for ContactCardSharedProfile);
    v165 = v260;
    sub_1A34CCA00();
    v160 = v280;
    v159 = v281;
    v158 = v282;
    (*(v280 + 32))(v282, v165, v281);
    v157 = 0;
    goto LABEL_25;
  }

  v135 = v324;
  v136 = v342;
LABEL_26:
  v175 = 1;
  (*(v293 + 56))(v136, v122, 1, v294);
  v176 = *(v117 + 9);
  if (*(v176 + 16))
  {
    v175 = 1;
    v177 = sub_1A33DB730(1);
    if (v178)
    {
      v179 = *(*(v176 + 56) + 8 * v177);
      v180 = v285;
      ContactCardActions.init(model:placement:)(v179, 1, v285);
      sub_1A33E1CA8(&qword_1EB0C2658, type metadata accessor for ContactCardActions);
      v181 = v287;
      sub_1A34CC1F0();

      sub_1A33E0988(v180, type metadata accessor for ContactCardActions);
      sub_1A329D98C(v181, v348, &qword_1EB0CA6D8);
      v175 = 0;
    }
  }

  v182 = 1;
  (*(v295 + 56))(v348, v175, 1, v296);
  v183 = sub_1A33D2DDC();
  sub_1A33E1434(v183 + OBJC_IVAR____TtC14ContactsUICore27ContactCardSwiftUIViewModel_configuration, v113, type metadata accessor for ContactCardConfiguration);

  v184 = v297;
  ContactCardDetails.init(configuration:)(v113, v297);
  sub_1A33E1CA8(&qword_1EB0C2638, type metadata accessor for ContactCardDetails);
  sub_1A34CC1F0();
  sub_1A33E0988(v184, type metadata accessor for ContactCardDetails);
  v185 = sub_1A33D2DDC();
  v186 = v292;
  sub_1A33E1434(v185 + OBJC_IVAR____TtC14ContactsUICore27ContactCardSwiftUIViewModel_configuration, v292, type metadata accessor for ContactCardConfiguration);

  v187 = swift_unknownObjectWeakLoadStrong();
  sub_1A33E0988(v186, type metadata accessor for ContactCardConfiguration);
  if (v187)
  {
    if (*(v176 + 16) && (v188 = sub_1A33DB730(2), (v189 & 1) != 0))
    {
      v321 = *(*(v176 + 56) + 8 * v188);
      v190 = sub_1A33D2DDC();
      v191 = v258;
      sub_1A33E1434(v190 + OBJC_IVAR____TtC14ContactsUICore27ContactCardSwiftUIViewModel_configuration, v258, type metadata accessor for ContactCardConfiguration);

      v192 = *v191;
      sub_1A33E0988(v191, type metadata accessor for ContactCardConfiguration);
      v193 = type metadata accessor for ContactCardCustomActionsViewModel();
      v194 = objc_allocWithZone(v193);
      v195 = OBJC_IVAR____TtC14ContactsUICore33ContactCardCustomActionsViewModel__actionsProvider;
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakInit();
      swift_unknownObjectRetain();
      sub_1A34C99D0();
      *&v194[OBJC_IVAR____TtC14ContactsUICore33ContactCardCustomActionsViewModel_contact] = v192;
      v196 = v192;
      swift_unknownObjectRetain();
      sub_1A31F08B0(&v194[v195]);
      swift_unknownObjectWeakInit();
      swift_unknownObjectRelease();
      *&v194[OBJC_IVAR____TtC14ContactsUICore33ContactCardCustomActionsViewModel_placement] = 2;
      *&v194[OBJC_IVAR____TtC14ContactsUICore33ContactCardCustomActionsViewModel__customActionSections] = MEMORY[0x1E69E7CC0];
      v350.receiver = v194;
      v350.super_class = v193;
      v197 = objc_msgSendSuper2(&v350, sel_init);
      swift_getKeyPath();
      v369 = v197;
      sub_1A33E1CA8(&qword_1EB0C1560, type metadata accessor for ContactCardCustomActionsViewModel);
      sub_1A34C99A0();

      v198 = swift_unknownObjectWeakLoadStrong();
      if (v198)
      {
        [v198 addObserver_];

        swift_unknownObjectRelease();
      }

      else
      {
      }

      swift_unknownObjectRelease();
      v199 = sub_1A32D3614(v197);
      v369 = v199;
      sub_1A33E12E0();
      v200 = v265;
      sub_1A34CC1F0();

      v321 = v321;
      v201 = v285;
      ContactCardActions.init(model:placement:)(v321, 2, v285);
      sub_1A33E1CA8(&qword_1EB0C2658, type metadata accessor for ContactCardActions);
      v202 = v287;
      sub_1A34CC1F0();
      sub_1A33E0988(v201, type metadata accessor for ContactCardActions);
      v203 = v319;
      sub_1A328D790(v200, v319, &qword_1EB0CA6F8);
      v204 = v267;
      sub_1A328D790(v202, v267, &qword_1EB0CA6D8);
      v205 = v268;
      sub_1A328D790(v203, v268, &qword_1EB0CA6F8);
      v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA768);
      sub_1A328D790(v204, v205 + *(v206 + 48), &qword_1EB0CA6D8);
      swift_unknownObjectRelease();

      sub_1A3288FDC(v202, &qword_1EB0CA6D8);
      sub_1A3288FDC(v265, &qword_1EB0CA6F8);
      sub_1A3288FDC(v204, &qword_1EB0CA6D8);
      sub_1A3288FDC(v203, &qword_1EB0CA6F8);
      sub_1A329D98C(v205, v346, &qword_1EB0CA6D0);
      v182 = 0;
      v135 = v324;
      v117 = v338;
      v113 = v336;
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v208 = *(v135 + 56);
  v207 = v135 + 56;
  v209 = 1;
  v336 = v208;
  (v208)(v346, v182, 1, v332);
  v210 = [objc_opt_self() unifiedMeContactMonitor];
  v211 = sub_1A33D2DDC();
  sub_1A33E1434(v211 + OBJC_IVAR____TtC14ContactsUICore27ContactCardSwiftUIViewModel_configuration, v113, type metadata accessor for ContactCardConfiguration);

  v212 = *v113;
  sub_1A33E0988(v113, type metadata accessor for ContactCardConfiguration);
  v213 = [v210 isMeContact_];

  if ((v213 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v214);
    v215 = v326;
    *(&v256 - 4) = v325;
    *(&v256 - 3) = v215;
    *(&v256 - 2) = v117;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA740);
    sub_1A33E09F4(&qword_1EB0C0F18, &qword_1EB0CA740, &unk_1A34F0B90, sub_1A33E0AA8);
    v216 = v269;
    sub_1A34CCA00();
    (*(v322 + 32))(v339, v216, v323);
    v209 = 0;
  }

  v217 = 1;
  (*(v322 + 56))(v339, v209, 1, v323);
  v218 = sub_1A33D2DDC();
  v219 = v300;
  sub_1A33E1434(v218 + OBJC_IVAR____TtC14ContactsUICore27ContactCardSwiftUIViewModel_configuration, v300, type metadata accessor for ContactCardConfiguration);

  v220 = swift_unknownObjectWeakLoadStrong();
  sub_1A33E0988(v219, type metadata accessor for ContactCardConfiguration);
  if (v220)
  {
    if (*(v176 + 16) && (v221 = sub_1A33DB730(3), (v222 & 1) != 0))
    {
      v324 = v207;
      v326 = *(*(v176 + 56) + 8 * v221);
      v223 = sub_1A33D2DDC();
      v224 = v259;
      sub_1A33E1434(v223 + OBJC_IVAR____TtC14ContactsUICore27ContactCardSwiftUIViewModel_configuration, v259, type metadata accessor for ContactCardConfiguration);

      v225 = *v224;
      sub_1A33E0988(v224, type metadata accessor for ContactCardConfiguration);
      v226 = type metadata accessor for ContactCardCustomActionsViewModel();
      v227 = objc_allocWithZone(v226);
      v228 = OBJC_IVAR____TtC14ContactsUICore33ContactCardCustomActionsViewModel__actionsProvider;
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakInit();
      swift_unknownObjectRetain();
      sub_1A34C99D0();
      *&v227[OBJC_IVAR____TtC14ContactsUICore33ContactCardCustomActionsViewModel_contact] = v225;
      v229 = v225;
      swift_unknownObjectRetain();
      sub_1A31F08B0(&v227[v228]);
      swift_unknownObjectWeakInit();
      swift_unknownObjectRelease();
      *&v227[OBJC_IVAR____TtC14ContactsUICore33ContactCardCustomActionsViewModel_placement] = 3;
      *&v227[OBJC_IVAR____TtC14ContactsUICore33ContactCardCustomActionsViewModel__customActionSections] = MEMORY[0x1E69E7CC0];
      v351.receiver = v227;
      v351.super_class = v226;
      v230 = objc_msgSendSuper2(&v351, sel_init);
      swift_getKeyPath();
      v369 = v230;
      sub_1A33E1CA8(&qword_1EB0C1560, type metadata accessor for ContactCardCustomActionsViewModel);
      sub_1A34C99A0();

      v231 = swift_unknownObjectWeakLoadStrong();
      if (v231)
      {
        [v231 addObserver_];

        swift_unknownObjectRelease();
      }

      else
      {
      }

      swift_unknownObjectRelease();
      v232 = sub_1A32D3614(v230);
      v369 = v232;
      sub_1A33E12E0();
      v233 = v266;
      sub_1A34CC1F0();

      v338 = v326;
      v234 = v285;
      ContactCardActions.init(model:placement:)(v338, 3, v285);
      sub_1A33E1CA8(&qword_1EB0C2658, type metadata accessor for ContactCardActions);
      v235 = v287;
      sub_1A34CC1F0();
      sub_1A33E0988(v234, type metadata accessor for ContactCardActions);
      v236 = v319;
      sub_1A328D790(v233, v319, &qword_1EB0CA6F8);
      v237 = v267;
      sub_1A328D790(v235, v267, &qword_1EB0CA6D8);
      v238 = v268;
      sub_1A328D790(v236, v268, &qword_1EB0CA6F8);
      v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA768);
      sub_1A328D790(v237, v238 + *(v239 + 48), &qword_1EB0CA6D8);
      swift_unknownObjectRelease();

      sub_1A3288FDC(v235, &qword_1EB0CA6D8);
      sub_1A3288FDC(v266, &qword_1EB0CA6F8);
      sub_1A3288FDC(v237, &qword_1EB0CA6D8);
      sub_1A3288FDC(v236, &qword_1EB0CA6F8);
      sub_1A329D98C(v238, v337, &qword_1EB0CA6D0);
      v217 = 0;
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v240 = v337;
  (v336)(v337, v217, 1, v332);
  v363[0] = v309;
  v363[1] = v307;
  v364 = v306;
  v365 = v305;
  v366 = v304;
  v367 = v303;
  v368 = v302;
  v369 = v363;
  v241 = v329;
  sub_1A328D790(v347, v329, &qword_1EB0CA670);
  v370 = v241;
  v242 = v330;
  sub_1A320B85C(v340, v330);
  v371 = v242;
  v243 = v343;
  v244 = v344;
  (*(v328 + 16))(v343, v341);
  v372 = v243;
  v245 = v331;
  sub_1A328D790(v342, v331, &qword_1EB0CA680);
  v373 = v245;
  v246 = v333;
  sub_1A328D790(v348, v333, &qword_1EB0CA688);
  v374 = v246;
  v247 = v334;
  sub_1A328D790(v345, v334, &qword_1EB0CA690);
  v375 = v247;
  v248 = v335;
  sub_1A328D790(v346, v335, &qword_1EB0CA698);
  v376 = v248;
  v249 = v339;
  v250 = v318;
  sub_1A328D790(v339, v318, &qword_1EB0CA6A0);
  v377 = v250;
  v251 = v316;
  sub_1A328D790(v240, v316, &qword_1EB0CA698);
  v378 = v251;
  sub_1A34C9010();
  v362[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA668);
  v362[1] = v308;
  v362[2] = v310;
  v362[3] = v244;
  v362[4] = v311;
  v362[5] = v312;
  v362[6] = v313;
  v362[7] = v314;
  v362[8] = v315;
  v362[9] = v314;
  v352 = sub_1A33E0AFC();
  v353 = sub_1A33E0C0C();
  v354 = sub_1A33E0D78();
  v355 = WitnessTable;
  v356 = sub_1A33E0E70();
  v357 = sub_1A33E0F20(&qword_1EB0C0F38, &qword_1EB0CA688, &unk_1A34F0AC8, sub_1A33E0F9C);
  v358 = sub_1A33E1088();
  v252 = sub_1A33E1174();
  v359 = v252;
  v360 = sub_1A33E0F20(&qword_1EB0C03C8, &qword_1EB0CA6A0, &unk_1A34F0AE0, sub_1A33E1224);
  v361 = v252;
  sub_1A33D22C4(&v369, 0xAuLL, v362);

  sub_1A3288FDC(v337, &qword_1EB0CA698);
  sub_1A3288FDC(v249, &qword_1EB0CA6A0);
  sub_1A3288FDC(v346, &qword_1EB0CA698);
  sub_1A3288FDC(v345, &qword_1EB0CA690);
  sub_1A3288FDC(v348, &qword_1EB0CA688);
  sub_1A3288FDC(v342, &qword_1EB0CA680);
  v253 = v344;
  v254 = v301;
  (v301)(v341, v344);
  sub_1A320B8CC(v340);
  sub_1A3288FDC(v347, &qword_1EB0CA670);
  sub_1A3288FDC(v251, &qword_1EB0CA698);
  sub_1A3288FDC(v250, &qword_1EB0CA6A0);
  sub_1A3288FDC(v335, &qword_1EB0CA698);
  sub_1A3288FDC(v334, &qword_1EB0CA690);
  sub_1A3288FDC(v333, &qword_1EB0CA688);
  sub_1A3288FDC(v331, &qword_1EB0CA680);
  v254(v343, v253);
  sub_1A320B8CC(v330);
  sub_1A3288FDC(v329, &qword_1EB0CA670);
}

uint64_t sub_1A33D7290(uint64_t a1)
{
  v2 = type metadata accessor for ContactCardCustomView();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A33E1434(a1, v4 + *(v5 + 20), type metadata accessor for ContactCardCustomViewConfiguration);
  *v4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA420);
  swift_storeEnumTagMultiPayload();
  swift_unknownObjectWeakInit();
  v6 = v4 + *(v2 + 28);
  v9[15] = 0;
  sub_1A34CC730();
  v7 = v10;
  *v6 = v9[16];
  *(v6 + 1) = v7;
  sub_1A33E1CA8(&unk_1EB0CA790, type metadata accessor for ContactCardCustomView);
  sub_1A34CC1F0();
  return sub_1A33E0988(v4, type metadata accessor for ContactCardCustomView);
}

uint64_t sub_1A33D7430@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ContactCardConfiguration(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A33D2DDC();
  sub_1A33E1434(v5 + OBJC_IVAR____TtC14ContactsUICore27ContactCardSwiftUIViewModel_configuration, v4, type metadata accessor for ContactCardConfiguration);

  return ContactCardSharedProfile.init(configuration:)(v4, a1);
}

uint64_t sub_1A33D74EC()
{
  v0 = type metadata accessor for ContactCardConfiguration(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v12[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v12[-v4];
  v6 = sub_1A33D2DDC();
  sub_1A33E1434(v6 + OBJC_IVAR____TtC14ContactsUICore27ContactCardSwiftUIViewModel_configuration, v5, type metadata accessor for ContactCardConfiguration);

  v7 = *v5;
  sub_1A33E0988(v5, type metadata accessor for ContactCardConfiguration);
  v8 = sub_1A33D2DDC();
  sub_1A33E1434(v8 + OBJC_IVAR____TtC14ContactsUICore27ContactCardSwiftUIViewModel_configuration, v2, type metadata accessor for ContactCardConfiguration);

  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1A33E0988(v2, type metadata accessor for ContactCardConfiguration);
  v14[0] = swift_getKeyPath();
  v15 = 0;
  v12[15] = 0;
  sub_1A34CC730();
  v19 = v12[16];
  v20 = v13;
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  *(v10 + 24) = Strong;
  v16 = sub_1A32915C0;
  v17 = v10;
  v18 = 0;
  sub_1A33E0AA8();
  sub_1A34CC1F0();
  return sub_1A33E14DC(v14);
}

uint64_t sub_1A33D76F4(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 32) & 1) == 0)
  {
    CGRectGetHeight(*a2);
    sub_1A34CA7B0();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA6C0);
  return sub_1A34CC750();
}

uint64_t sub_1A33D7798()
{
  sub_1A34CC4A0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA668);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA670);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA678);
  sub_1A34CAC30();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA680);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA688);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA690);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA698);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0CA6A0);
  swift_getTupleTypeMetadata();
  sub_1A34CCDA0();
  swift_getWitnessTable();
  sub_1A34CBC40();
  swift_getWitnessTable();
  sub_1A33E0680();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0C8C20);
  swift_getOpaqueTypeConformance2();
  sub_1A33E06D4();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1A34CC320();
}

uint64_t sub_1A33D7B1C()
{
  type metadata accessor for ContactCardSwiftUIViewModel();
  sub_1A33E1CA8(&qword_1EB0C1AA0, type metadata accessor for ContactCardSwiftUIViewModel);
  return sub_1A34CA600();
}

uint64_t sub_1A33D7B8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v11 = *(a1 + 32);
  v12 = *(a1 + 33);
  v13 = *(a1 + 16);
  *a7 = *a1;
  *(a7 + 16) = v13;
  *(a7 + 32) = v11;
  *(a7 + 33) = v12;
  *(a7 + 40) = a2;
  *(a7 + 48) = a3 & 1;
  sub_1A34CC730();
  *(a7 + 56) = v16;
  *(a7 + 64) = v17;
  *(a7 + 72) = a4;
  v14 = type metadata accessor for ContactCard.InnerFormView();
  return (*(*(a6 - 8) + 32))(a7 + *(v14 + 48), a5, a6);
}

uint64_t ContactCard.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v5 = *(v4 + 24);
  v34 = *(v4 + 16);
  v32 = v4;
  v33 = v5;
  v6 = type metadata accessor for ContactCard.InnerFormView();
  v7 = type metadata accessor for ContactCardSwiftUIViewModel();
  WitnessTable = swift_getWitnessTable();
  v9 = sub_1A33E1CA8(&qword_1EB0C1AA0, type metadata accessor for ContactCardSwiftUIViewModel);
  v41 = v6;
  v42 = v7;
  v43 = WitnessTable;
  v44 = v9;
  swift_getOpaqueTypeMetadata2();
  v41 = v6;
  v42 = v7;
  v43 = WitnessTable;
  v44 = v9;
  swift_getOpaqueTypeConformance2();
  type metadata accessor for ContactPosterView();
  sub_1A34CB970();
  v10 = sub_1A34CAC30();
  v11 = swift_getWitnessTable();
  v31 = sub_1A33E1CA8(&qword_1ED8544B0, MEMORY[0x1E697CBE8]);
  v39 = v11;
  v40 = v31;
  v30[3] = MEMORY[0x1E697E858];
  v12 = swift_getWitnessTable();
  v41 = v10;
  v42 = v12;
  v30[2] = swift_getOpaqueTypeMetadata2();
  v41 = v10;
  v42 = v12;
  v30[1] = swift_getOpaqueTypeConformance2();
  sub_1A34CAD80();
  v13 = sub_1A34CAC30();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = v30 - v19;
  v21 = v32;
  (*(v2 + 16))(v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v35, v32, v18);
  v22 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v23 = swift_allocObject();
  v24 = v33;
  *(v23 + 16) = v34;
  *(v23 + 24) = v24;
  (*(v2 + 32))(v23 + v22, v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v21);
  v41 = sub_1A34CAD70();
  v42 = v25;
  v26 = swift_getWitnessTable();
  sub_1A34CC1F0();

  v37 = v26;
  v38 = v31;
  v27 = swift_getWitnessTable();
  sub_1A3345BC8(v16, v13, v27);
  v28 = *(v14 + 8);
  v28(v16, v13);
  sub_1A3345BC8(v20, v13, v27);
  return (v28)(v20, v13);
}

uint64_t sub_1A33D80F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v59 = a2;
  v67 = a1;
  v70 = a5;
  v7 = sub_1A34CAC70();
  v68 = *(v7 - 8);
  v69 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v65 = v8;
  v66 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ContactCardConfiguration(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v62 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v47 - v12);
  v48 = a3;
  v49 = a4;
  v14 = type metadata accessor for ContactCard.InnerFormView();
  v15 = type metadata accessor for ContactCardSwiftUIViewModel();
  WitnessTable = swift_getWitnessTable();
  v17 = sub_1A33E1CA8(&qword_1EB0C1AA0, type metadata accessor for ContactCardSwiftUIViewModel);
  v76 = v14;
  v77 = v15;
  v78 = WitnessTable;
  v79 = v17;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v76 = v14;
  v77 = v15;
  v78 = WitnessTable;
  v79 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v18 = type metadata accessor for ContactPosterView();
  v56 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v52 = &v47 - v19;
  sub_1A34CB970();
  v20 = sub_1A34CAC30();
  v63 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v50 = &v47 - v21;
  v22 = swift_getWitnessTable();
  v51 = v22;
  v23 = sub_1A33E1CA8(&qword_1ED8544B0, MEMORY[0x1E697CBE8]);
  v74 = v22;
  v75 = v23;
  v24 = swift_getWitnessTable();
  v64 = v20;
  v76 = v20;
  v77 = v24;
  v58 = v24;
  v61 = swift_getOpaqueTypeMetadata2();
  v60 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v55 = &v47 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v57 = &v47 - v27;
  type metadata accessor for ContactCard();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA7D0);
  v28 = v59;
  sub_1A34CA510();
  sub_1A33E1434(v76 + OBJC_IVAR____TtC14ContactsUICore27ContactCardSwiftUIViewModel_configuration, v13, type metadata accessor for ContactCardConfiguration);

  v29 = *v13;
  sub_1A33E0988(v13, type metadata accessor for ContactCardConfiguration);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA7D0);
  sub_1A34CA510();
  v30 = v62;
  sub_1A33E1434(v76 + OBJC_IVAR____TtC14ContactsUICore27ContactCardSwiftUIViewModel_configuration, v62, type metadata accessor for ContactCardConfiguration);

  swift_unknownObjectWeakLoadStrong();
  v31 = v50;
  sub_1A33E0988(v30, type metadata accessor for ContactCardConfiguration);
  v71 = v48;
  v72 = v49;
  v73 = v28;
  v32 = v52;
  ContactPosterView.init(contact:actionsProvider:content:)(v29, sub_1A33E1598, v52);
  sub_1A34CC1F0();
  (*(v56 + 8))(v32, v18);
  if (qword_1EB0C1118 != -1)
  {
    swift_once();
  }

  v33 = sub_1A34CA620();
  __swift_project_value_buffer(v33, qword_1EB0ECF60);
  v34 = v68;
  v35 = v66;
  v36 = v69;
  (*(v68 + 16))(v66, v67, v69);
  v37 = (*(v34 + 80) + 16) & ~*(v34 + 80);
  v38 = swift_allocObject();
  (*(v34 + 32))(v38 + v37, v35, v36);
  v39 = v55;
  v40 = v64;
  v41 = v58;
  sub_1A34CC330();

  (*(v63 + 8))(v31, v40);
  v76 = v40;
  v77 = v41;
  v42 = swift_getOpaqueTypeConformance2();
  v43 = v57;
  v44 = v61;
  sub_1A3345BC8(v39, v61, v42);
  v45 = *(v60 + 8);
  v45(v39, v44);
  sub_1A3345BC8(v43, v44, v42);
  return (v45)(v43, v44);
}

uint64_t sub_1A33D88F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a3;
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ContactCard.InnerFormView();
  v38 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v33 = v32 - v9;
  v10 = type metadata accessor for ContactCardSwiftUIViewModel();
  v32[1] = v10;
  WitnessTable = swift_getWitnessTable();
  v35 = WitnessTable;
  v34 = sub_1A33E1CA8(&qword_1EB0C1AA0, type metadata accessor for ContactCardSwiftUIViewModel);
  KeyPath = v8;
  v41 = v10;
  v42 = WitnessTable;
  v43 = v34;
  v36 = MEMORY[0x1E69811C8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v37 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v14 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v32 - v16;
  v18 = type metadata accessor for ContactCard();
  v20 = *(v18 + 44);
  v19 = *(v18 + 48);
  v21 = a1;
  v32[0] = a1;
  v22 = *(a1 + v19);
  (*(v5 + 16))(v7, v21 + v20, a2);
  KeyPath = swift_getKeyPath();
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v44 = 0;

  v23 = sub_1A33D7B1C();
  v25 = v33;
  sub_1A33D7B8C(&KeyPath, v23, v24 & 1, v22, v7, a2, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA7D0);
  sub_1A34CA510();
  v26 = swift_checkMetadataState();
  v28 = v34;
  v27 = v35;
  sub_1A34CBED0();

  (*(v38 + 8))(v25, v8);
  KeyPath = v8;
  v41 = v26;
  v42 = v27;
  v43 = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1A3345BC8(v14, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v30 = *(v37 + 8);
  v30(v14, OpaqueTypeMetadata2);
  sub_1A3345BC8(v17, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v30)(v17, OpaqueTypeMetadata2);
}

uint64_t sub_1A33D8CDC(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v37 = a1;
  v42 = sub_1A34CCE90();
  v45 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v41 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A34CCED0();
  v43 = *(v3 - 8);
  v44 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v40 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1A34CAC70();
  v5 = *(v32 - 8);
  v33 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v31 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A34CA640();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A34CCF00();
  v34 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v35 = &v31 - v16;
  sub_1A31EC194(0, &qword_1ED854B50);
  v36 = sub_1A34CD750();
  sub_1A34CCEE0();
  sub_1A34CCF50();
  v17 = v12 + 8;
  v18 = *(v12 + 8);
  v38 = v17;
  v18(v14, v11);
  (*(v8 + 16))(v10, v37, v7);
  v20 = v31;
  v19 = v32;
  (*(v5 + 16))(v31, v39, v32);
  v21 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v22 = (v9 + *(v5 + 80) + v21) & ~*(v5 + 80);
  v23 = swift_allocObject();
  (*(v8 + 32))(v23 + v21, v10, v7);
  (*(v5 + 32))(v23 + v22, v20, v19);
  aBlock[4] = sub_1A33E1614;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A32A5AB4;
  aBlock[3] = &block_descriptor_17;
  v24 = _Block_copy(aBlock);

  v25 = v40;
  sub_1A34CCEB0();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A33E1CA8(&qword_1ED854650, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0C6100);
  sub_1A3284D0C(&qword_1ED854640, &unk_1EB0C6100);
  v27 = v41;
  v26 = v42;
  sub_1A34CD960();
  v29 = v35;
  v28 = v36;
  MEMORY[0x1A58EEF40](v35, v25, v27, v24);
  _Block_release(v24);

  (*(v45 + 8))(v27, v26);
  (*(v43 + 8))(v25, v44);
  return (v18)(v29, v34);
}

uint64_t ContactCardCustomViewConfiguration.init(title:titleIconSymbolName:titleIconColor:body:actionTitles:trailingDisclosureSystemImageName:allowsCopy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10)
{
  v13 = type metadata accessor for ContactCardCustomViewConfiguration(0);
  v14 = v13[6];
  v15 = (a9 + v13[5]);
  v16 = v13[7];
  v17 = sub_1A34C93B0();
  v18 = *(v17 - 8);
  (*(v18 + 56))(a9 + v16, 1, 1, v17);
  v19 = (a9 + v13[9]);
  (*(v18 + 32))(a9, a1, v17);
  *v15 = a2;
  v15[1] = a3;
  *(a9 + v14) = a4;
  result = sub_1A33DEDD4(a5, a9 + v16, &unk_1EB0C5B60);
  *(a9 + v13[8]) = a6;
  *v19 = a7;
  v19[1] = a8;
  *(a9 + v13[10]) = a10;
  return result;
}

void *ContactCardConfiguration.updatedContact.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t ContactCardConfiguration.init(contact:contactStore:actionsProvider:authorizationContext:customViewConfiguration:propertyViewConfiguration:geminiManager:isMeCard:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, char a7@<W7>, char *a8@<X8>)
{
  *(a8 + 1) = 0;
  swift_unknownObjectWeakInit();
  v14 = type metadata accessor for ContactCardConfiguration(0);
  v15 = v14[9];
  v16 = type metadata accessor for ContactCardCustomViewConfiguration(0);
  (*(*(v16 - 8) + 56))(&a8[v15], 1, 1, v16);
  v17 = v14[10];
  *a8 = a1;
  *(a8 + 2) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  *(a8 + 4) = a3;
  result = sub_1A33DEDD4(a4, &a8[v15], &qword_1EB0CA610);
  *&a8[v17] = a5;
  a8[v14[11]] = a7;
  *&a8[v14[12]] = a6;
  return result;
}

uint64_t sub_1A33D9550()
{
  if (qword_1EB0C2118 != -1)
  {
    swift_once();
  }

  return sub_1A3292BA8(&qword_1EB0ED2F0, &unk_1EB0C1C20);
}

uint64_t static ContactCardDetailsStyleKey.defaultValue.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB0C1C10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_1A3292BA8(&unk_1EB0C1C20, a1);
}

uint64_t static ContactCardDetailsStyleKey.defaultValue.setter(uint64_t a1)
{
  if (qword_1EB0C1C10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1A33DEE3C(a1, &unk_1EB0C1C20);
  swift_endAccess();
  return sub_1A3292144(a1);
}

uint64_t (*static ContactCardDetailsStyleKey.defaultValue.modify())()
{
  if (qword_1EB0C1C10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1A33D974C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB0C1C10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_1A3292BA8(&unk_1EB0C1C20, a1);
}

uint64_t sub_1A33D97CC(uint64_t a1)
{
  if (qword_1EB0C1C10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1A33DEE3C(a1, &unk_1EB0C1C20);
  return swift_endAccess();
}

void (*EnvironmentValues.detailsStyle.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x328uLL);
  }

  *a1 = v3;
  *(v3 + 792) = v1;
  *(v3 + 800) = sub_1A3292C04();
  sub_1A34CB0E0();
  return sub_1A33D98E4;
}

void sub_1A33D98E4(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_1A3292BA8(*a1, v2 + 264);
    sub_1A3292BA8(v2 + 264, v2 + 528);
    sub_1A34CB0F0();
    sub_1A3292144(v2 + 264);
  }

  else
  {
    sub_1A3292BA8(*a1, v2 + 264);
    sub_1A34CB0F0();
  }

  sub_1A3292144(v2);

  free(v2);
}

uint64_t sub_1A33D999C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v4 = sub_1A34CAC90();
  v29 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA828);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA830);
  v12 = *(v11 - 8);
  v27 = v11;
  v28 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = v26 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA838);
  v30 = *(v15 - 8);
  v31 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v26 - v16;
  v33 = a1;
  v34 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA840);
  sub_1A33E17F0();
  sub_1A34CBC30();
  sub_1A34CCD10();
  v18 = sub_1A3284D0C(&unk_1EB0C0658, &qword_1EB0CA828);
  v19 = sub_1A33E1CA8(&qword_1EB0C09A0, MEMORY[0x1E697C1F0]);
  sub_1A34CC3E0();
  (*(v29 + 8))(v6, v4);
  (*(v8 + 8))(v10, v7);
  v35 = v7;
  v36 = v4;
  v37 = v18;
  v38 = v19;
  swift_getOpaqueTypeConformance2();
  v20 = v27;
  sub_1A34CC220();
  (*(v28 + 8))(v14, v20);
  v21 = *(v26[1] + 272);
  v22 = 0.0;
  if (v21 >= 450.8)
  {
    v23 = v21 * 0.65 <= 600.0;
    v22 = v21 * 0.175;
    v24 = (v21 + -600.0) * 0.5;
    if (!v23)
    {
      v22 = v24;
    }
  }

  sub_1A33DA6E0(v32, v22);
  return (*(v30 + 8))(v17, v31);
}

uint64_t sub_1A33D9DD4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v68 = a1;
  v70 = a2;
  v2 = sub_1A34CB190();
  v71 = *(v2 - 8);
  v72 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v69 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA8A8);
  MEMORY[0x1EEE9AC00](v58);
  v5 = &v56 - v4;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA878);
  MEMORY[0x1EEE9AC00](v59);
  v57 = &v56 - v6;
  v7 = sub_1A34CB550();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA868);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v61 = &v56 - v15;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0CA858);
  MEMORY[0x1EEE9AC00](v60);
  v62 = &v56 - v16;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA850);
  MEMORY[0x1EEE9AC00](v63);
  v64 = &v56 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA8B0);
  v66 = *(v18 - 8);
  v67 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v65 = &v56 - v19;
  sub_1A34CB560();
  v20 = [objc_opt_self() standardPreferences];
  v21 = sub_1A34CD0E0();
  v22 = [v20 userHasOptedInToPreference_];

  v23 = (v8 + 8);
  if (v22)
  {
    v24 = sub_1A34CC4F0();
    v25 = v57;
    sub_1A34A31A4(v24, v57);

    sub_1A328D790(v25, v5, &qword_1EB0CA878);
    swift_storeEnumTagMultiPayload();
    sub_1A33E1BC0();
    sub_1A33E1CA8(&unk_1EB0C0730, MEMORY[0x1E697C7F0]);
    sub_1A34CB3E0();
    sub_1A3288FDC(v25, &qword_1EB0CA878);
  }

  else
  {
    (*(v8 + 16))(v5, v10, v7);
    swift_storeEnumTagMultiPayload();
    sub_1A33E1BC0();
    sub_1A33E1CA8(&unk_1EB0C0730, MEMORY[0x1E697C7F0]);
    sub_1A34CB3E0();
  }

  (*v23)(v10, v7);
  v26 = v61;
  sub_1A329D98C(v13, v61, &unk_1EB0CA868);
  v27 = sub_1A34CBA80();
  if (qword_1EB0C1DB0 != -1)
  {
    swift_once();
  }

  sub_1A34CA460();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = v62;
  sub_1A329D98C(v26, v62, &unk_1EB0CA868);
  v37 = v36 + *(v60 + 36);
  *v37 = v27;
  *(v37 + 8) = v29;
  *(v37 + 16) = v31;
  *(v37 + 24) = v33;
  *(v37 + 32) = v35;
  *(v37 + 40) = 0;
  sub_1A34546F8(&v74);
  sub_1A31EE4BC(&v79, v73);
  sub_1A3292144(&v74);
  v38 = __swift_project_boxed_opaque_existential_1(v73, v73[3]);
  v39 = MEMORY[0x1EEE9AC00](v38);
  (*(v41 + 16))(&v56 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0), v39);
  v42 = sub_1A34CA770();
  __swift_destroy_boxed_opaque_existential_0(v73);
  v74 = v42;
  v75 = 256;
  v76 = 1;
  v77 = 0xD000000000000013;
  v78 = 0x80000001A3510A00;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA8B8);
  sub_1A33E1CF0();
  v43 = sub_1A34CC8F0();
  v44 = v64;
  sub_1A329D98C(v36, v64, &unk_1EB0CA858);
  *(v44 + *(v63 + 36)) = v43;
  sub_1A34546F8(&v74);
  sub_1A34C9010();
  sub_1A3292144(&v74);
  sub_1A34CA6D0();
  sub_1A33E199C();
  v45 = v65;
  sub_1A34CC160();

  sub_1A3288FDC(v44, &qword_1EB0CA850);
  v46 = v69;
  sub_1A34CB180();
  v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA848) + 36);
  v48 = v70;
  v49 = v71;
  v50 = v72;
  (*(v71 + 16))(v70 + v47, v46, v72);
  v51 = *(v49 + 56);
  v51((v48 + v47), 0, 1, v50);
  (*(v66 + 32))(v48, v45, v67);
  KeyPath = swift_getKeyPath();
  v53 = (v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA840) + 36));
  v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0CA890) + 28);
  (*(v49 + 32))(v53 + v54, v46, v50);
  result = v51(v53 + v54, 0, 1, v50);
  *v53 = KeyPath;
  return result;
}