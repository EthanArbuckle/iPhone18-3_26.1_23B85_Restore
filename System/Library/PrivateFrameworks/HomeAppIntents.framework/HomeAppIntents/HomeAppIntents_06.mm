uint64_t sub_25279AE54(uint64_t a1)
{
  v2 = sub_2528BF240();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2528BF460();
  v7 = sub_2528BF220();
  (*(v3 + 8))(v6, v2);
  LOBYTE(a1) = sub_2528193BC(a1, v7);

  return a1 & 1;
}

uint64_t sub_25279AF54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v49 = a2;
  v50 = a3;
  v46 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD4A8, &unk_2528C8040);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v45 = (&v42 - v5);
  v6 = sub_2528BECF0();
  v47 = *(v6 - 8);
  v48 = v6;
  v7 = *(v47 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDB8, &unk_2528C5CC0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v42 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCEF0, &unk_2528C6AB0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v42 - v16;
  v51 = sub_2528BFB20();
  v18 = *(v51 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v51);
  v44 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v43 = &v42 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE48, &unk_2528C61E0);
  v24 = v23 - 8;
  v25 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v42 - v26;
  v28 = type metadata accessor for DeviceEntity();
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v31 = &v42 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25272006C(v49, v27, &qword_27F4FCE48, &unk_2528C61E0);
  v32 = *&v27[*(v24 + 56)];
  sub_25279F090(v27, v31);
  sub_25272006C(v50, v13, &qword_27F4FCDB8, &unk_2528C5CC0);
  v33 = sub_2528C00D0();
  v34 = *(v33 - 8);
  if ((*(v34 + 48))(v13, 1, v33) == 1)
  {

    sub_2527213D8(v13, &qword_27F4FCDB8, &unk_2528C5CC0);
    (*(v18 + 56))(v17, 1, 1, v51);
LABEL_5:
    sub_25272E840(v31);
    return sub_2527213D8(v17, &qword_27F4FCEF0, &unk_2528C6AB0);
  }

  sub_252819FA8(v9);
  sub_2528C0080();
  (*(v47 + 8))(v9, v48);
  (*(v34 + 8))(v13, v33);
  v35 = v51;
  if ((*(v18 + 48))(v17, 1, v51) == 1)
  {

    goto LABEL_5;
  }

  v37 = v43;
  (*(v18 + 32))(v43, v17, v35);
  v38 = v44;
  (*(v18 + 16))(v44, v37, v35);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD1F8, &unk_2528CDFF0);
  v40 = *(v39 + 48);
  v41 = v45;
  *v45 = v32;
  sub_25272E7DC(v31, v41 + v40);
  (*(*(v39 - 8) + 56))(v41, 0, 1, v39);
  sub_252840D4C(v41, v38);
  (*(v18 + 8))(v37, v35);
  return sub_25272E840(v31);
}

void sub_25279B4A8(uint64_t a1)
{
  v1 = a1;
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = 0;

  while (v5)
  {
LABEL_10:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = (v7 << 9) | (8 * v9);
    if (*(*(*(v1 + 56) + v10) + 16))
    {
      v11 = *(*(v1 + 48) + v10);
      v12 = *(*(v1 + 56) + v10);

      v13 = sub_2528C0890();
      v14 = sub_2528C0D10();
      if (os_log_type_enabled(v13, v14))
      {
        log = v13;
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v23 = v16;
        *v15 = 134218242;
        *(v15 + 4) = v11;
        *(v15 + 12) = 2080;
        sub_25274A51C();
        v17 = sub_2528C08E0();
        v19 = v18;

        v20 = sub_2527389AC(v17, v19, &v23);
        v1 = v21;

        *(v15 + 14) = v20;
        _os_log_impl(&dword_252711000, log, v14, "Matter device %llu exited with errors %s", v15, 0x16u);
        __swift_destroy_boxed_opaque_existential_0Tm(v16);
        MEMORY[0x2530A8D80](v16, -1, -1);
        MEMORY[0x2530A8D80](v15, -1, -1);
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      return;
    }

    if (v8 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_10;
    }
  }
}

uint64_t sub_25279B6D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 88) = a6;
  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  sub_2528BEFC0();
  v7 = *(MEMORY[0x277D15430] + 4);
  v8 = swift_task_alloc();
  *(v6 + 56) = v8;
  *v8 = v6;
  v8[1] = sub_25279B780;

  return MEMORY[0x28216EA40]();
}

uint64_t sub_25279B780(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 88);
  v7 = *v1;
  v4[8] = a1;

  v8 = *(MEMORY[0x277D15440] + 4);
  v9 = swift_task_alloc();
  v4[9] = v9;
  *v9 = v7;
  v9[1] = sub_25279B934;
  v10 = v3[6];
  v11 = v3[5];
  v12 = v3[4];
  v13 = v3[3];
  v14 = v3[2];

  return MEMORY[0x28216EA68](v14, v13, v12, v11, 1, v10, v6 & 1);
}

uint64_t sub_25279B934()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  *(v3 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25279BA70, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_25279BA70()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 80);

  return v1();
}

uint64_t sub_25279BAD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a3;
  v37 = a2;
  v38 = sub_2528BECF0();
  v4 = *(v38 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v38);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_2528BF9D0();
  v8 = *(v36 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v36);
  v32 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v34 = &v31 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE48, &unk_2528C61E0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v31 - v15;
  v17 = type metadata accessor for DeviceEntity();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a1;
  sub_25272006C(a1, v16, &qword_27F4FCE48, &unk_2528C61E0);
  v21 = *&v16[*(v13 + 48)];

  sub_25279F090(v16, v20);
  v22 = sub_2528BF370();
  sub_252819FA8(v7);
  if (*(v22 + 16) && (v23 = sub_252785C40(v7), (v24 & 1) != 0))
  {
    v25 = v32;
    v26 = v36;
    (*(v8 + 16))(v32, *(v22 + 56) + *(v8 + 72) * v23, v36);
    (*(v4 + 8))(v7, v38);

    v27 = v34;
    (*(v8 + 32))(v34, v25, v26);
    sub_25272006C(v33, v16, &qword_27F4FCE48, &unk_2528C61E0);
    v28 = *&v16[*(v13 + 48)];
    v29 = sub_25272E840(v16);
    MEMORY[0x28223BE20](v29);
    *(&v31 - 4) = v20;
    *(&v31 - 3) = v27;
    *(&v31 - 2) = v35;
    sub_2527E5018(sub_25279F318, (&v31 - 6), v28);

    (*(v8 + 8))(v27, v26);
  }

  else
  {

    (*(v4 + 8))(v7, v38);
  }

  return sub_25272E840(v20);
}

uint64_t sub_25279BE90(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC628, &qword_2528C4750);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v39 - v10;
  v49 = sub_2528BECF0();
  v12 = *(v49 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v49);
  v15 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD4B0, &unk_2528D4CC0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = v39 - v18;
  LOBYTE(v18) = *(a1 + 32);
  v20 = *(a1 + 16);
  v52[0] = *a1;
  v52[1] = v20;
  v53 = v18;
  v21 = *(a2 + 16);
  sub_2528BE6B0();
  v54 = v50;
  v22 = v52;
  v23 = v48;
  result = sub_2527E7218(&v54, a3);
  if (!v23)
  {
    v39[1] = 0;
    v43 = v16;
    v45 = v11;
    v47 = a2;
    v48 = result;
    v25 = result + 64;
    v26 = 1 << *(result + 32);
    v27 = -1;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    v28 = v27 & *(result + 64);
    v29 = (v26 + 63) >> 6;
    v41 = (v12 + 32);
    v42 = (v12 + 48);
    v40 = (v12 + 8);

    v30 = 0;
    v46 = a4;
    v44 = v15;
    if (v28)
    {
      while (1)
      {
        v31 = v30;
LABEL_9:
        v32 = __clz(__rbit64(v28)) | (v31 << 6);
        v33 = v48;
        v34 = *(v48 + 48);
        v35 = sub_2528BFDE0();
        (*(*(v35 - 8) + 16))(v19, v34 + *(*(v35 - 8) + 72) * v32, v35);
        sub_25272BF98(*(v33 + 56) + 32 * v32, &v19[*(v43 + 48)]);
        v36 = *(v47 + 8);
        sub_2528BE6B0();
        v22 = v45;
        sub_2528BECA0();

        v37 = v49;
        if ((*v42)(v22, 1, v49) == 1)
        {
          break;
        }

        v28 &= v28 - 1;
        v38 = v44;
        (*v41)(v44, v22, v37);
        v22 = v46;
        sub_2528C0510();
        (*v40)(v38, v37);
        sub_2527213D8(v19, &qword_27F4FD4B0, &unk_2528D4CC0);
        v30 = v31;
        if (!v28)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      while (1)
      {
        v31 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          break;
        }

        if (v31 >= v29)
        {
        }

        v28 = *(v25 + 8 * v31);
        ++v30;
        if (v28)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    sub_2527213D8(v22, &qword_27F4FC628, &qword_2528C4750);
    *&v52[0] = 0;
    *(&v52[0] + 1) = 0xE000000000000000;
    sub_2528C0E70();
    MEMORY[0x2530A80B0](0xD00000000000001CLL, 0x80000002528E5760);
    type metadata accessor for DeviceEntity();
    sub_2528C0ED0();
    MEMORY[0x2530A80B0](0x203A646920, 0xE500000000000000);
    sub_2528BE6B0();
    MEMORY[0x2530A80B0](v50, v51);

    MEMORY[0x2530A80B0](0x64697575206F7420, 0xE800000000000000);
    result = sub_2528C0EE0();
    __break(1u);
  }

  return result;
}

uint64_t sub_25279C334@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v26 = a1;
  v27 = a2;
  v2 = sub_2528BF290();
  v24 = *(v2 - 8);
  v25 = v2;
  v3 = *(v24 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2528BECF0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCEF0, &unk_2528C6AB0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v24 - v13;
  v15 = sub_2528BFB20();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252819FA8(v10);
  sub_2528C0080();
  (*(v7 + 8))(v10, v6);
  v20 = (*(v16 + 48))(v14, 1, v15);
  if (v20 == 1)
  {
    result = sub_2527213D8(v14, &qword_27F4FCEF0, &unk_2528C6AB0);
    v22 = 0;
  }

  else
  {
    (*(v16 + 32))(v19, v14, v15);
    sub_2528BFAB0();
    v22 = sub_2528BF0E0();
    (*(v24 + 8))(v5, v25);
    result = (*(v16 + 8))(v19, v15);
  }

  v23 = v27;
  *v27 = v22;
  *(v23 + 8) = v20 == 1;
  return result;
}

uint64_t sub_25279C630@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_2528BECF0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 uniqueIdentifier];
  sub_2528BECD0();

  v12 = sub_2528BECC0();
  (*(v7 + 8))(v10, v6);
  if (v12)
  {
    return sub_25272006C(a2, a3, &qword_27F4FC480, &unk_2528C7FA0);
  }

  sub_2528C0580();
  v14 = sub_2528C05D0();
  return (*(*(v14 - 8) + 56))(a3, 0, 1, v14);
}

uint64_t sub_25279C7AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD1F8, &unk_2528CDFF0);
  v47 = *(v2 - 8);
  v48 = v2;
  v3 = *(v47 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v46 = (&v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = MEMORY[0x28223BE20](v4);
  v45 = (&v36 - v7);
  MEMORY[0x28223BE20](v6);
  v44 = &v36 - v8;
  v53 = sub_2528BFB20();
  v9 = *(v53 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v53);
  v52 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD4A0, &unk_2528D4340);
  result = sub_2528C0F00();
  v13 = result;
  v14 = 0;
  v49 = a1;
  v17 = *(a1 + 64);
  v16 = a1 + 64;
  v15 = v17;
  v18 = 1 << *(v16 - 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v15;
  v37 = (v18 + 63) >> 6;
  v38 = v16;
  v40 = result + 64;
  v41 = v9 + 16;
  v42 = result;
  v43 = v9;
  v39 = v9 + 32;
  if (v20)
  {
    while (1)
    {
      v21 = __clz(__rbit64(v20));
      v50 = (v20 - 1) & v20;
LABEL_10:
      v24 = v21 | (v14 << 6);
      v25 = v49;
      v26 = *(v49 + 48);
      v27 = v43;
      v51 = *(v43 + 72) * v24;
      (*(v43 + 16))(v52, v26 + v51, v53);
      v28 = v44;
      sub_25272006C(*(v25 + 56) + *(v47 + 72) * v24, v44, &qword_27F4FD1F8, &unk_2528CDFF0);
      v29 = v45;
      sub_25272006C(v28, v45, &qword_27F4FD1F8, &unk_2528CDFF0);
      v30 = *v29;
      v31 = *(v48 + 48);
      v32 = v46;
      *v46 = *v29;
      sub_25279F090(v29 + v31, v32 + v31);

      sub_2527213D8(v32, &qword_27F4FD1F8, &unk_2528CDFF0);
      sub_2527213D8(v28, &qword_27F4FD1F8, &unk_2528CDFF0);
      *(v40 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      v13 = v42;
      result = (*(v27 + 32))(*(v42 + 48) + v51, v52, v53);
      *(*(v13 + 56) + 8 * v24) = v30;
      v33 = *(v13 + 16);
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        break;
      }

      *(v13 + 16) = v35;
      v20 = v50;
      if (!v50)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v22 = v14;
    while (1)
    {
      v14 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v14 >= v37)
      {
        return v13;
      }

      v23 = *(v38 + 8 * v14);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v50 = (v23 - 1) & v23;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25279CB54(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v45 = a1;
  v49 = *MEMORY[0x277D85DE8];
  v6 = sub_2528BFDE0();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v10) = *(a3 + 32);
  v12 = ((1 << v10) + 63) >> 6;
  if ((v10 & 0x3Fu) > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v37 = v12;
    v43 = v11;
    v44 = v9;
    v48 = v4;
    v39 = &v36;
    MEMORY[0x28223BE20](v9);
    v38 = &v36 - ((v13 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v38, v13);
    v14 = 0;
    v46 = a3;
    v16 = *(a3 + 56);
    a3 += 56;
    v15 = v16;
    v17 = 1 << *(a3 - 24);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & v15;
    v11 = ((v17 + 63) >> 6);
    v40 = 0;
    v41 = v7 + 2;
    v42 = (v7 + 1);
    while (v19)
    {
      v20 = __clz(__rbit64(v19));
      v47 = (v19 - 1) & v19;
LABEL_12:
      v12 = v20 | (v14 << 6);
      v23 = *(v46 + 48) + v7[9] * v12;
      v4 = v7;
      v24 = v7[2];
      v25 = v43;
      v26 = v44;
      v24(v43, v23, v44);
      v27 = v48;
      v28 = v45(v25);
      v48 = v27;
      if (v27)
      {
        (*v42)(v25, v26);

        result = swift_willThrow();
        goto LABEL_18;
      }

      v29 = v28;
      v9 = (*v42)(v25, v26);
      v7 = v4;
      v19 = v47;
      if (v29)
      {
        *&v38[(v12 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v12;
        if (__OFADD__(v40++, 1))
        {
          __break(1u);
LABEL_17:
          result = sub_25283004C(v38, v37, v40, v46);
          goto LABEL_18;
        }
      }
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v11)
      {
        goto LABEL_17;
      }

      v22 = *(a3 + 8 * v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v47 = (v22 - 1) & v22;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:
    v33 = v9;
    sub_2528BEA50();
    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v9 = v33;
  }

  v34 = swift_slowAlloc();
  v35 = sub_25279D14C(v34, v12, a3, v45);

  result = MEMORY[0x2530A8D80](v34, -1, -1);
  if (!v4)
  {
    result = v35;
  }

LABEL_18:
  v32 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_25279CEEC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v36 = a4;
  v30 = a2;
  v31 = a1;
  v39 = sub_2528BFDE0();
  v6 = *(*(v39 - 8) + 64);
  result = MEMORY[0x28223BE20](v39);
  v37 = a3;
  v38 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v13 = *(a3 + 56);
  v12 = a3 + 56;
  v11 = v13;
  v14 = 1 << *(v12 - 24);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  v34 = v8 + 16;
  v35 = v8;
  v32 = 0;
  v33 = (v8 + 8);
  while (v16)
  {
    v18 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v19 = v18 | (v10 << 6);
    v20 = v39;
    v21 = v38;
LABEL_11:
    (*(v35 + 16))(v21, *(v37 + 48) + *(v35 + 72) * v19, v20);
    v24 = v36(v21);
    v25 = v21;
    if (v4)
    {
      return (*v33)(v21, v20);
    }

    v26 = v24;
    result = (*v33)(v25, v20);
    if (v26)
    {
      *(v31 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      if (__OFADD__(v32++, 1))
      {
        __break(1u);
LABEL_16:
        v28 = v37;
        sub_2528BEA50();
        return sub_25283004C(v31, v30, v32, v28);
      }
    }
  }

  v22 = v10;
  v20 = v39;
  v21 = v38;
  while (1)
  {
    v10 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v10 >= v17)
    {
      goto LABEL_16;
    }

    v23 = *(v12 + 8 * v10);
    ++v22;
    if (v23)
    {
      v16 = (v23 - 1) & v23;
      v19 = __clz(__rbit64(v23)) | (v10 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_25279D14C(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
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

    v8 = sub_25279CEEC(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_25279D1DC(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_2528BECF0();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD078, &qword_2528C74A8) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD448, &qword_2528C7FC0);
  v1[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v1[8] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD98, &qword_2528C6200) - 8) + 64) + 15;
  v1[9] = swift_task_alloc();
  v9 = sub_2528BEEC0();
  v1[10] = v9;
  v10 = *(v9 - 8);
  v1[11] = v10;
  v11 = *(v10 + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDB8, &unk_2528C5CC0) - 8) + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD450, &unk_2528C7FC8);
  v1[18] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25279D46C, 0, 0);
}

uint64_t sub_25279D46C()
{
  *(v0 + 184) = sub_2528C0C20();
  *(v0 + 192) = sub_2528C0C10();
  v2 = sub_2528C0BD0();

  return MEMORY[0x2822009F8](sub_25279D504, v2, v1);
}

uint64_t sub_25279D504()
{
  v1 = v0[24];
  v2 = v0[2];

  v0[25] = sub_2528BEF60();

  return MEMORY[0x2822009F8](sub_25279D578, 0, 0);
}

uint64_t sub_25279D578()
{
  v1 = *(v0 + 184);
  *(v0 + 208) = sub_2528C0C10();
  v3 = sub_2528C0BD0();

  return MEMORY[0x2822009F8](sub_25279D604, v3, v2);
}

uint64_t sub_25279D604()
{
  v1 = v0[26];
  v2 = v0[2];

  v0[27] = sub_2528BEF50();

  return MEMORY[0x2822009F8](sub_25279D678, 0, 0);
}

unint64_t sub_25279D678()
{
  v1 = v0[27];
  v143 = v0[25];
  v152 = v0[18];
  v2 = v0[11];
  v3 = v0[4];
  v4 = sub_25278CED4(MEMORY[0x277D84F90]);
  v5 = v1 + 64;
  v6 = -1;
  v7 = -1 << *(v1 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & *(v1 + 64);
  v9 = (63 - v7) >> 6;
  v155 = v4;
  v142 = v3;
  v145 = (v2 + 32);
  v147 = (v3 + 8);
  v141 = v2;
  v113 = v1;

  v11 = 0;
  v110 = v9;
  v111 = v1 + 64;
  v112 = v0;
  while (v8)
  {
LABEL_11:
    v16 = v0[21];
    v17 = v0[22];
    v18 = __clz(__rbit64(v8)) | (v11 << 6);
    v114 = *(v142 + 72);
    v19 = *(v142 + 16);
    v19(v17, *(v113 + 48) + v114 * v18, v0[3]);
    v20 = *(v113 + 56);
    v21 = sub_2528BF400();
    v22 = *(v21 - 8);
    v149 = v21;
    (*(v22 + 16))(v17 + *(v152 + 48), v20 + *(v22 + 72) * v18);
    sub_25272006C(v17, v16, &qword_27F4FD450, &unk_2528C7FC8);
    v116 = v19;
    if (*(v143 + 16))
    {
      v23 = v0[25];
      v24 = sub_252785C40(v0[21]);
      v25 = v0[17];
      if (v26)
      {
        v27 = v24;
        v28 = *(v143 + 56);
        v29 = sub_2528C00D0();
        v30 = *(v29 - 8);
        (*(v30 + 16))(v25, v28 + *(v30 + 72) * v27, v29);
        (*(v30 + 56))(v25, 0, 1, v29);
        goto LABEL_16;
      }
    }

    else
    {
      v25 = v0[17];
    }

    v31 = sub_2528C00D0();
    (*(*(v31 - 8) + 56))(v25, 1, 1, v31);
LABEL_16:
    v32 = v0[21];
    v33 = v0[20];
    v121 = v0[22];
    v123 = v0[19];
    v128 = v0[16];
    v130 = v0[17];
    v132 = v0[15];
    v134 = v33;
    v136 = v0[14];
    v138 = v0[10];
    v34 = v0[3];
    v125 = v0[9];
    v118 = *(v22 + 8);
    v118(v32 + *(v152 + 48), v149);
    v35 = *v147;
    (*v147)(v32, v34);
    sub_25272006C(v121, v33, &qword_27F4FD450, &unk_2528C7FC8);
    sub_25272006C(v121, v123, &qword_27F4FD450, &unk_2528C7FC8);
    (*(v22 + 32))(v125, v123 + *(v152 + 48), v149);
    (*(v22 + 56))(v125, 0, 1, v149);
    sub_25272006C(v130, v128, &qword_27F4FCDB8, &unk_2528C5CC0);
    sub_2528BEE60();
    v36 = v35;
    v35(v123, v34);
    v37 = *v145;
    (*v145)(v136, v132, v138);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    result = sub_252785C40(v134);
    v40 = v155[2];
    v41 = (v39 & 1) == 0;
    v42 = __OFADD__(v40, v41);
    v43 = v40 + v41;
    if (v42)
    {
      goto LABEL_57;
    }

    v44 = v39;
    if (v155[3] < v43)
    {
      v0 = v112;
      v45 = v112[20];
      sub_2527DD288(v43, isUniquelyReferenced_nonNull_native);
      result = sub_252785C40(v45);
      if ((v44 & 1) != (v46 & 1))
      {
LABEL_52:
        v109 = v0[3];

        return sub_2528C10A0();
      }

LABEL_21:
      v47 = v0[22];
      if (v44)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }

    v0 = v112;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_21;
    }

    v55 = result;
    sub_2527E0A4C();
    result = v55;
    v47 = v112[22];
    if (v44)
    {
LABEL_4:
      v12 = v0[17];
      (*(v141 + 40))(v155[7] + *(v141 + 72) * result, v0[14], v0[10]);
      sub_2527213D8(v12, &qword_27F4FCDB8, &unk_2528C5CC0);
      sub_2527213D8(v47, &qword_27F4FD450, &unk_2528C7FC8);
      goto LABEL_5;
    }

LABEL_22:
    v48 = v0[20];
    v139 = v0[17];
    v49 = v0[14];
    v50 = v0[10];
    v51 = v0[3];
    v155[(result >> 6) + 8] |= 1 << result;
    v52 = result;
    v116(v155[6] + result * v114, v48, v51);
    v37(v155[7] + *(v141 + 72) * v52, v49, v50);
    sub_2527213D8(v139, &qword_27F4FCDB8, &unk_2528C5CC0);
    result = sub_2527213D8(v47, &qword_27F4FD450, &unk_2528C7FC8);
    v53 = v155[2];
    v42 = __OFADD__(v53, 1);
    v54 = v53 + 1;
    if (v42)
    {
      goto LABEL_59;
    }

    v155[2] = v54;
LABEL_5:
    v8 &= v8 - 1;
    v13 = v0[20];
    v14 = *(v152 + 48);
    v36(v13, v0[3]);
    result = (v118)(v13 + v14, v149);
    v9 = v110;
    v5 = v111;
  }

  while (1)
  {
    v15 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_56;
    }

    if (v15 >= v9)
    {
      break;
    }

    v8 = *(v5 + 8 * v15);
    ++v11;
    if (v8)
    {
      v11 = v15;
      goto LABEL_11;
    }
  }

  v56 = v0[27];
  v57 = v0[25];
  v58 = v0[11];
  v120 = v0[7];

  v59 = v57 + 64;
  v60 = -1;
  v61 = -1 << *(v57 + 32);
  if (-v61 < 64)
  {
    v60 = ~(-1 << -v61);
  }

  v62 = v60 & *(v57 + 64);
  v63 = (63 - v61) >> 6;
  v115 = (v58 + 16);
  v122 = v57;
  v124 = (v58 + 56);

  v64 = 0;
  v65 = v155;
  v117 = v63;
  v119 = v57 + 64;
  while (v62)
  {
LABEL_37:
    v67 = v0[8];
    v68 = __clz(__rbit64(v62)) | (v64 << 6);
    v126 = *(v142 + 72);
    v156 = *(v142 + 16);
    v156(v67, *(v122 + 48) + v126 * v68, v0[3]);
    v69 = *(v143 + 56);
    v70 = sub_2528C00D0();
    v71 = v69 + *(*(v70 - 8) + 72) * v68;
    v72 = *(v120 + 48);
    v150 = *(v70 - 8);
    v153 = v67;
    v140 = *(v150 + 16);
    v140(v67 + v72, v71, v70);
    if (v65[2] && (v73 = sub_252785C40(v0[8]), (v74 & 1) != 0))
    {
      v75 = v0[10];
      v76 = v0[6];
      (*v115)(v76, v65[7] + *(v141 + 72) * v73, v75);
      (*v124)(v76, 0, 1, v75);
      sub_2527213D8(v76, &qword_27F4FD078, &qword_2528C74A8);
    }

    else
    {
      v135 = v0[13];
      v137 = v0[12];
      v131 = v0[16];
      v133 = v0[10];
      v127 = v0[9];
      v129 = v72;
      v77 = v0[8];
      v78 = v0[5];
      v79 = v0[6];
      v80 = v0[3];
      (*v124)(v79, 1, 1);
      sub_2527213D8(v79, &qword_27F4FD078, &qword_2528C74A8);
      v156(v78, v77, v80);
      v81 = sub_2528BF400();
      (*(*(v81 - 8) + 56))(v127, 1, 1, v81);
      v140(v131, v153 + v129, v70);
      (*(v150 + 56))(v131, 0, 1, v70);
      sub_2528BEE60();
      v82 = *v145;
      (*v145)(v137, v135, v133);
      v83 = swift_isUniquelyReferenced_nonNull_native();
      result = sub_252785C40(v78);
      v85 = v65[2];
      v86 = (v84 & 1) == 0;
      v42 = __OFADD__(v85, v86);
      v87 = v85 + v86;
      if (v42)
      {
        goto LABEL_58;
      }

      v88 = v84;
      if (v65[3] >= v87)
      {
        if ((v83 & 1) == 0)
        {
          v98 = result;
          sub_2527E0A4C();
          result = v98;
        }
      }

      else
      {
        v89 = v0[5];
        sub_2527DD288(v87, v83);
        result = sub_252785C40(v89);
        if ((v88 & 1) != (v90 & 1))
        {
          goto LABEL_52;
        }
      }

      v91 = v0[12];
      v92 = v0[10];
      if (v88)
      {
        (*(v141 + 40))(v65[7] + *(v141 + 72) * result, v0[12], v0[10]);
      }

      else
      {
        v93 = v0[5];
        v94 = v0[3];
        v65[(result >> 6) + 8] |= 1 << result;
        v95 = result;
        v156(v65[6] + result * v126, v93, v94);
        result = (v82)(v65[7] + *(v141 + 72) * v95, v91, v92);
        v96 = v65[2];
        v42 = __OFADD__(v96, 1);
        v97 = v96 + 1;
        if (v42)
        {
          goto LABEL_60;
        }

        v65[2] = v97;
      }

      (*v147)(v0[5], v0[3]);
      v63 = v117;
      v59 = v119;
    }

    v62 &= v62 - 1;
    result = sub_2527213D8(v0[8], &qword_27F4FD448, &qword_2528C7FC0);
  }

  while (1)
  {
    v66 = v64 + 1;
    if (__OFADD__(v64, 1))
    {
      break;
    }

    if (v66 >= v63)
    {
      v99 = v0[25];
      v101 = v0[21];
      v100 = v0[22];
      v103 = v0[19];
      v102 = v0[20];
      v157 = v65;
      v105 = v0[16];
      v104 = v0[17];
      v107 = v0[14];
      v106 = v0[15];
      v144 = v0[13];
      v146 = v0[12];
      v148 = v0[9];
      v151 = v0[8];
      v154 = v0[6];
      v158 = v0[5];

      v108 = v0[1];

      return v108(v157);
    }

    v62 = *(v59 + 8 * v66);
    ++v64;
    if (v62)
    {
      v64 = v66;
      goto LABEL_37;
    }
  }

LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
  return result;
}

uint64_t sub_25279E2F8(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC480, &unk_2528C7FA0) - 8);
  v2[8] = v3;
  v2[9] = *(v3 + 64);
  v2[10] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC628, &qword_2528C4750) - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v5 = sub_2528BECF0();
  v2[12] = v5;
  v6 = *(v5 - 8);
  v2[13] = v6;
  v2[14] = *(v6 + 64);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25279E47C, 0, 0);
}

uint64_t sub_25279E47C()
{
  v48 = v0;
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  sub_25272006C(v0[7], v3, &qword_27F4FC628, &qword_2528C4750);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_2527213D8(v0[11], &qword_27F4FC628, &qword_2528C4750);
    if (qword_27F4FBB40 != -1)
    {
      swift_once();
    }

    v4 = sub_2528C08B0();
    __swift_project_value_buffer(v4, qword_27F5025C8);
    v5 = sub_2528C0890();
    v6 = sub_2528C0CE0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_252711000, v5, v6, "No home entity provided, not filtering homeStates", v7, 2u);
      MEMORY[0x2530A8D80](v7, -1, -1);
    }

    sub_2528BEFC0();
    v8 = *(MEMORY[0x277D153E8] + 4);
    v9 = swift_task_alloc();
    v0[23] = v9;
    *v9 = v0;
    v9[1] = sub_25279ECAC;
    v10 = v0[6];

    return MEMORY[0x28216E990](v10);
  }

  else
  {
    v46 = *(v0[13] + 32);
    v46(v0[17], v0[11], v0[12]);
    if (qword_27F4FBB40 != -1)
    {
      swift_once();
    }

    v11 = v0[16];
    v12 = v0[17];
    v13 = v0[12];
    v14 = v0[13];
    v15 = sub_2528C08B0();
    __swift_project_value_buffer(v15, qword_27F5025C8);
    v45 = *(v14 + 16);
    v45(v11, v12, v13);
    v16 = sub_2528C0890();
    v17 = sub_2528C0CE0();
    v18 = os_log_type_enabled(v16, v17);
    v19 = v0[16];
    v21 = v0[12];
    v20 = v0[13];
    if (v18)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v47 = v23;
      *v22 = 136315138;
      sub_25279F2D0(&qword_27F4FD070, MEMORY[0x277CC95F0]);
      v24 = sub_2528C1040();
      v26 = v25;
      v28 = *(v20 + 8);
      v27 = v20 + 8;
      v28(v19, v21);
      v29 = sub_2527389AC(v24, v26, &v47);

      *(v22 + 4) = v29;
      _os_log_impl(&dword_252711000, v16, v17, "Home entity provided (%s), filtering homeStates", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
      MEMORY[0x2530A8D80](v23, -1, -1);
      MEMORY[0x2530A8D80](v22, -1, -1);
    }

    else
    {

      v30 = *(v20 + 8);
      v27 = v20 + 8;
      v30(v19, v21);
    }

    v0[18] = v27;
    v32 = v0[14];
    v31 = v0[15];
    v33 = v0[12];
    v34 = v0[13];
    v36 = v0[9];
    v35 = v0[10];
    v37 = v0[8];
    v38 = v0[6];
    v45(v31, v0[17], v33);
    sub_25272006C(v38, v35, &qword_27F4FC480, &unk_2528C7FA0);
    v39 = (*(v34 + 80) + 16) & ~*(v34 + 80);
    v40 = (v32 + *(v37 + 80) + v39) & ~*(v37 + 80);
    v41 = swift_allocObject();
    v0[19] = v41;
    v46(v41 + v39, v31, v33);
    sub_25274AA0C(v35, v41 + v40, &qword_27F4FC480, &unk_2528C7FA0);
    sub_2528BEFC0();
    v42 = *(MEMORY[0x277D153F0] + 4);
    v43 = swift_task_alloc();
    v0[20] = v43;
    *v43 = v0;
    v43[1] = sub_25279E990;

    return MEMORY[0x28216E998](sub_25279EFA0, v41);
  }
}

