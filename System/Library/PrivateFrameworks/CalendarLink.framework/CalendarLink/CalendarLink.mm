uint64_t sub_2427C2238(void *a1)
{
  v2 = *(*(sub_2428B2978() - 8) + 64);
  MEMORY[0x28223BE20]();
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3240, &qword_2428BBF00) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = v18 - v4;
  v6 = sub_2428B3BB8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1;
  sub_2428B3BC8();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_2427E0980(v5, &qword_27ECC3240, &qword_2428BBF00);
    return 0;
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    v13 = sub_2428B3B08();
    v15 = v14;
    v18[0] = MEMORY[0x277D84F90];
    sub_2427C2574();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3658, &qword_2428BD4D8);
    sub_2427C2710();
    sub_2428B4938();
    v18[0] = v13;
    v18[1] = v15;
    v16 = objc_allocWithZone(sub_2428B41D8());
    sub_2427C2774();
    v17 = sub_2428B41C8();
    (*(v7 + 8))(v10, v6);
    return v17;
  }
}

void sub_2427C24B8(void *a1, uint64_t a2, void *a3)
{
  v7 = a1;
  if (a3)
  {
    v4 = a3;
    if ([v4 isIntegrationEvent])
    {
      if (([v4 isReminderIntegrationEvent] & 1) == 0)
      {
        goto LABEL_5;
      }

      v5 = sub_242835730(v4);
      if (!v5)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v5 = sub_2427C2238(v4);
      if (!v5)
      {
LABEL_5:

        goto LABEL_9;
      }
    }

    v6 = v5;
    sub_2428B48C8();
  }

  else
  {
    sub_2428B48B8();
  }

LABEL_9:
}

unint64_t sub_2427C2574()
{
  result = qword_280CDE100;
  if (!qword_280CDE100)
  {
    sub_2428B2978();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE100);
  }

  return result;
}

uint64_t sub_2427C25EC(void *a1)
{
  v2 = sub_2428B2978();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1;
  sub_2428B2968();
  sub_2428B48A8();

  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_2427C2710()
{
  result = qword_280CDDA30;
  if (!qword_280CDDA30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECC3658, &qword_2428BD4D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDA30);
  }

  return result;
}

unint64_t sub_2427C2774()
{
  result = qword_280CDE3C0;
  if (!qword_280CDE3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE3C0);
  }

  return result;
}

unint64_t sub_2427C27CC()
{
  result = qword_280CDE550;
  if (!qword_280CDE550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE550);
  }

  return result;
}

unint64_t sub_2427C2824()
{
  result = qword_280CDE528;
  if (!qword_280CDE528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE528);
  }

  return result;
}

unint64_t sub_2427C2884()
{
  result = qword_280CDE520;
  if (!qword_280CDE520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE520);
  }

  return result;
}

unint64_t sub_2427C28E0()
{
  result = qword_280CDE540;
  if (!qword_280CDE540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE540);
  }

  return result;
}

unint64_t sub_2427C2938()
{
  result = qword_280CDE538;
  if (!qword_280CDE538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE538);
  }

  return result;
}

unint64_t sub_2427C2990()
{
  result = qword_280CDE510;
  if (!qword_280CDE510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE510);
  }

  return result;
}

unint64_t sub_2427C29E4()
{
  result = qword_280CDE508;
  if (!qword_280CDE508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE508);
  }

  return result;
}

unint64_t sub_2427C2A3C()
{
  result = qword_280CDE500;
  if (!qword_280CDE500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE500);
  }

  return result;
}

uint64_t sub_2427C2B44@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_2428B2DE8();
  *a2 = result;
  return result;
}

uint64_t sub_2427C2B70@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_2428B2DE8();
  *a2 = result;
  return result;
}

uint64_t sub_2427C2BAC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_2428B28E8();
  *a2 = v5;
  return result;
}

double sub_2427C2BEC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  sub_2428B2DC8();
  *a2 = v5;
  result = *&v6;
  *(a2 + 8) = v6;
  return result;
}

uint64_t sub_2427C2C34@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_2428B2DC8();
  *a2 = v5;
  return result;
}

uint64_t sub_2427C3060@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_2428B2C68();
  *a2 = v5;
  a2[1] = v6;
  return result;
}

double sub_2427C30A0@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 8);
  sub_2428B2C68();
  result = *&v5;
  *a2 = v5;
  return result;
}

double sub_2427C30E0@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 16);
  sub_2428B2C68();
  result = *&v5;
  *a2 = v5;
  return result;
}

double sub_2427C3120@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 24);
  sub_2428B2C68();
  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_2427C3188@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 40);
  result = sub_2428B2C68();
  *a2 = v5;
  return result;
}

uint64_t sub_2427C32D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2428B3E28();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2427C3344(uint64_t a1, uint64_t a2)
{
  v4 = sub_2428B3E28();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

double sub_2427C3448@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  sub_2428B4378();
  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_2427C34D8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 24);
  result = sub_2428B4378();
  *a2 = v5;
  return result;
}

double sub_2427C3518@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 32);
  sub_2428B4378();
  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_2427C3580@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 48);
  result = sub_2428B4378();
  *a2 = v5;
  return result;
}

uint64_t sub_2427C35C0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 56);
  result = sub_2428B4378();
  *a2 = v5;
  return result;
}

uint64_t sub_2427C3600@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 64);
  result = sub_2428B4378();
  *a2 = v5;
  return result;
}

uint64_t sub_2427C3640@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 72);
  result = sub_2428B4378();
  *a2 = v5;
  return result;
}

uint64_t sub_2427C3680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 80);
  result = sub_2428B4378();
  *a2 = v5;
  *(a2 + 8) = v6;
  return result;
}

__n128 sub_2427C3718@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 48);
  sub_2428B2DC8();
  a2[2] = v7;
  a2[3] = v8;
  a2[4] = v9;
  result = v6;
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_2427C3778@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_2428B2DE8();
  *a2 = result;
  return result;
}

double sub_2427C37D4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 8);
  sub_2428B2DC8();
  a2[6] = v11;
  a2[7] = v12;
  a2[8] = v13;
  a2[9] = v14;
  a2[2] = v7;
  a2[3] = v8;
  a2[4] = v9;
  a2[5] = v10;
  result = *&v5;
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_2427C3940@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_2428B2C68();
  *a2 = v5;
  return result;
}

uint64_t sub_2427C3980@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_2428B2C68();
  *a2 = v5;
  return result;
}

double sub_2427C39C0@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 24);
  sub_2428B2C68();
  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_2427C3A00@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 32);
  result = sub_2428B2C68();
  *a2 = v5;
  return result;
}

uint64_t sub_2427C3C00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE0, &qword_2428B6560);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_2427C3CC8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE0, &qword_2428B6560);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2427C3D7C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_2428B4378();
  *a2 = v5;
  return result;
}

double sub_2427C3DBC@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 8);
  sub_2428B4378();
  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_2427C3E4C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 32);
  result = sub_2428B4378();
  *a2 = v5;
  return result;
}

double sub_2427C3E8C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 40);
  sub_2428B4378();
  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_2427C3EF4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 56);
  result = sub_2428B4378();
  *a2 = v5;
  return result;
}

uint64_t sub_2427C3F34@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 64);
  result = sub_2428B4378();
  *a2 = v5;
  return result;
}

uint64_t sub_2427C3F74@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 72);
  result = sub_2428B4378();
  *a2 = v5;
  return result;
}

uint64_t sub_2427C3FB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 80);
  result = sub_2428B4378();
  *a2 = v5;
  *(a2 + 8) = v6;
  return result;
}

double sub_2427C3FFC@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 88);
  sub_2428B4378();
  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_2427C403C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 96);
  result = sub_2428B4378();
  *a2 = v5;
  return result;
}

uint64_t sub_2427C40A4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 112);
  result = sub_2428B4378();
  *a2 = v5;
  return result;
}

uint64_t sub_2427C40E4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 120);
  result = sub_2428B4378();
  *a2 = v5;
  return result;
}

uint64_t sub_2427C4124@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_2428B2DE8();
  *a2 = result;
  return result;
}

uint64_t sub_2427C4180@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_2428B28E8();
  *a2 = v5;
  return result;
}

double sub_2427C41C0@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 16);
  sub_2428B2DC8();
  a2[6] = v11;
  a2[7] = v12;
  a2[8] = v13;
  a2[9] = v14;
  a2[2] = v7;
  a2[3] = v8;
  a2[4] = v9;
  a2[5] = v10;
  result = *&v5;
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_2427C42F0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 32);
  result = sub_2428B2C88();
  *a2 = result;
  return result;
}

uint64_t sub_2427C431C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 40);
  result = sub_2428B2C88();
  *a2 = result;
  return result;
}

uint64_t sub_2427C4348@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 48);
  result = sub_2428B2C88();
  *a2 = result;
  return result;
}

uint64_t sub_2427C4390@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_2428B2DE8();
  *a2 = result;
  return result;
}

uint64_t sub_2427C44F4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_2428B28E8();
  *a2 = v5;
  return result;
}

uint64_t sub_2427C4534@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_2428B2DC8();
  *a2 = v5;
  return result;
}

uint64_t sub_2427C4574@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_2428B2DC8();
  *a2 = v5;
  return result;
}

double sub_2427C4658@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  sub_2428B2C68();
  result = *&v5;
  *a2 = v5;
  return result;
}

double sub_2427C4698@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 8);
  sub_2428B2C68();
  result = *&v5;
  *a2 = v5;
  return result;
}

double sub_2427C46D8@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 16);
  sub_2428B2C68();
  result = *&v5;
  *a2 = v5;
  return result;
}

double sub_2427C4718@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v3 = *(a1 + 24);
  sub_2428B2C68();
  result = v5;
  *a2 = v5;
  return result;
}

uint64_t sub_2427C4758@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 32);
  result = sub_2428B2C68();
  *a2 = v5;
  return result;
}

double sub_2427C4798@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 40);
  sub_2428B2C68();
  result = *&v5;
  *a2 = v5;
  return result;
}

double sub_2427C47D8@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 48);
  sub_2428B2C68();
  result = *&v5;
  *a2 = v5;
  return result;
}

double sub_2427C4818@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  sub_2428B2C68();
  result = v5;
  *a2 = v5;
  return result;
}

double sub_2427C4858@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v3 = *(a1 + 8);
  sub_2428B2C68();
  result = v5;
  *a2 = v5;
  return result;
}

uint64_t sub_2427C4B24@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_2428B2DE8();
  *a2 = result;
  return result;
}

uint64_t sub_2427C4C84@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_2428B28E8();
  *a2 = v5;
  return result;
}

double sub_2427C4CC4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 8);
  sub_2428B2DC8();
  a2[6] = v11;
  a2[7] = v12;
  a2[8] = v13;
  a2[9] = v14;
  a2[2] = v7;
  a2[3] = v8;
  a2[4] = v9;
  a2[5] = v10;
  result = *&v5;
  *a2 = v5;
  a2[1] = v6;
  return result;
}

double sub_2427C4D24@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 16);
  sub_2428B2DC8();
  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_2427C4DB4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 40);
  result = sub_2428B2DC8();
  *a2 = v5;
  return result;
}

__n128 sub_2427C4DF4@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 48);
  sub_2428B2DC8();
  a2[2] = v7;
  a2[3] = v8;
  a2[4] = v9;
  result = v6;
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_2427C4E44@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 56);
  result = sub_2428B2DC8();
  *a2 = v5;
  return result;
}

uint64_t sub_2427C4E84@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 64);
  result = sub_2428B2DC8();
  *a2 = v5;
  return result;
}

uint64_t sub_2427C4EC4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 72);
  result = sub_2428B2DC8();
  *a2 = v5;
  return result;
}

double sub_2427C4F04@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 88);
  sub_2428B2DC8();
  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_2427C4F6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 104);
  result = sub_2428B2DC8();
  *a2 = v5;
  *(a2 + 8) = v6;
  return result;
}

uint64_t sub_2427C4FDC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 128);
  result = sub_2428B2DC8();
  *a2 = v5;
  return result;
}

uint64_t sub_2427C501C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 136);
  result = sub_2428B2DC8();
  *a2 = v5;
  return result;
}

uint64_t sub_2427C505C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 144);
  result = sub_2428B2DC8();
  *a2 = v5;
  return result;
}

uint64_t sub_2427C5168@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_2428B2DE8();
  *a2 = result;
  return result;
}

uint64_t sub_2427C5194@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 24);
  result = sub_2428B2DE8();
  *a2 = result;
  return result;
}

uint64_t sub_2427C51C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 32);
  result = sub_2428B2DE8();
  *a2 = result;
  return result;
}

uint64_t sub_2427C51EC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 40);
  result = sub_2428B2DE8();
  *a2 = result;
  return result;
}

uint64_t sub_2427C521C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 56);
  result = sub_2428B2DE8();
  *a2 = result;
  return result;
}

uint64_t sub_2427C5248@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 64);
  result = sub_2428B2DE8();
  *a2 = result;
  return result;
}

uint64_t sub_2427C5274@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 72);
  result = sub_2428B2DE8();
  *a2 = result;
  return result;
}

uint64_t sub_2427C52A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 136);
  result = sub_2428B2DE8();
  *a2 = result;
  return result;
}

uint64_t sub_2427C52CC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 80);
  result = sub_2428B2DE8();
  *a2 = result;
  return result;
}

uint64_t sub_2427C52F8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 88);
  result = sub_2428B2DE8();
  *a2 = result;
  return result;
}

uint64_t sub_2427C5324@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 144);
  result = sub_2428B2DE8();
  *a2 = result;
  return result;
}

uint64_t sub_2427C53F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2428B3838();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2427C545C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2428B3838();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2427C55B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2428B3988();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2427C561C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2428B3988();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2427C5784@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_2428B2C68();
  *a2 = v5;
  return result;
}

uint64_t sub_2427C57C4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_2428B2C68();
  *a2 = v5;
  return result;
}

uint64_t sub_2427C5804@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_2428B2C68();
  *a2 = v5;
  return result;
}

double sub_2427C5844@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 24);
  sub_2428B2C68();
  result = *&v5;
  *a2 = v5;
  return result;
}

double sub_2427C5884@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 32);
  sub_2428B2C68();
  result = *&v5;
  *a2 = v5;
  return result;
}

double sub_2427C58C4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 40);
  sub_2428B2C68();
  result = *&v5;
  *a2 = v5;
  return result;
}

double sub_2427C5904@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 48);
  sub_2428B2C68();
  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_2427C5ABC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_2428B2DE8();
  *a2 = result;
  return result;
}

uint64_t sub_2427C5B84@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_2428B28E8();
  *a2 = v5;
  return result;
}

uint64_t sub_2427C5BC4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_2428B28E8();
  *a2 = v5;
  return result;
}

uint64_t sub_2427C5C04@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_2428B28E8();
  *a2 = v5;
  return result;
}

uint64_t sub_2427C5C48@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 24);
  result = sub_2428B2DE8();
  *a2 = result;
  return result;
}

double sub_2427C5CA4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 8);
  sub_2428B2DC8();
  result = *&v5;
  *a2 = v5;
  return result;
}

double sub_2427C5CE4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 16);
  sub_2428B2DC8();
  result = *&v5;
  *a2 = v5;
  return result;
}

double sub_2427C5D24@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 24);
  sub_2428B2DC8();
  a2[6] = v11;
  a2[7] = v12;
  a2[8] = v13;
  a2[9] = v14;
  a2[2] = v7;
  a2[3] = v8;
  a2[4] = v9;
  a2[5] = v10;
  result = *&v5;
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_2427C5E20@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_2428B28E8();
  *a2 = v5;
  return result;
}

uint64_t sub_2427C5E60@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 48);
  result = sub_2428B2C68();
  *a2 = v5;
  a2[1] = v6;
  return result;
}

double sub_2427C5EA0@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 56);
  sub_2428B2C68();
  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_2427C5EE0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 64);
  result = sub_2428B2C68();
  *a2 = v5;
  return result;
}

double sub_2427C5F20@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 72);
  sub_2428B2C68();
  result = *&v5;
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_2427C5F68@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_2428B2DE8();
  *a2 = result;
  return result;
}

uint64_t sub_2427C5F94@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_2428B2DE8();
  *a2 = result;
  return result;
}

uint64_t sub_2427C5FC0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 24);
  result = sub_2428B2DE8();
  *a2 = result;
  return result;
}

__n128 sub_2427C5FF4@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 40);
  sub_2428B2DC8();
  a2[2] = v7;
  a2[3] = v8;
  a2[4] = v9;
  result = v6;
  *a2 = v5;
  a2[1] = v6;
  return result;
}

double sub_2427C6044@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 64);
  sub_2428B2DC8();
  *a2 = v5;
  *(a2 + 16) = v6;
  result = *&v7;
  *(a2 + 32) = v7;
  *(a2 + 48) = v8;
  return result;
}

uint64_t sub_2427C6094@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 88);
  result = sub_2428B2DC8();
  *a2 = v5;
  return result;
}

uint64_t sub_2427C60D4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 104);
  result = sub_2428B2DC8();
  *a2 = v5;
  return result;
}

uint64_t sub_2427C6114@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 112);
  result = sub_2428B2DC8();
  *a2 = v5;
  return result;
}

uint64_t sub_2427C6154@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 120);
  result = sub_2428B2DC8();
  *a2 = v5;
  *(a2 + 8) = v6;
  return result;
}

double sub_2427C61C4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 136);
  sub_2428B2DC8();
  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_2427C62D0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 32);
  result = sub_2428B2DE8();
  *a2 = result;
  return result;
}

