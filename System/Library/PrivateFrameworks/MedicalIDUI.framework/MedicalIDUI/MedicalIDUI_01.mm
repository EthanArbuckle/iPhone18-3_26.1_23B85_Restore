uint64_t sub_2587A574C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MedicalIDMedicalInfoViewModel();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2587A5808(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MedicalIDMedicalInfoViewModel();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2587A58C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MedicalIDBiometricsViewModel();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2587A5980(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MedicalIDBiometricsViewModel();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2587A5A94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MedicalIDBiometricsViewModel();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    sub_2588B7328(0, &qword_27F95E8B8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    v12 = v11;
    v13 = *(*(v11 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_2587A5BE8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MedicalIDBiometricsViewModel();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    sub_2588B7328(0, &qword_27F95E8B8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    v12 = v11;
    v13 = *(*(v11 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }

  return result;
}

uint64_t sub_2587A5D40(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for MedicalIDData();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_2588BBB48();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_2588BBAC8();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[8]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_2587A5E94(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for MedicalIDData();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_2588BBB48();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = sub_2588BBAC8();
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[8]) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_2587A6038(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_2587A6C68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t (*sub_2587A6EA0())(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_2587AA634();
  sub_2588BC5A8();
  if (!v2)
  {
    return 0;
  }

  v0 = swift_allocObject();
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  return sub_2587AA688;
}

uint64_t sub_2587A6F28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a1 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  (*(v6 + 16))(v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v8, a1);
  v9 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  (*(v6 + 32))(v10 + v9, v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_2587AA6D0(255);
  sub_2588BC1E8();
  v11 = sub_2587AA928(&qword_27F95D620, sub_2587AA6D0);
  v14[0] = a2;
  v14[1] = v11;
  swift_getWitnessTable();
  result = sub_2588BC2B8();
  *a3 = result;
  a3[1] = v13;
  return result;
}

uint64_t sub_2587A70E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v25[1] = a2;
  v26 = a4;
  v25[0] = a3;
  v27 = a5;
  v6 = sub_2588BC248();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587AA6D0(255);
  v10 = sub_2588BC1E8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v25 - v16;
  swift_getKeyPath();
  (*(v7 + 16))(v9, a1, v6);
  v18 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v19 = swift_allocObject();
  (*(v7 + 32))(v19 + v18, v9, v6);
  v30 = sub_2587AA84C;
  v31 = v19;
  v20 = v26;
  sub_2588BCE68();

  v21 = sub_2587AA928(&qword_27F95D620, sub_2587AA6D0);
  v28 = v20;
  v29 = v21;
  WitnessTable = swift_getWitnessTable();
  sub_2587DCF7C(v15, v10, WitnessTable);
  v23 = *(v11 + 8);
  v23(v15, v10);
  sub_2587DCF7C(v17, v10, WitnessTable);
  return (v23)(v17, v10);
}

uint64_t sub_2587A73B8(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = *(a2 + 16);
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  return sub_2588BC238();
}

unint64_t sub_2587A7414()
{
  result = qword_27F95D198;
  if (!qword_27F95D198)
  {
    sub_2588BC198();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95D198);
  }

  return result;
}

void sub_2587A74F0()
{
  if (!qword_27F95D1B8)
  {
    sub_2587A8454(255, &qword_27F95D1C0, sub_2587A7578);
    sub_2587A8D34();
    v0 = sub_2588BBED8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95D1B8);
    }
  }
}

void sub_2587A7578()
{
  if (!qword_27F95D1C8)
  {
    sub_2587A76AC();
    sub_2587A9BE0(255, &qword_27F95D328, sub_2587A84B8, sub_2587A8540, MEMORY[0x277CE0338]);
    sub_2587AA928(&qword_27F95D3C8, sub_2587A76AC);
    sub_2587A8A1C();
    sub_2587A8A70();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95D1C8);
    }
  }
}

void sub_2587A76AC()
{
  if (!qword_27F95D1D0)
  {
    sub_2587A7740(255);
    sub_2587AA928(&qword_27F95D320, sub_2587A7740);
    v0 = sub_2588BBEB8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95D1D0);
    }
  }
}

void sub_2587A7774()
{
  if (!qword_27F95D1E0)
  {
    sub_2587A7820();
    sub_2587A7D6C();
    sub_2587A8454(255, &qword_27F95D280, sub_2587A7E24);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F95D1E0);
    }
  }
}

void sub_2587A7820()
{
  if (!qword_27F95D1E8)
  {
    sub_2587A9BE0(255, &qword_27F95D1F0, sub_2587A78BC, sub_2587A79DC, MEMORY[0x277CDFAB8]);
    v0 = sub_2588BDCE8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95D1E8);
    }
  }
}

void sub_2587A792C()
{
  if (!qword_27F95D208)
  {
    sub_2587A7988();
    v0 = sub_2588BC8E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95D208);
    }
  }
}

unint64_t sub_2587A7988()
{
  result = qword_27F95D210;
  if (!qword_27F95D210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95D210);
  }

  return result;
}

void sub_2587A79DC()
{
  if (!qword_27F95D218)
  {
    sub_2587A8454(255, &qword_27F95D220, sub_2587A7A64);
    sub_2587A7C18();
    v0 = sub_2588BC758();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95D218);
    }
  }
}

void sub_2587A7A8C()
{
  if (!qword_27F95D230)
  {
    sub_2587A8384(255, &qword_27F95D238, MEMORY[0x277CE0F78], MEMORY[0x277CE0F60], MEMORY[0x277CE0308]);
    sub_2587A7B40();
    sub_2587A7B94();
    v0 = sub_2588BBEF8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95D230);
    }
  }
}

unint64_t sub_2587A7B40()
{
  result = qword_27F95D240;
  if (!qword_27F95D240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95D240);
  }

  return result;
}

unint64_t sub_2587A7B94()
{
  result = qword_27F95D248;
  if (!qword_27F95D248)
  {
    sub_2587A8384(255, &qword_27F95D238, MEMORY[0x277CE0F78], MEMORY[0x277CE0F60], MEMORY[0x277CE0308]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95D248);
  }

  return result;
}

unint64_t sub_2587A7C18()
{
  result = qword_27F95D250;
  if (!qword_27F95D250)
  {
    sub_2587A8454(255, &qword_27F95D220, sub_2587A7A64);
    sub_2587A7CBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95D250);
  }

  return result;
}

unint64_t sub_2587A7CBC()
{
  result = qword_27F95D258;
  if (!qword_27F95D258)
  {
    sub_2587A7A64(255);
    sub_2587AA928(&qword_27F95D260, sub_2587A7A8C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95D258);
  }

  return result;
}

void sub_2587A7D6C()
{
  if (!qword_27F95D268)
  {
    sub_2587A8384(255, &qword_27F95D270, MEMORY[0x277CE0F78], MEMORY[0x277CDF688], MEMORY[0x277CDFAB8]);
    sub_2587A8454(255, &qword_27F95D278, MEMORY[0x277CDF088]);
    v0 = sub_2588BC788();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95D268);
    }
  }
}

void sub_2587A7E24()
{
  if (!qword_27F95D288)
  {
    sub_2587A804C(255, &qword_27F95D290, &qword_27F95D298, sub_2587A7EB4, sub_2587A81B0);
    v0 = sub_2588BD238();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95D288);
    }
  }
}

void sub_2587A7EB4()
{
  if (!qword_27F95D2A0)
  {
    sub_2587A7FB4(255);
    sub_2587A804C(255, &qword_27F95D2B0, &qword_27F95D2B8, sub_2587A80A8, MEMORY[0x277CDF088]);
    sub_2587AA928(&qword_27F95D2D0, sub_2587A7FB4);
    sub_2587A815C();
    v0 = sub_2588BD4D8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95D2A0);
    }
  }
}

void sub_2587A7FE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2587A804C(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_2587A8240(255, a3, a4, a5);
    v6 = sub_2588BD658();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2587A80A8()
{
  if (!qword_27F95D2C0)
  {
    _s15SectionGridItemVMa();
    sub_2587AA928(&qword_27F95D2C8, _s15SectionGridItemVMa);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95D2C0);
    }
  }
}

unint64_t sub_2587A815C()
{
  result = qword_27F95D2D8;
  if (!qword_27F95D2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95D2D8);
  }

  return result;
}

void sub_2587A81B0()
{
  if (!qword_27F95D2E0)
  {
    sub_2587A804C(255, &qword_27F95D2E8, &qword_27F95D2F0, sub_2587A82BC, sub_2587A83D8);
    v0 = sub_2588BDCE8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95D2E0);
    }
  }
}

void sub_2587A8240(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_2587A82F0()
{
  if (!qword_27F95D300)
  {
    sub_2587A8384(255, &qword_27F95D308, MEMORY[0x277CE0BD8], MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
    sub_2588BCA98();
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95D300);
    }
  }
}

void sub_2587A8384(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void sub_2587A83D8()
{
  if (!qword_27F95D310)
  {
    sub_2587A8454(255, &qword_27F95D318, type metadata accessor for MedicalIDDeleteView);
    v0 = sub_2588BDCE8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95D310);
    }
  }
}

void sub_2587A8454(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2588BC1E8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2587A84B8()
{
  if (!qword_27F95D330)
  {
    sub_2587A8540();
    sub_2587A89AC(255, &qword_27F95D3B0, &qword_27F95D3B8, &qword_27F95D3C0, off_2798A65E8);
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95D330);
    }
  }
}

void sub_2587A8540()
{
  if (!qword_27F95D338)
  {
    sub_2587A8614();
    type metadata accessor for MedicalIDDataManager();
    sub_2587A878C();
    sub_2587AA928(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95D338);
    }
  }
}

void sub_2587A8614()
{
  if (!qword_27F95D340)
  {
    sub_2587A869C();
    sub_2587A89AC(255, &qword_27F95D368, &qword_27F95D370, &qword_27F95D378, 0x277CCD7D0);
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95D340);
    }
  }
}

void sub_2587A869C()
{
  if (!qword_27F95D348)
  {
    _s12SheetContentVMa();
    sub_2587A89AC(255, &qword_27F95D350, &qword_27F95D358, &qword_27F95D360, 0x277CCD4D8);
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95D348);
    }
  }
}

void sub_2587A8724(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_25878E130(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_2587A878C()
{
  result = qword_27F95D380;
  if (!qword_27F95D380)
  {
    sub_2587A8614();
    sub_2587A880C();
    sub_2587A8934();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95D380);
  }

  return result;
}

unint64_t sub_2587A880C()
{
  result = qword_27F95D388;
  if (!qword_27F95D388)
  {
    sub_2587A869C();
    sub_2587AA928(&qword_27F95D390, _s12SheetContentVMa);
    sub_2587A88BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95D388);
  }

  return result;
}

unint64_t sub_2587A88BC()
{
  result = qword_27F95D398;
  if (!qword_27F95D398)
  {
    sub_2587A89AC(255, &qword_27F95D350, &qword_27F95D358, &qword_27F95D360, 0x277CCD4D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95D398);
  }

  return result;
}

unint64_t sub_2587A8934()
{
  result = qword_27F95D3A0;
  if (!qword_27F95D3A0)
  {
    sub_2587A89AC(255, &qword_27F95D368, &qword_27F95D370, &qword_27F95D378, 0x277CCD7D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95D3A0);
  }

  return result;
}

void sub_2587A89AC(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t *a5)
{
  if (!*a2)
  {
    sub_2587A8724(255, a3, a4, a5, MEMORY[0x277D83D88]);
    v6 = sub_2588BCA88();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_2587A8A1C()
{
  result = qword_27F95D3D0;
  if (!qword_27F95D3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95D3D0);
  }

  return result;
}

unint64_t sub_2587A8A70()
{
  result = qword_27F95D3D8;
  if (!qword_27F95D3D8)
  {
    sub_2587A9BE0(255, &qword_27F95D328, sub_2587A84B8, sub_2587A8540, MEMORY[0x277CE0338]);
    sub_2587A8BBC();
    sub_2587A8614();
    type metadata accessor for MedicalIDDataManager();
    sub_2587A878C();
    sub_2587AA928(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95D3D8);
  }

  return result;
}

unint64_t sub_2587A8BBC()
{
  result = qword_27F95D3E0;
  if (!qword_27F95D3E0)
  {
    sub_2587A84B8();
    sub_2587A8614();
    type metadata accessor for MedicalIDDataManager();
    sub_2587A878C();
    sub_2587AA928(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager);
    swift_getOpaqueTypeConformance2();
    sub_2587A8CBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95D3E0);
  }

  return result;
}

unint64_t sub_2587A8CBC()
{
  result = qword_27F95D3E8;
  if (!qword_27F95D3E8)
  {
    sub_2587A89AC(255, &qword_27F95D3B0, &qword_27F95D3B8, &qword_27F95D3C0, off_2798A65E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95D3E8);
  }

  return result;
}

unint64_t sub_2587A8D34()
{
  result = qword_27F95D3F0;
  if (!qword_27F95D3F0)
  {
    sub_2587A8454(255, &qword_27F95D1C0, sub_2587A7578);
    sub_2587A76AC();
    sub_2587A9BE0(255, &qword_27F95D328, sub_2587A84B8, sub_2587A8540, MEMORY[0x277CE0338]);
    sub_2587AA928(&qword_27F95D3C8, sub_2587A76AC);
    sub_2587A8A1C();
    sub_2587A8A70();
    swift_getOpaqueTypeConformance2();
    sub_2587A8EB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95D3F0);
  }

  return result;
}

unint64_t sub_2587A8EB8()
{
  result = qword_27F95D3F8;
  if (!qword_27F95D3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95D3F8);
  }

  return result;
}

uint64_t sub_2587A8F0C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = a5;
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2588BC928();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v19 - v16;
  (*(v9 + 16))(v12, a1, a4);
  (*(v9 + 32))(v17, v12, a4);
  v17[*(v13 + 36)] = a2;
  MEMORY[0x259C8C270](v17, a3, v13, v19);
  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_2587A90C4(uint64_t a1, id *a2)
{
  result = sub_2588BD888();
  *a2 = 0;
  return result;
}

uint64_t sub_2587A913C(uint64_t a1, id *a2)
{
  v3 = sub_2588BD898();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2587A91BC@<X0>(uint64_t *a1@<X8>)
{
  sub_2588BD8A8();
  v2 = sub_2588BD868();

  *a1 = v2;
  return result;
}

uint64_t sub_2587A921C(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x259C8AD70](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_2587A9270(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 1;
  v3 = MEMORY[0x259C8AD80](a1, &v7);
  v4 = v7;
  v5 = v8;
  if (v8)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return v3 & 1;
}

uint64_t sub_2587A92F0()
{
  v1 = *v0;
  sub_2588BE038();
  MEMORY[0x259C8D1C0](v1);
  return sub_2588BE078();
}

uint64_t sub_2587A9364()
{
  v1 = *v0;
  sub_2588BE038();
  MEMORY[0x259C8D1C0](v1);
  return sub_2588BE078();
}

uint64_t sub_2587A93A8()
{
  sub_2587AA928(&qword_27F95D558, type metadata accessor for AVMediaType);
  sub_2587AA928(&unk_27F95D560, type metadata accessor for AVMediaType);

  return sub_2588BDF48();
}

uint64_t sub_2587A9464()
{
  sub_2587AA928(&qword_27F95D660, type metadata accessor for InfoKey);
  sub_2587AA928(&qword_27F95D668, type metadata accessor for InfoKey);

  return sub_2588BDF48();
}

uint64_t sub_2587A9520()
{
  sub_2587AA928(&qword_27F95D650, type metadata accessor for AttributeName);
  sub_2587AA928(&qword_27F95D658, type metadata accessor for AttributeName);

  return sub_2588BDF48();
}

uint64_t sub_2587A95DC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2588BD868();

  *a2 = v5;
  return result;
}

uint64_t sub_2587A9624()
{
  sub_2587AA928(&qword_27F95D640, type metadata accessor for TraitKey);
  sub_2587AA928(&qword_27F95D648, type metadata accessor for TraitKey);

  return sub_2588BDF48();
}

double sub_2587A96E0@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_2587A96EC()
{
  v2 = *v0;
  sub_2587AA928(&qword_27F95D628, type metadata accessor for Weight);
  sub_2587AA928(&qword_27F95D630, type metadata accessor for Weight);
  sub_2587AA8D4();
  return sub_2588BDF48();
}

uint64_t sub_2587A97B4()
{
  v1 = *v0;
  v2 = sub_2588BD8A8();
  v3 = MEMORY[0x259C8CAD0](v2);

  return v3;
}

uint64_t sub_2587A97F0()
{
  v1 = *v0;
  sub_2588BD8A8();
  sub_2588BD908();
}

uint64_t sub_2587A9844()
{
  v1 = *v0;
  sub_2588BD8A8();
  sub_2588BE038();
  sub_2588BD908();
  v2 = sub_2588BE078();

  return v2;
}

uint64_t sub_2587A98C0()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x259C8D1E0](*&v1);
}

uint64_t sub_2587A98FC(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  return MEMORY[0x2821FE3B0](a1, *&v2);
}

uint64_t sub_2587A9914(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_2588BD8A8();
  v6 = v5;
  if (v4 == sub_2588BD8A8() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2588BDF98();
  }

  return v9 & 1;
}

uint64_t sub_2587A99B0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

void sub_2587A9A08()
{
  if (!qword_27F95D418)
  {
    sub_2587A9ABC();
    sub_2587AA928(&qword_27F95D440, sub_2587A9ABC);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95D418);
    }
  }
}

void sub_2587A9ABC()
{
  if (!qword_27F95D420)
  {
    sub_2587A9B50(255);
    sub_2587AA928(&qword_27F95D438, sub_2587A9B50);
    v0 = sub_2588BD408();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95D420);
    }
  }
}

void sub_2587A9B84()
{
  if (!qword_27F95D430)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F95D430);
    }
  }
}

void sub_2587A9BE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_2587A9C64()
{
  if (!qword_27F95D450)
  {
    sub_25878E1A0(255, &qword_27F95D458, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    sub_2587A9CEC();
    v0 = sub_2588BC928();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95D450);
    }
  }
}

unint64_t sub_2587A9CEC()
{
  result = qword_27F95D460;
  if (!qword_27F95D460)
  {
    sub_25878E1A0(255, &qword_27F95D458, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95D460);
  }

  return result;
}

void sub_2587A9D80()
{
  if (!qword_27F95D470)
  {
    sub_2587A9DE4();
    sub_2587A9E5C();
    v0 = sub_2588BC928();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95D470);
    }
  }
}

void sub_2587A9DE4()
{
  if (!qword_27F95D478)
  {
    sub_2587A8724(255, &qword_27F95D480, &qword_27F95D488, 0x277CCAE20, MEMORY[0x28220B510]);
    v0 = sub_2588BDCE8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95D478);
    }
  }
}

unint64_t sub_2587A9E5C()
{
  result = qword_27F95D490;
  if (!qword_27F95D490)
  {
    sub_2587A9DE4();
    sub_2587A9ED4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95D490);
  }

  return result;
}

unint64_t sub_2587A9ED4()
{
  result = qword_27F95D498;
  if (!qword_27F95D498)
  {
    sub_2587A8724(255, &qword_27F95D480, &qword_27F95D488, 0x277CCAE20, MEMORY[0x28220B510]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95D498);
  }

  return result;
}

uint64_t sub_2587A9F40(uint64_t a1, uint64_t a2)
{
  sub_2587A9DE4();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2587AA1EC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2587AA20C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

unint64_t sub_2587AA634()
{
  result = qword_27F95D5F0;
  if (!qword_27F95D5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95D5F0);
  }

  return result;
}

unint64_t sub_2587AA738()
{
  result = qword_27F95D608;
  if (!qword_27F95D608)
  {
    sub_2587AA7E8();
    sub_25878E1A0(255, &qword_27F95D618, MEMORY[0x277CE14E0], MEMORY[0x277D83D88]);
    sub_2588BDA78();
    result = swift_getFunctionTypeMetadataGlobalActor();
    atomic_store(result, &qword_27F95D608);
  }

  return result;
}

unint64_t sub_2587AA7E8()
{
  result = qword_27F95D610;
  if (!qword_27F95D610)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F95D610);
  }

  return result;
}

uint64_t sub_2587AA84C(void *a1, uint64_t *a2)
{
  v4 = *(*(sub_2588BC248() - 8) + 80);

  return sub_2587A73B8(a1, a2);
}

unint64_t sub_2587AA8D4()
{
  result = qword_27F95D638;
  if (!qword_27F95D638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95D638);
  }

  return result;
}

uint64_t sub_2587AA928(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t HealthKitMedicalIDDataProvider.statePublisher.getter()
{
  sub_2587AAB5C();
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[1] = *(v0 + 16);
  sub_2587AABF0();
  sub_2587AADCC(&qword_27F95D818, sub_2587AABF0);
  sub_2587AADCC(&qword_27F95D820, sub_2587AAC58);
  sub_2588BBDA8();
  sub_2587AADCC(&qword_27F95D828, sub_2587AAB5C);
  v7 = sub_2588BBD98();
  (*(v3 + 8))(v6, v2);
  return v7;
}

void sub_2587AAB5C()
{
  if (!qword_27F95D7F0)
  {
    sub_2587AABF0();
    sub_2587AADCC(&qword_27F95D818, sub_2587AABF0);
    v0 = sub_2588BBCA8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95D7F0);
    }
  }
}

void sub_2587AABF0()
{
  if (!qword_27F95D7F8)
  {
    sub_2587AAC58();
    v0 = sub_2588BBD48();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95D7F8);
    }
  }
}

void sub_2587AAC58()
{
  if (!qword_27F95D800)
  {
    sub_2587AE90C(255, &qword_280C0DE10, &qword_280C0DE18, 0x277CCDDF0);
    sub_2587AACD4();
    State = type metadata accessor for LoadState();
    if (!v1)
    {
      atomic_store(State, &qword_27F95D800);
    }
  }
}

unint64_t sub_2587AACD4()
{
  result = qword_27F95D808;
  if (!qword_27F95D808)
  {
    sub_2587AE90C(255, &qword_280C0DE10, &qword_280C0DE18, 0x277CCDDF0);
    sub_2587AAD64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95D808);
  }

  return result;
}

unint64_t sub_2587AAD64()
{
  result = qword_27F95D810;
  if (!qword_27F95D810)
  {
    sub_25878E130(255, &qword_280C0DE18, 0x277CCDDF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95D810);
  }

  return result;
}

uint64_t sub_2587AADCC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t HealthKitMedicalIDDataProvider.medicalIDFetchTask.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 80);
}