uint64_t sub_25279E990(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 160);
  v7 = *v1;
  *(v3 + 168) = a1;

  v5 = swift_task_alloc();
  *(v3 + 176) = v5;
  *v5 = v7;
  v5[1] = sub_25279EADC;

  return (sub_25279D1DC)(a1);
}

uint64_t sub_25279EADC(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 16) = v1;
  *(v3 + 24) = a1;
  v4 = *(v2 + 176);
  v6 = *v1;

  return MEMORY[0x2822009F8](sub_25279EBDC, 0, 0);
}

uint64_t sub_25279EBDC()
{
  v1 = v0[21];
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[17];
  v5 = v0[12];
  v6 = v0[13];

  (*(v6 + 8))(v4, v5);
  v7 = v0[3];
  v9 = v0[16];
  v8 = v0[17];
  v10 = v0[15];
  v12 = v0[10];
  v11 = v0[11];

  v13 = v0[1];

  return v13(v7);
}

uint64_t sub_25279ECAC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 184);
  v7 = *v1;
  *(v3 + 192) = a1;

  v5 = swift_task_alloc();
  *(v3 + 200) = v5;
  *v5 = v7;
  v5[1] = sub_25279EDF8;

  return (sub_25279D1DC)(a1);
}

uint64_t sub_25279EDF8(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 32) = v1;
  *(v3 + 40) = a1;
  v4 = *(v2 + 200);
  v6 = *v1;

  return MEMORY[0x2822009F8](sub_25279EEF8, 0, 0);
}

uint64_t sub_25279EEF8()
{
  v1 = *(v0 + 40);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v4 = *(v0 + 120);
  v6 = *(v0 + 80);
  v5 = *(v0 + 88);

  v7 = *(v0 + 8);

  return v7(v1);
}

uint64_t sub_25279EFA0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_2528BECF0() - 8);
  v6 = ((*(v5 + 80) + 16) & ~*(v5 + 80)) + *(v5 + 64);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC480, &unk_2528C7FA0) - 8);
  v8 = v2 + ((v6 + *(v7 + 80)) & ~*(v7 + 80));

  return sub_25279C630(a1, v8, a2);
}

uint64_t sub_25279F090(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceEntity();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25279F0F4(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_25271F3AC;

  return sub_25279B6D4(a1, a2, v6, v7, v8, v9);
}

unint64_t sub_25279F1C0()
{
  result = qword_27F4FD480;
  if (!qword_27F4FD480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FD478, &qword_2528C8010);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD480);
  }

  return result;
}

unint64_t sub_25279F27C()
{
  result = qword_27F4FD498;
  if (!qword_27F4FD498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD498);
  }

  return result;
}

uint64_t sub_25279F2D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25279F338@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v8 = *a1;
  v5 = *(v4 + 16);
  sub_2528BE6B0();
  v7[0] = v7[1];
  result = sub_252870A60(v7);
  *a2 = result;
  return result;
}

uint64_t sub_25279F404@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v35 = a2;
  v3 = sub_2528C0390();
  v4 = *(v3 - 8);
  v32 = v3;
  v33 = v4;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v32 - v9;
  v11 = sub_2528C03A0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v32 - v17;
  v19 = sub_2528C03B0();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v20 + 16);
  v34 = a1;
  v24(v23, a1, v19);
  v25 = (*(v20 + 88))(v23, v19);
  if (v25 == *MEMORY[0x277D16818])
  {
    (*(v20 + 96))(v23, v19);
    (*(v12 + 32))(v18, v23, v11);
    (*(v12 + 16))(v16, v18, v11);
    v26 = (*(v12 + 88))(v16, v11);
    if (v26 == *MEMORY[0x277D16800])
    {
      (*(v20 + 8))(v34, v19);
      result = (*(v12 + 8))(v18, v11);
      v28 = 20;
LABEL_26:
      *v35 = v28;
      return result;
    }

    if (v26 == *MEMORY[0x277D16808])
    {
      (*(v20 + 8))(v34, v19);
      result = (*(v12 + 8))(v18, v11);
      v28 = 3;
      goto LABEL_26;
    }

    if (v26 == *MEMORY[0x277D16810])
    {
      (*(v20 + 8))(v34, v19);
      result = (*(v12 + 8))(v18, v11);
      v28 = 4;
      goto LABEL_26;
    }

    if (v26 == *MEMORY[0x277D167F8])
    {
      (*(v20 + 8))(v34, v19);
      result = (*(v12 + 8))(v18, v11);
      v28 = 1;
      goto LABEL_26;
    }

    goto LABEL_46;
  }

  if (v25 != *MEMORY[0x277D167F0])
  {
    if (v25 == *MEMORY[0x277D16820])
    {
      result = (*(v20 + 8))(v34, v19);
      v28 = 2;
      goto LABEL_26;
    }

    sub_2528C1050();
    __break(1u);
LABEL_46:
    sub_2528C1050();
    __break(1u);
    goto LABEL_47;
  }

  (*(v20 + 96))(v23, v19);
  v30 = v32;
  v29 = v33;
  (*(v33 + 32))(v10, v23, v32);
  (*(v29 + 16))(v8, v10, v30);
  v31 = (*(v29 + 88))(v8, v30);
  if (v31 == *MEMORY[0x277D167D8])
  {
    v28 = 6;
LABEL_25:
    (*(v20 + 8))(v34, v19);
    result = (*(v29 + 8))(v10, v30);
    goto LABEL_26;
  }

  if (v31 == *MEMORY[0x277D167E8])
  {
    v28 = 5;
    goto LABEL_25;
  }

  if (v31 == *MEMORY[0x277D16798])
  {
    v28 = 7;
    goto LABEL_25;
  }

  if (v31 == *MEMORY[0x277D16788])
  {
    v28 = 8;
    goto LABEL_25;
  }

  if (v31 == *MEMORY[0x277D167A0])
  {
    v28 = 10;
    goto LABEL_25;
  }

  if (v31 == *MEMORY[0x277D167B0])
  {
    v28 = 9;
    goto LABEL_25;
  }

  if (v31 == *MEMORY[0x277D167A8])
  {
    (*(v20 + 8))(v34, v19);
    result = (*(v29 + 8))(v10, v30);
    v28 = 11;
    goto LABEL_26;
  }

  if (v31 == *MEMORY[0x277D167D0])
  {
    (*(v20 + 8))(v34, v19);
    result = (*(v29 + 8))(v10, v30);
    v28 = 12;
    goto LABEL_26;
  }

  if (v31 == *MEMORY[0x277D16778])
  {
    (*(v20 + 8))(v34, v19);
    result = (*(v29 + 8))(v10, v30);
    v28 = 13;
    goto LABEL_26;
  }

  if (v31 == *MEMORY[0x277D167C0])
  {
    (*(v20 + 8))(v34, v19);
    result = (*(v29 + 8))(v10, v30);
    v28 = 14;
    goto LABEL_26;
  }

  if (v31 == *MEMORY[0x277D167B8])
  {
    (*(v20 + 8))(v34, v19);
    result = (*(v29 + 8))(v10, v30);
    v28 = 15;
    goto LABEL_26;
  }

  if (v31 == *MEMORY[0x277D167C8])
  {
    (*(v20 + 8))(v34, v19);
    result = (*(v29 + 8))(v10, v30);
    v28 = 16;
    goto LABEL_26;
  }

  if (v31 == *MEMORY[0x277D16790])
  {
    (*(v20 + 8))(v34, v19);
    result = (*(v33 + 8))(v10, v32);
    v28 = 17;
    goto LABEL_26;
  }

  if (v31 == *MEMORY[0x277D16780])
  {
    (*(v20 + 8))(v34, v19);
    result = (*(v33 + 8))(v10, v32);
    v28 = 18;
    goto LABEL_26;
  }

  if (v31 == *MEMORY[0x277D167E0])
  {
    (*(v20 + 8))(v34, v19);
    result = (*(v33 + 8))(v10, v32);
    v28 = 19;
    goto LABEL_26;
  }

LABEL_47:
  result = sub_2528C1050();
  __break(1u);
  return result;
}

uint64_t sub_25279FC6C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v65 = a2;
  v3 = sub_2528C03B0();
  v62 = *(v3 - 8);
  v63 = v3;
  v4 = *(v62 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v61 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v53 - v7;
  v9 = sub_2528C0360();
  v56 = *(v9 - 8);
  v57 = v9;
  v10 = *(v56 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v54 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v55 = &v53 - v13;
  v14 = sub_2528C0330();
  v15 = *(v14 - 8);
  v58 = v14;
  v59 = v15;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v60 = &v53 - v20;
  v21 = sub_2528BFDF0();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v53 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v53 - v27;
  v29 = sub_2528BFE00();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = &v53 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(v30 + 16);
  v64 = a1;
  v34(v33, a1, v29);
  v35 = (*(v30 + 88))(v33, v29);
  if (v35 != *MEMORY[0x277D163A8])
  {
    if (v35 == *MEMORY[0x277D16388])
    {
      result = (*(v30 + 8))(v64, v29);
LABEL_13:
      v42 = 2;
      goto LABEL_14;
    }

    sub_2528C1050();
    __break(1u);
    goto LABEL_45;
  }

  (*(v30 + 96))(v33, v29);
  (*(v22 + 32))(v28, v33, v21);
  (*(v22 + 16))(v26, v28, v21);
  v36 = (*(v22 + 88))(v26, v21);
  v37 = v21;
  if (v36 == *MEMORY[0x277D16390])
  {
    (*(v22 + 96))(v26, v21);
    v39 = v62;
    v38 = v63;
    (*(v62 + 32))(v8, v26, v63);
    v40 = v61;
    (*(v39 + 16))(v61, v8, v38);
    sub_25279F404(v40, &v66);
    (*(v30 + 8))(v64, v29);
    (*(v39 + 8))(v8, v38);
    result = (*(v22 + 8))(v28, v37);
    v42 = v66;
LABEL_14:
    *v65 = v42;
    return result;
  }

  if (v36 != *MEMORY[0x277D16398])
  {
    if (v36 == *MEMORY[0x277D163A0])
    {
      (*(v22 + 96))(v26, v21);
      v48 = v55;
      v47 = v56;
      v49 = v57;
      (*(v56 + 32))(v55, v26, v57);
      v50 = v54;
      (*(v47 + 16))(v54, v48, v49);
      v51 = (*(v47 + 88))(v50, v49);
      if (v51 == *MEMORY[0x277D16770])
      {
        goto LABEL_11;
      }

      if (v51 == *MEMORY[0x277D16750])
      {
        (*(v30 + 8))(v64, v29);
        (*(v47 + 8))(v48, v49);
        result = (*(v22 + 8))(v28, v37);
        v42 = 4;
        goto LABEL_14;
      }

      if (v51 == *MEMORY[0x277D16760])
      {
LABEL_11:
        (*(v30 + 8))(v64, v29);
        (*(v47 + 8))(v48, v49);
        goto LABEL_12;
      }

      if (v51 == *MEMORY[0x277D16758] || v51 == *MEMORY[0x277D16768])
      {
        (*(v30 + 8))(v64, v29);
        (*(v47 + 8))(v48, v49);
        result = (*(v22 + 8))(v28, v37);
        v42 = 1;
        goto LABEL_14;
      }

      goto LABEL_46;
    }

LABEL_45:
    sub_2528C1050();
    __break(1u);
LABEL_46:
    sub_2528C1050();
    __break(1u);
    goto LABEL_47;
  }

  (*(v22 + 96))(v26, v21);
  v44 = v59;
  v43 = v60;
  v45 = v58;
  (*(v59 + 32))(v60, v26, v58);
  (*(v44 + 16))(v19, v43, v45);
  v46 = (*(v44 + 88))(v19, v45);
  if (v46 == *MEMORY[0x277D16748])
  {
    (*(v30 + 8))(v64, v29);
    (*(v44 + 8))(v43, v45);
LABEL_12:
    result = (*(v22 + 8))(v28, v37);
    goto LABEL_13;
  }

  v52 = v28;
  if (v46 == *MEMORY[0x277D166F0])
  {
    v42 = 4;
LABEL_39:
    (*(v30 + 8))(v64, v29);
    (*(v44 + 8))(v60, v45);
    result = (*(v22 + 8))(v52, v37);
    goto LABEL_14;
  }

  if (v46 == *MEMORY[0x277D16718])
  {
    v42 = 2;
    goto LABEL_39;
  }

  if (v46 == *MEMORY[0x277D166F8])
  {
    v42 = 1;
    goto LABEL_39;
  }

  if (v46 == *MEMORY[0x277D16740])
  {
    v42 = 5;
    goto LABEL_39;
  }

  if (v46 == *MEMORY[0x277D16710])
  {
    v42 = 7;
    goto LABEL_39;
  }

  if (v46 == *MEMORY[0x277D16708])
  {
    v42 = 8;
    goto LABEL_39;
  }

  if (v46 == *MEMORY[0x277D16720])
  {
    v42 = 10;
    goto LABEL_39;
  }

  if (v46 == *MEMORY[0x277D16730])
  {
    v42 = 9;
    goto LABEL_39;
  }

  if (v46 == *MEMORY[0x277D16728])
  {
    v42 = 11;
    goto LABEL_39;
  }

  if (v46 == *MEMORY[0x277D16738])
  {
    (*(v30 + 8))(v64, v29);
    (*(v44 + 8))(v60, v45);
    result = (*(v22 + 8))(v28, v37);
    v42 = 12;
    goto LABEL_14;
  }

  if (v46 == *MEMORY[0x277D16700])
  {
    (*(v30 + 8))(v64, v29);
    (*(v59 + 8))(v60, v45);
    result = (*(v22 + 8))(v28, v37);
    v42 = 13;
    goto LABEL_14;
  }

LABEL_47:
  result = sub_2528C1050();
  __break(1u);
  return result;
}

uint64_t sub_2527A0688@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result > 2002)
  {
    switch(result)
    {
      case 2003:
        *a2 = 17;
        break;
      case 2404:
        *a2 = 16;
        break;
      case 2405:
        *a2 = 18;
        break;
      default:
LABEL_22:
        v2 = 20;
LABEL_23:
        *a2 = v2;
        break;
    }
  }

  else
  {
    v2 = 4;
    switch(result)
    {
      case 1:
      case 31:
      case 95:
        *a2 = 19;
        break;
      case 4:
        goto LABEL_23;
      case 5:
        *a2 = 7;
        break;
      case 8:
        *a2 = 9;
        break;
      case 10:
        *a2 = 15;
        break;
      case 15:
        *a2 = 8;
        break;
      case 25:
        *a2 = 13;
        break;
      case 44:
        *a2 = 6;
        break;
      case 45:
        *a2 = 5;
        break;
      case 63:
        *a2 = 10;
        break;
      case 64:
        *a2 = 12;
        break;
      case 65:
        *a2 = 11;
        break;
      case 82:
        *a2 = 14;
        break;
      case 88:
        *a2 = 3;
        break;
      default:
        goto LABEL_22;
    }
  }

  return result;
}

uint64_t sub_2527A07A4()
{
  sub_2528C1130();
  MEMORY[0x2530A87A0](0);
  return sub_2528C1180();
}

uint64_t sub_2527A0810()
{
  sub_2528C1130();
  MEMORY[0x2530A87A0](0);
  return sub_2528C1180();
}

