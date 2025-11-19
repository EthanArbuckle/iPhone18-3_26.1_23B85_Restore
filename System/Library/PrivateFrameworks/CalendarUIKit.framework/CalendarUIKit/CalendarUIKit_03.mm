uint64_t block_copy_helper_104(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1CABD4070(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1CABD40B8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1CABCD46C;

  return sub_1CABD1E38(a1, v4, v5, v6, (v1 + 40));
}

uint64_t sub_1CABD4178(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationModelObject(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CABD41DC(uint64_t a1)
{
  v2 = type metadata accessor for LocationModelObject(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CABD4254(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationModelObject(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CABD42B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CABD431C(_OWORD *a1, __int128 *a2)
{
  v4 = a1[7];
  v5 = a1[9];
  __src[8] = a1[8];
  __src[9] = v5;
  v6 = a1[3];
  v7 = a1[5];
  __src[4] = a1[4];
  __src[5] = v7;
  v9 = a1[5];
  v8 = a1[6];
  v10 = v8;
  __src[7] = a1[7];
  __src[6] = v8;
  v11 = a1[1];
  __src[0] = *a1;
  __src[1] = v11;
  v12 = a1[2];
  v14 = *a1;
  v13 = a1[1];
  v15 = v12;
  __src[3] = a1[3];
  __src[2] = v12;
  v16 = a2[8];
  v17 = a2[9];
  v18 = a2[6];
  __src[18] = a2[7];
  __src[19] = v16;
  v19 = a2[10];
  __src[20] = v17;
  __src[21] = v19;
  v20 = a2[4];
  v21 = a2[5];
  v22 = a2[2];
  __src[14] = a2[3];
  __src[15] = v20;
  __src[16] = v21;
  __src[17] = v18;
  v23 = *a2;
  v24 = a2[1];
  v25 = a1[9];
  __src[10] = a1[10];
  __src[11] = v23;
  __src[12] = v24;
  __src[13] = v22;
  v66[8] = __src[8];
  v66[9] = v25;
  v66[10] = a1[10];
  v66[4] = __src[4];
  v66[5] = v9;
  v66[6] = v10;
  v66[7] = v4;
  v66[0] = v14;
  v66[1] = v13;
  v66[2] = v15;
  v66[3] = v6;
  if (get_enum_tag_for_layout_string_13CalendarUIKit14FakeDataReaderV5EventV8LocationVSg_0(v66) != 1)
  {
    v62 = __src[8];
    v63 = __src[9];
    v64 = __src[10];
    v58 = __src[4];
    v59 = __src[5];
    v61 = __src[7];
    v60 = __src[6];
    v54 = __src[0];
    v55 = __src[1];
    v57 = __src[3];
    v56 = __src[2];
    v50 = __src[8];
    v51 = __src[9];
    v52 = __src[10];
    v46 = __src[4];
    v47 = __src[5];
    v48 = __src[6];
    v49 = __src[7];
    v42 = __src[0];
    v43 = __src[1];
    v44 = __src[2];
    v45 = __src[3];
    __dst[8] = __src[19];
    __dst[9] = __src[20];
    __dst[10] = __src[21];
    __dst[4] = __src[15];
    __dst[5] = __src[16];
    __dst[6] = __src[17];
    __dst[7] = __src[18];
    __dst[0] = __src[11];
    __dst[1] = __src[12];
    __dst[2] = __src[13];
    __dst[3] = __src[14];
    if (get_enum_tag_for_layout_string_13CalendarUIKit14FakeDataReaderV5EventV8LocationVSg_0(__dst) != 1)
    {
      v39 = __src[19];
      v40 = __src[20];
      v41 = __src[21];
      v35 = __src[15];
      v36 = __src[16];
      v37 = __src[17];
      v38 = __src[18];
      v31 = __src[11];
      v32 = __src[12];
      v33 = __src[13];
      v34 = __src[14];
      sub_1CAB23A9C(a1, v30, &qword_1EC463C00);
      sub_1CAB23A9C(a2, v30, &qword_1EC463C00);
      sub_1CAB23A9C(&v54, v30, &qword_1EC463C00);
      v27 = _s13CalendarUIKit24EventLocationModelObjectV2eeoiySbAC_ACtFZ_0(&v42, &v31);
      v29[8] = v39;
      v29[9] = v40;
      v29[10] = v41;
      v29[4] = v35;
      v29[5] = v36;
      v29[6] = v37;
      v29[7] = v38;
      v29[0] = v31;
      v29[1] = v32;
      v29[2] = v33;
      v29[3] = v34;
      sub_1CABD3C78(v29);
      v30[8] = v50;
      v30[9] = v51;
      v30[10] = v52;
      v30[4] = v46;
      v30[5] = v47;
      v30[6] = v48;
      v30[7] = v49;
      v30[0] = v42;
      v30[1] = v43;
      v30[2] = v44;
      v30[3] = v45;
      sub_1CABD3C78(v30);
      v39 = __src[8];
      v40 = __src[9];
      v41 = __src[10];
      v35 = __src[4];
      v36 = __src[5];
      v37 = __src[6];
      v38 = __src[7];
      v31 = __src[0];
      v32 = __src[1];
      v33 = __src[2];
      v34 = __src[3];
      sub_1CAB21B68(&v31, &qword_1EC463C00);
      v26 = v27 ^ 1;
      return v26 & 1;
    }

    v39 = __src[8];
    v40 = __src[9];
    v41 = __src[10];
    v35 = __src[4];
    v36 = __src[5];
    v37 = __src[6];
    v38 = __src[7];
    v31 = __src[0];
    v32 = __src[1];
    v33 = __src[2];
    v34 = __src[3];
    sub_1CAB23A9C(a1, v30, &qword_1EC463C00);
    sub_1CAB23A9C(a2, v30, &qword_1EC463C00);
    sub_1CAB23A9C(&v54, v30, &qword_1EC463C00);
    sub_1CABD3C78(&v31);
    goto LABEL_7;
  }

  __dst[8] = __src[19];
  __dst[9] = __src[20];
  __dst[10] = __src[21];
  __dst[4] = __src[15];
  __dst[5] = __src[16];
  __dst[6] = __src[17];
  __dst[7] = __src[18];
  __dst[0] = __src[11];
  __dst[1] = __src[12];
  __dst[2] = __src[13];
  __dst[3] = __src[14];
  if (get_enum_tag_for_layout_string_13CalendarUIKit14FakeDataReaderV5EventV8LocationVSg_0(__dst) != 1)
  {
    sub_1CAB23A9C(a1, &v54, &qword_1EC463C00);
    sub_1CAB23A9C(a2, &v54, &qword_1EC463C00);
LABEL_7:
    memcpy(__dst, __src, sizeof(__dst));
    sub_1CAB21B68(__dst, &qword_1EC467A00);
    v26 = 1;
    return v26 & 1;
  }

  v62 = __src[8];
  v63 = __src[9];
  v64 = __src[10];
  v58 = __src[4];
  v59 = __src[5];
  v61 = __src[7];
  v60 = __src[6];
  v54 = __src[0];
  v55 = __src[1];
  v57 = __src[3];
  v56 = __src[2];
  sub_1CAB23A9C(a1, &v42, &qword_1EC463C00);
  sub_1CAB23A9C(a2, &v42, &qword_1EC463C00);
  sub_1CAB21B68(&v54, &qword_1EC463C00);
  v26 = 0;
  return v26 & 1;
}

uint64_t sub_1CABD4844()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CABCD46C;

  return sub_1CABCE3EC();
}

uint64_t objectdestroy_117Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1CABD4954()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CABCCCB0;

  return sub_1CABCE3EC();
}

double sub_1CABD4A14()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 480) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for TravelTimeOption(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TravelTimeOption(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1CABD4B80(uint64_t a1)
{
  *(a1 + 8) = sub_1CABD4BB0();
  result = sub_1CABD4C04();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1CABD4BB0()
{
  result = qword_1EC463C38;
  if (!qword_1EC463C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC463C38);
  }

  return result;
}

unint64_t sub_1CABD4C04()
{
  result = qword_1EC463C40;
  if (!qword_1EC463C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC463C40);
  }

  return result;
}

unint64_t sub_1CABD4C5C()
{
  result = qword_1EC463C48;
  if (!qword_1EC463C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC463C48);
  }

  return result;
}

uint64_t sub_1CABD4DAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CABD4E34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t EventParticipantModelObject.isCurrentUser.setter(char a1)
{
  result = type metadata accessor for EventParticipantModelObject(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t EventParticipantModelObject.init(name:emailAddress:phoneNumber:url:id:isCurrentUser:contactID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, char a11, uint64_t a12, uint64_t a13)
{
  v20 = type metadata accessor for EventParticipantModelObject(0);
  v21 = v20[7];
  v22 = sub_1CAD4BFF4();
  (*(*(v22 - 8) + 56))(&a9[v21], 1, 1, v22);
  v23 = &a9[v20[10]];
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  *(a9 + 4) = a5;
  *(a9 + 5) = a6;
  result = sub_1CABD4E34(a7, &a9[v21]);
  v25 = &a9[v20[8]];
  *v25 = a8;
  *(v25 + 1) = a10;
  a9[v20[9]] = a11;
  *v23 = a12;
  *(v23 + 1) = a13;
  return result;
}

uint64_t EventParticipantModelObject.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v36 - v5;
  v7 = type metadata accessor for EventParticipantModelObject(0);
  v8 = (v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v8[9];
  v12 = sub_1CAD4BFF4();
  (*(*(v12 - 8) + 56))(&v10[v11], 1, 1, v12);
  v13 = &v10[v8[12]];
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  *v10 = (*(v15 + 24))(v14, v15);
  *(v10 + 1) = v16;
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  *(v10 + 2) = (*(v18 + 32))(v17, v18);
  *(v10 + 3) = v19;
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  *(v10 + 4) = (*(v21 + 40))(v20, v21);
  *(v10 + 5) = v22;
  v23 = a1[3];
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v23);
  (*(v24 + 48))(v23, v24);
  sub_1CABD4E34(v6, &v10[v11]);
  v25 = a1[3];
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v25);
  v27 = (*(v26 + 16))(v25, v26);
  v28 = &v10[v8[10]];
  *v28 = v27;
  v28[1] = v29;
  v30 = a1[3];
  v31 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v30);
  v10[v8[11]] = (*(v31 + 56))(v30, v31) & 1;
  v32 = a1[3];
  v33 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v32);
  *v13 = (*(v33 + 64))(v32, v33);
  *(v13 + 1) = v34;
  sub_1CABDA43C(v10, a2, type metadata accessor for EventParticipantModelObject);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1CABDA4A4(v10, type metadata accessor for EventParticipantModelObject);
}

void EventParticipantModelObject.init(attendee:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v36 - v5;
  v7 = type metadata accessor for EventParticipantModelObject(0);
  v8 = v7[7];
  v9 = sub_1CAD4BFF4();
  v10 = *(*(v9 - 8) + 56);
  v37 = v8;
  v10(a2 + v8, 1, 1, v9);
  v11 = (a2 + v7[10]);
  *v11 = 0;
  v11[1] = 0;
  v12 = a1;
  v13 = [v12 name];
  if (v13)
  {
    v14 = v13;
    v15 = sub_1CAD4DF94();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  *a2 = v15;
  a2[1] = v17;
  v18 = [v12 emailAddress];
  if (v18)
  {
    v19 = v18;
    v20 = sub_1CAD4DF94();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  a2[2] = v20;
  a2[3] = v22;
  v23 = [v12 phoneNumber];
  if (v23)
  {
    v24 = v23;
    v25 = sub_1CAD4DF94();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0;
  }

  a2[4] = v25;
  a2[5] = v27;
  v28 = [v12 URL];
  sub_1CAD4BFC4();

  v10(v6, 0, 1, v9);
  sub_1CABD4E34(v6, a2 + v37);
  v29 = [v12 isCurrentUser];

  *(a2 + v7[9]) = v29;
  v30 = [v12 uniqueIdentifier];
  if (v30)
  {
    v31 = v30;
    v32 = sub_1CAD4DF94();
    v34 = v33;

    v35 = (a2 + v7[8]);
    *v35 = v32;
    v35[1] = v34;
  }

  else
  {
    __break(1u);
  }
}

uint64_t EventParticipantModelObject.hash(into:)()
{
  v1 = sub_1CAD4BFF4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v10 - v6;
  if (v0[1])
  {
    sub_1CAD4EAA4();
    sub_1CAD4E054();
    if (v0[3])
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_1CAD4EAA4();
    if (v0[5])
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  sub_1CAD4EAA4();
  if (!v0[3])
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_1CAD4EAA4();
  sub_1CAD4E054();
  if (v0[5])
  {
LABEL_4:
    sub_1CAD4EAA4();
    sub_1CAD4E054();
    goto LABEL_8;
  }

LABEL_7:
  sub_1CAD4EAA4();
LABEL_8:
  v8 = type metadata accessor for EventParticipantModelObject(0);
  sub_1CABD4DAC(v0 + *(v8 + 28), v7);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    sub_1CAD4EAA4();
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    sub_1CAD4EAA4();
    sub_1CABDAEBC(&qword_1EC463C50, MEMORY[0x1E6968FB0]);
    sub_1CAD4DEB4();
    (*(v2 + 8))(v4, v1);
  }

  sub_1CAD4E054();
  sub_1CAD4EAA4();
  if (!*(v0 + *(v8 + 40) + 8))
  {
    return sub_1CAD4EAA4();
  }

  sub_1CAD4EAA4();
  return sub_1CAD4E054();
}

uint64_t EventAttendeeModelObject.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t EventAttendeeModelObject.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t EventAttendeeModelObject.emailAddress.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t EventAttendeeModelObject.emailAddress.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t EventAttendeeModelObject.phoneNumber.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t EventAttendeeModelObject.phoneNumber.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_1CABD5CF0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *(a1(0) + 28);

  return sub_1CABD4DAC(v4, a2);
}

uint64_t sub_1CABD5D54(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = v2 + *(a2(0) + 28);

  return sub_1CABD4E34(a1, v4);
}

uint64_t sub_1CABD5DFC(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 32));

  return v2;
}

uint64_t sub_1CABD5E5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 32));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t EventAttendeeModelObject.isCurrentUser.setter(char a1)
{
  result = type metadata accessor for EventAttendeeModelObject(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t sub_1CABD5FA4(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 40));

  return v2;
}

uint64_t sub_1CABD6004(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 40));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t EventAttendeeModelObject.status.setter(uint64_t a1)
{
  result = type metadata accessor for EventAttendeeModelObject(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t EventAttendeeModelObject.role.setter(uint64_t a1)
{
  result = type metadata accessor for EventAttendeeModelObject(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t EventAttendeeModelObject.type.setter(uint64_t a1)
{
  result = type metadata accessor for EventAttendeeModelObject(0);
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t EventAttendeeModelObject.comment.getter()
{
  v1 = *(v0 + *(type metadata accessor for EventAttendeeModelObject(0) + 56));

  return v1;
}

uint64_t EventAttendeeModelObject.comment.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for EventAttendeeModelObject(0) + 56));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t EventAttendeeModelObject.init(name:emailAddress:phoneNumber:url:id:isCurrentUser:contactID:status:role:type:comment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v23 = type metadata accessor for EventAttendeeModelObject(0);
  v24 = v23[7];
  v25 = sub_1CAD4BFF4();
  (*(*(v25 - 8) + 56))(&a9[v24], 1, 1, v25);
  v26 = &a9[v23[10]];
  v27 = &a9[v23[14]];
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  *(a9 + 4) = a5;
  *(a9 + 5) = a6;
  result = sub_1CABD4E34(a7, &a9[v24]);
  v29 = &a9[v23[8]];
  *v29 = a8;
  *(v29 + 1) = a10;
  a9[v23[9]] = a11;
  *v26 = a12;
  *(v26 + 1) = a13;
  *&a9[v23[11]] = a14;
  *&a9[v23[12]] = a15;
  *&a9[v23[13]] = a16;
  *v27 = a17;
  *(v27 + 1) = a18;
  return result;
}

uint64_t EventAttendeeModelObject.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v46 - v5;
  v7 = type metadata accessor for EventAttendeeModelObject(0);
  v8 = (v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v8[9];
  v12 = sub_1CAD4BFF4();
  (*(*(v12 - 8) + 56))(&v10[v11], 1, 1, v12);
  v13 = &v10[v8[12]];
  v14 = &v10[v8[16]];
  v16 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  *v10 = (*(*(v15 + 8) + 24))(v16);
  *(v10 + 1) = v17;
  v19 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  *(v10 + 2) = (*(*(v18 + 8) + 32))(v19);
  *(v10 + 3) = v20;
  v22 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v22);
  *(v10 + 4) = (*(*(v21 + 8) + 40))(v22);
  *(v10 + 5) = v23;
  v25 = a1[3];
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v25);
  (*(*(v24 + 8) + 48))(v25);
  sub_1CABD4E34(v6, &v10[v11]);
  v27 = a1[3];
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v27);
  v28 = (*(*(v26 + 8) + 16))(v27);
  v29 = &v10[v8[10]];
  *v29 = v28;
  v29[1] = v30;
  v32 = a1[3];
  v31 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v32);
  v10[v8[11]] = (*(*(v31 + 8) + 56))(v32) & 1;
  v34 = a1[3];
  v33 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v34);
  *v13 = (*(*(v33 + 8) + 64))(v34);
  *(v13 + 1) = v35;
  v36 = a1[3];
  v37 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v36);
  *&v10[v8[13]] = (*(v37 + 16))(v36, v37);
  v38 = a1[3];
  v39 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v38);
  *&v10[v8[14]] = (*(v39 + 24))(v38, v39);
  v40 = a1[3];
  v41 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v40);
  *&v10[v8[15]] = (*(v41 + 32))(v40, v41);
  v42 = a1[3];
  v43 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v42);
  *v14 = (*(v43 + 40))(v42, v43);
  *(v14 + 1) = v44;
  sub_1CABDA43C(v10, a2, type metadata accessor for EventAttendeeModelObject);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1CABDA4A4(v10, type metadata accessor for EventAttendeeModelObject);
}

uint64_t EventAttendeeModelObject.hash(into:)()
{
  v1 = sub_1CAD4BFF4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v10 - v6;
  if (v0[1])
  {
    sub_1CAD4EAA4();
    sub_1CAD4E054();
    if (v0[3])
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_1CAD4EAA4();
    if (v0[5])
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  sub_1CAD4EAA4();
  if (!v0[3])
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_1CAD4EAA4();
  sub_1CAD4E054();
  if (v0[5])
  {
LABEL_4:
    sub_1CAD4EAA4();
    sub_1CAD4E054();
    goto LABEL_8;
  }

LABEL_7:
  sub_1CAD4EAA4();
LABEL_8:
  v8 = type metadata accessor for EventAttendeeModelObject(0);
  sub_1CABD4DAC(v0 + v8[7], v7);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    sub_1CAD4EAA4();
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    sub_1CAD4EAA4();
    sub_1CABDAEBC(&qword_1EC463C50, MEMORY[0x1E6968FB0]);
    sub_1CAD4DEB4();
    (*(v2 + 8))(v4, v1);
  }

  sub_1CAD4E054();
  sub_1CAD4EAA4();
  if (*(v0 + v8[10] + 8))
  {
    sub_1CAD4EAA4();
    sub_1CAD4E054();
  }

  else
  {
    sub_1CAD4EAA4();
  }

  MEMORY[0x1CCAA7D10](*(v0 + v8[11]));
  MEMORY[0x1CCAA7D10](*(v0 + v8[12]));
  MEMORY[0x1CCAA7D10](*(v0 + v8[13]));
  if (!*(v0 + v8[14] + 8))
  {
    return sub_1CAD4EAA4();
  }

  sub_1CAD4EAA4();
  return sub_1CAD4E054();
}

uint64_t sub_1CABD6C20(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 56));

  return v2;
}

uint64_t EventOrganizerModelObject.isCurrentUser.setter(char a1)
{
  result = type metadata accessor for EventOrganizerModelObject(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t EventOrganizerModelObject.scheduleAgent.setter(uint64_t a1)
{
  result = type metadata accessor for EventOrganizerModelObject(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t EventOrganizerModelObject.init(name:emailAddress:phoneNumber:url:id:isCurrentUser:contactID:scheduleAgent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v20 = type metadata accessor for EventOrganizerModelObject(0);
  v21 = v20[7];
  v22 = sub_1CAD4BFF4();
  (*(*(v22 - 8) + 56))(&a9[v21], 1, 1, v22);
  v23 = &a9[v20[10]];
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  *(a9 + 4) = a5;
  *(a9 + 5) = a6;
  result = sub_1CABD4E34(a7, &a9[v21]);
  v25 = &a9[v20[8]];
  *v25 = a8;
  *(v25 + 1) = a10;
  a9[v20[9]] = a11;
  *v23 = a12;
  *(v23 + 1) = a13;
  *&a9[v20[11]] = a14;
  return result;
}

uint64_t EventOrganizerModelObject.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v38 - v5;
  v7 = type metadata accessor for EventOrganizerModelObject(0);
  v8 = (v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v8[9];
  v12 = sub_1CAD4BFF4();
  (*(*(v12 - 8) + 56))(&v10[v11], 1, 1, v12);
  v13 = &v10[v8[12]];
  v15 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  *v10 = (*(*(v14 + 8) + 24))(v15);
  *(v10 + 1) = v16;
  v18 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  *(v10 + 2) = (*(*(v17 + 8) + 32))(v18);
  *(v10 + 3) = v19;
  v21 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v21);
  *(v10 + 4) = (*(*(v20 + 8) + 40))(v21);
  *(v10 + 5) = v22;
  v24 = a1[3];
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v24);
  (*(*(v23 + 8) + 48))(v24);
  sub_1CABD4E34(v6, &v10[v11]);
  v26 = a1[3];
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v26);
  v27 = (*(*(v25 + 8) + 16))(v26);
  v28 = &v10[v8[10]];
  *v28 = v27;
  v28[1] = v29;
  v31 = a1[3];
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v31);
  v10[v8[11]] = (*(*(v30 + 8) + 56))(v31) & 1;
  v33 = a1[3];
  v32 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v33);
  *v13 = (*(*(v32 + 8) + 64))(v33);
  *(v13 + 1) = v34;
  v35 = a1[3];
  v36 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v35);
  *&v10[v8[13]] = (*(v36 + 16))(v35, v36);
  sub_1CABDA43C(v10, a2, type metadata accessor for EventOrganizerModelObject);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1CABDA4A4(v10, type metadata accessor for EventOrganizerModelObject);
}

uint64_t EventOrganizerModelObject.hash(into:)()
{
  v1 = sub_1CAD4BFF4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v10 - v6;
  if (v0[1])
  {
    sub_1CAD4EAA4();
    sub_1CAD4E054();
    if (v0[3])
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_1CAD4EAA4();
    if (v0[5])
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  sub_1CAD4EAA4();
  if (!v0[3])
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_1CAD4EAA4();
  sub_1CAD4E054();
  if (v0[5])
  {
LABEL_4:
    sub_1CAD4EAA4();
    sub_1CAD4E054();
    goto LABEL_8;
  }

LABEL_7:
  sub_1CAD4EAA4();
LABEL_8:
  v8 = type metadata accessor for EventOrganizerModelObject(0);
  sub_1CABD4DAC(v0 + v8[7], v7);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    sub_1CAD4EAA4();
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    sub_1CAD4EAA4();
    sub_1CABDAEBC(&qword_1EC463C50, MEMORY[0x1E6968FB0]);
    sub_1CAD4DEB4();
    (*(v2 + 8))(v4, v1);
  }

  sub_1CAD4E054();
  sub_1CAD4EAA4();
  if (*(v0 + v8[10] + 8))
  {
    sub_1CAD4EAA4();
    sub_1CAD4E054();
  }

  else
  {
    sub_1CAD4EAA4();
  }

  return MEMORY[0x1CCAA7D10](*(v0 + v8[11]));
}

uint64_t sub_1CABD7710(void (*a1)(_BYTE *))
{
  sub_1CAD4EA84();
  a1(v3);
  return sub_1CAD4EAC4();
}

uint64_t sub_1CABD7758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 40));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t sub_1CABD77B0(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_1CAD4EA84();
  a3(v5);
  return sub_1CAD4EAC4();
}

uint64_t sub_1CABD7814(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_1CAD4EA84();
  a4(v6);
  return sub_1CAD4EAC4();
}

uint64_t sub_1CABD7858(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 32));

  return v2;
}

uint64_t sub_1CABD7890(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 40));

  return v2;
}

