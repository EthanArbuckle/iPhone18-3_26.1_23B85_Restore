uint64_t Image.applyModifiers(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1 + 32;

    do
    {
      sub_255D3CE1C(v4, v8);
      v5 = v9;
      v6 = v10;
      __swift_project_boxed_opaque_existential_1(v8, v9);
      a2 = (*(v6 + 16))(a2, v5, v6);

      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      v4 += 40;
      --v3;
    }

    while (v3);
  }

  else
  {
  }

  return a2;
}

uint64_t sub_255DC26E0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (a5 < 0)
  {
    v39 = v5;
    v10 = *((a5 & 0x7FFFFFFFFFFFFFFFLL) + 0x30);
    v34 = *((a5 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v35 = *((a5 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
    v37 = *((a5 & 0x7FFFFFFFFFFFFFFFLL) + 0x28);
    v17 = sub_255D8F9E4(a4);
    if (v18)
    {
      if (qword_27F7E5E80 != -1)
      {
        swift_once();
      }

      v19 = sub_255E386A8();
      __swift_project_value_buffer(v19, qword_27F8152D8);
      v20 = sub_255E38688();
      v21 = sub_255E3A848();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_255D2E000, v20, v21, "SubReference to find binding, unable to resolve index", v22, 2u);
        MEMORY[0x259C4F9E0](v22, -1, -1);
      }

      sub_255D5C33C();
      swift_allocError();
      *v23 = 2;
      *(v23 + 8) = 0;
      *(v23 + 16) = 0;
      *(v23 + 24) = 0;
      *(v23 + 32) = 5;
      return swift_willThrow();
    }

    v24 = v17;
    if ((~v10 & 0xF000000000000007) == 0)
    {
      v25 = swift_allocObject();
      v25[2] = 0;
      v25[3] = 0;
      v25[4] = a1;
      v25[5] = a2;
      v25[6] = a3;
      v25[7] = v24;
      v26 = swift_allocObject();
      v26[2] = 0;
      v26[3] = 0;
      v26[4] = a1;
      v26[5] = a2;
      v26[6] = a3;
      v26[7] = v24;
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8010, &unk_255E53850);
      goto LABEL_13;
    }

    v29 = swift_allocObject();
    v29[2] = 0;
    v29[3] = 0;
    v29[4] = a1;
    v29[5] = a2;
    v29[6] = a3;
    v29[7] = v24;
    v30 = swift_allocObject();
    v30[2] = 0;
    v30[3] = 0;
    v30[4] = a1;
    v30[5] = a2;
    v30[6] = a3;
    v30[7] = v24;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    sub_255D34858(v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8018, &qword_255E5D6F0);
  }

  else
  {
    v10 = *(a5 + 48);
    v34 = *(a5 + 16);
    v35 = *(a5 + 32);
    v36 = *(a5 + 40);
    result = StringResolvable.resolved(with:)(a4);
    if (v5)
    {
      return result;
    }

    v13 = result;
    v14 = v12;
    v39 = 0;
    if ((~v10 & 0xF000000000000007) == 0)
    {
      v15 = swift_allocObject();
      v15[2] = 0;
      v15[3] = 0;
      v15[4] = a1;
      v15[5] = a2;
      v15[6] = a3;
      v15[7] = v13;
      v15[8] = v14;
      v16 = swift_allocObject();
      v16[2] = 0;
      v16[3] = 0;
      v16[4] = a1;
      v16[5] = a2;
      v16[6] = a3;
      v16[7] = v13;
      v16[8] = v14;
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8010, &unk_255E53850);
LABEL_13:
      sub_255E3A068();
      return v38;
    }

    v27 = swift_allocObject();
    v27[2] = 0;
    v27[3] = 0;
    v27[4] = a1;
    v27[5] = a2;
    v27[6] = a3;
    v27[7] = v13;
    v27[8] = v14;
    v28 = swift_allocObject();
    v28[2] = 0;
    v28[3] = 0;
    v28[4] = a1;
    v28[5] = a2;
    v28[6] = a3;
    v28[7] = v13;
    v28[8] = v14;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    sub_255D34858(v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8018, &qword_255E5D6F0);
  }

  sub_255E3A068();
  sub_255E3A098();
  if (*(&v34 + 1))
  {
    v31 = sub_255DC26E0(v34, *(&v34 + 1), v35, a4, v10);
    if (!v39)
    {
      v33 = v31;
      sub_255D2F870(v10);
      sub_255DC6C84(v34, *(&v34 + 1));
      return v33;
    }

    sub_255DC6C84(v34, *(&v34 + 1));
    return sub_255D2F870(v10);
  }

  else
  {
    sub_255D5C33C();
    swift_allocError();
    *v32 = 1;
    *(v32 + 8) = 0;
    *(v32 + 16) = 0;
    *(v32 + 24) = 0;
    *(v32 + 32) = 5;
    swift_willThrow();
    return sub_255D2F870(v10);
  }
}

uint64_t sub_255DC2CD0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a5 & 0x8000000000000000) == 0)
  {
    v10 = *(a5 + 48);
    v35 = *(a5 + 16);
    v37 = *(a5 + 32);
    v39 = *(a5 + 40);
    result = StringResolvable.resolved(with:)(a4);
    if (v5)
    {
      return result;
    }

    v13 = result;
    v14 = v12;
    if ((~v10 & 0xF000000000000007) == 0)
    {
      v15 = swift_allocObject();
      v15[2] = 0;
      v15[3] = 0;
      v15[4] = a1;
      v15[5] = a2;
      v15[6] = a3;
      v15[7] = v13;
      v15[8] = v14;
      v16 = swift_allocObject();
      v16[2] = 0;
      v16[3] = 0;
      v16[4] = a1;
      v16[5] = a2;
      v16[6] = a3;
      v16[7] = v13;
      v16[8] = v14;
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8018, &qword_255E5D6F0);
      return sub_255E3A068();
    }

    v28 = swift_allocObject();
    v28[2] = 0;
    v28[3] = 0;
    v28[4] = a1;
    v28[5] = a2;
    v28[6] = a3;
    v28[7] = v13;
    v28[8] = v14;
    v29 = swift_allocObject();
    v29[2] = 0;
    v29[3] = 0;
    v29[4] = a1;
    v29[5] = a2;
    v29[6] = a3;
    v29[7] = v13;
    v29[8] = v14;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    sub_255D34858(v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8018, &qword_255E5D6F0);
    sub_255E3A068();
    sub_255E3A098();
    if (*(&v35 + 1))
    {
      sub_255DC2CD0(v35, *(&v35 + 1), v37, a4, v10);
      sub_255DC6C84(v35, *(&v35 + 1));
    }

    else
    {
      sub_255D5C33C();
      swift_allocError();
      *v33 = 1;
      *(v33 + 8) = 0;
      *(v33 + 16) = 0;
      *(v33 + 24) = 0;
      *(v33 + 32) = 5;
      swift_willThrow();
    }

    v30 = v10;
    return sub_255D2F870(v30);
  }

  v17 = *((a5 & 0x7FFFFFFFFFFFFFFFLL) + 0x30);
  v36 = *((a5 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  v38 = *((a5 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
  v40 = *((a5 & 0x7FFFFFFFFFFFFFFFLL) + 0x28);
  v18 = sub_255D8F9E4(a4);
  if ((v19 & 1) == 0)
  {
    v25 = v18;
    if ((~v17 & 0xF000000000000007) == 0)
    {
      v26 = swift_allocObject();
      v26[2] = 0;
      v26[3] = 0;
      v26[4] = a1;
      v26[5] = a2;
      v26[6] = a3;
      v26[7] = v25;
      v27 = swift_allocObject();
      v27[2] = 0;
      v27[3] = 0;
      v27[4] = a1;
      v27[5] = a2;
      v27[6] = a3;
      v27[7] = v25;
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8018, &qword_255E5D6F0);
      return sub_255E3A068();
    }

    v31 = swift_allocObject();
    v31[2] = 0;
    v31[3] = 0;
    v31[4] = a1;
    v31[5] = a2;
    v31[6] = a3;
    v31[7] = v25;
    v32 = swift_allocObject();
    v32[2] = 0;
    v32[3] = 0;
    v32[4] = a1;
    v32[5] = a2;
    v32[6] = a3;
    v32[7] = v25;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    sub_255D34858(v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8018, &qword_255E5D6F0);
    sub_255E3A068();
    sub_255E3A098();
    if (*(&v36 + 1))
    {
      sub_255DC2CD0(v36, *(&v36 + 1), v38, a4, v17);
      sub_255DC6C84(v36, *(&v36 + 1));
    }

    else
    {
      sub_255D5C33C();
      swift_allocError();
      *v34 = 1;
      *(v34 + 8) = 0;
      *(v34 + 16) = 0;
      *(v34 + 24) = 0;
      *(v34 + 32) = 5;
      swift_willThrow();
    }

    v30 = v17;
    return sub_255D2F870(v30);
  }

  if (qword_27F7E5E80 != -1)
  {
    swift_once();
  }

  v20 = sub_255E386A8();
  __swift_project_value_buffer(v20, qword_27F8152D8);
  v21 = sub_255E38688();
  v22 = sub_255E3A848();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_255D2E000, v21, v22, "SubReference to find binding, unable to resolve index", v23, 2u);
    MEMORY[0x259C4F9E0](v23, -1, -1);
  }

  sub_255D5C33C();
  swift_allocError();
  *v24 = 2;
  *(v24 + 8) = 0;
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  *(v24 + 32) = 5;
  return swift_willThrow();
}

uint64_t sub_255DC3354@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v10 = *v3;
  v11 = *(v3 + 8);
  v12 = *(v3 + 16);
  v13 = *(v3 + 24);
  sub_255D3E5A8(*v3, v11, v12, v13);
  StringResolvable.resolved(with:)(a2);
  if (v4)
  {
    return sub_255D38060(v10, v11, v12, v13);
  }

  sub_255D38060(v10, v11, v12, v13);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a3[3] = sub_255E39FE8();
  a3[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(a3);
  sub_255E39B68();
}

uint64_t sub_255DC3568(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = *(v2 + 4);
  return sub_255DB7690(a1, a2);
}

uint64_t sub_255DC3628(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7F98, &unk_255E537E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - v7;
  v9 = *(*v2 + 104);
  v10 = MEMORY[0x277D84F90];
  v17 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6160, &unk_255E4DBA0);
  sub_255E38708();
  (*(v5 + 32))(v2 + v9, v8, v4);
  v11 = *(*v2 + 112);
  *(v2 + v11) = sub_255DC513C(v10);
  *(v2 + *(*v2 + 128)) = 0;
  *(v2 + *(*v2 + 120)) = a1;
  if (a1)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7FA0, &unk_255E537F0);
    sub_255D38950(&qword_27F7E7FA8, &qword_27F7E7FA0, &unk_255E537F0);
    v17 = sub_255E386D8();
    swift_allocObject();
    swift_weakInit();
    sub_255E386F8();
    v12 = sub_255E38758();
  }

  else
  {
    v12 = 0;
  }

  v13 = *(*v2 + 128);
  v14 = *(v2 + v13);
  *(v2 + v13) = v12;

  return v2;
}

uint64_t sub_255DC38A8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7F90, &unk_255E536A0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - v7;
  v9 = *(*v2 + 104);
  v10 = MEMORY[0x277D84F90];
  v17 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  (*(v5 + 32))(v2 + v9, v8, v4);
  v11 = *(*v2 + 112);
  *(v2 + v11) = sub_255DC513C(v10);
  *(v2 + *(*v2 + 128)) = 0;
  *(v2 + *(*v2 + 120)) = a1;
  if (a1)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7FB0, &qword_255E53800);
    sub_255D38950(&qword_27F7E7FB8, &qword_27F7E7FB0, &qword_255E53800);
    v17 = sub_255E386D8();
    swift_allocObject();
    swift_weakInit();
    sub_255E386F8();
    v12 = sub_255E38758();
  }

  else
  {
    v12 = 0;
  }

  v13 = *(*v2 + 128);
  v14 = *(v2 + v13);
  *(v2 + v13) = v12;

  return v2;
}

uint64_t sub_255DC3B40(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  *v7 = v2[3];
  *&v7[9] = *(v2 + 57);
  v4 = *v2;
  v5 = v2[1];
  return sub_255DB85E4(a1, a2);
}

uint64_t sub_255DC3B84@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *v3;
  v6 = v3[1];
  v7 = *(v3 + 32);
  return sub_255DB20F8(a1, a2, a3);
}

uint64_t sub_255DC3BC0(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = *(v2 + 32);
  return sub_255DB8930(a1, a2);
}

_OWORD *sub_255DC3D6C(uint64_t a1, unint64_t a2)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = *(v2 + 32);
  return sub_255DBA8F0(a1, a2);
}

uint64_t sub_255DC3E80@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v10 = *v3;
  v11 = *(v3 + 8);
  v12 = *(v3 + 16);
  v13 = *(v3 + 24);
  sub_255D91714(*v3, v11, v12, v13, sub_255D348B4);
  sub_255D8F6FC(a2);
  LOBYTE(a2) = v7;
  sub_255D9176C(v10, v11, v12, v13, sub_255D34870);
  if (a2)
  {
    return sub_255D3CE1C(a1, a3);
  }

  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E8000, &qword_255E59630);
  a3[3] = sub_255E38AE8();
  sub_255D38950(&qword_27F7E8008, &qword_27F7E8000, &qword_255E59630);
  a3[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(a3);
  return sub_255E399A8();
}

uint64_t sub_255DC4034@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[4];
  v5 = *v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E7FE0, &unk_255E53820);
  a2[3] = sub_255E38AE8();
  sub_255D38950(&qword_27F7E7FE8, &qword_27F7E7FE0, &unk_255E53820);
  a2[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_255E39B08();
}

uint64_t sub_255DC4208(uint64_t a1, unint64_t a2)
{
  v10 = v2[6];
  v11 = v2[7];
  v12 = *(v2 + 128);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v4 = *v2;
  v5 = v2[1];
  return sub_255DBC0E8(a1, a2);
}

uint64_t sub_255DC425C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, unint64_t *a6@<X8>)
{
  v15[1] = a1;
  v15[2] = a2;
  v15[3] = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8020, &unk_255E53860);
  MEMORY[0x259C4E3A0](v15, v9);
  if (v15[0] >> 61 != 5)
  {

LABEL_7:
    v13 = 0xF000000000000007;
    goto LABEL_8;
  }

  v10 = *((v15[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

  if (!*(v10 + 16) || (v11 = sub_255D3CA20(a4, a5), (v12 & 1) == 0))
  {

    goto LABEL_7;
  }

  v13 = *(*(v10 + 56) + 8 * v11);

LABEL_8:
  *a6 = v13;
  return result;
}

uint64_t sub_255DC433C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, unint64_t *a5@<X8>)
{
  v11[1] = a1;
  v11[2] = a2;
  v11[3] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8020, &unk_255E53860);
  MEMORY[0x259C4E3A0](v11, v7);
  if (v11[0] >> 61 != 4)
  {

LABEL_7:
    v9 = 0xF000000000000007;
    goto LABEL_8;
  }

  v8 = *((v11[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

  if (a4 < 0 || *(v8 + 16) <= a4)
  {

    goto LABEL_7;
  }

  v9 = *(v8 + 8 * a4 + 32);

LABEL_8:
  *a5 = v9;
  return result;
}

uint64_t sub_255DC4420@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(v3 + 25);
  v11 = *v3;
  v12 = *(v3 + 8);
  v13 = *(v3 + 16);
  v14 = *(v3 + 24);
  sub_255D91714(*v3, v12, v13, v14, sub_255D348B4);
  sub_255D8F6FC(a2);
  LOBYTE(a2) = v8;
  sub_255D9176C(v11, v12, v13, v14, sub_255D34870);
  if (a2)
  {
    return sub_255D3CE1C(a1, a3);
  }

  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E7FF0, &qword_255E5C660);
  a3[3] = sub_255E38AE8();
  sub_255D38950(&qword_27F7E7FF8, &qword_27F7E7FF0, &qword_255E5C660);
  a3[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(a3);
  return sub_255E39948();
}

uint64_t sub_255DC45F8@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = v3[2];
  v8 = v3[3];
  *v9 = v3[4];
  *&v9[9] = *(v3 + 73);
  v5 = *v3;
  v6 = v3[1];
  return sub_255E1E040(a1, a2, a3);
}

_OWORD *sub_255DC4644(uint64_t a1, unint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  *v8 = v2[4];
  *&v8[9] = *(v2 + 73);
  v4 = *v2;
  v5 = v2[1];
  return sub_255DBCE20(a1, a2);
}

uint64_t sub_255DC471C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7 = v3[3];
  v8 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v7);
  (*(v8 + 16))(a2, v7, v8);
  sub_255E395E8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E7FC0, &qword_255E53808);
  a3[3] = sub_255E38AE8();
  sub_255D38950(&qword_27F7E7FC8, &qword_27F7E7FC0, &qword_255E53808);
  a3[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(a3);
  sub_255E39868();
}

uint64_t sub_255DC4938@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, uint64_t, uint64_t)@<X5>, uint64_t *a4@<X8>)
{
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  v11 = v4[3];
  v10 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v11);
  v12 = (*(v10 + 16))(a2, v11, v10);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E7FD0, &unk_255E53810);
  a4[3] = sub_255E38AE8();
  sub_255D38950(&qword_27F7E7FD8, &qword_27F7E7FD0, &unk_255E53810);
  a4[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(a4);
  a3(v12, v8, v9);
}

uint64_t sub_255DC4B58@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E3A228();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E8058, &qword_255E53888);
  a2[3] = sub_255E38AE8();
  sub_255D38950(&qword_27F7E8060, &qword_27F7E8058, &qword_255E53888);
  a2[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_255E39C38();
}

uint64_t sub_255DC4D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = *v6;
  v9 = *(v6 + 2);
  v10 = *(v6 + 24);
  return a6(a1, a2, a3, a4);
}

uint64_t sub_255DC4E68@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(v3 + 24);
  if (v6 != 255)
  {
    v7 = a1;
    sub_255DDF1BC(a2, *v3, *(v3 + 8), *(v3 + 16), v6 & 1);
    if (v4)
    {
    }

    a1 = v7;
  }

  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E80F0, &unk_255E538B0);
  a3[3] = sub_255E38AE8();
  sub_255D38950(&qword_27F7E80F8, &qword_27F7E80F0, &unk_255E538B0);
  a3[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(a3);
  return sub_255E39C28();
}

uint64_t sub_255DC4FE4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    sub_255D38950(a5, a3, a4);
    sub_255E386D8();

    sub_255E386E8();
  }

  return result;
}

uint64_t sub_255DC50A8(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *a1;
  if (v8 == 2)
  {
    v9 = 0xF000000000000007;
  }

  else
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v8 & 1;
    v9 = v10 | 0x6000000000000000;
  }

  return sub_255DF2888(v9, a5, a6);
}

