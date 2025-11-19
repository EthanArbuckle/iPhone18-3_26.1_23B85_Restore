uint64_t StateOfMindTimeline.DaySummary.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = _s5EntryVMa();
  v5 = *(v4 - 1);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A2C484(0, &qword_27F96D908, MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v37 - v11;
  MEMORY[0x259C93B20](*v1);
  v13 = type metadata accessor for StateOfMindTimeline.DaySummary();
  v14 = v13[5];
  sub_258B029C4();
  sub_258A2C5C8(&qword_27F9706A0, MEMORY[0x277CCB6A8]);
  sub_258B02A24();
  v15 = (v2 + v13[6]);
  v16 = *v15;
  v17 = v15[1];
  sub_258B02B74();
  sub_258A2C284(v2 + v13[7], v12);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    sub_258B03534();
  }

  else
  {
    sub_2589F56E4(v12, v8);
    sub_258B03534();
    sub_258B000C4();
    sub_258A2C5C8(&qword_27F96EAB0, MEMORY[0x277CC95F0]);
    sub_258B02A24();
    v18 = &v8[v4[5]];
    v19 = *v18;
    v20 = *(v18 + 1);
    sub_258B02B74();
    v21 = &v8[v4[6]];
    v22 = *v21;
    v23 = *(v21 + 1);
    sub_258B02B74();
    v24 = &v8[v4[7]];
    v25 = *v24;
    v26 = *(v24 + 1);
    sub_258B02B74();
    v27 = &v8[v4[8]];
    v28 = *v27;
    v29 = *(v27 + 1);
    sub_258B02B74();
    v30 = *&v8[v4[9]];
    if (v30 == 0.0)
    {
      v30 = 0.0;
    }

    MEMORY[0x259C93B40](*&v30);
    sub_258A2C610(v8, _s5EntryVMa);
  }

  sub_258A2BCC8(a1, *(v2 + v13[8]));
  v31 = *(v2 + v13[9]);
  result = MEMORY[0x259C93B20](*(v31 + 16));
  v33 = *(v31 + 16);
  if (v33)
  {
    v34 = (v31 + 40);
    do
    {
      v35 = *(v34 - 1);
      v36 = *v34;
      sub_258B003E4();
      sub_258B02B74();

      v34 += 2;
      --v33;
    }

    while (v33);
  }

  return result;
}

uint64_t StateOfMindTimeline.DaySummary.hashValue.getter()
{
  sub_258B03514();
  StateOfMindTimeline.DaySummary.hash(into:)(v1);
  return sub_258B03554();
}

uint64_t sub_258A2BBE8()
{
  sub_258B03514();
  StateOfMindTimeline.DaySummary.hash(into:)(v1);
  return sub_258B03554();
}

uint64_t sub_258A2BC2C()
{
  sub_258B03514();
  StateOfMindTimeline.DaySummary.hash(into:)(v1);
  return sub_258B03554();
}

uint64_t sub_258A2BC98@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v2 + *(a1 + 20);
  result = sub_258B02984();
  *a2 = result;
  return result;
}