uint64_t sub_2427C62FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 48);
  result = sub_2428B2DE8();
  *a2 = result;
  return result;
}

uint64_t sub_2427C6328@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 56);
  result = sub_2428B2DE8();
  *a2 = result;
  return result;
}

uint64_t sub_2427C6354@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 72);
  result = sub_2428B2DE8();
  *a2 = result;
  return result;
}

uint64_t sub_2427C6380@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 80);
  result = sub_2428B2DE8();
  *a2 = result;
  return result;
}

uint64_t sub_2427C63AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 96);
  result = sub_2428B2DE8();
  *a2 = result;
  return result;
}

uint64_t sub_2427C63D8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_2428B2DE8();
  *a2 = result;
  return result;
}

uint64_t sub_2427C6534@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_2428B28E8();
  *a2 = v5;
  return result;
}

double sub_2427C6574@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 8);
  sub_2428B2DC8();
  a2[6] = v11;
  a2[7] = v12;
  a2[8] = v13;
  a2[9] = v14;
  a2[2] = v7;
  a2[3] = v8;
  a2[4] = v9;
  a2[5] = v10;
  result = *&v5;
  *a2 = v5;
  a2[1] = v6;
  return result;
}

double sub_2427C65D4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 16);
  sub_2428B2DC8();
  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_2427C6664@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 40);
  result = sub_2428B2DC8();
  *a2 = v5;
  return result;
}

__n128 sub_2427C66A4@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 48);
  sub_2428B2DC8();
  a2[2] = v7;
  a2[3] = v8;
  a2[4] = v9;
  result = v6;
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_2427C66F4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 56);
  result = sub_2428B2DC8();
  *a2 = v5;
  return result;
}

uint64_t sub_2427C6734@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 64);
  result = sub_2428B2DC8();
  *a2 = v5;
  return result;
}

uint64_t sub_2427C6774@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 72);
  result = sub_2428B2DC8();
  *a2 = v5;
  return result;
}

uint64_t sub_2427C67B4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 80);
  result = sub_2428B2DC8();
  *a2 = v5;
  return result;
}

uint64_t sub_2427C67F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 88);
  result = sub_2428B2DC8();
  *a2 = v5;
  return result;
}

double sub_2427C6834@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 96);
  sub_2428B2DC8();
  result = *&v5;
  *a2 = v5;
  return result;
}

double sub_2427C6874@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 104);
  sub_2428B2DC8();
  *a2 = v5;
  *(a2 + 16) = v6;
  result = *&v7;
  *(a2 + 32) = v7;
  *(a2 + 48) = v8;
  return result;
}

double sub_2427C68C4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 112);
  sub_2428B2DC8();
  result = *&v5;
  *a2 = v5;
  return result;
}

__n128 sub_2427C6904@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 120);
  sub_2428B2DC8();
  a2[2] = v7;
  a2[3] = v8;
  a2[4] = v9;
  result = v6;
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_2427C6954@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 128);
  result = sub_2428B2DC8();
  *a2 = v5;
  *(a2 + 8) = v6;
  return result;
}

uint64_t sub_2427C699C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 136);
  result = sub_2428B2DC8();
  *a2 = v5;
  return result;
}

uint64_t sub_2427C6A04@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 152);
  result = sub_2428B2DC8();
  *a2 = v5;
  return result;
}

double sub_2427C6A44@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 160);
  sub_2428B2DC8();
  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_2427C6A84@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 168);
  result = sub_2428B2DC8();
  *a2 = v5;
  return result;
}

uint64_t sub_2427C6B90@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_2428B2DE8();
  *a2 = result;
  return result;
}

uint64_t sub_2427C6BBC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 24);
  result = sub_2428B2DE8();
  *a2 = result;
  return result;
}

uint64_t sub_2427C6BE8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 32);
  result = sub_2428B2DE8();
  *a2 = result;
  return result;
}

uint64_t sub_2427C6C14@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 40);
  result = sub_2428B2DE8();
  *a2 = result;
  return result;
}

uint64_t sub_2427C6C40@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 48);
  result = sub_2428B2DE8();
  *a2 = result;
  return result;
}

uint64_t sub_2427C6C6C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 56);
  result = sub_2428B2DE8();
  *a2 = result;
  return result;
}

uint64_t sub_2427C6C98@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 64);
  result = sub_2428B2DE8();
  *a2 = result;
  return result;
}

uint64_t sub_2427C6CC4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 72);
  result = sub_2428B2DE8();
  *a2 = result;
  return result;
}

uint64_t sub_2427C6CF0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 80);
  result = sub_2428B2DE8();
  *a2 = result;
  return result;
}

uint64_t sub_2427C6D1C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 96);
  result = sub_2428B2DE8();
  *a2 = result;
  return result;
}

uint64_t sub_2427C6D48@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 112);
  result = sub_2428B2DE8();
  *a2 = result;
  return result;
}

uint64_t sub_2427C6D74@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 168);
  result = sub_2428B2DE8();
  *a2 = result;
  return result;
}

uint64_t sub_2427C6DA0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_2428B2DE8();
  *a2 = result;
  return result;
}

uint64_t sub_2427C6EFC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_2428B28E8();
  *a2 = v5;
  return result;
}

uint64_t sub_2427C6F3C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_2428B2DC8();
  *a2 = v5;
  return result;
}

uint64_t sub_2427C6F7C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_2428B2DC8();
  *a2 = v5;
  return result;
}

uint64_t sub_2427C7000@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_2428B2DE8();
  *a2 = result;
  return result;
}

double sub_2427C7054@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 8);
  sub_2428B2DC8();
  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_2427C7094@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_2428B2DC8();
  *a2 = v5;
  return result;
}

uint64_t sub_2427C70D8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_2428B28E8();
  *a2 = v5;
  return result;
}

uint64_t sub_2427C7118@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_2428B28E8();
  *a2 = v5;
  return result;
}

uint64_t sub_2427C7158@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_2428B28E8();
  *a2 = v5;
  return result;
}

uint64_t sub_2427C719C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_2428B28E8();
  *a2 = v5;
  return result;
}

uint64_t sub_2427C7228@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_2428B2DC8();
  *a2 = v5;
  a2[1] = v6;
  return result;
}

double sub_2427C7268@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 16);
  sub_2428B2DC8();
  result = *&v5;
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_2427C7370(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3BF0, &unk_2428BEF00);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2427C73E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3BF0, &unk_2428BEF00);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2427C7A14@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 24);
  result = sub_2428B2C68();
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_2427C7AA8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = sub_2428B2C68();
  *a2 = v5;
  *(a2 + 8) = v6;
  return result;
}

uint64_t sub_2427C7B18@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_2428B2C68();
  *a2 = v5;
  return result;
}

uint64_t sub_2427C7B58@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_2428B2DE8();
  *a2 = result;
  return result;
}

uint64_t sub_2427C7BB4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_2428B28E8();
  *a2 = v5;
  return result;
}

double sub_2427C7BF4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 16);
  sub_2428B2DC8();
  a2[6] = v11;
  a2[7] = v12;
  a2[8] = v13;
  a2[9] = v14;
  a2[2] = v7;
  a2[3] = v8;
  a2[4] = v9;
  a2[5] = v10;
  result = *&v5;
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_2427C7C9C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 48);
  result = sub_2428B2DE8();
  *a2 = result;
  return result;
}

uint64_t sub_2427C7CC8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 48);
  result = sub_2428B2DE8();
  *a2 = result;
  return result;
}

uint64_t sub_2427C7CF4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_2428B2DE8();
  *a2 = result;
  return result;
}

uint64_t sub_2427C7D20@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_2428B2DE8();
  *a2 = result;
  return result;
}

uint64_t sub_2427C7D4C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 24);
  result = sub_2428B2DE8();
  *a2 = result;
  return result;
}

uint64_t sub_2427C7DAC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 88);
  result = sub_2428B2DC8();
  *a2 = v5;
  return result;
}

uint64_t sub_2427C7DEC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 96);
  result = sub_2428B2DC8();
  *a2 = v5;
  return result;
}

uint64_t sub_2427C7E2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 104);
  result = sub_2428B2DC8();
  *a2 = v5;
  *(a2 + 8) = v6;
  return result;
}

double sub_2427C7E9C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 120);
  sub_2428B2DC8();
  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_2427C7FA8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 32);
  result = sub_2428B2DE8();
  *a2 = result;
  return result;
}

uint64_t sub_2427C7FD4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 56);
  result = sub_2428B2DE8();
  *a2 = result;
  return result;
}

uint64_t sub_2427C8000@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 64);
  result = sub_2428B2DE8();
  *a2 = result;
  return result;
}

uint64_t sub_2427C802C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 72);
  result = sub_2428B2DE8();
  *a2 = result;
  return result;
}

uint64_t sub_2427C8058@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 80);
  result = sub_2428B2DE8();
  *a2 = result;
  return result;
}

uint64_t sub_2427C8084@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_2428B2DE8();
  *a2 = result;
  return result;
}

uint64_t sub_2427C80E0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_2428B28E8();
  *a2 = v5;
  return result;
}

__n128 sub_2427C8120@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 16);
  sub_2428B2DC8();
  a2[2] = v7;
  a2[3] = v8;
  a2[4] = v9;
  result = v6;
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_2427C8170@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 24);
  result = sub_2428B2DC8();
  *a2 = v5;
  return result;
}

uint64_t sub_2427C8238@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_2428B2DE8();
  *a2 = result;
  return result;
}

uint64_t sub_2427C8338@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_2428B2DE8();
  *a2 = result;
  return result;
}

uint64_t sub_2427C8364@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_2428B2DE8();
  *a2 = result;
  return result;
}

uint64_t sub_2427C83C0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_2428B2DC8();
  *a2 = v5;
  return result;
}

double sub_2427C846C@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  sub_2428B2C68();
  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_2427C84AC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_2428B2C68();
  *a2 = v5;
  return result;
}

uint64_t sub_2427C84EC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_2428B2C68();
  *a2 = v5;
  return result;
}

uint64_t sub_2427C852C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 24);
  result = sub_2428B2C68();
  *a2 = v5;
  return result;
}

uint64_t sub_2427C856C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 32);
  result = sub_2428B2C68();
  *a2 = v5;
  return result;
}

uint64_t sub_2427C85AC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 40);
  result = sub_2428B2C68();
  *a2 = v5;
  return result;
}

uint64_t sub_2427C85EC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 48);
  result = sub_2428B2C68();
  *a2 = v5;
  return result;
}

uint64_t sub_2427C862C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 56);
  result = sub_2428B2C68();
  *a2 = v5;
  return result;
}

uint64_t sub_2427C866C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 64);
  result = sub_2428B2C68();
  *a2 = v5;
  return result;
}

uint64_t sub_2427C86AC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 72);
  result = sub_2428B2C68();
  *a2 = v5;
  return result;
}

uint64_t sub_2427C8810@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_2428B2C68();
  *a2 = v5;
  return result;
}

uint64_t sub_2427C895C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_2428B2DE8();
  *a2 = result;
  return result;
}

uint64_t sub_2427C8990@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_2428B28E8();
  *a2 = v5;
  return result;
}

double sub_2427C89D0@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 8);
  sub_2428B2DC8();
  a2[6] = v11;
  a2[7] = v12;
  a2[8] = v13;
  a2[9] = v14;
  a2[2] = v7;
  a2[3] = v8;
  a2[4] = v9;
  a2[5] = v10;
  result = *&v5;
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_2427C8A9C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 24);
  result = sub_2428B2C68();
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_2427C8B2C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 48);
  result = sub_2428B2C68();
  *a2 = v5;
  return result;
}

double sub_2427C8B94@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 64);
  sub_2428B2C68();
  result = *&v5;
  *a2 = v5;
  return result;
}

double sub_2427C8BD4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 72);
  sub_2428B2C68();
  result = *&v5;
  *a2 = v5;
  return result;
}

__n128 sub_2427C8C64@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 104);
  sub_2428B2C68();
  a2[2] = v7;
  a2[3] = v8;
  a2[4] = v9;
  result = v6;
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_2427C8CB4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 112);
  result = sub_2428B2C68();
  *a2 = v5;
  return result;
}

uint64_t sub_2427C8D1C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 136);
  result = sub_2428B2C68();
  *a2 = v5;
  return result;
}

uint64_t sub_2427C8D5C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 144);
  result = sub_2428B2C68();
  *a2 = v5;
  return result;
}

uint64_t sub_2427C8F60@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_2428B2DE8();
  *a2 = result;
  return result;
}

uint64_t sub_2427C90BC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_2428B28E8();
  *a2 = v5;
  return result;
}

double sub_2427C90FC@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 8);
  sub_2428B2DC8();
  a2[6] = v11;
  a2[7] = v12;
  a2[8] = v13;
  a2[9] = v14;
  a2[2] = v7;
  a2[3] = v8;
  a2[4] = v9;
  a2[5] = v10;
  result = *&v5;
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_2427C915C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_2428B2DC8();
  *a2 = v5;
  return result;
}

uint64_t sub_2427C91E0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_2428B2DE8();
  *a2 = result;
  return result;
}

uint64_t sub_2427C920C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_2428B4378();
  *a2 = v5;
  return result;
}

double sub_2427C924C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 8);
  sub_2428B4378();
  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_2427C928C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_2428B4378();
  *a2 = v5;
  return result;
}

uint64_t sub_2427C931C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 40);
  result = sub_2428B4378();
  *a2 = v5;
  return result;
}

double sub_2427C935C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 48);
  sub_2428B4378();
  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_2427C939C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 56);
  result = sub_2428B4378();
  *a2 = v5;
  return result;
}

uint64_t sub_2427C93DC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 64);
  result = sub_2428B4378();
  *a2 = v5;
  return result;
}

uint64_t sub_2427C941C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 72);
  result = sub_2428B4378();
  *a2 = v5;
  return result;
}

uint64_t sub_2427C945C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 80);
  result = sub_2428B4378();
  *a2 = v5;
  return result;
}

uint64_t sub_2427C949C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 88);
  result = sub_2428B4378();
  *a2 = v5;
  return result;
}

uint64_t sub_2427C94DC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 96);
  result = sub_2428B4378();
  *a2 = v5;
  return result;
}

uint64_t sub_2427C951C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 104);
  result = sub_2428B4378();
  *a2 = v5;
  *(a2 + 8) = v6;
  return result;
}

uint64_t sub_2427C9564@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 112);
  result = sub_2428B4378();
  *a2 = v5;
  return result;
}

double sub_2427C95A4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 120);
  sub_2428B4378();
  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_2427C95E4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 128);
  result = sub_2428B4378();
  *a2 = v5;
  return result;
}

uint64_t sub_2427C964C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 144);
  result = sub_2428B4378();
  *a2 = v5;
  return result;
}

uint64_t sub_2427C968C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 152);
  result = sub_2428B4378();
  *a2 = v5;
  return result;
}

double sub_2427C96CC@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  sub_2428B4378();
  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_2427C970C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_2428B4378();
  *a2 = v5;
  return result;
}

uint64_t sub_2427C979C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 32);
  result = sub_2428B4378();
  *a2 = v5;
  return result;
}

double sub_2427C97DC@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 40);
  sub_2428B4378();
  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_2427C981C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 48);
  result = sub_2428B4378();
  *a2 = v5;
  return result;
}

uint64_t sub_2427C985C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 56);
  result = sub_2428B4378();
  *a2 = v5;
  return result;
}

uint64_t sub_2427C989C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 64);
  result = sub_2428B4378();
  *a2 = v5;
  return result;
}

uint64_t sub_2427C98DC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 72);
  result = sub_2428B4378();
  *a2 = v5;
  return result;
}

uint64_t sub_2427C991C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 80);
  result = sub_2428B4378();
  *a2 = v5;
  return result;
}

uint64_t sub_2427C995C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 88);
  result = sub_2428B4378();
  *a2 = v5;
  *(a2 + 8) = v6;
  return result;
}

uint64_t sub_2427C99A4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 96);
  result = sub_2428B4378();
  *a2 = v5;
  return result;
}

double sub_2427C99E4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 104);
  sub_2428B4378();
  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_2427C9A4C()
{
  MEMORY[0x245D1C0B0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2427C9A84()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2427C9AC4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2427C9AFC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2427C9D14@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2428B4258();
  *a1 = result;
  return result;
}

Class __getREMStoreClass_block_invoke(uint64_t a1)
{
  ReminderKitLibrary();
  result = objc_getClass("REMStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getREMStoreClass_block_invoke_cold_1();
  }

  getREMStoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void ReminderKitLibrary()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!ReminderKitLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __ReminderKitLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_278D6AFE0;
    v3 = 0;
    ReminderKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!ReminderKitLibraryCore_frameworkLibrary)
  {
    ReminderKitLibrary_cold_1(v1);
  }

  if (v1[0])
  {
    free(v1[0]);
  }

  v0 = *MEMORY[0x277D85DE8];
}

