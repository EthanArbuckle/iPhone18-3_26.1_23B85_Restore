uint64_t sub_1E6336DAC()
{
  v1 = v0[34];
  v2 = v0[12];

  sub_1E5DFE50C(v2, &unk_1ED072040, &qword_1E65F0860);
  v3 = v0[32];
  v4 = v0[33];

  return MEMORY[0x1EEE6DFA0](sub_1E6336E2C, v3, v4);
}

uint64_t sub_1E6336E2C()
{
  v1 = v0[31];

  v2 = v0[23];
  v3 = v0[24];

  return MEMORY[0x1EEE6DFA0](sub_1E6336E90, v2, v3);
}

uint64_t sub_1E6336E90()
{
  v59 = v0;
  v2 = *(v0 + 232);
  v1 = *(v0 + 240);
  v3 = *(v0 + 200);
  sub_1E5E05374(v2, v1);
  v4 = sub_1E65E3B48();
  v5 = sub_1E65E6328();
  sub_1E5E0476C(v2, v1);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 312);
    v8 = *(v0 + 232);
    v7 = *(v0 + 240);
    v9 = *(v0 + 136);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v58 = v11;
    *v10 = 136446210;
    *(v0 + 40) = v8;
    *(v0 + 48) = v7;
    v12 = sub_1E65E5CE8();
    v14 = sub_1E5DFD4B0(v12, v13, &v58);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_1E5DE9000, v4, v5, "Unable to reset %{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1E694F1C0](v11, -1, -1);
    MEMORY[0x1E694F1C0](v10, -1, -1);

    v15 = v9;
  }

  else
  {
    v16 = *(v0 + 312);
    v17 = *(v0 + 136);
    sub_1E5E0476C(*(v0 + 232), *(v0 + 240));

    v15 = v17;
  }

  v18 = sub_1E5E263A0(v15, type metadata accessor for NavigationControllerRoutingContext);
  v21 = *(v0 + 216);
  v22 = *(v0 + 224);
  if (!v21)
  {
    v24 = ((1 << *(v0 + 322)) + 63) >> 6;
    if (v24 <= (v22 + 1))
    {
      v25 = v22 + 1;
    }

    else
    {
      v25 = ((1 << *(v0 + 322)) + 63) >> 6;
    }

    v26 = v25 - 1;
    while (1)
    {
      v27 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v27 >= v24)
      {
        v56 = *(v0 + 152);
        v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0785F0, &qword_1E65FD2F8);
        (*(*(v57 - 8) + 56))(v56, 1, 1, v57);
        v30 = 0;
        goto LABEL_15;
      }

      v23 = *(v0 + 208);
      v21 = *(v23 + 8 * v27 + 64);
      ++v22;
      if (v21)
      {
        v22 = v27;
        goto LABEL_14;
      }
    }

    __break(1u);
    return MEMORY[0x1EEE6DFA0](v18, v19, v20);
  }

  v23 = *(v0 + 208);
LABEL_14:
  v28 = *(v0 + 144);
  v29 = *(v0 + 152);
  v30 = (v21 - 1) & v21;
  v31 = __clz(__rbit64(v21)) | (v22 << 6);
  v32 = (*(v23 + 48) + 16 * v31);
  v33 = *v32;
  v34 = v32[1];
  sub_1E5E246F0(*(v23 + 56) + *(*(v0 + 112) + 72) * v31, v28, type metadata accessor for NavigationControllerRoutingContext);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0785F0, &qword_1E65FD2F8);
  v36 = *(v35 + 48);
  *v29 = v33;
  v29[1] = v34;
  sub_1E5E24844(v28, v29 + v36, type metadata accessor for NavigationControllerRoutingContext);
  (*(*(v35 - 8) + 56))(v29, 0, 1, v35);
  sub_1E5E05374(v33, v34);
  v26 = v22;
LABEL_15:
  *(v0 + 216) = v30;
  *(v0 + 224) = v26;
  v37 = *(v0 + 160);
  sub_1E5FAB460(*(v0 + 152), v37, &qword_1ED0785E8, &qword_1E65FD2F0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0785F0, &qword_1E65FD2F8);
  if ((*(*(v38 - 8) + 48))(v37, 1, v38) != 1)
  {
    v51 = *(v0 + 160);
    v52 = *(v0 + 168);
    v53 = *(v0 + 136);
    *(v0 + 232) = *v51;
    *(v0 + 240) = v51[1];
    sub_1E5E24844(v51 + *(v38 + 48), v53, type metadata accessor for NavigationControllerRoutingContext);
    *(v0 + 248) = sub_1E65E6048();
    v54 = sub_1E65E5FC8();
    v20 = v55;
    *(v0 + 256) = v54;
    *(v0 + 264) = v55;
    v18 = sub_1E6336544;
    v19 = v54;

    return MEMORY[0x1EEE6DFA0](v18, v19, v20);
  }

  v39 = *(v0 + 208);
  v40 = *(v0 + 176);
  v42 = *(v0 + 152);
  v41 = *(v0 + 160);
  v44 = *(v0 + 136);
  v43 = *(v0 + 144);
  v45 = *(v0 + 128);
  v47 = *(v0 + 88);
  v46 = *(v0 + 96);
  v48 = *(v0 + 64);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0785E0, &qword_1E65EA848);
  sub_1E65E5FF8();

  v49 = *(v0 + 8);

  return v49();
}

uint64_t sub_1E6337384(uint64_t a1, _BYTE *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v5 = *(type metadata accessor for RouteDestination() - 8);
  *(v3 + 32) = v5;
  *(v3 + 40) = *(v5 + 64);
  *(v3 + 48) = swift_task_alloc();
  *(v3 + 89) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1E6337454, 0, 0);
}

uint64_t sub_1E6337454()
{
  v1 = *(v0 + 89);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 16);
  v7 = *(v5 + OBJC_IVAR____TtC10Blackbeard9AppRouter_taskScheduler);
  v14 = *(v5 + OBJC_IVAR____TtC10Blackbeard9AppRouter_taskScheduler + 8);
  ObjectType = swift_getObjectType();
  *(v0 + 88) = v1;
  v9 = swift_allocObject();
  *(v0 + 56) = v9;
  swift_weakInit();
  sub_1E5E246F0(v6, v2, type metadata accessor for RouteDestination);
  v10 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v11 = swift_allocObject();
  *(v0 + 64) = v11;
  *(v11 + 16) = v9;
  sub_1E5E24844(v2, v11 + v10, type metadata accessor for RouteDestination);

  v12 = swift_task_alloc();
  *(v0 + 72) = v12;
  *v12 = v0;
  v12[1] = sub_1E63375FC;

  return sub_1E61261B8((v0 + 88), &unk_1E65F6EF8, v11, ObjectType, v14);
}

uint64_t sub_1E63375FC()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {
    v4 = v3[8];

    return MEMORY[0x1EEE6DFA0](sub_1E6180EA8, 0, 0);
  }

  else
  {
    v6 = v3[7];
    v5 = v3[8];
    v7 = v3[6];

    v8 = v3[1];

    return v8();
  }
}

uint64_t sub_1E6337758(uint64_t a1, uint64_t a2)
{
  v2[15] = a1;
  v2[16] = a2;
  v3 = type metadata accessor for RouteDestination();
  v2[17] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6337804, 0, 0);
}

uint64_t sub_1E6337804()
{
  v33 = v0;
  v1 = *(v0 + 120);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_1E5DFD1CC(Strong + OBJC_IVAR____TtC10Blackbeard9AppRouter_detourResolver, v0 + 56, &unk_1ED072050, &unk_1E65EEAB0);

    if (*(v0 + 80))
    {
      sub_1E5DF599C((v0 + 56), v0 + 16);
      if (qword_1EE2D7790 != -1)
      {
        swift_once();
      }

      v3 = *(v0 + 160);
      v4 = *(v0 + 128);
      v5 = sub_1E65E3B68();
      __swift_project_value_buffer(v5, qword_1EE2EA2A0);
      sub_1E5E246F0(v4, v3, type metadata accessor for RouteDestination);
      v6 = sub_1E65E3B48();
      v7 = sub_1E65E6338();
      v8 = os_log_type_enabled(v6, v7);
      v9 = *(v0 + 160);
      if (v8)
      {
        v10 = *(v0 + 152);
        v11 = *(v0 + 136);
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v32 = v13;
        *v12 = 141558274;
        *(v12 + 4) = 1752392040;
        *(v12 + 12) = 2080;
        sub_1E5E246F0(v9, v10, type metadata accessor for RouteDestination);
        v14 = sub_1E65E5CE8();
        v16 = v15;
        sub_1E5E263A0(v9, type metadata accessor for RouteDestination);
        v17 = sub_1E5DFD4B0(v14, v16, &v32);

        *(v12 + 14) = v17;
        _os_log_impl(&dword_1E5DE9000, v6, v7, "Resolving detours for %{mask.hash}s", v12, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v13);
        MEMORY[0x1E694F1C0](v13, -1, -1);
        MEMORY[0x1E694F1C0](v12, -1, -1);
      }

      else
      {

        sub_1E5E263A0(v9, type metadata accessor for RouteDestination);
      }

      v24 = *(v0 + 40);
      v25 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v24);
      v26 = *(v25 + 16);
      v31 = (v26 + *v26);
      v27 = v26[1];
      v28 = swift_task_alloc();
      *(v0 + 168) = v28;
      *v28 = v0;
      v28[1] = sub_1E6337C24;
      v29 = *(v0 + 144);
      v30 = *(v0 + 128);

      return v31(v29, v30, v24, v25);
    }
  }

  else
  {
    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
  }

  sub_1E5DFE50C(v0 + 56, &unk_1ED072050, &unk_1E65EEAB0);
  sub_1E6060374();
  swift_allocError();
  *v18 = 3;
  swift_willThrow();
  v20 = *(v0 + 152);
  v19 = *(v0 + 160);
  v21 = *(v0 + 144);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_1E6337C24()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v6 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = sub_1E6337DE0;
  }

  else
  {
    sub_1E5E263A0(*(v2 + 144), type metadata accessor for RouteDestination);
    v4 = sub_1E6337D54;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E6337D54()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E6337DE0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[22];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[18];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E6337E68(char a1)
{
  *(v2 + 40) = a1;
  *(v2 + 16) = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1E6337E90, 0, 0);
}

uint64_t sub_1E6337E90()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = *(MEMORY[0x1E69E88D0] + 4);
  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *v5 = v0;
  v5[1] = sub_1E6337F8C;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1E6337F8C()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E5F87068, 0, 0);
}

uint64_t sub_1E63380B0(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0785E0, &qword_1E65EA848) - 8);
  v5 = (*(v4 + 80) + 41) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1E5DFA78C;

  return sub_1E6335F1C(a1, v6, v7, v8, v9, v1 + v5);
}

unint64_t sub_1E63381C4()
{
  result = qword_1EE2D4708;
  if (!qword_1EE2D4708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED078610, &qword_1E65F1108);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4708);
  }

  return result;
}

uint64_t sub_1E6338228(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v6 = v5 - 1;
  v35 = a3 + 56;
  v32 = a5;
LABEL_2:
  v30 = v6;
LABEL_4:
  while (2)
  {
    v7 = a5[3];
    v8 = a5[4];
    if (v8)
    {
      v9 = a5[3];
LABEL_10:
      v12 = (*(*a5 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v8)))));
      v13 = v12[1];
      v33 = *v12;
      a5[3] = v9;
      a5[4] = (v8 - 1) & v8;
      v14 = *(a3 + 40);
      sub_1E65E6D28();
      if (v13 > 2)
      {
        if (v13 == 3 || v13 == 4 || v13 == 5)
        {
          goto LABEL_19;
        }
      }

      else if (v13 <= 2)
      {
        goto LABEL_19;
      }

      sub_1E5E05374(v33, v13);
      MEMORY[0x1E694D7C0](v33, v13);
LABEL_19:
      sub_1E65E5D78();

      v15 = sub_1E65E6D78();
      v16 = -1 << *(a3 + 32);
      v17 = v15 & ~v16;
      v18 = v17 >> 6;
      v19 = 1 << v17;
      if (((1 << v17) & *(v35 + 8 * (v17 >> 6))) == 0)
      {
LABEL_3:
        result = sub_1E5E0476C(v33, v13);
        a5 = v32;
        continue;
      }

      v34 = ~v16;
      while (1)
      {
        v20 = (*(a3 + 48) + 16 * v17);
        v21 = *v20;
        v22 = v20[1];
        if (v22 > 2)
        {
          if (v22 == 3)
          {
            v23 = 0xE600000000000000;
            v24 = 0x686372616573;
            if (v13 <= 2)
            {
              goto LABEL_47;
            }

            goto LABEL_39;
          }

          if (v22 != 4)
          {
            if (v22 == 5)
            {
              v23 = 0xE500000000000000;
              v24 = 0x736E616C70;
              if (v13 <= 2)
              {
                goto LABEL_47;
              }

              goto LABEL_39;
            }

            goto LABEL_36;
          }

          v23 = 0xE600000000000000;
          v24 = 0x7478654E7075;
          if (v13 <= 2)
          {
LABEL_47:
            if (v13)
            {
              if (v13 == 1)
              {
                v25 = 0xE600000000000000;
                if (v24 != 0x756F59726F66)
                {
                  goto LABEL_60;
                }
              }

              else
              {
                if (v13 != 2)
                {
                  goto LABEL_54;
                }

                v25 = 0xE700000000000000;
                if (v24 != 0x7972617262696CLL)
                {
                  goto LABEL_60;
                }
              }
            }

            else
            {
              v25 = 0xE700000000000000;
              if (v24 != 0x65726F6C707865)
              {
                goto LABEL_60;
              }
            }

            goto LABEL_59;
          }
        }

        else
        {
          if (!v22)
          {
            v23 = 0xE700000000000000;
            v24 = 0x65726F6C707865;
            if (v13 <= 2)
            {
              goto LABEL_47;
            }

            goto LABEL_39;
          }

          if (v22 != 1)
          {
            if (v22 == 2)
            {
              v23 = 0xE700000000000000;
              v24 = 0x7972617262696CLL;
              if (v13 <= 2)
              {
                goto LABEL_47;
              }

              goto LABEL_39;
            }

LABEL_36:
            sub_1E5E05374(v21, v22);
            MEMORY[0x1E694D7C0](v21, v22);
            v24 = 0x7974696C61646F6DLL;
            v23 = 0xE90000000000003ALL;
            if (v13 <= 2)
            {
              goto LABEL_47;
            }

            goto LABEL_39;
          }

          v23 = 0xE600000000000000;
          v24 = 0x756F59726F66;
          if (v13 <= 2)
          {
            goto LABEL_47;
          }
        }

LABEL_39:
        switch(v13)
        {
          case 3:
            v25 = 0xE600000000000000;
            if (v24 != 0x686372616573)
            {
              goto LABEL_60;
            }

            break;
          case 4:
            v25 = 0xE600000000000000;
            if (v24 != 0x7478654E7075)
            {
              goto LABEL_60;
            }

            break;
          case 5:
            v25 = 0xE500000000000000;
            if (v24 != 0x736E616C70)
            {
              goto LABEL_60;
            }

            break;
          default:
LABEL_54:
            MEMORY[0x1E694D7C0](v33, v13);
            v25 = 0xE90000000000003ALL;
            if (v24 != 0x7974696C61646F6DLL)
            {
              goto LABEL_60;
            }

            break;
        }

LABEL_59:
        if (v23 == v25)
        {
          sub_1E5E0476C(v21, v22);

LABEL_64:
          result = sub_1E5E0476C(v33, v13);
          a5 = v32;
          v27 = v31[v18];
          v31[v18] = v27 & ~v19;
          if ((v27 & v19) != 0)
          {
            v6 = v30 - 1;
            if (__OFSUB__(v30, 1))
            {
LABEL_73:
              __break(1u);
              return result;
            }

            if (v30 == 1)
            {
              return MEMORY[0x1E69E7CD0];
            }

            goto LABEL_2;
          }

          goto LABEL_4;
        }

LABEL_60:
        v26 = sub_1E65E6C18();
        sub_1E5E0476C(v21, v22);

        if (v26)
        {
          goto LABEL_64;
        }

        v17 = (v17 + 1) & v34;
        v18 = v17 >> 6;
        v19 = 1 << v17;
        if ((*(v35 + 8 * (v17 >> 6)) & (1 << v17)) == 0)
        {
          goto LABEL_3;
        }
      }
    }

    break;
  }

  v10 = (a5[2] + 64) >> 6;
  v11 = a5[3];
  while (1)
  {
    v9 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_73;
    }

    if (v9 >= v10)
    {
      break;
    }

    v8 = *(a5[1] + 8 * v9);
    ++v11;
    if (v8)
    {
      goto LABEL_10;
    }
  }

  if (v10 <= v7 + 1)
  {
    v28 = v7 + 1;
  }

  else
  {
    v28 = (a5[2] + 64) >> 6;
  }

  a5[3] = v28 - 1;
  a5[4] = 0;

  return sub_1E6089080(v31, a2, v30, a3);
}

uint64_t sub_1E63387E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = v4;
  *(v5 + 16) = a3;
  *(v5 + 56) = 0;
  v10 = *(a4 + 32);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 40) = v12;
  *v12 = v5;
  v12[1] = sub_1E633892C;

  return v14(v5 + 56, a1, a2, a3, a4);
}

uint64_t sub_1E633892C()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  v3[6] = v0;

  if (v0)
  {
    v4 = v3[4];
    v5 = v3[2];
    v6 = *(v3[3] + 8);
    v8 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6338A78, v8, v7);
  }

  else
  {
    v9 = v3[1];

    return v9();
  }
}

uint64_t sub_1E6338A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = v4;
  *(v5 + 16) = a3;
  *(v5 + 56) = 2;
  v10 = *(a4 + 32);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 40) = v12;
  *v12 = v5;
  v12[1] = sub_1E6338BE0;

  return v14(v5 + 56, a1, a2, a3, a4);
}

uint64_t sub_1E6338BE0()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  v3[6] = v0;

  if (v0)
  {
    v4 = v3[4];
    v5 = v3[2];
    v6 = *(v3[3] + 8);
    v8 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6339054, v8, v7);
  }

  else
  {
    v9 = v3[1];

    return v9();
  }
}

uint64_t TaskSchedulerPriority.hashValue.getter()
{
  v1 = *v0;
  sub_1E65E6D28();
  MEMORY[0x1E694E740](v1);
  return sub_1E65E6D78();
}

unint64_t sub_1E6338DB8()
{
  result = qword_1ED078630;
  if (!qword_1ED078630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078630);
  }

  return result;
}

uint64_t dispatch thunk of TaskScheduling.scheduleTask(priority:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 32);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1E5DFA78C;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t sub_1E6338F84()
{
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

unint64_t sub_1E6338FD8(uint64_t a1)
{
  result = sub_1E6339000();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E6339000()
{
  result = qword_1ED078638;
  if (!qword_1ED078638)
  {
    type metadata accessor for NullTaskScheduler();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078638);
  }

  return result;
}

void sub_1E63390F8()
{
  v1 = v0;
  v11.receiver = v0;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, sel_viewDidLoad);
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = v2;
  sub_1E5DEF738(0, &qword_1EE2D4510, 0x1E69DC888);
  v4 = sub_1E65E6528();
  [v3 setBackgroundColor_];

  v5 = [v1 view];
  if (!v5)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = v5;
  [v5 addSubview_];

  v7 = [v1 view];
  if (v7)
  {
    v8 = v7;
    v9 = objc_opt_self();
    sub_1E65E64F8();

    sub_1E5DEF738(0, &qword_1EE2D45D0, 0x1E696ACD8);
    v10 = sub_1E65E5EF8();

    [v9 activateConstraints_];

    return;
  }

LABEL_7:
  __break(1u);
}

void sub_1E6339270(void *a1)
{
  v1 = a1;
  sub_1E63390F8();
}

uint64_t sub_1E63392B8(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v23 - v7;
  v9 = sub_1E65E4F98();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = (&v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23.receiver = v2;
  v23.super_class = ObjectType;
  objc_msgSendSuper2(&v23, sel_viewWillAppear_, a1 & 1);
  sub_1E5DEF738(0, &qword_1EE2D4600, 0x1E69E9610);
  *v13 = sub_1E65E63C8();
  (*(v10 + 104))(v13, *MEMORY[0x1E69E8020], v9);
  LOBYTE(ObjectType) = sub_1E65E4FC8();
  result = (*(v10 + 8))(v13, v9);
  if (ObjectType)
  {
    if (!*&v2[qword_1ED078660])
    {
      *&v2[qword_1ED078660] = 1;
      v15 = sub_1E65E60A8();
      v16 = *(*(v15 - 8) + 56);
      v16(v8, 1, 1, v15);
      v17 = swift_allocObject();
      v17[2] = 0;
      v17[3] = 0;
      v17[4] = v2;
      v18 = v2;
      sub_1E63399BC(0, 0, v8, &unk_1E65FD5C8, v17);

      sub_1E5DF4CF4(v8);
      v16(v8, 1, 1, v15);
      sub_1E65E6058();
      v19 = v18;
      v20 = sub_1E65E6048();
      v21 = swift_allocObject();
      v22 = MEMORY[0x1E69E85E0];
      *(v21 + 16) = v20;
      *(v21 + 24) = v22;
      *(v21 + 32) = v19;
      *(v21 + 40) = a1 & 1;
      sub_1E64B80F8(0, 0, v8, &unk_1E65FD5D8, v21);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E63395A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = *(MEMORY[0x1E69CAD78] + 4);
  v6 = swift_task_alloc();
  *(v4 + 24) = v6;
  *v6 = v4;
  v6[1] = sub_1E633963C;
  v7.n128_u64[0] = 1.0;

  return MEMORY[0x1EEE34840](v7);
}

uint64_t sub_1E633963C()
{
  v2 = *(*v1 + 24);
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1E633976C, 0, 0);
  }
}

uint64_t sub_1E633976C()
{
  sub_1E65E6058();
  *(v0 + 32) = sub_1E65E6048();
  v2 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6339800, v2, v1);
}

uint64_t sub_1E6339800()
{
  v1 = v0[4];
  v2 = v0[2];

  sub_1E633986C();
  v3 = v0[1];

  return v3();
}

id sub_1E633986C()
{
  v1 = v0;
  v2 = sub_1E65E4F98();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1E5DEF738(0, &qword_1EE2D4600, 0x1E69E9610);
  *v6 = sub_1E65E63C8();
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8020], v2);
  v7 = sub_1E65E4FC8();
  result = (*(v3 + 8))(v6, v2);
  if (v7)
  {
    if (*(v1 + qword_1ED078660) == 1)
    {
      return [*(v1 + qword_1ED078640) startAnimating];
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E63399BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v24 - v10;
  sub_1E5DF4C84(a3, v24 - v10);
  v12 = sub_1E65E60A8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1E5DF4CF4(v11);
  }

  else
  {
    sub_1E65E6098();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1E65E5FC8();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1E65E5D18() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1E6339C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 72) = a5;
  *(v5 + 16) = a4;
  sub_1E65E6058();
  *(v5 + 24) = sub_1E65E6048();
  v7 = sub_1E65E5FC8();
  *(v5 + 32) = v7;
  *(v5 + 40) = v6;

  return MEMORY[0x1EEE6DFA0](sub_1E6339CA4, v7, v6);
}

uint64_t sub_1E6339CA4()
{
  v1 = (*(v0 + 16) + qword_1ED078650);
  v2 = v1[1];
  v6 = (*v1 + **v1);
  v3 = (*v1)[1];
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_1E6339D9C;

  return v6();
}