uint64_t sub_258A2BCC8(uint64_t a1, uint64_t a2)
{
  v3 = _s5EntryVMa();
  v4 = *(v3 - 1);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  result = MEMORY[0x259C93B20](v8);
  if (v8)
  {
    v10 = &v7[v3[5]];
    v11 = &v7[v3[6]];
    v12 = &v7[v3[7]];
    v13 = v4;
    v14 = &v7[v3[8]];
    v15 = v3[9];
    v16 = a2 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v26 = *(v13 + 72);
    v27 = v15;
    do
    {
      sub_258A2C4E4(v16, v7);
      sub_258B000C4();
      sub_258A2C5C8(&qword_27F96EAB0, MEMORY[0x277CC95F0]);
      sub_258B02A24();
      v17 = *v10;
      v18 = *(v10 + 1);
      sub_258B02B74();
      v19 = *v11;
      v20 = *(v11 + 1);
      sub_258B02B74();
      v21 = *v12;
      v22 = *(v12 + 1);
      sub_258B02B74();
      v23 = *v14;
      v24 = *(v14 + 1);
      sub_258B02B74();
      v25 = *&v7[v27];
      if (v25 == 0.0)
      {
        v25 = 0.0;
      }

      MEMORY[0x259C93B40](*&v25);
      result = sub_258A2C610(v7, _s5EntryVMa);
      v16 += v26;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t _s14MentalHealthUI19StateOfMindTimelineO10DaySummaryV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = _s5EntryVMa();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A2C484(0, &qword_27F96D908, MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v30 - v11;
  sub_258A2C548();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 != *a2)
  {
    goto LABEL_3;
  }

  v30[0] = v15;
  v18 = type metadata accessor for StateOfMindTimeline.DaySummary();
  v19 = v18[5];
  sub_258B029C4();
  sub_258A2C5C8(&unk_27F9706C0, MEMORY[0x277CCB6A8]);
  sub_258B030E4();
  if (v30[1])
  {
    goto LABEL_3;
  }

  v22 = v18[6];
  v23 = *(a1 + v22);
  v24 = *(a1 + v22 + 8);
  v25 = (a2 + v22);
  if ((v23 != *v25 || v24 != v25[1]) && (sub_258B03454() & 1) == 0)
  {
    goto LABEL_3;
  }

  v26 = v18[7];
  v27 = *(v30[0] + 48);
  sub_258A2C284(a1 + v26, v17);
  sub_258A2C284(a2 + v26, &v17[v27]);
  v28 = *(v5 + 48);
  if (v28(v17, 1, v4) != 1)
  {
    sub_258A2C284(v17, v12);
    if (v28(&v17[v27], 1, v4) != 1)
    {
      sub_2589F56E4(&v17[v27], v8);
      v29 = sub_258ABAEE0(v12, v8);
      sub_258A2C610(v8, _s5EntryVMa);
      sub_258A2C610(v12, _s5EntryVMa);
      sub_258A2C670(v17);
      if (!v29)
      {
        goto LABEL_3;
      }

      goto LABEL_15;
    }

    sub_258A2C610(v12, _s5EntryVMa);
LABEL_13:
    sub_258A2C610(v17, sub_258A2C548);
    goto LABEL_3;
  }

  if (v28(&v17[v27], 1, v4) != 1)
  {
    goto LABEL_13;
  }

  sub_258A2C670(v17);
LABEL_15:
  if (sub_258A2B554(*(a1 + v18[8]), *(a2 + v18[8])))
  {
    v20 = sub_258A2B7D8(*(a1 + v18[9]), *(a2 + v18[9]));
    return v20 & 1;
  }

LABEL_3:
  v20 = 0;
  return v20 & 1;
}

uint64_t type metadata accessor for StateOfMindTimeline.DaySummary()
{
  result = qword_27F96EAC0;
  if (!qword_27F96EAC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258A2C284(uint64_t a1, uint64_t a2)
{
  sub_258A2C484(0, &qword_27F96D908, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_258A2C380()
{
  sub_258B029C4();
  if (v0 <= 0x3F)
  {
    sub_258A2C484(319, &qword_27F96D908, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_258A2C484(319, &qword_27F96EAD0, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        sub_2589FCE08();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_258A2C484(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = _s5EntryVMa();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_258A2C4E4(uint64_t a1, uint64_t a2)
{
  v4 = _s5EntryVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_258A2C548()
{
  if (!qword_27F96EAD8)
  {
    sub_258A2C484(255, &qword_27F96D908, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F96EAD8);
    }
  }
}

uint64_t sub_258A2C5C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_258A2C610(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258A2C670(uint64_t a1)
{
  sub_258A2C484(0, &qword_27F96D908, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id static CAGradientLayer.gradientLayerForValence(_:style:)(double a1)
{
  sub_258A2D6EC(0, &qword_27F96EAE0, MEMORY[0x277CDF3E0], MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v42 - v4;
  v6 = sub_258B006A4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v47 = &v42 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v48 = &v42 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v42 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v42 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v42 - v22;
  v49 = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  sub_258B006B4();
  v24 = *(v7 + 48);
  if (v24(v5, 1, v6) == 1)
  {
    (*(v7 + 104))(v23, *MEMORY[0x277CDF3D0], v6);
    if (v24(v5, 1, v6) != 1)
    {
      sub_258A2D304(v5);
    }
  }

  else
  {
    (*(v7 + 32))(v23, v5, v6);
  }

  sub_258A2D390();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_258B2F490;
  v25 = *(v7 + 16);
  v45 = v25;
  v25(v21, v23, v6);
  v25(v18, v21, v6);
  v26 = fmax(fmin(a1, 1.0), -1.0);
  v44 = *MEMORY[0x277CDF3C0];
  v43 = *(v7 + 104);
  v43(v11);
  sub_258B00694();
  v46 = v21;
  v27 = *(v7 + 8);
  v27(v11, v6);
  swift_getKeyPath();
  sub_258A2D6A0();
  sub_258A84538(v26);
  v50 = v23;

  sub_258B01F74();
  v27(v18, v6);
  v28 = sub_258B030A4();
  v27(v46, v6);
  v29 = [v28 CGColor];

  v30 = v50;
  v31 = inited;
  *(inited + 32) = v29;
  v46 = (v31 + 32);
  v32 = v48;
  v33 = v45;
  v45(v48, v30, v6);
  v34 = v47;
  v33(v47, v32, v6);
  (v43)(v11, v44, v6);
  sub_258B00694();
  v27(v11, v6);
  swift_getKeyPath();
  sub_258A84538(v26);

  sub_258B01F74();
  v27(v34, v6);
  v35 = sub_258B030A4();
  v27(v32, v6);
  v36 = [v35 CGColor];

  v37 = inited;
  *(inited + 40) = v36;
  sub_258A2CCB0(v37);
  swift_setDeallocating();
  v38 = *(v37 + 16);
  swift_arrayDestroy();
  v39 = sub_258B02C64();

  v40 = v49;
  [v49 setColors_];

  v27(v50, v6);
  return v40;
}

char *sub_258A2CCB0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_258B032B4();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x277D84F90];
  result = sub_258AA928C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x259C937C0](i, a1);
        type metadata accessor for CGColor(0);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_258AA928C((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_258A2D784(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      type metadata accessor for CGColor(0);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_258AA928C((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_258A2D784(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_258A2CE7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v11 = MEMORY[0x277D84F90];
    sub_258AA928C(0, v1, 0);
    v2 = v11;
    v4 = (a1 + 32);
    sub_258A2D750(0);
    do
    {
      v5 = *v4++;
      v6 = v5;
      swift_dynamicCast();
      v11 = v2;
      v8 = *(v2 + 16);
      v7 = *(v2 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_258AA928C((v7 > 1), v8 + 1, 1);
        v2 = v11;
      }

      *(v2 + 16) = v8 + 1;
      sub_258A2D784(&v10, (v2 + 32 * v8 + 32));
      --v1;
    }

    while (v1);
  }

  return v2;
}

id static CAGradientLayer.gradientLayerForValenceClassification(_:style:)(CGColor *a1)
{
  v24 = a1;
  sub_258A2D6EC(0, &qword_27F96EAE0, MEMORY[0x277CDF3E0], MEMORY[0x277D83D88]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v22 - v3;
  v5 = sub_258B006A4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - v11;
  v23 = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  sub_258B006B4();
  v13 = *(v6 + 48);
  if (v13(v4, 1, v5) == 1)
  {
    (*(v6 + 104))(v12, *MEMORY[0x277CDF3D0], v5);
    if (v13(v4, 1, v5) != 1)
    {
      sub_258A2D304(v4);
    }
  }

  else
  {
    (*(v6 + 32))(v12, v4, v5);
  }

  sub_258A2D6EC(0, &qword_27F96EAF0, sub_258A2D750, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_258B2BE60;
  v25 = 1;
  v15 = *(v6 + 16);
  v15(v10, v12, v5);
  v16 = v24;
  Color.init(valenceClassification:variant:colorScheme:)(v24, &v25, v10);
  v17 = sub_258B01F84();

  *(inited + 32) = v17;
  v25 = 0;
  v15(v10, v12, v5);
  Color.init(valenceClassification:variant:colorScheme:)(v16, &v25, v10);
  v18 = sub_258B01F84();

  *(inited + 40) = v18;
  sub_258A2CE7C(inited);
  swift_setDeallocating();
  sub_258A2D750(0);
  swift_arrayDestroy();
  v19 = sub_258B02C64();

  v20 = v23;
  [v23 setColors_];

  (*(v6 + 8))(v12, v5);
  return v20;
}

uint64_t sub_258A2D304(uint64_t a1)
{
  sub_258A2D6EC(0, &qword_27F96EAE0, MEMORY[0x277CDF3E0], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_258A2D390()
{
  if (!qword_27F970720)
  {
    v0 = sub_258B03424();
    if (!v1)
    {
      atomic_store(v0, &qword_27F970720);
    }
  }
}

CGColorRef sub_258A2D3E4@<X0>(CGColorRef *a1@<X8>)
{
  result = CGColorCreateGenericRGB(0.0, 0.0, 0.0, 1.0);
  *a1 = result;
  return result;
}

CGColorRef sub_258A2D41C@<X0>(_BYTE *a1@<X0>, CGColorRef *a2@<X8>)
{
  v3 = *a1;
  if (v3 <= 2)
  {
    if (*a1)
    {
      if (v3 == 1)
      {
        v4 = 0.666666667;
        v5 = 0.709803922;
      }

      else
      {
        v4 = 0.68627451;
        v5 = 0.752941176;
      }

      v6 = 0.878431373;
    }

    else
    {
      v4 = 0.623529412;
      v5 = 0.588235294;
      v6 = 0.733333333;
    }
  }

  else if (*a1 > 4u)
  {
    if (v3 == 5)
    {
      v4 = 0.956862745;
      v5 = 0.819607843;
      v6 = 0.619607843;
    }

    else
    {
      v4 = 0.996078431;
      v5 = 0.737254902;
      v6 = 0.392156863;
    }
  }

  else if (v3 == 3)
  {
    v4 = 0.741176471;
    v5 = 0.82745098;
    v6 = 0.839215686;
  }

  else
  {
    v4 = 0.682352941;
    v5 = 0.788235294;
    v6 = 0.501960784;
  }

  result = CGColorCreateGenericRGB(v4, v5, v6, 1.0);
  *a2 = result;
  return result;
}

uint64_t sub_258A2D544@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  result = sub_258A82FA8();
  *a2 = result;
  return result;
}

CGColorRef sub_258A2D580@<X0>(_BYTE *a1@<X0>, CGColorRef *a2@<X8>)
{
  v3 = *a1;
  if (v3 <= 2)
  {
    if (*a1)
    {
      if (v3 == 1)
      {
        v4 = 0.874509804;
        v5 = 0.898039216;
        v6 = 1.0;
      }

      else
      {
        v4 = 0.807843137;
        v5 = 0.847058824;
        v6 = 0.905882353;
      }
    }

    else
    {
      v4 = 0.815686275;
      v5 = 0.776470588;
      v6 = 0.941176471;
    }
  }

  else if (*a1 > 4u)
  {
    if (v3 == 5)
    {
      v4 = 0.964705882;
      v5 = 0.831372549;
      v6 = 0.635294118;
    }

    else
    {
      v5 = 0.917647059;
      v6 = 0.882352941;
      v4 = 1.0;
    }
  }

  else if (v3 == 3)
  {
    v4 = 0.858823529;
    v5 = 0.882352941;
    v6 = 0.88627451;
  }

  else
  {
    v4 = 0.807843137;
    v5 = 0.901960784;
    v6 = 0.643137255;
  }

  result = CGColorCreateGenericRGB(v4, v5, v6, 1.0);
  *a2 = result;
  return result;
}

unint64_t sub_258A2D6A0()
{
  result = qword_27F96EAE8;
  if (!qword_27F96EAE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F96EAE8);
  }

  return result;
}

void sub_258A2D6EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

_OWORD *sub_258A2D784(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t type metadata accessor for ReflectiveIntervalsSelectionPhaseContent()
{
  result = qword_27F96EB08;
  if (!qword_27F96EB08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258A2D808()
{
  sub_258A2E7D8(319, &qword_27F96EB18, type metadata accessor for __HKStateOfMindReflectiveInterval, MEMORY[0x277CE11F8]);
  if (v0 <= 0x3F)
  {
    sub_258A2E7D8(319, &qword_27F96EA60, MEMORY[0x277CC9578], MEMORY[0x277CE11F8]);
    if (v1 <= 0x3F)
    {
      sub_258A2D96C();
      if (v2 <= 0x3F)
      {
        sub_2589C0D10();
        if (v3 <= 0x3F)
        {
          sub_258A2E7D8(319, &qword_27F96EB00, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs, MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_258A2D96C()
{
  if (!qword_27F971C90)
  {
    v0 = sub_258B02364();
    if (!v1)
    {
      atomic_store(v0, &qword_27F971C90);
    }
  }
}

uint64_t sub_258A2D9D8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_258B00F84();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A2E7D8(0, &qword_27F96D7C8, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs, MEMORY[0x277CDF458]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v16 - v10);
  v12 = type metadata accessor for ReflectiveIntervalsSelectionPhaseContent();
  sub_258A2E904(v1 + *(v12 + 36), v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_258A2E998(v11, a1, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs);
  }

  v14 = *v11;
  sub_258B02E94();
  v15 = sub_258B01824();
  sub_258B00354();

  sub_258B00F74();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_258A2DBD0@<X0>(__int128 *a1@<X0>, _BYTE *a2@<X8>)
{
  v98 = a2;
  sub_258A2E7B0(0);
  v104 = v3;
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v105 = v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A2E788(0);
  v106 = v6;
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v109 = v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v103 = v94 - v11;
  MEMORY[0x28223BE20](v10);
  v108 = v94 - v12;
  sub_258A2E760(0);
  v100 = v13;
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_258A2E6D4(0);
  *&v101 = v17;
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v107 = v94 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v96 = v94 - v22;
  MEMORY[0x28223BE20](v21);
  v110 = v94 - v23;
  v24 = type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs();
  v25 = v24 - 8;
  v26 = *(*(v24 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = v94 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = v94 - v30;
  v102 = sub_258B01884();
  sub_258A2D9D8(v31);
  v32 = &v31[*(v25 + 28)];
  sub_258B00A84();
  sub_258A2E8A4(v31, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs);
  v33 = 0.0;
  sub_258B00654();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v42 = type metadata accessor for ReflectiveIntervalsSelectionPhaseContent();
  v43 = (a1 + *(v42 + 24));
  v44 = *v43;
  v45 = v43[1];
  LODWORD(v43) = *(v43 + 16);
  v46 = v44;
  *&v113 = v44;
  *(&v113 + 1) = v45;
  v99 = v45;
  v97 = v43;
  LOBYTE(v114) = v43;
  sub_258A2D96C();
  v95 = v47;
  MEMORY[0x259C92900](&v111);
  v48 = v111;
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  if (v48)
  {
    v49 = 1.0;
  }

  else
  {
    v49 = 0.0;
  }

  v50 = sub_258AFFD94();
  v52 = v51;
  v94[3] = *(v42 + 20);
  v53 = type metadata accessor for ReflectiveIntervalSelectionHeaderText();
  v54 = v53[5];
  v55 = MEMORY[0x277CE11F8];
  sub_258A2E7D8(0, &qword_27F96EA60, MEMORY[0x277CC9578], MEMORY[0x277CE11F8]);
  v94[2] = v56;
  MEMORY[0x259C92900]();
  *v16 = v50;
  v16[1] = v52;
  v57 = v53[6];
  *(v16 + v57) = swift_getKeyPath();
  v58 = MEMORY[0x277CDF458];
  sub_258A2E7D8(0, &qword_27F96D7C0, MEMORY[0x277CC99E8], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v59 = v53[7];
  *(v16 + v59) = swift_getKeyPath();
  sub_258A2E7D8(0, &qword_27F96C908, MEMORY[0x277CDF3E0], v58);
  swift_storeEnumTagMultiPayload();
  v60 = v53[8];
  *(v16 + v60) = swift_getKeyPath();
  sub_258A2E7D8(0, &qword_27F96D7C8, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs, v58);
  v94[1] = v61;
  swift_storeEnumTagMultiPayload();
  LOBYTE(v60) = sub_258B01884();
  sub_258A2D9D8(v29);
  v94[0] = type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs;
  sub_258A2E8A4(v29, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs);
  sub_258B00654();
  v62 = v16 + *(v100 + 36);
  *v62 = v60;
  *(v62 + 1) = v63;
  *(v62 + 2) = v64;
  *(v62 + 3) = v65;
  *(v62 + 4) = v66;
  v62[40] = 0;
  v67 = v99;
  *&v113 = v46;
  *(&v113 + 1) = v99;
  v68 = v97;
  LOBYTE(v114) = v97;
  v69 = v95;
  MEMORY[0x259C92900](&v111, v95);
  if (v111)
  {
    v70 = 1.0;
  }

  else
  {
    v70 = 0.0;
  }

  v71 = v96;
  sub_258A2E998(v16, v96, sub_258A2E760);
  *(v71 + *(v101 + 36)) = v70;
  sub_258A2E998(v71, v110, sub_258A2E6D4);
  v72 = *(a1 + 2);
  v113 = *a1;
  v114 = v72;
  sub_258A2E7D8(0, &qword_27F96EB18, type metadata accessor for __HKStateOfMindReflectiveInterval, v55);
  sub_258B02334();
  v101 = v111;
  v73 = v112;
  v74 = type metadata accessor for ReflectiveIntervalPicker_iOS();
  v75 = v105;
  v76 = &v105[*(v74 + 20)];
  sub_258B02334();
  *v75 = v101;
  *(v75 + 16) = v73;
  v77 = *(v74 + 24);
  *(v75 + v77) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  LOBYTE(v74) = sub_258B01884();
  sub_258A2D9D8(v29);
  v78 = v94[0];
  sub_258A2E8A4(v29, v94[0]);
  sub_258B00654();
  v79 = v75 + *(v104 + 36);
  *v79 = v74;
  *(v79 + 8) = v80;
  *(v79 + 16) = v81;
  *(v79 + 24) = v82;
  *(v79 + 32) = v83;
  *(v79 + 40) = 0;
  *&v113 = v46;
  *(&v113 + 1) = v67;
  LOBYTE(v114) = v68;
  MEMORY[0x259C92900](&v111, v69);
  if (v111)
  {
    v33 = 1.0;
  }

  v84 = v103;
  sub_258A2E998(v75, v103, sub_258A2E7B0);
  *(v84 + *(v106 + 36)) = v33;
  v85 = v108;
  sub_258A2E998(v84, v108, sub_258A2E788);
  sub_258A2D9D8(v29);
  sub_258A2E8A4(v29, v78);
  v86 = v110;
  v87 = v107;
  sub_258A2E83C(v110, v107, sub_258A2E6D4);
  v88 = v109;
  sub_258A2E83C(v85, v109, sub_258A2E788);
  v89 = v98;
  *v98 = v102;
  *(v89 + 1) = v35;
  *(v89 + 2) = v37;
  *(v89 + 3) = v39;
  *(v89 + 4) = v41;
  v89[40] = 0;
  *(v89 + 6) = v49;
  sub_258A2E5C8();
  v91 = v90;
  sub_258A2E83C(v87, &v89[*(v90 + 48)], sub_258A2E6D4);
  sub_258A2E83C(v88, &v89[*(v91 + 64)], sub_258A2E788);
  v92 = &v89[*(v91 + 80)];
  *v92 = 0x4038000000000000;
  v92[8] = 0;
  sub_258A2E8A4(v85, sub_258A2E788);
  sub_258A2E8A4(v86, sub_258A2E6D4);
  sub_258A2E8A4(v88, sub_258A2E788);
  return sub_258A2E8A4(v87, sub_258A2E6D4);
}

uint64_t sub_258A2E4EC@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_258B01194();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_258A2E530();
  return sub_258A2DBD0(v1, (a1 + *(v3 + 44)));
}

void sub_258A2E530()
{
  if (!qword_27F96EB20)
  {
    sub_258A2E7D8(255, &qword_27F96EB28, sub_258A2E5C8, MEMORY[0x277CE14B8]);
    v0 = sub_258B00974();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96EB20);
    }
  }
}

void sub_258A2E5C8()
{
  if (!qword_27F96EB30)
  {
    sub_258A2E6FC(255, &qword_27F96EB38, sub_258A2E67C);
    sub_258A2E6D4(255);
    sub_258A2E788(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_27F96EB30);
    }
  }
}

void sub_258A2E67C()
{
  if (!qword_27F96EB40)
  {
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96EB40);
    }
  }
}

void sub_258A2E6FC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_258B00B04();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_258A2E7D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_258A2E83C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258A2E8A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258A2E904(uint64_t a1, uint64_t a2)
{
  sub_258A2E7D8(0, &qword_27F96D7C8, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs, MEMORY[0x277CDF458]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258A2E998(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_258A2EA00()
{
  result = qword_27F96EB68;
  if (!qword_27F96EB68)
  {
    sub_258A2EA58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96EB68);
  }

  return result;
}

void sub_258A2EA58()
{
  if (!qword_27F96EB70)
  {
    sub_258A2E7D8(255, &qword_27F96EB28, sub_258A2E5C8, MEMORY[0x277CE14B8]);
    sub_258A2EAEC();
    v0 = sub_258B022D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96EB70);
    }
  }
}

unint64_t sub_258A2EAEC()
{
  result = qword_27F96EB78;
  if (!qword_27F96EB78)
  {
    sub_258A2E7D8(255, &qword_27F96EB28, sub_258A2E5C8, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96EB78);
  }

  return result;
}

id StateOfMindOverlayContext.__allocating_init(accessibilityIdentifier:applicationItems:overlayChartController:overlayPredicate:)(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v6 = v5;
  v12 = objc_allocWithZone(v6);
  v13 = OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_currentContextItem;
  *&v12[OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_currentContextItem] = 0;
  v14 = &v12[OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_accessibilityIdentifier_];
  *v14 = a1;
  *(v14 + 1) = a2;
  *&v12[OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_overlayChartController] = a4;
  sub_2589F4488(0, &qword_27F96D870, 0x277D12830);
  v15 = a4;
  sub_258ADEBAC(a3, a5, 0);
  *&v12[OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_overlayDisplayType] = v16;
  *&v12[OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_overlayPredicate] = a5;
  v17 = *&v12[v13];
  *&v12[v13] = 0;
  v18 = a5;

  v21.receiver = v12;
  v21.super_class = v6;
  v19 = objc_msgSendSuper2(&v21, sel_init);

  return v19;
}

id StateOfMindOverlayContext.init(accessibilityIdentifier:applicationItems:overlayChartController:overlayPredicate:)(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v6 = v5;
  v10 = OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_currentContextItem;
  *&v6[OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_currentContextItem] = 0;
  v11 = &v6[OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_accessibilityIdentifier_];
  *v11 = a1;
  *(v11 + 1) = a2;
  *&v6[OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_overlayChartController] = a4;
  sub_2589F4488(0, &qword_27F96D870, 0x277D12830);
  v12 = a4;
  sub_258ADEBAC(a3, a5, 0);
  *&v6[OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_overlayDisplayType] = v13;
  *&v6[OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_overlayPredicate] = a5;
  v14 = *&v6[v10];
  *&v6[v10] = 0;
  v15 = a5;

  v18.receiver = v6;
  v18.super_class = type metadata accessor for StateOfMindOverlayContext();
  v16 = objc_msgSendSuper2(&v18, sel_init);

  return v16;
}

id sub_258A2ED8C()
{
  sub_2589F4488(0, &unk_27F96EBB0, 0x277CCDA38);
  v0 = [swift_getObjCClassFromMetadata() stateOfMindType];

  return v0;
}

void *sub_258A2EE30()
{
  v1 = *(v0 + OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_overlayDisplayType);
  v2 = v1;
  return v1;
}

uint64_t sub_258A2EE80(uint64_t a1, int a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v46 = a8;
  v47 = a1;
  v48 = a7;
  v49 = a3;
  v44 = a6;
  v45 = a2;
  v9 = sub_258B02624();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v52 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_258B02654();
  v51 = *(v13 - 8);
  v14 = *(v51 + 64);
  MEMORY[0x28223BE20](v13);
  v50 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_258AFFBC4();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v21 = result;
    sub_2589F4488(0, &qword_280DF8F98, 0x277D85C78);
    v42 = sub_258B02F54();
    (*(v17 + 16))(&v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), a5, v16);
    v22 = (*(v17 + 80) + 24) & ~*(v17 + 80);
    v23 = (v18 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
    v40 = v9;
    v24 = (v23 + 23) & 0xFFFFFFFFFFFFFFF8;
    v41 = v10;
    v25 = (v23 + 39) & 0xFFFFFFFFFFFFFFF8;
    v43 = v13;
    v26 = swift_allocObject();
    *(v26 + 16) = v21;
    (*(v17 + 32))(v26 + v22, v19, v16);
    v27 = (v26 + v23);
    v29 = v47;
    v28 = v48;
    *v27 = v44;
    v27[1] = v28;
    v30 = v26 + v24;
    *v30 = v29;
    *(v30 + 8) = v45 & 1;
    v31 = v49;
    *(v26 + v25) = v49;
    *(v26 + ((v25 + 15) & 0xFFFFFFFFFFFFFFF8)) = v46;
    aBlock[4] = sub_258A310D0;
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2589E92FC;
    aBlock[3] = &block_descriptor_17;
    v32 = _Block_copy(aBlock);
    v33 = v21;

    sub_258B003E4();
    v34 = v31;

    v35 = v50;
    sub_258B02644();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_258A31400(&unk_27F96EBD0, MEMORY[0x277D85198]);
    sub_258A3139C(0, &qword_27F96D780, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_258A31190();
    v36 = v52;
    v37 = v40;
    sub_258B03114();
    v38 = v42;
    MEMORY[0x259C93560](0, v35, v36, v32);
    _Block_release(v32);

    (*(v41 + 8))(v36, v37);
    return (*(v51 + 8))(v35, v43);
  }

  return result;
}

void sub_258A2F30C(void *a1, uint64_t a2, void (*a3)(uint64_t, id), uint64_t a4, unint64_t a5, int a6, void *a7, uint64_t a8)
{
  v119 = a8;
  v112 = a6;
  v113 = a5;
  v125 = a4;
  v126 = a3;
  v129 = a2;
  v10 = sub_258B00384();
  v123 = *(v10 - 8);
  v124 = v10;
  v11 = *(v123 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v105[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v12);
  v111 = &v105[-v16];
  MEMORY[0x28223BE20](v15);
  v18 = &v105[-v17];
  v19 = sub_258B00084();
  v20 = *(v19 - 8);
  v21 = v20[8];
  MEMORY[0x28223BE20](v19);
  v115 = &v105[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_258A31218();
  v128 = v23;
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v118 = &v105[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v25);
  v28 = &v105[-v27];
  sub_258A3139C(0, &qword_27F96EBF0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  v114 = &v105[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v33 = MEMORY[0x28223BE20](v31);
  v116 = &v105[-v34];
  v35 = MEMORY[0x28223BE20](v33);
  v117 = &v105[-v36];
  v37 = MEMORY[0x28223BE20](v35);
  v120 = &v105[-v38];
  v39 = MEMORY[0x28223BE20](v37);
  v41 = &v105[-v40];
  MEMORY[0x28223BE20](v39);
  v43 = &v105[-v42];
  v108 = a1;
  v44 = [*(a1 + OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_overlayChartController) primaryGraphViewController];
  v45 = [v44 graphView];

  v46 = [v45 effectiveVisibleRangeActive];
  v127 = v46;
  v47 = [v46 startDate];
  v110 = a7;
  v109 = v18;
  v121 = v14;
  if (v47)
  {
    v48 = v47;
    sub_258B00034();

    v49 = v20[7];
    v49(v43, 0, 1, v19);
  }

  else
  {
    v49 = v20[7];
    v49(v43, 1, 1, v19);
  }

  sub_258AFFBB4();
  v49(v41, 0, 1, v19);
  v50 = *(v128 + 48);
  sub_258A312AC(v43, v28);
  sub_258A312AC(v41, &v28[v50]);
  v122 = v20;
  v51 = v20[6];
  if (v51(v28, 1, v19) == 1)
  {
    sub_258A2A66C(v41);
    sub_258A2A66C(v43);
    if (v51(&v28[v50], 1, v19) != 1)
    {
LABEL_18:
      v52 = v127;
LABEL_19:
      sub_258A31340(v28);
      goto LABEL_20;
    }

    sub_258A2A66C(v28);
    v52 = v127;
  }

  else
  {
    v53 = v120;
    sub_258A312AC(v28, v120);
    if (v51(&v28[v50], 1, v19) == 1)
    {
LABEL_17:
      v64 = v122;
      sub_258A2A66C(v41);
      sub_258A2A66C(v43);
      (v64[1])(v53, v19);
      goto LABEL_18;
    }

    v54 = v122[4];
    v107 = v49;
    v55 = v115;
    v54(v115, &v28[v50], v19);
    sub_258A31400(&qword_27F96EC08, MEMORY[0x277CC9578]);
    v106 = sub_258B02AA4();
    v56 = v122[1];
    v57 = v55;
    v49 = v107;
    v56(v57, v19);
    sub_258A2A66C(v41);
    sub_258A2A66C(v43);
    v56(v120, v19);
    sub_258A2A66C(v28);
    v52 = v127;
    if ((v106 & 1) == 0)
    {
LABEL_20:
      v65 = v121;
      sub_258B00364();
      v66 = sub_258B00374();
      v67 = sub_258B02EA4();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v131[0] = v69;
        *v68 = 136446210;
        v70 = sub_258B035A4();
        v72 = sub_2589F1F78(v70, v71, v131);

        *(v68 + 4) = v72;
        _os_log_impl(&dword_2589A1000, v66, v67, "[%{public}s] Skipping update for irrelevant date range", v68, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v69);
        MEMORY[0x259C945C0](v69, -1, -1);
        MEMORY[0x259C945C0](v68, -1, -1);
      }

      (*(v123 + 8))(v65, v124);
      goto LABEL_23;
    }
  }

  v58 = [v52 endDate];
  if (v58)
  {
    v43 = v117;
    v59 = v58;
    sub_258B00034();

    v60 = 0;
  }

  else
  {
    v60 = 1;
    v43 = v117;
  }

  v28 = v118;
  v49(v43, v60, 1, v19);
  v61 = v116;
  sub_258AFFBA4();
  v49(v61, 0, 1, v19);
  v62 = v61;
  v63 = *(v128 + 48);
  sub_258A312AC(v43, v28);
  sub_258A312AC(v62, &v28[v63]);
  if (v51(v28, 1, v19) == 1)
  {
    sub_258A2A66C(v62);
    sub_258A2A66C(v43);
    if (v51(&v28[v63], 1, v19) == 1)
    {
      sub_258A2A66C(v28);
      goto LABEL_27;
    }

    goto LABEL_19;
  }

  v53 = v114;
  sub_258A312AC(v28, v114);
  if (v51(&v28[v63], 1, v19) == 1)
  {
    v41 = v62;
    goto LABEL_17;
  }

  v75 = v122;
  v76 = v62;
  v77 = v115;
  (v122[4])(v115, &v28[v63], v19);
  sub_258A31400(&qword_27F96EC08, MEMORY[0x277CC9578]);
  v78 = sub_258B02AA4();
  v79 = v75[1];
  v79(v77, v19);
  sub_258A2A66C(v76);
  sub_258A2A66C(v43);
  v79(v53, v19);
  sub_258A2A66C(v28);
  if ((v78 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_27:
  if (!sub_258A2FF24(v113))
  {
    v83 = v111;
    sub_258B00364();
    v84 = sub_258B00374();
    v85 = sub_258B02E84();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v131[0] = v87;
      *v86 = 136446210;
      v88 = sub_258B035A4();
      v90 = sub_2589F1F78(v88, v89, v131);

      *(v86 + 4) = v90;
      _os_log_impl(&dword_2589A1000, v84, v85, "[%{public}s] Skipping update for incompatible chart points", v86, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v87);
      MEMORY[0x259C945C0](v87, -1, -1);
      MEMORY[0x259C945C0](v86, -1, -1);
    }

    (*(v123 + 8))(v83, v124);
    v73 = 0;
    goto LABEL_24;
  }

  if (v112)
  {
    v80 = v108;
    v81 = (*((*MEMORY[0x277D85000] & *v108) + 0xC0))();

    v82 = *(v80 + OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_currentContextItem);
    *(v80 + OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_currentContextItem) = v81;

LABEL_23:
    v73 = 1;
LABEL_24:
    v74 = 0;
    goto LABEL_25;
  }

  v91 = v109;
  sub_258B00364();
  v92 = v110;
  v93 = v110;
  v94 = sub_258B00374();
  v95 = sub_258B02E84();

  if (os_log_type_enabled(v94, v95))
  {
    v96 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    v131[0] = v97;
    *v96 = 136446466;
    v98 = sub_258B035A4();
    v100 = sub_2589F1F78(v98, v99, v131);

    *(v96 + 4) = v100;
    *(v96 + 12) = 2080;
    v130 = v92;
    v101 = v92;
    sub_258A3139C(0, &qword_27F96EBF8, sub_2589F3AFC, MEMORY[0x277D83D88]);
    v102 = sub_258B02B34();
    v104 = sub_2589F1F78(v102, v103, v131);

    *(v96 + 14) = v104;
    _os_log_impl(&dword_2589A1000, v94, v95, "[%{public}s] Skipping update due to fetch error: %s", v96, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C945C0](v97, -1, -1);
    MEMORY[0x259C945C0](v96, -1, -1);
  }

  (*(v123 + 8))(v91, v124);
  v73 = 0;
  v74 = v92;
LABEL_25:
  v126(v73, v74);
}

uint64_t sub_258A2FF24(unint64_t a1)
{
  v9 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_15:
    sub_258B032B4();
    sub_258B03244();
    v3 = sub_258B032B4();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_258B03244();
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x259C937C0](v4, a1);
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            swift_unknownObjectRelease();

            return 0;
          }
        }

        else
        {
          if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          v5 = *(a1 + 8 * v4 + 32);
          swift_unknownObjectRetain();
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_12;
          }
        }

        sub_258B027C4();
        if (!swift_dynamicCastClass())
        {
          goto LABEL_13;
        }

        sub_258B03224();
        v7 = *(v9 + 16);
        sub_258B03254();
        sub_258B03264();
        sub_258B03234();
        ++v4;
      }

      while (v6 != v3);
    }
  }

  return v9;
}

void sub_258A30094(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  sub_258A3106C();
  v8 = sub_258B02C74();

  v9 = a4;
  v7(v8, a3, a4);
}

void sub_258A30294(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_258AFFDB4();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

uint64_t sub_258A30304()
{
  v1 = *(v0 + OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_currentContextItem);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_currentContextItem);
  }

  else
  {
    v2 = (*((*MEMORY[0x277D85000] & *v0) + 0xC0))(MEMORY[0x277D84F90]);
    v1 = 0;
  }

  v3 = v1;
  return v2;
}

id sub_258A30494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [objc_allocWithZone(MEMORY[0x277D12838]) init];
  v7 = objc_opt_self();
  v8 = *(v4 + OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_accessibilityIdentifier_);
  v9 = *(v4 + OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_accessibilityIdentifier_ + 8);
  v10 = sub_258B02AD4();
  v11 = [v7 hk:v10 chartOverlayAccessibilityIdentifier:?];

  if (v11)
  {
    v21 = 0;
    sub_258B02B04();

    v11 = 0;
  }

  [v6 setAccessibilityIdentifier_];

  v12 = sub_258B02AD4();
  [v6 setTitle_];

  v13 = objc_opt_self();
  v14 = [objc_opt_self() tertiarySystemBackgroundColor];
  v15 = [v13 defaultContextViewColorsUsingColor_];

  [v6 setMetricColors_];
  v16 = [v13 mindfulnessColors];
  [v6 setSelectedMetricColors_];

  v17 = sub_258B02AD4();
  if (a4)
  {
    [v6 setValue_];

    sub_258B003E4();
    v18 = sub_258B02AD4();
  }

  else
  {
    v19 = HKUILocalizedString();

    [v6 setValue_];
    v18 = sub_258B02AD4();
  }

  [v6 setUnit_];

  return v6;
}

id StateOfMindOverlayContext.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id StateOfMindOverlayContext.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StateOfMindOverlayContext();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_258A308BC(uint64_t a1, uint64_t a2, void (*a3)(void, void), uint64_t a4)
{
  v5 = v4;
  v54 = a3;
  v55 = a4;
  v51 = a1;
  ObjectType = swift_getObjectType();
  v7 = sub_258B00384();
  v49 = *(v7 - 8);
  v8 = v49[8];
  MEMORY[0x28223BE20](v7);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_258AFFBC4();
  v11 = *(v50 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v50);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_258B00084();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v5 + OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_overlayDisplayType);
  v52 = a2;
  v20 = [v19 graphSeriesForTimeScope_];
  if (v20)
  {
    v21 = *(v5 + OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_overlayChartController);
    v48 = v20;
    v49 = v21;
    v22 = v51;
    sub_258AFFBB4();
    v47 = sub_258B00014();
    v23 = *(v15 + 8);
    v23(v18, v14);
    sub_258AFFBA4();
    v24 = sub_258B00014();
    v23(v18, v14);
    v25 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v26 = v50;
    (*(v11 + 16))(&v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v22, v50);
    v27 = (*(v11 + 80) + 24) & ~*(v11 + 80);
    v28 = (v12 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = (v28 + 23) & 0xFFFFFFFFFFFFFFF8;
    v30 = swift_allocObject();
    *(v30 + 16) = v25;
    (*(v11 + 32))(v30 + v27, v13, v26);
    v31 = (v30 + v28);
    v32 = v55;
    *v31 = v54;
    v31[1] = v32;
    *(v30 + v29) = ObjectType;
    aBlock[4] = sub_258A30F8C;
    aBlock[5] = v30;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_258A30094;
    aBlock[3] = &block_descriptor_5;
    v33 = _Block_copy(aBlock);

    v34 = v48;
    v35 = v47;
    [v49 cachedDataForCustomGraphSeries:v48 timeScope:v52 resolution:0 startDate:v47 endDate:v24 completion:v33];
    _Block_release(v33);
  }

  else
  {
    sub_258B00364();
    v36 = sub_258B00374();
    v37 = sub_258B02E84();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      aBlock[0] = v39;
      *v38 = 136446210;
      v40 = sub_258B035A4();
      v42 = sub_2589F1F78(v40, v41, aBlock);

      *(v38 + 4) = v42;
      _os_log_impl(&dword_2589A1000, v36, v37, "[%{public}s] Cannot update context item without a graph series", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v39);
      MEMORY[0x259C945C0](v39, -1, -1);
      MEMORY[0x259C945C0](v38, -1, -1);
    }

    (v49[1])(v10, v7);
    v43 = v54;
    v44 = (*((*MEMORY[0x277D85000] & *v5) + 0xC0))(MEMORY[0x277D84F90]);
    v45 = *(v5 + OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_currentContextItem);
    *(v5 + OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_currentContextItem) = v44;

    v43(0, 0);
  }
}

uint64_t sub_258A30F8C(uint64_t a1, int a2, void *a3)
{
  v7 = *(sub_258AFFBC4() - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v3 + 16);
  v12 = (v3 + v9);
  v13 = *v12;
  v14 = v12[1];
  v15 = *(v3 + v10);

  return sub_258A2EE80(a1, a2, a3, v11, v3 + v8, v13, v14, v15);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_258A3106C()
{
  result = qword_27F96EBC0;
  if (!qword_27F96EBC0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F96EBC0);
  }

  return result;
}

void sub_258A310D0()
{
  v1 = *(sub_258AFFBC4() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v3 + 39) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  v7 = v0 + v3;
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v0 + v4);
  v11 = *(v0 + v4 + 8);
  v12 = *(v0 + v5);
  v13 = *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_258A2F30C(v6, v0 + v2, v8, v9, v10, v11, v12, v13);
}

unint64_t sub_258A31190()
{
  result = qword_27F96EBE0;
  if (!qword_27F96EBE0)
  {
    sub_258A3139C(255, &qword_27F96D780, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96EBE0);
  }

  return result;
}

void sub_258A31218()
{
  if (!qword_27F96EBE8)
  {
    sub_258A3139C(255, &qword_27F96EBF0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F96EBE8);
    }
  }
}

uint64_t sub_258A312AC(uint64_t a1, uint64_t a2)
{
  sub_258A3139C(0, &qword_27F96EBF0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258A31340(uint64_t a1)
{
  sub_258A31218();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_258A3139C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_258A31400(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s20EntryMomentsDataViewVMa()
{
  result = qword_27F96EC10;
  if (!qword_27F96EC10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258A314C4()
{
  sub_258A32370(319, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_258A32370(319, &qword_27F96EAD0, _s5EntryVMa, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_258A3243C(319, &qword_280DF8948, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_258A315F8(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v69 = a2;
  v78 = a3;
  v5 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v68 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = _s5EntryVMa();
  v72 = *(v74 - 8);
  v8 = *(v72 + 64);
  MEMORY[0x28223BE20](v74);
  v66 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A2C548();
  v76 = v10;
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v77 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A32370(0, &qword_27F96D908, _s5EntryVMa, MEMORY[0x277D83D88]);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v67 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v73 = &v65 - v18;
  MEMORY[0x28223BE20](v17);
  v71 = &v65 - v19;
  sub_258A320A4();
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v65 - v26;
  v28 = _s19EntryMomentDataViewVMa();
  v29 = v28 - 8;
  v30 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v32 = (&v65 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_258A323D4(a1, v27, sub_258A320A4);
  v75 = *(v21 + 56);
  v70 = _s20EntryMomentsDataViewVMa();
  v33 = *(a2 + *(v70 + 24));
  sub_258A3243C(0, &qword_280DF88F0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_258B2C470;
  v79 = *a1;
  sub_258B003E4();
  *(inited + 32) = sub_258B03414();
  *(inited + 40) = v35;
  v79 = v33;
  v36 = v32;
  v37 = v72;
  sub_2589FC8C8(inited);
  v38 = v79;
  *v36 = swift_getKeyPath();
  sub_258A32370(0, &qword_27F96CC08, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  sub_258A324F0(&v27[v75], v36 + *(v29 + 28), _s5EntryVMa);
  *(v36 + *(v29 + 32)) = v38;
  v39 = v74;
  LODWORD(v75) = sub_258B01894();
  sub_258A323D4(a1, v25, sub_258A320A4);
  v40 = *(v21 + 56);
  v41 = v71;
  sub_258A324F0(&v25[v40], v71, _s5EntryVMa);
  v42 = *(v37 + 56);
  v43 = 1;
  v42(v41, 0, 1, v39);
  v44 = *(v69 + *(v70 + 20));
  v45 = *(v44 + 16);
  v46 = v73;
  if (v45)
  {
    sub_258A323D4(v44 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * (v45 - 1), v73, _s5EntryVMa);
    v43 = 0;
  }

  v42(v46, v43, 1, v39);
  v47 = v77;
  v48 = *(v76 + 48);
  sub_258A2C284(v41, v77);
  sub_258A2C284(v46, v47 + v48);
  v49 = *(v37 + 48);
  if (v49(v47, 1, v39) != 1)
  {
    v50 = v67;
    sub_258A2C284(v47, v67);
    if (v49(v47 + v48, 1, v39) != 1)
    {
      v63 = v66;
      sub_258A324F0(v47 + v48, v66, _s5EntryVMa);
      v64 = sub_258ABAEE0(v50, v63);
      sub_258A32490(v63, _s5EntryVMa);
      sub_258A2C670(v46);
      sub_258A2C670(v41);
      sub_258A32490(v50, _s5EntryVMa);
      sub_258A2C670(v47);
      if (v64)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    sub_258A2C670(v46);
    sub_258A2C670(v41);
    sub_258A32490(v50, _s5EntryVMa);
LABEL_8:
    sub_258A32490(v47, sub_258A2C548);
LABEL_9:
    v51 = v68;
    sub_258AC1060(v68);
    sub_258A32490(v51, type metadata accessor for StateOfMindTimeline.Styles);
    goto LABEL_10;
  }

  sub_258A2C670(v46);
  sub_258A2C670(v41);
  if (v49(v47 + v48, 1, v39) != 1)
  {
    goto LABEL_8;
  }

  sub_258A2C670(v47);
LABEL_10:
  sub_258B00654();
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v60 = v78;
  sub_258A324F0(v36, v78, _s19EntryMomentDataViewVMa);
  sub_258A32110();
  v62 = v60 + *(v61 + 36);
  *v62 = v75;
  *(v62 + 8) = v53;
  *(v62 + 16) = v55;
  *(v62 + 24) = v57;
  *(v62 + 32) = v59;
  *(v62 + 40) = 0;
}

uint64_t sub_258A31D20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1 - 8;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  *a2 = sub_258B011A4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_258A31F38();
  v8 = *(v7 + 44);
  v12[1] = sub_258AACC70(*(v2 + *(v4 + 28)));
  swift_getKeyPath();
  sub_258A323D4(v2, v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), _s20EntryMomentsDataViewVMa);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  sub_258A324F0(v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, _s20EntryMomentsDataViewVMa);
  sub_258A32370(0, &qword_27F96EC30, sub_258A320A4, MEMORY[0x277D83940]);
  sub_258A32110();
  sub_258A32170();
  sub_258A321F8(&qword_27F96EC50, _s5EntryVMa);
  sub_258A322C0();
  return sub_258B023B4();
}

void sub_258A31F38()
{
  if (!qword_27F96EC20)
  {
    sub_258A31FA0();
    v0 = sub_258B00974();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96EC20);
    }
  }
}

void sub_258A31FA0()
{
  if (!qword_27F96EC28)
  {
    sub_258A32370(255, &qword_27F96EC30, sub_258A320A4, MEMORY[0x277D83940]);
    _s5EntryVMa();
    sub_258A32110();
    sub_258A32170();
    sub_258A321F8(&qword_27F96EC50, _s5EntryVMa);
    v0 = sub_258B023D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96EC28);
    }
  }
}

void sub_258A320A4()
{
  if (!qword_27F96EC38)
  {
    _s5EntryVMa();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F96EC38);
    }
  }
}

void sub_258A32110()
{
  if (!qword_27F96EC40)
  {
    _s19EntryMomentDataViewVMa();
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96EC40);
    }
  }
}

unint64_t sub_258A32170()
{
  result = qword_27F96EC48;
  if (!qword_27F96EC48)
  {
    sub_258A32370(255, &qword_27F96EC30, sub_258A320A4, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96EC48);
  }

  return result;
}

uint64_t sub_258A321F8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_258A32240(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(_s20EntryMomentsDataViewVMa() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_258A315F8(a1, v6, a2);
}

unint64_t sub_258A322C0()
{
  result = qword_27F96EC58;
  if (!qword_27F96EC58)
  {
    sub_258A32110();
    sub_258A321F8(&qword_27F96EC60, _s19EntryMomentDataViewVMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96EC58);
  }

  return result;
}

void sub_258A32370(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_258A323D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_258A3243C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D837D0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_258A32490(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258A324F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_258A32558()
{
  if (!qword_27F96EC70)
  {
    sub_258A31FA0();
    sub_258A325BC();
    v0 = sub_258B022D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96EC70);
    }
  }
}

unint64_t sub_258A325BC()
{
  result = qword_27F96EC78;
  if (!qword_27F96EC78)
  {
    sub_258A31FA0();
    sub_258A322C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96EC78);
  }

  return result;
}

void sub_258A32648(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for ValenceSliderCaptions()
{
  result = qword_27F96EC80;
  if (!qword_27F96EC80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258A3270C()
{
  sub_258A32648(319, &qword_27F96E3D8, type metadata accessor for ValenceSelectionPhaseSpecs, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_258A32648(319, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_258A32814(uint64_t a1)
{
  v318 = MEMORY[0x28223BE20](a1);
  v255 = v1;
  sub_258A35838();
  v253 = v2;
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v256 = v247 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v252 = v247 - v7;
  MEMORY[0x28223BE20](v6);
  v254 = v247 - v8;
  sub_2589D5AFC();
  v310 = v9;
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v260 = v247 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v271 = v247 - v14;
  MEMORY[0x28223BE20](v13);
  v283 = v247 - v15;
  v317 = sub_258B02554();
  v321 = *(v317 - 8);
  v16 = *(v321 + 64);
  v17 = MEMORY[0x28223BE20](v317);
  v270 = v247 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v280 = v247 - v20;
  MEMORY[0x28223BE20](v19);
  v287 = v247 - v21;
  v316 = sub_258B006A4();
  v320 = *(v316 - 8);
  v22 = *(v320 + 64);
  v23 = MEMORY[0x28223BE20](v316);
  v269 = v247 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v279 = v247 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v314 = v247 - v28;
  MEMORY[0x28223BE20](v27);
  v293 = (v247 - v29);
  sub_258A3566C();
  v315 = v30;
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v30);
  v268 = v247 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v278 = v247 - v35;
  MEMORY[0x28223BE20](v34);
  v286 = v247 - v36;
  v312 = sub_258B019F4();
  v322 = *(v312 - 8);
  v37 = *(v322 + 64);
  v38 = MEMORY[0x28223BE20](v312);
  v263 = v247 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v38);
  v264 = v247 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v274 = v247 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v275 = v247 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v299 = v247 - v47;
  MEMORY[0x28223BE20](v46);
  v297 = v247 - v48;
  v311 = type metadata accessor for ValenceSelectionPhaseSpecs();
  v49 = *(*(v311 - 8) + 64);
  v50 = MEMORY[0x28223BE20](v311);
  v267 = v247 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = MEMORY[0x28223BE20](v50);
  v262 = v247 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v277 = v247 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v273 = v247 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v285 = v247 - v59;
  MEMORY[0x28223BE20](v58);
  v61 = v247 - v60;
  sub_258A350F8();
  v313 = v62;
  v323 = *(v62 - 8);
  v63 = *(v323 + 64);
  v64 = MEMORY[0x28223BE20](v62);
  v265 = v247 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = MEMORY[0x28223BE20](v64);
  v276 = v247 - v67;
  MEMORY[0x28223BE20](v66);
  v307 = v247 - v68;
  sub_258A35050(0);
  v324 = v69;
  v70 = *(*(v69 - 8) + 64);
  v71 = MEMORY[0x28223BE20](v69);
  v266 = v247 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = MEMORY[0x28223BE20](v71);
  v305 = v247 - v74;
  MEMORY[0x28223BE20](v73);
  v306 = v247 - v75;
  sub_258A34F7C();
  v309 = v76;
  v319 = *(v76 - 8);
  v77 = *(v319 + 64);
  v78 = MEMORY[0x28223BE20](v76);
  v249 = v247 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = MEMORY[0x28223BE20](v78);
  v261 = v247 - v81;
  MEMORY[0x28223BE20](v80);
  v272 = v247 - v82;
  sub_258A34F48(0);
  v84 = *(*(v83 - 8) + 64);
  v85 = MEMORY[0x28223BE20](v83 - 8);
  v251 = v247 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = MEMORY[0x28223BE20](v85);
  v250 = v247 - v88;
  v89 = MEMORY[0x28223BE20](v87);
  v248 = v247 - v90;
  v91 = MEMORY[0x28223BE20](v89);
  v284 = v247 - v92;
  MEMORY[0x28223BE20](v91);
  v308 = v247 - v93;
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v95 = qword_27F97AB90;
  v94 = qword_27F97AB98;
  v96 = qword_27F97ABA0;
  v97 = sub_258AFFD94();
  v99 = v98;
  v302 = v96;
  v303 = v94;
  v304 = v95;
  v100 = sub_258AFFD94();
  v102 = v101;
  v296 = sub_258B00FF4();
  v368 = 0;
  v281 = v102;
  v282 = v99;
  v103 = v318;
  sub_258A3499C(v97, v99, v318, 1, v100, v102, v366);
  v382 = *&v366[192];
  v383 = *&v366[208];
  v384[0] = *&v366[224];
  *(v384 + 9) = *&v366[233];
  v378 = *&v366[128];
  v379 = *&v366[144];
  v380 = *&v366[160];
  v381 = *&v366[176];
  v374 = *&v366[64];
  v375 = *&v366[80];
  v376 = *&v366[96];
  v377 = *&v366[112];
  v370 = *v366;
  v371 = *&v366[16];
  v372 = *&v366[32];
  v373 = *&v366[48];
  v385[12] = *&v366[192];
  v385[13] = *&v366[208];
  v386[0] = *&v366[224];
  *(v386 + 9) = *&v366[233];
  v385[8] = *&v366[128];
  v385[9] = *&v366[144];
  v385[10] = *&v366[160];
  v385[11] = *&v366[176];
  v385[4] = *&v366[64];
  v385[5] = *&v366[80];
  v385[6] = *&v366[96];
  v385[7] = *&v366[112];
  v385[0] = *v366;
  v385[1] = *&v366[16];
  v385[2] = *&v366[32];
  v385[3] = *&v366[48];
  sub_258A35914(&v370, v365);
  sub_258A359A8(v385);
  *(&v367[12] + 7) = v382;
  *(&v367[13] + 7) = v383;
  *(&v367[14] + 7) = v384[0];
  v367[15] = *(v384 + 9);
  *(&v367[8] + 7) = v378;
  *(&v367[9] + 7) = v379;
  *(&v367[10] + 7) = v380;
  *(&v367[11] + 7) = v381;
  *(&v367[4] + 7) = v374;
  *(&v367[5] + 7) = v375;
  *(&v367[6] + 7) = v376;
  *(&v367[7] + 7) = v377;
  *(v367 + 7) = v370;
  *(&v367[1] + 7) = v371;
  *(&v367[2] + 7) = v372;
  *(&v367[3] + 7) = v373;
  v104 = v368;
  v399 = v367[12];
  v400 = v367[13];
  v401 = v367[14];
  v402 = *(v384 + 9);
  v395 = v367[8];
  v396 = v367[9];
  v397 = v367[10];
  v398 = v367[11];
  v391 = v367[4];
  v392 = v367[5];
  v393 = v367[6];
  v394 = v367[7];
  v387 = v367[0];
  v388 = v367[1];
  v389 = v367[2];
  v390 = v367[3];
  sub_258AC1B90(v61);
  sub_258B01A04();
  v105 = &v61[*(v311 + 20)];
  v106 = sub_258B00A84();
  v107 = v322;
  v108 = *(v322 + 104);
  v109 = MEMORY[0x277CE0A10];
  if ((v106 & 1) == 0)
  {
    v109 = MEMORY[0x277CE0A18];
  }

  v110 = *v109;
  v111 = v299;
  v112 = v312;
  v300 = *(v322 + 104);
  v301 = v322 + 104;
  v108(v299, v110, v312);
  v113 = v297;
  v298 = *(v107 + 32);
  v299 = (v107 + 32);
  v298(v297, v111, v112);
  v114 = sub_258B01A14();

  v116 = *(v107 + 8);
  v115 = v107 + 8;
  v297 = v116;
  (v116)(v113, v112);
  sub_258A35C2C(v61, type metadata accessor for ValenceSelectionPhaseSpecs);
  KeyPath = swift_getKeyPath();
  *&v365[257] = v402;
  *&v365[209] = v399;
  *&v365[225] = v400;
  *&v365[241] = v401;
  *&v365[145] = v395;
  *&v365[161] = v396;
  *&v365[177] = v397;
  *&v365[193] = v398;
  *&v365[81] = v391;
  *&v365[97] = v392;
  *&v365[113] = v393;
  *&v365[129] = v394;
  *&v365[17] = v387;
  *&v365[33] = v388;
  *&v365[49] = v389;
  *&v365[273] = *v369;
  *&v365[276] = *&v369[3];
  *v365 = v296;
  *&v365[8] = 0;
  v365[16] = v104;
  *&v365[65] = v390;
  *&v365[280] = KeyPath;
  *&v365[288] = v114;
  sub_258B01994();
  sub_258A3517C();
  v119 = v118;
  v295 = sub_258A354B8();
  v296 = v119;
  sub_258B01BB4();
  memcpy(v366, v365, sizeof(v366));
  sub_258A35C2C(v366, sub_258A3517C);
  LODWORD(v322) = sub_258B014A4();
  v120 = type metadata accessor for ValenceSliderCaptions();
  v121 = v103;
  v122 = v103 + *(v120 + 20);
  v123 = v293;
  v294 = v122;
  sub_258AC14E8(v293);
  v124 = v320;
  v125 = *(v320 + 104);
  v126 = v314;
  v291 = *MEMORY[0x277CDF3C0];
  v127 = v316;
  v292 = v320 + 104;
  v290 = v125;
  v125(v314);
  LOBYTE(v122) = sub_258B00694();
  v129 = *(v124 + 8);
  v128 = v124 + 8;
  v129(v126, v127);
  v293 = v129;
  v129(v123, v127);
  v130 = MEMORY[0x277CE13B8];
  if ((v122 & 1) == 0)
  {
    v130 = MEMORY[0x277CE13B0];
  }

  v131 = *v130;
  v132 = v321;
  v133 = v287;
  v134 = v317;
  v288 = *(v321 + 104);
  v289 = v321 + 104;
  v288(v287, v131, v317);
  v136 = *(v132 + 32);
  v135 = v132 + 32;
  v137 = v286;
  v138 = &v286[*(v315 + 36)];
  v287 = v136;
  (v136)(v138, v133, v134);
  *v137 = v322;
  v137[1] = 1053609165;
  v139 = v306;
  sub_258A35A34(v137, &v306[*(v324 + 36)]);
  v140 = v323 + 32;
  v141 = v307;
  v307 = *(v323 + 32);
  (v307)(v139, v141, v313);
  v142 = v285;
  sub_258AC1B90(v285);
  v143 = *(v121 + *(v120 + 24));
  result = MobileGestalt_get_current_device();
  if (!result)
  {
    goto LABEL_43;
  }

  v145 = result;
  v322 = v115;
  v323 = v140;

  homeButtonType = MobileGestalt_get_homeButtonType();

  sub_258A35C2C(v142, type metadata accessor for ValenceSelectionPhaseSpecs);
  v147 = v283;
  if (homeButtonType == 2)
  {
    v148 = sub_258B00AA4();
    if (v143)
    {
      v149 = MEMORY[0x277CDFA10];
    }

    else
    {
      v149 = MEMORY[0x277CDF988];
    }

    (*(*(v148 - 8) + 104))(v147, *v149, v148);
  }

  else
  {
    v150 = *MEMORY[0x277CDF998];
    v148 = sub_258B00AA4();
    (*(*(v148 - 8) + 104))(v147, v150, v148);
  }

  sub_258B00AA4();
  v286 = sub_258A35C8C(&qword_27F96D048, MEMORY[0x277CDFA28]);
  result = sub_258B02AA4();
  if (result)
  {
    v285 = v148;
    v257 = v143;
    v151 = v135;
    v320 = v128;
    v152 = sub_258A35758();
    v153 = sub_258A35C8C(&qword_27F96D030, sub_2589D5AFC);
    v154 = v272;
    v155 = v310;
    v156 = v306;
    sub_258B01C84();
    sub_258A35C2C(v147, sub_2589D5AFC);
    sub_258A35B68(v156, sub_258A35050);
    *v365 = v324;
    *&v365[8] = v155;
    v306 = v152;
    *&v365[16] = v152;
    v283 = v153;
    *&v365[24] = v153;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v158 = v309;
    v282 = OpaqueTypeConformance2;
    sub_258B01D64();
    v159 = *(v319 + 8);
    v319 += 8;
    v281 = v159;
    v159(v154, v158);
    v247[2] = "ERY_PLEASANT_SINGLE_LINE";
    v160 = sub_258AFFD94();
    v162 = v161;
    v247[0] = 0xD000000000000026;
    v247[1] = "ERY_UNPLEASANT_TWO_LINES";
    v163 = sub_258AFFD94();
    v321 = v151;
    v164 = v163;
    v166 = v165;
    v272 = sub_258B00FF4();
    v347 = 0;
    v258 = v166;
    v259 = v162;
    sub_258A3499C(v160, v162, v318, 2, v164, v166, v365);
    v360 = *&v365[192];
    v361 = *&v365[208];
    v362[0] = *&v365[224];
    *(v362 + 9) = *&v365[233];
    v356 = *&v365[128];
    v357 = *&v365[144];
    v358 = *&v365[160];
    v359 = *&v365[176];
    v352 = *&v365[64];
    v353 = *&v365[80];
    v354 = *&v365[96];
    v355 = *&v365[112];
    v348 = *v365;
    v349 = *&v365[16];
    v350 = *&v365[32];
    v351 = *&v365[48];
    v363[12] = *&v365[192];
    v363[13] = *&v365[208];
    v364[0] = *&v365[224];
    *(v364 + 9) = *&v365[233];
    v363[8] = *&v365[128];
    v363[9] = *&v365[144];
    v363[10] = *&v365[160];
    v363[11] = *&v365[176];
    v363[4] = *&v365[64];
    v363[5] = *&v365[80];
    v363[6] = *&v365[96];
    v363[7] = *&v365[112];
    v363[0] = *v365;
    v363[1] = *&v365[16];
    v363[2] = *&v365[32];
    v363[3] = *&v365[48];
    sub_258A35914(&v348, v345);
    sub_258A359A8(v363);
    *(&v346[12] + 7) = v360;
    *(&v346[13] + 7) = v361;
    *(&v346[14] + 7) = v362[0];
    v346[15] = *(v362 + 9);
    *(&v346[8] + 7) = v356;
    *(&v346[9] + 7) = v357;
    *(&v346[10] + 7) = v358;
    *(&v346[11] + 7) = v359;
    *(&v346[4] + 7) = v352;
    *(&v346[5] + 7) = v353;
    *(&v346[6] + 7) = v354;
    *(&v346[7] + 7) = v355;
    *(v346 + 7) = v348;
    *(&v346[1] + 7) = v349;
    *(&v346[2] + 7) = v350;
    *(&v346[3] + 7) = v351;
    v167 = v347;
    v168 = v273;
    sub_258AC1B90(v273);
    sub_258B01A04();
    v169 = v168 + *(v311 + 20);
    v170 = sub_258B00A84();
    v171 = MEMORY[0x277CE0A10];
    if ((v170 & 1) == 0)
    {
      v171 = MEMORY[0x277CE0A18];
    }

    v172 = v274;
    v173 = v312;
    v300(v274, *v171, v312);
    v174 = v275;
    v298(v275, v172, v173);
    v175 = sub_258B01A14();

    (v297)(v174, v173);
    sub_258A35C2C(v168, type metadata accessor for ValenceSelectionPhaseSpecs);
    v176 = swift_getKeyPath();
    *&v345[257] = v346[15];
    *&v345[209] = v346[12];
    *&v345[225] = v346[13];
    *&v345[241] = v346[14];
    *&v345[145] = v346[8];
    *&v345[161] = v346[9];
    *&v345[177] = v346[10];
    *&v345[193] = v346[11];
    *&v345[81] = v346[4];
    *&v345[97] = v346[5];
    *&v345[113] = v346[6];
    *&v345[129] = v346[7];
    *&v345[17] = v346[0];
    *&v345[33] = v346[1];
    *&v345[49] = v346[2];
    *v345 = v272;
    *&v345[8] = 0;
    v345[16] = v167;
    v177 = v317;
    *&v345[65] = v346[3];
    *&v345[280] = v176;
    *&v345[288] = v175;
    sub_258B01994();
    v178 = v276;
    sub_258B01BB4();
    memcpy(v365, v345, sizeof(v365));
    sub_258A35C2C(v365, sub_258A3517C);
    v179 = sub_258B014A4();
    v180 = v279;
    sub_258AC14E8(v279);
    v181 = v314;
    v182 = v316;
    v290(v314, v291, v316);
    LOBYTE(v175) = sub_258B00694();
    v183 = v293;
    v293(v181, v182);
    v183(v180, v182);
    v184 = v318;
    v185 = MEMORY[0x277CE13B8];
    if ((v175 & 1) == 0)
    {
      v185 = MEMORY[0x277CE13B0];
    }

    v186 = v280;
    v288(v280, *v185, v177);
    v187 = v278;
    (v287)(&v278[*(v315 + 36)], v186, v177);
    *v187 = v179;
    v187[1] = 1053609165;
    v188 = v305;
    sub_258A35A34(v187, &v305[*(v324 + 36)]);
    (v307)(v188, v178, v313);
    v189 = v277;
    sub_258AC1B90(v277);
    result = MobileGestalt_get_current_device();
    if (!result)
    {
      goto LABEL_44;
    }

    v190 = result;

    v191 = MobileGestalt_get_homeButtonType();

    sub_258A35C2C(v189, type metadata accessor for ValenceSelectionPhaseSpecs);
    if (v191 == 2)
    {
      v192 = *(v285 - 8);
      v193 = v271;
      if (v257)
      {
        v194 = MEMORY[0x277CDFA10];
      }

      else
      {
        v194 = MEMORY[0x277CDF988];
      }

      (*(v192 + 13))(v271, *v194, v285);
    }

    else
    {
      v192 = *(v285 - 8);
      v193 = v271;
      (*(v192 + 13))(v271, *MEMORY[0x277CDF998], v285);
    }

    result = sub_258B02AA4();
    if (result)
    {
      v280 = v192;
      v195 = v184;
      v196 = v261;
      v197 = v305;
      sub_258B01C84();
      sub_258A35C2C(v193, sub_2589D5AFC);
      sub_258A35B68(v197, sub_258A35050);
      v198 = v309;
      sub_258B01D64();
      v281(v196, v198);
      v199 = sub_258AFFD94();
      v201 = v200;
      v202 = sub_258AFFD94();
      v204 = v203;
      v205 = sub_258B00FF4();
      v304 = v201;
      v305 = v205;
      v327 = 0;
      v303 = v204;
      sub_258A3499C(v199, v201, v195, 2, v202, v204, v345);
      v340 = *&v345[192];
      v341 = *&v345[208];
      v342[0] = *&v345[224];
      *(v342 + 9) = *&v345[233];
      v336 = *&v345[128];
      v337 = *&v345[144];
      v338 = *&v345[160];
      v339 = *&v345[176];
      v332 = *&v345[64];
      v333 = *&v345[80];
      v334 = *&v345[96];
      v335 = *&v345[112];
      v328 = *v345;
      v329 = *&v345[16];
      v330 = *&v345[32];
      v331 = *&v345[48];
      v343[12] = *&v345[192];
      v343[13] = *&v345[208];
      v344[0] = *&v345[224];
      *(v344 + 9) = *&v345[233];
      v343[8] = *&v345[128];
      v343[9] = *&v345[144];
      v343[10] = *&v345[160];
      v343[11] = *&v345[176];
      v343[4] = *&v345[64];
      v343[5] = *&v345[80];
      v343[6] = *&v345[96];
      v343[7] = *&v345[112];
      v343[0] = *v345;
      v343[1] = *&v345[16];
      v343[2] = *&v345[32];
      v343[3] = *&v345[48];
      sub_258A35914(&v328, v325);
      sub_258A359A8(v343);
      *(&v326[12] + 7) = v340;
      *(&v326[13] + 7) = v341;
      *(&v326[14] + 7) = v342[0];
      v326[15] = *(v342 + 9);
      *(&v326[8] + 7) = v336;
      *(&v326[9] + 7) = v337;
      *(&v326[10] + 7) = v338;
      *(&v326[11] + 7) = v339;
      *(&v326[4] + 7) = v332;
      *(&v326[5] + 7) = v333;
      *(&v326[6] + 7) = v334;
      *(&v326[7] + 7) = v335;
      *(v326 + 7) = v328;
      *(&v326[1] + 7) = v329;
      *(&v326[2] + 7) = v330;
      *(&v326[3] + 7) = v331;
      v206 = v327;
      v207 = v262;
      sub_258AC1B90(v262);
      sub_258B01A24();
      v208 = v207 + *(v311 + 20);
      v209 = sub_258B00A84();
      v210 = MEMORY[0x277CE0A10];
      if ((v209 & 1) == 0)
      {
        v210 = MEMORY[0x277CE0A18];
      }

      v211 = v263;
      v212 = v312;
      v300(v263, *v210, v312);
      v213 = v264;
      v298(v264, v211, v212);
      v214 = sub_258B01A14();

      (v297)(v213, v212);
      sub_258A35C2C(v207, type metadata accessor for ValenceSelectionPhaseSpecs);
      v215 = swift_getKeyPath();
      *(&v325[32] + 1) = v326[15];
      *(&v325[26] + 1) = v326[12];
      *(&v325[28] + 1) = v326[13];
      *(&v325[30] + 1) = v326[14];
      *(&v325[18] + 1) = v326[8];
      *(&v325[20] + 1) = v326[9];
      *(&v325[22] + 1) = v326[10];
      *(&v325[24] + 1) = v326[11];
      *(&v325[10] + 1) = v326[4];
      *(&v325[12] + 1) = v326[5];
      *(&v325[14] + 1) = v326[6];
      *(&v325[16] + 1) = v326[7];
      *(&v325[2] + 1) = v326[0];
      *(&v325[4] + 1) = v326[1];
      *(&v325[6] + 1) = v326[2];
      v325[0] = v305;
      v325[1] = 0;
      LOBYTE(v325[2]) = v206;
      *(&v325[8] + 1) = v326[3];
      v325[35] = v215;
      v325[36] = v214;
      sub_258B01994();
      v216 = v265;
      sub_258B01BB4();
      memcpy(v345, v325, sizeof(v345));
      sub_258A35C2C(v345, sub_258A3517C);
      v217 = sub_258B014A4();
      v218 = v269;
      sub_258AC14E8(v269);
      v219 = v314;
      v220 = v316;
      v290(v314, v291, v316);
      LOBYTE(v214) = sub_258B00694();
      v221 = v219;
      v222 = v293;
      v293(v221, v220);
      v222(v218, v220);
      v223 = MEMORY[0x277CE13B8];
      if ((v214 & 1) == 0)
      {
        v223 = MEMORY[0x277CE13B0];
      }

      v224 = v270;
      v225 = v317;
      v288(v270, *v223, v317);
      v226 = v268;
      (v287)(&v268[*(v315 + 36)], v224, v225);
      *v226 = v217;
      v226[1] = 1053609165;
      v227 = v266;
      sub_258A35A34(v226, &v266[*(v324 + 36)]);
      (v307)(v227, v216, v313);
      v228 = v267;
      sub_258AC1B90(v267);
      result = MobileGestalt_get_current_device();
      if (!result)
      {
        goto LABEL_45;
      }

      v229 = result;

      v230 = MobileGestalt_get_homeButtonType();

      sub_258A35C2C(v228, type metadata accessor for ValenceSelectionPhaseSpecs);
      if (v230 == 2)
      {
        v231 = v260;
        if (v257)
        {
          v232 = MEMORY[0x277CDFA10];
        }

        else
        {
          v232 = MEMORY[0x277CDF988];
        }

        (*(v280 + 13))(v260, *v232, v285);
      }

      else
      {
        v231 = v260;
        (*(v280 + 13))(v260, *MEMORY[0x277CDF998], v285);
      }

      result = sub_258B02AA4();
      if (result)
      {
        v233 = v249;
        sub_258B01C84();
        sub_258A35C2C(v231, sub_2589D5AFC);
        sub_258A35B68(v227, sub_258A35050);
        v234 = v248;
        v235 = v309;
        sub_258B01D64();
        v281(v233, v235);
        v236 = swift_getKeyPath();
        v237 = v252;
        sub_258A35A98(v234, v252, sub_258A34F48);
        v238 = v254;
        v239 = (v237 + *(v253 + 36));
        *v239 = v236;
        v239[1] = 0x3FE999999999999ALL;
        sub_258A35A98(v237, v238, sub_258A35838);
        v240 = v250;
        sub_258A35B00(v308, v250, sub_258A34F48);
        v241 = v284;
        v242 = v251;
        sub_258A35B00(v284, v251, sub_258A34F48);
        v243 = v256;
        sub_258A35B00(v238, v256, sub_258A35838);
        v244 = v255;
        sub_258A35B00(v240, v255, sub_258A34F48);
        sub_258A34ED4();
        v246 = v245;
        sub_258A35B00(v242, v244 + *(v245 + 48), sub_258A34F48);
        sub_258A35B00(v243, v244 + *(v246 + 64), sub_258A35838);
        sub_258A35B68(v238, sub_258A35838);
        sub_258A35B68(v241, sub_258A34F48);
        sub_258A35B68(v308, sub_258A34F48);
        sub_258A35B68(v243, sub_258A35838);
        sub_258A35B68(v242, sub_258A34F48);
        return sub_258A35B68(v240, sub_258A34F48);
      }

      goto LABEL_42;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_258A3499C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *&v67 = a5;
  *(&v67 + 1) = a6;
  v70 = a4;
  v63[1] = a3;
  v10 = type metadata accessor for ValenceSelectionPhaseSpecs();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v92 = a1;
  *(&v92 + 1) = a2;
  sub_2589BFF58();
  sub_258B003E4();
  v14 = sub_258B01B44();
  v71 = v15;
  v72 = v14;
  v68 = v16;
  LOBYTE(a2) = v17;
  KeyPath = swift_getKeyPath();
  v69 = KeyPath;
  v19 = a2 & 1;
  LOBYTE(v116[0]) = a2 & 1;
  v20 = sub_258B018C4();
  sub_258AC1B90(v13);
  sub_258A2B188();
  sub_258A35C2C(v13, type metadata accessor for ValenceSelectionPhaseSpecs);
  sub_258B00654();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  LOBYTE(v92) = 0;
  v29 = swift_getKeyPath();
  v92 = v67;
  sub_258B003E4();
  v30 = sub_258B01B44();
  v66 = v31;
  *&v67 = v30;
  LOBYTE(a2) = v32;
  *(&v67 + 1) = v33;
  v65 = swift_getKeyPath();
  LOBYTE(v116[0]) = a2 & 1;
  v64 = sub_258B018A4();
  sub_258AC1B90(v13);
  sub_258A2B188();
  sub_258A35C2C(v13, type metadata accessor for ValenceSelectionPhaseSpecs);
  sub_258B00654();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  LOBYTE(v92) = 0;
  v42 = swift_getKeyPath();
  v43 = v68;
  *&v76 = v72;
  *(&v76 + 1) = v68;
  LOBYTE(v77) = v19;
  *(&v77 + 1) = v71;
  *&v78 = KeyPath;
  WORD4(v78) = 0;
  BYTE10(v78) = 1;
  LOBYTE(v79) = v20;
  *(&v79 + 1) = v22;
  *&v80 = v24;
  *(&v80 + 1) = v26;
  *&v81 = v28;
  BYTE8(v81) = 0;
  v44 = v70;
  *&v82 = v29;
  *(&v82 + 1) = v70;
  v83 = 0;
  v94 = v78;
  v95 = v79;
  v92 = v76;
  v93 = v77;
  LOBYTE(v99) = 0;
  v97 = v81;
  v98 = v82;
  v96 = v80;
  v74 = 1;
  v46 = v66;
  v45 = v67;
  *&v84 = v67;
  *(&v84 + 1) = v66;
  LOBYTE(v85) = a2 & 1;
  DWORD1(v85) = *&v75[3];
  *(&v85 + 1) = *v75;
  v47 = *(&v67 + 1);
  v48 = v65;
  *(&v85 + 1) = *(&v67 + 1);
  *&v86 = v65;
  WORD4(v86) = 2;
  BYTE10(v86) = 1;
  v49 = v64;
  LOBYTE(v87) = v64;
  *(&v87 + 1) = v35;
  *&v88 = v37;
  *(&v88 + 1) = v39;
  *&v89 = v41;
  BYTE8(v89) = 0;
  *&v90 = v42;
  *(&v90 + 1) = v70;
  v91 = 0;
  v73[119] = 0;
  *&v73[103] = v90;
  *&v73[87] = v89;
  *&v73[71] = v88;
  *&v73[55] = v87;
  *&v73[39] = v86;
  *&v73[23] = v85;
  *&v73[7] = v84;
  v50 = v76;
  v51 = v77;
  v52 = v79;
  *(a7 + 32) = v78;
  *(a7 + 48) = v52;
  *a7 = v50;
  *(a7 + 16) = v51;
  v53 = v96;
  v54 = v98;
  v55 = v99;
  *(a7 + 80) = v97;
  *(a7 + 96) = v54;
  *(a7 + 64) = v53;
  *(a7 + 112) = v55;
  *(a7 + 120) = 0;
  *(a7 + 128) = 1;
  v56 = *v73;
  v57 = *&v73[16];
  v58 = *&v73[32];
  *(a7 + 177) = *&v73[48];
  *(a7 + 161) = v58;
  *(a7 + 145) = v57;
  *(a7 + 129) = v56;
  v59 = *&v73[64];
  v60 = *&v73[80];
  v61 = *&v73[96];
  *(a7 + 241) = *&v73[112];
  *(a7 + 225) = v61;
  *(a7 + 209) = v60;
  *(a7 + 193) = v59;
  v100[0] = v45;
  v100[1] = v46;
  v101 = a2 & 1;
  *&v102[3] = *&v75[3];
  *v102 = *v75;
  v103 = v47;
  v104 = v48;
  v105 = 2;
  v106 = 1;
  v107 = v49;
  v108 = v35;
  v109 = v37;
  v110 = v39;
  v111 = v41;
  v112 = 0;
  v113 = v42;
  v114 = v44;
  v115 = 0;
  sub_258A35BC8(&v76, v116);
  sub_258A35BC8(&v84, v116);
  sub_258A35C2C(v100, sub_258A3531C);
  v116[0] = v72;
  v116[1] = v43;
  v117 = v19;
  v118 = v71;
  v119 = v69;
  v120 = 0;
  v121 = 1;
  v122 = v20;
  v123 = v22;
  v124 = v24;
  v125 = v26;
  v126 = v28;
  v127 = 0;
  v128 = v29;
  v129 = v44;
  v130 = 0;
  return sub_258A35C2C(v116, sub_258A3531C);
}

uint64_t sub_258A34DF8@<X0>(_BYTE *a1@<X8>)
{
  *a1 = sub_258B01834();
  sub_258A34E38();
  v4 = &a1[*(v3 + 44)];
  return sub_258A32814(v1);
}

void sub_258A34E38()
{
  if (!qword_27F96EC90)
  {
    sub_258A32648(255, &qword_27F96EC98, sub_258A34ED4, MEMORY[0x277CE14B8]);
    sub_2589FFCB4();
    v0 = sub_258B00974();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96EC90);
    }
  }
}

void sub_258A34ED4()
{
  if (!qword_27F96ECA0)
  {
    sub_258A34F48(255);
    sub_258A35838();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F96ECA0);
    }
  }
}

void sub_258A34F7C()
{
  if (!qword_27F96ECB0)
  {
    sub_258A35050(255);
    sub_2589D5AFC();
    sub_258A35758();
    sub_258A35C8C(&qword_27F96D030, sub_2589D5AFC);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96ECB0);
    }
  }
}

void sub_258A35084(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_258B00B04();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_258A350F8()
{
  if (!qword_27F96ECC0)
  {
    sub_258A3517C();
    sub_258A354B8();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96ECC0);
    }
  }
}

void sub_258A3517C()
{
  if (!qword_27F96ECC8)
  {
    sub_258A351FC();
    sub_258A3544C(255, &qword_27F96C868, &qword_27F96C870, MEMORY[0x277CE0AE0]);
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96ECC8);
    }
  }
}

void sub_258A351FC()
{
  if (!qword_27F96ECD0)
  {
    sub_258A32648(255, &qword_27F96ECD8, sub_258A352B0, MEMORY[0x277CE14B8]);
    sub_258A35D88(&qword_27F96ED08, &qword_27F96ECD8, sub_258A352B0);
    v0 = sub_258B021D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96ECD0);
    }
  }
}

void sub_258A352B0()
{
  if (!qword_27F96ECE0)
  {
    sub_258A3531C();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F96ECE0);
    }
  }
}

void sub_258A3531C()
{
  if (!qword_27F96ECE8)
  {
    sub_258A353E8(255, &qword_27F96ECF0, sub_258A353C0);
    sub_258A3544C(255, &qword_27F96ED00, &qword_280DF8928, MEMORY[0x277D83B88]);
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96ECE8);
    }
  }
}

void sub_258A353E8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_258B00B04();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_258A3544C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_258A358C4(255, a3, a4, MEMORY[0x277D83D88]);
    v5 = sub_258B017C4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_258A354B8()
{
  result = qword_27F96ED10;
  if (!qword_27F96ED10)
  {
    sub_258A3517C();
    sub_258A35C8C(&qword_27F96ED18, sub_258A351FC);
    sub_258A35568();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96ED10);
  }

  return result;
}

unint64_t sub_258A35568()
{
  result = qword_27F96C938;
  if (!qword_27F96C938)
  {
    sub_258A3544C(255, &qword_27F96C868, &qword_27F96C870, MEMORY[0x277CE0AE0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96C938);
  }

  return result;
}

void sub_258A355D8()
{
  if (!qword_27F96ED20)
  {
    sub_258A3566C();
    sub_258A35C8C(&qword_27F96ED40, sub_258A3566C);
    v0 = sub_258B015C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96ED20);
    }
  }
}

void sub_258A3566C()
{
  if (!qword_27F96ED28)
  {
    sub_258A35700();
    sub_258A35C8C(&qword_27F96ED38, sub_258A35700);
    v0 = sub_258B013B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96ED28);
    }
  }
}

void sub_258A35700()
{
  if (!qword_27F96ED30)
  {
    v0 = sub_258B01104();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96ED30);
    }
  }
}

unint64_t sub_258A35758()
{
  result = qword_27F96ED48;
  if (!qword_27F96ED48)
  {
    sub_258A35050(255);
    sub_258A3517C();
    sub_258A354B8();
    swift_getOpaqueTypeConformance2();
    sub_258A35C8C(&qword_27F96ED50, sub_258A355D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96ED48);
  }

  return result;
}

void sub_258A35838()
{
  if (!qword_27F96ED58)
  {
    sub_258A34F48(255);
    sub_258A358C4(255, &qword_27F96ED60, MEMORY[0x277D85048], MEMORY[0x277CE0860]);
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96ED58);
    }
  }
}

void sub_258A358C4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_258A35914(uint64_t a1, uint64_t a2)
{
  sub_258A32648(0, &qword_27F96ECD8, sub_258A352B0, MEMORY[0x277CE14B8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258A359A8(uint64_t a1)
{
  sub_258A32648(0, &qword_27F96ECD8, sub_258A352B0, MEMORY[0x277CE14B8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_258A35A34(uint64_t a1, uint64_t a2)
{
  sub_258A3566C();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258A35A98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_258A35B00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258A35B68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258A35BC8(uint64_t a1, uint64_t a2)
{
  sub_258A3531C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258A35C2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258A35C8C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_258A35CD4()
{
  if (!qword_27F96ED70)
  {
    sub_258A32648(255, &qword_27F96EC98, sub_258A34ED4, MEMORY[0x277CE14B8]);
    sub_258A35D88(&qword_27F96ED78, &qword_27F96EC98, sub_258A34ED4);
    v0 = sub_258B00844();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96ED70);
    }
  }
}

uint64_t sub_258A35D88(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_258A32648(255, a2, a3, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t MentalWellbeingNotificationSettingsView.init(settingsModel:assessmentsSettingModel:navigationTitleText:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_258B02114();
  *(a5 + 64) = v11;
  *(a5 + 72) = v12;
  *(a5 + 48) = a3;
  *(a5 + 56) = a4;
  *a5 = sub_2589C0528;
  *(a5 + 8) = a2;
  *(a5 + 16) = 0;
  result = swift_allocObject();
  *(result + 16) = a1;
  *(a5 + 24) = sub_258A35EA8;
  *(a5 + 32) = result;
  *(a5 + 40) = 0;
  return result;
}

uint64_t MentalWellbeingNotificationSettingsView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v2 = sub_258B013D4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A36214();
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A364B4();
  v24 = v13;
  v25 = *(v13 - 8);
  v14 = *(v25 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v1[3];
  v33[2] = v1[2];
  v34 = v17;
  v35 = v1[4];
  v18 = v1[1];
  v33[0] = *v1;
  v33[1] = v18;
  v27 = v33;
  sub_258A362C4(0);
  sub_258A36588(&qword_27F96EDB8, sub_258A362C4);
  sub_258B01A74();
  sub_258B013C4();
  v19 = sub_258A36588(&qword_27F96EDC8, sub_258A36214);
  v20 = MEMORY[0x277CDE0D0];
  sub_258B01F24();
  (*(v3 + 8))(v6, v2);
  (*(v9 + 8))(v12, v8);
  v32 = v34;
  v28 = v8;
  v29 = v2;
  v30 = v19;
  v31 = v20;
  swift_getOpaqueTypeConformance2();
  sub_2589BFF58();
  v21 = v24;
  sub_258B01CB4();
  return (*(v25 + 8))(v16, v21);
}

void sub_258A36214()
{
  if (!qword_27F96ED80)
  {
    sub_258A362C4(255);
    sub_258A36588(&qword_27F96EDB8, sub_258A362C4);
    v0 = sub_258B01A84();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96ED80);
    }
  }
}

void sub_258A362F8()
{
  if (!qword_27F96ED90)
  {
    sub_258A36390(255, &qword_27F96ED98, sub_258A363F4, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F96ED90);
    }
  }
}

void sub_258A36390(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_258A36428()
{
  if (!qword_27F96EDA8)
  {
    sub_258A00D6C(255, &qword_27F96EDB0, &type metadata for LinkToMindSettingsButton, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F96EDA8);
    }
  }
}

void sub_258A364B4()
{
  if (!qword_27F96EDC0)
  {
    sub_258A36214();
    sub_258B013D4();
    sub_258A36588(&qword_27F96EDC8, sub_258A36214);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96EDC0);
    }
  }
}

uint64_t sub_258A36588(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_258A365D0@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v5 = result;
    v6 = [result isiPad];

    v28 = a2;
    if (v6)
    {
      v32 = 0;
      v33 = 0;
      v30 = 0;
      v31 = 0;
      v29 = 0;
      v41 = 0;
      v42 = 0;
      v39 = 0;
      v40 = 0;
      v37 = 0;
      v38 = 0;
      v35 = 0;
      v36 = 0;
      v34 = 0;
    }

    else
    {
      v7 = a1[3];
      v8 = a1[4];
      v9 = *(a1 + 40);
      type metadata accessor for NotificationSettingsModel();
      sub_258A36588(&qword_27F96D308, type metadata accessor for NotificationSettingsModel);
      sub_258B00744();
      sub_258A5B958(&v76);
      v10 = sub_258B00744();
      v11 = NotificationSettingsModel.shouldShowMindfulnessSettingsButton()();

      v12 = 0;
      v13 = 0;
      if (v11)
      {
        if (qword_27F96C240 != -1)
        {
          swift_once();
        }

        v12 = sub_258AFFD94();
      }

      v34 = v13;
      v35 = v12;
      v52 = v76;
      v53 = v77;
      v54 = v78;
      v55 = v79;
      v56 = v80;
      v57 = v81;
      v32 = *(&v76 + 1);
      v33 = v76;
      v30 = *(&v77 + 1);
      v31 = v77;
      v29 = v78;
      v41 = v79;
      v42 = *(&v78 + 1);
      v39 = v80;
      v40 = *(&v79 + 1);
      v37 = v81;
      v38 = *(&v80 + 1);
      v36 = *(&v81 + 1);
      sub_258A36BA0(&v52, &v68);
      v70 = v78;
      v71 = v79;
      v72 = v80;
      v73 = v81;
      v68 = v76;
      v69 = v77;
      sub_258A36BFC(&v68);
    }

    v14 = *a1;
    v15 = a1[1];
    v16 = *(a1 + 16);
    type metadata accessor for AssessmentsSettingsModel();
    sub_258A36588(&qword_27F96EDD0, type metadata accessor for AssessmentsSettingsModel);
    sub_258B00744();
    v17 = a1[3];
    v18 = a1[4];
    v19 = *(a1 + 40);
    type metadata accessor for NotificationSettingsModel();
    sub_258A36588(&qword_27F96D308, type metadata accessor for NotificationSettingsModel);
    sub_258B00744();
    v52 = *(a1 + 4);
    sub_258A00D6C(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
    sub_258B02144();
    v20 = v68;
    v21 = v69;
    v22 = sub_258B00A24();
    v24 = v23;
    v25 = sub_258B00A24();
    *&v52 = v33;
    *(&v52 + 1) = v32;
    *&v53 = v31;
    *(&v53 + 1) = v30;
    *&v54 = v29;
    *(&v54 + 1) = v42;
    *&v55 = v41;
    *(&v55 + 1) = v40;
    *&v56 = v39;
    *(&v56 + 1) = v38;
    *&v57 = v37;
    *(&v57 + 1) = v36;
    *&v58 = v35;
    *(&v58 + 1) = v34;
    v45 = v56;
    v46 = v57;
    v43 = v54;
    v44 = v55;
    *&v59 = v22;
    *(&v59 + 1) = v24;
    *&v60 = v25;
    *(&v60 + 1) = v26;
    v61 = v20;
    LOBYTE(v62) = v21;
    DWORD1(v62) = *&v51[3];
    *(&v62 + 1) = *v51;
    *(&v62 + 1) = &unk_2869D52F0;
    v50 = v62;
    v48 = v59;
    v49 = v60;
    v47 = v58;
    v27 = v53;
    *v28 = v52;
    v28[1] = v27;
    v28[4] = v45;
    v28[5] = v46;
    v28[2] = v43;
    v28[3] = v44;
    v28[9] = v20;
    v28[10] = v50;
    v28[7] = v48;
    v28[8] = v49;
    v28[6] = v47;
    v63[0] = v22;
    v63[1] = v24;
    v63[2] = v25;
    v63[3] = v26;
    v64 = v20;
    v65 = v21;
    *v66 = *v51;
    *&v66[3] = *&v51[3];
    v67 = &unk_2869D52F0;
    sub_258A36C50(&v52, &v68);
    sub_258A36CE4(&v59, &v68);
    sub_258A36D40(v63);
    *&v68 = v33;
    *(&v68 + 1) = v32;
    *&v69 = v31;
    *(&v69 + 1) = v30;
    *&v70 = v29;
    *(&v70 + 1) = v42;
    *&v71 = v41;
    *(&v71 + 1) = v40;
    *&v72 = v39;
    *(&v72 + 1) = v38;
    *&v73 = v37;
    *(&v73 + 1) = v36;
    v74 = v35;
    v75 = v34;
    return sub_258A36D94(&v68);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_258A36AF4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_258A36B3C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_258A36C50(uint64_t a1, uint64_t a2)
{
  sub_258A36390(0, &qword_27F96ED98, sub_258A363F4, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258A36D94(uint64_t a1)
{
  sub_258A36390(0, &qword_27F96ED98, sub_258A363F4, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for IntroPhaseContent()
{
  result = qword_27F96EDD8;
  if (!qword_27F96EDD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258A36E9C()
{
  sub_2589E3D24();
  if (v0 <= 0x3F)
  {
    sub_2589C0D10();
    if (v1 <= 0x3F)
    {
      sub_258A37D9C(319, &qword_27F96C7E8, type metadata accessor for IntroPhaseSpecs, MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_258A36F84@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_258B00F84();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277CDF458];
  sub_258A37D9C(0, &qword_27F96C940, type metadata accessor for IntroPhaseSpecs, MEMORY[0x277CDF458]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - v11);
  v13 = type metadata accessor for IntroPhaseContent();
  sub_258A37E00(v1 + *(v13 + 24), v12, &qword_27F96C940, type metadata accessor for IntroPhaseSpecs, v8, sub_258A37D9C);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_258A37ED8(v12, a1);
  }

  v15 = *v12;
  sub_258B02E94();
  v16 = sub_258B01824();
  sub_258B00354();

  sub_258B00F74();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_258A3719C@<X0>(void (*a1)(uint64_t)@<X0>, _BYTE *a2@<X8>)
{
  v90 = a2;
  sub_258A37D38(0, &qword_27F96EE10, type metadata accessor for IntroPhaseBulletView);
  v95 = v3;
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v91 = v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v98 = v86 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v89 = v86 - v10;
  MEMORY[0x28223BE20](v9);
  v87 = v86 - v11;
  sub_258A37D38(0, &qword_27F96EE08, type metadata accessor for IntroPhaseHeaderText);
  v96 = v12;
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v97 = v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = (v86 - v16);
  v18 = type metadata accessor for IntroPhaseSpecs();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_258B01884();
  v99 = a1;
  sub_258A36F84(v21);
  v22 = v21;
  sub_2589F9F8C(v21);
  sub_258B00654();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  sub_258B024F4();
  sub_258B00C94();
  *&v100[55] = v105;
  *&v100[71] = v106;
  *&v100[87] = v107;
  *&v100[103] = v108;
  *&v100[7] = v102;
  *&v100[23] = v103;
  v101 = 0;
  *&v100[39] = v104;
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v31 = qword_27F97AB98;
  v92 = qword_27F97AB90;
  v32 = qword_27F97ABA0;
  v33 = sub_258AFFD94();
  v35 = v34;
  KeyPath = swift_getKeyPath();
  v37 = type metadata accessor for IntroPhaseHeaderText();
  *(v17 + *(v37 + 20)) = KeyPath;
  v38 = MEMORY[0x277CDF458];
  sub_258A37D9C(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  v94 = v39;
  swift_storeEnumTagMultiPayload();
  *(v17 + *(v37 + 24)) = swift_getKeyPath();
  sub_258A37D9C(0, &qword_27F96C940, type metadata accessor for IntroPhaseSpecs, v38);
  v93 = v40;
  swift_storeEnumTagMultiPayload();
  *v17 = v33;
  v17[1] = v35;
  LOBYTE(v38) = sub_258B01884();
  sub_258A36F84(v22);
  sub_2589F9F8C(v22);
  sub_258B00654();
  v41 = v17 + *(v96 + 9);
  *v41 = v38;
  *(v41 + 1) = v42;
  *(v41 + 2) = v43;
  *(v41 + 3) = v44;
  *(v41 + 4) = v45;
  v41[40] = 0;
  v86[1] = v31;
  v86[0] = v32;
  v46 = sub_258AFFD94();
  v48 = v47;
  v49 = sub_258AFFD94();
  v96 = v17;
  v51 = v50;
  v52 = swift_getKeyPath();
  v53 = type metadata accessor for IntroPhaseBulletView();
  v54 = v87;
  *&v87[*(v53 + 28)] = v52;
  swift_storeEnumTagMultiPayload();
  *(v54 + *(v53 + 32)) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *v54 = v46;
  *(v54 + 8) = v48;
  *(v54 + 16) = v49;
  *(v54 + 24) = v51;
  *(v54 + 32) = 7;
  LOBYTE(v46) = sub_258B01884();
  sub_258A36F84(v22);
  sub_2589F9F8C(v22);
  sub_258B00654();
  v55 = v54 + *(v95 + 36);
  *v55 = v46;
  *(v55 + 8) = v56;
  *(v55 + 16) = v57;
  *(v55 + 24) = v58;
  *(v55 + 32) = v59;
  *(v55 + 40) = 0;
  v60 = sub_258AFFD94();
  v62 = v61;
  v63 = sub_258AFFD94();
  v65 = v64;
  v66 = swift_getKeyPath();
  v67 = v89;
  *&v89[*(v53 + 28)] = v66;
  swift_storeEnumTagMultiPayload();
  *(v67 + *(v53 + 32)) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *v67 = v60;
  *(v67 + 8) = v62;
  *(v67 + 16) = v63;
  *(v67 + 24) = v65;
  *(v67 + 32) = 1;
  LOBYTE(v46) = sub_258B01884();
  sub_258A36F84(v22);
  sub_2589F9F8C(v22);
  sub_258B00654();
  v68 = v67 + *(v95 + 36);
  *v68 = v46;
  *(v68 + 8) = v69;
  *(v68 + 16) = v70;
  *(v68 + 24) = v71;
  *(v68 + 32) = v72;
  *(v68 + 40) = 0;
  v73 = MEMORY[0x277CDF928];
  v74 = v97;
  v99 = type metadata accessor for IntroPhaseHeaderText;
  sub_258A37E00(v96, v97, &qword_27F96EE08, type metadata accessor for IntroPhaseHeaderText, MEMORY[0x277CDF928], sub_258A37D38);
  sub_258A37E00(v54, v98, &qword_27F96EE10, type metadata accessor for IntroPhaseBulletView, v73, sub_258A37D38);
  v75 = v91;
  sub_258A37E00(v67, v91, &qword_27F96EE10, type metadata accessor for IntroPhaseBulletView, v73, sub_258A37D38);
  v76 = v90;
  *v90 = v88;
  *(v76 + 1) = v24;
  *(v76 + 2) = v26;
  *(v76 + 3) = v28;
  *(v76 + 4) = v30;
  v76[40] = 0;
  v77 = *&v100[80];
  *(v76 + 105) = *&v100[64];
  *(v76 + 121) = v77;
  *(v76 + 137) = *&v100[96];
  *(v76 + 19) = *&v100[111];
  v78 = *&v100[16];
  *(v76 + 41) = *v100;
  *(v76 + 57) = v78;
  v79 = *&v100[48];
  *(v76 + 73) = *&v100[32];
  *(v76 + 89) = v79;
  sub_258A37C44();
  v81 = v80;
  v82 = MEMORY[0x277CDF928];
  sub_258A37E00(v74, &v76[*(v80 + 48)], &qword_27F96EE08, type metadata accessor for IntroPhaseHeaderText, MEMORY[0x277CDF928], sub_258A37D38);
  v83 = v98;
  sub_258A37E00(v98, &v76[*(v81 + 64)], &qword_27F96EE10, type metadata accessor for IntroPhaseBulletView, v82, sub_258A37D38);
  sub_258A37E00(v75, &v76[*(v81 + 80)], &qword_27F96EE10, type metadata accessor for IntroPhaseBulletView, v82, sub_258A37D38);
  sub_258A37E74(v67, &qword_27F96EE10, type metadata accessor for IntroPhaseBulletView);
  sub_258A37E74(v54, &qword_27F96EE10, type metadata accessor for IntroPhaseBulletView);
  v84 = v99;
  sub_258A37E74(v96, &qword_27F96EE08, v99);
  sub_258A37E74(v75, &qword_27F96EE10, type metadata accessor for IntroPhaseBulletView);
  sub_258A37E74(v83, &qword_27F96EE10, type metadata accessor for IntroPhaseBulletView);
  return sub_258A37E74(v97, &qword_27F96EE08, v84);
}

uint64_t sub_258A37B68@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_258B011A4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_258A37BAC();
  return sub_258A3719C(v1, (a1 + *(v3 + 44)));
}

void sub_258A37BAC()
{
  if (!qword_27F96EDE8)
  {
    sub_258A37D9C(255, &qword_27F96EDF0, sub_258A37C44, MEMORY[0x277CE14B8]);
    v0 = sub_258B00974();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96EDE8);
    }
  }
}

void sub_258A37C44()
{
  if (!qword_27F96EDF8)
  {
    sub_258A37D38(255, &qword_27F96EE00, sub_258A2E67C);
    sub_258A37D38(255, &qword_27F96EE08, type metadata accessor for IntroPhaseHeaderText);
    sub_258A37D38(255, &qword_27F96EE10, type metadata accessor for IntroPhaseBulletView);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_27F96EDF8);
    }
  }
}

void sub_258A37D38(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_258B00B04();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_258A37D9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_258A37E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_258A37E74(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_258A37D38(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_258A37ED8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntroPhaseSpecs();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258A37F3C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_258A37F84()
{
  if (!qword_27F96EE20)
  {
    sub_258A37D9C(255, &qword_27F96EDF0, sub_258A37C44, MEMORY[0x277CE14B8]);
    sub_258A38018();
    v0 = sub_258B022D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96EE20);
    }
  }
}

unint64_t sub_258A38018()
{
  result = qword_27F96EE28;
  if (!qword_27F96EE28)
  {
    sub_258A37D9C(255, &qword_27F96EDF0, sub_258A37C44, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96EE28);
  }

  return result;
}

uint64_t sub_258A380A0(void *a1)
{
  v1 = 0;
  v2 = MEMORY[0x277D84F90];
  v3 = 16;
  v4 = MEMORY[0x277D84F90];
  while (2)
  {
    v5 = 0;
    v27 = v1 + 1;
    v28 = v3;
    do
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_258A75154(0, *(v4 + 16) + 1, 1, v4);
        v4 = result;
      }

      v8 = *(v4 + 16);
      v7 = *(v4 + 24);
      if (v8 >= v7 >> 1)
      {
        result = sub_258A75154((v7 > 1), v8 + 1, 1, v4);
        v4 = result;
      }

      *&v9 = ((v5 / 15.0) + (v5 / 15.0)) + -1.0;
      *(&v9 + 1) = ((v1 / 15.0) + (v1 / 15.0)) + -1.0;
      *(v4 + 16) = v8 + 1;
      *(v4 + 32 + 16 * v8) = v9;
      if (v1 == 15 || v5 >= 0xF)
      {
        v10 = MEMORY[0x277D84F90];
        v11 = *(MEMORY[0x277D84F90] + 16);
      }

      else
      {
        sub_258A38584();
        result = swift_allocObject();
        v10 = result;
        *(result + 16) = xmmword_258B2FB80;
        *(result + 32) = v3 - 16;
        *(result + 36) = v3 - 15;
        *(result + 40) = v3 + 1;
        *(result + 44) = v3 - 16;
        v11 = 6;
        *(result + 48) = v3 + 1;
        *(result + 52) = v3;
      }

      v12 = *(v2 + 16);
      v13 = v12 + v11;
      if (__OFADD__(v12, v11))
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result && v13 <= *(v2 + 24) >> 1)
      {
        if (!*(v10 + 16))
        {
          goto LABEL_4;
        }
      }

      else
      {
        if (v12 <= v13)
        {
          v14 = v12 + v11;
        }

        else
        {
          v14 = v12;
        }

        result = sub_258A74F10(result, v14, 1, v2);
        v2 = result;
        if (!*(v10 + 16))
        {
LABEL_4:

          if (v11)
          {
            goto LABEL_33;
          }

          goto LABEL_5;
        }
      }

      v15 = *(v2 + 16);
      if ((*(v2 + 24) >> 1) - v15 < v11)
      {
        goto LABEL_34;
      }

      memcpy((v2 + 4 * v15 + 32), (v10 + 32), 4 * v11);

      if (v11)
      {
        v16 = *(v2 + 16);
        v17 = __OFADD__(v16, v11);
        v18 = v16 + v11;
        if (v17)
        {
          goto LABEL_35;
        }

        *(v2 + 16) = v18;
      }

LABEL_5:
      ++v5;
      ++v3;
    }

    while (v5 != 16);
    v3 = v28 + 16;
    ++v1;
    if (v27 != 16)
    {
      continue;
    }

    break;
  }

  v19 = *(v4 + 16);
  v26[4] = v19;
  v26[5] = *(v2 + 16);
  if (v19 >> 59)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v20 = [a1 newBufferWithBytes:v4 + 32 length:16 * v19 options:0];

  v21 = v26[6];
  v26[6] = v20;
  result = swift_unknownObjectRelease();
  v22 = v26[5];
  if ((v22 - 0x2000000000000000) >> 62 != 3)
  {
LABEL_37:
    __break(1u);
    return result;
  }

  v23 = [a1 newBufferWithBytes:v2 + 32 length:4 * v22 options:0];

  v24 = v26[7];
  v26[7] = v23;

  return swift_unknownObjectRelease();
}

uint64_t sub_258A383B4()
{
  v1 = *(v0 + 48);
  swift_unknownObjectRelease();
  v2 = *(v0 + 56);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

id sub_258A38418()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CD7090]) init];
  v1 = [v0 attributes];
  v2 = [v0 layouts];
  result = [v1 objectAtIndexedSubscript_];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = result;
  [result setFormat_];

  result = [v1 objectAtIndexedSubscript_];
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5 = result;
  [result setOffset_];

  result = [v1 objectAtIndexedSubscript_];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  [result setBufferIndex_];

  result = [v2 objectAtIndexedSubscript_];
  if (result)
  {
    v7 = result;
    [result setStride_];

    return v0;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_258A38584()
{
  if (!qword_27F96EE90[0])
  {
    v0 = sub_258B03424();
    if (!v1)
    {
      atomic_store(v0, qword_27F96EE90);
    }
  }
}

void sub_258A385DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  sub_258B02CD4();
  if (v2 <= 0x3F)
  {
    sub_258B02364();
    if (v3 <= 0x3F)
    {
      sub_2589C0D10();
      if (v4 <= 0x3F)
      {
        sub_258A3B278(319, &qword_27F96DEF8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

id sub_258A38760(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = [objc_opt_self() whiteColor];
  v3 = v2;
  v4 = 0.6;
  if (v1 == 2)
  {
    v4 = 0.12;
  }

  v5 = [v2 colorWithAlphaComponent_];

  return v5;
}

id sub_258A387EC(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_opt_self();
  v3 = dbl_258B2FBE0[v1 == 2];
  v4 = &selRef_whiteColor;
  if (v1 != 2)
  {
    v4 = &selRef_blackColor;
  }

  v5 = [v2 *v4];
  v6 = [v5 colorWithAlphaComponent_];

  return v6;
}

id sub_258A3888C(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_opt_self();
  if (v1 == 2)
  {
    v3 = [v2 blackColor];
    v4 = [v3 colorWithAlphaComponent_];

    return v4;
  }

  else
  {
    v6 = [v2 whiteColor];

    return v6;
  }
}

id sub_258A38938(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_opt_self();
  v3 = &selRef_whiteColor;
  if (v1 != 2)
  {
    v3 = &selRef_blackColor;
  }

  v4 = [v2 *v3];

  return v4;
}

uint64_t sub_258A389A4(uint64_t a1)
{
  v5[1] = *(v1 + 8);
  v6 = *(v1 + 16);
  v2 = *(a1 + 16);
  sub_258B02CD4();
  v3 = sub_258B02364();
  MEMORY[0x259C92900](v5, v3);
  return v5[0];
}

uint64_t sub_258A38A00(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  v3 = *(a2 + 16);
  sub_258B02CD4();
  sub_258B02364();
  return sub_258B02314();
}

uint64_t sub_258A38A5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_258B00F84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A3B278(0, &qword_27F96DE40, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v18 - v12);
  sub_258A3B4D8(v2 + *(a1 + 60), &v18 - v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_258B00AA4();
    return (*(*(v14 - 8) + 32))(a2, v13, v14);
  }

  else
  {
    v16 = *v13;
    sub_258B02E94();
    v17 = sub_258B01824();
    sub_258B00354();

    sub_258B00F74();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_258A38C6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26[1] = a2;
  sub_258A3A6A0();
  v4 = *(a1 + 16);
  v5 = sub_258B02CD4();
  sub_258A3A8CC(255, &qword_27F96EF30, sub_258A3A750, MEMORY[0x277CDE470]);
  v7 = v6;
  WitnessTable = swift_getWitnessTable();
  v9 = *(a1 + 24);
  v34 = v5;
  v35 = v4;
  v36 = v7;
  v37 = WitnessTable;
  v38 = v9;
  sub_258B023D4();
  sub_258A3AB10(&qword_27F96EFA8, sub_258A3A6A0);
  v10 = sub_258B00974();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v26 - v16;
  v18 = *(v2 + 40);
  v19 = *(v2 + 48);
  v20 = swift_allocObject();
  v20[2] = v4;
  v20[3] = v9;
  v20[4] = v18;
  v20[5] = v19;
  v28 = v4;
  v29 = v9;
  v30 = v2;
  sub_258A38F64(sub_258A3AE30, v27, v15);

  v21 = sub_258A3AB10(&qword_27F96EFB0, sub_258A3A6A0);
  v33 = sub_258A3AE3C();
  v22 = swift_getWitnessTable();
  v31 = v21;
  v32 = v22;
  v23 = swift_getWitnessTable();
  sub_258A4DFD4(v15, v10, v23);
  v24 = *(v11 + 8);
  v24(v15, v10);
  sub_258A4DFD4(v17, v10, v23);
  return (v24)(v17, v10);
}

uint64_t sub_258A38F64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_258B02CD4();
  sub_258A3A8CC(255, &qword_27F96EF30, sub_258A3A750, MEMORY[0x277CDE470]);
  swift_getWitnessTable();
  v6 = sub_258B023D4();
  v7 = sub_258A3A6FC();
  sub_258A3AE3C();
  WitnessTable = swift_getWitnessTable();
  return sub_258A00E00(a1, a2, &type metadata for TagLayout, v6, v7, WitnessTable, a3);
}

uint64_t sub_258A39094@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a4;
  v34 = type metadata accessor for TagPicker();
  v7 = *(v34 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v34);
  v10 = &KeyPath - v9;
  v11 = sub_258B02CD4();
  v33 = v11;
  sub_258A3A8CC(255, &qword_27F96EF30, sub_258A3A750, MEMORY[0x277CDE470]);
  v13 = v12;
  v32 = v12;
  WitnessTable = swift_getWitnessTable();
  v40 = v11;
  v41 = a2;
  v42 = v13;
  v43 = WitnessTable;
  v44 = a3;
  v14 = sub_258B023D4();
  v35 = *(v14 - 8);
  v15 = *(v35 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &KeyPath - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v30 = &KeyPath - v19;
  v40 = *a1;
  v37 = a2;
  v38 = a3;
  KeyPath = swift_getKeyPath();
  v20 = v10;
  v21 = v34;
  (*(v7 + 16))(v10, a1, v34);
  v22 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = a2;
  *(v23 + 24) = a3;
  (*(v7 + 32))(v23 + v22, v20, v21);
  v24 = sub_258A3AE3C();
  sub_258B003E4();
  sub_258B023B4();
  v39 = v24;
  v25 = swift_getWitnessTable();
  v26 = v30;
  sub_258A4DFD4(v18, v14, v25);
  v27 = *(v35 + 8);
  v27(v18, v14);
  sub_258A4DFD4(v26, v14, v25);
  return (v27)(v26, v14);
}

uint64_t sub_258A393E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v138 = a5;
  v139 = sub_258B01134();
  v137 = *(v139 - 8);
  v9 = *(v137 + 64);
  v10 = MEMORY[0x28223BE20](v139);
  v136 = &v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = *(a3 - 8);
  v12 = *(v131 + 64);
  MEMORY[0x28223BE20](v10);
  v128 = v13;
  v130 = &v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TagPicker();
  v125 = *(v14 - 8);
  v122 = *(v125 + 64);
  MEMORY[0x28223BE20](v14);
  v123 = &v113 - v15;
  v120 = sub_258B00AA4();
  v119 = *(v120 - 8);
  v16 = *(v119 + 64);
  MEMORY[0x28223BE20](v120);
  v118 = &v113 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_258B019F4();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v113 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A3A8CC(0, &qword_27F96EF50, sub_258A3A940, sub_258A3A9CC);
  v117 = v23;
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v113 - v25;
  sub_258A3A808();
  v141 = v27;
  v28 = *(*(v27 - 1) + 64);
  MEMORY[0x28223BE20](v27);
  v121 = &v113 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A3A784();
  v129 = v30;
  v126 = *(v30 - 8);
  v31 = *(v126 + 64);
  MEMORY[0x28223BE20](v30);
  v124 = &v113 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A3A750(0);
  v134 = v33;
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v135 = &v113 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = v14;
  aBlock = sub_258A389A4(v14);
  v133 = a3;
  sub_258B02CD4();
  swift_getWitnessTable();
  v132 = a4;
  v36 = *(a4 + 8);
  v144 = sub_258B02C24();

  v37 = *(a2 + 56);
  v38 = *(a2 + 64);
  v142 = a2;
  v143 = a1;
  aBlock = v37(a1);
  v146 = v39;
  sub_2589BFF58();
  v40 = sub_258B01B44();
  v42 = v41;
  LOBYTE(a2) = v43;
  sub_258B018F4();
  (*(v19 + 104))(v22, *MEMORY[0x277CE0A10], v18);
  sub_258B01A14();

  (*(v19 + 8))(v22, v18);
  v44 = sub_258B01AE4();
  v46 = v45;
  v48 = v47;
  v140 = v49;

  sub_2589BFFAC(v40, v42, a2 & 1);

  v50 = objc_allocWithZone(MEMORY[0x277D75348]);
  if (v144)
  {
    v149 = sub_258A3888C;
    v150 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v146 = 1107296256;
    v51 = &block_descriptor_7;
  }

  else
  {
    v149 = sub_258A38938;
    v150 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v146 = 1107296256;
    v51 = &block_descriptor_6;
  }

  v147 = sub_258A52B54;
  v148 = v51;
  v52 = _Block_copy(&aBlock);
  [v50 initWithDynamicProvider_];
  _Block_release(v52);

  sub_258B01F94();
  v116 = sub_258B01AA4();
  v115 = v53;
  v55 = v54;
  v114 = v56;

  sub_2589BFFAC(v44, v46, v48 & 1);

  LODWORD(v140) = sub_258B018D4();
  v57 = v118;
  v58 = v127;
  v59 = v142;
  sub_258A38A5C(v127, v118);
  sub_258B00A84();
  v60 = *(v119 + 8);
  v61 = v120;
  v60(v57, v120);
  sub_258B00654();
  v63 = v62;
  v65 = v64;
  v67 = v66;
  v69 = v68;
  v70 = v55 & 1;
  v152 = v55 & 1;
  v151 = 0;
  LODWORD(v119) = sub_258B01864();
  sub_258A38A5C(v58, v57);
  sub_258B00A84();
  v60(v57, v61);
  sub_258B00654();
  v72 = v71;
  v74 = v73;
  v76 = v75;
  v78 = v77;
  v153 = 0;
  v79 = sub_258B024F4();
  v81 = v80;
  v82 = &v26[*(v117 + 36)];
  LOBYTE(v61) = v144 & 1;
  sub_258A3A134(v144 & 1, v82);
  sub_258A3A9CC();
  v84 = (v82 + *(v83 + 36));
  *v84 = v79;
  v84[1] = v81;
  v85 = v115;
  *v26 = v116;
  *(v26 + 1) = v85;
  v26[16] = v70;
  *(v26 + 3) = v114;
  v26[32] = v140;
  *(v26 + 5) = v63;
  *(v26 + 6) = v65;
  *(v26 + 7) = v67;
  *(v26 + 8) = v69;
  v26[72] = 0;
  v26[80] = v119;
  *(v26 + 11) = v72;
  *(v26 + 12) = v74;
  *(v26 + 13) = v76;
  *(v26 + 14) = v78;
  v26[120] = 0;
  v86 = v121;
  sub_258A3B0B0(v26, v121);
  v87 = v86 + v141[9];
  *v87 = 0;
  *(v87 + 8) = v61;
  v88 = v125;
  v89 = v123;
  v90 = v58;
  (*(v125 + 16))(v123, v59, v58);
  v91 = v131;
  v92 = v130;
  v93 = v133;
  (*(v131 + 16))(v130, v143, v133);
  v94 = (*(v88 + 80) + 32) & ~*(v88 + 80);
  v95 = (v122 + *(v91 + 80) + v94) & ~*(v91 + 80);
  v96 = swift_allocObject();
  v97 = v132;
  *(v96 + 16) = v93;
  *(v96 + 24) = v97;
  (*(v88 + 32))(v96 + v94, v89, v90);
  (*(v91 + 32))(v96 + v95, v92, v93);
  v98 = sub_258A3ABAC();
  v99 = v124;
  v100 = v141;
  sub_258B01C34();

  sub_258A3B21C(v86);
  v101 = *(v142 + 80);
  (*(v142 + 72))(v143);
  aBlock = &unk_2869D4670;
  v102 = sub_258B003E4();
  sub_2589FC8C8(v102);
  sub_258A3B424(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_2589C6824();
  sub_258B02A34();

  aBlock = v100;
  v146 = v98;
  swift_getOpaqueTypeConformance2();
  v103 = v135;
  v104 = v129;
  sub_258B01DD4();

  (*(v126 + 8))(v99, v104);
  if (v144)
  {
    v105 = MEMORY[0x277CE01F0];
    sub_258A3B278(0, &qword_27F96EFC8, MEMORY[0x277CE01F0], MEMORY[0x277D84560]);
    v106 = v137;
    v107 = *(v137 + 72);
    v108 = (*(v137 + 80) + 32) & ~*(v137 + 80);
    v109 = swift_allocObject();
    *(v109 + 16) = xmmword_258B2BE60;
    sub_258B01114();
    sub_258B01124();
    aBlock = v109;
    sub_258A3AB10(&qword_27F96EFD0, MEMORY[0x277CE01F0]);
    sub_258A3B278(0, &qword_27F96EFD8, v105, MEMORY[0x277D83940]);
    sub_258A3B2DC();
    v110 = v136;
    v111 = v139;
    sub_258B03114();
  }

  else
  {
    v110 = v136;
    sub_258B01124();
    v111 = v139;
    v106 = v137;
  }

  sub_258A3AF1C();
  sub_258B01DB4();
  (*(v106 + 8))(v110, v111);
  return sub_2589AD380(v103);
}

void sub_258A3A134(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_258B02384();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *MEMORY[0x277CE0118];
  v9 = sub_258B010C4();
  (*(*(v9 - 8) + 104))(v7, v8, v9);
  v10 = objc_allocWithZone(MEMORY[0x277D75348]);
  if (a1)
  {
    v19 = sub_258A387EC;
    v20 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v16 = 1107296256;
    v11 = &block_descriptor_13;
  }

  else
  {
    v19 = sub_258A38760;
    v20 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v16 = 1107296256;
    v11 = &block_descriptor_10;
  }

  v17 = sub_258A52B54;
  v18 = v11;
  v12 = _Block_copy(&aBlock);
  [v10 initWithDynamicProvider_];
  _Block_release(v12);

  v13 = sub_258B01F94();
  sub_258A3B474(v7, a2);
  sub_258A3AA60();
  *(a2 + *(v14 + 52)) = v13;
  *(a2 + *(v14 + 56)) = 256;
}

uint64_t sub_258A3A320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = &v31[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for TagPicker();
  v36 = sub_258A389A4(v12);
  sub_258B02CD4();
  swift_getWitnessTable();
  v13 = *(a4 + 8);
  v14 = sub_258B02C24();

  if (v14)
  {
    MEMORY[0x28223BE20](v15);
    *&v31[-32] = a3;
    *&v31[-24] = a4;
    *&v31[-16] = a2;
    v17 = *(a1 + 16);
    v18 = *(a1 + 24);
    v36 = *(a1 + 8);
    v16 = v36;
    v37 = v17;
    v38 = v18;
    v19 = sub_258B02364();

    sub_258B003E4();
    MEMORY[0x259C92900](&v39, v19);
    swift_getWitnessTable();
    swift_getWitnessTable();
    sub_258B02DE4();
    v33 = v16;
    v34 = v17;
    v35 = v18;
    v32 = v39;
    sub_258B02314();
  }

  else if (*(a1 + 32) == 1)
  {
    (*(v8 + 16))(v11, a2, a3);
    v21 = *(a1 + 8);
    v22 = *(a1 + 16);
    v23 = *(a1 + 24);
    v36 = v21;
    v37 = v22;
    v38 = v23;
    v24 = sub_258B02364();

    sub_258B003E4();
    MEMORY[0x259C92900](&v39, v24);
    sub_258B02CC4();
    v33 = v21;
    v34 = v22;
    v35 = v23;
    v32 = v39;
    sub_258B02314();
  }

  else
  {
    sub_258A3B364(a3, a3);
    v26 = *(v25 + 52);
    v27 = *(v8 + 72);
    v28 = (*(v8 + 80) + *(v25 + 48)) & ~*(v8 + 80);
    swift_allocObject();
    v29 = sub_258B02C84();
    (*(v8 + 16))(v30, a2, a3);
    return sub_258A38A00(v29, v12);
  }
}

void sub_258A3A6A0()
{
  if (!qword_27F96EF20)
  {
    sub_258A3A6FC();
    v0 = sub_258B007B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96EF20);
    }
  }
}

unint64_t sub_258A3A6FC()
{
  result = qword_27F96EF28;
  if (!qword_27F96EF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96EF28);
  }

  return result;
}

void sub_258A3A784()
{
  if (!qword_27F96EF40)
  {
    sub_258A3A808();
    sub_258A3ABAC();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96EF40);
    }
  }
}

void sub_258A3A808()
{
  if (!qword_27F96EF48)
  {
    sub_258A3A8CC(255, &qword_27F96EF50, sub_258A3A940, sub_258A3A9CC);
    sub_258A3AB58(255, &qword_27F96CD00, MEMORY[0x277D839B0], MEMORY[0x277D839C8], MEMORY[0x277CE0190]);
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96EF48);
    }
  }
}

void sub_258A3A8CC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_258B00B04();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_258A3A940()
{
  if (!qword_27F96EF58)
  {
    sub_258A3AB58(255, &qword_27F96DF40, MEMORY[0x277CE0BD8], MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96EF58);
    }
  }
}

void sub_258A3A9CC()
{
  if (!qword_27F96EF60)
  {
    sub_258A3AA60();
    sub_258A3AB10(&qword_27F96EF78, sub_258A3AA60);
    v0 = sub_258B01294();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96EF60);
    }
  }
}

void sub_258A3AA60()
{
  if (!qword_27F96EF68)
  {
    sub_258B02384();
    sub_258A3AB10(&qword_27F96EF70, MEMORY[0x277CE1260]);
    v0 = sub_258B00684();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96EF68);
    }
  }
}

uint64_t sub_258A3AB10(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_258A3AB58(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_258A3ABAC()
{
  result = qword_27F96EF80;
  if (!qword_27F96EF80)
  {
    sub_258A3A808();
    sub_258A3AC2C();
    sub_2589D49FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96EF80);
  }

  return result;
}

unint64_t sub_258A3AC2C()
{
  result = qword_27F96EF88;
  if (!qword_27F96EF88)
  {
    sub_258A3A8CC(255, &qword_27F96EF50, sub_258A3A940, sub_258A3A9CC);
    sub_258A3AD0C();
    sub_258A3AB10(&qword_27F96EFA0, sub_258A3A9CC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96EF88);
  }

  return result;
}

unint64_t sub_258A3AD0C()
{
  result = qword_27F96EF90;
  if (!qword_27F96EF90)
  {
    sub_258A3A940();
    sub_258A3AD8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96EF90);
  }

  return result;
}

unint64_t sub_258A3AD8C()
{
  result = qword_27F96EF98;
  if (!qword_27F96EF98)
  {
    sub_258A3AB58(255, &qword_27F96DF40, MEMORY[0x277CE0BD8], MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96EF98);
  }

  return result;
}

unint64_t sub_258A3AE3C()
{
  result = qword_27F96EFB8;
  if (!qword_27F96EFB8)
  {
    sub_258A3A8CC(255, &qword_27F96EF30, sub_258A3A750, MEMORY[0x277CDE470]);
    sub_258A3AF1C();
    sub_258A3AB10(&qword_280DF8950, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96EFB8);
  }

  return result;
}

unint64_t sub_258A3AF1C()
{
  result = qword_27F96EFC0;
  if (!qword_27F96EFC0)
  {
    sub_258A3A750(255);
    sub_258A3A808();
    sub_258A3ABAC();
    swift_getOpaqueTypeConformance2();
    sub_258A3AB10(&qword_280DF8950, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96EFC0);
  }

  return result;
}

uint64_t sub_258A3AFFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for TagPicker() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_258A393E0(a1, v8, v5, v6, a2);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_258A3B0B0(uint64_t a1, uint64_t a2)
{
  sub_258A3A8CC(0, &qword_27F96EF50, sub_258A3A940, sub_258A3A9CC);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258A3B144()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for TagPicker() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = v0 + ((v4 + *(v3 + 64) + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80));

  return sub_258A3A320(v0 + v4, v5, v1, v2);
}

uint64_t sub_258A3B21C(uint64_t a1)
{
  sub_258A3A808();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_258A3B278(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_258A3B2DC()
{
  result = qword_27F96EFE0;
  if (!qword_27F96EFE0)
  {
    sub_258A3B278(255, &qword_27F96EFD8, MEMORY[0x277CE01F0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96EFE0);
  }

  return result;
}

void sub_258A3B364(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {
    sub_258A3B424(0, &qword_27F970720, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  }

  else
  {

    sub_258B03424();
  }
}

uint64_t sub_258A3B3E8()
{
  v1 = v0[4];
  v2 = *(v0[3] + 8);
  v3 = v0[2];
  return sub_258B02AA4() & 1;
}

void sub_258A3B424(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_258A3B474(uint64_t a1, uint64_t a2)
{
  v4 = sub_258B02384();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258A3B4D8(uint64_t a1, uint64_t a2)
{
  sub_258A3B278(0, &qword_27F96DE40, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s15LogButtonFooterVMa()
{
  result = qword_27F96EFE8;
  if (!qword_27F96EFE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258A3B5F8()
{
  sub_258A3C6EC(319, &qword_27F96C788, type metadata accessor for StateOfMindTimeline.Styles, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_258A3C750(319, &qword_27F971C90, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_258A3B6EC(uint64_t a1@<X8>)
{
  v109 = a1;
  v107 = type metadata accessor for StateOfMindTimeline.Styles.Entry(0);
  v2 = *(*(v107 - 8) + 64);
  MEMORY[0x28223BE20](v107);
  v108 = &v99 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v4 = *(*(v105 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v105);
  v106 = &v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v114 = &v99 - v8;
  MEMORY[0x28223BE20](v7);
  v113 = &v99 - v9;
  v111 = sub_258B01174();
  v10 = *(v111 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v111);
  v13 = &v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _s15LogButtonFooterVMa();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  sub_2589D31B8();
  v18 = v17;
  v19 = *(v17 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  v22 = &v99 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A3C44C(0);
  v24 = *(v23 - 8);
  v112 = v23 - 8;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v27 = &v99 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A3C7A0(0);
  v99 = v28;
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v100 = &v99 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A3C7C8(0, &qword_27F96F040, sub_258A3C7A0);
  v102 = v31;
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v103 = &v99 - v33;
  sub_258A3C82C();
  v101 = v34;
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34);
  v104 = &v99 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = v1;
  sub_258A3CB4C(v1, &v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), _s15LogButtonFooterVMa);
  v37 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v38 = swift_allocObject();
  sub_258A3C8B8(&v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v38 + v37);
  v115 = v1;
  sub_258A3C3F4();
  sub_2589D329C();
  sub_258B02174();
  sub_258B01164();
  sub_258A3D29C(&qword_27F96CF98, sub_2589D31B8);
  sub_258A3D29C(&qword_27F96F020, MEMORY[0x277CDDEE0]);
  v39 = v111;
  sub_258B01BD4();
  (*(v10 + 8))(v13, v39);
  (*(v19 + 8))(v22, v18);
  sub_258A3C514(0);
  v41 = &v27[*(v40 + 36)];
  v42 = MEMORY[0x277CE0860];
  sub_258A3C6EC(0, &qword_27F96F028, MEMORY[0x277CDDBB8], MEMORY[0x277CE0860]);
  v44 = v41 + *(v43 + 28);
  sub_258B00CB4();
  *v41 = swift_getKeyPath();
  v45 = MEMORY[0x277CDF450];
  sub_258A3C550(0, &qword_27F96F008, sub_258A3C514, &qword_27F96F030, MEMORY[0x277CDF450]);
  v47 = &v27[*(v46 + 36)];
  sub_258A3C6EC(0, &qword_27F96F030, v45, v42);
  v49 = *(v48 + 28);
  v50 = *MEMORY[0x277CDF440];
  v51 = sub_258B006C4();
  (*(*(v51 - 8) + 104))(v47 + v49, v50, v51);
  *v47 = swift_getKeyPath();
  v52 = sub_258B01FC4();
  KeyPath = swift_getKeyPath();
  sub_258A3C474();
  v55 = &v27[*(v54 + 36)];
  *v55 = KeyPath;
  v55[1] = v52;
  LOBYTE(v52) = sub_258B01884();
  v56 = v113;
  sub_258AC1060(v113);
  sub_258A3CBB4(v56, type metadata accessor for StateOfMindTimeline.Styles);
  sub_258B00654();
  v57 = &v27[*(v112 + 44)];
  *v57 = v52;
  *(v57 + 1) = v58;
  *(v57 + 2) = v59;
  *(v57 + 3) = v60;
  *(v57 + 4) = v61;
  v57[40] = 0;
  v62 = sub_258B01894();
  v63 = v114;
  sub_258AC1060(v114);
  sub_258A3CBB4(v63, type metadata accessor for StateOfMindTimeline.Styles);
  v64 = MobileGestalt_get_current_device();
  if (v64)
  {
    v65 = v64;
    MobileGestalt_get_homeButtonType();

    sub_258B00654();
    v67 = v66;
    v69 = v68;
    v71 = v70;
    v73 = v72;
    v74 = v100;
    sub_258A3CC14(v27, v100, sub_258A3C44C);
    v75 = v74 + *(v99 + 36);
    *v75 = v62;
    *(v75 + 8) = v67;
    *(v75 + 16) = v69;
    *(v75 + 24) = v71;
    *(v75 + 32) = v73;
    *(v75 + 40) = 0;
    v76 = sub_258B01864();
    v77 = v106;
    sub_258AC1060(v106);
    v78 = v108;
    sub_258A3CB4C(v77 + *(v105 + 48), v108, type metadata accessor for StateOfMindTimeline.Styles.Entry);
    sub_258A3CBB4(v77, type metadata accessor for StateOfMindTimeline.Styles);
    if (*(v78 + *(v107 + 24)))
    {
      v79 = v78 + *(v107 + 20);
      if ((sub_258B00A84() & 1) == 0)
      {
        sub_258ABF198();
      }
    }

    sub_258A3CBB4(v78, type metadata accessor for StateOfMindTimeline.Styles.Entry);
    sub_258B00654();
    v81 = v80;
    v83 = v82;
    v85 = v84;
    v87 = v86;
    v88 = v103;
    sub_258A3CC14(v74, v103, sub_258A3C7A0);
    v89 = v88 + *(v102 + 36);
    *v89 = v76;
    *(v89 + 8) = v81;
    *(v89 + 16) = v83;
    *(v89 + 24) = v85;
    *(v89 + 32) = v87;
    *(v89 + 40) = 0;
    sub_258B01874();
    v123 = 0u;
    v124 = 0u;
    v125 = 1;
    v90 = v104;
    v91 = &v104[*(v101 + 36)];
    sub_258B01544();
    sub_2589ADF40(v88, v90);
    sub_258B024F4();
    sub_258B00C94();
    v92 = v109;
    sub_258A3CC14(v90, v109, sub_258A3C82C);
    sub_258A3C7C8(0, &qword_27F96F050, sub_258A3C82C);
    v94 = (v92 + *(v93 + 36));
    v95 = v121;
    v94[4] = v120;
    v94[5] = v95;
    v94[6] = v122;
    v97 = v117;
    v96 = v118;
    *v94 = v116;
    v94[1] = v97;
    v98 = v119;
    v94[2] = v96;
    v94[3] = v98;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_258A3C184(uint64_t a1)
{
  v1 = (a1 + *(_s15LogButtonFooterVMa() + 20));
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 16);
  sub_258A3C750(0, &qword_27F971C90, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
  return sub_258B02314();
}

__n128 sub_258A3C210@<Q0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  *&v18 = sub_258AFFD94();
  *(&v18 + 1) = v6;
  sub_2589BFF58();
  v7 = sub_258B01B44();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_258AC1060(v5);
  sub_258A3CBB4(v5, type metadata accessor for StateOfMindTimeline.Styles);
  sub_258B024F4();
  sub_258B00C94();
  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  v14 = v23;
  *(a1 + 96) = v22;
  *(a1 + 112) = v14;
  *(a1 + 128) = v24;
  v15 = v19;
  *(a1 + 32) = v18;
  *(a1 + 48) = v15;
  result = v21;
  *(a1 + 64) = v20;
  *(a1 + 80) = result;
  return result;
}

void sub_258A3C3F4()
{
  if (!qword_27F96CF28)
  {
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96CF28);
    }
  }
}

void sub_258A3C474()
{
  if (!qword_27F96F000)
  {
    sub_258A3C550(255, &qword_27F96F008, sub_258A3C514, &qword_27F96F030, MEMORY[0x277CDF450]);
    sub_2589D3448();
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96F000);
    }
  }
}

void sub_258A3C550(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_258A3C6EC(255, a4, a5, MEMORY[0x277CE0860]);
    v8 = sub_258B00B04();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_258A3C5E8()
{
  if (!qword_27F96F018)
  {
    sub_2589D31B8();
    sub_258B01174();
    sub_258A3D29C(&qword_27F96CF98, sub_2589D31B8);
    sub_258A3D29C(&qword_27F96F020, MEMORY[0x277CDDEE0]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96F018);
    }
  }
}

void sub_258A3C6EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_258A3C750(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_258A3C7C8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_258B00B04();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_258A3C82C()
{
  if (!qword_27F96F048)
  {
    sub_258A3C7C8(255, &qword_27F96F040, sub_258A3C7A0);
    sub_258B01554();
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96F048);
    }
  }
}

uint64_t sub_258A3C8B8(uint64_t a1, uint64_t a2)
{
  v4 = _s15LogButtonFooterVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258A3C91C()
{
  v1 = *(_s15LogButtonFooterVMa() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_258A3C184(v2);
}

double sub_258A3C97C@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *&result = sub_258A3C210(a1).n128_u64[0];
  return result;
}

uint64_t sub_258A3C984@<X0>(uint64_t *a1@<X8>)
{
  result = sub_258B00F54();
  *a1 = result;
  return result;
}

uint64_t sub_258A3C9B0(uint64_t *a1)
{
  v1 = *a1;

  return sub_258B00F64();
}

uint64_t sub_258A3CA7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1);
  return a6(v11);
}

uint64_t sub_258A3CB4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258A3CBB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258A3CC14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_258A3CC7C()
{
  result = qword_27F96F058;
  if (!qword_27F96F058)
  {
    sub_258A3C7C8(255, &qword_27F96F050, sub_258A3C82C);
    sub_258A3CD20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F058);
  }

  return result;
}

unint64_t sub_258A3CD20()
{
  result = qword_27F96F060;
  if (!qword_27F96F060)
  {
    sub_258A3C82C();
    sub_258A3CDD0();
    sub_258A3D29C(&qword_27F96CB68, MEMORY[0x277CE0660]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F060);
  }

  return result;
}

unint64_t sub_258A3CDD0()
{
  result = qword_27F96F068;
  if (!qword_27F96F068)
  {
    sub_258A3C7C8(255, &qword_27F96F040, sub_258A3C7A0);
    sub_258A3CED8(&qword_27F96F070, sub_258A3C7A0, sub_258A3CEA4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F068);
  }

  return result;
}

uint64_t sub_258A3CED8(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_258A3CF5C()
{
  result = qword_27F96F080;
  if (!qword_27F96F080)
  {
    sub_258A3C474();
    sub_258A3D00C();
    sub_258A3D29C(&qword_27F96CF60, sub_2589D3448);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F080);
  }

  return result;
}

unint64_t sub_258A3D00C()
{
  result = qword_27F96F088;
  if (!qword_27F96F088)
  {
    v1 = MEMORY[0x277CDF450];
    sub_258A3C550(255, &qword_27F96F008, sub_258A3C514, &qword_27F96F030, MEMORY[0x277CDF450]);
    sub_258A3D0E4();
    sub_258A3D238(&qword_27F96F0A0, &qword_27F96F030, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F088);
  }

  return result;
}

unint64_t sub_258A3D0E4()
{
  result = qword_27F96F090;
  if (!qword_27F96F090)
  {
    sub_258A3C514(255);
    sub_2589D31B8();
    sub_258B01174();
    sub_258A3D29C(&qword_27F96CF98, sub_2589D31B8);
    sub_258A3D29C(&qword_27F96F020, MEMORY[0x277CDDEE0]);
    swift_getOpaqueTypeConformance2();
    sub_258A3D238(&qword_27F96F098, &qword_27F96F028, MEMORY[0x277CDDBB8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F090);
  }

  return result;
}

uint64_t sub_258A3D238(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_258A3C6EC(255, a2, a3, MEMORY[0x277CE0860]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_258A3D29C(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_258A3DBE4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StateOfMindChartViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_258A3DC44()
{
  v1 = v0;
  swift_getObjectType();
  sub_258A3F11C(0, &qword_27F96EBF0, MEMORY[0x277CC9578]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v40 - v4;
  v6 = sub_258B00084();
  v44 = *(v6 - 8);
  v7 = *(v44 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_258B00384();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258B00364();
  v15 = sub_258B00374();
  v16 = sub_258B02EA4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v42 = v6;
    v18 = v17;
    v19 = swift_slowAlloc();
    v43 = v5;
    v20 = v19;
    v45[0] = v19;
    *v18 = 136446210;
    v21 = sub_258B035A4();
    v23 = sub_2589F1F78(v21, v22, v45);
    v41 = v10;
    v24 = v23;

    *(v18 + 4) = v24;
    _os_log_impl(&dword_2589A1000, v15, v16, "[%{public}s] Tapped on current value view date", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    v25 = v20;
    v5 = v43;
    MEMORY[0x259C945C0](v25, -1, -1);
    v26 = v18;
    v6 = v42;
    MEMORY[0x259C945C0](v26, -1, -1);

    (*(v11 + 8))(v14, v41);
  }

  else
  {

    (*(v11 + 8))(v14, v10);
  }

  v27 = [v1 healthStore];
  v28 = [v1 primaryGraphViewController];
  v29 = [v28 graphView];

  v30 = [v29 effectiveVisibleRangeCadence];
  v31 = [v30 minValue];

  if (v31)
  {
    v45[0] = v31;
    v32 = swift_dynamicCast();
    v33 = v44;
    (*(v44 + 56))(v5, v32 ^ 1u, 1, v6);
    if ((*(v33 + 48))(v5, 1, v6) != 1)
    {
      (*(v33 + 32))(v9, v5, v6);
      goto LABEL_10;
    }
  }

  else
  {
    v33 = v44;
    (*(v44 + 56))(v5, 1, 1, v6);
  }

  sub_258B00074();
  if ((*(v33 + 48))(v5, 1, v6) != 1)
  {
    sub_258A3F1DC(v5, &qword_27F96EBF0, MEMORY[0x277CC9578]);
  }

LABEL_10:
  v34 = [v1 traitCollection];
  v35 = [v34 verticalSizeClass];

  v36 = objc_allocWithZone(type metadata accessor for StateOfMindCalendarViewController());
  v37 = sub_258ADCEE8(v27, v9, v35);

  v38 = &v37[qword_27F97AC38];
  swift_beginAccess();
  *(v38 + 1) = &off_2869D81A0;
  swift_unknownObjectWeakAssign();
  v39 = [objc_allocWithZone(MEMORY[0x277D12970]) initWithRootViewController_];
  [v1 presentViewController:v39 animated:1 completion:0];
}

id sub_258A3E184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v33 = a7;
  v34 = a3;
  v36 = a5;
  v37 = a6;
  v35 = a4;
  v32 = a2;
  sub_258A3F11C(0, &qword_27F96F0A8, MEMORY[0x277CC99E8]);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v32 - v16;
  v18 = MEMORY[0x277CC9578];
  sub_258A3F11C(0, &qword_27F96EBF0, MEMORY[0x277CC9578]);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v32 - v21;
  sub_258A3F170(a8, &v32 - v21, &qword_27F96EBF0, v18);
  v23 = sub_258B00084();
  v24 = *(v23 - 8);
  v25 = 0;
  if ((*(v24 + 48))(v22, 1, v23) != 1)
  {
    v25 = sub_258B00014();
    (*(v24 + 8))(v22, v23);
  }

  sub_258A3F170(a9, v17, &qword_27F96F0A8, MEMORY[0x277CC99E8]);
  v26 = sub_258B00224();
  v27 = *(v26 - 8);
  v28 = 0;
  if ((*(v27 + 48))(v17, 1, v26) != 1)
  {
    v28 = sub_258B00194();
    (*(v27 + 8))(v17, v26);
  }

  v29 = type metadata accessor for StateOfMindChartViewController();
  v38.receiver = v11;
  v38.super_class = v29;
  v30 = objc_msgSendSuper2(&v38, sel_initWithHealthStore_primaryDisplayType_unitPreferenceController_dateCache_chartDataCacheController_selectedTimeScopeController_sampleTypeDateRangeController_initialXValue_currentCalendarOverride_options_, a1, v32, v34, v35, v36, v37, v33, v25, v28, a10);

  sub_258A3F1DC(a9, &qword_27F96F0A8, MEMORY[0x277CC99E8]);
  sub_258A3F1DC(a8, &qword_27F96EBF0, MEMORY[0x277CC9578]);
  return v30;
}

id sub_258A3E484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v34 = a8;
  v35 = a7;
  v38 = a5;
  v39 = a6;
  v36 = a3;
  v37 = a4;
  v33 = a2;
  sub_258A3F11C(0, &qword_27F96F0A8, MEMORY[0x277CC99E8]);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v32 - v15;
  v17 = MEMORY[0x277CC9578];
  sub_258A3F11C(0, &qword_27F96EBF0, MEMORY[0x277CC9578]);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v32 - v20;
  sub_2589F4488(0, &qword_27F96F0B0, 0x277CCABB0);
  sub_2589F4488(0, &qword_27F96F0B8, 0x277D12B30);
  sub_258A3EFA0();
  v22 = sub_258B029E4();

  sub_258A3F170(a9, v21, &qword_27F96EBF0, v17);
  v23 = sub_258B00084();
  v24 = *(v23 - 8);
  v25 = 0;
  if ((*(v24 + 48))(v21, 1, v23) != 1)
  {
    v25 = sub_258B00014();
    (*(v24 + 8))(v21, v23);
  }

  sub_258A3F170(a10, v16, &qword_27F96F0A8, MEMORY[0x277CC99E8]);
  v26 = sub_258B00224();
  v27 = *(v26 - 8);
  v28 = 0;
  if ((*(v27 + 48))(v16, 1, v26) != 1)
  {
    v28 = sub_258B00194();
    (*(v27 + 8))(v16, v26);
  }

  v29 = type metadata accessor for StateOfMindChartViewController();
  v40.receiver = v12;
  v40.super_class = v29;
  v30 = objc_msgSendSuper2(&v40, sel_initWithTimeScopeRanges_healthStore_primaryDisplayType_unitPreferenceController_dateCache_chartDataCacheController_selectedTimeScopeController_sampleTypeDateRangeController_initialXValue_currentCalendarOverride_options_, v22, v33, v36, v37, v38, v39, v35, v34, v25, v28, a11);

  sub_258A3F1DC(a10, &qword_27F96F0A8, MEMORY[0x277CC99E8]);
  sub_258A3F1DC(a9, &qword_27F96EBF0, MEMORY[0x277CC9578]);
  return v30;
}

id sub_258A3E7E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v35 = a2;
  v36 = a8;
  v37 = a7;
  v39 = a5;
  v40 = a6;
  v38 = a4;
  sub_258A3F11C(0, &qword_27F96F0A8, MEMORY[0x277CC99E8]);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v34 - v16;
  sub_258A3EF38();
  v18 = sub_258B02C64();

  if (a3)
  {
    sub_2589F4488(0, &qword_27F96F0C8, 0x277D12908);
    v19 = sub_258B02C64();
  }

  else
  {
    v19 = 0;
  }

  v41 = a10;
  sub_258A3F008(a10, v43);
  v20 = v44;
  if (v44)
  {
    v21 = __swift_project_boxed_opaque_existential_1Tm(v43, v44);
    v22 = *(v20 - 8);
    v23 = *(v22 + 64);
    MEMORY[0x28223BE20](v21);
    v25 = &v34 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v22 + 16))(v25);
    v26 = sub_258B03444();
    (*(v22 + 8))(v25, v20);
    __swift_destroy_boxed_opaque_existential_1(v43);
  }

  else
  {
    v26 = 0;
  }

  sub_258A3F170(a11, v17, &qword_27F96F0A8, MEMORY[0x277CC99E8]);
  v27 = sub_258B00224();
  v28 = *(v27 - 8);
  v29 = 0;
  if ((*(v28 + 48))(v17, 1, v27) != 1)
  {
    v29 = sub_258B00194();
    (*(v28 + 8))(v17, v27);
  }

  if (a13)
  {
    sub_2589F4488(0, &qword_27F96F0B0, 0x277CCABB0);
    sub_2589F4488(0, &qword_27F96F0B8, 0x277D12B30);
    sub_258A3EFA0();
    v30 = sub_258B029E4();
  }

  else
  {
    v30 = 0;
  }

  v31 = type metadata accessor for StateOfMindChartViewController();
  v42.receiver = v34;
  v42.super_class = v31;
  v32 = objc_msgSendSuper2(&v42, sel_initWithStackedDisplayTypes_primaryDisplayTypeStackIndex_stackedDisplayTypeHeights_healthStore_unitPreferenceController_dateCache_chartDataCacheController_selectedTimeScopeController_sampleTypeDateRangeController_initialXValue_currentCalendarOverride_options_timeScopeRanges_, v18, v35, v19, v38, v39, v40, v37, v36, a9, v26, v29, a12, v30);

  swift_unknownObjectRelease();
  sub_258A3F1DC(a11, &qword_27F96F0A8, MEMORY[0x277CC99E8]);
  sub_258A3F0C0(v41);
  return v32;
}

id sub_258A3EBAC(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_258B00084();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_258B00384();
  v9 = *(v32 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v32);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258B00364();
  (*(v5 + 16))(v8, a1, v4);
  v13 = sub_258B00374();
  v14 = sub_258B02EA4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v30 = a1;
    v16 = v15;
    v29 = swift_slowAlloc();
    v33 = v29;
    *v16 = 136446466;
    v17 = sub_258B035A4();
    v19 = sub_2589F1F78(v17, v18, &v33);
    ObjectType = v1;
    v20 = v19;

    *(v16 + 4) = v20;
    *(v16 + 12) = 2082;
    sub_258A3EEE0();
    v21 = sub_258B03414();
    v23 = v22;
    (*(v5 + 8))(v8, v4);
    v24 = sub_2589F1F78(v21, v23, &v33);
    v2 = ObjectType;

    *(v16 + 14) = v24;
    _os_log_impl(&dword_2589A1000, v13, v14, "[%{public}s] Scrolling to date: %{public}s", v16, 0x16u);
    v25 = v29;
    swift_arrayDestroy();
    MEMORY[0x259C945C0](v25, -1, -1);
    MEMORY[0x259C945C0](v16, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  (*(v9 + 8))(v12, v32);
  v26 = sub_258B00014();
  [v2 scrollToDate:v26 withVisibleAlignment:3];

  return [v2 dismissViewControllerAnimated:1 completion:0];
}

unint64_t sub_258A3EEE0()
{
  result = qword_27F96D970;
  if (!qword_27F96D970)
  {
    sub_258B00084();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96D970);
  }

  return result;
}

void sub_258A3EF38()
{
  if (!qword_27F96D878)
  {
    sub_2589F4488(255, &qword_27F96D870, 0x277D12830);
    v0 = sub_258B02CD4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96D878);
    }
  }
}

unint64_t sub_258A3EFA0()
{
  result = qword_27F96F0C0;
  if (!qword_27F96F0C0)
  {
    sub_2589F4488(255, &qword_27F96F0B0, 0x277CCABB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F0C0);
  }

  return result;
}

uint64_t sub_258A3F008(uint64_t a1, uint64_t a2)
{
  sub_258A3F06C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_258A3F06C()
{
  if (!qword_27F9713B0)
  {
    v0 = sub_258B030C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F9713B0);
    }
  }
}

uint64_t sub_258A3F0C0(uint64_t a1)
{
  sub_258A3F06C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_258A3F11C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_258B030C4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_258A3F170(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_258A3F11C(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_258A3F1DC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_258A3F11C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_258A3F24C()
{
  if (!qword_27F96F0D0)
  {
    sub_258B00084();
    sub_258A41FD0(&qword_27F96F0D8, MEMORY[0x277CC9578]);
    v0 = sub_258B02A84();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96F0D0);
    }
  }
}

uint64_t type metadata accessor for MomentaryDatePickerFullView()
{
  result = qword_27F96F0E0;
  if (!qword_27F96F0E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258A3F340()
{
  sub_258A3F24C();
  if (v0 <= 0x3F)
  {
    sub_258A427D4(319, &qword_27F96EA60, MEMORY[0x277CC9578], MEMORY[0x277CE11F8]);
    if (v1 <= 0x3F)
    {
      sub_258A427D4(319, &qword_27F96E968, MEMORY[0x277CC9578], MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        sub_258A427D4(319, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_258A427D4(319, &qword_27F96C978, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            sub_258A427D4(319, &qword_27F96EB00, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs, MEMORY[0x277CDF468]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_258A3F530@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_258B00F84();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A427D4(0, &qword_27F96C968, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for MomentaryDatePickerFullView();
  sub_2589EE78C(v1 + *(v12 + 32), v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_258B008A4();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_258B02E94();
    v16 = sub_258B01824();
    sub_258B00354();

    sub_258B00F74();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_258A3F744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v3 = sub_258B013D4();
  v67 = *(v3 - 8);
  v68 = v3;
  v4 = *(v67 + 64);
  MEMORY[0x28223BE20](v3);
  v65 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_258B00FB4();
  v6 = *(v60 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v60);
  v52 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A41B54();
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A41A84();
  v55 = v15;
  v53 = *(v15 - 8);
  v16 = *(v53 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A41984();
  v59 = v19;
  v56 = *(v19 - 8);
  v20 = *(v56 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A41804();
  v61 = v23;
  v57 = *(v23 - 8);
  v24 = *(v57 + 64);
  MEMORY[0x28223BE20](v23);
  v54 = &v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A4164C();
  v62 = *(v26 - 8);
  v63 = v26;
  v27 = *(v62 + 64);
  MEMORY[0x28223BE20](v26);
  v58 = &v51 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = a1;
  v69 = a1;
  sub_258A41BD4();
  sub_258A420F4();
  sub_258B01A74();
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v70 = sub_258AFFD94();
  v71 = v29;
  v30 = sub_258A41FD0(&qword_27F96F170, sub_258A41B54);
  v31 = sub_2589BFF58();
  v32 = MEMORY[0x277D837D0];
  sub_258B01CB4();

  (*(v11 + 8))(v14, v10);
  v33 = v52;
  v34 = v60;
  (*(v6 + 104))(v52, *MEMORY[0x277CDDDC0], v60);
  v70 = v10;
  v71 = v32;
  v72 = v30;
  v73 = v31;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = v55;
  sub_258B01E24();
  (*(v6 + 8))(v33, v34);
  v37 = (*(v53 + 8))(v18, v36);
  MEMORY[0x28223BE20](v37);
  sub_258A427D4(0, &qword_27F96F178, sub_258A421A4, MEMORY[0x277CDDF58]);
  v39 = v38;
  v70 = v36;
  v71 = OpaqueTypeConformance2;
  v40 = swift_getOpaqueTypeConformance2();
  v41 = sub_258A423D8();
  v42 = v54;
  v43 = v59;
  sub_258B01EE4();
  (*(v56 + 8))(v22, v43);
  v70 = v43;
  v71 = v39;
  v72 = v40;
  v73 = v41;
  v44 = swift_getOpaqueTypeConformance2();
  v45 = v58;
  v46 = v61;
  sub_258B01E04();
  (*(v57 + 8))(v42, v46);
  v47 = v65;
  sub_258B013C4();
  v70 = v46;
  v71 = v44;
  swift_getOpaqueTypeConformance2();
  v48 = v63;
  v49 = v68;
  sub_258B01F24();
  (*(v67 + 8))(v47, v49);
  return (*(v62 + 8))(v45, v48);
}

void sub_258A3FED4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_258B01004();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  sub_258A42D74();
  sub_258A404AC(a1, (a2 + *(v4 + 44)));
  v5 = [objc_opt_self() labelColor];
  v6 = sub_258B01F94();
  sub_258A41BD4();
  *(a2 + *(v7 + 36)) = v6;
}

uint64_t sub_258A3FF58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  sub_258A421A4();
  v46 = v3;
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v45 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A0A48C();
  v7 = *(v6 - 8);
  v43 = v6;
  v44 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v39 = sub_258A0A48C;
  v40 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A42284(0, &qword_27F96E038, sub_258A0A48C, &qword_27F96E048, sub_258A0A48C);
  v41 = *(v10 - 8);
  v42 = v10;
  v11 = *(v41 + 64);
  MEMORY[0x28223BE20](v10);
  v38 = &v38 - v12;
  v13 = sub_258B01384();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  sub_258A42338();
  v16 = v15;
  v17 = *(v15 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A42284(0, &qword_27F96F188, sub_258A42338, &qword_27F96F198, sub_258A42338);
  v22 = v21;
  v23 = *(v21 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  v26 = &v38 - v25;
  sub_258B01324();
  v49 = a1;
  sub_258B026D4();
  sub_258A41FD0(&qword_27F96CBA0, MEMORY[0x277D126A0]);
  sub_258B00784();
  v27 = sub_258A41FD0(&qword_27F96F198, sub_258A42338);
  MEMORY[0x259C91A00](v20, v16, v27);
  (*(v17 + 8))(v20, v16);
  sub_258B01334();
  v48 = a1;
  sub_258B026B4();
  sub_258A41FD0(&qword_27F96D6D8, MEMORY[0x277D12688]);
  v28 = v40;
  sub_258B00784();
  v29 = sub_258A41FD0(&qword_27F96E048, v39);
  v30 = v38;
  v31 = v43;
  MEMORY[0x259C91A00](v28, v43, v29);
  (*(v44 + 8))(v28, v31);
  v32 = v45;
  v33 = *(v46 + 48);
  (*(v23 + 16))(v45, v26, v22);
  v34 = v41;
  v35 = &v32[v33];
  v36 = v42;
  (*(v41 + 16))(v35, v30, v42);
  sub_258B011B4();
  (*(v34 + 8))(v30, v36);
  return (*(v23 + 8))(v26, v22);
}

uint64_t sub_258A404AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v31 = a2;
  v32 = a1;
  sub_258A41D6C();
  v34 = v2;
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x28223BE20](v2);
  v33 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - v7;
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v37 = sub_258AFFD94();
  v38 = v9;
  sub_2589BFF58();
  v10 = sub_258B01B44();
  v12 = v11;
  v14 = v13;
  LODWORD(v37) = sub_258B014A4();
  v15 = sub_258B01AB4();
  v30 = v16;
  v18 = v17;
  v35 = v19;
  sub_2589BFFAC(v10, v12, v14 & 1);

  sub_258A40770(v8);
  LOBYTE(v37) = v18 & 1;
  v36 = 1;
  v20 = v3[2];
  v22 = v33;
  v21 = v34;
  v20(v33, v8, v34);
  v23 = v37;
  v24 = v30;
  v25 = v31;
  *v31 = v15;
  v25[1] = v24;
  *(v25 + 16) = v23;
  v26 = v36;
  v25[3] = v35;
  v25[4] = 0;
  *(v25 + 40) = v26;
  sub_258A41CFC();
  v20(v25 + *(v27 + 64), v22, v21);
  sub_2589E36D4(v15, v24, v23);
  v28 = v3[1];
  sub_258B003E4();
  v28(v8, v21);
  v28(v22, v21);
  sub_2589BFFAC(v15, v24, v37);
}

uint64_t sub_258A40770@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v1 = sub_258B01484();
  v2 = *(v1 - 8);
  v39 = v1;
  v40 = v2;
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v38 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_258B012D4();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v37 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A3F24C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v34 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277CC9578];
  sub_258A427D4(0, &qword_27F96EA60, MEMORY[0x277CC9578], MEMORY[0x277CE11F8]);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  sub_258A420A0(0, &qword_27F96E9D8, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CDD660]);
  v15 = v14;
  v16 = *(v14 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  v19 = v33 - v18;
  sub_258A41E9C();
  v21 = *(v20 - 8);
  v35 = v20;
  v36 = v21;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = v33 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258B01084();
  v33[0] = v25;
  v26 = *(type metadata accessor for MomentaryDatePickerFullView() + 24);
  sub_258A427D4(0, &qword_27F96E968, v11, MEMORY[0x277CE10B8]);
  v27 = v33[1];
  sub_258B02144();
  sub_258A42E0C(v27, v34, sub_258A3F24C);
  sub_258B012C4();
  sub_258B00644();
  v28 = sub_258A41F4C();
  sub_258B01C24();
  (*(v16 + 8))(v19, v15);
  v29 = v38;
  sub_258B01474();
  v42 = v15;
  v43 = v28;
  swift_getOpaqueTypeConformance2();
  sub_258A41FD0(&qword_27F96F150, MEMORY[0x277CDE150]);
  v30 = v35;
  v31 = v39;
  sub_258B01C74();
  (*(v40 + 8))(v29, v31);
  return (*(v36 + 8))(v24, v30);
}

uint64_t sub_258A40BFC(uint64_t a1)
{
  v2 = sub_258B00F84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A427D4(0, &qword_27F96C968, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v20 - v9);
  v11 = sub_258B008A4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for MomentaryDatePickerFullView();
  sub_2589EE78C(a1 + *(v16 + 32), v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v12 + 32))(v15, v10, v11);
  }

  else
  {
    v17 = *v10;
    sub_258B02E94();
    v18 = sub_258B01824();
    sub_258B00354();

    sub_258B00F74();
    swift_getAtKeyPath();

    (*(v3 + 8))(v6, v2);
  }

  sub_258B00894();
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_258A40E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v7 = type metadata accessor for MomentaryDatePickerFullView();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_258A42E0C(a1, &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MomentaryDatePickerFullView);
  v10 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v11 = swift_allocObject();
  sub_258A42838(&v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  return a4(a3, v11);
}

uint64_t sub_258A40FB0()
{
  v18 = sub_258B008A4();
  v0 = *(v18 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v18);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_258B00084();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v17 - v10;
  v12 = type metadata accessor for MomentaryDatePickerFullView();
  v13 = *(v12 + 24);
  v14 = MEMORY[0x277CC9578];
  sub_258A427D4(0, &qword_27F96E968, MEMORY[0x277CC9578], MEMORY[0x277CE10B8]);
  sub_258B02124();
  v15 = *(v12 + 20);
  (*(v5 + 16))(v9, v11, v4);
  sub_258A427D4(0, &qword_27F96EA60, v14, MEMORY[0x277CE11F8]);
  sub_258B02314();
  (*(v5 + 8))(v11, v4);
  sub_258A3F530(v3);
  sub_258B00894();
  return (*(v0 + 8))(v3, v18);
}

void sub_258A41200(uint64_t a1@<X8>)
{
  sub_258A41444();
  sub_258A4164C();
  sub_258B013D4();
  sub_258A41804();
  sub_258A41984();
  sub_258A427D4(255, &qword_27F96F178, sub_258A421A4, MEMORY[0x277CDDF58]);
  sub_258A41A84();
  sub_258A41B54();
  sub_258A41FD0(&qword_27F96F170, sub_258A41B54);
  sub_2589BFF58();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_258A423D8();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_258B00B24();
  KeyPath = swift_getKeyPath();
  sub_258A42460();
  v4 = (a1 + *(v3 + 36));
  *v4 = KeyPath;
  v4[1] = 0;
}

void sub_258A41444()
{
  if (!qword_27F96F0F0)
  {
    sub_258A4164C();
    sub_258B013D4();
    sub_258A41804();
    sub_258A41984();
    sub_258A427D4(255, &qword_27F96F178, sub_258A421A4, MEMORY[0x277CDDF58]);
    sub_258A41A84();
    sub_258A41B54();
    sub_258A41FD0(&qword_27F96F170, sub_258A41B54);
    sub_2589BFF58();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_258A423D8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96F0F0);
    }
  }
}

void sub_258A4164C()
{
  if (!qword_27F96F0F8)
  {
    sub_258A41804();
    sub_258A41984();
    sub_258A427D4(255, &qword_27F96F178, sub_258A421A4, MEMORY[0x277CDDF58]);
    sub_258A41A84();
    sub_258A41B54();
    sub_258A41FD0(&qword_27F96F170, sub_258A41B54);
    sub_2589BFF58();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_258A423D8();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96F0F8);
    }
  }
}

void sub_258A41804()
{
  if (!qword_27F96F100)
  {
    sub_258A41984();
    sub_258A427D4(255, &qword_27F96F178, sub_258A421A4, MEMORY[0x277CDDF58]);
    sub_258A41A84();
    sub_258A41B54();
    sub_258A41FD0(&qword_27F96F170, sub_258A41B54);
    sub_2589BFF58();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_258A423D8();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96F100);
    }
  }
}

void sub_258A41984()
{
  if (!qword_27F96F108)
  {
    sub_258A41A84();
    sub_258A41B54();
    sub_258A41FD0(&qword_27F96F170, sub_258A41B54);
    sub_2589BFF58();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96F108);
    }
  }
}

void sub_258A41A84()
{
  if (!qword_27F96F110)
  {
    sub_258A41B54();
    sub_258A41FD0(&qword_27F96F170, sub_258A41B54);
    sub_2589BFF58();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96F110);
    }
  }
}

void sub_258A41B54()
{
  if (!qword_27F96F118)
  {
    sub_258A41BD4();
    sub_258A420F4();
    v0 = sub_258B01A84();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96F118);
    }
  }
}

void sub_258A41BD4()
{
  if (!qword_27F96F120)
  {
    sub_258A41C68();
    sub_258A420A0(255, &qword_27F96C860, MEMORY[0x277CE0F78], MEMORY[0x277CE0F60], MEMORY[0x277CE0730]);
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96F120);
    }
  }
}