uint64_t sub_1CABD78CC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (v2 + *(a1 + 32));
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_1CABD78E0()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x6E65727275437369;
  if (v1 != 5)
  {
    v3 = 0x49746361746E6F63;
  }

  v4 = 7107189;
  if (v1 != 3)
  {
    v4 = 25705;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6464416C69616D65;
  if (v1 != 1)
  {
    v5 = 0x6D754E656E6F6870;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1CABD79C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CABDBCB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CABD79F4(uint64_t a1)
{
  v2 = sub_1CABDAE68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CABD7A30(uint64_t a1)
{
  v2 = sub_1CABDAE68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EventParticipantModelObject.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v39 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463C58);
  v42 = *(v6 - 8);
  v43 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v39 - v7;
  v9 = type metadata accessor for EventParticipantModelObject(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = (&v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = v10;
  v14 = *(v10 + 28);
  v15 = sub_1CAD4BFF4();
  v16 = *(*(v15 - 8) + 56);
  v44 = v14;
  v17 = v12;
  v16(v12 + v14, 1, 1, v15);
  v18 = a1[3];
  v45 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1CABDAE68();
  v19 = v46;
  sub_1CAD4EAE4();
  if (v19)
  {
    v46 = v19;
    v21 = v44;
    v22 = v17;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1(v45);

    return sub_1CAB21B68(v22 + v21, &qword_1EC465450);
  }

  v53 = 0;
  v20 = v13;
  v22 = v17;
  *v17 = sub_1CAD4E824();
  v17[1] = v24;
  v52 = 1;
  v40 = v8;
  v25 = sub_1CAD4E824();
  v21 = v44;
  v17[2] = v25;
  v17[3] = v26;
  v39 = v26;
  v51 = 2;
  v27 = sub_1CAD4E824();
  v46 = 0;
  v17[4] = v27;
  v17[5] = v28;
  v50 = 3;
  sub_1CABDAEBC(&qword_1EC463C68, MEMORY[0x1E6968FB0]);
  v29 = v46;
  sub_1CAD4E874();
  v46 = v29;
  if (v29)
  {
    (*(v42 + 8))(v40, v43);
    goto LABEL_4;
  }

  sub_1CABD4E34(v5, v17 + v21);
  v49 = 4;
  v30 = v46;
  v31 = sub_1CAD4E884();
  if (v30)
  {
    v46 = v30;
    (*(v42 + 8))(v40, v43);
    goto LABEL_4;
  }

  v33 = (v17 + v20[8]);
  *v33 = v31;
  v33[1] = v32;
  v48 = 5;
  *(v17 + v20[9]) = sub_1CAD4E834() & 1;
  v47 = 6;
  v34 = sub_1CAD4E824();
  v46 = 0;
  v35 = v34;
  v37 = v36;
  v38 = (v17 + v20[10]);
  (*(v42 + 8))(v40, v43);
  *v38 = v35;
  v38[1] = v37;
  sub_1CABDA43C(v17, v41, type metadata accessor for EventParticipantModelObject);
  __swift_destroy_boxed_opaque_existential_1(v45);
  return sub_1CABDA4A4(v17, type metadata accessor for EventParticipantModelObject);
}

uint64_t EventParticipantModelObject.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463C70);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CABDAE68();
  sub_1CAD4EB04();
  v8[15] = 0;
  sub_1CAD4E904();
  if (!v1)
  {
    v8[14] = 1;
    sub_1CAD4E904();
    v8[13] = 2;
    sub_1CAD4E904();
    type metadata accessor for EventParticipantModelObject(0);
    v8[12] = 3;
    sub_1CAD4BFF4();
    sub_1CABDAEBC(&qword_1EC463C78, MEMORY[0x1E6968FB0]);
    sub_1CAD4E924();
    v8[11] = 4;
    sub_1CAD4E934();
    v8[10] = 5;
    sub_1CAD4E944();
    v8[9] = 6;
    sub_1CAD4E904();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1CABD827C(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 1701667182;
    v7 = 0x6D754E656E6F6870;
    v8 = 7107189;
    if (a1 != 3)
    {
      v8 = 25705;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x6464416C69616D65;
    }

    if (a1 <= 1u)
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
    v1 = 1701605234;
    v2 = 1701869940;
    if (a1 != 9)
    {
      v2 = 0x746E656D6D6F63;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x6E65727275437369;
    v4 = 0x49746361746E6F63;
    if (a1 != 6)
    {
      v4 = 0x737574617473;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1CABD83FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CABDBF0C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CABD8430(uint64_t a1)
{
  v2 = sub_1CABDAF04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CABD846C(uint64_t a1)
{
  v2 = sub_1CABDAF04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EventAttendeeModelObject.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v51 - v5;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463C80);
  v7 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v9 = v51 - v8;
  v10 = type metadata accessor for EventAttendeeModelObject(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = (v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v55 = v11;
  v14 = *(v11 + 28);
  v15 = sub_1CAD4BFF4();
  v16 = *(*(v15 - 8) + 56);
  v57 = v14;
  v58 = v13;
  v16(v13 + v14, 1, 1, v15);
  v17 = a1[3];
  v56 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1CABDAF04();
  v53 = v9;
  sub_1CAD4EAE4();
  if (v2)
  {
    v59 = v2;
    v23 = 0;
    v25 = v57;
    v24 = v58;
  }

  else
  {
    v18 = v6;
    v19 = v7;
    LOBYTE(v61) = 0;
    v21 = v53;
    v20 = v54;
    v22 = sub_1CAD4E824();
    v24 = v58;
    *v58 = v22;
    v24[1] = v27;
    LOBYTE(v61) = 1;
    v24[2] = sub_1CAD4E824();
    v24[3] = v28;
    v51[2] = v28;
    LOBYTE(v61) = 2;
    v29 = sub_1CAD4E824();
    v59 = 0;
    v31 = v30;
    v24[4] = v29;
    v24[5] = v30;
    LOBYTE(v61) = 3;
    sub_1CABDAEBC(&qword_1EC463C68, MEMORY[0x1E6968FB0]);
    v32 = v59;
    sub_1CAD4E874();
    v59 = v32;
    if (v32)
    {
      (*(v19 + 8))(v21, v20);
      v23 = 0;
      v25 = v57;
    }

    else
    {
      v25 = v57;
      sub_1CABD4E34(v18, v24 + v57);
      LOBYTE(v61) = 4;
      v33 = v59;
      v34 = sub_1CAD4E884();
      if (v33)
      {
        v59 = v33;
        (*(v19 + 8))(v21, v20);
        v23 = 0;
      }

      else
      {
        v36 = v55;
        v37 = (v24 + v55[8]);
        *v37 = v34;
        v37[1] = v35;
        LOBYTE(v61) = 5;
        *(v24 + v36[9]) = sub_1CAD4E834() & 1;
        LOBYTE(v61) = 6;
        v38 = sub_1CAD4E824();
        v59 = 0;
        v51[1] = v31;
        v39 = (v24 + v36[10]);
        *v39 = v38;
        v39[1] = v40;
        type metadata accessor for EKParticipantStatus(0);
        v60 = 7;
        sub_1CABDAEBC(&qword_1EC463C90, type metadata accessor for EKParticipantStatus);
        v41 = v54;
        v42 = v59;
        sub_1CAD4E8C4();
        v59 = v42;
        if (v42 || (*(v24 + v55[11]) = v61, type metadata accessor for EKParticipantRole(0), v60 = 8, sub_1CABDAEBC(&qword_1EC463C98, type metadata accessor for EKParticipantRole), v43 = v59, sub_1CAD4E8C4(), (v59 = v43) != 0))
        {
          (*(v19 + 8))(v21, v41);
          v23 = 1;
        }

        else
        {
          *(v24 + v55[12]) = v61;
          type metadata accessor for EKParticipantType(0);
          v60 = 9;
          sub_1CABDAEBC(&qword_1EC463CA0, type metadata accessor for EKParticipantType);
          v44 = v59;
          sub_1CAD4E8C4();
          v59 = v44;
          if (!v44)
          {
            *(v58 + v55[13]) = v61;
            LOBYTE(v61) = 10;
            v45 = sub_1CAD4E824();
            v59 = 0;
            v46 = v45;
            v48 = v47;
            v49 = v58;
            v50 = (v58 + v55[14]);
            (*(v19 + 8))(v53, v54);
            *v50 = v46;
            v50[1] = v48;
            sub_1CABDA43C(v49, v52, type metadata accessor for EventAttendeeModelObject);
            __swift_destroy_boxed_opaque_existential_1(v56);
            return sub_1CABDA4A4(v49, type metadata accessor for EventAttendeeModelObject);
          }

          (*(v19 + 8))(v53, v54);
          v23 = 1;
          v25 = v57;
          v24 = v58;
        }
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v56);

  sub_1CAB21B68(v24 + v25, &qword_1EC465450);
  if (v23)
  {
  }
}

uint64_t EventAttendeeModelObject.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463CA8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CABDAF04();
  sub_1CAD4EB04();
  LOBYTE(v12) = 0;
  sub_1CAD4E904();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    sub_1CAD4E904();
    LOBYTE(v12) = 2;
    sub_1CAD4E904();
    v9 = type metadata accessor for EventAttendeeModelObject(0);
    LOBYTE(v12) = 3;
    sub_1CAD4BFF4();
    sub_1CABDAEBC(&qword_1EC463C78, MEMORY[0x1E6968FB0]);
    sub_1CAD4E924();
    LOBYTE(v12) = 4;
    sub_1CAD4E934();
    LOBYTE(v12) = 5;
    sub_1CAD4E944();
    LOBYTE(v12) = 6;
    sub_1CAD4E904();
    v12 = *(v3 + v9[11]);
    HIBYTE(v11) = 7;
    type metadata accessor for EKParticipantStatus(0);
    sub_1CABDAEBC(&qword_1EC463CB0, type metadata accessor for EKParticipantStatus);
    sub_1CAD4E984();
    v12 = *(v3 + v9[12]);
    HIBYTE(v11) = 8;
    type metadata accessor for EKParticipantRole(0);
    sub_1CABDAEBC(&qword_1EC463CB8, type metadata accessor for EKParticipantRole);
    sub_1CAD4E984();
    v12 = *(v3 + v9[13]);
    HIBYTE(v11) = 9;
    type metadata accessor for EKParticipantType(0);
    sub_1CABDAEBC(&qword_1EC463CC0, type metadata accessor for EKParticipantType);
    sub_1CAD4E984();
    LOBYTE(v12) = 10;
    sub_1CAD4E904();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1CABD9048()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x49746361746E6F63;
  if (v1 != 6)
  {
    v3 = 0x656C756465686373;
  }

  v4 = 25705;
  if (v1 != 4)
  {
    v4 = 0x6E65727275437369;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6D754E656E6F6870;
  if (v1 != 2)
  {
    v5 = 7107189;
  }

  if (*v0)
  {
    v2 = 0x6464416C69616D65;
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

uint64_t sub_1CABD9154@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CABDC290(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CABD9188(uint64_t a1)
{
  v2 = sub_1CABDAF58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CABD91C4(uint64_t a1)
{
  v2 = sub_1CABDAF58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EventOrganizerModelObject.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v43 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463CC8);
  v46 = *(v6 - 8);
  v47 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v43 - v7;
  v9 = type metadata accessor for EventOrganizerModelObject(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = (v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v49 = v10;
  v13 = *(v10 + 28);
  v14 = sub_1CAD4BFF4();
  v15 = v13;
  v16 = v12;
  (*(*(v14 - 8) + 56))(v12 + v13, 1, 1, v14);
  v17 = a1[3];
  v50 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1CABDAF58();
  v48 = v8;
  v18 = v51;
  sub_1CAD4EAE4();
  if (v18)
  {
    v51 = v18;
    v19 = 0;
    v20 = v15;
    v21 = v16;
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1(v50);

    sub_1CAB21B68(v21 + v20, &qword_1EC465450);
    if (v19)
    {
    }
  }

  v44 = v5;
  v22 = v46;
  v23 = v47;
  LOBYTE(v52) = 0;
  v20 = v13;
  v21 = v16;
  *v16 = sub_1CAD4E824();
  v16[1] = v24;
  v43[1] = v24;
  LOBYTE(v52) = 1;
  v25 = v22;
  v16[2] = sub_1CAD4E824();
  v16[3] = v26;
  LOBYTE(v52) = 2;
  v27 = sub_1CAD4E824();
  v51 = 0;
  v16[4] = v27;
  v16[5] = v28;
  LOBYTE(v52) = 3;
  sub_1CABDAEBC(&qword_1EC463C68, MEMORY[0x1E6968FB0]);
  v29 = v44;
  v30 = v51;
  sub_1CAD4E874();
  v51 = v30;
  if (v30)
  {
    (*(v22 + 8))(v48, v23);
    v19 = 0;
    goto LABEL_8;
  }

  sub_1CABD4E34(v29, v21 + v13);
  LOBYTE(v52) = 4;
  v31 = v51;
  v32 = sub_1CAD4E884();
  if (v31)
  {
    v51 = v31;
    (*(v22 + 8))(v48, v23);
    v19 = 0;
    goto LABEL_8;
  }

  v34 = v21;
  v35 = v49;
  v36 = (v34 + *(v49 + 32));
  *v36 = v32;
  v36[1] = v33;
  LOBYTE(v52) = 5;
  *(v34 + *(v35 + 36)) = sub_1CAD4E834() & 1;
  LOBYTE(v52) = 6;
  v37 = sub_1CAD4E824();
  v51 = 0;
  v40 = (v34 + *(v35 + 40));
  *v40 = v37;
  v40[1] = v38;
  type metadata accessor for EKScheduleAgent(0);
  v54 = 7;
  sub_1CABDAEBC(&qword_1EC463CD8, type metadata accessor for EKScheduleAgent);
  v41 = v51;
  sub_1CAD4E874();
  v51 = v41;
  v21 = v34;
  if (v41)
  {
    (*(v25 + 8))(v48, v47);
    v19 = 1;
    goto LABEL_8;
  }

  (*(v25 + 8))(v48, v47);
  v42 = v52;
  if (v53)
  {
    v42 = 0;
  }

  *(v34 + *(v49 + 44)) = v42;
  sub_1CABDA43C(v34, v45, type metadata accessor for EventOrganizerModelObject);
  __swift_destroy_boxed_opaque_existential_1(v50);
  return sub_1CABDA4A4(v34, type metadata accessor for EventOrganizerModelObject);
}

uint64_t EventOrganizerModelObject.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463CE0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CABDAF58();
  sub_1CAD4EB04();
  LOBYTE(v12) = 0;
  sub_1CAD4E904();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    sub_1CAD4E904();
    LOBYTE(v12) = 2;
    sub_1CAD4E904();
    v9 = type metadata accessor for EventOrganizerModelObject(0);
    LOBYTE(v12) = 3;
    sub_1CAD4BFF4();
    sub_1CABDAEBC(&qword_1EC463C78, MEMORY[0x1E6968FB0]);
    sub_1CAD4E924();
    LOBYTE(v12) = 4;
    sub_1CAD4E934();
    LOBYTE(v12) = 5;
    sub_1CAD4E944();
    LOBYTE(v12) = 6;
    sub_1CAD4E904();
    v12 = *(v3 + *(v9 + 44));
    v11[7] = 7;
    type metadata accessor for EKScheduleAgent(0);
    sub_1CABDAEBC(&qword_1EC463CE8, type metadata accessor for EKScheduleAgent);
    sub_1CAD4E984();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t _s13CalendarUIKit27EventParticipantModelObjectV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_1CAD4BFF4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463DA0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - v12;
  v14 = a1[1];
  v15 = a2[1];
  if (v14)
  {
    if (!v15 || (*a1 != *a2 || v14 != v15) && (sub_1CAD4E9E4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  v16 = a1[3];
  v17 = a2[3];
  if (v16)
  {
    if (!v17 || (a1[2] != a2[2] || v16 != v17) && (sub_1CAD4E9E4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v17)
  {
    return 0;
  }

  v18 = a1[5];
  v19 = a2[5];
  if (v18)
  {
    if (!v19 || (a1[4] != a2[4] || v18 != v19) && (sub_1CAD4E9E4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v19)
  {
    return 0;
  }

  v37 = type metadata accessor for EventParticipantModelObject(0);
  v20 = *(v37 + 28);
  v21 = *(v11 + 48);
  sub_1CABD4DAC(a1 + v20, v13);
  sub_1CABD4DAC(a2 + v20, &v13[v21]);
  v22 = *(v5 + 48);
  if (v22(v13, 1, v4) != 1)
  {
    sub_1CABD4DAC(v13, v10);
    if (v22(&v13[v21], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v21], v4);
      sub_1CABDAEBC(&qword_1EC463DA8, MEMORY[0x1E6968FB0]);
      v23 = sub_1CAD4DED4();
      v24 = *(v5 + 8);
      v24(v7, v4);
      v24(v10, v4);
      sub_1CAB21B68(v13, &qword_1EC465450);
      if ((v23 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_29;
    }

    (*(v5 + 8))(v10, v4);
LABEL_27:
    sub_1CAB21B68(v13, &qword_1EC463DA0);
    return 0;
  }

  if (v22(&v13[v21], 1, v4) != 1)
  {
    goto LABEL_27;
  }

  sub_1CAB21B68(v13, &qword_1EC465450);
LABEL_29:
  v25 = v37;
  v26 = *(v37 + 32);
  v27 = *(a1 + v26);
  v28 = *(a1 + v26 + 8);
  v29 = (a2 + v26);
  if ((v27 != *v29 || v28 != v29[1]) && (sub_1CAD4E9E4() & 1) == 0 || *(a1 + *(v25 + 36)) != *(a2 + *(v25 + 36)))
  {
    return 0;
  }

  v31 = *(v25 + 40);
  v32 = (a1 + v31);
  v33 = *(a1 + v31 + 8);
  v34 = (a2 + v31);
  v35 = v34[1];
  if (v33)
  {
    if (v35 && (*v32 == *v34 && v33 == v35 || (sub_1CAD4E9E4() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v35)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1CABDA43C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CABDA4A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL _s13CalendarUIKit25EventOrganizerModelObjectV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_1CAD4BFF4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463DA0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - v12;
  v14 = a1[1];
  v15 = a2[1];
  if (v14)
  {
    if (!v15 || (*a1 != *a2 || v14 != v15) && (sub_1CAD4E9E4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  v16 = a1[3];
  v17 = a2[3];
  if (v16)
  {
    if (!v17 || (a1[2] != a2[2] || v16 != v17) && (sub_1CAD4E9E4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v17)
  {
    return 0;
  }

  v18 = a1[5];
  v19 = a2[5];
  if (v18)
  {
    if (!v19 || (a1[4] != a2[4] || v18 != v19) && (sub_1CAD4E9E4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v19)
  {
    return 0;
  }

  v37 = type metadata accessor for EventOrganizerModelObject(0);
  v20 = *(v37 + 28);
  v21 = *(v11 + 48);
  sub_1CABD4DAC(a1 + v20, v13);
  sub_1CABD4DAC(a2 + v20, &v13[v21]);
  v22 = *(v5 + 48);
  if (v22(v13, 1, v4) != 1)
  {
    sub_1CABD4DAC(v13, v10);
    if (v22(&v13[v21], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v21], v4);
      sub_1CABDAEBC(&qword_1EC463DA8, MEMORY[0x1E6968FB0]);
      v23 = sub_1CAD4DED4();
      v24 = *(v5 + 8);
      v24(v7, v4);
      v24(v10, v4);
      sub_1CAB21B68(v13, &qword_1EC465450);
      if ((v23 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_29;
    }

    (*(v5 + 8))(v10, v4);
LABEL_27:
    sub_1CAB21B68(v13, &qword_1EC463DA0);
    return 0;
  }

  if (v22(&v13[v21], 1, v4) != 1)
  {
    goto LABEL_27;
  }

  sub_1CAB21B68(v13, &qword_1EC465450);
LABEL_29:
  v25 = v37;
  v26 = *(v37 + 32);
  v27 = *(a1 + v26);
  v28 = *(a1 + v26 + 8);
  v29 = (a2 + v26);
  if ((v27 != *v29 || v28 != v29[1]) && (sub_1CAD4E9E4() & 1) == 0 || *(a1 + v25[9]) != *(a2 + v25[9]))
  {
    return 0;
  }

  v31 = v25[10];
  v32 = (a1 + v31);
  v33 = *(a1 + v31 + 8);
  v34 = (a2 + v31);
  v35 = v34[1];
  if (v33)
  {
    if (v35 && (*v32 == *v34 && v33 == v35 || (sub_1CAD4E9E4() & 1) != 0))
    {
      return *(a1 + v25[11]) == *(a2 + v25[11]);
    }
  }

  else if (!v35)
  {
    return *(a1 + v25[11]) == *(a2 + v25[11]);
  }

  return 0;
}

uint64_t _s13CalendarUIKit24EventAttendeeModelObjectV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_1CAD4BFF4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v41 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463DA0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v41 - v12;
  v14 = a1[1];
  v15 = a2[1];
  if (v14)
  {
    if (!v15 || (*a1 != *a2 || v14 != v15) && (sub_1CAD4E9E4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  v16 = a1[3];
  v17 = a2[3];
  if (v16)
  {
    if (!v17 || (a1[2] != a2[2] || v16 != v17) && (sub_1CAD4E9E4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v17)
  {
    return 0;
  }

  v18 = a1[5];
  v19 = a2[5];
  if (v18)
  {
    if (!v19 || (a1[4] != a2[4] || v18 != v19) && (sub_1CAD4E9E4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v19)
  {
    return 0;
  }

  v42 = type metadata accessor for EventAttendeeModelObject(0);
  v20 = *(v42 + 28);
  v21 = *(v11 + 48);
  sub_1CABD4DAC(a1 + v20, v13);
  sub_1CABD4DAC(a2 + v20, &v13[v21]);
  v22 = *(v5 + 48);
  if (v22(v13, 1, v4) != 1)
  {
    sub_1CABD4DAC(v13, v10);
    if (v22(&v13[v21], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v21], v4);
      sub_1CABDAEBC(&qword_1EC463DA8, MEMORY[0x1E6968FB0]);
      v23 = sub_1CAD4DED4();
      v24 = *(v5 + 8);
      v24(v7, v4);
      v24(v10, v4);
      sub_1CAB21B68(v13, &qword_1EC465450);
      if ((v23 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_29;
    }

    (*(v5 + 8))(v10, v4);
LABEL_27:
    sub_1CAB21B68(v13, &qword_1EC463DA0);
    return 0;
  }

  if (v22(&v13[v21], 1, v4) != 1)
  {
    goto LABEL_27;
  }

  sub_1CAB21B68(v13, &qword_1EC465450);
LABEL_29:
  v25 = v42;
  v26 = *(v42 + 32);
  v27 = *(a1 + v26);
  v28 = *(a1 + v26 + 8);
  v29 = (a2 + v26);
  if ((v27 != *v29 || v28 != v29[1]) && (sub_1CAD4E9E4() & 1) == 0 || *(a1 + v25[9]) != *(a2 + v25[9]))
  {
    return 0;
  }

  v31 = v25[10];
  v32 = (a1 + v31);
  v33 = *(a1 + v31 + 8);
  v34 = (a2 + v31);
  v35 = v34[1];
  if (v33)
  {
    if (!v35 || (*v32 != *v34 || v33 != v35) && (sub_1CAD4E9E4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v35)
  {
    return 0;
  }

  if (*(a1 + v25[11]) == *(a2 + v25[11]) && *(a1 + v25[12]) == *(a2 + v25[12]) && *(a1 + v25[13]) == *(a2 + v25[13]))
  {
    v36 = v25[14];
    v37 = (a1 + v36);
    v38 = *(a1 + v36 + 8);
    v39 = (a2 + v36);
    v40 = v39[1];
    if (v38)
    {
      if (v40 && (*v37 == *v39 && v38 == v40 || (sub_1CAD4E9E4() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v40)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_1CABDAE68()
{
  result = qword_1EC463C60;
  if (!qword_1EC463C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC463C60);
  }

  return result;
}

uint64_t sub_1CABDAEBC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1CABDAF04()
{
  result = qword_1EC463C88;
  if (!qword_1EC463C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC463C88);
  }

  return result;
}

unint64_t sub_1CABDAF58()
{
  result = qword_1EC463CD0;
  if (!qword_1EC463CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC463CD0);
  }

  return result;
}

uint64_t sub_1CABDAFAC(uint64_t a1)
{
  result = sub_1CABDAEBC(&qword_1EC463CF0, type metadata accessor for EventParticipantModelObject);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1CABDB04C(uint64_t a1)
{
  result = sub_1CABDAEBC(&qword_1EC463D00, type metadata accessor for EventParticipantModelObject);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1CABDB0EC(uint64_t a1)
{
  result = sub_1CABDAEBC(&qword_1EC463D18, type metadata accessor for EventAttendeeModelObject);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1CABDB18C(uint64_t a1)
{
  result = sub_1CABDAEBC(&qword_1EC463D30, type metadata accessor for EventOrganizerModelObject);
  *(a1 + 8) = result;
  return result;
}

void sub_1CABDB20C()
{
  sub_1CABDB2B0();
  if (v0 <= 0x3F)
  {
    sub_1CABDB300();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1CABDB2B0()
{
  if (!qword_1EC461F88)
  {
    v0 = sub_1CAD4E4D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC461F88);
    }
  }
}

void sub_1CABDB300()
{
  if (!qword_1EDA5F898)
  {
    sub_1CAD4BFF4();
    v0 = sub_1CAD4E4D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA5F898);
    }
  }
}

void sub_1CABDB380()
{
  sub_1CABDB2B0();
  if (v0 <= 0x3F)
  {
    sub_1CABDB300();
    if (v1 <= 0x3F)
    {
      type metadata accessor for EKParticipantStatus(319);
      if (v2 <= 0x3F)
      {
        type metadata accessor for EKParticipantRole(319);
        if (v3 <= 0x3F)
        {
          type metadata accessor for EKParticipantType(319);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 28);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = (a2 - 1);
  }

  return result;
}

void sub_1CABDB630()
{
  sub_1CABDB2B0();
  if (v0 <= 0x3F)
  {
    sub_1CABDB300();
    if (v1 <= 0x3F)
    {
      type metadata accessor for EKScheduleAgent(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for EventOrganizerModelObject.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for EventOrganizerModelObject.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for EventAttendeeModelObject.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EventAttendeeModelObject.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1CABDB9A0()
{
  result = qword_1EC463D38;
  if (!qword_1EC463D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC463D38);
  }

  return result;
}

unint64_t sub_1CABDB9F8()
{
  result = qword_1EC463D40;
  if (!qword_1EC463D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC463D40);
  }

  return result;
}

unint64_t sub_1CABDBA50()
{
  result = qword_1EC463D48;
  if (!qword_1EC463D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC463D48);
  }

  return result;
}

unint64_t sub_1CABDBAA8()
{
  result = qword_1EC463D50;
  if (!qword_1EC463D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC463D50);
  }

  return result;
}

unint64_t sub_1CABDBB00()
{
  result = qword_1EC463D58;
  if (!qword_1EC463D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC463D58);
  }

  return result;
}

unint64_t sub_1CABDBB58()
{
  result = qword_1EC463D60;
  if (!qword_1EC463D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC463D60);
  }

  return result;
}

unint64_t sub_1CABDBBB0()
{
  result = qword_1EC463D68;
  if (!qword_1EC463D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC463D68);
  }

  return result;
}

unint64_t sub_1CABDBC08()
{
  result = qword_1EC463D70;
  if (!qword_1EC463D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC463D70);
  }

  return result;
}

unint64_t sub_1CABDBC60()
{
  result = qword_1EC463D78;
  if (!qword_1EC463D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC463D78);
  }

  return result;
}

uint64_t sub_1CABDBCB4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6464416C69616D65 && a2 == 0xEC00000073736572 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D754E656E6F6870 && a2 == 0xEB00000000726562 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E65727275437369 && a2 == 0xED00007265735574 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x49746361746E6F63 && a2 == 0xE900000000000044)
  {

    return 6;
  }

  else
  {
    v6 = sub_1CAD4E9E4();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1CABDBF0C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6464416C69616D65 && a2 == 0xEC00000073736572 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D754E656E6F6870 && a2 == 0xEB00000000726562 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E65727275437369 && a2 == 0xED00007265735574 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x49746361746E6F63 && a2 == 0xE900000000000044 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 1701605234 && a2 == 0xE400000000000000 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x746E656D6D6F63 && a2 == 0xE700000000000000)
  {

    return 10;
  }

  else
  {
    v6 = sub_1CAD4E9E4();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_1CABDC290(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6464416C69616D65 && a2 == 0xEC00000073736572 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D754E656E6F6870 && a2 == 0xEB00000000726562 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E65727275437369 && a2 == 0xED00007265735574 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x49746361746E6F63 && a2 == 0xE900000000000044 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x656C756465686373 && a2 == 0xED0000746E656741)
  {

    return 7;
  }

  else
  {
    v6 = sub_1CAD4E9E4();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

double sub_1CABDC5CC()
{
  *&xmmword_1EC463DB0 = -1;
  *(&xmmword_1EC463DB0 + 1) = 0x100010101000000;
  *&result = 0x100000001;
  dword_1EC463DC0 = 1;
  dword_1EC463DC4 = 16843009;
  word_1EC463DC8 = 256;
  return result;
}

CalendarUIKit::EventSourceConstraintsModelObject __swiftcall EventSourceConstraintsModelObject.init(maxAlarmsAllowed:requiresOutgoingInvitationsInDefaultCalendar:eventDurationConstrainedToRecurrenceInterval:occurrencesMustOccurOnSeparateDays:supportsPrivateEvents:supportsAlarmTriggerDates:supportsMultipleAlarms:requiresOccurrencesConformToRecurrenceRule:supportsURLField:supportsFloatingTimeZone:prohibitsMultipleDaysInMonthlyRecurrence:prohibitsMultipleMonthsInYearlyRecurrence:prohibitsYearlyRecurrenceInterval:canSetAvailability:eventAvailabilityLimited:supportsStructuredLocations:supportsTravelTime:supportsAvailabilityRequests:)(CalendarUIKit::EventSourceConstraintsModelObject maxAlarmsAllowed, Swift::Bool requiresOutgoingInvitationsInDefaultCalendar, Swift::Bool eventDurationConstrainedToRecurrenceInterval, Swift::Bool occurrencesMustOccurOnSeparateDays, Swift::Bool supportsPrivateEvents, Swift::Bool supportsAlarmTriggerDates, Swift::Bool supportsMultipleAlarms, Swift::Bool requiresOccurrencesConformToRecurrenceRule, Swift::Bool supportsURLField, Swift::Bool supportsFloatingTimeZone, Swift::Bool prohibitsMultipleDaysInMonthlyRecurrence, Swift::Bool prohibitsMultipleMonthsInYearlyRecurrence, Swift::Bool prohibitsYearlyRecurrenceInterval, Swift::Bool canSetAvailability, Swift::Bool eventAvailabilityLimited, Swift::Bool supportsStructuredLocations, Swift::Bool supportsTravelTime, Swift::Bool supportsAvailabilityRequests)
{
  *v18 = maxAlarmsAllowed.maxAlarmsAllowed;
  *(v18 + 8) = requiresOutgoingInvitationsInDefaultCalendar;
  *(v18 + 9) = eventDurationConstrainedToRecurrenceInterval;
  *(v18 + 10) = occurrencesMustOccurOnSeparateDays;
  *(v18 + 11) = supportsPrivateEvents;
  *(v18 + 12) = supportsAlarmTriggerDates;
  *(v18 + 13) = supportsMultipleAlarms;
  *(v18 + 14) = requiresOccurrencesConformToRecurrenceRule;
  *(v18 + 15) = supportsURLField;
  *(v18 + 16) = supportsFloatingTimeZone;
  *(v18 + 17) = prohibitsMultipleDaysInMonthlyRecurrence;
  *(v18 + 18) = prohibitsMultipleMonthsInYearlyRecurrence;
  *(v18 + 19) = prohibitsYearlyRecurrenceInterval;
  *(v18 + 20) = canSetAvailability;
  *(v18 + 21) = eventAvailabilityLimited;
  *(v18 + 22) = supportsStructuredLocations;
  *(v18 + 23) = supportsTravelTime;
  *(v18 + 25) = supportsAvailabilityRequests;
  maxAlarmsAllowed.supportsAttachments = occurrencesMustOccurOnSeparateDays;
  maxAlarmsAllowed.supportsFloatingTimeZone = eventDurationConstrainedToRecurrenceInterval;
  maxAlarmsAllowed.requiresOutgoingInvitationsInDefaultCalendar = requiresOutgoingInvitationsInDefaultCalendar;
  return maxAlarmsAllowed;
}

double static EventSourceConstraintsModelObject.sharedDefaults.getter@<D0>(_OWORD *a1@<X8>)
{
  if (qword_1EC462EF8 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  *a1 = xmmword_1EC463DB0;
  result = *(&xmmword_1EC463DB0 + 10);
  *(a1 + 10) = *(&xmmword_1EC463DB0 + 10);
  return result;
}

uint64_t EventSourceConstraintsModelObject.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v60 = (*(v5 + 8))(v4, v5);
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v59 = (*(v7 + 16))(v6, v7) & 1;
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  v58 = (*(v9 + 24))(v8, v9) & 1;
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  v57 = (*(v11 + 32))(v10, v11) & 1;
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  v56 = (*(v13 + 40))(v12, v13) & 1;
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  v55 = (*(v15 + 48))(v14, v15) & 1;
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v54 = (*(v17 + 56))(v16, v17) & 1;
  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  v53 = (*(v19 + 64))(v18, v19) & 1;
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  v52 = (*(v21 + 72))(v20, v21) & 1;
  v22 = a1[3];
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v22);
  v51 = (*(v23 + 80))(v22, v23) & 1;
  v24 = a1[3];
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v24);
  v50 = (*(v25 + 88))(v24, v25) & 1;
  v26 = a1[3];
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v26);
  v49 = (*(v27 + 96))(v26, v27) & 1;
  v28 = a1[3];
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v28);
  v48 = (*(v29 + 104))(v28, v29) & 1;
  v30 = a1[3];
  v31 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v30);
  v32 = (*(v31 + 112))(v30, v31) & 1;
  v33 = a1[3];
  v34 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v33);
  v35 = (*(v34 + 120))(v33, v34) & 1;
  v36 = a1[3];
  v37 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v36);
  LOBYTE(v4) = (*(v37 + 128))(v36, v37) & 1;
  v38 = a1[3];
  v39 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v38);
  v40 = (*(v39 + 136))(v38, v39) & 1;
  v41 = a1[3];
  v42 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v41);
  v43 = (*(v42 + 144))(v41, v42) & 1;
  v44 = a1[3];
  v45 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v44);
  v46 = (*(v45 + 152))(v44, v45);
  *a2 = v60;
  *(a2 + 8) = v59;
  *(a2 + 9) = v58;
  *(a2 + 10) = v57;
  *(a2 + 11) = v56;
  *(a2 + 12) = v55;
  *(a2 + 13) = v54;
  *(a2 + 14) = v53;
  *(a2 + 15) = v52;
  *(a2 + 16) = v51;
  *(a2 + 17) = v50;
  *(a2 + 18) = v49;
  *(a2 + 19) = v48;
  *(a2 + 20) = v32;
  *(a2 + 21) = v35;
  *(a2 + 22) = v4;
  *(a2 + 23) = v40;
  *(a2 + 24) = v43;
  *(a2 + 25) = v46 & 1;

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t EventSourceConstraintsModelObject.hash(into:)()
{
  MEMORY[0x1CCAA7D10](*v0);
  sub_1CAD4EAA4();
  sub_1CAD4EAA4();
  sub_1CAD4EAA4();
  sub_1CAD4EAA4();
  sub_1CAD4EAA4();
  sub_1CAD4EAA4();
  sub_1CAD4EAA4();
  sub_1CAD4EAA4();
  sub_1CAD4EAA4();
  sub_1CAD4EAA4();
  sub_1CAD4EAA4();
  sub_1CAD4EAA4();
  sub_1CAD4EAA4();
  sub_1CAD4EAA4();
  sub_1CAD4EAA4();
  sub_1CAD4EAA4();
  sub_1CAD4EAA4();
  return sub_1CAD4EAA4();
}

uint64_t EventSourceConstraintsModelObject.hashValue.getter()
{
  sub_1CAD4EA84();
  EventSourceConstraintsModelObject.hash(into:)();
  return sub_1CAD4EAC4();
}

unint64_t sub_1CABDCDE0(char a1)
{
  result = 0xD000000000000010;
  switch(a1)
  {
    case 1:
    case 2:
      result = 0xD00000000000002CLL;
      break;
    case 3:
      result = 0xD000000000000022;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
      result = 0xD000000000000019;
      break;
    case 6:
      result = 0xD000000000000016;
      break;
    case 7:
      result = 0xD00000000000002ALL;
      break;
    case 9:
    case 14:
      result = 0xD000000000000018;
      break;
    case 10:
      result = 0xD000000000000028;
      break;
    case 11:
      result = 0xD000000000000029;
      break;
    case 12:
      result = 0xD000000000000021;
      break;
    case 13:
    case 16:
      result = 0xD000000000000012;
      break;
    case 15:
      result = 0xD00000000000001BLL;
      break;
    case 17:
      result = 0xD000000000000013;
      break;
    case 18:
      result = 0xD00000000000001CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1CABDD03C()
{
  sub_1CAD4EA84();
  EventSourceConstraintsModelObject.hash(into:)();
  return sub_1CAD4EAC4();
}

uint64_t sub_1CABDD080()
{
  sub_1CAD4EA84();
  EventSourceConstraintsModelObject.hash(into:)();
  return sub_1CAD4EAC4();
}

uint64_t sub_1CABDD0C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CABDE624(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CABDD0FC(uint64_t a1)
{
  v2 = sub_1CABDE260();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CABDD138(uint64_t a1)
{
  v2 = sub_1CABDE260();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EventSourceConstraintsModelObject.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463DD0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v29 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CABDE260();
  sub_1CAD4EAE4();
  if (!v2)
  {
    v46 = 0;
    v9 = sub_1CAD4E864();
    if (v10)
    {
      if (qword_1EC462EF8 != -1)
      {
        swift_once();
      }

      v11 = xmmword_1EC463DB0;
    }

    else
    {
      v11 = v9;
    }

    v46 = 1;
    v12 = sub_1CAD4E834();
    if (v12 == 2)
    {
      if (qword_1EC462EF8 != -1)
      {
        swift_once();
      }

      v13 = BYTE8(xmmword_1EC463DB0);
    }

    else
    {
      v13 = v12;
    }

    v46 = 2;
    v14 = sub_1CAD4E834();
    if (v14 == 2)
    {
      if (qword_1EC462EF8 != -1)
      {
        swift_once();
      }

      v45 = BYTE9(xmmword_1EC463DB0);
    }

    else
    {
      v45 = v14;
    }

    v46 = 3;
    v15 = sub_1CAD4E834();
    if (v15 == 2)
    {
      if (qword_1EC462EF8 != -1)
      {
        swift_once();
      }

      v44 = BYTE10(xmmword_1EC463DB0);
    }

    else
    {
      v44 = v15;
    }

    v46 = 4;
    v16 = sub_1CAD4E834();
    if (v16 == 2)
    {
      if (qword_1EC462EF8 != -1)
      {
        swift_once();
      }

      v43 = BYTE11(xmmword_1EC463DB0);
    }

    else
    {
      v43 = v16;
    }

    v46 = 5;
    v17 = sub_1CAD4E834();
    if (v17 == 2)
    {
      if (qword_1EC462EF8 != -1)
      {
        swift_once();
      }

      v42 = BYTE12(xmmword_1EC463DB0);
    }

    else
    {
      v42 = v17;
    }

    v46 = 6;
    v18 = sub_1CAD4E834();
    if (v18 == 2)
    {
      if (qword_1EC462EF8 != -1)
      {
        swift_once();
      }

      v41 = BYTE13(xmmword_1EC463DB0);
    }

    else
    {
      v41 = v18;
    }

    v46 = 7;
    v19 = sub_1CAD4E834();
    if (v19 == 2)
    {
      if (qword_1EC462EF8 != -1)
      {
        swift_once();
      }

      v40 = BYTE14(xmmword_1EC463DB0);
    }

    else
    {
      v40 = v19;
    }

    v46 = 8;
    v38 = sub_1CAD4E834();
    if (v38 == 2)
    {
      if (qword_1EC462EF8 != -1)
      {
        swift_once();
      }

      v38 = HIBYTE(xmmword_1EC463DB0);
    }

    v46 = 9;
    v39 = sub_1CAD4E834();
    if (v39 == 2)
    {
      if (qword_1EC462EF8 != -1)
      {
        swift_once();
      }

      v39 = dword_1EC463DC0;
    }

    v46 = 10;
    v37 = sub_1CAD4E834();
    if (v37 == 2)
    {
      if (qword_1EC462EF8 != -1)
      {
        swift_once();
      }

      v37 = BYTE1(dword_1EC463DC0);
    }

    v46 = 11;
    v36 = sub_1CAD4E834();
    if (v36 == 2)
    {
      if (qword_1EC462EF8 != -1)
      {
        swift_once();
      }

      v36 = BYTE2(dword_1EC463DC0);
    }

    v46 = 12;
    v35 = sub_1CAD4E834();
    if (v35 == 2)
    {
      if (qword_1EC462EF8 != -1)
      {
        swift_once();
      }

      v35 = HIBYTE(dword_1EC463DC0);
    }

    v46 = 13;
    v34 = sub_1CAD4E834();
    if (v34 == 2)
    {
      if (qword_1EC462EF8 != -1)
      {
        swift_once();
      }

      v34 = dword_1EC463DC4;
    }

    v46 = 14;
    v33 = sub_1CAD4E834();
    if (v33 == 2)
    {
      if (qword_1EC462EF8 != -1)
      {
        swift_once();
      }

      v33 = BYTE1(dword_1EC463DC4);
    }

    v46 = 15;
    v32 = sub_1CAD4E834();
    if (v32 == 2)
    {
      if (qword_1EC462EF8 != -1)
      {
        swift_once();
      }

      v32 = BYTE2(dword_1EC463DC4);
    }

    v46 = 16;
    v31 = sub_1CAD4E834();
    if (v31 == 2)
    {
      if (qword_1EC462EF8 != -1)
      {
        swift_once();
      }

      v31 = HIBYTE(dword_1EC463DC4);
    }

    v46 = 17;
    v30 = sub_1CAD4E834();
    if (v30 == 2)
    {
      if (qword_1EC462EF8 != -1)
      {
        swift_once();
      }

      v30 = word_1EC463DC8;
    }

    v46 = 18;
    v21 = sub_1CAD4E834();
    v29 = v13 & 1;
    v45 &= 1u;
    v43 &= 1u;
    v44 &= 1u;
    v41 &= 1u;
    v42 &= 1u;
    v39 &= 1u;
    v40 &= 1u;
    v37 &= 1u;
    v38 &= 1u;
    v35 &= 1u;
    v36 &= 1u;
    v33 &= 1u;
    v34 &= 1u;
    v31 &= 1u;
    v32 &= 1u;
    v22 = v30 & 1;
    if (v21 == 2)
    {
      if (qword_1EC462EF8 != -1)
      {
        swift_once();
      }

      v21 = HIBYTE(word_1EC463DC8);
    }

    (*(v6 + 8))(v8, v5);
    *a2 = v11;
    *(a2 + 8) = v29;
    *(a2 + 9) = v45;
    v23 = v43;
    *(a2 + 10) = v44;
    *(a2 + 11) = v23;
    v24 = v41;
    *(a2 + 12) = v42;
    *(a2 + 13) = v24;
    *(a2 + 14) = v40;
    v25 = v39;
    *(a2 + 15) = v38;
    *(a2 + 16) = v25;
    v26 = v36;
    *(a2 + 17) = v37;
    *(a2 + 18) = v26;
    v27 = v34;
    *(a2 + 19) = v35;
    *(a2 + 20) = v27;
    v28 = v32;
    *(a2 + 21) = v33;
    *(a2 + 22) = v28;
    *(a2 + 23) = v31;
    *(a2 + 24) = v22;
    *(a2 + 25) = v21 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t EventSourceConstraintsModelObject.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463DE0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v22 - v5;
  LODWORD(v24) = v1[8];
  v7 = v1[9];
  v26 = v1[10];
  v22[13] = v1[11];
  LODWORD(v23) = v7;
  v8 = v1[12];
  v22[11] = v1[13];
  v22[12] = v8;
  v9 = v1[14];
  v22[9] = v1[15];
  v22[10] = v9;
  v10 = v1[16];
  LODWORD(v5) = v1[18];
  v22[5] = v1[17];
  v22[6] = v5;
  v22[7] = v1[19];
  v22[8] = v10;
  v11 = v1[20];
  v22[3] = v1[21];
  v22[4] = v11;
  v12 = v1[22];
  v22[1] = v1[23];
  v22[2] = v12;
  v13 = v1[25];
  v14 = a1[3];
  v15 = a1;
  v17 = v16;
  __swift_project_boxed_opaque_existential_1(v15, v14);
  sub_1CABDE260();
  sub_1CAD4EB04();
  v27 = 0;
  v18 = v25;
  sub_1CAD4E974();
  if (v18)
  {
    return (*(v4 + 8))(v6, v17);
  }

  LODWORD(v25) = v13;
  v27 = 1;
  sub_1CAD4E944();
  v27 = 2;
  sub_1CAD4E944();
  v27 = 3;
  sub_1CAD4E944();
  v27 = 4;
  sub_1CAD4E944();
  v27 = 5;
  sub_1CAD4E944();
  v27 = 6;
  sub_1CAD4E944();
  v27 = 7;
  sub_1CAD4E944();
  v27 = 8;
  sub_1CAD4E944();
  v27 = 9;
  v23 = v6;
  v24 = v17;
  sub_1CAD4E944();
  v27 = 10;
  sub_1CAD4E944();
  v27 = 11;
  sub_1CAD4E944();
  v27 = 12;
  sub_1CAD4E944();
  v27 = 13;
  sub_1CAD4E944();
  v27 = 14;
  sub_1CAD4E944();
  v27 = 15;
  sub_1CAD4E944();
  v27 = 16;
  sub_1CAD4E944();
  v27 = 17;
  sub_1CAD4E944();
  v27 = 18;
  v21 = v23;
  v20 = v24;
  sub_1CAD4E944();
  return (*(v4 + 8))(v21, v20);
}

unint64_t sub_1CABDE260()
{
  result = qword_1EC463DD8;
  if (!qword_1EC463DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC463DD8);
  }

  return result;
}

unint64_t sub_1CABDE2B8()
{
  result = qword_1EC463DE8;
  if (!qword_1EC463DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC463DE8);
  }

  return result;
}

__n128 __swift_memcpy26_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_1CABDE320(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 26))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1CABDE374(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EventSourceConstraintsModelObject.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
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

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EventSourceConstraintsModelObject.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1CABDE520()
{
  result = qword_1EC463DF0;
  if (!qword_1EC463DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC463DF0);
  }

  return result;
}

unint64_t sub_1CABDE578()
{
  result = qword_1EC463DF8;
  if (!qword_1EC463DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC463DF8);
  }

  return result;
}

unint64_t sub_1CABDE5D0()
{
  result = qword_1EC463E00;
  if (!qword_1EC463E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC463E00);
  }

  return result;
}

uint64_t sub_1CABDE624(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001CAD747F0 == a2 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000002CLL && 0x80000001CAD74810 == a2 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000002CLL && 0x80000001CAD74840 == a2 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000022 && 0x80000001CAD74870 == a2 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001CAD748A0 == a2 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001CAD748C0 == a2 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001CAD748E0 == a2 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000002ALL && 0x80000001CAD74900 == a2 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001CAD74930 == a2 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001CAD74950 == a2 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000028 && 0x80000001CAD74970 == a2 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000029 && 0x80000001CAD749A0 == a2 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000021 && 0x80000001CAD749D0 == a2 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001CAD74A00 == a2 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001CAD74A20 == a2 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001CAD74A40 == a2 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001CAD74A60 == a2 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001CAD74A80 == a2 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001CAD74AA0 == a2)
  {

    return 18;
  }

  else
  {
    v5 = sub_1CAD4E9E4();

    if (v5)
    {
      return 18;
    }

    else
    {
      return 19;
    }
  }
}

id EKLocationModelWrapper.geoLocation.getter()
{
  v1 = [*v0 geoLocation];

  return v1;
}

uint64_t sub_1CABDECA8(SEL *a1)
{
  v2 = [*v1 *a1];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_1CAD4DF94();

  return v4;
}

uint64_t EKLocationModelWrapper.mapKitHandle.getter()
{
  v1 = [*v0 mapKitHandle];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1CAD4C024();

  return v3;
}

id EKLocationModelWrapper.predictedLOI.getter@<X0>(void *a1@<X8>)
{
  result = [*v1 predictedLOI];
  *a1 = result;
  return result;
}

id sub_1CABDEDE8()
{
  v1 = [*v0 geoLocation];

  return v1;
}

uint64_t sub_1CABDEE48()
{
  v1 = [*v0 mapKitHandle];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1CAD4C024();

  return v3;
}

id sub_1CABDEED4@<X0>(void *a1@<X8>)
{
  result = [*v1 predictedLOI];
  *a1 = result;
  return result;
}

uint64_t sub_1CABDEF1C()
{

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EventEditView()
{
  result = qword_1EC463E18;
  if (!qword_1EC463E18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CABDF020()
{
  sub_1CABDF1DC(319, &qword_1EC463E28, type metadata accessor for EventEditViewModel, MEMORY[0x1E6981A98]);
  if (v0 <= 0x3F)
  {
    sub_1CABDF134();
    if (v1 <= 0x3F)
    {
      sub_1CABDF18C();
      if (v2 <= 0x3F)
      {
        sub_1CABDF1DC(319, &qword_1EC462230, MEMORY[0x1E697DBC8], MEMORY[0x1E697DCC8]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1CABDF134()
{
  if (!qword_1EC463E30)
  {
    v0 = sub_1CAD4C664();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC463E30);
    }
  }
}

void sub_1CABDF18C()
{
  if (!qword_1EC463E38)
  {
    v0 = sub_1CAD4C594();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC463E38);
    }
  }
}

void sub_1CABDF1DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1CABDF25C@<X0>(uint64_t a1@<X8>)
{
  sub_1CABDF388(v1, a1);
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463E08);
  sub_1CAD4DBF4();
  swift_getKeyPath();
  sub_1CABEDD34(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  v4 = OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__eventDataSource;
  swift_beginAccess();
  v5 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463E40) + 36));
  sub_1CAB299C0(v7 + v4, (v5 + 1));

  *v5 = KeyPath;
  return result;
}

uint64_t sub_1CABDF388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v56 = type metadata accessor for EventModelObject();
  MEMORY[0x1EEE9AC00](v56);
  v55 = v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1CAD4D094();
  v51 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v50 = v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for EventEditView();
  v49 = *(v5 - 8);
  v48 = *(v49 + 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v47 = v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463E50);
  v7 = *(v46 - 1);
  MEMORY[0x1EEE9AC00](v46);
  v9 = v45 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463E58);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = v45 - v12;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463E60);
  MEMORY[0x1EEE9AC00](v58);
  v15 = v45 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463E68);
  v17 = *(v16 - 8);
  v53 = v16;
  v54 = v17;
  MEMORY[0x1EEE9AC00](v16);
  v59 = v45 - v18;
  v60 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463E70);
  sub_1CAB23B0C(&qword_1EC463E78, &qword_1EC463E70);
  sub_1CAD4D374();
  v19 = sub_1CAD4D1E4();
  v45[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463E08);
  sub_1CAD4DBF4();
  v20 = v63;
  swift_getKeyPath();
  v63 = v20;
  v45[0] = sub_1CABEDD34(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  sub_1CAD4C5F4();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  (*(v7 + 32))(v13, v9, v46);
  v29 = &v13[*(v11 + 44)];
  *v29 = v19;
  *(v29 + 1) = v22;
  *(v29 + 2) = v24;
  *(v29 + 3) = v26;
  *(v29 + 4) = v28;
  v29[40] = 0;
  v46 = type metadata accessor for EventEditView;
  v30 = a1;
  v31 = v47;
  sub_1CABEC824(a1, v47, type metadata accessor for EventEditView);
  v32 = (*(v49 + 80) + 16) & ~*(v49 + 80);
  v33 = swift_allocObject();
  v49 = type metadata accessor for EventEditView;
  sub_1CABEDD7C(v31, v33 + v32, type metadata accessor for EventEditView);
  sub_1CABA62E4(v13, v15, &qword_1EC463E58);
  v34 = &v15[*(v58 + 36)];
  *v34 = sub_1CABEC6C8;
  v34[1] = v33;
  v34[2] = 0;
  v34[3] = 0;
  v35 = v50;
  sub_1CAD4D084();
  v36 = sub_1CABEC6E0();
  sub_1CAD4D674();
  (*(v51 + 8))(v35, v52);
  sub_1CAB21B68(v15, &qword_1EC463E60);
  v37 = v30;
  sub_1CAD4DBF4();
  v38 = v63;
  swift_getKeyPath();
  v63 = v38;
  sub_1CAD4C424();

  v39 = OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__eventModelObject;
  swift_beginAccess();
  v40 = v55;
  sub_1CABEC824(v38 + v39, v55, type metadata accessor for EventModelObject);

  sub_1CABEC824(v37, v31, v46);
  v41 = swift_allocObject();
  sub_1CABEDD7C(v31, v41 + v32, v49);
  v61 = v58;
  v62 = v36;
  swift_getOpaqueTypeConformance2();
  sub_1CABEDD34(&qword_1EC463EA0, type metadata accessor for EventModelObject);
  v42 = v53;
  v43 = v59;
  sub_1CAD4D754();

  sub_1CABED504(v40, type metadata accessor for EventModelObject);
  return (*(v54 + 8))(v43, v42);
}

void sub_1CABDFB64()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463E08);
  sub_1CAD4DBF4();
  swift_getKeyPath();
  sub_1CABEDD34(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  v0 = *(v2 + 16);

  v1 = [v0 isSaved];

  if ((v1 & 1) == 0)
  {
    type metadata accessor for EventEditView();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463EA8);
    sub_1CAD4C614();
  }
}

uint64_t sub_1CABDFCA8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463E08);
  sub_1CAD4DBF4();
  swift_getKeyPath();
  sub_1CABEDD34(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  v0 = *(v2 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__isEditing);

  if (v0 == 1)
  {
    sub_1CAD4DBF4();
    sub_1CACF6C0C(0);
  }

  return result;
}

uint64_t sub_1CABDFDB4(uint64_t a1)
{
  sub_1CAB299C0(a1, v3);
  sub_1CAB299C0(v3, &v2);
  sub_1CABEC66C();
  sub_1CAD4CC24();
  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t sub_1CABDFE14@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463E08);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v24 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v24 - v11;
  v13 = (v1 + *(type metadata accessor for EventEditView() + 20));
  v14 = *v13;
  v15 = *(v13 + 1);
  LOBYTE(v13) = v13[16];
  LOBYTE(v31) = v14;
  v32 = v15;
  LOBYTE(v33) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463EA8);
  sub_1CAD4C624();
  v29 = v36;
  v30 = v35;
  v28 = v37;
  sub_1CAD4DC04();
  swift_getKeyPath();
  sub_1CAD4DC24();

  v16 = *(v4 + 8);
  v16(v12, v3);
  v26 = v32;
  v27 = v31;
  v24 = v34;
  v25 = v33;
  sub_1CAD4DC04();
  swift_getKeyPath();
  sub_1CAD4DC24();

  v16(v10, v3);
  v17 = v35;
  v18 = v36;
  v19 = v37;
  sub_1CAD4DC04();
  swift_getKeyPath();
  type metadata accessor for TitleEditor(0);
  sub_1CAD4DC24();

  result = (v16)(v7, v3);
  v21 = v29;
  *a1 = v30;
  *(a1 + 8) = v21;
  *(a1 + 16) = v28;
  v22 = v26;
  *(a1 + 24) = v27;
  *(a1 + 32) = v22;
  v23 = v24;
  *(a1 + 40) = v25;
  *(a1 + 48) = v23;
  *(a1 + 56) = v17;
  *(a1 + 64) = v18;
  *(a1 + 72) = v19;
  return result;
}

uint64_t sub_1CABE00B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CABEDD34(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  v4 = *(v3 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____title + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____title);
  a2[1] = v4;
}

uint64_t sub_1CABE016C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464130);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - v5;
  *v6 = sub_1CAD4CC94();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464138);
  sub_1CABE03B0(v2, &v6[*(v7 + 44)]);
  v15 = sub_1CAD4D854();
  v8 = sub_1CAD4DAA4();
  *&v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464140) + 36)] = v8;
  v9 = &v6[*(v4 + 36)];
  *v9 = xmmword_1CAD5B680;
  *(v9 + 1) = xmmword_1CAD5B690;
  v9[32] = 0;
  sub_1CAD4C704();
  sub_1CABED6E8();
  sub_1CAD4D5E4();
  sub_1CAB21B68(v6, &qword_1EC464130);
  v10 = sub_1CAD4DCC4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463E08);
  sub_1CAD4DBF4();
  v11 = v15;
  swift_getKeyPath();
  v15 = v11;
  sub_1CABEDD34(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  LOBYTE(v4) = *(v11 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__isEditing);

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464108);
  v13 = a1 + *(result + 36);
  *v13 = v10;
  *(v13 + 8) = v4;
  return result;
}

uint64_t sub_1CABE03B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464188);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v55 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v49 - v6;
  v8 = type metadata accessor for EventModelObject();
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1CAD4C974();
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464190);
  MEMORY[0x1EEE9AC00](v50);
  v17 = &v49 - v16;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464198);
  v18 = MEMORY[0x1EEE9AC00](v51);
  v52 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v49 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v49 - v23;
  v25 = *(v13 + 28);
  v26 = *MEMORY[0x1E697F470];
  v27 = sub_1CAD4CD24();
  (*(*(v27 - 8) + 104))(&v15[v25], v26, v27);
  __asm { FMOV            V0.2D, #2.5 }

  *v15 = _Q0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463E08);
  v53 = a1;
  sub_1CAD4DBF4();
  v33 = v56;
  swift_getKeyPath();
  *&v56 = v33;
  sub_1CABEDD34(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  v34 = OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__eventModelObject;
  swift_beginAccess();
  sub_1CABEC824(v33 + v34, v11, type metadata accessor for EventModelObject);
  v35 = &v11[*(v9 + 112)];
  v36 = type metadata accessor for EventCalendarModelObject();
  if ((*(*(v36 - 8) + 48))(v35, 1, v36) || (v38 = v35[88], v38 == 255))
  {

    sub_1CABED504(v11, type metadata accessor for EventModelObject);
    v37 = sub_1CAD4D844();
  }

  else
  {
    v49 = *(v35 + 4);
    v39 = *(v35 + 10);
    sub_1CABED504(v11, type metadata accessor for EventModelObject);
    v56 = v49;
    *&v57 = v39;
    BYTE8(v57) = v38 & 1;
    v37 = CalendarColor.displayColor.getter();
  }

  sub_1CABEDD7C(v15, v17, MEMORY[0x1E697EAE8]);
  v40 = v50;
  *&v17[*(v50 + 52)] = v37;
  *&v17[*(v40 + 56)] = 256;
  sub_1CAD4DC94();
  sub_1CAD4C744();
  sub_1CABA62E4(v17, v22, &qword_1EC464190);
  v41 = &v22[*(v51 + 36)];
  v42 = v57;
  *v41 = v56;
  *(v41 + 1) = v42;
  *(v41 + 2) = v58;
  sub_1CABA62E4(v22, v24, &qword_1EC464198);
  *v7 = sub_1CAD4CDA4();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4641A0);
  sub_1CABE0998(v53, &v7[*(v43 + 44)]);
  v44 = v52;
  sub_1CAB23A9C(v24, v52, &qword_1EC464198);
  v45 = v55;
  sub_1CAB23A9C(v7, v55, &qword_1EC464188);
  v46 = v54;
  sub_1CAB23A9C(v44, v54, &qword_1EC464198);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4641A8);
  sub_1CAB23A9C(v45, v46 + *(v47 + 48), &qword_1EC464188);
  sub_1CAB21B68(v7, &qword_1EC464188);
  sub_1CAB21B68(v24, &qword_1EC464198);
  sub_1CAB21B68(v45, &qword_1EC464188);
  return sub_1CAB21B68(v44, &qword_1EC464198);
}

uint64_t sub_1CABE0998@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v353 = a2;
  v342 = type metadata accessor for DateTimeView();
  MEMORY[0x1EEE9AC00](v342);
  v344 = &v293 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v343 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4641B0);
  MEMORY[0x1EEE9AC00](v343);
  v376 = &v293 - v4;
  v345 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4641B8);
  MEMORY[0x1EEE9AC00](v345);
  v349 = &v293 - v5;
  v348 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4641C0);
  MEMORY[0x1EEE9AC00](v348);
  v350 = &v293 - v6;
  v346 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4641C8);
  v7 = MEMORY[0x1EEE9AC00](v346);
  v352 = &v293 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v347 = &v293 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v351 = &v293 - v11;
  v375 = sub_1CAD4C404();
  v377 = *(v375 - 8);
  MEMORY[0x1EEE9AC00](v375);
  v341 = &v293 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC463290);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v294 = &v293 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463170);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v354 = &v293 - v16;
  v335 = type metadata accessor for EventRecurrenceRuleModelObject(0);
  v374 = *(v335 - 8);
  MEMORY[0x1EEE9AC00](v335);
  v337 = &v293 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v325 = type metadata accessor for EventModelObject();
  v18 = MEMORY[0x1EEE9AC00](v325);
  v326 = &v293 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v324 = &v293 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v323 = &v293 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v322 = &v293 - v24;
  v329 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463168);
  MEMORY[0x1EEE9AC00](v329);
  v383 = &v293 - v25;
  v321 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463FA8);
  MEMORY[0x1EEE9AC00](v321);
  v320 = &v293 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4635D0);
  v28 = MEMORY[0x1EEE9AC00](v27 - 8);
  v336 = &v293 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v373 = &v293 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v318 = &v293 - v32;
  v382 = sub_1CAD4C0F4();
  v371 = *(v382 - 8);
  v33 = MEMORY[0x1EEE9AC00](v382);
  v372 = &v293 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v317 = &v293 - v35;
  v380 = sub_1CAD4BC94();
  v368 = *(v380 - 8);
  v36 = MEMORY[0x1EEE9AC00](v380);
  v319 = &v293 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v315 = &v293 - v38;
  v366 = sub_1CAD4C374();
  v316 = *(v366 - 8);
  MEMORY[0x1EEE9AC00](v366);
  v314 = &v293 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v365 = sub_1CAD4BDC4();
  v313 = *(v365 - 8);
  MEMORY[0x1EEE9AC00](v365);
  v310 = &v293 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v311 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463678);
  v41 = MEMORY[0x1EEE9AC00](v311);
  v379 = &v293 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v378 = &v293 - v43;
  v364 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4635E8);
  MEMORY[0x1EEE9AC00](v364);
  v385 = &v293 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463E08);
  v386 = *(v45 - 8);
  v46 = MEMORY[0x1EEE9AC00](v45);
  v312 = &v293 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x1EEE9AC00](v46);
  Strong = &v293 - v49;
  v50 = MEMORY[0x1EEE9AC00](v48);
  v357 = &v293 - v51;
  v52 = MEMORY[0x1EEE9AC00](v50);
  v360 = &v293 - v53;
  v54 = MEMORY[0x1EEE9AC00](v52);
  v370 = &v293 - v55;
  MEMORY[0x1EEE9AC00](v54);
  v369 = &v293 - v56;
  v362 = type metadata accessor for EventEditView();
  v363 = *(v362 - 1);
  MEMORY[0x1EEE9AC00](v362);
  v381 = v57;
  v361 = &v293 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for TitleEditor(0);
  MEMORY[0x1EEE9AC00](v58 - 8);
  v60 = &v293 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4641D0);
  v62 = v61 - 8;
  MEMORY[0x1EEE9AC00](v61);
  v333 = &v293 - v63;
  v334 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4641D8);
  MEMORY[0x1EEE9AC00](v334);
  v305 = (&v293 - v64);
  v367 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4641E0);
  MEMORY[0x1EEE9AC00](v367);
  v306 = &v293 - v65;
  v355 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4641E8);
  v308 = *(v355 - 1);
  MEMORY[0x1EEE9AC00](v355);
  v307 = &v293 - v66;
  v359 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4641F0);
  v356 = *(v359 - 8);
  MEMORY[0x1EEE9AC00](v359);
  v309 = &v293 - v67;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4641F8);
  v339 = *(v68 - 8);
  v340 = v68;
  v69 = MEMORY[0x1EEE9AC00](v68);
  v338 = &v293 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v69);
  v384 = &v293 - v71;
  sub_1CABDFE14(v60);
  v72 = a1;
  sub_1CAD4DBF4();
  v73 = v390;
  swift_getKeyPath();
  *&v390 = v73;
  v74 = sub_1CABEDD34(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  LODWORD(a1) = *(v73 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__isEditing);
  v75 = v72;
  v76 = v333;

  if (a1)
  {
    v77 = 0x4028000000000000;
  }

  else
  {
    v77 = 0;
  }

  v78 = sub_1CAD4D1D4();
  sub_1CABEDD7C(v60, v76, type metadata accessor for TitleEditor);
  v79 = v76 + *(v62 + 44);
  *v79 = v78;
  *(v79 + 8) = v77;
  *(v79 + 16) = xmmword_1CAD5B6A0;
  *(v79 + 32) = 0x4020000000000000;
  *(v79 + 40) = 0;
  v388 = v45;
  sub_1CAD4DBF4();
  v80 = v390;
  swift_getKeyPath();
  *&v390 = v80;
  v387 = v74;
  sub_1CAD4C424();

  v81 = *(v80 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__isEditing);

  if (v81 == 1)
  {
    v82 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
    v83 = sub_1CAD4D7D4();
  }

  else
  {
    v83 = sub_1CAD4D854();
  }

  *&v390 = v83;
  v84 = sub_1CAD4C754();
  v85 = sub_1CAD4D1D4();
  v86 = v305;
  sub_1CABA62E4(v76, v305, &qword_1EC4641D0);
  v87 = v86 + *(v334 + 36);
  *v87 = v84;
  v87[8] = v85;
  v88 = v306;
  v89 = &v306[*(v367 + 36)];
  v334 = sub_1CAD4C974();
  v90 = *(v334 + 20);
  v91 = *MEMORY[0x1E697F470];
  v92 = sub_1CAD4CD24();
  v93 = *(v92 - 8);
  v94 = *(v93 + 104);
  LODWORD(v333) = v91;
  v331 = v94;
  v332 = v92;
  v330 = v93 + 104;
  (v94)(&v89[v90], v91);
  __asm { FMOV            V0.2D, #16.0 }

  v328 = _Q0;
  *v89 = _Q0;
  v327 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463808);
  *&v89[*(v327 + 36)] = 256;
  sub_1CABA62E4(v86, v88, &qword_1EC4641D8);
  v100 = v75 + *(v362 + 5);
  v101 = *v100;
  v102 = *(v100 + 8);
  LOBYTE(v100) = *(v100 + 16);
  LOBYTE(v390) = v101;
  *(&v390 + 1) = v102;
  LOBYTE(v391) = v100;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463EA8);
  sub_1CAD4C604();
  LOBYTE(v390) = v408;
  v362 = type metadata accessor for EventEditView;
  v103 = v361;
  sub_1CABEC824(v75, v361, type metadata accessor for EventEditView);
  v363 = *(v363 + 80);
  v104 = (v363 + 16) & ~v363;
  v105 = swift_allocObject();
  v305 = type metadata accessor for EventEditView;
  sub_1CABEDD7C(v103, v105 + v104, type metadata accessor for EventEditView);
  v106 = sub_1CABED89C();
  v389 = v75;
  v107 = v106;
  v108 = v307;
  sub_1CAD4D754();

  sub_1CAB21B68(v88, &qword_1EC4641E0);
  v109 = v388;
  sub_1CAD4DBF4();
  v110 = v390;
  swift_getKeyPath();
  *&v390 = v110;
  sub_1CAD4C424();

  LOBYTE(v89) = *(v110 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__focusAndSelectTitle);

  LOBYTE(v408) = v89;
  sub_1CABEC824(v389, v103, v362);
  v111 = swift_allocObject();
  sub_1CABEDD7C(v103, v111 + v104, type metadata accessor for EventEditView);
  *&v390 = v367;
  *(&v390 + 1) = MEMORY[0x1E69E6370];
  *&v391 = v107;
  *(&v391 + 1) = MEMORY[0x1E69E6388];
  v367 = MEMORY[0x1E6981438];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v113 = v309;
  v114 = v355;
  v115 = OpaqueTypeConformance2;
  sub_1CAD4D754();

  (*(v308 + 8))(v108, v114);
  sub_1CAD4DBF4();
  v116 = v390;
  swift_getKeyPath();
  *&v390 = v116;
  sub_1CAD4C424();

  LOBYTE(v89) = *(v116 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__focusTitle);

  LOBYTE(v408) = v89;
  sub_1CABEC824(v389, v103, v362);
  v117 = swift_allocObject();
  sub_1CABEDD7C(v103, v117 + v104, v305);
  *&v390 = v114;
  *(&v390 + 1) = MEMORY[0x1E69E6370];
  *&v391 = v115;
  *(&v391 + 1) = MEMORY[0x1E69E6388];
  swift_getOpaqueTypeConformance2();
  v118 = v359;
  sub_1CAD4D754();

  (*(v356 + 8))(v113, v118);
  v119 = v369;
  sub_1CAD4DC04();
  swift_getKeyPath();
  sub_1CAD4DC24();

  v120 = v386 + 8;
  v121 = *(v386 + 8);
  v121(v119, v109);
  v122 = v370;
  sub_1CAD4DC04();
  swift_getKeyPath();
  sub_1CAD4DC24();

  v121(v122, v109);
  v361 = *(&v390 + 1);
  v362 = v390;
  LODWORD(v308) = v391;
  v123 = v360;
  sub_1CAD4DC04();
  swift_getKeyPath();
  sub_1CAD4DC24();

  v121(v123, v109);
  v360 = v405;
  v359 = v406;
  LODWORD(v307) = v407;
  v124 = v357;
  sub_1CAD4DC04();
  swift_getKeyPath();
  sub_1CAD4DC24();

  v121(v124, v109);
  v367 = v121;
  v386 = v120;
  v125 = Strong;
  sub_1CAD4DC04();
  swift_getKeyPath();
  sub_1CAD4DC24();

  v121(v125, v109);
  sub_1CAD4DBF4();
  v126 = v408;
  swift_getKeyPath();
  v408 = v126;
  sub_1CAD4C424();

  v127 = (v126 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__eventModelObject);
  swift_beginAccess();
  v128 = *v127;
  v305 = v127[1];
  v306 = v128;

  sub_1CAD4DBF4();
  v129 = v404;
  swift_getKeyPath();
  v404 = v129;
  sub_1CAD4C424();

  v304 = *(v129 + 16);

  sub_1CAD4DBF4();
  v130 = v404;
  swift_getKeyPath();
  v404 = v130;
  sub_1CAD4C424();

  Strong = swift_unknownObjectWeakLoadStrong();

  v309 = type metadata accessor for DateTimeViewModel(0);
  v131 = swift_allocObject();
  v381 = v131;
  swift_unknownObjectWeakInit();
  v303 = OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel_dateTimeComponents;
  v363 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464230);
  v132 = sub_1CAD4C354();
  v133 = *(v132 - 8);
  v134 = *(v133 + 72);
  v357 = *(v133 + 80);
  v135 = ((v357 + 32) & ~v357);
  v355 = v135;
  v136 = swift_allocObject();
  *(v136 + 16) = xmmword_1CAD5B6B0;
  v137 = v135 + v136;
  v299 = *MEMORY[0x1E6969A50];
  v138 = *(v133 + 104);
  v138(v137);
  v298 = *MEMORY[0x1E6969A68];
  v138(&v137[v134]);
  v356 = 2 * v134;
  v297 = *MEMORY[0x1E6969A78];
  v138(&v137[2 * v134]);
  v295 = 3 * v134;
  v296 = *MEMORY[0x1E6969A48];
  v138(&v137[3 * v134]);
  v302 = *MEMORY[0x1E6969A58];
  v138(&v137[4 * v134]);
  v301 = *MEMORY[0x1E6969A88];
  v138(&v137[5 * v134]);
  v300 = *MEMORY[0x1E6969A98];
  v138(&v137[6 * v134]);
  v139 = sub_1CAC926C8(v136);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v131 + v303) = v139;
  v303 = OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel_dateOnlyComponents;
  v140 = v355;
  v141 = swift_allocObject();
  *(v141 + 16) = xmmword_1CAD5B6C0;
  v142 = v140 + v141;
  (v138)(v142, v299, v132);
  (v138)(&v142[v134], v298, v132);
  (v138)(&v142[v356], v297, v132);
  (v138)(&v142[v295], v296, v132);
  v143 = sub_1CAC926C8(v141);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v144 = v381;
  *(v381 + v303) = v143;
  v303 = OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel_timeOnlyComponents;
  v145 = v355;
  v146 = swift_allocObject();
  *(v146 + 16) = xmmword_1CAD5A590;
  v147 = v145 + v146;
  (v138)(v147, v302, v132);
  (v138)(&v147[v134], v301, v132);
  (v138)(&v147[v356], v300, v132);
  v148 = sub_1CAC926C8(v146);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v144 + v303) = v148;
  v149 = *(v377 + 56);
  v150 = v375;
  v149(v144 + OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__editTimeZone, 1, 1, v375);
  v149(v144 + OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__editEndTimeZone, 1, 1, v150);
  sub_1CAD4C454();
  sub_1CAB23A9C(v385, v144 + OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__dateInterval, &qword_1EC4635E8);
  v151 = v144 + OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__dateIntervalImplicit;
  v152 = v361;
  *v151 = v362;
  *(v151 + 8) = v152;
  *(v151 + 16) = v308;
  v153 = v144 + OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__allDay;
  v154 = v144;
  v155 = v359;
  *v153 = v360;
  *(v153 + 8) = v155;
  *(v153 + 16) = v307;
  sub_1CAB23A9C(v378, v144 + OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__timeZone, &qword_1EC463678);
  sub_1CAB23A9C(v379, v144 + OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__endTimeZone, &qword_1EC463678);
  v156 = (v144 + OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel_eventID);
  v157 = v305;
  *v156 = v306;
  v156[1] = v157;
  v158 = v304;
  *(v154 + OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel_event) = v304;
  v159 = OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__delegate;

  swift_unknownObjectRetain();
  v355 = v158;

  sub_1CABEDD0C(v154 + v159);
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  v160 = v314;
  sub_1CAD4C324();
  v308 = OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel_dateTimeComponents;
  v161 = v315;
  MEMORY[0x1CCAA6D30](v364);
  v162 = v317;
  sub_1CAD4BC74();
  v163 = *(v368 + 8);
  v356 = v368 + 8;
  v357 = v163;
  v163(v161, v380);
  v164 = v310;
  sub_1CAD4C244();
  v165 = v371 + 8;
  v363 = *(v371 + 8);
  (v363)(v162, v382);
  v316 = *(v316 + 8);
  (v316)(v160, v366);
  v313 = *(v313 + 32);
  (v313)(v154 + OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__startDateComponents, v164, v365);
  sub_1CAD4C324();
  v308 = *(v154 + v308);
  MEMORY[0x1CCAA6D30](v364);
  sub_1CAD4BC44();
  (v357)(v161, v380);
  sub_1CAD4C244();
  v364 = v165;
  (v363)(v162, v382);
  (v316)(v160, v366);
  v166 = v388;
  (v313)(v154 + OBJC_IVAR____TtC13CalendarUIKit17DateTimeViewModel__endDateComponents, v164, v365);
  v167 = v318;
  v168 = v311;
  v169 = v378;
  MEMORY[0x1CCAA6D30](v311);
  sub_1CAC5DC58(v167);
  v170 = v168;
  v171 = v379;
  MEMORY[0x1CCAA6D30](v170);
  sub_1CAC5E1E4(v167);

  swift_unknownObjectRelease();
  sub_1CAB21B68(v171, &qword_1EC463678);
  sub_1CAB21B68(v169, &qword_1EC463678);
  sub_1CAB21B68(v385, &qword_1EC4635E8);
  v172 = v312;
  sub_1CAD4DC04();
  swift_getKeyPath();
  v173 = v320;
  sub_1CAD4DC24();

  (v367)(v172, v166);
  swift_getKeyPath();
  sub_1CAD4DAD4();

  sub_1CAB21B68(v173, &qword_1EC463FA8);
  sub_1CAD4DBF4();
  v174 = v390;
  swift_getKeyPath();
  *&v390 = v174;
  sub_1CAD4C424();

  v175 = OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____dateInterval;
  swift_beginAccess();
  v176 = v174 + v175;
  v177 = v319;
  v178 = v380;
  (*(v368 + 16))(v319, v176, v380);

  sub_1CAD4BC74();
  (v357)(v177, v178);
  sub_1CAD4DBF4();
  v179 = v390;
  swift_getKeyPath();
  *&v390 = v179;
  sub_1CAD4C424();

  v180 = OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__eventModelObject;
  swift_beginAccess();
  v181 = v179 + v180;
  v182 = v322;
  sub_1CABEC824(v181, v322, type metadata accessor for EventModelObject);

  v183 = v325;
  sub_1CAB23A9C(v182 + *(v325 + 44), v373, &qword_1EC4635D0);
  sub_1CABED504(v182, type metadata accessor for EventModelObject);
  sub_1CAD4DBF4();
  v184 = v390;
  swift_getKeyPath();
  *&v390 = v184;
  sub_1CAD4C424();

  v185 = OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__eventModelObject;
  swift_beginAccess();
  v186 = v323;
  sub_1CABEC824(v184 + v185, v323, type metadata accessor for EventModelObject);

  v187 = v186 + *(v183 + 104);
  v188 = type metadata accessor for EventCalendarModelObject();
  v189 = *(*(v188 - 8) + 48);
  v190 = v189(v187, 1, v188);
  v191 = 0;
  if (!v190)
  {
    v192 = *(v187 + 184);
    v193 = *(v187 + 216);
    v396 = *(v187 + 200);
    *v397 = v193;
    *&v397[10] = *(v187 + 226);
    v194 = *(v187 + 120);
    v195 = *(v187 + 152);
    v392 = *(v187 + 136);
    v393 = v195;
    v394 = *(v187 + 168);
    v395 = v192;
    v390 = *(v187 + 104);
    v391 = v194;
    if (sub_1CABED4EC(&v390) == 1 || *(v187 + 224) == 2)
    {
      v191 = 0;
    }

    else
    {
      v191 = *(v187 + 233);
    }
  }

  LODWORD(v380) = v191;
  sub_1CABED504(v186, type metadata accessor for EventModelObject);
  sub_1CAD4DBF4();
  v196 = v390;
  swift_getKeyPath();
  *&v390 = v196;
  sub_1CAD4C424();

  v197 = OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__eventModelObject;
  swift_beginAccess();
  v198 = v324;
  sub_1CABEC824(v196 + v197, v324, type metadata accessor for EventModelObject);

  v199 = v198 + *(v183 + 104);
  if (v189(v199, 1, v188))
  {
    LODWORD(v379) = 0;
  }

  else
  {
    v200 = *(v199 + 184);
    v201 = *(v199 + 216);
    v396 = *(v199 + 200);
    *v397 = v201;
    *&v397[10] = *(v199 + 226);
    v202 = *(v199 + 120);
    v203 = *(v199 + 152);
    v392 = *(v199 + 136);
    v393 = v203;
    v394 = *(v199 + 168);
    v395 = v200;
    v390 = *(v199 + 104);
    v391 = v202;
    if (sub_1CABED4EC(&v390) == 1 || *(v199 + 224) == 2)
    {
      LODWORD(v379) = 0;
    }

    else
    {
      LODWORD(v379) = *(v199 + 234);
    }
  }

  sub_1CABED504(v198, type metadata accessor for EventModelObject);
  sub_1CAD4DBF4();
  v204 = v390;
  swift_getKeyPath();
  *&v390 = v204;
  sub_1CAD4C424();

  v205 = OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__eventModelObject;
  swift_beginAccess();
  v206 = v326;
  sub_1CABEC824(v204 + v205, v326, type metadata accessor for EventModelObject);

  v207 = v206 + *(v183 + 104);
  if (v189(v207, 1, v188))
  {
    LODWORD(v368) = 0;
    v208 = v377;
    v209 = v335;
    v210 = v354;
  }

  else
  {
    v211 = *(v207 + 184);
    v212 = *(v207 + 216);
    v396 = *(v207 + 200);
    *v397 = v212;
    *&v397[10] = *(v207 + 226);
    v213 = *(v207 + 120);
    v214 = *(v207 + 152);
    v392 = *(v207 + 136);
    v393 = v214;
    v394 = *(v207 + 168);
    v395 = v211;
    v390 = *(v207 + 104);
    v391 = v213;
    v215 = sub_1CABED4EC(&v390);
    v208 = v377;
    v209 = v335;
    v210 = v354;
    if (v215 == 1 || *(v207 + 224) == 2)
    {
      LODWORD(v368) = 0;
    }

    else
    {
      LODWORD(v368) = *(v207 + 235);
    }
  }

  sub_1CABED504(v206, type metadata accessor for EventModelObject);
  v378 = type metadata accessor for RepeatViewModel();
  v216 = swift_allocObject();
  *(v216 + OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel__showCustom) = 0;
  sub_1CAD4C454();
  v385 = v216;
  sub_1CAB23A9C(v383, v216 + OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel__recurrenceRule, &qword_1EC463168);
  MEMORY[0x1CCAA6D30](v329);
  v217 = v374 + 48;
  v218 = *(v374 + 48);
  if (v218(v210, 1, v209) == 1)
  {
    v219 = type metadata accessor for EventRecurrenceEndModelObject(0);
    v220 = *(*(v219 - 8) + 56);
    v221 = v294;
    v220(v294, 1, 1, v219);
    v374 = v217;
    v222 = v337;
    v220(v337, 1, 1, v219);
    v223 = v209[7];
    v366 = v209[8];
    v224 = v222 + v223;
    v225 = v209[9];
    v226 = v209[10];
    v228 = v209[11];
    v227 = v209[12];
    v365 = v209[13];
    sub_1CABA63FC(v221, v222);
    *(v222 + v209[5]) = 0;
    *(v222 + v209[6]) = 1;
    *v224 = 0;
    *(v224 + 8) = 1;
    *(v222 + v366) = 0;
    *(v222 + v225) = 0;
    v229 = v354;
    *(v222 + v226) = 0;
    *(v222 + v228) = 0;
    v208 = v377;
    *(v222 + v227) = 0;
    *(v222 + v365) = 0;
    v230 = v218(v229, 1, v209);
    v231 = v375;
    v232 = v341;
    v233 = v336;
    v234 = v382;
    if (v230 != 1)
    {
      sub_1CAB21B68(v229, &qword_1EC463170);
    }
  }

  else
  {
    v222 = v337;
    sub_1CABEDD7C(v210, v337, type metadata accessor for EventRecurrenceRuleModelObject);
    v231 = v375;
    v232 = v341;
    v233 = v336;
    v234 = v382;
  }

  v235 = v385;
  sub_1CABEDD7C(v222, v385 + OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel__editRecurrenceRule, type metadata accessor for EventRecurrenceRuleModelObject);
  v236 = v372;
  (*(v371 + 16))(v235 + OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel_startDate, v372, v234);
  v237 = v373;
  sub_1CAB23A9C(v373, v233, &qword_1EC4635D0);
  v238 = *(v208 + 48);
  if (v238(v233, 1, v231) == 1)
  {
    sub_1CAD4C3F4();
    sub_1CAB21B68(v237, &qword_1EC4635D0);
    (v363)(v236, v234);
    sub_1CAB21B68(v383, &qword_1EC463168);
    if (v238(v233, 1, v231) != 1)
    {
      sub_1CAB21B68(v233, &qword_1EC4635D0);
    }
  }

  else
  {
    sub_1CAB21B68(v237, &qword_1EC4635D0);
    (v363)(v236, v234);
    sub_1CAB21B68(v383, &qword_1EC463168);
    (*(v208 + 32))(v232, v233, v231);
  }

  v239 = *(v208 + 32);
  v240 = v385;
  v239(v385 + OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel_timeZone, v232, v231);
  *(v240 + OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel_prohibitsMultipleDaysInMonthlyRecurrence) = v380;
  *(v240 + OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel_prohibitsMultipleMonthsInYearlyRecurrence) = v379;
  *(v240 + OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel_prohibitsYearlyRecurrenceInterval) = v368;

  v241 = v369;
  v242 = v388;
  sub_1CAD4DC04();
  swift_getKeyPath();
  sub_1CAD4DC24();

  v243 = v367;
  (v367)(v241, v242);
  v382 = *(&v390 + 1);
  v383 = v390;
  LODWORD(v380) = v391;
  v244 = v370;
  sub_1CAD4DC04();
  swift_getKeyPath();
  sub_1CAD4DC24();

  v243(v244, v242);
  v245 = v402;
  v386 = v401;
  v246 = v403;
  sub_1CAD4DBF4();
  v247 = sub_1CACF33F0();
  v249 = v248;

  KeyPath = swift_getKeyPath();
  v251 = v342;
  v252 = v344;
  *&v344[*(v342 + 44)] = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464238);
  swift_storeEnumTagMultiPayload();
  sub_1CABEDD34(&qword_1EC463620, type metadata accessor for DateTimeViewModel);
  sub_1CAD4DC14();
  sub_1CABEDD34(&qword_1EC463198, type metadata accessor for RepeatViewModel);
  sub_1CAD4DC14();
  v253 = v252 + v251[6];
  v254 = v382;
  *v253 = v383;
  *(v253 + 8) = v254;
  *(v253 + 16) = v380;
  v255 = v252 + v251[7];
  *v255 = v386;
  *(v255 + 8) = v245;
  *(v255 + 16) = v246;
  v256 = (v252 + v251[8]);
  *v256 = v247;
  v256[1] = v249;
  v257 = v251[9];
  *(v252 + v257) = sub_1CAD4C574();
  v258 = v252 + v251[10];
  v398 = 0;
  sub_1CAD4D984();
  v259 = v400;
  *v258 = v399;
  *(v258 + 8) = v259;
  sub_1CAD4DCA4();
  sub_1CAD4C9A4();
  v260 = v376;
  sub_1CABEDD7C(v252, v376, type metadata accessor for DateTimeView);
  v261 = (v260 + *(v343 + 36));
  v262 = v395;
  v261[4] = v394;
  v261[5] = v262;
  v261[6] = v396;
  v263 = v391;
  *v261 = v390;
  v261[1] = v263;
  v264 = v393;
  v261[2] = v392;
  v261[3] = v264;
  sub_1CAD4DBF4();
  v265 = v401;
  swift_getKeyPath();
  v401 = v265;
  sub_1CAD4C424();

  LODWORD(v252) = *(v265 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__isEditing);

  sub_1CAD4DBF4();
  v266 = v401;
  swift_getKeyPath();
  v401 = v266;
  sub_1CAD4C424();

  v267 = *(v266 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__isEditing);

  if (v252)
  {
    v268 = 0x4028000000000000;
  }

  else
  {
    v268 = 0;
  }

  if (v267)
  {
    v269 = 0x4028000000000000;
  }

  else
  {
    v269 = 0;
  }

  v270 = sub_1CAD4D1D4();
  v271 = v349;
  sub_1CABA62E4(v376, v349, &qword_1EC4641B0);
  v272 = v271 + *(v345 + 36);
  *v272 = v270;
  *(v272 + 8) = v268;
  *(v272 + 16) = 0x4020000000000000;
  *(v272 + 24) = v269;
  *(v272 + 32) = 0x4020000000000000;
  *(v272 + 40) = 0;
  sub_1CAD4DBF4();
  v273 = v401;
  swift_getKeyPath();
  v401 = v273;
  sub_1CAD4C424();

  v274 = *(v273 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__isEditing);

  if (v274)
  {
    v275 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
    v276 = sub_1CAD4D7D4();
  }

  else
  {
    v276 = sub_1CAD4D854();
  }

  v401 = v276;
  v277 = sub_1CAD4C754();
  v278 = sub_1CAD4D1D4();
  v279 = v350;
  sub_1CABA62E4(v271, v350, &qword_1EC4641B8);
  v280 = v347;
  v281 = v279 + *(v348 + 36);
  *v281 = v277;
  *(v281 + 8) = v278;
  v282 = (v280 + *(v346 + 36));
  v331(&v282[*(v334 + 20)], v333, v332);
  *v282 = v328;
  *&v282[*(v327 + 36)] = 256;
  sub_1CABA62E4(v279, v280, &qword_1EC4641C0);
  v283 = v351;
  sub_1CABA62E4(v280, v351, &qword_1EC4641C8);
  v285 = v338;
  v284 = v339;
  v286 = *(v339 + 16);
  v287 = v340;
  v286(v338, v384, v340);
  v288 = v352;
  sub_1CAB23A9C(v283, v352, &qword_1EC4641C8);
  v289 = v353;
  v286(v353, v285, v287);
  v290 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464240);
  sub_1CAB23A9C(v288, &v289[*(v290 + 48)], &qword_1EC4641C8);

  sub_1CAB21B68(v283, &qword_1EC4641C8);
  v291 = *(v284 + 8);
  v291(v384, v287);
  sub_1CAB21B68(v288, &qword_1EC4641C8);
  return (v291)(v285, v287);
}