uint64_t __ReminderKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ReminderKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getREMObjectIDClass_block_invoke(uint64_t a1)
{
  ReminderKitLibrary();
  result = objc_getClass("REMObjectID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getREMObjectIDClass_block_invoke_cold_1();
  }

  getREMObjectIDClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t CalendarUIKitInternalLibraryCore()
{
  v2 = *MEMORY[0x277D85DE8];
  if (!CalendarUIKitInternalLibraryCore_frameworkLibrary)
  {
    CalendarUIKitInternalLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = CalendarUIKitInternalLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __CalendarUIKitInternalLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CalendarUIKitInternalLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __CalendarLinkAppleInternalLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CalendarLinkAppleInternalLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2427CACA4()
{
  v0 = sub_2428B3558();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(sub_2428B36C8() - 8) + 64);
  MEMORY[0x28223BE20]();
  v6 = *(*(sub_2428B45F8() - 8) + 64);
  MEMORY[0x28223BE20]();
  v7 = sub_2428B3568();
  __swift_allocate_value_buffer(v7, qword_27ECC1678);
  __swift_project_value_buffer(v7, qword_27ECC1678);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_2428B3588();
}

uint64_t static EmailOrganizerIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1670 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3568();
  v3 = __swift_project_value_buffer(v2, qword_27ECC1678);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2427CAF74()
{
  v0 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v2 = v14 - v1;
  v14[0] = sub_2428B3558();
  v3 = *(v14[0] - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(sub_2428B36C8() - 8) + 64);
  MEMORY[0x28223BE20]();
  v8 = *(*(sub_2428B45F8() - 8) + 64);
  MEMORY[0x28223BE20]();
  v9 = sub_2428B3568();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20]();
  v12 = sub_2428B3078();
  __swift_allocate_value_buffer(v12, qword_27ECC1698);
  __swift_project_value_buffer(v12, qword_27ECC1698);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v3 + 104))(v6, *MEMORY[0x277CC9110], v14[0]);
  sub_2428B3588();
  (*(v10 + 56))(v2, 1, 1, v9);
  return sub_2428B3088();
}

uint64_t static EmailOrganizerIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1690 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3078();
  v3 = __swift_project_value_buffer(v2, qword_27ECC1698);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static EmailOrganizerIntent.description.setter(uint64_t a1)
{
  if (qword_27ECC1690 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3078();
  v3 = __swift_project_value_buffer(v2, qword_27ECC1698);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static EmailOrganizerIntent.description.modify())()
{
  if (qword_27ECC1690 != -1)
  {
    swift_once();
  }

  v0 = sub_2428B3078();
  __swift_project_value_buffer(v0, qword_27ECC1698);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_2427CB4A4@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1690 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3078();
  v3 = __swift_project_value_buffer(v2, qword_27ECC1698);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_2427CB564(uint64_t a1)
{
  if (qword_27ECC1690 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3078();
  v3 = __swift_project_value_buffer(v2, qword_27ECC1698);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t EmailOrganizerIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2428B3298();
  v41 = *(v2 - 8);
  v42 = v2;
  v3 = *(v41 + 64);
  MEMORY[0x28223BE20](v2);
  v40 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1CA0, &unk_2428B5D80);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v39 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v38 = &v31 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v37 = &v31 - v12;
  v32 = sub_2428B3558();
  v13 = *(v32 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v32);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2428B36C8();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = sub_2428B45F8();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = sub_2428B3568();
  v33 = *(v21 - 8);
  v34 = v21;
  v22 = *(v33 + 64);
  MEMORY[0x28223BE20](v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2530, &qword_2428BD510);
  sub_2428B2958();
  v53 = 0u;
  v54 = 0u;
  *&v55 = 0;
  sub_2428B2948();
  v23 = sub_2428B2918();
  v36 = a1;
  *a1 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A50, &unk_2428B7870);
  *&v55 = 0;
  v53 = 0u;
  v54 = 0u;
  sub_2428B2948();
  a1[1] = sub_2428B2918();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2540, &qword_2428B5AE0);
  sub_2428B4578();
  sub_2428B36B8();
  v24 = *MEMORY[0x277CC9110];
  v25 = *(v13 + 104);
  v26 = v32;
  v25(v16, v24, v32);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v25(v16, v24, v26);
  v27 = v37;
  sub_2428B3578();
  (*(v33 + 56))(v27, 0, 1, v34);
  sub_2427CBC50(&v53);
  v49 = v59;
  v50 = v60;
  v51 = v61;
  v52 = v62;
  v45 = v55;
  v46 = v56;
  v47 = v57;
  v48 = v58;
  v43 = v53;
  v44 = v54;
  v28 = sub_2428B2AE8();
  v29 = *(*(v28 - 8) + 56);
  v29(v38, 1, 1, v28);
  v29(v39, 1, 1, v28);
  (*(v41 + 104))(v40, *MEMORY[0x277CBA308], v42);
  sub_2427C2774();
  result = sub_2428B2E68();
  v36[2] = result;
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

double sub_2427CBC50(_OWORD *a1)
{
  result = 0.0;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_2427CBCB4(uint64_t a1, uint64_t *a2)
{
  sub_2427CBD84(a1, v8);
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  sub_2427CBD84(v8, &v7);
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B28F8();
  __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t EmailOrganizerIntent.viewOpener.setter(uint64_t *a1)
{
  v3 = *v1;
  sub_2427CBD84(a1, v5);
  sub_2428B28F8();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2427CBD84(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t (*EmailOrganizerIntent.viewOpener.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_2428B28D8();
  return sub_2427CBEA8;
}

uint64_t EmailOrganizerIntent.eventStoreProvider.getter()
{
  v1 = *(v0 + 8);
  sub_2428B28E8();
  return v3;
}

uint64_t sub_2427CBF04@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_2428B28E8();
  *a2 = v5;
  return result;
}

uint64_t sub_2427CBF40(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = a2[2];
  v6 = *a1;
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  swift_unknownObjectRetain();
  sub_2428B28F8();
}

uint64_t EmailOrganizerIntent.eventStoreProvider.setter()
{
  v1 = *(v0 + 8);
  swift_unknownObjectRetain();
  sub_2428B28F8();
  return swift_unknownObjectRelease();
}

uint64_t (*EmailOrganizerIntent.eventStoreProvider.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_2428B28D8();
  return sub_2427CD67C;
}

double sub_2427CC0BC@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 16);
  sub_2428B2DC8();
  a2[6] = v11;
  a2[7] = v12;
  a2[8] = v13;
  a2[9] = v14;
  a2[2] = v7;
  a2[3] = v8;
  a2[4] = v9;
  a2[5] = v10;
  result = *&v5;
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_2427CC118(_OWORD *a1, uint64_t *a2)
{
  v2 = a1[7];
  v3 = a1[5];
  v22 = a1[6];
  v23 = v2;
  v4 = a1[7];
  v5 = a1[9];
  v24 = a1[8];
  v25 = v5;
  v6 = a1[3];
  v7 = a1[1];
  v18 = a1[2];
  v19 = v6;
  v8 = a1[3];
  v9 = a1[5];
  v20 = a1[4];
  v21 = v9;
  v10 = a1[1];
  v17[0] = *a1;
  v17[1] = v10;
  v16[16] = v22;
  v16[17] = v4;
  v11 = a1[9];
  v16[18] = v24;
  v16[19] = v11;
  v16[12] = v18;
  v16[13] = v8;
  v16[14] = v20;
  v16[15] = v3;
  v12 = *a2;
  v13 = a2[1];
  v14 = a2[2];
  v16[10] = v17[0];
  v16[11] = v7;
  sub_2427CD4FC(v17, v16);
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2DD8();
}

uint64_t EmailOrganizerIntent.target.setter(__int128 *a1)
{
  v10 = a1[6];
  v11 = a1[7];
  v12 = a1[8];
  v13 = a1[9];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  v4 = *a1;
  v5 = a1[1];
  v2 = *(v1 + 16);
  return sub_2428B2DD8();
}

uint64_t (*EmailOrganizerIntent.target.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 16);
  *(v3 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

void sub_2427CC2B0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t static EmailOrganizerIntent.parameterSummary.getter()
{
  v0 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A58, &qword_2428B5AE8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v1 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A60, &qword_2428B5AF0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  sub_2427CC4C0();
  sub_2428B3278();
  sub_2428B3268();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC1A70, &qword_2428B5B20);
  sub_2428B3258();

  sub_2428B3268();
  sub_2428B3288();
  return sub_2428B3238();
}

unint64_t sub_2427CC4C0()
{
  result = qword_27ECC1A68;
  if (!qword_27ECC1A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC1A68);
  }

  return result;
}

uint64_t sub_2427CC514@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_2428B2DE8();
  *a2 = result;
  return result;
}

uint64_t EmailOrganizerIntent.perform()(uint64_t a1)
{
  *(v2 + 424) = a1;
  *(v2 + 432) = *v1;
  *(v2 + 448) = *(v1 + 16);
  sub_2428B4758();
  *(v2 + 456) = sub_2428B4748();
  v4 = sub_2428B4728();
  *(v2 + 464) = v4;
  *(v2 + 472) = v3;

  return MEMORY[0x2822009F8](sub_2427CC5E8, v4, v3);
}

uint64_t sub_2427CC5E8()
{
  v1 = sub_2428B43D8();
  *(v0 + 360) = v1;
  *(v0 + 368) = sub_2427CCD68(&qword_280CDDA40, MEMORY[0x277CF7740]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 336));
  (*(*(v1 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277CF7730], v1);
  LOBYTE(v1) = sub_2428B37D8();
  __swift_destroy_boxed_opaque_existential_1((v0 + 336));
  if ((v1 & 1) == 0)
  {
    v27 = *(v0 + 456);

    sub_2428B2938();
    sub_2427CCD68(&qword_27ECC1A80, MEMORY[0x277CB9BB0]);
    swift_allocError();
    sub_2428B2928();
LABEL_11:
    swift_willThrow();
    goto LABEL_12;
  }

  v3 = *(v0 + 440);
  sub_2428B28E8();
  v4 = [*(v0 + 416) eventStore];
  *(v0 + 480) = v4;
  swift_unknownObjectRelease();
  if (!v4)
  {
    v28 = *(v0 + 456);

    sub_2427CCDB0();
    swift_allocError();
    *v29 = 24;
    goto LABEL_11;
  }

  v5 = *(v0 + 448);
  sub_2428B2DC8();
  v6 = *(v0 + 288);
  *(v0 + 112) = *(v0 + 272);
  *(v0 + 128) = v6;
  v7 = *(v0 + 320);
  *(v0 + 144) = *(v0 + 304);
  *(v0 + 160) = v7;
  v8 = *(v0 + 224);
  *(v0 + 48) = *(v0 + 208);
  *(v0 + 64) = v8;
  v9 = *(v0 + 256);
  *(v0 + 80) = *(v0 + 240);
  *(v0 + 96) = v9;
  v10 = *(v0 + 192);
  *(v0 + 16) = *(v0 + 176);
  *(v0 + 32) = v10;
  v11 = *(v0 + 16);
  v12 = *(v0 + 24);
  sub_2428B3218();
  sub_2427CCE04(v0 + 16);
  v13 = sub_2428B4608();

  v14 = [v4 eventWithAppEntityIdentifier_];
  *(v0 + 488) = v14;

  if (v14)
  {
    v15 = [v14 organizer];
    *(v0 + 496) = v15;
    if (v15)
    {
      v16 = v15;
      v17 = [v15 emailAddress];
      if (v17)
      {
        v18 = *(v0 + 432);

        sub_2428B28E8();
        v19 = *(v0 + 400);
        v20 = *(v0 + 408);
        __swift_project_boxed_opaque_existential_1((v0 + 376), v19);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A90, &unk_2428B5B30);
        v21 = swift_allocObject();
        *(v0 + 504) = v21;
        *(v21 + 16) = xmmword_2428B5A90;
        *(v21 + 32) = v16;
        v22 = *(v20 + 56);
        v23 = v16;
        v37 = (v22 + *v22);
        v24 = v22[1];
        v25 = swift_task_alloc();
        *(v0 + 512) = v25;
        *v25 = v0;
        v25[1] = sub_2427CCAC0;

        return v37(v14, v21, v19, v20);
      }

      v35 = *(v0 + 456);

      sub_2427CCDB0();
      swift_allocError();
      *v36 = 89;
      swift_willThrow();
    }

    else
    {
      v33 = *(v0 + 456);

      sub_2427CCDB0();
      swift_allocError();
      *v34 = 88;
      swift_willThrow();
    }
  }

  else
  {
    v31 = *(v0 + 456);

    sub_2427CCDB0();
    swift_allocError();
    *v32 = 25;
    swift_willThrow();
  }

LABEL_12:
  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_2427CCAC0()
{
  v2 = *v1;
  v3 = *(*v1 + 512);
  v9 = *v1;
  *(*v1 + 520) = v0;

  if (v0)
  {
    v4 = v2[58];
    v5 = v2[59];
    v6 = sub_2427CCC70;
  }

  else
  {
    v7 = v2[63];

    v4 = v2[58];
    v5 = v2[59];
    v6 = sub_2427CCBDC;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_2427CCBDC()
{
  v2 = v0[61];
  v1 = v0[62];
  v3 = v0[60];
  v4 = v0[57];
  v5 = v0[53];

  __swift_destroy_boxed_opaque_existential_1(v0 + 47);
  sub_2428B2C28();

  v6 = v0[1];

  return v6();
}

uint64_t sub_2427CCC70()
{
  v1 = *(v0 + 504);
  v3 = *(v0 + 480);
  v2 = *(v0 + 488);
  v4 = *(v0 + 456);

  __swift_destroy_boxed_opaque_existential_1((v0 + 376));
  v5 = *(v0 + 520);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_2427CCD68(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2427CCDB0()
{
  result = qword_27ECC1CF0;
  if (!qword_27ECC1CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC1CF0);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_2427CCEA0()
{
  result = qword_280CDDD08;
  if (!qword_280CDDD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDD08);
  }

  return result;
}

unint64_t sub_2427CCEF8()
{
  result = qword_280CDDD10;
  if (!qword_280CDDD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDD10);
  }

  return result;
}

uint64_t sub_2427CCF84@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1670 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3568();
  v3 = __swift_project_value_buffer(v2, qword_27ECC1678);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2427CD040()
{
  v0 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A58, &qword_2428B5AE8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v1 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A60, &qword_2428B5AF0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  sub_2428B3278();
  sub_2428B3268();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC1A70, &qword_2428B5B20);
  sub_2428B3258();

  sub_2428B3268();
  sub_2428B3288();
  return sub_2428B3238();
}

uint64_t sub_2427CD1DC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2427CD274;

  return EmailOrganizerIntent.perform()(a1);
}

uint64_t sub_2427CD274()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2427CD39C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_2427CD3E4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2427CD47C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_2427CD4EC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_2427CD5CC(uint64_t a1, int a2)
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

uint64_t sub_2427CD5EC(uint64_t result, int a2, int a3)
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

void sub_2427CD628(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_2427CD69C()
{
  v0 = sub_2428B3558();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(sub_2428B36C8() - 8) + 64);
  MEMORY[0x28223BE20]();
  v6 = *(*(sub_2428B45F8() - 8) + 64);
  MEMORY[0x28223BE20]();
  v7 = sub_2428B3568();
  __swift_allocate_value_buffer(v7, qword_27ECC1C50);
  __swift_project_value_buffer(v7, qword_27ECC1C50);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_2428B3588();
}

uint64_t sub_2427CD8B4()
{
  v0 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v2 = v14 - v1;
  v14[0] = sub_2428B3558();
  v3 = *(v14[0] - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(sub_2428B36C8() - 8) + 64);
  MEMORY[0x28223BE20]();
  v8 = *(*(sub_2428B45F8() - 8) + 64);
  MEMORY[0x28223BE20]();
  v9 = sub_2428B3568();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20]();
  v12 = sub_2428B3078();
  __swift_allocate_value_buffer(v12, qword_27ECC1C68);
  __swift_project_value_buffer(v12, qword_27ECC1C68);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v3 + 104))(v6, *MEMORY[0x277CC9110], v14[0]);
  sub_2428B3588();
  (*(v10 + 56))(v2, 1, 1, v9);
  return sub_2428B3088();
}

uint64_t static RespondToInboxItemIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC16B8 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3078();
  v3 = __swift_project_value_buffer(v2, qword_27ECC1C68);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static RespondToInboxItemIntent.description.setter(uint64_t a1)
{
  if (qword_27ECC16B8 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3078();
  v3 = __swift_project_value_buffer(v2, qword_27ECC1C68);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static RespondToInboxItemIntent.description.modify())()
{
  if (qword_27ECC16B8 != -1)
  {
    swift_once();
  }

  v0 = sub_2428B3078();
  __swift_project_value_buffer(v0, qword_27ECC1C68);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_2427CDDE0@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC16B8 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3078();
  v3 = __swift_project_value_buffer(v2, qword_27ECC1C68);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_2427CDEA0(uint64_t a1)
{
  if (qword_27ECC16B8 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3078();
  v3 = __swift_project_value_buffer(v2, qword_27ECC1C68);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t RespondToInboxItemIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v54 = a1;
  v56 = sub_2428B3298();
  v58 = *(v56 - 8);
  v2 = *(v58 + 64);
  MEMORY[0x28223BE20](v56);
  v55 = v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1CA0, &unk_2428B5D80);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v53 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v52 = v39 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v51 = v39 - v11;
  v12 = sub_2428B3558();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2428B36C8();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2428B45F8();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = sub_2428B3568();
  v48 = v23;
  v57 = *(v23 - 8);
  v24 = *(v57 + 64);
  MEMORY[0x28223BE20](v23);
  v50 = v39 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A50, &unk_2428B7870);
  sub_2428B2958();
  v59 = 0u;
  v60 = 0u;
  v61 = 0;
  sub_2428B2948();
  *a1 = sub_2428B2918();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1CA8, &qword_2428B5D90);
  sub_2428B4578();
  sub_2428B36B8();
  v27 = *(v13 + 104);
  v42 = *MEMORY[0x277CC9110];
  v26 = v42;
  v41 = v12;
  v27(v16, v42, v12);
  v40 = v27;
  v43 = v13 + 104;
  sub_2428B3578();
  sub_2428B4578();
  v39[1] = v20;
  sub_2428B36B8();
  v27(v16, v26, v12);
  v28 = v51;
  sub_2428B3578();
  v29 = *(v57 + 56);
  v57 += 56;
  v49 = v29;
  v29(v28, 0, 1, v23);
  v30 = sub_2428B2AE8();
  *&v60 = 0;
  v59 = 0uLL;
  v31 = *(*(v30 - 8) + 56);
  v44 = v31;
  v31(v52, 1, 1, v30);
  v31(v53, 1, 1, v30);
  v45 = *MEMORY[0x277CBA308];
  v32 = *(v58 + 104);
  v58 += 104;
  v46 = v32;
  v32(v55);
  sub_2427CE75C();
  v54[1] = sub_2428B2E68();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1CB8, &qword_2428B5D98);
  sub_2428B4578();
  sub_2428B36B8();
  v33 = v42;
  v34 = v41;
  v35 = v40;
  v40(v16, v42, v41);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v35(v16, v33, v34);
  v36 = v51;
  sub_2428B3578();
  v49(v36, 0, 1, v48);
  LOBYTE(v59) = 9;
  v37 = v44;
  v44(v52, 1, 1, v30);
  v37(v53, 1, 1, v30);
  v46(v55, v45, v56);
  sub_2427D28A0();
  result = sub_2428B2E38();
  v54[2] = result;
  return result;
}

