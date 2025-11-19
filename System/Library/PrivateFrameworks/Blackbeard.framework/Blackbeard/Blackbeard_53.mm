uint64_t sub_1E6445B0C(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  *(v5 + 40) = a2;
  *(v5 + 48) = a3;
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;
  *(v5 + 16) = a1;
  v6 = sub_1E65DB748();
  *(v5 + 56) = v6;
  v7 = *(v6 - 8);
  *(v5 + 64) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 72) = swift_task_alloc();
  v9 = sub_1E65DB288();
  *(v5 + 80) = v9;
  v10 = *(v9 - 8);
  *(v5 + 88) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 96) = swift_task_alloc();
  v12 = type metadata accessor for ImageAssetRequest();
  *(v5 + 104) = v12;
  v13 = *(v12 - 8);
  *(v5 + 112) = v13;
  v14 = *(v13 + 64) + 15;
  *(v5 + 120) = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410) - 8) + 64) + 15;
  *(v5 + 128) = swift_task_alloc();
  v16 = sub_1E65D74E8();
  *(v5 + 136) = v16;
  v17 = *(v16 - 8);
  *(v5 + 144) = v17;
  v18 = *(v17 + 64) + 15;
  *(v5 + 152) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6445D20, 0, 0);
}

uint64_t sub_1E6445D20()
{
  v1 = *(v0 + 17);
  v2 = *(v0 + 18);
  v3 = *(v0 + 16);
  v4 = *(v0 + 2);
  sub_1E65DB008();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1E62282E0(*(v0 + 16));
    v5 = sub_1E65DB0F8();
    sub_1E6446CC8(&unk_1ED075F10, MEMORY[0x1E699D058]);
    swift_allocError();
    (*(*(v5 - 8) + 104))(v6, *MEMORY[0x1E699D050], v5);
    swift_willThrow();
    v7 = *(v0 + 19);
    v9 = *(v0 + 15);
    v8 = *(v0 + 16);
    v10 = *(v0 + 12);
    v11 = *(v0 + 9);

    v12 = *(v0 + 1);

    return v12();
  }

  else
  {
    v15 = *(v0 + 11);
    v14 = *(v0 + 12);
    v16 = *(v0 + 9);
    v17 = *(v0 + 8);
    v39 = *(v0 + 7);
    v40 = *(v0 + 15);
    v41 = *(v0 + 6);
    v37 = *(v0 + 10);
    v38 = *(v0 + 5);
    v19 = v0[3];
    v18 = v0[4];
    v20 = *(v0 + 2);
    (*(*(v0 + 18) + 32))(*(v0 + 19), *(v0 + 16), *(v0 + 17));
    v21 = sub_1E65D7428();
    v36 = v22;
    v23 = sub_1E65DB028();
    v25 = v24;
    sub_1E65DB038();
    v26 = sub_1E65DB278();
    v28 = v27;
    (*(v15 + 8))(v14, v37);
    (*(v17 + 16))(v16, v38, v39);
    ImageAssetRequest.init(template:size:cropCode:fileType:priority:expirationPolicy:cacheBehavior:)(v21, v36, v23, v25, v26, v28, 25, 1, v40, v19, v18, 1, v16);
    v29 = v41 + *(type metadata accessor for AppComposer() + 20);
    v30 = v29 + *(type metadata accessor for AppEnvironment() + 36);
    v31 = AssetService.fetchRemoteImage.getter();
    *(v0 + 20) = v32;
    v42 = (v31 + *v31);
    v33 = v31[1];
    v34 = swift_task_alloc();
    *(v0 + 21) = v34;
    *v34 = v0;
    v34[1] = sub_1E6187EEC;
    v35 = *(v0 + 15);

    return v42(v35);
  }
}

uint64_t sub_1E64460A0(uint64_t a1, double a2, double a3)
{
  v8 = *(sub_1E65DB748() - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(type metadata accessor for AppComposer() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = swift_task_alloc();
  *(v4 + 16) = v13;
  *v13 = v4;
  v13[1] = sub_1E5FE99E8;

  return sub_1E6445B0C(a1, v3 + v9, v3 + v12, a2, a3);
}

uint64_t sub_1E64461EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v60 = a2;
  v61 = a3;
  v64 = a1;
  v51 = a4;
  v4 = sub_1E65DB288();
  v56 = *(v4 - 8);
  v57 = v4;
  v5 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v55 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v46 - v9;
  v11 = sub_1E65D74E8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v59 = v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E65DB748();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v54 = v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v46 - v20;
  v22 = sub_1E65DB048();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = v46 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1E65DB558();
  v49 = *(v27 - 8);
  v50 = v27;
  v28 = *(v49 + 64);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v53 = v46 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v48 = v46 - v31;
  v62 = v23;
  v63 = v22;
  v32 = v23;
  v33 = v15;
  (*(v32 + 16))(v26, v64, v22);
  v64 = v16;
  v34 = *(v16 + 16);
  v34(v21, v60, v15);
  v52 = *(v61 + *(type metadata accessor for AppComposer() + 20) + 8);
  sub_1E65DB008();
  v60 = v12;
  v61 = v11;
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1E62282E0(v10);
    v35 = sub_1E65DB0F8();
    sub_1E6446CC8(&unk_1ED075F10, MEMORY[0x1E699D058]);
    swift_allocError();
    (*(*(v35 - 8) + 104))(v36, *MEMORY[0x1E699D050], v35);
    swift_willThrow();
LABEL_5:
    (*(v64 + 8))(v21, v33);
    return (*(v62 + 8))(v26, v63);
  }

  (*(v60 + 32))(v59, v10, v61);
  v47 = v15;
  v34(v54, v21, v15);
  v46[1] = sub_1E65DB028();
  v37 = v55;
  sub_1E65DB038();
  sub_1E65DB278();
  (*(v56 + 8))(v37, v57);
  sub_1E65D7428();
  v38 = v53;
  v39 = v58;
  sub_1E65DB518();
  if (v39)
  {
    v33 = v47;
    (*(v60 + 8))(v59, v61);
    goto LABEL_5;
  }

  (*(v60 + 8))(v59, v61);
  (*(v64 + 8))(v21, v47);
  (*(v62 + 8))(v26, v63);
  v41 = v48;
  v42 = v49;
  v43 = v38;
  v44 = v50;
  (*(v49 + 32))(v48, v43, v50);
  sub_1E65DB4F8();
  v64 = sub_1E65DB528();
  v63 = v45;
  sub_1E65DB4E8();
  sub_1E65DB538();
  sub_1E65DB548();
  sub_1E65DB508();
  sub_1E65DB0D8();
  return (*(v42 + 8))(v41, v44);
}

uint64_t sub_1E64468AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_1E65DB748() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for AppComposer() - 8);
  return sub_1E64461EC(a1, v2 + v6, v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80)), a2);
}

uint64_t sub_1E64469A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65DB048();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  (*(v7 + 16))(&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  v8 = *(a1 + *(type metadata accessor for AppState() + 148));
  if (*(v8 + 16) && (v9 = sub_1E6416C60(a2), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
  }

  else
  {
    sub_1E6428640(MEMORY[0x1E69E7CC0]);
  }

  return sub_1E65DB098();
}

uint64_t sub_1E6446AC0(uint64_t a1)
{
  v3 = *(sub_1E65DB048() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1E64469A4(a1, v4);
}

uint64_t sub_1E6446B40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1E65DB0A8();
  v6 = *(type metadata accessor for AppState() + 148);
  v7 = *(a1 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(a1 + v6);
  result = sub_1E64222A0(v5, a3, isUniquelyReferenced_nonNull_native);
  *(a1 + v6) = v10;
  return result;
}

uint64_t objectdestroy_6Tm_2()
{
  v1 = sub_1E65DB048();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1E6446C48(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_1E65DB048() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1E6446B40(a1, a2, v6);
}

uint64_t sub_1E6446CC8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t RootItem.contains<A>(id:)(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v5 = *v2;
  v6 = v2[1];
  (*(v7 + 16))(&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (swift_dynamicCast())
  {
    v8 = v16;
    v9 = v17;
    if (v6 > 2)
    {
      if (v6 == 3)
      {
        v10 = 0xE600000000000000;
        v11 = 0x686372616573;
        if (v17 <= 2)
        {
          goto LABEL_29;
        }

        goto LABEL_21;
      }

      if (v6 != 4)
      {
        if (v6 == 5)
        {
          v10 = 0xE500000000000000;
          v11 = 0x736E616C70;
          if (v17 <= 2)
          {
            goto LABEL_29;
          }

          goto LABEL_21;
        }

LABEL_18:
        v16 = 0x7974696C61646F6DLL;
        v17 = 0xE90000000000003ALL;
        MEMORY[0x1E694D7C0](v5, v6);
        v11 = v16;
        v10 = v17;
        if (v9 <= 2)
        {
          goto LABEL_29;
        }

        goto LABEL_21;
      }

      v10 = 0xE600000000000000;
      v11 = 0x7478654E7075;
      if (v17 > 2)
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (!v6)
      {
        v10 = 0xE700000000000000;
        v11 = 0x65726F6C707865;
        if (v17 <= 2)
        {
          goto LABEL_29;
        }

        goto LABEL_21;
      }

      if (v6 != 1)
      {
        if (v6 == 2)
        {
          v10 = 0xE700000000000000;
          v11 = 0x7972617262696CLL;
          if (v17 <= 2)
          {
            goto LABEL_29;
          }

LABEL_21:
          switch(v9)
          {
            case 3:
              v13 = 0xE600000000000000;
              if (v11 != 0x686372616573)
              {
                goto LABEL_43;
              }

              goto LABEL_41;
            case 4:
              v13 = 0xE600000000000000;
              if (v11 != 0x7478654E7075)
              {
                goto LABEL_43;
              }

              goto LABEL_41;
            case 5:
              v13 = 0xE500000000000000;
              if (v11 != 0x736E616C70)
              {
                goto LABEL_43;
              }

              goto LABEL_41;
          }

          goto LABEL_36;
        }

        goto LABEL_18;
      }

      v10 = 0xE600000000000000;
      v11 = 0x756F59726F66;
      if (v17 > 2)
      {
        goto LABEL_21;
      }
    }

LABEL_29:
    switch(v9)
    {
      case 0:
        v13 = 0xE700000000000000;
        if (v11 != 0x65726F6C707865)
        {
          goto LABEL_43;
        }

        goto LABEL_41;
      case 1:
        v13 = 0xE600000000000000;
        if (v11 != 0x756F59726F66)
        {
          goto LABEL_43;
        }

        goto LABEL_41;
      case 2:
        v13 = 0xE700000000000000;
        if (v11 != 0x7972617262696CLL)
        {
          goto LABEL_43;
        }

LABEL_41:
        if (v10 == v13)
        {

          v12 = 1;
          return v12 & 1;
        }

LABEL_43:
        v12 = sub_1E65E6C18();

        return v12 & 1;
    }

LABEL_36:
    v16 = 0x7974696C61646F6DLL;
    v17 = 0xE90000000000003ALL;
    v14 = v11;
    MEMORY[0x1E694D7C0](v8, v9, 0x65726F6C707865);
    sub_1E5E0476C(v8, v9);
    v13 = v17;
    if (v14 != v16)
    {
      goto LABEL_43;
    }

    goto LABEL_41;
  }

  v12 = 0;
  return v12 & 1;
}

uint64_t RootItem.apply<A>(as:operation:)(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4)
{
  v7 = sub_1E65E6668();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v21 - v11;
  v13 = *(a4 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v4[1];
  v21[0] = *v4;
  v21[1] = v17;
  sub_1E5E05374(v21[0], v17);
  v18 = swift_dynamicCast();
  v19 = *(v13 + 56);
  if (v18)
  {
    v19(v12, 0, 1, a4);
    (*(v13 + 32))(v16, v12, a4);
    a2(v16);
    return (*(v13 + 8))(v16, a4);
  }

  else
  {
    v19(v12, 1, 1, a4);
    return (*(v8 + 8))(v12, v7);
  }
}

uint64_t sub_1E64472A8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v57 = a3;
  v55 = a1;
  v56 = a2;
  v3 = sub_1E65E5528();
  v54 = *(v3 - 8);
  v4 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E65E57D8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = (&v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for RouteSource(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758C8, &qword_1E65F1FD0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v51 - v18;
  v20 = sub_1E65DF878();
  if (v20 <= 3)
  {
    if (v20 > 1)
    {
      if (v20 == 2)
      {
        v24 = sub_1E65DF8C8();
        v26 = v25;
        swift_storeEnumTagMultiPayload();
        v27 = v57;
        *v57 = v24;
        v27[1] = v26;
      }

      else
      {
        v33 = sub_1E65DF8C8();
        v35 = v34;
        swift_storeEnumTagMultiPayload();
        v27 = v57;
        *v57 = v33;
        v27[1] = v35;
        type metadata accessor for PlaylistType();
        swift_storeEnumTagMultiPayload();
      }

      type metadata accessor for RouteResource();
      goto LABEL_17;
    }

    if (v20)
    {
      sub_1E65DF928();
      v28 = sub_1E65DFA88();
      v29 = (*(*(v28 - 8) + 48))(v19, 1, v28);
      sub_1E6447918(v19);
      if (v29 == 1)
      {
LABEL_15:
        v30 = sub_1E65DF8C8();
        v32 = v31;
        swift_storeEnumTagMultiPayload();
        v27 = v57;
        *v57 = v30;
        v27[1] = v32;
        type metadata accessor for RouteResource();
LABEL_17:
        swift_storeEnumTagMultiPayload();
        v36 = type metadata accessor for RouteDestination();
        sub_1E6094E10(v15, v27 + *(v36 + 20));
        *(v27 + *(v36 + 24)) = MEMORY[0x1E69E7CD0];
        return sub_1E6069714(v15);
      }

      sub_1E5FAA54C();
      swift_allocError();
      v22 = 3;
LABEL_8:
      *v21 = v22;
      return swift_willThrow();
    }

LABEL_7:
    sub_1E5FAA54C();
    swift_allocError();
    v22 = 2;
    goto LABEL_8;
  }

  if (v20 > 5)
  {
    if (v20 != 7)
    {
      goto LABEL_15;
    }

    goto LABEL_7;
  }

  if (v20 == 4)
  {
    goto LABEL_15;
  }

  *v11 = sub_1E65DF8C8();
  v11[1] = v37;
  v38 = *MEMORY[0x1E69CD900];
  v53 = v8;
  (*(v8 + 104))(v11, v38, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079248, &qword_1E66012E8);
  v39 = v54;
  v40 = *(v54 + 72);
  v41 = (*(v54 + 80) + 32) & ~*(v54 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1E65EA670;
  sub_1E65E5518();
  v58 = v42;
  sub_1E64478C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079250, &qword_1E66012F0);
  sub_1E63FFA58();
  sub_1E65E6738();
  v52 = type metadata accessor for RouteDestination();
  v43 = *(v52 + 20);
  v44 = v57;
  swift_storeEnumTagMultiPayload();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0778F0, &unk_1E65EA7F0);
  v46 = v45[12];
  v47 = (v44 + v45[16]);
  v48 = v45[20];
  (*(v53 + 32))(v44, v11, v7);
  (*(v39 + 32))(v44 + v46, v6, v3);
  v50 = v55;
  v49 = v56;
  *v47 = v55;
  v47[1] = v49;
  *(v44 + v48) = 0;
  type metadata accessor for RouteResource();
  swift_storeEnumTagMultiPayload();
  *(v44 + *(v52 + 24)) = MEMORY[0x1E69E7CD0];
  return sub_1E5FA9D34(v50, v49);
}

unint64_t sub_1E64478C0()
{
  result = qword_1ED078A30;
  if (!qword_1ED078A30)
  {
    sub_1E65E5528();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078A30);
  }

  return result;
}

uint64_t sub_1E6447918(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758C8, &qword_1E65F1FD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E6447980@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v47 = a2;
  v46 = a1;
  v4 = sub_1E65E5528();
  v45 = *(v4 - 8);
  v5 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E65E57D8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = (&v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for RouteSource(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1E65DFD68();
  if (v17 <= 3)
  {
    if (v17 > 1)
    {
      if (v17 == 2)
      {
        v23 = sub_1E65DFD78();
        v25 = v24;
        swift_storeEnumTagMultiPayload();
        *a3 = v23;
        a3[1] = v25;
      }

      else
      {
        v26 = sub_1E65DFD78();
        v28 = v27;
        swift_storeEnumTagMultiPayload();
        *a3 = v26;
        a3[1] = v28;
        type metadata accessor for PlaylistType();
        swift_storeEnumTagMultiPayload();
      }

      type metadata accessor for RouteResource();
      goto LABEL_15;
    }

    if (v17)
    {
LABEL_4:
      v18 = sub_1E65DFD78();
      v20 = v19;
      swift_storeEnumTagMultiPayload();
      *a3 = v18;
      a3[1] = v20;
      type metadata accessor for RouteResource();
LABEL_15:
      swift_storeEnumTagMultiPayload();
      v29 = type metadata accessor for RouteDestination();
      sub_1E6094E10(v16, a3 + *(v29 + 20));
      *(a3 + *(v29 + 24)) = MEMORY[0x1E69E7CD0];
      return sub_1E6069714(v16);
    }

LABEL_7:
    sub_1E5FAA54C();
    swift_allocError();
    *v21 = 2;
    return swift_willThrow();
  }

  if (v17 > 5)
  {
    if (v17 != 7)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  if (v17 == 4)
  {
    goto LABEL_4;
  }

  *v12 = sub_1E65DFD78();
  v12[1] = v30;
  v31 = *MEMORY[0x1E69CD900];
  v44 = v9;
  (*(v9 + 104))(v12, v31, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079248, &qword_1E66012E8);
  v32 = v45;
  v33 = *(v45 + 72);
  v34 = (*(v45 + 80) + 32) & ~*(v45 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1E65EA670;
  sub_1E65E5518();
  v48 = v35;
  sub_1E64478C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079250, &qword_1E66012F0);
  sub_1E63FFA58();
  sub_1E65E6738();
  v43 = type metadata accessor for RouteDestination();
  v36 = *(v43 + 20);
  swift_storeEnumTagMultiPayload();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0778F0, &unk_1E65EA7F0);
  v38 = v37[12];
  v39 = (a3 + v37[16]);
  v40 = v37[20];
  (*(v44 + 32))(a3, v12, v8);
  (*(v32 + 32))(a3 + v38, v7, v4);
  v42 = v46;
  v41 = v47;
  *v39 = v46;
  v39[1] = v41;
  *(a3 + v40) = 0;
  type metadata accessor for RouteResource();
  swift_storeEnumTagMultiPayload();
  *(a3 + *(v43 + 24)) = MEMORY[0x1E69E7CD0];
  return sub_1E5FA9D34(v42, v41);
}

uint64_t sub_1E6447EB4(uint64_t a1, int a2)
{
  v35 = a2;
  v33 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073958, &qword_1E65EDCD0);
  v31 = *(v3 - 8);
  v30 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v29 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079CB8, &qword_1E66039F0);
  v36 = *(v6 - 8);
  v37 = v6;
  v7 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v34 = v29 - v8;
  v9 = type metadata accessor for AppComposer();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079CC0, &qword_1E66039F8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079CC8, &qword_1E6603A00);
  v32 = *(v14 - 8);
  v15 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v29 - v16;
  v29[1] = *v2;
  sub_1E5E1DEAC(v2, v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v19 = swift_allocObject();
  sub_1E5E1FA80(v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  sub_1E5E1DEAC(v2, v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = swift_allocObject();
  sub_1E5E1FA80(v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v18);
  sub_1E604CB00();
  sub_1E65DEDF8();
  sub_1E65DED48();
  v21 = v33;
  sub_1E5DFD1CC(v33, v5, &qword_1ED073958, &qword_1E65EDCD0);
  v22 = (*(v31 + 80) + 16) & ~*(v31 + 80);
  v23 = v22 + v30;
  v24 = swift_allocObject();
  sub_1E6448E98(v5, v24 + v22);
  *(v24 + v23) = v35;
  sub_1E5DFD1CC(v21, v5, &qword_1ED073958, &qword_1E65EDCD0);
  v25 = swift_allocObject();
  sub_1E6448E98(v5, v25 + v22);
  type metadata accessor for AppFeature();
  sub_1E5DED16C();
  sub_1E5FED46C(&qword_1ED079CD0, &qword_1ED079CC8, &qword_1E6603A00);
  v26 = v34;
  sub_1E65E4DE8();
  sub_1E65E4CC8();
  v27 = sub_1E65E4F08();
  (*(v36 + 8))(v26, v37);
  (*(v32 + 8))(v17, v14);
  return v27;
}

uint64_t sub_1E64483A8@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v24[1] = a4;
  v7 = sub_1E65D7848();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076F60, &qword_1E65F8FA8);
  v12 = *(v24[0] - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v24[0]);
  v15 = v24 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079CE0, &qword_1E6603A58);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v24 - v18;
  if (a1)
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073930, &qword_1E65EDCC0);
    (*(*(v20 - 8) + 16))(v19, a2, v20);
    swift_storeEnumTagMultiPayload();
    sub_1E5FED46C(&qword_1EE2D68C8, &qword_1ED073930, &qword_1E65EDCC0);
    swift_getOpaqueTypeConformance2();
    return sub_1E65E4138();
  }

  else
  {
    v22 = *a3;
    swift_getKeyPath();
    sub_1E65E4EC8();

    sub_1E65DE798();
    (*(v8 + 8))(v11, v7);
    v23 = v24[0];
    (*(v12 + 16))(v19, v15, v24[0]);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073930, &qword_1E65EDCC0);
    sub_1E5FED46C(&qword_1EE2D68C8, &qword_1ED073930, &qword_1E65EDCC0);
    swift_getOpaqueTypeConformance2();
    sub_1E65E4138();
    return (*(v12 + 8))(v15, v23);
  }
}

uint64_t sub_1E6448734(uint64_t *a1)
{
  v2 = sub_1E65D7848();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65DE7A8();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1E6448834(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1E65D7848();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a2;
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65DE798();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1E6448934@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077CE0, &unk_1E65F72C0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_1E64489C0@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073930, &qword_1E65EDCC0);
  v7 = *(v6 - 8);
  if (a1)
  {
    v11 = *(v6 - 8);
    (*(v11 + 16))(a3, a2, v6);
    v7 = v11;
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = *(v7 + 56);

  return v9(a3, v8, 1, v6);
}

uint64_t sub_1E6448A98@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = *(*(v6 - 8) + 16);

  return v7(a4, a1, v6);
}

uint64_t sub_1E6448B1C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = *(*(v6 - 8) + 16);

  return v7(a4, a1, v6);
}

uint64_t sub_1E6448B8C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = *a1;
  *(v2 + 56) = *(a1 + 16);
  return MEMORY[0x1EEE6DFA0](sub_1E6448BBC, 0, 0);
}

uint64_t sub_1E6448BBC()
{
  v1 = v0[2];
  v0[5] = *(v1 + *(type metadata accessor for AppComposer() + 24));
  sub_1E65E6058();
  v0[6] = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6448C68, v3, v2);
}

uint64_t sub_1E6448C68()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 56);

  sub_1E608521C(v4, v3, v5);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1E6448CE8(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E6448B8C(a1, v1 + v5);
}

uint64_t sub_1E6448DC0(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E6000CF4(a1, v1 + v5);
}

uint64_t sub_1E6448E98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073958, &qword_1E65EDCD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E6448FA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v50 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v40 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v39 = &v33 - v8;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AB8, &unk_1E65F84D0);
  v37 = *(v38 - 8);
  v9 = *(v37 + 64);
  v10 = MEMORY[0x1EEE9AC00](v38);
  v35 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v36 = &v33 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v42 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v33 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AC0, &unk_1E65F4300);
  v49 = *(v19 - 8);
  v20 = *(v49 + 64);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v43 = &v33 - v24;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073958, &qword_1E65EDCD0);
  v48 = a3;
  sub_1E65DE488();
  v45 = v58;
  v46 = v57;
  v44 = v59;
  sub_1E65DE488();
  v26 = v54;
  v25 = v55;
  v27 = v56;
  v34 = type metadata accessor for AppState();
  v41 = *(v34 + 88);
  v51 = v26;
  v52 = v25;
  v53 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AC8, &qword_1E65EC488);
  sub_1E65E4D78();
  sub_1E6001C2C(v26, v25, v27);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079CD8, &qword_1E6603A28);
  sub_1E65DEBE8();
  sub_1E5DFD1CC(v18, v42, &unk_1ED077CC0, &unk_1E65F2610);
  sub_1E65E4C78();
  sub_1E65E4C88();
  sub_1E5DFE50C(v18, &unk_1ED077CC0, &unk_1E65F2610);
  (*(v49 + 8))(v23, v19);
  v54 = v46;
  v55 = v45;
  v56 = v44;
  sub_1E65E4D88();
  sub_1E65DE488();
  if (v59)
  {
    return sub_1E6001C2C(v57, v58, v59);
  }

  v29 = *(v34 + 116);
  v59 = 0;
  v48 = v57;
  v49 = v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AD8, &unk_1E65F84F0);
  v30 = v35;
  sub_1E65E4D78();
  v31 = v39;
  sub_1E65DEBF8();
  sub_1E5DFD1CC(v31, v40, &unk_1ED077CD0, &unk_1E65F42F0);
  v32 = v38;
  sub_1E65E4C78();
  sub_1E5DF23E0();
  sub_1E65E4C88();
  sub_1E5DFE50C(v31, &unk_1ED077CD0, &unk_1E65F42F0);
  (*(v37 + 8))(v30, v32);
  v57 = v48;
  v58 = v49;
  v59 = 0;
  return sub_1E65E4D88();
}

uint64_t sub_1E6449518(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073958, &qword_1E65EDCD0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1E6448FA8(a1, a2, v6);
}

uint64_t sub_1E64495B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v12 = sub_1E65E07B8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  v91 = *(v17 - 8);
  v18 = *(v91 + 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v89 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v89 - v25;
  sub_1E65E06F8();
  v101.origin.x = a3;
  v101.origin.y = a4;
  v101.size.width = a5;
  v101.size.height = a6;
  if (!CGRectEqualToRect(v99, v101))
  {
    v100.origin.x = a3;
    v100.origin.y = a4;
    v100.size.width = a5;
    v100.size.height = a6;
    Width = CGRectGetWidth(v100);
    v30 = _s10Blackbeard12AppSizeClassO11canvasWidthAC12CoreGraphics7CGFloatV_tcfC_0(Width);
    v31 = (v13 + 8);
    v32 = (v91 + 8);
    if (v30 > 2u)
    {
      v90 = a2;
      if (v30 == 3)
      {
        v95 = 3;
        sub_1E65E0658();
        sub_1E65E0768();
        sub_1E65E0688();
        (*v31)(v16, v12);
        v45 = *v32;
        (*v32)(v21, v17);
        sub_1E65E06B8();
        v45(v24, v17);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079CE8, &unk_1E6603AC0);
        v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079438, &qword_1E6601590);
        v70 = *(*(v69 - 8) + 72);
        v71 = (*(*(v69 - 8) + 80) + 32) & ~*(*(v69 - 8) + 80);
        v49 = swift_allocObject();
        *(v49 + 16) = xmmword_1E6603A60;
        v72 = v49 + v71;
        v73 = *(v69 + 48);
        *(v49 + v71) = 0;
        sub_1E65E0598();
        v74 = *(v69 + 48);
        *(v72 + v70) = 1;
        sub_1E65E0598();
        v75 = *(v69 + 48);
        *(v72 + 2 * v70) = 2;
        sub_1E65E0598();
        v76 = *(v69 + 48);
        *(v72 + 3 * v70) = 3;
        sub_1E65E0598();
        v77 = *(v69 + 48);
        *(v72 + 4 * v70) = 4;
        sub_1E65E0598();
        v78 = *(v69 + 48);
        *(v72 + 5 * v70) = 5;
      }

      else
      {
        if (v30 == 4)
        {
          v96 = 4;
        }

        else
        {
          v97 = 5;
        }

        sub_1E65E0658();
        sub_1E65E0768();
        sub_1E65E0688();
        (*v31)(v16, v12);
        v45 = *v32;
        (*v32)(v21, v17);
        sub_1E65E06B8();
        v45(v24, v17);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079CE8, &unk_1E6603AC0);
        v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079438, &qword_1E6601590);
        v47 = *(*(v46 - 8) + 72);
        v48 = (*(*(v46 - 8) + 80) + 32) & ~*(*(v46 - 8) + 80);
        v49 = swift_allocObject();
        *(v49 + 16) = xmmword_1E6603A60;
        v50 = v49 + v48;
        v51 = *(v46 + 48);
        *(v49 + v48) = 0;
        sub_1E65E0598();
        v52 = *(v46 + 48);
        *(v50 + v47) = 1;
        sub_1E65E0598();
        v53 = *(v46 + 48);
        *(v50 + 2 * v47) = 2;
        sub_1E65E0598();
        v54 = *(v46 + 48);
        *(v50 + 3 * v47) = 3;
        sub_1E65E0598();
        v55 = *(v46 + 48);
        *(v50 + 4 * v47) = 4;
        sub_1E65E0598();
        v56 = *(v46 + 48);
        *(v50 + 5 * v47) = 5;
      }
    }

    else
    {
      if (!v30)
      {
        v92 = 0;
        sub_1E65E0658();
        sub_1E65E0768();
        sub_1E65E0688();
        (*v31)(v16, v12);
        v57 = *v32;
        (*v32)(v21, v17);
        v91 = v57;
        sub_1E65E06B8();
        v57(v24, v17);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079CE8, &unk_1E6603AC0);
        v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079438, &qword_1E6601590);
        v59 = *(*(v58 - 8) + 72);
        v60 = (*(*(v58 - 8) + 80) + 32) & ~*(*(v58 - 8) + 80);
        v61 = swift_allocObject();
        *(v61 + 16) = xmmword_1E6603A60;
        v62 = (v61 + v60);
        v63 = *(v58 + 48);
        *v62 = 0;
        sub_1E65E0598();
        v64 = *(v58 + 48);
        v62[v59] = 1;
        sub_1E65E0598();
        v65 = *(v58 + 48);
        v62[2 * v59] = 2;
        sub_1E65E0598();
        v66 = *(v58 + 48);
        v62[3 * v59] = 3;
        sub_1E65E0598();
        v67 = *(v58 + 48);
        v62[4 * v59] = 4;
        sub_1E65E0598();
        v68 = *(v58 + 48);
        v62[5 * v59] = 5;
        sub_1E65E0598();
        sub_1E5E0024C(v61);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        goto LABEL_14;
      }

      v90 = a2;
      if (v30 == 1)
      {
        v93 = 1;
        sub_1E65E0658();
        sub_1E65E0768();
        sub_1E65E0688();
        (*v31)(v16, v12);
        v33 = *v32;
        (*v32)(v21, v17);
        v91 = v33;
        sub_1E65E06B8();
        v33(v24, v17);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079CE8, &unk_1E6603AC0);
        v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079438, &qword_1E6601590);
        v35 = *(*(v34 - 8) + 72);
        v36 = (*(*(v34 - 8) + 80) + 32) & ~*(*(v34 - 8) + 80);
        v37 = swift_allocObject();
        *(v37 + 16) = xmmword_1E6603A60;
        v38 = v37 + v36;
        v39 = *(v34 + 48);
        *(v37 + v36) = 0;
        sub_1E65E0598();
        v40 = *(v34 + 48);
        *(v38 + v35) = 1;
        sub_1E65E0598();
        v41 = *(v34 + 48);
        *(v38 + 2 * v35) = 2;
        sub_1E65E0598();
        v42 = *(v34 + 48);
        *(v38 + 3 * v35) = 3;
        sub_1E65E0598();
        v43 = *(v34 + 48);
        *(v38 + 4 * v35) = 4;
        sub_1E65E0598();
        v44 = *(v34 + 48);
        *(v38 + 5 * v35) = 5;
        sub_1E65E0598();
        sub_1E5E0024C(v37);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
LABEL_14:
        sub_1E65E06C8();

        return (v91)(v26, v17);
      }

      v94 = 2;
      sub_1E65E0658();
      sub_1E65E0768();
      sub_1E65E0688();
      (*v31)(v16, v12);
      v45 = *v32;
      (*v32)(v21, v17);
      sub_1E65E06B8();
      v45(v24, v17);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079CE8, &unk_1E6603AC0);
      v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079438, &qword_1E6601590);
      v80 = *(*(v79 - 8) + 72);
      v81 = (*(*(v79 - 8) + 80) + 32) & ~*(*(v79 - 8) + 80);
      v49 = swift_allocObject();
      *(v49 + 16) = xmmword_1E6603A60;
      v82 = v49 + v81;
      v83 = *(v79 + 48);
      *(v49 + v81) = 0;
      sub_1E65E0598();
      v84 = *(v79 + 48);
      *(v82 + v80) = 1;
      sub_1E65E0598();
      v85 = *(v79 + 48);
      *(v82 + 2 * v80) = 2;
      sub_1E65E0598();
      v86 = *(v79 + 48);
      *(v82 + 3 * v80) = 3;
      sub_1E65E0598();
      v87 = *(v79 + 48);
      *(v82 + 4 * v80) = 4;
      sub_1E65E0598();
      v88 = *(v79 + 48);
      *(v82 + 5 * v80) = 5;
    }

    sub_1E65E0598();
    sub_1E5E0024C(v49);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_1E65E06C8();

    return (v45)(v26, v17);
  }

  v27 = *(v91 + 2);

  return v27(a2, a1, v17);
}