uint64_t sub_1CABE39C4(uint64_t a1, _BYTE *a2)
{
  if (*a2 != 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463E08);
    sub_1CAD4DBF4();
    if ((*(v4 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel___allowTitleChangesToKickoffAutocomplete) & 1) == 0)
    {
      *(v4 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel___allowTitleChangesToKickoffAutocomplete) = 0;
    }

LABEL_5:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CABEDD34(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
    sub_1CAD4C414();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463E08);
  sub_1CAD4DBF4();
  if (*(v4 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel___allowTitleChangesToKickoffAutocomplete) != 1)
  {
    goto LABEL_5;
  }

  *(v4 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel___allowTitleChangesToKickoffAutocomplete) = 1;
}

uint64_t sub_1CABE3BE0(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467980);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15[-v6];
  LOBYTE(a2) = *a2;
  v8 = (a3 + *(type metadata accessor for EventEditView() + 20));
  v9 = *v8;
  v10 = *(v8 + 1);
  LOBYTE(v8) = v8[16];
  LOBYTE(v16) = v9;
  v17 = v10;
  v18 = v8;
  v15[7] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463EA8);
  sub_1CAD4C614();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463E08);
  sub_1CAD4DBF4();
  sub_1CAD4DBF4();
  v11 = v16;
  swift_getKeyPath();
  v16 = v11;
  sub_1CABEDD34(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  sub_1CAD4DBF4();
  v12 = v16;
  swift_getKeyPath();
  v16 = v12;
  sub_1CAD4C424();

  sub_1CAD4C7D4();
  v13 = sub_1CAD4C814();
  (*(*(v13 - 8) + 56))(v7, 0, 1, v13);
  sub_1CACF6710(v7);
}