unint64_t sub_255DC513C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7528, &unk_255E48B20);
    v3 = sub_255E3AB28();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_255D3CA20(v5, v6);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_255DC52C4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_255E3AB28();

    for (i = (a1 + 48); ; i += 2)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v15 = *i;

      result = sub_255D3CA20(v7, v8);
      if (v10)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v5[6] + 16 * result);
      *v11 = v7;
      v11[1] = v8;
      *(v5[7] + 16 * result) = v15;
      v12 = v5[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v5[2] = v14;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_255DC53E4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7558, &qword_255E48B48);
    v4 = sub_255E3AB28();

    for (i = (a1 + 72); ; i += 48)
    {
      v6 = *(i - 5);
      v7 = *(i - 4);
      v8 = *(i - 3);
      v9 = *(i - 2);
      v10 = *(i - 1);
      v11 = *i;

      sub_255D5C258(v8, v9, v10, v11);
      result = a2(v6, v7);
      if (v13)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = (v4[6] + 16 * result);
      *v14 = v6;
      v14[1] = v7;
      v15 = v4[7] + 32 * result;
      *v15 = v8;
      *(v15 + 8) = v9;
      *(v15 + 16) = v10;
      *(v15 + 24) = v11;
      v16 = v4[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v4[2] = v18;
      if (!--v2)
      {

        return v4;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_255DC5524(uint64_t a1)
{
  result = sub_255D3CFB8();
  *(a1 + 8) = result;
  return result;
}

uint64_t dispatch thunk of ContentModifier.modifyView(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return (*(a4 + 24))();
}

{
  return (*(a4 + 40))();
}

uint64_t sub_255DC5620(uint64_t a1, int a2)
{
  v2 = MEMORY[0x277CE11C8];
  v3 = MEMORY[0x277CE11C0];
  v35[3] = MEMORY[0x277CE11C8];
  v35[4] = MEMORY[0x277CE11C0];
  v35[0] = a1;
  v4 = type metadata accessor for LocalStateStore(0);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  v7 = swift_allocObject();
  v8 = qword_27F7E8608;

  v9 = MEMORY[0x277D84F90];
  *(v7 + v8) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v7 + qword_27F7E8610) = 0;
  v10 = *(*v7 + 104);
  v36 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v11 = *(*v7 + 112);
  *(v7 + v11) = sub_255DC513C(v9);
  *(v7 + *(*v7 + 128)) = 0;
  *(v7 + *(*v7 + 120)) = 0;
  *(v7 + *(*v7 + 128)) = 0;
  swift_setDeallocating();
  v12 = *LocalStateStore.deinit();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_deallocClassInstance();
  v33 = __swift_project_boxed_opaque_existential_1(v35, v2);
  v15 = sub_255E390C8();
  v32 = sub_255DC8544(&qword_27F7E63D0, MEMORY[0x277CDDEE0]);
  v36 = v2;
  v37 = v15;
  v38 = v3;
  v39 = v32;
  swift_getOpaqueTypeMetadata2();
  v31 = sub_255E39588();
  v30 = sub_255DC8544(&qword_27F7E63C8, MEMORY[0x277CDE400]);
  v36 = v2;
  v37 = v31;
  v38 = v3;
  v39 = v30;
  swift_getOpaqueTypeMetadata2();
  sub_255E39268();
  v29 = sub_255E38BB8();
  v28 = sub_255DC8544(&qword_27F7E63C0, MEMORY[0x277CDDB18]);
  v36 = v2;
  v37 = v29;
  v38 = v3;
  v39 = v28;
  swift_getOpaqueTypeMetadata2();
  v27 = sub_255E39388();
  v26 = sub_255DC8544(&qword_27F7E63B8, MEMORY[0x277CDE0B8]);
  v36 = v2;
  v37 = v27;
  v38 = v3;
  v39 = v26;
  swift_getOpaqueTypeMetadata2();
  sub_255E39268();
  sub_255E39268();
  v25 = sub_255E38E48();
  v24 = sub_255DC8544(&qword_27F7E63B0, MEMORY[0x277CDDE40]);
  v36 = v2;
  v37 = v25;
  v38 = v3;
  v39 = v24;
  swift_getOpaqueTypeMetadata2();
  v23 = sub_255E39508();
  v22 = sub_255DC8544(&qword_27F7E63A8, MEMORY[0x277CDE340]);
  v36 = v2;
  v37 = v23;
  v38 = v3;
  v39 = v22;
  swift_getOpaqueTypeMetadata2();
  sub_255E39268();
  v21 = sub_255E38B68();
  v20 = sub_255DC8544(&qword_27F7E63A0, MEMORY[0x277CDDA98]);
  v36 = v2;
  v37 = v21;
  v38 = v3;
  v39 = v20;
  swift_getOpaqueTypeMetadata2();
  sub_255E39268();
  v16 = sub_255E39268();
  v39 = v16;
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  WitnessTable = swift_getWitnessTable();
  v17 = __swift_allocate_boxed_opaque_existential_1(&v36);
  sub_255D3FA00(v33, a2, v2, v3, v17);
  __swift_destroy_boxed_opaque_existential_1Tm(v35);
  v18 = View.anyView.getter(v16);
  __swift_destroy_boxed_opaque_existential_1Tm(&v36);
  return v18;
}

uint64_t sub_255DC5CF0(uint64_t a1)
{
  v1 = MEMORY[0x277CE11C8];
  v16[3] = MEMORY[0x277CE11C8];
  v16[4] = MEMORY[0x277CE11C0];
  v16[0] = a1;
  v2 = type metadata accessor for LocalStateStore(0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  v6 = qword_27F7E8608;

  v7 = MEMORY[0x277D84F90];
  *(v5 + v6) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v5 + qword_27F7E8610) = 0;
  v8 = *(*v5 + 104);
  v17[0] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v9 = *(*v5 + 112);
  *(v5 + v9) = sub_255DC513C(v7);
  *(v5 + *(*v5 + 128)) = 0;
  *(v5 + *(*v5 + 120)) = 0;
  *(v5 + *(*v5 + 128)) = 0;
  swift_setDeallocating();
  v10 = *LocalStateStore.deinit();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_deallocClassInstance();
  __swift_project_boxed_opaque_existential_1(v16, v1);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E6508, &unk_255E53830);
  v13 = sub_255E38AE8();
  v17[3] = v13;
  sub_255D38950(&qword_27F7E6510, &qword_27F7E6508, &unk_255E53830);
  v17[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(v17);
  sub_255E398C8();
  __swift_destroy_boxed_opaque_existential_1Tm(v16);
  v14 = View.anyView.getter(v13);
  __swift_destroy_boxed_opaque_existential_1Tm(v17);
  return v14;
}

uint64_t sub_255DC5F70(uint64_t a1, int a2)
{
  v2 = MEMORY[0x277CE11C8];
  v28[3] = MEMORY[0x277CE11C8];
  v28[4] = MEMORY[0x277CE11C0];
  v3 = MEMORY[0x277CE11C0];
  v28[0] = a1;
  v4 = type metadata accessor for LocalStateStore(0);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  v7 = swift_allocObject();
  v8 = qword_27F7E8608;

  v9 = MEMORY[0x277D84F90];
  *(v7 + v8) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v7 + qword_27F7E8610) = 0;
  v10 = *(*v7 + 104);
  v29 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v11 = *(*v7 + 112);
  *(v7 + v11) = sub_255DC513C(v9);
  *(v7 + *(*v7 + 128)) = 0;
  *(v7 + *(*v7 + 120)) = 0;
  *(v7 + *(*v7 + 128)) = 0;
  swift_setDeallocating();
  v12 = *LocalStateStore.deinit();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_deallocClassInstance();
  v26 = __swift_project_boxed_opaque_existential_1(v28, v2);
  v25 = sub_255E38E88();
  v15 = sub_255DC8544(&qword_27F7E7BA8, MEMORY[0x277CDDE68]);
  v29 = v2;
  v30 = v25;
  v31 = v3;
  v32 = v15;
  swift_getOpaqueTypeMetadata2();
  v24 = sub_255E38C98();
  v16 = sub_255DC8544(&qword_27F7E7BA0, MEMORY[0x277CDDBD0]);
  v29 = v2;
  v30 = v24;
  v31 = v3;
  v32 = v16;
  swift_getOpaqueTypeMetadata2();
  sub_255E39268();
  v17 = sub_255E38DB8();
  v18 = sub_255DC8544(&qword_27F7E7B98, MEMORY[0x277CDDDF0]);
  v29 = v2;
  v30 = v17;
  v19 = MEMORY[0x277CE11C0];
  v31 = MEMORY[0x277CE11C0];
  v32 = v18;
  swift_getOpaqueTypeMetadata2();
  v20 = sub_255E39268();
  v32 = v20;
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  WitnessTable = swift_getWitnessTable();
  v21 = __swift_allocate_boxed_opaque_existential_1(&v29);
  sub_255DA30DC(v26, a2, v2, v19, v21);
  __swift_destroy_boxed_opaque_existential_1Tm(v28);
  v22 = View.anyView.getter(v20);
  __swift_destroy_boxed_opaque_existential_1Tm(&v29);
  return v22;
}

uint64_t sub_255DC6388(uint64_t a1)
{
  v1 = MEMORY[0x277CE11C8];
  v16[3] = MEMORY[0x277CE11C8];
  v16[4] = MEMORY[0x277CE11C0];
  v16[0] = a1;
  v2 = type metadata accessor for LocalStateStore(0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  v6 = qword_27F7E8608;

  v7 = MEMORY[0x277D84F90];
  *(v5 + v6) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v5 + qword_27F7E8610) = 0;
  v8 = *(*v5 + 104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v9 = *(*v5 + 112);
  *(v5 + v9) = sub_255DC513C(v7);
  *(v5 + *(*v5 + 128)) = 0;
  *(v5 + *(*v5 + 120)) = 0;
  *(v5 + *(*v5 + 128)) = 0;
  swift_setDeallocating();
  v10 = *LocalStateStore.deinit();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_deallocClassInstance();
  v15 = *__swift_project_boxed_opaque_existential_1(v16, v1);

  v13 = sub_255E3A038();
  __swift_destroy_boxed_opaque_existential_1Tm(v16);
  return v13;
}

uint64_t sub_255DC65BC(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 0xFDu)
  {
    return sub_255D91714(result, a2, a3, a4, sub_255D348B4);
  }

  return result;
}

uint64_t sub_255DC65F8(uint64_t a1, unsigned __int8 a2, uint64_t a3, char a4)
{
  v25[0] = a1;
  v25[3] = MEMORY[0x277CE11C8];
  v4 = MEMORY[0x277CE11C8];
  v25[4] = MEMORY[0x277CE11C0];
  v5 = type metadata accessor for LocalStateStore(0);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  v9 = qword_27F7E8608;

  v10 = MEMORY[0x277D84F90];
  *(v8 + v9) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v8 + qword_27F7E8610) = 0;
  v11 = *(*v8 + 104);
  v26[0] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v12 = *(*v8 + 112);
  *(v8 + v12) = sub_255DC513C(v10);
  *(v8 + *(*v8 + 128)) = 0;
  *(v8 + *(*v8 + 120)) = 0;
  *(v8 + *(*v8 + 128)) = 0;
  swift_setDeallocating();
  v13 = *LocalStateStore.deinit();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_deallocClassInstance();
  v21 = __swift_project_boxed_opaque_existential_1(v25, v4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E7D00, &unk_255E4FB00);
  sub_255E38AE8();
  sub_255E39268();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E66F0, &unk_255E3E190);
  sub_255E39268();
  sub_255E39268();
  v16 = sub_255E39268();
  v26[3] = v16;
  sub_255D38950(&qword_27F7E7D08, &qword_27F7E7D00, &unk_255E4FB00);
  v17 = MEMORY[0x277CE11C0];
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_255D4D230(&qword_27F7E66E8, &qword_27F7E66F0, &unk_255E3E190);
  swift_getWitnessTable();
  swift_getWitnessTable();
  v26[4] = swift_getWitnessTable();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v26);
  sub_255DA8994(v21, a3, a4 & 1, a2, v17, boxed_opaque_existential_1);
  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  v19 = View.anyView.getter(v16);
  __swift_destroy_boxed_opaque_existential_1Tm(v26);
  return v19;
}

uint64_t sub_255DC69AC(uint64_t a1)
{
  v1 = MEMORY[0x277CE11C8];
  v16[3] = MEMORY[0x277CE11C8];
  v16[4] = MEMORY[0x277CE11C0];
  v16[0] = a1;
  v2 = type metadata accessor for LocalStateStore(0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  v6 = qword_27F7E8608;

  v7 = MEMORY[0x277D84F90];
  *(v5 + v6) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v5 + qword_27F7E8610) = 0;
  v8 = *(*v5 + 104);
  v17[0] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v9 = *(*v5 + 112);
  *(v5 + v9) = sub_255DC513C(v7);
  *(v5 + *(*v5 + 128)) = 0;
  *(v5 + *(*v5 + 120)) = 0;
  *(v5 + *(*v5 + 128)) = 0;
  swift_setDeallocating();
  v10 = *LocalStateStore.deinit();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_deallocClassInstance();
  __swift_project_boxed_opaque_existential_1(v16, v1);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E7FE0, &unk_255E53820);
  v13 = sub_255E38AE8();
  v17[3] = v13;
  sub_255D38950(&qword_27F7E7FE8, &qword_27F7E7FE0, &unk_255E53820);
  v17[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(v17);
  sub_255E39B08();
  __swift_destroy_boxed_opaque_existential_1Tm(v16);
  v14 = View.anyView.getter(v13);
  __swift_destroy_boxed_opaque_existential_1Tm(v17);
  return v14;
}

uint64_t sub_255DC6C3C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_255DCDB98(v1[4], v1[5], v1[6]);
  *a1 = result;
  return result;
}

uint64_t sub_255DC6C84(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_255DC6CD4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_255DC7DE4(v1[4], v1[5], v1[6], v1[7]);
  *a1 = result;
  return result;
}

uint64_t sub_255DC6D30@<X0>(_BYTE *a1@<X8>)
{
  result = sub_255DC7764(v1[4], v1[5], v1[6], v1[7], v1[8]);
  *a1 = result;
  return result;
}

uint64_t sub_255DC6D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v45 = a4;
  v35 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7F90, &unk_255E536A0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v34 - v11;
  v13 = type metadata accessor for LocalStateStore(0);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  v17 = qword_27F7E8608;
  v18 = MEMORY[0x277D84F90];
  *(v16 + v17) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v16 + qword_27F7E8610) = 0;
  v19 = *(*v16 + 104);
  *&v42 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  (*(v9 + 32))(v16 + v19, v12, v8);
  v20 = *(*v16 + 112);
  *(v16 + v20) = sub_255DC513C(v18);
  *(v16 + *(*v16 + 128)) = 0;
  *(v16 + *(*v16 + 120)) = 0;
  *(v16 + *(*v16 + 128)) = 0;
  if (a3)
  {
    v21 = a3;
  }

  else
  {
    v21 = v18;
  }

  v22 = sub_255D48A94(v21);

  v43 = MEMORY[0x277CE11C8];
  v44 = MEMORY[0x277CE11C0];
  *&v42 = v35;
  v23 = *(v22 + 16);
  if (v23)
  {
    v24 = v22 + 32;

    do
    {
      sub_255D3CE1C(v24, v39);
      v26 = v40;
      v25 = v41;
      __swift_project_boxed_opaque_existential_1(v39, v40);
      (*(v25 + 16))(v36, &v42, a2, v16, v26, v25);
      if (v5)
      {

        __swift_destroy_boxed_opaque_existential_1Tm(v39);
        v37 = 0;
        memset(v36, 0, sizeof(v36));
        sub_255D3CE1C(&v42, v38);
        v5 = 0;
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v39);
        sub_255D34630(v36, v38);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v42);
      sub_255D34630(v38, &v42);
      v24 += 40;
      --v23;
    }

    while (v23);
  }

  else
  {
  }

  sub_255D34630(&v42, v39);
  v27 = v40;
  v28 = v41;
  __swift_project_boxed_opaque_existential_1(v39, v40);
  if (v45)
  {
    v29 = v45;
  }

  else
  {
    v29 = MEMORY[0x277D84F90];
  }

  v30 = sub_255D48A94(v29);

  View.liftUI_viewWithAppliedModifiers(_:store:localStore:)(v30, a2, v16, v27, v28, &v42);

  __swift_destroy_boxed_opaque_existential_1Tm(v39);
  v31 = v43;
  __swift_project_boxed_opaque_existential_1(&v42, v43);
  v32 = View.anyView.getter(v31);
  __swift_destroy_boxed_opaque_existential_1Tm(&v42);
  return v32;
}

uint64_t sub_255DC7160(uint64_t a1)
{
  v1 = MEMORY[0x277CE11C8];
  v16[3] = MEMORY[0x277CE11C8];
  v16[4] = MEMORY[0x277CE11C0];
  v16[0] = a1;
  v2 = type metadata accessor for LocalStateStore(0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  v6 = qword_27F7E8608;

  v7 = MEMORY[0x277D84F90];
  *(v5 + v6) = sub_255DC53E4(MEMORY[0x277D84F90], sub_255D3CA20);
  *(v5 + qword_27F7E8610) = 0;
  v8 = *(*v5 + 104);
  v17[0] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v9 = *(*v5 + 112);
  *(v5 + v9) = sub_255DC513C(v7);
  *(v5 + *(*v5 + 128)) = 0;
  *(v5 + *(*v5 + 120)) = 0;
  *(v5 + *(*v5 + 128)) = 0;
  swift_setDeallocating();
  v10 = *LocalStateStore.deinit();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_deallocClassInstance();
  __swift_project_boxed_opaque_existential_1(v16, v1);
  sub_255E3A228();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E8058, &qword_255E53888);
  v13 = sub_255E38AE8();
  v17[3] = v13;
  sub_255D38950(&qword_27F7E8060, &qword_27F7E8058, &qword_255E53888);
  v17[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(v17);
  sub_255E39C38();
  __swift_destroy_boxed_opaque_existential_1Tm(v16);
  v14 = View.anyView.getter(v13);
  __swift_destroy_boxed_opaque_existential_1Tm(v17);
  return v14;
}

unint64_t sub_255DC741C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8100, &unk_255E538C0);
    v3 = sub_255E3AB28();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_255D3CA20(v5, v6);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_255DC7520(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7548, &qword_255E4AEA0);
    v5 = sub_255E3AB28();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = a2(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v2)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_255DC7634(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7538, &qword_255E48B30);
    v3 = sub_255E3AB28();
    v4 = a1 + 32;

    while (1)
    {
      sub_255D3957C(v4, &v13, &qword_27F7E8168, &qword_255E53918);
      v5 = v13;
      v6 = v14;
      result = sub_255D3CA20(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_255D8B0B0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_255DC7764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[1] = a1;
  v14[2] = a2;
  v14[3] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8020, &unk_255E53860);
  MEMORY[0x259C4E3A0](v14, v7);
  if (v14[0] >> 61 == 5)
  {
    v8 = *((v14[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

    if (!*(v8 + 16) || (v9 = sub_255D3CA20(a4, a5), (v10 & 1) == 0))
    {

      return 2;
    }

    v11 = *(*(v8 + 56) + 8 * v9);

    if (v11 >> 61 == 3)
    {
      v12 = *((v11 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

      return v12;
    }
  }

  return 2;
}

uint64_t sub_255DC785C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v37 = a2;
  v38 = a3;
  v39 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8020, &unk_255E53860);
  MEMORY[0x259C4E3A0](&v40);
  if (v40 >> 61 != 5)
  {
  }

  v12 = *((v40 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

  v40 = v12;
  if (a1 == 2)
  {
    sub_255D808F4(a5, a6, &v37);
    sub_255D5C324(v37);
    v13 = v40;
  }

  else
  {
    v14 = swift_allocObject();
    *(v14 + 16) = a1 & 1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_255D82054(v14 | 0x6000000000000000, a5, a6, isUniquelyReferenced_nonNull_native);
    v13 = v12;
  }

  v37 = a2;
  v38 = a3;
  v39 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7548, &qword_255E4AEA0);
  result = sub_255E3AB08();
  v17 = result;
  v18 = 0;
  v19 = 1 << *(v13 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v13 + 64);
  v22 = (v19 + 63) >> 6;
  v23 = result + 64;
  if (v21)
  {
    while (1)
    {
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_15:
      v27 = v24 | (v18 << 6);
      v28 = (*(v13 + 48) + 16 * v27);
      v29 = *(*(v13 + 56) + 8 * v27);
      v30 = *v28;
      v31 = v28[1];
      *(v23 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
      v32 = (v17[6] + 16 * v27);
      *v32 = v30;
      v32[1] = v31;
      *(v17[7] + 8 * v27) = v29;
      v33 = v17[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        break;
      }

      v17[2] = v35;

      if (!v21)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v25 = v18;
    while (1)
    {
      v18 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v18 >= v22)
      {
        v36 = swift_allocObject();

        *(v36 + 16) = v17;
        sub_255E3A058();
      }

      v26 = *(v13 + 64 + 8 * v18);
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v21 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_255DC7B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = a2;
  v37 = a3;
  v38 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8020, &unk_255E53860);
  MEMORY[0x259C4E3A0](&v39);
  if (v39 >> 61 != 5)
  {
  }

  v12 = *((v39 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

  v39 = v12;
  if ((~a1 & 0xF000000000000007) != 0)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_255D82054(a1, a5, a6, isUniquelyReferenced_nonNull_native);
    v13 = v12;
  }

  else
  {
    sub_255D808F4(a5, a6, &v36);
    sub_255D5C324(v36);
    v13 = v39;
  }

  v36 = a2;
  v37 = a3;
  v38 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7548, &qword_255E4AEA0);
  result = sub_255E3AB08();
  v16 = result;
  v17 = 0;
  v18 = 1 << *(v13 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v13 + 64);
  v21 = (v18 + 63) >> 6;
  v22 = result + 64;
  if (v20)
  {
    while (1)
    {
      v23 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v26 = v23 | (v17 << 6);
      v27 = (*(v13 + 48) + 16 * v26);
      v28 = *(*(v13 + 56) + 8 * v26);
      v29 = *v27;
      v30 = v27[1];
      *(v22 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      v31 = (v16[6] + 16 * v26);
      *v31 = v29;
      v31[1] = v30;
      *(v16[7] + 8 * v26) = v28;
      v32 = v16[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        break;
      }

      v16[2] = v34;

      if (!v20)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v24 = v17;
    while (1)
    {
      v17 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v17 >= v21)
      {
        v35 = swift_allocObject();

        *(v35 + 16) = v16;
        sub_255E3A058();
      }

      v25 = *(v13 + 64 + 8 * v17);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v20 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_255DC7DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a1;
  v10[2] = a2;
  v10[3] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8020, &unk_255E53860);
  MEMORY[0x259C4E3A0](v10, v5);
  if (v10[0] >> 61 == 4)
  {
    v6 = *((v10[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

    if (a4 < 0 || *(v6 + 16) <= a4)
    {

      return 2;
    }

    v7 = *(v6 + 8 * a4 + 32);

    if (v7 >> 61 == 3)
    {
      v8 = *((v7 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

      return v8;
    }
  }

  return 2;
}

uint64_t sub_255DC7ED0(char a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v16 = a2;
  v17 = a3;
  v18 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8020, &unk_255E53860);
  MEMORY[0x259C4E3A0](&v15);
  if (v15 >> 61 != 4)
  {
  }

  v10 = *((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

  if (a1 == 2)
  {
  }

  v12 = swift_allocObject();
  *(v12 + 16) = a1 & 1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((a5 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = sub_255DF5ECC(v10);
  v10 = result;
  if ((a5 & 0x8000000000000000) != 0)
  {
    goto LABEL_12;
  }

LABEL_7:
  if (*(v10 + 16) <= a5)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v13 = v10 + 8 * a5;
  v14 = *(v13 + 32);
  *(v13 + 32) = v12 | 0x6000000000000000;

  v16 = a2;
  v17 = a3;
  v18 = a4;

  sub_255DCB4C0(v10, &v15);

  sub_255E3A058();
}

unint64_t sub_255DC80E4()
{
  result = qword_27F7E8050;
  if (!qword_27F7E8050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8050);
  }

  return result;
}

unint64_t sub_255DC8140()
{
  result = qword_27F7E8068;
  if (!qword_27F7E8068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8068);
  }

  return result;
}

unint64_t sub_255DC8194()
{
  result = qword_27F7E8070;
  if (!qword_27F7E8070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8070);
  }

  return result;
}

unint64_t sub_255DC81E8()
{
  result = qword_27F7E8078;
  if (!qword_27F7E8078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8078);
  }

  return result;
}

unint64_t sub_255DC823C()
{
  result = qword_27F7E8080;
  if (!qword_27F7E8080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8080);
  }

  return result;
}

unint64_t sub_255DC8290()
{
  result = qword_27F7E8088;
  if (!qword_27F7E8088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8088);
  }

  return result;
}

unint64_t sub_255DC82E4()
{
  result = qword_27F7E8090;
  if (!qword_27F7E8090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8090);
  }

  return result;
}

unint64_t sub_255DC8338()
{
  result = qword_27F7E8098;
  if (!qword_27F7E8098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8098);
  }

  return result;
}

unint64_t sub_255DC838C()
{
  result = qword_27F7E80A0;
  if (!qword_27F7E80A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E80A0);
  }

  return result;
}

unint64_t sub_255DC83E0()
{
  result = qword_27F7E80B0;
  if (!qword_27F7E80B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E80A8, &qword_255E53890);
    sub_255DC8544(&qword_27F7E80B8, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E80B0);
  }

  return result;
}

unint64_t sub_255DC849C()
{
  result = qword_27F7E80C0;
  if (!qword_27F7E80C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E80C0);
  }

  return result;
}

unint64_t sub_255DC84F0()
{
  result = qword_27F7E80C8;
  if (!qword_27F7E80C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E80C8);
  }

  return result;
}

uint64_t sub_255DC8544(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_255DC858C()
{
  result = qword_27F7E80E0;
  if (!qword_27F7E80E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E80E0);
  }

  return result;
}

uint64_t objectdestroy_67Tm_0()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t sub_255DC8690()
{
  result = qword_27F7E80E8;
  if (!qword_27F7E80E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E80E8);
  }

  return result;
}

unint64_t sub_255DC8754()
{
  result = qword_27F7E8108;
  if (!qword_27F7E8108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8108);
  }

  return result;
}

uint64_t sub_255DC87A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessibilityFocusedModifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_255DC880C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessibilityFocusedModifier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_77Tm_0()
{
  v1 = (type metadata accessor for AccessibilityFocusedModifier() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 33) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + 24);

  sub_255D34870(*(v0 + v3), *(v0 + v3 + 8), *(v0 + v3 + 16), *(v0 + v3 + 24));
  v7 = v0 + v3 + v1[7];
  v8 = sub_255E394E8();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v7, 1, v8))
  {
    (*(v9 + 8))(v7, v8);
  }

  v10 = *(v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8110, &unk_255E538E0) + 40));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_255DC8A04(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for AccessibilityFocusedModifier() - 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = v1 + ((*(v2 + 80) + 33) & ~*(v2 + 80));

  return a1(v3, v4, v5, v6);
}

unint64_t sub_255DC8AFC()
{
  result = qword_27F7E8160;
  if (!qword_27F7E8160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8160);
  }

  return result;
}

uint64_t sub_255DC8B50@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_255DCD438(v1[5], v1[6], a1);
}

