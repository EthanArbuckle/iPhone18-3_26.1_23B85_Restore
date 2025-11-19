uint64_t sub_229616EC8()
{
  v0 = sub_22A4DD79C();
  v4 = sub_229616F48(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_229616F48(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_22A4DD6AC();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_22A4DDFAC();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_229616344(v9, 0);
  v12 = sub_2296170A0(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_22A4DD6AC();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_22A4DE25C();
LABEL_4:

  return sub_22A4DD6AC();
}

unint64_t sub_2296170A0(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_2296172C0(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_22A4DD73C();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_22A4DE25C();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_2296172C0(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_22A4DD71C();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_2296172C0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_22A4DD74C();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x22AAD0900](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

void sub_22961733C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return;
  }

  v5 = 0;
  v6 = a1 + 32;
  v7 = &qword_27D87DEE0;
  v26 = *(a1 + 16);
  v25 = a1 + 32;
  while (1)
  {
    v9 = (v6 + 16 * v5);
    v11 = *v9;
    v10 = v9[1];

    v12 = sub_22961473C();
    if (v12)
    {
      break;
    }

LABEL_5:
    ++v5;

    if (v5 == v3)
    {
      return;
    }
  }

  v13 = v12;
  v30 = MEMORY[0x277D84F90];
  v14 = v12 & 0xFFFFFFFFFFFFFF8;
  if (!(v12 >> 62))
  {
    v28 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v28)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

  v28 = sub_22A4DE0EC();
  if (!v28)
  {
LABEL_20:
    v8 = MEMORY[0x277D84F90];
LABEL_4:

    sub_2296F0964(v8);
    goto LABEL_5;
  }

LABEL_9:
  v27 = v5;
  v15 = 0;
  v29 = v13 & 0xC000000000000001;
  v16 = v28;
  while (1)
  {
    if (v29)
    {
      v22 = MEMORY[0x22AAD13F0](v15, v13);
    }

    else
    {
      if (v15 >= *(v14 + 16))
      {
        goto LABEL_23;
      }

      v22 = *(v13 + 8 * v15 + 32);
    }

    v23 = v22;
    v24 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    sub_229562F68(0, v7, 0x277CFEC40);
    if (sub_22A4DDEDC())
    {
    }

    else
    {
      sub_22A4DE27C();
      v17 = v13;
      v18 = v14;
      v19 = v7;
      v20 = a3;
      v21 = *(v30 + 16);
      sub_22A4DE2AC();
      a3 = v20;
      v7 = v19;
      v14 = v18;
      v13 = v17;
      v16 = v28;
      sub_22A4DE2BC();
      sub_22A4DE28C();
    }

    ++v15;
    if (v24 == v16)
    {
      v8 = v30;
      v3 = v26;
      v5 = v27;
      v6 = v25;
      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

void sub_229617544(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, char *a9, void *a10, uint64_t a11)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; a1 = v18)
  {
    v13 = 0;
    v19 = a1 & 0xC000000000000001;
    v14 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v19)
      {
        v15 = a1;
        a1 = MEMORY[0x22AAD13F0](v13);
      }

      else
      {
        if (v13 >= *(v14 + 16))
        {
          goto LABEL_13;
        }

        v15 = a1;
        a1 = *(a1 + 8 * v13 + 32);
      }

      v16 = a1;
      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v27 = a1;
      sub_2296149AC(&v27, a2, a3, a4, a5, a6, a7, a8 & 1, a9, a10, a11);

      if (!v11)
      {
        ++v13;
        a1 = v15;
        if (v17 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    v18 = a1;
    i = sub_22A4DE0EC();
  }
}

uint64_t sub_229617688(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v7 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v7)
  {
    v17 = MEMORY[0x277D84F90];
    sub_22A4DE29C();
    for (i = (a1 + 32); ; ++i)
    {
      v15 = *i;

      sub_22960D3E4(&v15, a2, a3, a4, &v14, &v16);
      if (v5)
      {
        break;
      }

      v5 = 0;

      sub_22A4DE27C();
      v13 = *(v17 + 16);
      sub_22A4DE2AC();
      sub_22A4DE2BC();
      sub_22A4DE28C();
      if (!--v7)
      {
        return v17;
      }
    }
  }

  return result;
}

uint64_t sub_2296177B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_1()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22961784C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_22A4DD07C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_229541CB0(ObjectType, &off_283CDE4B8);
  v8 = v1;
  v9 = sub_22A4DD05C();
  v10 = sub_22A4DDCCC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 136315394;
    v20 = 91;
    v21 = 0xE100000000000000;
    v22 = v12;
    v13 = [v8 shortDescription];
    v14 = sub_22A4DD5EC();
    v16 = v15;

    MEMORY[0x22AAD08C0](v14, v16);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v17 = sub_2295A3E30(v20, v21, &v22);

    *(v11 + 4) = v17;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_2295A3E30(0xD00000000000001ELL, 0x800000022A58D970, &v22);
    _os_log_impl(&dword_229538000, v9, v10, "%s No-op for %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v12, -1, -1);
    MEMORY[0x22AAD4E50](v11, -1, -1);
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_229617AAC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_22A4DD07C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_229541CB0(ObjectType, &off_283CDE4B8);
  v8 = v1;
  v9 = sub_22A4DD05C();
  v10 = sub_22A4DDCCC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 136315394;
    v20 = 91;
    v21 = 0xE100000000000000;
    v22 = v12;
    v13 = [v8 shortDescription];
    v14 = sub_22A4DD5EC();
    v16 = v15;

    MEMORY[0x22AAD08C0](v14, v16);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v17 = sub_2295A3E30(v20, v21, &v22);

    *(v11 + 4) = v17;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_2295A3E30(0xD000000000000012, 0x800000022A58D920, &v22);
    _os_log_impl(&dword_229538000, v9, v10, "%s No-op for %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v12, -1, -1);
    MEMORY[0x22AAD4E50](v11, -1, -1);
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_229617D0C(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = sub_22A4DD07C();
  v32 = *(v8 - 8);
  v9 = *(v32 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - v11;
  sub_22960FCE0();
  v29 = a2;
  sub_229541CB0(ObjectType, &off_283CDE4B8);
  v13 = v3;
  v14 = a1;
  v15 = sub_22A4DD05C();
  v16 = sub_22A4DDCCC();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v31 = a3;
    v19 = v18;
    v20 = swift_slowAlloc();
    *v17 = 136315394;
    v33 = 91;
    v34 = 0xE100000000000000;
    v35 = v20;
    v21 = [v13 shortDescription];
    v22 = sub_22A4DD5EC();
    v30 = v8;
    v24 = v23;

    MEMORY[0x22AAD08C0](v22, v24);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v25 = sub_2295A3E30(v33, v34, &v35);

    *(v17 + 4) = v25;
    *(v17 + 12) = 2112;
    *(v17 + 14) = v14;
    *v19 = v14;
    v26 = v14;
    _os_log_impl(&dword_229538000, v15, v16, "%s Did add pairing: %@", v17, 0x16u);
    sub_22953EAE4(v19, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v19, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x22AAD4E50](v20, -1, -1);
    MEMORY[0x22AAD4E50](v17, -1, -1);

    (*(v32 + 8))(v12, v30);
  }

  else
  {

    (*(v32 + 8))(v12, v8);
  }

  return v29(0);
}

BOOL sub_229618230(void (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v33 = a2;
  ObjectType = swift_getObjectType();
  v6 = sub_22A4DD07C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v9);
  v11 = &v30 - v10;
  v12 = [v2 keyBag];
  v13 = [v12 currentIdentity];

  if (!v13)
  {
    v15 = v7;
    sub_229541CB0(ObjectType, &off_283CDE4B8);
    v16 = v3;
    v17 = sub_22A4DD05C();
    v18 = sub_22A4DDCEC();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v31 = a1;
      v21 = v20;
      *v19 = 136315138;
      v34 = 91;
      v35 = 0xE100000000000000;
      v36 = v20;
      v22 = [v16 shortDescription];
      v23 = sub_22A4DD5EC();
      v32 = v6;
      v25 = v24;

      MEMORY[0x22AAD08C0](v23, v25);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v26 = sub_2295A3E30(v34, v35, &v36);

      *(v19 + 4) = v26;
      _os_log_impl(&dword_229538000, v17, v18, "%s No pairing for current controller", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      v27 = v21;
      a1 = v31;
      MEMORY[0x22AAD4E50](v27, -1, -1);
      MEMORY[0x22AAD4E50](v19, -1, -1);

      (*(v15 + 8))(v11, v32);
      if (!a1)
      {
        return v13 != 0;
      }
    }

    else
    {

      (*(v15 + 8))(v11, v6);
      if (!a1)
      {
        return v13 != 0;
      }
    }

    type metadata accessor for HMError(0);
    v36 = 2;
    sub_22956AD8C(MEMORY[0x277D84F90]);
    sub_2296177B4(&qword_27D87D7C0, type metadata accessor for HMError);
    sub_22A4DB3CC();
    v28 = v34;
    a1(v34);

    return v13 != 0;
  }

  v14 = v13;
  sub_229611628(v13);

  if (a1)
  {
    a1(0);
  }

  return v13 != 0;
}

void sub_229618820(void *a1, uint64_t a2)
{
  v3 = [a1 keyBag];
  v4 = [v3 currentIdentity];

  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_22A576190;
    *(v5 + 32) = v4;
    sub_229562F68(0, &qword_281401978, 0x277CFEC20);
    v6 = v4;
    v8 = sub_22A4DD81C();
    (*(a2 + 16))(a2, v8, 0);
  }

  else
  {
    type metadata accessor for HMError(0);
    sub_22956AD8C(MEMORY[0x277D84F90]);
    sub_2296177B4(&qword_27D87D7C0, type metadata accessor for HMError);
    sub_22A4DB3CC();
    v7 = sub_22A4DB3DC();
    (*(a2 + 16))(a2, 0, v7);
  }
}

uint64_t sub_2296189DC(unint64_t a1, void (*a2)(void, void), unint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = sub_22A4DD07C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v36 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22A4DE0EC())
  {
    v12 = MEMORY[0x277D84F90];
    v34 = v7;
    v35 = a3;
    v33 = v8;
    if (!i)
    {
      break;
    }

    v39 = MEMORY[0x277D84F90];
    sub_22A4DE29C();
    if (i < 0)
    {
      __break(1u);

      __break(1u);
      return result;
    }

    v32 = a2;
    a3 = 0;
    a2 = (a1 & 0xC000000000000001);
    v37 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v13 = a3 + 1;
      if (__OFADD__(a3, 1))
      {
        break;
      }

      if (a2)
      {
        v14 = MEMORY[0x22AAD13F0](a3, a1);
      }

      else
      {
        if (a3 >= *(v37 + 16))
        {
          goto LABEL_18;
        }

        v14 = *(a1 + 8 * a3 + 32);
      }

      v15 = v14;
      v41 = v14;
      sub_229611E0C(&v41, v38, ObjectType, &v42);

      v7 = v42;
      sub_22A4DE27C();
      v8 = *(v39 + 16);
      sub_22A4DE2AC();
      sub_22A4DE2BC();
      sub_22A4DE28C();
      ++a3;
      if (v13 == i)
      {
        v12 = v39;
        a2 = v32;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

LABEL_13:
  v16 = v36;
  sub_229541CB0(ObjectType, &off_283CDE4B8);
  v17 = v38;

  v18 = sub_22A4DD05C();
  v19 = sub_22A4DDCCC();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v42 = v21;
    *v20 = 136315394;
    v39 = 91;
    v40 = 0xE100000000000000;
    v22 = [v17 shortDescription];
    v23 = sub_22A4DD5EC();
    v25 = v24;

    MEMORY[0x22AAD08C0](v23, v25);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v26 = sub_2295A3E30(v39, v40, &v42);

    *(v20 + 4) = v26;
    *(v20 + 12) = 2080;
    v27 = sub_229562F68(0, &qword_27D87DEF0, 0x277CFEA90);
    v28 = MEMORY[0x22AAD0A20](v12, v27);
    v30 = sub_2295A3E30(v28, v29, &v42);

    *(v20 + 14) = v30;
    _os_log_impl(&dword_229538000, v18, v19, "%s Did complete write requests with %s", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v21, -1, -1);
    MEMORY[0x22AAD4E50](v20, -1, -1);

    (*(v33 + 8))(v36, v34);
  }

  else
  {

    (*(v33 + 8))(v16, v34);
  }

  a2(v12, 0);
}

id sub_229618DD4(uint64_t a1, void (*a2)(uint64_t, void), void (**a3)(char *, uint64_t))
{
  ObjectType = swift_getObjectType();
  v51 = sub_22A4DB74C();
  v7 = *(v51 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v51);
  v10 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22A4DD07C();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v16;
  v46 = ObjectType;
  v47 = v3;
  if (v13 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v41)
  {
    v18 = MEMORY[0x277D84F90];
    v45 = v11;
    v48 = v15;
    if (!i)
    {
LABEL_14:
      sub_229541CB0(v46, &off_283CDE4B8);
      v26 = v47;

      v27 = sub_22A4DD05C();
      v28 = sub_22A4DDCCC();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        *v29 = 136315394;
        v52 = 91;
        v53 = 0xE100000000000000;
        v54 = v30;
        v31 = [v26 shortDescription];
        v32 = sub_22A4DD5EC();
        v34 = v33;

        MEMORY[0x22AAD08C0](v32, v34);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v35 = sub_2295A3E30(v52, v53, &v54);

        *(v29 + 4) = v35;
        *(v29 + 12) = 2080;
        v36 = sub_229562F68(0, &qword_27D87DEF0, 0x277CFEA90);
        v37 = MEMORY[0x22AAD0A20](v18, v36);
        v39 = sub_2295A3E30(v37, v38, &v54);

        *(v29 + 14) = v39;
        _os_log_impl(&dword_229538000, v27, v28, "%s Did complete read requests with %s", v29, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v30, -1, -1);
        MEMORY[0x22AAD4E50](v29, -1, -1);

        (*(v44 + 8))(v48, v45);
      }

      else
      {

        (*(v44 + 8))(v15, v45);
      }

      a2(v18, 0);
    }

    v19 = v13;
    v52 = MEMORY[0x277D84F90];
    result = sub_22A4DE29C();
    if (i < 0)
    {
      break;
    }

    v42[1] = a3;
    v43 = a2;
    v21 = objc_opt_self();
    v11 = 0;
    v22 = v19;
    a2 = (v19 & 0xC000000000000001);
    v49 = v19 & 0xFFFFFFFFFFFFFF8;
    v50 = v21;
    a3 = (v7 + 8);
    while (1)
    {
      v15 = (v11 + 1);
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (a2)
      {
        v23 = MEMORY[0x22AAD13F0](v11, v22);
      }

      else
      {
        if (v11 >= *(v49 + 16))
        {
          goto LABEL_19;
        }

        v23 = *(v22 + 8 * v11 + 32);
      }

      v24 = v23;
      sub_22A4DB73C();
      v25 = sub_22A4DB6AC();
      (*a3)(v10, v51);
      [v24 setValueUpdatedTime_];

      result = [v50 responseTupleForCharacteristic:v24 error:0];
      if (!result)
      {
        goto LABEL_22;
      }

      sub_22A4DE27C();
      v7 = *(v52 + 16);
      sub_22A4DE2AC();
      sub_22A4DE2BC();
      sub_22A4DE28C();
      ++v11;
      v22 = v19;
      if (v15 == i)
      {
        v18 = v52;
        a2 = v43;
        v15 = v48;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    v40 = v13;
    v41 = sub_22A4DE0EC();
    v13 = v40;
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

void sub_2296192AC(int a1, unint64_t a2, void (*a3)(uint64_t, uint64_t), char **a4)
{
  v5 = v4;
  v54 = a3;
  LODWORD(v57) = a1;
  ObjectType = swift_getObjectType();
  v9 = sub_22A4DD07C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 8);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = (&v51 - v15);
  v17 = a2 >> 62;
  if (a2 >> 62)
  {
    goto LABEL_23;
  }

  if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_24:
    v57 = v10;
    sub_229541CB0(ObjectType, &off_283CDE4B8);
    v37 = v5;
    v38 = sub_22A4DD05C();
    v39 = sub_22A4DDCEC();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v55 = v9;
      v41 = v40;
      v42 = swift_slowAlloc();
      *v41 = 136315138;
      v58 = 91;
      v59 = 0xE100000000000000;
      v60 = v42;
      v43 = [v37 shortDescription];
      v44 = sub_22A4DD5EC();
      v46 = v45;

      MEMORY[0x22AAD08C0](v44, v46);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v47 = sub_2295A3E30(v58, v59, &v60);

      *(v41 + 4) = v47;
      _os_log_impl(&dword_229538000, v38, v39, "%s No characteristics to update events", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x22AAD4E50](v42, -1, -1);
      v48 = v54;
      MEMORY[0x22AAD4E50](v41, -1, -1);

      (*(v57 + 1))(v16, v55);
    }

    else
    {

      (*(v57 + 1))(v16, v9);
      v48 = v54;
    }

    type metadata accessor for HMError(0);
    v60 = 3;
    v49 = MEMORY[0x277D84F90];
    sub_22956AD8C(MEMORY[0x277D84F90]);
    sub_2296177B4(&qword_27D87D7C0, type metadata accessor for HMError);
    sub_22A4DB3CC();
    v50 = v58;
    v48(v49, v58);

    return;
  }

  while (1)
  {
    sub_229541CB0(ObjectType, &off_283CDE4B8);
    v18 = v5;

    v16 = sub_22A4DD05C();
    v19 = sub_22A4DDCCC();

    v20 = os_log_type_enabled(v16, v19);
    v56 = a2;
    v53 = a4;
    if (v20)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v52 = v22;
      *v21 = 136315650;
      v58 = 91;
      v59 = 0xE100000000000000;
      v60 = v22;
      v23 = [v18 shortDescription];
      v24 = sub_22A4DD5EC();
      v55 = v9;
      v26 = v25;

      MEMORY[0x22AAD08C0](v24, v26);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v27 = sub_2295A3E30(v58, v59, &v60);

      *(v21 + 4) = v27;
      *(v21 + 12) = 1024;
      *(v21 + 14) = v57 & 1;
      *(v21 + 18) = 2080;
      v28 = sub_229562F68(0, &qword_27D87DEE8, 0x277CFEA68);
      v29 = MEMORY[0x22AAD0A20](a2, v28);
      v31 = sub_2295A3E30(v29, v30, &v60);

      *(v21 + 20) = v31;
      _os_log_impl(&dword_229538000, v16, v19, "%s Updating event to %{BOOL}d for %s", v21, 0x1Cu);
      v32 = v52;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v32, -1, -1);
      MEMORY[0x22AAD4E50](v21, -1, -1);

      (*(v10 + 1))(v14, v55);
      if (v17)
      {
        goto LABEL_5;
      }
    }

    else
    {

      (*(v10 + 1))(v14, v9);
      if (v17)
      {
LABEL_5:
        v33 = v56;
        v9 = sub_22A4DE0EC();
        goto LABEL_8;
      }
    }

    v33 = v56;
    v9 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:
    if (!v9)
    {
      break;
    }

    v58 = MEMORY[0x277D84F90];
    ObjectType = &v58;
    sub_22A4DE29C();
    if (v9 < 0)
    {
      __break(1u);
LABEL_29:
      __break(1u);
      return;
    }

    v5 = objc_opt_self();
    v14 = 0;
    v34 = v33;
    v17 = v33 & 0xC000000000000001;
    v55 = v33 & 0xFFFFFFFFFFFFFF8;
    a2 = &_OBJC_LABEL_PROTOCOL___HMDUserDataControllerTimerCreator;
    a4 = &selRef_resetAccessoryDiagnosticCounters;
    while (1)
    {
      v10 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v17)
      {
        v35 = MEMORY[0x22AAD13F0](v14, v34);
      }

      else
      {
        if (v14 >= *(v55 + 16))
        {
          goto LABEL_22;
        }

        v35 = *(v34 + 8 * v14 + 32);
      }

      v36 = v35;
      [v35 setEventNotificationsEnabled_];
      if (![v5 responseTupleForCharacteristic:v36 error:0])
      {
        goto LABEL_29;
      }

      ObjectType = &v58;
      sub_22A4DE27C();
      v16 = *(v58 + 16);
      sub_22A4DE2AC();
      sub_22A4DE2BC();
      sub_22A4DE28C();
      ++v14;
      v34 = v56;
      if (v10 == v9)
      {
        v54(v58, 0);
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    if (!sub_22A4DE0EC())
    {
      goto LABEL_24;
    }
  }

  v54(MEMORY[0x277D84F90], 0);
LABEL_20:
}

uint64_t sub_22961995C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87FC20, &unk_22A578810);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2296199CC(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = *(v1 + 5);
  v8 = v1[6];
  v9 = *(v1 + 11);
  v10 = *(v1 + 12);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_229569B30;

  return sub_229614F90(v8, a1, v4, v5, v6, v7, (v1 + 7), v9, v10);
}

uint64_t sub_229619AB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87FC20, &unk_22A578810);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_229619B24(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_229619B50()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DF08, &qword_22A57A988) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_229611BB0(v0 + v2, v3);
}

uint64_t sub_229619BE8()
{
  v0 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DF08, &qword_22A57A988) - 8) + 80);

  return sub_229611B50();
}

id sub_229619C54()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DF18, &qword_22A57A998) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_22960F5A0(v0 + v2, v4, v5);
}

uint64_t sub_229619D2C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E060, &qword_22A57B0D8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = *(v1 + *(type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata(0) + 20));
  v8 = OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__home;
  swift_beginAccess();
  sub_229564F88(v7 + v8, v6, &qword_27D87E060, &qword_22A57B0D8);
  v9 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataHome(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_22961F208(v6, a1, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataHome);
  }

  sub_22A4DC28C();
  v11 = (a1 + *(v9 + 20));
  *v11 = 0;
  v11[1] = 0;
  v12 = a1 + *(v9 + 24);
  *v12 = 0;
  *(v12 + 4) = 1;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_22953EAE4(v6, &qword_27D87E060, &qword_22A57B0D8);
  }

  return result;
}

uint64_t sub_229619EDC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E058, &qword_22A57B0D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v17 - v7;
  v9 = *(v2 + *(type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata(0) + 20));
  v10 = *a1;
  swift_beginAccess();
  sub_229564F88(v9 + v10, v8, &qword_27D87E058, &qword_22A57B0D0);
  v11 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice(0);
  v12 = *(*(v11 - 1) + 48);
  if (v12(v8, 1, v11) != 1)
  {
    return sub_22961F208(v8, a2, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice);
  }

  sub_22A4DC28C();
  v13 = (a2 + v11[5]);
  *v13 = 0;
  v13[1] = 0;
  v14 = (a2 + v11[6]);
  *v14 = 0;
  v14[1] = 0;
  *(a2 + v11[7]) = 2;
  *(a2 + v11[8]) = 2;
  *(a2 + v11[9]) = 2;
  v15 = (a2 + v11[10]);
  *v15 = 0;
  v15[1] = 0;
  result = (v12)(v8, 1, v11);
  if (result != 1)
  {
    return sub_22953EAE4(v8, &qword_27D87E058, &qword_22A57B0D0);
  }

  return result;
}

uint64_t sub_22961A094@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E050, &qword_22A57B0C8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = *(v1 + *(type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata(0) + 20));
  v8 = OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__user;
  swift_beginAccess();
  sub_229564F88(v7 + v8, v6, &qword_27D87E050, &qword_22A57B0C8);
  v9 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataUser(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_22961F208(v6, a1, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataUser);
  }

  sub_22A4DC28C();
  v11 = (a1 + *(v9 + 20));
  *v11 = 0;
  v11[1] = 0;
  v12 = a1 + *(v9 + 24);
  *v12 = 0;
  *(v12 + 4) = 1;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_22953EAE4(v6, &qword_27D87E050, &qword_22A57B0C8);
  }

  return result;
}