uint64_t sub_1CABE3E68()
{
  type metadata accessor for EventEditView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463EA8);
  return sub_1CAD4C614();
}

uint64_t sub_1CABE3EE4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CABEDD34(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  v4 = OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____dateInterval;
  swift_beginAccess();
  v5 = sub_1CAD4BC94();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1CABE3FDC(uint64_t a1)
{
  v2 = sub_1CAD4BC94();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  sub_1CACF1DA4(v5);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1CABE40D0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CABEDD34(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  *a2 = *(v3 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____allDay);
  return result;
}

uint64_t sub_1CABE4180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v86 = a2;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4640B0);
  v3 = MEMORY[0x1EEE9AC00](v83);
  v85 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v82 = &v79 - v6;
  MEMORY[0x1EEE9AC00](v5);
  v84 = &v79 - v7;
  v8 = sub_1CAD4CD74();
  v91 = *(v8 - 8);
  v92 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for EventEditView();
  v87 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v88 = v12;
  v13 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463258);
  v89 = *(v14 - 8);
  v90 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v79 - v15;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4640B8);
  v17 = *(v93 - 8);
  v18 = MEMORY[0x1EEE9AC00](v93);
  v20 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v79 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4640C0);
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v81 = &v79 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v80 = &v79 - v26;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463E08);
  sub_1CAD4DBF4();
  v27 = v95;
  swift_getKeyPath();
  v95 = v27;
  v94 = sub_1CABEDD34(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  v28 = *(v27 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__isEditing);

  if (v28 == 1)
  {
    if (qword_1EC462DF8 != -1)
    {
      swift_once();
    }

    v95 = qword_1EC47DE28;
    v96 = unk_1EC47DE30;
    sub_1CABEC824(a1, v13, type metadata accessor for EventEditView);
    v29 = (*(v87 + 80) + 16) & ~*(v87 + 80);
    v30 = swift_allocObject();
    sub_1CABEDD7C(v13, v30 + v29, type metadata accessor for EventEditView);
    sub_1CABA6054();

    sub_1CAD4DA04();
    sub_1CAD4CD64();
    sub_1CAB23B0C(&qword_1EC463278, &qword_1EC463258);
    sub_1CABEDD34(&qword_1EC463280, MEMORY[0x1E697C548]);
    v31 = v90;
    v32 = v92;
    sub_1CAD4D4E4();
    (*(v91 + 8))(v10, v32);
    (*(v89 + 8))(v16, v31);
    v33 = &v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4640C8) + 36)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4640D0);
    sub_1CAD4C9C4();
    *v33 = swift_getKeyPath();
    v34 = &v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4640D8) + 36)];
    v35 = *MEMORY[0x1E697F470];
    v36 = sub_1CAD4CD24();
    (*(*(v36 - 8) + 104))(v34, v35, v36);
    *&v34[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4640E0) + 36)] = 256;
    v37 = sub_1CAD4D804();
    KeyPath = swift_getKeyPath();
    v39 = &v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4640E8) + 36)];
    *v39 = KeyPath;
    v39[1] = v37;
    v40 = v93;
    *&v22[*(v93 + 36)] = 257;
    v41 = v80;
    sub_1CABA62E4(v22, v80, &qword_1EC4640B8);
    v42 = 0;
  }

  else
  {
    v42 = 1;
    v41 = v80;
    v40 = v93;
  }

  (*(v17 + 56))(v41, v42, 1, v40);
  sub_1CAD4DBF4();
  v43 = v95;
  swift_getKeyPath();
  v95 = v43;
  sub_1CAD4C424();

  v44 = *(v43 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__allowsEditing);

  if (v44 == 1 && (sub_1CAD4DBF4(), v45 = sub_1CACFA7B4(), , (v45 & 1) != 0) && (sub_1CAD4DBF4(), v46 = v95, swift_getKeyPath(), v95 = v46, sub_1CAD4C424(), , v47 = *(v46 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__isEditing), , (v47 & 1) == 0))
  {
    if (qword_1EC462E00 != -1)
    {
      swift_once();
    }

    v48 = &qword_1EC47DE38;
  }

  else
  {
    if (qword_1EC462E08 != -1)
    {
      swift_once();
    }

    v48 = &qword_1EC47DE48;
  }

  v49 = *v48;

  v95 = v49;
  v96 = v50;
  sub_1CABEC824(a1, v13, type metadata accessor for EventEditView);
  v51 = (*(v87 + 80) + 16) & ~*(v87 + 80);
  v52 = swift_allocObject();
  sub_1CABEDD7C(v13, v52 + v51, type metadata accessor for EventEditView);
  sub_1CABA6054();
  sub_1CAD4DA04();
  sub_1CAD4CD64();
  sub_1CAB23B0C(&qword_1EC463278, &qword_1EC463258);
  sub_1CABEDD34(&qword_1EC463280, MEMORY[0x1E697C548]);
  v53 = v90;
  v54 = v92;
  sub_1CAD4D4E4();
  (*(v91 + 8))(v10, v54);
  (*(v89 + 8))(v16, v53);
  v55 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4640C8) + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4640D0);
  sub_1CAD4C9C4();
  *v55 = swift_getKeyPath();
  v56 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4640D8) + 36)];
  v57 = *MEMORY[0x1E697F470];
  v58 = sub_1CAD4CD24();
  (*(*(v58 - 8) + 104))(v56, v57, v58);
  *&v56[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4640E0) + 36)] = 256;
  v59 = sub_1CAD4D804();
  v60 = swift_getKeyPath();
  v61 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4640E8) + 36)];
  *v61 = v60;
  v61[1] = v59;
  *&v20[*(v93 + 36)] = 257;
  sub_1CAD4DBF4();
  v62 = v95;
  swift_getKeyPath();
  v95 = v62;
  sub_1CAD4C424();

  LODWORD(v60) = *(v62 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__isEditing);

  if (v60 == 1)
  {
    sub_1CAD4DBF4();
    v63 = v95;
    swift_getKeyPath();
    v95 = v63;
    sub_1CAD4C424();

    v64 = *(v63 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__shouldEnableDoneButton);

    v65 = v64 ^ 1;
  }

  else
  {
    v65 = 0;
  }

  v66 = swift_getKeyPath();
  v67 = swift_allocObject();
  *(v67 + 16) = v65 & 1;
  v68 = v82;
  sub_1CABA62E4(v20, v82, &qword_1EC4640B8);
  v69 = v84;
  v70 = (v68 + *(v83 + 36));
  *v70 = v66;
  v70[1] = sub_1CABEE0D0;
  v70[2] = v67;
  sub_1CABA62E4(v68, v69, &qword_1EC4640B0);
  v71 = v41;
  v72 = v41;
  v73 = v81;
  sub_1CAB23A9C(v71, v81, &qword_1EC4640C0);
  v74 = v85;
  sub_1CAB23A9C(v69, v85, &qword_1EC4640B0);
  v75 = v86;
  sub_1CAB23A9C(v73, v86, &qword_1EC4640C0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4640F0);
  v77 = v75 + *(v76 + 48);
  *v77 = 0;
  *(v77 + 8) = 1;
  sub_1CAB23A9C(v74, v75 + *(v76 + 64), &qword_1EC4640B0);
  sub_1CAB21B68(v69, &qword_1EC4640B0);
  sub_1CAB21B68(v72, &qword_1EC4640C0);
  sub_1CAB21B68(v74, &qword_1EC4640B0);
  return sub_1CAB21B68(v73, &qword_1EC4640C0);
}