unint64_t sub_2427CE75C()
{
  result = qword_27ECC1CB0;
  if (!qword_27ECC1CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC1CB0);
  }

  return result;
}

uint64_t RespondToInboxItemIntent.eventStoreProvider.getter()
{
  v1 = *v0;
  sub_2428B28E8();
  return v3;
}

uint64_t sub_2427CE7E4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v6 = *a1;
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  swift_unknownObjectRetain();
  sub_2428B28F8();
}

uint64_t RespondToInboxItemIntent.eventStoreProvider.setter()
{
  v1 = *v0;
  swift_unknownObjectRetain();
  sub_2428B28F8();
  return swift_unknownObjectRelease();
}

uint64_t (*RespondToInboxItemIntent.eventStoreProvider.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_2428B28D8();
  return sub_2427CBEA8;
}

double sub_2427CE960@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  sub_2428B2DC8();
  *a2 = v5;
  result = *&v6;
  *(a2 + 8) = v6;
  return result;
}

uint64_t sub_2427CE9A4(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v8 = *a1;
  v9 = a1[1];
  sub_2428B3218();
  v6 = v2;
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2DD8();
}

uint64_t RespondToInboxItemIntent.target.setter(uint64_t *a1)
{
  v2 = *(v1 + 8);
  v4 = *a1;
  v5 = *(a1 + 1);
  return sub_2428B2DD8();
}

uint64_t (*RespondToInboxItemIntent.target.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t sub_2427CEB28@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_2428B2DC8();
  *a2 = v5;
  return result;
}

uint64_t sub_2427CEB64(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v6 = *a1;
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2DD8();
}

uint64_t RespondToInboxItemIntent.response.setter(char *a1)
{
  v2 = *(v1 + 16);
  v4 = *a1;
  return sub_2428B2DD8();
}

uint64_t (*RespondToInboxItemIntent.response.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 16);
  *(v3 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t static RespondToInboxItemIntent.parameterSummary.getter()
{
  v0 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1CC8, &qword_2428B5DA0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v1 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1CD0, &qword_2428B5DA8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  sub_2427D28F4();
  sub_2428B3278();
  sub_2428B3268();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1CE0, &qword_2428B5DD8);
  sub_2428B3258();

  sub_2428B3268();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1CE8, &qword_2428B5E08);
  sub_2428B3258();

  sub_2428B3268();
  sub_2428B3288();
  return sub_2428B3238();
}

uint64_t RespondToInboxItemIntent.perform()(uint64_t a1)
{
  *(v2 + 64) = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1CA0, &unk_2428B5D80) - 8) + 64) + 15;
  *(v2 + 72) = swift_task_alloc();
  *(v2 + 80) = swift_task_alloc();
  *(v2 + 88) = *v1;
  *(v2 + 104) = *(v1 + 16);
  sub_2428B4758();
  *(v2 + 112) = sub_2428B4748();
  v5 = sub_2428B4728();
  *(v2 + 120) = v5;
  *(v2 + 128) = v4;

  return MEMORY[0x2822009F8](sub_2427CEF8C, v5, v4);
}

uint64_t sub_2427CEF8C()
{
  v63 = v0;
  v1 = sub_2428B43D8();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_2427CCD68(&qword_280CDDA40, MEMORY[0x277CF7740]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  (*(*(v1 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277CF7730], v1);
  LOBYTE(v1) = sub_2428B37D8();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if ((v1 & 1) == 0)
  {
    v6 = *(v0 + 112);

    sub_2428B2938();
    sub_2427CCD68(&qword_27ECC1A80, MEMORY[0x277CB9BB0]);
    swift_allocError();
    sub_2428B2928();
LABEL_6:
    swift_willThrow();
LABEL_7:
    v10 = *(v0 + 72);
    v9 = *(v0 + 80);

    v11 = *(v0 + 8);
    goto LABEL_8;
  }

  v3 = *(v0 + 88);
  sub_2428B28E8();
  v4 = [*(v0 + 56) eventStore];
  *(v0 + 136) = v4;
  swift_unknownObjectRelease();
  if (!v4)
  {
    v7 = *(v0 + 112);

    sub_2427CCDB0();
    swift_allocError();
    *v8 = 24;
    goto LABEL_6;
  }

  v60 = *(v0 + 88);
  v61 = *(v0 + 104);
  sub_2427CFE38();
  *(v0 + 144) = v5;
  v13 = v5;
  v14 = *(v0 + 104);
  sub_2428B2DC8();
  if (*(v0 + 176) == 9)
  {
    v16 = *(v0 + 96);
    v15 = *(v0 + 104);
    v18 = *(v0 + 80);
    v17 = *(v0 + 88);
    sub_2428B2F38();
    sub_2428B2F38();
    sub_2428B2F38();
    *(v0 + 152) = sub_2428B2DE8();
    v19 = sub_2428B2AE8();
    (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
    v20 = *(MEMORY[0x277CB9EE0] + 4);
    v21 = swift_task_alloc();
    *(v0 + 160) = v21;
    *v21 = v0;
    v21[1] = sub_2427CF72C;
    v22 = *(v0 + 80);

    return MEMORY[0x28210BA20](v0 + 178, v13, v22);
  }

  v23 = *(v0 + 112);

  v24 = *(v0 + 104);
  sub_2428B2DC8();
  v25 = *(v0 + 177);
  v26 = *(v0 + 144);
  if (v25 == 9)
  {
    v27 = *(v0 + 136);
    v28 = *(v0 + 104);
    v29 = *(v0 + 72);

    sub_2428B2DE8();
    v30 = sub_2428B2AE8();
    (*(*(v30 - 8) + 56))(v29, 1, 1, v30);
    sub_2428B2938();
    sub_2427CCD68(&qword_27ECC1A80, MEMORY[0x277CB9BB0]);
    swift_allocError();
    sub_2428B2DF8();

    sub_2427D2948(v29);
    swift_willThrow();

    goto LABEL_7;
  }

  v31 = *(v26 + 16);
  v32 = (v26 + 32);
  do
  {
    if (!v31)
    {
      v49 = *(v0 + 136);
      v48 = *(v0 + 144);

      sub_2427CCDB0();
      swift_allocError();
      *v50 = 80;
      swift_willThrow();

      goto LABEL_7;
    }

    v36 = *v32;
    if (v36 <= 3)
    {
      v39 = 0x656E696C636564;
      if (v36 != 2)
      {
        v39 = 27503;
      }

      v40 = 0xE700000000000000;
      if (v36 != 2)
      {
        v40 = 0xE200000000000000;
      }

      v41 = 0x747065636361;
      if (*v32)
      {
        v41 = 0x656279616DLL;
      }

      v42 = 0xE500000000000000;
      if (!*v32)
      {
        v42 = 0xE600000000000000;
      }

      if (*v32 <= 1u)
      {
        v38 = v41;
      }

      else
      {
        v38 = v39;
      }

      if (*v32 <= 1u)
      {
        v37 = v42;
      }

      else
      {
        v37 = v40;
      }

      if (v25 > 3)
      {
LABEL_49:
        v43 = 0x754A74726F706572;
        if (v25 == 7)
        {
          v43 = 0x65726F6E6769;
        }

        v44 = 0xEA00000000006B6ELL;
        if (v25 == 7)
        {
          v44 = 0xE600000000000000;
        }

        if (v25 == 6)
        {
          v43 = 0x6C61436F54646461;
          v44 = 0xED00007261646E65;
        }

        v45 = 0x6574656C6564;
        if (v25 == 4)
        {
          v46 = 0xE600000000000000;
        }

        else
        {
          v45 = 1852403562;
          v46 = 0xE400000000000000;
        }

        if (v25 <= 5)
        {
          v47 = v45;
        }

        else
        {
          v47 = v43;
        }

        if (v25 <= 5)
        {
          v34 = v46;
        }

        else
        {
          v34 = v44;
        }

        if (v38 != v47)
        {
          goto LABEL_26;
        }

        goto LABEL_25;
      }
    }

    else if (*v32 <= 5u)
    {
      if (v36 == 4)
      {
        v38 = 0x6574656C6564;
      }

      else
      {
        v38 = 1852403562;
      }

      if (v36 == 4)
      {
        v37 = 0xE600000000000000;
      }

      else
      {
        v37 = 0xE400000000000000;
      }

      if (v25 > 3)
      {
        goto LABEL_49;
      }
    }

    else if (v36 == 6)
    {
      v38 = 0x6C61436F54646461;
      v37 = 0xED00007261646E65;
      if (v25 > 3)
      {
        goto LABEL_49;
      }
    }

    else if (v36 == 7)
    {
      v37 = 0xE600000000000000;
      v38 = 0x65726F6E6769;
      if (v25 > 3)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v38 = 0x754A74726F706572;
      v37 = 0xEA00000000006B6ELL;
      if (v25 > 3)
      {
        goto LABEL_49;
      }
    }

    if (v25 > 1)
    {
      if (v25 == 2)
      {
        v33 = 0x656E696C636564;
      }

      else
      {
        v33 = 27503;
      }

      if (v25 == 2)
      {
        v34 = 0xE700000000000000;
      }

      else
      {
        v34 = 0xE200000000000000;
      }

      if (v38 != v33)
      {
        goto LABEL_26;
      }
    }

    else if (v25)
    {
      v34 = 0xE500000000000000;
      if (v38 != 0x656279616DLL)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v34 = 0xE600000000000000;
      if (v38 != 0x747065636361)
      {
        goto LABEL_26;
      }
    }

LABEL_25:
    if (v37 == v34)
    {
      v51 = *(v0 + 144);

      goto LABEL_86;
    }

LABEL_26:
    v35 = sub_2428B4BF8();

    ++v32;
    --v31;
  }

  while ((v35 & 1) == 0);
  v52 = *(v0 + 144);
LABEL_86:
  v53 = *(v0 + 136);
  v54 = *(v0 + 104);
  v59 = *(v0 + 88);

  v62[0] = v25;
  sub_2427D00B0(v62, v53);
  v55 = *(v0 + 136);
  v56 = *(v0 + 72);
  v57 = *(v0 + 80);
  v58 = *(v0 + 64);
  sub_2428B2C28();

  v11 = *(v0 + 8);
LABEL_8:

  return v11();
}

uint64_t sub_2427CF72C()
{
  v2 = *v1;
  v3 = (*v1)[20];
  v4 = *v1;
  v2[21] = v0;

  v5 = v2[19];
  if (v0)
  {
    v6 = v2[18];
    v8 = v2[12];
    v7 = v2[13];
    v9 = v2[11];
    sub_2427D2948(v2[10]);

    v10 = v2[15];
    v11 = v2[16];
    v12 = sub_2427CFDB8;
  }

  else
  {
    sub_2427D2948(v2[10]);

    v10 = v2[15];
    v11 = v2[16];
    v12 = sub_2427CF8AC;
  }

  return MEMORY[0x2822009F8](v12, v10, v11);
}

uint64_t sub_2427CF8AC()
{
  v48 = v0;
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);

  *(v0 + 179) = *(v0 + 178);
  sub_2428B2DD8();

  v5 = *(v0 + 168);
  v6 = *(v0 + 104);
  sub_2428B2DC8();
  v7 = *(v0 + 177);
  v8 = *(v0 + 144);
  if (v7 == 9)
  {
    v9 = *(v0 + 136);
    v10 = *(v0 + 104);
    v11 = *(v0 + 72);

    sub_2428B2DE8();
    v12 = sub_2428B2AE8();
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
    sub_2428B2938();
    sub_2427CCD68(&qword_27ECC1A80, MEMORY[0x277CB9BB0]);
    swift_allocError();
    sub_2428B2DF8();

    sub_2427D2948(v11);
    swift_willThrow();

    goto LABEL_74;
  }

  v46 = v5;
  v13 = *(v8 + 16);
  v14 = (v8 + 32);
  do
  {
    if (!v13)
    {
      v32 = *(v0 + 136);
      v31 = *(v0 + 144);

      sub_2427CCDB0();
      swift_allocError();
      *v33 = 80;
      swift_willThrow();

      goto LABEL_74;
    }

    v16 = *v14;
    if (v16 <= 3)
    {
      v19 = 0x656E696C636564;
      if (v16 != 2)
      {
        v19 = 27503;
      }

      v20 = 0xE700000000000000;
      if (v16 != 2)
      {
        v20 = 0xE200000000000000;
      }

      v21 = 0x747065636361;
      if (*v14)
      {
        v21 = 0x656279616DLL;
      }

      v22 = 0xE500000000000000;
      if (!*v14)
      {
        v22 = 0xE600000000000000;
      }

      if (*v14 <= 1u)
      {
        v18 = v21;
      }

      else
      {
        v18 = v19;
      }

      if (*v14 <= 1u)
      {
        v17 = v22;
      }

      else
      {
        v17 = v20;
      }

      if (v7 > 3)
      {
LABEL_37:
        v23 = 0x754A74726F706572;
        if (v7 == 7)
        {
          v23 = 0x65726F6E6769;
        }

        v24 = 0xEA00000000006B6ELL;
        if (v7 == 7)
        {
          v24 = 0xE600000000000000;
        }

        if (v7 == 6)
        {
          v23 = 0x6C61436F54646461;
          v24 = 0xED00007261646E65;
        }

        v25 = 0x6574656C6564;
        if (v7 == 4)
        {
          v26 = 0xE600000000000000;
        }

        else
        {
          v25 = 1852403562;
          v26 = 0xE400000000000000;
        }

        if (v7 <= 5)
        {
          v27 = v25;
        }

        else
        {
          v27 = v23;
        }

        if (v7 <= 5)
        {
          v28 = v26;
        }

        else
        {
          v28 = v24;
        }

        if (v18 != v27)
        {
          goto LABEL_4;
        }

        goto LABEL_68;
      }
    }

    else if (*v14 <= 5u)
    {
      if (v16 == 4)
      {
        v18 = 0x6574656C6564;
      }

      else
      {
        v18 = 1852403562;
      }

      if (v16 == 4)
      {
        v17 = 0xE600000000000000;
      }

      else
      {
        v17 = 0xE400000000000000;
      }

      if (v7 > 3)
      {
        goto LABEL_37;
      }
    }

    else if (v16 == 6)
    {
      v18 = 0x6C61436F54646461;
      v17 = 0xED00007261646E65;
      if (v7 > 3)
      {
        goto LABEL_37;
      }
    }

    else if (v16 == 7)
    {
      v17 = 0xE600000000000000;
      v18 = 0x65726F6E6769;
      if (v7 > 3)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v18 = 0x754A74726F706572;
      v17 = 0xEA00000000006B6ELL;
      if (v7 > 3)
      {
        goto LABEL_37;
      }
    }

    if (v7 > 1)
    {
      if (v7 == 2)
      {
        v29 = 0x656E696C636564;
      }

      else
      {
        v29 = 27503;
      }

      if (v7 == 2)
      {
        v28 = 0xE700000000000000;
      }

      else
      {
        v28 = 0xE200000000000000;
      }

      if (v18 != v29)
      {
        goto LABEL_4;
      }
    }

    else if (v7)
    {
      v28 = 0xE500000000000000;
      if (v18 != 0x656279616DLL)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v28 = 0xE600000000000000;
      if (v18 != 0x747065636361)
      {
        goto LABEL_4;
      }
    }

LABEL_68:
    if (v17 == v28)
    {
      v30 = *(v0 + 144);

      goto LABEL_72;
    }

LABEL_4:
    v15 = sub_2428B4BF8();

    ++v14;
    --v13;
  }

  while ((v15 & 1) == 0);
  v34 = *(v0 + 144);
LABEL_72:
  v35 = *(v0 + 136);
  v36 = *(v0 + 104);
  v45 = *(v0 + 88);

  v47[0] = v7;
  sub_2427D00B0(v47, v35);
  v37 = *(v0 + 136);
  if (v46)
  {

LABEL_74:
    v39 = *(v0 + 72);
    v38 = *(v0 + 80);

    v40 = *(v0 + 8);
  }

  else
  {
    v42 = *(v0 + 72);
    v43 = *(v0 + 80);
    v44 = *(v0 + 64);
    sub_2428B2C28();

    v40 = *(v0 + 8);
  }

  return v40();
}

uint64_t sub_2427CFDB8()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 168);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);

  v5 = *(v0 + 8);

  return v5();
}