uint64_t sub_22961A22C()
{
  v0 = sub_22A4DC47C();
  __swift_allocate_value_buffer(v0, qword_27D8AB6B0);
  __swift_project_value_buffer(v0, qword_27D8AB6B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E068, &qword_22A57B0E0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E070, &qword_22A57B0E8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_22A578760;
  v4 = v27 + v3;
  v5 = v27 + v3 + v1[14];
  *(v27 + v3) = 1;
  *v5 = "schema_version";
  *(v5 + 8) = 14;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21888];
  v7 = sub_22A4DC45C();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "event_name";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "event_uuid";
  *(v11 + 1) = 10;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "timestamp";
  *(v13 + 1) = 9;
  v13[16] = 2;
  v14 = *MEMORY[0x277D21870];
  v8();
  v15 = (v4 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "home";
  *(v16 + 1) = 4;
  v16[16] = 2;
  v8();
  v17 = (v4 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "device";
  *(v18 + 1) = 6;
  v18[16] = 2;
  v8();
  v19 = (v4 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "submitting_device";
  *(v20 + 1) = 17;
  v20[16] = 2;
  v8();
  v21 = (v4 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "user";
  *(v22 + 1) = 4;
  v22[16] = 2;
  v8();
  v23 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v23 = "system_uptime";
  *(v23 + 8) = 13;
  *(v23 + 16) = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "current_server_time";
  *(v25 + 1) = 19;
  v25[16] = 2;
  v8();
  return sub_22A4DC46C();
}

uint64_t sub_22961A5F4()
{
  v0 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_22961A634();
  qword_27D87DF28 = result;
  return result;
}

uint64_t sub_22961A634()
{
  *(v0 + 16) = 0;
  *(v0 + 20) = 1;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  v1 = OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__home;
  v2 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataHome(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__device;
  v4 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice(0);
  v5 = *(*(v4 - 8) + 56);
  v5(v0 + v3, 1, 1, v4);
  v5(v0 + OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__submittingDevice, 1, 1, v4);
  v6 = OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__user;
  v7 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataUser(0);
  (*(*(v7 - 8) + 56))(v0 + v6, 1, 1, v7);
  v8 = v0 + OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__systemUptime;
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = v0 + OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__currentServerTime;
  *v9 = 0;
  *(v9 + 8) = 1;
  return v0;
}

uint64_t sub_22961A7A8()
{
  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[8];

  sub_22953EAE4(v0 + OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__home, &qword_27D87E060, &qword_22A57B0D8);
  sub_22953EAE4(v0 + OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__device, &qword_27D87E058, &qword_22A57B0D0);
  sub_22953EAE4(v0 + OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__submittingDevice, &qword_27D87E058, &qword_22A57B0D0);
  sub_22953EAE4(v0 + OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__user, &qword_27D87E050, &qword_22A57B0C8);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_22961A8CC()
{
  sub_22961AA68(319, &qword_27D87DF70, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataHome);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_22961AA68(319, &qword_27D87DF78, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_22961AA68(319, &qword_27D87DF80, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataUser);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_22961AA68(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22A4DDF9C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_22961AB4C()
{
  sub_22A4DC29C();
  if (v0 <= 0x3F)
  {
    sub_22961AC10(319, &qword_281401CE0);
    if (v1 <= 0x3F)
    {
      sub_22961AC10(319, &qword_27D87DFB0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22961AC10(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_22A4DDF9C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22A4DC29C();
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22A4DC29C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void sub_22961AE0C()
{
  sub_22A4DC29C();
  if (v0 <= 0x3F)
  {
    sub_22961AC10(319, &qword_281401CE0);
    if (v1 <= 0x3F)
    {
      sub_22961AC10(319, &qword_27D87DF98);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_22961AEC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata(0) + 20);
  v9 = *(v3 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = *(v3 + v8);
    v13 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata._StorageClass(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v16 = sub_22961F6EC(v12);

    *(v4 + v8) = v16;
    v11 = v16;
  }

  return sub_22961AF7C(v11, a1, a2, a3);
}

uint64_t sub_22961AF7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_22A4DC2CC();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result > 5)
      {
        if (result <= 7)
        {
          if (result == 6)
          {
            sub_22961B460();
          }

          else
          {
            sub_22961B53C();
          }
        }

        else
        {
          switch(result)
          {
            case 8:
              sub_22961B618();
              break;
            case 9:
              sub_22961B6F4(a2, a1, a3, a4, &OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__systemUptime);
              break;
            case 10:
              sub_22961B6F4(a2, a1, a3, a4, &OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__currentServerTime);
              break;
          }
        }
      }

      else if (result <= 2)
      {
        if (result == 1)
        {
          sub_22961B174();
        }

        else if (result == 2)
        {
          sub_22961B1F8();
        }
      }

      else if (result == 3)
      {
        sub_22961B27C();
      }

      else if (result == 4)
      {
        sub_22961B300();
      }

      else
      {
        sub_22961B384();
      }

      result = sub_22A4DC2CC();
    }
  }

  return result;
}

uint64_t sub_22961B174()
{
  swift_beginAccess();
  sub_22A4DC33C();
  return swift_endAccess();
}

uint64_t sub_22961B1F8()
{
  swift_beginAccess();
  sub_22A4DC32C();
  return swift_endAccess();
}

uint64_t sub_22961B27C()
{
  swift_beginAccess();
  sub_22A4DC32C();
  return swift_endAccess();
}

uint64_t sub_22961B300()
{
  swift_beginAccess();
  sub_22A4DC32C();
  return swift_endAccess();
}

uint64_t sub_22961B384()
{
  swift_beginAccess();
  type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataHome(0);
  sub_22961EDB0(&qword_27D87E010, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataHome);
  sub_22A4DC36C();
  return swift_endAccess();
}

uint64_t sub_22961B460()
{
  swift_beginAccess();
  type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice(0);
  sub_22961EDB0(&qword_27D87DFF0, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice);
  sub_22A4DC36C();
  return swift_endAccess();
}

uint64_t sub_22961B53C()
{
  swift_beginAccess();
  type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice(0);
  sub_22961EDB0(&qword_27D87DFF0, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice);
  sub_22A4DC36C();
  return swift_endAccess();
}

uint64_t sub_22961B618()
{
  swift_beginAccess();
  type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataUser(0);
  sub_22961EDB0(&qword_27D87DFD0, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataUser);
  sub_22A4DC36C();
  return swift_endAccess();
}

uint64_t sub_22961B6F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a5;
  swift_beginAccess();
  sub_22A4DC34C();
  return swift_endAccess();
}

uint64_t sub_22961B77C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata(0);
  result = sub_22961B7E8(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return sub_22A4DC27C();
  }

  return result;
}

uint64_t sub_22961B7E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_22961B910(a1);
  if (!v4)
  {
    sub_22961B994(a1);
    sub_22961BA30(a1);
    sub_22961BACC(a1);
    sub_22961BB68(a1, a2, a3, a4);
    sub_22961BD84(a1, a2, a3, a4);
    sub_22961BFA0(a1, a2, a3, a4);
    sub_22961C1BC(a1, a2, a3, a4);
    sub_22961C3D8(a1, a2, a3, a4, &OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__systemUptime);
    return sub_22961C3D8(a1, a2, a3, a4, &OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__currentServerTime);
  }

  return result;
}

uint64_t sub_22961B910(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 20) & 1) == 0)
  {
    v3 = *(a1 + 16);
    return sub_22A4DC41C();
  }

  return result;
}

uint64_t sub_22961B994(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 32))
  {
    v3 = *(a1 + 24);
    v4 = *(a1 + 32);

    sub_22A4DC40C();
  }

  return result;
}

uint64_t sub_22961BA30(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 48))
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);

    sub_22A4DC40C();
  }

  return result;
}

uint64_t sub_22961BACC(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 64))
  {
    v3 = *(a1 + 56);
    v4 = *(a1 + 64);

    sub_22A4DC40C();
  }

  return result;
}

uint64_t sub_22961BB68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E060, &qword_22A57B0D8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataHome(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__home;
  swift_beginAccess();
  sub_229564F88(a1 + v14, v8, &qword_27D87E060, &qword_22A57B0D8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_22953EAE4(v8, &qword_27D87E060, &qword_22A57B0D8);
  }

  sub_22961F208(v8, v13, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataHome);
  sub_22961EDB0(&qword_27D87E010, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataHome);
  sub_22A4DC44C();
  return sub_22961F270(v13, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataHome);
}

uint64_t sub_22961BD84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E058, &qword_22A57B0D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__device;
  swift_beginAccess();
  sub_229564F88(a1 + v14, v8, &qword_27D87E058, &qword_22A57B0D0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_22953EAE4(v8, &qword_27D87E058, &qword_22A57B0D0);
  }

  sub_22961F208(v8, v13, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice);
  sub_22961EDB0(&qword_27D87DFF0, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice);
  sub_22A4DC44C();
  return sub_22961F270(v13, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice);
}

uint64_t sub_22961BFA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E058, &qword_22A57B0D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__submittingDevice;
  swift_beginAccess();
  sub_229564F88(a1 + v14, v8, &qword_27D87E058, &qword_22A57B0D0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_22953EAE4(v8, &qword_27D87E058, &qword_22A57B0D0);
  }

  sub_22961F208(v8, v13, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice);
  sub_22961EDB0(&qword_27D87DFF0, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice);
  sub_22A4DC44C();
  return sub_22961F270(v13, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice);
}

uint64_t sub_22961C1BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E050, &qword_22A57B0C8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataUser(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__user;
  swift_beginAccess();
  sub_229564F88(a1 + v14, v8, &qword_27D87E050, &qword_22A57B0C8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_22953EAE4(v8, &qword_27D87E050, &qword_22A57B0C8);
  }

  sub_22961F208(v8, v13, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataUser);
  sub_22961EDB0(&qword_27D87DFD0, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataUser);
  sub_22A4DC44C();
  return sub_22961F270(v13, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataUser);
}

uint64_t sub_22961C3D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = (a1 + *a5);
  result = swift_beginAccess();
  if ((v5[1] & 1) == 0)
  {
    v7 = *v5;
    return sub_22A4DC42C();
  }

  return result;
}