uint64_t objectdestroy_15Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t objectdestroy_27Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t objectdestroy_39Tm_0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_255DC8D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v15 = a2;
  v16 = a3;
  v17 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8020, &unk_255E53860);
  MEMORY[0x259C4E3A0](&v14);
  if (v14 >> 61 != 4)
  {
  }

  v10 = *((v14 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

  if ((~a1 & 0xF000000000000007) == 0)
  {
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((a5 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = sub_255DF5ECC(v10);
  v10 = result;
  if ((a5 & 0x8000000000000000) != 0)
  {
    goto LABEL_12;
  }

LABEL_7:
  if (*(v10 + 16) <= a5)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v12 = v10 + 8 * a5;
  v13 = *(v12 + 32);
  *(v12 + 32) = a1;

  v15 = a2;
  v16 = a3;
  v17 = a4;

  sub_255DCB4C0(v10, &v14);

  sub_255E3A058();
}

uint64_t sub_255DC8F34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_255DC8F7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_255DC8FE4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000016;
  v4 = 0x8000000255E65900;
  if (v2 == 1)
  {
    v5 = 0x8000000255E65900;
  }

  else
  {
    v3 = 0x74616E6974736564;
    v5 = 0xEB000000006E6F69;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x6E65736572507369;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xEB00000000646574;
  }

  v8 = 0xD000000000000016;
  if (*a2 != 1)
  {
    v8 = 0x74616E6974736564;
    v4 = 0xEB000000006E6F69;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E65736572507369;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEB00000000646574;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_255E3AC68();
  }

  return v11 & 1;
}

uint64_t sub_255DC90F4()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255DC91AC()
{
  *v0;
  *v0;
  sub_255E3A578();
}

uint64_t sub_255DC9250()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255DC9304@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_255DCA1E8();
  *a2 = result;
  return result;
}

void sub_255DC9334(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000646574;
  v4 = 0x8000000255E65900;
  v5 = 0xD000000000000016;
  if (v2 != 1)
  {
    v5 = 0x74616E6974736564;
    v4 = 0xEB000000006E6F69;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E65736572507369;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_255DC93A8()
{
  v1 = 0xD000000000000016;
  if (*v0 != 1)
  {
    v1 = 0x74616E6974736564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E65736572507369;
  }
}

uint64_t sub_255DC9418@<X0>(_BYTE *a1@<X8>)
{
  result = sub_255DCA1E8();
  *a1 = result;
  return result;
}

uint64_t sub_255DC9440(uint64_t a1)
{
  v2 = sub_255DCA04C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255DC947C(uint64_t a1)
{
  v2 = sub_255DCA04C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255DC94B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E81A0, &unk_255E53CE0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v31 = 0uLL;
  v32 = 0;
  v33 = -1;
  v35 = 0;
  v34 = 0uLL;
  v36 = -2;
  v10 = a1[3];
  v11 = a1[4];
  v26 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_255DCA04C();
  sub_255E3AE28();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    sub_255D34910(0, 0, 0, 255);
    return sub_255D64814(0, 0, 0, 0xFEu);
  }

  else
  {
    v25 = a2;
    LOBYTE(v27) = 0;
    if (sub_255E3ABE8())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E64C8, &qword_255E3D940);
      v38 = 0;
      sub_255D38950(&qword_27F7E64D0, &qword_27F7E64C8, &qword_255E3D940);
      sub_255E3ABC8();
      v12 = v6;
      v24 = v5;
      v13 = v27;
      v14 = v28;
      v15 = v29;
      sub_255D34910(0, 0, 0, 255);
      v23 = 0;
      v22 = 0uLL;
      v31 = v13;
      v21 = v14;
      v32 = v14;
      v33 = v15;
    }

    else
    {
      LOBYTE(v27) = 1;
      v12 = v6;
      if (sub_255E3ABE8())
      {
        v38 = 1;
        sub_255D3EA0C();
        sub_255E3ABC8();
        v24 = v5;
        v17 = v27;
        v18 = v28;
        v19 = v29;
        sub_255D64814(0, 0, 0, 0xFEu);
        v21 = 0;
        v22 = v17;
        v34 = v17;
        v23 = v18;
        v35 = v18;
        v36 = v19;
      }

      else
      {
        v24 = v5;
        v23 = 0;
        v22 = 0uLL;
        v21 = 0;
      }
    }

    v38 = 2;
    v29 = &type metadata for ViewContent;
    v30 = sub_255D44794();
    *&v27 = swift_allocObject();
    sub_255D447E8();
    v20 = v24;
    sub_255E3ABC8();
    (*(v12 + 8))(v9, v20);
    sub_255D34630(&v27, &v37);
    sub_255DC9F10(&v31, v25);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    return sub_255DCA0A0(&v31);
  }
}

uint64_t sub_255DC9910@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v27 = a3;
  v6 = *(v3 + 24);
  if (v6 == 255)
  {
    v35 = v4;
  }

  else
  {
    v7 = a1;
    sub_255DBFA2C(a2, *v3, *(v3 + 8), *(v3 + 16), v6 & 1);
    if (!v4)
    {
      v35 = 0;
      v20 = v7[3];
      v19 = v7[4];
      v25 = __swift_project_boxed_opaque_existential_1(v7, v20);
      v26 = &v25;
      MEMORY[0x28223BE20](v25);
      *&v28 = v20;
      *(&v28 + 1) = MEMORY[0x277CE11C8];
      v21 = MEMORY[0x277CE11C0];
      *&v29 = v19;
      *(&v29 + 1) = MEMORY[0x277CE11C0];
      OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
      v23 = v27;
      v27[3] = OpaqueTypeMetadata2;
      *&v28 = v20;
      *(&v28 + 1) = MEMORY[0x277CE11C8];
      *&v29 = v19;
      *(&v29 + 1) = v21;
      v23[4] = swift_getOpaqueTypeConformance2();
      __swift_allocate_boxed_opaque_existential_1(v23);
      sub_255E39AE8();
    }

    v35 = 0;
    a1 = v7;
  }

  v9 = a1[3];
  v8 = a1[4];
  v26 = __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_255DC9F10(v3, &v28);
  v10 = swift_allocObject();
  v11 = v33;
  *(v10 + 80) = v32;
  *(v10 + 96) = v11;
  v12 = v34;
  v13 = v29;
  *(v10 + 16) = v28;
  *(v10 + 32) = v13;
  v14 = v31;
  *(v10 + 48) = v30;
  *(v10 + 64) = v14;
  *(v10 + 112) = v12;
  *(v10 + 120) = a2;
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E8190, &qword_255E53CD8);
  v16 = sub_255D6F180();
  v17 = sub_255DC9F54();
  *&v28 = v9;
  *(&v28 + 1) = &type metadata for DecodableState;
  *&v29 = v15;
  *(&v29 + 1) = v8;
  *&v30 = v16;
  *(&v30 + 1) = v17;
  v18 = v27;
  v27[3] = swift_getOpaqueTypeMetadata2();
  *&v28 = v9;
  *(&v28 + 1) = &type metadata for DecodableState;
  *&v29 = v15;
  *(&v29 + 1) = v8;
  *&v30 = v16;
  *(&v30 + 1) = v17;
  v18[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v18);

  sub_255E39AF8();
}

uint64_t sub_255DC9C20@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *a1;
  v8 = a2[11];
  v9 = a2[12];
  v10 = *a3;
  __swift_project_boxed_opaque_existential_1(a2 + 8, v8);
  v11 = (*(v9 + 24))(v8, v9);
  v12 = MEMORY[0x277D84F90];
  v13 = sub_255DC53CC(MEMORY[0x277D84F90]);
  v14 = sub_255DC5124(v12);
  v15 = *(v10 + 48);
  v16 = *(v10 + 52);
  swift_allocObject();

  v18 = RemoteStateStore.init(parent:initialSet:referenceKeyMap:)(v17, v13, v14);
  sub_255DA2D14();
  v19 = sub_255E386C8();
  sub_255DC9F10(a2, v26);
  v20 = swift_allocObject();
  v21 = v26[5];
  *(v20 + 80) = v26[4];
  *(v20 + 96) = v21;
  v22 = v27;
  v23 = v26[1];
  *(v20 + 16) = v26[0];
  *(v20 + 32) = v23;
  v24 = v26[3];
  *(v20 + 48) = v26[2];
  *(v20 + 64) = v24;
  *(v20 + 112) = v22;
  *(v20 + 120) = a3;
  *(v20 + 128) = v7;
  *a4 = v11;
  a4[1] = v19;
  a4[2] = v18;
  a4[3] = sub_255DCA040;
  a4[4] = v20;
  a4[5] = 0;
  a4[6] = 0;
}

uint64_t sub_255DC9DB8(uint64_t result, unint64_t a2, uint64_t a3)
{
  v3 = *(result + 56);
  if (v3 <= 0xFD)
  {
    v9 = *(result + 32);
    v10 = *(result + 40);
    v11 = *(result + 48);
    v12 = *(result + 56);
    sub_255D3E5A8(v9, v10, v11, v3);
    v6 = StringResolvable.resolved(with:)(a2);
    v8 = v7;
    sub_255D38060(v9, v10, v11, v12);

    return sub_255DF2888(a3, v6, v8);
  }

  return result;
}

unint64_t sub_255DC9E94(uint64_t a1)
{
  result = sub_255DC9EBC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255DC9EBC()
{
  result = qword_27F7E8188;
  if (!qword_27F7E8188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8188);
  }

  return result;
}

unint64_t sub_255DC9F54()
{
  result = qword_27F7E8198;
  if (!qword_27F7E8198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E8190, &qword_255E53CD8);
    sub_255D3849C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8198);
  }

  return result;
}

uint64_t sub_255DC9FE0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = v3[11];
  v5 = v3[12];
  __swift_project_boxed_opaque_existential_1(v3 + 8, v4);
  result = (*(v5 + 24))(v4, v5);
  *a1 = result;
  return result;
}

unint64_t sub_255DCA04C()
{
  result = qword_27F7E81A8;
  if (!qword_27F7E81A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E81A8);
  }

  return result;
}

unint64_t sub_255DCA0E4()
{
  result = qword_27F7E81B0;
  if (!qword_27F7E81B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E81B0);
  }

  return result;
}

unint64_t sub_255DCA13C()
{
  result = qword_27F7E81B8;
  if (!qword_27F7E81B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E81B8);
  }

  return result;
}

unint64_t sub_255DCA194()
{
  result = qword_27F7E81C0[0];
  if (!qword_27F7E81C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F7E81C0);
  }

  return result;
}

uint64_t sub_255DCA1E8()
{
  v0 = sub_255E3AB48();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t Referenceable<>.resolvedValue(store:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v42 = a3;
  v43 = a1;
  v8 = *(a2 + 16);
  v9 = sub_255E3A8A8();
  v40 = *(v9 - 8);
  v10 = *(v40 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v41 = &v37 - v12;
  v13 = *(v8 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v11);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v20 = (&v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20, v4, a2);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(v13 + 32))(a4, v20, v8);
  }

  v38 = a4;
  v39 = v5;
  v22 = *v20;
  v23 = v20[1];
  v24 = v20[2];
  if ((~v24 & 0xF000000000000007) != 0)
  {

    v29 = v43;
    RemoteStateStore.subscript.getter(v22, v23, &v45);
    v30 = v45;
    if ((~v45 & 0xF000000000000007) != 0)
    {
      sub_255D2F870(v24);

      v45 = v24;
      v44 = v30;
      v35 = *(a2 + 24);
      v36 = type metadata accessor for SubReference();
      sub_255E0FBF8(&v44, v29, v36, v42);
      sub_255D5C324(v30);
    }

    else
    {
      sub_255D5C33C();
      swift_allocError();
      *v31 = v22;
      *(v31 + 8) = v23;
      *(v31 + 16) = v8;
      *(v31 + 32) = 0;
      swift_willThrow();
      sub_255D2F870(v24);
    }

    return sub_255D2F870(v24);
  }

  else
  {
    RemoteStateStore.subscript.getter(v22, v23, &v45);
    v25 = v45;
    if ((~v45 & 0xF000000000000007) != 0)
    {

      sub_255D5C324(v25);
      v44 = v25;
      v32 = v41;
      v33 = v39;
      sub_255D7D8D8(v8, v42);

      if (!v33)
      {
        (*(v13 + 56))(v32, 0, 1, v8);
        v34 = *(v13 + 32);
        v34(v17, v32, v8);
        return (v34)(v38, v17, v8);
      }
    }

    else
    {
      sub_255D5C324(v45);
      v26 = v41;
      (*(v13 + 56))(v41, 1, 1, v8);
      (*(v40 + 8))(v26, v9);
      sub_255D5C33C();
      swift_allocError();
      *v27 = v22;
      *(v27 + 8) = v23;
      *(v27 + 16) = v8;
      *(v27 + 32) = 0;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t Referenceable.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v47 = a4;
  v43 = *(a2 - 8);
  v8 = *(v43 + 64);
  MEMORY[0x28223BE20](a1);
  v48 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E76F8, &qword_255E4A740);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v43 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7700, &unk_255E4A748);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v43 - v17;
  v49 = a3;
  v50 = a2;
  v19 = type metadata accessor for Referenceable();
  v45 = *(v19 - 8);
  v46 = v19;
  v20 = *(v45 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v44 = (&v43 - v24);
  v26 = a1[3];
  v25 = a1[4];
  v53 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_255D917C4();
  sub_255E3AE28();
  if (v4)
  {

    (*(v15 + 56))(v13, 1, 1, v14);
    sub_255D395E4(v13, &qword_27F7E76F8, &qword_255E4A740);
LABEL_3:
    v27 = v53;
    v28 = v53[4];
    __swift_project_boxed_opaque_existential_1(v53, v53[3]);
    sub_255E3AE08();
    sub_255D4F134(&v51, v52);
    __swift_project_boxed_opaque_existential_1(v52, v52[3]);
    v33 = v48;
    v34 = v50;
    sub_255E3ACB8();
    v36 = v33;
    v37 = v44;
    (*(v43 + 32))(v44, v36, v34);
    v38 = v46;
    swift_storeEnumTagMultiPayload();
    __swift_destroy_boxed_opaque_existential_1Tm(v52);
LABEL_9:
    v42 = v45;
    goto LABEL_10;
  }

  (*(v15 + 56))(v13, 0, 1, v14);
  (*(v15 + 32))(v18, v13, v14);
  LOBYTE(v52[0]) = 0;
  if (sub_255E3ABE8())
  {
    LOBYTE(v52[0]) = 0;
    v29 = sub_255E3ABB8();
    v31 = v30;
    v32 = v29;
    type metadata accessor for SubReference();
    LOBYTE(v51) = 1;
    swift_getWitnessTable();
    sub_255E3ABA8();
    (*(v15 + 8))(v18, v14);
    v40 = v52[0];
    v37 = v44;
    *v44 = v32;
    v37[1] = v31;
    v37[2] = v40;
    v38 = v46;
    swift_storeEnumTagMultiPayload();
    v27 = v53;
    goto LABEL_9;
  }

  LOBYTE(v52[0]) = 2;
  if ((sub_255E3ABE8() & 1) == 0)
  {
    (*(v15 + 8))(v18, v14);
    goto LABEL_3;
  }

  LOBYTE(v52[0]) = 2;
  v35 = sub_255E3ABB8();
  sub_255DFB26C(v35, v39, v50, v23);
  (*(v15 + 8))(v18, v14);

  v37 = v44;
  v42 = v45;
  v38 = v46;
  (*(v45 + 32))(v44, v23, v46);
  v27 = v53;
LABEL_10:
  (*(v42 + 32))(v47, v37, v38);
  return __swift_destroy_boxed_opaque_existential_1Tm(v27);
}

uint64_t Referenceable<>.resolvedBinding(store:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v59 = a3;
  v60 = a1;
  v8 = *(a2 + 16);
  sub_255E3A8A8();
  v9 = sub_255E3A088();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  MEMORY[0x28223BE20](v11);
  v57 = &v52 - v12;
  v58 = sub_255E3A088();
  v13 = sub_255E3A8A8();
  v55 = *(v13 - 8);
  v56 = v13;
  v14 = *(v55 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v54 = &v52 - v19;
  v20 = *(v8 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v18);
  v24 = &v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v27 = (&v52 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27, v5, a2);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v20 + 32))(v24, v27, v8);
    sub_255E3A078();
    return (*(v20 + 8))(v24, v8);
  }

  v53 = a4;
  v30 = *v27;
  v29 = v27[1];
  v31 = v27[2];
  if ((~v31 & 0xF000000000000007) == 0)
  {
    RemoteStateStore.binding<A>(forKey:)(v30, v29, v8, v59);
    sub_255E3A098();
    v32 = v58;
    v33 = *(v58 - 8);
    if ((*(v33 + 48))(v17, 1, v58) == 1)
    {
      (*(v55 + 8))(v17, v56);
      sub_255D5C33C();
      swift_allocError();
      *v34 = v30;
      *(v34 + 8) = v29;
      *(v34 + 16) = v8;
      *(v34 + 32) = 0;
      return swift_willThrow();
    }

    else
    {

      return (*(v33 + 32))(v53, v17, v32);
    }
  }

  v36 = swift_allocObject();
  v37 = v31;
  v36[2] = 0;
  v36[3] = 0;
  v38 = v60;
  v36[4] = v60;
  v36[5] = v30;
  v36[6] = v29;
  v39 = swift_allocObject();
  v39[2] = 0;
  v39[3] = 0;
  v39[4] = v38;
  v39[5] = v30;
  v39[6] = v29;
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  sub_255D34858(v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8018, &qword_255E5D6F0);
  sub_255E3A068();
  v61 = v63;
  v62 = v64;
  sub_255E3A098();
  v40 = v66;
  if (!v66)
  {
    sub_255D5C33C();
    swift_allocError();
    *v47 = v30;
    *(v47 + 8) = v29;
    *(v47 + 16) = v8;
    *(v47 + 32) = 0;
    swift_willThrow();
    sub_255D2F870(v31);
    return sub_255D2F870(v37);
  }

  v41 = v65;
  v42 = v67;

  *&v63 = v37;
  v65 = v41;
  v66 = v40;
  v67 = v42;
  v43 = *(a2 + 24);
  v44 = type metadata accessor for SubReference();
  v45 = v68;
  sub_255E0F590(&v65, v38, v44, v59);
  v46 = v53;
  if (v45)
  {
    sub_255D2F870(v37);
    sub_255DC6C84(v41, v40);
    return sub_255D2F870(v37);
  }

  v48 = v54;
  sub_255E3A098();
  v49 = v58;
  v50 = *(v58 - 8);
  if ((*(v50 + 48))(v48, 1, v58) == 1)
  {
    (*(v55 + 8))(v48, v56);
    sub_255D5C33C();
    swift_allocError();
    *v51 = 1;
    *(v51 + 8) = 0;
    *(v51 + 16) = 0;
    *(v51 + 24) = 0;
    *(v51 + 32) = 5;
    swift_willThrow();
    sub_255DC6C84(v41, v40);
    sub_255D2F870(v37);
    return sub_255D2F870(v37);
  }

  else
  {
    sub_255D2F870(v37);
    sub_255DC6C84(v41, v40);
    sub_255D2F870(v37);
    return (*(v50 + 32))(v46, v48, v49);
  }
}

void sub_255DCB38C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + 24) != 1)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v11 = -1;
LABEL_8:
    *(a2 + 24) = v11;
    return;
  }

  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v9 = *v2;
  v8 = v2[1];
  if ((~v2[2] & 0xF000000000000007) != 0)
  {
    v15 = v2[2];
    v13[0] = v5;
    v13[1] = v4;
    v13[2] = v6;
    v14 = v7;

    sub_255E10150(v13, &v16);
    v12 = v16;
    *a2 = v9;
    *(a2 + 8) = v8;
    *(a2 + 16) = v12;
    v11 = 1;
    goto LABEL_8;
  }

  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v4;
  *(v10 + 32) = v6;
  *(v10 + 40) = v7;
  *(v10 + 48) = 0xF000000000000007;
  *a2 = v9;
  *(a2 + 8) = v8;
  *(a2 + 16) = v10 | 0x8000000000000000;
  *(a2 + 24) = 1;

  sub_255D612A0(v5, v4, v6, v7);
}

uint64_t sub_255DCB4C0@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v12 = MEMORY[0x277D84F90];
    sub_255DE5D00(0, v3, 0);
    v4 = v12;
    v6 = (a1 + 32);
    v7 = *(v12 + 16);
    do
    {
      v9 = *v6++;
      v8 = v9;
      v10 = *(v12 + 24);

      if (v7 >= v10 >> 1)
      {
        sub_255DE5D00((v10 > 1), v7 + 1, 1);
      }

      *(v12 + 16) = v7 + 1;
      *(v12 + 8 * v7++ + 32) = v8;
      --v3;
    }

    while (v3);
  }

  result = swift_allocObject();
  *(result + 16) = v4;
  *a2 = result | 0x8000000000000000;
  return result;
}

uint64_t sub_255DCB5B4@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v13 = MEMORY[0x277D84F90];
    sub_255DE5D00(0, v3, 0);
    v4 = v13;
    v6 = (a1 + 32);
    do
    {
      v7 = *v6++;
      v8 = swift_allocObject();
      *(v8 + 16) = v7;
      v10 = *(v13 + 16);
      v9 = *(v13 + 24);
      if (v10 >= v9 >> 1)
      {
        v11 = v8;
        sub_255DE5D00((v9 > 1), v10 + 1, 1);
        v8 = v11;
      }

      *(v13 + 16) = v10 + 1;
      *(v13 + 8 * v10 + 32) = v8 | 0x2000000000000000;
      --v3;
    }

    while (v3);
  }

  result = swift_allocObject();
  *(result + 16) = v4;
  *a2 = result | 0x8000000000000000;
  return result;
}

uint64_t sub_255DCB6C4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7265666552627573;
  v4 = 0xEC00000065636E65;
  if (v2 != 1)
  {
    v3 = 0x6552656E696C6E69;
    v4 = 0xEF65636E65726566;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x636E657265666572;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE900000000000065;
  }

  v7 = 0x7265666552627573;
  v8 = 0xEC00000065636E65;
  if (*a2 != 1)
  {
    v7 = 0x6552656E696C6E69;
    v8 = 0xEF65636E65726566;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x636E657265666572;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE900000000000065;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_255E3AC68();
  }

  return v11 & 1;
}

uint64_t sub_255DCB7F0()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255DCB8AC()
{
  *v0;
  *v0;
  sub_255E3A578();
}

uint64_t sub_255DCB954()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255DCBA0C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_255DCDB1C();
  *a2 = result;
  return result;
}

