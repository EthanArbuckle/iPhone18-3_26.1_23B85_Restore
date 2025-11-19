uint64_t sub_1CAC64E1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4635D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CAC64F40()
{
  result = sub_1CAD4BC94();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1CAC65008@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CAC69FE4(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  v4 = OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__displayOrganizer;
  swift_beginAccess();
  return sub_1CAB23A9C(v3 + v4, a2, &qword_1EC465AC8);
}

uint64_t sub_1CAC650E0(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465AC8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9[-v5];
  sub_1CAB23A9C(a1, &v9[-v5], &qword_1EC465AC8);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_1CAC69FE4(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C414();

  return sub_1CAB21B68(v6, &qword_1EC465AC8);
}

BOOL sub_1CAC65230()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464020);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v34 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465AC0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v34 - v6;
  v8 = type metadata accessor for EventModelObject();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v35 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v34 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v34 - v14;
  swift_getKeyPath();
  v16 = OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel___observationRegistrar;
  *&v39[0] = v1;
  v17 = sub_1CAC69FE4(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  v37 = v16;
  v36 = v17;
  sub_1CAD4C424();

  v18 = OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__eventModelObject;
  swift_beginAccess();
  sub_1CAC69EC8(v1 + v18, v15, type metadata accessor for EventModelObject);
  sub_1CAB23A9C(&v15[v8[34]], v7, &qword_1EC465AC0);
  sub_1CAC6A238(v15, type metadata accessor for EventModelObject);
  v19 = type metadata accessor for EventOrganizerModelObject(0);
  if ((*(*(v19 - 8) + 48))(v7, 1, v19) == 1)
  {
    sub_1CAB21B68(v7, &qword_1EC465AC0);
    return 0;
  }

  v20 = v7[*(v19 + 36)];
  sub_1CAC6A238(v7, type metadata accessor for EventOrganizerModelObject);
  if ((v20 & 1) == 0)
  {
    return 0;
  }

  swift_getKeyPath();
  *&v39[0] = v1;
  sub_1CAD4C424();

  sub_1CAC69EC8(v1 + v18, v13, type metadata accessor for EventModelObject);
  sub_1CAB23A9C(&v13[v8[26]], v4, &qword_1EC464020);
  sub_1CAC6A238(v13, type metadata accessor for EventModelObject);
  v21 = type metadata accessor for EventCalendarModelObject();
  if ((*(*(v21 - 8) + 48))(v4, 1, v21) == 1)
  {
    sub_1CAB21B68(v4, &qword_1EC464020);
    return 0;
  }

  v22 = *(v4 + 184);
  v23 = *(v4 + 216);
  v39[6] = *(v4 + 200);
  *v40 = v23;
  *&v40[10] = *(v4 + 226);
  v24 = *(v4 + 120);
  v25 = *(v4 + 152);
  v39[2] = *(v4 + 136);
  v39[3] = v25;
  v39[4] = *(v4 + 168);
  v39[5] = v22;
  v39[0] = *(v4 + 104);
  v39[1] = v24;
  if (sub_1CABED4EC(v39) == 1)
  {
    v26 = type metadata accessor for EventCalendarModelObject;
LABEL_8:
    sub_1CAC6A238(v4, v26);
    return 0;
  }

  v27 = v40[8];
  v28 = *&v40[24];
  sub_1CAC6A238(v4, type metadata accessor for EventCalendarModelObject);
  if (v27 == 2 || (v28 & 0x100) == 0)
  {
    return 0;
  }

  swift_getKeyPath();
  v38 = v1;
  sub_1CAD4C424();

  v4 = v35;
  v30 = sub_1CAC69EC8(v1 + v18, v35, type metadata accessor for EventModelObject);
  v31 = *&v4[v8[35]];
  if (!v31)
  {
    v26 = type metadata accessor for EventModelObject;
    goto LABEL_8;
  }

  MEMORY[0x1EEE9AC00](v30);
  *(&v34 - 2) = v4;

  v32 = sub_1CAC1C2E8(sub_1CAC6AAD4, (&v34 - 4), v31);
  sub_1CAC6A238(v4, type metadata accessor for EventModelObject);
  v33 = *(v32 + 16);

  return v33 != 0;
}

uint64_t sub_1CAC657CC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CAC69FE4(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  v4 = *(v3 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__selectedCalendarID + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__selectedCalendarID);
  a2[1] = v4;
}

uint64_t sub_1CAC65884(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1CACF4540(v1, v2);
}

id sub_1CAC658C4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v44 - v5;
  v7 = type metadata accessor for EventOrganizerModelObject(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = [a1 organizer];
  if (v10)
  {
    v11 = v10;
    v12 = [objc_allocWithZone(CUIKAvatarImageRenderer) init];
    v13 = [objc_allocWithZone(MEMORY[0x1E695CD80]) init];
    [v13 setStyle_];
    v14 = sub_1CAC6A550(v11);
    result = [v13 stringFromContact_];
    v55 = v13;
    if (result || (result = [v11 nameUsingAddressAsBackup]) != 0)
    {
      v16 = result;
      v49 = sub_1CAD4DF94();
      v50 = v17;

      v18 = [v12 imageForContact:v14 size:{30.0, 30.0}];
      v51 = sub_1CAD4D8E4();
      v19 = [v11 emailAddress];
      if (v19)
      {
        v20 = v19;
        v21 = sub_1CAD4DF94();
        v47 = v22;
        v48 = v21;
      }

      else
      {
        v47 = 0;
        v48 = 0;
      }

      v25 = [v11 phoneNumber];
      v53 = v12;
      v54 = a2;
      v52 = v14;
      if (v25)
      {
        v26 = v25;
        v27 = sub_1CAD4DF94();
        v45 = v28;
        v46 = v27;
      }

      else
      {
        v45 = 0;
        v46 = 0;
      }

      v29 = [v11 URL];
      sub_1CAD4BFC4();
      v30 = sub_1CAD4BFF4();
      v31 = *(*(v30 - 8) + 56);
      v31(v6, 0, 1, v30);
      result = [v11 semanticIdentifier];
      if (result)
      {
        v32 = result;

        v33 = sub_1CAD4DF94();
        v35 = v34;

        v36 = v7[7];
        v31(v9 + v36, 1, 1, v30);
        v37 = (v9 + v7[10]);
        v38 = v50;
        *v9 = v49;
        v9[1] = v38;
        v39 = v47;
        v9[2] = v48;
        v9[3] = v39;
        v40 = v45;
        v9[4] = v46;
        v9[5] = v40;
        sub_1CABC6AC8(v6, v9 + v36, &qword_1EC465450);
        v41 = (v9 + v7[8]);
        *v41 = v33;
        v41[1] = v35;
        *(v9 + v7[9]) = 0;
        *v37 = 0;
        v37[1] = 0;
        *(v9 + v7[11]) = 0;
        v42 = v54;
        sub_1CAC6AA38(v9, v54, type metadata accessor for EventOrganizerModelObject);
        v43 = type metadata accessor for DisplayOrganizerPerson(0);
        *(v42 + *(v43 + 20)) = v11;
        *(v42 + *(v43 + 24)) = v51;
        return (*(*(v43 - 8) + 56))(v42, 0, 1, v43);
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v23 = type metadata accessor for DisplayOrganizerPerson(0);
    v24 = *(*(v23 - 8) + 56);

    return v24(a2, 1, 1, v23);
  }

  return result;
}

id sub_1CAC65D20(uint64_t a1)
{
  v2 = type metadata accessor for DisplayPerson(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() attendeesWithoutSelfOrganizerAndLocationsWithEvent:a1 outSelfOrganizer:0];
  if (!result)
  {
    goto LABEL_17;
  }

  v7 = result;
  sub_1CABD4070(0, &unk_1EC461EF0);
  v8 = sub_1CAD4E214();

  if (v8 >> 62)
  {
    v9 = sub_1CAD4E604();
    if (v9)
    {
      goto LABEL_4;
    }

LABEL_14:

    return MEMORY[0x1E69E7CC0];
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_4:
  v17 = MEMORY[0x1E69E7CC0];
  result = sub_1CACBA26C(0, v9 & ~(v9 >> 63), 0);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    v11 = v17;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x1CCAA7940](v10, v8);
      }

      else
      {
        v12 = *(v8 + 8 * v10 + 32);
      }

      v13 = v12;
      sub_1CAC65F64(v12, v5);

      v17 = v11;
      v15 = *(v11 + 16);
      v14 = *(v11 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1CACBA26C(v14 > 1, v15 + 1, 1);
        v11 = v17;
      }

      ++v10;
      *(v11 + 16) = v15 + 1;
      sub_1CAC6AA38(v5, v11 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v15, type metadata accessor for DisplayPerson);
    }

    while (v9 != v10);

    return v11;
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

id sub_1CAC65F64@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v43 - v4;
  v6 = type metadata accessor for EventAttendeeModelObject(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = [objc_allocWithZone(CUIKAvatarImageRenderer) init];
  v10 = [objc_allocWithZone(MEMORY[0x1E695CD80]) init];
  [v10 setStyle_];
  v11 = sub_1CAC6A550(v54);
  result = [v10 stringFromContact_];
  v53 = v10;
  if (!result)
  {
    result = [v54 nameUsingAddressAsBackup];
    if (!result)
    {
      goto LABEL_14;
    }
  }

  v13 = result;
  v14 = sub_1CAD4DF94();
  v48 = v15;
  v49 = v14;

  v51 = [v9 imageForContact:v11 size:{30.0, 30.0}];
  v50 = sub_1CAD4D8E4();
  v16 = [v54 emailAddress];
  if (v16)
  {
    v17 = v16;
    v18 = sub_1CAD4DF94();
    v46 = v19;
    v47 = v18;
  }

  else
  {
    v46 = 0;
    v47 = 0;
  }

  v20 = [v54 phoneNumber];
  v52 = a2;
  if (v20)
  {
    v21 = v20;
    v22 = sub_1CAD4DF94();
    v44 = v23;
    v45 = v22;
  }

  else
  {
    v44 = 0;
    v45 = 0;
  }

  v24 = [v54 URL];
  sub_1CAD4BFC4();
  v25 = sub_1CAD4BFF4();
  v26 = *(*(v25 - 8) + 56);
  v26(v5, 0, 1, v25);
  result = [v54 semanticIdentifier];
  v43 = v5;
  if (!result)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  v27 = result;

  v28 = sub_1CAD4DF94();
  v30 = v29;

  v31 = [v54 participantStatus];
  v32 = v6[7];
  v26(v8 + v32, 1, 1, v25);
  v33 = (v8 + v6[10]);
  v34 = (v8 + v6[14]);
  v35 = v48;
  *v8 = v49;
  v8[1] = v35;
  v36 = v46;
  v8[2] = v47;
  v8[3] = v36;
  v37 = v44;
  v8[4] = v45;
  v8[5] = v37;
  sub_1CABC6AC8(v43, v8 + v32, &qword_1EC465450);
  v38 = (v8 + v6[8]);
  *v38 = v28;
  v38[1] = v30;
  *(v8 + v6[9]) = 0;
  *v33 = 0;
  v33[1] = 0;
  *(v8 + v6[11]) = v31;
  *(v8 + v6[12]) = 1;
  *(v8 + v6[13]) = 1;
  *v34 = 0;
  v34[1] = 0;
  v39 = v52;
  sub_1CAC6AA38(v8, v52, type metadata accessor for EventAttendeeModelObject);
  v40 = type metadata accessor for DisplayPerson(0);
  v41 = v54;
  *(v39 + v40[5]) = v54;
  v42 = v51;
  *(v39 + v40[6]) = v50;
  *(v39 + v40[7]) = v42;

  return v41;
}

id sub_1CAC66350()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_1CAD4C0F4();
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1CAD4BC94();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4679C0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v19 - v10;
  v12 = sub_1CAD4E304();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_1CAD4E2C4();

  v13 = sub_1CAD4E2B4();
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E85E0];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v1;
  v14[5] = v2;
  sub_1CACA6D34(0, 0, v11, &unk_1CAD61898, v14);

  swift_getKeyPath();
  v20 = v1;
  sub_1CAC69FE4(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  result = [v1[2] startDate];
  if (result)
  {
    v17 = result;
    sub_1CAD4C0B4();

    swift_getKeyPath();
    v20 = v1;
    sub_1CAD4C424();

    result = [v1[2] endDateUnadjustedForLegacyClients];
    if (result)
    {
      v18 = result;
      sub_1CAD4C0B4();

      sub_1CAD4BC54();
      sub_1CACF1DA4(v8);
      return (*(v6 + 8))(v8, v5);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1CAC666C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4679C0);
  v5[5] = swift_task_alloc();
  v5[6] = sub_1CAD4E2C4();
  v5[7] = sub_1CAD4E2B4();
  v7 = sub_1CAD4E2A4();

  return MEMORY[0x1EEE6DFA0](sub_1CAC6679C, v7, v6);
}

uint64_t sub_1CAC6679C()
{
  v1 = v0[5];
  v2 = v0[3];

  swift_getKeyPath();
  v0[2] = v2;
  sub_1CAC69FE4(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  v3 = *(v2 + 16);
  v4 = sub_1CAC65D20(v3);

  v5 = sub_1CAD4E304();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);

  v6 = sub_1CAD4E2B4();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E85E0];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v2;
  v7[5] = v4;
  sub_1CACA6D34(0, 0, v1, &unk_1CAD618A8, v7);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1CAC66954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1CAD4E2C4();
  v5[4] = sub_1CAD4E2B4();
  v7 = sub_1CAD4E2A4();

  return MEMORY[0x1EEE6DFA0](sub_1CAC669EC, v7, v6);
}

uint64_t sub_1CAC669EC()
{
  v1 = *(v0 + 24);

  sub_1CACF4660(v1);
  v2 = *(v0 + 8);

  return v2();
}

id sub_1CAC66A58()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465AC8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v46 = &v42 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464E38);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v47 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v42 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465AC0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v45 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v42 - v12;
  swift_getKeyPath();
  v51 = v0;
  sub_1CAC69FE4(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  v14 = v0 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__eventModelObject;
  swift_beginAccess();
  v15 = type metadata accessor for EventModelObject();
  sub_1CAB23A9C(v14 + *(v15 + 136), v13, &qword_1EC465AC0);
  v16 = type metadata accessor for EventOrganizerModelObject(0);
  v43 = *(v16 - 8);
  v44 = v16;
  v17 = (*(v43 + 48))(v13, 1);
  sub_1CAB21B68(v13, &qword_1EC465AC0);
  if (v17 == 1 || (swift_getKeyPath(), v51 = v1, sub_1CAD4C424(), , sub_1CAB23A9C(v14 + *(v15 + 144), v8, &qword_1EC464E38), v18 = type metadata accessor for EventAttendeeModelObject(0), v19 = (*(*(v18 - 8) + 48))(v8, 1, v18), result = sub_1CAB21B68(v8, &qword_1EC464E38), v19 == 1))
  {
    swift_getKeyPath();
    v51 = v1;
    sub_1CAD4C424();

    v21 = v1[2];
    swift_getKeyPath();
    v51 = v1;
    v22 = v21;
    sub_1CAD4C424();

    v23 = [v1[2] calendar];
    [v22 addOrganizerAndSelfAttendeeForNewInvitationInCalendar:v23 force:1];

    swift_getKeyPath();
    v51 = v1;
    sub_1CAD4C424();

    v24 = [v1[2] organizer];
    v25 = v14;
    v26 = v15;
    if (v24)
    {
      v27 = v24;
      objc_opt_self();
      v28 = swift_dynamicCastObjCClass();
      if (v28)
      {
        v29 = v28;
        v30 = sub_1CAC6A298();
        v51 = v29;
        v52 = v29;
        v53 = &type metadata for EKParticipantModelWrapper;
        v54 = v30;
        v49 = &type metadata for EKOrganizerModelWrapper;
        v50 = sub_1CAC6A3F0();
        v48[0] = swift_allocObject();
        sub_1CAC6A484(&v51, v48[0] + 16);
        v31 = v27;
        v32 = v45;
        EventOrganizerModelObject.init(_:)(v48, v45);
        (*(v43 + 56))(v32, 0, 1, v44);
        swift_getKeyPath();
        v48[0] = v1;
        sub_1CAD4C424();

        v48[0] = v1;
        swift_getKeyPath();
        sub_1CAD4C444();

        swift_beginAccess();
        sub_1CABC6AC8(v32, v25 + *(v26 + 136), &qword_1EC465AC0);
        swift_endAccess();
        v48[0] = v1;
        swift_getKeyPath();
        sub_1CAD4C434();

        swift_getKeyPath();
        v48[0] = v1;
        sub_1CAD4C424();

        v33 = v1[2];
        v34 = v46;
        sub_1CAC658C4(v33, v46);

        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        *(&v42 - 2) = v1;
        *(&v42 - 1) = v34;
        v48[0] = v1;
        sub_1CAD4C414();

        sub_1CAC6A4FC(&v51);
        sub_1CAB21B68(v34, &qword_1EC465AC8);
      }

      else
      {
      }
    }

    swift_getKeyPath();
    v48[0] = v1;
    sub_1CAD4C424();

    result = [v1[2] selfAttendee];
    if (result)
    {
      v36 = result;
      v37 = sub_1CAC6A298();
      v51 = v36;
      v52 = v36;
      v53 = &type metadata for EKParticipantModelWrapper;
      v54 = v37;
      v49 = &type metadata for EKAttendeeModelWrapper;
      v50 = sub_1CAC6A2EC();
      v48[0] = swift_allocObject();
      sub_1CAC6A340(&v51, v48[0] + 16);
      v38 = v36;
      v39 = v26;
      v40 = v47;
      EventAttendeeModelObject.init(_:)(v48, v47);
      v41 = type metadata accessor for EventAttendeeModelObject(0);
      (*(*(v41 - 8) + 56))(v40, 0, 1, v41);
      swift_getKeyPath();
      v48[0] = v1;
      sub_1CAD4C424();

      v48[0] = v1;
      swift_getKeyPath();
      sub_1CAD4C444();

      swift_beginAccess();
      sub_1CABC6AC8(v40, v25 + *(v39 + 144), &qword_1EC464E38);
      swift_endAccess();
      v48[0] = v1;
      swift_getKeyPath();
      sub_1CAD4C434();

      return sub_1CAC6A39C(&v51);
    }
  }

  return result;
}