void sub_258A41C68()
{
  if (!qword_27F96F128)
  {
    sub_258A427D4(255, &qword_27F96F130, sub_258A41CFC, MEMORY[0x277CE14B8]);
    sub_258A42018();
    v0 = sub_258B021D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96F128);
    }
  }
}

void sub_258A41CFC()
{
  if (!qword_27F96F138)
  {
    sub_258A41D6C();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F96F138);
    }
  }
}

void sub_258A41D6C()
{
  if (!qword_27F96F140)
  {
    sub_258A41E9C();
    sub_258B01484();
    sub_258A420A0(255, &qword_27F96E9D8, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CDD660]);
    sub_258A41F4C();
    swift_getOpaqueTypeConformance2();
    sub_258A41FD0(&qword_27F96F150, MEMORY[0x277CDE150]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96F140);
    }
  }
}

void sub_258A41E9C()
{
  if (!qword_27F96F148)
  {
    sub_258A420A0(255, &qword_27F96E9D8, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CDD660]);
    sub_258A41F4C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96F148);
    }
  }
}

unint64_t sub_258A41F4C()
{
  result = qword_27F96E9E0;
  if (!qword_27F96E9E0)
  {
    sub_258A420A0(255, &qword_27F96E9D8, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CDD660]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96E9E0);
  }

  return result;
}