uint64_t sub_1E644A670(void *a1)
{
  v3 = type metadata accessor for AccountUpgradeDetour.State(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v31 - v8;
  v10 = type metadata accessor for RouteDestination();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v31 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0722F0, &unk_1E65EA1F0);
  v18 = *(v17 - 8);
  v33 = v17;
  v34 = v18;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v31 - v20;
  v22 = OBJC_IVAR____TtC10Blackbeard20AccountUpgradeDetour_state;
  swift_beginAccess();
  sub_1E644D080(v1 + v22, v9, type metadata accessor for AccountUpgradeDetour.State);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E10, &qword_1E6603B00);
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v9, 1, v23) == 1)
  {
    return sub_1E644D33C(v9, type metadata accessor for AccountUpgradeDetour.State);
  }

  v32 = v14;
  v26 = v16;
  v27 = a1;
  v28 = *(v23 + 48);
  (*(v34 + 32))(v21, v9, v33);
  sub_1E5F9CE80(&v9[v28], v26);
  (*(v24 + 56))(v7, 1, 1, v23);
  swift_beginAccess();
  sub_1E644D13C(v7, v1 + v22);
  swift_endAccess();
  if (v27)
  {
    v35 = v27;
    v29 = v27;
    v30 = v33;
    sub_1E65E5FE8();
  }

  else
  {
    sub_1E644D080(v26, v32, type metadata accessor for RouteDestination);
    v30 = v33;
    sub_1E65E5FF8();
  }

  sub_1E644D33C(v26, type metadata accessor for RouteDestination);
  return (*(v34 + 8))(v21, v30);
}

uint64_t sub_1E644A9DC()
{
  sub_1E644D33C(v0 + OBJC_IVAR____TtC10Blackbeard20AccountUpgradeDetour_state, type metadata accessor for AccountUpgradeDetour.State);
  v1 = OBJC_IVAR____TtC10Blackbeard20AccountUpgradeDetour__forceAccountUpgrade;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E18, &qword_1E65FD850);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1E644AAB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = sub_1E65E3B68();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();
  v10 = *(*(sub_1E65D7848() - 8) + 64) + 15;
  v6[11] = swift_task_alloc();
  v11 = *(*(sub_1E65E5C28() - 8) + 64) + 15;
  v6[12] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E18, &qword_1E65FD850);
  v6[13] = v12;
  v13 = *(v12 - 8);
  v6[14] = v13;
  v14 = *(v13 + 64) + 15;
  v6[15] = swift_task_alloc();
  v15 = sub_1E65DE3E8();
  v6[16] = v15;
  v16 = *(v15 - 8);
  v6[17] = v16;
  v17 = *(v16 + 64) + 15;
  v6[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E644AC98, v5, 0);
}

uint64_t sub_1E644AC98()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 128);
  v4 = *(v0 + 32);
  v5 = v4 + *(type metadata accessor for AppComposer() + 20);
  v6 = *(v5 + 8);
  v7 = sub_1E65DAE18();
  (*(v2 + 104))(v1, *MEMORY[0x1E69CAD20], v3);
  v8 = sub_1E637C87C(v1, v7);

  (*(v2 + 8))(v1, v3);
  if ((v8 & 1) == 0)
  {
    v37 = *(v0 + 16);
    v36 = *(v0 + 24);
LABEL_9:
    sub_1E644D080(v36, v37, type metadata accessor for RouteDestination);
    v38 = *(v0 + 144);
    v39 = *(v0 + 120);
    v41 = *(v0 + 88);
    v40 = *(v0 + 96);
    v42 = *(v0 + 80);

    v43 = *(v0 + 8);

    return v43();
  }

  v10 = *(v0 + 112);
  v9 = *(v0 + 120);
  v11 = *(v0 + 104);
  (*(v10 + 16))(v9, *(v0 + 56) + OBJC_IVAR____TtC10Blackbeard20AccountUpgradeDetour__forceAccountUpgrade, v11);
  sub_1E65DDC48();
  (*(v10 + 8))(v9, v11);
  if (*(v0 + 208))
  {
    v12 = [objc_opt_self() sharedInstance];
    if (!v12)
    {
      __break(1u);
      return MEMORY[0x1EEE6DE18](v12, v13, v14, v15, v16, v17, v18, v19);
    }

    v20 = v12;
    v21 = [v12 primaryAccountDSID];

    if (v21)
    {
      v22 = *(v0 + 88);
      v23 = *(v0 + 96);
      v24 = *(v0 + 56);
      v26 = *(v0 + 24);
      v25 = *(v0 + 32);
      v59 = *(v0 + 40);
      v27 = [objc_allocWithZone(MEMORY[0x1E6997860]) initWithAltDSID_];
      *(v0 + 176) = v27;

      [v27 setDeviceToDeviceEncryptionUpgradeUIStyle_];
      [v27 setDeviceToDeviceEncryptionUpgradeType_];
      sub_1E65E5BA8();
      type metadata accessor for LocalizationBundle();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v29 = [objc_opt_self() bundleForClass_];
      v30 = *v25;
      swift_getKeyPath();
      sub_1E65E4EC8();

      sub_1E65E5D48();
      v31 = sub_1E65E5C48();

      [v27 setFeatureName_];

      v32 = swift_task_alloc();
      *(v0 + 184) = v32;
      *(v32 + 16) = v24;
      *(v32 + 24) = v26;
      *(v32 + 32) = v59;
      *(v32 + 48) = v27;
      v33 = sub_1E644D028(&qword_1ED079CF0, type metadata accessor for AccountUpgradeDetour);
      v34 = *(MEMORY[0x1E69E88F0] + 4);
      v35 = swift_task_alloc();
      *(v0 + 192) = v35;
      v19 = type metadata accessor for RouteDestination();
      *v35 = v0;
      v35[1] = sub_1E644B7B4;
      v16 = *(v0 + 56);
      v12 = *(v0 + 16);
      v13 = &unk_1E6603B98;
      v15 = sub_1E644CF6C;
      v14 = v32;
      v17 = v24;
      v18 = v33;

      return MEMORY[0x1EEE6DE18](v12, v13, v14, v15, v16, v17, v18, v19);
    }

    v50 = *(v0 + 80);
    sub_1E65DE328();
    v51 = sub_1E65E3B48();
    v52 = sub_1E65E6328();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_1E5DE9000, v51, v52, "Couldn't load altDSID to show UpgradeUI.", v53, 2u);
      MEMORY[0x1E694F1C0](v53, -1, -1);
    }

    v55 = *(v0 + 72);
    v54 = *(v0 + 80);
    v56 = *(v0 + 64);
    v58 = *(v0 + 16);
    v57 = *(v0 + 24);

    (*(v55 + 8))(v54, v56);
    v36 = v57;
    v37 = v58;
    goto LABEL_9;
  }

  v45 = v5 + *(type metadata accessor for AppEnvironment() + 124);
  v46 = SyncService.requireAccountUpgrade.getter();
  *(v0 + 152) = v47;
  v60 = (v46 + *v46);
  v48 = v46[1];
  v49 = swift_task_alloc();
  *(v0 + 160) = v49;
  *v49 = v0;
  v49[1] = sub_1E644B280;

  return v60();
}

uint64_t sub_1E644B280()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *v1;
  *(*v1 + 168) = v0;

  v5 = *(v2 + 56);
  if (v0)
  {
    v6 = sub_1E644B97C;
  }

  else
  {
    v6 = sub_1E644B3AC;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1E644B3AC()
{
  v1 = *(v0 + 152);

  v2 = [objc_opt_self() sharedInstance];
  if (!v2)
  {
    __break(1u);
    return MEMORY[0x1EEE6DE18](v2, v3, v4, v5, v6, v7, v8, v9);
  }

  v10 = v2;
  v11 = [v2 primaryAccountDSID];

  if (v11)
  {
    v12 = *(v0 + 88);
    v13 = *(v0 + 96);
    v14 = *(v0 + 56);
    v16 = *(v0 + 24);
    v15 = *(v0 + 32);
    v42 = *(v0 + 40);
    v17 = [objc_allocWithZone(MEMORY[0x1E6997860]) initWithAltDSID_];
    *(v0 + 176) = v17;

    [v17 setDeviceToDeviceEncryptionUpgradeUIStyle_];
    [v17 setDeviceToDeviceEncryptionUpgradeType_];
    sub_1E65E5BA8();
    type metadata accessor for LocalizationBundle();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v19 = [objc_opt_self() bundleForClass_];
    v20 = *v15;
    swift_getKeyPath();
    sub_1E65E4EC8();

    sub_1E65E5D48();
    v21 = sub_1E65E5C48();

    [v17 setFeatureName_];

    v22 = swift_task_alloc();
    *(v0 + 184) = v22;
    *(v22 + 16) = v14;
    *(v22 + 24) = v16;
    *(v22 + 32) = v42;
    *(v22 + 48) = v17;
    v23 = sub_1E644D028(&qword_1ED079CF0, type metadata accessor for AccountUpgradeDetour);
    v24 = *(MEMORY[0x1E69E88F0] + 4);
    v25 = swift_task_alloc();
    *(v0 + 192) = v25;
    v9 = type metadata accessor for RouteDestination();
    *v25 = v0;
    v25[1] = sub_1E644B7B4;
    v6 = *(v0 + 56);
    v2 = *(v0 + 16);
    v3 = &unk_1E6603B98;
    v5 = sub_1E644CF6C;
    v4 = v22;
    v7 = v14;
    v8 = v23;

    return MEMORY[0x1EEE6DE18](v2, v3, v4, v5, v6, v7, v8, v9);
  }

  v26 = *(v0 + 80);
  sub_1E65DE328();
  v27 = sub_1E65E3B48();
  v28 = sub_1E65E6328();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_1E5DE9000, v27, v28, "Couldn't load altDSID to show UpgradeUI.", v29, 2u);
    MEMORY[0x1E694F1C0](v29, -1, -1);
  }

  v31 = *(v0 + 72);
  v30 = *(v0 + 80);
  v32 = *(v0 + 64);
  v34 = *(v0 + 16);
  v33 = *(v0 + 24);

  (*(v31 + 8))(v30, v32);
  sub_1E644D080(v33, v34, type metadata accessor for RouteDestination);
  v35 = *(v0 + 144);
  v36 = *(v0 + 120);
  v38 = *(v0 + 88);
  v37 = *(v0 + 96);
  v39 = *(v0 + 80);

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_1E644B7B4()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v9 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v4 = *(v2 + 56);
    v5 = sub_1E644BA4C;
  }

  else
  {
    v6 = *(v2 + 184);
    v7 = *(v2 + 56);

    v5 = sub_1E644B8DC;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1E644B8DC()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 120);
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);
  v5 = *(v0 + 80);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1E644B97C()
{
  v1 = v0[21];
  v2 = v0[19];
  v4 = v0[2];
  v3 = v0[3];

  sub_1E644D080(v3, v4, type metadata accessor for RouteDestination);
  v5 = v0[18];
  v6 = v0[15];
  v8 = v0[11];
  v7 = v0[12];
  v9 = v0[10];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1E644BA4C()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 144);
  v3 = *(v0 + 120);
  v5 = *(v0 + 88);
  v4 = *(v0 + 96);
  v6 = *(v0 + 80);

  v7 = *(v0 + 8);
  v8 = *(v0 + 200);

  return v7();
}

uint64_t sub_1E644BB00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E644BB24, a2, 0);
}

uint64_t sub_1E644BB24()
{
  v1 = *(v0 + 56);
  v2 = sub_1E644D028(&qword_1ED079CF0, type metadata accessor for AccountUpgradeDetour);
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  v10 = *(v0 + 24);
  v4 = *(v0 + 40);
  *(v3 + 16) = v10;
  *(v3 + 32) = v4;
  *(v3 + 48) = v1;
  v5 = *(MEMORY[0x1E69E8920] + 4);
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  v7 = type metadata accessor for RouteDestination();
  *v6 = v0;
  v6[1] = sub_1E5F8E974;
  v8 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v8, v10, v2, 0xD000000000000024, 0x80000001E66103D0, sub_1E644D070, v3, v7);
}

uint64_t sub_1E644BC74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v35 = a4;
  v36 = a6;
  v34 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v33 - v11;
  v13 = type metadata accessor for AccountUpgradeDetour.State(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v33 - v18;
  v20 = OBJC_IVAR____TtC10Blackbeard20AccountUpgradeDetour_state;
  swift_beginAccess();
  sub_1E644D080(a2 + v20, v19, type metadata accessor for AccountUpgradeDetour.State);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E10, &qword_1E6603B00);
  v22 = *(v21 - 8);
  v23 = (*(v22 + 48))(v19, 1, v21);
  sub_1E644D33C(v19, type metadata accessor for AccountUpgradeDetour.State);
  if (v23 == 1)
  {
    v24 = *(v21 + 48);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0722F0, &unk_1E65EA1F0);
    (*(*(v25 - 8) + 16))(v17, a1, v25);
    sub_1E644D080(a3, &v17[v24], type metadata accessor for RouteDestination);
    (*(v22 + 56))(v17, 0, 1, v21);
    swift_beginAccess();
    sub_1E644D13C(v17, a2 + v20);
    swift_endAccess();
    v26 = sub_1E65E60A8();
    (*(*(v26 - 8) + 56))(v12, 1, 1, v26);
    v27 = sub_1E644D028(&qword_1ED079CF0, type metadata accessor for AccountUpgradeDetour);
    v28 = swift_allocObject();
    v28[2] = a2;
    v28[3] = v27;
    v29 = v34;
    v28[4] = v35;
    v28[5] = v29;
    v30 = v36;
    v28[6] = v36;
    v28[7] = a2;
    swift_retain_n();
    swift_unknownObjectRetain();
    v31 = v30;
    sub_1E64B80F8(0, 0, v12, &unk_1E6603BC0, v28);
  }

  else
  {
    sub_1E644D0E8();
    v37 = swift_allocError();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0722F0, &unk_1E65EA1F0);
    return sub_1E65E5FE8();
  }
}

uint64_t sub_1E644C024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1E644C048, a7, 0);
}

uint64_t sub_1E644C048()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v14 = v0[3];
  ObjectType = swift_getObjectType();
  v5 = swift_allocObject();
  v0[6] = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  v6 = *(v14 + 24);
  v7 = v2;

  v13 = (v6 + *v6);
  v8 = v6[1];
  v9 = swift_task_alloc();
  v0[7] = v9;
  *v9 = v0;
  v9[1] = sub_1E644C1BC;
  v11 = v0[2];
  v10 = v0[3];

  return v13(sub_1E644D274, v5, ObjectType, v10);
}

uint64_t sub_1E644C1BC()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1E644C2CC(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v16 - v8;
  [a2 setPresentingViewController_];
  v10 = sub_1E65E60A8();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_1E65E6058();
  v11 = a2;

  v12 = sub_1E65E6048();
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E85E0];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v11;
  v13[5] = a3;
  sub_1E64B80F8(0, 0, v9, &unk_1E6603BD0, v13);
}

uint64_t sub_1E644C420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a4;
  v5[20] = a5;
  v6 = sub_1E65E3B68();
  v5[21] = v6;
  v7 = *(v6 - 8);
  v5[22] = v7;
  v8 = *(v7 + 64) + 15;
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  sub_1E65E6058();
  v5[25] = sub_1E65E6048();
  v10 = sub_1E65E5FC8();
  v5[26] = v10;
  v5[27] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1E644C520, v10, v9);
}

uint64_t sub_1E644C520()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E6997868]) initWithContext_];
  v0[28] = v1;
  v0[2] = v0;
  v0[7] = v0 + 30;
  v0[3] = sub_1E644C660;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075C60, &unk_1E65F32A8);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1E6147908;
  v0[13] = &block_descriptor_19;
  v0[14] = v2;
  [v1 performDeviceToDeviceEncryptionStateRepairWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1E644C660()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 232) = v3;
  v4 = *(v1 + 216);
  v5 = *(v1 + 208);
  if (v3)
  {
    v6 = sub_1E644C984;
  }

  else
  {
    v6 = sub_1E644C790;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, v4);
}

uint64_t sub_1E644C790()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 240);
  sub_1E65DE328();
  v3 = sub_1E65E3B48();
  v4 = sub_1E65E6338();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v2;
    _os_log_impl(&dword_1E5DE9000, v3, v4, "Card Presented: %{BOOL}d", v5, 8u);
    MEMORY[0x1E694F1C0](v5, -1, -1);
  }

  v6 = *(v0 + 192);
  v7 = *(v0 + 168);
  v8 = *(v0 + 176);

  (*(v8 + 8))(v6, v7);
  v9 = *(v0 + 160);

  return MEMORY[0x1EEE6DFA0](sub_1E644C8A8, v9, 0);
}

uint64_t sub_1E644C8A8()
{
  v1 = v0[20];
  sub_1E644A670(0);
  v2 = v0[26];
  v3 = v0[27];

  return MEMORY[0x1EEE6DFA0](sub_1E644C910, v2, v3);
}

uint64_t sub_1E644C910()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E644C984()
{
  v23 = v0;
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v3 = *(v0 + 184);
  swift_willThrow();

  sub_1E65DE328();
  v4 = v1;
  v5 = sub_1E65E3B48();
  v6 = sub_1E65E6328();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 232);
    v8 = *(v0 + 176);
    v21 = *(v0 + 184);
    v9 = *(v0 + 168);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v10 = 136446210;
    *(v0 + 144) = v7;
    v12 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
    v13 = sub_1E65E5CE8();
    v15 = sub_1E5DFD4B0(v13, v14, &v22);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_1E5DE9000, v5, v6, "Error checking if Upgrade UI should be shown: %{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1E694F1C0](v11, -1, -1);
    MEMORY[0x1E694F1C0](v10, -1, -1);

    (*(v8 + 8))(v21, v9);
  }

  else
  {
    v17 = *(v0 + 176);
    v16 = *(v0 + 184);
    v18 = *(v0 + 168);

    (*(v17 + 8))(v16, v18);
  }

  v19 = *(v0 + 160);

  return MEMORY[0x1EEE6DFA0](sub_1E644C8A8, v19, 0);
}

uint64_t sub_1E644CB7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v9 - v4;
  v6 = sub_1E65E60A8();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = a1;

  sub_1E64B80F8(0, 0, v5, &unk_1E6603BB0, v7);
}

uint64_t sub_1E644CCA8()
{
  v1 = *(v0 + 16);
  sub_1E65E6018();
  sub_1E644D028(&qword_1ED071E30, MEMORY[0x1E69E8550]);
  *(v0 + 24) = swift_allocError();
  sub_1E65E5AE8();

  return MEMORY[0x1EEE6DFA0](sub_1E644CD6C, v1, 0);
}

uint64_t sub_1E644CD6C()
{
  v1 = *(v0 + 24);
  sub_1E644A670(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E644CDD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *v5;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1E5DFA78C;

  return sub_1E644AAB4(a1, a2, a3, a4, a5);
}

uint64_t sub_1E644CEA4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFA78C;

  return sub_1E644BB00(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1E644CF74(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E644CC88(a1, v4, v5, v6);
}

uint64_t sub_1E644D028(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E644D080(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1E644D0E8()
{
  result = qword_1ED079CF8;
  if (!qword_1ED079CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079CF8);
  }

  return result;
}

uint64_t sub_1E644D13C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountUpgradeDetour.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E644D1A0(uint64_t a1)
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
  v10[1] = sub_1E5DFA78C;

  return sub_1E644C024(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1E644D27C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E644C420(a1, v4, v5, v7, v6);
}

uint64_t sub_1E644D33C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1E644D3B0()
{
  result = qword_1ED079D00;
  if (!qword_1ED079D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079D00);
  }

  return result;
}

uint64_t sub_1E644D404(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v7 = *(*(v6 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v13 - v9;
  if (!*a1)
  {
    v11 = sub_1E65E60A8();
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
    sub_1E5DF650C(a2, v14);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    sub_1E5DF599C(v14, (v12 + 4));
    v12[9] = a3;

    result = sub_1E64B80F8(0, 0, v10, &unk_1E6603D30, v12);
    *a1 = result;
  }

  return result;
}

uint64_t sub_1E644D54C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v6 = *(*(type metadata accessor for ToastResource() - 8) + 64) + 15;
  v5[9] = swift_task_alloc();
  v7 = type metadata accessor for ToastAction();
  v5[10] = v7;
  v8 = *(v7 - 8);
  v5[11] = v8;
  v9 = *(v8 + 64) + 15;
  v5[12] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079D08, &qword_1E6603D38) - 8) + 64) + 15;
  v5[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E644D670, 0, 0);
}

uint64_t sub_1E644D670()
{
  v1 = v0[7];
  v2 = v1[3];
  v3 = __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v2 - 8);
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  (*(v4 + 16))(v6, v3, v2);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_1E65E6198();

  v7 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v8 = *(MEMORY[0x1E69E85B0] + 4);
  v9 = swift_task_alloc();
  v0[14] = v9;
  *v9 = v0;
  v9[1] = sub_1E644D828;
  v10 = v0[13];

  return MEMORY[0x1EEE6D8D0](v10, 0, 0);
}

uint64_t sub_1E644D828()
{
  v2 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 120) = v0;

  if (!v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E644D93C, 0, 0);
  }

  return result;
}

uint64_t sub_1E644D93C()
{
  v1 = *(v0 + 104);
  if ((*(*(v0 + 88) + 48))(v1, 1, *(v0 + 80)) == 1)
  {
    v2 = *(v0 + 96);
    v3 = *(v0 + 72);
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 96);
    sub_1E5E1BCD8(v1, v6, type metadata accessor for ToastAction);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v8 = *v6;
    *(v0 + 146) = *v6;
    if (EnumCaseMultiPayload == 1)
    {
      v9 = *(v0 + 96);
      v10 = *(v0 + 72);
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072838, &qword_1E65EBE80);
      v12 = *(v9 + *(v11 + 64));
      sub_1E5E1BCD8(v9 + *(v11 + 48), v10, type metadata accessor for ToastResource);
      *(v0 + 144) = v8;
      *(v0 + 145) = v12;
      v13 = swift_task_alloc();
      *(v0 + 136) = v13;
      *v13 = v0;
      v13[1] = sub_1E644DCE0;
      v15 = *(v0 + 64);
      v14 = *(v0 + 72);

      return sub_1E644DEBC((v0 + 144), v14, (v0 + 145));
    }

    else
    {
      sub_1E65E6058();
      *(v0 + 128) = sub_1E65E6048();
      v17 = sub_1E65E5FC8();

      return MEMORY[0x1EEE6DFA0](sub_1E644DB6C, v17, v16);
    }
  }
}

void sub_1E644DB6C()
{
  v1 = *(v0 + 146);
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);
  v4 = *(v0 + 64);

  sub_1E6451850(v4, v1);
  if (v3)
  {
  }

  else
  {

    MEMORY[0x1EEE6DFA0](sub_1E644DC1C, 0, 0);
  }
}

uint64_t sub_1E644DC1C()
{
  v1 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v2 = *(MEMORY[0x1E69E85B0] + 4);
  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_1E644D828;
  v4 = v0[13];

  return MEMORY[0x1EEE6D8D0](v4, 0, 0);
}

uint64_t sub_1E644DCE0()
{
  v1 = *(*v0 + 136);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E644DDDC, 0, 0);
}

uint64_t sub_1E644DDDC()
{
  sub_1E6451B88(v0[9], type metadata accessor for ToastResource);
  v1 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v2 = *(MEMORY[0x1E69E85B0] + 4);
  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_1E644D828;
  v4 = v0[13];

  return MEMORY[0x1EEE6D8D0](v4, 0, 0);
}

uint64_t sub_1E644DEBC(_BYTE *a1, uint64_t a2, _BYTE *a3)
{
  *(v4 + 288) = a2;
  *(v4 + 296) = v3;
  v7 = sub_1E65E3B68();
  *(v4 + 304) = v7;
  v8 = *(v7 - 8);
  *(v4 + 312) = v8;
  v9 = *(v8 + 64) + 15;
  *(v4 + 320) = swift_task_alloc();
  v10 = *(type metadata accessor for ToastResource() - 8);
  *(v4 + 328) = v10;
  *(v4 + 336) = *(v10 + 64);
  *(v4 + 344) = swift_task_alloc();
  *(v4 + 352) = swift_task_alloc();
  *(v4 + 426) = *a1;
  *(v4 + 427) = *a3;

  return MEMORY[0x1EEE6DFA0](sub_1E644E008, 0, 0);
}

uint64_t sub_1E644E008()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 296) + OBJC_IVAR____TtC10Blackbeard14ToastPresenter_composer;
  v3 = type metadata accessor for AppComposer();
  v4 = *(v2 + *(v3 + 20) + 8);
  sub_1E64F75B4(v2, *(v2 + *(v3 + 36)), *(v2 + *(v3 + 36) + 8), (v0 + 16));
  if (v4 >= 2)
  {
    if (v4 == 2)
    {
      return sub_1E65E69D8();
    }

    v26 = *(v0 + 427);
    v28 = *(v0 + 336);
    v27 = *(v0 + 344);
    v29 = *(v0 + 328);
    v30 = *(v0 + 288);
    v31 = *(v0 + 296);
    v33 = *(v31 + OBJC_IVAR____TtC10Blackbeard14ToastPresenter_scheduler);
    v32 = *(v31 + OBJC_IVAR____TtC10Blackbeard14ToastPresenter_scheduler + 8);
    ObjectType = swift_getObjectType();
    *(v0 + 424) = v26;
    sub_1E6451F30(v30, v27, type metadata accessor for ToastResource);
    v35 = (*(v29 + 80) + 24) & ~*(v29 + 80);
    v36 = v35 + v28;
    v37 = swift_allocObject();
    *(v0 + 384) = v37;
    *(v37 + 16) = v31;
    sub_1E5E1BCD8(v27, v37 + v35, type metadata accessor for ToastResource);
    *(v37 + v36) = 3;
    v38 = v37 + (v36 & 0xFFFFFFFFFFFFFFF8);
    v39 = *(v0 + 32);
    *(v38 + 8) = *(v0 + 16);
    v40 = *(v0 + 64);
    *(v38 + 72) = *(v0 + 80);
    v41 = *(v0 + 48);
    *(v38 + 56) = v40;
    *(v38 + 40) = v41;
    *(v38 + 24) = v39;

    sub_1E6169A3C(v0 + 16, v0 + 96);
    v42 = swift_task_alloc();
    *(v0 + 392) = v42;
    *v42 = v0;
    v42[1] = sub_1E644E564;
    v20 = &unk_1E6603D50;
    v21 = (v0 + 424);
    v22 = v37;
    v23 = ObjectType;
    v24 = v32;
  }

  else
  {
    v5 = *(v0 + 427);
    v6 = *(v0 + 426);
    v7 = *(v0 + 352);
    v8 = *(v0 + 328);
    v9 = *(v0 + 336);
    v10 = *(v0 + 288);
    v11 = *(v0 + 296);
    v12 = *(v11 + OBJC_IVAR____TtC10Blackbeard14ToastPresenter_scheduler);
    v43 = *(v11 + OBJC_IVAR____TtC10Blackbeard14ToastPresenter_scheduler + 8);
    v13 = swift_getObjectType();
    *(v0 + 425) = v5;
    sub_1E6451F30(v10, v7, type metadata accessor for ToastResource);
    v14 = (*(v8 + 80) + 24) & ~*(v8 + 80);
    v15 = swift_allocObject();
    *(v0 + 360) = v15;
    *(v15 + 16) = v11;
    sub_1E5E1BCD8(v7, v15 + v14, type metadata accessor for ToastResource);
    v16 = v15 + ((v9 + v14 + 7) & 0xFFFFFFFFFFFFFFF8);
    v17 = *(v0 + 64);
    *(v16 + 32) = *(v0 + 48);
    *(v16 + 48) = v17;
    *(v16 + 64) = *(v0 + 80);
    v18 = *(v0 + 32);
    *v16 = *(v0 + 16);
    *(v16 + 16) = v18;
    *(v16 + 80) = v6;

    sub_1E6169A3C(v0 + 16, v0 + 176);
    v19 = swift_task_alloc();
    *(v0 + 368) = v19;
    *v19 = v0;
    v19[1] = sub_1E644E3C4;
    v20 = &unk_1E6603D60;
    v21 = (v0 + 425);
    v22 = v15;
    v23 = v13;
    v24 = v43;
  }

  return sub_1E61261B8(v21, v20, v22, v23, v24);
}

uint64_t sub_1E644E3C4()
{
  v2 = *v1;
  v3 = *(*v1 + 368);
  v7 = *v1;
  *(*v1 + 376) = v0;

  v4 = *(v2 + 360);

  if (v0)
  {
    v5 = sub_1E644E9B8;
  }

  else
  {
    v5 = sub_1E644E4E8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E644E4E8()
{
  sub_1E6451CFC((v0 + 2));
  v2 = v0[43];
  v1 = v0[44];
  v3 = v0[40];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E644E564()
{
  v2 = *v1;
  v3 = *(*v1 + 392);
  v7 = *v1;
  *(*v1 + 400) = v0;

  v4 = *(v2 + 384);

  if (v0)
  {
    v5 = sub_1E644E7C0;
  }

  else
  {
    v5 = sub_1E6451F98;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E644E688()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 296);

  sub_1E6451850(v2, 0);

  return MEMORY[0x1EEE6DFA0](sub_1E644E738, 0, 0);
}

uint64_t sub_1E644E738()
{
  v1 = v0[51];
  sub_1E6451CFC((v0 + 2));

  v3 = v0[43];
  v2 = v0[44];
  v4 = v0[40];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E644E7C0()
{
  v22 = v0;
  v1 = v0[50];
  v0[51] = v1;
  v2 = v0[40];
  sub_1E65DE348();
  v3 = v1;
  v4 = sub_1E65E3B48();
  v5 = sub_1E65E6338();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[39];
    v6 = v0[40];
    v8 = v0[38];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = v0[32];
    v12 = MEMORY[0x1E694E6C0](v0[33], v0[34]);
    v14 = sub_1E5DFD4B0(v12, v13, &v21);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_1E5DE9000, v4, v5, "[ToastPresenter] Failed to present toast with error %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1E694F1C0](v10, -1, -1);
    MEMORY[0x1E694F1C0](v9, -1, -1);

    (*(v7 + 8))(v6, v8);
  }

  else
  {
    v16 = v0[39];
    v15 = v0[40];
    v17 = v0[38];

    (*(v16 + 8))(v15, v17);
  }

  sub_1E65E6058();
  v0[52] = sub_1E65E6048();
  v19 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E644E688, v19, v18);
}

uint64_t sub_1E644E9B8()
{
  v22 = v0;
  v1 = v0[47];
  v0[51] = v1;
  v2 = v0[40];
  sub_1E65DE348();
  v3 = v1;
  v4 = sub_1E65E3B48();
  v5 = sub_1E65E6338();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[39];
    v6 = v0[40];
    v8 = v0[38];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = v0[32];
    v12 = MEMORY[0x1E694E6C0](v0[33], v0[34]);
    v14 = sub_1E5DFD4B0(v12, v13, &v21);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_1E5DE9000, v4, v5, "[ToastPresenter] Failed to present toast with error %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1E694F1C0](v10, -1, -1);
    MEMORY[0x1E694F1C0](v9, -1, -1);

    (*(v7 + 8))(v6, v8);
  }

  else
  {
    v16 = v0[39];
    v15 = v0[40];
    v17 = v0[38];

    (*(v16 + 8))(v15, v17);
  }

  sub_1E65E6058();
  v0[52] = sub_1E65E6048();
  v19 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E644E688, v19, v18);
}

uint64_t sub_1E644EBB0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 280) = a2;
  *(v4 + 288) = a4;
  *(v4 + 480) = a3;
  *(v4 + 272) = a1;
  v5 = type metadata accessor for AppComposer();
  *(v4 + 296) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v4 + 304) = swift_task_alloc();
  v7 = sub_1E65E3B68();
  *(v4 + 312) = v7;
  v8 = *(v7 - 8);
  *(v4 + 320) = v8;
  v9 = *(v8 + 64) + 15;
  *(v4 + 328) = swift_task_alloc();
  v10 = type metadata accessor for ToastResource();
  *(v4 + 336) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v4 + 344) = swift_task_alloc();
  *(v4 + 352) = swift_task_alloc();
  v12 = sub_1E65D7848();
  *(v4 + 360) = v12;
  v13 = *(v12 - 8);
  *(v4 + 368) = v13;
  v14 = *(v13 + 64) + 15;
  *(v4 + 376) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E644ED40, 0, 0);
}

uint64_t sub_1E644ED40()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 272);
  v3 = *(v0 + 280);
  v4 = OBJC_IVAR____TtC10Blackbeard14ToastPresenter_composer;
  *(v0 + 384) = OBJC_IVAR____TtC10Blackbeard14ToastPresenter_composer;
  v5 = v2 + v4;
  v6 = *(v2 + v4);
  swift_getKeyPath();
  sub_1E65E4EC8();

  v7 = sub_1E64F7C2C(v1);
  v9 = v8;
  *(v0 + 392) = v7;
  *(v0 + 400) = v8;
  v10 = [objc_allocWithZone(BBBulletinInfo) init];
  *(v0 + 408) = v10;
  if (v9)
  {

    v11 = sub_1E65E5C48();
  }

  else
  {
    v11 = 0;
  }

  v12 = *(v0 + 376);
  v13 = *(v0 + 280);
  v14 = *(v0 + 480);
  [v10 setTitle_];

  sub_1E64F81F4(v12, v14);
  if (v15)
  {
    v16 = sub_1E65E5C48();
  }

  else
  {
    v16 = 0;
  }

  v17 = *(v0 + 376);
  v18 = *(v0 + 280);
  [v10 setSubtitle_];

  sub_1E64F8538(v17);
  if (v19)
  {
    v20 = sub_1E65E5C48();
  }

  else
  {
    v20 = 0;
  }

  v21 = *(v0 + 296);
  [v10 setFooterMessage_];

  v22 = *(v21 + 20);
  v23 = swift_task_alloc();
  *(v0 + 416) = v23;
  *v23 = v0;
  v23[1] = sub_1E644EF40;
  v24 = *(v0 + 280);

  return sub_1E64F8AD0(v5 + v22);
}

