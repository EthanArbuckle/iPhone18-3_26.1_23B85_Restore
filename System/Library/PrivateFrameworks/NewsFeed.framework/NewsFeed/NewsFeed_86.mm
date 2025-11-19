BOOL sub_1D62F87BC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D725AA4C();
  LOBYTE(a2) = sub_1D5BE240C(v3, v4, a2);

  return (a2 & 1) == 0;
}

uint64_t sub_1D62F881C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, int a4@<W4>, _BYTE *a5@<X5>, char *a6@<X6>, uint64_t a7@<X8>)
{
  v24 = a6;
  v25 = a7;
  sub_1D72627FC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = sub_1D726393C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v23 - v16;
  v28 = a2 | 0x1000;
  v26 = 0;
  v27 = 1;
  sub_1D62F7EF0(a1, &v28, a3, &v26, a4, a5, v24, &v23 - v16);
  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v17, 1, TupleTypeMetadata2) == 1)
  {
    (*(v14 + 8))(v17, v13);
    v18 = *(a5 - 1);
    v19 = 1;
    v20 = v25;
  }

  else
  {

    v18 = *(a5 - 1);
    v21 = v25;
    (*(v18 + 32))(v25, v17, a5);
    v19 = 0;
    v20 = v21;
  }

  return (*(v18 + 56))(v20, v19, 1, a5);
}

uint64_t sub_1D62F8A74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, _BYTE *a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10)
{
  v28 = a7;
  v29 = a9;
  v27 = a5;
  v26[1] = a1;
  sub_1D72627FC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v16 = sub_1D726393C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = v26 - v19;
  v32 = a3;
  v30 = a8;
  v31 = a10;
  sub_1D62F7EF0(a2, &v32, a4, &v30, v27, a6, v28, v26 - v19);
  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v20, 1, TupleTypeMetadata2) == 1)
  {
    (*(v17 + 8))(v20, v16);
    v21 = *(a6 - 1);
    v22 = 1;
    v23 = v29;
  }

  else
  {

    v21 = *(a6 - 1);
    v24 = v29;
    (*(v21 + 32))(v29, v20, a6);
    v22 = 0;
    v23 = v24;
  }

  return (*(v21 + 56))(v23, v22, 1, a6);
}

BOOL sub_1D62F8CCC()
{
  sub_1D72627FC();
  swift_getWitnessTable();
  return (sub_1D72624DC() & 1) == 0;
}

uint64_t sub_1D62F8D6C()
{
  v0 = sub_1D725AA4C();
  v2 = v1;
  if (v0 == sub_1D725AA4C() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1D72646CC();
  }

  return v5 & 1;
}

uint64_t sub_1D62F8E24@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  sub_1D5B68374(a1, v22);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8 = sub_1D725AA4C();
  v10 = *(v4 + 96);
  if (!*(v10 + 16))
  {

    goto LABEL_5;
  }

  v11 = sub_1D5B69D90(v8, v9);
  v13 = v12;

  if ((v13 & 1) == 0)
  {
LABEL_5:
    v16 = 0;
    v15 = 0;
    v17 = 0;
    v18 = 0;
    v20 = 0;
    v19 = 0;
    goto LABEL_6;
  }

  v14 = (*(v10 + 56) + 48 * v11);
  v16 = *v14;
  v15 = v14[1];
  v17 = v14[2];
  v18 = v14[3];
  v20 = v14[4];
  v19 = v14[5];

LABEL_6:
  result = sub_1D5B63F14(v22, a3);
  *(a3 + 40) = v16;
  *(a3 + 48) = v15;
  *(a3 + 56) = v17;
  *(a3 + 64) = v18;
  *(a3 + 72) = v20;
  *(a3 + 80) = v19;
  *(a3 + 88) = a2 & 1;
  return result;
}

BOOL sub_1D62F8F3C()
{
  v1 = v0[4];
  (*(v0[3] + 24))(&v3, v0[2]);
  return (v1 & ~v3) == 0;
}

BOOL sub_1D62F8FC0()
{
  v1 = v0[6];
  (*(v0[4] + 24))(&v3, v0[2]);
  return (v1 & ~v3) == 0;
}

uint64_t sub_1D62F9048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void (*a5)(unsigned __int8 *__return_ptr, uint64_t *, uint64_t *), uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a5;
  *(v12 + 24) = a6;
  if (a3 == a2)
  {
  }

  else
  {
    v13 = *a4;

    v14 = (v13 + 48 * a3);
    v15 = a1 - a3;
    while (2)
    {
      v32 = a3;
      v26 = v15;
      v27 = v14;
      v16 = v15;
      v17 = v14;
      do
      {
        sub_1D5BD86D4(v17, &v30, sub_1D630B6C8);
        v18 = v17 - 3;
        sub_1D5BD86D4((v17 - 3), &v28, sub_1D630B6C8);
        v19 = sub_1D62F2C4C(v30, &v31, v28, &v29, a5);
        sub_1D5BCF630(&v28, sub_1D630B6C8);
        sub_1D5BCF630(&v30, sub_1D630B6C8);
        if ((v19 & 1) == 0)
        {
          break;
        }

        if (!v13)
        {

          __break(1u);
          return result;
        }

        v21 = v17[1];
        v20 = v17[2];
        v22 = *v17;
        v23 = *(v17 - 2);
        *v17 = *v18;
        v17[1] = v23;
        v17[2] = *(v17 - 1);
        *v18 = v22;
        *(v17 - 2) = v21;
        v17 -= 3;
        v18[2] = v20;
      }

      while (!__CFADD__(v16++, 1));
      a3 = v32 + 1;
      v14 = v27 + 3;
      v15 = v26 - 1;
      if (v32 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }
}

uint64_t sub_1D62F921C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, char *, void *), uint64_t a6)
{
  sub_1D5C17CEC(0, &qword_1EDF1ACC0, type metadata accessor for FeedHeadline);
  v49 = v13;
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v45 = v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v47 = (v36 - v19);
  MEMORY[0x1EEE9AC00](v20, v21);
  v46 = (v36 - v22);
  v23 = swift_allocObject();
  v48 = a5;
  *(v23 + 16) = a5;
  *(v23 + 24) = a6;
  v38 = a2;
  if (a3 == a2)
  {
  }

  else
  {
    v36[1] = v23;
    v36[2] = v6;
    v24 = *a4;
    v25 = *(v14 + 72);

    v26 = v24 + v25 * (a3 - 1);
    v43 = -v25;
    v44 = v24;
    v27 = a1 - a3;
    v37 = v25;
    v28 = v24 + v25 * a3;
    v29 = v49;
    v30 = v47;
    while (2)
    {
      v41 = v26;
      v42 = a3;
      v39 = v28;
      v40 = v27;
      v50 = v27;
      do
      {
        v31 = v46;
        sub_1D630B5FC(v28, v46, &qword_1EDF1ACC0, type metadata accessor for FeedHeadline);
        sub_1D630B5FC(v26, v30, &qword_1EDF1ACC0, type metadata accessor for FeedHeadline);
        v32 = sub_1D62F2DCC(*v31, v31 + *(v29 + 48), *v30, v30 + *(v29 + 48), v48, a6, &qword_1EDF1AC80, type metadata accessor for FeedHeadline, type metadata accessor for FeedHeadline);
        sub_1D630B668(v30, &qword_1EDF1ACC0, type metadata accessor for FeedHeadline, sub_1D5C17CEC);
        v29 = v49;
        sub_1D630B668(v31, &qword_1EDF1ACC0, type metadata accessor for FeedHeadline, sub_1D5C17CEC);
        if ((v32 & 1) == 0)
        {
          break;
        }

        if (!v44)
        {

          __break(1u);
          return result;
        }

        v33 = v45;
        sub_1D630BA20(v28, v45, &qword_1EDF1ACC0, type metadata accessor for FeedHeadline);
        swift_arrayInitWithTakeFrontToBack();
        sub_1D630BA20(v33, v26, &qword_1EDF1ACC0, type metadata accessor for FeedHeadline);
        v26 += v43;
        v28 += v43;
      }

      while (!__CFADD__(v50++, 1));
      a3 = v42 + 1;
      v26 = v41 + v37;
      v27 = v40 - 1;
      v28 = v39 + v37;
      if (v42 + 1 != v38)
      {
        continue;
      }

      break;
    }
  }
}

uint64_t sub_1D62F959C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, char *, void *), uint64_t a6)
{
  sub_1D5C17CEC(0, &qword_1EDF04780, type metadata accessor for FeedCustomItem);
  v49 = v13;
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v45 = v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v47 = (v36 - v19);
  MEMORY[0x1EEE9AC00](v20, v21);
  v46 = (v36 - v22);
  v23 = swift_allocObject();
  v48 = a5;
  *(v23 + 16) = a5;
  *(v23 + 24) = a6;
  v38 = a2;
  if (a3 == a2)
  {
  }

  else
  {
    v36[1] = v23;
    v36[2] = v6;
    v24 = *a4;
    v25 = *(v14 + 72);

    v26 = v24 + v25 * (a3 - 1);
    v43 = -v25;
    v44 = v24;
    v27 = a1 - a3;
    v37 = v25;
    v28 = v24 + v25 * a3;
    v29 = v49;
    v30 = v47;
    while (2)
    {
      v41 = v26;
      v42 = a3;
      v39 = v28;
      v40 = v27;
      v50 = v27;
      do
      {
        v31 = v46;
        sub_1D630B5FC(v28, v46, &qword_1EDF04780, type metadata accessor for FeedCustomItem);
        sub_1D630B5FC(v26, v30, &qword_1EDF04780, type metadata accessor for FeedCustomItem);
        v32 = sub_1D62F2DCC(*v31, v31 + *(v29 + 48), *v30, v30 + *(v29 + 48), v48, a6, &qword_1EDF046F8, type metadata accessor for FeedCustomItem, type metadata accessor for FeedCustomItem);
        sub_1D630B668(v30, &qword_1EDF04780, type metadata accessor for FeedCustomItem, sub_1D5C17CEC);
        v29 = v49;
        sub_1D630B668(v31, &qword_1EDF04780, type metadata accessor for FeedCustomItem, sub_1D5C17CEC);
        if ((v32 & 1) == 0)
        {
          break;
        }

        if (!v44)
        {

          __break(1u);
          return result;
        }

        v33 = v45;
        sub_1D630BA20(v28, v45, &qword_1EDF04780, type metadata accessor for FeedCustomItem);
        swift_arrayInitWithTakeFrontToBack();
        sub_1D630BA20(v33, v26, &qword_1EDF04780, type metadata accessor for FeedCustomItem);
        v26 += v43;
        v28 += v43;
      }

      while (!__CFADD__(v50++, 1));
      a3 = v42 + 1;
      v26 = v41 + v37;
      v27 = v40 - 1;
      v28 = v39 + v37;
      if (v42 + 1 != v38)
      {
        continue;
      }

      break;
    }
  }
}

uint64_t sub_1D62F991C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, char *, void *), uint64_t a6)
{
  sub_1D5C17CEC(0, &unk_1EDF04740, type metadata accessor for FeedRecipe);
  v49 = v13;
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v45 = v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v47 = (v36 - v19);
  MEMORY[0x1EEE9AC00](v20, v21);
  v46 = (v36 - v22);
  v23 = swift_allocObject();
  v48 = a5;
  *(v23 + 16) = a5;
  *(v23 + 24) = a6;
  v38 = a2;
  if (a3 == a2)
  {
  }

  else
  {
    v36[1] = v23;
    v36[2] = v6;
    v24 = *a4;
    v25 = *(v14 + 72);

    v26 = v24 + v25 * (a3 - 1);
    v43 = -v25;
    v44 = v24;
    v27 = a1 - a3;
    v37 = v25;
    v28 = v24 + v25 * a3;
    v29 = v49;
    v30 = v47;
    while (2)
    {
      v41 = v26;
      v42 = a3;
      v39 = v28;
      v40 = v27;
      v50 = v27;
      do
      {
        v31 = v46;
        sub_1D630B5FC(v28, v46, &unk_1EDF04740, type metadata accessor for FeedRecipe);
        sub_1D630B5FC(v26, v30, &unk_1EDF04740, type metadata accessor for FeedRecipe);
        v32 = sub_1D62F2DCC(*v31, v31 + *(v29 + 48), *v30, v30 + *(v29 + 48), v48, a6, &qword_1EDF046D0, type metadata accessor for FeedRecipe, type metadata accessor for FeedRecipe);
        sub_1D630B668(v30, &unk_1EDF04740, type metadata accessor for FeedRecipe, sub_1D5C17CEC);
        v29 = v49;
        sub_1D630B668(v31, &unk_1EDF04740, type metadata accessor for FeedRecipe, sub_1D5C17CEC);
        if ((v32 & 1) == 0)
        {
          break;
        }

        if (!v44)
        {

          __break(1u);
          return result;
        }

        v33 = v45;
        sub_1D630BA20(v28, v45, &unk_1EDF04740, type metadata accessor for FeedRecipe);
        swift_arrayInitWithTakeFrontToBack();
        sub_1D630BA20(v33, v26, &unk_1EDF04740, type metadata accessor for FeedRecipe);
        v26 += v43;
        v28 += v43;
      }

      while (!__CFADD__(v50++, 1));
      a3 = v42 + 1;
      v26 = v41 + v37;
      v27 = v40 - 1;
      v28 = v39 + v37;
      if (v42 + 1 != v38)
      {
        continue;
      }

      break;
    }
  }
}

uint64_t sub_1D62F9C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, char *, void *), uint64_t a6)
{
  sub_1D5C17CEC(0, &qword_1EC88F4F0, type metadata accessor for FeedPuzzleStatistic);
  v49 = v13;
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v45 = v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v47 = (v36 - v19);
  MEMORY[0x1EEE9AC00](v20, v21);
  v46 = (v36 - v22);
  v23 = swift_allocObject();
  v48 = a5;
  *(v23 + 16) = a5;
  *(v23 + 24) = a6;
  v38 = a2;
  if (a3 == a2)
  {
  }

  else
  {
    v36[1] = v23;
    v36[2] = v6;
    v24 = *a4;
    v25 = *(v14 + 72);

    v26 = v24 + v25 * (a3 - 1);
    v43 = -v25;
    v44 = v24;
    v27 = a1 - a3;
    v37 = v25;
    v28 = v24 + v25 * a3;
    v29 = v49;
    v30 = v47;
    while (2)
    {
      v41 = v26;
      v42 = a3;
      v39 = v28;
      v40 = v27;
      v50 = v27;
      do
      {
        v31 = v46;
        sub_1D630B5FC(v28, v46, &qword_1EC88F4F0, type metadata accessor for FeedPuzzleStatistic);
        sub_1D630B5FC(v26, v30, &qword_1EC88F4F0, type metadata accessor for FeedPuzzleStatistic);
        v32 = sub_1D62F2DCC(*v31, v31 + *(v29 + 48), *v30, v30 + *(v29 + 48), v48, a6, &qword_1EC885978, type metadata accessor for FeedPuzzleStatistic, type metadata accessor for FeedPuzzleStatistic);
        sub_1D630B668(v30, &qword_1EC88F4F0, type metadata accessor for FeedPuzzleStatistic, sub_1D5C17CEC);
        v29 = v49;
        sub_1D630B668(v31, &qword_1EC88F4F0, type metadata accessor for FeedPuzzleStatistic, sub_1D5C17CEC);
        if ((v32 & 1) == 0)
        {
          break;
        }

        if (!v44)
        {

          __break(1u);
          return result;
        }

        v33 = v45;
        sub_1D630BA20(v28, v45, &qword_1EC88F4F0, type metadata accessor for FeedPuzzleStatistic);
        swift_arrayInitWithTakeFrontToBack();
        sub_1D630BA20(v33, v26, &qword_1EC88F4F0, type metadata accessor for FeedPuzzleStatistic);
        v26 += v43;
        v28 += v43;
      }

      while (!__CFADD__(v50++, 1));
      a3 = v42 + 1;
      v26 = v41 + v37;
      v27 = v40 - 1;
      v28 = v39 + v37;
      if (v42 + 1 != v38)
      {
        continue;
      }

      break;
    }
  }
}

uint64_t sub_1D62FA01C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void (*a5)(unsigned __int8 *__return_ptr, uint64_t *, uint64_t *), uint64_t a6)
{
  v12 = swift_allocObject();
  v45 = a5;
  *(v12 + 16) = a5;
  *(v12 + 24) = a6;
  if (a3 == a2)
  {
  }

  else
  {
    v13 = *a4;

    v14 = v13 + 216 * a3;
    v15 = a1 - a3;
    while (2)
    {
      v27 = v14;
      v28 = a3;
      v26 = v15;
      do
      {
        sub_1D6306E88(v14, &v31, &unk_1EDF04750);
        v16 = (v14 - 216);
        sub_1D6306E88(v14 - 216, &v29, &unk_1EDF04750);
        v17 = sub_1D62F2CF8(v31, &v31 + 8, v29, &v30, v45);
        sub_1D6306DB0(&v29, &unk_1EDF04750, &type metadata for FeedPuzzle, sub_1D5C82990);
        sub_1D6306DB0(&v31, &unk_1EDF04750, &type metadata for FeedPuzzle, sub_1D5C82990);
        if ((v17 & 1) == 0)
        {
          break;
        }

        if (!v13)
        {

          __break(1u);
          return result;
        }

        v41 = *(v14 + 160);
        v42 = *(v14 + 176);
        v43 = *(v14 + 192);
        v44 = *(v14 + 208);
        v37 = *(v14 + 96);
        v38 = *(v14 + 112);
        v39 = *(v14 + 128);
        v40 = *(v14 + 144);
        v33 = *(v14 + 32);
        v34 = *(v14 + 48);
        v35 = *(v14 + 64);
        v36 = *(v14 + 80);
        v31 = *v14;
        v32 = *(v14 + 16);
        v18 = *(v14 - 40);
        *(v14 + 160) = *(v14 - 56);
        *(v14 + 176) = v18;
        *(v14 + 192) = *(v14 - 24);
        *(v14 + 208) = *(v14 - 8);
        v19 = *(v14 - 104);
        *(v14 + 96) = *(v14 - 120);
        *(v14 + 112) = v19;
        v20 = *(v14 - 72);
        *(v14 + 128) = *(v14 - 88);
        *(v14 + 144) = v20;
        v21 = *(v14 - 168);
        *(v14 + 32) = *(v14 - 184);
        *(v14 + 48) = v21;
        v22 = *(v14 - 136);
        *(v14 + 64) = *(v14 - 152);
        *(v14 + 80) = v22;
        v23 = *(v14 - 200);
        *v14 = *v16;
        *(v14 + 16) = v23;
        *(v14 - 56) = v41;
        *(v14 - 40) = v42;
        *(v14 - 24) = v43;
        *(v14 - 8) = v44;
        *(v14 - 120) = v37;
        *(v14 - 104) = v38;
        *(v14 - 88) = v39;
        *(v14 - 72) = v40;
        *(v14 - 184) = v33;
        *(v14 - 168) = v34;
        *(v14 - 152) = v35;
        *(v14 - 136) = v36;
        *v16 = v31;
        *(v14 - 200) = v32;
        v14 -= 216;
      }

      while (!__CFADD__(v15++, 1));
      a3 = v28 + 1;
      v14 = v27 + 216;
      v15 = v26 - 1;
      if (v28 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }
}

uint64_t sub_1D62FA30C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, char *, void *), uint64_t a6)
{
  sub_1D5C17CEC(0, &qword_1EDF04730, type metadata accessor for FeedWebEmbed);
  v49 = v13;
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v45 = v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v47 = (v36 - v19);
  MEMORY[0x1EEE9AC00](v20, v21);
  v46 = (v36 - v22);
  v23 = swift_allocObject();
  v48 = a5;
  *(v23 + 16) = a5;
  *(v23 + 24) = a6;
  v38 = a2;
  if (a3 == a2)
  {
  }

  else
  {
    v36[1] = v23;
    v36[2] = v6;
    v24 = *a4;
    v25 = *(v14 + 72);

    v26 = v24 + v25 * (a3 - 1);
    v43 = -v25;
    v44 = v24;
    v27 = a1 - a3;
    v37 = v25;
    v28 = v24 + v25 * a3;
    v29 = v49;
    v30 = v47;
    while (2)
    {
      v41 = v26;
      v42 = a3;
      v39 = v28;
      v40 = v27;
      v50 = v27;
      do
      {
        v31 = v46;
        sub_1D630B5FC(v28, v46, &qword_1EDF04730, type metadata accessor for FeedWebEmbed);
        sub_1D630B5FC(v26, v30, &qword_1EDF04730, type metadata accessor for FeedWebEmbed);
        v32 = sub_1D62F2DCC(*v31, v31 + *(v29 + 48), *v30, v30 + *(v29 + 48), v48, a6, &qword_1EDF046C8, type metadata accessor for FeedWebEmbed, type metadata accessor for FeedWebEmbed);
        sub_1D630B668(v30, &qword_1EDF04730, type metadata accessor for FeedWebEmbed, sub_1D5C17CEC);
        v29 = v49;
        sub_1D630B668(v31, &qword_1EDF04730, type metadata accessor for FeedWebEmbed, sub_1D5C17CEC);
        if ((v32 & 1) == 0)
        {
          break;
        }

        if (!v44)
        {

          __break(1u);
          return result;
        }

        v33 = v45;
        sub_1D630BA20(v28, v45, &qword_1EDF04730, type metadata accessor for FeedWebEmbed);
        swift_arrayInitWithTakeFrontToBack();
        sub_1D630BA20(v33, v26, &qword_1EDF04730, type metadata accessor for FeedWebEmbed);
        v26 += v43;
        v28 += v43;
      }

      while (!__CFADD__(v50++, 1));
      a3 = v42 + 1;
      v26 = v41 + v37;
      v27 = v40 - 1;
      v28 = v39 + v37;
      if (v42 + 1 != v38)
      {
        continue;
      }

      break;
    }
  }
}