uint64_t sub_2527A0850(uint64_t a1)
{
  v2 = sub_2527A2E9C();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2527A088C(uint64_t a1)
{
  v2 = sub_2527A2E9C();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_2527A0910()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD620, &qword_2528C8808);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD418, &unk_2528C8810);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2528C80D0;
  v4 = (v3 + v2);
  v5 = *(v0 + 48);
  *v4 = 0;
  sub_2528BE8C0();
  v6 = *(v0 + 48);
  v4[v1] = 1;
  sub_2528BE8C0();
  v7 = *(v0 + 48);
  v4[2 * v1] = 2;
  sub_2528BE8C0();
  v8 = *(v0 + 48);
  v4[3 * v1] = 3;
  sub_2528BE8C0();
  v9 = *(v0 + 48);
  v4[4 * v1] = 4;
  sub_2528BE8C0();
  v10 = *(v0 + 48);
  v4[5 * v1] = 5;
  sub_2528BE8C0();
  v11 = *(v0 + 48);
  v4[6 * v1] = 6;
  sub_2528BE8C0();
  v12 = *(v0 + 48);
  v4[7 * v1] = 7;
  sub_2528BE8C0();
  v13 = *(v0 + 48);
  v4[8 * v1] = 8;
  sub_2528BE8C0();
  v14 = *(v0 + 48);
  v4[9 * v1] = 9;
  sub_2528BE8C0();
  v15 = *(v0 + 48);
  v4[10 * v1] = 10;
  sub_2528BE8C0();
  v16 = *(v0 + 48);
  v4[11 * v1] = 11;
  sub_2528BE8C0();
  v17 = *(v0 + 48);
  v4[12 * v1] = 12;
  sub_2528BE8C0();
  v18 = *(v0 + 48);
  v4[13 * v1] = 13;
  sub_2528BE8C0();
  v19 = *(v0 + 48);
  v4[14 * v1] = 14;
  sub_2528BE8C0();
  v20 = *(v0 + 48);
  v4[15 * v1] = 15;
  sub_2528BE8C0();
  v21 = *(v0 + 48);
  v4[16 * v1] = 16;
  sub_2528BE8C0();
  v22 = *(v0 + 48);
  v4[17 * v1] = 17;
  sub_2528BE8C0();
  v23 = *(v0 + 48);
  v4[18 * v1] = 18;
  sub_2528BE8C0();
  v24 = *(v0 + 48);
  v4[19 * v1] = 19;
  sub_2528BE8C0();
  v25 = sub_25278E364(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  off_27F4FD4D0 = v25;
  return result;
}

uint64_t HomeError.localizedStringResource.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2528BE910();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC130, &unk_2528C6A80);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v22 - v10;
  v12 = *v1;
  if (qword_27F4FB698 != -1)
  {
    v21 = *v1;
    swift_once();
    v12 = v21;
  }

  v13 = off_27F4FD4D0;
  if (*(off_27F4FD4D0 + 2) && (v14 = sub_252785F90(v12), (v15 & 1) != 0))
  {
    (*(v4 + 16))(v7, v13[7] + *(v4 + 72) * v14, v3);
    sub_2528BE8F0();
    (*(v4 + 8))(v7, v3);
    v16 = sub_2528BEC40();
    v17 = *(v16 - 8);
    (*(v17 + 56))(v11, 0, 1, v16);
    return (*(v17 + 32))(a1, v11, v16);
  }

  else
  {
    v19 = sub_2528BEC40();
    v20 = *(v19 - 8);
    (*(v20 + 56))(v11, 1, 1, v19);
    sub_2528BEC20();
    result = (*(v20 + 48))(v11, 1, v19);
    if (result != 1)
    {
      return sub_2527A2150(v11);
    }
  }

  return result;
}

unint64_t HomeError.rawValue.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
      return result;
    case 3:
    case 0xB:
      result = 0xD00000000000001CLL;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
    case 7:
    case 0x12:
      result = 0xD000000000000016;
      break;
    case 6:
      result = 0xD000000000000015;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    case 0xA:
      result = 0xD000000000000018;
      break;
    case 0xC:
      result = 0xD000000000000020;
      break;
    case 0xE:
      result = 0x6F4C656369766564;
      break;
    case 0xF:
      result = 0x6544737365636361;
      break;
    case 0x10:
      result = 0xD000000000000010;
      break;
    case 0x11:
      result = 0xD000000000000012;
      break;
    case 0x13:
      result = 0xD00000000000001BLL;
      break;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

unint64_t sub_2527A1388@<X0>(unint64_t *a1@<X8>)
{
  result = HomeError.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2527A13D8(uint64_t a1)
{
  v2 = sub_252746B7C();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_2527A14A4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_2528BE9F0();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_2527A153C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD618, &qword_2528C87F8);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD408, &qword_2528C8800);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2528C80D0;
  v4 = (v3 + v2);
  v5 = *(v0 + 48);
  *v4 = 0;
  sub_2528BE8C0();
  v6 = *(v0 + 48);
  v4[v1] = 1;
  sub_2528BE8C0();
  v7 = *(v0 + 48);
  v4[2 * v1] = 2;
  sub_2528BE8C0();
  v8 = *(v0 + 48);
  v4[3 * v1] = 3;
  sub_2528BE8C0();
  v9 = *(v0 + 48);
  v4[4 * v1] = 4;
  sub_2528BE8C0();
  v10 = *(v0 + 48);
  v4[5 * v1] = 5;
  sub_2528BE8C0();
  v11 = *(v0 + 48);
  v4[6 * v1] = 6;
  sub_2528BE8C0();
  v12 = *(v0 + 48);
  v4[7 * v1] = 7;
  sub_2528BE8C0();
  v13 = *(v0 + 48);
  v4[8 * v1] = 8;
  sub_2528BE8C0();
  v14 = *(v0 + 48);
  v4[9 * v1] = 9;
  sub_2528BE8C0();
  v15 = *(v0 + 48);
  v4[10 * v1] = 10;
  sub_2528BE8C0();
  v16 = *(v0 + 48);
  v4[11 * v1] = 11;
  sub_2528BE8C0();
  v17 = *(v0 + 48);
  v4[12 * v1] = 12;
  sub_2528BE8C0();
  v18 = *(v0 + 48);
  v4[13 * v1] = 13;
  sub_2528BE8C0();
  v19 = *(v0 + 48);
  v4[14 * v1] = 14;
  sub_2528BE8C0();
  v20 = *(v0 + 48);
  v4[15 * v1] = 15;
  sub_2528BE8C0();
  v21 = *(v0 + 48);
  v4[16 * v1] = 16;
  sub_2528BE8C0();
  v22 = *(v0 + 48);
  v4[17 * v1] = 17;
  sub_2528BE8C0();
  v23 = *(v0 + 48);
  v4[18 * v1] = 18;
  sub_2528BE8C0();
  v24 = *(v0 + 48);
  v4[19 * v1] = 19;
  sub_2528BE8C0();
  v25 = sub_25278E574(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27F4FD4F0 = v25;
  return result;
}

uint64_t sub_2527A1A10(void *a1, uint64_t *a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v6 = *a2;
  }
}

uint64_t sub_2527A1A84@<X0>(char *a1@<X8>)
{
  v2 = sub_2528C1070();

  v4 = 0;
  v5 = 2;
  switch(v2)
  {
    case 0:
      goto LABEL_3;
    case 1:
      v4 = 1;
LABEL_3:
      v5 = v4;
      break;
    case 2:
      break;
    case 3:
      v5 = 3;
      break;
    case 4:
      v5 = 4;
      break;
    case 5:
      v5 = 5;
      break;
    case 6:
      v5 = 6;
      break;
    case 7:
      v5 = 7;
      break;
    case 8:
      v5 = 8;
      break;
    case 9:
      v5 = 9;
      break;
    case 10:
      v5 = 10;
      break;
    case 11:
      v5 = 11;
      break;
    case 12:
      v5 = 12;
      break;
    case 13:
      v5 = 13;
      break;
    case 14:
      v5 = 14;
      break;
    case 15:
      v5 = 15;
      break;
    case 16:
      v5 = 16;
      break;
    case 17:
      v5 = 17;
      break;
    case 18:
      v5 = 18;
      break;
    case 19:
      v5 = 19;
      break;
    default:
      v5 = 20;
      break;
  }

  *a1 = v5;
  return result;
}

unint64_t DeviceError.rawValue.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      result = 0xD00000000000001DLL;
      break;
    case 2:
      return result;
    case 3:
    case 0xF:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0xD00000000000001ALL;
      break;
    case 5:
      result = 0x6B63757453637672;
      break;
    case 6:
    case 0x13:
      result = 0xD00000000000001BLL;
      break;
    case 7:
    case 0xA:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0x4274737544637672;
      break;
    case 9:
    case 0xB:
      result = 0xD000000000000013;
      break;
    case 0xC:
      result = 0xD000000000000018;
      break;
    case 0xD:
      result = 0x6574746142637672;
      break;
    case 0xE:
      result = 0xD000000000000018;
      break;
    case 0x10:
      result = 0xD000000000000018;
      break;
    case 0x11:
      result = 0x6C65656857637672;
      break;
    case 0x12:
      result = 0x6873757242637672;
      break;
    default:
      result = 0xD000000000000016;
      break;
  }

  return result;
}

uint64_t sub_2527A1DF8(char *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v14 = *a1;
  v13 = *a2;
  v6 = a5();
  v8 = v7;
  if (v6 == a5() && v8 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2528C1060();
  }

  return v11 & 1;
}

uint64_t sub_2527A1EB8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *v3;
  v6 = sub_2528C1130();
  a3(v6);
  sub_2528C0A40();

  return sub_2528C1180();
}

uint64_t sub_2527A1F40(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = *v4;
  a4();
  sub_2528C0A40();
}

uint64_t sub_2527A1FC0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *v4;
  v7 = sub_2528C1130();
  a4(v7);
  sub_2528C0A40();

  return sub_2528C1180();
}

unint64_t sub_2527A2038@<X0>(unint64_t *a1@<X8>)
{
  result = DeviceError.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2527A2060(uint64_t a1)
{
  v2 = sub_2527A2824();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t sub_2527A20D0(uint64_t a1)
{
  v2 = sub_2527A28E4();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_2527A2150(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC130, &unk_2528C6A80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2527A21BC()
{
  result = qword_27F4FD4F8;
  if (!qword_27F4FD4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD4F8);
  }

  return result;
}

unint64_t sub_2527A2214()
{
  result = qword_27F4FD500;
  if (!qword_27F4FD500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD500);
  }

  return result;
}

unint64_t sub_2527A226C()
{
  result = qword_27F4FD508;
  if (!qword_27F4FD508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD508);
  }

  return result;
}

unint64_t sub_2527A22C4()
{
  result = qword_27F4FD510;
  if (!qword_27F4FD510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD510);
  }

  return result;
}

unint64_t sub_2527A231C()
{
  result = qword_27F4FD518;
  if (!qword_27F4FD518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD518);
  }

  return result;
}

unint64_t sub_2527A2370()
{
  result = qword_27F4FD520;
  if (!qword_27F4FD520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD520);
  }

  return result;
}

unint64_t sub_2527A23C4()
{
  result = qword_27F4FD528;
  if (!qword_27F4FD528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD528);
  }

  return result;
}

unint64_t sub_2527A241C()
{
  result = qword_27F4FD530;
  if (!qword_27F4FD530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD530);
  }

  return result;
}

unint64_t sub_2527A248C()
{
  result = qword_27F4FD538;
  if (!qword_27F4FD538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD538);
  }

  return result;
}

unint64_t sub_2527A24E4()
{
  result = qword_27F4FD540;
  if (!qword_27F4FD540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD540);
  }

  return result;
}

unint64_t sub_2527A253C()
{
  result = qword_27F4FD548;
  if (!qword_27F4FD548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD548);
  }

  return result;
}

unint64_t sub_2527A25C4()
{
  result = qword_27F4FD560;
  if (!qword_27F4FD560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD560);
  }

  return result;
}

unint64_t sub_2527A261C()
{
  result = qword_27F4FD568;
  if (!qword_27F4FD568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD568);
  }

  return result;
}

unint64_t sub_2527A2674()
{
  result = qword_27F4FD570;
  if (!qword_27F4FD570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD570);
  }

  return result;
}

unint64_t sub_2527A26CC()
{
  result = qword_27F4FD578;
  if (!qword_27F4FD578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD578);
  }

  return result;
}

unint64_t sub_2527A2724()
{
  result = qword_27F4FD580;
  if (!qword_27F4FD580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD580);
  }

  return result;
}

unint64_t sub_2527A2778()
{
  result = qword_27F4FD588;
  if (!qword_27F4FD588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD588);
  }

  return result;
}

unint64_t sub_2527A27CC()
{
  result = qword_27F4FD590;
  if (!qword_27F4FD590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD590);
  }

  return result;
}

unint64_t sub_2527A2824()
{
  result = qword_27F4FD598;
  if (!qword_27F4FD598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD598);
  }

  return result;
}

unint64_t sub_2527A28E4()
{
  result = qword_27F4FD5A0;
  if (!qword_27F4FD5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD5A0);
  }

  return result;
}

unint64_t sub_2527A293C()
{
  result = qword_27F4FD5A8;
  if (!qword_27F4FD5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD5A8);
  }

  return result;
}

unint64_t sub_2527A2994()
{
  result = qword_27F4FD5B0;
  if (!qword_27F4FD5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD5B0);
  }

  return result;
}

unint64_t sub_2527A29EC()
{
  result = qword_27F4FD5B8;
  if (!qword_27F4FD5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD5B8);
  }

  return result;
}

uint64_t sub_2527A2A70(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t type metadata accessor for HomeAppIntentError()
{
  result = qword_27F4FD5D0;
  if (!qword_27F4FD5D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2527A2B10()
{
  sub_2527A2BA0();
  if (v0 <= 0x3F)
  {
    sub_2527A2C2C();
    if (v1 <= 0x3F)
    {
      sub_2527A2CC4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_2527A2BA0()
{
  if (!qword_27F4FD5E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FC628, &qword_2528C4750);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FD5E8, &qword_2528C8700);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F4FD5E0);
    }
  }
}

void sub_2527A2C2C()
{
  if (!qword_27F4FD5F0)
  {
    sub_2527A2C74();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4FD5F0);
    }
  }
}

void sub_2527A2C74()
{
  if (!qword_27F4FD5F8)
  {
    v0 = sub_2528C0DC0();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4FD5F8);
    }
  }
}

void sub_2527A2CC4()
{
  if (!qword_27F4FD600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FD608, &qword_2528C8708);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F4FD600);
    }
  }
}

uint64_t sub_2527A2D4C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_2527A2DDC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2527A2E9C()
{
  result = qword_27F4FD610;
  if (!qword_27F4FD610)
  {
    type metadata accessor for HomeAppIntentError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD610);
  }

  return result;
}

unint64_t sub_2527A2F08()
{
  result = qword_27F4FD628;
  if (!qword_27F4FD628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD628);
  }

  return result;
}

uint64_t sub_2527A2F84(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = result;
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  do
  {
    for (i = v7; ; ++i)
    {
      if (i >= v4)
      {
        __break(1u);
LABEL_20:
        __break(1u);
        return result;
      }

      v10 = type metadata accessor for DeviceEntity();
      v12 = *(v10 - 8);
      result = v10 - 8;
      v11 = v12;
      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_20;
      }

      result = v6(&v20, a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * i);
      if (v3)
      {

        return v8;
      }

      if ((v21 & 1) == 0)
      {
        break;
      }

      if (v7 == v4)
      {
        return v8;
      }
    }

    v13 = v20;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_252737ABC(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v14 = *(v8 + 16);
    v15 = *(v8 + 24);
    v16 = v14 + 1;
    if (v14 >= v15 >> 1)
    {
      v19 = v14 + 1;
      v17 = v8;
      v18 = *(v8 + 16);
      result = sub_252737ABC((v15 > 1), v14 + 1, 1, v17);
      v14 = v18;
      v16 = v19;
      v8 = result;
    }

    *(v8 + 16) = v16;
    *(v8 + 8 * v14 + 32) = v13;
  }

  while (v7 != v4);
  return v8;
}

void *sub_2527A3118(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v36 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD6B8, &unk_2528D1AC0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v29 - v8;
  v10 = sub_2528BFD30();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v35 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v33 = &v29 - v15;
  v16 = *(a3 + 16);
  if (!v16)
  {
    return MEMORY[0x277D84F90];
  }

  v17 = (a3 + 32);
  v18 = (v14 + 48);
  v32 = v14;
  v34 = (v14 + 32);
  v19 = MEMORY[0x277D84F90];
  v30 = v10;
  v31 = a1;
  v29 = (v14 + 48);
  while (1)
  {
    v20 = *v17++;
    v37 = v20;
    a1(&v37);
    if (v3)
    {
      break;
    }

    if ((*v18)(v9, 1, v10) == 1)
    {
      sub_2527213D8(v9, &qword_27F4FD6B8, &unk_2528D1AC0);
    }

    else
    {
      v21 = v33;
      v22 = *v34;
      (*v34)(v33, v9, v10);
      v22(v35, v21, v10);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_252737BDC(0, v19[2] + 1, 1, v19);
      }

      v24 = v19[2];
      v23 = v19[3];
      v25 = v32;
      if (v24 >= v23 >> 1)
      {
        v27 = sub_252737BDC(v23 > 1, v24 + 1, 1, v19);
        v25 = v32;
        v19 = v27;
      }

      v19[2] = v24 + 1;
      v26 = v19 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v24;
      v10 = v30;
      v22(v26, v35, v30);
      a1 = v31;
      v18 = v29;
    }

    if (!--v16)
    {
      return v19;
    }
  }

  return v19;
}

void *sub_2527A33EC(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v49 = a2;
  v50 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD668, &qword_2528C8900);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v38 - v7;
  v46 = type metadata accessor for DeviceEntity();
  v9 = *(v46 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v46);
  v43 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v41 = &v38 - v13;
  v14 = sub_2528BFB20();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a3 + 64;
  v21 = 1 << *(a3 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(a3 + 64);
  v24 = (v21 + 63) >> 6;
  v47 = v17 + 16;
  v48 = v17;
  v51 = (v17 + 8);
  v42 = v9;
  v45 = (v9 + 48);
  v25 = v16;
  v52 = a3;

  v27 = 0;
  v44 = MEMORY[0x277D84F90];
  while (1)
  {
    v28 = v27;
    if (!v23)
    {
      break;
    }

LABEL_8:
    (*(v48 + 16))(v19, *(v52 + 56) + *(v48 + 72) * (__clz(__rbit64(v23)) | (v27 << 6)), v25);
    v50(v19);
    if (v3)
    {
      (*v51)(v19, v25);
      v37 = v44;

      return v37;
    }

    v23 &= v23 - 1;
    (*v51)(v19, v25);
    if ((*v45)(v8, 1, v46) == 1)
    {
      result = sub_2527213D8(v8, &qword_27F4FD668, &qword_2528C8900);
    }

    else
    {
      v40 = v25;
      v29 = v41;
      sub_2527AAAB4(v8, v41, type metadata accessor for DeviceEntity);
      sub_2527AAAB4(v29, v43, type metadata accessor for DeviceEntity);
      v30 = v44;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_252738010(0, v30[2] + 1, 1, v30);
      }

      v32 = v30[2];
      v31 = v30[3];
      v44 = v30;
      v33 = v32 + 1;
      v25 = v40;
      if (v32 >= v31 >> 1)
      {
        v39 = v32;
        v36 = sub_252738010(v31 > 1, v32 + 1, 1, v44);
        v32 = v39;
        v44 = v36;
      }

      v34 = v43;
      v35 = v44;
      v44[2] = v33;
      result = sub_2527AAAB4(v34, v35 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v32, type metadata accessor for DeviceEntity);
    }
  }

  while (1)
  {
    v27 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v27 >= v24)
    {

      return v44;
    }

    v23 = *(v20 + 8 * v27);
    ++v28;
    if (v23)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

char *sub_2527A3834(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD6B0, &qword_2528C8928);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v26 - v8;
  v10 = sub_2528BFD50();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v33 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v30 = &v26 - v15;
  v16 = *(a3 + 16);
  if (!v16)
  {
    return MEMORY[0x277D84F90];
  }

  v17 = *(type metadata accessor for DeviceEntity() - 8);
  v27 = v11;
  v31 = (v11 + 32);
  v32 = (v11 + 48);
  v18 = a3 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v19 = *(v17 + 72);
  v34 = MEMORY[0x277D84F90];
  v28 = v10;
  v29 = a1;
  v26 = v19;
  while (1)
  {
    a1(v18);
    if (v3)
    {
      break;
    }

    if ((*v32)(v9, 1, v10) == 1)
    {
      sub_2527213D8(v9, &qword_27F4FD6B0, &qword_2528C8928);
    }

    else
    {
      v20 = v30;
      v21 = *v31;
      (*v31)(v30, v9, v10);
      v21(v33, v20, v10);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_2527382CC(0, *(v34 + 2) + 1, 1, v34);
      }

      v23 = *(v34 + 2);
      v22 = *(v34 + 3);
      if (v23 >= v22 >> 1)
      {
        v34 = sub_2527382CC(v22 > 1, v23 + 1, 1, v34);
      }

      v24 = v34;
      *(v34 + 2) = v23 + 1;
      v10 = v28;
      v21(&v24[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v23], v33, v28);
      a1 = v29;
      v19 = v26;
    }

    v18 += v19;
    if (!--v16)
    {
      return v34;
    }
  }

  return v34;
}

