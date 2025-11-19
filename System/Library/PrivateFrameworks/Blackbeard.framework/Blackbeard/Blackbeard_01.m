double static ServiceSubscriptionService.live(with:)@<D0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072350, &unk_1E660BBE0);
  sub_1E65D7F18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077610, &qword_1E660BBF0);
  sub_1E65D7F18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0723D0, &qword_1E65EA060);
  sub_1E65D7F18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BBC0, &qword_1E65F1460);
  v25 = v30;
  sub_1E65D7F18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BBC8, &qword_1E660E900);
  v2 = sub_1E65E17A8();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(&v26);
  *(&v33 + 1) = v2;
  v31[0] = v25;
  sub_1E65B31DC(v31, &v26);
  v3 = swift_allocObject();
  v4 = v27;
  v3[1] = v26;
  v3[2] = v4;
  v5 = v29;
  v3[3] = v28;
  v3[4] = v5;
  sub_1E65B31DC(v31, &v26);
  v6 = swift_allocObject();
  v7 = v27;
  v6[1] = v26;
  v6[2] = v7;
  v8 = v29;
  v6[3] = v28;
  v6[4] = v8;
  sub_1E65B31DC(v31, &v26);
  v9 = swift_allocObject();
  v10 = v27;
  v9[1] = v26;
  v9[2] = v10;
  v11 = v29;
  v9[3] = v28;
  v9[4] = v11;
  sub_1E65B31DC(v31, &v26);
  v12 = swift_allocObject();
  v13 = v27;
  v12[1] = v26;
  v12[2] = v13;
  v14 = v29;
  v12[3] = v28;
  v12[4] = v14;
  sub_1E65B31DC(v31, &v26);
  v15 = swift_allocObject();
  v16 = v27;
  v15[1] = v26;
  v15[2] = v16;
  v17 = v29;
  v15[3] = v28;
  v15[4] = v17;
  sub_1E65B31DC(v31, &v26);
  v18 = swift_allocObject();
  v19 = v27;
  v18[1] = v26;
  v18[2] = v19;
  v20 = v29;
  v18[3] = v28;
  v18[4] = v20;
  v21 = swift_allocObject();
  v22 = v31[1];
  v21[1] = v31[0];
  v21[2] = v22;
  result = *&v32;
  v24 = v33;
  v21[3] = v32;
  v21[4] = v24;
  *a1 = &unk_1E660E910;
  a1[1] = v3;
  a1[2] = &unk_1E660E920;
  a1[3] = v6;
  a1[4] = &unk_1E660E930;
  a1[5] = v9;
  a1[6] = &unk_1E660E940;
  a1[7] = v12;
  a1[8] = &unk_1E660E950;
  a1[9] = v15;
  a1[10] = &unk_1E660E960;
  a1[11] = v18;
  a1[12] = &unk_1E660E970;
  a1[13] = v21;
  return result;
}

uint64_t type metadata accessor for SubscriptionPurchaseRequest()
{
  result = qword_1EE2DBE38;
  if (!qword_1EE2DBE38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E5E03110()
{
  sub_1E5DEF738(319, &qword_1EE2D46D0, 0x1E698C818);
  if (v0 <= 0x3F)
  {
    sub_1E5E031A4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E5E031A4()
{
  if (!qword_1EE2D47F0)
  {
    sub_1E5DEF738(255, &unk_1EE2D4618, 0x1E698CAF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED07B740, &qword_1E65ED600);
    v0 = sub_1E65E6008();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2D47F0);
    }
  }
}

uint64_t static SessionService.live(with:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for LiveSessionService();
  swift_allocObject();

  v3 = sub_1E5E0336C(v2);

  *a1 = &unk_1E660A978;
  a1[1] = v3;
  a1[2] = &unk_1E660A988;
  a1[3] = v3;
  a1[4] = &unk_1E660A998;
  a1[5] = v3;
  a1[6] = &unk_1E660A9A8;
  a1[7] = v3;
  a1[8] = &unk_1E660A9B8;
  a1[9] = v3;
  a1[10] = &unk_1E660A9C8;
  a1[11] = v3;
  a1[12] = &unk_1E660A9D8;
  a1[13] = v3;
  a1[14] = &unk_1E660A9E8;
  a1[15] = v3;
  a1[16] = &unk_1E660A9F8;
  a1[17] = v3;
  return swift_retain_n();
}

uint64_t sub_1E5E0336C(uint64_t a1)
{
  v2 = v1;
  swift_defaultActor_initialize();
  *(v2 + 112) = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AC78, &unk_1E6609370);
  sub_1E65D7F18();
  sub_1E5DF599C(v5, v2 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AFC8, &unk_1E660AB90);
  sub_1E65D7F18();
  sub_1E5DF599C(v5, v2 + 160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AD00, &unk_1E660EBA0);
  sub_1E65D7F18();
  sub_1E5DF599C(v5, v2 + 200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AEE0, &qword_1E660A720);
  sub_1E65D7F18();
  sub_1E5DF599C(v5, v2 + 240);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0723D0, &qword_1E65EA060);
  sub_1E65D7F18();
  *(v2 + 280) = v5[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AFD0, &qword_1E660ABA0);
  sub_1E65D7F18();
  sub_1E5DF599C(v5, v2 + 296);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B520, &qword_1E660ABA8);
  sub_1E65D7F18();
  sub_1E5DF599C(v5, v2 + 336);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AFD8, &qword_1E660ABB0);
  sub_1E65D7F18();
  sub_1E5DF599C(v5, v2 + 376);
  return v2;
}

uint64_t static SharePlayService.live(with:)@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BA08, &unk_1E660DEB0);
  sub_1E65D7F18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0723D0, &qword_1E65EA060);
  sub_1E65D7F18();
  type metadata accessor for LiveSharePlayService();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_1E5DF599C(&v5, v2 + 112);
  *(v2 + 152) = v4;
  *a1 = &unk_1E660DEC8;
  a1[1] = v2;
  a1[2] = &unk_1E660DED8;
  a1[3] = v2;
  a1[4] = &unk_1E660DEE8;
  a1[5] = v2;
  a1[6] = &unk_1E660DEF8;
  a1[7] = v2;
  return swift_retain_n();
}

uint64_t static SiriService.live(with:)@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AFE8, &unk_1E660AE20);
  sub_1E65D7F18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0723D0, &qword_1E65EA060);
  sub_1E65D7F18();
  type metadata accessor for LiveSiriService();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_1E5DF599C(&v5, v2 + 112);
  *(v2 + 152) = v4;
  *a1 = &unk_1E660AE38;
  a1[1] = v2;
  a1[2] = &unk_1E660AE48;
  a1[3] = v2;
}

uint64_t static SyncService.live(with:)@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07ADD8, &qword_1E6609BE0);
  sub_1E65D7F18();
  type metadata accessor for LiveSyncService();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_1E5DF599C(&v5, v2 + 112);
  v3 = swift_allocObject();
  *(v3 + 16) = &unk_1E6609C40;
  *(v3 + 24) = v2;
  *a1 = &unk_1E6609BF0;
  a1[1] = v2;
  a1[2] = &unk_1E6609C00;
  a1[3] = v2;
  a1[4] = &unk_1E6609C10;
  a1[5] = v2;
  a1[6] = &unk_1E6609C20;
  a1[7] = v2;
  a1[8] = &unk_1E6609C30;
  a1[9] = v2;
  a1[10] = &unk_1E6609C50;
  a1[11] = v3;
  return swift_retain_n();
}

uint64_t sub_1E5E038A8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t type metadata accessor for ToastAction()
{
  result = qword_1EE2DB4C8;
  if (!qword_1EE2DB4C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E5E03974()
{
  sub_1E5E03AA8();
  if (v0 <= 0x3F)
  {
    sub_1E5E039E8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1E5E039E8()
{
  if (!qword_1EE2D9870[0])
  {
    type metadata accessor for ToastResource();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, qword_1EE2D9870);
    }
  }
}

uint64_t type metadata accessor for ToastResource()
{
  result = qword_1EE2DAED0;
  if (!qword_1EE2DAED0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E5E03AA8()
{
  result = qword_1EE2D4810;
  if (!qword_1EE2D4810)
  {
    result = MEMORY[0x1E69E6370];
    atomic_store(MEMORY[0x1E69E6370], &qword_1EE2D4810);
  }

  return result;
}

uint64_t sub_1E5E03AD8()
{
  result = sub_1E5DEF56C();
  if (v1 <= 0x3F)
  {
    result = sub_1E65DBB88();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t static UpNextQueueService.live(with:)@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0723D0, &qword_1E65EA060);
  sub_1E65D7F18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AFD8, &qword_1E660ABB0);
  sub_1E65D7F18();
  type metadata accessor for LiveUpNextQueueClientService();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v2 + 112) = *&v4[5];
  sub_1E5DF599C(v4, v2 + 128);
  *a1 = &unk_1E660FB98;
  a1[1] = v2;
  a1[2] = &unk_1E660FBA8;
  a1[3] = v2;
  a1[4] = &unk_1E660FBB8;
  a1[5] = v2;
  return swift_retain_n();
}

uint64_t WindowSceneObserver.init()()
{
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BA10, &qword_1E660DF80);
  *(v0 + 48) = sub_1E65E17A8();
  return v0;
}

uint64_t static WorkoutPlanService.live(with:)@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0723D0, &qword_1E65EA060);
  sub_1E65D7F18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AD00, &unk_1E660EBA0);
  sub_1E65D7F18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07AD08, &qword_1E6609600);
  sub_1E65D7F18();
  type metadata accessor for LiveWorkoutPlanService();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v2 + 112) = *&v5[5];
  sub_1E5DF599C(v5, v2 + 128);
  sub_1E5DF599C(&v4, v2 + 168);
  *a1 = &unk_1E6609610;
  a1[1] = v2;
  a1[2] = &unk_1E6609620;
  a1[3] = v2;
  a1[4] = &unk_1E6609630;
  a1[5] = v2;
  a1[6] = &unk_1E6609640;
  a1[7] = v2;
  a1[8] = &unk_1E6609650;
  a1[9] = v2;
  a1[10] = &unk_1E6609660;
  a1[11] = v2;
  a1[12] = &unk_1E6609670;
  a1[13] = v2;
  a1[14] = &unk_1E6609680;
  a1[15] = v2;
  a1[16] = &unk_1E6609690;
  a1[17] = v2;
  a1[18] = &unk_1E66096A0;
  a1[19] = v2;
  a1[20] = &unk_1E66096B0;
  a1[21] = v2;
  a1[22] = &unk_1E66096C0;
  a1[23] = v2;
  a1[24] = &unk_1E66096D0;
  a1[25] = v2;
  a1[26] = &unk_1E66096E0;
  a1[27] = v2;
  a1[28] = &unk_1E66096F0;
  a1[29] = v2;
  a1[30] = &unk_1E6609700;
  a1[31] = v2;
  a1[32] = &unk_1E6609710;
  a1[33] = v2;
  a1[34] = &unk_1E6609720;
  a1[35] = v2;
  a1[36] = &unk_1E6609730;
  a1[37] = v2;
  a1[38] = &unk_1E6609740;
  a1[39] = v2;
  return swift_retain_n();
}

uint64_t sub_1E5E03F70(unsigned __int8 a1)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = sub_1E65DDF08();
      v11 = v5;
      v12 = sub_1E5E041A4();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
      (*(*(v5 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69CABE8], v5);
      LOBYTE(v5) = sub_1E65DAF58();
      __swift_destroy_boxed_opaque_existential_1(v10);
      if ((v5 & 1) == 0)
      {
        v4 = sub_1E5E04260(&unk_1F5FA8AA0);
LABEL_15:
        swift_arrayDestroy();
        return v4;
      }

      v3 = &unk_1F5FA8A30;
    }

    else
    {
      v1 = sub_1E65DDF08();
      v11 = v1;
      v12 = sub_1E5E041A4();
      v2 = __swift_allocate_boxed_opaque_existential_1(v10);
      (*(*(v1 - 8) + 104))(v2, *MEMORY[0x1E69CABE8], v1);
      LOBYTE(v1) = sub_1E65DAF58();
      __swift_destroy_boxed_opaque_existential_1(v10);
      if (v1)
      {
        v3 = &unk_1F5FA8940;
      }

      else
      {
        v3 = &unk_1F5FA89C0;
      }
    }

LABEL_14:
    v4 = sub_1E5E04260(v3);
    goto LABEL_15;
  }

  if (a1 != 2)
  {
    v7 = sub_1E65DDF08();
    v11 = v7;
    v12 = sub_1E5E041A4();
    v8 = __swift_allocate_boxed_opaque_existential_1(v10);
    (*(*(v7 - 8) + 104))(v8, *MEMORY[0x1E69CABE8], v7);
    LOBYTE(v7) = sub_1E65DAF58();
    __swift_destroy_boxed_opaque_existential_1(v10);
    if (v7)
    {
      v3 = &unk_1F5FA8B00;
    }

    else
    {
      v3 = &unk_1F5FA8B80;
    }

    goto LABEL_14;
  }

  return MEMORY[0x1E69E7CD0];
}

unint64_t sub_1E5E041A4()
{
  result = qword_1EE2D6AF0;
  if (!qword_1EE2D6AF0)
  {
    sub_1E65DDF08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D6AF0);
  }

  return result;
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

uint64_t sub_1E5E04260(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CD0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072028, &qword_1E65EA490);
  v3 = sub_1E65E6888();
  v4 = 0;
  v5 = v3 + 56;
  v27 = v1;
  v28 = a1 + 32;
  while (2)
  {
    v6 = (v28 + 16 * v4);
    v7 = v6[1];
    v30 = *v6;
    v8 = *(v3 + 40);
    sub_1E65E6D28();
    if (v7 > 2)
    {
      if (v7 == 3 || v7 == 4 || v7 == 5)
      {
        goto LABEL_15;
      }
    }

    else if (v7 <= 2)
    {
      goto LABEL_15;
    }

    MEMORY[0x1E694D7C0](v30, v7);
LABEL_15:
    sub_1E65E5D78();

    result = sub_1E65E6D78();
    v10 = ~(-1 << *(v3 + 32));
    v11 = result & v10;
    v12 = (result & v10) >> 6;
    v13 = *(v5 + 8 * v12);
    v14 = 1 << (result & v10);
    if ((v14 & v13) == 0)
    {
      goto LABEL_59;
    }

    v29 = v4;
    do
    {
      v15 = (*(v3 + 48) + 16 * v11);
      v16 = *v15;
      v17 = v15[1];
      if (v17 > 2)
      {
        if (v17 == 3)
        {
          v18 = 0xE600000000000000;
          v19 = 0x686372616573;
          if (v7 <= 2)
          {
            goto LABEL_43;
          }

          goto LABEL_35;
        }

        if (v17 != 4)
        {
          if (v17 == 5)
          {
            v18 = 0xE500000000000000;
            v19 = 0x736E616C70;
            if (v7 <= 2)
            {
              goto LABEL_43;
            }

            goto LABEL_35;
          }

          goto LABEL_32;
        }

        v18 = 0xE600000000000000;
        v19 = 0x7478654E7075;
        if (v7 <= 2)
        {
LABEL_43:
          if (v7)
          {
            if (v7 == 1)
            {
              v20 = 0xE600000000000000;
              if (v19 != 0x756F59726F66)
              {
                goto LABEL_56;
              }
            }

            else
            {
              if (v7 != 2)
              {
                goto LABEL_50;
              }

              v20 = 0xE700000000000000;
              if (v19 != 0x7972617262696CLL)
              {
                goto LABEL_56;
              }
            }
          }

          else
          {
            v20 = 0xE700000000000000;
            if (v19 != 0x65726F6C707865)
            {
              goto LABEL_56;
            }
          }

          goto LABEL_55;
        }
      }

      else
      {
        if (!v17)
        {
          v18 = 0xE700000000000000;
          v19 = 0x65726F6C707865;
          if (v7 <= 2)
          {
            goto LABEL_43;
          }

          goto LABEL_35;
        }

        if (v17 != 1)
        {
          if (v17 == 2)
          {
            v18 = 0xE700000000000000;
            v19 = 0x7972617262696CLL;
            if (v7 <= 2)
            {
              goto LABEL_43;
            }

            goto LABEL_35;
          }

LABEL_32:

          MEMORY[0x1E694D7C0](v16, v17);
          v19 = 0x7974696C61646F6DLL;
          v18 = 0xE90000000000003ALL;
          if (v7 <= 2)
          {
            goto LABEL_43;
          }

          goto LABEL_35;
        }

        v18 = 0xE600000000000000;
        v19 = 0x756F59726F66;
        if (v7 <= 2)
        {
          goto LABEL_43;
        }
      }

LABEL_35:
      switch(v7)
      {
        case 3:
          v20 = 0xE600000000000000;
          if (v19 != 0x686372616573)
          {
            goto LABEL_56;
          }

          break;
        case 4:
          v20 = 0xE600000000000000;
          if (v19 != 0x7478654E7075)
          {
            goto LABEL_56;
          }

          break;
        case 5:
          v20 = 0xE500000000000000;
          if (v19 != 0x736E616C70)
          {
            goto LABEL_56;
          }

          break;
        default:
LABEL_50:
          v21 = v19;
          MEMORY[0x1E694D7C0](v30, v7);
          v20 = 0xE90000000000003ALL;
          if (v21 != 0x7974696C61646F6DLL)
          {
            goto LABEL_56;
          }

          break;
      }

LABEL_55:
      if (v18 == v20)
      {
        sub_1E5E0476C(v16, v17);

LABEL_4:
        sub_1E5E0476C(v30, v7);
        v1 = v27;
        v4 = v29;
        goto LABEL_5;
      }

LABEL_56:
      v22 = sub_1E65E6C18();
      sub_1E5E0476C(v16, v17);

      if (v22)
      {
        goto LABEL_4;
      }

      v11 = (v11 + 1) & v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
    }

    while ((v13 & (1 << v11)) != 0);
    v1 = v27;
    v4 = v29;
LABEL_59:
    *(v5 + 8 * v12) = v13 | v14;
    v23 = (*(v3 + 48) + 16 * v11);
    *v23 = v30;
    v23[1] = v7;
    v24 = *(v3 + 16);
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (!v25)
    {
      *(v3 + 16) = v26;
LABEL_5:
      if (++v4 == v1)
      {
        return v3;
      }

      continue;
    }

    break;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E5E0476C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 6)
  {
  }

  return result;
}

uint64_t type metadata accessor for AppRouter()
{
  result = qword_1EE2D7398;
  if (!qword_1EE2D7398)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E5E047CC()
{
  result = type metadata accessor for NavigationControllerRoutingContext();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for AppComposer();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
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

uint64_t type metadata accessor for NavigationControllerRoutingContext()
{
  result = qword_1EE2D7A58;
  if (!qword_1EE2D7A58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E5E0497C()
{
  type metadata accessor for NavigationController();
  if (v0 <= 0x3F)
  {
    type metadata accessor for AppComposer();
    if (v1 <= 0x3F)
    {
      sub_1E5E04B54();
      if (v2 <= 0x3F)
      {
        sub_1E5E05158();
        if (v3 <= 0x3F)
        {
          sub_1E5E051BC();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1E5E04A6C()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_1E5E1CE4C;

  return MEMORY[0x1EEE6DE38]();
}

unint64_t sub_1E5E04B54()
{
  result = qword_1EE2DA888[0];
  if (!qword_1EE2DA888[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1EE2DA888);
  }

  return result;
}

uint64_t sub_1E5E04BB4(uint64_t a1, uint64_t a2)
{
  v25 = a1;
  v28 = sub_1E65E4F38();
  v30 = *(v28 - 8);
  v3 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1E65E4F68();
  v27 = *(v29 - 8);
  v6 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726C8, &qword_1E66094D0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v24 - v12;
  v14 = type metadata accessor for JournalRotator();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(a2 + *(MEMORY[0x1EEE9AC00](v14 - 8) + 32));
  sub_1E5E057B0(a2, v17);
  (*(v10 + 16))(v13, v25, v9);
  v18 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v19 = (v16 + *(v10 + 80) + v18) & ~*(v10 + 80);
  v20 = swift_allocObject();
  sub_1E5E05814(v17, v20 + v18);
  (*(v10 + 32))(v20 + v19, v13, v9);
  aBlock[4] = sub_1E5E05AF4;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E5E05AB0;
  aBlock[3] = &block_descriptor_13;
  v21 = _Block_copy(aBlock);
  sub_1E65E4F48();
  v31 = MEMORY[0x1E69E7CC0];
  sub_1E5DFA51C(&qword_1EE2D4A00, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078770, &unk_1E65EAB00);
  sub_1E5E05A4C();
  v22 = v28;
  sub_1E65E6738();
  MEMORY[0x1E694DDE0](0, v8, v5, v21);
  _Block_release(v21);
  (*(v30 + 8))(v5, v22);
  (*(v27 + 8))(v8, v29);
}

uint64_t sub_1E5E04FCC()
{
  v1 = (type metadata accessor for JournalRotator() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = v2 + *(*v1 + 64);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726C8, &qword_1E66094D0);
  v5 = *(v4 - 8);
  v6 = (v3 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = v0 + v2;
  v9 = v1[7];
  v10 = sub_1E65D74E8();
  (*(*(v10 - 8) + 8))(v8 + v9, v10);

  (*(v5 + 8))(v0 + v6, v4);

  return swift_deallocObject();
}

void sub_1E5E05158()
{
  if (!qword_1EE2D9410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072038, &qword_1E65F08E0);
    v0 = sub_1E65E6668();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2D9410);
    }
  }
}

unint64_t sub_1E5E051BC()
{
  result = qword_1EE2D4550;
  if (!qword_1EE2D4550)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE2D4550);
  }

  return result;
}

void sub_1E5E05224(unsigned __int8 a1@<W0>, uint64_t *a2@<X8>)
{
  if (a1 < 2u)
  {
    v3 = [objc_opt_self() standardUserDefaults];
    v4 = sub_1E65E5C48();
    v5 = [v3 stringForKey_];

    if (v5)
    {
      v6 = sub_1E65E5C78();
      v8 = v7;

      RootItem.init(rawValue:)(v6, v8, &v11);
      v9 = v12;
      if (v12 == 6)
      {
        v10 = 0;
      }

      else
      {
        v10 = v11;
      }

      goto LABEL_8;
    }

LABEL_6:
    v10 = 0;
    v9 = 6;
LABEL_8:
    *a2 = v10;
    a2[1] = v9;
    return;
  }

  if (a1 == 3)
  {
    goto LABEL_6;
  }

  sub_1E65E69D8();
  __break(1u);
}

uint64_t sub_1E5E05374(uint64_t a1, unint64_t a2)
{
  if (a2 >= 6)
  {
  }

  return result;
}

id JournalRotator.journalMode.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for JournalRotator();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E62FD160();
  if (v7 == 2 || (v7 & 1) == 0)
  {
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v19 = sub_1E65E3B68();
    __swift_project_value_buffer(v19, qword_1EE2EA2A0);
    v20 = sub_1E65E3B48();
    v21 = sub_1E65E6338();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1E5DE9000, v20, v21, "Actions logging not enabled", v22, 2u);
      MEMORY[0x1E694F1C0](v22, -1, -1);
    }

    v23 = *MEMORY[0x1E6999AF8];
    v24 = sub_1E65E4CE8();
    v25 = *(*(v24 - 8) + 104);

    return v25(a1, v23, v24);
  }

  else
  {
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v8 = sub_1E65E3B68();
    __swift_project_value_buffer(v8, qword_1EE2EA2A0);
    v9 = v1;
    sub_1E5E057B0(v1, v6);
    v10 = sub_1E65E3B48();
    v11 = sub_1E65E6338();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v34 = v13;
      *v12 = 136315138;
      v14 = *(v3 + 20);
      sub_1E65D74E8();
      sub_1E5DFA51C(&qword_1EE2D71E0, MEMORY[0x1E6968FB0]);
      v15 = sub_1E65E6BC8();
      v17 = v16;
      sub_1E5E05BCC(v6);
      v18 = sub_1E5DFD4B0(v15, v17, &v34);

      *(v12 + 4) = v18;
      _os_log_impl(&dword_1E5DE9000, v10, v11, "Actions logging enabled in %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x1E694F1C0](v13, -1, -1);
      MEMORY[0x1E694F1C0](v12, -1, -1);
    }

    else
    {

      sub_1E5E05BCC(v6);
    }

    v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078148, &qword_1E65FB680) + 48);
    v28 = *(v3 + 20);
    v29 = sub_1E65D74E8();
    (*(*(v29 - 8) + 16))(a1, v9 + v28, v29);
    v33 = *(v9 + *(v3 + 24));
    *(a1 + v27) = v33;
    v30 = *MEMORY[0x1E6999B00];
    v31 = sub_1E65E4CE8();
    (*(*(v31 - 8) + 104))(a1, v30, v31);
    v32 = v33;

    return v32;
  }
}

uint64_t sub_1E5E057B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JournalRotator();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5E05814(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JournalRotator();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1E5E05A4C()
{
  result = qword_1EE2D4840;
  if (!qword_1EE2D4840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED078770, &unk_1E65EAB00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4840);
  }

  return result;
}

