unint64_t sub_2427AD1FC()
{
  result = qword_27ECC0920;
  if (!qword_27ECC0920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC0920);
  }

  return result;
}

unint64_t sub_2427AD254()
{
  result = qword_281349500;
  if (!qword_281349500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281349500);
  }

  return result;
}

unint64_t sub_2427AD2AC()
{
  result = qword_281349508;
  if (!qword_281349508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281349508);
  }

  return result;
}

uint64_t IntegrationEntry.init<A>(entry:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC08D8, &qword_2427BB0B0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v40 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC08E0, &qword_2427BB0B8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v40 - v14;
  v16 = type metadata accessor for IntegrationEntry(0);
  v17 = v16[7];
  v18 = sub_2427B8DBC();
  (*(*(v18 - 8) + 56))(&a4[v17], 1, 1, v18);
  v19 = v16[12];
  v20 = type metadata accessor for IntegrationRecurrence(0);
  (*(*(v20 - 8) + 56))(&a4[v19], 1, 1, v20);
  v21 = &a4[v16[13]];
  *(v21 + 1) = 0u;
  *(v21 + 2) = 0u;
  *v21 = 0u;
  v22 = v16[15];
  v40 = &a4[v16[14]];
  v41 = &a4[v22];
  *a4 = (*(a3 + 8))(a2, a3);
  *(a4 + 1) = v23;
  v24 = &a4[v16[5]];
  (*(a3 + 16))(a2, a3);
  v25 = &a4[v16[6]];
  (*(a3 + 24))(a2, a3);
  (*(a3 + 32))(a2, a3);
  sub_2427ACF3C(v15, &a4[v17], &qword_27ECC08E0, &qword_2427BB0B8);
  v26 = (*(a3 + 40))(a2, a3);
  v27 = &a4[v16[8]];
  *v27 = v26;
  v27[1] = v28;
  a4[v16[9]] = (*(a3 + 48))(a2, a3) & 1;
  a4[v16[10]] = (*(a3 + 56))(a2, a3) & 1;
  (*(a3 + 72))(a2, a3);
  sub_2427ACF3C(v11, &a4[v19], &qword_27ECC08D8, &qword_2427BB0B0);
  *&a4[v16[11]] = (*(a3 + 64))(a2, a3);
  (*(a3 + 80))(v42, a2, a3);
  v29 = v43;
  v30 = v44;
  sub_2427ACEDC(*v21, *(v21 + 1), *(v21 + 2), *(v21 + 3), *(v21 + 4), *(v21 + 5));
  v31 = v42[1];
  *v21 = v42[0];
  *(v21 + 1) = v31;
  *(v21 + 4) = v29;
  *(v21 + 5) = v30;
  v32 = (*(a3 + 88))(a2, a3);
  v33 = v40;
  *v40 = v32;
  v33[1] = v34;
  v35 = (*(a3 + 96))(a2, a3);
  v37 = v36;
  result = (*(*(a2 - 8) + 8))(a1, a2);
  v39 = v41;
  *v41 = v35;
  v39[1] = v37;
  return result;
}

uint64_t IntegrationColor.init(providerIdentifier:colorIdentifier:data:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

CalendarIntegrationSupport::IntegrationColor::Identifier __swiftcall IntegrationColor.Identifier.init(providerIdentifier:colorIdentifier:)(Swift::String providerIdentifier, Swift::String colorIdentifier)
{
  *v2 = providerIdentifier;
  v2[1] = colorIdentifier;
  result.colorIdentifier = colorIdentifier;
  result.providerIdentifier = providerIdentifier;
  return result;
}

uint64_t IntegrationRecurrence.init(frequency:interval:recurrenceEnd:firstDayOfTheWeek:daysOfTheWeek:daysOfTheMonth:daysOfTheYear:weeksOfTheYear:monthsOfTheYear:setPositions:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v12 = *a1;
  v24 = *a4;
  v13 = type metadata accessor for IntegrationRecurrence(0);
  v14 = v13[6];
  v15 = type metadata accessor for IntegrationRecurrence.RecurrenceEnd(0);
  (*(*(v15 - 8) + 56))(a9 + v14, 1, 1, v15);
  v16 = v13[7];
  *(a9 + v16) = 7;
  v17 = v13[8];
  v18 = v13[9];
  v20 = v13[10];
  v19 = v13[11];
  v21 = v13[12];
  v22 = v13[13];
  result = sub_2427ACF3C(a3, a9 + v14, &qword_27ECC0890, &qword_2427BB3B0);
  *a9 = v12;
  *(a9 + 8) = a2;
  *(a9 + v16) = v24;
  *(a9 + v17) = a5;
  *(a9 + v18) = a6;
  *(a9 + v20) = a7;
  *(a9 + v19) = a8;
  *(a9 + v21) = a10;
  *(a9 + v22) = a11;
  return result;
}

uint64_t sub_2427AD890(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t IntegrationEntry.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t IntegrationEntry.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t IntegrationEntry.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IntegrationEntry(0) + 20);
  v4 = sub_2427B8D2C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IntegrationEntry.startDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IntegrationEntry(0) + 20);
  v4 = sub_2427B8D2C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IntegrationEntry.endDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IntegrationEntry(0) + 24);
  v4 = sub_2427B8D2C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t IntegrationEntry.endDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IntegrationEntry(0) + 24);
  v4 = sub_2427B8D2C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IntegrationEntry.title.getter()
{
  v1 = (v0 + *(type metadata accessor for IntegrationEntry(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t IntegrationEntry.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for IntegrationEntry(0) + 32));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t IntegrationEntry.allDay.setter(char a1)
{
  result = type metadata accessor for IntegrationEntry(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t IntegrationEntry.completed.setter(char a1)
{
  result = type metadata accessor for IntegrationEntry(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t IntegrationEntry.priority.setter(uint64_t a1)
{
  result = type metadata accessor for IntegrationEntry(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

void IntegrationEntry.color.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for IntegrationEntry(0) + 52));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;

  sub_2427AE07C(v4, v5, v6, v7, v8, v9);
}

void sub_2427AE07C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a2)
  {

    sub_2427A3288(a5, a6);
  }
}

__n128 IntegrationEntry.color.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = v1 + *(type metadata accessor for IntegrationEntry(0) + 52);
  sub_2427ACEDC(*v5, *(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40));
  result = *a1;
  v7 = *(a1 + 16);
  *v5 = *a1;
  *(v5 + 16) = v7;
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;
  return result;
}

uint64_t IntegrationEntry.personaIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for IntegrationEntry(0) + 56));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t IntegrationEntry.personaIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for IntegrationEntry(0) + 56));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t IntegrationEntry.externalIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for IntegrationEntry(0) + 60));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t IntegrationEntry.externalIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for IntegrationEntry(0) + 60));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

__n128 IntegrationEntry.init(identifier:startDate:endDate:timeZone:title:allDay:completed:priority:recurrence:color:personaIdentifier:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, char *a9@<X8>, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v40 = *(a13 + 32);
  v39 = *(a13 + 40);
  v18 = type metadata accessor for IntegrationEntry(0);
  v19 = v18[7];
  v20 = sub_2427B8DBC();
  v36 = *a13;
  v34 = *(a13 + 16);
  (*(*(v20 - 8) + 56))(&a9[v19], 1, 1, v20);
  v21 = v18[12];
  v22 = type metadata accessor for IntegrationRecurrence(0);
  (*(*(v22 - 8) + 56))(&a9[v21], 1, 1, v22);
  v23 = &a9[v18[13]];
  *(v23 + 1) = 0u;
  *(v23 + 2) = 0u;
  *v23 = 0u;
  v24 = &a9[v18[14]];
  v25 = &a9[v18[15]];
  *v25 = 0;
  *(v25 + 1) = 0;
  *a9 = a1;
  *(a9 + 1) = a2;
  v26 = v18[5];
  v27 = sub_2427B8D2C();
  v28 = *(*(v27 - 8) + 32);
  v28(&a9[v26], a3, v27);
  v28(&a9[v18[6]], a4, v27);
  sub_2427ACF3C(a5, &a9[v19], &qword_27ECC08E0, &qword_2427BB0B8);
  v29 = &a9[v18[8]];
  *v29 = a6;
  *(v29 + 1) = a7;
  a9[v18[9]] = a8;
  a9[v18[10]] = a10;
  *&a9[v18[11]] = a11;
  sub_2427ACF3C(a12, &a9[v21], &qword_27ECC08D8, &qword_2427BB0B0);
  sub_2427ACEDC(*v23, *(v23 + 1), *(v23 + 2), *(v23 + 3), *(v23 + 4), *(v23 + 5));
  result = v36;
  *v23 = v36;
  *(v23 + 1) = v34;
  *(v23 + 4) = v40;
  *(v23 + 5) = v39;
  *v24 = a14;
  *(v24 + 1) = a15;
  return result;
}

uint64_t IntegrationEntry.hash(into:)()
{
  v1 = v0;
  v2 = type metadata accessor for IntegrationRecurrence(0);
  v42 = *(v2 - 8);
  v43 = v2;
  v3 = *(v42 + 64);
  MEMORY[0x28223BE20](v2);
  v40 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC08D8, &qword_2427BB0B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v40 - v7;
  v8 = sub_2427B8DBC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC08E0, &qword_2427BB0B8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v40 - v15;
  v17 = *v0;
  v18 = v0[1];
  sub_2427B8FCC();
  v19 = type metadata accessor for IntegrationEntry(0);
  v20 = v19[5];
  sub_2427B8D2C();
  sub_2427B251C(&qword_27ECC0928, MEMORY[0x277CC9578]);
  sub_2427B8F8C();
  v21 = v1 + v19[6];
  sub_2427B8F8C();
  sub_2427B2564(v1 + v19[7], v16, &qword_27ECC08E0, &qword_2427BB0B8);
  if ((*(v9 + 48))(v16, 1, v8) == 1)
  {
    sub_2427B942C();
  }

  else
  {
    (*(v9 + 32))(v12, v16, v8);
    sub_2427B942C();
    sub_2427B251C(&qword_27ECC0930, MEMORY[0x277CC9A70]);
    sub_2427B8F8C();
    (*(v9 + 8))(v12, v8);
  }

  v22 = (v1 + v19[8]);
  v23 = *v22;
  v24 = v22[1];
  sub_2427B8FCC();
  v25 = *(v1 + v19[9]);
  sub_2427B942C();
  v26 = *(v1 + v19[10]);
  sub_2427B942C();
  MEMORY[0x245D18CB0](*(v1 + v19[11]));
  v27 = v41;
  sub_2427B2564(v1 + v19[12], v41, &qword_27ECC08D8, &qword_2427BB0B0);
  if ((*(v42 + 48))(v27, 1, v43) == 1)
  {
    sub_2427B942C();
  }

  else
  {
    v28 = v40;
    sub_2427B2630(v27, v40, type metadata accessor for IntegrationRecurrence);
    sub_2427B942C();
    IntegrationRecurrence.hash(into:)();
    sub_2427B2698(v28, type metadata accessor for IntegrationRecurrence);
  }

  v29 = (v1 + v19[13]);
  if (v29[1])
  {
    v31 = v29[4];
    v30 = v29[5];
    v33 = v29[2];
    v32 = v29[3];
    v34 = *v29;
    sub_2427B942C();
    sub_2427B8FCC();
    sub_2427B8FCC();
    sub_2427B8CDC();
  }

  else
  {
    sub_2427B942C();
  }

  v35 = (v1 + v19[14]);
  if (v35[1])
  {
    v36 = *v35;
    sub_2427B942C();
    sub_2427B8FCC();
  }

  else
  {
    sub_2427B942C();
  }

  v37 = (v1 + v19[15]);
  if (!v37[1])
  {
    return sub_2427B942C();
  }

  v38 = *v37;
  sub_2427B942C();
  return sub_2427B8FCC();
}

