void sub_24EBF4DD8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for LeaderboardEntry();
  MEMORY[0x28223BE20](v8);
  v52 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v51 = &v42 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_63;
  }

  v15 = (a2 - a1) / v13;
  v55 = a1;
  v54 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v25 = a4 + v17;
    if (v17 >= 1)
    {
      v26 = -v13;
      v27 = v25;
      v45 = a4;
      v46 = a1;
      v44 = -v13;
      do
      {
        v42 = v25;
        v28 = a2;
        v29 = a2 + v26;
        v49 = a2 + v26;
        v47 = a2;
        while (1)
        {
          if (v28 <= a1)
          {
            v55 = v28;
            v53 = v42;
            goto LABEL_60;
          }

          v30 = a3;
          v43 = v25;
          a3 += v26;
          v31 = v27 + v26;
          v32 = v8;
          v33 = v51;
          v34 = v27;
          sub_24E6C2DEC(v27 + v26, v51);
          v35 = v52;
          sub_24E6C2DEC(v29, v52);
          v36 = v32;
          v37 = *(v32 + 24);
          v50 = *(v33 + v37);
          v38 = *(v35 + v37);
          sub_24EBF52F0(v35, type metadata accessor for LeaderboardEntry);
          sub_24EBF52F0(v33, type metadata accessor for LeaderboardEntry);
          if (v50 < v38)
          {
            break;
          }

          v25 = v31;
          if (v30 < v34 || a3 >= v34)
          {
            v8 = v36;
            swift_arrayInitWithTakeFrontToBack();
            v29 = v49;
            v26 = v44;
          }

          else
          {
            v29 = v49;
            v8 = v36;
            v26 = v44;
            if (v30 != v34)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v27 = v31;
          a1 = v46;
          v28 = v47;
          if (v31 <= v45)
          {
            a2 = v47;
            goto LABEL_59;
          }
        }

        v39 = v45;
        if (v30 < v47 || a3 >= v47)
        {
          a2 = v49;
          v8 = v32;
          swift_arrayInitWithTakeFrontToBack();
          v25 = v43;
          v26 = v44;
        }

        else
        {
          v40 = v30 == v47;
          a2 = v49;
          v8 = v32;
          v25 = v43;
          v26 = v44;
          if (!v40)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v27 = v34;
        v41 = v34 > v39;
        a1 = v46;
      }

      while (v41);
    }

LABEL_59:
    v55 = a2;
    v53 = v25;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v50 = a4 + v16;
    v53 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      v48 = v8;
      v49 = a3;
      do
      {
        v19 = v51;
        sub_24E6C2DEC(a2, v51);
        v20 = v52;
        sub_24E6C2DEC(a4, v52);
        v21 = *(v8 + 24);
        v22 = *(v19 + v21);
        v23 = *(v20 + v21);
        sub_24EBF52F0(v20, type metadata accessor for LeaderboardEntry);
        sub_24EBF52F0(v19, type metadata accessor for LeaderboardEntry);
        if (v22 >= v23)
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            v8 = v48;
            swift_arrayInitWithTakeFrontToBack();
            v24 = v49;
          }

          else
          {
            v8 = v48;
            v24 = v49;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v54 = a4 + v13;
          a4 += v13;
        }

        else if (a1 < a2 || a1 >= a2 + v13)
        {
          v8 = v48;
          swift_arrayInitWithTakeFrontToBack();
          a2 += v13;
          v24 = v49;
        }

        else
        {
          v8 = v48;
          v24 = v49;
          if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v13;
        }

        a1 += v13;
        v55 = a1;
      }

      while (a4 < v50 && a2 < v24);
    }
  }

LABEL_60:
  sub_24F8FB008(&v55, &v54, &v53);
}

uint64_t sub_24EBF52F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24EBF5350(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24EBF53BC()
{
  result = qword_27F22B3E8;
  if (!qword_27F22B3E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22B3F0);
    sub_24EBF3F20();
    sub_24EBF5478(&qword_27F2141E0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B3E8);
  }

  return result;
}

uint64_t sub_24EBF5478(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24EBF54C0()
{
  v0 = sub_24F925198();
  v1 = sub_24F9251B8();
  result = sub_24F925198();
  dword_27F22B3F8 = v0;
  byte_27F22B3FC = 0;
  LODWORD(qword_27F22B400) = v1;
  HIDWORD(qword_27F22B400) = result;
  byte_27F22B408 = 0;
  return result;
}

uint64_t sub_24EBF5508()
{
  result = sub_24F925188();
  dword_27F22B40C = 0;
  byte_27F22B410 = 1;
  qword_27F22B414 = result;
  byte_27F22B41C = 1;
  return result;
}

double sub_24EBF553C()
{
  v1 = sub_24F924848();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 72);
  if (*(v0 + 80) == 1)
  {
    return *(v0 + 72);
  }

  sub_24F92BDC8();
  v7 = sub_24F9257A8();
  sub_24F921FD8();

  sub_24F924838();
  swift_getAtKeyPath();
  sub_24E62A5EC(v5, 0);
  (*(v2 + 8))(v4, v1);
  return *&v8[1];
}

uint64_t sub_24EBF5688@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F924848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for MediaScrubber(0);
  sub_24E60169C(v1 + *(v10 + 40), v9, &qword_27F214D90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_24F923F78();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_24F92BDC8();
    v13 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

double MediaScrubber.init(value:in:onEditingChanged:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>)
{
  sub_24F926F28();
  *(a5 + 56) = v20;
  *(a5 + 64) = v21;
  *(a5 + 72) = swift_getKeyPath();
  *(a5 + 80) = 0;
  *(a5 + 88) = swift_getKeyPath();
  *(a5 + 96) = 0;
  v16 = type metadata accessor for MediaScrubber(0);
  v17 = *(v16 + 40);
  *(a5 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90);
  swift_storeEnumTagMultiPayload();
  v18 = (a5 + *(v16 + 44));
  *v18 = xmmword_24F98B440;
  v18[1] = xmmword_24F98B440;
  result = 4.0;
  v18[2] = xmmword_24F98B450;
  v18[3] = xmmword_24F98B460;
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a6;
  *(a5 + 24) = a7;
  *(a5 + 32) = a8;
  *(a5 + 40) = a3;
  *(a5 + 48) = a4;
  return result;
}

uint64_t sub_24EBF59D0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24F9247C8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_24EBF5A50()
{
  v1 = *(v0 + 2);
  v2 = *v0;
  v3 = *(v0 + 1);
  if (v0[4] - v0[3] > 0.0)
  {
    v12 = *v0;
    v13 = v3;
    v14 = v1;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2361D0);
    MEMORY[0x25304CAF0](&v11, v4);
  }

  v12 = v2;
  v13 = v3;
  v14 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2361D0);
  MEMORY[0x25304CAF0](&v11, v5);
  if ((~v11 & 0x7FF0000000000000) == 0)
  {
    return 0;
  }

  v7 = objc_opt_self();
  v8 = sub_24F91FDF8();
  v9 = [v7 localizedStringFromNumber:v8 numberStyle:3];

  v10 = sub_24F92B0D8();
  return v10;
}

uint64_t sub_24EBF5B8C(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, char a6)
{
  v7 = v6;
  v13 = sub_24F923F78();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v39 - v18;
  sub_24EBF5688(&v39 - v18);
  (*(v14 + 104))(v16, *MEMORY[0x277CDFA88], v13);
  v20 = sub_24F923F68();
  v21 = *(v14 + 8);
  v21(v16, v13);
  v21(v19, v13);
  if (v20)
  {
    sub_24F923558();
    v23 = v22;
    v43.origin.x = a1;
    v43.origin.y = a2;
    v43.size.width = a3;
    v43.size.height = a4;
    v24 = v23 - CGRectGetMinX(v43);
  }

  else
  {
    v44.origin.x = a1;
    v44.origin.y = a2;
    v44.size.width = a3;
    v44.size.height = a4;
    MaxX = CGRectGetMaxX(v44);
    sub_24F923558();
    v24 = MaxX - v26;
  }

  v28 = v7[3];
  v27 = v7[4];
  v29 = *(v7 + 2);
  v30 = v24 / a3 * (v27 - v28);
  v31 = v28 + v30;
  v32 = v30 > 0.0;
  v33 = v28 + 0.0;
  if (v32)
  {
    v28 = v31;
    v33 = v31;
  }

  v34 = *(v7 + 1);
  v40 = *v7;
  v41 = v34;
  if (v27 < v28)
  {
    v33 = v27;
  }

  v42 = v29;
  v39 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2361D0);
  sub_24F927178();
  v35 = *(v7 + 56);
  v36 = *(v7 + 8);
  LOBYTE(v40) = v35;
  v41 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
  result = sub_24F926F38();
  v38 = a6 & 1;
  if (LOBYTE(v39) != v38)
  {
    LOBYTE(v40) = v35;
    v41 = v36;
    LOBYTE(v39) = v38;
    sub_24F926F48();
    return (*(v7 + 5))(v38);
  }

  return result;
}

uint64_t sub_24EBF5E28@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v2 = type metadata accessor for MediaScrubber(0);
  v41 = *(v2 - 8);
  v3 = *(v41 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F923568();
  v6 = *(v5 - 8);
  v43 = v5;
  v44 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218B50);
  v10 = *(v9 - 8);
  v45 = v9;
  v46 = v10;
  MEMORY[0x28223BE20](v9);
  v39 = &v38 - v11;
  v12 = sub_24F923E28();
  v42 = v12;
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v38 - v18;
  (*(v13 + 104))(&v38 - v18, *MEMORY[0x277CDF968], v12, v17);
  sub_24F9239A8();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  (*(v13 + 16))(v15, v19, v12);
  sub_24F923508();
  sub_24EBF794C(v1, v4);
  v28 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v29 = (v3 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  sub_24EBF7B08(v4, v30 + v28);
  v31 = (v30 + v29);
  *v31 = v21;
  v31[1] = v23;
  v31[2] = v25;
  v31[3] = v27;
  sub_24EBF8F80(&unk_27F236560, MEMORY[0x277CDD730]);
  sub_24EBF8F80(&qword_27F2180A0, MEMORY[0x277CDD708]);
  v32 = v43;
  sub_24F927278();

  (*(v44 + 8))(v8, v32);
  sub_24EBF794C(v40, v4);
  v33 = swift_allocObject();
  sub_24EBF7B08(v4, v33 + v28);
  v34 = (v33 + v29);
  *v34 = v21;
  v34[1] = v23;
  v34[2] = v25;
  v34[3] = v27;
  sub_24E602068(&qword_27F218C18, &qword_27F218B50);
  v35 = v45;
  v36 = v39;
  sub_24F927268();

  (*(v46 + 8))(v36, v35);
  return (*(v13 + 8))(v19, v42);
}

double sub_24EBF62F0@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  v10 = sub_24F924B38();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24F923F78();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MediaScrubber.TrackShape(0);
  (*(v15 + 104))(v17, *MEMORY[0x277CDFA88], v14);
  v18 = sub_24F923F68();
  (*(v15 + 8))(v17, v14);
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  if (v18)
  {
    CGRectGetMinX(*&v19);
  }

  else
  {
    CGRectGetMaxX(*&v19);
  }

  (*(v11 + 104))(v13, *MEMORY[0x277CE0118], v10);
  sub_24F925AD8();
  result = *&v26;
  v24 = v27;
  *a1 = v26;
  *(a1 + 16) = v24;
  *(a1 + 32) = v28;
  return result;
}

double sub_24EBF655C@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  sub_24EBF62F0(v8, a2, a3, a4, a5);
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v9;
  return result;
}

void (*sub_24EBF65A4(uint64_t *a1))(void *)
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
  *(v2 + 32) = sub_24F923238();
  return sub_24EA092C8;
}

uint64_t sub_24EBF662C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24EBF8F80(&qword_27F22B4F8, type metadata accessor for MediaScrubber.TrackShape);

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_24EBF66C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24EBF8F80(&qword_27F22B4F8, type metadata accessor for MediaScrubber.TrackShape);

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_24EBF6754(uint64_t a1)
{
  v2 = sub_24EBF8F80(&qword_27F22B4F8, type metadata accessor for MediaScrubber.TrackShape);

  return MEMORY[0x282133738](a1, v2);
}

double sub_24EBF67D0@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  v10 = sub_24F924B38();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24F923F78();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MediaScrubber.KnobShape(0);
  (*(v15 + 104))(v17, *MEMORY[0x277CDFA88], v14);
  v18 = sub_24F923F68();
  (*(v15 + 8))(v17, v14);
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  if (v18)
  {
    CGRectGetMinX(*&v19);
  }

  else
  {
    CGRectGetMaxX(*&v19);
  }

  (*(v11 + 104))(v13, *MEMORY[0x277CE0118], v10);
  sub_24F925AD8();
  result = *&v26;
  v24 = v27;
  *a1 = v26;
  *(a1 + 16) = v24;
  *(a1 + 32) = v28;
  return result;
}

double sub_24EBF6A64@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  sub_24EBF67D0(v8, a2, a3, a4, a5);
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v9;
  return result;
}

void (*sub_24EBF6AA8(uint64_t *a1))(void *)
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
  *(v2 + 32) = sub_24F923238();
  return sub_24EBF959C;
}

uint64_t sub_24EBF6B30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24EBF8F80(&qword_27F22B4F0, type metadata accessor for MediaScrubber.KnobShape);

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_24EBF6BC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24EBF8F80(&qword_27F22B4F0, type metadata accessor for MediaScrubber.KnobShape);

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_24EBF6C58(uint64_t a1)
{
  v2 = sub_24EBF8F80(&qword_27F22B4F0, type metadata accessor for MediaScrubber.KnobShape);

  return MEMORY[0x282133738](a1, v2);
}

unint64_t sub_24EBF6CD4()
{
  v1 = sub_24F924848();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 88);
  if (*(v0 + 96) == 1)
  {
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if (qword_27F2103D0 != -1)
      {
        swift_once();
      }

      v6 = &dword_27F22B40C;
      return *v6 | (*(v6 + 4) << 32);
    }
  }

  else
  {

    sub_24F92BDC8();
    v7 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v5, 0);
    (*(v2 + 8))(v4, v1);
    if (v9[15] != 1)
    {
      goto LABEL_3;
    }
  }

  if (qword_27F2103C8 != -1)
  {
    swift_once();
  }

  v6 = &dword_27F22B3F8;
  return *v6 | (*(v6 + 4) << 32);
}

uint64_t MediaScrubber.body.getter@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v40 = type metadata accessor for MediaScrubber(0);
  v2 = *(v40 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v40);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B420);
  MEMORY[0x28223BE20](v5);
  v7 = (&v38 - v6);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B428);
  MEMORY[0x28223BE20](v41);
  v42 = &v38 - v8;
  v9 = sub_24EBF6CD4();
  v11 = v10;
  v39 = v12;
  v38 = HIDWORD(v10);
  v13 = sub_24EBF553C();
  v14 = *(v1 + 24);
  v15 = *(v1 + 32) - v14;
  v16 = 0.0;
  if (v15 > 0.0)
  {
    v17 = *(v1 + 8);
    v18 = *(v1 + 16);
    *&v45 = *v1;
    *(&v45 + 1) = v17;
    *&v46 = v18;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2361D0);
    MEMORY[0x25304CAF0](&v44, v19);
    v16 = (v44 - v14) / v15;
  }

  sub_24EBF794C(v1, &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v21 = (v20 + v3 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v22 = (v20 + v3 + 27) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 16) = v13;
  sub_24EBF7B08(v4, v23 + v20);
  v24 = v23 + v21;
  *v24 = v9;
  *(v24 + 4) = BYTE4(v9) & 1;
  v25 = v38;
  *(v24 + 8) = v11;
  *(v24 + 12) = v25;
  *(v24 + 16) = v39 & 1;
  *(v23 + v22) = v16;
  KeyPath = swift_getKeyPath();
  v27 = (v7 + *(v5 + 36));
  v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B430) + 28);
  sub_24F927458();
  v29 = sub_24F927538();
  (*(*(v29 - 8) + 56))(v27 + v28, 0, 1, v29);
  *v27 = KeyPath;
  *v7 = sub_24EBF7B6C;
  v7[1] = v23;
  sub_24F927618();
  sub_24F9242E8();
  v30 = v42;
  sub_24E6009C8(v7, v42, &qword_27F22B420);
  v31 = (v30 + *(v41 + 36));
  v32 = v50;
  v31[4] = v49;
  v31[5] = v32;
  v31[6] = v51;
  v33 = v46;
  *v31 = v45;
  v31[1] = v33;
  v34 = v48;
  v31[2] = v47;
  v31[3] = v34;
  v35 = v30;
  v36 = v43;
  sub_24E6009C8(v35, v43, &qword_27F22B428);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B438);
  *(v36 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_24EBF7324@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>)
{
  v47 = a5;
  v49 = a4;
  v9 = BYTE4(a3);
  v53 = a1;
  v56 = a6;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218B58);
  v55 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v52 = &v45 - v12;
  v13 = sub_24F925508();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B508);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = (&v45 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B510);
  MEMORY[0x28223BE20](v20);
  v22 = &v45 - v21;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B518);
  v51 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v24 = &v45 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B520);
  MEMORY[0x28223BE20](v25 - 8);
  v46 = &v45 - v26;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B528);
  MEMORY[0x28223BE20](v48);
  v28 = &v45 - v27;
  *v19 = sub_24F927618();
  v19[1] = v29;
  v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B530) + 44);
  LOBYTE(v59) = v9 & 1;
  LOBYTE(v57) = v47 & 1;
  sub_24EBF7C54(a2, v49, v47 & 1, v19 + v30, a7, a8);
  sub_24F927618();
  sub_24F9242E8();
  sub_24E6009C8(v19, v22, &qword_27F22B508);
  v31 = &v22[*(v20 + 36)];
  v32 = v64;
  *(v31 + 4) = v63;
  *(v31 + 5) = v32;
  *(v31 + 6) = v65;
  v33 = v60;
  *v31 = v59;
  *(v31 + 1) = v33;
  v34 = v62;
  *(v31 + 2) = v61;
  *(v31 + 3) = v34;
  sub_24F9254D8();
  v35 = sub_24EBF909C();
  sub_24F926678();
  (*(v14 + 8))(v16, v13);
  sub_24E601704(v22, &qword_27F22B510);
  v36 = sub_24EBF5A50();
  v38 = v37;
  LOBYTE(a2) = v39;
  v57 = v20;
  v58 = v35;
  swift_getOpaqueTypeConformance2();
  v40 = v46;
  v41 = v50;
  sub_24F926548();
  sub_24E600B40(v36, v38, a2 & 1);

  (*(v51 + 8))(v24, v41);
  sub_24E6009C8(v40, v28, &qword_27F22B520);
  v28[*(v48 + 36)] = 0;
  v42 = v52;
  sub_24EBF5E28(v52);
  sub_24F9235A8();
  sub_24EBF9154();
  sub_24E602068(&qword_27F218C50, &qword_27F218B58);
  v43 = v54;
  sub_24F9269D8();
  (*(v55 + 8))(v42, v43);
  return sub_24EBF9304(v28);
}

uint64_t sub_24EBF794C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaScrubber(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EBF79B0()
{
  v1 = (type metadata accessor for MediaScrubber(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 24) & ~*(*v1 + 80));

  sub_24E62A5EC(*(v2 + 72), *(v2 + 80));
  sub_24E62A5EC(*(v2 + 88), *(v2 + 96));
  v3 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_24F923F78();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24EBF7B08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaScrubber(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EBF7B6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for MediaScrubber(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(v2 + 16);
  v9 = (v2 + ((v7 + 3) & 0xFFFFFFFFFFFFFFFCLL));
  v10 = *(v9 + 1);
  v11 = *v9 | (*(v9 + 4) << 32);
  v12 = *(v9 + 16);
  v13 = *(v2 + ((v7 + 27) & 0xFFFFFFFFFFFFFFF8));

  return sub_24EBF7324(a1, v2 + v6, v11, v10, v12, a2, v8, v13);
}

uint64_t sub_24EBF7C54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, int a3@<W3>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  LODWORD(v76) = a3;
  v81 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B558);
  v79 = *(v10 - 8);
  v80 = v10;
  MEMORY[0x28223BE20](v10);
  v74 = &v69 - v11;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B560);
  MEMORY[0x28223BE20](v70);
  v73 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v72 = (&v69 - v14);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B568);
  MEMORY[0x28223BE20](v69);
  v71 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = (&v69 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B570);
  MEMORY[0x28223BE20](v19 - 8);
  v78 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v83 = &v69 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B578);
  MEMORY[0x28223BE20](v23 - 8);
  v77 = &v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v69 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B580);
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v69 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v34 = &v69 - v33;
  v35 = a1 + *(type metadata accessor for MediaScrubber(0) + 44);
  v36 = *(v35 + 48);
  v37 = type metadata accessor for MediaScrubber.TrackShape(0);
  sub_24EBF5688(&v34[*(v37 + 24)]);
  *v34 = a5;
  *(v34 + 1) = v36;
  *&v34[*(v37 + 28)] = 0x3FF0000000000000;
  *&v34[*(v28 + 52)] = a2;
  *&v34[*(v28 + 56)] = 256;
  v82 = v27;
  if (v76)
  {
    v38 = 1;
  }

  else
  {
    sub_24EBF5688(&v31[*(v37 + 24)]);
    *v31 = a5;
    *(v31 + 1) = v36;
    *&v31[*(v37 + 28)] = a6;
    *&v31[*(v28 + 52)] = HIDWORD(a2);
    v27 = v82;
    *&v31[*(v28 + 56)] = 256;
    sub_24E6009C8(v31, v27, &qword_27F22B580);
    v38 = 0;
  }

  v39 = 1;
  (*(v29 + 56))(v27, v38, 1, v28);
  v40 = sub_24EBF6CD4();
  if ((v40 & 0x100000000) == 0)
  {
    v41 = v40;
    v42 = type metadata accessor for MediaScrubber.KnobShape(0);
    sub_24EBF5688(v18 + v42[5]);
    v44 = *(v35 + 32);
    v43 = *(v35 + 40);
    *v18 = a5;
    v45 = (v18 + v42[6]);
    *v45 = v44;
    v45[1] = v43;
    *(v18 + v42[7]) = a6;
    v46 = sub_24F926C88();
    v47 = v31;
    KeyPath = swift_getKeyPath();
    v49 = (v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B590) + 36));
    *v49 = KeyPath;
    v49[1] = v46;
    v31 = v47;
    v50 = *(v69 + 36);
    v51 = *MEMORY[0x277CE13C0];
    v52 = sub_24F927748();
    (*(*(v52 - 8) + 104))(v18 + v50, v51, v52);
    v53 = v72;
    sub_24EBF5688(v72 + v42[5]);
    v54 = v44 - (*(v35 + 8) + *(v35 + 24));
    v55 = v43 - (*v35 + *(v35 + 16));
    *v53 = a5;
    v56 = (v53 + v42[6]);
    *v56 = v54;
    v56[1] = v55;
    *(v53 + v42[7]) = a6;
    v57 = v70;
    v58 = v71;
    *(v53 + *(v70 + 52)) = v41;
    *(v53 + *(v57 + 56)) = 256;
    v76 = v18;
    sub_24E60169C(v18, v58, &qword_27F22B568);
    v59 = v73;
    sub_24E60169C(v53, v73, &qword_27F22B560);
    v60 = v74;
    sub_24E60169C(v58, v74, &qword_27F22B568);
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B598);
    sub_24E60169C(v59, v60 + *(v61 + 48), &qword_27F22B560);
    sub_24E601704(v53, &qword_27F22B560);
    sub_24E601704(v76, &qword_27F22B568);
    sub_24E601704(v59, &qword_27F22B560);
    sub_24E601704(v58, &qword_27F22B568);
    sub_24E6009C8(v60, v83, &qword_27F22B558);
    v39 = 0;
  }

  v62 = v83;
  (*(v79 + 56))(v83, v39, 1, v80);
  v80 = v34;
  v75 = v31;
  sub_24E60169C(v34, v31, &qword_27F22B580);
  v63 = v82;
  v64 = v77;
  sub_24E60169C(v82, v77, &qword_27F22B578);
  v65 = v78;
  sub_24E60169C(v62, v78, &qword_27F22B570);
  v66 = v81;
  sub_24E60169C(v31, v81, &qword_27F22B580);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B588);
  sub_24E60169C(v64, v66 + *(v67 + 48), &qword_27F22B578);
  sub_24E60169C(v65, v66 + *(v67 + 64), &qword_27F22B570);
  sub_24E601704(v62, &qword_27F22B570);
  sub_24E601704(v63, &qword_27F22B578);
  sub_24E601704(v80, &qword_27F22B580);
  sub_24E601704(v65, &qword_27F22B570);
  sub_24E601704(v64, &qword_27F22B578);
  return sub_24E601704(v75, &qword_27F22B580);
}

uint64_t sub_24EBF8468(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B500);
  MEMORY[0x28223BE20](v2 - 8);
  sub_24E60169C(a1, &v5 - v3, &qword_27F22B500);
  return sub_24F924688();
}