BOOL sub_22961C468(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataUser(0);
  v133 = *(v4 - 8);
  v134 = v4;
  v5 = *(v133 + 64);
  MEMORY[0x28223BE20](v4);
  v130 = &v129 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E080, &qword_22A57B0F0);
  v7 = *(*(v132 - 8) + 64);
  MEMORY[0x28223BE20](v132);
  v135 = &v129 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E050, &qword_22A57B0C8);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v131 = &v129 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v139 = &v129 - v13;
  v14 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice(0);
  v142 = *(v14 - 8);
  v143 = v14;
  v15 = *(v142 + 64);
  MEMORY[0x28223BE20](v14);
  v137 = &v129 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E088, &qword_22A57B0F8);
  v17 = *(*(v144 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v144);
  v138 = &v129 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v141 = &v129 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E058, &qword_22A57B0D0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v136 = &v129 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v145 = &v129 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v140 = &v129 - v28;
  MEMORY[0x28223BE20](v27);
  v146 = &v129 - v29;
  v30 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataHome(0);
  v147 = *(v30 - 8);
  v31 = *(v147 + 64);
  MEMORY[0x28223BE20](v30);
  v33 = &v129 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E090, &qword_22A57B100);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34);
  v148 = &v129 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E060, &qword_22A57B0D8);
  v38 = *(*(v37 - 8) + 64);
  v39 = MEMORY[0x28223BE20](v37 - 8);
  v41 = &v129 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v43 = &v129 - v42;
  swift_beginAccess();
  v44 = *(a1 + 16);
  v45 = *(a1 + 20);
  swift_beginAccess();
  v46 = *(a2 + 20);
  if (v45)
  {
    if (!*(a2 + 20))
    {
      return 0;
    }
  }

  else
  {
    if (v44 != *(a2 + 16))
    {
      v46 = 1;
    }

    if (v46)
    {
      return 0;
    }
  }

  v149 = a2;
  swift_beginAccess();
  v48 = *(a1 + 24);
  v47 = *(a1 + 32);
  swift_beginAccess();
  v49 = *(v149 + 32);
  if (v47)
  {
    if (!v49 || (v48 != *(v149 + 24) || v47 != v49) && (sub_22A4DE60C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v49)
  {
    return 0;
  }

  swift_beginAccess();
  v50 = *(a1 + 40);
  v51 = *(a1 + 48);
  v52 = v149;
  swift_beginAccess();
  v53 = *(v52 + 48);
  if (v51)
  {
    if (!v53 || (v50 != *(v52 + 40) || v51 != v53) && (sub_22A4DE60C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v53)
  {
    return 0;
  }

  swift_beginAccess();
  v54 = *(a1 + 56);
  v55 = *(a1 + 64);
  v56 = v149;
  swift_beginAccess();
  v57 = *(v56 + 64);
  if (v55)
  {
    if (!v57 || (v54 != *(v56 + 56) || v55 != v57) && (sub_22A4DE60C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v57)
  {
    return 0;
  }

  v58 = OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__home;
  swift_beginAccess();
  sub_229564F88(a1 + v58, v43, &qword_27D87E060, &qword_22A57B0D8);
  v59 = OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__home;
  v60 = v149;
  swift_beginAccess();
  v61 = *(v34 + 48);
  v62 = v148;
  sub_229564F88(v43, v148, &qword_27D87E060, &qword_22A57B0D8);
  v129 = v61;
  sub_229564F88(v60 + v59, v62 + v61, &qword_27D87E060, &qword_22A57B0D8);
  v63 = *(v147 + 48);
  if (v63(v62, 1, v30) == 1)
  {

    v64 = v149;

    sub_22953EAE4(v43, &qword_27D87E060, &qword_22A57B0D8);
    if (v63(v62 + v129, 1, v30) == 1)
    {
      sub_22953EAE4(v62, &qword_27D87E060, &qword_22A57B0D8);
      goto LABEL_36;
    }

LABEL_33:
    sub_22953EAE4(v62, &qword_27D87E090, &qword_22A57B100);
    goto LABEL_50;
  }

  sub_229564F88(v62, v41, &qword_27D87E060, &qword_22A57B0D8);
  v65 = v129;
  if (v63(v62 + v129, 1, v30) == 1)
  {

    sub_22953EAE4(v43, &qword_27D87E060, &qword_22A57B0D8);
    sub_22961F270(v41, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataHome);
    goto LABEL_33;
  }

  sub_22961F208(v62 + v65, v33, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataHome);

  v64 = v149;

  v66 = v62;
  v67 = sub_22961F4E4(v41, v33, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataHome);
  sub_22961F270(v33, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataHome);
  sub_22953EAE4(v43, &qword_27D87E060, &qword_22A57B0D8);
  sub_22961F270(v41, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataHome);
  sub_22953EAE4(v66, &qword_27D87E060, &qword_22A57B0D8);
  if ((v67 & 1) == 0)
  {
    goto LABEL_50;
  }

LABEL_36:
  v68 = OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__device;
  swift_beginAccess();
  v69 = v146;
  sub_229564F88(a1 + v68, v146, &qword_27D87E058, &qword_22A57B0D0);
  v70 = OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__device;
  swift_beginAccess();
  v71 = *(v144 + 48);
  v72 = v141;
  sub_229564F88(v69, v141, &qword_27D87E058, &qword_22A57B0D0);
  sub_229564F88(v64 + v70, v72 + v71, &qword_27D87E058, &qword_22A57B0D0);
  v73 = v143;
  v74 = *(v142 + 48);
  if (v74(v72, 1, v143) == 1)
  {
    sub_22953EAE4(v69, &qword_27D87E058, &qword_22A57B0D0);
    v75 = v74(v72 + v71, 1, v73);
    v76 = v145;
    if (v75 != 1)
    {
      goto LABEL_48;
    }

    sub_22953EAE4(v72, &qword_27D87E058, &qword_22A57B0D0);
  }

  else
  {
    v77 = v140;
    sub_229564F88(v72, v140, &qword_27D87E058, &qword_22A57B0D0);
    v78 = v74(v72 + v71, 1, v73);
    v76 = v145;
    if (v78 == 1)
    {
      sub_22953EAE4(v146, &qword_27D87E058, &qword_22A57B0D0);
      v79 = v77;
LABEL_47:
      sub_22961F270(v79, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice);
      goto LABEL_48;
    }

    v80 = v72 + v71;
    v81 = v137;
    sub_22961F208(v80, v137, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice);
    LODWORD(v148) = sub_22961F2D0(v77, v81);
    sub_22961F270(v81, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice);
    sub_22953EAE4(v146, &qword_27D87E058, &qword_22A57B0D0);
    sub_22961F270(v77, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice);
    sub_22953EAE4(v72, &qword_27D87E058, &qword_22A57B0D0);
    if ((v148 & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  v82 = OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__submittingDevice;
  swift_beginAccess();
  sub_229564F88(a1 + v82, v76, &qword_27D87E058, &qword_22A57B0D0);
  v83 = OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__submittingDevice;
  v84 = v149;
  swift_beginAccess();
  v85 = *(v144 + 48);
  v86 = v76;
  v87 = v138;
  sub_229564F88(v86, v138, &qword_27D87E058, &qword_22A57B0D0);
  v72 = v87;
  sub_229564F88(v84 + v83, v87 + v85, &qword_27D87E058, &qword_22A57B0D0);
  if (v74(v87, 1, v73) == 1)
  {
    sub_22953EAE4(v145, &qword_27D87E058, &qword_22A57B0D0);
    v88 = v74(v87 + v85, 1, v73);
    v89 = v139;
    if (v88 == 1)
    {
      sub_22953EAE4(v87, &qword_27D87E058, &qword_22A57B0D0);
      goto LABEL_53;
    }

LABEL_48:
    v93 = &qword_27D87E088;
    v94 = &qword_22A57B0F8;
    v95 = v72;
LABEL_49:
    sub_22953EAE4(v95, v93, v94);
    goto LABEL_50;
  }

  v90 = v87;
  v91 = v136;
  sub_229564F88(v90, v136, &qword_27D87E058, &qword_22A57B0D0);
  v92 = v74(v72 + v85, 1, v73);
  v89 = v139;
  if (v92 == 1)
  {
    sub_22953EAE4(v145, &qword_27D87E058, &qword_22A57B0D0);
    v79 = v91;
    goto LABEL_47;
  }

  v97 = v72 + v85;
  v98 = v137;
  sub_22961F208(v97, v137, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice);
  v99 = v72;
  v100 = sub_22961F2D0(v91, v98);
  sub_22961F270(v98, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice);
  sub_22953EAE4(v145, &qword_27D87E058, &qword_22A57B0D0);
  sub_22961F270(v91, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice);
  sub_22953EAE4(v99, &qword_27D87E058, &qword_22A57B0D0);
  if ((v100 & 1) == 0)
  {
    goto LABEL_50;
  }

LABEL_53:
  v101 = OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__user;
  swift_beginAccess();
  sub_229564F88(a1 + v101, v89, &qword_27D87E050, &qword_22A57B0C8);
  v102 = OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__user;
  v103 = v149;
  swift_beginAccess();
  v104 = *(v132 + 48);
  v105 = v89;
  v106 = v89;
  v107 = v135;
  sub_229564F88(v105, v135, &qword_27D87E050, &qword_22A57B0C8);
  v108 = v103 + v102;
  v109 = v107;
  sub_229564F88(v108, v107 + v104, &qword_27D87E050, &qword_22A57B0C8);
  v110 = v134;
  v111 = *(v133 + 48);
  if (v111(v107, 1, v134) == 1)
  {
    sub_22953EAE4(v106, &qword_27D87E050, &qword_22A57B0C8);
    if (v111(v107 + v104, 1, v110) == 1)
    {
      sub_22953EAE4(v107, &qword_27D87E050, &qword_22A57B0C8);
      goto LABEL_60;
    }

    goto LABEL_58;
  }

  v112 = v107;
  v113 = v131;
  sub_229564F88(v112, v131, &qword_27D87E050, &qword_22A57B0C8);
  if (v111(v109 + v104, 1, v110) == 1)
  {
    sub_22953EAE4(v139, &qword_27D87E050, &qword_22A57B0C8);
    sub_22961F270(v113, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataUser);
LABEL_58:
    v93 = &qword_27D87E080;
    v94 = &qword_22A57B0F0;
    v95 = v109;
    goto LABEL_49;
  }

  v114 = v109 + v104;
  v115 = v130;
  sub_22961F208(v114, v130, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataUser);
  v116 = sub_22961F4E4(v113, v115, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataUser);
  sub_22961F270(v115, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataUser);
  sub_22953EAE4(v139, &qword_27D87E050, &qword_22A57B0C8);
  sub_22961F270(v113, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataUser);
  sub_22953EAE4(v109, &qword_27D87E050, &qword_22A57B0C8);
  if ((v116 & 1) == 0)
  {
    goto LABEL_50;
  }

LABEL_60:
  v117 = (a1 + OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__systemUptime);
  swift_beginAccess();
  v118 = *v117;
  v119 = *(v117 + 8);
  v120 = v149 + OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__systemUptime;
  swift_beginAccess();
  v121 = *(v120 + 8);
  if (v119)
  {
    if (*(v120 + 8))
    {
      goto LABEL_65;
    }

LABEL_50:

    return 0;
  }

  if ((*(v120 + 8) & 1) != 0 || v118 != *v120)
  {
    goto LABEL_50;
  }

LABEL_65:
  v122 = (a1 + OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__currentServerTime);
  swift_beginAccess();
  v123 = *v122;
  v124 = *(v122 + 8);

  v125 = (v149 + OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__currentServerTime);
  swift_beginAccess();
  v126 = *v125;
  v127 = *(v125 + 8);

  if (v124)
  {
    return v127 != 0;
  }

  if (v123 == v126)
  {
    v128 = v127;
  }

  else
  {
    v128 = 1;
  }

  return (v128 & 1) == 0;
}

uint64_t sub_22961D48C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_22A4DC28C();
  v4 = *(a1 + 20);
  if (qword_27D87B910 != -1)
  {
    swift_once();
  }

  *(a2 + v4) = qword_27D87DF28;
}

uint64_t sub_22961D570(uint64_t a1, uint64_t a2)
{
  v4 = sub_22961EDB0(&qword_27D87E048, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22961D610(uint64_t a1)
{
  v2 = sub_22961EDB0(&qword_27D87E030, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22961D67C()
{
  sub_22961EDB0(&qword_27D87E030, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata);

  return sub_22A4DC39C();
}

uint64_t sub_22961D6FC()
{
  v0 = sub_22A4DC47C();
  __swift_allocate_value_buffer(v0, qword_27D8AB6C8);
  __swift_project_value_buffer(v0, qword_27D8AB6C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E068, &qword_22A57B0E0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E070, &qword_22A57B0E8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22A5761A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "home_uuid";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_22A4DC45C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "num_users";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_22A4DC46C();
}

uint64_t sub_22961D97C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22961EDB0(&qword_27D87E098, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataHome);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22961DA1C(uint64_t a1)
{
  v2 = sub_22961EDB0(&qword_27D87E010, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataHome);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22961DA88()
{
  sub_22961EDB0(&qword_27D87E010, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataHome);

  return sub_22A4DC39C();
}

uint64_t sub_22961DB08()
{
  v0 = sub_22A4DC47C();
  __swift_allocate_value_buffer(v0, qword_27D8AB6E0);
  __swift_project_value_buffer(v0, qword_27D8AB6E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E068, &qword_22A57B0E0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E070, &qword_22A57B0E8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_22A57A9A0;
  v4 = v19 + v3 + v1[14];
  *(v19 + v3) = 1;
  *v4 = "device_uuid";
  *(v4 + 8) = 11;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21888];
  v6 = sub_22A4DC45C();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v19 + v3 + v2 + v1[14];
  *(v19 + v3 + v2) = 2;
  *v8 = "room_uuid";
  *(v8 + 8) = 9;
  *(v8 + 16) = 2;
  v7();
  v9 = (v19 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "is_manufacturer_apple";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v7();
  v11 = (v19 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "is_me_device";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v7();
  v13 = (v19 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "is_primary_resident";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v7();
  v15 = (v19 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "color";
  *(v16 + 1) = 5;
  v16[16] = 2;
  v17 = *MEMORY[0x277D21870];
  v7();
  return sub_22A4DC46C();
}

uint64_t sub_22961DDD4()
{
  while (1)
  {
    result = sub_22A4DC2CC();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result > 3)
    {
      switch(result)
      {
        case 4:
          v6 = *(type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice(0) + 32);
          goto LABEL_18;
        case 5:
          v8 = *(type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice(0) + 36);
LABEL_18:
          v0 = 0;
          sub_22A4DC2DC();
          break;
        case 6:
          v5 = *(type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice(0) + 40);
          goto LABEL_3;
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          v1 = *(type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice(0) + 20);
          goto LABEL_3;
        case 2:
          v7 = *(type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice(0) + 24);
LABEL_3:
          v0 = 0;
          sub_22A4DC32C();
          break;
        case 3:
          v4 = *(type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice(0) + 28);
          goto LABEL_18;
      }
    }
  }
}

uint64_t sub_22961DF08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22961DFEC(v3, a1, a2, a3, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice);
  if (!v4)
  {
    sub_22961E068(v3);
    sub_22961E0E0(v3);
    sub_22961E158(v3);
    sub_22961E1D0(v3);
    sub_22961E248(v3);
    return sub_22A4DC27C();
  }

  return result;
}

uint64_t sub_22961DFEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 20));
  if (v7[1])
  {
    v8 = *v7;
    return sub_22A4DC40C();
  }

  return result;
}

uint64_t sub_22961E068(uint64_t a1)
{
  result = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice(0);
  v3 = (a1 + *(result + 24));
  if (v3[1])
  {
    v4 = *v3;
    return sub_22A4DC40C();
  }

  return result;
}

uint64_t sub_22961E0E0(uint64_t a1)
{
  result = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice(0);
  if (*(a1 + *(result + 28)) != 2)
  {
    return sub_22A4DC3BC();
  }

  return result;
}

uint64_t sub_22961E158(uint64_t a1)
{
  result = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice(0);
  if (*(a1 + *(result + 32)) != 2)
  {
    return sub_22A4DC3BC();
  }

  return result;
}

uint64_t sub_22961E1D0(uint64_t a1)
{
  result = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice(0);
  if (*(a1 + *(result + 36)) != 2)
  {
    return sub_22A4DC3BC();
  }

  return result;
}

uint64_t sub_22961E248(uint64_t a1)
{
  result = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice(0);
  v3 = (a1 + *(result + 40));
  if (v3[1])
  {
    v4 = *v3;
    return sub_22A4DC40C();
  }

  return result;
}

uint64_t sub_22961E2C0@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_22A4DC28C();
  v5 = a1[6];
  v6 = (a2 + a1[5]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  v8 = a1[8];
  *(a2 + a1[7]) = 2;
  *(a2 + v8) = 2;
  v9 = a1[10];
  *(a2 + a1[9]) = 2;
  v10 = (a2 + v9);
  *v10 = 0;
  v10[1] = 0;
  return result;
}

uint64_t sub_22961E368(uint64_t a1, uint64_t a2)
{
  v4 = sub_22961EDB0(&qword_27D87E0A0, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22961E408(uint64_t a1)
{
  v2 = sub_22961EDB0(&qword_27D87DFF0, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22961E474()
{
  sub_22961EDB0(&qword_27D87DFF0, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice);

  return sub_22A4DC39C();
}

uint64_t sub_22961E4F4()
{
  v0 = sub_22A4DC47C();
  __swift_allocate_value_buffer(v0, qword_27D8AB6F8);
  __swift_project_value_buffer(v0, qword_27D8AB6F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E068, &qword_22A57B0E0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E070, &qword_22A57B0E8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22A5761A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "user_uuid";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_22A4DC45C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "privilege";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v11 = *MEMORY[0x277D21870];
  v9();
  return sub_22A4DC46C();
}

uint64_t sub_22961E6C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  while (1)
  {
    result = sub_22A4DC2CC();
    if (v4 || (v8 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v6 = *(a4(0) + 20);
      sub_22A4DC32C();
    }

    else if (result == 2)
    {
      v9 = *(a4(0) + 24);
      sub_22A4DC33C();
    }
  }

  return result;
}

uint64_t sub_22961E78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  result = sub_22961DFEC(v5, a1, a2, a3, a4);
  if (!v6)
  {
    sub_22961E808(v5, a1, a2, a3, a5);
    return sub_22A4DC27C();
  }

  return result;
}

uint64_t sub_22961E808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 24));
  if ((v7[1] & 1) == 0)
  {
    v8 = *v7;
    return sub_22A4DC41C();
  }

  return result;
}

uint64_t sub_22961E884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_22A4DC28C();
  v5 = *(a1 + 24);
  v6 = (a2 + *(a1 + 20));
  *v6 = 0;
  v6[1] = 0;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 4) = 1;
  return result;
}

uint64_t sub_22961E8E4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22A4DC29C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_22961E94C(uint64_t a1)
{
  v3 = sub_22A4DC29C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_22961EA20(uint64_t a1, uint64_t a2)
{
  v4 = sub_22961EDB0(&qword_27D87E0A8, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataUser);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22961EAC0@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_22A4DC47C();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_22961EB5C(uint64_t a1)
{
  v2 = sub_22961EDB0(&qword_27D87DFD0, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataUser);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22961EBC8()
{
  sub_22A4DE77C();
  sub_22A4DD4FC();
  return sub_22A4DE7BC();
}

uint64_t sub_22961EC20()
{
  sub_22961EDB0(&qword_27D87DFD0, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataUser);

  return sub_22A4DC39C();
}

uint64_t sub_22961EC9C()
{
  sub_22A4DE77C();
  sub_22A4DD4FC();
  return sub_22A4DE7BC();
}

uint64_t sub_22961EDB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22961F208(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22961F270(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22961F2D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_22A4DE60C();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = v4[6];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }

    if (*v14 != *v16 || v15 != v17)
    {
      v19 = v4;
      v20 = sub_22A4DE60C();
      v4 = v19;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  v21 = v4[7];
  v22 = *(a1 + v21);
  v23 = *(a2 + v21);
  if (v22 == 2)
  {
    if (v23 != 2)
    {
      return 0;
    }
  }

  else if (v23 == 2 || ((v22 ^ v23) & 1) != 0)
  {
    return 0;
  }

  v24 = v4[8];
  v25 = *(a1 + v24);
  v26 = *(a2 + v24);
  if (v25 == 2)
  {
    if (v26 != 2)
    {
      return 0;
    }
  }

  else if (v26 == 2 || ((v25 ^ v26) & 1) != 0)
  {
    return 0;
  }

  v27 = v4[9];
  v28 = *(a1 + v27);
  v29 = *(a2 + v27);
  if (v28 == 2)
  {
    if (v29 != 2)
    {
      return 0;
    }
  }

  else if (v29 == 2 || ((v28 ^ v29) & 1) != 0)
  {
    return 0;
  }

  v30 = v4[10];
  v31 = (a1 + v30);
  v32 = *(a1 + v30 + 8);
  v33 = (a2 + v30);
  v34 = v33[1];
  if (v32)
  {
    if (!v34 || (*v31 != *v33 || v32 != v34) && (sub_22A4DE60C() & 1) == 0)
    {
      return 0;
    }

LABEL_39:
    sub_22A4DC29C();
    sub_22961EDB0(&qword_27D87E078, MEMORY[0x277D216C8]);
    return sub_22A4DD58C() & 1;
  }

  if (!v34)
  {
    goto LABEL_39;
  }

  return 0;
}

uint64_t sub_22961F4E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  v6 = *(v5 + 20);
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v9[1];
  if (v8)
  {
    if (!v10)
    {
      return 0;
    }

    if (*v7 != *v9 || v8 != v10)
    {
      v12 = v5;
      v13 = sub_22A4DE60C();
      v5 = v12;
      if ((v13 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  v14 = *(v5 + 24);
  v15 = (a1 + v14);
  v16 = *(a1 + v14 + 4);
  v17 = (a2 + v14);
  v18 = *(a2 + v14 + 4);
  if (v16)
  {
    if (!v18)
    {
      return 0;
    }
  }

  else
  {
    if (*v15 != *v17)
    {
      LOBYTE(v18) = 1;
    }

    if (v18)
    {
      return 0;
    }
  }

  sub_22A4DC29C();
  sub_22961EDB0(&qword_27D87E078, MEMORY[0x277D216C8]);
  return sub_22A4DD58C() & 1;
}

uint64_t sub_22961F604(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {
    v7 = *(a1 + v4);

    v8 = sub_22961C468(v5, v6);

    if (!v8)
    {
      return 0;
    }
  }

  sub_22A4DC29C();
  sub_22961EDB0(&qword_27D87E078, MEMORY[0x277D216C8]);
  return sub_22A4DD58C() & 1;
}

uint64_t sub_22961F6EC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E050, &qword_22A57B0C8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v57 = &v47 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E058, &qword_22A57B0D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v55 = &v47 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E060, &qword_22A57B0D8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v51 = &v47 - v11;
  *(v1 + 16) = 0;
  *(v1 + 56) = 0u;
  v48 = (v1 + 56);
  *(v1 + 40) = 0u;
  *(v1 + 20) = 1;
  *(v1 + 24) = 0u;
  v12 = OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__home;
  v49 = OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__home;
  v13 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataHome(0);
  (*(*(v13 - 8) + 56))(v1 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__device;
  v52 = OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__device;
  v15 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice(0);
  v16 = *(*(v15 - 8) + 56);
  v16(v1 + v14, 1, 1, v15);
  v53 = OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__submittingDevice;
  v16(v1 + OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__submittingDevice, 1, 1, v15);
  v17 = OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__user;
  v54 = OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__user;
  v18 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataUser(0);
  (*(*(v18 - 8) + 56))(v1 + v17, 1, 1, v18);
  v19 = v1 + OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__systemUptime;
  v50 = v1 + OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__systemUptime;
  *v19 = 0;
  *(v19 + 8) = 1;
  v20 = v1 + OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__currentServerTime;
  v56 = v1 + OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__currentServerTime;
  *v20 = 0;
  *(v20 + 8) = 1;
  swift_beginAccess();
  v21 = *(a1 + 16);
  LOBYTE(v16) = *(a1 + 20);
  swift_beginAccess();
  *(v1 + 16) = v21;
  *(v1 + 20) = v16;
  swift_beginAccess();
  v23 = *(a1 + 24);
  v22 = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 24) = v23;
  *(v1 + 32) = v22;
  swift_beginAccess();
  v25 = *(a1 + 40);
  v24 = *(a1 + 48);
  swift_beginAccess();
  *(v1 + 40) = v25;
  *(v1 + 48) = v24;
  swift_beginAccess();
  v27 = *(a1 + 56);
  v26 = *(a1 + 64);
  v28 = v48;
  swift_beginAccess();
  *v28 = v27;
  *(v1 + 64) = v26;
  v29 = OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__home;
  swift_beginAccess();
  v30 = v51;
  sub_229564F88(a1 + v29, v51, &qword_27D87E060, &qword_22A57B0D8);
  v31 = v49;
  swift_beginAccess();

  sub_2295E90C8(v30, v1 + v31, &qword_27D87E060, &qword_22A57B0D8);
  swift_endAccess();
  v32 = OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__device;
  swift_beginAccess();
  v33 = v55;
  sub_229564F88(a1 + v32, v55, &qword_27D87E058, &qword_22A57B0D0);
  v34 = v52;
  swift_beginAccess();
  sub_2295E90C8(v33, v1 + v34, &qword_27D87E058, &qword_22A57B0D0);
  swift_endAccess();
  v35 = OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__submittingDevice;
  swift_beginAccess();
  sub_229564F88(a1 + v35, v33, &qword_27D87E058, &qword_22A57B0D0);
  v36 = v53;
  swift_beginAccess();
  sub_2295E90C8(v33, v1 + v36, &qword_27D87E058, &qword_22A57B0D0);
  swift_endAccess();
  v37 = OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__user;
  swift_beginAccess();
  v38 = v57;
  sub_229564F88(a1 + v37, v57, &qword_27D87E050, &qword_22A57B0C8);
  v39 = v54;
  swift_beginAccess();
  sub_2295E90C8(v38, v1 + v39, &qword_27D87E050, &qword_22A57B0C8);
  swift_endAccess();
  v40 = (a1 + OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__systemUptime);
  swift_beginAccess();
  v41 = *v40;
  LOBYTE(v40) = *(v40 + 8);
  v42 = v50;
  swift_beginAccess();
  *v42 = v41;
  *(v42 + 8) = v40;
  v43 = (a1 + OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__currentServerTime);
  swift_beginAccess();
  v44 = *v43;
  LOBYTE(v43) = *(v43 + 8);
  v45 = v56;
  swift_beginAccess();
  *v45 = v44;
  *(v45 + 8) = v43;
  return v1;
}

uint64_t sub_22961FD1C()
{
  result = sub_22A4DC29C();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22961FDDC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7B && *(a1 + 8))
  {
    return (*a1 + 123);
  }

  v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7A)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_22961FE38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7A)
  {
    *result = a2 - 123;
    if (a3 >= 0x7B)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7B)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_22961FEE8()
{
  v0 = swift_allocObject();
  v1 = _s21AppleMediaAccessoriesCMa();
  result = swift_allocObject();
  v0[5] = v1;
  v0[6] = &off_283CE7730;
  v0[2] = result;
  qword_27D8AB718 = v0;
  return result;
}

uint64_t sub_22961FFD8(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, void *a5)
{
  v9 = swift_allocObject();
  v10 = [objc_opt_self() defaultCenter];
  v11 = a2(0);
  result = swift_allocObject();
  *(result + 16) = v10;
  *(result + 24) = a3;
  v9[5] = v11;
  v9[6] = a4;
  v9[2] = result;
  *a5 = v9;
  return result;
}

uint64_t sub_22962007C(uint64_t a1, unint64_t a2)
{
  while (1)
  {
    while (1)
    {
      v4 = a2 >> 61;
      if ((a2 >> 61) <= 2)
      {
        break;
      }

      if (v4 != 4)
      {
        if (v4 != 3)
        {
          v20 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v21 = *(v20 + 16);
          v22 = MEMORY[0x277D84F90];
          if (v21)
          {
            v35[0] = MEMORY[0x277D84F90];

            sub_22958381C(0, v21, 0);
            v23 = 32;
            v22 = v35[0];
            do
            {
              v24 = *(v20 + v23);

              v25 = sub_22962007C(a1, v24);

              v35[0] = v22;
              v27 = *(v22 + 16);
              v26 = *(v22 + 24);
              if (v27 >= v26 >> 1)
              {
                sub_22958381C((v26 > 1), v27 + 1, 1);
                v22 = v35[0];
              }

              *(v22 + 16) = v27 + 1;
              *(v22 + v27 + 32) = v25 & 1;
              v23 += 8;
              --v21;
            }

            while (v21);
          }

          v31 = *(v22 + 16);
          v32 = (v22 + 32);
          while (v31)
          {
            v33 = *v32++;
            --v31;
            if (v33 == 1)
            {
              goto LABEL_32;
            }
          }

LABEL_27:

LABEL_28:
          v9 = 0;
          return v9 & 1;
        }

        v10 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v11 = *(v10 + 16);
        v12 = MEMORY[0x277D84F90];
        if (v11)
        {
          v35[0] = MEMORY[0x277D84F90];

          sub_22958381C(0, v11, 0);
          v13 = 32;
          v12 = v35[0];
          do
          {
            v14 = *(v10 + v13);

            v15 = sub_22962007C(a1, v14);

            v35[0] = v12;
            v17 = *(v12 + 16);
            v16 = *(v12 + 24);
            if (v17 >= v16 >> 1)
            {
              sub_22958381C((v16 > 1), v17 + 1, 1);
              v12 = v35[0];
            }

            *(v12 + 16) = v17 + 1;
            *(v12 + v17 + 32) = v15 & 1;
            v13 += 8;
            --v11;
          }

          while (v11);
        }

        v28 = *(v12 + 16);
        v29 = (v12 + 32);
        while (v28)
        {
          v30 = *v29++;
          --v28;
          if ((v30 & 1) == 0)
          {
            goto LABEL_27;
          }
        }

LABEL_32:

LABEL_33:
        v9 = 1;
        return v9 & 1;
      }

      v6 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      a2 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      if (sub_22962007C(a1, v6))
      {
        goto LABEL_33;
      }
    }

    if (a2 >> 61 != 2)
    {
      break;
    }

    v5 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    a2 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    if ((sub_22962007C(a1, v5) & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  if (v4)
  {
    v18 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

    v19 = sub_22962007C(a1, v18);

    v9 = v19 ^ 1;
  }

  else
  {
    sub_22957F1C4(a2 + 16, v35);
    v7 = v36;
    v8 = v37;
    __swift_project_boxed_opaque_existential_0(v35, v36);
    v9 = (*(v8 + 16))(a1, v7, v8);
    __swift_destroy_boxed_opaque_existential_0(v35);
  }

  return v9 & 1;
}

uint64_t sub_229620368(uint64_t result)
{
  v1 = result;
  if (qword_27D87B930 != -1)
  {
    result = swift_once();
  }

  if (!(qword_27D8AB710 >> 61))
  {
    sub_22957F1C4(qword_27D8AB710 + 16, v12);
    v2 = v13;
    v3 = v14;
    __swift_project_boxed_opaque_existential_0(v12, v13);
    (*(v3 + 24))(v1, v2, v3);
    result = __swift_destroy_boxed_opaque_existential_0(v12);
  }

  if (qword_27D87B938 != -1)
  {
    result = swift_once();
  }

  if (!(qword_27D8AB718 >> 61))
  {
    sub_22957F1C4(qword_27D8AB718 + 16, v12);
    v4 = v13;
    v5 = v14;
    __swift_project_boxed_opaque_existential_0(v12, v13);
    (*(v5 + 24))(v1, v4, v5);
    result = __swift_destroy_boxed_opaque_existential_0(v12);
  }

  if (qword_27D87B940 != -1)
  {
    result = swift_once();
  }

  if (!(qword_27D8AB720 >> 61))
  {
    sub_22957F1C4(qword_27D8AB720 + 16, v12);
    v6 = v13;
    v7 = v14;
    __swift_project_boxed_opaque_existential_0(v12, v13);
    (*(v7 + 24))(v1, v6, v7);
    result = __swift_destroy_boxed_opaque_existential_0(v12);
  }

  if (qword_27D87B948 != -1)
  {
    result = swift_once();
  }

  if (!(qword_27D8AB728 >> 61))
  {
    sub_22957F1C4(qword_27D8AB728 + 16, v12);
    v8 = v13;
    v9 = v14;
    __swift_project_boxed_opaque_existential_0(v12, v13);
    (*(v9 + 24))(v1, v8, v9);
    result = __swift_destroy_boxed_opaque_existential_0(v12);
  }

  if (qword_27D87B950 != -1)
  {
    result = swift_once();
  }

  if (!(qword_27D8AB730 >> 61))
  {
    sub_22957F1C4(qword_27D8AB730 + 16, v12);
    v10 = v13;
    v11 = v14;
    __swift_project_boxed_opaque_existential_0(v12, v13);
    (*(v11 + 24))(v1, v10, v11);
    return __swift_destroy_boxed_opaque_existential_0(v12);
  }

  return result;
}

uint64_t sub_229620640(int a1, id a2)
{
  v2 = [a2 chipAccessoryServer];
  if (v2 && (v3 = v2, v4 = [v2 matterDevice], v3, v4))
  {
    v8 = sub_229621540();
    v9 = MEMORY[0x277D17450];
    *&v7 = v4;
    sub_229557188(&v7, v10);
    v5 = *__swift_project_boxed_opaque_existential_0(v10, v10[3]);
    sub_22A4DDF4C();
    return __swift_destroy_boxed_opaque_existential_0(v10);
  }

  else
  {
    [objc_opt_self() hmErrorWithCode_];
    return swift_willThrow();
  }
}

uint64_t sub_22962074C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a3;
  v4[15] = a4;
  v4[12] = a1;
  v4[13] = a2;
  return MEMORY[0x2822009F8](sub_229620770, 0, 0);
}

uint64_t sub_229620770()
{
  v1 = [*(v0 + 120) chipAccessoryServer];
  if (v1 && (v2 = v1, v3 = [v1 matterDevice], v2, v3))
  {
    v4 = sub_229621540();
    v5 = MEMORY[0x277D17450];
    *(v0 + 80) = v4;
    *(v0 + 88) = v5;
    *(v0 + 56) = v3;
    sub_229557188((v0 + 56), v0 + 16);
    __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v6 = swift_task_alloc();
    *(v0 + 128) = v6;
    *v6 = v0;
    v6[1] = sub_229620908;
    v7 = *(v0 + 104);
    v8 = *(v0 + 112);
    v9 = *(v0 + 96);

    return sub_229621668(v9, v7, v8);
  }

  else
  {
    [objc_opt_self() hmErrorWithCode_];
    swift_willThrow();
    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_229620908()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_229621814;
  }

  else
  {
    v3 = sub_229621818;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_229620A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a3;
  v4[15] = a4;
  v4[12] = a1;
  v4[13] = a2;
  return MEMORY[0x2822009F8](sub_229620A40, 0, 0);
}

uint64_t sub_229620A40()
{
  v1 = [*(v0 + 120) chipAccessoryServer];
  if (v1 && (v2 = v1, v3 = [v1 matterDevice], v2, v3))
  {
    v4 = sub_229621540();
    v5 = MEMORY[0x277D17450];
    *(v0 + 80) = v4;
    *(v0 + 88) = v5;
    *(v0 + 56) = v3;
    sub_229557188((v0 + 56), v0 + 16);
    __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v6 = swift_task_alloc();
    *(v0 + 128) = v6;
    *v6 = v0;
    v6[1] = sub_229620BD8;
    v7 = *(v0 + 104);
    v8 = *(v0 + 112);
    v9 = *(v0 + 96);

    return sub_22962174C(v9, v7, v8);
  }

  else
  {
    [objc_opt_self() hmErrorWithCode_];
    swift_willThrow();
    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_229620BD8()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_229620D50;
  }

  else
  {
    v3 = sub_229620CEC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_229620CEC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_229620D50()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[17];
  v2 = v0[1];

  return v2();
}

uint64_t sub_229620DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x2822009F8](sub_229620DD8, 0, 0);
}

uint64_t sub_229620DD8()
{
  v1 = [*(v0 + 48) chipAccessoryServer];
  if (v1 && (v2 = v1, v3 = [v1 matterDevice], v2, v3))
  {
    *(v0 + 16) = v3;
    v4 = sub_229621540();
    v5 = swift_task_alloc();
    *(v0 + 56) = v5;
    *v5 = v0;
    v5[1] = sub_229620F64;
    v6 = *(v0 + 32);
    v7 = *(v0 + 40);
    v8 = *(v0 + 24);
    v9 = MEMORY[0x277D17450];

    return (sub_2296215B0)(v8, v6, v7, v4, v9);
  }

  else
  {
    v11 = *(v0 + 24);
    v12 = sub_22A4DC77C();
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_229620F64()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_2296210DC;
  }

  else
  {
    v3 = sub_229621078;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_229621078()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2296210DC()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 64);

  return v1();
}

void sub_229621140(uint64_t a1@<X8>)
{
  v3 = [*v1 chipAccessoryServer];
  if (v3 && (v4 = v3, v5 = [v3 matterDevice], v4, v5))
  {
    sub_229621540();
    sub_22962158C();
  }

  else
  {
    v6 = sub_22A4DC77C();
    (*(*(v6 - 8) + 56))(a1, 1, 1, v6);
  }
}

uint64_t sub_229621238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_229586D38;

  return sub_229620DB4(a1, a2, a3, v8);
}

uint64_t sub_22962130C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_229586D38;

  return sub_22962074C(a1, a2, a3, v8);
}

void sub_2296213C4()
{
  v1 = [*v0 chipAccessoryServer];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 matterDevice];

    if (v3)
    {
      sub_229621540();
      sub_229621720();
    }
  }
}

uint64_t sub_229621488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_229569B30;

  return sub_229620A1C(a1, a2, a3, v8);
}

unint64_t sub_229621540()
{
  result = qword_27D87DB90;
  if (!qword_27D87DB90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D87DB90);
  }

  return result;
}

uint64_t sub_2296215B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = *(MEMORY[0x277D17460] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_229586D38;

  return MEMORY[0x282171880](a1, a2, a3);
}

uint64_t sub_229621668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = *(MEMORY[0x277D17468] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_229586D38;

  return MEMORY[0x282171888](a1, a2, a3);
}

uint64_t sub_22962174C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = *(MEMORY[0x277D17458] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_229586D38;

  return MEMORY[0x282171878](a1, a2, a3);
}

id sub_22962181C(void *a1)
{
  v2 = v1;
  v49 = a1;
  v3 = sub_22A4DB7DC();
  v51 = *(v3 - 8);
  v52 = v3;
  v4 = *(v51 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v50 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v49 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881AA0, &qword_22A57BC20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v49 - v11;
  v13 = sub_22A4DB74C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v49 - v20;
  MEMORY[0x28223BE20](v19);
  v56 = sub_22A4DB19C();
  v53 = *(v56 - 8);
  v22 = *(v53 + 64);
  v23 = MEMORY[0x28223BE20](v56);
  v55 = &v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v54 = &v49 - v25;
  v26 = [v2 startDate];
  sub_22A4DB70C();

  v27 = [v2 endDate];
  if (v27)
  {
    v28 = v27;
    sub_22A4DB70C();

    v29 = *(v14 + 32);
    v29(v12, v18, v13);
    (*(v14 + 56))(v12, 0, 1, v13);
    v29(v21, v12, v13);
  }

  else
  {
    (*(v14 + 56))(v12, 1, 1, v13);
    v30 = [v2 startDate];
    sub_22A4DB70C();

    if ((*(v14 + 48))(v12, 1, v13) != 1)
    {
      sub_2296224D4(v12);
    }
  }

  v31 = v54;
  sub_22A4DB17C();
  (*(v53 + 16))(v55, v31, v56);
  v32 = v49;
  v33 = [v49 spiClientIdentifier];
  sub_22A4DB79C();

  sub_22A4DB76C();
  v34 = v52;
  v35 = *(v51 + 8);
  v35(v8, v52);
  v36 = [v32 atHomeLevel] == 2 || objc_msgSend(v32, sel_atHomeLevel) == 3;
  LODWORD(v51) = v36;
  v37 = HMDRequestSourceAsString(*&v2[OBJC_IVAR____TtC13HomeKitDaemon36MatterAccessoryInvokeCommandLogEvent_source]);
  if (!v37)
  {
    sub_22A4DD5EC();
    v37 = sub_22A4DD5AC();
  }

  v38 = v50;
  sub_22A4DB7CC();
  sub_22A4DB76C();
  v35(v38, v34);
  v39 = objc_allocWithZone(MEMORY[0x277CF1980]);
  v40 = v55;
  v41 = sub_22A4DB15C();
  v42 = sub_22A4DD5AC();

  v43 = sub_22A4DD5AC();
  v44 = sub_22A4DD5AC();

  v45 = [v39 initWithDateInterval:v41 homeUniqueIdentifier:v42 homeOccupancy:v51 source:v37 clientName:v43 eventCorrelationIdentifier:v44];

  v46 = *(v53 + 8);
  v47 = v56;
  v46(v40, v56);
  v46(v54, v47);
  return v45;
}

uint64_t sub_229621E84()
{
  ObjectType = swift_getObjectType();
  v2 = sub_22A4DD07C();
  v64 = *(v2 - 8);
  v65 = v2;
  v3 = v64[8];
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v55 - v8;
  MEMORY[0x28223BE20](v7);
  v63 = &v55 - v10;
  v11 = *(v0 + OBJC_IVAR____TtC13HomeKitDaemon36MatterAccessoryInvokeCommandLogEvent_clusterId);
  v12 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
  v13 = [v11 isEqualToNumber_];

  if (!v13)
  {
    sub_229541CB0(ObjectType, &off_283CDE918);
    v39 = sub_22A4DD05C();
    v40 = sub_22A4DDCCC();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_229538000, v39, v40, "Ignoring MatterAccessoryInvokeCommandLogEvent since MTRClusterIDType is not rvcOperationState", v41, 2u);
      MEMORY[0x22AAD4E50](v41, -1, -1);
    }

    (v64[1])(v6, v65);
    return MEMORY[0x277D84F90];
  }

  v14 = *(v0 + OBJC_IVAR____TtC13HomeKitDaemon36MatterAccessoryInvokeCommandLogEvent_commandId);
  v15 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
  LODWORD(v14) = [v14 isEqualToNumber_];

  if (!v14)
  {
    sub_229541CB0(ObjectType, &off_283CDE918);
    v42 = sub_22A4DD05C();
    v43 = sub_22A4DDCCC();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_229538000, v42, v43, "Ignoring MatterAccessoryInvokeCommandLogEvent MTRCommandIDType is not clusterRVCOperationalStateCommandResume", v44, 2u);
      MEMORY[0x22AAD4E50](v44, -1, -1);
    }

    (v64[1])(v9, v65);
    return MEMORY[0x277D84F90];
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v45 = v63;
    sub_229541CB0(ObjectType, &off_283CDE918);
    v46 = sub_22A4DD05C();
    v47 = sub_22A4DDCEC();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_229538000, v46, v47, "Unable to donate to Biome due to nil home", v48, 2u);
      MEMORY[0x22AAD4E50](v48, -1, -1);
    }

    (v64[1])(v45, v65);
    return MEMORY[0x277D84F90];
  }

  v64 = Strong;
  v17 = sub_22962181C(Strong);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_22A576190;
  v66 = *(v0 + OBJC_IVAR____TtC13HomeKitDaemon36MatterAccessoryInvokeCommandLogEvent_nodeId);
  sub_229622480();
  sub_22A4DE00C();
  v18 = [v11 description];
  if (!v18)
  {
    sub_22A4DD5EC();
    v18 = sub_22A4DD5AC();
  }

  v63 = objc_allocWithZone(MEMORY[0x277CF1960]);
  v61 = v17;
  v19 = sub_22A4DD5AC();
  v62 = sub_22A4DD5AC();

  v60 = sub_22A4DD5AC();
  v59 = sub_22A4DD5AC();
  v20 = sub_22A4DD81C();
  v21 = sub_22A4DD5AC();
  v22 = sub_22A4DD5AC();
  v55 = v22;
  v23 = sub_22A4DD5AC();
  v56 = v23;
  v24 = sub_22A4DD5AC();
  v57 = v24;
  v25 = sub_22A4DD5AC();
  v58 = v25;
  v26 = sub_22A4DD81C();
  v27 = sub_22A4DD5AC();
  v53 = v24;
  v54 = v25;
  v51 = v22;
  v52 = v23;
  v49 = v20;
  v50 = v21;
  v28 = v21;
  v29 = v20;
  v30 = v62;
  v31 = v61;
  v32 = v18;
  v33 = v18;
  v35 = v59;
  v34 = v60;
  v63 = [v63 initWithBase:v61 stringAccessoryState:v19 accessoryUniqueIdentifier:v62 serviceUniqueIdentifier:v32 serviceType:v60 characteristicType:v59 serviceGroupUniqueIdentifier:0 zoneUniqueIdentifiers:v49 roomUniqueIdentifier:v50 accessoryName:v51 serviceName:v52 roomName:v53 serviceGroupName:v54 zoneNames:v26 homeName:v27];

  v36 = v65;
  v37 = v64;
  *(v65 + 32) = v63;

  return v36;
}

unint64_t sub_229622480()
{
  result = qword_27D87E190;
  if (!qword_27D87E190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87E190);
  }

  return result;
}

uint64_t sub_2296224D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881AA0, &qword_22A57BC20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22962253C(uint64_t a1, uint64_t a2)
{
  v5 = sub_229773768(v2);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  if (!*(v5 + 16))
  {
    goto LABEL_11;
  }

  v7 = sub_229543DBC(a1, a2);
  if ((v8 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_2295404B0(*(v6 + 56) + 32 * v7, v13);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (!*(v12 + 16) || (v9 = sub_229543DBC(0x726F737365636341, 0xED0000656D614E79), (v10 & 1) == 0))
  {
LABEL_11:

    return 0;
  }

  sub_2295404B0(*(v12 + 56) + 32 * v9, v13);

  if (swift_dynamicCast())
  {
    return v12;
  }

  else
  {
    return 0;
  }
}

uint64_t HMDAccessory.isDemoAccessory.getter()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    return [v1 communicationProtocol] == 3;
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v3 = result;
    v4 = v0;
    if (([v3 variant] & 0x20) != 0)
    {

      return 1;
    }

    else
    {
      v5 = [v4 isCurrentDemoAccessory];

      return v5;
    }
  }

  return result;
}

void *HMDAccessory.isCurrentDemoAccessory.getter()
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    return (([result variant] >> 7) & 1);
  }

  return result;
}

Swift::Void __swiftcall HMDAccessory.renameDemoAccessory(_:)(Swift::String a1)
{
  v2 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  ObjectType = swift_getObjectType();
  v6 = sub_22A4DD26C();
  v20 = *(v6 - 8);
  v7 = *(v20 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22A4DD29C();
  v10 = *(v19 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v19);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [v2 workQueue];
  v15 = swift_allocObject();
  v15[2] = v2;
  v15[3] = countAndFlagsBits;
  v15[4] = object;
  v15[5] = ObjectType;
  aBlock[4] = sub_229628540;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22953E640;
  aBlock[3] = &block_descriptor_8;
  v16 = _Block_copy(aBlock);
  v17 = v2;

  sub_22A4DD28C();
  v21 = MEMORY[0x277D84F90];
  sub_22953E140(&qword_281401CF0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CEA0, &unk_22A577A40);
  sub_229579858(qword_281401CB0, &unk_27D87CEA0, &unk_22A577A40);
  sub_22A4DE03C();
  MEMORY[0x22AAD0F80](0, v13, v9, v16);
  _Block_release(v16);

  (*(v20 + 8))(v9, v6);
  (*(v10 + 8))(v13, v19);
}

void sub_229622AF4(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = sub_22A4DD07C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 name];
  v14 = sub_22A4DD5EC();
  v16 = v15;

  if (v14 == a2 && v16 == a3)
  {
  }

  else
  {
    v18 = sub_22A4DE60C();

    if ((v18 & 1) == 0)
    {
      v45 = v9;
      v19 = [objc_opt_self() allMessageDestinations];
      v20 = [objc_allocWithZone(MEMORY[0x277D0F818]) initWithName:@"HomeUtilAddDemoModeAccessory" destination:v19 payload:0];

      v21 = swift_allocObject();
      v21[2] = a1;
      v21[3] = v20;
      v21[4] = a4;
      aBlock[4] = sub_229628A5C;
      aBlock[5] = v21;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2297986BC;
      aBlock[3] = &block_descriptor_40;
      v22 = _Block_copy(aBlock);
      v23 = a1;
      v24 = v20;

      [v24 setResponseHandler_];
      _Block_release(v22);
      sub_22A4DDBFC();
      v25 = v23;

      v26 = sub_22A4DD05C();
      v27 = sub_22A4DDCCC();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        aBlock[0] = v43;
        *v28 = 136315650;
        v29 = [v25 logIdentifier];
        v30 = sub_22A4DD5EC();
        v44 = v24;
        v31 = v30;
        HIDWORD(v42) = v27;
        v33 = v32;

        v34 = sub_2295A3E30(v31, v33, aBlock);

        *(v28 + 4) = v34;
        *(v28 + 12) = 2080;
        v35 = [v25 name];
        v36 = sub_22A4DD5EC();
        v38 = v37;

        v39 = sub_2295A3E30(v36, v38, aBlock);

        *(v28 + 14) = v39;
        v24 = v44;
        *(v28 + 22) = 2080;
        *(v28 + 24) = sub_2295A3E30(a2, a3, aBlock);
        _os_log_impl(&dword_229538000, v26, BYTE4(v42), "[%s] Updating accessory name: %s to %s", v28, 0x20u);
        v40 = v43;
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v40, -1, -1);
        MEMORY[0x22AAD4E50](v28, -1, -1);
      }

      (*(v45 + 8))(v12, v8);
      v41 = sub_22A4DD5AC();
      [v25 _renameAccessory_resetName_message_];
    }
  }
}

uint64_t sub_229622F68(void *a1, uint64_t a2, void *a3, void *a4)
{
  v8 = sub_22A4DD07C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v53 - v14;
  if (a1)
  {
    v16 = a1;
    sub_22A4DDBFC();
    v17 = a1;
    v18 = a3;
    v19 = a4;
    v20 = sub_22A4DD05C();
    v21 = sub_22A4DDCEC();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v55 = v9;
      v24 = v23;
      v53 = swift_slowAlloc();
      v56 = v53;
      *v22 = 136315650;
      v25 = [v18 logIdentifier];
      v26 = sub_22A4DD5EC();
      v54 = v8;
      v27 = v26;
      v29 = v28;

      v30 = sub_2295A3E30(v27, v29, &v56);

      *(v22 + 4) = v30;
      *(v22 + 12) = 2112;
      *(v22 + 14) = v19;
      *v24 = v19;
      *(v22 + 22) = 2112;
      v31 = a1;
      v32 = v19;
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 24) = v33;
      v24[1] = v33;
      _os_log_impl(&dword_229538000, v20, v21, "%s Responded to %@ with %@", v22, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7D0, &unk_22A578D90);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v24, -1, -1);
      v34 = v53;
      __swift_destroy_boxed_opaque_existential_0(v53);
      MEMORY[0x22AAD4E50](v34, -1, -1);
      MEMORY[0x22AAD4E50](v22, -1, -1);

      return (*(v55 + 8))(v15, v54);
    }

    else
    {

      return (*(v9 + 8))(v15, v8);
    }
  }

  else
  {
    v55 = v9;
    sub_22A4DDBFC();

    v36 = a3;
    v37 = a4;
    v38 = sub_22A4DD05C();
    v39 = sub_22A4DDCCC();

    if (os_log_type_enabled(v38, v39))
    {
      v54 = v8;
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v56 = v53;
      *v40 = 136315650;
      v42 = [v36 logIdentifier];
      v43 = sub_22A4DD5EC();
      v45 = v44;

      v46 = sub_2295A3E30(v43, v45, &v56);

      *(v40 + 4) = v46;
      *(v40 + 12) = 2112;
      *(v40 + 14) = v37;
      *v41 = v37;
      *(v40 + 22) = 2080;
      v47 = v37;
      if (!a2)
      {
        sub_22956AC5C(MEMORY[0x277D84F90]);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
      v48 = sub_22A4DD4AC();
      v50 = v49;

      v51 = sub_2295A3E30(v48, v50, &v56);

      *(v40 + 24) = v51;
      _os_log_impl(&dword_229538000, v38, v39, "%s Responded to %@ with %s", v40, 0x20u);
      sub_22953EAE4(v41, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v41, -1, -1);
      v52 = v53;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v52, -1, -1);
      MEMORY[0x22AAD4E50](v40, -1, -1);

      return (*(v55 + 8))(v13, v54);
    }

    else
    {

      return (*(v55 + 8))(v13, v8);
    }
  }
}