uint64_t sub_1E5E05AB0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_1E5E05AF4()
{
  v1 = *(type metadata accessor for JournalRotator() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726C8, &qword_1E66094D0) - 8);
  v5 = v0 + ((v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1E5DFD5C8(v0 + v2, v5);
}

uint64_t sub_1E5E05BCC(uint64_t a1)
{
  v2 = type metadata accessor for JournalRotator();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E5E05C28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1E5E05C90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079358, &qword_1E66014C0);
    v3 = sub_1E65E6A28();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1E6215038(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1E5E05D8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0795D0, &qword_1E6601700);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0794C8, &qword_1E6601610);
    v8 = sub_1E65E6A28();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1E5DFD1CC(v10, v6, &qword_1ED0795D0, &qword_1E6601700);
      v12 = *v6;
      v13 = v6[1];
      result = sub_1E6215038(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_1E65DBD88();
      result = sub_1E5E24EEC(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16, MEMORY[0x1E699D2D0]);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1E5E05F74(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079280, &qword_1E6601410);
    v3 = sub_1E65E6A28();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1E6215038(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1E5E06078(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0795C8, &qword_1E66016F8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079278, &qword_1E6601408);
    v8 = sub_1E65E6A28();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1E5DFD1CC(v10, v6, &qword_1ED0795C8, &qword_1E66016F8);
      v12 = *v6;
      v13 = v6[1];
      result = sub_1E6215038(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_1E65DBED8();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1E5E06264(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0794D0, &qword_1E6601618);
    v3 = sub_1E65E6A28();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      sub_1E5E06368(v7);
      result = sub_1E6215038(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1E5E06368(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

unint64_t sub_1E5E06378(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0795C0, &qword_1E66016F0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079380, &qword_1E66014E8);
    v8 = sub_1E65E6A28();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1E5DFD1CC(v10, v6, &qword_1ED0795C0, &qword_1E66016F0);
      v12 = *v6;
      v13 = v6[1];
      result = sub_1E6215038(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_1E65DFA08();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1E5E06564(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0795B8, &qword_1E66016E8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079480, &qword_1E66015C8);
    v8 = sub_1E65E6A28();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1E5DFD1CC(v10, v6, &qword_1ED0795B8, &qword_1E66016E8);
      v13 = *v6;
      v12 = v6[1];
      result = sub_1E6215038(*v6, v12);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v13;
      v17[1] = v12;
      v18 = v8[7];
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072810, &qword_1E65EBE08);
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1E5E0675C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0795B0, &qword_1E66016E0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0792F8, &qword_1E6601478);
    v8 = sub_1E65E6A28();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1E5DFD1CC(v10, v6, &qword_1ED0795B0, &qword_1E66016E0);
      result = sub_1E6416E74(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074A08, &qword_1E65F3920);
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = sub_1E65DAFD8();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1E5E06988(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0795A8, &qword_1E66016D8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079518, &qword_1E6601650);
    v8 = sub_1E65E6A28();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1E5DFD1CC(v10, v6, &qword_1ED0795A8, &qword_1E66016D8);
      v12 = *v6;
      v13 = v6[1];
      result = sub_1E6215038(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_1E65E31D8();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1E5E06B74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0795A0, &qword_1E66016D0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0793A8, &qword_1E6601510);
    v8 = sub_1E65E6A28();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1E5DFD1CC(v10, v6, &qword_1ED0795A0, &qword_1E66016D0);
      result = sub_1E6416E08(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1E65E0B48();
      sub_1E5E24EEC(v6, v15 + *(*(v16 - 8) + 72) * v14, MEMORY[0x1E699DD40]);
      v17 = v8[7];
      v18 = sub_1E65E0D48();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1E5E06D90(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079578, &qword_1E66016A8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v23 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0792F0, &qword_1E6601470);
    v8 = sub_1E65E6A28();
    v24 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1E5DFD1CC(v9, v6, &qword_1ED079578, &qword_1E66016A8);
      v12 = *v6;
      v11 = *(v6 + 1);
      v13 = v6[16];
      result = sub_1E6416FB4(*v6, v11, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = v8[6] + 24 * result;
      *v17 = v12;
      *(v17 + 8) = v11;
      *(v17 + 16) = v13;
      v18 = v8[7];
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AE0, &qword_1E65F9E00);
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, &v6[v24], v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v9 += v10;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1E5E06FB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079570, &qword_1E66016A0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0792D8, &qword_1E6601458);
    v8 = sub_1E65E6A28();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1E5DFD1CC(v10, v6, &qword_1ED079570, &qword_1E66016A0);
      v13 = *v6;
      v12 = v6[1];
      result = sub_1E6215038(*v6, v12);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v13;
      v17[1] = v12;
      v18 = v8[7];
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076308, &qword_1E65F53D8);
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1E5E071AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079568, &qword_1E6601698);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0792E0, &qword_1E6601460);
    v8 = sub_1E65E6A28();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1E5DFD1CC(v10, v6, &qword_1ED079568, &qword_1E6601698);
      v13 = *v6;
      v12 = v6[1];
      result = sub_1E6215038(*v6, v12);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v13;
      v17[1] = v12;
      v18 = v8[7];
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0762E8, &qword_1E65F53C8);
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1E5E073A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079560, &qword_1E6601690);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0792D0, &qword_1E6601450);
    v8 = sub_1E65E6A28();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1E5DFD1CC(v10, v6, &qword_1ED079560, &qword_1E6601690);
      v13 = *v6;
      v12 = v6[1];
      result = sub_1E6215038(*v6, v12);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v13;
      v17[1] = v12;
      v18 = v8[7];
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0762C8, &qword_1E65F53B8);
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1E5E0759C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079558, &qword_1E6601688);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079350, &qword_1E66014B8);
    v8 = sub_1E65E6A28();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1E5DFD1CC(v10, v6, &qword_1ED079558, &qword_1E6601688);
      v12 = *v6;
      v13 = v6[1];
      result = sub_1E6215038(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_1E65E2498();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1E5E07788()
{
  result = qword_1EE2D9670;
  if (!qword_1EE2D9670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D9670);
  }

  return result;
}

unint64_t sub_1E5E077DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079550, &qword_1E6601680);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079338, &qword_1E66014A0);
    v8 = sub_1E65E6A28();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1E5DFD1CC(v10, v6, &qword_1ED079550, &qword_1E6601680);
      v12 = *v6;
      v13 = v6[1];
      result = sub_1E6215038(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_1E65E3508();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1E5E079C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079548, &qword_1E6601678);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0793D8, &qword_1E6601540);
    v8 = sub_1E65E6A28();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1E5DFD1CC(v10, v6, &qword_1ED079548, &qword_1E6601678);
      v12 = *v6;
      v13 = v6[1];
      result = sub_1E6215038(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_1E65E2F28();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1E5E07BB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079540, &qword_1E6601670);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0793F8, &qword_1E6601560);
    v8 = sub_1E65E6A28();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1E5DFD1CC(v10, v6, &qword_1ED079540, &qword_1E6601670);
      v12 = *v6;
      v13 = v6[1];
      result = sub_1E6215038(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_1E65E3468();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1E5E07DA0(uint64_t a1, unint64_t a2)
{
  if (a2 != 6)
  {
    return sub_1E5E0476C(a1, a2);
  }

  return a1;
}

void sub_1E5E07DB0()
{
  type metadata accessor for BrowsingIdentity(319);
  if (v0 <= 0x3F)
  {
    sub_1E623E358(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_1E5E07EDC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1E65DE668();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_14:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0745E0, &qword_1E65F0F90);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_13:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_14;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_13;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_13;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072960, &qword_1E65EC0F8);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_13;
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072918, &qword_1E65EC038);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[10];
    goto LABEL_13;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[11]) = (a2 - 1);
    return result;
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0746C8, &qword_1E65F0FB0);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v10 = v20;
    v14 = *(v20 - 8);
    v15 = a4[12];
    goto LABEL_13;
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0746E8, &qword_1E65F0FB8);
  if (*(*(v21 - 8) + 84) == a3)
  {
    v10 = v21;
    v14 = *(v21 - 8);
    v15 = a4[13];
    goto LABEL_13;
  }

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074858, &qword_1E65F1008);
  if (*(*(v22 - 8) + 84) == a3)
  {
    v10 = v22;
    v14 = *(v22 - 8);
    v15 = a4[18];
    goto LABEL_13;
  }

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0741C8, &qword_1E65EFB48);
  if (*(*(v23 - 8) + 84) == a3)
  {
    v10 = v23;
    v14 = *(v23 - 8);
    v15 = a4[19];
    goto LABEL_13;
  }

  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E80, &qword_1E65ECC58);
  if (*(*(v24 - 8) + 84) == a3)
  {
    v10 = v24;
    v14 = *(v24 - 8);
    v15 = a4[20];
    goto LABEL_13;
  }

  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F68, &qword_1E65EA398);
  if (*(*(v25 - 8) + 84) == a3)
  {
    v10 = v25;
    v14 = *(v25 - 8);
    v15 = a4[21];
    goto LABEL_13;
  }

  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AC8, &qword_1E65EC488);
  if (*(*(v26 - 8) + 84) == a3)
  {
    v10 = v26;
    v14 = *(v26 - 8);
    v15 = a4[22];
    goto LABEL_13;
  }

  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E68, &qword_1E65EA160);
  if (*(*(v27 - 8) + 84) == a3)
  {
    v10 = v27;
    v14 = *(v27 - 8);
    v15 = a4[23];
    goto LABEL_13;
  }

  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0749A0, &qword_1E65F1038);
  if (*(*(v28 - 8) + 84) == a3)
  {
    v10 = v28;
    v14 = *(v28 - 8);
    v15 = a4[26];
    goto LABEL_13;
  }

  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727F8, &qword_1E65EBDF0);
  if (*(*(v29 - 8) + 84) == a3)
  {
    v10 = v29;
    v14 = *(v29 - 8);
    v15 = a4[27];
    goto LABEL_13;
  }

  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AD8, &unk_1E65F84F0);
  if (*(*(v30 - 8) + 84) == a3)
  {
    v10 = v30;
    v14 = *(v30 - 8);
    v15 = a4[29];
    goto LABEL_13;
  }

  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0741F0, &unk_1E65EFC10);
  if (*(*(v31 - 8) + 84) == a3)
  {
    v10 = v31;
    v14 = *(v31 - 8);
    v15 = a4[31];
    goto LABEL_13;
  }

  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072800, &qword_1E65EBDF8);
  if (*(*(v32 - 8) + 84) == a3)
  {
    v10 = v32;
    v14 = *(v32 - 8);
    v15 = a4[36];
    goto LABEL_13;
  }

  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AC0, &unk_1E65F4300);
  if (*(*(v33 - 8) + 84) == a3)
  {
    v10 = v33;
    v14 = *(v33 - 8);
    v15 = a4[38];
    goto LABEL_13;
  }

  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074B30, &qword_1E65F1088);
  if (*(*(v34 - 8) + 84) == a3)
  {
    v10 = v34;
    v14 = *(v34 - 8);
    v15 = a4[42];
    goto LABEL_13;
  }

  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074BD8, &qword_1E65F10B0);
  if (*(*(v35 - 8) + 84) == a3)
  {
    v10 = v35;
    v14 = *(v35 - 8);
    v15 = a4[45];
    goto LABEL_13;
  }

  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074BF8, &qword_1E65F10B8);
  if (*(*(v36 - 8) + 84) == a3)
  {
    v10 = v36;
    v14 = *(v36 - 8);
    v15 = a4[46];
    goto LABEL_13;
  }

  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074C28, &qword_1E65F10C0);
  if (*(*(v37 - 8) + 84) == a3)
  {
    v10 = v37;
    v14 = *(v37 - 8);
    v15 = a4[47];
    goto LABEL_13;
  }

  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074C70, &qword_1E65F10D0);
  if (*(*(v38 - 8) + 84) == a3)
  {
    v10 = v38;
    v14 = *(v38 - 8);
    v15 = a4[49];
    goto LABEL_13;
  }

  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072818, &qword_1E65EBE10);
  if (*(*(v39 - 8) + 84) == a3)
  {
    v10 = v39;
    v14 = *(v39 - 8);
    v15 = a4[50];
    goto LABEL_13;
  }

  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074068, &qword_1E65EF228);
  if (*(*(v40 - 8) + 84) == a3)
  {
    v10 = v40;
    v14 = *(v40 - 8);
    v15 = a4[51];
    goto LABEL_13;
  }

  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073F98, &qword_1E65EF138);
  if (*(*(v41 - 8) + 84) == a3)
  {
    v10 = v41;
    v14 = *(v41 - 8);
    v15 = a4[53];
    goto LABEL_13;
  }

  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074CF0, &qword_1E65F10D8);
  if (*(*(v42 - 8) + 84) == a3)
  {
    v10 = v42;
    v14 = *(v42 - 8);
    v15 = a4[54];
    goto LABEL_13;
  }

  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073560, &qword_1E65ED560);
  if (*(*(v43 - 8) + 84) == a3)
  {
    v10 = v43;
    v14 = *(v43 - 8);
    v15 = a4[55];
    goto LABEL_13;
  }

  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074D30, &qword_1E65F10E0);
  if (*(*(v44 - 8) + 84) == a3)
  {
    v10 = v44;
    v14 = *(v44 - 8);
    v15 = a4[56];
    goto LABEL_13;
  }

  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0745B0, &qword_1E65F0F38);
  if (*(*(v45 - 8) + 84) == a3)
  {
    v10 = v45;
    v14 = *(v45 - 8);
    v15 = a4[57];
    goto LABEL_13;
  }

  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074DB0, &qword_1E65F10F8);
  if (*(*(v46 - 8) + 84) == a3)
  {
    v10 = v46;
    v14 = *(v46 - 8);
    v15 = a4[59];
    goto LABEL_13;
  }

  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074DD0, &qword_1E65F1100);
  if (*(*(v47 - 8) + 84) == a3)
  {
    v10 = v47;
    v14 = *(v47 - 8);
    v15 = a4[60];
    goto LABEL_13;
  }

  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074DF8, &qword_1E65F1110);
  if (*(*(v48 - 8) + 84) == a3)
  {
    v10 = v48;
    v14 = *(v48 - 8);
    v15 = a4[65];
    goto LABEL_13;
  }

  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074E28, &qword_1E65F1118);
  if (*(*(v49 - 8) + 84) == a3)
  {
    v10 = v49;
    v14 = *(v49 - 8);
    v15 = a4[66];
    goto LABEL_13;
  }

  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074E58, &qword_1E65F1128);
  if (*(*(v50 - 8) + 84) == a3)
  {
    v10 = v50;
    v14 = *(v50 - 8);
    v15 = a4[69];
    goto LABEL_13;
  }

  v51 = sub_1E65E39E8();
  if (*(*(v51 - 8) + 84) == a3)
  {
    v10 = v51;
    v14 = *(v51 - 8);
    v15 = a4[70];
    goto LABEL_13;
  }

  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074E80, &qword_1E65F1130);
  if (*(*(v52 - 8) + 84) == a3)
  {
    v10 = v52;
    v14 = *(v52 - 8);
    v15 = a4[71];
    goto LABEL_13;
  }

  v53 = sub_1E65E1D58();
  if (*(*(v53 - 8) + 84) == a3)
  {
    v10 = v53;
    v14 = *(v53 - 8);
    v15 = a4[72];
    goto LABEL_13;
  }

  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072990, &qword_1E65EC130);
  if (*(*(v54 - 8) + 84) == a3)
  {
    v10 = v54;
    v14 = *(v54 - 8);
    v15 = a4[73];
    goto LABEL_13;
  }

  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074EE0, &qword_1E65F1148);
  if (*(*(v55 - 8) + 84) == a3)
  {
    v10 = v55;
    v14 = *(v55 - 8);
    v15 = a4[74];
    goto LABEL_13;
  }

  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074F00, &unk_1E66062A0);
  if (*(*(v56 - 8) + 84) == a3)
  {
    v10 = v56;
    v14 = *(v56 - 8);
    v15 = a4[75];
    goto LABEL_13;
  }

  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0777C0, &unk_1E65F84E0);
  if (*(*(v57 - 8) + 84) == a3)
  {
    v10 = v57;
    v14 = *(v57 - 8);
    v15 = a4[77];
    goto LABEL_13;
  }

  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073FB8, &qword_1E65EF148);
  if (*(*(v58 - 8) + 84) == a3)
  {
    v10 = v58;
    v14 = *(v58 - 8);
    v15 = a4[80];
    goto LABEL_13;
  }

  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073FC0, &qword_1E65EF150);
  v60 = *(*(v59 - 8) + 56);
  v61 = a1 + a4[84];

  return v60(v61, a2, a2, v59);
}

uint64_t sub_1E5E08E80(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1E65DE668();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_14:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0745E0, &qword_1E65F0F90);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_13:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_14;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_13;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_13;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072960, &qword_1E65EC0F8);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_13;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072918, &qword_1E65EC038);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[10];
    goto LABEL_13;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v19 = *(a1 + a3[11]);
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    return (v19 + 1);
  }

  else
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0746C8, &qword_1E65F0FB0);
    if (*(*(v20 - 8) + 84) == a2)
    {
      v8 = v20;
      v12 = *(v20 - 8);
      v13 = a3[12];
      goto LABEL_13;
    }

    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0746E8, &qword_1E65F0FB8);
    if (*(*(v21 - 8) + 84) == a2)
    {
      v8 = v21;
      v12 = *(v21 - 8);
      v13 = a3[13];
      goto LABEL_13;
    }

    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074858, &qword_1E65F1008);
    if (*(*(v22 - 8) + 84) == a2)
    {
      v8 = v22;
      v12 = *(v22 - 8);
      v13 = a3[18];
      goto LABEL_13;
    }

    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0741C8, &qword_1E65EFB48);
    if (*(*(v23 - 8) + 84) == a2)
    {
      v8 = v23;
      v12 = *(v23 - 8);
      v13 = a3[19];
      goto LABEL_13;
    }

    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E80, &qword_1E65ECC58);
    if (*(*(v24 - 8) + 84) == a2)
    {
      v8 = v24;
      v12 = *(v24 - 8);
      v13 = a3[20];
      goto LABEL_13;
    }

    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F68, &qword_1E65EA398);
    if (*(*(v25 - 8) + 84) == a2)
    {
      v8 = v25;
      v12 = *(v25 - 8);
      v13 = a3[21];
      goto LABEL_13;
    }

    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AC8, &qword_1E65EC488);
    if (*(*(v26 - 8) + 84) == a2)
    {
      v8 = v26;
      v12 = *(v26 - 8);
      v13 = a3[22];
      goto LABEL_13;
    }

    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E68, &qword_1E65EA160);
    if (*(*(v27 - 8) + 84) == a2)
    {
      v8 = v27;
      v12 = *(v27 - 8);
      v13 = a3[23];
      goto LABEL_13;
    }

    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0749A0, &qword_1E65F1038);
    if (*(*(v28 - 8) + 84) == a2)
    {
      v8 = v28;
      v12 = *(v28 - 8);
      v13 = a3[26];
      goto LABEL_13;
    }

    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727F8, &qword_1E65EBDF0);
    if (*(*(v29 - 8) + 84) == a2)
    {
      v8 = v29;
      v12 = *(v29 - 8);
      v13 = a3[27];
      goto LABEL_13;
    }

    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AD8, &unk_1E65F84F0);
    if (*(*(v30 - 8) + 84) == a2)
    {
      v8 = v30;
      v12 = *(v30 - 8);
      v13 = a3[29];
      goto LABEL_13;
    }

    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0741F0, &unk_1E65EFC10);
    if (*(*(v31 - 8) + 84) == a2)
    {
      v8 = v31;
      v12 = *(v31 - 8);
      v13 = a3[31];
      goto LABEL_13;
    }

    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072800, &qword_1E65EBDF8);
    if (*(*(v32 - 8) + 84) == a2)
    {
      v8 = v32;
      v12 = *(v32 - 8);
      v13 = a3[36];
      goto LABEL_13;
    }

    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AC0, &unk_1E65F4300);
    if (*(*(v33 - 8) + 84) == a2)
    {
      v8 = v33;
      v12 = *(v33 - 8);
      v13 = a3[38];
      goto LABEL_13;
    }

    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074B30, &qword_1E65F1088);
    if (*(*(v34 - 8) + 84) == a2)
    {
      v8 = v34;
      v12 = *(v34 - 8);
      v13 = a3[42];
      goto LABEL_13;
    }

    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074BD8, &qword_1E65F10B0);
    if (*(*(v35 - 8) + 84) == a2)
    {
      v8 = v35;
      v12 = *(v35 - 8);
      v13 = a3[45];
      goto LABEL_13;
    }

    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074BF8, &qword_1E65F10B8);
    if (*(*(v36 - 8) + 84) == a2)
    {
      v8 = v36;
      v12 = *(v36 - 8);
      v13 = a3[46];
      goto LABEL_13;
    }

    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074C28, &qword_1E65F10C0);
    if (*(*(v37 - 8) + 84) == a2)
    {
      v8 = v37;
      v12 = *(v37 - 8);
      v13 = a3[47];
      goto LABEL_13;
    }

    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074C70, &qword_1E65F10D0);
    if (*(*(v38 - 8) + 84) == a2)
    {
      v8 = v38;
      v12 = *(v38 - 8);
      v13 = a3[49];
      goto LABEL_13;
    }

    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072818, &qword_1E65EBE10);
    if (*(*(v39 - 8) + 84) == a2)
    {
      v8 = v39;
      v12 = *(v39 - 8);
      v13 = a3[50];
      goto LABEL_13;
    }

    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074068, &qword_1E65EF228);
    if (*(*(v40 - 8) + 84) == a2)
    {
      v8 = v40;
      v12 = *(v40 - 8);
      v13 = a3[51];
      goto LABEL_13;
    }

    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073F98, &qword_1E65EF138);
    if (*(*(v41 - 8) + 84) == a2)
    {
      v8 = v41;
      v12 = *(v41 - 8);
      v13 = a3[53];
      goto LABEL_13;
    }

    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074CF0, &qword_1E65F10D8);
    if (*(*(v42 - 8) + 84) == a2)
    {
      v8 = v42;
      v12 = *(v42 - 8);
      v13 = a3[54];
      goto LABEL_13;
    }

    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073560, &qword_1E65ED560);
    if (*(*(v43 - 8) + 84) == a2)
    {
      v8 = v43;
      v12 = *(v43 - 8);
      v13 = a3[55];
      goto LABEL_13;
    }

    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074D30, &qword_1E65F10E0);
    if (*(*(v44 - 8) + 84) == a2)
    {
      v8 = v44;
      v12 = *(v44 - 8);
      v13 = a3[56];
      goto LABEL_13;
    }

    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0745B0, &qword_1E65F0F38);
    if (*(*(v45 - 8) + 84) == a2)
    {
      v8 = v45;
      v12 = *(v45 - 8);
      v13 = a3[57];
      goto LABEL_13;
    }

    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074DB0, &qword_1E65F10F8);
    if (*(*(v46 - 8) + 84) == a2)
    {
      v8 = v46;
      v12 = *(v46 - 8);
      v13 = a3[59];
      goto LABEL_13;
    }

    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074DD0, &qword_1E65F1100);
    if (*(*(v47 - 8) + 84) == a2)
    {
      v8 = v47;
      v12 = *(v47 - 8);
      v13 = a3[60];
      goto LABEL_13;
    }

    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074DF8, &qword_1E65F1110);
    if (*(*(v48 - 8) + 84) == a2)
    {
      v8 = v48;
      v12 = *(v48 - 8);
      v13 = a3[65];
      goto LABEL_13;
    }

    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074E28, &qword_1E65F1118);
    if (*(*(v49 - 8) + 84) == a2)
    {
      v8 = v49;
      v12 = *(v49 - 8);
      v13 = a3[66];
      goto LABEL_13;
    }

    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074E58, &qword_1E65F1128);
    if (*(*(v50 - 8) + 84) == a2)
    {
      v8 = v50;
      v12 = *(v50 - 8);
      v13 = a3[69];
      goto LABEL_13;
    }

    v51 = sub_1E65E39E8();
    if (*(*(v51 - 8) + 84) == a2)
    {
      v8 = v51;
      v12 = *(v51 - 8);
      v13 = a3[70];
      goto LABEL_13;
    }

    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074E80, &qword_1E65F1130);
    if (*(*(v52 - 8) + 84) == a2)
    {
      v8 = v52;
      v12 = *(v52 - 8);
      v13 = a3[71];
      goto LABEL_13;
    }

    v53 = sub_1E65E1D58();
    if (*(*(v53 - 8) + 84) == a2)
    {
      v8 = v53;
      v12 = *(v53 - 8);
      v13 = a3[72];
      goto LABEL_13;
    }

    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072990, &qword_1E65EC130);
    if (*(*(v54 - 8) + 84) == a2)
    {
      v8 = v54;
      v12 = *(v54 - 8);
      v13 = a3[73];
      goto LABEL_13;
    }

    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074EE0, &qword_1E65F1148);
    if (*(*(v55 - 8) + 84) == a2)
    {
      v8 = v55;
      v12 = *(v55 - 8);
      v13 = a3[74];
      goto LABEL_13;
    }

    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074F00, &unk_1E66062A0);
    if (*(*(v56 - 8) + 84) == a2)
    {
      v8 = v56;
      v12 = *(v56 - 8);
      v13 = a3[75];
      goto LABEL_13;
    }

    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0777C0, &unk_1E65F84E0);
    if (*(*(v57 - 8) + 84) == a2)
    {
      v8 = v57;
      v12 = *(v57 - 8);
      v13 = a3[77];
      goto LABEL_13;
    }

    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073FB8, &qword_1E65EF148);
    if (*(*(v58 - 8) + 84) == a2)
    {
      v8 = v58;
      v12 = *(v58 - 8);
      v13 = a3[80];
      goto LABEL_13;
    }

    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073FC0, &qword_1E65EF150);
    v60 = *(*(v59 - 8) + 48);
    v61 = a1 + a3[84];

    return v60(v61, a2, v59);
  }
}