uint64_t sub_1E6339D9C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v7 = v4[4];
    v8 = v4[5];
    v9 = sub_1E6339F44;
  }

  else
  {
    v4[8] = a1;
    v7 = v4[4];
    v8 = v4[5];
    v9 = sub_1E6339EC4;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1E6339EC4()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);

  sub_1E6339FB8(v1, v2);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1E6339F44()
{
  v1 = v0[7];
  v3 = v0[2];
  v2 = v0[3];

  sub_1E633A358();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E6339FB8(void *a1, int a2)
{
  v26 = a2;
  v4 = sub_1E65E4F38();
  v29 = *(v4 - 8);
  v5 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1E65E4F68();
  v27 = *(v8 - 8);
  v28 = v8;
  v9 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_1E65E4F98();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v25[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1E5DEF738(0, &qword_1EE2D4600, 0x1E69E9610);
  *v16 = sub_1E65E63C8();
  (*(v13 + 104))(v16, *MEMORY[0x1E69E8020], v12);
  v17 = sub_1E65E4FC8();
  result = (*(v13 + 8))(v16, v12);
  if (v17)
  {
    if (*&v2[qword_1ED078660] == 1)
    {
      *&v2[qword_1ED078660] = a1;
      v19 = a1;
      v20 = sub_1E65E63C8();
      v21 = swift_allocObject();
      *(v21 + 16) = v2;
      *(v21 + 24) = v19;
      *(v21 + 32) = v26 & 1;
      aBlock[4] = sub_1E633BA90;
      aBlock[5] = v21;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1E5E05AB0;
      aBlock[3] = &block_descriptor_15;
      v22 = _Block_copy(aBlock);
      v23 = v19;
      v24 = v2;

      sub_1E65E4F48();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1E623B174();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078770, &unk_1E65EAB00);
      sub_1E5E05A4C();
      sub_1E65E6738();
      MEMORY[0x1E694DDE0](0, v11, v7, v22);
      _Block_release(v22);

      (*(v29 + 8))(v7, v4);
      return (*(v27 + 8))(v11, v28);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1E633A358()
{
  v1 = v0;
  v2 = *&v0[qword_1ED078658];
  if (v2)
  {
    v3 = *&v0[qword_1ED078658 + 8];
    v2();
  }

  v4 = [v1 presentingViewController];
  if (v4)
  {
    v6 = v4;
    [v4 dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    v5 = [v1 navigationController];
    if (!v5)
    {
      return;
    }

    v6 = v5;
  }
}

void sub_1E633A438(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1E63392B8(a3);
}

uint64_t sub_1E633A48C(void *a1, void *a2, char a3)
{
  v6 = sub_1E65E4F38();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1E65E4F68();
  v11 = *(v22 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 addChildViewController_];
  [a2 didMoveToParentViewController_];
  [a1 setNeedsUpdateOfSupportedInterfaceOrientations];
  [a1 setNeedsStatusBarAppearanceUpdate];
  [a1 setNeedsUpdateOfHomeIndicatorAutoHidden];
  sub_1E5DEF738(0, &qword_1EE2D4600, 0x1E69E9610);
  v15 = sub_1E65E63C8();
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a1;
  *(v16 + 32) = a3;
  aBlock[4] = sub_1E633BA9C;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E5E05AB0;
  aBlock[3] = &block_descriptor_15;
  v17 = _Block_copy(aBlock);
  v18 = a2;
  v19 = a1;

  sub_1E65E4F48();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1E623B174();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078770, &unk_1E65EAB00);
  sub_1E5E05A4C();
  sub_1E65E6738();
  MEMORY[0x1E694DDE0](0, v14, v10, v17);
  _Block_release(v17);

  (*(v7 + 8))(v10, v6);
  return (*(v11 + 8))(v14, v22);
}

void sub_1E633A788(void *a1, void *a2, char a3)
{
  v6 = *MEMORY[0x1E69E7D40] & *a2;
  v7 = [a1 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_15;
  }

  v8 = v7;
  [v7 setAlpha_];

  v9 = [a1 view];
  if (!v9)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = v9;
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];

  v11 = [a2 view];
  if (!v11)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = v11;
  v13 = [a1 view];
  if (!v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v14 = v13;
  [v12 addSubview_];

  v15 = [a1 view];
  if (!v15)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v16 = v15;
  v17 = [a2 view];
  if (!v17)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v18 = v17;
  v19 = objc_opt_self();
  v20 = *MEMORY[0x1E69DDCE0];
  v21 = *(MEMORY[0x1E69DDCE0] + 8);
  v22 = *(MEMORY[0x1E69DDCE0] + 16);
  v23 = *(MEMORY[0x1E69DDCE0] + 24);
  sub_1E65E6518();

  sub_1E5DEF738(0, &qword_1EE2D45D0, 0x1E696ACD8);
  v24 = sub_1E65E5EF8();

  [v19 activateConstraints_];

  v25 = [a1 view];
  if (!v25)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return;
  }

  v26 = v25;
  [v25 setNeedsLayout];

  [*(a2 + qword_1ED078640) stopAnimating];
  if (a3)
  {
    v27 = objc_opt_self();
    v28 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v29 = swift_allocObject();
    *(v29 + 16) = *(v6 + 80);
    *(v29 + 24) = v28;
    aBlock[4] = sub_1E633BAA8;
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E5E05AB0;
    aBlock[3] = &block_descriptor_24_0;
    v30 = _Block_copy(aBlock);

    [v27 animateWithDuration:v30 animations:0.2];
    _Block_release(v30);
    return;
  }

  v31 = [a1 view];
  if (!v31)
  {
    goto LABEL_21;
  }

  v32 = v31;
  [v31 setAlpha_];
}

void sub_1E633AB38()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong view];

    if (v2)
    {
      [v2 setAlpha_];
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_1E633ABC0(void *a1)
{
  v1 = a1;
  v2 = sub_1E633ABF4();

  return v2;
}

id sub_1E633ABF4()
{
  v1 = v0;
  v2 = sub_1E65E4F98();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1E5DEF738(0, &qword_1EE2D4600, 0x1E69E9610);
  *v6 = sub_1E65E63C8();
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8020], v2);
  v7 = sub_1E65E4FC8();
  result = (*(v3 + 8))(v6, v2);
  if (v7)
  {
    v9 = *(v1 + qword_1ED078660);
    if (v9 >= 2)
    {
      return [v9 supportedInterfaceOrientations];
    }

    else
    {
      return *(v1 + qword_1ED078648);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1E633AD48(void *a1)
{
  v1 = a1;
  v2 = sub_1E633ADC8();

  if (v2)
  {
    sub_1E5DEF738(0, &unk_1ED078270, 0x1E69DCBA0);
    v3 = sub_1E65E5EF8();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_1E633ADC8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1E65E4F98();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1E5DEF738(0, &qword_1EE2D4600, 0x1E69E9610);
  *v7 = sub_1E65E63C8();
  (*(v4 + 104))(v7, *MEMORY[0x1E69E8020], v3);
  v8 = sub_1E65E4FC8();
  result = (*(v4 + 8))(v7, v3);
  if (v8)
  {
    v10 = *&v1[qword_1ED078660];
    if (v10 >= 2)
    {
      v14 = [v10 keyCommands];
      if (v14)
      {
        v12 = v14;
        sub_1E5DEF738(0, &unk_1ED078270, 0x1E69DCBA0);
        v13 = sub_1E65E5F18();
        sub_1E6257A80(v10);
        goto LABEL_7;
      }

      sub_1E6257A80(v10);
    }

    else
    {
      v15.receiver = v1;
      v15.super_class = ObjectType;
      v11 = objc_msgSendSuper2(&v15, sel_keyCommands);
      if (v11)
      {
        v12 = v11;
        sub_1E5DEF738(0, &unk_1ED078270, 0x1E69DCBA0);
        v13 = sub_1E65E5F18();
LABEL_7:

        return v13;
      }
    }

    return 0;
  }

  __break(1u);
  return result;
}

id sub_1E633AFC8(void *a1)
{
  v1 = a1;
  sub_1E633B038();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078268, &qword_1E65FBB30);
  v2 = sub_1E65E5EF8();

  return v2;
}

uint64_t sub_1E633B038()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1E65E4F98();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1E5DEF738(0, &qword_1EE2D4600, 0x1E69E9610);
  *v7 = sub_1E65E63C8();
  (*(v4 + 104))(v7, *MEMORY[0x1E69E8020], v3);
  v8 = sub_1E65E4FC8();
  result = (*(v4 + 8))(v7, v3);
  if (v8)
  {
    v10 = *&v1[qword_1ED078660];
    if (v10 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1E65EA660;
      *(v12 + 32) = v10;
      v13 = v10;
    }

    else
    {
      v14.receiver = v1;
      v14.super_class = ObjectType;
      v11 = objc_msgSendSuper2(&v14, sel_preferredFocusEnvironments);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078268, &qword_1E65FBB30);
      v12 = sub_1E65E5F18();
    }

    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1E633B208(void *a1)
{
  v1 = a1;
  v2 = sub_1E633B2A0(&selRef_childViewControllerForStatusBarStyle);

  return v2;
}

id sub_1E633B254(void *a1)
{
  v1 = a1;
  v2 = sub_1E633B2A0(&selRef_childViewControllerForStatusBarHidden);

  return v2;
}

id sub_1E633B2A0(SEL *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_1E65E4F98();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1E5DEF738(0, &qword_1EE2D4600, 0x1E69E9610);
  *v9 = sub_1E65E63C8();
  (*(v6 + 104))(v9, *MEMORY[0x1E69E8020], v5);
  v10 = sub_1E65E4FC8();
  result = (*(v6 + 8))(v9, v5);
  if (v10)
  {
    v12 = *&v3[qword_1ED078660];
    if (v12 >= 2)
    {
      v13 = *&v3[qword_1ED078660];
      v14 = v12;
      return v13;
    }

    else
    {
      v15.receiver = v3;
      v15.super_class = ObjectType;
      return objc_msgSendSuper2(&v15, *a1);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E633B41C(void *a1)
{
  v1 = a1;
  v2 = sub_1E633B450();

  return v2 & 1;
}

id sub_1E633B450()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1E65E4F98();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1E5DEF738(0, &qword_1EE2D4600, 0x1E69E9610);
  *v7 = sub_1E65E63C8();
  (*(v4 + 104))(v7, *MEMORY[0x1E69E8020], v3);
  v8 = sub_1E65E4FC8();
  result = (*(v4 + 8))(v7, v3);
  if (v8)
  {
    v10 = *&v1[qword_1ED078660];
    if (v10 >= 2)
    {
      return [v10 prefersHomeIndicatorAutoHidden];
    }

    else
    {
      v11.receiver = v1;
      v11.super_class = ObjectType;
      return objc_msgSendSuper2(&v11, sel_prefersHomeIndicatorAutoHidden);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1E633B5BC(void *a1)
{
  v1 = a1;
  v2 = sub_1E633B2A0(&selRef_childViewControllerForHomeIndicatorAutoHidden);

  return v2;
}

void sub_1E633B608(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x50);
  v5 = a4;

  sub_1E633B8E8();
}

uint64_t sub_1E633B660(uint64_t a1)
{
  v2 = *(a1 + qword_1ED078650 + 8);

  v3 = *(a1 + qword_1ED078658 + 8);
  sub_1E5E29474(*(a1 + qword_1ED078658));
  sub_1E6257A80(*(a1 + qword_1ED078660));
  v4 = *(a1 + qword_1ED078668);

  return swift_unknownObjectRelease();
}

uint64_t sub_1E633B6FC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_10Blackbeard31RouteInterstitialViewControllerC5StateOyx_G(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1E633B75C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E633B7B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_1E633B80C(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

void sub_1E633B844()
{
  v1 = qword_1ED078640;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle_];
  *(v0 + qword_1ED078660) = 0;
  v2 = (v0 + qword_1ED078668);
  *v2 = 0;
  v2[1] = 0;
  sub_1E65E69D8();
  __break(1u);
}

uint64_t sub_1E633B918(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFA78C;

  return sub_1E63395A4(a1, v4, v5, v6);
}

uint64_t sub_1E633B9CC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFA78C;

  return sub_1E6339C08(a1, v4, v5, v6, v7);
}

void sub_1E633BAA8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  sub_1E633AB38();
}

int *sub_1E633BAC0@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = type metadata accessor for ArtworkContent();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075DC8, &qword_1E65F3948) + 48);
  sub_1E65E3598();
  sub_1E633BD64();
  sub_1E65DC298();
  sub_1E65DC288();
  sub_1E65DB248();
  v11 = *MEMORY[0x1E699DC58];
  v12 = sub_1E65DC488();
  (*(*(v12 - 8) + 104))(&v9[v10], v11, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073548, &qword_1E65ED508);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v13 = sub_1E65DAE38();
  v14 = sub_1E65DAE38();
  v15 = sub_1E65E4B48();
  v16 = 4.0;
  if (v15)
  {
    v16 = 8.0;
  }

  v17 = 16.0;
  if (v15)
  {
    v17 = 18.0;
  }

  if (v13 == v14)
  {
    v18 = v17;
  }

  else
  {
    v18 = v16;
  }

  if (v13 == v14)
  {
    v19 = 12.0;
  }

  else
  {
    v19 = 8.0;
  }

  sub_1E617BA04(v9, a1);
  result = type metadata accessor for ArtworkDescriptor();
  *(a1 + result[5]) = MEMORY[0x1E69E7CD0];
  v21 = a1 + result[6];
  *v21 = 0;
  *(v21 + 8) = v18;
  *(v21 + 16) = v18;
  *(v21 + 24) = v19;
  *(a1 + result[7]) = 1;
  v22 = (a1 + result[8]);
  *v22 = 0;
  v22[1] = 0;
  return result;
}

unint64_t sub_1E633BD64()
{
  result = qword_1ED078778;
  if (!qword_1ED078778)
  {
    sub_1E65E3598();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078778);
  }

  return result;
}

uint64_t sub_1E633BDBC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078780, &qword_1E65FD5E0);
  v30 = *(v2 - 8);
  v31 = v2;
  v3 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v29 = &v26 - v4;
  v5 = type metadata accessor for AppComposer();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - v10;
  v12 = sub_1E65E3858();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = sub_1E65E3828();
  v15 = *(v14 - 8);
  v27 = v14;
  v28 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *v0;
  sub_1E5E1DEAC(v0, v11);
  v19 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v20 = swift_allocObject();
  sub_1E5E1E6C8(v11, v20 + v19, type metadata accessor for AppComposer);
  sub_1E5E1DEAC(v1, v9);
  v21 = swift_allocObject();
  sub_1E5E1E6C8(v9, v21 + v19, type metadata accessor for AppComposer);
  sub_1E65E3848();
  sub_1E65E3818();
  type metadata accessor for AppFeature();
  sub_1E633C9C8(&qword_1EE2DBD90, type metadata accessor for AppFeature);
  sub_1E633C9C8(&qword_1ED075748, MEMORY[0x1E699ED58]);
  v22 = v29;
  v23 = v27;
  sub_1E65E4DE8();
  sub_1E65E4CC8();
  v24 = sub_1E65E4F08();
  (*(v30 + 8))(v22, v31);
  (*(v28 + 8))(v18, v23);
  return v24;
}

uint64_t sub_1E633C1D0()
{
  v2 = *(type metadata accessor for AppComposer() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E611E778(v0 + v3);
}

uint64_t sub_1E633C29C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E633C2BC, 0, 0);
}

uint64_t sub_1E633C2BC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v2 + *(type metadata accessor for AppComposer() + 20);
  v4 = v3 + *(type metadata accessor for AppEnvironment() + 28);
  v5 = AppStateService.makeAppIdleOccurredStream.getter();
  v0[4] = v6;
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v1[4] = sub_1E6220F94();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v11 = (v5 + *v5);
  v8 = v5[1];
  v9 = swift_task_alloc();
  v0[5] = v9;
  *v9 = v0;
  v9[1] = sub_1E5FE47FC;

  return v11(boxed_opaque_existential_1);
}

uint64_t sub_1E633C414(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E633C29C(a1, v1 + v5);
}

uint64_t sub_1E633C4F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v32 = sub_1E65E3838();
  v30 = *(v32 - 8);
  v3 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E58, &qword_1E65EA150);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E60, &qword_1E65EA158);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v30 - v12;
  v14 = type metadata accessor for BrowsingIdentity(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v30 - v20;
  v22 = type metadata accessor for AppState();
  v23 = *(v22 + 92);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E68, &qword_1E65EA160);
  v31 = a1;
  sub_1E65E4C98();
  sub_1E60EE7BC(v13);
  sub_1E5DFE50C(v9, &qword_1ED071E58, &qword_1E65EA150);
  v24 = *(v15 + 48);
  if (v24(v13, 1, v14) == 1)
  {
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED071E70, &qword_1E65EEAA0);
    (*(*(v25 - 8) + 56))(v21, 1, 1, v25);
    if (v24(v13, 1, v14) != 1)
    {
      sub_1E5DFE50C(v13, &qword_1ED071E60, &qword_1E65EA158);
    }
  }

  else
  {
    sub_1E5E1E6C8(v13, v21, type metadata accessor for BrowsingIdentity);
  }

  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED071E70, &qword_1E65EEAA0);
  (*(*(v26 - 8) + 56))(v19, 1, 1, v26);
  _s10Blackbeard16BrowsingIdentityO2eeoiySbAC_ACtFZ_0(v21, v19);
  sub_1E633CA10(v19);
  sub_1E633CA10(v21);
  v27 = v31 + *(v22 + 240);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074DD0, &qword_1E65F1100);
  (*(v30 + 16))(v5, v27 + *(v28 + 28), v32);
  return sub_1E65E37F8();
}

uint64_t sub_1E633C8CC(uint64_t a1)
{
  v2 = sub_1E65E3838();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65E3808();
  v7 = a1 + *(type metadata accessor for AppState() + 240);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074DD0, &qword_1E65F1100);
  return (*(v3 + 40))(v7 + *(v8 + 28), v6, v2);
}

uint64_t sub_1E633C9C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E633CA10(uint64_t a1)
{
  v2 = type metadata accessor for BrowsingIdentity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E633CA6C(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E633CA8C, 0, 0);
}

uint64_t sub_1E633CA8C()
{
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = sub_1E65E3B68();
  v0[5] = __swift_project_value_buffer(v1, qword_1EE2EA2A0);
  v2 = sub_1E65E3B48();
  v3 = sub_1E65E6338();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1E5DE9000, v2, v3, "Query current network conditions...", v4, 2u);
    MEMORY[0x1E694F1C0](v4, -1, -1);
  }

  v5 = v0[4];

  v6 = ContentAvailabilityService.queryNetworkConditions.getter();
  v0[6] = v7;
  v11 = (v6 + *v6);
  v8 = v6[1];
  v9 = swift_task_alloc();
  v0[7] = v9;
  *v9 = v0;
  v9[1] = sub_1E633CC44;

  return v11();
}

uint64_t sub_1E633CC44(char a1)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  v7 = *v2;
  *(v3 + 72) = a1;
  *(v3 + 64) = v1;

  if (v1)
  {
    v5 = sub_1E633CEAC;
  }

  else
  {
    v5 = sub_1E633CD5C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E633CD5C()
{
  v14 = v0;
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);

  v3 = sub_1E65E3B48();
  v4 = sub_1E65E6338();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 72);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    v8 = sub_1E65D8D58();
    v10 = sub_1E5DFD4B0(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1E5DE9000, v3, v4, "Network Conditions: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1E694F1C0](v7, -1, -1);
    MEMORY[0x1E694F1C0](v6, -1, -1);
  }

  **(v0 + 24) = *(v0 + 72);
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1E633CEAC()
{
  v19 = v0;
  v1 = v0[8];
  v3 = v0[5];
  v2 = v0[6];

  v4 = v1;
  v5 = sub_1E65E3B48();
  v6 = sub_1E65E6328();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[8];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136446210;
    v0[2] = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
    v11 = sub_1E65E5CE8();
    v13 = sub_1E5DFD4B0(v11, v12, &v18);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1E5DE9000, v5, v6, "Failed to query current network conditions: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1E694F1C0](v9, -1, -1);
    MEMORY[0x1E694F1C0](v8, -1, -1);
  }

  v14 = v0[8];
  swift_willThrow();
  v15 = v0[1];
  v16 = v0[8];

  return v15();
}

uint64_t sub_1E633D034(uint64_t a1)
{
  Description = type metadata accessor for ContentAvailabilityService()[-1].Description;
  v5 = (Description[80] + 16) & ~Description[80];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E633CA6C(a1, v1 + v5);
}

uint64_t sub_1E633D110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078790, &qword_1E65FD650);
  v5[6] = v6;
  v7 = *(v6 - 8);
  v5[7] = v7;
  v8 = *(v7 + 64) + 15;
  v5[8] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072878, &qword_1E65EBED8);
  v5[9] = v9;
  v10 = *(v9 - 8);
  v5[10] = v10;
  v11 = *(v10 + 64) + 15;
  v5[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E633D244, 0, 0);
}

uint64_t sub_1E633D244()
{
  v1 = v0[4];
  v2 = OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment;
  v3 = v1 + *(type metadata accessor for AppEnvironment() + 56) + v2;
  v4 = ContentAvailabilityService.makeNetworkConditionsUpdatedStream.getter();
  v0[12] = v5;
  v10 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  v0[13] = v7;
  *v7 = v0;
  v7[1] = sub_1E633D364;
  v8 = v0[11];

  return v10(v8);
}

uint64_t sub_1E633D364()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E633D47C, 0, 0);
}

uint64_t sub_1E633D47C()
{
  v1 = v0[11];
  v3 = v0[8];
  v2 = v0[9];
  sub_1E65E60F8();
  v4 = *(MEMORY[0x1E69E8678] + 4);
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_1E633D530;
  v6 = v0[8];
  v7 = v0[6];

  return MEMORY[0x1EEE6D9C8](v0 + 25, 0, 0, v7);
}

uint64_t sub_1E633D530()
{
  v1 = *(*v0 + 112);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E633D62C, 0, 0);
}

uint64_t sub_1E633D62C()
{
  v18 = v0;
  v1 = *(v0 + 25);
  if (v1 == 3)
  {
    v3 = *(v0 + 80);
    v2 = *(v0 + 88);
    v4 = *(v0 + 72);
    (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));
    (*(v3 + 8))(v2, v4);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v7 = sub_1E65E3B68();
    __swift_project_value_buffer(v7, qword_1EE2EA2A0);
    v8 = sub_1E65E3B48();
    v9 = sub_1E65E6338();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v17 = v11;
      *v10 = 136446210;
      v12 = sub_1E65D8D58();
      v14 = sub_1E5DFD4B0(v12, v13, &v17);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_1E5DE9000, v8, v9, "Network Conditions: %{public}s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x1E694F1C0](v11, -1, -1);
      MEMORY[0x1E694F1C0](v10, -1, -1);
    }

    *(v0 + 16) = v1;
    *(v0 + 24) = 0;
    sub_1E65E6058();
    *(v0 + 120) = sub_1E65E6048();
    v16 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E633D880, v16, v15);
  }
}

uint64_t sub_1E633D880()
{
  v1 = v0[15];
  v2 = v0[5];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078788, &qword_1E65FD608);
  sub_1E65E4E38();
  v3 = *(MEMORY[0x1E69E8678] + 4);
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_1E633D530;
  v5 = v0[8];
  v6 = v0[6];

  return MEMORY[0x1EEE6D9C8](v0 + 25, 0, 0, v6);
}

uint64_t sub_1E633D954(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078788, &qword_1E65FD608) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E633D110(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1E633DA6C(void *a1, uint64_t a2)
{
  v167 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v160 = &v140 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073570, &unk_1E65F4570);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v172 = &v140 - v8;
  v9 = sub_1E65D8F28();
  v179 = *(v9 - 8);
  v180 = v9;
  v10 = *(v179 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v171 = &v140 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E65D7848();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v157 = &v140 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E65E5C28();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v156 = &v140 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v177 = &v140 - v20;
  v21 = sub_1E65D8C68();
  v175 = *(v21 - 8);
  v176 = v21;
  v22 = *(v175 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v174 = &v140 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073578, &qword_1E65F0E60);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v173 = &v140 - v26;
  v27 = type metadata accessor for PageMetricsClick();
  v28 = *(v27 - 8);
  v163 = v27;
  v164 = v28;
  v29 = *(v28 + 64);
  v30 = MEMORY[0x1EEE9AC00](v27);
  v165 = &v140 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v166 = &v140 - v31;
  v32 = sub_1E65D76F8();
  v169 = *(v32 - 8);
  v170 = v32;
  v33 = *(v169 + 64);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v161 = &v140 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v168 = &v140 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077750, &unk_1E66011C0);
  v38 = *(*(v37 - 8) + 64);
  v39 = MEMORY[0x1EEE9AC00](v37 - 8);
  v162 = &v140 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x1EEE9AC00](v39);
  v159 = &v140 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v45 = &v140 - v44;
  MEMORY[0x1EEE9AC00](v43);
  v47 = &v140 - v46;
  v48 = sub_1E65E20A8();
  v178 = *(v48 - 8);
  v49 = *(v178 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v140 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073718, &qword_1E65ED978);
  v53 = *(*(v52 - 8) + 64);
  v54 = MEMORY[0x1EEE9AC00](v52 - 8);
  v56 = &v140 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54);
  v58 = &v140 - v57;
  v59 = sub_1E65E2118();
  v60 = *(*(v59 - 8) + 64);
  MEMORY[0x1EEE9AC00](v59 - 8);
  v62 = &v140 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E633F02C(a2, v62, MEMORY[0x1E699F1F8]);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078798, &qword_1E65FD658);
  result = (*(*(v63 - 8) + 48))(v62, 2, v63);
  if (!result)
  {
    v152 = v45;
    v153 = v29;
    v181 = v51;
    v65 = *&v62[*(v63 + 48)];
    sub_1E5FAB460(v62, v58, &qword_1ED073718, &qword_1E65ED978);
    sub_1E633EE38(v58, v56);
    v66 = v178;
    if ((*(v178 + 48))(v56, 1, v48) == 1)
    {
      sub_1E5DFE50C(v58, &qword_1ED073718, &qword_1E65ED978);
      v67 = v56;
    }

    else
    {
      v144 = v65;
      v147 = v58;
      v148 = v48;
      (*(v66 + 32))(v181, v56, v48);
      sub_1E65E2068();
      v68 = sub_1E65E1FC8();
      v69 = *(v68 - 8);
      v154 = *(v69 + 48);
      v155 = v69 + 48;
      v70 = v154(v47, 1, v68);
      v146 = v68;
      if (v70 == 1)
      {
        sub_1E5DFE50C(v47, &unk_1ED077750, &unk_1E66011C0);
        v71 = 0;
        v72 = 0xE000000000000000;
      }

      else
      {
        v73 = v168;
        sub_1E65E1FB8();
        (*(v69 + 8))(v47, v68);
        v71 = sub_1E65D76C8();
        v72 = v74;
        (*(v169 + 8))(v73, v170);
      }

      v75 = v179;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072370, &qword_1E65EABA0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1E65EA670;
      *(inited + 32) = sub_1E65D9228();
      *(inited + 40) = v77;
      *(inited + 48) = v71;
      *(inited + 56) = v72;
      v151 = sub_1E6427498(inited);
      swift_setDeallocating();
      sub_1E5DFE50C(inited + 32, &qword_1ED072378, &qword_1E65EABA8);
      v78 = sub_1E65D9D78();
      (*(*(v78 - 8) + 56))(v173, 1, 1, v78);
      (*(v175 + 104))(v174, *MEMORY[0x1E69CBAA0], v176);
      v79 = sub_1E65D74E8();
      (*(*(v79 - 8) + 56))(v177, 1, 1, v79);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E58, &qword_1E65F0E90);
      v80 = *(sub_1E65D86A8() - 8);
      v81 = (*(v80 + 80) + 32) & ~*(v80 + 80);
      v143 = *(v80 + 72);
      v82 = swift_allocObject();
      *(v82 + 16) = xmmword_1E65EB9E0;
      v145 = v82;
      v150 = v82 + v81;
      v83 = sub_1E65E2088();
      if (v83)
      {
        v84 = v83 == 1;
        if (v83 == 1)
        {
          v85 = 0xD000000000000015;
        }

        else
        {
          v85 = 0xD000000000000012;
        }

        v142 = v85;
        if (v84)
        {
          v86 = 0x80000001E66155E0;
        }

        else
        {
          v86 = 0x80000001E66155C0;
        }

        v141 = v86;
      }

      else
      {
        v141 = 0xED00006E616C5072;
        v142 = 0x756F59646C697542;
      }

      v87 = v158;
      v156 = _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
      sub_1E65E5BA8();
      type metadata accessor for LocalizationBundle();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v89 = [objc_opt_self() bundleForClass_];
      v90 = *v87;
      swift_getKeyPath();
      sub_1E65E4EC8();

      sub_1E65E5D48();
      v91 = *(v75 + 104);
      LODWORD(v157) = *MEMORY[0x1E69CBCC8];
      v158 = v91;
      (v91)(v171);

      sub_1E65D8678();
      sub_1E65E2088();
      v149 = v69;
      _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
      sub_1E65E2058();
      (v158)(v171, *MEMORY[0x1E69CBCD8], v180);
      sub_1E65D8678();
      v92 = sub_1E65DA208();
      (*(*(v92 - 8) + 56))(v172, 1, 1, v92);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072970, &qword_1E65EC120);
      v93 = swift_initStackObject();
      *(v93 + 16) = xmmword_1E65EA190;
      *(v93 + 32) = 0;
      v171 = (v93 + 32);
      v94 = v152;
      sub_1E65E2068();
      v95 = v146;
      v96 = v154(v94, 1, v146);
      v179 = v75 + 104;
      if (v96 == 1)
      {
        sub_1E5DFE50C(v94, &unk_1ED077750, &unk_1E66011C0);
        v97 = 0;
      }

      else
      {
        v97 = sub_1E65E1FA8();
        (*(v149 + 8))(v94, v95);
      }

      v98 = v169;
      v99 = v170;
      v100 = v168;
      v182 = v97;
      LOBYTE(v183) = v96 == 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0762B8, &qword_1E65F52F8);
      sub_1E61D2F88(&qword_1ED0787A0, &qword_1ED0762B8, &qword_1E65F52F8);
      sub_1E65E6848();
      *(v93 + 80) = 3;
      v101 = v159;
      sub_1E65E2068();
      if (v154(v101, 1, v95) == 1)
      {
        sub_1E5DFE50C(v101, &unk_1ED077750, &unk_1E66011C0);
        v102 = 0;
        v103 = 0;
      }

      else
      {
        sub_1E65E1FB8();
        (*(v149 + 8))(v101, v95);
        v102 = sub_1E65D76C8();
        v103 = v104;
        (*(v98 + 8))(v100, v99);
      }

      v182 = v102;
      v183 = v103;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072978, &unk_1E65F0E80);
      sub_1E61D2F88(&qword_1ED072980, &qword_1ED072978, &unk_1E65F0E80);
      v105 = sub_1E65E6848();
      *(v93 + 128) = 9;
      v106 = v161;
      MEMORY[0x1E6949A30](v105);
      v107 = sub_1E65D76C8();
      v109 = v108;
      (*(v98 + 8))(v106, v99);
      v182 = v107;
      v183 = v109;
      sub_1E65E6848();
      *(v93 + 176) = 7;
      v110 = v162;
      sub_1E65E2068();
      if (v154(v110, 1, v95) == 1)
      {
        sub_1E5DFE50C(v110, &unk_1ED077750, &unk_1E66011C0);
        v111 = 0;
      }

      else
      {
        sub_1E65E1F88();
        (*(v149 + 8))(v110, v95);
        v111 = sub_1E65E5F78();
      }

      v182 = v111;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0787A8, &qword_1E65FD688);
      sub_1E633EEA8();
      sub_1E65E6848();
      v170 = sub_1E6427784(v93);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072988, &qword_1E65EC128);
      swift_arrayDestroy();
      v112 = sub_1E65E2088();
      if (v112)
      {
        v114 = v165;
        v113 = v166;
        v115 = v180;
        v116 = v163;
        if (v112 == 1)
        {
          v117 = 0x80000001E66155E0;
          v118 = 0xD000000000000015;
        }

        else
        {
          v117 = 0x80000001E66155C0;
          v118 = 0xD000000000000012;
        }
      }

      else
      {
        v114 = v165;
        v113 = v166;
        v115 = v180;
        v116 = v163;
        v117 = 0xED00006E616C5072;
        v118 = 0x756F59646C697542;
      }

      (v158)(v113 + v116[14], v157, v115);
      v119 = v116[15];
      v120 = *MEMORY[0x1E69CC448];
      v121 = sub_1E65D9908();
      v122 = *(v121 - 8);
      (*(v122 + 104))(v113 + v119, v120, v121);
      (*(v122 + 56))(v113 + v119, 0, 1, v121);
      sub_1E5FAB460(v173, v113, &qword_1ED073578, &qword_1E65F0E60);
      (*(v175 + 32))(v113 + v116[5], v174, v176);
      sub_1E5FAB460(v177, v113 + v116[6], &qword_1ED072340, &qword_1E65EA410);
      *(v113 + v116[7]) = v145;
      sub_1E5FAB460(v172, v113 + v116[8], &qword_1ED073570, &unk_1E65F4570);
      v123 = (v113 + v116[9]);
      *v123 = 0;
      v123[1] = 0;
      v124 = (v113 + v116[10]);
      *v124 = 0;
      v124[1] = 0;
      *(v113 + v116[11]) = v170;
      v125 = (v113 + v116[12]);
      *v125 = 0;
      v125[1] = 0;
      v126 = (v113 + v116[13]);
      *v126 = v118;
      v126[1] = v117;
      v127 = sub_1E65E60A8();
      v128 = v160;
      (*(*(v127 - 8) + 56))(v160, 1, 1, v127);
      v129 = v167;
      v130 = *v167;
      v131 = v167[3];
      v132 = v167[5];
      v133 = v167[7];
      v180 = v167[9];
      sub_1E633F02C(v113, v114, type metadata accessor for PageMetricsClick);
      v134 = (*(v164 + 80) + 112) & ~*(v164 + 80);
      v135 = swift_allocObject();
      v136 = v114;
      v137 = v135;
      *(v135 + 16) = 0;
      *(v135 + 24) = 0;
      v138 = v129[3];
      *(v135 + 64) = v129[2];
      *(v135 + 80) = v138;
      *(v135 + 96) = v129[4];
      v139 = v129[1];
      *(v135 + 32) = *v129;
      *(v135 + 48) = v139;
      sub_1E633F094(v136, v135 + v134);
      swift_unknownObjectRetain();

      sub_1E6059EAC(0, 0, v128, &unk_1E65FD6A0, v137);

      sub_1E5FC0990(v113);
      (*(v178 + 8))(v181, v148);
      v67 = v147;
    }

    return sub_1E5DFE50C(v67, &qword_1ED073718, &qword_1E65ED978);
  }

  return result;
}

