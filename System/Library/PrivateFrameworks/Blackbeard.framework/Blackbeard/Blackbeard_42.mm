uint64_t sub_1E6315FF4()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E63160F0, 0, 0);
}

uint64_t sub_1E63160F0()
{
  v1 = v0[4];
  v2 = sub_1E65D99E8();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[7];
    (*(v0[9] + 8))(v0[10], v0[8]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    sub_1E65E6058();
    v0[14] = sub_1E65E6048();
    v7 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6316240, v7, v6);
  }
}

uint64_t sub_1E6316240()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 24);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0782E8, &qword_1E65FBE20);
  sub_1E65E4E18();

  return MEMORY[0x1EEE6DFA0](sub_1E63162C4, 0, 0);
}

uint64_t sub_1E63162C4()
{
  sub_1E5DFE50C(v0[4], &qword_1ED0721B0, &qword_1E65EA988);
  v1 = *(MEMORY[0x1E69E8678] + 4);
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_1E6315FF4;
  v3 = v0[10];
  v4 = v0[8];
  v5 = v0[4];

  return MEMORY[0x1EEE6D9C8](v5, 0, 0, v4);
}

uint64_t sub_1E6316384(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for RemoteBrowsingService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0782E8, &qword_1E65FBE20) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E6315B98(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E63164FC()
{
  v0 = sub_1E65E07B8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E65E2EB8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  sub_1E65E0668();
  sub_1E65E0798();
  sub_1E65E07A8();
  sub_1E65E2EA8();
  (*(v1 + 8))(v4, v0);
  sub_1E65E0678();
  sub_1E65E0708();
  return sub_1E65E2F48();
}

unint64_t sub_1E63166B0()
{
  result = qword_1ED0782F0;
  if (!qword_1ED0782F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0782F0);
  }

  return result;
}

uint64_t sub_1E6316704(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v19 - v12;
  v14 = sub_1E65E60A8();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  sub_1E5DF650C(a3, v20);
  sub_1E65E6058();

  sub_1E5FA9D20(a4, a5);
  v15 = sub_1E65E6048();
  v16 = swift_allocObject();
  v17 = MEMORY[0x1E69E85E0];
  *(v16 + 16) = v15;
  *(v16 + 24) = v17;
  sub_1E5DF599C(v20, v16 + 32);
  *(v16 + 72) = a1;
  *(v16 + 80) = a2;
  *(v16 + 88) = a4;
  *(v16 + 96) = a5;
  sub_1E6059EAC(0, 0, v13, &unk_1E65FBF58, v16);
}

uint64_t sub_1E631687C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 26) = a8;
  *(v8 + 48) = a6;
  *(v8 + 56) = a7;
  *(v8 + 32) = a4;
  *(v8 + 40) = a5;
  v9 = type metadata accessor for RouteSource(0);
  *(v8 + 64) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v8 + 72) = swift_task_alloc();
  v11 = type metadata accessor for RouteDestination();
  *(v8 + 80) = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  *(v8 + 88) = swift_task_alloc();
  sub_1E65E6058();
  *(v8 + 96) = sub_1E65E6048();
  v14 = sub_1E65E5FC8();
  *(v8 + 104) = v14;
  *(v8 + 112) = v13;

  return MEMORY[0x1EEE6DFA0](sub_1E631697C, v14, v13);
}

uint64_t sub_1E631697C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);
  v6 = *(v0 + 48);
  v5 = *(v0 + 56);
  v7 = *(v0 + 32);
  v8 = *(v0 + 40);
  v9 = v7[3];
  v14 = v7[4];
  v10 = *(v0 + 26);
  __swift_project_boxed_opaque_existential_1(v7, v9);
  swift_storeEnumTagMultiPayload();
  *v2 = v8;
  *(v2 + 8) = v6;
  *(v2 + 16) = v5;
  *(v2 + 24) = v10;
  type metadata accessor for RouteResource();
  swift_storeEnumTagMultiPayload();
  sub_1E6094E10(v3, v2 + *(v1 + 20));

  sub_1E5FA9D20(v5, v10);
  sub_1E613DBE4(v3, type metadata accessor for RouteSource);
  *(v2 + *(v1 + 24)) = MEMORY[0x1E69E7CD0];
  *(v0 + 16) = v5;
  *(v0 + 24) = v10;
  sub_1E600F5B0((v0 + 25));
  v11 = swift_task_alloc();
  *(v0 + 120) = v11;
  *v11 = v0;
  v11[1] = sub_1E6316B14;
  v12 = *(v0 + 88);

  return RoutingContext.presentDestination(_:style:priority:)(v12, (v0 + 16), (v0 + 25), v9, v14);
}

uint64_t sub_1E6316B14()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 88);
  v9 = *v1;
  *(*v1 + 128) = v0;

  sub_1E613DBE4(v4, type metadata accessor for RouteDestination);
  v5 = *(v2 + 104);
  v6 = *(v2 + 112);
  if (v0)
  {
    v7 = sub_1E6316CD8;
  }

  else
  {
    v7 = sub_1E6316C60;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1E6316C60()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E6316CD8()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];

  v4 = v0[1];
  v5 = v0[16];

  return v4();
}

uint64_t sub_1E6316D50(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);
  v8 = *(v1 + 88);
  v9 = *(v1 + 96);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1E5DFA78C;

  return sub_1E631687C(a1, v4, v5, v1 + 32, v6, v7, v8, v9);
}

uint64_t sub_1E6316E2C(uint64_t a1)
{
  v1[2] = a1;
  sub_1E65E6058();
  v1[3] = sub_1E65E6048();
  v3 = sub_1E65E5FC8();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1E6316EC4, v3, v2);
}

uint64_t sub_1E6316EC4()
{
  v1 = v0[2];
  v2 = v1 + *(type metadata accessor for AppComposer() + 20);
  v3 = v2 + *(type metadata accessor for AppEnvironment() + 24);
  v4 = AccountService.makeSubscriptionManagementViewController.getter();
  v0[6] = v5;
  v9 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_1E614B548;

  return v9();
}

uint64_t sub_1E631700C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0782F8, &qword_1E65FBF68);
  v20 = *(v1 - 8);
  v21 = v1;
  v2 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v19 - v3;
  v5 = type metadata accessor for AppComposer();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = sub_1E65DEC58();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = sub_1E65DE918();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = *v0;
  sub_1E5E1D7C4(v0, v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppComposer);
  v15 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v16 = swift_allocObject();
  sub_1E5E1E180(v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for AppComposer);
  sub_1E65DEC48();
  sub_1E65DE908();
  type metadata accessor for AppFeature();
  sub_1E631830C(&qword_1EE2DBD90, type metadata accessor for AppFeature);
  sub_1E631830C(&qword_1ED078300, MEMORY[0x1E699CCB0]);
  sub_1E65E4DE8();
  sub_1E65E4CC8();
  v17 = sub_1E65E4F08();
  (*(v20 + 8))(v4, v21);
  (*(v11 + 8))(v14, v10);
  return v17;
}

uint64_t sub_1E63173C8()
{
  v1 = v0[2];
  v2 = v1 + *(type metadata accessor for AppComposer() + 20);
  v3 = v2 + *(type metadata accessor for AppEnvironment() + 100);
  active = RemoteBrowsingService.requireActiveWorkoutPlan.getter();
  v0[3] = v5;
  v9 = (active + *active);
  v6 = active[1];
  v7 = swift_task_alloc();
  v0[4] = v7;
  *v7 = v0;
  v7[1] = sub_1E60102EC;

  return v9();
}

uint64_t sub_1E63174DC()
{
  v2 = *(type metadata accessor for AppComposer() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5DFA78C;

  return sub_1E63173A8(v0 + v3);
}

uint64_t sub_1E63175A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v54 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E58, &qword_1E65EA150);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v47 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E60, &qword_1E65EA158);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v52 = v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v47 - v10;
  v12 = type metadata accessor for BrowsingIdentity(0);
  v49 = *(v12 - 8);
  v50 = v12;
  v13 = *(v49 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v51 = v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v47 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = v47 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = v47 - v24;
  v26 = sub_1E65D7848();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v30 = v47 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for AppState();
  v32 = v31[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  sub_1E65E4C98();
  sub_1E5E1F544(v25);
  sub_1E5DFE50C(v21, &qword_1ED071F78, &unk_1E65EA3F0);
  v33 = *(v27 + 48);
  v34 = v33(v25, 1, v26);
  v48 = v30;
  if (v34 == 1)
  {
    sub_1E65D77C8();
    if (v33(v25, 1, v26) != 1)
    {
      sub_1E5DFE50C(v25, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    (*(v27 + 32))(v30, v25, v26);
  }

  v35 = v54 + v31[27];
  v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727F8, &qword_1E65EBDF0) + 28);
  v47[1] = sub_1E65E2358();
  v47[0] = sub_1E65E2388();
  v37 = v31[23];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E68, &qword_1E65EA160);
  sub_1E65E4C98();
  sub_1E60EE7BC(v11);
  sub_1E5DFE50C(v5, &qword_1ED071E58, &qword_1E65EA150);
  v38 = v50;
  v39 = *(v49 + 48);
  v40 = v39(v11, 1, v50);
  v41 = v51;
  if (v40 == 1)
  {
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED071E70, &qword_1E65EEAA0);
    (*(*(v42 - 8) + 56))(v17, 1, 1, v42);
    if (v39(v11, 1, v38) != 1)
    {
      sub_1E5DFE50C(v11, &qword_1ED071E60, &qword_1E65EA158);
    }
  }

  else
  {
    sub_1E5E1E180(v11, v17, type metadata accessor for BrowsingIdentity);
  }

  sub_1E6317C24();
  v49 = v43;
  sub_1E5E00674(v17, type metadata accessor for BrowsingIdentity);
  sub_1E65E4C98();
  v44 = v52;
  sub_1E60EE7BC(v52);
  sub_1E5DFE50C(v5, &qword_1ED071E58, &qword_1E65EA150);
  if (v39(v44, 1, v38) == 1)
  {
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED071E70, &qword_1E65EEAA0);
    (*(*(v45 - 8) + 56))(v41, 1, 1, v45);
    if (v39(v44, 1, v38) != 1)
    {
      sub_1E5DFE50C(v44, &qword_1ED071E60, &qword_1E65EA158);
    }
  }

  else
  {
    sub_1E5E1E180(v44, v41, type metadata accessor for BrowsingIdentity);
  }

  sub_1E6317F34();
  sub_1E5E00674(v41, type metadata accessor for BrowsingIdentity);
  return sub_1E65DE898();
}

uint64_t sub_1E6317C24()
{
  v1 = v0;
  v2 = sub_1E65D8DE8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v27 - v8;
  v10 = type metadata accessor for BrowsingIdentity(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for RemoteParticipantScope(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v27 - v19;
  sub_1E5E1D7C4(v1, v13, type metadata accessor for BrowsingIdentity);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED071E70, &qword_1E65EEAA0);
  if ((*(*(v21 - 8) + 48))(v13, 1, v21) == 1)
  {
    sub_1E5E00674(v13, type metadata accessor for BrowsingIdentity);
    return 0;
  }

  else
  {
    v23 = *(v21 + 48);
    sub_1E5E1E180(v13, v20, type metadata accessor for RemoteParticipantScope);
    v24 = sub_1E65DA2A8();
    (*(*(v24 - 8) + 8))(&v13[v23], v24);
    sub_1E5E1D7C4(v20, v18, type metadata accessor for RemoteParticipantScope);
    v25 = *(v3 + 32);
    v25(v7, v18, v2);
    v25(v9, v7, v2);
    v26 = sub_1E65D8DC8();
    (*(v3 + 8))(v9, v2);
    sub_1E5E00674(v20, type metadata accessor for RemoteParticipantScope);
    return v26;
  }
}

uint64_t sub_1E6317F34()
{
  v1 = v0;
  v2 = sub_1E65D8DE8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v29 - v8;
  v10 = type metadata accessor for BrowsingIdentity(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for RemoteParticipantScope(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v29 - v19;
  sub_1E5E1D7C4(v1, v13, type metadata accessor for BrowsingIdentity);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED071E70, &qword_1E65EEAA0);
  if ((*(*(v21 - 8) + 48))(v13, 1, v21) == 1)
  {
    sub_1E5E00674(v13, type metadata accessor for BrowsingIdentity);
    return 2;
  }

  v23 = *(v21 + 48);
  sub_1E5E1E180(v13, v20, type metadata accessor for RemoteParticipantScope);
  v24 = sub_1E65DA2A8();
  (*(*(v24 - 8) + 8))(&v13[v23], v24);
  sub_1E5E1D7C4(v20, v18, type metadata accessor for RemoteParticipantScope);
  v25 = *(v3 + 32);
  v25(v7, v18, v2);
  v25(v9, v7, v2);
  v26 = sub_1E65D8D88();
  (*(v3 + 8))(v9, v2);
  if (v26 == 4)
  {
    sub_1E5E00674(v20, type metadata accessor for RemoteParticipantScope);
  }

  else
  {
    v27 = sub_1E65DA3A8();
    v28 = sub_1E65DA3A8();
    sub_1E5E00674(v20, type metadata accessor for RemoteParticipantScope);
    if (v27 == v28)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1E631828C(uint64_t a1)
{
  sub_1E65DE878();
  v2 = a1 + *(type metadata accessor for AppState() + 108);
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727F8, &qword_1E65EBDF0) + 28);
  sub_1E65E2368();
  sub_1E65DE888();
  return sub_1E65E2398();
}

uint64_t sub_1E631830C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E6318354@<X0>(int a1@<W2>, uint64_t a2@<X8>)
{
  LODWORD(v77) = a1;
  v80 = a2;
  v75 = type metadata accessor for ActionButtonDescriptor.Kind(0);
  v2 = *(*(v75 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v75);
  v68 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v67 = (&v66 - v5);
  v6 = sub_1E65D7268();
  v73 = *(v6 - 8);
  v74 = v6;
  v7 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v71 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_1E65D7348();
  v70 = *(v72 - 8);
  v9 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v69 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D90, &qword_1E66040F0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v66 - v13;
  v15 = sub_1E65D72D8();
  v79 = *(v15 - 8);
  v16 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v76 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_1E65DFB98();
  v18 = *(v78 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v78);
  v21 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758C8, &qword_1E65F1FD0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v66 - v24;
  v26 = sub_1E65DFA88();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = &v66 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v66 - v32;
  sub_1E65DF928();
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    v34 = &qword_1ED0758C8;
    v35 = &qword_1E65F1FD0;
    v36 = v25;
  }

  else
  {
    sub_1E6318D78(v25, v33, MEMORY[0x1E699D4A0]);
    sub_1E6318DE0(v33, v31);
    (*(v18 + 32))(v21, v31, v78);
    sub_1E65DF848();
    if ((*(v79 + 48))(v14, 1, v15) != 1)
    {
      (*(v79 + 32))(v76, v14, v15);
      v77 = type metadata accessor for ActionButtonDescriptor(0);
      v45 = v80 + *(v77 + 20);
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073818, &unk_1E6607980);
      v67 = (v45 + *(v46 + 48));
      v68 = *(v46 + 64);
      v47 = v69;
      sub_1E65D7338();
      v81 = sub_1E65E44A8();
      sub_1E608F9E4();
      sub_1E65D7358();
      v48 = v73;
      v49 = v74;
      v50 = v71;
      (*(v73 + 104))(v71, *MEMORY[0x1E69686E8], v74);
      sub_1E6258850();
      v66 = v15;
      v51 = v76;
      sub_1E65D73C8();
      (*(v48 + 8))(v50, v49);
      (*(v70 + 8))(v47, v72);
      v52 = sub_1E65DFB68();
      v53 = v67;
      *v67 = v52;
      v53[1] = v54;
      sub_1E65DFB78();
      swift_storeEnumTagMultiPayload();
      v55 = v80;
      sub_1E65D76E8();
      (*(v79 + 8))(v51, v66);
      (*(v18 + 8))(v21, v78);
      sub_1E6318E44(v33);
      return (*(*(v77 - 8) + 56))(v55, 0, 1, v77);
    }

    (*(v18 + 8))(v21, v78);
    sub_1E6318E44(v33);
    v34 = &qword_1ED072D90;
    v35 = &qword_1E66040F0;
    v36 = v14;
  }

  sub_1E5DFE50C(v36, v34, v35);
  v37 = sub_1E65DAE38();
  if (v37 != sub_1E65DAE38())
  {
    goto LABEL_20;
  }

  v38 = sub_1E65DF878();
  if (v38 <= 3)
  {
    if (v38 > 1 || !v38)
    {
      goto LABEL_20;
    }

    v57 = sub_1E65DF8C8();
    v59 = v58;
    v60 = byte_1E65FBF82[sub_1E65DF878()];
    v61 = v67;
    goto LABEL_18;
  }

  if (v38 <= 5)
  {
    if (v38 != 4)
    {
LABEL_20:
      v65 = type metadata accessor for ActionButtonDescriptor(0);
      v43 = *(*(v65 - 8) + 56);
      v44 = v80;
      v64 = 1;
      return v43(v44, v64, 1, v65);
    }

    v57 = sub_1E65DF8C8();
    v59 = v62;
    v60 = byte_1E65FBF82[sub_1E65DF878()];
    v61 = v68;
LABEL_18:
    *v61 = v57;
    *(v61 + 8) = v59;
    *(v61 + 16) = v60;
    swift_storeEnumTagMultiPayload();
    v63 = v80;
    sub_1E65D76E8();
    v39 = type metadata accessor for ActionButtonDescriptor(0);
    sub_1E6318D78(v61, v63 + *(v39 + 20), type metadata accessor for ActionButtonDescriptor.Kind);
    v43 = *(*(v39 - 8) + 56);
    v44 = v63;
    goto LABEL_19;
  }

  if (v38 == 6 || v38 == 7)
  {
    goto LABEL_20;
  }

  v39 = type metadata accessor for ActionButtonDescriptor(0);
  v40 = v80;
  v41 = v80 + *(v39 + 20);
  *v41 = sub_1E65DF8C8();
  *(v41 + 8) = v42;
  *(v41 + 16) = 12;
  swift_storeEnumTagMultiPayload();
  sub_1E65D76E8();
  v43 = *(*(v39 - 8) + 56);
  v44 = v40;
LABEL_19:
  v64 = 0;
  v65 = v39;
  return v43(v44, v64, 1, v65);
}

uint64_t sub_1E6318BB8@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ActionButtonDescriptor.Kind(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E65DAE38();
  if (v6 == sub_1E65DAE38() && sub_1E65DF878() == 8)
  {
    v7 = sub_1E65DF8C8();
    v9 = v8;
    v10 = byte_1E65FBF82[sub_1E65DF878()];
    *v5 = v7;
    *(v5 + 1) = v9;
    v5[16] = v10;
    swift_storeEnumTagMultiPayload();
    sub_1E65D76E8();
    v11 = type metadata accessor for ActionButtonDescriptor(0);
    sub_1E6318D78(v5, a1 + *(v11 + 20), type metadata accessor for ActionButtonDescriptor.Kind);
    return (*(*(v11 - 8) + 56))(a1, 0, 1, v11);
  }

  else
  {
    v13 = type metadata accessor for ActionButtonDescriptor(0);
    v14 = *(*(v13 - 8) + 56);

    return v14(a1, 1, 1, v13);
  }
}

uint64_t sub_1E6318D78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E6318DE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65DFA88();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E6318E44(uint64_t a1)
{
  v2 = sub_1E65DFA88();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E6318EA0@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v42 = a1;
  v3 = type metadata accessor for AppComposer();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3 - 8);
  v45 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v44 = &v39 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v39 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v39 - v12;
  sub_1E65E5148();
  v14 = sub_1E65E5138();
  sub_1E5E1DEAC(v2, v13);
  v15 = *(v4 + 80);
  v16 = ((v15 + 32) & ~v15) + v5;
  v43 = (v15 + 32) & ~v15;
  v41 = v16;
  v17 = swift_allocObject();
  v40 = &unk_1E65FBFB8;
  *(v17 + 16) = &unk_1E65FBFB8;
  *(v17 + 24) = 0;
  sub_1E5E1FA80(v13, v17 + ((v15 + 32) & ~v15));
  *(v17 + v16) = 0;
  v18 = v17 + (v16 & 0xFFFFFFFFFFFFFFF8);
  v39 = sub_1E6172524;
  *(v18 + 8) = sub_1E6172524;
  *(v18 + 16) = 0;
  v19 = (v17 + (((v16 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8));
  v20 = MEMORY[0x1E69AB380];
  *v19 = v14;
  v19[1] = v20;
  v21 = v14;
  v22 = v46;
  v23 = v11;
  sub_1E5E1DEAC(v46, v11);
  v24 = (v15 + 48) & ~v15;
  v25 = v24 + v5;
  v26 = (v24 + v5) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  v28 = v40;
  v27[2] = v40;
  v27[3] = 0;
  v27[4] = v21;
  v27[5] = MEMORY[0x1E69AB380];
  sub_1E5E1FA80(v23, v27 + v24);
  *(v27 + v25) = 0;
  v29 = v27 + v26;
  v30 = v39;
  *(v29 + 1) = v39;
  *(v29 + 2) = 0;
  v31 = v22;
  v32 = v44;
  sub_1E5E1DEAC(v31, v44);
  v33 = swift_allocObject();
  v33[2] = v28;
  v33[3] = 0;
  v33[4] = v21;
  v33[5] = MEMORY[0x1E69AB380];
  sub_1E5E1FA80(v32, v33 + v24);
  v34 = v33 + ((v25 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v34 = v30;
  *(v34 + 1) = 0;
  v34[16] = 0;
  v35 = v45;
  sub_1E5E1DEAC(v46, v45);
  v36 = swift_allocObject();
  *(v36 + 16) = v28;
  *(v36 + 24) = 0;
  sub_1E5E1FA80(v35, v36 + v43);
  result = swift_retain_n();
  v38 = v42;
  *v42 = v21;
  v38[1] = MEMORY[0x1E69AB380];
  v38[2] = &unk_1E65EB918;
  v38[3] = v17;
  v38[4] = &unk_1E65FA770;
  v38[5] = v27;
  v38[6] = &unk_1E65EB920;
  v38[7] = v33;
  v38[8] = &unk_1E65FA780;
  v38[9] = v36;
  return result;
}

uint64_t sub_1E63191FC(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735D0, &unk_1E65ED670) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072330, &qword_1E65EAB70) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410) - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072338, qword_1E65EAB78) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6319340, 0, 0);
}

uint64_t sub_1E6319340()
{
  v1 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  v6 = *MEMORY[0x1E69CBD98];
  v7 = sub_1E65D8F38();
  v8 = *(v7 - 8);
  (*(v8 + 104))(v2, v6, v7);
  (*(v8 + 56))(v2, 0, 1, v7);
  v9 = sub_1E65D74E8();
  (*(*(v9 - 8) + 56))(v1, 1, 1, v9);
  v10 = sub_1E65D9908();
  (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  v11 = sub_1E65D9F88();
  (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  sub_1E65D7A28();
  v12 = sub_1E65D7A38();
  (*(*(v12 - 8) + 56))(v5, 0, 1, v12);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1E63195A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for PageMetricsClick();
  v5[4] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[5] = swift_task_alloc();
  v5[6] = swift_task_alloc();
  v8 = sub_1E65E1668();
  v5[7] = v8;
  v9 = *(v8 - 8);
  v5[8] = v9;
  v10 = *(v9 + 64) + 15;
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63196A0, 0, 0);
}

uint64_t sub_1E63196A0()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  (*(v2 + 16))(v1, v0[2], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == *MEMORY[0x1E699E908] || v4 == *MEMORY[0x1E699E918])
  {
    (*(v0[8] + 8))(v0[9], v0[7]);
  }

  else
  {
    if (v4 == *MEMORY[0x1E699E928])
    {
      v11 = v0[6];
      v12 = v0[3];
      v13 = v0[4];
      v14 = sub_1E65D9D78();
      (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
      v15 = v13[5];
      v16 = *MEMORY[0x1E69CBA88];
      v17 = sub_1E65D8C68();
      (*(*(v17 - 8) + 104))(v11 + v15, v16, v17);
      v18 = v13[6];
      v19 = sub_1E65D74E8();
      (*(*(v19 - 8) + 56))(v11 + v18, 1, 1, v19);
      v20 = v13[8];
      v21 = sub_1E65DA208();
      (*(*(v21 - 8) + 56))(v11 + v20, 1, 1, v21);
      v22 = v13[14];
      v23 = *MEMORY[0x1E69CBCC8];
      v24 = sub_1E65D8F28();
      (*(*(v24 - 8) + 104))(v11 + v22, v23, v24);
      v25 = v13[15];
      v26 = sub_1E65D9908();
      (*(*(v26 - 8) + 56))(v11 + v25, 1, 1, v26);
      v27 = MEMORY[0x1E69E7CC0];
      v28 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
      *(v11 + v13[7]) = v27;
      v29 = (v11 + v13[9]);
      *v29 = 0;
      v29[1] = 0;
      v30 = (v11 + v13[10]);
      *v30 = 0;
      v30[1] = 0;
      *(v11 + v13[11]) = v28;
      v31 = (v11 + v13[12]);
      *v31 = 0;
      v31[1] = 0;
      *(v11 + v13[13]) = xmmword_1E65FBFA0;
      v32 = *(v12 + 56);
      v65 = (*(v12 + 48) + **(v12 + 48));
      v33 = *(*(v12 + 48) + 4);
      v34 = swift_task_alloc();
      v0[10] = v34;
      *v34 = v0;
      v34[1] = sub_1E6319E5C;
      v35 = v0[6];
LABEL_14:

      return v65(v35);
    }

    if (v4 == *MEMORY[0x1E699E930])
    {
      v37 = v0[4];
      v36 = v0[5];
      v38 = v0[3];
      v39 = sub_1E65D9D78();
      (*(*(v39 - 8) + 56))(v36, 1, 1, v39);
      v40 = v37[5];
      v41 = *MEMORY[0x1E69CBA90];
      v42 = sub_1E65D8C68();
      (*(*(v42 - 8) + 104))(v36 + v40, v41, v42);
      v43 = v37[6];
      v44 = sub_1E65D74E8();
      (*(*(v44 - 8) + 56))(v36 + v43, 1, 1, v44);
      v45 = v37[8];
      v46 = sub_1E65DA208();
      (*(*(v46 - 8) + 56))(v36 + v45, 1, 1, v46);
      v47 = v37[14];
      v48 = *MEMORY[0x1E69CBCC8];
      v49 = sub_1E65D8F28();
      (*(*(v49 - 8) + 104))(v36 + v47, v48, v49);
      v50 = v37[15];
      v51 = sub_1E65D9908();
      (*(*(v51 - 8) + 56))(v36 + v50, 1, 1, v51);
      v52 = MEMORY[0x1E69E7CC0];
      v53 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
      *(v36 + v37[7]) = v52;
      v54 = (v36 + v37[9]);
      *v54 = 0;
      v54[1] = 0;
      v55 = (v36 + v37[10]);
      *v55 = 0;
      v55[1] = 0;
      *(v36 + v37[11]) = v53;
      v56 = (v36 + v37[12]);
      *v56 = 0;
      v56[1] = 0;
      *(v36 + v37[13]) = xmmword_1E65FBF90;
      v57 = *(v38 + 56);
      v65 = (*(v38 + 48) + **(v38 + 48));
      v58 = *(*(v38 + 48) + 4);
      v59 = swift_task_alloc();
      v0[12] = v59;
      *v59 = v0;
      v59[1] = sub_1E6319FF0;
      v35 = v0[5];
      goto LABEL_14;
    }

    if (v4 != *MEMORY[0x1E699E910])
    {
      if (v4 == *MEMORY[0x1E699E920])
      {
        v60 = v0[3];
        v61 = *(v60 + 24);
        v66 = (*(v60 + 16) + **(v60 + 16));
        v62 = *(*(v60 + 16) + 4);
        v63 = swift_task_alloc();
        v0[14] = v63;
        *v63 = v0;
        v63[1] = sub_1E631A184;

        return v66();
      }

      else
      {
        v64 = v0[7];

        return sub_1E65E6C08();
      }
    }
  }

  v6 = v0[9];
  v7 = v0[5];
  v8 = v0[6];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1E6319E5C()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_1E631A310;
  }

  else
  {
    v3 = sub_1E6319F70;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E6319F70()
{
  sub_1E5FC0990(v0[6]);
  v1 = v0[9];
  v2 = v0[5];
  v3 = v0[6];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E6319FF0()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_1E631A398;
  }

  else
  {
    v3 = sub_1E631A104;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E631A104()
{
  sub_1E5FC0990(v0[5]);
  v1 = v0[9];
  v2 = v0[5];
  v3 = v0[6];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E631A184()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_1E631A420;
  }

  else
  {
    v3 = sub_1E631A298;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E631A298()
{
  v1 = v0[9];
  v2 = v0[5];
  v3 = v0[6];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E631A310()
{
  sub_1E5FC0990(v0[6]);
  v1 = v0[11];
  v2 = v0[9];
  v4 = v0[5];
  v3 = v0[6];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E631A398()
{
  sub_1E5FC0990(v0[5]);
  v1 = v0[13];
  v2 = v0[9];
  v4 = v0[5];
  v3 = v0[6];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E631A420()
{
  v1 = v0[15];
  v2 = v0[9];
  v4 = v0[5];
  v3 = v0[6];

  v5 = v0[1];

  return v5();
}

uint64_t AwardDetailItemContext.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1E61DA5E0();
  return v1;
}

uint64_t sub_1E631A4E4(uint64_t a1)
{
  v2 = sub_1E631AF14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E631A520(uint64_t a1)
{
  v2 = sub_1E631AF14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E631A55C(uint64_t a1)
{
  v2 = sub_1E631AFBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E631A598(uint64_t a1)
{
  v2 = sub_1E631AFBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E631A5D4(uint64_t a1)
{
  v2 = sub_1E631AF68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E631A610(uint64_t a1)
{
  v2 = sub_1E631AF68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AwardDetailItemContext.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078308, &qword_1E65FBFC0);
  v25 = *(v3 - 8);
  v26 = v3;
  v4 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v22 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078310, &qword_1E65FBFC8);
  v22 = *(v6 - 8);
  v23 = v6;
  v7 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078318, &qword_1E65FBFD0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v22 - v13;
  v15 = *v1;
  v27 = v1[1];
  v28 = v15;
  v16 = *(v1 + 16);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E631AF14();
  sub_1E65E6DA8();
  if (v16)
  {
    v30 = 1;
    sub_1E631AF68();
    v18 = v24;
    sub_1E65E6B18();
    v19 = v26;
    sub_1E65E6B48();
    (*(v25 + 8))(v18, v19);
  }

  else
  {
    v29 = 0;
    sub_1E631AFBC();
    sub_1E65E6B18();
    v20 = v23;
    sub_1E65E6B48();
    (*(v22 + 8))(v9, v20);
  }

  return (*(v11 + 8))(v14, v10);
}

uint64_t AwardDetailItemContext.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  MEMORY[0x1E694E740](*(v0 + 16));

  return sub_1E65E5D78();
}

uint64_t AwardDetailItemContext.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1E65E6D28();
  MEMORY[0x1E694E740](v3);
  sub_1E65E5D78();
  return sub_1E65E6D78();
}

uint64_t AwardDetailItemContext.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078338, &qword_1E65FBFD8);
  v37 = *(v35 - 8);
  v3 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v5 = &v35 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078340, &qword_1E65FBFE0);
  v36 = *(v6 - 8);
  v7 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078348, &unk_1E65FBFE8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v35 - v13;
  v16 = a1[3];
  v15 = a1[4];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1E631AF14();
  v17 = v39;
  sub_1E65E6D98();
  if (!v17)
  {
    v39 = v11;
    v18 = sub_1E65E6AF8();
    v19 = (2 * *(v18 + 16)) | 1;
    v41 = v18;
    v42 = v18 + 32;
    v43 = 0;
    v44 = v19;
    v20 = sub_1E5FBE3F0();
    v21 = v10;
    if (v20 == 2 || v43 != v44 >> 1)
    {
      v28 = sub_1E65E68F8();
      swift_allocError();
      v30 = v29;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071BA8, &qword_1E65E8C80) + 48);
      *v30 = &type metadata for AwardDetailItemContext;
      sub_1E65E6A78();
      sub_1E65E68E8();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x1E69E6AF8], v28);
      swift_willThrow();
      (*(v39 + 8))(v14, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v45 = v20;
      if (v20)
      {
        v46 = 1;
        sub_1E631AF68();
        sub_1E65E6A68();
        v23 = v38;
        v22 = v39;
        v24 = v35;
        v25 = sub_1E65E6AA8();
        v27 = v26;
        (*(v37 + 8))(v5, v24);
      }

      else
      {
        v46 = 0;
        sub_1E631AFBC();
        v33 = v9;
        sub_1E65E6A68();
        v23 = v38;
        v22 = v39;
        v25 = sub_1E65E6AA8();
        v27 = v34;
        (*(v36 + 8))(v33, v6);
      }

      (*(v22 + 8))(v14, v21);
      swift_unknownObjectRelease();
      *v23 = v25;
      *(v23 + 8) = v27;
      *(v23 + 16) = v45 & 1;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v40);
}

unint64_t sub_1E631AF14()
{
  result = qword_1ED078320;
  if (!qword_1ED078320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078320);
  }

  return result;
}

unint64_t sub_1E631AF68()
{
  result = qword_1ED078328;
  if (!qword_1ED078328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078328);
  }

  return result;
}