void sub_1CAC672DC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v190 = &v162 - v3;
  v188 = type metadata accessor for EventAttendeeModelObject(0);
  v197 = *(v188 - 8);
  v4 = MEMORY[0x1EEE9AC00](v188);
  v192 = &v162 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v189 = &v162 - v6;
  v183 = type metadata accessor for EventModelObject();
  MEMORY[0x1EEE9AC00](v183);
  v195 = &v162 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CAD4C0F4();
  v185 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v174 = &v162 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464E40);
  v10 = MEMORY[0x1EEE9AC00](v196);
  v176 = &v162 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v162 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC465A70);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v180 = &v162 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v181 = &v162 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v175 = &v162 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v184 = &v162 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v193 = &v162 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v194 = &v162 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = &v162 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v162 - v30;
  v177 = *(v0 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel_availabilityQueue);
  [v177 cancelAllOperations];
  swift_getKeyPath();
  v32 = OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel___observationRegistrar;
  aBlock = v0;
  v33 = sub_1CAC69FE4(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  v34 = *(v0 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__editDataSource);
  swift_getKeyPath();
  aBlock = v1;
  v35 = v34;
  v187 = v32;
  v186 = v33;
  sub_1CAD4C424();

  v36 = sub_1CAD4DF54();

  v37 = [v35 calendarWithIdentifier_];

  if (!v37)
  {
    return;
  }

  v38 = [v37 source];
  if (!v38)
  {

    return;
  }

  v166 = v38;
  v165 = v37;
  v182 = swift_allocObject();
  *(v182 + 16) = 0;
  v170 = swift_allocObject();
  *(v170 + 16) = 0;
  v39 = swift_allocObject();
  v40 = MEMORY[0x1E69E7CC0];
  v41 = sub_1CAC28754(MEMORY[0x1E69E7CC0]);
  v172 = v39;
  *(v39 + 16) = v41;
  v191 = (v39 + 16);
  v42 = swift_allocObject();
  v43 = sub_1CAC2893C(v40);
  v171 = v42;
  *(v42 + 16) = v43;
  swift_getKeyPath();
  aBlock = v1;
  sub_1CAD4C424();

  v44 = v1 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__eventModelObject;
  swift_beginAccess();
  v45 = v183[7];
  v46 = v185;
  v47 = *(v185 + 16);
  v173 = v44;
  v168 = v185 + 16;
  v163 = v47;
  v47(v31, v44 + v45, v8);
  v48 = v46 + 56;
  v49 = *(v46 + 56);
  v50 = 1;
  v179 = v48;
  v178 = v49;
  v49(v31, 0, 1, v8);
  swift_getKeyPath();
  aBlock = v1;
  sub_1CAD4C424();

  v51 = [v1[2] startDate];
  if (v51)
  {
    v52 = v51;
    sub_1CAD4C0B4();

    v50 = 0;
  }

  v53 = v194;
  v178(v29, v50, 1, v8);
  v54 = *(v196 + 48);
  sub_1CAB23A9C(v31, v13, &unk_1EC465A70);
  sub_1CAB23A9C(v29, &v13[v54], &unk_1EC465A70);
  v56 = v185 + 48;
  v55 = *(v185 + 48);
  v57 = v55(v13, 1, v8);
  v169 = v1;
  v164 = v55;
  v167 = v56;
  if (v57 == 1)
  {
    sub_1CAB21B68(v29, &unk_1EC465A70);
    sub_1CAB21B68(v31, &unk_1EC465A70);
    if (v55(&v13[v54], 1, v8) == 1)
    {
      sub_1CAB21B68(v13, &unk_1EC465A70);
      v58 = v190;
      goto LABEL_13;
    }

LABEL_11:
    sub_1CAB21B68(v13, &qword_1EC464E40);
    LODWORD(v194) = 1;
    v58 = v190;
    v59 = v195;
    goto LABEL_25;
  }

  sub_1CAB23A9C(v13, v53, &unk_1EC465A70);
  if (v55(&v13[v54], 1, v8) == 1)
  {
    sub_1CAB21B68(v29, &unk_1EC465A70);
    sub_1CAB21B68(v31, &unk_1EC465A70);
    (*(v185 + 8))(v53, v8);
    goto LABEL_11;
  }

  v60 = v185;
  v61 = &v13[v54];
  v62 = v174;
  (*(v185 + 32))(v174, v61, v8);
  sub_1CAC69FE4(&unk_1EC465A80, MEMORY[0x1E6969530]);
  v63 = sub_1CAD4DED4();
  v64 = v53;
  v65 = *(v60 + 8);
  v65(v62, v8);
  sub_1CAB21B68(v29, &unk_1EC465A70);
  sub_1CAB21B68(v31, &unk_1EC465A70);
  v65(v64, v8);
  v1 = v169;
  sub_1CAB21B68(v13, &unk_1EC465A70);
  v58 = v190;
  if ((v63 & 1) == 0)
  {
    LODWORD(v194) = 1;
    v59 = v195;
    goto LABEL_25;
  }

LABEL_13:
  swift_getKeyPath();
  aBlock = v1;
  sub_1CAD4C424();

  v66 = v193;
  v163(v193, v173 + v183[8], v8);
  v67 = 1;
  v178(v66, 0, 1, v8);
  swift_getKeyPath();
  aBlock = v1;
  sub_1CAD4C424();

  v68 = [v1[2] endDate];
  if (v68)
  {
    v69 = v184;
    v70 = v68;
    sub_1CAD4C0B4();

    v67 = 0;
    v71 = v176;
    v72 = v175;
  }

  else
  {
    v71 = v176;
    v72 = v175;
    v69 = v184;
  }

  v178(v69, v67, 1, v8);
  v73 = *(v196 + 48);
  v74 = v193;
  sub_1CAB23A9C(v193, v71, &unk_1EC465A70);
  sub_1CAB23A9C(v69, v71 + v73, &unk_1EC465A70);
  v75 = v164;
  if (v164(v71, 1, v8) == 1)
  {
    sub_1CAB21B68(v69, &unk_1EC465A70);
    sub_1CAB21B68(v74, &unk_1EC465A70);
    v76 = v75(v71 + v73, 1, v8);
    v59 = v195;
    if (v76 == 1)
    {
      sub_1CAB21B68(v71, &unk_1EC465A70);
      LODWORD(v194) = 0;
      goto LABEL_25;
    }
  }

  else
  {
    sub_1CAB23A9C(v71, v72, &unk_1EC465A70);
    v77 = v75(v71 + v73, 1, v8);
    v78 = v72;
    v59 = v195;
    if (v77 != 1)
    {
      v80 = v185;
      v81 = v71 + v73;
      v82 = v174;
      (*(v185 + 32))(v174, v81, v8);
      sub_1CAC69FE4(&unk_1EC465A80, MEMORY[0x1E6969530]);
      v83 = sub_1CAD4DED4();
      v84 = *(v80 + 8);
      v84(v82, v8);
      sub_1CAB21B68(v184, &unk_1EC465A70);
      sub_1CAB21B68(v193, &unk_1EC465A70);
      v84(v78, v8);
      v1 = v169;
      sub_1CAB21B68(v71, &unk_1EC465A70);
      v79 = v83 ^ 1;
      goto LABEL_24;
    }

    sub_1CAB21B68(v184, &unk_1EC465A70);
    sub_1CAB21B68(v193, &unk_1EC465A70);
    (*(v185 + 8))(v78, v8);
  }

  sub_1CAB21B68(v71, &qword_1EC464E40);
  v79 = 1;
LABEL_24:
  LODWORD(v194) = v79;
LABEL_25:
  swift_getKeyPath();
  aBlock = v1;
  sub_1CAD4C424();

  v85 = sub_1CAC69EC8(v173, v59, type metadata accessor for EventModelObject);
  v86 = *(v59 + v183[35]);
  if (!v86)
  {

    sub_1CAC6A238(v59, type metadata accessor for EventModelObject);
    goto LABEL_55;
  }

  MEMORY[0x1EEE9AC00](v85);
  *(&v162 - 2) = v59;

  v87 = sub_1CAC1C2E8(sub_1CAC69EA8, (&v162 - 4), v86);
  v176 = 0;
  sub_1CAC6A238(v59, type metadata accessor for EventModelObject);
  v196 = v87;
  v88 = *(v87 + 16);
  v184 = v8;
  v89 = v188;
  v90 = v189;
  if (v88)
  {
    v91 = 0;
    v193 = v196 + ((*(v197 + 80) + 32) & ~*(v197 + 80));
    v92 = &qword_1EC465450;
    while (v91 < *(v196 + 16))
    {
      v93 = v197[9];
      sub_1CAC69EC8(v193 + v93 * v91, v90, type metadata accessor for EventAttendeeModelObject);
      if ((v194 & 1) != 0 || (v94 = *(v90 + *(v89 + 44)), v94 <= 1))
      {
        v195 = v93;
        sub_1CAB23A9C(v90 + *(v89 + 28), v58, v92);
        v95 = v90;
        v96 = sub_1CAD4BFF4();
        v97 = v92;
        v98 = *(v96 - 8);
        if ((*(v98 + 48))(v58, 1, v96) == 1)
        {
          sub_1CAC6A238(v95, type metadata accessor for EventAttendeeModelObject);
          sub_1CAB21B68(v58, v97);
          v90 = v95;
          v92 = v97;
        }

        else
        {
          v99 = v88;
          v100 = v97;
          v101 = sub_1CAD4BFA4();
          v103 = v102;
          (*(v98 + 8))(v58, v96);
          sub_1CAC69EC8(v95, v192, type metadata accessor for EventAttendeeModelObject);
          v104 = v191;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          aBlock = *v104;
          v106 = aBlock;
          *v104 = 0x8000000000000000;
          v108 = sub_1CAC1628C(v101, v103);
          v109 = v106[2];
          v110 = (v107 & 1) == 0;
          v111 = v109 + v110;
          if (__OFADD__(v109, v110))
          {
            goto LABEL_68;
          }

          v112 = v107;
          if (v106[3] >= v111)
          {
            v115 = v195;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1CAC79348();
            }
          }

          else
          {
            sub_1CAC775F0(v111, isUniquelyReferenced_nonNull_native);
            v113 = sub_1CAC1628C(v101, v103);
            v115 = v195;
            if ((v112 & 1) != (v114 & 1))
            {
              goto LABEL_73;
            }

            v108 = v113;
          }

          v92 = v100;
          v88 = v99;
          if (v112)
          {

            v119 = aBlock;
            sub_1CAC69F80(v192, aBlock[7] + v108 * v115);
            v90 = v189;
            sub_1CAC6A238(v189, type metadata accessor for EventAttendeeModelObject);
          }

          else
          {
            v119 = aBlock;
            aBlock[(v108 >> 6) + 8] |= 1 << v108;
            v120 = (v119[6] + 16 * v108);
            *v120 = v101;
            v120[1] = v103;
            sub_1CAC6AA38(v192, v119[7] + v108 * v115, type metadata accessor for EventAttendeeModelObject);
            v90 = v189;
            sub_1CAC6A238(v189, type metadata accessor for EventAttendeeModelObject);
            v121 = v119[2];
            v117 = __OFADD__(v121, 1);
            v122 = v121 + 1;
            if (v117)
            {
              goto LABEL_69;
            }

            v119[2] = v122;
          }

          *v191 = v119;

          v8 = v184;
          v58 = v190;
          v89 = v188;
        }
      }

      else
      {
        sub_1CAC6A238(v90, type metadata accessor for EventAttendeeModelObject);
        if (v94 == 3)
        {
          v116 = *(v182 + 16);
          v117 = __OFADD__(v116, 1);
          v118 = v116 + 1;
          if (v117)
          {
            goto LABEL_70;
          }

          *(v182 + 16) = v118;
        }
      }

      if (v88 == ++v91)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

LABEL_48:
  if (!*(*v191 + 16))
  {

    v142 = *(v182 + 16);
    v143 = OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__numberOfConflicts;
    v144 = v169;
    if (*(v169 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__numberOfConflicts) != v142)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *(&v162 - 2) = v144;
      *(&v162 - 1) = v142;
      aBlock = v144;
      sub_1CAD4C414();

      return;
    }

    *(v144 + v143) = v142;
LABEL_55:

    return;
  }

  v123 = swift_allocObject();
  v124 = v171;
  v123[2] = v172;
  v123[3] = v124;
  v197 = v123;
  v123[4] = v170;
  swift_getKeyPath();
  v125 = v169;
  aBlock = v169;

  v195 = v166;
  sub_1CAD4C424();

  v126 = v183;
  v127 = v173;
  v128 = v181;
  v129 = v163;
  v163(v181, v173 + v183[7], v8);
  v130 = v178;
  v178(v128, 0, 1, v8);
  swift_getKeyPath();
  aBlock = v125;
  sub_1CAD4C424();

  v131 = v127 + v126[8];
  v132 = v180;
  v129(v180, v131, v8);
  v130(v132, 0, 1, v8);
  swift_getKeyPath();
  aBlock = v125;
  sub_1CAD4C424();

  v133 = v125[2];
  swift_beginAccess();
  v134 = *(v172 + 16);
  v135 = *(v134 + 16);
  if (!v135)
  {
    v145 = v133;
    v136 = MEMORY[0x1E69E7CC0];
    v140 = v164;
    v141 = v197;
    v139 = v181;
LABEL_57:
    sub_1CACC3610(v136);

    v146 = v140(v139, 1, v8);

    if (v146 == 1)
    {
      v147 = 0;
    }

    else
    {
      v148 = sub_1CAD4C084();
      v140 = v164;
      v147 = v148;
      (*(v185 + 8))(v139, v8);
    }

    if (v140(v132, 1, v8) == 1)
    {
      v149 = 0;
    }

    else
    {
      v149 = sub_1CAD4C084();
      (*(v185 + 8))(v132, v8);
    }

    v150 = objc_allocWithZone(MEMORY[0x1E6966AE0]);
    v151 = sub_1CAD4E1F4();

    v202 = sub_1CAC69F30;
    v203 = v141;
    aBlock = MEMORY[0x1E69E9820];
    v199 = 1107296256;
    v200 = sub_1CAC69E18;
    v201 = &block_descriptor_3;
    v152 = _Block_copy(&aBlock);

    v153 = v195;
    v154 = [v150 initWithSource:v195 startDate:v147 endDate:v149 ignoredEvent:v133 addresses:v151 resultsBlock:v152];
    _Block_release(v152);

    if (v154)
    {

      v155 = swift_allocObject();
      swift_weakInit();
      v156 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v157 = swift_allocObject();
      v158 = v182;
      v157[2] = v156;
      v157[3] = v158;
      v157[4] = v170;
      v157[5] = v155;
      v157[6] = v171;
      v202 = sub_1CAC69F54;
      v203 = v157;
      aBlock = MEMORY[0x1E69E9820];
      v199 = 1107296256;
      v200 = sub_1CAC69DD4;
      v201 = &block_descriptor_34;
      v159 = _Block_copy(&aBlock);

      v160 = v154;

      [v160 setCompletionBlock_];
      _Block_release(v159);

      [v177 addOperation_];

      return;
    }

    goto LABEL_72;
  }

  v136 = sub_1CAC2A184(*(v134 + 16), 0);
  v137 = sub_1CAC2A328(&aBlock, v136 + 4, v135, v134);
  v138 = v133;

  sub_1CAC297D0();
  if (v137 == v135)
  {
    v8 = v184;
    v132 = v180;
    v139 = v181;
    v140 = v164;
    v141 = v197;
    goto LABEL_57;
  }

LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  sub_1CAD4EA34();
  __break(1u);
}

void sub_1CAC68DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4679C0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v19 - v9;
  if (a1)
  {
    v11 = sub_1CAD4E304();
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
    sub_1CAD4E2C4();

    v12 = sub_1CAD4E2B4();
    v13 = swift_allocObject();
    v14 = MEMORY[0x1E69E85E0];
    v13[2] = v12;
    v13[3] = v14;
    v13[4] = a1;
    v13[5] = a2;
    v13[6] = a3;
    v13[7] = a4;
    sub_1CACA6D34(0, 0, v10, &unk_1CAD61840, v13);
  }

  else
  {
    if (qword_1EC462388 != -1)
    {
      swift_once();
    }

    v15 = sub_1CAD4C564();
    __swift_project_value_buffer(v15, qword_1EC47D838);
    v20 = sub_1CAD4C544();
    v16 = sub_1CAD4E404();
    if (os_log_type_enabled(v20, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1CAB19000, v20, v16, "No results for availability request", v17, 2u);
      MEMORY[0x1CCAA9440](v17, -1, -1);
    }

    v18 = v20;
  }
}

uint64_t sub_1CAC68FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[34] = a6;
  v7[35] = a7;
  v7[32] = a4;
  v7[33] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464E38);
  v7[36] = swift_task_alloc();
  v8 = type metadata accessor for EventAttendeeModelObject(0);
  v7[37] = v8;
  v7[38] = *(v8 - 8);
  v7[39] = swift_task_alloc();
  sub_1CAD4E2C4();
  v7[40] = sub_1CAD4E2B4();
  v10 = sub_1CAD4E2A4();

  return MEMORY[0x1EEE6DFA0](sub_1CAC69114, v10, v9);
}

void *sub_1CAC69114()
{
  v1 = v0[38];
  v70 = v0[37];
  v2 = v0[32];

  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  if (-v4 < 64)
  {
    v5 = ~(-1 << -v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(v2 + 64);

  swift_beginAccess();
  v7 = 0;
  v8 = (63 - v4) >> 6;
  v71 = v1;
  v74 = (v1 + 48);
  v75 = (v1 + 56);
  v73 = v2;
  while (v6)
  {
LABEL_12:
    v10 = __clz(__rbit64(v6)) | (v7 << 6);
    sub_1CAC6A1DC(*(v2 + 48) + 40 * v10, (v0 + 2));
    sub_1CABD3CDC(*(v2 + 56) + 32 * v10, (v0 + 7));
    sub_1CAC6A1DC((v0 + 2), (v0 + 11));
    if (swift_dynamicCast())
    {
      v11 = v0[30];
      v76 = v0[29];
      sub_1CABD3CDC((v0 + 7), (v0 + 16));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465AA8);
      if (swift_dynamicCast())
      {
        v12 = v0[31];
        v13 = objc_opt_self();
        sub_1CACC37B8(v12);

        v14 = sub_1CAD4E1F4();

        v15 = [v13 summarizedAvailabilityTypeForSpans_];

        swift_beginAccess();
        v16 = sub_1CAC1628C(v76, v11);
        v72 = v15;
        if (v17)
        {
          v18 = v16;
          v19 = v0[33];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v21 = *(v19 + 16);
          *(v19 + 16) = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_1CAC79348();
          }

          v22 = v0[36];
          v23 = v0[33];

          sub_1CAC6AA38(*(v21 + 56) + *(v71 + 72) * v18, v22, type metadata accessor for EventAttendeeModelObject);
          sub_1CAC25970(v18, v21);
          *(v23 + 16) = v21;

          v24 = 0;
        }

        else
        {
          v24 = 1;
        }

        v26 = v0[36];
        v25 = v0[37];
        (*v75)(v26, v24, 1, v25);
        swift_endAccess();

        if ((*v74)(v26, 1, v25) == 1)
        {
          sub_1CAB21B68(v0[36], &qword_1EC464E38);
          v2 = v73;
        }

        else
        {
          v27 = v0[39];
          v28 = v0[34];
          sub_1CAC6AA38(v0[36], v27, type metadata accessor for EventAttendeeModelObject);
          v29 = (v27 + *(v70 + 32));
          v31 = *v29;
          v30 = v29[1];
          swift_beginAccess();
          v32 = swift_isUniquelyReferenced_nonNull_native();
          v79 = *(v28 + 16);
          *(v28 + 16) = 0x8000000000000000;
          v77 = v31;
          v78 = v30;
          v34 = sub_1CAC1628C(v31, v30);
          v35 = *(v79 + 16);
          v36 = (v33 & 1) == 0;
          result = (v35 + v36);
          if (__OFADD__(v35, v36))
          {
            __break(1u);
LABEL_59:
            __break(1u);
LABEL_60:
            __break(1u);
LABEL_61:
            __break(1u);
            return result;
          }

          v38 = v33;
          if (*(v79 + 24) >= result)
          {
            if (v32)
            {
              v39 = v79;
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC465AB0);
              v50 = sub_1CAD4E7B4();
              v39 = v50;
              v51 = *(v79 + 16);
              if (v51)
              {
                result = (v50 + 64);
                v52 = ((1 << *(v39 + 32)) + 63) >> 6;
                if (v39 != v79 || result >= v79 + 64 + 8 * v52)
                {
                  result = memmove(result, (v79 + 64), 8 * v52);
                  v51 = *(v79 + 16);
                }

                v53 = 0;
                *(v39 + 16) = v51;
                v54 = 1 << *(v79 + 32);
                if (v54 < 64)
                {
                  v55 = ~(-1 << v54);
                }

                else
                {
                  v55 = -1;
                }

                v56 = v55 & *(v79 + 64);
                v57 = (v54 + 63) >> 6;
                v68 = v57;
                if (v56)
                {
                  do
                  {
                    v58 = __clz(__rbit64(v56));
                    v69 = (v56 - 1) & v56;
LABEL_48:
                    v61 = v58 | (v53 << 6);
                    v62 = (*(v79 + 48) + 16 * v61);
                    v64 = *v62;
                    v63 = v62[1];
                    v65 = *(*(v79 + 56) + 8 * v61);
                    v66 = (*(v39 + 48) + 16 * v61);
                    *v66 = v64;
                    v66[1] = v63;
                    *(*(v39 + 56) + 8 * v61) = v65;

                    v57 = v68;
                    v56 = v69;
                  }

                  while (v69);
                }

                v59 = v53;
                while (1)
                {
                  v53 = v59 + 1;
                  if (__OFADD__(v59, 1))
                  {
                    goto LABEL_61;
                  }

                  if (v53 >= v57)
                  {
                    break;
                  }

                  v60 = *(v79 + 64 + 8 * v53);
                  ++v59;
                  if (v60)
                  {
                    v58 = __clz(__rbit64(v60));
                    v69 = (v60 - 1) & v60;
                    goto LABEL_48;
                  }
                }
              }
            }

            v40 = v78;
          }

          else
          {
            sub_1CAC78354(result, v32);
            v39 = v79;
            v40 = v78;
            result = sub_1CAC1628C(v77, v78);
            if ((v38 & 1) != (v41 & 1))
            {
LABEL_55:

              return sub_1CAD4EA34();
            }

            v34 = result;
          }

          if (v38)
          {
            *(*(v39 + 56) + 8 * v34) = v72;
          }

          else
          {
            *(v39 + 8 * (v34 >> 6) + 64) |= 1 << v34;
            v42 = (*(v39 + 48) + 16 * v34);
            *v42 = v77;
            v42[1] = v40;
            *(*(v39 + 56) + 8 * v34) = v72;
            v43 = *(v39 + 16);
            v44 = __OFADD__(v43, 1);
            v45 = v43 + 1;
            if (v44)
            {
              goto LABEL_60;
            }

            *(v39 + 16) = v45;
          }

          v46 = v0[39];
          v47 = v0[35];
          *(v0[34] + 16) = v39;
          swift_endAccess();
          result = sub_1CAC6A238(v46, type metadata accessor for EventAttendeeModelObject);
          v48 = *(v47 + 16);
          v44 = __OFADD__(v48, 1);
          v49 = v48 + 1;
          v2 = v73;
          if (v44)
          {
            goto LABEL_59;
          }

          *(v0[35] + 16) = v49;
        }
      }

      else
      {
      }
    }

    v6 &= v6 - 1;
    sub_1CAB21B68((v0 + 2), &qword_1EC465AA0);
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_55;
    }

    if (v9 >= v8)
    {
      break;
    }

    v6 = *(v3 + 8 * v9);
    ++v7;
    if (v6)
    {
      v7 = v9;
      goto LABEL_12;
    }
  }

  v67 = v0[1];

  return v67();
}

void sub_1CAC69818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4679C0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v20 - v10;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    if (([Strong isCancelled] & 1) == 0)
    {
      v14 = [v13 error];
      v15 = sub_1CAD4E304();
      (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
      sub_1CAD4E2C4();
      v16 = v14;

      v17 = sub_1CAD4E2B4();
      v18 = swift_allocObject();
      v19 = MEMORY[0x1E69E85E0];
      v18[2] = v17;
      v18[3] = v19;
      v18[4] = v14;
      v18[5] = a2;
      v18[6] = a3;
      v18[7] = a4;
      v18[8] = a5;
      sub_1CACA6D34(0, 0, v11, &unk_1CAD61830, v18);
    }
  }
}

uint64_t sub_1CAC699E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[20] = a7;
  v8[21] = a8;
  v8[18] = a5;
  v8[19] = a6;
  v8[17] = a4;
  sub_1CAD4E2C4();
  v8[22] = sub_1CAD4E2B4();
  v10 = sub_1CAD4E2A4();

  return MEMORY[0x1EEE6DFA0](sub_1CAC69A88, v10, v9);
}

uint64_t sub_1CAC69A88()
{
  v1 = v0[17];

  if (v1)
  {
    v2 = v0[17];
    v3 = v2;
    if (qword_1EC462388 != -1)
    {
      swift_once();
    }

    v4 = sub_1CAD4C564();
    __swift_project_value_buffer(v4, qword_1EC47D838);
    v5 = v2;
    v6 = sub_1CAD4C544();
    v7 = sub_1CAD4E404();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = v2;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v11;
      *v9 = v11;
      _os_log_impl(&dword_1CAB19000, v6, v7, "Error encountered during availability request: %@", v8, 0xCu);
      sub_1CAB21B68(v9, &unk_1EC465A90);
      MEMORY[0x1CCAA9440](v9, -1, -1);
      MEMORY[0x1CCAA9440](v8, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v12 = v0[18];
    v13 = v0[19];
    swift_beginAccess();
    v14 = *(v12 + 16);
    result = swift_beginAccess();
    v16 = *(v13 + 16);
    v17 = v14 + v16;
    if (__OFADD__(v14, v16))
    {
      __break(1u);
      return result;
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      if (*(Strong + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__numberOfConflicts) == v17)
      {
      }

      else
      {
        v19 = Strong;
        swift_getKeyPath();
        v20 = swift_task_alloc();
        *(v20 + 16) = v19;
        *(v20 + 24) = v17;
        v0[11] = v19;
        sub_1CAC69FE4(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
        sub_1CAD4C414();
      }
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      swift_beginAccess();

      sub_1CACF66B0(v21);
    }
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_1CAC69DD4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1CAC69E18(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = sub_1CAD4DE94();
  }

  else
  {
    v3 = 0;
  }

  v2(v3);
}

uint64_t sub_1CAC69EC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1CAC69F80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventAttendeeModelObject(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CAC69FE4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CAC6A02C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1CABCD46C;

  return sub_1CAC699E8(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1CAC6A108(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1CABCD46C;

  return sub_1CAC68FE4(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1CAC6A238(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1CAC6A298()
{
  result = qword_1EDA5F710;
  if (!qword_1EDA5F710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA5F710);
  }

  return result;
}

unint64_t sub_1CAC6A2EC()
{
  result = qword_1EC4622D8;
  if (!qword_1EC4622D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4622D8);
  }

  return result;
}

unint64_t sub_1CAC6A3F0()
{
  result = qword_1EC4622A0;
  if (!qword_1EC4622A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4622A0);
  }

  return result;
}

uint64_t objectdestroy_50Tm()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

id sub_1CAC6A550(void *a1)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v2 = [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
  v3 = [a1 contactPredicate];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464E60);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1CAD61750;
  *(v4 + 32) = [objc_opt_self() descriptorForRequiredKeysForStyle_];
  *(v4 + 40) = [objc_opt_self() descriptorForRequiredKeys];
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC465AD0);
  v5 = sub_1CAD4E1F4();

  v25[0] = 0;
  v6 = [v2 unifiedContactsMatchingPredicate:v3 keysToFetch:v5 error:v25];

  v7 = v25[0];
  if (!v6)
  {
    v12 = v25[0];
    v13 = sub_1CAD4BF54();

    swift_willThrow();
    goto LABEL_11;
  }

  sub_1CABD4070(0, &qword_1EC466E30);
  v8 = sub_1CAD4E214();
  v9 = v7;

  if (v8 >> 62)
  {
    if (sub_1CAD4E604())
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_10:

LABEL_11:
    v14 = [a1 nameUsingAddressAsBackup];
    if (v14)
    {
      v15 = v14;
      sub_1CAD4DF94();
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = [a1 emailAddress];
    if (v18 || (v18 = [a1 phoneNumber]) != 0)
    {
      v19 = v18;
      sub_1CAD4DF94();
      v21 = v20;

      if (v17)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v21 = 0;
      if (v17)
      {
LABEL_17:
        v22 = sub_1CAD4DF54();

        if (v21)
        {
LABEL_18:
          v23 = sub_1CAD4DF54();

LABEL_22:
          v11 = [objc_opt_self() contactWithDisplayName:v22 emailOrPhoneNumber:v23];

          v2 = v23;
          goto LABEL_23;
        }

LABEL_21:
        v23 = 0;
        goto LABEL_22;
      }
    }

    v22 = 0;
    if (v21)
    {
      goto LABEL_18;
    }

    goto LABEL_21;
  }

LABEL_4:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x1CCAA7940](0, v8);
  }

  else
  {
    if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v10 = *(v8 + 32);
  }

  v11 = v10;

LABEL_23:

  return v11;
}

uint64_t sub_1CAC6A8B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1CABCCCB0;

  return sub_1CAC666C8(a1, v4, v5, v7, v6);
}

uint64_t sub_1CAC6A978(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1CABCD46C;

  return sub_1CAC66954(a1, v4, v5, v7, v6);
}

uint64_t sub_1CAC6AA38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CAC6AAF4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1CAC6AB8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CAD4CE14();
  MEMORY[0x1EEE9AC00](v4);
  (*(*(a2 - 8) + 16))(&v7 - v5, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_1CAD4CE24();
}

uint64_t sub_1CAC6AC84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1CAD4CE14();
  MEMORY[0x1EEE9AC00](v5);
  (*(*(a3 - 8) + 16))(&v8 - v6, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_1CAD4CE24();
}

uint64_t sub_1CAC6AD7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v19 = a3;
  v20 = a1;
  v21 = a4;
  v17[3] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC465B58);
  swift_getAssociatedTypeWitness();
  type metadata accessor for PickerMenuGroup();
  sub_1CAD4E294();
  v18 = a2;
  sub_1CAD4E294();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC465B60);
  v17[2] = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1CAD4DB84();
  sub_1CAD4DBE4();
  swift_getWitnessTable();
  sub_1CAD4DB84();
  v36 = sub_1CAB23B0C(&qword_1EC465B68, &qword_1EC465B60);
  WitnessTable = swift_getWitnessTable();
  v33 = MEMORY[0x1E6981140];
  v34 = WitnessTable;
  v35 = MEMORY[0x1E6981E58];
  v32 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1CAD4DA54();
  v7 = sub_1CAD4C8B4();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4644E0);
  v17[1] = sub_1CAD4C904();
  sub_1CAD4DB84();
  v25 = MEMORY[0x1E6981140];
  v30 = AssociatedConformanceWitness;
  v31 = swift_getWitnessTable();
  v26 = sub_1CAD4DA54();
  v27 = v7;
  v28 = swift_getWitnessTable();
  v29 = MEMORY[0x1E697C170];
  swift_getOpaqueTypeMetadata2();
  sub_1CAD4C904();
  sub_1CAD4CE34();
  sub_1CAD4E4D4();
  sub_1CAD4CE34();
  swift_getTupleTypeMetadata2();
  sub_1CAD4DD64();
  swift_getWitnessTable();
  v8 = sub_1CAD4DA24();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v17 - v13;
  v22 = v18;
  v23 = v19;
  v24 = v20;
  sub_1CAD4CC94();
  sub_1CAD4DA14();
  swift_getWitnessTable();
  sub_1CAC06984(v12);
  v15 = *(v9 + 8);
  v15(v12, v8);
  sub_1CAC06984(v14);
  return (v15)(v14, v8);
}