uint64_t sub_1E633EE38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073718, &qword_1E65ED978);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E633EEA8()
{
  result = qword_1ED0787B0;
  if (!qword_1ED0787B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0787A8, &qword_1E65FD688);
    sub_1E633EF2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0787B0);
  }

  return result;
}

unint64_t sub_1E633EF2C()
{
  result = qword_1ED0787B8;
  if (!qword_1ED0787B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0787C0, &qword_1E65FD690);
    sub_1E633EFB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0787B8);
  }

  return result;
}

unint64_t sub_1E633EFB0()
{
  result = qword_1ED0787C8;
  if (!qword_1ED0787C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED0735C0, &qword_1E65EABD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0787C8);
  }

  return result;
}

uint64_t sub_1E633F02C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E633F094(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageMetricsClick();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E633F0F8(uint64_t a1)
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

uint64_t sub_1E633F21C(uint64_t a1, uint64_t *a2, unsigned int *a3, char a4)
{
  v7 = sub_1E65DDE68();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E18, &qword_1E65FD850);
  __swift_allocate_value_buffer(v12, a2);
  __swift_project_value_buffer(v12, a2);
  (*(v8 + 104))(v11, *a3, v7);
  v14[15] = a4;
  return sub_1E65DDC88();
}

uint64_t sub_1E633F354()
{
  sub_1E6344CC8(v0 + OBJC_IVAR____TtC10Blackbeard16OnboardingDetour_state, type metadata accessor for OnboardingDetour.State);
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1E633F3D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E633F3FC, a2, 0);
}

uint64_t sub_1E633F3FC()
{
  v1 = *(v0 + 56);
  v2 = sub_1E6344D8C(&qword_1EE2DA208, type metadata accessor for OnboardingDetour);
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

  return MEMORY[0x1EEE6DE38](v8, v10, v2, 0xD000000000000024, 0x80000001E66103D0, sub_1E6344DD4, v3, v7);
}

uint64_t sub_1E633F54C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v48 = a6;
  v50 = a5;
  v54 = a1;
  v55 = a4;
  v8 = type metadata accessor for RouteDestination();
  v51 = *(v8 - 8);
  v9 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v53 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AppComposer();
  v47 = *(v10 - 8);
  v11 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v49 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v52 = &v46 - v14;
  v15 = type metadata accessor for OnboardingDetour.State(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v46 - v20;
  v22 = OBJC_IVAR____TtC10Blackbeard16OnboardingDetour_state;
  swift_beginAccess();
  sub_1E5E1D894(a2 + v22, v21, type metadata accessor for OnboardingDetour.State);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071EE0, &qword_1E65EA1E0);
  v24 = *(v23 - 8);
  v25 = (*(v24 + 48))(v21, 1, v23);
  sub_1E6344CC8(v21, type metadata accessor for OnboardingDetour.State);
  if (v25 == 1)
  {
    v26 = &v19[*(v23 + 48)];
    v27 = a3;
    v28 = *(v23 + 64);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0722F0, &unk_1E65EA1F0);
    (*(*(v29 - 8) + 16))(v19, v54, v29);
    v46 = v27;
    v30 = v55;
    *v26 = v27;
    *(v26 + 1) = v30;
    v54 = v9;
    v31 = v50;
    sub_1E5E1D894(v50, &v19[v28], type metadata accessor for RouteDestination);
    (*(v24 + 56))(v19, 0, 1, v23);
    swift_beginAccess();
    swift_unknownObjectRetain();
    sub_1E6344D28(v19, a2 + v22);
    swift_endAccess();
    v32 = sub_1E65E60A8();
    v33 = v52;
    (*(*(v32 - 8) + 56))(v52, 1, 1, v32);
    v34 = v49;
    sub_1E5E1D894(v48, v49, type metadata accessor for AppComposer);
    v35 = v53;
    sub_1E5E1D894(v31, v53, type metadata accessor for RouteDestination);
    v36 = sub_1E6344D8C(&qword_1EE2DA208, type metadata accessor for OnboardingDetour);
    v37 = (*(v47 + 80) + 40) & ~*(v47 + 80);
    v38 = (v11 + *(v51 + 80) + v37) & ~*(v51 + 80);
    v39 = (v54 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
    v40 = swift_allocObject();
    v40[2] = a2;
    v40[3] = v36;
    v40[4] = a2;
    sub_1E5E1E048(v34, v40 + v37, type metadata accessor for AppComposer);
    sub_1E5E1E048(v35, v40 + v38, type metadata accessor for RouteDestination);
    v41 = (v40 + v39);
    v42 = v55;
    *v41 = v46;
    v41[1] = v42;
    swift_retain_n();
    swift_unknownObjectRetain();
    sub_1E64B80F8(0, 0, v33, &unk_1E65FD780, v40);
  }

  else
  {
    sub_1E6344DE4();
    v44 = swift_allocError();
    *v45 = 0;
    v56 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0722F0, &unk_1E65EA1F0);
    return sub_1E65E5FE8();
  }
}

uint64_t sub_1E633FAC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v10 = *(type metadata accessor for RouteDestination() - 8);
  v8[7] = v10;
  v8[8] = *(v10 + 64);
  v8[9] = swift_task_alloc();
  v11 = *(type metadata accessor for AppComposer() - 8);
  v8[10] = v11;
  v8[11] = *(v11 + 64);
  v8[12] = swift_task_alloc();
  v12 = sub_1E65E1B28();
  v8[13] = v12;
  v13 = *(v12 - 8);
  v8[14] = v13;
  v14 = *(v13 + 64) + 15;
  v8[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E633FC54, a4, 0);
}

uint64_t sub_1E633FC54()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v6 = *(v0 + 56);
  v5 = *(v0 + 64);
  v8 = *(v0 + 24);
  v7 = *(v0 + 32);
  v9 = *(v0 + 16);
  sub_1E65E1BB8();
  v11 = v10;
  sub_1E5E1D894(v8, v1, type metadata accessor for AppComposer);
  sub_1E5E1D894(v7, v3, type metadata accessor for RouteDestination);
  v12 = *(v4 + 80);
  *(v0 + 176) = v12;
  v13 = (v12 + 24) & ~v12;
  v14 = (v13 + v2 + *(v6 + 80)) & ~*(v6 + 80);
  v15 = swift_allocObject();
  *(v0 + 128) = v15;
  *(v15 + 16) = v9;
  sub_1E5E1E048(v1, v15 + v13, type metadata accessor for AppComposer);
  sub_1E5E1E048(v3, v15 + v14, type metadata accessor for RouteDestination);
  v16 = *(MEMORY[0x1E69CAAC0] + 4);

  v17 = swift_task_alloc();
  *(v0 + 136) = v17;
  *v17 = v0;
  v17[1] = sub_1E633FE1C;
  v18 = *(v0 + 120);
  v19 = *(v0 + 104);
  v20.n128_u64[0] = v11;

  return MEMORY[0x1EEE343F0](v20);
}

uint64_t sub_1E633FE1C()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v9 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = *(v2 + 16);
    v5 = sub_1E63402C8;
  }

  else
  {
    v6 = *(v2 + 128);
    v7 = *(v2 + 16);

    v5 = sub_1E633FF44;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1E633FF44()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 40);
  v16 = *(v0 + 48);
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = (*(v0 + 176) + 24) & ~*(v0 + 176);
  ObjectType = swift_getObjectType();
  sub_1E5E1D894(v4, v1, type metadata accessor for AppComposer);
  v8 = swift_allocObject();
  *(v0 + 152) = v8;
  *(v8 + 16) = v5;
  sub_1E5E1E048(v1, v8 + v6, type metadata accessor for AppComposer);
  v9 = *(v16 + 24);

  v15 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v0 + 160) = v11;
  *v11 = v0;
  v11[1] = sub_1E634010C;
  v13 = *(v0 + 40);
  v12 = *(v0 + 48);

  return v15(sub_1E6347618, v8, ObjectType, v12);
}

uint64_t sub_1E634010C()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 16);
  v5 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E6340238, v3, 0);
}

uint64_t sub_1E6340238()
{
  (*(v0[14] + 8))(v0[15], v0[13]);
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[9];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E63402C8()
{
  v1 = v0[16];

  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v2 = v0[18];
  v3 = sub_1E65E3B68();
  __swift_project_value_buffer(v3, qword_1EE2EA2A0);
  v4 = v2;
  v5 = sub_1E65E3B48();
  v6 = sub_1E65E6338();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[18];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1E5DE9000, v5, v6, "[Onboarding] Skipping onboarding detour activation: %{public}@", v8, 0xCu);
    sub_1E5DFE50C(v9, &unk_1ED072130, &qword_1E65EA840);
    MEMORY[0x1E694F1C0](v9, -1, -1);
    MEMORY[0x1E694F1C0](v8, -1, -1);
  }

  v12 = swift_task_alloc();
  v0[21] = v12;
  *v12 = v0;
  v12[1] = sub_1E6340498;
  v14 = v0[2];
  v13 = v0[3];

  return sub_1E63438EC(0, v13);
}

uint64_t sub_1E6340498()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E63405A8, v2, 0);
}

uint64_t sub_1E63405A8()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 96);
  v3 = *(v0 + 72);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1E6340628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[105] = a4;
  v4[99] = a3;
  v4[93] = a2;
  v4[87] = a1;
  v5 = *(type metadata accessor for AppComposer() - 8);
  v4[106] = v5;
  v4[107] = *(v5 + 64);
  v4[108] = swift_task_alloc();
  v6 = sub_1E65E1B28();
  v4[109] = v6;
  v7 = *(v6 - 8);
  v4[110] = v7;
  v8 = *(v7 + 64) + 15;
  v4[111] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6340754, 0, 0);
}

uint64_t sub_1E6340754()
{
  v1 = v0[111];
  v2 = v0[109];
  v3 = v0[108];
  v4 = v0[107];
  v5 = v0[106];
  v6 = v0[93];
  sub_1E5E1D894(v0[99], v3, type metadata accessor for AppComposer);
  v7 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v8 = swift_allocObject();
  v0[112] = v8;
  *(v8 + 16) = v6;
  sub_1E5E1E048(v3, v8 + v7, type metadata accessor for AppComposer);

  swift_asyncLet_begin();
  v9 = swift_task_alloc();
  v0[113] = v9;
  *v9 = v0;
  v9[1] = sub_1E63408B8;
  v10 = v0[105];
  v11 = v0[99];
  v12 = v0[93];

  return sub_1E6341ACC(v11, v10);
}

uint64_t sub_1E63408B8()
{
  v2 = *v1;
  v3 = *(*v1 + 904);
  v7 = *v1;
  *(*v1 + 912) = v0;

  if (v0)
  {
    v4 = *(v2 + 888);

    return MEMORY[0x1EEE6DEB0](v2 + 16, v4, sub_1E6340B5C, v2 + 656);
  }

  else
  {
    v5 = *(v2 + 888);

    return MEMORY[0x1EEE6DEC0](v2 + 16, v5, sub_1E63409FC, v2 + 704);
  }
}

uint64_t sub_1E63409FC()
{
  *(v1 + 920) = v0;
  if (v0)
  {
    return MEMORY[0x1EEE6DEB0](v1 + 16, *(v1 + 888), sub_1E6340BFC, v1 + 752);
  }

  else
  {
    return MEMORY[0x1EEE6DFA0](sub_1E6340A40, 0, 0);
  }
}

uint64_t sub_1E6340A40()
{
  (*(v0[110] + 16))(v0[87], v0[111], v0[109]);
  v1 = v0[111];

  return MEMORY[0x1EEE6DEB0](v0 + 2, v1, sub_1E6340AC4, v0 + 100);
}

uint64_t sub_1E6340AE0()
{
  v1 = v0[112];
  v2 = v0[111];
  v3 = v0[108];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E6340B78()
{
  v1 = v0[114];
  v2 = v0[112];
  v3 = v0[111];
  v4 = v0[108];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E6340C18()
{
  v1 = v0[115];
  v2 = v0[112];
  v3 = v0[111];
  v4 = v0[108];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E6340C9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1E5DFA78C;

  return sub_1E6340D4C(a1, a3);
}

uint64_t sub_1E6340D4C(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0787E0, &qword_1E65FD880) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0787E8, &qword_1E65FD888) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073528, &unk_1E65FD890);
  v3[13] = v6;
  v7 = *(v6 - 8);
  v3[14] = v7;
  v8 = *(v7 + 64) + 15;
  v3[15] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0755C8, &qword_1E65F1B88);
  v3[16] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073568, &qword_1E65FD8A0);
  v3[19] = v11;
  v12 = *(v11 - 8);
  v3[20] = v12;
  v13 = *(v12 + 64) + 15;
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v14 = sub_1E65E1B28();
  v3[23] = v14;
  v15 = *(v14 - 8);
  v3[24] = v15;
  v16 = *(v15 + 64) + 15;
  v3[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6340FB0, v2, 0);
}

uint64_t sub_1E6340FB0()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  v4 = *(v0 + 144);
  v5 = *(v0 + 128);
  *(v0 + 208) = **(v0 + 64);
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65E4C98();
  v6 = *(v3 + 8);
  *(v0 + 216) = v6;
  *(v0 + 224) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        sub_1E5DFE50C(*(v0 + 144), &qword_1ED0755C8, &qword_1E65F1B88);
        sub_1E6344DE4();
        swift_allocError();
        *v28 = 8;
        swift_willThrow();
        v29 = *(v0 + 200);
        v31 = *(v0 + 168);
        v30 = *(v0 + 176);
        v33 = *(v0 + 136);
        v32 = *(v0 + 144);
        v34 = *(v0 + 120);
        v36 = *(v0 + 88);
        v35 = *(v0 + 96);
        v37 = *(v0 + 80);

        v27 = *(v0 + 8);
        goto LABEL_11;
      }

      v9 = *(v0 + 192);
      v8 = *(v0 + 200);
      v10 = *(v0 + 184);
      v11 = *(v0 + 144);
      v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0755D0, &qword_1E65FD8D0) + 48);
      v13 = *(v9 + 32);
      v13(v8, v11, v10);
      v14 = sub_1E65D76A8();
      (*(*(v14 - 8) + 8))(v11 + v12, v14);
    }

    else
    {
      v13 = *(*(v0 + 192) + 32);
      v13(*(v0 + 200), *(v0 + 144), *(v0 + 184));
    }

    v13(*(v0 + 56), *(v0 + 200), *(v0 + 184));
    v18 = *(v0 + 200);
    v19 = *(v0 + 168);
    v20 = *(v0 + 176);
    v22 = *(v0 + 136);
    v21 = *(v0 + 144);
    v23 = *(v0 + 120);
    v25 = *(v0 + 88);
    v24 = *(v0 + 96);
    v26 = *(v0 + 80);

    v27 = *(v0 + 8);
LABEL_11:

    return v27();
  }

  v15 = *(v0 + 64);
  *(v0 + 232) = *(v15 + *(type metadata accessor for AppComposer() + 24));
  *(v0 + 240) = sub_1E65E6058();
  *(v0 + 248) = sub_1E65E6048();
  v17 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6341318, v17, v16);
}

uint64_t sub_1E6341318()
{
  v1 = v0[31];
  v2 = v0[29];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[11];

  sub_1E5E20198(11, (v0 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D18, &qword_1E65EECF8);
  v6 = swift_dynamicCast();
  v7 = *(v4 + 56);
  if (v6)
  {
    v8 = v0[13];
    v9 = v0[14];
    v11 = v0[11];
    v10 = v0[12];
    v7(v11, 0, 1, v8);
    (*(v9 + 32))(v10, v11, v8);
    v12 = 0;
  }

  else
  {
    v13 = v0[11];
    v12 = 1;
    v7(v13, 1, 1, v0[13]);
    sub_1E5DFE50C(v13, &qword_1ED0787E8, &qword_1E65FD888);
  }

  v14 = v0[9];
  v7(v0[12], v12, 1, v0[13]);

  return MEMORY[0x1EEE6DFA0](sub_1E634147C, v14, 0);
}

uint64_t sub_1E634147C()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1E5DFE50C(v3, &qword_1ED0787E8, &qword_1E65FD888);
    sub_1E6344DE4();
    swift_allocError();
    *v4 = 9;
    swift_willThrow();
    v5 = v0[25];
    v7 = v0[21];
    v6 = v0[22];
    v9 = v0[17];
    v8 = v0[18];
    v10 = v0[15];
    v12 = v0[11];
    v11 = v0[12];
    v13 = v0[10];

    v14 = v0[1];

    return v14();
  }

  else
  {
    v16 = v0[30];
    (*(v2 + 32))(v0[15], v3, v1);
    v0[32] = sub_1E65E6048();
    v18 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6341658, v18, v17);
  }
}

uint64_t sub_1E6341658()
{
  v1 = v0[32];
  v2 = v0[15];
  v3 = v0[13];

  sub_1E65E4E28();
  v4 = *(MEMORY[0x1E69CAD78] + 4);
  v5 = swift_task_alloc();
  v0[33] = v5;
  *v5 = v0;
  v5[1] = sub_1E6341708;
  v6.n128_u64[0] = 0x3FB999999999999ALL;

  return MEMORY[0x1EEE34840](v6);
}

uint64_t sub_1E6341708()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v4 = *v1;

  v5 = *(v2 + 72);
  if (v0)
  {

    v6 = sub_1E6347CEC;
  }

  else
  {
    v6 = sub_1E6341840;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1E6341840()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[26];
  v4 = v0[24];
  v37 = v0[23];
  v5 = v0[21];
  v6 = v0[19];
  v7 = v0[17];
  v8 = v0[10];
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65E4C98();
  sub_1E60F00A8(v8);
  sub_1E5DFE50C(v7, &qword_1ED0755C8, &qword_1E65F1B88);
  v2(v5, v6);
  if ((*(v4 + 48))(v8, 1, v37) == 1)
  {
    v10 = v0[14];
    v9 = v0[15];
    v11 = v0[13];
    sub_1E5DFE50C(v0[10], &qword_1ED0787E0, &qword_1E65FD880);
    sub_1E6344DE4();
    swift_allocError();
    *v12 = 10;
    swift_willThrow();
    (*(v10 + 8))(v9, v11);
    v13 = v0[25];
    v15 = v0[21];
    v14 = v0[22];
    v17 = v0[17];
    v16 = v0[18];
    v18 = v0[15];
    v20 = v0[11];
    v19 = v0[12];
    v21 = v0[10];
  }

  else
  {
    v23 = v0[23];
    v24 = v0[24];
    v25 = v0[10];
    v26 = v0[7];
    (*(v0[14] + 8))(v0[15], v0[13]);
    (*(v24 + 32))(v26, v25, v23);
    v27 = v0[25];
    v28 = v0[21];
    v29 = v0[22];
    v31 = v0[17];
    v30 = v0[18];
    v32 = v0[15];
    v34 = v0[11];
    v33 = v0[12];
    v35 = v0[10];
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_1E6341ACC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752D8, &qword_1E660CC30) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = sub_1E65D76A8();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v8 = sub_1E65D92D8();
  v3[10] = v8;
  v9 = *(v8 - 8);
  v3[11] = v9;
  v10 = *(v9 + 64) + 15;
  v3[12] = swift_task_alloc();
  v11 = type metadata accessor for RouteSource(0);
  v3[13] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v3[14] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E18, &qword_1E65FD850);
  v3[15] = v13;
  v14 = *(v13 - 8);
  v3[16] = v14;
  v15 = *(v14 + 64) + 15;
  v3[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6341CC8, v2, 0);
}

uint64_t sub_1E6341CC8()
{
  if (qword_1EE2DA2E0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 120);
  v4 = __swift_project_value_buffer(v3, qword_1EE2DA2E8);
  v5 = *(v2 + 16);
  v5(v1, v4, v3);
  sub_1E65DDC48();
  v6 = *(v2 + 8);
  v6(v1, v3);
  if (*(v0 + 280) != 1)
  {
    v7 = 1;
    goto LABEL_7;
  }

  if (*(*(v0 + 32) + OBJC_IVAR____TtC10Blackbeard16OnboardingDetour_hasPresentedOnboardingThisLaunch))
  {
    v7 = 2;
LABEL_7:
    sub_1E6344DE4();
    swift_allocError();
    *v8 = v7;
    swift_willThrow();
    v9 = *(v0 + 136);
    v10 = *(v0 + 112);
    v11 = *(v0 + 96);
    v13 = *(v0 + 64);
    v12 = *(v0 + 72);
    v14 = *(v0 + 40);

    v15 = *(v0 + 8);
LABEL_8:

    return v15();
  }

  sub_1E6347AE8(*(v0 + 24));
  if (qword_1EE2DA2B8 != -1)
  {
    swift_once();
  }

  v17 = *(v0 + 136);
  v18 = *(v0 + 120);
  v19 = __swift_project_value_buffer(v18, qword_1EE2DA2C0);
  v5(v17, v19, v18);
  sub_1E65DDC48();
  v6(v17, v18);
  if (*(v0 + 281))
  {
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v20 = sub_1E65E3B68();
    __swift_project_value_buffer(v20, qword_1EE2EA2A0);
    v21 = sub_1E65E3B48();
    v22 = sub_1E65E6338();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1E5DE9000, v21, v22, "[Onboarding] ForceOnboardingPresentation enabled", v23, 2u);
      MEMORY[0x1E694F1C0](v23, -1, -1);
    }

    v24 = *(v0 + 136);
    v25 = *(v0 + 112);
    v26 = *(v0 + 96);
    v28 = *(v0 + 64);
    v27 = *(v0 + 72);
    v29 = *(v0 + 40);

    v15 = *(v0 + 8);
    goto LABEL_8;
  }

  v30 = *(v0 + 16);
  v31 = *(type metadata accessor for AppComposer() + 20);
  *(v0 + 272) = v31;
  v32 = swift_task_alloc();
  *(v0 + 144) = v32;
  *v32 = v0;
  v32[1] = sub_1E634208C;
  v33 = *(v0 + 32);

  return sub_1E6346124(v30 + v31);
}

uint64_t sub_1E634208C()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v2 + 136);
    v6 = *(v2 + 112);
    v7 = *(v2 + 96);
    v9 = *(v2 + 64);
    v8 = *(v2 + 72);
    v10 = *(v2 + 40);

    v11 = *(v4 + 8);

    return v11();
  }

  else
  {
    v13 = *(v2 + 272);
    v14 = *(v2 + 16);
    v15 = swift_task_alloc();
    *(v2 + 152) = v15;
    *v15 = v4;
    v15[1] = sub_1E6342254;
    v16 = *(v2 + 32);

    return sub_1E6346740(v14 + v13);
  }
}

uint64_t sub_1E6342254()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;

  if (v0)
  {
    v5 = v2[17];
    v6 = v2[14];
    v7 = v2[12];
    v9 = v2[8];
    v8 = v2[9];
    v10 = v2[5];

    v11 = *(v4 + 8);

    return v11();
  }

  else
  {
    v13 = v2[4];

    return MEMORY[0x1EEE6DFA0](sub_1E63423DC, v13, 0);
  }
}

uint64_t sub_1E63423DC()
{
  v1 = *(v0 + 16) + *(v0 + 272);
  v2 = type metadata accessor for AppEnvironment();
  *(v0 + 160) = v2;
  v3 = v1 + *(v2 + 32);
  v4 = ArchivedSessionService.requireNoArchivedSessions.getter();
  *(v0 + 168) = v5;
  v9 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  *(v0 + 176) = v7;
  *v7 = v0;
  v7[1] = sub_1E63424EC;

  return v9();
}