id sub_2296234F4()
{
  v1 = v0;
  v2 = sub_22A4DB7DC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 appData];
  if (!result)
  {
    v8 = [v1 uuid];
    sub_22A4DB79C();

    v9 = objc_allocWithZone(HMDApplicationData);
    v10 = sub_22A4DB77C();
    v11 = [v9 initWithParentUUID_];

    (*(v3 + 8))(v6, v2);
    return v11;
  }

  return result;
}

uint64_t sub_229623634(uint64_t a1, uint64_t a2)
{
  v3[17] = a2;
  v3[18] = v2;
  v3[16] = a1;
  return MEMORY[0x2822009F8](sub_229623658, 0, 0);
}

uint64_t sub_229623658()
{
  v1 = v0[17];
  v2 = v0[18];
  if (v1)
  {
    v3 = v0[16];
  }

  else
  {
    v3 = 0x53555F6E65;
  }

  if (v1)
  {
    v4 = v0[17];
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  v5 = sub_229773768(v2);
  if (!v5)
  {
    goto LABEL_17;
  }

  v6 = v5;
  if (!*(v5 + 16))
  {

    goto LABEL_17;
  }

  v7 = sub_229543DBC(v3, v4);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
LABEL_17:

    goto LABEL_18;
  }

  sub_2295404B0(*(v6 + 56) + 32 * v7, (v0 + 2));

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:
    v23 = 0;
    goto LABEL_19;
  }

  v10 = v0[18];
  v11 = v0[14];
  v0[19] = v11;
  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (v12)
  {
    v14 = v0[16];
    v13 = v0[17];
    v15 = [v12 services];
    sub_229562F68(0, &unk_27D87D360, off_278666310);
    v16 = sub_22A4DD83C();
    v0[20] = v16;

    v0[15] = v16;
    v17 = swift_task_alloc();
    v0[21] = v17;
    *(v17 + 16) = v14;
    *(v17 + 24) = v13;
    v18 = *(MEMORY[0x277D0F010] + 4);
    v19 = swift_task_alloc();
    v0[22] = v19;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D520, &qword_22A578828);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87C3A8, &qword_22A576E88);
    v22 = sub_229579858(&qword_27D87E198, &qword_27D87D520, &qword_22A578828);
    *v19 = v0;
    v19[1] = sub_22962392C;

    return MEMORY[0x282167810](&unk_22A57B350, v17, v20, v21, v22);
  }

  v23 = v11;
LABEL_19:
  v24 = v0[1];

  return v24(v23);
}

uint64_t sub_22962392C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 176);
  v11 = *v2;
  v3[23] = a1;
  v3[24] = v1;

  if (v1)
  {
    v5 = v3[21];
    v6 = v3[19];

    v7 = sub_229623CA4;
  }

  else
  {
    v8 = v3[20];
    v9 = v3[21];

    v7 = sub_229623A64;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

void sub_229623A64()
{
  v19 = v0;
  v1 = 0;
  v2 = v0[23];
  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
  while (v3 != v1)
  {
    if (v1 >= *(v2 + 16))
    {
      __break(1u);
      return;
    }

    v5 = *(v2 + 32 + 8 * v1++);
    if (v5)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_22958A770(0, v4[2] + 1, 1, v4);
      }

      v7 = v4[2];
      v6 = v4[3];
      if (v7 >= v6 >> 1)
      {
        v4 = sub_22958A770((v6 > 1), v7 + 1, 1, v4);
      }

      v4[2] = v7 + 1;
      v4[v7 + 4] = v5;
    }
  }

  v8 = v0[23];

  if (v4[2])
  {
    v9 = v0[19];
    v0[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0);
    v0[6] = v4;
    sub_229543C58(v0 + 6, v0 + 10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = v9;
    v11 = v0[13];
    v12 = __swift_mutable_project_boxed_opaque_existential_0((v0 + 10), v11);
    v13 = *(v11 - 8);
    v14 = *(v13 + 64) + 15;
    v15 = swift_task_alloc();
    (*(v13 + 16))(v15, v12, v11);
    sub_2297FED58(*v15, 0x7365636976726553, 0xE800000000000000, isUniquelyReferenced_nonNull_native, &v18);
    __swift_destroy_boxed_opaque_existential_0(v0 + 10);

    v16 = v18;
  }

  else
  {

    v16 = v0[19];
  }

  v17 = v0[1];

  v17(v16);
}

uint64_t sub_229623CA4()
{
  v1 = v0[20];

  v2 = v0[1];
  v3 = v0[24];

  return v2();
}

uint64_t sub_229623D08(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v7 = *a2;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_229592790;

  return sub_22976F760(a3, a4);
}

uint64_t sub_229623DB4(uint64_t a1)
{
  v2[66] = v1;
  v2[65] = a1;
  v3 = sub_22A4DB7DC();
  v2[67] = v3;
  v4 = *(v3 - 8);
  v2[68] = v4;
  v5 = *(v4 + 64) + 15;
  v2[69] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229623E78, 0, 0);
}

uint64_t sub_229623E78()
{
  v1 = *(v0 + 520);
  if (!*(v1 + 16) || (v2 = *(v0 + 520), v3 = sub_229543DBC(0x726F737365636341, 0xED0000656D614E79), (v4 & 1) == 0))
  {
    v18 = *(v0 + 528);
    *(v0 + 336) = 0u;
    *(v0 + 352) = 0u;
    sub_22953EAE4(v0 + 336, &unk_27D87FC20, &unk_22A578810);
    type metadata accessor for HMError(0);
    *(v0 + 456) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    inited = swift_initStackObject();
    *(inited + 32) = 0x6E6F73616552;
    *(inited + 16) = xmmword_22A576180;
    *(inited + 40) = 0xE600000000000000;
    sub_22A4DE1FC();

    v20 = [v18 shortDescription];
    v21 = sub_22A4DD5EC();
    v23 = v22;

    MEMORY[0x22AAD08C0](v21, v23);

    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 48) = 0xD00000000000001BLL;
    *(inited + 56) = 0x800000022A58DD80;
    sub_22956AD8C(inited);
    swift_setDeallocating();
    sub_22953EAE4(inited + 32, &qword_27D87CDA0, &unk_22A57A930);
    sub_22953E140(&qword_27D87D7C0, type metadata accessor for HMError);
    sub_22A4DB3CC();
    v24 = *(v0 + 448);
    goto LABEL_22;
  }

  v5 = *(v0 + 520);
  sub_2295404B0(*(v5 + 56) + 32 * v3, v0 + 336);
  sub_22953EAE4(v0 + 336, &unk_27D87FC20, &unk_22A578810);
  if (!*(v1 + 16))
  {
    goto LABEL_21;
  }

  v6 = *(v0 + 520);
  v7 = sub_229543DBC(0x696669746E656449, 0xEA00000000007265);
  if ((v8 & 1) == 0)
  {
    goto LABEL_21;
  }

  sub_2295404B0(*(v5 + 56) + 32 * v7, v0 + 368);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_21;
  }

  v9 = *(v0 + 552);
  v10 = *(v0 + 544);
  v11 = *(v0 + 536);
  v13 = *(v0 + 432);
  v12 = *(v0 + 440);
  v14 = [*(v0 + 528) uuid];
  sub_22A4DB79C();

  v15 = sub_22A4DB76C();
  v17 = v16;
  (*(v10 + 8))(v9, v11);
  if (v15 != v13 || v17 != v12)
  {
    v25 = sub_22A4DE60C();

    if (v25)
    {
      goto LABEL_11;
    }

LABEL_21:
    v37 = MEMORY[0x277D837D0];
    v38 = *(v0 + 528);
    type metadata accessor for HMError(0);
    *(v0 + 472) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    v39 = swift_initStackObject();
    *(v39 + 32) = 0x6E6F73616552;
    *(v39 + 16) = xmmword_22A576180;
    *(v39 + 40) = 0xE600000000000000;
    sub_22A4DE1FC();

    v40 = [v38 shortDescription];
    v41 = sub_22A4DD5EC();
    v43 = v42;

    MEMORY[0x22AAD08C0](v41, v43);

    *(v39 + 72) = v37;
    *(v39 + 48) = 0xD00000000000002CLL;
    *(v39 + 56) = 0x800000022A58DDA0;
    sub_22956AD8C(v39);
    swift_setDeallocating();
    sub_22953EAE4(v39 + 32, &qword_27D87CDA0, &unk_22A57A930);
    sub_22953E140(&qword_27D87D7C0, type metadata accessor for HMError);
    sub_22A4DB3CC();
    v44 = *(v0 + 464);
    goto LABEL_22;
  }

LABEL_11:
  v26 = *(v0 + 528);
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    goto LABEL_28;
  }

  if (*(v1 + 16))
  {
    v27 = *(v0 + 520);
    v28 = sub_229543DBC(0x7365636976726553, 0xE800000000000000);
    if (v29)
    {
      sub_2295404B0(*(v5 + 56) + 32 * v28, v0 + 400);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0);
      if (swift_dynamicCast())
      {
        result = *(v0 + 496);
        *(v0 + 560) = result;
        v31 = *(result + 16);
        *(v0 + 568) = v31;
        if (v31)
        {
          *(v0 + 576) = 0;
          if (!*(result + 16))
          {
            __break(1u);
            return result;
          }

          v32 = *(v0 + 528);
          v33 = *(result + 32);
          *(v0 + 584) = v33;

          v35 = sub_229624C90(v34);
          *(v0 + 592) = v35;
          if (v35)
          {
            v36 = swift_task_alloc();
            *(v0 + 600) = v36;
            *v36 = v0;
            v36[1] = sub_2296247FC;

            return sub_22976F8D0(v33);
          }

          v55 = *(v0 + 560);
          v56 = *(v0 + 528);

          type metadata accessor for HMError(0);
          *(v0 + 512) = 3;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
          v57 = swift_initStackObject();
          *(v57 + 32) = 0x6E6F73616552;
          *(v57 + 16) = xmmword_22A576180;
          *(v57 + 40) = 0xE600000000000000;
          sub_22A4DE1FC();

          v58 = [v56 shortDescription];
          v59 = sub_22A4DD5EC();
          v61 = v60;

          MEMORY[0x22AAD08C0](v59, v61);

          *(v57 + 72) = MEMORY[0x277D837D0];
          *(v57 + 48) = 0xD00000000000002ALL;
          *(v57 + 56) = 0x800000022A58DE00;
          sub_22956AD8C(v57);
          swift_setDeallocating();
          sub_22953EAE4(v57 + 32, &qword_27D87CDA0, &unk_22A57A930);
          sub_22953E140(&qword_27D87D7C0, type metadata accessor for HMError);
          sub_22A4DB3CC();
          v62 = *(v0 + 504);
          goto LABEL_22;
        }

LABEL_28:
        v54 = *(v0 + 552);

        v46 = *(v0 + 8);
        goto LABEL_23;
      }
    }
  }

  v47 = *(v0 + 528);
  type metadata accessor for HMError(0);
  *(v0 + 488) = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
  v48 = swift_initStackObject();
  *(v48 + 32) = 0x6E6F73616552;
  *(v48 + 16) = xmmword_22A576180;
  *(v48 + 40) = 0xE600000000000000;
  sub_22A4DE1FC();

  v49 = [v47 shortDescription];
  v50 = sub_22A4DD5EC();
  v52 = v51;

  MEMORY[0x22AAD08C0](v50, v52);

  *(v48 + 72) = MEMORY[0x277D837D0];
  *(v48 + 48) = 0xD000000000000027;
  *(v48 + 56) = 0x800000022A58DDD0;
  sub_22956AD8C(v48);
  swift_setDeallocating();
  sub_22953EAE4(v48 + 32, &qword_27D87CDA0, &unk_22A57A930);
  sub_22953E140(&qword_27D87D7C0, type metadata accessor for HMError);
  sub_22A4DB3CC();
  v53 = *(v0 + 480);