uint64_t sub_24EBF8548(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24EBF8618(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24EBF86C8()
{
  sub_24EBF88B4(319, &qword_27F22B450, MEMORY[0x277D839F8], MEMORY[0x277CE11F8]);
  if (v0 <= 0x3F)
  {
    sub_24EBF885C();
    if (v1 <= 0x3F)
    {
      sub_24E6C5550();
      if (v2 <= 0x3F)
      {
        sub_24EBF88B4(319, &qword_27F254E10, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_24EBF88B4(319, &qword_27F215590, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            sub_24EBF88B4(319, &qword_27F2362D0, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
            if (v5 <= 0x3F)
            {
              sub_24E6C55A0();
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_24EBF885C()
{
  if (!qword_27F22B458)
  {
    v0 = sub_24F92AFD8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F22B458);
    }
  }
}

void sub_24EBF88B4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_24EBF8908()
{
  result = qword_27F22B460;
  if (!qword_27F22B460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22B438);
    sub_24EBF8994();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B460);
  }

  return result;
}

unint64_t sub_24EBF8994()
{
  result = qword_27F22B468;
  if (!qword_27F22B468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22B428);
    sub_24EBF8A20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B468);
  }

  return result;
}

unint64_t sub_24EBF8A20()
{
  result = qword_27F22B470;
  if (!qword_27F22B470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22B420);
    sub_24E602068(&qword_27F22B478, &qword_27F22B480);
    sub_24E602068(&qword_27F22B488, &qword_27F22B430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B470);
  }

  return result;
}

uint64_t sub_24EBF8B28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_24F923F78();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_24EBF8BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_24F923F78();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

void sub_24EBF8C50()
{
  sub_24F923F78();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24EBF8D00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = sub_24F923F78();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_24EBF8D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = sub_24F923F78();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_24EBF8E28()
{
  result = sub_24F923F78();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24EBF8F80(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24EBF909C()
{
  result = qword_27F22B538;
  if (!qword_27F22B538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22B510);
    sub_24E602068(&qword_27F22B540, &qword_27F22B508);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B538);
  }

  return result;
}

unint64_t sub_24EBF9154()
{
  result = qword_27F22B548;
  if (!qword_27F22B548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22B528);
    sub_24EBF920C();
    sub_24E602068(&qword_27F212A60, &qword_27F223340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B548);
  }

  return result;
}

unint64_t sub_24EBF920C()
{
  result = qword_27F22B550;
  if (!qword_27F22B550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22B520);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22B510);
    sub_24EBF909C();
    swift_getOpaqueTypeConformance2();
    sub_24EBF8F80(&qword_27F2141E0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B550);
  }

  return result;
}

uint64_t sub_24EBF9304(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B528);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_39Tm()
{
  v1 = (type metadata accessor for MediaScrubber(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  sub_24E62A5EC(*(v2 + 72), *(v2 + 80));
  sub_24E62A5EC(*(v2 + 88), *(v2 + 96));
  v3 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_24F923F78();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24EBF94D8(uint64_t a1, char a2)
{
  v5 = *(type metadata accessor for MediaScrubber(0) - 8);
  v6 = (v2 + ((*(v5 + 64) + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_24EBF5B8C(*v6, v6[1], v6[2], v6[3], a1, a2);
}

uint64_t ArcadeLockup.__allocating_init(id:title:subscribedSubtitle:nonsubscribedSubtitle:unsubscribedButtonAction:subscribedButtonAction:offerDisplayProperties:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v35 = a11;
  v36 = a2;
  v38 = a3;
  v39 = a10;
  v37 = a9;
  v17 = sub_24F91F6B8();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = swift_allocObject();
  sub_24E60169C(a1, &v42, &qword_27F235830);
  if (*(&v43 + 1))
  {
    v22 = v43;
    *(v21 + 88) = v42;
    *(v21 + 104) = v22;
    *(v21 + 120) = v44;
  }

  else
  {
    sub_24F91F6A8();
    v23 = sub_24F91F668();
    v33 = a4;
    v34 = a5;
    v24 = a6;
    v25 = a8;
    v26 = v23;
    v27 = a7;
    v29 = v28;
    (*(v18 + 8))(v20, v17);
    v40 = v26;
    v41 = v29;
    a8 = v25;
    a6 = v24;
    a7 = v27;
    a4 = v33;
    a5 = v34;
    sub_24F92C7F8();
    sub_24E601704(&v42, &qword_27F235830);
  }

  sub_24E601704(a1, &qword_27F235830);
  sub_24E65E0D4(v35, v21 + OBJC_IVAR____TtC12GameStoreKit12ArcadeLockup_impressionMetrics);
  v30 = v37;
  v31 = v38;
  *(v21 + 16) = v36;
  *(v21 + 24) = v31;
  *(v21 + 32) = a4;
  *(v21 + 40) = a5;
  *(v21 + 48) = a6;
  *(v21 + 56) = a7;
  *(v21 + 64) = a8;
  *(v21 + 72) = v30;
  *(v21 + 80) = v39;
  return v21;
}

uint64_t ArcadeLockup.init(id:title:subscribedSubtitle:nonsubscribedSubtitle:unsubscribedButtonAction:subscribedButtonAction:offerDisplayProperties:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v36 = a11;
  v37 = a2;
  v39 = a3;
  v40 = a10;
  v38 = a9;
  v19 = sub_24F91F6B8();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E60169C(a1, &v43, &qword_27F235830);
  if (*(&v44 + 1))
  {
    v46 = v43;
    v47 = v44;
    v48 = v45;
  }

  else
  {
    sub_24F91F6A8();
    v23 = sub_24F91F668();
    v34 = a4;
    v35 = a5;
    v24 = a6;
    v25 = a8;
    v26 = v23;
    v27 = a7;
    v29 = v28;
    (*(v20 + 8))(v22, v19);
    v41 = v26;
    v42 = v29;
    a8 = v25;
    a6 = v24;
    a7 = v27;
    a4 = v34;
    a5 = v35;
    sub_24F92C7F8();
    sub_24E601704(&v43, &qword_27F235830);
  }

  sub_24E601704(a1, &qword_27F235830);
  v30 = v47;
  *(v12 + 88) = v46;
  *(v12 + 104) = v30;
  *(v12 + 120) = v48;
  sub_24E65E0D4(v36, v12 + OBJC_IVAR____TtC12GameStoreKit12ArcadeLockup_impressionMetrics);
  v31 = v38;
  v32 = v39;
  *(v12 + 16) = v37;
  *(v12 + 24) = v32;
  *(v12 + 32) = a4;
  *(v12 + 40) = a5;
  *(v12 + 48) = a6;
  *(v12 + 56) = a7;
  *(v12 + 64) = a8;
  *(v12 + 72) = v31;
  *(v12 + 80) = v40;
  return v12;
}

char *ArcadeLockup.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v98 = a2;
  v79 = sub_24F91F6B8();
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v77 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v4 - 8);
  v83 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v86 = &v69 - v7;
  v8 = sub_24F9285B8();
  v91 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v80 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F928388();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v81 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v84 = &v69 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v69 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v69 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v69 - v22;
  v24 = a1;
  sub_24F928398();
  v82 = sub_24F928348();
  v26 = v25;
  v29 = *(v11 + 8);
  v28 = v11 + 8;
  v27 = v29;
  v29(v23, v10);
  if (!v26)
  {
    v35 = sub_24F92AC38();
    sub_24EBFA624(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    *v36 = 0x656C746974;
    v37 = v89;
    v36[1] = 0xE500000000000000;
    v36[2] = v37;
    (*(*(v35 - 8) + 104))(v36, *MEMORY[0x277D22530], v35);
    swift_willThrow();
    (*(v91 + 8))(v98, v8);
    v34 = v24;
    goto LABEL_5;
  }

  v85 = v26;
  v88 = v8;
  sub_24F928398();
  v76 = sub_24F928348();
  v89 = v30;
  v27(v20, v10);
  sub_24F928398();
  v75 = sub_24F928348();
  v87 = v31;
  v27(v20, v10);
  type metadata accessor for Action();
  sub_24F928398();
  v32 = v90;
  v33 = static Action.makeInstance(byDeserializing:using:)(v17, v98);
  if (v32)
  {

    (*(v91 + 8))(v98, v88);
    v27(v24, v10);
    v34 = v17;
LABEL_5:
    v27(v34, v10);
    return v20;
  }

  v74 = v33;
  v73 = v28;
  v27(v17, v10);
  v39 = v24;
  v40 = v84;
  v90 = v39;
  sub_24F928398();
  v41 = v98;
  v42 = static Action.makeInstance(byDeserializing:using:)(v40, v98);
  v43 = v27;
  v44 = v91;
  v71 = v42;
  v72 = 0;
  v69 = v43;
  v43(v40, v10);
  type metadata accessor for OfferDisplayProperties();
  sub_24F928398();
  v45 = *(v44 + 16);
  v46 = v80;
  v70 = v10;
  v47 = v88;
  v45(v80, v41, v88);
  sub_24EBFA624(&qword_27F225B10, type metadata accessor for OfferDisplayProperties);
  sub_24F929548();
  v84 = v97[0];
  sub_24F929608();
  sub_24F928398();
  v45(v46, v41, v47);
  sub_24F929548();
  v48 = v81;
  sub_24F928398();
  v49 = sub_24F928348();
  if (v50)
  {
    *&v94 = v49;
    *(&v94 + 1) = v50;
  }

  else
  {
    v51 = v77;
    sub_24F91F6A8();
    v52 = sub_24F91F668();
    v54 = v53;
    (*(v78 + 8))(v51, v79);
    *&v94 = v52;
    *(&v94 + 1) = v54;
  }

  sub_24F92C7F8();
  v55 = v70;
  v56 = v69;
  v69(v48, v70);
  v57 = v87;
  v58 = v83;
  sub_24E60169C(v86, v83, &qword_27F213E68);
  type metadata accessor for ArcadeLockup();
  v20 = swift_allocObject();
  sub_24E60169C(v97, &v94, &qword_27F235830);
  v59 = v98;
  v60 = v91;
  v61 = v89;
  if (*(&v95 + 1))
  {
    v62 = v95;
    *(v20 + 88) = v94;
    *(v20 + 104) = v62;
    *(v20 + 15) = v96;
  }

  else
  {
    v63 = v77;
    sub_24F91F6A8();
    v64 = sub_24F91F668();
    v66 = v65;
    (*(v78 + 8))(v63, v79);
    v92 = v64;
    v93 = v66;
    v57 = v87;
    v58 = v83;
    v61 = v89;
    sub_24F92C7F8();
    sub_24E601704(&v94, &qword_27F235830);
  }

  (*(v60 + 8))(v59, v88);
  v56(v90, v55);
  sub_24E601704(v97, &qword_27F235830);
  sub_24E601704(v86, &qword_27F213E68);
  sub_24E65E0D4(v58, &v20[OBJC_IVAR____TtC12GameStoreKit12ArcadeLockup_impressionMetrics]);
  v67 = v85;
  *(v20 + 2) = v82;
  *(v20 + 3) = v67;
  *(v20 + 4) = v76;
  *(v20 + 5) = v61;
  *(v20 + 6) = v75;
  *(v20 + 7) = v57;
  v68 = v71;
  *(v20 + 8) = v74;
  *(v20 + 9) = v68;
  *(v20 + 10) = v84;
  return v20;
}

uint64_t type metadata accessor for ArcadeLockup()
{
  result = qword_27F22B5A8;
  if (!qword_27F22B5A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ArcadeLockup.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ArcadeLockup.subscribedSubtitle.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ArcadeLockup.nonsubscribedSubtitle.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t ArcadeLockup.deinit()
{

  sub_24E6585F8(v0 + 88);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit12ArcadeLockup_impressionMetrics, &qword_27F213E68);
  return v0;
}

uint64_t ArcadeLockup.__deallocating_deinit()
{
  ArcadeLockup.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24EBFA624(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_24EBFA67C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  result = ArcadeLockup.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void sub_24EBFA6EC()
{
  sub_24E61C938();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t (*static NSBundle.appStoreKit.modify())()
{
  if (qword_27F2103D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

id sub_24EBFA944(uint64_t a1, void *a2)
{
  type metadata accessor for ThisFramework();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  *a2 = result;
  return result;
}

id sub_24EBFA9C0(void *a1, void **a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = *a2;

  return v3;
}

void sub_24EBFAA4C(void *a1, void *a2, void **a3)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = *a3;
  *a3 = a1;
}

uint64_t (*static NSBundle.currentStoreKit.modify())()
{
  if (qword_27F2103E0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

id sub_24EBFAB60(void *a1, uint64_t a2, uint64_t a3, id a4, id a5, void *a6)
{
  v19[2] = *MEMORY[0x277D85DE8];
  if (a5)
  {
    return [a5 paragraphStyleWithBaseWritingDirection_];
  }

  v19[0] = 0;
  v19[1] = 0;
  v11 = [a1 paragraphStyleAtIndex:a2 effectiveRange:v19];
  if (!v11)
  {
    return a6;
  }

  v12 = v11;
  v14 = sub_24F92C438();
  result = v12;
  if ((v15 & 1) != 0 || v14 != a2 || v13 != a3)
  {
    goto LABEL_11;
  }

  if ([v12 baseWritingDirection] == a4)
  {
    return v12;
  }

  result = v12;
  if (a4 != -1 || (v18 = [v12 baseWritingDirection], result = v12, v18 == -1))
  {
LABEL_11:
    v16 = result;
    v17 = [result paragraphStyleWithBaseWritingDirection_];

    return v17;
  }

  return result;
}

void sub_24EBFACC8(id a1@<X0>, void *a2@<X1>, void *a3@<X2>, char a4@<W3>, unint64_t a5@<X8>)
{
  if (a1)
  {
    v9 = [a1 mutableString];
  }

  else
  {
    if (!a2)
    {
      if (qword_27F211050 != -1)
      {
        goto LABEL_325;
      }

      goto LABEL_296;
    }

    v9 = a2;
  }

  v10 = v9;
  v11 = [v9 length];
  if (v11 < 1)
  {
    if (qword_27F211050 != -1)
    {
LABEL_314:
      swift_once();
    }

    v80 = qword_27F23D658;

    goto LABEL_297;
  }

  v12 = v11;
  v88 = a3;
  v97 = a5;
  a5 = MEMORY[0x277D84F90];
  v92 = a1;
  v13 = a1 == 0;
  v96 = v10;
  sub_24EF20144(v96, 0, v12, &v124);
  v14 = sub_24F91E8A8();
  v15 = sub_24F91E8A8();
  v111 = 0;
  v112 = 0;
  v104 = 0;
  v99 = 0;
  v100 = 0;
  v16 = 0;
  v115 = 0;
  v116 = 0;
  v119 = 0;
  v101 = 0;
  v17 = 0;
  v122 = a5;
  v123 = a5;
  v91 = *MEMORY[0x277D74200];
  v102 = a4;
  v89 = v13 | a4;
  v87 = *MEMORY[0x277D74118];
  v118 = v14;
  v110 = v14;
  v120 = v14;
  v106 = a5;
  v18 = a5;
  v98 = a5;
  v103 = a5;
LABEL_7:
  v93 = 0;
  v19 = 0;
  v94 = 0;
  v95 = 0;
  v20 = 0;
  v90 = v16;
  v105 = v16;
  while (2)
  {
    v107 = v19;
    v108 = v15;
    v109 = v17;
    v113 = 0;
    v21 = 0;
    v117 = -1;
    while (1)
    {
      while (1)
      {
        if (v16 < 0 || (v10 = v125, v16 >= v125))
        {
          v10 = 0;
LABEL_16:
          v23 = 1;
          v24 = __OFADD__(v16++, 1);
          if (v24)
          {
            goto LABEL_300;
          }

          goto LABEL_17;
        }

        if (*(&v125 + 1))
        {
          if (__OFADD__(v16, *(&v124 + 1)))
          {
            goto LABEL_302;
          }

          LOWORD(v22) = *(*(&v125 + 1) + 2 * (v16 + *(&v124 + 1)));
        }

        else if (v126)
        {
          if (__OFADD__(v16, *(&v124 + 1)))
          {
            goto LABEL_304;
          }

          LODWORD(v22) = *(v126 + v16 + *(&v124 + 1));
          if ((v22 & 0x80000000) != 0)
          {
            goto LABEL_305;
          }
        }

        else
        {
          if (v16 >= *(&v127 + 1) || (a5 = v127, v16 < v127))
          {
            if (v16 >= 4)
            {
              a5 = v16 - 4;
            }

            else
            {
              a5 = 0;
            }

            *&v127 = a5;
            v46 = a5 + 2048;
            if (__OFADD__(a5, 2048))
            {
              goto LABEL_312;
            }

            if (v125 < v46)
            {
              v46 = v125;
            }

            *(&v127 + 1) = v46;
            if (__OFADD__(*(&v124 + 1), a5))
            {
              goto LABEL_313;
            }

            v128.length = v46 - a5;
            v22 = *(&v126 + 1);
            v128.location = *(&v124 + 1) + a5;
            CFStringGetCharacters(v124, v128, *(&v126 + 1));
          }

          else
          {
            v22 = *(&v126 + 1);
          }

          if (!v22)
          {
            goto LABEL_337;
          }

          if (__OFSUB__(v16, a5))
          {
            goto LABEL_307;
          }

          LOWORD(v22) = *(v22 + 2 * (v16 - a5));
        }

        if (((v22 + 9216) >> 10) < 0x3Fu)
        {
          if (((v22 + 0x2000) >> 11) >= 0x1Fu)
          {
            goto LABEL_157;
          }

          v10 = v22;
          goto LABEL_16;
        }

        if (v16 >= (v10 - 1) || (v10 = &v124, v47 = sub_24EF20044(v16 + 1), ((v47 + 0x2000) >> 10) < 0x3Fu))
        {
LABEL_157:
          LODWORD(v27) = 0;
          ++v16;
          v43 = 1;
          v37 = 1;
          v44 = 1;
          v23 = 1;
          goto LABEL_202;
        }

        v10 = ((v22 + 10240) << 10) + (v47 + 9216) + 0x10000;
        v23 = 2;
        v24 = __OFADD__(v16, 2);
        v16 += 2;
        if (v24)
        {
          goto LABEL_300;
        }

LABEL_17:
        v25 = AMPGetBidiClass(v10);
        v26 = v25;
        LODWORD(v27) = 0;
        if (v25 > 10)
        {
          if (v25 > 12)
          {
            if (v25 == 13)
            {
              goto LABEL_176;
            }

            if (v25 == 14)
            {
              if (v10 > 0x7F)
              {
                v59 = (v10 & 0x3F) << 8;
                if (v10 >= 0x800)
                {
                  v60 = (v59 | (v10 >> 6) & 0x3F) << 8;
                  v61 = (((v60 | (v10 >> 12) & 0x3F) << 8) | (v10 >> 18)) - 2122219023;
                  v29 = (v10 >> 12) + v60 + 8487393;
                  if (WORD1(v10))
                  {
                    v29 = v61;
                  }
                }

                else
                {
                  v29 = (v10 >> 6) + v59 + 33217;
                }
              }

              else
              {
                v29 = v10 + 1;
              }

              *&v121[0] = (v29 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v29) >> 3))));
              v30 = sub_24F92B208();
              v32 = sub_24F26DAFC(v30, v31);
              if ((v32 & 0x100000000) != 0)
              {
                goto LABEL_336;
              }

              v33 = v32;

              if ((v33 - 14) > 0xFFFFFFFB || (v33 - 8232) < 2 || v33 == 133)
              {
LABEL_40:
                if (v10 == 8232)
                {
                  v10 = v16 - v23;
                  if (__OFSUB__(v16, v23))
                  {
                    goto LABEL_303;
                  }

                  v34 = v112;
                  if (!v112)
                  {
                    v34 = MEMORY[0x277D84F90];
                  }

                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v34 = sub_24E615EC4(0, *(v34 + 2) + 1, 1, v34);
                  }

                  a5 = *(v34 + 2);
                  v35 = *(v34 + 3);
                  v112 = v34;
                  if (a5 >= v35 >> 1)
                  {
                    v112 = sub_24E615EC4((v35 > 1), a5 + 1, 1, v34);
                  }

                  *(v112 + 2) = a5 + 1;
                  *&v112[8 * a5 + 32] = v10;
                  LODWORD(v27) = 1;
                }

                else
                {
                  LODWORD(v27) = 1;
                  if (v12 > v16 && v10 == 13)
                  {
                    v10 = &v124;
                    v42 = sub_24EF20044(v16);
                    if (((v42 + 9216) >> 10) > 0x3Eu)
                    {
                      if (__OFSUB__(v125, 1))
                      {
                        goto LABEL_311;
                      }

                      if (v16 < v125 - 1)
                      {
                        sub_24EF20044(v16 + 1);
                      }
                    }

                    else if (v42 == 10)
                    {
                      ++v23;
                      ++v16;
                      LODWORD(v27) = 1;
                      goto LABEL_176;
                    }

                    LODWORD(v27) = 1;
                  }
                }
              }

              else
              {
                LODWORD(v27) = 0;
              }

LABEL_176:
              v43 = 1;
LABEL_177:
              v37 = 1;
              v44 = 1;
              goto LABEL_202;
            }

LABEL_61:
            v37 = 0;
            goto LABEL_97;
          }

          if (v25 != 11)
          {
            goto LABEL_40;
          }

          v27 = *(v18 + 2);
          if (!v27)
          {
            goto LABEL_96;
          }

          if ((*&v18[4 * v27 + 28] - 8294) > 2)
          {
            goto LABEL_85;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v38 = *(v18 + 2);
            if (!v38)
            {
              goto LABEL_310;
            }
          }

          else
          {
            v18 = sub_24ECDE19C(v18);
            v38 = *(v18 + 2);
            if (!v38)
            {
              goto LABEL_310;
            }
          }

          goto LABEL_74;
        }

        if (v25 != 8)
        {
          if (v25 != 9)
          {
            if (v25 != 10)
            {
              goto LABEL_61;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v18 = sub_24E616274(0, *(v18 + 2) + 1, 1, v18);
            }

            a5 = *(v18 + 2);
            v28 = *(v18 + 3);
            if (a5 >= v28 >> 1)
            {
              v18 = sub_24E616274((v28 > 1), a5 + 1, 1, v18);
            }

            *(v18 + 2) = a5 + 1;
            *&v18[4 * a5 + 32] = v10;
            switch(v10)
            {
              case 0x2068:
                v116 = 0;
                v119 = 0;
                LOBYTE(v27) = v115 ^ 1;
                v115 = 1;
                break;
              case 0x2067:
                v115 = 0;
                v119 = 0;
                LOBYTE(v27) = v116 ^ 1;
                v116 = 1;
                break;
              case 0x2066:
                v115 = 0;
                v116 = 0;
                LOBYTE(v27) = v119 ^ 1;
                v119 = 1;
                break;
              default:
LABEL_85:
                LOBYTE(v27) = 0;
                break;
            }

            goto LABEL_96;
          }

          v27 = *(v18 + 2);
          if (!v27)
          {
            goto LABEL_96;
          }

          v39 = *&v18[4 * v27 + 28] - 8234;
          if (v39 > 4 || v39 == 2)
          {
            goto LABEL_85;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v38 = *(v18 + 2);
            if (!v38)
            {
              goto LABEL_306;
            }
          }

          else
          {
            v18 = sub_24ECDE19C(v18);
            v38 = *(v18 + 2);
            if (!v38)
            {
              goto LABEL_306;
            }
          }

LABEL_74:
          *(v18 + 2) = v38 - 1;
          if (v38 != 1)
          {
            LOBYTE(v27) = 0;
            v37 = 1;
            v41 = (*&v18[4 * v38 + 24] - 8234);
            if (v41 > 0x3E)
            {
              goto LABEL_97;
            }

            if (((1 << v41) & 0x1000000000000009) != 0)
            {
              goto LABEL_88;
            }

            if (((1 << v41) & 0x2000000000000012) != 0)
            {
              goto LABEL_89;
            }

            if (v41 == 62)
            {
              v116 = 0;
              v119 = 0;
              LOBYTE(v27) = v115 ^ 1;
              v115 = 1;
            }

            goto LABEL_97;
          }

          LOBYTE(v27) = 1;
LABEL_96:
          v37 = 1;
          goto LABEL_97;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_24E616274(0, *(v18 + 2) + 1, 1, v18);
        }

        a5 = *(v18 + 2);
        v36 = *(v18 + 3);
        if (a5 >= v36 >> 1)
        {
          v18 = sub_24E616274((v36 > 1), a5 + 1, 1, v18);
        }

        LOBYTE(v27) = 0;
        *(v18 + 2) = a5 + 1;
        *&v18[4 * a5 + 32] = v10;
        v37 = 1;
        if (v10 > 8236)
        {
          if (v10 != 8238)
          {
            if (v10 != 8237)
            {
              goto LABEL_97;
            }

LABEL_88:
            v115 = 0;
            v116 = 0;
            LOBYTE(v27) = v119 ^ 1;
            v119 = 1;
            goto LABEL_97;
          }

LABEL_89:
          v115 = 0;
          v119 = 0;
          LOBYTE(v27) = v116 ^ 1;
          v116 = 1;
          goto LABEL_97;
        }

        if (v10 == 8234)
        {
          goto LABEL_88;
        }

        if (v10 == 8235)
        {
          goto LABEL_89;
        }

LABEL_97:
        v24 = __OFADD__(v21, v23);
        v21 += v23;
        if (v24)
        {
          goto LABEL_301;
        }

        if ((*(v18 + 2) != 0) | v27 & 1)
        {
          if (v119)
          {
            LODWORD(v27) = 0;
            v43 = 0;
            v113 = v117 != 0;
            v119 = 1;
            v44 = v37;
            v117 = 0;
            goto LABEL_202;
          }

          if (v116)
          {
            v119 = 0;
            LODWORD(v27) = 0;
            v43 = 0;
            v113 = v117 != 1;
            v116 = 1;
            v117 = 1;
          }

          else
          {
            if ((v115 & 1) == 0)
            {
              v115 = 0;
              v116 = 0;
              v119 = 0;
              goto LABEL_200;
            }

            v119 = 0;
            LODWORD(v27) = 0;
            v43 = 0;
            v113 = v117 != -1;
            v116 = 0;
            v117 = -1;
            v115 = 1;
          }

          goto LABEL_201;
        }

        LODWORD(v27) = 0;
        v44 = 1;
        if (v26 > 6)
        {
          if (v26 > 9)
          {
            if ((v26 - 15) < 2)
            {
LABEL_120:
              v43 = 0;
              v37 = 1;
              goto LABEL_202;
            }

            if (v26 != 10 && v26 != 11)
            {
              goto LABEL_338;
            }
          }

          else if (v26 == 7)
          {
            if (sub_24F91E8A8() == v118)
            {
              if (sub_24F91E8A8() != v120)
              {
                v24 = __OFADD__(v111, v23);
                v111 += v23;
                if (v24)
                {
                  goto LABEL_327;
                }
              }
            }

            else
            {
              v24 = __OFADD__(v109, v23);
              v109 += v23;
              if (v24)
              {
                goto LABEL_316;
              }
            }
          }

          goto LABEL_200;
        }

        if (v26 <= 2)
        {
          switch(v26)
          {
            case 0:
              goto LABEL_120;
            case 1:
              if (v117 == -1)
              {
                v117 = 0;
                LODWORD(v27) = 0;
                v43 = 0;
                goto LABEL_177;
              }

              LODWORD(v27) = 0;
              v43 = 0;
              v45 = v117 == 0;
              break;
            case 2:
              if (v117 == -1)
              {
                LODWORD(v27) = 0;
                v43 = 0;
                v117 = 1;
                goto LABEL_177;
              }

              LODWORD(v27) = 0;
              v43 = 0;
              v45 = v117 == 1;
              break;
            default:
              goto LABEL_338;
          }

          v48 = !v45;
          v113 |= v48;
          goto LABEL_177;
        }

        if ((v26 - 3) >= 2)
        {
          if (v26 == 5)
          {
            if (sub_24F91E8A8() == v118)
            {
              if (sub_24F91E8A8() != v120)
              {
                LODWORD(v27) = 0;
                v43 = 0;
                v44 = 1;
                goto LABEL_202;
              }

              v120 = v16 - v23;
              if (__OFSUB__(v16, v23))
              {
                goto LABEL_329;
              }

              v24 = __OFADD__(v111, v23);
              v111 += v23;
              if (v24)
              {
                goto LABEL_332;
              }
            }

            else
            {
              v24 = __OFADD__(v109, v23);
              v109 += v23;
              if (v24)
              {
                goto LABEL_319;
              }
            }
          }

          else
          {
            if (v26 != 6)
            {
              goto LABEL_338;
            }

            if (sub_24F91E8A8() == v118)
            {
              if (sub_24F91E8A8() == v120)
              {
                v120 = v16 - v23;
                if (__OFSUB__(v16, v23))
                {
                  goto LABEL_328;
                }

                v24 = __OFADD__(v111, v23);
                v111 += v23;
                if (v24)
                {
                  goto LABEL_331;
                }
              }

              else
              {
                v24 = __OFADD__(v111, v23);
                v111 += v23;
                if (v24)
                {
                  goto LABEL_330;
                }
              }
            }

            else
            {
              v24 = __OFADD__(v109, v23);
              v109 += v23;
              if (v24)
              {
                goto LABEL_321;
              }
            }
          }

LABEL_200:
          LODWORD(v27) = 0;
          v43 = 0;
LABEL_201:
          v44 = v37;
          goto LABEL_202;
        }

        if (sub_24F91E8A8() == v118)
        {
          if (sub_24F91E8A8() != v120)
          {
            v109 = v111 + v23;
            if (__OFADD__(v111, v23))
            {
              goto LABEL_320;
            }

            v44 = 1;
            v118 = v120;
            goto LABEL_183;
          }

          v118 = v16 - v23;
          if (__OFSUB__(v16, v23))
          {
            goto LABEL_322;
          }
        }

        v44 = v37;
LABEL_183:
        v49 = v109 + v23;
        if (__OFADD__(v109, v23))
        {
          goto LABEL_308;
        }

        v109 += v23;
        v50 = v49 + v118;
        v108 = v50 - 1;
        if (__OFSUB__(v50, 1))
        {
          goto LABEL_309;
        }

        if (v117 == -1)
        {
          LODWORD(v27) = 0;
          v43 = 0;
          v51 = 1;
          if (v26 != 4)
          {
            v51 = -1;
          }

          v117 = v51;
        }

        else
        {
          LODWORD(v27) = 0;
          v43 = 0;
        }

LABEL_202:
        v24 = __OFADD__(v20, v23);
        v20 += v23;
        if (v24)
        {
          __break(1u);
LABEL_300:
          __break(1u);
LABEL_301:
          __break(1u);
LABEL_302:
          __break(1u);
LABEL_303:
          __break(1u);
LABEL_304:
          __break(1u);
LABEL_305:
          __break(1u);
LABEL_306:
          __break(1u);
LABEL_307:
          __break(1u);
LABEL_308:
          __break(1u);
LABEL_309:
          __break(1u);
LABEL_310:
          __break(1u);
LABEL_311:
          __break(1u);
LABEL_312:
          __break(1u);
LABEL_313:
          __break(1u);
          goto LABEL_314;
        }

        a5 = v16 == v12;
        if (v16 == v12)
        {
          v44 = 1;
          v52 = 1;
        }

        else
        {
          v52 = v27;
        }

        v53 = v16 == v12 ? 1 : v43;
        v54 = v16 == v12 ? 1 : v37;
        if (v44 != 1)
        {
          break;
        }

        if (sub_24F91E8A8() == v120)
        {
          LODWORD(v27) = v52;
          v43 = v53;
          v37 = v54;
          break;
        }

        if (v54)
        {
          v111 = 0;
          v120 = v110;
          goto LABEL_219;
        }

        v111 = 0;
        v120 = v110;
        if (v53)
        {
          a5 = 0;
          v120 = v110;
          goto LABEL_245;
        }
      }

      v52 = v27;
      v53 = v43;
      if (!v37)
      {
        goto LABEL_220;
      }

LABEL_219:
      if (sub_24F91E8A8() == v118)
      {
LABEL_220:
        if (v53)
        {
          goto LABEL_245;
        }

        goto LABEL_221;
      }

      if (__OFSUB__(v118 + v109, 1))
      {
        __break(1u);
LABEL_316:
        __break(1u);
LABEL_317:
        __break(1u);
        goto LABEL_318;
      }

      if (v108 < v118 + v109 - 1)
      {
        v55 = v108 - v118;
        if (__OFSUB__(v108, v118))
        {
          goto LABEL_323;
        }

        v109 = v55 + 1;
        if (__OFADD__(v55, 1))
        {
          goto LABEL_324;
        }
      }

      if (v102)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v106 = sub_24E616164(0, *(v106 + 2) + 1, 1, v106);
        }

        v57 = *(v106 + 2);
        v56 = *(v106 + 3);
        if (v57 >= v56 >> 1)
        {
          v106 = sub_24E616164((v56 > 1), v57 + 1, 1, v106);
        }

        *(v106 + 2) = v57 + 1;
        v58 = &v106[16 * v57];
        *(v58 + 4) = v118;
        *(v58 + 5) = v109;
      }

      v108 = sub_24F91E8A8();
      if (v53)
      {
        break;
      }

      v109 = 0;
      v118 = v110;
LABEL_221:
      if (v16 == v12)
      {
        goto LABEL_290;
      }
    }

    v109 = 0;
    v118 = v110;
LABEL_245:
    if (v117 == 1)
    {
      v62 = __CFADD__(v94++, 1);
      if (!v62)
      {
        goto LABEL_251;
      }

      goto LABEL_317;
    }

    if (v117)
    {
      if (v21 < 1)
      {
        goto LABEL_263;
      }

      v62 = __CFADD__(v107++, 1);
      if (v62)
      {
        __break(1u);
LABEL_327:
        __break(1u);
LABEL_328:
        __break(1u);
LABEL_329:
        __break(1u);
LABEL_330:
        __break(1u);
LABEL_331:
        __break(1u);
LABEL_332:
        __break(1u);
LABEL_333:
        __break(1u);
LABEL_334:
        __break(1u);
LABEL_335:
        __break(1u);
LABEL_336:
        __break(1u);
LABEL_337:
        __break(1u);
LABEL_338:
        sub_24F92C888();

        v86 = sub_24F92CD88();
        MEMORY[0x253050C20](v86);

        sub_24F92CA88();
        __break(1u);
        return;
      }

LABEL_255:
      if (v102)
      {
        v63 = [objc_opt_self() valueWithRange:v105 direction:v21 hasMixedDirectionality:{v117, v113 & 1}];
        MEMORY[0x253050F00]();
        if (*((v123 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v123 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_24F92B5E8();
        }

        sub_24F92B638();

        v103 = v123;
      }

      if (v113)
      {
        if (v92)
        {
          v64 = objc_allocWithZone(MEMORY[0x277CCABB0]);
          v114 = v92;
          v65 = [v64 initWithInteger_];
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440);
          v66 = swift_allocObject();
          *(v66 + 16) = xmmword_24F941C80;
          *(v66 + 32) = v65;
          sub_24E9421D0();
          v67 = v65;
          v68 = sub_24F92B588();

          [v114 addAttribute:v91 value:v68 range:{v105, v21}];
        }

        v104 = 1;
        v93 = 1;
      }

LABEL_263:
      v15 = v108;
      v17 = v109;
      v19 = v107;
      if (!v52)
      {
        v105 = v16;
        if ((a5 & 1) == 0)
        {
          continue;
        }

LABEL_290:

        if (*(&v126 + 1))
        {
          MEMORY[0x2530542D0](*(&v126 + 1), -1, -1);
        }

        *(&v126 + 1) = 0;
        v79 = objc_allocWithZone(type metadata accessor for WritingDirectionsCounts());
        v80 = WritingDirectionsCounts.init(natural:leftToRight:rightToLeft:)(v99, v101, v100);

        v121[0] = v124;
        v121[1] = v125;
        v121[2] = v126;
        v121[3] = v127;
        sub_24EBFC10C(v121);
        a5 = v97;
        v81 = v98;
        v82 = v112;
        v83 = v104;
        v84 = v106;
        v85 = v103;
        goto LABEL_298;
      }

      if (__CFADD__(v101, v95))
      {
        goto LABEL_333;
      }

      if (__CFADD__(v100, v94))
      {
        goto LABEL_334;
      }

      v100 += v94;
      v101 += v95;
      v62 = __CFADD__(v99, v107);
      v99 = &v107[v99];
      if (v62)
      {
        goto LABEL_335;
      }

      v69 = objc_allocWithZone(type metadata accessor for WritingDirectionsCounts());
      v70 = WritingDirectionsCounts.init(natural:leftToRight:rightToLeft:)(v107, v95, v94);
      v71 = v70;
      if (v70[OBJC_IVAR___AMPWritingDirectionsCounts_isRTLEnough])
      {
        v72 = 1;
      }

      else
      {
        v72 = v70[OBJC_IVAR___AMPWritingDirectionsCounts_hasStronglyTypedCounts] - 1;
      }

      if ((v89 & 1) == 0)
      {
        goto LABEL_277;
      }

      v73 = [objc_opt_self() valueWithRange:v90 direction:v20 hasMixedDirectionality:{v72, v93 & 1}];
      MEMORY[0x253050F00]();
      if (*((v122 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v122 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24F92B5E8();
      }

      sub_24F92B638();

      v98 = v122;
      if (!v92)
      {
      }

      else
      {
LABEL_277:
        if (v72 == -1)
        {
          v74 = &qword_27F39D390;
          if (qword_27F210DE0 != -1)
          {
            swift_once();
            v74 = &qword_27F39D390;
          }
        }

        else if (v72 == 1)
        {
          v74 = &qword_27F39D398;
          if (qword_27F210DE8 != -1)
          {
            swift_once();
            v74 = &qword_27F39D398;
          }
        }

        else
        {
          v74 = &qword_27F39D388;
          if (qword_27F210DD8 != -1)
          {
            swift_once();
            v74 = &qword_27F39D388;
          }
        }

        v75 = *v74;
        v76 = sub_24EBFAB60(v92, v90, v20, v72, v88, v75);
        v78 = v77;

        if (v78)
        {
          [v92 addAttribute:v87 value:v76 range:{v90, v20}];
        }

        else
        {
        }
      }

      v15 = v108;
      v17 = v109;
      if (a5)
      {
        goto LABEL_290;
      }

      goto LABEL_7;
    }

    break;
  }

  v62 = __CFADD__(v95++, 1);
  if (!v62)
  {
LABEL_251:
    if (v21 < 1)
    {
      goto LABEL_263;
    }

    goto LABEL_255;
  }

LABEL_318:
  __break(1u);
LABEL_319:
  __break(1u);
LABEL_320:
  __break(1u);
LABEL_321:
  __break(1u);
LABEL_322:
  __break(1u);
LABEL_323:
  __break(1u);
LABEL_324:
  __break(1u);
LABEL_325:
  swift_once();
LABEL_296:
  v80 = qword_27F23D658;
LABEL_297:
  v83 = 0;
  v82 = 0;
  v84 = MEMORY[0x277D84F90];
  v85 = MEMORY[0x277D84F90];
  v81 = MEMORY[0x277D84F90];
LABEL_298:
  *a5 = v84;
  *(a5 + 8) = v85;
  *(a5 + 16) = v81;
  *(a5 + 24) = v80;
  *(a5 + 32) = v83 & 1;
  *(a5 + 40) = v82;
}

void MetricsPagePresenter.observe(lifecycleEvent:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B5C8);
  MEMORY[0x28223BE20](v5 - 8);
  v56 = &v55 - v6;
  v60 = sub_24F9287F8();
  v59 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F929FB8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24F91F648();
  v57 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v55 - v17;
  v19 = type metadata accessor for StoreViewControllerLifecycleEvent();
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24EBFE108(a1, v21);
  v58 = v10;
  v22 = (*(v10 + 48))(v21, 11, v9);
  if (v22 > 6)
  {
    if (v22 <= 8)
    {
      v25 = v61;
      if (v22 == 7)
      {
        sub_24F928798();
        (*(*(v25 + 8) + 8))(v8, a2);
        goto LABEL_50;
      }

      (*(v61 + 80))(a2, v61);
      ImpressionsCalculator.isVisible.setter();

      if (qword_27F210278 != -1)
      {
        swift_once();
      }

      v24 = off_27F229AB8;
      v24[9] = (*(v25 + 40))(a2, v25);
      v24[10] = v26;
    }

    else
    {
      v23 = v61;
      if (v22 == 9)
      {
        sub_24EBFDE4C(a2, v61);
        if (!(*(v23 + 136))(a2, v23))
        {
          return;
        }

        MetricsPageEnterGate.hasAppeared.setter(1);
        goto LABEL_46;
      }

      if (v22 == 10)
      {
        v53 = (*(v61 + 136))(a2, v61);
        if (v53)
        {
          v54 = v53;
          swift_beginAccess();
          *(v54 + 32) = 0;
        }

        sub_24F9287C8();
        (*(*(v23 + 8) + 8))(v8, a2);
        (*(v59 + 8))(v8, v60);
        if (qword_27F210278 != -1)
        {
          swift_once();
        }

        sub_24EB6AC9C(0);
        return;
      }

      if (v22 != 11)
      {
LABEL_56:
        sub_24EBFE16C(v21);
        return;
      }

      (*(v61 + 80))(a2, v61);
      ImpressionsCalculator.isVisible.setter();

      if (qword_27F210278 != -1)
      {
        swift_once();
      }

      v24 = off_27F229AB8;
      *(off_27F229AB8 + 9) = 0;
      v24[10] = 0;
    }

    swift_beginAccess();
    *(v24 + 88) = 2;
    return;
  }

  if (v22 <= 2)
  {
    if (!v22)
    {
      v27 = v12;
      (*(v58 + 32))(v12, v21, v9);
      v28 = v61;
      v29 = (*(v61 + 136))(a2, v61);
      if (v29)
      {
        v30 = v29;
        swift_beginAccess();
        *(v30 + 32) = 0;
      }

      sub_24F9287C8();
      (*(*(v28 + 8) + 8))(v8, a2);
      (*(v59 + 8))(v8, v60);
      if (qword_27F210278 != -1)
      {
        swift_once();
      }

      v31 = off_27F229AB8;
      sub_24EB6AC9C(0);
      v32 = (*(v28 + 96))(a2, v28);
      if (v32)
      {
        v33 = v32;
        v34 = v56;
        (*(v58 + 16))(v56, v27, v9);
        sub_24F91F638();
        sub_24F91F5E8();
        v36 = v35;
        (*(v57 + 8))(v15, v13);
        v37 = type metadata accessor for PendingPageRender.DisappearTimeAndReason(0);
        *(v34 + *(v37 + 20)) = v36;
        (*(*(v37 - 8) + 56))(v34, 0, 1, v37);
        v38 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_disappearTime;
        swift_beginAccess();
        sub_24EBFE1C8(v34, v33 + v38);
        swift_endAccess();
        sub_24ED71208();

        sub_24E601704(v34, &qword_27F22B5C8);
      }

      v39 = v61;
      if ((*(v61 + 104))(a2, v61))
      {
        sub_24F92A0B8();
      }

      (*(v39 + 80))(a2, v39);
      ImpressionsCalculator.isVisible.setter();

      v31[9] = 0;
      v31[10] = 0;

      swift_beginAccess();
      *(v31 + 88) = 2;
      (*(v58 + 8))(v27, v9);
      v63 = 0;
      memset(v62, 0, sizeof(v62));
      swift_beginAccess();
      sub_24EB6B058(v62, (v31 + 13));
      swift_endAccess();
      return;
    }

    if (v22 == 1)
    {
      sub_24EBFDE4C(a2, v61);
      return;
    }

    goto LABEL_56;
  }

  if (v22 != 3)
  {
    if (v22 != 5)
    {
      if (v22 == 6)
      {
        if (!(*(v61 + 136))(a2))
        {
          return;
        }

        MetricsPageEnterGate.hasExitedWhileAppeared.setter(0);
LABEL_46:

        return;
      }

      goto LABEL_56;
    }

    v50 = v61;
    v51 = (*(v61 + 136))(a2, v61);
    if (v51)
    {
      v52 = v51;
      swift_beginAccess();
      *(v52 + 33) = 1;
    }

    sub_24F9287A8();
    (*(*(v50 + 8) + 8))(v8, a2);
LABEL_50:
    (*(v59 + 8))(v8, v60);
    return;
  }

  v40 = v61;
  sub_24EBFDE4C(a2, v61);
  if ((*(v40 + 136))(a2, v40))
  {
    MetricsPageEnterGate.hasAppeared.setter(1);
  }

  v41 = (*(v61 + 96))(a2);
  if (v41)
  {
    v42 = v41;
    sub_24F91F638();
    sub_24F91F5E8();
    v44 = v43;
    (*(v57 + 8))(v18, v13);
    v45 = v42 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_appearTime;
    swift_beginAccess();
    *v45 = v44;
    *(v45 + 8) = 0;
    v46 = *(v42 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasAppearTime);
    swift_beginAccess();
    *(v46 + 40) = 1;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_24EA6BFA0();
    }
  }

  v47 = v61;
  if ((*(v61 + 104))(a2, v61))
  {
    sub_24F92A0A8();
  }

  (*(v47 + 80))(a2, v47);
  ImpressionsCalculator.isVisible.setter();

  if (qword_27F210278 != -1)
  {
    swift_once();
  }

  v48 = off_27F229AB8;
  v48[9] = (*(v47 + 40))(a2, v47);
  v48[10] = v49;

  (*(v47 + 160))(v62, a2, v47);
  swift_beginAccess();
  sub_24EB6B058(v62, (v48 + 13));
  swift_endAccess();
}

uint64_t sub_24EBFCDC0(unint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MetricsPagePresenter.sendEventsFor(invocationPoint:)(a1, a2, WitnessTable);
}

uint64_t MetricsPagePresenter.sendEventsFor(invocationPoint:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v116 = a1;
  v110 = sub_24F927D88();
  v109 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v107 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_24F927DC8();
  v106 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v105 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_24F927D98();
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v102 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F929158();
  v113 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v118 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v93 - v12;
  v14 = sub_24F9287F8();
  v117 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v93 - v18;
  v119 = sub_24F928818();
  v20 = *(v119 - 8);
  v21 = MEMORY[0x28223BE20](v119);
  v23 = &v93 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(a3 + 32);
  v122 = v3;
  v123 = a2;
  v121 = a3;
  v115 = a3 + 32;
  v114 = v24;
  (v24)(&aBlock, a2, a3, v21);
  if (!v129)
  {
    return sub_24E601704(&aBlock, &qword_27F224F98);
  }

  v120 = v13;
  v101 = v9;
  __swift_project_boxed_opaque_existential_1(&aBlock, v129);
  sub_24F92AD48();
  v100 = sub_24F928768();
  v25 = v119;
  v95 = *(v20 + 8);
  v95(v23, v119);
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v26 = v117;
  v27 = *(v117 + 16);
  v99 = v117 + 16;
  v98 = v27;
  v27(v19, v116, v14);
  sub_24F9287E8();
  sub_24EC004D4(&qword_27F21E610, MEMORY[0x277D21BE0]);
  v97 = v19;
  v28 = v14;
  v29 = sub_24F92AFF8();
  v30 = *(v26 + 8);
  v30(v16, v14);
  v94 = v23;
  v93 = v20 + 8;
  if (v29)
  {
    v31 = v25;
    v32 = v23;
    v33 = v97;
    v97 = v28;
    v30(v33, v28);
    if (qword_27F210278 != -1)
    {
      swift_once();
      v32 = v94;
      v31 = v119;
    }

    v34 = off_27F229AB8;
    v114(&aBlock);
    if (v129)
    {
      __swift_project_boxed_opaque_existential_1(&aBlock, v129);
      sub_24F92AD48();
      v35 = sub_24F9286C8();
      v95(v32, v31);
      __swift_destroy_boxed_opaque_existential_1(&aBlock);
    }

    else
    {
      sub_24E601704(&aBlock, &qword_27F224F98);
      v35 = 0;
    }

    v39 = &qword_27F210000;
    v14 = v97;
    sub_24EB6AC9C(v35);
    swift_beginAccess();
    v47 = v34[20];
    if (v47 != 2 && (v47 != 1 || v34[26] != 1))
    {
      v49 = sub_24EB6B1B0();
      if (*(v48 + 8) != 2)
      {
        *(v48 + 90) = 1;
      }

      (v49)(v124, 0);
    }

LABEL_31:
    v41 = v121;
    goto LABEL_32;
  }

  sub_24F9287C8();
  v37 = v97;
  v38 = sub_24F92AFF8();
  v30(v16, v14);
  if (v38)
  {
    v30(v37, v14);
    v39 = &qword_27F210000;
    if (qword_27F210278 != -1)
    {
      swift_once();
    }

    sub_24EB6CB08();
    goto LABEL_31;
  }

  v39 = &qword_27F210000;
  if (qword_27F210040 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v14, qword_27F2230B8);
  v40 = sub_24F92AFF8();
  v30(v37, v14);
  v41 = v121;
  if ((v40 & 1) == 0)
  {
    goto LABEL_32;
  }

  if (*(*((*(v121 + 80))(v123, v121) + 16) + 16))
  {

    v42 = sub_24F929BA8();

    v41 = v121;

    if (v42)
    {
      if (qword_27F210278 != -1)
      {
        swift_once();
      }

      (v114)(&aBlock, v123, v121);
      v43 = v119;
      if (v129)
      {
        __swift_project_boxed_opaque_existential_1(&aBlock, v129);
        v44 = v94;
        sub_24F92AD48();
        v45 = sub_24F9286C8();
        v46 = v44;
        v39 = &qword_27F210000;
        v95(v46, v43);
        __swift_destroy_boxed_opaque_existential_1(&aBlock);
      }

      else
      {
        sub_24E601704(&aBlock, &qword_27F224F98);
        v45 = 0;
      }

      sub_24EB6AC9C(v45);
      goto LABEL_31;
    }
  }

  else
  {
  }

LABEL_32:
  v50 = v14;
  v51 = v116;
  if (v39[79] != -1)
  {
    swift_once();
  }

  v52 = off_27F229AB8;
  swift_beginAccess();
  v53 = *(v52 + 242);
  v54 = v52[20] != 2;
  v55 = v123;
  (*(v41 + 88))(v123, v41);
  v56 = *(v41 + 64);
  v57 = v56(v55, v41);
  swift_getObjectType();
  v58 = swift_conformsToProtocol2();
  if (v58 && v57)
  {
    v59 = v58;
    ObjectType = swift_getObjectType();
    v61 = (*(v59 + 16))(ObjectType, v59);
    v97 = v62;
    swift_unknownObjectRelease();
    v63 = v121;
    v64 = v123;
  }

  else
  {
    swift_unknownObjectRelease();
    v64 = v123;
    v63 = v121;
    v61 = v56(v123, v121);
    v97 = v65;
  }

  v66 = v119;
  v96 = v54 & v53;
  swift_unknownObjectRetain();
  (v114)(&aBlock, v64, v63);
  v119 = v61;
  if (v129)
  {
    __swift_project_boxed_opaque_existential_1(&aBlock, v129);
    v67 = v94;
    sub_24F92AD48();
    v115 = sub_24F9286C8();
    v95(v67, v66);
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
  }

  else
  {
    sub_24E601704(&aBlock, &qword_27F224F98);
    v115 = 0;
  }

  v68 = v50;
  v98(v16, v51, v50);
  v69 = v113;
  v70 = v101;
  (*(v113 + 16))(v118, v120, v101);
  v71 = v117;
  v72 = (*(v117 + 80) + 40) & ~*(v117 + 80);
  v73 = (v111 + v72 + 7) & 0xFFFFFFFFFFFFFFF8;
  v116 = (v73 + 15) & 0xFFFFFFFFFFFFFFF8;
  v74 = (v73 + 39) & 0xFFFFFFFFFFFFFFF8;
  v75 = (*(v69 + 80) + v74 + 8) & ~*(v69 + 80);
  v76 = swift_allocObject();
  v77 = v121;
  *(v76 + 2) = v123;
  *(v76 + 3) = v77;
  *(v76 + 4) = v100;
  (*(v71 + 32))(&v76[v72], v16, v68);
  *&v76[v73] = v122;
  v78 = &v76[v116];
  v79 = v118;
  v80 = v97;
  *v78 = v119;
  *(v78 + 1) = v80;
  v78[16] = v96;
  *&v76[v74] = v115;
  (*(v69 + 32))(&v76[v75], v79, v70);
  swift_unknownObjectRetain();
  if (ASKBuildTypeIsUnitTesting())
  {
    sub_24E74EC40();
    v81 = v103;
    v82 = v102;
    v83 = v104;
    (*(v103 + 104))(v102, *MEMORY[0x277D851C8], v104);
    v123 = sub_24F92BF48();
    (*(v81 + 8))(v82, v83);
    v84 = swift_allocObject();
    *(v84 + 16) = sub_24EBFFEF4;
    *(v84 + 24) = v76;
    v130 = sub_24EC00064;
    v131 = v84;
    aBlock = MEMORY[0x277D85DD0];
    v127 = 1107296256;
    v128 = sub_24EAF8248;
    v129 = &block_descriptor_6_2;
    v85 = _Block_copy(&aBlock);

    v86 = v105;
    sub_24F927DA8();
    v125 = MEMORY[0x277D84F90];
    sub_24EC004D4(&qword_27F222930, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
    sub_24E8582A8();
    v87 = v107;
    v88 = v110;
    sub_24F92C6A8();
    v89 = v123;
    MEMORY[0x2530518B0](0, v86, v87, v85);
    _Block_release(v85);

    swift_unknownObjectRelease();

    (*(v109 + 8))(v87, v88);
    (*(v106 + 8))(v86, v108);
    (*(v69 + 8))(v120, v70);
  }

  else
  {
    v90 = [objc_opt_self() processInfo];
    v91 = sub_24F92B098();
    v130 = sub_24EBFFEF4;
    v131 = v76;
    aBlock = MEMORY[0x277D85DD0];
    v127 = 1107296256;
    v128 = sub_24EBFFB64;
    v129 = &block_descriptor_59;
    v92 = _Block_copy(&aBlock);

    [v90 performExpiringActivityWithReason:v91 usingBlock:v92];
    swift_unknownObjectRelease();
    _Block_release(v92);

    return (*(v69 + 8))(v120, v70);
  }
}

uint64_t sub_24EBFDE4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F929AB8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 112);
  v9(a1, a2, v6);
  if (v10)
  {
LABEL_2:
  }

  v21 = v5;
  v22 = v4;
  if (qword_27F210278 != -1)
  {
    swift_once();
  }

  v12 = *(off_27F229AB8 + 3);
  v13 = *(off_27F229AB8 + 4);
  v14 = *(a2 + 120);

  v14(v12, v13, a1, a2);
  result = (v9)(a1, a2);
  if (v15)
  {
    v16 = result;
    v17 = v15;
    v18 = (*(a2 + 104))(a1, a2);
    v19 = v22;
    if (!v18)
    {
      goto LABEL_2;
    }

    if (qword_27F210658 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v19, qword_27F22E3B8);
    v23 = v16;
    v24 = v17;
    if (qword_27F210670 != -1)
    {
      swift_once();
    }

    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C910);
    __swift_project_value_buffer(v20, qword_27F22E400);
    sub_24F929A48();

    sub_24F92A098();

    return (*(v21 + 8))(v8, v19);
  }

  return result;
}

uint64_t sub_24EBFE108(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StoreViewControllerLifecycleEvent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EBFE16C(uint64_t a1)
{
  v2 = type metadata accessor for StoreViewControllerLifecycleEvent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24EBFE1C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B5C8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_24EBFE238(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v81 = a8;
  LODWORD(v97) = a7;
  v80 = a6;
  v79 = a5;
  v93 = a4;
  v100 = a3;
  v78 = sub_24F927D88();
  v13 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v77 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_24F927DC8();
  v96 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v75 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_24F929158();
  v82 = *(v92 - 8);
  v16 = *(v82 + 64);
  MEMORY[0x28223BE20](v92);
  v91 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24F9287F8();
  v59 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_24F928738();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v90 = &v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v58 - v24;
  if ((a1 & 1) == 0)
  {
    v89 = dispatch_group_create();
    v88 = *(a2 + 16);
    if (v88)
    {
      v26 = 0;
      v29 = *(v21 + 16);
      v27 = v21 + 16;
      v28 = v29;
      v30 = *(v27 + 64);
      v73 = ~v30;
      v87 = a2 + ((v30 + 32) & ~v30);
      v98 = (v59 + 8);
      v99 = v59 + 16;
      v86 = (v27 - 8);
      v72 = a11;
      v71 = a11 + 160;
      v70 = a10;
      v69 = a9;
      v68 = v82 + 16;
      v74 = v30;
      v67 = v16 + v30;
      v66 = v22 + 7;
      v65 = v97 & 1;
      v64 = v82 + 32;
      v63 = (v27 + 16);
      v62 = v102;
      v61 = (v13 + 8);
      v60 = (v96 + 8);
      v85 = *(v27 + 56);
      v96 = v27;
      v95 = v25;
      v94 = v29;
      v84 = v20;
      while (1)
      {
        v97 = v26;
        v28(v25, v87 + v85 * v26, v20);
        v31 = *(sub_24F9286D8() + 16);

        if (!v31)
        {
          goto LABEL_14;
        }

        v32 = sub_24F9286D8();
        if (*(v32 + 16))
        {
          sub_24EC004D4(&qword_27F21E608, MEMORY[0x277D21BE0]);
          v33 = sub_24F92AEE8();
          v34 = -1 << *(v32 + 32);
          v35 = v33 & ~v34;
          if ((*(v32 + 56 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35))
          {
            break;
          }
        }

LABEL_4:

        v25 = v95;
        (*v86)(v95, v20);
LABEL_5:
        v26 = v97 + 1;
        v28 = v94;
        if (v97 + 1 == v88)
        {
          goto LABEL_15;
        }
      }

      v36 = ~v34;
      v37 = *(v59 + 72);
      v38 = *(v59 + 16);
      while (1)
      {
        v38(v19, *(v32 + 48) + v37 * v35, v17);
        sub_24EC004D4(&qword_27F21E610, MEMORY[0x277D21BE0]);
        v39 = sub_24F92AFF8();
        (*v98)(v19, v17);
        if (v39)
        {
          break;
        }

        v35 = (v35 + 1) & v36;
        if (((*(v32 + 56 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      v25 = v95;
      v28 = v94;
LABEL_14:
      dispatch_group_enter(v89);
      v40 = v72;
      v41 = v70;
      (*(v72 + 160))(&v105, v70, v72);
      sub_24E74EC40();
      v83 = sub_24F92BEF8();
      sub_24E60169C(&v105, v103, &qword_27F224FA0);
      v42 = v82;
      (*(v82 + 16))(v91, v69, v92);
      v28(v90, v25, v84);
      v43 = (*(v42 + 80) + 112) & ~*(v42 + 80);
      v44 = (v67 + v43) & v73;
      v45 = (v66 + v44) & 0xFFFFFFFFFFFFFFF8;
      v46 = swift_allocObject();
      v47 = v103[1];
      *(v46 + 72) = v103[0];
      *(v46 + 16) = v41;
      *(v46 + 24) = v40;
      v48 = v80;
      *(v46 + 32) = v79;
      *(v46 + 40) = v48;
      *(v46 + 48) = v93;
      *(v46 + 56) = v65;
      *(v46 + 64) = v81;
      *(v46 + 88) = v47;
      *(v46 + 104) = v104;
      v49 = *(v42 + 32);
      v20 = v84;
      v49(v46 + v43, v91, v92);
      (*v63)(v46 + v44, v90, v20);
      v50 = v89;
      *(v46 + v45) = v89;
      v102[2] = sub_24EC003B8;
      v102[3] = v46;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v102[0] = sub_24EAF8248;
      v102[1] = &block_descriptor_12_4;
      v51 = _Block_copy(aBlock);
      v25 = v95;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();

      v52 = v50;

      v53 = v75;
      sub_24F927DA8();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_24EC004D4(&qword_27F222930, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
      sub_24E8582A8();
      v54 = v77;
      v55 = v78;
      sub_24F92C6A8();
      v56 = v83;
      MEMORY[0x2530518B0](0, v53, v54, v51);
      _Block_release(v51);

      (*v61)(v54, v55);
      (*v60)(v53, v76);
      sub_24E601704(&v105, &qword_27F224FA0);
      (*v86)(v25, v20);
      goto LABEL_5;
    }

LABEL_15:
    v57 = v89;
    sub_24F92BE58();
  }
}

uint64_t sub_24EBFEC94(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11)
{
  v73 = a8;
  v74 = a7;
  v68 = a5;
  v66 = a4;
  v64 = a2;
  v72 = sub_24F928698();
  v71 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v70 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225030);
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v59 = &v57 - v15;
  v16 = sub_24F929AB8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v57 - v21;
  v24 = MEMORY[0x28223BE20](v23);
  v69 = &v57 - v25;
  v57 = (*(a11 + 112))(a10, a11, v24);
  v78 = v26;
  v58 = (*(a11 + 40))(a10, a11);
  v77 = v27;
  if (qword_27F210278 != -1)
  {
    swift_once();
  }

  v28 = off_27F229AB8;
  swift_beginAccess();
  v65 = *(v28 + 88);
  sub_24E60169C(a6, &v83, &qword_27F224FA0);
  if (v84)
  {
    sub_24E612C80(&v83, v85);
  }

  else
  {
    (*(a11 + 160))(v85, a10, a11);
    if (v84)
    {
      sub_24E601704(&v83, &qword_27F224FA0);
    }
  }

  (*(a11 + 168))(&v83, a10, a11);
  swift_beginAccess();
  v29 = v28[18];
  v30 = *(a11 + 184);
  v76 = v29;

  v67 = v30(a10, a11);
  v63 = v31;
  v75 = (*(a11 + 176))(a10, a11);
  v62 = v32;
  sub_24F929AA8();
  v33 = qword_27F210660;
  swift_unknownObjectRetain();
  if (v33 != -1)
  {
    swift_once();
  }

  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225038);
  __swift_project_value_buffer(v34, qword_27F22E3D0);
  v81 = a1;
  v82 = v64;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225040);
  sub_24F929A48();
  v35 = *(v17 + 8);
  v35(v22, v16);
  swift_unknownObjectRelease();
  v36 = *(v17 + 32);
  v36(v22, v19, v16);
  if (v78)
  {
    v81 = v57;
    v82 = v78;
    if (qword_27F210670 != -1)
    {
      swift_once();
    }

    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C910);
    __swift_project_value_buffer(v37, qword_27F22E400);
    sub_24F929A48();
    v35(v22, v16);
    v36(v22, v19, v16);
  }

  if (v77)
  {
    v81 = v58;
    v82 = v77;
    if (qword_27F210678 != -1)
    {
      swift_once();
    }

    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C910);
    __swift_project_value_buffer(v38, qword_27F22E418);
    sub_24F929A48();
    v35(v22, v16);
    v36(v22, v19, v16);
  }

  LOBYTE(v81) = v66 & 1;
  if (qword_27F210680 != -1)
  {
    swift_once();
  }

  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225048);
  __swift_project_value_buffer(v39, qword_27F22E430);
  sub_24F929A48();
  v35(v22, v16);
  v36(v22, v19, v16);
  if (v68)
  {
    v81 = v68;
    v40 = v59;
    sub_24F929A78();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730);
    sub_24F929A48();
    (*(v60 + 8))(v40, v61);
    v35(v22, v16);
    v36(v22, v19, v16);
  }

  if (v65 != 2)
  {
    LOBYTE(v81) = v65 & 1;
    if (qword_27F210688 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v39, qword_27F22E448);
    sub_24F929A48();
    v35(v22, v16);
    v36(v22, v19, v16);
  }

  sub_24E60169C(v85, &v79, &qword_27F224FA0);
  if (v80)
  {
    sub_24E612C80(&v79, &v81);
    v41 = v67;
    if (qword_27F210690 != -1)
    {
      swift_once();
    }

    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225078);
    __swift_project_value_buffer(v42, qword_27F22E460);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225080);
    sub_24F929A48();
    __swift_destroy_boxed_opaque_existential_1(&v81);
    v35(v22, v16);
    v36(v22, v19, v16);
  }

  else
  {
    sub_24E601704(&v79, &qword_27F224FA0);
    v41 = v67;
  }

  v43 = v76;
  sub_24E60169C(&v83, &v79, qword_27F224FA8);
  if (!v80)
  {
    sub_24E601704(&v79, qword_27F224FA8);
    if (!v43)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  sub_24E612C80(&v79, &v81);
  if (qword_27F210698 != -1)
  {
    swift_once();
  }

  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225068);
  __swift_project_value_buffer(v44, qword_27F22E478);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225070);
  sub_24F929A48();
  __swift_destroy_boxed_opaque_existential_1(&v81);
  v35(v22, v16);
  v36(v22, v19, v16);
  if (v43)
  {
LABEL_36:
    v81 = v43;
    v45 = qword_27F2106B0;

    if (v45 != -1)
    {
      swift_once();
    }

    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224460);
    __swift_project_value_buffer(v46, qword_27F22E4C0);
    type metadata accessor for Action();
    sub_24F929A48();
    v35(v22, v16);

    v36(v22, v19, v16);
  }

LABEL_39:
  if (v75)
  {
    v81 = v75;
    v82 = v62;
    v47 = qword_27F2106A8;
    swift_unknownObjectRetain();
    if (v47 != -1)
    {
      swift_once();
    }

    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225058);
    __swift_project_value_buffer(v48, qword_27F22E4A8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225060);
    sub_24F929A48();
    v35(v22, v16);
    swift_unknownObjectRelease();
    v36(v22, v19, v16);
  }

  if (v41)
  {
    v81 = v41;
    v82 = v63;
    v49 = qword_27F2106A0;
    swift_unknownObjectRetain();
    if (v49 != -1)
    {
      swift_once();
    }

    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225050);
    __swift_project_value_buffer(v50, qword_27F22E490);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F90);
    sub_24F929A48();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v35(v22, v16);
    sub_24E601704(&v83, qword_27F224FA8);
    sub_24E601704(v85, &qword_27F224FA0);
    swift_unknownObjectRelease();
    v36(v22, v19, v16);
  }

  else
  {

    swift_unknownObjectRelease();

    sub_24E601704(&v83, qword_27F224FA8);
    sub_24E601704(v85, &qword_27F224FA0);
  }

  v51 = v69;
  v36(v69, v22, v16);
  v52 = v70;
  sub_24F928718();
  sub_24F929138();
  (*(v71 + 8))(v52, v72);
  *(swift_allocObject() + 16) = a9;
  v53 = sub_24E74EC40();
  v54 = a9;
  v55 = sub_24F92BEF8();
  v85[3] = v53;
  v85[4] = MEMORY[0x277D225C0];
  v85[0] = v55;
  sub_24F92A998();

  v35(v51, v16);
  return __swift_destroy_boxed_opaque_existential_1(v85);
}