uint64_t sub_1E63424EC()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;
  *(*v1 + 184) = v0;

  v5 = *(v2 + 32);
  if (v0)
  {
    v6 = sub_1E63428C8;
  }

  else
  {
    v6 = sub_1E6342618;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1E6342618()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  v4 = *(v0 + 24);

  v5 = *(type metadata accessor for RouteDestination() + 20);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v2) = _s10Blackbeard11RouteSourceO2eeoiySbAC_ACtFZ_0(v4 + v5, v3);
  sub_1E6344CC8(v3, type metadata accessor for RouteSource);
  if (v2)
  {
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v6 = sub_1E65E3B68();
    __swift_project_value_buffer(v6, qword_1EE2EA2A0);
    v7 = sub_1E65E3B48();
    v8 = sub_1E65E6338();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1E5DE9000, v7, v8, "[Onboarding] User subscribed in app and has empty db", v9, 2u);
      MEMORY[0x1E694F1C0](v9, -1, -1);
    }

    v10 = *(v0 + 136);
    v11 = *(v0 + 112);
    v12 = *(v0 + 96);
    v14 = *(v0 + 64);
    v13 = *(v0 + 72);
    v15 = *(v0 + 40);

    v16 = *(v0 + 8);

    return v16();
  }

  else
  {
    v18 = *(v0 + 16) + *(v0 + 272) + *(*(v0 + 160) + 108);
    v19 = ServiceSubscriptionService.fetchServiceSubscription.getter();
    *(v0 + 192) = v20;
    v24 = (v19 + *v19);
    v21 = v19[1];
    v22 = swift_task_alloc();
    *(v0 + 200) = v22;
    *v22 = v0;
    v22[1] = sub_1E63429C0;
    v23 = *(v0 + 96);

    return (v24)(v23, 0);
  }
}

uint64_t sub_1E63428C8()
{
  v1 = v0[23];
  v2 = v0[21];

  sub_1E6344DE4();
  swift_allocError();
  *v3 = 6;
  swift_willThrow();

  v4 = v0[17];
  v5 = v0[14];
  v6 = v0[12];
  v8 = v0[8];
  v7 = v0[9];
  v9 = v0[5];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1E63429C0()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;
  *(*v1 + 208) = v0;

  v5 = *(v2 + 32);
  if (v0)
  {
    v6 = sub_1E63436B0;
  }

  else
  {
    v6 = sub_1E6342AEC;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1E6342AEC()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 96);
  v3 = *(v0 + 72);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);

  sub_1E65D7698();
  v6 = sub_1E65D92A8();
  v7 = *(v5 + 8);
  v7(v3, v4);
  v8 = *(v0 + 96);
  if (v6)
  {
    v9 = *(v0 + 48);
    v10 = *(v0 + 56);
    v11 = *(v0 + 40);
    sub_1E65D92B8();
    if ((*(v10 + 48))(v11, 1, v9) == 1)
    {
      sub_1E5DFE50C(*(v0 + 40), &qword_1ED0752D8, &qword_1E660CC30);
LABEL_15:
      v45 = *(v0 + 16) + *(v0 + 272);
      *(v0 + 276) = *(*(v0 + 160) + 124);
      v46 = SyncService.queryAccountSyncStatus.getter();
      *(v0 + 216) = v47;
      v51 = (v46 + *v46);
      v48 = v46[1];
      v49 = swift_task_alloc();
      *(v0 + 224) = v49;
      *v49 = v0;
      v49[1] = sub_1E6342F40;

      return v51();
    }

    v23 = *(v0 + 72);
    v24 = *(v0 + 48);
    (*(*(v0 + 56) + 32))(*(v0 + 64), *(v0 + 40), v24);
    sub_1E65D7688();
    sub_1E65D7628();
    v26 = v25;
    v7(v23, v24);
    sub_1E65E1BC8();
    if (v26 >= v27)
    {
      v7(*(v0 + 64), *(v0 + 48));
      goto LABEL_15;
    }

    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v28 = sub_1E65E3B68();
    __swift_project_value_buffer(v28, qword_1EE2EA2A0);
    v29 = sub_1E65E3B48();
    v30 = sub_1E65E6338();
    v31 = os_log_type_enabled(v29, v30);
    v32 = *(v0 + 88);
    v33 = *(v0 + 96);
    v34 = *(v0 + 80);
    v35 = *(v0 + 64);
    v36 = *(v0 + 48);
    if (v31)
    {
      v50 = *(v0 + 96);
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_1E5DE9000, v29, v30, "[Onboarding] User initially subscribed recently", v37, 2u);
      v38 = v37;
      v33 = v50;
      MEMORY[0x1E694F1C0](v38, -1, -1);
    }

    v7(v35, v36);
    (*(v32 + 8))(v33, v34);
    v39 = *(v0 + 136);
    v40 = *(v0 + 112);
    v41 = *(v0 + 96);
    v43 = *(v0 + 64);
    v42 = *(v0 + 72);
    v44 = *(v0 + 40);

    v21 = *(v0 + 8);
  }

  else
  {
    v12 = *(v0 + 80);
    v13 = *(v0 + 88);
    sub_1E6344DE4();
    swift_allocError();
    *v14 = 4;
    swift_willThrow();
    (*(v13 + 8))(v8, v12);
    v15 = *(v0 + 136);
    v16 = *(v0 + 112);
    v17 = *(v0 + 96);
    v19 = *(v0 + 64);
    v18 = *(v0 + 72);
    v20 = *(v0 + 40);

    v21 = *(v0 + 8);
  }

  return v21();
}

uint64_t sub_1E6342F40(char a1)
{
  v3 = *v2;
  v4 = *(*v2 + 224);
  v10 = *v2;
  *(v3 + 282) = a1;
  *(v3 + 232) = v1;

  if (v1)
  {
    v5 = *(v3 + 216);
    v6 = *(v3 + 32);

    v7 = sub_1E6343764;
    v8 = v6;
  }

  else
  {
    v8 = *(v3 + 32);
    v7 = sub_1E634306C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v8, 0);
}

uint64_t sub_1E634306C()
{
  v34 = v0;
  v1 = *(v0 + 216);

  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v2 = sub_1E65E3B68();
  __swift_project_value_buffer(v2, qword_1EE2EA2A0);
  v3 = sub_1E65E3B48();
  v4 = sub_1E65E6338();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 282);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v33 = v7;
    *v6 = 136315138;
    v8 = sub_1E65D8B98();
    v10 = sub_1E5DFD4B0(v8, v9, &v33);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1E5DE9000, v3, v4, "[Onboarding] Account sync status = %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1E694F1C0](v7, -1, -1);
    MEMORY[0x1E694F1C0](v6, -1, -1);
  }

  if (*(v0 + 282) > 2u)
  {
    (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));
    v25 = *(v0 + 136);
    v26 = *(v0 + 112);
    v27 = *(v0 + 96);
    v29 = *(v0 + 64);
    v28 = *(v0 + 72);
    v30 = *(v0 + 40);

    v31 = *(v0 + 8);

    return v31();
  }

  else
  {
    v11 = *(v0 + 16) + *(v0 + 272) + *(v0 + 276);
    v12 = SyncService.requireChangeWindows.getter();
    *(v0 + 240) = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0787D8, &qword_1E65FD868);
    v14 = sub_1E65DAEC8();
    v15 = *(v14 - 8);
    v16 = *(v15 + 72);
    v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1E65EB9E0;
    v19 = v18 + v17;
    v20 = *(v15 + 104);
    v20(v19, *MEMORY[0x1E69CD398], v14);
    v20(v19 + v16, *MEMORY[0x1E69CD3A0], v14);
    v21 = sub_1E5F9BDEC(v18);
    *(v0 + 248) = v21;
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v32 = (v12 + *v12);
    v22 = v12[1];
    v23 = swift_task_alloc();
    *(v0 + 256) = v23;
    *v23 = v0;
    v23[1] = sub_1E634346C;

    return v32(v21);
  }
}

uint64_t sub_1E634346C()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v4 = *v1;
  *(*v1 + 264) = v0;

  v5 = v2[31];
  v6 = v2[30];
  v7 = v2[4];
  if (v0)
  {

    v8 = sub_1E6343828;
  }

  else
  {

    v8 = sub_1E63435EC;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1E63435EC()
{
  (*(v0[11] + 8))(v0[12], v0[10]);
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[12];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[5];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1E63436B0()
{
  v1 = v0[24];

  v2 = v0[26];
  v3 = v0[17];
  v4 = v0[14];
  v5 = v0[12];
  v7 = v0[8];
  v6 = v0[9];
  v8 = v0[5];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1E6343764()
{
  (*(v0[11] + 8))(v0[12], v0[10]);
  v1 = v0[29];
  v2 = v0[17];
  v3 = v0[14];
  v4 = v0[12];
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[5];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1E6343828()
{
  (*(v0[11] + 8))(v0[12], v0[10]);
  v1 = v0[33];
  v2 = v0[17];
  v3 = v0[14];
  v4 = v0[12];
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[5];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1E63438EC(char a1, uint64_t a2)
{
  *(v3 + 64) = a2;
  *(v3 + 72) = v2;
  *(v3 + 256) = a1;
  v4 = *(type metadata accessor for AppComposer() - 8);
  *(v3 + 80) = v4;
  *(v3 + 88) = *(v4 + 64);
  *(v3 + 96) = swift_task_alloc();
  v5 = type metadata accessor for AppAction();
  *(v3 + 104) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v3 + 112) = swift_task_alloc();
  v7 = sub_1E65E1B08();
  *(v3 + 120) = v7;
  v8 = *(v7 - 8);
  *(v3 + 128) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 136) = swift_task_alloc();
  v10 = *(*(type metadata accessor for OnboardingDetour.State(0) - 8) + 64) + 15;
  *(v3 + 144) = swift_task_alloc();
  *(v3 + 152) = swift_task_alloc();
  v11 = type metadata accessor for RouteDestination();
  *(v3 + 160) = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 176) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0722F0, &unk_1E65EA1F0);
  *(v3 + 184) = v13;
  v14 = *(v13 - 8);
  *(v3 + 192) = v14;
  v15 = *(v14 + 64) + 15;
  *(v3 + 200) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6343B1C, v2, 0);
}

uint64_t sub_1E6343B1C()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 72);
  v3 = OBJC_IVAR____TtC10Blackbeard16OnboardingDetour_state;
  swift_beginAccess();
  sub_1E5E1D894(v2 + v3, v1, type metadata accessor for OnboardingDetour.State);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071EE0, &qword_1E65EA1E0);
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v1, 1, v4) == 1)
  {
    sub_1E6344CC8(*(v0 + 152), type metadata accessor for OnboardingDetour.State);
LABEL_8:
    v29 = *(v0 + 200);
    v30 = *(v0 + 168);
    v31 = *(v0 + 176);
    v33 = *(v0 + 144);
    v32 = *(v0 + 152);
    v34 = *(v0 + 136);
    v35 = *(v0 + 112);
    v36 = *(v0 + 96);

    v37 = *(v0 + 8);

    return v37();
  }

  v7 = *(v0 + 192);
  v6 = *(v0 + 200);
  v9 = *(v0 + 176);
  v8 = *(v0 + 184);
  v11 = *(v0 + 144);
  v10 = *(v0 + 152);
  v12 = *(v0 + 256);
  v13 = (v10 + *(v4 + 48));
  *(v0 + 208) = *v13;
  *(v0 + 216) = v13[1];
  v14 = *(v4 + 64);
  (*(v7 + 32))(v6, v10, v8);
  sub_1E5E1E048(v10 + v14, v9, type metadata accessor for RouteDestination);
  (*(v5 + 56))(v11, 1, 1, v4);
  swift_beginAccess();
  sub_1E6344D28(v11, v2 + v3);
  swift_endAccess();
  if (v12 != 1)
  {
    v25 = *(v0 + 192);
    v26 = *(v0 + 200);
    v28 = *(v0 + 176);
    v27 = *(v0 + 184);
    sub_1E5E1D894(v28, *(v0 + 168), type metadata accessor for RouteDestination);
    sub_1E65E5FF8();
    swift_unknownObjectRelease();
    sub_1E6344CC8(v28, type metadata accessor for RouteDestination);
    (*(v25 + 8))(v26, v27);
    goto LABEL_8;
  }

  v16 = *(v0 + 128);
  v15 = *(v0 + 136);
  v18 = *(v0 + 112);
  v17 = *(v0 + 120);
  v19 = *(v0 + 104);
  v20 = *(v0 + 64);
  *(*(v0 + 72) + OBJC_IVAR____TtC10Blackbeard16OnboardingDetour_hasPresentedOnboardingThisLaunch) = 1;
  *(v0 + 224) = *v20;
  swift_getKeyPath();
  sub_1E65E4EC8();

  v21 = sub_1E65E1AC8();
  (*(v16 + 8))(v15, v17);
  v22 = *(v21 + 16);

  *v18 = 0;
  v18[1] = v22 != 0;
  swift_storeEnumTagMultiPayload();
  sub_1E65E6058();
  *(v0 + 232) = sub_1E65E6048();
  v24 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6343EEC, v24, v23);
}

uint64_t sub_1E6343EEC()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[14];
  v4 = v0[9];

  sub_1E65E4EE8();
  sub_1E6344CC8(v3, type metadata accessor for AppAction);

  return MEMORY[0x1EEE6DFA0](sub_1E6343F88, v4, 0);
}

uint64_t sub_1E6343F88()
{
  v1 = v0[26];
  v17 = v0[27];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[9];
  v5 = v0[10];
  v6 = v0[8];
  ObjectType = swift_getObjectType();
  sub_1E5E1D894(v6, v2, type metadata accessor for AppComposer);
  v8 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v9 = swift_allocObject();
  v0[30] = v9;
  *(v9 + 16) = v4;
  sub_1E5E1E048(v2, v9 + v8, type metadata accessor for AppComposer);
  v10 = *(v17 + 24);

  v16 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  v0[31] = v12;
  *v12 = v0;
  v12[1] = sub_1E6344154;
  v14 = v0[26];
  v13 = v0[27];

  return v16(sub_1E6347964, v9, ObjectType, v13);
}

uint64_t sub_1E6344154()
{
  v1 = *(*v0 + 248);
  v2 = *(*v0 + 240);
  v3 = *(*v0 + 72);
  v5 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E6344280, v3, 0);
}

uint64_t sub_1E6344280()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[23];
  v4 = v0[24];
  v6 = v0[21];
  v5 = v0[22];
  v7 = v0[20];
  sub_1E5E1D894(v5, v6, type metadata accessor for RouteResource);
  sub_1E5E1D894(v5 + *(v7 + 20), v6 + *(v7 + 20), type metadata accessor for RouteSource);
  v8 = *(v5 + *(v7 + 24));

  *(v6 + *(v7 + 24)) = sub_1E602A670(&unk_1F5FA8C18, v8);
  sub_1E65E5FF8();
  swift_unknownObjectRelease();
  sub_1E6344CC8(v5, type metadata accessor for RouteDestination);
  (*(v4 + 8))(v1, v3);
  v9 = v0[25];
  v10 = v0[21];
  v11 = v0[22];
  v13 = v0[18];
  v12 = v0[19];
  v14 = v0[17];
  v15 = v0[14];
  v16 = v0[12];

  v17 = v0[1];

  return v17();
}

uint64_t sub_1E6344408(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppComposer();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v15 - v9;
  v11 = sub_1E65E60A8();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_1E5E1D894(a2, &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppComposer);
  v12 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a1;
  sub_1E5E1E048(&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for AppComposer);

  sub_1E64B80F8(0, 0, v10, &unk_1E65FD768, v13);
}

uint64_t sub_1E63445DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v6 = *(*(type metadata accessor for OnboardingDetour.State(0) - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0722F0, &unk_1E65EA1F0);
  v4[12] = v7;
  v8 = *(v7 - 8);
  v4[13] = v8;
  v9 = *(v8 + 64) + 15;
  v4[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63446E4, a4, 0);
}

uint64_t sub_1E63446E4()
{
  v1 = v0[11];
  v2 = v0[9];
  v3 = OBJC_IVAR____TtC10Blackbeard16OnboardingDetour_state;
  swift_beginAccess();
  sub_1E5E1D894(v2 + v3, v1, type metadata accessor for OnboardingDetour.State);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071EE0, &qword_1E65EA1E0);
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v1, 1, v4) == 1)
  {
    sub_1E6344CC8(v0[11], type metadata accessor for OnboardingDetour.State);
  }

  else
  {
    v7 = v0[13];
    v6 = v0[14];
    v8 = v0[11];
    v9 = v0[12];
    v18 = v0[10];
    v10 = *(v8 + *(v4 + 48));
    swift_unknownObjectRelease();
    v11 = *(v4 + 64);
    (*(v7 + 32))(v6, v8, v9);
    sub_1E6344CC8(v8 + v11, type metadata accessor for RouteDestination);
    (*(v5 + 56))(v18, 1, 1, v4);
    swift_beginAccess();
    sub_1E6344D28(v18, v2 + v3);
    swift_endAccess();
    sub_1E65E6018();
    sub_1E6344D8C(&qword_1ED071E30, MEMORY[0x1E69E8550]);
    v12 = swift_allocError();
    sub_1E65E5AE8();
    v0[8] = v12;
    sub_1E65E5FE8();
    (*(v7 + 8))(v6, v9);
  }

  v13 = v0[14];
  v14 = v0[10];
  v15 = v0[11];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1E6344978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = *v5;
  v6[6] = a5;
  v6[7] = v7;
  return MEMORY[0x1EEE6DFA0](sub_1E63449A0, v7, 0);
}

uint64_t sub_1E63449A0()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  v5 = *(v0 + 40);
  *(v4 + 16) = v1;
  *(v4 + 24) = v5;
  *(v4 + 40) = v2;
  *(v4 + 48) = v3;
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *(v6 + 16) = v1;
  *(v6 + 24) = v3;
  v7 = sub_1E6344D8C(&qword_1EE2DA208, type metadata accessor for OnboardingDetour);
  v8 = *(MEMORY[0x1E69E88F0] + 4);
  v9 = swift_task_alloc();
  *(v0 + 80) = v9;
  v10 = type metadata accessor for RouteDestination();
  *v9 = v0;
  v9[1] = sub_1E5F94914;
  v11 = *(v0 + 16);

  return MEMORY[0x1EEE6DE18](v11, &unk_1E65FD750, v4, sub_1E6344BC8, v6, v1, v7, v10);
}

uint64_t sub_1E6344B00(uint64_t a1)
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

  return sub_1E633F3D8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1E6344BD0(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E63445DC(a1, v6, v7, v8);
}

uint64_t sub_1E6344CC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E6344D28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OnboardingDetour.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E6344D8C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E6344DE4()
{
  result = qword_1EE2D8FB8[0];
  if (!qword_1EE2D8FB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2D8FB8);
  }

  return result;
}

uint64_t sub_1E6344E38(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for AppComposer() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for RouteDestination() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = (v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = *v13;
  v15 = v13[1];
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_1E5DFE6BC;

  return sub_1E633FAC8(a1, v10, v11, v12, v1 + v6, v1 + v9, v14, v15);
}

uint64_t sub_1E6344FD8(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for AppComposer() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for RouteDestination() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1E5DFE6BC;

  return sub_1E6340628(a1, v10, v1 + v6, v1 + v9);
}

void sub_1E6345124(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v5 = sub_1E65E3B68();
  __swift_project_value_buffer(v5, qword_1EE2EA2A0);
  v6 = sub_1E65E3B48();
  v7 = sub_1E65E6338();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1E5DE9000, v6, v7, "[Onboarding] Presenting onboarding", v8, 2u);
    MEMORY[0x1E694F1C0](v8, -1, -1);
  }

  v10 = sub_1E63452E8(a1, a3);
  v9 = *(a3 + *(type metadata accessor for AppComposer() + 20) + 8);
  if (v9 >= 2)
  {
    if (v9 != 3)
    {
      sub_1E65E69D8();
      __break(1u);
      return;
    }

    [a1 pushViewController:v10 animated:0];
  }

  else
  {
    [a1 presentViewController:v10 animated:1 completion:0];
  }
}

uint64_t sub_1E63452E8(void *a1, uint64_t a2)
{
  v81 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077730, &unk_1E65EA310);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v85 = &v78 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071EF8, &unk_1E65FA470);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v78 - v8;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078550, &qword_1E65FD1C8);
  v10 = *(*(v84 - 8) + 64);
  MEMORY[0x1EEE9AC00](v84);
  v12 = &v78 - v11;
  v13 = type metadata accessor for AppComposer();
  v14 = v13 - 8;
  v82 = *(v13 - 8);
  v15 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0785A8, &unk_1E65FD7A0);
  v17 = *(*(v86 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v86);
  v87 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v88 = &v78 - v20;
  v21 = type metadata accessor for RouteDetourNavigationControllerRoutingContext();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = swift_allocObject();
  v26 = (a2 + *(v14 + 40));
  v27 = *v26;
  *(v25 + 24) = v26[1];
  swift_unknownObjectWeakInit();
  v28 = type metadata accessor for PresentationPublisher();
  v29 = objc_allocWithZone(v28);
  v30 = &v29[OBJC_IVAR____TtC10Blackbeard21PresentationPublisher_publishPresentationAction];
  *v30 = sub_1E6347630;
  v30[1] = v25;
  v93.receiver = v29;
  v93.super_class = v28;
  v31 = objc_msgSendSuper2(&v93, sel_init);
  v32 = *(a2 + *(v14 + 28) + 8);
  v89 = v24;
  if (v32 < 2)
  {
    v33 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) init];
    sub_1E5E1D894(a2, &v24[*(v21 + 20)], type metadata accessor for AppComposer);
    swift_unknownObjectWeakInit();
    v81 = v33;
    swift_unknownObjectWeakAssign();
    *&v24[*(v21 + 24)] = v31;
    v91 = v21;
    v92 = &off_1F5FB76B8;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v90);
    sub_1E5E1D894(v24, boxed_opaque_existential_1, type metadata accessor for RouteDetourNavigationControllerRoutingContext);
    sub_1E5E1D894(a2, &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppComposer);
    v35 = (*(v82 + 80) + 24) & ~*(v82 + 80);
    v36 = swift_allocObject();
    *(v36 + 16) = v83;
    sub_1E5E1E048(v16, v36 + v35, type metadata accessor for AppComposer);

    sub_1E64DB20C(&v94);
    sub_1E6331084(a2, v90, &v94, sub_1E63476DC, v36, v12);
    v37 = sub_1E65E4FD8();
    (*(*(v37 - 8) + 56))(v9, 1, 1, v37);
    if (qword_1EE2D49E0 != -1)
    {
      swift_once();
    }

    v38 = sub_1E65E5018();
    __swift_project_value_buffer(v38, qword_1EE2D49E8);
    v39 = sub_1E65E2E78();
    v40 = v85;
    (*(*(v39 - 8) + 56))(v85, 1, 1, v39);
    sub_1E6347658();
    v41 = v88;
    sub_1E65E4728();
    sub_1E5DFE50C(v40, &unk_1ED077730, &unk_1E65EA310);
    sub_1E5DFE50C(v9, &qword_1ED071EF8, &unk_1E65FA470);
    sub_1E5DFE50C(v12, &qword_1ED078550, &qword_1E65FD1C8);
    v42 = swift_allocObject();
    v43 = v97;
    v42[3] = v96;
    v42[4] = v43;
    v42[5] = v98;
    v44 = v95;
    v42[1] = v94;
    v42[2] = v44;
    v45 = (v41 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0785A0, &qword_1E65FD1E0) + 36));
    *v45 = 0;
    v45[1] = 0;
    v45[2] = sub_1E5F9C42C;
    v45[3] = v42;
    v46 = swift_allocObject();
    v47 = v97;
    *(v46 + 3) = v96;
    *(v46 + 4) = v47;
    *(v46 + 5) = v98;
    v48 = v95;
    *(v46 + 1) = v94;
    *(v46 + 2) = v48;
    v49 = (v41 + *(v86 + 36));
    *v49 = sub_1E6347CE8;
    v49[1] = v46;
    v49[2] = 0;
    v49[3] = 0;
    swift_unknownObjectRetain();

    __swift_destroy_boxed_opaque_existential_1(v90);
    sub_1E5F0E9C4(v41, v87);
    v50 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0787D0, &unk_1E65FD7D0));
    v51 = sub_1E65E18F8();
    [v51 setModalInPresentation_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_1E65EA660;
    *(v52 + 32) = v51;
    sub_1E5DEF094();
    v53 = v51;
    v54 = sub_1E65E5EF8();

    v55 = v81;
    [v81 setViewControllers:v54 animated:0];

LABEL_9:
    sub_1E5DFE50C(v41, &qword_1ED0785A8, &unk_1E65FD7A0);
    sub_1E6344CC8(v89, type metadata accessor for RouteDetourNavigationControllerRoutingContext);
    return v55;
  }

  v79 = v12;
  v80 = v9;
  v56 = v82;
  v57 = v83;
  if (v32 == 3)
  {
    v58 = v89;
    sub_1E5E1D894(a2, &v89[*(v21 + 20)], type metadata accessor for AppComposer);
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    *(v58 + *(v21 + 24)) = v31;
    v91 = v21;
    v92 = &off_1F5FB76B8;
    v59 = __swift_allocate_boxed_opaque_existential_1(v90);
    sub_1E5E1D894(v58, v59, type metadata accessor for RouteDetourNavigationControllerRoutingContext);
    sub_1E5E1D894(a2, &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppComposer);
    v60 = (*(v56 + 80) + 24) & ~*(v56 + 80);
    v61 = swift_allocObject();
    *(v61 + 16) = v57;
    sub_1E5E1E048(v16, v61 + v60, type metadata accessor for AppComposer);

    sub_1E64DB20C(&v94);
    v62 = v79;
    sub_1E6331084(a2, v90, &v94, sub_1E6347638, v61, v79);
    v63 = sub_1E65E4FD8();
    v64 = v80;
    (*(*(v63 - 8) + 56))(v80, 1, 1, v63);
    if (qword_1EE2D49E0 != -1)
    {
      swift_once();
    }

    v65 = sub_1E65E5018();
    __swift_project_value_buffer(v65, qword_1EE2D49E8);
    v66 = sub_1E65E2E78();
    v67 = v85;
    (*(*(v66 - 8) + 56))(v85, 1, 1, v66);
    sub_1E6347658();
    v41 = v88;
    sub_1E65E4728();
    sub_1E5DFE50C(v67, &unk_1ED077730, &unk_1E65EA310);
    sub_1E5DFE50C(v64, &qword_1ED071EF8, &unk_1E65FA470);
    sub_1E5DFE50C(v62, &qword_1ED078550, &qword_1E65FD1C8);
    v68 = swift_allocObject();
    v69 = v97;
    v68[3] = v96;
    v68[4] = v69;
    v68[5] = v98;
    v70 = v95;
    v68[1] = v94;
    v68[2] = v70;
    v71 = (v41 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0785A0, &qword_1E65FD1E0) + 36));
    *v71 = 0;
    v71[1] = 0;
    v71[2] = sub_1E5F99E38;
    v71[3] = v68;
    v72 = swift_allocObject();
    v73 = v97;
    *(v72 + 3) = v96;
    *(v72 + 4) = v73;
    *(v72 + 5) = v98;
    v74 = v95;
    *(v72 + 1) = v94;
    *(v72 + 2) = v74;
    v75 = (v41 + *(v86 + 36));
    *v75 = sub_1E6332608;
    v75[1] = v72;
    v75[2] = 0;
    v75[3] = 0;
    swift_unknownObjectRetain();

    __swift_destroy_boxed_opaque_existential_1(v90);
    sub_1E5F0E9C4(v41, v87);
    v76 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0787D0, &unk_1E65FD7D0));
    v55 = sub_1E65E18F8();
    goto LABEL_9;
  }

  result = sub_1E65E69D8();
  __break(1u);
  return result;
}