uint64_t sub_1E5E09E10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E5E09E70(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1E5E09ED0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0792A8, &qword_1E6601438);
    v3 = sub_1E65E6A28();
    for (i = a1 + 32; ; i += 56)
    {
      sub_1E5DFD1CC(i, v14, &qword_1ED0794B8, &qword_1E6601600);
      v5 = v14[0];
      result = sub_1E5E008AC(v14[0]);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v8 = (v3[7] + 48 * result);
      v9 = v15;
      v10 = v17;
      v8[1] = v16;
      v8[2] = v10;
      *v8 = v9;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1E5E09FFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B880, &qword_1E660D300);
    v3 = sub_1E65E6A28();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_1E5E1B97C(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1E5E0A0F0()
{
  v0 = sub_1E65DDE68();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v99 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65D7F18();
  if (v99 < 2u)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A558, &unk_1E6606AA0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1E6606A90;
    v6 = type metadata accessor for WelcomeAcknowledgementDetour(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();

    v10 = sub_1E5E0ACD8(v9);

    *(v5 + 56) = v6;
    *(v5 + 64) = &off_1F5FAEAF0;
    *(v5 + 32) = v10;
    v11 = type metadata accessor for MetricEnterEventDetour();
    v12 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0723D0, &qword_1E65EA060);
    sub_1E65D7F18();
    *(v12 + 16) = v99;
    sub_1E65D7F18();
    *(v12 + 32) = v99;
    *(v5 + 96) = v11;
    *(v5 + 104) = &protocol witness table for MetricEnterEventDetour;
    *(v5 + 72) = v12;
    v13 = type metadata accessor for AnalyticsConsentDetour(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();

    v17 = sub_1E5E0B19C(v16);

    *(v5 + 136) = v13;
    *(v5 + 144) = &off_1F5FAE148;
    *(v5 + 112) = v17;
    v18 = type metadata accessor for NotificationsConsentDetour(0);
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    swift_allocObject();

    v22 = sub_1E5E0B5F4(v21);
    *(v5 + 176) = v18;
    *(v5 + 184) = &off_1F5FB0060;
    *(v5 + 152) = v22;
    v23 = type metadata accessor for AccountUpgradeDetour(0);
    v24 = *(v23 + 48);
    v25 = *(v23 + 52);
    v26 = swift_allocObject();
    swift_defaultActor_initialize();
    v27 = OBJC_IVAR____TtC10Blackbeard20AccountUpgradeDetour_state;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E10, &qword_1E6603B00);
    (*(*(v28 - 8) + 56))(v26 + v27, 1, 1, v28);
    (*(v1 + 104))(v4, *MEMORY[0x1E69CAB30], v0);
    LOBYTE(v99) = 0;
    sub_1E65DDC88();
    *(v5 + 216) = v23;
    *(v5 + 224) = &off_1F5FC45F8;
    *(v5 + 192) = v26;
    *(v5 + 256) = &type metadata for SiriSessionDetour;
    *(v5 + 264) = &off_1F5FC23D8;
    v29 = type metadata accessor for SharePlaySessionDetour(0);
    v30 = objc_allocWithZone(v29);

    v32 = sub_1E5E0BB1C(v31);

    *(v5 + 296) = v29;
    *(v5 + 304) = &off_1F5FA9D98;
    *(v5 + 272) = v32;
    v33 = type metadata accessor for AudioLanguageEngagementSheetDetour(0);
    v34 = *(v33 + 48);
    v35 = *(v33 + 52);
    v36 = swift_allocObject();
    swift_defaultActor_initialize();
    v37 = OBJC_IVAR____TtC10Blackbeard34AudioLanguageEngagementSheetDetour_state;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071EE0, &qword_1E65EA1E0);
    v39 = *(*(v38 - 8) + 56);
    v39(v36 + v37, 1, 1, v38);
    *(v5 + 336) = v33;
    *(v5 + 344) = &off_1F5FA98C8;
    *(v5 + 312) = v36;
    v40 = type metadata accessor for OnboardingDetour(0);
    v41 = *(v40 + 48);
    v42 = *(v40 + 52);
    v43 = swift_allocObject();
    swift_defaultActor_initialize();
    v39(v43 + OBJC_IVAR____TtC10Blackbeard16OnboardingDetour_state, 1, 1, v38);
    *(v43 + OBJC_IVAR____TtC10Blackbeard16OnboardingDetour_hasPresentedOnboardingThisLaunch) = 0;
    *(v5 + 376) = v40;
    *(v5 + 384) = &off_1F5FBED90;
    *(v5 + 352) = v43;
    v44 = type metadata accessor for PersonalizationPrivacyConsentDetour(0);
    v45 = *(v44 + 48);
    v46 = *(v44 + 52);
    swift_allocObject();

    v48 = sub_1E5E0C25C(v47);

    *(v5 + 416) = v44;
    *(v5 + 424) = &off_1F5FA96E8;
    *(v5 + 392) = v48;
    v49 = type metadata accessor for MetricAccountEventDetour();
    v50 = swift_allocObject();
    sub_1E65D7F18();
    *(v50 + 16) = v99;
    sub_1E65D7F18();
    *(v50 + 32) = v99;
    *(v5 + 456) = v49;
    *(v5 + 464) = &protocol witness table for MetricAccountEventDetour;
    *(v5 + 432) = v50;
    v51 = type metadata accessor for AwardToastDetour();
    v52 = swift_allocObject();
    *(v52 + 16) = 0;
    *(v5 + 496) = v51;
    *(v5 + 504) = &off_1F5FC5370;
    *(v5 + 472) = v52;
    *(v5 + 536) = &type metadata for PurchaseDetour;
    v53 = (v5 + 544);
LABEL_5:
    *v53 = &off_1F5FB4F60;
    return v5;
  }

  if (v99 == 3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A558, &unk_1E6606AA0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1E6606A80;
    v54 = type metadata accessor for WelcomeAcknowledgementDetour(0);
    v55 = *(v54 + 48);
    v56 = *(v54 + 52);
    swift_allocObject();

    v58 = sub_1E5E0ACD8(v57);

    *(v5 + 56) = v54;
    *(v5 + 64) = &off_1F5FAEAF0;
    *(v5 + 32) = v58;
    v59 = type metadata accessor for MetricEnterEventDetour();
    v60 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0723D0, &qword_1E65EA060);
    sub_1E65D7F18();
    *(v60 + 16) = v99;
    sub_1E65D7F18();
    *(v60 + 32) = v99;
    *(v5 + 96) = v59;
    *(v5 + 104) = &protocol witness table for MetricEnterEventDetour;
    *(v5 + 72) = v60;
    v61 = type metadata accessor for RemoteDisplayDetour();
    swift_allocObject();

    v62 = sub_1E627F0D4();

    *(v5 + 136) = v61;
    *(v5 + 144) = &off_1F5FB7130;
    *(v5 + 112) = v62;
    v63 = type metadata accessor for RemoteBrowsingDetour();
    v64 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v5 + 176) = v63;
    *(v5 + 184) = &off_1F5FBF0A0;
    *(v5 + 152) = v64;
    v65 = *(v54 + 48);
    v66 = *(v54 + 52);
    swift_allocObject();

    v68 = sub_1E5E0ACD8(v67);

    *(v5 + 216) = v54;
    *(v5 + 224) = &off_1F5FAEAF0;
    *(v5 + 192) = v68;
    v69 = type metadata accessor for AnalyticsConsentDetour(0);
    v70 = *(v69 + 48);
    v71 = *(v69 + 52);
    swift_allocObject();

    v73 = sub_1E5E0B19C(v72);

    *(v5 + 256) = v69;
    *(v5 + 264) = &off_1F5FAE148;
    *(v5 + 232) = v73;
    *(v5 + 296) = &type metadata for RemoteBrowsingSiriSessionDetour;
    *(v5 + 304) = &off_1F5FB7070;
    v74 = type metadata accessor for SharePlaySessionDetour(0);
    v75 = objc_allocWithZone(v74);

    v77 = sub_1E5E0BB1C(v76);

    *(v5 + 336) = v74;
    *(v5 + 344) = &off_1F5FA9D98;
    *(v5 + 312) = v77;
    v78 = type metadata accessor for AudioLanguageEngagementSheetDetour(0);
    v79 = *(v78 + 48);
    v80 = *(v78 + 52);
    v81 = swift_allocObject();
    swift_defaultActor_initialize();
    v82 = OBJC_IVAR____TtC10Blackbeard34AudioLanguageEngagementSheetDetour_state;
    v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071EE0, &qword_1E65EA1E0);
    v84 = *(*(v83 - 8) + 56);
    v84(v81 + v82, 1, 1, v83);
    *(v5 + 376) = v78;
    *(v5 + 384) = &off_1F5FA98C8;
    *(v5 + 352) = v81;
    v85 = type metadata accessor for OnboardingDetour(0);
    v86 = *(v85 + 48);
    v87 = *(v85 + 52);
    v88 = swift_allocObject();
    swift_defaultActor_initialize();
    v84(v88 + OBJC_IVAR____TtC10Blackbeard16OnboardingDetour_state, 1, 1, v83);
    *(v88 + OBJC_IVAR____TtC10Blackbeard16OnboardingDetour_hasPresentedOnboardingThisLaunch) = 0;
    *(v5 + 416) = v85;
    *(v5 + 424) = &off_1F5FBED90;
    *(v5 + 392) = v88;
    v89 = type metadata accessor for PersonalizationPrivacyConsentDetour(0);
    v90 = *(v89 + 48);
    v91 = *(v89 + 52);
    swift_allocObject();

    v93 = sub_1E5E0C25C(v92);

    *(v5 + 456) = v89;
    *(v5 + 464) = &off_1F5FA96E8;
    *(v5 + 432) = v93;
    v94 = type metadata accessor for MetricAccountEventDetour();
    v95 = swift_allocObject();
    sub_1E65D7F18();
    *(v95 + 16) = v99;
    sub_1E65D7F18();
    *(v95 + 32) = v99;
    *(v5 + 496) = v94;
    *(v5 + 504) = &protocol witness table for MetricAccountEventDetour;
    *(v5 + 472) = v95;
    v96 = type metadata accessor for AwardToastDetour();
    v97 = swift_allocObject();
    *(v97 + 16) = 0;
    *(v5 + 536) = v96;
    *(v5 + 544) = &off_1F5FC5370;
    *(v5 + 512) = v97;
    *(v5 + 576) = &type metadata for PurchaseDetour;
    v53 = (v5 + 584);
    goto LABEL_5;
  }

  result = sub_1E65E69D8();
  __break(1u);
  return result;
}

void sub_1E5E0AB08()
{
  v0 = type metadata accessor for WelcomeAcknowledgementDetour.State(319);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1E5DF0444();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1E5E0AC00()
{
  sub_1E5E0AC58();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_1E5E0AC58()
{
  if (!qword_1EE2D47F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED0722F0, &unk_1E65EA1F0);
    type metadata accessor for RouteDestination();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE2D47F8);
    }
  }
}

uint64_t sub_1E5E0ACD8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E65DDE68();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v9 = OBJC_IVAR____TtC10Blackbeard28WelcomeAcknowledgementDetour_state;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E10, &qword_1E6603B00);
  (*(*(v10 - 8) + 56))(v2 + v9, 1, 1, v10);
  v11 = *(v5 + 104);
  v11(v8, *MEMORY[0x1E69CAB98], v4);
  LOBYTE(v21[0]) = 1;
  sub_1E65DDC88();
  v11(v8, *MEMORY[0x1E69CAB60], v4);
  LOBYTE(v21[0]) = 0;
  sub_1E65DDC88();
  *(v2 + OBJC_IVAR____TtC10Blackbeard28WelcomeAcknowledgementDetour_dependencies) = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0723D0, &qword_1E65EA060);
  sub_1E65D7F18();
  v12 = (v2 + OBJC_IVAR____TtC10Blackbeard28WelcomeAcknowledgementDetour_eventHub);
  *(v2 + OBJC_IVAR____TtC10Blackbeard28WelcomeAcknowledgementDetour_eventHub) = v21[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07BBC0, &qword_1E65F1460);
  sub_1E65D7F18();
  sub_1E5DF599C(v21, v2 + OBJC_IVAR____TtC10Blackbeard28WelcomeAcknowledgementDetour_subscriptionCache);
  v13 = *v12;
  v14 = v12[1];
  v15 = sub_1E65DDEB8();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v2 + OBJC_IVAR____TtC10Blackbeard28WelcomeAcknowledgementDetour_subscriptionToken) = sub_1E65DDEA8();
  v18 = *(v2 + OBJC_IVAR____TtC10Blackbeard28WelcomeAcknowledgementDetour_eventHub);
  v19 = *(v2 + OBJC_IVAR____TtC10Blackbeard28WelcomeAcknowledgementDetour_eventHub + 8);
  swift_getObjectType();
  sub_1E65DE1B8();
  swift_allocObject();
  swift_weakInit();
  sub_1E65DDDF8();

  __swift_destroy_boxed_opaque_existential_1(v21);
  return v2;
}

uint64_t sub_1E5E0B010()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void sub_1E5E0B08C()
{
  v0 = type metadata accessor for AnalyticsConsentDetour.State(319);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1E5DF0444();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1E5E0B19C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E65DDE68();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v21[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v9 = OBJC_IVAR____TtC10Blackbeard22AnalyticsConsentDetour_state;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E10, &qword_1E6603B00);
  (*(*(v10 - 8) + 56))(v2 + v9, 1, 1, v10);
  v11 = *(v5 + 104);
  v11(v8, *MEMORY[0x1E69CAB70], v4);
  LOBYTE(v21[0]) = 1;
  sub_1E65DDC88();
  v11(v8, *MEMORY[0x1E69CAB90], v4);
  LOBYTE(v21[0]) = 0;
  sub_1E65DDC88();
  *(v2 + OBJC_IVAR____TtC10Blackbeard22AnalyticsConsentDetour_dependencies) = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0723D0, &qword_1E65EA060);
  sub_1E65D7F18();
  v12 = v21[1];
  v13 = (v2 + OBJC_IVAR____TtC10Blackbeard22AnalyticsConsentDetour_eventHub);
  *v13 = v21[0];
  v13[1] = v12;
  v14 = sub_1E65DDEB8();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v2 + OBJC_IVAR____TtC10Blackbeard22AnalyticsConsentDetour_subscriptionToken) = sub_1E65DDEA8();
  v17 = *(v2 + OBJC_IVAR____TtC10Blackbeard22AnalyticsConsentDetour_eventHub);
  v18 = *(v2 + OBJC_IVAR____TtC10Blackbeard22AnalyticsConsentDetour_eventHub + 8);
  swift_getObjectType();
  sub_1E65DE138();
  swift_allocObject();
  swift_weakInit();
  sub_1E65DDDF8();

  __swift_destroy_boxed_opaque_existential_1(v21);
  return v2;
}

uint64_t sub_1E5E0B494()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void sub_1E5E0B50C()
{
  v0 = type metadata accessor for NotificationsConsentDetour.State(319);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1E5DF0444();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1E5E0B5F4(uint64_t a1)
{
  v11 = a1;
  v2 = sub_1E65DDE68();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v7 = OBJC_IVAR____TtC10Blackbeard26NotificationsConsentDetour_state;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E10, &qword_1E6603B00);
  (*(*(v8 - 8) + 56))(v1 + v7, 1, 1, v8);
  v9 = *(v3 + 104);
  v9(v6, *MEMORY[0x1E69CAB80], v2);
  v14 = 1;
  sub_1E65DDC88();
  v9(v6, *MEMORY[0x1E69CAB68], v2);
  v13 = 0;
  sub_1E65DDC88();
  v9(v6, *MEMORY[0x1E69CABA0], v2);
  v12 = 1;
  sub_1E65DDC88();
  *(v1 + OBJC_IVAR____TtC10Blackbeard26NotificationsConsentDetour_dependencies) = v11;
  return v1;
}

void sub_1E5E0B85C()
{
  v0 = type metadata accessor for AccountUpgradeDetour.State(319);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1E5DF0444();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1E5E0B974()
{
  result = type metadata accessor for SharePlaySessionDetour.State(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E5E0BA2C()
{
  sub_1E5E0BA84();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_1E5E0BA84()
{
  if (!qword_1EE2D70F8)
  {
    sub_1E65D8D48();
    type metadata accessor for AppComposer();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED0722F0, &unk_1E65EA1F0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EE2D70F8);
    }
  }
}

id sub_1E5E0BB1C(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC10Blackbeard22SharePlaySessionDetour_state;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0722E0, &qword_1E65EAAA0);
  (*(*(v5 - 8) + 56))(&v2[v4], 1, 1, v5);
  *&v2[OBJC_IVAR____TtC10Blackbeard22SharePlaySessionDetour_dependencies] = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0723D0, &qword_1E65EA060);
  sub_1E65D7F18();
  v6 = &v2[OBJC_IVAR____TtC10Blackbeard22SharePlaySessionDetour_eventHub];
  *&v2[OBJC_IVAR____TtC10Blackbeard22SharePlaySessionDetour_eventHub] = v15[1];
  v7 = [objc_allocWithZone(type metadata accessor for MarketingPurchaseHandler()) init];
  v8 = *v6;
  *&v7[OBJC_IVAR____TtC10Blackbeard24MarketingPurchaseHandler_eventHub + 8] = *(v6 + 1);
  swift_unknownObjectWeakAssign();
  v9 = [objc_allocWithZone(type metadata accessor for MarketingDynamicOfferCoordinator()) init];
  v10 = OBJC_IVAR____TtC10Blackbeard22SharePlaySessionDetour_dynamicOfferCoordinator;
  *&v2[OBJC_IVAR____TtC10Blackbeard22SharePlaySessionDetour_dynamicOfferCoordinator] = v9;
  v11 = *v6;
  *&v9[OBJC_IVAR____TtC10Blackbeard32MarketingDynamicOfferCoordinator_eventHub + 8] = *(v6 + 1);
  swift_unknownObjectWeakAssign();
  v12 = *&v2[v10];
  swift_unknownObjectWeakAssign();
  v13 = [objc_allocWithZone(type metadata accessor for MarketingWebUserInterfaceCoordinator()) init];

  *&v2[OBJC_IVAR____TtC10Blackbeard22SharePlaySessionDetour_webUserInterfaceCoordinator] = v13;
  v15[0].receiver = v2;
  v15[0].super_class = type metadata accessor for SharePlaySessionDetour(0);
  return [(objc_super *)v15 init];
}

uint64_t sub_1E5E0BEB0()
{
  result = type metadata accessor for AudioLanguageEngagementSheetDetour.State(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1E5E0BF4C()
{
  if (!qword_1EE2D4800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED0722F0, &unk_1E65EA1F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED071EE8, &qword_1E65F59D0);
    type metadata accessor for RouteDestination();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EE2D4800);
    }
  }
}

uint64_t sub_1E5E0BFF0()
{
  sub_1E5E0BF4C();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_1E5E0C088()
{
  result = type metadata accessor for OnboardingDetour.State(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1E5E0C16C()
{
  v0 = type metadata accessor for PersonalizationPrivacyConsentDetour.State(319);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1E5DF0444();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1E5E0C25C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E65DDE68();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v21[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v9 = OBJC_IVAR____TtC10Blackbeard35PersonalizationPrivacyConsentDetour_state;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E10, &qword_1E6603B00);
  (*(*(v10 - 8) + 56))(v2 + v9, 1, 1, v10);
  v11 = *(v5 + 104);
  v11(v8, *MEMORY[0x1E69CABA8], v4);
  LOBYTE(v21[0]) = 1;
  sub_1E65DDC88();
  v11(v8, *MEMORY[0x1E69CABB8], v4);
  LOBYTE(v21[0]) = 0;
  sub_1E65DDC88();
  *(v2 + OBJC_IVAR____TtC10Blackbeard35PersonalizationPrivacyConsentDetour_dependencies) = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0723D0, &qword_1E65EA060);
  sub_1E65D7F18();
  v12 = v21[1];
  v13 = (v2 + OBJC_IVAR____TtC10Blackbeard35PersonalizationPrivacyConsentDetour_eventHub);
  *v13 = v21[0];
  v13[1] = v12;
  v14 = sub_1E65DDEB8();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v2 + OBJC_IVAR____TtC10Blackbeard35PersonalizationPrivacyConsentDetour_subscriptionToken) = sub_1E65DDEA8();
  v17 = *(v2 + OBJC_IVAR____TtC10Blackbeard35PersonalizationPrivacyConsentDetour_eventHub);
  v18 = *(v2 + OBJC_IVAR____TtC10Blackbeard35PersonalizationPrivacyConsentDetour_eventHub + 8);
  swift_getObjectType();
  sub_1E65DE2B8();
  swift_allocObject();
  swift_weakInit();
  sub_1E65DDDF8();

  __swift_destroy_boxed_opaque_existential_1(v21);
  return v2;
}

uint64_t sub_1E5E0C554()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1E5E0C5D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = type metadata accessor for AppComposer();
  v8 = *(*(v57 - 8) + 64);
  MEMORY[0x1EEE9AC00](v57);
  v58 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for NavigationControllerRoutingContext();
  v10 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54);
  v12 = (&v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A4D0, &qword_1E6606798);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v55 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v53 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v53 - v20;
  *(a4 + OBJC_IVAR____TtC10Blackbeard9AppRouter_routingContexts) = MEMORY[0x1E69E7CC8];
  *(a4 + OBJC_IVAR____TtC10Blackbeard9AppRouter_changeObserver) = 0;
  v22 = type metadata accessor for TaskScheduler(0);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  v25 = swift_allocObject();
  swift_defaultActor_initialize();
  v26 = OBJC_IVAR____TtC10Blackbeard13TaskScheduler_state;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726D0, &qword_1E65EBAB0);
  (*(*(v27 - 8) + 56))(v25 + v26, 1, 1, v27);
  *(v25 + OBJC_IVAR____TtC10Blackbeard13TaskScheduler_scheduledTasks) = MEMORY[0x1E69E7CC0];
  *(v25 + OBJC_IVAR____TtC10Blackbeard13TaskScheduler_vouchers) = MEMORY[0x1E69E7CD0];
  *(v25 + OBJC_IVAR____TtC10Blackbeard13TaskScheduler_scheduledTaskLifetimeTotal) = 0;
  v28 = *(a2 + 16);
  v56 = a3;
  if (v28)
  {
    sub_1E5DFAA48(a1, v21, type metadata accessor for AppComposer);
    v29 = type metadata accessor for RouteDetourResolver();
    v30 = &v21[*(v29 + 20)];
    *v30 = a3;
    *(v30 + 1) = &off_1F5FB2698;
    *&v21[*(v29 + 24)] = a2;
    (*(*(v29 - 8) + 56))(v21, 0, 1, v29);
    swift_unknownObjectRetain();
  }

  else
  {

    v29 = type metadata accessor for RouteDetourResolver();
    (*(*(v29 - 8) + 56))(v21, 1, 1, v29);
  }

  v31 = swift_allocObject();
  v32 = (a1 + *(v57 + 32));
  v33 = *v32;
  *(v31 + 24) = v32[1];
  swift_unknownObjectWeakInit();
  v34 = type metadata accessor for PresentationPublisher();
  v35 = objc_allocWithZone(v34);
  v36 = &v35[OBJC_IVAR____TtC10Blackbeard21PresentationPublisher_publishPresentationAction];
  *v36 = sub_1E6347630;
  v36[1] = v31;
  v62.receiver = v35;
  v62.super_class = v34;
  *(a4 + 16) = objc_msgSendSuper2(&v62, sel_init);
  v37 = [objc_allocWithZone(type metadata accessor for NavigationController()) init];
  v57 = a1;
  sub_1E5DFAA48(a1, v58, type metadata accessor for AppComposer);
  sub_1E5DFD1CC(v21, v19, &qword_1ED07A4D0, &qword_1E6606798);
  type metadata accessor for RouteDetourResolver();
  v38 = *(*(v29 - 8) + 48);
  if (v38(v19, 1, v29) == 1)
  {
    sub_1E5DFE50C(v19, &qword_1ED07A4D0, &qword_1E6606798);
    v59 = 0u;
    v60 = 0u;
    v61 = 0;
  }

  else
  {
    *(&v60 + 1) = v29;
    v61 = &off_1F5FB48B8;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v59);
    sub_1E5DFAC50(v19, boxed_opaque_existential_1, type metadata accessor for RouteDetourResolver);
  }

  v40 = *(a4 + 16);
  v41 = sub_1E5E0E7A0(&unk_1EE2DB030, type metadata accessor for TaskScheduler);
  *v12 = v37;
  v42 = v54;
  sub_1E5DFAC50(v58, v12 + *(v54 + 20), type metadata accessor for AppComposer);
  v43 = (v12 + v42[6]);
  *v43 = v25;
  v43[1] = v41;
  v44 = v12 + v42[7];
  v45 = v60;
  *v44 = v59;
  *(v44 + 1) = v45;
  *(v44 + 4) = v61;
  *(v12 + v42[8]) = v40;
  sub_1E5DFAC50(v12, a4 + OBJC_IVAR____TtC10Blackbeard9AppRouter_offlineRoutingContext, type metadata accessor for NavigationControllerRoutingContext);
  v46 = (a4 + OBJC_IVAR____TtC10Blackbeard9AppRouter_taskScheduler);
  *v46 = v25;
  v46[1] = v41;
  v47 = v57;
  sub_1E5DFAA48(v57, a4 + OBJC_IVAR____TtC10Blackbeard9AppRouter_composer, type metadata accessor for AppComposer);
  v48 = v55;
  sub_1E5DFD1CC(v21, v55, &qword_1ED07A4D0, &qword_1E6606798);
  if (v38(v48, 1, v29) == 1)
  {
    swift_unknownObjectRetain();

    sub_1E5DFE50C(v21, &qword_1ED07A4D0, &qword_1E6606798);

    sub_1E5E09E70(v47, type metadata accessor for AppComposer);
    sub_1E5DFE50C(v48, &qword_1ED07A4D0, &qword_1E6606798);
    v59 = 0u;
    v60 = 0u;
    v61 = 0;
  }

  else
  {
    *(&v60 + 1) = v29;
    v61 = &off_1F5FB48B8;
    v49 = __swift_allocate_boxed_opaque_existential_1(&v59);
    sub_1E5DFAC50(v48, v49, type metadata accessor for RouteDetourResolver);
    swift_unknownObjectRetain();

    sub_1E5DFE50C(v21, &qword_1ED07A4D0, &qword_1E6606798);
    sub_1E5E09E70(v47, type metadata accessor for AppComposer);
  }

  v50 = a4 + OBJC_IVAR____TtC10Blackbeard9AppRouter_detourResolver;
  v51 = v60;
  *v50 = v59;
  *(v50 + 16) = v51;
  *(v50 + 32) = v61;
  return a4;
}

uint64_t sub_1E5E0CCD4()
{
  MEMORY[0x1E694F2D0](v0 + 16);

  return swift_deallocObject();
}