void *HealthKitMedicalIDDataProvider.__allocating_init(fetchMedicalIDDataFromStore:saveMedicalIDDataToStore:medicalIDUpdateNotificationPublishers:externalMedicalIDData:displayConfiguration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, id a6, void *a7)
{
  sub_2587AE1F8(0, &qword_27F95D830, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v33 - v16;
  v18 = swift_allocObject();
  v34 = 1;
  sub_2587AABF0();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = sub_2588BBD58();
  v23 = MEMORY[0x277D84FA0];
  v18[2] = v22;
  v18[3] = v23;
  v18[6] = a3;
  v18[7] = a4;
  v18[4] = a1;
  v18[5] = a2;
  v18[10] = 0;
  v18[11] = a7;
  v18[8] = 0;
  v18[9] = a6;
  if (a6)
  {
    v34 = a6;
    a6 = a6;

    v24 = a7;
    sub_2588BBD38();
  }

  else
  {

    v25 = a7;
  }

  v26 = sub_2588BDAA8();
  (*(*(v26 - 8) + 56))(v17, 1, 1, v26);
  sub_2588BDA78();

  v27 = sub_2588BDA68();
  v28 = swift_allocObject();
  v29 = MEMORY[0x277D85700];
  v28[2] = v27;
  v28[3] = v29;
  v28[4] = v18;
  v30 = sub_2587ABD24(0, 0, v17, &unk_2588C0310, v28);
  swift_beginAccess();
  v31 = v18[10];
  v18[10] = v30;

  sub_2587AC4E0(a5);

  return v18;
}

void *HealthKitMedicalIDDataProvider.init(fetchMedicalIDDataFromStore:saveMedicalIDDataToStore:medicalIDUpdateNotificationPublishers:externalMedicalIDData:displayConfiguration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, id a6, void *a7)
{
  v8 = v7;
  sub_2587AE1F8(0, &qword_27F95D830, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v35 - v18;
  v36 = 1;
  sub_2587AABF0();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  v23 = sub_2588BBD58();
  v24 = MEMORY[0x277D84FA0];
  v7[2] = v23;
  v7[3] = v24;
  v7[6] = a3;
  v7[7] = a4;
  v7[4] = a1;
  v7[5] = a2;
  v7[10] = 0;
  v7[11] = a7;
  v7[8] = 0;
  v7[9] = a6;
  if (a6)
  {
    v36 = a6;
    v25 = a6;

    v26 = a7;
    a6 = v25;
    sub_2588BBD38();
  }

  else
  {

    v27 = a7;
  }

  v28 = sub_2588BDAA8();
  (*(*(v28 - 8) + 56))(v19, 1, 1, v28);
  sub_2588BDA78();

  v29 = sub_2588BDA68();
  v30 = swift_allocObject();
  v31 = MEMORY[0x277D85700];
  v30[2] = v29;
  v30[3] = v31;
  v30[4] = v8;
  v32 = sub_2587ABD24(0, 0, v19, &unk_2588BFD50, v30);
  swift_beginAccess();
  v33 = v8[10];
  v8[10] = v32;

  sub_2587AC4E0(a5);

  return v8;
}

uint64_t sub_2587AB348()
{
  v0[2] = sub_2588BDA78();
  v0[3] = sub_2588BDA68();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_2587AB3F4;

  return sub_2587AB590();
}

uint64_t sub_2587AB3F4()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_2588BDA28();

  return MEMORY[0x2822009F8](sub_2587AB530, v5, v4);
}

uint64_t sub_2587AB530()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2587AB590()
{
  v1[3] = v0;
  v1[4] = *v0;
  sub_2588BDA78();
  v1[5] = sub_2588BDA68();
  v3 = sub_2588BDA28();
  v1[6] = v3;
  v1[7] = v2;

  return MEMORY[0x2822009F8](sub_2587AB650, v3, v2);
}

uint64_t sub_2587AB650()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 40);
  v6 = (*(v1 + 32) + **(v1 + 32));
  v3 = *(*(v1 + 32) + 4);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_2587AB73C;

  return v6();
}

uint64_t sub_2587AB73C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v7 = v4[6];
    v8 = v4[7];
    v9 = sub_2587ABAB0;
  }

  else
  {
    v4[10] = a1;
    v7 = v4[6];
    v8 = v4[7];
    v9 = sub_2587AB864;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_2587AB864()
{
  v1 = v0[10];
  v2 = v0[3];
  v3 = *(v2 + 64);
  *(v2 + 64) = v1;
  v4 = v1;

  v5 = *(v2 + 16);
  v0[2] = v1;
  sub_2588BBD38();
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_2587AB928;
  v7 = v0[3];

  return sub_2587AC79C();
}

uint64_t sub_2587AB928()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v6 = *v0;

  v3 = *(v1 + 56);
  v4 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_2587ABA48, v4, v3);
}

uint64_t sub_2587ABA48()
{
  v1 = v0[10];
  v2 = v0[5];

  v3 = v0[1];

  return v3();
}