uint64_t sub_1E644EF40(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 416);
  v9 = *v3;
  v4[53] = a1;
  v4[54] = a2;
  v4[55] = v2;

  if (v2)
  {
    v6 = v4[50];

    v7 = sub_1E644F948;
  }

  else
  {
    v7 = sub_1E644F060;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E644F060()
{
  v48 = v0;
  v1 = *(v0 + 432);
  if (v1 >> 60 == 15)
  {
    v2 = 0;
  }

  else
  {
    v3 = *(v0 + 424);
    v4 = *(v0 + 432);
    v2 = sub_1E65D7508();
    sub_1E61681A0(v3, v1);
  }

  v5 = *(v0 + 352);
  v6 = *(v0 + 336);
  v7 = *(v0 + 280);
  [*(v0 + 408) setImageData_];

  sub_1E6451F30(v7, v5, type metadata accessor for ToastResource);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v9 = 0;
      goto LABEL_11;
    }
  }

  else if (EnumCaseMultiPayload != 1)
  {
    sub_1E6451B88(*(v0 + 352), type metadata accessor for ToastResource);
    v9 = 0;
    goto LABEL_11;
  }

  v9 = sub_1E65E5C48();

LABEL_11:
  v10 = *(v0 + 400);
  v11 = *(v0 + 328);
  [*(v0 + 408) setSymbolName_];

  sub_1E65DE348();

  v12 = sub_1E65E3B48();
  v13 = sub_1E65E6338();

  if (os_log_type_enabled(v12, v13))
  {
    v15 = *(v0 + 392);
    v14 = *(v0 + 400);
    v16 = *(v0 + 320);
    v45 = *(v0 + 328);
    v17 = *(v0 + 312);
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v47 = v19;
    *v18 = 136315138;
    *(v0 + 256) = v15;
    *(v0 + 264) = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072978, &unk_1E65F0E80);
    v20 = sub_1E65E6648();
    v22 = v21;

    v23 = sub_1E5DFD4B0(v20, v22, &v47);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_1E5DE9000, v12, v13, "[ToastPresenter] Requesting presentation of PBSBulletin for (%s)", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x1E694F1C0](v19, -1, -1);
    MEMORY[0x1E694F1C0](v18, -1, -1);

    (*(v16 + 8))(v45, v17);
  }

  else
  {
    v25 = *(v0 + 320);
    v24 = *(v0 + 328);
    v26 = *(v0 + 312);

    (*(v25 + 8))(v24, v26);
  }

  v46 = *(v0 + 408);
  v27 = *(v0 + 344);
  v28 = *(v0 + 304);
  v30 = *(v0 + 280);
  v29 = *(v0 + 288);
  v31 = *(v0 + 272);
  sub_1E6451F30(v31 + *(v0 + 384), v28, type metadata accessor for AppComposer);
  sub_1E6451F30(v30, v27, type metadata accessor for ToastResource);
  v32 = *(v31 + OBJC_IVAR____TtC10Blackbeard14ToastPresenter_itemRoutingContext);
  v33 = *(v31 + OBJC_IVAR____TtC10Blackbeard14ToastPresenter_itemRoutingContext + 8);
  v34 = type metadata accessor for ToastDelegate();
  v35 = objc_allocWithZone(v34);
  sub_1E6451F30(v28, &v35[OBJC_IVAR____TtC10Blackbeard13ToastDelegate_composer], type metadata accessor for AppComposer);
  v36 = &v35[OBJC_IVAR____TtC10Blackbeard13ToastDelegate_itemRoutingContext];
  *v36 = v32;
  *(v36 + 1) = v33;
  sub_1E6451F30(v27, &v35[OBJC_IVAR____TtC10Blackbeard13ToastDelegate_toastResource], type metadata accessor for ToastResource);
  v37 = &v35[OBJC_IVAR____TtC10Blackbeard13ToastDelegate_pageMetrics];
  v38 = v29[1];
  v39 = v29[2];
  v40 = v29[4];
  *(v37 + 3) = v29[3];
  *(v37 + 4) = v40;
  *(v37 + 1) = v38;
  *(v37 + 2) = v39;
  *v37 = *v29;

  sub_1E6169A3C(v29, v0 + 80);
  *(v0 + 224) = v35;
  *(v0 + 232) = v34;
  v41 = objc_msgSendSuper2((v0 + 224), sel_init);
  *(v0 + 448) = v41;
  sub_1E6451B88(v27, type metadata accessor for ToastResource);
  sub_1E6451B88(v28, type metadata accessor for AppComposer);
  v42 = [objc_opt_self() sharedBulletinServiceWithDelegate_];
  *(v0 + 456) = v42;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 240;
  *(v0 + 24) = sub_1E644F5D4;
  v43 = swift_continuation_init();
  *(v0 + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079D20, &qword_1E6603DB8);
  *(v0 + 160) = MEMORY[0x1E69E9820];
  *(v0 + 168) = 1107296256;
  *(v0 + 176) = sub_1E644FAD8;
  *(v0 + 184) = &block_descriptor_20;
  *(v0 + 192) = v43;
  [v42 presentBulletinWithInfo:v46 withCompletion:?];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1E644F5D4()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E644F6B4, 0, 0);
}

uint64_t sub_1E644F6B4()
{
  v1 = *(v0 + 456);

  swift_unknownObjectRelease();
  v2 = swift_task_alloc();
  *(v0 + 464) = v2;
  *v2 = v0;
  v2[1] = sub_1E644F75C;
  v4 = *(v0 + 272);
  v3 = *(v0 + 280);

  return sub_1E644FB4C(v3);
}

uint64_t sub_1E644F75C()
{
  v2 = *(*v1 + 464);
  v5 = *v1;
  *(*v1 + 472) = v0;

  if (v0)
  {
    v3 = sub_1E644FA0C;
  }

  else
  {
    v3 = sub_1E644F870;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E644F870()
{
  v1 = *(v0 + 448);
  v3 = *(v0 + 368);
  v2 = *(v0 + 376);
  v5 = *(v0 + 352);
  v4 = *(v0 + 360);
  v6 = *(v0 + 344);
  v7 = *(v0 + 328);
  v8 = *(v0 + 304);

  (*(v3 + 8))(v2, v4);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1E644F948()
{
  v1 = *(v0 + 440);
  v2 = *(v0 + 352);
  v3 = *(v0 + 344);
  v4 = *(v0 + 328);
  v5 = *(v0 + 304);
  (*(*(v0 + 368) + 8))(*(v0 + 376), *(v0 + 360));

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1E644FA0C()
{
  v1 = *(v0 + 448);

  v2 = *(v0 + 472);
  v3 = *(v0 + 352);
  v4 = *(v0 + 344);
  v5 = *(v0 + 328);
  v6 = *(v0 + 304);
  (*(*(v0 + 368) + 8))(*(v0 + 376), *(v0 + 360));

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1E644FAD8(uint64_t a1, char a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  v7 = *(*(*v5 + 64) + 40);
  *v7 = a2;
  *(v7 + 8) = a3;
  v8 = a3;

  return MEMORY[0x1EEE6DED8](v6);
}

uint64_t sub_1E644FB4C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752D8, &qword_1E660CC30) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = sub_1E65DA5B8();
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v7 = sub_1E65E3B68();
  v2[9] = v7;
  v8 = *(v7 - 8);
  v2[10] = v8;
  v9 = *(v8 + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v10 = type metadata accessor for ToastResource();
  v2[13] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v12 = sub_1E65DBB88();
  v2[17] = v12;
  v13 = *(v12 - 8);
  v2[18] = v13;
  v14 = *(v13 + 64) + 15;
  v2[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E644FD5C, 0, 0);
}

uint64_t sub_1E644FD5C()
{
  v82 = v0;
  v1 = v0[13];
  sub_1E6451F30(v0[2], v0[16], type metadata accessor for ToastResource);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v2 = v0[15];
    v3 = v0[12];
    v4 = v0[2];
    (*(v0[18] + 32))(v0[19], v0[16], v0[17]);
    sub_1E65DE348();
    sub_1E6451F30(v4, v2, type metadata accessor for ToastResource);
    v5 = sub_1E65E3B48();
    v6 = sub_1E65E6338();
    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[15];
    if (v7)
    {
      v10 = v0[13];
      v9 = v0[14];
      v78 = v0[12];
      v12 = v0[9];
      v11 = v0[10];
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v81 = v14;
      *v13 = 136315138;
      sub_1E6451F30(v8, v9, type metadata accessor for ToastResource);
      v15 = sub_1E65E5CE8();
      v17 = v16;
      sub_1E6451B88(v8, type metadata accessor for ToastResource);
      v18 = sub_1E5DFD4B0(v15, v17, &v81);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_1E5DE9000, v5, v6, "[ToastPresenter] Received request to journal notification record for toastResource %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1E694F1C0](v14, -1, -1);
      MEMORY[0x1E694F1C0](v13, -1, -1);

      v19 = v78;
      v79 = *(v11 + 8);
      v79(v19, v12);
    }

    else
    {
      v20 = v0[12];
      v21 = v0[9];
      v22 = v0[10];

      sub_1E6451B88(v8, type metadata accessor for ToastResource);
      v79 = *(v22 + 8);
      v79(v20, v21);
    }

    v23 = v0[19];
    v24 = sub_1E65DBB48();
    v25 = *(v24 + 16);
    if (v25)
    {
      v26 = v0[6];
      v81 = MEMORY[0x1E69E7CC0];
      sub_1E601D118(0, v25, 0);
      v27 = v81;
      v28 = (v24 + 40);
      do
      {
        v29 = v0[8];
        v30 = v0[4];
        v31 = *(v28 - 1);
        v32 = *v28;

        sub_1E65D7688();
        v33 = sub_1E65D76A8();
        (*(*(v33 - 8) + 56))(v30, 0, 1, v33);
        sub_1E65DA5A8();
        v81 = v27;
        v35 = *(v27 + 16);
        v34 = *(v27 + 24);
        if (v35 >= v34 >> 1)
        {
          sub_1E601D118(v34 > 1, v35 + 1, 1);
          v27 = v81;
        }

        v36 = v0[8];
        v37 = v0[5];
        *(v27 + 16) = v35 + 1;
        (*(v26 + 32))(v27 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v35, v36, v37);
        v28 += 2;
        --v25;
      }

      while (v25);
    }

    else
    {

      v27 = MEMORY[0x1E69E7CC0];
    }

    v0[20] = v27;
    v38 = v0[11];
    sub_1E65DE348();

    v39 = sub_1E65E3B48();
    v40 = sub_1E65E6338();

    v41 = os_log_type_enabled(v39, v40);
    v42 = v0[10];
    v43 = v0[11];
    v44 = v0[9];
    if (v41)
    {
      v45 = v0[5];
      v77 = v0[11];
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v81 = v47;
      *v46 = 136315138;
      v48 = MEMORY[0x1E694D940](v27, v45);
      v50 = sub_1E5DFD4B0(v48, v49, &v81);

      *(v46 + 4) = v50;
      _os_log_impl(&dword_1E5DE9000, v39, v40, "[ToastPresenter] Inserting new achievement notification records %s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v47);
      MEMORY[0x1E694F1C0](v47, -1, -1);
      MEMORY[0x1E694F1C0](v46, -1, -1);

      v51 = v77;
    }

    else
    {

      v51 = v43;
    }

    result = (v79)(v51, v44);
    v53 = v0[3];
    v54 = *(v27 + 16);
    v55 = OBJC_IVAR____TtC10Blackbeard14ToastPresenter_composer;
    v0[21] = v54;
    v0[22] = v55;
    if (v54)
    {
      v56 = v0[6];
      v0[23] = 0;
      v57 = v0[20];
      if (*(v57 + 16))
      {
        v58 = v53 + v55;
        (*(v56 + 16))(v0[7], v57 + ((*(v56 + 80) + 32) & ~*(v56 + 80)), v0[5]);
        v59 = *(type metadata accessor for AppComposer() + 20);
        v60 = v58 + v59 + *(type metadata accessor for AppEnvironment() + 40);
        v61 = AwardsService.journalAchievementNotificationRecord.getter();
        v0[24] = v62;
        v80 = (v61 + *v61);
        v63 = v61[1];
        v64 = swift_task_alloc();
        v0[25] = v64;
        *v64 = v0;
        v64[1] = sub_1E6450454;
        v65 = v0[7];

        return v80(v65);
      }

      else
      {
        __break(1u);
      }

      return result;
    }

    v66 = v0[20];
    (*(v0[18] + 8))(v0[19], v0[17]);
  }

  else
  {
    sub_1E6451B88(v0[16], type metadata accessor for ToastResource);
  }

  v67 = v0[19];
  v68 = v0[15];
  v69 = v0[16];
  v70 = v0[14];
  v72 = v0[11];
  v71 = v0[12];
  v74 = v0[7];
  v73 = v0[8];
  v75 = v0[4];

  v76 = v0[1];

  return v76();
}

uint64_t sub_1E6450454()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;
  v2[26] = v0;

  v5 = v2[24];
  if (v0)
  {
    v6 = v2[20];
    (*(v2[6] + 8))(v2[7], v2[5]);

    v7 = sub_1E645082C;
  }

  else
  {
    (*(v2[6] + 8))(v2[7], v2[5]);

    v7 = sub_1E64505D0;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

void sub_1E64505D0()
{
  v1 = v0[23] + 1;
  if (v1 == v0[21])
  {
    v2 = v0[20];
    (*(v0[18] + 8))(v0[19], v0[17]);

    v3 = v0[19];
    v4 = v0[15];
    v5 = v0[16];
    v6 = v0[14];
    v8 = v0[11];
    v7 = v0[12];
    v10 = v0[7];
    v9 = v0[8];
    v11 = v0[4];

    v12 = v0[1];

    v12();
  }

  else
  {
    v0[23] = v1;
    v13 = v0[20];
    if (v1 >= *(v13 + 16))
    {
      __break(1u);
    }

    else
    {
      v14 = v0[3] + v0[22];
      (*(v0[6] + 16))(v0[7], v13 + ((*(v0[6] + 80) + 32) & ~*(v0[6] + 80)) + *(v0[6] + 72) * v1, v0[5]);
      v15 = v14 + *(type metadata accessor for AppComposer() + 20);
      v16 = v15 + *(type metadata accessor for AppEnvironment() + 40);
      v17 = AwardsService.journalAchievementNotificationRecord.getter();
      v0[24] = v18;
      v22 = (v17 + *v17);
      v19 = v17[1];
      v20 = swift_task_alloc();
      v0[25] = v20;
      *v20 = v0;
      v20[1] = sub_1E6450454;
      v21 = v0[7];

      v22(v21);
    }
  }
}

uint64_t sub_1E645082C()
{
  v1 = v0[16];
  v3 = v0[14];
  v2 = v0[15];
  v5 = v0[11];
  v4 = v0[12];
  v7 = v0[7];
  v6 = v0[8];
  v8 = v0[4];
  (*(v0[18] + 8))(v0[19], v0[17]);

  v9 = v0[1];
  v10 = v0[26];

  return v9();
}

uint64_t sub_1E645091C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 112) = a4;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000) - 8) + 64) + 15;
  *(v4 + 40) = swift_task_alloc();
  v6 = sub_1E65E3B68();
  *(v4 + 48) = v6;
  v7 = *(v6 - 8);
  *(v4 + 56) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 64) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6450A1C, 0, 0);
}

uint64_t sub_1E6450A1C()
{
  v1 = v0[2];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = v0[8];

    sub_1E65DE348();
    v4 = sub_1E65E3B48();
    v5 = sub_1E65E6338();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1E5DE9000, v4, v5, "[ToastPresenter] Dismissing currently presented toast early due to incoming toast presentation request", v6, 2u);
      MEMORY[0x1E694F1C0](v6, -1, -1);
    }

    v8 = v0[7];
    v7 = v0[8];
    v9 = v0[6];
    v10 = v0[2];

    (*(v8 + 8))(v7, v9);
    if (*(v10 + OBJC_IVAR____TtC10Blackbeard14ToastPresenter_dismissTask))
    {
      v11 = *(v10 + OBJC_IVAR____TtC10Blackbeard14ToastPresenter_dismissTask);

      sub_1E65E6148();
    }

    sub_1E65E6058();
    v0[9] = sub_1E65E6048();
    v12 = sub_1E65E5FC8();
    v14 = v13;
    v15 = sub_1E6450BFC;
  }

  else
  {
    v0[11] = 0;
    sub_1E65E6058();
    v0[12] = sub_1E65E6048();
    v12 = sub_1E65E5FC8();
    v14 = v16;
    v15 = sub_1E6450D4C;
  }

  return MEMORY[0x1EEE6DFA0](v15, v12, v14);
}

uint64_t sub_1E6450BFC()
{
  v1 = v0[9];
  v2 = v0[2];

  sub_1E6451850(v2, 1);
  v0[10] = 0;

  return MEMORY[0x1EEE6DFA0](sub_1E6450CB0, 0, 0);
}

uint64_t sub_1E6450CB0()
{
  v0[11] = v0[10];
  sub_1E65E6058();
  v0[12] = sub_1E65E6048();
  v2 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6450D4C, v2, v1);
}

void sub_1E6450D4C()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 112);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 16);

  sub_1E6451128(v4, v6, v5, v3 & 1);
  if (v2)
  {
  }

  else
  {

    MEMORY[0x1EEE6DFA0](sub_1E6450E14, 0, 0);
  }
}

uint64_t sub_1E6450E14()
{
  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_1E6450EA8;
  v3 = v0[2];
  v2 = v0[3];

  return sub_1E644FB4C(v2);
}

uint64_t sub_1E6450EA8()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v2 + 64);
    v6 = *(v2 + 40);

    v7 = *(v4 + 8);

    return v7();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1E6451000, 0, 0);
  }
}

uint64_t sub_1E6451000()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[2];
  v4 = sub_1E65E60A8();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v3;

  v6 = sub_1E64B80F8(0, 0, v2, &unk_1E6603D78, v5);
  v7 = *(v3 + OBJC_IVAR____TtC10Blackbeard14ToastPresenter_dismissTask);
  *(v3 + OBJC_IVAR____TtC10Blackbeard14ToastPresenter_dismissTask) = v6;

  v8 = v0[1];

  return v8();
}

void sub_1E6451128(uint64_t a1, uint64_t a2, __int128 *a3, int a4)
{
  v40 = a4;
  v39 = type metadata accessor for ToastResource();
  v7 = *(*(v39 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v39);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v36 - v11;
  v41 = sub_1E65E3B68();
  v13 = *(v41 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079D10, &qword_1E6603D80);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  sub_1E64F8F6C((a2 + OBJC_IVAR____TtC10Blackbeard14ToastPresenter_composer), *(a2 + OBJC_IVAR____TtC10Blackbeard14ToastPresenter_itemRoutingContext), *(a2 + OBJC_IVAR____TtC10Blackbeard14ToastPresenter_itemRoutingContext + 8), a3, &v36 - v19);
  v20 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079D18, &qword_1E6603D88));
  v21 = sub_1E65E3DC8();
  sub_1E65E3DB8();
  swift_unknownObjectWeakAssign();
  sub_1E65DE348();
  v22 = v12;
  sub_1E6451F30(a1, v12, type metadata accessor for ToastResource);
  v42 = v16;
  v23 = sub_1E65E3B48();
  v24 = sub_1E65E6338();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v38 = v21;
    v26 = v25;
    v27 = swift_slowAlloc();
    v37 = v13;
    v28 = v27;
    v43 = v27;
    *v26 = 136315138;
    sub_1E6451F30(v12, v10, type metadata accessor for ToastResource);
    v29 = sub_1E65E5CE8();
    v31 = v30;
    sub_1E6451B88(v22, type metadata accessor for ToastResource);
    v32 = sub_1E5DFD4B0(v29, v31, &v43);

    *(v26 + 4) = v32;
    _os_log_impl(&dword_1E5DE9000, v23, v24, "[ToastPresenter] Presenting toast for toastResource %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    MEMORY[0x1E694F1C0](v28, -1, -1);
    v33 = v26;
    v21 = v38;
    MEMORY[0x1E694F1C0](v33, -1, -1);

    (*(v37 + 8))(v42, v41);
  }

  else
  {

    sub_1E6451B88(v12, type metadata accessor for ToastResource);
    (*(v13 + 8))(v42, v41);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v35 = Strong;
    sub_1E62DE854(v21, (v40 & 1) == 0);
  }
}

uint64_t sub_1E6451504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = *(MEMORY[0x1E69CAD78] + 4);
  v6 = swift_task_alloc();
  *(v4 + 24) = v6;
  *v6 = v4;
  v6[1] = sub_1E645159C;
  v7.n128_u64[0] = 7.0;

  return MEMORY[0x1EEE34840](v7);
}

uint64_t sub_1E645159C()
{
  v2 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v3 = sub_1E64517F0;
  }

  else
  {
    v3 = sub_1E64516B0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E64516B0()
{
  sub_1E65E6058();
  *(v0 + 40) = sub_1E65E6048();
  v2 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6451744, v2, v1);
}

void sub_1E6451744()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];

  sub_1E6451850(v3, 0);
  if (v2)
  {
  }

  else
  {

    MEMORY[0x1EEE6DFA0](sub_1E5F87068, 0, 0);
  }
}

uint64_t sub_1E64517F0()
{
  v1 = *(v0 + 8);

  return v1();
}

void sub_1E6451850(uint64_t a1, char a2)
{
  v3 = sub_1E65E3B68();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = swift_unknownObjectWeakLoadStrong();
    if (v10)
    {
      v11 = v10;
      sub_1E62DED74(v9, a2 & 1);
    }
  }

  else
  {
    sub_1E65DE348();
    v12 = sub_1E65E3B48();
    v13 = sub_1E65E6338();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1E5DE9000, v12, v13, "[ToastPresenter] No existing toast view, nothing to dismiss", v14, 2u);
      MEMORY[0x1E694F1C0](v14, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1E64519E4()
{
  sub_1E6451B88(v0 + OBJC_IVAR____TtC10Blackbeard14ToastPresenter_composer, type metadata accessor for AppComposer);
  v1 = *(v0 + OBJC_IVAR____TtC10Blackbeard14ToastPresenter_itemRoutingContext + 8);

  v2 = *(v0 + OBJC_IVAR____TtC10Blackbeard14ToastPresenter_scheduler);
  swift_unknownObjectRelease();
  v3 = *(v0 + OBJC_IVAR____TtC10Blackbeard14ToastPresenter_state);

  MEMORY[0x1E694F2D0](v0 + OBJC_IVAR____TtC10Blackbeard14ToastPresenter_currentToastView);
  MEMORY[0x1E694F2D0](v0 + OBJC_IVAR____TtC10Blackbeard14ToastPresenter_presentationContext);
  v4 = *(v0 + OBJC_IVAR____TtC10Blackbeard14ToastPresenter_dismissTask);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1E6451AC8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E644D54C(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_1E6451B88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E6451BE8()
{
  v2 = *(type metadata accessor for ToastResource() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(v0 + 16);
  v6 = v0 + (v4 & 0xFFFFFFFFFFFFFFF8);
  v7 = *(v0 + v4);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1E5DFA78C;

  return sub_1E644EBB0(v5, v0 + v3, v7, v6 + 8);
}

uint64_t sub_1E6451CFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075CF0, &qword_1E65F3700);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E6451D64()
{
  v2 = *(type metadata accessor for ToastResource() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *(v5 + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E645091C(v4, v0 + v3, v5, v6);
}

uint64_t sub_1E6451E7C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFA78C;

  return sub_1E6451504(a1, v4, v5, v6);
}

uint64_t sub_1E6451F30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1E6451FE4(uint64_t *a1, int a2, int a3, void *aBlock, const void *a5)
{
  v6 = *a1;
  v7 = *MEMORY[0x1E69E7D40];
  _Block_copy(aBlock);
  _Block_copy(a5);
  v8 = *((v7 & v6) + 0x50);
  v9 = *((v7 & v6) + 0x58);

  sub_1E64520D0();
}

void sub_1E6452068(void *a1)
{
  v1 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x50);
  v2 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x58);
  sub_1E6452100();
}

uint64_t PersonalizationModalityPreference.transformed()()
{
  sub_1E65DAA58();
  v0 = sub_1E65DAA78();
  sub_1E600AA08(v0);

  v1 = sub_1E65DAA68();
  sub_1E600AA08(v1);

  return sub_1E65E2A08();
}

uint64_t sub_1E64521C0@<X0>(uint64_t *a1@<X8>)
{
  v171 = a1;
  v165 = type metadata accessor for ServiceSubscriptionService();
  Description = v165[-1].Description;
  v2 = Description[8];
  MEMORY[0x1EEE9AC00](v165);
  v162 = v3;
  v163 = &v138 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = type metadata accessor for AccountService();
  v160 = v161[-1].Description;
  v4 = v160[8];
  MEMORY[0x1EEE9AC00](v161);
  v158 = v5;
  v159 = &v138 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = type metadata accessor for RemoteBrowsingService();
  v156 = v157[-1].Description;
  v6 = v156[8];
  MEMORY[0x1EEE9AC00](v157);
  v154 = v7;
  v155 = &v138 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = type metadata accessor for WorkoutPlanService();
  v153 = v169[-1].Description;
  v8 = v153[8];
  MEMORY[0x1EEE9AC00](v169);
  v149 = v9;
  v151 = &v138 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = type metadata accessor for ArchivedSessionService();
  v148 = v184[-1].Description;
  v10 = v148[8];
  MEMORY[0x1EEE9AC00](v184);
  v142 = v11;
  v144 = &v138 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v188 = &v138 - v14;
  v185 = type metadata accessor for CatalogService();
  v15 = v185[-1].Description;
  v16 = v15[8];
  MEMORY[0x1EEE9AC00](v185);
  v181 = v17;
  v18 = &v138 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = type metadata accessor for ConfigurationService();
  v19 = v182[-1].Description;
  v20 = v19[8];
  MEMORY[0x1EEE9AC00](v182);
  v180 = v21;
  v22 = &v138 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = type metadata accessor for RecommendationService();
  v174 = v167[-1].Description;
  v23 = v174[8];
  MEMORY[0x1EEE9AC00](v167);
  v168 = v24;
  v173 = &v138 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079DB8, &qword_1E6603E10);
  v170 = *(v176 - 8);
  v25 = *(v170 + 64);
  v26 = MEMORY[0x1EEE9AC00](v176);
  v177 = &v138 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = v27;
  MEMORY[0x1EEE9AC00](v26);
  v186 = &v138 - v28;
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v29 = sub_1E65E3B68();
  __swift_project_value_buffer(v29, qword_1EE2EA2A0);
  sub_1E65E3B18();
  v30 = v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment;
  v183 = v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment;
  v31 = type metadata accessor for AppEnvironment();
  v150 = v31[6];
  v172 = v31[8];
  v32 = v31[12];
  v33 = v31[13];
  v34 = v31[24];
  v139 = v31[25];
  v147 = v34;
  v152 = v31[27];
  v166 = v31[36];
  v178 = *(v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_store);
  KeyPath = swift_getKeyPath();
  v35 = v174;
  v145 = v174[2];
  v146 = (v174 + 2);
  v36 = v30 + v34;
  v37 = v167;
  v145(v173, v36, v167);
  v38 = v182;
  (v19[2])(v22, v30 + v33, v182);
  v39 = v15[2];
  v175 = v18;
  v39(v18, v30 + v32, v185);
  v143 = *(v35 + 80);
  v40 = (v143 + 16) & ~v143;
  v140 = v143 | 7;
  v41 = (v168 + *(v19 + 80) + v40) & ~*(v19 + 80);
  v42 = (v180 + *(v15 + 80) + v41) & ~*(v15 + 80);
  v43 = swift_allocObject();
  v44 = v35[4];
  v174 = v35 + 4;
  v141 = v44;
  v44(v43 + v40, v173, v37);
  (v19[4])(v43 + v41, v22, v38);
  (v15[4])(v43 + v42, v175, v185);

  v45 = v186;
  sub_1E65E4E08();
  v46 = v171;
  v47 = v176;
  v171[3] = v176;
  v46[4] = &off_1F5FAA7F8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v46);
  v49 = v170;
  v51 = (v170 + 16);
  v50 = *(v170 + 16);
  (v50)(boxed_opaque_existential_1, v45, v47);
  v182 = v50;
  v175 = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072178, &qword_1E65EA928);
  v181 = swift_allocObject();
  *(v181 + 16) = xmmword_1E65FECC0;
  v178 = sub_1E65E60A8();
  v52 = *(v178 - 8);
  v53 = *(v52 + 56);
  KeyPath = v52 + 56;
  v180 = v53;
  v53(v188, 1, 1, v178);
  v54 = v148;
  v55 = v184;
  v56 = v144;
  (v148[2])(v144, v183 + v172, v184);
  v57 = v47;
  (v50)(v177, v45, v47);
  v58 = (*(v54 + 80) + 32) & ~*(v54 + 80);
  v59 = *(v49 + 80);
  v60 = (v142 + v59 + v58) & ~v59;
  v61 = swift_allocObject();
  *(v61 + 16) = 0;
  *(v61 + 24) = 0;
  (v54[4])(v61 + v58, v56, v55);
  v184 = *(v49 + 32);
  v185 = (v49 + 32);
  v62 = v177;
  (v184)(v61 + v60, v177, v57);
  v63 = v188;
  v64 = sub_1E6059EAC(0, 0, v188, &unk_1E6603E50, v61);
  v65 = v180;
  *(v181 + 32) = v64;
  v65(v63, 1, 1, v178);
  v66 = v153;
  v148 = v153[2];
  v67 = v151;
  v68 = v169;
  (v148)(v151, v183 + v166, v169);
  v69 = v62;
  v70 = v57;
  (v182)(v62, v186, v57);
  v71 = *(v66 + 80);
  v172 = v59;
  v72 = (v71 + 32) & ~v71;
  v144 = v72;
  v73 = (v149 + v59 + v72) & ~v59;
  v149 = v59 | v71;
  v74 = swift_allocObject();
  *(v74 + 16) = 0;
  *(v74 + 24) = 0;
  v153 = v66[4];
  v75 = v67;
  (v153)(v74 + v72, v67, v68);
  v76 = v69;
  (v184)(v74 + v73, v69, v70);
  v77 = v188;
  v78 = sub_1E6059EAC(0, 0, v188, &unk_1E6603E60, v74);
  v79 = v180;
  v80 = v181;
  *(v181 + 40) = v78;
  v79(v77, 1, 1, v178);
  v81 = v183;
  (v148)(v75, v183 + v166, v68);
  v82 = v186;
  v83 = v176;
  v84 = v182;
  (v182)(v76, v186, v176);
  v85 = swift_allocObject();
  *(v85 + 16) = 0;
  *(v85 + 24) = 0;
  (v153)(&v144[v85], v75, v169);
  v86 = v177;
  (v184)(v85 + v73, v177, v83);
  v87 = v188;
  *(v80 + 48) = sub_1E6059EAC(0, 0, v188, &unk_1E6603E70, v85);
  v88 = v180;
  v180(v87, 1, 1, v178);
  v89 = v156;
  v90 = v81 + v139;
  v91 = v155;
  v92 = v157;
  (v156[2])(v155, v90, v157);
  v93 = v82;
  v94 = v176;
  (v84)(v86, v93, v176);
  v95 = (*(v89 + 80) + 32) & ~*(v89 + 80);
  v96 = (v154 + v172 + v95) & ~v172;
  v97 = swift_allocObject();
  *(v97 + 16) = 0;
  *(v97 + 24) = 0;
  (v89[4])(v97 + v95, v91, v92);
  v98 = v86;
  (v184)(v97 + v96, v86, v94);
  v99 = v188;
  v100 = sub_1E6059EAC(0, 0, v188, &unk_1E6603E80, v97);
  v101 = v181;
  *(v181 + 56) = v100;
  v102 = v178;
  v88(v99, 1, 1, v178);
  v103 = v183;
  v104 = v173;
  v105 = v167;
  v145(v173, v183 + v147, v167);
  (v182)(v98, v186, v94);
  v106 = (v143 + 32) & ~v143;
  v107 = (v106 + v168 + v172) & ~v172;
  v108 = swift_allocObject();
  *(v108 + 16) = 0;
  *(v108 + 24) = 0;
  v141(v108 + v106, v104, v105);
  v109 = v108 + v107;
  v111 = v176;
  v110 = v177;
  (v184)(v109, v177, v176);
  v112 = v188;
  *(v101 + 64) = sub_1E6059EAC(0, 0, v188, &unk_1E6603E90, v108);
  v180(v112, 1, 1, v102);
  v113 = v160;
  v114 = v159;
  v115 = v161;
  (v160[2])(v159, v103 + v150, v161);
  v116 = v110;
  v117 = v111;
  (v182)(v110, v186, v111);
  v118 = (*(v113 + 80) + 32) & ~*(v113 + 80);
  v119 = v172;
  v120 = (v158 + v119 + v118) & ~v119;
  v121 = swift_allocObject();
  *(v121 + 16) = 0;
  *(v121 + 24) = 0;
  (v113[4])(v121 + v118, v114, v115);
  v122 = v117;
  (v184)(v121 + v120, v116, v117);
  v123 = v188;
  v124 = sub_1E6059EAC(0, 0, v188, &unk_1E6603EA0, v121);
  v125 = v180;
  *(v181 + 72) = v124;
  v125(v123, 1, 1, v178);
  v126 = Description;
  v127 = v163;
  v128 = v165;
  (Description[2])(v163, v183 + v152, v165);
  v129 = v116;
  v130 = v116;
  v131 = v186;
  (v182)(v129, v186, v122);
  v132 = (*(v126 + 80) + 32) & ~*(v126 + 80);
  v133 = (v162 + v119 + v132) & ~v119;
  v134 = swift_allocObject();
  *(v134 + 16) = 0;
  *(v134 + 24) = 0;
  (v126[4])(v134 + v132, v127, v128);
  (v184)(v134 + v133, v130, v122);
  v135 = sub_1E6059EAC(0, 0, v188, &unk_1E6603EB0, v134);
  v136 = v181;
  *(v181 + 80) = v135;
  result = (*(v170 + 8))(v131, v122);
  v171[5] = v136;
  return result;
}