uint64_t sub_2427AEAA0()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_2427AEAD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_2427B8D2C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2427AEB44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_2427B8D2C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2427AEBEC(uint64_t a1)
{
  v2 = (v1 + *(a1 + 32));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

void sub_2427AEC7C(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (v2 + *(a1 + 52));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  *a2 = *v3;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  a2[4] = v8;
  a2[5] = v9;
  sub_2427AE07C(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_2427AECA0(uint64_t a1)
{
  v2 = (v1 + *(a1 + 56));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_2427AECD8(uint64_t a1)
{
  v2 = (v1 + *(a1 + 60));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t IntegrationRecurrence.firstDayOfTheWeek.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for IntegrationRecurrence(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t IntegrationRecurrence.firstDayOfTheWeek.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for IntegrationRecurrence(0);
  *(v1 + *(result + 28)) = v2;
  return result;
}

uint64_t IntegrationRecurrence.daysOfTheWeek.getter()
{
  v1 = *(v0 + *(type metadata accessor for IntegrationRecurrence(0) + 32));
}

uint64_t IntegrationRecurrence.daysOfTheWeek.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IntegrationRecurrence(0) + 32);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t IntegrationRecurrence.daysOfTheMonth.getter()
{
  v1 = *(v0 + *(type metadata accessor for IntegrationRecurrence(0) + 36));
}

uint64_t IntegrationRecurrence.daysOfTheMonth.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IntegrationRecurrence(0) + 36);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t IntegrationRecurrence.daysOfTheYear.getter()
{
  v1 = *(v0 + *(type metadata accessor for IntegrationRecurrence(0) + 40));
}

uint64_t IntegrationRecurrence.daysOfTheYear.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IntegrationRecurrence(0) + 40);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t IntegrationRecurrence.weeksOfTheYear.getter()
{
  v1 = *(v0 + *(type metadata accessor for IntegrationRecurrence(0) + 44));
}

uint64_t IntegrationRecurrence.weeksOfTheYear.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IntegrationRecurrence(0) + 44);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t IntegrationRecurrence.monthsOfTheYear.getter()
{
  v1 = *(v0 + *(type metadata accessor for IntegrationRecurrence(0) + 48));
}

uint64_t IntegrationRecurrence.monthsOfTheYear.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IntegrationRecurrence(0) + 48);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t IntegrationRecurrence.setPositions.getter()
{
  v1 = *(v0 + *(type metadata accessor for IntegrationRecurrence(0) + 52));
}

uint64_t IntegrationRecurrence.setPositions.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IntegrationRecurrence(0) + 52);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t IntegrationRecurrence.RecurrenceEnd.hash(into:)()
{
  v1 = sub_2427B8D2C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for IntegrationRecurrence.RecurrenceEnd(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2427B25CC(v0, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = *v9;
    MEMORY[0x245D18CB0](1);
    return MEMORY[0x245D18CB0](v10);
  }

  else
  {
    (*(v2 + 32))(v5, v9, v1);
    MEMORY[0x245D18CB0](0);
    sub_2427B251C(&qword_27ECC0928, MEMORY[0x277CC9578]);
    sub_2427B8F8C();
    return (*(v2 + 8))(v5, v1);
  }
}

uint64_t IntegrationRecurrence.RecurrenceEnd.hashValue.getter()
{
  v1 = v0;
  v2 = sub_2427B8D2C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for IntegrationRecurrence.RecurrenceEnd(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2427B940C();
  sub_2427B25CC(v1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *v10;
    MEMORY[0x245D18CB0](1);
    MEMORY[0x245D18CB0](v11);
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    MEMORY[0x245D18CB0](0);
    sub_2427B251C(&qword_27ECC0928, MEMORY[0x277CC9578]);
    sub_2427B8F8C();
    (*(v3 + 8))(v6, v2);
  }

  return sub_2427B943C();
}

uint64_t sub_2427AF740(uint64_t a1, uint64_t a2)
{
  v4 = sub_2427B8D2C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v12 = (&v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2427B25CC(v2, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *v12;
    MEMORY[0x245D18CB0](1);
    return MEMORY[0x245D18CB0](v13);
  }

  else
  {
    (*(v5 + 32))(v9, v12, v4);
    MEMORY[0x245D18CB0](0);
    sub_2427B251C(&qword_27ECC0928, MEMORY[0x277CC9578]);
    sub_2427B8F8C();
    return (*(v5 + 8))(v9, v4);
  }
}

uint64_t sub_2427AF8FC(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = sub_2427B8D2C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v13 = (&v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2427B940C();
  sub_2427B25CC(v4, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *v13;
    MEMORY[0x245D18CB0](1);
    MEMORY[0x245D18CB0](v14);
  }

  else
  {
    (*(v6 + 32))(v10, v13, v5);
    MEMORY[0x245D18CB0](0);
    sub_2427B251C(&qword_27ECC0928, MEMORY[0x277CC9578]);
    sub_2427B8F8C();
    (*(v6 + 8))(v10, v5);
  }

  return sub_2427B943C();
}

uint64_t IntegrationRecurrence.DayOfTheWeek.hash(into:)()
{
  v1 = *(v0 + 1);
  MEMORY[0x245D18CB0](*v0);
  return MEMORY[0x245D18CB0](v1);
}

uint64_t IntegrationRecurrence.DayOfTheWeek.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  sub_2427B940C();
  MEMORY[0x245D18CB0](v1);
  MEMORY[0x245D18CB0](v2);
  return sub_2427B943C();
}

uint64_t sub_2427AFC54()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  sub_2427B940C();
  MEMORY[0x245D18CB0](v1);
  MEMORY[0x245D18CB0](v2);
  return sub_2427B943C();
}

uint64_t sub_2427AFCB4()
{
  v1 = *(v0 + 1);
  MEMORY[0x245D18CB0](*v0);
  return MEMORY[0x245D18CB0](v1);
}

uint64_t sub_2427AFCF4()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  sub_2427B940C();
  MEMORY[0x245D18CB0](v1);
  MEMORY[0x245D18CB0](v2);
  return sub_2427B943C();
}

uint64_t IntegrationRecurrence.hash(into:)()
{
  v1 = sub_2427B8D2C();
  v49 = *(v1 - 8);
  v50 = v1;
  v2 = *(v49 + 64);
  MEMORY[0x28223BE20](v1);
  v48 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for IntegrationRecurrence.RecurrenceEnd(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = (&v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v11 = &v48 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC0890, &qword_2427BB3B0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v48 - v14;
  MEMORY[0x245D18CB0](*v0);
  MEMORY[0x245D18CB0](*(v0 + 1));
  v51 = type metadata accessor for IntegrationRecurrence(0);
  sub_2427B2564(&v0[*(v51 + 24)], v15, &qword_27ECC0890, &qword_2427BB3B0);
  if ((*(v5 + 48))(v15, 1, v4) == 1)
  {
    sub_2427B942C();
    v16 = v51;
  }

  else
  {
    sub_2427B2630(v15, v11, type metadata accessor for IntegrationRecurrence.RecurrenceEnd);
    sub_2427B942C();
    sub_2427B25CC(v11, v9);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v17 = *v9;
      MEMORY[0x245D18CB0](1);
      MEMORY[0x245D18CB0](v17);
    }

    else
    {
      v19 = v48;
      v18 = v49;
      v20 = v50;
      (*(v49 + 32))(v48, v9, v50);
      MEMORY[0x245D18CB0](0);
      sub_2427B251C(&qword_27ECC0928, MEMORY[0x277CC9578]);
      sub_2427B8F8C();
      (*(v18 + 8))(v19, v20);
    }

    v16 = v51;
    sub_2427B2698(v11, type metadata accessor for IntegrationRecurrence.RecurrenceEnd);
  }

  v21 = v0[v16[7]];
  sub_2427B942C();
  if (v21 != 7)
  {
    MEMORY[0x245D18CB0](v21);
  }

  v22 = *&v0[v16[8]];
  if (v22)
  {
    sub_2427B942C();
    MEMORY[0x245D18CB0](*(v22 + 16));
    v23 = *(v22 + 16);
    if (v23)
    {
      v24 = (v22 + 40);
      do
      {
        v25 = *(v24 - 8);
        v26 = *v24;
        v24 += 2;
        MEMORY[0x245D18CB0](v25);
        MEMORY[0x245D18CB0](v26);
        --v23;
      }

      while (v23);
    }
  }

  else
  {
    sub_2427B942C();
  }

  v27 = *&v0[v16[9]];
  if (v27)
  {
    sub_2427B942C();
    MEMORY[0x245D18CB0](*(v27 + 16));
    v28 = *(v27 + 16);
    if (v28)
    {
      v29 = (v27 + 32);
      do
      {
        v30 = *v29++;
        MEMORY[0x245D18CB0](v30);
        --v28;
      }

      while (v28);
    }
  }

  else
  {
    sub_2427B942C();
  }

  v31 = *&v0[v16[10]];
  if (v31)
  {
    sub_2427B942C();
    MEMORY[0x245D18CB0](*(v31 + 16));
    v32 = *(v31 + 16);
    if (v32)
    {
      v33 = (v31 + 32);
      do
      {
        v34 = *v33++;
        MEMORY[0x245D18CB0](v34);
        --v32;
      }

      while (v32);
    }
  }

  else
  {
    sub_2427B942C();
  }

  v35 = *&v0[v16[11]];
  if (v35)
  {
    sub_2427B942C();
    MEMORY[0x245D18CB0](*(v35 + 16));
    v36 = *(v35 + 16);
    if (v36)
    {
      v37 = (v35 + 32);
      do
      {
        v38 = *v37++;
        MEMORY[0x245D18CB0](v38);
        --v36;
      }

      while (v36);
    }
  }

  else
  {
    sub_2427B942C();
  }

  v39 = *&v0[v16[12]];
  if (v39)
  {
    sub_2427B942C();
    MEMORY[0x245D18CB0](*(v39 + 16));
    v40 = *(v39 + 16);
    if (v40)
    {
      v41 = (v39 + 32);
      do
      {
        v42 = *v41++;
        MEMORY[0x245D18CB0](v42);
        --v40;
      }

      while (v40);
    }
  }

  else
  {
    sub_2427B942C();
  }

  v43 = *&v0[v16[13]];
  if (!v43)
  {
    return sub_2427B942C();
  }

  sub_2427B942C();
  result = MEMORY[0x245D18CB0](*(v43 + 16));
  v45 = *(v43 + 16);
  if (v45)
  {
    v46 = (v43 + 32);
    do
    {
      v47 = *v46++;
      result = MEMORY[0x245D18CB0](v47);
      --v45;
    }

    while (v45);
  }

  return result;
}

uint64_t sub_2427B02F4(void (*a1)(_BYTE *))
{
  sub_2427B940C();
  a1(v3);
  return sub_2427B943C();
}

uint64_t sub_2427B0354(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_2427B940C();
  a3(v5);
  return sub_2427B943C();
}

uint64_t sub_2427B03B8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_2427B940C();
  a4(v6);
  return sub_2427B943C();
}

uint64_t IntegrationColor.Identifier.providerIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t IntegrationColor.Identifier.providerIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t IntegrationColor.Identifier.colorIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t IntegrationColor.Identifier.colorIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t static IntegrationColor.Identifier.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_2427B939C(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_2427B939C();
    }
  }

  return result;
}

uint64_t IntegrationColor.Identifier.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_2427B8FCC();

  return sub_2427B8FCC();
}

uint64_t IntegrationColor.Identifier.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_2427B940C();
  sub_2427B8FCC();
  sub_2427B8FCC();
  return sub_2427B943C();
}

uint64_t sub_2427B066C()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_2427B940C();
  sub_2427B8FCC();
  sub_2427B8FCC();
  return sub_2427B943C();
}

uint64_t sub_2427B06D4()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_2427B8FCC();

  return sub_2427B8FCC();
}

uint64_t sub_2427B0724()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_2427B940C();
  sub_2427B8FCC();
  sub_2427B8FCC();
  return sub_2427B943C();
}

uint64_t sub_2427B0788(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_2427B939C(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_2427B939C();
    }
  }

  return result;
}

uint64_t IntegrationColor.identifier.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

__n128 IntegrationColor.identifier.setter(__n128 *a1)
{
  v7 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];
  v4 = v1->n128_u64[1];
  v5 = v1[1].n128_u64[1];

  result = v7;
  *v1 = v7;
  v1[1].n128_u64[0] = v2;
  v1[1].n128_u64[1] = v3;
  return result;
}

uint64_t IntegrationColor.data.getter()
{
  v1 = *(v0 + 32);
  sub_2427A3288(v1, *(v0 + 40));
  return v1;
}

uint64_t IntegrationColor.data.setter(uint64_t a1, uint64_t a2)
{
  result = sub_2427A32F0(*(v2 + 32), *(v2 + 40));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t IntegrationColor.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_2427B8FCC();
  sub_2427B8FCC();

  return sub_2427B8CDC();
}