unint64_t sub_1E631AFBC()
{
  result = qword_1ED078330;
  if (!qword_1ED078330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078330);
  }

  return result;
}

unint64_t sub_1E631B014()
{
  result = qword_1ED078350;
  if (!qword_1ED078350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078350);
  }

  return result;
}

unint64_t sub_1E631B0B8()
{
  result = qword_1ED078358;
  if (!qword_1ED078358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078358);
  }

  return result;
}

unint64_t sub_1E631B110()
{
  result = qword_1ED078360;
  if (!qword_1ED078360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078360);
  }

  return result;
}

unint64_t sub_1E631B168()
{
  result = qword_1ED078368;
  if (!qword_1ED078368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078368);
  }

  return result;
}

unint64_t sub_1E631B1C0()
{
  result = qword_1ED078370;
  if (!qword_1ED078370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078370);
  }

  return result;
}

unint64_t sub_1E631B218()
{
  result = qword_1ED078378;
  if (!qword_1ED078378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078378);
  }

  return result;
}

unint64_t sub_1E631B270()
{
  result = qword_1ED078380;
  if (!qword_1ED078380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078380);
  }

  return result;
}

unint64_t sub_1E631B2C8()
{
  result = qword_1ED078388;
  if (!qword_1ED078388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078388);
  }

  return result;
}

unint64_t sub_1E631B320()
{
  result = qword_1ED078390;
  if (!qword_1ED078390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078390);
  }

  return result;
}

unint64_t sub_1E631B378()
{
  result = qword_1ED078398;
  if (!qword_1ED078398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078398);
  }

  return result;
}

uint64_t sub_1E631B3D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v184 = a3;
  v191 = a1;
  v151 = a5;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074408, &qword_1E65F0B70);
  v142 = *(v143 - 8);
  v10 = *(v142 + 64);
  MEMORY[0x1EEE9AC00](v143);
  v179 = v128 - v11;
  v196 = sub_1E65D76F8();
  v177 = *(v196 - 8);
  v144 = *(v177 + 64);
  v12 = MEMORY[0x1EEE9AC00](v196);
  v195 = v128 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v176 = v128 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074410, &qword_1E65F0B78);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v178 = v128 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v193 = v128 - v19;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074380, &qword_1E65F0970);
  v150 = *(v149 - 8);
  v20 = *(v150 + 64);
  v21 = MEMORY[0x1EEE9AC00](v149);
  v145 = v128 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v146 = v128 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v147 = v128 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v148 = v128 - v27;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072710, &qword_1E65EBB90);
  v140 = *(v141 - 1);
  v28 = *(v140 + 64);
  MEMORY[0x1EEE9AC00](v141);
  v138 = v128 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077D10, &unk_1E65FAA50);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v155 = v128 - v32;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072718, &qword_1E65EBB98);
  v139 = *(v137 - 8);
  v33 = *(v139 + 64);
  MEMORY[0x1EEE9AC00](v137);
  v135 = v128 - v34;
  v35 = type metadata accessor for AppComposer();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  v38 = MEMORY[0x1EEE9AC00](v35 - 8);
  v134 = v128 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x1EEE9AC00](v38);
  v192 = v128 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v159 = v128 - v43;
  v45 = v44;
  v130 = v44;
  MEMORY[0x1EEE9AC00](v42);
  v47 = v128 - v46;
  *&v200 = 0;
  *(&v200 + 1) = 0xE000000000000000;
  sub_1E65E68A8();

  *&v200 = 0xD000000000000010;
  *(&v200 + 1) = 0x80000001E6615E10;
  v48 = a1;
  v49 = a2;
  v128[0] = a2;
  MEMORY[0x1E694D7C0](v48, a2);
  v132 = v200;
  sub_1E5DF650C(a3, &v200);
  v154 = swift_allocObject();
  sub_1E5DF599C(&v200, v154 + 16);
  v136 = v47;
  sub_1E5E1D82C(v5, v47, type metadata accessor for AppComposer);
  v194 = *a4;
  v185 = a4[3];
  v50 = a4[7];
  v186 = a4[5];
  v187 = v50;
  v188 = a4[9];
  v51 = a4;
  v129 = *(v36 + 80);
  v52 = (v129 + 16) & ~v129;
  v158 = v52 + v45;
  v53 = (v52 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = v129 | 7;
  v55 = swift_allocObject();
  v133 = v55;
  sub_1E5E1E660(v47, v55 + v52, type metadata accessor for AppComposer);
  v56 = (v55 + v53);
  v157 = v51;
  v57 = *(v51 + 3);
  v56[2] = *(v51 + 2);
  v56[3] = v57;
  v56[4] = *(v51 + 4);
  v58 = *(v51 + 1);
  *v56 = *v51;
  v56[1] = v58;
  v59 = v159;
  v181 = type metadata accessor for AppComposer;
  sub_1E5E1D82C(v5, v159, type metadata accessor for AppComposer);
  v183 = v53;
  v128[1] = v54;
  v60 = swift_allocObject();
  v153 = v60;
  v182 = v52;
  v156 = type metadata accessor for AppComposer;
  sub_1E5E1E660(v59, v60 + v52, type metadata accessor for AppComposer);
  v61 = (v60 + v53);
  *v61 = v191;
  v61[1] = v49;
  v180 = v5;
  v62 = v192;
  sub_1E5E1D82C(v5, v192, type metadata accessor for AppComposer);
  v152 = swift_allocObject();
  sub_1E5E1E660(v62, v152 + v52, type metadata accessor for AppComposer);
  v131 = *v5;
  v167 = type metadata accessor for ActionButtonDescriptor(0);
  v166 = type metadata accessor for ArtworkDescriptor();
  v163 = type metadata accessor for ContextMenu(0);
  v161 = type metadata accessor for ItemContext();
  v160 = type metadata accessor for ItemMetrics();
  v191 = type metadata accessor for SectionHeaderSubtitleDescriptor();
  v189 = type metadata accessor for SectionMetrics();
  v190 = type metadata accessor for ViewDescriptor();
  v162 = sub_1E632143C(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor);
  v192 = sub_1E632143C(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor);
  v165 = sub_1E632143C(&qword_1EE2DB8B0, type metadata accessor for ContextMenu);
  v164 = sub_1E632143C(&qword_1EE2DB720, type metadata accessor for ItemContext);
  v175 = sub_1E632143C(&qword_1EE2DB738, type metadata accessor for ItemContext);
  v174 = sub_1E632143C(&qword_1EE2DB730, type metadata accessor for ItemContext);
  v173 = sub_1E632143C(&qword_1EE2DB650, type metadata accessor for ItemMetrics);
  v172 = sub_1E632143C(&qword_1EE2D7D88, type metadata accessor for SectionHeaderSubtitleDescriptor);
  v171 = sub_1E632143C(&qword_1EE2DA950, type metadata accessor for SectionMetrics);
  v170 = sub_1E5DF11E0();
  v169 = sub_1E5DF1338();
  v168 = sub_1E632143C(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor);
  swift_unknownObjectRetain();

  sub_1E65DC178();
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077D20, &qword_1E65FAA70);

  v64 = sub_1E65DC168();
  v198 = v63;
  v199 = sub_1E5FED46C(&qword_1EE2D6BA8, &qword_1ED077D20, &qword_1E65FAA70);
  *&v197 = v64;
  v65 = v135;
  sub_1E65DC248();
  v66 = v134;
  sub_1E5E1D82C(v180, v134, v181);
  v67 = (v129 + 32) & ~v129;
  v68 = (v130 + v67 + 7) & 0xFFFFFFFFFFFFFFF8;
  v69 = swift_allocObject();
  v70 = v132;
  *(v69 + 16) = v132;
  sub_1E5E1E660(v66, v69 + v67, v156);
  v71 = (v69 + v68);
  *v71 = sub_1E5F8AA74;
  v71[1] = 0;
  *(swift_allocObject() + 16) = v70;
  type metadata accessor for AppFeature();
  sub_1E632143C(&qword_1EE2DBD90, type metadata accessor for AppFeature);
  sub_1E5FED46C(&qword_1EE2D6BA0, &qword_1ED072718, &qword_1E65EBB98);

  v72 = v138;
  v73 = v137;
  sub_1E65E4DE8();
  v74 = swift_allocObject();
  v75 = v133;
  *(v74 + 16) = sub_1E631D818;
  *(v74 + 24) = v75;

  sub_1E65E4CC8();
  v76 = swift_allocObject();
  *(v76 + 16) = sub_1E5FE9CE8;
  *(v76 + 24) = v74;

  v155 = sub_1E65E4F08();

  (*(v140 + 8))(v72, v141);
  (*(v139 + 8))(v65, v73);
  v77 = v180;
  v78 = v136;
  v79 = v181;
  sub_1E5E1D82C(v180, v136, v181);
  sub_1E5DF650C(v184, &v200);
  v80 = v183;
  v154 = (v183 + 47) & 0xFFFFFFFFFFFFFFF8;
  v81 = swift_allocObject();
  v153 = v81;
  v82 = v182;
  v83 = v156;
  sub_1E5E1E660(v78, v81 + v182, v156);
  sub_1E5DF599C(&v200, v81 + v80);
  v84 = (v81 + ((v80 + 47) & 0xFFFFFFFFFFFFFFF8));
  v85 = v157;
  v86 = *(v157 + 3);
  v84[2] = *(v157 + 2);
  v84[3] = v86;
  v84[4] = *(v85 + 4);
  v87 = *(v85 + 1);
  *v84 = *v85;
  v84[1] = v87;
  v88 = sub_1E65E3E08();
  (*(*(v88 - 8) + 56))(v193, 1, 1, v88);
  swift_unknownObjectRetain();

  v89 = v176;
  sub_1E65D76E8();
  (*(v142 + 104))(v179, *MEMORY[0x1E699D720], v143);
  v90 = v159;
  sub_1E5E1D82C(v77, v159, v79);
  v152 = swift_allocObject();
  sub_1E5E1E660(v90, v152 + v82, v83);
  sub_1E5E1D82C(v77, v90, v79);
  v143 = swift_allocObject();
  v91 = v82;
  v92 = v143 + v82;
  v93 = v83;
  sub_1E5E1E660(v90, v92, v83);
  sub_1E5E1D82C(v77, v90, v79);
  v142 = swift_allocObject();
  sub_1E5E1E660(v90, v142 + v91, v83);
  sub_1E5E1D82C(v77, v90, v79);
  sub_1E5DF650C(v184, &v197);
  v94 = v177;
  v95 = *(v177 + 16);
  v140 = v177 + 16;
  v141 = v95;
  v96 = v195;
  v97 = v196;
  v95(v195, v89, v196);
  v98 = v154;
  v99 = (v154 + 87) & 0xFFFFFFFFFFFFFFF8;
  v139 = v99 + 8;
  v100 = (v99 + 8 + *(v94 + 80)) & ~*(v94 + 80);
  v101 = swift_allocObject();
  sub_1E5E1E660(v90, v101 + v182, v93);
  sub_1E5DF599C(&v197, v101 + v183);
  v102 = (v101 + v98);
  v103 = v101;
  v144 = v101;
  v104 = v157;
  v105 = *(v157 + 3);
  v102[2] = *(v157 + 2);
  v102[3] = v105;
  v102[4] = *(v104 + 4);
  v106 = *(v104 + 1);
  *v102 = *v104;
  v102[1] = v106;
  v107 = v155;
  *(v103 + v99) = v155;
  (*(v94 + 32))(v103 + v100, v96, v97);
  v108 = v180;
  v109 = v181;
  sub_1E5E1D82C(v180, v90, v181);
  sub_1E5DF650C(v184, &v197);
  v110 = swift_allocObject();
  v111 = v182;
  sub_1E5E1E660(v90, v110 + v182, v93);
  sub_1E5DF599C(&v197, v110 + v183);
  v139 = v110;
  v112 = (v110 + v154);
  v113 = *(v104 + 3);
  v112[2] = *(v104 + 2);
  v112[3] = v113;
  v112[4] = *(v104 + 4);
  v114 = *(v104 + 1);
  *v112 = *v104;
  v112[1] = v114;
  *(v110 + v99) = v107;
  sub_1E5E1D82C(v108, v90, v109);
  v184 = swift_allocObject();
  sub_1E5E1E660(v90, v184 + v111, v93);
  sub_1E5DFD1CC(v193, v178, &qword_1ED074410, &qword_1E65F0B78);
  v115 = v176;
  v141(v195, v176, v196);
  swift_unknownObjectRetain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073EE0, &qword_1E65EEE98);
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560);
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074418, &qword_1E65F0B80);
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074420, &qword_1E65F0B88);
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074428, &qword_1E65F0B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077B70, &unk_1E65FA820);
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074430, &qword_1E65F0B98);
  sub_1E60731B0();
  sub_1E5FEB2FC();
  sub_1E60C08DC();
  sub_1E60C15C0();
  v116 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0727E0, &qword_1E65EBC50);
  v117 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0727E8, &qword_1E65F70C0);
  v118 = sub_1E5FED46C(&qword_1EE2D6558, &qword_1ED0727E8, &qword_1E65F70C0);
  *&v197 = v117;
  *(&v197 + 1) = v118;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v197 = v116;
  *(&v197 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1E60728B0();
  sub_1E60C217C();
  v120 = v145;
  sub_1E65DC198();
  (*(v177 + 8))(v115, v196);
  sub_1E5DFE50C(v193, &qword_1ED074410, &qword_1E65F0B78);
  sub_1E5FED46C(&qword_1ED0743B0, &qword_1ED074380, &qword_1E65F0970);
  v121 = v146;
  v122 = v120;
  v123 = v149;
  sub_1E5FEE4C8(v120);
  v124 = *(v150 + 8);
  v124(v122, v123);
  v125 = v147;
  sub_1E5FEE4C8(v121);
  v124(v121, v123);
  v126 = v148;
  sub_1E5FEE4C8(v125);
  v124(v125, v123);
  sub_1E5FEE4C8(v126);
  return (v124)(v126, v123);
}

uint64_t sub_1E631CE54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v55 = a2;
  v56 = a1;
  v57 = a3;
  v52 = type metadata accessor for CanvasTaskIdentifier();
  v3 = *(*(v52 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v52);
  v50 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v51 = &v47 - v6;
  v7 = type metadata accessor for RouteSource(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for RouteDestination();
  v53 = *(v11 - 8);
  v12 = *(v53 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v54 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v47 - v14);
  v16 = type metadata accessor for ItemContext();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1E65E3498();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5E1D82C(v56, v19, type metadata accessor for ItemContext);
  if (swift_getEnumCaseMultiPayload() == 6)
  {
    v25 = *(v21 + 32);
    v48 = v24;
    v49 = v20;
    v25(v24, v19, v20);
    v26 = sub_1E65E3478();
    v28 = v27;
    swift_storeEnumTagMultiPayload();
    *v15 = v26;
    v15[1] = v28;
    type metadata accessor for RouteResource();
    swift_storeEnumTagMultiPayload();
    sub_1E5E1E660(v10, v15 + *(v11 + 20), type metadata accessor for RouteSource);
    *(v15 + *(v11 + 24)) = MEMORY[0x1E69E7CD0];
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072948, &qword_1E65EC0D8);
    v56 = v29[12];
    v30 = v29[16];
    v31 = v29[20];
    v32 = v57;
    v33 = (v57 + v29[24]);
    v34 = v51;
    sub_1E5E1D82C(v15, v51, type metadata accessor for RouteDestination);
    sub_1E5E1D82C(v34, v50, type metadata accessor for CanvasTaskIdentifier);
    sub_1E632143C(&qword_1ED072950, type metadata accessor for CanvasTaskIdentifier);
    sub_1E65E6848();
    sub_1E6321560(v34, type metadata accessor for CanvasTaskIdentifier);
    v35 = *MEMORY[0x1E6999B50];
    v36 = sub_1E65E4EB8();
    (*(*(v36 - 8) + 104))(v32 + v30, v35, v36);
    v37 = *MEMORY[0x1E6999B48];
    v38 = sub_1E65E4EA8();
    (*(*(v38 - 8) + 104))(v32 + v31, v37, v38);
    sub_1E5DF650C(v55, v58);
    v39 = v54;
    sub_1E5E1D82C(v15, v54, type metadata accessor for RouteDestination);
    v40 = (*(v53 + 80) + 56) & ~*(v53 + 80);
    v41 = swift_allocObject();
    sub_1E5DF599C(v58, v41 + 16);
    sub_1E5E1E660(v39, v41 + v40, type metadata accessor for RouteDestination);
    *v33 = &unk_1E65FC550;
    v33[1] = v41;
    sub_1E65E6068();
    sub_1E6321560(v15, type metadata accessor for RouteDestination);
    (*(v21 + 8))(v48, v49);
    v42 = *MEMORY[0x1E6999AD8];
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072940, &qword_1E65EC0D0);
    v44 = *(v43 - 8);
    (*(v44 + 104))(v32, v42, v43);
    return (*(v44 + 56))(v32, 0, 1, v43);
  }

  else
  {
    sub_1E6321560(v19, type metadata accessor for ItemContext);
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072940, &qword_1E65EC0D0);
    return (*(*(v46 - 8) + 56))(v57, 1, 1, v46);
  }
}

uint64_t sub_1E631D4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072810, &qword_1E65EBE08);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072828, &qword_1E65EBE20);
  v31 = *(v11 - 8);
  v12 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v30 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = v30 - v17;
  v33 = v30 - v17;
  v32 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
  v19 = sub_1E65E60A8();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  sub_1E5DFD1CC(a1, v14, &qword_1ED072828, &qword_1E65EBE20);
  (*(v7 + 16))(v10, v34, v6);
  v20 = *(a4 + 24);
  v30[0] = *a4;
  v30[1] = v20;
  v21 = *(a4 + 56);
  v30[2] = *(a4 + 40);
  v30[3] = v21;
  v34 = *(a4 + 72);
  v22 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v23 = (v12 + *(v7 + 80) + v22) & ~*(v7 + 80);
  v24 = (v8 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  sub_1E5FAB460(v14, v25 + v22, &qword_1ED072828, &qword_1E65EBE20);
  (*(v7 + 32))(v25 + v23, v10, v6);
  *(v25 + v24) = v32;
  v26 = (v25 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8));
  v27 = *(a4 + 64);
  v26[3] = *(a4 + 48);
  v26[4] = v27;
  v28 = *(a4 + 32);
  v26[1] = *(a4 + 16);
  v26[2] = v28;
  *v26 = *a4;
  swift_unknownObjectRetain();

  sub_1E6059EAC(0, 0, v33, &unk_1E65EC0C8, v25);
}

uint64_t sub_1E631D818(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AppComposer() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_1E631D4C0(a1, a2, v2 + v6, v7);
}

uint64_t sub_1E631D8C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  v5 = sub_1E65E03F8();
  v4[5] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v7 = type metadata accessor for ItemContext();
  v4[7] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v4[8] = swift_task_alloc();
  v9 = sub_1E65D9CC8();
  v4[9] = v9;
  v10 = *(v9 - 8);
  v4[10] = v10;
  v11 = *(v10 + 64) + 15;
  v4[11] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0720A8, &qword_1E65EA790);
  v4[12] = v12;
  v13 = *(v12 - 8);
  v4[13] = v13;
  v14 = *(v13 + 64) + 15;
  v4[14] = swift_task_alloc();
  v15 = sub_1E65E0438();
  v4[15] = v15;
  v16 = *(v15 - 8);
  v4[16] = v16;
  v17 = *(v16 + 64) + 15;
  v4[17] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072630, &qword_1E65EB948) - 8) + 64) + 15;
  v4[18] = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072638, &qword_1E65EB950) - 8) + 64) + 15;
  v4[19] = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072640, &qword_1E65EB958) - 8) + 64) + 15;
  v4[20] = swift_task_alloc();
  v21 = *(*(sub_1E65D72D8() - 8) + 64) + 15;
  v4[21] = swift_task_alloc();
  v22 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072648, &qword_1E65EB960) - 8) + 64) + 15;
  v4[22] = swift_task_alloc();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072650, &qword_1E65EB968);
  v4[23] = v23;
  v24 = *(*(v23 - 8) + 64) + 15;
  v4[24] = swift_task_alloc();
  v25 = *(*(sub_1E65D7848() - 8) + 64) + 15;
  v4[25] = swift_task_alloc();
  v26 = *(*(sub_1E65E5C28() - 8) + 64) + 15;
  v4[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E631DC4C, 0, 0);
}

uint64_t sub_1E631DC4C()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for AppComposer() + 20);
  *(v0 + 248) = v2;
  v3 = v1 + v2 + *(type metadata accessor for AppEnvironment() + 96);
  v4 = RecommendationService.queryRelatedCatalogWorkoutPlaceholders.getter();
  *(v0 + 216) = v5;
  v11 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  *(v0 + 224) = v7;
  *v7 = v0;
  v7[1] = sub_1E631DD6C;
  v9 = *(v0 + 24);
  v8 = *(v0 + 32);

  return v11(v9, v8);
}

uint64_t sub_1E631DD6C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 224);
  v7 = *v2;
  *(v3 + 232) = a1;
  *(v3 + 240) = v1;

  if (v1)
  {
    v5 = sub_1E631E94C;
  }

  else
  {
    v5 = sub_1E631DE80;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E631DE80()
{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 248);
  v4 = *(v0 + 192);
  v5 = *(v0 + 200);
  v6 = *(v0 + 184);
  v7 = *(v0 + 16);

  v8 = v7 + v3;
  sub_1E65E5BA8();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [objc_opt_self() bundleForClass_];
  v11 = *v7;
  swift_getKeyPath();
  sub_1E65E4EC8();

  v12 = sub_1E65E5D48();
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073018, &qword_1E65ECE70);
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0720A0, &qword_1E65EA788) - 8);
  v16 = *(v15 + 72);
  v62 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_1E65EA670;
  v17 = v8[8];
  v18 = sub_1E65DAE38();
  if (v18 == sub_1E65DAE38())
  {
    v19 = 2;
  }

  else
  {
    v19 = 5;
  }

  *v4 = v19;
  swift_storeEnumTagMultiPayload();
  if (qword_1EE2D7270 != -1)
  {
    swift_once();
  }

  v20 = *(v0 + 232);
  v21 = *(v0 + 168);
  v22 = *(v0 + 176);
  v24 = *(v0 + 152);
  v23 = *(v0 + 160);
  v25 = sub_1E65D7348();
  __swift_project_value_buffer(v25, qword_1EE2EA268);
  v61 = v14;
  sub_1E65E5D38();
  v26 = type metadata accessor for SectionHeaderSubtitleDescriptor();
  (*(*(v26 - 8) + 56))(v23, 1, 1, v26);
  v27 = type metadata accessor for ActionButtonDescriptor(0);
  (*(*(v27 - 8) + 56))(v24, 1, 1, v27);
  sub_1E632143C(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor);
  sub_1E632143C(&qword_1EE2D7D88, type metadata accessor for SectionHeaderSubtitleDescriptor);
  sub_1E65E0458();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072660, &qword_1E65EB970);
  (*(*(v28 - 8) + 56))(v22, 0, 1, v28);
  v29 = *(v20 + 16);
  v30 = *(v0 + 232);
  if (v29)
  {
    v59 = v12;
    v75 = *(v0 + 104);
    v31 = *(v0 + 80);
    v72 = *(v0 + 64);
    v85 = MEMORY[0x1E69E7CC0];
    sub_1E601BE24(0, v29, 0);
    v84 = v85;
    v32 = *(v31 + 16);
    v31 += 16;
    v33 = v30 + ((*(v31 + 64) + 32) & ~*(v31 + 64));
    v68 = *(v31 + 56);
    v70 = v32;
    v66 = (v31 - 8);
    v64 = *MEMORY[0x1E699EC88];
    do
    {
      v34 = *(v0 + 88);
      v82 = v29;
      v35 = *(v0 + 64);
      v77 = *(v0 + 112);
      v79 = *(v0 + 72);
      v37 = *(v0 + 48);
      v36 = *(v0 + 56);
      v38 = *(v0 + 40);
      v70(v34, v33);
      *v35 = sub_1E65D9C98();
      *(v72 + 8) = v39;
      v40 = sub_1E65E3498();
      (*(*(v40 - 8) + 104))(v35, v64, v40);
      swift_storeEnumTagMultiPayload();
      sub_1E65E0A68();
      swift_storeEnumTagMultiPayload();
      sub_1E632143C(&qword_1EE2DB720, type metadata accessor for ItemContext);
      sub_1E632143C(&qword_1EE2DB738, type metadata accessor for ItemContext);
      v41 = v0;
      sub_1E632143C(&qword_1EE2DB730, type metadata accessor for ItemContext);
      sub_1E65E04D8();
      (*v66)(v34, v79);
      swift_storeEnumTagMultiPayload();
      v43 = *(v84 + 16);
      v42 = *(v84 + 24);
      v44 = v84;
      if (v43 >= v42 >> 1)
      {
        sub_1E601BE24(v42 > 1, v43 + 1, 1);
        v44 = v84;
      }

      v84 = v44;
      v45 = *(v41 + 112);
      *(v44 + 16) = v43 + 1;
      sub_1E5FAB460(v45, v44 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v43, &qword_1ED0720A8, &qword_1E65EA790);
      v33 += v68;
      --v29;
      v0 = v41;
    }

    while (v82 != 1);
    v46 = *(v41 + 232);

    v12 = v59;
  }

  else
  {
    v47 = *(v0 + 232);
  }

  v69 = *(v0 + 208);
  v71 = *(v0 + 200);
  v65 = *(v0 + 192);
  v67 = *(v0 + 176);
  v73 = *(v0 + 168);
  v74 = *(v0 + 160);
  v76 = *(v0 + 152);
  v48 = *(v0 + 136);
  v49 = *(v0 + 144);
  v50 = *(v0 + 120);
  v51 = *(v0 + 128);
  v78 = *(v0 + 112);
  v80 = *(v0 + 88);
  v81 = *(v0 + 64);
  v60 = *(v0 + 56);
  v83 = *(v0 + 48);
  v52 = type metadata accessor for SectionMetrics();
  v53 = *(v52 + 24);
  v54 = *MEMORY[0x1E69CBCB0];
  v55 = sub_1E65D8F28();
  (*(*(v55 - 8) + 104))(&v49[v53], v54, v55);
  v56 = sub_1E6427498(MEMORY[0x1E69E7CC0]);
  *v49 = 0x20646574616C6552;
  *(v49 + 1) = 0xEF6E6F6974636553;
  *(v49 + 2) = v12;
  *(v49 + 3) = v61;
  *&v49[*(v52 + 32)] = v56;
  (*(*(v52 - 8) + 56))(v49, 0, 1, v52);
  (*(v51 + 104))(v48, *MEMORY[0x1E699D7D8], v50);
  type metadata accessor for ArtworkDescriptor();
  type metadata accessor for ContextMenu(0);
  type metadata accessor for ItemMetrics();
  type metadata accessor for ViewDescriptor();
  sub_1E632143C(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor);
  sub_1E632143C(&qword_1EE2DB8B0, type metadata accessor for ContextMenu);
  sub_1E632143C(&qword_1EE2DB720, type metadata accessor for ItemContext);
  sub_1E632143C(&qword_1EE2DB738, type metadata accessor for ItemContext);
  sub_1E632143C(&qword_1EE2DB730, type metadata accessor for ItemContext);
  sub_1E632143C(&qword_1EE2DB650, type metadata accessor for ItemMetrics);
  sub_1E632143C(&qword_1EE2DA950, type metadata accessor for SectionMetrics);
  sub_1E5DF11E0();
  sub_1E632143C(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor);
  sub_1E65E0418();

  v57 = *(v0 + 8);

  return v57(v63);
}