uint64_t sub_258A41FD0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_258A42018()
{
  result = qword_27F96F158;
  if (!qword_27F96F158)
  {
    sub_258A427D4(255, &qword_27F96F130, sub_258A41CFC, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F158);
  }

  return result;
}

void sub_258A420A0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_258A420F4()
{
  result = qword_27F96F160;
  if (!qword_27F96F160)
  {
    sub_258A41BD4();
    sub_258A41FD0(&qword_27F96F168, sub_258A41C68);
    sub_2589C02DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F160);
  }

  return result;
}

void sub_258A421A4()
{
  if (!qword_27F96F180)
  {
    sub_258A42284(255, &qword_27F96F188, sub_258A42338, &qword_27F96F198, sub_258A42338);
    sub_258A42284(255, &qword_27F96E038, sub_258A0A48C, &qword_27F96E048, sub_258A0A48C);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F96F180);
    }
  }
}

void sub_258A42284(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_258A41FD0(a4, a5);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v9)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_258A42338()
{
  if (!qword_27F96F190)
  {
    sub_258B026D4();
    sub_258A41FD0(&qword_27F96CBA0, MEMORY[0x277D126A0]);
    v0 = sub_258B00794();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96F190);
    }
  }
}

unint64_t sub_258A423D8()
{
  result = qword_27F96F1A0;
  if (!qword_27F96F1A0)
  {
    sub_258A427D4(255, &qword_27F96F178, sub_258A421A4, MEMORY[0x277CDDF58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F1A0);
  }

  return result;
}

void sub_258A42460()
{
  if (!qword_27F96F1A8)
  {
    sub_258A424F8();
    sub_258A427D4(255, &qword_27F96CF48, sub_2589D5EAC, MEMORY[0x277CE0860]);
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96F1A8);
    }
  }
}