uint64_t sub_1E645331C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  v5 = *(sub_1E65DA388() - 8);
  v4[12] = v5;
  v6 = *(v5 + 64) + 15;
  v4[13] = swift_task_alloc();
  v7 = sub_1E65E1F78();
  v4[14] = v7;
  v8 = *(v7 - 8);
  v4[15] = v8;
  v9 = *(v8 + 64) + 15;
  v4[16] = swift_task_alloc();
  v10 = *(*(sub_1E65E1FC8() - 8) + 64) + 15;
  v4[17] = swift_task_alloc();
  v11 = sub_1E65DA7C8();
  v4[18] = v11;
  v12 = *(v11 - 8);
  v4[19] = v12;
  v13 = *(v12 + 64) + 15;
  v4[20] = swift_task_alloc();
  v14 = sub_1E65D9D28();
  v4[21] = v14;
  v15 = *(v14 - 8);
  v4[22] = v15;
  v16 = *(v15 + 64) + 15;
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v17 = sub_1E65D82F8();
  v4[27] = v17;
  v18 = *(v17 - 8);
  v4[28] = v18;
  v19 = *(v18 + 64) + 15;
  v4[29] = swift_task_alloc();
  v20 = sub_1E65D9E68();
  v4[30] = v20;
  v21 = *(v20 - 8);
  v4[31] = v21;
  v22 = *(v21 + 64) + 15;
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v23 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079DD0, &qword_1E6603EC8) - 8) + 64) + 15;
  v4[35] = swift_task_alloc();
  v24 = sub_1E65DAB38();
  v4[36] = v24;
  v25 = *(v24 - 8);
  v4[37] = v25;
  v26 = *(v25 + 64) + 15;
  v4[38] = swift_task_alloc();
  v27 = sub_1E65DAB98();
  v4[39] = v27;
  v28 = *(v27 - 8);
  v4[40] = v28;
  v29 = *(v28 + 64) + 15;
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();
  v30 = sub_1E65E3B68();
  v4[43] = v30;
  v31 = *(v30 - 8);
  v4[44] = v31;
  v32 = *(v31 + 64) + 15;
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();
  v33 = sub_1E65D76F8();
  v4[47] = v33;
  v34 = *(v33 - 8);
  v4[48] = v34;
  v35 = *(v34 + 64) + 15;
  v4[49] = swift_task_alloc();
  v4[50] = swift_task_alloc();
  v4[51] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E64537E8, 0, 0);
}

uint64_t sub_1E64537E8()
{
  v44 = v0;
  v1 = v0[50];
  v2 = v0[51];
  v3 = v0[47];
  v4 = v0[48];
  v5 = v0[46];
  sub_1E65D76E8();
  sub_1E65DE2F8();
  v41 = *(v4 + 16);
  v41(v1, v2, v3);
  v6 = sub_1E65E3B48();
  v7 = sub_1E65E6338();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[50];
  v10 = v0[47];
  v11 = v0[48];
  v12 = v0[46];
  v14 = v0[43];
  v13 = v0[44];
  if (v8)
  {
    v40 = v0[43];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v43 = v16;
    *v15 = 136315138;
    v37 = sub_1E65D76C8();
    v39 = v12;
    v18 = v17;
    v38 = v7;
    v19 = *(v11 + 8);
    v19(v9, v10);
    v20 = sub_1E5DFD4B0(v37, v18, &v43);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_1E5DE9000, v6, v38, "[Resolver] Requesting personalized plans - %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x1E694F1C0](v16, -1, -1);
    MEMORY[0x1E694F1C0](v15, -1, -1);

    v21 = *(v13 + 8);
    v21(v39, v40);
  }

  else
  {

    v19 = *(v11 + 8);
    v19(v9, v10);
    v21 = *(v13 + 8);
    v21(v12, v14);
  }

  v0[52] = v21;
  v0[53] = v19;
  v23 = v0[41];
  v22 = v0[42];
  v24 = v0[39];
  v25 = v0[40];
  v26 = v0[38];
  v27 = v0[35];
  v28 = v0[9];
  v41(v0[49], v0[51], v0[47]);
  sub_1E65DDFC8();
  sub_1E65DAB88();
  (*(v25 + 16))(v23, v22, v24);
  v29 = sub_1E65DAB48();
  (*(*(v29 - 8) + 56))(v27, 1, 1, v29);
  sub_1E65DAB28();
  v30 = RecommendationService.fetchPersonalizedWorkoutPlans.getter();
  v0[54] = v31;
  v42 = (v30 + *v30);
  v32 = v30[1];
  v33 = swift_task_alloc();
  v0[55] = v33;
  *v33 = v0;
  v33[1] = sub_1E6453B4C;
  v34 = v0[38];
  v35 = v0[34];

  return v42(v35, v34);
}

uint64_t sub_1E6453B4C()
{
  v2 = *v1;
  v3 = *(*v1 + 440);
  v7 = *v1;
  *(*v1 + 448) = v0;

  if (v0)
  {
    v4 = *(v2 + 432);

    v5 = sub_1E6454BE0;
  }

  else
  {
    v5 = sub_1E6453C68;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E6453C68()
{
  v1 = v0[54];
  v2 = v0[10];

  v3 = ConfigurationService.queryConfiguration.getter();
  v0[57] = v4;
  v9 = (v3 + *v3);
  v5 = v3[1];
  v6 = swift_task_alloc();
  v0[58] = v6;
  *v6 = v0;
  v6[1] = sub_1E6453D6C;
  v7 = v0[29];

  return v9(v7);
}

uint64_t sub_1E6453D6C()
{
  v2 = *(*v1 + 464);
  v3 = *(*v1 + 456);
  v6 = *v1;
  *(*v1 + 472) = v0;

  if (v0)
  {
    v4 = sub_1E6454DBC;
  }

  else
  {
    v4 = sub_1E6453E9C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E6453E9C()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[27];
  v4 = v0[11];
  v0[60] = sub_1E65D8298();
  (*(v2 + 8))(v1, v3);
  v5 = CatalogService.queryAllCatalogModalityReferences.getter();
  v0[61] = v6;
  v10 = (v5 + *v5);
  v7 = v5[1];
  v8 = swift_task_alloc();
  v0[62] = v8;
  *v8 = v0;
  v8[1] = sub_1E6453FC8;

  return v10();
}

uint64_t sub_1E6453FC8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 496);
  v9 = *v2;
  v3[63] = a1;
  v3[64] = v1;

  if (v1)
  {
    v6 = v3[60];
    v5 = v3[61];

    v7 = sub_1E6454FB0;
  }

  else
  {
    v7 = sub_1E64540EC;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E64540EC()
{
  v140 = v1;
  v8 = v1[60];
  v7 = v1[61];

  v106 = v8;
  v98 = v1;
  v103 = *(v8 + 16);
  if (v103)
  {
    v9 = 0;
    v10 = v1[22];
    v100 = v1[60] + 32;
    v124 = v1[63];
    v11 = (v124 + 56);
    v119 = v10;
    v122 = (v10 + 32);
    v112 = (v10 + 8);
    v96 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v13 = *(v106 + 16);
      if (v9 >= v13)
      {
        __break(1u);
        goto LABEL_47;
      }

      v14 = v1[63];
      v15 = v100 + 24 * v9;
      v109 = v9 + 1;
      v0 = -1 << *(v124 + 32);
      if (-v0 < 64)
      {
        v16 = ~(-1 << -v0);
      }

      else
      {
        v16 = -1;
      }

      v4 = v16 & *(v124 + 56);
      v132 = *(v15 + 8);
      v136 = *v15;
      v128 = *(v15 + 16);
      sub_1E5F8710C(*v15, v132, v128);
      v3 = (63 - v0) >> 6;

      v17 = 0;
      if (v4)
      {
        while (1)
        {
          v18 = v17;
LABEL_14:
          v20 = v1[23];
          v19 = v1[24];
          v21 = v1[21];
          v22 = *(v119 + 72);
          (*(v119 + 16))(v19, *(v124 + 48) + v22 * (__clz(__rbit64(v4)) | (v18 << 6)), v21);
          v2 = *(v119 + 32);
          (v2)(v20, v19, v21);
          v23 = sub_1E65D9D08();
          v5 = v24;
          v1[2] = v23;
          v1[3] = v24;
          v6 = v25 & 1;
          *(v1 + 32) = v25 & 1;
          v1[5] = v136;
          v1[6] = v132;
          *(v1 + 56) = v128;
          sub_1E6217698();
          sub_1E6069558();
          v0 = sub_1E65D7FD8();
          sub_1E5F87058(v23, v5, v6);
          if (v0)
          {
            break;
          }

          v4 &= v4 - 1;
          (*v112)(v1[23], v1[21]);
          v17 = v18;
          v11 = (v124 + 56);
          if (!v4)
          {
            goto LABEL_11;
          }
        }

        v26 = v1[63];
        v5 = v1[25];
        v27 = v1[26];
        v6 = v1[23];
        v28 = v1[21];
        sub_1E5F87058(v136, v132, v128);

        (v2)(v5, v6, v28);
        (v2)(v27, v5, v28);
        v29 = v96;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_1E64F6B78(0, v96[2] + 1, 1, v96);
        }

        v9 = v109;
        v0 = v29[2];
        v30 = v29[3];
        v96 = v29;
        v1 = v98;
        if (v0 >= v30 >> 1)
        {
          v96 = sub_1E64F6B78(v30 > 1, v0 + 1, 1, v29);
        }

        v31 = v98[26];
        v32 = v98[21];
        v96[2] = v0 + 1;
        (v2)(v96 + ((*(v119 + 80) + 32) & ~*(v119 + 80)) + v0 * v22, v31, v32);
        v11 = (v124 + 56);
      }

      else
      {
        while (1)
        {
LABEL_11:
          v18 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            __break(1u);
            goto LABEL_34;
          }

          if (v18 >= v3)
          {
            break;
          }

          v4 = *(v11 + v18);
          ++v17;
          if (v4)
          {
            goto LABEL_14;
          }
        }

        v12 = v1[63];
        sub_1E5F87058(v136, v132, v128);

        v9 = v109;
      }

      if (v9 == v103)
      {
        goto LABEL_23;
      }
    }
  }

  v96 = MEMORY[0x1E69E7CC0];
LABEL_23:
  v33 = v1[63];
  v34 = v1[60];
  v35 = v1[45];
  v37 = v1[33];
  v36 = v1[34];
  v39 = v1[31];
  v38 = v1[32];
  v40 = v1[30];

  sub_1E65DE2F8();
  v41 = *(v39 + 16);
  v41(v37, v36, v40);
  v41(v38, v36, v40);
  v42 = sub_1E65E3B48();
  v43 = sub_1E65E6338();
  if (os_log_type_enabled(v42, v43))
  {
    v123 = v1[53];
    v137 = v1[52];
    v120 = v42;
    v107 = v98[49];
    v113 = v98[48];
    v115 = v98[47];
    v133 = v98[45];
    v125 = v98[44];
    v129 = v98[43];
    v44 = v98[33];
    v45 = v98[32];
    v46 = v98[31];
    v47 = v98[30];
    v48 = v98[20];
    v49 = v98[19];
    v50 = v98[18];
    v101 = v50;
    v104 = v47;
    v4 = swift_slowAlloc();
    v117 = swift_slowAlloc();
    v139[0] = v117;
    *v4 = 134218242;
    v110 = v43;
    sub_1E65D9E48();
    v51 = sub_1E65DA7A8();
    v52 = *(v49 + 8);
    v52(v48, v50);
    v11 = *(v46 + 8);
    v11(v44, v47);
    *(v4 + 4) = v51;
    *(v4 + 12) = 2080;
    sub_1E65D9E48();
    sub_1E65DA7B8();
    v52(v48, v101);
    v53 = sub_1E65D76C8();
    v55 = v54;
    v1 = v98;
    v123(v107, v115);
    v122 = v11;
    v11(v45, v104);
    v56 = sub_1E5DFD4B0(v53, v55, v139);

    *(v4 + 14) = v56;
    _os_log_impl(&dword_1E5DE9000, v120, v110, "[Resolver] Response cohort:%ld reco:%s", v4, 0x16u);
    v0 = v117;
    __swift_destroy_boxed_opaque_existential_1(v117);
    MEMORY[0x1E694F1C0](v117, -1, -1);
    MEMORY[0x1E694F1C0](v4, -1, -1);

    v137(v133, v129);
  }

  else
  {
    v57 = v1[52];
    v59 = v1[44];
    v58 = v1[45];
    v0 = v1[43];
    v60 = v1[32];
    v61 = v1[30];
    v62 = v1[31];
    v63 = *(v62 + 8);
    v4 = v62 + 8;
    v11 = v63;
    v63(v1[33], v61);

    v122 = v63;
    v63(v60, v61);
    v57(v58, v0);
  }

  v64 = v1[34];
  v2 = sub_1E65D9E38();
  v3 = *(v2 + 16);
  if (v3)
  {
    v6 = v1[15];
    v5 = v1[12];
    v139[0] = MEMORY[0x1E69E7CC0];
    sub_1E601D15C(0, v3, 0);
    v13 = *(v2 + 16);
    if (!v13)
    {
      goto LABEL_47;
    }

    v18 = v139[0];
    v4 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v1 = v98;
    v65 = v98[64];
    v66 = v98[16];
    v67 = v98[13];
    v5 = *(v5 + 72);
    sub_1E645A7F8(v2 + v4, v67);
    sub_1E64551A4(v67, v96, v66);
    if (v65)
    {
      sub_1E645A85C(v98[13]);
    }

LABEL_34:
    sub_1E645A85C(v1[13]);
    v139[0] = v18;
    v0 = *(v18 + 16);
    v13 = *(v18 + 24);
    v11 = (v0 + 1);
    if (v0 >= v13 >> 1)
    {
      goto LABEL_48;
    }

    while (1)
    {
      v69 = v1[16];
      v70 = v1[14];
      *(v18 + 16) = v11;
      v134 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v130 = *(v6 + 72);
      v6 = *(v6 + 32);
      (v6)(v18 + v134 + v130 * v0, v69, v70);
      if (v3 == 1)
      {
        break;
      }

      v127 = v5;
      v4 += v2 + v5;
      v5 = 1;
      while (1)
      {
        v13 = *(v2 + 16);
        if (v5 >= v13)
        {
          break;
        }

        v1 = v98;
        v79 = v98[16];
        v80 = v98[13];
        sub_1E645A7F8(v4, v80);
        sub_1E64551A4(v80, v96, v79);
        sub_1E645A85C(v98[13]);
        v139[0] = v18;
        v0 = *(v18 + 16);
        v81 = *(v18 + 24);
        v11 = (v0 + 1);
        if (v0 >= v81 >> 1)
        {
          sub_1E601D15C(v81 > 1, v0 + 1, 1);
          v18 = v139[0];
        }

        ++v5;
        v82 = v98[16];
        v83 = v98[14];
        *(v18 + 16) = v11;
        (v6)(v18 + v134 + v130 * v0, v82, v83);
        v4 += v127;
        if (v3 == v5)
        {
          goto LABEL_36;
        }
      }

LABEL_47:
      __break(1u);
LABEL_48:
      sub_1E601D15C(v13 > 1, v11, 1);
      v18 = v139[0];
    }

LABEL_36:

    v1 = v98;
  }

  else
  {
  }

  v93 = v1[51];
  v94 = v1[53];
  v95 = v1[50];
  v97 = v1[49];
  v91 = v1[48];
  v92 = v1[47];
  v99 = v1[46];
  v102 = v1[45];
  v71 = v1[40];
  v89 = v1[39];
  v90 = v1[42];
  v72 = v1[37];
  v87 = v1[36];
  v88 = v1[38];
  v105 = v1[41];
  v108 = v1[35];
  v111 = v1[33];
  v114 = v1[32];
  v84 = v1[34];
  v85 = v1[31];
  v86 = v1[30];
  v116 = v1[29];
  v118 = v1[26];
  v121 = v1[25];
  v126 = v1[24];
  v131 = v1[23];
  v73 = v1[19];
  v74 = v1[20];
  v75 = v1[17];
  v76 = v1[18];
  v135 = v1[16];
  v138 = v1[13];
  v77 = v1[8];
  sub_1E65D9E48();
  sub_1E64C6B48(v75);
  (*(v73 + 8))(v74, v76);
  sub_1E65E1F58();
  v122(v84, v86);
  (*(v72 + 8))(v88, v87);
  (*(v71 + 8))(v90, v89);
  v94(v93, v92);

  v78 = v1[1];

  return v78();
}

uint64_t sub_1E6454BE0()
{
  v28 = v0[56];
  v1 = v0[53];
  v2 = v0[50];
  v3 = v0[51];
  v4 = v0[48];
  v5 = v0[47];
  v11 = v0[49];
  v12 = v0[46];
  v6 = v0[42];
  v13 = v0[45];
  v14 = v0[41];
  v8 = v0[39];
  v7 = v0[40];
  v15 = v0[35];
  v16 = v0[34];
  v17 = v0[33];
  v18 = v0[32];
  v19 = v0[29];
  v20 = v0[26];
  v21 = v0[25];
  v22 = v0[24];
  v23 = v0[23];
  v24 = v0[20];
  v25 = v0[17];
  v26 = v0[16];
  v27 = v0[13];
  (*(v0[37] + 8))(v0[38], v0[36]);
  (*(v7 + 8))(v6, v8);
  v1(v3, v5);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1E6454DBC()
{
  (*(v0[31] + 8))(v0[34], v0[30]);
  v28 = v0[59];
  v1 = v0[53];
  v2 = v0[50];
  v3 = v0[51];
  v4 = v0[48];
  v5 = v0[47];
  v11 = v0[49];
  v12 = v0[46];
  v6 = v0[42];
  v13 = v0[45];
  v14 = v0[41];
  v8 = v0[39];
  v7 = v0[40];
  v15 = v0[35];
  v16 = v0[34];
  v17 = v0[33];
  v18 = v0[32];
  v19 = v0[29];
  v20 = v0[26];
  v21 = v0[25];
  v22 = v0[24];
  v23 = v0[23];
  v24 = v0[20];
  v25 = v0[17];
  v26 = v0[16];
  v27 = v0[13];
  (*(v0[37] + 8))(v0[38], v0[36]);
  (*(v7 + 8))(v6, v8);
  v1(v3, v5);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1E6454FB0()
{
  (*(v0[31] + 8))(v0[34], v0[30]);
  v28 = v0[64];
  v1 = v0[53];
  v2 = v0[50];
  v3 = v0[51];
  v4 = v0[48];
  v5 = v0[47];
  v11 = v0[49];
  v12 = v0[46];
  v6 = v0[42];
  v13 = v0[45];
  v14 = v0[41];
  v8 = v0[39];
  v7 = v0[40];
  v15 = v0[35];
  v16 = v0[34];
  v17 = v0[33];
  v18 = v0[32];
  v19 = v0[29];
  v20 = v0[26];
  v21 = v0[25];
  v22 = v0[24];
  v23 = v0[23];
  v24 = v0[20];
  v25 = v0[17];
  v26 = v0[16];
  v27 = v0[13];
  (*(v0[37] + 8))(v0[38], v0[36]);
  (*(v7 + 8))(v6, v8);
  v1(v3, v5);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1E64551A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v204 = a2;
  v218 = a1;
  v207 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077750, &unk_1E66011C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v202 = &v186 - v5;
  v6 = sub_1E65E2A38();
  v7 = *(v6 - 8);
  v214 = v6;
  v215 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v225 = &v186 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = sub_1E65D9388();
  v200 = *(v201 - 8);
  v10 = *(v200 + 64);
  MEMORY[0x1EEE9AC00](v201);
  v199 = &v186 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E65E2CF8();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v206 = &v186 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v226 = sub_1E65DAA88();
  v222 = *(v226 - 8);
  v15 = *(v222 + 64);
  v16 = MEMORY[0x1EEE9AC00](v226);
  v221 = &v186 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v223 = &v186 - v18;
  v217 = sub_1E65D9D28();
  v224 = *(v217 - 8);
  v19 = v224[8];
  MEMORY[0x1EEE9AC00](v217);
  v216 = &v186 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1E65DA878();
  v22 = *(v21 - 8);
  v211 = v21;
  v212 = v22;
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v196 = &v186 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v186 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v203 = &v186 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B58, &qword_1E65EC600);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x1EEE9AC00](v30 - 8);
  v197 = &v186 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v194 = &v186 - v34;
  v195 = sub_1E65D76F8();
  v193 = *(v195 - 8);
  v35 = *(v193 + 64);
  v36 = MEMORY[0x1EEE9AC00](v195);
  v205 = &v186 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v192 = &v186 - v38;
  v39 = sub_1E65D9C28();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  v42 = MEMORY[0x1EEE9AC00](v39);
  v44 = &v186 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x1EEE9AC00](v42);
  v209 = &v186 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  v208 = &v186 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  v51 = &v186 - v50;
  MEMORY[0x1EEE9AC00](v49);
  v53 = &v186 - v52;
  v54 = sub_1E65E3B68();
  v219 = *(v54 - 8);
  v220 = v54;
  v55 = *(v219 + 64);
  v56 = MEMORY[0x1EEE9AC00](v54);
  v58 = &v186 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v56);
  v60 = &v186 - v59;
  v61 = sub_1E65DA388();
  v62 = *(*(v61 - 8) + 64);
  MEMORY[0x1EEE9AC00](v61 - 8);
  v64 = &v186 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E645A7F8(v218, v64);
  if ((*(v40 + 48))(v64, 1, v39) == 1)
  {
    sub_1E65DE2F8();
    v65 = sub_1E65E3B48();
    v66 = sub_1E65E6338();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_1E5DE9000, v65, v66, "[Resolver] Personalized Plan: Custom", v67, 2u);
      MEMORY[0x1E694F1C0](v67, -1, -1);
    }

    (*(v219 + 8))(v60, v220);
    v68 = MEMORY[0x1E699F188];
    v69 = v207;
LABEL_49:
    v181 = *v68;
    v182 = sub_1E65E1F78();
    return (*(*(v182 - 8) + 104))(v69, v181, v182);
  }

  (*(v40 + 32))(v53, v64, v39);
  sub_1E65DE2F8();
  v70 = v40;
  v71 = *(v40 + 16);
  v71(v51, v53, v39);
  v71(v208, v53, v39);
  v71(v209, v53, v39);
  v210 = v53;
  v71(v44, v53, v39);
  v72 = sub_1E65E3B48();
  v73 = sub_1E65E6338();
  v74 = os_log_type_enabled(v72, v73);
  v191 = v28;
  v198 = v39;
  v190 = v70;
  if (v74)
  {
    v188 = v73;
    v189 = v72;
    v218 = v58;
    v75 = swift_slowAlloc();
    v186 = v44;
    v76 = v75;
    v187 = swift_slowAlloc();
    v229 = v187;
    *v76 = 136315906;
    sub_1E65D9C18();
    v77 = sub_1E65D9708();
    v79 = v78;
    v80 = *(v70 + 8);
    v80(v51);
    v81 = sub_1E5DFD4B0(v77, v79, &v229);

    *(v76 + 4) = v81;
    *(v76 + 6) = 2080;
    v82 = v208;
    v83 = sub_1E65D9BD8();
    v85 = v84;
    (v80)(v82, v39);
    v86 = sub_1E5DFD4B0(v83, v85, &v229);

    *(v76 + 14) = v86;
    *(v76 + 11) = 2080;
    v87 = v192;
    v88 = v209;
    sub_1E65D9BB8();
    sub_1E645A910();
    v89 = v195;
    v90 = sub_1E65E6BC8();
    v92 = v91;
    v193 = *(v193 + 8);
    (v193)(v87, v89);
    v208 = v80;
    (v80)(v88, v198);
    v93 = sub_1E5DFD4B0(v90, v92, &v229);

    *(v76 + 3) = v93;
    v209 = v76;
    *(v76 + 16) = 2080;
    v94 = v194;
    v95 = v186;
    sub_1E65D9BE8();
    v96 = sub_1E65DA7C8();
    v97 = *(v96 - 8);
    v98 = v95;
    if ((*(v97 + 48))(v94, 1, v96) == 1)
    {
      sub_1E5DFE50C(v94, &qword_1ED072B58, &qword_1E65EC600);
      v99 = 0;
      v100 = 0;
    }

    else
    {
      sub_1E65DA7B8();
      (*(v97 + 8))(v94, v96);
      v99 = sub_1E65D76C8();
      v100 = v105;
      (v193)(v87, v195);
    }

    v104 = v203;
    v107 = v219;
    v106 = v220;
    v108 = v218;
    v227 = v99;
    v228 = v100;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072978, &unk_1E65F0E80);
    v109 = sub_1E65E6648();
    v111 = v110;
    (v208)(v98, v198);

    v112 = sub_1E5DFD4B0(v109, v111, &v229);

    v113 = v209;
    *(v209 + 34) = v112;
    v114 = v189;
    _os_log_impl(&dword_1E5DE9000, v189, v188, "[Resolver] Personalized Plan: %s %s planId: %s reco:%s", v113, 0x2Au);
    v115 = v187;
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v115, -1, -1);
    MEMORY[0x1E694F1C0](v113, -1, -1);

    (*(v107 + 8))(v108, v106);
    v103 = v213;
    v102 = v217;
  }

  else
  {

    v101 = *(v70 + 8);
    v101(v44, v39);
    v101(v209, v39);
    v101(v208, v39);
    v208 = v101;
    v101(v51, v39);
    (*(v219 + 8))(v58, v220);
    v102 = v217;
    v103 = v213;
    v104 = v203;
  }

  sub_1E65D9BF8();
  v116 = sub_1E65DA858();
  v117 = *(v212 + 8);
  v212 += 8;
  v209 = v117;
  (v117)(v104, v211);
  v118 = *(v116 + 16);
  if (v118)
  {
    v227 = MEMORY[0x1E69E7CC0];
    sub_1E601C0B8(0, v118, 0);
    v119 = v227;
    v219 = *(v222 + 16);
    v120 = (*(v222 + 80) + 32) & ~*(v222 + 80);
    v203 = v116;
    v121 = v116 + v120;
    v218 = *(v222 + 72);
    v220 = (v222 + 16);
    v122 = (v222 + 8);
    do
    {
      v123 = v223;
      v124 = v226;
      (v219)(v223, v121, v226);
      v125 = sub_1E65DAA58();
      v127 = v126;
      (*v122)(v123, v124);
      v227 = v119;
      v129 = v119[2];
      v128 = v119[3];
      if (v129 >= v128 >> 1)
      {
        sub_1E601C0B8((v128 > 1), v129 + 1, 1);
        v119 = v227;
      }

      v119[2] = v129 + 1;
      v130 = &v119[2 * v129];
      v130[4] = v125;
      v130[5] = v127;
      v121 += v218;
      --v118;
    }

    while (v118);

    v103 = v213;
    v102 = v217;
  }

  else
  {

    v119 = MEMORY[0x1E69E7CC0];
  }

  v131 = *(v204 + 16);
  v132 = v216;
  if (v131)
  {
    v220 = v224[2];
    v133 = v204 + ((*(v224 + 80) + 32) & ~*(v224 + 80));
    v134 = v224[9];
    v224 += 2;
    v218 = (v224 - 1);
    v219 = v134;
    v223 = MEMORY[0x1E69E7CC0];
    v220(v216, v133, v102);
    while (1)
    {
      v227 = sub_1E65D9CD8();
      v228 = v135;
      MEMORY[0x1EEE9AC00](v227);
      v184 = &v227;
      v136 = v103;
      v137 = v132;
      v138 = sub_1E5F95F4C(sub_1E645A8B8, (&v186 - 4), v119);

      if (v138)
      {
        v139 = sub_1E65D9D18();
        v141 = v140;
        (*v218)(v137, v102);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v223 = sub_1E64F6718(0, *(v223 + 2) + 1, 1, v223);
        }

        v143 = *(v223 + 2);
        v142 = *(v223 + 3);
        if (v143 >= v142 >> 1)
        {
          v223 = sub_1E64F6718((v142 > 1), v143 + 1, 1, v223);
        }

        v144 = v223;
        *(v223 + 2) = v143 + 1;
        v145 = &v144[16 * v143];
        *(v145 + 4) = v139;
        *(v145 + 5) = v141;
        v103 = v136;
        v132 = v216;
        v102 = v217;
      }

      else
      {
        (*v218)(v137, v102);
        v132 = v137;
        v103 = v136;
      }

      v133 += v219;
      if (!--v131)
      {
        break;
      }

      v220(v132, v133, v102);
    }
  }

  else
  {
    v223 = MEMORY[0x1E69E7CC0];
  }

  v213 = v103;

  v146 = v191;
  sub_1E65D9BF8();
  v147 = sub_1E65DA858();
  (v209)(v146, v211);
  v148 = *(v147 + 16);
  if (!v148)
  {

    v224 = MEMORY[0x1E69E7CC8];
LABEL_45:
    sub_1E65D9BB8();
    v226 = sub_1E65D9BD8();
    v168 = objc_opt_self();
    v169 = sub_1E65E5EF8();

    v170 = [v168 localizedStringByJoiningStrings_];

    sub_1E65E5C78();
    v171 = v199;
    sub_1E65D9C08();
    sub_1E61DADA0(v206);
    (*(v200 + 8))(v171, v201);
    v172 = v196;
    sub_1E65D9BF8();
    sub_1E65DA868();
    (v209)(v172, v211);
    v173 = sub_1E65D9C18();
    v174 = v197;
    sub_1E65D9BE8();
    v175 = sub_1E65DA7C8();
    v176 = *(v175 - 8);
    if ((*(v176 + 48))(v174, 1, v175) == 1)
    {
      sub_1E5DFE50C(v174, &qword_1ED072B58, &qword_1E65EC600);
      v177 = 1;
      v178 = v202;
    }

    else
    {
      v179 = v174;
      v178 = v202;
      sub_1E64C6B48(v202);
      (*(v176 + 8))(v179, v175);
      v177 = 0;
    }

    v180 = sub_1E65E1FC8();
    (*(*(v180 - 8) + 56))(v178, v177, 1, v180);
    v185 = v178;
    LOBYTE(v184) = v173;
    v69 = v207;
    sub_1E65E2038();
    (v208)(v210, v198);
    v68 = MEMORY[0x1E699F180];
    goto LABEL_49;
  }

  v149 = *(v222 + 16);
  v150 = v147 + ((*(v222 + 80) + 32) & ~*(v222 + 80));
  v219 = *(v222 + 72);
  v220 = v149;
  v216 = v147;
  v217 = v215 + 40;
  v222 += 16;
  v218 = v222 - 8;
  v224 = MEMORY[0x1E69E7CC8];
  v149(v221, v150, v226);
  while (1)
  {
    v152 = sub_1E65DAA58();
    v154 = v153;
    sub_1E65DAA58();
    v155 = sub_1E65DAA78();
    sub_1E600AA08(v155);

    v156 = sub_1E65DAA68();
    sub_1E600AA08(v156);

    sub_1E65E2A08();
    v157 = v224;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v227 = v157;
    v160 = sub_1E6215038(v152, v154);
    v161 = v157[2];
    v162 = (v159 & 1) == 0;
    v163 = v161 + v162;
    if (__OFADD__(v161, v162))
    {
      break;
    }

    v164 = v159;
    if (v157[3] >= v163)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1E64242F0();
      }
    }

    else
    {
      sub_1E641B0BC(v163, isUniquelyReferenced_nonNull_native);
      v165 = sub_1E6215038(v152, v154);
      if ((v164 & 1) != (v166 & 1))
      {
        goto LABEL_51;
      }

      v160 = v165;
    }

    v167 = v221;
    v224 = v227;
    if (v164)
    {
      (*(v215 + 40))(v227[7] + *(v215 + 72) * v160, v225, v214);
    }

    else
    {
      sub_1E6422E40(v160, v152, v154, v225, v227);
    }

    v151 = v226;
    (*v218)(v167, v226);
    v150 += v219;
    if (!--v148)
    {

      goto LABEL_45;
    }

    v220(v167, v150, v151);
  }

  __break(1u);
LABEL_51:
  result = sub_1E65E6C68();
  __break(1u);
  return result;
}

uint64_t sub_1E64566E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D10, &qword_1E65F37A0);
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v8 = *(v7 + 64) + 15;
  v5[7] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D18, &qword_1E65F37A8);
  v5[8] = v9;
  v10 = *(v9 - 8);
  v5[9] = v10;
  v11 = *(v10 + 64) + 15;
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6456818, 0, 0);
}

uint64_t sub_1E6456818()
{
  v1 = v0[3];
  v2 = ArchivedSessionService.makeArchivedSessionsUpdatedStream.getter();
  v0[11] = v3;
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_1E6456914;
  v6 = v0[7];

  return v8(v6);
}