uint64_t sub_1CAC6B2F4@<X0>(char *a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v226 = a1;
  v215 = a4;
  v206 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1CAD4E294();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v283 = v6;
  *(&v283 + 1) = AssociatedTypeWitness;
  *&v284 = MEMORY[0x1E6981150];
  *(&v284 + 1) = WitnessTable;
  v9 = MEMORY[0x1E6981150];
  *v285 = AssociatedConformanceWitness;
  v10 = sub_1CAD4DB84();
  v277 = MEMORY[0x1E6981140];
  v11 = MEMORY[0x1E6981140];
  v218 = MEMORY[0x1E69819C8];
  v12 = swift_getWitnessTable();
  *&v283 = v9;
  *(&v283 + 1) = AssociatedTypeWitness;
  v176 = v12;
  v177 = v10;
  *&v284 = v10;
  *(&v284 + 1) = v11;
  *v285 = AssociatedConformanceWitness;
  *&v285[8] = v12;
  v13 = sub_1CAD4DA54();
  v179 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v178 = &v175 - v14;
  v15 = sub_1CAD4C8B4();
  v220 = MEMORY[0x1E697D688];
  v16 = swift_getWitnessTable();
  v222 = v13;
  *&v283 = v13;
  *(&v283 + 1) = v15;
  v223 = v16;
  *&v284 = v16;
  *(&v284 + 1) = MEMORY[0x1E697C170];
  v219 = MEMORY[0x1E697CE08];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v181 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v180 = &v175 - v18;
  v214 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4644E0);
  v182 = OpaqueTypeMetadata2;
  v19 = sub_1CAD4C904();
  v185 = *(v19 - 8);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v183 = &v175 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v184 = &v175 - v22;
  v23 = sub_1CAD4E4D4();
  v209 = *(v23 - 8);
  v210 = v23;
  v24 = MEMORY[0x1EEE9AC00](v23);
  v208 = &v175 - v25;
  v190 = *(AssociatedTypeWitness - 8);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v175 = &v175 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v216 = &v175 - v28;
  v224 = v19;
  v225 = sub_1CAD4CE34();
  v193 = *(v225 - 8);
  v29 = MEMORY[0x1EEE9AC00](v225);
  v186 = &v175 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v189 = &v175 - v31;
  v32 = swift_checkMetadataState();
  v204 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v203 = &v175 - v33;
  v34 = sub_1CAD4DB14();
  MEMORY[0x1EEE9AC00](v34 - 8);
  v202 = &v175 - v35;
  v205 = a2;
  type metadata accessor for PickerMenuGroup();
  v36 = sub_1CAD4E294();
  v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC465B60);
  *&v283 = v6;
  *(&v283 + 1) = AssociatedTypeWitness;
  *&v284 = v37;
  *(&v284 + 1) = WitnessTable;
  *v285 = AssociatedConformanceWitness;
  sub_1CAD4DB84();
  v38 = sub_1CAD4DBE4();
  v39 = swift_getWitnessTable();
  *&v283 = v36;
  *(&v283 + 1) = MEMORY[0x1E69E6158];
  *&v284 = v38;
  *(&v284 + 1) = v39;
  *v285 = MEMORY[0x1E69E6168];
  v40 = sub_1CAD4DB84();
  v276 = sub_1CAB23B0C(&qword_1EC465B68, &qword_1EC465B60);
  v41 = AssociatedTypeWitness;
  v42 = swift_getWitnessTable();
  v43 = MEMORY[0x1E6981140];
  v273 = MEMORY[0x1E6981140];
  v274 = v42;
  v275 = MEMORY[0x1E6981E58];
  v272 = swift_getWitnessTable();
  v44 = swift_getWitnessTable();
  *&v283 = MEMORY[0x1E6981150];
  *(&v283 + 1) = AssociatedTypeWitness;
  v198 = v40;
  *&v284 = v40;
  *(&v284 + 1) = v43;
  v207 = AssociatedConformanceWitness;
  *v285 = AssociatedConformanceWitness;
  *&v285[8] = v44;
  v45 = v226;
  v194 = v44;
  v46 = sub_1CAD4DA54();
  v47 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v49 = &v175 - v48;
  v217 = swift_getWitnessTable();
  v218 = v46;
  *&v283 = v46;
  *(&v283 + 1) = v32;
  v221 = v32;
  *&v284 = v217;
  *(&v284 + 1) = MEMORY[0x1E697C170];
  v50 = swift_getOpaqueTypeMetadata2();
  v196 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v175 - v51;
  v197 = v53;
  v54 = sub_1CAD4C904();
  v200 = *(v54 - 8);
  v55 = MEMORY[0x1EEE9AC00](v54);
  v195 = &v175 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v55);
  v199 = &v175 - v57;
  v58 = sub_1CAD4E4D4();
  v192 = *(v58 - 8);
  v59 = MEMORY[0x1EEE9AC00](v58);
  v191 = &v175 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v59);
  v201 = &v175 - v61;
  v211 = v54;
  v220 = v62;
  v63 = sub_1CAD4CE34();
  v213 = *(v63 - 8);
  v214 = v63;
  v64 = MEMORY[0x1EEE9AC00](v63);
  v219 = &v175 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v64);
  v212 = &v175 - v66;
  v67 = *v45;
  if (*&v45[*(*v45 + 112) + 8])
  {

    v188 = sub_1CAD4D8F4();
    sub_1CAD4DC94();
    sub_1CAD4C744();
    v68 = v278;
    v69 = v279;
    v70 = v41;
    v71 = v280;
    v72 = v49;
    v73 = v52;
    v74 = v47;
    v75 = v281;
    v187 = v282;
    v76 = sub_1CAD4CFE4();
    LOBYTE(v258) = v69;
    LOBYTE(v254) = v75;
    *&v283 = v188;
    *(&v283 + 1) = v68;
    LOBYTE(v284) = v69;
    *(&v284 + 1) = v71;
    v41 = v70;
    v285[0] = v75;
    v47 = v74;
    v52 = v73;
    v49 = v72;

    v77 = v187;
    v67 = *v226;
  }

  else
  {
    v76 = 0;
    *v285 = 0;
    v77 = 0uLL;
    v283 = 0u;
    v284 = 0u;
  }

  *&v285[8] = v77;
  *&v285[24] = v76;
  v78 = v216;
  v79 = v210;
  v80 = v208;
  if (!*&v226[v67[15]])
  {
    if (!*&v226[v67[16]])
    {
      v105 = v191;
      (*(v193 + 56))(v191, 1, 1, v225);
      v106 = v221;
      v103 = v222;
      *&v258 = v222;
      *(&v258 + 1) = v221;
      v107 = v223;
      *&v259 = v223;
      *(&v259 + 1) = MEMORY[0x1E697C170];
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v109 = sub_1CAB23B0C(&qword_1EC462028, &qword_1EC4644E0);
      v270 = OpaqueTypeConformance2;
      v271 = v109;
      v268 = swift_getWitnessTable();
      v269 = v268;
      swift_getWitnessTable();
LABEL_15:
      v153 = v220;
      v154 = v192;
      (*(v192 + 16))(v201, v105, v220);
      v226 = *(v154 + 8);
      (v226)(v105, v153);
      *&v258 = v103;
      *(&v258 + 1) = v106;
      *&v259 = v107;
      v155 = MEMORY[0x1E697C170];
      *(&v259 + 1) = MEMORY[0x1E697C170];
      v216 = MEMORY[0x1E697CE08];
      v156 = swift_getOpaqueTypeConformance2();
      v157 = sub_1CAB23B0C(&qword_1EC462028, &qword_1EC4644E0);
      v266 = v156;
      v267 = v157;
      v264 = swift_getWitnessTable();
      v265 = v264;
      v263 = swift_getWitnessTable();
      swift_getWitnessTable();
      v158 = v201;
      sub_1CAC06984(v201);
      *&v258 = v218;
      *(&v258 + 1) = v106;
      v99 = v217;
      *&v259 = v217;
      *(&v259 + 1) = v155;
      v261 = swift_getOpaqueTypeConformance2();
      v262 = v157;
      v159 = v211;
      swift_getWitnessTable();
      v97 = v212;
      sub_1CAC6AC84(v105, v159, v153);
      v160 = v226;
      (v226)(v105, v153);
      v160(v158, v153);
      goto LABEL_16;
    }

    v100 = v209;
    (*(v209 + 16))(v208, &v226[v67[17]], v210);
    v101 = v190;
    v102 = (*(v190 + 48))(v80, 1, v41);
    v103 = v222;
    if (v102 == 1)
    {
      (*(v100 + 8))(v80, v79);
      v104 = v189;
    }

    else
    {
      (*(v101 + 32))(v78, v80, v41);
      v110 = v175;
      v111 = v101;
      sub_1CAC2A928();
      v112 = sub_1CAD4DED4();
      v114 = *(v111 + 8);
      v113 = v111 + 8;
      v210 = v114;
      v114(v110, v41);
      v104 = v189;
      if (v112)
      {
        v115 = &v226[*(*v226 + 104)];
        v116 = *(v115 + 1);
        *&v258 = *v115;
        *(&v258 + 1) = v116;

        v117 = sub_1CAC2A940();
        MEMORY[0x1EEE9AC00](v117);
        v118 = v206;
        *(&v175 - 4) = v205;
        *(&v175 - 3) = v118;
        v174 = sub_1CABA6054();
        v173 = v176;
        v119 = v178;
        sub_1CAD4DA44();
        v120 = v203;
        sub_1CAD4C8A4();
        v121 = v180;
        v190 = v113;
        v106 = v221;
        v122 = v223;
        v123 = MEMORY[0x1E697C170];
        sub_1CAD4D504();
        (*(v204 + 8))(v120, v106);
        (*(v179 + 8))(v119, v103);
        sub_1CAD4D8B4();
        *&v258 = v103;
        *(&v258 + 1) = v106;
        *&v259 = v122;
        *(&v259 + 1) = v123;
        v124 = swift_getOpaqueTypeConformance2();
        v125 = v182;
        v126 = v183;
        sub_1CAD4D6C4();

        (*(v181 + 8))(v121, v125);
        v127 = sub_1CAB23B0C(&qword_1EC462028, &qword_1EC4644E0);
        v234 = v124;
        v235 = v127;
        v128 = v224;
        swift_getWitnessTable();
        v129 = v184;
        sub_1CAC06984(v126);
        v130 = *(v185 + 8);
        v130(v126, v128);
        sub_1CAC06984(v129);
        v104 = v189;
        sub_1CAC6AB8C(v126, v128);
        v131 = v126;
        v103 = v222;
        v130(v131, v128);
        v130(v129, v128);
        v210(v216, v41);
LABEL_14:
        *&v258 = v103;
        *(&v258 + 1) = v106;
        v107 = v223;
        *&v259 = v223;
        *(&v259 + 1) = MEMORY[0x1E697C170];
        v148 = swift_getOpaqueTypeConformance2();
        v149 = sub_1CAB23B0C(&qword_1EC462028, &qword_1EC4644E0);
        v238 = v148;
        v239 = v149;
        v236 = swift_getWitnessTable();
        v237 = v236;
        v150 = v225;
        swift_getWitnessTable();
        v151 = v186;
        sub_1CAC06984(v104);
        v152 = v193;
        (*(v193 + 8))(v104, v150);
        v105 = v191;
        (*(v152 + 32))(v191, v151, v150);
        (*(v152 + 56))(v105, 0, 1, v150);
        goto LABEL_15;
      }

      v210(v78, v41);
    }

    v132 = &v226[*(*v226 + 104)];
    v133 = *(v132 + 1);
    *&v258 = *v132;
    *(&v258 + 1) = v133;

    v134 = sub_1CAC2A940();
    MEMORY[0x1EEE9AC00](v134);
    v135 = v206;
    *(&v175 - 4) = v205;
    *(&v175 - 3) = v135;
    v174 = sub_1CABA6054();
    v173 = v176;
    v136 = v178;
    sub_1CAD4DA44();
    v137 = v203;
    sub_1CAD4C8A4();
    v138 = v180;
    v106 = v221;
    v139 = v223;
    v140 = MEMORY[0x1E697C170];
    sub_1CAD4D504();
    (*(v204 + 8))(v137, v106);
    (*(v179 + 8))(v136, v103);
    sub_1CAD4D8B4();
    *&v258 = v103;
    *(&v258 + 1) = v106;
    *&v259 = v139;
    *(&v259 + 1) = v140;
    v141 = swift_getOpaqueTypeConformance2();
    v142 = v182;
    v143 = v183;
    sub_1CAD4D6C4();

    (*(v181 + 8))(v138, v142);
    v144 = sub_1CAB23B0C(&qword_1EC462028, &qword_1EC4644E0);
    v240 = v141;
    v241 = v144;
    v145 = v224;
    swift_getWitnessTable();
    v146 = v184;
    sub_1CAC06984(v143);
    v147 = *(v185 + 8);
    v147(v143, v145);
    sub_1CAC06984(v146);
    sub_1CAC6AC84(v143, v145, v145);
    v147(v143, v145);
    v147(v146, v145);
    goto LABEL_14;
  }

  v81 = &v226[v67[13]];
  v82 = *(v81 + 1);
  *&v258 = *v81;
  *(&v258 + 1) = v82;

  v83 = sub_1CAC2A940();
  MEMORY[0x1EEE9AC00](v83);
  v84 = v206;
  *(&v175 - 4) = v205;
  *(&v175 - 3) = v84;
  v174 = sub_1CABA6054();
  v173 = v194;
  sub_1CAD4DA44();
  v85 = v203;
  sub_1CAD4C8A4();
  v87 = v217;
  v86 = v218;
  v88 = v221;
  v89 = MEMORY[0x1E697C170];
  sub_1CAD4D504();
  (*(v204 + 8))(v85, v88);
  (*(v47 + 8))(v49, v86);
  sub_1CAD4D8B4();
  *&v258 = v86;
  *(&v258 + 1) = v88;
  *&v259 = v87;
  *(&v259 + 1) = v89;
  v226 = MEMORY[0x1E697CE08];
  v90 = swift_getOpaqueTypeConformance2();
  v91 = v195;
  v92 = v197;
  sub_1CAD4D6C4();

  (*(v196 + 8))(v52, v92);
  v93 = sub_1CAB23B0C(&qword_1EC462028, &qword_1EC4644E0);
  v232 = v90;
  v233 = v93;
  v94 = v211;
  swift_getWitnessTable();
  v95 = v199;
  sub_1CAC06984(v91);
  v96 = *(v200 + 8);
  v96(v91, v94);
  sub_1CAC06984(v95);
  *&v258 = v222;
  *(&v258 + 1) = v88;
  *&v259 = v223;
  *(&v259 + 1) = MEMORY[0x1E697C170];
  v230 = swift_getOpaqueTypeConformance2();
  v231 = v93;
  v228 = swift_getWitnessTable();
  v229 = v228;
  v227 = swift_getWitnessTable();
  swift_getWitnessTable();
  v97 = v212;
  sub_1CAC6AB8C(v91, v94);
  v98 = v91;
  v99 = v217;
  v96(v98, v94);
  v96(v95, v94);
LABEL_16:
  v254 = v283;
  v255 = v284;
  v256[0] = *v285;
  *(v256 + 12) = *&v285[12];
  v257[0] = &v254;
  v162 = v213;
  v161 = v214;
  v163 = v219;
  (*(v213 + 16))(v219, v97, v214);
  v257[1] = v163;
  v253[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465B58);
  v253[1] = v161;
  v251 = sub_1CAC6E2B4(&qword_1EC465B70, &qword_1EC465B58, &unk_1CAD61958, sub_1CAC6E054);
  *&v258 = v218;
  v164 = v221;
  *(&v258 + 1) = v221;
  *&v259 = v99;
  v165 = MEMORY[0x1E697C170];
  *(&v259 + 1) = MEMORY[0x1E697C170];
  v166 = swift_getOpaqueTypeConformance2();
  v167 = sub_1CAB23B0C(&qword_1EC462028, &qword_1EC4644E0);
  v249 = v166;
  v250 = v167;
  v168 = v97;
  v169 = swift_getWitnessTable();
  *&v258 = v222;
  *(&v258 + 1) = v164;
  *&v259 = v223;
  *(&v259 + 1) = v165;
  v247 = swift_getOpaqueTypeConformance2();
  v248 = v167;
  v245 = swift_getWitnessTable();
  v246 = v245;
  v244 = swift_getWitnessTable();
  v170 = swift_getWitnessTable();
  v242 = v169;
  v243 = v170;
  v252 = swift_getWitnessTable();
  sub_1CACDFC20(v257, 2uLL, v253);
  sub_1CAC6E190(&v283);
  v171 = *(v162 + 8);
  v171(v168, v161);
  v171(v219, v161);
  v258 = v254;
  v259 = v255;
  v260[0] = v256[0];
  *(v260 + 12) = *(v256 + 12);
  return sub_1CAC6E190(&v258);
}

uint64_t sub_1CAC6CEB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v24 = a2;
  v22 = a1;
  v26 = a5;
  v25 = type metadata accessor for PickerMenuGroup();
  v7 = sub_1CAD4E294();
  sub_1CAD4E294();
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC465B60);
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  sub_1CAD4DB84();
  v8 = sub_1CAD4DBE4();
  v23 = v7;
  WitnessTable = swift_getWitnessTable();
  v32 = v7;
  v33 = MEMORY[0x1E69E6158];
  v34 = v8;
  v35 = WitnessTable;
  v36 = MEMORY[0x1E69E6168];
  v9 = sub_1CAD4DB84();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &WitnessTable - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &WitnessTable - v14;
  v32 = v22;
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = v24;
  v31 = sub_1CAB23B0C(&qword_1EC465B68, &qword_1EC465B60);

  v17 = swift_getWitnessTable();
  v28 = MEMORY[0x1E6981140];
  v29 = v17;
  v30 = MEMORY[0x1E6981E58];
  v18 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1CAD4DB74();
  v27 = v18;
  swift_getWitnessTable();
  sub_1CAC06984(v13);
  v19 = *(v10 + 8);
  v19(v13, v9);
  sub_1CAC06984(v15);
  return (v19)(v15, v9);
}

uint64_t sub_1CAC6D264@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v14[1] = a2;
  *&v15 = sub_1CAD4E294();
  *(&v15 + 1) = swift_getAssociatedTypeWitness();
  *&v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC465B60);
  *(&v16 + 1) = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1CAD4DB84();
  v3 = sub_1CAD4DBE4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v14 - v8;
  v10 = a1[1];
  v15 = *a1;
  v16 = v10;
  AssociatedConformanceWitness = *(a1 + 4);
  sub_1CAC6D520();
  v14[5] = sub_1CAB23B0C(&qword_1EC465B68, &qword_1EC465B60);
  WitnessTable = swift_getWitnessTable();
  v14[2] = MEMORY[0x1E6981140];
  v14[3] = WitnessTable;
  v14[4] = MEMORY[0x1E6981E58];
  swift_getWitnessTable();
  sub_1CAC06984(v7);
  v12 = *(v4 + 8);
  v12(v7, v3);
  sub_1CAC06984(v9);
  return (v12)(v9, v3);
}

uint64_t sub_1CAC6D520()
{
  sub_1CAD4E294();
  swift_getAssociatedTypeWitness();

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC465B60);
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  sub_1CAD4DB84();
  sub_1CAB23B0C(&qword_1EC465B68, &qword_1EC465B60);
  swift_getWitnessTable();
  sub_1CABA6054();
  return sub_1CAD4DB94();
}

uint64_t sub_1CAC6D6C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v26 = a4;
  v27 = a5;
  v25 = a3;
  v28 = a6;
  v8 = sub_1CAD4E294();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v30 = v8;
  v31 = AssociatedTypeWitness;
  v32 = MEMORY[0x1E6981150];
  v33 = WitnessTable;
  v34 = AssociatedConformanceWitness;
  v11 = sub_1CAD4DB84();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v23 - v16;
  v30 = a1;
  v18 = swift_allocObject();
  v19 = v25;
  *(v18 + 16) = a2;
  *(v18 + 24) = v19;

  v20 = MEMORY[0x1E6981140];
  sub_1CAD4DB74();
  v29 = v20;
  swift_getWitnessTable();
  sub_1CAC06984(v15);
  v21 = *(v12 + 8);
  v21(v15, v11);
  sub_1CAC06984(v17);
  return (v21)(v17, v11);
}