void sub_255DCBA3C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000065;
  v4 = 0xEC00000065636E65;
  v5 = 0x7265666552627573;
  if (v2 != 1)
  {
    v5 = 0x6552656E696C6E69;
    v4 = 0xEF65636E65726566;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x636E657265666572;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_255DCBAB4()
{
  v1 = 0x7265666552627573;
  if (*v0 != 1)
  {
    v1 = 0x6552656E696C6E69;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x636E657265666572;
  }
}

uint64_t sub_255DCBB28@<X0>(_BYTE *a1@<X8>)
{
  result = sub_255DCDB1C();
  *a1 = result;
  return result;
}

uint64_t sub_255DCBB50(uint64_t a1)
{
  v2 = sub_255D917C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255DCBB8C(uint64_t a1)
{
  v2 = sub_255D917C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Referenceable.addingSubReference(subReference:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = (v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *v9;
  v13 = *(v7 + 16);
  v13(v11, v4, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v11;
    v14 = v11[1];
    v16 = v11[2];
    if ((~v16 & 0xF000000000000007) != 0)
    {
      v29[0] = v12;
      v29[1] = v16;
      v25 = *(a2 + 16);
      v26 = *(a2 + 24);
      v27 = type metadata accessor for SubReference();
      sub_255E0F398(v29, v27, &v30);
      sub_255D2F870(v16);
      v28 = v30;
      *a3 = v15;
      a3[1] = v14;
      a3[2] = v28;
      return swift_storeEnumTagMultiPayload();
    }

    else
    {
      *a3 = v15;
      a3[1] = v14;
      a3[2] = v12;
      swift_storeEnumTagMultiPayload();
      return sub_255D34858(v12);
    }
  }

  else
  {
    if (qword_27F7E5E80 != -1)
    {
      swift_once();
    }

    v18 = sub_255E386A8();
    __swift_project_value_buffer(v18, qword_27F8152D8);
    v19 = sub_255E38688();
    v20 = sub_255E3A848();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_255D2E000, v19, v20, "Attempting to add a subreference to a value", v21, 2u);
      MEMORY[0x259C4F9E0](v21, -1, -1);
    }

    sub_255D5C33C();
    swift_allocError();
    v23 = v22;
    v22[3] = a2;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
    v13(boxed_opaque_existential_1, v4, a2);
    *(v23 + 32) = 2;
    swift_willThrow();
    return (*(v7 + 8))(v11, a2);
  }
}

uint64_t Referenceable<>.setValue(store:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v55 = a4;
  v51 = a2;
  v7 = *(a3 + 16);
  v8 = sub_255E3A8A8();
  v53 = *(v8 - 8);
  v9 = *(v53 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v48 - v11;
  v56 = v7;
  v57 = *(v7 - 8);
  v13 = *(v57 + 64);
  v14 = MEMORY[0x28223BE20](v10);
  v52 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a3 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  v19 = (&v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(v16 + 16);
  v20(v19, v4, a3);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_255D5C33C();
    swift_allocError();
    v29 = v28;
    v28[3] = a3;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
    v20(boxed_opaque_existential_1, v4, a3);
    *(v29 + 32) = 2;
    swift_willThrow();
    return (*(v16 + 8))(v19, a3);
  }

  v22 = *v19;
  v21 = v19[1];
  v23 = v19[2];
  RemoteStateStore.subscript.getter(v22, v21, &v60);
  v24 = v60;
  if ((~v60 & 0xF000000000000007) == 0)
  {
    sub_255D5C324(v60);
    v25 = v56;
    (*(v57 + 56))(v12, 1, 1, v56);
    (*(v53 + 8))(v12, v8);
    sub_255D5C33C();
    swift_allocError();
    *v26 = v22;
    *(v26 + 8) = v21;
    *(v26 + 16) = v25;
    *(v26 + 32) = 0;
    swift_willThrow();
    return sub_255D2F870(v23);
  }

  v53 = v22;

  sub_255D5C324(v24);
  v59 = v24;
  v31 = v55;
  v32 = v56;
  v33 = v54;
  sub_255D7D8D8(v56, v55);

  v34 = v57;
  if (v33)
  {
    sub_255D2F870(v23);
  }

  v49 = v23;
  v50 = v21;
  v54 = a1;
  (*(v57 + 56))(v12, 0, 1, v32);
  v35 = v52;
  (*(v34 + 32))(v52, v12, v32);
  v36 = *(v31 + 8);
  v36(&v60, v32, v31);
  if ((v60 >> 61) < 4)
  {

    v36(&v60, v32, v31);
    sub_255DF2888(v60, v53, v50);
    sub_255D2F870(v49);
    return (*(v34 + 8))(v35, v32);
  }

  if (v60 >> 61 != 4)
  {
    v41 = v49;
    if ((~v49 & 0xF000000000000007) != 0)
    {
      v42 = *((v60 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v58 = v49;
      v43 = *(a3 + 24);

      sub_255DCC4E0(v44, &v58, v51, v54, v32, v55, v43, &v59);

      v47 = v59;

      sub_255DF2888(v47, v53, v50);
      sub_255D2F870(v41);
      sub_255D5C324(v47);
      (*(v57 + 8))(v52, v32);
    }

    goto LABEL_13;
  }

  v37 = v49;
  if ((~v49 & 0xF000000000000007) == 0)
  {
LABEL_13:
    v36(&v59, v32, v55);
    sub_255DF2888(v59, v53, v50);
    (*(v57 + 8))(v35, v32);
  }

  v38 = *((v60 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v58 = v49;
  v39 = *(a3 + 24);

  sub_255DCCD0C(v40, &v58, v51, v54, v32, v55, v39, &v59);

  v45 = v35;
  v46 = v59;

  sub_255DF2888(v46, v53, v50);
  sub_255D2F870(v37);

  (*(v57 + 8))(v45, v32);
}

uint64_t sub_255DCC4E0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t *a8@<X8>)
{
  v9 = *a2;
  if ((*a2 & 0x8000000000000000) == 0)
  {
    v16 = *(v9 + 32);
    v17 = *(v9 + 40);
    v18 = *(v9 + 48);
    v86 = *(v9 + 16);
    v87 = v16;
    v88 = v17;

    v19 = StringResolvable.resolved(with:)(a4);
    if (v8)
    {
    }

    v27 = v20;
    v84 = v19;
    if ((~v18 & 0xF000000000000007) == 0)
    {
      v28 = v20;
      (*(a6 + 8))(&v86, a5, a6);
      v29 = v86;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v89 = a1;
      sub_255D82054(v29, v84, v28, isUniquelyReferenced_nonNull_native);

      goto LABEL_10;
    }

    v53 = *(a1 + 16);
    v83 = v18;

    if (v53 && (v54 = v27, v55 = sub_255D3CA20(v84, v27), (v56 & 1) != 0))
    {
      v57 = *(*(a1 + 56) + 8 * v55);
      if ((v57 >> 61) >= 4)
      {
        if (v57 >> 61 != 4)
        {
          v77 = *((v57 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v89 = v83;
          swift_retain_n();

          sub_255DCC4E0(&v86, v78, &v89, a3, a4, a5, a6, a7);

          v81 = v86;

          v82 = swift_isUniquelyReferenced_nonNull_native();
          *&v86 = a1;
          sub_255D82054(v81, v84, v54, v82);
          sub_255D2F870(v83);

          v31 = v86;
          goto LABEL_11;
        }

        v75 = *((v57 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v89 = v83;
        swift_retain_n();

        sub_255DCCD0C(v76, &v89, a3, a4, a5, a6, a7, &v86);

        v79 = v86;
        v80 = swift_isUniquelyReferenced_nonNull_native();
        v89 = a1;
        sub_255D82054(v79, v84, v54, v80);
        sub_255D2F870(v83);

LABEL_10:
        v31 = v89;
LABEL_11:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7548, &qword_255E4AEA0);
        v32 = sub_255E3AB08();
        v33 = v32;
        v34 = 0;
        v35 = 1 << *(v31 + 32);
        v36 = -1;
        if (v35 < 64)
        {
          v36 = ~(-1 << v35);
        }

        v37 = v36 & *(v31 + 64);
        v38 = (v35 + 63) >> 6;
        v39 = v32 + 64;
        if (v37)
        {
          while (1)
          {
            v40 = __clz(__rbit64(v37));
            v37 &= v37 - 1;
LABEL_20:
            v43 = v40 | (v34 << 6);
            v44 = (*(v31 + 48) + 16 * v43);
            v45 = *(*(v31 + 56) + 8 * v43);
            v46 = *v44;
            v47 = v44[1];
            *(v39 + ((v43 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v43;
            v48 = (v33[6] + 16 * v43);
            *v48 = v46;
            v48[1] = v47;
            *(v33[7] + 8 * v43) = v45;
            v49 = v33[2];
            v50 = __OFADD__(v49, 1);
            v51 = v49 + 1;
            if (v50)
            {
              break;
            }

            v33[2] = v51;

            if (!v37)
            {
              goto LABEL_15;
            }
          }
        }

        else
        {
LABEL_15:
          v41 = v34;
          while (1)
          {
            v34 = v41 + 1;
            if (__OFADD__(v41, 1))
            {
              break;
            }

            if (v34 >= v38)
            {
              v52 = swift_allocObject();

              *(v52 + 16) = v33;
              *a8 = v52 | 0xA000000000000000;
              return result;
            }

            v42 = *(v31 + 64 + 8 * v34);
            ++v41;
            if (v42)
            {
              v40 = __clz(__rbit64(v42));
              v37 = (v42 - 1) & v42;
              goto LABEL_20;
            }
          }

          __break(1u);
        }

        __break(1u);
        goto LABEL_44;
      }

      v58 = *(*(a1 + 56) + 8 * v55);

      if (qword_27F7E5E80 != -1)
      {
        swift_once();
      }

      v59 = sub_255E386A8();
      __swift_project_value_buffer(v59, qword_27F8152D8);
      v60 = sub_255E38688();
      v61 = sub_255E3A868();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        *v62 = 0;
        _os_log_impl(&dword_255D2E000, v60, v61, "Referenceable.updatedDict: Have a subreference but next structure is a value", v62, 2u);
        MEMORY[0x259C4F9E0](v62, -1, -1);
      }

      sub_255D5C33C();
      swift_allocError();
      *v63 = 3;
      *(v63 + 8) = 0;
      *(v63 + 16) = 0;
      *(v63 + 24) = 0;
      *(v63 + 32) = 5;
      swift_willThrow();
    }

    else
    {
      v64 = v27;

      if (qword_27F7E5E80 != -1)
      {
        swift_once();
      }

      v65 = sub_255E386A8();
      __swift_project_value_buffer(v65, qword_27F8152D8);

      v66 = sub_255E38688();
      v67 = sub_255E3A868();

      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        *&v86 = v69;
        *v68 = 136315394;
        v70 = v84;
        *(v68 + 4) = sub_255D378C0(v84, v64, &v86);
        *(v68 + 12) = 2080;
        v71 = sub_255E3A418();
        v73 = sub_255D378C0(v71, v72, &v86);

        *(v68 + 14) = v73;
        _os_log_impl(&dword_255D2E000, v66, v67, "Referenceable.updatedDict: key not found %s dict: %s", v68, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x259C4F9E0](v69, -1, -1);
        MEMORY[0x259C4F9E0](v68, -1, -1);
      }

      else
      {

        v70 = v84;
      }

      sub_255D5C33C();
      swift_allocError();
      *v74 = v70;
      *(v74 + 8) = v64;
      *(v74 + 32) = 4;
      swift_willThrow();
    }

    return sub_255D2F870(v83);
  }

  if (qword_27F7E5E80 != -1)
  {
LABEL_44:
    swift_once();
  }

  v22 = sub_255E386A8();
  __swift_project_value_buffer(v22, qword_27F8152D8);
  v23 = sub_255E38688();
  v24 = sub_255E3A868();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_255D2E000, v23, v24, "Referenceable.updatedDict: trying to modify a dictionary using an index subreference", v25, 2u);
    MEMORY[0x259C4F9E0](v25, -1, -1);
  }

  sub_255D5C33C();
  swift_allocError();
  *v26 = 5;
  *(v26 + 8) = 0;
  *(v26 + 16) = 0;
  *(v26 + 24) = 0;
  *(v26 + 32) = 5;
  return swift_willThrow();
}

uint64_t sub_255DCCD0C@<X0>(char *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t *a8@<X8>)
{
  v9 = *a2;
  if ((*a2 & 0x8000000000000000) == 0)
  {
    if (qword_27F7E5E80 != -1)
    {
      swift_once();
    }

    v10 = sub_255E386A8();
    __swift_project_value_buffer(v10, qword_27F8152D8);
    v11 = sub_255E38688();
    v12 = sub_255E3A868();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_255D2E000, v11, v12, "Referenceable.updatedArray: trying to modify an array using an key subreference", v13, 2u);
      MEMORY[0x259C4F9E0](v13, -1, -1);
    }

    sub_255D5C33C();
    swift_allocError();
    v15 = 4;
LABEL_13:
    *v14 = v15;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    *(v14 + 24) = 0;
    v31 = 5;
LABEL_14:
    *(v14 + 32) = v31;
    return swift_willThrow();
  }

  v22 = v9 & 0x7FFFFFFFFFFFFFFFLL;
  v23 = *((v9 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
  v24 = *(v22 + 40);
  v61 = *(v22 + 48);
  v62 = *(v22 + 16);
  v63 = v23;
  v64 = v24;

  v25 = sub_255D8F9E4(a4);
  if (v26)
  {

    if (qword_27F7E5E80 != -1)
    {
      swift_once();
    }

    v27 = sub_255E386A8();
    __swift_project_value_buffer(v27, qword_27F8152D8);
    v28 = sub_255E38688();
    v29 = sub_255E3A848();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_255D2E000, v28, v29, "SubReference to update array, unable to resolve index", v30, 2u);
      MEMORY[0x259C4F9E0](v30, -1, -1);
    }

    sub_255D5C33C();
    swift_allocError();
    v15 = 2;
    goto LABEL_13;
  }

  v33 = v25;
  if (v25 < 0 || v25 >= *(a1 + 2))
  {

    if (qword_27F7E5E80 != -1)
    {
      swift_once();
    }

    v38 = sub_255E386A8();
    __swift_project_value_buffer(v38, qword_27F8152D8);

    v39 = sub_255E38688();
    v40 = sub_255E3A868();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *&v62 = v42;
      *v41 = 134218242;
      *(v41 + 4) = v33;
      *(v41 + 12) = 2080;
      v43 = MEMORY[0x259C4E9D0](a1, &type metadata for DecodableState);
      v45 = sub_255D378C0(v43, v44, &v62);

      *(v41 + 14) = v45;
      _os_log_impl(&dword_255D2E000, v39, v40, "Referenceable.updatedArray: index out of range idx: %ld array: %s", v41, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      MEMORY[0x259C4F9E0](v42, -1, -1);
      MEMORY[0x259C4F9E0](v41, -1, -1);
    }

    sub_255D5C33C();
    swift_allocError();
    *v14 = v33;
    v31 = 3;
    goto LABEL_14;
  }

  v34 = v61;
  if ((~v61 & 0xF000000000000007) == 0)
  {
    (*(a6 + 8))(&v62, a5, a6);
    v35 = v62;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a1 = sub_255DF5ECC(a1);
    }

    if (v33 < *(a1 + 2))
    {
      v36 = &a1[8 * v33];
      v37 = *(v36 + 4);
      *(v36 + 4) = v35;
LABEL_22:

      sub_255DCB4C0(a1, a8);
    }

    __break(1u);
    goto LABEL_47;
  }

  v46 = *&a1[8 * v33 + 32];
  v47 = v46 >> 61 == 4;
  if ((v46 >> 61) >= 4)
  {
    v53 = v46 & 0x1FFFFFFFFFFFFFFFLL;
    if (v47)
    {
      v58 = *(v53 + 16);
      v65 = v61;
      sub_255D34858(v61);

      sub_255DCCD0C(&v62, v54, &v65, a3, a4, a5, a6, a7);
      if (v8)
      {
LABEL_41:

        sub_255D2F870(v61);
      }

      a3 = v53;

      v53 = v62;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a1 = sub_255DF5ECC(a1);
      }

      v34 = sub_255D2F870(v61);
      if (v33 < *(a1 + 2))
      {
LABEL_45:
        v56 = &a1[8 * v33];
        v57 = *(v56 + 4);
        *(v56 + 4) = v53;

        goto LABEL_22;
      }

      __break(1u);
    }

    v59 = *(v53 + 16);
    v65 = v34;
    sub_255D34858(v34);

    sub_255DCC4E0(&v62, v55, &v65, a3, a4, a5, a6, a7);
    if (v8)
    {
      goto LABEL_41;
    }

    v53 = v62;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a1 = sub_255DF5ECC(a1);
    }

    result = sub_255D2F870(v61);
    if (v33 >= *(a1 + 2))
    {
      __break(1u);
      return result;
    }

    goto LABEL_45;
  }

  sub_255D34858(v61);

  if (qword_27F7E5E80 != -1)
  {
LABEL_47:
    swift_once();
  }

  v48 = sub_255E386A8();
  __swift_project_value_buffer(v48, qword_27F8152D8);
  v49 = sub_255E38688();
  v50 = sub_255E3A868();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&dword_255D2E000, v49, v50, "Referenceable.updatedArray: Have a subreference but next structure is a value", v51, 2u);
    MEMORY[0x259C4F9E0](v51, -1, -1);
  }

  sub_255D5C33C();
  swift_allocError();
  *v52 = 3;
  *(v52 + 8) = 0;
  *(v52 + 16) = 0;
  *(v52 + 24) = 0;
  *(v52 + 32) = 5;
  swift_willThrow();

  return sub_255D2F870(v61);
}

uint64_t sub_255DCD438@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t *a3@<X8>)
{
  RemoteStateStore.subscript.getter(a1, a2, &v6);
  v4 = v6;
  if ((~v6 & 0xF000000000000007) != 0)
  {
  }

  result = sub_255D5C324(v4);
  *a3 = v4;
  return result;
}

void *sub_255DCD498(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_255DCD4B8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_255DCD4E8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *a1;
  sub_255D5C30C(*a1);

  return sub_255DF2888(v8, a5, a6);
}

uint64_t sub_255DCD540(uint64_t *a1)
{
  v2 = v1[4];
  v3 = v1[5];
  v4 = v1[6];
  v5 = *a1;
  sub_255D5C30C(*a1);

  return sub_255DF2888(v5, v3, v4);
}

uint64_t sub_255DCD59C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    type metadata accessor for SubReference();
    sub_255E3A8A8();
    result = swift_getTupleTypeMetadata2();
    if (v6 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_255DCD648(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 24;
  if (*(v3 + 64) > 0x18uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_255DCD760(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x18)
  {
    v5 = 24;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t get_enum_tag_for_layout_string_6LiftUI18ReferenceableErrorO(uint64_t a1)
{
  if ((*(a1 + 32) & 7u) <= 4)
  {
    return *(a1 + 32) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_255DCD958(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 33))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 32);
  if (v3 >= 6)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_255DCD994(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_255DCD9E0(uint64_t result, unsigned int a2)
{
  if (a2 > 4)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 5;
    LOBYTE(a2) = 5;
  }

  *(result + 32) = a2;
  return result;
}

unint64_t sub_255DCDA18()
{
  result = qword_27F7E8248;
  if (!qword_27F7E8248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8248);
  }

  return result;
}

unint64_t sub_255DCDA70()
{
  result = qword_27F7E8250;
  if (!qword_27F7E8250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8250);
  }

  return result;
}

unint64_t sub_255DCDAC8()
{
  result = qword_27F7E8258;
  if (!qword_27F7E8258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8258);
  }

  return result;
}

uint64_t sub_255DCDB1C()
{
  v0 = sub_255E3AB48();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_255DCDB98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  RemoteStateStore.subscript.getter(a2, a3, &v6);
  v3 = v6;
  if ((~v6 & 0xF000000000000007) != 0 && (, sub_255D5C324(v3), v3 >> 61 == 3))
  {
    v4 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    sub_255D5C324(v3);
    return v4;
  }

  else
  {
    sub_255D5C324(v3);
    return 2;
  }
}

uint64_t sub_255DCDC30@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E3AE08();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    sub_255D3EA0C();
    sub_255E3ACB8();
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    *a2 = v7;
    *(a2 + 16) = v8;
    *(a2 + 24) = v9;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_255DCDD20(uint64_t a1)
{
  result = sub_255DCDD48();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255DCDD48()
{
  result = qword_27F7E8260;
  if (!qword_27F7E8260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8260);
  }

  return result;
}

uint64_t sub_255DCDDAC@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v10 = *v3;
  v11 = *(v3 + 8);
  v12 = *(v3 + 16);
  v13 = *(v3 + 24);
  sub_255D3E5A8(*v3, v11, v12, v13);
  StringResolvable.resolved(with:)(a2);
  if (v4)
  {
  }

  sub_255D38060(v10, v11, v12, v13);
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D6EEE8();
  a3[3] = swift_getOpaqueTypeMetadata2();
  a3[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(a3);
  sub_255E399F8();
}

uint64_t sub_255DCDF20()
{
  sub_255E3AD98();
  sub_255E3A578();
  return sub_255E3ADD8();
}

uint64_t sub_255DCDF84()
{
  sub_255E3AD98();
  sub_255E3A578();
  return sub_255E3ADD8();
}

uint64_t sub_255DCDFD0@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_255E3AB48();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_255DCE050@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_255E3AB48();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_255DCE0A8(uint64_t a1)
{
  v2 = sub_255DCE34C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255DCE0E4(uint64_t a1)
{
  v2 = sub_255DCE34C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255DCE120@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8270, &qword_255E546D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255DCE34C();
  sub_255E3AE28();
  if (!v2)
  {
    sub_255D3EA0C();
    sub_255E3ABC8();
    (*(v6 + 8))(v9, v5);
    v11 = v15;
    v12 = v16;
    *a2 = v14;
    *(a2 + 16) = v11;
    *(a2 + 24) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_255DCE2D0(uint64_t a1)
{
  result = sub_255DCE2F8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255DCE2F8()
{
  result = qword_27F7E8268;
  if (!qword_27F7E8268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8268);
  }

  return result;
}

unint64_t sub_255DCE34C()
{
  result = qword_27F7E8278;
  if (!qword_27F7E8278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8278);
  }

  return result;
}

unint64_t sub_255DCE3B4()
{
  result = qword_27F7E8280;
  if (!qword_27F7E8280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8280);
  }

  return result;
}

unint64_t sub_255DCE40C()
{
  result = qword_27F7E8288;
  if (!qword_27F7E8288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8288);
  }

  return result;
}

unint64_t sub_255DCE464()
{
  result = qword_27F7E8290;
  if (!qword_27F7E8290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8290);
  }

  return result;
}

uint64_t sub_255DCE4C8@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_255DDF1BC(a2, *v3, *(v3 + 8), *(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    v8 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    a3[3] = swift_getOpaqueTypeMetadata2();
    a3[4] = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_1(a3);
    return sub_255E39B38();
  }

  return result;
}

unint64_t sub_255DCE5B0(uint64_t a1)
{
  result = sub_255DCE5D8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255DCE5D8()
{
  result = qword_27F7E8298;
  if (!qword_27F7E8298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8298);
  }

  return result;
}

uint64_t sub_255DCE62C(uint64_t *a1, int a2)
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

uint64_t sub_255DCE674(uint64_t result, int a2, int a3)
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

uint64_t sub_255DCE6C4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v12 = sub_255E1AAC0(a2);
  v14 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  if (v12)
  {
    v15 = a4;
  }

  else
  {
    v15 = a5;
  }

  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  v17 = sub_255D48C6C(v16);

  View.liftUI_viewWithAppliedModifiers(_:store:localStore:)(v17, a2, a3, v14, v13, a6);
}

uint64_t sub_255DCE79C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 1852139636;
  if (v2 != 1)
  {
    v3 = 1702063205;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x6F697469646E6F63;
  }

  if (v2)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE90000000000006ELL;
  }

  v6 = 1852139636;
  if (*a2 != 1)
  {
    v6 = 1702063205;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x6F697469646E6F63;
  }

  if (*a2)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE90000000000006ELL;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_255E3AC68();
  }

  return v9 & 1;
}

uint64_t sub_255DCE880()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255DCE918()
{
  *v0;
  *v0;
  sub_255E3A578();
}

uint64_t sub_255DCE99C()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255DCEA30@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_255DCF0B4();
  *a2 = result;
  return result;
}