uint64_t sub_1D62FA68C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void (*a5)(unsigned __int8 *__return_ptr, uint64_t *, uint64_t *), uint64_t a6)
{
  v12 = swift_allocObject();
  v39 = a5;
  *(v12 + 16) = a5;
  *(v12 + 24) = a6;
  if (a3 == a2)
  {
  }

  else
  {
    v13 = *a4;

    v14 = (v13 + 160 * a3);
    v15 = a1 - a3;
    while (2)
    {
      v26 = v14;
      v27 = a3;
      v25 = v15;
      do
      {
        sub_1D6306E88(v14, &v30, &qword_1EDF04760);
        v16 = v14 - 10;
        sub_1D6306E88((v14 - 10), &v28, &qword_1EDF04760);
        v17 = sub_1D62F2F28(v30, &v30 + 8, v28, &v29, v39);
        sub_1D6306DB0(&v28, &qword_1EDF04760, &type metadata for FeedTag, sub_1D5C82990);
        sub_1D6306DB0(&v30, &qword_1EDF04760, &type metadata for FeedTag, sub_1D5C82990);
        if ((v17 & 1) == 0)
        {
          break;
        }

        if (!v13)
        {

          __break(1u);
          return result;
        }

        v36 = v14[6];
        v37 = v14[7];
        v38[0] = v14[8];
        *(v38 + 9) = *(v14 + 137);
        v32 = v14[2];
        v33 = v14[3];
        v34 = v14[4];
        v35 = v14[5];
        v30 = *v14;
        v31 = v14[1];
        v18 = *(v14 - 3);
        v14[6] = *(v14 - 4);
        v14[7] = v18;
        v19 = *(v14 - 1);
        v14[8] = *(v14 - 2);
        v14[9] = v19;
        v20 = *(v14 - 7);
        v14[2] = *(v14 - 8);
        v14[3] = v20;
        v21 = *(v14 - 5);
        v14[4] = *(v14 - 6);
        v14[5] = v21;
        v22 = *(v14 - 9);
        *v14 = *v16;
        v14[1] = v22;
        *(v14 - 4) = v36;
        *(v14 - 3) = v37;
        *(v14 - 2) = v38[0];
        *(v14 - 23) = *(v38 + 9);
        *(v14 - 8) = v32;
        *(v14 - 7) = v33;
        *(v14 - 6) = v34;
        *(v14 - 5) = v35;
        *v16 = v30;
        *(v14 - 9) = v31;
        v14 -= 10;
      }

      while (!__CFADD__(v15++, 1));
      a3 = v27 + 1;
      v14 = v26 + 10;
      v15 = v25 - 1;
      if (v27 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }
}

uint64_t sub_1D62FA924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void (*a5)(unsigned __int8 *__return_ptr, uint64_t *, uint64_t *), uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a5;
  *(v12 + 24) = a6;
  v20 = a2;
  if (a3 == a2)
  {
  }

  else
  {
    v13 = *a4;

    v14 = v13 + 296 * a3 - 296;
    v15 = a1 - a3;
    while (2)
    {
      v26 = a3;
      v21 = v15;
      v22 = v14;
      v16 = v15;
      do
      {
        sub_1D6306E88(v14 + 296, __dst, &qword_1EC885950);
        sub_1D6306E88(v14, &v23, &qword_1EC885950);
        v17 = sub_1D62F2FFC(__dst[0], &__dst[1], v23, &v24, a5);
        sub_1D6306DB0(&v23, &qword_1EC885950, &type metadata for FeedCatalogItem, sub_1D5C82990);
        sub_1D6306DB0(__dst, &qword_1EC885950, &type metadata for FeedCatalogItem, sub_1D5C82990);
        if ((v17 & 1) == 0)
        {
          break;
        }

        if (!v13)
        {

          __break(1u);
          return result;
        }

        memcpy(__dst, (v14 + 296), 0x122uLL);
        memcpy((v14 + 296), v14, 0x128uLL);
        memcpy(v14, __dst, 0x122uLL);
        v14 -= 296;
      }

      while (!__CFADD__(v16++, 1));
      a3 = v26 + 1;
      v14 = v22 + 296;
      v15 = v21 - 1;
      if (v26 + 1 != v20)
      {
        continue;
      }

      break;
    }
  }
}

uint64_t sub_1D62FAB18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void (*a5)(unsigned __int8 *__return_ptr, uint64_t *, uint64_t *), uint64_t a6)
{
  v12 = swift_allocObject();
  v40 = a5;
  *(v12 + 16) = a5;
  *(v12 + 24) = a6;
  if (a3 == a2)
  {
  }

  else
  {
    v13 = *a4;

    v14 = (v13 + 160 * a3);
    v15 = a1 - a3;
    while (2)
    {
      v26 = v14;
      v27 = a3;
      v25 = v15;
      do
      {
        sub_1D6306E88(v14, &v30, &qword_1EC885930);
        v16 = v14 - 10;
        sub_1D6306E88((v14 - 10), &v28, &qword_1EC885930);
        v17 = sub_1D62F30D0(v30, &v30 + 8, v28, &v29, v40);
        sub_1D6306DB0(&v28, &qword_1EC885930, &type metadata for FeedCategory, sub_1D5C82990);
        sub_1D6306DB0(&v30, &qword_1EC885930, &type metadata for FeedCategory, sub_1D5C82990);
        if ((v17 & 1) == 0)
        {
          break;
        }

        if (!v13)
        {

          __break(1u);
          return result;
        }

        v36 = v14[6];
        v37 = v14[7];
        v38 = v14[8];
        v39 = v14[9];
        v32 = v14[2];
        v33 = v14[3];
        v34 = v14[4];
        v35 = v14[5];
        v30 = *v14;
        v31 = v14[1];
        v18 = *(v14 - 3);
        v14[6] = *(v14 - 4);
        v14[7] = v18;
        v19 = *(v14 - 1);
        v14[8] = *(v14 - 2);
        v14[9] = v19;
        v20 = *(v14 - 7);
        v14[2] = *(v14 - 8);
        v14[3] = v20;
        v21 = *(v14 - 5);
        v14[4] = *(v14 - 6);
        v14[5] = v21;
        v22 = *(v14 - 9);
        *v14 = *v16;
        v14[1] = v22;
        *(v14 - 4) = v36;
        *(v14 - 3) = v37;
        *(v14 - 2) = v38;
        *(v14 - 1) = v39;
        *(v14 - 8) = v32;
        *(v14 - 7) = v33;
        *(v14 - 6) = v34;
        *(v14 - 5) = v35;
        *v16 = v30;
        *(v14 - 9) = v31;
        v14 -= 10;
      }

      while (!__CFADD__(v15++, 1));
      a3 = v27 + 1;
      v14 = v26 + 10;
      v15 = v25 - 1;
      if (v27 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }
}

uint64_t sub_1D62FADAC(char *a1, char *a2, char *a3, char *a4, void (*a5)(unsigned __int8 *__return_ptr, uint64_t *, uint64_t *), uint64_t a6)
{
  v12 = swift_allocObject();
  v35 = a5;
  *(v12 + 16) = a5;
  *(v12 + 24) = a6;
  v39[6] = a6;
  v13 = (a2 - a1) / 48;
  v14 = (a3 - a2) / 48;
  if (v13 >= v14)
  {
    if (a4 != a2 || &a2[48 * v14] <= a4)
    {
      memmove(a4, a2, 48 * v14);
    }

    v15 = &a4[48 * v14];
    if (a3 - a2 < 48 || a2 <= a1)
    {
      v21 = a2;
    }

    else
    {
      v34 = a4;
      do
      {
        v22 = a2 - 48;
        v23 = v15 - 48;
        a3 -= 48;
        while (1)
        {
          v15 = v23 + 48;
          v26 = a3 + 48;
          sub_1D5BD86D4(v23, &v38, sub_1D630B6C8);
          sub_1D5BD86D4(v22, &v36, sub_1D630B6C8);
          v27 = sub_1D62F2C4C(v38, v39, v36, v37, v35);
          sub_1D5BCF630(&v36, sub_1D630B6C8);
          sub_1D5BCF630(&v38, sub_1D630B6C8);
          if (v27)
          {
            break;
          }

          if (v26 != v15)
          {
            v28 = *v23;
            v29 = *(v23 + 2);
            *(a3 + 1) = *(v23 + 1);
            *(a3 + 2) = v29;
            *a3 = v28;
          }

          v24 = v23 - 48;
          a3 -= 48;
          v25 = v23 > v34;
          v23 -= 48;
          if (!v25)
          {
            v15 = v24 + 48;
            v21 = a2;
            a4 = v34;
            goto LABEL_34;
          }
        }

        v21 = a2 - 48;
        if (v26 != a2)
        {
          v30 = *v22;
          v31 = *(a2 - 1);
          *(a3 + 1) = *(a2 - 2);
          *(a3 + 2) = v31;
          *a3 = v30;
        }

        a4 = v34;
        if (v15 <= v34)
        {
          break;
        }

        a2 -= 48;
      }

      while (v22 > a1);
      v15 = v23 + 48;
    }
  }

  else
  {
    if (a4 != a1 || &a1[48 * v13] <= a4)
    {
      memmove(a4, a1, 48 * v13);
    }

    v15 = &a4[48 * v13];
    if (a2 - a1 >= 48 && a2 < a3)
    {
      while (1)
      {
        sub_1D5BD86D4(a2, &v38, sub_1D630B6C8);
        sub_1D5BD86D4(a4, &v36, sub_1D630B6C8);
        v16 = sub_1D62F2C4C(v38, v39, v36, v37, a5);
        sub_1D5BCF630(&v36, sub_1D630B6C8);
        sub_1D5BCF630(&v38, sub_1D630B6C8);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v17 = a2;
        v18 = a1 == a2;
        a2 += 48;
        if (!v18)
        {
          goto LABEL_12;
        }

LABEL_13:
        a1 += 48;
        if (a4 >= v15 || a2 >= a3)
        {
          goto LABEL_15;
        }
      }

      v17 = a4;
      v18 = a1 == a4;
      a4 += 48;
      if (v18)
      {
        goto LABEL_13;
      }

LABEL_12:
      v19 = *v17;
      v20 = *(v17 + 2);
      *(a1 + 1) = *(v17 + 1);
      *(a1 + 2) = v20;
      *a1 = v19;
      goto LABEL_13;
    }

LABEL_15:
    v21 = a1;
  }

LABEL_34:
  v32 = (v15 - a4) / 48;
  if (v21 != a4 || v21 >= &a4[48 * v32])
  {
    memmove(v21, a4, 48 * v32);
  }

  return 1;
}

uint64_t sub_1D62FB160(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, void (*a5)(uint64_t *__return_ptr, char *, void *), uint64_t a6)
{
  sub_1D5C17CEC(0, &qword_1EDF1ACC0, type metadata accessor for FeedHeadline);
  v57 = v12;
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v54 = (v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16, v17);
  v53 = (v46 - v18);
  result = swift_allocObject();
  v55 = a5;
  v56 = a6;
  *(result + 16) = a5;
  *(result + 24) = a6;
  v20 = *(v13 + 72);
  if (!v20)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  v21 = a2 - a1;
  if (a2 - a1 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_62;
  }

  v22 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_63;
  }

  v60 = a1;
  v59 = a4;
  v46[1] = result;
  if (v21 / v20 >= v22 / v20)
  {
    v24 = v22 / v20 * v20;
    if (a4 < a2 || a2 + v24 <= a4)
    {

      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {

      if (a4 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v32 = a4 + v24;
    if (v24 >= 1)
    {
      v33 = -v20;
      v34 = v32;
      v48 = a1;
      v49 = a4;
      v50 = v33;
      while (2)
      {
        while (1)
        {
          v46[0] = v32;
          v35 = a2;
          v51 = a2;
          v52 = a2 + v33;
          while (1)
          {
            if (v35 <= a1)
            {
              v60 = v35;
              v58 = v46[0];
              goto LABEL_60;
            }

            v38 = a3;
            v47 = v32;
            v39 = a3 + v33;
            v40 = v34 + v33;
            v41 = v34;
            v42 = v53;
            sub_1D630B5FC(v40, v53, &qword_1EDF1ACC0, type metadata accessor for FeedHeadline);
            v43 = v54;
            sub_1D630B5FC(v52, v54, &qword_1EDF1ACC0, type metadata accessor for FeedHeadline);
            v44 = sub_1D62F2DCC(*v42, v42 + *(v57 + 48), *v43, v43 + *(v57 + 48), v55, v56, &qword_1EDF1AC80, type metadata accessor for FeedHeadline, type metadata accessor for FeedHeadline);
            sub_1D630B668(v43, &qword_1EDF1ACC0, type metadata accessor for FeedHeadline, sub_1D5C17CEC);
            sub_1D630B668(v42, &qword_1EDF1ACC0, type metadata accessor for FeedHeadline, sub_1D5C17CEC);
            if (v44)
            {
              break;
            }

            v32 = v40;
            a3 = v39;
            if (v38 < v41 || v39 >= v41)
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v48;
              v36 = v49;
            }

            else
            {
              a1 = v48;
              v36 = v49;
              if (v38 != v41)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v34 = v40;
            v37 = v40 > v36;
            v33 = v50;
            v35 = v51;
            if (!v37)
            {
              a2 = v51;
              goto LABEL_59;
            }
          }

          v34 = v41;
          a3 = v39;
          if (v38 < v51 || v39 >= v51)
          {
            break;
          }

          a2 = v52;
          a1 = v48;
          v45 = v49;
          v32 = v47;
          v33 = v50;
          if (v38 != v51)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v34 <= v45)
          {
            goto LABEL_59;
          }
        }

        a2 = v52;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v48;
        v32 = v47;
        v33 = v50;
        if (v34 > v49)
        {
          continue;
        }

        break;
      }
    }

LABEL_59:
    v60 = a2;
    v58 = v32;
  }

  else
  {
    v23 = v21 / v20 * v20;
    if (a4 < a1 || a1 + v23 <= a4)
    {

      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {

      if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v52 = a4 + v23;
    v58 = a4 + v23;
    if (v23 >= 1 && a2 < a3)
    {
      v50 = v20;
      v51 = a3;
      do
      {
        v26 = v53;
        v27 = a4;
        sub_1D630B5FC(a2, v53, &qword_1EDF1ACC0, type metadata accessor for FeedHeadline);
        v28 = v54;
        sub_1D630B5FC(a4, v54, &qword_1EDF1ACC0, type metadata accessor for FeedHeadline);
        v29 = sub_1D62F2DCC(*v26, v26 + *(v57 + 48), *v28, v28 + *(v57 + 48), v55, v56, &qword_1EDF1AC80, type metadata accessor for FeedHeadline, type metadata accessor for FeedHeadline);
        sub_1D630B668(v28, &qword_1EDF1ACC0, type metadata accessor for FeedHeadline, sub_1D5C17CEC);
        sub_1D630B668(v26, &qword_1EDF1ACC0, type metadata accessor for FeedHeadline, sub_1D5C17CEC);
        if (v29)
        {
          v30 = v50;
          if (a1 < a2 || a1 >= a2 + v50)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v30;
            v31 = v51;
          }

          else
          {
            v31 = v51;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v30;
          }
        }

        else
        {
          v30 = v50;
          a4 += v50;
          if (a1 < v27 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            v31 = v51;
          }

          else
          {
            v31 = v51;
            if (a1 != v27)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v59 = a4;
        }

        a1 += v30;
        v60 = a1;
      }

      while (a4 < v52 && a2 < v31);
    }
  }

LABEL_60:
  sub_1D62FF610(&v60, &v59, &v58, &qword_1EDF1ACC0, type metadata accessor for FeedHeadline);

  return 1;
}

uint64_t sub_1D62FB7F4(char *__src, char *a2, char *a3, char *__dst, uint64_t (*a5)(uint64_t, char *, uint64_t, char *))
{
  v5 = __dst;
  v6 = a3;
  v8 = a2 - __src;
  v9 = (a2 - __src) / 152;
  v10 = a3 - a2;
  v11 = (a3 - a2) / 152;
  if (v9 < v11)
  {
    v12 = a2;
    v13 = 152 * v9;
    if (__dst != __src || &__src[v13] <= __dst)
    {
      memmove(__dst, __src, v13);
    }

    v14 = __src;
    v15 = v5 + v13;
    if (v8 < 152)
    {
      v46 = v14;
      goto LABEL_48;
    }

    v16 = v14;
    if (v12 >= v6)
    {
LABEL_16:
      v46 = v16;
      goto LABEL_48;
    }

    v17 = &type metadata for FeedIssue;
    v18 = &unk_1EC88EAF0;
    v84 = v6;
    while (1)
    {
      __dsta = v16;
      v19 = *(v12 + 1);
      v107 = *v12;
      v108 = v19;
      v20 = *(v12 + 2);
      v21 = *(v12 + 3);
      v22 = *(v12 + 5);
      v111 = *(v12 + 4);
      v112 = v22;
      v109 = v20;
      v110 = v21;
      v23 = *(v12 + 6);
      v24 = *(v12 + 7);
      v25 = *(v12 + 8);
      v26 = v12;
      v116 = v12[144];
      v114 = v24;
      v115 = v25;
      v113 = v23;
      v27 = *(v5 + 16);
      v117 = *v5;
      v118 = v27;
      v28 = *(v5 + 32);
      v29 = *(v5 + 48);
      v30 = *(v5 + 80);
      v121 = *(v5 + 64);
      v122 = v30;
      v119 = v28;
      v120 = v29;
      v31 = *(v5 + 96);
      v32 = *(v5 + 112);
      v33 = *(v5 + 128);
      v126 = *(v5 + 144);
      v124 = v32;
      v125 = v33;
      v123 = v31;
      v34 = v107;
      v103 = v113;
      v104 = v114;
      v105 = v115;
      v106 = v116;
      v99 = v109;
      v100 = v110;
      v101 = v111;
      v102 = v112;
      v97 = v107;
      v98 = v108;
      v35 = v117;
      v93 = v31;
      v94 = v32;
      v95 = v33;
      v96 = v126;
      v89 = v119;
      v90 = v120;
      v91 = v121;
      v92 = v30;
      v87 = v117;
      v88 = v118;
      v36 = v17;
      sub_1D6306E88(&v107, v86, v18);
      sub_1D6306E88(&v117, v86, v18);
      v37 = v127;
      v38 = a5(v34, &v97 + 8, v35, &v87 + 8);
      v127 = v37;
      if (v37)
      {
        sub_1D6306DB0(&v117, &unk_1EC88EAF0, &type metadata for FeedIssue, sub_1D5C82990);
        sub_1D6306DB0(&v107, &unk_1EC88EAF0, &type metadata for FeedIssue, sub_1D5C82990);
        v74 = v15 - v5;
        v75 = 152 * ((v15 - v5) / 152);
        v46 = __dsta;
        if (__dsta < v5)
        {
          goto LABEL_51;
        }

LABEL_49:
        if (v46 >= v15 + v75 - v74 || v46 != v5)
        {
LABEL_51:
          v76 = v5;
          goto LABEL_52;
        }

        return 1;
      }

      v39 = v38;
      sub_1D6306DB0(&v117, v18, v36, sub_1D5C82990);
      v40 = v18;
      v41 = v18;
      v42 = v36;
      sub_1D6306DB0(&v107, v41, v36, sub_1D5C82990);
      if ((v39 & 1) == 0)
      {
        break;
      }

      v43 = v26;
      v12 = v26 + 152;
      v44 = __dsta;
      if (__dsta != v26)
      {
        goto LABEL_13;
      }

LABEL_14:
      v16 = v44 + 152;
      if (v5 < v15)
      {
        v17 = v42;
        v18 = v40;
        if (v12 < v84)
        {
          continue;
        }
      }

      goto LABEL_16;
    }

    v43 = v5;
    v44 = __dsta;
    v45 = __dsta == v5;
    v5 += 152;
    v12 = v26;
    if (v45)
    {
      goto LABEL_14;
    }

LABEL_13:
    memmove(v44, v43, 0x98uLL);
    goto LABEL_14;
  }

  v47 = 152 * v11;
  if (__dst != a2 || &a2[v47] <= __dst)
  {
    v48 = a2;
    memmove(__dst, a2, 152 * v11);
    a2 = v48;
  }

  v46 = a2;
  v15 = v5 + v47;
  if (v10 < 152 || a2 <= __src)
  {
LABEL_48:
    v74 = v15 - v5;
    v75 = 152 * ((v15 - v5) / 152);
    if (v46 < v5)
    {
      goto LABEL_51;
    }

    goto LABEL_49;
  }

  v49 = -v5;
  v78 = -v5;
  v79 = v5;
LABEL_23:
  v50 = v46;
  v16 = v46 - 152;
  v51 = v49 + v15;
  v52 = v6 - 152;
  v53 = v15;
  while (1)
  {
    v80 = v51;
    v85 = v52;
    v15 = v53;
    v54 = *(v53 - 136);
    v107 = *(v53 - 152);
    v108 = v54;
    v55 = *(v53 - 120);
    v56 = *(v53 - 104);
    v57 = *(v53 - 72);
    v111 = *(v53 - 88);
    v112 = v57;
    v109 = v55;
    v110 = v56;
    v58 = *(v53 - 56);
    v59 = *(v53 - 24);
    v60 = *(v53 - 8);
    v114 = *(v53 - 40);
    v115 = v59;
    v113 = v58;
    v61 = *(v16 + 1);
    v62 = v61;
    v117 = *v16;
    v118 = v61;
    v63 = *(v16 + 3);
    v64 = *(v16 + 5);
    v121 = *(v16 + 4);
    v122 = v64;
    v65 = *(v16 + 3);
    v119 = *(v16 + 2);
    v120 = v65;
    v66 = *(v16 + 7);
    v125 = *(v16 + 8);
    v67 = *(v16 + 7);
    v68 = *(v16 + 5);
    v123 = *(v16 + 6);
    v124 = v67;
    v103 = v113;
    v104 = v114;
    v105 = v59;
    v99 = v109;
    v100 = v110;
    v101 = v111;
    v102 = v112;
    v97 = v107;
    v98 = v108;
    v93 = v123;
    v94 = v66;
    v95 = *(v16 + 8);
    v89 = v119;
    v90 = v63;
    v116 = v60;
    v126 = v16[144];
    v69 = v107;
    v106 = v60;
    v70 = v117;
    v96 = v16[144];
    v91 = v121;
    v92 = v68;
    v87 = v117;
    v88 = v62;
    sub_1D6306E88(&v107, v86, &unk_1EC88EAF0);
    sub_1D6306E88(&v117, v86, &unk_1EC88EAF0);
    v71 = v127;
    v72 = a5(v69, &v97 + 8, v70, &v87 + 8);
    v127 = v71;
    if (v71)
    {
      break;
    }

    v73 = v72;
    sub_1D6306DB0(&v117, &unk_1EC88EAF0, &type metadata for FeedIssue, sub_1D5C82990);
    sub_1D6306DB0(&v107, &unk_1EC88EAF0, &type metadata for FeedIssue, sub_1D5C82990);
    if (v73)
    {
      v6 = v85;
      if ((v85 + 152) < v50 || v85 >= v50)
      {
        memmove(v85, v16, 0x98uLL);
        v5 = v79;
      }

      else
      {
        v5 = v79;
        if (v85 + 152 != v50)
        {
          memmove(v85, v16, 0x98uLL);
        }
      }

      if (v15 <= v5)
      {
        goto LABEL_16;
      }

      v46 = v16;
      v49 = v78;
      if (v16 <= __src)
      {
        goto LABEL_16;
      }

      goto LABEL_23;
    }

    v53 = v15 - 152;
    if ((v85 + 152) < v15 || v85 >= v15)
    {
      memmove(v85, (v15 - 152), 0x98uLL);
      v5 = v79;
    }

    else
    {
      v5 = v79;
      if (v85 + 152 != v15)
      {
        memmove(v85, (v15 - 152), 0x98uLL);
      }
    }

    v51 = v80 - 152;
    v52 = v85 - 152;
    if (v53 <= v5)
    {
      v15 -= 152;
      v46 = v50;
      goto LABEL_48;
    }
  }

  sub_1D6306DB0(&v117, &unk_1EC88EAF0, &type metadata for FeedIssue, sub_1D5C82990);
  sub_1D6306DB0(&v107, &unk_1EC88EAF0, &type metadata for FeedIssue, sub_1D5C82990);
  v76 = v79;
  v75 = 152 * (v80 / 152);
  v46 = v50;
  if (v50 < v79 || v50 >= &v79[v75] || v50 != v79)
  {
LABEL_52:
    memmove(v46, v76, v75);
  }

  return 1;
}

uint64_t sub_1D62FBF28(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, void (*a5)(uint64_t *__return_ptr, char *, void *), uint64_t a6)
{
  sub_1D5C17CEC(0, &qword_1EDF04780, type metadata accessor for FeedCustomItem);
  v57 = v12;
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v54 = (v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16, v17);
  v53 = (v46 - v18);
  result = swift_allocObject();
  v55 = a5;
  v56 = a6;
  *(result + 16) = a5;
  *(result + 24) = a6;
  v20 = *(v13 + 72);
  if (!v20)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  v21 = a2 - a1;
  if (a2 - a1 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_62;
  }

  v22 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_63;
  }

  v60 = a1;
  v59 = a4;
  v46[1] = result;
  if (v21 / v20 >= v22 / v20)
  {
    v24 = v22 / v20 * v20;
    if (a4 < a2 || a2 + v24 <= a4)
    {

      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {

      if (a4 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v32 = a4 + v24;
    if (v24 >= 1)
    {
      v33 = -v20;
      v34 = v32;
      v48 = a1;
      v49 = a4;
      v50 = v33;
      while (2)
      {
        while (1)
        {
          v46[0] = v32;
          v35 = a2;
          v51 = a2;
          v52 = a2 + v33;
          while (1)
          {
            if (v35 <= a1)
            {
              v60 = v35;
              v58 = v46[0];
              goto LABEL_60;
            }

            v38 = a3;
            v47 = v32;
            v39 = a3 + v33;
            v40 = v34 + v33;
            v41 = v34;
            v42 = v53;
            sub_1D630B5FC(v40, v53, &qword_1EDF04780, type metadata accessor for FeedCustomItem);
            v43 = v54;
            sub_1D630B5FC(v52, v54, &qword_1EDF04780, type metadata accessor for FeedCustomItem);
            v44 = sub_1D62F2DCC(*v42, v42 + *(v57 + 48), *v43, v43 + *(v57 + 48), v55, v56, &qword_1EDF046F8, type metadata accessor for FeedCustomItem, type metadata accessor for FeedCustomItem);
            sub_1D630B668(v43, &qword_1EDF04780, type metadata accessor for FeedCustomItem, sub_1D5C17CEC);
            sub_1D630B668(v42, &qword_1EDF04780, type metadata accessor for FeedCustomItem, sub_1D5C17CEC);
            if (v44)
            {
              break;
            }

            v32 = v40;
            a3 = v39;
            if (v38 < v41 || v39 >= v41)
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v48;
              v36 = v49;
            }

            else
            {
              a1 = v48;
              v36 = v49;
              if (v38 != v41)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v34 = v40;
            v37 = v40 > v36;
            v33 = v50;
            v35 = v51;
            if (!v37)
            {
              a2 = v51;
              goto LABEL_59;
            }
          }

          v34 = v41;
          a3 = v39;
          if (v38 < v51 || v39 >= v51)
          {
            break;
          }

          a2 = v52;
          a1 = v48;
          v45 = v49;
          v32 = v47;
          v33 = v50;
          if (v38 != v51)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v34 <= v45)
          {
            goto LABEL_59;
          }
        }

        a2 = v52;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v48;
        v32 = v47;
        v33 = v50;
        if (v34 > v49)
        {
          continue;
        }

        break;
      }
    }

LABEL_59:
    v60 = a2;
    v58 = v32;
  }

  else
  {
    v23 = v21 / v20 * v20;
    if (a4 < a1 || a1 + v23 <= a4)
    {

      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {

      if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v52 = a4 + v23;
    v58 = a4 + v23;
    if (v23 >= 1 && a2 < a3)
    {
      v50 = v20;
      v51 = a3;
      do
      {
        v26 = v53;
        v27 = a4;
        sub_1D630B5FC(a2, v53, &qword_1EDF04780, type metadata accessor for FeedCustomItem);
        v28 = v54;
        sub_1D630B5FC(a4, v54, &qword_1EDF04780, type metadata accessor for FeedCustomItem);
        v29 = sub_1D62F2DCC(*v26, v26 + *(v57 + 48), *v28, v28 + *(v57 + 48), v55, v56, &qword_1EDF046F8, type metadata accessor for FeedCustomItem, type metadata accessor for FeedCustomItem);
        sub_1D630B668(v28, &qword_1EDF04780, type metadata accessor for FeedCustomItem, sub_1D5C17CEC);
        sub_1D630B668(v26, &qword_1EDF04780, type metadata accessor for FeedCustomItem, sub_1D5C17CEC);
        if (v29)
        {
          v30 = v50;
          if (a1 < a2 || a1 >= a2 + v50)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v30;
            v31 = v51;
          }

          else
          {
            v31 = v51;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v30;
          }
        }

        else
        {
          v30 = v50;
          a4 += v50;
          if (a1 < v27 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            v31 = v51;
          }

          else
          {
            v31 = v51;
            if (a1 != v27)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v59 = a4;
        }

        a1 += v30;
        v60 = a1;
      }

      while (a4 < v52 && a2 < v31);
    }
  }

LABEL_60:
  sub_1D62FF610(&v60, &v59, &v58, &qword_1EDF04780, type metadata accessor for FeedCustomItem);

  return 1;
}

uint64_t sub_1D62FC5BC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, void (*a5)(uint64_t *__return_ptr, char *, void *), uint64_t a6)
{
  sub_1D5C17CEC(0, &unk_1EDF04740, type metadata accessor for FeedRecipe);
  v57 = v12;
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v54 = (v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16, v17);
  v53 = (v46 - v18);
  result = swift_allocObject();
  v55 = a5;
  v56 = a6;
  *(result + 16) = a5;
  *(result + 24) = a6;
  v20 = *(v13 + 72);
  if (!v20)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  v21 = a2 - a1;
  if (a2 - a1 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_62;
  }

  v22 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_63;
  }

  v60 = a1;
  v59 = a4;
  v46[1] = result;
  if (v21 / v20 >= v22 / v20)
  {
    v24 = v22 / v20 * v20;
    if (a4 < a2 || a2 + v24 <= a4)
    {

      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {

      if (a4 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v32 = a4 + v24;
    if (v24 >= 1)
    {
      v33 = -v20;
      v34 = v32;
      v48 = a1;
      v49 = a4;
      v50 = v33;
      while (2)
      {
        while (1)
        {
          v46[0] = v32;
          v35 = a2;
          v51 = a2;
          v52 = a2 + v33;
          while (1)
          {
            if (v35 <= a1)
            {
              v60 = v35;
              v58 = v46[0];
              goto LABEL_60;
            }

            v38 = a3;
            v47 = v32;
            v39 = a3 + v33;
            v40 = v34 + v33;
            v41 = v34;
            v42 = v53;
            sub_1D630B5FC(v40, v53, &unk_1EDF04740, type metadata accessor for FeedRecipe);
            v43 = v54;
            sub_1D630B5FC(v52, v54, &unk_1EDF04740, type metadata accessor for FeedRecipe);
            v44 = sub_1D62F2DCC(*v42, v42 + *(v57 + 48), *v43, v43 + *(v57 + 48), v55, v56, &qword_1EDF046D0, type metadata accessor for FeedRecipe, type metadata accessor for FeedRecipe);
            sub_1D630B668(v43, &unk_1EDF04740, type metadata accessor for FeedRecipe, sub_1D5C17CEC);
            sub_1D630B668(v42, &unk_1EDF04740, type metadata accessor for FeedRecipe, sub_1D5C17CEC);
            if (v44)
            {
              break;
            }

            v32 = v40;
            a3 = v39;
            if (v38 < v41 || v39 >= v41)
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v48;
              v36 = v49;
            }

            else
            {
              a1 = v48;
              v36 = v49;
              if (v38 != v41)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v34 = v40;
            v37 = v40 > v36;
            v33 = v50;
            v35 = v51;
            if (!v37)
            {
              a2 = v51;
              goto LABEL_59;
            }
          }

          v34 = v41;
          a3 = v39;
          if (v38 < v51 || v39 >= v51)
          {
            break;
          }

          a2 = v52;
          a1 = v48;
          v45 = v49;
          v32 = v47;
          v33 = v50;
          if (v38 != v51)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v34 <= v45)
          {
            goto LABEL_59;
          }
        }

        a2 = v52;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v48;
        v32 = v47;
        v33 = v50;
        if (v34 > v49)
        {
          continue;
        }

        break;
      }
    }

LABEL_59:
    v60 = a2;
    v58 = v32;
  }

  else
  {
    v23 = v21 / v20 * v20;
    if (a4 < a1 || a1 + v23 <= a4)
    {

      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {

      if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v52 = a4 + v23;
    v58 = a4 + v23;
    if (v23 >= 1 && a2 < a3)
    {
      v50 = v20;
      v51 = a3;
      do
      {
        v26 = v53;
        v27 = a4;
        sub_1D630B5FC(a2, v53, &unk_1EDF04740, type metadata accessor for FeedRecipe);
        v28 = v54;
        sub_1D630B5FC(a4, v54, &unk_1EDF04740, type metadata accessor for FeedRecipe);
        v29 = sub_1D62F2DCC(*v26, v26 + *(v57 + 48), *v28, v28 + *(v57 + 48), v55, v56, &qword_1EDF046D0, type metadata accessor for FeedRecipe, type metadata accessor for FeedRecipe);
        sub_1D630B668(v28, &unk_1EDF04740, type metadata accessor for FeedRecipe, sub_1D5C17CEC);
        sub_1D630B668(v26, &unk_1EDF04740, type metadata accessor for FeedRecipe, sub_1D5C17CEC);
        if (v29)
        {
          v30 = v50;
          if (a1 < a2 || a1 >= a2 + v50)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v30;
            v31 = v51;
          }

          else
          {
            v31 = v51;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v30;
          }
        }

        else
        {
          v30 = v50;
          a4 += v50;
          if (a1 < v27 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            v31 = v51;
          }

          else
          {
            v31 = v51;
            if (a1 != v27)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v59 = a4;
        }

        a1 += v30;
        v60 = a1;
      }

      while (a4 < v52 && a2 < v31);
    }
  }

LABEL_60:
  sub_1D62FF610(&v60, &v59, &v58, &unk_1EDF04740, type metadata accessor for FeedRecipe);

  return 1;
}

uint64_t sub_1D62FCC50(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, void (*a5)(uint64_t *__return_ptr, char *, void *), uint64_t a6)
{
  sub_1D5C17CEC(0, &qword_1EC88F4F0, type metadata accessor for FeedPuzzleStatistic);
  v57 = v12;
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v54 = (v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16, v17);
  v53 = (v46 - v18);
  result = swift_allocObject();
  v55 = a5;
  v56 = a6;
  *(result + 16) = a5;
  *(result + 24) = a6;
  v20 = *(v13 + 72);
  if (!v20)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  v21 = a2 - a1;
  if (a2 - a1 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_62;
  }

  v22 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_63;
  }

  v60 = a1;
  v59 = a4;
  v46[1] = result;
  if (v21 / v20 >= v22 / v20)
  {
    v24 = v22 / v20 * v20;
    if (a4 < a2 || a2 + v24 <= a4)
    {

      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {

      if (a4 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v32 = a4 + v24;
    if (v24 >= 1)
    {
      v33 = -v20;
      v34 = v32;
      v48 = a1;
      v49 = a4;
      v50 = v33;
      while (2)
      {
        while (1)
        {
          v46[0] = v32;
          v35 = a2;
          v51 = a2;
          v52 = a2 + v33;
          while (1)
          {
            if (v35 <= a1)
            {
              v60 = v35;
              v58 = v46[0];
              goto LABEL_60;
            }

            v38 = a3;
            v47 = v32;
            v39 = a3 + v33;
            v40 = v34 + v33;
            v41 = v34;
            v42 = v53;
            sub_1D630B5FC(v40, v53, &qword_1EC88F4F0, type metadata accessor for FeedPuzzleStatistic);
            v43 = v54;
            sub_1D630B5FC(v52, v54, &qword_1EC88F4F0, type metadata accessor for FeedPuzzleStatistic);
            v44 = sub_1D62F2DCC(*v42, v42 + *(v57 + 48), *v43, v43 + *(v57 + 48), v55, v56, &qword_1EC885978, type metadata accessor for FeedPuzzleStatistic, type metadata accessor for FeedPuzzleStatistic);
            sub_1D630B668(v43, &qword_1EC88F4F0, type metadata accessor for FeedPuzzleStatistic, sub_1D5C17CEC);
            sub_1D630B668(v42, &qword_1EC88F4F0, type metadata accessor for FeedPuzzleStatistic, sub_1D5C17CEC);
            if (v44)
            {
              break;
            }

            v32 = v40;
            a3 = v39;
            if (v38 < v41 || v39 >= v41)
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v48;
              v36 = v49;
            }

            else
            {
              a1 = v48;
              v36 = v49;
              if (v38 != v41)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v34 = v40;
            v37 = v40 > v36;
            v33 = v50;
            v35 = v51;
            if (!v37)
            {
              a2 = v51;
              goto LABEL_59;
            }
          }

          v34 = v41;
          a3 = v39;
          if (v38 < v51 || v39 >= v51)
          {
            break;
          }

          a2 = v52;
          a1 = v48;
          v45 = v49;
          v32 = v47;
          v33 = v50;
          if (v38 != v51)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v34 <= v45)
          {
            goto LABEL_59;
          }
        }

        a2 = v52;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v48;
        v32 = v47;
        v33 = v50;
        if (v34 > v49)
        {
          continue;
        }

        break;
      }
    }

LABEL_59:
    v60 = a2;
    v58 = v32;
  }

  else
  {
    v23 = v21 / v20 * v20;
    if (a4 < a1 || a1 + v23 <= a4)
    {

      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {

      if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v52 = a4 + v23;
    v58 = a4 + v23;
    if (v23 >= 1 && a2 < a3)
    {
      v50 = v20;
      v51 = a3;
      do
      {
        v26 = v53;
        v27 = a4;
        sub_1D630B5FC(a2, v53, &qword_1EC88F4F0, type metadata accessor for FeedPuzzleStatistic);
        v28 = v54;
        sub_1D630B5FC(a4, v54, &qword_1EC88F4F0, type metadata accessor for FeedPuzzleStatistic);
        v29 = sub_1D62F2DCC(*v26, v26 + *(v57 + 48), *v28, v28 + *(v57 + 48), v55, v56, &qword_1EC885978, type metadata accessor for FeedPuzzleStatistic, type metadata accessor for FeedPuzzleStatistic);
        sub_1D630B668(v28, &qword_1EC88F4F0, type metadata accessor for FeedPuzzleStatistic, sub_1D5C17CEC);
        sub_1D630B668(v26, &qword_1EC88F4F0, type metadata accessor for FeedPuzzleStatistic, sub_1D5C17CEC);
        if (v29)
        {
          v30 = v50;
          if (a1 < a2 || a1 >= a2 + v50)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v30;
            v31 = v51;
          }

          else
          {
            v31 = v51;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v30;
          }
        }

        else
        {
          v30 = v50;
          a4 += v50;
          if (a1 < v27 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            v31 = v51;
          }

          else
          {
            v31 = v51;
            if (a1 != v27)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v59 = a4;
        }

        a1 += v30;
        v60 = a1;
      }

      while (a4 < v52 && a2 < v31);
    }
  }

LABEL_60:
  sub_1D62FF610(&v60, &v59, &v58, &qword_1EC88F4F0, type metadata accessor for FeedPuzzleStatistic);

  return 1;
}

uint64_t sub_1D62FD2E4(char *__src, char *a2, char *a3, char *a4, uint64_t (*a5)(uint64_t, char *, uint64_t, char *))
{
  v5 = a4;
  v6 = a3;
  v7 = a2 - __src;
  v8 = (a2 - __src) / 72;
  v9 = a3 - a2;
  v10 = (a3 - a2) / 72;
  if (v8 >= v10)
  {
    if (a4 != a2 || &a2[72 * v10] <= a4)
    {
      v29 = __src;
      v30 = a2;
      memmove(a4, a2, 72 * v10);
      __src = v29;
      a2 = v30;
    }

    v56 = a2;
    v13 = v5 + 72 * v10;
    if (v9 < 72)
    {
LABEL_49:
      __src = v56;
      goto LABEL_50;
    }

    v31 = __src;
    __src = a2;
    if (a2 > v31)
    {
      v32 = -v5;
      __dsta = v31;
      v55 = -v5;
      v57 = v5;
      while (1)
      {
        v33 = v56 - 72;
        v34 = v32 + v13;
        v6 -= 72;
        v35 = v13;
        while (1)
        {
          v59 = v34;
          v13 = v35;
          v74 = *(v35 - 72);
          v36 = *(v35 - 56);
          v37 = *(v35 - 40);
          v38 = *(v35 - 24);
          v78 = *(v35 - 8);
          v76 = v37;
          v77 = v38;
          v75 = v36;
          v39 = *(v56 - 56);
          v40 = *(v56 - 24);
          v81 = *(v56 - 40);
          v82 = v40;
          v83 = *(v56 - 1);
          v41 = *(v56 - 56);
          v79 = *v33;
          v80 = v41;
          v71 = v76;
          v72 = v77;
          v42 = v74;
          v73 = v78;
          v69 = v74;
          v70 = v36;
          v43 = v79;
          v44 = *(v56 - 24);
          v66 = v81;
          v67 = v44;
          v68 = *(v56 - 1);
          v64 = v79;
          v65 = v39;
          sub_1D6306E88(&v74, v63, &unk_1EC88F4D0);
          sub_1D6306E88(&v79, v63, &unk_1EC88F4D0);
          v45 = v84;
          v46 = a5(v42, &v69 + 8, v43, &v64 + 8);
          v84 = v45;
          if (v45)
          {
            sub_1D6306DB0(&v79, &unk_1EC88F4D0, &type metadata for FeedPuzzleType, sub_1D5C82990);
            sub_1D6306DB0(&v74, &unk_1EC88F4D0, &type metadata for FeedPuzzleType, sub_1D5C82990);
            v50 = v57;
            v51 = v59 / 72;
            __src = v56;
            if (v56 >= v57 && v56 < &v57[72 * v51] && v56 == v57)
            {
              return 1;
            }

            v52 = 72 * v51;
LABEL_54:
            memmove(__src, v50, v52);
            return 1;
          }

          v47 = v46;
          sub_1D6306DB0(&v79, &unk_1EC88F4D0, &type metadata for FeedPuzzleType, sub_1D5C82990);
          sub_1D6306DB0(&v74, &unk_1EC88F4D0, &type metadata for FeedPuzzleType, sub_1D5C82990);
          v48 = v6 + 72;
          if (v47)
          {
            break;
          }

          v35 = v13 - 72;
          if (v48 < v13 || v6 >= v13)
          {
            memmove(v6, (v13 - 72), 0x48uLL);
            v5 = v57;
          }

          else
          {
            v5 = v57;
            if (v48 != v13)
            {
              memmove(v6, (v13 - 72), 0x48uLL);
            }
          }

          v34 = v59 - 72;
          v6 -= 72;
          if (v35 <= v5)
          {
            v13 -= 72;
            goto LABEL_49;
          }
        }

        if (v48 < v56 || v6 >= v56)
        {
          memmove(v6, v33, 0x48uLL);
          v5 = v57;
          v32 = v55;
        }

        else
        {
          v5 = v57;
          v32 = v55;
          if (v48 != v56)
          {
            memmove(v6, v33, 0x48uLL);
          }
        }

        if (v13 > v5)
        {
          v56 -= 72;
          if (v33 > __dsta)
          {
            continue;
          }
        }

        __src = v33;
        break;
      }
    }

LABEL_50:
    v53 = (v13 - v5) / 72;
    if (__src >= v5 && __src < v5 + 72 * v53 && __src == v5)
    {
      return 1;
    }

    v52 = 72 * v53;
    v50 = v5;
    goto LABEL_54;
  }

  v11 = a2;
  if (a4 != __src || &__src[72 * v8] <= a4)
  {
    v12 = __src;
    memmove(a4, __src, 72 * v8);
    __src = v12;
  }

  v13 = v5 + 72 * v8;
  if (v7 < 72 || v11 >= v6)
  {
    goto LABEL_50;
  }

  v58 = v13;
  while (1)
  {
    __dst = __src;
    v74 = *v11;
    v14 = *(v11 + 1);
    v15 = *(v11 + 2);
    v16 = *(v11 + 3);
    v17 = v11;
    v78 = *(v11 + 8);
    v76 = v15;
    v77 = v16;
    v75 = v14;
    v19 = *(v5 + 32);
    v18 = *(v5 + 48);
    v20 = *(v5 + 16);
    v83 = *(v5 + 64);
    v81 = v19;
    v82 = v18;
    v80 = v20;
    v21 = v5;
    v79 = *v5;
    v71 = v76;
    v72 = v77;
    v22 = v74;
    v73 = v78;
    v69 = v74;
    v70 = v75;
    v66 = v19;
    v67 = v18;
    v23 = v79;
    v68 = v83;
    v64 = v79;
    v65 = v20;
    sub_1D6306E88(&v74, v63, &unk_1EC88F4D0);
    sub_1D6306E88(&v79, v63, &unk_1EC88F4D0);
    v24 = v84;
    v25 = a5(v22, &v69 + 8, v23, &v64 + 8);
    v84 = v24;
    if (v24)
    {
      break;
    }

    v26 = v25;
    sub_1D6306DB0(&v79, &unk_1EC88F4D0, &type metadata for FeedPuzzleType, sub_1D5C82990);
    sub_1D6306DB0(&v74, &unk_1EC88F4D0, &type metadata for FeedPuzzleType, sub_1D5C82990);
    if ((v26 & 1) == 0)
    {
      v27 = v21;
      v5 = (v21 + 72);
      v28 = __dst;
      v11 = v17;
      v13 = v58;
      if (__dst == v21)
      {
        goto LABEL_14;
      }

LABEL_13:
      memmove(v28, v27, 0x48uLL);
      v28 = __dst;
      goto LABEL_14;
    }

    v27 = v17;
    v11 = v17 + 72;
    v28 = __dst;
    v5 = v21;
    v13 = v58;
    if (__dst != v17)
    {
      goto LABEL_13;
    }

LABEL_14:
    __src = v28 + 72;
    if (v5 >= v13 || v11 >= v6)
    {
      goto LABEL_50;
    }
  }

  sub_1D6306DB0(&v79, &unk_1EC88F4D0, &type metadata for FeedPuzzleType, sub_1D5C82990);
  sub_1D6306DB0(&v74, &unk_1EC88F4D0, &type metadata for FeedPuzzleType, sub_1D5C82990);
  v49 = (v58 - v21) / 72;
  __src = __dst;
  if (__dst < v21 || __dst >= &v21[72 * v49])
  {
    v52 = 72 * v49;
    v50 = v21;
    goto LABEL_54;
  }

  if (__dst != v21)
  {
    memmove(__dst, v21, 72 * v49);
  }

  return 1;
}

uint64_t sub_1D62FD9B4(char *a1, char *a2, char *a3, char *a4, void (*a5)(unsigned __int8 *__return_ptr, uint64_t *, uint64_t *), uint64_t a6)
{
  v12 = swift_allocObject();
  v37 = a5;
  *(v12 + 16) = a5;
  *(v12 + 24) = a6;
  v41[28] = a6;
  v13 = a2 - a1;
  v14 = (a2 - a1) / 216;
  v15 = a3 - a2;
  v16 = (a3 - a2) / 216;
  if (v14 < v16)
  {
    v17 = a2;
    if (a4 != a1 || &a1[216 * v14] <= a4)
    {
      memmove(a4, a1, 216 * v14);
    }

    v18 = &a4[216 * v14];
    if (v13 < 216 || v17 >= a3)
    {
      v24 = a1;
      goto LABEL_35;
    }

    v19 = v17;
    while (1)
    {
      sub_1D6306E88(v19, &v40, &unk_1EDF04750);
      sub_1D6306E88(a4, &v38, &unk_1EDF04750);
      v20 = sub_1D62F2CF8(v40, v41, v38, v39, v37);
      v21 = a4;
      sub_1D6306DB0(&v38, &unk_1EDF04750, &type metadata for FeedPuzzle, sub_1D5C82990);
      sub_1D6306DB0(&v40, &unk_1EDF04750, &type metadata for FeedPuzzle, sub_1D5C82990);
      if ((v20 & 1) == 0)
      {
        break;
      }

      v22 = v19;
      v23 = a1 == v19;
      v19 += 216;
      if (!v23)
      {
        goto LABEL_13;
      }

LABEL_14:
      a1 += 216;
      if (a4 >= v18 || v19 >= a3)
      {
        v24 = a1;
        goto LABEL_35;
      }
    }

    v22 = a4;
    a4 += 216;
    if (a1 == v21)
    {
      goto LABEL_14;
    }

LABEL_13:
    memmove(a1, v22, 0xD8uLL);
    goto LABEL_14;
  }

  if (a4 != a2 || &a2[216 * v16] <= a4)
  {
    memmove(a4, a2, 216 * v16);
  }

  v24 = a2;

  v18 = &a4[216 * v16];
  if (v15 >= 216)
  {
    v25 = v24;
    if (v24 > a1)
    {
      v34 = a1;
      while (1)
      {
        v35 = v25;
        __src = v25 - 216;
        v26 = v18 - 216;
        a3 -= 216;
        while (1)
        {
          v29 = v26 + 216;
          v30 = a3 + 216;
          sub_1D6306E88(v26, &v40, &unk_1EDF04750);
          sub_1D6306E88(__src, &v38, &unk_1EDF04750);
          v31 = sub_1D62F2CF8(v40, v41, v38, v39, v37);
          sub_1D6306DB0(&v38, &unk_1EDF04750, &type metadata for FeedPuzzle, sub_1D5C82990);
          sub_1D6306DB0(&v40, &unk_1EDF04750, &type metadata for FeedPuzzle, sub_1D5C82990);
          if (v31)
          {
            break;
          }

          if (v30 != v29)
          {
            memmove(a3, v26, 0xD8uLL);
          }

          v27 = v26 - 216;
          a3 -= 216;
          v28 = v26 > a4;
          v26 -= 216;
          if (!v28)
          {
            v18 = v27 + 216;
            v24 = v35;
            goto LABEL_35;
          }
        }

        v24 = __src;
        if (v30 != v35)
        {
          memmove(a3, __src, 0xD8uLL);
        }

        v18 = v26 + 216;
        if (v29 > a4)
        {
          v25 = __src;
          if (__src > v34)
          {
            continue;
          }
        }

        v18 = v26 + 216;
        break;
      }
    }
  }

LABEL_35:
  v32 = (v18 - a4) / 216;
  if (v24 != a4 || v24 >= &a4[216 * v32])
  {
    memmove(v24, a4, 216 * v32);
  }

  return 1;
}

uint64_t sub_1D62FDDE4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, void (*a5)(uint64_t *__return_ptr, char *, void *), uint64_t a6)
{
  sub_1D5C17CEC(0, &qword_1EDF04730, type metadata accessor for FeedWebEmbed);
  v57 = v12;
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v54 = (v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16, v17);
  v53 = (v46 - v18);
  result = swift_allocObject();
  v55 = a5;
  v56 = a6;
  *(result + 16) = a5;
  *(result + 24) = a6;
  v20 = *(v13 + 72);
  if (!v20)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  v21 = a2 - a1;
  if (a2 - a1 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_62;
  }

  v22 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_63;
  }

  v60 = a1;
  v59 = a4;
  v46[1] = result;
  if (v21 / v20 >= v22 / v20)
  {
    v24 = v22 / v20 * v20;
    if (a4 < a2 || a2 + v24 <= a4)
    {

      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {

      if (a4 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v32 = a4 + v24;
    if (v24 >= 1)
    {
      v33 = -v20;
      v34 = v32;
      v48 = a1;
      v49 = a4;
      v50 = v33;
      while (2)
      {
        while (1)
        {
          v46[0] = v32;
          v35 = a2;
          v51 = a2;
          v52 = a2 + v33;
          while (1)
          {
            if (v35 <= a1)
            {
              v60 = v35;
              v58 = v46[0];
              goto LABEL_60;
            }

            v38 = a3;
            v47 = v32;
            v39 = a3 + v33;
            v40 = v34 + v33;
            v41 = v34;
            v42 = v53;
            sub_1D630B5FC(v40, v53, &qword_1EDF04730, type metadata accessor for FeedWebEmbed);
            v43 = v54;
            sub_1D630B5FC(v52, v54, &qword_1EDF04730, type metadata accessor for FeedWebEmbed);
            v44 = sub_1D62F2DCC(*v42, v42 + *(v57 + 48), *v43, v43 + *(v57 + 48), v55, v56, &qword_1EDF046C8, type metadata accessor for FeedWebEmbed, type metadata accessor for FeedWebEmbed);
            sub_1D630B668(v43, &qword_1EDF04730, type metadata accessor for FeedWebEmbed, sub_1D5C17CEC);
            sub_1D630B668(v42, &qword_1EDF04730, type metadata accessor for FeedWebEmbed, sub_1D5C17CEC);
            if (v44)
            {
              break;
            }

            v32 = v40;
            a3 = v39;
            if (v38 < v41 || v39 >= v41)
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v48;
              v36 = v49;
            }

            else
            {
              a1 = v48;
              v36 = v49;
              if (v38 != v41)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v34 = v40;
            v37 = v40 > v36;
            v33 = v50;
            v35 = v51;
            if (!v37)
            {
              a2 = v51;
              goto LABEL_59;
            }
          }

          v34 = v41;
          a3 = v39;
          if (v38 < v51 || v39 >= v51)
          {
            break;
          }

          a2 = v52;
          a1 = v48;
          v45 = v49;
          v32 = v47;
          v33 = v50;
          if (v38 != v51)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v34 <= v45)
          {
            goto LABEL_59;
          }
        }

        a2 = v52;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v48;
        v32 = v47;
        v33 = v50;
        if (v34 > v49)
        {
          continue;
        }

        break;
      }
    }

LABEL_59:
    v60 = a2;
    v58 = v32;
  }

  else
  {
    v23 = v21 / v20 * v20;
    if (a4 < a1 || a1 + v23 <= a4)
    {

      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {

      if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v52 = a4 + v23;
    v58 = a4 + v23;
    if (v23 >= 1 && a2 < a3)
    {
      v50 = v20;
      v51 = a3;
      do
      {
        v26 = v53;
        v27 = a4;
        sub_1D630B5FC(a2, v53, &qword_1EDF04730, type metadata accessor for FeedWebEmbed);
        v28 = v54;
        sub_1D630B5FC(a4, v54, &qword_1EDF04730, type metadata accessor for FeedWebEmbed);
        v29 = sub_1D62F2DCC(*v26, v26 + *(v57 + 48), *v28, v28 + *(v57 + 48), v55, v56, &qword_1EDF046C8, type metadata accessor for FeedWebEmbed, type metadata accessor for FeedWebEmbed);
        sub_1D630B668(v28, &qword_1EDF04730, type metadata accessor for FeedWebEmbed, sub_1D5C17CEC);
        sub_1D630B668(v26, &qword_1EDF04730, type metadata accessor for FeedWebEmbed, sub_1D5C17CEC);
        if (v29)
        {
          v30 = v50;
          if (a1 < a2 || a1 >= a2 + v50)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v30;
            v31 = v51;
          }

          else
          {
            v31 = v51;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v30;
          }
        }

        else
        {
          v30 = v50;
          a4 += v50;
          if (a1 < v27 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            v31 = v51;
          }

          else
          {
            v31 = v51;
            if (a1 != v27)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v59 = a4;
        }

        a1 += v30;
        v60 = a1;
      }

      while (a4 < v52 && a2 < v31);
    }
  }

LABEL_60:
  sub_1D62FF610(&v60, &v59, &v58, &qword_1EDF04730, type metadata accessor for FeedWebEmbed);

  return 1;
}

uint64_t sub_1D62FE478(char *a1, char *a2, char *a3, char *a4, void (*a5)(unsigned __int8 *__return_ptr, uint64_t *, uint64_t *), uint64_t a6)
{
  v12 = swift_allocObject();
  v39 = a5;
  *(v12 + 16) = a5;
  *(v12 + 24) = a6;
  v43[21] = a6;
  v13 = a2 - a1;
  v14 = (a2 - a1) / 160;
  v15 = a3 - a2;
  v16 = (a3 - a2) / 160;
  if (v14 >= v16)
  {
    v25 = 160 * v16;
    v26 = a2;
    if (a4 != a2 || &a2[v25] <= a4)
    {
      memmove(a4, a2, 160 * v16);
    }

    v19 = &a4[v25];
    if (v15 < 160 || v26 <= a1)
    {
      v24 = v26;
      goto LABEL_36;
    }

    v27 = v26;
    v36 = a1;
    while (1)
    {
      v37 = v27;
      __src = v27 - 160;
      v28 = v19 - 160;
      a3 -= 160;
      while (1)
      {
        v31 = v28 + 160;
        v32 = a3 + 160;
        sub_1D6306E88(v28, &v42, &qword_1EDF04760);
        sub_1D6306E88(__src, &v40, &qword_1EDF04760);
        v33 = sub_1D62F2F28(v42, v43, v40, v41, v39);
        sub_1D6306DB0(&v40, &qword_1EDF04760, &type metadata for FeedTag, sub_1D5C82990);
        sub_1D6306DB0(&v42, &qword_1EDF04760, &type metadata for FeedTag, sub_1D5C82990);
        if (v33)
        {
          break;
        }

        if (v32 != v31)
        {
          memmove(a3, v28, 0xA0uLL);
        }

        v29 = v28 - 160;
        a3 -= 160;
        v30 = v28 > a4;
        v28 -= 160;
        if (!v30)
        {
          v19 = v29 + 160;
          v24 = v37;
          goto LABEL_36;
        }
      }

      v23 = v32 == v37;
      v24 = __src;
      if (!v23)
      {
        memmove(a3, __src, 0xA0uLL);
      }

      v19 = v28 + 160;
      if (v31 > a4)
      {
        v27 = __src;
        if (__src > v36)
        {
          continue;
        }
      }

      v19 = v28 + 160;
      goto LABEL_36;
    }
  }

  v17 = a2;
  v18 = 160 * v14;
  if (a4 != a1 || &a1[v18] <= a4)
  {
    memmove(a4, a1, v18);
  }

  v19 = &a4[v18];
  if (v13 < 160 || v17 >= a3)
  {
    v24 = a1;
    goto LABEL_36;
  }

  v20 = v17;
  do
  {
    sub_1D6306E88(v20, &v42, &qword_1EDF04760);
    sub_1D6306E88(a4, &v40, &qword_1EDF04760);
    v21 = sub_1D62F2F28(v42, v43, v40, v41, v39);
    sub_1D6306DB0(&v40, &qword_1EDF04760, &type metadata for FeedTag, sub_1D5C82990);
    sub_1D6306DB0(&v42, &qword_1EDF04760, &type metadata for FeedTag, sub_1D5C82990);
    if (v21)
    {
      v22 = v20;
      v23 = a1 == v20;
      v20 += 160;
      if (v23)
      {
        goto LABEL_14;
      }

LABEL_13:
      memmove(a1, v22, 0xA0uLL);
      goto LABEL_14;
    }

    v22 = a4;
    v23 = a1 == a4;
    a4 += 160;
    if (!v23)
    {
      goto LABEL_13;
    }

LABEL_14:
    a1 += 160;
  }

  while (a4 < v19 && v20 < a3);
  v24 = a1;
LABEL_36:
  v34 = 160 * ((v19 - a4) / 160);
  if (v24 != a4 || v24 >= &a4[v34])
  {
    memmove(v24, a4, v34);
  }

  return 1;
}

uint64_t sub_1D62FE870(char *__src, char *__dst, char *a3, char *a4, uint64_t (*a5)(uint64_t, uint64_t *, uint64_t, uint64_t *))
{
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = __dst - __src + 15;
  if (__dst - __src >= 0)
  {
    v9 = __dst - __src;
  }

  v10 = v9 >> 4;
  v11 = a3 - __dst;
  v12 = a3 - __dst + 15;
  if (a3 - __dst >= 0)
  {
    v12 = a3 - __dst;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    v14 = a4;
    if (a4 != __src || &__src[16 * v10] <= a4)
    {
      memmove(a4, __src, 16 * v10);
    }

    v15 = &v14[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v16 = v7;
      goto LABEL_39;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v19 = v15;
      v20 = v5;
      v21 = *v6;
      v22 = *v14;
      v23 = *(v14 + 1);
      v54 = *(v6 + 1);
      v53 = v23;

      v24 = a5(v21, &v54, v22, &v53);
      if (v52)
      {

        v45 = v19 - v14 + 15;
        if (v19 - v14 >= 0)
        {
          v45 = v19 - v14;
        }

        v46 = v45 >> 4;
        if (v7 < v14 || v7 >= &v14[v45 & 0xFFFFFFFFFFFFFFF0])
        {
          v39 = 16 * v46;
          v16 = v7;
          v40 = v14;
          goto LABEL_46;
        }

        if (v7 == v14)
        {
          return 1;
        }

        v39 = 16 * v46;
        v16 = v7;
        goto LABEL_45;
      }

      v25 = v24;

      if (v25)
      {
        break;
      }

      v17 = v14;
      v18 = v7 == v14;
      v14 += 16;
      v5 = v20;
      if (!v18)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      v15 = v19;
      if (v14 >= v19)
      {
        goto LABEL_10;
      }
    }

    v17 = v6;
    v18 = v7 == v6;
    v6 += 16;
    v5 = v20;
    if (v18)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v17;
    goto LABEL_13;
  }

  if (a4 != __dst || &__dst[16 * v13] <= a4)
  {
    v26 = a4;
    memmove(a4, __dst, 16 * v13);
    a4 = v26;
  }

  v50 = a4;
  v15 = &a4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
    v47 = v7;
LABEL_26:
    v27 = 0;
    v28 = v15;
    v48 = v6 - 16;
    v49 = v5;
    while (1)
    {
      v29 = v28;
      v30 = &v28[v27];
      v32 = &v28[v27 - 16];
      v31 = *v32;
      v33 = *(v6 - 2);
      v34 = *(v6 - 1);
      v54 = *&v28[v27 - 8];
      v53 = v34;

      v35 = a5(v31, &v54, v33, &v53);
      if (v52)
      {
        break;
      }

      v36 = v35;

      if (v36)
      {
        v16 = v6 - 16;
        v5 = &v5[v27 - 16];
        if (&v49[v27] != v6)
        {
          *v5 = *v48;
        }

        v15 = &v29[v27];
        if (&v29[v27] <= v50 || (v6 -= 16, v48 <= v47))
        {
          v15 = &v29[v27];
          goto LABEL_38;
        }

        goto LABEL_26;
      }

      v28 = v29;
      if (&v5[v27] != v30)
      {
        *&v5[v27 - 16] = *v32;
      }

      v27 -= 16;
      v15 = &v29[v27];
      if (&v29[v27] <= v50)
      {
        goto LABEL_37;
      }
    }

    v40 = v50;
    v42 = v29 - v50 + v27;
    v43 = v42 + 15;
    if (v42 >= 0)
    {
      v43 = v29 - v50 + v27;
    }

    v44 = v43 >> 4;
    if (v6 < v50 || v6 >= &v50[v43 & 0xFFFFFFFFFFFFFFF0])
    {
      v39 = 16 * v44;
      v16 = v6;
    }

    else
    {
      if (v6 == v50)
      {
        return 1;
      }

      v39 = 16 * v44;
      v16 = v6;
    }

    goto LABEL_46;
  }

LABEL_37:
  v16 = v6;
LABEL_38:
  v14 = v50;
LABEL_39:
  v37 = v15 - v14;
  v38 = v15 - v14 + 15;
  if (v37 >= 0)
  {
    v38 = v37;
  }

  if (v16 < v14 || v16 >= &v14[v38 & 0xFFFFFFFFFFFFFFF0] || v16 != v14)
  {
    v39 = 16 * (v38 >> 4);
LABEL_45:
    v40 = v14;
LABEL_46:
    memmove(v16, v40, v39);
  }

  return 1;
}

uint64_t sub_1D62FEC58(char *a1, char *a2, char *a3, char *a4, void (*a5)(unsigned __int8 *__return_ptr, uint64_t *, uint64_t *), uint64_t a6)
{
  v12 = swift_allocObject();
  v35 = a5;
  *(v12 + 16) = a5;
  *(v12 + 24) = a6;
  v39[38] = a6;
  v13 = (a2 - a1) / 296;
  v14 = (a3 - a2) / 296;
  if (v13 < v14)
  {
    v15 = 296 * v13;
    if (a4 != a1 || &a1[v15] <= a4)
    {
      memmove(a4, a1, v15);
    }

    v16 = &a4[v15];
    if (a2 - a1 < 296 || a2 >= a3)
    {
      a2 = a1;
      goto LABEL_35;
    }

    v17 = a2;
    while (1)
    {
      sub_1D6306E88(v17, &v38, &qword_1EC885950);
      sub_1D6306E88(a4, &v36, &qword_1EC885950);
      v18 = sub_1D62F2FFC(v38, v39, v36, v37, v35);
      v19 = a4;
      sub_1D6306DB0(&v36, &qword_1EC885950, &type metadata for FeedCatalogItem, sub_1D5C82990);
      sub_1D6306DB0(&v38, &qword_1EC885950, &type metadata for FeedCatalogItem, sub_1D5C82990);
      if ((v18 & 1) == 0)
      {
        break;
      }

      v20 = v17;
      v21 = a1 == v17;
      v17 += 296;
      if (!v21)
      {
        goto LABEL_13;
      }

LABEL_14:
      a1 += 296;
      if (a4 >= v16 || v17 >= a3)
      {
        a2 = a1;
        goto LABEL_35;
      }
    }

    v20 = a4;
    a4 += 296;
    if (a1 == v19)
    {
      goto LABEL_14;
    }

LABEL_13:
    memmove(a1, v20, 0x128uLL);
    goto LABEL_14;
  }

  v22 = 296 * v14;
  if (a4 != a2 || &a2[v22] <= a4)
  {
    memmove(a4, a2, 296 * v14);
  }

  v16 = &a4[v22];
  if (a3 - a2 >= 296 && a2 > a1)
  {
    v23 = a2;
    v32 = a1;
    while (1)
    {
      v33 = v23;
      __src = v23 - 296;
      v24 = v16 - 296;
      a3 -= 296;
      while (1)
      {
        v27 = v24 + 296;
        v28 = a3 + 296;
        sub_1D6306E88(v24, &v38, &qword_1EC885950);
        sub_1D6306E88(__src, &v36, &qword_1EC885950);
        v29 = sub_1D62F2FFC(v38, v39, v36, v37, v35);
        sub_1D6306DB0(&v36, &qword_1EC885950, &type metadata for FeedCatalogItem, sub_1D5C82990);
        sub_1D6306DB0(&v38, &qword_1EC885950, &type metadata for FeedCatalogItem, sub_1D5C82990);
        if (v29)
        {
          break;
        }

        if (v28 != v27)
        {
          memmove(a3, v24, 0x128uLL);
        }

        v25 = v24 - 296;
        a3 -= 296;
        v26 = v24 > a4;
        v24 -= 296;
        if (!v26)
        {
          v16 = v25 + 296;
          a2 = v33;
          goto LABEL_35;
        }
      }

      v21 = v28 == v33;
      a2 = __src;
      if (!v21)
      {
        memmove(a3, __src, 0x128uLL);
      }

      v16 = v24 + 296;
      if (v27 > a4)
      {
        v23 = __src;
        if (__src > v32)
        {
          continue;
        }
      }

      v16 = v24 + 296;
      break;
    }
  }

LABEL_35:
  v30 = 296 * ((v16 - a4) / 296);
  if (a2 != a4 || a2 >= &a4[v30])
  {
    memmove(a2, a4, v30);
  }

  return 1;
}

uint64_t sub_1D62FF078(char *a1, _BYTE *a2, char *a3, char *a4, void (*a5)(unsigned __int8 *__return_ptr, uint64_t *, uint64_t *), uint64_t a6)
{
  v12 = swift_allocObject();
  v36 = a5;
  *(v12 + 16) = a5;
  *(v12 + 24) = a6;
  v40[21] = a6;
  v13 = a2 - a1;
  v14 = (a2 - a1) / 160;
  v15 = a3 - a2;
  v16 = (a3 - a2) / 160;
  if (v14 < v16)
  {
    v17 = a2;
    if (a4 != a1 || &a1[160 * v14] <= a4)
    {
      memmove(a4, a1, 160 * v14);
    }

    v18 = &a4[160 * v14];
    if (v13 < 160 || v17 >= a3)
    {
      v23 = a1;
      goto LABEL_34;
    }

    while (1)
    {
      sub_1D6306E88(v17, &v39, &qword_1EC885930);
      sub_1D6306E88(a4, &v37, &qword_1EC885930);
      v19 = sub_1D62F30D0(v39, v40, v37, v38, v36);
      v20 = a4;
      sub_1D6306DB0(&v37, &qword_1EC885930, &type metadata for FeedCategory, sub_1D5C82990);
      sub_1D6306DB0(&v39, &qword_1EC885930, &type metadata for FeedCategory, sub_1D5C82990);
      if ((v19 & 1) == 0)
      {
        break;
      }

      v21 = v17;
      v22 = a1 == v17;
      v17 += 160;
      if (!v22)
      {
        goto LABEL_12;
      }

LABEL_13:
      a1 += 160;
      if (a4 >= v18 || v17 >= a3)
      {
        v23 = a1;
        goto LABEL_34;
      }
    }

    v21 = a4;
    a4 += 160;
    if (a1 == v20)
    {
      goto LABEL_13;
    }

LABEL_12:
    memmove(a1, v21, 0xA0uLL);
    goto LABEL_13;
  }

  if (a4 != a2 || &a2[160 * v16] <= a4)
  {
    memmove(a4, a2, 160 * v16);
  }

  v23 = a2;

  v18 = &a4[160 * v16];
  if (v15 >= 160 && v23 > a1)
  {
    v24 = v23;
    v33 = a1;
    while (1)
    {
      v34 = v24;
      __src = v24 - 160;
      v25 = v18 - 160;
      a3 -= 160;
      while (1)
      {
        v28 = v25 + 160;
        v29 = a3 + 160;
        sub_1D6306E88(v25, &v39, &qword_1EC885930);
        sub_1D6306E88(__src, &v37, &qword_1EC885930);
        v30 = sub_1D62F30D0(v39, v40, v37, v38, v36);
        sub_1D6306DB0(&v37, &qword_1EC885930, &type metadata for FeedCategory, sub_1D5C82990);
        sub_1D6306DB0(&v39, &qword_1EC885930, &type metadata for FeedCategory, sub_1D5C82990);
        if (v30)
        {
          break;
        }

        if (v29 != v28)
        {
          memmove(a3, v25, 0xA0uLL);
        }

        v26 = v25 - 160;
        a3 -= 160;
        v27 = v25 > a4;
        v25 -= 160;
        if (!v27)
        {
          v18 = v26 + 160;
          v23 = v34;
          goto LABEL_34;
        }
      }

      v23 = __src;
      if (v29 != v34)
      {
        memmove(a3, __src, 0xA0uLL);
      }

      v18 = v25 + 160;
      if (v28 > a4)
      {
        v24 = __src;
        if (__src > v33)
        {
          continue;
        }
      }

      v18 = v25 + 160;
      break;
    }
  }

LABEL_34:
  v31 = (v18 - a4) / 160;
  if (v23 != a4 || v23 >= &a4[160 * v31])
  {
    memmove(v23, a4, 160 * v31);
  }

  return 1;
}

uint64_t sub_1D62FF480(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1D62FF50C(v3);
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
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void sub_1D62FF610(unint64_t *a1, unint64_t *a2, uint64_t *a3, unint64_t *a4, void (*a5)(uint64_t))
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a3;
  sub_1D5C17CEC(0, a4, a5);
  v9 = *(*(v8 - 8) + 72);
  if (!v9)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return;
  }

  if (v7 - v6 == 0x8000000000000000 && v9 == -1)
  {
    goto LABEL_17;
  }

  if (v5 < v6 || v5 >= v6 + (v7 - v6) / v9 * v9)
  {

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v5 != v6)
  {

    swift_arrayInitWithTakeBackToFront();
  }
}

uint64_t sub_1D62FF75C(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_1D62FF844(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D6306D3C();
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1D62FF93C(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_1D5BDB26C(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_1D62FFD74(uint64_t result)
{
  v1 = *(result + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = result + 32;
    v6 = (MEMORY[0x1E69E7CC0] + 32);
    while (1)
    {
      *&v21[0] = v3;
      result = sub_1D5B68374(v5, v21 + 8);
      v22 = v21[0];
      v23 = v21[1];
      v24 = v21[2];
      if (!v4)
      {
        v7 = v2[3];
        if (((v7 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_26;
        }

        v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
        if (v8 <= 1)
        {
          v9 = 1;
        }

        else
        {
          v9 = v8;
        }

        sub_1D630B7BC();
        v10 = swift_allocObject();
        v11 = (_swift_stdlib_malloc_size(v10) - 32) / 48;
        v10[2] = v9;
        v10[3] = 2 * v11;
        v12 = (v10 + 4);
        v13 = v2[3] >> 1;
        if (v2[2])
        {
          if (v10 != v2 || v12 >= &v2[6 * v13 + 4])
          {
            memmove(v10 + 4, v2 + 4, 48 * v13);
          }

          v2[2] = 0;
        }

        v6 = (v12 + 48 * v13);
        v4 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - v13;

        v2 = v10;
      }

      v15 = __OFSUB__(v4--, 1);
      if (v15)
      {
        break;
      }

      ++v3;
      v16 = v22;
      v17 = v24;
      v6[1] = v23;
      v6[2] = v17;
      *v6 = v16;
      v6 += 3;
      v5 += 40;
      if (v1 == v3)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v4 = 0;
LABEL_21:
  v18 = v2[3];
  if (v18 < 2)
  {
    return v2;
  }

  v19 = v18 >> 1;
  v15 = __OFSUB__(v19, v4);
  v20 = v19 - v4;
  if (!v15)
  {
    v2[2] = v20;
    return v2;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_1D62FFF18(uint64_t a1)
{
  sub_1D5C17CEC(0, &qword_1EDF1ACC0, type metadata accessor for FeedHeadline);
  v49 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v48 = (&v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5, v6);
  v9 = &v42 - v8;
  v10 = *(a1 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v12 = v7;
    v13 = *(v7 + 80);
    v45 = v13;
    v46 = (v13 + 32) & ~v13;
    v14 = MEMORY[0x1E69E7CC0] + v46;
    v15 = 0;
    v16 = 0;
    v17 = *(type metadata accessor for FeedHeadline(0) - 8);
    v18 = a1 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v47 = *(v17 + 72);
    v19 = v11;
    v43 = v10;
    v44 = v12;
    while (1)
    {
      v22 = v48;
      v23 = *(v49 + 48);
      *v48 = v15;
      sub_1D5BD86D4(v18, v22 + v23, type metadata accessor for FeedHeadline);
      sub_1D630BA20(v22, v9, &qword_1EDF1ACC0, type metadata accessor for FeedHeadline);
      if (v16)
      {
        v11 = v19;
        v20 = v12;
        v21 = __OFSUB__(v16--, 1);
        if (v21)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v24 = v19[3];
        if (((v24 >> 1) + 0x4000000000000000) < 0)
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          return;
        }

        v25 = v9;
        v26 = v24 & 0xFFFFFFFFFFFFFFFELL;
        if (v26 <= 1)
        {
          v27 = 1;
        }

        else
        {
          v27 = v26;
        }

        sub_1D630BA8C(0, &unk_1EDF19518, &qword_1EDF1ACC0, type metadata accessor for FeedHeadline);
        v28 = *(v12 + 72);
        v29 = v46;
        v11 = swift_allocObject();
        v30 = _swift_stdlib_malloc_size(v11);
        if (!v28)
        {
          goto LABEL_34;
        }

        v31 = v30 - v29;
        if (v30 - v29 == 0x8000000000000000 && v28 == -1)
        {
          goto LABEL_35;
        }

        v33 = v31 / v28;
        v11[2] = v27;
        v11[3] = 2 * (v31 / v28);
        v34 = v11 + v29;
        v35 = v19[3] >> 1;
        v36 = v35 * v28;
        if (v19[2])
        {
          if (v11 < v19 || v34 >= v19 + v46 + v36)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v11 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v19[2] = 0;
        }

        v14 = &v34[v36];
        v38 = (v33 & 0x7FFFFFFFFFFFFFFFLL) - v35;

        v9 = v25;
        v10 = v43;
        v20 = v44;
        v21 = __OFSUB__(v38, 1);
        v16 = v38 - 1;
        if (v21)
        {
LABEL_27:
          __break(1u);
          break;
        }
      }

      ++v15;
      sub_1D630BA20(v9, v14, &qword_1EDF1ACC0, type metadata accessor for FeedHeadline);
      v12 = v20;
      v14 += *(v20 + 72);
      v18 += v47;
      v19 = v11;
      if (v10 == v15)
      {
        goto LABEL_29;
      }
    }
  }

  v16 = 0;
LABEL_29:
  v39 = v11[3];
  if (v39 >= 2)
  {
    v40 = v39 >> 1;
    v21 = __OFSUB__(v40, v16);
    v41 = v40 - v16;
    if (v21)
    {
      goto LABEL_36;
    }

    v11[2] = v41;
  }
}

uint64_t sub_1D63002A8(uint64_t result)
{
  v1 = *(result + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = MEMORY[0x1E69E7CC0] + 32;
    v6 = (result + 32);
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = v6[5];
      v9 = v6[7];
      v38 = v6[6];
      v39[0] = v9;
      *(v39 + 9) = *(v6 + 121);
      v10 = v6[1];
      v11 = v6[3];
      v34 = v6[2];
      v35 = v11;
      v12 = v6[3];
      v13 = v6[5];
      v36 = v6[4];
      v37 = v13;
      v14 = v6[1];
      v33[0] = *v6;
      v33[1] = v14;
      v15 = v6[7];
      v46 = v38;
      v47[0] = v15;
      *(v47 + 9) = *(v6 + 121);
      v42 = v34;
      v43 = v12;
      v44 = v36;
      v45 = v8;
      v40 = v33[0];
      v41 = v10;
      if (v4)
      {
        result = sub_1D5ECF2C4(v33, v32);
        v2 = v7;
        v16 = __OFSUB__(v4--, 1);
        if (v16)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v17 = v7[3];
        if (((v17 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_29;
        }

        v18 = v17 & 0xFFFFFFFFFFFFFFFELL;
        if (v18 <= 1)
        {
          v19 = 1;
        }

        else
        {
          v19 = v18;
        }

        sub_1D6306EF4();
        v2 = swift_allocObject();
        v20 = (_swift_stdlib_malloc_size(v2) - 32) / 152;
        v2[2] = v19;
        v2[3] = 2 * v20;
        v21 = v7[3] >> 1;
        v22 = 19 * v21;
        v23 = (v20 & 0x7FFFFFFFFFFFFFFFLL) - v21;
        v5 = &v2[19 * v21 + 4];
        if (v7[2])
        {
          if (v2 >= v7 && v2 + 4 < &v7[v22 + 4] && v2 == v7)
          {
            sub_1D5ECF2C4(v33, v32);
          }

          else
          {
            sub_1D5ECF2C4(v33, v32);
            memmove(v2 + 4, v7 + 4, v22 * 8);
          }

          v7[2] = 0;

          v16 = __OFSUB__(v23, 1);
          v4 = v23 - 1;
          if (v16)
          {
LABEL_28:
            __break(1u);
LABEL_29:
            __break(1u);
LABEL_30:
            __break(1u);
            return result;
          }
        }

        else
        {
          sub_1D5ECF2C4(v33, v32);

          v16 = __OFSUB__(v23, 1);
          v4 = v23 - 1;
          if (v16)
          {
            goto LABEL_28;
          }
        }
      }

      *v5 = v3;
      v24 = v41;
      *(v5 + 8) = v40;
      v25 = v45;
      *(v5 + 72) = v44;
      v26 = v42;
      *(v5 + 56) = v43;
      *(v5 + 40) = v26;
      *(v5 + 24) = v24;
      v27 = v46;
      v28 = v47[0];
      *(v5 + 129) = *(v47 + 9);
      *(v5 + 120) = v28;
      *(v5 + 104) = v27;
      *(v5 + 88) = v25;
      v5 += 152;
      v6 += 9;
      ++v3;
      v7 = v2;
      if (v1 == v3)
      {
        goto LABEL_24;
      }
    }
  }

  v4 = 0;
LABEL_24:
  v29 = v2[3];
  if (v29 >= 2)
  {
    v30 = v29 >> 1;
    v16 = __OFSUB__(v30, v4);
    v31 = v30 - v4;
    if (v16)
    {
      goto LABEL_30;
    }

    v2[2] = v31;
  }

  return v2;
}

void sub_1D630052C(uint64_t a1)
{
  sub_1D5C17CEC(0, &qword_1EDF04780, type metadata accessor for FeedCustomItem);
  v49 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v48 = (&v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5, v6);
  v9 = &v42 - v8;
  v10 = *(a1 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v12 = v7;
    v13 = *(v7 + 80);
    v45 = v13;
    v46 = (v13 + 32) & ~v13;
    v14 = MEMORY[0x1E69E7CC0] + v46;
    v15 = 0;
    v16 = 0;
    v17 = *(type metadata accessor for FeedCustomItem() - 8);
    v18 = a1 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v47 = *(v17 + 72);
    v19 = v11;
    v43 = v10;
    v44 = v12;
    while (1)
    {
      v22 = v48;
      v23 = *(v49 + 48);
      *v48 = v15;
      sub_1D5BD86D4(v18, v22 + v23, type metadata accessor for FeedCustomItem);
      sub_1D630BA20(v22, v9, &qword_1EDF04780, type metadata accessor for FeedCustomItem);
      if (v16)
      {
        v11 = v19;
        v20 = v12;
        v21 = __OFSUB__(v16--, 1);
        if (v21)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v24 = v19[3];
        if (((v24 >> 1) + 0x4000000000000000) < 0)
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          return;
        }

        v25 = v9;
        v26 = v24 & 0xFFFFFFFFFFFFFFFELL;
        if (v26 <= 1)
        {
          v27 = 1;
        }

        else
        {
          v27 = v26;
        }

        sub_1D630BA8C(0, &unk_1EDF01D58, &qword_1EDF04780, type metadata accessor for FeedCustomItem);
        v28 = *(v12 + 72);
        v29 = v46;
        v11 = swift_allocObject();
        v30 = _swift_stdlib_malloc_size(v11);
        if (!v28)
        {
          goto LABEL_34;
        }

        v31 = v30 - v29;
        if (v30 - v29 == 0x8000000000000000 && v28 == -1)
        {
          goto LABEL_35;
        }

        v33 = v31 / v28;
        v11[2] = v27;
        v11[3] = 2 * (v31 / v28);
        v34 = v11 + v29;
        v35 = v19[3] >> 1;
        v36 = v35 * v28;
        if (v19[2])
        {
          if (v11 < v19 || v34 >= v19 + v46 + v36)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v11 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v19[2] = 0;
        }

        v14 = &v34[v36];
        v38 = (v33 & 0x7FFFFFFFFFFFFFFFLL) - v35;

        v9 = v25;
        v10 = v43;
        v20 = v44;
        v21 = __OFSUB__(v38, 1);
        v16 = v38 - 1;
        if (v21)
        {
LABEL_27:
          __break(1u);
          break;
        }
      }

      ++v15;
      sub_1D630BA20(v9, v14, &qword_1EDF04780, type metadata accessor for FeedCustomItem);
      v12 = v20;
      v14 += *(v20 + 72);
      v18 += v47;
      v19 = v11;
      if (v10 == v15)
      {
        goto LABEL_29;
      }
    }
  }

  v16 = 0;
LABEL_29:
  v39 = v11[3];
  if (v39 >= 2)
  {
    v40 = v39 >> 1;
    v21 = __OFSUB__(v40, v16);
    v41 = v40 - v16;
    if (v21)
    {
      goto LABEL_36;
    }

    v11[2] = v41;
  }
}

void sub_1D63008BC(uint64_t a1)
{
  sub_1D5C17CEC(0, &unk_1EDF04740, type metadata accessor for FeedRecipe);
  v49 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v48 = (&v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5, v6);
  v9 = &v42 - v8;
  v10 = *(a1 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v12 = v7;
    v13 = *(v7 + 80);
    v45 = v13;
    v46 = (v13 + 32) & ~v13;
    v14 = MEMORY[0x1E69E7CC0] + v46;
    v15 = 0;
    v16 = 0;
    v17 = *(type metadata accessor for FeedRecipe() - 8);
    v18 = a1 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v47 = *(v17 + 72);
    v19 = v11;
    v43 = v10;
    v44 = v12;
    while (1)
    {
      v22 = v48;
      v23 = *(v49 + 48);
      *v48 = v15;
      sub_1D5BD86D4(v18, v22 + v23, type metadata accessor for FeedRecipe);
      sub_1D630BA20(v22, v9, &unk_1EDF04740, type metadata accessor for FeedRecipe);
      if (v16)
      {
        v11 = v19;
        v20 = v12;
        v21 = __OFSUB__(v16--, 1);
        if (v21)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v24 = v19[3];
        if (((v24 >> 1) + 0x4000000000000000) < 0)
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          return;
        }

        v25 = v9;
        v26 = v24 & 0xFFFFFFFFFFFFFFFELL;
        if (v26 <= 1)
        {
          v27 = 1;
        }

        else
        {
          v27 = v26;
        }

        sub_1D630BA8C(0, &qword_1EC885988, &unk_1EDF04740, type metadata accessor for FeedRecipe);
        v28 = *(v12 + 72);
        v29 = v46;
        v11 = swift_allocObject();
        v30 = _swift_stdlib_malloc_size(v11);
        if (!v28)
        {
          goto LABEL_34;
        }

        v31 = v30 - v29;
        if (v30 - v29 == 0x8000000000000000 && v28 == -1)
        {
          goto LABEL_35;
        }

        v33 = v31 / v28;
        v11[2] = v27;
        v11[3] = 2 * (v31 / v28);
        v34 = v11 + v29;
        v35 = v19[3] >> 1;
        v36 = v35 * v28;
        if (v19[2])
        {
          if (v11 < v19 || v34 >= v19 + v46 + v36)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v11 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v19[2] = 0;
        }

        v14 = &v34[v36];
        v38 = (v33 & 0x7FFFFFFFFFFFFFFFLL) - v35;

        v9 = v25;
        v10 = v43;
        v20 = v44;
        v21 = __OFSUB__(v38, 1);
        v16 = v38 - 1;
        if (v21)
        {
LABEL_27:
          __break(1u);
          break;
        }
      }

      ++v15;
      sub_1D630BA20(v9, v14, &unk_1EDF04740, type metadata accessor for FeedRecipe);
      v12 = v20;
      v14 += *(v20 + 72);
      v18 += v47;
      v19 = v11;
      if (v10 == v15)
      {
        goto LABEL_29;
      }
    }
  }

  v16 = 0;
LABEL_29:
  v39 = v11[3];
  if (v39 >= 2)
  {
    v40 = v39 >> 1;
    v21 = __OFSUB__(v40, v16);
    v41 = v40 - v16;
    if (v21)
    {
      goto LABEL_36;
    }

    v11[2] = v41;
  }
}

void sub_1D6300C4C(uint64_t a1)
{
  sub_1D5C17CEC(0, &qword_1EC88F4F0, type metadata accessor for FeedPuzzleStatistic);
  v49 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v48 = (&v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5, v6);
  v9 = &v42 - v8;
  v10 = *(a1 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v12 = v7;
    v13 = *(v7 + 80);
    v45 = v13;
    v46 = (v13 + 32) & ~v13;
    v14 = MEMORY[0x1E69E7CC0] + v46;
    v15 = 0;
    v16 = 0;
    v17 = *(type metadata accessor for FeedPuzzleStatistic() - 8);
    v18 = a1 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v47 = *(v17 + 72);
    v19 = v11;
    v43 = v10;
    v44 = v12;
    while (1)
    {
      v22 = v48;
      v23 = *(v49 + 48);
      *v48 = v15;
      sub_1D5BD86D4(v18, v22 + v23, type metadata accessor for FeedPuzzleStatistic);
      sub_1D630BA20(v22, v9, &qword_1EC88F4F0, type metadata accessor for FeedPuzzleStatistic);
      if (v16)
      {
        v11 = v19;
        v20 = v12;
        v21 = __OFSUB__(v16--, 1);
        if (v21)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v24 = v19[3];
        if (((v24 >> 1) + 0x4000000000000000) < 0)
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          return;
        }

        v25 = v9;
        v26 = v24 & 0xFFFFFFFFFFFFFFFELL;
        if (v26 <= 1)
        {
          v27 = 1;
        }

        else
        {
          v27 = v26;
        }

        sub_1D630BA8C(0, &qword_1EC885980, &qword_1EC88F4F0, type metadata accessor for FeedPuzzleStatistic);
        v28 = *(v12 + 72);
        v29 = v46;
        v11 = swift_allocObject();
        v30 = _swift_stdlib_malloc_size(v11);
        if (!v28)
        {
          goto LABEL_34;
        }

        v31 = v30 - v29;
        if (v30 - v29 == 0x8000000000000000 && v28 == -1)
        {
          goto LABEL_35;
        }

        v33 = v31 / v28;
        v11[2] = v27;
        v11[3] = 2 * (v31 / v28);
        v34 = v11 + v29;
        v35 = v19[3] >> 1;
        v36 = v35 * v28;
        if (v19[2])
        {
          if (v11 < v19 || v34 >= v19 + v46 + v36)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v11 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v19[2] = 0;
        }

        v14 = &v34[v36];
        v38 = (v33 & 0x7FFFFFFFFFFFFFFFLL) - v35;

        v9 = v25;
        v10 = v43;
        v20 = v44;
        v21 = __OFSUB__(v38, 1);
        v16 = v38 - 1;
        if (v21)
        {
LABEL_27:
          __break(1u);
          break;
        }
      }

      ++v15;
      sub_1D630BA20(v9, v14, &qword_1EC88F4F0, type metadata accessor for FeedPuzzleStatistic);
      v12 = v20;
      v14 += *(v20 + 72);
      v18 += v47;
      v19 = v11;
      if (v10 == v15)
      {
        goto LABEL_29;
      }
    }
  }

  v16 = 0;
LABEL_29:
  v39 = v11[3];
  if (v39 >= 2)
  {
    v40 = v39 >> 1;
    v21 = __OFSUB__(v40, v16);
    v41 = v40 - v16;
    if (v21)
    {
      goto LABEL_36;
    }

    v11[2] = v41;
  }
}

uint64_t sub_1D6300FDC(uint64_t result)
{
  v1 = *(result + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = MEMORY[0x1E69E7CC0] + 32;
    v6 = (result + 32);
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = v6[1];
      v25[0] = *v6;
      v25[1] = v8;
      v9 = v6[3];
      v26 = v6[2];
      v27 = v9;
      v28 = v25[0];
      v29 = v8;
      v30 = v26;
      v31 = v9;
      if (v4)
      {
        result = sub_1D63071F4(v25, v24);
        v2 = v7;
        v10 = __OFSUB__(v4--, 1);
        if (v10)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v11 = v7[3];
        if (((v11 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_31;
        }

        v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
        if (v12 <= 1)
        {
          v13 = 1;
        }

        else
        {
          v13 = v12;
        }

        sub_1D630B53C();
        v2 = swift_allocObject();
        v14 = (_swift_stdlib_malloc_size(v2) - 32) / 72;
        v2[2] = v13;
        v2[3] = 2 * v14;
        v15 = v7[3] >> 1;
        v5 = &v2[9 * v15 + 4];
        v16 = (v14 & 0x7FFFFFFFFFFFFFFFLL) - v15;
        if (v7[2])
        {
          v17 = v2 < v7 || v2 + 4 >= &v7[9 * v15 + 4];
          if (!v17 && v2 == v7)
          {
            sub_1D63071F4(v25, v24);
          }

          else
          {
            sub_1D63071F4(v25, v24);
            memmove(v2 + 4, v7 + 4, 72 * v15);
          }

          v7[2] = 0;

          v10 = __OFSUB__(v16, 1);
          v4 = v16 - 1;
          if (v10)
          {
LABEL_30:
            __break(1u);
LABEL_31:
            __break(1u);
LABEL_32:
            __break(1u);
            return result;
          }
        }

        else
        {
          sub_1D63071F4(v25, v24);

          v10 = __OFSUB__(v16, 1);
          v4 = v16 - 1;
          if (v10)
          {
            goto LABEL_30;
          }
        }
      }

      *v5 = v3;
      v18 = v28;
      v19 = v29;
      v20 = v30;
      *(v5 + 56) = v31;
      *(v5 + 40) = v20;
      *(v5 + 24) = v19;
      *(v5 + 8) = v18;
      v5 += 72;
      v6 += 4;
      ++v3;
      v7 = v2;
      if (v1 == v3)
      {
        goto LABEL_26;
      }
    }
  }

  v4 = 0;
LABEL_26:
  v21 = v2[3];
  if (v21 >= 2)
  {
    v22 = v21 >> 1;
    v10 = __OFSUB__(v22, v4);
    v23 = v22 - v4;
    if (v10)
    {
      goto LABEL_32;
    }

    v2[2] = v23;
  }

  return v2;
}

uint64_t sub_1D63011FC(uint64_t result)
{
  v1 = *(result + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = result + 32;
    v6 = MEMORY[0x1E69E7CC0] + 32;
    while (1)
    {
      *&v29[0] = v3;
      result = sub_1D5F2DEAC(v5, v29 + 8);
      v41 = v29[10];
      v42 = v29[11];
      v43 = v29[12];
      v44 = v30;
      v37 = v29[6];
      v38 = v29[7];
      v39 = v29[8];
      v40 = v29[9];
      v33 = v29[2];
      v34 = v29[3];
      v35 = v29[4];
      v36 = v29[5];
      v31 = v29[0];
      v32 = v29[1];
      if (!v4)
      {
        v7 = v2[3];
        if (((v7 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_23;
        }

        v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
        if (v8 <= 1)
        {
          v9 = 1;
        }

        else
        {
          v9 = v8;
        }

        sub_1D630B4CC();
        v10 = swift_allocObject();
        v11 = (_swift_stdlib_malloc_size(v10) - 32) / 216;
        v10[2] = v9;
        v10[3] = 2 * v11;
        v12 = (v10 + 4);
        v13 = v2[3] >> 1;
        if (v2[2])
        {
          v14 = v2 + 4;
          if (v10 != v2 || v12 >= v14 + 216 * v13)
          {
            memmove(v10 + 4, v14, 216 * v13);
          }

          v2[2] = 0;
        }

        v6 = v12 + 216 * v13;
        v4 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - v13;

        v2 = v10;
      }

      v15 = __OFSUB__(v4--, 1);
      if (v15)
      {
        break;
      }

      ++v3;
      v16 = v32;
      *v6 = v31;
      *(v6 + 16) = v16;
      v17 = v33;
      v18 = v34;
      v19 = v36;
      *(v6 + 64) = v35;
      *(v6 + 80) = v19;
      *(v6 + 32) = v17;
      *(v6 + 48) = v18;
      v20 = v37;
      v21 = v38;
      v22 = v40;
      *(v6 + 128) = v39;
      *(v6 + 144) = v22;
      *(v6 + 96) = v20;
      *(v6 + 112) = v21;
      v23 = v41;
      v24 = v42;
      v25 = v43;
      *(v6 + 208) = v44;
      *(v6 + 176) = v24;
      *(v6 + 192) = v25;
      *(v6 + 160) = v23;
      v6 += 216;
      v5 += 208;
      if (v1 == v3)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v4 = 0;
LABEL_18:
  v26 = v2[3];
  if (v26 < 2)
  {
    return v2;
  }

  v27 = v26 >> 1;
  v15 = __OFSUB__(v27, v4);
  v28 = v27 - v4;
  if (!v15)
  {
    v2[2] = v28;
    return v2;
  }

LABEL_24:
  __break(1u);
  return result;
}

void sub_1D630142C(uint64_t a1)
{
  sub_1D5C17CEC(0, &qword_1EDF04730, type metadata accessor for FeedWebEmbed);
  v49 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v48 = (&v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5, v6);
  v9 = &v42 - v8;
  v10 = *(a1 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v12 = v7;
    v13 = *(v7 + 80);
    v45 = v13;
    v46 = (v13 + 32) & ~v13;
    v14 = MEMORY[0x1E69E7CC0] + v46;
    v15 = 0;
    v16 = 0;
    v17 = *(type metadata accessor for FeedWebEmbed() - 8);
    v18 = a1 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v47 = *(v17 + 72);
    v19 = v11;
    v43 = v10;
    v44 = v12;
    while (1)
    {
      v22 = v48;
      v23 = *(v49 + 48);
      *v48 = v15;
      sub_1D5BD86D4(v18, v22 + v23, type metadata accessor for FeedWebEmbed);
      sub_1D630BA20(v22, v9, &qword_1EDF04730, type metadata accessor for FeedWebEmbed);
      if (v16)
      {
        v11 = v19;
        v20 = v12;
        v21 = __OFSUB__(v16--, 1);
        if (v21)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v24 = v19[3];
        if (((v24 >> 1) + 0x4000000000000000) < 0)
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          return;
        }

        v25 = v9;
        v26 = v24 & 0xFFFFFFFFFFFFFFFELL;
        if (v26 <= 1)
        {
          v27 = 1;
        }

        else
        {
          v27 = v26;
        }

        sub_1D630BA8C(0, &qword_1EDF01D48, &qword_1EDF04730, type metadata accessor for FeedWebEmbed);
        v28 = *(v12 + 72);
        v29 = v46;
        v11 = swift_allocObject();
        v30 = _swift_stdlib_malloc_size(v11);
        if (!v28)
        {
          goto LABEL_34;
        }

        v31 = v30 - v29;
        if (v30 - v29 == 0x8000000000000000 && v28 == -1)
        {
          goto LABEL_35;
        }

        v33 = v31 / v28;
        v11[2] = v27;
        v11[3] = 2 * (v31 / v28);
        v34 = v11 + v29;
        v35 = v19[3] >> 1;
        v36 = v35 * v28;
        if (v19[2])
        {
          if (v11 < v19 || v34 >= v19 + v46 + v36)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v11 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v19[2] = 0;
        }

        v14 = &v34[v36];
        v38 = (v33 & 0x7FFFFFFFFFFFFFFFLL) - v35;

        v9 = v25;
        v10 = v43;
        v20 = v44;
        v21 = __OFSUB__(v38, 1);
        v16 = v38 - 1;
        if (v21)
        {
LABEL_27:
          __break(1u);
          break;
        }
      }

      ++v15;
      sub_1D630BA20(v9, v14, &qword_1EDF04730, type metadata accessor for FeedWebEmbed);
      v12 = v20;
      v14 += *(v20 + 72);
      v18 += v47;
      v19 = v11;
      if (v10 == v15)
      {
        goto LABEL_29;
      }
    }
  }

  v16 = 0;
LABEL_29:
  v39 = v11[3];
  if (v39 >= 2)
  {
    v40 = v39 >> 1;
    v21 = __OFSUB__(v40, v16);
    v41 = v40 - v16;
    if (v21)
    {
      goto LABEL_36;
    }

    v11[2] = v41;
  }
}

uint64_t sub_1D63017BC(uint64_t result)
{
  v1 = *(result + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = result + 32;
    v6 = (MEMORY[0x1E69E7CC0] + 32);
    while (1)
    {
      *&v27[0] = v3;
      result = sub_1D5EE5AF8(v5, v27 + 8);
      v35 = v27[6];
      v36 = v27[7];
      v37[0] = v28[0];
      *(v37 + 9) = *(v28 + 9);
      v31 = v27[2];
      v32 = v27[3];
      v33 = v27[4];
      v34 = v27[5];
      v29 = v27[0];
      v30 = v27[1];
      if (!v4)
      {
        v7 = v2[3];
        if (((v7 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_26;
        }

        v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
        if (v8 <= 1)
        {
          v9 = 1;
        }

        else
        {
          v9 = v8;
        }

        sub_1D630B464();
        v10 = swift_allocObject();
        v11 = (_swift_stdlib_malloc_size(v10) - 32) / 160;
        v10[2] = v9;
        v10[3] = 2 * v11;
        v12 = (v10 + 4);
        v13 = v2[3] >> 1;
        v14 = 20 * v13;
        if (v2[2])
        {
          if (v10 != v2 || v12 >= &v2[v14 + 4])
          {
            memmove(v10 + 4, v2 + 4, 160 * v13);
          }

          v2[2] = 0;
        }

        v6 = (v12 + v14 * 8);
        v4 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - v13;

        v2 = v10;
      }

      v16 = __OFSUB__(v4--, 1);
      if (v16)
      {
        break;
      }

      ++v3;
      v17 = v30;
      *v6 = v29;
      v6[1] = v17;
      v18 = v31;
      v19 = v32;
      v20 = v34;
      v6[4] = v33;
      v6[5] = v20;
      v6[2] = v18;
      v6[3] = v19;
      v21 = v35;
      v22 = v36;
      v23 = v37[0];
      *(v6 + 137) = *(v37 + 9);
      v6[7] = v22;
      v6[8] = v23;
      v6[6] = v21;
      v6 += 10;
      v5 += 152;
      if (v1 == v3)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v4 = 0;
LABEL_21:
  v24 = v2[3];
  if (v24 < 2)
  {
    return v2;
  }

  v25 = v24 >> 1;
  v16 = __OFSUB__(v25, v4);
  v26 = v25 - v4;
  if (!v16)
  {
    v2[2] = v26;
    return v2;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1D63019AC(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = 0;
  v4 = result + 32;
  v5 = MEMORY[0x1E69E7CC0];
  v6 = (MEMORY[0x1E69E7CC0] + 32);
LABEL_3:
  v8 = *(v1 + 16);
  if (v3 != v8)
  {
    if (v3 >= v8)
    {
LABEL_35:
      __break(1u);
    }

    else
    {
      while (1)
      {
        v9 = *(v4 + 8 * v3);

        if (v9)
        {
          v7 = *(v9 + 16);
          if (v7)
          {
            break;
          }
        }

        ++v3;
        v10 = *(v1 + 16);
        if (v3 == v10)
        {
          goto LABEL_31;
        }

        if (v3 >= v10)
        {
          goto LABEL_35;
        }
      }

      v11 = 0;
      ++v3;
      while (v11 < v7)
      {
        v12 = (v9 + 24 * v11);
        v13 = v12[5];
        v27 = v12[4];
        v28 = v12[6];
        if (v2)
        {

          v14 = v5;
          v15 = __OFSUB__(v2--, 1);
          if (v15)
          {
            goto LABEL_37;
          }
        }

        else
        {
          v16 = v5[3];
          if (((v16 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_38;
          }

          v17 = v16 & 0xFFFFFFFFFFFFFFFELL;
          if (v17 <= 1)
          {
            v18 = 1;
          }

          else
          {
            v18 = v17;
          }

          sub_1D5B7F04C(0, &qword_1EC89C800, &type metadata for DebugJournalGroupSection, MEMORY[0x1E69E6F90]);
          v14 = swift_allocObject();
          v19 = (_swift_stdlib_malloc_size(v14) - 32) / 24;
          v14[2] = v18;
          v14[3] = 2 * v19;
          v20 = v14 + 4;
          v21 = v5[3] >> 1;
          v6 = &v14[3 * v21 + 4];
          v22 = (v19 & 0x7FFFFFFFFFFFFFFFLL) - v21;
          if (v5[2])
          {
            if (v14 != v5 || v20 >= &v5[3 * v21 + 4])
            {
              memmove(v20, v5 + 4, 24 * v21);
            }

            v5[2] = 0;
          }

          else
          {
          }

          v15 = __OFSUB__(v22, 1);
          v2 = v22 - 1;
          if (v15)
          {
            goto LABEL_37;
          }
        }

        ++v11;
        *v6 = v27;
        v6[1] = v13;
        v6[2] = v28;
        v6 += 3;
        v5 = v14;
        v7 = *(v9 + 16);
        if (v11 == v7)
        {
          goto LABEL_3;
        }
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

LABEL_31:

  v24 = v5[3];
  if (v24 < 2)
  {
    return v5;
  }

  v25 = v24 >> 1;
  v15 = __OFSUB__(v25, v2);
  v26 = v25 - v2;
  if (!v15)
  {
    v5[2] = v26;
    return v5;
  }

LABEL_39:
  __break(1u);
  return result;
}

unint64_t sub_1D6301C14(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
    goto LABEL_35;
  }

  v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = v1 & 0xC000000000000001;
    v7 = (MEMORY[0x1E69E7CC0] + 32);
    v8 = v1 & 0xFFFFFFFFFFFFFF8;
    v27 = v1 & 0xC000000000000001;
    v28 = v1;
    v26 = v1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v6)
      {
        result = MEMORY[0x1DA6FB460](v4, v1);
        v9 = result;
        v10 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_26:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v4 >= *(v8 + 16))
        {
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          result = sub_1D7263BFC();
          v2 = result;
          goto LABEL_3;
        }

        v9 = *(v1 + 8 * v4 + 32);

        v10 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_26;
        }
      }

      if (!v5)
      {
        v11 = v3[3];
        if (((v11 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_34;
        }

        v12 = v2;
        v13 = v11 & 0xFFFFFFFFFFFFFFFELL;
        if (v13 <= 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = v13;
        }

        sub_1D630BA8C(0, &qword_1EC885940, &unk_1EC88EAE0, MEMORY[0x1E69D7608]);
        v15 = swift_allocObject();
        v16 = _swift_stdlib_malloc_size(v15);
        v17 = v16 - 32;
        if (v16 < 32)
        {
          v17 = v16 - 17;
        }

        v18 = v17 >> 4;
        v15[2] = v14;
        v15[3] = 2 * (v17 >> 4);
        v19 = (v15 + 4);
        v20 = v3[3] >> 1;
        if (v3[2])
        {
          v21 = v3 + 4;
          if (v15 != v3 || v19 >= v21 + 16 * v20)
          {
            memmove(v15 + 4, v21, 16 * v20);
          }

          v3[2] = 0;
        }

        v7 = (v19 + 16 * v20);
        v5 = (v18 & 0x7FFFFFFFFFFFFFFFLL) - v20;

        v3 = v15;
        v2 = v12;
        v6 = v27;
        v1 = v28;
        v8 = v26;
      }

      v22 = __OFSUB__(v5--, 1);
      if (v22)
      {
        goto LABEL_33;
      }

      *v7 = v4;
      v7[1] = v9;
      v7 += 2;
      ++v4;
      if (v10 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  v5 = 0;
LABEL_28:
  v23 = v3[3];
  if (v23 < 2)
  {
    return v3;
  }

  v24 = v23 >> 1;
  v22 = __OFSUB__(v24, v5);
  v25 = v24 - v5;
  if (!v22)
  {
    v3[2] = v25;
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D6301E1C(uint64_t result)
{
  v1 = *(result + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = result + 32;
    v6 = (MEMORY[0x1E69E7CC0] + 32);
    while (1)
    {
      __src[0] = v3;
      sub_1D5F76E40(v5, &__src[1]);
      result = memcpy(__dst, __src, sizeof(__dst));
      if (!v4)
      {
        v7 = v2[3];
        if (((v7 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_26;
        }

        v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
        if (v8 <= 1)
        {
          v9 = 1;
        }

        else
        {
          v9 = v8;
        }

        sub_1D6306F5C();
        v10 = swift_allocObject();
        v11 = (_swift_stdlib_malloc_size(v10) - 32) / 296;
        v10[2] = v9;
        v10[3] = 2 * v11;
        v12 = (v10 + 4);
        v13 = v2[3] >> 1;
        v14 = 296 * v13;
        if (v2[2])
        {
          if (v10 != v2 || v12 >= &v2[v14 / 8 + 4])
          {
            memmove(v10 + 4, v2 + 4, v14);
          }

          v2[2] = 0;
        }

        v6 = (v12 + v14);
        v4 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - v13;

        v2 = v10;
      }

      v16 = __OFSUB__(v4--, 1);
      if (v16)
      {
        break;
      }

      ++v3;
      result = memcpy(v6, __dst, 0x122uLL);
      v6 += 296;
      v5 += 288;
      if (v1 == v3)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v4 = 0;
LABEL_21:
  v17 = v2[3];
  if (v17 < 2)
  {
    return v2;
  }

  v18 = v17 >> 1;
  v16 = __OFSUB__(v18, v4);
  v19 = v18 - v4;
  if (!v16)
  {
    v2[2] = v19;
    return v2;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1D6301FC8(uint64_t result)
{
  v1 = *(result + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = result + 32;
    v6 = (MEMORY[0x1E69E7CC0] + 32);
    while (1)
    {
      *&v26[0] = v3;
      result = sub_1D5F76D3C(v5, v26 + 8);
      v33 = v26[6];
      v34 = v26[7];
      v35 = v26[8];
      v36 = v26[9];
      v29 = v26[2];
      v30 = v26[3];
      v31 = v26[4];
      v32 = v26[5];
      v27 = v26[0];
      v28 = v26[1];
      if (!v4)
      {
        v7 = v2[3];
        if (((v7 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_26;
        }

        v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
        if (v8 <= 1)
        {
          v9 = 1;
        }

        else
        {
          v9 = v8;
        }

        sub_1D6306E10();
        v10 = swift_allocObject();
        v11 = (_swift_stdlib_malloc_size(v10) - 32) / 160;
        v10[2] = v9;
        v10[3] = 2 * v11;
        v12 = (v10 + 4);
        v13 = v2[3] >> 1;
        if (v2[2])
        {
          if (v10 != v2 || v12 >= &v2[20 * v13 + 4])
          {
            memmove(v10 + 4, v2 + 4, 160 * v13);
          }

          v2[2] = 0;
        }

        v6 = (v12 + 160 * v13);
        v4 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - v13;

        v2 = v10;
      }

      v15 = __OFSUB__(v4--, 1);
      if (v15)
      {
        break;
      }

      ++v3;
      v16 = v28;
      *v6 = v27;
      v6[1] = v16;
      v17 = v29;
      v18 = v30;
      v19 = v32;
      v6[4] = v31;
      v6[5] = v19;
      v6[2] = v17;
      v6[3] = v18;
      v20 = v33;
      v21 = v34;
      v22 = v36;
      v6[8] = v35;
      v6[9] = v22;
      v6[6] = v20;
      v6[7] = v21;
      v6 += 10;
      v5 += 152;
      if (v1 == v3)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v4 = 0;
LABEL_21:
  v23 = v2[3];
  if (v23 < 2)
  {
    return v2;
  }

  v24 = v23 >> 1;
  v15 = __OFSUB__(v24, v4);
  v25 = v24 - v4;
  if (!v15)
  {
    v2[2] = v25;
    return v2;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_1D63021A0(uint64_t a1)
{
  sub_1D5C17CEC(0, &qword_1EC883DA0, type metadata accessor for FormatSlotDefinitionItemSet);
  v49 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v48 = (&v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5, v6);
  v9 = &v42 - v8;
  v10 = *(a1 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v12 = v7;
    v13 = *(v7 + 80);
    v45 = v13;
    v46 = (v13 + 32) & ~v13;
    v14 = MEMORY[0x1E69E7CC0] + v46;
    v15 = 0;
    v16 = 0;
    v17 = *(type metadata accessor for FormatSlotDefinitionItemSet() - 8);
    v18 = a1 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v47 = *(v17 + 72);
    v19 = v11;
    v43 = v10;
    v44 = v12;
    while (1)
    {
      v22 = v48;
      v23 = *(v49 + 48);
      *v48 = v15;
      sub_1D5BD86D4(v18, v22 + v23, type metadata accessor for FormatSlotDefinitionItemSet);
      sub_1D630BA20(v22, v9, &qword_1EC883DA0, type metadata accessor for FormatSlotDefinitionItemSet);
      if (v16)
      {
        v11 = v19;
        v20 = v12;
        v21 = __OFSUB__(v16--, 1);
        if (v21)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v24 = v19[3];
        if (((v24 >> 1) + 0x4000000000000000) < 0)
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          return;
        }

        v25 = v9;
        v26 = v24 & 0xFFFFFFFFFFFFFFFELL;
        if (v26 <= 1)
        {
          v27 = 1;
        }

        else
        {
          v27 = v26;
        }

        sub_1D630BA8C(0, &qword_1EC8859A0, &qword_1EC883DA0, type metadata accessor for FormatSlotDefinitionItemSet);
        v28 = *(v12 + 72);
        v29 = v46;
        v11 = swift_allocObject();
        v30 = _swift_stdlib_malloc_size(v11);
        if (!v28)
        {
          goto LABEL_34;
        }

        v31 = v30 - v29;
        if (v30 - v29 == 0x8000000000000000 && v28 == -1)
        {
          goto LABEL_35;
        }

        v33 = v31 / v28;
        v11[2] = v27;
        v11[3] = 2 * (v31 / v28);
        v34 = v11 + v29;
        v35 = v19[3] >> 1;
        v36 = v35 * v28;
        if (v19[2])
        {
          if (v11 < v19 || v34 >= v19 + v46 + v36)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v11 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v19[2] = 0;
        }

        v14 = &v34[v36];
        v38 = (v33 & 0x7FFFFFFFFFFFFFFFLL) - v35;

        v9 = v25;
        v10 = v43;
        v20 = v44;
        v21 = __OFSUB__(v38, 1);
        v16 = v38 - 1;
        if (v21)
        {
LABEL_27:
          __break(1u);
          break;
        }
      }

      ++v15;
      sub_1D630BA20(v9, v14, &qword_1EC883DA0, type metadata accessor for FormatSlotDefinitionItemSet);
      v12 = v20;
      v14 += *(v20 + 72);
      v18 += v47;
      v19 = v11;
      if (v10 == v15)
      {
        goto LABEL_29;
      }
    }
  }

  v16 = 0;
LABEL_29:
  v39 = v11[3];
  if (v39 >= 2)
  {
    v40 = v39 >> 1;
    v21 = __OFSUB__(v40, v16);
    v41 = v40 - v16;
    if (v21)
    {
      goto LABEL_36;
    }

    v11[2] = v41;
  }
}

uint64_t sub_1D6302530(uint64_t result)
{
  v1 = *(result + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = MEMORY[0x1E69E7CC0] + 32;
    v6 = result + 32;
    while (1)
    {
      v20 = *(v6 + 16 * v3);
      if (v4)
      {

        v7 = __OFSUB__(v4--, 1);
        if (v7)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v8 = v2[3];
        if (((v8 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_29;
        }

        v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
        if (v9 <= 1)
        {
          v10 = 1;
        }

        else
        {
          v10 = v9;
        }

        sub_1D630BA8C(0, &qword_1EC8859A8, &qword_1EC8859B0, sub_1D630BAE4);
        v11 = swift_allocObject();
        v12 = (_swift_stdlib_malloc_size(v11) - 32) / 24;
        v11[2] = v10;
        v11[3] = 2 * v12;
        v13 = v11 + 4;
        v14 = v2[3] >> 1;
        v5 = &v11[3 * v14 + 4];
        v15 = (v12 & 0x7FFFFFFFFFFFFFFFLL) - v14;
        if (v2[2])
        {
          if (v11 != v2 || v13 >= &v2[3 * v14 + 4])
          {
            memmove(v13, v2 + 4, 24 * v14);
          }

          v2[2] = 0;
        }

        else
        {
        }

        v2 = v11;
        v7 = __OFSUB__(v15, 1);
        v4 = v15 - 1;
        if (v7)
        {
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          return result;
        }
      }

      *v5 = v3;
      *(v5 + 8) = v20;
      v5 += 24;
      if (v1 == ++v3)
      {
        goto LABEL_24;
      }
    }
  }

  v4 = 0;
LABEL_24:
  v17 = v2[3];
  if (v17 >= 2)
  {
    v18 = v17 >> 1;
    v7 = __OFSUB__(v18, v4);
    v19 = v18 - v4;
    if (v7)
    {
      goto LABEL_30;
    }

    v2[2] = v19;
  }

  return v2;
}

uint64_t sub_1D6302700(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1D5B63F14(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_1D63027A8(uint64_t a1, _OWORD *a2, uint64_t a3, _OWORD *a4, void (*a5)(unsigned __int8 *__return_ptr, _BYTE *, _BYTE *))
{
  v6 = a2[4];
  v28 = a2[5];
  v7 = a2[5];
  v29 = a2[6];
  v8 = a2[6];
  v30[0] = a2[7];
  *(v30 + 9) = *(a2 + 121);
  v9 = a2[1];
  v10 = a2[3];
  v25 = a2[2];
  v26 = v10;
  v11 = a2[3];
  v27 = a2[4];
  v12 = a2[1];
  v24[0] = *a2;
  v24[1] = v12;
  v13 = a4[6];
  v14 = a4[4];
  v35 = a4[5];
  v36 = v13;
  v15 = a4[6];
  v37[0] = a4[7];
  *(v37 + 9) = *(a4 + 121);
  v16 = a4[1];
  v17 = a4[3];
  v32 = a4[2];
  v33 = v17;
  v18 = a4[3];
  v34 = a4[4];
  v19 = a4[1];
  v31[0] = *a4;
  v31[1] = v19;
  *&v23[88] = v7;
  *&v23[104] = v8;
  *&v23[120] = a2[7];
  *&v23[129] = *(a2 + 121);
  *&v23[24] = v9;
  *&v23[40] = v25;
  *&v23[56] = v11;
  *&v23[72] = v6;
  *&v23[8] = v24[0];
  *&v22[88] = v35;
  *&v22[104] = v15;
  *&v22[120] = a4[7];
  *&v22[129] = *(a4 + 121);
  *&v22[24] = v16;
  *&v22[40] = v32;
  *&v22[56] = v18;
  *&v22[72] = v14;
  *v23 = a1;
  *v22 = a3;
  *&v22[8] = v31[0];
  sub_1D5ECF2C4(v24, v40);
  sub_1D5ECF2C4(v31, v40);
  a5(&v21, v23, v22);
  v38[6] = *&v22[96];
  v38[7] = *&v22[112];
  v38[8] = *&v22[128];
  v39 = v22[144];
  v38[2] = *&v22[32];
  v38[3] = *&v22[48];
  v38[4] = *&v22[64];
  v38[5] = *&v22[80];
  v38[0] = *v22;
  v38[1] = *&v22[16];
  sub_1D6306DB0(v38, &unk_1EDF046E0, &type metadata for FeedIssue, sub_1D630B5A4);
  v40[6] = *&v23[96];
  v40[7] = *&v23[112];
  v40[8] = *&v23[128];
  v41 = v23[144];
  v40[2] = *&v23[32];
  v40[3] = *&v23[48];
  v40[4] = *&v23[64];
  v40[5] = *&v23[80];
  v40[0] = *v23;
  v40[1] = *&v23[16];
  sub_1D6306DB0(v40, &unk_1EDF046E0, &type metadata for FeedIssue, sub_1D630B5A4);
  return v21;
}

uint64_t sub_1D63029AC(uint64_t a1, _OWORD *a2, uint64_t a3, _OWORD *a4, void (*a5)(unsigned __int8 *__return_ptr, _BYTE *, _BYTE *))
{
  v6 = a2[1];
  v20[0] = *a2;
  v7 = *a2;
  v8 = a2[1];
  v20[1] = v6;
  v9 = a2[3];
  v20[2] = a2[2];
  v10 = a2[2];
  v20[3] = v9;
  v11 = a4[1];
  v21[0] = *a4;
  v12 = *a4;
  v13 = a4[1];
  v21[1] = v11;
  v14 = a4[3];
  v21[2] = a4[2];
  v15 = a4[2];
  v21[3] = v14;
  *&v19[8] = v7;
  *&v19[24] = v8;
  *&v19[40] = v10;
  *&v19[56] = a2[3];
  *&v18[8] = v12;
  *&v18[24] = v13;
  *v19 = a1;
  *v18 = a3;
  *&v18[40] = v15;
  *&v18[56] = a4[3];
  sub_1D63071F4(v20, v24);
  sub_1D63071F4(v21, v24);
  a5(&v17, v19, v18);
  v22[1] = *&v18[16];
  v22[2] = *&v18[32];
  v22[3] = *&v18[48];
  v23 = *&v18[64];
  v22[0] = *v18;
  sub_1D6306DB0(v22, &unk_1EDF046F0, &type metadata for FeedPuzzleType, sub_1D630B5A4);
  v24[2] = *&v19[32];
  v24[3] = *&v19[48];
  v25 = *&v19[64];
  v24[0] = *v19;
  v24[1] = *&v19[16];
  sub_1D6306DB0(v24, &unk_1EDF046F0, &type metadata for FeedPuzzleType, sub_1D630B5A4);
  return v17;
}

uint64_t sub_1D6302B18(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, void (*a5)(unsigned __int8 *__return_ptr, void *, void *))
{
  v6 = *a2;
  v7 = *a4;
  v11[0] = a1;
  v11[1] = v6;
  v10[0] = a3;
  v10[1] = v7;

  a5(&v9, v11, v10);

  return v9;
}

uint64_t sub_1D6302B94(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, void (*a5)(unsigned __int8 *__return_ptr, uint64_t *, uint64_t *), uint64_t a6)
{
  v7 = v6;
  v12 = swift_allocObject();
  v125 = a3;
  v126 = a5;
  *(v12 + 16) = a5;
  *(v12 + 24) = a6;
  v13 = a3[1];
  v127 = a6;
  if (v13 < 1)
  {
    swift_retain_n();
    v15 = MEMORY[0x1E69E7CC0];
LABEL_92:
    v124 = *a1;
    if (!*a1)
    {
      goto LABEL_131;
    }

    v107 = swift_allocObject();
    *(v107 + 16) = v126;
    *(v107 + 24) = a6;
    swift_retain_n();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_125:
      v15 = sub_1D62FF50C(v15);
    }

    v108 = v7;
    v133 = v15;
    v109 = *(v15 + 2);
    if (v109 < 2)
    {
LABEL_102:
    }

    while (1)
    {
      v110 = *v125;
      if (!*v125)
      {
        goto LABEL_129;
      }

      v7 = v109 - 1;
      v111 = *&v15[16 * v109];
      v112 = *&v15[16 * v109 + 24];
      v113 = (v110 + 48 * v111);
      v114 = (v110 + 48 * *&v15[16 * v109 + 16]);
      v115 = (v110 + 48 * v112);

      sub_1D62FADAC(v113, v114, v115, v124, v126, v127);
      if (v108)
      {
      }

      if (v112 < v111)
      {
        goto LABEL_118;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_1D62FF50C(v15);
      }

      if (v109 - 2 >= *(v15 + 2))
      {
        goto LABEL_119;
      }

      v116 = &v15[16 * v109];
      *v116 = v111;
      *(v116 + 1) = v112;
      v133 = v15;
      sub_1D62FF480(v109 - 1);
      v15 = v133;
      v109 = *(v133 + 2);
      if (v109 <= 1)
      {
        goto LABEL_102;
      }
    }
  }

  v118 = a4;
  swift_retain_n();
  v14 = 0;
  v15 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v16 = v14;
    v17 = v14 + 1;
    if (v17 >= v13)
    {
      v27 = v17;
      goto LABEL_11;
    }

    v18 = (*v125 + 48 * v17);
    v19 = 48 * v16;
    v20 = (*v125 + 48 * v16);
    v22 = *v20;
    v21 = (v20 + 13);
    v131 = *v18;
    sub_1D5B68374((v18 + 1), v132);
    v129 = v22;
    sub_1D5B68374((v20 + 1), v130);
    v126(&v128, &v131, &v129);
    sub_1D5BCF630(&v129, sub_1D630B744);
    sub_1D5BCF630(&v131, sub_1D630B744);
    v23 = v16;
    v24 = v128;
    v119 = v23;
    v25 = v23 + 2;
    while (v13 != v25)
    {
      v26 = *(v21 - 56);
      v131 = *(v21 - 8);
      sub_1D5B68374(v21, v132);
      v129 = v26;
      sub_1D5B68374(v21 - 48, v130);
      v126(&v128, &v131, &v129);
      sub_1D5BCF630(&v129, sub_1D630B744);
      sub_1D5BCF630(&v131, sub_1D630B744);
      ++v25;
      v21 += 48;
      if (v24 != v128)
      {
        v27 = v25 - 1;
        if (!v24)
        {
          goto LABEL_9;
        }

LABEL_71:
        v16 = v119;
        if (v27 >= v119)
        {
          if (v119 < v27)
          {
            v81 = 48 * v27 - 48;
            v82 = v27;
            v83 = v119;
            do
            {
              if (v83 != --v82)
              {
                v91 = *v125;
                if (!*v125)
                {
                  goto LABEL_128;
                }

                v84 = (v91 + v19);
                v85 = (v91 + v81);
                v86 = *v84;
                v87 = v84[1];
                v88 = v84[2];
                v90 = v85[1];
                v89 = v85[2];
                *v84 = *v85;
                v84[1] = v90;
                v84[2] = v89;
                v85[1] = v87;
                v85[2] = v88;
                *v85 = v86;
              }

              ++v83;
              v81 -= 48;
              v19 += 48;
            }

            while (v83 < v82);
          }

          goto LABEL_11;
        }

LABEL_122:
        __break(1u);
LABEL_123:
        __break(1u);
        goto LABEL_124;
      }
    }

    v27 = v13;
    if (v24)
    {
      goto LABEL_71;
    }

LABEL_9:
    v16 = v119;
LABEL_11:
    v28 = v125[1];
    if (v27 >= v28)
    {
      goto LABEL_20;
    }

    if (__OFSUB__(v27, v16))
    {
      goto LABEL_121;
    }

    if (v27 - v16 >= v118)
    {
      goto LABEL_20;
    }

    if (__OFADD__(v16, v118))
    {
      goto LABEL_123;
    }

    if (v16 + v118 >= v28)
    {
      v29 = v125[1];
    }

    else
    {
      v29 = (v16 + v118);
    }

    if (v29 < v16)
    {
LABEL_124:
      __break(1u);
      goto LABEL_125;
    }

    if (v27 == v29)
    {
LABEL_20:
      v30 = v27;
      if (v27 < v16)
      {
        goto LABEL_120;
      }
    }

    else
    {
      v117 = v7;
      v92 = *v125;
      v93 = *v125 + 48 * v27 + 8;
      v120 = v16;
      v94 = v16 - v27;
      v123 = v29;
      do
      {
        v124 = v27;
        v95 = v94;
        v96 = v93;
        do
        {
          v97 = (v96 - 8);
          v99 = (v96 - 56);
          v98 = *(v96 - 56);
          v100 = v96 - 48;
          v131 = *(v96 - 8);
          sub_1D5B68374(v96, v132);
          v129 = v98;
          sub_1D5B68374(v100, v130);
          v126(&v128, &v131, &v129);
          sub_1D5BCF630(&v129, sub_1D630B744);
          sub_1D5BCF630(&v131, sub_1D630B744);
          if (v128 != 1)
          {
            break;
          }

          if (!v92)
          {

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
            return result;
          }

          v102 = v97[1];
          v101 = v97[2];
          v103 = *v97;
          v104 = v99[1];
          *v97 = *v99;
          v97[1] = v104;
          v97[2] = v99[2];
          *v99 = v103;
          v99[1] = v102;
          v96 = v100;
          v99[2] = v101;
        }

        while (!__CFADD__(v95++, 1));
        v30 = v123;
        v27 = (v124 + 1);
        v93 += 48;
        --v94;
      }

      while (v124 + 1 != v123);
      v7 = v117;
      v16 = v120;
      if (v123 < v120)
      {
LABEL_120:
        __break(1u);
LABEL_121:
        __break(1u);
        goto LABEL_122;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_1D698BA94(0, *(v15 + 2) + 1, 1, v15);
    }

    v32 = *(v15 + 2);
    v31 = *(v15 + 3);
    v33 = v32 + 1;
    if (v32 >= v31 >> 1)
    {
      v15 = sub_1D698BA94((v31 > 1), v32 + 1, 1, v15);
    }

    *(v15 + 2) = v33;
    v34 = &v15[16 * v32];
    *(v34 + 4) = v16;
    *(v34 + 5) = v30;
    v122 = v30;
    v124 = *a1;
    if (!*a1)
    {
      goto LABEL_130;
    }

    if (v32)
    {
      break;
    }

LABEL_3:
    v13 = v125[1];
    v14 = v122;
    a6 = v127;
    if (v122 >= v13)
    {
      goto LABEL_92;
    }
  }

  while (1)
  {
    v35 = v33 - 1;
    if (v33 >= 4)
    {
      v40 = &v15[16 * v33 + 32];
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_107;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_108;
      }

      v47 = &v15[16 * v33];
      v49 = *v47;
      v48 = *(v47 + 1);
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_110;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_113;
      }

      if (v51 >= v43)
      {
        v69 = &v15[16 * v35 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_117;
        }

        if (v38 < v72)
        {
          v35 = v33 - 2;
        }

        goto LABEL_61;
      }

      goto LABEL_40;
    }

    if (v33 == 3)
    {
      v36 = *(v15 + 4);
      v37 = *(v15 + 5);
      v46 = __OFSUB__(v37, v36);
      v38 = v37 - v36;
      v39 = v46;
LABEL_40:
      if (v39)
      {
        goto LABEL_109;
      }

      v52 = &v15[16 * v33];
      v54 = *v52;
      v53 = *(v52 + 1);
      v55 = __OFSUB__(v53, v54);
      v56 = v53 - v54;
      v57 = v55;
      if (v55)
      {
        goto LABEL_112;
      }

      v58 = &v15[16 * v35 + 32];
      v60 = *v58;
      v59 = *(v58 + 1);
      v46 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v46)
      {
        goto LABEL_115;
      }

      if (__OFADD__(v56, v61))
      {
        goto LABEL_116;
      }

      if (v56 + v61 >= v38)
      {
        if (v38 < v61)
        {
          v35 = v33 - 2;
        }

        goto LABEL_61;
      }

      goto LABEL_54;
    }

    v62 = &v15[16 * v33];
    v64 = *v62;
    v63 = *(v62 + 1);
    v46 = __OFSUB__(v63, v64);
    v56 = v63 - v64;
    v57 = v46;
LABEL_54:
    if (v57)
    {
      goto LABEL_111;
    }

    v65 = &v15[16 * v35];
    v67 = *(v65 + 4);
    v66 = *(v65 + 5);
    v46 = __OFSUB__(v66, v67);
    v68 = v66 - v67;
    if (v46)
    {
      goto LABEL_114;
    }

    if (v68 < v56)
    {
      goto LABEL_3;
    }

LABEL_61:
    v73 = v35 - 1;
    if (v35 - 1 >= v33)
    {
      __break(1u);
LABEL_105:
      __break(1u);
LABEL_106:
      __break(1u);
LABEL_107:
      __break(1u);
LABEL_108:
      __break(1u);
LABEL_109:
      __break(1u);
LABEL_110:
      __break(1u);
LABEL_111:
      __break(1u);
LABEL_112:
      __break(1u);
LABEL_113:
      __break(1u);
LABEL_114:
      __break(1u);
LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
LABEL_117:
      __break(1u);
LABEL_118:
      __break(1u);
LABEL_119:
      __break(1u);
      goto LABEL_120;
    }

    v74 = *v125;
    if (!*v125)
    {
      goto LABEL_127;
    }

    v75 = *&v15[16 * v73 + 32];
    v76 = *&v15[16 * v35 + 40];
    v77 = (v74 + 48 * v75);
    v78 = (v74 + 48 * *&v15[16 * v35 + 32]);
    v79 = (v74 + 48 * v76);

    sub_1D62FADAC(v77, v78, v79, v124, v126, v127);
    if (v7)
    {
      break;
    }

    if (v76 < v75)
    {
      goto LABEL_105;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_1D62FF50C(v15);
    }

    if (v73 >= *(v15 + 2))
    {
      goto LABEL_106;
    }

    v80 = &v15[16 * v73];
    *(v80 + 4) = v75;
    *(v80 + 5) = v76;
    v133 = v15;
    sub_1D62FF480(v35);
    v15 = v133;
    v33 = *(v133 + 2);
    if (v33 <= 1)
    {
      goto LABEL_3;
    }
  }
}

uint64_t sub_1D630347C(uint64_t *a1, void (*a2)(unsigned __int8 *__return_ptr, uint64_t *, uint64_t *), uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = a1[1];
  swift_retain_n();
  result = sub_1D726449C();
  if (result < v7)
  {
    if (v7 >= -1)
    {
      v9 = result;
      v10 = v7 / 2;
      if (v7 <= 1)
      {
        v11 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1D630B6C8();
        v11 = sub_1D726276C();
        *(v11 + 16) = v10;
      }

      v12[0] = (v11 + 32);
      v12[1] = v10;

      sub_1D6302B94(v12, v13, a1, v9, a2, a3);

      *(v11 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v7 < 0)
  {
    goto LABEL_12;
  }

  if (v7)
  {

    sub_1D62F9048(0, v7, 1, a1, a2, a3);
  }
}

uint64_t sub_1D63035F4(uint64_t *a1, void (*a2)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = a1[1];
  swift_retain_n();
  result = sub_1D726449C();
  if (result < v7)
  {
    if (v7 >= -1)
    {
      v9 = result;
      v10 = v7 / 2;
      if (v7 <= 1)
      {
        v11 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1D5C17CEC(0, &qword_1EDF1ACC0, type metadata accessor for FeedHeadline);
        v11 = sub_1D726276C();
        *(v11 + 16) = v10;
      }

      sub_1D5C17CEC(0, &qword_1EDF1ACC0, type metadata accessor for FeedHeadline);
      v13[0] = v11 + ((*(*(v12 - 8) + 80) + 32) & ~*(*(v12 - 8) + 80));
      v13[1] = v10;

      sub_1D6307ED4(v13, v14, a1, v9, a2, a3, &qword_1EDF1ACC0, type metadata accessor for FeedHeadline, &qword_1EDF1AC80, type metadata accessor for FeedHeadline, &unk_1F51443F8, type metadata accessor for FeedHeadline, &unk_1F5144420, sub_1D62FB160);

      *(v11 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v7 < 0)
  {
    goto LABEL_12;
  }

  if (v7)
  {

    sub_1D62F921C(0, v7, 1, a1, a2, a3);
  }
}

uint64_t sub_1D6303848(void **a1, void (*a2)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a3)
{
  sub_1D5C17CEC(0, &qword_1EDF1ACC0, type metadata accessor for FeedHeadline);
  v7 = *(v6 - 8);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = *a1;
  swift_retain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_1D62FFB58(v9);
  }

  v10 = v9[2];
  v12[0] = v9 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v12[1] = v10;

  sub_1D63035F4(v12, a2, a3);

  *a1 = v9;
}

uint64_t sub_1D630397C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t *, uint64_t, uint64_t *))
{
  v6 = v5;
  v7 = a3;
  v8 = result;
  v9 = a3[1];
  if (v9 < 1)
  {
    v11 = MEMORY[0x1E69E7CC0];
LABEL_90:
    v8 = *v8;
    if (v8)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_120;
      }

      goto LABEL_92;
    }

    goto LABEL_129;
  }

  v10 = 0;
  v11 = MEMORY[0x1E69E7CC0];
  v105 = result;
  while (1)
  {
    v12 = v10;
    v13 = v10 + 1;
    if (v13 >= v9)
    {
      v26 = v13;
    }

    else
    {
      v112 = v9;
      v14 = *v7;
      v15 = (v14 + 16 * v13);
      v16 = *v15;
      v17 = v15[1];
      v18 = (v14 + 16 * v12);
      v19 = *v18;
      v115 = v18[1];
      v116 = v17;

      v20 = a5(v16, &v116, v19, &v115);
      if (v6)
      {
LABEL_101:
      }

      v21 = v12;
      v22 = v20;

      v23 = v21 + 2;
      v108 = v21;
      v24 = 16 * v21;
      v25 = (v14 + 16 * v21 + 40);
      while (1)
      {
        v26 = v112;
        if (v112 == v23)
        {
          break;
        }

        v27 = *(v25 - 1);
        v28 = *v25;
        v29 = *(v25 - 3);
        v115 = *(v25 - 2);
        v116 = v28;

        LODWORD(v29) = a5(v27, &v116, v29, &v115);

        ++v23;
        v25 += 2;
        if ((v22 ^ v29))
        {
          v26 = v23 - 1;
          break;
        }
      }

      v8 = v105;
      v7 = a3;
      if (v22)
      {
        v12 = v108;
        if (v26 < v108)
        {
          goto LABEL_123;
        }

        if (v108 < v26)
        {
          v30 = 0;
          v31 = 16 * v26;
          v32 = v108;
          do
          {
            if (v32 != v26 + v30 - 1)
            {
              v33 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v34 = (v33 + v24);
              v35 = v33 + v31;
              v36 = *v34;
              v37 = v34[1];
              *v34 = *(v35 - 16);
              *(v35 - 16) = v36;
              *(v35 - 8) = v37;
            }

            ++v32;
            --v30;
            v31 -= 16;
            v24 += 16;
          }

          while (v32 < v26 + v30);
        }
      }

      else
      {
        v12 = v108;
      }
    }

    v38 = v7[1];
    if (v26 >= v38)
    {
      goto LABEL_29;
    }

    if (__OFSUB__(v26, v12))
    {
      goto LABEL_119;
    }

    if (v26 - v12 >= a4)
    {
      goto LABEL_29;
    }

    if (__OFADD__(v12, a4))
    {
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
      goto LABEL_126;
    }

    if (v12 + a4 >= v38)
    {
      v39 = v7[1];
    }

    else
    {
      v39 = v12 + a4;
    }

    if (v39 < v12)
    {
      goto LABEL_122;
    }

    if (v26 == v39)
    {
LABEL_29:
      v40 = v26;
      if (v26 < v12)
      {
        goto LABEL_118;
      }
    }

    else
    {
      v88 = *v7;
      v89 = *v7 + 16 * v26;
      v109 = v12;
      v111 = v39;
      v90 = v12 - v26;
      do
      {
        v113 = v26;
        v91 = (v88 + 16 * v26);
        v92 = *v91;
        v93 = v91[1];
        v103 = v90;
        v104 = v89;
        v94 = v89;
        do
        {
          v95 = *(v94 - 2);
          v115 = *(v94 - 1);
          v116 = v93;

          v96 = a5(v92, &v116, v95, &v115);
          if (v6)
          {
            goto LABEL_101;
          }

          v97 = v96;

          if ((v97 & 1) == 0)
          {
            break;
          }

          if (!v88)
          {
            goto LABEL_125;
          }

          v92 = *v94;
          v93 = v94[1];
          *v94 = *(v94 - 1);
          *(v94 - 1) = v93;
          *(v94 - 2) = v92;
          v94 -= 2;
        }

        while (!__CFADD__(v90++, 1));
        v40 = v111;
        v26 = v113 + 1;
        v89 = v104 + 16;
        v90 = v103 - 1;
      }

      while (v113 + 1 != v111);
      v8 = v105;
      v7 = a3;
      v12 = v109;
      if (v111 < v109)
      {
        goto LABEL_118;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D698BA94(0, *(v11 + 2) + 1, 1, v11);
      v11 = result;
    }

    v42 = *(v11 + 2);
    v41 = *(v11 + 3);
    v43 = v42 + 1;
    if (v42 >= v41 >> 1)
    {
      result = sub_1D698BA94((v41 > 1), v42 + 1, 1, v11);
      v11 = result;
    }

    *(v11 + 2) = v43;
    v44 = &v11[16 * v42];
    *(v44 + 4) = v12;
    *(v44 + 5) = v40;
    v45 = *v8;
    if (!*v8)
    {
      goto LABEL_128;
    }

    v110 = v40;
    if (v42)
    {
      break;
    }

LABEL_3:
    v9 = v7[1];
    v10 = v110;
    if (v110 >= v9)
    {
      goto LABEL_90;
    }
  }

  while (1)
  {
    v46 = v43 - 1;
    if (v43 >= 4)
    {
      v51 = &v11[16 * v43 + 32];
      v52 = *(v51 - 64);
      v53 = *(v51 - 56);
      v57 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      if (v57)
      {
        goto LABEL_105;
      }

      v56 = *(v51 - 48);
      v55 = *(v51 - 40);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_106;
      }

      v58 = &v11[16 * v43];
      v60 = *v58;
      v59 = *(v58 + 1);
      v57 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v57)
      {
        goto LABEL_108;
      }

      v57 = __OFADD__(v49, v61);
      v62 = v49 + v61;
      if (v57)
      {
        goto LABEL_111;
      }

      if (v62 >= v54)
      {
        v80 = &v11[16 * v46 + 32];
        v82 = *v80;
        v81 = *(v80 + 1);
        v57 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v57)
        {
          goto LABEL_117;
        }

        if (v49 < v83)
        {
          v46 = v43 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_49;
    }

    if (v43 == 3)
    {
      v47 = *(v11 + 4);
      v48 = *(v11 + 5);
      v57 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      v50 = v57;
LABEL_49:
      if (v50)
      {
        goto LABEL_107;
      }

      v63 = &v11[16 * v43];
      v65 = *v63;
      v64 = *(v63 + 1);
      v66 = __OFSUB__(v64, v65);
      v67 = v64 - v65;
      v68 = v66;
      if (v66)
      {
        goto LABEL_110;
      }

      v69 = &v11[16 * v46 + 32];
      v71 = *v69;
      v70 = *(v69 + 1);
      v57 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v57)
      {
        goto LABEL_113;
      }

      if (__OFADD__(v67, v72))
      {
        goto LABEL_114;
      }

      if (v67 + v72 >= v49)
      {
        if (v49 < v72)
        {
          v46 = v43 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_63;
    }

    v73 = &v11[16 * v43];
    v75 = *v73;
    v74 = *(v73 + 1);
    v57 = __OFSUB__(v74, v75);
    v67 = v74 - v75;
    v68 = v57;
LABEL_63:
    if (v68)
    {
      goto LABEL_109;
    }

    v76 = &v11[16 * v46];
    v78 = *(v76 + 4);
    v77 = *(v76 + 5);
    v57 = __OFSUB__(v77, v78);
    v79 = v77 - v78;
    if (v57)
    {
      goto LABEL_112;
    }

    if (v79 < v67)
    {
      goto LABEL_3;
    }

LABEL_70:
    v84 = v46 - 1;
    if (v46 - 1 >= v43)
    {
      break;
    }

    if (!*v7)
    {
      goto LABEL_124;
    }

    v85 = *&v11[16 * v84 + 32];
    v86 = *&v11[16 * v46 + 40];
    sub_1D62FE870((*v7 + 16 * v85), (*v7 + 16 * *&v11[16 * v46 + 32]), (*v7 + 16 * v86), v45, a5);
    if (v6)
    {
    }

    if (v86 < v85)
    {
      goto LABEL_103;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1D62FF50C(v11);
    }

    if (v84 >= *(v11 + 2))
    {
      goto LABEL_104;
    }

    v87 = &v11[16 * v84];
    *(v87 + 4) = v85;
    *(v87 + 5) = v86;
    v117 = v11;
    result = sub_1D62FF480(v46);
    v11 = v117;
    v43 = *(v117 + 2);
    if (v43 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  result = sub_1D62FF50C(v11);
  v11 = result;
LABEL_92:
  v117 = v11;
  v99 = *(v11 + 2);
  if (v99 < 2)
  {
  }

  while (*v7)
  {
    v100 = *&v11[16 * v99];
    v101 = *&v11[16 * v99 + 24];
    sub_1D62FE870((*v7 + 16 * v100), (*v7 + 16 * *&v11[16 * v99 + 16]), (*v7 + 16 * v101), v8, a5);
    if (v6)
    {
    }

    if (v101 < v100)
    {
      goto LABEL_115;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1D62FF50C(v11);
    }

    if (v99 - 2 >= *(v11 + 2))
    {
      goto LABEL_116;
    }

    v102 = &v11[16 * v99];
    *v102 = v100;
    *(v102 + 1) = v101;
    v117 = v11;
    result = sub_1D62FF480(v99 - 1);
    v11 = v117;
    v99 = *(v117 + 2);
    if (v99 <= 1)
    {
    }
  }

LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
  return result;
}

uint64_t sub_1D6304050(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t *, uint64_t, uint64_t *))
{
  if (a3 != a2)
  {
    v6 = *a4;
    v7 = (*a4 + 16 * a3);
    v8 = result - a3;
LABEL_4:
    v18 = v7;
    v19 = a3;
    v9 = (v6 + 16 * a3);
    v11 = *v9;
    v10 = v9[1];
    v17 = v8;
    while (1)
    {
      v12 = *(v7 - 2);
      v13 = *(v7 - 1);
      v22 = v10;
      v21 = v13;

      v14 = a5(v11, &v22, v12, &v21);

      if (v5)
      {
        break;
      }

      if (v14)
      {
        if (!v6)
        {
          __break(1u);
          return result;
        }

        v11 = *v7;
        v10 = v7[1];
        *v7 = *(v7 - 1);
        *(v7 - 1) = v10;
        *(v7 - 2) = v11;
        v7 -= 2;
        if (!__CFADD__(v8++, 1))
        {
          continue;
        }
      }

      a3 = v19 + 1;
      v7 = v18 + 2;
      v8 = v17 - 1;
      if (v19 + 1 != a2)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_1D6304168(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t *, uint64_t, uint64_t *))
{
  v4 = a1[1];
  result = sub_1D726449C();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      if (v4 <= 1)
      {
        v7 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1D5C17CEC(0, &unk_1EC88EAE0, MEMORY[0x1E69D7608]);
        v7 = sub_1D726276C();
        *(v7 + 16) = v4 / 2;
      }

      v9[0] = v7 + 32;
      v9[1] = v4 / 2;
      v8 = v7;
      sub_1D630397C(v9, v10, a1, v6, a2);
      *(v8 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    return sub_1D6304050(0, v4, 1, a1, a2);
  }

  return result;
}

uint64_t sub_1D63042A0(void **a1, uint64_t (*a2)(uint64_t, uint64_t *, uint64_t, uint64_t *))
{
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1D62FFCC0(v4);
  }

  v5 = v4[2];
  v7[0] = (v4 + 4);
  v7[1] = v5;
  result = sub_1D6304168(v7, a2);
  *a1 = v4;
  return result;
}

uint64_t sub_1D6304324(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, char *, uint64_t, char *), uint64_t a6)
{
  v199 = a6;
  v145 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_93:
    v10 = *v145;
    if (*v145)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_125;
      }

      goto LABEL_95;
    }

    goto LABEL_134;
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  v10 = &type metadata for FeedIssue;
  while (1)
  {
    v11 = v8;
    v12 = v8 + 1;
    if (v8 + 1 >= v7)
    {
      v54 = v8 + 1;
    }

    else
    {
      v149 = v7;
      v13 = *a3;
      v14 = *a3 + 152 * v12;
      v15 = *(v14 + 16);
      v178 = *v14;
      v179 = v15;
      v16 = *(v14 + 32);
      v17 = *(v14 + 48);
      v18 = *(v14 + 80);
      v182 = *(v14 + 64);
      v183 = v18;
      v180 = v16;
      v181 = v17;
      v19 = *(v14 + 96);
      v20 = *(v14 + 112);
      v21 = *(v14 + 128);
      v187 = *(v14 + 144);
      v185 = v20;
      v186 = v21;
      v184 = v19;
      v22 = (v13 + 152 * v11);
      v23 = v22[1];
      v188 = *v22;
      v189 = v23;
      v24 = v22[2];
      v25 = v22[3];
      v26 = v22[5];
      v192 = v22[4];
      v193 = v26;
      v190 = v24;
      v191 = v25;
      v27 = v22[6];
      v28 = v22[7];
      v29 = v22[8];
      v197 = *(v22 + 144);
      v195 = v28;
      v196 = v29;
      v194 = v27;
      v146 = v178;
      v174 = v184;
      v175 = v185;
      v176 = v186;
      v177 = v187;
      v170 = v180;
      v171 = v181;
      v172 = v182;
      v173 = v183;
      v168 = v178;
      v169 = v179;
      v30 = v188;
      v164 = v22[6];
      v165 = v22[7];
      v166 = v22[8];
      v167 = *(v22 + 144);
      v160 = v22[2];
      v161 = v22[3];
      v162 = v22[4];
      v163 = v22[5];
      v158 = *v22;
      v159 = v22[1];
      sub_1D6306E88(&v178, v156, &unk_1EC88EAF0);
      sub_1D6306E88(&v188, v156, &unk_1EC88EAF0);
      v147 = a5(v146, &v168 + 8, v30, &v158 + 8);
      if (v6)
      {
LABEL_104:
        sub_1D6306DB0(&v188, &unk_1EC88EAF0, &type metadata for FeedIssue, sub_1D5C82990);
        sub_1D6306DB0(&v178, &unk_1EC88EAF0, &type metadata for FeedIssue, sub_1D5C82990);
      }

      sub_1D6306DB0(&v188, &unk_1EC88EAF0, &type metadata for FeedIssue, sub_1D5C82990);
      result = sub_1D6306DB0(&v178, &unk_1EC88EAF0, &type metadata for FeedIssue, sub_1D5C82990);
      v31 = v11 + 2;
      if (v11 + 2 >= v149)
      {
        v54 = v11 + 2;
        if (v147)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v141 = v11;
        v32 = v13 + 152 * v11 + 152;
        while (1)
        {
          v33 = v31;
          v34 = *(v32 + 168);
          v158 = *(v32 + 152);
          v159 = v34;
          v35 = *(v32 + 184);
          v36 = *(v32 + 200);
          v37 = *(v32 + 232);
          v162 = *(v32 + 216);
          v163 = v37;
          v160 = v35;
          v161 = v36;
          v38 = *(v32 + 248);
          v39 = *(v32 + 264);
          v40 = *(v32 + 280);
          v167 = *(v32 + 296);
          v165 = v39;
          v166 = v40;
          v164 = v38;
          v41 = *(v32 + 16);
          v168 = *v32;
          v169 = v41;
          v42 = *(v32 + 32);
          v43 = *(v32 + 48);
          v44 = *(v32 + 80);
          v172 = *(v32 + 64);
          v173 = v44;
          v170 = v42;
          v171 = v43;
          v45 = *(v32 + 96);
          v46 = *(v32 + 112);
          v47 = *(v32 + 128);
          v177 = *(v32 + 144);
          v175 = v46;
          v176 = v47;
          v174 = v45;
          v48 = v158;
          v156[6] = v164;
          v156[7] = v165;
          v156[8] = v166;
          v157 = v167;
          v156[2] = v160;
          v156[3] = v161;
          v156[4] = v162;
          v156[5] = v163;
          v156[0] = v158;
          v156[1] = v159;
          v49 = v168;
          v50 = *(v32 + 112);
          v154[6] = *(v32 + 96);
          v154[7] = v50;
          v154[8] = *(v32 + 128);
          v155 = *(v32 + 144);
          v51 = *(v32 + 48);
          v154[2] = *(v32 + 32);
          v154[3] = v51;
          v52 = *(v32 + 80);
          v154[4] = *(v32 + 64);
          v154[5] = v52;
          v53 = *(v32 + 16);
          v154[0] = *v32;
          v154[1] = v53;
          sub_1D6306E88(&v158, v153, &unk_1EC88EAF0);
          sub_1D6306E88(&v168, v153, &unk_1EC88EAF0);
          LODWORD(v48) = a5(v48, v156 + 8, v49, v154 + 8);
          v10 = sub_1D5C82990;
          sub_1D6306DB0(&v168, &unk_1EC88EAF0, &type metadata for FeedIssue, sub_1D5C82990);
          result = sub_1D6306DB0(&v158, &unk_1EC88EAF0, &type metadata for FeedIssue, sub_1D5C82990);
          if ((v147 ^ v48))
          {
            break;
          }

          v31 = v33 + 1;
          v32 += 152;
          v54 = v149;
          if (v149 == v33 + 1)
          {
            v12 = v33;
            goto LABEL_15;
          }
        }

        v54 = v33;
        v12 = v33 - 1;
LABEL_15:
        v11 = v141;
        if (v147)
        {
LABEL_16:
          if (v54 < v11)
          {
            goto LABEL_128;
          }

          if (v11 <= v12)
          {
            v55 = 152 * v54 - 152;
            v10 = 152 * v11;
            v56 = v54;
            v142 = v11;
            do
            {
              if (v11 != --v56)
              {
                v57 = *a3;
                if (!*a3)
                {
                  goto LABEL_132;
                }

                v58 = v57 + v55;
                v174 = *(v57 + v10 + 96);
                v175 = *(v57 + v10 + 112);
                v176 = *(v57 + v10 + 128);
                v177 = *(v57 + v10 + 144);
                v170 = *(v57 + v10 + 32);
                v171 = *(v57 + v10 + 48);
                v172 = *(v57 + v10 + 64);
                v173 = *(v57 + v10 + 80);
                v168 = *(v57 + v10);
                v169 = *(v57 + v10 + 16);
                result = memmove((v57 + v10), (v57 + v55), 0x98uLL);
                *(v58 + 96) = v174;
                *(v58 + 112) = v175;
                *(v58 + 128) = v176;
                *(v58 + 144) = v177;
                *(v58 + 32) = v170;
                *(v58 + 48) = v171;
                *(v58 + 64) = v172;
                *(v58 + 80) = v173;
                *v58 = v168;
                *(v58 + 16) = v169;
              }

              ++v11;
              v55 -= 152;
              v10 += 152;
            }

            while (v11 < v56);
            v11 = v142;
          }
        }
      }
    }

    v59 = a3[1];
    if (v54 >= v59)
    {
      goto LABEL_137;
    }

    if (__OFSUB__(v54, v11))
    {
      goto LABEL_124;
    }

    if (v54 - v11 >= a4)
    {
      goto LABEL_137;
    }

    v60 = v11 + a4;
    if (__OFADD__(v11, a4))
    {
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
      goto LABEL_131;
    }

    if (v60 >= v59)
    {
      v60 = a3[1];
    }

    if (v60 < v11)
    {
      goto LABEL_127;
    }

    if (v54 == v60)
    {
LABEL_137:
      if (v54 < v11)
      {
        goto LABEL_123;
      }
    }

    else
    {
      v148 = *a3;
      v107 = *a3 + 152 * v54 - 152;
      v143 = v11;
      v108 = v11 - v54 + 1;
      v137 = v60;
      do
      {
        v139 = v107;
        v140 = v54;
        v138 = v108;
        v150 = v108;
        for (i = v107; ; i -= 152)
        {
          v110 = (i + 152);
          v111 = *(i + 168);
          v178 = *(i + 152);
          v179 = v111;
          v112 = *(i + 184);
          v113 = *(i + 200);
          v114 = *(i + 232);
          v182 = *(i + 216);
          v183 = v114;
          v180 = v112;
          v181 = v113;
          v115 = *(i + 248);
          v116 = *(i + 264);
          v117 = *(i + 280);
          v187 = *(i + 296);
          v185 = v116;
          v186 = v117;
          v184 = v115;
          v118 = *(i + 16);
          v188 = *i;
          v189 = v118;
          v119 = *(i + 32);
          v120 = *(i + 48);
          v121 = *(i + 80);
          v192 = *(i + 64);
          v193 = v121;
          v190 = v119;
          v191 = v120;
          v122 = *(i + 96);
          v123 = *(i + 112);
          v124 = *(i + 128);
          v197 = *(i + 144);
          v195 = v123;
          v196 = v124;
          v194 = v122;
          v125 = v178;
          v174 = v184;
          v175 = v185;
          v176 = v186;
          v177 = v187;
          v170 = v180;
          v171 = v181;
          v172 = v182;
          v173 = v183;
          v168 = v178;
          v169 = v179;
          v126 = v188;
          v164 = *(i + 96);
          v165 = *(i + 112);
          v166 = *(i + 128);
          v167 = *(i + 144);
          v160 = *(i + 32);
          v161 = *(i + 48);
          v162 = *(i + 64);
          v163 = *(i + 80);
          v158 = *i;
          v159 = *(i + 16);
          sub_1D6306E88(&v178, v156, &unk_1EC88EAF0);
          sub_1D6306E88(&v188, v156, &unk_1EC88EAF0);
          v127 = a5(v125, &v168 + 8, v126, &v158 + 8);
          if (v6)
          {
            goto LABEL_104;
          }

          v128 = v127;
          v10 = sub_1D5C82990;
          sub_1D6306DB0(&v188, &unk_1EC88EAF0, &type metadata for FeedIssue, sub_1D5C82990);
          result = sub_1D6306DB0(&v178, &unk_1EC88EAF0, &type metadata for FeedIssue, sub_1D5C82990);
          if ((v128 & 1) == 0)
          {
            break;
          }

          if (!v148)
          {
            goto LABEL_130;
          }

          v174 = *(i + 248);
          v175 = *(i + 264);
          v176 = *(i + 280);
          v177 = *(i + 296);
          v170 = *(i + 184);
          v171 = *(i + 200);
          v172 = *(i + 216);
          v173 = *(i + 232);
          v168 = *v110;
          v169 = *(i + 168);
          v129 = *(i + 112);
          *(i + 248) = *(i + 96);
          *(i + 264) = v129;
          *(i + 280) = *(i + 128);
          *(i + 296) = *(i + 144);
          v130 = *(i + 48);
          *(i + 184) = *(i + 32);
          *(i + 200) = v130;
          v131 = *(i + 80);
          *(i + 216) = *(i + 64);
          *(i + 232) = v131;
          v132 = *(i + 16);
          *v110 = *i;
          *(i + 168) = v132;
          *(i + 96) = v174;
          *(i + 112) = v175;
          *(i + 128) = v176;
          *(i + 144) = v177;
          *(i + 32) = v170;
          *(i + 48) = v171;
          *(i + 64) = v172;
          *(i + 80) = v173;
          *i = v168;
          *(i + 16) = v169;
          if (!v150)
          {
            break;
          }

          ++v150;
        }

        ++v54;
        v107 = v139 + 152;
        v108 = v138 - 1;
      }

      while (v140 + 1 != v137);
      v54 = v137;
      v11 = v143;
      if (v137 < v143)
      {
        goto LABEL_123;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D698BA94(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v62 = *(v9 + 2);
    v61 = *(v9 + 3);
    v63 = v62 + 1;
    if (v62 >= v61 >> 1)
    {
      result = sub_1D698BA94((v61 > 1), v62 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v63;
    v64 = &v9[16 * v62];
    *(v64 + 4) = v11;
    *(v64 + 5) = v54;
    v65 = *v145;
    if (!*v145)
    {
      goto LABEL_133;
    }

    if (v62)
    {
      break;
    }

LABEL_3:
    v7 = a3[1];
    v8 = v54;
    v10 = &type metadata for FeedIssue;
    if (v54 >= v7)
    {
      goto LABEL_93;
    }
  }

  while (1)
  {
    v10 = v63 - 1;
    if (v63 >= 4)
    {
      v70 = &v9[16 * v63 + 32];
      v71 = *(v70 - 64);
      v72 = *(v70 - 56);
      v76 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      if (v76)
      {
        goto LABEL_110;
      }

      v75 = *(v70 - 48);
      v74 = *(v70 - 40);
      v76 = __OFSUB__(v74, v75);
      v68 = v74 - v75;
      v69 = v76;
      if (v76)
      {
        goto LABEL_111;
      }

      v77 = &v9[16 * v63];
      v79 = *v77;
      v78 = *(v77 + 1);
      v76 = __OFSUB__(v78, v79);
      v80 = v78 - v79;
      if (v76)
      {
        goto LABEL_113;
      }

      v76 = __OFADD__(v68, v80);
      v81 = v68 + v80;
      if (v76)
      {
        goto LABEL_116;
      }

      if (v81 >= v73)
      {
        v99 = &v9[16 * v10 + 32];
        v101 = *v99;
        v100 = *(v99 + 1);
        v76 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v76)
        {
          goto LABEL_122;
        }

        if (v68 < v102)
        {
          v10 = v63 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

    if (v63 == 3)
    {
      v66 = *(v9 + 4);
      v67 = *(v9 + 5);
      v76 = __OFSUB__(v67, v66);
      v68 = v67 - v66;
      v69 = v76;
LABEL_52:
      if (v69)
      {
        goto LABEL_112;
      }

      v82 = &v9[16 * v63];
      v84 = *v82;
      v83 = *(v82 + 1);
      v85 = __OFSUB__(v83, v84);
      v86 = v83 - v84;
      v87 = v85;
      if (v85)
      {
        goto LABEL_115;
      }

      v88 = &v9[16 * v10 + 32];
      v90 = *v88;
      v89 = *(v88 + 1);
      v76 = __OFSUB__(v89, v90);
      v91 = v89 - v90;
      if (v76)
      {
        goto LABEL_118;
      }

      if (__OFADD__(v86, v91))
      {
        goto LABEL_119;
      }

      if (v86 + v91 >= v68)
      {
        if (v68 < v91)
        {
          v10 = v63 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_66;
    }

    v92 = &v9[16 * v63];
    v94 = *v92;
    v93 = *(v92 + 1);
    v76 = __OFSUB__(v93, v94);
    v86 = v93 - v94;
    v87 = v76;
LABEL_66:
    if (v87)
    {
      goto LABEL_114;
    }

    v95 = &v9[16 * v10];
    v97 = *(v95 + 4);
    v96 = *(v95 + 5);
    v76 = __OFSUB__(v96, v97);
    v98 = v96 - v97;
    if (v76)
    {
      goto LABEL_117;
    }

    if (v98 < v86)
    {
      goto LABEL_3;
    }

LABEL_73:
    v103 = v10 - 1;
    if (v10 - 1 >= v63)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_129;
    }

    v104 = *&v9[16 * v103 + 32];
    v105 = *&v9[16 * v10 + 40];
    sub_1D62FB7F4((*a3 + 152 * v104), (*a3 + 152 * *&v9[16 * v10 + 32]), (*a3 + 152 * v105), v65, a5);
    if (v6)
    {
    }

    if (v105 < v104)
    {
      goto LABEL_108;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1D62FF50C(v9);
    }

    if (v103 >= *(v9 + 2))
    {
      goto LABEL_109;
    }

    v106 = &v9[16 * v103];
    *(v106 + 4) = v104;
    *(v106 + 5) = v105;
    v198 = v9;
    result = sub_1D62FF480(v10);
    v9 = v198;
    v63 = *(v198 + 2);
    if (v63 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
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
  result = sub_1D62FF50C(v9);
  v9 = result;
LABEL_95:
  v198 = v9;
  v133 = *(v9 + 2);
  if (v133 < 2)
  {
  }

  while (*a3)
  {
    v134 = *&v9[16 * v133];
    v135 = *&v9[16 * v133 + 24];
    sub_1D62FB7F4((*a3 + 152 * v134), (*a3 + 152 * *&v9[16 * v133 + 16]), (*a3 + 152 * v135), v10, a5);
    if (v6)
    {
    }

    if (v135 < v134)
    {
      goto LABEL_120;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1D62FF50C(v9);
    }

    if (v133 - 2 >= *(v9 + 2))
    {
      goto LABEL_121;
    }

    v136 = &v9[16 * v133];
    *v136 = v134;
    *(v136 + 1) = v135;
    v198 = v9;
    result = sub_1D62FF480(v133 - 1);
    v9 = v198;
    v133 = *(v198 + 2);
    if (v133 <= 1)
    {
    }
  }

LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_1D6304FFC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(uint64_t, char *, uint64_t, char *))
{
  if (a3 != a2)
  {
    v46 = *a4;
    v6 = *a4 + 152 * a3 - 152;
    v7 = result - a3 + 1;
LABEL_5:
    v45 = a3;
    v73 = v7;
    v44 = v6;
    while (1)
    {
      v8 = (v6 + 152);
      v9 = *(v6 + 168);
      v61 = *(v6 + 152);
      v62 = v9;
      v10 = *(v6 + 184);
      v11 = *(v6 + 200);
      v12 = *(v6 + 232);
      v65 = *(v6 + 216);
      v66 = v12;
      v63 = v10;
      v64 = v11;
      v13 = *(v6 + 248);
      v14 = *(v6 + 264);
      v15 = *(v6 + 280);
      v70 = *(v6 + 296);
      v68 = v14;
      v69 = v15;
      v67 = v13;
      v16 = *(v6 + 16);
      v71[0] = *v6;
      v71[1] = v16;
      v17 = *(v6 + 32);
      v18 = *(v6 + 48);
      v19 = *(v6 + 80);
      v71[4] = *(v6 + 64);
      v71[5] = v19;
      v71[2] = v17;
      v71[3] = v18;
      v20 = *(v6 + 96);
      v21 = *(v6 + 112);
      v22 = *(v6 + 128);
      v72 = *(v6 + 144);
      v71[7] = v21;
      v71[8] = v22;
      v71[6] = v20;
      v23 = v61;
      v57 = v67;
      v58 = v68;
      v59 = v69;
      v60 = v70;
      v53 = v63;
      v54 = v64;
      v55 = v65;
      v56 = v66;
      v51 = v61;
      v52 = v62;
      v24 = *&v71[0];
      v25 = *(v6 + 112);
      v49[6] = *(v6 + 96);
      v49[7] = v25;
      v49[8] = *(v6 + 128);
      v50 = *(v6 + 144);
      v26 = *(v6 + 48);
      v49[2] = *(v6 + 32);
      v49[3] = v26;
      v27 = *(v6 + 80);
      v49[4] = *(v6 + 64);
      v49[5] = v27;
      v28 = *(v6 + 16);
      v49[0] = *v6;
      v49[1] = v28;
      sub_1D6306E88(&v61, v48, &unk_1EC88EAF0);
      sub_1D6306E88(v71, v48, &unk_1EC88EAF0);
      v29 = a5(v23, &v51 + 8, v24, v49 + 8);
      sub_1D6306DB0(v71, &unk_1EC88EAF0, &type metadata for FeedIssue, sub_1D5C82990);
      result = sub_1D6306DB0(&v61, &unk_1EC88EAF0, &type metadata for FeedIssue, sub_1D5C82990);
      if (v5)
      {
        break;
      }

      v30 = v73;
      if ((v29 & 1) == 0)
      {
        goto LABEL_4;
      }

      if (!v46)
      {
        __break(1u);
        return result;
      }

      v31 = *(v6 + 264);
      v57 = *(v6 + 248);
      v58 = v31;
      v59 = *(v6 + 280);
      v60 = *(v6 + 296);
      v32 = *(v6 + 200);
      v53 = *(v6 + 184);
      v54 = v32;
      v33 = *(v6 + 232);
      v55 = *(v6 + 216);
      v56 = v33;
      v34 = *(v6 + 168);
      v51 = *v8;
      v52 = v34;
      v35 = *(v6 + 112);
      *(v6 + 248) = *(v6 + 96);
      *(v6 + 264) = v35;
      *(v6 + 280) = *(v6 + 128);
      *(v6 + 296) = *(v6 + 144);
      v36 = *(v6 + 48);
      *(v6 + 184) = *(v6 + 32);
      *(v6 + 200) = v36;
      v37 = *(v6 + 80);
      *(v6 + 216) = *(v6 + 64);
      *(v6 + 232) = v37;
      v38 = *(v6 + 16);
      *v8 = *v6;
      *(v6 + 168) = v38;
      v39 = v58;
      *(v6 + 96) = v57;
      *(v6 + 112) = v39;
      *(v6 + 128) = v59;
      *(v6 + 144) = v60;
      v40 = v54;
      *(v6 + 32) = v53;
      *(v6 + 48) = v40;
      v41 = v56;
      *(v6 + 64) = v55;
      *(v6 + 80) = v41;
      v42 = v52;
      *v6 = v51;
      *(v6 + 16) = v42;
      if (!v30)
      {
LABEL_4:
        a3 = v45 + 1;
        v6 = v44 + 152;
        --v7;
        if (v45 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      v6 -= 152;
      v73 = v30 + 1;
    }
  }

  return result;
}

uint64_t sub_1D63052E0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, void (*a6)(void *, _BYTE *, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a7)(void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v12 = *(a1 + 8);
  result = sub_1D726449C();
  if (result < v12)
  {
    if (v12 >= -1)
    {
      v14 = result;
      if (v12 <= 1)
      {
        v15 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1D5C82990(0, a4);
        v15 = sub_1D726276C();
        *(v15 + 16) = v12 / 2;
      }

      v17[0] = v15 + 32;
      v17[1] = v12 / 2;
      a6(v17, v18, a1, v14, a2, a3);
      *(v15 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v12 < 0)
  {
    goto LABEL_12;
  }

  if (v12)
  {
    return a7(0, v12, 1, a1, a2, a3);
  }

  return result;
}

uint64_t sub_1D6305428(void **a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_1D62FFBBC(v6);
  }

  v7 = v6[2];
  v9[0] = v6 + 4;
  v9[1] = v7;
  result = sub_1D63052E0(v9, a2, a3, &unk_1EC88EAF0, &type metadata for FeedIssue, sub_1D6304324, sub_1D6304FFC);
  *a1 = v6;
  return result;
}

uint64_t sub_1D63054E4(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, void (*a5)(unsigned __int8 *__return_ptr, uint64_t *, uint64_t *), uint64_t a6)
{
  v7 = v6;
  v12 = __dst;
  v13 = swift_allocObject();
  v120 = a5;
  *(v13 + 16) = a5;
  *(v13 + 24) = a6;
  v112 = a3;
  v14 = a3[1];
  v114 = a6;
  if (v14 < 1)
  {
    swift_retain_n();
    v16 = MEMORY[0x1E69E7CC0];
LABEL_93:
    v113 = *a1;
    if (!*a1)
    {
      goto LABEL_132;
    }

    v93 = swift_allocObject();
    *(v93 + 16) = v120;
    *(v93 + 24) = a6;
    swift_retain_n();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_95:
      v94 = v7;
      *(v12 + 37) = v16;
      v95 = *(v16 + 16);
      if (v95 < 2)
      {
LABEL_103:
      }

      while (1)
      {
        v96 = *v112;
        if (!*v112)
        {
          goto LABEL_130;
        }

        v12 = v16;
        v16 = v95 - 1;
        v7 = *&v12[16 * v95];
        v97 = *&v12[16 * v95 + 24];
        v98 = (v96 + 296 * v7);
        v99 = (v96 + 296 * *&v12[16 * v95 + 16]);
        v100 = (v96 + 296 * v97);

        sub_1D62FEC58(v98, v99, v100, v113, v120, v114);
        if (v94)
        {
        }

        if (v97 < v7)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_1D62FF50C(v12);
        }

        if (v95 - 2 >= *(v12 + 2))
        {
          goto LABEL_120;
        }

        v101 = &v12[16 * v95];
        *v101 = v7;
        *(v101 + 1) = v97;
        v119 = v12;
        sub_1D62FF480(v95 - 1);
        v16 = v119;
        v95 = *(v119 + 2);
        if (v95 <= 1)
        {
          goto LABEL_103;
        }
      }
    }

LABEL_126:
    v16 = sub_1D62FF50C(v16);
    goto LABEL_95;
  }

  v102 = a4;
  swift_retain_n();
  v15 = 0;
  v16 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v17 = v15;
    v18 = v15 + 1;
    v106 = v17;
    if (v18 >= v14)
    {
      v25 = v18;
    }

    else
    {
      v113 = v14;
      v103 = v16;
      v19 = (*v112 + 296 * v18);
      v16 = 296 * v17;
      v20 = v17;
      v21 = (*v112 + 296 * v17);
      v22 = *v21;
      __dst[0] = *v19;
      v12 = __dst;
      sub_1D5F76E40((v19 + 1), &__dst[1]);
      v116 = v22;
      sub_1D5F76E40((v21 + 1), v117);
      v120(&v115, __dst, &v116);
      sub_1D6306DB0(&v116, &unk_1EC885958, &type metadata for FeedCatalogItem, sub_1D630B5A4);
      sub_1D6306DB0(__dst, &unk_1EC885958, &type metadata for FeedCatalogItem, sub_1D630B5A4);
      v110 = v115;
      v23 = v20 + 2;
      v24 = (v21 + 75);
      while (1)
      {
        v25 = v14;
        if (v14 == v23)
        {
          break;
        }

        v26 = *(v24 - 304);
        __dst[0] = *(v24 - 8);
        v12 = __dst;
        sub_1D5F76E40(v24, &__dst[1]);
        v116 = v26;
        sub_1D5F76E40(v24 - 296, v117);
        v120(&v115, __dst, &v116);
        sub_1D6306DB0(&v116, &unk_1EC885958, &type metadata for FeedCatalogItem, sub_1D630B5A4);
        sub_1D6306DB0(__dst, &unk_1EC885958, &type metadata for FeedCatalogItem, sub_1D630B5A4);
        ++v23;
        v24 += 296;
        if (v110 != v115)
        {
          v25 = v23 - 1;
          break;
        }
      }

      v17 = v106;
      if (!v110)
      {
        goto LABEL_19;
      }

      if (v25 < v106)
      {
        goto LABEL_123;
      }

      if (v106 < v25)
      {
        v27 = 296 * v25 - 296;
        v28 = v25;
        do
        {
          if (v17 != --v28)
          {
            v29 = *v112;
            if (!*v112)
            {
              goto LABEL_129;
            }

            memcpy(__dst, (v29 + v16), 0x122uLL);
            memmove((v29 + v16), (v29 + v27), 0x128uLL);
            memcpy((v29 + v27), __dst, 0x122uLL);
          }

          ++v17;
          v27 -= 296;
          v16 += 296;
        }

        while (v17 < v28);
        v16 = v103;
        v17 = v106;
      }

      else
      {
LABEL_19:
        v16 = v103;
      }
    }

    v30 = v112[1];
    if (v25 >= v30)
    {
      goto LABEL_30;
    }

    if (__OFSUB__(v25, v17))
    {
      goto LABEL_122;
    }

    if (v25 - v17 >= v102)
    {
      goto LABEL_30;
    }

    if (__OFADD__(v17, v102))
    {
      goto LABEL_124;
    }

    if (v17 + v102 >= v30)
    {
      v31 = v112[1];
    }

    else
    {
      v31 = (v17 + v102);
    }

    if (v31 < v17)
    {
      goto LABEL_125;
    }

    if (v25 == v31)
    {
LABEL_30:
      v32 = v25;
    }

    else
    {
      v104 = v16;
      v83 = *v112;
      v84 = *v112 + 296 * v25 + 8;
      v85 = v106 - v25;
      v108 = v31;
      do
      {
        v113 = v25;
        v109 = v85;
        v111 = v84;
        v86 = v85;
        do
        {
          v87 = (v84 - 8);
          v88 = (v84 - 304);
          v89 = *(v84 - 304);
          v90 = v84 - 296;
          __dst[0] = *(v84 - 8);
          v12 = __dst;
          sub_1D5F76E40(v84, &__dst[1]);
          v116 = v89;
          sub_1D5F76E40(v90, v117);
          v120(&v115, __dst, &v116);
          sub_1D6306DB0(&v116, &unk_1EC885958, &type metadata for FeedCatalogItem, sub_1D630B5A4);
          sub_1D6306DB0(__dst, &unk_1EC885958, &type metadata for FeedCatalogItem, sub_1D630B5A4);
          if (v115 != 1)
          {
            break;
          }

          if (!v83)
          {

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
            return result;
          }

          memcpy(__dst, v87, 0x122uLL);
          memcpy(v87, v88, 0x128uLL);
          memcpy(v88, __dst, 0x122uLL);
          v84 = v90;
        }

        while (!__CFADD__(v86++, 1));
        v25 = (v113 + 1);
        v84 = v111 + 296;
        v85 = v109 - 1;
        v32 = v108;
      }

      while (v113 + 1 != v108);
      a6 = v114;
      v16 = v104;
    }

    if (v32 < v106)
    {
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
      goto LABEL_126;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_1D698BA94(0, *(v16 + 16) + 1, 1, v16);
    }

    v34 = *(v16 + 16);
    v33 = *(v16 + 24);
    v35 = v34 + 1;
    if (v34 >= v33 >> 1)
    {
      v16 = sub_1D698BA94((v33 > 1), v34 + 1, 1, v16);
    }

    *(v16 + 16) = v35;
    v36 = v16 + 16 * v34;
    *(v36 + 32) = v106;
    *(v36 + 40) = v32;
    v107 = v32;
    v113 = *a1;
    if (!*a1)
    {
      goto LABEL_131;
    }

    if (v34)
    {
      break;
    }

LABEL_3:
    v14 = v112[1];
    v15 = v107;
    if (v107 >= v14)
    {
      goto LABEL_93;
    }
  }

  while (1)
  {
    v37 = v35 - 1;
    if (v35 >= 4)
    {
      v42 = v16 + 32 + 16 * v35;
      v43 = *(v42 - 64);
      v44 = *(v42 - 56);
      v48 = __OFSUB__(v44, v43);
      v45 = v44 - v43;
      if (v48)
      {
        goto LABEL_108;
      }

      v47 = *(v42 - 48);
      v46 = *(v42 - 40);
      v48 = __OFSUB__(v46, v47);
      v40 = v46 - v47;
      v41 = v48;
      if (v48)
      {
        goto LABEL_109;
      }

      v49 = (v16 + 16 * v35);
      v51 = *v49;
      v50 = v49[1];
      v48 = __OFSUB__(v50, v51);
      v52 = v50 - v51;
      if (v48)
      {
        goto LABEL_111;
      }

      v48 = __OFADD__(v40, v52);
      v53 = v40 + v52;
      if (v48)
      {
        goto LABEL_114;
      }

      if (v53 >= v45)
      {
        v71 = (v16 + 32 + 16 * v37);
        v73 = *v71;
        v72 = v71[1];
        v48 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v48)
        {
          goto LABEL_118;
        }

        if (v40 < v74)
        {
          v37 = v35 - 2;
        }

        goto LABEL_72;
      }

      goto LABEL_51;
    }

    if (v35 == 3)
    {
      v38 = *(v16 + 32);
      v39 = *(v16 + 40);
      v48 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      v41 = v48;
LABEL_51:
      if (v41)
      {
        goto LABEL_110;
      }

      v54 = (v16 + 16 * v35);
      v56 = *v54;
      v55 = v54[1];
      v57 = __OFSUB__(v55, v56);
      v58 = v55 - v56;
      v59 = v57;
      if (v57)
      {
        goto LABEL_113;
      }

      v60 = (v16 + 32 + 16 * v37);
      v62 = *v60;
      v61 = v60[1];
      v48 = __OFSUB__(v61, v62);
      v63 = v61 - v62;
      if (v48)
      {
        goto LABEL_116;
      }

      if (__OFADD__(v58, v63))
      {
        goto LABEL_117;
      }

      if (v58 + v63 >= v40)
      {
        if (v40 < v63)
        {
          v37 = v35 - 2;
        }

        goto LABEL_72;
      }

      goto LABEL_65;
    }

    v64 = (v16 + 16 * v35);
    v66 = *v64;
    v65 = v64[1];
    v48 = __OFSUB__(v65, v66);
    v58 = v65 - v66;
    v59 = v48;
LABEL_65:
    if (v59)
    {
      goto LABEL_112;
    }

    v67 = v16 + 16 * v37;
    v69 = *(v67 + 32);
    v68 = *(v67 + 40);
    v48 = __OFSUB__(v68, v69);
    v70 = v68 - v69;
    if (v48)
    {
      goto LABEL_115;
    }

    if (v70 < v58)
    {
      goto LABEL_3;
    }

LABEL_72:
    v75 = v37 - 1;
    if (v37 - 1 >= v35)
    {
      __break(1u);
LABEL_106:
      __break(1u);
LABEL_107:
      __break(1u);
LABEL_108:
      __break(1u);
LABEL_109:
      __break(1u);
LABEL_110:
      __break(1u);
LABEL_111:
      __break(1u);
LABEL_112:
      __break(1u);
LABEL_113:
      __break(1u);
LABEL_114:
      __break(1u);
LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
LABEL_117:
      __break(1u);
LABEL_118:
      __break(1u);
LABEL_119:
      __break(1u);
LABEL_120:
      __break(1u);
      goto LABEL_121;
    }

    v76 = *v112;
    if (!*v112)
    {
      goto LABEL_128;
    }

    v12 = v16;
    v77 = *(v16 + 32 + 16 * v75);
    v78 = *(v16 + 32 + 16 * v37 + 8);
    v79 = (v76 + 296 * v77);
    v80 = (v76 + 296 * *(v16 + 32 + 16 * v37));
    v81 = (v76 + 296 * v78);
    v16 = v114;

    sub_1D62FEC58(v79, v80, v81, v113, v120, v114);
    if (v7)
    {
      break;
    }

    if (v78 < v77)
    {
      goto LABEL_106;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1D62FF50C(v12);
    }

    if (v75 >= *(v12 + 2))
    {
      goto LABEL_107;
    }

    v82 = &v12[16 * v75];
    *(v82 + 4) = v77;
    *(v82 + 5) = v78;
    v119 = v12;
    sub_1D62FF480(v37);
    v12 = __dst;
    v16 = v119;
    v35 = *(v119 + 2);
    a6 = v114;
    if (v35 <= 1)
    {
      goto LABEL_3;
    }
  }
}

uint64_t sub_1D6305E9C(uint64_t *a1, void (*a2)(unsigned __int8 *__return_ptr, uint64_t *, uint64_t *), uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = a1[1];
  swift_retain_n();
  result = sub_1D726449C();
  if (result < v7)
  {
    if (v7 >= -1)
    {
      v9 = result;
      v10 = v7 / 2;
      if (v7 <= 1)
      {
        v11 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1D5C82990(0, &qword_1EC885950);
        v11 = sub_1D726276C();
        *(v11 + 16) = v10;
      }

      v12[0] = (v11 + 32);
      v12[1] = v10;

      sub_1D63054E4(v12, v13, a1, v9, a2, a3);

      *(v11 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v7 < 0)
  {
    goto LABEL_12;
  }

  if (v7)
  {

    sub_1D62FA924(0, v7, 1, a1, a2, a3);
  }
}

uint64_t sub_1D6306024(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), void (*a6)(void *, uint64_t, uint64_t))
{
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  v12 = *a1;
  swift_retain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v12 = a5(v12);
  }

  v13 = *(v12 + 16);
  v15[0] = v12 + 32;
  v15[1] = v13;

  a6(v15, a2, a3);

  *a1 = v12;
}

uint64_t sub_1D630610C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, void (*a5)(unsigned __int8 *__return_ptr, uint64_t *, uint64_t *), uint64_t a6)
{
  v7 = v6;
  v12 = swift_allocObject();
  v135 = a5;
  *(v12 + 16) = a5;
  *(v12 + 24) = a6;
  v116 = a3;
  v117 = a6;
  v13 = a3[1];
  if (v13 < 1)
  {
    swift_retain_n();
    v15 = MEMORY[0x1E69E7CC0];
LABEL_92:
    v118 = *a1;
    if (!*a1)
    {
      goto LABEL_132;
    }

    v95 = swift_allocObject();
    *(v95 + 16) = v135;
    *(v95 + 24) = a6;
    swift_retain_n();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_126:
      v15 = sub_1D62FF50C(v15);
    }

    v134 = v15;
    v96 = *(v15 + 16);
    if (v96 >= 2)
    {
      do
      {
        v97 = *v116;
        if (!*v116)
        {
          goto LABEL_130;
        }

        v98 = v7;
        v99 = *(v15 + 16 * v96);
        v100 = v15;
        v101 = *(v15 + 16 * (v96 - 1) + 40);
        v102 = (v97 + 160 * v99);
        v103 = (v97 + 160 * *(v15 + 16 * (v96 - 1) + 32));
        v104 = (v97 + 160 * v101);
        v15 = v117;

        sub_1D62FF078(v102, v103, v104, v118, v135, v117);
        v7 = v98;
        if (v98)
        {
        }

        if (v101 < v99)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v100 = sub_1D62FF50C(v100);
        }

        if (v96 - 2 >= *(v100 + 2))
        {
          goto LABEL_120;
        }

        v105 = &v100[16 * v96];
        *v105 = v99;
        *(v105 + 1) = v101;
        v134 = v100;
        sub_1D62FF480(v96 - 1);
        v15 = v134;
        v96 = *(v134 + 16);
      }

      while (v96 > 1);
    }
  }

  swift_retain_n();
  v14 = 0;
  v15 = MEMORY[0x1E69E7CC0];
  v109 = a4;
  while (1)
  {
    v16 = v14;
    v17 = v14 + 1;
    if (v17 >= v13)
    {
      v13 = v17;
    }

    else
    {
      v118 = v15;
      v18 = (*v116 + 160 * v17);
      v15 = 160 * v16;
      v19 = (*v116 + 160 * v16);
      v20 = *v19;
      *&v124 = *v18;
      sub_1D5F76D3C((v18 + 1), &v124 + 8);
      v122 = v20;
      sub_1D5F76D3C((v19 + 1), v123);
      v135(&v121, &v124, &v122);
      sub_1D6306DB0(&v122, &unk_1EC885938, &type metadata for FeedCategory, sub_1D630B5A4);
      sub_1D6306DB0(&v124, &unk_1EC885938, &type metadata for FeedCategory, sub_1D630B5A4);
      v21 = v121;
      v108 = v16;
      v22 = v16 + 2;
      v23 = (v19 + 41);
      while (v13 != v22)
      {
        v24 = *(v23 - 168);
        *&v124 = *(v23 - 8);
        sub_1D5F76D3C(v23, &v124 + 8);
        v122 = v24;
        sub_1D5F76D3C(v23 - 160, v123);
        v135(&v121, &v124, &v122);
        sub_1D6306DB0(&v122, &unk_1EC885938, &type metadata for FeedCategory, sub_1D630B5A4);
        sub_1D6306DB0(&v124, &unk_1EC885938, &type metadata for FeedCategory, sub_1D630B5A4);
        ++v22;
        v23 += 160;
        if (v21 != v121)
        {
          v13 = v22 - 1;
          goto LABEL_9;
        }
      }

      v16 = v108;
      if (!v21)
      {
        goto LABEL_19;
      }

LABEL_9:
      if (v13 < v108)
      {
        goto LABEL_123;
      }

      if (v108 < v13)
      {
        v25 = 160 * v13 - 160;
        v26 = v13;
        do
        {
          if (v16 != --v26)
          {
            v28 = *v116;
            if (!*v116)
            {
              goto LABEL_129;
            }

            v27 = (v28 + v25);
            v130 = *(v28 + v15 + 96);
            v131 = *(v28 + v15 + 112);
            v132 = *(v28 + v15 + 128);
            v133 = *(v28 + v15 + 144);
            v126 = *(v28 + v15 + 32);
            v127 = *(v28 + v15 + 48);
            v128 = *(v28 + v15 + 64);
            v129 = *(v28 + v15 + 80);
            v124 = *(v28 + v15);
            v125 = *(v28 + v15 + 16);
            memmove((v28 + v15), (v28 + v25), 0xA0uLL);
            v27[6] = v130;
            v27[7] = v131;
            v27[8] = v132;
            v27[9] = v133;
            v27[2] = v126;
            v27[3] = v127;
            v27[4] = v128;
            v27[5] = v129;
            *v27 = v124;
            v27[1] = v125;
          }

          ++v16;
          v25 -= 160;
          v15 += 160;
        }

        while (v16 < v26);
        v15 = v118;
        v16 = v108;
        a4 = v109;
      }

      else
      {
LABEL_19:
        v15 = v118;
        a4 = v109;
      }
    }

    v29 = v116[1];
    if (v13 < v29)
    {
      if (__OFSUB__(v13, v16))
      {
        goto LABEL_122;
      }

      if (v13 - v16 < a4)
      {
        if (__OFADD__(v16, a4))
        {
          goto LABEL_124;
        }

        if (v16 + a4 >= v29)
        {
          v30 = v116[1];
        }

        else
        {
          v30 = v16 + a4;
        }

        if (v30 < v16)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v13 != v30)
        {
          break;
        }
      }
    }

    v31 = v13;
    if (v13 < v16)
    {
      goto LABEL_121;
    }

LABEL_31:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_1D698BA94(0, *(v15 + 16) + 1, 1, v15);
    }

    v32 = v15;
    v15 = *(v15 + 16);
    v118 = v32;
    v33 = *(v32 + 24);
    v34 = v15 + 1;
    if (v15 >= v33 >> 1)
    {
      v118 = sub_1D698BA94((v33 > 1), v15 + 1, 1, v118);
    }

    *(v118 + 2) = v34;
    v35 = &v118[16 * v15];
    *(v35 + 4) = v16;
    *(v35 + 5) = v31;
    v111 = v31;
    v119 = *a1;
    if (!*a1)
    {
      goto LABEL_131;
    }

    if (v15)
    {
      while (1)
      {
        v36 = v34 - 1;
        if (v34 >= 4)
        {
          break;
        }

        v37 = v118;
        if (v34 == 3)
        {
          v38 = *(v118 + 4);
          v39 = *(v118 + 5);
          v48 = __OFSUB__(v39, v38);
          v40 = v39 - v38;
          v41 = v48;
LABEL_50:
          if (v41)
          {
            goto LABEL_110;
          }

          v54 = &v37[16 * v34];
          v56 = *v54;
          v55 = *(v54 + 1);
          v57 = __OFSUB__(v55, v56);
          v58 = v55 - v56;
          v59 = v57;
          if (v57)
          {
            goto LABEL_113;
          }

          v60 = &v37[16 * v36 + 32];
          v62 = *v60;
          v61 = *(v60 + 1);
          v48 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v48)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v58, v63))
          {
            goto LABEL_117;
          }

          if (v58 + v63 >= v40)
          {
            if (v40 < v63)
            {
              v36 = v34 - 2;
            }

            goto LABEL_71;
          }

          goto LABEL_64;
        }

        v64 = &v118[16 * v34];
        v66 = *v64;
        v65 = *(v64 + 1);
        v48 = __OFSUB__(v65, v66);
        v58 = v65 - v66;
        v59 = v48;
LABEL_64:
        if (v59)
        {
          goto LABEL_112;
        }

        v67 = &v37[16 * v36];
        v69 = *(v67 + 4);
        v68 = *(v67 + 5);
        v48 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v48)
        {
          goto LABEL_115;
        }

        if (v70 < v58)
        {
          goto LABEL_3;
        }

LABEL_71:
        v75 = v36 - 1;
        if (v36 - 1 >= v34)
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
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
          goto LABEL_125;
        }

        v76 = *v116;
        if (!*v116)
        {
          goto LABEL_128;
        }

        v77 = *&v37[16 * v75 + 32];
        v78 = *&v37[16 * v36 + 40];
        v79 = (v76 + 160 * v77);
        v80 = (v76 + 160 * *&v37[16 * v36 + 32]);
        v15 = v76 + 160 * v78;

        sub_1D62FF078(v79, v80, v15, v119, v135, v117);
        if (v7)
        {
        }

        if (v78 < v77)
        {
          goto LABEL_106;
        }

        v81 = v118;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v81 = sub_1D62FF50C(v118);
        }

        if (v75 >= *(v81 + 2))
        {
          goto LABEL_107;
        }

        v82 = &v81[16 * v75];
        *(v82 + 4) = v77;
        *(v82 + 5) = v78;
        v134 = v81;
        sub_1D62FF480(v36);
        v118 = v134;
        v34 = *(v134 + 16);
        if (v34 <= 1)
        {
          goto LABEL_3;
        }
      }

      v37 = v118;
      v42 = &v118[16 * v34 + 32];
      v43 = *(v42 - 64);
      v44 = *(v42 - 56);
      v48 = __OFSUB__(v44, v43);
      v45 = v44 - v43;
      if (v48)
      {
        goto LABEL_108;
      }

      v47 = *(v42 - 48);
      v46 = *(v42 - 40);
      v48 = __OFSUB__(v46, v47);
      v40 = v46 - v47;
      v41 = v48;
      if (v48)
      {
        goto LABEL_109;
      }

      v49 = &v118[16 * v34];
      v51 = *v49;
      v50 = *(v49 + 1);
      v48 = __OFSUB__(v50, v51);
      v52 = v50 - v51;
      if (v48)
      {
        goto LABEL_111;
      }

      v48 = __OFADD__(v40, v52);
      v53 = v40 + v52;
      if (v48)
      {
        goto LABEL_114;
      }

      if (v53 >= v45)
      {
        v71 = &v118[16 * v36 + 32];
        v73 = *v71;
        v72 = *(v71 + 1);
        v48 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v48)
        {
          goto LABEL_118;
        }

        if (v40 < v74)
        {
          v36 = v34 - 2;
        }

        goto LABEL_71;
      }

      goto LABEL_50;
    }

LABEL_3:
    a6 = v117;
    v13 = v116[1];
    v14 = v111;
    v15 = v118;
    a4 = v109;
    if (v111 >= v13)
    {
      goto LABEL_92;
    }
  }

  v107 = v7;
  v118 = v15;
  v120 = *v116;
  v83 = *v116 + 160 * v13 + 8;
  v84 = v16 - v13;
  v112 = v30;
LABEL_82:
  v114 = v83;
  v115 = v13;
  v113 = v84;
  while (1)
  {
    v85 = (v83 - 8);
    v87 = (v83 - 168);
    v86 = *(v83 - 168);
    v88 = v83 - 160;
    *&v124 = *(v83 - 8);
    sub_1D5F76D3C(v83, &v124 + 8);
    v122 = v86;
    sub_1D5F76D3C(v88, v123);
    v135(&v121, &v124, &v122);
    sub_1D6306DB0(&v122, &unk_1EC885938, &type metadata for FeedCategory, sub_1D630B5A4);
    sub_1D6306DB0(&v124, &unk_1EC885938, &type metadata for FeedCategory, sub_1D630B5A4);
    if (v121 != 1)
    {
LABEL_81:
      v13 = v115 + 1;
      v83 = v114 + 160;
      v31 = v112;
      v84 = v113 - 1;
      if (v115 + 1 != v112)
      {
        goto LABEL_82;
      }

      v7 = v107;
      v15 = v118;
      if (v112 < v16)
      {
        goto LABEL_121;
      }

      goto LABEL_31;
    }

    if (!v120)
    {
      break;
    }

    v130 = v85[6];
    v131 = v85[7];
    v132 = v85[8];
    v133 = v85[9];
    v126 = v85[2];
    v127 = v85[3];
    v128 = v85[4];
    v129 = v85[5];
    v124 = *v85;
    v125 = v85[1];
    v89 = v87[7];
    v85[6] = v87[6];
    v85[7] = v89;
    v90 = v87[9];
    v85[8] = v87[8];
    v85[9] = v90;
    v91 = v87[3];
    v85[2] = v87[2];
    v85[3] = v91;
    v92 = v87[5];
    v85[4] = v87[4];
    v85[5] = v92;
    v93 = v87[1];
    *v85 = *v87;
    v85[1] = v93;
    v87[6] = v130;
    v87[7] = v131;
    v87[8] = v132;
    v87[9] = v133;
    v87[2] = v126;
    v87[3] = v127;
    v87[4] = v128;
    v87[5] = v129;
    *v87 = v124;
    v87[1] = v125;
    v83 = v88;
    if (__CFADD__(v84++, 1))
    {
      goto LABEL_81;
    }
  }

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
  return result;
}