void sub_2427CFE38()
{
  v1 = *(v0 + 8);
  sub_2428B2DC8();

  v2 = [v8 type];
  if (v2 > 7)
  {
    if (v2 <= 11 && (v2 - 9) >= 3 && v2 == 8)
    {
      [v8 couldBeJunk];

      return;
    }

    goto LABEL_10;
  }

  if (v2 > 3)
  {
    goto LABEL_10;
  }

  if (v2 >= 2)
  {
    if (v2 == 3)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v3 = v8;
        v4 = CUIKNewTimeProposerForNotification();

        if (v4)
        {
        }

        return;
      }
    }

LABEL_10:

    return;
  }

  v5 = [v8 event];
  if (v5)
  {
    v6 = v5;
    if ([v5 needsResponse])
    {
      [v8 couldBeJunk];
    }
  }

  else
  {
    sub_2427CCDB0();
    swift_allocError();
    *v7 = 25;
    swift_willThrow();
  }
}

void sub_2427D00B0(unsigned __int8 *a1, void *a2)
{
  v3 = v2;
  v5 = *a1;
  v7 = *v2;
  v6 = v2[1];
  v8 = v3[2];
  sub_2428B2DC8();
  v9 = v21;

  if (v5 <= 4)
  {
    if (v5 >= 3)
    {
      v19 = v7;
      v20 = v6;
      v21 = v8;
      if (v5 == 3)
      {
        sub_2427D02C0(v9, a2);
      }

      else
      {
        sub_2427D0480(v9);
      }

      goto LABEL_16;
    }

LABEL_11:
    v14 = [v21 event];
    if (v14)
    {
      v15 = v14;
      v19 = v7;
      v20 = v6;
      v21 = v8;
      v18 = v5;
      sub_2427D05A0(&v18, v14);

      return;
    }

    objc_opt_self();
    v16 = swift_dynamicCastObjCClass();
    if (v16)
    {
      v19 = v7;
      v20 = v6;
      v21 = v8;
      v18 = v5;
      sub_2427D0748(&v18, v16, a2);
LABEL_16:

      return;
    }

LABEL_15:
    sub_2427CCDB0();
    swift_allocError();
    *v17 = 80;
    swift_willThrow();
    goto LABEL_16;
  }

  if ((v5 - 6) >= 2)
  {
    goto LABEL_11;
  }

  v10 = [v21 event];
  if (!v10)
  {
    goto LABEL_15;
  }

  v11 = v10;
  v12 = [v10 eventStore];
  v13 = v12;
  if (v5 == 6)
  {
    if (v12)
    {
      [v12 acceptSuggestedEvent_];
LABEL_19:

      return;
    }

    __break(1u);
  }

  else if (v12)
  {
    [v12 deleteSuggestedEvent_];
    goto LABEL_19;
  }

  __break(1u);
}

void sub_2427D02C0(void *a1, void *a2)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v4 = [a1 type];
  if (v4 > 0xE || ((1 << v4) & 0x4070) == 0)
  {
    v17[0] = 0;
    if ([a1 acknowledgeWithEventStore:a2 error:v17])
    {
      v13 = v17[0];
      goto LABEL_17;
    }

    v15 = v17[0];
    sub_2428B3538();

LABEL_16:
    swift_willThrow();
    goto LABEL_17;
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {
    sub_2427CCDB0();
    swift_allocError();
    *v12 = 80;
    goto LABEL_16;
  }

  v7 = v6;
  v8 = a1;
  v9 = [v7 resourceChangeFromEventStore_];
  if (v9)
  {
    v10 = v9;
    v17[0] = 0;
    if ([a2 markResourceChangeAlertedAndSave:v9 error:v17])
    {
      v11 = v17[0];
    }

    else
    {
      v14 = v17[0];
      sub_2428B3538();

      swift_willThrow();
    }
  }

  else
  {
  }

LABEL_17:
  v16 = *MEMORY[0x277D85DE8];
}

void sub_2427D0480(void *a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v1 = [a1 event];
  if (!v1)
  {
LABEL_10:
    v9 = *MEMORY[0x277D85DE8];
    return;
  }

  v2 = v1;
  if ([v1 isDetached])
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_2428B4898();
  }

  v4 = [v2 eventStore];
  if (v4)
  {
    v5 = v4;
    v10[0] = 0;
    v6 = [v4 removeEvent:v2 span:v3 error:v10];

    if (v6)
    {
      v7 = v10[0];
    }

    else
    {
      v8 = v10[0];
      sub_2428B3538();

      swift_willThrow();
    }

    goto LABEL_10;
  }

  __break(1u);
}

id sub_2427D05A0(unsigned __int8 *a1, id a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = *a1;
  if (v3 >= 3)
  {
    if (v3 == 8)
    {
      result = [a2 setIsJunk:1 shouldSave:1];
LABEL_14:
      v11 = *MEMORY[0x277D85DE8];
      return result;
    }

    sub_2427CCDB0();
    swift_allocError();
    *v7 = 80;
LABEL_13:
    result = swift_willThrow();
    goto LABEL_14;
  }

  v4 = v3;
  if (([a2 responseMustApplyToAll] & 1) != 0 || objc_msgSend(a2, sel_hasRecurrenceRules))
  {
    v5 = sub_2428B4888();
  }

  else
  {
    v5 = 0;
  }

  [a2 setParticipationStatus_];
  [a2 setInvitationStatus_];
  result = [a2 eventStore];
  if (result)
  {
    v8 = result;
    v12[0] = 0;
    v9 = [result saveEvent:a2 span:v5 error:v12];

    if (v9)
    {
      result = v12[0];
      goto LABEL_14;
    }

    v10 = v12[0];
    sub_2428B3538();

    goto LABEL_13;
  }

  __break(1u);
  return result;
}

void sub_2427D0748(unsigned __int8 *a1, id a2, void *a3)
{
  v5 = *a1;
  v6 = [a2 calendarFromEventStore_];
  if (!v6)
  {
    sub_2427CCDB0();
    swift_allocError();
    *v9 = 33;
    swift_willThrow();
    return;
  }

  v7 = v6;
  if (v5 == 8)
  {
    [v6 setIsJunk_];
  }

  else
  {
    if (v5 == 5)
    {
      v8 = 1;
    }

    else
    {
      if (v5 != 2)
      {
        sub_2427CCDB0();
        swift_allocError();
        *v10 = 80;
        swift_willThrow();
        goto LABEL_11;
      }

      v8 = 2;
    }

    [a3 respondToSharedCalendarInvitation:a2 withStatus:v8];
  }

LABEL_11:
}

uint64_t sub_2427D08A4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2427CD274;

  return RespondToInboxItemIntent.perform()(a1);
}

uint64_t sub_2427D095C()
{
  v0 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v2 = v14 - v1;
  v14[0] = sub_2428B3558();
  v3 = *(v14[0] - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(sub_2428B36C8() - 8) + 64);
  MEMORY[0x28223BE20]();
  v8 = *(*(sub_2428B45F8() - 8) + 64);
  MEMORY[0x28223BE20]();
  v9 = sub_2428B3568();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20]();
  v12 = sub_2428B3338();
  __swift_allocate_value_buffer(v12, qword_27ECC1C80);
  __swift_project_value_buffer(v12, qword_27ECC1C80);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v3 + 104))(v6, *MEMORY[0x277CC9110], v14[0]);
  sub_2428B3588();
  (*(v10 + 56))(v2, 1, 1, v9);
  return sub_2428B3328();
}

uint64_t sub_2427D0C6C@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = __swift_project_value_buffer(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_2427D0D10()
{
  v0 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1D20, &qword_2428B6EC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v84 = &v66 - v1;
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v78 = &v66 - v3;
  v88 = sub_2428B3558();
  v4 = *(v88 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v81 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(sub_2428B36C8() - 8) + 64);
  MEMORY[0x28223BE20]();
  v9 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(sub_2428B45F8() - 8) + 64);
  MEMORY[0x28223BE20]();
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2428B3568();
  v89 = *(v13 - 8);
  v90 = v13;
  v14 = *(v89 + 64);
  MEMORY[0x28223BE20]();
  v16 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1D28, &qword_2428B6220);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1D30, &qword_2428B6228);
  v18 = *(v17 - 8);
  v77 = *(v18 + 72);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v72 = 8 * v77;
  v20 = swift_allocObject();
  v70 = v20;
  *(v20 + 16) = xmmword_2428B5D40;
  v69 = *(v17 + 48);
  v75 = v17;
  *(v20 + v19) = 0;
  v21 = v20 + v19;
  sub_2428B4578();
  v74 = v9;
  sub_2428B36B8();
  v86 = *MEMORY[0x277CC9110];
  v22 = *(v4 + 104);
  v87 = v4 + 104;
  v85 = v22;
  v23 = v88;
  v22(v81);
  sub_2428B3588();
  v24 = *(v89 + 56);
  v89 += 56;
  v83 = v24;
  v25 = v78;
  v24(v78, 1, 1, v13);
  v26 = sub_2428B3148();
  v27 = *(v26 - 8);
  v28 = *(v27 + 56);
  v82 = v27 + 56;
  v29 = v84;
  v79 = v26;
  v28(v84, 1, 1, v26);
  v80 = v28;
  v76 = v21;
  v71 = v16;
  sub_2428B3178();
  v68 = v21 + v77;
  v69 = *(v17 + 48);
  *v68 = 1;
  v73 = v12;
  sub_2428B4578();
  sub_2428B36B8();
  v30 = v81;
  v31 = v85;
  v85(v81, v86, v23);
  sub_2428B3588();
  v32 = v89;
  v83(v25, 1, 1, v90);
  v28(v29, 1, 1, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4D70, &unk_2428B6230);
  v33 = *(v32 + 16);
  v34 = (*(v32 + 24) + 32) & ~*(v32 + 24);
  *(swift_allocObject() + 16) = xmmword_2428B5D50;
  sub_2428B4578();
  sub_2428B36B8();
  v35 = v86;
  v31(v30, v86, v88);
  sub_2428B3578();
  v36 = v78;
  sub_2428B3168();
  v37 = v77;
  v69 = 2 * v77;
  v38 = v76;
  v67 = (v76 + 2 * v77);
  v39 = v75;
  v68 = *(v75 + 48);
  *v67 = 2;
  sub_2428B4578();
  sub_2428B36B8();
  v85(v30, v35, v88);
  sub_2428B3588();
  v40 = v83;
  v83(v36, 1, 1, v90);
  v41 = v84;
  v80(v84, 1, 1, v79);
  sub_2428B3178();
  v42 = (v38 + v69 + v37);
  v69 = *(v39 + 48);
  *v42 = 3;
  sub_2428B4578();
  sub_2428B36B8();
  v85(v81, v86, v88);
  sub_2428B3588();
  v43 = v78;
  v40(v78, 1, 1, v90);
  v44 = v79;
  v45 = v80;
  v80(v41, 1, 1, v79);
  sub_2428B3178();
  v46 = v77;
  v69 = 4 * v77;
  v47 = v76;
  v67 = (v76 + 4 * v77);
  v48 = v75;
  v68 = *(v75 + 48);
  *v67 = 4;
  sub_2428B4578();
  sub_2428B36B8();
  v49 = v81;
  v85(v81, v86, v88);
  sub_2428B3588();
  v83(v43, 1, 1, v90);
  v45(v84, 1, 1, v44);
  sub_2428B3178();
  v50 = (v47 + v69 + v46);
  v69 = *(v48 + 48);
  *v50 = 5;
  sub_2428B4578();
  sub_2428B36B8();
  v51 = v86;
  v52 = v85;
  v85(v49, v86, v88);
  sub_2428B3588();
  v53 = v83;
  v83(v43, 1, 1, v90);
  v80(v84, 1, 1, v79);
  sub_2428B3178();
  v54 = v76;
  v68 = v76 + 6 * v77;
  v55 = v75;
  v69 = *(v75 + 48);
  *v68 = 6;
  sub_2428B4578();
  sub_2428B36B8();
  v56 = v51;
  v57 = v88;
  v52(v81, v56, v88);
  sub_2428B3588();
  v53(v78, 1, 1, v90);
  v58 = v80;
  v80(v84, 1, 1, v79);
  sub_2428B3178();
  v59 = (v54 + v72 - v77);
  v77 = *(v55 + 48);
  *v59 = 7;
  sub_2428B4578();
  sub_2428B36B8();
  v60 = v81;
  v85(v81, v86, v57);
  sub_2428B3588();
  v61 = v78;
  v83(v78, 1, 1, v90);
  v62 = v84;
  v63 = v79;
  v58(v84, 1, 1, v79);
  sub_2428B3178();
  v77 = *(v75 + 48);
  *(v76 + v72) = 8;
  sub_2428B4578();
  sub_2428B36B8();
  v85(v60, v86, v88);
  sub_2428B3588();
  v83(v61, 1, 1, v90);
  v80(v62, 1, 1, v63);
  sub_2428B3178();
  v64 = sub_242821124(v70);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27ECC1C98 = v64;
  return result;
}