void sub_255DCEA60(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE90000000000006ELL;
  v4 = 1852139636;
  if (v2 != 1)
  {
    v4 = 1702063205;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6F697469646E6F63;
  }

  if (!v5)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_255DCEAB4()
{
  v1 = 1852139636;
  if (*v0 != 1)
  {
    v1 = 1702063205;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F697469646E6F63;
  }
}

uint64_t sub_255DCEB04@<X0>(_BYTE *a1@<X8>)
{
  result = sub_255DCF0B4();
  *a1 = result;
  return result;
}

uint64_t sub_255DCEB2C(uint64_t a1)
{
  v2 = sub_255DCEEF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255DCEB68(uint64_t a1)
{
  v2 = sub_255DCEEF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255DCEBC4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_255DCEC70(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

unint64_t sub_255DCEBF4(uint64_t a1)
{
  result = sub_255DCEC1C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255DCEC1C()
{
  result = qword_27F7E82A0;
  if (!qword_27F7E82A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E82A0);
  }

  return result;
}

uint64_t sub_255DCEC70(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E82A8, &qword_255E54A10);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255DCEEF0();
  sub_255E3AE28();
  type metadata accessor for Condition();
  v11 = 0;
  sub_255DCEF44();
  sub_255E3ABC8();
  v9 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E61C0, &qword_255E3BBE8);
  v11 = 1;
  sub_255D3CF34();
  sub_255E3ABA8();
  v11 = 2;
  sub_255E3ABA8();
  (*(v3 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v9;
}

unint64_t sub_255DCEEF0()
{
  result = qword_27F7E82B0;
  if (!qword_27F7E82B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E82B0);
  }

  return result;
}

unint64_t sub_255DCEF44()
{
  result = qword_27F7E7188;
  if (!qword_27F7E7188)
  {
    type metadata accessor for Condition();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E7188);
  }

  return result;
}

unint64_t sub_255DCEFB0()
{
  result = qword_27F7E82B8;
  if (!qword_27F7E82B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E82B8);
  }

  return result;
}

unint64_t sub_255DCF008()
{
  result = qword_27F7E82C0;
  if (!qword_27F7E82C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E82C0);
  }

  return result;
}

unint64_t sub_255DCF060()
{
  result = qword_27F7E82C8;
  if (!qword_27F7E82C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E82C8);
  }

  return result;
}

uint64_t sub_255DCF0B4()
{
  v0 = sub_255E3AB48();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t RemoteLoader.status.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_255DD7710(&qword_27F7E5F18, type metadata accessor for RemoteLoader);
  sub_255E38618();

  swift_beginAccess();
  return sub_255D38004(v1 + 16, a1);
}

uint64_t RemoteLoader.setContentRegistry(_:)(void *a1)
{
  v3 = sub_255E3AAE8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(v1 + 152);
  if (qword_27F7E5E88 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v3, qword_27F8152F0);
  (*(v4 + 16))(v7, v9, v3);
  v14[3] = type metadata accessor for ContentRegistry();
  v14[0] = a1;
  v10 = a1;
  v11 = sub_255E38428();
  sub_255DCF60C(v14, v7);
  return v11(v13, 0);
}

uint64_t RemoteLoader.reload(content:showLoading:reloadtype:)(uint64_t a1, char a2, char *a3)
{
  v7 = type metadata accessor for RemoteContent(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6A70, &unk_255E559E0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v23 - v12;
  v14 = *a3;
  *(v3 + 120) = 1;
  if (*(v3 + 144))
  {
    v15 = *(v3 + 144);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E5FC0, &unk_255E48660);
    sub_255E3A788();
  }

  if (a2)
  {
    v24 = 0;
    memset(v23, 0, sizeof(v23));
    v25 = 2;
    sub_255DD0A2C(v23);
    sub_255D38CA8(v23);
  }

  v16 = sub_255E3A778();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  sub_255DD6D20(a1, v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  sub_255DD6D84(v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  v19 = v18 + ((v9 + v17 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v19 = v3;
  *(v19 + 8) = v14;

  v20 = sub_255DD3B94(0, 0, v13, &unk_255E54BA8, v18);
  sub_255D395E4(v13, &qword_27F7E6A70, &unk_255E559E0);
  v21 = *(v3 + 144);
  *(v3 + 144) = v20;
}

uint64_t View.remoteLoader(_:)()
{
  swift_getKeyPath();
  sub_255E398D8();
}

uint64_t sub_255DCF60C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_255D31B4C(a1, v10);
    v4 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    sub_255D81CD0(v10, a2, isUniquelyReferenced_nonNull_native);
    v6 = sub_255E3AAE8();
    result = (*(*(v6 - 8) + 8))(a2, v6);
    *v2 = v9;
  }

  else
  {
    sub_255D395E4(a1, &qword_27F7E8350, &unk_255E54F90);
    sub_255D807F4(a2, v10);
    v8 = sub_255E3AAE8();
    (*(*(v8 - 8) + 8))(a2, v8);
    return sub_255D395E4(v10, &qword_27F7E8350, &unk_255E54F90);
  }

  return result;
}

uint64_t sub_255DCF728(uint64_t a1)
{
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8328, &unk_255E54EC8);
  v2 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62);
  v61 = &v50 - v3;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8340, &qword_255E54F40);
  v4 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60);
  v59 = &v50 - v5;
  v6 = sub_255E3AAE8();
  v63 = *(v6 - 8);
  v7 = *(v63 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8318, &qword_255E54EB8);
  v10 = *(*(v57 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v57);
  v56 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v55 = &v50 - v13;
  v64 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7530, &unk_255E54F50);
    v14 = sub_255E3AB28();
  }

  else
  {
    v14 = MEMORY[0x277D84F98];
  }

  v15 = v64 + 64;
  v16 = 1 << *(v64 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & *(v64 + 64);
  v19 = (v16 + 63) >> 6;
  v53 = v63 + 16;
  v66 = v63 + 32;
  v20 = v14 + 64;

  v22 = 0;
  v51 = v15;
  v52 = v19;
  v58 = v9;
  v54 = v14;
  while (v18)
  {
LABEL_15:
    v25 = __clz(__rbit64(v18)) | (v22 << 6);
    v26 = v63;
    v27 = v64;
    v28 = *(v64 + 48);
    v65 = *(v63 + 72);
    v29 = v55;
    (*(v63 + 16))(v55, v28 + v65 * v25, v6);
    v30 = *(v27 + 56) + 32 * v25;
    v31 = v57;
    sub_255D3951C(v30, v29 + *(v57 + 48));
    v32 = v56;
    sub_255D9B71C(v29, v56, &qword_27F7E8318, &qword_255E54EB8);
    v33 = *(v31 + 48);
    v34 = *(v62 + 48);
    v35 = *(v26 + 32);
    v36 = v6;
    v37 = v61;
    v35(v61, v32, v36);
    sub_255D31B4C((v32 + v33), v67);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8330, &qword_255E54ED8);
    swift_dynamicCast();
    v38 = v59;
    v39 = *(v60 + 48);
    v35(v59, v37, v36);
    v40 = &v37[v34];
    v6 = v36;
    sub_255D31B4C(v40, &v38[v39]);
    v41 = v58;
    v35(v58, v38, v36);
    sub_255D31B4C(&v38[v39], v67);
    v14 = v54;
    v42 = *(v54 + 40);
    result = sub_255E3A478();
    v43 = -1 << *(v14 + 32);
    v44 = result & ~v43;
    v45 = v44 >> 6;
    if (((-1 << v44) & ~*(v20 + 8 * (v44 >> 6))) == 0)
    {
      v46 = 0;
      v47 = (63 - v43) >> 6;
      v19 = v52;
      while (++v45 != v47 || (v46 & 1) == 0)
      {
        v48 = v45 == v47;
        if (v45 == v47)
        {
          v45 = 0;
        }

        v46 |= v48;
        v49 = *(v20 + 8 * v45);
        if (v49 != -1)
        {
          v23 = __clz(__rbit64(~v49)) + (v45 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v23 = __clz(__rbit64((-1 << v44) & ~*(v20 + 8 * (v44 >> 6)))) | v44 & 0x7FFFFFFFFFFFFFC0;
    v19 = v52;
LABEL_9:
    v18 &= v18 - 1;
    *(v20 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v35((*(v14 + 48) + v23 * v65), v41, v6);
    result = sub_255D31B4C(v67, (*(v14 + 56) + 32 * v23));
    ++*(v14 + 16);
    v15 = v51;
  }

  while (1)
  {
    v24 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v24 >= v19)
    {

      return v14;
    }

    v18 = *(v15 + 8 * v24);
    ++v22;
    if (v18)
    {
      v22 = v24;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_255DCFC64(uint64_t a1)
{
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8318, &qword_255E54EB8);
  v2 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62);
  v61 = &v50 - v3;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8320, &qword_255E54EC0);
  v4 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60);
  v59 = &v50 - v5;
  v6 = sub_255E3AAE8();
  v63 = *(v6 - 8);
  v7 = *(v63 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8328, &unk_255E54EC8);
  v10 = *(*(v57 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v57);
  v56 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v55 = &v50 - v13;
  v64 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7550, &qword_255E48B40);
    v14 = sub_255E3AB28();
  }

  else
  {
    v14 = MEMORY[0x277D84F98];
  }

  v15 = v64 + 64;
  v16 = 1 << *(v64 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & *(v64 + 64);
  v19 = (v16 + 63) >> 6;
  v53 = v63 + 16;
  v66 = v63 + 32;
  v20 = v14 + 64;

  v22 = 0;
  v51 = v15;
  v52 = v19;
  v58 = v9;
  v54 = v14;
  while (v18)
  {
LABEL_15:
    v25 = __clz(__rbit64(v18)) | (v22 << 6);
    v26 = v63;
    v27 = v64;
    v28 = *(v64 + 48);
    v65 = *(v63 + 72);
    v29 = v55;
    (*(v63 + 16))(v55, v28 + v65 * v25, v6);
    v30 = *(v27 + 56) + 32 * v25;
    v31 = v57;
    sub_255D3951C(v30, v29 + *(v57 + 48));
    v32 = v56;
    sub_255D9B71C(v29, v56, &qword_27F7E8328, &unk_255E54EC8);
    v33 = *(v31 + 48);
    v34 = *(v62 + 48);
    v35 = *(v26 + 32);
    v36 = v6;
    v37 = v61;
    v35(v61, v32, v36);
    sub_255D31B4C((v32 + v33), v67);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8330, &qword_255E54ED8);
    swift_dynamicCast();
    v38 = v59;
    v39 = *(v60 + 48);
    v35(v59, v37, v36);
    v40 = &v37[v34];
    v6 = v36;
    sub_255D31B4C(v40, &v38[v39]);
    v41 = v58;
    v35(v58, v38, v36);
    sub_255D31B4C(&v38[v39], v67);
    v14 = v54;
    v42 = *(v54 + 40);
    result = sub_255E3A478();
    v43 = -1 << *(v14 + 32);
    v44 = result & ~v43;
    v45 = v44 >> 6;
    if (((-1 << v44) & ~*(v20 + 8 * (v44 >> 6))) == 0)
    {
      v46 = 0;
      v47 = (63 - v43) >> 6;
      v19 = v52;
      while (++v45 != v47 || (v46 & 1) == 0)
      {
        v48 = v45 == v47;
        if (v45 == v47)
        {
          v45 = 0;
        }

        v46 |= v48;
        v49 = *(v20 + 8 * v45);
        if (v49 != -1)
        {
          v23 = __clz(__rbit64(~v49)) + (v45 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v23 = __clz(__rbit64((-1 << v44) & ~*(v20 + 8 * (v44 >> 6)))) | v44 & 0x7FFFFFFFFFFFFFC0;
    v19 = v52;
LABEL_9:
    v18 &= v18 - 1;
    *(v20 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v35((*(v14 + 48) + v23 * v65), v41, v6);
    result = sub_255D31B4C(v67, (*(v14 + 56) + 32 * v23));
    ++*(v14 + 16);
    v15 = v51;
  }

  while (1)
  {
    v24 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v24 >= v19)
    {

      return v14;
    }

    v18 = *(v15 + 8 * v24);
    ++v22;
    if (v18)
    {
      v22 = v24;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

LiftUI::ReloadType_optional __swiftcall ReloadType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_255E3AB48();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ReloadType.rawValue.getter()
{
  v1 = 2003134838;
  if (*v0 != 1)
  {
    v1 = 0x44646E4177656976;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1635017060;
  }
}

uint64_t sub_255DD0250(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 0xE400000000000000;
  v5 = 2003134838;
  if (v2 != 1)
  {
    v5 = 0x44646E4177656976;
    v4 = 0xEB00000000617461;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 1635017060;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  v8 = 2003134838;
  if (*a2 != 1)
  {
    v8 = 0x44646E4177656976;
    v3 = 0xEB00000000617461;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1635017060;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_255E3AC68();
  }

  return v11 & 1;
}

uint64_t sub_255DD0348()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255DD03E4()
{
  *v0;
  *v0;
  sub_255E3A578();
}

uint64_t sub_255DD046C()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

void sub_255DD0510(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE400000000000000;
  v5 = 2003134838;
  if (v2 != 1)
  {
    v5 = 0x44646E4177656976;
    v4 = 0xEB00000000617461;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1635017060;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_255DD0568()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8310, &qword_255E54EB0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v8 - v2;
  v4 = sub_255E3AAE8();
  __swift_allocate_value_buffer(v4, qword_27F8152A8);
  v5 = __swift_project_value_buffer(v4, qword_27F8152A8);
  sub_255E3AAD8();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t sub_255DD0698()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8310, &qword_255E54EB0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v8 - v2;
  v4 = sub_255E3AAE8();
  __swift_allocate_value_buffer(v4, qword_27F8152C0);
  v5 = __swift_project_value_buffer(v4, qword_27F8152C0);
  sub_255E3AAD8();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t sub_255DD07CC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_255DD76B8(a2, a1 + 16);
  return swift_endAccess();
}

uint64_t sub_255DD0838()
{
  v1 = sub_255E3AAE8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 56) = 2;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0;
  *(v0 + 104) = -1;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 136) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 144) = 0;
  sub_255E38628();
  v6 = sub_255E38468();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  *(v0 + 152) = sub_255E38458();
  if (qword_27F7E5E68 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v1, qword_27F8152C0);
  (*(v2 + 16))(v5, v9, v1);
  v10 = type metadata accessor for AnyWeakRemoteLoader();
  v11 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  v15[3] = v10;
  v15[0] = v11;
  v12 = sub_255E38428();
  sub_255DCF60C(v15, v5);
  v12(v14, 0);
  return v0;
}

uint64_t sub_255DD0A2C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_255E3A3E8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_255DA5ED4();
  *v8 = sub_255E3A878();
  (*(v5 + 104))(v8, *MEMORY[0x277D85200], v4);
  v9 = sub_255E3A3F8();
  result = (*(v5 + 8))(v8, v4);
  if (v9)
  {
    sub_255D38004(a1, &v14);
    if (v17 == 2 && (v11 = vorrq_s8(v15, v16), !(*&vorr_s8(*v11.i8, *&vextq_s8(v11, v11, 8uLL)) | v14)))
    {
      sub_255D38CA8(&v14);
    }

    else
    {
      sub_255D38CA8(&v14);
      sub_255D38004(a1, &v14);
      swift_beginAccess();
      sub_255DD7648(&v14, v2 + 64);
      swift_endAccess();
    }

    sub_255D38004(a1, &v14);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v13[-2] = v2;
    v13[-1] = &v14;
    v13[1] = v2;
    sub_255DD7710(&qword_27F7E5F18, type metadata accessor for RemoteLoader);
    sub_255E38608();

    return sub_255D38CA8(&v14);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_255DD0CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 63) = a6;
  *(v6 + 72) = a4;
  *(v6 + 80) = a5;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6B28, &unk_255E48060) - 8) + 64) + 15;
  *(v6 + 88) = swift_task_alloc();
  v8 = sub_255E38588();
  *(v6 + 96) = v8;
  v9 = *(v8 - 8);
  *(v6 + 104) = v9;
  v10 = *(v9 + 64) + 15;
  *(v6 + 112) = swift_task_alloc();
  *(v6 + 120) = swift_task_alloc();
  v11 = type metadata accessor for RemoteContent(0);
  *(v6 + 128) = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  *(v6 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_255DD0DDC, 0, 0);
}

uint64_t sub_255DD0DDC()
{
  v1 = *(v0 + 128);
  sub_255DD6D20(*(v0 + 72), *(v0 + 136));
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v27 = *(v0 + 136);
      v28 = *(v0 + 63);
      v30 = *v27;
      v29 = v27[1];
      *(v0 + 168) = v29;
      *(v0 + 61) = v28;
      v31 = swift_task_alloc();
      *(v0 + 176) = v31;
      *v31 = v0;
      v31[1] = sub_255DD1710;
      v32 = *(v0 + 80);

      return sub_255DD2C5C(v30, v29, (v0 + 61));
    }

    else
    {
      v3 = *(v0 + 136);
      v4 = *(v0 + 63);
      v5 = *v3;
      *(v0 + 144) = *v3;
      v6 = v3[1];
      *(v0 + 152) = v6;
      *(v0 + 62) = v4;
      v7 = swift_task_alloc();
      *(v0 + 160) = v7;
      *v7 = v0;
      v7[1] = sub_255DD1580;
      v8 = *(v0 + 80);

      return sub_255DD1E3C(v5, v6, (v0 + 62));
    }
  }

  if (EnumCaseMultiPayload == 2)
  {
    v10 = *(v0 + 136);
    v11 = *(v0 + 120);
    v12 = *(v0 + 96);
    v13 = *(v0 + 104);
    v14 = *(v0 + 63);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E5F00, &qword_255E3B920);
    v16 = *(v10 + *(v15 + 48));
    v17 = (v10 + *(v15 + 64));
    v18 = *v17;
    *(v0 + 184) = *v17;
    v19 = v17[1];
    *(v0 + 192) = v19;
    (*(v13 + 32))(v11, v10, v12);
    *(v0 + 59) = v16;
    *(v0 + 60) = v14;
    v20 = swift_task_alloc();
    *(v0 + 200) = v20;
    *v20 = v0;
    v20[1] = sub_255DD18B4;
    v21 = *(v0 + 80);
    v22 = *(v0 + 120);
    v23 = (v0 + 59);
    v24 = v18;
    v25 = v19;
    v26 = (v0 + 60);
LABEL_8:

    return sub_255DD3164(v22, v23, v24, v25, v26);
  }

  v33 = *(v0 + 136);
  *(v0 + 208) = *v33;
  *(v0 + 216) = *(v33 + 8);
  *(v0 + 224) = *(v33 + 16);
  *(v0 + 328) = *(v33 + 24);
  v87 = *(v33 + 32);
  *(v0 + 232) = v87;
  v85 = *(v33 + 40);
  *(v0 + 240) = v85;
  v34 = *(v33 + 48);
  *(v0 + 248) = v34;
  v35 = *(v33 + 56);
  *(v0 + 329) = v35;
  v36 = *(v33 + 64);
  *(v0 + 256) = v36;
  v37 = *(v33 + 72);
  *(v0 + 264) = v37;
  v38 = *(v33 + 80);
  *(v0 + 272) = v38;
  v39 = *(v33 + 88);
  *(v0 + 330) = v39;
  v40 = *(v33 + 96);
  *(v0 + 280) = v40;
  StringResolvable.resolved(with:)(v40);
  v80 = v35;
  v81 = v39;
  v82 = v38;
  v83 = v36;
  v41 = *(v0 + 96);
  v42 = *(v0 + 104);
  v43 = *(v0 + 88);
  sub_255E38578();

  if ((*(v42 + 48))(v43, 1, v41) != 1)
  {
    (*(*(v0 + 104) + 32))(*(v0 + 112), *(v0 + 88), *(v0 + 96));
    if (v35 <= 0xFD)
    {
      sub_255D3E5A8(v87, v85, v34, v35);
      v65 = v83;
      v66 = v82;
      v67 = StringResolvable.resolved(with:)(v40);
      v69 = v68;
      sub_255D38060(v87, v85, v34, v80);
      v70._countAndFlagsBits = v67;
      v70._object = v69;
      HTTPRequestMethod.init(rawValue:)(v70);
      v64 = v87;
    }

    else
    {
      v64 = 8;
      v65 = v83;
      v66 = v82;
    }

    if (v81 == 255)
    {
      v77 = 0;
      v79 = 0xF000000000000000;
    }

    else
    {
      v71 = sub_255DDF580(v40, v65, v37, v66, v81 & 1);
      v72 = sub_255E38498();
      v73 = *(v72 + 48);
      v74 = *(v72 + 52);
      swift_allocObject();
      sub_255E38488();
      *(v0 + 64) = v71;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E73E8, &unk_255E480A0);
      sub_255D7B390();
      v77 = sub_255E38478();
      v79 = v78;
    }

    *(v0 + 288) = v77;
    *(v0 + 296) = v79;
    *(v0 + 57) = v64;
    *(v0 + 58) = *(v0 + 63);
    v75 = swift_task_alloc();
    *(v0 + 304) = v75;
    *v75 = v0;
    v75[1] = sub_255DD1A64;
    v76 = *(v0 + 80);
    v22 = *(v0 + 112);
    v23 = (v0 + 57);
    v24 = v77;
    v25 = v79;
    v26 = (v0 + 58);
    goto LABEL_8;
  }

  sub_255D395E4(*(v0 + 88), &qword_27F7E6B28, &unk_255E48060);
  type metadata accessor for RemoteLoaderError(0);
  sub_255DD7710(&qword_27F7E73D8, type metadata accessor for RemoteLoaderError);
  v44 = swift_allocError();
  *(v0 + 312) = v44;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  v45 = v44;
  if (sub_255E3A798())
  {

    v47 = *(v0 + 272);
    v46 = *(v0 + 280);
    v49 = *(v0 + 256);
    v48 = *(v0 + 264);
    v51 = *(v0 + 240);
    v50 = *(v0 + 248);
    v52 = *(v0 + 232);
    v53 = *(v0 + 208);
    v86 = *(v0 + 216);
    v88 = *(v0 + 224);
    v54 = *(v0 + 330);
    v55 = *(v0 + 329);
    v84 = *(v0 + 328);

    sub_255D7B5DC(v49, v48, v47, v54);
    sub_255D64814(v52, v51, v50, v55);
    sub_255D38060(v53, v86, v88, v84);
    v56 = *(v0 + 136);
    v57 = *(v0 + 112);
    v58 = *(v0 + 120);
    v59 = *(v0 + 88);

    v60 = *(v0 + 8);

    return v60();
  }

  else
  {
    *(v0 + 16) = v44;
    *(v0 + 56) = 1;
    sub_255E3A758();
    v61 = v44;
    *(v0 + 320) = sub_255E3A748();
    v63 = sub_255E3A738();

    return MEMORY[0x2822009F8](sub_255DD1C90, v63, v62);
  }
}

uint64_t sub_255DD1580()
{
  v1 = *(*v0 + 160);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_255DD167C, 0, 0);
}

uint64_t sub_255DD167C()
{
  sub_255D37E60(v0[18], v0[19]);
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[11];

  v5 = v0[1];

  return v5();
}

uint64_t sub_255DD1710()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_255DD1828, 0, 0);
}

uint64_t sub_255DD1828()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[11];

  v5 = v0[1];

  return v5();
}

uint64_t sub_255DD18B4()
{
  v1 = *(*v0 + 200);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_255DD19B0, 0, 0);
}

uint64_t sub_255DD19B0()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  sub_255DD7758(v0[23], v0[24]);
  (*(v3 + 8))(v1, v2);
  v4 = v0[17];
  v5 = v0[14];
  v6 = v0[15];
  v7 = v0[11];

  v8 = v0[1];

  return v8();
}

uint64_t sub_255DD1A64()
{
  v1 = *(*v0 + 304);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_255DD1B60, 0, 0);
}