uint64_t sub_1E631E94C()
{
  v2 = v0[26];
  v1 = v0[27];
  v4 = v0[24];
  v3 = v0[25];
  v6 = v0[21];
  v5 = v0[22];
  v8 = v0[19];
  v7 = v0[20];
  v10 = v0[17];
  v9 = v0[18];
  v14 = v0[14];
  v15 = v0[11];
  v16 = v0[8];
  v17 = v0[6];

  v11 = v0[1];
  v12 = v0[30];

  return v11();
}

uint64_t sub_1E631EA60(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5FE99E8;

  return sub_1E631D8C4(a1, v1 + v5, v7, v8);
}

uint64_t sub_1E631EB78(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072910, &qword_1E65EC030);
  v2[7] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072918, &qword_1E65EC038);
  v2[10] = v5;
  v6 = *(v5 - 8);
  v2[11] = v6;
  v7 = *(v6 + 64) + 15;
  v2[12] = swift_task_alloc();
  v8 = type metadata accessor for ItemContext();
  v2[13] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v10 = sub_1E65E3498();
  v2[15] = v10;
  v11 = *(v10 - 8);
  v2[16] = v11;
  v12 = *(v11 + 64) + 15;
  v2[17] = swift_task_alloc();
  v13 = sub_1E65D9CC8();
  v2[18] = v13;
  v14 = *(v13 - 8);
  v2[19] = v14;
  v15 = *(v14 + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072920, &qword_1E65EC040);
  v2[22] = v16;
  v17 = *(v16 - 8);
  v2[23] = v17;
  v18 = *(v17 + 64) + 15;
  v2[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E631EDE8, 0, 0);
}

uint64_t sub_1E631EDE8()
{
  v1 = v0[23];
  v2 = v0[5];
  v5 = *(v2 + 56);
  v4 = v2 + 56;
  v3 = v5;
  v6 = -1;
  v7 = -1 << *(v0[5] + 32);
  v8 = v0[16];
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v9 = v6 & v3;
  v10 = (63 - v7) >> 6;
  v42 = (v1 + 8);
  v38 = (v8 + 8);
  v39 = (v8 + 32);
  v40 = v0[19];
  v41 = (v40 + 32);
  v43 = v0[5];

  v12 = 0;
  v45 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v13 = v12;
    v0[25] = v45;
    if (!v9)
    {
      break;
    }

LABEL_8:
    v15 = v0[13];
    v14 = v0[14];
    v16 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    (*(v1 + 16))(v0[24], *(v43 + 48) + *(v1 + 72) * (v16 | (v12 << 6)), v0[22]);
    sub_1E65E04E8();
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      v18 = v0[20];
      v19 = v0[17];
      v36 = v0[18];
      v37 = v0[21];
      v20 = v0[15];
      v35 = v0[24];
      v21 = v0[22];
      (*v39)(v19, v0[14], v20);
      sub_1E65E3478();
      sub_1E65D9C88();
      (*v38)(v19, v20);
      (*v42)(v35, v21);
      v22 = *v41;
      (*v41)(v37, v18, v36);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v45 = sub_1E64F610C(0, v45[2] + 1, 1, v45);
      }

      v24 = v45[2];
      v23 = v45[3];
      if (v24 >= v23 >> 1)
      {
        v45 = sub_1E64F610C(v23 > 1, v24 + 1, 1, v45);
      }

      v25 = v0[21];
      v26 = v0[18];
      v45[2] = v24 + 1;
      result = v22(v45 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v24, v25, v26);
    }

    else
    {
      v17 = v0[14];
      (*v42)(v0[24], v0[22]);
      result = sub_1E6321560(v17, type metadata accessor for ItemContext);
    }
  }

  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      return result;
    }

    if (v12 >= v10)
    {
      break;
    }

    v9 = *(v4 + 8 * v12);
    ++v13;
    if (v9)
    {
      goto LABEL_8;
    }
  }

  v27 = v0[5];
  v28 = v0[6];

  v29 = v28 + *(type metadata accessor for AppComposer() + 20);
  v30 = v29 + *(type metadata accessor for AppEnvironment() + 48);
  v31 = CatalogService.fetchRemoteCatalogLockups.getter();
  v0[26] = v32;
  v44 = (v31 + *v31);
  v33 = v31[1];
  v34 = swift_task_alloc();
  v0[27] = v34;
  *v34 = v0;
  v34[1] = sub_1E631F1D4;

  return (v44)(33, v45);
}

uint64_t sub_1E631F1D4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = v1;
  v5 = v3[27];
  v10 = *v2;
  v4[28] = v1;

  if (v1)
  {
    v6 = sub_1E631F568;
  }

  else
  {
    v8 = v4[25];
    v7 = v4[26];

    v6 = sub_1E631F300;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1E631F300()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  v6 = *(v0 + 56);
  v5 = *(v0 + 64);
  v7 = **(v0 + 48);
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65E4C98();
  (*(v2 + 8))(v1, v3);
  sub_1E5FAB460(v4, v5, &qword_1ED072910, &qword_1E65EC030);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v11 = **(v0 + 64);
      goto LABEL_8;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v9 = *(v0 + 64);
      v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072930, &qword_1E65EC070) + 48);
      v11 = *v9;
      v12 = sub_1E65D76A8();
      (*(*(v12 - 8) + 8))(&v9[v10], v12);
      goto LABEL_8;
    }

    sub_1E5DFE50C(*(v0 + 64), &qword_1ED072910, &qword_1E65EC030);
  }

  v11 = 0;
LABEL_8:
  v13 = *(v0 + 224);
  v14 = *(v0 + 24);
  v15 = *(v0 + 192);
  v16 = *(v0 + 160);
  v17 = *(v0 + 168);
  v18 = *(v0 + 136);
  v25 = *(v0 + 112);
  v26 = *(v0 + 96);
  v27 = *(v0 + 72);
  v28 = *(v0 + 64);
  v19 = *(v0 + 48);
  v20 = swift_task_alloc();
  *(v20 + 16) = v11;
  *(v20 + 24) = v19;
  v21 = sub_1E6404CB8(sub_1E6321420, v20, v14);

  v22 = sub_1E600A848(v21);

  v23 = *(v0 + 8);

  return v23(v22);
}

uint64_t sub_1E631F568()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  v5 = v0[20];
  v4 = v0[21];
  v6 = v0[17];
  v7 = v0[14];
  v8 = v0[12];
  v10 = v0[8];
  v9 = v0[9];

  v11 = v0[1];
  v12 = v0[28];

  return v11();
}

uint64_t sub_1E631F64C(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5FEE4D4;

  return sub_1E631EB78(a1, v1 + v5);
}

uint64_t sub_1E631F724@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v223 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072668, &qword_1E65EB978);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v221 = &v189 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072670, &qword_1E65EB980);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v220 = &v189 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072638, &qword_1E65EB950);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v219 = &v189 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v231 = &v189 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074528, &unk_1E660F4D0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v230 = &v189 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v241 = &v189 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072610, &qword_1E65EB930);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v232 = &v189 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v242 = &v189 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v203 = &v189 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v201 = &v189 - v33;
  v200 = sub_1E65DAC98();
  v198 = *(v200 - 8);
  v34 = *(v198 + 64);
  MEMORY[0x1EEE9AC00](v200);
  v195 = &v189 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v202 = sub_1E65DB268();
  v36 = *(*(v202 - 8) + 64);
  MEMORY[0x1EEE9AC00](v202);
  v196 = &v189 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = sub_1E65DA0B8();
  v197 = *(v199 - 8);
  v38 = *(v197 + 64);
  v39 = MEMORY[0x1EEE9AC00](v199);
  v194 = &v189 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v214 = &v189 - v41;
  v193 = sub_1E65D9D58();
  v192 = *(v193 - 8);
  v42 = *(v192 + 64);
  v43 = MEMORY[0x1EEE9AC00](v193);
  v191 = &v189 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v190 = &v189 - v45;
  v210 = sub_1E65D8BB8();
  v46 = *(*(v210 - 8) + 64);
  v47 = MEMORY[0x1EEE9AC00](v210);
  v211 = &v189 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v225 = &v189 - v49;
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074530, &qword_1E65F0CA8);
  v50 = *(*(v213 - 8) + 64);
  v51 = MEMORY[0x1EEE9AC00](v213);
  v212 = &v189 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v240 = (&v189 - v53);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D90, &qword_1E66040F0);
  v55 = *(*(v54 - 8) + 64);
  v56 = MEMORY[0x1EEE9AC00](v54 - 8);
  v226 = &v189 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = MEMORY[0x1EEE9AC00](v56);
  v234 = &v189 - v59;
  MEMORY[0x1EEE9AC00](v58);
  v239 = &v189 - v60;
  v245 = sub_1E65D72D8();
  v238 = *(v245 - 8);
  v61 = *(v238 + 64);
  MEMORY[0x1EEE9AC00](v245);
  v244 = &v189 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E78, &qword_1E65ECC50);
  v64 = *(*(v63 - 8) + 64);
  MEMORY[0x1EEE9AC00](v63 - 8);
  v66 = &v189 - v65;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E80, &qword_1E65ECC58);
  v224 = *(v67 - 8);
  v68 = *(v224 + 8);
  MEMORY[0x1EEE9AC00](v67);
  v222 = (&v189 - v69);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072198, &unk_1E660C690);
  v71 = *(*(v70 - 8) + 64);
  MEMORY[0x1EEE9AC00](v70 - 8);
  v73 = &v189 - v72;
  v229 = sub_1E65D9AC8();
  v243 = *(v229 - 8);
  v74 = v243[8];
  v75 = MEMORY[0x1EEE9AC00](v229);
  v209 = &v189 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v75);
  v233 = &v189 - v77;
  v218 = sub_1E65D7848();
  v217 = *(v218 - 8);
  v78 = *(v217 + 64);
  MEMORY[0x1EEE9AC00](v218);
  v246 = &v189 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  v228 = type metadata accessor for ItemContext();
  v80 = *(*(v228 - 8) + 64);
  v81 = MEMORY[0x1EEE9AC00](v228);
  v227 = &v189 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v81);
  v237 = (&v189 - v83);
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  v215 = *(v216 - 8);
  v84 = *(v215 + 64);
  MEMORY[0x1EEE9AC00](v216);
  v236 = &v189 - v85;
  v86 = sub_1E65E03F8();
  v87 = *(*(v86 - 8) + 64);
  MEMORY[0x1EEE9AC00](v86);
  v235 = &v189 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  v247 = a1;
  if (a2)
  {
    v208 = v67;
    v207 = a2;
    v89 = sub_1E65D80B8();
    v91 = v90;
    v248 = v89;
    v249 = v90;
    v93 = v92 & 1;
    v250 = v92 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072938, &qword_1E65EC098);
    sub_1E65D7FB8();
    sub_1E5F87058(v89, v91, v93);
    if (v251 == 3)
    {
      v67 = v208;
    }

    else
    {
      v94 = sub_1E637CE70(v251, v207);
      v67 = v208;
      if ((v94 & 1) == 0)
      {
        v173 = 1;
        v172 = v223;
        goto LABEL_26;
      }
    }
  }

  sub_1E65E0A68();
  swift_storeEnumTagMultiPayload();
  v95 = *a3;
  swift_getKeyPath();
  sub_1E65E4EC8();

  v96 = sub_1E65D8078();
  v97 = v237;
  *v237 = v96;
  v97[1] = v98;
  v99 = *MEMORY[0x1E699EC88];
  v100 = sub_1E65E3498();
  (*(*(v100 - 8) + 104))(v97, v99, v100);
  swift_storeEnumTagMultiPayload();
  v101 = a3 + *(type metadata accessor for AppComposer() + 20);
  LODWORD(v208) = v101[8];
  swift_getKeyPath();
  sub_1E65E4EC8();

  swift_getKeyPath();
  v102 = v222;
  sub_1E65E4EC8();

  sub_1E65E4C98();
  sub_1E60EEE88(v73);
  sub_1E5DFE50C(v66, &qword_1ED072E78, &qword_1E65ECC50);
  (*(v224 + 1))(v102, v67);
  v103 = v243;
  v104 = v243[6];
  v105 = v229;
  if (v104(v73, 1, v229) == 1)
  {
    MEMORY[0x1E6941490]();
    if (v104(v73, 1, v105) != 1)
    {
      sub_1E5DFE50C(v73, &qword_1ED072198, &unk_1E660C690);
    }
  }

  else
  {
    (v103[4])(v233, v73, v105);
  }

  v106 = *(type metadata accessor for AppEnvironment() + 136);
  v107 = sub_1E5F9B6D0(&unk_1F5FA8BF0);
  v108 = sub_1E65D8248();
  v224 = v101;
  v222 = v106;
  sub_1E63C4134(v246, &v106[v101], v108, v244);

  v109 = sub_1E65D80A8();
  v110 = sub_1E65D9AA8();
  v112 = v111;
  v113 = v209;
  MEMORY[0x1E6941490]();
  v114 = sub_1E65D9AA8();
  v116 = v115;
  v117 = v243[1];
  ++v243;
  v209 = v117;
  (v117)(v113, v105);
  if (v110 == v114 && v112 == v116)
  {
  }

  else
  {
    v118 = sub_1E65E6C18();

    if ((v118 & 1) == 0)
    {
      v176 = sub_1E65D8198();
      v177 = sub_1E65D9AA8();
      v179 = sub_1E637CA94(v177, v178, v176);

      v119 = v246;
      if (v179)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E70, &unk_1E65ECC20);
        v180 = *(sub_1E65DADF8() - 8);
        v181 = *(v180 + 72);
        v182 = (*(v180 + 80) + 32) & ~*(v180 + 80);
        v183 = swift_allocObject();
        *(v183 + 16) = xmmword_1E65EB9E0;
        v184 = (v183 + v182);
        *v184 = sub_1E65D9AA8();
        v184[1] = v185;
        swift_storeEnumTagMultiPayload();
        *(v184 + v181) = 1;
        swift_storeEnumTagMultiPayload();
        v186 = sub_1E65D80A8();
        v248 = v183;
        sub_1E5FA9E2C(v186);
        v109 = v248;
      }

      goto LABEL_14;
    }
  }

  v119 = v246;
LABEL_14:
  v120 = v224;
  v121 = *(sub_1E65D8068() + 16);

  v122 = v239;
  if (v121)
  {
    v123 = sub_1E65D8068();
    sub_1E63C4134(v119, (v222 + v120), v123, v122);

    v124 = 0;
  }

  else
  {
    v124 = 1;
  }

  v207 = v109;
  v125 = *(v238 + 56);
  v205 = v238 + 56;
  v204 = v125;
  v125(v122, v124, 1, v245);
  v206 = sub_1E63B0704(v107);

  v126 = v225;
  sub_1E65D8128();
  v127 = v126;
  v128 = v211;
  sub_1E5E1D82C(v127, v211, MEMORY[0x1E69CB950]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v129 = v197;
    v130 = v214;
    v131 = v199;
    (*(v197 + 32))(v214, v128, v199);
    v132 = v194;
    (*(v129 + 16))(v194, v130, v131);
    v133 = v195;
    sub_1E65DA098();
    sub_1E65DAC38();
    sub_1E65DC2D8();
    sub_1E65DAC78();
    sub_1E65D74C8();

    sub_1E65DB248();
    v134 = v133;
    v120 = v224;
    (*(v198 + 8))(v134, v200);
    sub_1E65DA0A8();
    sub_1E632143C(&qword_1EE2D6D80, MEMORY[0x1E699D120]);
    v135 = v212;
    sub_1E65DC438();
    v136 = *(v129 + 8);
    v136(v132, v131);
    v136(v214, v131);
    v119 = v246;
  }

  else
  {
    v137 = v192;
    v138 = v190;
    v139 = v128;
    v140 = v193;
    (*(v192 + 32))(v190, v139, v193);
    v141 = v191;
    (*(v137 + 16))(v191, v138, v140);
    v135 = v212;
    sub_1E6134678(v141, v212);
    (*(v137 + 8))(v138, v140);
  }

  sub_1E6321560(v225, MEMORY[0x1E69CB950]);
  swift_storeEnumTagMultiPayload();
  sub_1E5FAB460(v135, v240, &qword_1ED074530, &qword_1E65F0CA8);
  v142 = sub_1E65D81E8();
  v145 = v207;
  if (v144 == -1)
  {
    v149 = 4;
  }

  else
  {
    v248 = v142;
    v249 = v143;
    v250 = v144 & 1;
    v146 = v142;
    v147 = v143;
    v148 = v144;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074538, &qword_1E65F0D18);
    sub_1E65D7FB8();
    sub_1E5F87158(v146, v147, v148);
    v149 = v251;
  }

  LODWORD(v224) = v149;
  v150 = v234;
  v151 = v245;
  (*(v238 + 16))(v234, v244, v245);
  v152 = 1;
  v153 = v150;
  v154 = v204;
  v204(v153, 0, 1, v151);
  sub_1E65D8158();
  v155 = v226;
  if (*(v145 + 16))
  {
    sub_1E63C4134(v119, (v222 + v120), v145, v226);
    v152 = 0;
  }

  v154(v155, v152, 1, v245);
  sub_1E65D8178();
  v156 = type metadata accessor for ActionButtonDescriptor(0);
  v225 = v156;
  v157 = *(*(v156 - 8) + 56);
  v158 = v231;
  v157();
  v159 = v219;
  (v157)(v219, 1, 1, v156);
  v160 = sub_1E65D8088();
  v162 = v161;
  v222 = v161;
  v163 = sub_1E65D80C8();
  v165 = v164;
  v167 = v166;
  v168 = sub_1E65D81B8();
  v167 &= 1u;
  v188 = v160;
  v187 = v158;
  v169 = v226;
  v170 = v230;
  sub_1E63A0574(v236, v240, v206, v224, v234, v241, v226, v230, v242, v239, v208, v187, v159, v188, v162, v163, v165, v167, v168, v171, 7u);

  sub_1E5F87058(v163, v165, v167);

  sub_1E5DFE50C(v159, &qword_1ED072638, &qword_1E65EB950);
  sub_1E5DFE50C(v231, &qword_1ED072638, &qword_1E65EB950);
  sub_1E5DFE50C(v170, &qword_1ED074528, &unk_1E660F4D0);
  sub_1E5DFE50C(v169, &qword_1ED072D90, &qword_1E66040F0);
  sub_1E5DFE50C(v241, &qword_1ED074528, &unk_1E660F4D0);
  sub_1E5DFE50C(v234, &qword_1ED072D90, &qword_1E66040F0);
  sub_1E5E1D82C(v237, v227, type metadata accessor for ItemContext);
  sub_1E5DFD1CC(v242, v232, &qword_1ED072610, &qword_1E65EB930);
  sub_1E62E2980(v220);
  sub_1E622BB88(v244, v221);
  type metadata accessor for ArtworkDescriptor();
  v247 = type metadata accessor for ContextMenu(0);
  v241 = type metadata accessor for ItemMetrics();
  v234 = type metadata accessor for ViewDescriptor();
  v231 = sub_1E632143C(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor);
  sub_1E632143C(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor);
  sub_1E632143C(&qword_1EE2DB8B0, type metadata accessor for ContextMenu);
  sub_1E632143C(&qword_1EE2DB720, type metadata accessor for ItemContext);
  sub_1E632143C(&qword_1EE2DB738, type metadata accessor for ItemContext);
  sub_1E632143C(&qword_1EE2DB730, type metadata accessor for ItemContext);
  sub_1E632143C(&qword_1EE2DB650, type metadata accessor for ItemMetrics);
  sub_1E632143C(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor);
  v172 = v223;
  sub_1E65E0488();
  sub_1E5DFE50C(v242, &qword_1ED072610, &qword_1E65EB930);
  sub_1E5DFE50C(v240, &qword_1ED074530, &qword_1E65F0CA8);
  sub_1E5DFE50C(v239, &qword_1ED072D90, &qword_1E66040F0);
  (*(v238 + 8))(v244, v245);
  (v209)(v233, v229);
  (*(v217 + 8))(v246, v218);
  sub_1E6321560(v237, type metadata accessor for ItemContext);
  (*(v215 + 8))(v236, v216);
  sub_1E6321560(v235, MEMORY[0x1E699D780]);
  v173 = 0;
LABEL_26:
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072098, &qword_1E65EA780);
  return (*(*(v174 - 8) + 56))(v172, v173, 1, v174);
}

uint64_t sub_1E63211E8(char *a1, uint64_t a2, char *a3, __int128 *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727E0, &qword_1E65EBC50);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v16 - v10;
  sub_1E61E66C8(a1, a3, a4, v16 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0727E8, &qword_1E65F70C0);
  v13 = sub_1E5FED46C(&qword_1EE2D6558, &qword_1ED0727E8, &qword_1E65F70C0);
  v16[0] = v12;
  v16[1] = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x1E69482C0](v11, v7, OpaqueTypeConformance2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1E6321368(char *a1)
{
  v3 = *(type metadata accessor for AppComposer() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  return sub_1E63211E8(a1, v1 + v4, (v1 + v5), (v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1E632143C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E6321484(uint64_t a1)
{
  v4 = *(type metadata accessor for RouteDestination() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E5FD0850(a1, v1 + 16, v1 + v5);
}

uint64_t sub_1E6321560(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t LibraryItemContext.identifier.getter()
{
  v1 = v0;
  v2 = sub_1E65DF3B8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LibraryItemContext();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1E632172C(v1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v6, v10, v2);
    v11 = sub_1E65DF378();
    (*(v3 + 8))(v6, v2);
    return v11;
  }

  else
  {
    result = *v10;
    v13 = v10[1];
  }

  return result;
}

uint64_t sub_1E632172C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LibraryItemContext();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E6321794(uint64_t a1)
{
  v2 = sub_1E6322D20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E63217D0(uint64_t a1)
{
  v2 = sub_1E6322D20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E632180C(uint64_t a1)
{
  v2 = sub_1E6322DC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6321848(uint64_t a1)
{
  v2 = sub_1E6322DC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E63218A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6C6F686563616C70 && a2 == 0xEB00000000726564)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E65E6C18();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E6321930(uint64_t a1)
{
  v2 = sub_1E6322D74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E632196C(uint64_t a1)
{
  v2 = sub_1E6322D74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LibraryItemContext.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0783A0, &qword_1E65FC560);
  v36 = *(v2 - 8);
  v37 = v2;
  v3 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v33 = &v31 - v4;
  v5 = sub_1E65DF3B8();
  v34 = *(v5 - 8);
  v35 = v5;
  v6 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v32 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0783A8, &qword_1E65FC568);
  v31 = *(v8 - 8);
  v9 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v31 - v10;
  v12 = type metadata accessor for LibraryItemContext();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0783B0, &qword_1E65FC570);
  v16 = *(v39 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v19 = &v31 - v18;
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E6322D20();
  sub_1E65E6DA8();
  sub_1E632172C(v38, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = v34;
    v22 = v32;
    v23 = v15;
    v24 = v35;
    (*(v34 + 32))(v32, v23, v35);
    v41 = 1;
    sub_1E6322D74();
    v25 = v33;
    v26 = v39;
    sub_1E65E6B18();
    sub_1E6322EC8(&qword_1ED0783C8, MEMORY[0x1E699E5F0]);
    v27 = v37;
    sub_1E65E6B78();
    (*(v36 + 8))(v25, v27);
    (*(v21 + 8))(v22, v24);
  }

  else
  {
    v29 = *v15;
    v28 = v15[1];
    v40 = 0;
    sub_1E6322DC8();
    v26 = v39;
    sub_1E65E6B18();
    sub_1E65E6B48();

    (*(v31 + 8))(v11, v8);
  }

  return (*(v16 + 8))(v19, v26);
}

uint64_t LibraryItemContext.hash(into:)()
{
  v1 = sub_1E65DF3B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LibraryItemContext();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1E632172C(v0, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v2 + 32))(v5, v9, v1);
    MEMORY[0x1E694E740](1);
    sub_1E6322EC8(&qword_1ED0766E8, MEMORY[0x1E699E5F0]);
    sub_1E65E5B48();
    return (*(v2 + 8))(v5, v1);
  }

  else
  {
    v11 = *v9;
    v12 = v9[1];
    MEMORY[0x1E694E740](0);
    sub_1E65E5D78();
  }
}

uint64_t LibraryItemContext.hashValue.getter()
{
  v1 = v0;
  v2 = sub_1E65DF3B8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LibraryItemContext();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1E65E6D28();
  sub_1E632172C(v1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v6, v10, v2);
    MEMORY[0x1E694E740](1);
    sub_1E6322EC8(&qword_1ED0766E8, MEMORY[0x1E699E5F0]);
    sub_1E65E5B48();
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    v11 = *v10;
    v12 = v10[1];
    MEMORY[0x1E694E740](0);
    sub_1E65E5D78();
  }

  return sub_1E65E6D78();
}

uint64_t LibraryItemContext.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0783D8, &qword_1E65FC578);
  v4 = *(v3 - 8);
  v57 = v3;
  v58 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v61 = &v52 - v6;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0783E0, &qword_1E65FC580);
  v56 = *(v59 - 8);
  v7 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v9 = &v52 - v8;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0783E8, &unk_1E65FC588);
  v63 = *(v60 - 8);
  v10 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v12 = &v52 - v11;
  v13 = type metadata accessor for LibraryItemContext();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v52 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v52 - v21;
  v23 = a1[3];
  v24 = a1[4];
  v65 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_1E6322D20();
  v25 = v64;
  sub_1E65E6D98();
  if (!v25)
  {
    v53 = v20;
    v54 = v17;
    v26 = v9;
    v28 = v59;
    v27 = v60;
    v64 = v22;
    v55 = v13;
    v29 = v61;
    v30 = v62;
    v31 = sub_1E65E6AF8();
    v32 = (2 * *(v31 + 16)) | 1;
    v66 = v31;
    v67 = v31 + 32;
    v68 = 0;
    v69 = v32;
    v33 = sub_1E5FBE3F0();
    if (v33 == 2 || v68 != v69 >> 1)
    {
      v40 = sub_1E65E68F8();
      swift_allocError();
      v42 = v41;
      v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071BA8, &qword_1E65E8C80) + 48);
      *v42 = v55;
      sub_1E65E6A78();
      sub_1E65E68E8();
      (*(*(v40 - 8) + 104))(v42, *MEMORY[0x1E69E6AF8], v40);
      swift_willThrow();
      (*(v63 + 8))(v12, v27);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v33)
      {
        v70 = 1;
        sub_1E6322D74();
        v34 = v29;
        sub_1E65E6A68();
        v35 = v30;
        v36 = v64;
        sub_1E65DF3B8();
        sub_1E6322EC8(&qword_1ED0783F0, MEMORY[0x1E699E5F0]);
        v37 = v54;
        v38 = v57;
        sub_1E65E6AD8();
        (*(v58 + 8))(v34, v38);
        (*(v63 + 8))(v12, v27);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v39 = v37;
      }

      else
      {
        v70 = 0;
        sub_1E6322DC8();
        sub_1E65E6A68();
        v45 = v12;
        v46 = sub_1E65E6AA8();
        v47 = v63;
        v48 = v46;
        v50 = v49;
        (*(v56 + 8))(v26, v28);
        (*(v47 + 8))(v45, v27);
        swift_unknownObjectRelease();
        v51 = v53;
        *v53 = v48;
        v51[1] = v50;
        swift_storeEnumTagMultiPayload();
        v39 = v51;
        v35 = v30;
        v36 = v64;
      }

      sub_1E6322E1C(v39, v36);
      sub_1E6322E1C(v36, v35);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v65);
}