uint64_t sub_1CABE4F10()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463E08);
  sub_1CAD4DBF4();
  swift_getKeyPath();
  sub_1CABEDD34(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong cancelTapped];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1CABE5000()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463E08);
  sub_1CAD4DBF4();
  swift_getKeyPath();
  sub_1CABEDD34(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  v0 = *(v7 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__allowsEditing);

  if (v0 == 1)
  {
    sub_1CAD4DBF4();
    swift_getKeyPath();
    sub_1CAD4C424();

    v1 = *(v7 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__isEditing);

    if (v1 == 1)
    {
      sub_1CAD4DBF4();
      swift_getKeyPath();
      sub_1CAD4C424();

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v3 = &selRef_doneTapped;
LABEL_9:
        [Strong *v3];
        swift_unknownObjectRelease();
      }
    }

    else
    {
      sub_1CAD4DBF4();
      swift_getKeyPath();
      sub_1CAD4C424();

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v3 = &selRef_editTapped;
        goto LABEL_9;
      }
    }

    sub_1CAD4DBF4();
    sub_1CAD4DBF4();
    swift_getKeyPath();
    sub_1CAD4C424();

    v5 = *(v7 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__isEditing);

    sub_1CACEE8C4((v5 & 1) == 0);
  }

  sub_1CAD4DBF4();
  swift_getKeyPath();
  sub_1CAD4C424();

  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    [v4 doneTapped];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1CABE532C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v215 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463EB0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v231 = &v204 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v233 = &v204 - v6;
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463EB8);
  v210 = *(v211 - 8);
  MEMORY[0x1EEE9AC00](v211);
  v208 = &v204 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463EC0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v230 = &v204 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v239 = &v204 - v11;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463EC8);
  v12 = MEMORY[0x1EEE9AC00](v209);
  v229 = &v204 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v238 = &v204 - v14;
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463ED0);
  v15 = MEMORY[0x1EEE9AC00](v219);
  v228 = &v204 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v237 = &v204 - v17;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463ED8);
  MEMORY[0x1EEE9AC00](v207);
  v206 = (&v204 - v18);
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463EE0);
  v218 = *(v236 - 8);
  MEMORY[0x1EEE9AC00](v236);
  v216 = &v204 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463EE8);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v227 = &v204 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v204 - v23;
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463EF0);
  v217 = *(v232 - 8);
  MEMORY[0x1EEE9AC00](v232);
  v205 = &v204 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463EF8);
  v27 = MEMORY[0x1EEE9AC00](v26 - 8);
  v226 = &v204 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v204 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463E08);
  v221 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v204 - v32;
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463F00);
  v224 = *(v225 - 8);
  v34 = MEMORY[0x1EEE9AC00](v225);
  v223 = &v204 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v204 - v36;
  v240 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463F08);
  sub_1CAB23B0C(&qword_1EC463F10, &qword_1EC463F08);
  v222 = v37;
  v38 = v31;
  sub_1CAD4DBC4();
  sub_1CAD4DBF4();
  v39 = v245;
  swift_getKeyPath();
  v245 = v39;
  v40 = sub_1CABEDD34(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  v41 = *(v39 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__isEditing);

  v220 = v40;
  if ((v41 & 1) != 0 || (sub_1CAD4DBF4(), v42 = v245, swift_getKeyPath(), v245 = v42, sub_1CAD4C424(), , v43 = *(v42 + 16), , LODWORD(v42) = [v43 allowsProposedTimeModifications], v43, !v42))
  {
    v214 = 0;
    v213 = 0;
    v212 = 0;
  }

  else
  {
    sub_1CAD4DC04();
    swift_getKeyPath();
    sub_1CAD4DC24();

    (*(v221 + 8))(v33, v31);
    v44 = v246;
    v212 = v247;
    v214 = v245;

    v213 = v44;
  }

  v45 = v232;
  sub_1CAD4DBF4();
  v46 = sub_1CAD3B144();

  v232 = a1;
  v221 = v38;
  v235 = v24;
  v234 = v30;
  if (v46)
  {
    if (qword_1EC462B18 != -1)
    {
      swift_once();
    }

    v245 = qword_1EC47D868;
    v246 = unk_1EC47D870;
    sub_1CABA6054();

    v47 = sub_1CAD4D444();
    v49 = v48;
    v51 = v50;
    sub_1CAD4D8B4();
    v52 = sub_1CAD4D3D4();
    v54 = v53;
    v56 = v55;

    sub_1CABA6128(v47, v49, v51 & 1);

    sub_1CAD4D254();
    v57 = sub_1CAD4D424();
    v59 = v58;
    v61 = v60;
    v63 = v62;

    sub_1CABA6128(v52, v54, v56 & 1);

    v245 = v57;
    v246 = v59;
    v247 = v61 & 1;
    v248 = v63;
    MEMORY[0x1EEE9AC00](v64);
    a1 = v232;
    v202 = v232;
    type metadata accessor for LocationView();
    sub_1CABEDD34(&qword_1EC463FA0, type metadata accessor for LocationView);
    v65 = v205;
    sub_1CAD4DBA4();
    v66 = (v65 + *(v45 + 36));
    v67 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463F28) + 28);
    v68 = sub_1CAD4D404();
    (*(*(v68 - 8) + 56))(v66 + v67, 1, 1, v68);
    *v66 = swift_getKeyPath();
    v30 = v234;
    sub_1CABA62E4(v65, v234, &qword_1EC463EF0);
    v69 = 0;
    v24 = v235;
  }

  else
  {
    v69 = 1;
  }

  v70 = 1;
  v217[7](v30, v69, 1, v45);
  sub_1CAD4DBF4();
  v71 = sub_1CAD3B2A8();

  v73 = v236;
  if (v71)
  {
    MEMORY[0x1EEE9AC00](v72);
    v202 = a1;
    v74 = sub_1CAD4CC94();
    v75 = v206;
    *v206 = v74;
    v75[1] = 0;
    *(v75 + 16) = 1;
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463F88);
    sub_1CABE8BEC(a1, v75 + *(v76 + 44));
    type metadata accessor for PersonEditor(0);
    sub_1CAB23B0C(&qword_1EC463F90, &qword_1EC463ED8);
    sub_1CABEDD34(&qword_1EC463F98, type metadata accessor for PersonEditor);
    v77 = v216;
    sub_1CAD4DBA4();
    v78 = (v77 + *(v73 + 36));
    v79 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463F28) + 28);
    v80 = sub_1CAD4D404();
    (*(*(v80 - 8) + 56))(v78 + v79, 1, 1, v80);
    *v78 = swift_getKeyPath();
    sub_1CABA62E4(v77, v24, &qword_1EC463EE0);
    v70 = 0;
  }

  (*(v218 + 56))(v24, v70, 1, v73);
  if (qword_1EC462B40 != -1)
  {
    swift_once();
  }

  v245 = qword_1EC47D8B8;
  v246 = unk_1EC47D8C0;
  v81 = sub_1CABA6054();

  v236 = v81;
  v82 = sub_1CAD4D444();
  v84 = v83;
  v86 = v85;
  sub_1CAD4D8B4();
  v87 = sub_1CAD4D3D4();
  v89 = v88;
  v91 = v90;

  sub_1CABA6128(v82, v84, v86 & 1);

  sub_1CAD4D254();
  v92 = sub_1CAD4D424();
  v94 = v93;
  v96 = v95;
  v98 = v97;

  sub_1CABA6128(v87, v89, v91 & 1);

  v245 = v92;
  v246 = v94;
  v247 = v96 & 1;
  v248 = v98;
  MEMORY[0x1EEE9AC00](v99);
  v202 = v232;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463F18);
  sub_1CAB23B0C(&qword_1EC463F20, &qword_1EC463F18);
  v100 = v237;
  sub_1CAD4DBA4();
  v101 = (v100 + *(v219 + 36));
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463F28);
  v102 = *(v219 + 28);
  v103 = sub_1CAD4D404();
  v104 = *(v103 - 8);
  v105 = *(v104 + 56);
  v218 = v103;
  v217 = v105;
  v216 = (v104 + 56);
  (v105)(v101 + v102, 1, 1);
  *v101 = swift_getKeyPath();
  if (qword_1EC462B38 != -1)
  {
    swift_once();
  }

  v245 = qword_1EC47D8A8;
  v246 = unk_1EC47D8B0;

  v106 = sub_1CAD4D444();
  v108 = v107;
  v110 = v109;
  sub_1CAD4D8B4();
  v111 = sub_1CAD4D3D4();
  v113 = v112;
  v115 = v114;

  sub_1CABA6128(v106, v108, v110 & 1);

  sub_1CAD4D254();
  v116 = sub_1CAD4D424();
  v118 = v117;
  v120 = v119;
  v122 = v121;

  sub_1CABA6128(v111, v113, v115 & 1);

  v245 = v116;
  v246 = v118;
  v247 = v120 & 1;
  v248 = v122;
  sub_1CAD4DBF4();
  v123 = v241;
  swift_getKeyPath();
  v241 = v123;
  sub_1CAD4C424();

  LODWORD(v106) = *(v123 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__isPrivate);

  if (v106 == 1)
  {
    v124 = v211;
    if (qword_1EC462DE8 != -1)
    {
      swift_once();
    }

    v241 = qword_1EC47DE08;
    v242 = unk_1EC47DE10;

    v125 = sub_1CAD4D444();
    v129 = v128 & 1;
  }

  else
  {
    v125 = 0;
    v126 = 0;
    v129 = 0;
    v127 = 0;
    v124 = v211;
  }

  v241 = v125;
  v242 = v126;
  v243 = v129;
  v244 = v127;
  MEMORY[0x1EEE9AC00](v125);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463F30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463F38);
  v202 = sub_1CAB23B0C(&qword_1EC463F40, &qword_1EC463F30);
  v203 = sub_1CABECE60();
  v130 = v238;
  sub_1CAD4DBB4();
  v131 = (v130 + *(v209 + 36));
  v132 = 1;
  (v217)(v131 + *(v219 + 28), 1, 1, v218);
  *v131 = swift_getKeyPath();
  sub_1CAD4DBF4();
  LOBYTE(v131) = sub_1CAD3B4D8();

  if (v131)
  {
    if (qword_1EC462B28 != -1)
    {
      swift_once();
    }

    v245 = qword_1EC47D888;
    v246 = unk_1EC47D890;

    v133 = sub_1CAD4D444();
    v135 = v134;
    v137 = v136;
    sub_1CAD4D8B4();
    v138 = sub_1CAD4D3D4();
    v140 = v139;
    v142 = v141;

    sub_1CABA6128(v133, v135, v137 & 1);

    sub_1CAD4D254();
    v143 = sub_1CAD4D424();
    v145 = v144;
    v147 = v146;
    v149 = v148;

    sub_1CABA6128(v138, v140, v142 & 1);

    v245 = v143;
    v246 = v145;
    v247 = v147 & 1;
    v248 = v149;
    MEMORY[0x1EEE9AC00](v150);
    v202 = v232;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463F78);
    sub_1CAB23B0C(&qword_1EC463F80, &qword_1EC463F78);
    v151 = v208;
    sub_1CAD4DBA4();
    v152 = (v151 + *(v124 + 36));
    (v217)(v152 + *(v219 + 28), 1, 1, v218);
    *v152 = swift_getKeyPath();
    sub_1CABA62E4(v151, v239, &qword_1EC463EB8);
    v132 = 0;
  }

  (*(v210 + 56))(v239, v132, 1, v124);
  sub_1CAD4DBF4();
  v153 = v245;
  swift_getKeyPath();
  v245 = v153;
  sub_1CAD4C424();

  if (*(v153 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__isEditing) != 1)
  {
    swift_getKeyPath();
    v245 = v153;
    sub_1CAD4C424();

    v154 = [*(v153 + 16) virtualConference];
    if (v154)
    {
      v155 = v154;
      v156 = [v154 conferenceDetails];

      if (v156)
      {

        goto LABEL_30;
      }
    }

    else
    {
    }

LABEL_36:
    v182 = 1;
    goto LABEL_37;
  }