uint64_t sub_255DD1B60()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  sub_255DD7758(*(v0 + 288), *(v0 + 296));
  (*(v2 + 8))(v1, v3);
  v5 = *(v0 + 272);
  v4 = *(v0 + 280);
  v7 = *(v0 + 256);
  v6 = *(v0 + 264);
  v9 = *(v0 + 240);
  v8 = *(v0 + 248);
  v10 = *(v0 + 232);
  v11 = *(v0 + 208);
  v21 = *(v0 + 216);
  v22 = *(v0 + 224);
  v12 = *(v0 + 330);
  v13 = *(v0 + 329);
  v20 = *(v0 + 328);

  sub_255D7B5DC(v7, v6, v5, v12);
  sub_255D64814(v10, v9, v8, v13);
  sub_255D38060(v11, v21, v22, v20);
  v14 = *(v0 + 136);
  v15 = *(v0 + 112);
  v16 = *(v0 + 120);
  v17 = *(v0 + 88);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_255DD1C90()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 80);

  sub_255DD3E00(0, v0 + 16);
  sub_255D395E4(v0 + 16, &qword_27F7E82F0, &qword_255E54BE0);

  return MEMORY[0x2822009F8](sub_255DD1D20, 0, 0);
}

uint64_t sub_255DD1D20()
{
  v1 = *(v0 + 312);

  v3 = *(v0 + 272);
  v2 = *(v0 + 280);
  v5 = *(v0 + 256);
  v4 = *(v0 + 264);
  v7 = *(v0 + 240);
  v6 = *(v0 + 248);
  v8 = *(v0 + 232);
  v9 = *(v0 + 208);
  v19 = *(v0 + 216);
  v20 = *(v0 + 224);
  v10 = *(v0 + 330);
  v11 = *(v0 + 329);
  v18 = *(v0 + 328);

  sub_255D7B5DC(v5, v4, v3, v10);
  sub_255D64814(v8, v7, v6, v11);
  sub_255D38060(v9, v19, v20, v18);
  v12 = *(v0 + 136);
  v13 = *(v0 + 112);
  v14 = *(v0 + 120);
  v15 = *(v0 + 88);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_255DD1E3C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v4 + 792) = v3;
  *(v4 + 784) = a2;
  *(v4 + 776) = a1;
  v6 = *(*(sub_255E3A518() - 8) + 64) + 15;
  *(v4 + 800) = swift_task_alloc();
  *(v4 + 665) = *a3;

  return MEMORY[0x2822009F8](sub_255DD1EE0, 0, 0);
}

uint64_t sub_255DD1EE0()
{
  v43 = v0;
  if (sub_255E3A798())
  {
LABEL_2:
    v1 = *(v0 + 800);

    v2 = *(v0 + 8);

    return v2();
  }

  *(v0 + 160) = 0;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 16) = 0u;
  if (qword_27F7E5E80 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 784);
  v5 = *(v0 + 776);
  v6 = sub_255E386A8();
  __swift_project_value_buffer(v6, qword_27F8152D8);
  sub_255D37E0C(v5, v4);
  v7 = sub_255E38688();
  v8 = sub_255E3A868();
  sub_255D37E60(v5, v4);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 665);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v42[0] = v11;
    *v10 = 136315394;
    v12 = 0xE400000000000000;
    v13 = 2003134838;
    if (v9 != 1)
    {
      v13 = 0x44646E4177656976;
      v12 = 0xEB00000000617461;
    }

    if (v9)
    {
      v14 = v13;
    }

    else
    {
      v14 = 1635017060;
    }

    if (v9)
    {
      v15 = v12;
    }

    else
    {
      v15 = 0xE400000000000000;
    }

    v16 = *(v0 + 800);
    v17 = *(v0 + 784);
    v18 = *(v0 + 776);
    v19 = sub_255D378C0(v14, v15, v42);

    *(v10 + 4) = v19;
    *(v10 + 12) = 2080;
    sub_255E3A508();
    v20 = sub_255E3A4F8();
    if (v21)
    {
      v22 = v21;
    }

    else
    {
      v20 = 0xD000000000000014;
      v22 = 0x8000000255E65F50;
    }

    v23 = sub_255D378C0(v20, v22, v42);

    *(v10 + 14) = v23;
    _os_log_impl(&dword_255D2E000, v7, v8, "Loading type: %s JSON: %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C4F9E0](v11, -1, -1);
    MEMORY[0x259C4F9E0](v10, -1, -1);
  }

  if (*(v0 + 665) == 1)
  {
    v24 = 0;
LABEL_22:
    *(v0 + 808) = v24;
    v25 = swift_task_alloc();
    *(v0 + 816) = v25;
    *v25 = v0;
    v25[1] = sub_255DD24AC;
    v26 = *(v0 + 792);
    v27 = *(v0 + 784);
    v28 = *(v0 + 776);

    return sub_255DD4304(v0 + 168, v28, v27);
  }

  v29 = *(v0 + 784);
  v30 = *(v0 + 776);
  v31 = *(*(v0 + 792) + 152);
  sub_255DD728C();
  sub_255E38418();
  v24 = *(v0 + 768);
  if (!v24)
  {
    v24 = sub_255DC53CC(MEMORY[0x277D84F90]);
  }

  if (*(v0 + 665))
  {
    goto LABEL_22;
  }

  *(v0 + 832) = v24;
  if (sub_255E3A798())
  {
    sub_255D395E4(v0 + 16, &qword_27F7E6C20, &qword_255E58D80);

    goto LABEL_2;
  }

  sub_255D3957C(v0 + 16, v0 + 472, &qword_27F7E6C20, &qword_255E58D80);
  if (*(v0 + 480))
  {
    v32 = *(v0 + 584);
    *(v0 + 416) = *(v0 + 568);
    *(v0 + 432) = v32;
    *(v0 + 448) = *(v0 + 600);
    *(v0 + 464) = *(v0 + 616);
    v33 = *(v0 + 520);
    *(v0 + 352) = *(v0 + 504);
    *(v0 + 368) = v33;
    v34 = *(v0 + 552);
    *(v0 + 384) = *(v0 + 536);
    *(v0 + 400) = v34;
    v35 = *(v0 + 488);
    *(v0 + 320) = *(v0 + 472);
    *(v0 + 336) = v35;
    *(v0 + 744) = &type metadata for ViewContent;
    *(v0 + 752) = sub_255D44794();
    v36 = swift_allocObject();
    *(v0 + 720) = v36;
    sub_255D4C170(v0 + 320, v36 + 16);
    *(v0 + 760) = 0;
    sub_255E3A758();
    *(v0 + 840) = sub_255E3A748();
    v37 = sub_255E3A738();
    v39 = v38;
    v40 = sub_255DD2824;
  }

  else
  {
    sub_255D395E4(v0 + 472, &qword_27F7E6C20, &qword_255E58D80);
    *(v0 + 672) = 0u;
    *(v0 + 688) = 0u;
    *(v0 + 704) = 0;
    *(v0 + 712) = -1;
    sub_255E3A758();
    *(v0 + 848) = sub_255E3A748();
    v37 = sub_255E3A738();
    v39 = v41;
    v40 = sub_255DD2940;
  }

  return MEMORY[0x2822009F8](v40, v37, v39);
}

uint64_t sub_255DD24AC()
{
  v2 = *v1;
  v3 = *(*v1 + 816);
  v7 = *v1;
  *(*v1 + 824) = v0;

  if (v0)
  {
    v4 = *(v2 + 808);

    v5 = sub_255DD2B4C;
  }

  else
  {
    v5 = sub_255DD25C8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_255DD25C8()
{
  sub_255D395E4(v0 + 16, &qword_27F7E6C20, &qword_255E58D80);
  v1 = *(v0 + 280);
  *(v0 + 112) = *(v0 + 264);
  *(v0 + 128) = v1;
  *(v0 + 144) = *(v0 + 296);
  *(v0 + 160) = *(v0 + 312);
  v2 = *(v0 + 216);
  *(v0 + 48) = *(v0 + 200);
  *(v0 + 64) = v2;
  v3 = *(v0 + 248);
  *(v0 + 80) = *(v0 + 232);
  *(v0 + 96) = v3;
  v4 = *(v0 + 184);
  *(v0 + 16) = *(v0 + 168);
  *(v0 + 32) = v4;
  *(v0 + 832) = *(v0 + 808);
  if (sub_255E3A798())
  {
    sub_255D395E4(v0 + 16, &qword_27F7E6C20, &qword_255E58D80);

    v5 = *(v0 + 800);

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    sub_255D3957C(v0 + 16, v0 + 472, &qword_27F7E6C20, &qword_255E58D80);
    if (*(v0 + 480))
    {
      v8 = *(v0 + 584);
      *(v0 + 416) = *(v0 + 568);
      *(v0 + 432) = v8;
      *(v0 + 448) = *(v0 + 600);
      *(v0 + 464) = *(v0 + 616);
      v9 = *(v0 + 520);
      *(v0 + 352) = *(v0 + 504);
      *(v0 + 368) = v9;
      v10 = *(v0 + 552);
      *(v0 + 384) = *(v0 + 536);
      *(v0 + 400) = v10;
      v11 = *(v0 + 488);
      *(v0 + 320) = *(v0 + 472);
      *(v0 + 336) = v11;
      *(v0 + 744) = &type metadata for ViewContent;
      *(v0 + 752) = sub_255D44794();
      v12 = swift_allocObject();
      *(v0 + 720) = v12;
      sub_255D4C170(v0 + 320, v12 + 16);
      *(v0 + 760) = 0;
      sub_255E3A758();
      *(v0 + 840) = sub_255E3A748();
      v13 = sub_255E3A738();
      v15 = v14;
      v16 = sub_255DD2824;
    }

    else
    {
      sub_255D395E4(v0 + 472, &qword_27F7E6C20, &qword_255E58D80);
      *(v0 + 672) = 0u;
      *(v0 + 688) = 0u;
      *(v0 + 704) = 0;
      *(v0 + 712) = -1;
      sub_255E3A758();
      *(v0 + 848) = sub_255E3A748();
      v13 = sub_255E3A738();
      v15 = v17;
      v16 = sub_255DD2940;
    }

    return MEMORY[0x2822009F8](v16, v13, v15);
  }
}

uint64_t sub_255DD2824()
{
  v1 = v0[105];
  v2 = v0[104];
  v3 = v0[99];

  sub_255DD3E00(v2, (v0 + 90));

  sub_255D395E4((v0 + 90), &qword_27F7E82F0, &qword_255E54BE0);

  return MEMORY[0x2822009F8](sub_255DD28C0, 0, 0);
}

uint64_t sub_255DD28C0()
{
  sub_255D4C1A8(v0 + 320);
  sub_255D395E4(v0 + 16, &qword_27F7E6C20, &qword_255E58D80);
  v1 = *(v0 + 800);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_255DD2940()
{
  v1 = v0[106];
  v2 = v0[104];
  v3 = v0[99];

  sub_255DD3E00(v2, (v0 + 84));

  sub_255D395E4((v0 + 84), &qword_27F7E82F0, &qword_255E54BE0);

  return MEMORY[0x2822009F8](sub_255DD29DC, 0, 0);
}

uint64_t sub_255DD29DC()
{
  sub_255D395E4(v0 + 16, &qword_27F7E6C20, &qword_255E58D80);
  v1 = *(v0 + 800);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_255DD2A54()
{
  v1 = *(v0 + 864);
  v2 = *(v0 + 792);

  sub_255DD3E00(0, v0 + 624);
  sub_255D395E4(v0 + 624, &qword_27F7E82F0, &qword_255E54BE0);

  return MEMORY[0x2822009F8](sub_255DD2AE4, 0, 0);
}

uint64_t sub_255DD2AE4()
{
  v1 = *(v0 + 800);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_255DD2B4C()
{
  sub_255D395E4(v0 + 16, &qword_27F7E6C20, &qword_255E58D80);
  v1 = *(v0 + 824);
  *(v0 + 856) = v1;
  if (sub_255E3A798())
  {

    v2 = *(v0 + 800);

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    *(v0 + 624) = v1;
    *(v0 + 664) = 1;
    sub_255E3A758();
    v5 = v1;
    *(v0 + 864) = sub_255E3A748();
    v7 = sub_255E3A738();

    return MEMORY[0x2822009F8](sub_255DD2A54, v7, v6);
  }
}

uint64_t sub_255DD2C5C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v4 + 72) = a2;
  *(v4 + 80) = v3;
  *(v4 + 64) = a1;
  v6 = sub_255E3A518();
  *(v4 + 88) = v6;
  v7 = *(v6 - 8);
  *(v4 + 96) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 58) = *a3;

  return MEMORY[0x2822009F8](sub_255DD2D2C, 0, 0);
}

uint64_t sub_255DD2D2C()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  sub_255E3A508();
  v6 = sub_255E3A4E8();
  v8 = v7;
  *(v0 + 112) = v7;
  (*(v2 + 8))(v1, v3);
  if (v8 >> 60 == 15)
  {
    if (sub_255E3A798())
    {
      v9 = *(v0 + 104);

      v10 = *(v0 + 8);

      return v10();
    }

    else
    {
      type metadata accessor for RemoteLoaderError(0);
      sub_255DD7710(&qword_27F7E73D8, type metadata accessor for RemoteLoaderError);
      v15 = swift_allocError();
      swift_storeEnumTagMultiPayload();
      *(v0 + 16) = v15;
      *(v0 + 56) = 1;
      sub_255E3A758();
      *(v0 + 136) = sub_255E3A748();
      v17 = sub_255E3A738();

      return MEMORY[0x2822009F8](sub_255DD30D4, v17, v16);
    }
  }

  else
  {
    v12 = *(v0 + 58);
    *(v0 + 120) = v6;
    *(v0 + 57) = v12;
    v13 = swift_task_alloc();
    *(v0 + 128) = v13;
    *v13 = v0;
    v13[1] = sub_255DD2F70;
    v14 = *(v0 + 80);

    return sub_255DD1E3C(v6, v8, (v0 + 57));
  }
}

uint64_t sub_255DD2F70()
{
  v1 = *(*v0 + 128);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_255DD306C, 0, 0);
}

uint64_t sub_255DD306C()
{
  sub_255DD7758(v0[15], v0[14]);
  v1 = v0[13];

  v2 = v0[1];

  return v2();
}

uint64_t sub_255DD30D4()
{
  v1 = v0[17];
  v2 = v0[10];

  sub_255DD3E00(0, (v0 + 2));
  sub_255D395E4((v0 + 2), &qword_27F7E82F0, &qword_255E54BE0);
  v3 = v0[13];

  v4 = v0[1];

  return v4();
}

uint64_t sub_255DD3164(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  *(v6 + 80) = a4;
  *(v6 + 88) = v5;
  *(v6 + 64) = a1;
  *(v6 + 72) = a3;
  v9 = sub_255E38408();
  *(v6 + 96) = v9;
  v10 = *(v9 - 8);
  *(v6 + 104) = v10;
  v11 = *(v10 + 64) + 15;
  *(v6 + 112) = swift_task_alloc();
  *(v6 + 58) = *a2;
  *(v6 + 59) = *a5;

  return MEMORY[0x2822009F8](sub_255DD3248, 0, 0);
}

uint64_t sub_255DD3248()
{
  v24 = v0;
  v1 = *(v0 + 88);
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 120) = Strong;
  if (Strong)
  {
    v3 = *(v1 + 136);
    v4 = *(v0 + 112);
    v5 = *(v0 + 64);
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(v5, ObjectType, v3);
    v14 = *(v0 + 58);
    if (v14 <= 3)
    {
      *(v0 + 58);
    }

    else if (*(v0 + 58) > 5u && v14 != 6 && v14 != 7)
    {
      goto LABEL_17;
    }

    v15 = *(v0 + 112);
    sub_255E38388();
LABEL_17:
    if (*(v0 + 80) >> 60 != 15)
    {
      v16 = *(v0 + 112);
      sub_255D37E0C(*(v0 + 72), *(v0 + 80));
      sub_255E383E8();
    }

    v17 = *(v0 + 112);
    v23[0] = *(v0 + 59);
    sub_255DE9A3C(v23);
    v18 = *(v3 + 16);
    v22 = (v18 + *v18);
    v19 = v18[1];
    v20 = swift_task_alloc();
    *(v0 + 128) = v20;
    *v20 = v0;
    v20[1] = sub_255DD3644;
    v21 = *(v0 + 112);

    return v22(v21, ObjectType, v3);
  }

  type metadata accessor for RemoteLoaderError(0);
  sub_255DD7710(&qword_27F7E73D8, type metadata accessor for RemoteLoaderError);
  v7 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  *(v0 + 168) = v7;
  if (sub_255E3A798())
  {

    v8 = *(v0 + 112);

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    *(v0 + 16) = v7;
    *(v0 + 56) = 1;
    sub_255E3A758();
    v11 = v7;
    *(v0 + 176) = sub_255E3A748();
    v13 = sub_255E3A738();

    return MEMORY[0x2822009F8](sub_255DD3974, v13, v12);
  }
}

uint64_t sub_255DD3644(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 128);
  v7 = *v3;
  *(v7 + 136) = v2;

  if (v2)
  {

    return MEMORY[0x2822009F8](sub_255DD3A6C, 0, 0);
  }

  else
  {
    *(v7 + 57) = *(v7 + 59);
    *(v7 + 144) = a2;
    *(v7 + 152) = a1;
    v8 = swift_task_alloc();
    *(v7 + 160) = v8;
    *v8 = v7;
    v8[1] = sub_255DD37E0;
    v9 = *(v7 + 88);

    return sub_255DD1E3C(a1, a2, (v7 + 57));
  }
}

uint64_t sub_255DD37E0()
{
  v1 = *(*v0 + 160);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_255DD38DC, 0, 0);
}

uint64_t sub_255DD38DC()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[12];
  v4 = v0[13];
  sub_255D37E60(v0[19], v0[18]);
  swift_unknownObjectRelease();
  (*(v4 + 8))(v1, v3);
  v5 = v0[14];

  v6 = v0[1];

  return v6();
}

uint64_t sub_255DD3974()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 88);

  sub_255DD3E00(0, v0 + 16);
  sub_255D395E4(v0 + 16, &qword_27F7E82F0, &qword_255E54BE0);

  return MEMORY[0x2822009F8](sub_255DD3A04, 0, 0);
}

uint64_t sub_255DD3A04()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_255DD3A6C()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  swift_unknownObjectRelease();
  (*(v4 + 8))(v2, v3);
  v5 = *(v0 + 136);
  *(v0 + 168) = v5;
  if (sub_255E3A798())
  {

    v6 = *(v0 + 112);

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    *(v0 + 16) = v5;
    *(v0 + 56) = 1;
    sub_255E3A758();
    v9 = v5;
    *(v0 + 176) = sub_255E3A748();
    v11 = sub_255E3A738();

    return MEMORY[0x2822009F8](sub_255DD3974, v11, v10);
  }
}