LABEL_22:
  swift_willThrow();
  v45 = *(v0 + 552);

  v46 = *(v0 + 8);
LABEL_23:

  return v46();
}

uint64_t sub_2296247FC()
{
  v2 = *v1;
  v3 = *(*v1 + 600);
  v8 = *v1;
  *(*v1 + 608) = v0;

  if (v0)
  {
    v4 = *(v2 + 584);
    v5 = *(v2 + 560);

    v6 = sub_229624C24;
  }

  else
  {
    v6 = sub_229624924;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

void sub_229624924()
{
  v1 = v0[74];
  v2 = v0[73];
  v3 = v0[72];
  v4 = v0[71];

  if (v3 + 1 == v4)
  {
    v5 = v0[70];

    v6 = v0[69];

    v7 = v0[1];
LABEL_9:

    v7();
    return;
  }

  v8 = v0[72] + 1;
  v0[72] = v8;
  v9 = v0[70];
  if (v8 >= *(v9 + 16))
  {
    __break(1u);
    return;
  }

  v10 = v0[66];
  v11 = *(v9 + 8 * v8 + 32);
  v0[73] = v11;

  v13 = sub_229624C90(v12);
  v0[74] = v13;
  if (!v13)
  {
    v15 = v0[70];
    v16 = v0[66];

    type metadata accessor for HMError(0);
    v0[64] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    inited = swift_initStackObject();
    *(inited + 32) = 0x6E6F73616552;
    *(inited + 16) = xmmword_22A576180;
    *(inited + 40) = 0xE600000000000000;
    sub_22A4DE1FC();

    v18 = [v16 shortDescription];
    v19 = sub_22A4DD5EC();
    v21 = v20;

    MEMORY[0x22AAD08C0](v19, v21);

    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 48) = 0xD00000000000002ALL;
    *(inited + 56) = 0x800000022A58DE00;
    sub_22956AD8C(inited);
    swift_setDeallocating();
    sub_22953EAE4(inited + 32, &qword_27D87CDA0, &unk_22A57A930);
    sub_22953E140(&qword_27D87D7C0, type metadata accessor for HMError);
    sub_22A4DB3CC();
    v22 = v0[63];
    swift_willThrow();
    v23 = v0[69];

    v7 = v0[1];
    goto LABEL_9;
  }

  v14 = swift_task_alloc();
  v0[75] = v14;
  *v14 = v0;
  v14[1] = sub_2296247FC;

  sub_22976F8D0(v11);
}

uint64_t sub_229624C24()
{
  v1 = *(v0 + 608);
  v2 = *(v0 + 552);

  v3 = *(v0 + 8);

  return v3();
}

void *sub_229624C90(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v19[-v4];
  v6 = sub_22A4DB7DC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(a1 + 16))
  {
    v11 = sub_229543DBC(0x696669746E656449, 0xEA00000000007265);
    if (v12)
    {
      sub_2295404B0(*(a1 + 56) + 32 * v11, v20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
      if (swift_dynamicCast())
      {
        sub_22A4DB75C();

        if ((*(v7 + 48))(v5, 1, v6) == 1)
        {
          sub_22953EAE4(v5, &unk_27D87D2A0, &unk_22A578BD0);
        }

        else
        {
          (*(v7 + 32))(v10, v5, v6);
          objc_opt_self();
          v13 = swift_dynamicCastObjCClass();
          if (v13)
          {
            v14 = [v13 services];
            sub_229562F68(0, &unk_27D87D360, off_278666310);
            v15 = sub_22A4DD83C();

            MEMORY[0x28223BE20](v16);
            *&v19[-16] = v10;
            v17 = sub_22968FFF0(sub_2296285FC, &v19[-32], v15);

            if (v17)
            {
              (*(v7 + 8))(v10, v6);
              return v17;
            }
          }

          (*(v7 + 8))(v10, v6);
        }
      }
    }
  }

  return 0;
}

void *sub_229624F78()
{
  v1 = v0;
  v2 = sub_22A4DB7DC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 name];
  v8 = sub_22A4DD5EC();
  v10 = v9;

  v11 = MEMORY[0x277D837D0];
  v56 = MEMORY[0x277D837D0];
  v54 = v8;
  v55 = v10;
  sub_229543C58(&v54, v52);
  v12 = MEMORY[0x277D84F98];
  LOBYTE(v8) = swift_isUniquelyReferenced_nonNull_native();
  v51 = v12;
  v13 = v53;
  v14 = __swift_mutable_project_boxed_opaque_existential_0(v52, v53);
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = (&v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  sub_2297FE940(*v17, v17[1], 0x726F737365636341, 0xED0000656D614E79, v8, &v51);
  __swift_destroy_boxed_opaque_existential_0(v52);
  v19 = v51;
  v20 = [v1 uuid];
  sub_22A4DB79C();

  v21 = sub_22A4DB76C();
  v23 = v22;
  (*(v3 + 8))(v6, v2);
  v56 = v11;
  v54 = v21;
  v55 = v23;
  sub_229543C58(&v54, v52);
  LOBYTE(v6) = swift_isUniquelyReferenced_nonNull_native();
  v51 = v19;
  v24 = v53;
  v25 = __swift_mutable_project_boxed_opaque_existential_0(v52, v53);
  v26 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v28 = (&v50 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28);
  sub_2297FE940(*v28, v28[1], 0x696669746E656449, 0xEA00000000007265, v6, &v51);
  __swift_destroy_boxed_opaque_existential_0(v52);
  v30 = v51;
  objc_opt_self();
  v31 = swift_dynamicCastObjCClass();
  if (!v31)
  {
    return v30;
  }

  v32 = [v31 services];
  sub_229562F68(0, &unk_27D87D360, off_278666310);
  v33 = sub_22A4DD83C();

  if (!(v33 >> 62))
  {
    v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v34)
    {
      goto LABEL_4;
    }

LABEL_14:

    v37 = MEMORY[0x277D84F90];
LABEL_15:
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0);
    v54 = v37;
    sub_229543C58(&v54, v52);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v51 = v30;
    v44 = v53;
    v45 = __swift_mutable_project_boxed_opaque_existential_0(v52, v53);
    v46 = *(*(v44 - 8) + 64);
    MEMORY[0x28223BE20](v45);
    v48 = (&v50 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v49 + 16))(v48);
    sub_2297FED58(*v48, 0x7365636976726553, 0xE800000000000000, isUniquelyReferenced_nonNull_native, &v51);
    __swift_destroy_boxed_opaque_existential_0(v52);
    return v51;
  }

  v34 = sub_22A4DE0EC();
  if (!v34)
  {
    goto LABEL_14;
  }

LABEL_4:
  v54 = MEMORY[0x277D84F90];
  result = sub_229583714(0, v34 & ~(v34 >> 63), 0);
  if ((v34 & 0x8000000000000000) == 0)
  {
    v36 = 0;
    v37 = v54;
    do
    {
      if ((v33 & 0xC000000000000001) != 0)
      {
        v38 = MEMORY[0x22AAD13F0](v36, v33);
      }

      else
      {
        v38 = *(v33 + 8 * v36 + 32);
      }

      v39 = v38;
      v40 = sub_229770AB8();

      v54 = v37;
      v42 = *(v37 + 16);
      v41 = *(v37 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_229583714((v41 > 1), v42 + 1, 1);
        v37 = v54;
      }

      ++v36;
      *(v37 + 16) = v42 + 1;
      *(v37 + 8 * v42 + 32) = v40;
    }

    while (v34 != v36);

    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_229625510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[18] = a4;
  v5[19] = v4;
  v5[16] = a2;
  v5[17] = a3;
  v5[15] = a1;
  v8 = swift_task_alloc();
  v5[20] = v8;
  *v8 = v5;
  v8[1] = sub_2296255C0;

  return sub_229623634(a3, a4);
}

uint64_t sub_2296255C0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 160);
  v7 = *v2;
  *(v3 + 168) = a1;
  *(v3 + 176) = v1;

  if (v1)
  {
    v5 = sub_229625A34;
  }

  else
  {
    v5 = sub_2296256D4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2296256D4()
{
  v20 = v0;
  if (*(v0 + 168))
  {
    v1 = *(v0 + 168);
  }

  else
  {
    v2 = *(v0 + 152);
    v1 = sub_229624F78();
  }

  v3 = *(v0 + 176);
  v5 = *(v0 + 120);
  v4 = *(v0 + 128);

  v6 = sub_2296286A4(v1, sub_229628A88);
  swift_bridgeObjectRelease_n();
  *(v0 + 112) = v6;
  sub_2297FCFD4(0x7365636976726553, 0xE800000000000000, (v0 + 16));
  sub_22953EAE4(v0 + 16, &unk_27D87FC20, &unk_22A578810);
  *(v0 + 72) = MEMORY[0x277D837D0];
  *(v0 + 48) = v5;
  *(v0 + 56) = v4;
  sub_229543C58(v0 + 48, v0 + 80);

  v7 = *(v0 + 112);
  LOBYTE(v4) = swift_isUniquelyReferenced_nonNull_native();
  v19 = v7;
  v8 = *(v0 + 104);
  v9 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 80, v8);
  v10 = *(v8 - 8);
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  (*(v10 + 16))(v12, v9, v8);
  sub_2297FE940(*v12, v12[1], 0x726F737365636341, 0xED0000656D614E79, v4, &v19);
  __swift_destroy_boxed_opaque_existential_0((v0 + 80));

  v13 = v19;
  *(v0 + 184) = v19;
  v14 = swift_task_alloc();
  *(v0 + 192) = v14;
  *v14 = v0;
  v14[1] = sub_229625918;
  v15 = *(v0 + 144);
  v16 = *(v0 + 152);
  v17 = *(v0 + 136);

  return sub_229625AB0(v13, v17, v15);
}

uint64_t sub_229625918()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v7 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v4 = sub_229625A4C;
  }

  else
  {
    v5 = *(v2 + 184);

    v4 = sub_229566EE4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_229625A4C()
{
  v1 = v0[23];

  v2 = v0[25];
  v3 = v0[1];

  return v3();
}

uint64_t sub_229625AB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[38] = a3;
  v4[39] = v3;
  v4[36] = a1;
  v4[37] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0) - 8) + 64) + 15;
  v4[40] = swift_task_alloc();
  v6 = sub_22A4DB7DC();
  v4[41] = v6;
  v7 = *(v6 - 8);
  v4[42] = v7;
  v8 = *(v7 + 64) + 15;
  v4[43] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229625BAC, 0, 0);
}

uint64_t sub_229625BAC()
{
  if (!*(*(v0 + 288) + 16) || (v1 = sub_229543DBC(0x7365636976726553, 0xE800000000000000), (v2 & 1) == 0) || (sub_2295404B0(*(*(v0 + 288) + 56) + 32 * v1, v0 + 96), *(v0 + 352) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0), (swift_dynamicCast() & 1) == 0))
  {
LABEL_19:
    v29 = *(v0 + 312);
    *(v0 + 272) = sub_2296286A4(*(v0 + 288), sub_22959E60C);
    sub_2297FCFD4(0x7365636976726553, 0xE800000000000000, (v0 + 128));
    sub_22953EAE4(v0 + 128, &unk_27D87FC20, &unk_22A578810);
    sub_229562F68(0, &qword_27D87D4D8, off_278666048);
    *(v0 + 40) = sub_229562F68(0, &qword_281401C30, off_278665FE8);
    *(v0 + 48) = &off_283CDE980;
    *(v0 + 16) = v29;
    v30 = *(v0 + 272);
    *(v0 + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
    *(v0 + 160) = v30;
    v31 = v29;
    v32 = swift_task_alloc();
    *(v0 + 416) = v32;
    *v32 = v0;
    v32[1] = sub_229626744;
    v33 = *(v0 + 296);
    v34 = *(v0 + 304);
    v35 = v0 + 16;
    v36 = v0 + 160;
LABEL_20:

    return sub_229709F5C(v35, v36, v33, v34);
  }

  result = *(v0 + 280);
  *(v0 + 360) = result;
  v4 = *(result + 16);
  *(v0 + 368) = v4;
  if (!v4)
  {

    goto LABEL_19;
  }

  v5 = 0;
  while (1)
  {
    *(v0 + 376) = v5;
    v6 = *(v0 + 360);
    if (v5 >= *(v6 + 16))
    {
      break;
    }

    v7 = *(v6 + 8 * v5 + 32);
    *(v0 + 384) = v7;
    if (*(v7 + 16))
    {

      v8 = sub_229543DBC(0x696669746E656449, 0xEA00000000007265);
      if (v9 & 1) != 0 && (v10 = *(v0 + 352), sub_2295404B0(*(v7 + 56) + 32 * v8, v0 + 192), (swift_dynamicCast()))
      {
        v12 = *(v0 + 328);
        v11 = *(v0 + 336);
        v13 = *(v0 + 320);
        v14 = *(v0 + 256);
        v15 = *(v0 + 264);
        sub_22A4DB75C();

        if ((*(v11 + 48))(v13, 1, v12) == 1)
        {
          v16 = *(v0 + 320);

          result = sub_22953EAE4(v16, &unk_27D87D2A0, &unk_22A578BD0);
        }

        else
        {
          v17 = *(v0 + 312);
          (*(*(v0 + 336) + 32))(*(v0 + 344), *(v0 + 320), *(v0 + 328));
          objc_opt_self();
          v18 = swift_dynamicCastObjCClass();
          if (v18)
          {
            v19 = *(v0 + 344);
            v20 = [v18 services];
            v21 = sub_229562F68(0, &unk_27D87D360, off_278666310);
            v22 = sub_22A4DD83C();

            v23 = swift_task_alloc();
            *(v23 + 16) = v19;
            v24 = sub_22968FFF0(sub_229628A6C, v23, v22);
            *(v0 + 392) = v24;

            if (v24)
            {
              (*(*(v0 + 336) + 8))(*(v0 + 344), *(v0 + 328));
              v37 = sub_2297728CC(v7);
              sub_229562F68(0, &qword_27D87D4D8, off_278666048);
              *(v0 + 80) = v21;
              *(v0 + 88) = &off_283CE3BD8;
              *(v0 + 56) = v24;
              *(v0 + 248) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
              *(v0 + 224) = v37;
              v38 = v24;
              v39 = swift_task_alloc();
              *(v0 + 400) = v39;
              *v39 = v0;
              v39[1] = sub_2296260CC;
              v33 = *(v0 + 296);
              v34 = *(v0 + 304);
              v35 = v0 + 56;
              v36 = v0 + 224;
              goto LABEL_20;
            }
          }

          v26 = *(v0 + 336);
          v25 = *(v0 + 344);
          v27 = *(v0 + 328);

          result = (*(v26 + 8))(v25, v27);
        }
      }

      else
      {
      }
    }

    v5 = *(v0 + 376) + 1;
    if (v5 == *(v0 + 368))
    {
      v28 = *(v0 + 360);

      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2296260CC()
{
  v2 = *v1;
  v3 = *(*v1 + 400);
  v7 = *v1;
  *(*v1 + 408) = v0;

  if (v0)
  {
    v4 = *(v2 + 360);

    v5 = sub_2296266A8;
  }

  else
  {
    sub_22953EAE4(v2 + 224, &unk_27D87FC20, &unk_22A578810);
    __swift_destroy_boxed_opaque_existential_0((v2 + 56));
    v5 = sub_229626208;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_229626208()
{
  v2 = *(v0 + 384);
  v3 = *(v0 + 392);

  v4 = *(v0 + 408);
  v5 = *(v0 + 376) + 1;
  if (v5 == *(v0 + 368))
  {
LABEL_2:
    v6 = *(v0 + 360);

    v7 = *(v0 + 312);
    *(v0 + 272) = sub_2296286A4(*(v0 + 288), sub_22959E60C);
    sub_2297FCFD4(0x7365636976726553, 0xE800000000000000, (v0 + 128));
    sub_22953EAE4(v0 + 128, &unk_27D87FC20, &unk_22A578810);
    sub_229562F68(0, &qword_27D87D4D8, off_278666048);
    *(v0 + 40) = sub_229562F68(0, &qword_281401C30, off_278665FE8);
    *(v0 + 48) = &off_283CDE980;
    *(v0 + 16) = v7;
    v8 = *(v0 + 272);
    *(v0 + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
    *(v0 + 160) = v8;
    v9 = v7;
    v10 = swift_task_alloc();
    *(v0 + 416) = v10;
    *v10 = v0;
    v10[1] = sub_229626744;
    v11 = *(v0 + 296);
    v12 = *(v0 + 304);
    v13 = v0 + 16;
    v14 = v0 + 160;
  }

  else
  {
    while (1)
    {
      *(v0 + 376) = v5;
      v16 = *(v0 + 360);
      if (v5 >= *(v16 + 16))
      {
        break;
      }

      v3 = *(v16 + 8 * v5 + 32);
      *(v0 + 384) = v3;
      if (v3[2])
      {

        v17 = sub_229543DBC(0x696669746E656449, 0xEA00000000007265);
        if (v18 & 1) != 0 && (v1 = *(v0 + 352), sub_2295404B0(v3[7] + 32 * v17, v0 + 192), (swift_dynamicCast()))
        {
          v20 = *(v0 + 328);
          v19 = *(v0 + 336);
          v21 = *(v0 + 320);
          v22 = *(v0 + 256);
          v23 = *(v0 + 264);
          sub_22A4DB75C();

          if ((*(v19 + 48))(v21, 1, v20) == 1)
          {
            v1 = *(v0 + 320);

            sub_22953EAE4(v1, &unk_27D87D2A0, &unk_22A578BD0);
          }

          else
          {
            v24 = *(v0 + 312);
            (*(*(v0 + 336) + 32))(*(v0 + 344), *(v0 + 320), *(v0 + 328));
            objc_opt_self();
            v25 = swift_dynamicCastObjCClass();
            if (v25)
            {
              v26 = *(v0 + 344);
              v27 = [v25 services];
              v35 = sub_229562F68(0, &unk_27D87D360, off_278666310);
              v28 = sub_22A4DD83C();

              v29 = swift_task_alloc();
              *(v29 + 16) = v26;
              v1 = sub_22968FFF0(sub_229628A6C, v29, v28);
              *(v0 + 392) = v1;

              if (v1)
              {
                goto LABEL_19;
              }
            }

            v30 = *(v0 + 336);
            v1 = *(v0 + 344);
            v31 = *(v0 + 328);

            (*(v30 + 8))(v1, v31);
          }
        }

        else
        {
        }
      }

      v5 = *(v0 + 376) + 1;
      if (v5 == *(v0 + 368))
      {
        goto LABEL_2;
      }
    }

    __break(1u);
LABEL_19:
    (*(*(v0 + 336) + 8))(*(v0 + 344), *(v0 + 328));
    v32 = sub_2297728CC(v3);
    sub_229562F68(0, &qword_27D87D4D8, off_278666048);
    *(v0 + 80) = v35;
    *(v0 + 88) = &off_283CE3BD8;
    *(v0 + 56) = v1;
    *(v0 + 248) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
    *(v0 + 224) = v32;
    v33 = v1;
    v34 = swift_task_alloc();
    *(v0 + 400) = v34;
    *v34 = v0;
    v34[1] = sub_2296260CC;
    v11 = *(v0 + 296);
    v12 = *(v0 + 304);
    v13 = v0 + 56;
    v14 = v0 + 224;
  }

  return sub_229709F5C(v13, v14, v11, v12);
}

uint64_t sub_2296266A8()
{
  v1 = v0[48];
  v2 = v0[49];

  sub_22953EAE4((v0 + 28), &unk_27D87FC20, &unk_22A578810);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);

  v3 = v0[51];
  v4 = v0[43];
  v5 = v0[40];

  v6 = v0[1];

  return v6();
}

uint64_t sub_229626744()
{
  v2 = *v1;
  v3 = *(*v1 + 416);
  v6 = *v1;
  *(*v1 + 424) = v0;

  if (v0)
  {
    v4 = sub_2296268E8;
  }

  else
  {
    sub_22953EAE4(v2 + 160, &unk_27D87FC20, &unk_22A578810);
    __swift_destroy_boxed_opaque_existential_0((v2 + 16));
    v4 = sub_229626878;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_229626878()
{
  v1 = v0[43];
  v2 = v0[40];

  v3 = v0[1];

  return v3();
}

uint64_t sub_2296268E8()
{
  sub_22953EAE4((v0 + 20), &unk_27D87FC20, &unk_22A578810);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[53];
  v2 = v0[43];
  v3 = v0[40];

  v4 = v0[1];

  return v4();
}

uint64_t sub_229626978(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v6 = swift_task_alloc();
  v3[11] = v6;
  *v6 = v3;
  v6[1] = sub_229626A24;

  return sub_229623634(a1, a2);
}

uint64_t sub_229626A24(uint64_t a1)
{
  v3 = *(*v2 + 88);
  v4 = *v2;
  *(v4 + 96) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_229626B58, 0, 0);
  }
}

uint64_t sub_229626B58()
{
  if (*(v0 + 96))
  {
    v1 = *(v0 + 80);
    v2 = sub_22962253C(*(v0 + 64), *(v0 + 72));
    *(v0 + 104) = v3;
    if (v3)
    {
      v4 = v2;
      v5 = v3;
      v6 = [*(v0 + 80) name];
      v7 = sub_22A4DD5EC();
      v9 = v8;

      if (v7 == v4 && v5 == v9)
      {
      }

      else
      {
        v11 = sub_22A4DE60C();

        if ((v11 & 1) == 0)
        {
          v12 = swift_task_alloc();
          *(v0 + 112) = v12;
          *v12 = v0;
          v12[1] = sub_229626E48;
          v13 = *(v0 + 80);

          return sub_2295A7CFC(v4, v5);
        }
      }
    }

    if (*(*(v0 + 96) + 16) && (v15 = sub_229543DBC(0x7365636976726553, 0xE800000000000000), (v16 & 1) != 0))
    {
      sub_2295404B0(*(*(v0 + 96) + 56) + 32 * v15, v0 + 16);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0);
      if (swift_dynamicCast())
      {
        v19 = *(v0 + 72);
        v18 = *(v0 + 80);
        v20 = *(v0 + 64);
        v21 = *(v0 + 48);
        *(v0 + 128) = v21;
        *(v0 + 56) = v21;
        v22 = swift_task_alloc();
        *(v0 + 136) = v22;
        v22[2] = v18;
        v22[3] = v20;
        v22[4] = v19;
        v23 = *(MEMORY[0x277D0F008] + 4);
        v24 = swift_task_alloc();
        *(v0 + 144) = v24;
        v25 = sub_229579858(&qword_27D87D570, &unk_27D881E90, &qword_22A5788A0);
        *v24 = v0;
        v24[1] = sub_229627148;

        return MEMORY[0x282167808](&unk_22A57B340, v22, v17, v25);
      }
    }

    else
    {
    }
  }

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_229626E48()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_229627290;
  }

  else
  {
    v3 = sub_229626F5C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_229626F5C()
{
  v1 = v0[13];

  if (*(v0[12] + 16) && (v2 = sub_229543DBC(0x7365636976726553, 0xE800000000000000), (v3 & 1) != 0))
  {
    sub_2295404B0(*(v0[12] + 56) + 32 * v2, (v0 + 2));

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0);
    if (swift_dynamicCast())
    {
      v6 = v0[9];
      v5 = v0[10];
      v7 = v0[8];
      v8 = v0[6];
      v0[16] = v8;
      v0[7] = v8;
      v9 = swift_task_alloc();
      v0[17] = v9;
      v9[2] = v5;
      v9[3] = v7;
      v9[4] = v6;
      v10 = *(MEMORY[0x277D0F008] + 4);
      v11 = swift_task_alloc();
      v0[18] = v11;
      v12 = sub_229579858(&qword_27D87D570, &unk_27D881E90, &qword_22A5788A0);
      *v11 = v0;
      v11[1] = sub_229627148;

      return MEMORY[0x282167808](&unk_22A57B340, v9, v4, v12);
    }
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_229627148()
{
  v2 = *(*v1 + 144);
  v3 = *v1;
  v3[19] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2296272FC, 0, 0);
  }

  else
  {
    v4 = v3[16];
    v5 = v3[17];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_229627290()
{
  v2 = v0[12];
  v1 = v0[13];

  v3 = v0[15];
  v4 = v0[1];

  return v4();
}

uint64_t sub_2296272FC()
{
  v1 = v0[16];
  v2 = v0[17];

  v3 = v0[19];
  v4 = v0[1];

  return v4();
}

uint64_t sub_229627368(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a2;
  v4[3] = a3;
  v5 = *a1;
  v4[4] = a4;
  v4[5] = v5;
  return MEMORY[0x2822009F8](sub_229627390, 0, 0);
}

uint64_t sub_229627390()
{
  v1 = v0[2];
  v2 = sub_229624C90(v0[5]);
  v0[6] = v2;
  if (v2)
  {
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_229598D74;
    v5 = v0[3];
    v4 = v0[4];

    return sub_229771444(v5, v4);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

void sub_22962748C()
{
  v1 = v0[12];
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = [v2 services];
    v0[13] = sub_229562F68(0, &unk_27D87D360, off_278666310);
    v4 = sub_22A4DD83C();
    v0[14] = v4;

    if (v4 >> 62)
    {
      v19 = sub_22A4DE0EC();
      v0[15] = v19;
      if (v19)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v0[15] = v5;
      if (v5)
      {
LABEL_4:
        v6 = v0[14];
        if ((v6 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x22AAD13F0](0);
        }

        else
        {
          if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v7 = *(v6 + 32);
        }

        v0[16] = v7;
        v0[17] = 1;
        v8 = sub_22976ED74(0x53555F6E65, 0xE500000000000000);
        v0[18] = v9;
        if (v9)
        {
          v10 = v8;
          v11 = v9;
          v12 = swift_task_alloc();
          v0[19] = v12;
          *v12 = v0;
          v12[1] = sub_229627810;

          sub_2298079DC(v10, v11);
          return;
        }

        v13 = v0[16];
        v14 = v0[13];
        sub_229562F68(0, &qword_27D87D4D8, off_278666048);
        v0[10] = v14;
        v0[11] = &off_283CE3BD8;
        v0[7] = v13;
        v15 = (v0 + 7);
        v16 = v13;
        v17 = swift_task_alloc();
        v0[21] = v17;
        *v17 = v0;
        v18 = sub_229627A80;
        goto LABEL_20;
      }
    }
  }

  v20 = v0[12];
  v21 = sub_22962253C(0x53555F6E65, 0xE500000000000000);
  v0[23] = v22;
  if (!v22)
  {
    v27 = v0[12];
    sub_229562F68(0, &qword_27D87D4D8, off_278666048);
    v0[5] = sub_229562F68(0, &qword_281401C30, off_278665FE8);
    v0[6] = &off_283CDE980;
    v0[2] = v27;
    v15 = (v0 + 2);
    v28 = v27;
    v17 = swift_task_alloc();
    v0[26] = v17;
    *v17 = v0;
    v18 = sub_229628128;
LABEL_20:
    v17[1] = v18;

    sub_22970A4FC(v15, 0);
    return;
  }

  v23 = v21;
  v24 = v22;
  v25 = swift_task_alloc();
  v0[24] = v25;
  *v25 = v0;
  v25[1] = sub_229627F1C;
  v26 = v0[12];

  sub_2295A7CFC(v23, v24);
}

uint64_t sub_229627810()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v8 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = *(v2 + 144);
    v5 = *(v2 + 112);

    v6 = sub_229627A1C;
  }

  else
  {
    v6 = sub_229627938;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_229627938()
{
  v1 = v0[18];

  v2 = v0[16];
  v3 = v0[13];
  sub_229562F68(0, &qword_27D87D4D8, off_278666048);
  v0[10] = v3;
  v0[11] = &off_283CE3BD8;
  v0[7] = v2;
  v4 = v2;
  v5 = swift_task_alloc();
  v0[21] = v5;
  *v5 = v0;
  v5[1] = sub_229627A80;

  return sub_22970A4FC((v0 + 7), 0);
}

uint64_t sub_229627A1C()
{
  v1 = *(v0 + 160);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_229627A80()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v7 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = *(v2 + 112);

    v5 = sub_229627EB0;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 56));
    v5 = sub_229627BA4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

void sub_229627BA4()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 120);

  if (v1 == v2)
  {
    v3 = *(v0 + 112);

    v4 = *(v0 + 96);
    v5 = sub_22962253C(0x53555F6E65, 0xE500000000000000);
    *(v0 + 184) = v6;
    if (v6)
    {
      v7 = v5;
      v8 = v6;
      v9 = swift_task_alloc();
      *(v0 + 192) = v9;
      *v9 = v0;
      v9[1] = sub_229627F1C;
      v10 = *(v0 + 96);

      sub_2295A7CFC(v7, v8);
      return;
    }

    v14 = *(v0 + 96);
    sub_229562F68(0, &qword_27D87D4D8, off_278666048);
    *(v0 + 40) = sub_229562F68(0, &qword_281401C30, off_278665FE8);
    *(v0 + 48) = &off_283CDE980;
    *(v0 + 16) = v14;
    v15 = v0 + 16;
    v16 = v14;
    v17 = swift_task_alloc();
    *(v0 + 208) = v17;
    *v17 = v0;
    v18 = sub_229628128;
    goto LABEL_17;
  }

  v11 = *(v0 + 136);
  v12 = *(v0 + 112);
  if ((v12 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x22AAD13F0](*(v0 + 136));
  }

  else
  {
    if (v11 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_21:
      __break(1u);
      return;
    }

    v13 = *(v12 + 8 * v11 + 32);
  }

  *(v0 + 128) = v13;
  *(v0 + 136) = v11 + 1;
  if (__OFADD__(v11, 1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v19 = sub_22976ED74(0x53555F6E65, 0xE500000000000000);
  *(v0 + 144) = v20;
  if (!v20)
  {
    v24 = *(v0 + 128);
    v25 = *(v0 + 104);
    sub_229562F68(0, &qword_27D87D4D8, off_278666048);
    *(v0 + 80) = v25;
    *(v0 + 88) = &off_283CE3BD8;
    *(v0 + 56) = v24;
    v15 = v0 + 56;
    v26 = v24;
    v17 = swift_task_alloc();
    *(v0 + 168) = v17;
    *v17 = v0;
    v18 = sub_229627A80;
LABEL_17:
    v17[1] = v18;

    sub_22970A4FC(v15, 0);
    return;
  }

  v21 = v19;
  v22 = v20;
  v23 = swift_task_alloc();
  *(v0 + 152) = v23;
  *v23 = v0;
  v23[1] = sub_229627810;

  sub_2298079DC(v21, v22);
}

uint64_t sub_229627EB0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  v1 = *(v0 + 176);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_229627F1C()
{
  v2 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = sub_229628264;
  }

  else
  {
    v3 = sub_229628030;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_229628030()
{
  v1 = v0[23];

  v2 = v0[12];
  sub_229562F68(0, &qword_27D87D4D8, off_278666048);
  v0[5] = sub_229562F68(0, &qword_281401C30, off_278665FE8);
  v0[6] = &off_283CDE980;
  v0[2] = v2;
  v3 = v2;
  v4 = swift_task_alloc();
  v0[26] = v4;
  *v4 = v0;
  v4[1] = sub_229628128;

  return sub_22970A4FC((v0 + 2), 0);
}

uint64_t sub_229628128()
{
  v2 = *(*v1 + 208);
  v3 = *v1;
  v3[27] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2296282C8, 0, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v3 + 2);
    v4 = v3[1];

    return v4();
  }
}

uint64_t sub_229628264()
{
  v1 = v0[23];

  v2 = v0[25];
  v3 = v0[1];

  return v3();
}

uint64_t sub_2296282C8()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[27];
  v2 = v0[1];

  return v2();
}

uint64_t sub_22962832C(id *a1)
{
  v2 = sub_22A4DB7DC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 uuid];
  sub_22A4DB79C();

  v8 = sub_22A4DB78C();
  (*(v3 + 8))(v6, v2);
  return v8 & 1;
}

uint64_t sub_22962845C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_229569B30;

  return sub_229625510(a1, a2, a3, a4);
}

uint64_t sub_22962854C(uint64_t *a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_229569B30;

  return sub_229627368(a1, v4, v5, v6);
}

unint64_t *sub_22962861C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_229628810(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_2296286A4(uint64_t a1, uint64_t (*a2)(void *))
{
  v4 = a1;
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1);
    v8 = v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_229628810(v8, v6, v4, a2);
    if (v2)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v11 = swift_slowAlloc();
  v12 = sub_22962861C(v11, v6, v4, a2);
  result = MEMORY[0x22AAD4E50](v11, -1, -1);
  if (!v2)
  {
    result = v12;
  }

LABEL_4:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t *sub_229628810(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v21 = 0;
  v22 = a4;
  v19 = a2;
  v20 = result;
  v4 = 0;
  v24 = a3;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(v24 + 48) + 16 * v13);
    v15 = v14[1];
    v23[0] = *v14;
    v23[1] = v15;
    MEMORY[0x28223BE20](result);
    v18[2] = v23;

    v16 = sub_22986A5E0(v22, v18, &unk_283CDA2E8);

    if ((v16 & 1) == 0)
    {
      *(v20 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v21++, 1))
      {
        __break(1u);
        return sub_229772BD4(v20, v19, v21, v24);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_229772BD4(v20, v19, v21, v24);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2296289A8(uint64_t a1, uint64_t *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_229586D38;

  return sub_229623D08(a1, a2, v7, v6);
}

uint64_t sub_229628AA8()
{
  v0 = sub_22A4DD07C();
  __swift_allocate_value_buffer(v0, qword_281401F50);
  __swift_project_value_buffer(v0, qword_281401F50);
  v1 = *MEMORY[0x277D0F1A8];
  sub_22A4DD5EC();
  return sub_22A4DD06C();
}

id sub_229628B24()
{
  MyHandler = type metadata accessor for FindMyHandler();
  v1 = *(MyHandler + 48);
  v2 = *(MyHandler + 52);
  swift_allocObject();
  result = sub_22962C990();
  qword_2814050C8 = result;
  return result;
}

id sub_229628B64()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_22962C990();
}

uint64_t sub_229628B98()
{
  *(v1 + 16) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229628C34, v0, 0);
}

uint64_t sub_229628C34()
{
  if (qword_281401F48 != -1)
  {
    swift_once();
  }

  v1 = sub_22A4DD07C();
  __swift_project_value_buffer(v1, qword_281401F50);
  v2 = sub_22A4DD05C();
  v3 = sub_22A4DDCCC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_229538000, v2, v3, "Starting find my handler", v4, 2u);
    MEMORY[0x22AAD4E50](v4, -1, -1);
  }

  v5 = v0[2];

  if (*(v5 + 112) == 1)
  {
    v6 = sub_22A4DD05C();
    v7 = sub_22A4DDCEC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_229538000, v6, v7, "Find my handler has already been started. Cannot start again.", v8, 2u);
      MEMORY[0x22AAD4E50](v8, -1, -1);
    }
  }

  else
  {
    v9 = v0[2];
    v10 = v0[3];
    *(v5 + 112) = 1;
    v11 = sub_22A4DD9DC();
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
    v12 = sub_22962D2EC();
    v13 = swift_allocObject();
    v13[2] = v9;
    v13[3] = v12;
    v13[4] = v9;
    swift_retain_n();
    sub_22957F3C0(0, 0, v10, &unk_22A57B478, v13);
  }

  v14 = v0[3];

  v15 = v0[1];

  return v15();
}