uint64_t sub_1E6345EF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for AppState() + 216);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074CF0, &qword_1E65F10D8) + 28);
  v5 = sub_1E65E1B08();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v3 + v4, v5);
}

uint64_t sub_1E6345F8C(uint64_t a1, uint64_t a2)
{
  v3 = a2 + *(type metadata accessor for AppState() + 216);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074CF0, &qword_1E65F10D8) + 28);
  v5 = sub_1E65E1B08();
  v6 = *(*(v5 - 8) + 24);

  return v6(v3 + v4, a1, v5);
}

void sub_1E6346028(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + *(type metadata accessor for AppComposer() + 20) + 8);
  if (v4 >= 2)
  {
    if (v4 == 3)
    {
      v5 = [a1 popViewControllerAnimated_];
    }

    else
    {
      sub_1E65E69D8();
      __break(1u);
    }
  }

  else
  {

    [a1 dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t sub_1E6346124(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1E65D9FF8();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_1E65DA2A8();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E634624C, v1, 0);
}

uint64_t sub_1E634624C()
{
  v1 = v0[2];
  if (*(v1 + 8) == 3)
  {
    v2 = v1 + *(type metadata accessor for AppEnvironment() + 100);
    active = RemoteBrowsingService.requireActiveEnvironment.getter();
    v0[11] = v4;
    v13 = (active + *active);
    v5 = active[1];
    v6 = swift_task_alloc();
    v0[12] = v6;
    *v6 = v0;
    v6[1] = sub_1E63463BC;
    v7 = v0[6];

    return v13(v7);
  }

  else
  {
    v10 = v0[9];
    v9 = v0[10];
    v11 = v0[6];

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_1E63463BC()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 104) = v0;

  v6 = *(v2 + 24);
  if (v0)
  {
    v7 = sub_1E63466C0;
  }

  else
  {
    v7 = sub_1E6346504;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1E6346504()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[4];
  sub_1E65D9F98();
  (*(v6 + 8))(v5, v7);
  sub_1E65DA288();
  sub_1E6344D8C(&qword_1ED071E28, MEMORY[0x1E69CCBE8]);
  LOBYTE(v7) = sub_1E65E6718();
  v8 = *(v4 + 8);
  v8(v2, v3);
  v9 = v0[10];
  v10 = v0[7];
  if (v7)
  {
    v8(v0[10], v0[7]);
  }

  else
  {
    sub_1E6344DE4();
    swift_allocError();
    *v15 = 3;
    swift_willThrow();
    v8(v9, v10);
  }

  v12 = v0[9];
  v11 = v0[10];
  v13 = v0[6];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1E63466C0()
{
  v1 = v0[13];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[6];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E6346740(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = sub_1E65D9958();
  v2[13] = v3;
  v4 = *(v3 - 8);
  v2[14] = v4;
  v5 = *(v4 + 64) + 15;
  v2[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6346800, v1, 0);
}

uint64_t sub_1E6346800()
{
  v1 = v0[11];
  v2 = v1 + *(type metadata accessor for AppEnvironment() + 96);
  v3 = RecommendationService.queryOnboardingSurveyResult.getter();
  v0[16] = v4;
  v9 = (v3 + *v3);
  v5 = v3[1];
  v6 = swift_task_alloc();
  v0[17] = v6;
  *v6 = v0;
  v6[1] = sub_1E634690C;
  v7 = v0[15];

  return v9(v7);
}

uint64_t sub_1E634690C()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;
  v2[18] = v0;

  v5 = v2[16];
  if (v0)
  {
    v6 = v2[12];

    v7 = sub_1E6346BF8;
  }

  else
  {
    v6 = v2[12];
    (*(v2[14] + 8))(v2[15], v2[13]);

    v7 = sub_1E6346A68;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1E6346A68()
{
  sub_1E6344DE4();
  v1 = swift_allocError();
  *v2 = 5;
  swift_willThrow();
  swift_getErrorValue();
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[9];
  v6 = sub_1E65D9288();
  v0[5] = v6;
  v0[6] = sub_1E6344D8C(&qword_1EE2D70A0, MEMORY[0x1E69CBF78]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(*(v6 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69CBF68], v6);
  LOBYTE(v4) = sub_1E65E6CA8();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v8 = v0[15];
  if (v4)
  {
  }

  else
  {
    swift_willThrow();
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_1E6346BF8()
{
  v1 = v0[18];
  swift_getErrorValue();
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[9];
  v5 = sub_1E65D9288();
  v0[5] = v5;
  v0[6] = sub_1E6344D8C(&qword_1EE2D70A0, MEMORY[0x1E69CBF78]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(*(v5 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69CBF68], v5);
  LOBYTE(v3) = sub_1E65E6CA8();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v7 = v0[15];
  if (v3)
  {
  }

  else
  {
    swift_willThrow();
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_1E6346D5C(uint64_t a1, uint64_t a2)
{
  v4 = 0x746C7561666564;
  v5 = type metadata accessor for RouteSource(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v28 - v10;
  sub_1E5E1D894(a1, v28 - v10, type metadata accessor for RouteSource);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v13 = 0x55676E6972616873;
        sub_1E6344CC8(v11, type metadata accessor for RouteSource);
        v14 = 0xEA00000000004C52;
      }

      else if (EnumCaseMultiPayload == 3)
      {
        v13 = 0x4C52556E65706FLL;
        sub_1E6344CC8(v11, type metadata accessor for RouteSource);
        v14 = 0xE700000000000000;
      }

      else
      {
        v13 = 0x616C506572616873;
        v16 = sub_1E65D8D48();
        (*(*(v16 - 8) + 8))(v11, v16);
        v14 = 0xE900000000000079;
      }

      goto LABEL_25;
    }

    if (!EnumCaseMultiPayload)
    {
      v13 = 0x636E75614C707061;
      sub_1E6344CC8(v11, type metadata accessor for RouteSource);
      goto LABEL_12;
    }

    v13 = 0x6974634172657375;
    sub_1E6344CC8(v11, type metadata accessor for RouteSource);
    v15 = 2037672310;
    goto LABEL_24;
  }

  if (EnumCaseMultiPayload > 6)
  {
    if (EnumCaseMultiPayload != 7)
    {
      if (EnumCaseMultiPayload != 8)
      {
        v13 = 0x746977536B736174;
        v14 = 0xEA00000000006863;
        goto LABEL_25;
      }

      v13 = 0x6374697753626174;
LABEL_12:
      v14 = 0xE900000000000068;
      goto LABEL_25;
    }

    v13 = 0x7069726373627573;
    v15 = 1852795252;
LABEL_24:
    v14 = v15 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
    goto LABEL_25;
  }

  if (EnumCaseMultiPayload == 5)
  {
    v13 = 0x746C7561666564;
  }

  else
  {
    v13 = 1769105779;
  }

  if (EnumCaseMultiPayload == 5)
  {
    v14 = 0xE700000000000000;
  }

  else
  {
    v14 = 0xE400000000000000;
  }

LABEL_25:
  v17 = type metadata accessor for RouteDestination();
  sub_1E5E1D894(a2 + *(v17 + 20), v9, type metadata accessor for RouteSource);
  v18 = swift_getEnumCaseMultiPayload();
  if (v18 <= 4)
  {
    if (v18 > 1)
    {
      if (v18 != 2)
      {
        if (v18 != 3)
        {
          v25 = sub_1E65D8D48();
          (*(*(v25 - 8) + 8))(v9, v25);
          v20 = 0xE900000000000079;
          if (v13 != 0x616C506572616873)
          {
            goto LABEL_54;
          }

          goto LABEL_52;
        }

        v4 = 0x4C52556E65706FLL;
        sub_1E6344CC8(v9, type metadata accessor for RouteSource);
        goto LABEL_39;
      }

      v21 = 0x55676E6972616873;
      sub_1E6344CC8(v9, type metadata accessor for RouteSource);
      v22 = 19538;
LABEL_46:
      v20 = v22 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
      if (v13 != v21)
      {
        goto LABEL_54;
      }

      goto LABEL_52;
    }

    if (!v18)
    {
      v19 = 0x636E75614C707061;
      sub_1E6344CC8(v9, type metadata accessor for RouteSource);
LABEL_36:
      v20 = 0xE900000000000068;
      if (v13 != v19)
      {
        goto LABEL_54;
      }

      goto LABEL_52;
    }

    v23 = 0x6974634172657375;
    sub_1E6344CC8(v9, type metadata accessor for RouteSource);
    v24 = 2037672310;
    goto LABEL_49;
  }

  if (v18 > 6)
  {
    if (v18 != 7)
    {
      if (v18 != 8)
      {
        v21 = 0x746977536B736174;
        v22 = 26723;
        goto LABEL_46;
      }

      v19 = 0x6374697753626174;
      goto LABEL_36;
    }

    v23 = 0x7069726373627573;
    v24 = 1852795252;
LABEL_49:
    v20 = v24 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
    if (v13 != v23)
    {
      goto LABEL_54;
    }

    goto LABEL_52;
  }

  if (v18 == 5)
  {
LABEL_39:
    v20 = 0xE700000000000000;
    if (v13 != v4)
    {
      goto LABEL_54;
    }

    goto LABEL_52;
  }

  v20 = 0xE400000000000000;
  if (v13 != 1769105779)
  {
LABEL_54:
    v26 = sub_1E65E6C18();
    goto LABEL_55;
  }

LABEL_52:
  if (v14 != v20)
  {
    goto LABEL_54;
  }

  v26 = 1;
LABEL_55:

  return v26 & 1;
}

uint64_t sub_1E63472AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_1E65E6058();
  v5[3] = sub_1E65E6048();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_1E5F96500;

  return sub_1E63438EC(1, a5);
}

uint64_t sub_1E634736C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for AppComposer();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v20 - v12;
  v14 = sub_1E65E60A8();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  sub_1E5E1D894(a2, &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppComposer);
  sub_1E65E6058();

  v15 = sub_1E65E6048();
  v16 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v17 = swift_allocObject();
  v18 = MEMORY[0x1E69E85E0];
  v17[2] = v15;
  v17[3] = v18;
  v17[4] = a1;
  sub_1E5E1E048(&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for AppComposer);
  sub_1E64B80F8(0, 0, v13, a4, v17);
}

uint64_t sub_1E6347558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_1E65E6058();
  v5[3] = sub_1E65E6048();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_1E5F960B8;

  return sub_1E63438EC(1, a5);
}

unint64_t sub_1E6347658()
{
  result = qword_1ED078558;
  if (!qword_1ED078558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED078550, &qword_1E65FD1C8);
    sub_1E6331A3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078558);
  }

  return result;
}

uint64_t sub_1E6347774(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFA78C;

  return sub_1E6347558(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1E634786C(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E63472AC(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1E634797C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = *(v2 + 16);
  v6 = v2 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return a2(a1, v5, v6);
}

uint64_t sub_1E6347A04(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E6340C9C(a1, v6, v1 + v5);
}

uint64_t sub_1E6347AE8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F90, &qword_1E65FD870);
  v2 = *(type metadata accessor for RouteSource(0) - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1E65EA190;
  type metadata accessor for AppLaunchScope(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v6 = sub_1E5F96654(v5);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v9[2] = a1;
  LOBYTE(a1) = sub_1E5F95D7C(sub_1E6347CC8, v9, v6);

  if ((a1 & 1) == 0)
  {
    sub_1E6344DE4();
    swift_allocError();
    *v8 = 7;
    return swift_willThrow();
  }

  return result;
}

uint64_t PlaylistType.hash(into:)()
{
  v1 = sub_1E65DAEB8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PlaylistType();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1E634859C(v0, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v2 + 32))(v5, v9, v1);
    MEMORY[0x1E694E740](1);
    sub_1E6348648(&qword_1ED076258, MEMORY[0x1E69CD370]);
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

uint64_t PlaylistType.hashValue.getter()
{
  v1 = v0;
  v2 = sub_1E65DAEB8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PlaylistType();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1E65E6D28();
  sub_1E634859C(v1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v6, v10, v2);
    MEMORY[0x1E694E740](1);
    sub_1E6348648(&qword_1ED076258, MEMORY[0x1E69CD370]);
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

uint64_t sub_1E63480B8(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = sub_1E65DAEB8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(a2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v13 = (&v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1E65E6D28();
  sub_1E634859C(v4, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v6 + 32))(v10, v13, v5);
    MEMORY[0x1E694E740](1);
    sub_1E6348648(&qword_1ED076258, MEMORY[0x1E69CD370]);
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

uint64_t _s10Blackbeard12PlaylistTypeO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65DAEB8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PlaylistType();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v31 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0787F8, &unk_1E65FD960);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v31 - v19;
  v21 = (&v31 + *(v18 + 56) - v19);
  sub_1E634859C(a1, &v31 - v19);
  sub_1E634859C(a2, v21);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1E634859C(v20, v15);
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
          sub_1E63486F8(v20);
          goto LABEL_8;
        }
      }

      sub_1E63486F8(v20);
      v22 = 1;
      return v22 & 1;
    }

LABEL_7:
    sub_1E6348690(v20);
LABEL_8:
    v22 = 0;
    return v22 & 1;
  }

  sub_1E634859C(v20, v13);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v5 + 8))(v13, v4);
    goto LABEL_7;
  }

  (*(v5 + 32))(v8, v21, v4);
  v22 = MEMORY[0x1E6942870](v13, v8);
  v23 = *(v5 + 8);
  v23(v8, v4);
  v23(v13, v4);
  sub_1E63486F8(v20);
  return v22 & 1;
}

uint64_t sub_1E634859C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaylistType();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E6348648(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E6348690(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0787F8, &unk_1E65FD960);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E63486F8(uint64_t a1)
{
  v2 = type metadata accessor for PlaylistType();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1E6348778(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1E63487C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E6348824(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 24) = a6;
  *(v7 + 32) = a7;
  *(v7 + 16) = a5;
  *(v7 + 72) = a4;
  v8 = type metadata accessor for PageMetricsClick();
  *(v7 + 40) = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  *(v7 + 48) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63488C0, 0, 0);
}

uint64_t sub_1E63488C0()
{
  if (*(v0 + 72) == 1)
  {
    v2 = *(v0 + 40);
    v1 = *(v0 + 48);
    v4 = *(v0 + 24);
    v3 = *(v0 + 32);
    v5 = *(v0 + 16);
    v6 = sub_1E65D9D78();
    (*(*(v6 - 8) + 56))(v1, 1, 1, v6);
    v7 = v2[5];
    v8 = *MEMORY[0x1E69CBA40];
    v9 = sub_1E65D8C68();
    (*(*(v9 - 8) + 104))(v1 + v7, v8, v9);
    v10 = v2[6];
    v11 = sub_1E65D74E8();
    (*(*(v11 - 8) + 56))(v1 + v10, 1, 1, v11);
    v12 = v2[8];
    v13 = sub_1E65DA208();
    (*(*(v13 - 8) + 56))(v1 + v12, 1, 1, v13);
    v14 = v2[14];
    v15 = *MEMORY[0x1E69CBCC8];
    v16 = sub_1E65D8F28();
    (*(*(v16 - 8) + 104))(v1 + v14, v15, v16);
    v17 = v2[15];
    v18 = *MEMORY[0x1E69CC498];
    v19 = sub_1E65D9908();
    v20 = *(v19 - 8);
    (*(v20 + 104))(v1 + v17, v18, v19);
    (*(v20 + 56))(v1 + v17, 0, 1, v19);
    v21 = MEMORY[0x1E69E7CC0];
    v22 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
    *(v1 + v2[7]) = v21;
    v23 = (v1 + v2[9]);
    *v23 = 0;
    v23[1] = 0;
    v24 = (v1 + v2[10]);
    *v24 = 0;
    v24[1] = 0;
    *(v1 + v2[11]) = v22;
    v25 = (v1 + v2[12]);
    *v25 = 0;
    v25[1] = 0;
    v26 = (v1 + v2[13]);
    *v26 = v5;
    v26[1] = v4;
    v27 = *(v3 + 48);
    v28 = *(v3 + 56);

    v35 = (v27 + *v27);
    v29 = v27[1];
    v30 = swift_task_alloc();
    *(v0 + 56) = v30;
    *v30 = v0;
    v30[1] = sub_1E6348C70;
    v31 = *(v0 + 48);

    return v35(v31);
  }

  else
  {
    v33 = *(v0 + 48);

    v34 = *(v0 + 8);

    return v34();
  }
}

uint64_t sub_1E6348C70()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_1E6348DF0;
  }

  else
  {
    v3 = sub_1E6348D84;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E6348D84()
{
  sub_1E5FC0990(*(v0 + 48));
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E6348DF0()
{
  sub_1E5FC0990(v0[6]);

  v1 = v0[1];
  v2 = v0[8];

  return v1();
}

uint64_t sub_1E6348E60(uint64_t a1)
{
  v1[8] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075858, &qword_1E65F1E30);
  v1[9] = v2;
  v3 = *(v2 - 8);
  v1[10] = v3;
  v4 = *(v3 + 64) + 15;
  v1[11] = swift_task_alloc();
  v5 = sub_1E65E1518();
  v1[12] = v5;
  v6 = *(v5 - 8);
  v1[13] = v6;
  v7 = *(v6 + 64) + 15;
  v1[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6348F88, 0, 0);
}

uint64_t sub_1E6348F88()
{
  v1 = v0[14];
  v2 = v0[8];
  sub_1E65E14F8();
  v0[15] = *(v2 + *(type metadata accessor for AppComposer() + 24));
  v0[16] = sub_1E65E6058();
  v0[17] = sub_1E65E6048();
  v4 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E634905C, v4, v3);
}

uint64_t sub_1E634905C()
{
  v1 = v0[17];
  v2 = v0[15];

  sub_1E5E20198(13, (v0 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D18, &qword_1E65EECF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075860, &qword_1E65F1E38);
  if (swift_dynamicCast())
  {
    v0[18] = v0[7];
    v3 = sub_1E63491B8;
  }

  else
  {
    v3 = sub_1E6349134;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E6349134()
{
  v1 = v0[11];
  (*(v0[13] + 8))(v0[14], v0[12]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1E63491B8()
{
  v1 = *(v0 + 128);
  *(v0 + 152) = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6349244, v3, v2);
}

uint64_t sub_1E6349244()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[14];
  v4 = v0[11];

  sub_1E65E4E98();

  return MEMORY[0x1EEE6DFA0](sub_1E63492D0, 0, 0);
}

uint64_t sub_1E63492D0()
{
  v1 = *(v0 + 128);
  *(v0 + 160) = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E634935C, v3, v2);
}

uint64_t sub_1E634935C()
{
  v1 = v0[20];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];

  sub_1E65E4E28();
  (*(v3 + 8))(v2, v4);

  return MEMORY[0x1EEE6DFA0](sub_1E634B138, 0, 0);
}

uint64_t sub_1E63493F4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, double a7)
{
  *(v7 + 80) = a5;
  *(v7 + 88) = a6;
  *(v7 + 72) = a7;
  *(v7 + 26) = a4;
  *(v7 + 56) = a2;
  *(v7 + 64) = a3;
  *(v7 + 48) = a1;
  v8 = type metadata accessor for RouteDestination();
  *(v7 + 96) = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  *(v7 + 104) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6349498, 0, 0);
}

uint64_t sub_1E6349498()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 26);
  v4 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v4);
  v5 = 8 * v2;
  v7 = *(v0 + 96);
  v6 = *(v0 + 104);
  v8 = *(v0 + 80);
  v9 = *(v0 + 72);
  v11 = *(v0 + 56);
  v10 = *(v0 + 64);
  v12 = *(v0 + 48);
  *v6 = 0;
  *(v6 + 8) = 0;
  *(v6 + 16) = v12;
  *(v6 + 24) = v11;
  *(v6 + 32) = v10;
  *(v6 + 40) = 0x2010003u >> v5;
  *(v6 + 48) = v9;
  *(v6 + 56) = v8;
  type metadata accessor for RouteResource();
  swift_storeEnumTagMultiPayload();
  v13 = *(v7 + 20);
  type metadata accessor for RouteSource(0);
  swift_storeEnumTagMultiPayload();
  *(v6 + *(v7 + 24)) = MEMORY[0x1E69E7CD0];
  sub_1E611D1C0(v0 + 16);
  v14 = *(v0 + 24);
  *(v0 + 32) = *(v0 + 16);
  *(v0 + 40) = v14;
  sub_1E600F5B0((v0 + 25));

  v15 = v8;
  v16 = swift_task_alloc();
  *(v0 + 112) = v16;
  *v16 = v0;
  v16[1] = sub_1E6349638;
  v17 = *(v0 + 104);

  return RoutingContext.presentDestination(_:style:priority:)(v17, (v0 + 32), (v0 + 25), v4, v3);
}

uint64_t sub_1E6349638()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *v1;
  *(v4 + 120) = v0;

  sub_1E5F94E00(*(v4 + 32), *(v4 + 40));
  sub_1E60111F8(v3);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E63497AC, 0, 0);
  }

  else
  {
    v5 = *(v4 + 104);

    v6 = *(v4 + 8);

    return v6();
  }
}

uint64_t sub_1E63497AC()
{
  v1 = v0[13];

  v2 = v0[1];
  v3 = v0[15];

  return v2();
}

uint64_t sub_1E6349810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078810, &qword_1E65FD9F8);
  v3[13] = v4;
  v5 = *(v4 - 8);
  v3[14] = v5;
  v6 = *(v5 + 64) + 15;
  v3[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63498E0, 0, 0);
}

uint64_t sub_1E63498E0()
{
  v1 = v0[12];
  v0[16] = *(v1 + *(type metadata accessor for AppComposer() + 24));
  v0[17] = sub_1E65E6058();
  v0[18] = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6349990, v3, v2);
}

uint64_t sub_1E6349990()
{
  v1 = v0[18];
  v2 = v0[16];

  sub_1E5E20198(27, (v0 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D18, &qword_1E65EECF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078038, &qword_1E65FB420);
  if (swift_dynamicCast())
  {
    v0[19] = v0[9];
    v3 = sub_1E6349AC8;
  }

  else
  {
    v3 = sub_1E6349A68;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E6349A68()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E6349AC8()
{
  v1 = v0[17];
  v2 = v0[11];
  v0[7] = v0[10];
  v0[8] = v2;
  v0[20] = sub_1E65E6048();
  v4 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6349B5C, v4, v3);
}

uint64_t sub_1E6349B5C()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[15];

  sub_1E65E4E98();

  return MEMORY[0x1EEE6DFA0](sub_1E6349BDC, 0, 0);
}

uint64_t sub_1E6349BDC()
{
  v1 = *(v0 + 136);
  *(v0 + 168) = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6349C68, v3, v2);
}

uint64_t sub_1E6349C68()
{
  v1 = v0[21];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];

  sub_1E65E4E28();
  (*(v3 + 8))(v2, v4);
  v5 = v0[15];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1E6349D00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v103 = a6;
  v99 = a5;
  v110 = a4;
  v117 = a3;
  v92 = a1;
  v108 = a7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AE0, &qword_1E65F9E00);
  v106 = *(v8 - 8);
  v107 = v8;
  v9 = *(v106 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v87 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v105 = &v85 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v86 = &v85 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v104 = &v85 - v16;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0753A8, &qword_1E65F1A30);
  v17 = *(*(v100 - 8) + 64);
  MEMORY[0x1EEE9AC00](v100);
  v98 = &v85 - v18;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075850, &qword_1E65F1E18);
  v96 = *(v97 - 8);
  v19 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v97);
  v95 = &v85 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078800, &qword_1E65FD9E8);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v116 = &v85 - v23;
  v94 = sub_1E65D76F8();
  v93 = *(v94 - 8);
  v24 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v94);
  v115 = &v85 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v91 = &v85 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v89 = &v85 - v31;
  v90 = sub_1E65D7848();
  v88 = *(v90 - 8);
  v32 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v90);
  v114 = &v85 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1E65E1518();
  v101 = *(v34 - 8);
  v102 = v34;
  v35 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v85 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0753C0, &unk_1E6606290);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v85 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DE0, &qword_1E65F84B0);
  v43 = *(v42 - 8);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v46 = &v85 - v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C8, &unk_1E6605140);
  v48 = *(*(v47 - 8) + 64);
  v49 = MEMORY[0x1EEE9AC00](v47 - 8);
  v111 = &v85 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v52 = &v85 - v51;
  v53 = type metadata accessor for AppState();
  v54 = v53[77];
  v109 = a2;
  v118 = a2;
  v119 = v117;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0777C0, &unk_1E65F84E0);
  v55 = v92;
  sub_1E65E4D78();
  sub_1E65E4C98();
  v56 = v42;
  v57 = v88;
  (*(v43 + 8))(v46, v56);
  v58 = v89;
  sub_1E65DE788();
  sub_1E634B00C();
  v112 = v52;
  v59 = v90;
  sub_1E65E4DA8();
  sub_1E5DFE50C(v41, &qword_1ED0753C0, &unk_1E6606290);
  v113 = v37;
  sub_1E65E14F8();
  v60 = v53[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  v61 = v91;
  sub_1E65E4C98();
  sub_1E5E1F544(v58);
  sub_1E5DFE50C(v61, &qword_1ED071F78, &unk_1E65EA3F0);
  v62 = *(v57 + 48);
  if (v62(v58, 1, v59) == 1)
  {
    sub_1E65D77C8();
    if (v62(v58, 1, v59) != 1)
    {
      sub_1E5DFE50C(v58, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    (*(v57 + 32))(v114, v58, v59);
  }

  (*(v93 + 16))(v115, v99, v94);
  sub_1E634B064(v112, v111);
  v63 = v53[46];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074BF8, &qword_1E65F10B8);
  v64 = v95;
  sub_1E65E4D78();
  v65 = v98;
  v66 = v97;
  sub_1E65E4C98();
  (*(v96 + 8))(v64, v66);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075830, &qword_1E65F1DE8);
  sub_1E634B0D4();
  sub_1E65E4DA8();
  sub_1E5DFE50C(v65, &qword_1ED0753A8, &qword_1E65F1A30);
  v67 = v55 + v53[48];
  v68 = *(v67 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073858, &unk_1E65F84A0);
  sub_1E65DE488();
  v69 = MEMORY[0x1E699CB70];
  v70 = v106;
  v71 = v104;
  if (*(v68 + 16))
  {
    v72 = sub_1E6215038(v118, v119);
    v74 = v73;

    if (v74)
    {
      v75 = *(v68 + 56) + *(v70 + 72) * v72;
      v76 = v86;
      v77 = v107;
      (*(v70 + 16))(v86, v75, v107);
      (*(v70 + 32))(v71, v76, v77);
      goto LABEL_10;
    }
  }

  else
  {
  }

  v77 = v107;
  (*(v70 + 104))(v71, *v69, v107);
LABEL_10:
  v78 = *(v67 + 104);
  sub_1E65DE488();
  if (!*(v78 + 16))
  {

    goto LABEL_14;
  }

  v79 = sub_1E6215038(v118, v119);
  v81 = v80;

  if ((v81 & 1) == 0)
  {
LABEL_14:
    (*(v70 + 104))(v105, *v69, v77);
    goto LABEL_15;
  }

  v82 = *(v78 + 56) + *(v70 + 72) * v79;
  v83 = v87;
  (*(v70 + 16))(v87, v82, v77);
  (*(v70 + 32))(v105, v83, v77);
LABEL_15:

  sub_1E65DEAE8();
  (*(v101 + 8))(v113, v102);
  return sub_1E5DFE50C(v112, &qword_1ED0737C8, &unk_1E6605140);
}