uint64_t sub_1CAC6D92C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  (*(a2 + 24))(a1, a2);
  sub_1CABA6054();
  result = sub_1CAD4D444();
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  return result;
}

uint64_t sub_1CAC6D9A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v22 = a3;
  v23 = a4;
  v6 = sub_1CAD4E294();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC465B60);
  WitnessTable = swift_getWitnessTable();
  v25 = v6;
  v26 = AssociatedTypeWitness;
  v27 = v21;
  v28 = WitnessTable;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = sub_1CAD4DB84();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &WitnessTable - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &WitnessTable - v13;
  v25 = *(a1 + 32);
  v15 = swift_allocObject();
  v16 = v22;
  *(v15 + 16) = a2;
  *(v15 + 24) = v16;
  v17 = sub_1CAB23B0C(&qword_1EC465B68, &qword_1EC465B60);

  sub_1CAD4DB74();
  v24 = v17;
  swift_getWitnessTable();
  sub_1CAC06984(v12);
  v18 = *(v9 + 8);
  v18(v12, v8);
  sub_1CAC06984(v14);
  return (v18)(v14, v8);
}

uint64_t sub_1CAC6DC4C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465B98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465BA0);
  sub_1CAB23B0C(&qword_1EC465BA8, &qword_1EC465B98);
  sub_1CAC6E2B4(&qword_1EC465BB0, &qword_1EC465BA0, &unk_1CAD61980, sub_1CAC6E330);
  return sub_1CAD4D964();
}

uint64_t sub_1CAC6DD78()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465BD8);
  sub_1CAB23B0C(&qword_1EC465BE0, &qword_1EC465BD8);
  return sub_1CAD4C674();
}

uint64_t sub_1CAC6DE20@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  (*(a2 + 24))(a1, a2);
  sub_1CABA6054();
  v6 = sub_1CAD4D444();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  (*(a2 + 32))(a1, a2);
  if (v13)
  {
    v14 = sub_1CAD4D444();
    v16 = v15;
    v18 = v17;
    v20 = v19 & 1;
    sub_1CABA4F48(v14, v15, v19 & 1);
  }

  else
  {
    v14 = 0;
    v16 = 0;
    v20 = 0;
    v18 = 0;
  }

  v21 = v10 & 1;
  sub_1CABA4F48(v6, v8, v21);

  sub_1CABC12F0(v14, v16, v20, v18);
  sub_1CABC1334(v14, v16, v20, v18);
  *a3 = v6;
  *(a3 + 8) = v8;
  *(a3 + 16) = v21;
  *(a3 + 24) = v12;
  *(a3 + 32) = v14;
  *(a3 + 40) = v16;
  *(a3 + 48) = v20;
  *(a3 + 56) = v18;
  sub_1CABC1334(v14, v16, v20, v18);
  sub_1CABA6128(v6, v8, v21);
}

uint64_t sub_1CAC6DFB4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = (*(a2 + 40))(a1, a2);
  v5 = result;
  if (result)
  {
    v6 = sub_1CAD4D8F4();
    result = sub_1CAD4D854();
  }

  else
  {
    v6 = 0;
  }

  *a3 = v6;
  a3[1] = v5;
  a3[2] = result;
  return result;
}

unint64_t sub_1CAC6E054()
{
  result = qword_1EC465B78;
  if (!qword_1EC465B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC465B80);
    sub_1CAC6E10C();
    sub_1CAB23B0C(&qword_1EC462050, &qword_1EC4631C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465B78);
  }

  return result;
}

unint64_t sub_1CAC6E10C()
{
  result = qword_1EC465B88;
  if (!qword_1EC465B88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC465B90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465B88);
  }

  return result;
}

uint64_t sub_1CAC6E190(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465B58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CAC6E2B4(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_1CAC6E330()
{
  result = qword_1EC465BB8;
  if (!qword_1EC465BB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC465BC0);
    sub_1CAB23B0C(&qword_1EC465BC8, &qword_1EC465BD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465BB8);
  }

  return result;
}

uint64_t View.clearButton(enabled:action:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[0] = a1;
  v7 = a2;
  v8 = a3;
  return MEMORY[0x1CCAA69C0](v6, a4, &type metadata for ClearButton, a5);
}

uint64_t sub_1CAC6E47C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v54 = a4;
  v52 = a3;
  LODWORD(v60) = a2;
  v7 = sub_1CAD4CF64();
  v58 = *(v7 - 8);
  v59 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v55 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465BF0);
  v10 = *(v9 - 8);
  v56 = v9;
  v57 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v48 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465BF8);
  v63 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v53 = &v48 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465C00);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v48 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465C08);
  v22 = *(v21 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v62 = &v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v48 - v25;
  v61 = *(v22 + 16);
  v61(&v48 - v25, a1, v21);
  v27 = 1;
  if (v60)
  {
    v49 = v20;
    v50 = v13;
    v51 = v18;
    v60 = a5;
    v28 = swift_allocObject();
    *(v28 + 16) = 1;
    *(v28 + 24) = v52;
    *(v28 + 32) = v54;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465B90);
    sub_1CAC6E10C();
    v29 = v12;
    sub_1CAD4D9E4();
    v30 = v55;
    sub_1CAD4CF54();
    sub_1CAB23B0C(&qword_1EC465C18, &qword_1EC465BF0);
    sub_1CAC6EBF0();
    v31 = v53;
    v32 = v56;
    v33 = v59;
    sub_1CAD4D4E4();
    (*(v58 + 8))(v30, v33);
    (*(v57 + 8))(v29, v32);
    if (qword_1EC462F20 != -1)
    {
      swift_once();
    }

    v34 = qword_1EC47E068;
    KeyPath = swift_getKeyPath();
    v36 = (v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465C20) + 36));
    *v36 = KeyPath;
    v36[1] = v34;

    LOBYTE(v34) = sub_1CAD4D214();
    sub_1CAD4C5F4();
    v20 = v49;
    v13 = v50;
    v37 = v31 + *(v50 + 36);
    *v37 = v34;
    *(v37 + 8) = v38;
    *(v37 + 16) = v39;
    *(v37 + 24) = v40;
    *(v37 + 32) = v41;
    *(v37 + 40) = 0;
    sub_1CAB312C4(v31, v20);
    v27 = 0;
    a5 = v60;
    v18 = v51;
  }

  (*(v63 + 56))(v20, v27, 1, v13);
  v42 = v61;
  v43 = v62;
  v61(v62, v26, v21);
  sub_1CAB3115C(v20, v18);
  v42(a5, v43, v21);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465C10);
  v45 = a5 + *(v44 + 48);
  *v45 = 0;
  *(v45 + 8) = 1;
  sub_1CAB3115C(v18, a5 + *(v44 + 64));
  sub_1CAB311CC(v20);
  v46 = *(v22 + 8);
  v46(v26, v21);
  sub_1CAB311CC(v18);
  return (v46)(v43, v21);
}

uint64_t sub_1CAC6EA64()
{
  sub_1CAD4DCD4();
  sub_1CAD4C834();
}

double sub_1CAC6EAD4@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1CAD4D8F4();
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

uint64_t sub_1CAC6EB68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v7 = *(v2 + 1);
  v6 = *(v2 + 2);
  *a2 = sub_1CAD4CC94();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465BE8);
  return sub_1CAC6E47C(a1, v5, v7, v6, a2 + *(v8 + 44));
}

unint64_t sub_1CAC6EBF0()
{
  result = qword_1EC464380;
  if (!qword_1EC464380)
  {
    sub_1CAD4CF64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC464380);
  }

  return result;
}

uint64_t sub_1CAC6EC48@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CAD4CA24();
  *a1 = result;
  return result;
}

uint64_t sub_1CAC6ECD0(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  v38 = a4;
  v40 = a3;
  v42 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465AC0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v41 = &v37 - v7;
  v44 = type metadata accessor for EventAttendeeModelObject(0);
  v8 = *(v44 - 8);
  v9 = MEMORY[0x1EEE9AC00](v44);
  v43 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v37 - v11;
  v13 = *(a1 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  if (v13)
  {
    v37 = v4;
    v54 = MEMORY[0x1E69E7CC0];
    sub_1CACB9E14(0, v13, 0);
    v15 = a1 + 32;
    v39 = (v8 + 56);
    v14 = v54;
    while (1)
    {
      v16 = *(v15 + 112);
      v50 = *(v15 + 96);
      v51 = v16;
      v52 = *(v15 + 128);
      v53 = *(v15 + 144);
      v17 = *(v15 + 48);
      v47[2] = *(v15 + 32);
      v47[3] = v17;
      v18 = *(v15 + 80);
      v48 = *(v15 + 64);
      v49 = v18;
      v19 = *(v15 + 16);
      v47[0] = *v15;
      v47[1] = v19;
      sub_1CAC80B10(v47, &v46);
      sub_1CAC746B4(v12);
      v20 = v48;
      v21 = BYTE1(v48);
      if (BYTE1(v48) == 2)
      {
        break;
      }

      if (v48)
      {
        goto LABEL_7;
      }

      if ((BYTE1(v48) & 1) == 0)
      {
        goto LABEL_11;
      }

LABEL_10:
      v28 = v40;
      sub_1CAB21B68(v40, &qword_1EC464E38);
      sub_1CAC80954(v12, v28, type metadata accessor for EventAttendeeModelObject);
      (*v39)(v28, 0, 1, v44);
      if ((v20 & 1) == 0)
      {
LABEL_11:
        if ((*&v12[*(v44 + 52)] & 0xFFFFFFFFFFFFFFFELL) != 2)
        {
          sub_1CAC80954(v12, v43, type metadata accessor for EventAttendeeModelObject);
          v29 = v38;
          v30 = *v38;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v29 = v30;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v30 = sub_1CAD3485C(0, v30[2] + 1, 1, v30);
            *v38 = v30;
          }

          v33 = v30[2];
          v32 = v30[3];
          if (v33 >= v32 >> 1)
          {
            v30 = sub_1CAD3485C(v32 > 1, v33 + 1, 1, v30);
            *v38 = v30;
          }

          v30[2] = v33 + 1;
          sub_1CAC80B78(v43, v30 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v33, type metadata accessor for EventAttendeeModelObject);
        }
      }

LABEL_17:
      sub_1CAC80B48(v47);
      v54 = v14;
      v35 = *(v14 + 16);
      v34 = *(v14 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_1CACB9E14(v34 > 1, v35 + 1, 1);
        v14 = v54;
      }

      *(v14 + 16) = v35 + 1;
      sub_1CAC80B78(v12, v14 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v35, type metadata accessor for EventAttendeeModelObject);
      v15 += 152;
      if (!--v13)
      {
        return v14;
      }
    }

    if ((v48 & 1) == 0)
    {
      goto LABEL_11;
    }

    v21 = 0;
LABEL_7:
    v45 = v13;
    v22 = v14;
    v23 = v12;
    v24 = v8;
    v25 = v41;
    sub_1CAC74EDC(v41);
    v26 = type metadata accessor for EventOrganizerModelObject(0);
    (*(*(v26 - 8) + 56))(v25, 0, 1, v26);
    v27 = v25;
    v8 = v24;
    v12 = v23;
    v14 = v22;
    v13 = v45;
    sub_1CABC6AC8(v27, v42, &qword_1EC465AC0);
    if ((v21 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_10;
  }

  return v14;
}

uint64_t sub_1CAC6F130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v17[0] = a1;
  v17[1] = a2;
  v6 = type metadata accessor for EventAlarmModelObject();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (!v10)
  {
    return v11;
  }

  v20 = MEMORY[0x1E69E7CC0];
  sub_1CACBA314(0, v10, 0);
  v11 = v20;
  v12 = (a3 + 40);
  while (1)
  {
    v13 = *v12;
    v18 = *(v12 - 1);
    v19 = v13;
    (v17[0])(&v18);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v20 = v11;
    v15 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_1CACBA314(v14 > 1, v15 + 1, 1);
      v11 = v20;
    }

    v12 += 16;
    *(v11 + 16) = v15 + 1;
    sub_1CAC80B78(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15, type metadata accessor for EventAlarmModelObject);
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t FakeDataReader.init(url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1CAD4BFF4();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

void FakeDataReader.init(datasetName:)(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = sub_1CAD4BFF4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v18 - v11;
  v13 = [objc_opt_self() mainBundle];
  strcpy(v18, "FakeDatasets/");
  v18[7] = -4864;
  MEMORY[0x1CCAA7330](a1, a2);
  v14 = sub_1CAD4DF54();

  v15 = sub_1CAD4DF54();
  v16 = [v13 URLForResource:v14 withExtension:v15];

  if (v16)
  {

    sub_1CAD4BFC4();

    v17 = *(v7 + 32);
    v17(v12, v10, v6);
    v17(a3, v12, v6);
  }

  else
  {
    __break(1u);
  }
}

CalendarUIKit::FakeDataReader::Dataset __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FakeDataReader.readData()()
{
  v152 = v0;
  v1 = type metadata accessor for EventModelObject();
  v180 = *(v1 - 8);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v147 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v147 - v6;
  MEMORY[0x1EEE9AC00](v5);
  v9 = (&v147 - v8);
  v10 = type metadata accessor for EventCalendarModelObject();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v147 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v147 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = (&v147 - v18);
  v20 = v163;
  v21 = sub_1CAD4C004();
  if (v20)
  {
    goto LABEL_83;
  }

  v24 = v21;
  v158 = v9;
  v159 = v19;
  v160 = v14;
  v161 = v7;
  v154 = v17;
  v162 = v4;
  v163 = v11;
  v25 = v22;
  sub_1CAD4BBA4();
  swift_allocObject();
  sub_1CAD4BB94();
  sub_1CAC7900C();
  sub_1CAD4BB84();
  v151 = 0;
  v148 = v24;
  v149 = v25;

  v26 = v164;
  v157 = v165;
  v27 = *(v164 + 16);
  v28 = MEMORY[0x1E69E7CC0];
  v150 = v164;
  if (v27)
  {
    *&v173[0] = MEMORY[0x1E69E7CC0];
    sub_1CACBA2F4(0, v27, 0);
    v28 = *&v173[0];
    v29 = v26 + 32;
    do
    {
      v178[0] = *v29;
      v30 = *(v29 + 16);
      v31 = *(v29 + 32);
      v32 = *(v29 + 48);
      *(v179 + 15) = *(v29 + 63);
      v178[2] = v31;
      v179[0] = v32;
      v178[1] = v30;
      sub_1CAC79F30(v178, &v164);
      sub_1CAC701A8(&v164);
      sub_1CAC79F68(v178);
      *&v173[0] = v28;
      v34 = *(v28 + 16);
      v33 = *(v28 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_1CACBA2F4((v33 > 1), v34 + 1, 1);
        v28 = *&v173[0];
      }

      *(v28 + 16) = v34 + 1;
      v35 = (v28 + 144 * v34);
      v35[2] = v164;
      v36 = v165;
      v37 = v166;
      v38 = v168;
      v35[5] = v167;
      v35[6] = v38;
      v35[3] = v36;
      v35[4] = v37;
      v39 = v169;
      v40 = v170;
      v41 = v171[0];
      *(v35 + 154) = *(v171 + 10);
      v35[8] = v40;
      v35[9] = v41;
      v35[7] = v39;
      v29 += 72;
      --v27;
    }

    while (v27);
  }

  v42 = *(v28 + 16);
  v155 = v28;
  v156 = v42;
  if (!v42)
  {
    v45 = MEMORY[0x1E69E7CC8];
LABEL_24:

    v86 = *(&v150 + 1);
    v87 = *(*(&v150 + 1) + 16);
    v156 = v45;
    if (v87)
    {
      *&v173[0] = MEMORY[0x1E69E7CC0];
      sub_1CACB9E98(0, v87, 0);
      v88 = *&v173[0];
      v89 = (v86 + 32);
      v90 = v180;
      v91 = v154;
      do
      {
        v92 = *v89;
        v93 = v89[1];
        v94 = v89[2];
        v176[3] = v89[3];
        v176[2] = v94;
        v176[1] = v93;
        v176[0] = v92;
        v95 = v89[4];
        v96 = v89[5];
        v97 = v89[6];
        *(v177 + 10) = *(v89 + 106);
        v177[0] = v97;
        v176[5] = v96;
        v176[4] = v95;
        sub_1CAC79F98(v176, &v164);
        sub_1CAC7048C(v45, v91);
        sub_1CAC79FD0(v176);
        *&v173[0] = v88;
        v99 = *(v88 + 16);
        v98 = *(v88 + 24);
        if (v99 >= v98 >> 1)
        {
          sub_1CACB9E98(v98 > 1, v99 + 1, 1);
          v88 = *&v173[0];
        }

        *(v88 + 16) = v99 + 1;
        sub_1CAC80B78(v91, v88 + ((*(v163 + 80) + 32) & ~*(v163 + 80)) + v163[9] * v99, type metadata accessor for EventCalendarModelObject);
        v89 += 8;
        --v87;
        v45 = v156;
      }

      while (v87);
      v100 = v88;
    }

    else
    {
      v100 = MEMORY[0x1E69E7CC0];
      v90 = v180;
    }

    v101 = v161;
    v155 = *(v100 + 16);
    if (v155)
    {
      v102 = 0;
      v103 = v163;
      v154 = (v100 + ((*(v163 + 80) + 32) & ~*(v163 + 80)));
      v104 = MEMORY[0x1E69E7CC8];
      v106 = v159;
      v105 = v160;
      v153 = v100;
      while (1)
      {
        if (v102 >= *(v100 + 16))
        {
          goto LABEL_75;
        }

        v107 = v103[9];
        sub_1CAC80954(&v154[v107 * v102], v106, type metadata accessor for EventCalendarModelObject);
        v109 = *v106;
        v108 = v106[1];
        sub_1CAC80954(v106, v105, type metadata accessor for EventCalendarModelObject);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v164 = v104;
        v112 = sub_1CAC1628C(v109, v108);
        v113 = v104[2];
        v114 = (v111 & 1) == 0;
        v115 = v113 + v114;
        if (__OFADD__(v113, v114))
        {
          goto LABEL_76;
        }

        v116 = v111;
        if (v104[3] >= v115)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v104 = v164;
            if (v111)
            {
              goto LABEL_33;
            }
          }

          else
          {
            sub_1CAC79CD8();
            v104 = v164;
            if (v116)
            {
              goto LABEL_33;
            }
          }
        }

        else
        {
          sub_1CAC7896C(v115, isUniquelyReferenced_nonNull_native);
          v117 = sub_1CAC1628C(v109, v108);
          if ((v116 & 1) != (v118 & 1))
          {
            goto LABEL_82;
          }

          v112 = v117;
          v104 = v164;
          if (v116)
          {
LABEL_33:
            v105 = v160;
            sub_1CAC7A0C8(v160, v104[7] + v112 * v107, type metadata accessor for EventCalendarModelObject);
            goto LABEL_34;
          }
        }

        v104[(v112 >> 6) + 8] |= 1 << v112;
        v119 = (v104[6] + 16 * v112);
        *v119 = v109;
        v119[1] = v108;
        v105 = v160;
        sub_1CAC80B78(v160, v104[7] + v112 * v107, type metadata accessor for EventCalendarModelObject);
        v120 = v104[2];
        v84 = __OFADD__(v120, 1);
        v121 = v120 + 1;
        if (v84)
        {
          goto LABEL_80;
        }

        v104[2] = v121;

LABEL_34:
        ++v102;
        v106 = v159;
        sub_1CAC7A068(v159, type metadata accessor for EventCalendarModelObject);
        v90 = v180;
        v101 = v161;
        v103 = v163;
        v100 = v153;
        if (v155 == v102)
        {
          goto LABEL_48;
        }
      }
    }

    v104 = MEMORY[0x1E69E7CC8];
LABEL_48:
    v163 = v104;

    v122 = *(v157 + 16);
    if (v122)
    {
      *&v173[0] = MEMORY[0x1E69E7CC0];
      sub_1CACBA2B0(0, v122, 0);
      v123 = 32;
      v124 = *&v173[0];
      do
      {
        memcpy(v175, (v157 + v123), sizeof(v175));
        sub_1CAC7A000(v175, &v164);
        sub_1CAC70B34(v163, v101);
        sub_1CAC7A038(v175);
        *&v173[0] = v124;
        v126 = *(v124 + 16);
        v125 = *(v124 + 24);
        if (v126 >= v125 >> 1)
        {
          sub_1CACBA2B0(v125 > 1, v126 + 1, 1);
          v124 = *&v173[0];
        }

        *(v124 + 16) = v126 + 1;
        sub_1CAC80B78(v101, v124 + ((*(v90 + 80) + 32) & ~*(v90 + 80)) + *(v90 + 72) * v126, type metadata accessor for EventModelObject);
        v123 += 824;
        --v122;
      }

      while (v122);
    }

    else
    {

      v124 = MEMORY[0x1E69E7CC0];
    }

    v127 = v158;
    v161 = *(v124 + 16);
    if (!v161)
    {
      v129 = MEMORY[0x1E69E7CC8];
LABEL_71:
      sub_1CABB8C1C(v148, v149);

      v145 = v152;
      v146 = v163;
      *v152 = v156;
      v145[1] = v146;
      v145[2] = v129;
      goto LABEL_83;
    }

    v128 = 0;
    v160 = (v124 + ((*(v90 + 80) + 32) & ~*(v90 + 80)));
    v129 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      if (v128 >= *(v124 + 16))
      {
        goto LABEL_77;
      }

      v130 = *(v90 + 72);
      sub_1CAC80954(&v160[v130 * v128], v127, type metadata accessor for EventModelObject);
      v132 = *v127;
      v131 = v127[1];
      sub_1CAC80954(v127, v162, type metadata accessor for EventModelObject);
      v133 = swift_isUniquelyReferenced_nonNull_native();
      *&v164 = v129;
      v134 = sub_1CAC1628C(v132, v131);
      v136 = v129[2];
      v137 = (v135 & 1) == 0;
      v84 = __OFADD__(v136, v137);
      v138 = v136 + v137;
      if (v84)
      {
        goto LABEL_78;
      }

      v139 = v135;
      if (v129[3] < v138)
      {
        break;
      }

      if (v133)
      {
        goto LABEL_65;
      }

      v144 = v134;
      sub_1CAC79A80();
      v134 = v144;
      v129 = v164;
      if (v139)
      {
LABEL_57:
        sub_1CAC7A0C8(v162, v129[7] + v134 * v130, type metadata accessor for EventModelObject);
        goto LABEL_58;
      }

LABEL_66:
      v129[(v134 >> 6) + 8] |= 1 << v134;
      v141 = (v129[6] + 16 * v134);
      *v141 = v132;
      v141[1] = v131;
      sub_1CAC80B78(v162, v129[7] + v134 * v130, type metadata accessor for EventModelObject);
      v142 = v129[2];
      v84 = __OFADD__(v142, 1);
      v143 = v142 + 1;
      if (v84)
      {
        goto LABEL_81;
      }

      v129[2] = v143;

LABEL_58:
      ++v128;
      v127 = v158;
      sub_1CAC7A068(v158, type metadata accessor for EventModelObject);
      v90 = v180;
      if (v161 == v128)
      {
        goto LABEL_71;
      }
    }

    sub_1CAC785F4(v138, v133);
    v134 = sub_1CAC1628C(v132, v131);
    if ((v139 & 1) != (v140 & 1))
    {
      goto LABEL_82;
    }

LABEL_65:
    v129 = v164;
    if (v139)
    {
      goto LABEL_57;
    }

    goto LABEL_66;
  }

  v43 = 0;
  v44 = (v28 + 32);
  v45 = MEMORY[0x1E69E7CC8];
  while (v43 < *(v155 + 16))
  {
    v164 = *v44;
    v59 = v44[1];
    v60 = v44[2];
    v61 = v44[4];
    v167 = v44[3];
    v168 = v61;
    v165 = v59;
    v166 = v60;
    v62 = v44[5];
    v63 = v44[6];
    v64 = v44[7];
    *(v171 + 10) = *(v44 + 122);
    v170 = v63;
    v171[0] = v64;
    v169 = v62;
    v65 = v164;
    sub_1CAC17240(&v164, v173);
    sub_1CAC17240(&v164, v173);
    v66 = v45;
    v67 = swift_isUniquelyReferenced_nonNull_native();
    v172 = v45;
    v69 = sub_1CAC1628C(v65, *(&v65 + 1));
    v70 = v45[2];
    v71 = (v68 & 1) == 0;
    v72 = v70 + v71;
    if (__OFADD__(v70, v71))
    {
      goto LABEL_74;
    }

    v73 = v68;
    if (v66[3] >= v72)
    {
      if (v67)
      {
        if (v68)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_1CAC79720();
        if (v73)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
      sub_1CAC77C4C(v72, v67);
      v74 = sub_1CAC1628C(v65, *(&v65 + 1));
      if ((v73 & 1) != (v75 & 1))
      {
        goto LABEL_82;
      }

      v69 = v74;
      if (v73)
      {
LABEL_9:
        v45 = v172;
        v46 = (v172[7] + 144 * v69);
        v173[0] = *v46;
        v47 = v46[3];
        v49 = v46[1];
        v48 = v46[2];
        v173[4] = v46[4];
        v173[2] = v48;
        v173[3] = v47;
        v173[1] = v49;
        v51 = v46[6];
        v50 = v46[7];
        v52 = v46[5];
        *(v174 + 10) = *(v46 + 122);
        v174[0] = v50;
        v173[5] = v52;
        v173[6] = v51;
        *v46 = v164;
        v53 = v165;
        v54 = v166;
        v55 = v168;
        v46[3] = v167;
        v46[4] = v55;
        v46[1] = v53;
        v46[2] = v54;
        v56 = v169;
        v57 = v170;
        v58 = v171[0];
        *(v46 + 122) = *(v171 + 10);
        v46[6] = v57;
        v46[7] = v58;
        v46[5] = v56;
        sub_1CAC1729C(v173);
        sub_1CAC1729C(&v164);
        goto LABEL_10;
      }
    }

    v45 = v172;
    v172[(v69 >> 6) + 8] |= 1 << v69;
    *(v45[6] + 16 * v69) = v65;
    v76 = (v45[7] + 144 * v69);
    v77 = *(v171 + 10);
    v79 = v170;
    v78 = v171[0];
    v76[5] = v169;
    v76[6] = v79;
    v76[7] = v78;
    *(v76 + 122) = v77;
    v81 = v167;
    v80 = v168;
    v82 = v166;
    v76[1] = v165;
    v76[2] = v82;
    v76[3] = v81;
    v76[4] = v80;
    *v76 = v164;

    sub_1CAC1729C(&v164);
    v83 = v45[2];
    v84 = __OFADD__(v83, 1);
    v85 = v83 + 1;
    if (v84)
    {
      goto LABEL_79;
    }

    v45[2] = v85;
LABEL_10:
    v43 = (v43 + 1);
    v44 += 9;
    if (v156 == v43)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  v21 = sub_1CAD4EA34();
  __break(1u);
LABEL_83:
  result.events._rawValue = v23;
  result.calendars._rawValue = v22;
  result.sources._rawValue = v21;
  return result;
}

uint64_t sub_1CAC701A8@<X0>(uint64_t a1@<X8>)
{
  if (!*(v1 + 7))
  {
    goto LABEL_8;
  }

  v3 = sub_1CAD4E004();
  v5 = v4;
  if (v3 != 0x6C61636F6CLL || v4 != 0xE500000000000000)
  {
    v7 = v3;
    if ((sub_1CAD4E9E4() & 1) == 0)
    {
      v16 = v7 == 0x65676E6168637865 && v5 == 0xE800000000000000;
      if (v16 || (sub_1CAD4E9E4() & 1) != 0)
      {

        v8 = 1;
        goto LABEL_9;
      }

      if (v7 == 0x7661646C6163 && v5 == 0xE600000000000000 || (sub_1CAD4E9E4() & 1) != 0)
      {

        v8 = 2;
        goto LABEL_9;
      }

      if (v7 == 0x656D656C69626F6DLL && v5 == 0xE800000000000000 || (sub_1CAD4E9E4() & 1) != 0)
      {

        v8 = 3;
        goto LABEL_9;
      }

      if (v7 == 0x6269726373627573 && v5 == 0xEA00000000006465 || (sub_1CAD4E9E4() & 1) != 0)
      {

        v8 = 4;
        goto LABEL_9;
      }

      if (v7 == 0x7961646874726962 && v5 == 0xE900000000000073)
      {
      }

      else
      {
        v17 = sub_1CAD4E9E4();

        if ((v17 & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      v8 = 5;
      goto LABEL_9;
    }
  }

LABEL_8:
  v8 = 0;
LABEL_9:
  v9 = *(v1 + 64);
  v10 = (*(v1 + 65) == 2) | *(v1 + 65);
  v11 = *(v1 + 66);
  v12 = *v1;
  v13 = v1[1];
  v20 = v1[2];
  v14 = v20;
  v21 = v12;
  v19 = v13;
  *a1 = v12;
  *(a1 + 16) = v14;
  *(a1 + 32) = v8;
  *(a1 + 40) = v13;
  *(a1 + 56) = v9 & 1;
  *(a1 + 57) = 0;
  *(a1 + 58) = v10 & 1;
  *(a1 + 59) = v11 & 1;
  *(a1 + 60) = 0;
  *(a1 + 64) = MEMORY[0x1E69E7CD0];
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  *(a1 + 96) = 0;
  *(a1 + 104) = 1;
  *(a1 + 112) = xmmword_1CAD5D940;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  sub_1CAC385A4(&v21, v18);
  sub_1CAB23A9C(&v20, v18, &qword_1EC4643D0);
  return sub_1CAC385A4(&v19, v18);
}

uint64_t sub_1CAC7048C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v73 = &v65 - v7;
  if (!*(v3 + 14))
  {
    goto LABEL_8;
  }

  v8 = sub_1CAD4E004();
  v10 = v9;
  v11 = v8 == 1701736302 && v9 == 0xE400000000000000;
  if (v11 || (v12 = v8, (sub_1CAD4E9E4() & 1) != 0))
  {

    goto LABEL_8;
  }

  if (v12 == 1701670772 && v10 == 0xE400000000000000 || (sub_1CAD4E9E4() & 1) != 0)
  {

    v61 = 2;
    goto LABEL_25;
  }

  if (v12 != 0x656D6D6F7266 || v10 != 0xE600000000000000)
  {
    v63 = sub_1CAD4E9E4();

    if (v63)
    {
      goto LABEL_40;
    }

LABEL_8:
    v72 = 0;
    if (!*(v3 + 3))
    {
      goto LABEL_15;
    }

    goto LABEL_9;
  }

LABEL_40:
  v61 = 1;
LABEL_25:
  v72 = v61;
  if (!*(v3 + 3))
  {
    goto LABEL_15;
  }

LABEL_9:
  v13 = sub_1CAD4E004();
  v15 = v14;
  if (v13 != 0x6C61636F6CLL || v14 != 0xE500000000000000)
  {
    v17 = v13;
    if ((sub_1CAD4E9E4() & 1) == 0)
    {
      if (v17 == 0x7661646C6163 && v15 == 0xE600000000000000 || (sub_1CAD4E9E4() & 1) != 0)
      {

        v62 = 1;
      }

      else if (v17 == 0x65676E6168637865 && v15 == 0xE800000000000000 || (sub_1CAD4E9E4() & 1) != 0)
      {

        v62 = 2;
      }

      else if (v17 == 0x7069726373627573 && v15 == 0xEC0000006E6F6974 || (sub_1CAD4E9E4() & 1) != 0)
      {

        v62 = 3;
      }

      else
      {
        if (v17 == 0x7961646874726962 && v15 == 0xE800000000000000)
        {
        }

        else
        {
          v64 = sub_1CAD4E9E4();

          if ((v64 & 1) == 0)
          {
            goto LABEL_15;
          }
        }

        v62 = 4;
      }

      v71 = v62;
      goto LABEL_16;
    }
  }

LABEL_15:
  v71 = 0;
LABEL_16:
  v18 = *v3;
  v19 = v3[4];
  v101 = v3[3];
  v102 = v18;
  v100 = v19;
  v20 = sub_1CAD4E004();
  v22 = v21;
  sub_1CAC385A4(&v102, &v90);
  sub_1CAC385A4(&v100, &v90);
  sub_1CAB23A9C(&v101, &v90, &qword_1EC4643D0);
  CalendarColor.init(_:)(v20, v22, v98);
  v69 = v98[1];
  v70 = v98[0];
  v68 = v98[2];
  v67 = v99;
  v23 = *(v3 + 96);
  if (*(a1 + 16) && (v24 = sub_1CAC1628C(*(v3 + 4), *(v3 + 5)), (v25 & 1) != 0))
  {
    v26 = (*(a1 + 56) + 144 * v24);
    v74 = *v26;
    v27 = v26[4];
    v29 = v26[1];
    v28 = v26[2];
    v77 = v26[3];
    v78 = v27;
    v75 = v29;
    v76 = v28;
    v31 = v26[6];
    v30 = v26[7];
    v32 = v26[5];
    *(v81 + 10) = *(v26 + 122);
    v80 = v31;
    v81[0] = v30;
    v79 = v32;
    memmove(&v82, v26, 0x8AuLL);
    nullsub_1(&v82);
    sub_1CAC17240(&v74, &v90);
    v96 = v88;
    v97[0] = v89[0];
    *(v97 + 10) = *(v89 + 10);
    v92 = v84;
    v93 = v85;
    v94 = v86;
    v95 = v87;
    v90 = v82;
    v91 = v83;
  }

  else
  {
    sub_1CAC12E1C(&v90);
  }

  v33 = (v23 == 2) | v23;
  v34 = *(v3 + 121);
  HIDWORD(v65) = *(v3 + 120);
  v66 = v34;
  v35 = sub_1CAD4BFF4();
  v36 = *(*(v35 - 8) + 56);
  v37 = v73;
  v36(v73, 1, 1, v35);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = -1;
  sub_1CAC12E1C(&v74);
  v38 = v78;
  *(a2 + 184) = v79;
  v39 = v81[0];
  *(a2 + 200) = v80;
  *(a2 + 216) = v39;
  *(a2 + 226) = *(v81 + 10);
  v40 = v74;
  *(a2 + 120) = v75;
  v41 = v77;
  *(a2 + 136) = v76;
  *(a2 + 152) = v41;
  *(a2 + 168) = v38;
  *(a2 + 104) = v40;
  v42 = type metadata accessor for EventCalendarModelObject();
  v43 = v42[23];
  v36((a2 + v43), 1, 1, v35);
  v44 = (a2 + v42[24]);
  v45 = (a2 + v42[25]);
  v46 = v101;
  *a2 = v102;
  v47 = v70;
  *(a2 + 16) = v71;
  *(a2 + 24) = v46;
  *(a2 + 40) = v100;
  *(a2 + 56) = 1;
  *(a2 + 64) = v47;
  v48 = v68;
  *(a2 + 72) = v69;
  *(a2 + 80) = v48;
  *(a2 + 88) = v67;
  *(a2 + 89) = v33 & 1;
  *(a2 + 96) = v72;
  v49 = *(a2 + 104);
  v50 = *(a2 + 120);
  v51 = *(a2 + 152);
  v52 = *(a2 + 168);
  v84 = *(a2 + 136);
  v85 = v51;
  v82 = v49;
  v83 = v50;
  v53 = *(a2 + 184);
  v54 = *(a2 + 200);
  *(v89 + 10) = *(a2 + 226);
  v55 = *(a2 + 216);
  v88 = v54;
  v89[0] = v55;
  v86 = v52;
  v87 = v53;
  sub_1CAB21B68(&v82, &unk_1EC4679A0);
  v56 = v94;
  *(a2 + 184) = v95;
  v57 = v97[0];
  *(a2 + 200) = v96;
  *(a2 + 216) = v57;
  *(a2 + 226) = *(v97 + 10);
  v58 = v90;
  *(a2 + 120) = v91;
  v59 = v93;
  *(a2 + 136) = v92;
  *(a2 + 152) = v59;
  *(a2 + 168) = v56;
  *(a2 + 104) = v58;
  *(a2 + 242) = 0;
  *(a2 + 243) = BYTE4(v65) & 1;
  *(a2 + 244) = 0;
  *(a2 + 245) = v66 & 1;
  *(a2 + 246) = 256;
  *(a2 + 248) = 1;
  *(a2 + 256) = 0u;
  *(a2 + 272) = 0u;
  *(a2 + 288) = MEMORY[0x1E69E7CC0];
  result = sub_1CABC6AC8(v37, a2 + v43, &qword_1EC465450);
  *v44 = 0;
  v44[1] = 0;
  *v45 = 0;
  v45[1] = 0;
  *(a2 + v42[26]) = 0;
  return result;
}

uint64_t sub_1CAC70B34@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v316 = a1;
  v308 = a2;
  v323 = type metadata accessor for EventModelObject();
  MEMORY[0x1EEE9AC00](v323);
  v334 = &v266 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v322 = &v266 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v321 = &v266 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC465A70);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v306 = &v266 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v307 = &v266 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v333 = &v266 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464020);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v332 = &v266 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467A40);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v336 = &v266 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4635D0);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v331 = &v266 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v330 = &v266 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v329 = &v266 - v24;
  v25 = sub_1CAD4C124();
  v311 = *(v25 - 8);
  v312 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v310 = &v266 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464E38);
  v28 = MEMORY[0x1EEE9AC00](v27 - 8);
  v319 = &v266 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v266 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465AC0);
  v33 = MEMORY[0x1EEE9AC00](v32 - 8);
  v318 = &v266 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v266 - v35;
  v37 = sub_1CAD4C0F4();
  v38 = *(v37 - 8);
  v39 = MEMORY[0x1EEE9AC00](v37);
  v328 = &v266 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x1EEE9AC00](v39);
  v335 = &v266 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v327 = &v266 - v44;
  MEMORY[0x1EEE9AC00](v43);
  v337 = &v266 - v45;
  v46 = *(v3 + 144);
  v304 = v46;
  v47 = v3 + 32;
  if (v46 == 2 || (v46 & 1) == 0)
  {
    sub_1CAC735F0(v47, v337);
    sub_1CAC735F0(v3 + 88, v327);
  }

  else
  {
    sub_1CAC73BB4(v47, v337);
    sub_1CAC73F10((v3 + 88), v327);
  }

  v48 = *(v3 + 640);
  v338 = v38;
  if (v48)
  {
    v50 = sub_1CAD4E004();
    v51 = v49;
    if (v50 == 0x6C616D726F6ELL && v49 == 0xE600000000000000 || (sub_1CAD4E9E4() & 1) != 0)
    {

      goto LABEL_10;
    }

    if (v50 == 0x6C616E6F73726570 && v51 == 0xE800000000000000 || (sub_1CAD4E9E4() & 1) != 0)
    {

      v59 = 1;
      goto LABEL_25;
    }

    if (v50 == 0x65746176697270 && v51 == 0xE700000000000000 || (sub_1CAD4E9E4() & 1) != 0)
    {

      v59 = 2;
      goto LABEL_25;
    }

    if (v50 == 0x6E656469666E6F63 && v51 == 0xEC0000006C616974)
    {

LABEL_114:
      v59 = 3;
LABEL_25:
      v305 = v59;
      if (!*(v3 + 656))
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    }

    v263 = sub_1CAD4E9E4();

    if (v263)
    {
      goto LABEL_114;
    }
  }