uint64_t static InboxItemResponse.caseDisplayRepresentations.getter()
{
  if (qword_27ECC16C8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_2428B3218();
}

uint64_t static InboxItemResponse.caseDisplayRepresentations.setter(uint64_t a1)
{
  if (qword_27ECC16C8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27ECC1C98 = a1;
}

uint64_t (*static InboxItemResponse.caseDisplayRepresentations.modify())()
{
  if (qword_27ECC16C8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_2427D1C34@<X0>(void *a1@<X8>)
{
  if (qword_27ECC16C8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27ECC1C98;
  return sub_2428B3218();
}

uint64_t sub_2427D1CB4(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_27ECC16C8;
  sub_2428B3218();
  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27ECC1C98 = v1;
}

CalendarLink::InboxItemResponse_optional __swiftcall InboxItemResponse.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2428B4BB8();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t InboxItemResponse.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 0x747065636361;
    v7 = 0x656E696C636564;
    if (v1 != 2)
    {
      v7 = 27503;
    }

    if (*v0)
    {
      v6 = 0x656279616DLL;
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x6C61436F54646461;
    v3 = 0x65726F6E6769;
    if (v1 != 7)
    {
      v3 = 0x754A74726F706572;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 0x6574656C6564;
    if (v1 != 4)
    {
      v4 = 1852403562;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_2427D1EB8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE600000000000000;
    v12 = 0xE700000000000000;
    v13 = 0x656E696C636564;
    if (a1 != 2)
    {
      v13 = 27503;
      v12 = 0xE200000000000000;
    }

    v14 = 0x656279616DLL;
    if (a1)
    {
      v11 = 0xE500000000000000;
    }

    else
    {
      v14 = 0x747065636361;
    }

    if (a1 <= 1u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v13;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v3 = 0x6C61436F54646461;
    v4 = 0xED00007261646E65;
    v5 = 0xE600000000000000;
    v6 = 0x65726F6E6769;
    if (a1 != 7)
    {
      v6 = 0x754A74726F706572;
      v5 = 0xEA00000000006B6ELL;
    }

    if (a1 != 6)
    {
      v3 = v6;
      v4 = v5;
    }

    v7 = 0xE600000000000000;
    v8 = 0x6574656C6564;
    if (a1 != 4)
    {
      v8 = 1852403562;
      v7 = 0xE400000000000000;
    }

    if (a1 <= 5u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v3;
    }

    if (v2 <= 5)
    {
      v10 = v7;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v15 = 0xE700000000000000;
        if (v9 != 0x656E696C636564)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v15 = 0xE200000000000000;
        if (v9 != 27503)
        {
          goto LABEL_52;
        }
      }
    }

    else if (a2)
    {
      v15 = 0xE500000000000000;
      if (v9 != 0x656279616DLL)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v15 = 0xE600000000000000;
      if (v9 != 0x747065636361)
      {
        goto LABEL_52;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v15 = 0xE600000000000000;
      if (v9 != 0x6574656C6564)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v15 = 0xE400000000000000;
      if (v9 != 1852403562)
      {
LABEL_52:
        v16 = sub_2428B4BF8();
        goto LABEL_53;
      }
    }
  }

  else if (a2 == 6)
  {
    v15 = 0xED00007261646E65;
    if (v9 != 0x6C61436F54646461)
    {
      goto LABEL_52;
    }
  }

  else if (a2 == 7)
  {
    v15 = 0xE600000000000000;
    if (v9 != 0x65726F6E6769)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v15 = 0xEA00000000006B6ELL;
    if (v9 != 0x754A74726F706572)
    {
      goto LABEL_52;
    }
  }

  if (v10 != v15)
  {
    goto LABEL_52;
  }

  v16 = 1;
LABEL_53:

  return v16 & 1;
}

uint64_t sub_2427D2154(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000064;
  v3 = a1;
  v4 = 0xE700000000000000;
  v5 = 0x6574656C706D6F63;
  if (a1 == 5)
  {
    v6 = 0xE900000000000064;
  }

  else
  {
    v5 = 0x7365636F72506E69;
    v6 = 0xE900000000000073;
  }

  v7 = 0x76697461746E6574;
  if (a1 == 3)
  {
    v8 = 0xE900000000000065;
  }

  else
  {
    v7 = 0x65746167656C6564;
    v8 = 0xE900000000000064;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0x6465747065636361;
  if (a1 != 1)
  {
    v9 = 0x64656E696C636564;
  }

  if (a1)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v9 = 0x676E69646E6570;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v3 <= 2)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      v2 = 0xE800000000000000;
      if (a2 == 1)
      {
        v12 = 0x747065636361;
      }

      else
      {
        v12 = 0x6E696C636564;
      }

      if (v10 != (v12 & 0xFFFFFFFFFFFFLL | 0x6465000000000000))
      {
        goto LABEL_41;
      }
    }

    else
    {
      v2 = 0xE700000000000000;
      if (v10 != 0x676E69646E6570)
      {
        goto LABEL_41;
      }
    }

    goto LABEL_39;
  }

  if (a2 <= 4u)
  {
    if (a2 == 3)
    {
      v2 = 0xE900000000000065;
      if (v10 != 0x76697461746E6574)
      {
        goto LABEL_41;
      }

      goto LABEL_39;
    }

    v13 = 0x6167656C6564;
LABEL_36:
    if (v10 != (v13 & 0xFFFFFFFFFFFFLL | 0x6574000000000000))
    {
      goto LABEL_41;
    }

    goto LABEL_39;
  }

  if (a2 == 5)
  {
    v13 = 0x656C706D6F63;
    goto LABEL_36;
  }

  v2 = 0xE900000000000073;
  if (v10 != 0x7365636F72506E69)
  {
LABEL_41:
    v14 = sub_2428B4BF8();
    goto LABEL_42;
  }

LABEL_39:
  if (v11 != v2)
  {
    goto LABEL_41;
  }

  v14 = 1;
LABEL_42:

  return v14 & 1;
}

uint64_t sub_2427D235C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v10 = 0xE300000000000000;
    v11 = 0xE500000000000000;
    v12 = 0x68746E6F6DLL;
    if (a1 != 2)
    {
      v12 = 0x6E6F4D74696C7073;
      v11 = 0xEA00000000006874;
    }

    v13 = 1801807223;
    if (a1)
    {
      v10 = 0xE400000000000000;
    }

    else
    {
      v13 = 7954788;
    }

    if (a1 <= 1u)
    {
      v8 = v13;
    }

    else
    {
      v8 = v12;
    }

    if (v2 <= 1)
    {
      v9 = v10;
    }

    else
    {
      v9 = v11;
    }
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0x686372616573;
    v5 = 0x7261646E656C6163;
    v6 = 0xE900000000000073;
    if (a1 != 7)
    {
      v5 = 0x786F626E69;
      v6 = 0xE500000000000000;
    }

    if (a1 != 6)
    {
      v4 = v5;
      v3 = v6;
    }

    v7 = 1918985593;
    if (a1 != 4)
    {
      v7 = 1953720684;
    }

    if (a1 <= 5u)
    {
      v8 = v7;
    }

    else
    {
      v8 = v4;
    }

    if (v2 <= 5)
    {
      v9 = 0xE400000000000000;
    }

    else
    {
      v9 = v3;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v14 = 0xE500000000000000;
        if (v8 != 0x68746E6F6DLL)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v14 = 0xEA00000000006874;
        if (v8 != 0x6E6F4D74696C7073)
        {
          goto LABEL_52;
        }
      }
    }

    else if (a2)
    {
      v14 = 0xE400000000000000;
      if (v8 != 1801807223)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v14 = 0xE300000000000000;
      if (v8 != 7954788)
      {
        goto LABEL_52;
      }
    }
  }

  else if (a2 <= 5u)
  {
    v14 = 0xE400000000000000;
    if (a2 == 4)
    {
      if (v8 != 1918985593)
      {
        goto LABEL_52;
      }
    }

    else if (v8 != 1953720684)
    {
LABEL_52:
      v15 = sub_2428B4BF8();
      goto LABEL_53;
    }
  }

  else if (a2 == 6)
  {
    v14 = 0xE600000000000000;
    if (v8 != 0x686372616573)
    {
      goto LABEL_52;
    }
  }

  else if (a2 == 7)
  {
    v14 = 0xE900000000000073;
    if (v8 != 0x7261646E656C6163)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v14 = 0xE500000000000000;
    if (v8 != 0x786F626E69)
    {
      goto LABEL_52;
    }
  }

  if (v9 != v14)
  {
    goto LABEL_52;
  }

  v15 = 1;
LABEL_53:

  return v15 & 1;
}

uint64_t sub_2427D25D8()
{
  v1 = *v0;
  sub_2428B4C88();
  sub_2427FB210();
  return sub_2428B4CB8();
}

uint64_t sub_2427D2628()
{
  v1 = *v0;
  sub_2428B4C88();
  sub_2427FB210();
  return sub_2428B4CB8();
}

uint64_t sub_2427D2678@<X0>(uint64_t *a1@<X8>)
{
  result = InboxItemResponse.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2427D26D8@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = __swift_project_value_buffer(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_2427D2780(uint64_t a1)
{
  v2 = sub_2427D28A0();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_2427D27CC()
{
  if (qword_27ECC16C8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_2428B3218();
}

uint64_t sub_2427D2844(uint64_t a1)
{
  v2 = sub_2427D2D08();

  return MEMORY[0x28210C300](a1, v2);
}

unint64_t sub_2427D28A0()
{
  result = qword_27ECC1CC0;
  if (!qword_27ECC1CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC1CC0);
  }

  return result;
}

unint64_t sub_2427D28F4()
{
  result = qword_27ECC1CD8;
  if (!qword_27ECC1CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC1CD8);
  }

  return result;
}

uint64_t sub_2427D2948(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1CA0, &unk_2428B5D80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2427D29B4()
{
  result = qword_280CDDAD8;
  if (!qword_280CDDAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDAD8);
  }

  return result;
}

unint64_t sub_2427D2A0C()
{
  result = qword_280CDDAE0;
  if (!qword_280CDDAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDAE0);
  }

  return result;
}

unint64_t sub_2427D2A9C()
{
  result = qword_280CDDD78;
  if (!qword_280CDDD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDD78);
  }

  return result;
}

unint64_t sub_2427D2AF4()
{
  result = qword_280CDDDD0;
  if (!qword_280CDDDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDDD0);
  }

  return result;
}

unint64_t sub_2427D2B4C()
{
  result = qword_280CDDDA8;
  if (!qword_280CDDDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDDA8);
  }

  return result;
}

unint64_t sub_2427D2BA4()
{
  result = qword_280CDDD70;
  if (!qword_280CDDD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDD70);
  }

  return result;
}

unint64_t sub_2427D2C08()
{
  result = qword_280CDDDB8;
  if (!qword_280CDDDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDDB8);
  }

  return result;
}

unint64_t sub_2427D2C5C()
{
  result = qword_280CDDDB0;
  if (!qword_280CDDDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDDB0);
  }

  return result;
}

unint64_t sub_2427D2CB0()
{
  result = qword_280CDDDC8;
  if (!qword_280CDDDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDDC8);
  }

  return result;
}

unint64_t sub_2427D2D08()
{
  result = qword_280CDDDC0;
  if (!qword_280CDDDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDDC0);
  }

  return result;
}

unint64_t sub_2427D2DB0()
{
  result = qword_280CDDD98;
  if (!qword_280CDDD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDD98);
  }

  return result;
}

unint64_t sub_2427D2E08()
{
  result = qword_280CDDD60;
  if (!qword_280CDDD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDD60);
  }

  return result;
}

unint64_t sub_2427D2E60()
{
  result = qword_280CDDD88;
  if (!qword_280CDDD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDD88);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InboxItemResponse(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for InboxItemResponse(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2427D30AC(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  return MEMORY[0x2822009F8](sub_2427D30CC, 0, 0);
}

uint64_t sub_2427D30CC()
{
  v1 = *(v0 + 104);
  sub_2428B4248();
  if (*(v0 + 80))
  {
    sub_2427D3564((v0 + 56), v0 + 16);
    v2 = *(v0 + 40);
    v3 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
    v4 = *(MEMORY[0x277CEB110] + 4);
    v5 = swift_task_alloc();
    *(v0 + 112) = v5;
    *v5 = v0;
    v5[1] = sub_2427D3204;

    return MEMORY[0x28213DD78](v2, v3);
  }

  else
  {
    sub_2427D34A8(v0 + 56);
    sub_2427D3510();
    swift_allocError();
    swift_willThrow();
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_2427D3204(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 112);
  v8 = *v3;
  v4[15] = a1;
  v4[16] = a2;
  v4[17] = v2;

  if (v2)
  {
    v6 = sub_2427D3444;
  }

  else
  {
    v6 = sub_2427D331C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2427D331C()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  v4 = v0[12];
  v5 = sub_2428B3458();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_2428B3448();
  sub_2428B4188();
  sub_2427D3B5C(&qword_27ECC1D48, MEMORY[0x277CF7C30]);
  sub_2428B3438();
  v9 = v0[15];
  v8 = v0[16];

  sub_2427D357C(v9, v8);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v10 = v0[1];

  return v10();
}

uint64_t sub_2427D3444()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[17];
  v2 = v0[1];

  return v2();
}

uint64_t sub_2427D34A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1D38, &qword_2428B6268);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2427D3510()
{
  result = qword_27ECC1D40;
  if (!qword_27ECC1D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC1D40);
  }

  return result;
}

uint64_t sub_2427D3564(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2427D357C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t LocationSearchResultsEntityRepresentation.__allocating_init(_:)(uint64_t a1)
{
  v3 = sub_2428B4238();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 48);
  v9 = *(v1 + 52);
  swift_allocObject();
  (*(v4 + 16))(v7, a1, v3);
  v10 = sub_2428B4298();
  (*(v4 + 8))(a1, v3);
  return v10;
}

uint64_t LocationSearchResultsEntityRepresentation.init(_:)(uint64_t a1)
{
  v2 = sub_2428B4238();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  (*(v3 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v6 = sub_2428B4298();
  (*(v3 + 8))(a1, v2);
  return v6;
}

uint64_t LocationSearchResultsEntityRepresentation.__deallocating_deinit()
{
  _s12CalendarLink41LocationSearchResultsEntityRepresentationCfd_0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LocationSearchResultsEntityRepresentation()
{
  result = qword_27ECC1D98;
  if (!qword_27ECC1D98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2427D3A18(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DE00](a1, a2, WitnessTable);
}

uint64_t sub_2427D3AC0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DB58](a1, WitnessTable);
}

uint64_t sub_2427D3B5C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2427D3BA4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DDE8](a1, a2, WitnessTable);
}

uint64_t dispatch thunk of LocationSearchResultsEntityRepresentation.searchResults.getter(uint64_t a1)
{
  v7 = (*v1 + class metadata base offset for LocationSearchResultsEntityRepresentation);
  v8 = (*v7 + **v7);
  v4 = (*v7)[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2427CD274;

  return v8(a1);
}

uint64_t DeleteEventIntentRepresentation.init(entity:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1DA8, &qword_2428B64C0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  result = sub_2428B4358();
  *a1 = result;
  return result;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;
  sub_2428B2F38();
  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;
  sub_2428B2F38();

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for DeleteEventIntentRepresentation(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for DeleteEventIntentRepresentation(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t (*sub_2427D3FF4(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + qword_27ECC1DE0);
  sub_2428B2F38();
  *(v4 + 40) = sub_2428B4318();
  return sub_2427D7528;
}

uint64_t (*sub_2427D40A4(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + qword_27ECC1DE8);
  sub_2428B2F38();
  *(v4 + 40) = sub_2428B4318();
  return sub_2427D7528;
}

uint64_t sub_2427D413C@<X0>(void *a1@<X0>, void *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *(*a1 + *a2);
  sub_2428B2F38();
  sub_2428B4328();

  *a3 = v6;
  return result;
}

uint64_t sub_2427D4190(char *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *(*a2 + *a5);
  v7 = *a1;
  sub_2428B2F38();
  sub_2428B4338();
}

uint64_t sub_2427D41EC(void *a1)
{
  v2 = *(v1 + *a1);
  sub_2428B2F38();
  sub_2428B4328();
}

uint64_t sub_2427D4244(char *a1, void *a2)
{
  v3 = *(v2 + *a2);
  v5 = *a1;
  sub_2428B2F38();
  sub_2428B4338();
}

uint64_t (*sub_2427D4290(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + qword_27ECC1DF0);
  sub_2428B2F38();
  *(v4 + 40) = sub_2428B4318();
  return sub_2427D7528;
}

uint64_t (*sub_2427D4340(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + qword_27ECC1DF8);
  sub_2428B2F38();
  *(v4 + 40) = sub_2428B4318();
  return sub_2427D7528;
}

uint64_t (*sub_2427D43F0(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + qword_27ECC1E00);
  sub_2428B2F38();
  *(v4 + 40) = sub_2428B4318();
  return sub_2427D7528;
}

uint64_t (*sub_2427D44A0(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + qword_27ECC1E08);
  sub_2428B2F38();
  *(v4 + 40) = sub_2428B4318();
  return sub_2427D7528;
}

double sub_2427D4538@<D0>(void *a1@<X0>, void *a2@<X3>, _OWORD *a3@<X8>)
{
  v4 = *(*a1 + *a2);
  sub_2428B2F38();
  sub_2428B4328();

  result = *&v6;
  *a3 = v6;
  return result;
}

uint64_t sub_2427D458C(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *(*a2 + *a5);
  v7 = *a1;
  v8 = a1[1];
  sub_2428B3218();
  sub_2428B2F38();
  sub_2428B4338();
}

uint64_t sub_2427D45EC(void *a1)
{
  v2 = *(v1 + *a1);
  sub_2428B2F38();
  sub_2428B4328();

  return v4;
}

uint64_t sub_2427D4640(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(v3 + *a3);
  sub_2428B2F38();
  sub_2428B4338();
}

uint64_t (*sub_2427D4688(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + qword_27ECC1E10);
  sub_2428B2F38();
  *(v4 + 40) = sub_2428B4318();
  return sub_2427D4714;
}

uint64_t sub_2427D4724(void *a1)
{
  v1 = *(*a1 + qword_27ECC1E18);
  sub_2428B2F38();
  sub_2428B4328();
}

uint64_t sub_2427D4778(uint64_t a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE0, &qword_2428B6560) - 8) + 64);
  v5 = (MEMORY[0x28223BE20])();
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  sub_2427D4960(a1, &v12 - v8);
  v10 = *(*a2 + qword_27ECC1E18);
  sub_2427D4960(v9, v7);
  sub_2428B2F38();
  sub_2428B4338();

  return sub_2427D49D0(v9);
}

uint64_t sub_2427D4860()
{
  v1 = *(v0 + qword_27ECC1E18);
  sub_2428B2F38();
  sub_2428B4328();
}

uint64_t sub_2427D48B0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE0, &qword_2428B6560);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *(v1 + qword_27ECC1E18);
  sub_2427D4960(a1, &v8 - v6);
  sub_2428B2F38();
  sub_2428B4338();

  return sub_2427D49D0(a1);
}

uint64_t sub_2427D4960(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE0, &qword_2428B6560);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2427D49D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE0, &qword_2428B6560);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t (*sub_2427D4A38(uint64_t *a1))()
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
  *(v3 + 32) = *(v1 + qword_27ECC1E18);
  sub_2428B2F38();
  *(v4 + 40) = sub_2428B4318();
  return sub_2427D7528;
}

void sub_2427D4AC4(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  (*(*a1 + 40))(*a1, 0);

  free(v1);
}

uint64_t sub_2427D4B24(void *a1)
{
  v2 = *(v1 + *a1);
  sub_2428B2F38();
  v3 = sub_2428B4348();

  return v3;
}

uint64_t static AttendeeEntityRepresentation_v0.instance(from:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE0, &qword_2428B6560);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v45 - v7;
  type metadata accessor for AttendeeEntityRepresentation_v0();
  sub_2427D5C78(&qword_27ECC1E20);
  v9 = sub_2428B41E8();
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_2428B39D8();
  if (v11 >= 8)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(v9 + qword_27ECC1DE0);
  LOBYTE(v45) = v12;
  sub_2428B2F38();
  sub_2428B4338();

  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = sub_2428B39B8();
  if (v15 >= 5)
  {
    v16 = 0;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(v9 + qword_27ECC1DE8);
  LOBYTE(v45) = v16;
  sub_2428B2F38();
  sub_2428B4338();

  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v19 = sub_2428B39C8();
  if (v19 >= 5)
  {
    v20 = 0;
  }

  else
  {
    v20 = v19;
  }

  v21 = *(v9 + qword_27ECC1DF0);
  LOBYTE(v45) = v20;
  sub_2428B2F38();
  sub_2428B4338();

  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v23 = sub_2428B39E8();
  v24 = *(v9 + qword_27ECC1DF8);
  v45 = v23;
  v46 = v25;
  sub_2428B2F38();
  sub_2428B4338();

  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v27 = *(v26 + 8);
  v28 = sub_2428B3C68();
  v29 = *(v9 + qword_27ECC1E00);
  v45 = v28;
  v46 = v30;
  sub_2428B2F38();
  sub_2428B4338();

  v31 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v32 = *(v31 + 8);
  v33 = sub_2428B3C38();
  v34 = *(v9 + qword_27ECC1E08);
  v45 = v33;
  v46 = v35;
  sub_2428B2F38();
  sub_2428B4338();

  v36 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v37 = *(v36 + 8);
  v38 = sub_2428B3C28();
  v39 = *(v9 + qword_27ECC1E10);
  v45 = v38;
  v46 = v40;
  sub_2428B2F38();
  sub_2428B4338();

  v41 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v42 = *(v41 + 8);
  sub_2428B3C58();
  v43 = *(v9 + qword_27ECC1E18);
  sub_2427D4960(v8, v6);
  sub_2428B2F38();
  sub_2428B4338();

  sub_2427D49D0(v8);
  return v9;
}