uint64_t sub_1E632283C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = sub_1E65DF3B8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(a2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v13 = (&v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1E65E6D28();
  sub_1E632172C(v4, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v6 + 32))(v10, v13, v5);
    MEMORY[0x1E694E740](1);
    sub_1E6322EC8(&qword_1ED0766E8, MEMORY[0x1E699E5F0]);
    sub_1E65E5B48();
    (*(v6 + 8))(v10, v5);
  }

  else
  {
    v14 = *v13;
    v15 = v13[1];
    MEMORY[0x1E694E740](0);
    sub_1E65E5D78();
  }

  return sub_1E65E6D78();
}

uint64_t _s10Blackbeard18LibraryItemContextO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65DF3B8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LibraryItemContext();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v31 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078448, &qword_1E65FC9D0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v31 - v19;
  v21 = (&v31 + *(v18 + 56) - v19);
  sub_1E632172C(a1, &v31 - v19);
  sub_1E632172C(a2, v21);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1E632172C(v20, v15);
    v25 = *v15;
    v24 = v15[1];
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      if (v25 == *v21 && v24 == v21[1])
      {
        v29 = v21[1];
      }

      else
      {
        v27 = v21[1];
        v28 = sub_1E65E6C18();

        if ((v28 & 1) == 0)
        {
          sub_1E63232C0(v20);
          goto LABEL_8;
        }
      }

      sub_1E63232C0(v20);
      v22 = 1;
      return v22 & 1;
    }

LABEL_7:
    sub_1E6323258(v20);
LABEL_8:
    v22 = 0;
    return v22 & 1;
  }

  sub_1E632172C(v20, v13);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v5 + 8))(v13, v4);
    goto LABEL_7;
  }

  (*(v5 + 32))(v8, v21, v4);
  v22 = MEMORY[0x1E6946DB0](v13, v8);
  v23 = *(v5 + 8);
  v23(v8, v4);
  v23(v13, v4);
  sub_1E63232C0(v20);
  return v22 & 1;
}

unint64_t sub_1E6322D20()
{
  result = qword_1ED0783B8;
  if (!qword_1ED0783B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0783B8);
  }

  return result;
}

unint64_t sub_1E6322D74()
{
  result = qword_1ED0783C0;
  if (!qword_1ED0783C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0783C0);
  }

  return result;
}

unint64_t sub_1E6322DC8()
{
  result = qword_1ED0783D0;
  if (!qword_1ED0783D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0783D0);
  }

  return result;
}

uint64_t sub_1E6322E1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LibraryItemContext();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E6322EC8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E6322F44()
{
  result = qword_1ED078400;
  if (!qword_1ED078400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078400);
  }

  return result;
}

unint64_t sub_1E6322F9C()
{
  result = qword_1ED078408;
  if (!qword_1ED078408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078408);
  }

  return result;
}

unint64_t sub_1E6322FF4()
{
  result = qword_1ED078410;
  if (!qword_1ED078410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078410);
  }

  return result;
}

unint64_t sub_1E632304C()
{
  result = qword_1ED078418;
  if (!qword_1ED078418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078418);
  }

  return result;
}

unint64_t sub_1E63230A4()
{
  result = qword_1ED078420;
  if (!qword_1ED078420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078420);
  }

  return result;
}

unint64_t sub_1E63230FC()
{
  result = qword_1ED078428;
  if (!qword_1ED078428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078428);
  }

  return result;
}

unint64_t sub_1E6323154()
{
  result = qword_1ED078430;
  if (!qword_1ED078430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078430);
  }

  return result;
}

unint64_t sub_1E63231AC()
{
  result = qword_1ED078438;
  if (!qword_1ED078438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078438);
  }

  return result;
}

unint64_t sub_1E6323204()
{
  result = qword_1ED078440;
  if (!qword_1ED078440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078440);
  }

  return result;
}

uint64_t sub_1E6323258(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078448, &qword_1E65FC9D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E63232C0(uint64_t a1)
{
  v2 = type metadata accessor for LibraryItemContext();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E632331C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v54 = a3;
  v7 = type metadata accessor for AppComposer();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7 - 8);
  v55 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v53 = &v48 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v52 = &v48 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v48 - v16;
  v57 = (&v48 - v16);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v48 - v18;
  sub_1E5E1DEAC(v4, &v48 - v18);
  v20 = *(v8 + 80);
  v21 = (v20 + 16) & ~v20;
  v22 = swift_allocObject();
  sub_1E5E1FA80(v19, v22 + v21);
  v23 = (v22 + ((v9 + v21 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v23 = a1;
  v23[1] = a2;
  sub_1E65E5148();

  v49 = sub_1E65E5138();
  v56 = v4;
  sub_1E5E1DEAC(v4, v17);
  v24 = ((v20 + 32) & ~v20) + v9;
  v50 = v24;
  v51 = (v20 + 32) & ~v20;
  v25 = swift_allocObject();
  *(v25 + 16) = &unk_1E65FC9F8;
  *(v25 + 24) = v22;
  v48 = &unk_1E65FC9F8;
  sub_1E5E1FA80(v57, v25 + ((v20 + 32) & ~v20));
  *(v25 + v24) = 0;
  v26 = v25 + (v24 & 0xFFFFFFFFFFFFFFF8);
  v57 = sub_1E6172524;
  *(v26 + 8) = sub_1E6172524;
  *(v26 + 16) = 0;
  v27 = (v25 + (((v24 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8));
  v28 = MEMORY[0x1E69AB380];
  v29 = v49;
  *v27 = v49;
  v27[1] = v28;
  v30 = v52;
  sub_1E5E1DEAC(v4, v52);
  v31 = (v20 + 48) & ~v20;
  v32 = v31 + v9;
  v33 = (v31 + v9) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  v34[2] = &unk_1E65FC9F8;
  v34[3] = v22;
  v34[4] = v29;
  v35 = v29;
  v34[5] = MEMORY[0x1E69AB380];
  sub_1E5E1FA80(v30, v34 + v31);
  *(v34 + v32) = 0;
  v36 = v34 + v33;
  v37 = v56;
  *(v36 + 1) = v57;
  *(v36 + 2) = 0;
  v38 = v53;
  sub_1E5E1DEAC(v37, v53);
  v39 = (v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  v41 = v48;
  v40[2] = v48;
  v40[3] = v22;
  v40[4] = v35;
  v40[5] = MEMORY[0x1E69AB380];
  sub_1E5E1FA80(v38, v40 + v31);
  v42 = v40 + v39;
  v43 = v56;
  *v42 = v57;
  *(v42 + 1) = 0;
  v42[16] = 0;
  v44 = v55;
  sub_1E5E1DEAC(v43, v55);
  v45 = swift_allocObject();
  *(v45 + 16) = v41;
  *(v45 + 24) = v22;
  sub_1E5E1FA80(v44, v45 + v51);
  swift_retain_n();
  result = swift_retain_n();
  v47 = v54;
  *v54 = v35;
  v47[1] = MEMORY[0x1E69AB380];
  v47[2] = &unk_1E65EB918;
  v47[3] = v25;
  v47[4] = &unk_1E65FA770;
  v47[5] = v34;
  v47[6] = &unk_1E65EB920;
  v47[7] = v40;
  v47[8] = &unk_1E65FA780;
  v47[9] = v45;
  return result;
}

uint64_t sub_1E632370C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DE0, &qword_1E65F84B0);
  v4[8] = v5;
  v6 = *(v5 - 8);
  v4[9] = v6;
  v7 = *(v6 + 64) + 15;
  v4[10] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0777C0, &unk_1E65F84E0);
  v4[11] = v8;
  v9 = *(v8 - 8);
  v4[12] = v9;
  v10 = *(v9 + 64) + 15;
  v4[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6323844, 0, 0);
}

uint64_t sub_1E6323844()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[5];
  v8 = *v7;
  swift_getKeyPath();
  sub_1E65E4EC8();

  v0[2] = v6;
  v0[3] = v5;
  sub_1E65E4D78();
  (*(v2 + 8))(v1, v3);
  v9 = (v7 + *(type metadata accessor for AppComposer() + 36));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_task_alloc();
  v0[14] = v12;
  *v12 = v0;
  v12[1] = sub_1E6323980;
  v13 = v0[10];
  v14 = v0[4];

  return sub_1E6276C9C(v14, v11, v10);
}

uint64_t sub_1E6323980()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v6 = *v1;
  v6[15] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E6323B38, 0, 0);
  }

  else
  {
    v7 = v6[13];
    v8 = v6[10];

    v9 = v6[1];

    return v9();
  }
}

uint64_t sub_1E6323B38()
{
  v1 = v0[13];
  v2 = v0[10];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_1E6323BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_1E65E3B68();
  v6[5] = v7;
  v8 = *(v7 - 8);
  v6[6] = v8;
  v9 = *(v8 + 64) + 15;
  v6[7] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0754F0, &qword_1E65F1B08) - 8) + 64) + 15;
  v6[8] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078450, &qword_1E65FC9E0) - 8) + 64) + 15;
  v6[9] = swift_task_alloc();
  v12 = sub_1E65E2FB8();
  v6[10] = v12;
  v13 = *(v12 - 8);
  v6[11] = v13;
  v14 = *(v13 + 64) + 15;
  v6[12] = swift_task_alloc();
  v15 = type metadata accessor for PageMetricsClick();
  v6[13] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v17 = sub_1E65E30D8();
  v6[17] = v17;
  v18 = *(v17 - 8);
  v6[18] = v18;
  v19 = *(v18 + 64) + 15;
  v6[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6323DDC, 0, 0);
}

uint64_t sub_1E6323DDC()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  (*(v2 + 16))(v1, v0[2], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == *MEMORY[0x1E699EB18])
  {
    (*(v0[18] + 96))(v0[19], v0[17]);
    v5 = v0[19];
LABEL_5:
    v8 = v0[10];
    v9 = v0[11];
    v11 = v0[8];
    v10 = v0[9];
    v12 = v0[4];
    v13 = sub_1E65D74E8();
    v14 = *(v13 - 8);
    (*(v14 + 8))(v5, v13);
    sub_1E65E30A8();
    sub_1E60EFE64(v10);
    sub_1E5DFE50C(v11, &qword_1ED0754F0, &qword_1E65F1B08);
    if ((*(v9 + 48))(v10, 1, v8) == 1)
    {
      v15 = v0[7];
      sub_1E5DFE50C(v0[9], &qword_1ED078450, &qword_1E65FC9E0);
      sub_1E65DE348();
      v16 = sub_1E65E3B48();
      v17 = sub_1E65E6328();
      v18 = os_log_type_enabled(v16, v17);
      v20 = v0[6];
      v19 = v0[7];
      v21 = v0[5];
      if (v18)
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_1E5DE9000, v16, v17, "Missing workout detail", v22, 2u);
        MEMORY[0x1E694F1C0](v22, -1, -1);
      }

      (*(v20 + 8))(v19, v21);
      goto LABEL_9;
    }

    v33 = v0[15];
    v34 = v0[13];
    v35 = v0[3];
    (*(v0[11] + 32))(v0[12], v0[9], v0[10]);
    v36 = sub_1E65D9D78();
    (*(*(v36 - 8) + 56))(v33, 1, 1, v36);
    v37 = v34[5];
    v38 = *MEMORY[0x1E69CBA20];
    v39 = sub_1E65D8C68();
    (*(*(v39 - 8) + 104))(v33 + v37, v38, v39);
    (*(v14 + 56))(v33 + v34[6], 1, 1, v13);
    v40 = v34[8];
    v41 = sub_1E65DA208();
    (*(*(v41 - 8) + 56))(v33 + v40, 1, 1, v41);
    v42 = sub_1E65E2FA8();
    v44 = v43;
    v45 = v34[14];
    v46 = *MEMORY[0x1E69CBCC8];
    v47 = sub_1E65D8F28();
    (*(*(v47 - 8) + 104))(v33 + v45, v46, v47);
    v48 = v34[15];
    v49 = *MEMORY[0x1E69CC4B8];
    v50 = sub_1E65D9908();
    v51 = *(v50 - 8);
    (*(v51 + 104))(v33 + v48, v49, v50);
    (*(v51 + 56))(v33 + v48, 0, 1, v50);
    v52 = MEMORY[0x1E69E7CC0];
    v53 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
    *(v33 + v34[7]) = v52;
    v54 = (v33 + v34[9]);
    *v54 = 0;
    v54[1] = 0;
    v55 = (v33 + v34[10]);
    *v55 = 0;
    v55[1] = 0;
    *(v33 + v34[11]) = v53;
    v56 = (v33 + v34[12]);
    *v56 = 0;
    v56[1] = 0;
    v57 = (v33 + v34[13]);
    *v57 = v42;
    v57[1] = v44;
    v58 = *(v35 + 56);
    v120 = (*(v35 + 48) + **(v35 + 48));
    v59 = *(*(v35 + 48) + 4);
    v60 = swift_task_alloc();
    v0[24] = v60;
    *v60 = v0;
    v60[1] = sub_1E6324E74;
    v61 = v0[15];
    goto LABEL_15;
  }

  if (v4 == *MEMORY[0x1E699EB10])
  {
    v6 = v0[19];
    (*(v0[18] + 96))(v6, v0[17]);
    v7 = *(v6 + 8);

    v5 = v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078458, &qword_1E65FC9E8) + 48);
    goto LABEL_5;
  }

  if (v4 == *MEMORY[0x1E699EB00])
  {
    v62 = v0[19];
    v64 = v0[13];
    v63 = v0[14];
    v65 = v0[3];
    (*(v0[18] + 96))(v62, v0[17]);
    v66 = *v62;
    v67 = v62[1];
    v68 = sub_1E65D9D78();
    (*(*(v68 - 8) + 56))(v63, 1, 1, v68);
    v69 = v64[5];
    v70 = *MEMORY[0x1E69CBAA0];
    v71 = sub_1E65D8C68();
    (*(*(v71 - 8) + 104))(v63 + v69, v70, v71);
    v72 = v64[6];
    v73 = sub_1E65D74E8();
    (*(*(v73 - 8) + 56))(v63 + v72, 1, 1, v73);
    v74 = v64[8];
    v75 = sub_1E65DA208();
    (*(*(v75 - 8) + 56))(v63 + v74, 1, 1, v75);
    v76 = v64[14];
    v77 = *MEMORY[0x1E69CBCC8];
    v78 = sub_1E65D8F28();
    (*(*(v78 - 8) + 104))(v63 + v76, v77, v78);
    v79 = v64[15];
    v80 = *MEMORY[0x1E69CC490];
    v81 = sub_1E65D9908();
    v82 = *(v81 - 8);
    (*(v82 + 104))(v63 + v79, v80, v81);
    (*(v82 + 56))(v63 + v79, 0, 1, v81);
    v83 = MEMORY[0x1E69E7CC0];
    v84 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
    *(v63 + v64[7]) = v83;
    v85 = (v63 + v64[9]);
    *v85 = 0;
    v85[1] = 0;
    v86 = (v63 + v64[10]);
    *v86 = 0;
    v86[1] = 0;
    *(v63 + v64[11]) = v84;
    v87 = (v63 + v64[12]);
    *v87 = 0;
    v87[1] = 0;
    v88 = (v63 + v64[13]);
    *v88 = v66;
    v88[1] = v67;
    v89 = *(v65 + 56);
    v120 = (*(v65 + 48) + **(v65 + 48));
    v90 = *(*(v65 + 48) + 4);
    v91 = swift_task_alloc();
    v0[26] = v91;
    *v91 = v0;
    v91[1] = sub_1E6325078;
    v61 = v0[14];
LABEL_15:

    return v120(v61);
  }

  if (v4 != *MEMORY[0x1E699EB08])
  {
    if (v4 != *MEMORY[0x1E699EAF8])
    {
      (*(v0[18] + 8))(v0[19], v0[17]);
LABEL_9:
      v23 = v0[19];
      v24 = v0[15];
      v25 = v0[16];
      v26 = v0[14];
      v27 = v0[12];
      v29 = v0[8];
      v28 = v0[9];
      v30 = v0[7];

      v31 = v0[1];

      return v31();
    }

    v96 = v0[16];
    v97 = v0[13];
    v98 = v0[3];
    v99 = sub_1E65D9D78();
    (*(*(v99 - 8) + 56))(v96, 1, 1, v99);
    v100 = v97[5];
    v101 = *MEMORY[0x1E69CBA18];
    v102 = sub_1E65D8C68();
    (*(*(v102 - 8) + 104))(v96 + v100, v101, v102);
    v103 = v97[6];
    v104 = sub_1E65D74E8();
    (*(*(v104 - 8) + 56))(v96 + v103, 1, 1, v104);
    v105 = v97[8];
    v106 = sub_1E65DA208();
    (*(*(v106 - 8) + 56))(v96 + v105, 1, 1, v106);
    v107 = v97[14];
    v108 = *MEMORY[0x1E69CBCC8];
    v109 = sub_1E65D8F28();
    (*(*(v109 - 8) + 104))(v96 + v107, v108, v109);
    v110 = v97[15];
    v111 = sub_1E65D9908();
    (*(*(v111 - 8) + 56))(v96 + v110, 1, 1, v111);
    v112 = MEMORY[0x1E69E7CC0];
    v113 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
    *(v96 + v97[7]) = v112;
    v114 = (v96 + v97[9]);
    *v114 = 0;
    v114[1] = 0;
    v115 = (v96 + v97[10]);
    *v115 = 0;
    v115[1] = 0;
    *(v96 + v97[11]) = v113;
    v116 = (v96 + v97[12]);
    *v116 = 0;
    v116[1] = 0;
    *(v96 + v97[13]) = xmmword_1E65F75A0;
    v117 = *(v98 + 56);
    v120 = (*(v98 + 48) + **(v98 + 48));
    v118 = *(*(v98 + 48) + 4);
    v119 = swift_task_alloc();
    v0[22] = v119;
    *v119 = v0;
    v119[1] = sub_1E6324C90;
    v61 = v0[16];
    goto LABEL_15;
  }

  v92 = v0[3];
  v93 = *(v92 + 24);
  v121 = (*(v92 + 16) + **(v92 + 16));
  v94 = *(*(v92 + 16) + 4);
  v95 = swift_task_alloc();
  v0[20] = v95;
  *v95 = v0;
  v95[1] = sub_1E6324AB4;

  return v121();
}

uint64_t sub_1E6324AB4()
{
  v2 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_1E632525C;
  }

  else
  {
    v3 = sub_1E6324BC8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E6324BC8()
{
  v1 = v0[19];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[14];
  v5 = v0[12];
  v7 = v0[8];
  v6 = v0[9];
  v8 = v0[7];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1E6324C90()
{
  v2 = *(*v1 + 176);
  v5 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = sub_1E6325324;
  }

  else
  {
    v3 = sub_1E6324DA4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E6324DA4()
{
  sub_1E5FC0990(v0[16]);
  v1 = v0[19];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[14];
  v5 = v0[12];
  v7 = v0[8];
  v6 = v0[9];
  v8 = v0[7];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1E6324E74()
{
  v2 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = sub_1E63254C4;
  }

  else
  {
    v3 = sub_1E6324F88;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E6324F88()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  sub_1E5FC0990(v0[15]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[19];
  v5 = v0[15];
  v6 = v0[16];
  v7 = v0[14];
  v8 = v0[12];
  v10 = v0[8];
  v9 = v0[9];
  v11 = v0[7];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1E6325078()
{
  v2 = *(*v1 + 208);
  v5 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = sub_1E63253F4;
  }

  else
  {
    v3 = sub_1E632518C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E632518C()
{
  sub_1E5FC0990(v0[14]);
  v1 = v0[19];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[14];
  v5 = v0[12];
  v7 = v0[8];
  v6 = v0[9];
  v8 = v0[7];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1E632525C()
{
  v1 = v0[21];
  v2 = v0[19];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[14];
  v6 = v0[12];
  v8 = v0[8];
  v7 = v0[9];
  v9 = v0[7];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1E6325324()
{
  sub_1E5FC0990(v0[16]);
  v1 = v0[23];
  v2 = v0[19];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[14];
  v6 = v0[12];
  v8 = v0[8];
  v7 = v0[9];
  v9 = v0[7];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1E63253F4()
{
  sub_1E5FC0990(v0[14]);
  v1 = v0[27];
  v2 = v0[19];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[14];
  v6 = v0[12];
  v8 = v0[8];
  v7 = v0[9];
  v9 = v0[7];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1E63254C4()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  sub_1E5FC0990(v0[15]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[25];
  v5 = v0[19];
  v7 = v0[15];
  v6 = v0[16];
  v8 = v0[14];
  v9 = v0[12];
  v11 = v0[8];
  v10 = v0[9];
  v12 = v0[7];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1E63255B4(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E632370C(a1, v1 + v5, v7, v8);
}

uint64_t sub_1E6325704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v8[2] = sub_1E65E6058();
  v8[3] = sub_1E65E6048();
  v13 = swift_task_alloc();
  v8[4] = v13;
  *v13 = v8;
  v13[1] = sub_1E5F9DFE8;

  return sub_1E63257E0(a5, a6 & 1, a7, a8);
}

uint64_t sub_1E63257E0(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = v4;
  *(v5 + 104) = a2;
  *(v5 + 24) = a1;
  *(v5 + 32) = a3;
  v6 = sub_1E65E1278();
  *(v5 + 56) = v6;
  v7 = *(v6 - 8);
  *(v5 + 64) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 72) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63258A8, 0, 0);
}

uint64_t sub_1E63258A8()
{
  v28 = v0;
  v1 = *(v0 + 24);
  if (*(v0 + 104))
  {
    v2 = *(v0 + 24);
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
      v2 = *(v0 + 24);
    }

    v3 = sub_1E65E3B68();
    __swift_project_value_buffer(v3, qword_1EE2EA2A0);
    v4 = v1;
    v5 = sub_1E65E3B48();
    v6 = sub_1E65E6328();
    sub_1E5F059EC(v2);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v27 = v8;
      *v7 = 136446210;
      *(v0 + 16) = v1;
      v9 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
      v10 = sub_1E65E5CE8();
      v12 = sub_1E5DFD4B0(v10, v11, &v27);

      *(v7 + 4) = v12;
      _os_log_impl(&dword_1E5DE9000, v5, v6, "Unable to purchase %{public}s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x1E694F1C0](v8, -1, -1);
      MEMORY[0x1E694F1C0](v7, -1, -1);
    }

    v13 = *(v0 + 72);

    v14 = *(v0 + 8);

    return v14();
  }

  else
  {
    v16 = *(v0 + 64);
    v17 = *(v0 + 56);
    v18 = *(v0 + 32);
    **(v0 + 72) = v1;
    v19 = *MEMORY[0x1E699E7E0];
    (*(v16 + 104))();
    v20 = v1;
    v21 = sub_1E625E194(v18);
    if (!v21)
    {
      v21 = sub_1E6215168(MEMORY[0x1E69E7CC0]);
    }

    *(v0 + 80) = v21;
    v22 = v21;
    v23 = swift_task_alloc();
    *(v0 + 88) = v23;
    *v23 = v0;
    v23[1] = sub_1E6325B50;
    v24 = *(v0 + 72);
    v25 = *(v0 + 40);
    v26 = *(v0 + 48);

    return sub_1E6326DDC(v25, v24, v22);
  }
}

uint64_t sub_1E6325B50()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  v6 = *(*v1 + 64);
  v7 = *(*v1 + 56);
  v8 = *v1;
  *(*v1 + 96) = v0;

  (*(v6 + 8))(v5, v7);

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E6325D28, 0, 0);
  }

  else
  {
    v9 = *(v2 + 72);

    v10 = *(v8 + 8);

    return v10();
  }
}

uint64_t sub_1E6325D28()
{
  v1 = v0[9];

  v2 = v0[1];
  v3 = v0[12];

  return v2();
}

uint64_t sub_1E6325DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v8[2] = sub_1E65E6058();
  v8[3] = sub_1E65E6048();
  v13 = swift_task_alloc();
  v8[4] = v13;
  *v13 = v8;
  v13[1] = sub_1E5F9DFE8;

  return sub_1E6325E9C(a5, a6 & 1, a7, a8);
}

uint64_t sub_1E6325E9C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = v4;
  *(v5 + 104) = a2;
  *(v5 + 24) = a1;
  *(v5 + 32) = a3;
  v6 = sub_1E65E1278();
  *(v5 + 56) = v6;
  v7 = *(v6 - 8);
  *(v5 + 64) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 72) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6325F64, 0, 0);
}

uint64_t sub_1E6325F64()
{
  v28 = v0;
  v1 = *(v0 + 24);
  if (*(v0 + 104))
  {
    v2 = *(v0 + 24);
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
      v2 = *(v0 + 24);
    }

    v3 = sub_1E65E3B68();
    __swift_project_value_buffer(v3, qword_1EE2EA2A0);
    v4 = v1;
    v5 = sub_1E65E3B48();
    v6 = sub_1E65E6328();
    sub_1E5F059EC(v2);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v27 = v8;
      *v7 = 136446210;
      *(v0 + 16) = v1;
      v9 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
      v10 = sub_1E65E5CE8();
      v12 = sub_1E5DFD4B0(v10, v11, &v27);

      *(v7 + 4) = v12;
      _os_log_impl(&dword_1E5DE9000, v5, v6, "Unable to purchase carrier link %{public}s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x1E694F1C0](v8, -1, -1);
      MEMORY[0x1E694F1C0](v7, -1, -1);
    }

    v13 = *(v0 + 72);

    v14 = *(v0 + 8);

    return v14();
  }

  else
  {
    v16 = *(v0 + 64);
    v17 = *(v0 + 56);
    v18 = *(v0 + 32);
    **(v0 + 72) = v1;
    v19 = *MEMORY[0x1E699E7D8];
    (*(v16 + 104))();
    v20 = v1;
    v21 = sub_1E625E194(v18);
    if (!v21)
    {
      v21 = sub_1E6215168(MEMORY[0x1E69E7CC0]);
    }

    *(v0 + 80) = v21;
    v22 = v21;
    v23 = swift_task_alloc();
    *(v0 + 88) = v23;
    *v23 = v0;
    v23[1] = sub_1E632620C;
    v24 = *(v0 + 72);
    v25 = *(v0 + 40);
    v26 = *(v0 + 48);

    return sub_1E6326DDC(v25, v24, v22);
  }
}

uint64_t sub_1E632620C()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  v6 = *(*v1 + 64);
  v7 = *(*v1 + 56);
  v8 = *v1;
  *(*v1 + 96) = v0;

  (*(v6 + 8))(v5, v7);

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E6327C78, 0, 0);
  }

  else
  {
    v9 = *(v2 + 72);

    v10 = *(v8 + 8);

    return v10();
  }
}

uint64_t sub_1E632644C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for AppComposer() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = v1 + v8;
  v14 = *v13;
  v15 = *(v13 + 8);
  v16 = *(v1 + v9);
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_1E5DFE6BC;

  return sub_1E6325DC0(a1, v11, v12, v1 + v6, v14, v15, v16, v1 + v10);
}

uint64_t sub_1E63265A8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1E65D7158();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B730, &qword_1E65FCA88);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v14 - v9;
  sub_1E65D7428();
  sub_1E65D7138();

  v11 = *(v3 + 48);
  if (!v11(v10, 1, v2))
  {
    sub_1E65D7128();
  }

  if (v11(v10, 1, v2))
  {
    v12 = sub_1E65D74E8();
    (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
  }

  else
  {
    (*(v3 + 16))(v6, v10, v2);
    sub_1E65D70F8();
    (*(v3 + 8))(v6, v2);
  }

  return sub_1E6327C08(v10);
}

void sub_1E63267A8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = sub_1E65D74E8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v10 = a2;
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v11 = sub_1E65E3B68();
    __swift_project_value_buffer(v11, qword_1EE2EA2A0);
    (*(v6 + 16))(v9, a3, v5);
    v12 = a2;
    v13 = sub_1E65E3B48();
    v14 = sub_1E65E6328();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v26 = v16;
      *v15 = 141558530;
      *(v15 + 4) = 1752392040;
      *(v15 + 12) = 2080;
      sub_1E5FFE9E4();
      v17 = sub_1E65E6BC8();
      v19 = v18;
      (*(v6 + 8))(v9, v5);
      v20 = sub_1E5DFD4B0(v17, v19, &v26);

      *(v15 + 14) = v20;
      *(v15 + 22) = 2082;
      v25 = a2;
      v21 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
      v22 = sub_1E65E5CE8();
      v24 = sub_1E5DFD4B0(v22, v23, &v26);

      *(v15 + 24) = v24;
      _os_log_impl(&dword_1E5DE9000, v13, v14, "Failed to load %{mask.hash}s: %{public}s", v15, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E694F1C0](v16, -1, -1);
      MEMORY[0x1E694F1C0](v15, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v9, v5);
    }
  }
}