uint64_t sub_255DD3B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6A70, &unk_255E559E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_255D3957C(a3, v24 - v10, &qword_27F7E6A70, &unk_255E559E0);
  v12 = sub_255E3A778();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_255D395E4(v11, &qword_27F7E6A70, &unk_255E559E0);
  }

  else
  {
    sub_255E3A768();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_255E3A738();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_255E3A548() + 32;

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

uint64_t sub_255DD3E00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_255E3A3E8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = (v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!a1)
  {
LABEL_15:
    sub_255D3957C(a2, &v30, &qword_27F7E82F0, &qword_255E54BE0);
    if (v31[24] == 255)
    {
      sub_255D395E4(&v30, &qword_27F7E82F0, &qword_255E54BE0);
      swift_beginAccess();
      sub_255D3957C(v3 + 64, &v30, &qword_27F7E82F0, &qword_255E54BE0);
      if (v31[24] != 255)
      {
        v32 = v30;
        *v33 = *v31;
        *&v33[9] = *&v31[9];
        sub_255D38004(&v32, &v30);
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        v29[-2] = v3;
        v29[-1] = &v30;
        v29[1] = v3;
        sub_255DD7710(&qword_27F7E5F18, type metadata accessor for RemoteLoader);
        sub_255E38608();

        sub_255D38CA8(&v32);
        v25 = &v30;
        return sub_255D38CA8(v25);
      }

      sub_255D395E4(&v30, &qword_27F7E82F0, &qword_255E54BE0);
      type metadata accessor for RemoteLoaderError(0);
      sub_255DD7710(&qword_27F7E73D8, type metadata accessor for RemoteLoaderError);
      v27 = swift_allocError();
      swift_storeEnumTagMultiPayload();
      *&v32 = v27;
      v33[24] = 1;
      v28 = swift_getKeyPath();
      MEMORY[0x28223BE20](v28);
      v29[-2] = v3;
      v29[-1] = &v32;
      *&v30 = v3;
      sub_255DD7710(&qword_27F7E5F18, type metadata accessor for RemoteLoader);
      sub_255E38608();
    }

    else
    {
      v32 = v30;
      *v33 = *v31;
      *&v33[9] = *&v31[9];
      sub_255DD0A2C(&v32);
    }

    v25 = &v32;
    return sub_255D38CA8(v25);
  }

  sub_255DA5ED4();
  *v10 = sub_255E3A878();
  (*(v7 + 104))(v10, *MEMORY[0x277D85200], v6);
  v11 = sub_255E3A3F8();
  result = (*(v7 + 8))(v10, v6);
  if (v11)
  {
    v29[0] = a2;
    v13 = 1 << *(a1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(a1 + 64);
    v16 = (v13 + 63) >> 6;

    v17 = 0;
    while (v15)
    {
      v18 = v15;
LABEL_12:
      v15 = (v18 - 1) & v18;
      if (*(v3 + 112))
      {
        v20 = __clz(__rbit64(v18)) | (v17 << 6);
        v21 = *(*(a1 + 56) + 8 * v20);
        v22 = (*(a1 + 48) + 16 * v20);
        v24 = *v22;
        v23 = v22[1];

        sub_255DD5C54(v24, v23, v21);
      }
    }

    while (1)
    {
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v19 >= v16)
      {

        a2 = v29[0];
        goto LABEL_15;
      }

      v18 = *(a1 + 64 + 8 * v19);
      ++v17;
      if (v18)
      {
        v17 = v19;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_255DD4304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[43] = a3;
  v4[44] = v3;
  v4[41] = a1;
  v4[42] = a2;
  v5 = sub_255E3AA08();
  v4[45] = v5;
  v6 = *(v5 - 8);
  v4[46] = v6;
  v7 = *(v6 + 64) + 15;
  v4[47] = swift_task_alloc();
  v4[48] = swift_task_alloc();
  v4[49] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_255DD43E0, 0, 0);
}

uint64_t sub_255DD43E0()
{
  v54 = v0;
  v1 = *(v0 + 344);
  v2 = *(v0 + 336);
  v3 = *(*(v0 + 352) + 152);
  sub_255DD72E0();
  sub_255E38418();
  sub_255D3957C(v0 + 16, v0 + 168, &qword_27F7E6C20, &qword_255E58D80);
  if (*(v0 + 176))
  {
    v31 = *(v0 + 384);
    v30 = *(v0 + 392);
    v32 = *(v0 + 376);
    v33 = *(v0 + 328);
    sub_255DD7334(v0 + 16);
    v34 = *(v0 + 184);
    *v33 = *(v0 + 168);
    *(v33 + 16) = v34;
    v35 = *(v0 + 248);
    v37 = *(v0 + 200);
    v36 = *(v0 + 216);
    *(v33 + 64) = *(v0 + 232);
    *(v33 + 80) = v35;
    *(v33 + 32) = v37;
    *(v33 + 48) = v36;
    v39 = *(v0 + 280);
    v38 = *(v0 + 296);
    v40 = *(v0 + 264);
    *(v33 + 144) = *(v0 + 312);
    *(v33 + 112) = v39;
    *(v33 + 128) = v38;
    *(v33 + 96) = v40;

    v41 = *(v0 + 8);
  }

  else
  {
    sub_255D395E4(v0 + 168, &qword_27F7E6C20, &qword_255E58D80);
    type metadata accessor for RemoteLoaderError(0);
    sub_255DD7710(&qword_27F7E73D8, type metadata accessor for RemoteLoaderError);
    v50 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_255DD7334(v0 + 16);
    v4 = *(v0 + 392);
    v5 = *(v0 + 360);
    *(v0 + 320) = v50;
    v6 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E5FC0, &unk_255E48660);
    if (swift_dynamicCast())
    {
      v8 = *(v0 + 384);
      v7 = *(v0 + 392);
      v9 = *(v0 + 360);
      v10 = *(v0 + 368);

      (*(v10 + 32))(v8, v7, v9);
      if (qword_27F7E5E80 != -1)
      {
        swift_once();
      }

      v11 = *(v0 + 376);
      v12 = *(v0 + 384);
      v13 = *(v0 + 360);
      v14 = *(v0 + 368);
      v15 = sub_255E386A8();
      __swift_project_value_buffer(v15, qword_27F8152D8);
      v16 = *(v14 + 16);
      v16(v11, v12, v13);
      v17 = sub_255E38688();
      v18 = sub_255E3A868();
      v19 = os_log_type_enabled(v17, v18);
      v21 = *(v0 + 368);
      v20 = *(v0 + 376);
      v22 = *(v0 + 360);
      if (v19)
      {
        v23 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v24 = v53;
        *v23 = 136315138;
        v51 = sub_255DD4840();
        v52 = v16;
        v26 = v25;
        v27 = v22;
        v28 = *(v21 + 8);
        v28(v20, v27);
        v29 = sub_255D378C0(v51, v26, &v53);
        v16 = v52;

        *(v23 + 4) = v29;
        _os_log_impl(&dword_255D2E000, v17, v18, "Error decoding view: %s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v24);
        MEMORY[0x259C4F9E0](v24, -1, -1);
        MEMORY[0x259C4F9E0](v23, -1, -1);
      }

      else
      {

        v42 = v22;
        v28 = *(v21 + 8);
        v28(v20, v42);
      }

      v43 = *(v0 + 384);
      v44 = *(v0 + 360);
      swift_allocError();
      v16(v45, v43, v44);
      swift_willThrow();
      v28(v43, v44);
    }

    v47 = *(v0 + 384);
    v46 = *(v0 + 392);
    v48 = *(v0 + 376);

    v41 = *(v0 + 8);
  }

  return v41();
}

unint64_t sub_255DD4840()
{
  v1 = sub_255E3A9F8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_255E3AA08();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = (&v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v10, v0, v6);
  v11 = (*(v7 + 88))(v10, v6);
  if (v11 == *MEMORY[0x277D84160])
  {
    (*(v7 + 96))(v10, v6);
    v12 = *v10;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7870, &qword_255E4BDC8);
    (*(v2 + 32))(v5, v10 + *(v13 + 48), v1);
    v32 = 0;
    v33 = 0xE000000000000000;
    sub_255E3A9A8();

    v14 = 0x8000000255E65FC0;
    v15 = 0xD00000000000001FLL;
LABEL_5:
    v32 = v15;
    v33 = v14;
    v18 = sub_255DD5720();
    MEMORY[0x259C4E8F0](v18);

    MEMORY[0x259C4E8F0](0x746365707865202CLL, 0xEB00000000206465);
    v19 = sub_255E3AEA8();
LABEL_6:
    MEMORY[0x259C4E8F0](v19);

    v20 = v32;
    (*(v2 + 8))(v5, v1);
    return v20;
  }

  if (v11 == *MEMORY[0x277D84170])
  {
    (*(v7 + 96))(v10, v6);
    v16 = *v10;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7870, &qword_255E4BDC8);
    (*(v2 + 32))(v5, v10 + *(v17 + 48), v1);
    v32 = 0;
    v33 = 0xE000000000000000;
    sub_255E3A9A8();

    v14 = 0x8000000255E65F90;
    v15 = 0xD000000000000020;
    goto LABEL_5;
  }

  if (v11 == *MEMORY[0x277D84158])
  {
    (*(v7 + 96))(v10, v6);
    v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7868, &qword_255E4BDC0) + 48);
    sub_255D34630(v10, &v32);
    (*(v2 + 32))(v5, v10 + v22, v1);
    v30 = 0;
    v31 = 0xE000000000000000;
    sub_255E3A9A8();
    MEMORY[0x259C4E8F0](0xD00000000000001CLL, 0x8000000255E65FE0);
    __swift_project_boxed_opaque_existential_1(&v32, v34);
    v23 = sub_255E3AE68();
    MEMORY[0x259C4E8F0](v23);

    MEMORY[0x259C4E8F0](0xD000000000000010, 0x8000000255E66000);
    v24 = sub_255DD5720();
    MEMORY[0x259C4E8F0](v24);

    MEMORY[0x259C4E8F0](540945696, 0xE400000000000000);
    __swift_project_boxed_opaque_existential_1(&v32, v34);
    v25 = sub_255DD58C8();
    MEMORY[0x259C4E8F0](v25);

    v20 = v30;
    (*(v2 + 8))(v5, v1);
    __swift_destroy_boxed_opaque_existential_1Tm(&v32);
    return v20;
  }

  if (v11 == *MEMORY[0x277D84168])
  {
    (*(v7 + 96))(v10, v6);
    (*(v2 + 32))(v5, v10, v1);
    v32 = 0;
    v33 = 0xE000000000000000;
    sub_255E3A9A8();

    v32 = 0xD000000000000020;
    v33 = 0x8000000255E66020;
    v26 = sub_255DD5720();
    MEMORY[0x259C4E8F0](v26);

    MEMORY[0x259C4E8F0](8236, 0xE200000000000000);
    v19 = sub_255E3A9E8();
    goto LABEL_6;
  }

  v27 = sub_255E384A8();
  if (v28)
  {
    v20 = v27;
  }

  else
  {
    v20 = 0xD00000000000001CLL;
  }

  (*(v7 + 8))(v10, v6);
  return v20;
}

uint64_t RemoteLoader.reload<A>(decoding:using:)(uint64_t a1, uint64_t a2, int64_t a3, int64_t a4)
{
  v65 = a1;
  v7 = sub_255E3A3E8();
  v61 = *(v7 - 8);
  v62 = v7;
  v8 = *(v61 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = (v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(a3 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  v66 = v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F7E5E80 != -1)
  {
LABEL_26:
    swift_once();
  }

  v15 = sub_255E386A8();
  v63 = __swift_project_value_buffer(v15, qword_27F8152D8);
  v16 = sub_255E38688();
  v17 = sub_255E3A868();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_255D2E000, v16, v17, "Loading from decoder", v18, 2u);
    MEMORY[0x259C4F9E0](v18, -1, -1);
  }

  v64 = v12;
  (*(v12 + 16))(v66, a2, a3);
  v19 = *(v67 + 152);
  v20 = sub_255E38438();
  v21 = sub_255DCF728(v20);

  v22 = (*(a4 + 32))(v80, a3, a4);
  v24 = v23;
  v25 = *v23;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v78[0] = *v24;
  *v24 = 0x8000000000000000;
  sub_255DD6F1C(v21, sub_255DD6534, 0, isUniquelyReferenced_nonNull_native, v78);

  v27 = *v24;
  *v24 = *&v78[0];

  v22(v80, 0);
  v28 = *(a4 + 8);
  sub_255DD728C();
  sub_255E386B8();
  v12 = v80[0];
  v60[1] = v28;
  if (!v80[0])
  {
    v12 = sub_255DC53CC(MEMORY[0x277D84F90]);
  }

  sub_255DA5ED4();
  *v11 = sub_255E3A878();
  v30 = v61;
  v29 = v62;
  (*(v61 + 104))(v11, *MEMORY[0x277D85200], v62);
  v31 = sub_255E3A3F8();
  (*(v30 + 8))(v11, v29);
  if (v31)
  {
    v61 = 0;
    v62 = a3;
    v32 = 1 << *(v12 + 32);
    v33 = -1;
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    a2 = v33 & *(v12 + 64);
    a3 = (v32 + 63) >> 6;

    a4 = 0;
    while (a2)
    {
      v34 = a2;
LABEL_16:
      a2 = (v34 - 1) & v34;
      if (*(v67 + 112))
      {
        v36 = __clz(__rbit64(v34)) | (a4 << 6);
        v37 = *(*(v12 + 56) + 8 * v36);
        v38 = *(v12 + 48) + 16 * v36;
        v11 = *v38;
        v39 = *(v38 + 8);

        sub_255DD5C54(v11, v39, v37);
      }
    }

    while (1)
    {
      v35 = a4 + 1;
      if (__OFADD__(a4, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v35 >= a3)
      {
        break;
      }

      v34 = *(v12 + 64 + 8 * v35);
      ++a4;
      if (v34)
      {
        a4 = v35;
        goto LABEL_16;
      }
    }

    sub_255DD72E0();
    v40 = v66;
    v41 = v61;
    v42 = v62;
    sub_255E386B8();
    if (v41)
    {
      v43 = v41;
      v44 = v64;
      v45 = v43;
      v46 = sub_255E38688();
      v47 = sub_255E3A868();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = v43;
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v80[0] = v50;
        *v49 = 136315138;
        *&v78[0] = v48;
        v51 = v48;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E5FC0, &unk_255E48660);
        v52 = sub_255E3A528();
        v54 = sub_255D378C0(v52, v53, v80);

        *(v49 + 4) = v54;
        _os_log_impl(&dword_255D2E000, v46, v47, "Error loading from decoder: %s", v49, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v50);
        MEMORY[0x259C4F9E0](v50, -1, -1);
        v55 = v49;
        v43 = v48;
        v40 = v66;
        MEMORY[0x259C4F9E0](v55, -1, -1);
      }

      v80[0] = v43;
      v81 = 1;
      v56 = v43;
      sub_255DD0A2C(v80);

      sub_255D38CA8(v80);
      return (*(v44 + 8))(v40, v42);
    }

    else
    {
      sub_255D3957C(v80, &v68, &qword_27F7E6C20, &qword_255E58D80);
      v58 = v64;
      if (*(&v68 + 1))
      {
        v78[6] = v74;
        v78[7] = v75;
        v78[8] = v76;
        v79 = v77;
        v78[2] = v70;
        v78[3] = v71;
        v78[4] = v72;
        v78[5] = v73;
        v78[0] = v68;
        v78[1] = v69;
        *(&v69 + 1) = &type metadata for ViewContent;
        *&v70 = sub_255D44794();
        *&v68 = swift_allocObject();
        sub_255D4C170(v78, v68 + 16);
        BYTE8(v70) = 0;
        sub_255DD0A2C(&v68);
        sub_255D4C1A8(v78);
        sub_255DD7334(v80);
        (*(v58 + 8))(v40, v42);
        return sub_255D38CA8(&v68);
      }

      else
      {
        sub_255DD7334(v80);
        (*(v58 + 8))(v40, v42);
        return sub_255D395E4(&v68, &qword_27F7E6C20, &qword_255E58D80);
      }
    }
  }

  else
  {
    __break(1u);

    v59 = *v31;
    *v31 = *&v78[0];

    __break(1u);
  }

  return result;
}

char *RemoteLoader.deinit()
{
  sub_255D38CA8((v0 + 16));
  sub_255D395E4((v0 + 64), &qword_27F7E82F0, &qword_255E54BE0);
  v1 = *(v0 + 14);

  sub_255D3480C((v0 + 128));
  v2 = *(v0 + 18);

  v3 = *(v0 + 19);

  v4 = OBJC_IVAR____TtC6LiftUI12RemoteLoader___observationRegistrar;
  v5 = sub_255E38638();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  return v0;
}

uint64_t RemoteLoader.__deallocating_deinit()
{
  sub_255D38CA8((v0 + 16));
  sub_255D395E4((v0 + 64), &qword_27F7E82F0, &qword_255E54BE0);
  v1 = *(v0 + 14);

  sub_255D3480C((v0 + 128));
  v2 = *(v0 + 18);

  v3 = *(v0 + 19);

  v4 = OBJC_IVAR____TtC6LiftUI12RemoteLoader___observationRegistrar;
  v5 = sub_255E38638();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_255DD56D0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_255E386D8();
  *a1 = result;
  return result;
}

uint64_t sub_255DD5720()
{
  v0 = sub_255E3A9D8();
  v1 = *(v0 + 16);
  if (v1)
  {
    v13 = MEMORY[0x277D84F90];
    sub_255DE5D20(0, v1, 0);
    v2 = v13;
    v3 = v0 + 32;
    do
    {
      sub_255D3CE1C(v3, v12);
      __swift_project_boxed_opaque_existential_1(v12, v12[3]);
      v4 = sub_255DD58C8();
      v6 = v5;
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      v13 = v2;
      v8 = *(v2 + 16);
      v7 = *(v2 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_255DE5D20((v7 > 1), v8 + 1, 1);
        v2 = v13;
      }

      *(v2 + 16) = v8 + 1;
      v9 = v2 + 16 * v8;
      *(v9 + 32) = v4;
      *(v9 + 40) = v6;
      v3 += 40;
      --v1;
    }

    while (v1);
  }

  else
  {

    v2 = MEMORY[0x277D84F90];
  }

  v12[0] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6B70, &qword_255E3EF60);
  sub_255D38950(&qword_27F7E6B78, &qword_27F7E6B70, &qword_255E3EF60);
  v10 = sub_255E3A498();

  return v10;
}

uint64_t sub_255DD58C8()
{
  swift_getDynamicType();
  swift_getMetatypeMetadata();
  v0 = sub_255E3A538();
  v2 = v1;
  v16 = 46;
  v17 = 0xE100000000000000;
  v15[2] = &v16;

  v4 = sub_255DD6174(0x7FFFFFFFFFFFFFFFLL, 1, sub_255DD776C, v15, v0, v2, v3);
  if (*(v4 + 16) < 2uLL)
  {

    v16 = v0;
    v17 = v2;
    goto LABEL_5;
  }

  v5 = v4;

  if (v5[2] >= 2uLL)
  {
    v7 = v5[8];
    v8 = v5[9];
    v9 = v5[10];
    v10 = v5[11];

    v11 = MEMORY[0x259C4E8B0](v7, v8, v9, v10);
    v13 = v12;

    v16 = v11;
    v17 = v13;
LABEL_5:
    MEMORY[0x259C4E8F0](46, 0xE100000000000000);
    v14 = sub_255E3AE68();
    MEMORY[0x259C4E8F0](v14);

    return v16;
  }

  __break(1u);
  return result;
}

uint64_t EnvironmentValues.remoteLoader.getter()
{
  sub_255D396AC();
  sub_255E38D58();
  return v1;
}

uint64_t sub_255DD5AB0()
{
  v0 = type metadata accessor for RemoteLoader(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  result = sub_255DD0838();
  qword_27F7E82D0 = v3;
  return result;
}

uint64_t sub_255DD5AF0@<X0>(void *a1@<X8>)
{
  if (qword_27F7E5E70 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_27F7E82D0;
}

uint64_t (*EnvironmentValues.remoteLoader.modify(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_255D396AC();
  sub_255E38D58();
  return sub_255DD5BC0;
}

uint64_t sub_255DD5BC0(void *a1, char a2)
{
  a1[1] = *a1;
  v3 = a1[2];
  v4 = a1[3];
  if (a2)
  {

    sub_255E38D68();
    v5 = *a1;
  }

  else
  {
    v7 = a1[3];
    return sub_255E38D68();
  }
}

uint64_t sub_255DD5C54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = sub_255E38718();
  v8 = v7;
  v9 = *v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v8 = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_255DE55B4(0, *(v9 + 2) + 1, 1, v9);
    *v8 = v9;
  }

  v12 = *(v9 + 2);
  v11 = *(v9 + 3);
  if (v12 >= v11 >> 1)
  {
    v9 = sub_255DE55B4((v11 > 1), v12 + 1, 1, v9);
    *v8 = v9;
  }

  *(v9 + 2) = v12 + 1;
  *&v9[8 * v12 + 32] = a3;

  v6(v23, 0);

  MEMORY[0x28223BE20](v13);
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  swift_getKeyPath();
  sub_255E38728();

  v15 = *(v23[0] + 16);

  v16 = *(*v4 + 112);
  swift_beginAccess();
  v17 = *(v4 + v16);
  v18 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *(v4 + v16);
  *(v4 + v16) = 0x8000000000000000;
  sub_255D81EF0(v15 - 1, a1, a2, v18);
  *(v4 + v16) = v22;
  return swift_endAccess();
}

uint64_t sub_255DD5EE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_255D3951C(a3, v22);
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = sub_255E38718();
  v7 = v6;
  v8 = *v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v7 = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_255DE5A50(0, *(v8 + 2) + 1, 1, v8);
    *v7 = v8;
  }

  v11 = *(v8 + 2);
  v10 = *(v8 + 3);
  if (v11 >= v10 >> 1)
  {
    v8 = sub_255DE5A50((v10 > 1), v11 + 1, 1, v8);
    *v7 = v8;
  }

  *(v8 + 2) = v11 + 1;
  sub_255D31B4C(v22, &v8[32 * v11 + 32]);
  v5(v21, 0);

  MEMORY[0x28223BE20](v12);
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  swift_getKeyPath();
  sub_255E38728();

  v14 = *(*&v22[0] + 16);

  v15 = *(*v4 + 112);
  swift_beginAccess();
  v16 = *(v4 + v15);
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v21[0] = *(v4 + v15);
  *(v4 + v15) = 0x8000000000000000;
  sub_255D81EF0(v14 - 1, a1, a2, v17);
  *(v4 + v15) = v21[0];
  return swift_endAccess();
}