uint64_t sub_24EBFFB64(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t MetricsPagePresenter.prepareToObserveAssets(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(a4 + 96))(a3, a4))
  {
    PendingPageRender.observeAssets(_:)(a1, a2);
  }

  ObjectType = swift_getObjectType();
  v9 = (*(a4 + 104))(a3, a4);
  (*(a2 + 56))(v9, ObjectType, a2);
  return (*(a2 + 72))(ObjectType, a2);
}

uint64_t sub_24EBFFCF8(unint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MetricsPagePresenter.sendEventsFor(invocationPoint:)(a1, a2, WitnessTable);
}

uint64_t sub_24EBFFD58()
{
  v1 = sub_24F9287F8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_24F929158();
  v6 = *(v5 - 8);
  v7 = (((v4 + 39) & 0xFFFFFFFFFFFFFFF8) + *(v6 + 80) + 8) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

void sub_24EBFFEF4(char a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = *(sub_24F9287F8() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_24F929158() - 8);
  sub_24EBFE238(a1, v1[4], v1 + v6, *(v1 + v7), *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 16), *(v1 + ((v7 + 39) & 0xFFFFFFFFFFFFFFF8)), v1 + ((((v7 + 39) & 0xFFFFFFFFFFFFFFF8) + *(v8 + 80) + 8) & ~*(v8 + 80)), v3, v4);
}