void sub_258A424F8()
{
  if (!qword_27F96F1B0)
  {
    sub_258B00A14();
    sub_258A41444();
    sub_258A4164C();
    sub_258B013D4();
    sub_258A41804();
    sub_258A41984();
    sub_258A427D4(255, &qword_27F96F178, sub_258A421A4, MEMORY[0x277CDDF58]);
    sub_258A41A84();
    sub_258A41B54();
    sub_258A41FD0(&qword_27F96F170, sub_258A41B54);
    sub_2589BFF58();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_258A423D8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    v0 = sub_258B00B34();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96F1B0);
    }
  }
}

void sub_258A427D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_258A42838(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MomentaryDatePickerFullView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_8()
{
  v1 = type metadata accessor for MomentaryDatePickerFullView();
  v27 = *(*(v1 - 1) + 64);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v3 = sub_258B00084();
  v4 = *(*(v3 - 8) + 8);
  v4(v2, v3);
  sub_258A3F24C();
  v4(v2 + *(v5 + 36), v3);
  v6 = (v2 + v1[5]);
  v7 = *v6;

  v8 = v6[1];

  v9 = MEMORY[0x277CC9578];
  sub_258A427D4(0, &qword_27F96EA60, MEMORY[0x277CC9578], MEMORY[0x277CE11F8]);
  v4(v6 + *(v10 + 32), v3);
  v11 = v2 + v1[6];
  v4(v11, v3);
  sub_258A427D4(0, &qword_27F96E968, v9, MEMORY[0x277CE10B8]);
  v13 = *(v11 + *(v12 + 28));

  v14 = v1[7];
  sub_258A427D4(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_258B006A4();
    (*(*(v15 - 8) + 8))(v2 + v14, v15);
  }

  else
  {
    v16 = *(v2 + v14);
  }

  v17 = v1[8];
  sub_258A427D4(0, &qword_27F96C968, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_258B008A4();
    (*(*(v18 - 8) + 8))(v2 + v17, v18);
  }

  else
  {
    v19 = *(v2 + v17);
  }

  v20 = (v2 + v1[9]);
  sub_258A427D4(0, &qword_27F96D7C8, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs, MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = sub_258B01504();
    v22 = *(v21 - 8);
    if (!(*(v22 + 48))(v20, 1, v21))
    {
      (*(v22 + 8))(v20, v21);
    }

    v23 = *(type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs() + 20);
    v24 = sub_258B00AA4();
    (*(*(v24 - 8) + 8))(&v20[v23], v24);
  }

  else
  {
    v25 = *v20;
  }

  return swift_deallocObject();
}

uint64_t sub_258A42D00(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for MomentaryDatePickerFullView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

void sub_258A42D74()
{
  if (!qword_27F96F1B8)
  {
    sub_258A427D4(255, &qword_27F96F130, sub_258A41CFC, MEMORY[0x277CE14B8]);
    v0 = sub_258B00974();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96F1B8);
    }
  }
}