uint64_t sub_2587ABAB0()
{
  v21 = v0;
  v1 = v0[5];

  if (qword_27F95D170 != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v3 = sub_2588BBC98();
  __swift_project_value_buffer(v3, qword_27F969938);
  v4 = v2;
  v5 = sub_2588BBC78();
  v6 = sub_2588BDBD8();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[9];
  if (v7)
  {
    v9 = v0[4];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v10 = 136315650;
    v13 = sub_2588BE0E8();
    v15 = sub_258790224(v13, v14, &v20);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_258790224(0xD000000000000016, 0x80000002588C8E00, &v20);
    *(v10 + 22) = 2112;
    v16 = v8;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 24) = v17;
    *v11 = v17;
    _os_log_impl(&dword_25878B000, v5, v6, "[%s][%s]: Could not refresh medical id. Store error: %@", v10, 0x20u);
    sub_2587AE964(v11, &qword_27F95D870, &qword_27F95D878, 0x277D82BB8, sub_2587AE90C);
    MEMORY[0x259C8DBE0](v11, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x259C8DBE0](v12, -1, -1);
    MEMORY[0x259C8DBE0](v10, -1, -1);
  }

  else
  {
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_2587ABD24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_2587AE1F8(0, &qword_27F95D830, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_2587AE454(a3, v27 - v11);
  v13 = sub_2588BDAA8();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_2587AE964(v12, &qword_27F95D830, MEMORY[0x277D85720], MEMORY[0x277D83D88], sub_2587AE1F8);
  }

  else
  {
    sub_2588BDA98();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_2588BDA28();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_2588BD8E8() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_2587AE964(a3, &qword_27F95D830, MEMORY[0x277D85720], MEMORY[0x277D83D88], sub_2587AE1F8);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2587AE964(a3, &qword_27F95D830, MEMORY[0x277D85720], MEMORY[0x277D83D88], sub_2587AE1F8);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_2587AC0D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_2587AE1F8(0, &qword_27F95D830, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_2587AE454(a3, v27 - v11);
  v13 = sub_2588BDAA8();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_2587AE964(v12, &qword_27F95D830, MEMORY[0x277D85720], MEMORY[0x277D83D88], sub_2587AE1F8);
  }

  else
  {
    sub_2588BDA98();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_2588BDA28();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v27[0] = a3;
      v21 = sub_2588BD8E8() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;
      sub_25878E1F0(0, &qword_27F95D838, MEMORY[0x277D84F78] + 8, MEMORY[0x277D83D88]);

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_2587AE964(v27[0], &qword_27F95D830, MEMORY[0x277D85720], MEMORY[0x277D83D88], sub_2587AE1F8);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2587AE964(a3, &qword_27F95D830, MEMORY[0x277D85720], MEMORY[0x277D83D88], sub_2587AE1F8);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_25878E1F0(0, &qword_27F95D838, MEMORY[0x277D84F78] + 8, MEMORY[0x277D83D88]);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_2587AC4E0(uint64_t a1)
{
  v3 = *v1;
  sub_2587AE668();
  v14[0] = v4;
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = a1;
  sub_2587AE6FC();
  sub_2587AE1F8(0, &qword_27F95D858, sub_2587AE6FC, MEMORY[0x277D83940]);
  sub_2587AADCC(&qword_27F95D850, sub_2587AE6FC);
  sub_2587AE760();

  sub_2588BBCC8();
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v3;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_2587AE7E8;
  *(v11 + 24) = v10;
  sub_2587AADCC(&qword_27F95D868, sub_2587AE668);
  v12 = v14[0];
  sub_2588BBDB8();

  (*(v5 + 8))(v8, v12);
  swift_beginAccess();
  sub_2588BBCE8();
  swift_endAccess();
}

uint64_t sub_2587AC79C()
{
  v1[2] = v0;
  v1[3] = *v0;
  sub_2588BDA78();
  v1[4] = sub_2588BDA68();
  v3 = sub_2588BDA28();
  v1[5] = v3;
  v1[6] = v2;

  return MEMORY[0x2822009F8](sub_2587AC85C, v3, v2);
}

uint64_t sub_2587AC85C()
{
  v28 = v0;
  v1 = [*(v0[2] + 88) entryPoint];
  v2 = v0[2];
  if (((v1 - 1) & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    v3 = *(v2 + 72);
    v0[7] = v3;
    if (v3)
    {
      v4 = *(v2 + 64);
      v5 = v4;
      v6 = v3;
      LOBYTE(v4) = sub_2587AD094(v4);

      if (v4)
      {
        if (qword_27F95D170 != -1)
        {
          swift_once();
        }

        v7 = sub_2588BBC98();
        v0[8] = __swift_project_value_buffer(v7, qword_27F969938);
        v8 = sub_2588BBC78();
        v9 = sub_2588BDBC8();
        if (os_log_type_enabled(v8, v9))
        {
          v10 = v0[3];
          v11 = swift_slowAlloc();
          v12 = swift_slowAlloc();
          v27 = v12;
          *v11 = 136315394;
          v13 = sub_2588BE0E8();
          v15 = sub_258790224(v13, v14, &v27);

          *(v11 + 4) = v15;
          *(v11 + 12) = 2080;
          *(v11 + 14) = sub_258790224(0xD00000000000002BLL, 0x80000002588C8E20, &v27);
          _os_log_impl(&dword_25878B000, v8, v9, "[%s][%s]: Saving external medical id data", v11, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x259C8DBE0](v12, -1, -1);
          MEMORY[0x259C8DBE0](v11, -1, -1);
        }

        v16 = v0[2];
        v17 = *(v2 + 72);
        *(v2 + 72) = 0;

        v18 = *(v16 + 48);
        v19 = *(v16 + 56);
        v26 = (v18 + *v18);
        v20 = v18[1];
        v21 = swift_task_alloc();
        v0[9] = v21;
        *v21 = v0;
        v21[1] = sub_2587ACB84;

        return v26(v6);
      }

      v2 = v0[2];
    }
  }

  v23 = v0[4];

  v24 = *(v2 + 72);
  *(v2 + 72) = 0;

  v25 = v0[1];

  return v25();
}

uint64_t sub_2587ACB84()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;
  *(*v1 + 80) = v0;

  v5 = *(v2 + 48);
  v6 = *(v2 + 40);
  if (v0)
  {
    v7 = sub_2587ACE58;
  }

  else
  {
    v7 = sub_2587ACCC0;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_2587ACCC0()
{
  v16 = v0;
  v1 = v0[8];
  v2 = v0[4];

  v3 = sub_2588BBC78();
  v4 = sub_2588BDBC8();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[7];
  if (v5)
  {
    v7 = v0[3];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315394;
    v10 = sub_2588BE0E8();
    v12 = sub_258790224(v10, v11, &v15);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_258790224(0xD00000000000002BLL, 0x80000002588C8E20, &v15);
    _os_log_impl(&dword_25878B000, v3, v4, "[%s][%s]: Saved external medical id data", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C8DBE0](v9, -1, -1);
    MEMORY[0x259C8DBE0](v8, -1, -1);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_2587ACE58()
{
  v22 = v0;
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[4];

  v4 = v1;
  v5 = sub_2588BBC78();
  v6 = sub_2588BDBD8();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[10];
  v9 = v0[7];
  if (v7)
  {
    v10 = v0[3];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = v13;
    *v11 = 136315650;
    v14 = sub_2588BE0E8();
    v16 = sub_258790224(v14, v15, &v21);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_258790224(0xD00000000000002BLL, 0x80000002588C8E20, &v21);
    *(v11 + 22) = 2112;
    v17 = v8;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 24) = v18;
    *v12 = v18;
    _os_log_impl(&dword_25878B000, v5, v6, "[%s][%s]: Could not save external medical id data due to store error: %@", v11, 0x20u);
    sub_2587AE964(v12, &qword_27F95D870, &qword_27F95D878, 0x277D82BB8, sub_2587AE90C);
    MEMORY[0x259C8DBE0](v12, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x259C8DBE0](v13, -1, -1);
    MEMORY[0x259C8DBE0](v11, -1, -1);
  }

  else
  {
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_2587AD094(void *a1)
{
  if (a1)
  {
    sub_25878E130(0, &qword_280C0DE18, 0x277CCDDF0);
    v3 = a1;
    v4 = v1;
    v5 = sub_2588BDCD8();

    if (v5)
    {
      v6 = 0;
    }

    else
    {
      v7 = sub_2588BB9B8();
      v8 = *(v7 - 8);
      v9 = *(v8 + 64);
      MEMORY[0x28223BE20](v7);
      v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
      v11 = v3;
      v12 = [v4 dateSaved];
      v13 = MEMORY[0x28223BE20](v12);
      if (v13)
      {
        v30 = v28;
        v14 = v13;
        sub_2588BB988();

        v15 = *(v8 + 32);
        v16 = v15(v28 - v10, v28 - v10, v7);
        v28[1] = v28;
        MEMORY[0x28223BE20](v16);
        v29 = v11;
        v17 = [v11 dateSaved];
        v18 = MEMORY[0x28223BE20](v17);
        if (v18)
        {
          v19 = v18;
          sub_2588BB988();

          v15(v28 - v10, v28 - v10, v7);
          sub_2587AE9C4();
          v20 = sub_2588BD7B8();

          v21 = *(v8 + 8);
          v21(v28 - v10, v7);
          v21(v28 - v10, v7);
          v6 = v20 ^ 1;
        }

        else
        {
          (*(v8 + 8))(v28 - v10, v7);

          v6 = 1;
        }
      }

      else
      {
        v22 = [v11 dateSaved];
        sub_2587AE1F8(0, &qword_27F95D880, MEMORY[0x28220BFD0], MEMORY[0x277D83D88]);
        v24 = (*(*(v23 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
        MEMORY[0x28223BE20](v23 - 8);
        v26 = v28 - v25;
        v6 = v22 == 0;
        if (v22)
        {
          sub_2588BB988();

          (*(v8 + 56))(v26, 0, 1, v7);
        }

        else
        {

          (*(v8 + 56))(v26, 1, 1, v7);
        }

        sub_2587AE964(v26, &qword_27F95D880, MEMORY[0x28220BFD0], MEMORY[0x277D83D88], sub_2587AE1F8);
      }
    }
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

uint64_t sub_2587AD494()
{
  sub_2587AE1F8(0, &qword_27F95D830, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v21 - v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    if (qword_27F95D170 != -1)
    {
      swift_once();
    }

    v6 = sub_2588BBC98();
    __swift_project_value_buffer(v6, qword_27F969938);
    v7 = sub_2588BBC78();
    v8 = sub_2588BDBC8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v21[0] = v10;
      *v9 = 136315394;
      v11 = sub_2588BE0E8();
      v13 = sub_258790224(v11, v12, v21);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2080;
      *(v9 + 14) = sub_258790224(0x6269726373627573, 0xEE00293A6F742865, v21);
      _os_log_impl(&dword_25878B000, v7, v8, "[%s][%s]: received a medical id update notification. Refreshing...", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C8DBE0](v10, -1, -1);
      MEMORY[0x259C8DBE0](v9, -1, -1);
    }

    v14 = sub_2588BDAA8();
    (*(*(v14 - 8) + 56))(v3, 1, 1, v14);
    v15 = swift_allocObject();
    swift_weakInit();
    sub_2588BDA78();

    v16 = sub_2588BDA68();
    v17 = swift_allocObject();
    v18 = MEMORY[0x277D85700];
    v17[2] = v16;
    v17[3] = v18;
    v17[4] = v15;

    v19 = sub_2587ABD24(0, 0, v3, &unk_2588BFDF0, v17);
    swift_beginAccess();
    v20 = *(v5 + 80);
    *(v5 + 80) = v19;
  }

  return result;
}

uint64_t sub_2587AD7C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_2588BDA78();
  v4[6] = sub_2588BDA68();
  v6 = sub_2588BDA28();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x2822009F8](sub_2587AD860, v6, v5);
}

uint64_t sub_2587AD860()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[10] = v3;
    *v3 = v0;
    v3[1] = sub_2587AD950;

    return sub_2587AB590();
  }

  else
  {
    v5 = v0[6];

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_2587AD950()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v6 = *v0;

  v3 = *(v1 + 64);
  v4 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_2587ADA70, v4, v3);
}

uint64_t sub_2587ADA70()
{
  v1 = v0[9];
  v2 = v0[6];

  v3 = v0[1];

  return v3();
}

uint64_t HealthKitMedicalIDDataProvider.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  v4 = *(v0 + 56);

  v5 = *(v0 + 80);

  return v0;
}

uint64_t HealthKitMedicalIDDataProvider.__deallocating_deinit()
{
  HealthKitMedicalIDDataProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_2587ADB68(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2587ADC60;

  return v7(a1);
}

uint64_t sub_2587ADC60()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2587ADD58(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_2587ADE4C;

  return v6(v2 + 32);
}

uint64_t sub_2587ADE4C()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t _s11MedicalIDUI09HealthKitA14IDDataProviderC37medicalIDUpdateNotificationPublishersSay7Combine12AnyPublisherVyyts5NeverOGGvgZ_0()
{
  sub_25878E1F0(0, &qword_280C0DDB8, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2588BFD30;
  result = *MEMORY[0x277CCE4B0];
  if (!*MEMORY[0x277CCE4B0])
  {
    goto LABEL_14;
  }

  sub_2588BD938();
  v2 = sub_2588BBC38();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  *(inited + 32) = sub_2588BBC28();
  result = *MEMORY[0x277CCE4B8];
  if (*MEMORY[0x277CCE4B8])
  {
    sub_2588BD938();
    v5 = *(v2 + 48);
    v6 = *(v2 + 52);
    swift_allocObject();
    *(inited + 40) = sub_2588BBC28();
    v11 = MEMORY[0x277D84F90];
    result = sub_2588BDE68();
    if ((inited & 0xC000000000000001) != 0)
    {
      MEMORY[0x259C8CF80](0, inited);
    }

    else
    {
      if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v7 = *(inited + 32);
    }

    sub_2587AADCC(&qword_27F95D890, MEMORY[0x277D112E8]);
    sub_2588BBD98();

    sub_2588BDE38();
    v8 = *(v11 + 16);
    sub_2588BDE78();
    sub_2588BDE88();
    result = sub_2588BDE48();
    if ((inited & 0xC000000000000001) != 0)
    {
      MEMORY[0x259C8CF80](1, inited);
LABEL_10:

      sub_2588BBD98();

      sub_2588BDE38();
      v10 = *(v11 + 16);
      sub_2588BDE78();
      sub_2588BDE88();
      sub_2588BDE48();
      return v11;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v9 = *(inited + 40);

      goto LABEL_10;
    }

    goto LABEL_13;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_2587AE1F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2587AE25C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2587AE310;

  return sub_2587AB348();
}

uint64_t sub_2587AE310()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2587AE454(uint64_t a1, uint64_t a2)
{
  sub_2587AE1F8(0, &qword_27F95D830, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2587AE4E8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2587AEAC8;

  return sub_2587ADD58(a1, v5);
}

uint64_t sub_2587AE5A0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2587AE310;

  return sub_2587ADD58(a1, v5);
}

id sub_2587AE658(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

void sub_2587AE668()
{
  if (!qword_27F95D840)
  {
    sub_2587AE6FC();
    sub_2587AADCC(&qword_27F95D850, sub_2587AE6FC);
    v0 = sub_2588BBCB8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95D840);
    }
  }
}

void sub_2587AE6FC()
{
  if (!qword_27F95D848)
  {
    v0 = sub_2588BBCD8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95D848);
    }
  }
}

unint64_t sub_2587AE760()
{
  result = qword_27F95D860;
  if (!qword_27F95D860)
  {
    sub_2587AE1F8(255, &qword_27F95D858, sub_2587AE6FC, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95D860);
  }

  return result;
}

uint64_t sub_2587AE7E8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_2587AD494();
}

uint64_t sub_2587AE7F0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_2587AE858(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2587AEAC8;

  return sub_2587AD7C8(a1, v4, v5, v6);
}

void sub_2587AE90C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_25878E130(255, a3, a4);
    v5 = sub_2588BDCE8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2587AE964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

unint64_t sub_2587AE9C4()
{
  result = qword_27F95D888;
  if (!qword_27F95D888)
  {
    sub_2588BB9B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95D888);
  }

  return result;
}

uint64_t sub_2587AEA10(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2587AEAC8;

  return sub_2587ADB68(a1, v5);
}

void sub_2587AEACC(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() sharedBehavior];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 isAppleWatch];

    sub_2588BDDF8();

    MEMORY[0x259C8CAA0](a1, a2);
    v7 = sub_2588BD868();

    v8 = sub_2588BD868();
    sub_2587AEC74();
    v9 = sub_2588BD9A8();
    v10 = v6 == 0;
    if (v6)
    {
      v11 = 1109271;
    }

    else
    {
      v11 = 616513;
    }

    if (v10)
    {
      v12 = 2;
    }

    else
    {
      v12 = 3;
    }

    v13 = [objc_opt_self() hk:v11 tapToHealthRadarURLForComponent:v7 title:v8 description:5 classification:0 reproducibility:v9 keywords:v12 autoDiagnostics:0 attachments:0 collaborationContactHandles:?];

    sub_2588BB8C8();
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_2587AEC74()
{
  result = qword_27F95D898;
  if (!qword_27F95D898)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F95D898);
  }

  return result;
}

uint64_t MedicalIDListProperty.baseIdentifier.getter()
{
  if (!*v0)
  {
    v4 = sub_2588BD9A8();
    v2 = HKUIJoinStringsForAutomationIdentifier();

    if (!v2)
    {
      return 0x697461636964654DLL;
    }

    goto LABEL_8;
  }

  if (*v0 != 1)
  {
    v5 = sub_2588BD9A8();
    v2 = HKUIJoinStringsForAutomationIdentifier();

    if (!v2)
    {
      return 0xD000000000000011;
    }

    goto LABEL_8;
  }

  v1 = sub_2588BD9A8();
  v2 = HKUIJoinStringsForAutomationIdentifier();

  if (v2)
  {
LABEL_8:
    v3 = sub_2588BD8A8();

    return v3;
  }

  return 0x65696772656C6C41;
}

uint64_t MedicalIDListProperty.hashValue.getter()
{
  v1 = *v0;
  sub_2588BE038();
  MEMORY[0x259C8D1C0](v1);
  return sub_2588BE078();
}

uint64_t sub_2587AEE94()
{
  v1 = *v0;
  sub_2588BE038();
  MEMORY[0x259C8D1C0](v1);
  return sub_2588BE078();
}

uint64_t sub_2587AEF08()
{
  v1 = *v0;
  sub_2588BE038();
  MEMORY[0x259C8D1C0](v1);
  return sub_2588BE078();
}

unint64_t sub_2587AEF50()
{
  result = qword_27F95D8A0;
  if (!qword_27F95D8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95D8A0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MedicalIDListProperty(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MedicalIDListProperty(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2587AF114@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_2587AFCE0();
  sub_2588BBB98();

  v3 = OBJC_IVAR____TtC11MedicalIDUI29HealthDemographicDataProvider__data;
  swift_beginAccess();
  return sub_2587AF960(v5 + v3, a1);
}

uint64_t sub_2587AF1AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2587AFCE0();
  sub_2588BBB98();

  v4 = OBJC_IVAR____TtC11MedicalIDUI29HealthDemographicDataProvider__data;
  swift_beginAccess();
  return sub_2587AF960(v3 + v4, a2);
}

uint64_t sub_2587AF244(uint64_t a1, uint64_t *a2)
{
  sub_2587AF908();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587AF960(a1, v7);
  v8 = *a2;
  return sub_2587AF2D0(v7);
}

uint64_t sub_2587AF2D0(uint64_t a1)
{
  sub_2587AF908();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC11MedicalIDUI29HealthDemographicDataProvider__data;
  swift_beginAccess();
  sub_2587AF960(v1 + v7, v6);
  v8 = sub_2587AF9C4(v6, a1);
  sub_2587AFE00(v6, sub_2587AF908);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v11[-2] = v1;
    v11[-1] = a1;
    v11[2] = v1;
    sub_2587AFCE0();
    sub_2588BBB88();
  }

  else
  {
    sub_2587AF960(a1, v6);
    swift_beginAccess();
    sub_2587AFC60(v6, v1 + v7);
    swift_endAccess();
  }

  return sub_2587AFE00(a1, sub_2587AF908);
}

uint64_t sub_2587AF488(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC11MedicalIDUI29HealthDemographicDataProvider__data;
  swift_beginAccess();
  sub_2587AFD38(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_2587AF4F4(void *a1)
{
  sub_2587AF908();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = (&v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = [a1 firstName];
    v21 = sub_2588BD8A8();
    v9 = v8;

    v10 = [a1 lastName];
    v11 = sub_2588BD8A8();
    v13 = v12;

    v14 = [a1 dateOfBirthComponents];
    v15 = type metadata accessor for HealthDemographicData();
    v16 = v5 + v15[6];
    sub_2588BB778();

    v17 = [a1 heightQuantity];
    v18 = [a1 weightQuantity];
    v19 = [a1 bloodTypeObject];
    v20 = [v19 bloodType];

    *v5 = v21;
    v5[1] = v9;
    v5[2] = v11;
    v5[3] = v13;
    *(v5 + v15[7]) = v17;
    *(v5 + v15[8]) = v18;
    *(v5 + v15[9]) = v20;
    (*(*(v15 - 1) + 56))(v5, 0, 1, v15);
    sub_2587AF2D0(v5);
  }

  return result;
}

uint64_t sub_2587AF710()
{
  sub_2587AFE00(v0 + OBJC_IVAR____TtC11MedicalIDUI29HealthDemographicDataProvider__data, sub_2587AF908);
  v1 = OBJC_IVAR____TtC11MedicalIDUI29HealthDemographicDataProvider___observationRegistrar;
  v2 = sub_2588BBBD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HealthDemographicDataProvider()
{
  result = qword_27F95D8B8;
  if (!qword_27F95D8B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2587AF82C()
{
  sub_2587AF908();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_2588BBBD8();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_2587AF908()
{
  if (!qword_27F95D8C8)
  {
    type metadata accessor for HealthDemographicData();
    v0 = sub_2588BDCE8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95D8C8);
    }
  }
}

uint64_t sub_2587AF960(uint64_t a1, uint64_t a2)
{
  sub_2587AF908();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2587AF9C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HealthDemographicData();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2587AF908();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2587AFD9C();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v15 + 56);
  sub_2587AF960(a1, v17);
  sub_2587AF960(a2, &v17[v18]);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_2587AF960(v17, v12);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      sub_2587AFE60(&v17[v18], v8);
      v21 = sub_258840FF4(v12, v8);
      sub_2587AFE00(v8, type metadata accessor for HealthDemographicData);
      sub_2587AFE00(v12, type metadata accessor for HealthDemographicData);
      sub_2587AFE00(v17, sub_2587AF908);
      v20 = !v21;
      return v20 & 1;
    }

    sub_2587AFE00(v12, type metadata accessor for HealthDemographicData);
    goto LABEL_6;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_2587AFE00(v17, sub_2587AFD9C);
    v20 = 1;
    return v20 & 1;
  }

  sub_2587AFE00(v17, sub_2587AF908);
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_2587AFC60(uint64_t a1, uint64_t a2)
{
  sub_2587AF908();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_2587AFCE0()
{
  result = qword_27F95D8D0;
  if (!qword_27F95D8D0)
  {
    type metadata accessor for HealthDemographicDataProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95D8D0);
  }

  return result;
}

uint64_t sub_2587AFD38(uint64_t a1, uint64_t a2)
{
  sub_2587AF908();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_2587AFD9C()
{
  if (!qword_27F95D8D8)
  {
    sub_2587AF908();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F95D8D8);
    }
  }
}

uint64_t sub_2587AFE00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2587AFE60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HealthDemographicData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t PregnancyStatusLabelState.hashValue.getter()
{
  v1 = *v0;
  sub_2588BE038();
  MEMORY[0x259C8D1C0](v1);
  return sub_2588BE078();
}

unint64_t sub_2587AFF50()
{
  result = qword_27F95D8E0;
  if (!qword_27F95D8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95D8E0);
  }

  return result;
}

uint64_t type metadata accessor for MedicalIDPregnancyStatusLabelView()
{
  result = qword_27F95D8F0;
  if (!qword_27F95D8F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2587B0050()
{
  type metadata accessor for MedicalIDPregnancyViewModel();
  if (v0 <= 0x3F)
  {
    sub_2587B1718(319, &qword_27F95D8E8, sub_2587AFFC8, MEMORY[0x277CE11F8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2587B0128(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_2587B13D0(0, &qword_27F95D900, sub_2587B1258, MEMORY[0x277CDE470], MEMORY[0x277CDFAB8]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = v24 - v8;
  sub_2587AFFC8(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(type metadata accessor for MedicalIDPregnancyStatusLabelView() + 24);
  sub_2587B1718(0, &qword_27F95D8E8, sub_2587AFFC8, MEMORY[0x277CE11F8]);
  MEMORY[0x259C8C5A0]();
  MedicalIDPregnancyViewModel.pregnancyDueDateLabelState(_:)(v13, v40);
  sub_2587B1C5C(v13, sub_2587AFFC8);
  v15 = v40[0];
  if (v40[0] == 3)
  {
    (*(v6 + 56))(a1, 1, 1, v5);
  }

  else
  {
    v16 = sub_2588BC6F8();
    v30 = 0;
    sub_2587B05AC(v15, v2, &v26);
    v35 = v27[3];
    v36 = v27[4];
    v37[0] = v27[5];
    *(v37 + 10) = *(&v27[5] + 10);
    v31 = v26;
    v32 = v27[0];
    v33 = v27[1];
    v34 = v27[2];
    v38[0] = v26;
    v38[1] = v27[0];
    v38[2] = v27[1];
    v38[3] = v27[2];
    v38[4] = v27[3];
    v38[5] = v27[4];
    *v39 = v27[5];
    *&v39[10] = *(&v27[5] + 10);
    sub_2587B1BF4(&v31, v24, sub_2587B1334);
    sub_2587B1C5C(v38, sub_2587B1334);
    *&v29[71] = v35;
    *&v29[87] = v36;
    *&v29[103] = v37[0];
    *&v29[113] = *(v37 + 10);
    *&v29[7] = v31;
    *&v29[23] = v32;
    *&v29[39] = v33;
    *&v29[55] = v34;
    v17 = v30;
    v18 = sub_2588BCC98();
    KeyPath = swift_getKeyPath();
    *(&v27[5] + 1) = *&v29[80];
    *(&v27[6] + 1) = *&v29[96];
    *(&v27[7] + 1) = *&v29[112];
    *(&v27[1] + 1) = *&v29[16];
    *(&v27[2] + 1) = *&v29[32];
    *(&v27[3] + 1) = *&v29[48];
    *(&v27[4] + 1) = *&v29[64];
    v26 = v16;
    LOBYTE(v27[0]) = v17;
    BYTE1(v27[8]) = v29[128];
    *(v27 + 1) = *v29;
    *(&v27[8] + 1) = KeyPath;
    v28 = v18;
    sub_2587B19E0(0, &qword_280C0DDD0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_2588BFF50;
    v21 = v2[1];
    *(v20 + 32) = *v2;
    *(v20 + 40) = v21;
    strcpy((v20 + 48), "DueDateStatus");
    *(v20 + 62) = -4864;

    v22 = sub_2588BD9A8();

    v23 = HKUIJoinStringsForAutomationIdentifier();

    if (v23)
    {
      sub_2588BD8A8();

      sub_2587B1258(0);
      sub_2587B1A30();
      sub_2588BCFB8();

      v24[8] = v27[7];
      v24[9] = v27[8];
      v25 = v28;
      v24[4] = v27[3];
      v24[5] = v27[4];
      v24[6] = v27[5];
      v24[7] = v27[6];
      v24[0] = v26;
      v24[1] = v27[0];
      v24[2] = v27[1];
      v24[3] = v27[2];
      sub_2587B1C5C(v24, sub_2587B1258);
      sub_2587B1B10(v9, a1);
      (*(v6 + 56))(a1, 0, 1, v5);
    }

    else
    {
      __break(1u);
    }
  }
}

double sub_2587B05AC@<D0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (a1)
  {
    sub_2588BD258();
    sub_2587B0FB8(a1, &v50);
    v6 = v50;
    v22 = v51;
    v7 = v52;
    if (qword_27F95D168 != -1)
    {
      swift_once();
    }

    v8 = qword_27F969920;

    if (*(a2 + *(type metadata accessor for MedicalIDPregnancyStatusLabelView() + 20)) == 1)
    {
      v9 = qword_27F95D0E0;

      if (v9 != -1)
      {
        swift_once();
      }

      v10 = qword_27F969818;
      v11 = unk_27F969820;

      v12 = sub_2588BCB98();
      LOBYTE(v50) = 0;
      LOBYTE(v40) = 1;
      *&v47 = v10;
      *(&v47 + 1) = v11;
      LOBYTE(v48) = 0;
      *(&v48 + 1) = MEMORY[0x277D84F90];
      LOBYTE(v49[0]) = v12;
      memset(v49 + 8, 0, 32);
      BYTE8(v49[2]) = 1;
    }

    else
    {
      memset(v49, 0, 41);
      v47 = 0u;
      v48 = 0u;
    }

    v32 = v49[0];
    v33[0] = v49[1];
    *(v33 + 9) = *(&v49[1] + 9);
    *v25 = v49[0];
    *&v25[16] = v49[1];
    *&v25[25] = *(&v49[1] + 9);
    v30 = v47;
    v31 = v48;
    v23 = v47;
    v24 = v48;
    *(v29 + 9) = *(&v49[1] + 9);
    v29[0] = v49[1];
    v27 = v48;
    v28 = v49[0];
    v26 = v47;

    sub_2587B1BB8(v6, *(&v6 + 1), v22);
    sub_2587B1BF4(&v47, &v50, sub_2587B160C);
    sub_2587B1BB8(v6, *(&v6 + 1), v22);

    sub_2587B1BF4(&v23, &v50, sub_2587B160C);
    sub_2587B1C5C(&v30, sub_2587B160C);
    sub_2587B1CBC(v6, *(&v6 + 1), v22);

    v38 = v27;
    v39[0] = v28;
    v39[1] = v29[0];
    *(&v39[1] + 9) = *(v29 + 9);
    v34 = v6;
    v35 = v22;
    LOBYTE(v36) = v7;
    *(&v36 + 1) = v8;
    v37 = v26;
    sub_2587B1D08(&v34);
    v44 = v38;
    v45 = v39[0];
    v46[0] = v39[1];
    *(v46 + 10) = *(&v39[1] + 10);
    v40 = v34;
    v41 = v35;
    v42 = v36;
    v43 = v37;
    sub_2587B1454(0);
    sub_2587B16E4(0);
    sub_2587B20EC(&qword_27F95D988, sub_2587B1454);
    sub_2587B20EC(&qword_27F95D990, sub_2587B16E4);
    sub_2588BC778();
    sub_2587B1C5C(&v47, sub_2587B160C);
    sub_2587B1CBC(v6, *(&v6 + 1), v22);

    v44 = v54;
    v45 = v55;
    v46[0] = v56[0];
    *(v46 + 10) = *(v56 + 10);
    v40 = v50;
    v41 = v51;
    v42 = v52;
    v43 = v53;
    nullsub_1(&v40);
    v54 = v44;
    v55 = v45;
    v56[0] = v46[0];
    *(v56 + 10) = *(v46 + 10);
    v50 = v40;
    v51 = v41;
    v52 = v42;
    v53 = v43;
  }

  else if (*(a2 + *(type metadata accessor for MedicalIDPregnancyStatusLabelView() + 20)) == 1)
  {
    sub_2587B0CCC(&v50);
    v13 = v50;
    v14 = v51;
    if (qword_27F95D0E0 != -1)
    {
      swift_once();
    }

    v16 = qword_27F969818;
    v15 = unk_27F969820;

    v17 = sub_2588BCB98();
    *&v23 = v16;
    *(&v23 + 1) = v15;
    LOBYTE(v24) = 0;
    *(&v24 + 1) = MEMORY[0x277D84F90];
    v25[0] = v17;
    memset(&v25[8], 0, 32);
    v25[40] = 1;
    *(&v49[1] + 9) = *&v25[25];
    v47 = v23;
    v48 = v24;
    *(v29 + 9) = *&v25[25];
    v49[0] = *v25;
    v49[1] = *&v25[16];
    v29[0] = *&v25[16];
    v26 = v23;
    v27 = v24;
    v28 = *v25;
    *(v33 + 9) = *&v25[25];
    LOBYTE(v50) = 0;
    LOBYTE(v40) = 1;
    v32 = *v25;
    v33[0] = *&v25[16];
    v30 = v23;
    v31 = v24;
    sub_2587B1D34(v13, *(&v13 + 1), v14, *(&v14 + 1));
    sub_2587B1D78(&v23, &v50);
    sub_2587B1D34(v13, *(&v13 + 1), v14, *(&v14 + 1));
    sub_2587B1D78(&v26, &v50);
    sub_2587B1E08(&v47);
    sub_2587B1E90(v13, *(&v13 + 1), v14, *(&v14 + 1));
    v34 = v13;
    v35 = v14;
    v38 = v32;
    v39[0] = v33[0];
    *(v39 + 9) = *(v33 + 9);
    v36 = v30;
    v37 = v31;
    sub_2587B1ED4(&v34);
    v44 = v38;
    v45 = v39[0];
    v46[0] = v39[1];
    *(v46 + 10) = *(&v39[1] + 10);
    v40 = v34;
    v41 = v35;
    v42 = v36;
    v43 = v37;
    sub_2587B1454(0);
    sub_2587B16E4(0);
    sub_2587B20EC(&qword_27F95D988, sub_2587B1454);
    sub_2587B20EC(&qword_27F95D990, sub_2587B16E4);
    sub_2588BC778();
    sub_2587B1E08(&v23);
    sub_2587B1E90(v13, *(&v13 + 1), v14, *(&v14 + 1));
    v44 = v54;
    v45 = v55;
    v46[0] = v56[0];
    *(v46 + 10) = *(v56 + 10);
    v40 = v50;
    v41 = v51;
    v42 = v52;
    v43 = v53;
    nullsub_1(&v40);
    v54 = v44;
    v55 = v45;
    v56[0] = v46[0];
    *(v56 + 10) = *(v46 + 10);
    v50 = v40;
    v51 = v41;
    v52 = v42;
    v53 = v43;
  }

  else
  {
    sub_2587B1D10(&v50);
  }

  v18 = v55;
  a3[4] = v54;
  a3[5] = v18;
  a3[6] = v56[0];
  *(a3 + 106) = *(v56 + 10);
  v19 = v51;
  *a3 = v50;
  a3[1] = v19;
  result = *&v52;
  v21 = v53;
  a3[2] = v52;
  a3[3] = v21;
  return result;
}

uint64_t sub_2587B0CCC@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_2588BC678();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_2587AFFC8(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MedicalIDPregnancyStatusLabelView();
  v11 = *(v10 + 24);
  sub_2587B1718(0, &qword_27F95D8E8, sub_2587AFFC8, MEMORY[0x277CE11F8]);
  MEMORY[0x259C8C5A0]();
  MedicalIDPregnancyViewModel.gestationalAgeDescription(dueDate:)(v9);
  v13 = v12;
  result = sub_2587B1C5C(v9, sub_2587AFFC8);
  if (v13)
  {
    sub_2588BC668();
    sub_2588BC658();
    sub_2588BC648();

    sub_2588BC658();
    sub_2588BC698();
    if (qword_27F95D000 != -1)
    {
      swift_once();
    }

    v15 = qword_27F95DA88;
    v16 = sub_2588BCDE8();
    v18 = v17;
    v20 = v19;
    if (*(v2 + *(v10 + 20)) == 1)
    {
      v21 = sub_2588BC8C8();
    }

    else
    {
      v21 = sub_2588BC8D8();
    }

    v30[2] = v21;
    v22 = sub_2588BCD98();
    v23 = v26;
    v28 = v27;
    v25 = v29;
    sub_2587B1CF8(v16, v18, v20 & 1);

    v24 = v28 & 1;
  }

  else
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
  }

  *a1 = v22;
  a1[1] = v23;
  a1[2] = v24;
  a1[3] = v25;
  return result;
}

double sub_2587B0FB8@<D0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v4 = sub_2588BC678();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  if (v3 == 2)
  {
    sub_2588BC668();
    sub_2588BC658();
    sub_2588BC638();
    sub_2588BC658();
    sub_2588BC698();
    if (qword_27F95D000 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  sub_2588BC668();
  sub_2588BC658();
  sub_2588BC638();
  sub_2588BC658();
  sub_2588BC698();
  if (qword_27F95D000 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
  v6 = qword_27F95DA88;
  sub_2588BCDE8();
  sub_2588BC778();
  result = *&v8;
  *a2 = v8;
  *(a2 + 16) = v9;
  *(a2 + 32) = v10;
  return result;
}

void sub_2587B12A0()
{
  if (!qword_27F95D910)
  {
    sub_2587B1334();
    sub_2587B1EE0(&qword_27F95D978, sub_2587B1334, sub_2587B1844);
    v0 = sub_2588BD408();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95D910);
    }
  }
}

void sub_2587B1334()
{
  if (!qword_27F95D918)
  {
    sub_2587B13D0(255, &qword_27F95D920, sub_2587B1454, sub_2587B16E4, MEMORY[0x277CE0338]);
    v0 = sub_2588BDCE8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95D918);
    }
  }
}

void sub_2587B13D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_2587B1488()
{
  if (!qword_27F95D930)
  {
    sub_2587B14F8();
    sub_2587B160C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F95D930);
    }
  }
}

void sub_2587B14F8()
{
  if (!qword_27F95D938)
  {
    sub_2587B158C();
    sub_2587B1690(255, &qword_27F95D950, MEMORY[0x277CE0F78], MEMORY[0x277CE0F60], MEMORY[0x277CE0730]);
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95D938);
    }
  }
}

void sub_2587B158C()
{
  if (!qword_27F95D940)
  {
    sub_2587B1690(255, &qword_27F95D948, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BD8], MEMORY[0x277CE0338]);
    v0 = sub_2588BD238();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95D940);
    }
  }
}

void sub_2587B160C()
{
  if (!qword_27F95D958)
  {
    sub_2587B1690(255, &qword_27F95D308, MEMORY[0x277CE0BD8], MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
    v0 = sub_2588BDCE8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95D958);
    }
  }
}

void sub_2587B1690(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void sub_2587B1718(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2587B177C()
{
  if (!qword_27F95D968)
  {
    v0 = MEMORY[0x277CE0BD8];
    sub_2587B19E0(255, &qword_27F95D970, MEMORY[0x277CE0BD8], MEMORY[0x277D83D88]);
    sub_2587B1690(255, &qword_27F95D308, v0, MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F95D968);
    }
  }
}

unint64_t sub_2587B1844()
{
  result = qword_27F95D980;
  if (!qword_27F95D980)
  {
    sub_2587B13D0(255, &qword_27F95D920, sub_2587B1454, sub_2587B16E4, MEMORY[0x277CE0338]);
    sub_2587B20EC(&qword_27F95D988, sub_2587B1454);
    sub_2587B20EC(&qword_27F95D990, sub_2587B16E4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95D980);
  }

  return result;
}

void sub_2587B1964()
{
  if (!qword_27F95D998)
  {
    sub_2587B19E0(255, &qword_27F95D9A0, MEMORY[0x277CE0AE0], MEMORY[0x277D83D88]);
    v0 = sub_2588BCA88();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95D998);
    }
  }
}

void sub_2587B19E0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_2587B1A30()
{
  result = qword_27F95D9A8;
  if (!qword_27F95D9A8)
  {
    sub_2587B1258(255);
    sub_2587B20EC(&qword_27F95D9B0, sub_2587B12A0);
    sub_2587B20EC(&qword_27F95D9B8, sub_2587B1964);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95D9A8);
  }

  return result;
}