uint64_t sub_1E6456914()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v6 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_1E5FE0E84;
  }

  else
  {
    v4 = sub_1E6456A44;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E6456A44()
{
  v1 = v0[10];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  sub_1E65E60F8();
  (*(v3 + 8))(v2, v4);
  v5 = *(MEMORY[0x1E69E8678] + 4);
  v6 = swift_task_alloc();
  v0[14] = v6;
  *v6 = v0;
  v6[1] = sub_1E6456B20;
  v7 = v0[10];
  v8 = v0[8];

  return MEMORY[0x1EEE6D9C8](v0 + 2, 0, 0, v8);
}

uint64_t sub_1E6456B20()
{
  v1 = *(*v0 + 112);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E6456C1C, 0, 0);
}

uint64_t sub_1E6456C1C()
{
  if (v0[2])
  {

    sub_1E65E6058();
    v0[15] = sub_1E65E6048();
    v2 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6456D1C, v2, v1);
  }

  else
  {
    v3 = v0[7];
    (*(v0[9] + 8))(v0[10], v0[8]);

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1E6456D1C()
{
  v1 = v0[15];
  v2 = v0[4];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079DB8, &qword_1E6603E10);
  sub_1E65E4E18();
  v3 = *(MEMORY[0x1E69E8678] + 4);
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_1E6456B20;
  v5 = v0[10];
  v6 = v0[8];

  return MEMORY[0x1EEE6D9C8](v0 + 2, 0, 0, v6);
}

uint64_t sub_1E6456DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073468, &qword_1E65ED258);
  v5[7] = v9;
  v10 = *(v9 - 8);
  v5[8] = v10;
  v11 = *(v10 + 64) + 15;
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6456F1C, 0, 0);
}

uint64_t sub_1E6456F1C()
{
  v1 = v0[2];
  active = WorkoutPlanService.makeActiveWorkoutPlanUpdatedStream.getter();
  v0[10] = v3;
  v8 = (active + *active);
  v4 = active[1];
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_1E6457018;
  v6 = v0[6];

  return v8(v6);
}

uint64_t sub_1E6457018()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E6457130, 0, 0);
}

uint64_t sub_1E6457130()
{
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  sub_1E65E60F8();
  (*(v3 + 8))(v2, v4);
  v5 = *(MEMORY[0x1E69E8678] + 4);
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_1E645720C;
  v7 = v0[9];
  v8 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v8);
}

uint64_t sub_1E645720C()
{
  v1 = *(*v0 + 96);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E6457308, 0, 0);
}

uint64_t sub_1E6457308()
{
  if (*(v0 + 112) == 1)
  {
    v1 = *(v0 + 48);
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    sub_1E65E6058();
    *(v0 + 104) = sub_1E65E6048();
    v5 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6457408, v5, v4);
  }
}

uint64_t sub_1E6457408()
{
  v1 = v0[13];
  v2 = v0[3];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079DB8, &qword_1E6603E10);
  sub_1E65E4E18();
  v3 = *(MEMORY[0x1E69E8678] + 4);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1E645720C;
  v5 = v0[9];
  v6 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v6);
}

uint64_t sub_1E64574D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078908, &qword_1E65FE190) - 8) + 64) + 15;
  v5[4] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076C18, &qword_1E65F7A00);
  v5[5] = v7;
  v8 = *(v7 - 8);
  v5[6] = v8;
  v9 = *(v8 + 64) + 15;
  v5[7] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078910, &qword_1E65FE198);
  v5[8] = v10;
  v11 = *(v10 - 8);
  v5[9] = v11;
  v12 = *(v11 + 64) + 15;
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6457640, 0, 0);
}

uint64_t sub_1E6457640()
{
  v1 = v0[2];
  v2 = WorkoutPlanService.makeWorkoutPlansUpdatedStream.getter();
  v0[11] = v3;
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_1E645773C;
  v6 = v0[7];

  return v8(v6);
}

uint64_t sub_1E645773C()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E6457854, 0, 0);
}

uint64_t sub_1E6457854()
{
  v1 = v0[10];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  sub_1E65E60F8();
  (*(v3 + 8))(v2, v4);
  v5 = *(MEMORY[0x1E69E8678] + 4);
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_1E6457930;
  v7 = v0[10];
  v8 = v0[8];
  v9 = v0[4];

  return MEMORY[0x1EEE6D9C8](v9, 0, 0, v8);
}

uint64_t sub_1E6457930()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E6457A2C, 0, 0);
}

uint64_t sub_1E6457A2C()
{
  v1 = v0[4];
  v2 = sub_1E65DDF18();
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

    return MEMORY[0x1EEE6DFA0](sub_1E6457B7C, v7, v6);
  }
}

uint64_t sub_1E6457B7C()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 24);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079DB8, &qword_1E6603E10);
  sub_1E65E4E18();

  return MEMORY[0x1EEE6DFA0](sub_1E6457C00, 0, 0);
}

uint64_t sub_1E6457C00()
{
  sub_1E5DFE50C(v0[4], &qword_1ED078908, &qword_1E65FE190);
  v1 = *(MEMORY[0x1E69E8678] + 4);
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_1E6457930;
  v3 = v0[10];
  v4 = v0[8];
  v5 = v0[4];

  return MEMORY[0x1EEE6D9C8](v5, 0, 0, v4);
}

uint64_t sub_1E6457CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0721B0, &qword_1E65EA988) - 8) + 64) + 15;
  v5[4] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0721B8, &qword_1E65EA990);
  v5[5] = v7;
  v8 = *(v7 - 8);
  v5[6] = v8;
  v9 = *(v8 + 64) + 15;
  v5[7] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0721C0, &qword_1E65EA998);
  v5[8] = v10;
  v11 = *(v10 - 8);
  v5[9] = v11;
  v12 = *(v11 + 64) + 15;
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6457E2C, 0, 0);
}

uint64_t sub_1E6457E2C()
{
  v1 = v0[2];
  v2 = RemoteBrowsingService.makeRemoteBrowsingIdentityUpdatedStream.getter();
  v0[11] = v3;
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_1E6457F28;
  v6 = v0[7];

  return v8(v6);
}

uint64_t sub_1E6457F28()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E6458040, 0, 0);
}

uint64_t sub_1E6458040()
{
  v1 = v0[10];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  sub_1E65E60F8();
  (*(v3 + 8))(v2, v4);
  v5 = *(MEMORY[0x1E69E8678] + 4);
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_1E645811C;
  v7 = v0[10];
  v8 = v0[8];
  v9 = v0[4];

  return MEMORY[0x1EEE6D9C8](v9, 0, 0, v8);
}

uint64_t sub_1E645811C()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E6458218, 0, 0);
}

uint64_t sub_1E6458218()
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

    return MEMORY[0x1EEE6DFA0](sub_1E6458368, v7, v6);
  }
}

uint64_t sub_1E6458368()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 24);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079DB8, &qword_1E6603E10);
  sub_1E65E4E18();

  return MEMORY[0x1EEE6DFA0](sub_1E64583EC, 0, 0);
}

uint64_t sub_1E64583EC()
{
  sub_1E5DFE50C(v0[4], &qword_1ED0721B0, &qword_1E65EA988);
  v1 = *(MEMORY[0x1E69E8678] + 4);
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_1E645811C;
  v3 = v0[10];
  v4 = v0[8];
  v5 = v0[4];

  return MEMORY[0x1EEE6D9C8](v5, 0, 0, v4);
}

uint64_t sub_1E64584AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079DC0, &qword_1E6603EB8) - 8) + 64) + 15;
  v5[4] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072868, &qword_1E65EBEC0);
  v5[5] = v7;
  v8 = *(v7 - 8);
  v5[6] = v8;
  v9 = *(v8 + 64) + 15;
  v5[7] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079DC8, &qword_1E6603EC0);
  v5[8] = v10;
  v11 = *(v10 - 8);
  v5[9] = v11;
  v12 = *(v11 + 64) + 15;
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6458618, 0, 0);
}

uint64_t sub_1E6458618()
{
  v1 = v0[2];
  v2 = RecommendationService.makeOnboardingSurveyResultsUpdatedStream.getter();
  v0[11] = v3;
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_1E6458714;
  v6 = v0[7];

  return v8(v6);
}

uint64_t sub_1E6458714()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E645882C, 0, 0);
}

uint64_t sub_1E645882C()
{
  v1 = v0[10];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  sub_1E65E60F8();
  (*(v3 + 8))(v2, v4);
  v5 = *(MEMORY[0x1E69E8678] + 4);
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_1E6458908;
  v7 = v0[10];
  v8 = v0[8];
  v9 = v0[4];

  return MEMORY[0x1EEE6D9C8](v9, 0, 0, v8);
}

uint64_t sub_1E6458908()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E6458A04, 0, 0);
}

uint64_t sub_1E6458A04()
{
  v1 = v0[4];
  v2 = sub_1E65DE1C8();
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

    return MEMORY[0x1EEE6DFA0](sub_1E6458B54, v7, v6);
  }
}

uint64_t sub_1E6458B54()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 24);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079DB8, &qword_1E6603E10);
  sub_1E65E4E18();

  return MEMORY[0x1EEE6DFA0](sub_1E6458BD8, 0, 0);
}

uint64_t sub_1E6458BD8()
{
  sub_1E5DFE50C(v0[4], &qword_1ED079DC0, &qword_1E6603EB8);
  v1 = *(MEMORY[0x1E69E8678] + 4);
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_1E6458908;
  v3 = v0[10];
  v4 = v0[8];
  v5 = v0[4];

  return MEMORY[0x1EEE6D9C8](v5, 0, 0, v4);
}

uint64_t sub_1E6458C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073468, &qword_1E65ED258);
  v5[7] = v9;
  v10 = *(v9 - 8);
  v5[8] = v10;
  v11 = *(v10 + 64) + 15;
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6458DCC, 0, 0);
}

uint64_t sub_1E6458DCC()
{
  v1 = v0[2];
  v2 = AccountService.makeAccountChangedStream.getter();
  v0[10] = v3;
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_1E6458EC8;
  v6 = v0[6];

  return v8(v6);
}

uint64_t sub_1E6458EC8()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E6458FE0, 0, 0);
}

uint64_t sub_1E6458FE0()
{
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  sub_1E65E60F8();
  (*(v3 + 8))(v2, v4);
  v5 = *(MEMORY[0x1E69E8678] + 4);
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_1E64590BC;
  v7 = v0[9];
  v8 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v8);
}

uint64_t sub_1E64590BC()
{
  v1 = *(*v0 + 96);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E64591B8, 0, 0);
}

uint64_t sub_1E64591B8()
{
  if (*(v0 + 112) == 1)
  {
    v1 = *(v0 + 48);
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    sub_1E65E6058();
    *(v0 + 104) = sub_1E65E6048();
    v5 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E64592B8, v5, v4);
  }
}

uint64_t sub_1E64592B8()
{
  v1 = v0[13];
  v2 = v0[3];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079DB8, &qword_1E6603E10);
  sub_1E65E4E18();
  v3 = *(MEMORY[0x1E69E8678] + 4);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1E64590BC;
  v5 = v0[9];
  v6 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v6);
}

uint64_t sub_1E6459384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078A40, &qword_1E65FED78) - 8) + 64) + 15;
  v5[4] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072848, &qword_1E65EBE90);
  v5[5] = v7;
  v8 = *(v7 - 8);
  v5[6] = v8;
  v9 = *(v8 + 64) + 15;
  v5[7] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078A48, &qword_1E65FED80);
  v5[8] = v10;
  v11 = *(v10 - 8);
  v5[9] = v11;
  v12 = *(v11 + 64) + 15;
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E64594F0, 0, 0);
}

uint64_t sub_1E64594F0()
{
  v1 = v0[2];
  v2 = ServiceSubscriptionService.makeServiceSubscriptionStatusStream.getter();
  v0[11] = v3;
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_1E64595EC;
  v6 = v0[7];

  return v8(v6);
}

uint64_t sub_1E64595EC()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E6459704, 0, 0);
}

uint64_t sub_1E6459704()
{
  v1 = v0[10];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  sub_1E65E60F8();
  (*(v3 + 8))(v2, v4);
  v5 = *(MEMORY[0x1E69E8678] + 4);
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_1E64597E0;
  v7 = v0[10];
  v8 = v0[8];
  v9 = v0[4];

  return MEMORY[0x1EEE6D9C8](v9, 0, 0, v8);
}

uint64_t sub_1E64597E0()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E64598DC, 0, 0);
}

uint64_t sub_1E64598DC()
{
  v1 = v0[4];
  v2 = sub_1E65D92D8();
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

    return MEMORY[0x1EEE6DFA0](sub_1E6459A2C, v7, v6);
  }
}

uint64_t sub_1E6459A2C()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 24);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079DB8, &qword_1E6603E10);
  sub_1E65E4E18();

  return MEMORY[0x1EEE6DFA0](sub_1E6459AB0, 0, 0);
}

uint64_t sub_1E6459AB0()
{
  sub_1E5DFE50C(v0[4], &qword_1ED078A40, &qword_1E65FED78);
  v1 = *(MEMORY[0x1E69E8678] + 4);
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_1E64597E0;
  v3 = v0[10];
  v4 = v0[8];
  v5 = v0[4];

  return MEMORY[0x1EEE6D9C8](v5, 0, 0, v4);
}

uint64_t sub_1E6459B70(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for RecommendationService()[-1].Description;
  v6 = (*(Description + 80) + 16) & ~*(Description + 80);
  v7 = Description[8];
  v8 = type metadata accessor for ConfigurationService()[-1].Description;
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v8[8];
  v11 = type metadata accessor for CatalogService()[-1].Description;
  v12 = (v9 + v10 + v11[80]) & ~v11[80];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1E5DFA78C;

  return sub_1E645331C(a1, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t sub_1E6459D10(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for ArchivedSessionService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079DB8, &qword_1E6603E10) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E64566E4(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E6459E6C(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for WorkoutPlanService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079DB8, &qword_1E6603E10) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E6456DE8(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E6459FC8(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for WorkoutPlanService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079DB8, &qword_1E6603E10) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E64574D4(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E645A124(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for RemoteBrowsingService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079DB8, &qword_1E6603E10) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E6457CC0(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E645A280(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for RecommendationService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079DB8, &qword_1E6603E10) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E64584AC(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E645A3DC(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for AccountService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079DB8, &qword_1E6603E10) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E6458C98(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t objectdestroy_3Tm_13(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079DB8, &qword_1E6603E10);
  v7 = *(v6 - 8);
  v8 = (v5 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(v1 + 16);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1 + v4, v2);
  (*(v7 + 8))(v1 + v8, v6);

  return swift_deallocObject();
}

uint64_t sub_1E645A69C(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for ServiceSubscriptionService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079DB8, &qword_1E6603E10) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E6459384(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E645A7F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65DA388();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E645A85C(uint64_t a1)
{
  v2 = sub_1E65DA388();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E645A8B8(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1E65E6C18() & 1;
  }
}

unint64_t sub_1E645A910()
{
  result = qword_1EE2D7198;
  if (!qword_1EE2D7198)
  {
    sub_1E65D76F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D7198);
  }

  return result;
}

uint64_t sub_1E645A968@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char *a4@<X8>)
{
  v137 = a3;
  v136 = a2;
  v150 = a1;
  v151 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0760D8, &qword_1E65F4990);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v138 = &v127 - v6;
  v7 = sub_1E65DCF98();
  v145 = *(v7 - 8);
  v146 = v7;
  v8 = *(v145 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v130 = &v127 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E65DCA68();
  v144 = *(v10 - 8);
  v11 = *(v144 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v143 = &v127 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E65D7D18();
  v141 = *(v13 - 8);
  v142 = v13;
  v14 = *(v141 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v131 = &v127 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v147 = &v127 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v148 = &v127 - v19;
  v20 = sub_1E65E3B68();
  v139 = *(v20 - 8);
  v140 = v20;
  v21 = *(v139 + 64);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v134 = &v127 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v135 = &v127 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0760E0, &qword_1E65F4998);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8);
  v129 = &v127 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v127 - v29;
  v31 = sub_1E65DCCE8();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v34 = MEMORY[0x1EEE9AC00](v31);
  v128 = &v127 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v127 - v36;
  v38 = sub_1E65D9CC8();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  v41 = MEMORY[0x1EEE9AC00](v38);
  v133 = &v127 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x1EEE9AC00](v41);
  v132 = &v127 - v44;
  MEMORY[0x1EEE9AC00](v43);
  v46 = &v127 - v45;
  v47 = sub_1E65D8398();
  v48 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47);
  v50 = &v127 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E645FBF4(v149, v50, MEMORY[0x1E69CB3B0]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v149 = v31;
    v51 = v141;
    v52 = v142;
    v53 = v148;
    (*(v141 + 32))(v148, v50, v142);
    v55 = v143;
    v54 = v144;
    (*(v144 + 104))(v143, *MEMORY[0x1E699EE70], v10);
    sub_1E645FC5C(&qword_1ED079DD8, MEMORY[0x1E699EE78]);
    v56 = v150;
    v57 = sub_1E65E5B98();
    (*(v54 + 8))(v55, v10);
    v58 = v56;
    v59 = v146;
    v60 = v147;
    v61 = v145;
    if (v57 & 1) == 0 && (sub_1E645DEB8())
    {
      v62 = v129;
      sub_1E645F180(v58, MEMORY[0x1E69CB048], MEMORY[0x1E69CB040], MEMORY[0x1E69CB050], v129);
      v63 = v32;
      v64 = v62;
      v65 = v62;
      v66 = v149;
      if ((*(v63 + 48))(v65, 1, v149) != 1)
      {
        (*(v51 + 8))(v53, v52);
        v124 = *(v63 + 32);
        v125 = v128;
        v124(v128, v64, v66);
        v126 = v151;
        v124(v151, v125, v66);
        v114 = sub_1E65DCA48();
        swift_storeEnumTagMultiPayload();
        v117 = *(*(v114 - 8) + 56);
        v118 = v126;
        goto LABEL_15;
      }

      sub_1E5DFE50C(v64, &qword_1ED0760E0, &qword_1E65F4998);
    }

    v67 = v138;
    sub_1E645DFB4(v58, v136, v137, v138);
    if ((*(v61 + 48))(v67, 1, v59) == 1)
    {
      sub_1E5DFE50C(v67, &qword_1ED0760D8, &qword_1E65F4990);
      v68 = v134;
      sub_1E65DD1C8();
      v69 = *(v51 + 16);
      v69(v60, v53, v52);
      v70 = v131;
      v69(v131, v53, v52);
      v71 = sub_1E65E3B48();
      v72 = sub_1E65E6328();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        LODWORD(v149) = v72;
        v150 = v74;
        v157[0] = v74;
        *v73 = 136315394;
        v75 = sub_1E65D7BF8();
        v76 = v60;
        v78 = v77;
        v79 = *(v51 + 8);
        v79(v76, v52);
        v80 = sub_1E5DFD4B0(v75, v78, v157);

        *(v73 + 4) = v80;
        *(v73 + 12) = 2080;
        v81 = sub_1E65D7C58();
        v83 = v82;
        v154 = v81;
        v155 = v82;
        v85 = v84 & 1;
        v156 = v84 & 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752A8, &unk_1E660CC10);
        sub_1E65D7F98();
        v79(v70, v52);
        sub_1E5F87058(v81, v83, v85);
        v86 = sub_1E5DFD4B0(v152, v153, v157);

        *(v73 + 14) = v86;
        _os_log_impl(&dword_1E5DE9000, v71, v149, "Failed to create search tile for: %s:%s", v73, 0x16u);
        v87 = v150;
        swift_arrayDestroy();
        MEMORY[0x1E694F1C0](v87, -1, -1);
        MEMORY[0x1E694F1C0](v73, -1, -1);

        (*(v139 + 8))(v134, v140);
        v79(v148, v52);
      }

      else
      {

        v122 = *(v51 + 8);
        v122(v70, v52);
        v122(v60, v52);
        (*(v139 + 8))(v68, v140);
        v122(v53, v52);
      }

LABEL_18:
      v120 = sub_1E65DCA48();
      v117 = *(*(v120 - 8) + 56);
      v118 = v151;
      v119 = 1;
      return v117(v118, v119, 1, v120);
    }

    (*(v51 + 8))(v53, v52);
    v115 = *(v61 + 32);
    v116 = v130;
    v115(v130, v67, v59);
    v113 = v151;
    v115(v151, v116, v59);
    v114 = sub_1E65DCA48();
  }

  else
  {
    (*(v39 + 32))(v46, v50, v38);
    sub_1E645F180(v150, MEMORY[0x1E69CC860], MEMORY[0x1E69CC858], MEMORY[0x1E69CC868], v30);
    if ((*(v32 + 48))(v30, 1, v31) == 1)
    {
      sub_1E5DFE50C(v30, &qword_1ED0760E0, &qword_1E65F4998);
      v88 = v135;
      sub_1E65DD1C8();
      v89 = *(v39 + 16);
      v90 = v132;
      v89(v132, v46, v38);
      v91 = v133;
      v89(v133, v46, v38);
      v92 = sub_1E65E3B48();
      v93 = sub_1E65E6328();
      if (os_log_type_enabled(v92, v93))
      {
        v94 = swift_slowAlloc();
        v150 = swift_slowAlloc();
        v157[0] = v150;
        *v94 = 136315394;
        LODWORD(v149) = v93;
        v95 = sub_1E65D9C98();
        v97 = v96;
        v148 = *(v39 + 8);
        (v148)(v90, v38);
        v98 = sub_1E5DFD4B0(v95, v97, v157);

        *(v94 + 4) = v98;
        *(v94 + 12) = 2080;
        v99 = sub_1E65D9CA8();
        v100 = v91;
        v102 = v101;
        v154 = v99;
        v155 = v101;
        v103 = v92;
        v105 = v104 & 1;
        v156 = v104 & 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752A8, &unk_1E660CC10);
        sub_1E65D7F98();
        v106 = v100;
        v107 = v38;
        v108 = v38;
        v109 = v148;
        (v148)(v106, v107);
        sub_1E5F87058(v99, v102, v105);
        v110 = sub_1E5DFD4B0(v152, v153, v157);

        *(v94 + 14) = v110;
        _os_log_impl(&dword_1E5DE9000, v103, v149, "Failed to create search placeholder for: %s:%s", v94, 0x16u);
        v111 = v150;
        swift_arrayDestroy();
        MEMORY[0x1E694F1C0](v111, -1, -1);
        MEMORY[0x1E694F1C0](v94, -1, -1);

        (*(v139 + 8))(v135, v140);
        (v109)(v46, v108);
      }

      else
      {

        v121 = *(v39 + 8);
        v121(v91, v38);
        v121(v90, v38);
        (*(v139 + 8))(v88, v140);
        v121(v46, v38);
      }

      goto LABEL_18;
    }

    (*(v39 + 8))(v46, v38);
    v112 = *(v32 + 32);
    v112(v37, v30, v31);
    v113 = v151;
    v112(v151, v37, v31);
    v114 = sub_1E65DCA48();
  }

  swift_storeEnumTagMultiPayload();
  v117 = *(*(v114 - 8) + 56);
  v118 = v113;
LABEL_15:
  v119 = 0;
  v120 = v114;
  return v117(v118, v119, 1, v120);
}

uint64_t sub_1E645B850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v190 = a3;
  v181 = a1;
  v188 = a4;
  v178 = sub_1E65D8258();
  v177 = *(v178 - 8);
  v6 = *(v177 + 64);
  v7 = MEMORY[0x1EEE9AC00](v178);
  v176 = &v158 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v175 = &v158 - v9;
  v174 = sub_1E65E3B68();
  v173 = *(v174 - 8);
  v10 = *(v173 + 64);
  MEMORY[0x1EEE9AC00](v174);
  v191 = &v158 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v183 = &v158 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E0, &qword_1E66012E0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v187 = &v158 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073508, &qword_1E65ED490);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v182 = &v158 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752D8, &qword_1E660CC30);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v186 = &v158 - v23;
  v172 = sub_1E65DAC98();
  v170 = *(v172 - 8);
  v24 = *(v170 + 64);
  v25 = MEMORY[0x1EEE9AC00](v172);
  v166 = &v158 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v165 = &v158 - v27;
  v171 = sub_1E65DD1A8();
  v28 = *(*(v171 - 8) + 64);
  MEMORY[0x1EEE9AC00](v171);
  v167 = &v158 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = sub_1E65DA0B8();
  v168 = *(v169 - 8);
  v30 = *(v168 + 64);
  v31 = MEMORY[0x1EEE9AC00](v169);
  v164 = &v158 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v163 = &v158 - v33;
  v162 = sub_1E65D9D58();
  v161 = *(v162 - 8);
  v34 = *(v161 + 64);
  v35 = MEMORY[0x1EEE9AC00](v162);
  v160 = &v158 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v159 = &v158 - v37;
  v180 = sub_1E65D8BB8();
  v38 = *(*(v180 - 8) + 64);
  v39 = MEMORY[0x1EEE9AC00](v180);
  v41 = &v158 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v189 = &v158 - v42;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0739B0, &qword_1E65EDD40);
  v43 = *(*(v185 - 8) + 64);
  v44 = MEMORY[0x1EEE9AC00](v185);
  v184 = &v158 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v196 = &v158 - v46;
  v179 = sub_1E65DCA68();
  v47 = *(v179 - 8);
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v179);
  v195 = &v158 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D90, &qword_1E66040F0);
  v51 = *(*(v50 - 8) + 64);
  v52 = MEMORY[0x1EEE9AC00](v50 - 8);
  v194 = &v158 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = MEMORY[0x1EEE9AC00](v52);
  v193 = &v158 - v55;
  v56 = MEMORY[0x1EEE9AC00](v54);
  v199 = &v158 - v57;
  MEMORY[0x1EEE9AC00](v56);
  v59 = &v158 - v58;
  v200 = sub_1E65D72D8();
  v198 = *(v200 - 8);
  isa = v198[8].isa;
  v61 = MEMORY[0x1EEE9AC00](v200);
  v192 = &v158 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v61);
  v197 = &v158 - v63;
  v64 = v4;
  v65 = sub_1E65D80C8();
  v67 = v66;
  v204 = v65;
  v205 = v66;
  v69 = v68 & 1;
  v206 = v68 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752A8, &unk_1E660CC10);
  sub_1E65D7FB8();
  sub_1E5F87058(v65, v67, v69);
  v70 = v201;
  if (v201 > 4u)
  {
    if (v201 <= 6u)
    {
      if (v201 == 5)
      {
        v70 = 7;
      }
    }

    else if (v201 == 7)
    {
      v70 = 5;
    }

    else if (v201 != 8)
    {
      v76 = v191;
      sub_1E65DD1C8();
      v77 = v177;
      v78 = *(v177 + 16);
      v79 = v175;
      v80 = v178;
      v78(v175, v64, v178);
      v81 = v176;
      v78(v176, v64, v80);
      v82 = sub_1E65E3B48();
      v83 = sub_1E65E6328();
      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        v200 = swift_slowAlloc();
        v203 = v200;
        *v84 = 136315394;
        LODWORD(v199) = v83;
        v85 = sub_1E65D8078();
        v86 = v79;
        v88 = v87;
        v89 = *(v77 + 8);
        v89(v86, v80);
        v90 = sub_1E5DFD4B0(v85, v88, &v203);

        *(v84 + 4) = v90;
        *(v84 + 12) = 2080;
        v91 = sub_1E65D80C8();
        v92 = v80;
        v94 = v93;
        v204 = v91;
        v205 = v93;
        v198 = v82;
        v96 = v95 & 1;
        v206 = v95 & 1;
        sub_1E65D7F98();
        v89(v81, v92);
        sub_1E5F87058(v91, v94, v96);
        v97 = sub_1E5DFD4B0(v201, v202, &v203);

        *(v84 + 14) = v97;
        v98 = v198;
        _os_log_impl(&dword_1E5DE9000, v198, v199, "Missing referenceType transformation for CatalogLockup %s:%s", v84, 0x16u);
        v99 = v200;
        swift_arrayDestroy();
        MEMORY[0x1E694F1C0](v99, -1, -1);
        MEMORY[0x1E694F1C0](v84, -1, -1);

        (*(v173 + 8))(v191, v174);
      }

      else
      {

        v157 = *(v77 + 8);
        v157(v81, v80);
        v157(v79, v80);
        (*(v173 + 8))(v76, v174);
      }

      v154 = 1;
      v153 = v188;
      goto LABEL_31;
    }
  }

  LODWORD(v178) = v70;
  v71 = sub_1E65D8248();
  v72 = v190;
  sub_1E63C4134(a2, v190, v71, v197);

  v73 = *(sub_1E65D80A8() + 16);

  if (v73)
  {
    v74 = sub_1E65D80A8();
    sub_1E63C4134(a2, v72, v74, v59);

    v75 = 0;
  }

  else
  {
    v75 = 1;
  }

  v100 = v198[7].isa;
  v101 = 1;
  v191 = v59;
  (v100)(v59, v75, 1, v200);
  v102 = *(sub_1E65D8068() + 16);

  if (v102)
  {
    v103 = sub_1E65D8068();
    v104 = v199;
    sub_1E63C4134(a2, v190, v103, v199);

    v101 = 0;
  }

  else
  {
    v104 = v199;
  }

  (v100)(v104, v101, 1, v200);
  v105 = sub_1E65D81F8();
  if (!v106)
  {
    v105 = sub_1E65DADE8();
  }

  v107 = v105;
  v108 = v106;
  v109 = sub_1E65D8078();
  v111 = v110;
  v112 = sub_1E65D81B8();
  if (v113)
  {
    v114 = v112;
  }

  else
  {
    v114 = 0;
  }

  if (v113)
  {
    v115 = v113;
  }

  else
  {
    v115 = 0xE000000000000000;
  }

  v204 = v109;
  v205 = v111;

  MEMORY[0x1E694D7C0](v114, v115);

  MEMORY[0x1E694D7C0](0, 0xE000000000000000);

  v116 = v204;
  v117 = v205;
  (*(v47 + 16))(v195, v181, v179);
  v118 = sub_1E65D8078();
  v120 = v119;
  v174 = sub_1E65D81B8();
  v173 = v121;
  v122 = v189;
  sub_1E65D8128();
  sub_1E645FBF4(v122, v41, MEMORY[0x1E69CB950]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v190 = v107;
  v177 = v108;
  v176 = v116;
  v175 = v117;
  v181 = v118;
  v179 = v120;
  if (EnumCaseMultiPayload == 1)
  {
    v124 = v168;
    v125 = v163;
    v126 = v169;
    (*(v168 + 32))(v163, v41, v169);
    v127 = v164;
    (*(v124 + 16))(v164, v125, v126);
    v128 = v165;
    sub_1E65DA098();
    v129 = v170;
    v130 = v166;
    v131 = v172;
    (*(v170 + 16))(v166, v128, v172);
    sub_1E602A934(v130, v167);
    (*(v129 + 8))(v128, v131);
    sub_1E65DA0A8();
    sub_1E645FC5C(&qword_1ED075918, MEMORY[0x1E699EF60]);
    v132 = v184;
    sub_1E65DC438();
    v133 = *(v124 + 8);
    v133(v127, v126);
    v133(v125, v126);
    v122 = v189;
  }

  else
  {
    v134 = v161;
    v135 = v159;
    v136 = v162;
    (*(v161 + 32))(v159, v41, v162);
    v137 = v160;
    (*(v134 + 16))(v160, v135, v136);
    v132 = v184;
    sub_1E6134684(v137);
    (*(v134 + 8))(v135, v136);
  }

  v139 = v186;
  v138 = v187;
  v140 = v199;
  sub_1E645FB94(v122, MEMORY[0x1E69CB950]);
  swift_storeEnumTagMultiPayload();
  sub_1E645FB24(v132, v196);
  v141 = sub_1E65D8108();
  if (v142 == -1)
  {
    v143 = 9;
  }

  else
  {
    v204 = v141;
    LOBYTE(v205) = v142 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073CE0, &qword_1E65EECC8);
    sub_1E65D7FB8();
    v143 = v201;
  }

  LODWORD(v189) = v143;
  sub_1E65D80E8();
  v144 = sub_1E65D76A8();
  v145 = (*(*(v144 - 8) + 48))(v139, 1, v144);
  sub_1E5DFE50C(v139, &qword_1ED0752D8, &qword_1E660CC30);
  (v198[2].isa)(v192, v197, v200);
  sub_1E60976FC(v191, v193);
  sub_1E60976FC(v140, v194);
  v187 = sub_1E65D8188();
  v146 = sub_1E65D8238();
  if (v148 == -1)
  {
    v152 = 4;
  }

  else
  {
    v204 = v146;
    v205 = v147;
    v206 = v148 & 1;
    v149 = v146;
    v150 = v147;
    v151 = v148;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758E0, &qword_1E65F1FE8);
    sub_1E65D7FB8();
    sub_1E61281C8(v149, v150, v151);
    v152 = 0x402030100uLL >> (8 * v201);
  }

  v186 = v152;
  LODWORD(v185) = v145 != 1;
  v184 = sub_1E65D80D8();
  LODWORD(v180) = sub_1E65D81C8();
  v172 = sub_1E65D8088();
  sub_1E65D81D8();
  sub_1E65D8118();
  sub_1E602A6CC(v138, v182);
  sub_1E65D80F8();
  sub_1E65D8138();
  sub_1E65D8098();
  v153 = v188;
  sub_1E65DCE38();
  sub_1E5DFE50C(v199, &qword_1ED072D90, &qword_1E66040F0);
  sub_1E5DFE50C(v191, &qword_1ED072D90, &qword_1E66040F0);
  (v198[1].isa)(v197, v200);
  v154 = 0;
LABEL_31:
  v155 = sub_1E65DCF98();
  return (*(*(v155 - 8) + 56))(v153, v154, 1, v155);
}