LABEL_30:
  sub_1CAD4DBF4();
  v157 = v245;
  swift_getKeyPath();
  v245 = v157;
  sub_1CAD4C424();

  v158 = *(v157 + 16);

  v159 = [v158 virtualConference];

  if (!v159)
  {
    goto LABEL_36;
  }

  v160 = [v159 conferenceDetails];

  if (!v160)
  {
    goto LABEL_36;
  }

  v236 = sub_1CAD4DF94();
  v162 = v161;

  if (qword_1EC462B30 != -1)
  {
    swift_once();
  }

  v245 = qword_1EC47D898;
  v246 = unk_1EC47D8A0;

  v163 = sub_1CAD4D444();
  v165 = v164;
  v167 = v166;
  sub_1CAD4D8B4();
  v168 = sub_1CAD4D3D4();
  v170 = v169;
  v172 = v171;

  sub_1CABA6128(v163, v165, v167 & 1);

  sub_1CAD4D254();
  v173 = sub_1CAD4D424();
  v175 = v174;
  v177 = v176;
  v179 = v178;

  sub_1CABA6128(v168, v170, v172 & 1);

  v245 = v173;
  v246 = v175;
  v247 = v177 & 1;
  v248 = v179;
  MEMORY[0x1EEE9AC00](v180);
  v181 = v236;
  *(&v204 - 4) = v232;
  *(&v204 - 3) = v181;
  v202 = v162;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463F60);
  sub_1CABECF74();
  sub_1CAD4DBA4();

  v182 = 0;
LABEL_37:
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463F50);
  v184 = v233;
  (*(*(v183 - 8) + 56))(v233, v182, 1, v183);
  v185 = *(v224 + 16);
  v186 = v223;
  v187 = v225;
  v185(v223, v222, v225);
  v188 = v226;
  sub_1CAB23A9C(v234, v226, &qword_1EC463EF8);
  v189 = v227;
  sub_1CAB23A9C(v235, v227, &qword_1EC463EE8);
  v190 = v228;
  sub_1CAB23A9C(v237, v228, &qword_1EC463ED0);
  v191 = v229;
  sub_1CAB23A9C(v238, v229, &qword_1EC463EC8);
  sub_1CAB23A9C(v239, v230, &qword_1EC463EC0);
  sub_1CAB23A9C(v184, v231, &qword_1EC463EB0);
  v192 = v215;
  v185(v215, v186, v187);
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463F58);
  v194 = &v192[v193[12]];
  v195 = v214;
  v196 = v213;
  *v194 = v214;
  *(v194 + 1) = v196;
  v194[16] = v212;
  sub_1CAB23A9C(v188, &v192[v193[16]], &qword_1EC463EF8);
  sub_1CAB23A9C(v189, &v192[v193[20]], &qword_1EC463EE8);
  sub_1CAB23A9C(v190, &v192[v193[24]], &qword_1EC463ED0);
  sub_1CAB23A9C(v191, &v192[v193[28]], &qword_1EC463EC8);
  v197 = v230;
  sub_1CAB23A9C(v230, &v192[v193[32]], &qword_1EC463EC0);
  v198 = v231;
  sub_1CAB23A9C(v231, &v192[v193[36]], &qword_1EC463EB0);
  sub_1CABECEE4(v195, v196);
  sub_1CABECF24(v195, v196);
  sub_1CAB21B68(v233, &qword_1EC463EB0);
  sub_1CAB21B68(v239, &qword_1EC463EC0);
  sub_1CAB21B68(v238, &qword_1EC463EC8);
  sub_1CAB21B68(v237, &qword_1EC463ED0);
  sub_1CAB21B68(v235, &qword_1EC463EE8);
  sub_1CAB21B68(v234, &qword_1EC463EF8);
  v199 = *(v224 + 8);
  v200 = v225;
  v199(v222, v225);
  sub_1CAB21B68(v198, &qword_1EC463EB0);
  sub_1CAB21B68(v197, &qword_1EC463EC0);
  sub_1CAB21B68(v229, &qword_1EC463EC8);
  sub_1CAB21B68(v228, &qword_1EC463ED0);
  sub_1CAB21B68(v227, &qword_1EC463EE8);
  sub_1CAB21B68(v226, &qword_1EC463EF8);
  sub_1CABECF24(v195, v196);
  return (v199)(v223, v200);
}

uint64_t sub_1CABE7160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464068);
  v3 = MEMORY[0x1EEE9AC00](v38);
  v39 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v36 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464070);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464078);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v37 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v36 - v14;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463E08);
  sub_1CAD4DBF4();
  v16 = v41;
  swift_getKeyPath();
  v41 = v16;
  sub_1CABEDD34(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  v17 = *(v16 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__needsInlineEditButton);

  v18 = 1;
  if (v17 == 1)
  {
    *v10 = sub_1CAD4CC94();
    *(v10 + 1) = 0;
    v10[16] = 1;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4640A0);
    sub_1CABE4180(a1, &v10[*(v19 + 44)]);
    v41 = sub_1CAD4D854();
    v20 = sub_1CAD4DAA4();
    *&v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4640A8) + 36)] = v20;
    v21 = &v10[*(v7 + 36)];
    v21[32] = 0;
    *v21 = 0u;
    *(v21 + 1) = 0u;
    sub_1CABA62E4(v10, v15, &qword_1EC464070);
    v18 = 0;
  }

  (*(v8 + 56))(v15, v18, 1, v7);
  *v6 = sub_1CAD4DC74();
  v6[1] = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464080);
  sub_1CABE76B8(v6 + *(v23 + 44));
  v41 = sub_1CAD4D854();
  v24 = sub_1CAD4DAA4();
  *(v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464088) + 36)) = v24;
  v25 = v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464090) + 36);
  *v25 = xmmword_1CAD5B680;
  *(v25 + 1) = xmmword_1CAD5B690;
  v25[32] = 0;
  sub_1CAD4DBF4();
  v26 = v41;
  swift_getKeyPath();
  v41 = v26;
  sub_1CAD4C424();

  v27 = *(v26 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__isEditing);

  KeyPath = swift_getKeyPath();
  v29 = swift_allocObject();
  *(v29 + 16) = (v27 & 1) == 0;
  v30 = v37;
  v31 = (v6 + *(v38 + 36));
  *v31 = KeyPath;
  v31[1] = sub_1CABEE0D0;
  v31[2] = v29;
  sub_1CAB23A9C(v15, v30, &qword_1EC464078);
  v32 = v39;
  sub_1CAB23A9C(v6, v39, &qword_1EC464068);
  v33 = v40;
  sub_1CAB23A9C(v30, v40, &qword_1EC464078);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464098);
  sub_1CAB23A9C(v32, v33 + *(v34 + 48), &qword_1EC464068);
  sub_1CAB21B68(v6, &qword_1EC464068);
  sub_1CAB21B68(v15, &qword_1EC464078);
  sub_1CAB21B68(v32, &qword_1EC464068);
  return sub_1CAB21B68(v30, &qword_1EC464078);
}

uint64_t sub_1CABE76B8@<X0>(uint64_t a1@<X8>)
{
  v58 = a1;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4640F8);
  v54 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v2 = &v49 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464100);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v57 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v49 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464108);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v55 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v53 = &v49 - v11;
  sub_1CABE016C(&v49 - v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463E08);
  sub_1CAD4DBF4();
  v12 = *&v80[0];
  swift_getKeyPath();
  *&v80[0] = v12;
  sub_1CABEDD34(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  v13 = *(v12 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel___allowTitleChangesToKickoffAutocomplete);

  if (v13 == 1 && ((sub_1CAD4DBF4(), v14 = *&v80[0], swift_getKeyPath(), *&v80[0] = v14, sub_1CAD4C424(), , v15 = *(v14 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__autocompleteItems), , , v15 >> 62) ? (v16 = sub_1CAD4E604()) : (v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10)), , v16 >= 1))
  {
    v52 = sub_1CAD4CD94();
    v70 = 1;
    sub_1CABE7E2C(&v60);
    v76 = v65;
    v77 = v66;
    v78 = v67;
    v73 = v62;
    v74 = v63;
    v75 = v64;
    v71 = v60;
    v72 = v61;
    v80[6] = v66;
    v80[7] = v67;
    v80[2] = v62;
    v80[3] = v63;
    v80[4] = v64;
    v80[5] = v65;
    v79 = v68;
    v81 = v68;
    v80[0] = v60;
    v80[1] = v61;
    sub_1CAB23A9C(&v71, v59, &qword_1EC464118);
    sub_1CAB21B68(v80, &qword_1EC464118);
    *(&v69[5] + 7) = v76;
    *(&v69[6] + 7) = v77;
    *(&v69[7] + 7) = v78;
    *(&v69[1] + 7) = v72;
    *(&v69[2] + 7) = v73;
    *(&v69[3] + 7) = v74;
    *(&v69[4] + 7) = v75;
    *(&v69[8] + 7) = v79;
    *(v69 + 7) = v71;
    v51 = v70;
    v50 = sub_1CAD4D1D4();
    LOBYTE(v60) = 1;
    v17 = [objc_opt_self() cuik_systemBackgroundColor];
    v18 = [v17 CGColor];

    v19 = sub_1CAD4D7B4();
    v20 = sub_1CAD4D1D4();
    v21 = &v2[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464120) + 36)];
    v22 = *(sub_1CAD4C974() + 20);
    v23 = *MEMORY[0x1E697F470];
    v24 = sub_1CAD4CD24();
    (*(*(v24 - 8) + 104))(&v21[v22], v23, v24);
    __asm { FMOV            V0.2D, #12.0 }

    *v21 = _Q0;
    *&v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463808) + 36)] = 256;
    v30 = v69[4];
    *(v2 + 97) = v69[5];
    v31 = v69[7];
    *(v2 + 113) = v69[6];
    *(v2 + 129) = v31;
    *(v2 + 9) = *(&v69[7] + 15);
    v32 = v69[0];
    *(v2 + 33) = v69[1];
    v33 = v69[3];
    *(v2 + 49) = v69[2];
    *(v2 + 65) = v33;
    *(v2 + 81) = v30;
    *v2 = v52;
    *(v2 + 1) = 0;
    v34 = v50;
    v2[16] = v51;
    *(v2 + 17) = v32;
    v2[160] = v34;
    *(v2 + 161) = v60;
    *(v2 + 41) = *(&v60 + 3);
    *(v2 + 168) = 0u;
    *(v2 + 184) = 0u;
    v2[200] = 1;
    *(v2 + 201) = v59[0];
    *(v2 + 51) = *(v59 + 3);
    *(v2 + 26) = v19;
    v2[216] = v20;
    sub_1CAD4D824();
    v35 = sub_1CAD4D894();

    v36 = &v2[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464128) + 36)];
    *v36 = v35;
    *(v36 + 8) = xmmword_1CAD5B6D0;
    *(v36 + 3) = 0x4010000000000000;
    LOBYTE(v19) = sub_1CAD4D1E4();
    sub_1CAD4C5F4();
    v37 = v56;
    v38 = &v2[*(v56 + 36)];
    *v38 = v19;
    *(v38 + 1) = v39;
    *(v38 + 2) = v40;
    *(v38 + 3) = v41;
    *(v38 + 4) = v42;
    v38[40] = 0;
    sub_1CABA62E4(v2, v7, &qword_1EC4640F8);
    (*(v54 + 56))(v7, 0, 1, v37);
  }

  else
  {
    (*(v54 + 56))(v7, 1, 1, v56);
  }

  v43 = v53;
  v44 = v55;
  sub_1CAB23A9C(v53, v55, &qword_1EC464108);
  v45 = v57;
  sub_1CAB23A9C(v7, v57, &qword_1EC464100);
  v46 = v58;
  sub_1CAB23A9C(v44, v58, &qword_1EC464108);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464110);
  sub_1CAB23A9C(v45, v46 + *(v47 + 48), &qword_1EC464100);
  sub_1CAB21B68(v7, &qword_1EC464100);
  sub_1CAB21B68(v43, &qword_1EC464108);
  sub_1CAB21B68(v45, &qword_1EC464100);
  return sub_1CAB21B68(v44, &qword_1EC464108);
}

double sub_1CABE7E2C@<D0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463E08);
  sub_1CAD4DBF4();
  swift_getKeyPath();
  sub_1CABEDD34(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  v2 = *(v4 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__autocompleteItems);

  sub_1CAD4DBF4();
  sub_1CAD4DCA4();
  sub_1CAD4C9A4();
  *(a1 + 72) = v7;
  *(a1 + 88) = v8;
  *(a1 + 104) = v9;
  *(a1 + 120) = v10;
  result = *&v4;
  *(a1 + 24) = v4;
  *(a1 + 40) = v5;
  *a1 = v2;
  *(a1 + 8) = sub_1CABED6E4;
  *(a1 + 16) = v4;
  *(a1 + 56) = v6;
  return result;
}

uint64_t sub_1CABE7FB4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v58 = a2;
  v3 = type metadata accessor for EventEditView();
  v54 = *(v3 - 8);
  v53 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v52 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463FA8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v50 = &v48 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463E08);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v48 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v48 - v15;
  v57 = &v48 - v15;
  sub_1CAD4DC04();
  swift_getKeyPath();
  sub_1CAD4DC24();

  v17 = *(v8 + 8);
  v17(v16, v7);
  sub_1CAD4DC04();
  swift_getKeyPath();
  sub_1CAD4DC24();

  v17(v14, v7);
  v55 = v17;
  v56 = v8 + 8;
  v18 = v72;
  v19 = v74;
  v48 = v73;
  v49 = v75;
  v51 = a1;
  sub_1CAD4DC04();
  swift_getKeyPath();
  sub_1CAD4DC24();

  v17(v11, v7);
  v84 = v68;
  v85 = v69;
  v86 = v70;
  v87 = v71;
  v80 = v64;
  v81 = v65;
  v82 = v66;
  v83 = v67;
  v76 = v60;
  v77 = v61;
  v78 = v62;
  v79 = v63;
  v20 = v52;
  sub_1CABEC824(a1, v52, type metadata accessor for EventEditView);
  v21 = (*(v54 + 80) + 16) & ~*(v54 + 80);
  v22 = swift_allocObject();
  sub_1CABEDD7C(v20, v22 + v21, type metadata accessor for EventEditView);
  v54 = type metadata accessor for LocationViewModel();
  v23 = swift_allocObject();
  v24 = (v23 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__vcTitle);
  *v24 = 0;
  v24[1] = 0;
  v25 = (v23 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__vcSubtitle);
  *v25 = 0;
  v25[1] = 0;
  *(v23 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__mapMarkerItem) = 0;
  sub_1CAD4C454();
  v26 = v50;
  sub_1CAB23A9C(v50, v23 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__eventModelObject, &qword_1EC463FA8);
  v27 = (v23 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__virtualConferenceStatus);
  v28 = v48;
  *v27 = v18;
  v27[1] = v28;
  v29 = v49;
  v27[2] = v19;
  v27[3] = v29;
  v30 = (v23 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel__location);
  v31 = v77;
  *v30 = v76;
  v30[1] = v31;
  v32 = v79;
  v30[2] = v78;
  v30[3] = v32;
  v33 = v83;
  v30[6] = v82;
  v30[7] = v33;
  v34 = v81;
  v30[4] = v80;
  v30[5] = v34;
  v35 = v87;
  v30[10] = v86;
  v30[11] = v35;
  v36 = v85;
  v30[8] = v84;
  v30[9] = v36;
  v37 = (v23 + OBJC_IVAR____TtC13CalendarUIKit17LocationViewModel_updateAttendeesHandler);
  *v37 = sub_1CABED0B0;
  v37[1] = v22;
  type metadata accessor for LocationModelObject(0);
  swift_storeEnumTagMultiPayload();

  sub_1CABED120(v19, v29);

  sub_1CAC2FA94();
  sub_1CAC30074();

  sub_1CABED134(v19, v29);
  sub_1CAB21B68(v26, &qword_1EC463FA8);
  v38 = v57;
  sub_1CAD4DC04();
  swift_getKeyPath();
  sub_1CAD4DC24();

  v55(v38, v7);
  v39 = v60;
  LOBYTE(v38) = v61;
  KeyPath = swift_getKeyPath();
  v41 = v58;
  *v58 = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463FB0);
  v42 = v41;
  swift_storeEnumTagMultiPayload();
  v43 = type metadata accessor for LocationView();
  sub_1CABEDD34(&qword_1EC463FB8, type metadata accessor for LocationViewModel);
  sub_1CAD4DC14();
  v44 = v42 + *(v43 + 24);
  *v44 = v39;
  *(v44 + 16) = v38;
  v45 = v42 + *(v43 + 28);
  v59 = 0;
  result = sub_1CAD4D984();
  v47 = v73;
  *v45 = v72;
  *(v45 + 8) = v47;
  return result;
}

uint64_t sub_1CABE8600@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  *&v20[0] = v3;
  sub_1CABEDD34(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  v4 = (v3 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location);
  v6 = *(v3 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 16);
  v5 = *(v3 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 32);
  v20[0] = *(v3 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location);
  v20[1] = v6;
  v20[2] = v5;
  v7 = *(v3 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 96);
  v9 = *(v3 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 48);
  v8 = *(v3 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 64);
  v20[5] = *(v3 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 80);
  v20[6] = v7;
  v20[3] = v9;
  v20[4] = v8;
  v10 = *(v3 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 160);
  v12 = *(v3 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 112);
  v11 = *(v3 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 128);
  v20[9] = *(v3 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 144);
  v20[10] = v10;
  v20[7] = v12;
  v20[8] = v11;
  v13 = *(v3 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 144);
  a2[8] = *(v3 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 128);
  a2[9] = v13;
  a2[10] = v4[10];
  v14 = v4[5];
  a2[4] = v4[4];
  a2[5] = v14;
  v15 = v4[7];
  a2[6] = v4[6];
  a2[7] = v15;
  v16 = v4[1];
  *a2 = *v4;
  a2[1] = v16;
  v17 = v4[3];
  a2[2] = v4[2];
  a2[3] = v17;
  return sub_1CAB23A9C(v20, &v19, &qword_1EC463C00);
}

uint64_t sub_1CABE8730(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463E08);
  sub_1CAD4DBF4();
  sub_1CACF70E8(a1);
}

double sub_1CABE878C@<D0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463E08);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  *&v36[0] = &v28[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = MEMORY[0x1EEE9AC00](v4);
  *&v31 = &v28[-v7];
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v28[-v9];
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v28[-v12];
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v28[-v14];
  sub_1CAD4DBF4();
  v35 = v39;
  sub_1CAD4DC04();
  swift_getKeyPath();
  sub_1CAD4DC24();

  v16 = *(v3 + 8);
  v16(v15, v2);
  v33 = v45;
  v34 = v44;
  v32 = v46;
  sub_1CAD4DC04();
  swift_getKeyPath();
  sub_1CAD4DC24();

  v16(v13, v2);
  v17 = v41;
  v30 = v42;
  v29 = v43;
  sub_1CAD4DC04();
  swift_getKeyPath();
  v18 = type metadata accessor for PersonEditor(0);
  sub_1CAD4DC24();

  v16(v10, v2);
  v19 = v31;
  sub_1CAD4DC04();
  swift_getKeyPath();
  sub_1CAD4DC24();

  v16(v19, v2);
  v20 = v39;
  v31 = v40;
  v21 = v36[0];
  sub_1CAD4DC04();
  swift_getKeyPath();
  sub_1CAD4DC24();

  v16(*&v21, v2);
  v22 = v37;
  *v36 = v38;
  swift_weakInit();

  v23 = v33;
  *(a1 + 8) = v34;
  *(a1 + 16) = v23;
  *(a1 + 24) = v32;
  v24 = v30;
  *(a1 + 32) = v17;
  *(a1 + 40) = v24;
  *(a1 + 48) = v29;
  v25 = a1 + *(v18 + 32);
  *v25 = v20;
  *(v25 + 8) = v31;
  v26 = a1 + *(v18 + 36);
  *v26 = v22;
  result = v36[0];
  *(v26 + 8) = *v36;
  return result;
}

uint64_t sub_1CABE8B38@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CABEDD34(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  *a2 = *(v3 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____displayPeople);
}

uint64_t sub_1CABE8BEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a1;
  v3 = type metadata accessor for EventEditView();
  v61 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v64 = v4;
  v67 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463B10);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v63 = &v60 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463258);
  v70 = *(v7 - 8);
  v71 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v66 = &v60 - v8;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463FC0);
  MEMORY[0x1EEE9AC00](v62);
  v65 = &v60 - v9;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463FC8);
  MEMORY[0x1EEE9AC00](v69);
  v68 = &v60 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463FD0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v75 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v76 = &v60 - v14;
  if (qword_1EC462B20 != -1)
  {
    swift_once();
  }

  v77 = qword_1EC47D878;
  v78 = unk_1EC47D880;
  v15 = sub_1CABA6054();

  v60 = v15;
  v16 = sub_1CAD4D444();
  v18 = v17;
  v20 = v19;
  sub_1CAD4D8B4();
  v21 = sub_1CAD4D3D4();
  v23 = v22;
  LOBYTE(v15) = v24;

  sub_1CABA6128(v16, v18, v20 & 1);

  sub_1CAD4D254();
  v25 = sub_1CAD4D424();
  v27 = v26;
  v73 = v28;
  v74 = v29;

  sub_1CABA6128(v21, v23, v15 & 1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463E08);
  v30 = v72;
  sub_1CAD4DBF4();
  LOBYTE(v15) = sub_1CAC65230();

  v31 = 1;
  if (v15)
  {
    sub_1CAD4DBF4();
    v32 = v77;
    swift_getKeyPath();
    v77 = v32;
    sub_1CABEDD34(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
    sub_1CAD4C424();

    v33 = *(v32 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__isEditing);

    if (v33 == 1)
    {
      sub_1CAD4DBF4();
      v34 = v77;
      swift_getKeyPath();
      v77 = v34;
      sub_1CAD4C424();

      v35 = *(v34 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__numberOfConflicts);

      v36 = v35 > 0;
    }

    else
    {
      v36 = 0;
    }

    if (qword_1EC462B48 != -1)
    {
      swift_once();
    }

    v77 = qword_1EC47D8C8;
    v78 = unk_1EC47D8D0;
    if (v36)
    {

      v37 = v63;
      sub_1CAD4C5A4();
      v38 = sub_1CAD4C5C4();
      (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
    }

    else
    {
      v39 = sub_1CAD4C5C4();
      (*(*(v39 - 8) + 56))(v63, 1, 1, v39);
    }

    v40 = v67;
    sub_1CABEC824(v30, v67, type metadata accessor for EventEditView);
    v41 = (*(v61 + 80) + 16) & ~*(v61 + 80);
    v42 = swift_allocObject();
    sub_1CABEDD7C(v40, v42 + v41, type metadata accessor for EventEditView);
    v43 = v66;
    sub_1CAD4D9F4();
    v44 = sub_1CAD4D8B4();
    KeyPath = swift_getKeyPath();
    v77 = v44;
    v46 = sub_1CAD4C754();
    v47 = v65;
    (*(v70 + 32))(v65, v43, v71);
    v48 = &v47[*(v62 + 36)];
    *v48 = KeyPath;
    v48[1] = v46;
    v49 = sub_1CAD4D324();
    v50 = swift_getKeyPath();
    v51 = v47;
    v52 = v68;
    sub_1CABA62E4(v51, v68, &qword_1EC463FC0);
    v53 = (v52 + *(v69 + 36));
    *v53 = v50;
    v53[1] = v49;
    sub_1CABED160();
    sub_1CAD4D6A4();
    sub_1CAB21B68(v52, &qword_1EC463FC8);
    v31 = 0;
  }

  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463FD8);
  v55 = v76;
  (*(*(v54 - 8) + 56))(v76, v31, 1, v54);
  v56 = v75;
  sub_1CAB23A9C(v55, v75, &qword_1EC463FD0);
  *a2 = v25;
  *(a2 + 8) = v27;
  v57 = v73 & 1;
  *(a2 + 16) = v73 & 1;
  *(a2 + 24) = v74;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463FE0);
  sub_1CAB23A9C(v56, a2 + *(v58 + 64), &qword_1EC463FD0);
  sub_1CABA4F48(v25, v27, v57);

  sub_1CAB21B68(v55, &qword_1EC463FD0);
  sub_1CAB21B68(v56, &qword_1EC463FD0);
  sub_1CABA6128(v25, v27, v57);
}

uint64_t sub_1CABE94A4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463E08);
  sub_1CAD4DBF4();
  if (*(v2 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__pushAction) == 2)
  {
    sub_1CACEF4EC();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CABEDD34(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
    sub_1CAD4C414();
  }
}