uint64_t sub_1E6326AC0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, void), uint64_t a7, uint64_t a8)
{
  v29[1] = a7;
  v30 = a8;
  v29[0] = a1;
  v14 = type metadata accessor for AppComposer();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = v29 - v19;
  v21 = sub_1E65E60A8();
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  sub_1E5E1DEAC(a3, v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1E5DF650C(a5, v31);
  sub_1E65E6058();
  LOBYTE(a3) = a2 & 1;
  a6(a1, a2 & 1);

  v22 = sub_1E65E6048();
  v23 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v24 = (v23 + v16 + 23) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  v26 = MEMORY[0x1E69E85E0];
  *(v25 + 16) = v22;
  *(v25 + 24) = v26;
  sub_1E5E1FA80(v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v23);
  v27 = v25 + ((v23 + v16 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v27 = v29[0];
  *(v27 + 8) = a3;
  *(v25 + v24) = a4;
  sub_1E5DF599C(v31, v25 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8));
  sub_1E6059EAC(0, 0, v20, v30, v25);
}

uint64_t sub_1E6326D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v8[2] = sub_1E65E6058();
  v8[3] = sub_1E65E6048();
  v13 = swift_task_alloc();
  v8[4] = v13;
  *v13 = v8;
  v13[1] = sub_1E5F9D470;

  return sub_1E63257E0(a5, a6 & 1, a7, a8);
}

uint64_t sub_1E6326DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for RouteDestination();
  v4[6] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v7 = type metadata accessor for AppAction();
  v4[8] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  v9 = sub_1E65DB638();
  v4[10] = v9;
  v10 = *(v9 - 8);
  v4[11] = v10;
  v11 = *(v10 + 64) + 15;
  v4[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6326F00, 0, 0);
}

uint64_t sub_1E6326F00()
{
  v1 = v0[12];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];
  v5 = v2 + *(type metadata accessor for AppComposer() + 20);
  v6 = v5 + *(type metadata accessor for AppEnvironment() + 76);
  v7 = MarketingService.publishServiceSubscriptionPurchased.getter();
  v0[13] = v8;
  sub_1E63B08E8(v1);
  if (v3 && (v9 = sub_1E625E194(v0[4])) != 0)
  {
    v10 = v9;
  }

  else
  {
    v10 = sub_1E6215168(MEMORY[0x1E69E7CC0]);
  }

  v0[14] = v10;
  v15 = (v7 + *v7);
  v11 = v7[1];
  v12 = swift_task_alloc();
  v0[15] = v12;
  *v12 = v0;
  v12[1] = sub_1E6327084;
  v13 = v0[12];

  return v15(v13, v10);
}

uint64_t sub_1E6327084()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);
  v4 = *(*v0 + 96);
  v5 = *(*v0 + 88);
  v6 = *(*v0 + 80);
  v8 = *v0;

  (*(v5 + 8))(v4, v6);

  return MEMORY[0x1EEE6DFA0](sub_1E632721C, 0, 0);
}

uint64_t sub_1E632721C()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  *(v0 + 128) = **(v0 + 40);
  *v1 = xmmword_1E65EADF0;
  swift_storeEnumTagMultiPayload();
  sub_1E65E6058();
  *(v0 + 136) = sub_1E65E6048();
  v4 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E63272D4, v4, v3);
}

uint64_t sub_1E63272D4()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[9];

  sub_1E65E4EE8();
  sub_1E60E7A9C(v3, type metadata accessor for AppAction);

  return MEMORY[0x1EEE6DFA0](sub_1E6327364, 0, 0);
}

uint64_t sub_1E6327364()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 16);
  v5 = v3[3];
  v4 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v5);
  type metadata accessor for RouteResource();
  swift_storeEnumTagMultiPayload();
  v6 = *(v2 + 20);
  type metadata accessor for RouteSource(0);
  swift_storeEnumTagMultiPayload();
  *(v1 + *(v2 + 24)) = MEMORY[0x1E69E7CD0];
  sub_1E600F5B0((v0 + 160));
  v7 = swift_task_alloc();
  *(v0 + 144) = v7;
  *v7 = v0;
  v7[1] = sub_1E6327488;
  v8 = *(v0 + 56);

  return RoutingContext.resolveDetours(_:priority:)(v8, (v0 + 160), v5, v4);
}

uint64_t sub_1E6327488()
{
  v2 = *(*v1 + 144);
  v3 = *(*v1 + 56);
  v4 = *v1;
  v4[19] = v0;

  sub_1E60E7A9C(v3, type metadata accessor for RouteDestination);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E632761C, 0, 0);
  }

  else
  {
    v5 = v4[12];
    v6 = v4[9];
    v7 = v4[7];

    v8 = v4[1];

    return v8();
  }
}

uint64_t sub_1E632761C()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[7];

  v4 = v0[1];
  v5 = v0[19];

  return v4();
}

uint64_t sub_1E6327698(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for AppComposer() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = v1 + v8;
  v14 = *v13;
  v15 = *(v13 + 8);
  v16 = *(v1 + v9);
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_1E5DFE6BC;

  return sub_1E6325704(a1, v11, v12, v1 + v6, v14, v15, v16, v1 + v10);
}

uint64_t sub_1E63277F4(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for AppComposer() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = v1 + v8;
  v14 = *v13;
  v15 = *(v13 + 8);
  v16 = *(v1 + v9);
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_1E5DFE6BC;

  return sub_1E6325DC0(a1, v11, v12, v1 + v6, v14, v15, v16, v1 + v10);
}

uint64_t sub_1E6327950(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for AppComposer() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = v1 + v8;
  v14 = *v13;
  v15 = *(v13 + 8);
  v16 = *(v1 + v9);
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_1E5DFE6BC;

  return sub_1E6325704(a1, v11, v12, v1 + v6, v14, v15, v16, v1 + v10);
}

uint64_t sub_1E6327AAC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for AppComposer() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = v1 + v8;
  v14 = *v13;
  v15 = *(v13 + 8);
  v16 = *(v1 + v9);
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_1E5DFA78C;

  return sub_1E6326D00(a1, v11, v12, v1 + v6, v14, v15, v16, v1 + v10);
}

uint64_t sub_1E6327C08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B730, &qword_1E65FCA88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E6327C7C(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v3 = sub_1E65E1188();
  v40 = *(v3 - 8);
  v4 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v38 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v41 = v35 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0753A8, &qword_1E65F1A30);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075868, &qword_1E65F1E60);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v35 - v14;
  v16 = sub_1E65E1458();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v20 = v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = v35 - v21;
  sub_1E65E1138();
  sub_1E60EF9DC(v15);
  sub_1E5DFE50C(v11, &qword_1ED0753A8, &qword_1E65F1A30);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    return sub_1E5DFE50C(v15, &qword_1ED075868, &qword_1E65F1E60);
  }

  v36 = *(v17 + 32);
  v37 = v22;
  v24 = v22;
  v36(v22, v15, v16);
  v25 = sub_1E65E60A8();
  (*(*(v25 - 8) + 56))(v41, 1, 1, v25);
  v26 = v38;
  sub_1E632B070(v39, v38, MEMORY[0x1E699E780]);
  (*(v17 + 16))(v20, v24, v16);
  v27 = *(a1 + 24);
  v35[0] = *a1;
  v35[1] = v27;
  v28 = *(a1 + 56);
  v35[2] = *(a1 + 40);
  v35[3] = v28;
  v39 = *(a1 + 72);
  v29 = (*(v40 + 80) + 32) & ~*(v40 + 80);
  v30 = (v4 + *(v17 + 80) + v29) & ~*(v17 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  sub_1E632B0D8(v26, v31 + v29, MEMORY[0x1E699E780]);
  v36((v31 + v30), v20, v16);
  v32 = (v31 + ((v18 + v30 + 7) & 0xFFFFFFFFFFFFFFF8));
  v33 = *(a1 + 48);
  v32[2] = *(a1 + 32);
  v32[3] = v33;
  v32[4] = *(a1 + 64);
  v34 = *(a1 + 16);
  *v32 = *a1;
  v32[1] = v34;
  swift_unknownObjectRetain();

  sub_1E6059EAC(0, 0, v41, &unk_1E65FCAC0, v31);

  return (*(v17 + 8))(v37, v16);
}

uint64_t sub_1E632810C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075830, &qword_1E65F1DE8);
  v6[5] = v7;
  v8 = *(v7 - 8);
  v6[6] = v8;
  v9 = *(v8 + 64) + 15;
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073570, &unk_1E65F4570) - 8) + 64) + 15;
  v6[9] = swift_task_alloc();
  v6[10] = swift_task_alloc();
  v11 = sub_1E65D8F28();
  v6[11] = v11;
  v12 = *(v11 - 8);
  v6[12] = v12;
  v13 = *(v12 + 64) + 15;
  v6[13] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410) - 8) + 64) + 15;
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  v15 = sub_1E65D8C68();
  v6[16] = v15;
  v16 = *(v15 - 8);
  v6[17] = v16;
  v17 = *(v16 + 64) + 15;
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073578, &qword_1E65F0E60) - 8) + 64) + 15;
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v19 = type metadata accessor for PageMetricsClick();
  v6[22] = v19;
  v20 = *(*(v19 - 8) + 64) + 15;
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  v21 = sub_1E65E1478();
  v6[25] = v21;
  v22 = *(v21 - 8);
  v6[26] = v22;
  v23 = *(v22 + 64) + 15;
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();
  v24 = sub_1E65E1118();
  v6[30] = v24;
  v25 = *(v24 - 8);
  v6[31] = v25;
  v26 = *(v25 + 64) + 15;
  v6[32] = swift_task_alloc();
  v27 = *(*(sub_1E65E1188() - 8) + 64) + 15;
  v6[33] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63284B0, 0, 0);
}

uint64_t sub_1E63284B0()
{
  v1 = v0[33];
  v2 = v0[30];
  v3 = v0[31];
  sub_1E632B070(v0[2], v1, MEMORY[0x1E699E780]);
  if ((*(v3 + 48))(v1, 6, v2))
  {
LABEL_2:
    v5 = v0[32];
    v4 = v0[33];
    v7 = v0[28];
    v6 = v0[29];
    v8 = v0[27];
    v9 = v0[23];
    v10 = v0[24];
    v12 = v0[20];
    v11 = v0[21];
    v13 = v0[19];
    v107 = v0[18];
    v110 = v0[15];
    v114 = v0[14];
    v119 = v0[13];
    v124 = v0[10];
    v129 = v0[9];
    v133 = v0[8];
    v135 = v0[7];

    v14 = v0[1];

    return v14();
  }

  v16 = v0[29];
  v17 = v0[25];
  v18 = v0[26];
  (*(v0[31] + 32))(v0[32], v0[33], v0[30]);
  sub_1E65E1108();
  v19 = (*(v18 + 88))(v16, v17);
  if (v19 == *MEMORY[0x1E699E840])
  {
    v20 = v0[28];
    v22 = v0[25];
    v21 = v0[26];
    v23 = v0[21];
    v24 = v0[19];
    v26 = v0[16];
    v25 = v0[17];
    v27 = v0[15];
    v28 = v0[12];
    v103 = v0[32];
    v105 = v0[13];
    v136 = v0[11];
    v115 = v0[8];
    v125 = v0[6];
    v120 = v0[5];
    v111 = v0[3];
    (*(v21 + 96))(v0[29], v22);
    v29 = sub_1E65D9D78();
    (*(*(v29 - 8) + 56))(v23, 1, 1, v29);
    (*(v25 + 104))(v24, *MEMORY[0x1E69CBA08], v26);
    v30 = sub_1E65D74E8();
    (*(*(v30 - 8) + 56))(v27, 1, 1, v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E58, &qword_1E65F0E90);
    v31 = *(sub_1E65D86A8() - 8);
    v100 = *(v31 + 72);
    v32 = (*(v31 + 80) + 32) & ~*(v31 + 80);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1E65EB9E0;
    v130 = v33;
    sub_1E65E1108();
    sub_1E62FCDB4();
    v108 = *(v21 + 8);
    v108(v20, v22);
    _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
    sub_1E65E10F8();
    v104 = *MEMORY[0x1E69CBCA0];
    v102 = *(v28 + 104);
    v102(v105);
    sub_1E6427498(MEMORY[0x1E69E7CC0]);
    sub_1E65D8678();
    sub_1E64C71B8(0);
    sub_1E65E13F8();
    v34 = sub_1E65E1778();
    (*(v125 + 8))(v115, v120);
    if (v34)
    {
      v35 = v0[10];
      sub_1E65DA1D8();
      v36 = 0;
    }

    else
    {
      v36 = 1;
    }

    v56 = v0[32];
    v57 = v0[27];
    v58 = v0[24];
    v59 = v0[25];
    v60 = v0[22];
    v106 = v0[19];
    v61 = v0[17];
    v99 = v0[21];
    v101 = v0[16];
    v117 = v0[15];
    v63 = v0[10];
    v62 = v0[11];
    v127 = v0[4];
    v64 = sub_1E65DA208();
    (*(*(v64 - 8) + 56))(v63, v36, 1, v64);
    v65 = sub_1E65D88A8();
    v122 = v66;
    sub_1E65E1108();
    v67 = sub_1E62FCDB4();
    v113 = v68;
    v108(v57, v59);
    (v102)(v58 + v60[14], v104, v62);
    v69 = v60[15];
    v70 = sub_1E65D9908();
    (*(*(v70 - 8) + 56))(v58 + v69, 1, 1, v70);
    v71 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
    sub_1E5FAB460(v99, v58, &qword_1ED073578, &qword_1E65F0E60);
    (*(v61 + 32))(v58 + v60[5], v106, v101);
    sub_1E5FAB460(v117, v58 + v60[6], &qword_1ED072340, &qword_1E65EA410);
    *(v58 + v60[7]) = v130;
    sub_1E5FAB460(v63, v58 + v60[8], &qword_1ED073570, &unk_1E65F4570);
    v72 = (v58 + v60[9]);
    *v72 = 0;
    v72[1] = 0;
    v73 = (v58 + v60[10]);
    *v73 = 0;
    v73[1] = 0;
    *(v58 + v60[11]) = v71;
    v74 = (v58 + v60[12]);
    *v74 = v65;
    v74[1] = v122;
    v75 = (v58 + v60[13]);
    *v75 = v67;
    v75[1] = v113;
    v76 = *(v127 + 56);
    v138 = (*(v127 + 48) + **(v127 + 48));
    v77 = *(*(v127 + 48) + 4);
    v78 = swift_task_alloc();
    v0[34] = v78;
    *v78 = v0;
    v78[1] = sub_1E6329184;
    v79 = v0[24];
  }

  else
  {
    if (v19 != *MEMORY[0x1E699E838] && v19 != *MEMORY[0x1E699E848])
    {
      v37 = v0[29];
      v38 = v0[25];
      v39 = v0[26];
      (*(v0[31] + 8))(v0[32], v0[30]);
      (*(v39 + 8))(v37, v38);
      goto LABEL_2;
    }

    v40 = v0[20];
    v42 = v0[17];
    v41 = v0[18];
    v43 = v0[16];
    v44 = v0[14];
    v112 = v0[13];
    v45 = v0[12];
    v137 = v0[11];
    v121 = v0[7];
    v126 = v0[5];
    v131 = v0[6];
    v116 = v0[3];
    (*(v0[26] + 8))(v0[29], v0[25]);
    v46 = sub_1E65D9D78();
    (*(*(v46 - 8) + 56))(v40, 1, 1, v46);
    (*(v42 + 104))(v41, *MEMORY[0x1E69CB9D8], v43);
    v47 = sub_1E65D74E8();
    (*(*(v47 - 8) + 56))(v44, 1, 1, v47);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E58, &qword_1E65F0E90);
    v48 = *(sub_1E65D86A8() - 8);
    v49 = *(v48 + 72);
    v50 = (*(v48 + 80) + 32) & ~*(v48 + 80);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_1E65EB9E0;
    v134 = v51;
    _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
    sub_1E65E10F8();
    v52 = *MEMORY[0x1E69CBCA0];
    v109 = *(v45 + 104);
    v109(v112, v52, v137);
    sub_1E6427498(MEMORY[0x1E69E7CC0]);
    sub_1E65D8678();
    sub_1E64C71B8(0);
    sub_1E65E13F8();
    v53 = sub_1E65E1778();
    (*(v131 + 8))(v121, v126);
    if (v53)
    {
      v54 = v0[9];
      sub_1E65DA1D8();
      v55 = 0;
    }

    else
    {
      v55 = 1;
    }

    v80 = v0[22];
    v81 = v0[23];
    v82 = v0[20];
    v83 = v0[17];
    v118 = v0[16];
    v123 = v0[18];
    v128 = v0[14];
    v84 = v0[11];
    v85 = v0[9];
    v86 = v0[4];
    v87 = sub_1E65DA208();
    (*(*(v87 - 8) + 56))(v85, v55, 1, v87);
    v88 = sub_1E65D88A8();
    v132 = v89;
    v109(v81 + v80[14], v52, v84);
    v90 = v80[15];
    v91 = sub_1E65D9908();
    (*(*(v91 - 8) + 56))(v81 + v90, 1, 1, v91);
    v92 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
    sub_1E5FAB460(v82, v81, &qword_1ED073578, &qword_1E65F0E60);
    (*(v83 + 32))(v81 + v80[5], v123, v118);
    sub_1E5FAB460(v128, v81 + v80[6], &qword_1ED072340, &qword_1E65EA410);
    *(v81 + v80[7]) = v134;
    sub_1E5FAB460(v85, v81 + v80[8], &qword_1ED073570, &unk_1E65F4570);
    v93 = (v81 + v80[9]);
    *v93 = 0;
    v93[1] = 0;
    v94 = (v81 + v80[10]);
    *v94 = 0;
    v94[1] = 0;
    *(v81 + v80[11]) = v92;
    v95 = (v81 + v80[12]);
    *v95 = v88;
    v95[1] = v132;
    *(v81 + v80[13]) = xmmword_1E65FCA90;
    v96 = *(v86 + 56);
    v138 = (*(v86 + 48) + **(v86 + 48));
    v97 = *(*(v86 + 48) + 4);
    v98 = swift_task_alloc();
    v0[38] = v98;
    *v98 = v0;
    v98[1] = sub_1E6329628;
    v79 = v0[23];
  }

  return v138(v79);
}

uint64_t sub_1E6329184()
{
  v2 = *(*v1 + 272);
  v3 = *v1;
  v3[35] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E63298B8, 0, 0);
  }

  else
  {
    v4 = v3[4];
    v5 = *(v4 + 40);
    v9 = (*(v4 + 32) + **(v4 + 32));
    v6 = *(*(v4 + 32) + 4);
    v7 = swift_task_alloc();
    v3[36] = v7;
    *v7 = v3;
    v7[1] = sub_1E6329354;

    return v9();
  }
}

uint64_t sub_1E6329354()
{
  v2 = *(*v1 + 288);
  v5 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v3 = sub_1E6329A80;
  }

  else
  {
    v3 = sub_1E6329468;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E6329468()
{
  v2 = v0[31];
  v1 = v0[32];
  v4 = v0[29];
  v3 = v0[30];
  sub_1E632B010(v0[24], type metadata accessor for PageMetricsClick);
  (*(v2 + 8))(v1, v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078140, &qword_1E65FB678);
  (*(*(v5 - 8) + 8))(v4, v5);
  v7 = v0[32];
  v6 = v0[33];
  v9 = v0[28];
  v8 = v0[29];
  v10 = v0[27];
  v11 = v0[23];
  v12 = v0[24];
  v14 = v0[20];
  v13 = v0[21];
  v15 = v0[19];
  v18 = v0[18];
  v19 = v0[15];
  v20 = v0[14];
  v21 = v0[13];
  v22 = v0[10];
  v23 = v0[9];
  v24 = v0[8];
  v25 = v0[7];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1E6329628()
{
  v2 = *(*v1 + 304);
  v5 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v3 = sub_1E6329C48;
  }

  else
  {
    v3 = sub_1E632973C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E632973C()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  sub_1E632B010(v0[23], type metadata accessor for PageMetricsClick);
  (*(v2 + 8))(v1, v3);
  v5 = v0[32];
  v4 = v0[33];
  v7 = v0[28];
  v6 = v0[29];
  v8 = v0[27];
  v9 = v0[23];
  v10 = v0[24];
  v12 = v0[20];
  v11 = v0[21];
  v13 = v0[19];
  v16 = v0[18];
  v17 = v0[15];
  v18 = v0[14];
  v19 = v0[13];
  v20 = v0[10];
  v21 = v0[9];
  v22 = v0[8];
  v23 = v0[7];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1E63298B8()
{
  v2 = v0[31];
  v1 = v0[32];
  v4 = v0[29];
  v3 = v0[30];
  sub_1E632B010(v0[24], type metadata accessor for PageMetricsClick);
  (*(v2 + 8))(v1, v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078140, &qword_1E65FB678);
  (*(*(v5 - 8) + 8))(v4, v5);
  v26 = v0[35];
  v7 = v0[32];
  v6 = v0[33];
  v9 = v0[28];
  v8 = v0[29];
  v10 = v0[27];
  v12 = v0[23];
  v11 = v0[24];
  v14 = v0[20];
  v13 = v0[21];
  v15 = v0[19];
  v18 = v0[18];
  v19 = v0[15];
  v20 = v0[14];
  v21 = v0[13];
  v22 = v0[10];
  v23 = v0[9];
  v24 = v0[8];
  v25 = v0[7];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1E6329A80()
{
  v2 = v0[31];
  v1 = v0[32];
  v4 = v0[29];
  v3 = v0[30];
  sub_1E632B010(v0[24], type metadata accessor for PageMetricsClick);
  (*(v2 + 8))(v1, v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078140, &qword_1E65FB678);
  (*(*(v5 - 8) + 8))(v4, v5);
  v26 = v0[37];
  v7 = v0[32];
  v6 = v0[33];
  v9 = v0[28];
  v8 = v0[29];
  v10 = v0[27];
  v12 = v0[23];
  v11 = v0[24];
  v14 = v0[20];
  v13 = v0[21];
  v15 = v0[19];
  v18 = v0[18];
  v19 = v0[15];
  v20 = v0[14];
  v21 = v0[13];
  v22 = v0[10];
  v23 = v0[9];
  v24 = v0[8];
  v25 = v0[7];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1E6329C48()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  sub_1E632B010(v0[23], type metadata accessor for PageMetricsClick);
  (*(v2 + 8))(v1, v3);
  v24 = v0[39];
  v5 = v0[32];
  v4 = v0[33];
  v7 = v0[28];
  v6 = v0[29];
  v8 = v0[27];
  v10 = v0[23];
  v9 = v0[24];
  v12 = v0[20];
  v11 = v0[21];
  v13 = v0[19];
  v16 = v0[18];
  v17 = v0[15];
  v18 = v0[14];
  v19 = v0[13];
  v20 = v0[10];
  v21 = v0[9];
  v22 = v0[8];
  v23 = v0[7];

  v14 = v0[1];

  return v14();
}

void sub_1E6329DCC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v168 = a4;
  v164 = a2;
  v165 = a3;
  v155 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v160 = &v134 - v6;
  v7 = type metadata accessor for PageMetricsClick();
  v8 = *(v7 - 8);
  v151 = v7;
  v152 = v8;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v153 = v11;
  v154 = &v134 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v149 = &v134 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076450, &qword_1E65F56A0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v150 = &v134 - v15;
  v167 = sub_1E65D8F28();
  v148 = *(v167 - 8);
  v16 = *(v148 + 64);
  MEMORY[0x1EEE9AC00](v167);
  v166 = &v134 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1E65D74E8();
  v156 = *(v18 - 8);
  v157 = v18;
  v19 = *(v156 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v146 = &v134 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v144 = &v134 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v145 = &v134 - v25;
  v26 = sub_1E65DA208();
  v158 = *(v26 - 8);
  v159 = v26;
  v27 = *(v158 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v163 = &v134 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076458, &qword_1E65F56A8);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v147 = &v134 - v31;
  v32 = sub_1E65D8C68();
  v162 = *(v32 - 8);
  v33 = *(v162 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v134 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073578, &qword_1E65F0E60);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v39 = &v134 - v38;
  v40 = sub_1E65D9D78();
  v161 = *(v40 - 8);
  v41 = *(v161 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v43 = &v134 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078460, &qword_1E65FCAA0);
  v45 = *(v44 - 8);
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v48 = &v134 - v47;
  v49 = sub_1E65E1578();
  v50 = *(*(v49 - 8) + 64);
  MEMORY[0x1EEE9AC00](v49);
  v52 = &v134 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E632B070(v168, v52, MEMORY[0x1E699E8A8]);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1E632B010(v52, MEMORY[0x1E699E8A8]);
  }

  else
  {
    v140 = v39;
    v141 = v43;
    v142 = v40;
    v143 = v35;
    v168 = v32;
    v53 = v166;
    v54 = v167;
    (*(v45 + 32))(v48, v52, v44);
    v55 = sub_1E65E1778();
    v56 = v48;
    if (v55)
    {
      v57 = v55;
      v58 = [v55 originalRequest];
      v59 = [v57 selectedActionIdentifier];
      if (!v59)
      {
        sub_1E65E5C78();
        v59 = sub_1E65E5C48();
      }

      v60 = [v58 locateActionWithIdentifier_];

      if (v60)
      {
        v135 = v57;
        v136 = v56;
        v137 = v45;
        v138 = v44;
        v139 = [v60 style];
        v61 = v140;
        sub_1E6378880(v140);
        v62 = v161;
        v63 = *(v161 + 48);
        v64 = v142;
        if (v63(v61, 1, v142) == 1)
        {
          (*(v62 + 104))(v141, *MEMORY[0x1E69CC910], v64);
          v65 = v63(v61, 1, v64);
          v66 = v54;
          v67 = v147;
          if (v65 != 1)
          {
            sub_1E5DFE50C(v61, &qword_1ED073578, &qword_1E65F0E60);
          }
        }

        else
        {
          (*(v62 + 32))(v141, v61, v64);
          v66 = v54;
          v67 = v147;
        }

        sub_1E6378AF8(v67);
        v68 = v162;
        v69 = *(v162 + 48);
        v70 = v168;
        v71 = v69(v67, 1, v168) == 1;
        v72 = v150;
        if (v71)
        {
          v73 = MEMORY[0x1E69CBA90];
          if (v139 != 2)
          {
            v73 = MEMORY[0x1E69CBAA0];
          }

          (*(v68 + 104))(v143, *v73, v70);
          v71 = v69(v67, 1, v70) == 1;
          v75 = v149;
          v74 = v67;
          v76 = v164;
          v77 = v165;
          if (!v71)
          {
            sub_1E5DFE50C(v74, &qword_1ED076458, &qword_1E65F56A8);
          }
        }

        else
        {
          (*(v68 + 32))(v143, v67, v70);
          v75 = v149;
          v76 = v164;
          v77 = v165;
        }

        v149 = v60;
        v78 = sub_1E6378D68();
        if (v79)
        {
          v76 = v78;
          v77 = v79;
        }

        else
        {
        }

        v80 = sub_1E6378FAC();
        v82 = v81;

        v140 = v82;
        v147 = v80;
        v164 = v76;
        sub_1E65DA1F8();
        v83 = sub_1E63791FC();
        if (v84)
        {
          v85 = v83;
        }

        else
        {
          v85 = 0x65736F6C43;
        }

        if (v84)
        {
          v86 = v84;
        }

        else
        {
          v86 = 0xE500000000000000;
        }

        if (v84)
        {
          v87 = v72;
        }

        else
        {
          v87 = v72;
          if (v139 != 2)
          {
            v88 = [v149 deepLink];
            v89 = v53;
            if (v88)
            {
              v90 = v144;
              v91 = v88;
              sub_1E65D7478();

              v92 = 0;
              v93 = v146;
              v94 = v145;
            }

            else
            {
              v92 = 1;
              v93 = v146;
              v94 = v145;
              v90 = v144;
            }

            v95 = v156;
            v96 = v157;
            (*(v156 + 56))(v90, v92, 1, v157);
            sub_1E5FAB460(v90, v94, &qword_1ED072340, &qword_1E65EA410);
            if ((*(v95 + 48))(v94, 1, v96))
            {
              sub_1E5DFE50C(v94, &qword_1ED072340, &qword_1E65EA410);
              v85 = 0;
              v86 = 0;
            }

            else
            {
              (*(v95 + 16))(v93, v94, v96);
              sub_1E5DFE50C(v94, &qword_1ED072340, &qword_1E65EA410);
              v85 = sub_1E65D7428();
              v86 = v97;
              (*(v95 + 8))(v93, v96);
            }

            v53 = v89;
            v66 = v167;
          }
        }

        v146 = v85;
        v165 = v77;
        sub_1E6379318(v87);
        v98 = v148;
        v99 = *(v148 + 48);
        v100 = v99(v87, 1, v66);
        v145 = v86;
        if (v100 == 1)
        {
          v101 = MEMORY[0x1E69CBCC8];
          if (v139 != 2)
          {
            v101 = MEMORY[0x1E69CBCF8];
          }

          (*(v98 + 104))(v53, *v101, v66);
          v102 = v99(v87, 1, v66);
          v103 = v160;
          v104 = v155;
          v105 = v66;
          v106 = v53;
          if (v102 != 1)
          {
            sub_1E5DFE50C(v87, &qword_1ED076450, &qword_1E65F56A0);
          }
        }

        else
        {
          (*(v98 + 32))(v53, v87, v66);
          v103 = v160;
          v104 = v155;
          v105 = v66;
          v106 = v53;
        }

        v107 = v161;
        v108 = v142;
        (*(v161 + 16))(v75, v141, v142);
        (*(v107 + 56))(v75, 0, 1, v108);
        v109 = v151;
        (*(v162 + 16))(&v75[v151[5]], v143, v168);
        (*(v156 + 56))(&v75[v109[6]], 1, 1, v157);
        v110 = v109[8];
        v111 = v159;
        v112 = v158;
        (*(v158 + 16))(&v75[v110], v163, v159);
        (*(v112 + 56))(&v75[v110], 0, 1, v111);
        (*(v98 + 16))(&v75[v109[14]], v106, v105);
        v113 = v109[15];
        v114 = sub_1E65D9908();
        (*(*(v114 - 8) + 56))(&v75[v113], 1, 1, v114);
        v115 = MEMORY[0x1E69E7CC0];
        v116 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
        *&v75[v109[7]] = v115;
        v117 = &v75[v109[9]];
        v118 = v140;
        *v117 = v147;
        *(v117 + 1) = v118;
        v119 = &v75[v109[10]];
        v120 = v165;
        *v119 = v164;
        *(v119 + 1) = v120;
        *&v75[v109[11]] = v116;
        v121 = &v75[v109[12]];
        *v121 = 0;
        *(v121 + 1) = 0;
        v122 = &v75[v109[13]];
        v123 = v145;
        *v122 = v146;
        *(v122 + 1) = v123;
        v124 = sub_1E65E60A8();
        (*(*(v124 - 8) + 56))(v103, 1, 1, v124);
        v125 = *v104;
        v126 = v104[3];
        v127 = v104[5];
        v128 = v104[7];
        v165 = v104[9];
        v129 = v154;
        sub_1E632B070(v75, v154, type metadata accessor for PageMetricsClick);
        v130 = (*(v152 + 80) + 112) & ~*(v152 + 80);
        v131 = swift_allocObject();
        *(v131 + 16) = 0;
        *(v131 + 24) = 0;
        v132 = *(v104 + 3);
        *(v131 + 64) = *(v104 + 2);
        *(v131 + 80) = v132;
        *(v131 + 96) = *(v104 + 4);
        v133 = *(v104 + 1);
        *(v131 + 32) = *v104;
        *(v131 + 48) = v133;
        sub_1E632B0D8(v129, v131 + v130, type metadata accessor for PageMetricsClick);
        swift_unknownObjectRetain();

        sub_1E6059EAC(0, 0, v160, &unk_1E65FCAB0, v131);

        sub_1E632B010(v75, type metadata accessor for PageMetricsClick);
        (*(v98 + 8))(v166, v167);
        (*(v158 + 8))(v163, v159);
        (*(v162 + 8))(v143, v168);
        (*(v161 + 8))(v141, v142);
        (*(v137 + 8))(v136, v138);
      }

      else
      {
        (*(v45 + 8))(v56, v44);
      }
    }

    else
    {
      (*(v45 + 8))(v48, v44);
    }
  }
}

uint64_t sub_1E632AE28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a4 + 56);
  v11 = (*(a4 + 48) + **(a4 + 48));
  v8 = *(*(a4 + 48) + 4);
  v9 = swift_task_alloc();
  *(v5 + 16) = v9;
  *v9 = v5;
  v9[1] = sub_1E5DFA78C;

  return v11(a5);
}

uint64_t sub_1E632AF1C(uint64_t a1)
{
  v4 = *(type metadata accessor for PageMetricsClick() - 8);
  v5 = (*(v4 + 80) + 112) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFA78C;

  return sub_1E632AE28(a1, v6, v7, v1 + 32, v1 + v5);
}

uint64_t sub_1E632B010(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E632B070(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E632B0D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E632B140(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1E65E1188() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1E65E1458() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1E5DFE6BC;

  return sub_1E632810C(a1, v11, v12, v1 + v6, v1 + v9, v1 + v10);
}

unint64_t sub_1E632B2D8()
{
  result = qword_1ED078468;
  if (!qword_1ED078468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078468);
  }

  return result;
}

uint64_t sub_1E632B32C(uint64_t a1)
{
  v43 = a1;
  v42 = sub_1E65E1518();
  v40 = *(v42 - 8);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v37 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078470, &qword_1E65FCC08);
  v46 = *(v3 - 8);
  v47 = v3;
  v4 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v45 = &v35 - v5;
  v6 = type metadata accessor for AppComposer();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v35 - v10;
  v12 = sub_1E65E12B8();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v39 = sub_1E65E1228();
  v44 = *(v39 - 8);
  v14 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v48 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *v1;
  v36 = v1;
  sub_1E5E1DEAC(v1, v11);
  v16 = *(v7 + 80);
  v17 = (v16 + 16) & ~v16;
  v18 = swift_allocObject();
  sub_1E5E1E2B8(v11, v18 + v17, type metadata accessor for AppComposer);
  v19 = v1;
  v20 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5E1DEAC(v19, v20);
  v21 = swift_allocObject();
  sub_1E5E1E2B8(v20, v21 + v17, type metadata accessor for AppComposer);
  sub_1E65E12A8();
  sub_1E65E1218();
  v22 = v40;
  v23 = v37;
  v24 = v42;
  (*(v40 + 16))(v37, v43, v42);
  sub_1E5E1DEAC(v36, v11);
  v25 = v22;
  v26 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v27 = (v41 + v16 + v26) & ~v16;
  v28 = swift_allocObject();
  (*(v25 + 32))(v28 + v26, v23, v24);
  sub_1E5E1E2B8(v11, v28 + v27, type metadata accessor for AppComposer);
  type metadata accessor for AppFeature();
  sub_1E632E814(&qword_1EE2DBD90, type metadata accessor for AppFeature);
  sub_1E632E814(&qword_1EE2D6528, MEMORY[0x1E699E7B0]);
  v29 = v45;
  v30 = v39;
  sub_1E65E4DE8();
  sub_1E65E4CC8();
  v31 = v48;
  v32 = v30;
  v33 = sub_1E65E4F08();
  (*(v46 + 8))(v29, v47);
  (*(v44 + 8))(v31, v32);
  return v33;
}

uint64_t sub_1E632B870(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075858, &qword_1E65F1E30);
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E632B93C, 0, 0);
}