uint64_t sub_258A42E0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_258A42E74()
{
  result = qword_27F96F1C0;
  if (!qword_27F96F1C0)
  {
    sub_258A42460();
    sub_258A41FD0(&qword_27F96F1C8, sub_258A424F8);
    sub_2589D6238();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F1C0);
  }

  return result;
}

uint64_t NotificationSOMSettingsView.init(settingsModel:navigationTitleText:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  result = swift_allocObject();
  *(result + 16) = a1;
  *a4 = sub_258A35EA8;
  *(a4 + 8) = result;
  *(a4 + 16) = 0;
  return result;
}

uint64_t NotificationSOMSettingsView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v2 = sub_258B013D4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A432C0();
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A434AC();
  v14 = *(v13 - 8);
  v24 = v13;
  v25 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v1[1];
  v33 = *v1;
  *v34 = v18;
  *&v34[16] = *(v1 + 4);
  v27 = &v33;
  sub_258A43370(0, &qword_27F96ED98, sub_258A363F4, MEMORY[0x277D83D88]);
  sub_258A433D4();
  sub_258B01A74();
  sub_258B013C4();
  v19 = sub_258A43898(&qword_27F96F1F0, sub_258A432C0);
  v20 = MEMORY[0x277CDE0D0];
  sub_258B01F24();
  (*(v3 + 8))(v6, v2);
  (*(v9 + 8))(v12, v8);
  v32 = *&v34[8];
  v28 = v8;
  v29 = v2;
  v30 = v19;
  v31 = v20;
  swift_getOpaqueTypeConformance2();
  sub_2589BFF58();
  v21 = v24;
  sub_258B01CB4();
  return (*(v25 + 8))(v17, v21);
}