uint64_t IntegrationColor.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_2427B940C();
  sub_2427B8FCC();
  sub_2427B8FCC();
  sub_2427B8CDC();
  return sub_2427B943C();
}

uint64_t sub_2427B0A68()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_2427B940C();
  sub_2427B8FCC();
  sub_2427B8FCC();
  sub_2427B8CDC();
  return sub_2427B943C();
}

uint64_t sub_2427B0AEC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_2427B8FCC();
  sub_2427B8FCC();

  return sub_2427B8CDC();
}

uint64_t sub_2427B0B58()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_2427B940C();
  sub_2427B8FCC();
  sub_2427B8FCC();
  sub_2427B8CDC();
  return sub_2427B943C();
}

uint64_t sub_2427B0BDC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 40);
  v4 = (a2 + 40);
  while (v2)
  {
    v5 = *(v4 - 8);
    v7 = *v4;
    v4 += 2;
    v6 = v7;
    result = *(v3 - 8) == v5 && *v3 == v6;
    v9 = result != 1 || v2-- == 1;
    v3 += 2;
    if (v9)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2427B0C4C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2427B0CA8@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_2427B8B7C();
    if (v10)
    {
      v11 = sub_2427B8B9C();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_2427B8B8C();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x277D85DE8];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_2427B8B7C();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_2427B8B9C();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_2427B8B8C();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_2427B0ED8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_2427B173C(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_2427A32F0(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_2427B0CA8(v14, a3, a4, &v13);
  v10 = v4;
  sub_2427A32F0(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

uint64_t _s26CalendarIntegrationSupport0B10RecurrenceV0D3EndO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2427B8D2C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for IntegrationRecurrence.RecurrenceEnd(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (&v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v15 = &v25 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC09C0, &qword_2427BB9B8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v25 - v19;
  v21 = *(v18 + 56);
  sub_2427B25CC(a1, &v25 - v19);
  sub_2427B25CC(a2, &v20[v21]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2427B25CC(v20, v13);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v22 = *v13 == *&v20[v21];
LABEL_8:
      sub_2427B2698(v20, type metadata accessor for IntegrationRecurrence.RecurrenceEnd);
      return v22 & 1;
    }
  }

  else
  {
    sub_2427B25CC(v20, v15);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v5 + 32))(v8, &v20[v21], v4);
      v22 = sub_2427B8D0C();
      v23 = *(v5 + 8);
      v23(v8, v4);
      v23(v15, v4);
      goto LABEL_8;
    }

    (*(v5 + 8))(v15, v4);
  }

  sub_2427A4230(v20, &qword_27ECC09C0, &qword_2427BB9B8);
  v22 = 0;
  return v22 & 1;
}

BOOL _s26CalendarIntegrationSupport0B10RecurrenceV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for IntegrationRecurrence.RecurrenceEnd(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC0890, &qword_2427BB3B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v52 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC09B8, &qword_2427BB9B0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v52 - v16;
  if (*a1 != *a2 || *(a1 + 1) != *(a2 + 1))
  {
    return 0;
  }

  v18 = v15;
  v19 = type metadata accessor for IntegrationRecurrence(0);
  v20 = a1;
  v21 = a2;
  v52 = v19;
  v53 = v20;
  v22 = *(v19 + 24);
  v23 = *(v18 + 48);
  sub_2427B2564(&v20[v22], v17, &qword_27ECC0890, &qword_2427BB3B0);
  v24 = &v21[v22];
  v25 = v21;
  sub_2427B2564(v24, &v17[v23], &qword_27ECC0890, &qword_2427BB3B0);
  v26 = *(v5 + 48);
  if (v26(v17, 1, v4) == 1)
  {
    if (v26(&v17[v23], 1, v4) == 1)
    {
      sub_2427A4230(v17, &qword_27ECC0890, &qword_2427BB3B0);
      goto LABEL_11;
    }

LABEL_8:
    sub_2427A4230(v17, &qword_27ECC09B8, &qword_2427BB9B0);
    return 0;
  }

  sub_2427B2564(v17, v12, &qword_27ECC0890, &qword_2427BB3B0);
  if (v26(&v17[v23], 1, v4) == 1)
  {
    sub_2427B2698(v12, type metadata accessor for IntegrationRecurrence.RecurrenceEnd);
    goto LABEL_8;
  }

  sub_2427B2630(&v17[v23], v8, type metadata accessor for IntegrationRecurrence.RecurrenceEnd);
  v28 = _s26CalendarIntegrationSupport0B10RecurrenceV0D3EndO2eeoiySbAE_AEtFZ_0(v12, v8);
  sub_2427B2698(v8, type metadata accessor for IntegrationRecurrence.RecurrenceEnd);
  sub_2427B2698(v12, type metadata accessor for IntegrationRecurrence.RecurrenceEnd);
  sub_2427A4230(v17, &qword_27ECC0890, &qword_2427BB3B0);
  if ((v28 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  v30 = v52;
  v29 = v53;
  v31 = v52[7];
  v32 = v53[v31];
  v33 = v25[v31];
  if (v32 == 7)
  {
    if (v33 != 7)
    {
      return 0;
    }
  }

  else if (v32 != v33)
  {
    return 0;
  }

  v34 = v52[8];
  v35 = *&v53[v34];
  v36 = *&v25[v34];
  if (v35)
  {
    if (!v36 || (sub_2427B0BDC(v35, v36) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v36)
  {
    return 0;
  }

  v37 = v30[9];
  v38 = *&v29[v37];
  v39 = *&v25[v37];
  if (v38)
  {
    if (!v39 || (sub_2427B0C4C(v38, v39) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v39)
  {
    return 0;
  }

  v40 = v30[10];
  v41 = *&v29[v40];
  v42 = *&v25[v40];
  if (v41)
  {
    if (!v42 || (sub_2427B0C4C(v41, v42) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v42)
  {
    return 0;
  }

  v43 = v30[11];
  v44 = *&v29[v43];
  v45 = *&v25[v43];
  if (v44)
  {
    if (!v45 || (sub_2427B0C4C(v44, v45) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v45)
  {
    return 0;
  }

  v46 = v30[12];
  v47 = *&v29[v46];
  v48 = *&v25[v46];
  if (v47)
  {
    if (!v48 || (sub_2427B0C4C(v47, v48) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v48)
  {
    return 0;
  }

  v49 = v30[13];
  v50 = *&v29[v49];
  v51 = *&v25[v49];
  if (v50)
  {
    return v51 && (sub_2427B0C4C(v50, v51) & 1) != 0;
  }

  return !v51;
}

uint64_t sub_2427B173C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_2427B8B7C();
  v11 = result;
  if (result)
  {
    result = sub_2427B8B9C();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_2427B8B8C();
  sub_2427B0CA8(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_2427B17F4(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_2427A3288(a3, a4);
          return sub_2427B0ED8(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t _s26CalendarIntegrationSupport0B5ColorV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_2427B939C() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_2427B939C() & 1) == 0)
  {
    return 0;
  }

  return sub_2427B17F4(v3, v5, v8, v9);
}

uint64_t _s26CalendarIntegrationSupport0B5EntryV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for IntegrationRecurrence(0);
  v129 = *(v4 - 8);
  v130 = v4;
  v5 = *(v129 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v118[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC08D8, &qword_2427BB0B0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v127 = &v118[-v10];
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC09C8, &qword_2427BB9C0);
  v11 = *(*(v128 - 8) + 64);
  MEMORY[0x28223BE20](v128);
  v13 = &v118[-v12];
  v14 = sub_2427B8DBC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v118[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC08E0, &qword_2427BB0B8);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v118[-v21];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC09D0, &qword_2427BB9C8);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v118[-v25];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_2427B939C() & 1) == 0)
  {
    return 0;
  }

  v126 = v13;
  v27 = type metadata accessor for IntegrationEntry(0);
  v28 = v27[5];
  if ((sub_2427B8D0C() & 1) == 0)
  {
    return 0;
  }

  v29 = v27[6];
  if ((sub_2427B8D0C() & 1) == 0)
  {
    return 0;
  }

  v123 = v7;
  v124 = v27;
  v125 = a2;
  v30 = v27[7];
  v31 = *(v23 + 48);
  sub_2427B2564(a1 + v30, v26, &qword_27ECC08E0, &qword_2427BB0B8);
  v32 = v125 + v30;
  v33 = v125;
  sub_2427B2564(v32, &v26[v31], &qword_27ECC08E0, &qword_2427BB0B8);
  v34 = *(v15 + 48);
  if (v34(v26, 1, v14) == 1)
  {
    if (v34(&v26[v31], 1, v14) == 1)
    {
      sub_2427A4230(v26, &qword_27ECC08E0, &qword_2427BB0B8);
      goto LABEL_13;
    }

LABEL_11:
    sub_2427A4230(v26, &qword_27ECC09D0, &qword_2427BB9C8);
    return 0;
  }

  sub_2427B2564(v26, v22, &qword_27ECC08E0, &qword_2427BB0B8);
  if (v34(&v26[v31], 1, v14) == 1)
  {
    (*(v15 + 8))(v22, v14);
    goto LABEL_11;
  }

  (*(v15 + 32))(v18, &v26[v31], v14);
  sub_2427B251C(&qword_27ECC09D8, MEMORY[0x277CC9A70]);
  v35 = sub_2427B8F9C();
  v36 = *(v15 + 8);
  v36(v18, v14);
  v36(v22, v14);
  v33 = v125;
  sub_2427A4230(v26, &qword_27ECC08E0, &qword_2427BB0B8);
  if ((v35 & 1) == 0)
  {
    return 0;
  }

LABEL_13:
  v37 = v124;
  v38 = v124[8];
  v39 = *(a1 + v38);
  v40 = *(a1 + v38 + 8);
  v41 = (v33 + v38);
  if ((v39 != *v41 || v40 != v41[1]) && (sub_2427B939C() & 1) == 0 || *(a1 + v37[9]) != *(v33 + v37[9]) || *(a1 + v37[10]) != *(v33 + v37[10]) || *(a1 + v37[11]) != *(v33 + v37[11]))
  {
    return 0;
  }

  v42 = v37[12];
  v43 = *(v128 + 48);
  v44 = v126;
  sub_2427B2564(a1 + v42, v126, &qword_27ECC08D8, &qword_2427BB0B0);
  v45 = v125 + v42;
  v46 = v125;
  sub_2427B2564(v45, v44 + v43, &qword_27ECC08D8, &qword_2427BB0B0);
  v47 = v130;
  v48 = *(v129 + 48);
  if (v48(v44, 1, v130) == 1)
  {
    if (v48(v44 + v43, 1, v47) == 1)
    {
      sub_2427A4230(v44, &qword_27ECC08D8, &qword_2427BB0B0);
      goto LABEL_26;
    }

LABEL_24:
    sub_2427A4230(v44, &qword_27ECC09C8, &qword_2427BB9C0);
    return 0;
  }

  v49 = v127;
  sub_2427B2564(v44, v127, &qword_27ECC08D8, &qword_2427BB0B0);
  if (v48(v44 + v43, 1, v47) == 1)
  {
    sub_2427B2698(v49, type metadata accessor for IntegrationRecurrence);
    goto LABEL_24;
  }

  v50 = v44 + v43;
  v51 = v123;
  sub_2427B2630(v50, v123, type metadata accessor for IntegrationRecurrence);
  v52 = _s26CalendarIntegrationSupport0B10RecurrenceV2eeoiySbAC_ACtFZ_0(v49, v51);
  sub_2427B2698(v51, type metadata accessor for IntegrationRecurrence);
  sub_2427B2698(v49, type metadata accessor for IntegrationRecurrence);
  sub_2427A4230(v44, &qword_27ECC08D8, &qword_2427BB0B0);
  if (!v52)
  {
    return 0;
  }

LABEL_26:
  v53 = v37[13];
  v54 = *(a1 + v53);
  v55 = *(a1 + v53 + 8);
  v57 = *(a1 + v53 + 16);
  v56 = *(a1 + v53 + 24);
  v59 = *(a1 + v53 + 32);
  v58 = *(a1 + v53 + 40);
  v60 = v46 + v53;
  v61 = *v60;
  v62 = *(v60 + 8);
  v63 = *(v60 + 16);
  v64 = *(v60 + 24);
  v66 = *(v60 + 32);
  v65 = *(v60 + 40);
  v128 = v66;
  v129 = v65;
  v130 = v58;
  if (v55)
  {
    v127 = v61;
    if (v62)
    {
      v122 = v63;
      v123 = v64;
      v67 = v63;
      if (v54 == v61 && v55 == v62 || (sub_2427B939C()) && (v57 == v63 && v56 == v123 || (sub_2427B939C()))
      {
        v68 = v56;
        v126 = v56;
        v69 = v57;
        v70 = v61;
        v71 = v130;
        sub_2427AE07C(v54, v55, v57, v68, v59, v130);
        v72 = v70;
        v73 = v67;
        v74 = v123;
        v120 = v54;
        v76 = v128;
        v75 = v129;
        sub_2427AE07C(v72, v62, v73, v123, v128, v129);
        v77 = v54;
        v78 = v126;
        sub_2427AE07C(v77, v55, v69, v126, v59, v71);
        v119 = sub_2427B17F4(v59, v71, v76, v75);
        sub_2427ACEDC(v127, v62, v122, v74, v76, v75);

        sub_2427A32F0(v59, v71);
        sub_2427ACEDC(v120, v55, v69, v78, v59, v71);
        if ((v119 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_45;
      }

      v98 = v61;
      v99 = v130;
      sub_2427AE07C(v54, v55, v57, v56, v59, v130);
      v100 = v98;
      v101 = v67;
      v102 = v123;
      v104 = v128;
      v103 = v129;
      sub_2427AE07C(v100, v62, v101, v123, v128, v129);
      sub_2427AE07C(v54, v55, v57, v56, v59, v99);
      sub_2427ACEDC(v127, v62, v122, v102, v104, v103);

      sub_2427A32F0(v59, v99);
      v92 = v54;
      v93 = v55;
      v94 = v57;
      v95 = v56;
      v96 = v59;
      v97 = v99;
LABEL_41:
      sub_2427ACEDC(v92, v93, v94, v95, v96, v97);
      return 0;
    }

    v121 = v57;
    v84 = v56;
    v85 = v59;
    v126 = v56;
    v86 = v59;
    v87 = v130;
    sub_2427AE07C(v54, v55, v57, v84, v85, v130);
    v88 = v61;
    v80 = v63;
    v89 = v63;
    v83 = v128;
    v82 = v129;
    sub_2427AE07C(v88, 0, v89, v64, v128, v129);
    sub_2427AE07C(v54, v55, v121, v126, v86, v87);

    v90 = v86;
    v91 = v87;
    v59 = v86;
    v56 = v126;
    sub_2427A32F0(v90, v91);
LABEL_39:
    sub_2427ACEDC(v54, v55, v57, v56, v59, v130);
    v92 = v127;
    v93 = v62;
    v94 = v80;
    v95 = v64;
    v96 = v83;
    v97 = v82;
    goto LABEL_41;
  }

  sub_2427AE07C(v54, 0, v57, v56, v59, v130);
  if (v62)
  {
    v79 = v61;
    v127 = v61;
    v80 = v63;
    v81 = v63;
    v83 = v128;
    v82 = v129;
    sub_2427AE07C(v79, v62, v81, v64, v128, v129);
    goto LABEL_39;
  }

  sub_2427AE07C(v61, 0, v63, v64, v128, v129);
  sub_2427ACEDC(v54, 0, v57, v56, v59, v130);
LABEL_45:
  v107 = v124;
  v106 = v125;
  v108 = v124[14];
  v109 = (a1 + v108);
  v110 = *(a1 + v108 + 8);
  v111 = (v125 + v108);
  v112 = v111[1];
  if (v110)
  {
    if (!v112 || (*v109 != *v111 || v110 != v112) && (sub_2427B939C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v112)
  {
    return 0;
  }

  v113 = v107[15];
  v114 = (a1 + v113);
  v115 = *(a1 + v113 + 8);
  v116 = (v106 + v113);
  v117 = v116[1];
  if (v115)
  {
    if (v117 && (*v114 == *v116 && v115 == v117 || (sub_2427B939C() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v117)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_2427B251C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2427B2564(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2427B25CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntegrationRecurrence.RecurrenceEnd(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2427B2630(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2427B2698(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2427B278C()
{
  result = qword_27ECC0948;
  if (!qword_27ECC0948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC0948);
  }

  return result;
}

unint64_t sub_2427B27E4()
{
  result = qword_27ECC0950;
  if (!qword_27ECC0950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC0950);
  }

  return result;
}

unint64_t sub_2427B283C()
{
  result = qword_27ECC0958;
  if (!qword_27ECC0958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC0958);
  }

  return result;
}

unint64_t sub_2427B28DC()
{
  result = qword_2813495E0[0];
  if (!qword_2813495E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2813495E0);
  }

  return result;
}

unint64_t sub_2427B2934()
{
  result = qword_27ECC0968;
  if (!qword_27ECC0968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC0968);
  }

  return result;
}

void sub_2427B2AA0()
{
  sub_2427B8D2C();
  if (v0 <= 0x3F)
  {
    sub_2427B2BF0(319, &qword_281349D78, MEMORY[0x277CC9A70]);
    if (v1 <= 0x3F)
    {
      sub_2427B2BF0(319, qword_281349B10, type metadata accessor for IntegrationRecurrence);
      if (v2 <= 0x3F)
      {
        sub_2427B2DA0(319, &qword_27ECC0970);
        if (v3 <= 0x3F)
        {
          sub_2427B2DA0(319, &qword_27ECC0978);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2427B2BF0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2427B912C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2427B2C6C()
{
  sub_2427B2BF0(319, qword_281349BE0, type metadata accessor for IntegrationRecurrence.RecurrenceEnd);
  if (v0 <= 0x3F)
  {
    sub_2427B2DA0(319, &qword_27ECC0980);
    if (v1 <= 0x3F)
    {
      sub_2427B2DEC(319, &qword_27ECC0988, &qword_27ECC0990, &qword_2427BB828);
      if (v2 <= 0x3F)
      {
        sub_2427B2DEC(319, &qword_27ECC0998, &qword_27ECC09A0, &qword_2427BB830);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2427B2DA0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_2427B912C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_2427B2DEC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_2427B912C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2427B2E90()
{
  sub_2427B2F04();
  if (v0 <= 0x3F)
  {
    sub_2427B2F4C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_2427B2F04()
{
  if (!qword_27ECC09A8)
  {
    v0 = sub_2427B8D2C();
    if (!v1)
    {
      atomic_store(v0, &qword_27ECC09A8);
    }
  }
}

uint64_t sub_2427B2F4C()
{
  result = qword_27ECC09B0;
  if (!qword_27ECC09B0)
  {
    result = MEMORY[0x277D83B88];
    atomic_store(MEMORY[0x277D83B88], &qword_27ECC09B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IntegrationRecurrence.Frequency(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for IntegrationRecurrence.Frequency(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for IntegrationRecurrence.Weekday(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for IntegrationRecurrence.Weekday(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for IntegrationRecurrence.DayOfTheWeek(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && a1[16])
  {
    return (*a1 + 250);
  }

  v3 = *a1;
  v4 = v3 >= 7;
  v5 = v3 - 7;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for IntegrationRecurrence.DayOfTheWeek(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 6;
    }
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

uint64_t sub_2427B32D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_2427B3318(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2427B3380(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_2427B33C8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

CalendarIntegrationSupport::SyncResult::IncrementalSyncInfo __swiftcall SyncResult.IncrementalSyncInfo.init(insertedAndUpdated:deleted:updatedColors:)(Swift::OpaquePointer insertedAndUpdated, Swift::OpaquePointer deleted, Swift::OpaquePointer updatedColors)
{
  v3->_rawValue = insertedAndUpdated._rawValue;
  v3[1]._rawValue = deleted._rawValue;
  v3[2]._rawValue = updatedColors._rawValue;
  result.updatedColors = updatedColors;
  result.deleted = deleted;
  result.insertedAndUpdated = insertedAndUpdated;
  return result;
}

__n128 SyncResult.init(modTag:syncType:)@<Q0>(__n128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  result = *a1;
  v6 = *a2;
  *a3 = *a1;
  *(a3 + 16) = v6;
  *(a3 + 32) = v3;
  *(a3 + 40) = v4;
  return result;
}

uint64_t ModTag.stringValue.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ModTag.stringValue.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t static ModTag.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_2427B939C();
  }
}

uint64_t sub_2427B3530(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_2427B939C();
  }
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

uint64_t sub_2427B35F8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 41))
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

uint64_t sub_2427B3654(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_2427B36D8(uint64_t a1, unsigned int a2)
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

uint64_t sub_2427B3720(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2427B3790(uint64_t *a1, int a2)
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

uint64_t sub_2427B37D8(uint64_t result, int a2, int a3)
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

uint64_t sub_2427B3824(uint64_t *a1, int a2)
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

uint64_t sub_2427B386C(uint64_t result, int a2, int a3)
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

uint64_t sub_2427B38BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2427B3904(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t IntegrationCollectionSync.__allocating_init(syncDataProvider:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = sub_2427B8608(v5, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t IntegrationCollectionSync.init(syncDataProvider:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  v10 = sub_2427B7B8C(v8, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v10;
}

void sub_2427B3AE0(uint64_t *a1)
{
  v3 = v1;
  v140[3] = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC08E0, &qword_2427BB0B8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v128 - v7;
  v9 = *a1;
  v10 = a1[1];
  v11 = *(v3 + 56);
  v136 = v9;
  v137 = v10;
  v12 = sub_2427B8FAC();
  v14 = *(v3 + 40);
  v13 = *(v3 + 48);
  __swift_project_boxed_opaque_existential_1((v3 + 16), v14);
  (*(v13 + 24))(v14, v13);
  v15 = v2;
  if (!v2)
  {
    v135 = a1;
    v133 = v8;
    sub_2427A152C(0, &qword_2813494D8, 0x277CC59B0);
    v16 = sub_2427B8FFC();

    v17 = [v11 eventsWithExternalIdentifier:v12 inCalendars:v16];

    v18 = v3;
    if (!v17)
    {
      goto LABEL_26;
    }

    sub_2427A152C(0, &qword_281349478, 0x277CC5A28);
    v19 = sub_2427B901C();

    if (v19 >> 62)
    {
      v40 = sub_2427B917C();
      v21 = v133;
      if (v40)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v21 = v133;
      if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_6:
        if ((v19 & 0xC000000000000001) != 0)
        {
          goto LABEL_56;
        }

        if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_58;
        }

        for (i = *(v19 + 32); ; i = MEMORY[0x245D18A70](0, v19, v20))
        {
          v23 = i;

          v24 = v23;
          v25 = [v24 calendar];
          if (!v25)
          {
            __break(1u);
LABEL_60:
            __break(1u);
            return;
          }

          v26 = v25;
          v27 = [v25 source];

          if (!v27)
          {
            goto LABEL_60;
          }

          v28 = [v27 personaIdentifier];

          if (v28)
          {
            v29 = sub_2427B8FBC();
            v31 = v30;

            v32 = (v135 + *(type metadata accessor for IntegrationEntry(0) + 56));
            v33 = v32[1];
            if (v33)
            {
              if (v29 == *v32 && v33 == v31)
              {

LABEL_20:
                v35 = v135;
                v134 = v15;
                v36 = v24;
                v132 = v36;
                goto LABEL_29;
              }

              v34 = sub_2427B939C();

              if (v34)
              {
                goto LABEL_20;
              }
            }

            else
            {
            }
          }

          else if (!*(v135 + *(type metadata accessor for IntegrationEntry(0) + 56) + 8))
          {
            goto LABEL_20;
          }

          v37 = v18[7];
          v140[0] = 0;
          if (![v37 removeEvent:v24 span:1 commit:0 error:v140])
          {
            v39 = v140[0];
            sub_2427B8C4C();

            swift_willThrow();
            goto LABEL_54;
          }

          v38 = v140[0];

LABEL_26:
          v41 = [objc_opt_self() eventWithEventStore_];
          v134 = v15;
          v42 = v18[5];
          v43 = v18[6];
          __swift_project_boxed_opaque_existential_1(v18 + 2, v42);
          v44 = (v135 + *(type metadata accessor for IntegrationEntry(0) + 56));
          v46 = *v44;
          v45 = v44[1];
          v47 = *(v43 + 32);
          v48 = v41;
          v49 = v134;
          v50 = v47(v46, v45, v42, v43);
          if (v49)
          {

            goto LABEL_54;
          }

          v35 = v135;
          v134 = 0;
          v51 = v50;
          [v48 setCalendar_];

          v36 = v48;
          v52 = sub_2427B8FAC();
          [v36 setUniqueID_];

          v132 = 0;
          v21 = v133;
LABEL_29:
          v53 = type metadata accessor for IntegrationEntry(0);
          sub_2427B2564(v35 + v53[7], v21, &qword_27ECC08E0, &qword_2427BB0B8);
          v54 = sub_2427B8DBC();
          v55 = v21;
          v56 = *(v54 - 8);
          v57 = (*(v56 + 48))(v55, 1, v54);
          v58 = v36;
          v59 = 0;
          if (v57 != 1)
          {
            v59 = sub_2427B8DAC();
            (*(v56 + 8))(v55, v54);
          }

          v60 = v58;
          [v58 setTimeZone_];

          [v58 setAllDay_];
          v61 = v35 + v53[5];
          v62 = sub_2427B8CFC();
          [v58 setStartDate_];

          v19 = v35 + v53[6];
          v63 = sub_2427B8CFC();
          [v58 setEndDate_];

          v64 = (v35 + v53[8]);
          v65 = *v64;
          v66 = v64[1];
          v67 = sub_2427B8FAC();
          [v58 setTitle_];

          [v58 setCompleted_];
          v68 = v35;
          v69 = sub_2427B8404(v35 + v53[12]);
          if (v69)
          {
            v19 = v69;
            sub_2427A152C(0, &qword_27ECC09F0, 0x277CC5AA8);
            v70 = sub_2427B8FFC();
          }

          else
          {
            v70 = 0;
          }

          v12 = v132;
          [v58 setRecurrenceRules_];

          v71 = (v68 + v53[15]);
          v72 = v71[1];
          v135 = v18;
          if (v72)
          {
            v73 = *v71;
            v74 = sub_2427B8FAC();
          }

          else
          {
            v74 = 0;
          }

          [v58 setExternalID_];

          v75 = (v68 + v53[13]);
          v21 = v75[1];
          if (v21)
          {
            v131 = v58;
            v76 = v21;
            v77 = v12;
            v78 = *v75;
            v21 = v75[2];
            v79 = v75[3];
            v80 = v75[4];
            v81 = v75[5];
            v82 = v135;
            swift_beginAccess();
            v83 = v82[8];
            v84 = *(v83 + 16);
            v133 = v78;
            v85 = v78;
            v12 = v77;
            v86 = v76;
            v60 = v131;
            sub_2427AE07C(v85, v86, v21, v79, v80, v81);

            if (v84)
            {

              v87 = sub_2427B6A88(v133, v86, v21, v79);
              if (v88)
              {
                v89 = v87;

                v90 = *(*(v83 + 56) + 8 * v89);

                v19 = v60;
                v91 = v90;
                [v19 setColor_];
                sub_2427ACEDC(v133, v86, v21, v79, v80, v81);

                goto LABEL_46;
              }
            }

            v129 = v81;
            v130 = v80;
            v132 = v12;
            v92 = v135;
            v93 = v135[7];
            v94 = sub_2427B8FAC();
            v95 = v21;
            v96 = sub_2427B8FAC();
            v97 = [v93 colorWithProviderIdentifier:v94 externalIdentifier:v96];

            v98 = v97;
            if (!v97)
            {
              v99 = [objc_allocWithZone(MEMORY[0x277CC5A00]) init];
              v100 = sub_2427B8FAC();
              [v99 setProviderIdentifier_];

              v101 = sub_2427B8FAC();
              [v99 setExternalID_];

              v98 = v99;
            }

            swift_beginAccess();
            v102 = v98;
            v103 = v95;
            v128 = v95;
            v104 = v102;
            v105 = v97;
            v106 = v92[8];
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v138 = v92[8];
            v92[8] = 0x8000000000000000;
            v21 = v133;
            sub_2427B7298(v104, v133, v86, v103, v79, isUniquelyReferenced_nonNull_native);

            v92[8] = v138;
            swift_endAccess();
            v108 = v129;
            v19 = v130;
            v109 = sub_2427B8CBC();
            [v104 setData_];

            v110 = v60;
            [v110 setColor_];

            sub_2427ACEDC(v21, v86, v128, v79, v19, v108);
            v12 = v132;
          }

          else
          {
            [v58 setColor_];
          }

LABEL_46:
          v18 = v60;
          v111 = [v18 sequenceNumber];
          v20 = v111 + 1;
          v15 = v137;
          if (!__OFADD__(v111, 1))
          {
            [v18 setSequenceNumber_];

            v112 = v135[7];
            v139[0] = 0;
            v113 = v112;
            v114 = [v113 saveEvent:v18 span:1 commit:0 error:v139];

            if (v114)
            {
              v115 = v139[0];

              goto LABEL_54;
            }

            v116 = v139[0];
            v21 = sub_2427B8C4C();

            swift_willThrow();
            if (qword_281349520 == -1)
            {
LABEL_50:
              v117 = sub_2427B8F0C();
              __swift_project_value_buffer(v117, qword_281349DA8);

              v118 = v21;
              v119 = sub_2427B8EEC();
              v120 = sub_2427B90BC();

              if (os_log_type_enabled(v119, v120))
              {
                v121 = v12;
                v122 = swift_slowAlloc();
                v123 = swift_slowAlloc();
                v124 = swift_slowAlloc();
                v139[0] = v124;
                *v122 = 136446466;
                *(v122 + 4) = sub_2427A1BEC(v136, v15, v139);
                *(v122 + 12) = 2112;
                v125 = v21;
                v126 = _swift_stdlib_bridgeErrorToNSError();
                *(v122 + 14) = v126;
                *v123 = v126;
                _os_log_impl(&dword_24279B000, v119, v120, "Failed to save event for entry %{public}s: %@", v122, 0x16u);
                sub_2427A4230(v123, &qword_27ECC07C0, &qword_2427BADB0);
                MEMORY[0x245D19310](v123, -1, -1);
                __swift_destroy_boxed_opaque_existential_1(v124);
                MEMORY[0x245D19310](v124, -1, -1);
                MEMORY[0x245D19310](v122, -1, -1);
              }

              else
              {
              }

              goto LABEL_54;
            }

LABEL_58:
            swift_once();
            goto LABEL_50;
          }

          __break(1u);
LABEL_56:
          ;
        }
      }
    }

    goto LABEL_26;
  }

LABEL_54:
  v127 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2427B475C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v7 = MEMORY[0x277D84F90];
    sub_2427B922C();
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_2427B907C();
      sub_2427B920C();
      v6 = *(v7 + 16);
      sub_2427B923C();
      sub_2427B924C();
      sub_2427B921C();
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

void sub_2427B4804(uint64_t *a1)
{
  v3 = v1;
  v4 = *a1;
  if (qword_281349520 != -1)
  {
    swift_once();
  }

  v5 = sub_2427B8F0C();
  __swift_project_value_buffer(v5, qword_281349DA8);

  v6 = sub_2427B8EEC();
  v7 = sub_2427B90CC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v8 = 136446722;
    *(v8 + 4) = sub_2427A1BEC(v3[9], v3[10], &v13);
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_2427A1BEC(v3[13], v3[14], &v13);
    *(v8 + 22) = 2048;
    *(v8 + 24) = *(v4 + 16);

    _os_log_impl(&dword_24279B000, v6, v7, "Performing a full sync for collection %{public}s %s with %ld IDs", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x245D19310](v9, -1, -1);
    MEMORY[0x245D19310](v8, -1, -1);
  }

  else
  {
  }

  v13 = v4;
  sub_2427B4A2C(&v13);
  if (!v2)
  {
    v10 = *(v4 + 16);
    if (v10)
    {
      v11 = 0;
      do
      {
        v12 = MEMORY[0x245D18D70]();
        sub_2427B6510(v11, v3, 50, v4, &v13);
        if (__OFADD__(v11, 50))
        {
          v11 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 += 50;
        }

        objc_autoreleasePoolPop(v12);
      }

      while (v11 < v10);
    }
  }
}

void sub_2427B4A2C(uint64_t *a1)
{
  v3 = v1;
  v4 = *a1;

  v6 = sub_2427B7CA4(v5);

  v7 = v3[5];
  v8 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v7);
  v9 = (*(v8 + 24))(v7, v8);
  if (v2)
  {
  }

  else
  {
    v10 = v9;
    if (v9 >> 62)
    {
      goto LABEL_36;
    }

    v46 = v9 & 0xFFFFFFFFFFFFFF8;
    for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2427B917C())
    {
      v42 = v3;
      v40 = v6;
      if (i)
      {
        v12 = 0;
        v3 = (v10 & 0xC000000000000001);
        v13 = MEMORY[0x277D84F90];
        do
        {
          v41 = v13;
          v14 = v12;
          while (1)
          {
            if (v3)
            {
              v15 = MEMORY[0x245D18A70](v14, v10);
            }

            else
            {
              if (v14 >= *(v46 + 16))
              {
                goto LABEL_34;
              }

              v15 = *(v10 + 8 * v14 + 32);
            }

            v16 = v15;
            v12 = v14 + 1;
            if (__OFADD__(v14, 1))
            {
              __break(1u);
LABEL_34:
              __break(1u);
              goto LABEL_35;
            }

            v17 = [v15 persistentObject];
            if (!v17)
            {
              __break(1u);
              return;
            }

            v18 = v17;
            v6 = [v17 isNew];

            if ((v6 & 1) == 0)
            {
              break;
            }

            ++v14;
            if (v12 == i)
            {
              v13 = v41;
              goto LABEL_24;
            }
          }

          v19 = [v16 calendarIdentifier];
          v20 = sub_2427B8FBC();
          v38 = v21;
          v39 = v20;

          v22 = v41;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v22 = sub_2427ABCB4(0, *(v41 + 2) + 1, 1, v41);
          }

          v6 = *(v22 + 2);
          v23 = *(v22 + 3);
          v24 = v22;
          if (v6 >= v23 >> 1)
          {
            v24 = sub_2427ABCB4((v23 > 1), v6 + 1, 1, v22);
          }

          *(v24 + 2) = v6 + 1;
          v13 = v24;
          v25 = &v24[16 * v6];
          *(v25 + 4) = v39;
          *(v25 + 5) = v38;
        }

        while (v12 != i);
      }

      else
      {
        v13 = MEMORY[0x277D84F90];
      }

LABEL_24:

      v44 = 0;
      v45 = 0;
      v43 = 0;
      v6 = *(v13 + 2);
      if (!v6)
      {
        break;
      }

      v3 = 0;
      v26 = v13;
      v27 = (v13 + 40);
      while (v3 < *(v26 + 2))
      {
        v28 = *(v27 - 1);
        v29 = *v27;

        v31 = MEMORY[0x245D18D70](v30);
        v32 = v28;
        v10 = v42;
        sub_2427B4E4C(v40, v32, v29, &v43);

        v3 = (v3 + 1);
        objc_autoreleasePoolPop(v31);
        v27 += 2;
        if (v6 == v3)
        {
          goto LABEL_28;
        }
      }

LABEL_35:
      __break(1u);
LABEL_36:
      v46 = v10 & 0xFFFFFFFFFFFFFF8;
    }

LABEL_28:

    if (qword_281349520 != -1)
    {
      swift_once();
    }

    v33 = sub_2427B8F0C();
    __swift_project_value_buffer(v33, qword_281349DA8);
    v34 = sub_2427B8EEC();
    v35 = sub_2427B90CC();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 134218496;
      swift_beginAccess();
      v37 = v44;
      *(v36 + 4) = v45;
      *(v36 + 12) = 2048;
      *(v36 + 14) = v43;
      *(v36 + 22) = 2048;
      *(v36 + 24) = v37;
      _os_log_impl(&dword_24279B000, v34, v35, "Looked at %ld and removed %ld that should not be present. (Failed to remove %ld.)", v36, 0x20u);
      MEMORY[0x245D19310](v36, -1, -1);
    }
  }
}

void sub_2427B4E4C(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v83[3] = *MEMORY[0x277D85DE8];
  v9 = *(v4 + 56);
  v10 = sub_2427B8FAC();
  v11 = [v9 calendarWithIdentifier_];

  if (v11)
  {
    v12 = *(v4 + 56);
    v82[0] = 0;
    v83[0] = 0;
    [v12 loadEventIDs:v82 uniqueIDs:v83 calendar:v11];
    v13 = v83[0];
    v14 = v82[0];
    if (!v83[0] || !v82[0])
    {
      v30 = qword_281349520;
      v31 = v83[0];
      v32 = v14;
      if (v30 != -1)
      {
        swift_once();
      }

      v33 = sub_2427B8F0C();
      __swift_project_value_buffer(v33, qword_281349DA8);
      v34 = sub_2427B8EEC();
      v35 = sub_2427B90BC();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_24279B000, v34, v35, "Couldn't fetch contents of calendar to check for removed reminders", v36, 2u);
        MEMORY[0x245D19310](v36, -1, -1);
      }

      goto LABEL_59;
    }

    v15 = v4;
    v82[0] = 0;
    sub_2427A152C(0, &qword_27ECC09E0, 0x277CC5A60);
    v16 = v14;
    v17 = v13;
    v18 = v16;
    sub_2427B900C();
    if (v82[0])
    {
      v73 = v82[0];
      v82[0] = 0;
      sub_2427B900C();
      v19 = v82[0];
      if (v82[0])
      {

        v20 = *(v19 + 16);
        v21 = a4[2];
        v22 = __OFADD__(v21, v20);
        v23 = v21 + v20;
        if (v22)
        {
          __break(1u);
        }

        else
        {
          v77 = v5;
          a4[2] = v23;
          v16 = MEMORY[0x277D84F90];
          v81 = MEMORY[0x277D84F90];
          v74 = v15;
          swift_beginAccess();
          if (v20)
          {
            v24 = 0;
            v79 = v20;
            v80 = v19 + 32;
            a2 = a1 + 56;
            v76 = v73 & 0xC000000000000001;
LABEL_18:
            v75 = v16;
            a3 = v24;
            while (a3 < *(v19 + 16))
            {
              v42 = (v80 + 16 * a3);
              v43 = v42[1];
              v24 = a3 + 1;
              if (!*(a1 + 16))
              {
                v44 = v19;
                v57 = v42[1];

                if (v76)
                {
                  goto LABEL_40;
                }

LABEL_31:
                if (a3 >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_61;
                }

                v53 = *(v73 + 32 + 8 * a3);
LABEL_33:
                MEMORY[0x245D18880]();
                if (*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  v58 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  sub_2427B902C();
                }

                sub_2427B903C();

                v16 = v81;
                if (v81 >> 62)
                {
                  if (sub_2427B917C() >= 51)
                  {
LABEL_37:
                    v54 = MEMORY[0x245D18D70]();
                    sub_2427B5758(v81, v74, a4, v82);
                    if (v77)
                    {

                      goto LABEL_57;
                    }

                    objc_autoreleasePoolPop(v54);

                    v81 = MEMORY[0x277D84F90];
                    v55 = v74[5];
                    v56 = v74[6];
                    __swift_project_boxed_opaque_existential_1(v74 + 2, v55);
                    (*(v56 + 40))(v55, v56);
                    v77 = 0;
                    v37 = v74[5];
                    v38 = v74[6];
                    __swift_project_boxed_opaque_existential_1(v74 + 2, v37);
                    v39 = (*(v38 + 8))(v37, v38);
                    v40 = v74[7];
                    v74[7] = v39;

                    v41 = v74[8];
                    v74[8] = MEMORY[0x277D84F98];

                    v16 = MEMORY[0x277D84F90];
                  }
                }

                else if (*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 51)
                {
                  goto LABEL_37;
                }

                v19 = v44;
                if (v24 == v79)
                {
                  goto LABEL_51;
                }

                goto LABEL_18;
              }

              v44 = v19;
              v45 = *v42;
              v46 = *(a1 + 40);
              sub_2427B940C();

              sub_2427B8FCC();
              v47 = sub_2427B943C();
              v48 = -1 << *(a1 + 32);
              v49 = v47 & ~v48;
              if (((*(a2 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49) & 1) == 0)
              {
LABEL_30:
                if (!v76)
                {
                  goto LABEL_31;
                }

LABEL_40:
                MEMORY[0x245D18A70](a3, v73);
                goto LABEL_33;
              }

              v50 = ~v48;
              while (1)
              {
                v51 = (*(a1 + 48) + 16 * v49);
                v52 = *v51 == v45 && v51[1] == v43;
                if (v52 || (sub_2427B939C() & 1) != 0)
                {
                  break;
                }

                v49 = (v49 + 1) & v50;
                if (((*(a2 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49) & 1) == 0)
                {
                  goto LABEL_30;
                }
              }

              ++a3;
              v19 = v44;
              if (v24 == v79)
              {
                v16 = v75;
                goto LABEL_51;
              }
            }

            __break(1u);
LABEL_61:
            __break(1u);
            goto LABEL_62;
          }

LABEL_51:

          if (!(v16 >> 62))
          {
            v64 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_53:
            if (v64 >= 1)
            {
              v54 = MEMORY[0x245D18D70]();
              sub_2427B5758(v16, v74, a4, v82);
              if (v77)
              {
LABEL_57:
                objc_autoreleasePoolPop(v54);
              }

              else
              {
                objc_autoreleasePoolPop(v54);

                v65 = v74[5];
                v66 = v74[6];
                __swift_project_boxed_opaque_existential_1(v74 + 2, v65);
                (*(v66 + 40))(v65, v66);
                v67 = v74[5];
                v68 = v74[6];
                __swift_project_boxed_opaque_existential_1(v74 + 2, v67);
                v69 = (*(v68 + 8))(v67, v68);
                v70 = v74[7];
                v74[7] = v69;

                swift_beginAccess();
                v71 = v74[8];
                v74[8] = MEMORY[0x277D84F98];
              }
            }

            goto LABEL_59;
          }
        }

        v64 = sub_2427B917C();
        goto LABEL_53;
      }
    }

    if (qword_281349520 != -1)
    {
      swift_once();
    }

    v60 = sub_2427B8F0C();
    __swift_project_value_buffer(v60, qword_281349DA8);
    v61 = sub_2427B8EEC();
    v62 = sub_2427B90BC();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_24279B000, v61, v62, "Fetching contents of calendar returned unexpected results", v63, 2u);
      MEMORY[0x245D19310](v63, -1, -1);
    }

    goto LABEL_59;
  }

  if (qword_281349520 != -1)
  {
LABEL_62:
    swift_once();
  }

  v25 = sub_2427B8F0C();
  __swift_project_value_buffer(v25, qword_281349DA8);

  v26 = sub_2427B8EEC();
  v27 = sub_2427B90BC();

  if (!os_log_type_enabled(v26, v27))
  {

    v59 = *MEMORY[0x277D85DE8];
    return;
  }

  v28 = swift_slowAlloc();
  v29 = swift_slowAlloc();
  v82[0] = v29;
  *v28 = 136446210;
  *(v28 + 4) = sub_2427A1BEC(a2, a3, v82);
  _os_log_impl(&dword_24279B000, v26, v27, "Couldn't find calendar with UUID %{public}s while looking for reminders to remove in a full sync; skipping it.", v28, 0xCu);
  __swift_destroy_boxed_opaque_existential_1(v29);
  MEMORY[0x245D19310](v29, -1, -1);
  MEMORY[0x245D19310](v28, -1, -1);

LABEL_59:
  v72 = *MEMORY[0x277D85DE8];
}

void sub_2427B5758(unint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a1;
  v76[1] = *MEMORY[0x277D85DE8];
  if (a1 >> 62)
  {
    goto LABEL_33;
  }

  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = 0x281349000uLL; v7; i = 0x281349000uLL)
  {
    v9 = 0;
    v75 = v6 & 0xC000000000000001;
    v70 = v6 & 0xFFFFFFFFFFFFFF8;
    v72 = a3 + 1;
    v71 = a3;
    v73 = v7;
    v74 = v6;
    v65 = a2;
    while (1)
    {
      if (v75)
      {
        v13 = MEMORY[0x245D18A70](v9);
      }

      else
      {
        if (v9 >= *(v70 + 16))
        {
          goto LABEL_29;
        }

        v13 = *(v6 + 8 * v9 + 32);
      }

      v14 = v13;
      v15 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v16 = [*(a2 + 56) eventForObjectID:v13 occurrenceDate:0 checkValid:0];
      if (!v16)
      {
        if (*(i + 1312) != -1)
        {
          swift_once();
        }

        v20 = sub_2427B8F0C();
        __swift_project_value_buffer(v20, qword_281349DA8);
        v21 = sub_2427B8EEC();
        v22 = sub_2427B90BC();
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          *v23 = 0;
          _os_log_impl(&dword_24279B000, v21, v22, "Couldn't turn object ID into an event", v23, 2u);
          v24 = v23;
          a3 = v71;
          MEMORY[0x245D19310](v24, -1, -1);
        }

        v10 = v72;
        v11 = *v72 + 1;
        if (__OFADD__(*v72, 1))
        {
          goto LABEL_30;
        }

        goto LABEL_5;
      }

      v17 = v16;
      v18 = *(a2 + 56);
      v76[0] = 0;
      if ([v18 removeEvent:v17 span:1 commit:0 error:v76])
      {
        v19 = v76[0];

        v11 = *a3 + 1;
        if (__OFADD__(*a3, 1))
        {
          goto LABEL_31;
        }

        v10 = a3;
LABEL_5:
        v12 = v73;
        v6 = v74;
        goto LABEL_6;
      }

      v25 = v76[0];
      v26 = sub_2427B8C4C();

      swift_willThrow();
      if (*(i + 1312) != -1)
      {
        swift_once();
      }

      v27 = sub_2427B8F0C();
      __swift_project_value_buffer(v27, qword_281349DA8);
      v28 = v17;
      v29 = v26;
      v30 = sub_2427B8EEC();
      v31 = sub_2427B90BC();
      if (os_log_type_enabled(v30, v31))
      {
        v67 = v14;
        v68 = v31;
        log = v30;
        v32 = v26;
        v33 = v28;
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v76[0] = v36;
        *v34 = 136446466;
        v37 = v33;
        v38 = [v33 uniqueID];
        if (!v38)
        {

          __break(1u);
        }

        v39 = v38;

        v66 = v37;
        v40 = sub_2427B8FBC();
        v42 = v41;

        v43 = sub_2427A1BEC(v40, v42, v76);

        *(v34 + 4) = v43;
        *(v34 + 12) = 2112;
        v44 = v32;
        v45 = _swift_stdlib_bridgeErrorToNSError();
        *(v34 + 14) = v45;
        *v35 = v45;
        _os_log_impl(&dword_24279B000, log, v68, "Failed to remove event for entry %{public}s: %@", v34, 0x16u);
        sub_2427A4230(v35, &qword_27ECC07C0, &qword_2427BADB0);
        MEMORY[0x245D19310](v35, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v36);
        MEMORY[0x245D19310](v36, -1, -1);
        MEMORY[0x245D19310](v34, -1, -1);

        i = 0x281349000;
        a2 = v65;
      }

      else
      {
      }

      a3 = v71;
      v10 = v72;
      v11 = *v72 + 1;
      v12 = v73;
      v6 = v74;
      if (__OFADD__(*v72, 1))
      {
        goto LABEL_32;
      }

LABEL_6:
      *v10 = v11;
      ++v9;
      if (v15 == v12)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    v46 = v6;
    v7 = sub_2427B917C();
    v6 = v46;
  }

LABEL_34:
  v47 = *(a2 + 56);
  v76[0] = 0;
  if ([v47 commitWithRollback_])
  {
    v48 = v76[0];
    v49 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v50 = v76[0];
    v51 = sub_2427B8C4C();

    swift_willThrow();
    if (*(i + 1312) != -1)
    {
      swift_once();
    }

    v52 = sub_2427B8F0C();
    __swift_project_value_buffer(v52, qword_281349DA8);
    v53 = v51;
    v54 = sub_2427B8EEC();
    v55 = sub_2427B90BC();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *v56 = 138412290;
      v58 = v51;
      v59 = _swift_stdlib_bridgeErrorToNSError();
      *(v56 + 4) = v59;
      *v57 = v59;
      _os_log_impl(&dword_24279B000, v54, v55, "Failed to commit removals: %@", v56, 0xCu);
      sub_2427A4230(v57, &qword_27ECC07C0, &qword_2427BADB0);
      MEMORY[0x245D19310](v57, -1, -1);
      MEMORY[0x245D19310](v56, -1, -1);
    }

    sub_2427B87F8();
    v60 = swift_allocError();
    *v61 = 2;
    swift_willThrow();

    *v64 = v60;
    v62 = *MEMORY[0x277D85DE8];
  }
}

void sub_2427B5E14(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = v5;
  v9 = a2;
  v10 = a1;
  v74 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v11 = a2[5];
    v12 = a2[6];
    __swift_project_boxed_opaque_existential_1(a2 + 2, v11);
    (*(v12 + 40))(v11, v12);
    if (v5)
    {
      goto LABEL_60;
    }

    v71 = 0;
    v13 = v9[5];
    v14 = v9[6];
    __swift_project_boxed_opaque_existential_1(v9 + 2, v13);
    v15 = (*(v14 + 8))(v13, v14);
    v16 = v9[7];
    v9[7] = v15;

    swift_beginAccess();
    v17 = v9[8];
    v9[8] = MEMORY[0x277D84F98];
  }

  else
  {
    v71 = v5;
  }

  if (__OFADD__(v10, a3))
  {
    goto LABEL_48;
  }

  if (*(a4 + 16) >= v10 + a3)
  {
    v18 = v10 + a3;
  }

  else
  {
    v18 = *(a4 + 16);
  }

  v73 = MEMORY[0x277D84F90];
  if (v18 < v10)
  {
    goto LABEL_49;
  }

  if (v10 < 0)
  {
    goto LABEL_50;
  }

  if (v18 == v10)
  {
    v6 = MEMORY[0x277D84F90];
    goto LABEL_33;
  }

  v19 = a4 + 40;
  v64 = v18 - 1;
  v6 = MEMORY[0x277D84F90];
  v20 = v10;
  v65 = a4 + 40;
  v67 = v18;
  v68 = v9;
  do
  {
    v21 = (v19 + 16 * v20);
    v22 = v20;
    v69 = v6;
    while (1)
    {
      if (v20 < v10 || v22 >= v18)
      {
        __break(1u);
        goto LABEL_46;
      }

      v70 = v22;
      v23 = v20;
      v24 = v10;
      v25 = *(v21 - 1);
      v26 = *v21;
      v27 = v9[7];

      v28 = v27;
      v29 = sub_2427B8FAC();

      v30 = v9[5];
      v31 = v9[6];
      __swift_project_boxed_opaque_existential_1(v9 + 2, v30);
      (*(v31 + 24))(v30, v31);
      if (v71)
      {

        v5 = v71;
        goto LABEL_60;
      }

      sub_2427A152C(0, &qword_2813494D8, 0x277CC59B0);
      v32 = sub_2427B8FFC();

      v33 = [v28 eventsWithExternalIdentifier:v29 inCalendars:v32];

      v10 = v24;
      v20 = v23;
      if (v33)
      {
        break;
      }

LABEL_15:
      v6 = v69;
      v22 = v70 + 1;
      v21 += 2;
      v18 = v67;
      v9 = v68;
      if (v67 == v70 + 1)
      {
        goto LABEL_33;
      }
    }

    sub_2427A152C(0, &qword_281349478, 0x277CC5A28);
    v34 = sub_2427B901C();

    v35 = v34;
    if (!(v34 >> 62))
    {
      if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

LABEL_22:

      goto LABEL_15;
    }

    v36 = sub_2427B917C();
    v35 = v34;
    if (!v36)
    {
      goto LABEL_22;
    }

LABEL_24:
    if ((v35 & 0xC000000000000001) != 0)
    {
      v37 = MEMORY[0x245D18A70](0);
      v9 = v68;
      v19 = v65;
    }

    else
    {
      v9 = v68;
      v19 = v65;
      if (!*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
      }

      v37 = *(v35 + 32);
    }

    v38 = v37;
    MEMORY[0x245D18880]();
    if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v39 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_2427B902C();
    }

    v20 = v70 + 1;
    sub_2427B903C();

    v6 = v73;
    v18 = v67;
  }

  while (v64 != v70);
LABEL_33:

  if (v6 >> 62)
  {
    goto LABEL_51;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2427B917C())
  {
    v41 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v42 = MEMORY[0x245D18A70](v41, v6);
      }

      else
      {
        if (v41 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_47;
        }

        v42 = *(v6 + 8 * v41 + 32);
      }

      v43 = v42;
      v44 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        break;
      }

      v45 = v9[7];
      v72 = 0;
      if (![v45 removeEvent:v43 span:1 commit:0 error:&v72])
      {
        v47 = v72;

        v48 = sub_2427B8C4C();

        swift_willThrow();
        goto LABEL_55;
      }

      v46 = v72;

      ++v41;
      if (v44 == i)
      {
        goto LABEL_52;
      }
    }

LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    ;
  }

LABEL_52:

  v49 = v9[7];
  v72 = 0;
  if ([v49 commitWithRollback_])
  {
    v50 = v72;
    v51 = *MEMORY[0x277D85DE8];
    return;
  }

  v52 = v72;
  v48 = sub_2427B8C4C();

  swift_willThrow();
LABEL_55:
  if (qword_281349520 != -1)
  {
    swift_once();
  }

  v53 = sub_2427B8F0C();
  __swift_project_value_buffer(v53, qword_281349DA8);
  v54 = v48;
  v55 = sub_2427B8EEC();
  v56 = sub_2427B90BC();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    *v57 = 138412290;
    v59 = v48;
    v60 = _swift_stdlib_bridgeErrorToNSError();
    *(v57 + 4) = v60;
    *v58 = v60;
    _os_log_impl(&dword_24279B000, v55, v56, "Failed to commit deletes to event store: %@", v57, 0xCu);
    sub_2427A4230(v58, &qword_27ECC07C0, &qword_2427BADB0);
    MEMORY[0x245D19310](v58, -1, -1);
    MEMORY[0x245D19310](v57, -1, -1);
  }

  sub_2427B87F8();
  v61 = swift_allocError();
  *v62 = 2;
  swift_willThrow();

  v5 = v61;
LABEL_60:
  *a5 = v5;
  v63 = *MEMORY[0x277D85DE8];
}

void sub_2427B6510(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = v5;
  v48[4] = *MEMORY[0x277D85DE8];
  v13 = type metadata accessor for IntegrationEntry(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v17 = (&v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = a4;
  if (a1)
  {
    v46 = a3;
    v18 = a2[5];
    v19 = a2[6];
    __swift_project_boxed_opaque_existential_1(a2 + 2, v18);
    (*(v19 + 40))(v18, v19);
    if (v5)
    {
      goto LABEL_16;
    }

    v20 = a2[5];
    v6 = a2[6];
    __swift_project_boxed_opaque_existential_1(a2 + 2, v20);
    v21 = (*(v6 + 8))(v20, v6);
    v22 = a2[7];
    a2[7] = v21;

    swift_beginAccess();
    v23 = a2[8];
    a2[8] = MEMORY[0x277D84F98];

    a3 = v46;
    a4 = v47;
  }

  v24 = __OFADD__(a1, a3);
  v25 = a1 + a3;
  if (v24)
  {
    goto LABEL_30;
  }

  v45 = a5;
  v26 = *(a4 + 16);
  if (v26 >= v25)
  {
    a4 = v25;
  }

  else
  {
    a4 = *(a4 + 16);
  }

  v6 = a2[18];
  v46 = a2[19];
  __swift_project_boxed_opaque_existential_1(a2 + 15, v6);
  if (a4 < a1)
  {
    goto LABEL_31;
  }

  if (v26 < a1)
  {
    goto LABEL_32;
  }

  if (a1 < 0)
  {
    goto LABEL_33;
  }

  if (v25 < 0)
  {
    goto LABEL_34;
  }

  if (v26 != a4 - a1)
  {
    goto LABEL_35;
  }

  v27 = v47;

  while (1)
  {
    a1 = (*(v46 + 16))(v27, v6);

    if (v5)
    {
      a5 = v45;
      goto LABEL_16;
    }

    a4 = *(a1 + 16);
    if (!a4)
    {
      break;
    }

    v29 = 0;
    while (v29 < *(a1 + 16))
    {
      sub_2427B88A8(a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v29, v17, type metadata accessor for IntegrationEntry);
      sub_2427B3AE0(v17);
      ++v29;
      sub_2427B8910(v17, type metadata accessor for IntegrationEntry);
      if (a4 == v29)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    sub_2427B7AB4(v47, v47 + 32, a1, (2 * a4) | 1);
    v27 = v44;
  }

LABEL_22:

  v30 = a2[7];
  v48[0] = 0;
  if ([v30 commitWithRollback_])
  {
    v31 = v48[0];
    goto LABEL_17;
  }

  v32 = v48[0];
  v33 = sub_2427B8C4C();

  swift_willThrow();
  if (qword_281349520 != -1)
  {
    swift_once();
  }

  v34 = sub_2427B8F0C();
  __swift_project_value_buffer(v34, qword_281349DA8);
  v35 = v33;
  v36 = sub_2427B8EEC();
  v37 = sub_2427B90BC();

  v38 = os_log_type_enabled(v36, v37);
  a5 = v45;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v39 = 138412290;
    v41 = v33;
    v42 = _swift_stdlib_bridgeErrorToNSError();
    *(v39 + 4) = v42;
    *v40 = v42;
    _os_log_impl(&dword_24279B000, v36, v37, "Failed to commit changes to event store: %@", v39, 0xCu);
    sub_2427A4230(v40, &qword_27ECC07C0, &qword_2427BADB0);
    MEMORY[0x245D19310](v40, -1, -1);
    MEMORY[0x245D19310](v39, -1, -1);
  }

  sub_2427B87F8();
  v8 = swift_allocError();
  *v43 = 2;
  swift_willThrow();

LABEL_16:
  *a5 = v8;
LABEL_17:
  v28 = *MEMORY[0x277D85DE8];
}

uint64_t IntegrationCollectionSync.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 64);

  sub_2427A51EC(v0 + 72);
  return v0;
}

uint64_t IntegrationCollectionSync.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 64);

  sub_2427A51EC(v0 + 72);

  return MEMORY[0x2821FE8D8](v0, 160, 7);
}

unint64_t sub_2427B6A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 40);
  sub_2427B940C();
  sub_2427B8FCC();
  sub_2427B8FCC();
  v10 = sub_2427B943C();

  return sub_2427B7440(a1, a2, a3, a4, v10);
}

unint64_t sub_2427B6B28(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_2427B910C();

  return sub_2427B7540(a1, v5);
}

uint64_t sub_2427B6B6C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC07C8, &qword_2427BBCE0);
  v39 = a2;
  result = sub_2427B932C();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = (*(v5 + 56) + 48 * v21);
      v41 = *v23;
      v42 = v23[1];
      v24 = v23[3];
      v40 = v23[2];
      v25 = v23[4];
      v26 = v23[5];
      if ((v39 & 1) == 0)
      {
        v27 = v22;

        sub_2427A3288(v25, v26);
      }

      v28 = *(v8 + 40);
      result = sub_2427B910C();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = (*(v8 + 56) + 48 * v16);
      *v17 = v41;
      v17[1] = v42;
      v17[2] = v40;
      v17[3] = v24;
      v17[4] = v25;
      v17[5] = v26;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_2427B6E30(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC0800, &unk_2427BBCC0);
  v40 = a2;
  result = sub_2427B932C();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v41 = (v13 - 1) & v13;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(v5 + 56);
      v23 = (*(v5 + 48) + 32 * v21);
      v24 = *v23;
      v25 = v23[1];
      v26 = v23[3];
      v42 = v23[2];
      v27 = *(v22 + 8 * v21);
      if ((v40 & 1) == 0)
      {

        v28 = v27;
      }

      v29 = *(v8 + 40);
      sub_2427B940C();
      sub_2427B8FCC();
      sub_2427B8FCC();
      result = sub_2427B943C();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 32 * v16);
      *v17 = v24;
      v17[1] = v25;
      v13 = v41;
      v17[2] = v42;
      v17[3] = v26;
      *(*(v8 + 56) + 8 * v16) = v27;
      ++*(v8 + 16);
      v5 = v39;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v41 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_2427B7108(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_2427B6B28(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_2427B6B6C(v13, a3 & 1);
      v17 = *v4;
      v8 = sub_2427B6B28(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        sub_2427A152C(0, &unk_2813494C0, 0x277D44708);
        sub_2427B93BC();
        __break(1u);
        return MEMORY[0x2821F9840]();
      }
    }

    else
    {
      v16 = v8;
      sub_2427B7780();
      v8 = v16;
    }
  }

  v19 = *v4;
  if ((v14 & 1) == 0)
  {
    v19[(v8 >> 6) + 8] |= 1 << v8;
    *(v19[6] + 8 * v8) = a2;
    v22 = (v19[7] + 48 * v8);
    v23 = *a1;
    v24 = a1[2];
    v22[1] = a1[1];
    v22[2] = v24;
    *v22 = v23;
    v25 = v19[2];
    v12 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (!v12)
    {
      v19[2] = v26;

      return MEMORY[0x2821F9840]();
    }

    goto LABEL_17;
  }

  v20 = v19[7] + 48 * v8;

  return sub_2427B884C(a1, v20);
}

uint64_t sub_2427B7298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_2427B6A88(a2, a3, a4, a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_2427B6E30(v20, a6 & 1);
      v24 = *v7;
      v15 = sub_2427B6A88(a2, a3, a4, a5);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        sub_2427B93BC();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v23 = v15;
      sub_2427B7930();
      v15 = v23;
    }
  }

  v26 = *v7;
  if (v21)
  {
    v27 = v26[7];
    v28 = *(v27 + 8 * v15);
    *(v27 + 8 * v15) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v26[(v15 >> 6) + 8] |= 1 << v15;
  v29 = (v26[6] + 32 * v15);
  *v29 = a2;
  v29[1] = a3;
  v29[2] = a4;
  v29[3] = a5;
  *(v26[7] + 8 * v15) = a1;
  v30 = v26[2];
  v19 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v31;
}

unint64_t sub_2427B7440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 32 * v8);
      v16 = v15[2];
      v17 = v15[3];
      v18 = *v15 == a1 && v15[1] == a2;
      if (v18 || (sub_2427B939C() & 1) != 0)
      {
        v19 = v16 == a3 && v17 == a4;
        if (v19 || (sub_2427B939C() & 1) != 0)
        {
          break;
        }
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

unint64_t sub_2427B7540(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_2427A152C(0, &unk_2813494C0, 0x277D44708);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_2427B911C();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

id sub_2427B7628(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_2427B931C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 16 * v19) = *(*(v4 + 48) + 16 * v19);
        *(*(v6 + 56) + 8 * v19) = v20;

        result = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_2427B7780()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC07C8, &qword_2427BBCE0);
  v27 = v0;
  v1 = *v0;
  v2 = sub_2427B931C();
  v3 = v2;
  if (*(v1 + 16))
  {
    result = (v2 + 64);
    v5 = ((1 << *(v3 + 32)) + 63) >> 6;
    if (v3 != v1 || result >= v1 + 64 + 8 * v5)
    {
      result = memmove(result, (v1 + 64), 8 * v5);
    }

    v7 = 0;
    *(v3 + 16) = *(v1 + 16);
    v8 = 1 << *(v1 + 32);
    v9 = *(v1 + 64);
    v10 = -1;
    if (v8 < 64)
    {
      v10 = ~(-1 << v8);
    }

    v11 = v10 & v9;
    v12 = (v8 + 63) >> 6;
    if ((v10 & v9) != 0)
    {
      do
      {
        v13 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_17:
        v16 = v13 | (v7 << 6);
        v17 = *(*(v1 + 48) + 8 * v16);
        v18 = (*(v1 + 56) + 48 * v16);
        v19 = *v18;
        v20 = v18[1];
        v21 = v18[2];
        v22 = v18[3];
        v23 = v18[4];
        v24 = v18[5];
        *(*(v3 + 48) + 8 * v16) = v17;
        v25 = (*(v3 + 56) + 48 * v16);
        *v25 = v19;
        v25[1] = v20;
        v25[2] = v21;
        v25[3] = v22;
        v25[4] = v23;
        v25[5] = v24;
        v26 = v17;

        result = sub_2427A3288(v23, v24);
      }

      while (v11);
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v12)
      {
        goto LABEL_19;
      }

      v15 = *(v1 + 64 + 8 * v7);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v27 = v3;
  }

  return result;
}

id sub_2427B7930()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC0800, &unk_2427BBCC0);
  v2 = *v0;
  v3 = sub_2427B931C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 32 * v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = v18[3];
        v22 = *(*(v2 + 56) + 8 * v17);
        v23 = (*(v4 + 48) + 32 * v17);
        *v23 = *v18;
        v23[1] = v19;
        v23[2] = v20;
        v23[3] = v21;
        *(*(v4 + 56) + 8 * v17) = v22;

        result = v22;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void sub_2427B7AB4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC08A8, &qword_2427BB080);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_2427B7B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a3;
  v14[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  *(a2 + 64) = sub_24279F380(MEMORY[0x277D84F90]);
  sub_24279F31C(v14, a2 + 16);
  *(a2 + 56) = (*(a4 + 8))(a3, a4);
  (*(a4 + 16))(v12, a3, a4);
  v9 = v12[3];
  *(a2 + 104) = v12[2];
  *(a2 + 120) = v9;
  *(a2 + 136) = v12[4];
  *(a2 + 152) = v13;
  v10 = v12[1];
  *(a2 + 72) = v12[0];
  *(a2 + 88) = v10;
  __swift_destroy_boxed_opaque_existential_1(v14);
  return a2;
}

uint64_t sub_2427B7CA4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x245D188F0](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_24279EC78(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

id sub_2427B7D3C(unsigned __int8 *a1)
{
  v2 = sub_2427B8D2C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC0890, &qword_2427BB3B0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v53 - v9;
  v61 = type metadata accessor for IntegrationRecurrence.RecurrenceEnd(0);
  v11 = *(v61 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v61);
  v56 = (&v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v59 = &v53 - v15;
  v16 = *a1;
  if (*a1 <= 1u)
  {
    v17 = 0;
    if (!*a1)
    {
      return v16;
    }
  }

  else if (v16 == 2)
  {
    v17 = 1;
  }

  else if (v16 == 3)
  {
    v17 = 2;
  }

  else
  {
    v17 = 3;
  }

  v54 = v6;
  v55 = v3;
  v18 = type metadata accessor for IntegrationRecurrence(0);
  v19 = *&a1[v18[8]];
  v60 = v17;
  if (v19)
  {
    v20 = MEMORY[0x277D84F90];
    v62 = MEMORY[0x277D84F90];
    v21 = *(v19 + 16);
    if (v21)
    {
      v58 = v2;
      v22 = (v19 + 40);
      do
      {
        v23 = [objc_allocWithZone(MEMORY[0x277CC5A88]) initWithDayOfTheWeek:*(v22 - 8) + 1 weekNumber:*v22];
        MEMORY[0x245D18880]();
        if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v57 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_2427B902C();
        }

        v22 += 2;
        sub_2427B903C();

        --v21;
      }

      while (v21);
      v20 = v62;
      v2 = v58;
    }
  }

  else
  {
    v20 = 0;
  }

  v24 = *&a1[v18[9]];
  if (v24)
  {
    v25 = sub_2427B475C(v24);
  }

  else
  {
    v25 = 0;
  }

  v26 = *&a1[v18[12]];
  if (v26)
  {
    v27 = sub_2427B475C(v26);
  }

  else
  {
    v27 = 0;
  }

  v28 = *&a1[v18[11]];
  v57 = v27;
  if (v28)
  {
    v58 = sub_2427B475C(v28);
  }

  else
  {
    v58 = 0;
  }

  v29 = v2;
  v30 = *&a1[v18[10]];
  if (v30)
  {
    v31 = sub_2427B475C(v30);
  }

  else
  {
    v31 = 0;
  }

  v32 = *&a1[v18[13]];
  if (v32)
  {
    v33 = sub_2427B475C(v32);
  }

  else
  {
    v33 = 0;
  }

  sub_2427B2564(&a1[v18[6]], v10, &qword_27ECC0890, &qword_2427BB3B0);
  if ((*(v11 + 48))(v10, 1, v61) == 1)
  {
    sub_2427A4230(v10, &qword_27ECC0890, &qword_2427BB3B0);
    v34 = 0;
    v35 = v57;
    v36 = *(a1 + 1);
    if (v20)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v44 = v59;
    sub_2427B2630(v10, v59, type metadata accessor for IntegrationRecurrence.RecurrenceEnd);
    v45 = v56;
    sub_2427B88A8(v44, v56, type metadata accessor for IntegrationRecurrence.RecurrenceEnd);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v46 = [objc_allocWithZone(MEMORY[0x277CC5A90]) initWithOccurrenceCount_];
    }

    else
    {
      v48 = v54;
      v47 = v55;
      (*(v55 + 32))(v54, v45, v29);
      v49 = objc_allocWithZone(MEMORY[0x277CC5A90]);
      v50 = sub_2427B8CFC();
      v46 = [v49 initWithEndDate_];

      (*(v47 + 8))(v48, v29);
      v44 = v59;
    }

    v35 = v57;
    sub_2427B8910(v44, type metadata accessor for IntegrationRecurrence.RecurrenceEnd);
    v34 = v46;
    v36 = *(a1 + 1);
    if (v20)
    {
LABEL_34:
      sub_2427A152C(0, &qword_27ECC09F8, 0x277CC5A88);
      v37 = sub_2427B8FFC();

      if (v25)
      {
        goto LABEL_35;
      }

      goto LABEL_45;
    }
  }

  v37 = 0;
  if (v25)
  {
LABEL_35:
    sub_2427A152C(0, &qword_27ECC0898, 0x277CCABB0);
    v38 = sub_2427B8FFC();

    v39 = v58;
    if (v35)
    {
      goto LABEL_36;
    }

    goto LABEL_46;
  }

LABEL_45:
  v38 = 0;
  v39 = v58;
  if (v35)
  {
LABEL_36:
    sub_2427A152C(0, &qword_27ECC0898, 0x277CCABB0);
    v40 = sub_2427B8FFC();

    if (v39)
    {
      goto LABEL_37;
    }

    goto LABEL_47;
  }

LABEL_46:
  v40 = 0;
  if (v39)
  {
LABEL_37:
    sub_2427A152C(0, &qword_27ECC0898, 0x277CCABB0);
    v41 = sub_2427B8FFC();

    if (v31)
    {
      goto LABEL_38;
    }

LABEL_48:
    v42 = 0;
    if (v33)
    {
      goto LABEL_39;
    }

LABEL_49:
    v43 = 0;
    goto LABEL_50;
  }

LABEL_47:
  v41 = 0;
  if (!v31)
  {
    goto LABEL_48;
  }

LABEL_38:
  sub_2427A152C(0, &qword_27ECC0898, 0x277CCABB0);
  v42 = sub_2427B8FFC();

  if (!v33)
  {
    goto LABEL_49;
  }

LABEL_39:
  sub_2427A152C(0, &qword_27ECC0898, 0x277CCABB0);
  v43 = sub_2427B8FFC();

LABEL_50:
  v51 = objc_allocWithZone(MEMORY[0x277CC5AA8]);
  v16 = [v51 initRecurrenceWithFrequency:v60 interval:v36 daysOfTheWeek:v37 daysOfTheMonth:v38 monthsOfTheYear:v40 weeksOfTheYear:v41 daysOfTheYear:v42 setPositions:v43 end:v34];

  return v16;
}

uint64_t sub_2427B8404(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC08D8, &qword_2427BB0B0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - v4;
  v6 = type metadata accessor for IntegrationRecurrence(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2427B2564(a1, v5, &qword_27ECC08D8, &qword_2427BB0B0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_2427A4230(v5, &qword_27ECC08D8, &qword_2427BB0B0);
  }

  else
  {
    sub_2427B2630(v5, v10, type metadata accessor for IntegrationRecurrence);
    v11 = sub_2427B7D3C(v10);
    if (v11)
    {
      v12 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC07E8, &unk_2427BBCD0);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_2427BBC30;
      *(v13 + 32) = v12;
      sub_2427B8910(v10, type metadata accessor for IntegrationRecurrence);
      return v13;
    }

    sub_2427B8910(v10, type metadata accessor for IntegrationRecurrence);
  }

  return 0;
}

uint64_t sub_2427B8608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IntegrationCollectionSync();
  v11 = swift_allocObject();
  (*(v7 + 16))(v10, a1, a3);
  return sub_2427B7B8C(v10, v11, a3, a4);
}

unint64_t sub_2427B87F8()
{
  result = qword_27ECC09E8;
  if (!qword_27ECC09E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC09E8);
  }

  return result;
}

uint64_t sub_2427B88A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2427B8910(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
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

uint64_t getEnumTagSinglePayload for IntegrationCollectionSync.SyncError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IntegrationCollectionSync.SyncError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2427B8B28()
{
  result = qword_27ECC0A00;
  if (!qword_27ECC0A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC0A00);
  }

  return result;
}