uint64_t block_copy_helper_59(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24EC0002C()
{

  return swift_deallocObject();
}

uint64_t sub_24EC00234()
{
  v1 = sub_24F929158();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_24F928738();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  if (*(v0 + 96))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 72);
  }

  v9 = (v3 + 112) & ~v3;
  v10 = (v9 + v4 + v7) & ~v7;
  (*(v2 + 8))(v0 + v9, v1);
  (*(v6 + 8))(v0 + v10, v5);

  return swift_deallocObject();
}

uint64_t sub_24EC003B8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(sub_24F929158() - 8);
  v4 = (*(v3 + 80) + 112) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_24F928738() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  return sub_24EBFEC94(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), v0 + 72, v0 + v4, v0 + v7, *(v0 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8)), v1, v2);
}

uint64_t sub_24EC004D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24EC0051C()
{

  return swift_deallocObject();
}

uint64_t MSODiffablePageContentPresenter.__allocating_init(objectGraph:pageUrl:sidePackedPage:pendingPageRender:pageRenderMetrics:context:personalizationProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _OWORD *a6, uint64_t a7)
{
  v68 = a3;
  v74 = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v67 - v13;
  v69 = &v67 - v13;
  v15 = swift_allocObject();
  v16 = (v15 + qword_27F22B5D0);
  v17 = a6[1];
  *v16 = *a6;
  v16[1] = v17;
  *(v15 + qword_27F22B5D8) = a7;
  v73 = a2;
  sub_24E99091C(a2, v14);
  *(v15 + qword_27F22F198) = 0;
  v18 = MEMORY[0x277D84F90];
  *(v15 + qword_27F22F1A0) = MEMORY[0x277D84F90];
  v19 = qword_27F39C780;
  v72 = a5;

  v70 = a7;

  v71 = a4;

  *(v15 + v19) = sub_24E60986C(v18);
  v20 = (v15 + qword_27F22F1A8);
  *v20 = 0;
  v20[1] = 0;
  v21 = (v15 + qword_27F22F1B0);
  *v21 = 0;
  v21[1] = 0;
  v22 = (v15 + qword_27F22F1B8);
  *v22 = 0;
  v22[1] = 0;
  v23 = (v15 + qword_27F22F1C0);
  *v23 = 0;
  v23[1] = 0;
  v24 = (v15 + qword_27F22F1C8);
  *v24 = 0;
  v24[1] = 0;
  v25 = (v15 + qword_27F39C788);
  *v25 = 0u;
  v25[1] = 0u;
  *(v25 + 25) = 0u;
  *(v15 + qword_27F39C790) = 0;
  *(v15 + qword_27F22F1D0) = 0;
  *(v15 + qword_27F22F1D8) = MEMORY[0x277D84FA0];
  *(v15 + qword_27F39C798) = 0;
  v26 = qword_27F39C7A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222A40);
  swift_allocObject();
  *(v15 + v26) = sub_24F92ADA8();
  v27 = qword_27F39C7A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226B8);
  swift_allocObject();
  *(v15 + v27) = sub_24F92ADA8();
  v28 = qword_27F39C7B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222A48);
  swift_allocObject();
  *(v15 + v28) = sub_24F92ADA8();
  v29 = qword_27F39C7B8;
  swift_allocObject();
  *(v15 + v29) = sub_24F92ADA8();
  v30 = qword_27F39C7C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8);
  swift_allocObject();
  *(v15 + v30) = sub_24F92ADA8();
  v31 = qword_27F39C7C8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D0);
  swift_allocObject();
  *(v15 + v31) = sub_24F92ADA8();
  v32 = qword_27F22F1E0;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D8);
  v34 = *(*(v33 - 8) + 56);
  v34(v15 + v32, 1, 1, v33);
  v34(v15 + qword_27F22F1E8, 1, 1, v33);
  *(v15 + 16) = v74;
  sub_24E911D90(v69, v15 + qword_27F39C7D0);
  v35 = *v20;
  *v20 = 0;
  v20[1] = 0;
  v36 = v68;
  sub_24E824448(v35);
  v37 = *v22;
  *v22 = 0;
  v22[1] = 0;
  sub_24E824448(v37);
  if (v36)
  {
    v38 = swift_allocObject();
    *(v38 + 16) = v36;
    v39 = sub_24E965688;
  }

  else
  {
    v39 = 0;
    v38 = 0;
  }

  v40 = *v21;
  *v21 = v39;
  v21[1] = v38;
  sub_24E824448(v40);
  v41 = *v23;
  *v23 = 0;
  v23[1] = 0;
  sub_24E824448(v41);
  v42 = *v24;
  *v24 = 0;
  v24[1] = 0;
  sub_24E824448(v42);
  v43 = v72;
  *(v15 + qword_27F22F1F0) = v71;
  *(v15 + qword_27F39C7D8) = v43;
  v44 = swift_allocObject();
  *(v44 + 16) = v36;
  v45 = swift_allocObject();
  swift_weakInit();
  v46 = swift_allocObject();
  *(v46 + 16) = sub_24EC026C4;
  *(v46 + 24) = v45;
  v47 = swift_allocObject();
  *(v47 + 16) = sub_24E94DEE8;
  *(v47 + 24) = v46;
  v48 = (v15 + qword_27F22F1A8);
  v49 = *(v15 + qword_27F22F1A8);
  *v48 = sub_24E965630;
  v48[1] = v47;

  sub_24E824448(v49);
  v50 = swift_allocObject();
  *(v50 + 16) = sub_24E94E064;
  *(v50 + 24) = v44;
  v51 = swift_allocObject();
  *(v51 + 16) = sub_24E94DF50;
  *(v51 + 24) = v50;
  v52 = (v15 + qword_27F22F1B0);
  v53 = *(v15 + qword_27F22F1B0);
  *v52 = sub_24E965648;
  v52[1] = v51;

  sub_24E824448(v53);
  v54 = (v15 + qword_27F22F1B8);
  v56 = *(v15 + qword_27F22F1B8);
  v55 = *(v15 + qword_27F22F1B8 + 8);
  if (v56)
  {
    v57 = swift_allocObject();
    *(v57 + 16) = v56;
    *(v57 + 24) = v55;
    v58 = swift_allocObject();
    *(v58 + 16) = sub_24E94DFB8;
    *(v58 + 24) = v57;
    v59 = sub_24E965640;
  }

  else
  {
    v59 = 0;
    v58 = *(v15 + qword_27F22F1B8 + 8);
  }

  *v54 = v59;
  v54[1] = v58;
  sub_24E5FCA4C(v56);
  sub_24E824448(v56);
  v60 = (v15 + qword_27F22F1C8);
  v62 = *(v15 + qword_27F22F1C8);
  v61 = *(v15 + qword_27F22F1C8 + 8);
  if (v62)
  {
    v63 = swift_allocObject();
    *(v63 + 16) = v62;
    *(v63 + 24) = v61;
    v64 = swift_allocObject();
    *(v64 + 16) = sub_24E94DEE8;
    *(v64 + 24) = v63;
    v65 = sub_24E965630;
  }

  else
  {
    v65 = 0;
    v64 = *(v15 + qword_27F22F1C8 + 8);
  }

  *v60 = v65;
  v60[1] = v64;
  sub_24E5FCA4C(v62);
  sub_24E824448(v62);

  sub_24E601704(v73, &qword_27F228530);
  return v15;
}