uint64_t sub_229628E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70) - 8) + 64) + 15;
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v7 = sub_22A4DB95C();
  v4[10] = v7;
  v8 = *(v7 - 8);
  v4[11] = v8;
  v9 = *(v8 + 64) + 15;
  v4[12] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E220, &qword_22A57B480) - 8) + 64) + 15;
  v4[13] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E228, &qword_22A57B488);
  v4[14] = v11;
  v12 = *(v11 - 8);
  v4[15] = v12;
  v13 = *(v12 + 64) + 15;
  v4[16] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E230, &qword_22A57B490);
  v4[17] = v14;
  v15 = *(v14 - 8);
  v4[18] = v15;
  v16 = *(v15 + 64) + 15;
  v4[19] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E200, &qword_22A57B428) - 8) + 64) + 15;
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v18 = sub_22A4DB9BC();
  v4[25] = v18;
  v19 = *(v18 - 8);
  v4[26] = v19;
  v20 = *(v19 + 64) + 15;
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v21 = sub_22A4DB92C();
  v4[29] = v21;
  v22 = *(v21 - 8);
  v4[30] = v22;
  v23 = *(v22 + 64) + 15;
  v4[31] = swift_task_alloc();
  v24 = sub_22A4DB93C();
  v4[32] = v24;
  v25 = *(v24 - 8);
  v4[33] = v25;
  v26 = *(v25 + 64) + 15;
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229629220, a4, 0);
}

uint64_t sub_229629220()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[32];
  v4 = v0[33];
  (*(v0[30] + 104))(v0[31], *MEMORY[0x277D09060], v0[29]);
  sub_22A4DB94C();
  (*(v4 + 16))(v1, v2, v3);
  v5 = sub_22A4DB9EC();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v8 = *(MEMORY[0x277D09498] + 4);
  v9 = swift_task_alloc();
  v0[36] = v9;
  *v9 = v0;
  v9[1] = sub_229629338;
  v10 = v0[34];

  return MEMORY[0x28215FBB8](v10);
}

uint64_t sub_229629338(uint64_t a1)
{
  v2 = *(*v1 + 288);
  v3 = *(*v1 + 280);
  v4 = *(*v1 + 264);
  v5 = *(*v1 + 256);
  v6 = *(*v1 + 56);
  v8 = *v1;
  *(*v1 + 296) = a1;

  (*(v4 + 8))(v3, v5);

  return MEMORY[0x2822009F8](sub_2296294AC, v6, 0);
}

uint64_t sub_2296294AC()
{
  v1 = v0[7];
  v2 = *(v1 + 120);
  *(v1 + 120) = v0[37];

  v3 = swift_task_alloc();
  v0[38] = v3;
  *v3 = v0;
  v3[1] = sub_229629564;
  v4 = v0[37];
  v5 = v0[24];
  v6 = v0[7];

  return sub_22962B4EC(v5, v4);
}

uint64_t sub_229629564()
{
  v1 = *(*v0 + 304);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_229629674, v2, 0);
}

uint64_t sub_229629674()
{
  v39 = v0;
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[24];
  v4 = *(v2 + 48);
  v0[39] = v4;
  v0[40] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v3, 1, v1) == 1)
  {
    sub_22953EAE4(v3, &qword_27D87E200, &qword_22A57B428);
  }

  else
  {
    (*(v2 + 32))(v0[28], v3, v1);
    if (qword_281401F48 != -1)
    {
      swift_once();
    }

    v5 = v0[27];
    v6 = v0[28];
    v7 = v0[25];
    v8 = v0[26];
    v9 = sub_22A4DD07C();
    __swift_project_value_buffer(v9, qword_281401F50);
    v10 = *(v8 + 16);
    v10(v5, v6, v7);
    v11 = sub_22A4DD05C();
    v12 = sub_22A4DDCCC();
    v13 = os_log_type_enabled(v11, v12);
    v15 = v0[26];
    v14 = v0[27];
    v16 = v0[25];
    if (v13)
    {
      v17 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v38 = v36;
      *v17 = 136315138;
      v34 = sub_22A4DB99C();
      v37 = v10;
      v19 = v18;
      v35 = v12;
      v20 = *(v15 + 8);
      v20(v14, v16);
      v21 = v20;
      v22 = sub_2295A3E30(v34, v19, &v38);
      v10 = v37;

      *(v17 + 4) = v22;
      _os_log_impl(&dword_229538000, v11, v35, "Found designated ME device %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x22AAD4E50](v36, -1, -1);
      MEMORY[0x22AAD4E50](v17, -1, -1);
    }

    else
    {

      v23 = *(v15 + 8);
      v23(v14, v16);
      v21 = v23;
    }

    v24 = v0[28];
    v25 = v0[25];
    v26 = v0[26];
    v27 = v0[23];
    v28 = v0[7];
    v10(v27, v24, v25);
    (*(v26 + 56))(v27, 0, 1, v25);
    sub_22962BF34(v27);
    sub_22953EAE4(v27, &qword_27D87E200, &qword_22A57B428);
    v21(v24, v25);
  }

  v29 = *(MEMORY[0x277D09448] + 4);
  v30 = swift_task_alloc();
  v0[41] = v30;
  *v30 = v0;
  v30[1] = sub_2296299C0;
  v31 = v0[37];
  v32 = v0[19];

  return MEMORY[0x28215FB78](v32);
}

uint64_t sub_2296299C0()
{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v4 = *v1;
  *(*v1 + 336) = v0;

  v5 = *(v2 + 56);
  if (v0)
  {
    v6 = sub_22962A8EC;
  }

  else
  {
    v6 = sub_229629AEC;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_229629AEC()
{
  v1 = *(v0 + 152);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  sub_22A4DDA3C();
  v4 = sub_22962D2EC();
  v5 = OBJC_IVAR____TtC13HomeKitDaemon13FindMyHandler_fmfDevice;
  *(v0 + 344) = v4;
  *(v0 + 352) = v5;
  *(v0 + 384) = *MEMORY[0x277D091A0];
  *(v0 + 388) = *MEMORY[0x277D09178];
  *(v0 + 392) = *MEMORY[0x277D09198];
  *(v0 + 396) = *MEMORY[0x277D09180];
  v6 = *(v0 + 336);
  *(v0 + 360) = @"HMDFMFStatusUpdateNotification";
  *(v0 + 368) = v6;
  v7 = *(v0 + 56);
  v8 = *(MEMORY[0x277D85798] + 4);
  v9 = swift_task_alloc();
  *(v0 + 376) = v9;
  *v9 = v0;
  v9[1] = sub_229629C10;
  v10 = *(v0 + 128);
  v11 = *(v0 + 104);
  v12 = *(v0 + 112);

  return MEMORY[0x2822003E8](v11, v7, v4, v12);
}

uint64_t sub_229629C10()
{
  v1 = *(*v0 + 376);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_229629D20, v2, 0);
}

void sub_229629D20()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 296);
    v6 = *(v0 + 144);
    v5 = *(v0 + 152);
    v8 = *(v0 + 128);
    v7 = *(v0 + 136);
    v9 = *(v0 + 112);
    v10 = *(v0 + 120);

    (*(v10 + 8))(v8, v9);
    (*(v6 + 8))(v5, v7);
    v12 = *(v0 + 272);
    v11 = *(v0 + 280);
    v13 = *(v0 + 248);
    v15 = *(v0 + 216);
    v14 = *(v0 + 224);
    v17 = *(v0 + 184);
    v16 = *(v0 + 192);
    v18 = *(v0 + 168);
    v19 = *(v0 + 176);
    v20 = *(v0 + 160);
    v101 = *(v0 + 152);
    v102 = *(v0 + 128);
    v103 = *(v0 + 104);
    v104 = *(v0 + 96);
    v105 = *(v0 + 72);
    v106 = *(v0 + 64);

    v21 = *(v0 + 8);

    v21();
    return;
  }

  v22 = *(v0 + 384);
  v23 = *(v0 + 96);
  (*(v3 + 32))(v23, v1, v2);
  v24 = (*(v3 + 88))(v23, v2);
  if (v24 != v22)
  {
    if (v24 == *(v0 + 388))
    {
      v41 = *(v0 + 96);
      (*(*(v0 + 88) + 96))(v41, *(v0 + 80));
      v42 = *v41;
      if (qword_281401F48 != -1)
      {
        swift_once();
      }

      v43 = sub_22A4DD07C();
      __swift_project_value_buffer(v43, qword_281401F50);
      v44 = sub_22A4DD05C();
      v45 = sub_22A4DDCCC();
      if (!os_log_type_enabled(v44, v45))
      {
        goto LABEL_23;
      }

      v46 = swift_slowAlloc();
      *v46 = 67109120;
      *(v46 + 4) = v42;
      v47 = "myLocation enabled: %{BOOL}d";
    }

    else
    {
      if (v24 != *(v0 + 392))
      {
        if (v24 == *(v0 + 396))
        {
          if (qword_281401F48 != -1)
          {
            swift_once();
          }

          v69 = sub_22A4DD07C();
          __swift_project_value_buffer(v69, qword_281401F50);
          v70 = sub_22A4DD05C();
          v71 = sub_22A4DDCCC();
          if (os_log_type_enabled(v70, v71))
          {
            v72 = swift_slowAlloc();
            *v72 = 0;
            _os_log_impl(&dword_229538000, v70, v71, "FindMy Session created. Going to query the ME device.", v72, 2u);
            MEMORY[0x22AAD4E50](v72, -1, -1);
          }

          v73 = *(v0 + 344);
          v75 = *(v0 + 64);
          v74 = *(v0 + 72);
          v76 = *(v0 + 56);

          v77 = sub_22A4DD9DC();
          v78 = *(v77 - 8);
          (*(v78 + 56))(v74, 1, 1, v77);
          v79 = swift_allocObject();
          v79[2] = v76;
          v79[3] = v73;
          v79[4] = v76;
          sub_229564F88(v74, v75, &unk_27D87D8F0, &qword_22A578D70);
          LODWORD(v74) = (*(v78 + 48))(v75, 1, v77);
          swift_retain_n();

          v80 = *(v0 + 64);
          if (v74 == 1)
          {
            sub_22953EAE4(*(v0 + 64), &unk_27D87D8F0, &qword_22A578D70);
          }

          else
          {
            sub_22A4DD9CC();
            (*(v78 + 8))(v80, v77);
          }

          v96 = v79[2];
          v95 = v79[3];
          swift_unknownObjectRetain();

          if (v96)
          {
            swift_getObjectType();
            v97 = sub_22A4DD8CC();
            v99 = v98;
            swift_unknownObjectRelease();
          }

          else
          {
            v97 = 0;
            v99 = 0;
          }

          sub_22953EAE4(*(v0 + 72), &unk_27D87D8F0, &qword_22A578D70);
          v100 = swift_allocObject();
          *(v100 + 16) = &unk_22A57B4A0;
          *(v100 + 24) = v79;
          if (v99 | v97)
          {
            *(v0 + 16) = 0;
            *(v0 + 24) = 0;
            *(v0 + 32) = v97;
            *(v0 + 40) = v99;
          }

          swift_task_create();
        }

        else
        {
          if (qword_281401F48 != -1)
          {
            swift_once();
          }

          v81 = sub_22A4DD07C();
          __swift_project_value_buffer(v81, qword_281401F50);
          v82 = sub_22A4DD05C();
          v83 = sub_22A4DDCEC();
          if (os_log_type_enabled(v82, v83))
          {
            v84 = swift_slowAlloc();
            *v84 = 0;
            _os_log_impl(&dword_229538000, v82, v83, "FindMy async stream : unknown case", v84, 2u);
            MEMORY[0x22AAD4E50](v84, -1, -1);
          }

          v86 = *(v0 + 88);
          v85 = *(v0 + 96);
          v87 = *(v0 + 80);

          (*(v86 + 8))(v85, v87);
        }

        goto LABEL_24;
      }

      v49 = *(v0 + 96);
      (*(*(v0 + 88) + 96))(v49, *(v0 + 80));
      v50 = *v49;
      if (qword_281401F48 != -1)
      {
        swift_once();
      }

      v51 = sub_22A4DD07C();
      __swift_project_value_buffer(v51, qword_281401F50);
      v44 = sub_22A4DD05C();
      v45 = sub_22A4DDCCC();
      if (!os_log_type_enabled(v44, v45))
      {
LABEL_23:

LABEL_24:
        v52 = *(v0 + 368);
LABEL_43:
        *(v0 + 368) = v52;
        v88 = *(v0 + 344);
        v89 = *(v0 + 56);
        v90 = *(MEMORY[0x277D85798] + 4);
        v91 = swift_task_alloc();
        *(v0 + 376) = v91;
        *v91 = v0;
        v91[1] = sub_229629C10;
        v92 = *(v0 + 128);
        v93 = *(v0 + 104);
        v94 = *(v0 + 112);

        MEMORY[0x2822003E8](v93, v89, v88, v94);
        return;
      }

      v46 = swift_slowAlloc();
      *v46 = 67109120;
      *(v46 + 4) = v50;
      v47 = "friendRequests allowed: %{BOOL}d";
    }

    _os_log_impl(&dword_229538000, v44, v45, v47, v46, 8u);
    MEMORY[0x22AAD4E50](v46, -1, -1);
    goto LABEL_23;
  }

  v25 = *(v0 + 176);
  v26 = *(v0 + 96);
  (*(*(v0 + 88) + 96))(v26, *(v0 + 80));
  sub_22962CE44(v26, v25);
  if (qword_281401F48 != -1)
  {
    swift_once();
  }

  v27 = *(v0 + 168);
  v28 = *(v0 + 176);
  v29 = sub_22A4DD07C();
  __swift_project_value_buffer(v29, qword_281401F50);
  sub_229564F88(v28, v27, &qword_27D87E200, &qword_22A57B428);
  v30 = sub_22A4DD05C();
  v31 = sub_22A4DDCCC();
  if (os_log_type_enabled(v30, v31))
  {
    v33 = *(v0 + 312);
    v32 = *(v0 + 320);
    v34 = *(v0 + 200);
    v36 = *(v0 + 160);
    v35 = *(v0 + 168);
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *(v0 + 48) = v38;
    *v37 = 136315138;
    sub_229564F88(v35, v36, &qword_27D87E200, &qword_22A57B428);
    if (v33(v36, 1, v34) == 1)
    {
      sub_22953EAE4(*(v0 + 160), &qword_27D87E200, &qword_22A57B428);
      v39 = 0xE400000000000000;
      v40 = 1701736302;
    }

    else
    {
      v53 = *(v0 + 200);
      v54 = *(v0 + 208);
      v55 = *(v0 + 160);
      v40 = sub_22A4DB99C();
      v39 = v56;
      (*(v54 + 8))(v55, v53);
    }

    sub_22953EAE4(*(v0 + 168), &qword_27D87E200, &qword_22A57B428);
    v57 = sub_2295A3E30(v40, v39, (v0 + 48));

    *(v37 + 4) = v57;
    _os_log_impl(&dword_229538000, v30, v31, "meDevice changed: %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x22AAD4E50](v38, -1, -1);
    MEMORY[0x22AAD4E50](v37, -1, -1);
  }

  else
  {
    v48 = *(v0 + 168);

    sub_22953EAE4(v48, &qword_27D87E200, &qword_22A57B428);
  }

  v58 = *(v0 + 368);
  v59 = *(v0 + 176);
  v60 = *(v0 + 56);
  v61 = (v60 + *(v0 + 352));
  os_unfair_lock_lock(v61);
  v62 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D880E00, &qword_22A57B438) + 28);
  sub_22953EAE4(v61 + v62, &qword_27D87E200, &qword_22A57B428);
  sub_229564F88(v59, v61 + v62, &qword_27D87E200, &qword_22A57B428);
  os_unfair_lock_unlock(v61);
  v63 = sub_22962CEB4(v59);
  os_unfair_lock_lock((v60 + 128));
  sub_22962C038((v60 + 136), v63, (v0 + 400));
  os_unfair_lock_unlock((v60 + 128));
  if (!v58)
  {
    if (*(v0 + 400))
    {
      v64 = *(v0 + 56);
      v65 = [objc_allocWithZone(MEMORY[0x277CBEB38]) init];
      os_unfair_lock_lock((v64 + 128));
      v66 = *(v64 + 136);
      os_unfair_lock_unlock((v64 + 128));
      v67 = [objc_opt_self() fmfStatusWithValue_];
      [v67 addToPayload_];

      v68 = v65;
      sub_22A4DD48C();

      logAndPostNotification(*(v0 + 360), *(v0 + 56), 0);
    }

    sub_22953EAE4(*(v0 + 176), &qword_27D87E200, &qword_22A57B428);
    v52 = 0;
    goto LABEL_43;
  }
}