void *sub_2527A3B60(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v45 = a2;
  v47 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD668, &qword_2528C8900);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v39 - v8;
  v44 = type metadata accessor for DeviceEntity();
  v10 = *(v44 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v44);
  v41 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v39 = &v39 - v14;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD6C8, &unk_2528D3C60);
  v15 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v17 = &v39 - v16;
  v18 = a3 + 64;
  v19 = 1 << *(a3 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(a3 + 64);
  v22 = (v19 + 63) >> 6;
  v40 = v10;
  v43 = (v10 + 48);
  v48 = a3;

  v24 = 0;
  v42 = MEMORY[0x277D84F90];
  while (1)
  {
    v25 = v24;
    if (!v21)
    {
      break;
    }

    v26 = v9;
    v49 = v4;
LABEL_10:
    v27 = __clz(__rbit64(v21)) | (v24 << 6);
    v28 = v48;
    v29 = *(v48 + 48);
    v30 = sub_2528BECF0();
    (*(*(v30 - 8) + 16))(v17, v29 + *(*(v30 - 8) + 72) * v27, v30);
    v31 = *(v28 + 56);
    v32 = sub_2528BF9D0();
    (*(*(v32 - 8) + 16))(&v17[*(v46 + 48)], v31 + *(*(v32 - 8) + 72) * v27, v32);
    v9 = v26;
    v33 = v49;
    v47(v17);
    v4 = v33;
    if (v33)
    {
      sub_2527213D8(v17, &qword_27F4FD6C8, &unk_2528D3C60);

LABEL_19:

      return v42;
    }

    v21 &= v21 - 1;
    sub_2527213D8(v17, &qword_27F4FD6C8, &unk_2528D3C60);
    if ((*v43)(v26, 1, v44) == 1)
    {
      result = sub_2527213D8(v26, &qword_27F4FD668, &qword_2528C8900);
    }

    else
    {
      v34 = v39;
      sub_2527AAAB4(v26, v39, type metadata accessor for DeviceEntity);
      sub_2527AAAB4(v34, v41, type metadata accessor for DeviceEntity);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = sub_252738010(0, v42[2] + 1, 1, v42);
      }

      v36 = v42[2];
      v35 = v42[3];
      if (v36 >= v35 >> 1)
      {
        v42 = sub_252738010(v35 > 1, v36 + 1, 1, v42);
      }

      v37 = v41;
      v38 = v42;
      v42[2] = v36 + 1;
      result = sub_2527AAAB4(v37, v38 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v36, type metadata accessor for DeviceEntity);
    }
  }

  while (1)
  {
    v24 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v24 >= v22)
    {
      goto LABEL_19;
    }

    v21 = *(v18 + 8 * v24);
    ++v25;
    if (v21)
    {
      v26 = v9;
      v49 = v4;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void *sub_2527A3FBC(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v51 = a2;
  v52 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD658, &qword_2528D35A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v39 - v7;
  v54 = sub_2528BFC70();
  v9 = *(v54 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v54);
  v46 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v45 = &v39 - v13;
  v14 = sub_2528BECF0();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a3 + 56;
  v21 = 1 << *(a3 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(a3 + 56);
  v24 = (v21 + 63) >> 6;
  v49 = v17 + 16;
  v50 = v17;
  v53 = (v17 + 8);
  v48 = (v9 + 48);
  v43 = v9;
  v44 = (v9 + 32);
  v55 = a3;
  v25 = v16;

  v27 = 0;
  v47 = MEMORY[0x277D84F90];
  while (1)
  {
    v28 = v27;
    if (!v23)
    {
      break;
    }

LABEL_8:
    (*(v50 + 16))(v19, *(v55 + 48) + *(v50 + 72) * (__clz(__rbit64(v23)) | (v27 << 6)), v25);
    v52(v19);
    if (v3)
    {
      (*v53)(v19, v25);
      v38 = v47;

      return v38;
    }

    v23 &= v23 - 1;
    (*v53)(v19, v25);
    if ((*v48)(v8, 1, v54) == 1)
    {
      result = sub_2527213D8(v8, &qword_27F4FD658, &qword_2528D35A0);
    }

    else
    {
      v42 = v25;
      v29 = *v44;
      (*v44)(v45, v8, v54);
      v29(v46, v45, v54);
      v30 = v29;
      v31 = v47;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_25273831C(0, v31[2] + 1, 1, v31);
      }

      v33 = v31[2];
      v32 = v31[3];
      v47 = v31;
      v34 = v33 + 1;
      v25 = v42;
      if (v33 >= v32 >> 1)
      {
        v40 = v33;
        v41 = v33 + 1;
        v37 = sub_25273831C(v32 > 1, v33 + 1, 1, v47);
        v33 = v40;
        v34 = v41;
        v47 = v37;
      }

      v35 = v46;
      v36 = v47;
      v47[2] = v34;
      result = (v30)(v36 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v33, v35, v54);
    }
  }

  while (1)
  {
    v27 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v27 >= v24)
    {

      return v47;
    }

    v23 = *(v20 + 8 * v27);
    ++v28;
    if (v23)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

void *sub_2527A4408(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v49 = a2;
  v50 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD698, &qword_2528C8918);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v38 - v7;
  v46 = type metadata accessor for ZoneEntity();
  v9 = *(v46 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v46);
  v43 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v41 = &v38 - v13;
  v14 = sub_2528BF070();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a3 + 56;
  v21 = 1 << *(a3 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(a3 + 56);
  v24 = (v21 + 63) >> 6;
  v47 = v17 + 16;
  v48 = v17;
  v51 = (v17 + 8);
  v42 = v9;
  v45 = (v9 + 48);
  v25 = v16;
  v52 = a3;

  v27 = 0;
  v44 = MEMORY[0x277D84F90];
  while (1)
  {
    v28 = v27;
    if (!v23)
    {
      break;
    }

LABEL_8:
    (*(v48 + 16))(v19, *(v52 + 48) + *(v48 + 72) * (__clz(__rbit64(v23)) | (v27 << 6)), v25);
    v50(v19);
    if (v3)
    {
      (*v51)(v19, v25);
      v37 = v44;

      return v37;
    }

    v23 &= v23 - 1;
    (*v51)(v19, v25);
    if ((*v45)(v8, 1, v46) == 1)
    {
      result = sub_2527213D8(v8, &qword_27F4FD698, &qword_2528C8918);
    }

    else
    {
      v40 = v25;
      v29 = v41;
      sub_2527AAAB4(v8, v41, type metadata accessor for ZoneEntity);
      sub_2527AAAB4(v29, v43, type metadata accessor for ZoneEntity);
      v30 = v44;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_252738344(0, v30[2] + 1, 1, v30);
      }

      v32 = v30[2];
      v31 = v30[3];
      v44 = v30;
      v33 = v32 + 1;
      v25 = v40;
      if (v32 >= v31 >> 1)
      {
        v39 = v32;
        v36 = sub_252738344(v31 > 1, v32 + 1, 1, v44);
        v32 = v39;
        v44 = v36;
      }

      v34 = v43;
      v35 = v44;
      v44[2] = v33;
      result = sub_2527AAAB4(v34, v35 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v32, type metadata accessor for ZoneEntity);
    }
  }

  while (1)
  {
    v27 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v27 >= v24)
    {

      return v44;
    }

    v23 = *(v20 + 8 * v27);
    ++v28;
    if (v23)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

char *sub_2527A4850(void (*a1)(__int128 *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = (a3 + 32);
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = *v6++;
    v16 = v10;
    a1(&v15, &v16);
    if (v3)
    {
      break;
    }

    if (v15)
    {
      v14 = v15;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_252737C04(0, *(v7 + 2) + 1, 1, v7);
      }

      v12 = *(v7 + 2);
      v11 = *(v7 + 3);
      v9 = v14;
      if (v12 >= v11 >> 1)
      {
        v8 = sub_252737C04((v11 > 1), v12 + 1, 1, v7);
        v9 = v14;
        v7 = v8;
      }

      *(v7 + 2) = v12 + 1;
      *&v7[16 * v12 + 32] = v9;
    }

    if (!--v4)
    {
      return v7;
    }
  }

  return v7;
}

void *sub_2527A497C(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v51 = a2;
  v52 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD6A8, &qword_2528C8920);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v39 - v7;
  v54 = sub_2528C01C0();
  v9 = *(v54 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v54);
  v46 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v45 = &v39 - v13;
  v14 = sub_2528BFDE0();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a3 + 56;
  v21 = 1 << *(a3 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(a3 + 56);
  v24 = (v21 + 63) >> 6;
  v49 = v17 + 16;
  v50 = v17;
  v53 = (v17 + 8);
  v48 = (v9 + 48);
  v43 = v9;
  v44 = (v9 + 32);
  v55 = a3;
  v25 = v16;

  v27 = 0;
  v47 = MEMORY[0x277D84F90];
  while (1)
  {
    v28 = v27;
    if (!v23)
    {
      break;
    }

LABEL_8:
    (*(v50 + 16))(v19, *(v55 + 48) + *(v50 + 72) * (__clz(__rbit64(v23)) | (v27 << 6)), v25);
    v52(v19);
    if (v3)
    {
      (*v53)(v19, v25);
      v38 = v47;

      return v38;
    }

    v23 &= v23 - 1;
    (*v53)(v19, v25);
    if ((*v48)(v8, 1, v54) == 1)
    {
      result = sub_2527213D8(v8, &qword_27F4FD6A8, &qword_2528C8920);
    }

    else
    {
      v42 = v25;
      v29 = *v44;
      (*v44)(v45, v8, v54);
      v29(v46, v45, v54);
      v30 = v29;
      v31 = v47;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_2527384E8(0, v31[2] + 1, 1, v31);
      }

      v33 = v31[2];
      v32 = v31[3];
      v47 = v31;
      v34 = v33 + 1;
      v25 = v42;
      if (v33 >= v32 >> 1)
      {
        v40 = v33;
        v41 = v33 + 1;
        v37 = sub_2527384E8(v32 > 1, v33 + 1, 1, v47);
        v33 = v40;
        v34 = v41;
        v47 = v37;
      }

      v35 = v46;
      v36 = v47;
      v47[2] = v34;
      result = (v30)(v36 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v33, v35, v54);
    }
  }

  while (1)
  {
    v27 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v27 >= v24)
    {

      return v47;
    }

    v23 = *(v20 + 8 * v27);
    ++v28;
    if (v23)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2527A4DC8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = result;
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  do
  {
    for (i = v7; ; ++i)
    {
      if (i >= v4)
      {
        __break(1u);
LABEL_21:
        __break(1u);
        return result;
      }

      v10 = sub_2528BF9D0();
      v12 = *(v10 - 8);
      result = v10 - 8;
      v11 = v12;
      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_21;
      }

      v6(&v26, a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * i);
      if (v3)
      {

        return v8;
      }

      if (v30 <= 0xFDu)
      {
        break;
      }

      result = sub_2527AAB1C(v26, v27, v28, v29, v30);
      if (v7 == v4)
      {
        return v8;
      }
    }

    v31 = v26;
    v24 = v27;
    v25 = v28;
    v13 = v29;
    v23 = v30;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_252737E74(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v15 = *(v8 + 16);
    v14 = *(v8 + 24);
    v16 = v15 + 1;
    v17 = v23;
    v19 = v24;
    v18 = v25;
    v20 = v31;
    if (v15 >= v14 >> 1)
    {
      result = sub_252737E74((v14 > 1), v15 + 1, 1, v8);
      v16 = v15 + 1;
      v19 = v24;
      v18 = v25;
      v21 = v13;
      v17 = v23;
      v8 = result;
      v20 = v31;
    }

    else
    {
      v21 = v13;
    }

    *(v8 + 16) = v16;
    v22 = v8 + 40 * v15;
    *(v22 + 32) = v20;
    *(v22 + 40) = v19;
    *(v22 + 48) = v18;
    *(v22 + 56) = v21;
    *(v22 + 64) = v17;
  }

  while (v7 != v4);
  return v8;
}

char *sub_2527A4FA4(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD660, &qword_2528D4D00);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v26 - v8;
  v10 = sub_2528C0020();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v33 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v30 = &v26 - v15;
  v16 = *(a3 + 16);
  if (!v16)
  {
    return MEMORY[0x277D84F90];
  }

  v17 = *(sub_2528BECF0() - 8);
  v27 = v11;
  v31 = (v11 + 32);
  v32 = (v11 + 48);
  v18 = a3 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v19 = *(v17 + 72);
  v34 = MEMORY[0x277D84F90];
  v28 = v10;
  v29 = a1;
  v26 = v19;
  while (1)
  {
    a1(v18);
    if (v3)
    {
      break;
    }

    if ((*v32)(v9, 1, v10) == 1)
    {
      sub_2527213D8(v9, &qword_27F4FD660, &qword_2528D4D00);
    }

    else
    {
      v20 = v30;
      v21 = *v31;
      (*v31)(v30, v9, v10);
      v21(v33, v20, v10);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_252738614(0, *(v34 + 2) + 1, 1, v34);
      }

      v23 = *(v34 + 2);
      v22 = *(v34 + 3);
      if (v23 >= v22 >> 1)
      {
        v34 = sub_252738614(v22 > 1, v23 + 1, 1, v34);
      }

      v24 = v34;
      *(v34 + 2) = v23 + 1;
      v10 = v28;
      v21(&v24[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v23], v33, v28);
      a1 = v29;
      v19 = v26;
    }

    v18 += v19;
    if (!--v16)
    {
      return v34;
    }
  }

  return v34;
}

void *sub_2527A52D0(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v49 = a2;
  v50 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD668, &qword_2528C8900);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v38 - v7;
  v46 = type metadata accessor for DeviceEntity();
  v9 = *(v46 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v46);
  v43 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v41 = &v38 - v13;
  v14 = sub_2528BFF90();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a3 + 56;
  v21 = 1 << *(a3 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(a3 + 56);
  v24 = (v21 + 63) >> 6;
  v47 = v17 + 16;
  v48 = v17;
  v51 = (v17 + 8);
  v42 = v9;
  v45 = (v9 + 48);
  v25 = v16;
  v52 = a3;

  v27 = 0;
  v44 = MEMORY[0x277D84F90];
  while (1)
  {
    v28 = v27;
    if (!v23)
    {
      break;
    }

LABEL_8:
    (*(v48 + 16))(v19, *(v52 + 48) + *(v48 + 72) * (__clz(__rbit64(v23)) | (v27 << 6)), v25);
    v50(v19);
    if (v3)
    {
      (*v51)(v19, v25);
      v37 = v44;

      return v37;
    }

    v23 &= v23 - 1;
    (*v51)(v19, v25);
    if ((*v45)(v8, 1, v46) == 1)
    {
      result = sub_2527213D8(v8, &qword_27F4FD668, &qword_2528C8900);
    }

    else
    {
      v40 = v25;
      v29 = v41;
      sub_2527AAAB4(v8, v41, type metadata accessor for DeviceEntity);
      sub_2527AAAB4(v29, v43, type metadata accessor for DeviceEntity);
      v30 = v44;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_252738010(0, v30[2] + 1, 1, v30);
      }

      v32 = v30[2];
      v31 = v30[3];
      v44 = v30;
      v33 = v32 + 1;
      v25 = v40;
      if (v32 >= v31 >> 1)
      {
        v39 = v32;
        v36 = sub_252738010(v31 > 1, v32 + 1, 1, v44);
        v32 = v39;
        v44 = v36;
      }

      v34 = v43;
      v35 = v44;
      v44[2] = v33;
      result = sub_2527AAAB4(v34, v35 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v32, type metadata accessor for DeviceEntity);
    }
  }

  while (1)
  {
    v27 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v27 >= v24)
    {

      return v44;
    }

    v23 = *(v20 + 8 * v27);
    ++v28;
    if (v23)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

void *sub_2527A5718(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v49 = a2;
  v50 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD668, &qword_2528C8900);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v38 - v7;
  v46 = type metadata accessor for DeviceEntity();
  v9 = *(v46 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v46);
  v43 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v41 = &v38 - v13;
  v14 = sub_2528C0130();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a3 + 56;
  v21 = 1 << *(a3 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(a3 + 56);
  v24 = (v21 + 63) >> 6;
  v47 = v17 + 16;
  v48 = v17;
  v51 = (v17 + 8);
  v42 = v9;
  v45 = (v9 + 48);
  v25 = v16;
  v52 = a3;

  v27 = 0;
  v44 = MEMORY[0x277D84F90];
  while (1)
  {
    v28 = v27;
    if (!v23)
    {
      break;
    }

LABEL_8:
    (*(v48 + 16))(v19, *(v52 + 48) + *(v48 + 72) * (__clz(__rbit64(v23)) | (v27 << 6)), v25);
    v50(v19);
    if (v3)
    {
      (*v51)(v19, v25);
      v37 = v44;

      return v37;
    }

    v23 &= v23 - 1;
    (*v51)(v19, v25);
    if ((*v45)(v8, 1, v46) == 1)
    {
      result = sub_2527213D8(v8, &qword_27F4FD668, &qword_2528C8900);
    }

    else
    {
      v40 = v25;
      v29 = v41;
      sub_2527AAAB4(v8, v41, type metadata accessor for DeviceEntity);
      sub_2527AAAB4(v29, v43, type metadata accessor for DeviceEntity);
      v30 = v44;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_252738010(0, v30[2] + 1, 1, v30);
      }

      v32 = v30[2];
      v31 = v30[3];
      v44 = v30;
      v33 = v32 + 1;
      v25 = v40;
      if (v32 >= v31 >> 1)
      {
        v39 = v32;
        v36 = sub_252738010(v31 > 1, v32 + 1, 1, v44);
        v32 = v39;
        v44 = v36;
      }

      v34 = v43;
      v35 = v44;
      v44[2] = v33;
      result = sub_2527AAAB4(v34, v35 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v32, type metadata accessor for DeviceEntity);
    }
  }

  while (1)
  {
    v27 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v27 >= v24)
    {

      return v44;
    }

    v23 = *(v20 + 8 * v27);
    ++v28;
    if (v23)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

void *sub_2527A5B60(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v49 = a2;
  v50 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD668, &qword_2528C8900);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v38 - v7;
  v46 = type metadata accessor for DeviceEntity();
  v9 = *(v46 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v46);
  v43 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v41 = &v38 - v13;
  v14 = sub_2528BF9D0();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a3 + 56;
  v21 = 1 << *(a3 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(a3 + 56);
  v24 = (v21 + 63) >> 6;
  v47 = v17 + 16;
  v48 = v17;
  v51 = (v17 + 8);
  v42 = v9;
  v45 = (v9 + 48);
  v25 = v16;
  v52 = a3;

  v27 = 0;
  v44 = MEMORY[0x277D84F90];
  while (1)
  {
    v28 = v27;
    if (!v23)
    {
      break;
    }

LABEL_8:
    (*(v48 + 16))(v19, *(v52 + 48) + *(v48 + 72) * (__clz(__rbit64(v23)) | (v27 << 6)), v25);
    v50(v19);
    if (v3)
    {
      (*v51)(v19, v25);
      v37 = v44;

      return v37;
    }

    v23 &= v23 - 1;
    (*v51)(v19, v25);
    if ((*v45)(v8, 1, v46) == 1)
    {
      result = sub_2527213D8(v8, &qword_27F4FD668, &qword_2528C8900);
    }

    else
    {
      v40 = v25;
      v29 = v41;
      sub_2527AAAB4(v8, v41, type metadata accessor for DeviceEntity);
      sub_2527AAAB4(v29, v43, type metadata accessor for DeviceEntity);
      v30 = v44;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_252738010(0, v30[2] + 1, 1, v30);
      }

      v32 = v30[2];
      v31 = v30[3];
      v44 = v30;
      v33 = v32 + 1;
      v25 = v40;
      if (v32 >= v31 >> 1)
      {
        v39 = v32;
        v36 = sub_252738010(v31 > 1, v32 + 1, 1, v44);
        v32 = v39;
        v44 = v36;
      }

      v34 = v43;
      v35 = v44;
      v44[2] = v33;
      result = sub_2527AAAB4(v34, v35 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v32, type metadata accessor for DeviceEntity);
    }
  }

  while (1)
  {
    v27 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v27 >= v24)
    {

      return v44;
    }

    v23 = *(v20 + 8 * v27);
    ++v28;
    if (v23)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

void *sub_2527A5FD4(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD668, &qword_2528C8900);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for DeviceEntity();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v34 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v32 = &v28 - v18;
  v19 = *(a3 + 16);
  if (!v19)
  {
    return MEMORY[0x277D84F90];
  }

  v20 = *(a4(0) - 8);
  v29 = v14;
  v21 = (v14 + 48);
  v22 = a3 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
  v33 = *(v20 + 72);
  v23 = MEMORY[0x277D84F90];
  v30 = v13;
  v31 = a2;
  while (1)
  {
    a1(v22);
    if (v4)
    {
      break;
    }

    if ((*v21)(v12, 1, v13) == 1)
    {
      sub_2527213D8(v12, &qword_27F4FD668, &qword_2528C8900);
    }

    else
    {
      v24 = v32;
      sub_2527AAAB4(v12, v32, type metadata accessor for DeviceEntity);
      sub_2527AAAB4(v24, v34, type metadata accessor for DeviceEntity);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_252738010(0, v23[2] + 1, 1, v23);
      }

      v26 = v23[2];
      v25 = v23[3];
      if (v26 >= v25 >> 1)
      {
        v23 = sub_252738010(v25 > 1, v26 + 1, 1, v23);
      }

      v23[2] = v26 + 1;
      sub_2527AAAB4(v34, v23 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v26, type metadata accessor for DeviceEntity);
      v13 = v30;
    }

    v22 += v33;
    if (!--v19)
    {
      return v23;
    }
  }

  return v23;
}

void *sub_2527A62F8(void (*a1)(__int128 *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v7 = *(sub_2528BECF0() - 8);
  v8 = a3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v9 = MEMORY[0x277D84F90];
  v10 = *(v7 + 72);
  while (1)
  {
    a1(&v14, v8);
    if (v3)
    {
      break;
    }

    if (v15)
    {
      sub_25271A650(&v14, v16);
      sub_25271A650(v16, &v14);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_25273863C(0, v9[2] + 1, 1, v9);
      }

      v12 = v9[2];
      v11 = v9[3];
      if (v12 >= v11 >> 1)
      {
        v9 = sub_25273863C((v11 > 1), v12 + 1, 1, v9);
      }

      v9[2] = v12 + 1;
      sub_25271A650(&v14, &v9[5 * v12 + 4]);
    }

    else
    {
      sub_2527213D8(&v14, &qword_27F4FD6C0, &qword_2528C8930);
    }

    v8 += v10;
    if (!--v4)
    {
      return v9;
    }
  }

  return v9;
}

void *sub_2527A64A8(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v49 = a2;
  v50 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD690, &unk_2528D2D30);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v38 - v7;
  v46 = type metadata accessor for RoomEntity();
  v9 = *(v46 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v46);
  v43 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v41 = &v38 - v13;
  v14 = sub_2528BF030();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a3 + 56;
  v21 = 1 << *(a3 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(a3 + 56);
  v24 = (v21 + 63) >> 6;
  v47 = v17 + 16;
  v48 = v17;
  v51 = (v17 + 8);
  v42 = v9;
  v45 = (v9 + 48);
  v25 = v16;
  v52 = a3;

  v27 = 0;
  v44 = MEMORY[0x277D84F90];
  while (1)
  {
    v28 = v27;
    if (!v23)
    {
      break;
    }

LABEL_8:
    (*(v48 + 16))(v19, *(v52 + 48) + *(v48 + 72) * (__clz(__rbit64(v23)) | (v27 << 6)), v25);
    v50(v19);
    if (v3)
    {
      (*v51)(v19, v25);
      v37 = v44;

      return v37;
    }

    v23 &= v23 - 1;
    (*v51)(v19, v25);
    if ((*v45)(v8, 1, v46) == 1)
    {
      result = sub_2527213D8(v8, &qword_27F4FD690, &unk_2528D2D30);
    }

    else
    {
      v40 = v25;
      v29 = v41;
      sub_2527AAAB4(v8, v41, type metadata accessor for RoomEntity);
      sub_2527AAAB4(v29, v43, type metadata accessor for RoomEntity);
      v30 = v44;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_2527384C0(0, v30[2] + 1, 1, v30);
      }

      v32 = v30[2];
      v31 = v30[3];
      v44 = v30;
      v33 = v32 + 1;
      v25 = v40;
      if (v32 >= v31 >> 1)
      {
        v39 = v32;
        v36 = sub_2527384C0(v31 > 1, v32 + 1, 1, v44);
        v32 = v39;
        v44 = v36;
      }

      v34 = v43;
      v35 = v44;
      v44[2] = v33;
      result = sub_2527AAAB4(v34, v35 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v32, type metadata accessor for RoomEntity);
    }
  }

  while (1)
  {
    v27 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v27 >= v24)
    {

      return v44;
    }

    v23 = *(v20 + 8 * v27);
    ++v28;
    if (v23)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2527A68F0@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v39 = a2;
  v40 = a1;
  v37 = a4;
  v7 = &qword_27F4FD6A0;
  v8 = &qword_2528D4290;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD6A0, &qword_2528D4290);
  v36 = *(v41 - 8);
  v9 = *(v36 + 64);
  v10 = MEMORY[0x28223BE20](v41);
  v44 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v38 = &v36 - v12;
  v13 = a3 + 64;
  v14 = 1 << *(a3 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a3 + 64);
  v17 = (v14 + 63) >> 6;
  v42 = a3;

  v19 = 0;
  if (v16)
  {
    while (1)
    {
      v20 = v8;
      v21 = v7;
      v43 = v5;
      v22 = v19;
LABEL_9:
      v23 = __clz(__rbit64(v16)) | (v22 << 6);
      v24 = v42;
      v25 = *(v42 + 48);
      v26 = sub_2528BFB20();
      v27 = *(v26 - 8);
      v28 = v25 + *(v27 + 72) * v23;
      v29 = v38;
      (*(v27 + 16))(v38, v28, v26);
      *&v29[*(v41 + 48)] = *(*(v24 + 56) + 8 * v23);
      v30 = v29;
      v31 = v44;
      v7 = v21;
      v32 = v21;
      v8 = v20;
      sub_25274AA0C(v30, v44, v32, v20);

      v33 = v43;
      v34 = v40(v31);
      v5 = v33;
      if (v33)
      {
        sub_2527213D8(v44, &qword_27F4FD6A0, &qword_2528D4290);
      }

      if (v34)
      {
        break;
      }

      v16 &= v16 - 1;
      result = sub_2527213D8(v44, v7, v20);
      v19 = v22;
      if (!v16)
      {
        goto LABEL_5;
      }
    }

    v35 = v37;
    sub_25274AA0C(v44, v37, &qword_27F4FD6A0, &qword_2528D4290);
    return (*(v36 + 56))(v35, 0, 1, v41);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v22 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v22 >= v17)
      {

        return (*(v36 + 56))(v37, 1, 1, v41);
      }

      v16 = *(v13 + 8 * v22);
      ++v19;
      if (v16)
      {
        v20 = v8;
        v21 = v7;
        v43 = v5;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_2527A6BE0(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2528C0EF0())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x2530A84E0](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

uint64_t sub_2527A6D20@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  v25 = a1;
  v7 = a3(0);
  v8 = *(v7 - 8);
  v9 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v21 - v10;
  v12 = *(a2 + 16);
  if (v12)
  {
    v22 = v8;
    v23 = a4;
    v14 = *(v8 + 16);
    v13 = v8 + 16;
    v24 = v14;
    v15 = (v13 - 8);
    v16 = a2 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    while (1)
    {
      v24(v11, v16, v7);
      v18 = v25(v11);
      if (v4)
      {
        return (*v15)(v11, v7);
      }

      if (v18)
      {
        break;
      }

      (*v15)(v11, v7);
      v16 += v17;
      if (!--v12)
      {
        v19 = 1;
        v8 = v22;
        a4 = v23;
        return (*(v8 + 56))(a4, v19, 1, v7);
      }
    }

    v8 = v22;
    a4 = v23;
    (*(v22 + 32))(v23, v11, v7);
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  return (*(v8 + 56))(a4, v19, 1, v7);
}

uint64_t sub_2527A6EF4@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v4 = v3;
  v33 = a1;
  v29 = a3;
  v39 = sub_2528C0020();
  v6 = *(*(v39 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v39);
  v38 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v32 = &v29 - v10;
  v11 = a2 + 56;
  v12 = 1 << *(a2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a2 + 56);
  v15 = (v12 + 63) >> 6;
  v34 = v9 + 32;
  v35 = v9;
  v30 = (v9 + 8);
  v31 = v9 + 16;
  v36 = a2;

  v17 = 0;
  v18 = v32;
  if (v14)
  {
    while (1)
    {
      v37 = v4;
      v19 = v17;
LABEL_9:
      v20 = v35;
      v21 = v39;
      (*(v35 + 16))(v18, *(v36 + 48) + *(v35 + 72) * (__clz(__rbit64(v14)) | (v19 << 6)), v39);
      v22 = *(v20 + 32);
      v23 = v38;
      v22(v38, v18, v21);
      v24 = v37;
      v25 = v33(v23);
      v4 = v24;
      if (v24)
      {
        (*v30)(v38, v39);
      }

      if (v25)
      {
        break;
      }

      v14 &= v14 - 1;
      result = (*v30)(v38, v39);
      v17 = v19;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    v28 = v29;
    v22(v29, v38, v39);
    v27 = v28;
    v26 = 0;
    return (*(v35 + 56))(v27, v26, 1, v39);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v19 >= v15)
      {

        v26 = 1;
        v27 = v29;
        return (*(v35 + 56))(v27, v26, 1, v39);
      }

      v14 = *(v11 + 8 * v19);
      ++v17;
      if (v14)
      {
        v37 = v4;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t Collection<>.annotationProvider(snapshot:)@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD630, &qword_2528C88E0);
  v4 = *(a1 + 8);
  sub_2527A72BC();
  result = sub_2528C0AB0();
  *a2 = result;
  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD630, &qword_2528C88E0);
  v4 = *(a1 + 8);
  sub_2527A72BC();
  result = sub_2528C0AB0();
  *a2 = result;
  return result;
}

uint64_t sub_2527A7250@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[5];
  v6 = *(v4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = TileInfoBearer.appEntitiesFromTile(snapshot:)(v5, AssociatedTypeWitness);
  *a1 = result;
  return result;
}

unint64_t sub_2527A72BC()
{
  result = qword_27F4FD638;
  if (!qword_27F4FD638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FD630, &qword_2528C88E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD638);
  }

  return result;
}