uint64_t MSODiffablePageContentPresenter.init(objectGraph:pageUrl:sidePackedPage:pendingPageRender:pageRenderMetrics:context:personalizationProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _OWORD *a6, uint64_t a7)
{
  v8 = v7;
  v69 = a3;
  v75 = a1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v68 - v15;
  v70 = &v68 - v15;
  v17 = (v8 + qword_27F22B5D0);
  v18 = a6[1];
  *v17 = *a6;
  v17[1] = v18;
  *(v8 + qword_27F22B5D8) = a7;
  v74 = a2;
  sub_24E99091C(a2, v16);
  *(v8 + qword_27F22F198) = 0;
  v19 = MEMORY[0x277D84F90];
  *(v8 + qword_27F22F1A0) = MEMORY[0x277D84F90];
  v20 = qword_27F39C780;
  v73 = a5;

  v71 = a7;

  v72 = a4;

  *(v8 + v20) = sub_24E60986C(v19);
  v21 = (v8 + qword_27F22F1A8);
  *v21 = 0;
  v21[1] = 0;
  v22 = (v8 + qword_27F22F1B0);
  *v22 = 0;
  v22[1] = 0;
  v23 = (v8 + qword_27F22F1B8);
  *v23 = 0;
  v23[1] = 0;
  v24 = (v8 + qword_27F22F1C0);
  *v24 = 0;
  v24[1] = 0;
  v25 = (v8 + qword_27F22F1C8);
  *v25 = 0;
  v25[1] = 0;
  v26 = (v8 + qword_27F39C788);
  *v26 = 0u;
  v26[1] = 0u;
  *(v26 + 25) = 0u;
  *(v8 + qword_27F39C790) = 0;
  *(v8 + qword_27F22F1D0) = 0;
  *(v8 + qword_27F22F1D8) = MEMORY[0x277D84FA0];
  *(v8 + qword_27F39C798) = 0;
  v27 = qword_27F39C7A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222A40);
  swift_allocObject();
  *(v8 + v27) = sub_24F92ADA8();
  v28 = qword_27F39C7A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226B8);
  swift_allocObject();
  *(v8 + v28) = sub_24F92ADA8();
  v29 = qword_27F39C7B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222A48);
  swift_allocObject();
  *(v8 + v29) = sub_24F92ADA8();
  v30 = qword_27F39C7B8;
  swift_allocObject();
  *(v8 + v30) = sub_24F92ADA8();
  v31 = qword_27F39C7C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8);
  swift_allocObject();
  *(v8 + v31) = sub_24F92ADA8();
  v32 = qword_27F39C7C8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D0);
  swift_allocObject();
  *(v8 + v32) = sub_24F92ADA8();
  v33 = qword_27F22F1E0;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226D8);
  v35 = *(*(v34 - 8) + 56);
  v35(v8 + v33, 1, 1, v34);
  v35(v8 + qword_27F22F1E8, 1, 1, v34);
  *(v8 + 16) = v75;
  sub_24E911D90(v70, v8 + qword_27F39C7D0);
  v36 = *v21;
  *v21 = 0;
  v21[1] = 0;
  sub_24E824448(v36);
  v37 = *v23;
  *v23 = 0;
  v23[1] = 0;
  v38 = v69;
  sub_24E824448(v37);
  if (v38)
  {
    v39 = swift_allocObject();
    *(v39 + 16) = v38;
    v40 = sub_24EC02BCC;
  }

  else
  {
    v40 = 0;
    v39 = 0;
  }

  v41 = *v22;
  *v22 = v40;
  v22[1] = v39;
  sub_24E824448(v41);
  v42 = *v24;
  *v24 = 0;
  v24[1] = 0;
  sub_24E824448(v42);
  v43 = *v25;
  *v25 = 0;
  v25[1] = 0;
  sub_24E824448(v43);
  v44 = v73;
  *(v8 + qword_27F22F1F0) = v72;
  *(v8 + qword_27F39C7D8) = v44;
  v45 = swift_allocObject();
  *(v45 + 16) = v38;
  v46 = swift_allocObject();
  swift_weakInit();
  v47 = swift_allocObject();
  *(v47 + 16) = sub_24EC02BD0;
  *(v47 + 24) = v46;
  v48 = swift_allocObject();
  *(v48 + 16) = sub_24EC02BC0;
  *(v48 + 24) = v47;
  v49 = (v8 + qword_27F22F1A8);
  v50 = *(v8 + qword_27F22F1A8);
  *v49 = sub_24EC02BFC;
  v49[1] = v48;

  sub_24E824448(v50);
  v51 = swift_allocObject();
  *(v51 + 16) = sub_24EC02BD4;
  *(v51 + 24) = v45;
  v52 = swift_allocObject();
  *(v52 + 16) = sub_24EC02BC4;
  *(v52 + 24) = v51;
  v53 = (v8 + qword_27F22F1B0);
  v54 = *(v8 + qword_27F22F1B0);
  *v53 = sub_24EC02BC8;
  v53[1] = v52;

  sub_24E824448(v54);
  v55 = (v8 + qword_27F22F1B8);
  v57 = *(v8 + qword_27F22F1B8);
  v56 = *(v8 + qword_27F22F1B8 + 8);
  if (v57)
  {
    v58 = swift_allocObject();
    *(v58 + 16) = v57;
    *(v58 + 24) = v56;
    v59 = swift_allocObject();
    *(v59 + 16) = sub_24EC02B74;
    *(v59 + 24) = v58;
    v60 = sub_24EC02C00;
  }

  else
  {
    v60 = 0;
    v59 = *(v8 + qword_27F22F1B8 + 8);
  }

  *v55 = v60;
  v55[1] = v59;
  sub_24E5FCA4C(v57);
  sub_24E824448(v57);
  v61 = (v8 + qword_27F22F1C8);
  v63 = *(v8 + qword_27F22F1C8);
  v62 = *(v8 + qword_27F22F1C8 + 8);
  if (v63)
  {
    v64 = swift_allocObject();
    *(v64 + 16) = v63;
    *(v64 + 24) = v62;
    v65 = swift_allocObject();
    *(v65 + 16) = sub_24EC02BC0;
    *(v65 + 24) = v64;
    v66 = sub_24EC02BFC;
  }

  else
  {
    v66 = 0;
    v65 = *(v8 + qword_27F22F1C8 + 8);
  }

  *v61 = v66;
  v61[1] = v65;
  sub_24E5FCA4C(v63);
  sub_24E824448(v63);

  sub_24E601704(v74, &qword_27F228530);
  return v8;
}

uint64_t sub_24EC01448(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v20 - v3;
  v5 = sub_24F91F4A8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v20 - v10;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_4;
  }

  v13 = Strong;
  sub_24E99091C(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {

    sub_24E601704(v4, &qword_27F228530);
LABEL_4:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222A60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222A68);
    sub_24E602068(&qword_27F222A70, &qword_27F222A68);
    swift_allocError();
    *v14 = 0;
    return sub_24F92A978();
  }

  v16 = *(v6 + 32);
  v16(v11, v4, v5);
  sub_24EC017DC();
  (*(v6 + 16))(v8, v11, v5);
  v17 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v13;
  v16((v18 + v17), v8, v5);
  v20[3] = sub_24F929638();
  v20[4] = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(v20);

  sub_24F929628();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222A60);
  sub_24E602068(&qword_27F22B5F0, &qword_27F222A60);
  v19 = sub_24F92A9B8();

  (*(v6 + 8))(v11, v5);
  __swift_destroy_boxed_opaque_existential_1(v20);
  return v19;
}

uint64_t sub_24EC017DC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v15 - v3;
  v5 = (v0 + qword_27F22B5D0);
  v6 = *(v0 + qword_27F22B5D0 + 8);
  if (v6)
  {
    v8 = v5[2];
    v7 = v5[3];
    v9 = *v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B5F8);
    *&v15 = v9;
    *(&v15 + 1) = v6;
    *&v16 = v8;
    *(&v16 + 1) = v7;

    return sub_24F92A988();
  }

  if (!*(v0 + qword_27F22B5D8))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B5F8);
    v15 = 0u;
    v16 = 0u;
    return sub_24F92A988();
  }

  v11 = sub_24F45DB90(&unk_2861C0838);
  sub_24EBDFF44(v11);

  sub_24E99091C(v0 + qword_27F39C7D0, v4);
  v12 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v13 = swift_allocObject();
  sub_24E911D90(v4, v13 + v12);
  *(&v16 + 1) = sub_24F929638();
  v17 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(&v15);
  sub_24F929628();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B600);
  v14 = sub_24F92A938();

  __swift_destroy_boxed_opaque_existential_1(&v15);
  return v14;
}

uint64_t sub_24EC01A2C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v5 = sub_24F91F4A8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MSOPageIntent();
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[1];
  v26 = *a1;
  v13 = a1[2];
  v23 = a1[3];
  type metadata accessor for JSIntentDispatcher();
  v25 = a2;
  v14 = *(a2 + 16);
  sub_24F928FD8();
  sub_24F92A758();
  v24 = v27[0];
  (*(v6 + 16))(v8, v22, v5);
  if (v12)
  {

    v15 = v13;
    v16 = v26;
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  strcpy(v11, "MSOPageIntent");
  *(v11 + 7) = -4864;
  (*(v6 + 32))(&v11[v9[5]], v8, v5);
  v17 = &v11[v9[6]];
  *v17 = v16;
  *(v17 + 1) = v12;
  *&v11[v9[7]] = v15;
  sub_24EB47FE0(v11, v14, "GameStoreKit/MSODiffablePageContentPresenter.swift", 50, 2);
  v18 = swift_allocObject();
  v19 = v26;
  v18[2] = v25;
  v18[3] = v19;
  v18[4] = v12;
  v18[5] = v13;
  v18[6] = v23;
  v27[3] = sub_24F929638();
  v27[4] = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(v27);

  sub_24EBDFD34(v19, v12);
  sub_24F929628();
  type metadata accessor for GenericPage();
  v20 = sub_24F92A938();

  sub_24EC02978(v11);
  __swift_destroy_boxed_opaque_existential_1(v27);
  return v20;
}

uint64_t sub_24EC01D20@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v30 = a6;
  v31 = a3;
  v32 = a5;
  v33 = a7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FAD8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v30 - v14;
  v16 = sub_24F91F4A8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  if (a4)
  {
    sub_24E99091C(a2 + qword_27F39C7D0, v15);
    if ((*(v17 + 48))(v15, 1, v16) == 1)
    {
      sub_24E601704(v15, &qword_27F228530);
    }

    else
    {
      (*(v17 + 32))(v19, v15, v16);

      v21 = v30;

      v36 = sub_24F91F398();
      v37 = v22;
      v34 = v31;
      v35 = a4;
      v23 = sub_24F91F7C8();
      (*(*(v23 - 8) + 56))(v12, 1, 1, v23);
      sub_24E600AEC();

      sub_24F92C5B8();
      v25 = v24;
      sub_24E601704(v12, &qword_27F21FAD8);
      (*(v17 + 8))(v19, v16);

      if ((v25 & 1) == 0)
      {
        v27 = *(v21 + OBJC_IVAR____TtC12GameStoreKit15MSOProviderData_roomUber);

        sub_24EBDFDB8(v31, a4);
        goto LABEL_7;
      }

      sub_24EBDFDB8(v31, a4);
    }
  }

  v26 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber;
  swift_beginAccess();
  v27 = *(v20 + v26);

LABEL_7:
  v28 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_uber;
  swift_beginAccess();
  *(v20 + v28) = v27;

  *v33 = v20;
}

void sub_24EC020C0(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FAD8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v25 - v10;
  v12 = sub_24F91F4A8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[1];
  if (v16)
  {
    v17 = *a1;
    v18 = a1[2];
    v19 = a1[3];
    v25 = v17;
    v26 = v18;
    sub_24E99091C(a2, v11);
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      sub_24E601704(v11, &qword_27F228530);
    }

    else
    {
      (*(v13 + 32))(v15, v11, v12);

      v29 = sub_24F91F398();
      v30 = v20;
      v27 = v25;
      v28 = v16;
      v21 = sub_24F91F7C8();
      (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
      sub_24E600AEC();

      sub_24F92C5B8();
      v23 = v22;
      sub_24E601704(v8, &qword_27F21FAD8);
      (*(v13 + 8))(v15, v12);

      if ((v23 & 1) == 0)
      {
        v24 = v26;
        *a3 = v25;
        a3[1] = v16;
        a3[2] = v24;
        a3[3] = v19;
        return;
      }

      sub_24EBDFDB8(v25, v16);
    }
  }

  *a3 = 0u;
  *(a3 + 1) = 0u;
}

uint64_t sub_24EC02404()
{
  sub_24EBDFDB8(*(v0 + qword_27F22B5D0), *(v0 + qword_27F22B5D0 + 8));
}

uint64_t MSODiffablePageContentPresenter.deinit()
{
  v0 = _s12GameStoreKit39TopChartDiffableSegmentContentPresenterCfd_0();
  sub_24EBDFDB8(*(v0 + qword_27F22B5D0), *(v0 + qword_27F22B5D0 + 8));

  return v0;
}

uint64_t MSODiffablePageContentPresenter.__deallocating_deinit()
{
  v0 = _s12GameStoreKit39TopChartDiffableSegmentContentPresenterCfd_0();
  v1 = *(v0 + qword_27F22B5D0);
  v2 = *(v0 + qword_27F22B5D0 + 8);

  sub_24EBDFDB8(v1, v2);

  return swift_deallocClassInstance();
}

void sub_24EC02558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_24E824448(a10);
  sub_24E824448(a6);
  sub_24E824448(a4);
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t sub_24EC025C0@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_24EC025F0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_24EC02620@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(*a1);
  *a3 = result;
  return result;
}

uint64_t sub_24EC02654()
{

  return swift_deallocObject();
}

uint64_t sub_24EC0268C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24EC026CC()
{

  return swift_deallocObject();
}

uint64_t type metadata accessor for MSODiffablePageContentPresenter()
{
  result = qword_27F22B5E0;
  if (!qword_27F22B5E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EC027C8()
{
  v1 = sub_24F91F4A8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24EC0288C(uint64_t *a1)
{
  v3 = *(sub_24F91F4A8() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_24EC01A2C(a1, v4, v5);
}

uint64_t sub_24EC02900()
{

  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24EC02978(uint64_t a1)
{
  v2 = type metadata accessor for MSOPageIntent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24EC029D4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_24F91F4A8();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

__n128 SearchResultsPageIntent.init(with:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0xD000000000000017;
  *(a2 + 8) = 0x800000024F98BB20;
  v2 = *(a1 + 144);
  *(a2 + 144) = *(a1 + 128);
  *(a2 + 160) = v2;
  *(a2 + 176) = *(a1 + 160);
  v3 = *(a1 + 80);
  *(a2 + 80) = *(a1 + 64);
  *(a2 + 96) = v3;
  v4 = *(a1 + 112);
  *(a2 + 112) = *(a1 + 96);
  *(a2 + 128) = v4;
  v5 = *(a1 + 16);
  *(a2 + 16) = *a1;
  *(a2 + 32) = v5;
  result = *(a1 + 48);
  *(a2 + 48) = *(a1 + 32);
  *(a2 + 64) = result;
  return result;
}

uint64_t SearchResultsPageIntent.kind.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SearchResultsPageIntent.requestDescriptor.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[8];
  v3 = v1[10];
  v25 = v1[9];
  v26 = v3;
  v4 = v1[10];
  v27 = v1[11];
  v5 = v1[4];
  v6 = v1[6];
  v21 = v1[5];
  v7 = v21;
  v22 = v6;
  v8 = v1[6];
  v9 = v1[8];
  v23 = v1[7];
  v10 = v23;
  v24 = v9;
  v11 = v1[2];
  v18[0] = v1[1];
  v18[1] = v11;
  v12 = v1[4];
  v14 = v1[1];
  v13 = v1[2];
  v19 = v1[3];
  v15 = v19;
  v20 = v12;
  a1[8] = v25;
  a1[9] = v4;
  a1[10] = v1[11];
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v10;
  a1[7] = v2;
  *a1 = v14;
  a1[1] = v13;
  a1[2] = v15;
  a1[3] = v5;
  return sub_24E7B6680(v18, &v17);
}

JSValue __swiftcall SearchResultsPageIntent.makeValue(in:)(JSContext in)
{
  v4 = *(v1 + 32);
  v3 = *(v1 + 40);
  v5 = *(v1 + 64);
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);
  v56 = *(v1 + 81);
  v55 = *(v1 + 82);
  v49 = *(v1 + 96);
  v50 = *(v1 + 56);
  v53 = *(v1 + 104);
  v54 = *(v1 + 88);
  v48 = *(v1 + 168);
  v51 = *(v1 + 176);
  v52 = *(v1 + 112);
  v8 = *(v1 + 184);
  v9 = objc_opt_self();
  result.super.isa = [v9 valueWithNewObjectInContext_];
  if (!result.super.isa)
  {
    __break(1u);
    goto LABEL_44;
  }

  isa = result.super.isa;
  v57 = v4;
  v58 = v3;

  v12 = [v9 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v12)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  sub_24F92C328();
  v57 = v6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221930);
  v13 = [v9 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v13)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  sub_24F92C328();
  if (v7 <= 1)
  {
    if (v7)
    {
      v14 = 0xE500000000000000;
      v15 = 0x79726F7473;
    }

    else
    {
      v14 = 0xE900000000000072;
      v15 = 0x65706F6C65766564;
    }
  }

  else if (v7 == 2)
  {
    v14 = 0xE600000000000000;
    v15 = 0x656461637261;
  }

  else
  {
    if (v7 != 3)
    {
      v16 = in.super.isa;
      v17 = 0;
      goto LABEL_14;
    }

    v14 = 0xE500000000000000;
    v15 = 0x6863746177;
  }

  v57 = v15;
  v58 = v14;
  v18 = in.super.isa;
  v17 = sub_24F92CDE8();
  sub_24EB715C4(&v57);
LABEL_14:
  v19 = [v9 valueWithObject:v17 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (!v19)
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  sub_24F92C328();
  if (v8)
  {
    v57 = v8;
    v20 = in.super.isa;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227A20);
    v21 = sub_24F92CDE8();
    sub_24E601704(&v57, &qword_27F227A20);
  }

  else
  {
    v22 = in.super.isa;
    v21 = 0;
  }

  v23 = [v9 valueWithObject:v21 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (!v23)
  {
    goto LABEL_47;
  }

  sub_24F92C328();
  v57 = SearchOrigin.rawValue.getter();
  v58 = v24;
  v25 = [v9 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v25)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  sub_24F92C328();
  if (v5)
  {
    v57 = v50;
    v58 = v5;
    v26 = in.super.isa;

    v27 = sub_24F92CDE8();
    sub_24EB715C4(&v57);
  }

  else
  {
    v28 = in.super.isa;
    v27 = 0;
  }

  v29 = [v9 valueWithObject:v27 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (!v29)
  {
    goto LABEL_49;
  }

  sub_24F92C328();
  LOBYTE(v57) = v56;
  v30 = [v9 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v30)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  sub_24F92C328();
  LOBYTE(v57) = v55;
  v31 = [v9 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v31)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  sub_24F92C328();
  v32 = v54;
  if (v54)
  {
    v57 = v54;
    v33 = in.super.isa;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
    v32 = sub_24F92CDE8();
    sub_24E601704(&v57, &unk_27F2285F0);
  }

  else
  {
    v34 = in.super.isa;
  }

  v35 = [v9 valueWithObject:v32 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (!v35)
  {
    goto LABEL_52;
  }

  sub_24F92C328();
  v36 = v53;
  if (v53)
  {
    v57 = v49;
    v58 = v53;
    v37 = in.super.isa;

    v36 = sub_24F92CDE8();
    sub_24EB715C4(&v57);
  }

  else
  {
    v38 = in.super.isa;
  }

  v39 = [v9 valueWithObject:v36 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (!v39)
  {
    goto LABEL_53;
  }

  sub_24F92C328();
  v40 = v52;
  if (v52)
  {
    v57 = v52;
    v41 = in.super.isa;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
    v40 = sub_24F92CDE8();
    sub_24E601704(&v57, &unk_27F2285F0);
  }

  else
  {
    v42 = in.super.isa;
  }

  v43 = [v9 valueWithObject:v40 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (!v43)
  {
    goto LABEL_54;
  }

  sub_24F92C328();
  v44 = v51;
  if (v51)
  {
    v57 = v48;
    v58 = v51;
    v45 = in.super.isa;

    v44 = sub_24F92CDE8();
    sub_24EB715C4(&v57);
  }

  else
  {
    v46 = in.super.isa;
  }

  v47 = [v9 valueWithObject:v44 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (v47)
  {
    sub_24F92C328();
    return isa;
  }

LABEL_55:
  __break(1u);
  return result;
}

unint64_t sub_24EC0350C()
{
  result = qword_27F22B608;
  if (!qword_27F22B608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B608);
  }

  return result;
}

unint64_t sub_24EC03568()
{
  result = qword_27F22B610;
  if (!qword_27F22B610)
  {
    type metadata accessor for SearchResultsPage();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B610);
  }

  return result;
}

uint64_t sub_24EC035C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 192))
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

uint64_t sub_24EC0360C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 192) = 1;
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

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t FastImpressionsV5Tracker.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*FastImpressionsV5Tracker.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_24EC037BC;
}

void sub_24EC037BC(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t FastImpressionsV5Tracker.__allocating_init(mainQueueName:fastQueueName:impressionableThreshold:)(double a1)
{
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_24F929EB8();
  swift_allocObject();
  *(v2 + 40) = sub_24F929E98();
  swift_allocObject();
  *(v2 + 48) = sub_24F929E98();
  *(v2 + 32) = a1;
  return v2;
}

uint64_t FastImpressionsV5Tracker.init(mainQueueName:fastQueueName:impressionableThreshold:)(double a1)
{
  *(v1 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_24F929EB8();
  swift_allocObject();
  *(v1 + 40) = sub_24F929E98();
  swift_allocObject();
  *(v1 + 48) = sub_24F929E98();
  *(v1 + 32) = a1;
  return v1;
}

uint64_t FastImpressionsV5Tracker.elementDidEnterView(_:on:with:)()
{
  v1 = v0;
  v2 = sub_24F9294C8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F9295D8();
  v6 = sub_24F929478();
  result = (*(v3 + 8))(v5, v2);
  if (v6 != 2 && (v6 & 1) != 0)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v8 = *(v1 + 24);
      sub_24F929E68();
      ObjectType = swift_getObjectType();
      (*(v8 + 8))(ObjectType, v8);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t FastImpressionsV5Tracker.elementDidLeaveView(_:on:with:)()
{
  v0 = sub_24F9294C8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F9295D8();
  v4 = sub_24F929478();
  result = (*(v1 + 8))(v3, v0);
  if (v4 != 2 && (v4 & 1) != 0)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      swift_unknownObjectRelease();
      return sub_24F929E78();
    }
  }

  return result;
}

uint64_t FastImpressionsV5Tracker.deinit()
{
  sub_24E883630(v0 + 16);

  return v0;
}

uint64_t FastImpressionsV5Tracker.__deallocating_deinit()
{
  sub_24E883630(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_24EC03F28@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_24EC03F78(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t RibbonBar.__allocating_init(id:items:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F91F6B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  sub_24E60169C(a1, &v17, &qword_27F235830);
  if (*(&v18 + 1))
  {
    sub_24E601704(a1, &qword_27F235830);
    v20 = v17;
    v21 = v18;
    v22 = v19;
  }

  else
  {
    sub_24F91F6A8();
    v11 = sub_24F91F668();
    v13 = v12;
    (*(v7 + 8))(v9, v6);
    v16[1] = v11;
    v16[2] = v13;
    sub_24F92C7F8();
    sub_24E601704(a1, &qword_27F235830);
    sub_24E601704(&v17, &qword_27F235830);
  }

  v14 = v21;
  *(v10 + 24) = v20;
  *(v10 + 40) = v14;
  *(v10 + 56) = v22;
  *(v10 + 16) = a2;
  sub_24E65E0D4(a3, v10 + OBJC_IVAR____TtC12GameStoreKit9RibbonBar_impressionMetrics);
  return v10;
}

uint64_t RibbonBar.init(id:items:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_24F91F6B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E60169C(a1, &v18, &qword_27F235830);
  if (*(&v19 + 1))
  {
    sub_24E601704(a1, &qword_27F235830);
    v21 = v18;
    v22 = v19;
    v23 = v20;
  }

  else
  {
    sub_24F91F6A8();
    v12 = sub_24F91F668();
    v14 = v13;
    (*(v9 + 8))(v11, v8);
    v17[1] = v12;
    v17[2] = v14;
    sub_24F92C7F8();
    sub_24E601704(a1, &qword_27F235830);
    sub_24E601704(&v18, &qword_27F235830);
  }

  v15 = v22;
  *(v4 + 24) = v21;
  *(v4 + 40) = v15;
  *(v4 + 56) = v23;
  *(v4 + 16) = a2;
  sub_24E65E0D4(a3, v4 + OBJC_IVAR____TtC12GameStoreKit9RibbonBar_impressionMetrics);
  return v4;
}

uint64_t RibbonBar.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v62 = a1;
  v3 = sub_24F91F6B8();
  v47 = *(v3 - 8);
  v48 = v3;
  MEMORY[0x28223BE20](v3);
  v46 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F9285B8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v58 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v46 - v9;
  v11 = sub_24F928388();
  v52 = *(v11 - 8);
  v53 = v11;
  MEMORY[0x28223BE20](v11);
  v49 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v14 - 8);
  v50 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v46 - v17;
  sub_24F929608();
  sub_24F928398();
  v54 = v6;
  v19 = *(v6 + 16);
  v51 = v10;
  v19(v10, a2, v5);
  v55 = v18;
  sub_24F929548();
  v20 = v58;
  v57 = a2;
  v21 = v5;
  v19(v58, a2, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B618);
  sub_24F928398();
  v22 = v20;
  v19(v51, v20, v5);
  sub_24EC04A20();
  sub_24F929548();
  v23 = v61[0];
  if (v61[0])
  {
    v25 = v52;
    v24 = v53;
    v26 = v54;
    v27 = v49;
    sub_24F928398();
    v28 = sub_24F928348();
    if (v29)
    {
      v59 = v28;
      v60 = v29;
    }

    else
    {
      v34 = v46;
      sub_24F91F6A8();
      v35 = sub_24F91F668();
      v37 = v36;
      (*(v47 + 8))(v34, v48);
      v59 = v35;
      v60 = v37;
    }

    sub_24F92C7F8();
    v38 = *(v25 + 8);
    v39 = v27;
    v40 = v24;
    v38(v39, v24);
    v41 = v26;
    v42 = v55;
    v43 = v50;
    sub_24E60169C(v55, v50, &qword_27F213E68);
    v33 = swift_allocObject();
    RibbonBar.init(id:items:impressionMetrics:)(v61, v23, v43);
    v44 = *(v41 + 8);
    v44(v57, v21);
    v38(v62, v40);
    v44(v58, v21);
    sub_24E601704(v42, &qword_27F213E68);
  }

  else
  {
    v30 = sub_24F92AC38();
    sub_24EC04BE8(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    *v31 = 0x736D657469;
    v31[1] = 0xE500000000000000;
    v31[2] = v56;
    (*(*(v30 - 8) + 104))(v31, *MEMORY[0x277D22530], v30);
    swift_willThrow();
    v33 = v54 + 8;
    v32 = *(v54 + 8);
    v32(v57, v5);
    (*(v52 + 8))(v62, v53);
    v32(v22, v5);
    sub_24E601704(v55, &qword_27F213E68);
  }

  return v33;
}

unint64_t sub_24EC04A20()
{
  result = qword_27F22B620;
  if (!qword_27F22B620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22B618);
    sub_24EC04BE8(&qword_27F221030, type metadata accessor for RibbonBarItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B620);
  }

  return result;
}

uint64_t RibbonBar.deinit()
{

  sub_24E6585F8(v0 + 24);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit9RibbonBar_impressionMetrics, &qword_27F213E68);
  return v0;
}

uint64_t RibbonBar.__deallocating_deinit()
{

  sub_24E6585F8(v0 + 24);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit9RibbonBar_impressionMetrics, &qword_27F213E68);

  return swift_deallocClassInstance();
}

uint64_t sub_24EC04BE8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for RibbonBar()
{
  result = qword_27F22B630;
  if (!qword_27F22B630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EC04C7C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = RibbonBar.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void sub_24EC04CEC()
{
  sub_24E61C938();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_24EC04DFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_24E635714;

  return (sub_24EC04EB4)(a2, a3);
}

uint64_t sub_24EC04EB4(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E8D0);
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  v4 = sub_24F928AE8();
  v2[17] = v4;
  v2[18] = *(v4 - 8);
  v2[19] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B580);
  v2[20] = v5;
  v2[21] = *(v5 - 8);
  v2[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  v2[23] = swift_task_alloc();
  v6 = sub_24F91F648();
  v2[24] = v6;
  v2[25] = *(v6 - 8);
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24EC050E4, 0, 0);
}

uint64_t sub_24EC050E4()
{
  v43 = v0;
  v1 = objc_opt_self();
  *(v0 + 224) = v1;
  v2 = [v1 standardUserDefaults];
  v3 = sub_24F006648();
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    sub_24F006B88(v5);

    if (qword_27F211430 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v6 = sub_24F9220D8();
  __swift_project_value_buffer(v6, qword_27F39E8E0);
  v7 = sub_24F9220B8();
  v8 = sub_24F92BD98();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    v10 = [v1 standardUserDefaults];
    v11 = sub_24F006648();

    *(v9 + 4) = v11;
    _os_log_impl(&dword_24E5DD000, v7, v8, "Increased the friend requests page visit count to %ld", v9, 0xCu);
    MEMORY[0x2530542D0](v9, -1, -1);
  }

  v13 = *(v0 + 208);
  v12 = *(v0 + 216);
  v14 = *(v0 + 192);
  v15 = *(v0 + 200);
  v16 = *(v0 + 184);

  sub_24F91F638();
  v17 = [v1 standardUserDefaults];
  v18 = *(v15 + 16);
  v18(v16, v12, v14);
  (*(v15 + 56))(v16, 0, 1, v14);
  sub_24F006C88(v16);

  v18(v13, v12, v14);
  v19 = sub_24F9220B8();
  v20 = sub_24F92BD98();
  v21 = os_log_type_enabled(v19, v20);
  v23 = *(v0 + 200);
  v22 = *(v0 + 208);
  v24 = *(v0 + 192);
  if (v21)
  {
    v25 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v42 = v41;
    *v25 = 136315138;
    sub_24EC05C80();
    v26 = sub_24F92CD88();
    v28 = v27;
    v29 = *(v23 + 8);
    v29(v22, v24);
    v30 = sub_24E7620D4(v26, v28, &v42);

    *(v25 + 4) = v30;
    _os_log_impl(&dword_24E5DD000, v19, v20, "Last friend requests page visit is %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v41);
    MEMORY[0x2530542D0](v41, -1, -1);
    MEMORY[0x2530542D0](v25, -1, -1);
  }

  else
  {

    v29 = *(v23 + 8);
    v29(v22, v24);
  }

  *(v0 + 232) = v29;
  sub_24EC05C10(*(v0 + 96), v0 + 56);
  if (*(v0 + 80))
  {
    sub_24E612C80((v0 + 56), v0 + 16);
    v31 = swift_task_alloc();
    *(v0 + 240) = v31;
    *v31 = v0;
    v31[1] = sub_24EC05584;
    v32 = *(v0 + 176);
    v33 = *(v0 + 160);

    return MEMORY[0x28217F228](v32, v33, v33);
  }

  else
  {
    sub_24EA418B4(v0 + 56);
    v34 = *(v0 + 232);
    v35 = *(v0 + 216);
    v36 = *(v0 + 192);
    v37 = [*(v0 + 224) standardUserDefaults];
    v38 = sub_24F006648();

    v34(v35, v36);

    v39 = *(v0 + 8);

    return v39(v38, 0);
  }
}

uint64_t sub_24EC05584()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_24EC05A20;
  }

  else
  {
    v2 = sub_24EC05698;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EC05698()
{
  (*(v0[15] + 104))(v0[16], *MEMORY[0x277D21E18], v0[14]);
  v1 = swift_task_alloc();
  v0[32] = v1;
  *v1 = v0;
  v1[1] = sub_24EC05764;
  v2 = v0[19];
  v3 = v0[20];
  v4 = v0[16];
  v5 = v0[13];

  return MEMORY[0x28217F468](v2, v0 + 2, v4, v5, v3);
}

uint64_t sub_24EC05764()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 120);
  v5 = *(*v1 + 112);
  *(*v1 + 264) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_24EC05B0C;
  }

  else
  {
    (*(v2[18] + 8))(v2[19], v2[17]);
    v6 = sub_24EC058F4;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_24EC058F4()
{
  (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 232);
  v2 = *(v0 + 216);
  v3 = *(v0 + 192);
  v4 = [*(v0 + 224) standardUserDefaults];
  v5 = sub_24F006648();

  v1(v2, v3);

  v6 = *(v0 + 8);

  return v6(v5, 0);
}

uint64_t sub_24EC05A20()
{
  v1 = v0[29];
  v2 = v0[27];
  v3 = v0[24];
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24EC05B0C()
{
  (*(v0[21] + 8))(v0[22], v0[20]);
  v1 = v0[29];
  v2 = v0[27];
  v3 = v0[24];
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24EC05C10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24EC05C80()
{
  result = qword_27F229EE8;
  if (!qword_27F229EE8)
  {
    sub_24F91F648();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F229EE8);
  }

  return result;
}

id WeakNotificationObserver.__allocating_init(forName:object:scheduler:block:center:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v13 = *(a3 + 24);
  v14 = *(a3 + 32);
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a3, v13);
  v16 = sub_24EC06680(a1, a2, v15, a4, a5, a6, v6, v13, v14);

  __swift_destroy_boxed_opaque_existential_1(a3);
  return v16;
}

id WeakNotificationObserver.init(forName:object:scheduler:block:center:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v14 = *(a3 + 24);
  v15 = *(a3 + 32);
  v16 = __swift_mutable_project_boxed_opaque_existential_1(a3, v14);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19, v17);
  v21 = sub_24EC06420(a1, a2, v19, a4, a5, a6, v7, v14, v15);

  __swift_destroy_boxed_opaque_existential_1(a3);
  return v21;
}

id WeakNotificationObserver.__deallocating_deinit()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong removeObserver_];
  }

  v4.receiver = v0;
  v4.super_class = type metadata accessor for WeakNotificationObserver();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_24EC06148()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong removeObserver_];
  }
}