uint64_t type metadata accessor for RouteDetourResolver()
{
  result = qword_1EE2D9900;
  if (!qword_1EE2D9900)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E5E0CD5C()
{
  type metadata accessor for AppComposer();
  if (v0 <= 0x3F)
  {
    sub_1E5E0CDF8();
    if (v1 <= 0x3F)
    {
      sub_1E5E0CE58();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1E5E0CDF8()
{
  result = qword_1EE2D8FB0;
  if (!qword_1EE2D8FB0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE2D8FB0);
  }

  return result;
}

void sub_1E5E0CE58()
{
  if (!qword_1EE2D4898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED076D10, &unk_1E65F7FB0);
    v0 = sub_1E65E5FB8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2D4898);
    }
  }
}

uint64_t sub_1E5E0CEFC()
{
  result = type metadata accessor for TaskScheduler.State(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1E5E0CFB4()
{
  if (!qword_1EE2DB108[0])
  {
    type metadata accessor for TaskScheduler.ScheduledTask(255);
    sub_1E65D76F8();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0726D8, &unk_1E65EBAC0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, qword_1EE2DB108);
    }
  }
}

uint64_t sub_1E5E0D04C()
{
  sub_1E5E0CFB4();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_1E5E0D0C4()
{
  sub_1E5E0D158();
  if (v0 <= 0x3F)
  {
    sub_1E5E0D1A8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1E5E0D158()
{
  result = qword_1EE2D4448;
  if (!qword_1EE2D4448)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EE2D4448);
  }

  return result;
}

void sub_1E5E0D1A8()
{
  if (!qword_1EE2D47E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED07B740, &qword_1E65ED600);
    v0 = sub_1E65E6008();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2D47E8);
    }
  }
}

uint64_t sub_1E5E0D234(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726C8, &qword_1E66094D0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E5E0D2F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AppComposer();
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

id sub_1E5E0D3F8()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC10Blackbeard20NavigationController_pictureInPictureSurrogate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC10Blackbeard20NavigationController_palette] = 0;
  *&v0[OBJC_IVAR____TtC10Blackbeard20NavigationController_paletteViewController] = 0;
  v2 = MEMORY[0x1E69E7CC0];
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
  {
    sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CD0];
  }

  *&v0[OBJC_IVAR____TtC10Blackbeard20NavigationController_menuCommands] = v3;
  *&v0[OBJC_IVAR____TtC10Blackbeard20NavigationController_pendingPresentation] = v2;
  v25.receiver = v0;
  v25.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v25, sel_initWithNibName_bundle_, 0, 0);
  v5 = qword_1EE2D7178;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = qword_1EE2EA110;
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = objc_allocWithZone(BBMenuCommand);
  aBlock[4] = sub_1E64C3A54;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E638D4E4;
  aBlock[3] = &block_descriptor_22;
  v11 = _Block_copy(aBlock);
  v23[4] = sub_1E64C3A5C;
  v23[5] = v9;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = sub_1E5E05AB0;
  v23[3] = &block_descriptor_11;
  v12 = _Block_copy(v23);

  v13 = [v10 initWithSelector:v7 requireEnabled:v11 handler:v12];
  _Block_release(v11);
  _Block_release(v12);

  swift_beginAccess();
  sub_1E5E0DD94(v23, v13);
  swift_endAccess();

  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v14 = sub_1E65E3B68();
  __swift_project_value_buffer(v14, qword_1EE2EA2A0);
  v15 = sub_1E65E3B48();
  v16 = sub_1E65E6338();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 141558274;
    *(v17 + 4) = 1752392040;
    *(v17 + 12) = 2080;
    v23[0] = v6;
    v19 = sub_1E65E5CE8();
    v21 = sub_1E5DFD4B0(v19, v20, aBlock);

    *(v17 + 14) = v21;
    _os_log_impl(&dword_1E5DE9000, v15, v16, "[%{mask.hash}s] init", v17, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x1E694F1C0](v18, -1, -1);
    MEMORY[0x1E694F1C0](v17, -1, -1);
  }

  return v6;
}

uint64_t sub_1E5E0D80C()
{
  MEMORY[0x1E694F2D0](v0 + 16);

  return swift_deallocObject();
}

void sub_1E5E0D844()
{
  v0 = sub_1E65E5C48();
  v1 = NSSelectorFromString(v0);

  qword_1EE2EA110 = v1;
}