uint64_t TileInfoBearer.appEntitiesFromTile(snapshot:)(uint64_t a1, uint64_t a2)
{
  v302 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD640, &qword_2528C88E8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v256 = &v245 - v5;
  v258 = sub_2528BFF00();
  v257 = *(v258 - 8);
  v6 = *(v257 + 64);
  MEMORY[0x28223BE20](v258);
  v253 = &v245 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC628, &qword_2528C4750);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v298 = &v245 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD648, &qword_2528C88F0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v266 = &v245 - v13;
  v274 = sub_2528BFD90();
  v275 = *(v274 - 8);
  v14 = *(v275 + 64);
  MEMORY[0x28223BE20](v274);
  v267 = &v245 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v308 = sub_2528BECF0();
  v263 = *(v308 - 1);
  v16 = *(v263 + 64);
  v17 = MEMORY[0x28223BE20](v308);
  v296 = &v245 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v259 = &v245 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD650, &qword_2528C88F8);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v269 = &v245 - v22;
  v294 = sub_2528C0130();
  v276 = *(v294 - 8);
  v23 = *(v276 + 64);
  MEMORY[0x28223BE20](v294);
  v270 = &v245 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD658, &qword_2528D35A0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v273 = &v245 - v27;
  v300 = sub_2528BFC70();
  v306 = *(v300 - 8);
  v28 = *(v306 + 64);
  v29 = MEMORY[0x28223BE20](v300);
  v299 = &v245 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v251 = &v245 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v252 = &v245 - v34;
  MEMORY[0x28223BE20](v33);
  v264 = &v245 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD660, &qword_2528D4D00);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36 - 8);
  v285 = &v245 - v38;
  v293 = sub_2528C0020();
  v286 = *(v293 - 1);
  v39 = *(v286 + 64);
  MEMORY[0x28223BE20](v293);
  v272 = &v245 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v282 = sub_2528BF400();
  v281 = *(v282 - 8);
  v41 = *(v281 + 64);
  MEMORY[0x28223BE20](v282);
  v280 = &v245 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD668, &qword_2528C8900);
  v44 = *(*(v43 - 8) + 64);
  v45 = MEMORY[0x28223BE20](v43 - 8);
  v248 = &v245 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x28223BE20](v45);
  v254 = &v245 - v48;
  MEMORY[0x28223BE20](v47);
  v277 = &v245 - v49;
  v283 = type metadata accessor for DeviceEntity();
  v279 = *(v283 - 8);
  v50 = *(v279 + 64);
  v51 = MEMORY[0x28223BE20](v283);
  v246 = &v245 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x28223BE20](v51);
  v249 = &v245 - v54;
  MEMORY[0x28223BE20](v53);
  v262 = &v245 - v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD670, &qword_2528D3570);
  v57 = *(*(v56 - 8) + 64);
  v58 = MEMORY[0x28223BE20](v56 - 8);
  v307 = (&v245 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0));
  v60 = MEMORY[0x28223BE20](v58);
  v297 = &v245 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v250 = &v245 - v63;
  v64 = MEMORY[0x28223BE20](v62);
  v260 = &v245 - v65;
  MEMORY[0x28223BE20](v64);
  v290 = &v245 - v66;
  v288 = sub_2528BF9D0();
  v305 = *(v288 - 8);
  v67 = *(v305 + 64);
  v68 = MEMORY[0x28223BE20](v288);
  v303 = &v245 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = MEMORY[0x28223BE20](v68);
  v247 = &v245 - v71;
  v72 = MEMORY[0x28223BE20](v70);
  v261 = &v245 - v73;
  v74 = MEMORY[0x28223BE20](v72);
  v278 = &v245 - v75;
  MEMORY[0x28223BE20](v74);
  v292 = &v245 - v76;
  v289 = sub_2528BEE30();
  v295 = *(v289 - 1);
  v77 = *(v295 + 64);
  MEMORY[0x28223BE20](v289);
  v291 = &v245 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD678, &qword_2528C8908);
  v80 = *(*(v79 - 8) + 64);
  v81 = MEMORY[0x28223BE20](v79 - 8);
  v301 = (&v245 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v81);
  v287 = (&v245 - v83);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD680, &unk_2528C9030);
  v85 = *(*(v84 - 8) + 64);
  v86 = MEMORY[0x28223BE20](v84 - 8);
  v88 = &v245 - v87;
  v89 = *(a2 - 8);
  v90 = *(v89 + 64);
  v91 = MEMORY[0x28223BE20](v86);
  v255 = &v245 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = MEMORY[0x28223BE20](v91);
  v265 = &v245 - v94;
  v95 = MEMORY[0x28223BE20](v93);
  v268 = &v245 - v96;
  v97 = MEMORY[0x28223BE20](v95);
  v271 = &v245 - v98;
  v99 = MEMORY[0x28223BE20](v97);
  v284 = &v245 - v100;
  v101 = MEMORY[0x28223BE20](v99);
  v103 = &v245 - v102;
  MEMORY[0x28223BE20](v101);
  v105 = &v245 - v104;
  v106 = sub_2528BFCE0();
  v107 = *(v106 - 8);
  v108 = *(v107 + 8);
  v109 = MEMORY[0x28223BE20](v106);
  v111 = &v245 - ((v110 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v109);
  v113 = &v245 - v112;
  v116 = *(v89 + 16);
  v115 = (v89 + 16);
  v114 = v116;
  (v116)(v105, v304, a2);
  v117 = swift_dynamicCast();
  v118 = *(v107 + 7);
  if (v117)
  {
    v118(v88, 0, 1, v106);
    (*(v107 + 4))(v113, v88, v106);
    v119 = sub_2528BF310();
    MEMORY[0x28223BE20](v119);
    *(&v245 - 2) = v113;
    v120 = v287;
    sub_2527A6D20(sub_2527AAA20, v119, MEMORY[0x277D15200], v287);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD688, &qword_2528C8910);
    v121 = swift_allocObject();
    *(v121 + 16) = xmmword_2528C3910;
    v307 = v107;
    v308 = v111;
    (*(v107 + 2))(v111, v113, v106);
    v122 = v301;
    sub_25272006C(v120, v301, &qword_27F4FD678, &qword_2528C8908);
    v123 = *(v295 + 48);
    v124 = v289;
    if (v123(v122, 1, v289) == 1)
    {
      v125 = v291;
      sub_2528BF2F0();
      if (v123(v301, 1, v124) != 1)
      {
        sub_2527213D8(v301, &qword_27F4FD678, &qword_2528C8908);
      }
    }

    else
    {
      v125 = v291;
      (*(v295 + 32))(v291, v301, v124);
    }

    *(v121 + 56) = type metadata accessor for SceneEntity();
    *(v121 + 64) = sub_2527AACF0(&qword_27F4FC518, type metadata accessor for SceneEntity);
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm((v121 + 32));
    SceneEntity.init(staticActionSet:staticHome:)(v308, v125, boxed_opaque_existential_0Tm);
    sub_2527213D8(v120, &qword_27F4FD678, &qword_2528C8908);
    v307[1](v113, v106);
    return v121;
  }

  v118(v88, 1, 1, v106);
  sub_2527213D8(v88, &qword_27F4FD680, &unk_2528C9030);
  v126 = v304;
  v289 = v115;
  v291 = v114;
  (v114)(v103, v304, a2);
  v127 = v290;
  v128 = v288;
  v129 = swift_dynamicCast();
  v130 = v305;
  v132 = v305 + 56;
  v131 = *(v305 + 56);
  v301 = v131;
  if (v129)
  {
    (v131)(v127, 0, 1, v128);
    v133 = v292;
    (*(v130 + 32))(v292, v127, v128);
    v134 = v278;
    (*(v130 + 16))(v278, v133, v128);
    v135 = v280;
    (*(v281 + 16))(v280, v302, v282);
    v136 = v134;
    v137 = v277;
    DeviceEntity.init(staticService:snapshot:)(v136, v135, v277);
    v138 = v283;
    v139 = (*(v279 + 48))(v137, 1, v283);
    v140 = v299;
    v141 = v293;
    if (v139 != 1)
    {
      v163 = v137;
      v164 = v262;
      sub_2527AAAB4(v163, v262, type metadata accessor for DeviceEntity);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD688, &qword_2528C8910);
      v121 = swift_allocObject();
      *(v121 + 16) = xmmword_2528C3910;
      *(v121 + 56) = v138;
      *(v121 + 64) = sub_2527AACF0(&qword_27F4FC3B8, type metadata accessor for DeviceEntity);
      v165 = __swift_allocate_boxed_opaque_existential_0Tm((v121 + 32));
      sub_2527AAAB4(v164, v165, type metadata accessor for DeviceEntity);
      (*(v130 + 8))(v292, v128);
      return v121;
    }

    (*(v130 + 8))(v292, v128);
    sub_2527213D8(v137, &qword_27F4FD668, &qword_2528C8900);
  }

  else
  {
    (v131)(v127, 1, 1, v128);
    sub_2527213D8(v127, &qword_27F4FD670, &qword_2528D3570);
    v140 = v299;
    v141 = v293;
  }

  v143 = v291;
  (v291)(v284, v126, a2);
  v144 = v285;
  v145 = swift_dynamicCast();
  v146 = *(v286 + 56);
  v147 = v294;
  if (v145)
  {
    v148 = v286;
    v146(v144, 0, 1, v141);
    v149 = v272;
    (*(v148 + 32))(v272, v144, v141);
    v150 = sub_2528BFFE0();
    MEMORY[0x28223BE20](v150);
    *(&v245 - 2) = v302;
    v151 = sub_2527A3B60(sub_2527AAA04, (&v245 - 4), v150);

    v121 = sub_2527A9A64(v151);

    (*(v148 + 8))(v149, v141);
    return v121;
  }

  v146(v144, 1, 1, v141);
  sub_2527213D8(v144, &qword_27F4FD660, &qword_2528D4D00);
  (v143)(v271, v126, a2);
  v152 = v273;
  v153 = v300;
  v154 = swift_dynamicCast();
  v155 = v306;
  v156 = *(v306 + 56);
  v157 = a2;
  if (v154)
  {
    v156(v152, 0, 1, v153);
    v158 = v264;
    (*(v155 + 32))(v264, v152, v153);
    v159 = v260;
    sub_2528BFBE0();
    v160 = v305;
    v161 = (*(v305 + 48))(v159, 1, v128);
    v162 = v291;
    if (v161 == 1)
    {
      (*(v155 + 8))(v158, v153);
      sub_2527213D8(v159, &qword_27F4FD670, &qword_2528D3570);
      v147 = v294;
    }

    else
    {
      v224 = v261;
      (*(v160 + 32))(v261, v159, v128);
      v225 = v278;
      (*(v160 + 16))(v278, v224, v128);
      v226 = v280;
      (*(v281 + 16))(v280, v302, v282);
      v227 = v254;
      DeviceEntity.init(staticService:snapshot:)(v225, v226, v254);
      v228 = v283;
      v229 = (*(v279 + 48))(v227, 1, v283);
      v147 = v294;
      if (v229 != 1)
      {
        v231 = v227;
        v232 = v249;
        sub_2527AAAB4(v231, v249, type metadata accessor for DeviceEntity);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD688, &qword_2528C8910);
        v121 = swift_allocObject();
        *(v121 + 16) = xmmword_2528C3910;
        *(v121 + 56) = v228;
        *(v121 + 64) = sub_2527AACF0(&qword_27F4FC3B8, type metadata accessor for DeviceEntity);
        v233 = __swift_allocate_boxed_opaque_existential_0Tm((v121 + 32));
        sub_2527AAAB4(v232, v233, type metadata accessor for DeviceEntity);
        (*(v160 + 8))(v261, v128);
        (*(v155 + 8))(v264, v300);
        return v121;
      }

      (*(v160 + 8))(v261, v128);
      (*(v155 + 8))(v264, v300);
      sub_2527213D8(v227, &qword_27F4FD668, &qword_2528C8900);
    }
  }

  else
  {
    v156(v152, 1, 1, v153);
    sub_2527213D8(v152, &qword_27F4FD658, &qword_2528D35A0);
    v162 = v291;
    v160 = v305;
  }

  v295 = v132;
  v166 = v304;
  (v162)(v268, v304, v157);
  v167 = v269;
  v168 = swift_dynamicCast();
  v169 = *(v276 + 56);
  if ((v168 & 1) == 0)
  {
    v169(v167, 1, 1, v147);
    sub_2527213D8(v167, &qword_27F4FD650, &qword_2528C88F8);
    goto LABEL_26;
  }

  v170 = v276;
  v169(v167, 0, 1, v147);
  (*(v170 + 32))(v270, v167, v147);
  v171 = sub_2528BF390();
  v172 = v259;
  sub_2528C00E0();
  if (!*(v171 + 16) || (v173 = sub_252785C40(v172), (v174 & 1) == 0))
  {

    (*(v263 + 8))(v172, v308);
    (*(v276 + 8))(v270, v294);
    goto LABEL_25;
  }

  v175 = v251;
  v176 = v160;
  v177 = v300;
  (*(v155 + 16))(v251, *(v171 + 56) + *(v155 + 72) * v173, v300);
  (*(v263 + 8))(v172, v308);

  v178 = v252;
  (*(v155 + 32))(v252, v175, v177);
  v179 = v250;
  sub_2528BFBE0();
  if ((*(v176 + 48))(v179, 1, v128) == 1)
  {
    (*(v155 + 8))(v178, v177);
    (*(v276 + 8))(v270, v294);
    sub_2527213D8(v179, &qword_27F4FD670, &qword_2528D3570);
LABEL_25:
    v166 = v304;
    goto LABEL_26;
  }

  v235 = v247;
  (*(v176 + 32))(v247, v179, v128);
  v236 = v278;
  (*(v176 + 16))(v278, v235, v128);
  v237 = v280;
  (*(v281 + 16))(v280, v302, v282);
  v238 = v248;
  DeviceEntity.init(staticService:snapshot:)(v236, v237, v248);
  v239 = (*(v279 + 48))(v238, 1, v283);
  v240 = v176;
  v166 = v304;
  if (v239 != 1)
  {
    v241 = v238;
    v242 = v246;
    sub_2527AAAB4(v241, v246, type metadata accessor for DeviceEntity);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD688, &qword_2528C8910);
    v243 = v178;
    v121 = swift_allocObject();
    *(v121 + 16) = xmmword_2528C3910;
    *(v121 + 56) = v283;
    *(v121 + 64) = sub_2527AACF0(&qword_27F4FC3B8, type metadata accessor for DeviceEntity);
    v244 = __swift_allocate_boxed_opaque_existential_0Tm((v121 + 32));
    sub_2527AAAB4(v242, v244, type metadata accessor for DeviceEntity);
    (*(v240 + 8))(v235, v128);
    (*(v155 + 8))(v243, v300);
    (*(v276 + 8))(v270, v294);
    return v121;
  }

  (*(v176 + 8))(v235, v128);
  (*(v155 + 8))(v178, v300);
  (*(v276 + 8))(v270, v294);
  sub_2527213D8(v238, &qword_27F4FD668, &qword_2528C8900);
LABEL_26:
  v180 = v291;
  (v291)(v265, v166, v157);
  v181 = v266;
  v182 = v274;
  v183 = swift_dynamicCast();
  v184 = *(v275 + 56);
  if (!v183)
  {
    v184(v181, 1, 1, v182);
    sub_2527213D8(v181, &qword_27F4FD648, &qword_2528C88F0);
    (v180)(v255, v166, v157);
    v214 = v256;
    v215 = v258;
    v216 = swift_dynamicCast();
    v217 = v257;
    v218 = *(v257 + 56);
    if (v216)
    {
      v218(v214, 0, 1, v215);
      v219 = v253;
      (*(v217 + 32))(v253, v214, v215);
      v220 = sub_2528BFEF0();
      MEMORY[0x28223BE20](v220);
      v221 = v302;
      *(&v245 - 2) = v219;
      *(&v245 - 1) = v221;
      v222 = sub_2527A33EC(sub_2527AA350, (&v245 - 4), v220);

      v121 = sub_2527A9A64(v222);

      (*(v217 + 8))(v219, v215);
    }

    else
    {
      v218(v214, 1, 1, v215);
      sub_2527213D8(v214, &qword_27F4FD640, &qword_2528C88E8);
      return MEMORY[0x277D84F90];
    }

    return v121;
  }

  v185 = v155;
  v186 = v275;
  v184(v181, 0, 1, v182);
  v187 = v182;
  (*(v186 + 32))(v267, v181, v182);
  v188 = sub_2528BFD80();
  MEMORY[0x28223BE20](v188);
  v189 = v302;
  *(&v245 - 2) = v302;
  v190 = sub_2527A3FBC(sub_2527AA36C, (&v245 - 4), v188);

  v191 = v190;
  v192 = *(v190 + 2);
  if (v192)
  {
    v285 = 0;
    v194 = *(v185 + 16);
    v193 = v185 + 16;
    v304 = v194;
    v195 = (*(v193 + 64) + 32) & ~*(v193 + 64);
    v284 = v191;
    v196 = &v191[v195];
    v294 = *(v193 + 56);
    v293 = (v263 + 48);
    v289 = (v263 + 32);
    v287 = (v263 + 8);
    v306 = v193;
    v292 = (v193 - 8);
    v286 = v305 + 16;
    v290 = (v305 + 32);
    v291 = (v305 + 48);
    v197 = MEMORY[0x277D84F90];
    v199 = v297;
    v198 = v298;
    v200 = v300;
    while (1)
    {
      v201 = v197;
      v304(v140, v196, v200);
      sub_2528BFC10();
      v202 = v308;
      if ((*v293)(v198, 1, v308) != 1)
      {
        break;
      }

      (*v292)(v140, v200);
      sub_2527213D8(v198, &qword_27F4FC628, &qword_2528C4750);
      v203 = 1;
LABEL_40:
      v197 = v201;
      v210 = v307;
      (v301)(v307, v203, 1, v128);
      sub_25274AA0C(v210, v199, &qword_27F4FD670, &qword_2528D3570);
      if ((*v291)(v199, 1, v128) == 1)
      {
        sub_2527213D8(v199, &qword_27F4FD670, &qword_2528D3570);
      }

      else
      {
        v211 = *v290;
        (*v290)(v303, v199, v128);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v197 = sub_2527382F4(0, v201[2] + 1, 1, v201);
        }

        v213 = v197[2];
        v212 = v197[3];
        if (v213 >= v212 >> 1)
        {
          v197 = sub_2527382F4(v212 > 1, v213 + 1, 1, v197);
        }

        v197[2] = v213 + 1;
        v211(v197 + ((*(v305 + 80) + 32) & ~*(v305 + 80)) + *(v305 + 72) * v213, v303, v128);
        v198 = v298;
        v200 = v300;
      }

      v196 += v294;
      if (!--v192)
      {

        v189 = v302;
        v187 = v274;
        goto LABEL_53;
      }
    }

    v204 = v128;
    v205 = v140;
    v206 = v296;
    (*v289)(v296, v198, v202);
    v207 = sub_2528BFC40();
    if (*(v207 + 16))
    {
      v208 = sub_2527AA96C(v206);
      if (v209)
      {
        v128 = v204;
        (*(v305 + 16))(v307, *(v207 + 56) + *(v305 + 72) * v208, v204);
        (*v287)(v206, v308);
        v140 = v299;
        (*v292)(v299, v200);

        v203 = 0;
LABEL_39:
        v199 = v297;
        goto LABEL_40;
      }

      (*v287)(v206, v308);
      v140 = v299;
      (*v292)(v299, v200);
      v203 = 1;
    }

    else
    {

      (*v287)(v206, v202);
      (*v292)(v205, v200);
      v203 = 1;
      v140 = v205;
    }

    v128 = v204;
    goto LABEL_39;
  }

  v197 = MEMORY[0x277D84F90];
LABEL_53:
  MEMORY[0x28223BE20](v223);
  *(&v245 - 2) = v189;
  v230 = sub_2527A5FD4(sub_2527AA388, (&v245 - 4), v197, MEMORY[0x277D15AC0]);

  v121 = sub_2527A9A64(v230);

  (*(v275 + 8))(v267, v187);
  return v121;
}

uint64_t sub_2527A978C()
{
  v0 = sub_2528BECF0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  sub_2528BEE00();
  sub_2528BFCC0();
  v8 = sub_2528BECC0();
  v9 = *(v1 + 8);
  v9(v5, v0);
  v9(v7, v0);
  return v8 & 1;
}

uint64_t sub_2527A98C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19 = a3;
  v5 = sub_2528BF400();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD6C8, &unk_2528D3C60);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v18 - v13;
  sub_25272006C(a1, &v18 - v13, &qword_27F4FD6C8, &unk_2528D3C60);
  v15 = *(v11 + 56);
  (*(v6 + 16))(v9, a2, v5);
  DeviceEntity.init(staticService:snapshot:)(&v14[v15], v9, v19);
  v16 = sub_2528BECF0();
  return (*(*(v16 - 8) + 8))(v14, v16);
}

uint64_t sub_2527A9A64(uint64_t a1)
{
  v2 = type metadata accessor for DeviceEntity();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v18 = MEMORY[0x277D84F90];
    sub_25282F174(0, v7, 0);
    v8 = v18;
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    do
    {
      sub_2527AAD38(v9, v6, type metadata accessor for DeviceEntity);
      v18 = v8;
      v12 = *(v8 + 16);
      v11 = *(v8 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_25282F174((v11 > 1), v12 + 1, 1);
        v8 = v18;
      }

      v16 = v2;
      v17 = sub_2527AACF0(&qword_27F4FC3B8, type metadata accessor for DeviceEntity);
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v15);
      sub_2527AAD38(v6, boxed_opaque_existential_0Tm, type metadata accessor for DeviceEntity);
      *(v8 + 16) = v12 + 1;
      sub_25271A650(&v15, v8 + 40 * v12 + 32);
      sub_2527AADA0(v6, type metadata accessor for DeviceEntity);
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  return v8;
}