double sub_1CABE95F4@<D0>(uint64_t *a1@<X8>)
{
  v21 = a1;
  v1 = type metadata accessor for EventModelObject();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463E08);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - v6;
  if (qword_1EC462B70 != -1)
  {
    swift_once();
  }

  v8 = unk_1EC47D920;
  v20 = qword_1EC47D918;

  sub_1CAD4DC04();
  swift_getKeyPath();
  sub_1CAD4DC24();

  (*(v5 + 8))(v7, v4);
  v19 = v24;
  v9 = v26;
  v18 = v25;
  sub_1CAD4DBF4();
  v10 = v23;
  swift_getKeyPath();
  v23 = v10;
  sub_1CABEDD34(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  v11 = OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__eventModelObject;
  swift_beginAccess();
  sub_1CABEC824(v10 + v11, v3, type metadata accessor for EventModelObject);

  sub_1CAD4DBF4();
  v12 = v22;
  swift_getKeyPath();
  v22 = v12;
  sub_1CAD4C424();

  v13 = *(v12 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__calendars);

  v14 = sub_1CAC4BFAC(v3, v13);

  sub_1CABED504(v3, type metadata accessor for EventModelObject);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464060);
  v15 = swift_allocObject();
  *(v15 + 16) = v19;
  *(v15 + 32) = v18;
  *(v15 + 40) = v9;
  *(v15 + 48) = v20;
  *(v15 + 56) = v8;
  result = 9.27777367e242;
  *(v15 + 64) = xmmword_1CAD5B6E0;
  *(v15 + 80) = v14;
  *(v15 + 88) = 0;
  *(v15 + 96) = 0;
  *(v15 + 104) = 0;
  *v21 = v15;
  return result;
}

uint64_t sub_1CABE9960@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v162 = a2;
  v3 = type metadata accessor for TravelTimeView();
  v158 = *(v3 - 8);
  v159 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v148 = &v139 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4679C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v147 = &v139 - v6;
  v7 = sub_1CAD4C0F4();
  v150 = *(v7 - 8);
  v151 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v152 = &v139 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = type metadata accessor for EventModelObject();
  v9 = MEMORY[0x1EEE9AC00](v156);
  v157 = &v139 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v146 = &v139 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v139 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464038);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v161 = &v139 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v163 = &v139 - v18;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463FA8);
  v19 = MEMORY[0x1EEE9AC00](v149);
  v145 = &v139 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v143 = &v139 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v139 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463E08);
  v26 = *(v25 - 8);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v144 = &v139 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v142 = &v139 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v139 - v31;
  sub_1CAD4DC04();
  swift_getKeyPath();
  sub_1CAD4DC24();

  v33 = *(v26 + 8);
  v154 = v32;
  v155 = v26 + 8;
  v153 = v33;
  v33(v32, v25);
  type metadata accessor for AlarmViewModel(0);
  v34 = swift_allocObject();
  sub_1CABA62E4(v24, v34 + OBJC_IVAR____TtC13CalendarUIKit14AlarmViewModel__event, &qword_1EC463FA8);
  v160 = v34;

  v164 = a1;
  sub_1CAD4DBF4();
  v35 = v194;
  swift_getKeyPath();
  *&v194 = v35;
  v36 = sub_1CABEDD34(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  v37 = v35 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__eventModelObject;
  swift_beginAccess();
  sub_1CABEC824(v37, v14, type metadata accessor for EventModelObject);
  LOBYTE(v34) = sub_1CABEC4B8();
  sub_1CABED504(v14, type metadata accessor for EventModelObject);
  if (v34)
  {
    swift_getKeyPath();
    *&v194 = v35;
    sub_1CAD4C424();

    v38 = *(v37 + *(v156 + 36));

    if ((v38 & 1) == 0)
    {
      sub_1CAD4DBF4();
      v39 = sub_1CACEECA4();

      if (v39)
      {
        v40 = v154;
        sub_1CAD4DC04();
        swift_getKeyPath();
        sub_1CAD4DC24();

        v41 = v153;
        v153(v40, v25);
        v42 = v41;
        swift_getKeyPath();
        sub_1CAD4DAD4();

        v141 = v36;
        sub_1CAB21B68(v24, &qword_1EC463FA8);
        v139 = v192;
        v140 = v191;
        v43 = v193;
        v44 = v142;
        sub_1CAD4DC04();
        swift_getKeyPath();
        v45 = v143;
        sub_1CAD4DC24();

        v41(v44, v25);
        swift_getKeyPath();
        sub_1CAD4DAD4();

        sub_1CAB21B68(v45, &qword_1EC463FA8);
        v202 = v187;
        v203 = v188;
        v204 = v189;
        v205 = v190;
        v198 = v183;
        v199 = v184;
        v200 = v185;
        v201 = v186;
        v194 = v179;
        v195 = v180;
        v196 = v181;
        v197 = v182;
        sub_1CAD4DBF4();
        v46 = v166;
        swift_getKeyPath();
        *&v166 = v46;
        sub_1CAD4C424();

        v48 = *(v46 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 16);
        v47 = *(v46 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 32);
        v206 = *(v46 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location);
        v207 = v48;
        v208 = v47;
        v49 = *(v46 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 80);
        v51 = *(v46 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 48);
        v50 = *(v46 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 64);
        v212 = *(v46 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 96);
        v211 = v49;
        v209 = v51;
        v210 = v50;
        v52 = *(v46 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 144);
        v54 = *(v46 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 112);
        v53 = *(v46 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 128);
        v216 = *(v46 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 160);
        v215 = v52;
        v213 = v54;
        v214 = v53;
        sub_1CAB23A9C(&v206, &v166, &qword_1EC463C00);

        v55 = v144;
        sub_1CAD4DC04();
        swift_getKeyPath();
        v56 = v145;
        sub_1CAD4DC24();

        v42(v55, v25);
        swift_getKeyPath();
        sub_1CAD4DAD4();

        sub_1CAB21B68(v56, &qword_1EC463FA8);
        v57 = v178[8];
        v58 = v178[9];
        v59 = v178[10];
        sub_1CAD4DBF4();
        v60 = v166;
        swift_getKeyPath();
        *&v166 = v60;
        sub_1CAD4C424();

        v61 = OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__eventModelObject;
        swift_beginAccess();
        v62 = v60 + v61;
        v63 = v146;
        sub_1CABEC824(v62, v146, type metadata accessor for EventModelObject);

        v64 = *(v156 + 28);
        v65 = *(v150 + 16);
        v145 = (v150 + 16);
        v149 = v65;
        v65(v152, (v63 + v64), v151);
        sub_1CABED504(v63, type metadata accessor for EventModelObject);
        sub_1CAD4DBF4();
        v66 = v166;
        swift_getKeyPath();
        *&v166 = v66;
        sub_1CAD4C424();

        v67 = OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__eventDataSource;
        swift_beginAccess();
        sub_1CAB299C0(v66 + v67, v178);

        v156 = type metadata accessor for TravelTimeViewModel();
        v68 = swift_allocObject();
        sub_1CABED564(v217);
        v69 = v217[9];
        *(v68 + 624) = v217[8];
        *(v68 + 640) = v69;
        *(v68 + 656) = v217[10];
        v70 = v217[5];
        *(v68 + 560) = v217[4];
        *(v68 + 576) = v70;
        v71 = v217[7];
        *(v68 + 592) = v217[6];
        *(v68 + 608) = v71;
        v72 = v217[1];
        *(v68 + 496) = v217[0];
        *(v68 + 512) = v72;
        v73 = v217[3];
        *(v68 + 528) = v217[2];
        *(v68 + 544) = v73;
        *(v68 + 672) = 0;
        *(v68 + OBJC_IVAR____TtC13CalendarUIKit19TravelTimeViewModel__travelTimeEstimatedValues) = 0;
        sub_1CAD4C454();
        v75 = v139;
        v74 = v140;
        *(v68 + 16) = v140;
        *(v68 + 24) = v75;
        *(v68 + 32) = v43;
        v76 = v203;
        *(v68 + 168) = v202;
        *(v68 + 184) = v76;
        v77 = v205;
        *(v68 + 200) = v204;
        *(v68 + 216) = v77;
        v78 = v199;
        *(v68 + 104) = v198;
        *(v68 + 120) = v78;
        v79 = v201;
        *(v68 + 136) = v200;
        *(v68 + 152) = v79;
        v80 = v195;
        *(v68 + 40) = v194;
        *(v68 + 56) = v80;
        v81 = v197;
        *(v68 + 72) = v196;
        *(v68 + 88) = v81;
        *(v68 + 232) = v57;
        *(v68 + 240) = v58;
        *(v68 + 248) = v59;
        v82 = v215;
        *(v68 + 384) = v214;
        *(v68 + 400) = v82;
        *(v68 + 416) = v216;
        v83 = v211;
        *(v68 + 320) = v210;
        *(v68 + 336) = v83;
        v84 = v213;
        *(v68 + 352) = v212;
        *(v68 + 368) = v84;
        v85 = v207;
        *(v68 + 256) = v206;
        *(v68 + 272) = v85;
        v86 = v209;
        *(v68 + 288) = v208;
        *(v68 + 304) = v86;
        sub_1CAB299C0(v178, v68 + 432);
        *&v229 = v74;
        *(&v229 + 1) = v75;
        *&v230 = v43;

        sub_1CAB23A9C(&v194, &v166, &qword_1EC463C30);
        v144 = v57;

        v143 = v58;

        v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463C28);
        MEMORY[0x1CCAA6D30](&v166);
        *(v68 + 480) = v166;
        v174 = v202;
        v175 = v203;
        v176 = v204;
        v177 = v205;
        v170 = v198;
        v171 = v199;
        v172 = v200;
        v173 = v201;
        v166 = v194;
        v167 = v195;
        v168 = v196;
        v169 = v197;
        v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463C30);
        MEMORY[0x1CCAA6D30](v165, v87);
        sub_1CAB21B68(&v194, &qword_1EC463C30);
        v226 = v165[8];
        v227 = v165[9];
        v228 = v165[10];
        v222 = v165[4];
        v223 = v165[5];
        v225 = v165[7];
        v224 = v165[6];
        v218 = v165[0];
        v219 = v165[1];
        v221 = v165[3];
        v220 = v165[2];
        v88 = *(v68 + 640);
        v237 = *(v68 + 624);
        v238 = v88;
        v239 = *(v68 + 656);
        v89 = *(v68 + 576);
        v233 = *(v68 + 560);
        v234 = v89;
        v90 = *(v68 + 592);
        v236 = *(v68 + 608);
        v235 = v90;
        v91 = *(v68 + 512);
        v229 = *(v68 + 496);
        v230 = v91;
        v92 = *(v68 + 528);
        v232 = *(v68 + 544);
        v231 = v92;
        sub_1CAB21B68(&v229, &qword_1EC463C00);
        v93 = v227;
        *(v68 + 624) = v226;
        *(v68 + 640) = v93;
        *(v68 + 656) = v228;
        v94 = v223;
        *(v68 + 560) = v222;
        *(v68 + 576) = v94;
        v95 = v225;
        *(v68 + 592) = v224;
        *(v68 + 608) = v95;
        v96 = v219;
        *(v68 + 496) = v218;
        *(v68 + 512) = v96;
        v97 = v221;
        *(v68 + 528) = v220;
        *(v68 + 544) = v97;
        *&v166 = v57;
        *(&v166 + 1) = v58;
        *&v167 = v59;
        v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464050);
        MEMORY[0x1CCAA6D30](v165, v98);
        *(v68 + 488) = *&v165[0];
        v99 = v151;
        v149(v68 + OBJC_IVAR____TtC13CalendarUIKit19TravelTimeViewModel__arrivalDate, v152, v151);
        *&v166 = v140;
        *(&v166 + 1) = v139;
        *&v167 = v43;
        MEMORY[0x1CCAA6D30](v165, v146);
        *(v68 + 472) = *v165 > 0.0;
        type metadata accessor for LocationModelObject(0);
        swift_storeEnumTagMultiPayload();
        v100 = sub_1CAD4E304();
        v101 = v147;
        (*(*(v100 - 8) + 56))(v147, 1, 1, v100);
        sub_1CAD4E2C4();

        v102 = sub_1CAD4E2B4();
        v103 = swift_allocObject();
        v104 = MEMORY[0x1E69E85E0];
        v103[2] = v102;
        v103[3] = v104;
        v103[4] = v68;
        sub_1CACA6D34(0, 0, v101, &unk_1CAD5BD70, v103);

        __swift_destroy_boxed_opaque_existential_1(v178);
        (*(v150 + 8))(v152, v99);
        sub_1CABEDD34(&qword_1EC463BD8, type metadata accessor for TravelTimeViewModel);
        v105 = v148;
        sub_1CAD4DC14();
        v106 = v159;
        v107 = v105 + *(v159 + 20);
        LOBYTE(v166) = 0;
        sub_1CAD4D984();
        v108 = *(&v179 + 1);
        *v107 = v179;
        *(v107 + 8) = v108;
        v109 = v163;
        sub_1CABEDD7C(v105, v163, type metadata accessor for TravelTimeView);
        (*(v158 + 56))(v109, 0, 1, v106);
        goto LABEL_7;
      }
    }
  }

  else
  {
  }

  v109 = v163;
  (*(v158 + 56))(v163, 1, 1, v159);
LABEL_7:
  sub_1CAD4DBF4();
  v110 = v194;
  swift_getKeyPath();
  *&v194 = v110;
  sub_1CAD4C424();

  v111 = OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__eventModelObject;
  swift_beginAccess();
  v112 = v157;
  sub_1CABEC824(v110 + v111, v157, type metadata accessor for EventModelObject);
  LOBYTE(v111) = sub_1CABEC304();
  sub_1CABED504(v112, type metadata accessor for EventModelObject);
  if ((v111 & 1) == 0)
  {

    goto LABEL_19;
  }

  v113 = sub_1CACF48D0();

  v114 = *(v113 + 2);

  if (!v114)
  {
    goto LABEL_20;
  }

  sub_1CAD4DBF4();
  v115 = sub_1CACEECA4();

  if ((v115 & 1) == 0)
  {
LABEL_19:
    v114 = 0;
    goto LABEL_20;
  }

  sub_1CAD4DBF4();
  v116 = v179;
  swift_getKeyPath();
  *&v179 = v116;
  sub_1CAD4C424();

  v117 = *(v116 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__selectedAvailability);

  v118 = 0x80000001CAD74B20;
  if (v117)
  {
    v119 = 0xD000000000000010;
  }

  else
  {
    v119 = 0x6C676E6174636572;
  }

  if (!v117)
  {
    v118 = 0xE900000000000065;
  }

  v158 = v118;
  v159 = v119;
  if (qword_1EC462B78 != -1)
  {
    swift_once();
  }

  v121 = qword_1EC47D928;
  v120 = unk_1EC47D930;

  v122 = v154;
  sub_1CAD4DC04();
  swift_getKeyPath();
  sub_1CAD4DC24();

  v153(v122, v25);
  v123 = v179;
  v124 = v180;
  sub_1CAD4DBF4();
  v125 = sub_1CACF48D0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464048);
  v114 = swift_allocObject();
  *(v114 + 16) = v123;
  *(v114 + 32) = v124;
  *(v114 + 40) = v121;
  *(v114 + 48) = v120;
  v126 = v158;
  *(v114 + 56) = v159;
  *(v114 + 64) = v126;
  *(v114 + 72) = 0;
  *(v114 + 80) = v125;
  *(v114 + 88) = 5;

  v109 = v163;
LABEL_20:
  sub_1CAD4DBF4();
  v127 = sub_1CACF4FC0();

  if (v127 && (sub_1CAD4DBF4(), v128 = sub_1CACEECA4(), , (v128 & 1) != 0))
  {
    if (qword_1EC462B68 != -1)
    {
      swift_once();
    }

    v130 = qword_1EC47D908;
    v129 = unk_1EC47D910;

    v131 = v154;
    sub_1CAD4DC04();
    swift_getKeyPath();
    sub_1CAD4DC24();

    v153(v131, v25);
    v132 = v179;
    v133 = v180;
    type metadata accessor for ToggleViewModel();
    v134 = swift_allocObject();
    *(v134 + 40) = v130;
    *(v134 + 48) = v129;
    *(v134 + 16) = v132;
    *(v134 + 32) = v133;
    *(v134 + 56) = xmmword_1CAD5B6F0;
    *(v134 + 72) = xmmword_1CAD5B700;
  }

  else
  {
    v134 = 0;
  }

  v135 = v161;
  sub_1CAB23A9C(v109, v161, &qword_1EC464038);
  v136 = v162;
  *v162 = v160;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464040);
  sub_1CAB23A9C(v135, v136 + v137[12], &qword_1EC464038);
  *(v136 + v137[16]) = v114;
  *(v136 + v137[20]) = v134;
  sub_1CAB21B68(v109, &qword_1EC464038);

  sub_1CAB21B68(v135, &qword_1EC464038);
}

uint64_t sub_1CABEAE0C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v104 = a2;
  v3 = type metadata accessor for EventModelObject();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v93 = v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for EventEditView();
  v87 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v90 = v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v88 = v86 - v8;
  v102 = type metadata accessor for AttachmentEditor();
  v101 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v94 = v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464010);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v103 = v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v107 = v86 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463E08);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  *&v91 = v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v106 = v86 - v18;
  sub_1CAD4DBF4();
  v19 = sub_1CAD3B6AC();

  *&v105 = 0;
  KeyPath = 0;
  v21 = 0;
  v22 = 0;
  if (v19)
  {
    if (qword_1EC462B58 != -1)
    {
      swift_once();
    }

    v24 = qword_1EC47D8E8;
    v23 = unk_1EC47D8F0;

    v25 = v106;
    sub_1CAD4DC04();
    swift_getKeyPath();
    sub_1CAD4DC24();

    (*(v15 + 8))(v25, v14);
    v105 = *v108;
    v26 = *&v108[16];
    v27 = v109;
    type metadata accessor for TextEditingViewModel();
    v28 = swift_allocObject();
    *(v28 + 16) = v105;
    *(v28 + 32) = v26;
    *(v28 + 40) = v27;
    *(v28 + 48) = v24;
    *(v28 + 56) = v23;
    *(v28 + 64) = xmmword_1CAD5B710;
    *(v28 + 80) = 1;
    sub_1CAD4DBF4();
    v29 = *v108;
    swift_getKeyPath();
    *v108 = v29;
    sub_1CABEDD34(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
    sub_1CAD4C424();

    LOBYTE(v26) = *(v29 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__isEditing);

    KeyPath = swift_getKeyPath();
    v22 = swift_allocObject();
    *(v22 + 16) = (v26 & 1) == 0;
    *&v105 = v28;

    v21 = sub_1CABEE0D0;
  }

  v98 = v21;
  sub_1CAD4DBF4();
  v30 = sub_1CAD3B6C0();

  v100 = KeyPath;
  v99 = v22;
  v92 = v15;
  if (v30)
  {
    if (qword_1EC462B60 != -1)
    {
      swift_once();
    }

    v32 = qword_1EC47D8F8;
    v31 = unk_1EC47D900;

    v33 = v106;
    sub_1CAD4DC04();
    swift_getKeyPath();
    sub_1CAD4DC24();

    (*(v15 + 8))(v33, v14);
    v97 = *v108;
    v34 = *&v108[16];
    v35 = v109;
    type metadata accessor for TextEditingViewModel();
    v36 = swift_allocObject();
    *(v36 + 16) = v97;
    *(v36 + 32) = v34;
    *(v36 + 40) = v35;
    *(v36 + 48) = v32;
    *(v36 + 56) = v31;
    *(v36 + 64) = 0xD000000000000014;
    *(v36 + 72) = 0x80000001CAD74B00;
    *(v36 + 80) = 0;
    sub_1CAD4DBF4();
    v37 = *v108;
    swift_getKeyPath();
    *v108 = v37;
    sub_1CABEDD34(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
    sub_1CAD4C424();

    LOBYTE(v34) = *(v37 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__isEditing);

    v38 = swift_getKeyPath();
    v39 = swift_allocObject();
    *(v39 + 16) = (v34 & 1) == 0;
    *&v97 = v36;

    v40 = v38;

    v96 = v39;

    v95 = sub_1CABED4D4;
  }

  else
  {
    *&v97 = 0;
    v40 = 0;
    v95 = 0;
    v96 = 0;
  }

  sub_1CAD4DBF4();
  v41 = sub_1CAD3B804();

  if (v41)
  {
    sub_1CAD4DBF4();
    v42 = *v108;
    swift_getKeyPath();
    *v108 = v42;
    v86[1] = sub_1CABEDD34(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
    sub_1CAD4C424();

    v86[0] = *(v42 + 16);

    v43 = v88;
    sub_1CABEC824(a1, v88, type metadata accessor for EventEditView);
    v44 = (*(v87 + 80) + 16) & ~*(v87 + 80);
    v45 = swift_allocObject();
    sub_1CABEDD7C(v43, v45 + v44, type metadata accessor for EventEditView);
    v46 = v90;
    sub_1CABEC824(a1, v90, type metadata accessor for EventEditView);
    v47 = swift_allocObject();
    sub_1CABEDD7C(v46, v47 + v44, type metadata accessor for EventEditView);
    v48 = type metadata accessor for AttachmentsViewModel(0);
    v49 = objc_allocWithZone(v48);
    *&v49[OBJC_IVAR____TtC13CalendarUIKit20AttachmentsViewModel__attachmentControllers] = sub_1CAC28650(MEMORY[0x1E69E7CC0]);
    v49[OBJC_IVAR____TtC13CalendarUIKit20AttachmentsViewModel__showPreviewController] = 0;
    v50 = OBJC_IVAR____TtC13CalendarUIKit20AttachmentsViewModel__attachmentAlert;
    v51 = type metadata accessor for AttachmentAlert(0);
    (*(*(v51 - 8) + 56))(&v49[v50], 1, 1, v51);
    v52 = OBJC_IVAR____TtC13CalendarUIKit20AttachmentsViewModel__attachmentItem;
    v53 = type metadata accessor for EventAttachmentModelObject();
    (*(*(v53 - 8) + 56))(&v49[v52], 1, 1, v53);
    sub_1CAD4C454();
    *&v49[OBJC_IVAR____TtC13CalendarUIKit20AttachmentsViewModel_owningEvent] = v86[0];
    v54 = &v49[OBJC_IVAR____TtC13CalendarUIKit20AttachmentsViewModel_updateAttachmentStatus];
    *v54 = sub_1CABED3B4;
    v54[1] = v45;
    v55 = &v49[OBJC_IVAR____TtC13CalendarUIKit20AttachmentsViewModel_updateDownloadProgress];
    *v55 = sub_1CABED43C;
    v55[1] = v47;
    v117.receiver = v49;
    v117.super_class = v48;
    v90 = objc_msgSendSuper2(&v117, sel_init);
    v56 = v106;
    sub_1CAD4DC04();
    swift_getKeyPath();
    sub_1CAD4DC24();

    v57 = *(v92 + 8);
    v57(v56, v14);
    v58 = v115;
    v106 = v114;
    LODWORD(v92) = v116;
    v59 = v91;
    sub_1CAD4DC04();
    swift_getKeyPath();
    sub_1CAD4DC24();

    v57(v59, v14);
    v60 = *v108;
    v91 = *&v108[8];
    sub_1CAD4DBF4();
    v61 = v113;
    swift_getKeyPath();
    v113 = v61;
    sub_1CAD4C424();

    v62 = OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__eventModelObject;
    swift_beginAccess();
    v63 = v61 + v62;
    v64 = v93;
    sub_1CABEC824(v63, v93, type metadata accessor for EventModelObject);
    LOBYTE(v45) = sub_1CABEC90C();

    sub_1CABED504(v64, type metadata accessor for EventModelObject);
    sub_1CABEDD34(&qword_1EC463930, type metadata accessor for AttachmentsViewModel);
    v65 = v94;
    sub_1CAD4DC14();
    v66 = v102;
    v67 = v65 + *(v102 + 20);
    *v67 = v106;
    *(v67 + 8) = v58;
    *(v67 + 16) = v92;
    v68 = v65 + v66[6];
    *v68 = v60;
    *(v68 + 8) = v91;
    *(v65 + v66[7]) = v45 & 1;
    v69 = v65 + v66[8];
    v110 = 0;
    sub_1CAD4D984();
    v70 = v112;
    *v69 = v111;
    *(v69 + 8) = v70;
    v71 = v65 + v66[9];
    v110 = 0;
    sub_1CAD4D984();
    v72 = v112;
    *v71 = v111;
    *(v71 + 8) = v72;
    v73 = v65 + v66[10];
    v110 = 0;
    sub_1CAD4D984();
    v74 = v112;
    *v73 = v111;
    *(v73 + 8) = v74;
    v75 = v107;
    sub_1CABEDD7C(v65, v107, type metadata accessor for AttachmentEditor);
    v76 = 0;
  }

  else
  {
    v76 = 1;
    v75 = v107;
    v66 = v102;
  }

  (*(v101 + 56))(v75, v76, 1, v66);
  v77 = v103;
  sub_1CAB23A9C(v75, v103, &qword_1EC464010);
  v79 = v104;
  v78 = v105;
  v80 = v100;
  *v104 = v105;
  v79[1] = v80;
  v81 = v99;
  v79[2] = v98;
  v79[3] = v81;
  v82 = v97;
  v79[4] = v97;
  v79[5] = v40;
  v83 = v96;
  v79[6] = v95;
  v79[7] = v83;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464018);
  sub_1CAB23A9C(v77, v79 + *(v84 + 64), &qword_1EC464010);
  sub_1CABED31C(v78);
  sub_1CABED31C(v82);
  sub_1CABED368(v82);
  sub_1CABED368(v78);
  sub_1CAB21B68(v107, &qword_1EC464010);
  sub_1CAB21B68(v77, &qword_1EC464010);
  sub_1CABED368(v82);
  return sub_1CABED368(v78);
}

uint64_t sub_1CABEBCB0(uint64_t a1, uint64_t a2, char a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463E08);
  sub_1CAD4DBF4();
  sub_1CAC5A324(a1, a2, a3);
}

uint64_t sub_1CABEBD24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463E08);
  sub_1CAD4DBF4();
  sub_1CAC5A6F0(a1, a2, a3, a4);
}

uint64_t sub_1CABEBDA8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_1CAD4D004();
  v32 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464028);
  *&v33 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v31 = v30 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464030);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (v30 - v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463E08);
  sub_1CAD4DBF4();
  v13 = v37;
  swift_getKeyPath();
  *&v37 = v13;
  sub_1CABEDD34(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  v14 = *(v13 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__isEditing);

  if (v14 == 1)
  {
    if (qword_1EC462B60 != -1)
    {
      swift_once();
    }

    v16 = qword_1EC47D8F8;
    v15 = unk_1EC47D900;
    v35 = a1;
    v36 = a2;

    sub_1CAD4DB04();
    v33 = v37;
    v17 = v38;
    v18 = v39;
    type metadata accessor for TextEditingViewModel();
    v19 = swift_allocObject();
    *(v19 + 16) = v33;
    *(v19 + 32) = v17;
    *(v19 + 40) = v18;
    *(v19 + 48) = v16;
    *(v19 + 56) = v15;
    *(v19 + 64) = 0;
    *(v19 + 72) = 0;
    *(v19 + 80) = 0;
    *v12 = v19;
    swift_storeEnumTagMultiPayload();
    sub_1CABED044();
    *&v37 = MEMORY[0x1E6981150];
    *(&v37 + 1) = v6;
    v38 = MEMORY[0x1E6981140];
    v39 = MEMORY[0x1E69803B0];
    swift_getOpaqueTypeConformance2();
    return sub_1CAD4CE24();
  }

  else
  {
    *&v37 = a1;
    *(&v37 + 1) = a2;
    sub_1CABA6054();

    v21 = sub_1CAD4D444();
    v23 = v22;
    *&v37 = v21;
    *(&v37 + 1) = v22;
    v30[1] = a3;
    v25 = v24 & 1;
    LOBYTE(v38) = v24 & 1;
    v39 = v26;
    sub_1CAD4CFF4();
    v27 = v31;
    sub_1CAD4D574();
    (*(v32 + 8))(v8, v6);
    sub_1CABA6128(v21, v23, v25);

    v28 = v33;
    v29 = v34;
    (*(v33 + 16))(v12, v27, v34);
    swift_storeEnumTagMultiPayload();
    sub_1CABED044();
    *&v37 = MEMORY[0x1E6981150];
    *(&v37 + 1) = v6;
    v38 = MEMORY[0x1E6981140];
    v39 = MEMORY[0x1E69803B0];
    swift_getOpaqueTypeConformance2();
    sub_1CAD4CE24();
    return (*(v28 + 8))(v27, v29);
  }
}