uint64_t sub_22962A8EC()
{
  v1 = v0[37];

  if (qword_281401F48 != -1)
  {
    swift_once();
  }

  v2 = v0[42];
  v3 = sub_22A4DD07C();
  __swift_project_value_buffer(v3, qword_281401F50);
  v4 = v2;
  v5 = sub_22A4DD05C();
  v6 = sub_22A4DDCFC();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[42];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_229538000, v5, v6, "According to FindMy team this should never happen. Please file a radar if you see this. %@", v9, 0xCu);
    sub_22953EAE4(v10, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v10, -1, -1);
    MEMORY[0x22AAD4E50](v9, -1, -1);
  }

  else
  {
  }

  *(v0[7] + 112) = 0;
  v14 = v0[34];
  v13 = v0[35];
  v15 = v0[31];
  v17 = v0[27];
  v16 = v0[28];
  v19 = v0[23];
  v18 = v0[24];
  v20 = v0[21];
  v21 = v0[22];
  v22 = v0[20];
  v25 = v0[19];
  v26 = v0[16];
  v27 = v0[13];
  v28 = v0[12];
  v29 = v0[9];
  v30 = v0[8];

  v23 = v0[1];

  return v23();
}

uint64_t sub_22962AB7C()
{
  v1 = *(v0[2] + 120);
  v0[3] = v1;

  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_22962AC30;
  v3 = v0[2];

  return sub_22962AD40(v1);
}

uint64_t sub_22962AC30()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_22962AD40(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E200, &qword_22A57B428) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v2[5] = swift_task_alloc();
  v4 = sub_22A4DB9BC();
  v2[6] = v4;
  v5 = *(v4 - 8);
  v2[7] = v5;
  v6 = *(v5 + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22962AE50, v1, 0);
}

uint64_t sub_22962AE50()
{
  if (qword_281401F48 != -1)
  {
    swift_once();
  }

  v1 = sub_22A4DD07C();
  v0[10] = __swift_project_value_buffer(v1, qword_281401F50);
  v2 = sub_22A4DD05C();
  v3 = sub_22A4DDCCC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_229538000, v2, v3, "Going to query & process ME device", v4, 2u);
    MEMORY[0x22AAD4E50](v4, -1, -1);
  }

  v5 = v0[2];

  if (v5)
  {
    v6 = v0[2];

    v7 = swift_task_alloc();
    v0[11] = v7;
    *v7 = v0;
    v7[1] = sub_22962B088;
    v8 = v0[5];
    v9 = v0[3];

    return sub_22962B4EC(v8, v6);
  }

  else
  {
    v11 = sub_22A4DD05C();
    v12 = sub_22A4DDCFC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_229538000, v11, v12, "Unable to open FindMyLocate session", v13, 2u);
      MEMORY[0x22AAD4E50](v13, -1, -1);
    }

    v15 = v0[8];
    v14 = v0[9];
    v17 = v0[4];
    v16 = v0[5];

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_22962B088()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22962B198, v2, 0);
}

uint64_t sub_22962B198()
{
  v40 = v0;
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  v4 = (*(v2 + 48))(v3, 1, v1);
  v5 = v0[10];
  if (v4 == 1)
  {
    sub_22953EAE4(v3, &qword_27D87E200, &qword_22A57B428);
    v6 = sub_22A4DD05C();
    v7 = sub_22A4DDCEC();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[2];
    if (v8)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_229538000, v6, v7, "Unable to query the ME device from FindMyLocate", v10, 2u);
      MEMORY[0x22AAD4E50](v10, -1, -1);
    }
  }

  else
  {
    v12 = v0[8];
    v11 = v0[9];
    (*(v2 + 32))(v11, v3, v1);
    v13 = *(v2 + 16);
    v13(v12, v11, v1);
    v14 = sub_22A4DD05C();
    v15 = sub_22A4DDCCC();
    v16 = os_log_type_enabled(v14, v15);
    v18 = v0[7];
    v17 = v0[8];
    v19 = v0[6];
    if (v16)
    {
      v20 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v39 = v36;
      *v20 = 136315138;
      v35 = sub_22A4DB99C();
      v37 = v13;
      v22 = v21;
      v38 = *(v18 + 8);
      v38(v17, v19);
      v23 = sub_2295A3E30(v35, v22, &v39);
      v13 = v37;

      *(v20 + 4) = v23;
      _os_log_impl(&dword_229538000, v14, v15, "Found designated ME device %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x22AAD4E50](v36, -1, -1);
      MEMORY[0x22AAD4E50](v20, -1, -1);
    }

    else
    {

      v38 = *(v18 + 8);
      v38(v17, v19);
    }

    v24 = v0[9];
    v25 = v0[6];
    v26 = v0[7];
    v27 = v0[4];
    v28 = v0[2];
    v13(v27, v24, v25);
    (*(v26 + 56))(v27, 0, 1, v25);
    sub_22962BF34(v27);

    sub_22953EAE4(v27, &qword_27D87E200, &qword_22A57B428);
    v38(v24, v25);
  }

  v30 = v0[8];
  v29 = v0[9];
  v32 = v0[4];
  v31 = v0[5];

  v33 = v0[1];

  return v33();
}

uint64_t sub_22962B4EC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v5 = sub_22A4DB7DC();
  v3[5] = v5;
  v6 = *(v5 - 8);
  v3[6] = v6;
  v7 = *(v6 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v8 = *(MEMORY[0x277D09410] + 4);
  v9 = swift_task_alloc();
  v3[9] = v9;
  *v9 = v3;
  v9[1] = sub_22962B60C;

  return MEMORY[0x28215FB40](a1, 1);
}

uint64_t sub_22962B60C()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 32);
  v6 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_22962B7EC;
  }

  else
  {
    v4 = sub_22962B734;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22962B734()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[2];
  v4 = sub_22A4DB9BC();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_22962B7EC()
{
  if (qword_281401F48 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = sub_22A4DD07C();
  v0[11] = __swift_project_value_buffer(v2, qword_281401F50);
  v3 = v1;
  v4 = sub_22A4DD05C();
  v5 = sub_22A4DDCCC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[10];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_229538000, v4, v5, "Could not find the me device from cache %@. Going to force fetch from the FindMy daemon", v7, 0xCu);
    sub_22953EAE4(v8, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v8, -1, -1);
    MEMORY[0x22AAD4E50](v7, -1, -1);
  }

  v11 = *(MEMORY[0x277D09410] + 4);
  v12 = swift_task_alloc();
  v0[12] = v12;
  *v12 = v0;
  v12[1] = sub_22962B9C0;
  v13 = v0[2];
  v14 = v0[3];

  return MEMORY[0x28215FB40](v13, 0);
}

uint64_t sub_22962B9C0()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = v0;

  v5 = *(v2 + 32);
  if (v0)
  {
    v6 = sub_22962BBAC;
  }

  else
  {
    v6 = sub_22962BAEC;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22962BAEC()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 16);
  v4 = sub_22A4DB9BC();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_22962BBAC()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v1;
  v4 = sub_22A4DD05C();
  v5 = sub_22A4DDCEC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[13];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_229538000, v4, v5, "Unable to fetch the FindMy device from daemon. %@.", v7, 0xCu);
    sub_22953EAE4(v8, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v8, -1, -1);
    MEMORY[0x22AAD4E50](v7, -1, -1);
  }

  if (isInternalBuild() && (v11 = [objc_opt_self() sharedPreferences], v12 = sub_22A4DD5AC(), v13 = objc_msgSend(v11, sel_preferenceForKey_, v12), v12, v11, LODWORD(v11) = objc_msgSend(v13, sel_BOOLValue), v13, v11))
  {
    v14 = v0[11];
    v15 = sub_22A4DD05C();
    v16 = sub_22A4DDCCC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_229538000, v15, v16, "Preference 'fakeCurrentDeviceAsDesignatedMeDevice' is enabled, returning a fake device as Me device", v17, 2u);
      MEMORY[0x22AAD4E50](v17, -1, -1);
    }

    v18 = v0[13];
    v20 = v0[7];
    v19 = v0[8];
    v21 = v0[5];
    v22 = v0[6];
    v32 = v0[2];
    v33 = v0[10];

    sub_22A4DB7CC();
    sub_22A4DB76C();
    v23 = *(v22 + 8);
    v23(v19, v21);
    sub_22A4DB7CC();
    sub_22A4DB76C();
    v23(v20, v21);
    sub_22A4DB98C();
    v24 = v33;
    v25 = 0;
  }

  else
  {
    v18 = v0[13];
    v24 = v0[10];
    v25 = 1;
  }

  v27 = v0[7];
  v26 = v0[8];
  v28 = v0[2];
  v29 = sub_22A4DB9BC();
  (*(*(v29 - 8) + 56))(v28, v25, 1, v29);

  v30 = v0[1];

  return v30();
}

void sub_22962BF34(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC13HomeKitDaemon13FindMyHandler_fmfDevice);
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC13HomeKitDaemon13FindMyHandler_fmfDevice));
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D880E00, &qword_22A57B438) + 28);
  sub_22953EAE4(v3 + v4, &qword_27D87E200, &qword_22A57B428);
  sub_229564F88(a1, v3 + v4, &qword_27D87E200, &qword_22A57B428);
  os_unfair_lock_unlock(v3);
  v5 = sub_22962CEB4(a1);
  os_unfair_lock_lock((v1 + 128));
  sub_22962C038((v1 + 136), v5, &v6);
  os_unfair_lock_unlock((v1 + 128));
  if (v6 == 1)
  {

    sub_22962C368();
  }
}

void sub_22962C038(unint64_t *a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = *a1;
  if (*a1 == a2)
  {
    if (qword_281401F48 != -1)
    {
      swift_once();
    }

    v6 = sub_22A4DD07C();
    __swift_project_value_buffer(v6, qword_281401F50);
    v7 = sub_22A4DD05C();
    v8 = sub_22A4DDCCC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v35 = v10;
      *v9 = 136315138;
      v11 = HMDFMFStatusAsString(a2);
      v12 = sub_22A4DD5EC();
      v14 = v13;

      v15 = sub_2295A3E30(v12, v14, &v35);

      *(v9 + 4) = v15;
      _os_log_impl(&dword_229538000, v7, v8, "FMF status is not changing from %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x22AAD4E50](v10, -1, -1);
      MEMORY[0x22AAD4E50](v9, -1, -1);
    }

    v16 = 0;
  }

  else
  {
    if (qword_281401F48 != -1)
    {
      swift_once();
    }

    v18 = sub_22A4DD07C();
    __swift_project_value_buffer(v18, qword_281401F50);
    v19 = sub_22A4DD05C();
    v20 = sub_22A4DDCCC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v35 = v22;
      *v21 = 136315394;
      v23 = HMDFMFStatusAsString(v5);
      v34 = a3;
      v24 = sub_22A4DD5EC();
      v26 = v25;

      v27 = sub_2295A3E30(v24, v26, &v35);

      *(v21 + 4) = v27;
      *(v21 + 12) = 2080;
      v28 = HMDFMFStatusAsString(a2);
      v29 = sub_22A4DD5EC();
      v31 = v30;

      v32 = v29;
      a3 = v34;
      v33 = sub_2295A3E30(v32, v31, &v35);

      *(v21 + 14) = v33;
      _os_log_impl(&dword_229538000, v19, v20, "FMF status is changing from %s to %s", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v22, -1, -1);
      MEMORY[0x22AAD4E50](v21, -1, -1);
    }

    *a1 = a2;
    v16 = 1;
  }

  *a3 = v16;
}

void sub_22962C368()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CBEB38]) init];
  os_unfair_lock_lock((v0 + 128));
  v2 = *(v0 + 136);
  os_unfair_lock_unlock((v0 + 128));
  v3 = [objc_opt_self() fmfStatusWithValue_];
  [v3 addToPayload_];

  v4 = v1;
  sub_22A4DD48C();

  logAndPostNotification(@"HMDFMFStatusUpdateNotification", v0, 0);
}

uint64_t sub_22962C620(const void *a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);

  return MEMORY[0x2822009F8](sub_22962C69C, a2, 0);
}

uint64_t sub_22962C69C()
{
  v1 = *(v0[2] + 120);
  v0[4] = v1;

  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_22962C750;
  v3 = v0[2];

  return sub_22962AD40(v1);
}

uint64_t sub_22962C750()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 16);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_22962C87C, v3, 0);
}

uint64_t sub_22962C87C()
{
  v1 = v0[2];
  v2 = v0[3];
  os_unfair_lock_lock((v1 + 128));
  v3 = *(v1 + 136);
  os_unfair_lock_unlock((v1 + 128));
  v4 = [objc_opt_self() fmfStatusWithValue_];

  (v2)[2](v2, v4);
  _Block_release(v2);

  v5 = v0[1];

  return v5();
}

id sub_22962C990()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E200, &qword_22A57B428);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v11 - v3;
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 128) = 0;
  *(v0 + 136) = 0;
  v5 = (v0 + OBJC_IVAR____TtC13HomeKitDaemon13FindMyHandler_fmfDevice);
  v6 = sub_22A4DB9BC();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  *v5 = 0;
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D880E00, &qword_22A57B438) + 28);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E218, &qword_22A57B468);
  bzero(v5 + v7, *(*(v8 - 8) + 64));
  sub_22962CE44(v4, v5 + v7);
  MyHandler = type metadata accessor for FindMyHandler();
  v11.receiver = v0;
  v11.super_class = MyHandler;
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t sub_22962CB04()
{
  v1 = *(v0 + 120);

  v2 = v0 + OBJC_IVAR____TtC13HomeKitDaemon13FindMyHandler_fmfDevice;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D880E00, &qword_22A57B438);
  sub_22953EAE4(v2 + *(v3 + 28), &qword_27D87E200, &qword_22A57B428);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

HMDFMFHandlerFactory __swiftcall HMDFMFHandlerFactory.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t type metadata accessor for FindMyHandler()
{
  result = qword_281402D30;
  if (!qword_281402D30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22962CCA4()
{
  sub_22962CD5C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_22962CD5C()
{
  if (!qword_281401D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D87E200, &qword_22A57B428);
    v0 = sub_22A4DC1EC();
    if (!v1)
    {
      atomic_store(v0, &qword_281401D00);
    }
  }
}

unint64_t type metadata accessor for HMDFMFHandlerFactory()
{
  result = qword_27D87E210;
  if (!qword_27D87E210)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D87E210);
  }

  return result;
}

uint64_t sub_22962CE44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E200, &qword_22A57B428);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22962CEB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E200, &qword_22A57B428);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v30 - v4;
  v6 = sub_22A4DB9BC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - v12;
  sub_229564F88(a1, v5, &qword_27D87E200, &qword_22A57B428);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_22953EAE4(v5, &qword_27D87E200, &qword_22A57B428);
    if (qword_281401F48 != -1)
    {
      swift_once();
    }

    v14 = sub_22A4DD07C();
    __swift_project_value_buffer(v14, qword_281401F50);
    v15 = sub_22A4DD05C();
    v16 = sub_22A4DDCCC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_229538000, v15, v16, "There is no designated ME device on this account", v17, 2u);
      MEMORY[0x22AAD4E50](v17, -1, -1);
    }

    return 1;
  }

  else
  {
    (*(v7 + 32))(v13, v5, v6);
    if (qword_281401F48 != -1)
    {
      swift_once();
    }

    v19 = sub_22A4DD07C();
    __swift_project_value_buffer(v19, qword_281401F50);
    (*(v7 + 16))(v11, v13, v6);
    v20 = sub_22A4DD05C();
    v21 = sub_22A4DDCCC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = v30;
      *v22 = 136315138;
      v23 = sub_22A4DB99C();
      v25 = v24;
      v26 = *(v7 + 8);
      v26(v11, v6);
      v27 = sub_2295A3E30(v23, v25, &v31);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_229538000, v20, v21, "Designated ME device : %s", v22, 0xCu);
      v28 = v30;
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x22AAD4E50](v28, -1, -1);
      MEMORY[0x22AAD4E50](v22, -1, -1);
    }

    else
    {

      v26 = *(v7 + 8);
      v26(v11, v6);
    }

    if (sub_22A4DB96C())
    {
      v26(v13, v6);
      return 2;
    }

    else
    {
      v29 = sub_22A4DB9AC();
      v26(v13, v6);
      if (v29)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

unint64_t sub_22962D2EC()
{
  result = qword_281402D40;
  if (!qword_281402D40)
  {
    type metadata accessor for FindMyHandler();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281402D40);
  }

  return result;
}

uint64_t sub_22962D344(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_229586D38;

  return sub_229628E7C(a1, v4, v5, v6);
}

uint64_t sub_22962D3F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_229586D38;

  return sub_22962AB5C(a1, v4, v5, v6);
}

uint64_t sub_22962D4AC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_229569B30;

  return sub_22962C620(v2, v3);
}

uint64_t objectdestroy_37Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22962D5C0(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_22A4DE04C();
  if (v3 == 1 << *(a1 + 32))
  {
    return 43;
  }

  v5 = *(a1 + 36);

  return sub_22962F648(v3, v5, 0, a1);
}

uint64_t sub_22962D64C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  v6 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = sub_22A4DE08C();
    v9 = v8;
    v10 = sub_22A4DE14C();
    v12 = v11;
    v13 = MEMORY[0x22AAD1290](v7, v9, v10, v11);
    sub_22962F424(v10, v12, 1);
    if (v13)
    {
LABEL_3:
      sub_22962F424(v7, v9, v6 != 0);
      return 0;
    }
  }

  else
  {
    v15 = -1 << *(a1 + 32);
    v7 = sub_22A4DE04C();
    v9 = *(a1 + 36);
    if (v7 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_22962F430(v7, v9, v6 != 0, a1, a2, a3);
  v17 = v16;
  sub_22962F424(v7, v9, v6 != 0);
  return v17;
}

uint64_t sub_22962D780(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v5 = sub_22A4DB49C();
  v3[8] = v5;
  v6 = *(v5 - 8);
  v3[9] = v6;
  v7 = *(v6 + 64) + 15;
  v3[10] = swift_task_alloc();
  v8 = sub_22A4DB57C();
  v3[11] = v8;
  v9 = *(v8 - 8);
  v3[12] = v9;
  v10 = *(v9 + 64) + 15;
  v3[13] = swift_task_alloc();
  v11 = swift_task_alloc();
  v12 = *a1;
  v3[14] = v11;
  v3[15] = v12;

  return MEMORY[0x2822009F8](sub_22962D8B0, 0, 0);
}

uint64_t sub_22962D8B0()
{
  v1 = [*(v0 + 120) paymentNetworkIdentifier];
  if (v1 == 139)
  {
    v9 = *(v0 + 88);
    v10 = *(v0 + 48);
    sub_22A4DE1FC();

    sub_22962E16C();
    v11 = sub_22A4DE5CC();
    MEMORY[0x22AAD08C0](v11);

    sub_22A4DBD0C();

    v12 = swift_task_alloc();
    *(v0 + 176) = v12;
    *v12 = v0;
    v12[1] = sub_22962DE50;
    v13 = *(v0 + 120);
    v14 = *(v0 + 56);

    return sub_22962E9E0(v13, v14);
  }

  else if (v1 == 133)
  {
    v2 = *(v0 + 88);
    v3 = *(v0 + 48);
    sub_22A4DE1FC();

    sub_22962E16C();
    v4 = sub_22A4DE5CC();
    MEMORY[0x22AAD08C0](v4);

    sub_22A4DBD0C();

    v5 = swift_task_alloc();
    *(v0 + 128) = v5;
    *v5 = v0;
    v5[1] = sub_22962DB34;
    v6 = *(v0 + 120);
    v7 = *(v0 + 56);

    return sub_22962E1C4(v6, v7);
  }

  else
  {
    v16 = *(v0 + 104);
    v15 = *(v0 + 112);
    v17 = *(v0 + 80);

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_22962DB34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*v5 + 128);
  v9 = *v5;
  v9[17] = a1;
  v9[18] = a2;
  v9[19] = v4;

  if (v4)
  {
    v11 = v9[13];
    v10 = v9[14];
    v12 = v9[10];

    v13 = v9[1];

    return v13();
  }

  else
  {
    v9[20] = a4;
    v9[21] = a3;

    return MEMORY[0x2822009F8](sub_22962DCA0, 0, 0);
  }
}

uint64_t sub_22962DCA0()
{
  v1 = v0[18];
  v2 = v0[17];
  v3 = v0[14];
  v4 = v0[9];
  v5 = v0[10];
  v6 = v0[8];
  v7 = v0[6];
  v16 = v0[19];
  MEMORY[0x22AAD08C0](v0[21], v0[20]);

  v0[4] = 0x33313038314F5349;
  v0[5] = 0xE90000000000002DLL;
  (*(v4 + 104))(v5, *MEMORY[0x277CC91D8], v6);
  sub_22962F254();
  sub_22A4DB56C();
  (*(v4 + 8))(v5, v6);

  sub_22A4DB64C();
  v8 = v0[14];
  v9 = v0[11];
  v10 = v0[12];
  sub_2295798D4(v0[17], v0[18]);
  (*(v10 + 8))(v8, v9);
  v12 = v0[13];
  v11 = v0[14];
  v13 = v0[10];

  v14 = v0[1];

  return v14();
}

uint64_t sub_22962DE50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*v5 + 176);
  v9 = *v5;
  v9[23] = a1;
  v9[24] = a2;
  v9[25] = v4;

  if (v4)
  {
    v11 = v9[13];
    v10 = v9[14];
    v12 = v9[10];

    v13 = v9[1];

    return v13();
  }

  else
  {
    v9[26] = a4;
    v9[27] = a3;

    return MEMORY[0x2822009F8](sub_22962DFBC, 0, 0);
  }
}