uint64_t sub_1E645CB58@<X0>(uint64_t *a1@<X8>)
{
  v171 = a1;
  v1 = sub_1E65E5528();
  v159 = *(v1 - 8);
  v160 = v1;
  v2 = *(v159 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v158 = &v149 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E65E57D8();
  v156 = *(v4 - 8);
  v157 = v4;
  v5 = *(v156 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v155 = (&v149 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v170 = type metadata accessor for RouteSource(0);
  v7 = *(*(v170 - 8) + 64);
  MEMORY[0x1EEE9AC00](v170);
  v166 = &v149 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E65E3B68();
  v163 = *(v9 - 8);
  v164 = v9;
  v10 = *(v163 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v173 = &v149 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v162 = &v149 - v13;
  v14 = sub_1E65DCF98();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v149 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1E65DCCE8();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v149 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for SearchItemContext();
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v154 = &v149 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v150 = &v149 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v172 = &v149 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v153 = &v149 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v152 = &v149 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v151 = &v149 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v40 = &v149 - v39;
  v41 = MEMORY[0x1EEE9AC00](v38);
  v43 = &v149 - v42;
  v44 = MEMORY[0x1EEE9AC00](v41);
  v149 = &v149 - v45;
  v46 = MEMORY[0x1EEE9AC00](v44);
  v161 = &v149 - v47;
  MEMORY[0x1EEE9AC00](v46);
  v49 = &v149 - v48;
  sub_1E645FBF4(v174, &v149 - v48, type metadata accessor for SearchItemContext);
  v169 = v24;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v167 = v15;
  v168 = v18;
  v165 = v19;
  if (EnumCaseMultiPayload == 1)
  {
    (*(v20 + 32))(v23, v49, v19);
    v51 = sub_1E65DCCA8();
    (*(v20 + 8))(v23, v19);
  }

  else
  {
    (*(v15 + 32))(v18, v49, v14);
    v51 = sub_1E65DCE68();
    (*(v15 + 8))(v18, v14);
  }

  v52 = v20;
  v53 = v23;
  v54 = v51;
  v56 = v172;
  v55 = v173;
  if (v54 <= 3)
  {
    if (v54 > 1)
    {
      v87 = v167;
      v88 = v168;
      if (v54 != 2)
      {
        v113 = v151;
        sub_1E645FBF4(v174, v151, type metadata accessor for SearchItemContext);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v114 = v165;
          (*(v52 + 32))(v53, v113, v165);
          v115 = sub_1E65DCCB8();
          v117 = v116;
          (*(v52 + 8))(v53, v114);
        }

        else
        {
          (*(v87 + 32))(v88, v113, v14);
          v115 = sub_1E65DCED8();
          v117 = v128;
          (*(v87 + 8))(v88, v14);
        }

        v129 = v171;
        v130 = v166;
        swift_storeEnumTagMultiPayload();
        *v129 = v115;
        v129[1] = v117;
        type metadata accessor for PlaylistType();
        swift_storeEnumTagMultiPayload();
        type metadata accessor for RouteResource();
        goto LABEL_41;
      }

      sub_1E645FBF4(v174, v40, type metadata accessor for SearchItemContext);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v89 = v165;
        (*(v52 + 32))(v53, v40, v165);
        v90 = sub_1E65DCCB8();
        v92 = v91;
        (*(v52 + 8))(v53, v89);
      }

      else
      {
        (*(v87 + 32))(v88, v40, v14);
        v90 = sub_1E65DCED8();
        v92 = v126;
        (*(v87 + 8))(v88, v14);
      }
    }

    else
    {
      v71 = v167;
      v72 = v168;
      if (!v54)
      {
        v73 = v162;
        sub_1E65DD1C8();
        v74 = v161;
        sub_1E645FBF4(v174, v161, type metadata accessor for SearchItemContext);
        v75 = sub_1E65E3B48();
        v76 = sub_1E65E6328();
        if (os_log_type_enabled(v75, v76))
        {
          v77 = v71;
          v78 = swift_slowAlloc();
          v79 = swift_slowAlloc();
          v80 = v74;
          v81 = v79;
          v175[0] = v79;
          *v78 = 136315138;
          v82 = v149;
          sub_1E645FBF4(v80, v149, type metadata accessor for SearchItemContext);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v83 = v165;
            (*(v52 + 32))(v53, v82, v165);
            v84 = sub_1E65DCCB8();
            v86 = v85;
            (*(v52 + 8))(v53, v83);
          }

          else
          {
            (*(v77 + 32))(v72, v82, v14);
            v141 = sub_1E65DCED8();
            v142 = v72;
            v84 = v141;
            v86 = v143;
            (*(v77 + 8))(v142, v14);
          }

          v125 = v171;
          sub_1E645FB94(v161, type metadata accessor for SearchItemContext);
          v144 = sub_1E5DFD4B0(v84, v86, v175);

          *(v78 + 4) = v144;
          _os_log_impl(&dword_1E5DE9000, v75, v76, "Unsupported reference type editorialCard %s for route resource", v78, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v81);
          MEMORY[0x1E694F1C0](v81, -1, -1);
          MEMORY[0x1E694F1C0](v78, -1, -1);

          (*(v163 + 8))(v162, v164);
        }

        else
        {

          sub_1E645FB94(v74, type metadata accessor for SearchItemContext);
          (*(v163 + 8))(v73, v164);
          v125 = v171;
        }

        v140 = type metadata accessor for RouteDestination();
        v109 = *(*(v140 - 8) + 56);
        v110 = v125;
        goto LABEL_49;
      }

      sub_1E645FBF4(v174, v43, type metadata accessor for SearchItemContext);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v111 = v165;
        (*(v52 + 32))(v53, v43, v165);
        v90 = sub_1E65DCCB8();
        v92 = v112;
        (*(v52 + 8))(v53, v111);
      }

      else
      {
        (*(v71 + 32))(v72, v43, v14);
        v90 = sub_1E65DCED8();
        v92 = v127;
        (*(v71 + 8))(v72, v14);
      }
    }

    goto LABEL_40;
  }

  if (v54 <= 5)
  {
    v93 = v165;
    if (v54 == 4)
    {
      v94 = v152;
      sub_1E645FBF4(v174, v152, type metadata accessor for SearchItemContext);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v133 = v167;
        v134 = v168;
        (*(v167 + 32))(v168, v94, v14);
        v90 = sub_1E65DCED8();
        v92 = v135;
        (*(v133 + 8))(v134, v14);
        goto LABEL_40;
      }
    }

    else
    {
      v94 = v153;
      sub_1E645FBF4(v174, v153, type metadata accessor for SearchItemContext);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v136 = v167;
        v137 = v168;
        (*(v167 + 32))(v168, v94, v14);
        v90 = sub_1E65DCED8();
        v92 = v138;
        (*(v136 + 8))(v137, v14);
        goto LABEL_40;
      }
    }

    (*(v52 + 32))(v23, v94, v93);
    v90 = sub_1E65DCCB8();
    v92 = v124;
    (*(v52 + 8))(v23, v93);
LABEL_40:
    v129 = v171;
    v130 = v166;
    swift_storeEnumTagMultiPayload();
    *v129 = v90;
    v129[1] = v92;
    type metadata accessor for RouteResource();
LABEL_41:
    swift_storeEnumTagMultiPayload();
    v102 = type metadata accessor for RouteDestination();
    sub_1E645FBF4(v130, v129 + *(v102 + 20), type metadata accessor for RouteSource);
    *(v129 + *(v102 + 24)) = MEMORY[0x1E69E7CD0];
    sub_1E645FB94(v130, type metadata accessor for RouteSource);
    v109 = *(*(v102 - 8) + 56);
    v110 = v129;
    goto LABEL_42;
  }

  if (v54 != 6)
  {
    if (v54 == 7)
    {
      v57 = v23;
      sub_1E65DD1C8();
      sub_1E645FBF4(v174, v56, type metadata accessor for SearchItemContext);
      v58 = sub_1E65E3B48();
      v59 = sub_1E65E6328();
      v60 = os_log_type_enabled(v58, v59);
      v61 = v168;
      if (v60)
      {
        v62 = v14;
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v175[0] = v64;
        *v63 = 136315138;
        v65 = v150;
        sub_1E645FBF4(v56, v150, type metadata accessor for SearchItemContext);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v66 = v57;
          v67 = v165;
          (*(v52 + 32))(v57, v65, v165);
          v68 = sub_1E65DCCB8();
          v70 = v69;
          (*(v52 + 8))(v66, v67);
        }

        else
        {
          v145 = v167;
          (*(v167 + 32))(v61, v65, v62);
          v68 = sub_1E65DCED8();
          v70 = v146;
          (*(v145 + 8))(v61, v62);
        }

        v131 = v171;
        sub_1E645FB94(v172, type metadata accessor for SearchItemContext);
        v147 = sub_1E5DFD4B0(v68, v70, v175);

        *(v63 + 4) = v147;
        _os_log_impl(&dword_1E5DE9000, v58, v59, "Unsupported reference type upsell header %s for route resource", v63, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v64);
        MEMORY[0x1E694F1C0](v64, -1, -1);
        MEMORY[0x1E694F1C0](v63, -1, -1);

        (*(v163 + 8))(v173, v164);
      }

      else
      {

        sub_1E645FB94(v56, type metadata accessor for SearchItemContext);
        (*(v163 + 8))(v55, v164);
        v131 = v171;
      }

      v140 = type metadata accessor for RouteDestination();
      v109 = *(*(v140 - 8) + 56);
      v110 = v131;
LABEL_49:
      v139 = 1;
      return v109(v110, v139, 1, v140);
    }

    v118 = v154;
    sub_1E645FBF4(v174, v154, type metadata accessor for SearchItemContext);
    v119 = swift_getEnumCaseMultiPayload();
    v120 = v167;
    v121 = v168;
    if (v119 == 1)
    {
      v122 = v165;
      (*(v52 + 32))(v53, v118, v165);
      v90 = sub_1E65DCCB8();
      v92 = v123;
      (*(v52 + 8))(v53, v122);
    }

    else
    {
      (*(v167 + 32))(v168, v118, v14);
      v90 = sub_1E65DCED8();
      v92 = v132;
      (*(v120 + 8))(v121, v14);
    }

    goto LABEL_40;
  }

  v95 = v155;
  sub_1E645F41C(v155);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079248, &qword_1E66012E8);
  v96 = v159;
  v97 = *(v159 + 72);
  v98 = (*(v159 + 80) + 32) & ~*(v159 + 80);
  v99 = swift_allocObject();
  *(v99 + 16) = xmmword_1E65EA670;
  sub_1E65E5518();
  v175[0] = v99;
  sub_1E645FC5C(&qword_1ED078A30, MEMORY[0x1E69CD868]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079250, &qword_1E66012F0);
  sub_1E63FFA58();
  v100 = v158;
  v101 = v160;
  sub_1E65E6738();
  v102 = type metadata accessor for RouteDestination();
  v103 = *(v102 + 20);
  v104 = v171;
  swift_storeEnumTagMultiPayload();
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0778F0, &unk_1E65EA7F0);
  v106 = v105[12];
  v107 = v105[16];
  v108 = v105[20];
  (*(v156 + 32))(v104, v95, v157);
  (*(v96 + 32))(v104 + v106, v100, v101);
  *(v104 + v107) = xmmword_1E65EAE00;
  *(v104 + v108) = 0;
  type metadata accessor for RouteResource();
  swift_storeEnumTagMultiPayload();
  *(v104 + *(v102 + 24)) = MEMORY[0x1E69E7CD0];
  v109 = *(*(v102 - 8) + 56);
  v110 = v104;
LABEL_42:
  v139 = 0;
  v140 = v102;
  return v109(v110, v139, 1, v140);
}

uint64_t sub_1E645DEB8()
{
  v0 = sub_1E65D7C58();
  v2 = v1;
  v4 = v3 & 1;
  sub_1E6018A94();
  sub_1E6018AE8();
  v5 = sub_1E65D7FE8();
  sub_1E5F87058(v0, v2, v4);
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v7 = sub_1E65D7C58();
    v9 = v8;
    v11 = v10 & 1;
    v6 = sub_1E65D7FE8();
    sub_1E5F87058(v7, v9, v11);
  }

  return v6 & 1;
}

uint64_t sub_1E645DFB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v180 = a3;
  v181 = a2;
  v172 = a1;
  v168 = sub_1E65D7D18();
  v167 = *(v168 - 8);
  v6 = *(v167 + 64);
  v7 = MEMORY[0x1EEE9AC00](v168);
  v166 = &v149 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v165 = &v149 - v9;
  v164 = sub_1E65E3B68();
  v150 = *(v164 - 8);
  v10 = *(v150 + 64);
  MEMORY[0x1EEE9AC00](v164);
  v182 = &v149 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v174 = &v149 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E0, &qword_1E66012E0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v178 = &v149 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073508, &qword_1E65ED490);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v173 = &v149 - v20;
  v163 = sub_1E65DAC98();
  v161 = *(v163 - 8);
  v21 = *(v161 + 64);
  v22 = MEMORY[0x1EEE9AC00](v163);
  v157 = &v149 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v156 = &v149 - v24;
  v162 = sub_1E65DD1A8();
  v25 = *(*(v162 - 8) + 64);
  MEMORY[0x1EEE9AC00](v162);
  v158 = &v149 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = sub_1E65DA0B8();
  v159 = *(v160 - 8);
  v27 = *(v159 + 64);
  v28 = MEMORY[0x1EEE9AC00](v160);
  v155 = &v149 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v176 = &v149 - v30;
  v154 = sub_1E65D9D58();
  v153 = *(v154 - 8);
  v31 = *(v153 + 64);
  v32 = MEMORY[0x1EEE9AC00](v154);
  v152 = &v149 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v151 = &v149 - v34;
  v170 = sub_1E65D8BB8();
  v35 = *(*(v170 - 8) + 64);
  v36 = MEMORY[0x1EEE9AC00](v170);
  v38 = &v149 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v171 = &v149 - v39;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0739B0, &qword_1E65EDD40);
  v40 = *(*(v177 - 8) + 64);
  v41 = MEMORY[0x1EEE9AC00](v177);
  v175 = &v149 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v187 = &v149 - v43;
  v169 = sub_1E65DCA68();
  v44 = *(v169 - 8);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v169);
  v186 = &v149 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D90, &qword_1E66040F0);
  v48 = *(*(v47 - 8) + 64);
  v49 = MEMORY[0x1EEE9AC00](v47 - 8);
  v185 = &v149 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x1EEE9AC00](v49);
  v184 = &v149 - v52;
  v53 = MEMORY[0x1EEE9AC00](v51);
  v190 = &v149 - v54;
  MEMORY[0x1EEE9AC00](v53);
  v189 = (&v149 - v55);
  v191 = sub_1E65D72D8();
  v188 = *(v191 - 8);
  v56 = *(v188 + 64);
  v57 = MEMORY[0x1EEE9AC00](v191);
  v183 = &v149 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v57);
  v60 = &v149 - v59;
  v61 = sub_1E65D7C58();
  v63 = v62;
  v195 = v61;
  v196 = v62;
  v65 = v64 & 1;
  v197 = v64 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752A8, &unk_1E660CC10);
  sub_1E65D7FB8();
  sub_1E5F87058(v61, v63, v65);
  v66 = v192;
  v179 = a4;
  if (v192 > 4u)
  {
    v67 = v190;
    v68 = v181;
    if (v192 <= 6u)
    {
      if (v192 == 5)
      {
        v66 = 7;
      }
    }

    else if (v192 == 7)
    {
      v66 = 5;
    }

    else if (v192 != 8)
    {
      v75 = v182;
      sub_1E65DD1C8();
      v76 = v167;
      v77 = *(v167 + 16);
      v78 = v165;
      v79 = v168;
      v77(v165, v4, v168);
      v80 = v166;
      v77(v166, v4, v79);
      v81 = sub_1E65E3B48();
      v82 = sub_1E65E6328();
      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        v191 = swift_slowAlloc();
        v194 = v191;
        *v83 = 136315394;
        LODWORD(v190) = v82;
        v84 = sub_1E65D7BF8();
        v189 = v81;
        v85 = v80;
        v87 = v86;
        v88 = *(v76 + 8);
        v88(v78, v79);
        v89 = sub_1E5DFD4B0(v84, v87, &v194);

        *(v83 + 4) = v89;
        *(v83 + 12) = 2080;
        v90 = sub_1E65D7C58();
        v91 = v79;
        v93 = v92;
        v195 = v90;
        v196 = v92;
        v95 = v94 & 1;
        v197 = v94 & 1;
        sub_1E65D7F98();
        v88(v85, v91);
        sub_1E5F87058(v90, v93, v95);
        v96 = sub_1E5DFD4B0(v192, v193, &v194);

        *(v83 + 14) = v96;
        v97 = v189;
        _os_log_impl(&dword_1E5DE9000, v189, v190, "Missing referenceType transformation for CatalogTile %s:%s", v83, 0x16u);
        v98 = v191;
        swift_arrayDestroy();
        MEMORY[0x1E694F1C0](v98, -1, -1);
        v99 = v83;
        a4 = v179;
        MEMORY[0x1E694F1C0](v99, -1, -1);

        (*(v150 + 8))(v182, v164);
      }

      else
      {

        v148 = *(v76 + 8);
        v148(v80, v79);
        v148(v78, v79);
        (*(v150 + 8))(v75, v164);
      }

      v145 = 1;
      goto LABEL_28;
    }
  }

  else
  {
    v67 = v190;
    v68 = v181;
  }

  LODWORD(v168) = v66;
  v69 = sub_1E65D7D08();
  v182 = v60;
  v70 = v180;
  sub_1E63C4134(v68, v180, v69, v60);

  v71 = *(sub_1E65D7C38() + 16);

  if (v71)
  {
    v72 = sub_1E65D7C38();
    v73 = v189;
    sub_1E63C4134(v68, v70, v72, v189);

    v74 = 0;
  }

  else
  {
    v74 = 1;
    v73 = v189;
  }

  v100 = *(v188 + 56);
  v101 = 1;
  v100(v73, v74, 1, v191);
  v102 = *(sub_1E65D7BE8() + 16);

  if (v102)
  {
    v103 = sub_1E65D7BE8();
    sub_1E63C4134(v181, v180, v103, v67);

    v101 = 0;
  }

  v100(v67, v101, 1, v191);
  v104 = sub_1E65D7CE8();
  if (!v105)
  {
    v104 = sub_1E65DADE8();
  }

  v106 = v104;
  v107 = v105;
  v108 = sub_1E65D7BF8();
  v110 = v109;
  v111 = sub_1E65D7CC8();
  if (v112)
  {
    v113 = v111;
  }

  else
  {
    v113 = 0;
  }

  if (v112)
  {
    v114 = v112;
  }

  else
  {
    v114 = 0xE000000000000000;
  }

  v195 = v108;
  v196 = v110;

  MEMORY[0x1E694D7C0](v113, v114);

  MEMORY[0x1E694D7C0](0, 0xE000000000000000);

  v115 = v195;
  v116 = v196;
  (*(v44 + 16))(v186, v172, v169);
  v117 = sub_1E65D7BF8();
  v169 = v118;
  v165 = sub_1E65D7CC8();
  v164 = v119;
  v120 = v171;
  sub_1E65D7C88();
  sub_1E645FBF4(v120, v38, MEMORY[0x1E69CB950]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v180 = v107;
  v181 = v106;
  v167 = v115;
  v166 = v116;
  v172 = v117;
  if (EnumCaseMultiPayload == 1)
  {
    v122 = v159;
    v123 = v176;
    v124 = v160;
    (*(v159 + 32))(v176, v38, v160);
    v125 = v155;
    (*(v122 + 16))(v155, v123, v124);
    v126 = v156;
    sub_1E65DA098();
    v127 = v161;
    v128 = v157;
    v129 = v163;
    (*(v161 + 16))(v157, v126, v163);
    sub_1E602A934(v128, v158);
    (*(v127 + 8))(v126, v129);
    sub_1E65DA0A8();
    sub_1E645FC5C(&qword_1ED075918, MEMORY[0x1E699EF60]);
    v130 = v175;
    sub_1E65DC438();
    v131 = *(v122 + 8);
    v131(v125, v124);
    v131(v176, v124);
  }

  else
  {
    v132 = v153;
    v133 = v151;
    v134 = v154;
    (*(v153 + 32))(v151, v38, v154);
    v135 = v152;
    (*(v132 + 16))(v152, v133, v134);
    v130 = v175;
    sub_1E6134684(v135);
    (*(v132 + 8))(v133, v134);
  }

  v136 = v178;
  v137 = v189;
  sub_1E645FB94(v120, MEMORY[0x1E69CB950]);
  swift_storeEnumTagMultiPayload();
  sub_1E645FB24(v130, v187);
  (*(v188 + 16))(v183, v182, v191);
  sub_1E60976FC(v137, v184);
  sub_1E60976FC(v190, v185);
  v178 = sub_1E65D7CB8();
  v138 = sub_1E65D7CF8();
  if (v140 == -1)
  {
    v144 = 4;
  }

  else
  {
    v195 = v138;
    v196 = v139;
    v197 = v140 & 1;
    v141 = v138;
    v142 = v139;
    v143 = v140;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758E0, &qword_1E65F1FE8);
    sub_1E65D7FB8();
    sub_1E61281C8(v141, v142, v143);
    v144 = 0x402030100uLL >> (8 * v192);
  }

  v177 = v144;
  v176 = sub_1E65D7C08();
  sub_1E65D7CD8();
  sub_1E65D7C78();
  sub_1E602A6CC(v136, v173);
  sub_1E65D7C68();
  sub_1E65D7C98();
  sub_1E65D7C28();
  a4 = v179;
  sub_1E65DCE38();
  sub_1E5DFE50C(v190, &qword_1ED072D90, &qword_1E66040F0);
  sub_1E5DFE50C(v189, &qword_1ED072D90, &qword_1E66040F0);
  (*(v188 + 8))(v182, v191);
  v145 = 0;
LABEL_28:
  v146 = sub_1E65DCF98();
  return (*(*(v146 - 8) + 56))(a4, v145, 1, v146);
}

uint64_t sub_1E645F180@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v35 = a5;
  v9 = sub_1E65DCA68();
  v34 = *(v9 - 8);
  v10 = *(v34 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a2(v11);
  v16 = v15;
  v37 = v14;
  v38 = v15;
  v18 = v17 & 1;
  v39 = v17 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752A8, &unk_1E660CC10);
  sub_1E65D7FB8();
  v19 = sub_1E5F87058(v14, v16, v18);
  if (v36 <= 8u)
  {
    v22 = a3(v19);
    v24 = v23;
    v25 = a4();
    v32 = a3;
    v33 = a4;
    if (v26)
    {
      v27 = v25;
    }

    else
    {
      v27 = 0;
    }

    if (v26)
    {
      v28 = v26;
    }

    else
    {
      v28 = 0xE000000000000000;
    }

    v37 = v22;
    v38 = v24;

    MEMORY[0x1E694D7C0](v27, v28);

    MEMORY[0x1E694D7C0](0, 0xE000000000000000);

    v29 = (*(v34 + 16))(v13, a1, v9);
    v32(v29);
    v33();
    v21 = v35;
    sub_1E65DCC88();
    v20 = 0;
  }

  else
  {
    v20 = 1;
    v21 = v35;
  }

  v30 = sub_1E65DCCE8();
  return (*(*(v30 - 8) + 56))(v21, v20, 1, v30);
}

uint64_t sub_1E645F41C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v71 = a1;
  v3 = sub_1E65DCCE8();
  v67 = *(v3 - 8);
  v68 = v3;
  v4 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v66 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073508, &qword_1E65ED490);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v61 = &v60 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E0, &qword_1E66012E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v62 = &v60 - v11;
  v12 = sub_1E65E5608();
  v64 = *(v12 - 8);
  v65 = v12;
  v13 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v63 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v60 - v17;
  v19 = sub_1E65D74E8();
  v70 = *(v19 - 8);
  v20 = *(v70 + 64);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v60 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v69 = &v60 - v23;
  v24 = type metadata accessor for SearchItemContext();
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v60 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v60 - v29;
  v31 = sub_1E65DCF98();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v34 = MEMORY[0x1EEE9AC00](v31);
  v36 = &v60 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v38 = &v60 - v37;
  sub_1E645FBF4(v2, v30, type metadata accessor for SearchItemContext);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E645FB94(v30, type metadata accessor for SearchItemContext);
  }

  else
  {
    (*(v32 + 32))(v38, v30, v31);
    sub_1E65DCE58();
    if ((*(v70 + 48))(v18, 1, v19) != 1)
    {
      v50 = v69;
      v51 = v70;
      (*(v70 + 32))(v69, v18, v19);
      v52 = sub_1E65DCED8();
      v67 = v53;
      v68 = v52;
      (*(v51 + 16))(v60, v50, v19);
      v54 = v61;
      sub_1E65DCEA8();
      sub_1E602AD74(v54, v62);
      v66 = sub_1E65DCF28();
      v61 = v55;
      sub_1E65DCEC8();
      sub_1E65DCE98();
      v56 = v63;
      sub_1E65E55F8();
      (*(v51 + 8))(v69, v19);
      (*(v32 + 8))(v38, v31);
      v57 = v71;
      (*(v64 + 32))(v71, v56, v65);
      v58 = *MEMORY[0x1E69CD908];
      v59 = sub_1E65E57D8();
      return (*(*(v59 - 8) + 104))(v57, v58, v59);
    }

    (*(v32 + 8))(v38, v31);
    sub_1E5DFE50C(v18, &qword_1ED072340, &qword_1E65EA410);
  }

  sub_1E645FBF4(v2, v28, type metadata accessor for SearchItemContext);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v40 = v66;
    v39 = v67;
    v41 = v68;
    (*(v67 + 32))(v66, v28, v68);
    v42 = sub_1E65DCCB8();
    v44 = v43;
    (*(v39 + 8))(v40, v41);
  }

  else
  {
    (*(v32 + 32))(v36, v28, v31);
    v42 = sub_1E65DCED8();
    v44 = v45;
    (*(v32 + 8))(v36, v31);
  }

  v46 = v71;
  *v71 = v42;
  v46[1] = v44;
  v47 = *MEMORY[0x1E69CD900];
  v48 = sub_1E65E57D8();
  return (*(*(v48 - 8) + 104))(v46, v47, v48);
}

uint64_t sub_1E645FB24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0739B0, &qword_1E65EDD40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E645FB94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E645FBF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E645FC5C(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1E645FCA4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_1E65D7848();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = sub_1E65E5C28();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v7 = [objc_opt_self() preferredFontForTextStyle_];
  v8 = sub_1E65E6568();

  v9 = [objc_opt_self() secondaryLabelColor];
  v10 = sub_1E65E6538();

  v11 = sub_1E65E6548();
  _UISolariumEnabled();
  v12 = OBJC_IVAR____TtC10Blackbeard43PersonalizationPrivacyConsentViewController_textLabel;
  v13 = sub_1E65E6558();

  v14 = sub_1E65E6508();
  *&v1[v12] = v14;
  v15 = &v1[OBJC_IVAR____TtC10Blackbeard43PersonalizationPrivacyConsentViewController_onConsent];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = &v1[OBJC_IVAR____TtC10Blackbeard43PersonalizationPrivacyConsentViewController_onDismiss];
  *v16 = 0;
  *(v16 + 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B970, &unk_1E6603F00);
  sub_1E65D7F18();
  sub_1E5DF599C(v27, &v1[OBJC_IVAR____TtC10Blackbeard43PersonalizationPrivacyConsentViewController_privacyPreferenceClient]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0723D0, &qword_1E65EA060);
  sub_1E65D7F18();
  *&v1[OBJC_IVAR____TtC10Blackbeard43PersonalizationPrivacyConsentViewController_eventHub] = v27[0];
  sub_1E65E5BA8();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = objc_opt_self();
  v19 = [v18 bundleForClass_];
  sub_1E65D77C8();
  sub_1E65E5D48();
  v20 = sub_1E65E5C48();

  sub_1E65E5BA8();
  v21 = [v18 bundleForClass_];
  sub_1E65D77C8();
  sub_1E65E5D48();
  v22 = sub_1E65E5C48();

  v26.receiver = v1;
  v26.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v26, sel_initWithTitle_detailText_symbolName_contentLayout_, v20, v22, 0, 2);

  return v23;
}

void sub_1E6460054()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ED079E10, &qword_1E6603F20);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v66 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v63 = &v58 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v62 = &v58 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v61 = &v58 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v60 = &v58 - v13;
  v14 = sub_1E65D7848();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = sub_1E65E5C28();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v67.receiver = v1;
  v67.super_class = ObjectType;
  objc_msgSendSuper2(&v67, sel_viewDidLoad);
  v18 = *&v1[OBJC_IVAR____TtC10Blackbeard43PersonalizationPrivacyConsentViewController_textLabel];
  sub_1E65E5BA8();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v65 = ObjCClassFromMetadata;
  v64 = objc_opt_self();
  v20 = [v64 bundleForClass_];
  sub_1E65D77C8();
  sub_1E65E5D48();
  v21 = sub_1E65E5C48();

  [v18 setText_];

  v22 = [v1 contentView];
  [v22 addSubview_];

  v59 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1E65F32F0;
  v24 = [v18 topAnchor];
  v25 = [v1 contentView];
  v26 = [v25 topAnchor];

  v27 = [v24 constraintEqualToAnchor_];
  *(v23 + 32) = v27;
  v28 = [v18 leadingAnchor];
  v29 = [v1 contentView];
  v30 = [v29 leadingAnchor];

  v31 = [v28 constraintEqualToAnchor_];
  *(v23 + 40) = v31;
  v32 = [v18 trailingAnchor];
  v33 = [v1 contentView];
  v34 = [v33 trailingAnchor];

  v35 = [v32 constraintEqualToAnchor_];
  v36 = v60;
  *(v23 + 48) = v35;
  sub_1E6094C88();
  v37 = sub_1E65E5EF8();

  [v59 activateConstraints_];

  v38 = objc_opt_self();
  v39 = [v38 boldButton];
  [v39 addTarget:v1 action:sel_didTapOptOutButton forControlEvents:64];
  v40 = v39;
  sub_1E65E5BA8();
  v41 = [v64 bundleForClass_];
  sub_1E65D77C8();
  sub_1E65E5D48();
  v42 = sub_1E65E5C48();

  [v40 setTitle:v42 forState:0];

  sub_1E65E6608();
  v43 = v66;
  v44 = sub_1E65E65F8();
  v45 = *(*(v44 - 8) + 48);
  if (v45(v36, 1, v44))
  {
    sub_1E6461660(v36, v43);
    sub_1E65E6618();

    sub_1E5DFE50C(v36, qword_1ED079E10, &qword_1E6603F20);
  }

  else
  {
    [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
    sub_1E65E65E8();
    sub_1E65E6618();
  }

  v46 = v61;
  sub_1E65E6608();
  if (v45(v46, 1, v44))
  {
    sub_1E6461660(v46, v66);
    sub_1E65E6618();

    sub_1E5DFE50C(v46, qword_1ED079E10, &qword_1E6603F20);
  }

  else
  {
    v47 = [objc_opt_self() secondarySystemBackgroundColor];
    sub_1E65E65D8();
    sub_1E65E6618();
  }

  v48 = [v1 buttonTray];
  [v48 addButton_];

  v49 = [v38 boldButton];
  [v49 addTarget:v1 action:sel_didTapOptInButton forControlEvents:64];
  v50 = v49;
  sub_1E65E5BA8();
  v51 = [v64 bundleForClass_];
  sub_1E65D77C8();
  sub_1E65E5D48();
  v52 = sub_1E65E5C48();

  [v50 setTitle:v52 forState:0];

  v53 = v62;
  sub_1E65E6608();
  if (v45(v53, 1, v44))
  {
    v54 = v66;
    sub_1E6461660(v53, v66);
    sub_1E65E6618();

    sub_1E5DFE50C(v53, qword_1ED079E10, &qword_1E6603F20);
    v55 = v63;
  }

  else
  {
    [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
    sub_1E65E65E8();
    sub_1E65E6618();

    v55 = v63;
    v54 = v66;
  }

  sub_1E65E6608();
  if (v45(v55, 1, v44))
  {
    sub_1E6461660(v55, v54);
    sub_1E65E6618();

    sub_1E5DFE50C(v55, qword_1ED079E10, &qword_1E6603F20);
  }

  else
  {
    v56 = [objc_opt_self() secondarySystemBackgroundColor];
    sub_1E65E65D8();
    sub_1E65E6618();
  }

  v57 = [v1 buttonTray];
  [v57 addButton_];

  [v1 setModalInPresentation_];
}

uint64_t sub_1E6460A48()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B6E0, &unk_1E6603F10);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v28 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v28 - v9;
  v11 = sub_1E65DA988();
  v29 = *(v11 - 8);
  v30 = v11;
  v12 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DA958();
  v15 = *(v0 + OBJC_IVAR____TtC10Blackbeard43PersonalizationPrivacyConsentViewController_privacyPreferenceClient + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10Blackbeard43PersonalizationPrivacyConsentViewController_privacyPreferenceClient), *(v0 + OBJC_IVAR____TtC10Blackbeard43PersonalizationPrivacyConsentViewController_privacyPreferenceClient + 24));
  sub_1E65DD668();
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1E6460ED8;
  *(v16 + 24) = 0;
  (*(v2 + 16))(v5, v8, v1);
  v17 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v18 = swift_allocObject();
  (*(v2 + 32))(v18 + v17, v5, v1);
  v19 = (v18 + ((v3 + v17 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v19 = sub_1E646123C;
  v19[1] = v16;
  sub_1E65DACA8();
  v20 = *(v2 + 8);
  v20(v8, v1);
  v21 = sub_1E65DACC8();
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  v21(sub_1E5E20B18, v22);

  v20(v10, v1);
  v23 = v28 + OBJC_IVAR____TtC10Blackbeard43PersonalizationPrivacyConsentViewController_onDismiss;
  swift_beginAccess();
  v24 = *v23;
  if (*v23)
  {
    v25 = *(v23 + 8);
    swift_endAccess();

    v24(v26);
    sub_1E5E29474(v24);
    return (*(v29 + 8))(v14, v30);
  }

  else
  {
    (*(v29 + 8))(v14, v30);
    return swift_endAccess();
  }
}

void sub_1E6460E30(char *a1, uint64_t a2, char a3)
{
  v3 = *&a1[OBJC_IVAR____TtC10Blackbeard43PersonalizationPrivacyConsentViewController_onConsent];
  if (v3)
  {
    v5 = *&a1[OBJC_IVAR____TtC10Blackbeard43PersonalizationPrivacyConsentViewController_onConsent + 8];
    v6 = a1;
    sub_1E5F8711C(v3);
    v3(a3 & 1);
    sub_1E5E29474(v3);
  }

  else
  {
    v7 = a1;
  }

  sub_1E6460A48();
}

uint64_t sub_1E6460ED8(void *a1)
{
  v2 = sub_1E65E3B68();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DE348();
  v7 = a1;
  v8 = sub_1E65E3B48();
  v9 = sub_1E65E6338();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138543362;
    v12 = a1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_1E5DE9000, v8, v9, "[PersonalizationPrivacyConsentViewController] Failed updating personalization privacy preference: %{public}@", v10, 0xCu);
    sub_1E5DFE50C(v11, &unk_1ED072130, &qword_1E65EA840);
    MEMORY[0x1E694F1C0](v11, -1, -1);
    MEMORY[0x1E694F1C0](v10, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1E6461198(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;

  v7 = a1;

  return sub_1E65DACA8();
}

void sub_1E6461244(void (*a1)(void **), uint64_t a2, void (*a3)(void **__return_ptr, uint64_t), uint64_t a4, uint64_t a5)
{
  a3(&v7, a5);
  v6 = v7;
  v8 = 0;
  a1(&v7);

  sub_1E627F0C8(v6, 0);
}

uint64_t sub_1E64612D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B6E0, &unk_1E6603F10);
  v9 = sub_1E65DACC8();
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a4;
  v10[5] = a5;

  v9(sub_1E646163C, v10);
}

uint64_t sub_1E64613AC(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B6E0, &unk_1E6603F10) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_1E64612D8(a1, a2, v2 + v6, v8, v9);
}