double sub_1CABEC288@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1CAD4D854();
  sub_1CAD4DC94();
  sub_1CAD4C744();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  result = *&v8;
  *(a1 + 40) = v8;
  return result;
}

uint64_t sub_1CABEC304()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464020);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v14 - v2;
  v4 = type metadata accessor for EventModelObject();
  sub_1CAB23A9C(v0 + *(v4 + 104), v3, &qword_1EC464020);
  v5 = type metadata accessor for EventCalendarModelObject();
  if ((*(*(v5 - 8) + 48))(v3, 1, v5) == 1)
  {
    sub_1CAB21B68(v3, &qword_1EC464020);
  }

  else
  {
    v7 = *(v3 + 184);
    v8 = *(v3 + 216);
    v14[6] = *(v3 + 200);
    *v15 = v8;
    *&v15[10] = *(v3 + 226);
    v9 = *(v3 + 120);
    v10 = *(v3 + 152);
    v14[2] = *(v3 + 136);
    v14[3] = v10;
    v14[4] = *(v3 + 168);
    v14[5] = v7;
    v14[0] = *(v3 + 104);
    v14[1] = v9;
    v11 = sub_1CABED4EC(v14);
    v12 = v15[8];
    v6 = v15[20];
    sub_1CABED504(v3, type metadata accessor for EventCalendarModelObject);
    if (v11 != 1 && v12 != 2)
    {
      return v6 & 1;
    }
  }

  if (qword_1EC462F58 != -1)
  {
    swift_once();
  }

  v6 = dword_1EC4676BC;
  return v6 & 1;
}

uint64_t sub_1CABEC4B8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464020);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v14 - v2;
  v4 = type metadata accessor for EventModelObject();
  sub_1CAB23A9C(v0 + *(v4 + 104), v3, &qword_1EC464020);
  v5 = type metadata accessor for EventCalendarModelObject();
  if ((*(*(v5 - 8) + 48))(v3, 1, v5) == 1)
  {
    sub_1CAB21B68(v3, &qword_1EC464020);
  }

  else
  {
    v7 = *(v3 + 184);
    v8 = *(v3 + 216);
    v14[6] = *(v3 + 200);
    *v15 = v8;
    *&v15[10] = *(v3 + 226);
    v9 = *(v3 + 120);
    v10 = *(v3 + 152);
    v14[2] = *(v3 + 136);
    v14[3] = v10;
    v14[4] = *(v3 + 168);
    v14[5] = v7;
    v14[0] = *(v3 + 104);
    v14[1] = v9;
    v11 = sub_1CABED4EC(v14);
    v12 = v15[8];
    v6 = v15[23];
    sub_1CABED504(v3, type metadata accessor for EventCalendarModelObject);
    if (v11 != 1 && v12 != 2)
    {
      return v6 & 1;
    }
  }

  if (qword_1EC462F58 != -1)
  {
    swift_once();
  }

  v6 = HIBYTE(dword_1EC4676BC);
  return v6 & 1;
}

unint64_t sub_1CABEC66C()
{
  result = qword_1EC463E48;
  if (!qword_1EC463E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC463E48);
  }

  return result;
}

unint64_t sub_1CABEC6E0()
{
  result = qword_1EC463E88;
  if (!qword_1EC463E88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC463E60);
    sub_1CABEC76C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC463E88);
  }

  return result;
}

unint64_t sub_1CABEC76C()
{
  result = qword_1EC463E90;
  if (!qword_1EC463E90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC463E58);
    sub_1CAB23B0C(&qword_1EC463E98, &qword_1EC463E50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC463E90);
  }

  return result;
}

uint64_t sub_1CABEC824(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CABEC88C()
{
  type metadata accessor for EventEditView();

  return sub_1CABDFCA8();
}

uint64_t sub_1CABEC90C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464020);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465AC0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v28 - v8;
  v10 = type metadata accessor for EventModelObject();
  v11 = *(v0 + v10[35]);
  if (v11 && *(v11 + 16))
  {
    v12 = v10;
    sub_1CAB23A9C(v0 + v10[34], v9, &qword_1EC465AC0);
    v13 = type metadata accessor for EventOrganizerModelObject(0);
    if ((*(*(v13 - 8) + 48))(v9, 1, v13) == 1)
    {
      sub_1CAB21B68(v9, &qword_1EC465AC0);
LABEL_11:
      v19 = 0;
      return v19 & 1;
    }

    v14 = v9[*(v13 + 36)];
    sub_1CABED504(v9, type metadata accessor for EventOrganizerModelObject);
    v10 = v12;
    if ((v14 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v15 = v10[26];
  sub_1CAB23A9C(v0 + v15, v6, &qword_1EC464020);
  v16 = type metadata accessor for EventCalendarModelObject();
  v17 = *(*(v16 - 8) + 48);
  if (v17(v6, 1, v16) == 1)
  {
    sub_1CAB21B68(v6, &qword_1EC464020);
  }

  else
  {
    v18 = v6[89];
    sub_1CABED504(v6, type metadata accessor for EventCalendarModelObject);
    if ((v18 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  sub_1CAB23A9C(v0 + v15, v4, &qword_1EC464020);
  if (v17(v4, 1, v16) == 1)
  {
    sub_1CAB21B68(v4, &qword_1EC464020);
    v19 = 1;
  }

  else
  {
    v20 = *(v4 + 184);
    v21 = *(v4 + 216);
    v28[6] = *(v4 + 200);
    *v29 = v21;
    *&v29[10] = *(v4 + 226);
    v22 = *(v4 + 120);
    v23 = *(v4 + 152);
    v28[2] = *(v4 + 136);
    v28[3] = v23;
    v28[4] = *(v4 + 168);
    v28[5] = v20;
    v28[0] = *(v4 + 104);
    v28[1] = v22;
    v24 = sub_1CABED4EC(v28);
    v25 = v29[8];
    v26 = v29[24];
    sub_1CABED504(v4, type metadata accessor for EventCalendarModelObject);
    v19 = 1;
    if (v24 != 1 && v25 != 2)
    {
      v19 = v26;
    }
  }

  return v19 & 1;
}

uint64_t sub_1CABECC74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  MEMORY[0x1EEE9AC00]();
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1);
  return a6(v9);
}

uint64_t sub_1CABECD44@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1CAD4CBB4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1CABECDB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464058);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1CAB23A9C(a1, &v5 - v3, &qword_1EC464058);
  return sub_1CAD4CB94();
}

unint64_t sub_1CABECE60()
{
  result = qword_1EC463F48;
  if (!qword_1EC463F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC463F38);
    sub_1CABCD3F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC463F48);
  }

  return result;
}

uint64_t sub_1CABECEE4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1CABECF24(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1CABECF74()
{
  result = qword_1EC463F68;
  if (!qword_1EC463F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC463F60);
    sub_1CABED044();
    sub_1CAD4D004();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC463F68);
  }

  return result;
}

unint64_t sub_1CABED044()
{
  result = qword_1EC463F70;
  if (!qword_1EC463F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC463F70);
  }

  return result;
}

uint64_t sub_1CABED0B0(uint64_t a1)
{
  type metadata accessor for EventEditView();

  return sub_1CABE8730(a1);
}

uint64_t sub_1CABED120(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

uint64_t sub_1CABED134(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

unint64_t sub_1CABED160()
{
  result = qword_1EC463FE8;
  if (!qword_1EC463FE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC463FC8);
    sub_1CABED218();
    sub_1CAB23B0C(&qword_1EC462030, &qword_1EC464008);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC463FE8);
  }

  return result;
}

unint64_t sub_1CABED218()
{
  result = qword_1EC463FF0;
  if (!qword_1EC463FF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC463FC0);
    sub_1CAB23B0C(&qword_1EC463278, &qword_1EC463258);
    sub_1CAB23B0C(&qword_1EC463FF8, &qword_1EC464000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC463FF0);
  }

  return result;
}

uint64_t sub_1CABED31C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1CABED368(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1CABED3B4(uint64_t a1, uint64_t a2, char a3)
{
  type metadata accessor for EventEditView();

  return sub_1CABEBCB0(a1, a2, a3);
}

uint64_t sub_1CABED43C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for EventEditView();

  return sub_1CABEBD24(a1, a2, a3, a4);
}

uint64_t sub_1CABED4EC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1CABED504(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_1CABED564(_OWORD *a1)
{
  result = 0.0;
  *a1 = xmmword_1CAD5B720;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  return result;
}

uint64_t sub_1CABED58C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CABCCCB0;

  return sub_1CABCFD18();
}

uint64_t sub_1CABED670(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for EventEditView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1CABED6E8()
{
  result = qword_1EC464148;
  if (!qword_1EC464148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC464130);
    sub_1CABED7A0();
    sub_1CAB23B0C(&qword_1EC464178, &qword_1EC464180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC464148);
  }

  return result;
}

unint64_t sub_1CABED7A0()
{
  result = qword_1EC464150;
  if (!qword_1EC464150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC464140);
    sub_1CAB23B0C(&qword_1EC464158, &qword_1EC464160);
    sub_1CAB23B0C(&qword_1EC464168, &qword_1EC464170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC464150);
  }

  return result;
}

unint64_t sub_1CABED89C()
{
  result = qword_1EC464200;
  if (!qword_1EC464200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4641E0);
    sub_1CABED954();
    sub_1CAB23B0C(&qword_1EC463838, &qword_1EC463808);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC464200);
  }

  return result;
}

unint64_t sub_1CABED954()
{
  result = qword_1EC464208;
  if (!qword_1EC464208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4641D8);
    sub_1CABEDA0C();
    sub_1CAB23B0C(&qword_1EC464220, &qword_1EC464228);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC464208);
  }

  return result;
}

unint64_t sub_1CABEDA0C()
{
  result = qword_1EC464210;
  if (!qword_1EC464210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4641D0);
    sub_1CABEDD34(&qword_1EC464218, type metadata accessor for TitleEditor);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC464210);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{
  v1 = (type metadata accessor for EventEditView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463E08);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  v6 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463E80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1CAD4C6A4();
    (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1CABEDC78(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for EventEditView() - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t sub_1CABEDD34(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CABEDD7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1CABEDE04()
{
  result = qword_1EC464248;
  if (!qword_1EC464248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC463E40);
    sub_1CABEDEBC();
    sub_1CAB23B0C(&qword_1EC464260, &qword_1EC464268);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC464248);
  }

  return result;
}

unint64_t sub_1CABEDEBC()
{
  result = qword_1EC464250;
  if (!qword_1EC464250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC464258);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC463E68);
    type metadata accessor for EventModelObject();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC463E60);
    sub_1CABEC6E0();
    swift_getOpaqueTypeConformance2();
    sub_1CABEDD34(&qword_1EC463EA0, type metadata accessor for EventModelObject);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC464250);
  }

  return result;
}

unint64_t sub_1CABEE034()
{
  result = qword_1EC464270;
  if (!qword_1EC464270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC464278);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC464270);
  }

  return result;
}

uint64_t type metadata accessor for CreateFamilyCalendarShareeView()
{
  result = qword_1EC464280;
  if (!qword_1EC464280)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CABEE148()
{
  sub_1CABEE264(319, &qword_1EC464290, type metadata accessor for CreateFamilyCalendarViewModel);
  if (v0 <= 0x3F)
  {
    sub_1CABEE264(319, &qword_1EC463A50, MEMORY[0x1E697BF88]);
    if (v1 <= 0x3F)
    {
      sub_1CABEE2B8(319, &qword_1EC464298, &qword_1EC4642A0);
      if (v2 <= 0x3F)
      {
        sub_1CABEE2B8(319, &qword_1EC4642A8, &qword_1EC4642B0);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1CABEE264(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1CAD4C6C4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1CABEE2B8(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_1CAD4D9C4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1CABEE328(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v15 = MEMORY[0x1E69E7CC0];
  if (a3 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1CAD4E604())
  {
    v6 = 0;
    v11 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1CCAA7940](v6, a3);
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v14 = v7;
      a1(&v13, &v14);
      if (v3)
      {

        return v11;
      }

      if (v13)
      {
        MEMORY[0x1CCAA7460]();
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1CAD4E234();
        }

        sub_1CAD4E264();
        v11 = v15;
      }

      ++v6;
      if (v9 == i)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1CABEE4D4(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC465A70);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v25 - v9;
  v11 = sub_1CAD4C0F4();
  v12 = MEMORY[0x1EEE9AC00](v11);
  v31 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v26 = &v25 - v14;
  v27 = v15;
  v16 = (v15 + 48);
  v30 = (v15 + 32);
  v17 = MEMORY[0x1E69E7CC0];
  v28 = a1;
  v29 = a4;
  while (1)
  {
    v33 = a3;
    a1(&v33);
    if (v4)
    {
      break;
    }

    if ((*v16)(v10, 1, v11) == 1)
    {
      result = sub_1CAB21B68(v10, &unk_1EC465A70);
    }

    else
    {
      v19 = v16;
      v20 = *v30;
      v21 = v26;
      (*v30)(v26, v10, v11);
      v20(v31, v21, v11);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_1CAD35218(0, v17[2] + 1, 1, v17);
      }

      v23 = v17[2];
      v22 = v17[3];
      if (v23 >= v22 >> 1)
      {
        v17 = sub_1CAD35218(v22 > 1, v23 + 1, 1, v17);
      }

      v17[2] = v23 + 1;
      result = (v20)(v17 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v23, v31, v11);
      a1 = v28;
      a4 = v29;
      v16 = v19;
    }

    if (a4 == a3)
    {
      return v17;
    }

    if (__OFADD__(a3++, 1))
    {
      __break(1u);
      return result;
    }
  }

  return v17;
}

uint64_t sub_1CABEE798()
{
  v1 = sub_1CAD4CC04();
  v22 = *(v1 - 8);
  v23 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v21 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = *(type metadata accessor for CreateFamilyCalendarShareeView() + 24);
  v24 = v0;
  v4 = (v0 + v3);
  v6 = *v4;
  v5 = v4[1];
  v26 = v6;
  v27 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464310);
  sub_1CAD4D994();
  v7 = v25;
  v26 = MEMORY[0x1E69E7CC0];
  if (v25 >> 62)
  {
LABEL_20:
    v8 = sub_1CAD4E604();
  }

  else
  {
    v8 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  while (v8 != v9)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1CCAA7940](v9, v7);
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v11 = *(v7 + 8 * v9 + 32);

      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }
    }

    v13 = [*(v11 + 16) duplicate];

    ++v9;
    if (v13)
    {
      MEMORY[0x1CCAA7460](v14);
      if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1CAD4E234();
      }

      sub_1CAD4E264();
      v10 = v26;
      v9 = v12;
    }
  }

  v15 = sub_1CACD0248(v10);

  v16 = *(v24 + 8);

  if ((v16 & 1) == 0)
  {
    sub_1CAD4E3F4();
    v17 = sub_1CAD4D184();
    sub_1CAD4C534();

    v18 = v21;
    sub_1CAD4CBF4();
    swift_getAtKeyPath();

    (*(v22 + 8))(v18, v23);
  }

  sub_1CAC35D3C(v15);
}

uint64_t sub_1CABEEA74()
{
  v1 = v0;
  v2 = sub_1CAD4CC04();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  v7 = *(v1 + 8);

  if ((v7 & 1) == 0)
  {
    sub_1CAD4E3F4();
    v8 = sub_1CAD4D184();
    sub_1CAD4C534();

    sub_1CAD4CBF4();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
    v6 = v19;
  }

  swift_getKeyPath();
  v19 = v6;
  sub_1CABF252C(&qword_1EC4642B8, type metadata accessor for CreateFamilyCalendarViewModel);
  sub_1CAD4C424();

  v9 = *(v6 + 120);
  v10 = v9;

  if (v9)
  {
    v12 = sub_1CAD4E414();

    MEMORY[0x1EEE9AC00](v13);
    *(&v18 - 2) = v1;
    v14 = sub_1CABEE328(sub_1CABF21CC, (&v18 - 4), v12);

    v15 = (v1 + *(type metadata accessor for CreateFamilyCalendarShareeView() + 24));
    v17 = *v15;
    v16 = v15[1];
    v19 = v17;
    v20 = v16;
    v18 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464310);
    return sub_1CAD4D9A4();
  }

  return result;
}

id sub_1CABEECE4@<X0>(id *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v39 = a3;
  v38 = a2;
  v4 = sub_1CAD4CC04();
  v36 = *(v4 - 8);
  v37 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = [*a1 fullName];
  if (v8)
  {
    v9 = v8;
    v10 = sub_1CAD4DF94();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v13 = [v7 appleID];
  if (v13)
  {
    v14 = v13;
    v15 = sub_1CAD4DF94();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  v18 = [v7 memberPhoneNumbers];
  if (v18)
  {
    v19 = v18;
    v20 = sub_1CAD4DF94();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  sub_1CABF21E8();
  result = sub_1CABEF0C0(v10, v12, v15, v17, v20, v22);
  if (result)
  {
    v24 = result;
    v25 = [v7 firstName];
    [v24 setFirstName_];

    v26 = [v7 lastName];
    [v24 setLastName_];

    v27 = *v38;
    v28 = *(v38 + 8);

    if ((v28 & 1) == 0)
    {
      sub_1CAD4E3F4();
      v29 = sub_1CAD4D184();
      sub_1CAD4C534();

      sub_1CAD4CBF4();
      swift_getAtKeyPath();

      (*(v36 + 8))(v6, v37);
      v27 = v40;
    }

    swift_getKeyPath();
    v40 = v27;
    sub_1CABF252C(&qword_1EC4642B8, type metadata accessor for CreateFamilyCalendarViewModel);
    sub_1CAD4C424();

    v30 = *(v27 + 112);
    swift_unknownObjectRetain();

    if (v30)
    {
      v31 = [v30 profilePictureForFamilyMember:v7 pictureDiameter:38.0];
      swift_unknownObjectRelease();
      if (v31)
      {
        v30 = sub_1CAD4C024();
        v33 = v32;

LABEL_18:
        type metadata accessor for EKShareeWithData();
        v34 = swift_allocObject();
        sub_1CAD4C454();
        *(v34 + 16) = v24;
        *(v34 + 24) = v30;
        *(v34 + 32) = v33;
        result = [v24 shareeAccessLevel];
        *(v34 + 40) = result == 2;
        *v39 = v34;
        return result;
      }

      v30 = 0;
    }

    v33 = 0xF000000000000000;
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

id sub_1CABEF0C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_1CAD4DF54();

    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v9 = 0;
    if (a6)
    {
      goto LABEL_4;
    }

LABEL_7:
    v10 = 0;
    goto LABEL_8;
  }

  v8 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v9 = sub_1CAD4DF54();

  if (!a6)
  {
    goto LABEL_7;
  }

LABEL_4:
  v10 = sub_1CAD4DF54();

LABEL_8:
  v11 = [swift_getObjCClassFromMetadata() shareeWithName:v8 emailAddress:v9 phoneNumber:v10];

  return v11;
}

uint64_t sub_1CABEF1A8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v16[2] = a1;
  FamilyCalendarShareeView = type metadata accessor for CreateFamilyCalendarShareeView();
  v4 = FamilyCalendarShareeView - 8;
  v5 = *(FamilyCalendarShareeView - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](FamilyCalendarShareeView);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4642C0);
  v16[1] = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v16 - v8;
  *v9 = sub_1CAD4CD94();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4642C8);
  sub_1CABEF4C8(v2, &v9[*(v10 + 44)]);
  sub_1CABF15E0(v2, v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  sub_1CABF1644(v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  v13 = &v9[*(v7 + 36)];
  sub_1CAD4C824();
  sub_1CAD4E2E4();
  *v13 = &unk_1CAD5C430;
  *(v13 + 1) = v12;
  v17 = *&v2[*(v4 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4642D0);
  sub_1CAD4D9B4();
  sub_1CABF15E0(v2, v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = swift_allocObject();
  sub_1CABF1644(v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v11);
  type metadata accessor for EKShareeWithData();
  type metadata accessor for EditShareeView();
  sub_1CABF178C();
  sub_1CABF252C(&qword_1EC4642F8, type metadata accessor for EKShareeWithData);
  sub_1CABF252C(&qword_1EC464300, type metadata accessor for EditShareeView);
  sub_1CAD4D6F4();

  return sub_1CAB2CA14(v9);
}

uint64_t sub_1CABEF4C8@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  FamilyCalendarShareeView = type metadata accessor for CreateFamilyCalendarShareeView();
  v75 = *(FamilyCalendarShareeView - 8);
  MEMORY[0x1EEE9AC00](FamilyCalendarShareeView - 8);
  v76 = v4;
  v77 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464320);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v82 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v81 = &v65 - v8;
  v72 = sub_1CAD4C944();
  v71 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v69 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464328);
  v66 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v11 = &v65 - v10;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464330);
  v67 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v65 = &v65 - v12;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464338);
  v73 = *(v80 - 8);
  v13 = MEMORY[0x1EEE9AC00](v80);
  v74 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v88 = &v65 - v15;
  v16 = sub_1CAD4CC04();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1CAD4DF24();
  MEMORY[0x1EEE9AC00](v20 - 8);
  v21 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v21 - 8);
  v22 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v22 - 8);
  v91 = sub_1CAD4D8F4();
  v90 = sub_1CAD4D244();
  KeyPath = swift_getKeyPath();
  sub_1CAD4DEE4();
  v23 = CUIKBundle();
  sub_1CAD4C184();
  v87 = sub_1CAD4DFC4();
  v86 = v24;
  sub_1CAD4DF14();
  sub_1CAD4DF04();
  v25 = *a1;
  v79 = a1;
  if (a1[8] == 1)
  {
    v113 = v25;
  }

  else
  {

    sub_1CAD4E3F4();
    v26 = sub_1CAD4D184();
    sub_1CAD4C534();

    sub_1CAD4CBF4();
    swift_getAtKeyPath();

    (*(v17 + 8))(v19, v16);
    v25 = v113;
  }

  swift_getKeyPath();
  v99 = v25;
  sub_1CABF252C(&qword_1EC4642B8, type metadata accessor for CreateFamilyCalendarViewModel);
  sub_1CAD4C424();

  sub_1CAD4DEF4();

  sub_1CAD4DF04();
  sub_1CAD4DF34();
  v27 = CUIKBundle();
  sub_1CAD4C184();
  v85 = sub_1CAD4DFC4();
  v84 = v28;
  v83 = sub_1CAD4D1F4();
  v29 = sub_1CAD4C5F4();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v114 = 0;
  MEMORY[0x1EEE9AC00](v29);
  v38 = v79;
  *(&v65 - 2) = v79;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464340);
  sub_1CABF2258();
  sub_1CAD4D354();
  v39 = v69;
  sub_1CAD4DCF4();
  v40 = sub_1CAB23B0C(&qword_1EC464390, &qword_1EC464328);
  v41 = sub_1CABF252C(&qword_1EC464398, MEMORY[0x1E697C1F8]);
  v42 = v65;
  v43 = v68;
  v44 = v72;
  sub_1CAD4D794();
  (*(v71 + 8))(v39, v44);
  (*(v66 + 8))(v11, v43);
  v99 = v43;
  v100 = v44;
  v101 = v40;
  v102 = v41;
  swift_getOpaqueTypeConformance2();
  v45 = v88;
  v46 = v70;
  sub_1CAD4D664();
  (*(v67 + 8))(v42, v46);
  v47 = v77;
  sub_1CABF15E0(v38, v77);
  v48 = (*(v75 + 80) + 16) & ~*(v75 + 80);
  v49 = swift_allocObject();
  sub_1CABF1644(v47, v49 + v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4643A0);
  sub_1CABF25D0();
  v50 = v81;
  sub_1CAD4D9E4();
  v51 = v73;
  v52 = *(v73 + 16);
  v53 = v74;
  v54 = v45;
  v55 = v80;
  v52(v74, v54, v80);
  v56 = v82;
  sub_1CAB23A9C(v50, v82, &qword_1EC464320);
  *&v92 = v91;
  *(&v92 + 1) = KeyPath;
  *&v93 = v90;
  *(&v93 + 1) = v87;
  *&v94 = v86;
  *(&v94 + 1) = v85;
  *&v95 = v84;
  BYTE8(v95) = v83;
  HIDWORD(v95) = *&v115[3];
  *(&v95 + 9) = *v115;
  *&v96 = v31;
  *(&v96 + 1) = v33;
  *&v97 = v35;
  *(&v97 + 1) = v37;
  v98 = 0;
  v57 = v97;
  v58 = v78;
  *(v78 + 64) = v96;
  *(v58 + 80) = v57;
  *(v58 + 96) = 0;
  v59 = v93;
  *v58 = v92;
  *(v58 + 16) = v59;
  v60 = v95;
  *(v58 + 32) = v94;
  *(v58 + 48) = v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4643B0);
  v52((v58 + v61[12]), v53, v55);
  v62 = v58 + v61[16];
  *v62 = 0;
  *(v62 + 8) = 1;
  sub_1CAB23A9C(v56, v58 + v61[20], &qword_1EC464320);
  sub_1CAB23A9C(&v92, &v99, &qword_1EC4643B8);
  sub_1CAB21B68(v50, &qword_1EC464320);
  v63 = *(v51 + 8);
  v63(v88, v55);
  sub_1CAB21B68(v56, &qword_1EC464320);
  v63(v53, v55);
  v99 = v91;
  v100 = KeyPath;
  v101 = v90;
  v102 = v87;
  v103 = v86;
  v104 = v85;
  v105 = v84;
  v106 = v83;
  *v107 = *v115;
  *&v107[3] = *&v115[3];
  v108 = v31;
  v109 = v33;
  v110 = v35;
  v111 = v37;
  v112 = 0;
  return sub_1CAB21B68(&v99, &qword_1EC4643B8);
}