CalendarLink::AttendeeEntityRepresentation_v0::StatusRepresentation_v0 __swiftcall AttendeeEntityRepresentation_v0.StatusRepresentation_v0.init(_:)(EKParticipantStatus a1)
{
  if (a1 >= 8)
  {
    v2 = 0;
  }

  else
  {
    v2 = a1;
  }

  *v1 = v2;
  return a1;
}

CalendarLink::AttendeeEntityRepresentation_v0::KindRepresentation_v0 __swiftcall AttendeeEntityRepresentation_v0.KindRepresentation_v0.init(_:)(EKParticipantType a1)
{
  if (a1 >= (EKParticipantTypeGroup|EKParticipantTypePerson))
  {
    v2 = 0;
  }

  else
  {
    v2 = a1;
  }

  *v1 = v2;
  return a1;
}

uint64_t type metadata accessor for AttendeeEntityRepresentation_v0()
{
  result = qword_27ECC1F88;
  if (!qword_27ECC1F88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AttendeeEntityRepresentation_v0.__allocating_init(_:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return AttendeeEntityRepresentation_v0.init(_:)(a1);
}

uint64_t AttendeeEntityRepresentation_v0.init(_:)(uint64_t a1)
{
  v3 = sub_2428B4238();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = qword_27ECC1DE0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1E28, &qword_2428B6568);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  *(v1 + v8) = sub_2428B4308();
  v12 = qword_27ECC1DE8;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1E30, &qword_2428B6570);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  *(v1 + v12) = sub_2428B4308();
  v16 = qword_27ECC1DF0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1E38, &qword_2428B6578);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  *(v1 + v16) = sub_2428B4308();
  v20 = qword_27ECC1DF8;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1E40, &qword_2428B6580);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  *(v1 + v20) = sub_2428B4308();
  v24 = qword_27ECC1E00;
  v25 = *(v21 + 48);
  v26 = *(v21 + 52);
  swift_allocObject();
  *(v1 + v24) = sub_2428B4308();
  v27 = qword_27ECC1E08;
  v28 = *(v21 + 48);
  v29 = *(v21 + 52);
  swift_allocObject();
  *(v1 + v27) = sub_2428B4308();
  v30 = qword_27ECC1E10;
  v31 = *(v21 + 48);
  v32 = *(v21 + 52);
  swift_allocObject();
  *(v1 + v30) = sub_2428B4308();
  v33 = qword_27ECC1E18;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1E48, &qword_2428B6588);
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  *(v1 + v33) = sub_2428B4308();
  (*(v4 + 16))(v7, a1, v3);
  v37 = sub_2428B4298();
  (*(v4 + 8))(a1, v3);
  return v37;
}

uint64_t sub_2427D5220()
{
  v1 = *(v0 + qword_27ECC1DE0);

  v2 = *(v0 + qword_27ECC1DE8);

  v3 = *(v0 + qword_27ECC1DF0);

  v4 = *(v0 + qword_27ECC1DF8);

  v5 = *(v0 + qword_27ECC1E00);

  v6 = *(v0 + qword_27ECC1E08);

  v7 = *(v0 + qword_27ECC1E10);

  v8 = *(v0 + qword_27ECC1E18);
}

uint64_t AttendeeEntityRepresentation_v0.deinit()
{
  v0 = _s12CalendarLink41LocationSearchResultsEntityRepresentationCfd_0();
  v1 = *(v0 + qword_27ECC1DE0);

  v2 = *(v0 + qword_27ECC1DE8);

  v3 = *(v0 + qword_27ECC1DF0);

  v4 = *(v0 + qword_27ECC1DF8);

  v5 = *(v0 + qword_27ECC1E00);

  v6 = *(v0 + qword_27ECC1E08);

  v7 = *(v0 + qword_27ECC1E10);

  v8 = *(v0 + qword_27ECC1E18);

  return v0;
}

uint64_t AttendeeEntityRepresentation_v0.__deallocating_deinit()
{
  AttendeeEntityRepresentation_v0.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_2427D53B4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DE00](a1, a2, WitnessTable);
}

uint64_t sub_2427D5414(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DB58](a1, WitnessTable);
}

uint64_t sub_2427D5468(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DDE8](a1, a2, WitnessTable);
}

CalendarLink::AttendeeEntityRepresentation_v0::StatusRepresentation_v0_optional __swiftcall AttendeeEntityRepresentation_v0.StatusRepresentation_v0.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 8;
  if (rawValue < 8)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_2427D5588(uint64_t a1)
{
  v2 = sub_2427D74A8();

  return MEMORY[0x28213DAB0](a1, v2);
}

uint64_t sub_2427D55C4(uint64_t a1)
{
  v2 = sub_2427D74A8();

  return MEMORY[0x28213DAD0](a1, v2);
}

uint64_t sub_2427D5600(uint64_t a1, uint64_t a2)
{
  v4 = sub_2427D5D70();

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

uint64_t sub_2427D564C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2427D74A8();

  return MEMORY[0x28213DAC0](a1, a2, a3, v6);
}

uint64_t sub_2427D56B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2427D5D70();

  return MEMORY[0x28213DE00](a1, a2, v4);
}

uint64_t sub_2427D57A0(uint64_t a1)
{
  v2 = sub_2427D7454();

  return MEMORY[0x28213DAB0](a1, v2);
}

uint64_t sub_2427D57DC(uint64_t a1)
{
  v2 = sub_2427D7454();

  return MEMORY[0x28213DAD0](a1, v2);
}

uint64_t sub_2427D5818(uint64_t a1, uint64_t a2)
{
  v4 = sub_2427D6068();

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

uint64_t sub_2427D5864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2427D7454();

  return MEMORY[0x28213DAC0](a1, a2, a3, v6);
}

uint64_t sub_2427D58C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2427D6068();

  return MEMORY[0x28213DE00](a1, a2, v4);
}

uint64_t sub_2427D5924(uint64_t *a1, uint64_t *a2)
{
  swift_beginAccess();
  v4 = *a1;
  v5 = *a2;
  sub_2428B3218();
  return v4;
}

uint64_t sub_2427D5988(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  swift_beginAccess();
  v8 = *a4;
  *a3 = a1;
  *a4 = a2;
}

uint64_t sub_2427D5A40(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6)
{
  v9 = *a1;
  v8 = a1[1];
  swift_beginAccess();
  v10 = *a6;
  *a5 = v9;
  *a6 = v8;
  sub_2428B3218();
}

CalendarLink::AttendeeEntityRepresentation_v0::KindRepresentation_v0_optional __swiftcall AttendeeEntityRepresentation_v0.KindRepresentation_v0.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_2427D5C78(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AttendeeEntityRepresentation_v0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2427D5CC0()
{
  result = qword_27ECC1E98;
  if (!qword_27ECC1E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC1E98);
  }

  return result;
}

unint64_t sub_2427D5D18()
{
  result = qword_27ECC1EA0;
  if (!qword_27ECC1EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC1EA0);
  }

  return result;
}

unint64_t sub_2427D5D70()
{
  result = qword_27ECC1EA8;
  if (!qword_27ECC1EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC1EA8);
  }

  return result;
}

unint64_t sub_2427D5DC8()
{
  result = qword_27ECC1EB0;
  if (!qword_27ECC1EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC1EB0);
  }

  return result;
}

unint64_t sub_2427D5E20()
{
  result = qword_27ECC1EB8;
  if (!qword_27ECC1EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC1EB8);
  }

  return result;
}

unint64_t sub_2427D5EB0()
{
  result = qword_27ECC1ED0;
  if (!qword_27ECC1ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC1ED0);
  }

  return result;
}

unint64_t sub_2427D5F08()
{
  result = qword_27ECC1ED8;
  if (!qword_27ECC1ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC1ED8);
  }

  return result;
}

unint64_t sub_2427D5F60()
{
  result = qword_27ECC1EE0;
  if (!qword_27ECC1EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC1EE0);
  }

  return result;
}

unint64_t sub_2427D5FB8()
{
  result = qword_27ECC1EE8;
  if (!qword_27ECC1EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC1EE8);
  }

  return result;
}

unint64_t sub_2427D6010()
{
  result = qword_27ECC1EF0;
  if (!qword_27ECC1EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC1EF0);
  }

  return result;
}

unint64_t sub_2427D6068()
{
  result = qword_27ECC1EF8;
  if (!qword_27ECC1EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC1EF8);
  }

  return result;
}

unint64_t sub_2427D60C0()
{
  result = qword_27ECC1F00;
  if (!qword_27ECC1F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC1F00);
  }

  return result;
}

unint64_t sub_2427D6118()
{
  result = qword_27ECC1F08;
  if (!qword_27ECC1F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC1F08);
  }

  return result;
}

unint64_t sub_2427D619C()
{
  result = qword_27ECC1F20;
  if (!qword_27ECC1F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC1F20);
  }

  return result;
}

unint64_t sub_2427D61F4()
{
  result = qword_27ECC1F28;
  if (!qword_27ECC1F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC1F28);
  }

  return result;
}

unint64_t sub_2427D624C()
{
  result = qword_27ECC1F30;
  if (!qword_27ECC1F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC1F30);
  }

  return result;
}

unint64_t sub_2427D62A4()
{
  result = qword_27ECC1F38;
  if (!qword_27ECC1F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC1F38);
  }

  return result;
}

uint64_t sub_2427D62F8()
{
  v1 = *v0;
  sub_2428B4C88();
  MEMORY[0x245D1B7F0](v1);
  return sub_2428B4CB8();
}

uint64_t sub_2427D6340()
{
  v1 = *v0;
  sub_2428B4C88();
  MEMORY[0x245D1B7F0](v1);
  return sub_2428B4CB8();
}

unint64_t sub_2427D6388()
{
  result = qword_27ECC1F40;
  if (!qword_27ECC1F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC1F40);
  }

  return result;
}

unint64_t sub_2427D63E0()
{
  result = qword_27ECC1F48;
  if (!qword_27ECC1F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC1F48);
  }

  return result;
}

unint64_t sub_2427D6438()
{
  result = qword_27ECC1F50;
  if (!qword_27ECC1F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC1F50);
  }

  return result;
}

unint64_t sub_2427D6490()
{
  result = qword_27ECC1F58;
  if (!qword_27ECC1F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC1F58);
  }

  return result;
}

uint64_t sub_2427D64F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  swift_beginAccess();
  v6 = *a3;
  v7 = *a4;
  sub_2428B3218();
  return v6;
}

uint64_t sub_2427D657C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2427D65E0()
{
  result = qword_27ECC1F70;
  if (!qword_27ECC1F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC1F70);
  }

  return result;
}

unint64_t sub_2427D6638()
{
  result = qword_27ECC1F78;
  if (!qword_27ECC1F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC1F78);
  }

  return result;
}

uint64_t sub_2427D668C(uint64_t a1)
{
  v2 = sub_2427D7400();

  return MEMORY[0x28213DAB0](a1, v2);
}

unint64_t sub_2427D66CC()
{
  result = qword_27ECC1F80;
  if (!qword_27ECC1F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC1F80);
  }

  return result;
}

uint64_t sub_2427D6720(uint64_t a1)
{
  v2 = sub_2427D7400();

  return MEMORY[0x28213DAD0](a1, v2);
}

uint64_t sub_2427D675C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2427D63E0();

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

uint64_t sub_2427D67A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2427D7400();

  return MEMORY[0x28213DAC0](a1, a2, a3, v6);
}

uint64_t sub_2427D680C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2427D63E0();

  return MEMORY[0x28213DE00](a1, a2, v4);
}

uint64_t keypath_get_20Tm@<X0>(void *a1@<X3>, uint64_t *a2@<X4>, void *a3@<X8>)
{
  swift_beginAccess();
  v6 = *a2;
  *a3 = *a1;
  a3[1] = v6;
  return sub_2428B3218();
}

uint64_t getEnumTagSinglePayload for AttendeeEntityRepresentation_v0.StatusRepresentation_v0(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AttendeeEntityRepresentation_v0.StatusRepresentation_v0(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for EventEntityQuery.DateRangeQueryError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for EventEntityQuery.DateRangeQueryError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2427D7400()
{
  result = qword_27ECC1F98;
  if (!qword_27ECC1F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC1F98);
  }

  return result;
}

unint64_t sub_2427D7454()
{
  result = qword_27ECC1FA0;
  if (!qword_27ECC1FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC1FA0);
  }

  return result;
}

unint64_t sub_2427D74A8()
{
  result = qword_27ECC1FA8;
  if (!qword_27ECC1FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC1FA8);
  }

  return result;
}

uint64_t sub_2427D754C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v17 - v2;
  v17[0] = sub_2428B3558();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2428B36C8();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_2428B45F8();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_2428B3568();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = sub_2428B3338();
  __swift_allocate_value_buffer(v15, qword_27ECC1FB0);
  __swift_project_value_buffer(v15, qword_27ECC1FB0);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v4 + 104))(v7, *MEMORY[0x277CC9110], v17[0]);
  sub_2428B3578();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_2428B3328();
}

uint64_t static ParticipantEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC16D0 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3338();
  v3 = __swift_project_value_buffer(v2, qword_27ECC1FB0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t ParticipantEntity.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1D20, &qword_2428B6EC0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v34 = &v28 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v33 = &v28 - v7;
  v8 = sub_2428B36C8();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_2428B3558();
  v35 = *(v10 - 8);
  v11 = *(v35 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2428B45F8();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = sub_2428B3568();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v1[2];
  v22 = v1[3];
  v23 = v1[1];
  sub_2428B2C68();
  if (v37)
  {
    return sub_2428B3128();
  }

  v29 = v17;
  v30 = v16;
  v24 = v35;
  v31 = v20;
  v32 = v13;
  sub_2428B2C68();
  if (v37)
  {
    return sub_2428B3128();
  }

  sub_2428B2C68();
  if (v37)
  {
    return sub_2428B3128();
  }

  sub_2428B4578();
  if (qword_27ECC1780 != -1)
  {
    swift_once();
  }

  v26 = __swift_project_value_buffer(v10, qword_27ECD4500);
  (*(v24 + 16))(v32, v26, v10);
  sub_2428B36B8();
  sub_2428B3578();
  (*(v29 + 56))(v33, 1, 1, v30);
  v27 = sub_2428B3148();
  (*(*(v27 - 8) + 56))(v34, 1, 1, v27);
  return sub_2428B3178();
}

uint64_t ParticipantEntity.name.getter()
{
  v1 = *(v0 + 8);
  sub_2428B2C68();
  return v3;
}

uint64_t ParticipantEntity.emailAddress.getter()
{
  v1 = *(v0 + 16);
  sub_2428B2C68();
  return v3;
}

uint64_t ParticipantEntity.phoneNumber.getter()
{
  v1 = *(v0 + 24);
  sub_2428B2C68();
  return v3;
}

uint64_t ParticipantEntity.id.getter()
{
  v1 = *v0;
  sub_2428B2C68();
  return v3;
}

uint64_t sub_2427D7DE4(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v9 = *a1;
  v10 = a1[1];
  sub_2428B3218();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2C78();
}

uint64_t (*ParticipantEntity.id.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_2428B2C58();
  return sub_2427CD67C;
}

uint64_t sub_2427D7F64(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v9 = *a1;
  v10 = a1[1];
  sub_2428B3218();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2C78();
}

uint64_t (*ParticipantEntity.name.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_2428B2C58();
  return sub_2427CD67C;
}

uint64_t sub_2427D80E4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v9 = *a1;
  v10 = a1[1];
  sub_2428B3218();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2C78();
}

uint64_t (*ParticipantEntity.emailAddress.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 16);
  *(v3 + 32) = sub_2428B2C58();
  return sub_2427CD67C;
}

uint64_t sub_2427D8264(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v5 = a2[2];
  v4 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v9 = *a1;
  v10 = a1[1];
  sub_2428B3218();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2C78();
}

uint64_t (*ParticipantEntity.phoneNumber.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 24);
  *(v3 + 32) = sub_2428B2C58();
  return sub_2427CBEA8;
}

uint64_t sub_2427D8408(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE0, &qword_2428B6560);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  sub_2427D4960(a1, &v18 - v9);
  v11 = *a2;
  v12 = a2[1];
  v13 = a2[2];
  v14 = a2[3];
  v15 = a2[4];
  v16 = a2[5];
  sub_2427D4960(v10, v8);
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2C78();
  sub_2427D49D0(v10);
}

uint64_t ParticipantEntity.url.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE0, &qword_2428B6560);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *(v1 + 32);
  sub_2427D4960(a1, &v8 - v6);
  sub_2428B2C78();
  return sub_2427D49D0(a1);
}

uint64_t (*ParticipantEntity.url.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 32);
  *(v3 + 32) = sub_2428B2C58();
  return sub_2427CD67C;
}

uint64_t ParticipantEntity.isCurrentUser.getter()
{
  v1 = *(v0 + 40);
  sub_2428B2C68();
  return v3;
}

uint64_t sub_2427D86BC(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  v6 = a2[5];
  v9 = *a1;
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2C78();
}

uint64_t (*ParticipantEntity.isCurrentUser.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 40);
  *(v3 + 32) = sub_2428B2C58();
  return sub_2427CD67C;
}