uint64_t sub_1E6461468(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *), uint64_t a4, void (*a5)(uint64_t))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B6E0, &unk_1E6603F10);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - v13;
  if (a2)
  {
    a5(a1);
    v15 = sub_1E65DACC8();
    v16 = swift_allocObject();
    *(v16 + 16) = a3;
    *(v16 + 24) = a4;

    v15(sub_1E5E20B0C, v16);

    return (*(v11 + 8))(v14, v10);
  }

  else
  {
    v18 = a1;
    v19 = 0;
    return a3(&v18);
  }
}

uint64_t sub_1E64615F4(uint64_t result, uint64_t (*a2)(uint64_t *))
{
  v2 = *(result + 8);
  v3 = *result;
  v4 = v2;
  if (a2)
  {
    return a2(&v3);
  }

  return result;
}

uint64_t sub_1E6461660(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ED079E10, &qword_1E6603F20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E64616D0@<X0>(uint64_t *a1@<X8>)
{
  v35 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v34 = &v28 - v4;
  v5 = type metadata accessor for CatalogService();
  Description = v5[-1].Description;
  v7 = Description[8];
  MEMORY[0x1EEE9AC00](v5);
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v8 = sub_1E65E3B68();
  __swift_project_value_buffer(v8, qword_1EE2EA2A0);
  sub_1E65E3B38();
  v9 = OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment;
  v31 = OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment;
  v10 = v1 + *(type metadata accessor for AppEnvironment() + 48);
  v32 = v10;
  v11 = *(v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_store);
  swift_getKeyPath();
  v30 = Description[2];
  v30(&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, v5);
  v29 = v5;
  v12 = *(Description + 80);
  v13 = swift_allocObject();
  v33 = Description[4];
  v33(v13 + ((v12 + 16) & ~v12), &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076AA8, &qword_1E65F7738);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();

  v17 = sub_1E65E4E68();
  v28 = v17;
  v18 = v35;
  v35[3] = v14;
  v18[4] = &off_1F5FAA810;
  *v18 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072178, &qword_1E65EA928);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1E65EA670;
  v20 = sub_1E65E60A8();
  v21 = v34;
  (*(*(v20 - 8) + 56))(v34, 1, 1, v20);
  v22 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v29;
  v30(v22, v32 + v31, v29);
  v24 = (v12 + 32) & ~v12;
  v25 = (v7 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v26 + 24) = 0;
  v33(v26 + v24, v22, v23);
  *(v26 + v25) = v28;

  result = sub_1E6059EAC(0, 0, v21, &unk_1E6603F60, v26);
  *(v19 + 32) = result;
  v18[5] = v19;
  return result;
}

uint64_t sub_1E6461AA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076A90, &qword_1E65F7720);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11[-1] - v7;
  sub_1E5E20198(9, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D18, &qword_1E65EECF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076AA8, &qword_1E65F7738);
  result = swift_dynamicCast();
  if (result)
  {
    v11[0] = a1;
    v11[1] = a2;
    sub_1E65E4E98();

    sub_1E65E4E28();
    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t sub_1E6461BF0(uint64_t a1, void *a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v4 = a2[1];
  v3[4] = *a2;
  v3[5] = v4;
  return MEMORY[0x1EEE6DFA0](sub_1E6461C18, 0, 0);
}

uint64_t sub_1E6461C18()
{
  v1 = v0[3];
  v2 = CatalogService.fetchRemoteCatalogEditorialCollectionDetail.getter();
  v0[6] = v3;
  v10 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_1E60EBD8C;
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[2];

  return v10(v8, v6, v7);
}

uint64_t sub_1E6461D18(uint64_t a1, void *a2)
{
  Description = type metadata accessor for CatalogService()[-1].Description;
  v7 = (Description[80] + 16) & ~Description[80];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFA78C;

  return sub_1E6461BF0(a1, a2, v2 + v7);
}

uint64_t sub_1E6461DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073468, &qword_1E65ED258);
  v5[7] = v9;
  v10 = *(v9 - 8);
  v5[8] = v10;
  v11 = *(v10 + 64) + 15;
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6461F30, 0, 0);
}

uint64_t sub_1E6461F30()
{
  v1 = v0[2];
  v2 = CatalogService.makeCatalogUpdatedStream.getter();
  v0[10] = v3;
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_1E646202C;
  v6 = v0[6];

  return v8(v6);
}

uint64_t sub_1E646202C()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v6 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_1E60EC658;
  }

  else
  {
    v4 = sub_1E646215C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E646215C()
{
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  sub_1E65E60F8();
  (*(v3 + 8))(v2, v4);
  v5 = *(MEMORY[0x1E69E8678] + 4);
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_1E6462238;
  v7 = v0[9];
  v8 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 15, 0, 0, v8);
}

uint64_t sub_1E6462238()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E6462334, 0, 0);
}

uint64_t sub_1E6462334()
{
  if (*(v0 + 120) == 1)
  {
    v1 = *(v0 + 48);
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    sub_1E65E6058();
    *(v0 + 112) = sub_1E65E6048();
    v5 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6462434, v5, v4);
  }
}

uint64_t sub_1E6462434()
{
  v1 = v0[14];
  v2 = v0[3];

  sub_1E65E4E78();
  v3 = *(MEMORY[0x1E69E8678] + 4);
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_1E6462238;
  v5 = v0[9];
  v6 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 15, 0, 0, v6);
}

uint64_t sub_1E64624EC(uint64_t a1)
{
  Description = type metadata accessor for CatalogService()[-1].Description;
  v5 = (*(Description + 80) + 32) & ~*(Description + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((Description[8] + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E6461DFC(a1, v6, v7, v1 + v5, v8);
}

void sub_1E6462614(uint64_t a1)
{
  sub_1E64626F4();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    swift_getFunctionTypeMetadata1();
    sub_1E65DC2C8();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E64626F4()
{
  if (!qword_1ED079E98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED079EA0, qword_1E6603F88);
    sub_1E6462764();
    v0 = sub_1E65E3C88();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED079E98);
    }
  }
}

unint64_t sub_1E6462764()
{
  result = qword_1ED079EA8;
  if (!qword_1ED079EA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED079EA0, qword_1E6603F88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079EA8);
  }

  return result;
}

uint64_t sub_1E646280C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *a7 = sub_1E6462C00;
  *(a7 + 8) = v14;
  *(a7 + 16) = 0;
  v15 = a7 + *(type metadata accessor for FocusedLibraryView() + 36);
  return sub_1E64628B8(a3, a4, a5, a6);
}

uint64_t sub_1E64628B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a1;
  v8[5] = a2;
  swift_getFunctionTypeMetadata1();
  return sub_1E65DC2A8();
}

uint64_t (*sub_1E6462958(uint64_t a1))(char a1)
{
  v2 = *(a1 + 36);
  v3 = *(a1 + 16);
  swift_getFunctionTypeMetadata1();
  sub_1E65DC2C8();
  sub_1E65DC2B8();
  v4 = swift_allocObject();
  v5 = *(a1 + 24);
  *(v4 + 16) = v3;
  *(v4 + 24) = v5;
  *(v4 + 32) = v7;
  return sub_1E6462BC8;
}

uint64_t sub_1E64629FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v23 - v11;
  sub_1E6462958(v10);
  v14 = v13;
  v15 = *v2;
  v16 = v2[1];
  v17 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079EA0, qword_1E6603F88);
  sub_1E6462764();
  sub_1E65E3C78();
  swift_getKeyPath();
  sub_1E65E4EC8();

  v18 = *(v14 + 32);
  v19 = *(v14 + 40);
  v25 = v24;
  v18(&v25);

  v20 = *(a1 + 24);
  sub_1E5FEE4C8(v9);
  v21 = *(v5 + 8);
  v21(v9, v4);
  sub_1E5FEE4C8(v12);
  return (v21)(v12, v4);
}

uint64_t sub_1E6462BC8(char a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_1E6462C00()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1E6462C28(unsigned __int8 *a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  return v2(*a1);
}

uint64_t sub_1E6462C54(uint64_t a1, unsigned __int8 a2)
{
  v3 = sub_1E65DF6C8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v12 = v6;
        (*(v4 + 104))(v8, *MEMORY[0x1E699E6E8], v6);
        v13 = sub_1E65DF6B8();
        (*(v4 + 8))(v8, v12);
        if (v13)
        {
          return 0x4D7972617262694CLL;
        }

        else
        {
          return 0x796C746E65636552;
        }
      }
    }

    else if (a2 == 4)
    {
      return 0x63656C6C6F43794DLL;
    }

    return 0xD000000000000012;
  }

  v9 = 0x756F6B726F57794DLL;
  v10 = 0x736B63617453794DLL;
  if (a2 != 2)
  {
    v10 = 0x6172676F7250794DLL;
  }

  if (a2)
  {
    v9 = 0x61746964654D794DLL;
  }

  if (a2 <= 1u)
  {
    return v9;
  }

  else
  {
    return v10;
  }
}

uint64_t sub_1E6462E80(uint64_t a1, unsigned __int8 a2)
{
  v3 = sub_1E65DF6C8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v12 = v6;
        (*(v4 + 104))(v8, *MEMORY[0x1E699E6E8], v6);
        v13 = sub_1E65DF6B8();
        (*(v4 + 8))(v8, v12);
        if (v13)
        {
          return 0x4D7972617262694CLL;
        }

        else
        {
          return 0x796C746E65636552;
        }
      }
    }

    else if (a2 == 4)
    {
      return 0x697463656C6C6F43;
    }

    return 0x64616F6C6E776F44;
  }

  v9 = 0x7374756F6B726F57;
  v10 = 0x736B63617453;
  if (a2 != 2)
  {
    v10 = 0x736D6172676F7250;
  }

  if (a2)
  {
    v9 = 0x697461746964654DLL;
  }

  if (a2 <= 1u)
  {
    return v9;
  }

  else
  {
    return v10;
  }
}

uint64_t sub_1E646309C(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v34 - v24;
  v26 = sub_1E65E62C8();
  if (!v26)
  {
    return sub_1E65E5F88();
  }

  v48 = v26;
  v52 = sub_1E65E6998();
  v39 = sub_1E65E69A8();
  sub_1E65E6948();
  result = sub_1E65E6298();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_1E65E62E8();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_1E65E6988();
      result = sub_1E65E62D8();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E64634BC@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, void (*a5)(char *, uint64_t, uint64_t)@<X4>, uint64_t a6@<X5>, void (*a7)(uint64_t)@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, void (*a10)(uint64_t), uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void (**a15)(char *, char *, uint64_t))
{
  v576 = a7;
  v577 = a8;
  v574 = a5;
  v575 = a6;
  v475 = a4;
  v476 = a3;
  v487 = a2;
  v488 = a1;
  v545 = a9;
  v500 = a11;
  v501 = a10;
  v546 = a15;
  v15 = sub_1E65E03F8();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v565 = &v470 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v564 = sub_1E65DFDA8();
  v485 = *(v564 - 8);
  v18 = *(v485 + 64);
  MEMORY[0x1EEE9AC00](v564);
  v563 = &v470 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v549 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
  v20 = *(*(v549 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v549);
  v539 = &v470 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v528 = &v470 - v23;
  v548 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
  v24 = *(*(v548 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v548 - 8);
  v537 = &v470 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v536 = &v470 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v527 = &v470 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v526 = &v470 - v31;
  v547 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C8, &unk_1E6605140);
  v32 = *(*(v547 - 8) + 64);
  v33 = MEMORY[0x1EEE9AC00](v547);
  v535 = &v470 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v525 = &v470 - v35;
  v36 = type metadata accessor for ContextMenu.Context(0);
  v37 = *(*(v36 - 8) + 64);
  v38 = MEMORY[0x1EEE9AC00](v36 - 8);
  v552 = &v470 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v538 = (&v470 - v40);
  v588 = sub_1E65DF978();
  v484 = *(v588 - 1);
  v41 = *(v484 + 64);
  v42 = MEMORY[0x1EEE9AC00](v588);
  v578 = &v470 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x1EEE9AC00](v42);
  v562 = &v470 - v45;
  MEMORY[0x1EEE9AC00](v44);
  v559 = &v470 - v46;
  v47 = sub_1E65DFAA8();
  v48 = *(v47 - 8);
  v582 = v47;
  v583 = v48;
  v49 = *(v48 + 64);
  v50 = MEMORY[0x1EEE9AC00](v47);
  v572 = (&v470 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
  v52 = MEMORY[0x1EEE9AC00](v50);
  v587 = &v470 - v53;
  v54 = MEMORY[0x1EEE9AC00](v52);
  v541 = (&v470 - v55);
  MEMORY[0x1EEE9AC00](v54);
  v584 = &v470 - v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0720A8, &qword_1E65EA790);
  v585 = *(v57 - 8);
  v586 = v57;
  v58 = *(v585 + 64);
  v59 = MEMORY[0x1EEE9AC00](v57);
  v581 = &v470 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v59);
  v561 = &v470 - v61;
  v551 = sub_1E65DFCC8();
  v558 = *(v551 - 1);
  v62 = *(v558 + 64);
  MEMORY[0x1EEE9AC00](v551);
  v550 = (&v470 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0));
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072638, &qword_1E65EB950);
  v65 = *(*(v64 - 8) + 64);
  MEMORY[0x1EEE9AC00](v64 - 8);
  v502 = &v470 - v66;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072640, &qword_1E65EB958);
  v68 = *(*(v67 - 8) + 64);
  MEMORY[0x1EEE9AC00](v67 - 8);
  v499 = &v470 - v69;
  v70 = sub_1E65D72D8();
  v71 = *(*(v70 - 8) + 64);
  MEMORY[0x1EEE9AC00](v70 - 8);
  v498 = &v470 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v481 = sub_1E65E0128();
  v474 = *(v481 - 8);
  v73 = *(v474 + 64);
  MEMORY[0x1EEE9AC00](v481);
  v480 = &v470 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  v483 = sub_1E65DFC88();
  v482 = *(v483 - 8);
  v75 = *(v482 + 64);
  MEMORY[0x1EEE9AC00](v483);
  v479 = &v470 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758D8, &qword_1E65F1FE0);
  v78 = *(*(v77 - 8) + 64);
  MEMORY[0x1EEE9AC00](v77 - 8);
  v472 = &v470 - v79;
  v478 = sub_1E65DFF38();
  v473 = *(v478 - 8);
  v80 = *(v473 + 64);
  MEMORY[0x1EEE9AC00](v478);
  v477 = &v470 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  v519 = sub_1E65D8C68();
  v518 = *(v519 - 8);
  v82 = *(v518 + 64);
  MEMORY[0x1EEE9AC00](v519);
  v517 = &v470 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072668, &qword_1E65EB978);
  v85 = *(*(v84 - 8) + 64);
  v86 = MEMORY[0x1EEE9AC00](v84 - 8);
  v568 = (&v470 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v86);
  v494 = (&v470 - v88);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072670, &qword_1E65EB980);
  v90 = *(*(v89 - 8) + 64);
  v91 = MEMORY[0x1EEE9AC00](v89 - 8);
  v571 = &v470 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = MEMORY[0x1EEE9AC00](v91);
  v557 = &v470 - v94;
  v95 = MEMORY[0x1EEE9AC00](v93);
  v524 = &v470 - v96;
  MEMORY[0x1EEE9AC00](v95);
  v520 = &v470 - v97;
  v515 = sub_1E65E00B8();
  v514 = *(v515 - 8);
  v98 = *(v514 + 64);
  v99 = MEMORY[0x1EEE9AC00](v515);
  v491 = &v470 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v99);
  v493 = &v470 - v101;
  v544 = sub_1E65E0438();
  v543 = *(v544 - 8);
  v102 = *(v543 + 64);
  MEMORY[0x1EEE9AC00](v544);
  v553 = &v470 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072630, &qword_1E65EB948);
  v105 = *(*(v104 - 8) + 64);
  MEMORY[0x1EEE9AC00](v104 - 8);
  v554 = (&v470 - v106);
  v573 = type metadata accessor for ViewDescriptor();
  v107 = *(*(v573 - 8) + 64);
  MEMORY[0x1EEE9AC00](v573);
  v492 = (&v470 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0));
  v510 = sub_1E65E01E8();
  v509 = *(v510 - 8);
  v109 = *(v509 + 64);
  MEMORY[0x1EEE9AC00](v510);
  v508 = &v470 - ((v110 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072648, &qword_1E65EB960);
  v112 = *(*(v111 - 8) + 64);
  v113 = MEMORY[0x1EEE9AC00](v111 - 8);
  v490 = &v470 - ((v114 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = MEMORY[0x1EEE9AC00](v113);
  v117 = &v470 - v116;
  MEMORY[0x1EEE9AC00](v115);
  v507 = &v470 - v118;
  v534 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072650, &qword_1E65EB968);
  v119 = *(*(v534 - 8) + 64);
  v120 = MEMORY[0x1EEE9AC00](v534);
  v489 = &v470 - ((v121 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = MEMORY[0x1EEE9AC00](v120);
  v542 = (&v470 - v123);
  MEMORY[0x1EEE9AC00](v122);
  v505 = &v470 - v124;
  v506 = sub_1E65DFF88();
  v504 = *(v506 - 8);
  v125 = *(v504 + 64);
  MEMORY[0x1EEE9AC00](v506);
  v503 = &v470 - ((v126 + 15) & 0xFFFFFFFFFFFFFFF0);
  v530 = sub_1E65E01B8();
  v497 = *(v530 - 8);
  v127 = *(v497 + 64);
  v128 = MEMORY[0x1EEE9AC00](v530);
  v486 = &v470 - ((v129 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v128);
  v529 = &v470 - v130;
  v131 = sub_1E65DFBB8();
  v132 = *(*(v131 - 8) + 64);
  MEMORY[0x1EEE9AC00](v131);
  v134 = &v470 - ((v133 + 15) & 0xFFFFFFFFFFFFFFF0);
  v522 = sub_1E65DFE28();
  v521 = *(v522 - 8);
  v135 = *(v521 + 64);
  MEMORY[0x1EEE9AC00](v522);
  v532 = &v470 - ((v136 + 15) & 0xFFFFFFFFFFFFFFF0);
  v523 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072610, &qword_1E65EB930);
  v137 = *(*(v523 - 8) + 64);
  v138 = MEMORY[0x1EEE9AC00](v523);
  v570 = &v470 - ((v139 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = MEMORY[0x1EEE9AC00](v138);
  v580 = &v470 - v141;
  v142 = MEMORY[0x1EEE9AC00](v140);
  v556 = &v470 - v143;
  v144 = MEMORY[0x1EEE9AC00](v142);
  v560 = &v470 - v145;
  v146 = MEMORY[0x1EEE9AC00](v144);
  v567 = &v470 - v147;
  MEMORY[0x1EEE9AC00](v146);
  v533 = (&v470 - v148);
  v579 = type metadata accessor for ItemContext();
  v149 = *(*(v579 - 8) + 64);
  v150 = MEMORY[0x1EEE9AC00](v579);
  v569 = &v470 - ((v151 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = MEMORY[0x1EEE9AC00](v150);
  v555 = &v470 - v153;
  v154 = MEMORY[0x1EEE9AC00](v152);
  v566 = &v470 - v155;
  MEMORY[0x1EEE9AC00](v154);
  v511 = (&v470 - v156);
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072098, &qword_1E65EA780);
  v158 = *(v157 - 8);
  v159 = *(v158 + 64);
  v160 = MEMORY[0x1EEE9AC00](v157);
  v495 = &v470 - ((v161 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v160);
  v516 = &v470 - v162;
  v496 = sub_1E65D7848();
  v163 = *(v496 - 8);
  v164 = *(v163 + 64);
  MEMORY[0x1EEE9AC00](v496);
  v166 = &v470 - ((v165 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = sub_1E65E5C28();
  v168 = *(*(v167 - 8) + 64);
  MEMORY[0x1EEE9AC00](v167 - 8);
  v170 = &v470 - ((v169 + 15) & 0xFFFFFFFFFFFFFFF0);
  v513 = sub_1E65E0298();
  v512 = *(v513 - 8);
  v171 = *(v512 + 64);
  MEMORY[0x1EEE9AC00](v513);
  v531 = &v470 - ((v172 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = sub_1E65DFFB8();
  v174 = *(*(v173 - 8) + 64);
  MEMORY[0x1EEE9AC00](v173);
  v176 = &v470 - ((v175 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E6473E80(v546, v176, MEMORY[0x1E699D618]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v540 = v117;
    if (!EnumCaseMultiPayload)
    {
      v470 = v158;
      v471 = v157;
      (*(v512 + 32))(v531, v176, v513);
      sub_1E65E5BA8();
      type metadata accessor for LocalizationBundle();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v211 = objc_opt_self();
      v212 = [v211 bundleForClass_];
      v213 = *(v163 + 16);
      v214 = v496;
      v213(v166, a13, v496);
      v584 = sub_1E65E5D48();
      v587 = v215;
      sub_1E65E5BA8();
      v216 = [v211 &selRef:ObjCClassFromMetadata alertControllerWithTitle:? message:? preferredStyle:? + 3];
      v213(v166, a13, v214);
      v217 = sub_1E65E5D48();
      v219 = v218;
      sub_1E65E5BA8();
      v220 = [v211 bundleForClass_];
      v213(v166, a13, v214);
      v221 = sub_1E65E5D48();
      v223 = v222;
      v224 = v511;
      *v511 = 0xD000000000000010;
      v224[1] = 0x80000001E6610B10;
      type metadata accessor for BrowseItemContext();
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v225 = sub_1E65E0278();
      if (!v226)
      {
        v227 = v587;

        v225 = v584;
        v226 = v227;
      }

      v228 = v533;
      *v533 = v225;
      v228[1] = v226;
      v229 = sub_1E65E0288();
      if (v230)
      {
        v231 = v229;
        v232 = v230;

        v217 = v231;
        v219 = v232;
      }

      v233 = v533;
      v533[2] = v217;
      v233[3] = v219;
      v234 = sub_1E65E0268();
      if (v235)
      {
        v236 = v234;
        v237 = v235;

        v221 = v236;
        v223 = v237;
      }

      v238 = v533;
      v533[4] = v221;
      v238[5] = v223;
      v239 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076B28, &qword_1E6604130) + 80);
      v240 = sub_1E65DFAE8();
      (*(*(v240 - 8) + 16))(v238 + v239, a12, v240);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v241 = type metadata accessor for ContextMenu(0);
      v242 = *(*(v241 - 8) + 56);
      v588 = v241;
      v242(v520, 1, 1);
      v243 = sub_1E65E28F8();
      v245 = v244;
      (*(v518 + 104))(v517, *MEMORY[0x1E69CBAA0], v519);
      v246 = sub_1E65E0278();
      if (v247)
      {
        v248 = v246;
        v249 = v247;

        v250 = v248;
      }

      else
      {
        v249 = v587;
        v250 = v584;
      }

      v389 = type metadata accessor for ItemMetrics();
      v390 = v389[7];
      v391 = *MEMORY[0x1E69CC458];
      v392 = sub_1E65D9908();
      v393 = v494;
      (*(*(v392 - 8) + 104))(v494 + v390, v391, v392);
      v394 = v389[8];
      v395 = *MEMORY[0x1E69CBCD8];
      v584 = sub_1E65D8F28();
      v396 = *(v584 - 8);
      v582 = *(v396 + 104);
      v583 = v396 + 104;
      v582(v393 + v394, v395, v584);
      v397 = v389[10];
      v398 = *MEMORY[0x1E69CCA80];
      v399 = sub_1E65D9F88();
      (*(*(v399 - 8) + 104))(v393 + v397, v398, v399);
      *v393 = v243;
      v393[1] = v245;
      (*(v518 + 32))(v393 + v389[5], v517, v519);
      v400 = (v393 + v389[6]);
      *v400 = v250;
      v400[1] = v249;
      (*(*(v389 - 1) + 56))(v393, 0, 1, v389);
      v587 = type metadata accessor for ActionButtonDescriptor(0);
      v572 = type metadata accessor for ArtworkDescriptor();
      v581 = sub_1E6473E38(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor);
      v580 = sub_1E6473E38(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor);
      v578 = sub_1E6473E38(&qword_1EE2DB8B0, type metadata accessor for ContextMenu);
      v577 = sub_1E6473E38(&qword_1EE2DB720, type metadata accessor for ItemContext);
      v576 = sub_1E6473E38(&qword_1EE2DB738, type metadata accessor for ItemContext);
      v575 = sub_1E6473E38(&qword_1EE2DB730, type metadata accessor for ItemContext);
      v574 = sub_1E6473E38(&qword_1EE2DB650, type metadata accessor for ItemMetrics);
      v571 = sub_1E6473E38(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor);
      v401 = v516;
      sub_1E65E0488();
      v570 = 0x80000001E66179D0;
      v402 = v542;
      *v542 = 1;
      v402[1] = 0;
      v403 = *MEMORY[0x1E699D840];
      v404 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072678, &qword_1E65EB988);
      (*(*(v404 - 8) + 104))(v402, v403, v404);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072680, &qword_1E65EB990);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v405 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072660, &qword_1E65EB970);
      (*(*(v405 - 8) + 56))(v540, 1, 1, v405);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073010, &qword_1E65ECE68);
      v406 = *(v585 + 72);
      v407 = (*(v585 + 80) + 32) & ~*(v585 + 80);
      v408 = swift_allocObject();
      *(v408 + 16) = xmmword_1E65EA670;
      v409 = v470;
      (*(v470 + 16))(v408 + v407, v401, v471);
      swift_storeEnumTagMultiPayload();
      v410 = type metadata accessor for SectionMetrics();
      v411 = v554;
      v582(v554 + *(v410 + 24), *MEMORY[0x1E69CBCB0], v584);
      v412 = sub_1E6427498(MEMORY[0x1E69E7CC0]);
      *v411 = 0xD000000000000017;
      v411[1] = 0x80000001E66179D0;
      v411[2] = 0;
      v411[3] = 0xE000000000000000;
      *(v411 + *(v410 + 32)) = v412;
      (*(*(v410 - 8) + 56))(v411, 0, 1, v410);
      (*(v543 + 104))(v553, *MEMORY[0x1E699D7D8], v544);
      type metadata accessor for SectionHeaderSubtitleDescriptor();
      sub_1E6473E38(&qword_1EE2DA950, type metadata accessor for SectionMetrics);
      sub_1E5DF11E0();
      sub_1E6473E38(&qword_1EE2D7D88, type metadata accessor for SectionHeaderSubtitleDescriptor);
      sub_1E65E0418();
      (*(v409 + 8))(v516, v471);
      return (*(v512 + 8))(v531, v513);
    }

    if (EnumCaseMultiPayload == 1)
    {
      (*(v521 + 32))(v532, v176, v522);
      sub_1E65DFE18();
      v178 = swift_getEnumCaseMultiPayload();
      v471 = v157;
      v470 = v158;
      if (v178)
      {
        if (v178 == 1)
        {
          v179 = v482;
          v180 = v479;
          v181 = v483;
          (*(v482 + 32))(v479, v134, v483);
          (*(v179 + 16))(v566, v180, v181);
          type metadata accessor for BrowseItemContext();
          swift_storeEnumTagMultiPayload();
          swift_storeEnumTagMultiPayload();
          v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079ED0, &qword_1E6604030);
          v183 = v182[12];
          v184 = (v567 + v182[16]);
          v588 = (v567 + v182[20]);
          sub_1E65DFC58();
          sub_1E65DFC68();
          sub_1E65E5BA8();
          type metadata accessor for LocalizationBundle();
          v185 = swift_getObjCClassFromMetadata();
          v186 = objc_opt_self();
          v187 = [v186 bundleForClass_];
          v188 = *(v163 + 16);
          v189 = v496;
          v188(v166, a13, v496);
          *v184 = sub_1E65E5D48();
          v184[1] = v190;
          sub_1E65E5BA8();
          v191 = [v186 bundleForClass_];
          v188(v166, a13, v189);
          v192 = sub_1E65E5D48();
          v193 = v588;
          *v588 = v192;
          v193[1] = v194;
          v195 = *MEMORY[0x1E699DA78];
          v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079ED8, &qword_1E6604038);
          (*(*(v196 - 8) + 104))(v567, v195, v196);
          swift_storeEnumTagMultiPayload();
          v197 = type metadata accessor for ContextMenu(0);
          (*(*(v197 - 8) + 56))(v524, 1, 1, v197);
          v198 = type metadata accessor for ItemMetrics();
          (*(*(v198 - 8) + 56))(v568, 1, 1, v198);
          v199 = type metadata accessor for ActionButtonDescriptor(0);
          v200 = type metadata accessor for ArtworkDescriptor();
          v588 = sub_1E6473E38(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor);
          v587 = sub_1E6473E38(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor);
          sub_1E6473E38(&qword_1EE2DB8B0, type metadata accessor for ContextMenu);
          sub_1E6473E38(&qword_1EE2DB720, type metadata accessor for ItemContext);
          sub_1E6473E38(&qword_1EE2DB738, type metadata accessor for ItemContext);
          sub_1E6473E38(&qword_1EE2DB730, type metadata accessor for ItemContext);
          sub_1E6473E38(&qword_1EE2DB650, type metadata accessor for ItemMetrics);
          sub_1E6473E38(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor);
          v583 = v198;
          v201 = v495;
          v587 = v200;
          v588 = v199;
          v584 = v197;
          sub_1E65E0488();
          (*(v482 + 8))(v479, v483);
        }

        else
        {
          v424 = v474;
          v425 = v480;
          v426 = v481;
          (*(v474 + 32))(v480, v134, v481);
          (*(v424 + 16))(v566, v425, v426);
          type metadata accessor for BrowseItemContext();
          swift_storeEnumTagMultiPayload();
          swift_storeEnumTagMultiPayload();
          v427 = v567;
          sub_1E65E00F8();
          v428 = *MEMORY[0x1E699DA80];
          v429 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079ED8, &qword_1E6604038);
          (*(*(v429 - 8) + 104))(v427, v428, v429);
          swift_storeEnumTagMultiPayload();
          v430 = type metadata accessor for ContextMenu(0);
          (*(*(v430 - 8) + 56))(v524, 1, 1, v430);
          v431 = type metadata accessor for ItemMetrics();
          (*(*(v431 - 8) + 56))(v568, 1, 1, v431);
          v588 = type metadata accessor for ActionButtonDescriptor(0);
          v587 = type metadata accessor for ArtworkDescriptor();
          v584 = sub_1E6473E38(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor);
          v583 = sub_1E6473E38(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor);
          sub_1E6473E38(&qword_1EE2DB8B0, type metadata accessor for ContextMenu);
          sub_1E6473E38(&qword_1EE2DB720, type metadata accessor for ItemContext);
          sub_1E6473E38(&qword_1EE2DB738, type metadata accessor for ItemContext);
          sub_1E6473E38(&qword_1EE2DB730, type metadata accessor for ItemContext);
          sub_1E6473E38(&qword_1EE2DB650, type metadata accessor for ItemMetrics);
          sub_1E6473E38(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor);
          v583 = v431;
          v201 = v495;
          v584 = v430;
          sub_1E65E0488();
          (*(v424 + 8))(v480, v481);
        }
      }

      else
      {
        v414 = v473;
        v415 = v477;
        v416 = v478;
        (*(v473 + 32))(v477, v134, v478);
        (*(v414 + 16))(v566, v415, v416);
        type metadata accessor for BrowseItemContext();
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        v417 = v472;
        sub_1E65DFF08();
        v418 = v567;
        v476(v417);
        sub_1E5DFE50C(v417, &qword_1ED0758D8, &qword_1E65F1FE0);
        v419 = *MEMORY[0x1E699DA88];
        v420 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079ED8, &qword_1E6604038);
        (*(*(v420 - 8) + 104))(v418, v419, v420);
        swift_storeEnumTagMultiPayload();
        v421 = type metadata accessor for ContextMenu(0);
        (*(*(v421 - 8) + 56))(v524, 1, 1, v421);
        v422 = type metadata accessor for ItemMetrics();
        (*(*(v422 - 8) + 56))(v568, 1, 1, v422);
        v588 = type metadata accessor for ActionButtonDescriptor(0);
        v423 = type metadata accessor for ArtworkDescriptor();
        v587 = sub_1E6473E38(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor);
        v584 = sub_1E6473E38(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor);
        sub_1E6473E38(&qword_1EE2DB8B0, type metadata accessor for ContextMenu);
        sub_1E6473E38(&qword_1EE2DB720, type metadata accessor for ItemContext);
        sub_1E6473E38(&qword_1EE2DB738, type metadata accessor for ItemContext);
        sub_1E6473E38(&qword_1EE2DB730, type metadata accessor for ItemContext);
        sub_1E6473E38(&qword_1EE2DB650, type metadata accessor for ItemMetrics);
        sub_1E6473E38(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor);
        v583 = v422;
        v201 = v495;
        v587 = v423;
        v584 = v421;
        sub_1E65E0488();
        (*(v414 + 8))(v477, v478);
      }

      v432 = sub_1E65DFDF8();
      v581 = v433;
      v582 = v432;
      v434 = v542;
      *v542 = 1;
      v434[1] = 0;
      v435 = *MEMORY[0x1E699D840];
      v436 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072678, &qword_1E65EB988);
      (*(*(v436 - 8) + 104))(v434, v435, v436);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072680, &qword_1E65EB990);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v437 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072660, &qword_1E65EB970);
      (*(*(v437 - 8) + 56))(v540, 1, 1, v437);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073010, &qword_1E65ECE68);
      v438 = *(v585 + 72);
      v439 = (*(v585 + 80) + 32) & ~*(v585 + 80);
      v440 = swift_allocObject();
      *(v440 + 16) = xmmword_1E65EA670;
      v441 = v470;
      (*(v470 + 16))(v440 + v439, v201, v471);
      swift_storeEnumTagMultiPayload();
      v586 = type metadata accessor for SectionMetrics();
      (*(*(v586 - 8) + 56))(v554, 1, 1, v586);
      (*(v543 + 104))(v553, *MEMORY[0x1E699D7D8], v544);
      type metadata accessor for ActionButtonDescriptor(0);
      type metadata accessor for ArtworkDescriptor();
      type metadata accessor for ContextMenu(0);
      type metadata accessor for ItemMetrics();
      v585 = type metadata accessor for SectionHeaderSubtitleDescriptor();
      v580 = sub_1E6473E38(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor);
      v578 = sub_1E6473E38(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor);
      v577 = sub_1E6473E38(&qword_1EE2DB8B0, type metadata accessor for ContextMenu);
      v576 = sub_1E6473E38(&qword_1EE2DB720, type metadata accessor for ItemContext);
      sub_1E6473E38(&qword_1EE2DB738, type metadata accessor for ItemContext);
      sub_1E6473E38(&qword_1EE2DB730, type metadata accessor for ItemContext);
      sub_1E6473E38(&qword_1EE2DB650, type metadata accessor for ItemMetrics);
      sub_1E6473E38(&qword_1EE2DA950, type metadata accessor for SectionMetrics);
      sub_1E5DF11E0();
      sub_1E6473E38(&qword_1EE2D7D88, type metadata accessor for SectionHeaderSubtitleDescriptor);
      sub_1E6473E38(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor);
      sub_1E65E0418();
      (*(v441 + 8))(v201, v471);
      return (*(v521 + 8))(v532, v522);
    }

    v301 = v529;
    (*(v497 + 32))(v529, v176, v530);
    v302 = sub_1E65E0198();
    v170 = v302;
    v587 = v302;
    if (v303)
    {
      v540 = sub_1E65E0138();
      v539 = v304;
      v305 = sub_1E65E0148();
      v306 = sub_1E634BE4C(v305);
      v501(v306);
      sub_1E65E0178();
      v307 = v499;
      sub_1E65E01A8();
      v158 = type metadata accessor for SectionHeaderSubtitleDescriptor();
      swift_storeEnumTagMultiPayload();
      (*(*(v158 - 8) + 56))(v307, 0, 1, v158);
      v488(v301);
      v308 = type metadata accessor for ActionButtonDescriptor(0);
      v309 = sub_1E6473E38(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor);
      v310 = sub_1E6473E38(&qword_1EE2D7D88, type metadata accessor for SectionHeaderSubtitleDescriptor);
      v311 = v490;
      v569 = v308;
      v537 = v158;
      v558 = v309;
      v536 = v310;
      sub_1E65E0458();
      v312 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072660, &qword_1E65EB970);
      (*(*(v312 - 8) + 56))(v311, 0, 1, v312);
      v313 = *(v170 + 2);
      if (!v313)
      {

        v581 = MEMORY[0x1E69E7CC0];
LABEL_103:
        v454 = v497;
        v455 = v486;
        (*(v497 + 16))(v486, v529, v530);
        v456 = v554;
        sub_1E6470CD8(v455, v554);
        v457 = type metadata accessor for SectionMetrics();
        (*(*(v457 - 8) + 56))(v456, 0, 1, v457);
        (*(v543 + 104))(v553, *MEMORY[0x1E699D7D8], v544);
        v588 = type metadata accessor for ArtworkDescriptor();
        v587 = type metadata accessor for ContextMenu(0);
        v586 = type metadata accessor for ItemMetrics();
        v585 = sub_1E6473E38(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor);
        sub_1E6473E38(&qword_1EE2DB8B0, type metadata accessor for ContextMenu);
        sub_1E6473E38(&qword_1EE2DB720, type metadata accessor for ItemContext);
        sub_1E6473E38(&qword_1EE2DB738, type metadata accessor for ItemContext);
        sub_1E6473E38(&qword_1EE2DB730, type metadata accessor for ItemContext);
        sub_1E6473E38(&qword_1EE2DB650, type metadata accessor for ItemMetrics);
        sub_1E6473E38(&qword_1EE2DA950, type metadata accessor for SectionMetrics);
        sub_1E5DF11E0();
        sub_1E6473E38(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor);
        sub_1E65E0418();
        return (*(v454 + 8))(v529, v530);
      }

      v589[0] = MEMORY[0x1E69E7CC0];
      sub_1E601BE24(0, v313, 0);
      v314 = 0;
      v578 = &v170[(*(v583 + 80) + 32) & ~*(v583 + 80)];
      v315 = v589[0];
      v552 = (v484 + 32);
      v572 = (v484 + 16);
      v551 = (v484 + 8);
      v550 = (v485 + 32);
      v546 = (v485 + 16);
      v542 = (v485 + 8);
      v316 = v559;
      v157 = v541;
      v580 = v313;
      while (1)
      {
        if (v314 >= *(v170 + 2))
        {
          goto LABEL_107;
        }

        v317 = v584;
        v318 = MEMORY[0x1E699D4B8];
        sub_1E6473E80(&v578[*(v583 + 72) * v314], v584, MEMORY[0x1E699D4B8]);
        sub_1E6473E80(v317, v157, v318);
        v319 = swift_getEnumCaseMultiPayload();
        v581 = v315;
        if (v319 != 1)
        {
          break;
        }

        v320 = v563;
        v321 = v564;
        (*v550)(v563, v157, v564);
        v322 = *v546;
        v571 = v314;
        v322(v566, v320, v321);
        type metadata accessor for BrowseItemContext();
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        v323 = sub_1E65DFD58();
        v324 = sub_1E634BE4C(v323);
        v576(v324);
        sub_1E6473E38(&qword_1EE2DB720, type metadata accessor for ItemContext);
        sub_1E6473E38(&qword_1EE2DB738, type metadata accessor for ItemContext);
        sub_1E6473E38(&qword_1EE2DB730, type metadata accessor for ItemContext);
        v314 = v571;
        v158 = v561;
        v316 = v559;
        sub_1E65E04D8();
        (*v542)(v320, v321);
LABEL_58:
        swift_storeEnumTagMultiPayload();
        sub_1E6473FC0(v584, MEMORY[0x1E699D4B8]);
        v315 = v581;
        v589[0] = v581;
        v358 = *(v581 + 2);
        v357 = *(v581 + 3);
        v170 = v587;
        if (v358 >= v357 >> 1)
        {
          sub_1E601BE24(v357 > 1, v358 + 1, 1);
          v315 = v589[0];
        }

        ++v314;
        *(v315 + 2) = v358 + 1;
        sub_1E5FAB460(v158, &v315[((*(v585 + 80) + 32) & ~*(v585 + 80)) + *(v585 + 72) * v358], &qword_1ED0720A8, &qword_1E65EA790);
        if (v580 == v314)
        {

          v581 = v315;
          goto LABEL_103;
        }
      }

      v325 = v588;
      (*v552)(v316, v157, v588);
      v326 = v560;
      v574(v316, 0, 0);
      v327 = *v572;
      (*v572)(v555, v316, v325);
      type metadata accessor for BrowseItemContext();
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      sub_1E6473EE8(v326, v556);
      if (sub_1E65DF878() != 8)
      {
        v332 = type metadata accessor for ContextMenu(0);
        (*(*(v332 - 8) + 56))(v557, 1, 1, v332);
        v333 = v316;
LABEL_57:
        v354 = v562;
        v355 = v333;
        (v327)(v562, v333, v588);
        v356 = v567;
        sub_1E6473EE8(v560, v567);
        sub_1E646FBE4(v354, v356, v568);
        v571 = type metadata accessor for ArtworkDescriptor();
        type metadata accessor for ContextMenu(0);
        v570 = type metadata accessor for ItemMetrics();
        sub_1E6473E38(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor);
        sub_1E6473E38(&qword_1EE2DB8B0, type metadata accessor for ContextMenu);
        sub_1E6473E38(&qword_1EE2DB720, type metadata accessor for ItemContext);
        sub_1E6473E38(&qword_1EE2DB738, type metadata accessor for ItemContext);
        sub_1E6473E38(&qword_1EE2DB730, type metadata accessor for ItemContext);
        sub_1E6473E38(&qword_1EE2DB650, type metadata accessor for ItemMetrics);
        sub_1E6473E38(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor);
        v158 = v561;
        sub_1E65E0488();
        sub_1E5DFE50C(v560, &qword_1ED072610, &qword_1E65EB930);
        (*v551)(v355, v588);
        v316 = v355;
        v157 = v541;
        goto LABEL_58;
      }

      v328 = sub_1E65DF8C8();
      v329 = v538;
      *v538 = v328;
      v329[1] = v330;
      v331 = sub_1E65DF968();
      v571 = v327;
      if (v331 >= 4)
      {
        v336 = v528;
        v337 = v526;
        v335 = v525;
      }

      else
      {
        v334 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077E20, &unk_1E65F7140) + 48);
        sub_1E65DF8C8();
        sub_1E65DF8F8();
        sub_1E65DF8E8();
        v335 = v525;
        v316 = v559;
        sub_1E65DE758();
        sub_1E65D7688();
        v336 = v528;
        v337 = v526;
      }

      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v338 = sub_1E65DF888();
      if (v338 > 5)
      {
        if (v338 - 7 >= 2)
        {
          v343 = v336 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737D0, &unk_1E65F4330) + 48);
          *(v336 + 4) = 0;
          *v336 = 0;
          v340 = 1;
          goto LABEL_56;
        }
      }

      else if (v338 >= 5)
      {
        v339 = v336 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737D0, &unk_1E65F4330) + 48);
        *(v336 + 4) = 0;
        v340 = 1;
        *v336 = 1;