uint64_t sub_1E634A874(uint64_t a1, uint64_t a2)
{
  v15[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AB0, &qword_1E65EC480);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v15 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073858, &unk_1E65F84A0);
  sub_1E65DE488();
  v7 = v16;
  v8 = v17;
  sub_1E65DEB18();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AE0, &qword_1E65F9E00);
  v10 = *(*(v9 - 8) + 56);
  v10(v6, 0, 1, v9);
  v11 = a1 + *(type metadata accessor for AppState() + 192);
  sub_1E6408074(v6, v7, v8);
  sub_1E65DE488();
  v12 = v16;
  v13 = v17;
  sub_1E65DEB08();
  v10(v6, 0, 1, v9);
  return sub_1E6408074(v6, v12, v13);
}

uint64_t sub_1E634AA0C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v42 = a5;
  v43 = a3;
  v40 = a2;
  v7 = type metadata accessor for AppComposer();
  v45 = *(v7 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v46 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E65DEC18();
  v34 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v38 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E65DEB28();
  v33 = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v33 - v18;
  v41 = &v33 - v18;
  v37 = *a1;
  v36 = *(a1 + 8);
  v20 = sub_1E65E60A8();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  (*(v13 + 16))(v15, v40, v12);
  v21 = v38;
  (*(v10 + 16))(v38, v42, v9);
  sub_1E5E1DEAC(v43, v46);
  v35 = *a4;
  v22 = a4[5];
  v39 = a4[3];
  v40 = v22;
  v23 = a4[9];
  v42 = a4[7];
  v43 = v23;
  v24 = (*(v13 + 80) + 41) & ~*(v13 + 80);
  v25 = (v14 + *(v10 + 80) + v24) & ~*(v10 + 80);
  v26 = (v11 + *(v45 + 80) + v25) & ~*(v45 + 80);
  v27 = (v44 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  *(v28 + 32) = v37;
  *(v28 + 40) = v36;
  (*(v13 + 32))(v28 + v24, v15, v33);
  (*(v10 + 32))(v28 + v25, v21, v34);
  sub_1E5E1FA80(v46, v28 + v26);
  v29 = (v28 + v27);
  v30 = *(a4 + 3);
  v29[2] = *(a4 + 2);
  v29[3] = v30;
  v29[4] = *(a4 + 4);
  v31 = *(a4 + 1);
  *v29 = *a4;
  v29[1] = v31;
  swift_unknownObjectRetain();

  sub_1E6059EAC(0, 0, v41, &unk_1E65FD9E0, v28);
}

uint64_t sub_1E634AE0C(uint64_t a1)
{
  v3 = v2;
  v4 = *(sub_1E65DEB28() - 8);
  v5 = (*(v4 + 80) + 41) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(sub_1E65DEC18() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(type metadata accessor for AppComposer() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = *(v1 + 16);
  v13 = *(v1 + 24);
  v14 = *(v1 + 32);
  v15 = v1 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
  v16 = *(v1 + 40);
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_1E5DFA78C;

  return sub_1E618AABC(a1, v12, v13, v14, v16, v1 + v5, v1 + v8, v1 + v11);
}

unint64_t sub_1E634B00C()
{
  result = qword_1EE2D6880;
  if (!qword_1EE2D6880)
  {
    sub_1E65DE788();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D6880);
  }

  return result;
}

uint64_t sub_1E634B064(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C8, &unk_1E6605140);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E634B0D4()
{
  result = qword_1ED078808;
  if (!qword_1ED078808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED075830, &qword_1E65F1DE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078808);
  }

  return result;
}

uint64_t sub_1E634B13C@<X0>(uint64_t a1@<X8>)
{
  v43 = sub_1E65D9CC8();
  v3 = *(v43 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v42 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1E65E0DB8();
  v6 = *(v41 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v44 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E65D9108();
  v10 = sub_1E65D90D8();
  v11 = sub_1E65D9118();
  v12 = sub_1E65D90E8();
  v13 = sub_1E65D9128();
  v14 = sub_1E65D90A8();
  v15 = *(v14 + 16);
  if (v15)
  {
    v35[1] = v13;
    v35[2] = v12;
    v35[3] = v11;
    v35[4] = v10;
    v35[5] = v9;
    v35[6] = v1;
    v35[7] = a1;
    v49 = MEMORY[0x1E69E7CC0];
    v16 = v14;
    v45 = v15;
    sub_1E601CF04(0, v15, 0);
    v18 = *(v3 + 16);
    v17 = v3 + 16;
    v38 = v18;
    v19 = v49;
    v20 = (*(v17 + 64) + 32) & ~*(v17 + 64);
    v35[0] = v16;
    v21 = v16 + v20;
    v22 = *(v17 + 56);
    v36 = (v17 - 8);
    v37 = v22;
    v35[8] = v6 + 32;
    v23 = v44;
    v39 = v6;
    v40 = v17;
    do
    {
      v24 = v42;
      v25 = v43;
      v38(v42, v21, v43);
      sub_1E65D9C98();
      v44 = v26;
      v27 = sub_1E65D9CA8();
      v29 = v28;
      v46 = v27;
      v47 = v28;
      v31 = v30 & 1;
      v48 = v30 & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752A8, &unk_1E660CC10);
      sub_1E65D7F98();
      sub_1E5FEE4CC(v27, v29, v31);
      sub_1E65E0D98();
      (*v36)(v24, v25);
      v49 = v19;
      v33 = *(v19 + 16);
      v32 = *(v19 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_1E601CF04(v32 > 1, v33 + 1, 1);
        v19 = v49;
      }

      *(v19 + 16) = v33 + 1;
      (*(v39 + 32))(v19 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v33, v23, v41);
      v21 += v37;
      --v45;
    }

    while (v45);
  }

  sub_1E65D9138();
  sub_1E65D90B8();
  sub_1E65D90C8();
  return sub_1E65E0CA8();
}

uint64_t CatalogFilterPropertyType.filterKind()(char a1)
{
  return byte_1E65FDA10[a1];
}

{
  return byte_1E65FDA1E[a1];
}

void sub_1E634B514(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E6989900]) init];
  v5 = sub_1E65D79A8();
  v7 = v6;
  v8 = objc_allocWithZone(MEMORY[0x1E6989928]);
  v9 = sub_1E65D7508();
  sub_1E600A068(v5, v7);
  v10 = [v8 initWithData_];

  if (v10)
  {
    v11 = [objc_allocWithZone(MEMORY[0x1E69898F8]) initWithCodable_];
    sub_1E5FFF690(a1, v4, a2);
    v12 = [v4 titleForAchievement_];
    if (v12)
    {
      v13 = v12;
      sub_1E65E5C78();
    }

    sub_1E5FFF598();
    sub_1E65DBAA8();
  }

  else
  {
    v14 = sub_1E65DB938();
    sub_1E634B6F8();
    swift_allocError();
    (*(*(v14 - 8) + 104))(v15, *MEMORY[0x1E699D148], v14);
    swift_willThrow();
  }
}

unint64_t sub_1E634B6F8()
{
  result = qword_1ED076CD8;
  if (!qword_1ED076CD8)
  {
    sub_1E65DB938();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076CD8);
  }

  return result;
}

uint64_t sub_1E634B750(uint64_t a1)
{
  v2 = sub_1E65E3B68();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E65D79A8();
  v9 = v8;
  v10 = objc_allocWithZone(MEMORY[0x1E6989928]);
  v11 = sub_1E65D7508();
  sub_1E600A068(v7, v9);
  v12 = [v10 initWithData_];

  if (!v12)
  {
    v23 = sub_1E65DB938();
    sub_1E634B6F8();
    swift_allocError();
    (*(*(v23 - 8) + 104))(v24, *MEMORY[0x1E699D148], v23);
    return swift_willThrow();
  }

  v13 = [objc_allocWithZone(MEMORY[0x1E69898F8]) initWithCodable_];
  v14 = [v13 template];
  v15 = [v14 uniqueName];

  if (!v15)
  {
    sub_1E65DB998();
    goto LABEL_12;
  }

  v44 = v3;
  v16 = sub_1E65E5C78();
  v18 = v17;

  v19 = sub_1E65DB998();
  if (!v18)
  {
LABEL_12:

    goto LABEL_13;
  }

  if (v16 == v19 && v18 == v20)
  {

    goto LABEL_16;
  }

  v22 = sub_1E65E6C18();

  if ((v22 & 1) == 0)
  {
LABEL_13:
    v26 = [v13 unearned];
    goto LABEL_14;
  }

LABEL_16:
  v27 = *(a1 + 32);
  if (v27 == 255 || (v27 & 1) == 0)
  {
    sub_1E65DB958();
    sub_1E634BB84(a1, v45);
    v28 = sub_1E65E3B48();
    v29 = sub_1E65E6338();
    sub_1E634BBF4(a1);
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v47 = v43;
      *v30 = 136315394;
      v31 = sub_1E65DB998();
      v42 = v28;
      v33 = sub_1E5DFD4B0(v31, v32, &v47);
      HIDWORD(v41) = v29;
      v34 = v33;

      *(v30 + 4) = v34;
      *(v30 + 12) = 2080;
      v35 = *(a1 + 16);
      v45[0] = *a1;
      v45[1] = v35;
      v46 = *(a1 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078818, &qword_1E65FDA30);
      v36 = sub_1E65E6648();
      v38 = sub_1E5DFD4B0(v36, v37, &v47);

      *(v30 + 14) = v38;
      v39 = v42;
      _os_log_impl(&dword_1E5DE9000, v42, BYTE4(v41), "Award progress provided for %s was %s, returning .unearned state", v30, 0x16u);
      v40 = v43;
      swift_arrayDestroy();
      MEMORY[0x1E694F1C0](v40, -1, -1);
      MEMORY[0x1E694F1C0](v30, -1, -1);
    }

    else
    {
    }

    (*(v44 + 8))(v6, v2);
    v26 = 1;
    return v26 & 1;
  }

  v26 = *(a1 + 8);
LABEL_14:

  return v26 & 1;
}

uint64_t sub_1E634BB84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078818, &qword_1E65FDA30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E634BBF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078818, &qword_1E65FDA30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E634BC5C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v21[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D90, &qword_1E66040F0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v21 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = v21 - v13;
  v15 = sub_1E65DA4D8();
  sub_1E63C4134(a1, a2, v15, v14);

  v16 = sub_1E65D72D8();
  v17 = *(*(v16 - 8) + 56);
  v17(v14, 0, 1, v16);
  v18 = sub_1E65DA508();
  sub_1E63C4134(a1, a2, v18, v12);

  v17(v12, 0, 1, v16);
  v19 = sub_1E65DA4E8();
  sub_1E63C4134(a1, a2, v19, v9);

  v17(v9, 0, 1, v16);
  return sub_1E65E1608();
}

uint64_t AppSceneCoordinator.selectRootItem(_:)(uint64_t *a1)
{
  v3 = type metadata accessor for AppAction();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *a1;
  v7 = a1[1];
  v9 = *(*(v1 + 56) + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_composer);
  *v6 = v8;
  v6[1] = v7;
  swift_storeEnumTagMultiPayload();

  sub_1E5E05374(v8, v7);
  sub_1E65E4EE8();

  return sub_1E634C070(v6, type metadata accessor for AppAction);
}

id AppSceneCoordinator.navigationController(for:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A30, &qword_1E65EEA70);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = (v14 - v5);
  v8 = *a1;
  v7 = a1[1];
  v9 = __swift_project_boxed_opaque_existential_1((*(v1 + 56) + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_router), *(*(v1 + 56) + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_router + 24));
  v14[0] = v8;
  v14[1] = v7;
  v10 = *v9;
  sub_1E6335B2C(v14, v6);
  v11 = type metadata accessor for NavigationControllerRoutingContext();
  if ((*(*(v11 - 8) + 48))(v6, 1, v11) == 1)
  {
    sub_1E6135780(v6);
    return 0;
  }

  else
  {
    v13 = *v6;
    sub_1E634C070(v6, type metadata accessor for NavigationControllerRoutingContext);
    return v13;
  }
}

uint64_t sub_1E634C070(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E634C0F4(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E61A6724, *v2, 0);
}

uint64_t sub_1E634C114@<X0>(uint64_t a1@<X8>)
{
  v13 = a1;
  v1 = sub_1E65E07B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E65E18E8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  sub_1E65E0708();
  sub_1E65E0668();
  sub_1E65E0758();
  sub_1E65E0798();
  sub_1E65E0788();
  sub_1E65E07A8();
  sub_1E65E18D8();
  (*(v2 + 8))(v5, v1);
  sub_1E65E18C8();
  (*(v7 + 8))(v11, v6);
  return sub_1E65E19A8();
}

uint64_t sub_1E634C394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v112 = a3;
  v113 = a1;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073DC0, &qword_1E65EEE10);
  v101 = *(v111 - 8);
  v5 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v111);
  v100 = &v90 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078820, &qword_1E65FDAE8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v90 - v9;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078828, &qword_1E65FDAF0);
  v11 = *(*(v104 - 8) + 64);
  MEMORY[0x1EEE9AC00](v104);
  v106 = &v90 - v12;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073DB0, &qword_1E65EEE00);
  v13 = *(*(v107 - 8) + 64);
  MEMORY[0x1EEE9AC00](v107);
  v15 = &v90 - v14;
  v16 = type metadata accessor for AppComposer();
  v17 = v16 - 8;
  v18 = *(v16 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v16);
  v103 = &v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v102 = &v90 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v90 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v90 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073DB8, &qword_1E65EEE08);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v33 = &v90 - v32;
  v34 = *(v3 + *(v17 + 28) + 8);
  v109 = v7;
  v110 = v10;
  v108 = v15;
  v105 = v30;
  if (v34 >= 2)
  {
    v63 = v18;
    v98 = v25;
    v64 = v113;
    if (v34 == 3)
    {
      v99 = type metadata accessor for AppComposer;
      v65 = v3;
      sub_1E5E1D8FC(v3, v27, type metadata accessor for AppComposer);
      sub_1E5DF650C(v64, &v116);
      v91 = *a2;
      v93 = *(a2 + 24);
      v94 = *(a2 + 40);
      v95 = *(a2 + 56);
      v96 = *(a2 + 72);
      v66 = (*(v63 + 80) + 16) & ~*(v63 + 80);
      v67 = (v66 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
      v68 = (v67 + 47) & 0xFFFFFFFFFFFFFFF8;
      v69 = swift_allocObject();
      v97 = v69;
      sub_1E5E1E730(v27, v69 + v66, type metadata accessor for AppComposer);
      sub_1E5DF599C(&v116, v69 + v67);
      v70 = (v69 + v68);
      v71 = *(a2 + 48);
      v70[2] = *(a2 + 32);
      v70[3] = v71;
      v70[4] = *(a2 + 64);
      v72 = *(a2 + 16);
      *v70 = *a2;
      v70[1] = v72;
      v73 = v98;
      v74 = v99;
      sub_1E5E1D8FC(v65, v98, v99);
      v92 = swift_allocObject();
      sub_1E5E1E730(v73, v92 + v66, type metadata accessor for AppComposer);
      v75 = v102;
      sub_1E5E1D8FC(v65, v102, v74);
      v76 = v113;
      sub_1E5DF650C(v113, &v115);
      v77 = swift_allocObject();
      sub_1E5E1E730(v75, v77 + v66, type metadata accessor for AppComposer);
      sub_1E5DF599C(&v115, v77 + v67);
      v78 = (v77 + v68);
      v79 = *(a2 + 48);
      v78[2] = *(a2 + 32);
      v78[3] = v79;
      v78[4] = *(a2 + 64);
      v80 = *(a2 + 16);
      *v78 = *a2;
      v78[1] = v80;
      v81 = v103;
      sub_1E5E1D8FC(v65, v103, v99);
      sub_1E5DF650C(v76, v114);
      v82 = swift_allocObject();
      sub_1E5E1E730(v81, v82 + v66, type metadata accessor for AppComposer);
      sub_1E5DF599C(v114, v82 + v67);
      v83 = (v82 + v68);
      v84 = *(a2 + 48);
      v83[2] = *(a2 + 32);
      v83[3] = v84;
      v83[4] = *(a2 + 64);
      v85 = *(a2 + 16);
      *v83 = *a2;
      v83[1] = v85;
      swift_unknownObjectRetain_n();
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073EE0, &qword_1E65EEE98);
      sub_1E5FEB2FC();
      sub_1E60731B0();
      v86 = v100;
      sub_1E65E2528();
      v87 = v101;
      v88 = v111;
      (*(v101 + 16))(v106, v86, v111);
      swift_storeEnumTagMultiPayload();
      sub_1E5FED46C(&unk_1EE2D6270, &qword_1ED073DB8, &qword_1E65EEE08);
      sub_1E5FED46C(&unk_1EE2D6230, &qword_1ED073DC0, &qword_1E65EEE10);
      v89 = v108;
      sub_1E65E4138();
      sub_1E5F0F880(v89, v110);
      swift_storeEnumTagMultiPayload();
      sub_1E6071B80();
      sub_1E65E4138();
      sub_1E5F0F8F0(v89);
      return (*(v87 + 8))(v86, v88);
    }

    else
    {
      result = sub_1E65E69D8();
      __break(1u);
    }
  }

  else
  {
    v91 = type metadata accessor for AppComposer;
    v100 = v33;
    v101 = v31;
    sub_1E5E1D8FC(v3, v27, type metadata accessor for AppComposer);
    sub_1E5DF650C(v113, &v116);
    v94 = *a2;
    v95 = *(a2 + 24);
    v96 = *(a2 + 40);
    v97 = *(a2 + 56);
    v98 = *(a2 + 72);
    v90 = v3;
    v35 = (*(v18 + 80) + 16) & ~*(v18 + 80);
    v92 = (v35 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
    v36 = (v92 + 47) & 0xFFFFFFFFFFFFFFF8;
    v37 = swift_allocObject();
    v99 = v37;
    sub_1E5E1E730(v27, v37 + v35, type metadata accessor for AppComposer);
    sub_1E5DF599C(&v116, v37 + ((v35 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
    v38 = (v37 + v36);
    v39 = *(a2 + 48);
    v38[2] = *(a2 + 32);
    v38[3] = v39;
    v38[4] = *(a2 + 64);
    v40 = *(a2 + 16);
    *v38 = *a2;
    v38[1] = v40;
    v41 = v90;
    v42 = v91;
    sub_1E5E1D8FC(v90, v25, v91);
    v93 = swift_allocObject();
    sub_1E5E1E730(v25, v93 + v35, type metadata accessor for AppComposer);
    v43 = v41;
    v44 = v41;
    v45 = v102;
    sub_1E5E1D8FC(v43, v102, v42);
    v46 = v113;
    sub_1E5DF650C(v113, &v115);
    v47 = swift_allocObject();
    sub_1E5E1E730(v45, v47 + v35, type metadata accessor for AppComposer);
    v48 = v92;
    sub_1E5DF599C(&v115, v47 + v92);
    v49 = (v47 + v36);
    v50 = *(a2 + 48);
    v49[2] = *(a2 + 32);
    v49[3] = v50;
    v49[4] = *(a2 + 64);
    v51 = *(a2 + 16);
    *v49 = *a2;
    v49[1] = v51;
    v52 = v44;
    v53 = v103;
    sub_1E5E1D8FC(v52, v103, v42);
    sub_1E5DF650C(v46, v114);
    v54 = swift_allocObject();
    sub_1E5E1E730(v53, v54 + v35, type metadata accessor for AppComposer);
    sub_1E5DF599C(v114, v54 + v48);
    v55 = (v54 + v36);
    v56 = *(a2 + 48);
    v55[2] = *(a2 + 32);
    v55[3] = v56;
    v55[4] = *(a2 + 64);
    v57 = *(a2 + 16);
    *v55 = *a2;
    v55[1] = v57;
    swift_unknownObjectRetain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073EE0, &qword_1E65EEE98);
    sub_1E5FEB2FC();
    sub_1E60731B0();
    v58 = v100;
    sub_1E65E2228();
    v59 = v101;
    v60 = v105;
    (*(v101 + 16))(v106, v58, v105);
    swift_storeEnumTagMultiPayload();
    sub_1E5FED46C(&unk_1EE2D6270, &qword_1ED073DB8, &qword_1E65EEE08);
    sub_1E5FED46C(&unk_1EE2D6230, &qword_1ED073DC0, &qword_1E65EEE10);
    v61 = v108;
    sub_1E65E4138();
    sub_1E5F0F880(v61, v110);
    swift_storeEnumTagMultiPayload();
    sub_1E6071B80();
    sub_1E65E4138();
    sub_1E5F0F8F0(v61);
    return (*(v59 + 8))(v58, v60);
  }

  return result;
}

uint64_t sub_1E634D0BC(uint64_t a1, uint64_t *a2)
{
  v5 = type metadata accessor for AppComposer();
  v41 = *(v5 - 8);
  v6 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078830, &qword_1E65FDB40);
  v45 = *(v8 - 8);
  v46 = v8;
  v9 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v38 = v36 - v10;
  v11 = sub_1E65E21F8();
  v43 = *(v11 - 8);
  v44 = v11;
  v12 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v39 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E65E2218();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1E65E2278();
  v42 = *(v37 - 8);
  v18 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v20 = v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = *v2;
  sub_1E634F62C(a1, v17);
  sub_1E65E2268();
  sub_1E65E21E8();
  type metadata accessor for AppFeature();
  sub_1E6355990(&qword_1EE2DBD90, type metadata accessor for AppFeature);
  v36[1] = sub_1E6355990(&qword_1ED078838, MEMORY[0x1E699F248]);
  sub_1E65E4DE8();
  sub_1E5E1D8FC(v2, v7, type metadata accessor for AppComposer);
  v21 = *a2;
  v22 = a2[3];
  v23 = a2[5];
  v24 = a2[7];
  v36[0] = a2[9];
  v25 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v26 = (v6 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  sub_1E5E1E730(v7, v27 + v25, type metadata accessor for AppComposer);
  v28 = (v27 + v26);
  v29 = *(a2 + 3);
  v28[2] = *(a2 + 2);
  v28[3] = v29;
  v28[4] = *(a2 + 4);
  v30 = *(a2 + 1);
  *v28 = *a2;
  v28[1] = v30;
  swift_unknownObjectRetain();

  v31 = v38;
  v32 = v39;
  v33 = v37;
  v34 = sub_1E65E4F08();

  (*(v45 + 8))(v31, v46);
  (*(v43 + 8))(v32, v44);
  (*(v42 + 8))(v20, v33);
  return v34;
}

uint64_t sub_1E634D5A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_1E65D8F28();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = *(*(sub_1E65D7848() - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v8 = *(*(sub_1E65E5C28() - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v9 = type metadata accessor for PageMetricsClick();
  v3[10] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v3[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E634D6EC, 0, 0);
}

uint64_t sub_1E634D6EC()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v39 = v0[7];
  v42 = v0[6];
  v5 = v0[4];
  v43 = v0[5];
  v7 = v0[2];
  v6 = v0[3];
  v40 = *(v6 + 48);
  v41 = *(v6 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E58, &qword_1E65F0E90);
  v8 = *(sub_1E65D86A8() - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1E65EA670;
  sub_1E65E28A8();
  _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
  sub_1E65E5BA8();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass_];
  v13 = *v5;
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65E5D48();
  (*(v42 + 104))(v39, *MEMORY[0x1E69CBCB0], v43);
  sub_1E6427498(MEMORY[0x1E69E7CC0]);
  sub_1E65D8678();
  sub_1E5DFD1CC(v7, v1, &qword_1ED073578, &qword_1E65F0E60);
  v14 = v2[5];
  v15 = sub_1E65D8C68();
  (*(*(v15 - 8) + 16))(v1 + v14, v7 + v14, v15);
  sub_1E5DFD1CC(v7 + v2[6], v1 + v2[6], &qword_1ED072340, &qword_1E65EA410);
  v45 = *(v7 + v2[7]);

  sub_1E5FAA0F0(v37);
  sub_1E5DFD1CC(v7 + v2[8], v1 + v2[8], &qword_1ED073570, &unk_1E65F4570);
  v16 = (v7 + v2[9]);
  v17 = *v16;
  v18 = v16[1];
  v19 = (v7 + v2[10]);
  v20 = v19[1];
  v36 = v17;
  v38 = *v19;
  v21 = *(v7 + v2[11]);
  v22 = (v7 + v2[12]);
  v23 = v22[1];
  v35 = *v22;
  v24 = (v7 + v2[13]);
  v26 = *v24;
  v25 = v24[1];
  (*(v42 + 16))(v1 + v2[14], v7 + v2[14], v43);
  sub_1E5DFD1CC(v7 + v2[15], v1 + v2[15], &qword_1ED072330, &qword_1E65EAB70);
  *(v1 + v2[7]) = v45;
  v27 = (v1 + v2[9]);
  *v27 = v36;
  v27[1] = v18;
  v28 = (v1 + v2[10]);
  *v28 = v38;
  v28[1] = v20;
  *(v1 + v2[11]) = v21;
  v29 = (v1 + v2[12]);
  *v29 = v35;
  v29[1] = v23;
  v30 = (v1 + v2[13]);
  *v30 = v26;
  v30[1] = v25;

  v44 = (v40 + *v40);
  v31 = v40[1];
  v32 = swift_task_alloc();
  v0[12] = v32;
  *v32 = v0;
  v32[1] = sub_1E634DB84;
  v33 = v0[11];

  return v44(v33);
}

uint64_t sub_1E634DB84()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *v1;
  v4[13] = v0;

  sub_1E6355930(v3, type metadata accessor for PageMetricsClick);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E6356888, 0, 0);
  }

  else
  {
    v5 = v4[11];
    v7 = v4[8];
    v6 = v4[9];
    v8 = v4[7];

    v9 = v4[1];

    return v9();
  }
}

uint64_t sub_1E634DD20@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, uint64_t a4@<X8>)
{
  v27 = a4;
  v28 = a2;
  v26 = a1;
  v6 = type metadata accessor for AppComposer();
  *&v29 = *(v6 - 8);
  v7 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072638, &qword_1E65EB950);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v24 - v10;
  v12 = type metadata accessor for ActionButtonDescriptor(0);
  v11[*(v12 + 20)] = 0;
  type metadata accessor for ActionButtonDescriptor.Kind(0);
  swift_storeEnumTagMultiPayload();
  sub_1E65D76E8();
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  v13 = *(a3 + 2);
  v14 = *(a3 + 5);
  v15 = *(a3 + 8);
  v25 = *(a3 + 7);
  v16 = *(a3 + 9);
  sub_1E5E1D8FC(a1, &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppComposer);
  v17 = (*(v29 + 80) + 96) & ~*(v29 + 80);
  v18 = swift_allocObject();
  v24 = *a3;
  v29 = *(a3 + 24);
  v19 = a3[3];
  v18[3] = a3[2];
  v18[4] = v19;
  v18[5] = a3[4];
  v20 = a3[1];
  v18[1] = *a3;
  v18[2] = v20;
  sub_1E5E1E730(&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for AppComposer);
  v30 = v24;
  v31 = v13;
  v32 = v29;
  v33 = v14;
  v34 = &unk_1E65FDC00;
  v35 = v18;
  v36 = v15;
  v37 = v16;
  swift_unknownObjectRetain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();

  v21 = v27;
  sub_1E6034CCC(v11, v28, &v30, v27);

  swift_unknownObjectRelease();
  sub_1E5DFE50C(v11, &qword_1ED072638, &qword_1E65EB950);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073EE0, &qword_1E65EEE98);
  return (*(*(v22 - 8) + 56))(v21, 0, 1, v22);
}