id WeakNotificationObserver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_24EC06420(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, char *a7, uint64_t a8, uint64_t a9)
{
  v36[3] = a8;
  v36[4] = a9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v36);
  (*(*(a8 - 8) + 32))(boxed_opaque_existential_1, a3, a8);
  swift_unknownObjectWeakInit();
  sub_24E615E00(v36, &a7[OBJC_IVAR____TtC12GameStoreKit24WeakNotificationObserver_scheduler]);
  v18 = &a7[OBJC_IVAR____TtC12GameStoreKit24WeakNotificationObserver_block];
  *v18 = a4;
  *(v18 + 1) = a5;
  swift_unknownObjectWeakAssign();
  v35.receiver = a7;
  v35.super_class = type metadata accessor for WeakNotificationObserver();

  v19 = objc_msgSendSuper2(&v35, sel_init);
  sub_24E94E17C(a2, v33);
  v20 = v34;
  if (v34)
  {
    v21 = __swift_project_boxed_opaque_existential_1(v33, v34);
    v22 = *(v20 - 8);
    v23 = MEMORY[0x28223BE20](v21);
    v25 = &v33[-1] - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v22 + 16))(v25, v23);
    v26 = v19;
    v27 = a1;
    v28 = sub_24F92CDE8();
    (*(v22 + 8))(v25, v20);
    __swift_destroy_boxed_opaque_existential_1(v33);
  }

  else
  {
    v29 = v19;
    v30 = a1;
    v28 = 0;
  }

  [a6 addObserver:v19 selector:sel_didReceiveWithNotification_ name:a1 object:v28];

  swift_unknownObjectRelease();
  sub_24E857CC8(a2);
  __swift_destroy_boxed_opaque_existential_1(v36);
  return v19;
}

id sub_24EC06680(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v21 = a6;
  v15 = *(a8 - 8);
  MEMORY[0x28223BE20](a1);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = objc_allocWithZone(type metadata accessor for WeakNotificationObserver());
  (*(v15 + 16))(v17, a3, a8);
  return sub_24EC06420(a1, a2, v17, a4, a5, v21, v18, a8, a9);
}

uint64_t sub_24EC06828()
{
  v1 = sub_24F91EB58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24EC06954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  v3[12] = type metadata accessor for LeaderboardDetailHeaderShelfConstructionIntent();
  v3[13] = swift_task_alloc();
  v3[14] = type metadata accessor for GSKShelf();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22D110);
  v3[17] = v4;
  v3[18] = *(v4 - 8);
  v3[19] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213760);
  v3[20] = v5;
  v3[21] = *(v5 - 8);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24EC06B04, 0, 0);
}

uint64_t sub_24EC06B04()
{
  v1 = v0[10];
  v2 = type metadata accessor for LeaderboardDetailHeaderShelfIntent();
  v3 = v1 + v2[5];
  v0[24] = *(v3 + 16);
  v4 = *(v3 + 24);
  v0[25] = v4;
  if (v4)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EBA0);

    v6 = swift_task_alloc();
    v0[26] = v6;
    *v6 = v0;
    v6[1] = sub_24EC06D2C;
    v7 = v0 + 7;
    v8 = v5;
    v9 = v5;
  }

  else
  {
    v11 = v0[12];
    v10 = v0[13];
    v13 = *v1;
    v12 = v1[1];
    sub_24EC09C18(v3, v10 + v11[5], type metadata accessor for Game);
    sub_24EC09C18(v1 + v2[6], v10 + v11[6], type metadata accessor for Player);
    sub_24EC09C18(v1 + v2[7], v10 + v11[7], type metadata accessor for Leaderboard);
    v14 = *(v1 + v2[8]);
    *v10 = v13;
    v10[1] = v12;
    *(v10 + v11[8]) = v14;
    *(v10 + v11[9]) = 1;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030);

    v16 = swift_task_alloc();
    v0[28] = v16;
    *v16 = v0;
    v16[1] = sub_24EC070A0;
    v7 = v0 + 2;
    v8 = v15;
    v9 = v15;
  }

  return MEMORY[0x28217F228](v7, v8, v9);
}

uint64_t sub_24EC06D2C()
{
  *(*v1 + 216) = v0;

  if (v0)
  {

    v2 = sub_24EC076D4;
  }

  else
  {
    v2 = sub_24EC06E48;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EC06E48()
{
  v22 = v0;
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v19 = *(v0 + 184);
  v20 = *(v0 + 176);
  v3 = *(v0 + 160);
  v4 = *(v0 + 168);
  v5 = *(v0 + 144);
  v6 = *(v0 + 152);
  v18 = *(v0 + 136);
  v7 = *(v0 + 64);
  ObjectType = swift_getObjectType();
  v21[0] = v2;
  v21[1] = v1;
  v17 = *(v0 + 80);
  v9 = (*(v7 + 56))(v21, ObjectType, v7);
  v11 = v10;

  v12 = swift_task_alloc();
  *(v12 + 16) = v9;
  *(v12 + 24) = v11;
  *(v12 + 32) = v17;
  (*(v5 + 104))(v6, *MEMORY[0x277D85778], v18);
  sub_24F92B928();

  (*(v4 + 16))(v20, v19, v3);
  sub_24E613678();
  sub_24F9280F8();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  (*(v4 + 8))(v19, v3);
  v13 = *(v0 + 72);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213768);
  (*(*(v14 - 8) + 56))(v13, 0, 1, v14);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_24EC070A0()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_24EC073C4;
  }

  else
  {
    v2 = sub_24EC071B4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EC071B4()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[30] = v3;
  v4 = sub_24EC09698(&qword_27F21D580, type metadata accessor for LeaderboardDetailHeaderShelfConstructionIntent);
  *v3 = v0;
  v3[1] = sub_24EC072B0;
  v5 = v0[16];
  v7 = v0[12];
  v6 = v0[13];
  v8 = v0[11];

  return MEMORY[0x28217F4B0](v5, v6, v8, v7, v4, v1, v2);
}

uint64_t sub_24EC072B0()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_24EC07608;
  }

  else
  {
    v2 = sub_24EC07488;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EC073C4()
{
  sub_24EC096E0(*(v0 + 104), type metadata accessor for LeaderboardDetailHeaderShelfConstructionIntent);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EC07488()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[13];
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  sub_24EC096E0(v3, type metadata accessor for LeaderboardDetailHeaderShelfConstructionIntent);
  sub_24EC09C18(v2, v1, type metadata accessor for GSKShelf);
  sub_24F928138();
  sub_24EC096E0(v2, type metadata accessor for GSKShelf);
  v4 = v0[9];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213768);
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_24EC07608()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  sub_24EC096E0(*(v0 + 104), type metadata accessor for LeaderboardDetailHeaderShelfConstructionIntent);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EC076D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EC0777C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v42 = a5;
  v36 = a3;
  v38 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778);
  v40 = *(v8 - 8);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v8);
  v43 = &v34 - v9;
  v10 = type metadata accessor for LeaderboardDetailHeaderShelfIntent();
  v11 = v10 - 8;
  v39 = *(v10 - 8);
  v12 = *(v39 + 64);
  MEMORY[0x28223BE20](v10);
  v37 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v34 - v14;
  v35 = &v34 - v14;
  v16 = (a4 + *(v11 + 28));
  v18 = *v16;
  v17 = v16[1];
  type metadata accessor for LeaderboardHeaderShelfUpdater();
  swift_allocObject();

  v19 = swift_unknownObjectRetain();
  v20 = a2;
  v21 = sub_24EC0974C(v19, a3, v18, v17);
  swift_unknownObjectRelease();

  v34 = v8;
  v22 = v38;
  sub_24F92B898();
  v23 = sub_24F92B858();
  (*(*(v23 - 8) + 56))(v15, 1, 1, v23);
  v24 = v37;
  sub_24EC09C18(a4, v37, type metadata accessor for LeaderboardDetailHeaderShelfIntent);
  v25 = v40;
  (*(v40 + 16))(v43, v22, v8);
  v26 = (*(v39 + 80) + 40) & ~*(v39 + 80);
  v27 = (v12 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = (*(v25 + 80) + v27 + 16) & ~*(v25 + 80);
  v29 = (v41 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  *(v30 + 2) = 0;
  *(v30 + 3) = 0;
  *(v30 + 4) = v42;
  sub_24EC0A5D8(v24, &v30[v26]);
  v31 = &v30[v27];
  v32 = v36;
  *v31 = v20;
  *(v31 + 1) = v32;
  (*(v25 + 32))(&v30[v28], v43, v34);
  *&v30[v29] = v21;
  swift_unknownObjectRetain();

  sub_24F1D3DA4(0, 0, v35, &unk_24F98C170, v30);
}

uint64_t sub_24EC07B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[24] = a8;
  v8[25] = v13;
  v8[22] = a6;
  v8[23] = a7;
  v8[20] = a4;
  v8[21] = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B698);
  v8[26] = v9;
  v8[27] = *(v9 - 8);
  v8[28] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22D140);
  v8[29] = v10;
  v8[30] = *(v10 - 8);
  v8[31] = swift_task_alloc();
  v8[32] = type metadata accessor for LeaderboardDetailHeaderShelfConstructionIntent();
  v8[33] = swift_task_alloc();
  v8[34] = swift_task_alloc();
  type metadata accessor for GSKShelf();
  v8[35] = swift_task_alloc();
  v8[36] = swift_task_alloc();
  v8[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24EC07CD4, 0, 0);
}

uint64_t sub_24EC07CD4()
{
  v1 = v0[11].i64[1];
  v2 = v0[10].i64[1];
  ObjectType = swift_getObjectType();
  (*(v1 + 40))(1, ObjectType, v1);
  v4 = type metadata accessor for LeaderboardDetailHeaderShelfIntent();
  v5 = v4[5];
  v0[27].i32[2] = v5;
  v6 = (v2 + v5);
  v7 = v0[4].u64[0];
  v8 = v7 >> 60;
  if (v7 >> 60 == 8 && !v0[4].i64[1] && v7 == 0x8000000000000000 && v0[1].i64[0] == 4 && (v9 = vorrq_s8(v0[2], v0[3]), !(*&vorr_s8(*v9.i8, *&vextq_s8(v9, v9, 8uLL)) | v0[1].i64[1])))
  {
    v10 = *v6;
    v11 = v6[1];
    objc_allocWithZone(MEMORY[0x277CC1E70]);

    v24 = sub_24F3E5298(v10, v11, 0);

    v25 = v24 != 0;
  }

  else
  {
    v12 = v8 == 2 || v8 == 7;
    LOBYTE(v25) = v12 || v8 == 8 && !v0[4].i64[1] && v7 == 0x8000000000000000 && v0[1].i64[0] == 1 && (v13 = vorrq_s8(v0[2], v0[3]), !(*&vorr_s8(*v13.i8, *&vextq_s8(v13, v13, 8uLL)) | v0[1].i64[1]));
    sub_24E88D2AC(v0[1].i64);
  }

  v14 = v0[17].i64[0];
  v15 = v0[16].i64[0];
  v16 = v0[10].i64[1];
  v17 = *v16;
  v0[19].i64[0] = *v16;
  v18 = v16[1];
  v0[19].i64[1] = v18;
  sub_24EC09C18(v6, v14 + v15[5], type metadata accessor for Game);
  v19 = v4[6];
  v0[27].i32[3] = v19;
  sub_24EC09C18(v16 + v19, v14 + v15[6], type metadata accessor for Player);
  v20 = v4[7];
  v0[28].i32[0] = v20;
  sub_24EC09C18(v16 + v20, v14 + v15[7], type metadata accessor for Leaderboard);
  v21 = *(v16 + v4[8]);
  v0[20].i64[0] = v21;
  *v14 = v17;
  v14[1] = v18;
  *(v14 + v15[8]) = v21;
  *(v14 + v15[9]) = v25;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030);
  v0[20].i64[1] = v22;

  v23 = swift_task_alloc();
  v0[21].i64[0] = v23;
  *v23 = v0;
  v23[1] = sub_24EC07FE0;

  return MEMORY[0x28217F228](&v0[5], v22, v22);
}

uint64_t sub_24EC07FE0()
{
  *(*v1 + 344) = v0;

  if (v0)
  {
    v2 = sub_24EC0830C;
  }

  else
  {
    v2 = sub_24EC080F4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EC080F4()
{
  v1 = v0[13];
  v2 = v0[14];
  __swift_project_boxed_opaque_existential_1(v0 + 10, v1);
  v3 = swift_task_alloc();
  v0[44] = v3;
  v4 = sub_24EC09698(&qword_27F21D580, type metadata accessor for LeaderboardDetailHeaderShelfConstructionIntent);
  v0[45] = v4;
  *v3 = v0;
  v3[1] = sub_24EC081F8;
  v5 = v0[37];
  v6 = v0[34];
  v7 = v0[32];
  v8 = v0[20];

  return MEMORY[0x28217F4B0](v5, v6, v8, v7, v4, v1, v2);
}

uint64_t sub_24EC081F8()
{
  *(*v1 + 368) = v0;

  if (v0)
  {
    v2 = sub_24EC08578;
  }

  else
  {
    v2 = sub_24EC083E4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EC0830C()
{
  sub_24EC096E0(*(v0 + 272), type metadata accessor for LeaderboardDetailHeaderShelfConstructionIntent);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EC083E4()
{
  v1 = v0[36];
  v2 = v0[37];
  v3 = v0[34];
  v5 = v0[30];
  v4 = v0[31];
  v6 = v0[29];
  __swift_destroy_boxed_opaque_existential_1((v0 + 10));
  sub_24EC096E0(v3, type metadata accessor for LeaderboardDetailHeaderShelfConstructionIntent);
  sub_24EC09C18(v2, v1, type metadata accessor for GSKShelf);
  v0[47] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778);
  sub_24F92B8C8();
  v7 = *(v5 + 8);
  v0[48] = v7;
  v0[49] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v4, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B690);
  sub_24F92B8F8();
  v8 = swift_task_alloc();
  v0[50] = v8;
  *v8 = v0;
  v8[1] = sub_24EC08658;
  v9 = v0[26];

  return MEMORY[0x2822003E8](v0 + 452, 0, 0, v9);
}

uint64_t sub_24EC08578()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 80);
  sub_24EC096E0(*(v0 + 272), type metadata accessor for LeaderboardDetailHeaderShelfConstructionIntent);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EC08658()
{

  return MEMORY[0x2822009F8](sub_24EC08754, 0, 0);
}

uint64_t sub_24EC08754()
{
  v1 = *(v0 + 452);
  if (v1 == 2)
  {
    v2 = *(v0 + 296);
    (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));
    sub_24EC096E0(v2, type metadata accessor for GSKShelf);

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 312);
    v6 = *(v0 + 320);
    v7 = *(v0 + 448);
    v8 = *(v0 + 444);
    v9 = *(v0 + 304);
    v11 = *(v0 + 256);
    v10 = *(v0 + 264);
    v12 = *(v0 + 168);
    sub_24EC09C18(v12 + *(v0 + 440), v10 + v11[5], type metadata accessor for Game);
    sub_24EC09C18(v12 + v8, v10 + v11[6], type metadata accessor for Player);
    sub_24EC09C18(v12 + v7, v10 + v11[7], type metadata accessor for Leaderboard);
    *v10 = v9;
    v10[1] = v5;
    *(v10 + v11[8]) = v6;
    *(v10 + v11[9]) = v1 & 1;

    v13 = swift_task_alloc();
    *(v0 + 408) = v13;
    *v13 = v0;
    v13[1] = sub_24EC0899C;
    v14 = *(v0 + 328);

    return MEMORY[0x28217F228](v0 + 120, v14, v14);
  }
}

uint64_t sub_24EC0899C()
{
  *(*v1 + 416) = v0;

  if (v0)
  {
    v2 = sub_24EC08C8C;
  }

  else
  {
    v2 = sub_24EC08AB0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EC08AB0()
{
  v1 = v0[18];
  v2 = v0[19];
  __swift_project_boxed_opaque_existential_1(v0 + 15, v1);
  v3 = swift_task_alloc();
  v0[53] = v3;
  *v3 = v0;
  v3[1] = sub_24EC08B78;
  v4 = v0[45];
  v5 = v0[35];
  v7 = v0[32];
  v6 = v0[33];
  v8 = v0[20];

  return MEMORY[0x28217F4B0](v5, v6, v8, v7, v4, v1, v2);
}

uint64_t sub_24EC08B78()
{
  *(*v1 + 432) = v0;

  if (v0)
  {
    v2 = sub_24EC08F04;
  }

  else
  {
    v2 = sub_24EC08DA4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EC08C8C()
{
  v1 = v0[37];
  v3 = v0[27];
  v2 = v0[28];
  v4 = v0[26];
  sub_24EC096E0(v0[33], type metadata accessor for LeaderboardDetailHeaderShelfConstructionIntent);
  (*(v3 + 8))(v2, v4);
  sub_24EC096E0(v1, type metadata accessor for GSKShelf);

  v5 = v0[1];

  return v5();
}

uint64_t sub_24EC08DA4()
{
  v1 = v0[48];
  v3 = v0[35];
  v2 = v0[36];
  v4 = v0[33];
  v5 = v0[31];
  v6 = v0[29];
  __swift_destroy_boxed_opaque_existential_1((v0 + 15));
  sub_24EC096E0(v4, type metadata accessor for LeaderboardDetailHeaderShelfConstructionIntent);
  sub_24EC09C18(v3, v2, type metadata accessor for GSKShelf);
  sub_24F92B8C8();
  v1(v5, v6);
  sub_24EC096E0(v3, type metadata accessor for GSKShelf);
  v7 = swift_task_alloc();
  v0[50] = v7;
  *v7 = v0;
  v7[1] = sub_24EC08658;
  v8 = v0[26];

  return MEMORY[0x2822003E8](v0 + 452, 0, 0, v8);
}

uint64_t sub_24EC08F04()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 15));
  v1 = v0[37];
  v3 = v0[27];
  v2 = v0[28];
  v4 = v0[26];
  sub_24EC096E0(v0[33], type metadata accessor for LeaderboardDetailHeaderShelfConstructionIntent);
  (*(v3 + 8))(v2, v4);
  sub_24EC096E0(v1, type metadata accessor for GSKShelf);

  v5 = v0[1];

  return v5();
}

uint64_t sub_24EC09024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24E614970;

  return sub_24EC06954(a1, a2, a3);
}

uint64_t sub_24EC090D4(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B6A8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18[-v5];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = *(result + 32);
    ObjectType = swift_getObjectType();
    (*(a2 + 40))(&v19, 1, ObjectType, a2);
    v11 = v23 >> 60;
    if (v23 >> 60 == 8 && !v24 && v23 == 0x8000000000000000 && v19 == 4 && (v12 = vorrq_s8(v21, v22), !(*&vorr_s8(*v12.i8, *&vextq_s8(v12, v12, 8uLL)) | v20)))
    {
      v13 = *(v8 + 40);
      v14 = *(v8 + 48);
      objc_allocWithZone(MEMORY[0x277CC1E70]);

      v16 = sub_24F3E5298(v13, v14, 0);

      v17 = v16 != 0;
    }

    else
    {
      v17 = 1;
      if (v11 != 2 && v11 != 7)
      {
        if (v11 != 8 || v24 || v23 != 0x8000000000000000 || v19 != 1 || (v15 = vorrq_s8(v21, v22), *&vorr_s8(*v15.i8, *&vextq_s8(v15, v15, 8uLL)) | v20))
        {
          v17 = 0;
        }
      }

      sub_24E88D2AC(&v19);
    }

    *(v8 + 32) = v17;
    if (v9 == v17)
    {
    }

    else
    {
      v18[23] = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B688);
      sub_24F92B8C8();

      return (*(v4 + 8))(v6, v3);
    }
  }

  return result;
}