uint64_t sub_2527A9C58(uint64_t a1)
{
  v2 = type metadata accessor for SceneEntity();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v18 = MEMORY[0x277D84F90];
    sub_25282F174(0, v7, 0);
    v8 = v18;
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    do
    {
      sub_2527AAD38(v9, v6, type metadata accessor for SceneEntity);
      v18 = v8;
      v12 = *(v8 + 16);
      v11 = *(v8 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_25282F174((v11 > 1), v12 + 1, 1);
        v8 = v18;
      }

      v16 = v2;
      v17 = sub_2527AACF0(&qword_27F4FC518, type metadata accessor for SceneEntity);
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v15);
      sub_2527AAD38(v6, boxed_opaque_existential_0Tm, type metadata accessor for SceneEntity);
      *(v8 + 16) = v12 + 1;
      sub_25271A650(&v15, v8 + 40 * v12 + 32);
      sub_2527AADA0(v6, type metadata accessor for SceneEntity);
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  return v8;
}

uint64_t sub_2527A9E4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2528BF390();
  if (*(v4 + 16) && (v5 = sub_252785C40(a1), (v6 & 1) != 0))
  {
    v7 = v5;
    v8 = *(v4 + 56);
    v9 = sub_2528BFC70();
    v10 = *(v9 - 8);
    (*(v10 + 16))(a2, v8 + *(v10 + 72) * v7, v9);

    return (*(v10 + 56))(a2, 0, 1, v9);
  }

  else
  {

    v12 = sub_2528BFC70();
    return (*(*(v12 - 8) + 56))(a2, 1, 1, v12);
  }
}

uint64_t sub_2527A9FAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2528BF400();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2528BF9D0();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, a1);
  (*(v7 + 16))(v10, a2, v6);
  return DeviceEntity.init(staticService:snapshot:)(v14, v10, a3);
}

uint64_t sub_2527AA12C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v22 = a3;
  v23 = a4;
  v6 = sub_2528BF400();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2528BFF00();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2528BFB20();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = (&v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19, a1);
  (*(v12 + 16))(v15, a2, v11);
  (*(v7 + 16))(v10, v22, v6);
  return DeviceEntity.init(staticEndpoint:staticMatterDevice:snapshot:)(v19, v15, v10, v23);
}

uint64_t Collection<>.annotationProvider(homeName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = Collection<>.appEntities(homeName:)(a1, a2, a3, a4);
  v7 = sub_2527A9C58(v6);

  *a5 = v7;
  return result;
}

uint64_t Collection<>.appEntities(homeName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SceneEntity();
  v5 = *(a4 + 8);
  return sub_2528C0A80();
}

uint64_t sub_2527AA454@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v35 = a1;
  v36 = a2;
  v4 = sub_2528BEC40();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBBC0, &qword_2528C1800);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - v11;
  v13 = sub_2528BECF0();
  v37 = *(v13 - 8);
  v14 = *(v37 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2528BFCB0();
  v33 = v18;
  v34 = v17;
  v41 = v16;
  sub_2528BFCA0();
  sub_2528BFC80();
  v19 = sub_2528C0CD0();
  v20 = *(v19 - 8);
  v21 = (*(v20 + 48))(v12, 1, v19);
  v38 = v13;
  if (v21 == 1)
  {
    goto LABEL_2;
  }

  sub_25272006C(v12, v10, &qword_27F4FBBC0, &qword_2528C1800);
  v23 = (*(v20 + 88))(v10, v19);
  if (v23 == *MEMORY[0x277D16EF0])
  {
    v22 = 0;
  }

  else if (v23 == *MEMORY[0x277D16F10])
  {
    v22 = 1;
  }

  else if (v23 == *MEMORY[0x277D16F38])
  {
    v22 = 2;
  }

  else if (v23 == *MEMORY[0x277D16F28])
  {
    v22 = 3;
  }

  else
  {
    if (v23 != *MEMORY[0x277D16EF8])
    {
      (*(v20 + 8))(v10, v19);
LABEL_2:
      v22 = 5;
      goto LABEL_13;
    }

    v22 = 4;
  }

LABEL_13:
  sub_2527213D8(v12, &qword_27F4FBBC0, &qword_2528C1800);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC458, &unk_2528C3F40);
  sub_2528BEC20();
  *a3 = sub_2528BE730();
  v24 = type metadata accessor for SceneEntity();
  v25 = v24[6];
  sub_2528BEC20();
  *(a3 + v25) = sub_2528BE730();
  v26 = v24[7];
  sub_2528BEC20();
  *(a3 + v26) = sub_2528BE730();
  v28 = v37;
  v27 = v38;
  (*(v37 + 16))(a3 + v24[5], v41, v38);
  v39 = v34;
  v40 = v33;
  sub_2528BE6C0();
  v39 = v35;
  v40 = v36;

  sub_2528BE6C0();
  if (v22 > 2)
  {
    if (v22 == 3)
    {
      v29 = 0xE500000000000000;
      v30 = 0x7065656C73;
    }

    else if (v22 == 4)
    {
      v29 = 0xEB0000000064656ELL;
      v30 = 0x6966654472657375;
    }

    else
    {
      v30 = 1701736302;
      v29 = 0xE400000000000000;
    }
  }

  else if (v22)
  {
    if (v22 == 1)
    {
      v29 = 0xED00006572757472;
      v30 = 0x61706544656D6F68;
    }

    else
    {
      v29 = 0xE600000000000000;
      v30 = 0x7055656B6177;
    }
  }

  else
  {
    v29 = 0xEB000000006C6176;
    v30 = 0x69727241656D6F68;
  }

  v39 = v30;
  v40 = v29;
  sub_2528BE6C0();
  (*(v28 + 8))(v41, v27);
  return (*(*(v24 - 1) + 56))(a3, 0, 1, v24);
}

unint64_t sub_2527AA96C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_2528BECF0();
  sub_2527AACF0(&qword_27F4FBD88, MEMORY[0x277CC95F0]);
  v5 = sub_2528C0900();

  return sub_2527AAB30(a1, v5);
}

uint64_t sub_2527AAA40@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = a1[3];
  __swift_project_boxed_opaque_existential_0(a1, v5);
  result = TileInfoBearer.appEntitiesFromTile(snapshot:)(v4, v5);
  *a2 = result;
  return result;
}

uint64_t sub_2527AAAB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2527AAB1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 <= 0xFDu)
  {
    return sub_25272C15C(a1, a2, a3, a4, a5);
  }

  return a1;
}

unint64_t sub_2527AAB30(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_2528BECF0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_2527AACF0(&qword_27F4FC680, MEMORY[0x277CC95F0]);
      v16 = sub_2528C0930();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

uint64_t sub_2527AACF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2527AAD38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2527AADA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ZoneEntity.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2528BECF0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ZoneEntity.id.setter(uint64_t a1)
{
  v3 = sub_2528BECF0();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_2527AAF08()
{
  v1 = *(v0 + *(type metadata accessor for ZoneEntity() + 20));
  sub_2528BE6B0();
  return v3;
}

uint64_t sub_2527AAF78()
{
  v1 = *(v0 + *(type metadata accessor for ZoneEntity() + 24));
  sub_2528BE6B0();
  return v3;
}

uint64_t ZoneEntity.displayRepresentation.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC128, &unk_2528C3590);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v17 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC130, &unk_2528C6A80);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v17 - v7;
  v9 = sub_2528BEC40();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = sub_2528C09B0();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  sub_2528C09A0();
  sub_2528C0990();
  v14 = *(v0 + *(type metadata accessor for ZoneEntity() + 20));
  sub_2528BE6B0();
  sub_2528C0970();

  sub_2528C0990();
  sub_2528BEC30();
  (*(v10 + 56))(v8, 1, 1, v9);
  v15 = sub_2528BE8D0();
  (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
  return sub_2528BE900();
}

uint64_t type metadata accessor for ZoneEntity()
{
  result = qword_27F4FD798;
  if (!qword_27F4FD798)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2527AB2B0()
{
  v0 = sub_2528BE9F0();
  __swift_allocate_value_buffer(v0, qword_27F4FD6D0);
  __swift_project_value_buffer(v0, qword_27F4FD6D0);
  return sub_2528BE9D0();
}

uint64_t static ZoneEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB6B0 != -1)
  {
    swift_once();
  }

  v2 = sub_2528BE9F0();
  v3 = __swift_project_value_buffer(v2, qword_27F4FD6D0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t ZoneEntity.init(name:id:homeName:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = sub_2528BEC40();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = type metadata accessor for ZoneEntity();
  v7 = *(v6 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC458, &unk_2528C3F40);
  sub_2528BEC20();
  *(a2 + v7) = sub_2528BE730();
  v8 = *(v6 + 24);
  sub_2528BEC20();
  *(a2 + v8) = sub_2528BE730();
  v9 = sub_2528BECF0();
  v10 = *(v9 - 8);
  (*(v10 + 16))(a2, a1, v9);
  sub_2528BE6C0();
  sub_2528BE6C0();
  return (*(v10 + 8))(a1, v9);
}

uint64_t sub_2527AB568@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2528BEC40();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = type metadata accessor for ZoneEntity();
  v9 = *(v8 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC458, &unk_2528C3F40);
  sub_2528BEC20();
  *(a3 + v9) = sub_2528BE730();
  v10 = *(v8 + 24);
  sub_2528BEC20();
  *(a3 + v10) = sub_2528BE730();
  sub_2528BF040();
  sub_2528BF050();
  sub_2528BE6C0();
  sub_2528BEE20();
  sub_2528BE6C0();
  v11 = sub_2528BEE30();
  (*(*(v11 - 8) + 8))(a2, v11);
  v12 = sub_2528BF070();
  return (*(*(v12 - 8) + 8))(a1, v12);
}

uint64_t sub_2527AB71C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB6B0 != -1)
  {
    swift_once();
  }

  v2 = sub_2528BE9F0();
  v3 = __swift_project_value_buffer(v2, qword_27F4FD6D0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2527AB7C4(uint64_t a1)
{
  v2 = sub_2527B1594(&qword_27F4FCCB0, type metadata accessor for ZoneEntity);

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_2527AB844(uint64_t a1)
{
  v2 = sub_2527B1594(&qword_27F4FD758, type metadata accessor for ZoneEntity);

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_2527AB8C0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD718, &qword_2528C8938);
  __swift_allocate_value_buffer(v0, qword_27F4FD6E8);
  __swift_project_value_buffer(v0, qword_27F4FD6E8);
  type metadata accessor for ZoneEntity();
  sub_2527B1594(&qword_27F4FCCB0, type metadata accessor for ZoneEntity);
  return sub_2528BE990();
}

uint64_t sub_2527AB97C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD828, &qword_2528C8E50);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - v6;
  swift_getKeyPath();
  sub_2527B1594(&qword_27F4FCCB0, type metadata accessor for ZoneEntity);
  sub_25272275C(&qword_27F4FC948, &qword_27F4FC458, &unk_2528C3F40);
  sub_2528BEAD0();
  type metadata accessor for ZoneEntity();
  sub_2528BEAF0();
  v8 = *(v1 + 8);
  v8(v5, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD830, &qword_2528C8E58);
  v9 = *(v1 + 72);
  v10 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2528C3910;
  (*(v1 + 16))(v11 + v10, v7, v0);
  v12 = sub_2528BEAE0();

  v8(v7, v0);
  return v12;
}

uint64_t static ZoneEntityQuery.sortingOptions.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB6B8 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD718, &qword_2528C8938);
  v3 = __swift_project_value_buffer(v2, qword_27F4FD6E8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2527ABC7C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD720, &qword_2528C8940);
  __swift_allocate_value_buffer(v0, qword_27F4FD700);
  __swift_project_value_buffer(v0, qword_27F4FD700);
  type metadata accessor for ZoneEntity();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD7C0, ">f");
  sub_2527B1594(&qword_27F4FCCB0, type metadata accessor for ZoneEntity);
  return sub_2528BE920();
}

uint64_t sub_2527ABD5C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD7C8, &qword_2528C8D78);
  swift_getKeyPath();
  sub_2528BE870();
  sub_2527B1594(&qword_27F4FCCB0, type metadata accessor for ZoneEntity);
  v0 = sub_2528BEA50();

  swift_getKeyPath();
  sub_2528BEA50();
  sub_2528BE870();
  v1 = sub_2528BEA50();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC8C8, &qword_2528C49E0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2528C54C0;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  type metadata accessor for ZoneEntity();
  sub_2528BEA50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD7C0, ">f");
  v3 = sub_2528BEA40();

  return v3;
}

uint64_t sub_2527ABF2C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a2 + *(type metadata accessor for ZoneEntity() + 20));

  return sub_2528BE6C0();
}

uint64_t sub_2527ABF9C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD7D0, &qword_2528C8DD0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v13 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD7D8, &qword_2528C8DD8);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_2528BE850();
  type metadata accessor for ZoneEntity();
  sub_2527B1594(&qword_27F4FCCB0, type metadata accessor for ZoneEntity);
  sub_2528BEAC0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD7E0, &qword_2528C8DE0);
  v8 = *(v1 + 72);
  v9 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2528C3910;
  (*(v1 + 16))(v10 + v9, v4, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC458, &unk_2528C3F40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD7C0, ">f");
  sub_25274690C();
  v11 = sub_2528BEAB0();

  (*(v1 + 8))(v4, v0);
  return v11;
}

uint64_t sub_2527AC20C(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  type metadata accessor for ZoneEntity();
  return sub_2528BED80();
}

uint64_t sub_2527AC264@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v26 = a4;
  v27 = a2;
  v28 = a3;
  v29 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC8E8, &qword_2528C4A00);
  v7 = *(v6 - 8);
  v30 = v6;
  v31 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD7E8, &qword_2528C8DE8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD7F0, &qword_2528C8DF0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v26 - v19;
  v21 = *a1;
  sub_25272275C(&qword_27F4FD7F8, &qword_27F4FD7E8, &qword_2528C8DE8);
  sub_2528BEB90();
  swift_getKeyPath();
  sub_2528BEB40();

  (*(v12 + 8))(v15, v11);
  v32 = v27;
  v33 = v28;
  sub_2528BEB80();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD800, &qword_2528C8E20);
  v23 = v29;
  v29[3] = v22;
  v23[4] = sub_2527B1600();
  __swift_allocate_boxed_opaque_existential_0Tm(v23);
  sub_25272275C(&qword_27F4FD820, &qword_27F4FD7F0, &qword_2528C8DF0);
  sub_25272275C(&qword_27F4FC938, &qword_27F4FC8E8, &qword_2528C4A00);
  v24 = v30;
  sub_2528BEB20();
  (*(v31 + 8))(v10, v24);
  return (*(v17 + 8))(v20, v16);
}

uint64_t sub_2527AC5D0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a2 + *(type metadata accessor for ZoneEntity() + 24));

  return sub_2528BE6C0();
}

uint64_t static ZoneEntityQuery.properties.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB6C0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD720, &qword_2528C8940);
  v3 = __swift_project_value_buffer(v2, qword_27F4FD700);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t ZoneEntityQuery.entities(for:)(uint64_t a1)
{
  v1[2] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDC0, &unk_2528C5CD0);
  v1[3] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC480, &unk_2528C7FA0) - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2527AC7EC, 0, 0);
}

uint64_t sub_2527AC7EC()
{
  v24 = v0;
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = sub_2528C08B0();
  v0[7] = __swift_project_value_buffer(v2, qword_27F5025C8);

  v3 = sub_2528C0890();
  v4 = sub_2528C0D10();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23 = v7;
    *v6 = 136315138;
    v8 = sub_2528BECF0();
    v9 = MEMORY[0x2530A81A0](v5, v8);
    v11 = sub_2527389AC(v9, v10, &v23);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_252711000, v3, v4, "Searching for zones with identifiers: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x2530A8D80](v7, -1, -1);
    MEMORY[0x2530A8D80](v6, -1, -1);
  }

  if (qword_27F4FBB48 != -1)
  {
    swift_once();
  }

  v13 = v0[5];
  v12 = v0[6];
  v14 = v0[2];
  v15 = sub_2528C0820();
  v16 = __swift_project_value_buffer(v15, qword_27F5025E0);
  v0[8] = v16;

  v0[9] = sub_2528BAD50(4, 0, v16, v14);

  v17 = type metadata accessor for HomeEntity(0);
  (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
  v18 = sub_2528C05D0();
  (*(*(v18 - 8) + 56))(v13, 1, 1, v18);
  v19 = swift_task_alloc();
  v0[10] = v19;
  *v19 = v0;
  v19[1] = sub_2527ACAE4;
  v20 = v0[5];
  v21 = v0[6];

  return sub_25277ECE4(v21, 0, 1, v20);
}

uint64_t sub_2527ACAE4(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v6 = *v1;
  *(*v1 + 88) = a1;

  sub_2527213D8(v4, &qword_27F4FC480, &unk_2528C7FA0);
  sub_2527213D8(v3, &qword_27F4FC488, &unk_2528C3F80);

  return MEMORY[0x2822009F8](sub_2527ACC40, 0, 0);
}

uint64_t sub_2527ACC40()
{
  v64 = v0;
  v1 = v0[11];
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v59 = v0[3];
  v60 = v0[11];
  v5 = -1;
  v6 = -1 << *(v60 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v8 = (63 - v6) >> 6;

  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  v61 = v0;
  while (v7)
  {
    v62 = v11;
LABEL_11:
    v13 = v0[4];
    v14 = v0[2];
    v15 = __clz(__rbit64(v7)) | (v10 << 6);
    v16 = *(v60 + 48);
    v17 = sub_2528BECF0();
    (*(*(v17 - 8) + 16))(v13, v16 + *(*(v17 - 8) + 72) * v15, v17);
    v18 = *(v60 + 56);
    v19 = v18 + *(*(type metadata accessor for HomeEntity.SnapshotPair(0) - 8) + 72) * v15;
    v20 = *(v59 + 48);
    sub_2527B144C(v19, v13 + v20, type metadata accessor for HomeEntity.SnapshotPair);
    v21 = sub_2527AD0D0(v13, v13 + v20, v14);
    result = sub_2527213D8(v13, &qword_27F4FCDC0, &unk_2528C5CD0);
    v22 = *(v21 + 16);
    v11 = v62;
    v23 = v62[2];
    v24 = v23 + v22;
    if (__OFADD__(v23, v22))
    {
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      return result;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v24 > v62[3] >> 1)
    {
      if (v23 <= v24)
      {
        v26 = v23 + v22;
      }

      else
      {
        v26 = v23;
      }

      v11 = sub_252738344(isUniquelyReferenced_nonNull_native, v26, 1, v62);
    }

    v7 &= v7 - 1;
    if (*(v21 + 16))
    {
      v27 = (*(v11 + 24) >> 1) - *(v11 + 16);
      result = type metadata accessor for ZoneEntity();
      v28 = *(result - 8);
      if (v27 < v22)
      {
        goto LABEL_31;
      }

      v29 = (*(v28 + 80) + 32) & ~*(v28 + 80);
      v30 = *(v28 + 72);
      swift_arrayInitWithCopy();

      v0 = v61;
      if (v22)
      {
        v31 = *(v11 + 16);
        v32 = __OFADD__(v31, v22);
        v33 = v31 + v22;
        if (v32)
        {
          goto LABEL_32;
        }

        *(v11 + 16) = v33;
      }
    }

    else
    {

      v0 = v61;
      if (v22)
      {
        goto LABEL_30;
      }
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_29;
    }

    if (v12 >= v8)
    {
      break;
    }

    v7 = *(v3 + 8 * v12);
    ++v10;
    if (v7)
    {
      v62 = v11;
      v10 = v12;
      goto LABEL_11;
    }
  }

  v34 = v0[11];
  v36 = v0[8];
  v35 = v0[9];
  v37 = v0[7];
  v38 = v61[2];

  sub_2528BAD58(4u, v35, v36, v11);

  v39 = sub_2528C0890();
  v40 = sub_2528C0D10();

  v41 = v61;

  v42 = os_log_type_enabled(v39, v40);
  v43 = v61[9];
  if (v42)
  {
    v44 = v61[2];
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v63 = v46;
    *v45 = 136315394;
    v47 = type metadata accessor for ZoneEntity();
    v48 = MEMORY[0x2530A81A0](v11, v47);
    v50 = sub_2527389AC(v48, v49, &v63);

    *(v45 + 4) = v50;
    *(v45 + 12) = 2080;
    v51 = sub_2528BECF0();
    v52 = MEMORY[0x2530A81A0](v44, v51);
    v54 = sub_2527389AC(v52, v53, &v63);

    *(v45 + 14) = v54;
    _os_log_impl(&dword_252711000, v39, v40, "Found zoneEntities: %s for identifiers: %s", v45, 0x16u);
    swift_arrayDestroy();
    v41 = v61;
    MEMORY[0x2530A8D80](v46, -1, -1);
    MEMORY[0x2530A8D80](v45, -1, -1);
  }

  v56 = v41[5];
  v55 = v41[6];
  v57 = v41[4];

  v58 = v41[1];

  return v58(v11);
}

uint64_t sub_2527AD0D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ZoneEntity();
  v31 = *(v5 - 8);
  v6 = *(v31 + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v29 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - v9;
  v11 = sub_2528BF330();
  v12 = sub_2527AE664(v11);
  v34 = a2;
  v13 = sub_2527A4408(sub_2527B1760, v33, v12);

  v30 = v13[2];
  if (v30)
  {
    v15 = 0;
    v16 = MEMORY[0x277D84F90];
    v28 = v13;
    while (v15 < v13[2])
    {
      v17 = (*(v31 + 80) + 32) & ~*(v31 + 80);
      v18 = v15 + 1;
      v32 = *(v31 + 72);
      sub_2527B144C(v13 + v17 + v32 * v15, v10, type metadata accessor for ZoneEntity);
      v19 = 0;
      v20 = *(a3 + 16);
      do
      {
        if (v20 == v19)
        {
          result = sub_2527B14D4(v10);
          goto LABEL_4;
        }

        v21 = *(sub_2528BECF0() - 8);
        v22 = v19 + 1;
        v23 = a3 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v19;
        sub_2527B1594(&qword_27F4FC680, MEMORY[0x277CC95F0]);
        v19 = v22;
      }

      while ((sub_2528C0930() & 1) == 0);
      sub_2527B1530(v10, v29);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_25282F194(0, *(v16 + 16) + 1, 1);
        v16 = v35;
      }

      v26 = *(v16 + 16);
      v25 = *(v16 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_25282F194(v25 > 1, v26 + 1, 1);
        v16 = v35;
      }

      *(v16 + 16) = v26 + 1;
      result = sub_2527B1530(v29, v16 + v17 + v26 * v32);
LABEL_4:
      v15 = v18;
      v13 = v28;
      if (v18 == v30)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
LABEL_15:

    return v16;
  }

  return result;
}

uint64_t ZoneEntityQuery.entities(matching:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDC0, &unk_2528C5CD0);
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC480, &unk_2528C7FA0) - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2527AD4EC, 0, 0);
}