uint64_t sub_1E634E058@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppComposer() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  return sub_1E634DD20(v1 + v4, v1 + v5, (v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8)), a1);
}

uint64_t sub_1E634E110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_1E65D8F28();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = *(*(sub_1E65D7848() - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v8 = *(*(sub_1E65E5C28() - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v9 = type metadata accessor for PageMetricsClick();
  v3[10] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v3[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E634E25C, 0, 0);
}

uint64_t sub_1E634E25C()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v39 = v0[7];
  v42 = v0[6];
  v5 = v0[4];
  v43 = v0[5];
  v7 = v0[2];
  v6 = v0[3];
  v40 = *(v6 + 48);
  v41 = *(v6 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E58, &qword_1E65F0E90);
  v8 = *(sub_1E65D86A8() - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1E65EA670;
  sub_1E65E28A8();
  _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
  sub_1E65E5BA8();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass_];
  v13 = *v5;
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65E5D48();
  (*(v42 + 104))(v39, *MEMORY[0x1E69CBCB0], v43);
  sub_1E6427498(MEMORY[0x1E69E7CC0]);
  sub_1E65D8678();
  sub_1E5DFD1CC(v7, v1, &qword_1ED073578, &qword_1E65F0E60);
  v14 = v2[5];
  v15 = sub_1E65D8C68();
  (*(*(v15 - 8) + 16))(v1 + v14, v7 + v14, v15);
  sub_1E5DFD1CC(v7 + v2[6], v1 + v2[6], &qword_1ED072340, &qword_1E65EA410);
  v45 = *(v7 + v2[7]);

  sub_1E5FAA0F0(v37);
  sub_1E5DFD1CC(v7 + v2[8], v1 + v2[8], &qword_1ED073570, &unk_1E65F4570);
  v16 = (v7 + v2[9]);
  v17 = *v16;
  v18 = v16[1];
  v19 = (v7 + v2[10]);
  v20 = v19[1];
  v36 = v17;
  v38 = *v19;
  v21 = *(v7 + v2[11]);
  v22 = (v7 + v2[12]);
  v23 = v22[1];
  v35 = *v22;
  v24 = (v7 + v2[13]);
  v26 = *v24;
  v25 = v24[1];
  (*(v42 + 16))(v1 + v2[14], v7 + v2[14], v43);
  sub_1E5DFD1CC(v7 + v2[15], v1 + v2[15], &qword_1ED072330, &qword_1E65EAB70);
  *(v1 + v2[7]) = v45;
  v27 = (v1 + v2[9]);
  *v27 = v36;
  v27[1] = v18;
  v28 = (v1 + v2[10]);
  *v28 = v38;
  v28[1] = v20;
  *(v1 + v2[11]) = v21;
  v29 = (v1 + v2[12]);
  *v29 = v35;
  v29[1] = v23;
  v30 = (v1 + v2[13]);
  *v30 = v26;
  v30[1] = v25;

  v44 = (v40 + *v40);
  v31 = v40[1];
  v32 = swift_task_alloc();
  v0[12] = v32;
  *v32 = v0;
  v32[1] = sub_1E634E6F4;
  v33 = v0[11];

  return v44(v33);
}

uint64_t sub_1E634E6F4()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *v1;
  v4[13] = v0;

  sub_1E6355930(v3, type metadata accessor for PageMetricsClick);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E634E890, 0, 0);
  }

  else
  {
    v5 = v4[11];
    v7 = v4[8];
    v6 = v4[9];
    v8 = v4[7];

    v9 = v4[1];

    return v9();
  }
}

uint64_t sub_1E634E890()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[7];

  v5 = v0[1];
  v6 = v0[13];

  return v5();
}

uint64_t sub_1E634E91C()
{
  v1 = *(type metadata accessor for AppComposer() - 8);
  v2 = (*(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1E634D0BC(v0 + v2, (v0 + ((v2 + 47) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1E634E9B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v43 = a2;
  v44 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v43 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v43 - v14;
  v16 = type metadata accessor for ArtworkContent();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for ArtworkDescriptor();
  v21 = (v20 - 8);
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = (&v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075DC8, &qword_1E65F3948) + 48);
  sub_1E5DFD1CC(a1, v15, &qword_1ED0734E8, &qword_1E65ED470);
  sub_1E5DFD1CC(a3, v11, &qword_1ED072340, &qword_1E65EA410);
  sub_1E65DB248();
  sub_1E5DFD1CC(v43, &v19[v25], &qword_1ED073548, &qword_1E65ED508);
  swift_storeEnumTagMultiPayload();
  v26 = *(a4 + *(type metadata accessor for AppComposer() + 20) + 8);
  v27 = sub_1E65DAE38();
  v28 = sub_1E65DAE38();
  v29 = sub_1E65E4B48();
  v30 = 4.0;
  if (v29)
  {
    v30 = 8.0;
  }

  v31 = 16.0;
  if (v29)
  {
    v31 = 18.0;
  }

  if (v27 == v28)
  {
    v32 = v31;
  }

  else
  {
    v32 = v30;
  }

  if (v27 == v28)
  {
    v33 = 12.0;
  }

  else
  {
    v33 = 8.0;
  }

  sub_1E5E1E730(v19, v24, type metadata accessor for ArtworkContent);
  *(v24 + v21[7]) = MEMORY[0x1E69E7CD0];
  v34 = (v24 + v21[8]);
  *v34 = 0.0;
  v34[1] = v32;
  v34[2] = v32;
  v34[3] = v33;
  *(v24 + v21[9]) = 1;
  v35 = (v24 + v21[10]);
  *v35 = 0;
  v35[1] = 0;
  v36 = v44;
  sub_1E64D2DD0(v24, a4, v44);
  v37 = sub_1E65E4B98();
  v39 = v38;
  v40 = v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560) + 36);
  sub_1E64D54B4(v24, a4, v40);
  sub_1E6355930(v24, type metadata accessor for ArtworkDescriptor);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727A8, &qword_1E65EBC28);
  v42 = (v40 + *(result + 36));
  *v42 = v37;
  v42[1] = v39;
  return result;
}

uint64_t sub_1E634ED90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v35 = a7;
  v36 = a8;
  v37 = a4;
  *&v38 = a6;
  v33[1] = a3;
  v12 = type metadata accessor for AppComposer();
  *&v34 = *(v12 - 8);
  v13 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072638, &qword_1E65EB950);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = v33 - v17;
  v19 = type metadata accessor for ActionButtonDescriptor(0);
  v20 = &v18[*(v19 + 20)];
  *v20 = a1;
  *(v20 + 1) = a2;
  v20[16] = 12;
  type metadata accessor for ActionButtonDescriptor.Kind(0);
  swift_storeEnumTagMultiPayload();

  sub_1E65D76E8();
  (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
  v21 = *(a5 + 2);
  v22 = *(a5 + 5);
  v23 = *(a5 + 7);
  v24 = *(a5 + 8);
  v25 = *(a5 + 9);
  sub_1E5E1D8FC(a3, v14, type metadata accessor for AppComposer);
  v26 = (*(v34 + 80) + 96) & ~*(v34 + 80);
  v27 = swift_allocObject();
  v34 = *a5;
  v38 = *(a5 + 24);
  v28 = a5[3];
  v27[3] = a5[2];
  v27[4] = v28;
  v27[5] = a5[4];
  v29 = a5[1];
  v27[1] = *a5;
  v27[2] = v29;
  sub_1E5E1E730(v14, v27 + v26, type metadata accessor for AppComposer);
  v39 = v34;
  v40 = v21;
  v41 = v38;
  v42 = v22;
  v43 = v35;
  v44 = v27;
  v45 = v24;
  v46 = v25;
  swift_unknownObjectRetain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();

  v30 = v36;
  sub_1E6034CCC(v18, v37, &v39, v36);

  swift_unknownObjectRelease();
  sub_1E5DFE50C(v18, &qword_1ED072638, &qword_1E65EB950);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073EE0, &qword_1E65EEE98);
  return (*(*(v31 - 8) + 56))(v30, 0, 1, v31);
}

uint64_t sub_1E634F0F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = *(type metadata accessor for AppComposer() - 8);
  v12 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v13 = (*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1E634ED90(a1, a2, v5 + v12, v5 + v13, (v5 + ((v13 + 47) & 0xFFFFFFFFFFFFFFF8)), a3, a4, a5);
}

uint64_t sub_1E634F1C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a4;
  v26 = a2;
  v24 = a1;
  v6 = type metadata accessor for AppComposer();
  *&v27 = *(v6 - 8);
  v7 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072638, &qword_1E65EB950);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v22 - v10;
  v12 = type metadata accessor for ActionButtonDescriptor(0);
  v11[*(v12 + 20)] = 0;
  type metadata accessor for ActionButtonDescriptor.Kind(0);
  swift_storeEnumTagMultiPayload();
  sub_1E65D76E8();
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  v13 = *(a3 + 2);
  v14 = *(a3 + 5);
  v15 = *(a3 + 8);
  v23 = *(a3 + 7);
  v16 = *(a3 + 9);
  sub_1E5E1D8FC(a1, &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppComposer);
  v17 = (*(v27 + 80) + 96) & ~*(v27 + 80);
  v18 = swift_allocObject();
  v22 = *a3;
  v27 = *(a3 + 24);
  v19 = a3[3];
  v18[3] = a3[2];
  v18[4] = v19;
  v18[5] = a3[4];
  v20 = a3[1];
  v18[1] = *a3;
  v18[2] = v20;
  sub_1E5E1E730(&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for AppComposer);
  v28 = v22;
  v29 = v13;
  v30 = v27;
  v31 = v14;
  v32 = &unk_1E65FDB00;
  v33 = v18;
  v34 = v15;
  v35 = v16;
  swift_unknownObjectRetain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();

  sub_1E6034CCC(v11, v26, &v28, v25);

  swift_unknownObjectRelease();
  return sub_1E5DFE50C(v11, &qword_1ED072638, &qword_1E65EB950);
}

uint64_t sub_1E634F4A8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppComposer() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  return sub_1E634F1C0(v1 + v4, v1 + v5, (v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8)), a1);
}

uint64_t sub_1E634F550(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 96) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E634D5A0(a1, v1 + 16, v1 + v5);
}

uint64_t sub_1E634F62C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21[0] = a1;
  v21[1] = a2;
  v3 = type metadata accessor for AppComposer();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v21 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = v21 - v11;
  sub_1E5E1D8FC(v2, v21 - v11, type metadata accessor for AppComposer);
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v14 = swift_allocObject();
  sub_1E5E1E730(v12, v14 + v13, type metadata accessor for AppComposer);
  sub_1E5E1D8FC(v2, v10, type metadata accessor for AppComposer);
  v15 = swift_allocObject();
  sub_1E5E1E730(v10, v15 + v13, type metadata accessor for AppComposer);
  sub_1E5E1D8FC(v2, v7, type metadata accessor for AppComposer);
  v16 = swift_allocObject();
  sub_1E5E1E730(v7, v16 + v13, type metadata accessor for AppComposer);
  v17 = v21[0];
  sub_1E5DF650C(v21[0], v23);
  v18 = swift_allocObject();
  sub_1E5DF599C(v23, v18 + 16);
  sub_1E5DF650C(v17, v22);
  v19 = swift_allocObject();
  sub_1E5DF599C(v22, v19 + 16);
  return sub_1E65E2208();
}

uint64_t sub_1E634F8E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v23 - v9;
  v11 = sub_1E65D7848();
  v23 = *(v11 - 8);
  v12 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E65E07B8();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = type metadata accessor for AppState();
  v18 = v17[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  sub_1E65E0668();
  v19 = v23;
  sub_1E65E0708();
  v24 = *(a1 + v17[9] + 1);
  v20 = v17[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  sub_1E65E4C98();
  sub_1E5E1F544(v10);
  sub_1E5DFE50C(v6, &qword_1ED071F78, &unk_1E65EA3F0);
  v21 = *(v19 + 48);
  if (v21(v10, 1, v11) == 1)
  {
    sub_1E65D77C8();
    if (v21(v10, 1, v11) != 1)
    {
      sub_1E5DFE50C(v10, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    (*(v19 + 32))(v14, v10, v11);
  }

  return sub_1E65E2248();
}

uint64_t sub_1E634FBD0(uint64_t a1)
{
  v2 = sub_1E65E2238();
  result = type metadata accessor for AppState();
  *(a1 + *(result + 36) + 1) = v2;
  return result;
}

uint64_t sub_1E634FC10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  v59 = a5;
  v62 = a1;
  v6 = sub_1E65E2258();
  v64 = *(v6 - 8);
  v7 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v63 = v8;
  v65 = v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v67 = v55 - v11;
  v58 = sub_1E65D76F8();
  v57 = *(v58 - 8);
  v12 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v56 = v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072958, &qword_1E65EC0F0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = v55 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072960, &qword_1E65EC0F8);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = v55 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072968, &unk_1E6609800);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = v55 - v25;
  v27 = sub_1E65D7848();
  v60 = *(v27 - 8);
  v61 = v27;
  v28 = *(v60 + 64);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v30 = v55 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v32 = v55 - v31;
  v33 = *a4;
  swift_getKeyPath();
  v66 = v32;
  sub_1E65E4EC8();

  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65E4C98();
  sub_1E60EEC44(v26);
  sub_1E5DFE50C(v17, &qword_1ED072958, &qword_1E65EC0F0);
  (*(v19 + 8))(v22, v18);
  v34 = sub_1E65D7EB8();
  v35 = *(v34 - 8);
  if ((*(v35 + 48))(v26, 1, v34) == 1)
  {
    sub_1E5DFE50C(v26, &qword_1ED072968, &unk_1E6609800);
    v36 = 0;
    v37 = 0;
  }

  else
  {
    v38 = v56;
    sub_1E65D7DC8();
    (*(v35 + 8))(v26, v34);
    v36 = sub_1E65D76C8();
    v37 = v39;
    (*(v57 + 8))(v38, v58);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072970, &qword_1E65EC120);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E65EA670;
  *(inited + 32) = 9;
  v68 = v36;
  v69 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072978, &unk_1E65F0E80);
  sub_1E5FEE0FC();
  sub_1E65E6848();
  v58 = sub_1E6427784(inited);
  swift_setDeallocating();
  sub_1E5DFE50C(inited + 32, &qword_1ED072988, &qword_1E65EC128);
  v41 = sub_1E65E60A8();
  (*(*(v41 - 8) + 56))(v67, 1, 1, v41);
  v42 = v65;
  sub_1E5E1D8FC(v62, v65, MEMORY[0x1E699F238]);
  v43 = v59;
  v55[1] = *v59;
  v55[2] = v59[3];
  v56 = v59[5];
  v57 = v59[7];
  v62 = v59[9];
  v45 = v60;
  v44 = v61;
  (*(v60 + 16))(v30, v66, v61);
  v46 = (*(v64 + 80) + 32) & ~*(v64 + 80);
  v47 = (v63 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
  v48 = (v47 + 15) & 0xFFFFFFFFFFFFFFF8;
  v49 = (*(v45 + 80) + v48 + 80) & ~*(v45 + 80);
  v50 = swift_allocObject();
  *(v50 + 16) = 0;
  *(v50 + 24) = 0;
  sub_1E5E1E730(v42, v50 + v46, MEMORY[0x1E699F238]);
  *(v50 + v47) = v58;
  v51 = (v50 + v48);
  v52 = v43[4];
  v51[3] = v43[3];
  v51[4] = v52;
  v53 = v43[2];
  v51[1] = v43[1];
  v51[2] = v53;
  *v51 = *v43;
  (*(v45 + 32))(v50 + v49, v30, v44);
  swift_unknownObjectRetain();

  sub_1E6059EAC(0, 0, v67, &unk_1E65FDB68, v50);

  return (*(v45 + 8))(v66, v44);
}

uint64_t sub_1E6350370(uint64_t a1, uint64_t a2)
{
  v2[181] = a2;
  v2[175] = a1;
  v3 = *(*(sub_1E65D76F8() - 8) + 64) + 15;
  v2[187] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D90, &qword_1E66040F0) - 8) + 64) + 15;
  v2[193] = swift_task_alloc();
  v5 = sub_1E65D7848();
  v2[199] = v5;
  v6 = *(v5 - 8);
  v2[205] = v6;
  v7 = *(v6 + 64) + 15;
  v2[211] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410) - 8) + 64) + 15;
  v2[217] = swift_task_alloc();
  v9 = sub_1E65DAC98();
  v2[223] = v9;
  v10 = *(v9 - 8);
  v2[224] = v10;
  v11 = *(v10 + 64) + 15;
  v2[225] = swift_task_alloc();
  v12 = sub_1E65DA0B8();
  v2[226] = v12;
  v13 = *(v12 - 8);
  v2[227] = v13;
  v14 = *(v13 + 64) + 15;
  v2[228] = swift_task_alloc();
  v15 = *(*(sub_1E65D8BB8() - 8) + 64) + 15;
  v2[229] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470) - 8) + 64) + 15;
  v2[230] = swift_task_alloc();
  v17 = sub_1E65E21B8();
  v2[231] = v17;
  v18 = *(v17 - 8);
  v2[232] = v18;
  v19 = *(v18 + 64) + 15;
  v2[233] = swift_task_alloc();
  v20 = sub_1E65D72D8();
  v2[234] = v20;
  v21 = *(v20 - 8);
  v2[235] = v21;
  v22 = *(v21 + 64) + 15;
  v2[236] = swift_task_alloc();
  v2[237] = swift_task_alloc();
  v2[238] = swift_task_alloc();
  v2[239] = swift_task_alloc();
  v23 = sub_1E65D8258();
  v2[240] = v23;
  v24 = *(v23 - 8);
  v2[241] = v24;
  v25 = *(v24 + 64) + 15;
  v2[242] = swift_task_alloc();
  v26 = type metadata accessor for AppComposer();
  v2[243] = v26;
  v27 = *(v26 - 8);
  v2[244] = v27;
  v2[245] = *(v27 + 64);
  v2[246] = swift_task_alloc();
  v2[247] = swift_task_alloc();
  v28 = sub_1E65D9658();
  v2[248] = v28;
  v29 = *(v28 - 8);
  v2[249] = v29;
  v30 = *(v29 + 64) + 15;
  v2[250] = swift_task_alloc();
  v2[251] = swift_task_alloc();
  v31 = sub_1E65D71A8();
  v2[252] = v31;
  v32 = *(v31 - 8);
  v2[253] = v32;
  v33 = *(v32 + 64) + 15;
  v2[254] = swift_task_alloc();
  v34 = sub_1E65D8EF8();
  v2[255] = v34;
  v35 = *(v34 - 8);
  v2[256] = v35;
  v36 = *(v35 + 64) + 15;
  v2[257] = swift_task_alloc();
  v37 = sub_1E65D7BC8();
  v2[258] = v37;
  v38 = *(v37 - 8);
  v2[259] = v38;
  v39 = *(v38 + 64) + 15;
  v2[260] = swift_task_alloc();
  v40 = sub_1E65D7908();
  v2[261] = v40;
  v41 = *(v40 - 8);
  v2[262] = v41;
  v42 = *(v41 + 64) + 15;
  v2[263] = swift_task_alloc();
  v43 = sub_1E65D76A8();
  v2[264] = v43;
  v44 = *(v43 - 8);
  v2[265] = v44;
  v45 = *(v44 + 64) + 15;
  v2[266] = swift_task_alloc();
  v2[267] = swift_task_alloc();
  v2[268] = swift_task_alloc();
  v2[269] = swift_task_alloc();
  v46 = sub_1E65D96F8();
  v2[270] = v46;
  v47 = *(v46 - 8);
  v2[271] = v47;
  v48 = *(v47 + 64) + 15;
  v2[272] = swift_task_alloc();
  v49 = sub_1E65D7EB8();
  v2[273] = v49;
  v50 = *(v49 - 8);
  v2[274] = v50;
  v51 = *(v50 + 64) + 15;
  v2[275] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6350AA4, 0, 0);
}

uint64_t sub_1E6350AA4()
{
  v1 = *(v0 + 1448);
  *(v0 + 2400) = *(*(v0 + 1944) + 20);
  v2 = type metadata accessor for AppEnvironment();
  *(v0 + 2208) = v2;
  *(v0 + 2404) = *(v2 + 144);
  active = WorkoutPlanService.queryActiveWorkoutPlan.getter();
  *(v0 + 2216) = v4;
  v9 = (active + *active);
  v5 = active[1];
  v6 = swift_task_alloc();
  *(v0 + 2224) = v6;
  *v6 = v0;
  v6[1] = sub_1E6350BCC;
  v7 = *(v0 + 2200);

  return v9(v7);
}

uint64_t sub_1E6350BCC()
{
  v2 = *(*v1 + 2224);
  v5 = *v1;
  *(*v1 + 2232) = v0;

  if (v0)
  {
    v3 = sub_1E63526EC;
  }

  else
  {
    v3 = sub_1E6350CE0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E6350CE0()
{
  v1 = *(v0 + 2216);
  v2 = *(v0 + 2404);
  v3 = *(v0 + 2400);
  v4 = *(v0 + 2152);
  v5 = *(v0 + 2144);
  v6 = *(v0 + 2120);
  v20 = *(v0 + 2112);
  v7 = *(v0 + 2104);
  v8 = *(v0 + 2096);
  v9 = *(v0 + 2088);
  v10 = *(v0 + 1448);

  IncompleteWorkout = WorkoutPlanService.queryNextIncompleteWorkoutReference.getter();
  *(v0 + 2240) = v12;
  sub_1E65D7698();
  sub_1E65D7858();
  sub_1E65D75F8();
  v13 = *(v8 + 8);
  *(v0 + 2248) = v13;
  *(v0 + 2256) = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v7, v9);
  v14 = *(v6 + 8);
  *(v0 + 2264) = v14;
  *(v0 + 2272) = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v5, v20);
  v21 = (IncompleteWorkout + *IncompleteWorkout);
  v15 = IncompleteWorkout[1];
  v16 = swift_task_alloc();
  *(v0 + 2280) = v16;
  *v16 = v0;
  v16[1] = sub_1E6350EB0;
  v17 = *(v0 + 2176);
  v18 = *(v0 + 2152);

  return v21(v17, v18);
}