uint64_t sub_1E632B93C()
{
  v1 = v0[9];
  v0[13] = *(v1 + *(type metadata accessor for AppComposer() + 24));
  v0[14] = sub_1E65E6058();
  v0[15] = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E632B9EC, v3, v2);
}

uint64_t sub_1E632B9EC()
{
  v1 = v0[15];
  v2 = v0[13];

  sub_1E5E20198(13, (v0 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D18, &qword_1E65EECF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075860, &qword_1E65F1E38);
  if (swift_dynamicCast())
  {
    v0[16] = v0[7];
    v3 = sub_1E611ECA8;
  }

  else
  {
    v3 = sub_1E632E954;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E632BAC4(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075858, &qword_1E65F1E30);
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E632BB90, 0, 0);
}

uint64_t sub_1E632BB90()
{
  v1 = v0[9];
  v0[13] = *(v1 + *(type metadata accessor for AppComposer() + 24));
  v0[14] = sub_1E65E6058();
  v0[15] = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E632BC40, v3, v2);
}

uint64_t sub_1E632BC40()
{
  v1 = v0[15];
  v2 = v0[13];

  sub_1E5E20198(13, (v0 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D18, &qword_1E65EECF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075860, &qword_1E65F1E38);
  if (swift_dynamicCast())
  {
    v0[16] = v0[7];
    v3 = sub_1E632BD18;
  }

  else
  {
    v3 = sub_1E611EC48;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E632BD18()
{
  v1 = *(v0 + 112);
  *(v0 + 136) = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E632BDA4, v3, v2);
}

uint64_t sub_1E632BDA4()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[12];
  v4 = v0[8];

  sub_1E65E4E98();

  return MEMORY[0x1EEE6DFA0](sub_1E632BE30, 0, 0);
}

uint64_t sub_1E632BE30()
{
  v1 = *(v0 + 112);
  *(v0 + 144) = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E632BEBC, v3, v2);
}

uint64_t sub_1E632BEBC()
{
  v1 = v0[18];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];

  sub_1E65E4E18();
  (*(v3 + 8))(v2, v4);
  v5 = v0[12];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1E632BF54@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v41 = a2;
  v46 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075850, &qword_1E65F1E18);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v45 = &v39 - v6;
  v7 = sub_1E65E1518();
  v42 = *(v7 - 8);
  v43 = v7;
  v8 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v44 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E65E11E8();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v40 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073548, &qword_1E65ED508);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v39 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v39 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v39 - v23;
  v25 = sub_1E65D7848();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v39 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for AppState();
  v31 = v30[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  sub_1E65E4C98();
  sub_1E5E1F544(v24);
  sub_1E5DFE50C(v20, &qword_1ED071F78, &unk_1E65EA3F0);
  v32 = *(v26 + 48);
  if (v32(v24, 1, v25) == 1)
  {
    sub_1E65D77C8();
    if (v32(v24, 1, v25) != 1)
    {
      sub_1E5DFE50C(v24, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    (*(v26 + 32))(v29, v24, v25);
  }

  v33 = sub_1E65E1508();
  v34 = type metadata accessor for AppComposer();
  v35 = v30[6];
  sub_1E60E4340(v33, *(v41 + *(v34 + 20) + 8), v16);
  sub_1E65DAE08();
  v36 = sub_1E65E1508();
  sub_1E60E3EA8(v36, v40);
  (*(v42 + 16))(v44, a1, v43);
  v37 = v30[46];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074BF8, &qword_1E65F10B8);
  sub_1E65E4D78();
  return sub_1E65E1178();
}

uint64_t sub_1E632C3C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v122 = a4;
  v109 = a3;
  v117 = a1;
  v127 = a5;
  v116 = sub_1E65E1518();
  v113 = *(v116 - 8);
  v115 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](v116);
  v110 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0736E8, &qword_1E65ED948);
  v125 = *(v8 - 8);
  v126 = v8;
  v9 = *(v125 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v119 = &v97 - v10;
  v11 = sub_1E65E1398();
  v123 = *(v11 - 8);
  v124 = v11;
  v12 = *(v123 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v134 = &v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AppComposer();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14 - 8);
  v106 = &v97 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v104 = &v97 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v103 = &v97 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v102 = &v97 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v97 - v26;
  v29 = v28;
  MEMORY[0x1EEE9AC00](v25);
  v31 = &v97 - v30;
  v32 = sub_1E65E1298();
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v105 = &v97 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_1E65E1208();
  v118 = *(v107 - 8);
  v35 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v107);
  v133 = &v97 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_1E65E1168();
  v112 = *(v111 - 8);
  v120 = *(v112 + 64);
  v37 = MEMORY[0x1EEE9AC00](v111);
  v121 = &v97 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x1EEE9AC00](v37);
  v114 = &v97 - v40;
  MEMORY[0x1EEE9AC00](v39);
  v132 = &v97 - v41;
  v42 = *MEMORY[0x1E699E768];
  (*(v43 + 104))();
  v44 = sub_1E642764C(MEMORY[0x1E69E7CC0]);
  v108 = *a2;
  v101 = v31;
  sub_1E5E1DEAC(a2, v31);
  sub_1E5DF650C(a3, &v137);
  v45 = *(v15 + 80);
  v46 = (v45 + 24) & ~v45;
  v100 = v29;
  v47 = swift_allocObject();
  *(v47 + 16) = v44;
  sub_1E5E1E2B8(v31, v47 + v46, type metadata accessor for AppComposer);
  sub_1E5DF599C(&v137, v47 + ((v29 + v46 + 7) & 0xFFFFFFFFFFFFFFF8));
  v48 = a2;
  sub_1E5E1DEAC(a2, v27);
  v49 = (v45 + 16) & ~v45;
  v98 = swift_allocObject();
  sub_1E5E1E2B8(v27, v98 + v49, type metadata accessor for AppComposer);
  v50 = v102;
  sub_1E5E1DEAC(v48, v102);
  v97 = swift_allocObject();
  sub_1E5E1E2B8(v50, v97 + v49, type metadata accessor for AppComposer);
  v51 = v103;
  sub_1E5E1DEAC(v48, v103);
  v102 = swift_allocObject();
  sub_1E5E1E2B8(v51, v102 + v49, type metadata accessor for AppComposer);
  v52 = v48;
  v53 = v48;
  v129 = v48;
  v54 = v104;
  sub_1E5E1DEAC(v52, v104);
  v99 = v49 + v29;
  v55 = swift_allocObject();
  v131 = v49;
  v128 = type metadata accessor for AppComposer;
  sub_1E5E1E2B8(v54, v55 + v49, type metadata accessor for AppComposer);
  v56 = v53;
  v57 = v106;
  sub_1E5E1DEAC(v56, v106);
  v130 = v45 | 7;
  v58 = swift_allocObject();
  sub_1E5E1E2B8(v57, v58 + v49, type metadata accessor for AppComposer);
  sub_1E65E1288();
  sub_1E65E11F8();
  sub_1E65E1388();
  v59 = v113;
  v60 = v110;
  v61 = v116;
  (*(v113 + 16))(v110, v117, v116);
  v62 = v129;
  v63 = v101;
  sub_1E5E1DEAC(v129, v101);
  v64 = v59;
  v65 = (*(v59 + 80) + 16) & ~*(v59 + 80);
  v66 = (v115 + v45 + v65) & ~v45;
  v67 = swift_allocObject();
  (*(v64 + 32))(v67 + v65, v60, v61);
  v68 = v63;
  v69 = v128;
  sub_1E5E1E2B8(v63, v67 + v66, v128);
  type metadata accessor for AppFeature();
  sub_1E632E814(&qword_1EE2DBD90, type metadata accessor for AppFeature);
  v117 = sub_1E632E814(&qword_1EE2D6530, MEMORY[0x1E699E7A0]);
  v70 = v119;
  v71 = v107;
  sub_1E65E4DE8();
  sub_1E5E1DEAC(v62, v68);
  v72 = *v122;
  v73 = v122[3];
  v74 = v122[5];
  v116 = v122[7];
  v75 = (v99 + 7) & 0xFFFFFFFFFFFFFFF8;
  v115 = v122[9];
  v76 = v122;
  v77 = swift_allocObject();
  sub_1E5E1E2B8(v68, v77 + v131, v69);
  v78 = (v77 + v75);
  v79 = v76[3];
  v78[2] = v76[2];
  v78[3] = v79;
  v78[4] = v76[4];
  v80 = v76[1];
  *v78 = *v76;
  v78[1] = v80;
  swift_unknownObjectRetain();

  v82 = v133;
  v81 = v134;
  v83 = sub_1E65E4F08();

  (*(v125 + 8))(v70, v126);
  (*(v123 + 8))(v81, v124);
  (*(v118 + 8))(v82, v71);
  v84 = v112;
  v85 = *(v112 + 16);
  v86 = v132;
  v87 = v111;
  v85(v114, v132, v111);
  sub_1E5E1DEAC(v129, v68);
  sub_1E5DF650C(v109, &v137);
  v88 = swift_allocObject();
  sub_1E5E1E2B8(v68, v88 + v131, v128);
  sub_1E5DF599C(&v137, v88 + v75);
  v89 = v121;
  v85(v121, v86, v87);
  v90 = v84;
  v91 = (*(v84 + 80) + 16) & ~*(v84 + 80);
  v92 = (v120 + v91 + 7) & 0xFFFFFFFFFFFFFFF8;
  v93 = swift_allocObject();
  (*(v90 + 32))(v93 + v91, v89, v87);
  *(v93 + v92) = v83;
  sub_1E65E3878();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073808, &qword_1E65EDA90);
  sub_1E632E814(&qword_1EE2D6048, MEMORY[0x1E699ED90]);
  v94 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073810, &qword_1E65EDA98);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v135 = v94;
  v136 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1E65E1488();
  return (*(v90 + 8))(v132, v87);
}

uint64_t sub_1E632D0EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v72 = a3;
  v73 = a4;
  v69 = a2;
  v70 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v67 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v66 = &v62 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v64 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v65 = &v62 - v13;
  v71 = type metadata accessor for ArtworkContent();
  v14 = *(*(v71 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v71);
  v68 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v62 - v17;
  v19 = type metadata accessor for ArtworkDescriptor();
  v20 = *(*(v19 - 1) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = (&v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v21);
  v25 = (&v62 - v24);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077088, &qword_1E65F9540);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = &v62 - v28;
  v30 = sub_1E65E14B8();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v62 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5DFD1CC(v70, v29, &qword_1ED077088, &qword_1E65F9540);
  if ((*(v31 + 48))(v29, 1, v30) == 1)
  {
    sub_1E5DFE50C(v29, &qword_1ED077088, &qword_1E65F9540);
    swift_storeEnumTagMultiPayload();
    if (sub_1E65E4B48())
    {
      v35 = 8.0;
    }

    else
    {
      v35 = 4.0;
    }

    sub_1E5E1E2B8(v18, v25, type metadata accessor for ArtworkContent);
    *(v25 + v19[5]) = MEMORY[0x1E69E7CD0];
    v36 = (v25 + v19[6]);
    *v36 = 0.0;
    v36[1] = v35;
    v36[2] = v35;
    v36[3] = 8.0;
    *(v25 + v19[7]) = 1;
    v37 = (v25 + v19[8]);
    *v37 = 0;
    v37[1] = 0;
    v38 = v72;
    v39 = v73;
    sub_1E64D2DD0(v25, v72, v73);
    v40 = sub_1E65E4B98();
    v42 = v41;
    v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560) + 36);
    sub_1E64D54B4(v25, v38, v39 + v43);
    sub_1E61BF8AC(v25);
  }

  else
  {
    v62 = v30;
    v63 = v31;
    (*(v31 + 32))(v34, v29, v30);
    v70 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075DC8, &qword_1E65F3948) + 48);
    v44 = v65;
    sub_1E65E14A8();
    v45 = v66;
    sub_1E65E1498();
    sub_1E5DFD1CC(v44, v64, &qword_1ED0734E8, &qword_1E65ED470);
    sub_1E5DFD1CC(v45, v67, &qword_1ED072340, &qword_1E65EA410);
    v46 = v68;
    sub_1E65DB248();
    sub_1E5DFE50C(v45, &qword_1ED072340, &qword_1E65EA410);
    sub_1E5DFE50C(v44, &qword_1ED0734E8, &qword_1E65ED470);
    sub_1E5DFD1CC(v69, v46 + v70, &qword_1ED073548, &qword_1E65ED508);
    swift_storeEnumTagMultiPayload();
    v47 = type metadata accessor for AppComposer();
    v48 = v72;
    v49 = *(v72 + *(v47 + 20) + 8);
    v50 = sub_1E65DAE38();
    v51 = sub_1E65DAE38();
    v52 = sub_1E65E4B48();
    v53 = 4.0;
    if (v52)
    {
      v53 = 8.0;
    }

    v54 = 16.0;
    if (v52)
    {
      v54 = 18.0;
    }

    if (v50 == v51)
    {
      v55 = v54;
    }

    else
    {
      v55 = v53;
    }

    if (v50 == v51)
    {
      v56 = 12.0;
    }

    else
    {
      v56 = 8.0;
    }

    sub_1E5E1E2B8(v46, v23, type metadata accessor for ArtworkContent);
    *(v23 + v19[5]) = MEMORY[0x1E69E7CD0];
    v57 = (v23 + v19[6]);
    *v57 = 0.0;
    v57[1] = v55;
    v57[2] = v55;
    v57[3] = v56;
    *(v23 + v19[7]) = 1;
    v58 = (v23 + v19[8]);
    *v58 = 0;
    v58[1] = 0;
    v39 = v73;
    sub_1E64D2DD0(v23, v48, v73);
    v40 = sub_1E65E4B98();
    v42 = v59;
    v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560) + 36);
    sub_1E64D54B4(v23, v48, v39 + v43);
    sub_1E61BF8AC(v23);
    (*(v63 + 8))(v34, v62);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727A8, &qword_1E65EBC28);
  v61 = (v39 + v43 + *(result + 36));
  *v61 = v40;
  v61[1] = v42;
  return result;
}

uint64_t sub_1E632D754@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E65E1458();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  return sub_1E6223910(v7, a2);
}

uint64_t sub_1E632D820@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v122 = a4;
  v109 = a3;
  v117 = a1;
  v127 = a5;
  v116 = sub_1E65E1518();
  v113 = *(v116 - 8);
  v115 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](v116);
  v110 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0736E8, &qword_1E65ED948);
  v125 = *(v8 - 8);
  v126 = v8;
  v9 = *(v125 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v119 = &v97 - v10;
  v11 = sub_1E65E1398();
  v123 = *(v11 - 8);
  v124 = v11;
  v12 = *(v123 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v134 = &v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AppComposer();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14 - 8);
  v106 = &v97 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v104 = &v97 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v103 = &v97 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v102 = &v97 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v97 - v26;
  v29 = v28;
  MEMORY[0x1EEE9AC00](v25);
  v31 = &v97 - v30;
  v32 = sub_1E65E1298();
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v105 = &v97 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_1E65E1208();
  v118 = *(v107 - 8);
  v35 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v107);
  v133 = &v97 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_1E65E1168();
  v112 = *(v111 - 8);
  v120 = *(v112 + 64);
  v37 = MEMORY[0x1EEE9AC00](v111);
  v121 = &v97 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x1EEE9AC00](v37);
  v114 = &v97 - v40;
  MEMORY[0x1EEE9AC00](v39);
  v132 = &v97 - v41;
  v42 = *MEMORY[0x1E699E768];
  (*(v43 + 104))();
  v44 = sub_1E642764C(MEMORY[0x1E69E7CC0]);
  v108 = *a2;
  v101 = v31;
  sub_1E5E1DEAC(a2, v31);
  sub_1E5DF650C(a3, &v137);
  v45 = *(v15 + 80);
  v46 = (v45 + 24) & ~v45;
  v100 = v29;
  v47 = swift_allocObject();
  *(v47 + 16) = v44;
  sub_1E5E1E2B8(v31, v47 + v46, type metadata accessor for AppComposer);
  sub_1E5DF599C(&v137, v47 + ((v29 + v46 + 7) & 0xFFFFFFFFFFFFFFF8));
  v48 = a2;
  sub_1E5E1DEAC(a2, v27);
  v49 = (v45 + 16) & ~v45;
  v98 = swift_allocObject();
  sub_1E5E1E2B8(v27, v98 + v49, type metadata accessor for AppComposer);
  v50 = v102;
  sub_1E5E1DEAC(v48, v102);
  v97 = swift_allocObject();
  sub_1E5E1E2B8(v50, v97 + v49, type metadata accessor for AppComposer);
  v51 = v103;
  sub_1E5E1DEAC(v48, v103);
  v102 = swift_allocObject();
  sub_1E5E1E2B8(v51, v102 + v49, type metadata accessor for AppComposer);
  v52 = v48;
  v53 = v48;
  v129 = v48;
  v54 = v104;
  sub_1E5E1DEAC(v52, v104);
  v99 = v49 + v29;
  v55 = swift_allocObject();
  v131 = v49;
  v128 = type metadata accessor for AppComposer;
  sub_1E5E1E2B8(v54, v55 + v49, type metadata accessor for AppComposer);
  v56 = v53;
  v57 = v106;
  sub_1E5E1DEAC(v56, v106);
  v130 = v45 | 7;
  v58 = swift_allocObject();
  sub_1E5E1E2B8(v57, v58 + v49, type metadata accessor for AppComposer);
  sub_1E65E1288();
  sub_1E65E11F8();
  sub_1E65E1388();
  v59 = v113;
  v60 = v110;
  v61 = v116;
  (*(v113 + 16))(v110, v117, v116);
  v62 = v129;
  v63 = v101;
  sub_1E5E1DEAC(v129, v101);
  v64 = v59;
  v65 = (*(v59 + 80) + 16) & ~*(v59 + 80);
  v66 = (v115 + v45 + v65) & ~v45;
  v67 = swift_allocObject();
  (*(v64 + 32))(v67 + v65, v60, v61);
  v68 = v63;
  v69 = v128;
  sub_1E5E1E2B8(v63, v67 + v66, v128);
  type metadata accessor for AppFeature();
  sub_1E632E814(&qword_1EE2DBD90, type metadata accessor for AppFeature);
  v117 = sub_1E632E814(&qword_1EE2D6530, MEMORY[0x1E699E7A0]);
  v70 = v119;
  v71 = v107;
  sub_1E65E4DE8();
  sub_1E5E1DEAC(v62, v68);
  v72 = *v122;
  v73 = v122[3];
  v74 = v122[5];
  v116 = v122[7];
  v75 = (v99 + 7) & 0xFFFFFFFFFFFFFFF8;
  v115 = v122[9];
  v76 = v122;
  v77 = swift_allocObject();
  sub_1E5E1E2B8(v68, v77 + v131, v69);
  v78 = (v77 + v75);
  v79 = v76[3];
  v78[2] = v76[2];
  v78[3] = v79;
  v78[4] = v76[4];
  v80 = v76[1];
  *v78 = *v76;
  v78[1] = v80;
  swift_unknownObjectRetain();

  v82 = v133;
  v81 = v134;
  v83 = sub_1E65E4F08();

  (*(v125 + 8))(v70, v126);
  (*(v123 + 8))(v81, v124);
  (*(v118 + 8))(v82, v71);
  v84 = v112;
  v85 = *(v112 + 16);
  v86 = v132;
  v87 = v111;
  v85(v114, v132, v111);
  sub_1E5E1DEAC(v129, v68);
  sub_1E5DF650C(v109, &v137);
  v88 = swift_allocObject();
  sub_1E5E1E2B8(v68, v88 + v131, v128);
  sub_1E5DF599C(&v137, v88 + v75);
  v89 = v121;
  v85(v121, v86, v87);
  v90 = v84;
  v91 = (*(v84 + 80) + 16) & ~*(v84 + 80);
  v92 = (v120 + v91 + 7) & 0xFFFFFFFFFFFFFFF8;
  v93 = swift_allocObject();
  (*(v90 + 32))(v93 + v91, v89, v87);
  *(v93 + v92) = v83;
  sub_1E65E3878();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073808, &qword_1E65EDA90);
  sub_1E632E814(&qword_1EE2D6048, MEMORY[0x1E699ED90]);
  v94 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073810, &qword_1E65EDA98);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v135 = v94;
  v136 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1E65E1488();
  return (*(v90 + 8))(v132, v87);
}

__n128 sub_1E632E544@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_1E65E4998();
  sub_1E65E4BA8();
  sub_1E65E3E38();
  *&v4[6] = v5;
  *&v4[22] = v6;
  *&v4[38] = v7;
  *&v4[54] = v8;
  *&v4[86] = v10;
  *&v4[102] = v11;
  *&v4[70] = v9;
  *a1 = v2;
  *(a1 + 8) = 256;
  *(a1 + 58) = *&v4[48];
  *(a1 + 42) = *&v4[32];
  *(a1 + 26) = *&v4[16];
  *(a1 + 10) = *v4;
  result = *&v4[64];
  *(a1 + 120) = *(&v11 + 1);
  *(a1 + 106) = *&v4[96];
  *(a1 + 90) = *&v4[80];
  *(a1 + 74) = *&v4[64];
  return result;
}

uint64_t sub_1E632E64C(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E632B870(a1, v1 + v5);
}

uint64_t sub_1E632E724(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E632BAC4(a1, v1 + v5);
}