unint64_t sub_255DD6174@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_255E3A618();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_255DE5B60(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_255DE5B60((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_255E3A5F8();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_255E3A588();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_255E3A588();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_255E3A618();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_255DE5B60(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_255E3A618();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_255DE5B60(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_255DE5B60((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_255E3A588();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_255DD6534@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8328, &unk_255E54EC8) + 48);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8340, &qword_255E54F40) + 48);
  v6 = sub_255E3AAE8();
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return sub_255D3951C(a1 + v4, a2 + v5);
}

uint64_t sub_255DD65D8@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8328, &unk_255E54EC8);
  v43 = *(v3 - 8);
  v44 = v3;
  v4 = *(v43 + 64);
  MEMORY[0x28223BE20](v3);
  v42 = &v42 - v5;
  v6 = sub_255E3AAE8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8348, &qword_255E54F48);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v46 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v13);
  v17 = &v42 - v16;
  v18 = *v1;
  v19 = v1[1];
  v21 = v1[2];
  v20 = v1[3];
  v22 = v1[4];
  v47 = a1;
  v45 = v21;
  if (v22)
  {
    v23 = v20;
LABEL_10:
    v27 = (v22 - 1) & v22;
    v28 = __clz(__rbit64(v22)) | (v23 << 6);
    (*(v7 + 16))(v10, *(v18 + 48) + *(v7 + 72) * v28, v6);
    sub_255D3951C(*(v18 + 56) + 32 * v28, v48);
    v29 = *(v44 + 48);
    v30 = v6;
    v31 = v44;
    (*(v7 + 32))(v17, v10, v30);
    sub_255D31B4C(v48, &v17[v29]);
    v32 = v43;
    (*(v43 + 56))(v17, 0, 1, v31);
    v26 = v23;
LABEL_11:
    *v1 = v18;
    v1[1] = v19;
    v1[2] = v45;
    v1[3] = v26;
    v1[4] = v27;
    v33 = v1[5];
    v34 = v1[6];
    v35 = v46;
    sub_255D9B71C(v17, v46, &qword_27F7E8348, &qword_255E54F48);
    v36 = 1;
    v37 = (*(v32 + 48))(v35, 1, v31);
    v38 = v47;
    if (v37 != 1)
    {
      v39 = v35;
      v40 = v42;
      sub_255D9B71C(v39, v42, &qword_27F7E8328, &unk_255E54EC8);
      v33(v40);
      sub_255D395E4(v40, &qword_27F7E8328, &unk_255E54EC8);
      v36 = 0;
    }

    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8340, &qword_255E54F40);
    return (*(*(v41 - 8) + 56))(v38, v36, 1, v41);
  }

  else
  {
    v24 = (v21 + 64) >> 6;
    if (v24 <= v20 + 1)
    {
      v25 = v20 + 1;
    }

    else
    {
      v25 = (v21 + 64) >> 6;
    }

    v26 = v25 - 1;
    while (1)
    {
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v23 >= v24)
      {
        v32 = v43;
        v31 = v44;
        (*(v43 + 56))(&v42 - v16, 1, 1, v44);
        v27 = 0;
        goto LABEL_11;
      }

      v22 = *(v19 + 8 * v23);
      ++v20;
      if (v22)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_255DD69B8(uint64_t a1)
{
  v3 = sub_255E3AAE8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(v1 + 112);
  *(v1 + 112) = a1;

  v9 = *(v1 + 152);
  if (qword_27F7E5E60 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v3, qword_27F8152A8);
  (*(v4 + 16))(v7, v10, v3);
  v11 = *(v1 + 112);
  if (v11)
  {
    v12 = type metadata accessor for RemoteStateStore(0);
  }

  else
  {
    v12 = 0;
    v16[1] = 0;
    v16[2] = 0;
  }

  v16[0] = v11;
  v16[3] = v12;

  v13 = sub_255E38428();
  sub_255DCF60C(v16, v7);
  return v13(v15, 0);
}

uint64_t _s6LiftUI12RemoteLoaderC11remoteState15contentRegistryAcA0cF5StoreC_AA07ContentH0CtcfC_0(uint64_t a1, void *a2)
{
  v3 = sub_255E3AAE8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for RemoteLoader(0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  sub_255DD0838();
  v12 = *(v11 + 152);
  v13 = qword_27F7E5E88;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v3, qword_27F8152F0);
  (*(v4 + 16))(v7, v14, v3);
  v20[3] = type metadata accessor for ContentRegistry();
  v20[0] = a2;
  v15 = a2;
  v16 = sub_255E38428();
  sub_255DCF60C(v20, v7);
  v16(v19, 0);

  sub_255DD69B8(v17);

  return v11;
}

uint64_t sub_255DD6D20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteContent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_255DD6D84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteContent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_255DD6DE8(uint64_t a1)
{
  v4 = *(type metadata accessor for RemoteContent(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_255D50138;

  return sub_255DD0CA4(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t sub_255DD6F1C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v56 = a5;
  v9 = sub_255E3AAE8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8338, &qword_255E54F38);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v45 - v16;
  v18 = -1 << *(a1 + 32);
  v19 = ~v18;
  v20 = *(a1 + 64);
  v21 = -v18;
  v49 = a1;
  v50 = a1 + 64;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  else
  {
    v22 = -1;
  }

  v51 = v19;
  v52 = 0;
  v53 = v22 & v20;
  v54 = a2;
  v55 = a3;
  v23 = (v10 + 32);
  v46 = (v10 + 8);
  v47 = v10;

  v45[1] = a3;

  while (1)
  {
    sub_255DD65D8(v17);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8340, &qword_255E54F40);
    if ((*(*(v25 - 8) + 48))(v17, 1, v25) == 1)
    {
      sub_255DD7640();
    }

    v26 = *(v25 + 48);
    v27 = *v23;
    v28 = v9;
    (*v23)(v13, v17, v9);
    sub_255D31B4C(&v17[v26], v48);
    v29 = *v56;
    v31 = sub_255D3CA98(v13);
    v32 = *(v29 + 16);
    v33 = (v30 & 1) == 0;
    v34 = v32 + v33;
    if (__OFADD__(v32, v33))
    {
      break;
    }

    v35 = v30;
    if (*(v29 + 24) >= v34)
    {
      if ((a4 & 1) == 0)
      {
        sub_255D82960();
      }
    }

    else
    {
      v36 = v56;
      sub_255D811E8(v34, a4 & 1);
      v37 = *v36;
      v38 = sub_255D3CA98(v13);
      if ((v35 & 1) != (v39 & 1))
      {
        goto LABEL_19;
      }

      v31 = v38;
    }

    v40 = *v56;
    if (v35)
    {
      v9 = v28;
      (*v46)(v13, v28);
      v24 = (v40[7] + 32 * v31);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      sub_255D31B4C(v48, v24);
      a4 = 1;
    }

    else
    {
      v40[(v31 >> 6) + 8] |= 1 << v31;
      v9 = v28;
      v27((v40[6] + *(v47 + 72) * v31), v13, v28);
      sub_255D31B4C(v48, (v40[7] + 32 * v31));
      v41 = v40[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_18;
      }

      v40[2] = v43;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_255E3AD28();
  __break(1u);
  return result;
}

unint64_t sub_255DD728C()
{
  result = qword_27F7E82E0;
  if (!qword_27F7E82E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E82E0);
  }

  return result;
}

unint64_t sub_255DD72E0()
{
  result = qword_27F7E82E8;
  if (!qword_27F7E82E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E82E8);
  }

  return result;
}

unint64_t sub_255DD738C()
{
  result = qword_27F7E82F8;
  if (!qword_27F7E82F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E82F8);
  }

  return result;
}

uint64_t sub_255DD7404()
{
  result = sub_255E38638();
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

uint64_t get_enum_tag_for_layout_string_6LiftUI12RemoteLoaderC6StatusO(uint64_t a1)
{
  if ((*(a1 + 40) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 40) & 3;
  }
}

uint64_t sub_255DD750C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_255DD7548(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_255DD7594(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
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

uint64_t sub_255DD7648(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E82F0, &qword_255E54BE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_255DD7710(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_255DD7758(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_255D37E60(a1, a2);
  }

  return a1;
}

uint64_t sub_255DD776C(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_255E3AC68() & 1;
  }
}

void sub_255DD77C4()
{
  sub_255DD7838();
  if (v0 <= 0x3F)
  {
    sub_255E38408();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_255DD7838()
{
  if (!qword_27F7E8368)
  {
    v0 = sub_255E38588();
    if (!v1)
    {
      atomic_store(v0, &qword_27F7E8368);
    }
  }
}

uint64_t sub_255DD7898()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_255DD78D0()
{
  v1 = *(v0 + 16);
  v2 = sub_255E38518();
  v3 = [v1 viewForError_];

  if (!v3)
  {
    return 0;
  }

  sub_255DDAA00();
  return sub_255E3A038();
}

id sub_255DD794C()
{
  result = [*(v0 + 16) loadingView];
  if (result)
  {
    sub_255DDAA00();
    return sub_255E3A038();
  }

  return result;
}

void sub_255DD79A0()
{
  v1 = *(v0 + 16);
  v2 = sub_255E3A4C8();
  [v1 didFinishLoadingRemoteContentViewWithId_];
}

void sub_255DD79F8()
{
  v1 = *(v0 + 16);
  v2 = sub_255E3A4C8();
  v3 = sub_255E38518();
  [v1 didFinishLoadingRemoteContentViewWithId:v2 error:v3];
}

void sub_255DD7A70()
{
  v8[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 16);
  v2 = sub_255E38558();
  v8[0] = 0;
  v3 = [v1 requestFor:v2 error:v8];

  v4 = v8[0];
  if (v3)
  {
    sub_255E383A8();
    v5 = v4;
  }

  else
  {
    v6 = v8[0];
    sub_255E38528();

    swift_willThrow();
  }

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t sub_255DD7B58(uint64_t a1)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = v1;
  return MEMORY[0x2822009F8](sub_255DD7B78, 0, 0);
}

uint64_t sub_255DD7B78()
{
  v1 = v0[20];
  v2 = *(v0[21] + 16);
  v3 = sub_255E38398();
  v0[22] = v3;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_255DD7CB0;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8370, &unk_255E550B8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_255DD7EA0;
  v0[13] = &block_descriptor_1;
  v0[14] = v4;
  [v2 dataFor:v3 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_255DD7CB0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  if (v2)
  {
    v3 = sub_255DD7E30;
  }

  else
  {
    v3 = sub_255DD7DC0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_255DD7DC0()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);

  v3 = *(v0 + 8);

  return v3(v2, v1);
}

uint64_t sub_255DD7E30()
{
  v1 = v0[22];
  v2 = v0[23];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[23];

  return v3();
}

uint64_t sub_255DD7EA0(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E5FC0, &unk_255E48660);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    v9 = a2;
    v10 = sub_255E385A8();
    v12 = v11;

    v13 = *(*(v5 + 64) + 40);
    *v13 = v10;
    v13[1] = v12;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_255DD7FA0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_255DD8034;

  return sub_255DD7B58(a1);
}

uint64_t sub_255DD8034(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 16);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t sub_255DD81A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_255DDAAD0();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_255DD8204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_255DDAAD0();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_255DD8268()
{
  sub_255DDAAD0();
  sub_255E39218();
  __break(1u);
}

uint64_t sub_255DD83FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, _UNKNOWN **, id))
{
  if (a4)
  {
    type metadata accessor for LiftUIObjcDataSourceWrapper();
    v10 = swift_allocObject();
    *(v10 + 16) = a4;
    v11 = &off_2867E8858;
  }

  else
  {
    type metadata accessor for BasicLiftUIDataSource();
    v10 = swift_allocObject();
    v11 = &protocol witness table for BasicLiftUIDataSource;
  }

  v12 = objc_allocWithZone(type metadata accessor for ContentRegistry());
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v13 = [v12 init];
  v14 = a5(a1, a2, a3, v10, v11, v13);

  swift_unknownObjectRelease_n();
  return v14;
}

uint64_t static LiftUIFactory.viewController(url:delegate:dataSource:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    type metadata accessor for LiftUIObjcDataSourceWrapper();
    v6 = swift_allocObject();
    *(v6 + 16) = a3;
    v7 = &off_2867E8858;
  }

  else
  {
    type metadata accessor for BasicLiftUIDataSource();
    v6 = swift_allocObject();
    v7 = &protocol witness table for BasicLiftUIDataSource;
  }

  v8 = objc_allocWithZone(type metadata accessor for ContentRegistry());
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v9 = [v8 init];
  v10 = _s6LiftUI0A9UIFactoryC14viewController3url8delegate10dataSource15contentRegistrySo06UIViewE0C10Foundation3URLV_So0A10UIDelegate_pSgAA0a6UIDataI0_pAA07ContentK0CtFZ_0(a1, a2, v6, v7, v9);

  swift_unknownObjectRelease_n();
  return v10;
}

id LiftUIFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LiftUIFactory.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LiftUIFactory();
  return objc_msgSendSuper2(&v2, sel_init);
}

id LiftUIFactory.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LiftUIFactory();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s6LiftUI0A9UIFactoryC14viewController4json8delegate10dataSource15contentRegistrySo06UIViewE0CSS_So0A10UIDelegate_pSgAA0a6UIDataI0_pAA07ContentK0CtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v112 = a4;
  v113 = a6;
  v111 = a5;
  v104 = a3;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8380, &qword_255E550C8);
  v8 = *(*(v100 - 8) + 64);
  MEMORY[0x28223BE20](v100);
  v101 = (&v100 - v9);
  v10 = sub_255E385D8();
  v106 = *(v10 - 8);
  v107 = v10;
  v11 = *(v106 + 64);
  MEMORY[0x28223BE20](v10);
  v105 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8388, &unk_255E550D0);
  v13 = *(*(v102 - 8) + 64);
  MEMORY[0x28223BE20](v102);
  v15 = (&v100 - v14);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7F90, &unk_255E536A0);
  v16 = *(v103 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v103);
  v19 = &v100 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7F98, &unk_255E537E0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v100 - v23;
  v25 = type metadata accessor for RemoteContent(0);
  v108 = *(v25 - 8);
  v26 = *(v108 + 64);
  v27 = MEMORY[0x28223BE20](v25);
  v110 = &v100 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = (&v100 - v29);
  *v30 = a1;
  v30[1] = a2;
  v114 = &v100 - v29;
  v109 = v31;
  swift_storeEnumTagMultiPayload();
  v32 = type metadata accessor for RemoteStateStore(0);
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  v35 = swift_allocObject();
  v36 = qword_27F7E8600;

  v37 = MEMORY[0x277D84F90];
  *(v35 + v36) = sub_255DC5124(MEMORY[0x277D84F90]);
  *(v35 + qword_27F7E85F8) = 0;
  v38 = *(*v35 + 104);
  v116 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6160, &unk_255E4DBA0);
  sub_255E38708();
  (*(v21 + 32))(v35 + v38, v24, v20);
  v39 = *(*v35 + 112);
  *(v35 + v39) = sub_255DC513C(v37);
  *(v35 + *(*v35 + 128)) = 0;
  *(v35 + *(*v35 + 120)) = 0;
  *(v35 + *(*v35 + 128)) = 0;
  v40 = type metadata accessor for LocalStateStore(0);
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  v43 = swift_allocObject();
  v44 = qword_27F7E8608;
  *(v43 + v44) = sub_255DC5124(v37);
  *(v43 + qword_27F7E8610) = 0;
  v45 = *(*v43 + 104);
  v116 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  (*(v16 + 32))(v43 + v45, v19, v103);
  v46 = *(*v43 + 112);
  *(v43 + v46) = sub_255DC513C(v37);
  *(v43 + *(*v43 + 128)) = 0;
  *(v43 + *(*v43 + 120)) = 0;
  *(v43 + *(*v43 + 128)) = 0;
  if (v104)
  {
    v47 = v104;
    type metadata accessor for LiftUIUIKitDelegateWrapper();
    *(swift_allocObject() + 16) = v47;
    v48 = v110;
    sub_255DD6D20(v114, v110);
    swift_unknownObjectRetain_n();
    v49 = v105;
    sub_255E385C8();
    v50 = sub_255E385B8();
    v52 = v51;
    (*(v106 + 8))(v49, v107);
    v53 = type metadata accessor for RemoteContentView(0);
    v54 = v15 + v53[9];
    *v54 = swift_getKeyPath();
    *(v54 + 1) = 0;
    v54[16] = 0;
    v55 = v15 + v53[10];
    *v55 = swift_getKeyPath();
    *(v55 + 1) = 0;
    v55[16] = 0;
    v56 = v15 + v53[11];
    *v56 = swift_getKeyPath();
    v56[8] = 0;
    *v15 = v50;
    v15[1] = v52;
    v57 = v53[5];
    sub_255DD6D20(v48, v15 + v57);
    (*(v108 + 56))(v15 + v57, 0, 1, v109);
    v58 = objc_allocWithZone(type metadata accessor for ContentRegistry());

    v115 = _s6LiftUI12RemoteLoaderC11remoteState15contentRegistryAcA0cF5StoreC_AA07ContentH0CtcfC_0(v35, [v58 init]);
    type metadata accessor for RemoteLoader(0);
    sub_255E39F98();
    sub_255DDAA54(v48);
    v59 = v117;
    v60 = (v15 + v53[8]);
    *v60 = v116;
    v60[1] = v59;
    v61 = v15 + v53[6];
    *v61 = sub_255DDAB28;
    *(v61 + 1) = v35;
    v61[16] = 0;
    v62 = v15 + v53[7];
    *v62 = sub_255DDAB28;
    *(v62 + 1) = v43;
    v62[16] = 0;
    KeyPath = swift_getKeyPath();
    type metadata accessor for AnyWeakDelegate();
    v64 = swift_allocObject();
    *(v64 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v64 + 24) = &off_2867E8870;
    swift_unknownObjectWeakAssign();
    v65 = (v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E83A0, &qword_255E55168) + 36));
    *v65 = KeyPath;
    v65[1] = v64;
    v65[2] = &off_2867E51D8;
    v66 = swift_getKeyPath();
    type metadata accessor for AnyWeakDataSource();
    v67 = swift_allocObject();
    *(v67 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v67 + 24) = v111;
    swift_unknownObjectWeakAssign();
    v68 = (v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E83A8, &qword_255E55170) + 36));
    *v68 = v66;
    v68[1] = v67;
    v68[2] = &off_2867E3ED8;
    v69 = swift_getKeyPath();
    v70 = (v15 + *(v102 + 36));
    v71 = v113;
    *v70 = v69;
    v70[1] = v71;
    v72 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E83B0, &qword_255E55178));
    v73 = v71;
    v74 = sub_255E39178();
    swift_unknownObjectRelease();
  }

  else
  {
    v75 = v110;
    sub_255DD6D20(v114, v110);
    v76 = v105;
    sub_255E385C8();
    v77 = sub_255E385B8();
    v79 = v78;
    (*(v106 + 8))(v76, v107);
    v80 = type metadata accessor for RemoteContentView(0);
    v81 = v101;
    v82 = v101 + v80[9];
    *v82 = swift_getKeyPath();
    *(v82 + 1) = 0;
    v82[16] = 0;
    v83 = v81 + v80[10];
    *v83 = swift_getKeyPath();
    *(v83 + 1) = 0;
    v83[16] = 0;
    v84 = v81 + v80[11];
    *v84 = swift_getKeyPath();
    v84[8] = 0;
    *v81 = v77;
    v81[1] = v79;
    v85 = v80[5];
    sub_255DD6D20(v75, v81 + v85);
    (*(v108 + 56))(v81 + v85, 0, 1, v109);
    v86 = objc_allocWithZone(type metadata accessor for ContentRegistry());

    v115 = _s6LiftUI12RemoteLoaderC11remoteState15contentRegistryAcA0cF5StoreC_AA07ContentH0CtcfC_0(v35, [v86 init]);
    type metadata accessor for RemoteLoader(0);
    sub_255E39F98();
    sub_255DDAA54(v75);
    v87 = v117;
    v88 = (v81 + v80[8]);
    *v88 = v116;
    v88[1] = v87;
    v89 = v81 + v80[6];
    *v89 = sub_255DDAB28;
    *(v89 + 1) = v35;
    v89[16] = 0;
    v90 = v81 + v80[7];
    *v90 = sub_255DDAB28;
    *(v90 + 1) = v43;
    v90[16] = 0;
    v91 = swift_getKeyPath();
    type metadata accessor for AnyWeakDataSource();
    v92 = swift_allocObject();
    *(v92 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v92 + 24) = v111;
    swift_unknownObjectWeakAssign();
    v93 = (v81 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8390, &qword_255E55158) + 36));
    *v93 = v91;
    v93[1] = v92;
    v93[2] = &off_2867E3ED8;
    v94 = swift_getKeyPath();
    v95 = (v81 + *(v100 + 36));
    v96 = v113;
    *v95 = v94;
    v95[1] = v96;
    v97 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8398, &qword_255E55160));
    v98 = v96;
    v74 = sub_255E39178();
  }

  sub_255DDAA54(v114);
  return v74;
}

uint64_t _s6LiftUI0A9UIFactoryC14viewController4data8delegate0F6Source15contentRegistrySo06UIViewE0C10Foundation4DataV_So0A10UIDelegate_pSgAA0a6UIDataH0_pAA07ContentJ0CtFZ_0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v112 = a4;
  v113 = a6;
  v111 = a5;
  v104 = a3;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8380, &qword_255E550C8);
  v8 = *(*(v100 - 8) + 64);
  MEMORY[0x28223BE20](v100);
  v101 = (&v100 - v9);
  v10 = sub_255E385D8();
  v106 = *(v10 - 8);
  v107 = v10;
  v11 = *(v106 + 64);
  MEMORY[0x28223BE20](v10);
  v105 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8388, &unk_255E550D0);
  v13 = *(*(v102 - 8) + 64);
  MEMORY[0x28223BE20](v102);
  v15 = (&v100 - v14);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7F90, &unk_255E536A0);
  v16 = *(v103 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v103);
  v19 = &v100 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7F98, &unk_255E537E0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v100 - v23;
  v25 = type metadata accessor for RemoteContent(0);
  v108 = *(v25 - 8);
  v26 = *(v108 + 64);
  v27 = MEMORY[0x28223BE20](v25);
  v110 = &v100 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = (&v100 - v29);
  *v30 = a1;
  v30[1] = a2;
  v114 = &v100 - v29;
  v109 = v31;
  swift_storeEnumTagMultiPayload();
  v32 = type metadata accessor for RemoteStateStore(0);
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  v35 = swift_allocObject();
  v36 = qword_27F7E8600;
  sub_255D37E0C(a1, a2);
  v37 = MEMORY[0x277D84F90];
  *(v35 + v36) = sub_255DC5124(MEMORY[0x277D84F90]);
  *(v35 + qword_27F7E85F8) = 0;
  v38 = *(*v35 + 104);
  v116 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6160, &unk_255E4DBA0);
  sub_255E38708();
  (*(v21 + 32))(v35 + v38, v24, v20);
  v39 = *(*v35 + 112);
  *(v35 + v39) = sub_255DC513C(v37);
  *(v35 + *(*v35 + 128)) = 0;
  *(v35 + *(*v35 + 120)) = 0;
  *(v35 + *(*v35 + 128)) = 0;
  v40 = type metadata accessor for LocalStateStore(0);
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  v43 = swift_allocObject();
  v44 = qword_27F7E8608;
  *(v43 + v44) = sub_255DC5124(v37);
  *(v43 + qword_27F7E8610) = 0;
  v45 = *(*v43 + 104);
  v116 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  (*(v16 + 32))(v43 + v45, v19, v103);
  v46 = *(*v43 + 112);
  *(v43 + v46) = sub_255DC513C(v37);
  *(v43 + *(*v43 + 128)) = 0;
  *(v43 + *(*v43 + 120)) = 0;
  *(v43 + *(*v43 + 128)) = 0;
  if (v104)
  {
    v47 = v104;
    type metadata accessor for LiftUIUIKitDelegateWrapper();
    *(swift_allocObject() + 16) = v47;
    v48 = v110;
    sub_255DD6D20(v114, v110);
    swift_unknownObjectRetain_n();
    v49 = v105;
    sub_255E385C8();
    v50 = sub_255E385B8();
    v52 = v51;
    (*(v106 + 8))(v49, v107);
    v53 = type metadata accessor for RemoteContentView(0);
    v54 = v15 + v53[9];
    *v54 = swift_getKeyPath();
    *(v54 + 1) = 0;
    v54[16] = 0;
    v55 = v15 + v53[10];
    *v55 = swift_getKeyPath();
    *(v55 + 1) = 0;
    v55[16] = 0;
    v56 = v15 + v53[11];
    *v56 = swift_getKeyPath();
    v56[8] = 0;
    *v15 = v50;
    v15[1] = v52;
    v57 = v53[5];
    sub_255DD6D20(v48, v15 + v57);
    (*(v108 + 56))(v15 + v57, 0, 1, v109);
    v58 = objc_allocWithZone(type metadata accessor for ContentRegistry());

    v115 = _s6LiftUI12RemoteLoaderC11remoteState15contentRegistryAcA0cF5StoreC_AA07ContentH0CtcfC_0(v35, [v58 init]);
    type metadata accessor for RemoteLoader(0);
    sub_255E39F98();
    sub_255DDAA54(v48);
    v59 = v117;
    v60 = (v15 + v53[8]);
    *v60 = v116;
    v60[1] = v59;
    v61 = v15 + v53[6];
    *v61 = sub_255DDAB28;
    *(v61 + 1) = v35;
    v61[16] = 0;
    v62 = v15 + v53[7];
    *v62 = sub_255DDAB28;
    *(v62 + 1) = v43;
    v62[16] = 0;
    KeyPath = swift_getKeyPath();
    type metadata accessor for AnyWeakDelegate();
    v64 = swift_allocObject();
    *(v64 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v64 + 24) = &off_2867E8870;
    swift_unknownObjectWeakAssign();
    v65 = (v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E83A0, &qword_255E55168) + 36));
    *v65 = KeyPath;
    v65[1] = v64;
    v65[2] = &off_2867E51D8;
    v66 = swift_getKeyPath();
    type metadata accessor for AnyWeakDataSource();
    v67 = swift_allocObject();
    *(v67 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v67 + 24) = v111;
    swift_unknownObjectWeakAssign();
    v68 = (v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E83A8, &qword_255E55170) + 36));
    *v68 = v66;
    v68[1] = v67;
    v68[2] = &off_2867E3ED8;
    v69 = swift_getKeyPath();
    v70 = (v15 + *(v102 + 36));
    v71 = v113;
    *v70 = v69;
    v70[1] = v71;
    v72 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E83B0, &qword_255E55178));
    v73 = v71;
    v74 = sub_255E39178();
    swift_unknownObjectRelease();
  }

  else
  {
    v75 = v110;
    sub_255DD6D20(v114, v110);
    v76 = v105;
    sub_255E385C8();
    v77 = sub_255E385B8();
    v79 = v78;
    (*(v106 + 8))(v76, v107);
    v80 = type metadata accessor for RemoteContentView(0);
    v81 = v101;
    v82 = v101 + v80[9];
    *v82 = swift_getKeyPath();
    *(v82 + 1) = 0;
    v82[16] = 0;
    v83 = v81 + v80[10];
    *v83 = swift_getKeyPath();
    *(v83 + 1) = 0;
    v83[16] = 0;
    v84 = v81 + v80[11];
    *v84 = swift_getKeyPath();
    v84[8] = 0;
    *v81 = v77;
    v81[1] = v79;
    v85 = v80[5];
    sub_255DD6D20(v75, v81 + v85);
    (*(v108 + 56))(v81 + v85, 0, 1, v109);
    v86 = objc_allocWithZone(type metadata accessor for ContentRegistry());

    v115 = _s6LiftUI12RemoteLoaderC11remoteState15contentRegistryAcA0cF5StoreC_AA07ContentH0CtcfC_0(v35, [v86 init]);
    type metadata accessor for RemoteLoader(0);
    sub_255E39F98();
    sub_255DDAA54(v75);
    v87 = v117;
    v88 = (v81 + v80[8]);
    *v88 = v116;
    v88[1] = v87;
    v89 = v81 + v80[6];
    *v89 = sub_255DDAB28;
    *(v89 + 1) = v35;
    v89[16] = 0;
    v90 = v81 + v80[7];
    *v90 = sub_255DDAB28;
    *(v90 + 1) = v43;
    v90[16] = 0;
    v91 = swift_getKeyPath();
    type metadata accessor for AnyWeakDataSource();
    v92 = swift_allocObject();
    *(v92 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v92 + 24) = v111;
    swift_unknownObjectWeakAssign();
    v93 = (v81 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8390, &qword_255E55158) + 36));
    *v93 = v91;
    v93[1] = v92;
    v93[2] = &off_2867E3ED8;
    v94 = swift_getKeyPath();
    v95 = (v81 + *(v100 + 36));
    v96 = v113;
    *v95 = v94;
    v95[1] = v96;
    v97 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8398, &qword_255E55160));
    v98 = v96;
    v74 = sub_255E39178();
  }

  sub_255DDAA54(v114);
  return v74;
}