LABEL_56:
        *(v336 + 5) = v340;
        sub_1E65D7688();
        swift_storeEnumTagMultiPayload();
        v344 = sub_1E65DF828();
        v345 = v527;
        *v527 = v344 & 1;
        v346 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074028, &unk_1E65F7130);
        v347 = v538;
        v348 = v538 + *(v346 + 48);
        v349 = v345 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340) + 48);
        sub_1E65D7688();
        swift_storeEnumTagMultiPayload();
        State = type metadata accessor for WorkoutContextMenuLoadState();
        v333 = v316;
        v351 = State[8];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A70, &qword_1E65F2620);
        swift_storeEnumTagMultiPayload();
        sub_1E5FAB460(v335, v348, &qword_1ED0737C8, &unk_1E6605140);
        sub_1E5FAB460(v337, v348 + State[5], &unk_1ED077CC0, &unk_1E65F2610);
        sub_1E5FAB460(v336, v348 + State[6], &unk_1ED077CD0, &unk_1E65F42F0);
        sub_1E5FAB460(v345, v348 + State[7], &unk_1ED077CC0, &unk_1E65F2610);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073B60, &unk_1E65EE020);
        swift_storeEnumTagMultiPayload();
        v352 = v557;
        sub_1E65D76E8();
        v353 = type metadata accessor for ContextMenu(0);
        sub_1E6473F58(v347, &v352[*(v353 + 20)], type metadata accessor for ContextMenu.Context);
        (*(*(v353 - 8) + 56))(v352, 0, 1, v353);
        v327 = v571;
        goto LABEL_57;
      }

      v341 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737D0, &unk_1E65F4330);
      v340 = 0;
      v342 = v336 + *(v341 + 48);
      *v336 = 0;
      *(v336 + 4) = 1;
      goto LABEL_56;
    }

    v381 = *(v302 + 16);
    if (v381)
    {
      v589[0] = MEMORY[0x1E69E7CC0];
      sub_1E601D1D0(0, v381, 0);
      v382 = 0;
      v383 = v589[0];
      v384 = &v170[(*(v558 + 80) + 32) & ~*(v558 + 80)];
      v170 = (v558 + 8);
      do
      {
        if (v382 >= *(v587 + 2))
        {
          goto LABEL_108;
        }

        v385 = v550;
        v386 = v551;
        (*(v558 + 16))(v550, &v384[*(v558 + 72) * v382], v551);
        v387 = sub_1E646DC14(v385, v574, v575, v576, v577);
        (*v170)(v385, v386);
        v589[0] = v383;
        v157 = *(v383 + 16);
        v388 = *(v383 + 24);
        v158 = v157 + 1;
        if (v157 >= v388 >> 1)
        {
          sub_1E601D1D0((v388 > 1), v157 + 1, 1);
          v383 = v589[0];
        }

        ++v382;
        *(v383 + 16) = v158;
        *(v383 + 8 * v157 + 32) = v387;
      }

      while (v381 != v382);

      v301 = v529;
      v157 = *(v383 + 16);
      if (v157)
      {
        goto LABEL_85;
      }
    }

    else
    {

      v383 = MEMORY[0x1E69E7CC0];
      v157 = *(MEMORY[0x1E69E7CC0] + 16);
      if (v157)
      {
LABEL_85:
        v158 = 0;
        v442 = MEMORY[0x1E69E7CC0];
        do
        {
          if (v158 >= *(v383 + 16))
          {
            goto LABEL_109;
          }

          v443 = *(v383 + 32 + 8 * v158);
          v444 = *(v443 + 16);
          v170 = v442[2];
          v445 = &v170[v444];
          if (__OFADD__(v170, v444))
          {
            goto LABEL_110;
          }

          v446 = *(v383 + 32 + 8 * v158);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (isUniquelyReferenced_nonNull_native && v445 <= v442[3] >> 1)
          {
            if (!*(v443 + 16))
            {
              goto LABEL_86;
            }
          }

          else
          {
            if (v170 <= v445)
            {
              v448 = &v170[v444];
            }

            else
            {
              v448 = v170;
            }

            v442 = sub_1E64F7230(isUniquelyReferenced_nonNull_native, v448, 1, v442);
            if (!*(v443 + 16))
            {
LABEL_86:

              if (v444)
              {
                goto LABEL_111;
              }

              goto LABEL_87;
            }
          }

          v449 = v442[2];
          if ((v442[3] >> 1) - v449 < v444)
          {
            goto LABEL_112;
          }

          v450 = v442 + ((*(v585 + 80) + 32) & ~*(v585 + 80)) + *(v585 + 72) * v449;
          swift_arrayInitWithCopy();

          if (v444)
          {
            v451 = v442[2];
            v452 = __OFADD__(v451, v444);
            v453 = v451 + v444;
            if (v452)
            {
              goto LABEL_113;
            }

            v442[2] = v453;
          }

LABEL_87:
          ++v158;
        }

        while (v157 != v158);
      }
    }

    v458 = sub_1E65E0138();
    v587 = v459;
    v588 = v458;
    v460 = sub_1E65E0148();
    v461 = sub_1E634BE4C(v460);
    v501(v461);
    sub_1E65E0178();
    v462 = v499;
    sub_1E65E01A8();
    v463 = type metadata accessor for SectionHeaderSubtitleDescriptor();
    swift_storeEnumTagMultiPayload();
    (*(*(v463 - 8) + 56))(v462, 0, 1, v463);
    v488(v301);
    v586 = type metadata accessor for ActionButtonDescriptor(0);
    v585 = sub_1E6473E38(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor);
    v584 = sub_1E6473E38(&qword_1EE2D7D88, type metadata accessor for SectionHeaderSubtitleDescriptor);
    v464 = v540;
    sub_1E65E0458();
    v465 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072660, &qword_1E65EB970);
    (*(*(v465 - 8) + 56))(v464, 0, 1, v465);
    v466 = v497;
    v467 = v486;
    (*(v497 + 16))(v486, v301, v530);
    v468 = v554;
    sub_1E6470CD8(v467, v554);
    v469 = type metadata accessor for SectionMetrics();
    (*(*(v469 - 8) + 56))(v468, 0, 1, v469);
    (*(v543 + 104))(v553, *MEMORY[0x1E699D7D8], v544);
    v583 = type metadata accessor for ArtworkDescriptor();
    v582 = type metadata accessor for ContextMenu(0);
    v581 = type metadata accessor for ItemMetrics();
    v580 = sub_1E6473E38(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor);
    v578 = sub_1E6473E38(&qword_1EE2DB8B0, type metadata accessor for ContextMenu);
    sub_1E6473E38(&qword_1EE2DB720, type metadata accessor for ItemContext);
    sub_1E6473E38(&qword_1EE2DB738, type metadata accessor for ItemContext);
    sub_1E6473E38(&qword_1EE2DB730, type metadata accessor for ItemContext);
    sub_1E6473E38(&qword_1EE2DB650, type metadata accessor for ItemMetrics);
    sub_1E6473E38(&qword_1EE2DA950, type metadata accessor for SectionMetrics);
    sub_1E5DF11E0();
    sub_1E6473E38(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor);
    sub_1E65E0418();
    return (*(v466 + 8))(v529, v530);
  }

  if (EnumCaseMultiPayload != 3)
  {
    if (EnumCaseMultiPayload == 4)
    {
      (*(v509 + 32))(v508, v176, v510);
      v202 = sub_1E65E01D8();
      v203 = v492;
      *v492 = v202;
      *(v203 + 8) = v204;
      swift_storeEnumTagMultiPayload();
      v205 = sub_1E65E01D8();
      v587 = v206;
      v588 = v205;
      sub_1E6473E80(v203, v542, type metadata accessor for ViewDescriptor);
      swift_storeEnumTagMultiPayload();
      v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072660, &qword_1E65EB970);
      (*(*(v207 - 8) + 56))(v117, 1, 1, v207);
      v208 = type metadata accessor for SectionMetrics();
      (*(*(v208 - 8) + 56))(v554, 1, 1, v208);
      (*(v543 + 104))(v553, *MEMORY[0x1E699D7D8], v544);
      v586 = type metadata accessor for ActionButtonDescriptor(0);
      v585 = type metadata accessor for ArtworkDescriptor();
      v584 = type metadata accessor for ContextMenu(0);
      v583 = type metadata accessor for ItemMetrics();
      v582 = type metadata accessor for SectionHeaderSubtitleDescriptor();
      v581 = sub_1E6473E38(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor);
      v580 = sub_1E6473E38(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor);
      v578 = sub_1E6473E38(&qword_1EE2DB8B0, type metadata accessor for ContextMenu);
      v577 = sub_1E6473E38(&qword_1EE2DB720, type metadata accessor for ItemContext);
      sub_1E6473E38(&qword_1EE2DB738, type metadata accessor for ItemContext);
      sub_1E6473E38(&qword_1EE2DB730, type metadata accessor for ItemContext);
      sub_1E6473E38(&qword_1EE2DB650, type metadata accessor for ItemMetrics);
      sub_1E6473E38(&qword_1EE2DA950, type metadata accessor for SectionMetrics);
      sub_1E5DF11E0();
      sub_1E6473E38(&qword_1EE2D7D88, type metadata accessor for SectionHeaderSubtitleDescriptor);
      sub_1E6473E38(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor);
      sub_1E65E0418();
      sub_1E6473FC0(v203, type metadata accessor for ViewDescriptor);
      return (*(v509 + 8))(v508, v510);
    }

    else
    {
      v586 = a14;
      v359 = v514;
      v360 = v493;
      v361 = v515;
      (*(v514 + 32))(v493, v176);
      v589[0] = 0;
      v589[1] = 0xE000000000000000;
      sub_1E65E68A8();

      strcpy(v589, "newAndFeatured");
      HIBYTE(v589[1]) = -18;
      v362 = sub_1E65E00A8();
      v363 = (v362 & 1) == 0;
      if (v362)
      {
        v364 = 0x7374756F6B726F57;
      }

      else
      {
        v364 = 0x697461746964654DLL;
      }

      v540 = v117;
      if (v363)
      {
        v365 = 0xEB00000000736E6FLL;
      }

      else
      {
        v365 = 0xE800000000000000;
      }

      MEMORY[0x1E694D7C0](v364, v365);

      v587 = v589[1];
      v588 = v589[0];
      v366 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076B20, &qword_1E65F77F0);
      v367 = v366[16];
      v368 = v366[20];
      v369 = v366[24];
      v370 = v366[28];
      v371 = sub_1E65E00A8();
      v372 = v542;
      *v542 = v371 & 1;
      *(v372 + 1) = sub_1E65E0058();
      v373 = v491;
      (*(v359 + 16))(v491, v360, v361);
      sub_1E647197C(v373, (v372 + v367));
      sub_1E65E0088();
      sub_1E65E0098();
      *(v372 + v370) = v586;
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      sub_1E65E0088();
      v374 = v499;
      sub_1E65E0098();
      v375 = type metadata accessor for SectionHeaderSubtitleDescriptor();
      swift_storeEnumTagMultiPayload();
      (*(*(v375 - 8) + 56))(v374, 0, 1, v375);
      v376 = type metadata accessor for ActionButtonDescriptor(0);
      v377 = *(*(v376 - 8) + 56);
      v586 = v376;
      v377(v502, 1, 1, v376);
      v585 = sub_1E6473E38(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor);
      v584 = sub_1E6473E38(&qword_1EE2D7D88, type metadata accessor for SectionHeaderSubtitleDescriptor);
      v378 = v540;
      sub_1E65E0458();
      v379 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072660, &qword_1E65EB970);
      (*(*(v379 - 8) + 56))(v378, 0, 1, v379);
      (*(v543 + 104))(v553, *MEMORY[0x1E699D7D8], v544);
      v380 = type metadata accessor for SectionMetrics();
      (*(*(v380 - 8) + 56))(v554, 1, 1, v380);
      v583 = type metadata accessor for ArtworkDescriptor();
      v582 = type metadata accessor for ContextMenu(0);
      v581 = type metadata accessor for ItemMetrics();
      v580 = sub_1E6473E38(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor);
      v578 = sub_1E6473E38(&qword_1EE2DB8B0, type metadata accessor for ContextMenu);
      v577 = sub_1E6473E38(&qword_1EE2DB720, type metadata accessor for ItemContext);
      sub_1E6473E38(&qword_1EE2DB738, type metadata accessor for ItemContext);
      sub_1E6473E38(&qword_1EE2DB730, type metadata accessor for ItemContext);
      sub_1E6473E38(&qword_1EE2DB650, type metadata accessor for ItemMetrics);
      sub_1E6473E38(&qword_1EE2DA950, type metadata accessor for SectionMetrics);
      sub_1E5DF11E0();
      sub_1E6473E38(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor);
      sub_1E65E0418();
      return (*(v514 + 8))(v360, v515);
    }
  }

  (*(v504 + 32))(v503, v176, v506);
  v540 = sub_1E65DFF58();
  v538 = v251;
  v252 = sub_1E65DFF68();
  v253 = sub_1E634BE4C(v252);
  v501(v253);
  v254 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072660, &qword_1E65EB970);
  (*(*(v254 - 8) + 56))(v507, 1, 1, v254);
  v255 = sub_1E65DFF78();
  v256 = *(v255 + 16);
  if (v256)
  {
    v589[0] = MEMORY[0x1E69E7CC0];
    sub_1E601BE24(0, v256, 0);
    v257 = 0;
    v559 = (v255 + ((*(v583 + 80) + 32) & ~*(v583 + 80)));
    v158 = v589[0];
    v551 = (v484 + 32);
    v558 = v484 + 16;
    v550 = (v484 + 8);
    v546 = (v485 + 32);
    v542 = (v485 + 16);
    v541 = (v485 + 8);
    v258 = v578;
    v157 = v579;
    v561 = v255;
    v560 = v256;
    while (1)
    {
      if (v257 >= *(v255 + 16))
      {
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
        (*v170)(v158, v157);

        __break(1u);
        return result;
      }

      v259 = MEMORY[0x1E699D4B8];
      v260 = v587;
      sub_1E6473E80(&v559[*(v583 + 72) * v257], v587, MEMORY[0x1E699D4B8]);
      v261 = v260;
      v262 = v572;
      sub_1E6473E80(v261, v572, v259);
      v263 = swift_getEnumCaseMultiPayload();
      v584 = v158;
      if (v263 != 1)
      {
        break;
      }

      v264 = v563;
      v265 = v564;
      (*v546)(v563, v262, v564);
      (*v542)(v566, v264, v265);
      type metadata accessor for BrowseItemContext();
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v266 = sub_1E65DFD58();
      v267 = sub_1E634BE4C(v266);
      v576(v267);
      sub_1E6473E38(&qword_1EE2DB720, type metadata accessor for ItemContext);
      sub_1E6473E38(&qword_1EE2DB738, type metadata accessor for ItemContext);
      sub_1E6473E38(&qword_1EE2DB730, type metadata accessor for ItemContext);
      v258 = v578;
      v268 = v581;
      sub_1E65E04D8();
      (*v541)(v264, v265);
LABEL_35:
      swift_storeEnumTagMultiPayload();
      sub_1E6473FC0(v587, MEMORY[0x1E699D4B8]);
      v158 = v584;
      v589[0] = v584;
      v300 = *(v584 + 16);
      v299 = *(v584 + 24);
      v255 = v561;
      v170 = v560;
      if (v300 >= v299 >> 1)
      {
        sub_1E601BE24(v299 > 1, v300 + 1, 1);
        v158 = v589[0];
      }

      ++v257;
      *(v158 + 16) = v300 + 1;
      sub_1E5FAB460(v268, v158 + ((*(v585 + 80) + 32) & ~*(v585 + 80)) + *(v585 + 72) * v300, &qword_1ED0720A8, &qword_1E65EA790);
      if (v170 == v257)
      {

        v584 = v158;
        goto LABEL_80;
      }
    }

    v269 = v588;
    (*v551)(v258, v262, v588);
    v270 = v580;
    v574(v258, 0, 0);
    v271 = *v558;
    (*v558)(v569, v258, v269);
    type metadata accessor for BrowseItemContext();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_1E6473EE8(v270, v570);
    if (sub_1E65DF878() != 8)
    {
      v275 = type metadata accessor for ContextMenu(0);
      (*(*(v275 - 8) + 56))(v571, 1, 1, v275);
LABEL_34:
      v297 = v562;
      v271(v562, v258, v588);
      v298 = v567;
      sub_1E6473EE8(v580, v567);
      sub_1E646FBE4(v297, v298, v568);
      v557 = type metadata accessor for ActionButtonDescriptor(0);
      v556 = type metadata accessor for ArtworkDescriptor();
      type metadata accessor for ContextMenu(0);
      v555 = type metadata accessor for ItemMetrics();
      sub_1E6473E38(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor);
      sub_1E6473E38(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor);
      sub_1E6473E38(&qword_1EE2DB8B0, type metadata accessor for ContextMenu);
      sub_1E6473E38(&qword_1EE2DB720, type metadata accessor for ItemContext);
      sub_1E6473E38(&qword_1EE2DB738, type metadata accessor for ItemContext);
      sub_1E6473E38(&qword_1EE2DB730, type metadata accessor for ItemContext);
      sub_1E6473E38(&qword_1EE2DB650, type metadata accessor for ItemMetrics);
      sub_1E6473E38(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor);
      v258 = v578;
      v157 = v579;
      v268 = v581;
      sub_1E65E0488();
      sub_1E5DFE50C(v580, &qword_1ED072610, &qword_1E65EB930);
      (*v550)(v258, v588);
      goto LABEL_35;
    }

    v272 = sub_1E65DF8C8();
    v273 = v552;
    *v552 = v272;
    *(v273 + 1) = v274;
    if (sub_1E65DF968() >= 4u)
    {
      v278 = v539;
      v279 = v536;
      v277 = v535;
    }

    else
    {
      v276 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077E20, &unk_1E65F7140) + 48);
      sub_1E65DF8C8();
      sub_1E65DF8F8();
      sub_1E65DF8E8();
      v277 = v535;
      sub_1E65DE758();
      sub_1E65D7688();
      v278 = v539;
      v279 = v536;
    }

    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v280 = sub_1E65DF888();
    if (v280 > 5)
    {
      if (v280 - 7 >= 2)
      {
        v285 = v278 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737D0, &unk_1E65F4330) + 48);
        *(v278 + 4) = 0;
        *v278 = 0;
        v282 = 1;
        goto LABEL_33;
      }
    }

    else if (v280 >= 5)
    {
      v281 = v278 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737D0, &unk_1E65F4330) + 48);
      *(v278 + 4) = 0;
      v282 = 1;
      *v278 = 1;
LABEL_33:
      *(v278 + 5) = v282;
      sub_1E65D7688();
      swift_storeEnumTagMultiPayload();
      v286 = sub_1E65DF828();
      v287 = v537;
      *v537 = v286 & 1;
      v288 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074028, &unk_1E65F7130);
      v289 = v552;
      v290 = &v552[*(v288 + 48)];
      v291 = v287 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340) + 48);
      sub_1E65D7688();
      swift_storeEnumTagMultiPayload();
      v292 = type metadata accessor for WorkoutContextMenuLoadState();
      v293 = v292[8];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A70, &qword_1E65F2620);
      swift_storeEnumTagMultiPayload();
      sub_1E5FAB460(v277, v290, &qword_1ED0737C8, &unk_1E6605140);
      sub_1E5FAB460(v279, v290 + v292[5], &unk_1ED077CC0, &unk_1E65F2610);
      sub_1E5FAB460(v278, v290 + v292[6], &unk_1ED077CD0, &unk_1E65F42F0);
      sub_1E5FAB460(v287, v290 + v292[7], &unk_1ED077CC0, &unk_1E65F2610);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073B60, &unk_1E65EE020);
      swift_storeEnumTagMultiPayload();
      v294 = v571;
      sub_1E65D76E8();
      v295 = type metadata accessor for ContextMenu(0);
      v296 = v289;
      v258 = v578;
      sub_1E6473F58(v296, &v294[*(v295 + 20)], type metadata accessor for ContextMenu.Context);
      (*(*(v295 - 8) + 56))(v294, 0, 1, v295);
      goto LABEL_34;
    }

    v283 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737D0, &unk_1E65F4330);
    v282 = 0;
    v284 = v278 + *(v283 + 48);
    *v278 = 0;
    *(v278 + 4) = 1;
    goto LABEL_33;
  }

  v584 = MEMORY[0x1E69E7CC0];
LABEL_80:
  v413 = type metadata accessor for SectionMetrics();
  (*(*(v413 - 8) + 56))(v554, 1, 1, v413);
  (*(v543 + 104))(v553, *MEMORY[0x1E699D7D8], v544);
  v588 = type metadata accessor for ActionButtonDescriptor(0);
  v587 = type metadata accessor for ArtworkDescriptor();
  v586 = type metadata accessor for ContextMenu(0);
  v585 = type metadata accessor for ItemMetrics();
  v583 = type metadata accessor for SectionHeaderSubtitleDescriptor();
  v582 = sub_1E6473E38(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor);
  v581 = sub_1E6473E38(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor);
  sub_1E6473E38(&qword_1EE2DB8B0, type metadata accessor for ContextMenu);
  sub_1E6473E38(&qword_1EE2DB720, type metadata accessor for ItemContext);
  sub_1E6473E38(&qword_1EE2DB738, type metadata accessor for ItemContext);
  sub_1E6473E38(&qword_1EE2DB730, type metadata accessor for ItemContext);
  sub_1E6473E38(&qword_1EE2DB650, type metadata accessor for ItemMetrics);
  sub_1E6473E38(&qword_1EE2DA950, type metadata accessor for SectionMetrics);
  sub_1E5DF11E0();
  sub_1E6473E38(&qword_1EE2D7D88, type metadata accessor for SectionHeaderSubtitleDescriptor);
  sub_1E6473E38(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor);
  sub_1E65E0418();
  return (*(v504 + 8))(v503, v506);
}