uint64_t sub_1E632E814(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E632E85C(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t))
{
  v4 = *(sub_1E65E1518() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(type metadata accessor for AppComposer() - 8);
  v8 = v2 + ((v5 + v6 + *(v7 + 80)) & ~*(v7 + 80));

  return a2(a1, v2 + v5, v8);
}

unint64_t sub_1E632E960(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v3 = 0x6373627553746F6ELL;
    if (a1 == 3)
    {
      v3 = 0xD000000000000029;
    }

    if (a1 == 2)
    {
      v3 = 0xD000000000000024;
    }

    v4 = 0xD000000000000013;
    if (a1)
    {
      v4 = 0xD000000000000012;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v3;
    }
  }

  else if (a1 > 7u)
  {
    v5 = 0xD000000000000015;
    if (a1 != 9)
    {
      v5 = 0xD000000000000010;
    }

    if (a1 == 8)
    {
      return 0xD000000000000014;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0xD000000000000013;
    if (a1 != 6)
    {
      v1 = 0xD000000000000017;
    }

    if (a1 == 5)
    {
      return 0xD00000000000001ALL;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t getEnumTagSinglePayload for OnboardingDetourError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for OnboardingDetourError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1E632EC40()
{
  result = qword_1ED078478;
  if (!qword_1ED078478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078478);
  }

  return result;
}

uint64_t SearchItemContext.referenceIdentifier.getter()
{
  v1 = v0;
  v2 = sub_1E65DCCE8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E65DCF98();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SearchItemContext();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E63306B8(v1, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v6, v15, v2);
    v16 = sub_1E65DCCB8();
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    (*(v8 + 32))(v11, v15, v7);
    v16 = sub_1E65DCED8();
    (*(v8 + 8))(v11, v7);
  }

  return v16;
}

uint64_t SearchItemContext.referenceType.getter()
{
  v1 = v0;
  v2 = sub_1E65DCF98();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E65DCCE8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SearchItemContext();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E63306B8(v1, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v11, v15, v7);
    v16 = sub_1E65DCCA8();
    (*(v8 + 8))(v11, v7);
  }

  else
  {
    (*(v3 + 32))(v6, v15, v2);
    v16 = sub_1E65DCE68();
    (*(v3 + 8))(v6, v2);
  }

  return v16;
}

uint64_t sub_1E632F0FC()
{
  if (*v0)
  {
    result = 0x6C6F686563616C70;
  }

  else
  {
    result = 1701603700;
  }

  *v0;
  return result;
}

uint64_t sub_1E632F138@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701603700 && a2 == 0xE400000000000000;
  if (v5 || (sub_1E65E6C18() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C6F686563616C70 && a2 == 0xEB00000000726564)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E65E6C18();

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

uint64_t sub_1E632F218(uint64_t a1)
{
  v2 = sub_1E633071C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E632F254(uint64_t a1)
{
  v2 = sub_1E633071C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E632F290(uint64_t a1)
{
  v2 = sub_1E6330770();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E632F2CC(uint64_t a1)
{
  v2 = sub_1E6330770();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E632F318@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701603700 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E65E6C18();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E632F3A0(uint64_t a1)
{
  v2 = sub_1E63307C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E632F3DC(uint64_t a1)
{
  v2 = sub_1E63307C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SearchItemContext.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078480, &qword_1E65FCD50);
  v43 = *(v2 - 8);
  v44 = v2;
  v3 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v40 = &v34 - v4;
  v5 = sub_1E65DCCE8();
  v41 = *(v5 - 8);
  v42 = v5;
  v6 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078488, &qword_1E65FCD58);
  v37 = *(v8 - 8);
  v38 = v8;
  v9 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v34 - v10;
  v12 = sub_1E65DCF98();
  v35 = *(v12 - 8);
  v36 = v12;
  v13 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SearchItemContext();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078490, &qword_1E65FCD60);
  v46 = *(v20 - 8);
  v21 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v34 - v22;
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E633071C();
  sub_1E65E6DA8();
  sub_1E63306B8(v45, v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = v41;
    v25 = v42;
    v27 = v39;
    (*(v41 + 32))(v39, v19, v42);
    v48 = 1;
    sub_1E6330770();
    v28 = v40;
    sub_1E65E6B18();
    sub_1E6330860(&qword_1ED0784A8, MEMORY[0x1E699EED0]);
    v29 = v44;
    sub_1E65E6B78();
    (*(v43 + 8))(v28, v29);
    (*(v26 + 8))(v27, v25);
  }

  else
  {
    v31 = v35;
    v30 = v36;
    (*(v35 + 32))(v15, v19, v36);
    v47 = 0;
    sub_1E63307C4();
    sub_1E65E6B18();
    sub_1E6330860(&qword_1ED0784B8, MEMORY[0x1E699EF00]);
    v32 = v38;
    sub_1E65E6B78();
    (*(v37 + 8))(v11, v32);
    (*(v31 + 8))(v15, v30);
  }

  return (*(v46 + 8))(v23, v20);
}

uint64_t SearchItemContext.hash(into:)()
{
  v1 = sub_1E65DCCE8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E65DCF98();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SearchItemContext();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E63306B8(v0, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v2 + 32))(v5, v14, v1);
    MEMORY[0x1E694E740](1);
    sub_1E6330860(&qword_1ED0784C0, MEMORY[0x1E699EED0]);
    sub_1E65E5B48();
    return (*(v2 + 8))(v5, v1);
  }

  else
  {
    (*(v7 + 32))(v10, v14, v6);
    MEMORY[0x1E694E740](0);
    sub_1E6330860(&qword_1ED0784C8, MEMORY[0x1E699EF00]);
    sub_1E65E5B48();
    return (*(v7 + 8))(v10, v6);
  }
}

uint64_t SearchItemContext.hashValue.getter()
{
  sub_1E65E6D28();
  SearchItemContext.hash(into:)();
  return sub_1E65E6D78();
}

uint64_t SearchItemContext.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0784D0, &qword_1E65FCD68);
  v53 = *(v50 - 8);
  v3 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v56 = &v45 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0784D8, &qword_1E65FCD70);
  v51 = *(v5 - 8);
  v52 = v5;
  v6 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v55 = &v45 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0784E0, &unk_1E65FCD78);
  v54 = *(v8 - 8);
  v9 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v45 - v10;
  v12 = type metadata accessor for SearchItemContext();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v45 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v45 - v20;
  v22 = a1[3];
  v23 = a1[4];
  v58 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_1E633071C();
  v24 = v57;
  sub_1E65E6D98();
  if (!v24)
  {
    v46 = v16;
    v47 = v19;
    v26 = v55;
    v25 = v56;
    v48 = 0;
    v45 = v21;
    v57 = v12;
    v27 = v54;
    v28 = sub_1E65E6AF8();
    v29 = (2 * *(v28 + 16)) | 1;
    v59 = v28;
    v60 = v28 + 32;
    v61 = 0;
    v62 = v29;
    v30 = sub_1E5FBE3F0();
    v31 = v8;
    v32 = v11;
    if (v30 == 2 || v61 != v62 >> 1)
    {
      v37 = sub_1E65E68F8();
      swift_allocError();
      v39 = v38;
      v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071BA8, &qword_1E65E8C80) + 48);
      *v39 = v57;
      sub_1E65E6A78();
      sub_1E65E68E8();
      (*(*(v37 - 8) + 104))(v39, *MEMORY[0x1E69E6AF8], v37);
      swift_willThrow();
    }

    else if (v30)
    {
      v63 = 1;
      sub_1E6330770();
      v33 = v25;
      v34 = v48;
      sub_1E65E6A68();
      if (!v34)
      {
        sub_1E65DCCE8();
        sub_1E6330860(&qword_1ED0784E8, MEMORY[0x1E699EED0]);
        v35 = v46;
        v36 = v50;
        sub_1E65E6AD8();
        (*(v53 + 8))(v33, v36);
        (*(v27 + 8))(v32, v31);
        swift_unknownObjectRelease();
LABEL_12:
        swift_storeEnumTagMultiPayload();
        v44 = v45;
        sub_1E628C4E4(v35, v45);
        sub_1E628C4E4(v44, v49);
        return __swift_destroy_boxed_opaque_existential_1(v58);
      }
    }

    else
    {
      v63 = 0;
      sub_1E63307C4();
      v42 = v48;
      sub_1E65E6A68();
      if (!v42)
      {
        sub_1E65DCF98();
        sub_1E6330860(&qword_1ED0784F0, MEMORY[0x1E699EF00]);
        v35 = v47;
        v43 = v52;
        sub_1E65E6AD8();
        (*(v51 + 8))(v26, v43);
        (*(v27 + 8))(v11, v8);
        swift_unknownObjectRelease();
        goto LABEL_12;
      }
    }

    (*(v27 + 8))(v32, v31);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v58);
}

uint64_t sub_1E63302C4()
{
  sub_1E65E6D28();
  SearchItemContext.hash(into:)();
  return sub_1E65E6D78();
}

uint64_t sub_1E6330308()
{
  sub_1E65E6D28();
  SearchItemContext.hash(into:)();
  return sub_1E65E6D78();
}

uint64_t _s10Blackbeard17SearchItemContextO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v31 = a1;
  v32 = a2;
  v30 = sub_1E65DCCE8();
  v2 = *(v30 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E65DCF98();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SearchItemContext();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v29 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078548, &qword_1E65FD1C0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v22 = &v29 - v21;
  v23 = *(v20 + 56);
  sub_1E63306B8(v31, &v29 - v21);
  sub_1E63306B8(v32, &v22[v23]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E63306B8(v22, v15);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v24 = v30;
      (*(v2 + 32))(v5, &v22[v23], v30);
      v25 = MEMORY[0x1E69446D0](v15, v5);
      v26 = *(v2 + 8);
      v26(v5, v24);
      v26(v15, v24);
LABEL_9:
      sub_1E6330C58(v22);
      return v25 & 1;
    }

    (*(v2 + 8))(v15, v30);
  }

  else
  {
    sub_1E63306B8(v22, v17);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v7 + 32))(v10, &v22[v23], v6);
      v25 = MEMORY[0x1E6944940](v17, v10);
      v27 = *(v7 + 8);
      v27(v10, v6);
      v27(v17, v6);
      goto LABEL_9;
    }

    (*(v7 + 8))(v17, v6);
  }

  sub_1E6330BF0(v22);
  v25 = 0;
  return v25 & 1;
}

uint64_t sub_1E63306B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchItemContext();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E633071C()
{
  result = qword_1ED078498;
  if (!qword_1ED078498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078498);
  }

  return result;
}

unint64_t sub_1E6330770()
{
  result = qword_1ED0784A0;
  if (!qword_1ED0784A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0784A0);
  }

  return result;
}

unint64_t sub_1E63307C4()
{
  result = qword_1ED0784B0;
  if (!qword_1ED0784B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0784B0);
  }

  return result;
}

uint64_t sub_1E6330860(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E63308DC()
{
  result = qword_1ED078500;
  if (!qword_1ED078500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078500);
  }

  return result;
}

unint64_t sub_1E6330934()
{
  result = qword_1ED078508;
  if (!qword_1ED078508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078508);
  }

  return result;
}

unint64_t sub_1E633098C()
{
  result = qword_1ED078510;
  if (!qword_1ED078510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078510);
  }

  return result;
}

unint64_t sub_1E63309E4()
{
  result = qword_1ED078518;
  if (!qword_1ED078518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078518);
  }

  return result;
}

unint64_t sub_1E6330A3C()
{
  result = qword_1ED078520;
  if (!qword_1ED078520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078520);
  }

  return result;
}

unint64_t sub_1E6330A94()
{
  result = qword_1ED078528;
  if (!qword_1ED078528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078528);
  }

  return result;
}

unint64_t sub_1E6330AEC()
{
  result = qword_1ED078530;
  if (!qword_1ED078530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078530);
  }

  return result;
}

unint64_t sub_1E6330B44()
{
  result = qword_1ED078538;
  if (!qword_1ED078538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078538);
  }

  return result;
}

unint64_t sub_1E6330B9C()
{
  result = qword_1ED078540;
  if (!qword_1ED078540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078540);
  }

  return result;
}

uint64_t sub_1E6330BF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078548, &qword_1E65FD1C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E6330C58(uint64_t a1)
{
  v2 = type metadata accessor for SearchItemContext();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AppComposer.onboardingModalityPickerViewBuilder(currentRoutingContext:onDismissed:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077730, &unk_1E65EA310);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071EF8, &unk_1E65FA470);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v33 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078550, &qword_1E65FD1C8);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v33 - v19;
  sub_1E64DB20C(&v33);
  sub_1E6331084(v4, a1, &v33, a2, a3, v20);
  v21 = sub_1E65E4FD8();
  (*(*(v21 - 8) + 56))(v16, 1, 1, v21);
  if (qword_1EE2D49E0 != -1)
  {
    swift_once();
  }

  v22 = sub_1E65E5018();
  __swift_project_value_buffer(v22, qword_1EE2D49E8);
  v23 = sub_1E65E2E78();
  (*(*(v23 - 8) + 56))(v12, 1, 1, v23);
  sub_1E633284C(&qword_1ED078558, &qword_1ED078550, &qword_1E65FD1C8, sub_1E6331A3C);
  sub_1E65E4728();
  sub_1E5DFE50C(v12, &unk_1ED077730, &unk_1E65EA310);
  sub_1E5DFE50C(v16, &qword_1ED071EF8, &unk_1E65FA470);
  sub_1E5DFE50C(v20, &qword_1ED078550, &qword_1E65FD1C8);
  v24 = swift_allocObject();
  v25 = v36;
  v24[3] = v35;
  v24[4] = v25;
  v24[5] = v37;
  v26 = v34;
  v24[1] = v33;
  v24[2] = v26;
  v27 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0785A0, &qword_1E65FD1E0) + 36));
  *v27 = 0;
  v27[1] = 0;
  v27[2] = sub_1E5F99E38;
  v27[3] = v24;
  v28 = swift_allocObject();
  v29 = v36;
  *(v28 + 3) = v35;
  *(v28 + 4) = v29;
  *(v28 + 5) = v37;
  v30 = v34;
  *(v28 + 1) = v33;
  *(v28 + 2) = v30;
  v31 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0785A8, &unk_1E65FD7A0) + 36));
  *v31 = sub_1E6332608;
  v31[1] = v28;
  v31[2] = 0;
  v31[3] = 0;
  swift_unknownObjectRetain();
}

uint64_t sub_1E6331084@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v77 = a4;
  v78 = a5;
  v75 = a2;
  v87 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078598, &unk_1E65FD7C0);
  v73 = *(v8 - 8);
  v9 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v66 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0785C0, &qword_1E65FD1F8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v66 - v14;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0785C8, &qword_1E65FD200);
  v16 = *(*(v79 - 8) + 64);
  MEMORY[0x1EEE9AC00](v79);
  v81 = &v66 - v17;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078578, &unk_1E65FD7B0);
  v18 = *(*(v82 - 8) + 64);
  MEMORY[0x1EEE9AC00](v82);
  v83 = &v66 - v19;
  v20 = type metadata accessor for AppComposer();
  v21 = v20 - 8;
  v22 = *(v20 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v20);
  v76 = &v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v66 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078588, &qword_1E65FD1D8);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v32 = &v66 - v31;
  v33 = *(a1 + *(v21 + 28) + 8);
  v85 = v15;
  v86 = v8;
  v84 = v12;
  v80 = v29;
  v74 = a1;
  if (v33 >= 2)
  {
    v50 = v75;
    v72 = v11;
    if (v33 == 3)
    {
      v67 = type metadata accessor for AppComposer;
      sub_1E5E1D5BC(a1, v26, type metadata accessor for AppComposer);
      sub_1E5DF650C(v50, v88);
      v68 = *a3;
      v69 = a3[3];
      v70 = a3[5];
      v71 = a3[7];
      v75 = a3[9];
      v51 = (*(v22 + 80) + 16) & ~*(v22 + 80);
      v52 = (v51 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
      v53 = (v52 + 47) & 0xFFFFFFFFFFFFFFF8;
      v54 = swift_allocObject();
      sub_1E5E1E2B8(v26, v54 + v51, type metadata accessor for AppComposer);
      sub_1E5DF599C(v88, v54 + v52);
      v55 = (v54 + v53);
      v56 = *(a3 + 3);
      v55[2] = *(a3 + 2);
      v55[3] = v56;
      v55[4] = *(a3 + 4);
      v57 = *(a3 + 1);
      *v55 = *a3;
      v55[1] = v57;
      v58 = (v54 + ((v53 + 87) & 0xFFFFFFFFFFFFFFF8));
      v59 = v78;
      *v58 = v77;
      v58[1] = v59;
      v60 = v76;
      sub_1E5E1D5BC(v74, v76, v67);
      v61 = swift_allocObject();
      sub_1E5E1E2B8(v60, v61 + v51, type metadata accessor for AppComposer);

      swift_unknownObjectRetain();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560);
      sub_1E5FEB2FC();
      v62 = v72;
      sub_1E65E1BD8();
      v63 = v73;
      v64 = v86;
      (*(v73 + 16))(v81, v62, v86);
      swift_storeEnumTagMultiPayload();
      sub_1E5FED46C(&qword_1ED078580, &qword_1ED078588, &qword_1E65FD1D8);
      sub_1E5FED46C(&qword_1ED078590, &qword_1ED078598, &unk_1E65FD7C0);
      v65 = v83;
      sub_1E65E4138();
      sub_1E5F06030(v65, v85);
      swift_storeEnumTagMultiPayload();
      sub_1E6331AC8();
      sub_1E65E4138();
      sub_1E5DFE50C(v65, &qword_1ED078578, &unk_1E65FD7B0);
      return (*(v63 + 8))(v62, v64);
    }

    else
    {
      result = sub_1E65E69D8();
      __break(1u);
    }
  }

  else
  {
    v67 = type metadata accessor for AppComposer;
    v72 = v32;
    v73 = v30;
    sub_1E5E1D5BC(a1, v26, type metadata accessor for AppComposer);
    sub_1E5DF650C(v75, v88);
    v68 = *a3;
    v69 = a3[3];
    v70 = a3[5];
    v71 = a3[7];
    v75 = a3[9];
    v34 = (*(v22 + 80) + 16) & ~*(v22 + 80);
    v35 = (v34 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
    v36 = (v35 + 47) & 0xFFFFFFFFFFFFFFF8;
    v37 = swift_allocObject();
    sub_1E5E1E2B8(v26, v37 + v34, type metadata accessor for AppComposer);
    sub_1E5DF599C(v88, v37 + v35);
    v38 = (v37 + v36);
    v39 = *(a3 + 3);
    v38[2] = *(a3 + 2);
    v38[3] = v39;
    v38[4] = *(a3 + 4);
    v40 = *(a3 + 1);
    *v38 = *a3;
    v38[1] = v40;
    v41 = (v37 + ((v36 + 87) & 0xFFFFFFFFFFFFFFF8));
    v42 = v78;
    *v41 = v77;
    v41[1] = v42;
    v43 = v76;
    sub_1E5E1D5BC(v74, v76, v67);
    v44 = swift_allocObject();
    sub_1E5E1E2B8(v43, v44 + v34, type metadata accessor for AppComposer);
    swift_unknownObjectRetain();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560);
    sub_1E5FEB2FC();
    v45 = v72;
    sub_1E65E1938();
    v46 = v73;
    v47 = v80;
    (*(v73 + 16))(v81, v45, v80);
    swift_storeEnumTagMultiPayload();
    sub_1E5FED46C(&qword_1ED078580, &qword_1ED078588, &qword_1E65FD1D8);
    sub_1E5FED46C(&qword_1ED078590, &qword_1ED078598, &unk_1E65FD7C0);
    v48 = v83;
    sub_1E65E4138();
    sub_1E5F06030(v48, v85);
    swift_storeEnumTagMultiPayload();
    sub_1E6331AC8();
    sub_1E65E4138();
    sub_1E5DFE50C(v48, &qword_1ED078578, &unk_1E65FD7B0);
    return (*(v46 + 8))(v45, v47);
  }

  return result;
}

unint64_t sub_1E6331A3C()
{
  result = qword_1ED078560;
  if (!qword_1ED078560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED078568, &qword_1E65FD1D0);
    sub_1E6331AC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078560);
  }

  return result;
}

unint64_t sub_1E6331AC8()
{
  result = qword_1ED078570;
  if (!qword_1ED078570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED078578, &unk_1E65FD7B0);
    sub_1E5FED46C(&qword_1ED078580, &qword_1ED078588, &qword_1E65FD1D8);
    sub_1E5FED46C(&qword_1ED078590, &qword_1ED078598, &unk_1E65FD7C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078570);
  }

  return result;
}

uint64_t sub_1E6331BAC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0785D0, &qword_1E65FD208);
  v53 = *(v8 - 8);
  v54 = v8;
  v9 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v59 = &v45 - v10;
  v60 = sub_1E65E1A28();
  v52 = *(v60 - 8);
  v11 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v58 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AppComposer();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1E65E1A68();
  v56 = *(v17 - 8);
  v57 = v17;
  v18 = *(v56 + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v55 = &v45 - v22;
  v23 = swift_allocObject();
  *(v23 + 16) = a3;
  *(v23 + 24) = a4;
  sub_1E5DF650C(a1, v61);
  v24 = swift_allocObject();
  sub_1E5DF599C(v61, v24 + 16);
  v49 = type metadata accessor for AppComposer;
  v25 = v50;
  sub_1E5E1D5BC(v50, v16, type metadata accessor for AppComposer);
  v26 = *(v14 + 80);
  v46 = ((v26 + 16) & ~v26) + v15;
  v48 = (v26 + 16) & ~v26;
  v27 = swift_allocObject();
  v47 = type metadata accessor for AppComposer;
  sub_1E5E1E2B8(v16, v27 + ((v26 + 16) & ~v26), type metadata accessor for AppComposer);

  v28 = v55;
  sub_1E65E1A58();
  v51 = *v25;
  (*(v56 + 16))(v21, v28, v57);
  sub_1E65E1A18();
  type metadata accessor for AppFeature();
  sub_1E6334C40(&qword_1EE2DBD90, type metadata accessor for AppFeature);
  v45 = sub_1E6334C40(&qword_1ED0785D8, MEMORY[0x1E699E9D8]);
  sub_1E65E4DE8();
  sub_1E5E1D5BC(v25, v16, v49);
  v29 = *a2;
  v30 = a2[3];
  v31 = a2[5];
  v32 = a2[7];
  v33 = (v46 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = a2[9];
  v35 = swift_allocObject();
  sub_1E5E1E2B8(v16, v35 + v48, v47);
  v36 = (v35 + v33);
  v37 = *(a2 + 3);
  v36[2] = *(a2 + 2);
  v36[3] = v37;
  v36[4] = *(a2 + 4);
  v38 = *(a2 + 1);
  *v36 = *a2;
  v36[1] = v38;
  swift_unknownObjectRetain();

  sub_1E65E4CC8();
  v39 = swift_allocObject();
  *(v39 + 16) = sub_1E6334C88;
  *(v39 + 24) = v35;

  v41 = v58;
  v40 = v59;
  v42 = v60;
  v43 = sub_1E65E4F08();

  (*(v53 + 8))(v40, v54);
  (*(v52 + 8))(v41, v42);
  (*(v56 + 8))(v55, v57);
  return v43;
}

uint64_t sub_1E633218C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v37 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = type metadata accessor for ArtworkContent();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ArtworkDescriptor();
  v14 = (v13 - 8);
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = (&v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075DC8, &qword_1E65F3948) + 48);
  sub_1E65E1B48();
  sub_1E65E1B38();
  sub_1E65DB248();
  sub_1E62E2700(a1, &v12[v18]);
  swift_storeEnumTagMultiPayload();
  v19 = *(a2 + *(type metadata accessor for AppComposer() + 20) + 8);
  v20 = sub_1E65DAE38();
  v21 = sub_1E65DAE38();
  v22 = sub_1E65E4B48();
  v23 = 4.0;
  if (v22)
  {
    v23 = 8.0;
  }

  v24 = 16.0;
  if (v22)
  {
    v24 = 18.0;
  }

  if (v20 == v21)
  {
    v25 = v24;
  }

  else
  {
    v25 = v23;
  }

  if (v20 == v21)
  {
    v26 = 12.0;
  }

  else
  {
    v26 = 8.0;
  }

  sub_1E5E1E2B8(v12, v17, type metadata accessor for ArtworkContent);
  *(v17 + v14[7]) = MEMORY[0x1E69E7CD0];
  v27 = (v17 + v14[8]);
  *v27 = 0.0;
  v27[1] = v25;
  v27[2] = v25;
  v27[3] = v26;
  *(v17 + v14[9]) = 1;
  v28 = (v17 + v14[10]);
  *v28 = 0;
  v28[1] = 0;
  v29 = v37;
  sub_1E64D2DD0(v17, a2, v37);
  v30 = sub_1E65E4B98();
  v32 = v31;
  v33 = v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560) + 36);
  sub_1E64D54B4(v17, a2, v33);
  sub_1E6335008(v17, type metadata accessor for ArtworkDescriptor);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727A8, &qword_1E65EBC28);
  v35 = (v33 + *(result + 36));
  *v35 = v30;
  v35[1] = v32;
  return result;
}

uint64_t sub_1E63324A4(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v16 - v4;
  v6 = sub_1E65E60A8();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = *a1;
  v8 = a1[3];
  v9 = a1[5];
  v10 = a1[7];
  v11 = a1[9];
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  v13 = *(a1 + 3);
  *(v12 + 64) = *(a1 + 2);
  *(v12 + 80) = v13;
  *(v12 + 96) = *(a1 + 4);
  v14 = *(a1 + 1);
  *(v12 + 32) = *a1;
  *(v12 + 48) = v14;
  swift_unknownObjectRetain();

  sub_1E6059EAC(0, 0, v5, &unk_1E65FD1F0, v12);
}

unint64_t sub_1E6332610()
{
  result = qword_1ED0785B0;
  if (!qword_1ED0785B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0785A8, &unk_1E65FD7A0);
    sub_1E633269C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0785B0);
  }

  return result;
}

unint64_t sub_1E633269C()
{
  result = qword_1ED0785B8;
  if (!qword_1ED0785B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0785A0, &qword_1E65FD1E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED078550, &qword_1E65FD1C8);
    sub_1E633284C(&qword_1ED078558, &qword_1ED078550, &qword_1E65FD1C8, sub_1E6331A3C);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0785B8);
  }

  return result;
}

uint64_t sub_1E6332798(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E62E234C(a1, v4, v5, v1 + 32);
}