uint64_t sub_2587B1B10(uint64_t a1, uint64_t a2)
{
  sub_2587B13D0(0, &qword_27F95D900, sub_2587B1258, MEMORY[0x277CDE470], MEMORY[0x277CDFAB8]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2587B1BB8(uint64_t a1, uint64_t a2, char a3)
{
  sub_2587A99B0(a1, a2, a3 & 1);
}

uint64_t sub_2587B1BF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2587B1C5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2587B1CBC(uint64_t a1, uint64_t a2, char a3)
{
  sub_2587B1CF8(a1, a2, a3 & 1);
}

uint64_t sub_2587B1CF8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

double sub_2587B1D10(uint64_t a1)
{
  *(a1 + 112) = 0;
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 120) = -256;
  return result;
}

uint64_t sub_2587B1D34(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_2587A99B0(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_2587B1D78(uint64_t a1, uint64_t a2)
{
  sub_2587B1690(0, &qword_27F95D308, MEMORY[0x277CE0BD8], MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2587B1E08(uint64_t a1)
{
  sub_2587B1690(0, &qword_27F95D308, MEMORY[0x277CE0BD8], MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2587B1E90(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_2587B1CF8(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_2587B1EE0(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

void sub_2587B1F5C()
{
  if (!qword_27F95D9C8)
  {
    sub_2587B13D0(255, &qword_27F95D900, sub_2587B1258, MEMORY[0x277CDE470], MEMORY[0x277CDFAB8]);
    v0 = sub_2588BDCE8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95D9C8);
    }
  }
}

unint64_t sub_2587B1FF8()
{
  result = qword_27F95D9D0;
  if (!qword_27F95D9D0)
  {
    sub_2587B13D0(255, &qword_27F95D900, sub_2587B1258, MEMORY[0x277CDE470], MEMORY[0x277CDFAB8]);
    sub_2587B1A30();
    sub_2587B20EC(&qword_27F95D9D8, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95D9D0);
  }

  return result;
}

uint64_t sub_2587B20EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t BasicAlertModel.Action.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2588BB9F8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t BasicAlertModel.Action.buttonText.getter()
{
  v1 = (v0 + *(type metadata accessor for BasicAlertModel.Action() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t type metadata accessor for BasicAlertModel.Action()
{
  result = qword_27F95DA00;
  if (!qword_27F95DA00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t BasicAlertModel.Action.style.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for BasicAlertModel.Action() + 24);

  return sub_2587B226C(v3, a1);
}

uint64_t sub_2587B226C(uint64_t a1, uint64_t a2)
{
  sub_2587B2F14(0, &qword_27F95D9E0, MEMORY[0x277CDD650], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t BasicAlertModel.Action.handler.getter()
{
  v1 = (v0 + *(type metadata accessor for BasicAlertModel.Action() + 28));
  v2 = *v1;
  v3 = v1[1];
  sub_2587B2344(*v1);
  return v2;
}

uint64_t sub_2587B2344(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t BasicAlertModel.Action.init(buttonText:style:handler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_2588BB9E8();
  v12 = type metadata accessor for BasicAlertModel.Action();
  v13 = (a6 + v12[5]);
  *v13 = a1;
  v13[1] = a2;
  result = sub_2587B23D8(a3, a6 + v12[6]);
  v15 = (a6 + v12[7]);
  *v15 = a4;
  v15[1] = a5;
  return result;
}

uint64_t sub_2587B23D8(uint64_t a1, uint64_t a2)
{
  sub_2587B2F14(0, &qword_27F95D9E0, MEMORY[0x277CDD650], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2587B2474@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2588BB9F8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t BasicAlertModel.title.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

void __swiftcall BasicAlertModel.init(title:message:actions:code:)(MedicalIDUI::BasicAlertModel *__return_ptr retstr, Swift::String title, Swift::String_optional message, Swift::OpaquePointer actions, Swift::String_optional code)
{
  retstr->title = title;
  retstr->message = message;
  retstr->actions = actions;
  retstr->code = code;
}

uint64_t BasicAlertModel.init(title:message:action:code:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  sub_2587B2F14(0, &qword_27F95D9E8, type metadata accessor for BasicAlertModel.Action, MEMORY[0x277D84560]);
  v16 = *(type metadata accessor for BasicAlertModel.Action() - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_2588C00B0;
  result = sub_2587B2B0C(a5, v19 + v18);
  *a8 = a1;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = v19;
  a8[5] = a6;
  a8[6] = a7;
  return result;
}

uint64_t BasicAlertModel.errorDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t BasicAlertModel.failureReason.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t BasicAlertModel.code.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t BasicAlertModel.code.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t sub_2587B2740()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_2587B2770()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t _s11MedicalIDUI15BasicAlertModelV6ActionV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2588BBDE8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587B2F14(0, &qword_27F95D9E0, MEMORY[0x277CDD650], MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v30 - v11;
  sub_2587B2FC8();
  v14 = v13;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_2588BB9D8() & 1) == 0)
  {
    return 0;
  }

  v18 = type metadata accessor for BasicAlertModel.Action();
  v19 = *(v18 + 20);
  v20 = *(a1 + v19);
  v21 = *(a1 + v19 + 8);
  v22 = (a2 + v19);
  v23 = v20 == *v22 && v21 == v22[1];
  if (!v23 && (sub_2588BDF98() & 1) == 0)
  {
    return 0;
  }

  v31 = v18;
  v24 = *(v18 + 24);
  v25 = *(v14 + 48);
  sub_2587B226C(a1 + v24, v17);
  sub_2587B226C(a2 + v24, &v17[v25]);
  v26 = *(v5 + 48);
  if (v26(v17, 1, v4) == 1)
  {
    if (v26(&v17[v25], 1, v4) == 1)
    {
      sub_2587B30B8(v17);
      return (*(a1 + *(v31 + 28)) != 0) ^ (*(a2 + *(v31 + 28)) == 0);
    }

    goto LABEL_12;
  }

  sub_2587B226C(v17, v12);
  if (v26(&v17[v25], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_12:
    sub_2587B305C(v17);
    return 0;
  }

  (*(v5 + 32))(v8, &v17[v25], v4);
  sub_2587B3144();
  v28 = sub_2588BD7D8();
  v29 = *(v5 + 8);
  v29(v8, v4);
  v29(v12, v4);
  sub_2587B30B8(v17);
  if (v28)
  {
    return (*(a1 + *(v31 + 28)) != 0) ^ (*(a2 + *(v31 + 28)) == 0);
  }

  return 0;
}

uint64_t sub_2587B2B0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BasicAlertModel.Action();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s11MedicalIDUI15BasicAlertModelV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v8 = a2[2];
  v7 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v11 = a2[6];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_2588BDF98() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v7 || (v2 != v8 || v4 != v7) && (sub_2588BDF98() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (sub_2587C55B8(v3, v10))
  {
    if (v6)
    {
      if (v11 && (v5 == v9 && v6 == v11 || (sub_2588BDF98() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v11)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_2587B2C84()
{
  result = qword_27F95D9F0;
  if (!qword_27F95D9F0)
  {
    sub_2588BB9F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95D9F0);
  }

  return result;
}

unint64_t sub_2587B2CD4()
{
  result = qword_27F95D9F8;
  if (!qword_27F95D9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95D9F8);
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2587B2D44(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_2587B2D8C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_2587B2E10()
{
  sub_2588BB9F8();
  if (v0 <= 0x3F)
  {
    sub_2587B2F14(319, &qword_27F95D9E0, MEMORY[0x277CDD650], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_2587B2F14(319, &qword_27F95DA10, sub_2587B2F78, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2587B2F14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_2587B2F78()
{
  result = qword_27F9607F0;
  if (!qword_27F9607F0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27F9607F0);
  }

  return result;
}

void sub_2587B2FC8()
{
  if (!qword_27F95DA18)
  {
    sub_2587B2F14(255, &qword_27F95D9E0, MEMORY[0x277CDD650], MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F95DA18);
    }
  }
}

uint64_t sub_2587B305C(uint64_t a1)
{
  sub_2587B2FC8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2587B30B8(uint64_t a1)
{
  sub_2587B2F14(0, &qword_27F95D9E0, MEMORY[0x277CDD650], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2587B3144()
{
  result = qword_27F95DA20;
  if (!qword_27F95DA20)
  {
    sub_2588BBDE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95DA20);
  }

  return result;
}

void *sub_2587B31A0(void *a1, void *a2, void *a3)
{
  v4 = v3;
  sub_2587AAB5C();
  v86 = *(v8 - 1);
  v87 = v8;
  v9 = v86[8];
  MEMORY[0x28223BE20](v8);
  v84 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587B6644(0, &qword_27F95D830, MEMORY[0x277D85720]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v82 = &v81 - v13;
  v14 = [objc_allocWithZone(MEMORY[0x277CCD5E8]) initWithHealthStore_];
  v4[9] = a1;
  v4[10] = v14;
  v15 = objc_allocWithZone(MEMORY[0x277CBDAB8]);
  v16 = v14;
  v17 = a1;
  v18 = v16;
  v19 = v17;
  v20 = [v15 init];
  v85 = type metadata accessor for MedicalIDEmergencyContactProvider();
  swift_allocObject();
  v21 = sub_25878DD28(v19, v20);

  v4[2] = v21;
  v22 = type metadata accessor for HealthDemographicDataProvider();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  v25 = swift_allocObject();
  v26 = OBJC_IVAR____TtC11MedicalIDUI29HealthDemographicDataProvider__data;
  v27 = type metadata accessor for HealthDemographicData();
  (*(*(v27 - 8) + 56))(v25 + v26, 1, 1, v27);
  v28 = v19;
  v89 = v21;

  sub_2588BBBC8();
  *(v25 + 16) = v28;
  v4[3] = v25;
  type metadata accessor for MedicalIDHealthStoreDataProvider();
  v29 = swift_allocObject();
  *(v29 + 16) = v28;
  v30 = objc_allocWithZone(MEMORY[0x277CCD7D0]);
  v88 = v28;
  *(v29 + 24) = [v30 initWithHealthStore_];
  v4[4] = v29;
  v31 = swift_allocObject();
  *(v31 + 16) = v18;
  v32 = swift_allocObject();
  *(v32 + 16) = v18;
  v33 = a2;
  v83 = v18;
  v90 = v29;

  v34 = a3;
  v35 = _s11MedicalIDUI09HealthKitA14IDDataProviderC37medicalIDUpdateNotificationPublishersSay7Combine12AnyPublisherVyyts5NeverOGGvgZ_0();
  type metadata accessor for HealthKitMedicalIDDataProvider();
  v36 = swift_allocObject();
  v91[0] = 1;
  sub_2587AABF0();
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  swift_allocObject();
  v40 = sub_2588BBD58();
  v41 = MEMORY[0x277D84FA0];
  v36[2] = v40;
  v36[3] = v41;
  v36[7] = v32;
  v36[8] = 0;
  v36[10] = 0;
  v36[11] = v34;
  v36[5] = v31;
  v36[6] = &unk_2588C0308;
  v36[4] = &unk_2588C02F8;
  v36[9] = a2;
  if (a2)
  {
    v91[0] = a2;
    v42 = v33;
    v43 = v34;
    v44 = v42;

    sub_2588BBD38();
  }

  else
  {
    v45 = v34;
  }

  v81 = v33;
  v46 = sub_2588BDAA8();
  v47 = v82;
  (*(*(v46 - 8) + 56))(v82, 1, 1, v46);
  sub_2588BDA78();

  v48 = sub_2588BDA68();
  v49 = swift_allocObject();
  v50 = MEMORY[0x277D85700];
  v49[2] = v48;
  v49[3] = v50;
  v49[4] = v36;
  v51 = sub_2587ABD24(0, 0, v47, &unk_2588C0310, v49);
  swift_beginAccess();
  v52 = v36[10];
  v36[10] = v51;

  sub_2587AC4E0(v35);

  v4[5] = v36;
  v53 = type metadata accessor for MedicalIDSettingsProvider();
  v54 = *(v53 + 48);
  v55 = *(v53 + 52);
  swift_allocObject();
  v4[6] = sub_25888E4F0();
  v4[8] = v34;
  v91[0] = *(v4[5] + 16);
  sub_2587B68C4(&qword_27F95D818, sub_2587AABF0);
  sub_2587B68C4(&qword_27F95D820, sub_2587AAC58);
  v56 = v34;

  v57 = v84;
  sub_2588BBDA8();
  sub_2587B68C4(&qword_27F95D828, sub_2587AAB5C);
  v58 = v87;
  v82 = sub_2588BBD98();

  (v86[1])(v57, v58);
  v59 = swift_allocObject();
  *(v59 + 16) = v56;
  v60 = *(v90 + 16);
  v61 = swift_allocObject();
  *(v61 + 16) = v60;
  v62 = swift_allocObject();
  v87 = v4;
  v63 = v83;
  *(v62 + 16) = v83;
  v64 = swift_allocObject();
  *(v64 + 16) = &unk_2588C0320;
  *(v64 + 24) = v62;
  v65 = swift_allocObject();
  *(v65 + 16) = v63;
  v66 = swift_allocObject();
  *(v66 + 16) = &unk_2588C0340;
  *(v66 + 24) = v65;
  v67 = type metadata accessor for MedicalIDDataManager();
  v68 = *(v67 + 48);
  v69 = *(v67 + 52);
  v70 = swift_allocObject();
  v91[3] = v85;
  v91[4] = &protocol witness table for MedicalIDEmergencyContactProvider;
  v91[0] = v89;
  v71 = objc_allocWithZone(MEMORY[0x277CCDDF0]);
  v86 = v63;

  v72 = v56;
  v73 = v60;
  *(v70 + 16) = [v71 init];
  *(v70 + OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager__subscriptions) = MEMORY[0x277D84FA0];
  sub_2588BBBC8();
  sub_2587B6C14(v91, v70 + OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager_medicalIDEmergencyContactProvider);
  v74 = (v70 + OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager_shouldSaveDataToHealthDetails);
  *v74 = sub_2587B690C;
  v74[1] = v59;
  v75 = (v70 + OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager_saveDataToHealthStore);
  *v75 = sub_2587B6930;
  v75[1] = v61;
  v76 = (v70 + OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager_saveDataToMedicalIDStore);
  *v76 = &unk_2588C0330;
  v76[1] = v64;
  v77 = (v70 + OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager_deleteDataFromMedicalIDStore);
  *v77 = &unk_2588C0350;
  v77[1] = v66;
  v78 = OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager__medicalIDData;
  v79 = type metadata accessor for MedicalIDData();
  (*(*(v79 - 8) + 56))(v70 + v78, 1, 1, v79);

  sub_25887FED4(v82);

  __swift_destroy_boxed_opaque_existential_1Tm(v91);
  result = v87;
  v87[7] = v70;
  return result;
}

uint64_t sub_2587B3A9C(uint64_t a1)
{
  v1[3] = a1;
  v1[4] = sub_2588BDA78();
  v1[5] = sub_2588BDA68();

  return MEMORY[0x2822009F8](sub_2587B3B18, 0, 0);
}

uint64_t sub_2587B3B18()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[6] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x277D85A40] + 4);
  v4 = swift_task_alloc();
  v0[7] = v4;
  sub_2587B6644(0, &qword_280C0DE10, sub_25878D604);
  *v4 = v0;
  v4[1] = sub_2587B3C30;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0x496C61636964656DLL, 0xED00006174614444, sub_25878D8EC, v2, v5);
}

uint64_t sub_2587B3C30()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_2587B3E34;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_2587B3D4C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2587B3D4C()
{
  v1 = v0[4];
  v2 = v0[5];
  v0[9] = v0[2];
  v4 = sub_2588BDA28();

  return MEMORY[0x2822009F8](sub_2587B3DCC, v4, v3);
}

uint64_t sub_2587B3DCC()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[9];

  return v2(v3);
}

uint64_t sub_2587B3E34()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];

  v5 = sub_2588BDA28();

  return MEMORY[0x2822009F8](sub_2587B3EB8, v5, v4);
}

uint64_t sub_2587B3EB8()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_2587B3F1C(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = a2;
  sub_2588BDA78();
  v2[20] = sub_2588BDA68();
  v4 = sub_2588BDA28();
  v2[21] = v4;
  v2[22] = v3;

  return MEMORY[0x2822009F8](sub_2587B3FB4, v4, v3);
}

uint64_t sub_2587B3FB4()
{
  v2 = v0[18];
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 24;
  v0[3] = sub_2587B40D0;
  v3 = swift_continuation_init();
  sub_2587B6C78();
  v0[17] = v4;
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2587B42D8;
  v0[13] = &block_descriptor_47;
  v0[14] = v3;
  [v1 updateMedicalIDData:v2 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2587B40D0()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 184) = v3;
  v4 = *(v1 + 176);
  v5 = *(v1 + 168);
  if (v3)
  {
    v6 = sub_2587B4264;
  }

  else
  {
    v6 = sub_2587B4200;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_2587B4200()
{
  v1 = *(v0 + 160);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2587B4264()
{
  v1 = v0[23];
  v2 = v0[20];

  swift_willThrow();
  v3 = v0[1];
  v4 = v0[23];

  return v3();
}

uint64_t sub_2587B42D8(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_25878D8F4();
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_2587B4398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a3;
  v4[19] = a4;
  if (a1)
  {
    swift_getObjectType();
    v5 = sub_2588BDA28();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v4[20] = v5;
  v4[21] = v7;

  return MEMORY[0x2822009F8](sub_2587B4428, v5, v7);
}

uint64_t sub_2587B4428()
{
  v2 = v0[18];
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 23;
  v0[3] = sub_2587B4544;
  v3 = swift_continuation_init();
  sub_2587B6C78();
  v0[17] = v4;
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2587B42D8;
  v0[13] = &block_descriptor_43;
  v0[14] = v3;
  [v1 updateMedicalIDData:v2 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2587B4544()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 176) = v3;
  v4 = *(v1 + 168);
  v5 = *(v1 + 160);
  if (v3)
  {
    v6 = sub_2587B4690;
  }

  else
  {
    v6 = sub_2587B4674;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_2587B4690()
{
  v1 = *(v0 + 176);
  swift_willThrow();
  v2 = *(v0 + 8);
  v3 = *(v0 + 176);

  return v2(0);
}

uint64_t sub_2587B4700(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2587B6CF4;

  return (v7)(0, 0, a1);
}

uint64_t sub_2587B47FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[18] = a3;
  if (a1)
  {
    swift_getObjectType();
    v4 = sub_2588BDA28();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3[19] = v4;
  v3[20] = v6;

  return MEMORY[0x2822009F8](sub_2587B488C, v4, v6);
}

uint64_t sub_2587B488C()
{
  v1 = v0[18];
  v0[2] = v0;
  v0[7] = v0 + 22;
  v0[3] = sub_2587B499C;
  v2 = swift_continuation_init();
  sub_2587B6C78();
  v0[17] = v3;
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2587B42D8;
  v0[13] = &block_descriptor;
  v0[14] = v2;
  [v1 deleteMedicalIDDataWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2587B499C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 168) = v3;
  v4 = *(v1 + 160);
  v5 = *(v1 + 152);
  if (v3)
  {
    v6 = sub_2587B4AE8;
  }

  else
  {
    v6 = sub_2587B4ACC;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_2587B4AE8()
{
  v1 = *(v0 + 168);
  swift_willThrow();
  v2 = *(v0 + 8);
  v3 = *(v0 + 168);

  return v2(0);
}

uint64_t sub_2587B4B58(int *a1)
{
  v5 = (a1 + *a1);
  v2 = a1[1];
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2587B4C48;

  return (v5)(0, 0);
}

uint64_t sub_2587B4C48(char a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v5 = *(v8 + 8);
  if (v1)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1 & 1;
  }

  return v5(v6);
}

id sub_2587B4D50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v166 = a2;
  v147 = a3;
  v154 = type metadata accessor for MedicalIDWeightFormatter();
  v146 = *(v154 - 8);
  v6 = *(v146 + 64);
  MEMORY[0x28223BE20](v154);
  v137 = &v133 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = type metadata accessor for MedicalIDHeightFormatter();
  v140 = *(v150 - 8);
  v8 = *(v140 + 64);
  MEMORY[0x28223BE20](v150);
  v141 = &v133 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = type metadata accessor for MedicalIDBiometricsViewModel();
  v10 = *(*(v159 - 1) + 64);
  MEMORY[0x28223BE20](v159);
  v160 = (&v133 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2587B6644(0, &qword_27F95DA38, type metadata accessor for MedicalIDWeightFormatter);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v142 = &v133 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v153 = &v133 - v16;
  sub_2587B6644(0, &qword_27F95DA40, type metadata accessor for MedicalIDHeightFormatter);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v143 = &v133 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v156 = &v133 - v21;
  v22 = type metadata accessor for MedicalIDData();
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v157 = &v133 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v151 = &v133 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v133 - v28;
  v163 = &v133 - v28;
  sub_2587B63B8();
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v33 = &v133 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(v3 + 56);
  swift_beginAccess();
  v35 = *(v34 + 16);
  swift_getKeyPath();
  v168 = v34;
  sub_2587B68C4(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager);
  v152 = v35;
  sub_2588BBB98();

  v36 = OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager__medicalIDData;
  swift_beginAccess();
  sub_2587B644C(v34 + v36, v33, sub_2587B63B8);
  LoadState<>.loadedValue.getter(v29);
  sub_2587B64B4(v33, sub_2587B63B8);
  v37 = sub_2588BBB48();
  v38 = *(v37 - 8);
  v145 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  v155 = (v39 + 15) & 0xFFFFFFFFFFFFFFF0;
  v40 = &v133 - v155;
  v158 = v38;
  v162 = *(v38 + 16);
  v167 = v37;
  (v162)(&v133 - v155, a1, v37);
  v148 = *(*(v4 + 32) + 16);
  v41 = sub_2588BBAC8();
  v42 = *(v41 - 8);
  v161 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  v149 = (v43 + 15) & 0xFFFFFFFFFFFFFFF0;
  v44 = &v133 - v149;
  v165 = v42;
  v164 = *(v42 + 16);
  (v164)(&v133 - v149, v166, v41);
  v138 = *(v4 + 64);
  v45 = v138;
  v46 = type metadata accessor for MedicalIDDataViewModel();
  v47 = v147;
  *(v147 + v46[13]) = v45;
  *v47 = v152;
  v48 = v47;
  v49 = v163;
  sub_2587B644C(v163, v47 + v46[5], type metadata accessor for MedicalIDData);
  v50 = v37;
  v51 = v162;
  (v162)(v48 + v46[6], v40, v50);
  *(v48 + v46[7]) = v148;
  (v164)(v48 + v46[8], v44, v41);
  v52 = sub_2587B644C(v49, v151, type metadata accessor for MedicalIDData);
  MEMORY[0x28223BE20](v52);
  v139 = &v133 - v155;
  v136 = v40;
  v155 = v38 + 16;
  v53 = v51();
  MEMORY[0x28223BE20](v53);
  v54 = &v133 - v149;
  v145 = v44;
  v55 = v41;
  v166 = v42 + 16;
  v164();
  v144 = v46;
  v56 = v48 + v46[10];
  v57 = type metadata accessor for MedicalIDPersonalInfoViewModel();
  v58 = v57[8];
  v59 = objc_allocWithZone(MEMORY[0x277CCAC08]);
  v60 = v148;
  v134 = v152;
  v135 = v60;
  v138 = v138;
  *(v56 + v58) = [v59 init];
  v61 = sub_2588BD9A8();
  v62 = HKUIJoinStringsForAutomationIdentifier();

  if (v62)
  {
    v63 = sub_2588BD8A8();
    v65 = v64;
  }

  else
  {
    v65 = 0xEC0000006F666E49;
    v63 = 0x6C616E6F73726550;
  }

  v66 = (v56 + v57[9]);
  *v66 = v63;
  v66[1] = v65;
  v67 = v151;
  sub_2587B644C(v151, v56, type metadata accessor for MedicalIDData);
  v68 = v139;
  v69 = v167;
  (v162)(v56 + v57[5], v139, v167);
  v70 = v164;
  (v164)(v56 + v57[6], v54, v55);
  v71 = [objc_opt_self() calendarWithIdentifier_];
  v72 = *(v165 + 8);
  v165 += 8;
  v152 = v72;
  (v72)(v54, v55);
  v148 = *(v158 + 8);
  v158 += 8;
  (v148)(v68, v69);
  sub_2587B64B4(v67, type metadata accessor for MedicalIDData);
  *(v56 + v57[7]) = v71;
  v73 = sub_2587B644C(v163, v157, type metadata accessor for MedicalIDData);
  v139 = &v133;
  MEMORY[0x28223BE20](v73);
  v74 = &v133 - v149;
  v151 = v55;
  (v70)(&v133 - v149, v145, v55);
  v75 = v140;
  (*(v140 + 56))(v156, 1, 1, v150);
  v76 = v146;
  (*(v146 + 56))(v153, 1, 1, v154);
  v77 = sub_2588BD9A8();
  v78 = HKUIJoinStringsForAutomationIdentifier();

  if (v78)
  {
    v79 = sub_2588BD8A8();
    v81 = v80;
  }

  else
  {
    v81 = 0xEA00000000007363;
    v79 = 0x697274656D6F6942;
  }

  v82 = v141;
  v83 = v160;
  *v160 = v79;
  v83[1] = v81;
  v84 = v159;
  sub_2587B644C(v157, v83 + v159[5], type metadata accessor for MedicalIDData);
  v85 = v151;
  (v70)(v83 + v84[6], v74, v151);
  v86 = v74;
  v87 = v143;
  sub_2587B6514(v156, v143, &qword_27F95DA40, type metadata accessor for MedicalIDHeightFormatter);
  v88 = *(v75 + 48);
  v89 = v150;
  v90 = v88(v87, 1, v150);
  v149 = v86;
  if (v90 == 1)
  {
    v141 = &v133;
    MEMORY[0x28223BE20](v90);
    v92 = v89;
    v93 = &v133 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
    (v70)(v93, v86, v85);
    (v70)(v82, v93, v85);
    v94 = sub_2587F28D4(v93, 2);
    (v152)(v93, v85);
    *(v82 + *(v92 + 20)) = v94;
    v95 = v143;
    v96 = v88(v143, 1, v92);
    v97 = v153;
    if (v96 != 1)
    {
      sub_2587B6580(v95, &qword_27F95DA40, type metadata accessor for MedicalIDHeightFormatter);
    }
  }

  else
  {
    sub_2587B65DC(v87, v82, type metadata accessor for MedicalIDHeightFormatter);
    v97 = v153;
  }

  sub_2587B65DC(v82, v160 + v159[7], type metadata accessor for MedicalIDHeightFormatter);
  v98 = v142;
  sub_2587B6514(v97, v142, &qword_27F95DA38, type metadata accessor for MedicalIDWeightFormatter);
  v101 = *(v76 + 48);
  v100 = v76 + 48;
  v99 = v101;
  v102 = (v101)(v98, 1, v154);
  if (v102 == 1)
  {
    v103 = v164;
    v146 = v100;
    MEMORY[0x28223BE20](v102);
    v105 = &v133 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0);
    v106 = v149;
    v107 = v151;
    (v103)(v105, v149, v151);
    result = [objc_opt_self() sharedFormatter];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v109 = result;
    v110 = v137;
    (v103)(v137, v105, v107);
    v111 = v154;
    *(v110 + *(v154 + 20)) = v109;
    v112 = sub_25884DC0C(v105, 2);
    v113 = v152;
    (v152)(v105, v107);
    sub_2587B6580(v153, &qword_27F95DA38, type metadata accessor for MedicalIDWeightFormatter);
    sub_2587B6580(v156, &qword_27F95DA40, type metadata accessor for MedicalIDHeightFormatter);
    v113(v106, v107);
    sub_2587B64B4(v157, type metadata accessor for MedicalIDData);
    *(v110 + *(v111 + 24)) = v112;
    v114 = v142;
    if (v99(v142, 1, v111) != 1)
    {
      sub_2587B6580(v114, &qword_27F95DA38, type metadata accessor for MedicalIDWeightFormatter);
    }
  }

  else
  {
    sub_2587B6580(v97, &qword_27F95DA38, type metadata accessor for MedicalIDWeightFormatter);
    sub_2587B6580(v156, &qword_27F95DA40, type metadata accessor for MedicalIDHeightFormatter);
    v107 = v151;
    (v152)(v149, v151);
    sub_2587B64B4(v157, type metadata accessor for MedicalIDData);
    v110 = v137;
    sub_2587B65DC(v98, v137, type metadata accessor for MedicalIDWeightFormatter);
    v103 = v164;
  }

  v115 = v144;
  v116 = v144[9];
  v117 = v160;
  sub_2587B65DC(v110, v160 + v159[8], type metadata accessor for MedicalIDWeightFormatter);
  v118 = v147;
  sub_2587B65DC(v117, v147 + v116, type metadata accessor for MedicalIDBiometricsViewModel);
  v119 = (v118 + v115[11]);
  v120 = type metadata accessor for MedicalIDMedicalInfoViewModel();
  v121 = v136;
  (v162)(v119 + *(v120 + 20), v136, v167);
  v122 = v145;
  (v103)(v119 + *(v120 + 24), v145, v107);
  *v119 = v134;
  if ([v138 suggestHealthData])
  {
    type metadata accessor for PregnancySampleDataProvider();
    v123 = PregnancySampleDataProvider.__allocating_init(healthStore:)(v135);
  }

  else
  {

    v123 = 0;
  }

  v124 = (v118 + v144[12]);
  v125 = type metadata accessor for MedicalIDPregnancyViewModel();
  sub_2587B644C(v163, v124 + v125[5], type metadata accessor for MedicalIDData);
  (v162)(v124 + v125[6], v121, v167);
  (v103)(v124 + v125[7], v122, v107);
  v126 = v125[9];
  v127 = sub_2588BB9B8();
  (*(*(v127 - 8) + 56))(v124 + v126, 1, 1, v127);
  v128 = sub_2588BD9A8();
  v129 = HKUIJoinStringsForAutomationIdentifier();

  if (v129)
  {
    v130 = sub_2588BD8A8();
    v132 = v131;
  }

  else
  {
    v132 = 0xE900000000000079;
    v130 = 0x636E616E67657250;
  }

  (v152)(v122, v107);
  (v148)(v121, v167);
  result = sub_2587B64B4(v163, type metadata accessor for MedicalIDData);
  *v124 = v130;
  v124[1] = v132;
  *(v124 + v125[8]) = v123;
  return result;
}

uint64_t sub_2587B5F90@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for MedicalIDData();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v38[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v38[-v9];
  sub_2587B63B8();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v38[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = *(v1 + 48);
  v16 = *(v1 + 56);
  swift_getKeyPath();
  v43 = v16;
  sub_2587B68C4(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager);
  sub_2588BBB98();

  v17 = OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager__medicalIDData;
  swift_beginAccess();
  sub_2587B644C(v16 + v17, v14, sub_2587B63B8);
  LoadState<>.loadedValue.getter(v10);
  sub_2587B64B4(v14, sub_2587B63B8);
  v18 = *(v2 + 32);
  v19 = *(v18 + 24);
  v42 = *(v18 + 16);
  v20 = [v19 synchronouslyFetchFirstName];
  if (v20)
  {
    v21 = v20;
    v22 = sub_2588BD8A8();
    v40 = v23;
    v41 = v22;
  }

  else
  {
    v40 = 0;
    v41 = 0;
  }

  v24 = *(v15 + 24);
  os_unfair_lock_lock((v24 + 20));
  v39 = *(v24 + 16);
  os_unfair_lock_unlock((v24 + 20));
  sub_2587B644C(v10, v8, type metadata accessor for MedicalIDData);
  v25 = [objc_opt_self() hasPairedWatch];
  v26 = sub_2588BD9A8();
  v27 = HKUIJoinStringsForAutomationIdentifier();

  if (v27)
  {
    v28 = sub_2588BD8A8();
    v30 = v29;
  }

  else
  {
    v30 = 0x80000002588C90D0;
    v28 = 0xD000000000000011;
  }

  v31 = type metadata accessor for MedicalIDSettingsViewModel(0);
  v32 = (a1 + v31[11]);
  sub_2587B64B4(v10, type metadata accessor for MedicalIDData);
  *v32 = v28;
  v32[1] = v30;
  sub_2587B644C(v8, a1, type metadata accessor for MedicalIDData);
  v33 = v41;
  *(a1 + v31[5]) = v42;
  v34 = (a1 + v31[6]);
  v35 = v40;
  *v34 = v33;
  v34[1] = v35;
  *(a1 + v31[9]) = (v8[*(v4 + 64)] & 1) == 0;
  v36 = v8[*(v4 + 68)];
  result = sub_2587B64B4(v8, type metadata accessor for MedicalIDData);
  *(a1 + v31[10]) = v36;
  *(a1 + v31[7]) = v25;
  *(a1 + v31[8]) = v39 & 1;
  return result;
}

uint64_t sub_2587B6300()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 40);

  v5 = *(v0 + 48);

  v6 = *(v0 + 56);

  return v0;
}

uint64_t sub_2587B6360()
{
  sub_2587B6300();

  return swift_deallocClassInstance();
}

void sub_2587B63B8()
{
  if (!qword_27F95DA28)
  {
    type metadata accessor for MedicalIDData();
    sub_2587B68C4(&qword_27F95DA30, type metadata accessor for MedicalIDData);
    State = type metadata accessor for LoadState();
    if (!v1)
    {
      atomic_store(State, &qword_27F95DA28);
    }
  }
}

uint64_t sub_2587B644C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2587B64B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2587B6514(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_2587B6644(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2587B6580(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_2587B6644(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2587B65DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_2587B6644(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2588BDCE8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2587B6698()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2587B672C;

  return sub_2587B3A9C(v2);
}

uint64_t sub_2587B672C(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_2587B6828(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2587AE310;

  return sub_2587B3F1C(a1, v4);
}

uint64_t sub_2587B68C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2587B6954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2587B672C;

  return sub_2587B4398(a1, a2, a3, v8);
}

uint64_t sub_2587B6A08(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2587B6CF0;

  return sub_2587B4700(a1, v5);
}

uint64_t sub_2587B6ABC(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2587B6CF0;

  return sub_2587B47FC(a1, a2, v6);
}

uint64_t sub_2587B6B68()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2587B6CF0;

  return sub_2587B4B58(v2);
}

uint64_t sub_2587B6C14(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_2587B6C78()
{
  if (!qword_27F95DA48)
  {
    sub_25878D8F4();
    v0 = sub_2588BDAB8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95DA48);
    }
  }
}

uint64_t MedicalIDDisplaySection.baseIdentifier.getter()
{
  v1 = *v0;
  if (v1 > 3)
  {
    if (*v0 > 5u)
    {
      if (v1 == 6)
      {
        v7 = sub_2588BD9A8();
        v3 = HKUIJoinStringsForAutomationIdentifier();

        if (!v3)
        {
          return 0xD000000000000011;
        }
      }

      else
      {
        v11 = sub_2588BD9A8();
        v3 = HKUIJoinStringsForAutomationIdentifier();

        if (!v3)
        {
          return 0x4E6C61636964654DLL;
        }
      }
    }

    else if (v1 == 4)
    {
      v5 = sub_2588BD9A8();
      v3 = HKUIJoinStringsForAutomationIdentifier();

      if (!v3)
      {
        return 0xD000000000000011;
      }
    }

    else
    {
      v9 = sub_2588BD9A8();
      v3 = HKUIJoinStringsForAutomationIdentifier();

      if (!v3)
      {
        return 0x697274656D6F6942;
      }
    }

LABEL_23:
    v4 = sub_2588BD8A8();

    return v4;
  }

  if (*v0 > 1u)
  {
    if (v1 == 2)
    {
      v6 = sub_2588BD9A8();
      v3 = HKUIJoinStringsForAutomationIdentifier();

      if (!v3)
      {
        return 0x697461636964654DLL;
      }
    }

    else
    {
      v10 = sub_2588BD9A8();
      v3 = HKUIJoinStringsForAutomationIdentifier();

      if (!v3)
      {
        return 0x65696772656C6C41;
      }
    }

    goto LABEL_23;
  }

  if (*v0)
  {
    v8 = sub_2588BD9A8();
    v3 = HKUIJoinStringsForAutomationIdentifier();

    if (!v3)
    {
      return 0x636E616E67657250;
    }

    goto LABEL_23;
  }

  v2 = sub_2588BD9A8();
  v3 = HKUIJoinStringsForAutomationIdentifier();

  if (v3)
  {
    goto LABEL_23;
  }

  return 0x6C616E6F73726550;
}

id MedicalIDDataViewModel.init(data:medicalIDData:calendar:healthStore:locale:displayConfiguration:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, id *a4@<X3>, uint64_t a5@<X4>, id *a6@<X5>, void *a7@<X8>)
{
  v138 = a6;
  v165 = a5;
  v137 = a4;
  v162 = a3;
  v159 = a2;
  v150 = a1;
  v152 = type metadata accessor for MedicalIDWeightFormatter();
  v147 = *(v152 - 8);
  v13 = *(v147 + 64);
  MEMORY[0x28223BE20](v152);
  v135 = &v132 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = type metadata accessor for MedicalIDHeightFormatter();
  v141 = *(v142 - 8);
  v15 = v141[8];
  MEMORY[0x28223BE20](v142);
  v143 = &v132 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = type metadata accessor for MedicalIDBiometricsViewModel();
  v17 = *(*(v157 - 1) + 64);
  MEMORY[0x28223BE20](v157);
  v145 = (&v132 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2587B9D88(0, &qword_27F95DA38, type metadata accessor for MedicalIDWeightFormatter);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v144 = &v132 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v151 = &v132 - v23;
  sub_2587B9D88(0, &qword_27F95DA40, type metadata accessor for MedicalIDHeightFormatter);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v146 = &v132 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v155 = &v132 - v28;
  v29 = type metadata accessor for MedicalIDData();
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  v156 = &v132 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v148 = &v132 - v33;
  v34 = type metadata accessor for MedicalIDDataViewModel();
  *(a7 + v34[13]) = a6;
  *a7 = a1;
  v35 = a7;
  sub_2587B94F8(a2, a7 + v34[5]);
  v36 = v34[6];
  v37 = sub_2588BBB48();
  v166 = *(v37 - 8);
  v158 = v166;
  v39 = v166 + 16;
  v38 = *(v166 + 16);
  v38(a7 + v36, a3, v37);
  *(a7 + v34[7]) = a4;
  v161 = v34[8];
  v40 = sub_2588BBAC8();
  v160 = *(v40 - 8);
  v41 = *(v160 + 2);
  v163 = v160;
  v164 = v160 + 16;
  v41(a7 + v161, v165, v40);
  v42 = sub_2587B94F8(v159, v148);
  v43 = *(v166 + 64);
  MEMORY[0x28223BE20](v42);
  v139 = &v132 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = v37;
  v153 = v38;
  v154 = v39;
  v45 = (v38)();
  v46 = *(v160 + 8);
  MEMORY[0x28223BE20](v45);
  v149 = v47;
  v140 = (v47 + 15) & 0xFFFFFFFFFFFFFFF0;
  v48 = &v132 - v140;
  v166 = v40;
  v160 = v41;
  v41(&v132 - v140, v165, v40);
  v134 = v34;
  v49 = v34[10];
  v136 = v35;
  v50 = v35 + v49;
  v51 = type metadata accessor for MedicalIDPersonalInfoViewModel();
  v52 = v51[8];
  v53 = objc_allocWithZone(MEMORY[0x277CCAC08]);
  v133 = v138;
  v132 = v150;
  v138 = v137;
  *(v50 + v52) = [v53 init];
  v54 = sub_2588BD9A8();
  v55 = HKUIJoinStringsForAutomationIdentifier();

  if (v55)
  {
    v56 = sub_2588BD8A8();
    v58 = v57;
  }

  else
  {
    v58 = 0xEC0000006F666E49;
    v56 = 0x6C616E6F73726550;
  }

  v59 = (v50 + v51[9]);
  *v59 = v56;
  v59[1] = v58;
  v60 = v148;
  sub_2587B94F8(v148, v50);
  v61 = v139;
  v62 = v161;
  v153(v50 + v51[5], v139, v161);
  v63 = v166;
  v64 = v160;
  v160((v50 + v51[6]), v48, v166);
  v65 = [objc_opt_self() calendarWithIdentifier_];
  v66 = *(v163 + 1);
  v163 = (v163 + 8);
  v150 = v66;
  (v66)(v48, v63);
  v67 = *(v158 + 8);
  v158 += 8;
  v139 = v67;
  (v67)(v61, v62);
  sub_2587B955C(v60);
  *(v50 + v51[7]) = v65;
  v68 = sub_2587B94F8(v159, v156);
  v137 = &v132;
  MEMORY[0x28223BE20](v68);
  v69 = &v132 - v140;
  v64(&v132 - v140, v165, v63);
  v70 = v141;
  v71 = v142;
  (v141[7])(v155, 1, 1, v142);
  v72 = v147;
  (*(v147 + 56))(v151, 1, 1, v152);
  v73 = sub_2588BD9A8();
  v74 = HKUIJoinStringsForAutomationIdentifier();

  v75 = v146;
  if (v74)
  {
    v76 = sub_2588BD8A8();
    v78 = v77;
  }

  else
  {
    v78 = 0xEA00000000007363;
    v76 = 0x697274656D6F6942;
  }

  v79 = v145;
  *v145 = v76;
  *(v79 + 8) = v78;
  v80 = v157;
  sub_2587B94F8(v156, v79 + v157[5]);
  v81 = v69;
  v82 = v69;
  v83 = v160;
  v160((v79 + v80[6]), v81, v166);
  sub_2587B95B8(v155, v75, &qword_27F95DA40, type metadata accessor for MedicalIDHeightFormatter);
  v84 = v70[6];
  v85 = v84(v75, 1, v71);
  v148 = v82;
  if (v85 == 1)
  {
    v141 = &v132;
    MEMORY[0x28223BE20](v85);
    v87 = &v132 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
    v88 = v166;
    v83(v87, v82, v166);
    v89 = v143;
    v83(v143, v87, v88);
    v90 = sub_2587F28D4(v87, 2);
    v91 = v88;
    v92 = v146;
    (v150)(v87, v91);
    *(v89 + *(v71 + 20)) = v90;
    v93 = v84(v92, 1, v71);
    v94 = v144;
    if (v93 != 1)
    {
      sub_2587B9624(v92, &qword_27F95DA40, type metadata accessor for MedicalIDHeightFormatter);
    }
  }

  else
  {
    v89 = v143;
    sub_2587B65DC(v75, v143, type metadata accessor for MedicalIDHeightFormatter);
    v94 = v144;
  }

  sub_2587B65DC(v89, v79 + v157[7], type metadata accessor for MedicalIDHeightFormatter);
  v95 = v151;
  sub_2587B95B8(v151, v94, &qword_27F95DA38, type metadata accessor for MedicalIDWeightFormatter);
  v98 = *(v72 + 48);
  v97 = v72 + 48;
  v96 = v98;
  v99 = v98(v94, 1, v152);
  if (v99 == 1)
  {
    v147 = v97;
    MEMORY[0x28223BE20](v99);
    v101 = &v132 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
    v102 = v148;
    v103 = v160;
    v160(v101, v148, v166);
    result = [objc_opt_self() sharedFormatter];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v105 = result;
    v106 = v135;
    v107 = v166;
    v103(v135, v101, v166);
    v108 = v152;
    *(v106 + *(v152 + 20)) = v105;
    v109 = sub_25884DC0C(v101, 2);
    v110 = v150;
    (v150)(v101, v107);
    sub_2587B9624(v151, &qword_27F95DA38, type metadata accessor for MedicalIDWeightFormatter);
    sub_2587B9624(v155, &qword_27F95DA40, type metadata accessor for MedicalIDHeightFormatter);
    v111 = v106;
    v110(v102, v107);
    sub_2587B955C(v156);
    *(v106 + *(v108 + 24)) = v109;
    v112 = v144;
    v113 = v96(v144, 1, v108);
    v114 = v159;
    v79 = v145;
    if (v113 != 1)
    {
      sub_2587B9624(v112, &qword_27F95DA38, type metadata accessor for MedicalIDWeightFormatter);
    }
  }

  else
  {
    sub_2587B9624(v95, &qword_27F95DA38, type metadata accessor for MedicalIDWeightFormatter);
    sub_2587B9624(v155, &qword_27F95DA40, type metadata accessor for MedicalIDHeightFormatter);
    (v150)(v148, v166);
    sub_2587B955C(v156);
    v111 = v135;
    sub_2587B65DC(v94, v135, type metadata accessor for MedicalIDWeightFormatter);
    v114 = v159;
  }

  v115 = v134;
  v116 = v134[9];
  sub_2587B65DC(v111, v79 + v157[8], type metadata accessor for MedicalIDWeightFormatter);
  v117 = v136;
  sub_2587B65DC(v79, v136 + v116, type metadata accessor for MedicalIDBiometricsViewModel);
  v118 = v117 + v115[11];
  v119 = type metadata accessor for MedicalIDMedicalInfoViewModel();
  v153(&v118[*(v119 + 20)], v162, v161);
  v120 = v160;
  v160(&v118[*(v119 + 24)], v165, v166);
  *v118 = v132;
  v121 = v133;
  LOBYTE(v119) = [v133 suggestHealthData];

  if (v119)
  {
    type metadata accessor for PregnancySampleDataProvider();
    v122 = PregnancySampleDataProvider.__allocating_init(healthStore:)(v138);
  }

  else
  {

    v122 = 0;
  }

  v123 = (v117 + v115[12]);
  v124 = type metadata accessor for MedicalIDPregnancyViewModel();
  sub_2587B94F8(v114, v123 + v124[5]);
  v153(v123 + v124[6], v162, v161);
  v120(v123 + v124[7], v165, v166);
  v125 = v124[9];
  v126 = sub_2588BB9B8();
  (*(*(v126 - 8) + 56))(v123 + v125, 1, 1, v126);
  v127 = sub_2588BD9A8();
  v128 = HKUIJoinStringsForAutomationIdentifier();

  if (v128)
  {
    v129 = sub_2588BD8A8();
    v131 = v130;
  }

  else
  {
    v131 = 0xE900000000000079;
    v129 = 0x636E616E67657250;
  }

  (v150)(v165, v166);
  (v139)(v162, v161);
  result = sub_2587B955C(v114);
  *v123 = v129;
  v123[1] = v131;
  *(v123 + v124[8]) = v122;
  return result;
}

MedicalIDUI::MedicalIDDisplaySection_optional __swiftcall MedicalIDDisplaySection.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2588BDF58();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t MedicalIDDisplaySection.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6C616E6F73726570;
  v3 = 0xD000000000000011;
  if (v1 != 6)
  {
    v3 = 0x4E6C61636964656DLL;
  }

  v4 = 0xD000000000000011;
  if (v1 != 4)
  {
    v4 = 0x697274656D6F6962;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x697461636964656DLL;
  if (v1 != 2)
  {
    v5 = 0x65696772656C6C61;
  }

  if (*v0)
  {
    v2 = 0x636E616E67657270;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2587B80A4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0x726F6E6F44746F6ELL;
  if (a1 == 2)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v4 = 0x694C6574616E6F64;
    v5 = 0xEA00000000006566;
  }

  v6 = 0xD000000000000011;
  if (a1)
  {
    v3 = 0x80000002588C8C60;
  }

  else
  {
    v6 = 0x746553746F6ELL;
  }

  if (a1 <= 1u)
  {
    v7 = v6;
  }

  else
  {
    v7 = v4;
  }

  if (v2 <= 1)
  {
    v8 = v3;
  }

  else
  {
    v8 = v5;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v11 = 0x726F6E6F44746F6ELL;
    }

    else
    {
      v11 = 0x694C6574616E6F64;
    }

    if (a2 == 2)
    {
      v10 = 0xE800000000000000;
    }

    else
    {
      v10 = 0xEA00000000006566;
    }

    if (v7 != v11)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (a2)
    {
      v9 = 0xD000000000000011;
    }

    else
    {
      v9 = 0x746553746F6ELL;
    }

    if (a2)
    {
      v10 = 0x80000002588C8C60;
    }

    else
    {
      v10 = 0xE600000000000000;
    }

    if (v7 != v9)
    {
      goto LABEL_31;
    }
  }

  if (v8 != v10)
  {
LABEL_31:
    v12 = sub_2588BDF98();
    goto LABEL_32;
  }

  v12 = 1;
LABEL_32:

  return v12 & 1;
}

uint64_t sub_2587B81F0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC0000006F666E49;
  v3 = 0x6C616E6F73726570;
  if (a1 > 3u)
  {
    v4 = 0xD000000000000011;
    v5 = 0x80000002588C8B10;
    if (a1 != 6)
    {
      v4 = 0x4E6C61636964656DLL;
      v5 = 0xEC0000007365746FLL;
    }

    v6 = 0xD000000000000011;
    v7 = 0x80000002588C8AF0;
    if (a1 != 4)
    {
      v6 = 0x697274656D6F6962;
      v7 = 0xEA00000000007363;
    }

    v8 = a1 <= 5u;
  }

  else
  {
    v4 = 0x697461636964656DLL;
    v5 = 0xEB00000000736E6FLL;
    if (a1 != 2)
    {
      v4 = 0x65696772656C6C61;
      v5 = 0xE900000000000073;
    }

    v6 = 0x636E616E67657270;
    v7 = 0xE900000000000079;
    if (!a1)
    {
      v6 = 0x6C616E6F73726570;
      v7 = 0xEC0000006F666E49;
    }

    v8 = a1 <= 1u;
  }

  if (v8)
  {
    v9 = v6;
  }

  else
  {
    v9 = v4;
  }

  if (v8)
  {
    v10 = v7;
  }

  else
  {
    v10 = v5;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 != 6)
      {
        v2 = 0xEC0000007365746FLL;
        if (v9 != 0x4E6C61636964656DLL)
        {
          goto LABEL_40;
        }

        goto LABEL_37;
      }

      v11 = "medicalConditions";
    }

    else
    {
      if (a2 != 4)
      {
        v2 = 0xEA00000000007363;
        if (v9 != 0x697274656D6F6962)
        {
          goto LABEL_40;
        }

        goto LABEL_37;
      }

      v11 = "emergencyContacts";
    }

    v2 = (v11 - 32) | 0x8000000000000000;
    if (v9 != 0xD000000000000011)
    {
      goto LABEL_40;
    }

    goto LABEL_37;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v2 = 0xEB00000000736E6FLL;
      if (v9 != 0x697461636964656DLL)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    }

    v3 = 0x65696772656C6C61;
    v2 = 0xE900000000000073;
  }

  else if (a2)
  {
    v2 = 0xE900000000000079;
    if (v9 != 0x636E616E67657270)
    {
      goto LABEL_40;
    }

    goto LABEL_37;
  }

  if (v9 != v3)
  {
LABEL_40:
    v12 = sub_2588BDF98();
    goto LABEL_41;
  }

LABEL_37:
  if (v10 != v2)
  {
    goto LABEL_40;
  }

  v12 = 1;
LABEL_41:

  return v12 & 1;
}

uint64_t sub_2587B848C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD00000000000001BLL;
  if (a1 > 1u)
  {
    v3 = 0x80000002588C8B80;
    v4 = 0x80000002588C8BA0;
    v5 = a1 == 2;
    if (a1 == 2)
    {
      v6 = 0xD00000000000001BLL;
    }

    else
    {
      v6 = 0xD000000000000013;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x80000002588C8B60;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 0xD00000000000001BLL;
    }

    else
    {
      v6 = 0x64656C62616E65;
    }
  }

  if (v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v8 = 0x80000002588C8B80;
  v9 = 0xD000000000000013;
  if (a2 == 2)
  {
    v9 = 0xD00000000000001BLL;
  }

  else
  {
    v8 = 0x80000002588C8BA0;
  }

  if (a2)
  {
    v10 = 0x80000002588C8B60;
  }

  else
  {
    v2 = 0x64656C62616E65;
    v10 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v9;
  }

  if (a2 <= 1u)
  {
    v12 = v10;
  }

  else
  {
    v12 = v8;
  }

  if (v6 == v11 && v7 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_2588BDF98();
  }

  return v13 & 1;
}

uint64_t sub_2587B85C0()
{
  sub_2588BD908();
}

uint64_t sub_2587B8720()
{
  sub_2588BE038();
  sub_2588BD908();

  return sub_2588BE078();
}

void sub_2587B8898(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC0000006F666E49;
  v4 = 0x6C616E6F73726570;
  v5 = 0x80000002588C8B10;
  v6 = 0xD000000000000011;
  if (v2 != 6)
  {
    v6 = 0x4E6C61636964656DLL;
    v5 = 0xEC0000007365746FLL;
  }

  v7 = 0x80000002588C8AF0;
  v8 = 0xD000000000000011;
  if (v2 != 4)
  {
    v8 = 0x697274656D6F6962;
    v7 = 0xEA00000000007363;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEB00000000736E6FLL;
  v10 = 0x697461636964656DLL;
  if (v2 != 2)
  {
    v10 = 0x65696772656C6C61;
    v9 = 0xE900000000000073;
  }

  if (*v1)
  {
    v4 = 0x636E616E67657270;
    v3 = 0xE900000000000079;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 3u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_2587B89DC(_BYTE *a1)
{
  v2 = *a1;
  if (v2 > 3)
  {
    if (v2 - 4 < 2)
    {
      return 1;
    }

    if (v2 == 6)
    {
      result = [*(v1 + *(type metadata accessor for MedicalIDDataViewModel() + 44)) medicalConditions];
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = [*(v1 + *(type metadata accessor for MedicalIDDataViewModel() + 44)) medicalNotes];
      if (!result)
      {
        return result;
      }
    }

LABEL_26:
    v27 = result;
    v28 = sub_2588BD8A8();
    v30 = v29;

    v16 = HIBYTE(v30) & 0xF;
    if ((v30 & 0x2000000000000000) == 0)
    {
      v16 = v28 & 0xFFFFFFFFFFFFLL;
    }

    return v16 != 0;
  }

  if (*a1 > 1u)
  {
    if (v2 == 2)
    {
      result = [*(v1 + *(type metadata accessor for MedicalIDDataViewModel() + 44)) medicationInfo];
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = [*(v1 + *(type metadata accessor for MedicalIDDataViewModel() + 44)) allergyInfo];
      if (!result)
      {
        return result;
      }
    }

    goto LABEL_26;
  }

  if (*a1)
  {
    v17 = v1 + *(type metadata accessor for MedicalIDDataViewModel() + 48);
    v18 = v17 + *(type metadata accessor for MedicalIDPregnancyViewModel() + 20);
    v19 = type metadata accessor for MedicalIDData();
    v20 = *(v19 + 52);
    v21 = MEMORY[0x28220BF80];
    sub_2587B9D88(0, &qword_27F95D880, MEMORY[0x28220BF80]);
    v23 = (*(*(v22 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](v22 - 8);
    v36 = v18;
    sub_2587B95B8(v18 + v20, &v35 - v23, &qword_27F95D880, v21);
    v24 = sub_2588BB9B8();
    v25 = *(*(v24 - 8) + 48);
    LODWORD(v18) = v25(&v35 - v23, 1, v24);
    v26 = sub_2587B9624(&v35 - v23, &qword_27F95D880, v21);
    if (v18 == 1)
    {
      return 0;
    }

    v31 = *(v19 + 56);
    MEMORY[0x28223BE20](v26);
    v32 = MEMORY[0x28220BF80];
    sub_2587B95B8(v36 + v33, &v35 - v23, &qword_27F95D880, MEMORY[0x28220BF80]);
    v34 = v25(&v35 - v23, 1, v24) != 1;
    sub_2587B9624(&v35 - v23, &qword_27F95D880, v32);
    return v34;
  }

  v3 = (v1 + *(type metadata accessor for MedicalIDDataViewModel() + 40));
  v4 = v3[1];
  if (v4)
  {
    if ((v4 & 0x2000000000000000) != 0 ? HIBYTE(v4) & 0xF : *v3 & 0xFFFFFFFFFFFFLL)
    {
      return 1;
    }
  }

  v6 = type metadata accessor for MedicalIDData();
  if (*(v3 + *(v6 + 72) + 8) >> 60 != 15)
  {
    return 1;
  }

  v7 = v6;
  v8 = *(v6 + 76);
  v9 = MEMORY[0x28220B6E8];
  sub_2587B9D88(0, &qword_27F95DA80, MEMORY[0x28220B6E8]);
  v11 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v35 - v12;
  sub_2587B95B8(v3 + v8, &v35 - v12, &qword_27F95DA80, v9);
  v14 = sub_2588BB818();
  LODWORD(v8) = (*(*(v14 - 8) + 48))(v13, 1, v14);
  sub_2587B9624(v13, &qword_27F95DA80, v9);
  result = 1;
  if (v8 == 1 && !*(v3 + *(v7 + 60) + 8))
  {
    v16 = *(v3 + *(v7 + 80));
    return v16 != 0;
  }

  return result;
}

uint64_t sub_2587B8E1C()
{
  v1 = sub_2588BD838();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = 1;
  sub_2588BD828();
  sub_2588BD818();
  v4 = [*v0 dateSaved];
  sub_2587B9D88(0, &qword_27F95D880, MEMORY[0x28220BF80]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - v7;
  if (v4)
  {
    sub_2588BB988();

    v3 = 0;
  }

  v9 = sub_2588BB9B8();
  (*(*(v9 - 8) + 56))(v8, v3, 1, v9);
  sub_2587BC664(v8);
  v11 = v10;
  sub_2587B9624(v8, &qword_27F95D880, MEMORY[0x28220BF80]);
  if (!v11)
  {
    if (qword_27F95D0C0 != -1)
    {
      swift_once();
    }
  }

  sub_2588BD808();

  sub_2588BD818();
  v12 = sub_2588BD858();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  sub_2588BD848();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v14 = qword_27F95DA88;
  v15 = sub_2588BBAC8();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v14;
  sub_2588BBAB8();
  return sub_2588BD8B8();
}

uint64_t MedicalIDDataViewModel.SectionDisplayAction.Action.hashValue.getter()
{
  v1 = *v0;
  sub_2588BE038();
  MEMORY[0x259C8D1C0](v1);
  return sub_2588BE078();
}

uint64_t static MedicalIDDataViewModel.SectionDisplayAction.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  return sub_2587B81F0(*a1, *a2) & ~(v2 ^ v3) & 1;
}

uint64_t sub_2587B9240(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  return sub_2587B81F0(*a1, *a2) & ~(v2 ^ v3) & 1;
}

char *MedicalIDDataViewModel.displayActionForFirstLaunch.getter@<X0>(__int16 *a1@<X8>)
{
  v3 = type metadata accessor for MedicalIDDataViewModel();
  v4 = *(v1 + *(v3 + 52));
  if ((([v4 entryPoint] - 1) & 0xFFFFFFFFFFFFFFFDLL) == 0 || !objc_msgSend(v4, sel_entryPoint))
  {
    v7 = *(v1 + *(v3 + 28));
    result = [v4 isEditingAvailable];
    if (!result)
    {
      goto LABEL_14;
    }

    v8 = [v7 profileIdentifier];
    v9 = [v8 type];

    if (v9 == 3)
    {
      result = [v4 accessPoint];
      if (result != 8)
      {
        goto LABEL_14;
      }
    }

    if ([v4 entryPoint] || (result = objc_msgSend(*v1, sel_isEmpty), (result & 1) == 0))
    {
      result = [v4 entryPoint];
      if ((result - 1) > 2)
      {
        goto LABEL_14;
      }

      v10 = 0x10404u >> (8 * (result - 1));
    }

    else
    {
      LOBYTE(v10) = 0;
    }

    v6 = v10 | 0x100;
    goto LABEL_15;
  }

  result = [v4 entryPoint];
  if ((result - 1) > 2)
  {
LABEL_14:
    v6 = 512;
    goto LABEL_15;
  }

  v6 = (0x10404u >> (8 * (result - 1)));
LABEL_15:
  *a1 = v6;
  return result;
}

Swift::Bool __swiftcall MedicalIDDataViewModel.isDeletionVisible(with:healthStore:)(MIUIDisplayConfiguration *with, HKHealthStore healthStore)
{
  v5 = [(MIUIDisplayConfiguration *)with isEditingAvailable];
  if (v5)
  {
    v6 = [(objc_class *)healthStore.super.isa profileIdentifier];
    v7 = [v6 type];

    if (v7 == 3 && [(MIUIDisplayConfiguration *)with accessPoint]!= 8)
    {
      LOBYTE(v5) = 0;
    }

    else
    {
      v5 = [(MIUIDisplayConfiguration *)with isDeletionAvailable];
      if (v5)
      {
        LOBYTE(v5) = [*v2 isEmpty] ^ 1;
      }
    }
  }

  return v5;
}

uint64_t type metadata accessor for MedicalIDDataViewModel()
{
  result = qword_27F95DA70;
  if (!qword_27F95DA70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2587B94F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicalIDData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2587B955C(uint64_t a1)
{
  v2 = type metadata accessor for MedicalIDData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2587B95B8(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_2587B9D88(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2587B9624(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_2587B9D88(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_2587B9684()
{
  result = qword_27F95DA50;
  if (!qword_27F95DA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95DA50);
  }

  return result;
}

unint64_t sub_2587B96DC()
{
  result = qword_27F95DA58;
  if (!qword_27F95DA58)
  {
    sub_2587B9734();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95DA58);
  }

  return result;
}

void sub_2587B9734()
{
  if (!qword_27F95DA60)
  {
    v0 = sub_2588BDA08();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95DA60);
    }
  }
}

unint64_t sub_2587B978C()
{
  result = qword_27F95DA68;
  if (!qword_27F95DA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95DA68);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MedicalIDDisplaySection(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MedicalIDDisplaySection(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2587B9958()
{
  result = sub_25878E130(319, &qword_280C0DE18, 0x277CCDDF0);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for MedicalIDData();
    if (v2 <= 0x3F)
    {
      result = sub_2588BBB48();
      if (v3 <= 0x3F)
      {
        result = sub_25878E130(319, &qword_27F95D360, 0x277CCD4D8);
        if (v4 <= 0x3F)
        {
          result = sub_2588BBAC8();
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for MedicalIDBiometricsViewModel();
            if (v6 <= 0x3F)
            {
              result = type metadata accessor for MedicalIDPersonalInfoViewModel();
              if (v7 <= 0x3F)
              {
                result = type metadata accessor for MedicalIDMedicalInfoViewModel();
                if (v8 <= 0x3F)
                {
                  result = type metadata accessor for MedicalIDPregnancyViewModel();
                  if (v9 <= 0x3F)
                  {
                    result = sub_25878E130(319, &qword_27F95D3C0, off_2798A65E8);
                    if (v10 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
                      return 0;
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

  return result;
}

uint64_t getEnumTagSinglePayload for MedicalIDDataViewModel.SectionDisplayAction(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MedicalIDDataViewModel.SectionDisplayAction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MedicalIDDataViewModel.SectionDisplayAction.Action(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MedicalIDDataViewModel.SectionDisplayAction.Action(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_2587B9D88(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2588BDCE8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id sub_2587B9DDC()
{
  type metadata accessor for MedicalIDModelProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27F95DA88 = result;
  return result;
}

id static NSBundle.medicalIDUI.getter()
{
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v1 = qword_27F95DA88;

  return v1;
}

id sub_2587B9EB8(uint64_t a1, SEL *a2, void *a3)
{
  result = [objc_opt_self() *a2];
  *a3 = result;
  return result;
}

uint64_t sub_2587B9F24(uint64_t a1, uint64_t *a2)
{
  sub_2587BBA90(0);
  v4 = v3;
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v4, a2);
  if (qword_27F95D010 != -1)
  {
    swift_once();
  }

  v5 = qword_27F9696B0;
  sub_2587BBB1C();
  v6 = v5;
  return sub_2588BB678();
}

uint64_t sub_2587B9FEC()
{
  sub_2587BBA90(0);
  v1 = v0;
  __swift_allocate_value_buffer(v0, qword_27F969700);
  __swift_project_value_buffer(v1, qword_27F969700);
  if (qword_27F95D008 != -1)
  {
    swift_once();
  }

  v2 = qword_27F9696A8;
  sub_2587BBB1C();
  v3 = v2;
  return sub_2588BB678();
}

uint64_t sub_2587BA094()
{
  sub_2587BBA90(0);
  v1 = v0;
  __swift_allocate_value_buffer(v0, qword_27F969718);
  __swift_project_value_buffer(v1, qword_27F969718);
  if (qword_27F95D008 != -1)
  {
    swift_once();
  }

  v2 = qword_27F9696A8;
  sub_2587BBB1C();
  v3 = v2;
  return sub_2588BB678();
}

uint64_t sub_2587BA144()
{
  sub_2587BBA90(0);
  v1 = v0;
  __swift_allocate_value_buffer(v0, qword_27F969730);
  __swift_project_value_buffer(v1, qword_27F969730);
  if (qword_27F95D008 != -1)
  {
    swift_once();
  }

  v2 = qword_27F9696A8;
  sub_2587BBB1C();
  v3 = v2;
  return sub_2588BB678();
}

uint64_t sub_2587BA224(uint64_t a1, uint64_t *a2, SEL *a3)
{
  sub_2587BBA90(0);
  v6 = v5;
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v6, a2);
  v7 = [objc_opt_self() *a3];
  sub_2587BBB1C();
  return sub_2588BB678();
}

uint64_t sub_2587BA2EC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2588BBD78();
}

void *sub_2587BA364()
{
  v0 = sub_2588BBAC8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2588BBD78();

  v5 = sub_2588BBA58();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_2588BBA68();
  v9 = (*(v1 + 8))(v4, v0);
  MEMORY[0x28223BE20](v9);
  sub_2588BBA38();
  sub_2587BBA44();
  LOBYTE(v4) = sub_2588BD7D8();
  v10 = *(v6 + 8);
  v11 = v10(&v25 - v8, v5);
  if (v4 & 1) != 0 || (MEMORY[0x28223BE20](v11), sub_2588BBA28(), v12 = sub_2588BD7D8(), v13 = v10(&v25 - v8, v5), (v12))
  {
    v10(&v25 - v8, v5);
    if (qword_27F95D010 != -1)
    {
      swift_once();
    }

    v14 = qword_27F9696B0;
    if (qword_27F95D018 != -1)
    {
      swift_once();
    }

    sub_2587BBA90(0);
    v16 = v15;
    __swift_project_value_buffer(v15, qword_27F9696B8);
    sub_2588BB688();
    v18 = v17;
    if (qword_27F95D028 != -1)
    {
      swift_once();
    }

    v19 = qword_27F9696E8;
LABEL_10:
    __swift_project_value_buffer(v16, v19);
    sub_2588BB688();
    return sub_2587BBC88(v14, v18, v20);
  }

  MEMORY[0x28223BE20](v13);
  sub_2588BBA48();
  v22 = sub_2588BD7D8();
  v10(&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v10(&v25 - v8, v5);
  if (v22)
  {
    if (qword_27F95D008 != -1)
    {
      swift_once();
    }

    v14 = qword_27F9696A8;
    if (qword_27F95D030 != -1)
    {
      swift_once();
    }

    sub_2587BBA90(0);
    v16 = v23;
    __swift_project_value_buffer(v23, qword_27F969700);
    sub_2588BB688();
    v18 = v24;
    if (qword_27F95D040 != -1)
    {
      swift_once();
    }

    v19 = qword_27F969730;
    goto LABEL_10;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2587BA828@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_2587BB2C8();
  if (v6)
  {
    v56 = v6;
    sub_2587BBAB8(0, &qword_27F95D478, sub_2587BBA90, MEMORY[0x277D83D88]);
    v8 = *(*(v7 - 8) + 64);
    MEMORY[0x28223BE20](v7 - 8);
    v10 = v47 - v9;
    v54 = v11;
    v55 = a3;
    if (a2)
    {
      sub_2587BAD9C(v47 - v9);
    }

    else
    {
      sub_2587BBA90(0);
      (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
    }

    sub_2587BBA90(0);
    v17 = v16;
    v18 = *(*(v16 - 8) + 64);
    v19 = MEMORY[0x28223BE20](v16);
    v20 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](v19);
    v21 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v22 = a1;
    v24 = v23;
    sub_2587A9F40(v22, v21);
    if ((*(v24 + 48))(v21, 1, v17) == 1)
    {

      sub_2587BBB68(v21);
      return sub_2587BBBF4(v10, v55);
    }

    else
    {
      v52 = v47;
      v53 = v10;
      v25 = (*(v24 + 32))(v47 - v20, v21, v17);
      v49 = v47;
      MEMORY[0x28223BE20](v25);
      v50 = v47 - v20;
      sub_2588BB6B8();
      v26 = sub_2587BA364();
      v48 = v47 - v20;
      sub_2588BB688();
      v28 = v27;
      v29 = v26[2];
      v51 = v24;
      if (v29)
      {
        v59 = MEMORY[0x277D84F90];
        v30 = sub_2587F0644(0, v29, 0);
        v31 = v59;
        v32 = *(v24 + 16);
        v33 = *(v24 + 80);
        v47[1] = v26;
        v34 = v26 + ((v33 + 32) & ~v33);
        v57 = *(v24 + 72);
        v58 = v32;
        do
        {
          MEMORY[0x28223BE20](v30);
          v58(v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v34, v17);
          sub_2588BB688();
          v36 = v35;
          v30 = (*(v24 + 8))(v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v17);
          v59 = v31;
          v38 = *(v31 + 16);
          v37 = *(v31 + 24);
          if (v38 >= v37 >> 1)
          {
            v30 = sub_2587F0644((v37 > 1), v38 + 1, 1);
            v31 = v59;
          }

          *(v31 + 16) = v38 + 1;
          *(v31 + 8 * v38 + 32) = v36;
          v34 += v57;
          --v29;
        }

        while (v29);
      }

      else
      {

        v31 = MEMORY[0x277D84F90];
      }

      v39 = v55;
      sub_2587BBEE4(v28, 0, v31);
      v41 = v40;

      v42 = v53;
      v43 = v50;
      if (v41)
      {

        v44 = *(v51 + 8);
        v44(v48, v17);
        v44(v43, v17);
        return sub_2587BBBF4(v42, v39);
      }

      else
      {
        sub_2587BBB1C();
        sub_2588BB678();
        v45 = v51;
        v46 = *(v51 + 8);
        v46(v48, v17);
        v46(v43, v17);
        sub_2587BBB68(v42);
        return (*(v45 + 56))(v39, 0, 1, v17);
      }
    }
  }

  else
  {
    sub_2587BBA90(0);
    v13 = *(*(v12 - 8) + 56);

    return v13(a3, 1, 1, v12);
  }
}

uint64_t sub_2587BAD9C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2587BB2C8();
  if (v2)
  {
    v32 = v2;
    v33 = a1;
    v3 = sub_2588BBAC8();
    v31[1] = v31;
    v4 = *(v3 - 8);
    v5 = *(v4 + 64);
    MEMORY[0x28223BE20](v3);
    v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_2588BBD78();

    v8 = sub_2588BBA58();
    v31[0] = v31;
    v9 = *(v8 - 8);
    v10 = *(v9 + 64);
    MEMORY[0x28223BE20](v8);
    v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
    sub_2588BBA68();
    v12 = (*(v4 + 8))(v7, v3);
    MEMORY[0x28223BE20](v12);
    sub_2588BBA38();
    sub_2587BBA44();
    v13 = sub_2588BD7D8();
    v14 = *(v9 + 8);
    v15 = v14(v31 - v11, v8);
    if (v13 & 1) != 0 || (MEMORY[0x28223BE20](v15), sub_2588BBA28(), v16 = sub_2588BD7D8(), v17 = v14(v31 - v11, v8), (v16))
    {
      v14(v31 - v11, v8);
      if (qword_27F95D020 != -1)
      {
        swift_once();
      }

      sub_2587BBA90(0);
      v19 = v18;
      __swift_project_value_buffer(v18, qword_27F9696D0);
      v21 = v32;
      v20 = v33;
      sub_2588BB6B8();

      return (*(*(v19 - 8) + 56))(v20, 0, 1, v19);
    }

    else
    {
      MEMORY[0x28223BE20](v17);
      sub_2588BBA48();
      v25 = sub_2588BD7D8();
      v14(v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
      v14(v31 - v11, v8);
      if (v25)
      {
        v26 = v33;
        if (qword_27F95D038 != -1)
        {
          swift_once();
        }

        sub_2587BBA90(0);
        v28 = v27;
        __swift_project_value_buffer(v27, qword_27F969718);
        v29 = v32;
        sub_2588BB6B8();

        return (*(*(v28 - 8) + 56))(v26, 0, 1, v28);
      }

      else
      {

        sub_2587BBA90(0);
        return (*(*(v30 - 8) + 56))(v33, 1, 1, v30);
      }
    }
  }

  else
  {
    sub_2587BBA90(0);
    v24 = *(*(v23 - 8) + 56);

    return v24(a1, 1, 1, v23);
  }
}

void *sub_2587BB2C8()
{
  v0 = sub_2588BBAC8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2588BBD78();

  v5 = sub_2588BBA58();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_2588BBA68();
  v9 = (*(v1 + 8))(v4, v0);
  MEMORY[0x28223BE20](v9);
  sub_2588BBA38();
  sub_2587BBA44();
  LOBYTE(v4) = sub_2588BD7D8();
  v10 = *(v6 + 8);
  v11 = v10(&v18 - v8, v5);
  if (v4 & 1) != 0 || (MEMORY[0x28223BE20](v11), sub_2588BBA28(), v12 = sub_2588BD7D8(), v13 = v10(&v18 - v8, v5), (v12))
  {
    v10(&v18 - v8, v5);
    if (qword_27F95D010 != -1)
    {
      swift_once();
    }

    v14 = qword_27F9696B0;
  }

  else
  {
    MEMORY[0x28223BE20](v13);
    sub_2588BBA48();
    v17 = sub_2588BD7D8();
    v10(&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
    v10(&v18 - v8, v5);
    if ((v17 & 1) == 0)
    {
      return 0;
    }

    if (qword_27F95D008 != -1)
    {
      swift_once();
    }

    v14 = qword_27F9696A8;
  }

  v15 = v14;
  return v14;
}

uint64_t sub_2587BB644()
{
  v1 = OBJC_IVAR____TtC11MedicalIDUI18HeightDataProvider__locale;
  sub_2587BBAB8(0, &qword_27F95DAA8, MEMORY[0x28220C190], MEMORY[0x277CBCED0]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HeightDataProvider()
{
  result = qword_27F95DA98;
  if (!qword_27F95DA98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2587BB758()
{
  sub_2587BBAB8(319, &qword_27F95DAA8, MEMORY[0x28220C190], MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2587BB818@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for HeightDataProvider();
  result = sub_2588BBD18();
  *a1 = result;
  return result;
}

uint64_t sub_2587BB858(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2588BBD78();
}

uint64_t sub_2587BB8D4(char *a1, uint64_t *a2)
{
  v4 = sub_2588BBAC8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = *(v5 + 16);
  v8(&v12 - v7, a1, v4);
  v9 = *a2;
  swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  v8(&v12 - v7, &v12 - v7, v4);

  sub_2588BBD88();
  return (*(v5 + 8))(&v12 - v7, v4);
}

unint64_t sub_2587BBA44()
{
  result = qword_27F95DAB0;
  if (!qword_27F95DAB0)
  {
    sub_2588BBA58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95DAB0);
  }

  return result;
}

void sub_2587BBAB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_2587BBB1C()
{
  result = qword_27F95D488;
  if (!qword_27F95D488)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F95D488);
  }

  return result;
}

uint64_t sub_2587BBB68(uint64_t a1)
{
  sub_2587BBAB8(0, &qword_27F95D478, sub_2587BBA90, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2587BBBF4(uint64_t a1, uint64_t a2)
{
  sub_2587BBAB8(0, &qword_27F95D478, sub_2587BBA90, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_2587BBC88(void *result, double a2, double a3)
{
  v21 = result;
  v22 = 0;
  v5 = 0;
  v6 = a2;
  v7 = MEMORY[0x277D84F90];
  v8 = a2 == a3;
  if (a2 >= a3)
  {
    goto LABEL_4;
  }

  while (!__OFADD__(v5++, 1))
  {
    for (i = v5 + a2; ; i = v6)
    {
      sub_2587BBA90(0);
      v13 = v12;
      v14 = *(v12 - 8);
      v15 = *(v14 + 64);
      MEMORY[0x28223BE20](v12);
      v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_2587BBB1C();
      v17 = v21;
      v18 = sub_2588BB678();
      MEMORY[0x28223BE20](v18);
      (*(v14 + 16))(v16, v16, v13);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_2587EFFDC(0, v7[2] + 1, 1, v7);
      }

      v20 = v7[2];
      v19 = v7[3];
      if (v20 >= v19 >> 1)
      {
        v7 = sub_2587EFFDC(v19 > 1, v20 + 1, 1, v7);
      }

      (*(v14 + 8))(v16, v13);
      v7[2] = v20 + 1;
      result = (*(v14 + 32))(v7 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v20, v16, v13);
      v6 = i;
      v8 = i == a3;
      if (i < a3)
      {
        break;
      }

LABEL_4:
      v11 = !v8;
      if ((v11 | v22))
      {
        return v7;
      }

      v22 = 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2587BBEE4(uint64_t result, char a2, uint64_t a3)
{
  if ((a2 & 1) == 0)
  {
    v3 = *(a3 + 16);
    if (v3)
    {
      v4 = v3 - 1;
      if (v3 == 1)
      {
        return *(a3 + 32);
      }

      else
      {
        v5 = (a3 + 40);
        do
        {
          if (!v4)
          {
            return *(a3 + 8 * v3 + 24);
          }

          v6 = *(v5 - 1);
          if (v6 >= *&result)
          {
            return *(v5 - 1);
          }

          v7 = *v5;
          if (*v5 == *&result)
          {
            return *v5;
          }

          ++v5;
          --v4;
        }

        while (v6 >= *&result || v7 <= *&result);
        if (*&result - v6 >= v7 - *&result)
        {
          v9 = v7;
        }

        else
        {
          v9 = v6;
        }

        *&result = v9;
      }
    }

    else
    {
      *&result = 0.0;
    }
  }

  return result;
}

uint64_t type metadata accessor for MedicalIDDataContentView()
{
  result = qword_27F95DAD0;
  if (!qword_27F95DAD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2587BC00C()
{
  type metadata accessor for MedicalIDModelProvider();
  if (v0 <= 0x3F)
  {
    type metadata accessor for MedicalIDDataViewModel();
    if (v1 <= 0x3F)
    {
      sub_2587BC234();
      if (v2 <= 0x3F)
      {
        sub_2587C4E34(319, &qword_27F95DAB8, MEMORY[0x28220C230], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_2587C4E34(319, &qword_27F95DAC0, MEMORY[0x28220C1A0], MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            sub_2587C4E34(319, &qword_27F95DAC8, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
            if (v5 <= 0x3F)
            {
              sub_2587BC38C(319, &qword_27F95DAF0, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
              if (v6 <= 0x3F)
              {
                sub_2587BC38C(319, &qword_27F95DAF8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
                if (v7 <= 0x3F)
                {
                  sub_2587BC310();
                  if (v8 <= 0x3F)
                  {
                    sub_2587BC38C(319, &qword_27F95DB10, MEMORY[0x277D85048], MEMORY[0x277CE10B8]);
                    if (v9 <= 0x3F)
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

void sub_2587BC234()
{
  if (!qword_27F95DAE0)
  {
    sub_25878E130(255, &qword_27F95D3C0, off_2798A65E8);
    sub_2587BC2A8();
    v0 = sub_2588BC368();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95DAE0);
    }
  }
}

unint64_t sub_2587BC2A8()
{
  result = qword_27F95DAE8;
  if (!qword_27F95DAE8)
  {
    sub_25878E130(255, &qword_27F95D3C0, off_2798A65E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95DAE8);
  }

  return result;
}

void sub_2587BC310()
{
  if (!qword_27F95DB00)
  {
    sub_2587BC38C(255, &qword_27F95DB08, &type metadata for MedicalIDDisplaySection, MEMORY[0x277D83D88]);
    v0 = sub_2588BD2F8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95DB00);
    }
  }
}

void sub_2587BC38C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2587BC44C(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, unint64_t, uint64_t), void (*a6)(char *, unint64_t))
{
  v24 = a6;
  v25 = a1;
  v8 = v6;
  v26 = a2;
  v10 = a4(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v14 = &v22 - v13;
  v15 = *(a3 + 16);
  v16 = MEMORY[0x277D84F90];
  if (!v15)
  {
    return v16;
  }

  v28 = MEMORY[0x277D84F90];
  v23 = a5;
  a5(0, v15, 0);
  v16 = v28;
  v17 = (a3 + 32);
  while (1)
  {
    v18 = *v17++;
    v27 = v18;
    v25(&v27);
    if (v8)
    {
      break;
    }

    v8 = 0;
    v28 = v16;
    v20 = *(v16 + 16);
    v19 = *(v16 + 24);
    if (v20 >= v19 >> 1)
    {
      v23(v19 > 1, v20 + 1, 1);
      v16 = v28;
    }

    *(v16 + 16) = v20 + 1;
    v24(v14, v16 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v20);
    if (!--v15)
    {
      return v16;
    }
  }

  __break(1u);
  return result;
}

void sub_2587BC5FC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_2587BC664(uint64_t a1)
{
  v3 = sub_2588BB9B8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v29[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2587AFFC8(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v29[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2587C3CA8(a1, v11, sub_2587AFFC8);
  if ((*(v4 + 48))(v11, 1, v3) == 1)
  {
    sub_2587C50B0(v11, sub_2587AFFC8);
    return 0;
  }

  else
  {
    (*(v4 + 32))(v7, v11, v3);
    v13 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v14 = v1 + *(type metadata accessor for MedicalIDDataViewModel() + 32);
    v15 = sub_2588BBA88();
    [v13 setLocale_];

    [v13 setDateStyle_];
    v16 = sub_2588BB958();
    v17 = [v13 stringFromDate_];

    v18 = sub_2588BD8A8();
    v20 = v19;

    (*(v4 + 8))(v7, v3);
    v21 = sub_2588BD858();
    v22 = *(*(v21 - 8) + 64);
    MEMORY[0x28223BE20](v21 - 8);
    sub_2588BD7E8();
    if (qword_27F95D000 != -1)
    {
      swift_once();
    }

    v23 = qword_27F95DA88;
    v24 = sub_2588BBAC8();
    v25 = *(*(v24 - 8) + 64);
    MEMORY[0x28223BE20](v24 - 8);
    v26 = v23;
    sub_2588BBAB8();
    sub_2588BD8B8();
    sub_2587C4E34(0, &qword_27F9609E0, sub_2587C4D28, MEMORY[0x277D84560]);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_2588C00B0;
    *(v27 + 56) = MEMORY[0x277D837D0];
    *(v27 + 64) = sub_2587C4D8C();
    *(v27 + 32) = v18;
    *(v27 + 40) = v20;
    v28 = sub_2588BD878();

    return v28;
  }
}

uint64_t sub_2587BCA74(uint64_t a1)
{
  v2 = sub_2588BB9B8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v27[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2587AFFC8(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v27[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2587C3CA8(a1, v10, sub_2587AFFC8);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    sub_2587C50B0(v10, sub_2587AFFC8);
    return 0;
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    v12 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v13 = sub_2588BBA88();
    [v12 setLocale_];

    [v12 setDateStyle_];
    v14 = sub_2588BB958();
    v15 = [v12 stringFromDate_];

    v16 = sub_2588BD8A8();
    v18 = v17;

    (*(v3 + 8))(v6, v2);
    v19 = sub_2588BD858();
    v20 = *(*(v19 - 8) + 64);
    MEMORY[0x28223BE20](v19 - 8);
    sub_2588BD7E8();
    if (qword_27F95D000 != -1)
    {
      swift_once();
    }

    v21 = qword_27F95DA88;
    v22 = sub_2588BBAC8();
    v23 = *(*(v22 - 8) + 64);
    MEMORY[0x28223BE20](v22 - 8);
    v24 = v21;
    sub_2588BBAB8();
    sub_2588BD8B8();
    sub_2587C4E34(0, &qword_27F9609E0, sub_2587C4D28, MEMORY[0x277D84560]);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_2588C00B0;
    *(v25 + 56) = MEMORY[0x277D837D0];
    *(v25 + 64) = sub_2587C4D8C();
    *(v25 + 32) = v16;
    *(v25 + 40) = v18;
    v26 = sub_2588BD878();

    return v26;
  }
}

uint64_t sub_2587BCE84@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2588BC598();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587C4E34(0, &qword_27F95DB28, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for MedicalIDDataContentView();
  sub_2587C5110(v1 + *(v12 + 36), v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_2588BBF18();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_2588BDBE8();
    v16 = sub_2588BCB58();
    sub_2588BBC68();

    sub_2588BC588();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_2587BD098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  v38 = a4;
  v37 = a3;
  v8 = type metadata accessor for MedicalIDDataContentView();
  v9 = (a5 + v8[6]);
  sub_25878E130(0, &qword_27F95D3C0, off_2798A65E8);
  sub_2587BC2A8();
  *v9 = sub_2588BC358();
  v9[1] = v10;
  v11 = v8[7];
  *(a5 + v11) = swift_getKeyPath();
  v12 = MEMORY[0x277CDF458];
  sub_2587C4E34(0, &qword_27F95DB18, MEMORY[0x28220C230], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v13 = v8[8];
  *(a5 + v13) = swift_getKeyPath();
  sub_2587C4E34(0, &qword_27F95DB20, MEMORY[0x28220C1A0], v12);
  swift_storeEnumTagMultiPayload();
  v14 = v8[9];
  *(a5 + v14) = swift_getKeyPath();
  sub_2587C4E34(0, &qword_27F95DB28, MEMORY[0x277CDF3E0], v12);
  swift_storeEnumTagMultiPayload();
  v15 = a5 + v8[11];
  LOBYTE(v39) = 0;
  sub_2588BD2B8();
  v16 = v41;
  *v15 = v40;
  *(v15 + 1) = v16;
  v17 = a5 + v8[12];
  LOBYTE(v39) = 8;
  sub_2587BC38C(0, &qword_27F95DB08, &type metadata for MedicalIDDisplaySection, MEMORY[0x277D83D88]);
  sub_2588BD2B8();
  v18 = v41;
  *v17 = v40;
  *(v17 + 1) = v18;
  v19 = (a5 + v8[13]);
  v39 = 0;
  sub_2588BD2B8();
  v20 = v41;
  *v19 = v40;
  v19[1] = v20;
  v21 = (a5 + v8[14]);
  v39 = 0;
  sub_2588BD2B8();
  v22 = v41;
  *v21 = v40;
  v21[1] = v22;
  *a5 = a1;
  v23 = sub_2588BBB48();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v36 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_2588BBB18();
  v28 = sub_2588BBAC8();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v36 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588BBA98();
  sub_2587B4D50(v27, v32, (a5 + v8[5]));

  (*(v29 + 8))(v32, v28);
  result = (*(v24 + 8))(v27, v23);
  v34 = a5 + v8[10];
  v35 = v37;
  *v34 = a2;
  *(v34 + 1) = v35;
  v34[16] = v38;
  return result;
}

uint64_t sub_2587BD470@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v46 = a1;
  v2 = type metadata accessor for MedicalIDDataContentView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v41 = v5;
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587A7460(0);
  v8 = v7 - 8;
  v45 = *(v7 - 8);
  v44 = *(v45 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v43 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - v11;
  v47 = v1;
  sub_2588BCB68();
  sub_2587A8454(0, &qword_27F95D1C0, sub_2587A7578);
  sub_2587A8D34();
  sub_2588BBEE8();
  v38 = v6;
  v39 = type metadata accessor for MedicalIDDataContentView;
  v37 = v1;
  sub_2587C3CA8(v1, v6, type metadata accessor for MedicalIDDataContentView);
  v13 = *(v3 + 80);
  v40 = v13 | 7;
  v14 = swift_allocObject();
  v42 = type metadata accessor for MedicalIDDataContentView;
  sub_2587C51BC(v6, v14 + ((v13 + 16) & ~v13), type metadata accessor for MedicalIDDataContentView);
  sub_2587A74A8(0);
  v16 = &v12[*(v15 + 36)];
  *v16 = sub_2587BE1C0;
  v16[1] = 0;
  v16[2] = sub_2587C2664;
  v16[3] = v14;
  v17 = *(*(*v1 + 32) + 16);
  KeyPath = swift_getKeyPath();
  v19 = &v12[*(v8 + 44)];
  v20 = type metadata accessor for MedicalIDNavigationBarViewModifier();
  *&v19[v20[5]] = KeyPath;
  v21 = MEMORY[0x277CDF458];
  sub_2587C4E34(0, &qword_27F95DB20, MEMORY[0x28220C1A0], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  sub_25878E130(0, &qword_27F95D3C0, off_2798A65E8);
  sub_2587BC2A8();
  v22 = v17;
  v23 = sub_2588BC358();
  v25 = v24;
  *&v19[v20[8]] = swift_getKeyPath();
  sub_2587C4E34(0, &qword_27F95DB30, MEMORY[0x277CDD848], v21);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for MedicalIDDataManager();
  sub_2587C5068(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager);
  v26 = sub_2588BBF58();
  *v19 = 0;
  v27 = &v19[v20[6]];
  *v27 = v23;
  v27[1] = v25;
  *&v19[v20[7]] = v22;
  v28 = &v19[v20[9]];
  *v28 = v26;
  v28[8] = v29 & 1;
  v30 = v43;
  sub_2587C3D10(v12, v43, sub_2587A7460);
  v31 = v38;
  sub_2587C3CA8(v37, v38, v39);
  v32 = (*(v45 + 80) + 16) & ~*(v45 + 80);
  v33 = (v44 + v13 + v32) & ~v13;
  v34 = swift_allocObject();
  sub_258794AA8(v30, v34 + v32);
  sub_2587C51BC(v31, v34 + v33, v42);
  result = sub_2587C3D78(v12, sub_2587A7460);
  v36 = v46;
  *v46 = sub_2587C267C;
  v36[1] = v34;
  return result;
}

void sub_2587BD91C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = sub_2588BBC58();
  v52 = *(v3 - 8);
  v53 = v3;
  v4 = *(v52 + 64);
  MEMORY[0x28223BE20](v3);
  v51 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MedicalIDDataContentView();
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v6);
  v11 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v46 - v12;
  v14 = sub_2588BC868();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  sub_2587A76AC();
  v48 = v16;
  v50 = *(v16 - 8);
  v17 = *(v50 + 64);
  MEMORY[0x28223BE20](v16);
  v47 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588BC6F8();
  v54 = a1;
  LODWORD(v55) = 0;
  sub_2587C5068(&qword_27F95DB70, MEMORY[0x277CE0428]);
  sub_2588BE0D8();
  sub_2587A7740(0);
  sub_2587C5068(&qword_27F95D320, sub_2587A7740);
  sub_2588BBEA8();
  v19 = a1 + *(v7 + 56);
  v20 = *v19;
  v21 = *(v19 + 8);
  LOBYTE(v58) = v20;
  v59 = v21;
  sub_2587BC310();
  sub_2588BD2E8();
  v58 = v55;
  v59 = v56;
  v60 = v57;
  sub_2587C3CA8(a1, v13, type metadata accessor for MedicalIDDataContentView);
  v22 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v23 = swift_allocObject();
  sub_2587C51BC(v13, v23 + v22, type metadata accessor for MedicalIDDataContentView);
  sub_2587C3CA8(a1, v11, type metadata accessor for MedicalIDDataContentView);
  v24 = v49;
  v25 = swift_allocObject();
  sub_2587C51BC(v11, v25 + v22, type metadata accessor for MedicalIDDataContentView);
  sub_2587C2C34(0, &qword_27F95D328, sub_2587A84B8, sub_2587A8540, MEMORY[0x277CE0338]);
  sub_2587C5068(&qword_27F95D3C8, sub_2587A76AC);
  sub_2587A8A1C();
  sub_2587A8A70();
  v26 = v48;
  v27 = v47;
  sub_2588BD078();

  (*(v50 + 8))(v27, v26);
  v28 = (a1 + *(v7 + 64));
  v29 = *v28;
  v30 = v28[1];
  v58 = v29;
  v59 = v30;
  sub_2587BC38C(0, &qword_27F95DB10, MEMORY[0x277D85048], MEMORY[0x277CE10B8]);
  sub_2588BD2E8();
  v31 = v55;
  v32 = v56;
  v33 = v57;
  sub_25878E130(0, &qword_27F95D3C0, off_2798A65E8);
  sub_2587BC2A8();
  v34 = sub_2588BC358();
  v36 = v35;
  if (qword_27F95D190 != -1)
  {
    swift_once();
  }

  v37 = v53;
  v38 = __swift_project_value_buffer(v53, qword_27F969968);
  v39 = v51;
  v40 = *(v52 + 16);
  v40(v51, v38, v37);
  v41 = sub_2588BD1F8();
  if (qword_27F95D188 != -1)
  {
    swift_once();
  }

  v42 = __swift_project_value_buffer(v37, qword_27F969950);
  v40(v39, v42, v37);
  v43 = sub_2588BD1F8();
  sub_2587A8454(0, &qword_27F95D1C0, sub_2587A7578);
  v45 = (v24 + *(v44 + 36));
  *v45 = v34;
  v45[1] = v36;
  v45[2] = v31;
  v45[3] = v32;
  v45[4] = v33;
  v45[5] = v41;
  v45[6] = v43;
}

uint64_t sub_2587BDFD0(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for MedicalIDDataContentView() + 48));
  v3 = *v1;
  v4 = *(v1 + 1);
  sub_2587BC310();

  sub_2588BD2D8();
}

uint64_t sub_2587BE054@<X0>(char *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = _s12SheetContentVMa();
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = type metadata accessor for MedicalIDDataContentView();
  sub_2587C3CA8(a2 + *(v12 + 20), &v10[*(v7 + 28)], type metadata accessor for MedicalIDDataViewModel);
  v13 = *a2;
  *v10 = v11;
  *&v10[*(v7 + 32)] = v13;
  v14 = a2 + *(v12 + 24);
  v15 = *v14;
  if (*v14)
  {
    v16 = v15;

    sub_2587D7B90(v15, v13, a3);

    return sub_2587C50B0(v10, _s12SheetContentVMa);
  }

  else
  {
    v18 = *(v14 + 1);
    sub_25878E130(0, &qword_27F95D3C0, off_2798A65E8);
    sub_2587BC2A8();

    result = sub_2588BC348();
    __break(1u);
  }

  return result;
}

double sub_2587BE1C0@<D0>(double *a1@<X8>)
{
  sub_2588BC058();
  v3 = v2;
  sub_2588BC048();
  v5 = v3 + v4;
  sub_2588BC048();
  result = v5 + v6;
  *a1 = v5 + v6;
  return result;
}

uint64_t sub_2587BE208(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = (a2 + *(type metadata accessor for MedicalIDDataContentView() + 56));
  v5 = *v3;
  v6 = v3[1];
  sub_2587BC38C(0, &qword_27F95DB10, MEMORY[0x277D85048], MEMORY[0x277CE10B8]);
  return sub_2588BD2D8();
}

uint64_t sub_2587BE298@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v71 = a2;
  v82 = a4;
  sub_2587C2760();
  v78 = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v81 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for MedicalIDDataContentView();
  v10 = *(v72 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v72);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = a3;
  sub_2587C3CA8(a3, v12, type metadata accessor for MedicalIDDataContentView);
  v13 = sub_2588BC248();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = *(v14 + 16);
  v80 = a1;
  v73 = v16;
  v74 = v14 + 16;
  v16(&v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v13);
  sub_2588BDA78();
  v17 = sub_2588BDA68();
  v18 = *(v10 + 80);
  v69 = ~v18;
  v70 = v18;
  v19 = (v18 + 32) & ~v18;
  v20 = *(v14 + 80);
  v67 = ~v20;
  v75 = v11;
  v76 = v15;
  v66 = v11 + v20;
  v21 = (v11 + v20 + v19) & ~v20;
  v68 = v18 | v20;
  v22 = swift_allocObject();
  v23 = MEMORY[0x277D85700];
  *(v22 + 16) = v17;
  *(v22 + 24) = v23;
  sub_2587C51BC(v12, v22 + v19, type metadata accessor for MedicalIDDataContentView);
  v24 = *(v14 + 32);
  v64 = v13;
  v77 = v14 + 32;
  v65 = v24;
  v24(v22 + v21, &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
  v25 = sub_2588BDAA8();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v28 = (v27 + 15) & 0xFFFFFFFFFFFFFFF0;
  v29 = &v60 - v28;
  sub_2588BDA88();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v62 = sub_2588BC198();
    v63 = &v60;
    v61 = *(v62 - 8);
    v30 = *(v61 + 64);
    MEMORY[0x28223BE20](v62);
    v60 = &v60 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
    v85 = 0;
    v86 = 0xE000000000000000;
    sub_2588BDDF8();

    v85 = 0xD000000000000037;
    v86 = 0x80000002588C9160;
    v84 = 64;
    v32 = sub_2588BDF78();
    MEMORY[0x259C8CAA0](v32);

    MEMORY[0x28223BE20](v33);
    (*(v26 + 16))(&v60 - v28, &v60 - v28, v25);
    v34 = v60;
    sub_2588BC188();
    (*(v26 + 8))(v29, v25);
    v35 = v81;
    sub_2587C3D10(v71, v81, sub_2587A7460);
    sub_2587C2C34(0, &qword_27F95D400, sub_2587A7460, MEMORY[0x28220E4E8], MEMORY[0x277CDFAB8]);
    (*(v61 + 32))(v35 + *(v36 + 36), v34, v62);
  }

  else
  {
    sub_2587C2C34(0, &qword_27F95D408, sub_2587A7460, MEMORY[0x277CDD8B0], MEMORY[0x277CDFAB8]);
    v38 = v81;
    v39 = (v81 + *(v37 + 36));
    v40 = sub_2588BC0A8();
    (*(v26 + 32))(&v39[*(v40 + 20)], &v60 - v28, v25);
    v35 = v38;
    *v39 = &unk_2588C0768;
    *(v39 + 1) = v22;
    sub_2587C3D10(v71, v38, sub_2587A7460);
  }

  v41 = v79;
  v42 = v79 + *(v72 + 48);
  v43 = *v42;
  v44 = *(v42 + 8);
  LOBYTE(v85) = v43;
  v86 = v44;
  sub_2587BC310();
  v45 = sub_2588BD2C8();
  v83 = v84;
  MEMORY[0x28223BE20](v45);
  v47 = &v60 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_2587C3CA8(v41, v47, type metadata accessor for MedicalIDDataContentView);
  v49 = v76;
  MEMORY[0x28223BE20](v48);
  v50 = &v60 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v64;
  v73(v50, v80, v64);
  v52 = (v70 + 16) & v69;
  v53 = (v66 + v52) & v67;
  v54 = swift_allocObject();
  sub_2587C51BC(v47, v54 + v52, type metadata accessor for MedicalIDDataContentView);
  v65(v54 + v53, v50, v51);
  sub_2587BC38C(0, &qword_27F95DB08, &type metadata for MedicalIDDisplaySection, MEMORY[0x277D83D88]);
  sub_2587A7460(255);
  v56 = v55;
  v57 = sub_2587C27E4();
  v85 = v56;
  v86 = v57;
  swift_getOpaqueTypeConformance2();
  sub_2587C2B98();
  v58 = v78;
  sub_2588BD108();

  return (*(v7 + 8))(v35, v58);
}

uint64_t sub_2587BEB2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a3;
  v4[3] = a4;
  sub_2588BDA78();
  v4[4] = sub_2588BDA68();
  v6 = sub_2588BDA28();

  return MEMORY[0x2822009F8](sub_2587BEBC4, v6, v5);
}

uint64_t sub_2587BEBC4()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  sub_2587BEC30(v2);
  v4 = v0[1];

  return v4();
}

uint64_t sub_2587BEC30(uint64_t a1)
{
  v39 = a1;
  v2 = sub_2588BC248();
  v40 = *(v2 - 8);
  v41 = v2;
  v3 = *(v40 + 64);
  MEMORY[0x28223BE20](v2);
  v38 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MedicalIDDataContentView();
  v37 = *(v4 - 8);
  v5 = *(v37 + 64);
  MEMORY[0x28223BE20](v4);
  sub_2587C4E34(0, &qword_27F95D830, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v36 - v8;
  v10 = v1 + *(v4 + 40);
  v12 = *v10;
  v11 = *(v10 + 8);
  v13 = *(v10 + 16);
  v42 = v1;
  aBlock = v12;
  v44 = v11;
  LOBYTE(v45) = v13;
  sub_2587BC38C(0, &qword_27F95DAF0, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
  MEMORY[0x259C8C5A0](&v49);
  if (v49 == 1)
  {
    aBlock = v12;
    v44 = v11;
    LOBYTE(v45) = v13;
    LOBYTE(v49) = 0;
    sub_2588BD438();
    v14 = sub_2588BDAA8();
    v15 = *(*(v14 - 8) + 56);
    v36 = v9;
    v15(v9, 1, 1, v14);
    sub_2587C3CA8(v42, &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MedicalIDDataContentView);
    v16 = v40;
    v17 = v38;
    v18 = v41;
    (*(v40 + 16))(v38, v39, v41);
    sub_2588BDA78();
    v19 = sub_2588BDA68();
    v20 = (*(v37 + 80) + 32) & ~*(v37 + 80);
    v21 = (v5 + *(v16 + 80) + v20) & ~*(v16 + 80);
    v22 = swift_allocObject();
    v23 = MEMORY[0x277D85700];
    *(v22 + 16) = v19;
    *(v22 + 24) = v23;
    sub_2587C51BC(&v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v20, type metadata accessor for MedicalIDDataContentView);
    (*(v16 + 32))(v22 + v21, v17, v18);
    sub_2587ABD24(0, 0, v36, &unk_2588C0778, v22);
  }

  v24 = v42;
  v25 = v42 + *(v4 + 24);
  if (*v25)
  {
    result = [*v25 suggestHealthData];
    if (result)
    {
      v27 = *(*v24 + 24);
      v28 = *(v27 + 16);

      v29 = [v28 profileIdentifier];
      v30 = [v29 type];

      v31 = v30 == 3;
      v32 = *(v27 + 16);
      v33 = swift_allocObject();
      swift_weakInit();
      v47 = sub_2587C2DA0;
      v48 = v33;
      aBlock = MEMORY[0x277D85DD0];
      v44 = 1107296256;
      v45 = sub_2587BC5FC;
      v46 = &block_descriptor_0;
      v34 = _Block_copy(&aBlock);

      [v32 hk:v31 fetchExistingDemographicInformationWithOptions:v34 completion:?];
      _Block_release(v34);
    }
  }

  else
  {
    v35 = *(v25 + 8);
    sub_25878E130(0, &qword_27F95D3C0, off_2798A65E8);
    sub_2587BC2A8();
    result = sub_2588BC348();
    __break(1u);
  }

  return result;
}

_BYTE *sub_2587BF110(_BYTE *result, _BYTE *a2, uint64_t a3)
{
  if (*result != 8 && *a2 == 8)
  {
    v4 = (a3 + *(type metadata accessor for MedicalIDDataContentView() + 44));
    v5 = *v4;
    v6 = *(v4 + 1);
    sub_2587BC38C(0, &qword_27F95DAF8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
    result = sub_2588BD2C8();
    if (v8)
    {
      v7 = sub_2588BD2D8();
      MEMORY[0x28223BE20](v7);
      sub_2588BD5F8();
      sub_2588BC0D8();
    }
  }

  return result;
}

uint64_t sub_2587BF248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  sub_2588BDA78();
  v5[6] = sub_2588BDA68();
  v7 = sub_2588BDA28();

  return MEMORY[0x2822009F8](sub_2587BF2E0, v7, v6);
}

uint64_t sub_2587BF2E0()
{
  v18 = v0;
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);

  v3 = type metadata accessor for MedicalIDDataContentView();
  v4 = v2 + v3[5];
  MedicalIDDataViewModel.displayActionForFirstLaunch.getter(v17);
  if ((v17[0] & 0xFF00) != 0x200)
  {
    v5 = v17[0];
    if ((v17[0] & 0x100) != 0)
    {
      v8 = *(v0 + 32);
      v9 = v8 + v3[12];
      v10 = *(v9 + 8);
      *(v0 + 16) = *v9;
      *(v0 + 24) = v10;
      *(v0 + 56) = v5;
      sub_2587BC310();

      sub_2588BD2D8();
      v11 = *(v0 + 24);

      v12 = (v8 + v3[11]);
      v13 = *v12;
      v14 = *(v12 + 1);
      *(v0 + 16) = v13;
      *(v0 + 24) = v14;
      *(v0 + 56) = 1;
      sub_2587BC38C(0, &qword_27F95DAF8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
      sub_2588BD2D8();
    }

    else
    {
      v6 = *(v0 + 40);
      v7 = swift_task_alloc();
      *(v7 + 16) = v6;
      *(v7 + 24) = v5;
      sub_2588BD5F8();
      sub_2588BC0D8();
    }
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_2587BF490@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v96 = a2;
  sub_2587C25A4(0);
  v94 = v3;
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v92 = &v89 - v8;
  sub_2587A7D6C();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v95 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v93 = &v89 - v13;
  v14 = type metadata accessor for MedicalIDDataContentView();
  v15 = v14 - 8;
  v89 = *(v14 - 8);
  v16 = *(v89 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = type metadata accessor for MedicalIDSettingsViewModel(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587C2C34(0, &qword_27F95D1F0, sub_2587A78BC, sub_2587A79DC, MEMORY[0x277CDFAB8]);
  v22 = v21;
  v90 = *(v21 - 8);
  v23 = *(v90 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v89 - v24;
  sub_2587A7820();
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v91 = &v89 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v98 = &v89 - v30;
  v31 = a1 + *(v15 + 32);
  if (*v31)
  {
    v32 = a1;
    v33 = *v31;
    v34 = [v33 isLockScreen];
    v97 = v7;
    if (v34)
    {

LABEL_4:
      v35 = v98;
      (*(v90 + 56))(v98, 1, 1, v22);
LABEL_9:
      v73 = v93;
      sub_2587BFBE8(v93);
      v74 = v92;
      sub_2587C00B8(v32, v92);
      v75 = sub_2588BCB78();
      sub_2588BBE38();
      v76 = &v74[*(v94 + 36)];
      *v76 = v75;
      *(v76 + 1) = v77;
      *(v76 + 2) = v78;
      *(v76 + 3) = v79;
      *(v76 + 4) = v80;
      v76[40] = 0;
      v81 = v91;
      sub_2587C3CA8(v35, v91, sub_2587A7820);
      v82 = v95;
      sub_2587C3CA8(v73, v95, sub_2587A7D6C);
      v83 = v97;
      sub_2587C3D10(v74, v97, sub_2587C25A4);
      v84 = v96;
      sub_2587C3CA8(v81, v96, sub_2587A7820);
      sub_2587A7774();
      v86 = v85;
      sub_2587C3CA8(v82, v84 + *(v85 + 48), sub_2587A7D6C);
      sub_2587C3D10(v83, v84 + *(v86 + 64), sub_2587C25A4);
      sub_2587C3D78(v74, sub_2587C25A4);
      sub_2587C50B0(v73, sub_2587A7D6C);
      sub_2587C50B0(v98, sub_2587A7820);
      sub_2587C3D78(v83, sub_2587C25A4);
      sub_2587C50B0(v82, sub_2587A7D6C);
      return sub_2587C50B0(v81, sub_2587A7820);
    }

    if ([v33 isShowWhenLockedVisible])
    {
    }

    else
    {
      v36 = [v33 isShareDuringEmergencyCallVisible];

      if (!v36)
      {
        goto LABEL_4;
      }
    }

    v37 = *v32;
    sub_2587B5F90(v20);
    sub_25885C670(v20, v25);
    LOBYTE(v37) = sub_2588BCBA8();
    sub_2588BBE38();
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;
    sub_2587A7904(0);
    v47 = &v25[*(v46 + 36)];
    *v47 = v37;
    *(v47 + 1) = v39;
    *(v47 + 2) = v41;
    *(v47 + 3) = v43;
    *(v47 + 4) = v45;
    v47[40] = 0;
    sub_2587C3CA8(v32, &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MedicalIDDataContentView);
    v48 = (*(v89 + 80) + 16) & ~*(v89 + 80);
    v49 = swift_allocObject();
    sub_2587C51BC(&v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v49 + v48, type metadata accessor for MedicalIDDataContentView);
    sub_2587A78BC(0);
    v51 = &v25[*(v50 + 36)];
    *v51 = sub_2587C1CF0;
    *(v51 + 1) = 0;
    *(v51 + 2) = sub_2587C4A1C;
    *(v51 + 3) = v49;
    v52 = sub_2588BD5C8();
    v54 = v53;
    sub_2587C1DAC(v32, &v100);
    v55 = v107;
    v56 = v106;
    v57 = v107;
    v109[6] = v106;
    v109[7] = v107;
    v58 = v108;
    v59 = v108;
    v109[8] = v108;
    v60 = v102;
    v61 = v103;
    v62 = v102;
    v63 = v103;
    v109[2] = v102;
    v109[3] = v103;
    v65 = v104;
    v64 = v105;
    v67 = v104;
    v66 = v105;
    v109[4] = v104;
    v109[5] = v105;
    *&v110 = v52;
    *(&v110 + 1) = v54;
    v68 = &v25[*(v22 + 36)];
    *(v68 + 6) = v106;
    *(v68 + 7) = v55;
    v69 = v110;
    *(v68 + 8) = v58;
    *(v68 + 9) = v69;
    *(v68 + 2) = v60;
    *(v68 + 3) = v61;
    *(v68 + 4) = v65;
    *(v68 + 5) = v64;
    v70 = v101;
    v72 = v100;
    v71 = v101;
    v109[0] = v100;
    v109[1] = v101;
    *v68 = v100;
    *(v68 + 1) = v70;
    v111[6] = v56;
    v111[7] = v57;
    v111[8] = v59;
    v111[2] = v62;
    v111[3] = v63;
    v111[4] = v67;
    v111[5] = v66;
    v111[0] = v72;
    v111[1] = v71;
    v112 = v52;
    v113 = v54;
    sub_2587C3CA8(v109, &v99, sub_2587A79DC);
    sub_2587C50B0(v111, sub_2587A79DC);
    v35 = v98;
    sub_2587C4AB8(v25, v98);
    (*(v90 + 56))(v35, 0, 1, v22);
    goto LABEL_9;
  }

  v88 = *(v31 + 1);
  sub_25878E130(0, &qword_27F95D3C0, off_2798A65E8);
  sub_2587BC2A8();
  result = sub_2588BC348();
  __break(1u);
  return result;
}

uint64_t sub_2587BFBE8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2588BBF18();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v37 - v9;
  v11 = sub_2588BD4A8();
  v38 = *(v11 - 8);
  v39 = v11;
  v12 = *(v38 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587C257C(0);
  v41 = v15;
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v37 - v20;
  sub_2587C24E0(0, &qword_27F95DB90, MEMORY[0x277CE0330]);
  v40 = v22;
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = v37 - v24;
  v26 = v1 + *(type metadata accessor for MedicalIDDataContentView() + 24);
  if (*v26)
  {
    if ([*v26 isLockScreen])
    {
      v27 = sub_2588BD198();
      sub_2588BD5C8();
      sub_2588BC018();
      v28 = v42;
      v29 = v43;
      v30 = v44;
      v31 = v45;
      *v25 = v27;
      *(v25 + 1) = v28;
      v25[16] = v29;
      *(v25 + 3) = v30;
      v25[32] = v31;
      *(v25 + 40) = v46;
      swift_storeEnumTagMultiPayload();
      sub_2587A8384(0, &qword_27F95D270, MEMORY[0x277CE0F78], MEMORY[0x277CDF688], MEMORY[0x277CDFAB8]);
      sub_2587C4F14();
      sub_2587C4FB8();
      return sub_2588BC778();
    }

    else
    {
      sub_2588BD498();
      sub_2587BCE84(v10);
      (*(v4 + 104))(v8, *MEMORY[0x277CDF3C0], v3);
      v33 = sub_2588BBF08();
      v37[1] = a1;
      v34 = *(v4 + 8);
      v34(v8, v3);
      v34(v10, v3);
      if (v33)
      {
        v35 = 1.0;
      }

      else
      {
        v35 = 0.0;
      }

      (*(v38 + 32))(v19, v14, v39);
      *&v19[*(v41 + 36)] = v35;
      sub_2587C51BC(v19, v21, sub_2587C257C);
      sub_2587C3CA8(v21, v25, sub_2587C257C);
      swift_storeEnumTagMultiPayload();
      sub_2587A8384(0, &qword_27F95D270, MEMORY[0x277CE0F78], MEMORY[0x277CDF688], MEMORY[0x277CDFAB8]);
      sub_2587C4F14();
      sub_2587C4FB8();
      sub_2588BC778();
      return sub_2587C50B0(v21, sub_2587C257C);
    }
  }

  else
  {
    v36 = *(v26 + 8);
    sub_25878E130(0, &qword_27F95D3C0, off_2798A65E8);
    sub_2587BC2A8();
    result = sub_2588BC348();
    __break(1u);
  }

  return result;
}