uint64_t sub_1E6350EB0()
{
  v2 = *v1;
  v3 = *(*v1 + 2280);
  v4 = *v1;
  *(*v1 + 2288) = v0;

  v5 = *(v2 + 2272);
  v6 = *(v2 + 2240);
  (*(v2 + 2264))(*(v2 + 2152), *(v2 + 2112));

  if (v0)
  {
    v7 = sub_1E63528EC;
  }

  else
  {
    v7 = sub_1E635103C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E635103C()
{
  v1 = *(v0 + 2200);
  v2 = sub_1E65D7DD8();
  if (*(v2 + 16) && (v3 = sub_1E64175A0(*(v0 + 2176)), (v4 & 1) != 0))
  {
    v86 = *(v0 + 2248);
    v90 = *(v0 + 2256);
    v5 = *(v0 + 2200);
    v6 = *(v0 + 2144);
    v7 = *(v0 + 2104);
    v8 = *(v0 + 2088);
    v9 = *(v0 + 2080);
    v10 = *(v0 + 2072);
    v82 = *(v0 + 2064);
    v11 = *(v0 + 2056);
    v12 = *(v0 + 2048);
    v94 = *(v0 + 2176);
    v98 = *(v0 + 2040);
    v13 = (*(v2 + 56) + 16 * v3);
    v76 = v13[1];
    v78 = *v13;

    sub_1E65D7E98();
    sub_1E65D7858();
    sub_1E65D7B88();
    v86(v7, v8);
    (*(v10 + 8))(v9, v82);
    sub_1E65D96B8();
    v14 = sub_1E65D8EB8();
    v15 = (*(v12 + 8))(v11, v98);
    if (v14 < 0)
    {
      __break(1u);
    }

    else
    {
      v19 = *(v0 + 2272);
      v20 = *(v0 + 2264);
      v21 = *(v0 + 2256);
      v22 = *(v0 + 2248);
      v23 = *(v0 + 2144);
      v83 = *(v0 + 2136);
      v24 = *(v0 + 2112);
      v25 = *(v0 + 2104);
      v26 = *(v0 + 2088);
      v87 = *(v0 + 2032);
      v91 = *(v0 + 2024);
      v99 = *(v0 + 1448) + *(v0 + 2400);
      v95 = *(v0 + 2016);
      sub_1E65E61C8();
      sub_1E65D7638();
      v20(v23, v24);
      sub_1E65D7688();
      sub_1E65D7858();
      sub_1E65D75F8();
      v22(v25, v26);
      v20(v23, v24);
      sub_1E65D7858();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078848, &qword_1E65FDBC8);
      v27 = sub_1E65D78F8();
      v28 = *(v27 - 8);
      v29 = *(v28 + 72);
      v30 = (*(v28 + 80) + 32) & ~*(v28 + 80);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_1E65EA670;
      (*(v28 + 104))(v31 + v30, *MEMORY[0x1E6969A48], v27);
      sub_1E5F9C10C(v31);
      swift_setDeallocating();
      (*(v28 + 8))(v31 + v30, v27);
      swift_deallocClassInstance();
      sub_1E65D7878();

      v22(v25, v26);
      v32 = sub_1E65D7178();
      v34 = v33;
      *(v0 + 2296) = v32;
      *(v0 + 2412) = v33;
      (*(v91 + 8))(v87, v95);
      v35 = 42;
      if (*(v99 + 8) > 1u)
      {
        if (*(v99 + 8) == 2)
        {
          return sub_1E65E69D8();
        }
      }

      else if (!*(v99 + 8))
      {
        if (v34 & 1 | (v32 != 0))
        {
          v35 = 46;
        }

        else
        {
          v35 = 42;
        }
      }

      v100 = v35;
      v89 = *(v0 + 1984);
      v93 = *(v0 + 2008);
      v56 = *(v0 + 1976);
      v97 = *(v0 + 1968);
      v57 = *(v0 + 1960);
      v58 = *(v0 + 1952);
      v85 = *(v0 + 1448);
      sub_1E5E1D8FC(v85, v56, type metadata accessor for AppComposer);
      v59 = (*(v58 + 80) + 16) & ~*(v58 + 80);
      v60 = v59 + v57;
      v61 = (v59 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
      v62 = swift_allocObject();
      *(v0 + 2304) = v62;
      sub_1E5E1E730(v56, v62 + v59, type metadata accessor for AppComposer);
      v63 = (v62 + v61);
      *v63 = v78;
      v63[1] = v76;

      swift_asyncLet_begin();
      sub_1E5E1D8FC(v85, v97, type metadata accessor for AppComposer);
      v64 = swift_allocObject();
      *(v0 + 2312) = v64;
      sub_1E5E1E730(v97, v64 + v59, type metadata accessor for AppComposer);
      *(v64 + v60) = v100;
      v65 = v64 + (v60 & 0xFFFFFFFFFFFFFFF8);
      *(v65 + 8) = v78;
      *(v65 + 16) = v76;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074CD0, &qword_1E660EF60);
      swift_asyncLet_begin();
      v17 = sub_1E6351888;
      v15 = v0 + 656;
      v16 = v0 + 1352;
      v18 = v0 + 1296;
    }

    return MEMORY[0x1EEE6DEC0](v15, v16, v17, v18);
  }

  else
  {
    v36 = *(v0 + 2200);
    v37 = *(v0 + 2192);
    v38 = *(v0 + 2184);
    v39 = *(v0 + 2176);
    v40 = *(v0 + 2168);
    v41 = *(v0 + 2160);

    v42 = sub_1E65D8B88();
    sub_1E6355990(&qword_1ED078840, MEMORY[0x1E69CB928]);
    swift_allocError();
    (*(*(v42 - 8) + 104))(v43, *MEMORY[0x1E69CB8E8], v42);
    swift_willThrow();
    (*(v40 + 8))(v39, v41);
    (*(v37 + 8))(v36, v38);
    v44 = *(v0 + 2200);
    v45 = *(v0 + 2176);
    v46 = *(v0 + 2152);
    v47 = *(v0 + 2144);
    v48 = *(v0 + 2136);
    v49 = *(v0 + 2128);
    v50 = *(v0 + 2104);
    v51 = *(v0 + 2080);
    v52 = *(v0 + 2056);
    v53 = *(v0 + 2032);
    v66 = *(v0 + 2008);
    v67 = *(v0 + 2000);
    v68 = *(v0 + 1976);
    v69 = *(v0 + 1968);
    v70 = *(v0 + 1936);
    v71 = *(v0 + 1912);
    v72 = *(v0 + 1904);
    v73 = *(v0 + 1896);
    v74 = *(v0 + 1888);
    v75 = *(v0 + 1864);
    v77 = *(v0 + 1840);
    v79 = *(v0 + 1832);
    v80 = *(v0 + 1824);
    v81 = *(v0 + 1800);
    v84 = *(v0 + 1736);
    v88 = *(v0 + 1688);
    v92 = *(v0 + 1544);
    v96 = *(v0 + 1496);

    v54 = *(v0 + 8);

    return v54();
  }
}

uint64_t sub_1E6351888()
{
  *(v1 + 2320) = v0;
  if (v0)
  {
    v2 = sub_1E6352B00;
  }

  else
  {
    v2 = sub_1E63518BC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E63518BC()
{
  v1 = *(v0 + 1352);
  if (*(v1 + 16))
  {
    v2 = *(v0 + 2412);
    v3 = *(v0 + 2136);
    v20 = *(v0 + 1936);
    v21 = *(v0 + 2296);
    v4 = *(v0 + 1912);
    v32 = *(v0 + 2208);
    v33 = v4;
    v31 = *(v0 + 1904);
    v34 = *(v0 + 1896);
    v37 = *(v0 + 1888);
    v35 = *(v0 + 1880);
    v36 = *(v0 + 1872);
    v27 = *(v0 + 1864);
    v38 = *(v0 + 1840);
    v5 = *(v0 + 1832);
    v6 = *(v0 + 1824);
    v39 = *(v0 + 1816);
    v7 = *(v0 + 1808);
    v8 = *(v0 + 1800);
    v23 = *(v0 + 1792);
    v24 = *(v0 + 1784);
    v25 = *(v0 + 1736);
    v28 = *(v0 + 1688);
    v40 = *(v0 + 1640);
    v26 = *(v0 + 1448);
    v29 = v26 + *(v0 + 2400);
    v30 = *(v0 + 1592);
    (*(*(v0 + 1928) + 16))(v20, v1 + ((*(*(v0 + 1928) + 80) + 32) & ~*(*(v0 + 1928) + 80)), *(v0 + 1920));
    sub_1E6353828(v3, v21, v2 & 1, v4);
    sub_1E65D8128();
    sub_1E65D8BA8();
    v22 = MEMORY[0x1E69CB950];
    sub_1E6355930(v5, MEMORY[0x1E69CB950]);
    sub_1E65DA098();
    v9 = *(v39 + 8);
    v9(v6, v7);
    sub_1E65DAC38();
    v10 = *(v23 + 8);
    v10(v8, v24);
    sub_1E65DC2D8();
    sub_1E65D8128();
    sub_1E65D8BA8();
    sub_1E6355930(v5, v22);
    sub_1E65DA098();
    v9(v6, v7);
    sub_1E65DAC78();
    v10(v8, v24);
    sub_1E65D74C8();

    sub_1E65E21A8();
    *(v0 + 1336) = sub_1E65D8078();
    *(v0 + 1344) = v11;
    *(v0 + 2336) = v11;
    v12 = sub_1E65D8248();
    *(v0 + 2344) = *v26;
    swift_getKeyPath();
    sub_1E65E4EC8();

    v13 = *(v32 + 136);
    *(v0 + 2408) = v13;
    sub_1E63C4134(v28, &v29[v13], v12, v31);

    v14 = *(v40 + 8);
    *(v0 + 2352) = v14;
    *(v0 + 2360) = (v40 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v14(v28, v30);
    v15 = sub_1E65D80A8();
    swift_getKeyPath();
    sub_1E65E4EC8();

    sub_1E63C4134(v28, &v29[v13], v15, v34);

    v14(v28, v30);
    (*(v35 + 16))(v37, v33, v36);
    v16 = *(v0 + 2008);

    return MEMORY[0x1EEE6DEC0](v0 + 16, v16, sub_1E635207C, v0 + 1456);
  }

  else
  {
    v17 = sub_1E65D7EC8();
    sub_1E6355990(&qword_1ED078850, MEMORY[0x1E69CB148]);
    *(v0 + 2328) = swift_allocError();
    (*(*(v17 - 8) + 104))(v18, *MEMORY[0x1E69CB138], v17);
    swift_willThrow();

    return MEMORY[0x1EEE6DEB0](v0 + 656, v0 + 1352, sub_1E6351D9C, v0 + 1696);
  }
}

uint64_t sub_1E6351DF4()
{
  v40 = v0[288];
  v42 = v0[289];
  v1 = v0[284];
  v2 = v0[283];
  v38 = v0[275];
  v3 = v0[274];
  v4 = v0[273];
  v5 = v0[272];
  v6 = v0[271];
  v7 = v0[270];
  v8 = v0[267];
  v9 = v0[264];
  v2(v0[266], v9);
  v2(v8, v9);
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v38, v4);

  v43 = v0[291];
  v10 = v0[275];
  v11 = v0[272];
  v12 = v0[269];
  v13 = v0[268];
  v14 = v0[267];
  v15 = v0[266];
  v16 = v0[263];
  v17 = v0[260];
  v18 = v0[257];
  v19 = v0[254];
  v22 = v0[251];
  v23 = v0[250];
  v24 = v0[247];
  v25 = v0[246];
  v26 = v0[242];
  v27 = v0[239];
  v28 = v0[238];
  v29 = v0[237];
  v30 = v0[236];
  v31 = v0[233];
  v32 = v0[230];
  v33 = v0[229];
  v34 = v0[228];
  v35 = v0[225];
  v36 = v0[217];
  v37 = v0[211];
  v39 = v0[193];
  v41 = v0[187];

  v20 = v0[1];

  return v20();
}

uint64_t sub_1E635207C()
{
  v1[296] = v0;
  if (v0)
  {
    v2 = v1[292];
    v3 = v1[238];
    v4 = v1[237];
    v5 = v1[236];
    v6 = v1[235];
    v7 = v1[234];
    v8 = v1[233];
    v9 = v1[232];
    v10 = v1[231];

    v11 = *(v6 + 8);
    v1[298] = v11;
    v1[299] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v11(v5, v7);
    v11(v4, v7);
    v11(v3, v7);
    (*(v9 + 8))(v8, v10);
    v12 = sub_1E6352E00;
  }

  else
  {
    v1[297] = v1[167];
    v12 = sub_1E63521AC;
  }

  return MEMORY[0x1EEE6DFA0](v12, 0, 0);
}

uint64_t sub_1E63521AC()
{
  v28 = *(v0 + 2376);
  v17 = *(v0 + 2352);
  v18 = *(v0 + 2360);
  v13 = *(v0 + 2408);
  v11 = *(v0 + 2344);
  v27 = *(v0 + 2336);
  v25 = *(v0 + 2412);
  v24 = *(v0 + 2296);
  v20 = *(v0 + 2200);
  v1 = *(v0 + 2000);
  v2 = *(v0 + 1992);
  v3 = *(v0 + 1984);
  v4 = *(v0 + 1928);
  v29 = *(v0 + 1920);
  v30 = *(v0 + 1936);
  v26 = *(v0 + 1912);
  v22 = *(v0 + 1896);
  v23 = *(v0 + 1904);
  v21 = *(v0 + 1888);
  v5 = *(v0 + 1880);
  v19 = *(v0 + 1864);
  v6 = *(v0 + 1688);
  v12 = *(v0 + 1592);
  v7 = *(v0 + 1544);
  v14 = *(v0 + 1496);
  v15 = *(v0 + 1872);
  v16 = *(v0 + 1400);
  v8 = *(v0 + 1448) + *(v0 + 2400);
  (*(v2 + 16))(v1, *(v0 + 2008), v3);
  v9 = sub_1E65D9558();
  (*(v2 + 8))(v1, v3);
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E63C4134(v6, (v8 + v13), v9, v7);

  v17(v6, v12);
  (*(v5 + 56))(v7, 0, 1, v15);
  sub_1E65D7DC8();
  sub_1E65E21C8();
  (*(v5 + 8))(v26, v15);
  (*(v4 + 8))(v30, v29);

  return MEMORY[0x1EEE6DEB0](v0 + 656, v0 + 1352, sub_1E6352414, v0 + 1600);
}

uint64_t sub_1E635246C()
{
  v15 = v0[288];
  v16 = v0[289];
  v1 = v0[284];
  v2 = v0[283];
  v3 = v0[275];
  v4 = v0[274];
  v5 = v0[272];
  v6 = v0[271];
  v7 = v0[270];
  v8 = v0[269];
  v17 = v0[268];
  v9 = v0[267];
  v10 = v0[266];
  v14 = v0[273];
  v11 = v0[264];
  v18 = v0[263];
  v19 = v0[260];
  v20 = v0[257];
  v21 = v0[254];
  v22 = v0[251];
  v23 = v0[250];
  v24 = v0[247];
  v25 = v0[246];
  v26 = v0[242];
  v27 = v0[239];
  v28 = v0[238];
  v29 = v0[237];
  v30 = v0[236];
  v31 = v0[233];
  v32 = v0[230];
  v33 = v0[229];
  v34 = v0[228];
  v35 = v0[225];
  v36 = v0[217];
  v37 = v0[211];
  v38 = v0[193];
  v39 = v0[187];
  v2();
  (v2)(v9, v11);
  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v3, v14);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1E63526EC()
{
  v1 = v0[277];

  v32 = v0[279];
  v2 = v0[275];
  v3 = v0[272];
  v4 = v0[269];
  v5 = v0[268];
  v6 = v0[267];
  v7 = v0[266];
  v8 = v0[263];
  v9 = v0[260];
  v10 = v0[257];
  v11 = v0[254];
  v14 = v0[251];
  v15 = v0[250];
  v16 = v0[247];
  v17 = v0[246];
  v18 = v0[242];
  v19 = v0[239];
  v20 = v0[238];
  v21 = v0[237];
  v22 = v0[236];
  v23 = v0[233];
  v24 = v0[230];
  v25 = v0[229];
  v26 = v0[228];
  v27 = v0[225];
  v28 = v0[217];
  v29 = v0[211];
  v30 = v0[193];
  v31 = v0[187];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1E63528EC()
{
  (*(v0[274] + 8))(v0[275], v0[273]);
  v31 = v0[286];
  v1 = v0[275];
  v2 = v0[272];
  v3 = v0[269];
  v4 = v0[268];
  v5 = v0[267];
  v6 = v0[266];
  v7 = v0[263];
  v8 = v0[260];
  v9 = v0[257];
  v10 = v0[254];
  v13 = v0[251];
  v14 = v0[250];
  v15 = v0[247];
  v16 = v0[246];
  v17 = v0[242];
  v18 = v0[239];
  v19 = v0[238];
  v20 = v0[237];
  v21 = v0[236];
  v22 = v0[233];
  v23 = v0[230];
  v24 = v0[229];
  v25 = v0[228];
  v26 = v0[225];
  v27 = v0[217];
  v28 = v0[211];
  v29 = v0[193];
  v30 = v0[187];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1E6352B78()
{
  v40 = v0[288];
  v42 = v0[289];
  v1 = v0[284];
  v2 = v0[283];
  v38 = v0[275];
  v3 = v0[274];
  v4 = v0[273];
  v5 = v0[272];
  v6 = v0[271];
  v7 = v0[270];
  v8 = v0[267];
  v9 = v0[264];
  v2(v0[266], v9);
  v2(v8, v9);
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v38, v4);

  v43 = v0[290];
  v10 = v0[275];
  v11 = v0[272];
  v12 = v0[269];
  v13 = v0[268];
  v14 = v0[267];
  v15 = v0[266];
  v16 = v0[263];
  v17 = v0[260];
  v18 = v0[257];
  v19 = v0[254];
  v22 = v0[251];
  v23 = v0[250];
  v24 = v0[247];
  v25 = v0[246];
  v26 = v0[242];
  v27 = v0[239];
  v28 = v0[238];
  v29 = v0[237];
  v30 = v0[236];
  v31 = v0[233];
  v32 = v0[230];
  v33 = v0[229];
  v34 = v0[228];
  v35 = v0[225];
  v36 = v0[217];
  v37 = v0[211];
  v39 = v0[193];
  v41 = v0[187];

  v20 = v0[1];

  return v20();
}

uint64_t sub_1E6352E00()
{
  v1 = *(v0 + 2392);
  v2 = *(v0 + 1936);
  v3 = *(v0 + 1928);
  v4 = *(v0 + 1920);
  (*(v0 + 2384))(*(v0 + 1912), *(v0 + 1872));
  (*(v3 + 8))(v2, v4);

  return MEMORY[0x1EEE6DEB0](v0 + 656, v0 + 1352, sub_1E6352EA4, v0 + 1504);
}

uint64_t sub_1E6352EFC()
{
  v40 = v0[288];
  v42 = v0[289];
  v1 = v0[284];
  v2 = v0[283];
  v38 = v0[275];
  v3 = v0[274];
  v4 = v0[273];
  v5 = v0[272];
  v6 = v0[271];
  v7 = v0[270];
  v8 = v0[267];
  v9 = v0[264];
  v2(v0[266], v9);
  v2(v8, v9);
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v38, v4);

  v43 = v0[296];
  v10 = v0[275];
  v11 = v0[272];
  v12 = v0[269];
  v13 = v0[268];
  v14 = v0[267];
  v15 = v0[266];
  v16 = v0[263];
  v17 = v0[260];
  v18 = v0[257];
  v19 = v0[254];
  v22 = v0[251];
  v23 = v0[250];
  v24 = v0[247];
  v25 = v0[246];
  v26 = v0[242];
  v27 = v0[239];
  v28 = v0[238];
  v29 = v0[237];
  v30 = v0[236];
  v31 = v0[233];
  v32 = v0[230];
  v33 = v0[229];
  v34 = v0[228];
  v35 = v0[225];
  v36 = v0[217];
  v37 = v0[211];
  v39 = v0[193];
  v41 = v0[187];

  v20 = v0[1];

  return v20();
}

uint64_t sub_1E6353184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E63531A8, 0, 0);
}

uint64_t sub_1E63531A8()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = v3 + *(type metadata accessor for AppComposer() + 20);
  v5 = v4 + *(type metadata accessor for AppEnvironment() + 48);
  v6 = CatalogService.fetchRemoteCatalogWorkoutDetail.getter();
  v0[6] = v7;
  v8 = sub_1E65D9EE8();
  v10 = v9;
  v0[7] = v9;
  v15 = (v6 + *v6);
  v11 = v6[1];
  v12 = swift_task_alloc();
  v0[8] = v12;
  *v12 = v0;
  v12[1] = sub_1E63532FC;
  v13 = v0[2];

  return v15(v13, v8, v10);
}

uint64_t sub_1E63532FC()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E6353444, 0, 0);
  }

  else
  {
    v4 = v3[6];
    v5 = v3[7];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_1E6353444()
{
  v2 = v0[6];
  v1 = v0[7];

  v3 = v0[1];
  v4 = v0[9];

  return v3();
}

uint64_t sub_1E63534B0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  *(v5 + 88) = a3;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E63534D8, 0, 0);
}

uint64_t sub_1E63534D8()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 24);
  v4 = v3 + *(type metadata accessor for AppComposer() + 20);
  v5 = v4 + *(type metadata accessor for AppEnvironment() + 48);
  v6 = CatalogService.fetchRemoteCatalogLockups.getter();
  *(v0 + 48) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078860, &qword_1E65FDBF0);
  v8 = *(sub_1E65D9CC8() - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v0 + 56) = v11;
  *(v11 + 16) = xmmword_1E65EA670;
  sub_1E65D9EE8();
  sub_1E65D9C88();
  v16 = (v6 + *v6);
  v12 = v6[1];
  v13 = swift_task_alloc();
  *(v0 + 64) = v13;
  *v13 = v0;
  v13[1] = sub_1E63536CC;
  v14 = *(v0 + 88);

  return v16(v14, v11);
}

uint64_t sub_1E63536CC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v7 = sub_1E6353444;
  }

  else
  {
    v8 = v4[6];
    v9 = v4[7];

    v4[10] = a1;
    v7 = sub_1E6353804;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E6353828@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v71 = a4;
  LODWORD(v67) = a3;
  v66 = a1;
  v5 = sub_1E65E5C08();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v62 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E65D7578();
  v64 = *(v8 - 8);
  v65 = v8;
  v9 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1E65D7598();
  v61 = *(v63 - 8);
  v12 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E65D75B8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1E65D75D8();
  v72 = *(v20 - 8);
  v21 = *(v72 + 64);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v59 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = &v59 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v73 = &v59 - v31;
  v32 = sub_1E65D7348();
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v69 = &v59 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1E65D7848();
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v68 = &v59 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1E65E5C28();
  v39 = *(*(v38 - 8) + 64);
  v40 = MEMORY[0x1EEE9AC00](v38 - 8);
  if (v67)
  {
    goto LABEL_2;
  }

  v60 = v16;
  v49 = v72;
  if (a2 == 7)
  {
    v67 = &v59 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
    MEMORY[0x1E693ED80](v40);
    sub_1E65D75A8();
    v59 = v30;
    sub_1E65D75C8();
    (*(v60 + 8))(v19, v15);
    v52 = *(v49 + 8);
    v53 = v52(v30, v20);
    MEMORY[0x1E693ED80](v53);
    sub_1E65D7588();
    sub_1E65D7558();
    (*(v61 + 8))(v14, v63);
    v52(v24, v20);
    sub_1E65D7568();
    v54 = v59;
    sub_1E65D7548();
    (*(v64 + 8))(v11, v65);
    v52(v27, v20);
    sub_1E65E5BF8();
    sub_1E65E5BE8();
    sub_1E65D76A8();
    sub_1E6355990(&qword_1ED078858, MEMORY[0x1E6969328]);
    sub_1E5F9AEA8();
    v55 = v73;
    sub_1E65E5BB8();
    sub_1E65E5BE8();
    sub_1E65E5BB8();
    sub_1E65E5BE8();
    sub_1E65E5C18();
    type metadata accessor for LocalizationBundle();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v57 = [objc_opt_self() bundleForClass_];
    v58 = *v70;
    swift_getKeyPath();
    sub_1E65E4EC8();

    sub_1E65E5D48();
    sub_1E65D7338();
    sub_1E65D72E8();
    v52(v54, v20);
    return v52(v55, v20);
  }

  else
  {
    if (a2 != 1)
    {
      v16 = v60;
      if (a2)
      {
LABEL_2:
        v67 = &v59 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
        MEMORY[0x1E693ED80](v40);
        sub_1E65D75A8();
        sub_1E65D75C8();
        (*(v16 + 8))(v19, v15);
        v42 = *(v72 + 8);
        v42(v24, v20);
        v43 = v42;
        sub_1E65D7588();
        sub_1E65D7558();
        (*(v61 + 8))(v14, v63);
        v42(v27, v20);
        sub_1E65D7568();
        v44 = v73;
        sub_1E65D7548();
        (*(v64 + 8))(v11, v65);
        v42(v30, v20);
        sub_1E65E5BF8();
        sub_1E65E5BE8();
        sub_1E65D76A8();
        sub_1E6355990(&qword_1ED078858, MEMORY[0x1E6969328]);
        sub_1E5F9AEA8();
        sub_1E65E5BB8();
        sub_1E65E5BE8();
        sub_1E65E5C18();
        type metadata accessor for LocalizationBundle();
        v45 = swift_getObjCClassFromMetadata();
        v46 = [objc_opt_self() bundleForClass_];
        v47 = *v70;
        swift_getKeyPath();
        sub_1E65E4EC8();

        sub_1E65E5D48();
        sub_1E65D7338();
        sub_1E65D72E8();
        return v43(v44, v20);
      }
    }

    sub_1E65E5BA8();
    type metadata accessor for LocalizationBundle();
    v50 = swift_getObjCClassFromMetadata();
    [objc_opt_self() bundleForClass_];
    v51 = *v70;
    swift_getKeyPath();
    sub_1E65E4EC8();

    sub_1E65E5D48();
    sub_1E65D7338();
    return sub_1E65D72E8();
  }
}

uint64_t sub_1E6354294(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E63542B4, 0, 0);
}

uint64_t sub_1E63542B4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v2 + *(type metadata accessor for AppComposer() + 20);
  v4 = v3 + *(type metadata accessor for AppEnvironment() + 144);
  active = WorkoutPlanService.makeActiveWorkoutPlanUpdatedStream.getter();
  v0[4] = v6;
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v1[4] = sub_1E5FED46C(&qword_1EE2D4738, &qword_1ED072840, &qword_1E65EBE88);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v11 = (active + *active);
  v8 = active[1];
  v9 = swift_task_alloc();
  v0[5] = v9;
  *v9 = v0;
  v9[1] = sub_1E628AFA8;

  return v11(boxed_opaque_existential_1);
}

uint64_t sub_1E635443C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076C18, &qword_1E65F7A00);
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63544DC, 0, 0);
}

uint64_t sub_1E63544DC()
{
  v1 = v0[3];
  v2 = v1 + *(type metadata accessor for AppComposer() + 20);
  v3 = v2 + *(type metadata accessor for AppEnvironment() + 144);
  v4 = WorkoutPlanService.makeWorkoutPlansUpdatedStream.getter();
  v0[6] = v5;
  v10 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_1E63545F8;
  v8 = v0[5];

  return v10(v8);
}

uint64_t sub_1E63545F8()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E6354710, 0, 0);
}

uint64_t sub_1E6354710()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076C20, &qword_1E65F7A10);
  v3[4] = sub_1E5FED46C(&qword_1ED076C28, &qword_1ED076C20, &qword_1E65F7A10);
  __swift_allocate_boxed_opaque_existential_1(v3);
  sub_1E5FED46C(&qword_1ED076C30, &qword_1ED076C18, &qword_1E65F7A00);
  sub_1E65E69C8();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E6354848(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for RouteSource(0);
  v1[3] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v4 = type metadata accessor for RouteDestination();
  v1[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E635490C, 0, 0);
}

uint64_t sub_1E635490C()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 16);
  v7 = v5[3];
  v6 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v7);
  swift_storeEnumTagMultiPayload();
  *v1 = 0;
  type metadata accessor for RouteResource();
  swift_storeEnumTagMultiPayload();
  sub_1E5E1E730(v3, v1 + *(v2 + 20), type metadata accessor for RouteSource);
  *(v1 + *(v2 + 24)) = MEMORY[0x1E69E7CD0];
  sub_1E600F5B0((v0 + 72));
  v8 = swift_task_alloc();
  *(v0 + 56) = v8;
  *v8 = v0;
  v8[1] = sub_1E6354A58;
  v9 = *(v0 + 48);

  return RoutingContext.appendDestination(_:priority:)(v9, (v0 + 72), v7, v6);
}

uint64_t sub_1E6354A58()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *v1;
  v4[8] = v0;

  sub_1E6355930(v3, type metadata accessor for RouteDestination);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E613A218, 0, 0);
  }

  else
  {
    v5 = v4[6];
    v6 = v4[4];

    v7 = v4[1];

    return v7();
  }
}

uint64_t sub_1E6354BE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for RouteSource(0);
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v6 = type metadata accessor for RouteDestination();
  v3[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v3[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6354CA8, 0, 0);
}

uint64_t sub_1E6354CA8()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v6 = *(v0 + 24);
  v5 = *(v0 + 32);
  v7 = *(v0 + 16);
  v9 = v5[3];
  v8 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v9);
  swift_storeEnumTagMultiPayload();
  *v1 = v7;
  v1[1] = v6;
  type metadata accessor for RouteResource();
  swift_storeEnumTagMultiPayload();
  sub_1E5E1D8FC(v3, v1 + *(v2 + 20), type metadata accessor for RouteSource);

  sub_1E6355930(v3, type metadata accessor for RouteSource);
  *(v1 + *(v2 + 24)) = MEMORY[0x1E69E7CD0];
  sub_1E600F5B0((v0 + 88));
  v10 = swift_task_alloc();
  *(v0 + 72) = v10;
  *v10 = v0;
  v10[1] = sub_1E6354E24;
  v11 = *(v0 + 64);

  return RoutingContext.appendDestination(_:priority:)(v11, (v0 + 88), v9, v8);
}

uint64_t sub_1E6354E24()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *v1;
  v4[10] = v0;

  sub_1E6355930(v3, type metadata accessor for RouteDestination);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E6354FAC, 0, 0);
  }

  else
  {
    v5 = v4[8];
    v6 = v4[6];

    v7 = v4[1];

    return v7();
  }
}

uint64_t sub_1E6354FAC()
{
  v1 = v0[8];
  v2 = v0[6];

  v3 = v0[1];
  v4 = v0[10];

  return v3();
}

uint64_t sub_1E635501C(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 96) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E634D5A0(a1, v1 + 16, v1 + v5);
}

uint64_t sub_1E63550F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(type metadata accessor for AppComposer() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E634FC10(a1, a2, a3, (v3 + v8), v9);
}

uint64_t sub_1E63551AC(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1E65E2258() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(sub_1E65D7848() - 8);
  v10 = (v8 + *(v9 + 80) + 80) & ~*(v9 + 80);
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = *(v1 + v7);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1E5DFE6BC;

  return sub_1E6056CB8(a1, v11, v12, v1 + v6, v13, v1 + v8, v1 + v10);
}

uint64_t sub_1E6355324(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E6350370(a1, v1 + v5);
}

uint64_t sub_1E6355400(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E6354294(a1, v1 + v5);
}

uint64_t sub_1E63554DC(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E635443C(a1, v1 + v5);
}

uint64_t sub_1E63555B8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5DFE6BC;

  return sub_1E6354848(v0 + 16);
}

uint64_t sub_1E635564C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E6354BE0(a1, a2, v2 + 16);
}

uint64_t sub_1E63556F4(uint64_t a1)
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

  return sub_1E6353184(a1, v1 + v5, v7, v8);
}