void sub_258A432C0()
{
  if (!qword_27F96F1D0)
  {
    sub_258A43370(255, &qword_27F96ED98, sub_258A363F4, MEMORY[0x277D83D88]);
    sub_258A433D4();
    v0 = sub_258B01A84();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96F1D0);
    }
  }
}

void sub_258A43370(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_258A433D4()
{
  result = qword_27F96F1D8;
  if (!qword_27F96F1D8)
  {
    sub_258A43370(255, &qword_27F96ED98, sub_258A363F4, MEMORY[0x277D83D88]);
    sub_258A43898(&qword_27F96F1E0, sub_258A363F4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F1D8);
  }

  return result;
}

void sub_258A434AC()
{
  if (!qword_27F96F1E8)
  {
    sub_258A432C0();
    sub_258B013D4();
    sub_258A43898(&qword_27F96F1F0, sub_258A432C0);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F96F1E8);
    }
  }
}

void sub_258A43580(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [objc_opt_self() sharedBehavior];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 isiPad];

    if (v6)
    {
      v7 = 0;
      v8 = 0;
      v9 = 0uLL;
      v10 = 0uLL;
      v11 = 0uLL;
      v12 = 0uLL;
      v13 = 0uLL;
      v14 = 0uLL;
    }

    else
    {
      v15 = *a1;
      v16 = a1[1];
      v17 = *(a1 + 16);
      type metadata accessor for NotificationSettingsModel();
      sub_258A43898(&qword_27F96D308, type metadata accessor for NotificationSettingsModel);
      sub_258B00744();
      sub_258A5B958(&v28);
      v18 = sub_258B00744();
      LOBYTE(v16) = NotificationSettingsModel.shouldShowMindfulnessSettingsButton()();

      v7 = 0;
      v8 = 0;
      if (v16)
      {
        if (qword_27F96C240 != -1)
        {
          swift_once();
        }

        v7 = sub_258AFFD94();
        v8 = v19;
      }

      v26[0] = v28;
      v26[1] = v29;
      v26[2] = v30;
      v26[3] = v31;
      v26[4] = v32;
      v26[5] = v33;
      v24 = v29;
      v25 = v28;
      v22 = v31;
      v23 = v30;
      v20 = v33;
      v21 = v32;
      sub_258A36BA0(v26, v27);
      v27[2] = v30;
      v27[3] = v31;
      v27[4] = v32;
      v27[5] = v33;
      v27[0] = v28;
      v27[1] = v29;
      sub_258A36BFC(v27);
      v14 = v20;
      v13 = v21;
      v12 = v22;
      v11 = v23;
      v10 = v24;
      v9 = v25;
    }

    *a2 = v9;
    *(a2 + 16) = v10;
    *(a2 + 32) = v11;
    *(a2 + 48) = v12;
    *(a2 + 64) = v13;
    *(a2 + 80) = v14;
    *(a2 + 96) = v7;
    *(a2 + 104) = v8;
  }

  else
  {
    __break(1u);
  }
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_258A437F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_258A43840(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_258A43898(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_258A438E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_258A43BEC();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t StateOfMindTimelinePresentationContext.hashValue.getter()
{
  v1 = *v0;
  sub_258B03514();
  MEMORY[0x259C93B20](v1);
  return sub_258B03554();
}

uint64_t EnvironmentValues.stateOfMindTimelinePresentationContext.getter()
{
  sub_258A43A20();

  return sub_258B00F94();
}

unint64_t sub_258A43A20()
{
  result = qword_27F96F1F8;
  if (!qword_27F96F1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F1F8);
  }

  return result;
}

uint64_t sub_258A43A74@<X0>(_BYTE *a1@<X8>)
{
  sub_258A43A20();
  result = sub_258B00F94();
  *a1 = v3;
  return result;
}

uint64_t sub_258A43AC4(char *a1)
{
  v2 = *a1;
  sub_258A43A20();
  return sub_258B00FA4();
}

uint64_t EnvironmentValues.stateOfMindTimelinePresentationContext.setter(char *a1)
{
  v2 = *a1;
  sub_258A43A20();
  return sub_258B00FA4();
}

uint64_t (*EnvironmentValues.stateOfMindTimelinePresentationContext.modify(void *a1))(uint64_t *a1)
{
  *a1 = v1;
  a1[1] = sub_258A43A20();
  sub_258B00F94();
  return sub_258A43BB0;
}

uint64_t sub_258A43BB0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  *(a1 + 17) = *(a1 + 16);
  return sub_258B00FA4();
}

unint64_t sub_258A43BEC()
{
  result = qword_27F96F200;
  if (!qword_27F96F200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96F200);
  }

  return result;
}

uint64_t sub_258A43C60@<X0>(uint64_t a1@<X8>)
{
  sub_258B00E34();
  v2 = a1 + *(type metadata accessor for AssociationSelectionPhaseSpecs() + 20);
  return sub_258B00D84();
}