uint64_t sub_24EC0937C()
{
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC12GameStoreKitP33_E2C0F04C9137CD60886E8B0B62F74E8629LeaderboardHeaderShelfUpdater_isInstalledContinuation;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B688);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12GameStoreKitP33_E2C0F04C9137CD60886E8B0B62F74E8629LeaderboardHeaderShelfUpdater_isInstalledStream;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B690);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LeaderboardHeaderShelfUpdater()
{
  result = qword_27F22B668;
  if (!qword_27F22B668)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EC094D4()
{
  sub_24EC095EC(319, &qword_27F22B678, MEMORY[0x277D85788]);
  if (v0 <= 0x3F)
  {
    sub_24EC095EC(319, &qword_27F22B680, MEMORY[0x277D857B8]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_24EC095EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D839B0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_24EC09698(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24EC096E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24EC0974C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v36 = a3;
  v37 = a4;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B6A0);
  v8 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v10 = &v33 - v9;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B688);
  v35 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v34 = &v33 - v11;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B690);
  v12 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v14 = &v33 - v13;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  ObjectType = swift_getObjectType();
  v16 = *(a2 + 40);
  swift_unknownObjectRetain();
  v16(&v40, 1, ObjectType, a2);
  v17 = v44 >> 60;
  if (v44 >> 60 == 8 && !v45 && v44 == 0x8000000000000000 && v40 == 4 && (v18 = vorrq_s8(v42, v43), !(*&vorr_s8(*v18.i8, *&vextq_s8(v18, v18, 8uLL)) | v41)))
  {
    v19 = objc_allocWithZone(MEMORY[0x277CC1E70]);
    v20 = v37;

    v21 = v36;
    v23 = sub_24F3E5298(v36, v20, 0);

    v24 = v23 != 0;
    v26 = v38;
    v25 = v39;
  }

  else
  {
    v24 = 1;
    if (v17 == 2)
    {
      v26 = v38;
      v25 = v39;
      v21 = v36;
      v20 = v37;
    }

    else
    {
      v26 = v38;
      v25 = v39;
      v21 = v36;
      v20 = v37;
      if (v17 != 7)
      {
        if (v17 != 8 || v45 || v44 != 0x8000000000000000 || v40 != 1 || (v22 = vorrq_s8(v42, v43), *&vorr_s8(*v22.i8, *&vextq_s8(v22, v22, 8uLL)) | v41))
        {
          v24 = 0;
        }
      }
    }

    sub_24E88D2AC(&v40);
  }

  *(v5 + 32) = v24;
  *(v5 + 40) = v21;
  *(v5 + 48) = v20;
  (*(v8 + 104))(v10, *MEMORY[0x277D85778], v25);
  v27 = v34;
  sub_24F92B868();
  (*(v8 + 8))(v10, v25);
  (*(v12 + 32))(v5 + OBJC_IVAR____TtC12GameStoreKitP33_E2C0F04C9137CD60886E8B0B62F74E8629LeaderboardHeaderShelfUpdater_isInstalledStream, v14, v33);
  (*(v35 + 32))(v5 + OBJC_IVAR____TtC12GameStoreKitP33_E2C0F04C9137CD60886E8B0B62F74E8629LeaderboardHeaderShelfUpdater_isInstalledContinuation, v27, v26);
  v28 = *(v5 + 24);
  v29 = swift_getObjectType();
  v30 = swift_allocObject();
  swift_weakInit();
  v31 = *(v28 + 72);

  v31(v5, sub_24EC0A838, v30, v29, v28);

  return v5;
}

uint64_t sub_24EC09BC4()
{
  v1 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  return (*(v1 + 80))(v0, ObjectType, v1);
}

uint64_t sub_24EC09C18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EC09C80()
{
  v1 = v0;
  v2 = type metadata accessor for LeaderboardDetailHeaderShelfIntent();
  v50 = *(*(v2 - 8) + 80);
  v44 = *(*(v2 - 8) + 64);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778);
  v46 = *(v3 - 8);
  v47 = v3;
  v43 = *(v46 + 80);
  swift_unknownObjectRelease();

  v45 = (v50 + 40) & ~v50;
  v4 = v0 + v45;

  v5 = v0 + v45 + *(v2 + 20);

  v6 = type metadata accessor for Game();
  v7 = v6[18];
  v8 = sub_24F9289E8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  v10(v5 + v7, v8);
  v11 = v6[19];
  v49 = *(v9 + 48);
  if (!v49(v5 + v11, 1, v8))
  {
    v10(v5 + v11, v8);
  }

  v52 = v10;

  v12 = v6[21];
  v13 = sub_24F920818();
  v14 = *(v13 - 8);
  v51 = *(v14 + 48);
  if (!v51(v5 + v12, 1, v13))
  {
    (*(v14 + 8))(v5 + v12, v13);
  }

  v40 = v14;
  v41 = v13;

  v48 = v2;
  v42 = v4;
  v15 = v4 + *(v2 + 24);

  v16 = type metadata accessor for Player(0);
  v52(v15 + v16[6], v8);

  if (*(v15 + v16[9] + 8) != 1)
  {
  }

  v17 = v15 + v16[13];
  v18 = type metadata accessor for CallProviderConversationHandleSet();
  if (!(*(*(v18 - 8) + 48))(v17, 1, v18))
  {
    v39 = v1;
    v19 = type metadata accessor for CallProviderConversationHandle();
    v20 = *(*(v19 - 8) + 48);
    if (!v20(v17, 1, v19))
    {

      v21 = *(type metadata accessor for CallProvider() + 24);
      if (!v49(v17 + v21, 1, v8))
      {
        v52(v17 + v21, v8);
      }
    }

    v22 = v17 + *(v18 + 20);
    if (!v20(v22, 1, v19))
    {

      v23 = *(type metadata accessor for CallProvider() + 24);
      if (!v49(v22 + v23, 1, v8))
      {
        v52(v22 + v23, v8);
      }
    }

    v1 = v39;
  }

  if (*(v15 + v16[15] + 8))
  {
  }

  v24 = v15 + v16[16];
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  if (!(*(*(PlayedTogetherInfo - 8) + 48))(v24, 1, PlayedTogetherInfo))
  {

    v52(v24 + v6[18], v8);
    v26 = v6[19];
    if (!v49(v24 + v26, 1, v8))
    {
      v52(v24 + v26, v8);
    }

    v27 = v6[21];
    if (!v51(v24 + v27, 1, v41))
    {
      (*(v40 + 8))(v24 + v27, v41);
    }
  }

  v28 = v15 + v16[17];
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  if (!(*(*(ChallengeInfo - 8) + 48))(v28, 1, ChallengeInfo))
  {

    v52(v28 + v6[18], v8);
    v30 = v6[19];
    if (!v49(v28 + v30, 1, v8))
    {
      v52(v28 + v30, v8);
    }

    v31 = v6[21];
    if (!v51(v28 + v31, 1, v41))
    {
      (*(v40 + 8))(v28 + v31, v41);
    }
  }

  v32 = v42 + *(v48 + 28);

  v33 = type metadata accessor for Leaderboard(0);
  v34 = *(v33 + 24);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128A0);
  if (!(*(*(v35 - 8) + 48))(v32 + v34, 1, v35))
  {
    v36 = sub_24F91F648();
    (*(*(v36 - 8) + 8))(v32 + v34, v36);
  }

  v37 = *(v33 + 72);
  if (!v51(v32 + v37, 1, v41))
  {
    (*(v40 + 8))(v32 + v37, v41);
  }

  swift_unknownObjectRelease();
  (*(v46 + 8))(v1 + ((((v44 + v45 + 7) & 0xFFFFFFFFFFFFFFF8) + v43 + 16) & ~v43), v47);

  return swift_deallocObject();
}

uint64_t sub_24EC0A5D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LeaderboardDetailHeaderShelfIntent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EC0A63C(uint64_t a1)
{
  v3 = *(type metadata accessor for LeaderboardDetailHeaderShelfIntent() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778) - 8);
  v7 = (v5 + *(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = v1 + v5;
  v12 = *(v1 + v5);
  v13 = *(v11 + 1);
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_24E614970;

  return sub_24EC07B10(a1, v8, v9, v10, v1 + v4, v12, v13, v1 + v7);
}

uint64_t sub_24EC0A800()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24EC0A854(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24F9289E8();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24EC0A998(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_24F9289E8();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for GameDetailsMediaPreviewPageIntent()
{
  result = qword_27F22B6B0;
  if (!qword_27F22B6B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EC0AB14()
{
  sub_24F9289E8();
  if (v0 <= 0x3F)
  {
    sub_24E6D5010(319, &qword_27F22B6C0);
    if (v1 <= 0x3F)
    {
      sub_24E6D5010(319, &qword_27F214308);
      if (v2 <= 0x3F)
      {
        sub_24E7D231C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_24EC0AC08(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B6D8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EC0BB08();
  sub_24F92D128();
  LOBYTE(v12) = 0;
  sub_24F92CD08();
  if (!v2)
  {
    v9 = type metadata accessor for GameDetailsMediaPreviewPageIntent();
    LOBYTE(v12) = 1;
    sub_24F9289E8();
    sub_24EC0C10C(&qword_27F214060, MEMORY[0x277D21C48]);
    sub_24F92CD48();
    v12 = *(v3 + *(v9 + 24));
    HIBYTE(v11) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229A80);
    sub_24EB6A3E4(&qword_27F229A98, sub_24E6ED170);
    sub_24F92CD48();
    v12 = *(v3 + *(v9 + 28));
    HIBYTE(v11) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214448);
    sub_24EC0BC1C(&qword_27F22B6E0, sub_24EC0BC94);
    sub_24F92CD48();
    LOBYTE(v12) = 4;
    type metadata accessor for Page.Background(0);
    sub_24EC0C10C(&qword_27F21D920, type metadata accessor for Page.Background);
    sub_24F92CCF8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24EC0AF48@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8);
  MEMORY[0x28223BE20](v3 - 8);
  v24 = v22 - v4;
  v5 = sub_24F9289E8();
  v27 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B6C8);
  v9 = *(v8 - 8);
  v25 = v8;
  v26 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = v22 - v10;
  v12 = type metadata accessor for GameDetailsMediaPreviewPageIntent();
  MEMORY[0x28223BE20](v12);
  v14 = (v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EC0BB08();
  v28 = v11;
  v15 = v29;
  sub_24F92D108();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v29 = a1;
  v16 = v27;
  LOBYTE(v31) = 0;
  v17 = v25;
  *v14 = sub_24F92CC28();
  v14[1] = v18;
  v22[1] = v18;
  LOBYTE(v31) = 1;
  sub_24EC0C10C(&qword_27F214018, MEMORY[0x277D21C48]);
  sub_24F92CC68();
  (*(v16 + 32))(v14 + v12[5], v7, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229A80);
  v30 = 2;
  sub_24EB6A3E4(&qword_27F229A88, sub_24E6ED11C);
  sub_24F92CC68();
  v19 = v29;
  *(v14 + v12[6]) = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214448);
  v30 = 3;
  sub_24EC0BC1C(&qword_27F214450, sub_24E62AC48);
  sub_24F92CC68();
  *(v14 + v12[7]) = v31;
  type metadata accessor for Page.Background(0);
  LOBYTE(v31) = 4;
  sub_24EC0C10C(&qword_27F21D930, type metadata accessor for Page.Background);
  v20 = v24;
  sub_24F92CC18();
  (*(v26 + 8))(v28, v17);
  sub_24E7DF71C(v20, v14 + v12[8]);
  sub_24EC0BB5C(v14, v23);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return sub_24EC0BBC0(v14);
}

uint64_t sub_24EC0B544(void *a1, uint64_t a2, uint64_t a3, int a4, double a5)
{
  v15 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B700);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v15 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EC0C01C();
  sub_24F92D128();
  v17 = *&a2;
  v16 = 0;
  type metadata accessor for MediaPlatform();
  sub_24EC0C10C(&qword_27F214070, type metadata accessor for MediaPlatform);
  sub_24F92CD48();
  if (!v5)
  {
    v17 = *&a3;
    v16 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227498);
    sub_24EC0C070(&qword_27F22B708, &qword_27F22B710);
    sub_24F92CD48();
    v17 = a5;
    v16 = 2;
    sub_24E620F7C();
    sub_24F92CD48();
    LOBYTE(v17) = 3;
    sub_24F92CD18();
  }

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_24EC0B7D8()
{
  v1 = *v0;
  v2 = 0x656D614E656D6167;
  v3 = 0x6964654D656D6167;
  v4 = 0x6D726F6674616C70;
  if (v1 != 3)
  {
    v4 = 0x756F72676B636162;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E6F6349656D6167;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24EC0B880@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24EC0C384(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24EC0B8A8(uint64_t a1)
{
  v2 = sub_24EC0BB08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EC0B8E4(uint64_t a1)
{
  v2 = sub_24EC0BB08();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24EC0B988()
{
  v1 = 0x6D726F6674616C70;
  v2 = 0x6152746365707361;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x736D657469;
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

uint64_t sub_24EC0BA0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24EC0C548(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24EC0BA34(uint64_t a1)
{
  v2 = sub_24EC0C01C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EC0BA70(uint64_t a1)
{
  v2 = sub_24EC0C01C();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_24EC0BAAC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v7 = sub_24EC0BCE8(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v7;
    *(a2 + 24) = v6 & 1;
  }
}

unint64_t sub_24EC0BB08()
{
  result = qword_27F22B6D0;
  if (!qword_27F22B6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B6D0);
  }

  return result;
}

uint64_t sub_24EC0BB5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GameDetailsMediaPreviewPageIntent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EC0BBC0(uint64_t a1)
{
  v2 = type metadata accessor for GameDetailsMediaPreviewPageIntent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24EC0BC1C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214448);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24EC0BC94()
{
  result = qword_27F22B6E8;
  if (!qword_27F22B6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B6E8);
  }

  return result;
}

double sub_24EC0BCE8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B6F0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EC0C01C();
  sub_24F92D108();
  type metadata accessor for MediaPlatform();
  HIBYTE(v8) = 0;
  sub_24EC0C10C(&qword_27F214028, type metadata accessor for MediaPlatform);
  sub_24F92CC68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227498);
  HIBYTE(v8) = 1;
  sub_24EC0C070(&qword_27F2274A0, &qword_27F2274A8);
  sub_24F92CC68();
  HIBYTE(v8) = 2;
  sub_24E620E90();
  sub_24F92CC68();
  v7 = v9;
  LOBYTE(v9) = 3;
  sub_24F92CC38();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

unint64_t sub_24EC0C01C()
{
  result = qword_27F22B6F8;
  if (!qword_27F22B6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B6F8);
  }

  return result;
}

uint64_t sub_24EC0C070(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F227498);
    sub_24EC0C10C(a2, type metadata accessor for GameDetailsMediaItem);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24EC0C10C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24EC0C178()
{
  result = qword_27F22B718;
  if (!qword_27F22B718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B718);
  }

  return result;
}

unint64_t sub_24EC0C1D0()
{
  result = qword_27F22B720;
  if (!qword_27F22B720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B720);
  }

  return result;
}

unint64_t sub_24EC0C228()
{
  result = qword_27F22B728;
  if (!qword_27F22B728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B728);
  }

  return result;
}

unint64_t sub_24EC0C280()
{
  result = qword_27F22B730;
  if (!qword_27F22B730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B730);
  }

  return result;
}

unint64_t sub_24EC0C2D8()
{
  result = qword_27F22B738;
  if (!qword_27F22B738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B738);
  }

  return result;
}

unint64_t sub_24EC0C330()
{
  result = qword_27F22B740;
  if (!qword_27F22B740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B740);
  }

  return result;
}

uint64_t sub_24EC0C384(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D614E656D6167 && a2 == 0xE800000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F6349656D6167 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6964654D656D6167 && a2 == 0xE900000000000061 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D726F6674616C70 && a2 == 0xE900000000000073 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x756F72676B636162 && a2 == 0xEA0000000000646ELL)
  {

    return 4;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24EC0C548(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D726F6674616C70 && a2 == 0xE800000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6152746365707361 && a2 == 0xEB000000006F6974 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA45210 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t VideoViewManager.__allocating_init()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C570);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v6 - v1;
  v3 = sub_24F929158();
  memset(v6, 0, sizeof(v6));
  v7 = 0;
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  type metadata accessor for VideoViewManager();
  v4 = swift_allocObject();
  VideoViewManager.init(networkInquiry:metricsPipeline:)(v6, v2);
  return v4;
}

uint64_t VideoViewManager.__allocating_init(networkInquiry:metricsPipeline:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  VideoViewManager.init(networkInquiry:metricsPipeline:)(a1, a2);
  return v4;
}

uint64_t type metadata accessor for VideoViewManager()
{
  result = qword_27F22B770;
  if (!qword_27F22B770)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t VideoViewManager.init(networkInquiry:metricsPipeline:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_24F92AAB8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F210560 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v5, qword_27F39C380);
  (*(v6 + 16))(v8, v9, v5);
  sub_24F92AAD8();
  *(v2 + OBJC_IVAR____TtC12GameStoreKit16VideoViewManager_videoViews) = sub_24E60E4E0(MEMORY[0x277D84F90]);
  sub_24E60169C(a1, v2 + OBJC_IVAR____TtC12GameStoreKit16VideoViewManager_networkInquiry, &qword_27F22B760);
  sub_24E60169C(a2, v2 + OBJC_IVAR____TtC12GameStoreKit16VideoViewManager_metricsPipeline, &qword_27F21C570);
  v10 = [objc_opt_self() defaultCenter];

  v11 = sub_24F92B098();
  [v10 addObserver:v2 selector:sel_videoDecodersUnavailable_ name:v11 object:0];

  sub_24E601704(a2, &qword_27F21C570);
  sub_24E601704(a1, &qword_27F22B760);
  return v2;
}

uint64_t VideoViewManager.deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = sub_24F92B098();
  [v1 removeObserver:v0 name:v2 object:0];

  v3 = OBJC_IVAR____TtC12GameStoreKit16VideoViewManager_logger;
  v4 = sub_24F92AAE8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit16VideoViewManager_networkInquiry, &qword_27F22B760);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit16VideoViewManager_metricsPipeline, &qword_27F21C570);
  return v0;
}

uint64_t VideoViewManager.__deallocating_deinit()
{
  VideoViewManager.deinit();

  return swift_deallocClassInstance();
}

id sub_24EC0CC10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v68 = a8;
  v69 = a7;
  v65 = a5;
  v63 = a4;
  v67 = a3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EB88);
  MEMORY[0x28223BE20](v12 - 8);
  v66 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v64 = &v59 - v15;
  v16 = type metadata accessor for VideoConfiguration();
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v59 - v20;
  v22 = sub_24F91F4A8();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v59 - v27;
  sub_24E60169C(a1, &v71, &qword_27F235830);
  if (!*(&v72 + 1))
  {
    v29 = &qword_27F235830;
    v30 = &v71;
    goto LABEL_5;
  }

  v74[0] = v71;
  v74[1] = v72;
  v75 = v73;
  sub_24E60169C(a2, v21, &qword_27F228530);
  if ((*(v23 + 48))(v21, 1, v22) != 1)
  {
    v32 = v28;
    v33 = a6;
    v34 = v32;
    (*(v23 + 32))();
    v35 = OBJC_IVAR____TtC12GameStoreKit16VideoViewManager_videoViews;
    swift_beginAccess();
    v36 = *(v8 + v35);
    v37 = *(v36 + 16);
    v62 = v8;
    v61 = v22;
    if (v37)
    {

      v38 = sub_24E76D934(v74);
      if (v39)
      {
        v40 = *(*(v36 + 56) + 16 * v38);

        v41 = swift_dynamicCastUnknownClass();
        if (v41)
        {
          v31 = v41;
          sub_24EC0D864(v67, v18);
          v42 = v68;
          v43 = v69;
          (*(v68 + 120))(v18, v69, v68);
          v44 = *(v42 + 32);

          v44(v45, v43, v42);
          (*(v23 + 8))(v34, v61);
LABEL_13:
          sub_24E6585F8(v74);
          return v31;
        }

        v8 = v62;
        v22 = v61;
      }

      else
      {

        v8 = v62;
      }
    }

    v59 = v23;
    sub_24E65864C(v74, &v71);
    v46 = *(v23 + 16);
    v60 = v34;
    v46(v25, v34, v22);
    v47 = v8;
    v48 = v18;
    sub_24EC0D864(v67, v18);
    v49 = v64;
    sub_24E60169C(v63, v64, &qword_27F21EB88);
    v50 = v66;
    sub_24E60169C(v65, v66, &qword_27F21EB88);
    sub_24E60169C(v47 + OBJC_IVAR____TtC12GameStoreKit16VideoViewManager_networkInquiry, v70, &qword_27F22B760);
    v51 = v68;
    v52 = v69;
    v53 = *(v68 + 16);

    v54 = v25;
    v55 = v62;
    v56 = v53(&v71, v54, v48, v49, v50, v70, v33, v52, v51);
    swift_beginAccess();
    v31 = v56;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v70[0] = *(v55 + v35);
    *(v55 + v35) = 0x8000000000000000;
    sub_24EC0D8C8(v31, v74, isUniquelyReferenced_nonNull_native, v70, v52, v51);
    *(v55 + v35) = v70[0];
    swift_endAccess();
    (*(v59 + 8))(v60, v61);
    goto LABEL_13;
  }

  sub_24E6585F8(v74);
  v29 = &qword_27F228530;
  v30 = v21;
LABEL_5:
  sub_24E601704(v30, v29);
  return 0;
}