uint64_t sub_2527AD4EC()
{
  v22 = v0;
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_2528C08B0();
  v0[8] = __swift_project_value_buffer(v2, qword_27F5025C8);

  v3 = sub_2528C0890();
  v4 = sub_2528C0D10();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[2];
    v5 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_2527389AC(v6, v5, &v21);
    _os_log_impl(&dword_252711000, v3, v4, "Searching for zones with string: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x2530A8D80](v8, -1, -1);
    MEMORY[0x2530A8D80](v7, -1, -1);
  }

  if (qword_27F4FBB48 != -1)
  {
    swift_once();
  }

  v10 = v0[6];
  v9 = v0[7];
  v12 = v0[2];
  v11 = v0[3];
  v13 = sub_2528C0820();
  v14 = __swift_project_value_buffer(v13, qword_27F5025E0);
  v0[9] = v14;

  v0[10] = sub_2528BAD5C(4, 0, v14, v12, v11);

  v15 = type metadata accessor for HomeEntity(0);
  (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
  v16 = sub_2528C05D0();
  (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
  v17 = swift_task_alloc();
  v0[11] = v17;
  *v17 = v0;
  v17[1] = sub_2527AD7CC;
  v18 = v0[6];
  v19 = v0[7];

  return sub_25277ECE4(v19, 0, 1, v18);
}

uint64_t sub_2527AD7CC(uint64_t a1)
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v6 = *v1;
  *(*v1 + 96) = a1;

  sub_2527213D8(v4, &qword_27F4FC480, &unk_2528C7FA0);
  sub_2527213D8(v3, &qword_27F4FC488, &unk_2528C3F80);

  return MEMORY[0x2822009F8](sub_2527AD928, 0, 0);
}

uint64_t sub_2527AD928()
{
  v62 = v0;
  v1 = *(v0 + 96);
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v57 = *(v0 + 96);
  v56 = *(v0 + 32);
  v5 = -1;
  v6 = -1 << *(v57 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v8 = (63 - v6) >> 6;

  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  while (v7)
  {
    v59 = v11;
LABEL_11:
    v13 = v58[5];
    v15 = v58[2];
    v14 = v58[3];
    v16 = __clz(__rbit64(v7)) | (v10 << 6);
    v17 = *(v57 + 48);
    v18 = sub_2528BECF0();
    (*(*(v18 - 8) + 16))(v13, v17 + *(*(v18 - 8) + 72) * v16, v18);
    v19 = *(v57 + 56);
    v20 = v19 + *(*(type metadata accessor for HomeEntity.SnapshotPair(0) - 8) + 72) * v16;
    v21 = *(v56 + 48);
    sub_2527B144C(v20, v13 + v21, type metadata accessor for HomeEntity.SnapshotPair);
    v22 = sub_2527ADD9C(v13, v13 + v21, v15, v14);
    result = sub_2527213D8(v13, &qword_27F4FCDC0, &unk_2528C5CD0);
    v23 = *(v22 + 16);
    v11 = v59;
    v24 = v59[2];
    v25 = v24 + v23;
    if (__OFADD__(v24, v23))
    {
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      return result;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v25 > v59[3] >> 1)
    {
      if (v24 <= v25)
      {
        v27 = v24 + v23;
      }

      else
      {
        v27 = v24;
      }

      v11 = sub_252738344(isUniquelyReferenced_nonNull_native, v27, 1, v59);
    }

    v7 &= v7 - 1;
    if (*(v22 + 16))
    {
      v28 = (*(v11 + 24) >> 1) - *(v11 + 16);
      result = type metadata accessor for ZoneEntity();
      v29 = *(result - 8);
      if (v28 < v23)
      {
        goto LABEL_31;
      }

      v30 = (*(v29 + 80) + 32) & ~*(v29 + 80);
      v31 = *(v29 + 72);
      swift_arrayInitWithCopy();

      if (v23)
      {
        v32 = *(v11 + 16);
        v33 = __OFADD__(v32, v23);
        v34 = v32 + v23;
        if (v33)
        {
          goto LABEL_32;
        }

        *(v11 + 16) = v34;
      }
    }

    else
    {

      if (v23)
      {
        goto LABEL_30;
      }
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_29;
    }

    if (v12 >= v8)
    {
      break;
    }

    v7 = *(v3 + 8 * v12);
    ++v10;
    if (v7)
    {
      v59 = v11;
      v10 = v12;
      goto LABEL_11;
    }
  }

  v35 = v58;
  v36 = v58[12];
  v38 = v58[9];
  v37 = v58[10];
  v39 = v58[8];
  v40 = v58[3];

  sub_2528BAD58(4u, v37, v38, v11);

  v41 = sub_2528C0890();
  v42 = sub_2528C0D10();

  v43 = os_log_type_enabled(v41, v42);
  v44 = v58[10];
  if (v43)
  {
    v60 = v58[3];
    v45 = v58[2];
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v61 = v47;
    *v46 = 136315394;
    v48 = type metadata accessor for ZoneEntity();
    v49 = MEMORY[0x2530A81A0](v11, v48);
    v51 = sub_2527389AC(v49, v50, &v61);

    *(v46 + 4) = v51;
    *(v46 + 12) = 2080;
    v35 = v58;
    *(v46 + 14) = sub_2527389AC(v45, v60, &v61);
    _os_log_impl(&dword_252711000, v41, v42, "Found zoneEntities: %s for string: %s", v46, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v47, -1, -1);
    MEMORY[0x2530A8D80](v46, -1, -1);
  }

  v53 = v35[6];
  v52 = v35[7];
  v54 = v35[5];

  v55 = v35[1];

  return v55(v11);
}

uint64_t sub_2527ADD9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = type metadata accessor for ZoneEntity();
  v7 = *(v31 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v31);
  v32 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - v11;
  v13 = sub_2528BF330();
  v14 = sub_2527AE664(v13);
  v34 = a2;
  v15 = sub_2527A4408(sub_2527B1760, v33, v14);

  v30 = v15[2];
  if (v30)
  {
    v17 = 0;
    v18 = MEMORY[0x277D84F90];
    v28 = a4;
    v29 = a3;
    while (1)
    {
      if (v17 >= v15[2])
      {
        __break(1u);
        return result;
      }

      v19 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v20 = *(v7 + 72);
      sub_2527B144C(v15 + v19 + v20 * v17, v12, type metadata accessor for ZoneEntity);
      v21 = *&v12[*(v31 + 20)];
      sub_2528BE6B0();
      if (v35 == a3 && v36 == a4)
      {
        break;
      }

      v23 = sub_2528C1060();

      if (v23)
      {
        goto LABEL_13;
      }

      result = sub_2527B14D4(v12);
LABEL_4:
      ++v17;
      a3 = v29;
      if (v30 == v17)
      {
        goto LABEL_19;
      }
    }

LABEL_13:
    sub_2527B1530(v12, v32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_25282F194(0, *(v18 + 16) + 1, 1);
      v18 = v37;
    }

    v26 = *(v18 + 16);
    v25 = *(v18 + 24);
    if (v26 >= v25 >> 1)
    {
      sub_25282F194(v25 > 1, v26 + 1, 1);
      v18 = v37;
    }

    *(v18 + 16) = v26 + 1;
    result = sub_2527B1530(v32, v18 + v19 + v26 * v20);
    a4 = v28;
    goto LABEL_4;
  }

  v18 = MEMORY[0x277D84F90];
LABEL_19:

  return v18;
}

uint64_t ZoneEntityQuery.entities(matching:mode:sortedBy:limit:)(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25274BC70;

  return sub_2527AF6A0(a1, a2 & 1);
}

uint64_t sub_2527AE0E8@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB6C0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD720, &qword_2528C8940);
  v3 = __swift_project_value_buffer(v2, qword_27F4FD700);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2527AE19C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB6B8 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD718, &qword_2528C8938);
  v3 = __swift_project_value_buffer(v2, qword_27F4FD6E8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2527AE250(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_25274BC30;

  return sub_2527AF6A0(a2, a3 & 1);
}

uint64_t sub_2527AE30C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_25273430C;

  return ZoneEntityQuery.entities(matching:)(a2, a3);
}

uint64_t sub_2527AE3AC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25274BC70;

  return ZoneEntityQuery.entities(for:)(a1);
}

uint64_t sub_2527AE440(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277CB9CA8] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_2527B03E8();
  *v6 = v2;
  v6[1] = sub_2527228B0;

  return MEMORY[0x28210B618](a1, a2, v7);
}

uint64_t sub_2527AE4F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2528BEE30();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2528BF070();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, a1);
  sub_2528BF2F0();
  sub_2527AB568(v11, v7, a2);
  v13 = type metadata accessor for ZoneEntity();
  return (*(*(v13 - 8) + 56))(a2, 0, 1, v13);
}

uint64_t sub_2527AE664(uint64_t a1)
{
  v2 = sub_2528BF070();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v23 - v8;
  v10 = *(a1 + 16);
  v11 = sub_2527B1594(&qword_27F4FD7A8, MEMORY[0x277D154F8]);
  result = MEMORY[0x2530A82F0](v10, v2, v11);
  v13 = 0;
  v24 = a1;
  v25 = result;
  v16 = *(a1 + 64);
  v15 = a1 + 64;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v23[1] = v3 + 16;
  if ((v18 & v14) != 0)
  {
    do
    {
      v21 = v13;
LABEL_9:
      v22 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      (*(v3 + 16))(v9, *(v24 + 56) + *(v3 + 72) * (v22 | (v21 << 6)), v2);
      sub_2527AE878(v7, v9);
      result = (*(v3 + 8))(v7, v2);
    }

    while (v19);
  }

  while (1)
  {
    v21 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v21 >= v20)
    {

      return v25;
    }

    v19 = *(v15 + 8 * v21);
    ++v13;
    if (v19)
    {
      v13 = v21;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2527AE878(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_2528BF070();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_2527B1594(&qword_27F4FD7A8, MEMORY[0x277D154F8]);
  v36 = a2;
  v13 = sub_2528C0900();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_2527B1594(&qword_27F4FD7B0, MEMORY[0x277D154F8]);
      v23 = sub_2528C0930();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_2527AEB58(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_2527AEB58(uint64_t a1, unint64_t a2, char a3)
{
  v34 = a1;
  v6 = sub_2528BF070();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v31 = v3;
  v32 = v7;
  if (v12 <= v11)
  {
    v13 = v11 + 1;
    if (a3)
    {
      sub_2527AF344(v13);
    }

    else
    {
      sub_2527AF028(v13);
    }

    v14 = *v3;
    v15 = *(*v3 + 40);
    sub_2527B1594(&qword_27F4FD7A8, MEMORY[0x277D154F8]);
    v16 = sub_2528C0900();
    v17 = v14 + 56;
    v33 = v14;
    v18 = -1 << *(v14 + 32);
    a2 = v16 & ~v18;
    if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v19 = ~v18;
      v22 = *(v7 + 16);
      v21 = v7 + 16;
      v20 = v22;
      v23 = *(v21 + 56);
      do
      {
        v20(v10, *(v33 + 48) + v23 * a2, v6);
        sub_2527B1594(&qword_27F4FD7B0, MEMORY[0x277D154F8]);
        v24 = sub_2528C0930();
        (*(v21 - 8))(v10, v6);
        if (v24)
        {
          goto LABEL_14;
        }

        a2 = (a2 + 1) & v19;
      }

      while (((*(v17 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

  else if ((a3 & 1) == 0)
  {
    sub_2527AEDF0();
  }

  v25 = v32;
  v26 = *v31;
  *(v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v25 + 32))(*(v26 + 48) + *(v25 + 72) * a2, v34, v6);
  v28 = *(v26 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v26 + 16) = v30;
    return result;
  }

  __break(1u);
LABEL_14:
  result = sub_2528C1090();
  __break(1u);
  return result;
}

void *sub_2527AEDF0()
{
  v1 = v0;
  v2 = sub_2528BF070();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD7B8, &qword_2528C8D70);
  v7 = *v0;
  v8 = sub_2528C0E30();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

uint64_t sub_2527AF028(uint64_t a1)
{
  v2 = v1;
  v37 = sub_2528BF070();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD7B8, &qword_2528C8D70);
  v10 = sub_2528C0E40();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_2527B1594(&qword_27F4FD7A8, MEMORY[0x277D154F8]);
      result = sub_2528C0900();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
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
    *v2 = v10;
  }

  return result;
}

uint64_t sub_2527AF344(uint64_t a1)
{
  v2 = v1;
  v41 = sub_2528BF070();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD7B8, &qword_2528C8D70);
  result = sub_2528C0E40();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_2527B1594(&qword_27F4FD7A8, MEMORY[0x277D154F8]);
      result = sub_2528C0900();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_2527AF6A0(uint64_t a1, char a2)
{
  *(v2 + 128) = a2;
  *(v2 + 16) = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDC0, &unk_2528C5CD0);
  *(v2 + 24) = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  *(v2 + 32) = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC480, &unk_2528C7FA0) - 8) + 64) + 15;
  *(v2 + 40) = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80) - 8) + 64) + 15;
  *(v2 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2527AF7B4, 0, 0);
}

uint64_t sub_2527AF7B4()
{
  v24 = v0;
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = sub_2528C08B0();
  v0[7] = __swift_project_value_buffer(v2, qword_27F5025C8);

  v3 = sub_2528C0890();
  v4 = sub_2528C0D10();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23 = v7;
    *v6 = 136315138;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD7C0, ">f");
    v9 = MEMORY[0x2530A81A0](v5, v8);
    v11 = sub_2527389AC(v9, v10, &v23);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_252711000, v3, v4, "Searching for zones with comparators: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x2530A8D80](v7, -1, -1);
    MEMORY[0x2530A8D80](v6, -1, -1);
  }

  if (qword_27F4FBB48 != -1)
  {
    swift_once();
  }

  v13 = v0[5];
  v12 = v0[6];
  v14 = v0[2];
  v15 = sub_2528C0820();
  v16 = __swift_project_value_buffer(v15, qword_27F5025E0);
  v0[8] = v16;

  v0[9] = sub_2528B9D4C(4u, 0, v16, v14);

  v17 = type metadata accessor for HomeEntity(0);
  (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
  v18 = sub_2528C05D0();
  (*(*(v18 - 8) + 56))(v13, 1, 1, v18);
  v19 = swift_task_alloc();
  v0[10] = v19;
  *v19 = v0;
  v19[1] = sub_2527AFAB8;
  v20 = v0[5];
  v21 = v0[6];

  return sub_25277ECE4(v21, 0, 1, v20);
}

uint64_t sub_2527AFAB8(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v6 = *v1;
  *(*v1 + 88) = a1;

  sub_2527213D8(v4, &qword_27F4FC480, &unk_2528C7FA0);
  sub_2527213D8(v3, &qword_27F4FC488, &unk_2528C3F80);

  return MEMORY[0x2822009F8](sub_2527AFC14, 0, 0);
}

uint64_t sub_2527AFC14()
{
  v1 = *(v0 + 88);
  v2 = *(v1 + 64);
  v38 = v1 + 64;
  v40 = *(v0 + 24);
  v41 = v1;
  v3 = -1;
  v4 = -1 << *(v1 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & v2;
  v6 = (63 - v4) >> 6;

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  v39 = v0;
  while (1)
  {
    *(v0 + 96) = v9;
    if (!v5)
    {
      break;
    }

    v42 = v9;
LABEL_11:
    v11 = *(v0 + 32);
    v12 = __clz(__rbit64(v5)) | (v8 << 6);
    v13 = *(v41 + 48);
    v14 = sub_2528BECF0();
    (*(*(v14 - 8) + 16))(v11, v13 + *(*(v14 - 8) + 72) * v12, v14);
    v15 = *(v41 + 56);
    v16 = v15 + *(*(type metadata accessor for HomeEntity.SnapshotPair(0) - 8) + 72) * v12;
    v17 = v11 + *(v40 + 48);
    sub_2527B144C(v16, v17, type metadata accessor for HomeEntity.SnapshotPair);
    v18 = sub_2528BF330();
    v19 = sub_2527AE664(v18);
    v20 = swift_task_alloc();
    *(v20 + 16) = v17;
    v21 = sub_2527A4408(sub_2527B1760, v20, v19);

    result = sub_2527213D8(v11, &qword_27F4FCDC0, &unk_2528C5CD0);
    v22 = v21[2];
    v9 = v42;
    v23 = v42[2];
    v24 = v23 + v22;
    if (__OFADD__(v23, v22))
    {
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      return result;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v24 > v42[3] >> 1)
    {
      if (v23 <= v24)
      {
        v26 = v23 + v22;
      }

      else
      {
        v26 = v23;
      }

      v9 = sub_252738344(isUniquelyReferenced_nonNull_native, v26, 1, v42);
    }

    v5 &= v5 - 1;
    if (v21[2])
    {
      v27 = (*(v9 + 24) >> 1) - *(v9 + 16);
      result = type metadata accessor for ZoneEntity();
      v28 = *(result - 8);
      if (v27 < v22)
      {
        goto LABEL_29;
      }

      v29 = (*(v28 + 80) + 32) & ~*(v28 + 80);
      v30 = *(v28 + 72);
      swift_arrayInitWithCopy();

      v0 = v39;
      if (v22)
      {
        v31 = *(v9 + 16);
        v32 = __OFADD__(v31, v22);
        v33 = v31 + v22;
        if (v32)
        {
          goto LABEL_30;
        }

        *(v9 + 16) = v33;
      }
    }

    else
    {

      v0 = v39;
      if (v22)
      {
        goto LABEL_28;
      }
    }
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_27;
    }

    if (v10 >= v6)
    {
      break;
    }

    v5 = *(v38 + 8 * v10);
    ++v8;
    if (v5)
    {
      v42 = v9;
      v8 = v10;
      goto LABEL_11;
    }
  }

  v34 = *(v0 + 88);
  v35 = *(v0 + 128);

  v36 = swift_task_alloc();
  *(v0 + 104) = v36;
  *v36 = v0;
  v36[1] = sub_2527AFFA4;
  v37 = *(v0 + 16);

  return sub_2528AE450(v37, v35 & 1, v9);
}

uint64_t sub_2527AFFA4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 104);
  v5 = *(*v2 + 96);
  v8 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 120) = v1;

  if (v1)
  {
    v6 = sub_2527B0284;
  }

  else
  {
    v6 = sub_2527B00D8;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2527B00D8()
{
  v23 = v0;
  v1 = v0[14];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[7];

  sub_2528BAD58(4u, v3, v2, v1);
  v5 = sub_2528C0890();
  v6 = sub_2528C0D10();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[14];
    v8 = v0[9];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 136315138;
    v11 = type metadata accessor for ZoneEntity();
    v12 = MEMORY[0x2530A81A0](v7, v11);
    v14 = sub_2527389AC(v12, v13, &v22);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_252711000, v5, v6, "Found zoneEntities: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x2530A8D80](v10, -1, -1);
    MEMORY[0x2530A8D80](v9, -1, -1);
  }

  else
  {
    v15 = v0[9];
  }

  v17 = v0[5];
  v16 = v0[6];
  v18 = v0[4];

  v19 = v0[1];
  v20 = v0[14];

  return v19(v20);
}

uint64_t sub_2527B0284()
{
  v1 = v0[9];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[4];

  v5 = v0[1];
  v6 = v0[15];

  return v5();
}

unint64_t sub_2527B03E8()
{
  result = qword_27F4FD740;
  if (!qword_27F4FD740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD740);
  }

  return result;
}

unint64_t sub_2527B05A4()
{
  result = qword_27F4FD778;
  if (!qword_27F4FD778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD778);
  }

  return result;
}

unint64_t sub_2527B05FC()
{
  result = qword_27F4FD780;
  if (!qword_27F4FD780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD780);
  }

  return result;
}

unint64_t sub_2527B069C()
{
  result = qword_27F4FD788;
  if (!qword_27F4FD788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD788);
  }

  return result;
}

unint64_t sub_2527B06F4()
{
  result = qword_27F4FD790;
  if (!qword_27F4FD790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FCD78, &qword_2528C5C90);
    sub_2527B1594(&qword_27F4FCD90, type metadata accessor for ZoneEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD790);
  }

  return result;
}

void sub_2527B07D0()
{
  sub_2528BECF0();
  if (v0 <= 0x3F)
  {
    sub_2527468B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2527B0864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = a3;
  v4 = type metadata accessor for ZoneEntity();
  v27 = *(v4 - 8);
  v28 = v4;
  v5 = *(v27 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v26 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - v8;
  v10 = sub_2528BF330();
  v11 = sub_2527AE664(v10);
  v31 = a2;
  v12 = sub_2527A4408(sub_2527B1430, v30, v11);

  v25 = v12[2];
  if (v25)
  {
    v14 = 0;
    v15 = MEMORY[0x277D84F90];
    while (v14 < v12[2])
    {
      v16 = (*(v27 + 80) + 32) & ~*(v27 + 80);
      v17 = *(v27 + 72);
      sub_2527B144C(v12 + v16 + v17 * v14, v9, type metadata accessor for ZoneEntity);
      v18 = *&v9[*(v28 + 20)];
      v19 = sub_2528BE6B0();
      MEMORY[0x28223BE20](v19);
      *(&v24 - 2) = &v32;
      v20 = sub_25281A4D4(sub_2527B14B4, (&v24 - 4), v29);

      if (v20)
      {
        sub_2527B1530(v9, v26);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v33 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_25282F194(0, *(v15 + 16) + 1, 1);
          v15 = v33;
        }

        v23 = *(v15 + 16);
        v22 = *(v15 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_25282F194(v22 > 1, v23 + 1, 1);
          v15 = v33;
        }

        *(v15 + 16) = v23 + 1;
        result = sub_2527B1530(v26, v15 + v16 + v23 * v17);
      }

      else
      {
        result = sub_2527B14D4(v9);
      }

      if (v25 == ++v14)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
LABEL_13:

    return v15;
  }

  return result;
}

uint64_t sub_2527B0B0C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDC0, &unk_2528C5CD0);
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC480, &unk_2528C7FA0) - 8) + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2527B0BE4, 0, 0);
}

uint64_t sub_2527B0BE4()
{
  v21 = v0;
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = sub_2528C08B0();
  v0[7] = __swift_project_value_buffer(v2, qword_27F5025C8);

  v3 = sub_2528C0890();
  v4 = sub_2528C0D10();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v6 = 136315138;
    v8 = MEMORY[0x2530A81A0](v5, MEMORY[0x277D837D0]);
    v10 = sub_2527389AC(v8, v9, &v20);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_252711000, v3, v4, "Searching for zones with names: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x2530A8D80](v7, -1, -1);
    MEMORY[0x2530A8D80](v6, -1, -1);
  }

  if (qword_27F4FBB48 != -1)
  {
    swift_once();
  }

  v11 = v0[6];
  v12 = v0[2];
  v13 = sub_2528C0820();
  v14 = __swift_project_value_buffer(v13, qword_27F5025E0);
  v0[8] = v14;

  v0[9] = sub_2528BA170(4u, 1, v14, v12);

  v15 = sub_2528C05D0();
  (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
  v16 = swift_task_alloc();
  v0[10] = v16;
  *v16 = v0;
  v16[1] = sub_2527B0E9C;
  v17 = v0[6];
  v18 = v0[3];

  return sub_25277ECE4(v18, 0, 0, v17);
}

uint64_t sub_2527B0E9C(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 88) = a1;

  sub_2527213D8(v3, &qword_27F4FC480, &unk_2528C7FA0);

  return MEMORY[0x2822009F8](sub_2527B0FCC, 0, 0);
}

uint64_t sub_2527B0FCC()
{
  v61 = v0;
  v1 = *(v0 + 88);
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v5 = *(v0 + 32);
  v6 = *(v0 + 88);
  v7 = -1;
  v8 = -1 << *(v6 + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & v2;
  v10 = (63 - v8) >> 6;

  v12 = 0;
  v13 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_10:
    v15 = v59[5];
    v16 = v59[2];
    v17 = __clz(__rbit64(v9)) | (v12 << 6);
    v18 = *(v6 + 48);
    v19 = sub_2528BECF0();
    (*(*(v19 - 8) + 16))(v15, v18 + *(*(v19 - 8) + 72) * v17, v19);
    v20 = *(v6 + 56);
    v21 = v20 + *(*(type metadata accessor for HomeEntity.SnapshotPair(0) - 8) + 72) * v17;
    v22 = *(v58 + 48);
    sub_2527B144C(v21, v15 + v22, type metadata accessor for HomeEntity.SnapshotPair);
    v23 = sub_2527B0864(v15, v15 + v22, v16);
    result = sub_2527213D8(v15, &qword_27F4FCDC0, &unk_2528C5CD0);
    v24 = *(v23 + 16);
    v25 = v13[2];
    v26 = v25 + v24;
    if (__OFADD__(v25, v24))
    {
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      return result;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v26 > v13[3] >> 1)
    {
      if (v25 <= v26)
      {
        v28 = v25 + v24;
      }

      else
      {
        v28 = v25;
      }

      v13 = sub_252738344(isUniquelyReferenced_nonNull_native, v28, 1, v13);
    }

    v9 &= v9 - 1;
    if (*(v23 + 16))
    {
      v29 = (v13[3] >> 1) - v13[2];
      result = type metadata accessor for ZoneEntity();
      v30 = *(result - 8);
      if (v29 < v24)
      {
        goto LABEL_30;
      }

      v31 = (*(v30 + 80) + 32) & ~*(v30 + 80);
      v32 = *(v30 + 72);
      swift_arrayInitWithCopy();

      if (v24)
      {
        v33 = v13[2];
        v34 = __OFADD__(v33, v24);
        v35 = v33 + v24;
        if (v34)
        {
          goto LABEL_31;
        }

        v13[2] = v35;
      }
    }

    else
    {

      if (v24)
      {
        goto LABEL_29;
      }
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_28;
    }

    if (v14 >= v10)
    {
      break;
    }

    v9 = *(v3 + 8 * v14);
    ++v12;
    if (v9)
    {
      v12 = v14;
      goto LABEL_10;
    }
  }

  v36 = v59[11];
  v38 = v59[8];
  v37 = v59[9];
  v39 = v59[7];
  v40 = v59[2];

  sub_2528BAD58(4u, v37, v38, v13);

  v41 = sub_2528C0890();
  v42 = sub_2528C0D10();

  v43 = os_log_type_enabled(v41, v42);
  v44 = v59[9];
  if (v43)
  {
    v45 = v59[2];
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v60 = v47;
    *v46 = 136315394;
    v48 = type metadata accessor for ZoneEntity();
    v49 = MEMORY[0x2530A81A0](v13, v48);
    v51 = sub_2527389AC(v49, v50, &v60);

    *(v46 + 4) = v51;
    *(v46 + 12) = 2080;
    v52 = MEMORY[0x2530A81A0](v45, MEMORY[0x277D837D0]);
    v54 = sub_2527389AC(v52, v53, &v60);

    *(v46 + 14) = v54;
    _os_log_impl(&dword_252711000, v41, v42, "Found zoneEntities: %s for names: %s", v46, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v47, -1, -1);
    MEMORY[0x2530A8D80](v46, -1, -1);
  }

  v56 = v59[5];
  v55 = v59[6];

  v57 = v59[1];

  return v57(v13);
}