uint64_t sub_1E633284C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_13Tm_0()
{
  v123 = type metadata accessor for AppComposer();
  v121 = *(*(v123 - 1) + 80);
  v119 = *(*(v123 - 1) + 64);
  v120 = (v121 + 16) & ~v121;
  v122 = v0;
  v116 = v0 + v120;
  v1 = *(v0 + v120);

  v2 = (v0 + v120 + v123[5]);
  v3 = *v2;
  swift_unknownObjectRelease();
  v4 = type metadata accessor for AppEnvironment();
  v5 = v4[6];
  v118 = type metadata accessor for AccountService();
  v117 = *(v118[-1].Description + 1);
  v117(&v2[v5], v118);
  v6 = v4[7];
  v115 = type metadata accessor for AppStateService();
  v114 = *(v115[-1].Description + 1);
  v114(&v2[v6], v115);
  v7 = v4[8];
  v113 = type metadata accessor for ArchivedSessionService();
  v112 = *(v113[-1].Description + 1);
  v112(&v2[v7], v113);
  v8 = v4[9];
  v111 = type metadata accessor for AssetService();
  v110 = *(v111[-1].Description + 1);
  v110(&v2[v8], v111);
  v9 = v4[10];
  v109 = type metadata accessor for AwardsService();
  v108 = *(v109[-1].Description + 1);
  v108(&v2[v9], v109);
  v10 = v4[11];
  v107 = type metadata accessor for BookmarkService();
  v106 = *(v107[-1].Description + 1);
  v106(&v2[v10], v107);
  v11 = v4[12];
  v105 = type metadata accessor for CatalogService();
  v104 = *(v105[-1].Description + 1);
  v104(&v2[v11], v105);
  v12 = v4[13];
  v103 = type metadata accessor for ConfigurationService();
  v102 = *(v103[-1].Description + 1);
  v102(&v2[v12], v103);
  v13 = v4[14];
  v101 = type metadata accessor for ContentAvailabilityService();
  v100 = *(v101[-1].Description + 1);
  v100(&v2[v13], v101);
  v14 = v4[15];
  v99 = type metadata accessor for EngagementService();
  v98 = *(v99[-1].Description + 1);
  v98(&v2[v14], v99);
  v15 = v4[16];
  v97 = type metadata accessor for HealthDataService();
  v96 = *(v97[-1].Description + 1);
  v96(&v2[v15], v97);
  v16 = v4[17];
  v95 = type metadata accessor for InteropService();
  v94 = *(v95[-1].Description + 1);
  v94(&v2[v16], v95);
  v17 = v4[18];
  v93 = type metadata accessor for LocalizationService();
  v92 = *(v93[-1].Description + 1);
  v92(&v2[v17], v93);
  v18 = v4[19];
  v91 = type metadata accessor for MarketingService();
  v90 = *(v91[-1].Description + 1);
  v90(&v2[v18], v91);
  v19 = v4[20];
  v89 = type metadata accessor for MetricService();
  v88 = *(v89[-1].Description + 1);
  v88(&v2[v19], v89);
  v20 = v4[21];
  v87 = type metadata accessor for PersonalizationService();
  v86 = *(v87[-1].Description + 1);
  v86(&v2[v20], v87);
  v21 = v4[22];
  v85 = type metadata accessor for PlayerService();
  v84 = *(v85[-1].Description + 1);
  v84(&v2[v21], v85);
  v22 = v4[23];
  v83 = type metadata accessor for PrivacyPreferenceService();
  v82 = *(v83[-1].Description + 1);
  v82(&v2[v22], v83);
  v23 = v4[24];
  v81 = type metadata accessor for RecommendationService();
  v80 = *(v81[-1].Description + 1);
  v80(&v2[v23], v81);
  v24 = v4[25];
  v79 = type metadata accessor for RemoteBrowsingService();
  v78 = *(v79[-1].Description + 1);
  v78(&v2[v24], v79);
  v25 = v4[26];
  v77 = type metadata accessor for SearchService();
  v76 = *(v77[-1].Description + 1);
  v76(&v2[v25], v77);
  v26 = v4[27];
  v75 = type metadata accessor for ServiceSubscriptionService();
  v74 = *(v75[-1].Description + 1);
  v74(&v2[v26], v75);
  v27 = v4[28];
  v68 = type metadata accessor for SessionService();
  v73 = *(v68[-1].Description + 1);
  v73(&v2[v27], v68);
  v28 = v4[29];
  v29 = type metadata accessor for SharePlayService();
  v72 = *(v29[-1].Description + 1);
  v72(&v2[v28], v29);
  v30 = v4[30];
  v31 = type metadata accessor for SiriService();
  v71 = *(v31[-1].Description + 1);
  v71(&v2[v30], v31);
  v32 = v4[31];
  v33 = type metadata accessor for SyncService();
  v70 = *(v33[-1].Description + 1);
  v70(&v2[v32], v33);
  v34 = &v2[v4[32]];
  v35 = *(v34 + 1);

  v36 = *(v34 + 3);

  v37 = *(v34 + 5);

  v38 = v4[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v69 = *(QueueService[-1].Description + 1);
  v69(&v2[v38], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v2[v4[34]]);
  v40 = *&v2[v4[35]];

  v41 = v4[36];
  v42 = type metadata accessor for WorkoutPlanService();
  v67 = *(v42[-1].Description + 1);
  v67(&v2[v41], v42);
  v43 = *(v116 + v123[6]);

  v44 = (v116 + v123[7]);
  v45 = *v44;

  v46 = v44[1];

  v47 = v44 + *(type metadata accessor for AppDataItemResolver() + 24);
  v48 = *v47;
  swift_unknownObjectRelease();
  v117(&v47[v4[6]], v118);
  v114(&v47[v4[7]], v115);
  v112(&v47[v4[8]], v113);
  v110(&v47[v4[9]], v111);
  v108(&v47[v4[10]], v109);
  v106(&v47[v4[11]], v107);
  v104(&v47[v4[12]], v105);
  v102(&v47[v4[13]], v103);
  v100(&v47[v4[14]], v101);
  v98(&v47[v4[15]], v99);
  v96(&v47[v4[16]], v97);
  v94(&v47[v4[17]], v95);
  v92(&v47[v4[18]], v93);
  v90(&v47[v4[19]], v91);
  v88(&v47[v4[20]], v89);
  v86(&v47[v4[21]], v87);
  v84(&v47[v4[22]], v85);
  v82(&v47[v4[23]], v83);
  v80(&v47[v4[24]], v81);
  v78(&v47[v4[25]], v79);
  v76(&v47[v4[26]], v77);
  v74(&v47[v4[27]], v75);
  v73(&v47[v4[28]], v68);
  v72(&v47[v4[29]], v29);
  v71(&v47[v4[30]], v31);
  v70(&v47[v4[31]], v33);
  v49 = &v47[v4[32]];
  v50 = *(v49 + 1);

  v51 = *(v49 + 3);

  v52 = *(v49 + 5);

  v69(&v47[v4[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v47[v4[34]]);
  v53 = *&v47[v4[35]];

  v67(&v47[v4[36]], v42);
  v54 = *(v116 + v123[8]);
  swift_unknownObjectRelease();
  if (*(v116 + v123[9] + 8) >= 0xCuLL)
  {
  }

  v55 = (v116 + v123[10]);
  if (v55[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v55);
  }

  v56 = (v119 + v120 + 7) & 0xFFFFFFFFFFFFFFF8;
  v57 = (v56 + 47) & 0xFFFFFFFFFFFFFFF8;
  v58 = (v57 + 87) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1((v122 + v56));
  v59 = (v122 + v57);
  v60 = *v59;
  swift_unknownObjectRelease();
  v61 = v59[3];

  v62 = v59[5];

  v63 = v59[7];

  v64 = v59[9];

  v65 = *(v122 + v58 + 8);

  return swift_deallocObject();
}

uint64_t sub_1E63335F0()
{
  v1 = *(type metadata accessor for AppComposer() - 8);
  v2 = (*(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1E6331BAC(v0 + v2, (v0 + ((v2 + 47) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v2 + 47) & 0xFFFFFFFFFFFFFFF8) + 87) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v2 + 47) & 0xFFFFFFFFFFFFFFF8) + 87) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1E6333714(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  v4 = type metadata accessor for RouteSource(0);
  v3[9] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63337AC, 0, 0);
}

uint64_t sub_1E63337AC()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  v5 = *(v0 + 48);
  v7 = v3[3];
  v6 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072128, &qword_1E65EA828);
  v8 = (type metadata accessor for RouteDestination() - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  *(v0 + 88) = v11;
  *(v11 + 16) = xmmword_1E65EA670;
  v12 = (v11 + v10);
  swift_storeEnumTagMultiPayload();
  *v12 = v5;
  v12[1] = v4;
  type metadata accessor for RouteResource();
  swift_storeEnumTagMultiPayload();
  sub_1E5E1D5BC(v1, v12 + v8[7], type metadata accessor for RouteSource);
  *(v12 + v8[8]) = MEMORY[0x1E69E7CD0];

  sub_1E6335008(v1, type metadata accessor for RouteSource);
  sub_1E611D1C0(v0 + 16);
  v13 = *(v0 + 24);
  *(v0 + 32) = *(v0 + 16);
  *(v0 + 40) = v13;
  sub_1E600F5B0((v0 + 25));
  v14 = swift_task_alloc();
  *(v0 + 96) = v14;
  *v14 = v0;
  v14[1] = sub_1E63339E0;

  return RoutingContext.presentDestinations(_:style:priority:)(v11, (v0 + 32), (v0 + 25), v7, v6);
}

uint64_t sub_1E63339E0()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *v1;
  *(v4 + 104) = v0;

  sub_1E5F94E00(*(v4 + 32), *(v4 + 40));

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E6333B54, 0, 0);
  }

  else
  {
    v5 = *(v4 + 80);

    v6 = *(v4 + 8);

    return v6();
  }
}

uint64_t sub_1E6333B54()
{
  v1 = v0[10];

  v2 = v0[1];
  v3 = v0[13];

  return v2();
}

uint64_t sub_1E6333BB8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(sub_1E65D76A8() - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = sub_1E65D76F8();
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();
  v7 = sub_1E65D9958();
  v2[8] = v7;
  v8 = *(v7 - 8);
  v2[9] = v8;
  v9 = *(v8 + 64) + 15;
  v2[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6333D00, 0, 0);
}

uint64_t sub_1E6333D00()
{
  v1 = v0[10];
  v3 = v0[6];
  v2 = v0[7];
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[2];
  v7 = v0[3];
  sub_1E65D76E8();
  sub_1E65D76C8();
  (*(v3 + 8))(v2, v4);
  sub_1E65D7698();

  sub_1E65D9938();
  v8 = v7 + *(type metadata accessor for AppComposer() + 20);
  v9 = v8 + *(type metadata accessor for AppEnvironment() + 96);
  v10 = RecommendationService.updateOnboardingSurveyResult.getter();
  v0[11] = v11;
  v16 = (v10 + *v10);
  v12 = v10[1];
  v13 = swift_task_alloc();
  v0[12] = v13;
  *v13 = v0;
  v13[1] = sub_1E6333E9C;
  v14 = v0[10];

  return v16(v14);
}

uint64_t sub_1E6333E9C()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v6 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_1E6334068;
  }

  else
  {
    v4 = sub_1E6333FCC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E6333FCC()
{
  v1 = v0[7];
  v2 = v0[4];
  (*(v0[9] + 8))(v0[10], v0[8]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E6334068()
{
  v1 = v0[7];
  v2 = v0[4];
  (*(v0[9] + 8))(v0[10], v0[8]);

  v3 = v0[1];
  v4 = v0[13];

  return v3();
}

uint64_t sub_1E6334104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = sub_1E65E19E8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v36 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074FF0, &qword_1E65F1180);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v35[1] = v35 - v8;
  v35[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073568, &qword_1E65FD8A0);
  v9 = *(v35[0] - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v35[0]);
  v12 = v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = v35 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = v35 - v19;
  v21 = sub_1E65D7848();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = v35 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for AppState();
  v27 = v26[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  sub_1E65E4C98();
  sub_1E5E1F544(v20);
  sub_1E5DFE50C(v16, &qword_1ED071F78, &unk_1E65EA3F0);
  v28 = *(v22 + 48);
  if (v28(v20, 1, v21) == 1)
  {
    sub_1E65D77C8();
    if (v28(v20, 1, v21) != 1)
    {
      sub_1E5DFE50C(v20, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    (*(v22 + 32))(v25, v20, v21);
  }

  v29 = a1 + v26[55];
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073560, &qword_1E65ED560);
  (*(v9 + 16))(v12, v29 + *(v30 + 28), v35[0]);
  v31 = a1 + v26[54];
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074CF0, &qword_1E65F10D8) + 28);
  sub_1E65E1AC8();
  sub_1E65E1A98();
  sub_1E65E1AE8();
  v33 = a1 + v26[6];
  sub_1E642AC60(v36);
  return sub_1E65E1978();
}

uint64_t sub_1E633450C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074FF0, &qword_1E65F1180);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1E65E1958();
  v4 = a1 + *(type metadata accessor for AppState() + 216);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074CF0, &qword_1E65F10D8) + 28);
  sub_1E65E1AD8();
  sub_1E65E1968();
  sub_1E65E1AA8();
  sub_1E65E1988();
  return sub_1E65E1AF8();
}

uint64_t sub_1E63345FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v53 = a3;
  v49 = a1;
  v6 = type metadata accessor for AppComposer();
  v45 = *(v6 - 8);
  v7 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = sub_1E65E19C8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v34 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v33 - v13;
  v46 = &v33 - v13;
  v51 = sub_1E65E60A8();
  v15 = *(v51 - 8);
  v50 = *(v15 + 56);
  v52 = v15 + 56;
  v50(v14, 1, 1, v51);
  v48 = *(v9 + 16);
  v40 = v8;
  v48(&v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v47 = type metadata accessor for AppComposer;
  v37 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5E1D5BC(v53, v37, type metadata accessor for AppComposer);
  v16 = a4[3];
  v35 = *a4;
  v36 = v16;
  v17 = a4[7];
  v38 = a4[5];
  v39 = v17;
  v41 = a4[9];
  v18 = *(v9 + 80);
  v19 = (v18 + 32) & ~v18;
  v20 = *(v45 + 80);
  v21 = (v10 + v20 + v19) & ~v20;
  v45 = v21 + v7;
  v43 = v19;
  v44 = v18 | v20;
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  v42 = *(v9 + 32);
  v23 = v22 + v19;
  v24 = v34;
  v42(v23, v34, v8);
  sub_1E5E1E2B8(&v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21, type metadata accessor for AppComposer);
  v25 = (v22 + ((v21 + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v26 = *(a4 + 3);
  v25[2] = *(a4 + 2);
  v25[3] = v26;
  v25[4] = *(a4 + 4);
  v27 = *(a4 + 1);
  *v25 = *a4;
  v25[1] = v27;
  swift_unknownObjectRetain();

  v28 = v46;
  sub_1E6059EAC(0, 0, v46, &unk_1E65FD240, v22);

  v50(v28, 1, 1, v51);
  v29 = v40;
  v48(v24, v49, v40);
  v30 = v37;
  sub_1E5E1D5BC(v53, v37, v47);
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  v42(v31 + v43, v24, v29);
  sub_1E5E1E2B8(v30, v31 + v21, type metadata accessor for AppComposer);
  sub_1E6059EAC(0, 0, v28, &unk_1E65FD248, v31);
}

uint64_t sub_1E6334A28()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E61BBA24(v2, v3);
}

uint64_t sub_1E6334AC0(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E6333714(a1, a2, v2 + 16);
}

uint64_t sub_1E6334B68(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E6333BB8(a1, v1 + v5);
}

uint64_t sub_1E6334C40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E6334C88(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AppComposer() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E63345FC(a1, a2, v2 + v6, v7);
}

uint64_t sub_1E6334D34(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1E65E19C8() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for AppComposer() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1E5DFA78C;

  return sub_1E64DB910(a1, v11, v12, v1 + v6, v1 + v9, v1 + v10);
}

uint64_t sub_1E6334EB8(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1E65E19C8() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for AppComposer() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E5FBF804(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E6335008(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E6335070@<X0>(uint64_t *a1@<X8>)
{
  result = type metadata accessor for AppState();
  v4 = (v1 + *(result + 248));
  v6 = *v4;
  v5 = v4[1];
  if (v5 != 6)
  {
    v7 = *(v1 + *(result + 252));
    sub_1E5E05374(v6, v5);
    result = sub_1E5E25298(v6, v5, v7);
    if ((result & 1) == 0)
    {
      result = sub_1E5E07DA0(v6, v5);
      v6 = 0;
      v5 = 6;
    }
  }

  *a1 = v6;
  a1[1] = v5;
  return result;
}

uint64_t sub_1E63350F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *a1;
  v6 = a1[1];
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v7 = sub_1E65E3B68();
  __swift_project_value_buffer(v7, qword_1EE2EA2A0);
  sub_1E65E3B28();
  v8 = OBJC_IVAR____TtC10Blackbeard9AppRouter_routingContexts;
  swift_beginAccess();
  v9 = *(v3 + v8);
  if (*(v9 + 16) && (v10 = sub_1E5E2575C(v5, v6), (v11 & 1) != 0))
  {
    v12 = v10;
    v13 = *(v9 + 56);
    v14 = type metadata accessor for NavigationControllerRoutingContext();
    v15 = *(v14 - 8);
    sub_1E5E246F0(v13 + *(v15 + 72) * v12, a2, type metadata accessor for NavigationControllerRoutingContext);
    (*(v15 + 56))(a2, 0, 1, v14);
  }

  else
  {
    v16 = type metadata accessor for NavigationControllerRoutingContext();
    (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
  }

  return swift_endAccess();
}

uint64_t sub_1E63352D0(unsigned int a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(a2 + 24);
    ObjectType = swift_getObjectType();
    sub_1E60787D4(a1, ObjectType, v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1E633534C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  sub_1E5E263A0(v0 + OBJC_IVAR____TtC10Blackbeard9AppRouter_offlineRoutingContext, type metadata accessor for NavigationControllerRoutingContext);
  v2 = *(v0 + OBJC_IVAR____TtC10Blackbeard9AppRouter_routingContexts);

  v3 = *(v0 + OBJC_IVAR____TtC10Blackbeard9AppRouter_changeObserver);

  sub_1E5E263A0(v0 + OBJC_IVAR____TtC10Blackbeard9AppRouter_composer, type metadata accessor for AppComposer);
  sub_1E5DFE50C(v0 + OBJC_IVAR____TtC10Blackbeard9AppRouter_detourResolver, &unk_1ED072050, &unk_1E65EEAB0);
  v4 = *(v0 + OBJC_IVAR____TtC10Blackbeard9AppRouter_taskScheduler);
  swift_unknownObjectRelease();
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1E6335448()
{
  v1[2] = v0;
  v2 = type metadata accessor for AppAction();
  v1[3] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63354DC, 0, 0);
}

uint64_t sub_1E63354DC()
{
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = sub_1E65E3B68();
  __swift_project_value_buffer(v4, qword_1EE2EA2A0);
  sub_1E65E3B28();
  v5 = OBJC_IVAR____TtC10Blackbeard9AppRouter_composer;
  v0[5] = OBJC_IVAR____TtC10Blackbeard9AppRouter_composer;
  v0[6] = *(v3 + v5);
  swift_storeEnumTagMultiPayload();
  v0[7] = sub_1E65E6058();
  v0[8] = sub_1E65E6048();
  v7 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E5E1FAE4, v7, v6);
}

uint64_t sub_1E6335624()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);

  sub_1E5E1FC4C();

  return MEMORY[0x1EEE6DFA0](sub_1E6335690, 0, 0);
}

uint64_t sub_1E6335690()
{
  v1 = v0[6];
  v2 = v0[7];

  v0[11] = sub_1E65E6048();
  v4 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6335720, v4, v3);
}

uint64_t sub_1E6335720()
{
  v1 = v0[11];
  v2 = v0[6];

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077258, &qword_1E65FBA80);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v0[12] = sub_1E65E4D18();

  return MEMORY[0x1EEE6DFA0](sub_1E63357C0, 0, 0);
}

uint64_t sub_1E63357C0()
{
  v1 = v0[12];
  v2 = v0[2];
  v3 = OBJC_IVAR____TtC10Blackbeard9AppRouter_changeObserver;
  v0[13] = OBJC_IVAR____TtC10Blackbeard9AppRouter_changeObserver;
  v4 = *(v2 + v3);
  *(v2 + v3) = v1;

  v5 = *(v2 + v3);
  v0[14] = v5;
  if (v5)
  {
    v6 = v0[7];
    v7 = v0[2];
    KeyPath = swift_getKeyPath();
    *swift_task_alloc() = KeyPath;
    v0[15] = swift_getKeyPath();

    v0[16] = swift_allocObject();
    swift_weakInit();

    v0[17] = sub_1E65E6048();
    v10 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6335934, v10, v9);
  }

  else
  {
    v11 = v0[4];

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_1E6335934()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[14];
  v4 = v0[15];

  sub_1E63381C4();
  sub_1E65E4D08();

  return MEMORY[0x1EEE6DFA0](sub_1E63359E8, 0, 0);
}

uint64_t sub_1E63359E8()
{
  v1 = *(v0[2] + v0[13]);
  v0[18] = v1;
  if (v1)
  {
    v2 = v0[7];

    v0[19] = sub_1E65E6048();
    v4 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E5E224F8, v4, v3);
  }

  else
  {
    v5 = v0[4];

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1E6335AC8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078618, &qword_1E65FD370);
  return sub_1E65E5B98() & 1;
}

uint64_t sub_1E6335B2C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *a1;
  v6 = a1[1];
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v7 = sub_1E65E3B68();
  __swift_project_value_buffer(v7, qword_1EE2EA2A0);
  sub_1E65E3B28();
  v8 = OBJC_IVAR____TtC10Blackbeard9AppRouter_routingContexts;
  swift_beginAccess();
  v9 = *(v3 + v8);
  if (*(v9 + 16) && (v10 = sub_1E5E2575C(v5, v6), (v11 & 1) != 0))
  {
    v12 = v10;
    v13 = *(v9 + 56);
    v14 = type metadata accessor for NavigationControllerRoutingContext();
    v15 = *(v14 - 8);
    sub_1E5E246F0(v13 + *(v15 + 72) * v12, a2, type metadata accessor for NavigationControllerRoutingContext);
    (*(v15 + 56))(a2, 0, 1, v14);
  }

  else
  {
    v16 = type metadata accessor for NavigationControllerRoutingContext();
    (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
  }

  return swift_endAccess();
}

uint64_t sub_1E6335D04(uint64_t a1, uint64_t a2, char a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0785E0, &qword_1E65EA848);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v21 - v13;
  v15 = sub_1E65E60A8();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v7 + 16))(v10, a1, v6);
  sub_1E65E6058();

  v16 = sub_1E65E6048();
  v17 = (*(v7 + 80) + 41) & ~*(v7 + 80);
  v18 = swift_allocObject();
  v19 = MEMORY[0x1E69E85E0];
  *(v18 + 16) = v16;
  *(v18 + 24) = v19;
  *(v18 + 32) = a2;
  *(v18 + 40) = a3;
  (*(v7 + 32))(v18 + v17, v10, v6);
  sub_1E64B80F8(0, 0, v14, &unk_1E65FD2E8, v18);
}

uint64_t sub_1E6335F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 321) = a5;
  *(v6 + 56) = a4;
  *(v6 + 64) = a6;
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072040, &qword_1E65F0860) - 8);
  *(v6 + 72) = v7;
  *(v6 + 80) = *(v7 + 64);
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 96) = swift_task_alloc();
  v8 = type metadata accessor for NavigationControllerRoutingContext();
  *(v6 + 104) = v8;
  v9 = *(v8 - 8);
  *(v6 + 112) = v9;
  *(v6 + 120) = *(v9 + 64);
  *(v6 + 128) = swift_task_alloc();
  *(v6 + 136) = swift_task_alloc();
  *(v6 + 144) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0785E8, &qword_1E65FD2F0) - 8) + 64) + 15;
  *(v6 + 152) = swift_task_alloc();
  *(v6 + 160) = swift_task_alloc();
  *(v6 + 168) = sub_1E65E6058();
  *(v6 + 176) = sub_1E65E6048();
  v12 = sub_1E65E5FC8();
  *(v6 + 184) = v12;
  *(v6 + 192) = v11;

  return MEMORY[0x1EEE6DFA0](sub_1E63360F4, v12, v11);
}

uint64_t sub_1E63360F4()
{
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 56);
  v2 = sub_1E65E3B68();
  *(v0 + 200) = __swift_project_value_buffer(v2, qword_1EE2EA2A0);
  sub_1E65E3B28();
  v3 = OBJC_IVAR____TtC10Blackbeard9AppRouter_routingContexts;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v0 + 208) = v4;
  v5 = *(v4 + 32);
  *(v0 + 322) = v5;
  v6 = -1;
  v7 = -1 << v5;
  if (-(-1 << v5) < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & *(v4 + 64);

  if (v8)
  {
    v10 = 0;
LABEL_10:
    v13 = *(v0 + 144);
    v14 = *(v0 + 152);
    v15 = (v8 - 1) & v8;
    v16 = __clz(__rbit64(v8)) | (v10 << 6);
    v17 = (*(v9 + 48) + 16 * v16);
    v18 = *v17;
    v19 = v17[1];
    sub_1E5E246F0(*(v9 + 56) + *(*(v0 + 112) + 72) * v16, v13, type metadata accessor for NavigationControllerRoutingContext);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0785F0, &qword_1E65FD2F8);
    v21 = *(v20 + 48);
    *v14 = v18;
    v14[1] = v19;
    sub_1E5E24844(v13, v14 + v21, type metadata accessor for NavigationControllerRoutingContext);
    (*(*(v20 - 8) + 56))(v14, 0, 1, v20);
    sub_1E5E05374(v18, v19);
    v12 = v10;
  }

  else
  {
    v11 = 0;
    v12 = ((63 - v7) >> 6) - 1;
    while (v12 != v11)
    {
      v10 = v11 + 1;
      v8 = *(v9 + 72 + 8 * v11++);
      if (v8)
      {
        goto LABEL_10;
      }
    }

    v41 = *(v0 + 152);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0785F0, &qword_1E65FD2F8);
    (*(*(v42 - 8) + 56))(v41, 1, 1, v42);
    v15 = 0;
  }

  *(v0 + 216) = v15;
  *(v0 + 224) = v12;
  v22 = *(v0 + 160);
  sub_1E5FAB460(*(v0 + 152), v22, &qword_1ED0785E8, &qword_1E65FD2F0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0785F0, &qword_1E65FD2F8);
  if ((*(*(v23 - 8) + 48))(v22, 1, v23) == 1)
  {
    v24 = *(v0 + 208);
    v25 = *(v0 + 176);
    v27 = *(v0 + 152);
    v26 = *(v0 + 160);
    v29 = *(v0 + 136);
    v28 = *(v0 + 144);
    v30 = *(v0 + 128);
    v32 = *(v0 + 88);
    v31 = *(v0 + 96);
    v33 = *(v0 + 64);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0785E0, &qword_1E65EA848);
    sub_1E65E5FF8();

    v34 = *(v0 + 8);

    return v34();
  }

  else
  {
    v36 = *(v0 + 160);
    v37 = *(v0 + 168);
    v38 = *(v0 + 136);
    *(v0 + 232) = *v36;
    *(v0 + 240) = v36[1];
    sub_1E5E24844(v36 + *(v23 + 48), v38, type metadata accessor for NavigationControllerRoutingContext);
    *(v0 + 248) = sub_1E65E6048();
    v40 = sub_1E65E5FC8();
    *(v0 + 256) = v40;
    *(v0 + 264) = v39;

    return MEMORY[0x1EEE6DFA0](sub_1E6336544, v40, v39);
  }
}

uint64_t sub_1E6336544()
{
  v1 = v0[21];
  v2 = v0[12];
  v3 = type metadata accessor for RouteDestination();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v0[34] = sub_1E65E6048();
  v5 = sub_1E65E5FC8();
  v0[35] = v5;
  v0[36] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1E6336614, v5, v4);
}

uint64_t sub_1E6336614()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  v3 = *(v0 + 112);
  v4 = *(v0 + 120);
  v5 = *(v0 + 96);
  v7 = *(v0 + 80);
  v6 = *(v0 + 88);
  v8 = *(v0 + 72);
  v16 = *(v0 + 321);
  v9 = (v2 + *(*(v0 + 104) + 24));
  v10 = *v9;
  v18 = v9[1];
  ObjectType = swift_getObjectType();
  *(v0 + 320) = 0;
  sub_1E5DFD1CC(v5, v6, &unk_1ED072040, &qword_1E65F0860);
  sub_1E5E246F0(v2, v1, type metadata accessor for NavigationControllerRoutingContext);
  v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v12 = (v7 + *(v3 + 80) + v11) & ~*(v3 + 80);
  v13 = swift_allocObject();
  *(v0 + 296) = v13;
  sub_1E5FAB460(v6, v13 + v11, &unk_1ED072040, &qword_1E65F0860);
  sub_1E5E24844(v1, v13 + v12, type metadata accessor for NavigationControllerRoutingContext);
  *(v13 + v12 + v4) = v16;
  v14 = swift_task_alloc();
  *(v0 + 304) = v14;
  *v14 = v0;
  v14[1] = sub_1E63367E0;

  return sub_1E61261B8((v0 + 320), &unk_1E65EA888, v13, ObjectType, v18);
}

uint64_t sub_1E63367E0()
{
  v2 = *v1;
  v3 = *(*v1 + 304);
  v10 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v4 = v2[37];

    v5 = v2[35];
    v6 = v2[36];
    v7 = sub_1E6336DAC;
  }

  else
  {
    v8 = v2[37];
    sub_1E5E0476C(v2[29], v2[30]);

    v5 = v2[35];
    v6 = v2[36];
    v7 = sub_1E6336910;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1E6336910()
{
  v1 = v0[34];
  v2 = v0[12];

  sub_1E5DFE50C(v2, &unk_1ED072040, &qword_1E65F0860);
  v3 = v0[32];
  v4 = v0[33];

  return MEMORY[0x1EEE6DFA0](sub_1E6336990, v3, v4);
}

uint64_t sub_1E6336990()
{
  v1 = v0[31];

  v2 = v0[23];
  v3 = v0[24];

  return MEMORY[0x1EEE6DFA0](sub_1E63369F4, v2, v3);
}

uint64_t sub_1E63369F4()
{
  v1 = sub_1E5E263A0(*(v0 + 136), type metadata accessor for NavigationControllerRoutingContext);
  v4 = *(v0 + 216);
  v5 = *(v0 + 224);
  if (!v4)
  {
    v7 = ((1 << *(v0 + 322)) + 63) >> 6;
    if (v7 <= (v5 + 1))
    {
      v8 = v5 + 1;
    }

    else
    {
      v8 = ((1 << *(v0 + 322)) + 63) >> 6;
    }

    v9 = v8 - 1;
    while (1)
    {
      v10 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v10 >= v7)
      {
        v39 = *(v0 + 152);
        v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0785F0, &qword_1E65FD2F8);
        (*(*(v40 - 8) + 56))(v39, 1, 1, v40);
        v13 = 0;
        goto LABEL_12;
      }

      v6 = *(v0 + 208);
      v4 = *(v6 + 8 * v10 + 64);
      ++v5;
      if (v4)
      {
        v5 = v10;
        goto LABEL_11;
      }
    }

    __break(1u);
    return MEMORY[0x1EEE6DFA0](v1, v2, v3);
  }

  v6 = *(v0 + 208);
LABEL_11:
  v11 = *(v0 + 144);
  v12 = *(v0 + 152);
  v13 = (v4 - 1) & v4;
  v14 = __clz(__rbit64(v4)) | (v5 << 6);
  v15 = (*(v6 + 48) + 16 * v14);
  v16 = *v15;
  v17 = v15[1];
  sub_1E5E246F0(*(v6 + 56) + *(*(v0 + 112) + 72) * v14, v11, type metadata accessor for NavigationControllerRoutingContext);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0785F0, &qword_1E65FD2F8);
  v19 = *(v18 + 48);
  *v12 = v16;
  v12[1] = v17;
  sub_1E5E24844(v11, v12 + v19, type metadata accessor for NavigationControllerRoutingContext);
  (*(*(v18 - 8) + 56))(v12, 0, 1, v18);
  sub_1E5E05374(v16, v17);
  v9 = v5;
LABEL_12:
  *(v0 + 216) = v13;
  *(v0 + 224) = v9;
  v20 = *(v0 + 160);
  sub_1E5FAB460(*(v0 + 152), v20, &qword_1ED0785E8, &qword_1E65FD2F0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0785F0, &qword_1E65FD2F8);
  if ((*(*(v21 - 8) + 48))(v20, 1, v21) != 1)
  {
    v34 = *(v0 + 160);
    v35 = *(v0 + 168);
    v36 = *(v0 + 136);
    *(v0 + 232) = *v34;
    *(v0 + 240) = v34[1];
    sub_1E5E24844(v34 + *(v21 + 48), v36, type metadata accessor for NavigationControllerRoutingContext);
    *(v0 + 248) = sub_1E65E6048();
    v37 = sub_1E65E5FC8();
    v3 = v38;
    *(v0 + 256) = v37;
    *(v0 + 264) = v38;
    v1 = sub_1E6336544;
    v2 = v37;

    return MEMORY[0x1EEE6DFA0](v1, v2, v3);
  }

  v22 = *(v0 + 208);
  v23 = *(v0 + 176);
  v25 = *(v0 + 152);
  v24 = *(v0 + 160);
  v27 = *(v0 + 136);
  v26 = *(v0 + 144);
  v28 = *(v0 + 128);
  v30 = *(v0 + 88);
  v29 = *(v0 + 96);
  v31 = *(v0 + 64);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0785E0, &qword_1E65EA848);
  sub_1E65E5FF8();

  v32 = *(v0 + 8);

  return v32();
}