uint64_t sub_22962DFBC()
{
  v1 = v0[24];
  v2 = v0[23];
  v3 = v0[13];
  v4 = v0[9];
  v5 = v0[10];
  v6 = v0[8];
  v7 = v0[6];
  v16 = v0[25];
  MEMORY[0x22AAD08C0](v0[27], v0[26]);

  v0[2] = 0x33313038314F5349;
  v0[3] = 0xE90000000000002DLL;
  (*(v4 + 104))(v5, *MEMORY[0x277CC91D8], v6);
  sub_22962F254();
  sub_22A4DB56C();
  (*(v4 + 8))(v5, v6);

  sub_22A4DB64C();
  v9 = v0[12];
  v8 = v0[13];
  v10 = v0[11];
  sub_2295798D4(v0[23], v0[24]);
  (*(v9 + 8))(v8, v10);
  v12 = v0[13];
  v11 = v0[14];
  v13 = v0[10];

  v14 = v0[1];

  return v14();
}

unint64_t sub_22962E16C()
{
  result = qword_27D87E238;
  if (!qword_27D87E238)
  {
    sub_22A4DB57C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87E238);
  }

  return result;
}

uint64_t sub_22962E1C4(uint64_t a1, uint64_t a2)
{
  v2[22] = a1;
  v2[23] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E240, &qword_22A57B4F8);
  v2[24] = v3;
  v4 = *(v3 - 8);
  v2[25] = v4;
  v5 = *(v4 + 64) + 15;
  v2[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22962E290, 0, 0);
}

uint64_t sub_22962E290()
{
  v1 = v0[23];
  v2 = v1 + *(type metadata accessor for HomePassState(0) + 48);
  v3 = *(v2 + *(type metadata accessor for HomePassData(0) + 80));
  v0[27] = v3;
  if (v3)
  {
    v4 = v0[22];
    v5 = v3;
    v6 = [v4 subcredentials];
    if (v6)
    {
      v7 = v6;
      sub_229562F68(0, &qword_27D87E250, 0x277D37D48);
      sub_22962F2FC();
      v8 = sub_22A4DDB6C();

      v9 = sub_22962D64C(v8, &qword_27D87E250, 0x277D37D48);

      if (!v9 || (v10 = [v9 transactionKey], v9, !v10))
      {
        sub_22962F2A8();
        swift_allocError();
        *v29 = 0xD000000000000038;
        *(v29 + 8) = 0x800000022A58DFC0;
        *(v29 + 16) = 0;
        swift_willThrow();
LABEL_14:

        goto LABEL_15;
      }

      v11 = v0[22];
      v12 = sub_22A4DB62C();
      v14 = v13;

      v0[28] = v12;
      v0[29] = v14;
      v6 = [v11 subcredentials];
      if (v6)
      {
        v15 = v6;
        v16 = sub_22A4DDB6C();

        v17 = sub_22962D64C(v16, &qword_27D87E250, 0x277D37D48);

        if (v17)
        {
          v18 = [v17 identifier];

          if (v18)
          {
            v19 = v0[25];
            v35 = v0[26];
            v20 = v0[24];
            v21 = sub_22A4DD5EC();
            v23 = v22;
            v0[20] = v21;
            v0[21] = v22;

            v0[30] = v23;
            v24 = objc_allocWithZone(HMDHomeWalletKeyISOCredential);
            v25 = v5;
            sub_22956C148(v12, v14);
            v26 = sub_22A4DB61C();
            v27 = [v24 initWithHAPPairingIdentity:v25 deviceCredentialKeyExternalRepresentation:v26];
            v0[31] = v27;

            sub_2295798D4(v12, v14);
            v0[2] = v0;
            v0[7] = v0 + 18;
            v0[3] = sub_22962E788;
            swift_continuation_init();
            v0[17] = v20;
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 14);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
            sub_22A4DD8DC();
            (*(v19 + 32))(boxed_opaque_existential_1, v35, v20);
            v0[10] = MEMORY[0x277D85DD0];
            v0[11] = 1107296256;
            v0[12] = sub_22962F364;
            v0[13] = &block_descriptor_9;
            [v27 encodeWithCompletion_];
            (*(v19 + 8))(boxed_opaque_existential_1, v20);
            v6 = v0 + 2;

            return MEMORY[0x282200938](v6);
          }
        }

        sub_22962F2A8();
        swift_allocError();
        *v31 = 0xD00000000000003FLL;
        *(v31 + 8) = 0x800000022A58E000;
        *(v31 + 16) = 0;
        swift_willThrow();
        sub_2295798D4(v12, v14);
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return MEMORY[0x282200938](v6);
  }

  sub_22962F2A8();
  swift_allocError();
  *v30 = xmmword_22A57B4C0;
  *(v30 + 16) = 3;
  swift_willThrow();
LABEL_15:
  v32 = v0[26];

  v33 = v0[1];

  return v33();
}

uint64_t sub_22962E788()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 256) = v3;
  if (v3)
  {
    v4 = v1[30];

    v5 = sub_22962E948;
  }

  else
  {
    v1[33] = v1[20];
    v5 = sub_22962E8A8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22962E8A8()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 224);
  v3 = *(v0 + 232);
  v4 = *(v0 + 208);

  sub_2295798D4(v2, v3);
  v6 = *(v0 + 144);
  v5 = *(v0 + 152);

  v7 = *(v0 + 8);
  v8 = *(v0 + 264);
  v9 = *(v0 + 240);

  return v7(v6, v5, v8, v9);
}

uint64_t sub_22962E948()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[28];
  v4 = v0[29];
  v5 = v0[27];
  swift_willThrow();

  sub_2295798D4(v3, v4);
  v6 = v0[32];
  v7 = v0[26];

  v8 = v0[1];

  return v8();
}

uint64_t sub_22962E9E0(uint64_t a1, uint64_t a2)
{
  v2[22] = a1;
  v2[23] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E240, &qword_22A57B4F8);
  v2[24] = v3;
  v4 = *(v3 - 8);
  v2[25] = v4;
  v5 = *(v4 + 64) + 15;
  v2[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22962EAAC, 0, 0);
}

uint64_t sub_22962EAAC()
{
  v1 = v0[23];
  v2 = v1 + *(type metadata accessor for HomePassState(0) + 48);
  v3 = (v2 + *(type metadata accessor for HomePassData(0) + 84));
  v4 = *v3;
  v0[27] = *v3;
  v5 = v3[1];
  v0[28] = v5;
  if (v5 >> 60 != 15)
  {
    v7 = v0[22];
    sub_22956C148(v4, v5);
    v8 = [v7 subcredentials];
    if (v8)
    {
      v9 = v8;
      sub_229562F68(0, &qword_27D87E250, 0x277D37D48);
      sub_22962F2FC();
      v10 = sub_22A4DDB6C();

      v11 = sub_22962D64C(v10, &qword_27D87E250, 0x277D37D48);

      if (!v11 || (v12 = [v11 transactionKey], v11, !v12))
      {
        sub_22962F2A8();
        swift_allocError();
        *v30 = 0xD00000000000003BLL;
        *(v30 + 8) = 0x800000022A58E060;
        *(v30 + 16) = 0;
        swift_willThrow();
        goto LABEL_14;
      }

      v13 = v0[22];
      v14 = sub_22A4DB62C();
      v16 = v15;

      v0[29] = v14;
      v0[30] = v16;
      v8 = [v13 subcredentials];
      if (v8)
      {
        v17 = v8;
        v18 = sub_22A4DDB6C();

        v19 = sub_22962D64C(v18, &qword_27D87E250, 0x277D37D48);

        if (v19)
        {
          v20 = [v19 identifier];

          if (v20)
          {
            v21 = v0[25];
            v36 = v0[26];
            v35 = v0[24];
            v22 = sub_22A4DD5EC();
            v24 = v23;
            v0[20] = v22;
            v0[21] = v23;

            v0[31] = v24;
            v25 = objc_allocWithZone(HMDHomeWalletKeyISOCredentialACWG);
            sub_2295AEF1C(v4, v5);
            sub_22956C148(v14, v16);
            v26 = sub_22A4DB61C();
            v27 = sub_22A4DB61C();
            v28 = [v25 initWithIssuerKeyPairExternalRepresentation:v26 deviceCredentialPublicKeyExternalRepresentation:v27];
            v0[32] = v28;

            sub_2295798D4(v14, v16);
            sub_229590D18(v4, v5);
            v0[2] = v0;
            v0[7] = v0 + 18;
            v0[3] = sub_22962EFE8;
            swift_continuation_init();
            v0[17] = v35;
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 14);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
            sub_22A4DD8DC();
            (*(v21 + 32))(boxed_opaque_existential_1, v36, v35);
            v0[10] = MEMORY[0x277D85DD0];
            v0[11] = 1107296256;
            v0[12] = sub_22962F364;
            v0[13] = &block_descriptor_7;
            [v28 encodeWithCompletion_];
            (*(v21 + 8))(boxed_opaque_existential_1, v35);
            v8 = v0 + 2;

            return MEMORY[0x282200938](v8);
          }
        }

        sub_22962F2A8();
        swift_allocError();
        *v31 = 0xD000000000000042;
        *(v31 + 8) = 0x800000022A58E0A0;
        *(v31 + 16) = 0;
        swift_willThrow();
        sub_2295798D4(v14, v16);
LABEL_14:
        sub_229590D18(v4, v5);
        goto LABEL_15;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return MEMORY[0x282200938](v8);
  }

  sub_22962F2A8();
  swift_allocError();
  *v6 = xmmword_22A57B4D0;
  *(v6 + 16) = 3;
  swift_willThrow();
LABEL_15:
  v32 = v0[26];

  v33 = v0[1];

  return v33();
}

uint64_t sub_22962EFE8()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 264) = v3;
  if (v3)
  {
    v4 = v1[31];

    v5 = sub_22962F1AC;
  }

  else
  {
    v1[34] = v1[20];
    v5 = sub_22962F108;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22962F108()
{
  v1 = v0[32];
  v2 = v0[29];
  v3 = v0[30];
  v4 = v0[26];
  sub_229590D18(v0[27], v0[28]);
  sub_2295798D4(v2, v3);

  v6 = v0[18];
  v5 = v0[19];

  v7 = v0[1];
  v8 = v0[34];
  v9 = v0[31];

  return v7(v6, v5, v8, v9);
}

uint64_t sub_22962F1AC()
{
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[29];
  v4 = v0[30];
  v6 = v0[27];
  v5 = v0[28];
  swift_willThrow();
  sub_229590D18(v6, v5);
  sub_2295798D4(v3, v4);

  v7 = v0[33];
  v8 = v0[26];

  v9 = v0[1];

  return v9();
}

unint64_t sub_22962F254()
{
  result = qword_27D881ED0;
  if (!qword_27D881ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D881ED0);
  }

  return result;
}

unint64_t sub_22962F2A8()
{
  result = qword_27D87E248;
  if (!qword_27D87E248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87E248);
  }

  return result;
}

unint64_t sub_22962F2FC()
{
  result = qword_27D87E258;
  if (!qword_27D87E258)
  {
    sub_229562F68(255, &qword_27D87E250, 0x277D37D48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87E258);
  }

  return result;
}

void sub_22962F364(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E240, &qword_22A57B4F8);
    sub_22A4DD8EC();
  }

  else
  {
    v6 = a2;
    sub_22A4DB62C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E240, &qword_22A57B4F8);
    sub_22A4DD8FC();
  }
}

uint64_t sub_22962F424(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void sub_22962F430(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, uint64_t *a6)
{
  v10 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v11 = a4;
      }

      else
      {
        v11 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x22AAD12E0](a1, a2, v11);
      sub_229562F68(0, a5, a6);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_229562F68(0, a5, a6);
    if (sub_22A4DE0CC() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_22A4DE0DC();
    swift_dynamicCast();
    v6 = v20;
    v12 = *(a4 + 40);
    v13 = sub_22A4DDECC();
    v14 = -1 << *(a4 + 32);
    v10 = v13 & ~v14;
    if ((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
    {
      v15 = ~v14;
      do
      {
        v16 = *(*(a4 + 48) + 8 * v10);
        v17 = sub_22A4DDEDC();

        if (v17)
        {
          goto LABEL_19;
        }

        v10 = (v10 + 1) & v15;
      }

      while (((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    __break(1u);
  }

  if ((v10 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v10)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v10 >> 6) + 56) >> v10) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v18 = *(*(a4 + 48) + 8 * v10);

  v19 = v18;
}

uint64_t sub_22962F648(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t static HMDHomeNFCReaderKeyManagerOverrides.keychainPullOverride.getter()
{
  swift_beginAccess();
  v0 = static HMDHomeNFCReaderKeyManagerOverrides.keychainPullOverride;
  sub_2295A1C30(static HMDHomeNFCReaderKeyManagerOverrides.keychainPullOverride);
  return v0;
}

uint64_t static HMDHomeNFCReaderKeyManagerOverrides.keychainPullOverride.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = static HMDHomeNFCReaderKeyManagerOverrides.keychainPullOverride;
  static HMDHomeNFCReaderKeyManagerOverrides.keychainPullOverride = a1;
  unk_27D8AB740 = a2;
  return sub_2295571A0(v4);
}

uint64_t sub_22962F804()
{
  swift_beginAccess();
  v0 = static HMDHomeNFCReaderKeyManagerOverrides.keychainPullOverride;
  v1 = unk_27D8AB740;
  if (static HMDHomeNFCReaderKeyManagerOverrides.keychainPullOverride)
  {
    v2 = swift_allocObject();
    *(v2 + 16) = v0;
    *(v2 + 24) = v1;
  }

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E260, &qword_22A57B600);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_2295A1C30(v0);
  result = sub_22A4DE8BC();
  static HMDHomeNFCReaderKeyManagerOverrides.$taskLocalKeychainPullOverride = result;
  return result;
}

uint64_t *HMDHomeNFCReaderKeyManagerOverrides.$taskLocalKeychainPullOverride.unsafeMutableAddressor()
{
  if (qword_27D87B958 != -1)
  {
    swift_once();
  }

  return &static HMDHomeNFCReaderKeyManagerOverrides.$taskLocalKeychainPullOverride;
}

uint64_t static HMDHomeNFCReaderKeyManagerOverrides.$taskLocalKeychainPullOverride.getter()
{
  if (qword_27D87B958 != -1)
  {
    swift_once();
  }
}

uint64_t (*static HMDHomeNFCReaderKeyManagerOverrides.taskLocalKeychainPullOverride.getter())()
{
  if (qword_27D87B958 != -1)
  {
    swift_once();
  }

  sub_22A4DE8CC();
  if (!v2)
  {
    return 0;
  }

  v0 = swift_allocObject();
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  return sub_22962FA28;
}

uint64_t sub_22962FA28()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t HMDHomeNFCReaderKeyManager.pullFromKeychain(flow:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = swift_getObjectType();

  return MEMORY[0x2822009F8](sub_22962FAC8, 0, 0);
}

uint64_t sub_22962FAC8()
{
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *(v2 + 16) = *(v0 + 24);
  v3 = *MEMORY[0x277D0F1A8];
  v4 = sub_22A4DD5EC();
  v6 = v5;
  *(v0 + 48) = v5;
  v7 = sub_22A4DBCEC();
  v9 = v8;
  *(v0 + 56) = v8;
  v10 = *(MEMORY[0x277D0EFF8] + 4);
  v11 = swift_task_alloc();
  *(v0 + 64) = v11;
  *v11 = v0;
  v11[1] = sub_22962FBF0;

  return MEMORY[0x2821677F0](v11, v1, v4, v6, v7, v9, &unk_22A57B530, v2);
}

uint64_t sub_22962FBF0()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v9 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_22962FD20;
  }

  else
  {
    v6 = v2[6];
    v5 = v2[7];
    v7 = v2[5];

    v4 = sub_229566EE4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22962FD20()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];

  v4 = v0[1];
  v5 = v0[9];

  return v4();
}

uint64_t sub_22962FDB4()
{
  sub_22A4DBD0C();
  if (qword_27D87B958 != -1)
  {
    swift_once();
  }

  sub_22A4DE8CC();
  v1 = v0[5];
  if (v1)
  {
    v2 = v0[6];
    sub_2295571A0(v1);
    v3 = sub_22A4DE8CC();
    v4 = v0[7];
    if (v4)
    {
      v5 = v0[8];
      v4(v3);
      sub_2295571A0(v4);
    }

    v6 = v0[1];
    goto LABEL_13;
  }

  if ((sub_229631788() & 1) == 0)
  {
    sub_22A4DBD0C();
    [objc_opt_self() hmfErrorWithCode_];
LABEL_12:
    swift_willThrow();
    v6 = v0[1];
LABEL_13:

    return v6();
  }

  if (!*MEMORY[0x277CDC190])
  {
    sub_22A4DBD3C();
    [objc_opt_self() hmfErrorWithCode_];
    swift_willThrow();
    sub_22A4DE1FC();
    MEMORY[0x22AAD08C0](0xD000000000000029, 0x800000022A58E1A0);
    swift_getErrorValue();
    v11 = v0[2];
    v12 = v0[3];
    sub_22A4DE5EC();
    sub_22A4DBD0C();

    goto LABEL_12;
  }

  v7 = sub_22A4DD5EC();
  v9 = v8;
  sub_229631A04();
  v10 = sub_2296D0354(1);
  v0[10] = v10;
  v14 = v10;
  v15 = swift_allocObject();
  v0[11] = v15;
  v15[2] = v14;
  v15[3] = v7;
  v15[4] = v9;
  v16 = v14;
  v17 = swift_task_alloc();
  v0[12] = v17;
  v17[2] = &unk_22A57B5A8;
  v17[3] = v15;
  v17[4] = 0x4024000000000000;
  v18 = *(MEMORY[0x277D859B8] + 4);
  v19 = swift_task_alloc();
  v0[13] = v19;
  *v19 = v0;
  v19[1] = sub_229630138;

  return MEMORY[0x282200740]();
}

uint64_t sub_229630138()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_2296302BC;
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = sub_229630254;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_229630254()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];

  return v3();
}

uint64_t sub_2296302BC()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];

  v4 = v0[14];
  sub_22A4DE1FC();
  MEMORY[0x22AAD08C0](0xD000000000000029, 0x800000022A58E1A0);
  swift_getErrorValue();
  v5 = v0[2];
  v6 = v0[3];
  sub_22A4DE5EC();
  sub_22A4DBD0C();

  swift_willThrow();
  v7 = v0[1];

  return v7();
}

uint64_t sub_2296303B0()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_229586D38;

  return sub_22962FD98();
}

uint64_t sub_22963046C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
  v3[21] = v4;
  v5 = *(v4 - 8);
  v3[22] = v5;
  v6 = *(v5 + 64) + 15;
  v3[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22963053C, 0, 0);
}

uint64_t sub_22963053C()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v5 = v0[22];
  v4 = v0[23];
  v6 = v0[21];
  v7 = v1[19];
  v8 = v1[20];
  v12 = v1[18];
  v9 = sub_22A4DD5AC();
  v1[24] = v9;
  v1[2] = v1;
  v1[3] = sub_229630704;
  swift_continuation_init();
  v1[17] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
  sub_22A4DD8DC();
  (*(v5 + 32))(boxed_opaque_existential_1, v4, v6);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_229787290;
  v1[13] = &block_descriptor_10;
  [v12 rpcFetchAndProcessChangesIfNoRecentFetch:v9 reply:v3];
  (*(v5 + 8))(boxed_opaque_existential_1, v6);

  return MEMORY[0x282200938](v2);
}

uint64_t sub_229630704()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  if (v2)
  {
    v3 = sub_229630880;
  }

  else
  {
    v3 = sub_229630814;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_229630814()
{
  v1 = *(v0 + 184);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_229630880()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[23];
  swift_willThrow();

  v4 = v0[1];
  v5 = v0[25];

  return v4();
}

uint64_t sub_229630A84(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_229630B48;

  return HMDHomeNFCReaderKeyManager.pullFromKeychain(flow:)(v6);
}

uint64_t sub_229630B48()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 24);
  v7 = *(*v1 + 16);
  v8 = *v1;

  v9 = *(v3 + 32);
  if (v2)
  {
    v10 = sub_22A4DB3DC();

    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(*(v3 + 32), 0);
  }

  _Block_release(*(v4 + 32));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_229630CE4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_229586D38;

  return sub_229630A84(v2, v3, v4);
}

uint64_t sub_229630D98(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a1;
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;
  *(v5 + 16) = a3;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70) - 8) + 64) + 15;
  *(v5 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229630E3C, 0, 0);
}

uint64_t sub_229630E3C()
{
  v1 = v0[6];
  v2 = v0[5];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  v6 = sub_22A4DD9DC();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v4;
  v8[5] = v3;

  sub_229773AF0(v1, &unk_22A57B5C8, v8);
  sub_229631C7C(v1);
  v7(v1, 1, 1, v6);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  sub_229773AF0(v1, &unk_22A57B5D8, v9);
  sub_229631C7C(v1);
  v10 = *(MEMORY[0x277D85818] + 4);
  v11 = swift_task_alloc();
  v0[7] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87F310, &unk_22A57B5E0);
  *v11 = v0;
  v11[1] = sub_22963101C;
  v13 = v0[2];

  return MEMORY[0x2822004D0](v0 + 9, 0, 0, v12);
}

uint64_t sub_22963101C()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_22963126C;
  }

  else
  {
    v3 = sub_229631130;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_229631130()
{
  if (*(v0 + 72) == 1)
  {
    [objc_opt_self() hmfErrorWithCode_];
    swift_willThrow();
    v1 = *(v0 + 48);
    v2 = **(v0 + 16);
  }

  else
  {
    v4 = *(v0 + 48);
    v5 = **(v0 + 16);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
  sub_22A4DDAEC();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22963126C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  v3 = **(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
  sub_22A4DDAEC();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_229631318(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_229569B30;

  return v8();
}

uint64_t sub_229631420(unint64_t a1)
{
  v3 = *(v1 + 16) * 1000000000.0;
  if (COERCE__INT64(fabs(v3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return MEMORY[0x282200480](a1);
  }

  v4 = v3;
  v5 = *(MEMORY[0x277D857E8] + 4);
  v6 = swift_task_alloc();
  *(v1 + 24) = v6;
  *v6 = v1;
  v6[1] = sub_229631508;
  a1 = v4;

  return MEMORY[0x282200480](a1);
}

uint64_t sub_229631508()
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

    return MEMORY[0x2822009F8](sub_229631638, 0, 0);
  }
}

uint64_t sub_229631638()
{
  [objc_opt_self() hmfErrorWithCode_];
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2296316C8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_229586D38;

  return sub_229859E88(v2, v3, v5);
}