uint64_t sub_1E5E0D894(void **a1)
{
  v2 = *(sub_1E65D74E8() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1E636B280(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1E5E0D93C(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_1E5E0D93C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1E65E6BA8();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1E65D74E8();
        v6 = sub_1E65E5F98();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1E65D74E8() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1E62FD674(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1E5E0DA6C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1E5E0DA6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v43 = sub_1E65D74E8();
  v9 = *(v43 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v43);
  v48 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v36 - v14;
  result = MEMORY[0x1EEE9AC00](v13);
  v38 = a2;
  if (a3 != a2)
  {
    v51 = &v36 - v17;
    v18 = *a4;
    v20 = *(v9 + 16);
    v19 = v9 + 16;
    v21 = *(v19 + 56);
    v49 = v20;
    v50 = (v19 - 8);
    v22 = (v18 + v21 * (a3 - 1));
    v44 = -v21;
    v45 = (v19 + 16);
    v23 = a1 - a3;
    v46 = v18;
    v47 = v19;
    v37 = v21;
    v24 = v18 + v21 * a3;
    v25 = v4;
    while (2)
    {
      v41 = v22;
      v42 = a3;
      v39 = v24;
      v40 = v23;
      v26 = v43;
      while (1)
      {
        v27 = v51;
        v28 = v49;
        v49(v51, v24, v26);
        v28(v15, v22, v26);
        v29 = sub_1E5DF7E0C(v27, v15);
        v52 = v25;
        if (v25)
        {
          v35 = *v50;
          (*v50)(v15, v26);
          return (v35)(v27, v26);
        }

        v30 = v29;
        v31 = *v50;
        (*v50)(v15, v26);
        result = (v31)(v27, v26);
        if ((v30 & 1) == 0)
        {
          break;
        }

        if (!v46)
        {
          __break(1u);
          return result;
        }

        v32 = *v45;
        v33 = v48;
        (*v45)(v48, v24, v26);
        swift_arrayInitWithTakeFrontToBack();
        result = v32(v22, v33, v26);
        v22 += v44;
        v24 += v44;
        v34 = __CFADD__(v23++, 1);
        v25 = v52;
        if (v34)
        {
          goto LABEL_11;
        }
      }

      v25 = v52;
LABEL_11:
      a3 = v42 + 1;
      v22 = &v41[v37];
      v23 = v40 - 1;
      v24 = v39 + v37;
      if (v42 + 1 != v38)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1E5E0DD4C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E5E0DD94(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1E65E67D8();

    if (v9)
    {

      sub_1E5E0DFF4();
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_1E65E67C8();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_1E60F8A0C(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_1E6101E00(v22 + 1);
    }

    v20 = v8;
    sub_1E6102028(v20, v21);

    *v3 = v21;
    goto LABEL_16;
  }

  sub_1E5E0DFF4();
  v11 = *(v6 + 40);
  v12 = sub_1E65E6598();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_1E5E0E224(v20, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_1E65E65A8();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

unint64_t sub_1E5E0DFF4()
{
  result = qword_1EE2D46A0;
  if (!qword_1EE2D46A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE2D46A0);
  }

  return result;
}

unint64_t sub_1E5E0E080(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1E65E5C78();
  sub_1E65E6D28();
  sub_1E65E5D78();
  v4 = sub_1E65E6D78();

  return sub_1E5E0E120(a1, v4);
}

unint64_t sub_1E5E0E120(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1E65E5C78();
      v9 = v8;
      if (v7 == sub_1E65E5C78() && v9 == v10)
      {
        break;
      }

      v12 = sub_1E65E6C18();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

void sub_1E5E0E224(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1E6101E00(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1E610BB00();
      goto LABEL_12;
    }

    sub_1E5E0E384(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  v10 = sub_1E65E6598();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    sub_1E5E0DFF4();
    do
    {
      v13 = *(*(v8 + 48) + 8 * a2);
      v14 = sub_1E65E65A8();

      if (v14)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = a1;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1E65E6C58();
  __break(1u);
}

uint64_t sub_1E5E0E384(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072010, &qword_1E65EA478);
  result = sub_1E65E6868();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(v6 + 40);
      v18 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_1E65E6598();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1E5E0E5AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AppComposer();
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

uint64_t sub_1E5E0E67C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for AppEnvironment();
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
      v13 = type metadata accessor for AppDataItemResolver();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1E5E0E7A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E5E0E7E8(uint64_t a1)
{
  result = sub_1E5E0E840(&qword_1EE2DB040, type metadata accessor for TaskScheduler);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E5E0E840(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t objectdestroy_28Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  return swift_deallocObject();
}

uint64_t objectdestroyTm_0()
{
  v113 = type metadata accessor for AppComposer();
  v112 = *(*(v113 - 1) + 80);
  v111 = *(*(v113 - 1) + 64);
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v108 = (v0 + ((v112 + 40) & ~v112));
  v3 = *v108;

  v4 = v108 + v113[5];
  v5 = *v4;
  swift_unknownObjectRelease();
  v6 = type metadata accessor for AppEnvironment();
  v7 = v6[6];
  v110 = type metadata accessor for AccountService();
  v109 = *(v110[-1].Description + 1);
  v109(&v4[v7], v110);
  v8 = v6[7];
  v107 = type metadata accessor for AppStateService();
  v106 = *(v107[-1].Description + 1);
  v106(&v4[v8], v107);
  v9 = v6[8];
  v105 = type metadata accessor for ArchivedSessionService();
  v104 = *(v105[-1].Description + 1);
  v104(&v4[v9], v105);
  v10 = v6[9];
  v103 = type metadata accessor for AssetService();
  v102 = *(v103[-1].Description + 1);
  v102(&v4[v10], v103);
  v11 = v6[10];
  v101 = type metadata accessor for AwardsService();
  v100 = *(v101[-1].Description + 1);
  v100(&v4[v11], v101);
  v12 = v6[11];
  v99 = type metadata accessor for BookmarkService();
  v98 = *(v99[-1].Description + 1);
  v98(&v4[v12], v99);
  v13 = v6[12];
  v97 = type metadata accessor for CatalogService();
  v96 = *(v97[-1].Description + 1);
  v96(&v4[v13], v97);
  v14 = v6[13];
  v95 = type metadata accessor for ConfigurationService();
  v94 = *(v95[-1].Description + 1);
  v94(&v4[v14], v95);
  v15 = v6[14];
  v93 = type metadata accessor for ContentAvailabilityService();
  v92 = *(v93[-1].Description + 1);
  v92(&v4[v15], v93);
  v16 = v6[15];
  v91 = type metadata accessor for EngagementService();
  v90 = *(v91[-1].Description + 1);
  v90(&v4[v16], v91);
  v17 = v6[16];
  v89 = type metadata accessor for HealthDataService();
  v88 = *(v89[-1].Description + 1);
  v88(&v4[v17], v89);
  v18 = v6[17];
  v87 = type metadata accessor for InteropService();
  v86 = *(v87[-1].Description + 1);
  v86(&v4[v18], v87);
  v19 = v6[18];
  v85 = type metadata accessor for LocalizationService();
  v84 = *(v85[-1].Description + 1);
  v84(&v4[v19], v85);
  v20 = v6[19];
  v83 = type metadata accessor for MarketingService();
  v82 = *(v83[-1].Description + 1);
  v82(&v4[v20], v83);
  v21 = v6[20];
  v81 = type metadata accessor for MetricService();
  v80 = *(v81[-1].Description + 1);
  v80(&v4[v21], v81);
  v22 = v6[21];
  v79 = type metadata accessor for PersonalizationService();
  v78 = *(v79[-1].Description + 1);
  v78(&v4[v22], v79);
  v23 = v6[22];
  v77 = type metadata accessor for PlayerService();
  v76 = *(v77[-1].Description + 1);
  v76(&v4[v23], v77);
  v24 = v6[23];
  v75 = type metadata accessor for PrivacyPreferenceService();
  v74 = *(v75[-1].Description + 1);
  v74(&v4[v24], v75);
  v25 = v6[24];
  v73 = type metadata accessor for RecommendationService();
  v72 = *(v73[-1].Description + 1);
  v72(&v4[v25], v73);
  v26 = v6[25];
  v71 = type metadata accessor for RemoteBrowsingService();
  v70 = *(v71[-1].Description + 1);
  v70(&v4[v26], v71);
  v27 = v6[26];
  v69 = type metadata accessor for SearchService();
  v68 = *(v69[-1].Description + 1);
  v68(&v4[v27], v69);
  v28 = v6[27];
  v67 = type metadata accessor for ServiceSubscriptionService();
  v66 = *(v67[-1].Description + 1);
  v66(&v4[v28], v67);
  v29 = v6[28];
  v60 = type metadata accessor for SessionService();
  v65 = *(v60[-1].Description + 1);
  v65(&v4[v29], v60);
  v30 = v6[29];
  v31 = type metadata accessor for SharePlayService();
  v64 = *(v31[-1].Description + 1);
  v64(&v4[v30], v31);
  v32 = v6[30];
  v33 = type metadata accessor for SiriService();
  v63 = *(v33[-1].Description + 1);
  v63(&v4[v32], v33);
  v34 = v6[31];
  v35 = type metadata accessor for SyncService();
  v62 = *(v35[-1].Description + 1);
  v62(&v4[v34], v35);
  v36 = &v4[v6[32]];
  v37 = *(v36 + 1);

  v38 = *(v36 + 3);

  v39 = *(v36 + 5);

  v40 = v6[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v61 = *(QueueService[-1].Description + 1);
  v61(&v4[v40], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v4[v6[34]]);
  v42 = *&v4[v6[35]];

  v43 = v6[36];
  v44 = type metadata accessor for WorkoutPlanService();
  v59 = *(v44[-1].Description + 1);
  v59(&v4[v43], v44);
  v45 = *(v108 + v113[6]);

  v46 = (v108 + v113[7]);
  v47 = *v46;

  v48 = v46[1];

  v49 = v46 + *(type metadata accessor for AppDataItemResolver() + 24);
  v50 = *v49;
  swift_unknownObjectRelease();
  v109(&v49[v6[6]], v110);
  v106(&v49[v6[7]], v107);
  v104(&v49[v6[8]], v105);
  v102(&v49[v6[9]], v103);
  v100(&v49[v6[10]], v101);
  v98(&v49[v6[11]], v99);
  v96(&v49[v6[12]], v97);
  v94(&v49[v6[13]], v95);
  v92(&v49[v6[14]], v93);
  v90(&v49[v6[15]], v91);
  v88(&v49[v6[16]], v89);
  v86(&v49[v6[17]], v87);
  v84(&v49[v6[18]], v85);
  v82(&v49[v6[19]], v83);
  v80(&v49[v6[20]], v81);
  v78(&v49[v6[21]], v79);
  v76(&v49[v6[22]], v77);
  v74(&v49[v6[23]], v75);
  v72(&v49[v6[24]], v73);
  v70(&v49[v6[25]], v71);
  v68(&v49[v6[26]], v69);
  v66(&v49[v6[27]], v67);
  v65(&v49[v6[28]], v60);
  v64(&v49[v6[29]], v31);
  v63(&v49[v6[30]], v33);
  v62(&v49[v6[31]], v35);
  v51 = &v49[v6[32]];
  v52 = *(v51 + 1);

  v53 = *(v51 + 3);

  v54 = *(v51 + 5);

  v61(&v49[v6[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v49[v6[34]]);
  v55 = *&v49[v6[35]];

  v59(&v49[v6[36]], v44);
  v56 = *(v108 + v113[8]);
  swift_unknownObjectRelease();
  if (*(v108 + v113[9] + 8) >= 0xC)
  {
  }

  v57 = (v108 + v113[10]);
  if (v57[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v57);
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_1()
{
  v111 = type metadata accessor for AppComposer();
  v110 = *(*(v111 - 1) + 80);
  v109 = *(*(v111 - 1) + 64);
  v106 = (v0 + ((v110 + 16) & ~v110));
  v1 = *v106;

  v2 = v106 + v111[5];
  v3 = *v2;
  swift_unknownObjectRelease();
  v4 = type metadata accessor for AppEnvironment();
  v5 = v4[6];
  v108 = type metadata accessor for AccountService();
  v107 = *(v108[-1].Description + 1);
  v107(&v2[v5], v108);
  v6 = v4[7];
  v105 = type metadata accessor for AppStateService();
  v104 = *(v105[-1].Description + 1);
  v104(&v2[v6], v105);
  v7 = v4[8];
  v103 = type metadata accessor for ArchivedSessionService();
  v102 = *(v103[-1].Description + 1);
  v102(&v2[v7], v103);
  v8 = v4[9];
  v101 = type metadata accessor for AssetService();
  v100 = *(v101[-1].Description + 1);
  v100(&v2[v8], v101);
  v9 = v4[10];
  v99 = type metadata accessor for AwardsService();
  v98 = *(v99[-1].Description + 1);
  v98(&v2[v9], v99);
  v10 = v4[11];
  v97 = type metadata accessor for BookmarkService();
  v96 = *(v97[-1].Description + 1);
  v96(&v2[v10], v97);
  v11 = v4[12];
  v95 = type metadata accessor for CatalogService();
  v94 = *(v95[-1].Description + 1);
  v94(&v2[v11], v95);
  v12 = v4[13];
  v93 = type metadata accessor for ConfigurationService();
  v92 = *(v93[-1].Description + 1);
  v92(&v2[v12], v93);
  v13 = v4[14];
  v91 = type metadata accessor for ContentAvailabilityService();
  v90 = *(v91[-1].Description + 1);
  v90(&v2[v13], v91);
  v14 = v4[15];
  v89 = type metadata accessor for EngagementService();
  v88 = *(v89[-1].Description + 1);
  v88(&v2[v14], v89);
  v15 = v4[16];
  v87 = type metadata accessor for HealthDataService();
  v86 = *(v87[-1].Description + 1);
  v86(&v2[v15], v87);
  v16 = v4[17];
  v85 = type metadata accessor for InteropService();
  v84 = *(v85[-1].Description + 1);
  v84(&v2[v16], v85);
  v17 = v4[18];
  v83 = type metadata accessor for LocalizationService();
  v82 = *(v83[-1].Description + 1);
  v82(&v2[v17], v83);
  v18 = v4[19];
  v81 = type metadata accessor for MarketingService();
  v80 = *(v81[-1].Description + 1);
  v80(&v2[v18], v81);
  v19 = v4[20];
  v79 = type metadata accessor for MetricService();
  v78 = *(v79[-1].Description + 1);
  v78(&v2[v19], v79);
  v20 = v4[21];
  v77 = type metadata accessor for PersonalizationService();
  v76 = *(v77[-1].Description + 1);
  v76(&v2[v20], v77);
  v21 = v4[22];
  v75 = type metadata accessor for PlayerService();
  v74 = *(v75[-1].Description + 1);
  v74(&v2[v21], v75);
  v22 = v4[23];
  v73 = type metadata accessor for PrivacyPreferenceService();
  v72 = *(v73[-1].Description + 1);
  v72(&v2[v22], v73);
  v23 = v4[24];
  v71 = type metadata accessor for RecommendationService();
  v70 = *(v71[-1].Description + 1);
  v70(&v2[v23], v71);
  v24 = v4[25];
  v69 = type metadata accessor for RemoteBrowsingService();
  v68 = *(v69[-1].Description + 1);
  v68(&v2[v24], v69);
  v25 = v4[26];
  v67 = type metadata accessor for SearchService();
  v66 = *(v67[-1].Description + 1);
  v66(&v2[v25], v67);
  v26 = v4[27];
  v65 = type metadata accessor for ServiceSubscriptionService();
  v64 = *(v65[-1].Description + 1);
  v64(&v2[v26], v65);
  v27 = v4[28];
  v58 = type metadata accessor for SessionService();
  v63 = *(v58[-1].Description + 1);
  v63(&v2[v27], v58);
  v28 = v4[29];
  v29 = type metadata accessor for SharePlayService();
  v62 = *(v29[-1].Description + 1);
  v62(&v2[v28], v29);
  v30 = v4[30];
  v31 = type metadata accessor for SiriService();
  v61 = *(v31[-1].Description + 1);
  v61(&v2[v30], v31);
  v32 = v4[31];
  v33 = type metadata accessor for SyncService();
  v60 = *(v33[-1].Description + 1);
  v60(&v2[v32], v33);
  v34 = &v2[v4[32]];
  v35 = *(v34 + 1);

  v36 = *(v34 + 3);

  v37 = *(v34 + 5);

  v38 = v4[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v59 = *(QueueService[-1].Description + 1);
  v59(&v2[v38], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v2[v4[34]]);
  v40 = *&v2[v4[35]];

  v41 = v4[36];
  v42 = type metadata accessor for WorkoutPlanService();
  v57 = *(v42[-1].Description + 1);
  v57(&v2[v41], v42);
  v43 = *(v106 + v111[6]);

  v44 = (v106 + v111[7]);
  v45 = *v44;

  v46 = v44[1];

  v47 = v44 + *(type metadata accessor for AppDataItemResolver() + 24);
  v48 = *v47;
  swift_unknownObjectRelease();
  v107(&v47[v4[6]], v108);
  v104(&v47[v4[7]], v105);
  v102(&v47[v4[8]], v103);
  v100(&v47[v4[9]], v101);
  v98(&v47[v4[10]], v99);
  v96(&v47[v4[11]], v97);
  v94(&v47[v4[12]], v95);
  v92(&v47[v4[13]], v93);
  v90(&v47[v4[14]], v91);
  v88(&v47[v4[15]], v89);
  v86(&v47[v4[16]], v87);
  v84(&v47[v4[17]], v85);
  v82(&v47[v4[18]], v83);
  v80(&v47[v4[19]], v81);
  v78(&v47[v4[20]], v79);
  v76(&v47[v4[21]], v77);
  v74(&v47[v4[22]], v75);
  v72(&v47[v4[23]], v73);
  v70(&v47[v4[24]], v71);
  v68(&v47[v4[25]], v69);
  v66(&v47[v4[26]], v67);
  v64(&v47[v4[27]], v65);
  v63(&v47[v4[28]], v58);
  v62(&v47[v4[29]], v29);
  v61(&v47[v4[30]], v31);
  v60(&v47[v4[31]], v33);
  v49 = &v47[v4[32]];
  v50 = *(v49 + 1);

  v51 = *(v49 + 3);

  v52 = *(v49 + 5);

  v59(&v47[v4[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v47[v4[34]]);
  v53 = *&v47[v4[35]];

  v57(&v47[v4[36]], v42);
  v54 = *(v106 + v111[8]);
  swift_unknownObjectRelease();
  if (*(v106 + v111[9] + 8) >= 0xC)
  {
  }

  v55 = (v106 + v111[10]);
  if (v55[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v55);
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_57Tm()
{
  v120 = type metadata accessor for AppComposer();
  v118 = *(*(v120 - 1) + 80);
  v116 = *(*(v120 - 1) + 64);
  v117 = (v118 + 16) & ~v118;
  v119 = v0;
  v113 = v0 + v117;
  v1 = *(v0 + v117);

  v2 = (v0 + v117 + v120[5]);
  v3 = *v2;
  swift_unknownObjectRelease();
  v4 = type metadata accessor for AppEnvironment();
  v5 = v4[6];
  v115 = type metadata accessor for AccountService();
  v114 = *(v115[-1].Description + 1);
  v114(&v2[v5], v115);
  v6 = v4[7];
  v112 = type metadata accessor for AppStateService();
  v111 = *(v112[-1].Description + 1);
  v111(&v2[v6], v112);
  v7 = v4[8];
  v110 = type metadata accessor for ArchivedSessionService();
  v109 = *(v110[-1].Description + 1);
  v109(&v2[v7], v110);
  v8 = v4[9];
  v108 = type metadata accessor for AssetService();
  v107 = *(v108[-1].Description + 1);
  v107(&v2[v8], v108);
  v9 = v4[10];
  v106 = type metadata accessor for AwardsService();
  v105 = *(v106[-1].Description + 1);
  v105(&v2[v9], v106);
  v10 = v4[11];
  v104 = type metadata accessor for BookmarkService();
  v103 = *(v104[-1].Description + 1);
  v103(&v2[v10], v104);
  v11 = v4[12];
  v102 = type metadata accessor for CatalogService();
  v101 = *(v102[-1].Description + 1);
  v101(&v2[v11], v102);
  v12 = v4[13];
  v100 = type metadata accessor for ConfigurationService();
  v99 = *(v100[-1].Description + 1);
  v99(&v2[v12], v100);
  v13 = v4[14];
  v98 = type metadata accessor for ContentAvailabilityService();
  v97 = *(v98[-1].Description + 1);
  v97(&v2[v13], v98);
  v14 = v4[15];
  v96 = type metadata accessor for EngagementService();
  v95 = *(v96[-1].Description + 1);
  v95(&v2[v14], v96);
  v15 = v4[16];
  v94 = type metadata accessor for HealthDataService();
  v93 = *(v94[-1].Description + 1);
  v93(&v2[v15], v94);
  v16 = v4[17];
  v92 = type metadata accessor for InteropService();
  v91 = *(v92[-1].Description + 1);
  v91(&v2[v16], v92);
  v17 = v4[18];
  v90 = type metadata accessor for LocalizationService();
  v89 = *(v90[-1].Description + 1);
  v89(&v2[v17], v90);
  v18 = v4[19];
  v88 = type metadata accessor for MarketingService();
  v87 = *(v88[-1].Description + 1);
  v87(&v2[v18], v88);
  v19 = v4[20];
  v86 = type metadata accessor for MetricService();
  v85 = *(v86[-1].Description + 1);
  v85(&v2[v19], v86);
  v20 = v4[21];
  v84 = type metadata accessor for PersonalizationService();
  v83 = *(v84[-1].Description + 1);
  v83(&v2[v20], v84);
  v21 = v4[22];
  v82 = type metadata accessor for PlayerService();
  v81 = *(v82[-1].Description + 1);
  v81(&v2[v21], v82);
  v22 = v4[23];
  v80 = type metadata accessor for PrivacyPreferenceService();
  v79 = *(v80[-1].Description + 1);
  v79(&v2[v22], v80);
  v23 = v4[24];
  v78 = type metadata accessor for RecommendationService();
  v77 = *(v78[-1].Description + 1);
  v77(&v2[v23], v78);
  v24 = v4[25];
  v76 = type metadata accessor for RemoteBrowsingService();
  v75 = *(v76[-1].Description + 1);
  v75(&v2[v24], v76);
  v25 = v4[26];
  v74 = type metadata accessor for SearchService();
  v73 = *(v74[-1].Description + 1);
  v73(&v2[v25], v74);
  v26 = v4[27];
  v72 = type metadata accessor for ServiceSubscriptionService();
  v71 = *(v72[-1].Description + 1);
  v71(&v2[v26], v72);
  v27 = v4[28];
  v65 = type metadata accessor for SessionService();
  v70 = *(v65[-1].Description + 1);
  v70(&v2[v27], v65);
  v28 = v4[29];
  v29 = type metadata accessor for SharePlayService();
  v69 = *(v29[-1].Description + 1);
  v69(&v2[v28], v29);
  v30 = v4[30];
  v31 = type metadata accessor for SiriService();
  v68 = *(v31[-1].Description + 1);
  v68(&v2[v30], v31);
  v32 = v4[31];
  v33 = type metadata accessor for SyncService();
  v67 = *(v33[-1].Description + 1);
  v67(&v2[v32], v33);
  v34 = &v2[v4[32]];
  v35 = *(v34 + 1);

  v36 = *(v34 + 3);

  v37 = *(v34 + 5);

  v38 = v4[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v66 = *(QueueService[-1].Description + 1);
  v66(&v2[v38], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v2[v4[34]]);
  v40 = *&v2[v4[35]];

  v41 = v4[36];
  v42 = type metadata accessor for WorkoutPlanService();
  v64 = *(v42[-1].Description + 1);
  v64(&v2[v41], v42);
  v43 = *(v113 + v120[6]);

  v44 = (v113 + v120[7]);
  v45 = *v44;

  v46 = v44[1];

  v47 = v44 + *(type metadata accessor for AppDataItemResolver() + 24);
  v48 = *v47;
  swift_unknownObjectRelease();
  v114(&v47[v4[6]], v115);
  v111(&v47[v4[7]], v112);
  v109(&v47[v4[8]], v110);
  v107(&v47[v4[9]], v108);
  v105(&v47[v4[10]], v106);
  v103(&v47[v4[11]], v104);
  v101(&v47[v4[12]], v102);
  v99(&v47[v4[13]], v100);
  v97(&v47[v4[14]], v98);
  v95(&v47[v4[15]], v96);
  v93(&v47[v4[16]], v94);
  v91(&v47[v4[17]], v92);
  v89(&v47[v4[18]], v90);
  v87(&v47[v4[19]], v88);
  v85(&v47[v4[20]], v86);
  v83(&v47[v4[21]], v84);
  v81(&v47[v4[22]], v82);
  v79(&v47[v4[23]], v80);
  v77(&v47[v4[24]], v78);
  v75(&v47[v4[25]], v76);
  v73(&v47[v4[26]], v74);
  v71(&v47[v4[27]], v72);
  v70(&v47[v4[28]], v65);
  v69(&v47[v4[29]], v29);
  v68(&v47[v4[30]], v31);
  v67(&v47[v4[31]], v33);
  v49 = &v47[v4[32]];
  v50 = *(v49 + 1);

  v51 = *(v49 + 3);

  v52 = *(v49 + 5);

  v66(&v47[v4[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v47[v4[34]]);
  v53 = *&v47[v4[35]];

  v64(&v47[v4[36]], v42);
  v54 = *(v113 + v120[8]);
  swift_unknownObjectRelease();
  if (*(v113 + v120[9] + 8) >= 0xCuLL)
  {
  }

  v55 = (v113 + v120[10]);
  if (v55[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v55);
  }

  v56 = (v116 + v117 + 7) & 0xFFFFFFFFFFFFFFF8;
  v57 = (v56 + 47) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1((v119 + v56));
  v58 = *(v119 + v57);
  swift_unknownObjectRelease();
  v59 = *(v119 + v57 + 24);

  v60 = *(v119 + v57 + 40);

  v61 = *(v119 + v57 + 56);

  v62 = *(v119 + v57 + 72);

  return swift_deallocObject();
}

uint64_t objectdestroy_25Tm()
{
  v119 = type metadata accessor for AppComposer();
  v117 = *(*(v119 - 1) + 80);
  v115 = *(*(v119 - 1) + 64);
  v116 = (v117 + 16) & ~v117;
  v118 = v0;
  v112 = v0 + v116;
  v1 = *(v0 + v116);

  v2 = (v0 + v116 + v119[5]);
  v3 = *v2;
  swift_unknownObjectRelease();
  v4 = type metadata accessor for AppEnvironment();
  v5 = v4[6];
  v114 = type metadata accessor for AccountService();
  v113 = *(v114[-1].Description + 1);
  v113(&v2[v5], v114);
  v6 = v4[7];
  v111 = type metadata accessor for AppStateService();
  v110 = *(v111[-1].Description + 1);
  v110(&v2[v6], v111);
  v7 = v4[8];
  v109 = type metadata accessor for ArchivedSessionService();
  v108 = *(v109[-1].Description + 1);
  v108(&v2[v7], v109);
  v8 = v4[9];
  v107 = type metadata accessor for AssetService();
  v106 = *(v107[-1].Description + 1);
  v106(&v2[v8], v107);
  v9 = v4[10];
  v105 = type metadata accessor for AwardsService();
  v104 = *(v105[-1].Description + 1);
  v104(&v2[v9], v105);
  v10 = v4[11];
  v103 = type metadata accessor for BookmarkService();
  v102 = *(v103[-1].Description + 1);
  v102(&v2[v10], v103);
  v11 = v4[12];
  v101 = type metadata accessor for CatalogService();
  v100 = *(v101[-1].Description + 1);
  v100(&v2[v11], v101);
  v12 = v4[13];
  v99 = type metadata accessor for ConfigurationService();
  v98 = *(v99[-1].Description + 1);
  v98(&v2[v12], v99);
  v13 = v4[14];
  v97 = type metadata accessor for ContentAvailabilityService();
  v96 = *(v97[-1].Description + 1);
  v96(&v2[v13], v97);
  v14 = v4[15];
  v95 = type metadata accessor for EngagementService();
  v94 = *(v95[-1].Description + 1);
  v94(&v2[v14], v95);
  v15 = v4[16];
  v93 = type metadata accessor for HealthDataService();
  v92 = *(v93[-1].Description + 1);
  v92(&v2[v15], v93);
  v16 = v4[17];
  v91 = type metadata accessor for InteropService();
  v90 = *(v91[-1].Description + 1);
  v90(&v2[v16], v91);
  v17 = v4[18];
  v89 = type metadata accessor for LocalizationService();
  v88 = *(v89[-1].Description + 1);
  v88(&v2[v17], v89);
  v18 = v4[19];
  v87 = type metadata accessor for MarketingService();
  v86 = *(v87[-1].Description + 1);
  v86(&v2[v18], v87);
  v19 = v4[20];
  v85 = type metadata accessor for MetricService();
  v84 = *(v85[-1].Description + 1);
  v84(&v2[v19], v85);
  v20 = v4[21];
  v83 = type metadata accessor for PersonalizationService();
  v82 = *(v83[-1].Description + 1);
  v82(&v2[v20], v83);
  v21 = v4[22];
  v81 = type metadata accessor for PlayerService();
  v80 = *(v81[-1].Description + 1);
  v80(&v2[v21], v81);
  v22 = v4[23];
  v79 = type metadata accessor for PrivacyPreferenceService();
  v78 = *(v79[-1].Description + 1);
  v78(&v2[v22], v79);
  v23 = v4[24];
  v77 = type metadata accessor for RecommendationService();
  v76 = *(v77[-1].Description + 1);
  v76(&v2[v23], v77);
  v24 = v4[25];
  v75 = type metadata accessor for RemoteBrowsingService();
  v74 = *(v75[-1].Description + 1);
  v74(&v2[v24], v75);
  v25 = v4[26];
  v73 = type metadata accessor for SearchService();
  v72 = *(v73[-1].Description + 1);
  v72(&v2[v25], v73);
  v26 = v4[27];
  v71 = type metadata accessor for ServiceSubscriptionService();
  v70 = *(v71[-1].Description + 1);
  v70(&v2[v26], v71);
  v27 = v4[28];
  v64 = type metadata accessor for SessionService();
  v69 = *(v64[-1].Description + 1);
  v69(&v2[v27], v64);
  v28 = v4[29];
  v29 = type metadata accessor for SharePlayService();
  v68 = *(v29[-1].Description + 1);
  v68(&v2[v28], v29);
  v30 = v4[30];
  v31 = type metadata accessor for SiriService();
  v67 = *(v31[-1].Description + 1);
  v67(&v2[v30], v31);
  v32 = v4[31];
  v33 = type metadata accessor for SyncService();
  v66 = *(v33[-1].Description + 1);
  v66(&v2[v32], v33);
  v34 = &v2[v4[32]];
  v35 = *(v34 + 1);

  v36 = *(v34 + 3);

  v37 = *(v34 + 5);

  v38 = v4[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v65 = *(QueueService[-1].Description + 1);
  v65(&v2[v38], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v2[v4[34]]);
  v40 = *&v2[v4[35]];

  v41 = v4[36];
  v42 = type metadata accessor for WorkoutPlanService();
  v63 = *(v42[-1].Description + 1);
  v63(&v2[v41], v42);
  v43 = *(v112 + v119[6]);

  v44 = (v112 + v119[7]);
  v45 = *v44;

  v46 = v44[1];

  v47 = v44 + *(type metadata accessor for AppDataItemResolver() + 24);
  v48 = *v47;
  swift_unknownObjectRelease();
  v113(&v47[v4[6]], v114);
  v110(&v47[v4[7]], v111);
  v108(&v47[v4[8]], v109);
  v106(&v47[v4[9]], v107);
  v104(&v47[v4[10]], v105);
  v102(&v47[v4[11]], v103);
  v100(&v47[v4[12]], v101);
  v98(&v47[v4[13]], v99);
  v96(&v47[v4[14]], v97);
  v94(&v47[v4[15]], v95);
  v92(&v47[v4[16]], v93);
  v90(&v47[v4[17]], v91);
  v88(&v47[v4[18]], v89);
  v86(&v47[v4[19]], v87);
  v84(&v47[v4[20]], v85);
  v82(&v47[v4[21]], v83);
  v80(&v47[v4[22]], v81);
  v78(&v47[v4[23]], v79);
  v76(&v47[v4[24]], v77);
  v74(&v47[v4[25]], v75);
  v72(&v47[v4[26]], v73);
  v70(&v47[v4[27]], v71);
  v69(&v47[v4[28]], v64);
  v68(&v47[v4[29]], v29);
  v67(&v47[v4[30]], v31);
  v66(&v47[v4[31]], v33);
  v49 = &v47[v4[32]];
  v50 = *(v49 + 1);

  v51 = *(v49 + 3);

  v52 = *(v49 + 5);

  v65(&v47[v4[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v47[v4[34]]);
  v53 = *&v47[v4[35]];

  v63(&v47[v4[36]], v42);
  v54 = *(v112 + v119[8]);
  swift_unknownObjectRelease();
  if (*(v112 + v119[9] + 8) >= 0xCuLL)
  {
  }

  v55 = (v112 + v119[10]);
  if (v55[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v55);
  }

  v56 = (v118 + ((v115 + v116 + 7) & 0xFFFFFFFFFFFFFFF8));
  v57 = *v56;
  swift_unknownObjectRelease();
  v58 = v56[3];

  v59 = v56[5];

  v60 = v56[7];

  v61 = v56[9];

  return swift_deallocObject();
}

uint64_t objectdestroy_3Tm()
{
  v111 = type metadata accessor for AppComposer();
  v110 = *(*(v111 - 1) + 80);
  v109 = *(*(v111 - 1) + 64);
  v106 = (v0 + ((v110 + 16) & ~v110));
  v1 = *v106;

  v2 = v106 + v111[5];
  v3 = *v2;
  swift_unknownObjectRelease();
  v4 = type metadata accessor for AppEnvironment();
  v5 = v4[6];
  v108 = type metadata accessor for AccountService();
  v107 = *(v108[-1].Description + 1);
  v107(&v2[v5], v108);
  v6 = v4[7];
  v105 = type metadata accessor for AppStateService();
  v104 = *(v105[-1].Description + 1);
  v104(&v2[v6], v105);
  v7 = v4[8];
  v103 = type metadata accessor for ArchivedSessionService();
  v102 = *(v103[-1].Description + 1);
  v102(&v2[v7], v103);
  v8 = v4[9];
  v101 = type metadata accessor for AssetService();
  v100 = *(v101[-1].Description + 1);
  v100(&v2[v8], v101);
  v9 = v4[10];
  v99 = type metadata accessor for AwardsService();
  v98 = *(v99[-1].Description + 1);
  v98(&v2[v9], v99);
  v10 = v4[11];
  v97 = type metadata accessor for BookmarkService();
  v96 = *(v97[-1].Description + 1);
  v96(&v2[v10], v97);
  v11 = v4[12];
  v95 = type metadata accessor for CatalogService();
  v94 = *(v95[-1].Description + 1);
  v94(&v2[v11], v95);
  v12 = v4[13];
  v93 = type metadata accessor for ConfigurationService();
  v92 = *(v93[-1].Description + 1);
  v92(&v2[v12], v93);
  v13 = v4[14];
  v91 = type metadata accessor for ContentAvailabilityService();
  v90 = *(v91[-1].Description + 1);
  v90(&v2[v13], v91);
  v14 = v4[15];
  v89 = type metadata accessor for EngagementService();
  v88 = *(v89[-1].Description + 1);
  v88(&v2[v14], v89);
  v15 = v4[16];
  v87 = type metadata accessor for HealthDataService();
  v86 = *(v87[-1].Description + 1);
  v86(&v2[v15], v87);
  v16 = v4[17];
  v85 = type metadata accessor for InteropService();
  v84 = *(v85[-1].Description + 1);
  v84(&v2[v16], v85);
  v17 = v4[18];
  v83 = type metadata accessor for LocalizationService();
  v82 = *(v83[-1].Description + 1);
  v82(&v2[v17], v83);
  v18 = v4[19];
  v81 = type metadata accessor for MarketingService();
  v80 = *(v81[-1].Description + 1);
  v80(&v2[v18], v81);
  v19 = v4[20];
  v79 = type metadata accessor for MetricService();
  v78 = *(v79[-1].Description + 1);
  v78(&v2[v19], v79);
  v20 = v4[21];
  v77 = type metadata accessor for PersonalizationService();
  v76 = *(v77[-1].Description + 1);
  v76(&v2[v20], v77);
  v21 = v4[22];
  v75 = type metadata accessor for PlayerService();
  v74 = *(v75[-1].Description + 1);
  v74(&v2[v21], v75);
  v22 = v4[23];
  v73 = type metadata accessor for PrivacyPreferenceService();
  v72 = *(v73[-1].Description + 1);
  v72(&v2[v22], v73);
  v23 = v4[24];
  v71 = type metadata accessor for RecommendationService();
  v70 = *(v71[-1].Description + 1);
  v70(&v2[v23], v71);
  v24 = v4[25];
  v69 = type metadata accessor for RemoteBrowsingService();
  v68 = *(v69[-1].Description + 1);
  v68(&v2[v24], v69);
  v25 = v4[26];
  v67 = type metadata accessor for SearchService();
  v66 = *(v67[-1].Description + 1);
  v66(&v2[v25], v67);
  v26 = v4[27];
  v65 = type metadata accessor for ServiceSubscriptionService();
  v64 = *(v65[-1].Description + 1);
  v64(&v2[v26], v65);
  v27 = v4[28];
  v58 = type metadata accessor for SessionService();
  v63 = *(v58[-1].Description + 1);
  v63(&v2[v27], v58);
  v28 = v4[29];
  v29 = type metadata accessor for SharePlayService();
  v62 = *(v29[-1].Description + 1);
  v62(&v2[v28], v29);
  v30 = v4[30];
  v31 = type metadata accessor for SiriService();
  v61 = *(v31[-1].Description + 1);
  v61(&v2[v30], v31);
  v32 = v4[31];
  v33 = type metadata accessor for SyncService();
  v60 = *(v33[-1].Description + 1);
  v60(&v2[v32], v33);
  v34 = &v2[v4[32]];
  v35 = *(v34 + 1);

  v36 = *(v34 + 3);

  v37 = *(v34 + 5);

  v38 = v4[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v59 = *(QueueService[-1].Description + 1);
  v59(&v2[v38], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v2[v4[34]]);
  v40 = *&v2[v4[35]];

  v41 = v4[36];
  v42 = type metadata accessor for WorkoutPlanService();
  v57 = *(v42[-1].Description + 1);
  v57(&v2[v41], v42);
  v43 = *(v106 + v111[6]);

  v44 = (v106 + v111[7]);
  v45 = *v44;

  v46 = v44[1];

  v47 = v44 + *(type metadata accessor for AppDataItemResolver() + 24);
  v48 = *v47;
  swift_unknownObjectRelease();
  v107(&v47[v4[6]], v108);
  v104(&v47[v4[7]], v105);
  v102(&v47[v4[8]], v103);
  v100(&v47[v4[9]], v101);
  v98(&v47[v4[10]], v99);
  v96(&v47[v4[11]], v97);
  v94(&v47[v4[12]], v95);
  v92(&v47[v4[13]], v93);
  v90(&v47[v4[14]], v91);
  v88(&v47[v4[15]], v89);
  v86(&v47[v4[16]], v87);
  v84(&v47[v4[17]], v85);
  v82(&v47[v4[18]], v83);
  v80(&v47[v4[19]], v81);
  v78(&v47[v4[20]], v79);
  v76(&v47[v4[21]], v77);
  v74(&v47[v4[22]], v75);
  v72(&v47[v4[23]], v73);
  v70(&v47[v4[24]], v71);
  v68(&v47[v4[25]], v69);
  v66(&v47[v4[26]], v67);
  v64(&v47[v4[27]], v65);
  v63(&v47[v4[28]], v58);
  v62(&v47[v4[29]], v29);
  v61(&v47[v4[30]], v31);
  v60(&v47[v4[31]], v33);
  v49 = &v47[v4[32]];
  v50 = *(v49 + 1);

  v51 = *(v49 + 3);

  v52 = *(v49 + 5);

  v59(&v47[v4[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v47[v4[34]]);
  v53 = *&v47[v4[35]];

  v57(&v47[v4[36]], v42);
  v54 = *(v106 + v111[8]);
  swift_unknownObjectRelease();
  if (*(v106 + v111[9] + 8) >= 0xC)
  {
  }

  v55 = (v106 + v111[10]);
  if (v55[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v55);
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_28Tm_0()
{
  v114 = type metadata accessor for AppComposer();
  v112 = *(*(v114 - 1) + 80);
  v110 = *(*(v114 - 1) + 64);
  v1 = *(v0 + 16);

  v113 = v0;
  v111 = (v112 + 24) & ~v112;
  v107 = v0 + v111;
  v2 = *(v0 + v111);

  v3 = (v0 + v111 + v114[5]);
  v4 = *v3;
  swift_unknownObjectRelease();
  v5 = type metadata accessor for AppEnvironment();
  v6 = v5[6];
  v109 = type metadata accessor for AccountService();
  v108 = *(v109[-1].Description + 1);
  v108(&v3[v6], v109);
  v7 = v5[7];
  v106 = type metadata accessor for AppStateService();
  v105 = *(v106[-1].Description + 1);
  v105(&v3[v7], v106);
  v8 = v5[8];
  v104 = type metadata accessor for ArchivedSessionService();
  v103 = *(v104[-1].Description + 1);
  v103(&v3[v8], v104);
  v9 = v5[9];
  v102 = type metadata accessor for AssetService();
  v101 = *(v102[-1].Description + 1);
  v101(&v3[v9], v102);
  v10 = v5[10];
  v100 = type metadata accessor for AwardsService();
  v99 = *(v100[-1].Description + 1);
  v99(&v3[v10], v100);
  v11 = v5[11];
  v98 = type metadata accessor for BookmarkService();
  v97 = *(v98[-1].Description + 1);
  v97(&v3[v11], v98);
  v12 = v5[12];
  v96 = type metadata accessor for CatalogService();
  v95 = *(v96[-1].Description + 1);
  v95(&v3[v12], v96);
  v13 = v5[13];
  v94 = type metadata accessor for ConfigurationService();
  v93 = *(v94[-1].Description + 1);
  v93(&v3[v13], v94);
  v14 = v5[14];
  v92 = type metadata accessor for ContentAvailabilityService();
  v91 = *(v92[-1].Description + 1);
  v91(&v3[v14], v92);
  v15 = v5[15];
  v90 = type metadata accessor for EngagementService();
  v89 = *(v90[-1].Description + 1);
  v89(&v3[v15], v90);
  v16 = v5[16];
  v88 = type metadata accessor for HealthDataService();
  v87 = *(v88[-1].Description + 1);
  v87(&v3[v16], v88);
  v17 = v5[17];
  v86 = type metadata accessor for InteropService();
  v85 = *(v86[-1].Description + 1);
  v85(&v3[v17], v86);
  v18 = v5[18];
  v84 = type metadata accessor for LocalizationService();
  v83 = *(v84[-1].Description + 1);
  v83(&v3[v18], v84);
  v19 = v5[19];
  v82 = type metadata accessor for MarketingService();
  v81 = *(v82[-1].Description + 1);
  v81(&v3[v19], v82);
  v20 = v5[20];
  v80 = type metadata accessor for MetricService();
  v79 = *(v80[-1].Description + 1);
  v79(&v3[v20], v80);
  v21 = v5[21];
  v78 = type metadata accessor for PersonalizationService();
  v77 = *(v78[-1].Description + 1);
  v77(&v3[v21], v78);
  v22 = v5[22];
  v76 = type metadata accessor for PlayerService();
  v75 = *(v76[-1].Description + 1);
  v75(&v3[v22], v76);
  v23 = v5[23];
  v74 = type metadata accessor for PrivacyPreferenceService();
  v73 = *(v74[-1].Description + 1);
  v73(&v3[v23], v74);
  v24 = v5[24];
  v72 = type metadata accessor for RecommendationService();
  v71 = *(v72[-1].Description + 1);
  v71(&v3[v24], v72);
  v25 = v5[25];
  v70 = type metadata accessor for RemoteBrowsingService();
  v69 = *(v70[-1].Description + 1);
  v69(&v3[v25], v70);
  v26 = v5[26];
  v68 = type metadata accessor for SearchService();
  v67 = *(v68[-1].Description + 1);
  v67(&v3[v26], v68);
  v27 = v5[27];
  v66 = type metadata accessor for ServiceSubscriptionService();
  v65 = *(v66[-1].Description + 1);
  v65(&v3[v27], v66);
  v28 = v5[28];
  v59 = type metadata accessor for SessionService();
  v64 = *(v59[-1].Description + 1);
  v64(&v3[v28], v59);
  v29 = v5[29];
  v30 = type metadata accessor for SharePlayService();
  v63 = *(v30[-1].Description + 1);
  v63(&v3[v29], v30);
  v31 = v5[30];
  v32 = type metadata accessor for SiriService();
  v62 = *(v32[-1].Description + 1);
  v62(&v3[v31], v32);
  v33 = v5[31];
  v34 = type metadata accessor for SyncService();
  v61 = *(v34[-1].Description + 1);
  v61(&v3[v33], v34);
  v35 = &v3[v5[32]];
  v36 = *(v35 + 1);

  v37 = *(v35 + 3);

  v38 = *(v35 + 5);

  v39 = v5[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v60 = *(QueueService[-1].Description + 1);
  v60(&v3[v39], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v3[v5[34]]);
  v41 = *&v3[v5[35]];

  v42 = v5[36];
  v43 = type metadata accessor for WorkoutPlanService();
  v58 = *(v43[-1].Description + 1);
  v58(&v3[v42], v43);
  v44 = *(v107 + v114[6]);

  v45 = (v107 + v114[7]);
  v46 = *v45;

  v47 = v45[1];

  v48 = v45 + *(type metadata accessor for AppDataItemResolver() + 24);
  v49 = *v48;
  swift_unknownObjectRelease();
  v108(&v48[v5[6]], v109);
  v105(&v48[v5[7]], v106);
  v103(&v48[v5[8]], v104);
  v101(&v48[v5[9]], v102);
  v99(&v48[v5[10]], v100);
  v97(&v48[v5[11]], v98);
  v95(&v48[v5[12]], v96);
  v93(&v48[v5[13]], v94);
  v91(&v48[v5[14]], v92);
  v89(&v48[v5[15]], v90);
  v87(&v48[v5[16]], v88);
  v85(&v48[v5[17]], v86);
  v83(&v48[v5[18]], v84);
  v81(&v48[v5[19]], v82);
  v79(&v48[v5[20]], v80);
  v77(&v48[v5[21]], v78);
  v75(&v48[v5[22]], v76);
  v73(&v48[v5[23]], v74);
  v71(&v48[v5[24]], v72);
  v69(&v48[v5[25]], v70);
  v67(&v48[v5[26]], v68);
  v65(&v48[v5[27]], v66);
  v64(&v48[v5[28]], v59);
  v63(&v48[v5[29]], v30);
  v62(&v48[v5[30]], v32);
  v61(&v48[v5[31]], v34);
  v50 = &v48[v5[32]];
  v51 = *(v50 + 1);

  v52 = *(v50 + 3);

  v53 = *(v50 + 5);

  v60(&v48[v5[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v48[v5[34]]);
  v54 = *&v48[v5[35]];

  v58(&v48[v5[36]], v43);
  v55 = *(v107 + v114[8]);
  swift_unknownObjectRelease();
  if (*(v107 + v114[9] + 8) >= 0xCuLL)
  {
  }

  v56 = (v107 + v114[10]);
  if (v56[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v56);
  }

  __swift_destroy_boxed_opaque_existential_1((v113 + ((v110 + v111 + 7) & 0xFFFFFFFFFFFFFFF8)));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_2()
{
  v1 = sub_1E65E43E8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t objectdestroy_21Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return swift_deallocObject();
}

uint64_t objectdestroy_67Tm()
{
  v116 = type metadata accessor for AppComposer();
  v114 = *(*(v116 - 1) + 80);
  v112 = *(*(v116 - 1) + 64);
  v113 = (v114 + 16) & ~v114;
  v115 = v0;
  v109 = v0 + v113;
  v1 = *(v0 + v113);

  v2 = (v0 + v113 + v116[5]);
  v3 = *v2;
  swift_unknownObjectRelease();
  v4 = type metadata accessor for AppEnvironment();
  v5 = v4[6];
  v111 = type metadata accessor for AccountService();
  v110 = *(v111[-1].Description + 1);
  v110(&v2[v5], v111);
  v6 = v4[7];
  v108 = type metadata accessor for AppStateService();
  v107 = *(v108[-1].Description + 1);
  v107(&v2[v6], v108);
  v7 = v4[8];
  v106 = type metadata accessor for ArchivedSessionService();
  v105 = *(v106[-1].Description + 1);
  v105(&v2[v7], v106);
  v8 = v4[9];
  v104 = type metadata accessor for AssetService();
  v103 = *(v104[-1].Description + 1);
  v103(&v2[v8], v104);
  v9 = v4[10];
  v102 = type metadata accessor for AwardsService();
  v101 = *(v102[-1].Description + 1);
  v101(&v2[v9], v102);
  v10 = v4[11];
  v100 = type metadata accessor for BookmarkService();
  v99 = *(v100[-1].Description + 1);
  v99(&v2[v10], v100);
  v11 = v4[12];
  v98 = type metadata accessor for CatalogService();
  v97 = *(v98[-1].Description + 1);
  v97(&v2[v11], v98);
  v12 = v4[13];
  v96 = type metadata accessor for ConfigurationService();
  v95 = *(v96[-1].Description + 1);
  v95(&v2[v12], v96);
  v13 = v4[14];
  v94 = type metadata accessor for ContentAvailabilityService();
  v93 = *(v94[-1].Description + 1);
  v93(&v2[v13], v94);
  v14 = v4[15];
  v92 = type metadata accessor for EngagementService();
  v91 = *(v92[-1].Description + 1);
  v91(&v2[v14], v92);
  v15 = v4[16];
  v90 = type metadata accessor for HealthDataService();
  v89 = *(v90[-1].Description + 1);
  v89(&v2[v15], v90);
  v16 = v4[17];
  v88 = type metadata accessor for InteropService();
  v87 = *(v88[-1].Description + 1);
  v87(&v2[v16], v88);
  v17 = v4[18];
  v86 = type metadata accessor for LocalizationService();
  v85 = *(v86[-1].Description + 1);
  v85(&v2[v17], v86);
  v18 = v4[19];
  v84 = type metadata accessor for MarketingService();
  v83 = *(v84[-1].Description + 1);
  v83(&v2[v18], v84);
  v19 = v4[20];
  v82 = type metadata accessor for MetricService();
  v81 = *(v82[-1].Description + 1);
  v81(&v2[v19], v82);
  v20 = v4[21];
  v80 = type metadata accessor for PersonalizationService();
  v79 = *(v80[-1].Description + 1);
  v79(&v2[v20], v80);
  v21 = v4[22];
  v78 = type metadata accessor for PlayerService();
  v77 = *(v78[-1].Description + 1);
  v77(&v2[v21], v78);
  v22 = v4[23];
  v76 = type metadata accessor for PrivacyPreferenceService();
  v75 = *(v76[-1].Description + 1);
  v75(&v2[v22], v76);
  v23 = v4[24];
  v74 = type metadata accessor for RecommendationService();
  v73 = *(v74[-1].Description + 1);
  v73(&v2[v23], v74);
  v24 = v4[25];
  v72 = type metadata accessor for RemoteBrowsingService();
  v71 = *(v72[-1].Description + 1);
  v71(&v2[v24], v72);
  v25 = v4[26];
  v70 = type metadata accessor for SearchService();
  v69 = *(v70[-1].Description + 1);
  v69(&v2[v25], v70);
  v26 = v4[27];
  v68 = type metadata accessor for ServiceSubscriptionService();
  v67 = *(v68[-1].Description + 1);
  v67(&v2[v26], v68);
  v27 = v4[28];
  v61 = type metadata accessor for SessionService();
  v66 = *(v61[-1].Description + 1);
  v66(&v2[v27], v61);
  v28 = v4[29];
  v29 = type metadata accessor for SharePlayService();
  v65 = *(v29[-1].Description + 1);
  v65(&v2[v28], v29);
  v30 = v4[30];
  v31 = type metadata accessor for SiriService();
  v64 = *(v31[-1].Description + 1);
  v64(&v2[v30], v31);
  v32 = v4[31];
  v33 = type metadata accessor for SyncService();
  v63 = *(v33[-1].Description + 1);
  v63(&v2[v32], v33);
  v34 = &v2[v4[32]];
  v35 = *(v34 + 1);

  v36 = *(v34 + 3);

  v37 = *(v34 + 5);

  v38 = v4[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v62 = *(QueueService[-1].Description + 1);
  v62(&v2[v38], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v2[v4[34]]);
  v40 = *&v2[v4[35]];

  v41 = v4[36];
  v42 = type metadata accessor for WorkoutPlanService();
  v60 = *(v42[-1].Description + 1);
  v60(&v2[v41], v42);
  v43 = *(v109 + v116[6]);

  v44 = (v109 + v116[7]);
  v45 = *v44;

  v46 = v44[1];

  v47 = v44 + *(type metadata accessor for AppDataItemResolver() + 24);
  v48 = *v47;
  swift_unknownObjectRelease();
  v110(&v47[v4[6]], v111);
  v107(&v47[v4[7]], v108);
  v105(&v47[v4[8]], v106);
  v103(&v47[v4[9]], v104);
  v101(&v47[v4[10]], v102);
  v99(&v47[v4[11]], v100);
  v97(&v47[v4[12]], v98);
  v95(&v47[v4[13]], v96);
  v93(&v47[v4[14]], v94);
  v91(&v47[v4[15]], v92);
  v89(&v47[v4[16]], v90);
  v87(&v47[v4[17]], v88);
  v85(&v47[v4[18]], v86);
  v83(&v47[v4[19]], v84);
  v81(&v47[v4[20]], v82);
  v79(&v47[v4[21]], v80);
  v77(&v47[v4[22]], v78);
  v75(&v47[v4[23]], v76);
  v73(&v47[v4[24]], v74);
  v71(&v47[v4[25]], v72);
  v69(&v47[v4[26]], v70);
  v67(&v47[v4[27]], v68);
  v66(&v47[v4[28]], v61);
  v65(&v47[v4[29]], v29);
  v64(&v47[v4[30]], v31);
  v63(&v47[v4[31]], v33);
  v49 = &v47[v4[32]];
  v50 = *(v49 + 1);

  v51 = *(v49 + 3);

  v52 = *(v49 + 5);

  v62(&v47[v4[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v47[v4[34]]);
  v53 = *&v47[v4[35]];

  v60(&v47[v4[36]], v42);
  v54 = *(v109 + v116[8]);
  swift_unknownObjectRelease();
  if (*(v109 + v116[9] + 8) >= 0xCuLL)
  {
  }

  v55 = (v109 + v116[10]);
  if (v55[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v55);
  }

  v56 = (v113 + v112 + 55) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1((v115 + ((v113 + v112 + 7) & 0xFFFFFFFFFFFFFFF8)));
  v57 = *(v115 + v56 + 8);

  v58 = *(v115 + ((v56 + 23) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_3()
{
  v1 = sub_1E65DD0A8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v4);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_4()
{
  v1 = (type metadata accessor for AppEnvironment() - 8);
  v2 = *(*v1 + 64);
  v3 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));
  v4 = *v3;
  swift_unknownObjectRelease();
  v5 = v1[8];
  v6 = type metadata accessor for AccountService();
  (*(v6[-1].Description + 1))(&v3[v5], v6);
  v7 = v1[9];
  v8 = type metadata accessor for AppStateService();
  (*(v8[-1].Description + 1))(&v3[v7], v8);
  v9 = v1[10];
  v10 = type metadata accessor for ArchivedSessionService();
  (*(v10[-1].Description + 1))(&v3[v9], v10);
  v11 = v1[11];
  v12 = type metadata accessor for AssetService();
  (*(v12[-1].Description + 1))(&v3[v11], v12);
  v13 = v1[12];
  v14 = type metadata accessor for AwardsService();
  (*(v14[-1].Description + 1))(&v3[v13], v14);
  v15 = v1[13];
  v16 = type metadata accessor for BookmarkService();
  (*(v16[-1].Description + 1))(&v3[v15], v16);
  v17 = v1[14];
  v18 = type metadata accessor for CatalogService();
  (*(v18[-1].Description + 1))(&v3[v17], v18);
  v19 = v1[15];
  v20 = type metadata accessor for ConfigurationService();
  (*(v20[-1].Description + 1))(&v3[v19], v20);
  v21 = v1[16];
  v22 = type metadata accessor for ContentAvailabilityService();
  (*(v22[-1].Description + 1))(&v3[v21], v22);
  v23 = v1[17];
  v24 = type metadata accessor for EngagementService();
  (*(v24[-1].Description + 1))(&v3[v23], v24);
  v25 = v1[18];
  v26 = type metadata accessor for HealthDataService();
  (*(v26[-1].Description + 1))(&v3[v25], v26);
  v27 = v1[19];
  v28 = type metadata accessor for InteropService();
  (*(v28[-1].Description + 1))(&v3[v27], v28);
  v29 = v1[20];
  v30 = type metadata accessor for LocalizationService();
  (*(v30[-1].Description + 1))(&v3[v29], v30);
  v31 = v1[21];
  v32 = type metadata accessor for MarketingService();
  (*(v32[-1].Description + 1))(&v3[v31], v32);
  v33 = v1[22];
  v34 = type metadata accessor for MetricService();
  (*(v34[-1].Description + 1))(&v3[v33], v34);
  v35 = v1[23];
  v36 = type metadata accessor for PersonalizationService();
  (*(v36[-1].Description + 1))(&v3[v35], v36);
  v37 = v1[24];
  v38 = type metadata accessor for PlayerService();
  (*(v38[-1].Description + 1))(&v3[v37], v38);
  v39 = v1[25];
  v40 = type metadata accessor for PrivacyPreferenceService();
  (*(v40[-1].Description + 1))(&v3[v39], v40);
  v41 = v1[26];
  v42 = type metadata accessor for RecommendationService();
  (*(v42[-1].Description + 1))(&v3[v41], v42);
  v43 = v1[27];
  v44 = type metadata accessor for RemoteBrowsingService();
  (*(v44[-1].Description + 1))(&v3[v43], v44);
  v45 = v1[28];
  v46 = type metadata accessor for SearchService();
  (*(v46[-1].Description + 1))(&v3[v45], v46);
  v47 = v1[29];
  v48 = type metadata accessor for ServiceSubscriptionService();
  (*(v48[-1].Description + 1))(&v3[v47], v48);
  v49 = v1[30];
  v50 = type metadata accessor for SessionService();
  (*(v50[-1].Description + 1))(&v3[v49], v50);
  v51 = v1[31];
  v52 = type metadata accessor for SharePlayService();
  (*(v52[-1].Description + 1))(&v3[v51], v52);
  v53 = v1[32];
  v54 = type metadata accessor for SiriService();
  (*(v54[-1].Description + 1))(&v3[v53], v54);
  v55 = v1[33];
  v56 = type metadata accessor for SyncService();
  (*(v56[-1].Description + 1))(&v3[v55], v56);
  v57 = &v3[v1[34]];
  v58 = *(v57 + 1);

  v59 = *(v57 + 3);

  v60 = *(v57 + 5);

  v61 = v1[35];
  QueueService = type metadata accessor for UpNextQueueService();
  (*(QueueService[-1].Description + 1))(&v3[v61], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v3[v1[36]]);
  v63 = *&v3[v1[37]];

  v64 = v1[38];
  v65 = type metadata accessor for WorkoutPlanService();
  (*(v65[-1].Description + 1))(&v3[v64], v65);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_5()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  return swift_deallocObject();
}

uint64_t objectdestroyTm_6()
{
  v1 = type metadata accessor for CatalogService();
  Description = v1[-1].Description;
  v3 = (*(Description + 80) + 16) & ~*(Description + 80);
  v4 = Description[8];
  v5 = type metadata accessor for ArchivedSessionService();
  v6 = v5[-1].Description;
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = v6[8];
  (Description[1])(v0 + v3, v1);
  (v6[1])(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_7()
{
  v1 = sub_1E65DB748();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v115 = type metadata accessor for AppComposer();
  v114 = *(*(v115 - 1) + 80);
  v113 = *(*(v115 - 1) + 64);
  (*(v2 + 8))(v0 + v3, v1);
  v110 = (v0 + ((v3 + v4 + v114) & ~v114));
  v5 = *v110;

  v6 = v110 + v115[5];
  v7 = *v6;
  swift_unknownObjectRelease();
  v8 = type metadata accessor for AppEnvironment();
  v9 = v8[6];
  v112 = type metadata accessor for AccountService();
  v111 = *(v112[-1].Description + 1);
  v111(&v6[v9], v112);
  v10 = v8[7];
  v109 = type metadata accessor for AppStateService();
  v108 = *(v109[-1].Description + 1);
  v108(&v6[v10], v109);
  v11 = v8[8];
  v107 = type metadata accessor for ArchivedSessionService();
  v106 = *(v107[-1].Description + 1);
  v106(&v6[v11], v107);
  v12 = v8[9];
  v105 = type metadata accessor for AssetService();
  v104 = *(v105[-1].Description + 1);
  v104(&v6[v12], v105);
  v13 = v8[10];
  v103 = type metadata accessor for AwardsService();
  v102 = *(v103[-1].Description + 1);
  v102(&v6[v13], v103);
  v14 = v8[11];
  v101 = type metadata accessor for BookmarkService();
  v100 = *(v101[-1].Description + 1);
  v100(&v6[v14], v101);
  v15 = v8[12];
  v99 = type metadata accessor for CatalogService();
  v98 = *(v99[-1].Description + 1);
  v98(&v6[v15], v99);
  v16 = v8[13];
  v97 = type metadata accessor for ConfigurationService();
  v96 = *(v97[-1].Description + 1);
  v96(&v6[v16], v97);
  v17 = v8[14];
  v95 = type metadata accessor for ContentAvailabilityService();
  v94 = *(v95[-1].Description + 1);
  v94(&v6[v17], v95);
  v18 = v8[15];
  v93 = type metadata accessor for EngagementService();
  v92 = *(v93[-1].Description + 1);
  v92(&v6[v18], v93);
  v19 = v8[16];
  v91 = type metadata accessor for HealthDataService();
  v90 = *(v91[-1].Description + 1);
  v90(&v6[v19], v91);
  v20 = v8[17];
  v89 = type metadata accessor for InteropService();
  v88 = *(v89[-1].Description + 1);
  v88(&v6[v20], v89);
  v21 = v8[18];
  v87 = type metadata accessor for LocalizationService();
  v86 = *(v87[-1].Description + 1);
  v86(&v6[v21], v87);
  v22 = v8[19];
  v85 = type metadata accessor for MarketingService();
  v84 = *(v85[-1].Description + 1);
  v84(&v6[v22], v85);
  v23 = v8[20];
  v83 = type metadata accessor for MetricService();
  v82 = *(v83[-1].Description + 1);
  v82(&v6[v23], v83);
  v24 = v8[21];
  v81 = type metadata accessor for PersonalizationService();
  v80 = *(v81[-1].Description + 1);
  v80(&v6[v24], v81);
  v25 = v8[22];
  v79 = type metadata accessor for PlayerService();
  v78 = *(v79[-1].Description + 1);
  v78(&v6[v25], v79);
  v26 = v8[23];
  v77 = type metadata accessor for PrivacyPreferenceService();
  v76 = *(v77[-1].Description + 1);
  v76(&v6[v26], v77);
  v27 = v8[24];
  v75 = type metadata accessor for RecommendationService();
  v74 = *(v75[-1].Description + 1);
  v74(&v6[v27], v75);
  v28 = v8[25];
  v73 = type metadata accessor for RemoteBrowsingService();
  v72 = *(v73[-1].Description + 1);
  v72(&v6[v28], v73);
  v29 = v8[26];
  v71 = type metadata accessor for SearchService();
  v70 = *(v71[-1].Description + 1);
  v70(&v6[v29], v71);
  v30 = v8[27];
  v69 = type metadata accessor for ServiceSubscriptionService();
  v68 = *(v69[-1].Description + 1);
  v68(&v6[v30], v69);
  v31 = v8[28];
  v62 = type metadata accessor for SessionService();
  v67 = *(v62[-1].Description + 1);
  v67(&v6[v31], v62);
  v32 = v8[29];
  v33 = type metadata accessor for SharePlayService();
  v66 = *(v33[-1].Description + 1);
  v66(&v6[v32], v33);
  v34 = v8[30];
  v35 = type metadata accessor for SiriService();
  v65 = *(v35[-1].Description + 1);
  v65(&v6[v34], v35);
  v36 = v8[31];
  v37 = type metadata accessor for SyncService();
  v64 = *(v37[-1].Description + 1);
  v64(&v6[v36], v37);
  v38 = &v6[v8[32]];
  v39 = *(v38 + 1);

  v40 = *(v38 + 3);

  v41 = *(v38 + 5);

  v42 = v8[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v63 = *(QueueService[-1].Description + 1);
  v63(&v6[v42], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v6[v8[34]]);
  v44 = *&v6[v8[35]];

  v45 = v8[36];
  v46 = type metadata accessor for WorkoutPlanService();
  v61 = *(v46[-1].Description + 1);
  v61(&v6[v45], v46);
  v47 = *(v110 + v115[6]);

  v48 = (v110 + v115[7]);
  v49 = *v48;

  v50 = v48[1];

  v51 = v48 + *(type metadata accessor for AppDataItemResolver() + 24);
  v52 = *v51;
  swift_unknownObjectRelease();
  v111(&v51[v8[6]], v112);
  v108(&v51[v8[7]], v109);
  v106(&v51[v8[8]], v107);
  v104(&v51[v8[9]], v105);
  v102(&v51[v8[10]], v103);
  v100(&v51[v8[11]], v101);
  v98(&v51[v8[12]], v99);
  v96(&v51[v8[13]], v97);
  v94(&v51[v8[14]], v95);
  v92(&v51[v8[15]], v93);
  v90(&v51[v8[16]], v91);
  v88(&v51[v8[17]], v89);
  v86(&v51[v8[18]], v87);
  v84(&v51[v8[19]], v85);
  v82(&v51[v8[20]], v83);
  v80(&v51[v8[21]], v81);
  v78(&v51[v8[22]], v79);
  v76(&v51[v8[23]], v77);
  v74(&v51[v8[24]], v75);
  v72(&v51[v8[25]], v73);
  v70(&v51[v8[26]], v71);
  v68(&v51[v8[27]], v69);
  v67(&v51[v8[28]], v62);
  v66(&v51[v8[29]], v33);
  v65(&v51[v8[30]], v35);
  v64(&v51[v8[31]], v37);
  v53 = &v51[v8[32]];
  v54 = *(v53 + 1);

  v55 = *(v53 + 3);

  v56 = *(v53 + 5);

  v63(&v51[v8[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v51[v8[34]]);
  v57 = *&v51[v8[35]];

  v61(&v51[v8[36]], v46);
  v58 = *(v110 + v115[8]);
  swift_unknownObjectRelease();
  if (*(v110 + v115[9] + 8) >= 0xC)
  {
  }

  v59 = (v110 + v115[10]);
  if (v59[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v59);
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_8()
{
  v114 = type metadata accessor for AppComposer();
  v112 = *(*(v114 - 1) + 80);
  v110 = *(*(v114 - 1) + 64);
  v111 = (v112 + 16) & ~v112;
  v113 = v0;
  v107 = v0 + v111;
  v1 = *(v0 + v111);

  v2 = (v0 + v111 + v114[5]);
  v3 = *v2;
  swift_unknownObjectRelease();
  v4 = type metadata accessor for AppEnvironment();
  v5 = v4[6];
  v109 = type metadata accessor for AccountService();
  v108 = *(v109[-1].Description + 1);
  v108(&v2[v5], v109);
  v6 = v4[7];
  v106 = type metadata accessor for AppStateService();
  v105 = *(v106[-1].Description + 1);
  v105(&v2[v6], v106);
  v7 = v4[8];
  v104 = type metadata accessor for ArchivedSessionService();
  v103 = *(v104[-1].Description + 1);
  v103(&v2[v7], v104);
  v8 = v4[9];
  v102 = type metadata accessor for AssetService();
  v101 = *(v102[-1].Description + 1);
  v101(&v2[v8], v102);
  v9 = v4[10];
  v100 = type metadata accessor for AwardsService();
  v99 = *(v100[-1].Description + 1);
  v99(&v2[v9], v100);
  v10 = v4[11];
  v98 = type metadata accessor for BookmarkService();
  v97 = *(v98[-1].Description + 1);
  v97(&v2[v10], v98);
  v11 = v4[12];
  v96 = type metadata accessor for CatalogService();
  v95 = *(v96[-1].Description + 1);
  v95(&v2[v11], v96);
  v12 = v4[13];
  v94 = type metadata accessor for ConfigurationService();
  v93 = *(v94[-1].Description + 1);
  v93(&v2[v12], v94);
  v13 = v4[14];
  v92 = type metadata accessor for ContentAvailabilityService();
  v91 = *(v92[-1].Description + 1);
  v91(&v2[v13], v92);
  v14 = v4[15];
  v90 = type metadata accessor for EngagementService();
  v89 = *(v90[-1].Description + 1);
  v89(&v2[v14], v90);
  v15 = v4[16];
  v88 = type metadata accessor for HealthDataService();
  v87 = *(v88[-1].Description + 1);
  v87(&v2[v15], v88);
  v16 = v4[17];
  v86 = type metadata accessor for InteropService();
  v85 = *(v86[-1].Description + 1);
  v85(&v2[v16], v86);
  v17 = v4[18];
  v84 = type metadata accessor for LocalizationService();
  v83 = *(v84[-1].Description + 1);
  v83(&v2[v17], v84);
  v18 = v4[19];
  v82 = type metadata accessor for MarketingService();
  v81 = *(v82[-1].Description + 1);
  v81(&v2[v18], v82);
  v19 = v4[20];
  v80 = type metadata accessor for MetricService();
  v79 = *(v80[-1].Description + 1);
  v79(&v2[v19], v80);
  v20 = v4[21];
  v78 = type metadata accessor for PersonalizationService();
  v77 = *(v78[-1].Description + 1);
  v77(&v2[v20], v78);
  v21 = v4[22];
  v76 = type metadata accessor for PlayerService();
  v75 = *(v76[-1].Description + 1);
  v75(&v2[v21], v76);
  v22 = v4[23];
  v74 = type metadata accessor for PrivacyPreferenceService();
  v73 = *(v74[-1].Description + 1);
  v73(&v2[v22], v74);
  v23 = v4[24];
  v72 = type metadata accessor for RecommendationService();
  v71 = *(v72[-1].Description + 1);
  v71(&v2[v23], v72);
  v24 = v4[25];
  v70 = type metadata accessor for RemoteBrowsingService();
  v69 = *(v70[-1].Description + 1);
  v69(&v2[v24], v70);
  v25 = v4[26];
  v68 = type metadata accessor for SearchService();
  v67 = *(v68[-1].Description + 1);
  v67(&v2[v25], v68);
  v26 = v4[27];
  v66 = type metadata accessor for ServiceSubscriptionService();
  v65 = *(v66[-1].Description + 1);
  v65(&v2[v26], v66);
  v27 = v4[28];
  v59 = type metadata accessor for SessionService();
  v64 = *(v59[-1].Description + 1);
  v64(&v2[v27], v59);
  v28 = v4[29];
  v29 = type metadata accessor for SharePlayService();
  v63 = *(v29[-1].Description + 1);
  v63(&v2[v28], v29);
  v30 = v4[30];
  v31 = type metadata accessor for SiriService();
  v62 = *(v31[-1].Description + 1);
  v62(&v2[v30], v31);
  v32 = v4[31];
  v33 = type metadata accessor for SyncService();
  v61 = *(v33[-1].Description + 1);
  v61(&v2[v32], v33);
  v34 = &v2[v4[32]];
  v35 = *(v34 + 1);

  v36 = *(v34 + 3);

  v37 = *(v34 + 5);

  v38 = v4[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v60 = *(QueueService[-1].Description + 1);
  v60(&v2[v38], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v2[v4[34]]);
  v40 = *&v2[v4[35]];

  v41 = v4[36];
  v42 = type metadata accessor for WorkoutPlanService();
  v58 = *(v42[-1].Description + 1);
  v58(&v2[v41], v42);
  v43 = *(v107 + v114[6]);

  v44 = (v107 + v114[7]);
  v45 = *v44;

  v46 = v44[1];

  v47 = v44 + *(type metadata accessor for AppDataItemResolver() + 24);
  v48 = *v47;
  swift_unknownObjectRelease();
  v108(&v47[v4[6]], v109);
  v105(&v47[v4[7]], v106);
  v103(&v47[v4[8]], v104);
  v101(&v47[v4[9]], v102);
  v99(&v47[v4[10]], v100);
  v97(&v47[v4[11]], v98);
  v95(&v47[v4[12]], v96);
  v93(&v47[v4[13]], v94);
  v91(&v47[v4[14]], v92);
  v89(&v47[v4[15]], v90);
  v87(&v47[v4[16]], v88);
  v85(&v47[v4[17]], v86);
  v83(&v47[v4[18]], v84);
  v81(&v47[v4[19]], v82);
  v79(&v47[v4[20]], v80);
  v77(&v47[v4[21]], v78);
  v75(&v47[v4[22]], v76);
  v73(&v47[v4[23]], v74);
  v71(&v47[v4[24]], v72);
  v69(&v47[v4[25]], v70);
  v67(&v47[v4[26]], v68);
  v65(&v47[v4[27]], v66);
  v64(&v47[v4[28]], v59);
  v63(&v47[v4[29]], v29);
  v62(&v47[v4[30]], v31);
  v61(&v47[v4[31]], v33);
  v49 = &v47[v4[32]];
  v50 = *(v49 + 1);

  v51 = *(v49 + 3);

  v52 = *(v49 + 5);

  v60(&v47[v4[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v47[v4[34]]);
  v53 = *&v47[v4[35]];

  v58(&v47[v4[36]], v42);
  v54 = *(v107 + v114[8]);
  swift_unknownObjectRelease();
  if (*(v107 + v114[9] + 8) >= 0xCuLL)
  {
  }

  v55 = (v107 + v114[10]);
  if (v55[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v55);
  }

  v56 = *(v113 + ((v110 + v111 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_9()
{
  v1 = (type metadata accessor for AppEnvironment() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = v2 + *(*v1 + 64);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DB8, &qword_1E65F83D8);
  v5 = *(v4 - 8);
  v6 = (v3 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  v9 = (v0 + v2);
  v10 = *v9;
  swift_unknownObjectRelease();
  v11 = v1[8];
  v12 = type metadata accessor for AccountService();
  (*(v12[-1].Description + 1))(&v9[v11], v12);
  v13 = v1[9];
  v14 = type metadata accessor for AppStateService();
  (*(v14[-1].Description + 1))(&v9[v13], v14);
  v15 = v1[10];
  v16 = type metadata accessor for ArchivedSessionService();
  (*(v16[-1].Description + 1))(&v9[v15], v16);
  v17 = v1[11];
  v18 = type metadata accessor for AssetService();
  (*(v18[-1].Description + 1))(&v9[v17], v18);
  v19 = v1[12];
  v20 = type metadata accessor for AwardsService();
  (*(v20[-1].Description + 1))(&v9[v19], v20);
  v21 = v1[13];
  v22 = type metadata accessor for BookmarkService();
  (*(v22[-1].Description + 1))(&v9[v21], v22);
  v23 = v1[14];
  v24 = type metadata accessor for CatalogService();
  (*(v24[-1].Description + 1))(&v9[v23], v24);
  v25 = v1[15];
  v26 = type metadata accessor for ConfigurationService();
  (*(v26[-1].Description + 1))(&v9[v25], v26);
  v27 = v1[16];
  v28 = type metadata accessor for ContentAvailabilityService();
  (*(v28[-1].Description + 1))(&v9[v27], v28);
  v29 = v1[17];
  v30 = type metadata accessor for EngagementService();
  (*(v30[-1].Description + 1))(&v9[v29], v30);
  v31 = v1[18];
  v32 = type metadata accessor for HealthDataService();
  (*(v32[-1].Description + 1))(&v9[v31], v32);
  v33 = v1[19];
  v34 = type metadata accessor for InteropService();
  (*(v34[-1].Description + 1))(&v9[v33], v34);
  v35 = v1[20];
  v36 = type metadata accessor for LocalizationService();
  (*(v36[-1].Description + 1))(&v9[v35], v36);
  v37 = v1[21];
  v38 = type metadata accessor for MarketingService();
  (*(v38[-1].Description + 1))(&v9[v37], v38);
  v39 = v1[22];
  v40 = type metadata accessor for MetricService();
  (*(v40[-1].Description + 1))(&v9[v39], v40);
  v41 = v1[23];
  v42 = type metadata accessor for PersonalizationService();
  (*(v42[-1].Description + 1))(&v9[v41], v42);
  v43 = v1[24];
  v44 = type metadata accessor for PlayerService();
  (*(v44[-1].Description + 1))(&v9[v43], v44);
  v45 = v1[25];
  v46 = type metadata accessor for PrivacyPreferenceService();
  (*(v46[-1].Description + 1))(&v9[v45], v46);
  v47 = v1[26];
  v48 = type metadata accessor for RecommendationService();
  (*(v48[-1].Description + 1))(&v9[v47], v48);
  v49 = v1[27];
  v50 = type metadata accessor for RemoteBrowsingService();
  (*(v50[-1].Description + 1))(&v9[v49], v50);
  v51 = v1[28];
  v52 = type metadata accessor for SearchService();
  (*(v52[-1].Description + 1))(&v9[v51], v52);
  v53 = v1[29];
  v54 = type metadata accessor for ServiceSubscriptionService();
  (*(v54[-1].Description + 1))(&v9[v53], v54);
  v55 = v1[30];
  v56 = type metadata accessor for SessionService();
  (*(v56[-1].Description + 1))(&v9[v55], v56);
  v57 = v1[31];
  v58 = type metadata accessor for SharePlayService();
  (*(v58[-1].Description + 1))(&v9[v57], v58);
  v59 = v1[32];
  v60 = type metadata accessor for SiriService();
  (*(v60[-1].Description + 1))(&v9[v59], v60);
  v61 = v1[33];
  v62 = type metadata accessor for SyncService();
  (*(v62[-1].Description + 1))(&v9[v61], v62);
  v63 = &v9[v1[34]];
  v64 = *(v63 + 1);

  v65 = *(v63 + 3);

  v66 = *(v63 + 5);

  v67 = v1[35];
  QueueService = type metadata accessor for UpNextQueueService();
  (*(QueueService[-1].Description + 1))(&v9[v67], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v9[v1[36]]);
  v69 = *&v9[v1[37]];

  v70 = v1[38];
  v71 = type metadata accessor for WorkoutPlanService();
  (*(v71[-1].Description + 1))(&v9[v70], v71);
  (*(v5 + 8))(v0 + v6, v4);

  return swift_deallocObject();
}

uint64_t objectdestroy_149Tm()
{
  v118 = type metadata accessor for AppComposer();
  v116 = *(*(v118 - 1) + 80);
  v114 = *(*(v118 - 1) + 64);
  v1 = *(v0 + 24);

  v117 = v0;
  v115 = (v116 + 32) & ~v116;
  v111 = v0 + v115;
  v2 = *(v0 + v115);

  v3 = (v0 + v115 + v118[5]);
  v4 = *v3;
  swift_unknownObjectRelease();
  v5 = type metadata accessor for AppEnvironment();
  v6 = v5[6];
  v113 = type metadata accessor for AccountService();
  v112 = *(v113[-1].Description + 1);
  v112(&v3[v6], v113);
  v7 = v5[7];
  v110 = type metadata accessor for AppStateService();
  v109 = *(v110[-1].Description + 1);
  v109(&v3[v7], v110);
  v8 = v5[8];
  v108 = type metadata accessor for ArchivedSessionService();
  v107 = *(v108[-1].Description + 1);
  v107(&v3[v8], v108);
  v9 = v5[9];
  v106 = type metadata accessor for AssetService();
  v105 = *(v106[-1].Description + 1);
  v105(&v3[v9], v106);
  v10 = v5[10];
  v104 = type metadata accessor for AwardsService();
  v103 = *(v104[-1].Description + 1);
  v103(&v3[v10], v104);
  v11 = v5[11];
  v102 = type metadata accessor for BookmarkService();
  v101 = *(v102[-1].Description + 1);
  v101(&v3[v11], v102);
  v12 = v5[12];
  v100 = type metadata accessor for CatalogService();
  v99 = *(v100[-1].Description + 1);
  v99(&v3[v12], v100);
  v13 = v5[13];
  v98 = type metadata accessor for ConfigurationService();
  v97 = *(v98[-1].Description + 1);
  v97(&v3[v13], v98);
  v14 = v5[14];
  v96 = type metadata accessor for ContentAvailabilityService();
  v95 = *(v96[-1].Description + 1);
  v95(&v3[v14], v96);
  v15 = v5[15];
  v94 = type metadata accessor for EngagementService();
  v93 = *(v94[-1].Description + 1);
  v93(&v3[v15], v94);
  v16 = v5[16];
  v92 = type metadata accessor for HealthDataService();
  v91 = *(v92[-1].Description + 1);
  v91(&v3[v16], v92);
  v17 = v5[17];
  v90 = type metadata accessor for InteropService();
  v89 = *(v90[-1].Description + 1);
  v89(&v3[v17], v90);
  v18 = v5[18];
  v88 = type metadata accessor for LocalizationService();
  v87 = *(v88[-1].Description + 1);
  v87(&v3[v18], v88);
  v19 = v5[19];
  v86 = type metadata accessor for MarketingService();
  v85 = *(v86[-1].Description + 1);
  v85(&v3[v19], v86);
  v20 = v5[20];
  v84 = type metadata accessor for MetricService();
  v83 = *(v84[-1].Description + 1);
  v83(&v3[v20], v84);
  v21 = v5[21];
  v82 = type metadata accessor for PersonalizationService();
  v81 = *(v82[-1].Description + 1);
  v81(&v3[v21], v82);
  v22 = v5[22];
  v80 = type metadata accessor for PlayerService();
  v79 = *(v80[-1].Description + 1);
  v79(&v3[v22], v80);
  v23 = v5[23];
  v78 = type metadata accessor for PrivacyPreferenceService();
  v77 = *(v78[-1].Description + 1);
  v77(&v3[v23], v78);
  v24 = v5[24];
  v76 = type metadata accessor for RecommendationService();
  v75 = *(v76[-1].Description + 1);
  v75(&v3[v24], v76);
  v25 = v5[25];
  v74 = type metadata accessor for RemoteBrowsingService();
  v73 = *(v74[-1].Description + 1);
  v73(&v3[v25], v74);
  v26 = v5[26];
  v72 = type metadata accessor for SearchService();
  v71 = *(v72[-1].Description + 1);
  v71(&v3[v26], v72);
  v27 = v5[27];
  v70 = type metadata accessor for ServiceSubscriptionService();
  v69 = *(v70[-1].Description + 1);
  v69(&v3[v27], v70);
  v28 = v5[28];
  v63 = type metadata accessor for SessionService();
  v68 = *(v63[-1].Description + 1);
  v68(&v3[v28], v63);
  v29 = v5[29];
  v30 = type metadata accessor for SharePlayService();
  v67 = *(v30[-1].Description + 1);
  v67(&v3[v29], v30);
  v31 = v5[30];
  v32 = type metadata accessor for SiriService();
  v66 = *(v32[-1].Description + 1);
  v66(&v3[v31], v32);
  v33 = v5[31];
  v34 = type metadata accessor for SyncService();
  v65 = *(v34[-1].Description + 1);
  v65(&v3[v33], v34);
  v35 = &v3[v5[32]];
  v36 = *(v35 + 1);

  v37 = *(v35 + 3);

  v38 = *(v35 + 5);

  v39 = v5[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v64 = *(QueueService[-1].Description + 1);
  v64(&v3[v39], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v3[v5[34]]);
  v41 = *&v3[v5[35]];

  v42 = v5[36];
  v43 = type metadata accessor for WorkoutPlanService();
  v62 = *(v43[-1].Description + 1);
  v62(&v3[v42], v43);
  v44 = *(v111 + v118[6]);

  v45 = (v111 + v118[7]);
  v46 = *v45;

  v47 = v45[1];

  v48 = v45 + *(type metadata accessor for AppDataItemResolver() + 24);
  v49 = *v48;
  swift_unknownObjectRelease();
  v112(&v48[v5[6]], v113);
  v109(&v48[v5[7]], v110);
  v107(&v48[v5[8]], v108);
  v105(&v48[v5[9]], v106);
  v103(&v48[v5[10]], v104);
  v101(&v48[v5[11]], v102);
  v99(&v48[v5[12]], v100);
  v97(&v48[v5[13]], v98);
  v95(&v48[v5[14]], v96);
  v93(&v48[v5[15]], v94);
  v91(&v48[v5[16]], v92);
  v89(&v48[v5[17]], v90);
  v87(&v48[v5[18]], v88);
  v85(&v48[v5[19]], v86);
  v83(&v48[v5[20]], v84);
  v81(&v48[v5[21]], v82);
  v79(&v48[v5[22]], v80);
  v77(&v48[v5[23]], v78);
  v75(&v48[v5[24]], v76);
  v73(&v48[v5[25]], v74);
  v71(&v48[v5[26]], v72);
  v69(&v48[v5[27]], v70);
  v68(&v48[v5[28]], v63);
  v67(&v48[v5[29]], v30);
  v66(&v48[v5[30]], v32);
  v65(&v48[v5[31]], v34);
  v50 = &v48[v5[32]];
  v51 = *(v50 + 1);

  v52 = *(v50 + 3);

  v53 = *(v50 + 5);

  v64(&v48[v5[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v48[v5[34]]);
  v54 = *&v48[v5[35]];

  v62(&v48[v5[36]], v43);
  v55 = *(v111 + v118[8]);
  swift_unknownObjectRelease();
  if (*(v111 + v118[9] + 8) >= 0xCuLL)
  {
  }

  v56 = (v111 + v118[10]);
  if (v56[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v56);
  }

  v57 = (v115 + v114) & 0xFFFFFFFFFFFFFFF8;
  v58 = (v57 + 31) & 0xFFFFFFFFFFFFFFF8;
  v59 = *(v117 + v57 + 16);

  v60 = *(v117 + v58);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroy_359Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_10()
{
  v111 = type metadata accessor for AppComposer();
  v115 = *(*(v111 - 1) + 80);
  v114 = *(*(v111 - 1) + 64);
  v1 = v0[3];
  swift_unknownObjectRelease();
  v2 = v0[6];

  v3 = v0[8];

  v4 = v0[10];

  v5 = v0[12];

  v116 = (v0 + ((v115 + 104) & ~v115));
  v6 = *v116;

  v7 = v116 + v111[5];
  v8 = *v7;
  swift_unknownObjectRelease();
  v9 = type metadata accessor for AppEnvironment();
  v10 = v9[6];
  v113 = type metadata accessor for AccountService();
  v112 = *(v113[-1].Description + 1);
  v112(&v7[v10], v113);
  v11 = v9[7];
  v110 = type metadata accessor for AppStateService();
  v109 = *(v110[-1].Description + 1);
  v109(&v7[v11], v110);
  v12 = v9[8];
  v108 = type metadata accessor for ArchivedSessionService();
  v107 = *(v108[-1].Description + 1);
  v107(&v7[v12], v108);
  v13 = v9[9];
  v106 = type metadata accessor for AssetService();
  v105 = *(v106[-1].Description + 1);
  v105(&v7[v13], v106);
  v14 = v9[10];
  v104 = type metadata accessor for AwardsService();
  v103 = *(v104[-1].Description + 1);
  v103(&v7[v14], v104);
  v15 = v9[11];
  v102 = type metadata accessor for BookmarkService();
  v101 = *(v102[-1].Description + 1);
  v101(&v7[v15], v102);
  v16 = v9[12];
  v100 = type metadata accessor for CatalogService();
  v99 = *(v100[-1].Description + 1);
  v99(&v7[v16], v100);
  v17 = v9[13];
  v98 = type metadata accessor for ConfigurationService();
  v97 = *(v98[-1].Description + 1);
  v97(&v7[v17], v98);
  v18 = v9[14];
  v96 = type metadata accessor for ContentAvailabilityService();
  v95 = *(v96[-1].Description + 1);
  v95(&v7[v18], v96);
  v19 = v9[15];
  v94 = type metadata accessor for EngagementService();
  v93 = *(v94[-1].Description + 1);
  v93(&v7[v19], v94);
  v20 = v9[16];
  v92 = type metadata accessor for HealthDataService();
  v91 = *(v92[-1].Description + 1);
  v91(&v7[v20], v92);
  v21 = v9[17];
  v90 = type metadata accessor for InteropService();
  v89 = *(v90[-1].Description + 1);
  v89(&v7[v21], v90);
  v22 = v9[18];
  v88 = type metadata accessor for LocalizationService();
  v87 = *(v88[-1].Description + 1);
  v87(&v7[v22], v88);
  v23 = v9[19];
  v86 = type metadata accessor for MarketingService();
  v85 = *(v86[-1].Description + 1);
  v85(&v7[v23], v86);
  v24 = v9[20];
  v84 = type metadata accessor for MetricService();
  v83 = *(v84[-1].Description + 1);
  v83(&v7[v24], v84);
  v25 = v9[21];
  v82 = type metadata accessor for PersonalizationService();
  v81 = *(v82[-1].Description + 1);
  v81(&v7[v25], v82);
  v26 = v9[22];
  v80 = type metadata accessor for PlayerService();
  v79 = *(v80[-1].Description + 1);
  v79(&v7[v26], v80);
  v27 = v9[23];
  v78 = type metadata accessor for PrivacyPreferenceService();
  v77 = *(v78[-1].Description + 1);
  v77(&v7[v27], v78);
  v28 = v9[24];
  v76 = type metadata accessor for RecommendationService();
  v75 = *(v76[-1].Description + 1);
  v75(&v7[v28], v76);
  v29 = v9[25];
  v74 = type metadata accessor for RemoteBrowsingService();
  v73 = *(v74[-1].Description + 1);
  v73(&v7[v29], v74);
  v30 = v9[26];
  v72 = type metadata accessor for SearchService();
  v71 = *(v72[-1].Description + 1);
  v71(&v7[v30], v72);
  v31 = v9[27];
  v70 = type metadata accessor for ServiceSubscriptionService();
  v69 = *(v70[-1].Description + 1);
  v69(&v7[v31], v70);
  v32 = v9[28];
  v63 = type metadata accessor for SessionService();
  v68 = *(v63[-1].Description + 1);
  v68(&v7[v32], v63);
  v33 = v9[29];
  v34 = type metadata accessor for SharePlayService();
  v67 = *(v34[-1].Description + 1);
  v67(&v7[v33], v34);
  v35 = v9[30];
  v36 = type metadata accessor for SiriService();
  v66 = *(v36[-1].Description + 1);
  v66(&v7[v35], v36);
  v37 = v9[31];
  v38 = type metadata accessor for SyncService();
  v65 = *(v38[-1].Description + 1);
  v65(&v7[v37], v38);
  v39 = &v7[v9[32]];
  v40 = *(v39 + 1);

  v41 = *(v39 + 3);

  v42 = *(v39 + 5);

  v43 = v9[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v64 = *(QueueService[-1].Description + 1);
  v64(&v7[v43], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v7[v9[34]]);
  v45 = *&v7[v9[35]];

  v46 = v9[36];
  v47 = type metadata accessor for WorkoutPlanService();
  v62 = *(v47[-1].Description + 1);
  v62(&v7[v46], v47);
  v48 = *(v116 + v111[6]);

  v49 = (v116 + v111[7]);
  v50 = *v49;

  v51 = v49[1];

  v52 = v49 + *(type metadata accessor for AppDataItemResolver() + 24);
  v53 = *v52;
  swift_unknownObjectRelease();
  v112(&v52[v9[6]], v113);
  v109(&v52[v9[7]], v110);
  v107(&v52[v9[8]], v108);
  v105(&v52[v9[9]], v106);
  v103(&v52[v9[10]], v104);
  v101(&v52[v9[11]], v102);
  v99(&v52[v9[12]], v100);
  v97(&v52[v9[13]], v98);
  v95(&v52[v9[14]], v96);
  v93(&v52[v9[15]], v94);
  v91(&v52[v9[16]], v92);
  v89(&v52[v9[17]], v90);
  v87(&v52[v9[18]], v88);
  v85(&v52[v9[19]], v86);
  v83(&v52[v9[20]], v84);
  v81(&v52[v9[21]], v82);
  v79(&v52[v9[22]], v80);
  v77(&v52[v9[23]], v78);
  v75(&v52[v9[24]], v76);
  v73(&v52[v9[25]], v74);
  v71(&v52[v9[26]], v72);
  v69(&v52[v9[27]], v70);
  v68(&v52[v9[28]], v63);
  v67(&v52[v9[29]], v34);
  v66(&v52[v9[30]], v36);
  v65(&v52[v9[31]], v38);
  v54 = &v52[v9[32]];
  v55 = *(v54 + 1);

  v56 = *(v54 + 3);

  v57 = *(v54 + 5);

  v64(&v52[v9[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v52[v9[34]]);
  v58 = *&v52[v9[35]];

  v62(&v52[v9[36]], v47);
  v59 = *(v116 + v111[8]);
  swift_unknownObjectRelease();
  if (*(v116 + v111[9] + 8) >= 0xC)
  {
  }

  v60 = (v116 + v111[10]);
  if (v60[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v60);
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_11(void (*a1)(void, void))
{
  v118 = type metadata accessor for AppComposer();
  v115 = *(*(v118 - 1) + 80);
  v113 = *(*(v118 - 1) + 64);
  v2 = *(v1 + 16);
  swift_unknownObjectRelease();
  v117 = v1;
  v114 = (v115 + 32) & ~v115;
  v110 = v1 + v114;
  v3 = *(v1 + v114);

  v4 = (v1 + v114 + v118[5]);
  v5 = *v4;
  swift_unknownObjectRelease();
  v6 = type metadata accessor for AppEnvironment();
  v7 = v6[6];
  v112 = type metadata accessor for AccountService();
  v111 = *(v112[-1].Description + 1);
  v111(&v4[v7], v112);
  v8 = v6[7];
  v109 = type metadata accessor for AppStateService();
  v108 = *(v109[-1].Description + 1);
  v108(&v4[v8], v109);
  v9 = v6[8];
  v107 = type metadata accessor for ArchivedSessionService();
  v106 = *(v107[-1].Description + 1);
  v106(&v4[v9], v107);
  v10 = v6[9];
  v105 = type metadata accessor for AssetService();
  v104 = *(v105[-1].Description + 1);
  v104(&v4[v10], v105);
  v11 = v6[10];
  v103 = type metadata accessor for AwardsService();
  v102 = *(v103[-1].Description + 1);
  v102(&v4[v11], v103);
  v12 = v6[11];
  v101 = type metadata accessor for BookmarkService();
  v100 = *(v101[-1].Description + 1);
  v100(&v4[v12], v101);
  v13 = v6[12];
  v99 = type metadata accessor for CatalogService();
  v98 = *(v99[-1].Description + 1);
  v98(&v4[v13], v99);
  v14 = v6[13];
  v97 = type metadata accessor for ConfigurationService();
  v96 = *(v97[-1].Description + 1);
  v96(&v4[v14], v97);
  v15 = v6[14];
  v95 = type metadata accessor for ContentAvailabilityService();
  v94 = *(v95[-1].Description + 1);
  v94(&v4[v15], v95);
  v16 = v6[15];
  v93 = type metadata accessor for EngagementService();
  v92 = *(v93[-1].Description + 1);
  v92(&v4[v16], v93);
  v17 = v6[16];
  v91 = type metadata accessor for HealthDataService();
  v90 = *(v91[-1].Description + 1);
  v90(&v4[v17], v91);
  v18 = v6[17];
  v89 = type metadata accessor for InteropService();
  v88 = *(v89[-1].Description + 1);
  v88(&v4[v18], v89);
  v19 = v6[18];
  v87 = type metadata accessor for LocalizationService();
  v86 = *(v87[-1].Description + 1);
  v86(&v4[v19], v87);
  v20 = v6[19];
  v85 = type metadata accessor for MarketingService();
  v84 = *(v85[-1].Description + 1);
  v84(&v4[v20], v85);
  v21 = v6[20];
  v83 = type metadata accessor for MetricService();
  v82 = *(v83[-1].Description + 1);
  v82(&v4[v21], v83);
  v22 = v6[21];
  v81 = type metadata accessor for PersonalizationService();
  v80 = *(v81[-1].Description + 1);
  v80(&v4[v22], v81);
  v23 = v6[22];
  v79 = type metadata accessor for PlayerService();
  v78 = *(v79[-1].Description + 1);
  v78(&v4[v23], v79);
  v24 = v6[23];
  v77 = type metadata accessor for PrivacyPreferenceService();
  v76 = *(v77[-1].Description + 1);
  v76(&v4[v24], v77);
  v25 = v6[24];
  v75 = type metadata accessor for RecommendationService();
  v74 = *(v75[-1].Description + 1);
  v74(&v4[v25], v75);
  v26 = v6[25];
  v73 = type metadata accessor for RemoteBrowsingService();
  v72 = *(v73[-1].Description + 1);
  v72(&v4[v26], v73);
  v27 = v6[26];
  v71 = type metadata accessor for SearchService();
  v70 = *(v71[-1].Description + 1);
  v70(&v4[v27], v71);
  v28 = v6[27];
  v69 = type metadata accessor for ServiceSubscriptionService();
  v68 = *(v69[-1].Description + 1);
  v68(&v4[v28], v69);
  v29 = v6[28];
  v62 = type metadata accessor for SessionService();
  v67 = *(v62[-1].Description + 1);
  v67(&v4[v29], v62);
  v30 = v6[29];
  v31 = type metadata accessor for SharePlayService();
  v66 = *(v31[-1].Description + 1);
  v66(&v4[v30], v31);
  v32 = v6[30];
  v33 = type metadata accessor for SiriService();
  v65 = *(v33[-1].Description + 1);
  v65(&v4[v32], v33);
  v34 = v6[31];
  v35 = type metadata accessor for SyncService();
  v64 = *(v35[-1].Description + 1);
  v64(&v4[v34], v35);
  v36 = &v4[v6[32]];
  v37 = *(v36 + 1);

  v38 = *(v36 + 3);

  v39 = *(v36 + 5);

  v40 = v6[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v63 = *(QueueService[-1].Description + 1);
  v63(&v4[v40], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v4[v6[34]]);
  v42 = *&v4[v6[35]];

  v43 = v6[36];
  v44 = type metadata accessor for WorkoutPlanService();
  v61 = *(v44[-1].Description + 1);
  v61(&v4[v43], v44);
  v45 = *(v110 + v118[6]);

  v46 = (v110 + v118[7]);
  v47 = *v46;

  v48 = v46[1];

  v49 = v46 + *(type metadata accessor for AppDataItemResolver() + 24);
  v50 = *v49;
  swift_unknownObjectRelease();
  v111(&v49[v6[6]], v112);
  v108(&v49[v6[7]], v109);
  v106(&v49[v6[8]], v107);
  v104(&v49[v6[9]], v105);
  v102(&v49[v6[10]], v103);
  v100(&v49[v6[11]], v101);
  v98(&v49[v6[12]], v99);
  v96(&v49[v6[13]], v97);
  v94(&v49[v6[14]], v95);
  v92(&v49[v6[15]], v93);
  v90(&v49[v6[16]], v91);
  v88(&v49[v6[17]], v89);
  v86(&v49[v6[18]], v87);
  v84(&v49[v6[19]], v85);
  v82(&v49[v6[20]], v83);
  v80(&v49[v6[21]], v81);
  v78(&v49[v6[22]], v79);
  v76(&v49[v6[23]], v77);
  v74(&v49[v6[24]], v75);
  v72(&v49[v6[25]], v73);
  v70(&v49[v6[26]], v71);
  v68(&v49[v6[27]], v69);
  v67(&v49[v6[28]], v62);
  v66(&v49[v6[29]], v31);
  v65(&v49[v6[30]], v33);
  v64(&v49[v6[31]], v35);
  v51 = &v49[v6[32]];
  v52 = *(v51 + 1);

  v53 = *(v51 + 3);

  v54 = *(v51 + 5);

  v63(&v49[v6[33]], QueueService);
  __swift_destroy_boxed_opaque_existential_1(&v49[v6[34]]);
  v55 = *&v49[v6[35]];

  v61(&v49[v6[36]], v44);
  v56 = *(v110 + v118[8]);
  swift_unknownObjectRelease();
  if (*(v110 + v118[9] + 8) >= 0xCuLL)
  {
  }

  v57 = (v110 + v118[10]);
  if (v57[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v57);
  }

  v58 = (v114 + v113 + 23) & 0xFFFFFFFFFFFFFFF8;
  a1(*(v117 + ((v114 + v113 + 7) & 0xFFFFFFFFFFFFFFF8)), *(v117 + ((v114 + v113 + 7) & 0xFFFFFFFFFFFFFFF8) + 8));
  v59 = *(v117 + v58);

  __swift_destroy_boxed_opaque_existential_1((v117 + ((v58 + 15) & 0xFFFFFFFFFFFFFFF8)));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_12()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_13()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0785E0, &qword_1E65EA848);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_14()
{
  v1 = type metadata accessor for PageMetricsClick();
  v2 = (*(*(v1 - 1) + 80) + 120) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 2);
  swift_unknownObjectRelease();
  v5 = *(v0 + 5);
  swift_unknownObjectRelease();
  v6 = *(v0 + 8);

  v7 = *(v0 + 10);

  v8 = *(v0 + 12);

  v9 = *(v0 + 14);

  v10 = &v0[v2];
  v11 = sub_1E65D9D78();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(&v0[v2], 1, v11))
  {
    (*(v12 + 8))(&v0[v2], v11);
  }

  v13 = v1[5];
  v14 = sub_1E65D8C68();
  (*(*(v14 - 8) + 8))(&v10[v13], v14);
  v15 = v1[6];
  v16 = sub_1E65D74E8();
  v17 = *(v16 - 8);
  if (!(*(v17 + 48))(&v10[v15], 1, v16))
  {
    (*(v17 + 8))(&v10[v15], v16);
  }

  v18 = *&v10[v1[7]];

  v19 = v1[8];
  v20 = sub_1E65DA208();
  v21 = *(v20 - 8);
  if (!(*(v21 + 48))(&v10[v19], 1, v20))
  {
    (*(v21 + 8))(&v10[v19], v20);
  }

  v22 = *&v10[v1[9] + 8];

  v23 = *&v10[v1[10] + 8];

  v24 = *&v10[v1[11]];

  v25 = *&v10[v1[12] + 8];

  v26 = *&v10[v1[13] + 8];

  v27 = v1[14];
  v28 = sub_1E65D8F28();
  (*(*(v28 - 8) + 8))(&v10[v27], v28);
  v29 = v1[15];
  v30 = sub_1E65D9908();
  v31 = *(v30 - 8);
  if (!(*(v31 + 48))(&v10[v29], 1, v30))
  {
    (*(v31 + 8))(&v10[v29], v30);
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_15(uint64_t (*a1)(void))
{
  v14 = a1(0);
  v2 = *(v14 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v13 = sub_1E65D7848();
  v5 = *(v13 - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = type metadata accessor for LocalizationService();
  Description = v8[-1].Description;
  v10 = (v6 + v7 + *(Description + 80)) & ~*(Description + 80);
  v11 = (Description[8] + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v1 + v3, v14);
  (*(v5 + 8))(v1 + v6, v13);
  (Description[1])(v1 + v10, v8);
  __swift_destroy_boxed_opaque_existential_1((v1 + v11));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_16()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_17(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  (*(v4 + 8))(v2 + ((*(v4 + 80) + 56) & ~*(v4 + 80)), v3);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_18()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  __swift_destroy_boxed_opaque_existential_1(v0 + 9);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_19()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DB8, &qword_1E65F83D8);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_20()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[7];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  v2 = v0[13];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 15);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_21()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_22()
{
  v1 = sub_1E65DAEB8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_23()
{
  _Block_release(*(v0 + 32));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_24()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[3];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 5);
  __swift_destroy_boxed_opaque_existential_1(v0 + 10);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 21);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_25()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  v2 = v0[9];

  return swift_deallocObject();
}

uint64_t objectdestroyTm_26()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E5E1A2A0()
{
  v1 = *(v0 + 112);
  swift_unknownObjectRelease();
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1E5E1A2D8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 112));
  v1 = *(v0 + 152);
  swift_unknownObjectRelease();
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1E5E1A318()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 14);
  __swift_destroy_boxed_opaque_existential_1(v0 + 19);
  v1 = v0[24];
  swift_unknownObjectRelease();
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1E5E1A360()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 14);
  v1 = v0[19];

  v2 = v0[20];
  swift_unknownObjectRelease();
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1E5E1A3A8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 14);
  v1 = v0[19];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 21);
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1E5E1A3F0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 112));
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1E5E1A428()
{
  v1 = v0[14];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 15);
  v2 = v0[20];

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1E5E1A470()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 14);
  v1 = v0[20];

  v2 = v0[21];

  v3 = v0[22];

  v4 = v0[23];

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1E5E1A4C8()
{
  v1 = OBJC_IVAR____TtC26FitnessLocalizationService23LiveLocalizationService_currentLocale;
  v2 = sub_1E65D7848();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC26FitnessLocalizationService23LiveLocalizationService_storefrontLocalizer));
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1E5E1A594()
{
  v1 = *(v0 + 112);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 128));
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1E5E1A5D4()
{
  v1 = v0[14];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 21);
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1E5E1A61C(uint64_t a1)
{
  v2 = type metadata accessor for OnboardingDetailCache.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E5E1A678()
{
  sub_1E5E1A61C(v0 + OBJC_IVAR____TtC21RecommendationService21OnboardingDetailCache_state);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC21RecommendationService21OnboardingDetailCache_recommendationClient));
  v1 = *(v0 + OBJC_IVAR____TtC21RecommendationService21OnboardingDetailCache_eventHub);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC21RecommendationService21OnboardingDetailCache_networkEvaluator));
  v2 = *(v0 + OBJC_IVAR____TtC21RecommendationService21OnboardingDetailCache_subscriptionToken);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1E5E1A6F8()
{
  v1 = v0[14];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 21);
  __swift_destroy_boxed_opaque_existential_1(v0 + 26);
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1E5E1A748()
{
  sub_1E5E1A774();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t *sub_1E5E1A774()
{
  v1 = v0[14];

  __swift_destroy_boxed_opaque_existential_1(v0 + 15);
  __swift_destroy_boxed_opaque_existential_1(v0 + 20);
  __swift_destroy_boxed_opaque_existential_1(v0 + 25);
  __swift_destroy_boxed_opaque_existential_1(v0 + 30);
  v2 = v0[35];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 37);
  __swift_destroy_boxed_opaque_existential_1(v0 + 42);
  __swift_destroy_boxed_opaque_existential_1(v0 + 47);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1E5E1A7DC()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t WindowSceneObserver.__deallocating_deinit()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_1E5E1A858(*(v0 + 16), *(v0 + 24));
  v3 = *(v0 + 48);

  return swift_deallocClassInstance();
}

void *sub_1E5E1A858(void *result, void *a2)
{
  if (result)
  {

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t type metadata accessor for EngagementMessagePresenter()
{
  result = qword_1EE2D85A8;
  if (!qword_1EE2D85A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

ValueMetadata *sub_1E5E1A900()
{
  result = type metadata accessor for AccountService();
  if (v1 <= 0x3F)
  {
    v5 = result[-1].Description + 64;
    result = type metadata accessor for EngagementService();
    if (v2 <= 0x3F)
    {
      v6 = result[-1].Description + 64;
      result = type metadata accessor for MetricService();
      if (v3 <= 0x3F)
      {
        v7 = result[-1].Description + 64;
        result = type metadata accessor for ServiceSubscriptionService();
        if (v4 <= 0x3F)
        {
          v8 = result[-1].Description + 64;
          return swift_updateClassMetadata2();
        }
      }
    }
  }

  return result;
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_1E5E1AA90(uint64_t a1)
{
  Description = type metadata accessor for EngagementService()[-1].Description;
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(Description + 80) + 32) & ~*(Description + 80));
  v8 = *(v7 + Description[8]);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E5E1ACA4(a1, v5, v6, v7, v8);
}

uint64_t sub_1E5E1ABA8()
{
  v1 = *(v0 + 24);
  v2 = EngagementService.registerPlacement.getter();
  *(v0 + 32) = v3;
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *v5 = v0;
  v5[1] = sub_1E602F734;
  v6 = *(v0 + 56);

  return v8(v6);
}

uint64_t sub_1E5E1ACA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 56) = a5;
  *(v5 + 24) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1E5E1ABA8, 0, 0);
}

uint64_t EngagementService.registerPlacement.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t sub_1E5E1ACF8(char a1)
{
  *(v2 + 32) = v1;
  *(v2 + 26) = a1;
  v3 = sub_1E65E3B68();
  *(v2 + 40) = v3;
  v4 = *(v3 - 8);
  *(v2 + 48) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 56) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5E1ADBC, v1, 0);
}

uint64_t sub_1E5E1ADBC()
{
  v24 = v0;
  v1 = *(v0 + 56);
  sub_1E65DE2D8();
  v2 = sub_1E65E3B48();
  v3 = sub_1E65E6338();
  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 48);
    v4 = *(v0 + 56);
    v6 = *(v0 + 40);
    v7 = *(v0 + 26);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23 = v9;
    *v8 = 136315138;
    *(v0 + 25) = v7;
    v10 = sub_1E65E5CE8();
    v12 = sub_1E5DFD4B0(v10, v11, &v23);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1E5DE9000, v2, v3, "Registering %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1E694F1C0](v9, -1, -1);
    MEMORY[0x1E694F1C0](v8, -1, -1);

    (*(v5 + 8))(v4, v6);
  }

  else
  {
    v14 = *(v0 + 48);
    v13 = *(v0 + 56);
    v15 = *(v0 + 40);

    (*(v14 + 8))(v13, v15);
  }

  v16 = *(v0 + 32);
  v17 = *(v0 + 26);
  v18 = sub_1E5E1B028();
  v19 = swift_task_alloc();
  *(v0 + 64) = v19;
  *(v19 + 16) = v16;
  *(v19 + 24) = v17;
  v20 = *(MEMORY[0x1E69E8920] + 4);
  v21 = swift_task_alloc();
  *(v0 + 72) = v21;
  *v21 = v0;
  v21[1] = sub_1E6595FAC;

  return MEMORY[0x1EEE6DE38](v0 + 16, v16, v18, 0xD000000000000012, 0x80000001E6619E50, sub_1E5E1B62C, v19, &type metadata for EngagementPlacement);
}

unint64_t sub_1E5E1B028()
{
  result = qword_1EE2D58A0;
  if (!qword_1EE2D58A0)
  {
    type metadata accessor for EngagementPlacementRegistry();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D58A0);
  }

  return result;
}

id sub_1E5E1B07C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC10Blackbeard29SubscriptionPurchasePresenter_state;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079C40, &qword_1E66038C8);
  v11 = swift_allocObject();
  *(v11 + 24) = 0;
  *(v11 + 16) = 0;
  *&v4[v10] = v11;
  sub_1E5DF650C(a1, &v4[OBJC_IVAR____TtC10Blackbeard29SubscriptionPurchasePresenter_accountProvider]);
  *&v4[OBJC_IVAR____TtC10Blackbeard29SubscriptionPurchasePresenter_bag] = a2;
  v12 = &v4[OBJC_IVAR____TtC10Blackbeard29SubscriptionPurchasePresenter_eventHub];
  *v12 = a3;
  *(v12 + 1) = a4;
  v15.receiver = v4;
  v15.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v13;
}

uint64_t sub_1E5E1B18C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v36 - v8;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  v10 = *(a2 + 176);
  if (*(v10 + 16) && (v11 = sub_1E5E1B97C(a3), (v12 & 1) != 0))
  {
    v13 = *(v10 + 56) + 16 * v11;
    v14 = *v13;
    v15 = *(v13 + 8);
    swift_endAccess();
    if (v15 < 0)
    {
      v37 = v14;
      v38 = v15 & 1;
      v35 = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B898, &qword_1E660D328);
      return sub_1E65E5FF8();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B890, &qword_1E660D320);
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B898, &qword_1E660D328);
      v17 = *(v16 - 8);
      v18 = *(v17 + 72);
      v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1E65EA670;
      (*(v17 + 16))(v20 + v19, a1, v16);
      v37 = v14;

      sub_1E659AB20(v20);
      v21 = v37;
      swift_beginAccess();
      v22 = *(a2 + 176);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = *(a2 + 176);
      *(a2 + 176) = 0x8000000000000000;
      sub_1E5E1B714(v21, 0, a3, isUniquelyReferenced_nonNull_native);
      *(a2 + 176) = v36;
      return swift_endAccess();
    }
  }

  else
  {
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B890, &qword_1E660D320);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B898, &qword_1E660D328);
    v26 = *(v25 - 8);
    v27 = *(v26 + 72);
    v28 = (*(v26 + 80) + 32) & ~*(v26 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1E65EA670;
    (*(v26 + 16))(v29 + v28, a1, v25);
    swift_beginAccess();
    v30 = *(a2 + 176);
    v31 = swift_isUniquelyReferenced_nonNull_native();
    v36 = *(a2 + 176);
    *(a2 + 176) = 0x8000000000000000;
    sub_1E5E1B714(v29, 0, a3, v31);
    *(a2 + 176) = v36;
    swift_endAccess();
    v32 = sub_1E65E60A8();
    (*(*(v32 - 8) + 56))(v9, 1, 1, v32);
    v33 = sub_1E5E1B028();
    v34 = swift_allocObject();
    *(v34 + 16) = a2;
    *(v34 + 24) = v33;
    *(v34 + 32) = a2;
    *(v34 + 40) = a3;
    swift_retain_n();
    sub_1E64B80F8(0, 0, v9, &unk_1E660D338, v34);
  }
}

uint64_t type metadata accessor for ToastPresenter()
{
  result = qword_1EE2DA840;
  if (!qword_1EE2DA840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E5E1B638()
{
  result = type metadata accessor for AppComposer();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1E5E1B714(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1E5E1B97C(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1E5E1BA14(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1E5E1B97C(a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        sub_1E65E6C68();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1E659A6F8();
      v11 = v19;
    }
  }

  v22 = *v5;
  if ((v17 & 1) == 0)
  {
    v22[(v11 >> 6) + 8] |= 1 << v11;
    *(v22[6] + v11) = a3;
    v26 = v22[7] + 16 * v11;
    *v26 = a1;
    *(v26 + 8) = a2;
    v27 = v22[2];
    v15 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (!v15)
    {
      v22[2] = v28;
      return;
    }

    goto LABEL_15;
  }

  v23 = v22[7] + 16 * v11;
  v24 = *v23;
  *v23 = a1;
  v25 = *(v23 + 8);
  *(v23 + 8) = a2;

  sub_1E659B884(v24, v25);
}

uint64_t sub_1E5E1B880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = OBJC_IVAR____TtC10Blackbeard14ToastPresenter_state;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079D28, &unk_1E6603DC0);
  v12 = swift_allocObject();
  *(v12 + 24) = 0;
  *(v12 + 16) = 0;
  *(v5 + v11) = v12;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v5 + OBJC_IVAR____TtC10Blackbeard14ToastPresenter_dismissTask) = 0;
  sub_1E5E1BCD8(a1, v5 + OBJC_IVAR____TtC10Blackbeard14ToastPresenter_composer, type metadata accessor for AppComposer);
  v13 = (v5 + OBJC_IVAR____TtC10Blackbeard14ToastPresenter_itemRoutingContext);
  *v13 = a4;
  v13[1] = a5;
  v14 = (v5 + OBJC_IVAR____TtC10Blackbeard14ToastPresenter_scheduler);
  *v14 = a2;
  v14[1] = a3;
  return v5;
}

unint64_t sub_1E5E1B97C(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1E65E6D28();
  sub_1E65DB7F8();
  sub_1E65E5D78();

  v4 = sub_1E65E6D78();

  return sub_1E5E1BD40(a1, v4);
}

uint64_t sub_1E5E1BA14(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B888, &qword_1E660D310);
  v37 = a2;
  result = sub_1E65E6A18();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v36 = v5;
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
      v22 = *(*(v5 + 48) + v21);
      v23 = *(v5 + 56) + 16 * v21;
      v24 = *v23;
      v25 = *(v23 + 8);
      if ((v37 & 1) == 0)
      {
        sub_1E659B890(v24, v25);
      }

      v26 = *(v8 + 40);
      sub_1E65E6D28();
      sub_1E65DB7F8();
      sub_1E65E5D78();

      result = sub_1E65E6D78();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v22;
      v17 = *(v8 + 56) + 16 * v16;
      *v17 = v24;
      *(v17 + 8) = v25;
      ++*(v8 + 16);
      v5 = v36;
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

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1E5E1BCD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1E5E1BD40(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + v4);
      v7 = sub_1E65DB7F8();
      v9 = v8;
      if (v7 == sub_1E65DB7F8() && v9 == v10)
      {
        break;
      }

      v12 = sub_1E65E6C18();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_1E5E1BE54(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFA78C;

  return sub_1E5E1C304(a1, v4, v5, v6, v7);
}

char *sub_1E5E1BF18(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1E65D7848();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v29[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E65DEEA8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v29[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0756B8, &qword_1E65F1C68);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v29[-1] - v16;
  v29[3] = type metadata accessor for NavigationControllerRoutingContext();
  v29[4] = &off_1F5FA9B10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v29);
  sub_1E5E1D484(a1, boxed_opaque_existential_1, type metadata accessor for NavigationControllerRoutingContext);
  sub_1E62CC524(7, v29, v17);
  v19 = *a2;
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
  {

    sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
    v20 = v27;
  }

  else
  {

    v20 = MEMORY[0x1E69E7CD0];
  }

  (*(v10 + 104))(v13, *MEMORY[0x1E699CE18], v9);
  v21 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0756C0, &qword_1E65F1C70));
  v22 = sub_1E6274AF4(v17, v20, MEMORY[0x1E69E7CC0], v13, 0, 0, 0, 0, 0, 0, 0, v19, nullsub_1, 0);

  swift_getKeyPath();
  v23 = v22;
  sub_1E65E4EC8();

  sub_1E65DF548();
  (*(v5 + 8))(v8, v4);
  v24 = sub_1E65E5C48();

  [v23 setTitle_];

  v25 = [*&v23[qword_1EE2D9180] navigationItem];
  [v25 setLargeTitleDisplayMode_];

  __swift_destroy_boxed_opaque_existential_1(v29);
  return v23;
}

uint64_t type metadata accessor for WorkoutPlanArtworkViewRepresentable()
{
  result = qword_1EE2D7818;
  if (!qword_1EE2D7818)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E5E1C304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 121) = a5;
  *(v5 + 56) = a4;
  v7 = sub_1E65E3B68();
  *(v5 + 64) = v7;
  v8 = *(v7 - 8);
  *(v5 + 72) = v8;
  v9 = *(v8 + 64) + 15;
  *(v5 + 80) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5E1C3CC, a4, 0);
}

uint64_t sub_1E5E1C3CC()
{
  v1 = *(v0 + 56);
  v2 = v1[17];
  v3 = v1[18];
  v4 = *(v0 + 121);
  __swift_project_boxed_opaque_existential_1(v1 + 14, v2);
  v5 = sub_1E65DB7F8();
  v7 = v6;
  *(v0 + 88) = v6;
  v8 = v1[19];
  v9 = v1[20];
  v10 = *(v3 + 8);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v0 + 96) = v12;
  *v12 = v0;
  v12[1] = sub_1E6596858;

  return v14(v5, v7, v8, v9, v2, v3);
}

uint64_t sub_1E5E1C534()
{
  result = sub_1E65D76F8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1E5E1C5A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1E60ABB70;

  return sub_1E5E1C668(a1, a2, a3, a4);
}

uint64_t sub_1E5E1C668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[22] = a4;
  v5[23] = v4;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B8A0, &qword_1E660D430);
  v5[24] = v6;
  v7 = *(v6 - 8);
  v5[25] = v7;
  v8 = *(v7 + 64) + 15;
  v5[26] = swift_task_alloc();
  v9 = sub_1E65E3B68();
  v5[27] = v9;
  v10 = *(v9 - 8);
  v5[28] = v10;
  v11 = *(v10 + 64) + 15;
  v5[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5E1C798, 0, 0);
}

uint64_t sub_1E5E1C798()
{
  v1 = v0;
  v3 = v0[28];
  v2 = v0[29];
  v25 = v0 + 2;
  v26 = v0 + 18;
  v4 = v0[27];
  v27 = v0[26];
  v5 = v0[25];
  v6 = v1[24];
  v24 = v1[23];
  v8 = v1[21];
  v7 = v1[22];
  v10 = v1[19];
  v9 = v1[20];
  sub_1E65DE2D8();
  sub_1E65E3B18();
  (*(v3 + 8))(v2, v4);
  sub_1E5E1CB40(MEMORY[0x1E69E7CC0]);
  v11 = objc_allocWithZone(MEMORY[0x1E698C900]);
  v12 = sub_1E65E5C48();
  v13 = sub_1E65E5AF8();

  v14 = [v11 initWithPlacement:v12 context:v13];
  v1[30] = v14;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1E65EA660;
  *(v15 + 32) = v14;
  v16 = objc_allocWithZone(MEMORY[0x1E698C8E0]);
  v17 = v14;
  v18 = sub_1E65E5C48();
  sub_1E5DEF738(0, &qword_1EE2D4590, 0x1E698C900);
  v19 = sub_1E65E5EF8();

  v20 = [v16 initWithServiceType:v18 placementInfo:v19];
  v1[31] = v20;

  v21 = [v24 enqueueMessageEvent_];
  v1[32] = v21;
  v1[2] = v1;
  v1[7] = v26;
  v1[3] = sub_1E659BB30;
  swift_continuation_init();
  v1[17] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  sub_1E5DEF738(0, &unk_1EE2D4558, 0x1E698C8E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
  sub_1E65E5FD8();
  (*(v5 + 32))(boxed_opaque_existential_1, v27, v6);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1E659BE38;
  v1[13] = &block_descriptor_25;
  [v21 resultWithCompletion_];
  (*(v5 + 8))(boxed_opaque_existential_1, v6);

  return MEMORY[0x1EEE6DEC8](v25);
}

unint64_t sub_1E5E1CB40(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077270, &unk_1E660D440);
    v3 = sub_1E65E6A28();
    v4 = a1 + 32;

    while (1)
    {
      sub_1E659C76C(v4, v13);
      result = sub_1E6417048(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1E6121EB8(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1E5E1CC5C()
{
  result = qword_1EE2D9680;
  if (!qword_1EE2D9680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D9680);
  }

  return result;
}

unint64_t sub_1E5E1CCB8()
{
  result = qword_1EE2D9698;
  if (!qword_1EE2D9698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D9698);
  }

  return result;
}

uint64_t sub_1E5E1CE4C()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v7 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v4 = sub_1E62FE89C;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_1E5E1CF68;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E5E1CF84()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_1E64B9C94;
  }

  else
  {
    v3 = sub_1E6115FB4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E5E1D0B8(void *a1)
{
  v2 = a1[2];
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = a1[3];
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      v7 = a1[4];
      result = swift_checkMetadataState();
      if (v8 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1E5E1D180(uint64_t a1)
{
  result = sub_1E65D7848();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 16);
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      v6 = *(a1 + 24);
      result = swift_checkMetadataState();
      if (v7 <= 0x3F)
      {
        v9 = *(a1 + 32);
        type metadata accessor for ContextMenuViewModifier.LoadState();
        result = sub_1E65E4A98();
        if (v8 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1E5E1D27C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1D2E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1D34C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1D3B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1D41C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1D484(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1D4EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1D554(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1D5BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1D624(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1D68C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1D6F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1D75C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1D7C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1D82C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1D894(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1D8FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1D964(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1D9CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1DA34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1DA9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1DB04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1DB6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1DBD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1DC3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1DCA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1DD0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1DD74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1DDDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1DE44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1DEAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppComposer();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5E1DF10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1DF78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1DFE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1E048(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1E0B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1E118(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1E180(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1E1E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1E250(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1E2B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1E320(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1E388(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1E3F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1E458(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1E4C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1E528(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1E590(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1E5F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1E660(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1E6C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1E730(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1E798(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1E800(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1E868(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1E8D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5E1E938(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}