LABEL_10:
  v305 = 0;
  if (!*(v3 + 656))
  {
LABEL_15:
    v303 = 0;
    goto LABEL_16;
  }

LABEL_11:
  v53 = sub_1CAD4E004();
  v54 = v52;
  if (v53 == 1701736302 && v52 == 0xE400000000000000 || (sub_1CAD4E9E4() & 1) != 0)
  {

    goto LABEL_15;
  }

  if (v53 == 0x656D7269666E6F63 && v54 == 0xE900000000000064 || (sub_1CAD4E9E4() & 1) != 0)
  {

    v60 = 1;
  }

  else if (v53 == 0x76697461746E6574 && v54 == 0xE900000000000065 || (sub_1CAD4E9E4() & 1) != 0)
  {

    v60 = 2;
  }

  else
  {
    if (v53 == 0x64656C65636E6163 && v54 == 0xE800000000000000)
    {
    }

    else
    {
      v264 = sub_1CAD4E9E4();

      if ((v264 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    v60 = 3;
  }

  v303 = v60;
LABEL_16:
  v55 = *(v3 + 696);
  v339 = v37;
  if (!v55)
  {
LABEL_36:
    v302 = 0;
    goto LABEL_37;
  }

  v57 = sub_1CAD4E004();
  v58 = v56;
  if (v57 == 0x726F707075736E75 && v56 == 0xEB00000000646574 || (sub_1CAD4E9E4() & 1) != 0)
  {

    v302 = -1;
    v37 = v339;
    goto LABEL_37;
  }

  v37 = v339;
  if (v57 == 2037609826 && v58 == 0xE400000000000000 || (sub_1CAD4E9E4() & 1) != 0)
  {

    goto LABEL_36;
  }

  if (v57 == 1701147238 && v58 == 0xE400000000000000 || (sub_1CAD4E9E4() & 1) != 0)
  {

    v262 = 1;
  }

  else if (v57 == 0x76697461746E6574 && v58 == 0xE900000000000065 || (sub_1CAD4E9E4() & 1) != 0)
  {

    v262 = 2;
  }

  else
  {
    if (v57 == 0x616C696176616E75 && v58 == 0xEB00000000656C62)
    {
    }

    else
    {
      v265 = sub_1CAD4E9E4();

      if ((v265 & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    v262 = 3;
  }

  v302 = v262;
LABEL_37:
  v61 = *(v3 + 360);
  v428 = *(v3 + 376);
  v62 = *(v3 + 408);
  v429 = *(v3 + 392);
  v430 = v62;
  v63 = *(v3 + 296);
  v424 = *(v3 + 312);
  v64 = *(v3 + 344);
  v425 = *(v3 + 328);
  v426 = v64;
  v427 = v61;
  v65 = *(v3 + 280);
  v421 = *(v3 + 264);
  v422 = v65;
  v431 = *(v3 + 424);
  v423 = v63;
  if (get_enum_tag_for_layout_string_13CalendarUIKit14FakeDataReaderV5EventV8LocationVSg_0(&v421) == 1)
  {
    sub_1CABED564(&v410);
    v317 = 0;
    v66 = 0;
  }

  else
  {
    v461 = v428;
    v462 = v429;
    v463 = v430;
    v464 = v431;
    v457 = v424;
    v458 = v425;
    v459 = v426;
    v460 = v427;
    v454 = v421;
    v455 = v422;
    v456 = v423;
    sub_1CAC742CC(&v376);
    v395 = v383;
    v396 = v384;
    v397 = v385;
    v398 = v386;
    v391 = v379;
    v392 = v380;
    v393 = v381;
    v394 = v382;
    v388 = v376;
    v389 = v377;
    v390 = v378;
    nullsub_1(&v388);
    v317 = sub_1CAC74510();
    v417 = v395;
    v418 = v396;
    v419 = v397;
    v420 = v398;
    v413 = v391;
    v414 = v392;
    v415 = v393;
    v416 = v394;
    v410 = v388;
    v411 = v389;
    v412 = v390;
  }

  v326 = v66;
  v67 = *(v3 + 528);
  v406 = *(v3 + 544);
  v68 = *(v3 + 576);
  v407 = *(v3 + 560);
  v408 = v68;
  v69 = *(v3 + 464);
  v402 = *(v3 + 480);
  v70 = *(v3 + 512);
  v403 = *(v3 + 496);
  v404 = v70;
  v405 = v67;
  v71 = *(v3 + 448);
  v399 = *(v3 + 432);
  v400 = v71;
  v409 = *(v3 + 592);
  v401 = v69;
  if (get_enum_tag_for_layout_string_13CalendarUIKit14FakeDataReaderV5EventV8LocationVSg_0(&v399) == 1)
  {
    sub_1CABED564(&v388);
    v309 = 0;
    v325 = 0;
  }

  else
  {
    v450 = v406;
    v451 = v407;
    v452 = v408;
    v453 = v409;
    v446 = v402;
    v447 = v403;
    v448 = v404;
    v449 = v405;
    v443 = v399;
    v444 = v400;
    v445 = v401;
    sub_1CAC742CC(&v365);
    v383 = v372;
    v384 = v373;
    v385 = v374;
    v386 = v375;
    v379 = v368;
    v380 = v369;
    v381 = v370;
    v382 = v371;
    v376 = v365;
    v377 = v366;
    v378 = v367;
    nullsub_1(&v376);
    v309 = sub_1CAC74510();
    v325 = v72;
    v395 = v383;
    v396 = v384;
    v397 = v385;
    v398 = v386;
    v391 = v379;
    v392 = v380;
    v393 = v381;
    v394 = v382;
    v388 = v376;
    v389 = v377;
    v390 = v378;
  }

  v73 = type metadata accessor for EventOrganizerModelObject(0);
  v74 = *(v73 - 8);
  v299 = *(v74 + 56);
  v300 = v73;
  v298 = (v74 + 56);
  (v299)(v36, 1, 1);
  v75 = type metadata accessor for EventAttendeeModelObject(0);
  v76 = *(v75 - 8);
  v296 = *(v76 + 56);
  v297 = v75;
  v295 = v76 + 56;
  (v296)(v31, 1, 1);
  v387 = MEMORY[0x1E69E7CC0];
  v77 = *(v3 + 736);
  if (v77)
  {
    v301 = sub_1CAC6ECD0(v77, v36, v31, &v387);
    v78 = *(v3 + 8);
    if (v78)
    {
LABEL_45:
      v79 = *v3;
      v293 = v78;
      v294 = v79;
      goto LABEL_48;
    }
  }

  else
  {
    v301 = 0;
    v78 = *(v3 + 8);
    if (v78)
    {
      goto LABEL_45;
    }
  }

  v80 = v310;
  sub_1CAD4C114();
  v81 = sub_1CAD4C104();
  v293 = v82;
  v294 = v81;
  (*(v311 + 1))(v80, v312);
LABEL_48:
  v83 = v338 + 2;
  v84 = v338[2];
  v84(v335, v337, v37);
  v313 = v84;
  v314 = v83;
  v84(v328, v327, v37);
  v292 = *(v3 + 146);
  v433[0] = *(v3 + 16);
  if (*(v3 + 80))
  {

    sub_1CAC385A4(v433, &v376);
    sub_1CAD4C384();
    if (*(v3 + 136))
    {
LABEL_50:
      sub_1CAD4C384();
      goto LABEL_53;
    }
  }

  else
  {
    v85 = sub_1CAD4C404();
    (*(*(v85 - 8) + 56))(v329, 1, 1, v85);

    sub_1CAC385A4(v433, &v376);
    if (*(v3 + 136))
    {
      goto LABEL_50;
    }
  }

  v86 = sub_1CAD4C404();
  (*(*(v86 - 8) + 56))(v330, 1, 1, v86);
LABEL_53:
  v87 = v339;
  v291 = *(v3 + 145);
  v88 = sub_1CAD4C404();
  v89 = *(v88 - 8);
  v90 = *(v89 + 56);
  v91 = 1;
  v273 = v88;
  v277 = v89 + 56;
  v278 = v90;
  (v90)(v331, 1, 1);
  v92 = *(v3 + 160);
  if (v92 != 1)
  {
    v93 = *(v3 + 152);
    v439 = *(v3 + 200);
    v440 = *(v3 + 216);
    v441 = *(v3 + 232);
    v442 = *(v3 + 248);
    v437 = *(v3 + 168);
    v438 = *(v3 + 184);
    v435 = v93;
    v436 = v92;
    sub_1CAC752BC(v336);
    v91 = 0;
  }

  v94 = type metadata accessor for EventVirtualConferenceModelObject(0);
  v95 = *(v94 - 8);
  v275 = *(v95 + 56);
  v276 = v94;
  v274 = (v95 + 56);
  v275(v336, v91, 1);
  v96 = v326;
  if (v325)
  {
    v97 = qword_1CAD58000;
    if (v326)
    {
LABEL_57:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464728);
      v98 = swift_allocObject();
      *(v98 + 16) = *(v97 + 56);
      *(v98 + 32) = v317;
      *(v98 + 40) = v96;
      v287 = v98;
      goto LABEL_60;
    }
  }

  else
  {

    v309 = v317;
    v325 = v96;
    v97 = qword_1CAD58000;
    if (v96)
    {
      goto LABEL_57;
    }
  }

  v287 = 0;
LABEL_60:
  v383 = v395;
  v384 = v396;
  v385 = v397;
  v386 = v398;
  v379 = v391;
  v380 = v392;
  v381 = v393;
  v382 = v394;
  v376 = v388;
  v377 = v389;
  v378 = v390;
  enum_tag_for_layout_string_13CalendarUIKit14FakeDataReaderV5EventV8LocationVSg_0 = get_enum_tag_for_layout_string_13CalendarUIKit14FakeDataReaderV5EventV8LocationVSg_0(&v376);
  v320 = v31;
  if (enum_tag_for_layout_string_13CalendarUIKit14FakeDataReaderV5EventV8LocationVSg_0 == 1)
  {
    v100 = &v410;
    sub_1CAB23A9C(&v410, &v365, &qword_1EC463C00);
    sub_1CAB23A9C(&v410, &v365, &qword_1EC463C00);
  }

  else
  {
    v100 = &v388;
  }

  v101 = v100[9];
  v373 = v100[8];
  v374 = v101;
  v375 = v100[10];
  v102 = v100[5];
  v369 = v100[4];
  v370 = v102;
  v103 = v100[7];
  v371 = v100[6];
  v372 = v103;
  v104 = v100[1];
  v365 = *v100;
  v366 = v104;
  v105 = v100[3];
  v367 = v100[2];
  v368 = v105;
  if (*(v3 + 608))
  {
    v106 = 0.0;
  }

  else
  {
    v106 = *(v3 + 600);
  }

  v107 = v316[2];
  v324 = v36;
  if (v107)
  {
    v108 = *(v3 + 616);
    v109 = *(v3 + 624);
    sub_1CAB23A9C(&v388, &v354, &qword_1EC463C00);

    sub_1CAB23A9C(&v388, &v354, &qword_1EC463C00);
    v110 = v108;
    v111 = v316;
    v112 = sub_1CAC1628C(v110, v109);
    if (v113)
    {
      v114 = v112;
      v115 = v111[7];
      v116 = type metadata accessor for EventCalendarModelObject();
      v117 = *(v116 - 8);
      v118 = v332;
      sub_1CAC80954(v115 + *(v117 + 72) * v114, v332, type metadata accessor for EventCalendarModelObject);
      v119 = (*(v117 + 56))(v118, 0, 1, v116);
    }

    else
    {
      v121 = type metadata accessor for EventCalendarModelObject();
      v119 = (*(*(v121 - 8) + 56))(v332, 1, 1, v121);
    }

    v36 = v324;
    if (*(v3 + 664))
    {
      goto LABEL_73;
    }

LABEL_70:
    v288 = 0;
    goto LABEL_74;
  }

  v120 = type metadata accessor for EventCalendarModelObject();
  (*(*(v120 - 8) + 56))(v332, 1, 1, v120);
  sub_1CAB23A9C(&v388, &v354, &qword_1EC463C00);

  v119 = sub_1CAB23A9C(&v388, &v354, &qword_1EC463C00);
  if (!*(v3 + 664))
  {
    goto LABEL_70;
  }

LABEL_73:
  MEMORY[0x1EEE9AC00](v119);
  *(&v266 - 2) = v337;
  v288 = sub_1CAC6F130(sub_1CAC80A8C, (&v266 - 4), v122);
LABEL_74:
  v432 = *(v3 + 672);
  v315 = v338[7];
  v316 = v338 + 7;
  (v315)(v333, 1, 1, v87);
  v123 = *(v3 + 712);
  if (v123)
  {
    v124 = *(v3 + 728);
    v125 = *(v3 + 720);
    v126 = *(v3 + 704);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465D50);
    v127 = *(type metadata accessor for EventRecurrenceRuleModelObject(0) - 8);
    v128 = (*(v127 + 80) + 32) & ~*(v127 + 80);
    v129 = swift_allocObject();
    *(v129 + 16) = xmmword_1CAD58380;
    sub_1CAB23A9C(&v432, &v354, &qword_1EC4643D0);
    v289 = v129;
    v130 = v124 & 1;
    v36 = v324;
    sub_1CAC759E8(v126, v123, v125, v130, v129 + v128);
  }

  else
  {
    sub_1CAB23A9C(&v432, &v354, &qword_1EC4643D0);
    v289 = 0;
  }

  sub_1CAB23A9C(v36, v318, &qword_1EC465AC0);
  sub_1CAB23A9C(v320, v319, &qword_1EC464E38);
  if (*(v3 + 752))
  {
    sub_1CAD4BFE4();
  }

  else
  {
    v131 = sub_1CAD4BFF4();
    (*(*(v131 - 8) + 56))(v321, 1, 1, v131);
  }

  v279 = *(v3 + 760);
  v290 = *(v3 + 761);
  if (*(v3 + 776))
  {
    sub_1CAD4BFE4();
    v132 = *(v3 + 816);
    if (v132)
    {
LABEL_82:
      v133 = *(v3 + 800);
      v433[1] = *(v3 + 784);
      v433[2] = v133;
      v434 = v132;
      sub_1CAC75C7C(&v354);
      v286 = v354;
      v284 = *(&v355 + 1);
      v285 = *(&v354 + 1);
      v283 = v356;
      v281 = v355;
      v282 = *(&v356 + 1);
      v280 = v357;
      goto LABEL_85;
    }
  }

  else
  {
    v134 = sub_1CAD4BFF4();
    (*(*(v134 - 8) + 56))(v322, 1, 1, v134);
    v132 = *(v3 + 816);
    if (v132)
    {
      goto LABEL_82;
    }
  }

  v285 = 0;
  v286 = 0;
  v283 = 0;
  v284 = 0;
  v280 = 0;
  v281 = 1;
  v282 = 0;
LABEL_85:
  v135 = v310;
  sub_1CAD4C114();
  v136 = sub_1CAD4C104();
  v267 = v137;
  v268 = v136;
  (*(v311 + 1))(v135, v312);
  v138 = v323;
  v270 = v323[11];
  v139 = v334;
  v140 = v273;
  v141 = v278;
  (v278)(&v334[v270], 1, 1, v273);
  v269 = v138[12];
  v141(&v139[v269], 1, 1, v140);
  v272 = v138[14];
  v141(&v139[v272], 1, 1, v140);
  v273 = v138[15];
  (v275)(&v139[v273], 1, 1, v276);
  v142 = v138[17];
  v271 = &v139[v138[16]];
  v274 = &v139[v142];
  v143 = v138[19];
  v275 = v138[18];
  v144 = &v139[v143];
  sub_1CABED564(&v340);
  v145 = v345;
  v147 = v344;
  v146 = v345;
  *(v144 + 4) = v344;
  *(v144 + 5) = v145;
  v148 = v349;
  v149 = v350;
  v150 = v348;
  v151 = v348;
  *(v144 + 9) = v349;
  *(v144 + 10) = v149;
  *(v144 + 8) = v150;
  v152 = v347;
  v153 = v346;
  v154 = v347;
  *(v144 + 6) = v346;
  *(v144 + 7) = v152;
  v155 = v341;
  v156 = v340;
  v157 = v341;
  *v144 = v340;
  *(v144 + 1) = v155;
  v158 = v343;
  v159 = v342;
  v160 = v343;
  *(v144 + 2) = v342;
  *(v144 + 3) = v158;
  v161 = &v139[v138[20]];
  *v161 = v156;
  *(v161 + 1) = v157;
  *(v161 + 4) = v147;
  *(v161 + 5) = v146;
  *(v161 + 2) = v159;
  *(v161 + 3) = v160;
  v162 = v350;
  *(v161 + 9) = v349;
  *(v161 + 10) = v162;
  v163 = v348;
  *(v161 + 7) = v154;
  *(v161 + 8) = v163;
  *(v161 + 6) = v153;
  v164 = &v139[v138[21]];
  v165 = v341;
  v166 = v340;
  v167 = v341;
  *v164 = v340;
  *(v164 + 1) = v165;
  v168 = v345;
  v169 = v344;
  v170 = v345;
  *(v164 + 4) = v344;
  *(v164 + 5) = v168;
  v171 = v343;
  v173 = v342;
  v172 = v343;
  *(v164 + 2) = v342;
  *(v164 + 3) = v171;
  *(v164 + 10) = v350;
  v174 = v349;
  *(v164 + 8) = v348;
  *(v164 + 9) = v174;
  v175 = v347;
  v177 = v346;
  v176 = v347;
  *(v164 + 6) = v346;
  *(v164 + 7) = v175;
  v178 = &v139[v138[23]];
  v266 = v178;
  *(v178 + 8) = v151;
  *(v178 + 9) = v148;
  *(v178 + 10) = v350;
  *(v178 + 4) = v169;
  *(v178 + 5) = v170;
  *(v178 + 6) = v177;
  *(v178 + 7) = v176;
  *v178 = v166;
  *(v178 + 1) = v167;
  *(v178 + 2) = v173;
  *(v178 + 3) = v172;
  v179 = v138[26];
  v276 = v179;
  v180 = type metadata accessor for EventCalendarModelObject();
  (*(*(v180 - 8) + 56))(&v139[v179], 1, 1, v180);
  v181 = v138[30];
  v277 = v138[29];
  v278 = v181;
  v311 = &v139[v138[32]];
  v315();
  v310 = &v139[v138[34]];
  v299();
  v300 = &v139[v138[36]];
  v296();
  v182 = &v139[v138[37]];
  v183 = sub_1CAD4BFF4();
  v184 = *(*(v183 - 8) + 56);
  v299 = v182;
  (v184)(v182, 1, 1, v183);
  v185 = v334;
  v312 = &v334[v138[41]];
  v184();
  v186 = &v185[v138[42]];
  *v186 = 0;
  *(v186 + 1) = 0;
  *(v186 + 2) = 1;
  *(v186 + 24) = 0u;
  v298 = v186;
  *(v186 + 40) = 0u;
  v187 = v293;
  *v185 = v294;
  *(v185 + 1) = v187;
  v188 = v267;
  *(v185 + 2) = v268;
  *(v185 + 3) = v188;
  *(v185 + 2) = v433[0];
  v189 = v339;
  v190 = v313;
  v313(&v185[v138[7]], v335, v339);
  v190(&v185[v138[8]], v328, v189);
  v185[v138[9]] = v304 & 1;
  v191 = v138;
  v185[v138[10]] = v292 & 1;
  sub_1CAC809BC(v329, &v185[v270], &qword_1EC4635D0);
  sub_1CAC809BC(v330, &v185[v269], &qword_1EC4635D0);
  v185[v138[13]] = v291 & 1;
  sub_1CAC809BC(v331, &v185[v272], &qword_1EC4635D0);
  sub_1CAC809BC(v336, &v185[v273], &qword_1EC467A40);
  v192 = v271;
  v193 = v325;
  *v271 = v309;
  v192[1] = v193;
  v195 = v274;
  v194 = v275;
  v196 = v326;
  *v274 = v317;
  v195[1] = v196;
  *(v194 + v185) = v287;
  v197 = *(v144 + 9);
  v351[8] = *(v144 + 8);
  v351[9] = v197;
  v351[10] = *(v144 + 10);
  v198 = *(v144 + 5);
  v351[4] = *(v144 + 4);
  v351[5] = v198;
  v199 = *(v144 + 7);
  v351[6] = *(v144 + 6);
  v351[7] = v199;
  v200 = *(v144 + 1);
  v351[0] = *v144;
  v351[1] = v200;
  v201 = *(v144 + 3);
  v351[2] = *(v144 + 2);
  v351[3] = v201;
  sub_1CAB21B68(v351, &qword_1EC463C00);
  v202 = v370;
  *(v144 + 4) = v369;
  *(v144 + 5) = v202;
  v203 = v375;
  v204 = v373;
  *(v144 + 9) = v374;
  *(v144 + 10) = v203;
  v205 = v372;
  *(v144 + 6) = v371;
  *(v144 + 7) = v205;
  *(v144 + 8) = v204;
  v206 = v366;
  *v144 = v365;
  *(v144 + 1) = v206;
  v207 = v368;
  *(v144 + 2) = v367;
  *(v144 + 3) = v207;
  v208 = *(v161 + 9);
  v352[8] = *(v161 + 8);
  v352[9] = v208;
  v352[10] = *(v161 + 10);
  v209 = *(v161 + 5);
  v352[4] = *(v161 + 4);
  v352[5] = v209;
  v210 = *(v161 + 7);
  v352[6] = *(v161 + 6);
  v352[7] = v210;
  v211 = *(v161 + 1);
  v352[0] = *v161;
  v352[1] = v211;
  v212 = *(v161 + 3);
  v352[2] = *(v161 + 2);
  v352[3] = v212;
  sub_1CAB21B68(v352, &qword_1EC463C00);
  v213 = v416;
  v214 = v415;
  *(v161 + 4) = v414;
  *(v161 + 5) = v214;
  v215 = v413;
  v216 = v420;
  v217 = v418;
  *(v161 + 9) = v419;
  *(v161 + 10) = v216;
  v218 = v417;
  *(v161 + 6) = v213;
  *(v161 + 7) = v218;
  *(v161 + 8) = v217;
  v219 = v411;
  *v161 = v410;
  *(v161 + 1) = v219;
  *(v161 + 2) = v412;
  *(v161 + 3) = v215;
  v220 = *(v164 + 9);
  v353[8] = *(v164 + 8);
  v353[9] = v220;
  v353[10] = *(v164 + 10);
  v221 = *(v164 + 5);
  v353[4] = *(v164 + 4);
  v353[5] = v221;
  v222 = *(v164 + 7);
  v353[6] = *(v164 + 6);
  v353[7] = v222;
  v223 = *(v164 + 1);
  v353[0] = *v164;
  v353[1] = v223;
  v224 = *(v164 + 3);
  v353[2] = *(v164 + 2);
  v353[3] = v224;
  sub_1CAB21B68(v353, &qword_1EC463C00);
  v225 = v370;
  *(v164 + 4) = v369;
  *(v164 + 5) = v225;
  v226 = v375;
  v227 = v373;
  *(v164 + 9) = v374;
  *(v164 + 10) = v226;
  v228 = v372;
  *(v164 + 6) = v371;
  *(v164 + 7) = v228;
  *(v164 + 8) = v227;
  v229 = v366;
  *v164 = v365;
  *(v164 + 1) = v229;
  v230 = v368;
  *(v164 + 2) = v367;
  *(v164 + 3) = v230;
  v231 = v339;
  *&v185[v138[22]] = v106;
  v232 = v266;
  v233 = *(v266 + 9);
  v362 = *(v266 + 8);
  v363 = v233;
  v364 = *(v266 + 10);
  v234 = *(v266 + 5);
  v358 = *(v266 + 4);
  v359 = v234;
  v235 = *(v266 + 7);
  v360 = *(v266 + 6);
  v361 = v235;
  v236 = *(v266 + 1);
  v354 = *v266;
  v355 = v236;
  v237 = *(v266 + 3);
  v356 = *(v266 + 2);
  v357 = v237;
  sub_1CAB21B68(&v354, &qword_1EC463C00);
  v238 = v349;
  *(v232 + 8) = v348;
  *(v232 + 9) = v238;
  *(v232 + 10) = v350;
  v239 = v345;
  *(v232 + 4) = v344;
  *(v232 + 5) = v239;
  v240 = v347;
  *(v232 + 6) = v346;
  *(v232 + 7) = v240;
  v241 = v341;
  *v232 = v340;
  *(v232 + 1) = v241;
  v242 = v343;
  *(v232 + 2) = v342;
  *(v232 + 3) = v242;
  *&v185[v191[24]] = 0;
  *&v185[v191[25]] = 0;
  sub_1CAC809BC(v332, &v185[v276], &qword_1EC464020);
  *&v185[v191[27]] = v305;
  *&v185[v191[28]] = v303;
  *&v185[v277] = v288;
  *&v278[v185] = v432;
  *&v185[v191[31]] = v302;
  v243 = v306;
  sub_1CAB23A9C(v333, v306, &unk_1EC465A70);
  v244 = v338;
  v245 = v338[6];
  if (v245(v243, 1, v231) == 1)
  {
    v246 = v307;
    v313(v307, v335, v231);
    if (v245(v243, 1, v231) != 1)
    {
      sub_1CAB21B68(v243, &unk_1EC465A70);
    }
  }

  else
  {
    v246 = v307;
    (v244[4])(v307, v243, v231);
  }

  v247 = v323;
  v248 = v323[33];
  v249 = v323[35];
  (v315)(v246, 0, 1, v231);
  sub_1CABC6AC8(v246, v311, &unk_1EC465A70);
  v250 = v334;
  *&v334[v248] = v289;
  v251 = v318;
  sub_1CAC809BC(v318, v310, &qword_1EC465AC0);
  v252 = v300;
  *(v250 + v249) = v301;
  v253 = v319;
  sub_1CAC809BC(v319, v252, &qword_1EC464E38);
  v254 = v321;
  sub_1CAC809BC(v321, v299, &qword_1EC465450);
  sub_1CAB21B68(&v388, &qword_1EC463C00);
  *(v250 + v247[38]) = v279 & 1;
  sub_1CAB21B68(v254, &qword_1EC465450);
  sub_1CAB21B68(v253, &qword_1EC464E38);
  sub_1CAB21B68(v251, &qword_1EC465AC0);
  sub_1CAB21B68(v333, &unk_1EC465A70);
  sub_1CAB21B68(v332, &qword_1EC464020);
  sub_1CAB21B68(v336, &qword_1EC467A40);
  sub_1CAB21B68(v331, &qword_1EC4635D0);
  sub_1CAB21B68(v330, &qword_1EC4635D0);
  sub_1CAB21B68(v329, &qword_1EC4635D0);
  v255 = v338[1];
  v255(v328, v231);
  v255(v335, v231);
  v255(v327, v231);
  *(v250 + v247[39]) = MEMORY[0x1E69E7CC0];
  *(v250 + v247[40]) = v290 & 1;
  sub_1CABC6AC8(v322, v312, &qword_1EC465450);
  v256 = v298;
  sub_1CAC80A24(*v298, *(v298 + 1), *(v298 + 2), *(v298 + 3), *(v298 + 4), *(v298 + 5), *(v298 + 6));
  v257 = v285;
  *v256 = v286;
  *(v256 + 1) = v257;
  v259 = v283;
  v258 = v284;
  *(v256 + 2) = v281;
  *(v256 + 3) = v258;
  v260 = v282;
  *(v256 + 4) = v259;
  *(v256 + 5) = v260;
  *(v256 + 6) = v280;
  *(v250 + v247[43]) = 1;
  *(v250 + v247[44]) = 0;
  *(v250 + v247[45]) = 0;
  sub_1CAC80B78(v250, v308, type metadata accessor for EventModelObject);

  sub_1CAB21B68(v320, &qword_1EC464E38);
  sub_1CAB21B68(v324, &qword_1EC465AC0);
  return (v255)(v337, v231);
}

uint64_t FakeDataReader.Dataset.sources.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t FakeDataReader.Dataset.calendars.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t FakeDataReader.Dataset.events.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_1CAC72D40()
{
  v1 = 0x7261646E656C6163;
  if (*v0 != 1)
  {
    v1 = 0x73746E657665;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73656372756F73;
  }
}

uint64_t sub_1CAC72D9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CAC7A590(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CAC72DC4(uint64_t a1)
{
  v2 = sub_1CAC7A9CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CAC72E00(uint64_t a1)
{
  v2 = sub_1CAC7A9CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CAC72E3C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1CAC7A6AC(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

unint64_t sub_1CAC72E6C()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6261746972577369;
  if (v1 != 5)
  {
    v3 = 0xD000000000000014;
  }

  v4 = 1701869940;
  if (v1 != 3)
  {
    v4 = 0x6167656C65447369;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x656C746974;
  if (v1 != 1)
  {
    v5 = 0x70756F7247707061;
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

uint64_t sub_1CAC72F3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CAC7AB1C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CAC72F64(uint64_t a1)
{
  v2 = sub_1CAC80900();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CAC72FA0(uint64_t a1)
{
  v2 = sub_1CAC80900();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 sub_1CAC72FDC@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1CAC7AD74(a1, v6);
  if (!v2)
  {
    v5 = *v7;
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 63) = *&v7[15];
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

unint64_t sub_1CAC73030(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x53676E6972616873;
    v6 = 0xD000000000000018;
    if (a1 == 8)
    {
      v6 = 0xD000000000000011;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD00000000000001ALL;
    if (a1 == 5)
    {
      v7 = 0x726F6C6F63;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 25705;
    v2 = 0x4449656372756F73;
    v3 = 0x6C616E7265747865;
    if (a1 != 3)
    {
      v3 = 0x656C746974;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 1701869940;
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
}

uint64_t sub_1CAC7316C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CAC7B194(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CAC731A0(uint64_t a1)
{
  v2 = sub_1CAC808AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CAC731DC(uint64_t a1)
{
  v2 = sub_1CAC808AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1CAC73218@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1CAC7B4D0(a1, v8);
  if (!v2)
  {
    v5 = v12;
    a2[4] = v11;
    a2[5] = v5;
    a2[6] = v13[0];
    *(a2 + 106) = *(v13 + 10);
    v6 = v8[1];
    *a2 = v8[0];
    a2[1] = v6;
    result = *&v9;
    v7 = v10;
    a2[2] = v9;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_1CAC73274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v25 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4635D0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v22 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4636A8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v22 - v6;
  v8 = sub_1CAD4C404();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v23 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v22 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = sub_1CAD4C374();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CAD4C324();
  CUIKOneIndexedWeekStart();
  sub_1CAD4C224();
  result = CalCopyTimeZone();
  if (result)
  {
    v20 = result;
    sub_1CAD4C3E4();

    sub_1CAD4C344();
    sub_1CAD4C184();
    v21 = sub_1CAD4C1D4();
    (*(*(v21 - 8) + 56))(v7, 0, 1, v21);
    sub_1CAD4C314();
    result = (*(v16 + 32))(v24, v18, v15);
    if (*(v25 + 48))
    {
      sub_1CAD4C384();
      if ((*(v9 + 48))(v4, 1, v8) == 1)
      {
        return sub_1CAB21B68(v4, &qword_1EC4635D0);
      }

      else
      {
        (*(v9 + 32))(v14, v4, v8);
        (*(v9 + 16))(v23, v14, v8);
        sub_1CAD4C344();
        return (*(v9 + 8))(v14, v8);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1CAC735F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = sub_1CAD4BDC4();
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v47 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CAD4C354();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC465A70);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v46 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v35 - v12;
  v14 = sub_1CAD4C0F4();
  v49 = *(v14 - 8);
  v50 = v14;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v35 - v18;
  v20 = sub_1CAD4C374();
  v39 = *(v20 - 8);
  v40 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v48 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CAC73274(a1, v48);
  v22 = *(v6 + 104);
  v45 = *MEMORY[0x1E6969A48];
  v22(v8);
  result = [objc_opt_self() CalSimulatedDateForNow];
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v24 = result;
  v41 = a1;
  sub_1CAD4C0B4();

  sub_1CAD4C2C4();
  (*(v6 + 8))(v8, v5);
  v26 = v49;
  v25 = v50;
  v37 = *(v49 + 8);
  v37(v17, v50);
  v38 = *(v26 + 48);
  result = v38(v13, 1, v25);
  if (result == 1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v27 = *(v26 + 32);
  v49 = v26 + 32;
  v36 = v27;
  v27(v19, v13, v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464230);
  v28 = *(v6 + 72);
  v29 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1CAD5A590;
  v31 = v30 + v29;
  (v22)(v31, *MEMORY[0x1E6969A68], v5);
  (v22)(v31 + v28, *MEMORY[0x1E6969A78], v5);
  (v22)(v31 + 2 * v28, v45, v5);
  sub_1CAC926C8(v30);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v32 = v47;
  sub_1CAD4C244();

  sub_1CAD4BD34();
  sub_1CAD4BD94();
  v33 = v46;
  sub_1CAD4C2A4();
  result = v38(v33, 1, v50);
  if (result != 1)
  {
    (*(v42 + 8))(v32, v43);
    v34 = v50;
    v37(v19, v50);
    (*(v39 + 8))(v48, v40);
    return v36(v44, v33, v34);
  }

LABEL_7:
  __break(1u);
  return result;
}

id sub_1CAC73BB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = sub_1CAD4C354();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC465A70);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v25 - v8;
  v10 = sub_1CAD4C0F4();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v25 - v15;
  v17 = sub_1CAD4C374();
  v25 = *(v17 - 8);
  v26 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CAC73274(a1, v19);
  v20 = *MEMORY[0x1E6969A48];
  v21 = *(v4 + 104);
  v28 = v3;
  v21(v6, v20, v3);
  result = [objc_opt_self() CalSimulatedDateForNow];
  if (result)
  {
    v23 = result;
    sub_1CAD4C0B4();

    sub_1CAD4C2C4();
    (*(v4 + 8))(v6, v28);
    v24 = *(v11 + 8);
    v24(v14, v10);
    result = (*(v11 + 48))(v9, 1, v10);
    if (result != 1)
    {
      (*(v11 + 32))(v16, v9, v10);
      sub_1CAD4C204();
      v24(v16, v10);
      return (*(v25 + 8))(v19, v26);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1CAC73F10@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = sub_1CAD4C354();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC465A70);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v32 = &v28 - v8;
  v9 = sub_1CAD4C0F4();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v28 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v28 - v17;
  v19 = sub_1CAD4C374();
  v29 = *(v19 - 8);
  v30 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CAC73274(a1, v21);
  v22 = *MEMORY[0x1E6969A48];
  v23 = *(v4 + 104);
  v33 = v3;
  result = v23(v6, v22, v3);
  if (__OFADD__(*a1, 1))
  {
    __break(1u);
    goto LABEL_6;
  }

  result = [objc_opt_self() CalSimulatedDateForNow];
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v25 = result;
  sub_1CAD4C0B4();

  v26 = v32;
  sub_1CAD4C2C4();
  (*(v4 + 8))(v6, v33);
  v27 = *(v10 + 8);
  v27(v16, v9);
  result = (*(v10 + 48))(v26, 1, v9);
  if (result != 1)
  {
    (*(v10 + 32))(v18, v26, v9);
    sub_1CAD4C204();
    sub_1CAD4C074();
    v27(v13, v9);
    v27(v18, v9);
    return (*(v29 + 8))(v21, v30);
  }

LABEL_7:
  __break(1u);
  return result;
}

__n128 sub_1CAC742CC@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v33 = *v1;
  if (v1[6])
  {
    sub_1CAB23A9C(&v33, v34, &qword_1EC4643D0);
    v4 = 0;
  }

  else
  {
    v6 = v1[4];
    v5 = v1[5];
    v7 = objc_allocWithZone(MEMORY[0x1E6985C40]);
    sub_1CAB23A9C(&v33, v34, &qword_1EC4643D0);
    v4 = [v7 initWithLatitude:v6 longitude:v5];
  }

  v8 = v2[7];
  v9 = *(v2 + 64);
  v10 = *(v2 + 65);
  v11 = 0uLL;
  v12 = *(v2 + 10);
  if (v12)
  {
    v13 = *(v2 + 9);
    v14 = *(v2 + 13);
    v15 = *(v2 + 17);
    v37 = *(v2 + 15);
    v38 = v15;
    v39 = *(v2 + 19);
    v35 = *(v2 + 11);
    v36 = v14;
    v34[0] = v13;
    v34[1] = v12;
    sub_1CAC75F20(&v26);
    v11 = 0uLL;
    v24 = v26;
    v25 = v27;
    v22 = v29;
    v23 = v28;
    v17 = *(&v30 + 1);
    v16 = v30;
    v18 = v31;
  }

  else
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v24 = 0u;
    v25 = xmmword_1CAD61A90;
    v22 = 0u;
    v23 = 0u;
  }

  if (v9)
  {
    v8 = 50.0;
  }

  v32 = *(v2 + 1);
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 1;
  *(a1 + 112) = v11;
  *(a1 + 128) = v11;
  *(a1 + 144) = v11;
  *(a1 + 160) = v11;
  *a1 = v33;
  sub_1CAB23A9C(&v32, &v26, &qword_1EC4643D0);
  *(a1 + 16) = v4;
  *(a1 + 24) = v8;
  *(a1 + 32) = v32;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  sub_1CABB8C08(0, 0xF000000000000000);
  *(a1 + 64) = xmmword_1CAD61AA0;
  *(a1 + 80) = v10 & 1;
  v19 = *(a1 + 136);
  v28 = *(a1 + 120);
  v29 = v19;
  v30 = *(a1 + 152);
  v31 = *(a1 + 168);
  v20 = *(a1 + 104);
  v26 = *(a1 + 88);
  v27 = v20;
  sub_1CAB21B68(&v26, &qword_1EC463C20);
  *(a1 + 104) = v25;
  *(a1 + 88) = v24;
  result = v23;
  *(a1 + 136) = v22;
  *(a1 + 120) = v23;
  *(a1 + 152) = v16;
  *(a1 + 160) = v17;
  *(a1 + 168) = v18;
  return result;
}

uint64_t sub_1CAC74510()
{
  v1 = v0[1];
  v16 = *v0;
  v14[1] = v1;
  v15 = v1;
  v14[0] = v16;
  sub_1CAB23A9C(&v16, v13, &qword_1EC4643D0);
  sub_1CAB23A9C(&v15, v13, &qword_1EC4643D0);
  v2 = 0;
  v3 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v4 = &v14[v2] + 1;
  while (++v2 != 3)
  {
    v5 = v4 + 2;
    v6 = *v4;
    v4 += 2;
    if (v6)
    {
      v7 = *(v5 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_1CAD3461C(0, *(v3 + 2) + 1, 1, v3);
      }

      v9 = *(v3 + 2);
      v8 = *(v3 + 3);
      if (v9 >= v8 >> 1)
      {
        v3 = sub_1CAD3461C((v8 > 1), v9 + 1, 1, v3);
      }

      *(v3 + 2) = v9 + 1;
      v10 = &v3[16 * v9];
      *(v10 + 4) = v7;
      *(v10 + 5) = v6;
      goto LABEL_2;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4643D0);
  swift_arrayDestroy();
  v13[0] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464730);
  sub_1CAC80AAC();
  v11 = sub_1CAD4DEC4();

  return v11;
}

double sub_1CAC746B4@<D0>(char *a1@<X8>)
{
  v35 = sub_1CAD4C124();
  v3 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v32 - v7;
  v9 = *(v1 + 10);
  if (v9)
  {
    v10 = *(v1 + 9);
    if ((v10 != 0x6E776F6E6B6E75 || v9 != 0xE700000000000000) && (sub_1CAD4E9E4() & 1) == 0)
    {
      if (v10 == 0x676E69646E6570 && v9 == 0xE700000000000000 || (sub_1CAD4E9E4() & 1) != 0)
      {
        v34 = 1;
        goto LABEL_6;
      }

      if (v10 == 0x6465747065636361 && v9 == 0xE800000000000000 || (sub_1CAD4E9E4() & 1) != 0)
      {
        v34 = 2;
        goto LABEL_6;
      }

      if (v10 == 0x64656E696C636564 && v9 == 0xE800000000000000 || (sub_1CAD4E9E4() & 1) != 0)
      {
        v34 = 3;
        goto LABEL_6;
      }

      if (v10 == 0x76697461746E6574 && v9 == 0xE900000000000065 || (sub_1CAD4E9E4() & 1) != 0)
      {
        v34 = 4;
        goto LABEL_6;
      }

      if (v10 == 0x65746167656C6564 && v9 == 0xE900000000000064 || (sub_1CAD4E9E4() & 1) != 0)
      {
        v34 = 5;
        goto LABEL_6;
      }

      if (v10 == 0x6574656C706D6F63 && v9 == 0xE900000000000064 || (sub_1CAD4E9E4() & 1) != 0)
      {
        v34 = 6;
        goto LABEL_6;
      }

      if (v10 == 0x7365636F72506E69 && v9 == 0xE900000000000073 || (sub_1CAD4E9E4() & 1) != 0)
      {
        v34 = 7;
        goto LABEL_6;
      }
    }
  }

  v34 = 0;
LABEL_6:
  v11 = *(v1 + 12);
  if (!v11)
  {
    goto LABEL_19;
  }

  v12 = *(v1 + 11);
  if (v12 == 0x6E776F6E6B6E75 && v11 == 0xE700000000000000 || (sub_1CAD4E9E4() & 1) != 0)
  {
    v33 = 0;
    v13 = *(v1 + 14);
    if (!v13)
    {
      goto LABEL_28;
    }

    goto LABEL_21;
  }

  if (v12 == 0x6465726975716572 && v11 == 0xE800000000000000 || (sub_1CAD4E9E4() & 1) != 0)
  {
    goto LABEL_19;
  }

  if (v12 == 0x6C616E6F6974706FLL && v11 == 0xE800000000000000 || (sub_1CAD4E9E4() & 1) != 0)
  {
    v14 = 2;
  }

  else if (v12 == 0x7269616863 && v11 == 0xE500000000000000 || (sub_1CAD4E9E4() & 1) != 0)
  {
    v14 = 3;
  }

  else
  {
    if ((v12 != 0x69747261506E6F6ELL || v11 != 0xEE00746E61706963) && (sub_1CAD4E9E4() & 1) == 0)
    {
LABEL_19:
      v14 = 1;
      goto LABEL_20;
    }

    v14 = 4;
  }

LABEL_20:
  v33 = v14;
  v13 = *(v1 + 14);
  if (!v13)
  {
LABEL_28:
    v16 = 1;
    goto LABEL_29;
  }

LABEL_21:
  v15 = *(v1 + 13);
  if (v15 == 0x6E776F6E6B6E75 && v13 == 0xE700000000000000 || (sub_1CAD4E9E4() & 1) != 0)
  {
    v16 = 0;
    goto LABEL_29;
  }

  if (v15 == 0x6E6F73726570 && v13 == 0xE600000000000000 || (sub_1CAD4E9E4() & 1) != 0)
  {
    goto LABEL_28;
  }

  if (v15 == 1836019570 && v13 == 0xE400000000000000 || (sub_1CAD4E9E4() & 1) != 0)
  {
    v16 = 2;
  }

  else if (v15 == 0x656372756F736572 && v13 == 0xE800000000000000 || (sub_1CAD4E9E4() & 1) != 0)
  {
    v16 = 3;
  }

  else
  {
    if ((v15 != 0x70756F7267 || v13 != 0xE500000000000000) && (sub_1CAD4E9E4() & 1) == 0)
    {
      goto LABEL_28;
    }

    v16 = 4;
  }

LABEL_29:
  v17 = *v1;
  v39 = v1[1];
  v40 = v17;
  v38 = v1[2];
  if (*(v1 + 7))
  {
    sub_1CAB23A9C(&v40, &v37, &qword_1EC4643D0);
    sub_1CAB23A9C(&v39, &v37, &qword_1EC4643D0);
    sub_1CAB23A9C(&v38, &v37, &qword_1EC4643D0);
    sub_1CAD4BFE4();
  }

  else
  {
    v18 = sub_1CAD4BFF4();
    (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
    sub_1CAB23A9C(&v40, &v37, &qword_1EC4643D0);
    sub_1CAB23A9C(&v39, &v37, &qword_1EC4643D0);
    sub_1CAB23A9C(&v38, &v37, &qword_1EC4643D0);
  }

  v19 = *(v1 + 65);
  v37 = *(v1 + 120);
  sub_1CAB23A9C(&v37, v36, &qword_1EC4643D0);
  sub_1CAD4C114();
  v20 = sub_1CAD4C104();
  v22 = v21;
  (*(v3 + 8))(v5, v35);
  v23 = type metadata accessor for EventAttendeeModelObject(0);
  v24 = v23[7];
  v25 = sub_1CAD4BFF4();
  (*(*(v25 - 8) + 56))(&a1[v24], 1, 1, v25);
  v26 = &a1[v23[10]];
  v27 = v23[14];
  v28 = v39;
  *a1 = v40;
  *(a1 + 1) = v28;
  *(a1 + 2) = v38;
  sub_1CABC6AC8(v8, &a1[v24], &qword_1EC465450);
  v29 = &a1[v23[8]];
  *v29 = v20;
  v29[1] = v22;
  a1[v23[9]] = v19 & 1;
  *v26 = 0;
  *(v26 + 1) = 0;
  v30 = v33;
  *&a1[v23[11]] = v34;
  *&a1[v23[12]] = v30;
  *&a1[v23[13]] = v16;
  result = *&v37;
  *&a1[v27] = v37;
  return result;
}

uint64_t sub_1CAC74EDC@<X0>(char *a1@<X8>)
{
  v3 = sub_1CAD4C124();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v26 - v8;
  v10 = *(v1 + 18);
  if (!v10)
  {
    goto LABEL_5;
  }

  v11 = *(v1 + 17);
  if (v11 == 1701736302 && v10 == 0xE400000000000000)
  {
    goto LABEL_5;
  }

  if (sub_1CAD4E9E4())
  {
    goto LABEL_5;
  }

  if (v11 == 0x746E65696C63 && v10 == 0xE600000000000000 || (sub_1CAD4E9E4() & 1) != 0)
  {
    v12 = 1;
  }

  else
  {
    if ((v11 != 0x726576726573 || v10 != 0xE600000000000000) && (sub_1CAD4E9E4() & 1) == 0)
    {
LABEL_5:
      v12 = 0;
      goto LABEL_6;
    }

    v12 = 2;
  }

LABEL_6:
  v13 = *v1;
  v29 = v1[1];
  v30 = v13;
  v28 = v1[2];
  if (*(v1 + 7))
  {
    v26[1] = *(v1 + 6);
    sub_1CAB23A9C(&v30, v27, &qword_1EC4643D0);
    sub_1CAB23A9C(&v29, v27, &qword_1EC4643D0);
    sub_1CAB23A9C(&v28, v27, &qword_1EC4643D0);
    sub_1CAD4BFE4();
  }

  else
  {
    v14 = sub_1CAD4BFF4();
    (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
    sub_1CAB23A9C(&v30, v27, &qword_1EC4643D0);
    sub_1CAB23A9C(&v29, v27, &qword_1EC4643D0);
    sub_1CAB23A9C(&v28, v27, &qword_1EC4643D0);
  }

  v15 = *(v1 + 65);
  sub_1CAD4C114();
  v16 = sub_1CAD4C104();
  v18 = v17;
  (*(v4 + 8))(v6, v3);
  v19 = type metadata accessor for EventOrganizerModelObject(0);
  v20 = v19[7];
  v21 = sub_1CAD4BFF4();
  (*(*(v21 - 8) + 56))(&a1[v20], 1, 1, v21);
  v22 = &a1[v19[10]];
  v23 = v29;
  *a1 = v30;
  *(a1 + 1) = v23;
  *(a1 + 2) = v28;
  result = sub_1CABC6AC8(v9, &a1[v20], &qword_1EC465450);
  v25 = &a1[v19[8]];
  *v25 = v16;
  v25[1] = v18;
  a1[v19[9]] = v15 & 1;
  *v22 = 0;
  *(v22 + 1) = 0;
  *&a1[v19[11]] = v12;
  return result;
}

uint64_t sub_1CAC752BC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v50 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v46 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v46 - v9;
  v11 = type metadata accessor for EventVirtualConferenceJoinMethodModelObject(0);
  v53 = *(v11 - 8);
  v54 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v1 + 9))
  {
    goto LABEL_6;
  }

  v15 = sub_1CAD4E004();
  v16 = v14;
  if (v15 == 0x656C707061 && v14 == 0xE500000000000000 || (sub_1CAD4E9E4() & 1) != 0)
  {

LABEL_6:
    v49 = 0;
    goto LABEL_7;
  }

  if (v15 == 0x656C676F6F67 && v16 == 0xE600000000000000)
  {
  }

  else
  {
    v45 = sub_1CAD4E9E4();

    if ((v45 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  v49 = 1;
LABEL_7:
  v59 = *v1;
  v17 = *(v1 + 2);
  v51 = v8;
  if (v17)
  {
    v48 = a1;
    v18 = *(v17 + 16);
    if (v18)
    {
      v52 = v10;
      v47 = v1;
      sub_1CAB23A9C(&v59, &v58, &qword_1EC4643D0);
      *&v58 = MEMORY[0x1E69E7CC0];
      sub_1CACB9FD8(0, v18, 0);
      v19 = v58;
      v20 = (v17 + 64);
      do
      {
        v22 = *(v20 - 4);
        v21 = *(v20 - 3);
        v23 = *(v20 - 1);
        v55 = *v20;
        v24 = v19;
        if (v23)
        {
          swift_bridgeObjectRetain_n();

          v25 = v52;
          sub_1CAD4BFE4();
        }

        else
        {
          v26 = sub_1CAD4BFF4();
          v25 = v52;
          (*(*(v26 - 8) + 56))(v52, 1, 1, v26);
          swift_bridgeObjectRetain_n();
        }

        v27 = v54;
        v28 = *(v54 + 20);
        v29 = sub_1CAD4BFF4();
        (*(*(v29 - 8) + 56))(&v13[v28], 1, 1, v29);

        *v13 = v22;
        *(v13 + 1) = v21;
        sub_1CABC6AC8(v25, &v13[v28], &qword_1EC465450);
        v13[*(v27 + 24)] = v55 & 1;
        v19 = v24;
        *&v58 = v24;
        v31 = *(v24 + 16);
        v30 = *(v24 + 24);
        if (v31 >= v30 >> 1)
        {
          sub_1CACB9FD8(v30 > 1, v31 + 1, 1);
          v19 = v58;
        }

        v20 += 40;
        *(v19 + 16) = v31 + 1;
        sub_1CAC80B78(v13, v19 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v31, type metadata accessor for EventVirtualConferenceJoinMethodModelObject);
        --v18;
      }

      while (v18);
      v1 = v47;
      a1 = v48;
      v8 = v51;
    }

    else
    {
      sub_1CAB23A9C(&v59, &v58, &qword_1EC4643D0);
      v19 = MEMORY[0x1E69E7CC0];
      a1 = v48;
    }
  }

  else
  {
    sub_1CAB23A9C(&v59, &v58, &qword_1EC4643D0);
    v19 = 0;
  }

  v32 = *(v1 + 56);
  v33 = *(v1 + 24);
  v57 = *(v1 + 40);
  v58 = v33;
  v34 = v50;
  if (!*(v1 + 11))
  {
    v35 = sub_1CAD4BFF4();
    (*(*(v35 - 8) + 56))(v8, 1, 1, v35);
    sub_1CAB23A9C(&v58, v56, &qword_1EC4643D0);
    sub_1CAB23A9C(&v57, v56, &qword_1EC4643D0);
    if (*(v1 + 13))
    {
      goto LABEL_21;
    }

LABEL_23:
    v36 = sub_1CAD4BFF4();
    (*(*(v36 - 8) + 56))(v34, 1, 1, v36);
    goto LABEL_24;
  }

  sub_1CAB23A9C(&v58, v56, &qword_1EC4643D0);
  sub_1CAB23A9C(&v57, v56, &qword_1EC4643D0);
  sub_1CAD4BFE4();
  if (!*(v1 + 13))
  {
    goto LABEL_23;
  }

LABEL_21:
  sub_1CAD4BFE4();
LABEL_24:
  v37 = (v32 == 2) | v32;
  v38 = type metadata accessor for EventVirtualConferenceModelObject(0);
  v39 = *(v38 + 40);
  v40 = sub_1CAD4BFF4();
  v41 = *(*(v40 - 8) + 56);
  v41(a1 + v39, 1, 1, v40);
  v42 = *(v38 + 44);
  v41(a1 + v42, 1, 1, v40);
  v43 = v58;
  *a1 = v59;
  *(a1 + 16) = v19;
  *(a1 + 24) = v43;
  *(a1 + 40) = v57;
  *(a1 + 56) = v37 & 1;
  *(a1 + 64) = v49;
  sub_1CABC6AC8(v51, a1 + v39, &qword_1EC465450);
  return sub_1CABC6AC8(v34, a1 + v42, &qword_1EC465450);
}

uint64_t sub_1CAC75954@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  if (v3 == 2 || (v3 & 1) == 0)
  {
    *a2 = *a1;
    type metadata accessor for EventAlarmTrigger();
  }

  else
  {
    sub_1CAD4C074();
    type metadata accessor for EventAlarmTrigger();
  }

  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for EventAlarmModelObject();
  *(a2 + *(result + 20)) = 0;
  return result;
}

uint64_t sub_1CAC759E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC463290);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v28 - v11;
  if (a1 == 0x796C696164 && a2 == 0xE500000000000000 || (sub_1CAD4E9E4() & 1) != 0)
  {
    v29 = 0;
  }

  else
  {
    if (a1 == 0x796C6B656577 && a2 == 0xE600000000000000 || (sub_1CAD4E9E4() & 1) != 0)
    {
      v13 = 1;
    }

    else if (a1 == 0x796C68746E6F6DLL && a2 == 0xE700000000000000 || (sub_1CAD4E9E4() & 1) != 0)
    {
      v13 = 2;
    }

    else if (a1 == 0x796C72616579 && a2 == 0xE600000000000000)
    {
      v13 = 3;
    }

    else
    {
      v27 = sub_1CAD4E9E4();
      v13 = 3;
      if ((v27 & 1) == 0)
      {
        v13 = 0;
      }
    }

    v29 = v13;
  }

  v14 = type metadata accessor for EventRecurrenceEndModelObject(0);
  v15 = *(*(v14 - 8) + 56);
  v15(v12, 1, 1, v14);
  if (a4)
  {
    v16 = 1;
  }

  else
  {
    v16 = a3;
  }

  v15(a5, 1, 1, v14);
  v17 = type metadata accessor for EventRecurrenceRuleModelObject(0);
  v18 = v17[8];
  v19 = a5 + v17[7];
  v20 = v17[9];
  v21 = v17[10];
  v23 = v17[11];
  v22 = v17[12];
  v24 = v12;
  v25 = v17[13];
  result = sub_1CABC6AC8(v24, a5, &unk_1EC463290);
  *(a5 + v17[5]) = v29;
  *(a5 + v17[6]) = v16;
  *v19 = 0;
  *(v19 + 8) = 1;
  *(a5 + v18) = 0;
  *(a5 + v20) = 0;
  *(a5 + v21) = 0;
  *(a5 + v23) = 0;
  *(a5 + v22) = 0;
  *(a5 + v25) = 0;
  return result;
}

void sub_1CAC75C7C(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1CAD4E004();
  CalendarColor.init(_:)(v4, v5, &v17);
  v13 = v17;
  v6 = v18;
  v7 = v19;
  sub_1CAD4BEF4();
  swift_allocObject();
  sub_1CAD4BEE4();
  v14 = v13;
  v15 = v6;
  v16 = v7;
  sub_1CAC173EC();
  v8 = sub_1CAD4BED4();
  v10 = v9;

  v11 = *v2;
  v17 = *(v2 + 8);
  v12 = v17;
  *a1 = v11 & 1;
  *(a1 + 8) = v12;
  sub_1CAB23A9C(&v17, &v14, &qword_1EC4643D0);
  sub_1CAC3C300(0, 0, 0, 0);
  *(a1 + 24) = 0xD000000000000025;
  *(a1 + 32) = 0x80000001CAD762D0;
  *(a1 + 40) = v8;
  *(a1 + 48) = v10;
}

uint64_t sub_1CAC75DC8()
{
  v1 = 7954788;
  v2 = 0x6574756E696DLL;
  if (*v0 != 2)
  {
    v2 = 0x656E6F5A656D6974;
  }

  if (*v0)
  {
    v1 = 1920298856;
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

uint64_t sub_1CAC75E30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CAC7BA60(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CAC75E58(uint64_t a1)
{
  v2 = sub_1CAC816A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CAC75E94(uint64_t a1)
{
  v2 = sub_1CAC816A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1CAC75ED0@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1CAC7BBC0(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t sub_1CAC75F20@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *v1 == 0x6E776F6E6B6E75 && v4 == 0xE700000000000000;
  if (v5 || (sub_1CAD4E9E4() & 1) != 0)
  {
    v6 = -1;
  }

  else
  {
    v13 = v3 == 1701670760 && v4 == 0xE400000000000000;
    if (v13 || (sub_1CAD4E9E4() & 1) != 0)
    {
      v6 = 0;
    }

    else if (v3 == 1802661751 && v4 == 0xE400000000000000 || (sub_1CAD4E9E4() & 1) != 0)
    {
      v6 = 1;
    }

    else if (v3 == 0x6C6F6F686373 && v4 == 0xE600000000000000 || (sub_1CAD4E9E4() & 1) != 0)
    {
      v6 = 2;
    }

    else if (v3 == 7174503 && v4 == 0xE300000000000000)
    {
      v6 = 3;
    }

    else
    {
      v14 = sub_1CAD4E9E4();
      v6 = 3;
      if ((v14 & 1) == 0)
      {
        v6 = -1;
      }
    }
  }

  v8 = *(v1 + 2);
  v20 = *(v1 + 1);
  v7 = v20;
  v10 = *(v1 + 4);
  v18 = *(v1 + 3);
  v9 = v18;
  v19 = v8;
  v16 = *(v1 + 5);
  v11 = v16;
  v17 = v10;
  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 24) = v8;
  *(a1 + 40) = v9;
  *(a1 + 56) = v10;
  *(a1 + 72) = v11;
  sub_1CAB23A9C(&v20, v15, &qword_1EC4643D0);
  sub_1CAB23A9C(&v19, v15, &qword_1EC4643D0);
  sub_1CAB23A9C(&v18, v15, &qword_1EC4643D0);
  sub_1CAB23A9C(&v17, v15, &qword_1EC4643D0);
  return sub_1CAB23A9C(&v16, v15, &qword_1EC4643D0);
}

uint64_t sub_1CAC76148()
{
  if (*v0)
  {
    return 0x64757469676E6F6CLL;
  }

  else
  {
    return 0x656475746974616CLL;
  }
}

uint64_t sub_1CAC76188@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656475746974616CLL && a2 == 0xE800000000000000;
  if (v6 || (sub_1CAD4E9E4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1CAD4E9E4();

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

uint64_t sub_1CAC7626C(uint64_t a1)
{
  v2 = sub_1CAC824EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CAC762A8(uint64_t a1)
{
  v2 = sub_1CAC824EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1CAC762E4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1CAC7BDEC(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
  }
}

uint64_t sub_1CAC76310(uint64_t a1)
{
  v2 = sub_1CAC82540();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CAC7634C(uint64_t a1)
{
  v2 = sub_1CAC82540();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1CAC76388@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1CAC7BF9C(a1, v8);
  if (!v2)
  {
    v5 = v8[3];
    a2[2] = v8[2];
    a2[3] = v5;
    v6 = v8[5];
    a2[4] = v8[4];
    a2[5] = v6;
    result = *v8;
    v7 = v8[1];
    *a2 = v8[0];
    a2[1] = v7;
  }

  return result;
}

uint64_t sub_1CAC763D4()
{
  v1 = *v0;
  v2 = 0x656C746974;
  v3 = 0x737569646172;
  v4 = 0x636572706D497369;
  if (v1 != 4)
  {
    v4 = 0x6574636964657270;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x73736572646461;
  if (v1 != 1)
  {
    v5 = 0x616E6964726F6F63;
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

uint64_t sub_1CAC764A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CAC7C458(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CAC764C8(uint64_t a1)
{
  v2 = sub_1CAC81888();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CAC76504(uint64_t a1)
{
  v2 = sub_1CAC81888();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 sub_1CAC76540@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1CAC7C658(a1, v9);
  if (!v2)
  {
    v5 = v9[9];
    *(a2 + 128) = v9[8];
    *(a2 + 144) = v5;
    *(a2 + 160) = v10;
    v6 = v9[5];
    *(a2 + 64) = v9[4];
    *(a2 + 80) = v6;
    v7 = v9[7];
    *(a2 + 96) = v9[6];
    *(a2 + 112) = v7;
    v8 = v9[1];
    *a2 = v9[0];
    *(a2 + 16) = v8;
    result = v9[3];
    *(a2 + 32) = v9[2];
    *(a2 + 48) = result;
  }

  return result;
}

uint64_t sub_1CAC765B8()
{
  if (*v0)
  {
    return 0x756C6F7362417369;
  }

  else
  {
    return 0x74657366666FLL;
  }
}

uint64_t sub_1CAC765F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x74657366666FLL && a2 == 0xE600000000000000;
  if (v6 || (sub_1CAD4E9E4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x756C6F7362417369 && a2 == 0xEA00000000006574)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1CAD4E9E4();

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

uint64_t sub_1CAC766D4(uint64_t a1)
{
  v2 = sub_1CAC819EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CAC76710(uint64_t a1)
{
  v2 = sub_1CAC819EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CAC7674C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1CAC7CA8C(a1);
  if (!v2)
  {
    *a2 = v5;
    *(a2 + 8) = result;
  }

  return result;
}

uint64_t sub_1CAC7677C()
{
  v1 = 7107189;
  if (*v0 != 1)
  {
    v1 = 0x6364616F72427369;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_1CAC767D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CAC7CC38(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CAC767FC(uint64_t a1)
{
  v2 = sub_1CAC82498();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CAC76838(uint64_t a1)
{
  v2 = sub_1CAC82498();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1CAC76874@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1CAC7CD50(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

unint64_t sub_1CAC768BC()
{
  v1 = *v0;
  v2 = 0x656C746974;
  v3 = 0xD000000000000014;
  if (v1 == 6)
  {
    v3 = 0xD000000000000010;
  }

  v4 = 0x6261746972577369;
  if (v1 != 4)
  {
    v4 = 0x656372756F73;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000017;
  if (v1 == 2)
  {
    v5 = 0x736C6961746564;
  }

  if (*v0)
  {
    v2 = 0x6874654D6E696F6ALL;
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

uint64_t sub_1CAC769C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CAC7CF50(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CAC769E8(uint64_t a1)
{
  v2 = sub_1CAC816FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CAC76A24(uint64_t a1)
{
  v2 = sub_1CAC816FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 sub_1CAC76A60@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1CAC7D1F4(a1, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 96) = v7[6];
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

uint64_t sub_1CAC76AB4(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 1701667182;
    v7 = 0x6D754E656E6F6870;
    v8 = 7107189;
    if (a1 != 3)
    {
      v8 = 0x696E6167724F7369;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x6C69616D65;
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
    v1 = 1701869940;
    v2 = 0x746E656D6D6F63;
    if (a1 != 9)
    {
      v2 = 0x656C756465686373;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x6E65727275437369;
    v4 = 0x737574617473;
    if (a1 != 6)
    {
      v4 = 1701605234;
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

uint64_t sub_1CAC76C0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CAC7D950(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CAC76C34(uint64_t a1)
{
  v2 = sub_1CAC81A94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CAC76C70(uint64_t a1)
{
  v2 = sub_1CAC81A94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1CAC76CAC@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1CAC7DCDC(a1, v9);
  if (!v2)
  {
    v5 = v9[7];
    *(a2 + 96) = v9[6];
    *(a2 + 112) = v5;
    *(a2 + 128) = v9[8];
    *(a2 + 144) = v10;
    v6 = v9[3];
    *(a2 + 32) = v9[2];
    *(a2 + 48) = v6;
    v7 = v9[5];
    *(a2 + 64) = v9[4];
    *(a2 + 80) = v7;
    result = *v9;
    v8 = v9[1];
    *a2 = v9[0];
    *(a2 + 16) = v8;
  }

  return result;
}

uint64_t sub_1CAC76D20(uint64_t a1)
{
  v2 = sub_1CAC81AE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CAC76D5C(uint64_t a1)
{
  v2 = sub_1CAC81AE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1CAC76D98@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1CAC7E3A4(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

unint64_t sub_1CAC76DE0(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x656C746974;
      break;
    case 2:
      result = 0x7472617473;
      break;
    case 3:
      result = 6581861;
      break;
    case 4:
      result = 0x7961446C6C417369;
      break;
    case 5:
      result = 0x6974616F6C467369;
      break;
    case 6:
      result = 0x736F706F72507369;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0x6E6F697461636F6CLL;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    case 10:
      result = 0x69546C6576617274;
      break;
    case 11:
      result = 0x7261646E656C6163;
      break;
    case 12:
      result = 0x4C79636176697270;
      break;
    case 13:
      result = 0x737574617473;
      break;
    case 14:
      result = 0x736D72616C61;
      break;
    case 15:
      result = 0x7365746F6ELL;
      break;
    case 16:
      result = 0x6962616C69617661;
      break;
    case 17:
      result = 0x6E65727275636572;
      break;
    case 18:
      result = 0x6565646E65747461;
      break;
    case 19:
      result = 0x6E697274536C7275;
      break;
    case 20:
      result = 0x6361747441736168;
      break;
    case 21:
      result = 0xD00000000000001DLL;
      break;
    case 22:
      result = 0xD000000000000017;
      break;
    case 23:
      result = 0x7461726765746E69;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1CAC77084()
{
  if (*v0)
  {
    return 0x6C61767265746E69;
  }

  else
  {
    return 0x636E657571657266;
  }
}

uint64_t sub_1CAC770C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x636E657571657266 && a2 == 0xE900000000000079;
  if (v6 || (sub_1CAD4E9E4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C61767265746E69 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1CAD4E9E4();

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

uint64_t sub_1CAC771A8(uint64_t a1)
{
  v2 = sub_1CAC81A40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CAC771E4(uint64_t a1)
{
  v2 = sub_1CAC81A40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CAC77220@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1CAC7E5B8(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7 & 1;
  }

  return result;
}

uint64_t sub_1CAC77260@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CAC7E79C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CAC77288(uint64_t a1)
{
  v2 = sub_1CAC8060C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CAC772C4(uint64_t a1)
{
  v2 = sub_1CAC8060C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1CAC77300@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1CAC7EF04(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x338uLL);
  }

  return result;
}

uint64_t sub_1CAC7734C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464EC0);
  v35 = a2;
  result = sub_1CAD4E7C4();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_1CAD4EA84();
      sub_1CAD4E054();
      result = sub_1CAD4EAC4();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1CAC775F0(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for EventAttendeeModelObject(0);
  v39 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464EA0);
  v40 = a2;
  result = sub_1CAD4E7C4();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_1CAC80B78(v28, v41, type metadata accessor for EventAttendeeModelObject);
      }

      else
      {
        sub_1CAC80954(v28, v41, type metadata accessor for EventAttendeeModelObject);
      }

      sub_1CAD4EA84();
      sub_1CAD4E054();
      result = sub_1CAD4EAC4();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_1CAC80B78(v41, *(v9 + 56) + v27 * v17, type metadata accessor for EventAttendeeModelObject);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_1CAC77990(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v32 = a2;
  result = sub_1CAD4E7C4();
  v8 = result;
  if (*(v6 + 16))
  {
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v6 + 56) + 8 * v20);
      v33 = *(*(v6 + 48) + 16 * v20);
      v22 = *(*(v6 + 48) + 16 * v20 + 8);
      if ((v32 & 1) == 0)
      {

        v23 = v21;
      }

      sub_1CAD4EA84();
      sub_1CAD4EAA4();
      if (v22)
      {
        sub_1CAD4E054();
      }

      result = sub_1CAD4EAC4();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 16 * v16) = v33;
      *(*(v8 + 56) + 8 * v16) = v21;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v32 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_35;
    }

    v31 = 1 << *(v6 + 32);
    v4 = v3;
    if (v31 >= 64)
    {
      bzero((v6 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v6 + 16) = 0;
  }

LABEL_35:
  *v4 = v8;
  return result;
}

uint64_t sub_1CAC77C4C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465D58);
  v42 = a2;
  result = sub_1CAD4E7C4();
  v7 = result;
  if (*(v5 + 16))
  {
    v41 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 144 * v21;
      if (v42)
      {
        v44 = *(v25 + 8);
        v45 = *(v25 + 16);
        v46 = *(v25 + 32);
        v47 = *v25;
        v48 = *(v25 + 48);
        v49 = *(v25 + 56);
        v50 = *(v25 + 57);
        v51 = *(v25 + 58);
        v52 = *(v25 + 59);
        v53 = *(v25 + 60);
        v54 = *(v25 + 64);
        v55 = *(v25 + 80);
        v26 = *(v25 + 88);
        v43 = *(v25 + 104);
        v59 = *(v25 + 120);
        v60 = *(v25 + 112);
        v57 = *(v25 + 96);
        v58 = *(v25 + 128);
        v56 = *(v25 + 136);
      }

      else
      {
        v62 = *v25;
        v27 = *(v25 + 64);
        v29 = *(v25 + 16);
        v28 = *(v25 + 32);
        v65 = *(v25 + 48);
        v66 = v27;
        v63 = v29;
        v64 = v28;
        v31 = *(v25 + 96);
        v30 = *(v25 + 112);
        v32 = *(v25 + 80);
        *&v69[10] = *(v25 + 122);
        v68 = v31;
        *v69 = v30;
        v67 = v32;
        v59 = *(&v30 + 1);
        v60 = v30;
        v56 = *&v69[24];
        v57 = v31;
        v58 = *&v69[16];
        v43 = BYTE8(v31);
        v55 = v32;
        v26 = BYTE8(v32);
        v54 = v27;
        v52 = BYTE11(v65);
        v53 = BYTE12(v65);
        v50 = BYTE9(v65);
        v51 = BYTE10(v65);
        v49 = BYTE8(v65);
        v45 = v63;
        v46 = v64;
        v47 = v62;
        v48 = v65;
        v44 = *(&v62 + 1);

        sub_1CAC17240(&v62, v61);
      }

      sub_1CAD4EA84();
      sub_1CAD4E054();
      result = sub_1CAD4EAC4();
      v33 = -1 << *(v7 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v14 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v14 + 8 * v35);
          if (v39 != -1)
          {
            v15 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v34) & ~*(v14 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      LOBYTE(v62) = v26;
      v61[0] = v43;
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 144 * v15;
      *v17 = v47;
      *(v17 + 8) = v44;
      *(v17 + 16) = v45;
      *(v17 + 32) = v46;
      *(v17 + 48) = v48;
      *(v17 + 56) = v49;
      *(v17 + 57) = v50;
      *(v17 + 58) = v51;
      *(v17 + 59) = v52;
      *(v17 + 60) = v53;
      *(v17 + 64) = v54;
      *(v17 + 80) = v55;
      *(v17 + 88) = v62;
      *(v17 + 96) = v57;
      *(v17 + 104) = v61[0];
      *(v17 + 112) = v60;
      *(v17 + 120) = v59;
      *(v17 + 128) = v58;
      *(v17 + 136) = v56;
      ++*(v7 + 16);
      v5 = v41;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v40 = 1 << *(v5 + 32);
    v3 = v2;
    if (v40 >= 64)
    {
      bzero(v9, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v40;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1CAC780AC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465E58);
  v34 = a2;
  result = sub_1CAD4E7C4();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_1CAD4EA84();
      sub_1CAD4E054();
      result = sub_1CAD4EAC4();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1CAC78354(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC465AB0);
  v34 = a2;
  result = sub_1CAD4E7C4();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_1CAD4EA84();
      sub_1CAD4E054();
      result = sub_1CAD4EAC4();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1CAC785F4(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for EventModelObject();
  v39 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465D48);
  v40 = a2;
  result = sub_1CAD4E7C4();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_1CAC80B78(v28, v41, type metadata accessor for EventModelObject);
      }

      else
      {
        sub_1CAC80954(v28, v41, type metadata accessor for EventModelObject);
      }

      sub_1CAD4EA84();
      sub_1CAD4E054();
      result = sub_1CAD4EAC4();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_1CAC80B78(v41, *(v9 + 56) + v27 * v17, type metadata accessor for EventModelObject);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_1CAC7896C(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for EventCalendarModelObject();
  v39 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465D40);
  v40 = a2;
  result = sub_1CAD4E7C4();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_1CAC80B78(v28, v41, type metadata accessor for EventCalendarModelObject);
      }

      else
      {
        sub_1CAC80954(v28, v41, type metadata accessor for EventCalendarModelObject);
      }

      sub_1CAD4EA84();
      sub_1CAD4E054();
      result = sub_1CAD4EAC4();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_1CAC80B78(v41, *(v9 + 56) + v27 * v17, type metadata accessor for EventCalendarModelObject);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_1CAC78CE4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1CAC1628C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1CAC7734C(v16, a4 & 1);
      v11 = sub_1CAC1628C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        v11 = sub_1CAD4EA34();
        __break(1u);
        return MEMORY[0x1EEE66BB8](v11, v23);
      }
    }

    else
    {
      v19 = v11;
      sub_1CAC791DC();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7];
    v23 = *(v22 + 8 * v11);
    *(v22 + 8 * v11) = a1;

    return MEMORY[0x1EEE66BB8](v11, v23);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v25 = v21[2];
  v15 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v26;
}

uint64_t sub_1CAC78E5C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1CAC1628C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1CAC77C4C(v16, a4 & 1);
      v11 = sub_1CAC1628C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_1CAD4EA34();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1CAC79720();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 144 * v11;

    return sub_1CAC80BE0(a1, v22);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  v25 = (v21[7] + 144 * v11);
  *v25 = *a1;
  v26 = a1[1];
  v27 = a1[2];
  v28 = a1[4];
  v25[3] = a1[3];
  v25[4] = v28;
  v25[1] = v26;
  v25[2] = v27;
  v29 = a1[5];
  v30 = a1[6];
  v31 = a1[7];
  *(v25 + 122) = *(a1 + 122);
  v25[6] = v30;
  v25[7] = v31;
  v25[5] = v29;
  v32 = v21[2];
  v15 = __OFADD__(v32, 1);
  v33 = v32 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v33;
}

unint64_t sub_1CAC7900C()
{
  result = qword_1EC465C38;
  if (!qword_1EC465C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465C38);
  }

  return result;
}

uint64_t sub_1CAC79060(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1CAC1628C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1CAC780AC(v16, a4 & 1);
      v11 = sub_1CAC1628C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_1CAD4EA34();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1CAC79910();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

id sub_1CAC791DC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464EC0);
  v2 = *v0;
  v3 = sub_1CAD4E7B4();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

void *sub_1CAC79348()
{
  v1 = v0;
  v2 = type metadata accessor for EventAttendeeModelObject(0);
  v31 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464EA0);
  v4 = *v0;
  v5 = sub_1CAD4E7B4();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_1CAC80954(*(v4 + 56) + v26, v30, type metadata accessor for EventAttendeeModelObject);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_1CAC80B78(v25, *(v27 + 56) + v26, type metadata accessor for EventAttendeeModelObject);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

id sub_1CAC795C8(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_1CAD4E7B4();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 56) + 8 * v18);
        *(*(v5 + 48) + 16 * v18) = *(*(v3 + 48) + 16 * v18);
        *(*(v5 + 56) + 8 * v18) = v19;

        result = v19;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_1CAC79720()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465D58);
  v2 = *v0;
  v3 = sub_1CAD4E7B4();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = sub_1CAC17240(&v37, &v36))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 16 * v16;
      v18 = *(v2 + 56);
      v19 = (*(v2 + 48) + 16 * v16);
      v21 = *v19;
      v20 = v19[1];
      v16 *= 144;
      v23 = *(v18 + v16 + 16);
      v22 = *(v18 + v16 + 32);
      v24 = *(v18 + v16 + 64);
      v40 = *(v18 + v16 + 48);
      v41 = v24;
      v26 = *(v18 + v16 + 96);
      v25 = *(v18 + v16 + 112);
      v27 = *(v18 + v16 + 80);
      *(v44 + 10) = *(v18 + v16 + 122);
      v43 = v26;
      v44[0] = v25;
      v42 = v27;
      v37 = *(v18 + v16);
      v38 = v23;
      v39 = v22;
      v28 = (*(v4 + 48) + v17);
      *v28 = v21;
      v28[1] = v20;
      v29 = (*(v4 + 56) + v16);
      *v29 = v37;
      v30 = v38;
      v31 = v39;
      v32 = v41;
      v29[3] = v40;
      v29[4] = v32;
      v29[1] = v30;
      v29[2] = v31;
      v33 = v42;
      v34 = v43;
      v35 = v44[0];
      *(v29 + 122) = *(v44 + 10);
      v29[6] = v34;
      v29[7] = v35;
      v29[5] = v33;
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
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

    *v1 = v4;
  }

  return result;
}

void *sub_1CAC79910()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465E58);
  v2 = *v0;
  v3 = sub_1CAD4E7B4();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

void *sub_1CAC79A80()
{
  v1 = v0;
  v2 = type metadata accessor for EventModelObject();
  v31 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465D48);
  v4 = *v0;
  v5 = sub_1CAD4E7B4();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_1CAC80954(*(v4 + 56) + v26, v30, type metadata accessor for EventModelObject);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_1CAC80B78(v25, *(v27 + 56) + v26, type metadata accessor for EventModelObject);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_1CAC79CD8()
{
  v1 = v0;
  v2 = type metadata accessor for EventCalendarModelObject();
  v31 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465D40);
  v4 = *v0;
  v5 = sub_1CAD4E7B4();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_1CAC80954(*(v4 + 56) + v26, v30, type metadata accessor for EventCalendarModelObject);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_1CAC80B78(v25, *(v27 + 56) + v26, type metadata accessor for EventCalendarModelObject);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}