void sub_24EC0D1D0()
{
  v1 = v0;
  v2 = sub_24F91EB48();
  if (!v2)
  {
    goto LABEL_13;
  }

  v3 = v2;
  *&v39[0] = 0x6B63616279616C50;
  *(&v39[0] + 1) = 0xEA00000000006449;
  sub_24F92C7F8();
  if (!*(v3 + 16) || (v4 = sub_24E76D934(v40), (v5 & 1) == 0))
  {

    sub_24E6585F8(v40);
LABEL_13:
    v36 = 0u;
    v37 = 0u;
    goto LABEL_14;
  }

  sub_24E643A9C(*(v3 + 56) + 32 * v4, &v36);
  sub_24E6585F8(v40);

  if (!*(&v37 + 1))
  {
LABEL_14:
    sub_24E601704(&v36, &qword_27F2129B0);
    return;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v7 = v40[0];
  v6 = v40[1];
  v8 = sub_24F91EB48();
  if (!v8)
  {

    goto LABEL_13;
  }

  v9 = v8;
  strcpy(v38, "videoViewError");
  v38[15] = -18;
  sub_24F92C7F8();
  if (!*(v9 + 16) || (v10 = sub_24E76D934(v40), (v11 & 1) == 0))
  {

    sub_24E6585F8(v40);
    v36 = 0u;
    v37 = 0u;
    goto LABEL_17;
  }

  sub_24E643A9C(*(v9 + 56) + 32 * v10, &v36);
  sub_24E6585F8(v40);

  if (!*(&v37 + 1))
  {
LABEL_17:

    goto LABEL_14;
  }

  sub_24E612B0C(&v36, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A070;
  sub_24F9283A8();
  v12 = OBJC_IVAR____TtC12GameStoreKit16VideoViewManager_videoViews;
  swift_beginAccess();
  v13 = *(*(v1 + v12) + 16);
  v41 = MEMORY[0x277D83B88];
  v40[0] = v13;
  sub_24F928438();
  sub_24E601704(v40, &qword_27F2129B0);
  sub_24F9283A8();
  sub_24E643A9C(v39, v40);
  sub_24F928438();
  sub_24E601704(v40, &qword_27F2129B0);
  sub_24F9283A8();
  v14 = *(v1 + v12);
  *&v36 = v7;
  *(&v36 + 1) = v6;

  sub_24F92C7F8();
  if (*(v14 + 16))
  {
    sub_24E76D934(v40);
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  sub_24E6585F8(v40);

  v41 = MEMORY[0x277D839B0];
  LOBYTE(v40[0]) = v16 & 1;
  sub_24F928438();
  sub_24E601704(v40, &qword_27F2129B0);
  sub_24F92AAE8();
  sub_24F92A5A8();

  v17 = *(v1 + v12);
  v20 = *(v17 + 64);
  v19 = v17 + 64;
  v18 = v20;
  v21 = 1 << *(*(v1 + v12) + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v18;
  v24 = (v21 + 63) >> 6;
  v35 = *(v1 + v12);

  v25 = 0;
  while (v23)
  {
LABEL_29:
    v27 = *(v35 + 56) + ((v25 << 10) | (16 * __clz(__rbit64(v23))));
    v28 = *v27;
    v29 = *(v27 + 8);
    ObjectType = swift_getObjectType();
    v31 = *(v29 + 8);
    v32 = *(v31 + 8);
    v33 = v28;
    v32(v40, ObjectType, v31);

    sub_24F92C7F8();
    v34 = MEMORY[0x253052150](v40, &v36);
    sub_24E6585F8(&v36);
    sub_24E6585F8(v40);
    if ((v34 & 1) == 0)
    {
      (*(v29 + 144))(1, ObjectType, v29);
    }

    v23 &= v23 - 1;
  }

  while (1)
  {
    v26 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v26 >= v24)
    {

      __swift_destroy_boxed_opaque_existential_1(v39);
      return;
    }

    v23 = *(v19 + 8 * v26);
    ++v25;
    if (v23)
    {
      v25 = v26;
      goto LABEL_29;
    }
  }

  __break(1u);
}

uint64_t sub_24EC0D864(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VideoConfiguration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_24EC0D8C8(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t a6)
{
  v11 = *a4;
  v13 = sub_24E76D934(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 < v16 || (a3 & 1) != 0)
    {
      sub_24E8A2AB0(v16, a3 & 1);
      v22 = sub_24E76D934(a2);
      if ((v17 & 1) != (v23 & 1))
      {
LABEL_17:
        sub_24F92CF88();
        __break(1u);
        return;
      }

      v13 = v22;
      v19 = *a4;
      if (v17)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

    sub_24E8B3164();
  }

  v19 = *a4;
  if ((v17 & 1) == 0)
  {
LABEL_13:
    sub_24E65864C(a2, v31);
    v19[(v13 >> 6) + 8] |= 1 << v13;
    v24 = v19[6] + 40 * v13;
    v25 = v32;
    v26 = v31[1];
    *v24 = v31[0];
    *(v24 + 16) = v26;
    *(v24 + 32) = v25;
    v27 = (v19[7] + 16 * v13);
    *v27 = a1;
    v27[1] = a6;
    v28 = v19[2];
    v29 = __OFADD__(v28, 1);
    v30 = v28 + 1;
    if (!v29)
    {
      v19[2] = v30;
      return;
    }

    goto LABEL_16;
  }

LABEL_8:
  v20 = v19[7] + 16 * v13;
  v21 = *v20;
  *v20 = a1;
  *(v20 + 8) = a6;
}

void sub_24EC0DA60()
{
  sub_24F92AAE8();
  if (v0 <= 0x3F)
  {
    sub_24E78F45C();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_24EC0DBF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v165 = a3;
  v166 = a2;
  v157 = a1;
  v154 = sub_24F927D88();
  v153 = *(v154 - 8);
  MEMORY[0x28223BE20](v154);
  v150 = &v134 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_24F927DC8();
  v151 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v149 = &v134 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = sub_24F927DE8();
  v148 = *(v164 - 8);
  MEMORY[0x28223BE20](v164);
  v144 = &v134 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v146 = &v134 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v8 - 8);
  v156 = &v134 - v9;
  v160 = sub_24F91F6B8();
  v159 = *(v160 - 8);
  MEMORY[0x28223BE20](v160);
  v158 = &v134 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v11 - 8);
  v155 = &v134 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v141 = &v134 - v14;
  MEMORY[0x28223BE20](v15);
  v163 = &v134 - v16;
  MEMORY[0x28223BE20](v17);
  v168 = (&v134 - v18);
  v19 = sub_24F92A6B8();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v134 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_24F928AD8();
  v175 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v147 = &v134 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v145 = &v134 - v26;
  MEMORY[0x28223BE20](v27);
  v143 = &v134 - v28;
  MEMORY[0x28223BE20](v29);
  v142 = &v134 - v30;
  MEMORY[0x28223BE20](v31);
  v161 = &v134 - v32;
  MEMORY[0x28223BE20](v33);
  v162 = &v134 - v34;
  MEMORY[0x28223BE20](v35);
  v37 = &v134 - v36;
  MEMORY[0x28223BE20](v38);
  v40 = &v134 - v39;
  MEMORY[0x28223BE20](v41);
  v43 = &v134 - v42;
  v192 = MEMORY[0x277D84F90];
  v178 = 0;
  v177 = 0u;
  aBlock = 0u;
  sub_24F928A98();
  sub_24F92A678();
  v136 = type metadata accessor for FlowBackAction();
  v44 = swift_allocObject();
  sub_24F928A98();
  v137 = v40;
  sub_24F92A668();
  v45 = *(v20 + 32);
  v138 = v22;
  v46 = v22;
  v47 = v160;
  v140 = v19;
  v139 = v20 + 32;
  v45(v44 + OBJC_IVAR____TtC12GameStoreKit14FlowBackAction_base, v46, v19);
  sub_24E60169C(&aBlock, &v189, &qword_27F235830);
  v49 = (v175 + 16);
  v48 = *(v175 + 16);
  v167 = v23;
  v50 = v23;
  v51 = v159;
  v174 = v48;
  v48(v37, v43, v50);
  v52 = sub_24F929608();
  v53 = *(v52 - 8);
  v54 = *(v53 + 56);
  v173 = v52;
  v172 = v54;
  v171 = v53 + 56;
  (v54)(v168, 1, 1);
  v55 = (v44 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v55 = 0u;
  v55[1] = 0u;
  sub_24E60169C(&v189, &v183, &qword_27F235830);
  v56 = v158;
  if (*(&v184 + 1))
  {
    v186 = v183;
    v187 = v184;
    v188 = v185;
  }

  else
  {
    sub_24F91F6A8();
    v57 = v49;
    v58 = v37;
    v59 = v44;
    v60 = v45;
    v61 = sub_24F91F668();
    v63 = v62;
    (*(v51 + 8))(v56, v47);
    *&v182[0] = v61;
    v45 = v60;
    v44 = v59;
    v37 = v58;
    v49 = v57;
    *(&v182[0] + 1) = v63;
    sub_24F92C7F8();
    sub_24E601704(&v183, &qword_27F235830);
  }

  sub_24E601704(&v189, &qword_27F235830);
  v64 = v175;
  v65 = *(v175 + 8);
  v66 = v167;
  v170 = v175 + 8;
  v169 = v65;
  v65(v43, v167);
  sub_24E601704(&aBlock, &qword_27F235830);
  v67 = v44 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  v68 = v187;
  *v67 = v186;
  *(v67 + 16) = v68;
  *(v67 + 32) = v188;
  sub_24E65E0D4(v168, v44 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  *(v44 + 16) = 0u;
  *(v44 + 32) = 0u;
  v70 = *(v64 + 32);
  v69 = v64 + 32;
  v168 = v70;
  v70(v44 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v37, v66);

  MEMORY[0x253050F00](v71);
  if (*((v192 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v192 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_24F92B5E8();
  }

  sub_24F92B638();
  v72 = v157;
  v73 = *(v157 + OBJC_IVAR____TtC12GameStoreKit15TabChangeAction_navigationTab);
  v74 = v156;
  v135 = v45;
  if (v73 <= 3)
  {
    if (v73 > 1)
    {
      if (v73 == 2)
      {
        v75 = 0xE500000000000000;
        v76 = 0x7961646F74;
      }

      else
      {
        v75 = 0xE400000000000000;
        v76 = 1936748641;
      }
    }

    else if (v73)
    {
      v75 = 0xE800000000000000;
      v76 = 0x64657463656C6573;
    }

    else
    {
      v75 = 0xE500000000000000;
      v76 = 0x7265666E69;
    }
  }

  else if (v73 <= 5)
  {
    if (v73 == 4)
    {
      v75 = 0xE500000000000000;
      v76 = 0x73656D6167;
    }

    else
    {
      v75 = 0xE600000000000000;
      v76 = 0x686372616573;
    }
  }

  else if (v73 == 6)
  {
    v75 = 0xE700000000000000;
    v76 = 0x73657461647075;
  }

  else if (v73 == 7)
  {
    v75 = 0xE600000000000000;
    v76 = 0x656461637261;
  }

  else
  {
    v75 = 0xE700000000000000;
    v76 = 0x676E6964616F6CLL;
  }

  *&v189 = v76;
  *(&v189 + 1) = v75;
  sub_24F92C7F8();
  v77 = sub_24F91F4A8();
  (*(*(v77 - 8) + 56))(v74, 1, 1, v77);
  memset(v182, 0, sizeof(v182));
  v78 = v162;
  sub_24F928A98();
  v79 = sub_24F929D28();
  v81 = v80;
  type metadata accessor for FlowAction();
  v82 = swift_allocObject();
  *(v82 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageDataPageRenderMetrics) = 0;
  v83 = v82 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageData;
  *v83 = 0u;
  *(v83 + 16) = 0u;
  *(v83 + 32) = 0;
  v84 = (v82 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_appStateController);
  *v84 = 0;
  v84[1] = 0;
  *(v82 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_page) = 8;
  sub_24E60169C(v74, v82 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageUrl, &qword_27F228530);
  v85 = (v82 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerUrl);
  *v85 = 0;
  v85[1] = 0;
  v86 = v82 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData;
  *v86 = xmmword_24F9406F0;
  *(v86 + 24) = 0;
  *(v86 + 32) = 0;
  *(v86 + 16) = 0;
  *(v86 + 40) = 0;
  *(v82 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentationContext) = 0;
  *(v82 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_animationBehavior) = 0;
  *(v82 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_origin) = 0;
  v87 = (v82 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentation);
  *v87 = v79;
  v87[1] = v81;
  sub_24E60169C(&aBlock, &v189, &qword_27F235830);
  v174(v161, v78, v66);
  v172(v163, 1, 1, v173);
  v88 = (v82 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v88 = 0u;
  v88[1] = 0u;
  sub_24E60169C(&v189, &v183, &qword_27F235830);
  if (*(&v184 + 1))
  {
    v186 = v183;
    v187 = v184;
    v188 = v185;
  }

  else
  {
    v89 = v158;
    sub_24F91F6A8();
    v90 = sub_24F91F668();
    v92 = v91;
    v93 = v89;
    v74 = v156;
    (*(v159 + 8))(v93, v160);
    v180 = v90;
    v181 = v92;
    sub_24F92C7F8();
    sub_24E601704(&v183, &qword_27F235830);
  }

  v156 = v49;
  sub_24E601704(&v189, &qword_27F235830);
  v94 = v82 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  v95 = v187;
  *v94 = v186;
  *(v94 + 16) = v95;
  *(v94 + 32) = v188;
  sub_24E65E0D4(v163, v82 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  *(v82 + 16) = 0u;
  *(v82 + 32) = 0u;
  v168(v82 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v161, v66);

  FlowAction.setPageData(_:)(v182);

  v169(v162, v66);
  sub_24E601704(v182, &qword_27F2129B0);
  sub_24E601704(v74, &qword_27F228530);
  sub_24E601704(&aBlock, &qword_27F235830);

  MEMORY[0x253050F00](v96);
  if (*((v192 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v192 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_24F92B5E8();
  }

  sub_24F92B638();
  if (*(v72 + OBJC_IVAR____TtC12GameStoreKit15TabChangeAction_popToRoot) == 1)
  {
    v178 = 0;
    v177 = 0u;
    aBlock = 0u;
    v97 = v142;
    sub_24F928A98();
    sub_24F92A688();
    v98 = swift_allocObject();
    sub_24F928A98();
    v99 = v138;
    sub_24F92A668();
    v135(v98 + OBJC_IVAR____TtC12GameStoreKit14FlowBackAction_base, v99, v140);
    sub_24E60169C(&aBlock, &v189, &qword_27F235830);
    v174(v143, v97, v66);
    v100 = v141;
    v172(v141, 1, 1, v173);
    v101 = (v98 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
    *v101 = 0u;
    v101[1] = 0u;
    sub_24E60169C(&v189, &v183, &qword_27F235830);
    if (*(&v184 + 1))
    {
      v186 = v183;
      v187 = v184;
      v188 = v185;
    }

    else
    {
      v102 = v158;
      sub_24F91F6A8();
      v103 = sub_24F91F668();
      v105 = v104;
      (*(v159 + 8))(v102, v160);
      *&v182[0] = v103;
      *(&v182[0] + 1) = v105;
      sub_24F92C7F8();
      sub_24E601704(&v183, &qword_27F235830);
    }

    sub_24E601704(&v189, &qword_27F235830);
    v169(v142, v66);
    sub_24E601704(&aBlock, &qword_27F235830);
    v106 = v98 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
    v107 = v187;
    *v106 = v186;
    *(v106 + 16) = v107;
    *(v106 + 32) = v188;
    sub_24E65E0D4(v100, v98 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
    *(v98 + 16) = 0u;
    *(v98 + 32) = 0u;
    v168(v98 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v143, v66);

    MEMORY[0x253050F00](v108);
    v72 = v157;
    if (*((v192 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v192 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24F92B5E8();
    }

    sub_24F92B638();
  }

  v163 = v44;
  v175 = v69;
  v162 = v192;
  sub_24E74EC40();
  v109 = sub_24F92BEF8();
  v110 = v144;
  sub_24F927DD8();
  v111 = v146;
  sub_24F927E58();
  v161 = *(v148 + 8);
  (v161)(v110, v164);
  v112 = swift_allocObject();
  v112[2] = v165;
  v112[3] = v72;
  v112[4] = v166;
  v178 = sub_24EC0F8AC;
  v179 = v112;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v177 = sub_24EAF8248;
  *(&v177 + 1) = &block_descriptor_60;
  v113 = _Block_copy(&aBlock);

  v114 = v149;
  sub_24F927DA8();
  *&aBlock = MEMORY[0x277D84F90];
  sub_24EC0F8D0(&qword_27F222930, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310);
  sub_24E8582A8();
  v115 = v150;
  v116 = v154;
  sub_24F92C6A8();
  MEMORY[0x253051820](v111, v114, v115, v113);
  _Block_release(v113);

  v117 = v115;
  v118 = v167;
  (*(v153 + 8))(v117, v116);
  (*(v151 + 8))(v114, v152);
  (v161)(v111, v164);
  v119 = v145;
  sub_24F928A98();
  v120 = type metadata accessor for CompoundAction();
  v121 = swift_allocObject();
  *(v121 + OBJC_IVAR____TtC12GameStoreKit14CompoundAction_actions) = v162;
  v178 = 0;
  v177 = 0u;
  aBlock = 0u;
  v122 = v147;
  v174(v147, v119, v118);
  v123 = v155;
  v172(v155, 1, 1, v173);
  v124 = (v121 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v124 = 0u;
  v124[1] = 0u;
  sub_24E60169C(&aBlock, &v186, &qword_27F235830);
  if (*(&v187 + 1))
  {
    v189 = v186;
    v190 = v187;
    v191 = v188;
  }

  else
  {
    v125 = v158;
    sub_24F91F6A8();
    v126 = sub_24F91F668();
    v128 = v127;
    v129 = v125;
    v118 = v167;
    (*(v159 + 8))(v129, v160);
    *&v183 = v126;
    *(&v183 + 1) = v128;
    sub_24F92C7F8();
    sub_24E601704(&v186, &qword_27F235830);
  }

  sub_24E601704(&aBlock, &qword_27F235830);
  v169(v119, v118);
  v130 = v121 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  v131 = v190;
  *v130 = v189;
  *(v130 + 16) = v131;
  *(v130 + 32) = v191;
  sub_24E65E0D4(v123, v121 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  *(v121 + 16) = 0u;
  *(v121 + 32) = 0u;
  v168(v121 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v122, v118);
  *(&v177 + 1) = v120;
  v178 = sub_24EC0F8D0(&qword_27F221050, type metadata accessor for CompoundAction);
  *&aBlock = v121;
  type metadata accessor for TabChangeActionImplementation();

  swift_getWitnessTable();
  v132 = sub_24F1489C4(&aBlock);

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  return v132;
}

uint64_t sub_24EC0F3EC(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v3 = sub_24F91F6B8();
  v29 = *(v3 - 8);
  v30 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v27 - v7;
  v9 = sub_24F928AD8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v27 - v14;
  v16 = *(a1 + OBJC_IVAR____TtC12GameStoreKit15TabChangeAction_actions);

  sub_24F928A98();
  v17 = type metadata accessor for CompoundAction();
  v18 = swift_allocObject();
  *(v18 + OBJC_IVAR____TtC12GameStoreKit14CompoundAction_actions) = v16;
  v42 = 0;
  v40 = 0u;
  v41 = 0u;
  (*(v10 + 16))(v12, v15, v9);
  v19 = sub_24F929608();
  (*(*(v19 - 8) + 56))(v8, 1, 1, v19);
  v20 = (v18 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v20 = 0u;
  v20[1] = 0u;
  sub_24E60169C(&v40, &v34, &qword_27F235830);
  if (*(&v35 + 1))
  {
    v37 = v34;
    v38 = v35;
    v39 = v36;
  }

  else
  {
    sub_24F91F6A8();
    v28 = v12;
    v21 = sub_24F91F668();
    v23 = v22;
    (*(v29 + 8))(v5, v30);
    v32 = v21;
    v33 = v23;
    v12 = v28;
    sub_24F92C7F8();
    sub_24E601704(&v34, &qword_27F235830);
  }

  sub_24E601704(&v40, &qword_27F235830);
  (*(v10 + 8))(v15, v9);
  v24 = v18 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  v25 = v38;
  *v24 = v37;
  *(v24 + 16) = v25;
  *(v24 + 32) = v39;
  sub_24E65E0D4(v8, v18 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0u;
  (*(v10 + 32))(v18 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v12, v9);
  *(&v41 + 1) = v17;
  v42 = sub_24EC0F8D0(&qword_27F221050, type metadata accessor for CompoundAction);
  *&v40 = v18;
  type metadata accessor for TabChangeActionImplementation();

  swift_getWitnessTable();
  sub_24F1489C4(&v40);

  return __swift_destroy_boxed_opaque_existential_1(&v40);
}

uint64_t sub_24EC0F86C()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24EC0F8D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t TabChangeAction.__allocating_init(navigationTab:actions:popToRoot:presentationStyle:actionMetrics:)(_BYTE *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  TabChangeAction.init(navigationTab:actions:popToRoot:presentationStyle:actionMetrics:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t TabChangeAction.init(navigationTab:actions:popToRoot:presentationStyle:actionMetrics:)(_BYTE *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v45 = a4;
  v11 = sub_24F91F6B8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v44 - v16;
  v18 = sub_24F928AD8();
  MEMORY[0x28223BE20](v18);
  v22 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + OBJC_IVAR____TtC12GameStoreKit15TabChangeAction_navigationTab) = *a1;
  v23 = MEMORY[0x277D84F90];
  if (a2)
  {
    v23 = a2;
  }

  *(v6 + OBJC_IVAR____TtC12GameStoreKit15TabChangeAction_actions) = v23;
  *(v6 + OBJC_IVAR____TtC12GameStoreKit15TabChangeAction_popToRoot) = a3;
  v24 = v19;
  v56 = 0;
  memset(v55, 0, sizeof(v55));
  v46 = v20;
  v25 = *(v20 + 16);
  v44 = a5;
  v25(v22, a5, v19);
  v26 = sub_24F929608();
  (*(*(v26 - 8) + 56))(v17, 1, 1, v26);
  v27 = (v6 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v27 = 0u;
  v27[1] = 0u;
  sub_24E65E064(v55, &v49);
  if (*(&v50 + 1))
  {
    v52 = v49;
    v53 = v50;
    v54 = v51;
  }

  else
  {
    sub_24F91F6A8();
    v28 = sub_24F91F668();
    v29 = v24;
    v31 = v30;
    (*(v12 + 8))(v14, v11);
    v47 = v28;
    v48 = v31;
    v24 = v29;
    sub_24F92C7F8();
    sub_24E601704(&v49, &qword_27F235830);
  }

  sub_24E601704(v55, &qword_27F235830);
  v32 = v6 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v32 + 4) = v54;
  v33 = v53;
  *v32 = v52;
  *(v32 + 1) = v33;
  sub_24E65E0D4(v17, v6 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  v6[2] = 0;
  v6[3] = 0;
  v34 = v45;
  v35 = v46;
  v6[4] = 0;
  v6[5] = v34;
  (*(v35 + 32))(v6 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v22, v24);
  if (*(v6 + OBJC_IVAR____TtC12GameStoreKit15TabChangeAction_navigationTab) < 2u && *(v6 + OBJC_IVAR____TtC12GameStoreKit15TabChangeAction_navigationTab))
  {

LABEL_10:
    (*(v35 + 8))(v44, v24);

    return v6;
  }

  v36 = sub_24F92CE08();

  if (v36)
  {
    goto LABEL_10;
  }

  v38 = *(v6 + OBJC_IVAR____TtC12GameStoreKit15TabChangeAction_actions);
  if (!(v38 >> 62))
  {
    v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v39)
    {
      goto LABEL_13;
    }

LABEL_23:

LABEL_24:
    (*(v35 + 8))(v44, v24);
    return v6;
  }

  result = sub_24F92C738();
  v39 = result;
  if (!result)
  {
    goto LABEL_23;
  }

LABEL_13:
  if (v39 >= 1)
  {
    v45 = v24;

    for (i = 0; i != v39; ++i)
    {
      if ((v38 & 0xC000000000000001) != 0)
      {
        MEMORY[0x253052270](i, v38);
      }

      else
      {
      }

      type metadata accessor for FlowAction();
      v41 = swift_dynamicCastClass();
      if (v41)
      {
        v42 = OBJC_IVAR____TtC12GameStoreKit10FlowAction_animationBehavior;
        v43 = v41;
        swift_beginAccess();
        *(v43 + v42) = 1;
      }
    }

    v24 = v45;
    v35 = v46;
    goto LABEL_24;
  }

  __break(1u);
  return result;
}

uint64_t TabChangeAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);

  return v0;
}

uint64_t TabChangeAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);

  return swift_deallocClassInstance();
}

uint64_t sub_24EC10204(char *a1, char *a2)
{
  v82 = a2;
  v70 = sub_24F91F6B8();
  v69 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v68 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F9285B8();
  v79 = *(v4 - 8);
  v80 = v4;
  MEMORY[0x28223BE20](v4);
  v71 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223CE8);
  MEMORY[0x28223BE20](v6 - 8);
  v73 = &v68 - v7;
  v78 = sub_24F928AD8();
  v81 = *(v78 - 8);
  v8 = MEMORY[0x28223BE20](v78);
  v74 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v85 = &v68 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v68 - v12;
  v14 = sub_24F928388();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v72 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v68 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v68 - v21;
  v23 = sub_24F92AC28();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = a1;
  sub_24F928398();
  sub_24F9282B8();
  v27 = *(v15 + 8);
  v77 = v14;
  v76 = v15 + 8;
  v75 = v27;
  v27(v22, v14);
  if ((*(v24 + 48))(v13, 1, v23) == 1)
  {
    sub_24E601704(v13, &qword_27F2213B0);
    v86 = MEMORY[0x277D84F90];
    v28 = v82;
  }

  else
  {
    (*(v24 + 32))(v26, v13, v23);
    v29 = type metadata accessor for Action();
    v30 = MEMORY[0x28223BE20](v29);
    v28 = v82;
    v31 = v83;
    *(&v68 - 2) = v30;
    *(&v68 - 1) = v28;
    v86 = sub_24F92ABB8();
    v83 = v31;
    (*(v24 + 8))(v26, v23);
  }

  sub_24F928398();
  (*(v79 + 16))(v71, v28, v80);
  v32 = v73;
  v33 = v78;
  sub_24F929548();
  v34 = v81;
  v35 = *(v81 + 48);
  if (v35(v32, 1, v33) == 1)
  {
    sub_24F928A98();
    if (v35(v32, 1, v33) != 1)
    {
      sub_24E601704(v32, &qword_27F223CE8);
    }
  }

  else
  {
    (*(v34 + 32))(v85, v32, v33);
  }

  sub_24F928398();
  sub_24E9EF1BC();
  sub_24F928208();
  v36 = v20;
  v37 = v77;
  v38 = v75;
  v75(v36, v77);
  v39 = v94;
  v40 = v72;
  sub_24F928398();
  v41 = sub_24F928278();
  v38(v40, v37);
  v42 = *(v34 + 16);
  v43 = v74;
  v42(v74, v85, v33);
  type metadata accessor for TabChangeAction();
  v44 = swift_allocObject();
  *(v44 + OBJC_IVAR____TtC12GameStoreKit15TabChangeAction_navigationTab) = v39;
  v45 = v86;
  *(v44 + OBJC_IVAR____TtC12GameStoreKit15TabChangeAction_actions) = v86;
  *(v44 + OBJC_IVAR____TtC12GameStoreKit15TabChangeAction_popToRoot) = v41 & 1;
  v93 = 0;
  memset(v92, 0, sizeof(v92));
  v42((v44 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics), v43, v33);
  v46 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
  v47 = sub_24F929608();
  (*(*(v47 - 8) + 56))(v44 + v46, 1, 1, v47);
  v48 = (v44 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v48 = 0u;
  v48[1] = 0u;
  v49 = v44 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  sub_24E65E064(v92, &v89);
  if (*(&v90 + 1))
  {
    v50 = v90;
    *v49 = v89;
    *(v49 + 16) = v50;
    *(v49 + 32) = v91;
  }

  else
  {
    v51 = v68;
    sub_24F91F6A8();
    v52 = sub_24F91F668();
    v54 = v53;
    (*(v69 + 8))(v51, v70);
    v87 = v52;
    v88 = v54;
    sub_24F92C7F8();
    sub_24E601704(&v89, &qword_27F235830);
  }

  sub_24E601704(v92, &qword_27F235830);
  *(v44 + 16) = 0u;
  *(v44 + 32) = 0u;
  v55 = v81;
  v56 = v85;
  if (*(v44 + OBJC_IVAR____TtC12GameStoreKit15TabChangeAction_navigationTab) <= 3u)
  {
    v57 = v82;
    if (*(v44 + OBJC_IVAR____TtC12GameStoreKit15TabChangeAction_navigationTab) <= 1u && *(v44 + OBJC_IVAR____TtC12GameStoreKit15TabChangeAction_navigationTab))
    {

LABEL_33:
      v75(v84, v77);
      v66 = *(v55 + 8);
      v67 = v78;
      v66(v43, v78);
      v66(v56, v67);
      (*(v79 + 8))(v57, v80);
      return v44;
    }
  }

  else
  {
    v57 = v82;
  }

  v58 = sub_24F92CE08();

  if (v58)
  {

    v56 = v85;
    goto LABEL_33;
  }

  if (!(v45 >> 62))
  {
    v60 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v56 = v85;
    if (v60)
    {
      goto LABEL_22;
    }

LABEL_32:

    goto LABEL_33;
  }

  result = sub_24F92C738();
  v60 = result;
  v56 = v85;
  if (!result)
  {
    goto LABEL_32;
  }

LABEL_22:
  if (v60 >= 1)
  {
    v61 = v45 & 0xC000000000000001;

    for (i = 0; i != v60; ++i)
    {
      if (v61)
      {
        MEMORY[0x253052270](i, v45);
      }

      else
      {
      }

      type metadata accessor for FlowAction();
      v63 = swift_dynamicCastClass();
      if (v63)
      {
        v64 = OBJC_IVAR____TtC12GameStoreKit10FlowAction_animationBehavior;
        v65 = v63;
        swift_beginAccess();
        *(v65 + v64) = 1;
        v45 = v86;
      }
    }

    v57 = v82;
    v55 = v81;
    v43 = v74;
    v56 = v85;
    goto LABEL_33;
  }

  __break(1u);
  return result;
}