uint64_t sub_2527B144C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2527B14D4(uint64_t a1)
{
  v2 = type metadata accessor for ZoneEntity();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2527B1530(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ZoneEntity();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2527B1594(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2527B1600()
{
  result = qword_27F4FD808;
  if (!qword_27F4FD808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FD800, &qword_2528C8E20);
    sub_2527B168C();
    sub_25274AD48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD808);
  }

  return result;
}

unint64_t sub_2527B168C()
{
  result = qword_27F4FD810;
  if (!qword_27F4FD810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FD7F0, &qword_2528C8DF0);
    sub_25272275C(&qword_27F4FD818, &qword_27F4FD7E8, &qword_2528C8DE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD810);
  }

  return result;
}

unint64_t sub_2527B1788()
{
  result = qword_27F4FD838;
  if (!qword_27F4FD838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD838);
  }

  return result;
}

unint64_t sub_2527B17E0()
{
  result = qword_27F4FD840;
  if (!qword_27F4FD840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD840);
  }

  return result;
}

unint64_t sub_2527B18B8()
{
  result = qword_27F4FD848;
  if (!qword_27F4FD848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD848);
  }

  return result;
}

uint64_t sub_2527B1930()
{
  v0 = sub_2528BEC40();
  __swift_allocate_value_buffer(v0, qword_27F502920);
  __swift_project_value_buffer(v0, qword_27F502920);
  return sub_2528BEC20();
}

uint64_t sub_2527B19C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD858, &qword_2528C8FB8);
  v4[8] = v5;
  v6 = *(v5 - 8);
  v4[9] = v6;
  v4[10] = *(v6 + 64);
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2527B1A9C, 0, 0);
}

uint64_t sub_2527B1A9C()
{
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  v4 = sub_2528C08B0();
  v0[12] = __swift_project_value_buffer(v4, qword_27F5025C8);
  sub_2527BC3D4(v3, v1, v2);
  if (qword_27F4FBB48 != -1)
  {
    swift_once();
  }

  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[5];
  v8 = sub_2528C0820();
  v0[13] = __swift_project_value_buffer(v8, qword_27F5025E0);
  v0[14] = sub_2528B8A3C(v7, v5, v6);
  v9 = swift_task_alloc();
  v0[15] = v9;
  *v9 = v0;
  v9[1] = sub_2527B1C08;
  v10 = v0[6];
  v11 = v0[7];
  v12 = v0[5];

  return sub_2527B1FA8(v12, v10, v11);
}

uint64_t sub_2527B1C08(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 120);
  v8 = *v3;
  *(*v3 + 128) = v2;

  if (v2)
  {
    v9 = sub_2527B1EDC;
  }

  else
  {
    *(v6 + 136) = a2;
    *(v6 + 144) = a1;
    v9 = sub_2527B1D3C;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2527B1D3C()
{
  v1 = v0[17];
  v14 = v0[14];
  v15 = v0[13];
  v2 = v0[11];
  v16 = v0[12];
  v3 = v0[9];
  v4 = v0[8];
  v12 = v0[10];
  v13 = v0[7];
  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[4];
  v0[2] = v0[18];
  v0[3] = v1;
  sub_2527466B0();
  sub_2528BE660();

  (*(v3 + 16))(v2, v7, v4);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, v2, v4);
  sub_2527BD80C(v6, v5, v13, v14, sub_2527B5B1C, v9);

  sub_2527BE68C(v6, v5, v13);

  v10 = v0[1];

  return v10();
}

uint64_t sub_2527B1EDC()
{
  v1 = v0[16];
  v2 = v0[13];
  v4 = v0[11];
  v3 = v0[12];
  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[5];
  sub_2527BF9E4(v7, v6, v5, v0[14], v1);
  sub_2527C0A64(v7, v6, v5, v1);
  swift_willThrow();

  v8 = v0[1];
  v9 = v0[16];

  return v8();
}

uint64_t sub_2527B1FA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD078, &qword_2528C74A8) - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v5 = sub_2528BECF0();
  v3[10] = v5;
  v6 = *(v5 - 8);
  v3[11] = v6;
  v7 = *(v6 + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v8 = type metadata accessor for SceneEntity();
  v3[15] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v10 = sub_2528BF400();
  v3[20] = v10;
  v11 = *(v10 - 8);
  v3[21] = v11;
  v12 = *(v11 + 64) + 15;
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v13 = sub_2528BEEC0();
  v3[24] = v13;
  v14 = *(v13 - 8);
  v3[25] = v14;
  v15 = *(v14 + 64) + 15;
  v3[26] = swift_task_alloc();
  v16 = type metadata accessor for HomeEntity(0);
  v3[27] = v16;
  v17 = *(v16 - 8);
  v3[28] = v17;
  v18 = *(v17 + 64) + 15;
  v3[29] = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD680, &unk_2528C9030) - 8) + 64) + 15;
  v3[30] = swift_task_alloc();
  v20 = sub_2528BFCE0();
  v3[31] = v20;
  v21 = *(v20 - 8);
  v3[32] = v21;
  v22 = *(v21 + 64) + 15;
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v23 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80) - 8) + 64) + 15;
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v24 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC628, &qword_2528C4750) - 8) + 64) + 15;
  v3[38] = swift_task_alloc();
  v25 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC480, &unk_2528C7FA0) - 8) + 64) + 15;
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v26 = sub_2528C05D0();
  v3[41] = v26;
  v27 = *(v26 - 8);
  v3[42] = v27;
  v28 = *(v27 + 64) + 15;
  v3[43] = swift_task_alloc();
  v29 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDA0, &unk_2528C6AC0) - 8) + 64) + 15;
  v3[44] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2527B2430, 0, 0);
}

uint64_t sub_2527B2430()
{
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v1 = sub_2528C08B0();
  v0[45] = __swift_project_value_buffer(v1, qword_27F5025C8);
  v2 = sub_2528C0890();
  v3 = sub_2528C0D10();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_252711000, v2, v3, "Running ActivateSceneIntent", v4, 2u);
    MEMORY[0x2530A8D80](v4, -1, -1);
  }

  v5 = v0[44];
  v6 = v0[42];
  v32 = v0[43];
  v33 = v0[40];
  v34 = v0[41];
  v35 = v0[37];
  v7 = v0[28];
  v36 = v0[27];
  v8 = v0[7];
  v9 = v0[8];
  v10 = v0[6];

  v11 = sub_2528C0C40();
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v10;
  v12[5] = v8;
  v12[6] = v9;
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2528BEA50();
  sub_2527D3E74(0, 0, v5, &unk_2528C9048, v12);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC490, &unk_2528C9050);
  v13 = sub_2528BF3E0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_2528C17E0;
  v18 = v17 + v16;
  v19 = *(v14 + 104);
  v19(v18, *MEMORY[0x277D15A30], v13);
  *(v18 + v15) = 0;
  v19(v18 + v15, *MEMORY[0x277D15A28], v13);
  sub_252744570(v17);
  swift_setDeallocating();
  v20 = 1;
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_2528C05A0();
  v21 = *(v6 + 16);
  v0[46] = v21;
  v0[47] = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v21(v33, v32, v34);
  v22 = *(v6 + 56);
  v0[48] = v22;
  v0[49] = (v6 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v22(v33, 0, 1, v34);
  sub_2528BE790();
  v23 = *(v7 + 48);
  v0[50] = v23;
  v0[51] = (v7 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (!v23(v35, 1, v36))
  {
    (*(v0[11] + 16))(v0[38], v0[37], v0[10]);
    v20 = 0;
  }

  v24 = v0[38];
  v25 = v0[10];
  v26 = v0[11];
  sub_2527213D8(v0[37], &qword_27F4FC488, &unk_2528C3F80);
  v27 = *(v26 + 56);
  v0[52] = v27;
  v27(v24, v20, 1, v25);
  v28 = swift_task_alloc();
  v0[53] = v28;
  *v28 = v0;
  v28[1] = sub_2527B28A4;
  v29 = v0[40];
  v30 = v0[38];

  return sub_25279E2F8(v29, v30);
}

uint64_t sub_2527B28A4(uint64_t a1)
{
  v2 = *(*v1 + 424);
  v3 = *(*v1 + 320);
  v4 = *(*v1 + 304);
  v6 = *v1;
  *(*v1 + 432) = a1;

  sub_2527213D8(v4, &qword_27F4FC628, &qword_2528C4750);
  sub_2527213D8(v3, &qword_27F4FC480, &unk_2528C7FA0);

  return MEMORY[0x2822009F8](sub_2527B2A00, 0, 0);
}

uint64_t sub_2527B2A00()
{
  v2 = v0[50];
  v1 = v0[51];
  v3 = v0[36];
  v4 = v0[27];
  v5 = v0[6];
  sub_2528BE790();
  v6 = v2(v3, 1, v4);
  v7 = v0[54];
  if (v6 == 1)
  {
    v9 = v0[48];
    v8 = v0[49];
    v11 = v0[46];
    v10 = v0[47];
    v12 = v0[43];
    v13 = v0[41];
    v14 = v0[39];
    v15 = v0[36];
    v16 = v0[54];

    sub_2527213D8(v15, &qword_27F4FC488, &unk_2528C3F80);
    v11(v14, v12, v13);
    v9(v14, 0, 1, v13);
    v17 = swift_task_alloc();
    v0[55] = v17;
    *v17 = v0;
    v17[1] = sub_2527B30F0;
    v18 = v0[39];
    v19 = v0[9];

    return sub_252799538(v19, v18);
  }

  sub_2527B5C50(v0[36], v0[29]);
  if (*(v7 + 16) && (v21 = v0[54], v22 = sub_252785C40(v0[29]), (v23 & 1) != 0))
  {
    v25 = v0[25];
    v24 = v0[26];
    v27 = v0[23];
    v26 = v0[24];
    v28 = v0[21];
    v29 = v0[19];
    v82 = v0[20];
    v84 = v0[15];
    v30 = v0[11];
    v86 = v0[10];
    v88 = v0[14];
    v31 = v0[7];
    (*(v25 + 16))(v24, *(v0[54] + 56) + *(v25 + 72) * v22, v26);

    sub_2528BEE70();
    (*(v25 + 8))(v24, v26);
    v32 = sub_2528BF380();
    (*(v28 + 8))(v27, v82);
    sub_2528BE790();
    (*(v30 + 16))(v88, v29 + *(v84 + 20), v86);
    sub_2527B5CB4(v29, type metadata accessor for SceneEntity);
    if (*(v32 + 16))
    {
      v33 = sub_252785C40(v0[14]);
      if (v34)
      {
        v35 = v0[29];
        v36 = v0[14];
        v37 = v0[10];
        v38 = v0[11];
        (*(v0[32] + 16))(v0[30], *(v32 + 56) + *(v0[32] + 72) * v33, v0[31]);
        (*(v38 + 8))(v36, v37);
        sub_2527B5CB4(v35, type metadata accessor for HomeEntity);

        v39 = 0;
        goto LABEL_13;
      }
    }

    v41 = v0[29];
    v42 = v0[14];
    v43 = v0[10];
    v44 = v0[11];

    (*(v44 + 8))(v42, v43);
  }

  else
  {
    v40 = v0[54];
    v41 = v0[29];
  }

  sub_2527B5CB4(v41, type metadata accessor for HomeEntity);
  v39 = 1;
LABEL_13:
  v45 = v0[31];
  v46 = v0[32];
  v47 = v0[30];
  (*(v46 + 56))(v47, v39, 1, v45);
  if ((*(v46 + 48))(v47, 1, v45) == 1)
  {
    v66 = v0[43];
    v67 = v0[44];
    v48 = v0[42];
    v64 = v0[52];
    v65 = v0[41];
    v68 = v0[40];
    v69 = v0[39];
    v70 = v0[38];
    v71 = v0[37];
    v72 = v0[36];
    v73 = v0[35];
    v74 = v0[34];
    v75 = v0[33];
    v76 = v0[29];
    v77 = v0[26];
    v78 = v0[23];
    v79 = v0[22];
    v80 = v0[19];
    v81 = v0[18];
    v49 = v0[17];
    v63 = v0[16];
    v50 = v0[15];
    v83 = v0[14];
    v85 = v0[13];
    v51 = v0[10];
    v52 = v0[11];
    v87 = v0[12];
    v89 = v0[9];
    v53 = v0[7];
    sub_2527213D8(v0[30], &qword_27F4FD680, &unk_2528C9030);
    type metadata accessor for HomeAppIntentError();
    sub_2527B5D14(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError);
    swift_allocError();
    v55 = v54;
    v56 = (v54 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDD0, &qword_2528C5CE0) + 48));
    sub_2528BE790();
    (*(v52 + 16))(v55, v49 + *(v50 + 20), v51);
    sub_2527B5CB4(v49, type metadata accessor for SceneEntity);
    v64(v55, 0, 1, v51);
    sub_2528BE790();
    v57 = *v63;
    sub_2528BE6B0();
    v58 = v0[2];
    v59 = v0[3];
    sub_2527B5CB4(v63, type metadata accessor for SceneEntity);
    *v56 = v58;
    v56[1] = v59;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v48 + 8))(v66, v65);

    v60 = v0[1];

    return v60();
  }

  else
  {
    (*(v0[32] + 32))(v0[35], v0[30], v0[31]);
    sub_2528BEFC0();
    v61 = *(MEMORY[0x277D15430] + 4);
    v62 = swift_task_alloc();
    v0[56] = v62;
    *v62 = v0;
    v62[1] = sub_2527B37C8;

    return MEMORY[0x28216EA40]();
  }
}

uint64_t sub_2527B30F0()
{
  v1 = *(*v0 + 440);
  v2 = *(*v0 + 312);
  v4 = *v0;

  sub_2527213D8(v2, &qword_27F4FC480, &unk_2528C7FA0);

  return MEMORY[0x2822009F8](sub_2527B3218, 0, 0);
}

uint64_t sub_2527B3218()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[9];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[31];
    v5 = v0[32];
    v6 = v0[30];
    sub_2527213D8(v3, &qword_27F4FD078, &qword_2528C74A8);
    (*(v5 + 56))(v6, 1, 1, v4);
LABEL_9:
    v45 = v0[43];
    v46 = v0[44];
    v26 = v0[42];
    v43 = v0[52];
    v44 = v0[41];
    v47 = v0[40];
    v48 = v0[39];
    v49 = v0[38];
    v50 = v0[37];
    v51 = v0[36];
    v52 = v0[35];
    v53 = v0[34];
    v54 = v0[33];
    v55 = v0[29];
    v56 = v0[26];
    v57 = v0[23];
    v58 = v0[22];
    v59 = v0[19];
    v60 = v0[18];
    v27 = v0[17];
    v42 = v0[16];
    v28 = v0[15];
    v61 = v0[14];
    v63 = v0[13];
    v29 = v0[10];
    v30 = v0[11];
    v65 = v0[12];
    v67 = v0[9];
    v31 = v0[7];
    sub_2527213D8(v0[30], &qword_27F4FD680, &unk_2528C9030);
    type metadata accessor for HomeAppIntentError();
    sub_2527B5D14(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError);
    swift_allocError();
    v33 = v32;
    v34 = (v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDD0, &qword_2528C5CE0) + 48));
    sub_2528BE790();
    (*(v30 + 16))(v33, v27 + *(v28 + 20), v29);
    sub_2527B5CB4(v27, type metadata accessor for SceneEntity);
    v43(v33, 0, 1, v29);
    sub_2528BE790();
    v35 = *v42;
    sub_2528BE6B0();
    v36 = v0[2];
    v37 = v0[3];
    sub_2527B5CB4(v42, type metadata accessor for SceneEntity);
    *v34 = v36;
    v34[1] = v37;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v26 + 8))(v45, v44);

    v38 = v0[1];

    return v38();
  }

  v8 = v0[21];
  v7 = v0[22];
  v9 = v0[20];
  v10 = v0[18];
  v66 = v0[13];
  v11 = v0[11];
  v62 = v0[15];
  v64 = v0[10];
  v12 = v0[7];
  sub_2528BEE70();
  (*(v2 + 8))(v3, v1);
  v13 = sub_2528BF380();
  (*(v8 + 8))(v7, v9);
  sub_2528BE790();
  (*(v11 + 16))(v66, v10 + *(v62 + 20), v64);
  sub_2527B5CB4(v10, type metadata accessor for SceneEntity);
  v14 = v0[13];
  if (*(v13 + 16))
  {
    v15 = sub_252785C40(v0[13]);
    if (v16)
    {
      v17 = v0[13];
      v18 = v0[10];
      v19 = v0[11];
      (*(v0[32] + 16))(v0[30], *(v13 + 56) + *(v0[32] + 72) * v15, v0[31]);
      (*(v19 + 8))(v17, v18);

      v20 = 0;
      goto LABEL_8;
    }

    v14 = v0[13];
  }

  v21 = v0[10];
  v22 = v0[11];

  (*(v22 + 8))(v14, v21);
  v20 = 1;
LABEL_8:
  v23 = v0[31];
  v24 = v0[32];
  v25 = v0[30];
  (*(v24 + 56))(v25, v20, 1, v23);
  if ((*(v24 + 48))(v25, 1, v23) == 1)
  {
    goto LABEL_9;
  }

  (*(v0[32] + 32))(v0[35], v0[30], v0[31]);
  sub_2528BEFC0();
  v40 = *(MEMORY[0x277D15430] + 4);
  v41 = swift_task_alloc();
  v0[56] = v41;
  *v41 = v0;
  v41[1] = sub_2527B37C8;

  return MEMORY[0x28216EA40]();
}

uint64_t sub_2527B37C8(uint64_t a1)
{
  v2 = *(*v1 + 448);
  v4 = *v1;
  *(*v1 + 456) = a1;

  return MEMORY[0x2822009F8](sub_2527B38C8, 0, 0);
}

uint64_t sub_2527B38C8()
{
  sub_2528C0C20();
  *(v0 + 464) = sub_2528C0C10();
  v2 = sub_2528C0BD0();

  return MEMORY[0x2822009F8](sub_2527B395C, v2, v1);
}

uint64_t sub_2527B395C()
{
  v2 = v0[57];
  v1 = v0[58];

  v0[59] = sub_2528BEEF0();

  return MEMORY[0x2822009F8](sub_2527B39D0, 0, 0);
}

uint64_t sub_2527B39D0()
{
  v49 = v0;
  v1 = v0[59];
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[60] = v2;
    *v2 = v0;
    v2[1] = sub_2527B3CCC;
    v3 = v0[35];
    v4 = v0[7];
    v5 = v0[8];
    v6 = v0[6];

    return sub_2527B46C4((v0 + 4), v3, v6, v4, v5, v1);
  }

  else
  {
    v8 = v0[45];
    v9 = sub_2528C0890();
    v10 = sub_2528C0CF0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_252711000, v9, v10, "Failed to execution actionSet because we are missing a homeManager (THIS SHOULD NEVER HAPPEN", v11, 2u);
      MEMORY[0x2530A8D80](v11, -1, -1);
    }

    v13 = v0[42];
    v12 = v0[43];
    v14 = v0[41];
    v15 = v0[35];
    v16 = v0[31];
    v17 = v0[32];
    v18 = v0[17];
    v19 = v0[7];

    sub_2528BE790();
    v47 = 10;
    v48 = 0;
    v46 = sub_252749330(v18, &v47);
    v45 = v20;
    (*(v17 + 8))(v15, v16);
    (*(v13 + 8))(v12, v14);
    v22 = v0[43];
    v21 = v0[44];
    v24 = v0[39];
    v23 = v0[40];
    v26 = v0[37];
    v25 = v0[38];
    v27 = v0[35];
    v28 = v0[36];
    v30 = v0[33];
    v29 = v0[34];
    v32 = v0[30];
    v33 = v0[29];
    v34 = v0[26];
    v35 = v0[23];
    v36 = v0[22];
    v37 = v0[19];
    v38 = v0[18];
    v39 = v0[17];
    v40 = v0[16];
    v41 = v0[14];
    v42 = v0[13];
    v43 = v0[12];
    v44 = v0[9];

    v31 = v0[1];

    return v31(v46, v45);
  }
}

uint64_t sub_2527B3CCC()
{
  v1 = *(*v0 + 480);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2527B3DC8, 0, 0);
}

uint64_t sub_2527B3DC8()
{
  v77 = v0;
  v1 = *(v0 + 360);
  v2 = *(v0 + 280);
  v3 = *(v0 + 264);
  v4 = *(v0 + 248);
  v5 = *(v0 + 32);
  v72 = *(v0 + 40);
  v6 = *(*(v0 + 256) + 16);
  v6(*(v0 + 272), v2, v4);
  v6(v3, v2, v4);
  v7 = sub_2528C0890();
  v8 = sub_2528C0D10();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 264);
  v11 = *(v0 + 272);
  v12 = *(v0 + 248);
  v13 = *(v0 + 256);
  if (v9)
  {
    loga = v7;
    v58 = *(v0 + 96);
    v69 = *(v0 + 88);
    v14 = *(v0 + 80);
    v62 = v8;
    v15 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v74 = v64;
    *v15 = 136381187;
    v16 = sub_2528BFCB0();
    v60 = v5;
    v18 = v17;
    v19 = *(v13 + 8);
    v19(v11, v12);
    v20 = sub_2527389AC(v16, v18, &v74);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2082;
    sub_2528BFCA0();
    sub_2527B5D14(&qword_27F4FD070, MEMORY[0x277CC95F0]);
    v21 = sub_2528C1040();
    v23 = v22;
    (*(v69 + 8))(v58, v14);
    v70 = v19;
    v19(v10, v12);
    v24 = sub_2527389AC(v21, v23, &v74);

    *(v15 + 14) = v24;
    *(v15 + 22) = 2082;
    v25 = v60;
    v75 = v60;
    v76 = v72;
    v26 = sub_2527348DC();
    v28 = sub_2527389AC(v26, v27, &v74);

    *(v15 + 24) = v28;
    _os_log_impl(&dword_252711000, loga, v62, "ActivateSceneIntent completed executing %{private}s(%{public}s) with results: %{public}s", v15, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v64, -1, -1);
    MEMORY[0x2530A8D80](v15, -1, -1);
  }

  else
  {

    v29 = *(v13 + 8);
    v29(v10, v12);
    v70 = v29;
    v29(v11, v12);
    v25 = v5;
  }

  v30 = *(v0 + 472);
  v32 = *(v0 + 336);
  v31 = *(v0 + 344);
  v33 = *(v0 + 328);
  v34 = *(v0 + 280);
  v35 = *(v0 + 248);
  v36 = *(v0 + 136);
  v37 = *(v0 + 56);
  sub_2528BE790();
  v75 = v25;
  v76 = v72;
  v73 = sub_252749330(v36, &v75);
  log = v38;

  v70(v34, v35);
  (*(v32 + 8))(v31, v33);
  v40 = *(v0 + 344);
  v39 = *(v0 + 352);
  v42 = *(v0 + 312);
  v41 = *(v0 + 320);
  v44 = *(v0 + 296);
  v43 = *(v0 + 304);
  v45 = *(v0 + 280);
  v46 = *(v0 + 288);
  v48 = *(v0 + 264);
  v47 = *(v0 + 272);
  v51 = *(v0 + 240);
  v52 = *(v0 + 232);
  v53 = *(v0 + 208);
  v54 = *(v0 + 184);
  v55 = *(v0 + 176);
  v56 = *(v0 + 152);
  v57 = *(v0 + 144);
  v59 = *(v0 + 136);
  v61 = *(v0 + 128);
  v63 = *(v0 + 112);
  v65 = *(v0 + 104);
  v68 = *(v0 + 96);
  v71 = *(v0 + 72);

  v49 = *(v0 + 8);

  return v49(v73, log);
}