uint64_t type metadata accessor for AssociationSelectionPhaseSpecs()
{
  result = qword_27F96F208;
  if (!qword_27F96F208)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void StateOfMindTimeline.Styles.Entry.viewHeight.getter()
{
  v0 = [objc_opt_self() sharedBehavior];
  if (v0)
  {
    v1 = v0;
    [v0 isiPad];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_258A43D88@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v3 = a1 + v2[18];
  sub_258B00E34();
  v4 = *(_s6StylesV15LogButtonFooterVMa(0) + 20);
  sub_258B00D84();
  sub_258A43A20();
  sub_258B00F94();
  v32 = a1 + v2[12];
  v33 = type metadata accessor for StateOfMindTimeline.Styles.Entry(0);
  v31 = v33[7];
  sub_258B00D14();
  v5 = sub_258B01504();
  (*(*(v5 - 8) + 56))(a1, 1, 1, v5);
  sub_258A44DA8(v3, a1);
  v6 = v2[5];
  v7 = sub_258B00AA4();
  v8 = *(*(v7 - 8) + 16);
  v8(a1 + v6, v3 + v4, v7);
  *(a1 + v2[6]) = v34;
  v9 = v2[7];
  v10 = sub_258B006A4();
  (*(*(v10 - 8) + 16))(a1 + v9, v32 + v31, v10);
  v11 = a1 + v2[8];
  sub_258A2AECC(v3, v11);
  v12 = _s6StylesV8TimelineVMa(0);
  v8(v11 + *(v12 + 20), v3 + v4, v7);
  v13 = a1 + v2[9];
  sub_258A2AECC(v3, v13);
  v14 = _s6StylesV6NoDataVMa(0);
  v8(v13 + *(v14 + 20), v3 + v4, v7);
  *(v13 + *(v14 + 24)) = v34;
  v15 = a1 + v2[10];
  sub_258A2AECC(v3, v15);
  v16 = _s6StylesV11PlaceholderVMa(0);
  v30 = v4;
  v8(v15 + *(v16 + 20), v3 + v4, v7);
  v17 = a1 + v2[11];
  sub_258A2AECC(v3, v17);
  v18 = _s6StylesV6SymbolVMa(0);
  v8(v17 + *(v18 + 20), v3 + v4, v7);
  sub_258A2AECC(v3, v32);
  v8(v32 + v33[5], v3 + v4, v7);
  *(v32 + v33[6]) = v34;
  v19 = a1 + v2[13];
  sub_258A2AECC(v3, v19);
  v20 = _s6StylesV5EmptyVMa(0);
  v8(v19 + *(v20 + 20), v3 + v30, v7);
  *(v19 + *(v20 + 24)) = v34;
  v21 = a1 + v2[14];
  sub_258A2AECC(v3, v21);
  v22 = _s6StylesV5DailyVMa(0);
  v8(v21 + *(v22 + 20), v3 + v30, v7);
  *(v21 + *(v22 + 24)) = v34;
  v23 = a1 + v2[15];
  sub_258A2AECC(v3, v23);
  v24 = _s6StylesV9MomentaryVMa(0);
  v8(v23 + *(v24 + 20), v3 + v30, v7);
  v25 = a1 + v2[16];
  sub_258A2AECC(v3, v25);
  v26 = _s6StylesV6HeaderVMa(0);
  v8(v25 + *(v26 + 20), v3 + v30, v7);
  v27 = a1 + v2[17];
  sub_258A2AECC(v3, v27);
  v28 = _s6StylesV11ChartButtonVMa(0);
  return (v8)(v27 + *(v28 + 20), v3 + v30, v7);
}

void static StateOfMindTimeline.Styles.Entry.estimatedViewHeight.getter()
{
  v0 = [objc_opt_self() sharedBehavior];
  if (v0)
  {
    v1 = v0;
    [v0 isiPad];
  }

  else
  {
    __break(1u);
  }
}

void sub_258A443E4()
{
  sub_258A07454(319);
  if (v0 <= 0x3F)
  {
    sub_258B00AA4();
    if (v1 <= 0x3F)
    {
      sub_258B006A4();
      if (v2 <= 0x3F)
      {
        _s6StylesV8TimelineVMa(319);
        if (v3 <= 0x3F)
        {
          _s6StylesV6NoDataVMa(319);
          if (v4 <= 0x3F)
          {
            _s6StylesV11PlaceholderVMa(319);
            if (v5 <= 0x3F)
            {
              _s6StylesV6SymbolVMa(319);
              if (v6 <= 0x3F)
              {
                type metadata accessor for StateOfMindTimeline.Styles.Entry(319);
                if (v7 <= 0x3F)
                {
                  _s6StylesV5EmptyVMa(319);
                  if (v8 <= 0x3F)
                  {
                    _s6StylesV5DailyVMa(319);
                    if (v9 <= 0x3F)
                    {
                      _s6StylesV9MomentaryVMa(319);
                      if (v10 <= 0x3F)
                      {
                        _s6StylesV6HeaderVMa(319);
                        if (v11 <= 0x3F)
                        {
                          _s6StylesV11ChartButtonVMa(319);
                          if (v12 <= 0x3F)
                          {
                            _s6StylesV15LogButtonFooterVMa(319);
                            if (v13 <= 0x3F)
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
            }
          }
        }
      }
    }
  }
}

void sub_258A445B8()
{
  sub_258A07454(319);
  if (v0 <= 0x3F)
  {
    sub_258B00AA4();
    if (v1 <= 0x3F)
    {
      sub_258B006A4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_54Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_258A07454(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_258B00AA4();
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 2)
      {
        return v14 - 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t __swift_store_extra_inhabitant_index_55Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_258A07454(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_258B00AA4();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_258A449D4()
{
  sub_258A07454(319);
  if (v0 <= 0x3F)
  {
    sub_258B00AA4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_18Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_258A07454(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_258B00AA4();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t __swift_store_extra_inhabitant_index_19Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_258A07454(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_258B00AA4();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_258A44C74()
{
  v0 = [objc_opt_self() systemGroupedBackgroundColor];

  return sub_258B01F94();
}

id sub_258A44CB8(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  if ([a1 userInterfaceStyle] != 2)
  {
    v9 = a4;
    if (!a4)
    {
      v9 = a5;
    }

    v12 = a4;
    a3 = a5;
    if ([a1 accessibilityContrast] != 1)
    {
      goto LABEL_5;
    }

    return v9;
  }

  v9 = a2;
  if (!a2)
  {
    v9 = a3;
  }

  v10 = a2;
  if ([a1 accessibilityContrast] == 1)
  {
    return v9;
  }

LABEL_5:

  return a3;
}

uint64_t sub_258A44DA8(uint64_t a1, uint64_t a2)
{
  sub_258A07454(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for LabelsSelectionPhaseContent()
{
  result = qword_27F96F2D8;
  if (!qword_27F96F2D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258A44E88()
{
  sub_258A1E3AC(319);
  if (v0 <= 0x3F)
  {
    sub_258A4597C(319, &qword_27F96F2E8, sub_258A1E3AC, MEMORY[0x277CE11F8]);
    if (v1 <= 0x3F)
    {
      sub_2589C0D10();
      if (v2 <= 0x3F)
      {
        sub_258A4597C(319, &qword_27F96D290, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

id sub_258A44FD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  sub_258A458E8();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v73 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v67 - v7;
  v67 = type metadata accessor for AssociationSelectionPhaseSpecs();
  v9 = *(*(v67 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v67);
  v74 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v67 - v12;
  v14 = type metadata accessor for ValenceSelectionSummary();
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A0B920(0);
  v20 = v19 - 8;
  v21 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A0B900(0);
  v69 = v24;
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v71 = &v67 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v68 = &v67 - v29;
  MEMORY[0x28223BE20](v28);
  v70 = &v67 - v30;
  v31 = *a1;
  v32 = *(a1 + 40);
  *&v18[*(v15 + 40)] = swift_getKeyPath();
  v33 = MEMORY[0x277CDF458];
  sub_258A4597C(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  *v18 = v31;
  *(v18 + 1) = MEMORY[0x277D84F90];
  v18[16] = v32;
  v34 = *(v15 + 36);
  *&v18[v34] = swift_getKeyPath();
  sub_258A4597C(0, &qword_27F96D2E0, type metadata accessor for AssociationSelectionPhaseSpecs, v33);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v33) = sub_258B01894();
  v35 = *(type metadata accessor for LabelsSelectionPhaseContent() + 36);
  sub_258AC1B28(v13);
  sub_258A45AAC(v13, type metadata accessor for AssociationSelectionPhaseSpecs);
  sub_258B00654();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  sub_258A0BA00(v18, v23, type metadata accessor for ValenceSelectionSummary);
  v44 = &v23[*(v20 + 44)];
  *v44 = v33;
  v45 = v74;
  *(v44 + 1) = v37;
  *(v44 + 2) = v39;
  *(v44 + 3) = v41;
  *(v44 + 4) = v43;
  v44[40] = 0;
  v46 = sub_258B01884();
  sub_258AC1B28(v45);
  if (v32 == 1)
  {
    goto LABEL_5;
  }

  result = MobileGestalt_get_current_device();
  if (result)
  {
    v48 = result;
    homeButtonType = MobileGestalt_get_homeButtonType();

    if (homeButtonType == 2)
    {
      v50 = v45 + *(v67 + 20);
      sub_258B00A84();
      sub_258A45AAC(v45, type metadata accessor for AssociationSelectionPhaseSpecs);
LABEL_6:
      sub_258B00654();
      v52 = v51;
      v54 = v53;
      v56 = v55;
      v58 = v57;
      v59 = v68;
      sub_258A0BA00(v23, v68, sub_258A0B920);
      v60 = v70;
      v61 = v59 + *(v69 + 36);
      *v61 = v46;
      *(v61 + 8) = v52;
      *(v61 + 16) = v54;
      *(v61 + 24) = v56;
      *(v61 + 32) = v58;
      *(v61 + 40) = 0;
      sub_258A0BA00(v59, v60, sub_258A0B900);
      *v8 = sub_258B011A4();
      *(v8 + 1) = 0;
      v8[16] = 0;
      sub_258A459E0(0, &qword_27F96F318, type metadata accessor for LabelsPicker);
      sub_258A455C4(a1, &v8[*(v62 + 44)]);
      v63 = v71;
      sub_258A45A44(v60, v71, sub_258A0B900);
      v64 = v73;
      sub_258A45A44(v8, v73, sub_258A458E8);
      v65 = v72;
      sub_258A45A44(v63, v72, sub_258A0B900);
      sub_258A45878();
      sub_258A45A44(v64, v65 + *(v66 + 48), sub_258A458E8);
      sub_258A45AAC(v8, sub_258A458E8);
      sub_258A45AAC(v60, sub_258A0B900);
      sub_258A45AAC(v64, sub_258A458E8);
      return sub_258A45AAC(v63, sub_258A0B900);
    }

LABEL_5:
    sub_258A45AAC(v45, type metadata accessor for AssociationSelectionPhaseSpecs);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_258A455C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v20 = a1[2];
  v21 = *(a1 + 3);
  sub_258A4597C(0, &qword_27F96F2E8, sub_258A1E3AC, MEMORY[0x277CE11F8]);
  v6 = v5;
  sub_258B02334();
  v7 = v19[0];
  v8 = v19[1];
  v9 = v19[2];
  v10 = type metadata accessor for LabelsPicker();
  v11 = v10[7];
  *(a2 + v11) = swift_getKeyPath();
  v12 = MEMORY[0x277CDF458];
  sub_258A4597C(0, &qword_27F96D2E0, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v13 = v10[8];
  *(a2 + v13) = swift_getKeyPath();
  sub_258A4597C(0, &qword_27F96C908, MEMORY[0x277CDF3E0], v12);
  swift_storeEnumTagMultiPayload();
  v14 = a2 + v10[10];
  LOBYTE(v19[0]) = 0;
  sub_258B02114();
  v15 = v21;
  *v14 = v20;
  *(v14 + 1) = v15;
  *a2 = v3;
  a2[1] = v4;
  a2[2] = v7;
  a2[3] = v8;
  a2[4] = v9;
  v20 = v7;
  *&v21 = v8;
  *(&v21 + 1) = v9;

  sub_258B003E4();
  sub_258B003E4();
  MEMORY[0x259C92900](v19, v6);
  v16 = sub_258AF1378(v4, v19[0]);

  v18 = (a2 + v10[9]);
  *v18 = v16;
  v18[1] = 0;
  return result;
}

id sub_258A457E4@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_258B01194();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_258A459E0(0, &qword_27F96F2F0, sub_258A45844);
  return sub_258A44FD0(v1, a1 + *(v3 + 44));
}

void sub_258A45878()
{
  if (!qword_27F96F300)
  {
    sub_258A0B900(255);
    sub_258A458E8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F96F300);
    }
  }
}

void sub_258A458E8()
{
  if (!qword_27F96F308)
  {
    type metadata accessor for LabelsPicker();
    sub_258A45BA0(&qword_27F96F310, type metadata accessor for LabelsPicker);
    v0 = sub_258B022D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96F308);
    }
  }
}

void sub_258A4597C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_258A459E0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_258B00974();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_258A45A44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258A45AAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_258A45B0C()
{
  if (!qword_27F96F328)
  {
    sub_258A45844(255);
    sub_258A45BA0(&qword_27F96F330, sub_258A45844);
    v0 = sub_258B022D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96F328);
    }
  }
}

uint64_t sub_258A45BA0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for ReflectiveIntervalSelectionPhase_iOS()
{
  result = qword_27F96F340;
  if (!qword_27F96F340)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258A45C5C()
{
  sub_2589E3D24();
  if (v0 <= 0x3F)
  {
    sub_258A48AF0(319, &qword_27F971C90, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
    if (v1 <= 0x3F)
    {
      sub_2589C0D10();
      if (v2 <= 0x3F)
      {
        sub_258A48A8C(319, &qword_27F96F338, MEMORY[0x277CC99E8], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_258A48A8C(319, &qword_27F96EB00, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs, MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            sub_258A48A8C(319, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
            if (v5 <= 0x3F)
            {
              sub_258A48A8C(319, &qword_27F96F350, type metadata accessor for __HKStateOfMindReflectiveInterval, MEMORY[0x277CE10B8]);
              if (v6 <= 0x3F)
              {
                sub_258A48A8C(319, &qword_27F96E968, MEMORY[0x277CC9578], MEMORY[0x277CE10B8]);
                if (v7 <= 0x3F)
                {
                  sub_258A48AF0(319, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
                  if (v8 <= 0x3F)
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
  }
}

uint64_t sub_258A45EE0@<X0>(uint64_t a1@<X0>, void (*a2)(unint64_t)@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v46 = a2;
  v7 = sub_258B006A4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A83F18(21, a4);
  sub_258A48AF0(0, &qword_27F96F388, MEMORY[0x277CE1318], MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_258B302A0;
  v13 = *(v8 + 16);
  v13(v11, a1, v7);
  *(inited + 32) = sub_258A9BA58(1, v11);
  v13(v11, a1, v7);
  *(inited + 40) = sub_258A9BA58(2, v11);
  v13(v11, a1, v7);
  *(inited + 48) = sub_258A9BA58(3, v11);
  v13(v11, a1, v7);
  *(inited + 56) = sub_258A9BA58(4, v11);
  v13(v11, a1, v7);
  *(inited + 64) = sub_258A9BA58(5, v11);
  v13(v11, a1, v7);
  *(inited + 72) = sub_258A9BA58(6, v11);
  v13(v11, a1, v7);
  *(inited + 80) = sub_258A9BA58(7, v11);
  v60 = MEMORY[0x277D84F90];
  sub_258AA91CC(0, 7, 0);
  v14 = v60;
  v16 = *(v60 + 16);
  v15 = *(v60 + 24);
  v17 = v15 >> 1;
  v18 = v16 + 1;
  if (v15 >> 1 <= v16)
  {
    sub_258AA91CC((v15 > 1), v16 + 1, 1);
    v14 = v60;
    v15 = *(v60 + 24);
    v17 = v15 >> 1;
  }

  *(v14 + 16) = v18;
  *(v14 + 8 * v16 + 32) = 0;
  if (v17 < (v16 + 2))
  {
    sub_258AA91CC((v15 > 1), v16 + 2, 1);
    v14 = v60;
  }

  *(v14 + 16) = v16 + 2;
  *(v14 + 8 * v18 + 32) = 0x3FC5604189374BC6;
  v20 = *(v14 + 16);
  v19 = *(v14 + 24);
  v21 = v20 + 1;
  if (v20 >= v19 >> 1)
  {
    sub_258AA91CC((v19 > 1), v20 + 1, 1);
  }

  v22 = v60;
  *(v60 + 16) = v21;
  *(v22 + 8 * v20 + 32) = 0x3FD55810624DD2F2;
  v23 = *(v22 + 24);
  if ((v20 + 2) > (v23 >> 1))
  {
    sub_258AA91CC((v23 > 1), v20 + 2, 1);
    v22 = v60;
  }

  *(v22 + 16) = v20 + 2;
  *(v22 + 8 * v21 + 32) = 0x3FE0000000000000;
  v25 = *(v22 + 16);
  v24 = *(v22 + 24);
  v26 = v24 >> 1;
  v27 = v25 + 1;
  if (v24 >> 1 <= v25)
  {
    sub_258AA91CC((v24 > 1), v25 + 1, 1);
    v22 = v60;
    v24 = *(v60 + 24);
    v26 = v24 >> 1;
  }

  *(v22 + 16) = v27;
  *(v22 + 8 * v25 + 32) = 0x3FE553F7CED91687;
  if (v26 < (v25 + 2))
  {
    sub_258AA91CC((v24 > 1), v25 + 2, 1);
  }

  v28 = v60;
  *(v60 + 16) = v25 + 2;
  *(v28 + 8 * v27 + 32) = 0x3FEAA7EF9DB22D0ELL;
  v30 = *(v28 + 16);
  v29 = *(v28 + 24);
  if (v30 >= v29 >> 1)
  {
    sub_258AA91CC((v29 > 1), v30 + 1, 1);
    v28 = v60;
  }

  *(v28 + 16) = v30 + 1;
  *(v28 + 8 * v30 + 32) = 0x3FF0000000000000;
  v31 = sub_258A9BE00(inited, v28);

  swift_setDeallocating();
  swift_arrayDestroy();
  v46(v31);

  sub_258B025C4();
  sub_258B025D4();
  sub_258B009F4();
  v32 = sub_258B024F4();
  v34 = v33;
  v35 = sub_258B00B44();
  v36 = sub_258B01874();
  v37 = v61;
  v39 = v62;
  v38 = v63;
  v49 = v61;
  v50 = v62;
  *&v51 = v63;
  *(&v51 + 1) = v35;
  LOBYTE(v52) = v36;
  *(&v52 + 1) = v32;
  v53 = v34;
  sub_258A48B40(v47, a3, sub_258A483B8);
  sub_258A48BA8();
  v41 = a3 + *(v40 + 36);
  v42 = v52;
  *(v41 + 32) = v51;
  *(v41 + 48) = v42;
  *(v41 + 64) = v53;
  v43 = v50;
  *v41 = v49;
  *(v41 + 16) = v43;
  v54[0] = v37;
  v54[1] = v39;
  v55 = v38;
  v56 = v35;
  v57 = v36;
  v58 = v32;
  v59 = v34;
  sub_258A48B40(&v49, &v48, sub_258A005F0);
  return sub_258A48C64(v54, sub_258A005F0);
}

uint64_t sub_258A464C4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v64 = a1;
  v65 = sub_258B006A4();
  v63 = *(v65 - 8);
  v3 = *(v63 + 64);
  MEMORY[0x28223BE20](v65);
  v62 = v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v61 = v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for ReflectiveIntervalSelectionPhase_iOS();
  v8 = *(v66 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v66);
  v10 = v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A4826C();
  v12 = v11;
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v15 = (v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_258A483E0(0, &qword_27F96F368, sub_258A4826C);
  v56 = v16;
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = v54 - v18;
  sub_258A48300();
  v57 = v20;
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v58 = v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A483B8(0);
  v59 = v23;
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v60 = v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = 0uLL;
  v27 = 0uLL;
  v28 = 0uLL;
  v29 = 0uLL;
  v30 = 0uLL;
  if (*(v1 + 33) == 1)
  {
    sub_258A46B78(v70);
    v26 = v70[0];
    v27 = v70[1];
    v28 = v70[2];
    v29 = v70[3];
    v30 = v70[4];
  }

  *v15 = v26;
  v15[1] = v27;
  v15[2] = v28;
  v15[3] = v29;
  v15[4] = v30;
  sub_258A46D9C(v15 + *(v12 + 36));
  v31 = *(v12 + 40);
  *(v15->n128_u64 + v31) = swift_getKeyPath();
  sub_258A48A8C(0, &qword_27F96D2E0, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  sub_258A48B40(v2, v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ReflectiveIntervalSelectionPhase_iOS);
  v32 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v54[1] = *(v8 + 80);
  v33 = swift_allocObject();
  v55 = type metadata accessor for ReflectiveIntervalSelectionPhase_iOS;
  sub_258A4845C(v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v33 + v32, type metadata accessor for ReflectiveIntervalSelectionPhase_iOS);
  v67 = 0;
  sub_258B02114();
  v34 = v68;
  v54[2] = v9;
  v35 = v69;
  sub_258A4845C(v15, v19, sub_258A4826C);
  v36 = &v19[*(v56 + 36)];
  *v36 = sub_258A48444;
  *(v36 + 1) = v33;
  v36[16] = v34;
  *(v36 + 3) = v35;
  v37 = v66;
  v38 = v2 + *(v66 + 36);
  v39 = v61;
  sub_258AC1BC4(v61);
  sub_258A48C64(v39, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs);
  v40 = sub_258B02544();
  v41 = v2 + *(v37 + 52);
  v42 = *v41;
  v43 = *(v41 + 8);
  v68 = v42;
  v69 = v43;
  sub_258A48AF0(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  sub_258B02124();
  LOBYTE(v39) = v67;
  v44 = v58;
  sub_258A484C4(v19, v58);
  v45 = v44 + *(v57 + 36);
  *v45 = v40;
  *(v45 + 8) = v39;
  sub_258A48B40(v2, v10, type metadata accessor for ReflectiveIntervalSelectionPhase_iOS);
  v46 = swift_allocObject();
  v47 = v55;
  sub_258A4845C(v10, v46 + v32, v55);
  v48 = v60;
  sub_258A4845C(v44, v60, sub_258A48300);
  v49 = (v48 + *(v59 + 36));
  *v49 = sub_258A4891C;
  v49[1] = v46;
  v49[2] = 0;
  v49[3] = 0;
  v50 = v2 + *(v66 + 40);
  v51 = v62;
  sub_258AC14E8(v62);
  sub_258A48B40(v2, v10, type metadata accessor for ReflectiveIntervalSelectionPhase_iOS);
  v52 = swift_allocObject();
  sub_258A4845C(v10, v52 + v32, v47);
  sub_258A45EE0(v51, sub_258A489A8, v64, 0.0);
  (*(v63 + 8))(v51, v65);
  sub_258A48C64(v48, sub_258A483B8);
}

__n128 sub_258A46B78@<Q0>(__n128 *a1@<X8>)
{
  v3 = type metadata accessor for ReflectiveIntervalSelectionPhase_iOS();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v6 = sub_258AFFD94();
  v8 = v7;
  sub_258A48B40(v1, v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ReflectiveIntervalSelectionPhase_iOS);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  sub_258A4845C(v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for ReflectiveIntervalSelectionPhase_iOS);
  v14[1] = 0;
  v15 = 0;
  sub_258A48AF0(0, &qword_27F96D9F0, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
  sub_258B02354();
  result = v16;
  v12 = v17;
  v13 = v18;
  a1->n128_u64[0] = v6;
  a1->n128_u64[1] = v8;
  a1[1] = result;
  a1[2].n128_u64[0] = v12;
  a1[2].n128_u8[8] = v13;
  a1[3].n128_u64[0] = 0x747475427478654ELL;
  a1[3].n128_u64[1] = 0xEA00000000006E6FLL;
  a1[4].n128_u64[0] = sub_258A48A0C;
  a1[4].n128_u64[1] = v10;
  return result;
}

double sub_258A46D9C@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ReflectiveIntervalSelectionPhase_iOS();
  v5 = (v4 - 8);
  v24 = *(v4 - 8);
  v6 = *(v24 + 64);
  MEMORY[0x28223BE20](v4);
  v29 = *(v1 + v5[13]);
  v7 = MEMORY[0x277CE10B8];
  sub_258A48A8C(0, &qword_27F96F350, type metadata accessor for __HKStateOfMindReflectiveInterval, MEMORY[0x277CE10B8]);
  sub_258B02144();
  *v26 = v27;
  v25 = v28;
  v8 = v5[14];
  v9 = type metadata accessor for ReflectiveIntervalsSelectionPhaseContent();
  v10 = v9[5];
  sub_258A48A8C(0, &qword_27F96E968, MEMORY[0x277CC9578], v7);
  sub_258B02144();
  v11 = v2 + v5[15];
  v12 = *v11;
  v13 = *(v11 + 8);
  LOBYTE(v29) = v12;
  *(&v29 + 1) = v13;
  sub_258A48AF0(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  sub_258B02144();
  v14 = v27;
  v23 = v28;
  v15 = *(v2 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  v16 = v27;
  sub_258A48B40(v2, &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for ReflectiveIntervalSelectionPhase_iOS);
  v17 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v18 = swift_allocObject();
  sub_258A4845C(&v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v18 + v17, type metadata accessor for ReflectiveIntervalSelectionPhase_iOS);
  *(a1 + v9[9]) = swift_getKeyPath();
  sub_258A48A8C(0, &qword_27F96D7C8, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs, MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  result = v26[0];
  *a1 = *v26;
  *(a1 + 16) = v25;
  v20 = a1 + v9[6];
  *v20 = v14;
  *(v20 + 16) = v23;
  *(a1 + v9[7]) = v16;
  v21 = (a1 + v9[8]);
  *v21 = sub_258A49040;
  v21[1] = v18;
  return result;
}

uint64_t sub_258A470C4(uint64_t a1)
{
  v2 = sub_258B00084();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v16 - v8;
  v10 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  v11 = v17;
  v12 = type metadata accessor for ReflectiveIntervalSelectionPhase_iOS();
  v17 = *(a1 + *(v12 + 44));
  v16[1] = v11;
  v13 = MEMORY[0x277CE10B8];
  sub_258A48A8C(0, &qword_27F96F350, type metadata accessor for __HKStateOfMindReflectiveInterval, MEMORY[0x277CE10B8]);
  sub_258B02134();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  v14 = *(v12 + 48);
  (*(v3 + 16))(v7, v9, v2);
  sub_258A48A8C(0, &qword_27F96E968, MEMORY[0x277CC9578], v13);
  sub_258B02134();
  return (*(v3 + 8))(v9, v2);
}

uint64_t sub_258A47310(uint64_t a1)
{
  v2 = (a1 + *(type metadata accessor for ReflectiveIntervalSelectionPhase_iOS() + 52));
  v5 = *v2;
  v7 = *(v2 + 1);
  v3 = MEMORY[0x277D839B0];
  sub_258A48AF0(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  sub_258B02134();
  v6 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  sub_258A48AF0(0, &qword_27F971C90, v3, MEMORY[0x277CE11F8]);
  return sub_258B02314();
}

uint64_t sub_258A473F4(void *a1)
{
  v3 = sub_258B006A4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v32 - v9;
  v11 = v1 + *(type metadata accessor for ReflectiveIntervalSelectionPhase_iOS() + 40);
  sub_258AC14E8(v10);
  (*(v4 + 104))(v8, *MEMORY[0x277CDF3C0], v3);
  LOBYTE(v11) = sub_258B00694();
  v12 = *(v4 + 8);
  v12(v8, v3);
  v12(v10, v3);
  if (v11)
  {
    v13 = a1[2];
    if (v13)
    {
      v33 = MEMORY[0x277D84F90];
      sub_258AA92CC(0, v13, 0);
      v14 = v33;
      v15 = a1[5];
      v16 = a1[4];

      sub_258B02024();
      v17 = sub_258B02464();
      v19 = v18;

      v21 = *(v14 + 16);
      v20 = *(v14 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_258AA92CC((v20 > 1), v21 + 1, 1);
        v14 = v33;
      }

      *(v14 + 16) = v21 + 1;
      v22 = v14 + 16 * v21;
      *(v22 + 32) = v17;
      *(v22 + 40) = v19;
      v23 = v13 - 1;
      if (v13 != 1)
      {
        v25 = 16 * v21;
        v26 = v21 + 2;
        v27 = a1 + 7;
        do
        {
          v28 = *(v27 - 1);
          v29 = *v27;
          v30 = *(v14 + 24);
          v33 = v14;

          if (v26 - 1 >= v30 >> 1)
          {
            sub_258AA92CC((v30 > 1), v26, 1);
            v14 = v33;
          }

          *(v14 + 16) = v26;
          v31 = v14 + v25;
          *(v31 + 48) = v28;
          *(v31 + 56) = v29;
          v25 += 16;
          ++v26;
          v27 += 2;
          --v23;
        }

        while (v23);
      }
    }

    return sub_258B02474();
  }

  else
  {
    sub_258B003E4();
  }

  return a1;
}

void *sub_258A4768C()
{
  v1 = v0;
  v2 = sub_258B02624();
  v93 = *(v2 - 8);
  v94 = v2;
  v3 = *(v93 + 64);
  MEMORY[0x28223BE20](v2);
  v91 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_258B02654();
  v90 = *(v92 - 8);
  v5 = *(v90 + 64);
  MEMORY[0x28223BE20](v92);
  v89 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ReflectiveIntervalSelectionPhase_iOS();
  v83 = *(v7 - 8);
  v8 = *(v83 + 64);
  MEMORY[0x28223BE20](v7);
  v84 = v9;
  v85 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v80 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_258B02614();
  v82 = *(v13 - 8);
  v14 = *(v82 + 64);
  MEMORY[0x28223BE20](v13);
  v81 = (&v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_258B02674();
  v87 = *(v16 - 8);
  v88 = v16;
  v17 = *(v87 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v79 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v86 = &v71 - v20;
  v74 = sub_258B00224();
  v73 = *(v74 - 8);
  v21 = *(v73 + 64);
  MEMORY[0x28223BE20](v74);
  v72 = &v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_258B00084();
  v77 = *(v78 - 8);
  v23 = *(v77 + 64);
  v24 = MEMORY[0x28223BE20](v78);
  v26 = &v71 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24);
  v75 = &v71 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v71 - v30;
  MEMORY[0x28223BE20](v29);
  v76 = &v71 - v32;
  v33 = *(v0 + 16);
  v34 = *(v0 + 24);
  v35 = *(v0 + 32);
  aBlock = v33;
  v96 = v34;
  LOBYTE(v97) = v35;
  sub_258A48AF0(0, &qword_27F971C90, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
  result = MEMORY[0x259C92900](&v101);
  if ((v101 & 1) == 0)
  {
    v71 = v13;
    aBlock = v33;
    v96 = v34;
    LOBYTE(v97) = v35;
    LOBYTE(v101) = 1;
    sub_258B02314();
    v37 = v7;
    v38 = *(v7 + 44);
    v39 = *(v0 + 8);
    v40 = (v0 + v38);
    v42 = v40[1];
    aBlock = *v40;
    v41 = aBlock;
    v96 = v42;
    sub_258A48A8C(0, &qword_27F96F350, type metadata accessor for __HKStateOfMindReflectiveInterval, MEMORY[0x277CE10B8]);

    sub_258B02124();
    v43 = v101;
    swift_getKeyPath();
    swift_getKeyPath();
    aBlock = v43;
    sub_258B00574();
    aBlock = v41;
    v96 = v42;
    sub_258B02124();
    if (v101 == 2)
    {
      v44 = v37;
      v50 = *(v37 + 32);

      v51 = v72;
      sub_258AC1BF8(v72);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_258B00564();

      if (sub_258B00124())
      {
        (*(v73 + 8))(v51, v74);
        v48 = v77;
        v47 = v75;
        v49 = v78;
        (*(v77 + 32))(v75, v26, v78);
      }

      else
      {
        v47 = v75;
        sub_258AB2424(v26, v75);
        v48 = v77;
        v49 = v78;
        (*(v77 + 8))(v26, v78);
        (*(v73 + 8))(v51, v74);
      }

      v45 = v71;
      swift_getKeyPath();
      swift_getKeyPath();
      (*(v48 + 16))(v76, v47, v49);
    }

    else
    {
      v44 = v37;
      v45 = v71;
      if (v101 != 1)
      {
LABEL_10:
        sub_2589F4488(0, &qword_27F96F380, 0x277D75780);
        [swift_getObjCClassFromMetadata() setAnimationsEnabled_];
        v52 = v1 + *(v44 + 52);
        v53 = *v52;
        v54 = *(v52 + 8);
        LOBYTE(aBlock) = v53;
        v96 = v54;
        LOBYTE(v101) = 0;
        sub_258A48AF0(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
        sub_258B02134();
        sub_2589F4488(0, &qword_280DF8F98, 0x277D85C78);
        v78 = sub_258B02F54();
        v55 = v79;
        sub_258B02664();
        v56 = v1 + *(v44 + 36);
        v57 = v80;
        sub_258AC1BC4(v80);
        sub_258A48C64(v57, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs);
        v59 = v81;
        v58 = v82;
        *v81 = 400;
        (*(v58 + 104))(v59, *MEMORY[0x277D85178], v45);
        v60 = v86;
        MEMORY[0x259C92C80](v55, v59);
        (*(v58 + 8))(v59, v45);
        v61 = v88;
        v62 = *(v87 + 8);
        v62(v55, v88);
        v63 = v85;
        sub_258A48B40(v1, v85, type metadata accessor for ReflectiveIntervalSelectionPhase_iOS);
        v64 = (*(v83 + 80) + 16) & ~*(v83 + 80);
        v65 = swift_allocObject();
        sub_258A4845C(v63, v65 + v64, type metadata accessor for ReflectiveIntervalSelectionPhase_iOS);
        v99 = sub_258A48A10;
        v100 = v65;
        aBlock = MEMORY[0x277D85DD0];
        v96 = 1107296256;
        v97 = sub_2589E92FC;
        v98 = &block_descriptor_7;
        v66 = _Block_copy(&aBlock);

        v67 = v89;
        sub_258B02644();
        aBlock = MEMORY[0x277D84F90];
        sub_258A48FF8(&unk_27F96EBD0, MEMORY[0x277D85198]);
        sub_258A48A8C(0, &qword_27F96D780, MEMORY[0x277D85198], MEMORY[0x277D83940]);
        sub_258A31190();
        v68 = v91;
        v69 = v94;
        sub_258B03114();
        v70 = v78;
        MEMORY[0x259C93530](v60, v67, v68, v66);
        _Block_release(v66);

        (*(v93 + 8))(v68, v69);
        (*(v90 + 8))(v67, v92);
        return (v62)(v60, v61);
      }

      v46 = *(v37 + 48);
      sub_258A48A8C(0, &qword_27F96E968, MEMORY[0x277CC9578], MEMORY[0x277CE10B8]);

      v47 = v76;
      sub_258B02124();
      swift_getKeyPath();
      swift_getKeyPath();
      v48 = v77;
      v49 = v78;
      (*(v77 + 16))(v31, v47, v78);
    }

    sub_258B00574();
    (*(v48 + 8))(v47, v49);
    goto LABEL_10;
  }

  return result;
}

void sub_258A4826C()
{
  if (!qword_27F96F358)
  {
    type metadata accessor for ReflectiveIntervalsSelectionPhaseContent();
    sub_258A48FF8(&qword_27F96F360, type metadata accessor for ReflectiveIntervalsSelectionPhaseContent);
    v0 = type metadata accessor for StateOfMindEntryPhase_iOS();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96F358);
    }
  }
}

void sub_258A48300()
{
  if (!qword_27F96F370)
  {
    sub_258A483E0(255, &qword_27F96F368, sub_258A4826C);
    sub_258A48C10(255, &qword_27F96CD00, MEMORY[0x277D839B0], MEMORY[0x277D839C8], MEMORY[0x277CE0190]);
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96F370);
    }
  }
}

void sub_258A483E0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_258B00B04();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}