uint64_t ParticipantEntity.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v35 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE0, &qword_2428B6560);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v37 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v36 = &v29 - v7;
  v8 = sub_2428B3558();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2428B36C8();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = sub_2428B45F8();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = sub_2428B3568();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4270, &qword_2428B6EC8);
  sub_2428B4578();
  sub_2428B36B8();
  v19 = *MEMORY[0x277CC9110];
  v20 = *(v9 + 104);
  v20(v12, v19, v8);
  sub_2428B3578();
  v34 = sub_2428B2D68();
  *a2 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3760, &qword_2428B6ED0);
  sub_2428B4578();
  sub_2428B36B8();
  v20(v12, v19, v8);
  sub_2428B3578();
  v33 = sub_2428B2D68();
  a2[1] = v33;
  sub_2428B4578();
  sub_2428B36B8();
  v20(v12, v19, v8);
  sub_2428B3578();
  v32 = sub_2428B2D68();
  a2[2] = v32;
  sub_2428B4578();
  sub_2428B36B8();
  v20(v12, v19, v8);
  sub_2428B3578();
  v31 = sub_2428B2D68();
  a2[3] = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4C00, &qword_2428B6ED8);
  sub_2428B4578();
  sub_2428B36B8();
  v20(v12, v19, v8);
  sub_2428B3578();
  v30 = sub_2428B2D28();
  a2[4] = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1FC8, &qword_2428B6EE0);
  sub_2428B4578();
  sub_2428B36B8();
  v20(v12, v19, v8);
  sub_2428B3578();
  a2[5] = sub_2428B2D78();
  v21 = v35;
  v38 = sub_2428B3FB8();
  v39 = v22;
  sub_2428B2C78();
  v38 = sub_2428B3FD8();
  v39 = v23;
  sub_2428B2C78();
  v38 = sub_2428B3F98();
  v39 = v24;
  sub_2428B2C78();
  v38 = sub_2428B3F88();
  v39 = v25;
  sub_2428B2C78();
  v26 = v36;
  sub_2428B3FC8();
  sub_2427D4960(v26, v37);
  sub_2428B2C78();
  sub_2427D49D0(v26);
  LOBYTE(v38) = sub_2428B3FA8() & 1;
  sub_2428B2C78();
  v27 = sub_2428B3FE8();
  return (*(*(v27 - 8) + 8))(v21, v27);
}

{
  v40 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE0, &qword_2428B6560);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v42 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v41 = &v34 - v7;
  v8 = sub_2428B3558();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2428B36C8();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = sub_2428B45F8();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = sub_2428B3568();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4270, &qword_2428B6EC8);
  sub_2428B4578();
  sub_2428B36B8();
  v19 = *MEMORY[0x277CC9110];
  v20 = *(v9 + 104);
  v20(v12, v19, v8);
  sub_2428B3578();
  v39 = sub_2428B2D68();
  *a2 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3760, &qword_2428B6ED0);
  sub_2428B4578();
  sub_2428B36B8();
  v20(v12, v19, v8);
  sub_2428B3578();
  v38 = sub_2428B2D68();
  a2[1] = v38;
  sub_2428B4578();
  sub_2428B36B8();
  v20(v12, v19, v8);
  sub_2428B3578();
  v37 = sub_2428B2D68();
  a2[2] = v37;
  sub_2428B4578();
  sub_2428B36B8();
  v20(v12, v19, v8);
  sub_2428B3578();
  v36 = sub_2428B2D68();
  a2[3] = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4C00, &qword_2428B6ED8);
  sub_2428B4578();
  sub_2428B36B8();
  v20(v12, v19, v8);
  sub_2428B3578();
  v35 = sub_2428B2D28();
  a2[4] = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1FC8, &qword_2428B6EE0);
  sub_2428B4578();
  sub_2428B36B8();
  v20(v12, v19, v8);
  sub_2428B3578();
  a2[5] = sub_2428B2D78();
  v21 = v40;
  v43 = MEMORY[0x245D1A9D0]();
  v44 = v22;
  v23 = sub_2428B2C78();
  v43 = MEMORY[0x245D1A9F0](v23);
  v44 = v24;
  v25 = sub_2428B2C78();
  v43 = MEMORY[0x245D1A9B0](v25);
  v44 = v26;
  v27 = sub_2428B2C78();
  v43 = MEMORY[0x245D1A9A0](v27);
  v44 = v28;
  v29 = sub_2428B2C78();
  v30 = v41;
  MEMORY[0x245D1A9E0](v29);
  sub_2427D4960(v30, v42);
  sub_2428B2C78();
  v31 = sub_2427D49D0(v30);
  LOBYTE(v43) = MEMORY[0x245D1A9C0](v31) & 1;
  sub_2428B2C78();
  v32 = sub_2428B3EA8();
  return (*(*(v32 - 8) + 8))(v21, v32);
}

uint64_t ParticipantEntity.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2428B3558();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2428B36C8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_2428B45F8();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = sub_2428B3568();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4270, &qword_2428B6EC8);
  sub_2428B4578();
  sub_2428B36B8();
  v13 = *MEMORY[0x277CC9110];
  v14 = *(v3 + 104);
  v14(v6, v13, v2);
  sub_2428B3578();
  *a1 = sub_2428B2D68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3760, &qword_2428B6ED0);
  sub_2428B4578();
  sub_2428B36B8();
  v14(v6, v13, v2);
  sub_2428B3578();
  a1[1] = sub_2428B2D68();
  sub_2428B4578();
  sub_2428B36B8();
  v14(v6, v13, v2);
  sub_2428B3578();
  a1[2] = sub_2428B2D68();
  sub_2428B4578();
  sub_2428B36B8();
  v14(v6, v13, v2);
  sub_2428B3578();
  a1[3] = sub_2428B2D68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4C00, &qword_2428B6ED8);
  sub_2428B4578();
  sub_2428B36B8();
  v14(v6, v13, v2);
  sub_2428B3578();
  a1[4] = sub_2428B2D28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1FC8, &qword_2428B6EE0);
  sub_2428B4578();
  sub_2428B36B8();
  v14(v6, v13, v2);
  sub_2428B3578();
  result = sub_2428B2D78();
  a1[5] = result;
  return result;
}

uint64_t sub_2427D9BA4(uint64_t a1)
{
  v2 = sub_2427DA9C4();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t sub_2427D9BF0@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = sub_2428B2C68();
  *a1 = v5;
  a1[1] = v6;
  return result;
}

uint64_t sub_2427D9C2C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC16D0 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3338();
  v3 = __swift_project_value_buffer(v2, qword_27ECC1FB0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2427D9CD4(uint64_t a1)
{
  v2 = sub_2427DA56C();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_2427D9D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277CBA470] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2427CD274;

  return MEMORY[0x28210C4A0](a1, a2, a3, a4);
}

uint64_t sub_2427D9DE8(uint64_t a1)
{
  v2 = sub_2427DA810();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t ParticipantEntity.personRepresentation.getter(uint64_t a1)
{
  *(v2 + 48) = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1D20, &qword_2428B6EC0) - 8) + 64) + 15;
  *(v2 + 56) = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2230, &qword_2428B6EF0) - 8) + 64) + 15;
  *(v2 + 64) = swift_task_alloc();
  v5 = sub_2428B2B28();
  *(v2 + 72) = v5;
  v6 = *(v5 - 8);
  *(v2 + 80) = v6;
  v7 = *(v6 + 64) + 15;
  *(v2 + 88) = swift_task_alloc();
  v8 = sub_2428B2AF8();
  *(v2 + 96) = v8;
  v9 = *(v8 - 8);
  *(v2 + 104) = v9;
  v10 = *(v9 + 64) + 15;
  *(v2 + 112) = swift_task_alloc();
  v11 = v1[1];
  *(v2 + 120) = *v1;
  *(v2 + 136) = v11;
  *(v2 + 152) = v1[2];

  return MEMORY[0x2822009F8](sub_2427D9FD4, 0, 0);
}

uint64_t sub_2427D9FD4()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v4 = *(v0 + 104);
  v3 = *(v0 + 112);
  v5 = *(v0 + 96);
  sub_2428B2C68();
  v6 = *(v0 + 24);
  *v3 = *(v0 + 16);
  v3[1] = v6;
  (*(v4 + 104))(v3, *MEMORY[0x277CB9CC8], v5);
  sub_2428B2C68();
  v7 = *(v0 + 40);
  v9 = *(v0 + 80);
  v8 = *(v0 + 88);
  v10 = *(v0 + 72);
  if (v7)
  {
    *v8 = *(v0 + 32);
    v8[1] = v7;
    v11 = MEMORY[0x277CB9CF8];
  }

  else
  {
    v11 = MEMORY[0x277CB9D18];
  }

  v12 = *v11;
  (*(v9 + 104))();
  v13 = *(v0 + 112);
  v14 = *(v0 + 88);
  v15 = *(v0 + 56);
  v16 = *(v0 + 64);
  v17 = *(v0 + 48);
  v23 = *(v0 + 120);
  v24 = *(v0 + 136);
  v25 = *(v0 + 152);
  v26 = *(v0 + 160);
  sub_2427DA1D8(v16);
  v18 = sub_2428B2BA8();
  (*(*(v18 - 8) + 56))(v16, 0, 1, v18);
  sub_2428B2C68();
  v19 = *(v0 + 168);
  v20 = sub_2428B3148();
  (*(*(v20 - 8) + 56))(v15, 1, 1, v20);
  sub_2428B2B08();

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_2427DA1D8@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v2 = sub_2428B35D8();
  v22 = *(v2 - 8);
  v3 = *(v22 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE0, &qword_2428B6560);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v21 - v8;
  v10 = sub_2428B2B78();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v1;
  v16 = v1[3];
  v17 = v1[4];
  v18 = v1[2];
  sub_2428B2C68();
  if (v24)
  {
    (*(v11 + 104))(v14, *MEMORY[0x277CB9D48], v10);
    return sub_2428B2B58();
  }

  else
  {
    v21[1] = v15;
    sub_2428B2C68();
    if (v24)
    {
      (*(v11 + 104))(v14, *MEMORY[0x277CB9D48], v10);
      return sub_2428B2B48();
    }

    else
    {
      sub_2428B2C68();
      v20 = v22;
      if ((*(v22 + 48))(v9, 1, v2))
      {
        sub_2427D49D0(v9);
        sub_2428B2C68();
      }

      else
      {
        (*(v20 + 16))(v5, v9, v2);
        sub_2427D49D0(v9);
        sub_2428B3598();
        (*(v20 + 8))(v5, v2);
      }

      return sub_2428B2B68();
    }
  }
}

uint64_t sub_2427DA4D4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2427CD274;

  return ParticipantEntity.personRepresentation.getter(a1);
}

unint64_t sub_2427DA56C()
{
  result = qword_280CDDD50;
  if (!qword_280CDDD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDD50);
  }

  return result;
}

unint64_t sub_2427DA5C4()
{
  result = qword_280CDE2D0;
  if (!qword_280CDE2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE2D0);
  }

  return result;
}

unint64_t sub_2427DA61C()
{
  result = qword_280CDE2C0;
  if (!qword_280CDE2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE2C0);
  }

  return result;
}

unint64_t sub_2427DA674()
{
  result = qword_280CDE298;
  if (!qword_280CDE298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE298);
  }

  return result;
}

unint64_t sub_2427DA710()
{
  result = qword_280CDE2B8;
  if (!qword_280CDE2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE2B8);
  }

  return result;
}

unint64_t sub_2427DA764()
{
  result = qword_280CDE2B0;
  if (!qword_280CDE2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE2B0);
  }

  return result;
}

unint64_t sub_2427DA7B8()
{
  result = qword_280CDE2C8;
  if (!qword_280CDE2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE2C8);
  }

  return result;
}

unint64_t sub_2427DA810()
{
  result = qword_280CDE2A8;
  if (!qword_280CDE2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE2A8);
  }

  return result;
}

unint64_t sub_2427DA8B8()
{
  result = qword_280CDE2A0;
  if (!qword_280CDE2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE2A0);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2427DA920(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_2427DA968(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2427DA9C4()
{
  result = qword_27ECC1FF0;
  if (!qword_27ECC1FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC1FF0);
  }

  return result;
}

uint64_t sub_2427DAA5C(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  return MEMORY[0x2822009F8](sub_2427DAA80, 0, 0);
}

uint64_t sub_2427DAA80()
{
  v1 = *(v0 + 120);
  sub_2428B4248();
  if (*(v0 + 80))
  {
    sub_2427D3564((v0 + 56), v0 + 16);
    v2 = *(v0 + 40);
    v3 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
    v4 = *(MEMORY[0x277CEB110] + 4);
    v5 = swift_task_alloc();
    *(v0 + 128) = v5;
    *v5 = v0;
    v5[1] = sub_2427DABB8;

    return MEMORY[0x28213DD78](v2, v3);
  }

  else
  {
    sub_2427D34A8(v0 + 56);
    sub_2427D3510();
    swift_allocError();
    swift_willThrow();
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_2427DABB8(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 128);
  v8 = *v3;
  v4[17] = a1;
  v4[18] = a2;
  v4[19] = v2;

  if (v2)
  {
    v6 = sub_2427DAE40;
  }

  else
  {
    v6 = sub_2427DACD0;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2427DACD0()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[17];
  v4 = v0[13];
  v5 = v0[14];
  v6 = sub_2428B3458();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_2428B3448();
  sub_2428B3988();
  v9 = sub_2428B38E8();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_2428B3218();
  v0[12] = sub_2428B38D8();
  sub_2427DB430(&qword_27ECC1FF8, MEMORY[0x277CF7B58]);
  sub_2428B3428();
  v12 = v0[17];
  v13 = v0[18];

  sub_2427D357C(v12, v13);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v14 = v0[1];

  return v14();
}

uint64_t sub_2427DAE40()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[19];
  v2 = v0[1];

  return v2();
}

uint64_t TransferableEventEntityRepresentation.__allocating_init(_:)(uint64_t a1)
{
  v3 = sub_2428B4238();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 48);
  v9 = *(v1 + 52);
  swift_allocObject();
  (*(v4 + 16))(v7, a1, v3);
  v10 = sub_2428B4298();
  (*(v4 + 8))(a1, v3);
  return v10;
}

uint64_t TransferableEventEntityRepresentation.init(_:)(uint64_t a1)
{
  v2 = sub_2428B4238();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v6 = sub_2428B4298();
  (*(v3 + 8))(a1, v2);
  return v6;
}

uint64_t TransferableEventEntityRepresentation.__deallocating_deinit()
{
  _s12CalendarLink41LocationSearchResultsEntityRepresentationCfd_0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TransferableEventEntityRepresentation()
{
  result = qword_27ECC2048;
  if (!qword_27ECC2048)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2427DB2EC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DE00](a1, a2, WitnessTable);
}

uint64_t sub_2427DB394(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DB58](a1, WitnessTable);
}

uint64_t sub_2427DB430(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2427DB478(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DDE8](a1, a2, WitnessTable);
}

uint64_t dispatch thunk of TransferableEventEntityRepresentation.event(with:)(uint64_t a1, uint64_t a2)
{
  v9 = (*v2 + class metadata base offset for TransferableEventEntityRepresentation);
  v10 = (*v9 + **v9);
  v6 = (*v9)[1];
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2427CD274;

  return v10(a1, a2);
}

uint64_t sub_2427DB6E0(uint64_t a1, uint64_t *a2)
{
  v4 = sub_2428B35D8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  sub_2428B2F38();
  sub_2428B4388();
  (*(v5 + 8))(v11, v4);
}

uint64_t FetchTransferableEventByURLIntentRepresentation.url.setter(uint64_t a1)
{
  v3 = sub_2428B35D8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = *v1;
  (*(v4 + 16))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  sub_2428B4388();
  return (*(v4 + 8))(a1, v3);
}

void (*FetchTransferableEventByURLIntentRepresentation.url.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_2428B4368();
  return sub_2427CC2B0;
}

uint64_t FetchTransferableEventByURLIntentRepresentation.init(url:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_2428B35D8();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v19 - v10;
  v12 = v5[2];
  v12(&v19 - v10, a1, v4);
  v12(v9, v11, v4);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2058, &qword_2428B7440);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = sub_2428B4358();
  v17 = v5[1];
  v17(a1, v4);
  result = (v17)(v11, v4);
  *a2 = v16;
  return result;
}

uint64_t OpenIdiom.hashValue.getter()
{
  v1 = *v0;
  sub_2428B4C88();
  MEMORY[0x245D1B7F0](v1);
  return sub_2428B4CB8();
}

uint64_t sub_2427DBC0C()
{
  sub_2427CCDB0();
  swift_allocError();
  *v1 = 0x80;
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_2427DBCBC()
{
  result = qword_27ECC2060;
  if (!qword_27ECC2060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC2060);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OpenIdiom(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for OpenIdiom(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t dispatch thunk of CalendarViewOpener.open(view:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2427DC6B4;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of CalendarViewOpener.open(date:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2427DC6B4;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of CalendarViewOpener.open(event:withIdiom:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 24);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_2427DC6B4;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of CalendarViewOpener.list(description:events:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 32);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_2427DC6B4;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of CalendarViewOpener.open(calendar:enableDoneInitially:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 40);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_2427DC6B4;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of CalendarViewOpener.highlight(event:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 48);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2427DC6B4;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of CalendarViewOpener.composeEmail(event:recipients:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 56);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_2427CD274;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_2427DC6BC()
{
  v0 = sub_2428B3338();
  __swift_allocate_value_buffer(v0, qword_27ECC2070);
  __swift_project_value_buffer(v0, qword_27ECC2070);
  return sub_2428B3318();
}

uint64_t static TransferableSourceEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC16D8 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3338();
  v3 = __swift_project_value_buffer(v2, qword_27ECC2070);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static TransferableSourceEntity.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (qword_27ECC16D8 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3338();
  v3 = __swift_project_value_buffer(v2, qword_27ECC2070);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}